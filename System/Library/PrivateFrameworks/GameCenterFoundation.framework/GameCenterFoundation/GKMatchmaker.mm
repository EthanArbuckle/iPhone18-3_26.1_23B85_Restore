@interface GKMatchmaker
+ (BOOL)canPlayMultiplayerGameWithPlayers:(id)a3;
+ (GKMatchmaker)sharedMatchmaker;
+ (id)descriptionForNearbyDictionary:(id)a3;
+ (id)syncQueue;
+ (void)sharedMatchmaker;
- (BOOL)allInviteesDidRespond;
- (BOOL)hasInviteListener;
- (BOOL)isEligibleForGroupSession;
- (BOOL)isEntitledToUseGroupActivities;
- (BOOL)removeInvitee:(id)a3;
- (BOOL)shouldRespondToNearbyQuery;
- (BOOL)shouldRunGroupActivityWithDescription:(id)a3;
- (GKMatchmaker)init;
- (id)_nearbyDeviceWithDeviceID:(id)a3;
- (id)allInvitedInvitees;
- (id)allInvitedInviteesAndInMatchRequestRecipients;
- (id)compatibilityHashQueue;
- (id)declineReasonString:(int64_t)a3;
- (id)formAGKMatchRequestForNearbyInviteWithOriginalRequest:(id)a3 nearbyPlayerIDs:(id)a4;
- (id)hashForBundleID:(id)a3 version:(id)a4 platform:(int64_t)a5;
- (id)hashForCurrentGameUsingBundleVersion;
- (id)hashForCurrentGameUsingShortBundleVersionAndPlatform;
- (id)nearbyDeviceWithDeviceID:(id)a3;
- (id)nearbyDevicesForPlayer:(id)a3 withState:(int64_t)a4;
- (id)nearbyInviteFromPlayer:(id)a3;
- (id)newMatch;
- (id)profileDictionaryForLocalPlayer;
- (id)sharingControllerItemProvider;
- (id)unreleasedHash;
- (int)numberOfNearbyDevicesForPlayer:(id)a3 withState:(int64_t)a4;
- (int64_t)inviteeCount;
- (int64_t)responseForDeclineReason:(int64_t)a3;
- (int64_t)totalPlayerCount;
- (void)acceptNearbyInvite:(id)a3 connectionData:(id)a4;
- (void)activateGroupActivityWithHandler:(id)a3;
- (void)addInvitees:(id)a3;
- (void)addPlayersForHostedMatchRequest:(id)a3 existingPlayerCount:(int64_t)a4 devicePushToken:(id)a5 completionHandler:(id)a6;
- (void)addPlayersToMatch:(id)a3 matchRequest:(id)a4 devicePushToken:(id)a5 completionHandler:(id)a6;
- (void)allInviteesDidRespond;
- (void)applicationDidEnterBackgroundNotification:(id)a3;
- (void)applicationWillEnterForegroundNotification:(id)a3;
- (void)applicationWillTerminateNotification:(id)a3;
- (void)cancel;
- (void)cancelInviteToPlayer:(NSString *)playerID;
- (void)cancelNearbyInvitesToPlayers:(id)a3;
- (void)cancelPendingInviteToPlayer:(GKPlayer *)player;
- (void)cancelPendingInvites;
- (void)cancelSentNearbyInvites;
- (void)changeGroupActivityStateToGameStarted;
- (void)dealloc;
- (void)declineNearbyInviteFromDevice:(id)a3 reason:(int64_t)a4;
- (void)declineReceivedNearbyInvites;
- (void)determineIfShouldRespondToNearbyPlayer:(id)a3 handler:(id)a4;
- (void)doneMatchmaking;
- (void)endGroupActivity;
- (void)establishNearbyFriendRelationships:(id)a3 fromDevice:(id)a4;
- (void)findMatchForRequest:(GKMatchRequest *)request withCompletionHandler:(void *)completionHandler;
- (void)findMatchForRequest:(id)a3 devicePushToken:(id)a4 withCompletionHandler:(id)a5;
- (void)findMatchedPlayers:(id)a3 withCompletionHandler:(id)a4;
- (void)findPlayersForHostedMatchRequest:(GKMatchRequest *)request withCompletionHandler:(void *)completionHandler;
- (void)findPlayersForHostedRequest:(GKMatchRequest *)request withCompletionHandler:(void *)completionHandler;
- (void)findPlayersForHostedRequest:(id)a3 match:(id)a4 withCompletionHandler:(id)a5;
- (void)findRematchForMatch:(id)a3 completionHandler:(id)a4;
- (void)finishMatchmakingForMatch:(GKMatch *)match;
- (void)finishedAuthenticating;
- (void)foundNearbyDeviceID:(id)a3 discoveryInfo:(id)a4;
- (void)generateHashedCompatibilitySetWithHandler:(id)a3;
- (void)getHashedCompatibilitySetsWithHandler:(id)a3;
- (void)handleNearbyInvite:(id)a3 fromDevice:(id)a4;
- (void)handleNearbyInviteResponse:(id)a3 fromDevice:(id)a4;
- (void)handleNearbyProfileQuery:(id)a3 fromDevice:(id)a4;
- (void)handleNearbyProfileResponse:(id)a3 fromDevice:(id)a4 withCompletionHandler:(id)a5;
- (void)inviteAnyNearbyPlayersViaGCSWithRequest:(id)a3 onlineConnectionData:(id)a4 handler:(id)a5;
- (void)inviteAnyNearbyPlayersViaLegacyViceroyBonjourConnectionWithRequest:(id)a3 handler:(id)a4;
- (void)invitePlayersWithRequest:(id)a3 serverHosted:(BOOL)a4 onlineConnectionData:(id)a5 devicePushTokenMap:(id)a6 isNearbyInvite:(BOOL)a7 completionHandler:(id)a8;
- (void)inviteeAccepted:(id)a3 userInfo:(id)a4 allResponded:(BOOL)a5;
- (void)inviteeAcceptedNotification:(id)a3;
- (void)inviteeDeclinedNotification:(id)a3;
- (void)inviteeDeclinedWithUserInfo:(id)a3;
- (void)inviteeUpdateNotification:(id)a3;
- (void)leaveGroupActivity;
- (void)loadConnectivitySettingsWithCompletionHandler:(id)a3;
- (void)loadPhotoDataDictionaryWithHandler:(id)a3;
- (void)loadURLForMatch:(id)a3 matchRequest:(id)a4 completionHandler:(id)a5;
- (void)localPlayerAcceptedGameInviteNotification:(id)a3;
- (void)localPlayerAcceptedNearbyInvite:(id)a3;
- (void)localPlayerRespondedToNearbyInvite:(id)a3;
- (void)lookForGroupActivities;
- (void)lookForInvite;
- (void)lostNearbyDeviceID:(id)a3;
- (void)matchForInvite:(GKInvite *)invite completionHandler:(void *)completionHandler;
- (void)matchForNearbyInvite:(id)a3 handler:(id)a4;
- (void)matchForRemoteInvite:(id)a3 completionHandler:(id)a4;
- (void)matchRequestRecipientsSet:(id)a3;
- (void)nearbyDataReceived:(id)a3;
- (void)nearbyInviteWasCancelled:(id)a3 fromDevice:(id)a4;
- (void)nearbyPlayerFound:(id)a3;
- (void)nearbyPlayerLost:(id)a3;
- (void)performSync:(id)a3;
- (void)playerDisconnected:(id)a3;
- (void)presentNearbyInvite:(id)a3 fromDevice:(id)a4;
- (void)promptForRadarWithDescriptionAddition:(id)a3;
- (void)queryActivityWithCompletionHandler:(void *)completionHandler;
- (void)queryPlayerGroupActivity:(NSUInteger)playerGroup withCompletionHandler:(void *)completionHandler;
- (void)queryQueueActivity:(id)a3 withCompletionHandler:(id)a4;
- (void)receivedData:(id)a3 fromNearbyDeviceID:(id)a4;
- (void)reduceRecipientsForMatchRequest:(id)a3 toPlayersWithPlayerIDs:(id)a4;
- (void)registeredListenersChanged;
- (void)removeNearbyInviteFromPlayer:(id)a3;
- (void)reportPlayerConnectedWithPlayerID:(id)a3 forMatch:(id)a4;
- (void)reportResponse:(int64_t)a3 forInvitees:(id)a4 withCompletionHandler:(id)a5;
- (void)resetGroupActivity;
- (void)respondToHostedInvite:(id)a3 completionHandler:(id)a4;
- (void)saveNearbyInvite:(id)a3 fromPlayer:(id)a4;
- (void)sendGroupActivityInviteTo:(id)a3 participantID:(id)a4 pushToken:(id)a5;
- (void)sendMatchmakingRequest:(id)a3 forMatch:(id)a4 rematchID:(id)a5 serverHosted:(BOOL)a6 playerCount:(int64_t)a7 completionHandler:(id)a8;
- (void)sendProfileResponseToDevice:(id)a3;
- (void)setInviteHandler:(void *)inviteHandler;
- (void)setNearbyDevice:(id)a3 reachable:(BOOL)a4;
- (void)setNearbyPlayerAccepted:(id)a3 connectionData:(id)a4;
- (void)setNearbyPlayerAccepted:(id)a3 deviceID:(id)a4 connectionData:(id)a5;
- (void)setNearbyPlayerDeclined:(id)a3 deviceID:(id)a4 reason:(int64_t)a5;
- (void)setNearbyPlayerDeclined:(id)a3 reason:(int64_t)a4;
- (void)setNearbyPlayerFailed:(id)a3;
- (void)setNearbyPlayerFailed:(id)a3 deviceID:(id)a4;
- (void)setShareInvitees:(id)a3 propagateToDaemon:(BOOL)a4;
- (void)setupNearbyDiscovery;
- (void)shareInviteeAcceptedWithUserInfo:(id)a3;
- (void)sharePlayPlayerFound:(id)a3;
- (void)sharingControllerItemProvider;
- (void)showSharePlayMatchDeclinedToJoinAlertWithReason:(int64_t)a3;
- (void)startBrowsingForNearbyPlayersWithHandler:(void *)reachableHandler;
- (void)startBrowsingForNearbyPlayersWithReachableHandler:(void *)reachableHandler;
- (void)startGroupActivityWithPlayerHandler:(void *)handler;
- (void)startNearbyAdvertising;
- (void)startNearbyBrowsing;
- (void)stopBrowsingForNearbyPlayers;
- (void)stopGroupActivity;
- (void)stopNearbyAdvertising;
- (void)stopNearbyBrowsing;
- (void)updateNearbyAdvertising;
@end

@implementation GKMatchmaker

- (GKMatchmaker)init
{
  v38.receiver = self;
  v38.super_class = GKMatchmaker;
  v2 = [(GKMatchmaker *)&v38 init];
  v3 = v2;
  if (v2)
  {
    if ([(GKMatchmaker *)v2 shouldRunGroupActivityWithDescription:@"matchmakerInit"])
    {
      v4 = [[_TtC20GameCenterFoundation22GKGroupActivityManager alloc] initWithMatchmakingSupport:v3];
      groupActivityManager = v3->_groupActivityManager;
      v3->_groupActivityManager = v4;
    }

    [(GKMatchmaker *)v3 loadConnectivitySettingsWithCompletionHandler:0];
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    v7 = +[GKLocalPlayer localPlayer];
    [v6 addObserver:v3 selector:sel_inviteeAcceptedNotification_ name:@"GKInviteeAcceptedGameInvite" object:v7];

    v8 = +[GKLocalPlayer localPlayer];
    [v6 addObserver:v3 selector:sel_inviteeDeclinedNotification_ name:@"GKInviteeDeclinedGameInvite" object:v8];

    v9 = +[GKLocalPlayer localPlayer];
    [v6 addObserver:v3 selector:sel_inviteeUpdateNotification_ name:@"GKUpdateGameInviteNotification" object:v9];

    v10 = +[GKLocalPlayer localPlayer];
    [v6 addObserver:v3 selector:sel_localPlayerAcceptedGameInviteNotification_ name:@"GKAcceptedGameInvite" object:v10];

    v11 = +[GKApplicationNotificationNames didEnterBackground];
    [v6 addObserver:v3 selector:sel_applicationDidEnterBackgroundNotification_ name:v11 object:0];

    v12 = +[GKApplicationNotificationNames willTerminate];
    [v6 addObserver:v3 selector:sel_applicationWillTerminateNotification_ name:v12 object:0];

    v13 = +[GKApplicationNotificationNames willEnterForeground];
    [v6 addObserver:v3 selector:sel_applicationWillEnterForegroundNotification_ name:v13 object:0];

    [v6 addObserver:v3 selector:sel_nearbyPlayerFound_ name:@"GKNearbyPlayerFoundNotification" object:0];
    [v6 addObserver:v3 selector:sel_nearbyPlayerLost_ name:@"GKNearbyPlayerLostNotification" object:0];
    [v6 addObserver:v3 selector:sel_nearbyDataReceived_ name:@"GKNearbyDataReceivedNotification" object:0];
    [v6 addObserver:v3 selector:sel_matchRequestRecipientsSet_ name:@"GKSetMatchRequestRecipientsNotification" object:0];
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("GKMatchmaker.lookForInviteQueue", v14);
    lookForInviteQueue = v3->_lookForInviteQueue;
    v3->_lookForInviteQueue = v15;

    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMatchmaker.m", 117, "-[GKMatchmaker init]"];
    v18 = [GKDispatchGroup dispatchGroupWithName:v17];
    compatibilityHashGroup = v3->_compatibilityHashGroup;
    v3->_compatibilityHashGroup = v18;

    v20 = objc_alloc_init(MEMORY[0x277CBEB58]);
    invitedInvitees = v3->_invitedInvitees;
    v3->_invitedInvitees = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEB58]);
    invitedShareInvitees = v3->_invitedShareInvitees;
    v3->_invitedShareInvitees = v22;

    v24 = objc_alloc_init(MEMORY[0x277CBEB58]);
    invitedNearbyPlayers = v3->_invitedNearbyPlayers;
    v3->_invitedNearbyPlayers = v24;

    v26 = objc_alloc_init(MEMORY[0x277CBEB58]);
    autoMatchedPlayers = v3->_autoMatchedPlayers;
    v3->_autoMatchedPlayers = v26;

    v28 = objc_alloc_init(MEMORY[0x277CBEB58]);
    siblingInvitees = v3->_siblingInvitees;
    v3->_siblingInvitees = v28;

    v30 = [MEMORY[0x277CBEB38] dictionary];
    sharePlayInviteeTokensFromProgrammaticInvite = v3->_sharePlayInviteeTokensFromProgrammaticInvite;
    v3->_sharePlayInviteeTokensFromProgrammaticInvite = v30;

    v32 = [MEMORY[0x277CBEB38] dictionary];
    pendingInvitationUpdates = v3->_pendingInvitationUpdates;
    v3->_pendingInvitationUpdates = v32;

    v34 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v35 = dispatch_queue_create("com.apple.GameKit.matchmaker.invitationQueue", v34);
    invitationQueue = v3->_invitationQueue;
    v3->_invitationQueue = v35;
  }

  return v3;
}

- (void)loadConnectivitySettingsWithCompletionHandler:(id)a3
{
  v3 = a3;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_227904000, v5, OS_LOG_TYPE_INFO, "GKMatchmaker: loadConnectivitySettingsWithCompletionHandler", buf, 2u);
  }

  v6 = +[GKDaemonProxy proxyForLocalPlayer];
  v7 = [v6 utilityService];
  v8 = +[GKViceroyNATConfiguration settingsKeys];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__GKMatchmaker_loadConnectivitySettingsWithCompletionHandler___block_invoke;
  v10[3] = &unk_2785DEC70;
  v11 = v3;
  v9 = v3;
  [v7 getStoreBagValuesForKeys:v8 handler:v10];
}

void __62__GKMatchmaker_loadConnectivitySettingsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __62__GKMatchmaker_loadConnectivitySettingsWithCompletionHandler___block_invoke_cold_1();
    }
  }

  else
  {
    [GKViceroyNATConfiguration applySettings:v5];
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, v6);
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = GKMatchmaker;
  [(GKMatchmaker *)&v4 dealloc];
}

- (void)finishedAuthenticating
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_13() local];
  v4 = [v3 internal];
  v5 = [v4 debugDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_5(&dword_227904000, v6, v7, "Player %@ is not authenticated, cancel matchmaking", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)registeredListenersChanged
{
  [(GKMatchmaker *)self updateNearbyAdvertising];

  [(GKMatchmaker *)self lookForInvite];
}

- (BOOL)hasInviteListener
{
  v3 = +[GKLocalPlayer localPlayer];
  v4 = [v3 eventEmitter];
  v5 = ([v4 listenerRegisteredForSelector:sel_player_didAcceptInvite_] & 1) != 0 || self->_inviteHandler != 0;

  return v5;
}

- (BOOL)removeInvitee:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = [v4 internal];
    v9 = [v8 debugDescription];
    v20 = 138412290;
    v21 = v9;
    _os_log_impl(&dword_227904000, v7, OS_LOG_TYPE_INFO, "Matchmaking removes invitee: %@", &v20, 0xCu);
  }

  v10 = [v4 internal];
  v11 = [v10 playerID];

  if (v11 && (-[GKMatchmaker inviteesByUserID](self, "inviteesByUserID"), v12 = objc_claimAutoreleasedReturnValue(), [v12 objectForKeyedSubscript:v11], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v13))
  {
    v14 = [(GKMatchmaker *)self inviteesByUserID];
    v15 = [v14 mutableCopy];

    [v15 setObject:0 forKeyedSubscript:v11];
    v16 = [v15 copy];
    [(GKMatchmaker *)self setInviteesByUserID:v16];

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)allInvitedInvitees
{
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(GKMatchmaker *)self invitedNearbyPlayers];
  [v3 unionSet:v4];

  v5 = [(GKMatchmaker *)self invitedInvitees];
  [v3 unionSet:v5];

  v6 = [(GKMatchmaker *)self invitedShareInvitees];
  [v3 unionSet:v6];

  return v3;
}

- (id)allInvitedInviteesAndInMatchRequestRecipients
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v4 = [(GKMatchmaker *)self allInvitedInvitees];
  [v3 unionSet:v4];

  v5 = [(GKMatchmaker *)self currentMatchRequest];
  v6 = [v5 recipients];
  v7 = [v6 count];

  if (v7)
  {
    v8 = MEMORY[0x277CBEB98];
    v9 = [(GKMatchmaker *)self currentMatchRequest];
    v10 = [v9 recipients];
    v11 = [v10 _gkPlayersIDsFromPlayers];
    v12 = [v8 setWithArray:v11];
    [v3 unionSet:v12];
  }

  if (!os_log_GKGeneral)
  {
    v13 = GKOSLoggers();
  }

  v14 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v17 = 138412290;
    v18 = v3;
    _os_log_impl(&dword_227904000, v14, OS_LOG_TYPE_INFO, "allInvitedInviteesAndInMatchRequestRecipients: %@", &v17, 0xCu);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

- (int64_t)inviteeCount
{
  v2 = [(GKMatchmaker *)self allInvitedInviteesAndInMatchRequestRecipients];
  v3 = [v2 count];

  return v3;
}

- (int64_t)totalPlayerCount
{
  v3 = [(GKMatchmaker *)self match];
  if (v3)
  {
    v4 = [(GKMatchmaker *)self match];
    v5 = [v4 players];
    v6 = [v5 count];
    v7 = [(GKMatchmaker *)self match];
    v8 = v6 + [v7 expectedPlayerCount] + 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)reportPlayerConnectedWithPlayerID:(id)a3 forMatch:(id)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = v9;
    v12 = [v10 numberWithUnsignedInteger:{-[GKMatchmaker inviteApproach](self, "inviteApproach")}];
    v13 = [(GKMatchmaker *)self invitedInvitees];
    v14 = [(GKMatchmaker *)self invitedShareInvitees];
    v15 = [(GKMatchmaker *)self invitedNearbyPlayers];
    v16 = [(GKMatchmaker *)self autoMatchedPlayers];
    v17 = [(GKMatchmaker *)self siblingInvitees];
    v44 = 138413826;
    v45 = v6;
    v46 = 2112;
    v47 = v12;
    v48 = 2112;
    v49 = v13;
    v50 = 2112;
    v51 = v14;
    v52 = 2112;
    v53 = v15;
    v54 = 2112;
    v55 = v16;
    v56 = 2112;
    v57 = v17;
    _os_log_impl(&dword_227904000, v11, OS_LOG_TYPE_INFO, "reportPlayerConnectedWithPlayerID: %@, inviteApproach:%@, push: %@, msg: %@, nearby: %@, automatch: %@, indirect: %@", &v44, 0x48u);
  }

  v18 = +[GKReporter reporter];
  [v18 reportEvent:@"com.apple.GameKit.multiplayer.realtime.connectionResult" type:@"realtime.allMatchSuccess"];

  v19 = [(GKMatchmaker *)self invitedShareInvitees];
  if ([v19 containsObject:v6])
  {

LABEL_7:
    v20 = +[GKReporter reporter];
    [v20 reportEvent:@"com.apple.GameKit.multiplayer.realtime.connectionResult" type:@"realtime.messageBasedMatchSuccess"];

    v21 = 2;
    v22 = @"message";
    goto LABEL_35;
  }

  if ([(GKMatchmaker *)self inviteApproach]== 2)
  {
    v23 = [(GKMatchmaker *)self inviterPlayerID];
    v24 = [v6 isEqualToString:v23];

    if (v24)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v25 = [(GKMatchmaker *)self invitedInvitees];
  if ([v25 containsObject:v6])
  {

LABEL_14:
    v26 = +[GKReporter reporter];
    [v26 reportEvent:@"com.apple.GameKit.multiplayer.realtime.connectionResult" type:@"realtime.pushBasedMatchSuccess"];

    v21 = 1;
    v22 = @"push";
    goto LABEL_35;
  }

  if ([(GKMatchmaker *)self inviteApproach]== 1)
  {
    v27 = [(GKMatchmaker *)self inviterPlayerID];
    v28 = [v6 isEqualToString:v27];

    if (v28)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  v29 = [(GKMatchmaker *)self invitedNearbyPlayers];
  if ([v29 containsObject:v6])
  {

LABEL_21:
    v30 = +[GKReporter reporter];
    [v30 reportEvent:@"com.apple.GameKit.multiplayer.realtime.connectionResult" type:@"realtime.nearbyMatchSuccess"];

    v21 = 3;
    v22 = @"nearby";
    goto LABEL_35;
  }

  if ([(GKMatchmaker *)self inviteApproach]== 3)
  {
    v31 = [(GKMatchmaker *)self inviterPlayerID];
    v32 = [v6 isEqualToString:v31];

    if (v32)
    {
      goto LABEL_21;
    }
  }

  else
  {
  }

  v33 = [(GKMatchmaker *)self siblingInvitees];
  v34 = [v33 containsObject:v6];

  if (v34)
  {
    v35 = +[GKReporter reporter];
    [v35 reportEvent:@"com.apple.GameKit.multiplayer.realtime.connectionResult" type:@"realtime.indirectMatchSuccess"];

    v21 = 5;
    v22 = @"sibling";
  }

  else
  {
    v36 = [(GKMatchmaker *)self autoMatchedPlayers];
    v37 = [v36 containsObject:v6];

    if (v37)
    {
      v38 = +[GKReporter reporter];
      [v38 reportEvent:@"com.apple.GameKit.multiplayer.realtime.connectionResult" type:@"realtime.autoMatchSuccess"];

      v21 = 4;
      v22 = @"automatch";
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v39 = GKOSLoggers();
      }

      v40 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        v44 = 138412290;
        v45 = v6;
        _os_log_impl(&dword_227904000, v40, OS_LOG_TYPE_INFO, "playerID: %@, not found from any source of GKMatchmaker. It could be invitees of the automatched players.", &v44, 0xCu);
      }

      v21 = 0;
      v22 = @"unknown";
    }
  }

LABEL_35:
  v41 = +[GKDaemonProxy proxyForLocalPlayer];
  v42 = [v41 utilityService];
  [v42 completeMatchRecording:@"success" matchType:v22];

  [v7 updateJoinedPlayer:v6 joinType:v21];
  v43 = *MEMORY[0x277D85DE8];
}

- (void)lookForInvite
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_227904000, v4, OS_LOG_TYPE_INFO, "lookForInvite", buf, 2u);
  }

  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__GKMatchmaker_lookForInvite__block_invoke;
    block[3] = &unk_2785DD760;
    block[4] = self;
    lookForInviteQueue = MEMORY[0x277D85CD0];
    v9 = block;
    goto LABEL_12;
  }

  if ((_GKIsRemoteUI & 1) == 0)
  {
    if ([(GKMatchmaker *)self hasInviteListener])
    {
      v5 = +[GKLocalPlayer localPlayer];
      v6 = [v5 isAuthenticated];
      v7 = lookForInvite_lookingForInvite;

      if (v6)
      {
        if ((v7 & 1) == 0)
        {
          lookForInvite_lookingForInvite = 1;
          lookForInviteQueue = self->_lookForInviteQueue;
          v10[0] = MEMORY[0x277D85DD0];
          v10[1] = 3221225472;
          v10[2] = __29__GKMatchmaker_lookForInvite__block_invoke_2;
          v10[3] = &unk_2785DD760;
          v10[4] = self;
          v9 = v10;
LABEL_12:
          dispatch_async(lookForInviteQueue, v9);
        }
      }
    }
  }
}

void __29__GKMatchmaker_lookForInvite__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMatchmaker.m", 296, "-[GKMatchmaker lookForInvite]_block_invoke_2"];
  v3 = [GKDispatchGroup dispatchGroupWithName:v2];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __29__GKMatchmaker_lookForInvite__block_invoke_3;
  v6[3] = &unk_2785DD898;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  [v5 perform:v6];
  [v5 wait];
}

void __29__GKMatchmaker_lookForInvite__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 multiplayerService];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __29__GKMatchmaker_lookForInvite__block_invoke_4;
  v9[3] = &unk_2785DF430;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v6;
  v11 = v7;
  v12 = v3;
  v8 = v3;
  [v5 getAcceptedGameInviteWithHandler:v9];
}

void __29__GKMatchmaker_lookForInvite__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    goto LABEL_5;
  }

  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
  {
    __29__GKMatchmaker_lookForInvite__block_invoke_4_cold_1();
    if (v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
LABEL_5:
    if (v5)
    {
LABEL_6:
      v8 = [[GKInvite alloc] initWithInternalRepresentation:v5];
      goto LABEL_9;
    }
  }

  v8 = 0;
LABEL_9:
  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
  }

  v10 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v48 = v8;
    _os_log_impl(&dword_227904000, v10, OS_LOG_TYPE_INFO, "getAcceptedGameInviteWithHandler invite: %@", buf, 0xCu);
  }

  v11 = +[GKLocalPlayer localPlayer];
  v12 = v11;
  if (!v8)
  {
    v22 = *(a1 + 32);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __29__GKMatchmaker_lookForInvite__block_invoke_90;
    v36[3] = &unk_2785DD898;
    v23 = v11;
    v24 = *(a1 + 40);
    v37 = v23;
    v38 = v24;
    [v22 perform:v36];
    v25 = v37;
LABEL_24:

    (*(*(a1 + 48) + 16))();
    goto LABEL_25;
  }

  v13 = [v5 declineReason];
  v14 = [v13 integerValue];

  if (v14 != 5)
  {
    v26 = +[GKReporter reporter];
    [v26 reportAuthenticateResponseDuration];

    v27 = [MEMORY[0x277CBEB38] dictionary];
    v28 = [(GKInvite *)v8 internal];
    v29 = [v28 sessionID];

    if (v29)
    {
      v30 = [(GKInvite *)v8 internal];
      v31 = [v30 sessionID];
      [v27 setObject:v31 forKeyedSubscript:@"sid"];
    }

    v32 = [(GKInvite *)v8 sender];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __29__GKMatchmaker_lookForInvite__block_invoke_83;
    v39[3] = &unk_2785DF408;
    v40 = v8;
    v33 = *(a1 + 32);
    v34 = *(a1 + 40);
    v41 = v33;
    v42 = v34;
    v43 = v12;
    v44 = v27;
    v25 = v27;
    [v32 updateScopedIDs:v39];

    goto LABEL_24;
  }

  if (!os_log_GKGeneral)
  {
    v15 = GKOSLoggers();
  }

  v16 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_227904000, v16, OS_LOG_TYPE_INFO, "Found an invite declined due to incompatible transport version. Show the alert for users to upgrade.", buf, 2u);
  }

  v45[0] = @"user-id";
  v17 = [v5 peerID];
  v46[0] = v17;
  v45[1] = @"y";
  v18 = [v5 declineReason];
  v46[1] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];

  v20 = [MEMORY[0x277CCAB98] defaultCenter];
  v21 = +[GKLocalPlayer localPlayer];
  [v20 postNotificationName:@"GKInviteeDeclinedGameInvite" object:v21 userInfo:v19];

LABEL_25:
  v35 = *MEMORY[0x277D85DE8];
}

void __29__GKMatchmaker_lookForInvite__block_invoke_83(uint64_t a1)
{
  if ([*(a1 + 32) isHosted])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __29__GKMatchmaker_lookForInvite__block_invoke_2_84;
    v11[3] = &unk_2785DE4C8;
    v2 = *(a1 + 40);
    v11[4] = *(a1 + 48);
    v12 = *(a1 + 32);
    v13 = *(a1 + 56);
    v14 = *(a1 + 64);
    [v2 perform:v11];

    v3 = v12;
  }

  else
  {
    [*(a1 + 56) setAcceptedInvite:*(a1 + 32)];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __29__GKMatchmaker_lookForInvite__block_invoke_89;
    v6[3] = &unk_2785DF3E0;
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    v9 = v4;
    v10 = v5;
    dispatch_async(MEMORY[0x277D85CD0], v6);
    lookForInvite_lookingForInvite = 0;

    v3 = v7;
  }
}

void __29__GKMatchmaker_lookForInvite__block_invoke_2_84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __29__GKMatchmaker_lookForInvite__block_invoke_3_85;
  v11[3] = &unk_2785DDFB8;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  *&v8 = *(a1 + 40);
  *(&v8 + 1) = *(a1 + 32);
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v12 = v9;
  v13 = v8;
  v14 = v3;
  v10 = v3;
  [v4 respondToHostedInvite:v5 completionHandler:v11];
}

void __29__GKMatchmaker_lookForInvite__block_invoke_3_85(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __29__GKMatchmaker_lookForInvite__block_invoke_3_85_cold_1();
    }
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __29__GKMatchmaker_lookForInvite__block_invoke_4_86;
    v12[3] = &unk_2785DF3E0;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    *&v10 = *(a1 + 48);
    *(&v10 + 1) = *(a1 + 56);
    *&v11 = v8;
    *(&v11 + 1) = v9;
    v13 = v11;
    v14 = v10;
    dispatch_async(MEMORY[0x277D85CD0], v12);
  }

  lookForInvite_lookingForInvite = 0;
  (*(*(a1 + 64) + 16))(*(a1 + 64), v5, v6, v7);
}

void __29__GKMatchmaker_lookForInvite__block_invoke_4_86(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"GKAcceptedGameInvite" object:*(a1 + 32) userInfo:*(a1 + 40)];

  v3 = [*(a1 + 32) eventEmitter];
  v4 = [v3 listenerRegisteredForSelector:sel_player_didAcceptInvite_];

  if ((v4 & 1) == 0)
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
    {
      __29__GKMatchmaker_lookForInvite__block_invoke_4_86_cold_1();
    }
  }

  v6 = [*(a1 + 32) eventEmitter];
  [v6 player:*(a1 + 32) didAcceptInvite:*(a1 + 48)];

  v7 = [*(a1 + 56) inviteHandler];

  if (v7)
  {
    v8 = [*(a1 + 56) inviteHandler];
    v8[2](v8, *(a1 + 48), 0);
  }
}

void __29__GKMatchmaker_lookForInvite__block_invoke_89(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"GKAcceptedGameInvite" object:*(a1 + 32) userInfo:*(a1 + 40)];

  v3 = [*(a1 + 32) eventEmitter];
  v4 = [v3 listenerRegisteredForSelector:sel_player_didAcceptInvite_];

  if ((v4 & 1) == 0)
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
    {
      __29__GKMatchmaker_lookForInvite__block_invoke_4_86_cold_1();
    }
  }

  v6 = [*(a1 + 32) eventEmitter];
  [v6 player:*(a1 + 32) didAcceptInvite:*(a1 + 48)];

  v7 = [*(a1 + 56) inviteHandler];

  if (v7)
  {
    v8 = [*(a1 + 56) inviteHandler];
    v8[2](v8, *(a1 + 48), 0);
  }
}

void __29__GKMatchmaker_lookForInvite__block_invoke_90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 multiplayerService];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __29__GKMatchmaker_lookForInvite__block_invoke_2_91;
  v9[3] = &unk_2785DE568;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v6;
  v11 = v7;
  v12 = v3;
  v8 = v3;
  [v5 getPlayersToInviteWithHandlerV2:v9];
}

void __29__GKMatchmaker_lookForInvite__block_invoke_2_91(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [a2 _gkPlayersFromInternals];
  v4 = [v3 _gkPlayersIDsFromPlayers];
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v20 = v3;
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "got players to invite: %@", buf, 0xCu);
  }

  if (v3)
  {
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 postNotificationName:@"GKPlayersToInviteNotification" object:*(a1 + 32) userInfo:0];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __29__GKMatchmaker_lookForInvite__block_invoke_92;
    v14[3] = &unk_2785DF3E0;
    v15 = *(a1 + 32);
    v16 = v3;
    v11 = v4;
    v12 = *(a1 + 40);
    v17 = v11;
    v18 = v12;
    dispatch_async(MEMORY[0x277D85CD0], v14);
  }

  lookForInvite_lookingForInvite = 0;
  (*(*(a1 + 48) + 16))(*(a1 + 48), v7, v8, v9);

  v13 = *MEMORY[0x277D85DE8];
}

void __29__GKMatchmaker_lookForInvite__block_invoke_92(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) eventEmitter];
  if ([v2 listenerRegisteredForSelector:sel_player_didRequestMatchWithRecipients_])
  {
    if (([v2 listenerRegisteredForSelector:sel_player_didRequestMatchWithRecipients_] & 1) == 0)
    {
      if (!os_log_GKGeneral)
      {
        v3 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
      {
        __29__GKMatchmaker_lookForInvite__block_invoke_92_cold_2();
      }
    }

    [v2 player:*(a1 + 32) didRequestMatchWithRecipients:*(a1 + 40)];
    if ([v2 listenerRegisteredForSelector:sel_player_didRequestMatchWithPlayers_])
    {
      if (!os_log_GKGeneral)
      {
        v4 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
      {
        __29__GKMatchmaker_lookForInvite__block_invoke_92_cold_3();
      }
    }
  }

  else if ([v2 listenerRegisteredForSelector:sel_player_didRequestMatchWithPlayers_])
  {
    if (GKApplicationLinkedOnOrAfter(917504, 659456))
    {
      if (!os_log_GKGeneral)
      {
        v5 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
      {
        __29__GKMatchmaker_lookForInvite__block_invoke_92_cold_1();
      }
    }

    else
    {
      [v2 player:*(a1 + 32) didRequestMatchWithPlayers:*(a1 + 48)];
    }
  }

  v6 = [*(a1 + 56) inviteHandler];

  if (v6)
  {
    v7 = GKApplicationLinkedOnOrAfter(917504, 659456);
    v8 = [*(a1 + 56) inviteHandler];
    v9 = v8;
    if (v7)
    {
      v12[0] = @"playerID is no longer available";
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
      (v9)[2](v9, 0, v10);
    }

    else
    {
      (*(v8 + 16))(v8, 0, *(a1 + 48));
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldRunGroupActivityWithDescription:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCA8D8] _gkMainBundleIsGameCenterSystemProcess];
  if (v4)
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v3;
      _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "Will not do: %@, for Game Center internal processes.", &v14, 0xCu);
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    v8 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      v9 = MEMORY[0x277CCACC8];
      v10 = v8;
      v11 = [v9 callStackSymbols];
      v14 = 138412546;
      v15 = v3;
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_227904000, v10, OS_LOG_TYPE_INFO, "%@, callStacK: %@", &v14, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v4 ^ 1;
}

- (BOOL)isEligibleForGroupSession
{
  v3 = [(GKMatchmaker *)self shouldRunGroupActivityWithDescription:@"isEligibleForGroupSession"];
  if (v3)
  {
    v4 = [(GKMatchmaker *)self groupActivityManager];
    v5 = [v4 isEligibleForGroupSession];

    LOBYTE(v3) = v5;
  }

  return v3;
}

- (BOOL)isEntitledToUseGroupActivities
{
  if (_os_feature_enabled_impl())
  {

    return +[GKEntitledContextProvider hasBooleanPublicGameCenterEntitlement];
  }

  else
  {

    return +[GKEntitledContextProvider hasPublicGroupActivitiesEntitlement];
  }
}

- (void)activateGroupActivityWithHandler:(id)a3
{
  v4 = a3;
  if ([(GKMatchmaker *)self shouldRunGroupActivityWithDescription:@"activateGroupActivity"])
  {
    v5 = [(GKMatchmaker *)self groupActivityManager];
    v6 = +[GKGame currentGame];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __49__GKMatchmaker_activateGroupActivityWithHandler___block_invoke;
    v7[3] = &unk_2785DE008;
    v8 = v4;
    [v5 activateWithGame:v6 completionHandler:v7];
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

- (void)changeGroupActivityStateToGameStarted
{
  if ([(GKMatchmaker *)self shouldRunGroupActivityWithDescription:@"changeGroupActivityStateToGameStarted"])
  {
    v3 = [(GKMatchmaker *)self groupActivityManager];
    [v3 startGame];
  }
}

- (void)endGroupActivity
{
  if ([(GKMatchmaker *)self shouldRunGroupActivityWithDescription:@"endGroupActivity"])
  {
    v3 = [(GKMatchmaker *)self groupActivityManager];
    [v3 endWithCompletionHandler:&__block_literal_global_27];
  }
}

void __32__GKMatchmaker_endGroupActivity__block_invoke()
{
  if (!os_log_GKGeneral)
  {
    v0 = GKOSLoggers();
  }

  v1 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_227904000, v1, OS_LOG_TYPE_INFO, "endGroupActivity completed.", v2, 2u);
  }
}

- (void)playerDisconnected:(id)a3
{
  v5 = a3;
  if ([(GKMatchmaker *)self shouldRunGroupActivityWithDescription:@"playerDisconnected"])
  {
    v4 = [(GKMatchmaker *)self groupActivityManager];
    [v4 playerDisconnectWithPlayer:v5 completionHandler:&__block_literal_global_130_0];
  }
}

void __35__GKMatchmaker_playerDisconnected___block_invoke()
{
  if (!os_log_GKGeneral)
  {
    v0 = GKOSLoggers();
  }

  v1 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_227904000, v1, OS_LOG_TYPE_INFO, "playerDisconnected completed.", v2, 2u);
  }
}

