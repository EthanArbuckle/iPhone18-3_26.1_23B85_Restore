@interface ProtectedAppsProvider
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
@end

@implementation ProtectedAppsProvider

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  sub_1BC8F83C4();
  v5 = sub_1BC8F7E54();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BC8EB4EC(v5);
  swift_unknownObjectRelease();
}

@end