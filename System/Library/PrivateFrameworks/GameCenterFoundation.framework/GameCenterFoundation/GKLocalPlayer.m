@interface GKLocalPlayer
+ (GKLocalPlayer)local;
+ (id)_localPlayersFromInternals:(id)a3 authenticated:(BOOL)a4;
+ (id)_userInfoForAuthAPINotificationForLoggedInPlayerInternals:(id)a3 loggedOutPlayerInternals:(id)a4 oldPrimary:(id)a5 newPrimary:(id)a6;
+ (id)accountServicePrivate;
+ (id)authenticatedLocalPlayersFiltered:(int64_t)a3;
+ (id)authenticatedLocalPlayersWithStatus:(unint64_t)a3;
+ (id)localPlayerAccessQueue;
+ (id)localPlayerForCredential:(id)a3;
+ (id)localPlayers;
+ (void)authenticateWithUsername:(id)a3 password:(id)a4 completionHandler:(id)a5;
+ (void)authenticatedLocalPlayersDidChange:(id)a3 complete:(id)a4;
+ (void)loadHighlightsDataWithCompletionHandler:(id)a3;
+ (void)localPlayers;
+ (void)performAsync:(id)a3;
+ (void)performSync:(id)a3;
- (BOOL)isDefaultContactsIntegrationConsent;
- (BOOL)isDefaultNickname;
- (BOOL)isDefaultPrivacyVisibility;
- (BOOL)isMultiplayerGamingRestricted;
- (BOOL)isPersonalizedCommunicationRestricted;
- (BOOL)isShowingInGameUI;
- (BOOL)isWelcomeBannerTooLate;
- (BOOL)shouldDisplayWelcomeBannerForPlayer:(id)a3 lastAuthDate:(id)a4 remoteUI:(BOOL)a5 timeBetweenBanners:(double)a6;
- (BOOL)shouldPreserveOnboardingUI;
- (GKLocalPlayer)initWithCoder:(id)a3;
- (GKPlayerInternalOnboarding)onboarding;
- (NSArray)friends;
- (id)_gkFriendListUsageDescription;
- (id)displayNameWithOptions:(unsigned __int8)a3;
- (id)friendService;
- (id)friendServicePrivate;
- (id)internalPlayerID;
- (void)_loadFriendPlayersWithCompletionHandler:(id)a3;
- (void)_loadFriendsListGlobalAccessOptInFlow:(id)a3;
- (void)_loadFriendsListPerGameAuthorizedFlow:(id)a3;
- (void)_loadFriendsListPerGameNotDeterminedFlow:(id)a3;
- (void)_startAuthenticationForExistingPrimaryPlayer;
- (void)_updatePerGameSettings:(int64_t)a3 withCompletionHandler:(id)a4;
- (void)acceptFriendRequestWithIdentifier:(id)a3 sendPush:(BOOL)a4 handler:(id)a5;
- (void)authenticateHandler;
- (void)callAuthHandlerWithError:(id)a3;
- (void)cancelFriendRequestWithIdentifier:(id)a3 handler:(id)a4;
- (void)cancelGameInvite:(id)a3;
- (void)cancelInviteWithNotification:(id)a3;
- (void)createFriendRequestWithIdentifier:(id)a3 handler:(id)a4;
- (void)dealloc;
- (void)deleteSavedGamesWithName:(NSString *)name completionHandler:(void *)handler;
- (void)encodeWithCoder:(id)a3;
- (void)fetchItemsForIdentityVerificationSignature:(void *)completionHandler;
- (void)fetchSavedGamesWithCompletionHandler:(void *)handler;
- (void)fetchTurnBasedEvent;
- (void)friends;
- (void)generateIdentityVerificationSignatureWithCompletionHandler:(void *)completionHandler;
- (void)getPlayerIDFromFriendCode:(id)a3 handler:(id)a4;
- (void)handleChallengableFriendsResults:(id)a3 error:(id)a4 completion:(id)a5;
- (void)inviteeAcceptedGameInviteWithNotification:(id)a3;
- (void)inviteeDeclinedGameInviteWithNotification:(id)a3;
- (void)inviteeUpdateGameInviteWithNotification:(id)a3;
- (void)loadChallengableFriendsWithCompletionHandler:(void *)completionHandler;
- (void)loadChallengableFriendsWithFetchOptions:(unint64_t)a3 completion:(id)a4;
- (void)loadDefaultLeaderboardIdentifierWithCompletionHandler:(void *)completionHandler;
- (void)loadFriends:(void *)completionHandler;
- (void)loadFriendsAuthorizationStatus:(void *)completionHandler;
- (void)loadFriendsWithCompletionHandler:(void *)completionHandler;
- (void)loadFriendsWithIdentifiers:(NSArray *)identifiers completionHandler:(void *)completionHandler;
- (void)loadRecentPlayersWithCompletionHandler:(void *)completionHandler;
- (void)promotePlayerInternalToLocalPlayerInternal:(id)a3;
- (void)refreshInternalWithCompletion:(id)a3;
- (void)registerListener:(id)listener;
- (void)rejectFriendRequestWithIdentifier:(id)a3 handler:(id)a4;
- (void)removeAllFriendsWithBlock:(id)a3;
- (void)removeFriend:(id)a3 block:(id)a4;
- (void)reportAuthenticatingWithAuthKitInvocation;
- (void)reportAuthenticatingWithGreenBuddyInvocation;
- (void)reportAuthenticationErrorNoInternetConnection;
- (void)reportAuthenticationLoginCanceled;
- (void)reportAuthenticationPlayerAuthenticated;
- (void)reportAuthenticationStartForPlayer;
- (void)resetTCCAuthorization;
- (void)resolveConflictingSavedGames:(NSArray *)conflictingSavedGames withData:(NSData *)data completionHandler:(void *)handler;
- (void)saveGameData:(NSData *)data withName:(NSString *)name completionHandler:(void *)handler;
- (void)setAuthenticateHandler:(void *)authenticateHandler;
- (void)setDefaultLeaderboardIdentifier:(NSString *)leaderboardIdentifier completionHandler:(void *)completionHandler;
- (void)setFriendListAuthorizationStatus:(int64_t)a3 forBundleID:(id)a4 handler:(id)a5;
- (void)setLastContactsIntegrationConsentVersion:(id)a3;
- (void)setLastFriendSuggestionsVersion:(id)a3;
- (void)setLastPersonalizationVersion:(id)a3;
- (void)setLastPrivacyNoticeVersion:(unint64_t)a3;
- (void)setLastProfilePrivacyVersion:(id)a3;
- (void)setLastWelcomeWhatsNewCopyVersion:(unint64_t)a3;
- (void)setOnboarding:(id)a3;
- (void)setStatus:(id)a3 withCompletionHandler:(id)a4;
- (void)unregisterAllListeners;
- (void)unregisterListener:(id)listener;
- (void)updateFromLocalPlayer:(id)a3;
- (void)updateLoginStatus:(unint64_t)a3 completionHandler:(id)a4;
@end

@implementation GKLocalPlayer

uint64_t __22__GKLocalPlayer_local__block_invoke(uint64_t a1)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = local_sLocalPlayer;
  local_sLocalPlayer = v1;

  if (objc_opt_respondsToSelector())
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    v4 = local_sLocalPlayer;
    v5 = +[GKApplicationNotificationNames willEnterForeground];
    [v3 addObserver:v4 selector:sel_applicationWillEnterForeground_ name:v5 object:0];
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = local_sLocalPlayer;
    v8 = +[GKApplicationNotificationNames didEnterBackground];
    [v6 addObserver:v7 selector:sel_applicationDidEnterBackground_ name:v8 object:0];
  }

  v15[0] = &unk_283B6AF30;
  v15[1] = &unk_283B63218;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  v10 = [GKEventEmitter eventEmitterForProtocols:v9];
  [local_sLocalPlayer setEventEmitter:v10];

  if (([MEMORY[0x277CCA8D8] _gkMainBundleIsGameCenterSystemProcess] & 1) == 0)
  {
    v11 = dispatch_time(0, 1000000000);
    v12 = dispatch_get_global_queue(0, 0);
    dispatch_after(v11, v12, &__block_literal_global_101);
  }

  getpid();
  result = proc_disable_wakemon();
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

+ (GKLocalPlayer)local
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __22__GKLocalPlayer_local__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (local_sDispatchOnceToken != -1)
  {
    dispatch_once(&local_sDispatchOnceToken, block);
  }

  v2 = local_sLocalPlayer;

  return v2;
}

- (void)authenticateHandler
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  v3 = _Block_copy(sAuthenticateHandler);
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isDefaultPrivacyVisibility
{
  v2 = [(GKPlayer *)self internal];
  v3 = [v2 isDefaultPrivacyVisibility];

  return v3;
}

- (BOOL)isDefaultNickname
{
  v2 = [(GKPlayer *)self internal];
  v3 = [v2 isDefaultNickname];

  return v3;
}

- (BOOL)isDefaultContactsIntegrationConsent
{
  v2 = [(GKPlayer *)self internal];
  v3 = [v2 isDefaultContactsIntegrationConsent];

  return v3;
}

- (GKPlayerInternalOnboarding)onboarding
{
  v2 = [(GKPlayer *)self internal];
  v3 = [v2 onboarding];

  return v3;
}

- (void)setOnboarding:(id)a3
{
  v4 = a3;
  v5 = [(GKPlayer *)self internal];
  [v5 setOnboarding:v4];
}

- (id)internalPlayerID
{
  v2 = [(GKPlayer *)self internal];
  v3 = [v2 playerID];

  return v3;
}

+ (id)localPlayerAccessQueue
{
  if (localPlayerAccessQueue_onceToken != -1)
  {
    +[GKLocalPlayer localPlayerAccessQueue];
  }

  v3 = localPlayerAccessQueue_sLocalPlayerAccessQueue;

  return v3;
}

void __39__GKLocalPlayer_localPlayerAccessQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.gamecenter.localplayer", v2);
  v1 = localPlayerAccessQueue_sLocalPlayerAccessQueue;
  localPlayerAccessQueue_sLocalPlayerAccessQueue = v0;
}

+ (void)performSync:(id)a3
{
  v4 = a3;
  v5 = [a1 localPlayerAccessQueue];
  dispatch_sync(v5, v4);
}

+ (void)performAsync:(id)a3
{
  v4 = a3;
  v5 = [a1 localPlayerAccessQueue];
  dispatch_async(v5, v4);
}

+ (id)localPlayers
{
  v3 = [a1 local];
  v4 = [v3 isAuthenticated];

  if (v4)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__5;
    v15 = __Block_byref_object_dispose__5;
    v16 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __29__GKLocalPlayer_localPlayers__block_invoke;
    v10[3] = &unk_2785DE990;
    v10[4] = &v11;
    v10[5] = a1;
    [a1 performSync:v10];
    v5 = [a1 local];
    v6 = [v12[5] indexOfObject:v5];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (!os_log_GKGeneral)
      {
        v7 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        +[GKLocalPlayer localPlayers];
      }
    }

    else
    {
      [v12[5] removeObjectAtIndex:v6];
    }

    [v12[5] insertObject:v5 atIndex:0];
    v8 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

void __29__GKLocalPlayer_localPlayers__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 40) _localPlayersFromInternals:sLocalPlayers authenticated:1];
  v2 = [v5 mutableCopy];
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = GKLocalPlayer;
  [(GKPlayer *)&v4 dealloc];
}

- (BOOL)isShowingInGameUI
{
  v3 = +[GKLocalPlayer local];
  v4 = v3;
  if (v3 == self)
  {
    showingInGameUI = self->_showingInGameUI;
  }

  else
  {
    showingInGameUI = [(GKLocalPlayer *)v3 isShowingInGameUI];
  }

  return showingInGameUI;
}

- (void)setStatus:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKLocalPlayer *)self status];
  v17.receiver = self;
  v17.super_class = GKLocalPlayer;
  [(GKLocalPlayer *)&v17 setStatus:v7];
  v9 = +[GKDaemonProxy proxyForLocalPlayer];
  v10 = [v9 profileServicePrivate];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__GKLocalPlayer_setStatus_withCompletionHandler___block_invoke;
  v13[3] = &unk_2785DDC60;
  v14 = v8;
  v15 = self;
  v16 = v6;
  v11 = v6;
  v12 = v8;
  [v10 setStatus:v7 handler:v13];
}

