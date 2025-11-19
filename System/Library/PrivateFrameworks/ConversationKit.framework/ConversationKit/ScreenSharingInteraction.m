@interface ScreenSharingInteraction
- (UIView)view;
- (void)didMoveToView:(id)a3;
- (void)setView:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation ScreenSharingInteraction

- (UIView)view
{
  v2 = ScreenSharingInteraction.view.getter();

  return v2;
}

- (void)setView:(id)a3
{
  v5 = a3;
  v6 = self;
  ScreenSharingInteraction.view.setter(a3);
}

- (void)willMoveToView:(id)a3
{
  v4 = a3;
  v5 = self;
  ScreenSharingInteraction.willMove(to:)(v5);
}

- (void)didMoveToView:(id)a3
{
  v5 = a3;
  v6 = self;
  ScreenSharingInteraction.didMove(to:)(a3);
}

@end