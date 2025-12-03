@interface HMDCoreFollowUpManagerDataSource
- (BOOL)currentDeviceSupportsDeviceSetup;
- (id)followUpActionForDeviceSetupManager:(id)manager;
- (id)followUpControllerForDeviceSetupManager:(id)manager;
- (id)followUpItemForDeviceSetupManager:(id)manager;
@end

@implementation HMDCoreFollowUpManagerDataSource

- (BOOL)currentDeviceSupportsDeviceSetup
{
  v2 = +[HMDDeviceCapabilities deviceCapabilities];
  supportsDeviceSetup = [v2 supportsDeviceSetup];

  return supportsDeviceSetup;
}

- (id)followUpActionForDeviceSetupManager:(id)manager
{
  v3 = objc_alloc_init(MEMORY[0x277CFE4F8]);

  return v3;
}

- (id)followUpItemForDeviceSetupManager:(id)manager
{
  v3 = objc_alloc_init(MEMORY[0x277CFE508]);

  return v3;
}

- (id)followUpControllerForDeviceSetupManager:(id)manager
{
  v3 = [objc_alloc(MEMORY[0x277CFE500]) initWithClientIdentifier:@"com.apple.HomeKit"];

  return v3;
}

@end