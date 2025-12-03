@interface ScreenSharingInteraction
- (UIView)view;
- (void)didMoveToView:(id)view;
- (void)setView:(id)view;
- (void)willMoveToView:(id)view;
@end

@implementation ScreenSharingInteraction

- (UIView)view
{
  v2 = ScreenSharingInteraction.view.getter();

  return v2;
}

- (void)setView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  ScreenSharingInteraction.view.setter(view);
}

- (void)willMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  ScreenSharingInteraction.willMove(to:)(selfCopy);
}

- (void)didMoveToView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  ScreenSharingInteraction.didMove(to:)(view);
}

@end