- (id)sharingControllerItemProvider
{
  v2 = [(GKMatchmaker *)self groupActivityManager];
  v3 = +[GKGame currentGame];
  v8 = 0;
  v4 = [v2 sharingControllerItemProviderWithGame:v3 error:&v8];
  v5 = v8;

  if (v5)
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      [GKMatchmaker sharingControllerItemProvider];
    }
  }

  return v4;
}

- (void)leaveGroupActivity
{
  if ([(GKMatchmaker *)self shouldRunGroupActivityWithDescription:@"leaveGroupActivity"])
  {
    v3 = [(GKMatchmaker *)self groupActivityManager];
    [v3 leaveWithCompletionHandler:&__block_literal_global_135];
  }
}

void __34__GKMatchmaker_leaveGroupActivity__block_invoke()
{
  if (!os_log_GKGeneral)
  {
    v0 = GKOSLoggers();
  }

  v1 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_227904000, v1, OS_LOG_TYPE_INFO, "leaveGroupActivity completed", v2, 2u);
  }
}

- (void)resetGroupActivity
{
  if ([(GKMatchmaker *)self shouldRunGroupActivityWithDescription:@"resetGroupActivity"])
  {
    v3 = [(GKMatchmaker *)self groupActivityManager];
    [v3 resetWithCompletionHandler:&__block_literal_global_140];
  }
}

void __34__GKMatchmaker_resetGroupActivity__block_invoke()
{
  if (!os_log_GKGeneral)
  {
    v0 = GKOSLoggers();
  }

  v1 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_227904000, v1, OS_LOG_TYPE_INFO, "resetGroupActivity completed.", v2, 2u);
  }
}

- (void)sendGroupActivityInviteTo:(id)a3 participantID:(id)a4 pushToken:(id)a5
{
  v15[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(GKMatchmaker *)self shouldRunGroupActivityWithDescription:@"groupActivityInvitePlayer"])
  {
    v14[0] = @"player";
    v14[1] = @"pushToken";
    v15[0] = v8;
    v15[1] = v10;
    v14[2] = @"participantIdentifier";
    v15[2] = v9;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 postNotificationName:@"GKGroupActivityPlayerToInviteNotification" object:0 userInfo:v11];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)lookForGroupActivities
{
  if ([(GKMatchmaker *)self shouldRunGroupActivityWithDescription:@"lookForGroupActivities"])
  {
    v3 = [(GKMatchmaker *)self groupActivityManager];
    [v3 startLookingForSessions];
  }
}

- (void)showSharePlayMatchDeclinedToJoinAlertWithReason:(int64_t)a3
{
  if ([(GKMatchmaker *)self shouldRunGroupActivityWithDescription:@"showSharePlayMatchDeclinedToJoinAlertWithReason"])
  {
    v4 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings SHAREPLAY_DECLINE_UNKNOWN];
    v5 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings SHAREPLAY_DECLINE_UNKNOWN_MESSAGE];
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        v6 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings SHAREPLAY_DECLINE_GAME_IS_FULL];

        v7 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings SHAREPLAY_DECLINE_GAME_IS_FULL_MESSAGE];

        if (!os_log_GKGeneral)
        {
          v18 = GKOSLoggers();
        }

        v9 = os_log_GKTrace;
        if (!os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
        {
          goto LABEL_25;
        }

        *v31 = 0;
        v10 = "showSharePlayMatchFullAlert";
        v11 = v31;
        goto LABEL_24;
      }

      if (a3 == 2)
      {
        v6 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings SHAREPLAY_DECLINE_GAME_HAS_STARTED];

        v7 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings SHAREPLAY_DECLINE_GAME_HAS_STARTED_MESSAGE];

        if (!os_log_GKGeneral)
        {
          v8 = GKOSLoggers();
        }

        v9 = os_log_GKTrace;
        if (!os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
        {
          goto LABEL_25;
        }

        v30 = 0;
        v10 = "showSharePlayGameHasStartedAlert";
        v11 = &v30;
LABEL_24:
        _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, v10, v11, 2u);
LABEL_25:
        v19 = NSSelectorFromString(&cfstr_Showalertwitht.isa);
        v20 = +[GKLocalPlayer local];
        v21 = objc_opt_respondsToSelector();

        if (v21)
        {
          v22 = +[GKLocalPlayer local];
          [v22 _gkPerformSelector:v19 withObject:v6 withObject:v7];
        }

        else
        {
          if (!os_log_GKGeneral)
          {
            v23 = GKOSLoggers();
          }

          v24 = os_log_GKMatch;
          if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
          {
            *v26 = 0;
            _os_log_impl(&dword_227904000, v24, OS_LOG_TYPE_INFO, "showSharePlayMatchFullAlert failed since localPlayer does not respond to selector showAlertWithTitle:andMessage:", v26, 2u);
          }
        }

        v5 = v7;
        v4 = v6;
        goto LABEL_37;
      }

LABEL_15:
      if (!os_log_GKGeneral)
      {
        v16 = GKOSLoggers();
      }

      v17 = os_log_GKTrace;
      if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_227904000, v17, OS_LOG_TYPE_INFO, "showSharePlayUnknownAlert", buf, 2u);
      }

      v7 = v5;
      v6 = v4;
      goto LABEL_25;
    }

    if (a3 == 3)
    {
      if (!os_log_GKGeneral)
      {
        v25 = GKOSLoggers();
      }

      v13 = os_log_GKMatch;
      if (!os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        goto LABEL_37;
      }

      *v29 = 0;
      v14 = "Previously joined. Sorry but you cannot join at this time since you have previously joined this session. Please try in the next session.";
      v15 = v29;
    }

    else
    {
      if (a3 != 4)
      {
        goto LABEL_15;
      }

      if (!os_log_GKGeneral)
      {
        v12 = GKOSLoggers();
      }

      v13 = os_log_GKMatch;
      if (!os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        goto LABEL_37;
      }

      v28 = 0;
      v14 = "Game over. Sorry but you cannot join at this time since this game is over. Please try in the next session.";
      v15 = &v28;
    }

    _os_log_impl(&dword_227904000, v13, OS_LOG_TYPE_INFO, v14, v15, 2u);
LABEL_37:
  }
}

- (void)setInviteHandler:(void *)inviteHandler
{
  if (self->_inviteHandler != inviteHandler)
  {
    v5 = [inviteHandler copy];
    v6 = self->_inviteHandler;
    self->_inviteHandler = v5;

    [(GKMatchmaker *)self updateNearbyAdvertising];

    [(GKMatchmaker *)self lookForInvite];
  }
}

- (void)respondToHostedInvite:(id)a3 completionHandler:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v28 = v5;
    _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_INFO, "Matchmaking respond to hosted invite: %@", buf, 0xCu);
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMatchmaker.m", 628, "-[GKMatchmaker respondToHostedInvite:completionHandler:]"];
  v10 = [GKDispatchGroup dispatchGroupWithName:v9];

  v11 = [GKTransportContext alloc];
  v12 = +[GKGame currentGame];
  v13 = [v12 internal];
  v14 = [v13 supportedTransports];
  v15 = [(GKTransportContext *)v11 initWithSupportedTransports:v14];

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __56__GKMatchmaker_respondToHostedInvite_completionHandler___block_invoke;
  v23[3] = &unk_2785DD910;
  v16 = v5;
  v24 = v16;
  v17 = v15;
  v25 = v17;
  v18 = v10;
  v26 = v18;
  [v18 perform:v23];
  if (v6)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __56__GKMatchmaker_respondToHostedInvite_completionHandler___block_invoke_163;
    v20[3] = &unk_2785DDC10;
    v22 = v6;
    v21 = v18;
    [v21 notifyOnMainQueueWithBlock:v20];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __56__GKMatchmaker_respondToHostedInvite_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 multiplayerService];
  v6 = [*(a1 + 32) internal];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__GKMatchmaker_respondToHostedInvite_completionHandler___block_invoke_2;
  v9[3] = &unk_2785DF458;
  v7 = *(a1 + 40);
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v12 = v3;
  v8 = v3;
  [v5 acceptGameInvite:v6 transportContext:v7 handler:v9];
}

void __56__GKMatchmaker_respondToHostedInvite_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __56__GKMatchmaker_respondToHostedInvite_completionHandler___block_invoke_2_cold_1();
    }
  }

  else
  {
    if ([*(a1 + 32) isCancelled])
    {
      v7 = [MEMORY[0x277CCA9B8] userErrorForCode:2 underlyingError:0];
    }

    else
    {
      v7 = 0;
    }

    v9 = +[GKLocalPlayer localPlayer];
    [v9 setAcceptedInvite:0];
  }

  [*(a1 + 40) setError:v7];
  (*(*(a1 + 48) + 16))();
}

void __56__GKMatchmaker_respondToHostedInvite_completionHandler___block_invoke_163(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) error];
  (*(v1 + 16))(v1, v2);
}

- (id)newMatch
{
  v3 = [GKMatch alloc];

  return [(GKMatch *)v3 initWithMatchmaker:self];
}

- (void)matchForNearbyInvite:(id)a3 handler:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(GKMatchmaker *)self setInviteApproach:3];
  v8 = [v6 sender];
  v9 = [v8 internal];
  v10 = [v9 playerID];
  [(GKMatchmaker *)self setInviterPlayerID:v10];

  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
  }

  v12 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v26 = v6;
    _os_log_impl(&dword_227904000, v12, OS_LOG_TYPE_INFO, "Match for nearby invite: %@", buf, 0xCu);
  }

  v13 = [(GKMatchmaker *)self newMatch];
  v14 = +[GKDaemonProxy proxyForLocalPlayer];
  v15 = [v14 multiplayerService];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __45__GKMatchmaker_matchForNearbyInvite_handler___block_invoke;
  v20[3] = &unk_2785DF480;
  v21 = v13;
  v22 = self;
  v23 = v6;
  v24 = v7;
  v16 = v7;
  v17 = v6;
  v18 = v13;
  [v15 fetchTransportOverrideWithHandler:v20];

  v19 = *MEMORY[0x277D85DE8];
}

void __45__GKMatchmaker_matchForNearbyInvite_handler___block_invoke(id *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1[4];
  v8 = a3;
  v9 = a2;
  v10 = [v7 transportContext];
  [v10 updateWithForceEnabledTransports:v9 forceDisabledTransports:v8 andHealthMonitorEnabled:a4];

  v11 = [a1[4] nearbyConnectionData];
  [a1[5] acceptNearbyInvite:a1[6] connectionData:v11];
  v12 = a1[4];
  v13 = [a1[6] sender];
  v14 = [a1[6] internal];
  v15 = [v14 peerBlob];
  [v12 connectToNearbyPlayer:v13 withConnectionData:v15];

  v16 = +[GKLocalPlayer localPlayer];
  [v16 setAcceptedInvite:0];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __45__GKMatchmaker_matchForNearbyInvite_handler___block_invoke_2;
  v17[3] = &unk_2785DDC10;
  v19 = a1[7];
  v18 = a1[4];
  dispatch_async(MEMORY[0x277D85CD0], v17);
}

uint64_t __45__GKMatchmaker_matchForNearbyInvite_handler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), 0);
  }

  return result;
}

- (void)matchForRemoteInvite:(id)a3 completionHandler:(id)a4
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 sender];
  v9 = [v8 internal];
  v10 = [v9 playerID];
  [(GKMatchmaker *)self setInviterPlayerID:v10];

  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
  }

  v12 = os_log_GKMatch;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v6 internal];
    v14 = [v13 isNearbyInvite];
    if (v14)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@" nearby"];
    }

    else
    {
      v15 = &stru_283AFD1E0;
    }

    *buf = 138412546;
    v44 = v15;
    v45 = 2112;
    v46 = v6;
    _os_log_impl(&dword_227904000, v12, OS_LOG_TYPE_INFO, "Match for remote%@ invite: %@", buf, 0x16u);
    if (v14)
    {
    }
  }

  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMatchmaker.m", 689, "-[GKMatchmaker matchForRemoteInvite:completionHandler:]"];
  v17 = [GKDispatchGroup dispatchGroupWithName:v16];

  v18 = [MEMORY[0x277CCAD78] UUID];
  v19 = MEMORY[0x277CCACA8];
  v20 = [v18 UUIDString];
  v21 = [v19 stringWithFormat:@"com.apple.GameKit.matchmaker.remote.%@", v20];
  v22 = [v21 UTF8String];

  if (!os_log_GKGeneral)
  {
    v23 = GKOSLoggers();
  }

  v24 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v44 = v22;
    _os_log_impl(&dword_227904000, v24, OS_LOG_TYPE_INFO, "Created an invitee inner queue with label: %s", buf, 0xCu);
  }

  v25 = dispatch_queue_create(v22, 0);
  v26 = dispatch_semaphore_create(0);
  v27 = [(GKMatchmaker *)self invitationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__GKMatchmaker_matchForRemoteInvite_completionHandler___block_invoke;
  block[3] = &unk_2785DF548;
  v36 = v18;
  v37 = v17;
  v38 = v25;
  v39 = self;
  v40 = v26;
  v41 = v6;
  v42 = v7;
  v28 = v7;
  v29 = v6;
  v30 = v26;
  v31 = v25;
  v32 = v17;
  v33 = v18;
  dispatch_async(v27, block);

  v34 = *MEMORY[0x277D85DE8];
}

void __55__GKMatchmaker_matchForRemoteInvite_completionHandler___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = [v4 UUIDString];
    *buf = 138412290;
    v46 = v6;
    _os_log_impl(&dword_227904000, v5, OS_LOG_TYPE_INFO, "Entering invitee queue with inner UUID: %@", buf, 0xCu);
  }

  [*(a1 + 40) enter];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__GKMatchmaker_matchForRemoteInvite_completionHandler___block_invoke_176;
  block[3] = &unk_2785DDB40;
  v7 = *(a1 + 48);
  block[4] = *(a1 + 56);
  v43 = *(a1 + 40);
  v44 = *(a1 + 64);
  dispatch_async(v7, block);
  [*(a1 + 40) enter];
  v8 = *(a1 + 48);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __55__GKMatchmaker_matchForRemoteInvite_completionHandler___block_invoke_177;
  v37[3] = &unk_2785DF3E0;
  v38 = *(a1 + 64);
  v9 = *(a1 + 40);
  v10 = *(a1 + 56);
  v39 = v9;
  v40 = v10;
  v41 = *(a1 + 72);
  dispatch_async(v8, v37);
  [*(a1 + 40) enter];
  v11 = *(a1 + 48);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __55__GKMatchmaker_matchForRemoteInvite_completionHandler___block_invoke_2_187;
  v33[3] = &unk_2785DDB40;
  v34 = *(a1 + 64);
  v12 = *(a1 + 40);
  v13 = *(a1 + 56);
  v35 = v12;
  v36 = v13;
  dispatch_async(v11, v33);
  [*(a1 + 40) enter];
  v14 = *(a1 + 48);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __55__GKMatchmaker_matchForRemoteInvite_completionHandler___block_invoke_195;
  v28[3] = &unk_2785DF3E0;
  v29 = *(a1 + 64);
  v30 = *(a1 + 40);
  v15 = *(a1 + 72);
  v16 = *(a1 + 56);
  v31 = v15;
  v32 = v16;
  dispatch_async(v14, v28);
  if ([*(a1 + 40) waitWithTimeout:60.0])
  {
    if (!os_log_GKGeneral)
    {
      v17 = GKOSLoggers();
    }

    v18 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_227904000, v18, OS_LOG_TYPE_INFO, "Timeout handling matchForRemoteInvite.", buf, 2u);
    }

    v19 = [MEMORY[0x277CCA9B8] userErrorForCode:28 description:@"Connection timeout."];
    [*(a1 + 40) setError:v19];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v20 = GKOSLoggers();
    }

    v21 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_227904000, v21, OS_LOG_TYPE_INFO, "Done handling matchForRemoteInvite.", buf, 2u);
    }
  }

  v22 = *(a1 + 80);
  if (v22)
  {
    v23 = *(a1 + 40);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __55__GKMatchmaker_matchForRemoteInvite_completionHandler___block_invoke_208;
    v25[3] = &unk_2785DDC10;
    v27 = v22;
    v26 = *(a1 + 40);
    [v23 notifyOnMainQueueWithBlock:v25];
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __55__GKMatchmaker_matchForRemoteInvite_completionHandler___block_invoke_176(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__GKMatchmaker_matchForRemoteInvite_completionHandler___block_invoke_2;
  v3[3] = &unk_2785DEF60;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 loadConnectivitySettingsWithCompletionHandler:v3];
}

void __55__GKMatchmaker_matchForRemoteInvite_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) setError:v3];
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __55__GKMatchmaker_matchForRemoteInvite_completionHandler___block_invoke_2_cold_1();
    }
  }

  [*(a1 + 32) leave];
  dispatch_semaphore_signal(*(a1 + 40));
}

void __55__GKMatchmaker_matchForRemoteInvite_completionHandler___block_invoke_177(uint64_t a1)
{
  dispatch_semaphore_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  v2 = [*(a1 + 40) error];

  if (v2)
  {
    [*(a1 + 40) leave];
    v3 = *(a1 + 32);

    dispatch_semaphore_signal(v3);
  }

  else
  {
    v4 = [*(a1 + 48) match];

    if (!v4)
    {
      v5 = [*(a1 + 48) newMatch];
      [*(a1 + 48) setMatch:v5];
    }

    v6 = +[GKDaemonProxy proxyForLocalPlayer];
    v7 = [v6 multiplayerService];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __55__GKMatchmaker_matchForRemoteInvite_completionHandler___block_invoke_2_178;
    v13[3] = &unk_2785DF4A8;
    v12 = *(a1 + 48);
    v8 = *(&v12 + 1);
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    *&v11 = v9;
    *(&v11 + 1) = v10;
    v14 = v12;
    v15 = v11;
    [v7 fetchTransportOverrideWithHandler:v13];
  }
}

void __55__GKMatchmaker_matchForRemoteInvite_completionHandler___block_invoke_2_178(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = (a1 + 32);
  v8 = *(a1 + 32);
  v9 = a3;
  v10 = a2;
  v11 = [v8 match];
  v12 = [v11 transportContext];
  [v12 updateWithForceEnabledTransports:v10 forceDisabledTransports:v9 andHealthMonitorEnabled:a4];

  v13 = [*v7 match];
  v14 = [v13 transportContext];
  v15 = [*(a1 + 40) internal];
  LODWORD(v12) = [v14 supportsTransportRequiredInTheInvite:v15];

  if (v12)
  {
    [*(a1 + 48) leave];
    v16 = *(a1 + 56);

    dispatch_semaphore_signal(v16);
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v17 = GKOSLoggers();
    }

    v18 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __55__GKMatchmaker_matchForRemoteInvite_completionHandler___block_invoke_2_178_cold_1((a1 + 40), v18, v7);
    }

    if (!os_log_GKGeneral)
    {
      v19 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
    {
      __55__GKMatchmaker_matchForRemoteInvite_completionHandler___block_invoke_2_178_cold_2();
    }

    v20 = [MEMORY[0x277CCA9B8] userErrorForCode:28 description:@"The Game Center entitlement is required to use multiplayer."];
    [*(a1 + 48) setError:v20];

    v21 = +[GKAPIReporter reporter];
    [v21 recordMultiplayerErrorID:@"remoteInviteTransportNotSupported"];

    v22 = +[GKDaemonProxy proxyForLocalPlayer];
    v23 = [v22 multiplayerService];
    v24 = [*(a1 + 40) internal];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __55__GKMatchmaker_matchForRemoteInvite_completionHandler___block_invoke_186;
    v25[3] = &unk_2785DEBA8;
    v26 = *(a1 + 48);
    v27 = *(a1 + 56);
    [v23 declineGameInvite:v24 reason:6 handler:v25];
  }
}

intptr_t __55__GKMatchmaker_matchForRemoteInvite_completionHandler___block_invoke_186(uint64_t a1)
{
  [*(a1 + 32) leave];
  v2 = *(a1 + 40);

  return dispatch_semaphore_signal(v2);
}

void __55__GKMatchmaker_matchForRemoteInvite_completionHandler___block_invoke_2_187(uint64_t a1)
{
  dispatch_semaphore_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  v2 = [*(a1 + 40) error];

  if (v2)
  {
    [*(a1 + 40) leave];
    v3 = *(a1 + 32);

    dispatch_semaphore_signal(v3);
  }

  else
  {
    v4 = [*(a1 + 48) match];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __55__GKMatchmaker_matchForRemoteInvite_completionHandler___block_invoke_3;
    v7[3] = &unk_2785DF4D0;
    v6 = *(a1 + 40);
    v5 = v6.i64[0];
    v8 = vextq_s8(v6, v6, 8uLL);
    v9 = *(a1 + 32);
    [v4 getLocalConnectionDataWithCompletionHandler:v7];
  }
}

void __55__GKMatchmaker_matchForRemoteInvite_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    v8 = [*(a1 + 32) match];
    v9 = [v8 transportContext];
    [v9 updateForInviteAcceptWithConnectionData:v5];
LABEL_4:

    goto LABEL_11;
  }

  if (v6)
  {
    [*(a1 + 40) setError:v6];
  }

  else
  {
    v10 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA450];
    v26[0] = @"match:getLocalConnectionDataWithCompletionHandler returned with no data";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v12 = [v10 userErrorForCode:3 userInfo:v11];
    [*(a1 + 40) setError:v12];
  }

  if (!os_log_GKGeneral)
  {
    v13 = GKOSLoggers();
  }

  v14 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
  {
    if (v5)
    {
      v16 = &stru_283AFD1E0;
    }

    else
    {
      v16 = @"(empty data returned)";
    }

    v17 = *(a1 + 32);
    v8 = v14;
    v9 = [v17 match];
    v18 = [*(a1 + 40) error];
    v19 = 138412802;
    v20 = v16;
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v18;
    _os_log_error_impl(&dword_227904000, v8, OS_LOG_TYPE_ERROR, "Error getting local connection data %@for match %@, error: %@", &v19, 0x20u);

    goto LABEL_4;
  }

LABEL_11:
  [*(a1 + 40) leave];
  dispatch_semaphore_signal(*(a1 + 48));

  v15 = *MEMORY[0x277D85DE8];
}

void __55__GKMatchmaker_matchForRemoteInvite_completionHandler___block_invoke_195(uint64_t a1)
{
  dispatch_semaphore_wait(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL);
  v2 = [*(a1 + 40) error];

  if (v2)
  {
    [*(a1 + 40) leave];
    v3 = *(a1 + 32);

    dispatch_semaphore_signal(v3);
  }

  else
  {
    v4 = [*(a1 + 48) internal];
    v5 = [v4 sessionToken];

    v6 = [*(a1 + 56) match];
    v7 = [*(a1 + 48) sender];
    [v6 preLoadInviter:v7 sessionToken:v5];

    v8 = +[GKDaemonProxy proxyForLocalPlayer];
    v9 = [v8 multiplayerService];
    v10 = [*(a1 + 48) internal];
    v11 = [*(a1 + 56) match];
    v12 = [v11 transportContext];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __55__GKMatchmaker_matchForRemoteInvite_completionHandler___block_invoke_2_196;
    v15[3] = &unk_2785DF520;
    v16 = *(a1 + 40);
    v17 = *(a1 + 32);
    v14 = *(a1 + 48);
    v13 = v14.i64[0];
    v18 = vextq_s8(v14, v14, 8uLL);
    [v9 acceptGameInvite:v10 transportContext:v12 handler:v15];
  }
}

void __55__GKMatchmaker_matchForRemoteInvite_completionHandler___block_invoke_2_196(uint64_t a1, void *a2, void *a3)
{
  v76 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_FAULT))
    {
      __55__GKMatchmaker_matchForRemoteInvite_completionHandler___block_invoke_2_196_cold_1();
    }

    [*(a1 + 32) setError:v6];
    [*(a1 + 32) leave];
    dispatch_semaphore_signal(*(a1 + 40));
  }

  else
  {
    v8 = [v5 responsePlist];
    v9 = *(a1 + 32);
    v10 = [*(a1 + 48) match];
    [v9 setObject:v10 forKeyedSubscript:@"match"];

    v11 = +[GKLocalPlayer local];
    [v11 setAcceptedInvite:0];

    if ([*(a1 + 56) isCancelled])
    {
      v12 = [MEMORY[0x277CCA9B8] userErrorForCode:2 underlyingError:0];
      [*(a1 + 32) setError:v12];
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v13 = GKOSLoggers();
      }

      v14 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        v15 = v14;
        v16 = [v5 responsePlist];
        *buf = 138412290;
        v75 = v16;
        _os_log_impl(&dword_227904000, v15, OS_LOG_TYPE_INFO, "Invite accept response: %@", buf, 0xCu);
      }

      v17 = [*(a1 + 48) match];
      v18 = [v17 playerPushTokens];
      v19 = [*(a1 + 56) internal];
      v20 = [v19 peerPushToken];
      v21 = [*(a1 + 56) internal];
      v22 = [v21 peerID];
      [v18 setObject:v20 forKey:v22];

      v23 = +[GKReporter reporter];
      [v23 reportEvent:@"com.apple.GameKit.multiplayer.realtime.connectionResult" type:@"realtime.allMatchTotal"];

      v24 = [*(a1 + 56) internal];
      LODWORD(v19) = [v24 isMessageBasedInvite];

      v25 = +[GKReporter reporter];
      v26 = v25;
      v27 = v19 == 0;
      if (v19)
      {
        v28 = 2;
      }

      else
      {
        v28 = 1;
      }

      v29 = GKRTMessageBasedMatchTotal;
      if (v27)
      {
        v29 = GKRTPushBasedMatchTotal;
      }

      [v25 reportEvent:@"com.apple.GameKit.multiplayer.realtime.connectionResult" type:*v29];

      [*(a1 + 48) setInviteApproach:v28];
      v30 = [*(a1 + 48) match];
      v31 = [v30 transportContext];
      [v31 updateAfterAcceptingRemoveInvite:*(a1 + 56) acceptedResponse:v5];

      v32 = [*(a1 + 48) pendingInvitationUpdates];
      v33 = [*(a1 + 48) match];
      v34 = [v33 transportContext];
      v35 = [v34 sessionID];
      v12 = [v32 objectForKeyedSubscript:v35];

      if (v12)
      {
        if (!os_log_GKGeneral)
        {
          v36 = GKOSLoggers();
        }

        v37 = os_log_GKFastSync;
        if (os_log_type_enabled(os_log_GKFastSync, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v75 = v12;
          _os_log_impl(&dword_227904000, v37, OS_LOG_TYPE_INFO, "Has previous queued update: %@", buf, 0xCu);
        }

        v38 = [*(a1 + 48) match];
        v39 = [v38 transportContext];
        [v39 updateWithInviteUpdateInfo:v12];

        v40 = [*(a1 + 48) pendingInvitationUpdates];
        v41 = [*(a1 + 48) match];
        v42 = [v41 transportContext];
        v43 = [v42 sessionID];
        [v40 removeObjectForKey:v43];
      }

      if (!os_log_GKGeneral)
      {
        v44 = GKOSLoggers();
      }

      v45 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        v46 = *(a1 + 48);
        v47 = v45;
        v48 = [v46 match];
        v49 = [v48 transportContext];
        v50 = [v49 peerDictionaries];
        v51 = [v50 firstObject];
        *buf = 138412290;
        v75 = v51;
        _os_log_impl(&dword_227904000, v47, OS_LOG_TYPE_INFO, "Accepting peer's connectionData : %@", buf, 0xCu);
      }

      if (!os_log_GKGeneral)
      {
        v52 = GKOSLoggers();
      }

      v53 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_227904000, v53, OS_LOG_TYPE_INFO, "Accepted match for remote invite, starting connection...", buf, 2u);
      }

      v54 = [*(a1 + 48) match];
      v55 = [v54 transportContext];
      v56 = [v55 inviteeShouldAwaitInviteUpdate];

      if (v56)
      {
        v57 = [*(a1 + 48) match];
        v58 = [*(a1 + 56) sender];
        [v57 updateEventQueueForInviter:v58];
      }

      else
      {
        [*(a1 + 32) enter];
        v59 = [*(a1 + 48) match];
        v60 = [*(a1 + 56) sender];
        v73 = v60;
        v61 = [MEMORY[0x277CBEA60] arrayWithObjects:&v73 count:1];
        v62 = [*(a1 + 56) internal];
        v63 = [v62 version];
        v68[0] = MEMORY[0x277D85DD0];
        v68[1] = 3221225472;
        v68[2] = __55__GKMatchmaker_matchForRemoteInvite_completionHandler___block_invoke_200;
        v68[3] = &unk_2785DF4F8;
        v69 = *(a1 + 32);
        v64 = v8;
        v65 = *(a1 + 48);
        v66 = *(a1 + 56);
        v70 = v64;
        v71 = v65;
        v72 = v66;
        [v59 connectToPlayers:v61 version:v63 invitedByLocalPlayer:0 completionHandler:v68];

        v57 = v69;
      }
    }

    [*(a1 + 32) leave];
    dispatch_semaphore_signal(*(a1 + 40));
  }

  v67 = *MEMORY[0x277D85DE8];
}

uint64_t __55__GKMatchmaker_matchForRemoteInvite_completionHandler___block_invoke_200(id *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [MEMORY[0x277CCA9B8] userErrorForCode:28 underlyingError:a2];
    [a1[4] setError:v3];
  }

  else
  {
    v6 = +[GKPreferences shared];
    v7 = [v6 preemptiveRelay];

    if (!v7)
    {
      goto LABEL_4;
    }

    v3 = [a1[5] objectForKey:@"relay-type"];
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v3;
      _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "Using preemptive relay, relay-type from response %@", &v15, 0xCu);
    }

    if (v3)
    {
      if (!os_log_GKGeneral)
      {
        v10 = GKOSLoggers();
      }

      v11 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_227904000, v11, OS_LOG_TYPE_INFO, "preemptive relay accept response", &v15, 2u);
      }

      v12 = [a1[6] match];
      v13 = a1[5];
      v14 = [a1[7] sender];
      [v12 acceptRelayResponse:v13 player:v14];
    }
  }

LABEL_4:
  result = [a1[4] leave];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void __55__GKMatchmaker_matchForRemoteInvite_completionHandler___block_invoke_208(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"match"];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

- (void)matchForInvite:(GKInvite *)invite completionHandler:(void *)completionHandler
{
  v35[1] = *MEMORY[0x277D85DE8];
  v6 = invite;
  v7 = completionHandler;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    [GKMatchmaker matchForInvite:v6 completionHandler:v9];
  }

  v10 = +[GKReporter reporter];
  [v10 recordProgramaticInviteTimestamp];

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMatchmaker.m", 897, "-[GKMatchmaker matchForInvite:completionHandler:]"];
  v12 = [GKDispatchGroup dispatchGroupWithName:v11];

  if (v6)
  {
    if (![(GKInvite *)v6 isCancelled])
    {
      if ([(GKInvite *)v6 isNearby])
      {
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __49__GKMatchmaker_matchForInvite_completionHandler___block_invoke;
        v29[3] = &unk_2785DD910;
        v29[4] = self;
        v30 = v6;
        v31 = v12;
        [v31 perform:v29];

        v22 = v30;
      }

      else
      {
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __49__GKMatchmaker_matchForInvite_completionHandler___block_invoke_3;
        v26[3] = &unk_2785DD910;
        v26[4] = self;
        v27 = v6;
        v28 = v12;
        [v28 perform:v26];

        v22 = v27;
      }

      if (v7)
      {
        goto LABEL_18;
      }

      goto LABEL_19;
    }

    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      [GKMatchmaker matchForInvite:completionHandler:];
    }

    v14 = MEMORY[0x277CCA9B8];
    v32 = *MEMORY[0x277CCA450];
    v33 = @"matchForInvite:invite was cancelled";
    v15 = MEMORY[0x277CBEAC0];
    v16 = &v33;
    v17 = &v32;
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v18 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      [GKMatchmaker matchForInvite:completionHandler:];
    }

    v14 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA450];
    v35[0] = @"matchForInvite:invite doesn't exist";
    v15 = MEMORY[0x277CBEAC0];
    v16 = v35;
    v17 = &v34;
  }

  v19 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];
  v20 = [v14 userErrorForCode:2 userInfo:v19];
  [v12 setError:v20];

  if (v7)
  {
LABEL_18:
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __49__GKMatchmaker_matchForInvite_completionHandler___block_invoke_5;
    v23[3] = &unk_2785DDC10;
    v25 = v7;
    v24 = v12;
    [v24 notifyOnMainQueueWithBlock:v23];
  }

LABEL_19:

  v21 = *MEMORY[0x277D85DE8];
}

void __49__GKMatchmaker_matchForInvite_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__GKMatchmaker_matchForInvite_completionHandler___block_invoke_2;
  v7[3] = &unk_2785DF570;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v4 matchForNearbyInvite:v5 handler:v7];
}

uint64_t __49__GKMatchmaker_matchForInvite_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setObject:a2 forKeyedSubscript:@"match"];
  [*(a1 + 32) setError:v6];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void __49__GKMatchmaker_matchForInvite_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__GKMatchmaker_matchForInvite_completionHandler___block_invoke_4;
  v7[3] = &unk_2785DF570;
  v8 = *(a1 + 48);
  v9 = v3;
  v6 = v3;
  [v4 matchForRemoteInvite:v5 completionHandler:v7];
}

uint64_t __49__GKMatchmaker_matchForInvite_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setObject:a2 forKeyedSubscript:@"match"];
  [*(a1 + 32) setError:v6];

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void __49__GKMatchmaker_matchForInvite_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"match"];
  v3 = [*(a1 + 32) error];
  (*(v2 + 16))(v2, v4, v3);
}

- (void)reportResponse:(int64_t)a3 forInvitees:(id)a4 withCompletionHandler:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v12 = MEMORY[0x277CCABB0];
    v13 = v11;
    v14 = [v12 numberWithLong:a3];
    *buf = 138412546;
    v31 = v14;
    v32 = 2112;
    v33 = v8;
    _os_log_impl(&dword_227904000, v13, OS_LOG_TYPE_INFO, "Matchmaking reports response: %@  for invitees:%@", buf, 0x16u);
  }

  if (self->_recipientResponseHandler)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__GKMatchmaker_reportResponse_forInvitees_withCompletionHandler___block_invoke;
    block[3] = &unk_2785DF598;
    v26 = v8;
    v27 = self;
    v29 = a3;
    v28 = v9;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    if (!self->_inviteeResponseHandler)
    {
      if (!os_log_GKGeneral)
      {
        v17 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
      {
        [GKMatchmaker reportResponse:forInvitees:withCompletionHandler:];
        if (!v9)
        {
          goto LABEL_14;
        }
      }

      else if (!v9)
      {
        goto LABEL_14;
      }

      v9[2](v9);
      goto LABEL_14;
    }

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMatchmaker.m", 950, "-[GKMatchmaker reportResponse:forInvitees:withCompletionHandler:]"];
    v16 = [GKDispatchGroup dispatchGroupWithName:v15];

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __65__GKMatchmaker_reportResponse_forInvitees_withCompletionHandler___block_invoke_2;
    v21[3] = &unk_2785DE6E0;
    v22 = v8;
    v23 = self;
    v24 = a3;
    [v16 perform:v21];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __65__GKMatchmaker_reportResponse_forInvitees_withCompletionHandler___block_invoke_4;
    v19[3] = &unk_2785DD710;
    v20 = v9;
    [v16 notifyOnMainQueueWithBlock:v19];
  }

