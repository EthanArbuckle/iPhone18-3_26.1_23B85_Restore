@interface DebugSettingsJSExport
- (BOOL)allLeaderboardsSupportChallenges;
- (BOOL)allowSendingChallengeInvitesViaMessages;
- (BOOL)alwaysSendCAIDFriendRequests;
- (BOOL)alwaysShowAddFriendButtonOnProfile;
- (BOOL)disableArcade;
- (BOOL)disablePlayNowFeedHydration;
- (BOOL)displayEmptyShelvesInPlayNowFeed;
- (BOOL)displayErrorsInPlayNowFeed;
- (BOOL)enableDynamicType;
- (BOOL)enableHighlightsFromProductPageResponse;
- (BOOL)force3DChicletFallBack;
- (BOOL)forceEnablePrerenderedIconArtwork;
- (BOOL)forcePrerenderedIcons;
- (BOOL)forcePresentCrossUseConsentOnboarding;
- (BOOL)forcePresentProfileCreationOnboarding;
- (BOOL)forcePresentWelcomeOnboarding;
- (BOOL)hideOfferButtonsInLibraryPage;
- (BOOL)isGameDetailPageActivityFeedActive;
- (BOOL)isMockPlayNowFeed;
- (BOOL)isPlayTogetherEnhancementsActive;
- (BOOL)isPlayTogetherFeedActive;
- (BOOL)isPlayerPageActivityFeedActive;
- (BOOL)prioritizeContactNames;
- (BOOL)shouldContinuePlayingLaunchGameIfInstalled;
- (BOOL)shouldShowBadgesInChallengeHub;
- (BOOL)shouldShowChallengeDebugDurationOptions;
- (BOOL)shouldShowGameDetailPageBackground;
- (BOOL)shouldShowInviteToPlayOption;
- (BOOL)shouldShowMiniGamesInvocationSheet;
- (BOOL)shouldShowMiniGamesShelfInPlayNowFeed;
- (BOOL)shouldShowMockActivityCards;
- (BOOL)shouldShowMockHomeCategoryBricks;
- (BOOL)show3DChicletsForFriendsArePlaying;
- (BOOL)show3DChicletsForGameHero;
- (BOOL)show3DChicletsForHomeHero;
- (BOOL)show3DChicletsForRoomHeaders;
- (BOOL)show3DChicletsForSmallBricks;
- (BOOL)showArcadeTab;
- (BOOL)showImpressionIndexOverlay;
- (BOOL)showMiniGamesInLibraryPage;
- (BOOL)showRecordings;
- (_TtC12GameStoreKit21DebugSettingsJSExport)init;
@end

@implementation DebugSettingsJSExport

- (_TtC12GameStoreKit21DebugSettingsJSExport)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DebugSettingsJSExport();
  return [(DebugSettingsJSExport *)&v3 init];
}

- (BOOL)isPlayerPageActivityFeedActive
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)isPlayTogetherFeedActive
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)isPlayTogetherEnhancementsActive
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)isGameDetailPageActivityFeedActive
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)shouldShowGameDetailPageBackground
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)force3DChicletFallBack
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)show3DChicletsForFriendsArePlaying
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)show3DChicletsForHomeHero
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)show3DChicletsForGameHero
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)show3DChicletsForRoomHeaders
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)show3DChicletsForSmallBricks
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)shouldContinuePlayingLaunchGameIfInstalled
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)isMockPlayNowFeed
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)shouldShowMiniGamesShelfInPlayNowFeed
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)shouldShowMiniGamesInvocationSheet
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)allLeaderboardsSupportChallenges
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)shouldShowChallengeDebugDurationOptions
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)shouldShowBadgesInChallengeHub
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)allowSendingChallengeInvitesViaMessages
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)alwaysShowAddFriendButtonOnProfile
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)forcePresentWelcomeOnboarding
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)forcePresentCrossUseConsentOnboarding
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)forcePresentProfileCreationOnboarding
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)forceEnablePrerenderedIconArtwork
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)forcePrerenderedIcons
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)showMiniGamesInLibraryPage
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)hideOfferButtonsInLibraryPage
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)alwaysSendCAIDFriendRequests
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)displayEmptyShelvesInPlayNowFeed
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)disablePlayNowFeedHydration
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)displayErrorsInPlayNowFeed
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)showImpressionIndexOverlay
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)showRecordings
{
  v5 = &_s14descr2861AC041O5GamesON;
  v6 = sub_24EDA569C();
  v4[0] = 3;
  v2 = sub_24F91FE68();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

- (BOOL)showArcadeTab
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)prioritizeContactNames
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)shouldShowMockActivityCards
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)shouldShowInviteToPlayOption
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)shouldShowMockHomeCategoryBricks
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)enableHighlightsFromProductPageResponse
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)disableArcade
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

- (BOOL)enableDynamicType
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  bOOLForKey_ = [standardUserDefaults BOOLForKey_];

  return bOOLForKey_;
}

@end