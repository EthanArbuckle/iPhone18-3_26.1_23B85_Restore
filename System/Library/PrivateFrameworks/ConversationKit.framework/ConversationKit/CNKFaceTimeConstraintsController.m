@interface CNKFaceTimeConstraintsController
- (void)removeEffectsConstraints;
- (void)setInCallControlsState:(int64_t)a3;
- (void)setLocalParticipantState:(int64_t)a3;
- (void)updateConstraintsWith:(id)a3 controlsViewController:(id)a4 localParticipantView:(id)a5 effectsView:(id)a6 effectsBrowserViewController:(id)a7;
- (void)updateFor:(CGRect)a3 deviceOrientation:(int64_t)a4;
@end

@implementation CNKFaceTimeConstraintsController

- (void)setLocalParticipantState:(int64_t)a3
{
  v4 = self;
  MultiwayViewConstraintsController.accessibilityLocalParticipantState.setter(a3);
}

- (void)setInCallControlsState:(int64_t)a3
{
  v4 = self;
  MultiwayViewConstraintsController.inCallControlsState.setter(a3);
}

- (void)updateFor:(CGRect)a3 deviceOrientation:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = self;
  MultiwayViewConstraintsController.update(for:deviceOrientation:)(a4, x, y, width, height);
}

- (void)removeEffectsConstraints
{
  v2 = self;
  MultiwayViewConstraintsController.removeEffectsConstraints()();
}

- (void)updateConstraintsWith:(id)a3 controlsViewController:(id)a4 localParticipantView:(id)a5 effectsView:(id)a6 effectsBrowserViewController:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = self;
  MultiwayViewConstraintsController.updateConstraints(with:controlsViewController:localParticipantView:effectsView:effectsBrowserViewController:)(v12, v13, a5, a6, a7);
}

@end