LABEL_14:

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __65__GKMatchmaker_reportResponse_forInvitees_withCompletionHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v8 = [*(a1 + 40) recipientResponseHandler];

        if (v8)
        {
          v9 = [*(a1 + 40) recipientResponseHandler];
          v9[2](v9, v7, *(a1 + 56));
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  result = (*(*(a1 + 48) + 16))();
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void __65__GKMatchmaker_reportResponse_forInvitees_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __65__GKMatchmaker_reportResponse_forInvitees_withCompletionHandler___block_invoke_3;
  v8[3] = &unk_2785DF598;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9 = v4;
  v10 = v5;
  v11 = v3;
  v12 = v6;
  v7 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

uint64_t __65__GKMatchmaker_reportResponse_forInvitees_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v8 = [*(a1 + 40) inviteeResponseHandler];

        if (v8)
        {
          v9 = [*(a1 + 40) inviteeResponseHandler];
          v10 = [v7 internal];
          v11 = [v10 playerID];
          (v9)[2](v9, v11, *(a1 + 56));
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  result = (*(*(a1 + 48) + 16))();
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __65__GKMatchmaker_reportResponse_forInvitees_withCompletionHandler___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)invitePlayersWithRequest:(id)a3 serverHosted:(BOOL)a4 onlineConnectionData:(id)a5 devicePushTokenMap:(id)a6 isNearbyInvite:(BOOL)a7 completionHandler:(id)a8
{
  v48 = a4;
  v49 = a7;
  v63 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a8;
  if (!os_log_GKGeneral)
  {
    v16 = GKOSLoggers();
  }

  v17 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v18 = MEMORY[0x277CCABB0];
    v19 = v17;
    v20 = [v18 numberWithBool:v48];
    v21 = [MEMORY[0x277CCABB0] numberWithBool:v49];
    *buf = 138412802;
    v58 = v12;
    v59 = 2112;
    v60 = v20;
    v61 = 2112;
    v62 = v21;
    _os_log_impl(&dword_227904000, v19, OS_LOG_TYPE_INFO, "Invite players with request: %@, hosted: %@, nearby: %@", buf, 0x20u);
  }

  v22 = [(GKMatchmaker *)self sharePlayInviteeTokensFromProgrammaticInvite];
  v23 = [v22 count];

  if (!v23)
  {
    v33 = [v12 internal];
    [v33 setArchivedSharePlayInviteeTokensFromProgrammaticInvite:0];
    goto LABEL_19;
  }

  if (!os_log_GKGeneral)
  {
    v24 = GKOSLoggers();
  }

  v25 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v26 = MEMORY[0x277CCABB0];
    v27 = v25;
    v28 = [(GKMatchmaker *)self sharePlayInviteeTokensFromProgrammaticInvite];
    v29 = [v26 numberWithUnsignedInteger:{objc_msgSend(v28, "count")}];
    *buf = 138412290;
    v58 = v29;
    _os_log_impl(&dword_227904000, v27, OS_LOG_TYPE_INFO, "There seems to be some invitees coming from SharePlay. Adding (%@) device push token(s).", buf, 0xCu);
  }

  v30 = MEMORY[0x277CCAAB0];
  v31 = [(GKMatchmaker *)self sharePlayInviteeTokensFromProgrammaticInvite];
  v56 = 0;
  v32 = [v30 archivedDataWithRootObject:v31 requiringSecureCoding:1 error:&v56];
  v33 = v56;

  if (v32)
  {
    v34 = [v12 internal];
    [v34 setArchivedSharePlayInviteeTokensFromProgrammaticInvite:v32];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v35 = GKOSLoggers();
    }

    v36 = os_log_GKMatch;
    if (!os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      goto LABEL_18;
    }

    v34 = v36;
    v37 = [(GKMatchmaker *)self sharePlayInviteeTokensFromProgrammaticInvite];
    *buf = 138412546;
    v58 = v37;
    v59 = 2112;
    v60 = v33;
    _os_log_impl(&dword_227904000, v34, OS_LOG_TYPE_INFO, "failed to archive shareplay invitees from programmatic invite. players: %@ error: %@", buf, 0x16u);
  }

LABEL_18:
LABEL_19:

  v38 = [(GKMatchmaker *)self match];

  if (!v38)
  {
    v39 = [(GKMatchmaker *)self newMatch];
    [(GKMatchmaker *)self setMatch:v39];
  }

  v40 = [(GKMatchmaker *)self match];
  v41 = [v40 transportContext];
  [v41 updateForInviteInitiationWithOnlineConnectionData:v13];

  v42 = +[GKDaemonProxy proxyForLocalPlayer];
  v43 = [v42 multiplayerService];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __127__GKMatchmaker_invitePlayersWithRequest_serverHosted_onlineConnectionData_devicePushTokenMap_isNearbyInvite_completionHandler___block_invoke;
  v50[3] = &unk_2785DF688;
  v50[4] = self;
  v51 = v12;
  v54 = v49;
  v55 = v48;
  v52 = v14;
  v53 = v15;
  v44 = v15;
  v45 = v14;
  v46 = v12;
  [v43 fetchTransportOverrideWithHandler:v50];

  v47 = *MEMORY[0x277D85DE8];
}

void __127__GKMatchmaker_invitePlayersWithRequest_serverHosted_onlineConnectionData_devicePushTokenMap_isNearbyInvite_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = a2;
  v10 = [v7 match];
  v11 = [v10 transportContext];
  [v11 updateWithForceEnabledTransports:v9 forceDisabledTransports:v8 andHealthMonitorEnabled:a4];

  v12 = +[GKDaemonProxy proxyForLocalPlayer];
  v13 = [v12 multiplayerService];
  v14 = [*(a1 + 40) internal];
  v15 = *(a1 + 48);
  v16 = *(a1 + 64);
  v17 = [*(a1 + 32) match];
  v18 = [v17 transportContext];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __127__GKMatchmaker_invitePlayersWithRequest_serverHosted_onlineConnectionData_devicePushTokenMap_isNearbyInvite_completionHandler___block_invoke_2;
  v20[3] = &unk_2785DF660;
  v19 = *(a1 + 40);
  v20[4] = *(a1 + 32);
  v23 = *(a1 + 65);
  v21 = v19;
  v22 = *(a1 + 56);
  [v13 invitePlayersForMatchRequest:v14 devicePushTokenMap:v15 isNearbyInvite:v16 transportContext:v18 handler:v20];
}

void __127__GKMatchmaker_invitePlayersWithRequest_serverHosted_onlineConnectionData_devicePushTokenMap_isNearbyInvite_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __127__GKMatchmaker_invitePlayersWithRequest_serverHosted_onlineConnectionData_devicePushTokenMap_isNearbyInvite_completionHandler___block_invoke_2_cold_1();
    }
  }

  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy__7;
  v38[4] = __Block_byref_object_dispose__7;
  v8 = v6;
  v39 = v8;
  v9 = [*(a1 + 32) match];
  v10 = [v5 approachUsed];
  v11 = [v10 unsignedIntValue];
  v12 = *(a1 + 56);
  v13 = [*(a1 + 40) internal];
  v14 = [v13 recipients];
  [v9 reportInviteSentWithApproach:v11 isHosted:v12 recipients:v14];

  v15 = [*(a1 + 32) match];
  v16 = [v15 transportContext];
  [v16 updateWithInviteInitiateResponse:v5];

  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMatchmaker.m", 1027, "-[GKMatchmaker invitePlayersWithRequest:serverHosted:onlineConnectionData:devicePushTokenMap:isNearbyInvite:completionHandler:]_block_invoke"];
  v18 = [GKDispatchGroup dispatchGroupWithName:v17];

  if ((*(a1 + 56) & 1) == 0)
  {
    v19 = [*(a1 + 32) match];
    v20 = [v19 transportContext];
    v21 = [v20 allowEarlyConnection];

    if (v21)
    {
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __127__GKMatchmaker_invitePlayersWithRequest_serverHosted_onlineConnectionData_devicePushTokenMap_isNearbyInvite_completionHandler___block_invoke_2_217;
      v34[3] = &unk_2785DF5E8;
      v34[4] = *(a1 + 32);
      v35 = v8;
      v37 = v38;
      v36 = v18;
      [v36 perform:v34];
    }
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __127__GKMatchmaker_invitePlayersWithRequest_serverHosted_onlineConnectionData_devicePushTokenMap_isNearbyInvite_completionHandler___block_invoke_218;
  v27[3] = &unk_2785DF638;
  v22 = v18;
  v28 = v22;
  v23 = *(a1 + 48);
  v24 = *(a1 + 32);
  v32 = v23;
  v29 = v24;
  v25 = v5;
  v30 = v25;
  v33 = v38;
  v26 = v8;
  v31 = v26;
  [v22 notifyOnMainQueueWithBlock:v27];

  _Block_object_dispose(v38, 8);
}

void __127__GKMatchmaker_invitePlayersWithRequest_serverHosted_onlineConnectionData_devicePushTokenMap_isNearbyInvite_completionHandler___block_invoke_2_217(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) match];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __127__GKMatchmaker_invitePlayersWithRequest_serverHosted_onlineConnectionData_devicePushTokenMap_isNearbyInvite_completionHandler___block_invoke_3;
  v9[3] = &unk_2785DF5C0;
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  v6 = *(a1 + 56);
  v10 = v5;
  v13 = v6;
  v11 = v7;
  v12 = v3;
  v8 = v3;
  [v4 connectToPlayers:MEMORY[0x277CBEBF8] version:1 invitedByLocalPlayer:0 completionHandler:v9];
}

void __127__GKMatchmaker_invitePlayersWithRequest_serverHosted_onlineConnectionData_devicePushTokenMap_isNearbyInvite_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __127__GKMatchmaker_invitePlayersWithRequest_serverHosted_onlineConnectionData_devicePushTokenMap_isNearbyInvite_completionHandler___block_invoke_3_cold_1(a1);
    }

    v5 = [MEMORY[0x277CCA9B8] userErrorForCode:28 underlyingError:v3];
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  [*(a1 + 40) setError:*(*(*(a1 + 56) + 8) + 40)];
  (*(*(a1 + 48) + 16))();
}

void __127__GKMatchmaker_invitePlayersWithRequest_serverHosted_onlineConnectionData_devicePushTokenMap_isNearbyInvite_completionHandler___block_invoke_218(uint64_t a1)
{
  v61 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) error];
  if (!v2 || (v3 = v2, [*(a1 + 32) error], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isGKCompoundError"), v4, v3, (v5 & 1) != 0))
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v7 = [*(a1 + 48) invitedUserIDs];
    v8 = [v7 countByEnumeratingWithState:&v50 objects:v60 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v51;
      v41 = v6;
      do
      {
        v11 = 0;
        do
        {
          if (*v51 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v50 + 1) + 8 * v11);
          v13 = [*(a1 + 48) invitedUserIDs];
          v14 = [v13 objectForKey:v12];
          v15 = [v14 integerValue];

          if (v15)
          {
            v16 = [*(a1 + 40) inviteesByUserID];
            v17 = [v16 objectForKey:v12];

            if (v17)
            {
              if (!os_log_GKGeneral)
              {
                v18 = GKOSLoggers();
              }

              v19 = os_log_GKMatch;
              if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
              {
                loga = v19;
                v21 = [v17 internal];
                v22 = [v21 conciseDescription];
                *buf = 138412802;
                v55 = v12;
                v56 = 2112;
                v57 = v22;
                v58 = 2048;
                v59 = v15;
                _os_log_debug_impl(&dword_227904000, loga, OS_LOG_TYPE_DEBUG, "invite to %@ -- %@ failed with status %ld", buf, 0x20u);

                v6 = v41;
              }

              [v6 addObject:v17];
              [*(a1 + 40) removeInvitee:v17];
            }
          }

          else
          {
            v20 = *(*(a1 + 72) + 8);
            v17 = *(v20 + 40);
            *(v20 + 40) = 0;
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v50 objects:v60 count:16];
      }

      while (v9);
    }

    if ([v6 count])
    {
      v23 = *(*(*(a1 + 72) + 8) + 40);
      if (v23)
      {
        v24 = [v23 userInfo];
        v25 = [v24 mutableCopy];

        [v25 setObject:v6 forKeyedSubscript:@"FailedPlayers"];
        v26 = MEMORY[0x277CCA9B8];
        v27 = [*(a1 + 56) domain];
        v28 = [v26 errorWithDomain:v27 code:objc_msgSend(*(*(*(a1 + 72) + 8) + 40) userInfo:{"code"), v25}];
        v29 = *(*(a1 + 72) + 8);
        v30 = *(v29 + 40);
        *(v29 + 40) = v28;
      }
    }

    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMatchmaker.m", 1083, "-[GKMatchmaker invitePlayersWithRequest:serverHosted:onlineConnectionData:devicePushTokenMap:isNearbyInvite:completionHandler:]_block_invoke"];
    v32 = [GKDispatchGroup dispatchGroupWithName:v31];

    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __127__GKMatchmaker_invitePlayersWithRequest_serverHosted_onlineConnectionData_devicePushTokenMap_isNearbyInvite_completionHandler___block_invoke_2_223;
    v47[3] = &unk_2785DD898;
    v33 = *(a1 + 40);
    v48 = v6;
    v49 = v33;
    v34 = v6;
    [v32 perform:v47];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __127__GKMatchmaker_invitePlayersWithRequest_serverHosted_onlineConnectionData_devicePushTokenMap_isNearbyInvite_completionHandler___block_invoke_4;
    v44[3] = &unk_2785DF610;
    v44[4] = *(a1 + 40);
    v35 = *(a1 + 64);
    v36 = *(a1 + 72);
    v45 = v35;
    v46 = v36;
    [v32 notifyOnMainQueueWithBlock:v44];

    goto LABEL_22;
  }

  v38 = *(a1 + 64);
  if (!v38)
  {
LABEL_22:
    v37 = *MEMORY[0x277D85DE8];
    return;
  }

  log = [*(a1 + 40) match];
  v39 = [*(a1 + 32) error];
  (*(v38 + 16))(v38, 0, log, 0, v39);

  v40 = *MEMORY[0x277D85DE8];
}

void __127__GKMatchmaker_invitePlayersWithRequest_serverHosted_onlineConnectionData_devicePushTokenMap_isNearbyInvite_completionHandler___block_invoke_2_223(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) count])
  {
    v6 = a1 + 32;
    v4 = *(a1 + 32);
    v5 = *(v6 + 8);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __127__GKMatchmaker_invitePlayersWithRequest_serverHosted_onlineConnectionData_devicePushTokenMap_isNearbyInvite_completionHandler___block_invoke_3_224;
    v7[3] = &unk_2785DD710;
    v8 = v3;
    [v5 reportResponse:2 forInvitees:v4 withCompletionHandler:v7];
  }

  else
  {
    v3[2](v3);
  }
}

void __127__GKMatchmaker_invitePlayersWithRequest_serverHosted_onlineConnectionData_devicePushTokenMap_isNearbyInvite_completionHandler___block_invoke_4(uint64_t a1)
{
  if ([*(a1 + 32) allInviteesDidRespond])
  {
    [*(a1 + 32) doneMatchmaking];
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [*(a1 + 32) match];
    (*(v2 + 16))(v2, 0, v3, 0, *(*(*(a1 + 48) + 8) + 40));
  }
}

void __91__GKMatchmaker_invitePlayersWithRequest_serverHosted_devicePushTokenMap_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) addInvitees:a2];
  v3 = [*(a1 + 40) inviteeResponseHandler];
  [*(a1 + 32) setInviteeResponseHandler:v3];

  v4 = [*(a1 + 40) recipientResponseHandler];
  [*(a1 + 32) setRecipientResponseHandler:v4];

  if (*(a1 + 64))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);

    [v5 invitePlayersWithRequest:v6 serverHosted:1 onlineConnectionData:0 devicePushTokenMap:v7 isNearbyInvite:0 completionHandler:v8];
  }

  else
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMatchmaker.m", 1129, "-[GKMatchmaker invitePlayersWithRequest:serverHosted:devicePushTokenMap:completionHandler:]_block_invoke"];
    v10 = [GKDispatchGroup dispatchGroupWithName:v9];

    v11 = +[GKPreferences shared];
    v12 = [v11 fastSyncTransportEnabled];

    if ((v12 & 1) == 0)
    {
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __91__GKMatchmaker_invitePlayersWithRequest_serverHosted_devicePushTokenMap_completionHandler___block_invoke_2;
      v23[3] = &unk_2785DD898;
      v13 = *(a1 + 40);
      v23[4] = *(a1 + 32);
      v24 = v13;
      [v10 perform:v23];
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __91__GKMatchmaker_invitePlayersWithRequest_serverHosted_devicePushTokenMap_completionHandler___block_invoke_4;
    v19[3] = &unk_2785DF778;
    v18 = *(a1 + 32);
    v14 = *(a1 + 56);
    v15 = *(a1 + 40);
    v22 = *(a1 + 64);
    *&v16 = *(a1 + 48);
    *(&v16 + 1) = v14;
    *&v17 = v18;
    *(&v17 + 1) = v15;
    v20 = v17;
    v21 = v16;
    [v10 notifyOnMainQueueWithBlock:v19];
  }
}

void __91__GKMatchmaker_invitePlayersWithRequest_serverHosted_devicePushTokenMap_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __91__GKMatchmaker_invitePlayersWithRequest_serverHosted_devicePushTokenMap_completionHandler___block_invoke_3;
  v7[3] = &unk_2785DD710;
  v8 = v3;
  v6 = v3;
  [v5 inviteAnyNearbyPlayersViaLegacyViceroyBonjourConnectionWithRequest:v4 handler:v7];
}

void __91__GKMatchmaker_invitePlayersWithRequest_serverHosted_devicePushTokenMap_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMatchmaker.m", 1144, "-[GKMatchmaker invitePlayersWithRequest:serverHosted:devicePushTokenMap:completionHandler:]_block_invoke_4"];
  v3 = [GKDispatchGroup dispatchGroupWithName:v2];

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__7;
  v28 = __Block_byref_object_dispose__7;
  v29 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x3032000000;
  v22[3] = __Block_byref_object_copy__7;
  v22[4] = __Block_byref_object_dispose__7;
  v23 = 0;
  v4 = [*(a1 + 32) match];
  v5 = [v4 transportContext];
  v6 = [v5 previouslyFetchedOnlineConnectionData];

  if (v6)
  {
    v7 = [*(a1 + 32) match];
    v8 = [v7 transportContext];
    v9 = [v8 previouslyFetchedOnlineConnectionData];
    v10 = v25[5];
    v25[5] = v9;
  }

  else
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __91__GKMatchmaker_invitePlayersWithRequest_serverHosted_devicePushTokenMap_completionHandler___block_invoke_5;
    v21[3] = &unk_2785DF700;
    v21[4] = *(a1 + 32);
    v21[5] = v22;
    v21[6] = &v24;
    [v3 perform:v21];
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __91__GKMatchmaker_invitePlayersWithRequest_serverHosted_devicePushTokenMap_completionHandler___block_invoke_2_227;
  v15[3] = &unk_2785DF750;
  v18 = v22;
  v19 = &v24;
  v11 = *(a1 + 56);
  v14 = *(a1 + 32);
  v12 = *(&v14 + 1);
  v20 = *(a1 + 64);
  *&v13 = *(a1 + 48);
  *(&v13 + 1) = v11;
  v16 = v14;
  v17 = v13;
  [v3 notifyOnMainQueueWithBlock:v15];

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(&v24, 8);
}

void __91__GKMatchmaker_invitePlayersWithRequest_serverHosted_devicePushTokenMap_completionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __91__GKMatchmaker_invitePlayersWithRequest_serverHosted_devicePushTokenMap_completionHandler___block_invoke_6;
  v5[3] = &unk_2785DF6D8;
  v6 = *(a1 + 32);
  v7 = v3;
  v8 = *(a1 + 40);
  v4 = v3;
  [v6 loadConnectivitySettingsWithCompletionHandler:v5];
}

void __91__GKMatchmaker_invitePlayersWithRequest_serverHosted_devicePushTokenMap_completionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __91__GKMatchmaker_invitePlayersWithRequest_serverHosted_devicePushTokenMap_completionHandler___block_invoke_6_cold_1();
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    objc_initWeak(&location, *(a1 + 32));
    v6 = [*(a1 + 32) match];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __91__GKMatchmaker_invitePlayersWithRequest_serverHosted_devicePushTokenMap_completionHandler___block_invoke_226;
    v7[3] = &unk_2785DF6B0;
    objc_copyWeak(&v10, &location);
    v9 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
    v8 = *(a1 + 40);
    [v6 getLocalConnectionDataWithCompletionHandler:v7];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __91__GKMatchmaker_invitePlayersWithRequest_serverHosted_devicePushTokenMap_completionHandler___block_invoke_226(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && v5 | v10)
  {
    if (v10)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v8 = v10;
    }

    else
    {
      v8 = v5;
    }

    v9 = 40;
    if (!v7)
    {
      v9 = 48;
    }

    objc_storeStrong((*(*(a1 + v9) + 8) + 40), v8);
  }

  (*(*(a1 + 32) + 16))();
}

void __91__GKMatchmaker_invitePlayersWithRequest_serverHosted_devicePushTokenMap_completionHandler___block_invoke_2_227(uint64_t a1)
{
  v2 = a1 + 64;
  if (*(*(*(a1 + 64) + 8) + 40) || (v6 = *(*(*(a1 + 72) + 8) + 40)) == 0)
  {
    if (!os_log_GKGeneral)
    {
      v3 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __91__GKMatchmaker_invitePlayersWithRequest_serverHosted_devicePushTokenMap_completionHandler___block_invoke_2_227_cold_1(v2);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91__GKMatchmaker_invitePlayersWithRequest_serverHosted_devicePushTokenMap_completionHandler___block_invoke_228;
    block[3] = &unk_2785DE3E8;
    v4 = v20;
    v5 = *(a1 + 56);
    block[4] = *(a1 + 32);
    v20[0] = v5;
    v20[1] = *(a1 + 64);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __91__GKMatchmaker_invitePlayersWithRequest_serverHosted_devicePushTokenMap_completionHandler___block_invoke_2_229;
    v14[3] = &unk_2785DF728;
    v4 = &v15;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v18 = *(a1 + 80);
    v17 = *(a1 + 72);
    *&v9 = v8;
    *(&v9 + 1) = *(a1 + 32);
    v13 = v9;
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    *&v12 = v10;
    *(&v12 + 1) = v11;
    v15 = v13;
    v16 = v12;
    [v7 inviteAnyNearbyPlayersViaGCSWithRequest:v8 onlineConnectionData:v6 handler:v14];
  }
}

void __91__GKMatchmaker_invitePlayersWithRequest_serverHosted_devicePushTokenMap_completionHandler___block_invoke_228(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) match];
  (*(v2 + 16))(v2, 0, v3, 0, *(*(*(a1 + 48) + 8) + 40));
}

void __91__GKMatchmaker_invitePlayersWithRequest_serverHosted_devicePushTokenMap_completionHandler___block_invoke_2_229(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = [v4 internal];
    v7 = [v6 recipients];
    v24 = 138412290;
    v25 = v7;
    _os_log_impl(&dword_227904000, v5, OS_LOG_TYPE_INFO, "Rest of the players in the request: %@", &v24, 0xCu);
  }

  v8 = [*(a1 + 32) internal];
  v9 = [v8 recipientPlayerIDs];
  v10 = [v9 count];

  if (v10)
  {
    v11 = [*(a1 + 40) invitedInvitees];
    v12 = MEMORY[0x277CBEB98];
    v13 = [*(a1 + 32) internal];
    v14 = [v13 recipientPlayerIDs];
    v15 = [v12 setWithArray:v14];
    [v11 unionSet:v15];

    if (!os_log_GKGeneral)
    {
      v16 = GKOSLoggers();
    }

    v17 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 32);
      v19 = v17;
      v20 = [v18 internal];
      v24 = 138412290;
      v25 = v20;
      _os_log_impl(&dword_227904000, v19, OS_LOG_TYPE_INFO, "Invite non-nearby players with request: %@", &v24, 0xCu);
    }

    [*(a1 + 40) invitePlayersWithRequest:*(a1 + 32) serverHosted:*(a1 + 72) onlineConnectionData:*(*(*(a1 + 64) + 8) + 40) devicePushTokenMap:*(a1 + 48) isNearbyInvite:0 completionHandler:*(a1 + 56)];
  }

  else
  {
    v21 = *(a1 + 56);
    if (v21)
    {
      v22 = [*(a1 + 40) match];
      (*(v21 + 16))(v21, 0, v22, 0, 0);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)addInvitees:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(GKMatchmaker *)self inviteesByUserID];

  if (v5)
  {
    v6 = [(GKMatchmaker *)self inviteesByUserID];
    v7 = [v6 mutableCopy];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [v13 internal];
          v15 = [v14 playerID];

          if (v15)
          {
            [v7 setObject:v13 forKeyedSubscript:v15];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v16 = v7;
  }

  else
  {
    v16 = [v4 _gkMapDictionaryWithKeyPath:@"internal.playerID"];
    v7 = v16;
  }

  v17 = [v16 copy];
  [(GKMatchmaker *)self setInviteesByUserID:v17];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)sendMatchmakingRequest:(id)a3 forMatch:(id)a4 rematchID:(id)a5 serverHosted:(BOOL)a6 playerCount:(int64_t)a7 completionHandler:(id)a8
{
  v10 = a6;
  v51 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v38 = a5;
  v15 = a8;
  if (!os_log_GKGeneral)
  {
    v16 = GKOSLoggers();
  }

  v17 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v18 = MEMORY[0x277CCABB0];
    v19 = v17;
    v20 = [v18 numberWithInteger:a7];
    *buf = 138412802;
    v46 = v13;
    v47 = 2112;
    v48 = v14;
    v49 = 2112;
    v50 = v20;
    _os_log_impl(&dword_227904000, v19, OS_LOG_TYPE_INFO, "Matchmaking _request: %@, match %@, playerCount: %@", buf, 0x20u);
  }

  v21 = +[GKDaemonProxy proxyForLocalPlayer];
  v22 = [v21 utilityService];
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "minPlayers")}];
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "maxPlayers")}];
  [v22 recordMatchStart:@"host" minPlayers:v23 maxPlayers:v24];

  v25 = +[GKDaemonProxy proxyForLocalPlayer];
  v26 = [v25 utilityService];
  v27 = v26;
  if (v10)
  {
    v28 = @"thirdParty";
  }

  else
  {
    v28 = @"firstParty";
  }

  [v26 recordMatchServer:v28];

  v29 = +[GKDaemonProxy proxyForLocalPlayer];
  v30 = [v29 multiplayerService];
  v31 = [v13 internal];
  v32 = [v14 transportContext];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke;
  v39[3] = &unk_2785DF908;
  v44 = v10;
  v40 = v14;
  v41 = v13;
  v42 = self;
  v43 = v15;
  v33 = v15;
  v34 = v13;
  v35 = v14;
  [v30 getPlayersForMatchRequest:v31 playerCount:a7 rematchID:v38 transportContext:v32 handler:v39];

  v36 = *MEMORY[0x277D85DE8];
}

void __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v68 = *MEMORY[0x277D85DE8];
  v38 = a2;
  v37 = a3;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMatchmaker.m", 1257, "-[GKMatchmaker sendMatchmakingRequest:forMatch:rematchID:serverHosted:playerCount:completionHandler:]_block_invoke"];
  v39 = [GKDispatchGroup dispatchGroupWithName:v5];

  if (v37)
  {
    v6 = v39;
    [v39 setError:?];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    v8 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v38;
      _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_INFO, "Multiplayer Service getPlayersForMatchRequest returned with response: %@", &buf, 0xCu);
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v9 = [v38 matches];
    v10 = [v9 countByEnumeratingWithState:&v58 objects:v67 count:16];
    if (v10)
    {
      v11 = *v59;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v59 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v58 + 1) + 8 * i);
          v14 = *(a1 + 32);
          v15 = [v13 objectForKeyedSubscript:@"properties"];
          v16 = [v13 objectForKeyedSubscript:@"player-id"];
          [v14 updateProperties:v15 playerID:v16];
        }

        v10 = [v9 countByEnumeratingWithState:&v58 objects:v67 count:16];
      }

      while (v10);
    }

    if (*(a1 + 64) == 1)
    {
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_248;
      v55[3] = &unk_2785DD898;
      v56 = v38;
      v57 = v39;
      [v57 perform:v55];
    }

    else
    {
      v17 = [v38 matches];
      v18 = MEMORY[0x277CCAC30];
      v53[0] = MEMORY[0x277D85DD0];
      v53[1] = 3221225472;
      v53[2] = __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_258;
      v53[3] = &unk_2785DF7C8;
      v54 = *(a1 + 32);
      v19 = [v18 predicateWithBlock:v53];
      v20 = [v17 filteredArrayUsingPredicate:v19];
      [v38 setMatches:v20];

      [*(a1 + 32) setAutomatchPlayerCount:0];
      v21 = [*(a1 + 32) transportContext];
      [v21 updateForMatchResponse:v38 serverHosted:*(a1 + 64)];

      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_263;
      aBlock[3] = &unk_2785DF868;
      v48 = *(a1 + 32);
      v22 = v38;
      v49 = v22;
      v50 = *(a1 + 40);
      v23 = v39;
      v24 = *(a1 + 48);
      v51 = v23;
      v52 = v24;
      v25 = _Block_copy(aBlock);
      v26 = [*(a1 + 32) transportContext];
      LOBYTE(v22) = [v26 shouldDelayConnectionForMatchResponse:v22];

      *&buf = 0;
      *(&buf + 1) = &buf;
      v63 = 0x3032000000;
      v64 = __Block_byref_object_copy__7;
      v65 = __Block_byref_object_dispose__7;
      v66 = dispatch_get_current_queue();
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_282;
      v43[3] = &unk_2785DF8E0;
      v46 = v22;
      v27 = v25;
      v44 = v27;
      p_buf = &buf;
      [v23 perform:v43];

      _Block_object_dispose(&buf, 8);
    }

    v6 = v39;
  }

  v28 = [v6 error];
  v29 = v28 == 0;

  if (!v29)
  {
    v30 = [v39 error];
    v31 = [v30 getUnderlyingErrorWithServerStatusCode:5003];

    if (v31)
    {
      if (!os_log_GKGeneral)
      {
        v32 = GKOSLoggers();
      }

      v33 = os_log_GKDeveloper;
      if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
      {
        __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_cold_1(v33, v31);
      }
    }
  }

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_287;
  v40[3] = &unk_2785DE478;
  v34 = *(a1 + 56);
  v40[4] = *(a1 + 48);
  v41 = v39;
  v42 = v34;
  v35 = v39;
  [v35 notifyOnMainQueueWithBlock:v40];

  v36 = *MEMORY[0x277D85DE8];
}

void __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_248(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v14 = a2;
  v15 = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [*(a1 + 32) matches];
  v3 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [*(*(&v20 + 1) + 8 * i) objectForKeyedSubscript:@"player-id"];
        v8 = +[GKLocalPlayer local];
        v9 = [v8 internal];
        v10 = [v9 playerID];
        v11 = [v7 isEqualToString:v10];

        if ((v11 & 1) == 0)
        {
          [v15 addObject:v7];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v4);
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_2;
  v17[3] = &unk_2785DDC38;
  v18 = *(a1 + 40);
  v19 = v14;
  v12 = v14;
  [GKPlayer loadPlayersForLegacyIdentifiers:v15 withCompletionHandler:v17];

  v13 = *MEMORY[0x277D85DE8];
}

void __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if ([GKMatchmaker canPlayMultiplayerGameWithPlayers:v5])
    {
      v6 = 0;
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v7 = GKOSLoggers();
      }

      v8 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
      {
        __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_2_cold_1(v8);
      }

      v6 = [MEMORY[0x277CCA9B8] userErrorForCode:10 underlyingError:0];
    }
  }

  if ([v6 code] != 10)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
    [*(a1 + 32) setObject:v9 forKeyedSubscript:@"count"];

    [*(a1 + 32) setObject:v5 forKeyedSubscript:@"players"];
  }

  [*(a1 + 32) setError:v6];
  (*(*(a1 + 40) + 16))();
}

BOOL __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_258(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"player-id"];
  v5 = +[GKLocalPlayer local];
  v6 = [v5 internal];
  v7 = [v6 playerID];
  v8 = [v4 isEqualToString:v7];

  v9 = [v3 objectForKeyedSubscript:@"client-data"];

  v10 = [*(a1 + 32) transportContext];
  v11 = [v10 representedPlayerIDs];
  v12 = ([v11 containsObject:v4] & 1) != 0 || objc_msgSend(v9, "count") == 0;

  if (!os_log_GKGeneral)
  {
    v13 = GKOSLoggers();
  }

  v14 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    v17 = 138412802;
    v18 = v4;
    v19 = 1024;
    v20 = v8;
    v21 = 1024;
    v22 = v12;
    _os_log_debug_impl(&dword_227904000, v14, OS_LOG_TYPE_DEBUG, "Excluding matched playerID: %@, isLocalPlayer: %d, isRepresentedPlayer: %d", &v17, 0x18u);
  }

  v15 = *MEMORY[0x277D85DE8];
  return ((v8 | v12) & 1) == 0;
}

void __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_263(uint64_t a1, void *a2)
{
  v91 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) transportContext];
  v5 = [v4 shouldSendInviteUpdate];

  if (v5)
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_227904000, v7, OS_LOG_TYPE_INFO, "Sending invite update to participants in the lobby channel.", buf, 2u);
    }

    v8 = +[GKDaemonProxy proxyForLocalPlayer];
    v9 = [v8 multiplayerService];
    v10 = [*(a1 + 32) transportContext];
    v11 = [v10 formAnInviteUpdate];
    [v9 sendInvitationUpdate:v11 handler:&__block_literal_global_266];
  }

  v65 = v3;
  v68 = [MEMORY[0x277CBEB18] array];
  v69 = a1;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = [*(a1 + 40) matches];
  v12 = [obj countByEnumeratingWithState:&v83 objects:v90 count:16];
  if (v12)
  {
    v13 = v12;
    LODWORD(v14) = 0;
    v70 = *v84;
    v15 = 1;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v84 != v70)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v83 + 1) + 8 * i);
        v18 = [v17 objectForKey:@"num-players"];
        v19 = v18;
        v20 = v15;
        if (v18)
        {
          v21 = [v18 intValue];
        }

        else
        {
          v21 = 1;
        }

        v22 = [v17 objectForKey:@"client-data"];
        v23 = [v22 objectForKey:@"match-version"];
        v24 = [v23 integerValue];

        if (v24 >= v20)
        {
          v15 = v20;
        }

        else
        {
          v15 = v24;
        }

        v25 = [v17 objectForKey:@"player-id"];
        if (v25)
        {
          [v68 addObject:v25];
        }

        v14 = (v21 + v14);
      }

      v13 = [obj countByEnumeratingWithState:&v83 objects:v90 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
    LOBYTE(v15) = 1;
  }

  if (!os_log_GKGeneral)
  {
    v26 = GKOSLoggers();
  }

  v27 = os_log_GKMatch;
  v28 = v65;
  v30 = v68;
  v29 = v69;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v31 = *(v69 + 32);
    v32 = v27;
    v33 = [v31 transportContext];
    v34 = [v33 peerDictionaries];
    *buf = 138412290;
    v89 = v34;
    _os_log_impl(&dword_227904000, v32, OS_LOG_TYPE_INFO, "Using peerDictionaries: %@", buf, 0xCu);
  }

  v35 = [*(v69 + 48) guestPlayers];
  if ([v35 count])
  {
    if (!os_log_GKGeneral)
    {
      v36 = GKOSLoggers();
    }

    v37 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v38 = v37;
      v39 = [v35 count];
      *buf = 134217984;
      v89 = v39;
      _os_log_impl(&dword_227904000, v38, OS_LOG_TYPE_INFO, "Connecting to %lu guest players", buf, 0xCu);
    }

    v82 = 0u;
    v80 = 0u;
    v81 = 0u;
    v79 = 0u;
    obja = v35;
    v40 = v35;
    v41 = [v40 countByEnumeratingWithState:&v79 objects:v87 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v80;
      do
      {
        for (j = 0; j != v42; ++j)
        {
          if (*v80 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v45 = *(*(&v79 + 1) + 8 * j);
          if (!os_log_GKGeneral)
          {
            v46 = GKOSLoggers();
          }

          v47 = os_log_GKMatch;
          if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
          {
            v48 = v47;
            v49 = [v45 internal];
            v50 = [v49 debugDescription];
            *buf = 138412290;
            v89 = v50;
            _os_log_impl(&dword_227904000, v48, OS_LOG_TYPE_INFO, "Connecting to guest player: %@", buf, 0xCu);
          }

          v51 = *(v69 + 32);
          v52 = +[GKLocalPlayer local];
          [v51 connectToGuestPlayer:v45 withHostPlayer:v52];
        }

        v42 = [v40 countByEnumeratingWithState:&v79 objects:v87 count:16];
      }

      while (v42);
    }

    v28 = v65;
    v35 = obja;
    v30 = v68;
    v29 = v69;
  }

  if ([v30 count])
  {
    v53 = *(v29 + 56);
    v72[0] = MEMORY[0x277D85DD0];
    v72[1] = 3221225472;
    v72[2] = __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_273;
    v72[3] = &unk_2785DF840;
    v73 = v30;
    v54 = *(v29 + 56);
    v76 = v28;
    *&v55 = v54;
    *(&v55 + 1) = *(v29 + 64);
    v71 = v55;
    v56 = *(v29 + 32);
    v78 = v15;
    v57 = *(v29 + 40);
    *&v58 = v56;
    *(&v58 + 1) = v57;
    v74 = v71;
    v75 = v58;
    v77 = v14;
    [v53 perform:v72];
  }

  else
  {
    v59 = [*(v29 + 48) guestPlayers];
    v60 = [v59 count];

    if (v60)
    {
      if (!os_log_GKGeneral)
      {
        v61 = GKOSLoggers();
      }

      v62 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v89) = v14;
        _os_log_impl(&dword_227904000, v62, OS_LOG_TYPE_INFO, "GKMatchMaker has no players to load but we have guest players. Call completion handler with matchedPlayerCount: %i", buf, 8u);
      }

      v63 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v14];
      [*(v29 + 56) setObject:v63 forKeyedSubscript:@"count"];

      [*(v29 + 56) setObject:*(v29 + 32) forKeyedSubscript:@"match"];
      v28[2](v28);
    }
  }

  v64 = *MEMORY[0x277D85DE8];
}