void __49__GKLocalPlayer_setStatus_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 32);
    v7.receiver = *(a1 + 40);
    v7.super_class = GKLocalPlayer;
    objc_msgSendSuper2(&v7, sel_setStatus_, v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__GKLocalPlayer_setStatus_withCompletionHandler___block_invoke_2;
  block[3] = &unk_2785DD760;
  block[4] = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (BOOL)shouldPreserveOnboardingUI
{
  v3 = +[GKLocalPlayer local];
  v4 = v3;
  if (v3 == self)
  {
    shouldPreserveOnboardingUI = self->_shouldPreserveOnboardingUI;
  }

  else
  {
    shouldPreserveOnboardingUI = [(GKLocalPlayer *)v3 shouldPreserveOnboardingUI];
  }

  return shouldPreserveOnboardingUI;
}

- (id)displayNameWithOptions:(unsigned __int8)a3
{
  v5.receiver = self;
  v5.super_class = GKLocalPlayer;
  v3 = [(GKPlayer *)&v5 displayNameWithOptions:a3 | 1u];

  return v3;
}

- (BOOL)isMultiplayerGamingRestricted
{
  v2 = +[GKPreferences shared];
  v3 = [v2 isMultiplayerGamingRestricted];

  return v3;
}

- (BOOL)isPersonalizedCommunicationRestricted
{
  v2 = +[GKPreferences shared];
  v3 = [v2 shouldAllowCustomCommunication];

  return v3 ^ 1;
}

- (void)promotePlayerInternalToLocalPlayerInternal:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = GKStackTraceWithFrameLimit(12);
    v34 = 138412290;
    v35 = v8;
    _os_log_impl(&dword_227904000, v7, OS_LOG_TYPE_INFO, "A GKLocalPlayer contains a GKPlayerInternal object. This is wrong and should be a GKLocalPlayerInternal object. Promoting to correct the issue. Stack trace:%@", &v34, 0xCu);
  }

  v9 = objc_alloc_init(GKLocalPlayerInternal);
  v10 = [v4 internal];
  v11 = [v10 playerID];
  [(GKPlayerInternal *)v9 setPlayerID:v11];

  v12 = [v4 internal];
  v13 = [v12 scopedIDs];
  [(GKPlayerInternal *)v9 setScopedIDs:v13];

  v14 = [v4 internal];
  v15 = [v14 accountName];
  [(GKLocalPlayerInternal *)v9 setAccountName:v15];

  v16 = [v4 internal];
  -[GKLocalPlayerInternal setDefaultNickname:](v9, "setDefaultNickname:", [v16 isDefaultNickname]);

  v17 = [v4 internal];
  -[GKLocalPlayerInternal setDefaultPrivacyVisibility:](v9, "setDefaultPrivacyVisibility:", [v17 isDefaultPrivacyVisibility]);

  v18 = [v4 internal];
  -[GKLocalPlayerInternal setDefaultContactsIntegrationConsent:](v9, "setDefaultContactsIntegrationConsent:", [v18 isDefaultContactsIntegrationConsent]);

  v19 = [v4 internal];
  v20 = [v19 alias];
  [(GKPlayerInternal *)v9 setAlias:v20];

  v21 = [v4 internal];
  v22 = [v21 firstName];
  [(GKFamiliarPlayerInternal *)v9 setFirstName:v22];

  v23 = [v4 internal];
  v24 = [v23 lastName];
  [(GKFamiliarPlayerInternal *)v9 setLastName:v24];

  v25 = [v4 internal];
  -[GKLocalPlayerInternal setUnderage:](v9, "setUnderage:", [v25 isUnderage]);

  v26 = [v4 internal];
  -[GKPlayerInternal setNumberOfAchievementPoints:](v9, "setNumberOfAchievementPoints:", [v26 numberOfAchievementPoints]);

  v27 = [v4 internal];
  -[GKPlayerInternal setNumberOfAchievements:](v9, "setNumberOfAchievements:", [v27 numberOfAchievements]);

  v28 = [v4 internal];
  -[GKPlayerInternal setNumberOfFriends:](v9, "setNumberOfFriends:", [v28 numberOfFriends]);

  v29 = [v4 internal];
  -[GKPlayerInternal setNumberOfGames:](v9, "setNumberOfGames:", [v29 numberOfGames]);

  v30 = [v4 internal];
  -[GKLocalPlayerInternal setNumberOfTurns:](v9, "setNumberOfTurns:", [v30 numberOfTurns]);

  v31 = [v4 internal];
  v32 = [v31 compositeName];
  [(GKFamiliarPlayerInternal *)v9 setCompositeName:v32];

  [(GKPlayer *)self setInternal:v9];
  v33 = *MEMORY[0x277D85DE8];
}

- (void)updateFromLocalPlayer:(id)a3
{
  v4 = a3;
  v5 = [v4 internal];
  v6 = [v5 isLocalPlayer];

  if (v6)
  {
    v7 = [v4 internal];
    [(GKPlayer *)self setInternal:v7];
  }

  else
  {
    [(GKLocalPlayer *)self promotePlayerInternalToLocalPlayerInternal:v4];
  }

  v8 = [v4 isAuthenticated];

  self->_authenticated = v8;
}

- (NSArray)friends
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (GKApplicationLinkedOnOrAfter(917504, 659456))
  {
    if (!os_log_GKGeneral)
    {
      v3 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
    {
      [GKLocalPlayer friends];
    }

    v8[0] = @"playerID is no longer available";
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = GKLocalPlayer;
    v4 = [(GKPlayer *)&v7 friends];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_loadFriendPlayersWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[GKDaemonProxy proxyForLocalPlayer];
  v6 = [v5 friendService];
  v7 = [(GKPlayer *)self internal];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__GKLocalPlayer__loadFriendPlayersWithCompletionHandler___block_invoke;
  v9[3] = &unk_2785DDCB0;
  v10 = v4;
  v8 = v4;
  [v6 getFriendsForPlayer:v7 handler:v9];
}

void __57__GKLocalPlayer__loadFriendPlayersWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = [a2 _gkMapWithBlock:&__block_literal_global_125];
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v5, v7);
  }
}

GKPlayer *__57__GKLocalPlayer__loadFriendPlayersWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[GKPlayer alloc] initWithInternalRepresentation:v2];

  return v3;
}

- (void)loadChallengableFriendsWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  objc_initWeak(&location, self);
  v5 = [(GKLocalPlayer *)self friendService];
  v6 = [(GKPlayer *)self internal];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__GKLocalPlayer_loadChallengableFriendsWithCompletionHandler___block_invoke;
  v8[3] = &unk_2785DE9D8;
  objc_copyWeak(&v10, &location);
  v7 = v4;
  v9 = v7;
  [v5 getChallengableFriendsForPlayer:v6 handler:v8];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __62__GKLocalPlayer_loadChallengableFriendsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleChallengableFriendsResults:v6 error:v5 completion:*(a1 + 32)];
}

- (void)loadChallengableFriendsWithFetchOptions:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  objc_initWeak(&location, self);
  v7 = [(GKLocalPlayer *)self friendServicePrivate];
  v8 = [(GKPlayer *)self internal];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__GKLocalPlayer_loadChallengableFriendsWithFetchOptions_completion___block_invoke;
  v10[3] = &unk_2785DE9D8;
  objc_copyWeak(&v12, &location);
  v9 = v6;
  v11 = v9;
  [v7 getChallengableFriendsForPlayer:v8 fetchOptions:a3 completion:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __68__GKLocalPlayer_loadChallengableFriendsWithFetchOptions_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleChallengableFriendsResults:v6 error:v5 completion:*(a1 + 32)];
}

- (void)handleChallengableFriendsResults:(id)a3 error:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (v7)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__GKLocalPlayer_handleChallengableFriendsResults_error_completion___block_invoke;
    block[3] = &unk_2785DDC10;
    v20 = v8;
    v19 = v7;
    dispatch_async(MEMORY[0x277D85CD0], block);

    v10 = v20;
  }

  else
  {
    v11 = [a3 _gkMapWithBlock:&__block_literal_global_129];
    v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"friendBiDirectional == %@", &unk_283B33220];
    v13 = [v11 filteredArrayUsingPredicate:v12];
    v14 = [v13 sortedArrayUsingComparator:&__block_literal_global_138];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __67__GKLocalPlayer_handleChallengableFriendsResults_error_completion___block_invoke_2_139;
    v15[3] = &unk_2785DDC10;
    v16 = v14;
    v17 = v9;
    v10 = v14;
    dispatch_async(MEMORY[0x277D85CD0], v15);
  }
}

GKPlayer *__67__GKLocalPlayer_handleChallengableFriendsResults_error_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[GKPlayer alloc] initWithInternalRepresentation:v2];

  return v3;
}

uint64_t __67__GKLocalPlayer_handleChallengableFriendsResults_error_completion___block_invoke_135(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 sortName];
  v6 = [v4 sortName];

  v7 = [v5 caseInsensitiveCompare:v6];
  return v7;
}

uint64_t __67__GKLocalPlayer_handleChallengableFriendsResults_error_completion___block_invoke_2_139(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = *(a1 + 32);
  }

  else
  {
    v1 = MEMORY[0x277CBEBF8];
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40), v1, 0);
}

- (void)loadRecentPlayersWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLocalPlayer.m", 466, "-[GKLocalPlayer loadRecentPlayersWithCompletionHandler:]"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__GKLocalPlayer_loadRecentPlayersWithCompletionHandler___block_invoke;
  v11[3] = &unk_2785DD898;
  v11[4] = self;
  v7 = v6;
  v12 = v7;
  [v7 perform:v11];
  if (v4)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__GKLocalPlayer_loadRecentPlayersWithCompletionHandler___block_invoke_3;
    v8[3] = &unk_2785DE540;
    v9 = v7;
    v10 = v4;
    [v9 notifyOnMainQueueWithBlock:v8];
  }
}

void __56__GKLocalPlayer_loadRecentPlayersWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__GKLocalPlayer_loadRecentPlayersWithCompletionHandler___block_invoke_2;
  v6[3] = &unk_2785DDC38;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 _loadFriendPlayersWithCompletionHandler:v6];
}

uint64_t __56__GKLocalPlayer_loadRecentPlayersWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setObject:a2 forKeyedSubscript:@"friends"];
  [*(a1 + 32) setError:v6];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void __56__GKLocalPlayer_loadRecentPlayersWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2)
  {
    v7 = [v3 error];
    (*(v4 + 16))(v4, 0, v7);
  }

  else
  {
    v5 = [v3 objectForKeyedSubscript:@"friends"];
    v7 = v5;
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = MEMORY[0x277CBEBF8];
    }

    (*(v4 + 16))(v4, v6, 0);
  }
}

- (void)loadFriendsWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  if (!GKApplicationLinkedOnOrAfter(917504, 659456))
  {
    v7 = +[GKDaemonProxy proxyForLocalPlayer];
    v8 = [v7 friendService];
    v9 = [(GKPlayer *)self internal];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __50__GKLocalPlayer_loadFriendsWithCompletionHandler___block_invoke;
    v10[3] = &unk_2785DDC38;
    v10[4] = self;
    v11 = v4;
    [v8 getFriendsForPlayer:v9 handler:v10];

    goto LABEL_8;
  }

  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
  {
    [GKLocalPlayer loadFriendsWithCompletionHandler:];
    if (!v4)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (v4)
  {
LABEL_6:
    v6 = [MEMORY[0x277CCA9B8] userErrorForCode:34 underlyingError:0];
    (*(v4 + 2))(v4, 0, v6);
  }

LABEL_8:
}

void __50__GKLocalPlayer_loadFriendsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = [a2 _gkValuesForKeyPath:@"playerID"];
  [*(a1 + 32) setFriends:v5];
  [*(a1 + 32) postChangeNotification];
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v5, v7);
  }
}

void __52__GKLocalPlayer_signOutAndOptOut_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v14 = v3;
    _os_log_impl(&dword_227904000, v5, OS_LOG_TYPE_INFO, "GKLocalPlayer: signOut error:%@", buf, 0xCu);
  }

  if (*(*(*(a1 + 40) + 8) + 24))
  {
    if (![v3 gkIsNotConnectedToInternetError])
    {
      goto LABEL_12;
    }

    v6 = 0;
    goto LABEL_11;
  }

  if (!v3 || [v3 gkIsNotConnectedToInternetError])
  {
    v7 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277CCA470];
    v12 = @"The player that was asked to be signed out was not the current local player. The current local player has been signed out.";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v6 = [v7 userErrorForCode:8 userInfo:v8];

    v3 = v8;
LABEL_11:

    v3 = v6;
  }

