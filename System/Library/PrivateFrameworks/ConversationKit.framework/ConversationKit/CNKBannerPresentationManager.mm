@interface CNKBannerPresentationManager
- (BOOL)conversationIsAVLess;
- (BOOL)hasAssociatedCall;
- (BOOL)inCallControlsVisible;
- (BOOL)isMicIndicatorVisible;
- (BOOL)onlyHasPlaceholderCall;
- (BOOL)shouldShowCallDetailsWhenReady;
- (BOOL)wantsBannerWithoutScene;
- (CNKAudioRoutingDelegate)audioRoutingDelegate;
- (CNKBannerPresentationDelegate)presentationDelegate;
- (CNKBannerPresentationManager)initWithDelegate:(id)delegate;
- (CNKGameControllerManager)gameControllerManager;
- (CNKLocalAudioTogglingDelegate)localAudioTogglingDelegate;
- (TUCall)activeCall;
- (TUCall)handedOffCall;
- (id)makeSystemApertureElementProvider;
- (unint64_t)applicationState;
- (void)bannerDismissedBySpringBoard;
- (void)didUpdatePresentationModeToDismissed;
- (void)didUpdatePresentationModeToFullScreen;
- (void)dismissPresentedBannerForReason:(id)reason animated:(BOOL)animated;
- (void)gameControllerDidRequestActivation;
- (void)gameControllerDidRequestFocus:(BOOL)focus;
- (void)handleLockScreenStatusChanged;
- (void)invalidatePersistentSystemApertureAlertWithReason:(id)reason;
- (void)preloadCallChanges;
- (void)presentHUDForCurrentContext;
- (void)presentReminderNotice;
- (void)presentSystemHUD;
- (void)refreshShareableContentWithBundleIdentifier:(id)identifier;
- (void)setApplicationState:(unint64_t)state;
- (void)setAudioRoutingDelegate:(id)delegate;
- (void)setHandedOffCall:(id)call;
- (void)setLocalAudioTogglingDelegate:(id)delegate;
- (void)setPresentationDelegate:(id)delegate;
- (void)showAccessoryButtonEventsNoticeIfNeeded;
- (void)showGreenTea3PHUD;
- (void)showHandoffHUD;
- (void)showInCallHUD;
- (void)showLagunaPullConversationHUD;
- (void)showPTTHUD;
- (void)showRemoteParticipantNoticeIfNeeded;
- (void)showWaitOnHoldHUD;
@end

@implementation CNKBannerPresentationManager

- (void)preloadCallChanges
{
  selfCopy = self;
  CNKBannerPresentationManager.preloadCallChanges()();
}

- (BOOL)onlyHasPlaceholderCall
{
  selfCopy = self;
  HasPlaceholder = CNKBannerPresentationManager.onlyHasPlaceholderCall.getter();

  return HasPlaceholder & 1;
}

- (BOOL)conversationIsAVLess
{
  selfCopy = self;
  CNKBannerPresentationManager.conversationIsAVLess.getter();
  v4 = v3;

  return v4 & 1;
}

- (void)gameControllerDidRequestActivation
{
  selfCopy = self;
  CNKBannerPresentationManager.gameControllerDidRequestDismissal()();
}

- (CNKBannerPresentationDelegate)presentationDelegate
{
  selfCopy = self;
  v3 = CNKBannerPresentationManager.presentationDelegate.getter();

  return v3;
}

- (void)setPresentationDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  CNKBannerPresentationManager.presentationDelegate.setter();
}

- (CNKAudioRoutingDelegate)audioRoutingDelegate
{
  selfCopy = self;
  v3 = CNKBannerPresentationManager.audioRoutingDelegate.getter();

  return v3;
}

- (void)setAudioRoutingDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  CNKBannerPresentationManager.audioRoutingDelegate.setter();
}

- (TUCall)handedOffCall
{
  selfCopy = self;
  v3 = CNKBannerPresentationManager.handedOffCall.getter();

  return v3;
}

- (void)setHandedOffCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  CNKBannerPresentationManager.handedOffCall.setter();
}

- (BOOL)inCallControlsVisible
{
  selfCopy = self;
  v3 = CNKBannerPresentationManager.inCallControlsVisible.getter();

  return v3 & 1;
}

- (BOOL)isMicIndicatorVisible
{
  selfCopy = self;
  v3 = CNKBannerPresentationManager.isMicIndicatorVisible.getter();

  return v3 & 1;
}

- (CNKLocalAudioTogglingDelegate)localAudioTogglingDelegate
{
  selfCopy = self;
  CNKBannerPresentationManager.localAudioTogglingDelegate.getter();
  v4 = v3;

  return v4;
}

- (void)setLocalAudioTogglingDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  CNKBannerPresentationManager.localAudioTogglingDelegate.setter();
}