void __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_264(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    if (!os_log_GKGeneral)
    {
      v3 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __48__GKMatch_refreshPendingConnectionCheckIfNeeded__block_invoke_2_cold_1();
    }
  }
}

void __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_273(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_273_cold_1();
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_274;
  v12[3] = &unk_2785DF818;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v16 = v3;
  v17 = *(a1 + 72);
  v7 = *(a1 + 32);
  v11 = *(a1 + 48);
  v8 = *(&v11 + 1);
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v13 = v9;
  v14 = v11;
  v19 = *(a1 + 84);
  v15 = *(a1 + 64);
  v18 = *(a1 + 80);
  v10 = v3;
  [GKPlayer loadPlayersForLegacyIdentifiers:v5 withCompletionHandler:v12];
}

void __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_274(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    goto LABEL_2;
  }

  if ([GKMatchmaker canPlayMultiplayerGameWithPlayers:v5])
  {
    goto LABEL_13;
  }

  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
  }

  v12 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
  {
    __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_274_cold_1(v12);
  }

  v6 = [MEMORY[0x277CCA9B8] userErrorForCode:10 underlyingError:0];
  if (v6)
  {
LABEL_2:
    v7 = v6;
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_274_cold_2();
    }

    [*(a1 + 32) setError:v7];
    (*(*(a1 + 72) + 16))();
    v9 = +[GKDaemonProxy proxyForLocalPlayer];
    v10 = [v9 utilityService];
    [v10 completeMatchRecording:@"failure" matchType:0];

    (*(*(a1 + 80) + 16))();
  }

  else
  {
LABEL_13:
    v13 = +[GKReporter reporter];
    [v13 reportEvent:@"com.apple.GameKit.multiplayer.realtime.connectionResult" type:@"realtime.allMatchTotal" count:{objc_msgSend(v5, "count")}];

    v14 = +[GKReporter reporter];
    [v14 reportEvent:@"com.apple.GameKit.multiplayer.realtime.connectionResult" type:@"realtime.autoMatchTotal" count:{objc_msgSend(v5, "count")}];

    v15 = +[GKDaemonProxy proxyForLocalPlayer];
    v16 = [v15 utilityService];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
    [v16 recordActiveDevices:v17];

    if (!os_log_GKGeneral)
    {
      v18 = GKOSLoggers();
    }

    v19 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v20 = *(a1 + 40);
      *buf = 138412546;
      v41 = v20;
      v42 = 2112;
      v43 = v5;
      _os_log_impl(&dword_227904000, v19, OS_LOG_TYPE_INFO, "matched playerIDs: %@, players: %@", buf, 0x16u);
    }

    v21 = [*(a1 + 48) autoMatchedPlayers];
    v22 = MEMORY[0x277CBEB98];
    v23 = [v5 _gkPlayersIDsFromPlayers];
    v24 = [v22 setWithArray:v23];
    [v21 unionSet:v24];

    v25 = *(a1 + 56);
    v26 = [v5 _gkPlayersIDsFromPlayers];
    v27 = [*(a1 + 48) allInvitedInvitees];
    v28 = [v27 allObjects];
    [v25 syncPlayers:v26 forJoinType:4 toInvitees:v28];

    v29 = *(a1 + 56);
    v30 = *(a1 + 92);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_278;
    v32[3] = &unk_2785DF7F0;
    v33 = *(a1 + 32);
    v37 = *(a1 + 72);
    v38 = *(a1 + 80);
    v34 = *(a1 + 64);
    v35 = *(a1 + 56);
    v36 = v5;
    v39 = *(a1 + 88);
    [v29 connectToPlayers:v36 version:v30 invitedByLocalPlayer:0 completionHandler:v32];

    v7 = v33;
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_278(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x277CCA9B8] userErrorForCode:28 underlyingError:v3];

    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_278_cold_1();
    }

    [*(a1 + 32) setError:v5];
    (*(*(a1 + 64) + 16))();
    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v7 = [*(a1 + 40) relayPushes];

    if (v7)
    {
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v8 = [*(a1 + 40) relayPushes];
      v9 = [v8 countByEnumeratingWithState:&v48 objects:v55 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v49;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v49 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v48 + 1) + 8 * i);
            if (!os_log_GKGeneral)
            {
              v14 = GKOSLoggers();
            }

            v15 = os_log_GKMatch;
            if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
            {
              v16 = *(a1 + 48);
              *buf = 138412290;
              v54 = v16;
              _os_log_debug_impl(&dword_227904000, v15, OS_LOG_TYPE_DEBUG, "Relay push for match: %@", buf, 0xCu);
            }

            [*(a1 + 48) handleRelayPushData:v13 onlyIfPreemptive:0];
          }

          v10 = [v8 countByEnumeratingWithState:&v48 objects:v55 count:16];
        }

        while (v10);
      }
    }

    v17 = +[GKPreferences shared];
    v18 = [v17 preemptiveRelay];

    if (v18)
    {
      v42 = [*(a1 + 56) _gkMapDictionaryWithKeyPath:@"internal.playerID"];
      v19 = [*(a1 + 40) matches];
      if ([v19 count])
      {
        if (!os_log_GKGeneral)
        {
          v20 = GKOSLoggers();
        }

        v21 = os_log_GKMatch;
        if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
        {
          __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_278_cold_2(v21);
        }

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v41 = v19;
        obj = v19;
        v22 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v45;
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v45 != v24)
              {
                objc_enumerationMutation(obj);
              }

              v26 = *(*(&v44 + 1) + 8 * j);
              v27 = [v26 objectForKey:{@"player-id", v41}];
              v28 = [v26 objectForKey:@"relay"];
              v29 = v28;
              if (v28 && ([v28 BOOLValue] & 1) != 0 || (+[GKPreferences shared](GKPreferences, "shared"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "forceRelay"), v30, v31))
              {
                v32 = +[GKLocalPlayer local];
                v33 = [v32 internal];
                v34 = [v33 playerID];
                v35 = [v34 compare:v27];

                if (v35 == -1)
                {
                  v36 = [v42 objectForKey:v27];
                  if (v36)
                  {
                    if (!os_log_GKGeneral)
                    {
                      v37 = GKOSLoggers();
                    }

                    v38 = os_log_GKMatch;
                    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
                    {
                      __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_278_cold_3(buf, v38, v36, &v54);
                    }

                    [*(a1 + 48) preemptRelay:v36];
                  }
                }
              }
            }

            v23 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
          }

          while (v23);
        }

        v19 = v41;
      }
    }

    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*(a1 + 80), v41}];
    [*(a1 + 32) setObject:v39 forKeyedSubscript:@"count"];

    [*(a1 + 32) setObject:*(a1 + 48) forKeyedSubscript:@"match"];
    (*(*(a1 + 64) + 16))();
    (*(*(a1 + 72) + 16))();
  }

  v40 = *MEMORY[0x277D85DE8];
}

void __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_282(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[GKDaemonProxy proxyForLocalPlayer];
  v5 = [v4 utilityService];
  v14[0] = @"gk-qr-allocation-delay-base-ms";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_2_283;
  v9[3] = &unk_2785DF8B8;
  v13 = *(a1 + 48);
  v10 = *(a1 + 32);
  v11 = v3;
  v12 = *(a1 + 40);
  v7 = v3;
  [v5 getStoreBagValuesForKeys:v6 handler:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_2_283(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_2_283_cold_1();
    }
  }

  v8 = [v5 objectForKeyedSubscript:@"gk-qr-allocation-delay-base-ms"];
  v9 = v8;
  if (v8 && (*(a1 + 56) & 1) != 0)
  {
    v10 = dispatch_time(0, 1000000 * [v8 integerValue]);
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    v12 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_2_283_cold_2((a1 + 56), v12);
    }

    v13 = *(*(*(a1 + 48) + 8) + 40);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_285;
    v18[3] = &unk_2785DF890;
    v14 = &v19;
    v19 = v9;
    v20 = *(a1 + 32);
    v21 = *(a1 + 40);
    dispatch_after(v10, v13, v18);
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v15 = GKOSLoggers();
    }

    v16 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_2_283_cold_3(v5, a1, v16);
    }

    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_284;
    v22[3] = &unk_2785DD710;
    v14 = &v23;
    v17 = *(a1 + 32);
    v23 = *(a1 + 40);
    (*(v17 + 16))(v17, v22);
  }
}

void __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_285(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&dword_227904000, v3, OS_LOG_TYPE_INFO, "After delay of delayMs: %@", buf, 0xCu);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_286;
  v7[3] = &unk_2785DD710;
  v5 = *(a1 + 40);
  v8 = *(a1 + 48);
  (*(v5 + 16))(v5, v7);

  v6 = *MEMORY[0x277D85DE8];
}

void __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_287(uint64_t a1)
{
  [*(a1 + 32) setMatching:0];
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *v10 = 0;
    _os_log_impl(&dword_227904000, v3, OS_LOG_TYPE_INFO, "getPlayersForMatchRequest done, set shared matchmaker's matching to NO", v10, 2u);
  }

  v4 = *(a1 + 48);
  v5 = [*(a1 + 40) objectForKeyedSubscript:@"count"];
  v6 = [v5 unsignedIntValue];
  v7 = [*(a1 + 40) objectForKeyedSubscript:@"match"];
  v8 = [*(a1 + 40) objectForKeyedSubscript:@"players"];
  v9 = [*(a1 + 40) error];
  (*(v4 + 16))(v4, v6, v7, v8, v9);
}

void __133__GKMatchmaker_handleMatchRequest_forCurrentMatch_hostedCurrentPlayerCount_serverHosted_rematchID_devicePushToken_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
  {
    __133__GKMatchmaker_handleMatchRequest_forCurrentMatch_hostedCurrentPlayerCount_serverHosted_rematchID_devicePushToken_completionHandler___block_invoke_cold_1(v5);
  }

  if (*(a1 + 32))
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __133__GKMatchmaker_handleMatchRequest_forCurrentMatch_hostedCurrentPlayerCount_serverHosted_rematchID_devicePushToken_completionHandler___block_invoke_289;
    v6[3] = &unk_2785DDC10;
    v8 = *(a1 + 32);
    v7 = v3;
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }
}

void __133__GKMatchmaker_handleMatchRequest_forCurrentMatch_hostedCurrentPlayerCount_serverHosted_rematchID_devicePushToken_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] userErrorForCode:a2 underlyingError:0];
  (*(v2 + 16))(v2, v3);
}

void __133__GKMatchmaker_handleMatchRequest_forCurrentMatch_hostedCurrentPlayerCount_serverHosted_rematchID_devicePushToken_completionHandler___block_invoke_291(uint64_t a1, void *a2, void *a3)
{
  v72 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = +[GKPreferences shared];
  v8 = v7;
  if (*(a1 + 104) == 1)
  {
    v9 = [v7 maxPlayersHosted];
    v10 = *(a1 + 96);
  }

  else
  {
    v9 = [v7 maxPlayersP2P];
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    v12 = v8;
    v13 = v5;
    v14 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 32);
      v16 = v14;
      v17 = [v15 guestPlayers];
      *buf = 67109120;
      v71 = [v17 count];
      _os_log_impl(&dword_227904000, v16, OS_LOG_TYPE_INFO, "Loaded recipients with guest player count = %i", buf, 8u);
    }

    v18 = [*(a1 + 40) players];
    v19 = [v18 _gkNonGuestPlayersFromPlayers];
    v20 = [v19 mutableCopy];

    v21 = +[GKLocalPlayer localPlayer];
    [v20 removeObject:v21];

    v22 = [*(a1 + 48) inviteesByUserID];
    v23 = [v22 count];
    v24 = [v20 count];
    v25 = v23 + [*(a1 + 40) expectedPlayerCount];
    v26 = [*(a1 + 32) guestPlayers];
    v10 = v25 + [v26 count] + v24 + 1;

    if (!os_log_GKGeneral)
    {
      v27 = GKOSLoggers();
    }

    v28 = os_log_GKMatch;
    v5 = v13;
    v8 = v12;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v71 = v10;
      _os_log_impl(&dword_227904000, v28, OS_LOG_TYPE_INFO, "Removed local player from player list, now current player count = %i", buf, 8u);
    }
  }

  if ([*(a1 + 40) initiallyStarted])
  {
    v29 = [*(a1 + 32) internal];
    [v29 setIsLateJoin:1];

    if (!os_log_GKGeneral)
    {
      v30 = GKOSLoggers();
    }

    v31 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_227904000, v31, OS_LOG_TYPE_INFO, "This is a late join match request.", buf, 2u);
    }
  }

  [*(a1 + 32) removeLocalPlayerFromPlayersToInvite];
  v32 = [v6 count];

  if (v32 < 1)
  {
    if (!GKAtomicCompareAndSwap32(0, 1u, (*(a1 + 48) + 16)))
    {
      if (!os_log_GKGeneral)
      {
        v42 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
      {
        __133__GKMatchmaker_handleMatchRequest_forCurrentMatch_hostedCurrentPlayerCount_serverHosted_rematchID_devicePushToken_completionHandler___block_invoke_291_cold_1();
      }

      goto LABEL_39;
    }

    if (!os_log_GKGeneral)
    {
      v34 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      __133__GKMatchmaker_handleMatchRequest_forCurrentMatch_hostedCurrentPlayerCount_serverHosted_rematchID_devicePushToken_completionHandler___block_invoke_291_cold_2();
    }

    v35 = [*(a1 + 32) maxPlayers];
    v36 = [*(a1 + 32) guestPlayers];
    v37 = [v36 count] + 1;
    v38 = v35 == v37;

    if (!os_log_GKGeneral)
    {
      v39 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      __133__GKMatchmaker_handleMatchRequest_forCurrentMatch_hostedCurrentPlayerCount_serverHosted_rematchID_devicePushToken_completionHandler___block_invoke_291_cold_3();
    }

    v40 = [*(a1 + 32) validateForHosted:*(a1 + 104)];
    if (v40)
    {
      v41 = *(*(a1 + 88) + 16);
    }

    else
    {
      if (v10 <= [*(a1 + 32) maxPlayers] || v35 == v37)
      {
        [*(a1 + 48) setMatch:*(a1 + 40)];
        v49 = *(a1 + 104);
        v50 = [*(a1 + 32) internal];
        v51 = v50;
        if (v49 == 1)
        {
          [v50 setMatchType:1];

          [*(a1 + 48) sendMatchmakingRequest:*(a1 + 32) forMatch:*(a1 + 40) rematchID:*(a1 + 64) serverHosted:*(a1 + 104) playerCount:v10 completionHandler:*(a1 + 80)];
        }

        else
        {
          [v50 setMatchType:0];

          v52 = *(a1 + 48);
          v57[0] = MEMORY[0x277D85DD0];
          v57[1] = 3221225472;
          v57[2] = __133__GKMatchmaker_handleMatchRequest_forCurrentMatch_hostedCurrentPlayerCount_serverHosted_rematchID_devicePushToken_completionHandler___block_invoke_301;
          v57[3] = &unk_2785DFA20;
          v57[4] = v52;
          v61 = *(a1 + 80);
          v58 = *(a1 + 40);
          v59 = *(a1 + 32);
          v63 = v38;
          v53 = *(a1 + 64);
          v64 = *(a1 + 104);
          v60 = v53;
          v62 = v10;
          [v52 loadConnectivitySettingsWithCompletionHandler:v57];
        }

        goto LABEL_54;
      }

      v41 = *(*(a1 + 72) + 16);
    }

    v41();
LABEL_54:

    goto LABEL_41;
  }

  if (v32 + v10 > [*(a1 + 32) maxPlayers] || objc_msgSend(*(a1 + 32), "maxPlayers") > v9)
  {
    if (!os_log_GKGeneral)
    {
      v33 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __133__GKMatchmaker_handleMatchRequest_forCurrentMatch_hostedCurrentPlayerCount_serverHosted_rematchID_devicePushToken_completionHandler___block_invoke_291_cold_5();
    }

LABEL_39:
    v43 = *(*(a1 + 72) + 16);
LABEL_40:
    v43();
    goto LABEL_41;
  }

  if ([v5 code] == 10)
  {
    if (!os_log_GKGeneral)
    {
      v45 = GKOSLoggers();
    }

    v46 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __133__GKMatchmaker_handleMatchRequest_forCurrentMatch_hostedCurrentPlayerCount_serverHosted_rematchID_devicePushToken_completionHandler___block_invoke_291_cold_4(v46);
    }

    v43 = *(*(a1 + 72) + 16);
    goto LABEL_40;
  }

  if ([*(a1 + 32) isConfiguredForAutomatchOnly])
  {
    v43 = *(*(a1 + 72) + 16);
    goto LABEL_40;
  }

  if ((*(a1 + 104) & 1) == 0)
  {
    v47 = [*(a1 + 48) match];

    if (!v47)
    {
      v48 = *(a1 + 48);
      if (*(a1 + 40))
      {
        [v48 setMatch:?];
      }

      else
      {
        v54 = [v48 newMatch];
        [*(a1 + 48) setMatch:v54];
      }
    }
  }

  v55 = +[GKDaemonProxy proxyForLocalPlayer];
  v56 = [v55 multiplayerService];
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __133__GKMatchmaker_handleMatchRequest_forCurrentMatch_hostedCurrentPlayerCount_serverHosted_rematchID_devicePushToken_completionHandler___block_invoke_292;
  v65[3] = &unk_2785DF980;
  v65[4] = *(a1 + 48);
  v66 = *(a1 + 32);
  v67 = *(a1 + 56);
  v69 = *(a1 + 104);
  v68 = *(a1 + 80);
  [v56 fetchTransportOverrideWithHandler:v65];

LABEL_41:
  v44 = *MEMORY[0x277D85DE8];
}

void __133__GKMatchmaker_handleMatchRequest_forCurrentMatch_hostedCurrentPlayerCount_serverHosted_rematchID_devicePushToken_completionHandler___block_invoke_292(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v51 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) match];
  v10 = [v9 transportContext];
  v35 = v7;
  [v10 updateWithForceEnabledTransports:v7 forceDisabledTransports:v8 andHealthMonitorEnabled:a4];

  if ([*(a1 + 32) shouldRunGroupActivityWithDescription:@"updateAfterTransportOverride"])
  {
    v11 = [*(a1 + 32) groupActivityManager];
    [v11 update];
  }

  v46 = 0u;
  v47 = 0u;
  v45 = 0u;
  v44 = 0u;
  v12 = [*(a1 + 40) guestPlayers];
  v13 = [v12 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v45;
    do
    {
      v16 = 0;
      do
      {
        if (*v45 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v44 + 1) + 8 * v16);
        v18 = [*(a1 + 32) match];
        v19 = +[GKLocalPlayer local];
        [v18 connectToGuestPlayer:v17 withHostPlayer:v19];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v14);
  }

  v20 = [MEMORY[0x277CBEB38] dictionary];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v21 = [*(a1 + 40) internal];
  v22 = [v21 recipientPlayerIDs];

  v23 = [v22 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v41;
    do
    {
      v26 = 0;
      do
      {
        if (*v41 != v25)
        {
          objc_enumerationMutation(v22);
        }

        if (*(a1 + 48))
        {
          v27 = *(*(&v40 + 1) + 8 * v26);
          v48 = *(a1 + 48);
          v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
          [v20 setObject:v28 forKeyedSubscript:v27];
        }

        ++v26;
      }

      while (v24 != v26);
      v24 = [v22 countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v24);
  }

  v30 = *(a1 + 32);
  v29 = *(a1 + 40);
  v31 = *(a1 + 64);
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __133__GKMatchmaker_handleMatchRequest_forCurrentMatch_hostedCurrentPlayerCount_serverHosted_rematchID_devicePushToken_completionHandler___block_invoke_2_296;
  v36[3] = &unk_2785DF958;
  v32 = v29;
  v33 = *(a1 + 32);
  v37 = v32;
  v38 = v33;
  v39 = *(a1 + 56);
  [v30 invitePlayersWithRequest:v32 serverHosted:v31 devicePushTokenMap:v20 completionHandler:v36];

  v34 = *MEMORY[0x277D85DE8];
}

void __133__GKMatchmaker_handleMatchRequest_forCurrentMatch_hostedCurrentPlayerCount_serverHosted_rematchID_devicePushToken_completionHandler___block_invoke_2_296(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    if (!os_log_GKGeneral)
    {
      v12 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __133__GKMatchmaker_handleMatchRequest_forCurrentMatch_hostedCurrentPlayerCount_serverHosted_rematchID_devicePushToken_completionHandler___block_invoke_2_296_cold_1(a1);
    }

    v13 = [*(a1 + 40) match];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error detected when inviting players. Error: %@", v11];
    [v13 promptRadarAndRequestRemoteLogsWithDescriptionAddition:v14];
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    (*(v15 + 16))(v15, a2, v9, v10, v11);
  }
}

void __133__GKMatchmaker_handleMatchRequest_forCurrentMatch_hostedCurrentPlayerCount_serverHosted_rematchID_devicePushToken_completionHandler___block_invoke_301(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) setMatching:0];
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = [*(a1 + 32) newMatch];
    }

    v6 = v5;
    v7 = +[GKDaemonProxy proxyForLocalPlayer];
    v8 = [v7 multiplayerService];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __133__GKMatchmaker_handleMatchRequest_forCurrentMatch_hostedCurrentPlayerCount_serverHosted_rematchID_devicePushToken_completionHandler___block_invoke_2_302;
    v14[3] = &unk_2785DF9F8;
    v15 = v6;
    v9 = *(a1 + 48);
    v21 = *(a1 + 80);
    v10 = *(a1 + 32);
    v16 = v9;
    v17 = v10;
    v19 = *(a1 + 64);
    v11 = *(a1 + 56);
    v22 = *(a1 + 81);
    v12 = *(a1 + 72);
    v18 = v11;
    v20 = v12;
    v13 = v6;
    [v8 fetchTransportOverrideWithHandler:v14];
  }
}

void __133__GKMatchmaker_handleMatchRequest_forCurrentMatch_hostedCurrentPlayerCount_serverHosted_rematchID_devicePushToken_completionHandler___block_invoke_2_302(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = a2;
  v10 = [v7 transportContext];
  [v10 updateWithForceEnabledTransports:v9 forceDisabledTransports:v8 andHealthMonitorEnabled:a4];

  v11 = [*(a1 + 32) version];
  v12 = [*(a1 + 40) internal];
  [v12 setVersion:v11];

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __133__GKMatchmaker_handleMatchRequest_forCurrentMatch_hostedCurrentPlayerCount_serverHosted_rematchID_devicePushToken_completionHandler___block_invoke_3;
  v20[3] = &unk_2785DF9D0;
  v25 = *(a1 + 80);
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 32);
  v19 = *(a1 + 48);
  v23 = *(a1 + 64);
  v16 = *(a1 + 56);
  *&v17 = v19;
  *(&v17 + 1) = v16;
  *&v18 = v14;
  *(&v18 + 1) = v15;
  v21 = v18;
  v22 = v17;
  v26 = *(a1 + 81);
  v24 = *(a1 + 72);
  [v13 getLocalConnectionDataWithCompletionHandler:v20];
}

void __133__GKMatchmaker_handleMatchRequest_forCurrentMatch_hostedCurrentPlayerCount_serverHosted_rematchID_devicePushToken_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v53 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    [*(a1 + 48) setMatching:0];
    (*(*(a1 + 64) + 16))();
  }

  else if (*(a1 + 80) == 1)
  {
    v40 = v5;
    v8 = &os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    v10 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_227904000, v10, OS_LOG_TYPE_INFO, "This is a local match with guest players only", buf, 2u);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = [*(a1 + 32) guestPlayers];
    v11 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v45;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v45 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v44 + 1) + 8 * i);
          if (!*v8)
          {
            v16 = GKOSLoggers();
          }

          v17 = os_log_GKMatch;
          if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
          {
            v18 = v17;
            [v15 internal];
            v19 = a1;
            v21 = v20 = v8;
            v22 = [v21 debugDescription];
            *buf = 138412290;
            v49 = v22;
            _os_log_impl(&dword_227904000, v18, OS_LOG_TYPE_INFO, "Connecting to guest player: %@", buf, 0xCu);

            v8 = v20;
            a1 = v19;
          }

          v23 = *(a1 + 40);
          v24 = +[GKLocalPlayer local];
          [v23 connectToGuestPlayer:v15 withHostPlayer:v24];
        }

        v12 = [obj countByEnumeratingWithState:&v44 objects:v52 count:16];
      }

      while (v12);
    }

    [*(a1 + 48) setMatching:0];
    v25 = *(a1 + 40);
    (*(*(a1 + 64) + 16))();
    v7 = v39;
    v5 = v40;
  }

  else
  {
    v26 = [*(a1 + 40) transportContext];
    v27 = v5;
    [v26 updateForMatchRequestWithConnectionData:v5];

    if (!os_log_GKGeneral)
    {
      v28 = GKOSLoggers();
    }

    v29 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v31 = *(a1 + 32);
      v30 = *(a1 + 40);
      *buf = 138412546;
      v49 = v30;
      v50 = 2112;
      v51 = v31;
      _os_log_impl(&dword_227904000, v29, OS_LOG_TYPE_INFO, "Sending matchmaking request to server.\nExisting match: %@.\nRequest: %@", buf, 0x16u);
    }

    v32 = *(a1 + 32);
    v33 = *(a1 + 40);
    v34 = *(a1 + 48);
    v35 = *(a1 + 56);
    v36 = *(a1 + 81);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __133__GKMatchmaker_handleMatchRequest_forCurrentMatch_hostedCurrentPlayerCount_serverHosted_rematchID_devicePushToken_completionHandler___block_invoke_303;
    v42[3] = &unk_2785DF9A8;
    v37 = *(a1 + 72);
    v43 = *(a1 + 64);
    [v34 sendMatchmakingRequest:v32 forMatch:v33 rematchID:v35 serverHosted:v36 playerCount:v37 completionHandler:v42];

    v5 = v27;
    v7 = 0;
  }

  v38 = *MEMORY[0x277D85DE8];
}

- (void)loadURLForMatch:(id)a3 matchRequest:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__GKMatchmaker_loadURLForMatch_matchRequest_completionHandler___block_invoke;
  aBlock[3] = &unk_2785DF930;
  v11 = v10;
  v32 = v11;
  v12 = _Block_copy(aBlock);
  v13 = +[GKLocalPlayer localPlayer];
  v14 = [v13 isAuthenticated];

  if (v14)
  {
    v15 = +[GKPreferences shared];
    v16 = [v15 multiplayerAllowedPlayerType];

    if (v16)
    {
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMatchmaker.m", 1766, "-[GKMatchmaker loadURLForMatch:matchRequest:completionHandler:]"];
      v18 = [GKDispatchGroup dispatchGroupWithName:v17];

      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __63__GKMatchmaker_loadURLForMatch_matchRequest_completionHandler___block_invoke_2;
      v27[3] = &unk_2785DE4C8;
      v27[4] = self;
      v19 = v18;
      v28 = v19;
      v20 = v8;
      v29 = v20;
      v30 = v9;
      [v19 perform:v27];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __63__GKMatchmaker_loadURLForMatch_matchRequest_completionHandler___block_invoke_305;
      v22[3] = &unk_2785DD960;
      v23 = v19;
      v24 = self;
      v25 = v20;
      v26 = v11;
      v21 = v19;
      [v21 notifyOnMainQueueWithBlock:v22];
    }

    else
    {
      v12[2](v12, 10);
    }
  }

  else
  {
    v12[2](v12, 6);
  }
}

void __63__GKMatchmaker_loadURLForMatch_matchRequest_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
  {
    __63__GKMatchmaker_loadURLForMatch_matchRequest_completionHandler___block_invoke_cold_1();
  }

  if (*(a1 + 32))
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __63__GKMatchmaker_loadURLForMatch_matchRequest_completionHandler___block_invoke_304;
    v5[3] = &unk_2785DFA70;
    v6 = *(a1 + 32);
    v7 = a2;
    dispatch_async(MEMORY[0x277D85CD0], v5);
  }
}

void __63__GKMatchmaker_loadURLForMatch_matchRequest_completionHandler___block_invoke_304(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] userErrorForCode:*(a1 + 40) underlyingError:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __63__GKMatchmaker_loadURLForMatch_matchRequest_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__GKMatchmaker_loadURLForMatch_matchRequest_completionHandler___block_invoke_3;
  v6[3] = &unk_2785DD9B0;
  v4 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = v3;
  v5 = v3;
  [v4 loadConnectivitySettingsWithCompletionHandler:v6];
}

uint64_t __63__GKMatchmaker_loadURLForMatch_matchRequest_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  if (!a2)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __63__GKMatchmaker_loadURLForMatch_matchRequest_completionHandler___block_invoke_4;
    v6[3] = &unk_2785DD910;
    v4 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    [v4 perform:v6];
  }

  return (*(*(a1 + 56) + 16))();
}

void __63__GKMatchmaker_loadURLForMatch_matchRequest_completionHandler___block_invoke_4(id *a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__GKMatchmaker_loadURLForMatch_matchRequest_completionHandler___block_invoke_5;
  v6[3] = &unk_2785DFAC0;
  v4 = a1[4];
  v7 = a1[5];
  v8 = a1[4];
  v9 = a1[6];
  v10 = v3;
  v5 = v3;
  [v4 getLocalConnectionDataWithCompletionHandler:v6];
}

void __63__GKMatchmaker_loadURLForMatch_matchRequest_completionHandler___block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [*(a1 + 32) setError:a3];
  if (v5)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __63__GKMatchmaker_loadURLForMatch_matchRequest_completionHandler___block_invoke_6;
    v10[3] = &unk_2785DE4C8;
    v9 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = v5;
    v13 = *(a1 + 48);
    v14 = *(a1 + 32);
    [v9 perform:v10];
  }

  (*(*(a1 + 56) + 16))(*(a1 + 56), v6, v7, v8);
}

void __63__GKMatchmaker_loadURLForMatch_matchRequest_completionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) transportContext];
  [v4 updateForInviteInitiationWithOnlineConnectionData:*(a1 + 40)];

  v5 = +[GKDaemonProxy proxyForLocalPlayer];
  v6 = [v5 multiplayerService];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__GKMatchmaker_loadURLForMatch_matchRequest_completionHandler___block_invoke_7;
  v8[3] = &unk_2785DF480;
  v9 = *(a1 + 32);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = v3;
  v7 = v3;
  [v6 fetchTransportOverrideWithHandler:v8];
}

void __63__GKMatchmaker_loadURLForMatch_matchRequest_completionHandler___block_invoke_7(id *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a1[4];
  v8 = a3;
  v9 = a2;
  v10 = [v7 transportContext];
  [v10 updateWithForceEnabledTransports:v9 forceDisabledTransports:v8 andHealthMonitorEnabled:a4];

  v11 = +[GKDaemonProxy proxyForLocalPlayer];
  v12 = [v11 multiplayerService];
  v13 = +[GKLocalPlayer local];
  v14 = [v13 internal];
  v15 = a1[5];
  v16 = [a1[4] transportContext];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __63__GKMatchmaker_loadURLForMatch_matchRequest_completionHandler___block_invoke_8;
  v23[3] = &unk_2785DFA98;
  v17 = a1[4];
  v18 = a1[6];
  v19 = a1[5];
  v20 = a1[7];
  *&v21 = v19;
  *(&v21 + 1) = v20;
  *&v22 = v17;
  *(&v22 + 1) = v18;
  v24 = v22;
  v25 = v21;
  [v12 loadCloudKitShareURLWithPlayer:v14 matchRequest:v15 transportContext:v16 handler:v23];
}

void __63__GKMatchmaker_loadURLForMatch_matchRequest_completionHandler___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 transportContext];
  [v8 updateWithInviteInitiateResponse:v7];

  v9 = [v7 cloudKitShareURL];

  [*(a1 + 40) setResult:v9];
  [*(a1 + 40) setError:v5];
  if (v5)
  {
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __63__GKMatchmaker_loadURLForMatch_matchRequest_completionHandler___block_invoke_8_cold_1();
    }
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = [*(a1 + 48) matchType] == 1;
    v13 = [*(a1 + 48) messagesBasedRecipients];
    [v11 reportInviteSentWithApproach:2 isHosted:v12 recipients:v13];
  }

  (*(*(a1 + 56) + 16))();
}

void __63__GKMatchmaker_loadURLForMatch_matchRequest_completionHandler___block_invoke_305(uint64_t a1)
{
  v2 = [*(a1 + 32) result];

  if (v2)
  {
    [*(a1 + 40) setMatch:*(a1 + 48)];
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    v5 = [*(a1 + 32) result];
    v4 = [*(a1 + 32) error];
    (*(v3 + 16))(v3, v5, v4);
  }
}

- (void)setShareInvitees:(id)a3 propagateToDaemon:(BOOL)a4
{
  v4 = a4;
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = v6;
    _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_INFO, "Matchmaker set shareInvitees: %@", &v16, 0xCu);
  }

  v9 = [MEMORY[0x277CBEB18] arrayWithArray:v6];
  [(GKMatchmaker *)self setShareInvitees:v9];

  if (v4)
  {
    v10 = +[GKDaemonProxy proxyForLocalPlayer];
    v11 = [v10 multiplayerService];
    [v11 setShareInvitees:v6];
  }

  v12 = [(GKMatchmaker *)self invitedShareInvitees];
  v13 = [MEMORY[0x277CBEB98] setWithArray:v6];
  [v12 unionSet:v13];

  if ([(GKMatchmaker *)self shouldRunGroupActivityWithDescription:@"updateAfterSettingShareInvitees"])
  {
    v14 = [(GKMatchmaker *)self groupActivityManager];
    [v14 update];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)findMatchForRequest:(GKMatchRequest *)request withCompletionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__GKMatchmaker_findMatchForRequest_withCompletionHandler___block_invoke;
  v8[3] = &unk_2785DFAE8;
  v9 = v6;
  v7 = v6;
  [(GKMatchmaker *)self findMatchForRequest:request devicePushToken:0 withCompletionHandler:v8];
}

void __58__GKMatchmaker_findMatchForRequest_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v6 && !v5)
  {
    [v6 setInitiallyStarted:1];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)findMatchForRequest:(id)a3 devicePushToken:(id)a4 withCompletionHandler:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
  }

  v12 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = v8;
    _os_log_impl(&dword_227904000, v12, OS_LOG_TYPE_INFO, "Find match for request: %@", buf, 0xCu);
  }

  [(GKMatchmaker *)self setMatch:0];
  [(GKMatchmaker *)self setInviteesByUserID:0];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __74__GKMatchmaker_findMatchForRequest_devicePushToken_withCompletionHandler___block_invoke;
  v16[3] = &unk_2785DF9A8;
  v17 = v10;
  v13 = v10;
  [(GKMatchmaker *)self handleMatchRequest:v8 forCurrentMatch:0 hostedCurrentPlayerCount:0 serverHosted:0 rematchID:0 devicePushToken:v9 completionHandler:v16];
  v14 = +[GKReporter reporter];
  [v14 reportEvent:@"com.apple.GameKit.match" type:@"find"];

  v15 = *MEMORY[0x277D85DE8];
}

void __74__GKMatchmaker_findMatchForRequest_devicePushToken_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    v12 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v17 = 138412290;
      v18 = v10;
      _os_log_impl(&dword_227904000, v12, OS_LOG_TYPE_INFO, "Matchmaker failed to find match due to error: %@", &v17, 0xCu);
    }

    v13 = *(a1 + 32);
    if (v13)
    {
      v14 = *(v13 + 16);
LABEL_10:
      v14();
    }
  }

  else
  {
    v15 = *(a1 + 32);
    if (v15)
    {
      v14 = *(v15 + 16);
      goto LABEL_10;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)findPlayersForHostedRequest:(id)a3 match:(id)a4 withCompletionHandler:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
  }

  v12 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_227904000, v12, OS_LOG_TYPE_INFO, "Find players for hosted request: %@, match: %@", buf, 0x16u);
  }

  v13 = +[GKReporter reporter];
  [v13 reportEvent:@"com.apple.GameKit.match" reportable:v8];

  [(GKMatchmaker *)self setMatch:v9];
  [(GKMatchmaker *)self setInviteesByUserID:0];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __72__GKMatchmaker_findPlayersForHostedRequest_match_withCompletionHandler___block_invoke;
  v17[3] = &unk_2785DFB10;
  v17[4] = self;
  v18 = v10;
  v14 = v10;
  [(GKMatchmaker *)self handleMatchRequest:v8 forCurrentMatch:v9 hostedCurrentPlayerCount:0 serverHosted:1 rematchID:0 devicePushToken:0 completionHandler:v17];
  v15 = +[GKReporter reporter];
  [v15 reportEvent:@"com.apple.GameKit.match" type:@"findHosted"];

  v16 = *MEMORY[0x277D85DE8];
}

