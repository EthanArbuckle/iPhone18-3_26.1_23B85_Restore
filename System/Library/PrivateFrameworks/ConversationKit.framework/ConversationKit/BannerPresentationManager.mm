@interface BannerPresentationManager
- (BOOL)hasPresentedFullScreenCallUI;
- (BOOL)inCallControlsVisible;
- (BOOL)isAmbient;
- (BOOL)isPresentingFullScreenCallUI;
- (BOOL)isSpringBoardLocked;
- (NSSet)backgroundActivitiesToSuppress;
- (NSString)inCallSceneSessionIdentifier;
- (_TtC15ConversationKit30SystemBannerHostViewController)presentedBanner;
- (void)conversationManager:(id)a3 removedActiveConversation:(id)a4;
- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4 fromOldConversation:(id)a5;
- (void)deepLinkToFullScreenCallDetailsView;
- (void)deepLinkToFullScreenCallUI;
- (void)deepLinkToFullScreenPTTCallDetailsView;
- (void)didDismiss:(id)a3 reason:(int64_t)a4;
- (void)didUpdatePresentationModeToDismissed;
- (void)didUpdatePresentationModeToFullScreen;
- (void)dismissPresentedBannerForReason:(id)a3 animated:(BOOL)a4;
- (void)handleSecondaryPillWantsHUDDismissal:(id)a3;
- (void)invalidatePersistentSystemApertureAlertWithReason:(id)a3;
- (void)setPresentedBanner:(id)a3;
- (void)showDefaultSystemHUD;
@end

@implementation BannerPresentationManager

- (void)dismissPresentedBannerForReason:(id)a3 animated:(BOOL)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  BannerPresentationManager.dismissPresentedBanner(forReason:animated:)(v10, a4);
}

- (_TtC15ConversationKit30SystemBannerHostViewController)presentedBanner
{
  v2 = BannerPresentationManager.presentedBanner.getter();

  return v2;
}

- (void)setPresentedBanner:(id)a3
{
  v5 = a3;
  v6 = self;
  BannerPresentationManager.presentedBanner.setter(a3);
}

- (BOOL)inCallControlsVisible
{
  v2 = self;
  v3 = BannerPresentationManager.inCallControlsVisible.getter();

  return v3 & 1;
}

- (void)invalidatePersistentSystemApertureAlertWithReason:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  BannerPresentationManager.invalidatePersistentSystemApertureAlert(reason:)(v8);
}

- (NSString)inCallSceneSessionIdentifier
{
  v2 = self;
  v3 = BannerPresentationManager.inCallSceneSessionIdentifier.getter();
  v5 = v4;

  if (v5)
  {
    v6 = MEMORY[0x1BFB209B0](v3, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSSet)backgroundActivitiesToSuppress
{
  v2 = self;
  BannerPresentationManager.backgroundActivitiesToSuppress.getter();

  type metadata accessor for STBackgroundActivityIdentifier(0);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type STBackgroundActivityIdentifier and conformance STBackgroundActivityIdentifier, type metadata accessor for STBackgroundActivityIdentifier);
  v3.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (BOOL)hasPresentedFullScreenCallUI
{
  v2 = self;
  v3 = BannerPresentationManager.hasPresentedFullScreenCallUI.getter();

  return v3 & 1;
}

- (BOOL)isPresentingFullScreenCallUI
{
  v2 = self;
  v3 = BannerPresentationManager.isPresentingFullScreenCallUI.getter();

  return v3 & 1;
}

- (BOOL)isAmbient
{
  v2 = self;
  v3 = BannerPresentationManager.isAmbient.getter();

  return v3 & 1;
}

- (BOOL)isSpringBoardLocked
{
  v2 = self;
  v3 = BannerPresentationManager.isSpringBoardLocked.getter();

  return v3 & 1;
}

- (void)deepLinkToFullScreenCallUI
{
  v2 = self;
  BannerPresentationManager.presentFullscreenUI()();
}

- (void)deepLinkToFullScreenCallDetailsView
{
  v2 = self;
  BannerPresentationManager.deepLinkToFullScreenCallDetailsView()();
}

- (void)deepLinkToFullScreenPTTCallDetailsView
{
  v2 = self;
  BannerPresentationManager.deepLinkToFullScreenPTTCallDetailsView()();
}

- (void)showDefaultSystemHUD
{
  v2 = self;
  BannerPresentationManager.showDefaultSystemHUD()();
}

- (void)didDismiss:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  BannerPresentationManager.didDismiss(_:reason:)(v6, a4);
}

- (void)handleSecondaryPillWantsHUDDismissal:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  BannerPresentationManager.handleSecondaryPillWantsHUDDismissal(_:)();

  (*(v5 + 8))(v7, v4);
}

- (void)didUpdatePresentationModeToDismissed
{
  v2 = self;
  BannerPresentationManager.didUpdatePresentationModeToDismissed()();
}

- (void)didUpdatePresentationModeToFullScreen
{
  v2 = self;
  BannerPresentationManager.didUpdatePresentationModeToFullScreen()();
}

- (void)conversationManager:(id)a3 removedActiveConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  BannerPresentationManager.conversationManager(_:removedActiveConversation:)();
}

- (void)conversationManager:(id)a3 stateChangedForConversation:(id)a4 fromOldConversation:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  BannerPresentationManager.conversationManager(_:stateChangedFor:fromOldConversation:)();
}

@end