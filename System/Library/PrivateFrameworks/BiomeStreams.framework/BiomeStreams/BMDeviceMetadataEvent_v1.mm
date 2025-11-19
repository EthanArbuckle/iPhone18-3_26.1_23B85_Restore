@interface BMDeviceMetadataEvent_v1
- (BMDeviceMetadataEvent_v1)initWithProto:(id)a3;
@end

@implementation BMDeviceMetadataEvent_v1

- (BMDeviceMetadataEvent_v1)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [v5 name];
      v7 = [v5 build];
      v8 = [v5 supplementalBuild];
      v9 = [v5 platform];
      v10 = v9;
      if (v9 >= 9)
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
        v11 = v9;
      }

      self = [(BMDeviceMetadataEvent *)self initWithName:v6 build:v7 supplementalBuild:v8 platform:v11 rapidSecurityResponsePreReboot:[v5 rapidSecurityResponsePreReboot]];

      v12 = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMDeviceMetadataEvent initWithProto:];
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end