- (BOOL)shouldShowCallDetailsWhenReady
{
  selfCopy = self;
  CNKBannerPresentationManager.shouldShowCallDetailsWhenReady.getter();
  v4 = v3;

  return v4 & 1;
}

- (unint64_t)applicationState
{
  selfCopy = self;
  CNKBannerPresentationManager.applicationState.getter();
  v4 = v3;

  return v4;
}

- (void)setApplicationState:(unint64_t)state
{
  selfCopy = self;
  CNKBannerPresentationManager.applicationState.setter();
}

- (BOOL)wantsBannerWithoutScene
{
  selfCopy = self;
  v3 = CNKBannerPresentationManager.wantsBannerWithoutScene.getter();

  return v3 & 1;
}

- (TUCall)activeCall
{
  selfCopy = self;
  v3 = CNKBannerPresentationManager.activeCall.getter();

  return v3;
}

- (BOOL)hasAssociatedCall
{
  selfCopy = self;
  v3 = CNKBannerPresentationManager.hasAssociatedCall.getter();

  return v3;
}

- (CNKGameControllerManager)gameControllerManager
{
  selfCopy = self;
  v3 = CNKBannerPresentationManager.gameControllerManager.getter();

  return v3;
}

- (void)presentSystemHUD
{
  selfCopy = self;
  CNKBannerPresentationManager.presentSystemHUD()();
}

- (void)presentHUDForCurrentContext
{
  selfCopy = self;
  CNKBannerPresentationManager.presentHUDForCurrentContext()();
}

- (void)showInCallHUD
{
  selfCopy = self;
  CNKBannerPresentationManager.showInCallHUD()();
}

- (void)showGreenTea3PHUD
{
  selfCopy = self;
  CNKBannerPresentationManager.showGreenTea3PHUD()();
}

- (void)showWaitOnHoldHUD
{
  selfCopy = self;
  CNKBannerPresentationManager.showWaitOnHoldHUD()();
}

- (void)showPTTHUD
{
  selfCopy = self;
  CNKBannerPresentationManager.showPTTHUD()();
}

- (void)showRemoteParticipantNoticeIfNeeded
{
  selfCopy = self;
  CNKBannerPresentationManager.showRemoteParticipantNoticeIfNeeded()();
}

- (void)showAccessoryButtonEventsNoticeIfNeeded
{
  selfCopy = self;
  CNKBannerPresentationManager.showAccessoryButtonEventsNoticeIfNeeded()();
}

- (void)showHandoffHUD
{
  selfCopy = self;
  CNKBannerPresentationManager.showHandoffHUD()();
}

- (void)showLagunaPullConversationHUD
{
  selfCopy = self;
  CNKBannerPresentationManager.showLagunaPullConversationHUD()();
}

- (void)presentReminderNotice
{
  selfCopy = self;
  CNKBannerPresentationManager.presentReminderNotice()();
}

- (void)bannerDismissedBySpringBoard
{
  selfCopy = self;
  CNKBannerPresentationManager.bannerDismissedBySpringBoard()();
}

- (void)refreshShareableContentWithBundleIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8.value._countAndFlagsBits = v4;
  v8.value._object = v6;
  CNKBannerPresentationManager.refreshShareableContentWithBundleIdentifier(_:)(v8);
}

- (void)dismissPresentedBannerForReason:(id)reason animated:(BOOL)animated
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  selfCopy = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  CNKBannerPresentationManager.dismissPresentedBanner(forReason:animated:)(v10, animated);
}

- (void)gameControllerDidRequestFocus:(BOOL)focus
{
  selfCopy = self;
  CNKBannerPresentationManager.gameControllerDidRequestFocus(_:)(focus);
}

- (void)invalidatePersistentSystemApertureAlertWithReason:(id)reason
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  CNKBannerPresentationManager.invalidatePersistentSystemApertureAlert(reason:)(v8);
}

- (void)didUpdatePresentationModeToFullScreen
{
  selfCopy = self;
  CNKBannerPresentationManager.didUpdatePresentationModeToFullScreen()();
}

- (void)didUpdatePresentationModeToDismissed
{
  selfCopy = self;
  CNKBannerPresentationManager.didUpdatePresentationModeToDismissed()();
}

- (id)makeSystemApertureElementProvider
{
  selfCopy = self;
  v3 = CNKBannerPresentationManager.makeSystemApertureElementProvider()();

  return v3;
}

- (void)handleLockScreenStatusChanged
{
  selfCopy = self;
  CNKBannerPresentationManager.handleLockScreenStatusChanged()();
}

- (CNKBannerPresentationManager)initWithDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  CNKBannerPresentationManager.init(delegate:)();
  return result;
}

@end