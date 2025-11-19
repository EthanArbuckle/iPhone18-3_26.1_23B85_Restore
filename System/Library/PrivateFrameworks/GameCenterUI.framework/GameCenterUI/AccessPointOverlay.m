@interface AccessPointOverlay
- (void)isPresentingDashboardFromAccessPoint:(BOOL)a3;
- (void)requestDashboardPresentationWithInitialState:(id)a3;
- (void)setGameModeWithBundleIdentifier:(id)a3 enabled:(BOOL)a4;
- (void)updateAccessPointFrameCoordinates:(CGRect)a3;
@end

@implementation AccessPointOverlay

- (void)updateAccessPointFrameCoordinates:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;

  sub_24E0C4470(x, y, width, height);
}

- (void)isPresentingDashboardFromAccessPoint:(BOOL)a3
{

  sub_24E0C4500(a3);
}

- (void)setGameModeWithBundleIdentifier:(id)a3 enabled:(BOOL)a4
{
  v5 = sub_24E347CF8();
  v7 = v6;

  sub_24E0C46F4(v5, v7, a4);
}

- (void)requestDashboardPresentationWithInitialState:(id)a3
{
  v3 = sub_24E347C08();

  sub_24E0C4940(v3);
}

@end