@interface BannerPresentationManager
- (BOOL)hasPresentedFullScreenCallUI;
- (BOOL)inCallControlsVisible;
- (BOOL)isAmbient;
- (BOOL)isPresentingFullScreenCallUI;
- (BOOL)isSpringBoardLocked;
- (NSSet)backgroundActivitiesToSuppress;
- (NSString)inCallSceneSessionIdentifier;
- (_TtC15ConversationKit30SystemBannerHostViewController)presentedBanner;
- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation;
- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation fromOldConversation:(id)oldConversation;
- (void)deepLinkToFullScreenCallDetailsView;
- (void)deepLinkToFullScreenCallUI;
- (void)deepLinkToFullScreenPTTCallDetailsView;
- (void)didDismiss:(id)dismiss reason:(int64_t)reason;
- (void)didUpdatePresentationModeToDismissed;
- (void)didUpdatePresentationModeToFullScreen;
- (void)dismissPresentedBannerForReason:(id)reason animated:(BOOL)animated;
- (void)handleSecondaryPillWantsHUDDismissal:(id)dismissal;
- (void)invalidatePersistentSystemApertureAlertWithReason:(id)reason;
- (void)setPresentedBanner:(id)banner;
- (void)showDefaultSystemHUD;
@end

@implementation BannerPresentationManager

- (void)dismissPresentedBannerForReason:(id)reason animated:(BOOL)animated
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  selfCopy = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  BannerPresentationManager.dismissPresentedBanner(forReason:animated:)(v10, animated);
}

- (_TtC15ConversationKit30SystemBannerHostViewController)presentedBanner
{
  v2 = BannerPresentationManager.presentedBanner.getter();

  return v2;
}

- (void)setPresentedBanner:(id)banner
{
  bannerCopy = banner;
  selfCopy = self;
  BannerPresentationManager.presentedBanner.setter(banner);
}

- (BOOL)inCallControlsVisible
{
  selfCopy = self;
  v3 = BannerPresentationManager.inCallControlsVisible.getter();

  return v3 & 1;
}

- (void)invalidatePersistentSystemApertureAlertWithReason:(id)reason
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  BannerPresentationManager.invalidatePersistentSystemApertureAlert(reason:)(v8);
}

- (NSString)inCallSceneSessionIdentifier
{
  selfCopy = self;
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
  selfCopy = self;
  BannerPresentationManager.backgroundActivitiesToSuppress.getter();

  type metadata accessor for STBackgroundActivityIdentifier(0);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_6(&lazy protocol witness table cache variable for type STBackgroundActivityIdentifier and conformance STBackgroundActivityIdentifier, type metadata accessor for STBackgroundActivityIdentifier);
  v3.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (BOOL)hasPresentedFullScreenCallUI
{
  selfCopy = self;
  v3 = BannerPresentationManager.hasPresentedFullScreenCallUI.getter();

  return v3 & 1;
}

- (BOOL)isPresentingFullScreenCallUI
{
  selfCopy = self;
  v3 = BannerPresentationManager.isPresentingFullScreenCallUI.getter();

  return v3 & 1;
}

- (BOOL)isAmbient
{
  selfCopy = self;
  v3 = BannerPresentationManager.isAmbient.getter();

  return v3 & 1;
}

- (BOOL)isSpringBoardLocked
{
  selfCopy = self;
  v3 = BannerPresentationManager.isSpringBoardLocked.getter();

  return v3 & 1;
}

- (void)deepLinkToFullScreenCallUI
{
  selfCopy = self;
  BannerPresentationManager.presentFullscreenUI()();
}

- (void)deepLinkToFullScreenCallDetailsView
{
  selfCopy = self;
  BannerPresentationManager.deepLinkToFullScreenCallDetailsView()();
}

- (void)deepLinkToFullScreenPTTCallDetailsView
{
  selfCopy = self;
  BannerPresentationManager.deepLinkToFullScreenPTTCallDetailsView()();
}

- (void)showDefaultSystemHUD
{
  selfCopy = self;
  BannerPresentationManager.showDefaultSystemHUD()();
}

- (void)didDismiss:(id)dismiss reason:(int64_t)reason
{
  dismissCopy = dismiss;
  selfCopy = self;
  BannerPresentationManager.didDismiss(_:reason:)(dismissCopy, reason);
}

- (void)handleSecondaryPillWantsHUDDismissal:(id)dismissal
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  BannerPresentationManager.handleSecondaryPillWantsHUDDismissal(_:)();

  (*(v5 + 8))(v7, v4);
}

- (void)didUpdatePresentationModeToDismissed
{
  selfCopy = self;
  BannerPresentationManager.didUpdatePresentationModeToDismissed()();
}

- (void)didUpdatePresentationModeToFullScreen
{
  selfCopy = self;
  BannerPresentationManager.didUpdatePresentationModeToFullScreen()();
}

- (void)conversationManager:(id)manager removedActiveConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  BannerPresentationManager.conversationManager(_:removedActiveConversation:)();
}

- (void)conversationManager:(id)manager stateChangedForConversation:(id)conversation fromOldConversation:(id)oldConversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  oldConversationCopy = oldConversation;
  selfCopy = self;
  BannerPresentationManager.conversationManager(_:stateChangedFor:fromOldConversation:)();
}

@end