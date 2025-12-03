@interface BMDeviceMetadataEvent_v1
- (BMDeviceMetadataEvent_v1)initWithProto:(id)proto;
@end

@implementation BMDeviceMetadataEvent_v1

- (BMDeviceMetadataEvent_v1)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      name = [v5 name];
      build = [v5 build];
      supplementalBuild = [v5 supplementalBuild];
      platform = [v5 platform];
      v10 = platform;
      if (platform >= 9)
      {
        v13 = __biome_log_for_category();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [(BMDeviceMetadataEvent_v1 *)v10 initWithProto:v13];
        }

        v11 = 0;
      }

      else
      {
        v11 = platform;
      }

      self = [(BMDeviceMetadataEvent *)self initWithName:name build:build supplementalBuild:supplementalBuild platform:v11 rapidSecurityResponsePreReboot:[v5 rapidSecurityResponsePreReboot]];

      selfCopy = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMDeviceMetadataEvent initWithProto:];
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