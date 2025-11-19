@interface HUDashboardLaunchCoordinator
+ (HUDashboardLaunchCoordinator)shared;
- (HUDashboardLaunchCoordinator)init;
- (void)prefetchStateForHome:(id)a3;
@end

@implementation HUDashboardLaunchCoordinator

+ (HUDashboardLaunchCoordinator)shared
{
  if (qword_281120660 != -1)
  {
    swift_once();
  }

  v3 = qword_281120668;

  return v3;
}

- (HUDashboardLaunchCoordinator)init
{
  swift_unknownObjectWeakInit();
  *(&self->super.isa + OBJC_IVAR___HUDashboardLaunchCoordinator_prefetchTask) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for DashboardLaunchCoordinator();
  return [(HUDashboardLaunchCoordinator *)&v4 init];
}

- (void)prefetchStateForHome:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_20CF79884(v4);
}

@end