void __72__GKMatchmaker_findPlayersForHostedRequest_match_withCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))();
  }

  [*(a1 + 32) setMatch:0];
}

- (void)findPlayersForHostedRequest:(GKMatchRequest *)request withCompletionHandler:(void *)completionHandler
{
  v6 = request;
  v7 = completionHandler;
  v8 = v7;
  if (v7)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66__GKMatchmaker_findPlayersForHostedRequest_withCompletionHandler___block_invoke;
    v10[3] = &unk_2785DFB38;
    v11 = v7;
    [(GKMatchmaker *)self findMatchedPlayers:v6 withCompletionHandler:v10];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
    {
      [GKMatchmaker findPlayersForHostedRequest:withCompletionHandler:];
    }
  }
}

void __66__GKMatchmaker_findPlayersForHostedRequest_withCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = *(*(a1 + 32) + 16);
LABEL_3:
    v7();
    goto LABEL_13;
  }

  v8 = [v5 players];

  if (!v8)
  {
    v7 = *(*(a1 + 32) + 16);
    goto LABEL_3;
  }

  v9 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [v6 players];
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [v9 addObject:*(*(&v16 + 1) + 8 * i)];
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  (*(*(a1 + 32) + 16))();
LABEL_13:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)findMatchedPlayers:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(GKMatchmaker *)self newMatch];
    v9 = +[GKDaemonProxy proxyForLocalPlayer];
    v10 = [v9 multiplayerService];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __57__GKMatchmaker_findMatchedPlayers_withCompletionHandler___block_invoke;
    v13[3] = &unk_2785DF480;
    v14 = v8;
    v15 = self;
    v16 = v6;
    v17 = v7;
    v11 = v8;
    [v10 fetchTransportOverrideWithHandler:v13];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v12 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
    {
      [GKMatchmaker findMatchedPlayers:withCompletionHandler:];
    }
  }
}

void __57__GKMatchmaker_findMatchedPlayers_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = a2;
  v10 = [v7 transportContext];
  [v10 updateWithForceEnabledTransports:v9 forceDisabledTransports:v8 andHealthMonitorEnabled:a4];

  v12 = *(a1 + 40);
  v11 = *(a1 + 48);
  v13 = *(a1 + 32);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__GKMatchmaker_findMatchedPlayers_withCompletionHandler___block_invoke_2;
  v14[3] = &unk_2785DED10;
  v16 = *(a1 + 56);
  v15 = *(a1 + 32);
  [v12 findPlayersForHostedRequest:v11 match:v13 withCompletionHandler:v14];
}

void __57__GKMatchmaker_findMatchedPlayers_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = [[GKMatchedPlayers alloc] initWithMatch:*(a1 + 32) players:v6];
    (*(*(a1 + 40) + 16))();
  }
}

- (void)findPlayersForHostedMatchRequest:(GKMatchRequest *)request withCompletionHandler:(void *)completionHandler
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = request;
  v7 = completionHandler;
  if (!GKApplicationLinkedOnOrAfter(917504, 659456))
  {
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
    }

    v11 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&dword_227904000, v11, OS_LOG_TYPE_INFO, "Find players for hosted match request: %@", buf, 0xCu);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __71__GKMatchmaker_findPlayersForHostedMatchRequest_withCompletionHandler___block_invoke;
    v13[3] = &unk_2785DDCB0;
    v14 = v7;
    [(GKMatchmaker *)self findPlayersForHostedRequest:v6 withCompletionHandler:v13];
    v9 = v14;
    goto LABEL_12;
  }

  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
  {
    [GKMatchmaker findPlayersForHostedMatchRequest:withCompletionHandler:];
    if (!v7)
    {
      goto LABEL_13;
    }

    goto LABEL_6;
  }

  if (v7)
  {
LABEL_6:
    v9 = [MEMORY[0x277CCA9B8] userErrorForCode:34 underlyingError:0];
    (*(v7 + 2))(v7, 0, v9);
LABEL_12:
  }

LABEL_13:

  v12 = *MEMORY[0x277D85DE8];
}

void __71__GKMatchmaker_findPlayersForHostedMatchRequest_withCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  v5 = [a2 _gkMapWithBlock:&__block_literal_global_313];
  (*(*(a1 + 32) + 16))();
}

id __71__GKMatchmaker_findPlayersForHostedMatchRequest_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 internal];
  v3 = [v2 playerID];

  return v3;
}

- (void)addPlayersToMatch:(id)a3 matchRequest:(id)a4 devicePushToken:(id)a5 completionHandler:(id)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!os_log_GKGeneral)
  {
    v14 = GKOSLoggers();
  }

  v15 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v22 = v10;
    v23 = 2112;
    v24 = v11;
    _os_log_impl(&dword_227904000, v15, OS_LOG_TYPE_INFO, "Add players to match: %@, with request: %@", buf, 0x16u);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __81__GKMatchmaker_addPlayersToMatch_matchRequest_devicePushToken_completionHandler___block_invoke;
  v19[3] = &unk_2785DF9A8;
  v20 = v13;
  v16 = v13;
  [(GKMatchmaker *)self handleMatchRequest:v11 forCurrentMatch:v10 hostedCurrentPlayerCount:0 serverHosted:0 rematchID:0 devicePushToken:v12 completionHandler:v19];
  v17 = +[GKReporter reporter];
  [v17 reportEvent:@"com.apple.GameKit.match" type:@"add"];

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __81__GKMatchmaker_addPlayersToMatch_matchRequest_devicePushToken_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a5);
  }

  return result;
}

- (void)addPlayersForHostedMatchRequest:(id)a3 existingPlayerCount:(int64_t)a4 devicePushToken:(id)a5 completionHandler:(id)a6
{
  v22 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (!os_log_GKGeneral)
  {
    v13 = GKOSLoggers();
  }

  v14 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v21 = v10;
    _os_log_impl(&dword_227904000, v14, OS_LOG_TYPE_INFO, "Add players for hosted match request: %@", buf, 0xCu);
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __102__GKMatchmaker_addPlayersForHostedMatchRequest_existingPlayerCount_devicePushToken_completionHandler___block_invoke;
  v18[3] = &unk_2785DF9A8;
  v19 = v12;
  v15 = v12;
  [(GKMatchmaker *)self handleMatchRequest:v10 forCurrentMatch:0 hostedCurrentPlayerCount:a4 serverHosted:1 rematchID:0 devicePushToken:v11 completionHandler:v18];
  v16 = +[GKReporter reporter];
  [v16 reportEvent:@"com.apple.GameKit.match" type:@"addHosted"];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)findRematchForMatch:(id)a3 completionHandler:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "Find rematch for match: %@", buf, 0xCu);
  }

  v10 = [v6 rematchID];
  if (v10)
  {
    v11 = v10;
    v12 = [v6 rematchCount];

    if (v12)
    {
      v13 = objc_alloc_init(GKMatchRequest);
      -[GKMatchRequest setMinPlayers:](v13, "setMinPlayers:", [v6 rematchCount] + 1);
      -[GKMatchRequest setMaxPlayers:](v13, "setMaxPlayers:", [v6 rematchCount] + 1);
      v14 = [v6 rematchID];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __54__GKMatchmaker_findRematchForMatch_completionHandler___block_invoke;
      v16[3] = &unk_2785DF9A8;
      v17 = v7;
      [(GKMatchmaker *)self handleMatchRequest:v13 forCurrentMatch:0 hostedCurrentPlayerCount:0 serverHosted:0 rematchID:v14 devicePushToken:0 completionHandler:v16];

LABEL_10:
      goto LABEL_11;
    }
  }

  if (v7)
  {
    v13 = [MEMORY[0x277CCA9B8] userErrorForCode:13 underlyingError:0];
    (*(v7 + 2))(v7, 0, v13);
    goto LABEL_10;
  }

LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __54__GKMatchmaker_findRematchForMatch_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a3, a5);
  }

  return result;
}

- (BOOL)allInviteesDidRespond
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [(GKMatchmaker *)self inviteesByUserID];
  if ([v3 count])
  {

LABEL_4:
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v8 = v7;
      v9 = [(GKMatchmaker *)self inviteesByUserID];
      v19 = 138412290;
      v20 = v9;
      _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_INFO, "Waiting for response from invitees: %@", &v19, 0xCu);
    }

    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
    }

    v11 = os_log_GKMatch;
    v12 = os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO);
    if (v12)
    {
      v13 = v11;
      v14 = [(GKMatchmaker *)self shareInvitees];
      v19 = 138412290;
      v20 = v14;
      _os_log_impl(&dword_227904000, v13, OS_LOG_TYPE_INFO, "Waiting for response from messages invitees: %@", &v19, 0xCu);

      LOBYTE(v12) = 0;
    }

    goto LABEL_17;
  }

  v4 = [(GKMatchmaker *)self shareInvitees];
  v5 = [v4 count];

  if (v5)
  {
    goto LABEL_4;
  }

  if (!os_log_GKGeneral)
  {
    v15 = GKOSLoggers();
  }

  v16 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    [(GKMatchmaker *)v16 allInviteesDidRespond];
  }

  LOBYTE(v12) = 1;
LABEL_17:
  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)doneMatchmaking
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_13() callStackSymbols];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_6(&dword_227904000, v4, v5, "Done matchmaking Stack: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)cancelPendingInvites
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_13() callStackSymbols];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_6(&dword_227904000, v4, v5, "Cancel pending invites. Call Stack: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __36__GKMatchmaker_cancelPendingInvites__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[GKDaemonProxy proxyForLocalPlayer];
  v4 = [v3 multiplayerService];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__GKMatchmaker_cancelPendingInvites__block_invoke_2;
  v6[3] = &unk_2785DD710;
  v7 = v2;
  v5 = v2;
  [v4 cancelGameInviteWithHandler:v6];
}

uint64_t __36__GKMatchmaker_cancelPendingInvites__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) doneMatchmaking];
  v2 = [*(a1 + 32) invitedShareInvitees];
  [v2 removeAllObjects];

  v3 = [*(a1 + 32) invitedInvitees];
  [v3 removeAllObjects];

  v4 = [*(a1 + 32) invitedNearbyPlayers];
  [v4 removeAllObjects];

  v5 = [*(a1 + 32) autoMatchedPlayers];
  [v5 removeAllObjects];

  v6 = [*(a1 + 32) siblingInvitees];
  [v6 removeAllObjects];

  v7 = [*(a1 + 32) sharePlayInviteeTokensFromProgrammaticInvite];
  [v7 removeAllObjects];

  [*(a1 + 32) setInviterPlayerID:0];
  v8 = *(a1 + 32);

  return [v8 setInviteApproach:0];
}

- (void)cancelPendingInviteToPlayer:(GKPlayer *)player
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = player;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = [(GKPlayer *)v4 internal];
    v9 = [v8 debugDescription];
    *buf = 138412290;
    v30 = v9;
    _os_log_impl(&dword_227904000, v7, OS_LOG_TYPE_INFO, "cancel pending invite to player: %@", buf, 0xCu);
  }

  if ([(GKMatchmaker *)self removeInvitee:v4])
  {
    v10 = [(GKMatchmaker *)self invitedInvitees];
    v11 = [(GKPlayer *)v4 internal];
    v12 = [v11 playerID];
    [v10 removeObject:v12];

    v28 = v4;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
    [(GKMatchmaker *)self cancelNearbyInvitesToPlayers:v13];

    LODWORD(v12) = [(GKMatchmaker *)self allInviteesDidRespond];
    v14 = +[GKDaemonProxy proxyForLocalPlayer];
    v15 = [v14 multiplayerService];
    v16 = v15;
    if (v12)
    {
      [v15 cancelGameInviteWithHandler:&__block_literal_global_318_0];

      [(GKMatchmaker *)self doneMatchmaking];
      goto LABEL_14;
    }

    v18 = [(GKPlayer *)v4 internal];
    v27 = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
    [v16 removePlayersFromGameInviteV2:v19 handler:&__block_literal_global_320];
  }

  else
  {
    v14 = [(GKPlayer *)v4 internal];
    v17 = [v14 alias];
    if (v17)
    {
    }

    else
    {
      v20 = [(GKPlayer *)v4 messagesID];

      if (!v20)
      {
        goto LABEL_14;
      }

      v21 = [(GKMatchmaker *)self shareInvitees];
      v22 = [(GKPlayer *)v4 messagesID];
      [v21 removeObject:v22];

      v23 = [(GKMatchmaker *)self invitedShareInvitees];
      v24 = [(GKPlayer *)v4 messagesID];
      [v23 removeObject:v24];

      v14 = [(GKMatchmaker *)self shareInvitees];
      [(GKMatchmaker *)self setShareInvitees:v14 propagateToDaemon:1];
    }
  }

LABEL_14:
  if ([(GKMatchmaker *)self shouldRunGroupActivityWithDescription:@"updateAfterCancelPendingInvite"])
  {
    v25 = [(GKMatchmaker *)self groupActivityManager];
    [v25 update];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)cancelInviteToPlayer:(NSString *)playerID
{
  v4 = playerID;
  if (GKApplicationLinkedOnOrAfter(917504, 659456))
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
    {
      [GKMatchmaker cancelInviteToPlayer:];
    }
  }

  else
  {
    v6 = [(GKMatchmaker *)self inviteesByUserID];
    v7 = [v6 objectForKeyedSubscript:v4];

    if (v7)
    {
      [(GKMatchmaker *)self cancelPendingInviteToPlayer:v7];
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v8 = GKOSLoggers();
      }

      v9 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
      {
        [(GKMatchmaker *)v4 cancelInviteToPlayer:v9, self];
      }
    }
  }
}

- (void)cancel
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_13() callStackSymbols];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_6(&dword_227904000, v4, v5, "GKMatchmaker cancel. Stack: \n%@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)finishMatchmakingForMatch:(GKMatch *)match
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = match;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v15 = 138412290;
    v16 = v4;
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "Finish matchmaking for match: %@", &v15, 0xCu);
  }

  v7 = [(GKMatch *)v4 makeInviteMessageDoneData];
  [(GKMatch *)v4 sendInviteData:v7];

  [(GKMatchmaker *)self changeGroupActivityStateToGameStarted];
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "recording the realtime match persistence timestamp. game from API.", &v15, 2u);
  }

  v10 = +[GKReporter reporter];
  [v10 recordCurrentRealtimeMatchPersistenceTimestamp];

  v11 = +[GKReporter reporter];
  [v11 reportEvent:@"com.apple.GameKit.multiplayer.realtime.connectionResult" type:@"realtime.matchFromAPI"];

  v12 = +[GKDaemonProxy proxyForLocalPlayer];
  v13 = [v12 utilityService];
  [v13 recordGameStart];

  v14 = *MEMORY[0x277D85DE8];
}

- (void)queryPlayerGroupActivity:(NSUInteger)playerGroup withCompletionHandler:(void *)completionHandler
{
  v5 = completionHandler;
  if (v5)
  {
    v6 = +[GKDaemonProxy proxyForLocalPlayer];
    v7 = [v6 multiplayerService];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __63__GKMatchmaker_queryPlayerGroupActivity_withCompletionHandler___block_invoke;
    v10[3] = &unk_2785DFB80;
    v11 = v5;
    [v7 getFlowRateForPlayerGroup:playerGroup handler:v10];

    v8 = +[GKReporter reporter];
    [v8 reportEvent:@"com.apple.GameKit.match" type:@"queryGroup"];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
    {
      [GKMatchmaker queryPlayerGroupActivity:withCompletionHandler:];
    }
  }
}

- (void)queryActivityWithCompletionHandler:(void *)completionHandler
{
  v3 = completionHandler;
  if (v3)
  {
    v4 = +[GKDaemonProxy proxyForLocalPlayer];
    v5 = [v4 multiplayerService];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__GKMatchmaker_queryActivityWithCompletionHandler___block_invoke;
    v8[3] = &unk_2785DFB80;
    v9 = v3;
    [v5 getOverallFlowRateWithHandler:v8];

    v6 = +[GKReporter reporter];
    [v6 reportEvent:@"com.apple.GameKit.match" type:@"query"];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
    {
      [GKMatchmaker queryActivityWithCompletionHandler:];
    }
  }
}

- (void)queryQueueActivity:(id)a3 withCompletionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = +[GKDaemonProxy proxyForLocalPlayer];
    v8 = [v7 multiplayerService];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __57__GKMatchmaker_queryQueueActivity_withCompletionHandler___block_invoke;
    v11[3] = &unk_2785DFB80;
    v12 = v6;
    [v8 getFlowRateForQueue:v5 handler:v11];

    v9 = +[GKReporter reporter];
    [v9 reportEvent:@"com.apple.GameKit.match" type:@"queryQueue"];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
    {
      [GKMatchmaker queryQueueActivity:withCompletionHandler:];
    }
  }
}

- (void)startBrowsingForNearbyPlayersWithHandler:(void *)reachableHandler
{
  v4 = reachableHandler;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "GKMatchmaker: startBrowsingForNearbyPlayersWithHandler", v7, 2u);
  }

  [(GKMatchmaker *)self setNearbyPlayerHandler:v4];
  [(GKMatchmaker *)self startNearbyBrowsing];
}

- (void)startBrowsingForNearbyPlayersWithReachableHandler:(void *)reachableHandler
{
  v4 = reachableHandler;
  if (!GKApplicationLinkedOnOrAfter(917504, 659456))
  {
    [(GKMatchmaker *)self setNearbyPlayerIDHandler:v4];
    [(GKMatchmaker *)self startNearbyBrowsing];
    goto LABEL_8;
  }

  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
  {
    [GKMatchmaker startBrowsingForNearbyPlayersWithReachableHandler:];
    if (!v4)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (v4)
  {
LABEL_6:
    v4[2](v4, @"playerID is no longer available", 0);
  }

LABEL_8:
}

- (void)stopBrowsingForNearbyPlayers
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_227904000, v4, OS_LOG_TYPE_INFO, "GKMatchmaker: stopBrowsingForNearbyPlayers", v5, 2u);
  }

  [(GKMatchmaker *)self stopNearbyBrowsing];
  [(GKMatchmaker *)self setNearbyPlayerHandler:0];
}

- (void)startGroupActivityWithPlayerHandler:(void *)handler
{
  v4 = handler;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "starting browsing for sharePlay players", buf, 2u);
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__GKMatchmaker_startGroupActivityWithPlayerHandler___block_invoke;
  v8[3] = &unk_2785DED88;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [(GKMatchmaker *)self activateGroupActivityWithHandler:v8];
}

void __52__GKMatchmaker_startGroupActivityWithPlayerHandler___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 addObserver:*(a1 + 32) selector:sel_sharePlayPlayerFound_ name:@"GKGroupActivityPlayerToInviteNotification" object:0];
    [*(a1 + 32) setSharePlayPlayerHandler:*(a1 + 40)];
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    v5 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_227904000, v5, OS_LOG_TYPE_INFO, "started browsing for sharePlay players", v6, 2u);
    }
  }
}

- (void)stopGroupActivity
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_227904000, v4, OS_LOG_TYPE_INFO, "stopping browsing for sharePlay players", v7, 2u);
  }

  [(GKMatchmaker *)self setSharePlayPlayerHandler:0];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self name:@"GKGroupActivityPlayerToInviteNotification" object:0];
  if ([(GKMatchmaker *)self shouldRunGroupActivityWithDescription:@"endGroupActivity"])
  {
    v6 = [(GKMatchmaker *)self groupActivityManager];
    [v6 endWithCompletionHandler:&__block_literal_global_334_0];
  }
}

void __33__GKMatchmaker_stopGroupActivity__block_invoke()
{
  if (!os_log_GKGeneral)
  {
    v0 = GKOSLoggers();
  }

  v1 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_227904000, v1, OS_LOG_TYPE_INFO, "stopped browsing for sharePlay players", v2, 2u);
  }
}

- (void)sharePlayPlayerFound:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v23 = 138412290;
    v24 = v4;
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "sharePlayPlayerFound: %@", &v23, 0xCu);
  }

  v7 = [v4 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"player"];
  v9 = [v7 objectForKeyedSubscript:@"pushToken"];
  v10 = [(GKMatchmaker *)self sharePlayPlayerHandler];

  if (v10)
  {
    v11 = [(GKMatchmaker *)self sharePlayPlayerHandler];
    (v11)[2](v11, v8);

    if (!os_log_GKGeneral)
    {
      v12 = GKOSLoggers();
    }

    v13 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v23 = 138412546;
      v24 = v8;
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&dword_227904000, v13, OS_LOG_TYPE_INFO, "sharePlayInviteeTokensFromProgrammaticInvite gets a new player: %@, with token: %@", &v23, 0x16u);
    }

    v14 = [(GKMatchmaker *)self sharePlayInviteeTokensFromProgrammaticInvite];
    v15 = [v8 internal];
    v16 = [v15 playerID];
    [v14 setObject:v9 forKeyedSubscript:v16];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v17 = GKOSLoggers();
    }

    v18 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v19 = v18;
      v20 = [v8 internal];
      v21 = [v20 debugDescription];
      v23 = 138412290;
      v24 = v21;
      _os_log_impl(&dword_227904000, v19, OS_LOG_TYPE_INFO, "no sharePlayPlayerHandler is set to call it back for developers. player: %@", &v23, 0xCu);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (int64_t)responseForDeclineReason:(int64_t)a3
{
  if ((a3 - 2) > 3)
  {
    return 1;
  }

  else
  {
    return qword_227A9FF00[a3 - 2];
  }
}

- (void)localPlayerAcceptedGameInviteNotification:(id)a3
{
  v4 = a3;
  v5 = [(GKMatchmaker *)self invitationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__GKMatchmaker_localPlayerAcceptedGameInviteNotification___block_invoke;
  v7[3] = &unk_2785DEBA8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __58__GKMatchmaker_localPlayerAcceptedGameInviteNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v5 = [v2 objectForKeyedSubscript:@"sid"];

  v3 = [*(a1 + 40) pendingInvitationUpdates];
  v4 = [v3 objectForKeyedSubscript:v5];

  if (!v4)
  {
    [*(a1 + 40) cancel];
  }
}

- (void)inviteeAcceptedNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"peer-id"];
  v6 = [(GKMatchmaker *)self invitationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__GKMatchmaker_inviteeAcceptedNotification___block_invoke;
  block[3] = &unk_2785DDB40;
  block[4] = self;
  v10 = v5;
  v11 = v4;
  v7 = v4;
  v8 = v5;
  dispatch_async(v6, block);
}

void __44__GKMatchmaker_inviteeAcceptedNotification___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) inviteesByUserID];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 48);
    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&dword_227904000, v5, OS_LOG_TYPE_INFO, "Invitee accepted notification - userInfo: %@", &v11, 0xCu);
  }

  if ([*(a1 + 32) removeInvitee:v3])
  {
    [*(a1 + 32) inviteeAccepted:v3 userInfo:*(a1 + 48) allResponded:{objc_msgSend(*(a1 + 32), "allInviteesDidRespond")}];
  }

  else if (v3 || ([*(a1 + 32) shareInvitees], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, !v9))
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __44__GKMatchmaker_inviteeAcceptedNotification___block_invoke_cold_1();
    }
  }

  else
  {
    [*(a1 + 32) shareInviteeAcceptedWithUserInfo:*(a1 + 48)];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)shareInviteeAcceptedWithUserInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"iCloudID"];
  v6 = [v4 objectForKeyedSubscript:@"peer-id"];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMatchmaker.m", 2383, "-[GKMatchmaker shareInviteeAcceptedWithUserInfo:]"];
  v8 = [GKDispatchGroup dispatchGroupWithName:v7];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __49__GKMatchmaker_shareInviteeAcceptedWithUserInfo___block_invoke;
  v21[3] = &unk_2785DD910;
  v22 = v6;
  v9 = v5;
  v23 = v9;
  v10 = v8;
  v24 = v10;
  v11 = v6;
  [v10 perform:v21];
  v12 = [(GKMatchmaker *)self invitationQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __49__GKMatchmaker_shareInviteeAcceptedWithUserInfo___block_invoke_341;
  v16[3] = &unk_2785DF3E0;
  v17 = v10;
  v18 = self;
  v19 = v9;
  v20 = v4;
  v13 = v4;
  v14 = v9;
  v15 = v10;
  [v15 notifyOnQueue:v12 block:v16];
}

void __49__GKMatchmaker_shareInviteeAcceptedWithUserInfo___block_invoke(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11[0] = *(a1 + 32);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__GKMatchmaker_shareInviteeAcceptedWithUserInfo___block_invoke_2;
  v7[3] = &unk_2785DE568;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = v3;
  v5 = v3;
  [GKPlayer loadPlayersForIdentifiersPrivate:v4 withCompletionHandler:v7];

  v6 = *MEMORY[0x277D85DE8];
}

void __49__GKMatchmaker_shareInviteeAcceptedWithUserInfo___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __49__GKMatchmaker_shareInviteeAcceptedWithUserInfo___block_invoke_2_cold_1();
    }
  }

  v8 = [v5 lastObject];
  v9 = *(a1 + 32);
  v10 = [v8 internal];
  [v10 setMessagesID:v9];

  [*(a1 + 40) setResult:v8];
  (*(*(a1 + 48) + 16))();
}

void __49__GKMatchmaker_shareInviteeAcceptedWithUserInfo___block_invoke_341(uint64_t a1)
{
  v2 = [*(a1 + 32) result];
  v3 = [*(a1 + 40) shareInvitees];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [*(a1 + 40) shareInvitees];
    [v5 removeObject:*(a1 + 48)];

    v6 = [*(a1 + 40) invitedShareInvitees];
    v7 = MEMORY[0x277CBEB98];
    v8 = [v2 internal];
    v9 = [v8 playerID];
    v10 = [v7 setWithObject:v9];
    [v6 unionSet:v10];

    [*(a1 + 40) inviteeAccepted:v2 userInfo:*(a1 + 56) allResponded:{objc_msgSend(*(a1 + 40), "allInviteesDidRespond")}];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __49__GKMatchmaker_shareInviteeAcceptedWithUserInfo___block_invoke_341_cold_1(a1);
    }
  }
}

- (void)inviteeAccepted:(id)a3 userInfo:(id)a4 allResponded:(BOOL)a5
{
  v36[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = dispatch_get_current_queue();
  v11 = [(GKMatchmaker *)self invitationQueue];

  if (v10 != v11)
  {
    v29 = v8;
    v12 = MEMORY[0x277CCACA8];
    label = dispatch_queue_get_label(v10);
    v14 = [(GKMatchmaker *)self invitationQueue];
    v15 = dispatch_queue_get_label(v14);
    [MEMORY[0x277CCACC8] callStackSymbols];
    v16 = v28 = a5;
    v17 = [v12 stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "-[GKMatchmaker inviteeAccepted:userInfo:allResponded:]", label, v15, v16];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/API/GKMatchmaker.m"];
    v19 = [v18 lastPathComponent];
    v20 = [v12 stringWithFormat:@"%@ (_actualCurrentQueue == self.invitationQueue)\n[%s (%s:%d)]", v17, "-[GKMatchmaker inviteeAccepted:userInfo:allResponded:]", objc_msgSend(v19, "UTF8String"), 2421];

    a5 = v28;
    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v20}];

    v8 = v29;
  }

  v21 = [v9 objectForKeyedSubscript:@"peer-id"];
  v22 = [v9 objectForKeyedSubscript:@"iCloudID"];
  v23 = v22;
  if (v8)
  {
    v24 = v22 != 0;
    v36[0] = v8;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:1];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __54__GKMatchmaker_inviteeAccepted_userInfo_allResponded___block_invoke;
    v30[3] = &unk_2785DFBF8;
    v30[4] = self;
    v31 = v9;
    v32 = v21;
    v34 = v24;
    v33 = v8;
    v35 = a5;
    [(GKMatchmaker *)self reportResponse:0 forInvitees:v25 withCompletionHandler:v30];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v26 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      [GKMatchmaker inviteeAccepted:userInfo:allResponded:];
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __54__GKMatchmaker_inviteeAccepted_userInfo_allResponded___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) match];

  if (v2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMatchmaker.m", 2436, "-[GKMatchmaker inviteeAccepted:userInfo:allResponded:]_block_invoke"];
    v4 = [GKDispatchGroup dispatchGroupWithName:v3];

    if (([*(a1 + 32) serverHosted] & 1) == 0)
    {
      v5 = [*(a1 + 32) currentMatchRequest];
      v6 = [v5 internal];
      v7 = [v6 matchType];

      if (v7 != 1)
      {
        v8 = [*(a1 + 40) objectForKeyedSubscript:@"peer-push-token"];
        v9 = [*(a1 + 40) objectForKeyedSubscript:@"invite-version"];
        v10 = [v9 unsignedCharValue];

        v11 = [*(a1 + 32) match];
        v12 = [v11 playerPushTokens];
        [v12 setObject:v8 forKey:*(a1 + 48)];

        v13 = +[GKReporter reporter];
        [v13 reportEvent:@"com.apple.GameKit.multiplayer.realtime.connectionResult" type:@"realtime.allMatchTotal"];

        v14 = *(a1 + 64);
        v15 = +[GKReporter reporter];
        v16 = v15;
        v17 = GKRTMessageBasedMatchTotal;
        if (!v14)
        {
          v17 = GKRTPushBasedMatchTotal;
        }

        [v15 reportEvent:@"com.apple.GameKit.multiplayer.realtime.connectionResult" type:*v17];

        v18 = [*(a1 + 32) match];
        v19 = [v18 transportContext];
        [v19 updateAfterInviteeAcceptedUserInfo:*(a1 + 40)];

        v20 = [*(a1 + 32) match];
        v21 = [v20 transportContext];
        v22 = [v21 shouldSendInviteUpdate];

        if (v22)
        {
          v23 = [*(a1 + 32) match];
          v24 = [v23 transportContext];
          v25 = [v24 formAnInviteUpdate];

          if (!os_log_GKGeneral)
          {
            v26 = GKOSLoggers();
          }

          v27 = os_log_GKMatch;
          if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v39 = v25;
            _os_log_impl(&dword_227904000, v27, OS_LOG_TYPE_INFO, "Sending invite update to participants in the lobby channel: %@", buf, 0xCu);
          }

          v28 = +[GKDaemonProxy proxyForLocalPlayer];
          v29 = [v28 multiplayerService];
          [v29 sendInvitationUpdate:v25 handler:&__block_literal_global_364];
        }

        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __54__GKMatchmaker_inviteeAccepted_userInfo_allResponded___block_invoke_365;
        v34[3] = &unk_2785DFBA8;
        v34[4] = *(a1 + 32);
        v35 = *(a1 + 56);
        v37 = v10;
        v36 = *(a1 + 40);
        [v4 perform:v34];
      }
    }

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __54__GKMatchmaker_inviteeAccepted_userInfo_allResponded___block_invoke_366;
    v32[3] = &unk_2785DFBD0;
    v33 = *(a1 + 65);
    v32[4] = *(a1 + 32);
    [v4 notifyOnMainQueueWithBlock:v32];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v30 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __54__GKMatchmaker_inviteeAccepted_userInfo_allResponded___block_invoke_cold_1();
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __54__GKMatchmaker_inviteeAccepted_userInfo_allResponded___block_invoke_362(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    if (!os_log_GKGeneral)
    {
      v3 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __54__GKMatchmaker_inviteeAccepted_userInfo_allResponded___block_invoke_362_cold_1();
    }
  }
}

void __54__GKMatchmaker_inviteeAccepted_userInfo_allResponded___block_invoke_365(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) match];
  v12[0] = *(a1 + 40);
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v6 = *(a1 + 56);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__GKMatchmaker_inviteeAccepted_userInfo_allResponded___block_invoke_2;
  v9[3] = &unk_2785DDC60;
  v9[4] = *(a1 + 32);
  v10 = *(a1 + 48);
  v11 = v3;
  v7 = v3;
  [v4 connectToPlayers:v5 version:v6 invitedByLocalPlayer:1 completionHandler:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __54__GKMatchmaker_inviteeAccepted_userInfo_allResponded___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x277CCA9B8] userErrorForCode:28 underlyingError:v3];

    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_278_cold_1();
    }
  }

  else
  {
    v7 = [*(a1 + 32) match];
    [v7 handleRelayPushData:*(a1 + 40) onlyIfPreemptive:1];

    v5 = 0;
  }

  (*(*(a1 + 48) + 16))();
}

uint64_t __54__GKMatchmaker_inviteeAccepted_userInfo_allResponded___block_invoke_366(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) doneMatchmaking];
  }

  return result;
}

- (void)inviteeDeclinedNotification:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [(GKMatchmaker *)self invitationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__GKMatchmaker_inviteeDeclinedNotification___block_invoke;
  v7[3] = &unk_2785DEBA8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)inviteeDeclinedWithUserInfo:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = dispatch_get_current_queue();
  v6 = [(GKMatchmaker *)self invitationQueue];

  if (v5 != v6)
  {
    v7 = MEMORY[0x277CCACA8];
    label = dispatch_queue_get_label(v5);
    v9 = [(GKMatchmaker *)self invitationQueue];
    v10 = dispatch_queue_get_label(v9);
    v11 = [MEMORY[0x277CCACC8] callStackSymbols];
    v12 = [v7 stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "-[GKMatchmaker inviteeDeclinedWithUserInfo:]", label, v10, v11];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/API/GKMatchmaker.m"];
    v14 = [v13 lastPathComponent];
    v15 = [v7 stringWithFormat:@"%@ (_actualCurrentQueue == self.invitationQueue)\n[%s (%s:%d)]", v12, "-[GKMatchmaker inviteeDeclinedWithUserInfo:]", objc_msgSend(v14, "UTF8String"), 2505];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v15}];
  }

  v16 = [v4 objectForKey:@"peer-id"];
  v17 = [(GKMatchmaker *)self inviteesByUserID];
  v18 = [v17 objectForKey:v16];

  if (!os_log_GKGeneral)
  {
    v19 = GKOSLoggers();
  }

  v20 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v44 = v4;
    _os_log_impl(&dword_227904000, v20, OS_LOG_TYPE_INFO, "Invitee declined invite - userInfo: %@", buf, 0xCu);
  }

  v21 = [v4 objectForKey:@"y"];

  if (v21)
  {
    v22 = [v4 objectForKey:@"y"];
    v23 = [v22 integerValue];

    if (v23 == 5)
    {
      v24 = NSSelectorFromString(&cfstr_Showconfirmati.isa);
      v25 = +[GKLocalPlayer local];
      v26 = objc_opt_respondsToSelector();

      if (v26)
      {
        v27 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings SOFTWARE_UPDATE_REQUIRED_TITLE];
        v42[0] = v27;
        v28 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings SOFTWARE_UPDATE_REQUIRED_MESSAGE];
        v42[1] = v28;
        v29 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings GO_TO_SOFTWARE_UPDATE_SETTINGS_BUTTON];
        v42[2] = v29;
        v42[3] = &__block_literal_global_371;
        v42[4] = &__block_literal_global_373;
        v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:5];

        v31 = +[GKLocalPlayer local];
        [v31 _gkPerformSelector:v24 withObjects:v30];

        v32 = +[GKAPIReporter reporter];
        [v32 recordMultiplayerErrorID:@"inviteeDeclinedIncompatibleTransport"];
      }

      else
      {
        if (!os_log_GKGeneral)
        {
          v33 = GKOSLoggers();
        }

        v34 = os_log_GKMatch;
        if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_227904000, v34, OS_LOG_TYPE_INFO, "showSharePlayMatchFullAlert failed since localPlayer does not respond to selector showAlertWithTitle:andMessage:", buf, 2u);
        }
      }
    }

    if ([(GKMatchmaker *)self removeInvitee:v18])
    {
      v35 = [(GKMatchmaker *)self allInviteesDidRespond];
      v36 = [(GKMatchmaker *)self responseForDeclineReason:v23];
      v41 = v18;
      v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __44__GKMatchmaker_inviteeDeclinedWithUserInfo___block_invoke_377;
      v39[3] = &unk_2785DFBD0;
      v40 = v35;
      v39[4] = self;
      [(GKMatchmaker *)self reportResponse:v36 forInvitees:v37 withCompletionHandler:v39];
    }
  }

  else
  {
    [(GKMatchmaker *)self removeInvitee:v18];
  }

  v38 = *MEMORY[0x277D85DE8];
}

void __44__GKMatchmaker_inviteeDeclinedWithUserInfo___block_invoke()
{
  v1 = +[GKDaemonProxy proxyForLocalPlayer];
  v0 = [v1 utilityService];
  [v0 openSoftwareUpdateSettings];
}