LABEL_12:
  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v3);
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (id)authenticatedLocalPlayersFiltered:(int64_t)a3
{
  if ((a3 & 2) != 0)
  {
    v3 = 5;
  }

  else
  {
    v3 = 1;
  }

  v4 = objc_opt_class();

  return [v4 authenticatedLocalPlayersWithStatus:v3];
}

+ (id)authenticatedLocalPlayersWithStatus:(unint64_t)a3
{
  v4 = +[GKDaemonProxy daemonProxy];
  v5 = [v4 authenticatedLocalPlayersWithStatus:a3];

  return v5;
}

- (void)updateLoginStatus:(unint64_t)a3 completionHandler:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
    v7 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v23 = a3;
    _os_log_impl(&dword_227904000, v7, OS_LOG_TYPE_INFO, "GKLocalPlayer: updateLoginStatus: %lX", buf, 0xCu);
  }

  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
  }

  v10 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_227904000, v10, OS_LOG_TYPE_INFO, "GKLocalPlayer: setLoginStatus:", buf, 2u);
  }

  if ((a3 & 0x1C) == 0)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/API/GKLocalPlayer.m"];
    v14 = [v13 lastPathComponent];
    v15 = [v11 stringWithFormat:@"%@ ((status & GKLocalPlayerLoginStatusSettableMask) != 0)\n[%s (%s:%d)]", v12, "-[GKLocalPlayer updateLoginStatus:completionHandler:]", objc_msgSend(v14, "UTF8String"), 607];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v15}];
  }

  v16 = [(GKLocalPlayer *)self daemonProxy];
  v17 = [v16 accountServicePrivate];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __53__GKLocalPlayer_updateLoginStatus_completionHandler___block_invoke;
  v20[3] = &unk_2785DE008;
  v21 = v6;
  v18 = v6;
  [v17 setLoginStatus:a3 handler:v20];

  v19 = *MEMORY[0x277D85DE8];
}

void __53__GKLocalPlayer_updateLoginStatus_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      __53__GKLocalPlayer_updateLoginStatus_completionHandler___block_invoke_cold_1();
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

+ (id)localPlayerForCredential:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__5;
  v16 = __Block_byref_object_dispose__5;
  v17 = 0;
  v5 = [a1 authenticatedLocalPlayersWithStatus:1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__GKLocalPlayer_localPlayerForCredential___block_invoke;
  v9[3] = &unk_2785DEA48;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __42__GKLocalPlayer_localPlayerForCredential___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [v10 internal];
  v8 = [*(a1 + 32) playerInternal];
  v9 = [v7 isEqual:v8];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

+ (id)_localPlayersFromInternals:(id)a3 authenticated:(BOOL)a4
{
  if (a3)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__GKLocalPlayer__localPlayersFromInternals_authenticated___block_invoke;
    v7[3] = &__block_descriptor_41_e49___GKLocalPlayer_24__0__GKLocalPlayerInternal_8Q16l;
    v7[4] = a1;
    v8 = a4;
    v5 = [a3 _gkMapWithBlock:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __58__GKLocalPlayer__localPlayersFromInternals_authenticated___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = objc_alloc_init(v3);
  [v5 setInternal:v4];

  [v5 setAuthenticated:*(a1 + 40)];

  return v5;
}

+ (id)_userInfoForAuthAPINotificationForLoggedInPlayerInternals:(id)a3 loggedOutPlayerInternals:(id)a4 oldPrimary:(id)a5 newPrimary:(id)a6
{
  v10 = a5;
  v11 = a6;
  v12 = a4;
  v13 = [a1 _localPlayersFromInternals:a3 authenticated:1];
  v14 = [a1 _localPlayersFromInternals:v12 authenticated:0];

  v15 = [MEMORY[0x277CBEB38] dictionary];
  if ([v13 count])
  {
    v16 = [v13 copy];
    [v15 setObject:v16 forKey:@"GKPlayersSignedIn"];
  }

  if ([v14 count])
  {
    v17 = [v14 copy];
    [v15 setObject:v17 forKey:@"GKPlayersSignedOut"];
  }

  if ([MEMORY[0x277CCA8D8] _gkMainBundleIsGameCenterSystemProcess])
  {
    v18 = [v11 playerID];

    if (v18)
    {
      v19 = [v11 playerID];
      v20 = [v19 copy];
      [v15 setObject:v20 forKey:@"GKPlayerDidAuthenticateNewPlayerID"];
    }

    v21 = [v10 playerID];

    if (v21)
    {
      v22 = [v10 playerID];
      v23 = [v22 copy];
      [v15 setObject:v23 forKey:@"GKPlayerDidAuthenticateOldPlayerID"];
    }
  }

  return v15;
}

+ (void)authenticatedLocalPlayersDidChange:(id)a3 complete:(id)a4
{
  v64 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = +[GKLocalPlayer localPlayer];
  v10 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
    v10 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = v10;
    v13 = NSStringFromSelector(a2);
    *buf = 138412546;
    *&buf[4] = v13;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    _os_log_impl(&dword_227904000, v12, OS_LOG_TYPE_INFO, "%@ %@", buf, 0x16u);
  }

  v14 = [v9 appIsInBackground];
  v15 = os_log_GKGeneral;
  if (v14)
  {
    if (!os_log_GKGeneral)
    {
      v16 = GKOSLoggers();
      v15 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v17 = v15;
      v18 = NSStringFromSelector(a2);
      *buf = 138412290;
      *&buf[4] = v18;
      _os_log_impl(&dword_227904000, v17, OS_LOG_TYPE_INFO, "%@: skipping, in background", buf, 0xCu);
    }

    if (v8)
    {
      v8[2](v8);
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v19 = GKOSLoggers();
      v15 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v20 = v15;
      v21 = NSStringFromSelector(a2);
      *buf = 138412290;
      *&buf[4] = v21;
      _os_log_impl(&dword_227904000, v20, OS_LOG_TYPE_INFO, "%@: appear not to be in the background!", buf, 0xCu);
    }

    v22 = [MEMORY[0x277CBEB98] setWithArray:v7];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v61 = __Block_byref_object_copy__5;
    v62 = __Block_byref_object_dispose__5;
    v63 = 0;
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __61__GKLocalPlayer_authenticatedLocalPlayersDidChange_complete___block_invoke;
    v57[3] = &unk_2785DEA90;
    v59 = buf;
    v23 = v7;
    v58 = v23;
    [a1 performSync:v57];
    v24 = [a1 local];
    v25 = [v24 internal];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = 0;
    }

    else
    {
      v27 = [a1 local];
      v26 = [v27 internal];

      v25 = v27;
    }

    v28 = [MEMORY[0x277CBEB18] array];
    v29 = *(*&buf[8] + 40);
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __61__GKLocalPlayer_authenticatedLocalPlayersDidChange_complete___block_invoke_2;
    v54[3] = &unk_2785DEAB8;
    v30 = v22;
    v55 = v30;
    v31 = v28;
    v56 = v31;
    [v29 enumerateObjectsUsingBlock:v54];
    v32 = [MEMORY[0x277CBEB18] array];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __61__GKLocalPlayer_authenticatedLocalPlayersDidChange_complete___block_invoke_3;
    v51[3] = &unk_2785DEAE0;
    v53 = buf;
    v33 = v32;
    v52 = v33;
    [v30 enumerateObjectsUsingBlock:v51];
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__5;
    v49 = __Block_byref_object_dispose__5;
    v50 = 0;
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __61__GKLocalPlayer_authenticatedLocalPlayersDidChange_complete___block_invoke_4;
    v44[3] = &unk_2785DEB08;
    v44[4] = &v45;
    [v23 enumerateObjectsUsingBlock:v44];
    if ([v33 count] || objc_msgSend(v31, "count") || v26 != v46[5] && (objc_msgSend(v26, "isEqual:") & 1) == 0)
    {
      v34 = [a1 _userInfoForAuthAPINotificationForLoggedInPlayerInternals:v33 loggedOutPlayerInternals:v31 oldPrimary:v26 newPrimary:v46[5]];
      v35 = 1;
    }

    else
    {
      v35 = 0;
      v34 = 0;
    }

    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __61__GKLocalPlayer_authenticatedLocalPlayersDidChange_complete___block_invoke_5;
    v38[3] = &unk_2785DEB58;
    v41 = &v45;
    v39 = v9;
    v43 = v35;
    v36 = v34;
    v40 = v36;
    v42 = a1;
    dispatch_async(MEMORY[0x277D85CD0], v38);
    if (v8)
    {
      v8[2](v8);
    }

    _Block_object_dispose(&v45, 8);
    _Block_object_dispose(buf, 8);
  }

  v37 = *MEMORY[0x277D85DE8];
}

void __61__GKLocalPlayer_authenticatedLocalPlayersDidChange_complete___block_invoke(uint64_t a1)
{
  v2 = sLocalPlayers;
  if (sLocalPlayers)
  {
    v3 = [MEMORY[0x277CBEB98] setWithArray:sLocalPlayers];
  }

  else
  {
    v3 = 0;
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
  if (v2)
  {
  }

  v4 = *(a1 + 32);

  objc_storeStrong(&sLocalPlayers, v4);
}

void __61__GKLocalPlayer_authenticatedLocalPlayersDidChange_complete___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) addObject:v3];
  }
}

void __61__GKLocalPlayer_authenticatedLocalPlayersDidChange_complete___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 playerID];
  if (v3)
  {
    v4 = v3;
    v5 = [*(*(*(a1 + 40) + 8) + 40) containsObject:v6];

    if ((v5 & 1) == 0)
    {
      [*(a1 + 32) addObject:v6];
    }
  }
}

void __61__GKLocalPlayer_authenticatedLocalPlayersDidChange_complete___block_invoke_4(uint64_t a1, void *a2)
{
  v4 = a2;
  if (([v4 loginStatus] & 4) != 0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }
}

void __61__GKLocalPlayer_authenticatedLocalPlayersDidChange_complete___block_invoke_5(uint64_t a1)
{
  v2 = [*(*(*(a1 + 48) + 8) + 40) playerID];

  if ((v2 != 0) != [*(a1 + 32) isAuthenticated])
  {
    [*(a1 + 32) setAuthenticated:v2 != 0];
  }

  if (v2)
  {
    [*(a1 + 32) setInternal:*(*(*(a1 + 48) + 8) + 40)];
  }

  else
  {
    v3 = +[(GKInternalRepresentation *)GKUnauthenticatedPlayerInternal];
    [*(a1 + 32) setInternal:v3];
  }

  if (*(a1 + 64) == 1)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __61__GKLocalPlayer_authenticatedLocalPlayersDidChange_complete___block_invoke_6;
    v7[3] = &unk_2785DEB30;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 56);
    v8 = v5;
    v9 = v6;
    [v4 updateScopedIDs:v7];
  }
}

void __61__GKLocalPlayer_authenticatedLocalPlayersDidChange_complete___block_invoke_6(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__GKLocalPlayer_authenticatedLocalPlayersDidChange_complete___block_invoke_7;
  block[3] = &unk_2785DEB30;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v9 = v2;
  v10 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
  v4 = [*(a1 + 40) local];
  if (([v4 insideAuthenticatorInvocation] & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_msgSend(v4, "isShowingInGameUI") & 1) == 0)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __61__GKLocalPlayer_authenticatedLocalPlayersDidChange_complete___block_invoke_187;
    v6[3] = &unk_2785DD760;
    v7 = v4;
    v5 = MEMORY[0x277D85CD0];
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }
}

void __61__GKLocalPlayer_authenticatedLocalPlayersDidChange_complete___block_invoke_7(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
    v2 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_227904000, v2, OS_LOG_TYPE_INFO, "sending auth did change %@", &v10, 0xCu);
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v6 = GKPlayerAuthenticationDidChangeNotificationName;
  v7 = [*(a1 + 40) local];
  if ([*(a1 + 32) count])
  {
    v8 = *(a1 + 32);
  }

  else
  {
    v8 = 0;
  }

  [v5 postNotificationName:v6 object:v7 userInfo:v8];

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __61__GKLocalPlayer_authenticatedLocalPlayersDidChange_complete___block_invoke_187(uint64_t a1)
{
  [*(a1 + 32) setShouldPreserveOnboardingUI:0];
  v2 = *(a1 + 32);

  return [v2 authenticationDidCompleteWithError:0 signInOrigin:7];
}

+ (id)accountServicePrivate
{
  v2 = +[GKDaemonProxy daemonProxy];
  v3 = [v2 accountServicePrivate];

  return v3;
}

- (id)friendServicePrivate
{
  v2 = [(GKLocalPlayer *)self daemonProxy];
  v3 = [v2 friendServicePrivate];

  return v3;
}

