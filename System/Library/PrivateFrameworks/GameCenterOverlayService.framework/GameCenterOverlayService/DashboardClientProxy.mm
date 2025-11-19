@interface DashboardClientProxy
- (void)didDismissBanner;
- (void)didDismissDashboard;
- (void)isPresentingDashboardFromAccessPoint:(id)a3;
- (void)requireOnboardingFlow;
- (void)setGameModeWithBundleIdentifier:(id)a3 enabled:(id)a4;
- (void)updateAccessPointFrameCoordinates:(id)a3;
@end

@implementation DashboardClientProxy

- (void)didDismissDashboard
{
  v2 = self;
  DashboardClientProxy.didDismissDashboard()();
}

- (void)didDismissBanner
{
  v2 = self;
  DashboardClientProxy.didDismissBanner()();
}

- (void)updateAccessPointFrameCoordinates:(id)a3
{
  v4 = a3;
  v5 = self;
  DashboardClientProxy.updateAccessPointFrameCoordinates(_:)(v4);
}

- (void)isPresentingDashboardFromAccessPoint:(id)a3
{
  v4 = a3;
  v5 = self;
  DashboardClientProxy.isPresentingDashboardFromAccessPoint(_:)(v4);
}

- (void)setGameModeWithBundleIdentifier:(id)a3 enabled:(id)a4
{
  v6 = sub_24DD69A98();
  v8 = v7;
  v9 = a4;
  v10 = self;
  v11._countAndFlagsBits = v6;
  v11._object = v8;
  DashboardClientProxy.setGameMode(bundleIdentifier:enabled:)(v11, v9);
}

- (void)requireOnboardingFlow
{
  v2 = self;
  DashboardClientProxy.requireOnboardingFlow()();
}

@end