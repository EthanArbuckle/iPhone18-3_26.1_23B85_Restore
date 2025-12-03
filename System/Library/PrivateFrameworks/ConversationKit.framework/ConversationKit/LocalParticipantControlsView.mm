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
- (id)hitTest:(CGPoint)test withEvent:(id)event;
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
- (void)setShutterButton:(id)button;
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
  selfCopy = self;
  v3 = LocalParticipantControlsView.shutterButton.getter();

  return v3;
}

- (void)setShutterButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  LocalParticipantControlsView.shutterButton.setter(buttonCopy);
}

- (void)layoutSubviews
{
  selfCopy = self;
  LocalParticipantControlsView.layoutSubviews()();
}

- (void)handleEffectsTapped
{
  selfCopy = self;
  LocalParticipantControlsView.handleEffectsTapped()();
}

- (void)handleCinematicFramingTapped
{
  selfCopy = self;
  LocalParticipantControlsView.handleCinematicFramingTapped()();
}

- (void)handleCameraBlurTapped
{
  selfCopy = self;
  LocalParticipantControlsView.handleCameraBlurTapped()();
}

- (void)handleCollapseButtonTapped
{
  selfCopy = self;
  LocalParticipantControlsView.handleCollapseButtonTapped()();
}

- (void)handleRotateButtonTapped
{
  selfCopy = self;
  LocalParticipantControlsView.handleRotateButtonTapped()();
}

- (void)handleCameraFlipTapped
{
  selfCopy = self;
  LocalParticipantControlsView.handleCameraFlipTapped()();
}

- (void)handleReactionEffectGestureTapped
{
  selfCopy = self;
  LocalParticipantControlsView.handleReactionEffectGestureTapped()();
}

- (void)handleStudioLightTapped
{
  selfCopy = self;
  LocalParticipantControlsView.handleStudioLightTapped()();
}

- (void)handleVideoMessageButtonTapped
{
  selfCopy = self;
  LocalParticipantControlsView.handleVideoMessageButtonTapped()();
}

- (void)showCallDetails
{
  selfCopy = self;
  LocalParticipantControlsView.showCallDetails()();
}

- (void)callBack
{
  selfCopy = self;
  LocalParticipantControlsView.callBack()();
}

- (void)close
{
  selfCopy = self;
  LocalParticipantControlsView.close()();
}

- (void)handleShutterButtonTapped
{
  selfCopy = self;
  LocalParticipantControlsView.handleShutterButtonTapped()();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v15.value.super.isa = event;
  LocalParticipantControlsView.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

@end