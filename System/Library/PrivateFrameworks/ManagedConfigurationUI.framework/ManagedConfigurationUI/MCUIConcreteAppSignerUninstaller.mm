@interface MCUIConcreteAppSignerUninstaller
- (void)uninstallApplicationWithBundleID:(id)a3;
- (void)uninstallProvisioningProfileWithUUID:(id)a3;
@end

@implementation MCUIConcreteAppSignerUninstaller

- (void)uninstallProvisioningProfileWithUUID:(id)a3
{
  v3 = a3;
  NSLog(&cfstr_Mcuiappsigneru.isa, v3);
  v4 = [MEMORY[0x277D262A0] sharedConnection];
  v6 = 0;
  [v4 removeProvisioningProfileWithUUID:v3 outError:&v6];
  v5 = v6;

  if (v5)
  {
    NSLog(&cfstr_Mcuiappsigneru_0.isa, v3, v5);
  }
}

- (void)uninstallApplicationWithBundleID:(id)a3
{
  v3 = a3;
  NSLog(&cfstr_Mcuiappsigneru_1.isa, v3);
  v4 = MEMORY[0x277D1C148];
  v5 = objc_opt_new();
  v7 = 0;
  [v4 uninstallAppWithBundleID:v3 options:v5 disposition:0 error:&v7];
  v6 = v7;

  if (v6)
  {
    NSLog(&cfstr_Mcuiappsigneru_2.isa, v3, v6);
  }
}

@end