- (id)friendService
{
  v2 = [(GKLocalPlayer *)self daemonProxy];
  v3 = [v2 friendService];

  return v3;
}

+ (void)authenticateWithUsername:(id)a3 password:(id)a4 completionHandler:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v9)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/API/GKLocalPlayer.m"];
    v13 = [v12 lastPathComponent];
    v14 = [v10 stringWithFormat:@"%@ (completionHandler != ((void*)0))\n[%s (%s:%d)]", v11, "+[GKLocalPlayer authenticateWithUsername:password:completionHandler:]", objc_msgSend(v13, "UTF8String"), 839];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v14}];
  }

  v15 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v16 = GKOSLoggers();
    v15 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v25 = v7;
    _os_log_impl(&dword_227904000, v15, OS_LOG_TYPE_INFO, "authenticateWithUsername:%@", buf, 0xCu);
  }

  v17 = +[GKLocalPlayer accountServicePrivate];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __69__GKLocalPlayer_authenticateWithUsername_password_completionHandler___block_invoke;
  v21[3] = &unk_2785DEB80;
  v22 = v7;
  v23 = v9;
  v18 = v9;
  v19 = v7;
  [v17 authenticatePlayerWithUsername:v19 password:v8 altDSID:0 usingFastPath:1 handler:v21];

  v20 = *MEMORY[0x277D85DE8];
}

void __69__GKLocalPlayer_authenticateWithUsername_password_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
    v7 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 32);
    v12 = 138412802;
    v13 = v9;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_227904000, v7, OS_LOG_TYPE_INFO, "authenticateWithUsername:%@ response:%@ error:%@", &v12, 0x20u);
  }

  if (v6)
  {
    v10 = 0;
  }

  else
  {
    v10 = +[GKLocalPlayer localPlayer];
  }

  (*(*(a1 + 40) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

- (void)refreshInternalWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLocalPlayer.m", 976, "-[GKLocalPlayer refreshInternalWithCompletion:]"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__GKLocalPlayer_refreshInternalWithCompletion___block_invoke;
  v14[3] = &unk_2785DD898;
  v14[4] = self;
  v7 = v6;
  v15 = v7;
  [v7 perform:v14];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __47__GKLocalPlayer_refreshInternalWithCompletion___block_invoke_3;
  v10[3] = &unk_2785DE948;
  v11 = v7;
  v12 = self;
  v13 = v4;
  v8 = v4;
  v9 = v7;
  [v9 notifyOnQueue:MEMORY[0x277D85CD0] block:v10];
}

void __47__GKLocalPlayer_refreshInternalWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) daemonProxy];
  v5 = [v4 baseProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__GKLocalPlayer_refreshInternalWithCompletion___block_invoke_2;
  v7[3] = &unk_2785DDC38;
  v8 = *(a1 + 40);
  v9 = v3;
  v6 = v3;
  [v5 authenticatedLocalPlayersWithStatus:4 completion:v7];
}

uint64_t __47__GKLocalPlayer_refreshInternalWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setResult:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __47__GKLocalPlayer_refreshInternalWithCompletion___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  v3 = [v2 firstObject];
  if (v3)
  {
    [*(a1 + 40) updateFromLocalPlayer:v3];
    v4 = *(*(a1 + 48) + 16);
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "The local player could have signed out outside of Settings. Now, there is no authenticated local player to load the profile for Settings.", v8, 2u);
    }

    v7 = objc_alloc_init(GKUnauthenticatedPlayerInternal);
    [*(a1 + 40) setInternal:v7];

    v4 = *(*(a1 + 48) + 16);
  }

  v4();
}

- (void)callAuthHandlerWithError:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v6 = GKOSLoggers();
    v5 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v4;
    _os_log_impl(&dword_227904000, v5, OS_LOG_TYPE_DEFAULT, "Calling AuthenticateHandlerWithError: %@", buf, 0xCu);
  }

  v7 = [(GKPlayer *)self playerID];

  if (v7)
  {
    v8 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
      v8 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_DEFAULT, "Game Center has authenticated the player", buf, 2u);
    }
  }

  v10 = [(GKPlayer *)self internal];
  v11 = +[GKLocalPlayer local];
  [v11 setInternal:v10];

  v12 = [(GKLocalPlayer *)self isAuthenticated];
  v13 = +[GKLocalPlayer local];
  [v13 setAuthenticated:v12];

  if ([(GKLocalPlayer *)self isAuthenticated])
  {
    v14 = 2;
  }

  else
  {
    v14 = 3;
  }

  v15 = +[GKLocalPlayer local];
  [v15 setAuthenticationState:v14];

  v16 = +[GKLocalPlayer local];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __42__GKLocalPlayer_callAuthHandlerWithError___block_invoke;
  v19[3] = &unk_2785DEBA8;
  v19[4] = self;
  v20 = v4;
  v17 = v4;
  [v16 updateScopedIDs:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __42__GKLocalPlayer_callAuthHandlerWithError___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __42__GKLocalPlayer_callAuthHandlerWithError___block_invoke_2;
  v2[3] = &unk_2785DEBA8;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void __42__GKLocalPlayer_callAuthHandlerWithError___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setIsShowingFriendRequestUI:0];
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_227904000, v3, OS_LOG_TYPE_INFO, "callAuthHandlerWithError:Setting the Authentication Handler", v6, 2u);
  }

  v4 = [*(a1 + 32) authenticateHandler];
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4, 0, *(a1 + 40));
  }
}

- (void)setAuthenticateHandler:(void *)authenticateHandler
{
  v4 = authenticateHandler;
  v5 = objc_opt_class();
  objc_sync_enter(v5);
  if (sAuthenticateHandler == v4)
  {
    objc_sync_exit(v5);
  }

  else
  {
    v6 = [v4 copy];
    v7 = sAuthenticateHandler;
    sAuthenticateHandler = v6;

    v8 = sAuthenticateHandler;
    objc_sync_exit(v5);

    if (v8)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __40__GKLocalPlayer_setAuthenticateHandler___block_invoke;
      block[3] = &unk_2785DD760;
      block[4] = self;
      if (setAuthenticateHandler__once != -1)
      {
        dispatch_once(&setAuthenticateHandler__once, block);
      }
    }
  }
}

uint64_t __40__GKLocalPlayer_setAuthenticateHandler___block_invoke(uint64_t a1)
{
  v2 = +[GKReporter reporter];
  [v2 recordAuthenticateResponseTimestamp];

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__GKLocalPlayer_setAuthenticateHandler___block_invoke_2;
  v4[3] = &unk_2785DD760;
  v4[4] = *(a1 + 32);
  return [GKActivity named:@"GC Activity: Starting Authentication for Existing Primary Player" execute:v4];
}

uint64_t __40__GKLocalPlayer_setAuthenticateHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {

    return [v4 startAuthenticationForExistingPrimaryPlayer];
  }

  else
  {

    return [v4 _startAuthenticationForExistingPrimaryPlayer];
  }
}

- (void)removeFriend:(id)a3 block:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[GKDaemonProxy proxyForLocalPlayer];
  v9 = [v8 friendServicePrivate];
  v10 = [v7 internal];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __36__GKLocalPlayer_removeFriend_block___block_invoke;
  v12[3] = &unk_2785DD8E8;
  v12[4] = self;
  v13 = v6;
  v11 = v6;
  [v9 removeFriendWithPlayer:v10 handler:v12];
}

uint64_t __36__GKLocalPlayer_removeFriend_block___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!v5 && [*(a1 + 32) numberOfFriends])
  {
    [*(a1 + 32) setNumberOfFriends:{objc_msgSend(*(a1 + 32), "numberOfFriends") - 1}];
    [*(a1 + 32) postChangeNotification];
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v5);
  }

  return MEMORY[0x2821F96F8]();
}

- (void)removeAllFriendsWithBlock:(id)a3
{
  v4 = a3;
  v5 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v6 = GKOSLoggers();
    v5 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [GKLocalPlayer removeAllFriendsWithBlock:v5];
  }

  v7 = +[GKDaemonProxy proxyForLocalPlayer];
  v8 = [v7 friendServicePrivate];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__GKLocalPlayer_removeAllFriendsWithBlock___block_invoke;
  v10[3] = &unk_2785DD8E8;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [v8 removeAllFriendsWithHandler:v10];
}

uint64_t __43__GKLocalPlayer_removeAllFriendsWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!v5 && [*(a1 + 32) numberOfFriends])
  {
    [*(a1 + 32) setNumberOfFriends:0];
    [*(a1 + 32) postChangeNotification];
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v5);
  }

  return MEMORY[0x2821F96F8]();
}

- (void)_startAuthenticationForExistingPrimaryPlayer
{
  [(GKLocalPlayer *)self setAuthenticationState:1];
  v4 = [(GKLocalPlayer *)self daemonProxy];
  v5 = [v4 accountService];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__GKLocalPlayer__startAuthenticationForExistingPrimaryPlayer__block_invoke;
  v6[3] = &unk_2785DEBF8;
  v6[4] = self;
  v6[5] = a2;
  [v5 authenticatePlayerWithExistingCredentialsWithHandler:v6];
}

void __61__GKLocalPlayer__startAuthenticationForExistingPrimaryPlayer__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      __61__GKLocalPlayer__startAuthenticationForExistingPrimaryPlayer__block_invoke_cold_1();
    }
  }

  v8 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
    v8 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v33 = *(a1 + 40);
    v34 = v8;
    v35 = NSStringFromSelector(v33);
    *v55 = 138412802;
    *&v55[4] = v35;
    *&v55[12] = 2112;
    *&v55[14] = v5;
    *&v55[22] = 2112;
    v56 = v6;
    _os_log_debug_impl(&dword_227904000, v34, OS_LOG_TYPE_DEBUG, "%@ auth response:%@ error:%@", v55, 0x20u);
  }

  *v55 = 0;
  *&v55[8] = v55;
  *&v55[16] = 0x3032000000;
  v56 = __Block_byref_object_copy__5;
  v57 = __Block_byref_object_dispose__5;
  v58 = 0;
  v10 = [v5 playerID];
  v11 = [GKLocalPlayer authenticatedLocalPlayersWithStatus:1];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __61__GKLocalPlayer__startAuthenticationForExistingPrimaryPlayer__block_invoke_199;
  v49[3] = &unk_2785DEBD0;
  v12 = v10;
  v13 = *(a1 + 32);
  v50 = v12;
  v51 = v13;
  v52 = v55;
  [v11 enumerateObjectsUsingBlock:v49];

  v14 = [*(*&v55[8] + 40) internal];
  [*(a1 + 32) setInternal:v14];

  if (v6 || ([v5 loginDisabled] & 1) != 0)
  {
    if ([v5 loginDisabled])
    {
      if (!os_log_GKGeneral)
      {
        v15 = GKOSLoggers();
      }

      v16 = os_log_GKTrace;
      if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_227904000, v16, OS_LOG_TYPE_INFO, "_handleAuthResponse:Login has been disabled", buf, 2u);
      }

      v17 = [MEMORY[0x277CCA9B8] userErrorForCode:2 underlyingError:0];

