@interface ProtectedAppsProvider
- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4;
@end

@implementation ProtectedAppsProvider

- (void)appProtectionSubjectsChanged:(id)a3 forSubscription:(id)a4
{
  sub_1BC8F83C4();
  v5 = sub_1BC8F7E54();
  swift_unknownObjectRetain();
  v6 = self;
  sub_1BC8EB4EC(v5);
  swift_unknownObjectRelease();
}

@end