@interface NDODeviceServicesInternalDebugHelpers
+ (id)getLocalURLOverridesForDeviceServices;
- (_TtC17NewDeviceOutreach37NDODeviceServicesInternalDebugHelpers)init;
@end

@implementation NDODeviceServicesInternalDebugHelpers

+ (id)getLocalURLOverridesForDeviceServices
{
  if (![objc_opt_self() isInternal])
  {
    goto LABEL_6;
  }

  if (qword_27FBDCCA0 != -1)
  {
    swift_once();
  }

  v2 = qword_27FBDCCA8;
  v3 = sub_25BD797A8();
  v4 = [v2 stringForKey_];

  if (v4)
  {
    sub_25BD797B8();

    v5 = sub_25BD797A8();

    v6 = v5;
  }

  else
  {
LABEL_6:
    v6 = 0;
  }

  return v6;
}

- (_TtC17NewDeviceOutreach37NDODeviceServicesInternalDebugHelpers)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NDODeviceServicesInternalDebugHelpers();
  return [(NDODeviceServicesInternalDebugHelpers *)&v3 init];
}

@end