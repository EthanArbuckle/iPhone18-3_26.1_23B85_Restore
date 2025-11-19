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
- (CNKBannerPresentationManager)initWithDelegate:(id)a3;
- (CNKGameControllerManager)gameControllerManager;
- (CNKLocalAudioTogglingDelegate)localAudioTogglingDelegate;
- (TUCall)activeCall;
- (TUCall)handedOffCall;
- (id)makeSystemApertureElementProvider;
- (unint64_t)applicationState;
- (void)bannerDismissedBySpringBoard;
- (void)didUpdatePresentationModeToDismissed;
- (void)didUpdatePresentationModeToFullScreen;
- (void)dismissPresentedBannerForReason:(id)a3 animated:(BOOL)a4;
- (void)gameControllerDidRequestActivation;
- (void)gameControllerDidRequestFocus:(BOOL)a3;
- (void)handleLockScreenStatusChanged;
- (void)invalidatePersistentSystemApertureAlertWithReason:(id)a3;
- (void)preloadCallChanges;
- (void)presentHUDForCurrentContext;
- (void)presentReminderNotice;
- (void)presentSystemHUD;
- (void)refreshShareableContentWithBundleIdentifier:(id)a3;
- (void)setApplicationState:(unint64_t)a3;
- (void)setAudioRoutingDelegate:(id)a3;
- (void)setHandedOffCall:(id)a3;
- (void)setLocalAudioTogglingDelegate:(id)a3;
- (void)setPresentationDelegate:(id)a3;
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
  v2 = self;
  CNKBannerPresentationManager.preloadCallChanges()();
}

- (BOOL)onlyHasPlaceholderCall
{
  v2 = self;
  HasPlaceholder = CNKBannerPresentationManager.onlyHasPlaceholderCall.getter();

  return HasPlaceholder & 1;
}

- (BOOL)conversationIsAVLess
{
  v2 = self;
  CNKBannerPresentationManager.conversationIsAVLess.getter();
  v4 = v3;

  return v4 & 1;
}

- (void)gameControllerDidRequestActivation
{
  v1 = a1;
  CNKBannerPresentationManager.gameControllerDidRequestDismissal()();
}

- (CNKBannerPresentationDelegate)presentationDelegate
{
  v2 = self;
  v3 = CNKBannerPresentationManager.presentationDelegate.getter();

  return v3;
}

- (void)setPresentationDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  CNKBannerPresentationManager.presentationDelegate.setter();
}

- (CNKAudioRoutingDelegate)audioRoutingDelegate
{
  v2 = self;
  v3 = CNKBannerPresentationManager.audioRoutingDelegate.getter();

  return v3;
}

- (void)setAudioRoutingDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  CNKBannerPresentationManager.audioRoutingDelegate.setter();
}

- (TUCall)handedOffCall
{
  v2 = self;
  v3 = CNKBannerPresentationManager.handedOffCall.getter();

  return v3;
}

- (void)setHandedOffCall:(id)a3
{
  v4 = a3;
  v5 = self;
  CNKBannerPresentationManager.handedOffCall.setter();
}

- (BOOL)inCallControlsVisible
{
  v2 = self;
  v3 = CNKBannerPresentationManager.inCallControlsVisible.getter();

  return v3 & 1;
}

- (BOOL)isMicIndicatorVisible
{
  v2 = self;
  v3 = CNKBannerPresentationManager.isMicIndicatorVisible.getter();

  return v3 & 1;
}

- (CNKLocalAudioTogglingDelegate)localAudioTogglingDelegate
{
  v2 = self;
  CNKBannerPresentationManager.localAudioTogglingDelegate.getter();
  v4 = v3;

  return v4;
}

- (void)setLocalAudioTogglingDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  CNKBannerPresentationManager.localAudioTogglingDelegate.setter();
}

- (BOOL)shouldShowCallDetailsWhenReady
{
  v2 = self;
  CNKBannerPresentationManager.shouldShowCallDetailsWhenReady.getter();
  v4 = v3;

  return v4 & 1;
}

- (unint64_t)applicationState
{
  v2 = self;
  CNKBannerPresentationManager.applicationState.getter();
  v4 = v3;

  return v4;
}

