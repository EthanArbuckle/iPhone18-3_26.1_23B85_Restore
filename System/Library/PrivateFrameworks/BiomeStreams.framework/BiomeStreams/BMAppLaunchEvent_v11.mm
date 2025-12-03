@interface BMAppLaunchEvent_v11
- (BMAppLaunchEvent_v11)initWithProto:(id)proto;
@end

@implementation BMAppLaunchEvent_v11

- (BMAppLaunchEvent_v11)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      launchType = [v5 launchType];
      v7 = (launchType - 1);
      if (v7 >= 4)
      {
        v8 = launchType;
        v9 = __biome_log_for_category();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [BMAppLaunchEvent_v11 initWithProto:v8];
        }

        v7 = 0;
      }

      starting = [v5 starting];
      bundleID = [v5 bundleID];
      [v5 absoluteTimestamp];
      v12 = v11;
      [v5 duration];
      v14 = v13;
      launchReason = [v5 launchReason];
      parentBundleID = [v5 parentBundleID];
      extensionHostID = [v5 extensionHostID];
      shortVersionString = [v5 shortVersionString];
      exactVersionString = [v5 exactVersionString];

      self = [(BMAppLaunchEvent *)self initWithStarting:starting bundleID:bundleID absoluteTimeStamp:launchReason duration:v7 launchReason:parentBundleID launchType:extensionHostID parentBundleID:v12 extensionHostID:v14 shortVersionString:shortVersionString exactBundleVersion:exactVersionString];
      selfCopy = self;
    }

    else
    {
      bundleID = __biome_log_for_category();
      if (os_log_type_enabled(bundleID, OS_LOG_TYPE_FAULT))
      {
        [BMAppLaunchEvent initWithProto:];
      }

      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end