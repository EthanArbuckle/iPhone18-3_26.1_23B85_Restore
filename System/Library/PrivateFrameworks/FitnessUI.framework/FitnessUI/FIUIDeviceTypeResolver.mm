@interface FIUIDeviceTypeResolver
+ (int64_t)deviceTypeForDeviceClass:(id)class;
@end

@implementation FIUIDeviceTypeResolver

+ (int64_t)deviceTypeForDeviceClass:(id)class
{
  classCopy = class;
  if ([classCopy isEqualToString:@"iPad"])
  {
    v4 = 2;
  }

  else
  {
    if (([classCopy isEqualToString:@"iPhone"] & 1) == 0)
    {
      if (([classCopy isEqualToString:@"Watch"] & 1) == 0)
      {
        if ([classCopy isEqualToString:@"RealityDevice"])
        {
          v4 = 3;
          goto LABEL_12;
        }

        _HKInitializeLogging();
        v5 = HKLogWorkoutsCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          [FIUIDeviceTypeResolver deviceTypeForDeviceClass:v5];
        }
      }

      v4 = 1;
      goto LABEL_12;
    }

    v4 = 0;
  }

LABEL_12:

  return v4;
}

@end