@interface ConversationControlsManager
- (BOOL)gameControllerDidRequestActivation;
- (BOOL)gameControllerDidRequestDismissal;
- (BOOL)gameControllerDidRequestFocus:(BOOL)a3;
- (void)acceptCallButtonTappedWithIgnoresSmartHoldingSession:(BOOL)a3;
- (void)acceptNameTappedWithButton:(id)a3;
- (void)acceptPodcastRecording;
- (void)acceptRemoteControlRequestTappedWithButton:(id)a3;
- (void)acceptScreenShare;
- (void)acceptScreenShareRequestTappedWithButton:(id)a3;
- (void)acceptScreenShareWithDisplayStyle;
- (void)accessibilityDidAddPendingParticipant:(id)a3;
- (void)avLessContinueButtonTappedWithButton:(id)a3;
- (void)callAgainButtonTappedWithButton:(id)a3;
- (void)cancelRemoteControlRequestTappedWithButton:(id)a3;
- (void)cancelScreenShareRequestTappedWithButton:(id)a3;
- (void)choosePhotoEnhancedEmergencyRequestTappedWithButton:(id)a3;
- (void)collaborateButtonTapped;
- (void)continueHandoffButtonTapped;
- (void)controllerFocusCallButtonTapped;
- (void)declinePodcastRecording;
- (void)declineRemoteControlRequestTappedWithButton:(id)a3;
- (void)declineScreenShare;
- (void)declineScreenShareRequestTappedWithButton:(id)a3;
- (void)didCloseGameOverlay;
- (void)didOpenGameOverlay;
- (void)dismissConfirmLeavePTTChannelAlert;
- (void)dismissEndWaitOnHoldForAnotherCallAlert;
- (void)dismissEnhancedEmergencyRequestTappedWithButton:(id)a3;
- (void)dismissTappedWithButton:(id)a3;
- (void)displayEndWaitOnHoldForAnotherCallAlertWithCallerName:(id)a3 completionHandler:(id)a4;
- (void)endGreenTea3PCallButtonTappedWithButton:(id)a3;
- (void)endRemoteControlSessionTappedWithButton:(id)a3;
- (void)handleDidChangeIsWaitingOnFirstRemoteFrame:(id)a3;
- (void)handleIsScreeningChanged:(id)a3;
- (void)holdDetectedNotNowTappedWithButton:(id)a3;
- (void)holdDetectedStartHoldingButtonTappedWithButton:(id)a3;
- (void)joinButtonTappedWithButton:(id)a3;
- (void)lagunaPullButtonTapped;
- (void)learnMoreNotTrustedContactTappedWithButton:(id)a3;
- (void)leaveButtonTappedWithButton:(id)a3;
- (void)notNowButtonTappedWithButton:(id)a3;
- (void)okAndDismissButtonTappedWithButton:(id)a3;
- (void)openMessagesButtonTapped;
- (void)previewEnhancedEmergencyRequestTappedWithButton:(id)a3;
- (void)pttDoneButtonTappedWithRecognizer:(id)a3;
- (void)pttLeaveButtonTappedWithButton:(id)a3;
- (void)pttTalkButtonGestureChangedWithRecognizer:(id)a3;
- (void)rejectCallButtonTapped;
- (void)resumeCallButtonTapped;
- (void)shareNameAndPhotoTappedWithButton:(id)a3;
- (void)shareNameTappedWithButton:(id)a3;
- (void)stopLocalScreenSharingTappedWithButton:(id)a3;
- (void)swapButtonTappedWithButton:(id)a3;
- (void)toggleMicButtonTappedWithButton:(id)a3;
- (void)toggleVideoButtonTappedWithButton:(id)a3;
- (void)waitOnHoldEndCallButtonTappedWithButton:(id)a3;
- (void)waitOnHoldPickUpButtonTappedWithButton:(id)a3;
@end

@implementation ConversationControlsManager

- (void)joinButtonTappedWithButton:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationControlsManager.joinButtonTapped(button:)(v5);
}

- (void)leaveButtonTappedWithButton:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationControlsManager.leaveButtonTapped(button:)(v5);
}

