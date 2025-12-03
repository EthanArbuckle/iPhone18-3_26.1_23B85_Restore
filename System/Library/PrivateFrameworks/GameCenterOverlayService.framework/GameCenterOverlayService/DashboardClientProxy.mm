@interface DashboardClientProxy
- (void)didDismissBanner;
- (void)didDismissDashboard;
- (void)isPresentingDashboardFromAccessPoint:(id)point;
- (void)requireOnboardingFlow;
- (void)setGameModeWithBundleIdentifier:(id)identifier enabled:(id)enabled;
- (void)updateAccessPointFrameCoordinates:(id)coordinates;
@end

@implementation DashboardClientProxy

- (void)didDismissDashboard
{
  selfCopy = self;
  DashboardClientProxy.didDismissDashboard()();
}

- (void)didDismissBanner
{
  selfCopy = self;
  DashboardClientProxy.didDismissBanner()();
}

- (void)updateAccessPointFrameCoordinates:(id)coordinates
{
  coordinatesCopy = coordinates;
  selfCopy = self;
  DashboardClientProxy.updateAccessPointFrameCoordinates(_:)(coordinatesCopy);
}

- (void)isPresentingDashboardFromAccessPoint:(id)point
{
  pointCopy = point;
  selfCopy = self;
  DashboardClientProxy.isPresentingDashboardFromAccessPoint(_:)(pointCopy);
}

- (void)setGameModeWithBundleIdentifier:(id)identifier enabled:(id)enabled
{
  v6 = sub_24DD69A98();
  v8 = v7;
  enabledCopy = enabled;
  selfCopy = self;
  v11._countAndFlagsBits = v6;
  v11._object = v8;
  DashboardClientProxy.setGameMode(bundleIdentifier:enabled:)(v11, enabledCopy);
}

- (void)requireOnboardingFlow
{
  selfCopy = self;
  DashboardClientProxy.requireOnboardingFlow()();
}

@end