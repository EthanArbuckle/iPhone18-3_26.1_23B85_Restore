@interface CNKFaceTimeConstraintsController
- (void)removeEffectsConstraints;
- (void)setInCallControlsState:(int64_t)state;
- (void)setLocalParticipantState:(int64_t)state;
- (void)updateConstraintsWith:(id)with controlsViewController:(id)controller localParticipantView:(id)view effectsView:(id)effectsView effectsBrowserViewController:(id)viewController;
- (void)updateFor:(CGRect)for deviceOrientation:(int64_t)orientation;
@end

@implementation CNKFaceTimeConstraintsController

- (void)setLocalParticipantState:(int64_t)state
{
  selfCopy = self;
  MultiwayViewConstraintsController.accessibilityLocalParticipantState.setter(state);
}

- (void)setInCallControlsState:(int64_t)state
{
  selfCopy = self;
  MultiwayViewConstraintsController.inCallControlsState.setter(state);
}

- (void)updateFor:(CGRect)for deviceOrientation:(int64_t)orientation
{
  height = for.size.height;
  width = for.size.width;
  y = for.origin.y;
  x = for.origin.x;
  selfCopy = self;
  MultiwayViewConstraintsController.update(for:deviceOrientation:)(orientation, x, y, width, height);
}

- (void)removeEffectsConstraints
{
  selfCopy = self;
  MultiwayViewConstraintsController.removeEffectsConstraints()();
}

- (void)updateConstraintsWith:(id)with controlsViewController:(id)controller localParticipantView:(id)view effectsView:(id)effectsView effectsBrowserViewController:(id)viewController
{
  withCopy = with;
  controllerCopy = controller;
  viewCopy = view;
  effectsViewCopy = effectsView;
  viewControllerCopy = viewController;
  selfCopy = self;
  MultiwayViewConstraintsController.updateConstraints(with:controlsViewController:localParticipantView:effectsView:effectsBrowserViewController:)(withCopy, controllerCopy, view, effectsView, viewController);
}

@end