uint64_t __44__GKMatchmaker_inviteeDeclinedWithUserInfo___block_invoke_377(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    return [*(result + 32) doneMatchmaking];
  }

  return result;
}

- (void)inviteeUpdateNotification:(id)a3
{
  v4 = a3;
  v5 = [(GKMatchmaker *)self invitationQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__GKMatchmaker_inviteeUpdateNotification___block_invoke;
  v7[3] = &unk_2785DEBA8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __42__GKMatchmaker_inviteeUpdateNotification___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:@"x"];
  v4 = v3;
  if (v3 && ([v3 objectForKeyedSubscript:@"sid"], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    v8 = os_log_GKFastSync;
    if (os_log_type_enabled(os_log_GKFastSync, OS_LOG_TYPE_INFO))
    {
      v34 = 138412290;
      v35 = v2;
      _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_INFO, "Invitee should update invite related info with: %@", &v34, 0xCu);
    }

    v9 = objc_alloc_init(GKUpdateInviteInfo);
    [(GKUpdateInviteInfo *)v9 setSessionID:v6];
    v10 = [v4 objectForKeyedSubscript:@"matchID"];

    if (v10)
    {
      v11 = [v4 objectForKeyedSubscript:@"matchID"];
      [(GKUpdateInviteInfo *)v9 setMatchID:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"gp"];

    if (v12)
    {
      v13 = [GKTransportParticipant participantsFrom:v4 withKey:@"gp"];
      [(GKUpdateInviteInfo *)v9 setGameParticipants:v13];
    }

    v14 = [v4 objectForKeyedSubscript:@"lp"];

    if (v14)
    {
      v15 = [GKTransportParticipant participantsFrom:v4 withKey:@"lp"];
      [(GKUpdateInviteInfo *)v9 setLobbyParticipants:v15];
    }

    v16 = [*(a1 + 40) pendingInvitationUpdates];
    v17 = [v16 objectForKeyedSubscript:v6];

    if (v17)
    {
      [(GKUpdateInviteInfo *)v9 mergeWithUpdate:v17];
    }

    v18 = [*(a1 + 40) match];

    if (v18)
    {
      v19 = [*(a1 + 40) match];
      v20 = [v19 transportContext];
      [v20 updateWithInviteUpdateInfo:v9];

      v21 = [*(a1 + 40) match];
      v22 = [v21 transportContext];
      v23 = [v22 sessionID];

      if (v23)
      {
        v24 = [*(a1 + 40) pendingInvitationUpdates];
        v25 = [*(a1 + 40) match];
        v26 = [v25 transportContext];
        v27 = [v26 sessionID];
        [v24 removeObjectForKey:v27];
      }

      v28 = [*(a1 + 40) match];
      [v28 connectToPlayers:MEMORY[0x277CBEBF8] version:1 invitedByLocalPlayer:0 completionHandler:&__block_literal_global_385];
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v31 = GKOSLoggers();
      }

      v32 = os_log_GKFastSync;
      if (os_log_type_enabled(os_log_GKFastSync, OS_LOG_TYPE_INFO))
      {
        v34 = 138412546;
        v35 = v6;
        v36 = 2112;
        v37 = v9;
        _os_log_impl(&dword_227904000, v32, OS_LOG_TYPE_INFO, "No match yet. For sessionID: %@, adding pending invite update: %@", &v34, 0x16u);
      }

      v28 = [*(a1 + 40) pendingInvitationUpdates];
      [v28 setObject:v9 forKeyedSubscript:v6];
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v29 = GKOSLoggers();
    }

    v30 = os_log_GKFastSync;
    if (os_log_type_enabled(os_log_GKFastSync, OS_LOG_TYPE_INFO))
    {
      LOWORD(v34) = 0;
      _os_log_impl(&dword_227904000, v30, OS_LOG_TYPE_INFO, "Cannot find sessionID from updateInvite notification.", &v34, 2u);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __42__GKMatchmaker_inviteeUpdateNotification___block_invoke_383(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    v4 = [MEMORY[0x277CCA9B8] userErrorForCode:28 underlyingError:v2];

    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __42__GKMatchmaker_inviteeUpdateNotification___block_invoke_383_cold_1();
    }
  }
}

- (void)setNearbyPlayerAccepted:(id)a3 connectionData:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(GKMatchmaker *)self removeInvitee:v6])
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      v11 = [v6 internal];
      v12 = [v11 debugDescription];
      *buf = 138412290;
      v20 = v12;
      _os_log_impl(&dword_227904000, v10, OS_LOG_TYPE_INFO, "Nearby player accepted: %@", buf, 0xCu);
    }

    v18 = v6;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __55__GKMatchmaker_setNearbyPlayerAccepted_connectionData___block_invoke;
    v15[3] = &unk_2785DDB40;
    v15[4] = self;
    v16 = v6;
    v17 = v7;
    [(GKMatchmaker *)self reportResponse:0 forInvitees:v13 withCompletionHandler:v15];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __55__GKMatchmaker_setNearbyPlayerAccepted_connectionData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) match];

  if (v2)
  {
    v3 = [*(a1 + 32) match];
    [v3 connectToNearbyPlayer:*(a1 + 40) withConnectionData:*(a1 + 48)];

    if ([*(a1 + 32) allInviteesDidRespond])
    {
      v4 = *(a1 + 32);

      [v4 doneMatchmaking];
    }
  }
}

- (void)setNearbyPlayerDeclined:(id)a3 reason:(int64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(GKMatchmaker *)self removeInvitee:v6])
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    v8 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      v10 = [v6 internal];
      v11 = [v10 debugDescription];
      *buf = 138412290;
      v18 = v11;
      _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "Nearby player declined: %@", buf, 0xCu);
    }

    v12 = [(GKMatchmaker *)self responseForDeclineReason:a4];
    v16 = v6;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __47__GKMatchmaker_setNearbyPlayerDeclined_reason___block_invoke;
    v15[3] = &unk_2785DD760;
    v15[4] = self;
    [(GKMatchmaker *)self reportResponse:v12 forInvitees:v13 withCompletionHandler:v15];
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __47__GKMatchmaker_setNearbyPlayerDeclined_reason___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) allInviteesDidRespond];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 doneMatchmaking];
  }

  return result;
}

- (void)setNearbyPlayerFailed:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(GKMatchmaker *)self removeInvitee:v4])
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v7 = v6;
      v8 = [v4 internal];
      v9 = [v8 debugDescription];
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&dword_227904000, v7, OS_LOG_TYPE_INFO, "Failed to set nearby player: %@", buf, 0xCu);
    }

    v13 = v4;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __38__GKMatchmaker_setNearbyPlayerFailed___block_invoke;
    v12[3] = &unk_2785DD760;
    v12[4] = self;
    [(GKMatchmaker *)self reportResponse:2 forInvitees:v10 withCompletionHandler:v12];
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __38__GKMatchmaker_setNearbyPlayerFailed___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) allInviteesDidRespond];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 doneMatchmaking];
  }

  return result;
}

- (void)promptForRadarWithDescriptionAddition:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[GKPreferences shared];
  v6 = [v5 isInternalBuild];

  if (v6)
  {
    if ([(GKMatchmaker *)self canPromptTapToRadar])
    {
      if (!os_log_GKGeneral)
      {
        v7 = GKOSLoggers();
      }

      v8 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v16 = v4;
        _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_INFO, "Starting prompting TTR with description: %@", buf, 0xCu);
      }

      v9 = +[GKDaemonProxy proxyForLocalPlayer];
      v10 = [v9 multiplayerService];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __54__GKMatchmaker_promptForRadarWithDescriptionAddition___block_invoke;
      v14[3] = &unk_2785DD760;
      v14[4] = self;
      [v10 fileMultiplayerTTRWithCallBackIdentifier:&stru_283AFD1E0 descriptionAddition:v4 handler:v14];
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v11 = GKOSLoggers();
      }

      v12 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_227904000, v12, OS_LOG_TYPE_INFO, "Already prompted tap to radar. Skip.", buf, 2u);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)nearbyPlayerFound:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"deviceID"];
  v6 = [v4 objectForKeyedSubscript:@"discoveryInfo"];
  if (v6 && v5)
  {
    [(GKMatchmaker *)self foundNearbyDeviceID:v5 discoveryInfo:v6];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      [GKMatchmaker nearbyPlayerFound:];
    }
  }
}

- (void)nearbyPlayerLost:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"deviceID"];
  if (v5)
  {
    [(GKMatchmaker *)self lostNearbyDeviceID:v5];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      [GKMatchmaker nearbyPlayerLost:];
    }
  }
}

- (void)nearbyDataReceived:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"deviceID"];
  v6 = [v4 objectForKey:@"data"];
  if (v6 && v5)
  {
    [(GKMatchmaker *)self receivedData:v6 fromNearbyDeviceID:v5];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      [GKMatchmaker nearbyDataReceived:];
    }
  }
}

- (void)matchRequestRecipientsSet:(id)a3
{
  v5 = [a3 userInfo];
  v4 = [v5 objectForKeyedSubscript:@"request"];
  if (v4)
  {
    [(GKMatchmaker *)self setCurrentMatchRequest:v4];
  }
}

+ (GKMatchmaker)sharedMatchmaker
{
  if ([MEMORY[0x277CCA8D8] _gkMainBundleIsGameCenterSystemProcess])
  {
    if (!os_log_GKGeneral)
    {
      v2 = GKOSLoggers();
    }

    v3 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      +[(GKMatchmaker *)v3];
    }

    v4 = 0;
  }

  else
  {
    if (sharedMatchmaker_sDispatchOnceToken != -1)
    {
      +[GKMatchmaker sharedMatchmaker];
    }

    v4 = sharedMatchmaker_sSharedMatchmaker;
  }

  return v4;
}

void __32__GKMatchmaker_sharedMatchmaker__block_invoke()
{
  if (!os_log_GKGeneral)
  {
    v0 = GKOSLoggers();
  }

  v1 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    __32__GKMatchmaker_sharedMatchmaker__block_invoke_cold_1(v1);
  }

  v2 = objc_alloc_init(GKMatchmaker);
  v3 = sharedMatchmaker_sSharedMatchmaker;
  sharedMatchmaker_sSharedMatchmaker = v2;
}

+ (BOOL)canPlayMultiplayerGameWithPlayers:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[GKPreferences shared];
  v5 = [v4 multiplayerAllowedPlayerType];

  if (v5)
  {
    v6 = +[GKPreferences shared];
    v7 = [v6 multiplayerAllowedPlayerType];

    if (v7 == 2 || (+[GKPreferences shared](GKPreferences, "shared"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 multiplayerAllowedPlayerType], v8, v9 != 1))
    {
      LOBYTE(v5) = 1;
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v10 = v3;
      v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v21;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v21 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v20 + 1) + 8 * i);
            if (([v15 isLocalPlayer] & 1) == 0)
            {
              v16 = [v15 friendBiDirectional];
              v17 = [v16 isEqualToNumber:&unk_283B33268];

              if (!v17)
              {
                LOBYTE(v5) = 0;
                goto LABEL_16;
              }
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      LOBYTE(v5) = 1;
LABEL_16:
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (id)syncQueue
{
  if (syncQueue_onceToken_0 != -1)
  {
    +[GKMatchmaker(Nearby) syncQueue];
  }

  v3 = syncQueue_sSyncQueue_0;

  return v3;
}

void __33__GKMatchmaker_Nearby__syncQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.GameKit.GKMatchmaker.nearby.sync", v2);
  v1 = syncQueue_sSyncQueue_0;
  syncQueue_sSyncQueue_0 = v0;
}

- (void)performSync:(id)a3
{
  block = a3;
  v3 = [objc_opt_class() syncQueue];
  v4 = dispatch_get_current_queue();

  if (v4 == v3)
  {
    v5 = MEMORY[0x277CCACA8];
    label = dispatch_queue_get_label(v3);
    v7 = [MEMORY[0x277CCACC8] callStackSymbols];
    v8 = [v5 stringWithFormat:@"%s invoked on the same queue(%s, would deadlock at %@"), "-[GKMatchmaker(Nearby) performSync:]", label, v7];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/GKMatchmaker+Nearby.m"];
    v10 = [v9 lastPathComponent];
    v11 = [v5 stringWithFormat:@"%@ (dispatch_get_current_queue() != queue)\n[%s (%s:%d)]", v8, "-[GKMatchmaker(Nearby) performSync:]", objc_msgSend(v10, "UTF8String"), 164];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v11}];
  }

  dispatch_sync(v3, block);
}

- (void)applicationDidEnterBackgroundNotification:(id)a3
{
  [(GKMatchmaker *)self stopNearbyAdvertising];
  if ([(GKMatchmaker *)self nearbyBrowsing])
  {
    [(GKMatchmaker *)self setWasNearbyBrowsing:1];
    [(GKMatchmaker *)self stopNearbyBrowsing];
  }

  [(GKMatchmaker *)self cancelSentNearbyInvites];

  [(GKMatchmaker *)self declineReceivedNearbyInvites];
}

- (void)applicationWillTerminateNotification:(id)a3
{
  [(GKMatchmaker *)self stopNearbyAdvertising];
  [(GKMatchmaker *)self stopNearbyBrowsing];
  [(GKMatchmaker *)self cancelSentNearbyInvites];
  [(GKMatchmaker *)self declineReceivedNearbyInvites];

  [(GKMatchmaker *)self leaveGroupActivity];
}

- (void)applicationWillEnterForegroundNotification:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(GKMatchmaker *)self wasNearbyBrowsing])
  {
    [(GKMatchmaker *)self setWasNearbyBrowsing:0];
    v4 = [(GKMatchmaker *)self nearbyPlayerHandler];

    if (v4)
    {
      v5 = [(GKMatchmaker *)self nearbyPlayers];
      v6 = [v5 copy];

      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v15;
        do
        {
          v11 = 0;
          do
          {
            if (*v15 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [(GKMatchmaker *)self nearbyDeviceWithDeviceID:*(*(&v14 + 1) + 8 * v11), v14];
            [(GKMatchmaker *)self setNearbyDevice:v12 reachable:0];

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        }

        while (v9);
      }

      [(GKMatchmaker *)self startNearbyBrowsing];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setupNearbyDiscovery
{
  if ([(GKMatchmaker *)self nearbyDiscoverySetup])
  {
    if (!os_log_GKGeneral)
    {
      v3 = GKOSLoggers();
    }

    v4 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_227904000, v4, OS_LOG_TYPE_INFO, "skip setting up nearbyDiscovery as we have done it", buf, 2u);
    }
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
      *v9 = 0;
      _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "GKMatchmaker+Nearby: setupNearbyDiscovery", v9, 2u);
    }

    v7 = +[GKDaemonProxy proxyForLocalPlayer];
    v8 = [v7 multiplayerService];
    [v8 setupNearbyDiscovery];

    [(GKMatchmaker *)self setNearbyDiscoverySetup:1];
  }
}

+ (id)descriptionForNearbyDictionary:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectForKey:@"profile"];
  v5 = [v4 objectForKey:@"photoData"];
  if (v5)
  {
    v24 = v3;
    v21 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v3];
    v23 = v4;
    v20 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v4];
    v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v22 = v5;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          v13 = [v7 objectForKey:v12];
          if ([v13 length] < 9)
          {
            v16 = [v13 description];
          }

          else
          {
            v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:objc_msgSend(v13 length:"bytes") freeWhenDone:{8, 0}];
            v15 = [v14 description];
            v16 = [v15 stringByReplacingOccurrencesOfString:@">" withString:@"...>"];
          }

          [v6 setObject:v16 forKey:v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v9);
    }

    [v20 setObject:v6 forKey:@"photoData"];
    [v21 setObject:v20 forKey:@"profile"];
    v17 = [v21 description];

    v4 = v23;
    v3 = v24;
    v5 = v22;
  }

  else
  {
    v17 = [v3 description];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)receivedData:(id)a3 fromNearbyDeviceID:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [MEMORY[0x277CCAC58] propertyListWithData:a3 options:0 format:0 error:0];
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = [GKMatchmaker descriptionForNearbyDictionary:v7];
    v20 = 138412546;
    *v21 = v11;
    *&v21[8] = 2112;
    *&v21[10] = v6;
    _os_log_impl(&dword_227904000, v10, OS_LOG_TYPE_INFO, "received dict %@ from nearby deviceID %@", &v20, 0x16u);
  }

  if (v7)
  {
    v12 = [(GKMatchmaker *)self nearbyDeviceWithDeviceID:v6];
    v13 = [v7 objectForKeyedSubscript:@"usePeerDiscovery"];
    v14 = [v13 BOOLValue];

    if (v14)
    {
      [v12 setUsePeerDiscovery:1];
    }

    v15 = [v7 objectForKey:@"message"];
    v16 = [v15 unsignedIntegerValue];

    if (v16 <= 2)
    {
      switch(v16)
      {
        case 0:
          if ([(GKMatchmaker *)self nearbyAdvertising])
          {
            [(GKMatchmaker *)self handleNearbyProfileQuery:v7 fromDevice:v12];
          }

          goto LABEL_29;
        case 1:
          if ([(GKMatchmaker *)self nearbyBrowsing])
          {
            [(GKMatchmaker *)self handleNearbyProfileResponse:v7 fromDevice:v12 withCompletionHandler:0];
          }

          goto LABEL_29;
        case 2:
          if ([(GKMatchmaker *)self nearbyAdvertising])
          {
            [(GKMatchmaker *)self handleNearbyInvite:v7 fromDevice:v12];
          }

          goto LABEL_29;
      }

LABEL_21:
      if (!os_log_GKGeneral)
      {
        v17 = GKOSLoggers();
      }

      v18 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
      {
        v20 = 67109634;
        *v21 = v16;
        *&v21[4] = 2112;
        *&v21[6] = v7;
        *&v21[14] = 2112;
        *&v21[16] = v12;
        _os_log_error_impl(&dword_227904000, v18, OS_LOG_TYPE_ERROR, "Unknown nearby message type: %u dictionary:%@ from deviceID:%@", &v20, 0x1Cu);
      }

      goto LABEL_29;
    }

    switch(v16)
    {
      case 3:
        [(GKMatchmaker *)self handleNearbyInviteResponse:v7 fromDevice:v12];
        break;
      case 4:
        if ([(GKMatchmaker *)self nearbyAdvertising])
        {
          [(GKMatchmaker *)self nearbyInviteWasCancelled:v7 fromDevice:v12];
        }

        break;
      case 5:
        [(GKMatchmaker *)self establishNearbyFriendRelationships:v7 fromDevice:v12];
        break;
      default:
        goto LABEL_21;
    }

LABEL_29:
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)determineIfShouldRespondToNearbyPlayer:(id)a3 handler:(id)a4
{
  v51[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = dispatch_group_create();
    v9 = [v6 objectForKey:@"playerID"];
    v10 = +[GKPreferences shared];
    v11 = [v10 multiplayerAllowedPlayerType];

    v12 = +[GKPreferences shared];
    v13 = [v12 shouldDisallowInvitesFromStrangers];
    if (v11 == 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v13;
    }

    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    if (v11)
    {
      v15 = [(GKMatchmaker *)self nearbyAdvertising];
      if (v15)
      {
        LOBYTE(v15) = [(GKMatchmaker *)self shouldRespondToNearbyQuery];
      }
    }

    else
    {
      LOBYTE(v15) = 0;
    }

    v40 = v15;
    if (v38[3] & v14)
    {
      v16 = +[GKLocalPlayer localPlayer];
      v17 = v16;
      if (v9)
      {
        v18 = [v16 internal];
        v19 = [v18 playerID];
        v20 = [v9 isEqualToString:v19];

        if ((v20 & 1) == 0)
        {
          dispatch_group_enter(v8);
          v51[0] = v9;
          v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
          v34[0] = MEMORY[0x277D85DD0];
          v34[1] = 3221225472;
          v34[2] = __71__GKMatchmaker_Nearby__determineIfShouldRespondToNearbyPlayer_handler___block_invoke;
          v34[3] = &unk_2785E0E88;
          v36 = &v37;
          v35 = v8;
          [GKPlayer loadPlayersForIdentifiersPrivate:v21 withCompletionHandler:v34];
        }
      }
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v22 = GKOSLoggers();
      }

      v17 = os_log_GKMatch;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v29 = [MEMORY[0x277CCABB0] numberWithBool:v11 == 0];
        v23 = [MEMORY[0x277CCABB0] numberWithBool:{-[GKMatchmaker nearbyAdvertising](self, "nearbyAdvertising")}];
        v24 = [MEMORY[0x277CCABB0] numberWithBool:{-[GKMatchmaker shouldRespondToNearbyQuery](self, "shouldRespondToNearbyQuery")}];
        v25 = [MEMORY[0x277CCABB0] numberWithBool:v14];
        *buf = 138413314;
        v42 = v9;
        v43 = 2112;
        v44 = v29;
        v45 = 2112;
        v46 = v23;
        v47 = 2112;
        v48 = v24;
        v49 = 2112;
        v50 = v25;
        _os_log_impl(&dword_227904000, v17, OS_LOG_TYPE_INFO, "should not respond to nearby player: %@. blockMultiplayer = %@, advertising = %@, should respond to query = %@, friends only = %@", buf, 0x34u);
      }
    }

    v26 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __71__GKMatchmaker_Nearby__determineIfShouldRespondToNearbyPlayer_handler___block_invoke_100;
    block[3] = &unk_2785DE7E0;
    v31 = v9;
    v33 = &v37;
    v32 = v7;
    v27 = v9;
    dispatch_group_notify(v8, v26, block);

    _Block_object_dispose(&v37, 8);
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __71__GKMatchmaker_Nearby__determineIfShouldRespondToNearbyPlayer_handler___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 lastObject];
  v3 = [v4 friendBiDirectional];
  *(*(*(a1 + 40) + 8) + 24) = [v3 isEqualToNumber:&unk_283B333B8];

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __71__GKMatchmaker_Nearby__determineIfShouldRespondToNearbyPlayer_handler___block_invoke_100(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v4 = a1[4];
    v5 = MEMORY[0x277CCABB0];
    v6 = *(*(a1[6] + 8) + 24);
    v7 = v3;
    v8 = [v5 numberWithBool:v6];
    v12 = 138412546;
    v13 = v4;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_227904000, v7, OS_LOG_TYPE_INFO, "should respond to nearby player %@:%@", &v12, 0x16u);
  }

  v9 = *(*(a1[6] + 8) + 24);
  result = (*(a1[5] + 16))();
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)shouldRespondToNearbyQuery
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_227904000, v3, OS_LOG_TYPE_INFO, "always return YES for shouldRespondToNearbyQuery", v5, 2u);
  }

  return 1;
}

- (id)profileDictionaryForLocalPlayer
{
  v17[3] = *MEMORY[0x277D85DE8];
  v2 = +[GKLocalPlayer localPlayer];
  v16[0] = @"playerID";
  v3 = [v2 internal];
  v4 = [v3 playerID];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_283AFD1E0;
  }

  v17[0] = v6;
  v16[1] = @"alias";
  v7 = [v2 alias];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_283AFD1E0;
  }

  v17[1] = v9;
  v16[2] = @"photos";
  v10 = [v2 internal];
  v11 = [v10 photos];
  v12 = v11;
  if (!v11)
  {
    v12 = [MEMORY[0x277CBEAC0] dictionary];
  }

  v17[2] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  if (!v11)
  {
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)loadPhotoDataDictionaryWithHandler:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v22 = v3;
    v5 = dispatch_group_create();
    v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v21 = +[GKLocalPlayer localPlayer];
    v6 = [v21 internal];
    v7 = [v6 photos];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v23 = *v33;
      do
      {
        v11 = 0;
        do
        {
          if (*v33 != v23)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v32 + 1) + 8 * v11);
          dispatch_group_enter(v5);
          v13 = [v8 objectForKey:v12];
          v14 = MEMORY[0x277CBEA90];
          v15 = [MEMORY[0x277CBEBC0] URLWithString:v13];
          v16 = [MEMORY[0x277CCAD30] _gkForClientProcess];
          v17 = dispatch_get_global_queue(0, 0);
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __59__GKMatchmaker_Nearby__loadPhotoDataDictionaryWithHandler___block_invoke;
          v28[3] = &unk_2785E0EB0;
          v29 = v24;
          v30 = v13;
          v31 = v5;
          v18 = v13;
          [v14 _gkLoadRemoteImageDataForURL:v15 session:v16 subdirectory:0 filename:0 queue:v17 handler:v28];

          ++v11;
        }

        while (v10 != v11);
        v10 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v10);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__GKMatchmaker_Nearby__loadPhotoDataDictionaryWithHandler___block_invoke_2;
    block[3] = &unk_2785DDC10;
    v4 = v22;
    v26 = v24;
    v27 = v22;
    v19 = v24;
    dispatch_group_notify(v5, MEMORY[0x277D85CD0], block);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __59__GKMatchmaker_Nearby__loadPhotoDataDictionaryWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v3 = *(a1 + 32);
    objc_sync_enter(v3);
    [*(a1 + 32) setObject:v4 forKey:*(a1 + 40)];
    objc_sync_exit(v3);
  }

  dispatch_group_leave(*(a1 + 48));
}

- (id)unreleasedHash
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__GKMatchmaker_Nearby__unreleasedHash__block_invoke;
  block[3] = &unk_2785DD760;
  block[4] = self;
  if (unreleasedHash_onceToken != -1)
  {
    dispatch_once(&unreleasedHash_onceToken, block);
  }

  return unreleasedHash__unreleasedHash;
}

void __38__GKMatchmaker_Nearby__unreleasedHash__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5 = +[GKGame currentGame];
  v2 = [v5 bundleIdentifier];
  v3 = [v1 hashForBundleID:v2 version:@"-1" platform:0];
  v4 = unreleasedHash__unreleasedHash;
  unreleasedHash__unreleasedHash = v3;
}

- (id)compatibilityHashQueue
{
  if (compatibilityHashQueue_onceToken != -1)
  {
    [GKMatchmaker(Nearby) compatibilityHashQueue];
  }

  v3 = compatibilityHashQueue_sHashQueue;

  return v3;
}

void __46__GKMatchmaker_Nearby__compatibilityHashQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.gamecenter.compatibilityhashqueue", v2);
  v1 = compatibilityHashQueue_sHashQueue;
  compatibilityHashQueue_sHashQueue = v0;
}

- (void)getHashedCompatibilitySetsWithHandler:(id)a3
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
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "GKMatchmaker+Nearby: getHashedCompatibilitySetsWithHandler", buf, 2u);
  }

  v7 = [(GKMatchmaker *)self compatibilityHashQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__GKMatchmaker_Nearby__getHashedCompatibilitySetsWithHandler___block_invoke;
  v9[3] = &unk_2785DE540;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_sync(v7, v9);
}

void __62__GKMatchmaker_Nearby__getHashedCompatibilitySetsWithHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nearbyCompatibleVersionHashes];
  if (v2)
  {
  }

  else if (([*(a1 + 32) generatingCompatiblityHashes] & 1) == 0)
  {
    v3 = [*(a1 + 32) compatibilityHashGroup];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__GKMatchmaker_Nearby__getHashedCompatibilitySetsWithHandler___block_invoke_2;
    v8[3] = &unk_2785DEC98;
    v8[4] = *(a1 + 32);
    [v3 perform:v8];
  }

  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) compatibilityHashGroup];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__GKMatchmaker_Nearby__getHashedCompatibilitySetsWithHandler___block_invoke_4;
    v6[3] = &unk_2785DDC10;
    v5 = *(a1 + 40);
    v6[4] = *(a1 + 32);
    v7 = v5;
    [v4 notifyOnMainQueueWithBlock:v6];
  }
}

void __62__GKMatchmaker_Nearby__getHashedCompatibilitySetsWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setGeneratingCompatiblityHashes:1];
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__GKMatchmaker_Nearby__getHashedCompatibilitySetsWithHandler___block_invoke_3;
  v6[3] = &unk_2785DE540;
  v6[4] = v4;
  v7 = v3;
  v5 = v3;
  [v4 generateHashedCompatibilitySetWithHandler:v6];
}

uint64_t __62__GKMatchmaker_Nearby__getHashedCompatibilitySetsWithHandler___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setGeneratingCompatiblityHashes:0];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __62__GKMatchmaker_Nearby__getHashedCompatibilitySetsWithHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v4 = [*(a1 + 32) nearbyCompatibleVersionHashes];
  v3 = [*(a1 + 32) nearbyCompatibleShortVersionHashes];
  (*(v2 + 16))(v2, v4, v3);
}

- (void)generateHashedCompatibilitySetWithHandler:(id)a3
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
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "GKMatchmaker+Nearby: generateHashedCompatibilitySet", buf, 2u);
  }

  v7 = +[GKGame currentGame];
  v8 = +[GKDaemonProxy proxyForLocalPlayer];
  v9 = [v8 multiplayerService];
  v10 = [v7 gameDescriptorDictionary];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __66__GKMatchmaker_Nearby__generateHashedCompatibilitySetWithHandler___block_invoke;
  v13[3] = &unk_2785DE568;
  v13[4] = self;
  v14 = v7;
  v15 = v4;
  v11 = v4;
  v12 = v7;
  [v9 getCompatibilityMatrix:v10 handler:v13];
}

void __66__GKMatchmaker_Nearby__generateHashedCompatibilitySetWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v89 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB58] setWithCapacity:10];
  v5 = [MEMORY[0x277CBEB58] setWithCapacity:10];
  v61 = v4;
  if ([v3 count] < 1)
  {
    v37 = *(a1 + 32);
    v38 = [*(a1 + 40) bundleIdentifier];
    v39 = [*(a1 + 40) bundleVersion];
    v40 = [v37 hashForBundleID:v38 version:v39 platform:{objc_msgSend(*(a1 + 40), "platform")}];
    [v61 addObject:v40];

    v41 = *(a1 + 32);
    v42 = [*(a1 + 40) bundleIdentifier];
    v43 = [*(a1 + 40) bundleVersion];
    v44 = [v41 hashForBundleID:v42 version:v43 platform:0];
    [v61 addObject:v44];

    v45 = *(a1 + 32);
    v46 = [*(a1 + 40) bundleIdentifier];
    v47 = [*(a1 + 40) shortBundleVersion];
    v48 = [v45 hashForBundleID:v46 version:v47 platform:{objc_msgSend(*(a1 + 40), "platform")}];
    [v5 addObject:v48];

    v49 = *(a1 + 32);
    v50 = [*(a1 + 40) bundleIdentifier];
    v51 = [*(a1 + 40) shortBundleVersion];
    v52 = [v49 hashForBundleID:v50 version:v51 platform:0];
    [v5 addObject:v52];

    v4 = v61;
  }

  else
  {
    v64 = v5;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v55 = v3;
    obj = v3;
    v58 = [obj countByEnumeratingWithState:&v74 objects:v88 count:16];
    if (v58)
    {
      v57 = *v75;
      do
      {
        v6 = 0;
        do
        {
          if (*v75 != v57)
          {
            objc_enumerationMutation(obj);
          }

          v59 = v6;
          v7 = *(*(&v74 + 1) + 8 * v6);
          v8 = [v7 bundleID];
          v65 = [v7 platform];
          v70 = 0u;
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v62 = v7;
          v60 = [v7 versions];
          v9 = [v60 countByEnumeratingWithState:&v70 objects:v87 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v71;
            do
            {
              for (i = 0; i != v10; ++i)
              {
                if (*v71 != v11)
                {
                  objc_enumerationMutation(v60);
                }

                v13 = *(*(&v70 + 1) + 8 * i);
                v14 = [*(a1 + 32) hashForBundleID:v8 version:v13 platform:0];
                [v4 addObject:v14];
                if (!os_log_GKGeneral)
                {
                  v15 = GKOSLoggers();
                }

                v16 = os_log_GKMatch;
                if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412802;
                  v80 = v8;
                  v81 = 2112;
                  v82 = v13;
                  v83 = 2112;
                  v84 = v14;
                  _os_log_impl(&dword_227904000, v16, OS_LOG_TYPE_INFO, "nearby compatibility matrix: bundleID = %@, version = %@, compatible hash = %@", buf, 0x20u);
                }

                v17 = [*(a1 + 32) hashForBundleID:v8 version:v13 platform:{objc_msgSend(v62, "platform")}];

                [v4 addObject:v17];
                if (!os_log_GKGeneral)
                {
                  v18 = GKOSLoggers();
                }

                v19 = os_log_GKMatch;
                if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
                {
                  v20 = MEMORY[0x277CCABB0];
                  v21 = v19;
                  v22 = [v20 numberWithInteger:v65];
                  *buf = 138413058;
                  v80 = v8;
                  v81 = 2112;
                  v82 = v22;
                  v83 = 2112;
                  v84 = v13;
                  v85 = 2112;
                  v86 = v17;
                  _os_log_impl(&dword_227904000, v21, OS_LOG_TYPE_INFO, "nearby compatibility matrix: bundleID = %@, platform = %@, version = %@, compatible hash = %@", buf, 0x2Au);

                  v4 = v61;
                }
              }

              v10 = [v60 countByEnumeratingWithState:&v70 objects:v87 count:16];
            }

            while (v10);
          }

          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v63 = [v62 shortVersions];
          v23 = [v63 countByEnumeratingWithState:&v66 objects:v78 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v67;
            do
            {
              for (j = 0; j != v24; ++j)
              {
                if (*v67 != v25)
                {
                  objc_enumerationMutation(v63);
                }

                v27 = *(*(&v66 + 1) + 8 * j);
                v28 = [*(a1 + 32) hashForBundleID:v8 version:v27 platform:0];
                [v64 addObject:v28];
                if (!os_log_GKGeneral)
                {
                  v29 = GKOSLoggers();
                }

                v30 = os_log_GKMatch;
                if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412802;
                  v80 = v8;
                  v81 = 2112;
                  v82 = v27;
                  v83 = 2112;
                  v84 = v28;
                  _os_log_impl(&dword_227904000, v30, OS_LOG_TYPE_INFO, "nearby compatibility matrix: bundleID = %@, shortVersion = %@, compatible hash = %@", buf, 0x20u);
                }

                v31 = [*(a1 + 32) hashForBundleID:v8 version:v27 platform:v65];

                [v64 addObject:v31];
                if (!os_log_GKGeneral)
                {
                  v32 = GKOSLoggers();
                }

                v33 = os_log_GKMatch;
                if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
                {
                  v34 = MEMORY[0x277CCABB0];
                  v35 = v33;
                  v36 = [v34 numberWithInteger:v65];
                  *buf = 138413058;
                  v80 = v8;
                  v81 = 2112;
                  v82 = v36;
                  v83 = 2112;
                  v84 = v27;
                  v85 = 2112;
                  v86 = v31;
                  _os_log_impl(&dword_227904000, v35, OS_LOG_TYPE_INFO, "nearby compatibility matrix: bundleID = %@, platform = %@, shortVersion = %@, compatible hash = %@", buf, 0x2Au);

                  v4 = v61;
                }
              }

              v24 = [v63 countByEnumeratingWithState:&v66 objects:v78 count:16];
            }

            while (v24);
          }

          v6 = v59 + 1;
        }

        while (v59 + 1 != v58);
        v58 = [obj countByEnumeratingWithState:&v74 objects:v88 count:16];
      }

      while (v58);
    }

    v3 = v55;
    v5 = v64;
  }

  [*(a1 + 32) setNearbyCompatibleVersionHashes:{v4, v55}];
  [*(a1 + 32) setNearbyCompatibleShortVersionHashes:v5];
  v53 = *(a1 + 48);
  if (v53)
  {
    (*(v53 + 16))();
  }

  v54 = *MEMORY[0x277D85DE8];
}

- (id)_nearbyDeviceWithDeviceID:(id)a3
{
  v4 = a3;
  v5 = [(GKMatchmaker *)self nearbyPlayers];
  v6 = [v5 objectForKey:v4];
  if (!v6)
  {
    v6 = [GKNearbyDevice nearbyDeviceWithID:v4];
    v7 = [v6 deviceID];
    [v5 setObject:v6 forKey:v7];
  }

  return v6;
}

- (id)nearbyDeviceWithDeviceID:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__13;
  v15 = __Block_byref_object_dispose__13;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__GKMatchmaker_Nearby__nearbyDeviceWithDeviceID___block_invoke;
  v8[3] = &unk_2785E0DC0;
  v10 = &v11;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  [(GKMatchmaker *)self performSync:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __49__GKMatchmaker_Nearby__nearbyDeviceWithDeviceID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _nearbyDeviceWithDeviceID:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)hashForBundleID:(id)a3 version:(id)a4 platform:(int64_t)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
  }

  v10 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_227904000, v10, OS_LOG_TYPE_INFO, "GKMatchmaker+Nearby: hashForBundleID", buf, 2u);
  }

  if (!v8)
  {
    v11 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v12 = GKOSLoggers();
      v11 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v28 = v7;
      _os_log_impl(&dword_227904000, v11, OS_LOG_TYPE_INFO, "version is nil while retrieving the hash for bundleID: %@", buf, 0xCu);
    }

    v8 = &stru_283AFD1E0;
  }

  v13 = [v7 stringByAppendingString:@"."];
  v14 = [v13 stringByAppendingString:v8];

  if (a5)
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
    v17 = [v15 stringWithFormat:@".%@", v16];
    v18 = [v14 stringByAppendingString:v17];

    v14 = v18;
  }

  v19 = [v14 UTF8String];
  v20 = *v19;
  if (*v19)
  {
    v21 = v19 + 1;
    LODWORD(v22) = 5381;
    do
    {
      v22 = (33 * v22 + v20);
      v23 = *v21++;
      v20 = v23;
    }

    while (v23);
  }

  else
  {
    v22 = 5381;
  }

  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"%X", v22];

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)hashForCurrentGameUsingBundleVersion
{
  v3 = +[GKGame currentGame];
  v4 = [v3 bundleIdentifier];
  v5 = [v3 bundleVersion];
  v6 = [(GKMatchmaker *)self hashForBundleID:v4 version:v5 platform:0];

  return v6;
}

