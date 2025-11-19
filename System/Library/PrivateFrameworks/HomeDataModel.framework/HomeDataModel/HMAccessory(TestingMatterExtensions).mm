@interface HMAccessory(TestingMatterExtensions)
- (id)hdm_createDeviceWithController:()TestingMatterExtensions;
@end

@implementation HMAccessory(TestingMatterExtensions)

- (id)hdm_createDeviceWithController:()TestingMatterExtensions
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 matterNodeID];

  if (v5)
  {
    v6 = MEMORY[0x1E696F620];
    v7 = [a1 matterNodeID];
    v8 = [v6 deviceWithNodeID:v7 controller:v4];
  }

  else
  {
    v9 = matterLogCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = a1;
      _os_log_error_impl(&dword_1D16EC000, v9, OS_LOG_TYPE_ERROR, "hdm_createDeviceWithController: Can't create MTRDevice for accessory (%@) because it doesn't have a node ID!", &v12, 0xCu);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

@end