@interface CKDSessionCheck.DeviceCheck.Actor.SystemAvailabilityWatcher
- (BOOL)systemAvailabilityChanged:(unint64_t)changed;
@end

@implementation CKDSessionCheck.DeviceCheck.Actor.SystemAvailabilityWatcher

- (BOOL)systemAvailabilityChanged:(unint64_t)changed
{
  selfCopy = self;
  LOBYTE(changed) = sub_2250DF8DC(changed);

  return changed & 1;
}

@end