- (id)hashForCurrentGameUsingShortBundleVersionAndPlatform
{
  v3 = +[GKGame currentGame];
  v4 = [v3 shortBundleVersion];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v3 bundleVersion];
  }

  v7 = v6;

  v8 = [v3 bundleIdentifier];
  v9 = -[GKMatchmaker hashForBundleID:version:platform:](self, "hashForBundleID:version:platform:", v8, v7, [v3 platform]);

  return v9;
}

- (void)startNearbyAdvertising
{
  v22[3] = *MEMORY[0x277D85DE8];
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_227904000, v4, OS_LOG_TYPE_INFO, "startNearbyAdvertising", buf, 2u);
  }

  v5 = +[GKLocalPlayer localPlayer];
  if ([v5 isAuthenticated] && !-[GKMatchmaker nearbyAdvertising](self, "nearbyAdvertising") && !+[GKGame isGameCenter](GKGame, "isGameCenter"))
  {
    v6 = +[GKPreferences shared];
    if ([v6 shouldAllowNearbyMultiplayer])
    {
      v7 = +[GKPreferences shared];
      v8 = [v7 multiplayerAllowedPlayerType];

      if (v8)
      {
        [(GKMatchmaker *)self getHashedCompatibilitySetsWithHandler:0];
        [(GKMatchmaker *)self setupNearbyDiscovery];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __46__GKMatchmaker_Nearby__startNearbyAdvertising__block_invoke;
        v19[3] = &unk_2785DD760;
        v19[4] = self;
        [(GKMatchmaker *)self performSync:v19];
        v21[0] = @"e";
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", -[GKMatchmaker currentEnvironment](self, "currentEnvironment")];
        v22[0] = v9;
        v21[1] = @"h";
        v10 = [(GKMatchmaker *)self hashForCurrentGameUsingBundleVersion];
        v22[1] = v10;
        v21[2] = @"hp";
        v11 = [(GKMatchmaker *)self hashForCurrentGameUsingShortBundleVersionAndPlatform];
        v22[2] = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];

        v13 = +[GKDaemonProxy proxyForLocalPlayer];
        v14 = [v13 multiplayerService];
        v17[0] = MEMORY[0x277D85DD0];
        v17[1] = 3221225472;
        v17[2] = __46__GKMatchmaker_Nearby__startNearbyAdvertising__block_invoke_2;
        v17[3] = &unk_2785DEF60;
        v17[4] = self;
        v18 = v12;
        v15 = v12;
        [v14 startNearbyAdvertisingWithDiscoveryInfo:v15 handler:v17];
      }
    }

    else
    {
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __46__GKMatchmaker_Nearby__startNearbyAdvertising__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  [*(a1 + 32) setNearbyInvites:v2];

  v3 = [MEMORY[0x277CBEB38] dictionary];
  [*(a1 + 32) setNearbyPlayers:v3];
}

void __46__GKMatchmaker_Nearby__startNearbyAdvertising__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__GKMatchmaker_Nearby__startNearbyAdvertising__block_invoke_3;
  block[3] = &unk_2785DDB40;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __46__GKMatchmaker_Nearby__startNearbyAdvertising__block_invoke_3(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setNearbyQueryAllowance:10.0];
  v2 = [MEMORY[0x277CBEAA8] date];
  [*(a1 + 32) setNearbyQueryLastCheckDate:v2];

  [*(a1 + 32) setNearbyAdvertising:1];
  if (*(a1 + 40))
  {
    if (!os_log_GKGeneral)
    {
      v3 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __46__GKMatchmaker_Nearby__startNearbyAdvertising__block_invoke_3_cold_1((a1 + 40));
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    v5 = os_log_GKTrace;
    if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_227904000, v5, OS_LOG_TYPE_INFO, "startNearbyAdvertising:Started advertising for nearby multiplayer", &v10, 2u);
    }

    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 48);
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_227904000, v7, OS_LOG_TYPE_INFO, "start advertising for nearby multiplayer: %@", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)stopNearbyAdvertising
{
  if ([(GKMatchmaker *)self nearbyAdvertising])
  {
    v3 = +[GKDaemonProxy proxyForLocalPlayer];
    v4 = [v3 multiplayerService];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __45__GKMatchmaker_Nearby__stopNearbyAdvertising__block_invoke;
    v5[3] = &unk_2785DD760;
    v5[4] = self;
    [v4 stopNearbyAdvertisingWithHandler:v5];
  }
}

void __45__GKMatchmaker_Nearby__stopNearbyAdvertising__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNearbyAdvertising:0];
  if (!os_log_GKGeneral)
  {
    v1 = GKOSLoggers();
  }

  v2 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_227904000, v2, OS_LOG_TYPE_INFO, "stopNearbyAdvertising: stopped advertising for nearby players", buf, 2u);
  }

  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_227904000, v4, OS_LOG_TYPE_INFO, "stopped advertising for nearby multiplayer", v5, 2u);
  }
}

- (void)updateNearbyAdvertising
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_227904000, v4, OS_LOG_TYPE_INFO, "updateNearbyAdvertising", v7, 2u);
  }

  if (-[GKMatchmaker hasInviteListener](self, "hasInviteListener") && (+[GKPreferences shared](GKPreferences, "shared"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 shouldAllowNearbyMultiplayer], v5, v6))
  {
    [(GKMatchmaker *)self startNearbyAdvertising];
  }

  else
  {
    [(GKMatchmaker *)self stopNearbyAdvertising];
  }
}

- (void)startNearbyBrowsing
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_227904000, v4, OS_LOG_TYPE_INFO, "GKMatchmaker+Nearby: startNearbyBrowsing", buf, 2u);
  }

  v5 = +[GKLocalPlayer localPlayer];
  if ([v5 isAuthenticated])
  {
    if (![(GKMatchmaker *)self nearbyBrowsing])
    {
      v6 = +[GKPreferences shared];
      v7 = [v6 multiplayerAllowedPlayerType];

      if (v7)
      {
        [(GKMatchmaker *)self getHashedCompatibilitySetsWithHandler:0];
        [(GKMatchmaker *)self setupNearbyDiscovery];
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __43__GKMatchmaker_Nearby__startNearbyBrowsing__block_invoke;
        v13[3] = &unk_2785DD760;
        v13[4] = self;
        [(GKMatchmaker *)self performSync:v13];
        v8 = [GKDaemonProxy proxyForPlayer:v5];
        v9 = [v8 multiplayerService];
        v10 = [v5 internal];
        v11 = [v10 playerID];
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __43__GKMatchmaker_Nearby__startNearbyBrowsing__block_invoke_146;
        v12[3] = &unk_2785DD760;
        v12[4] = self;
        [v9 startNearbyBrowsingWithPlayerID:v11 handler:v12];
      }
    }
  }
}

void __43__GKMatchmaker_Nearby__startNearbyBrowsing__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = [v4 nearbyPlayers];
    v9 = 134217984;
    v10 = [v6 count];
    _os_log_impl(&dword_227904000, v5, OS_LOG_TYPE_INFO, "GKMatchmaker+Nearby: creating new nearbyPlayers cache (clearing %lu previous entries)", &v9, 0xCu);
  }

  v7 = [MEMORY[0x277CBEB38] dictionary];
  [*(a1 + 32) setNearbyPlayers:v7];

  v8 = *MEMORY[0x277D85DE8];
}

void __43__GKMatchmaker_Nearby__startNearbyBrowsing__block_invoke_146(uint64_t a1)
{
  [*(a1 + 32) setNearbyBrowsing:1];
  if (!os_log_GKGeneral)
  {
    v1 = GKOSLoggers();
  }

  v2 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_227904000, v2, OS_LOG_TYPE_INFO, "started browsing for nearby players", v3, 2u);
  }
}

- (void)stopNearbyBrowsing
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_227904000, v4, OS_LOG_TYPE_INFO, "GKMatchmaker+Nearby: stopNearbyBrowsing", buf, 2u);
  }

  if ([(GKMatchmaker *)self nearbyBrowsing])
  {
    v5 = +[GKDaemonProxy proxyForLocalPlayer];
    v6 = [v5 multiplayerService];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __42__GKMatchmaker_Nearby__stopNearbyBrowsing__block_invoke;
    v7[3] = &unk_2785DD760;
    v7[4] = self;
    [v6 stopNearbyBrowsingWithHandler:v7];
  }
}

void __42__GKMatchmaker_Nearby__stopNearbyBrowsing__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNearbyBrowsing:0];
  if (!os_log_GKGeneral)
  {
    v1 = GKOSLoggers();
  }

  v2 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_227904000, v2, OS_LOG_TYPE_INFO, "stopped browsing for nearby players", v3, 2u);
  }
}

- (void)foundNearbyDeviceID:(id)a3 discoveryInfo:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "found nearby deviceID: %@ discoveryInfo: %@", buf, 0x16u);
  }

  v10 = [v7 objectForKey:@"e"];
  v11 = [v10 integerValue];

  if (v11 == [(GKMatchmaker *)self currentEnvironment])
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __58__GKMatchmaker_Nearby__foundNearbyDeviceID_discoveryInfo___block_invoke;
    v15[3] = &unk_2785E0ED8;
    v15[4] = self;
    v16 = v7;
    v17 = v6;
    [(GKMatchmaker *)self getHashedCompatibilitySetsWithHandler:v15];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v12 = GKOSLoggers();
    }

    v13 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v19 = v6;
      _os_log_impl(&dword_227904000, v13, OS_LOG_TYPE_INFO, "ignoring device %@, environment mismatch", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __58__GKMatchmaker_Nearby__foundNearbyDeviceID_discoveryInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) unreleasedHash];
  if ([v6 containsObject:v7])
  {
    v8 = 1;
  }

  else
  {
    v8 = [v5 containsObject:v7];
  }

  v9 = [*(a1 + 40) objectForKeyedSubscript:@"hp"];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [*(a1 + 40) objectForKeyedSubscript:@"h"];
  }

  v12 = v11;

  if (v6)
  {
    v13 = [v6 containsObject:v12];
    if (!v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v13 = 1;
    if (!v5)
    {
LABEL_17:
      if (!os_log_GKGeneral)
      {
        v22 = GKOSLoggers();
      }

      v23 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_227904000, v23, OS_LOG_TYPE_INFO, "advertised app may be compatible", buf, 2u);
      }

      v24 = [*(a1 + 32) nearbyDeviceWithDeviceID:*(a1 + 48)];
      v25 = +[GKGame currentGame];
      v26 = [MEMORY[0x277CBEB38] dictionary];
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
      [v26 setObject:v27 forKeyedSubscript:@"message"];

      v28 = [v25 bundleIdentifier];
      [v26 setObject:v28 forKeyedSubscript:@"bundleID"];

      v29 = [v25 bundleVersion];
      [v26 setObject:v29 forKeyedSubscript:@"bundleVersion"];

      v30 = [MEMORY[0x277CCABB0] numberWithBool:v8];
      [v26 setObject:v30 forKeyedSubscript:@"isDevelopmentVersion"];

      v31 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v25, "platform")}];
      [v26 setObject:v31 forKeyedSubscript:@"platform"];

      v32 = [*(a1 + 40) objectForKeyedSubscript:@"usePeerDiscovery"];
      LODWORD(v29) = [v32 BOOLValue];

      if (v29)
      {
        v33 = [MEMORY[0x277CCABB0] numberWithBool:1];
        [v26 setObject:v33 forKeyedSubscript:@"usePeerDiscovery"];

        [v24 setUsePeerDiscovery:1];
        v34 = [*(a1 + 40) objectForKeyedSubscript:@"devicePushToken"];

        if (v34)
        {
          v35 = [*(a1 + 40) objectForKeyedSubscript:@"devicePushToken"];
          [v24 setDevicePushToken:v35];
        }
      }

      v36 = +[GKGame currentGame];
      v37 = [v36 shortBundleVersion];

      if (v37)
      {
        v38 = [v25 shortBundleVersion];
        [v26 setObject:v38 forKeyedSubscript:@"shortBundleVersion"];
      }

      [v24 sendDictionary:v26 withCompletionHandler:0];

      goto LABEL_27;
    }
  }

  v14 = [v5 containsObject:v12];
  if ((v12 == 0) | (v8 | v13) & 1 || v14)
  {
    goto LABEL_17;
  }

  if (!os_log_GKGeneral)
  {
    v15 = GKOSLoggers();
  }

  v16 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v17 = v16;
    v18 = [v5 allObjects];
    v19 = [v18 componentsJoinedByString:{@", "}];
    v20 = [v6 allObjects];
    v21 = [v20 componentsJoinedByString:{@", "}];
    *buf = 138412546;
    v41 = v19;
    v42 = 2112;
    v43 = v21;
    _os_log_impl(&dword_227904000, v17, OS_LOG_TYPE_INFO, "advertised app not compatible - compatible Version Hashes: %@, compatible Short Version Hashes: %@", buf, 0x16u);
  }

LABEL_27:

  v39 = *MEMORY[0x277D85DE8];
}

- (void)lostNearbyDeviceID:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "lost nearby deviceID: %@", &v9, 0xCu);
  }

  v7 = [(GKMatchmaker *)self nearbyDeviceWithDeviceID:v4];
  [(GKMatchmaker *)self setNearbyDevice:v7 reachable:0];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)handleNearbyProfileResponse:(id)a3 fromDevice:(id)a4 withCompletionHandler:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 state] && objc_msgSend(v9, "state") != 1)
  {
    if (!os_log_GKGeneral)
    {
      v19 = GKOSLoggers();
    }

    v20 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v21 = v20;
      v22 = [v9 deviceID];
      v23 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "state")}];
      *buf = 138412546;
      v30 = v22;
      v31 = 2112;
      v32 = v23;
      _os_log_impl(&dword_227904000, v21, OS_LOG_TYPE_INFO, "not handling profile response from deviceID: %@, because the state of this device is: %@", buf, 0x16u);
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    v12 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v13 = v12;
      v14 = [v9 deviceID];
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "state")}];
      *buf = 138412546;
      v30 = v14;
      v31 = 2112;
      v32 = v15;
      _os_log_impl(&dword_227904000, v13, OS_LOG_TYPE_INFO, "received profile response from deviceID: %@, device state: %@", buf, 0x16u);
    }

    v16 = +[GKDaemonProxy proxyForLocalPlayer];
    v17 = [v16 multiplayerService];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __85__GKMatchmaker_Nearby__handleNearbyProfileResponse_fromDevice_withCompletionHandler___block_invoke;
    v24[3] = &unk_2785E0F00;
    v25 = v8;
    v26 = v9;
    v27 = self;
    v28 = v10;
    [v17 updateCacheWithNearbyProfileDictionary:v25 handler:v24];
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __85__GKMatchmaker_Nearby__handleNearbyProfileResponse_fromDevice_withCompletionHandler___block_invoke(id *a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [GKPlayer canonicalizedPlayerForInternal:v3];
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v7 = v6;
      v8 = [v3 conciseDescription];
      v9 = [a1[5] deviceID];
      *buf = 138412546;
      v19 = v8;
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&dword_227904000, v7, OS_LOG_TYPE_INFO, "received player %@ response from deviceID: %@", buf, 0x16u);
    }

    if (([v4 isLocalPlayer] & 1) == 0)
    {
      v17 = v4;
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
      v11 = [GKMatchmaker canPlayMultiplayerGameWithPlayers:v10];

      if (v11)
      {
        [a1[5] setPlayer:v4];
        [a1[5] setState:1];
        [a1[6] setNearbyDevice:a1[5] reachable:1];
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __85__GKMatchmaker_Nearby__handleNearbyProfileResponse_fromDevice_withCompletionHandler___block_invoke_169;
        v15[3] = &unk_2785DD710;
        v16 = a1[7];
        [v4 updateScopedIDs:v15];
      }
    }
  }

  else
  {
    v12 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
      v12 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __85__GKMatchmaker_Nearby__handleNearbyProfileResponse_fromDevice_withCompletionHandler___block_invoke_cold_1(a1, v12);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t __85__GKMatchmaker_Nearby__handleNearbyProfileResponse_fromDevice_withCompletionHandler___block_invoke_169(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (int)numberOfNearbyDevicesForPlayer:(id)a3 withState:(int64_t)a4
{
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__GKMatchmaker_Nearby__numberOfNearbyDevicesForPlayer_withState___block_invoke;
  v9[3] = &unk_2785E0F28;
  v9[4] = self;
  v12 = a4;
  v7 = v6;
  v10 = v7;
  v11 = &v13;
  [(GKMatchmaker *)self performSync:v9];
  LODWORD(self) = *(v14 + 6);

  _Block_object_dispose(&v13, 8);
  return self;
}

void __65__GKMatchmaker_Nearby__numberOfNearbyDevicesForPlayer_withState___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) nearbyPlayers];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1 + 32) _nearbyDeviceWithDeviceID:*(*(&v11 + 1) + 8 * v6)];
        if ([v7 state] == *(a1 + 56))
        {
          v8 = *(a1 + 40);
          v9 = [v7 player];
          LODWORD(v8) = [v8 isEqual:v9];

          if (v8)
          {
            ++*(*(*(a1 + 48) + 8) + 24);
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setNearbyDevice:(id)a3 reachable:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    goto LABEL_16;
  }

  if (!v4)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __50__GKMatchmaker_Nearby__setNearbyDevice_reachable___block_invoke;
    v19[3] = &unk_2785DEBA8;
    v19[4] = self;
    v12 = v6;
    v20 = v12;
    [(GKMatchmaker *)self performSync:v19];
    if ([v12 state] != 1)
    {
      v13 = &v20;
LABEL_15:

      goto LABEL_16;
    }

    if ([v12 usePeerDiscovery])
    {
    }

    else
    {
      v14 = [v12 player];
      v15 = [(GKMatchmaker *)self numberOfNearbyDevicesForPlayer:v14 withState:1];

      if (v15)
      {
        goto LABEL_16;
      }
    }

LABEL_14:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__GKMatchmaker_Nearby__setNearbyDevice_reachable___block_invoke_3;
    block[3] = &unk_2785E0F78;
    block[4] = self;
    v13 = &v17;
    v17 = v7;
    v18 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);
    goto LABEL_15;
  }

  v8 = [v6 player];
  v9 = [(GKMatchmaker *)self numberOfNearbyDevicesForPlayer:v8 withState:1];

  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    [(GKMatchmaker(Nearby) *)v11 setNearbyDevice:v9 reachable:v7];
  }

  if (v9 == 1)
  {
    goto LABEL_14;
  }

LABEL_16:
}

void __50__GKMatchmaker_Nearby__setNearbyDevice_reachable___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nearbyPlayers];
  v3 = [*(a1 + 40) deviceID];
  [v2 removeObjectForKey:v3];

  v4 = [*(a1 + 32) nearbyPlayers];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__GKMatchmaker_Nearby__setNearbyDevice_reachable___block_invoke_2;
  v5[3] = &unk_2785E0F50;
  v5[4] = *(a1 + 32);
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
}

void __50__GKMatchmaker_Nearby__setNearbyDevice_reachable___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v5 player];
  v7 = [v5 player];
  if ([v6 isEqual:v7])
  {
    v8 = [v5 usePeerDiscovery];

    if (v8)
    {
      goto LABEL_6;
    }

    v6 = [*(a1 + 32) nearbyPlayers];
    [v6 removeObjectForKey:v9];
  }

  else
  {
  }

LABEL_6:
}

void __50__GKMatchmaker_Nearby__setNearbyDevice_reachable___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) nearbyPlayerHandler];

  v3 = *(a1 + 32);
  if (v2)
  {
    v8 = [v3 nearbyPlayerHandler];
    v4 = [*(a1 + 40) player];
    v8[2](v8, v4, *(a1 + 48));
  }

  else
  {
    v5 = [v3 nearbyPlayerIDHandler];

    if (!v5)
    {
      return;
    }

    v8 = [*(a1 + 32) nearbyPlayerIDHandler];
    v4 = [*(a1 + 40) player];
    v6 = [v4 internal];
    v7 = [v6 playerID];
    v8[2](v8, v7, *(a1 + 48));
  }
}

- (id)nearbyDevicesForPlayer:(id)a3 withState:(int64_t)a4
{
  v6 = a3;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_INFO, "GKMatchMaker+Nearby: nearbyDevicesForPlayer:withState", buf, 2u);
  }

  *buf = 0;
  v17 = buf;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__13;
  v20 = __Block_byref_object_dispose__13;
  v21 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__GKMatchmaker_Nearby__nearbyDevicesForPlayer_withState___block_invoke;
  v12[3] = &unk_2785E0F28;
  v12[4] = self;
  v15 = a4;
  v9 = v6;
  v13 = v9;
  v14 = buf;
  [(GKMatchmaker *)self performSync:v12];
  v10 = *(v17 + 5);

  _Block_object_dispose(buf, 8);

  return v10;
}

void __57__GKMatchmaker_Nearby__nearbyDevicesForPlayer_withState___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) nearbyPlayers];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(a1 + 32) _nearbyDeviceWithDeviceID:*(*(&v15 + 1) + 8 * v6)];
        if ([v7 state] == *(a1 + 56))
        {
          if (!*(a1 + 40) || ([v7 player], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqual:", *(a1 + 40)), v8, v9))
          {
            v10 = *(*(*(a1 + 48) + 8) + 40);
            if (!v10)
            {
              v11 = [MEMORY[0x277CBEB18] array];
              v12 = *(*(a1 + 48) + 8);
              v13 = *(v12 + 40);
              *(v12 + 40) = v11;

              v10 = *(*(*(a1 + 48) + 8) + 40);
            }

            [v10 addObject:v7];
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)formAGKMatchRequestForNearbyInviteWithOriginalRequest:(id)a3 nearbyPlayerIDs:(id)a4
{
  v6 = a4;
  v7 = [a3 copy];
  [(GKMatchmaker *)self reduceRecipientsForMatchRequest:v7 toPlayersWithPlayerIDs:v6];

  return v7;
}

- (void)reduceRecipientsForMatchRequest:(id)a3 toPlayersWithPlayerIDs:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v20 = v5;
  v8 = [v5 recipients];
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        v14 = [v13 internal];
        v15 = [v14 playerID];
        v16 = [v6 containsObject:v15];

        if (v16)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v17 = [MEMORY[0x277CBEA60] arrayWithArray:v7];
  [v20 setRecipients:v17];

  v18 = [v20 internal];
  [v18 setRecipientPlayerIDs:v6];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)inviteAnyNearbyPlayersViaLegacyViceroyBonjourConnectionWithRequest:(id)a3 handler:(id)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "GKMatchmaker+Nearby: inviteAnyNearbyPlayersViaLegacyViceroyBonjourConnectionWithRequest", buf, 2u);
  }

  v10 = [v6 internal];
  v11 = [v10 matchType];

  if (v11 == 1)
  {
    v7[2](v7);
  }

  else
  {
    v40 = v7;
    v12 = [(GKMatchmaker *)self match];
    v13 = [v12 transportContext];
    [v13 updateForLegacyNearbyInvite];

    v42 = [MEMORY[0x277CBEB58] set];
    v44 = [MEMORY[0x277CBEB18] array];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v41 = v6;
    v14 = [v6 internal];
    v15 = [v14 recipientPlayerIDs];

    obj = v15;
    v16 = [v15 countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v45 = *v54;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v54 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v53 + 1) + 8 * i);
          v21 = [GKPlayer playerFromPlayerID:v20];
          v22 = [(GKMatchmaker *)self nearbyDevicesForPlayer:v21 withState:1];
          if ([v22 count])
          {
            if (!v18)
            {
              v23 = [(GKMatchmaker *)self match];
              v18 = [v23 nearbyConnectionData];
            }

            [v44 addObjectsFromArray:v22];
            v24 = +[GKReporter reporter];
            [v24 reportEvent:@"com.apple.GameKit.invite" type:@"initiate.nearby"];

            v25 = +[GKReporter reporter];
            [v25 reportEvent:@"com.apple.GameKit.MultiplayerPlayerSelection" type:@"NearbySelected"];

            v26 = [(GKMatchmaker *)self invitedNearbyPlayers];
            v27 = MEMORY[0x277CBEB98];
            [v21 internal];
            v29 = v28 = v18;
            v30 = [v29 playerID];
            v31 = [v27 setWithObject:v30];
            [v26 unionSet:v31];

            v32 = [(GKMatchmaker *)self match];
            v33 = [v21 internal];
            v58 = v33;
            v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
            [v32 reportInviteSentWithApproach:3 isHosted:0 recipients:v34];

            v18 = v28;
          }

          else
          {
            [v42 addObject:v20];
          }
        }

        v17 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
      }

      while (v17);
    }

    else
    {
      v18 = 0;
    }

    if ([v44 count])
    {
      v35 = [MEMORY[0x277CBEB18] array];
      [(GKMatchmaker *)self setAcceptedInviteesTokens:v35];

      v36 = +[GKDaemonProxy proxyForLocalPlayer];
      v37 = [v36 friendService];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __99__GKMatchmaker_Nearby__inviteAnyNearbyPlayersViaLegacyViceroyBonjourConnectionWithRequest_handler___block_invoke;
      v46[3] = &unk_2785E0FF0;
      v47 = v18;
      v6 = v41;
      v48 = v41;
      v49 = self;
      v50 = v44;
      v38 = v42;
      v51 = v42;
      v7 = v40;
      v52 = v40;
      [v37 getNearbyTokenForLocalPlayerWithHandler:v46];
    }

    else
    {
      v7 = v40;
      v40[2](v40);
      v6 = v41;
      v38 = v42;
    }
  }

  v39 = *MEMORY[0x277D85DE8];
}

void __99__GKMatchmaker_Nearby__inviteAnyNearbyPlayersViaLegacyViceroyBonjourConnectionWithRequest_handler___block_invoke(uint64_t a1, void *a2)
{
  v47[7] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v46[0] = @"message";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v47[0] = v4;
  v47[1] = v6;
  v46[1] = @"connectionData";
  v46[2] = @"inviteMessage";
  v7 = [v5 inviteMessage];
  v8 = v7;
  v9 = &stru_283AFD1E0;
  if (v7)
  {
    v9 = v7;
  }

  v47[2] = v9;
  v46[3] = @"playerGroup";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "playerGroup")}];
  v47[3] = v10;
  v46[4] = @"playerAttributes";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "playerAttributes")}];
  v47[4] = v11;
  v46[5] = @"profile";
  v12 = [*(a1 + 48) profileDictionaryForLocalPlayer];
  v46[6] = @"playerNearbyToken";
  v47[5] = v12;
  v47[6] = v3;
  v27 = v3;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:7];

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMatchmaker+Nearby.m", 970, "-[GKMatchmaker(Nearby) inviteAnyNearbyPlayersViaLegacyViceroyBonjourConnectionWithRequest:handler:]_block_invoke"];
  v14 = [GKDispatchGroup dispatchGroupWithName:v13];

  v15 = [MEMORY[0x277CBEB18] array];
  v16 = [MEMORY[0x277CBEB18] array];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v26 = a1;
  obj = *(a1 + 56);
  v17 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v42;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v42 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v41 + 1) + 8 * i);
        [v21 setState:2];
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __99__GKMatchmaker_Nearby__inviteAnyNearbyPlayersViaLegacyViceroyBonjourConnectionWithRequest_handler___block_invoke_2;
        v37[3] = &unk_2785DE4C8;
        v37[4] = v21;
        v38 = v30;
        v39 = v15;
        v40 = v16;
        [v14 perform:v37];
      }

      v18 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v18);
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __99__GKMatchmaker_Nearby__inviteAnyNearbyPlayersViaLegacyViceroyBonjourConnectionWithRequest_handler___block_invoke_195;
  v31[3] = &unk_2785E0FC8;
  v32 = v16;
  v33 = v15;
  v34 = *(v26 + 64);
  *obja = *(v26 + 40);
  v22 = obja[0];
  v35 = vextq_s8(*obja, *obja, 8uLL);
  v36 = *(v26 + 72);
  v23 = v15;
  v24 = v16;
  [v14 notifyOnMainQueueWithBlock:v31];

  v25 = *MEMORY[0x277D85DE8];
}

void __99__GKMatchmaker_Nearby__inviteAnyNearbyPlayersViaLegacyViceroyBonjourConnectionWithRequest_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __99__GKMatchmaker_Nearby__inviteAnyNearbyPlayersViaLegacyViceroyBonjourConnectionWithRequest_handler___block_invoke_3;
  v12[3] = &unk_2785DDFB8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  *&v6 = v5;
  *(&v6 + 1) = *(a1 + 32);
  v11 = v6;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v13 = v11;
  v14 = v9;
  v15 = v3;
  v10 = v3;
  [v4 sendDictionary:v5 withCompletionHandler:v12];
}

void __99__GKMatchmaker_Nearby__inviteAnyNearbyPlayersViaLegacyViceroyBonjourConnectionWithRequest_handler___block_invoke_3(void *a1, void *a2)
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
      __99__GKMatchmaker_Nearby__inviteAnyNearbyPlayersViaLegacyViceroyBonjourConnectionWithRequest_handler___block_invoke_3_cold_1(a1);
    }

    v5 = a1[6];
  }

  else
  {
    v5 = a1[7];
  }

  [v5 addObject:a1[5]];
  (*(a1[8] + 16))();
}

void __99__GKMatchmaker_Nearby__inviteAnyNearbyPlayersViaLegacyViceroyBonjourConnectionWithRequest_handler___block_invoke_195(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = *(a1 + 32);
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __99__GKMatchmaker_Nearby__inviteAnyNearbyPlayersViaLegacyViceroyBonjourConnectionWithRequest_handler___block_invoke_2_196;
  v25[3] = &unk_2785E0FA0;
  v4 = v2;
  v26 = v4;
  [v3 enumerateObjectsUsingBlock:v25];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = [v10 player];
        v12 = [v4 containsObject:v11];

        if ((v12 & 1) == 0)
        {
          v13 = *(a1 + 48);
          v14 = [v10 player];
          v15 = [v14 internal];
          v16 = [v15 playerID];
          [v13 addObject:v16];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v7);
  }

  v18 = *(a1 + 56);
  v17 = *(a1 + 64);
  v19 = [*(a1 + 48) allObjects];
  [v18 reduceRecipientsForMatchRequest:v17 toPlayersWithPlayerIDs:v19];

  (*(*(a1 + 72) + 16))();
  v20 = *MEMORY[0x277D85DE8];
}

void __99__GKMatchmaker_Nearby__inviteAnyNearbyPlayersViaLegacyViceroyBonjourConnectionWithRequest_handler___block_invoke_2_196(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 player];
  [v2 addObject:v3];
}

- (void)inviteAnyNearbyPlayersViaGCSWithRequest:(id)a3 onlineConnectionData:(id)a4 handler:(id)a5
{
  v62 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v36 = v9;
  v37 = v8;
  v11 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_227904000, v11, OS_LOG_TYPE_INFO, "GKMatchmaker+Nearby: inviteAnyNearbyPlayersViaGCSWithRequest", buf, 2u);
  }

  v12 = [MEMORY[0x277CBEB58] set];
  v13 = [MEMORY[0x277CBEB58] set];
  v14 = [MEMORY[0x277CBEB38] dictionary];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v38 = v7;
  v15 = [v7 internal];
  v16 = [v15 recipientPlayerIDs];

  obj = v16;
  v45 = [v16 countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v45)
  {
    v42 = v12;
    v43 = *v56;
    v40 = v14;
    v41 = v13;
    do
    {
      for (i = 0; i != v45; ++i)
      {
        if (*v56 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v55 + 1) + 8 * i);
        v19 = [GKPlayer playerFromPlayerID:v18];
        v20 = [(GKMatchmaker *)self nearbyDevicesForPlayer:v19 withState:1];
        if ([v20 count])
        {
          v46 = v19;
          [v13 addObject:v18];
          v21 = [MEMORY[0x277CBEB18] array];
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v22 = v20;
          v23 = [v22 countByEnumeratingWithState:&v51 objects:v60 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v52;
            do
            {
              for (j = 0; j != v24; ++j)
              {
                if (*v52 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = *(*(&v51 + 1) + 8 * j);
                v28 = [v27 devicePushToken];

                if (v28)
                {
                  v29 = [v27 devicePushToken];
                  [v21 addObject:v29];
                }
              }

              v24 = [v22 countByEnumeratingWithState:&v51 objects:v60 count:16];
            }

            while (v24);
          }

          v14 = v40;
          [v40 setObject:v21 forKeyedSubscript:v18];

          v13 = v41;
          v12 = v42;
          v19 = v46;
        }

        else
        {
          [v12 addObject:v18];
        }
      }

      v45 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v45);
  }

  if ([v13 count])
  {
    v30 = [v13 allObjects];
    v31 = v38;
    v32 = [(GKMatchmaker *)self formAGKMatchRequestForNearbyInviteWithOriginalRequest:v38 nearbyPlayerIDs:v30];

    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __93__GKMatchmaker_Nearby__inviteAnyNearbyPlayersViaGCSWithRequest_onlineConnectionData_handler___block_invoke;
    v47[3] = &unk_2785E1018;
    v47[4] = self;
    v48 = v38;
    v49 = v12;
    v33 = v36;
    v50 = v36;
    v34 = v37;
    [(GKMatchmaker *)self invitePlayersWithRequest:v32 serverHosted:0 onlineConnectionData:v37 devicePushTokenMap:v14 isNearbyInvite:1 completionHandler:v47];
  }

  else
  {
    v33 = v36;
    v36[2](v36);
    v34 = v37;
    v31 = v38;
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __93__GKMatchmaker_Nearby__inviteAnyNearbyPlayersViaGCSWithRequest_onlineConnectionData_handler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __93__GKMatchmaker_Nearby__inviteAnyNearbyPlayersViaGCSWithRequest_onlineConnectionData_handler___block_invoke_cold_1();
    }
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = [*(a1 + 48) allObjects];
    [v12 reduceRecipientsForMatchRequest:v13 toPlayersWithPlayerIDs:v14];
  }

  (*(*(a1 + 56) + 16))();
}

- (void)cancelNearbyInvitesToPlayers:(id)a3
{
  v38[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "GKMatchMaker: cancelNearbyInvitesToPlayers", buf, 2u);
  }

  v37 = @"message";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:4];
  v38[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v4;
  v9 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v25 = *v31;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v30 + 1) + 8 * i);
        v13 = [(GKMatchmaker *)self nearbyDevicesForPlayer:v12 withState:2];
        if ([v13 count])
        {
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v14 = v13;
          v15 = [v14 countByEnumeratingWithState:&v26 objects:v35 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v27;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v27 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                [*(*(&v26 + 1) + 8 * j) sendDictionary:v8 withCompletionHandler:0];
              }

              v16 = [v14 countByEnumeratingWithState:&v26 objects:v35 count:16];
            }

            while (v16);
          }

          v19 = [(GKMatchmaker *)self invitedNearbyPlayers];
          v20 = [v12 internal];
          v21 = [v20 playerID];
          [v19 removeObject:v21];

          v22 = +[GKReporter reporter];
          [v22 reportEvent:@"com.apple.GameKit.invite" type:@"cancel.nearby"];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v10);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)cancelSentNearbyInvites
{
  v19[1] = *MEMORY[0x277D85DE8];
  v18 = @"message";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:4];
  v19[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];

  v5 = [(GKMatchmaker *)self nearbyDevicesForPlayer:0 withState:2];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __47__GKMatchmaker_Nearby__cancelSentNearbyInvites__block_invoke;
        v12[3] = &unk_2785DEF60;
        v12[4] = self;
        v12[5] = v10;
        [v10 sendDictionary:v4 withCompletionHandler:v12];
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __47__GKMatchmaker_Nearby__cancelSentNearbyInvites__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) player];
  v4 = [*(a1 + 40) deviceID];
  [v2 setNearbyPlayerFailed:v3 deviceID:v4];

  v5 = +[GKReporter reporter];
  [v5 reportEvent:@"com.apple.GameKit.invite" type:@"cancel.nearby"];
}