LABEL_18:
      v6 = v17;
      goto LABEL_63;
    }

    v18 = [v6 domain];
    v19 = [v18 isEqualToString:GKErrorDomain];

    if (v19)
    {
      v20 = [v6 code];
      if ((v20 - 5) < 2)
      {
        if (!os_log_GKGeneral)
        {
          v21 = GKOSLoggers();
        }

        v22 = os_log_GKTrace;
        if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_227904000, v22, OS_LOG_TYPE_INFO, "_handleAuthResponse:Auth Error: GKErrorInvalidCredentials", buf, 2u);
        }

        v23 = [v6 userInfo];
        v24 = [v23 objectForKey:*MEMORY[0x277CCA7E8]];

        v25 = [v24 code];
        switch(v25)
        {
          case 5029:
            if (!os_log_GKGeneral)
            {
              v39 = GKOSLoggers();
            }

            v27 = os_log_GKTrace;
            if (!os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
            {
              goto LABEL_62;
            }

            *buf = 0;
            v28 = "_handleAuthResponse:Underlying Error: GKServerNotAuthorizedError";
            break;
          case 5047:
            if (!os_log_GKGeneral)
            {
              v38 = GKOSLoggers();
            }

            v27 = os_log_GKTrace;
            if (!os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
            {
              goto LABEL_62;
            }

            *buf = 0;
            v28 = "_handleAuthResponse:Underlying Error: GKServerForcePasswordChangeError";
            break;
          case 5170:
            if (!os_log_GKGeneral)
            {
              v26 = GKOSLoggers();
            }

            v27 = os_log_GKTrace;
            if (!os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
            {
LABEL_62:

              goto LABEL_63;
            }

            *buf = 0;
            v28 = "_handleAuthResponse:Underlying Error: GKServerNeedsType15Repair";
            break;
          default:
            v40 = +[GKReachability _gkReachabilityForInternetConnection];
            v41 = [v40 _gkCurrentReachabilityStatus] == 0;

            if (v41)
            {
              v42 = [MEMORY[0x277CCA9B8] gkNotConnectedToInternetError];
            }

            else
            {
              v42 = [MEMORY[0x277CCA9B8] userErrorForCode:3 underlyingError:0];

              if (!os_log_GKGeneral)
              {
                v43 = GKOSLoggers();
              }

              v44 = os_log_GKTrace;
              if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
              {
                v45 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v24, "code")}];
                *buf = 138412290;
                v54 = v45;
                _os_log_impl(&dword_227904000, v44, OS_LOG_TYPE_INFO, "_handleAuthResponse:Underlying Error: %@", buf, 0xCu);
              }
            }

            v6 = v42;
            goto LABEL_62;
        }

        _os_log_impl(&dword_227904000, v27, OS_LOG_TYPE_INFO, v28, buf, 2u);
        goto LABEL_62;
      }

      if (v20 == 15)
      {
        if (!os_log_GKGeneral)
        {
          v31 = GKOSLoggers();
        }

        v32 = os_log_GKTrace;
        if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_227904000, v32, OS_LOG_TYPE_INFO, "_handleAuthResponse:Underlying Error: GKErrorGameUnrecognized", buf, 2u);
        }

        v17 = [MEMORY[0x277CCA9B8] userErrorForCode:15 underlyingError:0];

        goto LABEL_18;
      }

      if (!*(*&v55[8] + 40))
      {
        v36 = +[GKLocalPlayer localPlayer];
        v37 = *(*&v55[8] + 40);
        *(*&v55[8] + 40) = v36;
      }
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v29 = GKOSLoggers();
    }

    v30 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_227904000, v30, OS_LOG_TYPE_INFO, "_handleAuthResponse:Login success", buf, 2u);
    }

    v6 = 0;
  }

LABEL_63:
  [*(a1 + 32) setAuthenticationError:v6];
  v46 = [*(a1 + 32) authenticateHandler];

  if (v46)
  {
    v47 = [*(a1 + 32) authenticateHandler];
    (v47)[2](v47, 0, v6);
  }

  _Block_object_dispose(v55, 8);
  v48 = *MEMORY[0x277D85DE8];
}

void __61__GKLocalPlayer__startAuthenticationForExistingPrimaryPlayer__block_invoke_199(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v13 = 0;
    _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "_handleAuthResponse:Authenticated Local Player with Status", v13, 2u);
  }

  v10 = [v7 internal];
  v11 = [v10 playerID];
  v12 = [v11 isEqualToString:*(a1 + 32)];

  if (v12)
  {
    [*(a1 + 40) setAuthenticated:1];
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)fetchTurnBasedEvent
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_227904000, v3, OS_LOG_TYPE_INFO, "fetchTurnBasedEvent", v5, 2u);
  }

  v4 = +[GKTurnBasedEventHandler sharedTurnBasedEventHandler];
  [v4 lookForEvent];
}

- (void)cancelGameInvite:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "GKLocalPlayer: daemonCancelledGameInvite", buf, 2u);
  }

  if (v4)
  {
    acceptedInvite = self->_acceptedInvite;
    if (acceptedInvite && (-[GKInvite inviteID](acceptedInvite, "inviteID"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 isEqualToString:v4], v8, v9))
    {
      v10 = MEMORY[0x277CBEA60];
      v11 = [(GKInvite *)self->_acceptedInvite inviter];
      v12 = [v10 arrayWithObject:v11];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __34__GKLocalPlayer_cancelGameInvite___block_invoke;
      v17[3] = &unk_2785DEC20;
      v17[4] = self;
      [GKPlayer loadPlayersForIdentifiersPrivate:v12 withCompletionHandler:v17];
    }

    else
    {
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v4 forKey:@"invite-id"];
      v14 = [MEMORY[0x277CCAB98] defaultCenter];
      [v14 postNotificationName:@"GKInviterCancelledGameInvite" object:self userInfo:v13];
    }
  }

  else
  {
    v15 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v16 = GKOSLoggers();
      v15 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [GKLocalPlayer cancelGameInvite:v15];
    }
  }
}

void __34__GKLocalPlayer_cancelGameInvite___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 lastObject];
  [*(a1 + 32) showCancelledAlertForPlayer:v3];
  [*(*(a1 + 32) + 48) setCancelled:1];
  [*(a1 + 32) setAcceptedInvite:0];
}

- (void)inviteeAcceptedGameInviteWithNotification:(id)a3
{
  v4 = MEMORY[0x277CCAB98];
  v5 = a3;
  v6 = [v4 defaultCenter];
  [v6 postNotificationName:@"GKInviteeAcceptedGameInvite" object:self userInfo:v5];
}

- (void)inviteeDeclinedGameInviteWithNotification:(id)a3
{
  v4 = MEMORY[0x277CCAB98];
  v5 = a3;
  v6 = [v4 defaultCenter];
  [v6 postNotificationName:@"GKInviteeDeclinedGameInvite" object:self userInfo:v5];
}

- (void)inviteeUpdateGameInviteWithNotification:(id)a3
{
  v4 = MEMORY[0x277CCAB98];
  v5 = a3;
  v6 = [v4 defaultCenter];
  [v6 postNotificationName:@"GKUpdateGameInviteNotification" object:self userInfo:v5];
}

- (void)cancelInviteWithNotification:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "posting GKCancelledGameInviteNotification", v8, 2u);
  }

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 postNotificationName:@"GKInviterCancelledGameInvite" object:self userInfo:v4];
}

- (void)setDefaultLeaderboardIdentifier:(NSString *)leaderboardIdentifier completionHandler:(void *)completionHandler
{
  v6 = leaderboardIdentifier;
  v7 = completionHandler;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLocalPlayer.m", 1267, "-[GKLocalPlayer setDefaultLeaderboardIdentifier:completionHandler:]"];
  v9 = [GKDispatchGroup dispatchGroupWithName:v8];

  v10 = +[GKGame currentGame];
  v11 = v10;
  if (!v10)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  [v10 gameInfo];
  if (*(&v18 + 1) >= 2uLL)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __67__GKLocalPlayer_setDefaultLeaderboardIdentifier_completionHandler___block_invoke;
    v15[3] = &unk_2785DD910;
    v15[4] = self;
    v16 = v9;
    v17 = v6;
    [v16 perform:v15];
  }

  if (v7)
  {
LABEL_5:
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__GKLocalPlayer_setDefaultLeaderboardIdentifier_completionHandler___block_invoke_5;
    v12[3] = &unk_2785DDC10;
    v14 = v7;
    v13 = v9;
    [v13 notifyOnMainQueueWithBlock:v12];
  }

LABEL_6:
}

void __67__GKLocalPlayer_setDefaultLeaderboardIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__GKLocalPlayer_setDefaultLeaderboardIdentifier_completionHandler___block_invoke_2;
  v6[3] = &unk_2785DEC48;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = v3;
  v5 = v3;
  [v4 loadDefaultLeaderboardIdentifierWithCompletionHandler:v6];
}

uint64_t __67__GKLocalPlayer_setDefaultLeaderboardIdentifier_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 setError:a3];
  LOBYTE(a3) = [v6 isEqualToString:*(a1 + 40)];

  if ((a3 & 1) == 0)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__GKLocalPlayer_setDefaultLeaderboardIdentifier_completionHandler___block_invoke_3;
    v12[3] = &unk_2785DD898;
    v10 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = *(a1 + 32);
    [v10 perform:v12];
  }

  return (*(*(a1 + 48) + 16))(*(a1 + 48), v7, v8, v9);
}

void __67__GKLocalPlayer_setDefaultLeaderboardIdentifier_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 gameStatService];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__GKLocalPlayer_setDefaultLeaderboardIdentifier_completionHandler___block_invoke_4;
  v8[3] = &unk_2785DD8E8;
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v3;
  v7 = v3;
  [v5 setDefaultLeaderboardID:v6 handler:v8];
}

uint64_t __67__GKLocalPlayer_setDefaultLeaderboardIdentifier_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __67__GKLocalPlayer_setDefaultLeaderboardIdentifier_completionHandler___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

- (void)loadDefaultLeaderboardIdentifierWithCompletionHandler:(void *)completionHandler
{
  if (completionHandler)
  {
    v3 = completionHandler;
    v5 = +[GKDaemonProxy proxyForLocalPlayer];
    v4 = [v5 gameStatService];
    [v4 getDefaultLeaderboardIDWithHandler:v3];
  }
}

- (void)generateIdentityVerificationSignatureWithCompletionHandler:(void *)completionHandler
{
  v3 = completionHandler;
  if (v3)
  {
    v4 = +[GKDaemonProxy proxyForLocalPlayer];
    v5 = [v4 accountService];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __76__GKLocalPlayer_generateIdentityVerificationSignatureWithCompletionHandler___block_invoke;
    v6[3] = &unk_2785DEC70;
    v7 = v3;
    [v5 generateIdentityVerificationSignatureWithCompletionHandler:v6];
  }
}

void __76__GKLocalPlayer_generateIdentityVerificationSignatureWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a3;
  if (v12)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v8 = a2;
    v5 = [v8 objectForKey:@"signature"];
    v6 = [v8 objectForKey:@"salt"];
    v9 = [v8 valueForKey:@"timestamp"];
    [v9 unsignedLongLongValue];

    v10 = MEMORY[0x277CBEBC0];
    v11 = [v8 objectForKey:@"public-key-url"];

    v7 = [v10 URLWithString:v11];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchItemsForIdentityVerificationSignature:(void *)completionHandler
{
  v3 = completionHandler;
  if (v3)
  {
    v4 = +[GKDaemonProxy proxyForLocalPlayer];
    v5 = [v4 accountService];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__GKLocalPlayer_fetchItemsForIdentityVerificationSignature___block_invoke;
    v6[3] = &unk_2785DEC70;
    v7 = v3;
    [v5 fetchItemsForIdentityVerificationSignature:v6];
  }
}

void __60__GKLocalPlayer_fetchItemsForIdentityVerificationSignature___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a3;
  if (v12)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v8 = a2;
    v5 = [v8 objectForKey:@"signature"];
    v6 = [v8 objectForKey:@"salt"];
    v9 = [v8 valueForKey:@"timestamp"];
    [v9 unsignedLongLongValue];

    v10 = MEMORY[0x277CBEBC0];
    v11 = [v8 objectForKey:@"public-key-url"];

    v7 = [v10 URLWithString:v11];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getPlayerIDFromFriendCode:(id)a3 handler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLocalPlayer.m", 1371, "-[GKLocalPlayer getPlayerIDFromFriendCode:handler:]"];
  v8 = [GKDispatchGroup dispatchGroupWithName:v7];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__GKLocalPlayer_getPlayerIDFromFriendCode_handler___block_invoke;
  v16[3] = &unk_2785DD898;
  v17 = v5;
  v9 = v8;
  v18 = v9;
  v10 = v5;
  [v9 perform:v16];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__GKLocalPlayer_getPlayerIDFromFriendCode_handler___block_invoke_3;
  v13[3] = &unk_2785DDC10;
  v14 = v9;
  v15 = v6;
  v11 = v9;
  v12 = v6;
  [v11 notifyOnMainQueueWithBlock:v13];
}

void __51__GKLocalPlayer_getPlayerIDFromFriendCode_handler___block_invoke(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 friendServicePrivate];
  v12[0] = *(a1 + 32);
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__GKLocalPlayer_getPlayerIDFromFriendCode_handler___block_invoke_2;
  v9[3] = &unk_2785DDC38;
  v10 = *(a1 + 40);
  v11 = v3;
  v7 = v3;
  [v5 getFriendCodeDetailWithIdentifiers:v6 handler:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __51__GKLocalPlayer_getPlayerIDFromFriendCode_handler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  [*(a1 + 32) setError:a3];
  if (!a3 && [v11 count])
  {
    v5 = [v11 firstObject];
    v6 = [v5 creatorPlayerID];
    [*(a1 + 32) setResult:v6];

    v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "friendCodeUsageCount")}];
    [*(a1 + 32) setObject:v7 forKeyedSubscript:@"friendCodeUsageCount"];

    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "friendCodeState")}];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:@"friendCodeState"];

    v9 = [v5 alreadyUsedPlayerIDs];

    if (v9)
    {
      v10 = [v5 alreadyUsedPlayerIDs];
      [*(a1 + 32) setObject:v10 forKeyedSubscript:@"usedPlayerIDs"];
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __51__GKLocalPlayer_getPlayerIDFromFriendCode_handler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v7 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"usedPlayerIDs"];
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"friendCodeUsageCount"];
  v5 = [*(a1 + 32) objectForKeyedSubscript:@"friendCodeState"];
  v6 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v7, v3, v4, v5, v6);
}

