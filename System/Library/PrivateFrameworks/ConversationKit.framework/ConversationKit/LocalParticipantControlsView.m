@interface LocalParticipantControlsView
- (UIControl)cameraBlurButton;
- (UIControl)cameraFlipButton;
- (UIControl)cameraFlipButtonWithText;
- (UIControl)cinematicFramingButton;
- (UIControl)collapseButton;
- (UIControl)effectsButton;
- (UIControl)reactionEffectGestureButton;
- (UIControl)rotateButton;
- (UIControl)studioLightButton;
- (UIControl)videoPauseButton;
- (UIView)shutterButton;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)callBack;
- (void)close;
- (void)handleCameraBlurTapped;
- (void)handleCameraFlipTapped;
- (void)handleCinematicFramingTapped;
- (void)handleCollapseButtonTapped;
- (void)handleEffectsTapped;
- (void)handleReactionEffectGestureTapped;
- (void)handleRotateButtonTapped;
- (void)handleShutterButtonTapped;
- (void)handleStudioLightTapped;
- (void)handleVideoMessageButtonTapped;
- (void)layoutSubviews;
- (void)setShutterButton:(id)a3;
- (void)showCallDetails;
@end

@implementation LocalParticipantControlsView

- (UIControl)effectsButton
{
  v2 = LocalParticipantControlsView.effectsButton.getter();

  return v2;
}

- (UIControl)cameraBlurButton
{
  v2 = LocalParticipantControlsView.cameraBlurButton.getter();

  return v2;
}

- (UIControl)cinematicFramingButton
{
  v2 = LocalParticipantControlsView.cinematicFramingButton.getter();

  return v2;
}

- (UIControl)collapseButton
{
  v2 = LocalParticipantControlsView.collapseButton.getter();

  return v2;
}

- (UIControl)rotateButton
{
  v2 = LocalParticipantControlsView.rotateButton.getter();

  return v2;
}

- (UIControl)cameraFlipButton
{
  v2 = LocalParticipantControlsView.cameraFlipButton.getter();

  return v2;
}

- (UIControl)cameraFlipButtonWithText
{
  v2 = LocalParticipantControlsView.cameraFlipButtonWithText.getter();

  return v2;
}

- (UIControl)reactionEffectGestureButton
{
  v2 = LocalParticipantControlsView.reactionEffectGestureButton.getter();

  return v2;
}

- (UIControl)studioLightButton
{
  v2 = LocalParticipantControlsView.studioLightButton.getter();

  return v2;
}

- (UIControl)videoPauseButton
{
  v2 = LocalParticipantControlsView.videoPauseButton.getter();

  return v2;
}

- (UIView)shutterButton
{
  v2 = self;
  v3 = LocalParticipantControlsView.shutterButton.getter();

  return v3;
}

- (void)setShutterButton:(id)a3
{
  v4 = a3;
  v5 = self;
  LocalParticipantControlsView.shutterButton.setter(v4);
}

- (void)layoutSubviews
{
  v2 = self;
  LocalParticipantControlsView.layoutSubviews()();
}

- (void)handleEffectsTapped
{
  v2 = self;
  LocalParticipantControlsView.handleEffectsTapped()();
}

- (void)handleCinematicFramingTapped
{
  v2 = self;
  LocalParticipantControlsView.handleCinematicFramingTapped()();
}

- (void)handleCameraBlurTapped
{
  v2 = self;
  LocalParticipantControlsView.handleCameraBlurTapped()();
}

- (void)handleCollapseButtonTapped
{
  v2 = self;
  LocalParticipantControlsView.handleCollapseButtonTapped()();
}

- (void)handleRotateButtonTapped
{
  v2 = self;
  LocalParticipantControlsView.handleRotateButtonTapped()();
}

- (void)handleCameraFlipTapped
{
  v2 = self;
  LocalParticipantControlsView.handleCameraFlipTapped()();
}

- (void)handleReactionEffectGestureTapped
{
  v2 = self;
  LocalParticipantControlsView.handleReactionEffectGestureTapped()();
}

- (void)handleStudioLightTapped
{
  v2 = self;
  LocalParticipantControlsView.handleStudioLightTapped()();
}

- (void)handleVideoMessageButtonTapped
{
  v2 = self;
  LocalParticipantControlsView.handleVideoMessageButtonTapped()();
}

- (void)showCallDetails
{
  v2 = self;
  LocalParticipantControlsView.showCallDetails()();
}

- (void)callBack
{
  v2 = self;
  LocalParticipantControlsView.callBack()();
}

- (void)close
{
  v2 = self;
  LocalParticipantControlsView.close()();
}

- (void)handleShutterButtonTapped
{
  v2 = self;
  LocalParticipantControlsView.handleShutterButtonTapped()();
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v15.value.super.isa = a4;
  LocalParticipantControlsView.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

@end