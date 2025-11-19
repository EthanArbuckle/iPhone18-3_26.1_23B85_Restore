@interface HMAccessory(MatterExtensions)
- (id)hdm_matterDevice;
@end

@implementation HMAccessory(MatterExtensions)

- (id)hdm_matterDevice
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = objc_getAssociatedObject(a1, a2);
  if (!v4)
  {
    v5 = [a1 home];
    v6 = [v5 hdm_sharedMatterController];

    v4 = [a1 hdm_createDeviceWithController:v6];
    if (!v4)
    {
      v7 = matterLogCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v10 = [a1 matterNodeID];
        v11 = [a1 home];
        v12 = 138544130;
        v13 = v10;
        v14 = 2112;
        v15 = a1;
        v16 = 2114;
        v17 = v6;
        v18 = 2112;
        v19 = v11;
        _os_log_error_impl(&dword_1D16EC000, v7, OS_LOG_TYPE_ERROR, "hdm_matterDevice: Failed to create matter device for nodeID: (%{public}@) accessory (%@) controller: (%{public}@) in home: (%@)", &v12, 0x2Au);
      }
    }

    objc_setAssociatedObject(a1, a2, v4, 1);
  }

  v8 = *MEMORY[0x1E69E9840];

  return v4;
}

@end