- (void)createFriendRequestWithIdentifier:(id)a3 handler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLocalPlayer.m", 1395, "-[GKLocalPlayer createFriendRequestWithIdentifier:handler:]"];
  v8 = [GKDispatchGroup dispatchGroupWithName:v7];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__GKLocalPlayer_createFriendRequestWithIdentifier_handler___block_invoke;
  v16[3] = &unk_2785DD898;
  v17 = v5;
  v9 = v8;
  v18 = v9;
  v10 = v5;
  [v9 perform:v16];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__GKLocalPlayer_createFriendRequestWithIdentifier_handler___block_invoke_5;
  v13[3] = &unk_2785DDC10;
  v14 = v9;
  v15 = v6;
  v11 = v9;
  v12 = v6;
  [v11 notifyOnMainQueueWithBlock:v13];
}

void __59__GKLocalPlayer_createFriendRequestWithIdentifier_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 friendServicePrivate];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__GKLocalPlayer_createFriendRequestWithIdentifier_handler___block_invoke_2;
  v11[3] = &unk_2785DE4F0;
  v6 = *(a1 + 32);
  v12 = *(a1 + 40);
  v13 = v3;
  v7 = v3;
  [v5 createFriendRequestWithIdentifier:v6 handler:v11];

  v8 = *(a1 + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__GKLocalPlayer_createFriendRequestWithIdentifier_handler___block_invoke_3;
  v9[3] = &unk_2785DEC98;
  v10 = v8;
  [v10 perform:v9];
}

uint64_t __59__GKLocalPlayer_createFriendRequestWithIdentifier_handler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 setError:a3];
  [*(a1 + 32) setResult:v6];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void __59__GKLocalPlayer_createFriendRequestWithIdentifier_handler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 profileServicePrivate];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__GKLocalPlayer_createFriendRequestWithIdentifier_handler___block_invoke_4;
  v7[3] = &unk_2785DE4F0;
  v8 = *(a1 + 32);
  v9 = v3;
  v6 = v3;
  [v5 getFriendSupportPageURLWithHandler:v7];
}

uint64_t __59__GKLocalPlayer_createFriendRequestWithIdentifier_handler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setObject:a2 forKeyedSubscript:@"friendUrl"];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __59__GKLocalPlayer_createFriendRequestWithIdentifier_handler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 40);
  v5 = [*(a1 + 32) result];
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"friendUrl"];
  v4 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v5, v3, v4);
}

- (void)cancelFriendRequestWithIdentifier:(id)a3 handler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLocalPlayer.m", 1419, "-[GKLocalPlayer cancelFriendRequestWithIdentifier:handler:]"];
  v8 = [GKDispatchGroup dispatchGroupWithName:v7];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__GKLocalPlayer_cancelFriendRequestWithIdentifier_handler___block_invoke;
  v16[3] = &unk_2785DD898;
  v17 = v5;
  v9 = v8;
  v18 = v9;
  v10 = v5;
  [v9 perform:v16];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__GKLocalPlayer_cancelFriendRequestWithIdentifier_handler___block_invoke_3;
  v13[3] = &unk_2785DDC10;
  v14 = v9;
  v15 = v6;
  v11 = v9;
  v12 = v6;
  [v11 notifyOnMainQueueWithBlock:v13];
}

void __59__GKLocalPlayer_cancelFriendRequestWithIdentifier_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 friendServicePrivate];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__GKLocalPlayer_cancelFriendRequestWithIdentifier_handler___block_invoke_2;
  v8[3] = &unk_2785DD8E8;
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v3;
  v7 = v3;
  [v5 cancelFriendRequestWithIdentifier:v6 handler:v8];
}

uint64_t __59__GKLocalPlayer_cancelFriendRequestWithIdentifier_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __59__GKLocalPlayer_cancelFriendRequestWithIdentifier_handler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

- (void)acceptFriendRequestWithIdentifier:(id)a3 sendPush:(BOOL)a4 handler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLocalPlayer.m", 1435, "-[GKLocalPlayer acceptFriendRequestWithIdentifier:sendPush:handler:]"];
  v10 = [GKDispatchGroup dispatchGroupWithName:v9];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __68__GKLocalPlayer_acceptFriendRequestWithIdentifier_sendPush_handler___block_invoke;
  v18[3] = &unk_2785DECC0;
  v19 = v7;
  v21 = a4;
  v11 = v10;
  v20 = v11;
  v12 = v7;
  [v11 perform:v18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__GKLocalPlayer_acceptFriendRequestWithIdentifier_sendPush_handler___block_invoke_3;
  v15[3] = &unk_2785DDC10;
  v16 = v11;
  v17 = v8;
  v13 = v11;
  v14 = v8;
  [v13 notifyOnMainQueueWithBlock:v15];
}

void __68__GKLocalPlayer_acceptFriendRequestWithIdentifier_sendPush_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 friendServicePrivate];
  v6 = *(a1 + 48);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__GKLocalPlayer_acceptFriendRequestWithIdentifier_sendPush_handler___block_invoke_2;
  v9[3] = &unk_2785DD8E8;
  v7 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = v3;
  v8 = v3;
  [v5 acceptFriendRequestWithIdentifier:v7 sendPush:v6 handler:v9];
}

uint64_t __68__GKLocalPlayer_acceptFriendRequestWithIdentifier_sendPush_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __68__GKLocalPlayer_acceptFriendRequestWithIdentifier_sendPush_handler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

- (void)rejectFriendRequestWithIdentifier:(id)a3 handler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLocalPlayer.m", 1451, "-[GKLocalPlayer rejectFriendRequestWithIdentifier:handler:]"];
  v8 = [GKDispatchGroup dispatchGroupWithName:v7];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__GKLocalPlayer_rejectFriendRequestWithIdentifier_handler___block_invoke;
  v16[3] = &unk_2785DD898;
  v17 = v5;
  v9 = v8;
  v18 = v9;
  v10 = v5;
  [v9 perform:v16];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__GKLocalPlayer_rejectFriendRequestWithIdentifier_handler___block_invoke_3;
  v13[3] = &unk_2785DDC10;
  v14 = v9;
  v15 = v6;
  v11 = v9;
  v12 = v6;
  [v11 notifyOnMainQueueWithBlock:v13];
}

void __59__GKLocalPlayer_rejectFriendRequestWithIdentifier_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 friendServicePrivate];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__GKLocalPlayer_rejectFriendRequestWithIdentifier_handler___block_invoke_2;
  v8[3] = &unk_2785DD8E8;
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v3;
  v7 = v3;
  [v5 rejectFriendRequestWithIdentifier:v6 handler:v8];
}

uint64_t __59__GKLocalPlayer_rejectFriendRequestWithIdentifier_handler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __59__GKLocalPlayer_rejectFriendRequestWithIdentifier_handler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

- (BOOL)shouldDisplayWelcomeBannerForPlayer:(id)a3 lastAuthDate:(id)a4 remoteUI:(BOOL)a5 timeBetweenBanners:(double)a6
{
  v10 = a3;
  v11 = a4;
  if (+[GKGame isGameCenter])
  {
    v12 = 0;
  }

  else
  {
    v13 = [(GKLocalPlayer *)self authenticateHandler];
    v12 = 0;
    if (v13 && !a5)
    {
      if (+[GKGame isPreferences](GKGame, "isPreferences") || +[GKGame isFirstParty])
      {
        v12 = 0;
      }

      else
      {
        v14 = [MEMORY[0x277CCA8D8] mainBundle];
        if ([v14 _gkIsPurpleBuddy])
        {
          v12 = 0;
        }

        else
        {
          v12 = 1;
          if (v10 && v11)
          {
            v15 = [(GKPlayer *)self internal];
            v16 = [v15 playerID];
            if ([v10 isEqualToString:v16])
            {
              v17 = [MEMORY[0x277CBEAA8] date];
              [v17 timeIntervalSinceDate:v11];
              v12 = v18 >= a6;
            }
          }
        }
      }
    }
  }

  return v12;
}

- (BOOL)isWelcomeBannerTooLate
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = +[GKLocalPlayer localPlayer];
  [v3 authStartTimeStamp];
  v5 = v4;

  if (v5 <= 0.0)
  {
    LOBYTE(v16) = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CBEAA8] date];
    [v6 timeIntervalSince1970];
    v8 = v7;
    v9 = +[GKLocalPlayer localPlayer];
    [v9 authStartTimeStamp];
    v11 = v8 - v10;

    if (v11 <= 5.0)
    {
      LOBYTE(v16) = 0;
    }

    else
    {
      v12 = [(GKPlayer *)self playerID];
      v13 = [v12 componentsSeparatedByString:@":"];

      if ([v13 count] < 2)
      {
        LOBYTE(v16) = 0;
      }

      else
      {
        v14 = [v13 objectAtIndexedSubscript:1];
        v15 = [v14 longLongValue];

        v16 = (v15 >> 2) & 1;
      }
    }

    v17 = +[GKReporter reporter];
    v18 = [(GKLocalPlayer *)self authenticationType];
    v19 = GKReporterPlayerAuthenticationElapsedTime;
    if (v18)
    {
      v19 = GKReporterPlayerAuthenticationElapsedTimeWithUI;
    }

    v20 = *v19;
    v21 = MEMORY[0x277CBEAA8];
    v22 = +[GKLocalPlayer localPlayer];
    [v22 authStartTimeStamp];
    v23 = [v21 dateWithTimeIntervalSince1970:?];
    [v17 reportEvent:@"com.apple.GameKit.PlayerAuthentication" type:v20 startTime:v23];

    v24 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v25 = GKOSLoggers();
      v24 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v28 = 134217984;
      v29 = v11;
      _os_log_impl(&dword_227904000, v24, OS_LOG_TYPE_INFO, "shouldDisplayWelcomeBannerForPlayer: Welcome banner displayed in %g seconds", &v28, 0xCu);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)reportAuthenticationStartForPlayer
{
  v2 = +[GKReporter reporter];
  [v2 reportEvent:@"com.apple.GameKit.PlayerAuthentication" type:@"Start"];

  v3 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
    v3 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_227904000, v3, OS_LOG_TYPE_INFO, "reportAuthenticationStartForPlayer: Account login starts", v5, 2u);
  }
}

- (void)reportAuthenticationPlayerAuthenticated
{
  v2 = +[GKReporter reporter];
  [v2 reportEvent:@"com.apple.GameKit.PlayerAuthentication" type:@"PlayerAuthenticated"];

  v3 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
    v3 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_227904000, v3, OS_LOG_TYPE_INFO, "reportAuthenticationPlayerAuthenticated: Player authenticated", v5, 2u);
  }
}

- (void)reportAuthenticationErrorNoInternetConnection
{
  v2 = +[GKReporter reporter];
  [v2 reportEvent:@"com.apple.GameKit.PlayerAuthentication" type:@"DeviceOffline"];

  v3 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
    v3 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_227904000, v3, OS_LOG_TYPE_INFO, "reportAuthenticationErrorNoInternetConnection: Authentication bypassed because device is offline", v5, 2u);
  }
}

- (void)reportAuthenticatingWithGreenBuddyInvocation
{
  v2 = +[GKLocalPlayer localPlayer];
  [v2 setAuthenticationType:1];

  v3 = +[GKReporter reporter];
  [v3 reportEvent:@"com.apple.GameKit.PlayerAuthentication" type:@"GreenBuddyInvocation"];

  v4 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
    v4 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_227904000, v4, OS_LOG_TYPE_INFO, "reportAuthenticatingWithGreenBuddyInvocation: Authentication requires GreenBuddy UI invocation", v6, 2u);
  }
}

- (void)reportAuthenticatingWithAuthKitInvocation
{
  [(GKLocalPlayer *)self setAuthenticationType:2];
  v2 = +[GKReporter reporter];
  [v2 reportEvent:@"com.apple.GameKit.PlayerAuthentication" type:@"AuthKitInvocation"];

  v3 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
    v3 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_227904000, v3, OS_LOG_TYPE_INFO, "reportAuthenticatingWithAuthKitInvocation: Authentication requires AuthKit UI invocation", v5, 2u);
  }
}

