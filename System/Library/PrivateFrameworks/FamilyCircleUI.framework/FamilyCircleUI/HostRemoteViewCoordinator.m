@interface HostRemoteViewCoordinator
- (_TtC14FamilyCircleUI25HostRemoteViewCoordinator)init;
- (void)dismissWithError:(id)a3 response:(id)a4;
- (void)hostViewControllerDidActivate:(id)a3;
- (void)hostViewControllerWillDeactivate:(id)a3 error:(id)a4;
@end

@implementation HostRemoteViewCoordinator

- (void)hostViewControllerDidActivate:(id)a3
{
  v3 = self;
  sub_21BD958DC();
}

- (void)hostViewControllerWillDeactivate:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_21BD96814(a4);
}

- (void)dismissWithError:(id)a3 response:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_21BD96194(a3, a4);
}

- (_TtC14FamilyCircleUI25HostRemoteViewCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end