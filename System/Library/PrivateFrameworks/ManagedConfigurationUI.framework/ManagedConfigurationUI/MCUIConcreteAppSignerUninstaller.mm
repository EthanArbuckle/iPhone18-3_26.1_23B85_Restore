@interface MCUIConcreteAppSignerUninstaller
- (void)uninstallApplicationWithBundleID:(id)d;
- (void)uninstallProvisioningProfileWithUUID:(id)d;
@end

@implementation MCUIConcreteAppSignerUninstaller

- (void)uninstallProvisioningProfileWithUUID:(id)d
{
  dCopy = d;
  NSLog(&cfstr_Mcuiappsigneru.isa, dCopy);
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v6 = 0;
  [mEMORY[0x277D262A0] removeProvisioningProfileWithUUID:dCopy outError:&v6];
  v5 = v6;

  if (v5)
  {
    NSLog(&cfstr_Mcuiappsigneru_0.isa, dCopy, v5);
  }
}

- (void)uninstallApplicationWithBundleID:(id)d
{
  dCopy = d;
  NSLog(&cfstr_Mcuiappsigneru_1.isa, dCopy);
  v4 = MEMORY[0x277D1C148];
  v5 = objc_opt_new();
  v7 = 0;
  [v4 uninstallAppWithBundleID:dCopy options:v5 disposition:0 error:&v7];
  v6 = v7;

  if (v6)
  {
    NSLog(&cfstr_Mcuiappsigneru_2.isa, dCopy, v6);
  }
}

@end