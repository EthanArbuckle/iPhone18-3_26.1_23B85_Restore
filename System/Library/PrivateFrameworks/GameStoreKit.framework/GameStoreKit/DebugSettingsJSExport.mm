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
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)isPlayTogetherFeedActive
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)isPlayTogetherEnhancementsActive
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)isGameDetailPageActivityFeedActive
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)shouldShowGameDetailPageBackground
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)force3DChicletFallBack
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)show3DChicletsForFriendsArePlaying
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)show3DChicletsForHomeHero
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)show3DChicletsForGameHero
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)show3DChicletsForRoomHeaders
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)show3DChicletsForSmallBricks
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)shouldContinuePlayingLaunchGameIfInstalled
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)isMockPlayNowFeed
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)shouldShowMiniGamesShelfInPlayNowFeed
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)shouldShowMiniGamesInvocationSheet
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)allLeaderboardsSupportChallenges
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)shouldShowChallengeDebugDurationOptions
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)shouldShowBadgesInChallengeHub
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)allowSendingChallengeInvitesViaMessages
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)alwaysShowAddFriendButtonOnProfile
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)forcePresentWelcomeOnboarding
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)forcePresentCrossUseConsentOnboarding
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)forcePresentProfileCreationOnboarding
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)forceEnablePrerenderedIconArtwork
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)forcePrerenderedIcons
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)showMiniGamesInLibraryPage
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)hideOfferButtonsInLibraryPage
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)alwaysSendCAIDFriendRequests
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)displayEmptyShelvesInPlayNowFeed
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)disablePlayNowFeedHydration
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)displayErrorsInPlayNowFeed
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)showImpressionIndexOverlay
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
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
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)prioritizeContactNames
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)shouldShowMockActivityCards
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)shouldShowInviteToPlayOption
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)shouldShowMockHomeCategoryBricks
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)enableHighlightsFromProductPageResponse
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)disableArcade
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

- (BOOL)enableDynamicType
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 BOOLForKey_];

  return v4;
}

@end