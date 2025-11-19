@interface BMAppLaunchEvent_v11
- (BMAppLaunchEvent_v11)initWithProto:(id)a3;
@end

@implementation BMAppLaunchEvent_v11

- (BMAppLaunchEvent_v11)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [v5 launchType];
      v7 = (v6 - 1);
      if (v7 >= 4)
      {
        v8 = v6;
        v9 = __biome_log_for_category();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [BMAppLaunchEvent_v11 initWithProto:v8];
        }

        v7 = 0;
      }

      v22 = [v5 starting];
      v10 = [v5 bundleID];
      [v5 absoluteTimestamp];
      v12 = v11;
      [v5 duration];
      v14 = v13;
      v15 = [v5 launchReason];
      v16 = [v5 parentBundleID];
      v17 = [v5 extensionHostID];
      v18 = [v5 shortVersionString];
      v19 = [v5 exactVersionString];

      self = [(BMAppLaunchEvent *)self initWithStarting:v22 bundleID:v10 absoluteTimeStamp:v15 duration:v7 launchReason:v16 launchType:v17 parentBundleID:v12 extensionHostID:v14 shortVersionString:v18 exactBundleVersion:v19];
      v20 = self;
    }

    else
    {
      v10 = __biome_log_for_category();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [BMAppLaunchEvent initWithProto:];
      }

      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

@end