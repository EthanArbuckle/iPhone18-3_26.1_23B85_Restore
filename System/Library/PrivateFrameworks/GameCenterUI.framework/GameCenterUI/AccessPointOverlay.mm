@interface AccessPointOverlay
- (void)isPresentingDashboardFromAccessPoint:(BOOL)point;
- (void)requestDashboardPresentationWithInitialState:(id)state;
- (void)setGameModeWithBundleIdentifier:(id)identifier enabled:(BOOL)enabled;
- (void)updateAccessPointFrameCoordinates:(CGRect)coordinates;
@end

@implementation AccessPointOverlay

- (void)updateAccessPointFrameCoordinates:(CGRect)coordinates
{
  height = coordinates.size.height;
  width = coordinates.size.width;
  y = coordinates.origin.y;
  x = coordinates.origin.x;

  sub_24E0C4470(x, y, width, height);
}

- (void)isPresentingDashboardFromAccessPoint:(BOOL)point
{

  sub_24E0C4500(point);
}

- (void)setGameModeWithBundleIdentifier:(id)identifier enabled:(BOOL)enabled
{
  v5 = sub_24E347CF8();
  v7 = v6;

  sub_24E0C46F4(v5, v7, enabled);
}

- (void)requestDashboardPresentationWithInitialState:(id)state
{
  v3 = sub_24E347C08();

  sub_24E0C4940(v3);
}

@end