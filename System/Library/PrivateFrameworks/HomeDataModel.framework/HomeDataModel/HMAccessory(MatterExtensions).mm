@interface HMAccessory(MatterExtensions)
- (id)hdm_matterDevice;
@end

@implementation HMAccessory(MatterExtensions)

- (id)hdm_matterDevice
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = objc_getAssociatedObject(self, a2);
  if (!v4)
  {
    home = [self home];
    hdm_sharedMatterController = [home hdm_sharedMatterController];

    v4 = [self hdm_createDeviceWithController:hdm_sharedMatterController];
    if (!v4)
    {
      v7 = matterLogCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        matterNodeID = [self matterNodeID];
        home2 = [self home];
        v12 = 138544130;
        v13 = matterNodeID;
        v14 = 2112;
        selfCopy = self;
        v16 = 2114;
        v17 = hdm_sharedMatterController;
        v18 = 2112;
        v19 = home2;
        _os_log_error_impl(&dword_1D16EC000, v7, OS_LOG_TYPE_ERROR, "hdm_matterDevice: Failed to create matter device for nodeID: (%{public}@) accessory (%@) controller: (%{public}@) in home: (%@)", &v12, 0x2Au);
      }
    }

    objc_setAssociatedObject(self, a2, v4, 1);
  }

  v8 = *MEMORY[0x1E69E9840];

  return v4;
}

@end