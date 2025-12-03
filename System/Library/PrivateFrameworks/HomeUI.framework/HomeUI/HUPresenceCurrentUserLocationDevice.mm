@interface HUPresenceCurrentUserLocationDevice
+ (id)FMFDevice;
+ (id)currentDevice;
+ (id)customDeviceWithHMDevice:(id)device;
- (HUPresenceCurrentUserLocationDevice)initWithType:(unint64_t)type customDevice:(id)device;
@end

@implementation HUPresenceCurrentUserLocationDevice

+ (id)FMFDevice
{
  v2 = [[self alloc] initWithType:0 customDevice:0];

  return v2;
}

+ (id)currentDevice
{
  v2 = [[self alloc] initWithType:1 customDevice:0];

  return v2;
}

+ (id)customDeviceWithHMDevice:(id)device
{
  deviceCopy = device;
  v5 = [[self alloc] initWithType:2 customDevice:deviceCopy];

  return v5;
}

- (HUPresenceCurrentUserLocationDevice)initWithType:(unint64_t)type customDevice:(id)device
{
  deviceCopy = device;
  v11.receiver = self;
  v11.super_class = HUPresenceCurrentUserLocationDevice;
  v8 = [(HUPresenceCurrentUserLocationDevice *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    objc_storeStrong(&v8->_customDevice, device);
  }

  return v9;
}

@end