- (void)handleNearbyInviteResponse:(id)a3 fromDevice:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v34 = v6;
    _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "Handle nearby invite response dict: %@", buf, 0xCu);
  }

  v10 = [v6 objectForKey:@"accepted"];
  v11 = [v10 BOOLValue];

  if (v11)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMatchmaker+Nearby.m", 1101, "-[GKMatchmaker(Nearby) handleNearbyInviteResponse:fromDevice:]"];
    v13 = [GKDispatchGroup dispatchGroupWithName:v12];

    v14 = [(GKMatchmaker *)self acceptedInviteesTokens];
    v15 = [v14 count];

    if (v15)
    {
      v31[0] = @"message";
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:5];
      v32[0] = v16;
      v31[1] = @"playerNearbyTokens";
      v17 = [(GKMatchmaker *)self acceptedInviteesTokens];
      v32[1] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];

      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __62__GKMatchmaker_Nearby__handleNearbyInviteResponse_fromDevice___block_invoke;
      v28[3] = &unk_2785DD898;
      v29 = v7;
      v30 = v18;
      v19 = v18;
      [v13 perform:v28];
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __62__GKMatchmaker_Nearby__handleNearbyInviteResponse_fromDevice___block_invoke_3;
    v24[3] = &unk_2785DDB40;
    v25 = v6;
    v26 = self;
    v27 = v7;
    [v13 notifyOnMainQueueWithBlock:v24];

    v20 = v25;
  }

  else
  {
    v21 = [v6 objectForKey:@"declineReason"];
    v22 = [v21 integerValue];

    v13 = [v7 player];
    v20 = [v7 deviceID];
    [(GKMatchmaker *)self setNearbyPlayerDeclined:v13 deviceID:v20 reason:v22];
  }

  v23 = *MEMORY[0x277D85DE8];
}

void __62__GKMatchmaker_Nearby__handleNearbyInviteResponse_fromDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__GKMatchmaker_Nearby__handleNearbyInviteResponse_fromDevice___block_invoke_2;
  v7[3] = &unk_2785DE008;
  v8 = v3;
  v6 = v3;
  [v5 sendDictionary:v4 withCompletionHandler:v7];
}

void __62__GKMatchmaker_Nearby__handleNearbyInviteResponse_fromDevice___block_invoke_3(uint64_t a1)
{
  v39[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"playerNearbyToken"];
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMatchmaker+Nearby.m", 1118, "-[GKMatchmaker(Nearby) handleNearbyInviteResponse:fromDevice:]_block_invoke_3"];
  v4 = [GKDispatchGroup dispatchGroupWithName:v3];

  v5 = "Close the challenge received alert without further action" + 16;
  if ([v2 length])
  {
    v6 = +[GKDaemonProxy proxyForLocalPlayer];
    v7 = [v6 friendService];
    v39[0] = v2;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
    [v7 establishNearbyRelationshipsUsingPlayerTokens:v8 handler:&__block_literal_global_207];

    v9 = [*(a1 + 40) nearbyDevicesForPlayer:0 withState:3];
    if ([v9 count])
    {
      v37[0] = @"message";
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:5];
      v37[1] = @"playerNearbyTokens";
      v38[0] = v10;
      v36 = v2;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
      v38[1] = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v13 = v9;
      v14 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v32;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v32 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v31 + 1) + 8 * i);
            v29[0] = MEMORY[0x277D85DD0];
            v29[1] = 3221225472;
            v29[2] = __62__GKMatchmaker_Nearby__handleNearbyInviteResponse_fromDevice___block_invoke_5;
            v29[3] = &unk_2785DD898;
            v29[4] = v18;
            v30 = v12;
            [v4 perform:v29];
          }

          v15 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v15);
      }

      v5 = "nge received alert without further action";
    }

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = *(v5 + 434);
    v27[2] = __62__GKMatchmaker_Nearby__handleNearbyInviteResponse_fromDevice___block_invoke_7;
    v27[3] = &unk_2785DD898;
    v27[4] = *(a1 + 40);
    v28 = v2;
    [v4 perform:v27];
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = *(v5 + 434);
  v23[2] = __62__GKMatchmaker_Nearby__handleNearbyInviteResponse_fromDevice___block_invoke_8;
  v23[3] = &unk_2785DDB40;
  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  v24 = v19;
  v25 = v20;
  v26 = v21;
  [v4 notifyOnMainQueueWithBlock:v23];

  v22 = *MEMORY[0x277D85DE8];
}

void __62__GKMatchmaker_Nearby__handleNearbyInviteResponse_fromDevice___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__GKMatchmaker_Nearby__handleNearbyInviteResponse_fromDevice___block_invoke_6;
  v7[3] = &unk_2785DE008;
  v8 = v3;
  v6 = v3;
  [v5 sendDictionary:v4 withCompletionHandler:v7];
}

void __62__GKMatchmaker_Nearby__handleNearbyInviteResponse_fromDevice___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v5 = a2;
  v4 = [v3 acceptedInviteesTokens];
  [v4 addObject:*(a1 + 40)];

  v5[2]();
}

void __62__GKMatchmaker_Nearby__handleNearbyInviteResponse_fromDevice___block_invoke_8(uint64_t a1)
{
  v5 = [*(a1 + 32) objectForKey:@"connectionData"];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) player];
  v4 = [*(a1 + 48) deviceID];
  [v2 setNearbyPlayerAccepted:v3 deviceID:v4 connectionData:v5];
}

- (void)establishNearbyFriendRelationships:(id)a3 fromDevice:(id)a4
{
  v6 = [a3 objectForKeyedSubscript:{@"playerNearbyTokens", a4}];
  if ([v6 count])
  {
    v4 = +[GKDaemonProxy proxyForLocalPlayer];
    v5 = [v4 friendService];
    [v5 establishNearbyRelationshipsUsingPlayerTokens:v6 handler:&__block_literal_global_212];
  }
}

- (void)setNearbyPlayerAccepted:(id)a3 deviceID:(id)a4 connectionData:(id)a5
{
  v13[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(GKMatchmaker *)self nearbyDeviceWithDeviceID:a4];
  if ([v10 state] == 2)
  {
    [v10 setState:3];
    [(GKMatchmaker *)self setNearbyPlayerAccepted:v8 connectionData:v9];
    v13[0] = v8;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    [(GKMatchmaker *)self cancelNearbyInvitesToPlayers:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setNearbyPlayerDeclined:(id)a3 deviceID:(id)a4 reason:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(GKMatchmaker *)self nearbyDeviceWithDeviceID:v9];
  if ([v10 state] == 2)
  {
    [v10 setState:4];
    v11 = +[GKDaemonProxy proxyForLocalPlayer];
    v12 = [v11 multiplayerService];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __64__GKMatchmaker_Nearby__setNearbyPlayerDeclined_deviceID_reason___block_invoke;
    v13[3] = &unk_2785E1040;
    v13[4] = self;
    v14 = v8;
    v15 = a5;
    [v12 forgetParticipant:0 deviceID:v9 handler:v13];
  }
}

uint64_t __64__GKMatchmaker_Nearby__setNearbyPlayerDeclined_deviceID_reason___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) numberOfNearbyDevicesForPlayer:*(a1 + 40) withState:2];
  if (!result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    return [v3 setNearbyPlayerDeclined:v4 reason:v5];
  }

  return result;
}

- (void)setNearbyPlayerFailed:(id)a3 deviceID:(id)a4
{
  v7 = a3;
  v6 = [(GKMatchmaker *)self nearbyDeviceWithDeviceID:a4];
  if ([v6 state] == 2)
  {
    [v6 setState:0];
    if (![(GKMatchmaker *)self numberOfNearbyDevicesForPlayer:v7 withState:2])
    {
      [(GKMatchmaker *)self setNearbyPlayerFailed:v7];
    }
  }
}

- (void)handleNearbyProfileQuery:(id)a3 fromDevice:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"bundleID"];
  v9 = [v6 objectForKeyedSubscript:@"shortBundleVersion"];
  v10 = [v6 objectForKeyedSubscript:@"bundleVersion"];
  v11 = [v6 objectForKeyedSubscript:@"isDevelopmentVersion"];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 BOOLValue];
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v13 = 0;
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  if (v10)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __60__GKMatchmaker_Nearby__handleNearbyProfileQuery_fromDevice___block_invoke;
    v17[3] = &unk_2785E1090;
    v17[4] = self;
    v18 = v6;
    v19 = v10;
    v20 = v9;
    v23 = v13;
    v21 = v8;
    v22 = v7;
    [(GKMatchmaker *)self getHashedCompatibilitySetsWithHandler:v17];

    goto LABEL_11;
  }

LABEL_7:
  if (!os_log_GKGeneral)
  {
    v14 = GKOSLoggers();
  }

  v15 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v25 = v6;
    _os_log_impl(&dword_227904000, v15, OS_LOG_TYPE_INFO, "nearby profile query missing bundle info:%@", buf, 0xCu);
  }

LABEL_11:

  v16 = *MEMORY[0x277D85DE8];
}

void __60__GKMatchmaker_Nearby__handleNearbyProfileQuery_fromDevice___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__GKMatchmaker_Nearby__handleNearbyProfileQuery_fromDevice___block_invoke_2;
  v15[3] = &unk_2785E1068;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v22 = *(a1 + 80);
  *&v11 = v10;
  *(&v11 + 1) = *(a1 + 32);
  *&v12 = v8;
  *(&v12 + 1) = v9;
  v16 = v12;
  v17 = v11;
  v18 = *(a1 + 64);
  v19 = v6;
  v20 = v5;
  v21 = *(a1 + 72);
  v13 = v5;
  v14 = v6;
  [v7 determineIfShouldRespondToNearbyPlayer:v8 handler:v15];
}

void __60__GKMatchmaker_Nearby__handleNearbyProfileQuery_fromDevice___block_invoke_2(uint64_t a1, int a2)
{
  v34 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v26 = 138412290;
      v27 = v8;
      _os_log_impl(&dword_227904000, v7, OS_LOG_TYPE_INFO, "Nearby - should not respond to nearby profile query:%@", &v26, 0xCu);
    }

    goto LABEL_8;
  }

  v3 = [*(a1 + 32) objectForKeyedSubscript:@"platform"];
  if (v3)
  {
    v4 = [*(a1 + 32) objectForKeyedSubscript:@"platform"];
    v5 = [v4 integerValue];
  }

  else
  {
    v5 = 0;
  }

  if (([*(a1 + 40) isEqualToString:@"-1"] & 1) == 0 && (objc_msgSend(*(a1 + 48), "isEqualToString:", @"-1") & 1) == 0 && (*(a1 + 96) & 1) == 0)
  {
    v10 = *(a1 + 48);
    if (!v10 || ([*(a1 + 56) hashForBundleID:*(a1 + 64) version:v10 platform:v5], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(*(a1 + 72), "containsObject:", v11), v11, (v12 & 1) == 0))
    {
      v13 = [*(a1 + 56) hashForBundleID:*(a1 + 64) version:*(a1 + 40) platform:v5];
      v14 = [*(a1 + 80) containsObject:v13];

      if (!v14)
      {
        if (!os_log_GKGeneral)
        {
          v18 = GKOSLoggers();
        }

        v19 = os_log_GKMatch;
        if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
        {
          v20 = *(a1 + 64);
          v21 = MEMORY[0x277CCABB0];
          v22 = v19;
          v23 = [v21 numberWithInteger:v5];
          v25 = *(a1 + 40);
          v24 = *(a1 + 48);
          v26 = 138413058;
          v27 = v20;
          v28 = 2112;
          v29 = v23;
          v30 = 2112;
          v31 = v24;
          v32 = 2112;
          v33 = v25;
          _os_log_impl(&dword_227904000, v22, OS_LOG_TYPE_INFO, "Not compatibile with app making profile query: bundleID: %@, platform: %@, short version, %@, version %@", &v26, 0x2Au);
        }

LABEL_8:
        v9 = *MEMORY[0x277D85DE8];
        return;
      }
    }
  }

  v15 = *(a1 + 56);
  v16 = *(a1 + 88);
  v17 = *MEMORY[0x277D85DE8];

  [v15 sendProfileResponseToDevice:v16];
}

- (void)sendProfileResponseToDevice:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = [v4 deviceID];
    *buf = 138412290;
    v15 = v8;
    _os_log_impl(&dword_227904000, v7, OS_LOG_TYPE_INFO, "sending profile response to device:%@", buf, 0xCu);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __52__GKMatchmaker_Nearby__sendProfileResponseToDevice___block_invoke;
  v11[3] = &unk_2785E10E0;
  v12 = v4;
  v13 = self;
  v9 = v4;
  [(GKMatchmaker *)self loadPhotoDataDictionaryWithHandler:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __52__GKMatchmaker_Nearby__sendProfileResponseToDevice___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = v5;
    v8 = [v6 deviceID];
    *buf = 138412290;
    v19 = v8;
    _os_log_impl(&dword_227904000, v7, OS_LOG_TYPE_INFO, "did load photo data:%@", buf, 0xCu);
  }

  v9 = [*(a1 + 40) profileDictionaryForLocalPlayer];
  if ([v3 count])
  {
    v10 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v9];
    [v10 setObject:v3 forKey:@"photoData"];

    v9 = v10;
  }

  v11 = +[GKDaemonProxy proxyForLocalPlayer];
  v12 = [v11 multiplayerService];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__GKMatchmaker_Nearby__sendProfileResponseToDevice___block_invoke_214;
  v15[3] = &unk_2785E10B8;
  v16 = v9;
  v17 = *(a1 + 32);
  v13 = v9;
  [v12 fetchDevicePushToken:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __52__GKMatchmaker_Nearby__sendProfileResponseToDevice___block_invoke_214(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = v3;
    _os_log_impl(&dword_227904000, v5, OS_LOG_TYPE_INFO, "Did get push token for local device: %@.", buf, 0xCu);
  }

  if (v3)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{1, @"message"}];
    v7 = *(a1 + 32);
    v13[0] = v6;
    v13[1] = v7;
    v12[1] = @"profile";
    v12[2] = @"pushToken";
    v13[2] = v3;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

    [*(a1 + 40) sendDictionary:v8 withCompletionHandler:0];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    v10 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_227904000, v10, OS_LOG_TYPE_INFO, "Cannot reply to profile query with a nil push token.", buf, 2u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleNearbyInvite:(id)a3 fromDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__GKMatchmaker_Nearby__handleNearbyInvite_fromDevice___block_invoke;
  v10[3] = &unk_2785DDB18;
  v11 = v7;
  v12 = self;
  v13 = v6;
  v8 = v6;
  v9 = v7;
  [(GKMatchmaker *)self determineIfShouldRespondToNearbyPlayer:v8 handler:v10];
}

void __54__GKMatchmaker_Nearby__handleNearbyInvite_fromDevice___block_invoke(uint64_t *a1, int a2)
{
  if (a2)
  {
    if ([a1[4] state] >= 1 && (objc_msgSend(a1[4], "player"), v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
    {
      v4 = a1[5];
      v5 = a1[6];
      v6 = a1[4];

      [v4 presentNearbyInvite:v5 fromDevice:v6];
    }

    else
    {
      v8 = a1[5];
      v7 = a1[6];
      v9 = a1[4];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __54__GKMatchmaker_Nearby__handleNearbyInvite_fromDevice___block_invoke_2;
      v10[3] = &unk_2785DDB40;
      v10[4] = v8;
      v11 = v7;
      v12 = a1[4];
      [v8 handleNearbyProfileResponse:v11 fromDevice:v9 withCompletionHandler:v10];
    }
  }
}

- (void)presentNearbyInvite:(id)a3 fromDevice:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v23 = 138412290;
    v24 = v6;
    _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "gonna present nearby invite:%@", &v23, 0xCu);
  }

  v10 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v6];
  v11 = +[GKGame currentGame];
  v12 = [v11 adamID];
  [v10 setObject:v12 forKey:@"adamID"];

  v13 = [v11 bundleIdentifier];
  [v10 setObject:v13 forKey:@"bundleID"];

  v14 = [v11 bundleVersion];
  [v10 setObject:v14 forKey:@"bundleVersion"];

  v15 = [v7 deviceID];
  [v10 setObject:v15 forKey:@"deviceID"];

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v11, "platform")}];
  [v10 setObject:v16 forKey:@"platform"];

  v17 = [v11 shortBundleVersion];

  if (v17)
  {
    v18 = [v11 shortBundleVersion];
    [v10 setObject:v18 forKey:@"shortBundleVersion"];
  }

  v19 = [v7 player];
  [(GKMatchmaker *)self saveNearbyInvite:v10 fromPlayer:v19];

  v20 = +[GKDaemonProxy proxyForLocalPlayer];
  v21 = [v20 multiplayerService];
  [v21 presentNearbyInvite:v10];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)saveNearbyInvite:(id)a3 fromPlayer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__GKMatchmaker_Nearby__saveNearbyInvite_fromPlayer___block_invoke;
  v10[3] = &unk_2785DDB40;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(GKMatchmaker *)self performSync:v10];
}

void __52__GKMatchmaker_Nearby__saveNearbyInvite_fromPlayer___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) nearbyInvites];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) referenceKey];
  [v4 setObject:v2 forKey:v3];
}

- (void)removeNearbyInviteFromPlayer:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__GKMatchmaker_Nearby__removeNearbyInviteFromPlayer___block_invoke;
  v6[3] = &unk_2785DEBA8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(GKMatchmaker *)self performSync:v6];
}

void __53__GKMatchmaker_Nearby__removeNearbyInviteFromPlayer___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) nearbyInvites];
  v2 = [*(a1 + 40) referenceKey];
  [v3 removeObjectForKey:v2];
}

- (id)nearbyInviteFromPlayer:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__13;
  v15 = __Block_byref_object_dispose__13;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__GKMatchmaker_Nearby__nearbyInviteFromPlayer___block_invoke;
  v8[3] = &unk_2785E0DC0;
  v10 = &v11;
  v8[4] = self;
  v5 = v4;
  v9 = v5;
  [(GKMatchmaker *)self performSync:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __47__GKMatchmaker_Nearby__nearbyInviteFromPlayer___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) nearbyInvites];
  v2 = [*(a1 + 40) referenceKey];
  v3 = [v6 objectForKey:v2];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)declineReceivedNearbyInvites
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__13;
  v10 = __Block_byref_object_dispose__13;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__GKMatchmaker_Nearby__declineReceivedNearbyInvites__block_invoke;
  v5[3] = &unk_2785DEA90;
  v5[4] = self;
  v5[5] = &v6;
  [(GKMatchmaker *)self performSync:v5];
  v3 = v7[5];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __52__GKMatchmaker_Nearby__declineReceivedNearbyInvites__block_invoke_2;
  v4[3] = &unk_2785E1108;
  v4[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
  _Block_object_dispose(&v6, 8);
}

void __52__GKMatchmaker_Nearby__declineReceivedNearbyInvites__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nearbyInvites];
  v3 = [v2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) nearbyInvites];
  [v6 removeAllObjects];
}

void __52__GKMatchmaker_Nearby__declineReceivedNearbyInvites__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 objectForKey:@"deviceID"];
  v4 = [*(a1 + 32) nearbyDeviceWithDeviceID:v5];
  [*(a1 + 32) declineNearbyInviteFromDevice:v4 reason:3];
}

- (void)localPlayerRespondedToNearbyInvite:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "GKMatchmaker+Nearby: localPlayerRespondedToNearbyInvite:", buf, 2u);
  }

  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v36 = v4;
    _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_INFO, "local player responded to nearby invite: %@", buf, 0xCu);
  }

  v9 = [v4 objectForKey:@"deviceID"];
  if (v9)
  {
    v10 = [(GKMatchmaker *)self nearbyDeviceWithDeviceID:v9];
    v11 = [v10 player];

    if (!v11)
    {
      v12 = MEMORY[0x277CCACA8];
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Assertion failed"];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/GKMatchmaker+Nearby.m"];
      v15 = [v14 lastPathComponent];
      v16 = [v12 stringWithFormat:@"%@ (device.player)\n[%s (%s:%d)]", v13, "-[GKMatchmaker(Nearby) localPlayerRespondedToNearbyInvite:]", objc_msgSend(v15, "UTF8String"), 1368];

      [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v16}];
    }

    v17 = [v10 player];
    [(GKMatchmaker *)self removeNearbyInviteFromPlayer:v17];

    v18 = [v4 objectForKey:@"participantID"];
    v19 = [v4 objectForKey:@"accepted"];
    v20 = [v19 BOOLValue];

    if (v20 && [(GKMatchmaker *)self nearbyAdvertising])
    {
      v21 = [v10 player];
      v22 = [v21 internal];
      v23 = [v4 objectForKey:@"bundleID"];
      v24 = [v4 objectForKey:@"connectionData"];
      v25 = [GKInviteInternal inviteFromNearbyPlayer:v22 participantID:v18 deviceID:v9 bundleID:v23 connectionData:v24];

      v26 = [v4 objectForKey:@"playerGroup"];
      [v25 setPlayerGroup:{objc_msgSend(v26, "integerValue")}];

      v27 = [v4 objectForKey:@"playerAttributes"];
      [v25 setPlayerAttributes:{objc_msgSend(v27, "unsignedIntegerValue")}];

      v28 = [[GKInvite alloc] initWithInternalRepresentation:v25];
      [(GKMatchmaker *)self localPlayerAcceptedNearbyInvite:v28];
      v29 = [v4 objectForKeyedSubscript:@"playerNearbyToken"];
      if ([v29 length])
      {
        v30 = +[GKDaemonProxy proxyForLocalPlayer];
        v31 = [v30 friendService];
        v34 = v29;
        v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
        [v31 establishNearbyRelationshipsUsingPlayerTokens:v32 handler:&__block_literal_global_238];
      }
    }

    else
    {
      v25 = [v4 objectForKey:@"declineReason"];
      -[GKMatchmaker declineNearbyInviteFromDevice:reason:](self, "declineNearbyInviteFromDevice:reason:", v10, [v25 integerValue]);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)localPlayerAcceptedNearbyInvite:(id)a3
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
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "GKMatchmaker+Nearby: localPlayerAcceptedNearbyInvite:", buf, 2u);
  }

  if ([(GKMatchmaker *)self hasInviteListener])
  {
    v7 = +[GKLocalPlayer localPlayer];
    [v7 setAcceptedInvite:v4];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__GKMatchmaker_Nearby__localPlayerAcceptedNearbyInvite___block_invoke;
    block[3] = &unk_2785DDB40;
    v10 = v7;
    v11 = v4;
    v12 = self;
    v8 = v7;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __56__GKMatchmaker_Nearby__localPlayerAcceptedNearbyInvite___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"GKAcceptedGameInvite" object:*(a1 + 32) userInfo:0];

  v3 = +[GKLocalPlayer localPlayer];
  v4 = [v3 eventEmitter];
  v5 = [v4 listenerRegisteredForSelector:sel_player_didAcceptInvite_];

  if ((v5 & 1) == 0)
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
    {
      __56__GKMatchmaker_Nearby__localPlayerAcceptedNearbyInvite___block_invoke_cold_1();
    }
  }

  v7 = [v3 eventEmitter];
  [v7 player:v3 didAcceptInvite:*(a1 + 40)];

  v8 = [*(a1 + 48) inviteHandler];

  if (v8)
  {
    v9 = [*(a1 + 48) inviteHandler];
    v9[2](v9, *(a1 + 40), 0);
  }
}

- (void)acceptNearbyInvite:(id)a3 connectionData:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "GKMatchmaker+Nearby: acceptNearbyInvite: connectionData:", buf, 2u);
  }

  v10 = +[GKDaemonProxy proxyForLocalPlayer];
  v11 = [v10 friendService];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__GKMatchmaker_Nearby__acceptNearbyInvite_connectionData___block_invoke;
  v14[3] = &unk_2785E1130;
  v15 = v7;
  v16 = self;
  v17 = v6;
  v12 = v6;
  v13 = v7;
  [v11 getNearbyTokenForLocalPlayerWithHandler:v14];
}

void __58__GKMatchmaker_Nearby__acceptNearbyInvite_connectionData___block_invoke(uint64_t a1, void *a2)
{
  v17[4] = *MEMORY[0x277D85DE8];
  v16[0] = @"message";
  v3 = MEMORY[0x277CCABB0];
  v4 = a2;
  v5 = [v3 numberWithUnsignedInteger:3];
  v17[0] = v5;
  v16[1] = @"accepted";
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v7 = *(a1 + 32);
  v17[1] = v6;
  v17[2] = v7;
  v16[2] = @"connectionData";
  v16[3] = @"playerNearbyToken";
  v17[3] = v4;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:4];

  v9 = *(a1 + 40);
  v10 = [*(a1 + 48) internal];
  v11 = [v10 deviceID];
  v12 = [v9 nearbyDeviceWithDeviceID:v11];

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__GKMatchmaker_Nearby__acceptNearbyInvite_connectionData___block_invoke_2;
  v14[3] = &unk_2785DDA78;
  v15 = *(a1 + 48);
  [v12 sendDictionary:v8 withCompletionHandler:v14];

  v13 = *MEMORY[0x277D85DE8];
}

void __58__GKMatchmaker_Nearby__acceptNearbyInvite_connectionData___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __58__GKMatchmaker_Nearby__acceptNearbyInvite_connectionData___block_invoke_2_cold_1(a1);
    }
  }

  else
  {
    v5 = +[GKReporter reporter];
    [v5 reportEvent:@"com.apple.GameKit.Invite.NearbyResponse" type:@"GKInviteAccepted"];

    v6 = +[GKReporter reporter];
    [v6 reportEvent:@"com.apple.GameKit.invite" type:@"accept.nearby"];
  }
}

- (void)declineNearbyInviteFromDevice:(id)a3 reason:(int64_t)a4
{
  v18[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v17[0] = @"message";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:3];
  v18[0] = v7;
  v17[1] = @"accepted";
  v8 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v18[1] = v8;
  v17[2] = @"declineReason";
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v18[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61__GKMatchmaker_Nearby__declineNearbyInviteFromDevice_reason___block_invoke;
  v13[3] = &unk_2785E1158;
  v14 = v6;
  v15 = self;
  v16 = a4;
  v11 = v6;
  [v11 sendDictionary:v10 withCompletionHandler:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __61__GKMatchmaker_Nearby__declineNearbyInviteFromDevice_reason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __61__GKMatchmaker_Nearby__declineNearbyInviteFromDevice_reason___block_invoke_cold_1(a1);
    }
  }

  else
  {
    v5 = [*(a1 + 40) declineReasonString:*(a1 + 48)];
    v6 = +[GKReporter reporter];
    [v6 reportEvent:@"com.apple.GameKit.Invite.NearbyResponse" type:v5];

    v7 = +[GKReporter reporter];
    [v7 reportEvent:@"com.apple.GameKit.invite" type:@"decline.nearby"];
  }
}

- (id)declineReasonString:(int64_t)a3
{
  if (a3 > 5)
  {
    v3 = GKDeclinedUnknown;
  }

  else
  {
    v3 = off_2785E1178[a3];
  }

  return *v3;
}

- (void)nearbyInviteWasCancelled:(id)a3 fromDevice:(id)a4
{
  v20 = a3;
  v6 = a4;
  v7 = [v6 player];
  if (v7)
  {
    [(GKMatchmaker *)self removeNearbyInviteFromPlayer:v7];
    v8 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v20];
    v9 = +[GKGame currentGame];
    v10 = [v7 internal];
    v11 = [v10 playerID];
    [v8 setObject:v11 forKey:@"playerID"];

    v12 = [v6 deviceID];
    [v8 setObject:v12 forKey:@"deviceID"];

    v13 = [v9 bundleIdentifier];
    [v8 setObject:v13 forKey:@"bundleID"];

    v14 = [v9 bundleVersion];
    [v8 setObject:v14 forKey:@"bundleVersion"];

    v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "platform")}];
    [v8 setObject:v15 forKey:@"platform"];

    v16 = [v9 shortBundleVersion];

    if (v16)
    {
      v17 = [v9 shortBundleVersion];
      [v8 setObject:v17 forKey:@"shortBundleVersion"];
    }

    v18 = +[GKDaemonProxy proxyForLocalPlayer];
    v19 = [v18 multiplayerService];
    [v19 nearbyInviteWasCancelled:v8];
  }
}

void __62__GKMatchmaker_loadConnectivitySettingsWithCompletionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __29__GKMatchmaker_lookForInvite__block_invoke_4_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __29__GKMatchmaker_lookForInvite__block_invoke_3_85_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __29__GKMatchmaker_lookForInvite__block_invoke_4_86_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __29__GKMatchmaker_lookForInvite__block_invoke_92_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void __29__GKMatchmaker_lookForInvite__block_invoke_92_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __29__GKMatchmaker_lookForInvite__block_invoke_92_cold_3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sharingControllerItemProvider
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __56__GKMatchmaker_respondToHostedInvite_completionHandler___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __55__GKMatchmaker_matchForRemoteInvite_completionHandler___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __55__GKMatchmaker_matchForRemoteInvite_completionHandler___block_invoke_2_178_cold_1(void **a1, void *a2, id *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = a2;
  v6 = [v4 internal];
  v7 = [v6 transportVersionToUse];
  v8 = [*a3 match];
  v9 = [v8 transportContext];
  v10 = [v9 supportedTransportVersions];
  v12 = 138412546;
  v13 = v7;
  OUTLINED_FUNCTION_6_0();
  _os_log_error_impl(&dword_227904000, v5, OS_LOG_TYPE_ERROR, "Cannot accept invite with required transport version: %@. Supported transports are: %@", &v12, 0x16u);

  v11 = *MEMORY[0x277D85DE8];
}

void __55__GKMatchmaker_matchForRemoteInvite_completionHandler___block_invoke_2_178_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __55__GKMatchmaker_matchForRemoteInvite_completionHandler___block_invoke_2_196_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_227904000, v0, OS_LOG_TYPE_FAULT, "GKMatchmaking failed to accept game invite due to error: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)matchForInvite:(uint64_t)a1 completionHandler:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_17() callStackSymbols];
  v7 = 138412546;
  v8 = a1;
  OUTLINED_FUNCTION_6_0();
  _os_log_debug_impl(&dword_227904000, v2, OS_LOG_TYPE_DEBUG, "Match for invite: %@. Stack: %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)matchForInvite:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)matchForInvite:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)reportResponse:forInvitees:withCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __127__GKMatchmaker_invitePlayersWithRequest_serverHosted_onlineConnectionData_devicePushTokenMap_isNearbyInvite_completionHandler___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __127__GKMatchmaker_invitePlayersWithRequest_serverHosted_onlineConnectionData_devicePushTokenMap_isNearbyInvite_completionHandler___block_invoke_3_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

void __91__GKMatchmaker_invitePlayersWithRequest_serverHosted_devicePushTokenMap_completionHandler___block_invoke_6_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __91__GKMatchmaker_invitePlayersWithRequest_serverHosted_devicePushTokenMap_completionHandler___block_invoke_2_227_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(*(*a1 + 8) + 40);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

void __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 localizedDescription];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_227904000, v3, OS_LOG_TYPE_ERROR, "STATUS_BAD_REQUEST: %{public}@", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

void __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_2_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCABB0];
  v3 = a1;
  v4 = [OUTLINED_FUNCTION_17() shared];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(v4, "multiplayerAllowedPlayerType")}];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7_1();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);

  v11 = *MEMORY[0x277D85DE8];
}

void __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_273_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_274_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCABB0];
  v3 = a1;
  v4 = [OUTLINED_FUNCTION_17() shared];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(v4, "multiplayerAllowedPlayerType")}];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7_1();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);

  v11 = *MEMORY[0x277D85DE8];
}

void __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_274_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_278_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_278_cold_2(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_13() count];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_6(&dword_227904000, v3, v4, "Start to preempt relay for %lu players", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_278_cold_3(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 internal];
  v9 = [v8 debugDescription];
  *a1 = 138412290;
  *a4 = v9;
  _os_log_debug_impl(&dword_227904000, v7, OS_LOG_TYPE_DEBUG, "Preemp relay for player %@", a1, 0xCu);
}

void __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_2_283_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_2_283_cold_2(unsigned __int8 *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCABB0];
  v3 = *a1;
  v4 = a2;
  v5 = [v2 numberWithBool:v3];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_15_0(&dword_227904000, v6, v7, "Should delay connection: %@. delayMs: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

void __101__GKMatchmaker_sendMatchmakingRequest_forMatch_rematchID_serverHosted_playerCount_completionHandler___block_invoke_2_283_cold_3(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = *(a2 + 56);
  v5 = a3;
  v6 = [v3 numberWithBool:v4];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_15_0(&dword_227904000, v7, v8, "No need to delay connection. Bag values: %@. shouldDelayConnection: %@", v9, v10, v11, v12, 2u);

  v13 = *MEMORY[0x277D85DE8];
}

void __133__GKMatchmaker_handleMatchRequest_forCurrentMatch_hostedCurrentPlayerCount_serverHosted_rematchID_devicePushToken_completionHandler___block_invoke_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_13() debugDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_5(&dword_227904000, v4, v5, "GKMatchmaker matchWithRequest completed with error: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __133__GKMatchmaker_handleMatchRequest_forCurrentMatch_hostedCurrentPlayerCount_serverHosted_rematchID_devicePushToken_completionHandler___block_invoke_291_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __133__GKMatchmaker_handleMatchRequest_forCurrentMatch_hostedCurrentPlayerCount_serverHosted_rematchID_devicePushToken_completionHandler___block_invoke_291_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __133__GKMatchmaker_handleMatchRequest_forCurrentMatch_hostedCurrentPlayerCount_serverHosted_rematchID_devicePushToken_completionHandler___block_invoke_291_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __133__GKMatchmaker_handleMatchRequest_forCurrentMatch_hostedCurrentPlayerCount_serverHosted_rematchID_devicePushToken_completionHandler___block_invoke_291_cold_4(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCABB0];
  v3 = a1;
  v4 = [OUTLINED_FUNCTION_17() shared];
  v5 = [v2 numberWithUnsignedInteger:{objc_msgSend(v4, "multiplayerAllowedPlayerType")}];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7_1();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0xCu);

  v11 = *MEMORY[0x277D85DE8];
}

void __133__GKMatchmaker_handleMatchRequest_forCurrentMatch_hostedCurrentPlayerCount_serverHosted_rematchID_devicePushToken_completionHandler___block_invoke_291_cold_5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __133__GKMatchmaker_handleMatchRequest_forCurrentMatch_hostedCurrentPlayerCount_serverHosted_rematchID_devicePushToken_completionHandler___block_invoke_2_296_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_18(&dword_227904000, v2, v3, "error occurred when inviting players. request: %@, error: %@");
  v4 = *MEMORY[0x277D85DE8];
}

void __63__GKMatchmaker_loadURLForMatch_matchRequest_completionHandler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __63__GKMatchmaker_loadURLForMatch_matchRequest_completionHandler___block_invoke_8_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)findPlayersForHostedRequest:withCompletionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)findMatchedPlayers:withCompletionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)findPlayersForHostedMatchRequest:withCompletionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)allInviteesDidRespond
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_13() callStackSymbols];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_6(&dword_227904000, v4, v5, "Received responses from all invitees. Stack: %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)cancelInviteToPlayer:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [a3 inviteesByUserID];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_7_1();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)cancelInviteToPlayer:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)queryPlayerGroupActivity:withCompletionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)queryActivityWithCompletionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)queryQueueActivity:withCompletionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)startBrowsingForNearbyPlayersWithReachableHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void __44__GKMatchmaker_inviteeAcceptedNotification___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __49__GKMatchmaker_shareInviteeAcceptedWithUserInfo___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __49__GKMatchmaker_shareInviteeAcceptedWithUserInfo___block_invoke_341_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 48);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)inviteeAccepted:userInfo:allResponded:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __54__GKMatchmaker_inviteeAccepted_userInfo_allResponded___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __54__GKMatchmaker_inviteeAccepted_userInfo_allResponded___block_invoke_362_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __42__GKMatchmaker_inviteeUpdateNotification___block_invoke_383_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)nearbyPlayerFound:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_18(&dword_227904000, v0, v1, "nearbyDataReceived with invalid deviceID (%@) or discoveryInfo (%@).");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)nearbyPlayerLost:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)nearbyDataReceived:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_18(&dword_227904000, v0, v1, "nearbyDataReceived with invalid deviceID (%@) or data (%@).");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)sharedMatchmaker
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_13() callStackSymbols];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_6(&dword_227904000, v4, v5, "Should not initialize GKMatchmaker for the current process. %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __32__GKMatchmaker_sharedMatchmaker__block_invoke_cold_1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_13() callStackSymbols];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_6(&dword_227904000, v4, v5, "GKMatchmaker being initialized in this process. %@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __46__GKMatchmaker_Nearby__startNearbyAdvertising__block_invoke_3_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __85__GKMatchmaker_Nearby__handleNearbyProfileResponse_fromDevice_withCompletionHandler___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_227904000, a2, OS_LOG_TYPE_DEBUG, "no playerInternal for profile response %@, dropping on the floor", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

void __99__GKMatchmaker_Nearby__inviteAnyNearbyPlayersViaLegacyViceroyBonjourConnectionWithRequest_handler___block_invoke_3_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void __93__GKMatchmaker_Nearby__inviteAnyNearbyPlayersViaGCSWithRequest_onlineConnectionData_handler___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __58__GKMatchmaker_Nearby__acceptNearbyInvite_connectionData___block_invoke_2_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_18(&dword_227904000, v2, v3, "failed to accept nearby invite: %@, due to error: %@");
  v4 = *MEMORY[0x277D85DE8];
}

void __61__GKMatchmaker_Nearby__declineNearbyInviteFromDevice_reason___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_18(&dword_227904000, v2, v3, "failed to decline nearby invite from device: %@, due to error: %@");
  v4 = *MEMORY[0x277D85DE8];
}

@end