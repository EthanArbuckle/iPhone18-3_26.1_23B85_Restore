@interface HMAccessory(TestingMatterExtensions)
- (id)hdm_createDeviceWithController:()TestingMatterExtensions;
@end

@implementation HMAccessory(TestingMatterExtensions)

- (id)hdm_createDeviceWithController:()TestingMatterExtensions
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  matterNodeID = [self matterNodeID];

  if (matterNodeID)
  {
    v6 = MEMORY[0x1E696F620];
    matterNodeID2 = [self matterNodeID];
    v8 = [v6 deviceWithNodeID:matterNodeID2 controller:v4];
  }

  else
  {
    v9 = matterLogCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      selfCopy = self;
      _os_log_error_impl(&dword_1D16EC000, v9, OS_LOG_TYPE_ERROR, "hdm_createDeviceWithController: Can't create MTRDevice for accessory (%@) because it doesn't have a node ID!", &v12, 0xCu);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

@end