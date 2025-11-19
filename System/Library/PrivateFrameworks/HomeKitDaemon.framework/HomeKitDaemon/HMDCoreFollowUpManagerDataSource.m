@interface HMDCoreFollowUpManagerDataSource
- (BOOL)currentDeviceSupportsDeviceSetup;
- (id)followUpActionForDeviceSetupManager:(id)a3;
- (id)followUpControllerForDeviceSetupManager:(id)a3;
- (id)followUpItemForDeviceSetupManager:(id)a3;
@end

@implementation HMDCoreFollowUpManagerDataSource

- (BOOL)currentDeviceSupportsDeviceSetup
{
  v2 = +[HMDDeviceCapabilities deviceCapabilities];
  v3 = [v2 supportsDeviceSetup];

  return v3;
}

- (id)followUpActionForDeviceSetupManager:(id)a3
{
  v3 = objc_alloc_init(MEMORY[0x277CFE4F8]);

  return v3;
}

- (id)followUpItemForDeviceSetupManager:(id)a3
{
  v3 = objc_alloc_init(MEMORY[0x277CFE508]);

  return v3;
}

- (id)followUpControllerForDeviceSetupManager:(id)a3
{
  v3 = [objc_alloc(MEMORY[0x277CFE500]) initWithClientIdentifier:@"com.apple.HomeKit"];

  return v3;
}

@end