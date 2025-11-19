@interface CKDSessionCheck.DeviceCheck.Actor.LogicalDeviceAvailabilityWatcher
- (BOOL)systemAvailabilityChanged:(unint64_t)a3;
@end

@implementation CKDSessionCheck.DeviceCheck.Actor.LogicalDeviceAvailabilityWatcher

- (BOOL)systemAvailabilityChanged:(unint64_t)a3
{
  v4 = self;
  LOBYTE(a3) = sub_2250E093C(a3);

  return a3 & 1;
}

@end