- (void)reportAuthenticationLoginCanceled
{
  v2 = +[GKReporter reporter];
  [v2 reportEvent:@"com.apple.GameKit.PlayerAuthentication" type:@"LoginCancel"];

  v3 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
    v3 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_227904000, v3, OS_LOG_TYPE_INFO, "reportAuthenticationLoginCanceled: Account login was canceled", v5, 2u);
  }
}

- (GKLocalPlayer)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = GKLocalPlayer;
  v5 = [(GKPlayer *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_authenticated = [v4 decodeBoolForKey:@"authenticated"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = GKLocalPlayer;
  v4 = a3;
  [(GKPlayer *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_authenticated forKey:{@"authenticated", v5.receiver, v5.super_class}];
}

- (void)registerListener:(id)listener
{
  [(GKLocalPlayerListenerPrivate *)self->_eventEmitter registerListener:listener];
  v4 = [(GKLocalPlayer *)self matchmaker];
  [v4 registeredListenersChanged];
}

- (void)unregisterListener:(id)listener
{
  [(GKLocalPlayerListenerPrivate *)self->_eventEmitter unregisterListener:listener];
  v4 = [(GKLocalPlayer *)self matchmaker];
  [v4 registeredListenersChanged];
}

- (void)unregisterAllListeners
{
  [(GKLocalPlayerListenerPrivate *)self->_eventEmitter unregisterAllListeners];
  v3 = [(GKLocalPlayer *)self matchmaker];
  [v3 registeredListenersChanged];
}

- (void)setFriendListAuthorizationStatus:(int64_t)a3 forBundleID:(id)a4 handler:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = objc_opt_new();
  [v9 setBundleID:v8];

  [v9 setAllowFriendListAccess:a3];
  v10 = +[GKDaemonProxy proxyForLocalPlayer];
  v11 = [v10 gameService];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __90__GKLocalPlayer_FriendsListPrivate__setFriendListAuthorizationStatus_forBundleID_handler___block_invoke;
  v13[3] = &unk_2785DE008;
  v14 = v7;
  v12 = v7;
  [v11 setPerGameSettings:v9 handler:v13];
}

uint64_t __90__GKLocalPlayer_FriendsListPrivate__setFriendListAuthorizationStatus_forBundleID_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)resetTCCAuthorization
{
  v3 = +[GKDaemonProxy proxyForLocalPlayer];
  v2 = [v3 gameService];
  [v2 resetTCCAuthorization:&__block_literal_global_475];
}

- (void)loadFriendsAuthorizationStatus:(void *)completionHandler
{
  v4 = completionHandler;
  v5 = +[GKReporter reporter];
  v6 = +[GKGame currentGame];
  v7 = [v6 bundleIdentifier];
  [v5 reportEvent:@"com.apple.GameKit.PlayerProfileDashboard" type:@"FriendsAPICheckAuthorizationStatusCalled" bundleID:v7];

  if (+[GKReachability _gkIsOnline])
  {
    v8 = +[GKPreferences shared];
    v9 = [v8 isFriendsSharingRestricted];

    if (v9)
    {
      v10 = +[GKReporter reporter];
      v11 = +[GKGame currentGame];
      v12 = [v11 bundleIdentifier];
      [v10 reportEvent:@"com.apple.GameKit.PlayerProfileDashboard" type:@"FriendsAPIDeveloperAccessRestricted" bundleID:v12];

      if (!os_log_GKGeneral)
      {
        v13 = GKOSLoggers();
      }

      v14 = os_log_GKTrace;
      if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_227904000, v14, OS_LOG_TYPE_INFO, "Friends API: loadFriendsAuthorizationStatus returning GKFriendsAuthorizationStatusRestricted", buf, 2u);
      }

      v15 = [(GKLocalPlayer *)self _friendsAPIRestrictedError];
      v4[2](v4, 1, v15);
      goto LABEL_13;
    }

    v18 = +[GKLocalPlayer local];
    v19 = [v18 internal];
    v20 = [v19 globalFriendListAccess];

    if ((v20 - 1) < 2)
    {
      if (!os_log_GKGeneral)
      {
        v21 = GKOSLoggers();
      }

      v22 = os_log_GKTrace;
      if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_227904000, v22, OS_LOG_TYPE_INFO, "Friends API: loadFriendsAuthorizationStatus returning GKFriendsAuthorizationStatusDenied", buf, 2u);
      }

      v15 = [(GKLocalPlayer *)self _friendsAPIDeniedError];
      v4[2](v4, 2, v15);
      goto LABEL_13;
    }

    if (!v20)
    {
      v23 = [(GKLocalPlayer *)self daemonProxy];
      v24 = [v23 gameService];
      v25 = +[GKGame currentGame];
      v26 = [v25 bundleIdentifier];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __61__GKLocalPlayer_FriendsList__loadFriendsAuthorizationStatus___block_invoke;
      v27[3] = &unk_2785DECE8;
      v27[4] = self;
      v28 = v4;
      [v24 getPerGameSettingsForBundleID:v26 handler:v27];

      goto LABEL_14;
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v16 = GKOSLoggers();
    }

    v17 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_227904000, v17, OS_LOG_TYPE_INFO, "Friends API: loadFriendsAuthorizationStatus returning GKFriendsAuthorizationStatusNotDetermined", buf, 2u);
    }
  }

  v15 = [(GKLocalPlayer *)self _friendsAPICommunicationsError];
  v4[2](v4, 0, v15);
LABEL_13:

LABEL_14:
}

void __61__GKLocalPlayer_FriendsList__loadFriendsAuthorizationStatus___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 allowFriendListAccess];
  if (v3 > 1)
  {
    if (v3 != 3)
    {
      if (v3 == 2)
      {
        if (!os_log_GKGeneral)
        {
          v7 = GKOSLoggers();
        }

        v8 = os_log_GKTrace;
        if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
        {
          *v15 = 0;
          _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_INFO, "Friends API: loadFriendsAuthorizationStatus returning GKFriendsAuthorizationStatusAuthorized", v15, 2u);
        }

        v6 = *(*(a1 + 40) + 16);
        goto LABEL_21;
      }

      goto LABEL_22;
    }

LABEL_16:
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    v10 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_227904000, v10, OS_LOG_TYPE_INFO, "Friends API: loadFriendsAuthorizationStatus returning GKFriendsAuthorizationStatusNotDetermined", v13, 2u);
    }

    v6 = *(*(a1 + 40) + 16);
    goto LABEL_21;
  }

  if (!v3)
  {
    goto LABEL_16;
  }

  if (v3 == 1)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    v5 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_227904000, v5, OS_LOG_TYPE_INFO, "Friends API: loadFriendsAuthorizationStatus returning GKFriendsAuthorizationStatusDenied", buf, 2u);
    }

    v6 = *(*(a1 + 40) + 16);
LABEL_21:
    v6();
    return;
  }

LABEL_22:
  v11 = *(a1 + 40);
  v12 = [*(a1 + 32) _friendsAPICommunicationsError];
  (*(v11 + 16))(v11, 0, v12);
}

- (void)loadFriends:(void *)completionHandler
{
  v19 = completionHandler;
  v4 = +[GKReporter reporter];
  v5 = +[GKGame currentGame];
  v6 = [v5 bundleIdentifier];
  [v4 reportEvent:@"com.apple.GameKit.PlayerProfileDashboard" type:@"FriendsAPILoadFriendsListCalled" bundleID:v6];

  if (!+[GKReachability _gkIsOnline])
  {
    goto LABEL_10;
  }

  v7 = [(GKLocalPlayer *)self _gkFriendListUsageDescription];
  v8 = [v7 length];

  if (!v8)
  {
    v14 = [(GKLocalPlayer *)self _friendsAPIDescriptionMissingError];
    goto LABEL_11;
  }

  v9 = +[GKPreferences shared];
  v10 = [v9 isFriendsSharingRestricted];

  if (!v10)
  {
    v15 = +[GKLocalPlayer local];
    v16 = [v15 internal];
    v17 = [v16 globalFriendListAccess];

    if ((v17 - 1) < 2)
    {
      v14 = [(GKLocalPlayer *)self _friendsAPIDeniedError];
      goto LABEL_11;
    }

    if (!v17)
    {
      [(GKLocalPlayer *)self _loadFriendsListGlobalAccessOptInFlow:v19];
      goto LABEL_12;
    }

LABEL_10:
    v14 = [(GKLocalPlayer *)self _friendsAPICommunicationsError];
    goto LABEL_11;
  }

  v11 = +[GKReporter reporter];
  v12 = +[GKGame currentGame];
  v13 = [v12 bundleIdentifier];
  [v11 reportEvent:@"com.apple.GameKit.PlayerProfileDashboard" type:@"FriendsAPIDeveloperAccessRestricted" bundleID:v13];

  v14 = [(GKLocalPlayer *)self _friendsAPIRestrictedError];
LABEL_11:
  v18 = v14;
  v19[2](v19, 0, v14);

LABEL_12:
}

- (void)loadFriendsWithIdentifiers:(NSArray *)identifiers completionHandler:(void *)completionHandler
{
  v6 = identifiers;
  v7 = completionHandler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __75__GKLocalPlayer_FriendsList__loadFriendsWithIdentifiers_completionHandler___block_invoke;
  v10[3] = &unk_2785DED10;
  v11 = v6;
  v12 = v7;
  v8 = v6;
  v9 = v7;
  [(GKLocalPlayer *)self loadFriends:v10];
}

void __75__GKLocalPlayer_FriendsList__loadFriendsWithIdentifiers_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v26 = v5;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v32;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v31 + 1) + 8 * i);
          if ([v12 scopedIDsArePersistent])
          {
            v13 = [v12 gamePlayerID];
            [v6 setObject:v12 forKeyedSubscript:v13];

            v14 = [v12 teamPlayerID];
            [v6 setObject:v12 forKeyedSubscript:v14];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v9);
    }

    v15 = [MEMORY[0x277CBEB18] array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v16 = *(a1 + 32);
    v17 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v27 + 1) + 8 * j);
          v22 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
          v23 = [v21 stringByTrimmingCharactersInSet:v22];

          v24 = [v6 objectForKeyedSubscript:v23];
          if (v24)
          {
            [v15 addObject:v24];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v18);
    }

    (*(*(a1 + 40) + 16))();
    v5 = v26;
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_loadFriendsListGlobalAccessOptInFlow:(id)a3
{
  v4 = a3;
  v5 = [(GKLocalPlayer *)self daemonProxy];
  v6 = [v5 gameService];
  v7 = +[GKGame currentGame];
  v8 = [v7 bundleIdentifier];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__GKLocalPlayer_FriendsList___loadFriendsListGlobalAccessOptInFlow___block_invoke;
  v10[3] = &unk_2785DED38;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [v6 getPerGameSettingsForBundleID:v8 handler:v10];
}

void __68__GKLocalPlayer_FriendsList___loadFriendsListGlobalAccessOptInFlow___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 allowFriendListAccess];
  if (v3 <= 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        v4 = *(a1 + 40);
        v5 = [*(a1 + 32) _friendsAPIDeniedError];
LABEL_14:
        v10 = v5;
        (*(v4 + 16))(v4, 0, v5);

        return;
      }

LABEL_13:
      v4 = *(a1 + 40);
      v5 = [*(a1 + 32) _friendsAPICommunicationsError];
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  if (v3 == 3)
  {
LABEL_10:
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);

    [v8 _loadFriendsListPerGameNotDeterminedFlow:v9];
    return;
  }

  if (v3 != 2)
  {
    goto LABEL_13;
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  [v6 _loadFriendsListPerGameAuthorizedFlow:v7];
}

- (void)_loadFriendsListPerGameNotDeterminedFlow:(id)a3
{
  v4 = a3;
  v5 = +[GKDaemonProxy proxyForLocalPlayer];
  v6 = [v5 gameService];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__GKLocalPlayer_FriendsList___loadFriendsListPerGameNotDeterminedFlow___block_invoke;
  v8[3] = &unk_2785DED88;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 checkTCCAuthorization:v8];
}