- (void)dismissTappedWithButton:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationControlsManager.dismissTapped(button:)(v5);
}

- (void)openMessagesButtonTapped
{
  v2 = self;
  ConversationControlsManager.openMessagesButtonTapped()();
}

- (void)toggleMicButtonTappedWithButton:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationControlsManager.toggleMicButtonTapped(button:)(v4);
}

- (void)toggleVideoButtonTappedWithButton:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationControlsManager.toggleVideoButtonTapped(button:)(v4);
}

- (void)collaborateButtonTapped
{
  v2 = self;
  ConversationControlsManager.collaborateButtonTapped()();
}

- (void)notNowButtonTappedWithButton:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationControlsManager.notNowButtonTapped(button:)(v5);
}

- (void)okAndDismissButtonTappedWithButton:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationControlsManager.okAndDismissButtonTapped(button:)(v5);
}

- (void)swapButtonTappedWithButton:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationControlsManager.swapButtonTapped(button:)(v5);
}

- (void)resumeCallButtonTapped
{
  v2 = self;
  ConversationControlsManager.resumeCallButtonTapped()();
}

- (void)shareNameAndPhotoTappedWithButton:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationControlsManager.shareNameAndPhotoTapped(button:)(v5);
}

- (void)shareNameTappedWithButton:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationControlsManager.shareNameTapped(button:)(v5);
}

- (void)acceptNameTappedWithButton:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationControlsManager.acceptNameTapped(button:)(v5);
}

- (void)acceptScreenShareRequestTappedWithButton:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationControlsManager.acceptScreenShareRequestTapped(button:)(v5);
}

- (void)stopLocalScreenSharingTappedWithButton:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationControlsManager.stopLocalScreenSharingTapped(button:)(v5);
}

- (void)cancelScreenShareRequestTappedWithButton:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationControlsManager.cancelScreenShareRequestTapped(button:)(v5);
}

- (void)declineScreenShareRequestTappedWithButton:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationControlsManager.declineScreenShareRequestTapped(button:)(v5);
}

- (void)acceptRemoteControlRequestTappedWithButton:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationControlsManager.acceptRemoteControlRequestTapped(button:)(v5);
}

- (void)declineRemoteControlRequestTappedWithButton:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationControlsManager.declineRemoteControlRequestTapped(button:)(v5);
}

- (void)cancelRemoteControlRequestTappedWithButton:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationControlsManager.cancelRemoteControlRequestTapped(button:)(v5);
}

- (void)endRemoteControlSessionTappedWithButton:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationControlsManager.endRemoteControlSessionTapped(button:)(v5);
}

- (void)learnMoreNotTrustedContactTappedWithButton:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationControlsManager.learnMoreNotTrustedContactTapped(button:)(v5);
}

- (void)dismissEnhancedEmergencyRequestTappedWithButton:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationControlsManager.dismissEnhancedEmergencyRequestTapped(button:)(v5);
}

- (void)previewEnhancedEmergencyRequestTappedWithButton:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationControlsManager.previewEnhancedEmergencyRequestTapped(button:)(v5);
}

- (void)choosePhotoEnhancedEmergencyRequestTappedWithButton:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationControlsManager.choosePhotoEnhancedEmergencyRequestTapped(button:)(v5);
}

- (void)pttLeaveButtonTappedWithButton:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationControlsManager.pttLeaveButtonTapped(button:)(v5);
}

- (void)dismissConfirmLeavePTTChannelAlert
{
  v2 = self;
  ConversationControlsManager.dismissConfirmLeavePTTChannelAlert()();
}

- (void)pttDoneButtonTappedWithRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationControlsManager.pttDoneButtonTapped(recognizer:)(v4);
}

- (void)pttTalkButtonGestureChangedWithRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationControlsManager.pttTalkButtonGestureChanged(recognizer:)(v4);
}

- (void)endGreenTea3PCallButtonTappedWithButton:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationControlsManager.endGreenTea3PCallButtonTapped(button:)(v5);
}

- (void)waitOnHoldEndCallButtonTappedWithButton:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationControlsManager.waitOnHoldEndCallButtonTapped(button:)(v5);
}

