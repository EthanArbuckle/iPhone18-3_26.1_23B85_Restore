@interface ConversationControlsManager
- (BOOL)gameControllerDidRequestActivation;
- (BOOL)gameControllerDidRequestDismissal;
- (BOOL)gameControllerDidRequestFocus:(BOOL)focus;
- (void)acceptCallButtonTappedWithIgnoresSmartHoldingSession:(BOOL)session;
- (void)acceptNameTappedWithButton:(id)button;
- (void)acceptPodcastRecording;
- (void)acceptRemoteControlRequestTappedWithButton:(id)button;
- (void)acceptScreenShare;
- (void)acceptScreenShareRequestTappedWithButton:(id)button;
- (void)acceptScreenShareWithDisplayStyle;
- (void)accessibilityDidAddPendingParticipant:(id)participant;
- (void)avLessContinueButtonTappedWithButton:(id)button;
- (void)callAgainButtonTappedWithButton:(id)button;
- (void)cancelRemoteControlRequestTappedWithButton:(id)button;
- (void)cancelScreenShareRequestTappedWithButton:(id)button;
- (void)choosePhotoEnhancedEmergencyRequestTappedWithButton:(id)button;
- (void)collaborateButtonTapped;
- (void)continueHandoffButtonTapped;
- (void)controllerFocusCallButtonTapped;
- (void)declinePodcastRecording;
- (void)declineRemoteControlRequestTappedWithButton:(id)button;
- (void)declineScreenShare;
- (void)declineScreenShareRequestTappedWithButton:(id)button;
- (void)didCloseGameOverlay;
- (void)didOpenGameOverlay;
- (void)dismissConfirmLeavePTTChannelAlert;
- (void)dismissEndWaitOnHoldForAnotherCallAlert;
- (void)dismissEnhancedEmergencyRequestTappedWithButton:(id)button;
- (void)dismissTappedWithButton:(id)button;
- (void)displayEndWaitOnHoldForAnotherCallAlertWithCallerName:(id)name completionHandler:(id)handler;
- (void)endGreenTea3PCallButtonTappedWithButton:(id)button;
- (void)endRemoteControlSessionTappedWithButton:(id)button;
- (void)handleDidChangeIsWaitingOnFirstRemoteFrame:(id)frame;
- (void)handleIsScreeningChanged:(id)changed;
- (void)holdDetectedNotNowTappedWithButton:(id)button;
- (void)holdDetectedStartHoldingButtonTappedWithButton:(id)button;
- (void)joinButtonTappedWithButton:(id)button;
- (void)lagunaPullButtonTapped;
- (void)learnMoreNotTrustedContactTappedWithButton:(id)button;
- (void)leaveButtonTappedWithButton:(id)button;
- (void)notNowButtonTappedWithButton:(id)button;
- (void)okAndDismissButtonTappedWithButton:(id)button;
- (void)openMessagesButtonTapped;
- (void)previewEnhancedEmergencyRequestTappedWithButton:(id)button;
- (void)pttDoneButtonTappedWithRecognizer:(id)recognizer;
- (void)pttLeaveButtonTappedWithButton:(id)button;
- (void)pttTalkButtonGestureChangedWithRecognizer:(id)recognizer;
- (void)rejectCallButtonTapped;
- (void)resumeCallButtonTapped;
- (void)shareNameAndPhotoTappedWithButton:(id)button;
- (void)shareNameTappedWithButton:(id)button;
- (void)stopLocalScreenSharingTappedWithButton:(id)button;
- (void)swapButtonTappedWithButton:(id)button;
- (void)toggleMicButtonTappedWithButton:(id)button;
- (void)toggleVideoButtonTappedWithButton:(id)button;
- (void)waitOnHoldEndCallButtonTappedWithButton:(id)button;
- (void)waitOnHoldPickUpButtonTappedWithButton:(id)button;
@end

@implementation ConversationControlsManager

- (void)joinButtonTappedWithButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  ConversationControlsManager.joinButtonTapped(button:)(selfCopy);
}

- (void)leaveButtonTappedWithButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  ConversationControlsManager.leaveButtonTapped(button:)(selfCopy);
}

- (void)dismissTappedWithButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  ConversationControlsManager.dismissTapped(button:)(selfCopy);
}

- (void)openMessagesButtonTapped
{
  selfCopy = self;
  ConversationControlsManager.openMessagesButtonTapped()();
}

- (void)toggleMicButtonTappedWithButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  ConversationControlsManager.toggleMicButtonTapped(button:)(buttonCopy);
}

- (void)toggleVideoButtonTappedWithButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  ConversationControlsManager.toggleVideoButtonTapped(button:)(buttonCopy);
}

- (void)collaborateButtonTapped
{
  selfCopy = self;
  ConversationControlsManager.collaborateButtonTapped()();
}

- (void)notNowButtonTappedWithButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  ConversationControlsManager.notNowButtonTapped(button:)(selfCopy);
}

- (void)okAndDismissButtonTappedWithButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  ConversationControlsManager.okAndDismissButtonTapped(button:)(selfCopy);
}

- (void)swapButtonTappedWithButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  ConversationControlsManager.swapButtonTapped(button:)(selfCopy);
}

- (void)resumeCallButtonTapped
{
  selfCopy = self;
  ConversationControlsManager.resumeCallButtonTapped()();
}

- (void)shareNameAndPhotoTappedWithButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  ConversationControlsManager.shareNameAndPhotoTapped(button:)(selfCopy);
}

- (void)shareNameTappedWithButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  ConversationControlsManager.shareNameTapped(button:)(selfCopy);
}

- (void)acceptNameTappedWithButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  ConversationControlsManager.acceptNameTapped(button:)(selfCopy);
}

- (void)acceptScreenShareRequestTappedWithButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  ConversationControlsManager.acceptScreenShareRequestTapped(button:)(selfCopy);
}

- (void)stopLocalScreenSharingTappedWithButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  ConversationControlsManager.stopLocalScreenSharingTapped(button:)(selfCopy);
}

- (void)cancelScreenShareRequestTappedWithButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  ConversationControlsManager.cancelScreenShareRequestTapped(button:)(selfCopy);
}

- (void)declineScreenShareRequestTappedWithButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  ConversationControlsManager.declineScreenShareRequestTapped(button:)(selfCopy);
}

- (void)acceptRemoteControlRequestTappedWithButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  ConversationControlsManager.acceptRemoteControlRequestTapped(button:)(selfCopy);
}

- (void)declineRemoteControlRequestTappedWithButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  ConversationControlsManager.declineRemoteControlRequestTapped(button:)(selfCopy);
}

- (void)cancelRemoteControlRequestTappedWithButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  ConversationControlsManager.cancelRemoteControlRequestTapped(button:)(selfCopy);
}

- (void)endRemoteControlSessionTappedWithButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  ConversationControlsManager.endRemoteControlSessionTapped(button:)(selfCopy);
}

- (void)learnMoreNotTrustedContactTappedWithButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  ConversationControlsManager.learnMoreNotTrustedContactTapped(button:)(selfCopy);
}

- (void)dismissEnhancedEmergencyRequestTappedWithButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  ConversationControlsManager.dismissEnhancedEmergencyRequestTapped(button:)(selfCopy);
}

- (void)previewEnhancedEmergencyRequestTappedWithButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  ConversationControlsManager.previewEnhancedEmergencyRequestTapped(button:)(selfCopy);
}

- (void)choosePhotoEnhancedEmergencyRequestTappedWithButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  ConversationControlsManager.choosePhotoEnhancedEmergencyRequestTapped(button:)(selfCopy);
}

- (void)pttLeaveButtonTappedWithButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  ConversationControlsManager.pttLeaveButtonTapped(button:)(selfCopy);
}

- (void)dismissConfirmLeavePTTChannelAlert
{
  selfCopy = self;
  ConversationControlsManager.dismissConfirmLeavePTTChannelAlert()();
}

- (void)pttDoneButtonTappedWithRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  ConversationControlsManager.pttDoneButtonTapped(recognizer:)(recognizerCopy);
}

- (void)pttTalkButtonGestureChangedWithRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  ConversationControlsManager.pttTalkButtonGestureChanged(recognizer:)(recognizerCopy);
}

- (void)endGreenTea3PCallButtonTappedWithButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  ConversationControlsManager.endGreenTea3PCallButtonTapped(button:)(selfCopy);
}

- (void)waitOnHoldEndCallButtonTappedWithButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  ConversationControlsManager.waitOnHoldEndCallButtonTapped(button:)(selfCopy);
}

- (void)holdDetectedStartHoldingButtonTappedWithButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  ConversationControlsManager.holdDetectedStartHoldingButtonTapped(button:)(selfCopy);
}

- (void)holdDetectedNotNowTappedWithButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  ConversationControlsManager.holdDetectedNotNowTapped(button:)(selfCopy);
}

- (void)waitOnHoldPickUpButtonTappedWithButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  ConversationControlsManager.waitOnHoldPickUpButtonTapped(button:)(selfCopy);
}

- (void)avLessContinueButtonTappedWithButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  ConversationControlsManager.avLessContinueButtonTapped(button:)(selfCopy);
}

- (void)continueHandoffButtonTapped
{
  selfCopy = self;
  ConversationControlsManager.continueHandoffButtonTapped()();
}

- (void)lagunaPullButtonTapped
{
  selfCopy = self;
  ConversationControlsManager.lagunaPullButtonTapped()();
}

- (void)displayEndWaitOnHoldForAnotherCallAlertWithCallerName:(id)name completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  ConversationControlsManager.displayEndWaitOnHoldForAnotherCallAlert(callerName:completionHandler:)(v6, v8, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> (), v9);
}

- (void)dismissEndWaitOnHoldForAnotherCallAlert
{
  selfCopy = self;
  ConversationControlsManager.dismissEndWaitOnHoldForAnotherCallAlert()();
}

- (void)acceptCallButtonTappedWithIgnoresSmartHoldingSession:(BOOL)session
{
  selfCopy = self;
  ConversationControlsManager.acceptCallButtonTapped(ignoresSmartHoldingSession:)(session);
}

- (void)controllerFocusCallButtonTapped
{
  selfCopy = self;
  ConversationControlsManager.controllerFocusCallButtonTapped()();
}

- (void)rejectCallButtonTapped
{
  selfCopy = self;
  ConversationControlsManager.rejectCallButtonTapped()();
}

- (void)callAgainButtonTappedWithButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  ConversationControlsManager.callAgainButtonTapped(button:)(selfCopy);
}

- (void)acceptScreenShare
{
  selfCopy = self;
  ConversationControlsManager.acceptScreenShare()();
}

- (void)acceptScreenShareWithDisplayStyle
{
  selfCopy = self;
  ConversationControlsManager.acceptScreenShareWithDisplayStyle()();
}

- (void)declineScreenShare
{
  selfCopy = self;
  ConversationControlsManager.declineScreenShare()();
}

- (void)acceptPodcastRecording
{
  selfCopy = self;
  ConversationControlsManager.acceptPodcastRecording()();
}

- (void)declinePodcastRecording
{
  selfCopy = self;
  ConversationControlsManager.declinePodcastRecording()();
}

- (void)didOpenGameOverlay
{
  selfCopy = self;
  ConversationControlsManager.didOpenGameOverlay()();
}

- (void)didCloseGameOverlay
{
  selfCopy = self;
  ConversationControlsManager.didCloseGameOverlay()();
}

- (void)handleDidChangeIsWaitingOnFirstRemoteFrame:(id)frame
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  ConversationControlsManager.handleDidChangeIsWaitingOnFirstRemoteFrame(_:)();

  (*(v5 + 8))(v7, v4);
}

- (void)handleIsScreeningChanged:(id)changed
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12NotificationVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  if (changed)
  {
    static Notification._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for Notification();
    v9 = 0;
  }

  else
  {
    v8 = type metadata accessor for Notification();
    v9 = 1;
  }

  __swift_storeEnumTagSinglePayload(v7, v9, 1, v8);
  selfCopy = self;
  ConversationControlsManager.handleIsScreeningChanged(_:)();

  outlined destroy of CallControlsService?(v7, &_s10Foundation12NotificationVSgMd);
}

- (void)accessibilityDidAddPendingParticipant:(id)participant
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  TPNumberPadCharacter.rawValue.getter(v3);
}

- (BOOL)gameControllerDidRequestActivation
{
  selfCopy = self;
  v3 = ConversationControlsManager.gameControllerDidRequestActivation()();

  return v3;
}

- (BOOL)gameControllerDidRequestDismissal
{
  selfCopy = self;
  v3 = ConversationControlsManager.gameControllerDidRequestDismissal()();

  return v3;
}

- (BOOL)gameControllerDidRequestFocus:(BOOL)focus
{
  selfCopy = self;
  v5 = ConversationControlsManager.gameControllerDidRequestFocus(_:)(focus);

  return v5;
}

@end