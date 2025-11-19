@interface HUPresenceCurrentUserLocationDevice
+ (id)FMFDevice;
+ (id)currentDevice;
+ (id)customDeviceWithHMDevice:(id)a3;
- (HUPresenceCurrentUserLocationDevice)initWithType:(unint64_t)a3 customDevice:(id)a4;
@end

@implementation HUPresenceCurrentUserLocationDevice

+ (id)FMFDevice
{
  v2 = [[a1 alloc] initWithType:0 customDevice:0];

  return v2;
}

+ (id)currentDevice
{
  v2 = [[a1 alloc] initWithType:1 customDevice:0];

  return v2;
}

+ (id)customDeviceWithHMDevice:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithType:2 customDevice:v4];

  return v5;
}

- (HUPresenceCurrentUserLocationDevice)initWithType:(unint64_t)a3 customDevice:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HUPresenceCurrentUserLocationDevice;
  v8 = [(HUPresenceCurrentUserLocationDevice *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_customDevice, a4);
  }

  return v9;
}

@end