void __71__GKLocalPlayer_FriendsList___loadFriendsListPerGameNotDeterminedFlow___block_invoke(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __71__GKLocalPlayer_FriendsList___loadFriendsListPerGameNotDeterminedFlow___block_invoke_2;
    v19 = &unk_2785DED60;
    v4 = &v21;
    v5 = *(a1 + 40);
    v20 = *(a1 + 32);
    v21 = v5;
    v6 = &v16;
    v7 = v3;
    v8 = 3;
  }

  else
  {
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __71__GKLocalPlayer_FriendsList___loadFriendsListPerGameNotDeterminedFlow___block_invoke_3;
    v13 = &unk_2785DED60;
    v4 = &v15;
    v9 = *(a1 + 40);
    v14 = *(a1 + 32);
    v15 = v9;
    v6 = &v10;
    v7 = v3;
    v8 = 2;
  }

  [v7 _updatePerGameSettings:v8 withCompletionHandler:{v6, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21}];
}

uint64_t __71__GKLocalPlayer_FriendsList___loadFriendsListPerGameNotDeterminedFlow___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return [*(a1 + 32) _loadFriendsListPerGameAuthorizedFlow:*(a1 + 40)];
  }
}

void __71__GKLocalPlayer_FriendsList___loadFriendsListPerGameNotDeterminedFlow___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 40);

    v3(v4, 0, a2);
  }

  else
  {
    v5 = [*(a1 + 32) _friendsAPIDeniedError];
    (*(v2 + 16))(v2, 0, v5);
  }
}

- (void)_loadFriendsListPerGameAuthorizedFlow:(id)a3
{
  v4 = a3;
  v5 = +[GKGame currentGame];
  v6 = [v5 bundleIdentifier];

  v7 = [(GKLocalPlayer *)self daemonProxy];
  v8 = [v7 gameService];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__GKLocalPlayer_FriendsList___loadFriendsListPerGameAuthorizedFlow___block_invoke;
  v10[3] = &unk_2785DDCB0;
  v11 = v4;
  v9 = v4;
  [v8 getPerGameFriendsForBundleID:v6 handler:v10];
}

void __68__GKLocalPlayer_FriendsList___loadFriendsListPerGameAuthorizedFlow___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = +[GKReporter reporter];
    [v6 reportEvent:@"com.apple.GameKit.PlayerProfileDashboard" type:@"FriendsAPILoadFriendsListCount" count:{objc_msgSend(v5, "count")}];

    v7 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        v12 = 0;
        do
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v17 + 1) + 8 * v12);
          v14 = [GKPlayer alloc];
          v15 = [(GKPlayer *)v14 initWithInternalRepresentation:v13, v17];
          [v7 addObject:v15];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    (*(*(a1 + 32) + 16))();
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_updatePerGameSettings:(int64_t)a3 withCompletionHandler:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  if (a3 == 3)
  {
    v6 = 2;
    goto LABEL_5;
  }

  if (a3 == 2)
  {
    v6 = 1;
LABEL_5:
    v7 = +[GKLocalPlayer local];
    v8 = +[GKGame currentGame];
    v9 = [v8 bundleIdentifier];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __75__GKLocalPlayer_FriendsList___updatePerGameSettings_withCompletionHandler___block_invoke;
    v13[3] = &unk_2785DE008;
    v14 = v5;
    [v7 setFriendListAuthorizationStatus:v6 forBundleID:v9 handler:v13];

    goto LABEL_6;
  }

  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
  }

  v12 = os_log_GKDaemon;
  if (os_log_type_enabled(os_log_GKDaemon, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v16 = "[GKLocalPlayer(FriendsList) _updatePerGameSettings:withCompletionHandler:]";
    _os_log_impl(&dword_227904000, v12, OS_LOG_TYPE_INFO, "%s is trying to set an invalid game settings", buf, 0xCu);
  }

LABEL_6:

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_gkFriendListUsageDescription
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 infoDictionary];
  v4 = [v3 objectForKeyedSubscript:@"NSGKFriendListUsageDescription"];

  return v4;
}

- (void)setLastWelcomeWhatsNewCopyVersion:(unint64_t)a3
{
  v5 = +[GKDaemonProxy proxyForLocalPlayer];
  v4 = [v5 accountService];
  [v4 setLastWelcomeWhatsNewCopyVersionDisplayedForSignedInPlayer:a3];
}

- (void)setLastPrivacyNoticeVersion:(unint64_t)a3
{
  v5 = +[GKDaemonProxy proxyForLocalPlayer];
  v4 = [v5 accountService];
  [v4 setLastPrivacyNoticeVersionDisplayedForSignedInPlayer:a3];
}

- (void)setLastPersonalizationVersion:(id)a3
{
  v3 = a3;
  v5 = +[GKDaemonProxy proxyForLocalPlayer];
  v4 = [v5 accountService];
  [v4 setLastPersonalizationVersionDisplayedForSignedInPlayer:v3];
}

- (void)setLastProfilePrivacyVersion:(id)a3
{
  v3 = a3;
  v5 = +[GKDaemonProxy proxyForLocalPlayer];
  v4 = [v5 accountService];
  [v4 setLastProfilePrivacyVersionDisplayedForSignedInPlayer:v3];
}

- (void)setLastFriendSuggestionsVersion:(id)a3
{
  v3 = a3;
  v5 = +[GKDaemonProxy proxyForLocalPlayer];
  v4 = [v5 accountService];
  [v4 setLastFriendSuggestionsVersionDisplayedForSignedInPlayer:v3];
}

- (void)setLastContactsIntegrationConsentVersion:(id)a3
{
  v3 = a3;
  v5 = +[GKDaemonProxy proxyForLocalPlayer];
  v4 = [v5 accountService];
  [v4 setLastContactsIntegrationConsentVersionDisplayedForSignedInPlayer:v3];
}

+ (void)loadHighlightsDataWithCompletionHandler:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKLocalPlayer.m", 1932, "+[GKLocalPlayer(DashboardHighlight) loadHighlightsDataWithCompletionHandler:]"];
    v5 = [GKDispatchGroup dispatchGroupWithName:v4];

    v6 = [MEMORY[0x277CBEB38] dictionary];
    [v5 setResult:v6];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __77__GKLocalPlayer_DashboardHighlight__loadHighlightsDataWithCompletionHandler___block_invoke;
    v15[3] = &unk_2785DEC98;
    v7 = v5;
    v16 = v7;
    [v7 perform:v15];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __77__GKLocalPlayer_DashboardHighlight__loadHighlightsDataWithCompletionHandler___block_invoke_3;
    v13[3] = &unk_2785DEC98;
    v8 = v7;
    v14 = v8;
    [v8 perform:v13];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __77__GKLocalPlayer_DashboardHighlight__loadHighlightsDataWithCompletionHandler___block_invoke_5;
    v10[3] = &unk_2785DDC10;
    v11 = v8;
    v12 = v3;
    v9 = v8;
    [v9 notifyOnMainQueueWithBlock:v10];
  }
}

void __77__GKLocalPlayer_DashboardHighlight__loadHighlightsDataWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKLocalPlayer local];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__GKLocalPlayer_DashboardHighlight__loadHighlightsDataWithCompletionHandler___block_invoke_2;
  v6[3] = &unk_2785DDC38;
  v7 = *(a1 + 32);
  v8 = v3;
  v5 = v3;
  [v4 loadFriendsAsPlayersWithCompletionHandler:v6];
}

void __77__GKLocalPlayer_DashboardHighlight__loadHighlightsDataWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CCAC30];
  v6 = a3;
  v7 = a2;
  v8 = [v5 predicateWithFormat:@"friendBiDirectional == %@", &unk_283B33220];
  v11 = [v7 filteredArrayUsingPredicate:v8];

  [*(a1 + 32) setError:v6];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
  v10 = [*(a1 + 32) result];
  [v10 setObject:v9 forKeyedSubscript:@"friendsCount"];

  (*(*(a1 + 40) + 16))();
}

void __77__GKLocalPlayer_DashboardHighlight__loadHighlightsDataWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __77__GKLocalPlayer_DashboardHighlight__loadHighlightsDataWithCompletionHandler___block_invoke_4;
  v5[3] = &unk_2785DEDB0;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  [GKDaemonProxy getActiveFriendRequestCount:v5];
}

uint64_t __77__GKLocalPlayer_DashboardHighlight__loadHighlightsDataWithCompletionHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:?];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  v5 = [*(a1 + 32) result];
  [v5 setObject:v4 forKeyedSubscript:@"requestsCount"];

  v6 = *(*(a1 + 40) + 16);

  return v6();
}

void __77__GKLocalPlayer_DashboardHighlight__loadHighlightsDataWithCompletionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 40);
  v9 = [*(a1 + 32) result];
  v3 = [v9 objectForKeyedSubscript:@"friendsCount"];
  v4 = [v3 integerValue];
  v5 = [*(a1 + 32) result];
  v6 = [v5 objectForKeyedSubscript:@"requestsCount"];
  v7 = [v6 integerValue];
  v8 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v7, v8);
}

- (void)fetchSavedGamesWithCompletionHandler:(void *)handler
{
  v3 = handler;
  v4 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
    v4 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [GKLocalPlayer(GKSavedGame) fetchSavedGamesWithCompletionHandler:];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__GKLocalPlayer_GKSavedGame__fetchSavedGamesWithCompletionHandler___block_invoke;
  block[3] = &unk_2785DD710;
  v8 = v3;
  v6 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __67__GKLocalPlayer_GKSavedGame__fetchSavedGamesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = +[GKSavedGameManager sharedManager];
  [v2 fetchSavedGamesWithCompletionHandler:*(a1 + 32)];
}

- (void)saveGameData:(NSData *)data withName:(NSString *)name completionHandler:(void *)handler
{
  v7 = data;
  v8 = name;
  v9 = handler;
  v10 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
    v10 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [GKLocalPlayer(GKSavedGame) saveGameData:withName:completionHandler:];
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else if (!v7)
  {
    goto LABEL_8;
  }

  if ([(NSData *)v7 length])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__GKLocalPlayer_GKSavedGame__saveGameData_withName_completionHandler___block_invoke;
    block[3] = &unk_2785DE948;
    v14 = v7;
    v15 = v8;
    v16 = v9;
    dispatch_async(MEMORY[0x277D85CD0], block);

    v12 = v14;
LABEL_10:

    goto LABEL_11;
  }

LABEL_8:
  if (v9)
  {
    v12 = [MEMORY[0x277CCA9B8] userErrorForCode:17 underlyingError:0];
    (*(v9 + 2))(v9, 0, v12);
    goto LABEL_10;
  }

LABEL_11:
}

void __70__GKLocalPlayer_GKSavedGame__saveGameData_withName_completionHandler___block_invoke(void *a1)
{
  v2 = +[GKSavedGameManager sharedManager];
  [v2 saveGameData:a1[4] withName:a1[5] completionHandler:a1[6]];
}

- (void)deleteSavedGamesWithName:(NSString *)name completionHandler:(void *)handler
{
  v5 = name;
  v6 = handler;
  v7 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
    v7 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [GKLocalPlayer(GKSavedGame) deleteSavedGamesWithName:completionHandler:];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__GKLocalPlayer_GKSavedGame__deleteSavedGamesWithName_completionHandler___block_invoke;
  v11[3] = &unk_2785DE540;
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(MEMORY[0x277D85CD0], v11);
}

void __73__GKLocalPlayer_GKSavedGame__deleteSavedGamesWithName_completionHandler___block_invoke(uint64_t a1)
{
  v2 = +[GKSavedGameManager sharedManager];
  [v2 deleteSavedGamesWithName:*(a1 + 32) completionHandler:*(a1 + 40)];
}

- (void)resolveConflictingSavedGames:(NSArray *)conflictingSavedGames withData:(NSData *)data completionHandler:(void *)handler
{
  v7 = conflictingSavedGames;
  v8 = data;
  v9 = handler;
  v10 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
    v10 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [GKLocalPlayer(GKSavedGame) resolveConflictingSavedGames:withData:completionHandler:];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__GKLocalPlayer_GKSavedGame__resolveConflictingSavedGames_withData_completionHandler___block_invoke;
  block[3] = &unk_2785DE948;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __86__GKLocalPlayer_GKSavedGame__resolveConflictingSavedGames_withData_completionHandler___block_invoke(void *a1)
{
  v2 = +[GKSavedGameManager sharedManager];
  [v2 resolveConflictingSavedGames:a1[4] withData:a1[5] completionHandler:a1[6]];
}

+ (void)localPlayers
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)friends
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)loadFriendsWithCompletionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)signOutAndOptOut:(void *)a1 completionHandler:(const char *)a2 .cold.2(void *a1, const char *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = NSStringFromSelector(a2);
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_227904000, v3, OS_LOG_TYPE_ERROR, "%@:Game Center signout was invoked with no player logged in. Notifying the caller.", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

void __53__GKLocalPlayer_updateLoginStatus_completionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __61__GKLocalPlayer__startAuthenticationForExistingPrimaryPlayer__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end