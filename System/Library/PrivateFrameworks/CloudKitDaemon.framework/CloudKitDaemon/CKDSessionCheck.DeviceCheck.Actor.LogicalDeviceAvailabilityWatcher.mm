@interface CKDSessionCheck.DeviceCheck.Actor.LogicalDeviceAvailabilityWatcher
- (BOOL)systemAvailabilityChanged:(unint64_t)changed;
@end

@implementation CKDSessionCheck.DeviceCheck.Actor.LogicalDeviceAvailabilityWatcher

- (BOOL)systemAvailabilityChanged:(unint64_t)changed
{
  selfCopy = self;
  LOBYTE(changed) = sub_2250E093C(changed);

  return changed & 1;
}

@end