- (void)setApplicationState:(unint64_t)a3
{
  v3 = self;
  CNKBannerPresentationManager.applicationState.setter();
}

- (BOOL)wantsBannerWithoutScene
{
  v2 = self;
  v3 = CNKBannerPresentationManager.wantsBannerWithoutScene.getter();

  return v3 & 1;
}

- (TUCall)activeCall
{
  v2 = self;
  v3 = CNKBannerPresentationManager.activeCall.getter();

  return v3;
}

- (BOOL)hasAssociatedCall
{
  v2 = self;
  v3 = CNKBannerPresentationManager.hasAssociatedCall.getter();

  return v3;
}

- (CNKGameControllerManager)gameControllerManager
{
  v2 = self;
  v3 = CNKBannerPresentationManager.gameControllerManager.getter();

  return v3;
}

- (void)presentSystemHUD
{
  v2 = self;
  CNKBannerPresentationManager.presentSystemHUD()();
}

- (void)presentHUDForCurrentContext
{
  v2 = self;
  CNKBannerPresentationManager.presentHUDForCurrentContext()();
}

- (void)showInCallHUD
{
  v2 = self;
  CNKBannerPresentationManager.showInCallHUD()();
}

- (void)showGreenTea3PHUD
{
  v2 = self;
  CNKBannerPresentationManager.showGreenTea3PHUD()();
}

- (void)showWaitOnHoldHUD
{
  v2 = self;
  CNKBannerPresentationManager.showWaitOnHoldHUD()();
}

- (void)showPTTHUD
{
  v2 = self;
  CNKBannerPresentationManager.showPTTHUD()();
}

- (void)showRemoteParticipantNoticeIfNeeded
{
  v2 = self;
  CNKBannerPresentationManager.showRemoteParticipantNoticeIfNeeded()();
}

- (void)showAccessoryButtonEventsNoticeIfNeeded
{
  v2 = self;
  CNKBannerPresentationManager.showAccessoryButtonEventsNoticeIfNeeded()();
}

- (void)showHandoffHUD
{
  v2 = self;
  CNKBannerPresentationManager.showHandoffHUD()();
}

- (void)showLagunaPullConversationHUD
{
  v2 = self;
  CNKBannerPresentationManager.showLagunaPullConversationHUD()();
}

- (void)presentReminderNotice
{
  v2 = self;
  CNKBannerPresentationManager.presentReminderNotice()();
}

- (void)bannerDismissedBySpringBoard
{
  v2 = self;
  CNKBannerPresentationManager.bannerDismissedBySpringBoard()();
}

- (void)refreshShareableContentWithBundleIdentifier:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  v8.value._countAndFlagsBits = v4;
  v8.value._object = v6;
  CNKBannerPresentationManager.refreshShareableContentWithBundleIdentifier(_:)(v8);
}

- (void)dismissPresentedBannerForReason:(id)a3 animated:(BOOL)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  CNKBannerPresentationManager.dismissPresentedBanner(forReason:animated:)(v10, a4);
}

- (void)gameControllerDidRequestFocus:(BOOL)a3
{
  v4 = self;
  CNKBannerPresentationManager.gameControllerDidRequestFocus(_:)(a3);
}

- (void)invalidatePersistentSystemApertureAlertWithReason:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  CNKBannerPresentationManager.invalidatePersistentSystemApertureAlert(reason:)(v8);
}

- (void)didUpdatePresentationModeToFullScreen
{
  v2 = self;
  CNKBannerPresentationManager.didUpdatePresentationModeToFullScreen()();
}

- (void)didUpdatePresentationModeToDismissed
{
  v2 = self;
  CNKBannerPresentationManager.didUpdatePresentationModeToDismissed()();
}

- (id)makeSystemApertureElementProvider
{
  v2 = self;
  v3 = CNKBannerPresentationManager.makeSystemApertureElementProvider()();

  return v3;
}

- (void)handleLockScreenStatusChanged
{
  v2 = self;
  CNKBannerPresentationManager.handleLockScreenStatusChanged()();
}

- (CNKBannerPresentationManager)initWithDelegate:(id)a3
{
  swift_unknownObjectRetain();
  CNKBannerPresentationManager.init(delegate:)();
  return result;
}

@end