- (void)holdDetectedStartHoldingButtonTappedWithButton:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationControlsManager.holdDetectedStartHoldingButtonTapped(button:)(v5);
}

- (void)holdDetectedNotNowTappedWithButton:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationControlsManager.holdDetectedNotNowTapped(button:)(v5);
}

- (void)waitOnHoldPickUpButtonTappedWithButton:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationControlsManager.waitOnHoldPickUpButtonTapped(button:)(v5);
}

- (void)avLessContinueButtonTappedWithButton:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationControlsManager.avLessContinueButtonTapped(button:)(v5);
}

- (void)continueHandoffButtonTapped
{
  v2 = self;
  ConversationControlsManager.continueHandoffButtonTapped()();
}

- (void)lagunaPullButtonTapped
{
  v2 = self;
  ConversationControlsManager.lagunaPullButtonTapped()();
}

- (void)displayEndWaitOnHoldForAnotherCallAlertWithCallerName:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  ConversationControlsManager.displayEndWaitOnHoldForAnotherCallAlert(callerName:completionHandler:)(v6, v8, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> (), v9);
}

- (void)dismissEndWaitOnHoldForAnotherCallAlert
{
  v2 = self;
  ConversationControlsManager.dismissEndWaitOnHoldForAnotherCallAlert()();
}

- (void)acceptCallButtonTappedWithIgnoresSmartHoldingSession:(BOOL)a3
{
  v4 = self;
  ConversationControlsManager.acceptCallButtonTapped(ignoresSmartHoldingSession:)(a3);
}

- (void)controllerFocusCallButtonTapped
{
  v2 = self;
  ConversationControlsManager.controllerFocusCallButtonTapped()();
}

- (void)rejectCallButtonTapped
{
  v2 = self;
  ConversationControlsManager.rejectCallButtonTapped()();
}

- (void)callAgainButtonTappedWithButton:(id)a3
{
  v4 = a3;
  v5 = self;
  ConversationControlsManager.callAgainButtonTapped(button:)(v5);
}

- (void)acceptScreenShare
{
  v2 = self;
  ConversationControlsManager.acceptScreenShare()();
}

- (void)acceptScreenShareWithDisplayStyle
{
  v2 = self;
  ConversationControlsManager.acceptScreenShareWithDisplayStyle()();
}

- (void)declineScreenShare
{
  v2 = self;
  ConversationControlsManager.declineScreenShare()();
}

- (void)acceptPodcastRecording
{
  v2 = self;
  ConversationControlsManager.acceptPodcastRecording()();
}

- (void)declinePodcastRecording
{
  v2 = self;
  ConversationControlsManager.declinePodcastRecording()();
}

- (void)didOpenGameOverlay
{
  v2 = self;
  ConversationControlsManager.didOpenGameOverlay()();
}

- (void)didCloseGameOverlay
{
  v2 = self;
  ConversationControlsManager.didCloseGameOverlay()();
}

- (void)handleDidChangeIsWaitingOnFirstRemoteFrame:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  ConversationControlsManager.handleDidChangeIsWaitingOnFirstRemoteFrame(_:)();

  (*(v5 + 8))(v7, v4);
}

- (void)handleIsScreeningChanged:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12NotificationVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  if (a3)
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
  v10 = self;
  ConversationControlsManager.handleIsScreeningChanged(_:)();

  outlined destroy of CallControlsService?(v7, &_s10Foundation12NotificationVSgMd);
}

- (void)accessibilityDidAddPendingParticipant:(id)a3
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  TPNumberPadCharacter.rawValue.getter(v3);
}

- (BOOL)gameControllerDidRequestActivation
{
  v2 = self;
  v3 = ConversationControlsManager.gameControllerDidRequestActivation()();

  return v3;
}

- (BOOL)gameControllerDidRequestDismissal
{
  v2 = self;
  v3 = ConversationControlsManager.gameControllerDidRequestDismissal()();

  return v3;
}

- (BOOL)gameControllerDidRequestFocus:(BOOL)a3
{
  v4 = self;
  v5 = ConversationControlsManager.gameControllerDidRequestFocus(_:)(a3);

  return v5;
}

@end