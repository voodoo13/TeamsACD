#Region Variables
New-Variable -Name cqid -Value "11cd3e2e-fccb-42ad-ad00-878b93575e07" -Option Constant
New-Variable -Name aaid -Value "ce933385-9390-45d1-9512-c8d228074e07" -Option Constant
#Endregion

Function New-TeamsAutoAttendant {
    <#
        .SYNOPSIS 
        Creates a new teams auto attendand and calls the function to create the resource account.

        .DESCRIPTION
        Not much to add here

        .PARAMETER DisplayName
        Display name of the auto attendant and corresponding resource account.

        .PARAMETER ResourceAccountName
        Specifies the upn to be used for the resource
                
        .LINK

        .INPUTS
        None

        .OUTPUTS
        Teams Auto Attendant

        .EXAMPLE
        New-LogFile c:\logs\testlog.txt
        Creates a file named testlog.txt in c:\logs.
    #>

    Param(
        [Parameter(Mandatory=$true,Position=0)][Alias("Name")][String]$UserPrincipalName
    )

    $user = Get-CsOnlineUser -UserPrincipalName $UserPrincipalName
    return $user
}