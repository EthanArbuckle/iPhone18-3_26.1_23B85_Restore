@interface GKDaemonProxy
+ (GKDaemonProxy)daemonProxy;
+ (GKServiceProxy)proxyForLocalPlayer;
+ (id)proxiesForPlayer;
+ (id)proxyForPlayer:(id)a3;
+ (void)getActiveFriendRequestCount:(id)a3;
+ (void)messagesDidReceiveGameCenterURL:(id)a3 senderHandle:(id)a4 contactID:(id)a5;
+ (void)removeProxyForPlayer:(id)a3;
- (BOOL)hasAuthenticatedAccount;
- (BOOL)isRefreshDataTypeEligibleForNotification:(unsigned int)a3;
- (GKDaemonProxy)init;
- (GKDaemonProxyDataUpdateDelegate)dataUpdateDelegate;
- (GKDaemonProxyNetworkActivityIndicatorDelegate)networkActivityIndicatorDelegate;
- (id)accountName;
- (id)authenticatedCredential;
- (id)authenticatedLocalPlayersWithStatus:(unint64_t)a3;
- (id)authenticatedPlayerID;
- (id)authenticatedPlayerInfo;
- (id)getGamedFiredUp;
- (id)localizedMessageFromDictionary:(id)a3 forBundleID:(id)a4;
- (id)replyQueueForRequestSelector:(SEL)a3;
- (id)userInfoForPlayerID:(id)a3 deviceID:(id)a4 data:(id)a5 discoveryInfo:(id)a6;
- (int)localPlayerAgeCategory;
- (void)_resetServiceLookup;
- (void)acceptInviteWithNotification:(id)a3;
- (void)acceptMultiplayerGameInvite;
- (void)addInterface:(id)a3 toLookup:(id)a4;
- (void)authenticatedLocalPlayersWithStatus:(unint64_t)a3 completion:(id)a4;
- (void)authenticatedPlayersDidChange:(id)a3 authenticatingBundleID:(id)a4 reply:(id)a5;
- (void)beginNetworkActivity;
- (void)buildInterfaceLookup;
- (void)cancelGameInvite:(id)a3;
- (void)cancelInviteWithNotification:(id)a3;
- (void)challengeCompleted:(id)a3;
- (void)challengeReceived:(id)a3;
- (void)completedChallengeSelected:(id)a3;
- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5;
- (void)declineInviteWithNotification:(id)a3;
- (void)deliverEncodedGameActivityInstance:(id)a3;
- (void)dispatchCompletedChallenge:(id)a3;
- (void)endNetworkActivity;
- (void)fetchTurnBasedData;
- (void)friendRequestSelected:(id)a3;
- (void)gameServicesRemoteCall:(id)a3 completionHandler:(id)a4;
- (void)getAccountNameWithHandler:(id)a3;
- (void)getAuthenticatedPlayerIDWithHandler:(id)a3;
- (void)getGamedFiredUp;
- (void)init;
- (void)localPlayerAgeCategory;
- (void)metricsValuesChanged;
- (void)nearbyDataReceivedForPlayerID:(id)a3 deviceID:(id)a4 data:(id)a5;
- (void)nearbyPlayerFoundForPlayerID:(id)a3 deviceID:(id)a4 discoveryInfo:(id)a5;
- (void)nearbyPlayerLostForPlayerID:(id)a3 deviceID:(id)a4;
- (void)presentBannerWithNotification:(id)a3;
- (void)receivedChallengeSelected:(id)a3;
- (void)relayPushNotification:(id)a3;
- (void)requestSandboxExtension:(id)a3;
- (void)resetLoginCancelCount;
- (void)resetNetworkActivity;
- (void)resetServiceLookup;
- (void)respondedToNearbyInvite:(id)a3;
- (void)setBadgeCount:(unint64_t)a3 forType:(unint64_t)a4;
- (void)setCurrentGame:(id)a3 serverEnvironment:(int64_t)a4 reply:(id)a5;
- (void)setHostPID:(int)a3;
- (void)setPreferencesValues:(id)a3;
- (void)setTestGame:(id)a3 protocolVersion:(id)a4 reply:(id)a5;
- (void)updateInviteWithNotification:(id)a3;
@end

@implementation GKDaemonProxy

+ (GKServiceProxy)proxyForLocalPlayer
{
  v2 = +[GKLocalPlayer localPlayer];
  v3 = [GKDaemonProxy proxyForPlayer:v2];

  return v3;
}

+ (GKDaemonProxy)daemonProxy
{
  if (daemonProxy_onceToken != -1)
  {
    +[GKDaemonProxy daemonProxy];
  }

  v3 = daemonProxy_sDaemonProxy;

  return v3;
}

uint64_t __28__GKDaemonProxy_daemonProxy__block_invoke()
{
  daemonProxy_sDaemonProxy = objc_alloc_init(GKDaemonProxy);

  return MEMORY[0x2821F96F8]();
}

- (GKDaemonProxy)init
{
  v47 = *MEMORY[0x277D85DE8];
  v44.receiver = self;
  v44.super_class = GKDaemonProxy;
  v2 = [(GKServiceProxy *)&v44 initWithPlayer:0];
  if (!v2)
  {
    goto LABEL_34;
  }

  v2->_hostPID = getpid();
  [(GKServiceProxy *)v2 setBaseProxy:v2];
  if (!v2->_hostPID)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"_hostPID must not be 0"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/GKDaemonProxy.m"];
    v6 = [v5 lastPathComponent];
    v7 = v6;
    v8 = [v3 stringWithFormat:@"%@ (_hostPID != 0)\n[%s (%s:%d)]", v4, "-[GKDaemonProxy init]", objc_msgSend(v6, "UTF8String"), 345];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v8}];
  }

  v9 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  dataUpdateDelegates = v2->_dataUpdateDelegates;
  v2->_dataUpdateDelegates = v9;

  v11 = objc_alloc_init(GKGameActivityEventHandler);
  gameActivityEventHandler = v2->_gameActivityEventHandler;
  v2->_gameActivityEventHandler = v11;

  v13 = dispatch_semaphore_create(10);
  concurrentRequestSemaphore = v2->_concurrentRequestSemaphore;
  v2->_concurrentRequestSemaphore = v13;

  v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v16 = dispatch_queue_create("com.apple.gamecenter.GKDaemonProxy", v15);
  invocationQueue = v2->_invocationQueue;
  v2->_invocationQueue = v16;

  v18 = dispatch_queue_create("com.apple.GameKit.GKDaemonProxy.authenticationQueue", 0);
  authenticationQueue = v2->_authenticationQueue;
  v2->_authenticationQueue = v18;

  v20 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.gamed" options:256];
  connection = v2->_connection;
  v2->_connection = v20;

  [(NSXPCConnection *)v2->_connection setExportedObject:v2];
  v22 = +[GKClientInterface interface];
  [(NSXPCConnection *)v2->_connection setExportedInterface:v22];

  v23 = +[GKDaemonInterface interface];
  [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v23];

  [(NSXPCConnection *)v2->_connection setDelegate:v2];
  [(NSXPCConnection *)v2->_connection setInvalidationHandler:&__block_literal_global_88];
  objc_initWeak(&location, v2);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __21__GKDaemonProxy_init__block_invoke_2;
  v41[3] = &unk_2785DEE50;
  objc_copyWeak(&v42, &location);
  [(NSXPCConnection *)v2->_connection setInterruptionHandler:v41];
  v24 = [MEMORY[0x277CCA8D8] mainBundle];
  v25 = [v24 bundleIdentifier];

  v26 = +[GKEntitledContextProvider hasAnyGameCenterEntitlement];
  v27 = os_log_GKGeneral;
  if (!v26)
  {
    if (!os_log_GKGeneral)
    {
      v30 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
    {
      [GKDaemonProxy init];
    }

    if (GKApplicationLinkedOnOrAfter(1114112, 917504))
    {
      if (![v25 hasPrefix:@"com.apple."])
      {
        v36 = os_log_GKGeneral;
        if (!os_log_GKGeneral)
        {
          v37 = GKOSLoggers();
          v36 = os_log_GKGeneral;
        }

        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v46 = v25;
          _os_log_impl(&dword_227904000, v36, OS_LOG_TYPE_INFO, "GKDaemonProxy: Connection PROHIBITED for unentitled process: %@", buf, 0xCu);
        }

        v29 = 0;
        goto LABEL_31;
      }

      v31 = +[GKEntitledContextProvider hasPrivateContactsEntitlement];
      v32 = os_log_GKGeneral;
      if (!v31)
      {
        if (!os_log_GKGeneral)
        {
          v40 = GKOSLoggers();
          v32 = os_log_GKGeneral;
        }

        if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
        {
          [GKDaemonProxy init];
        }

        goto LABEL_9;
      }

      if (!os_log_GKGeneral)
      {
        v33 = GKOSLoggers();
        v32 = os_log_GKGeneral;
      }

      v29 = 1;
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        goto LABEL_31;
      }

      *buf = 138412290;
      v46 = v25;
      v34 = "GKDaemonProxy: Using private Contacts entitlement to imply private Game Center Profile entitlement for: %@";
    }

    else
    {
      v32 = os_log_GKGeneral;
      if (!os_log_GKGeneral)
      {
        v35 = GKOSLoggers();
        v32 = os_log_GKGeneral;
      }

      v29 = 1;
      if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        goto LABEL_31;
      }

      *buf = 138412290;
      v46 = v25;
      v34 = "GKDaemonProxy: Connection ALLOWED for unentitled but grandfathered process: %@";
    }

    _os_log_impl(&dword_227904000, v32, OS_LOG_TYPE_INFO, v34, buf, 0xCu);
    goto LABEL_31;
  }

  if (!os_log_GKGeneral)
  {
    v28 = GKOSLoggers();
    v27 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    [GKDaemonProxy init];
  }

LABEL_9:
  v29 = 1;
LABEL_31:
  [(NSXPCConnection *)v2->_connection resume];
  if ((v29 & 1) == 0)
  {
    [(NSXPCConnection *)v2->_connection invalidate];
  }

  [(GKDaemonProxy *)v2 buildInterfaceLookup];

  objc_destroyWeak(&v42);
  objc_destroyWeak(&location);
LABEL_34:
  v38 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)buildInterfaceLookup
{
  v24 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  v3 = +[(GKServiceInterface *)GKAccountServiceInterface];
  [(GKDaemonProxy *)self addInterface:v3 toLookup:v24];

  v4 = +[(GKServiceInterface *)GKProfileServiceInterface];
  [(GKDaemonProxy *)self addInterface:v4 toLookup:v24];

  v5 = +[(GKServiceInterface *)GKFriendServiceInterface];
  [(GKDaemonProxy *)self addInterface:v5 toLookup:v24];

  v6 = +[(GKServiceInterface *)GKGameServiceInterface];
  [(GKDaemonProxy *)self addInterface:v6 toLookup:v24];

  v7 = +[(GKServiceInterface *)GKGameStatServiceInterface];
  [(GKDaemonProxy *)self addInterface:v7 toLookup:v24];

  v8 = +[(GKServiceInterface *)GKChallengeServiceInterface];
  [(GKDaemonProxy *)self addInterface:v8 toLookup:v24];

  v9 = +[(GKServiceInterface *)GKMultiplayerServiceInterface];
  [(GKDaemonProxy *)self addInterface:v9 toLookup:v24];

  v10 = +[(GKServiceInterface *)GKTurnBasedServiceInterface];
  [(GKDaemonProxy *)self addInterface:v10 toLookup:v24];

  v11 = +[(GKServiceInterface *)GKUtilityServiceInterface];
  [(GKDaemonProxy *)self addInterface:v11 toLookup:v24];

  v12 = +[(GKServiceInterface *)GKBulletinServiceInterface];
  [(GKDaemonProxy *)self addInterface:v12 toLookup:v24];

  v13 = +[(GKServiceInterface *)GKAccountServicePrivateInterface];
  [(GKDaemonProxy *)self addInterface:v13 toLookup:v24];

  v14 = +[(GKServiceInterface *)GKProfileServicePrivateInterface];
  [(GKDaemonProxy *)self addInterface:v14 toLookup:v24];

  v15 = +[(GKServiceInterface *)GKFriendServicePrivateInterface];
  [(GKDaemonProxy *)self addInterface:v15 toLookup:v24];

  v16 = +[(GKServiceInterface *)GKGameKitDirectoryServicePrivateInterface];
  [(GKDaemonProxy *)self addInterface:v16 toLookup:v24];

  v17 = +[(GKServiceInterface *)GKGameServicePrivateInterface];
  [(GKDaemonProxy *)self addInterface:v17 toLookup:v24];

  v18 = +[(GKServiceInterface *)GKGameStatServicePrivateInterface];
  [(GKDaemonProxy *)self addInterface:v18 toLookup:v24];

  v19 = +[(GKServiceInterface *)GKChallengeServicePrivateInterface];
  [(GKDaemonProxy *)self addInterface:v19 toLookup:v24];

  v20 = +[(GKServiceInterface *)GKMultiplayerServicePrivateInterface];
  [(GKDaemonProxy *)self addInterface:v20 toLookup:v24];

  v21 = +[(GKServiceInterface *)GKTurnBasedServicePrivateInterface];
  [(GKDaemonProxy *)self addInterface:v21 toLookup:v24];

  v22 = +[(GKServiceInterface *)GKUtilityServicePrivateInterface];
  [(GKDaemonProxy *)self addInterface:v22 toLookup:v24];

  v23 = +[(GKServiceInterface *)GKBulletinServicePrivateInterface];
  [(GKDaemonProxy *)self addInterface:v23 toLookup:v24];

  [(GKDaemonProxy *)self setInterfaceLookup:v24];
}

+ (id)proxiesForPlayer
{
  if (proxiesForPlayer_once != -1)
  {
    +[GKDaemonProxy proxiesForPlayer];
  }

  v3 = proxiesForPlayer_proxies;

  return v3;
}

uint64_t __33__GKDaemonProxy_proxiesForPlayer__block_invoke()
{
  proxiesForPlayer_proxies = [[GKThreadsafeDictionary alloc] initWithName:@"com.apple.gamecenter.per-player-daemonproxies"];

  return MEMORY[0x2821F96F8]();
}

+ (void)removeProxyForPlayer:(id)a3
{
  v6 = [a3 internal];
  v3 = [v6 playerID];

  if (v3)
  {
    v4 = [v6 playerID];
    v5 = +[GKDaemonProxy proxiesForPlayer];
    [v5 removeObjectForKey:v4];
  }
}

+ (id)proxyForPlayer:(id)a3
{
  v4 = a3;
  v5 = [a1 daemonProxy];
  v6 = [v4 internal];

  v7 = [v6 playerID];

  if (v7)
  {
    v8 = [v6 playerID];
  }

  else
  {

    v6 = 0;
    v8 = @"<no associated player>";
  }

  v9 = +[GKDaemonProxy proxiesForPlayer];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __32__GKDaemonProxy_proxyForPlayer___block_invoke;
  v14[3] = &unk_2785E0388;
  v15 = v5;
  v16 = v6;
  v10 = v6;
  v11 = v5;
  v12 = [v9 objectForKeyWillReplace:v8 objectProducerBlock:v14];

  return v12;
}

GKServiceProxy *__32__GKDaemonProxy_proxyForPlayer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && ([v3 baseProxy], v5 = objc_claimAutoreleasedReturnValue(), v6 = *(a1 + 32), v5, v5 == v6))
  {
    v7 = v4;
  }

  else
  {
    v7 = [[GKServiceProxy alloc] initWithPlayer:*(a1 + 40)];
    [(GKServiceProxy *)v7 setLocalPlayer:*(a1 + 40)];
    [(GKServiceProxy *)v7 setBaseProxy:*(a1 + 32)];
  }

  return v7;
}

+ (void)messagesDidReceiveGameCenterURL:(id)a3 senderHandle:(id)a4 contactID:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
    v10 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138412802;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v7;
    _os_log_debug_impl(&dword_227904000, v10, OS_LOG_TYPE_DEBUG, "GKDaemonProxy - received URL from %@ (%@) : %@", &v15, 0x20u);
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else if (!v7)
  {
    goto LABEL_8;
  }

  v12 = +[GKDaemonProxy daemonProxy];
  v13 = [v12[11] remoteObjectProxyWithErrorHandler:&__block_literal_global_23];

  if (v13)
  {
    [v13 messagesDidReceiveGameCenterURL:v7 senderHandle:v8 contactID:v9];
  }

LABEL_8:
  v14 = *MEMORY[0x277D85DE8];
}

void __72__GKDaemonProxy_messagesDidReceiveGameCenterURL_senderHandle_contactID___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    if (!os_log_GKGeneral)
    {
      v3 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      __72__GKDaemonProxy_messagesDidReceiveGameCenterURL_senderHandle_contactID___block_invoke_cold_1();
    }
  }
}

+ (void)getActiveFriendRequestCount:(id)a3
{
  v3 = a3;
  v4 = +[GKDaemonProxy daemonProxy];
  v5 = [v4 friendServicePrivate];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__GKDaemonProxy_getActiveFriendRequestCount___block_invoke;
  v7[3] = &unk_2785DDCB0;
  v8 = v3;
  v6 = v3;
  [v5 getCombinedFriendInvitationListWithCompletion:v7];
}

void __45__GKDaemonProxy_getActiveFriendRequestCount___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[GKPreferences shared];
  v8 = [v7 inboxContactsOnly];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v9);
        }

        if (!v8 || [*(*(&v16 + 1) + 8 * i) isFriendInvitationInContacts])
        {
          ++v12;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  (*(*(a1 + 32) + 16))();
  v15 = *MEMORY[0x277D85DE8];
}

- (void)_resetServiceLookup
{
  v3 = dispatch_get_current_queue();
  v4 = [(GKServiceProxy *)self baseProxy];
  v5 = [v4 invocationQueue];

  if (v3 != v5)
  {
    v6 = MEMORY[0x277CCACA8];
    label = dispatch_queue_get_label(v3);
    v8 = [(GKServiceProxy *)self baseProxy];
    v9 = [v8 invocationQueue];
    v10 = dispatch_queue_get_label(v9);
    v11 = [MEMORY[0x277CCACC8] callStackSymbols];
    v12 = [v6 stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "-[GKDaemonProxy _resetServiceLookup]", label, v10, v11];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/GKDaemonProxy.m"];
    v14 = [v13 lastPathComponent];
    v15 = [v6 stringWithFormat:@"%@ (_actualCurrentQueue == self.baseProxy.invocationQueue)\n[%s (%s:%d)]", v12, "-[GKDaemonProxy _resetServiceLookup]", objc_msgSend(v14, "UTF8String"), 203];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v15}];
  }

  v16 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v17 = GKOSLoggers();
    v16 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_227904000, v16, OS_LOG_TYPE_INFO, "Resetting service lookup", buf, 2u);
  }

  [(GKServiceProxy *)self setServiceGeneration:[(GKServiceProxy *)self serviceGeneration]+ 1];
  [(GKServiceProxy *)self setServiceLookup:0];
}

- (void)resetServiceLookup
{
  v3 = [(GKServiceProxy *)self baseProxy];
  v4 = [v3 invocationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__GKDaemonProxy_resetServiceLookup__block_invoke;
  block[3] = &unk_2785DD760;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)addInterface:(id)a3 toLookup:(id)a4
{
  v5 = a3;
  v6 = a4;
  outCount = 0;
  v7 = [v5 protocol];
  v8 = protocol_copyMethodDescriptionList(v7, 1, 1, &outCount);
  v9 = v8;
  if (outCount)
  {
    v10 = 0;
    p_name = &v8->name;
    do
    {
      v12 = NSStringFromSelector(*p_name);
      v13 = [v6 objectForKey:v12];

      if (!v13)
      {
        [v6 setObject:v5 forKey:v12];
      }

      ++v10;
      p_name += 2;
    }

    while (v10 < outCount);
  }

  free(v9);
  v14 = protocol_copyMethodDescriptionList(v7, 0, 1, &outCount);
  v15 = v14;
  if (outCount)
  {
    v16 = 0;
    v17 = &v14->name;
    do
    {
      v18 = NSStringFromSelector(*v17);
      v19 = [v6 objectForKey:v18];

      if (!v19)
      {
        [v6 setObject:v5 forKey:v18];
      }

      ++v16;
      v17 += 2;
    }

    while (v16 < outCount);
  }

  free(v15);
}

- (void)setHostPID:(int)a3
{
  if (self->_hostPID != a3)
  {
    v8 = v3;
    v9 = v4;
    invocationQueue = self->_invocationQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __28__GKDaemonProxy_setHostPID___block_invoke;
    v6[3] = &unk_2785E03B0;
    v6[4] = self;
    v7 = a3;
    dispatch_async(invocationQueue, v6);
  }
}

void __28__GKDaemonProxy_setHostPID___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
    v2 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = *(*(a1 + 32) + 48);
    v5 = *(a1 + 40);
    *buf = 67109376;
    v18 = v4;
    v19 = 1024;
    v20 = v5;
    _os_log_impl(&dword_227904000, v2, OS_LOG_TYPE_INFO, "Changing the host PID from %d to %d", buf, 0xEu);
  }

  *(*(a1 + 32) + 48) = *(a1 + 40);
  [*(a1 + 32) _resetServiceLookup];
  CFAbsoluteTimeGetCurrent();
  v6 = [*(*(a1 + 32) + 88) remoteObjectProxyWithErrorHandler:&__block_literal_global_66_0];
  if (v6)
  {
    v7 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
      v7 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_227904000, v7, OS_LOG_TYPE_INFO, "Setting host PID", buf, 2u);
    }

    v9 = dispatch_group_create();
    dispatch_group_enter(v9);
    v10 = *(*(a1 + 32) + 48);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __28__GKDaemonProxy_setHostPID___block_invoke_67;
    v15[3] = &unk_2785DD760;
    v11 = v9;
    v16 = v11;
    [v6 setHostPID:v10 reply:v15];
    dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
    if (!os_log_GKGeneral)
    {
      v12 = GKOSLoggers();
    }

    v13 = os_log_GKPerf;
    if (os_log_type_enabled(os_log_GKPerf, OS_LOG_TYPE_DEBUG))
    {
      __28__GKDaemonProxy_setHostPID___block_invoke_cold_1(v13);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __28__GKDaemonProxy_setHostPID___block_invoke_64(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    if (!os_log_GKGeneral)
    {
      v3 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      __28__GKDaemonProxy_setHostPID___block_invoke_64_cold_1();
    }
  }
}

- (void)setTestGame:(id)a3 protocolVersion:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  invocationQueue = self->_invocationQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __51__GKDaemonProxy_setTestGame_protocolVersion_reply___block_invoke;
  v15[3] = &unk_2785DD960;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(invocationQueue, v15);
}

void __51__GKDaemonProxy_setTestGame_protocolVersion_reply___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _resetServiceLookup];
  v2 = dispatch_group_create();
  CFAbsoluteTimeGetCurrent();
  v3 = *(*(a1 + 32) + 88);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __51__GKDaemonProxy_setTestGame_protocolVersion_reply___block_invoke_2;
  v17[3] = &unk_2785DDA78;
  v4 = v2;
  v18 = v4;
  v5 = [v3 remoteObjectProxyWithErrorHandler:v17];
  if (v5)
  {
    v6 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
      v6 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "Setting test game", buf, 2u);
    }

    dispatch_group_enter(v4);
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __51__GKDaemonProxy_setTestGame_protocolVersion_reply___block_invoke_69;
    v13[3] = &unk_2785DED60;
    v15 = *(a1 + 56);
    v10 = v4;
    v14 = v10;
    [v5 setTestGame:v8 protocolVersion:v9 reply:v13];
    dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    v12 = os_log_GKPerf;
    if (os_log_type_enabled(os_log_GKPerf, OS_LOG_TYPE_DEBUG))
    {
      __51__GKDaemonProxy_setTestGame_protocolVersion_reply___block_invoke_cold_1(v12);
    }
  }
}

void __51__GKDaemonProxy_setTestGame_protocolVersion_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
  {
    __51__GKDaemonProxy_setTestGame_protocolVersion_reply___block_invoke_2_cold_1();
  }

  dispatch_group_leave(*(a1 + 32));
}

void __51__GKDaemonProxy_setTestGame_protocolVersion_reply___block_invoke_69(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  dispatch_group_leave(v3);
}

void __21__GKDaemonProxy_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained resetServiceLookup];
}

- (id)authenticatedPlayerID
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__10;
  v12 = __Block_byref_object_dispose__10;
  v13 = 0;
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKDaemonProxy.m", 411, "-[GKDaemonProxy authenticatedPlayerID]"];
  v4 = [GKDispatchGroup dispatchGroupWithName:v3];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__GKDaemonProxy_authenticatedPlayerID__block_invoke;
  v7[3] = &unk_2785E0400;
  v7[4] = self;
  v7[5] = &v8;
  [v4 perform:v7];
  [v4 wait];
  v5 = v9[5];

  _Block_object_dispose(&v8, 8);

  return v5;
}

void __38__GKDaemonProxy_authenticatedPlayerID__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 88);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __38__GKDaemonProxy_authenticatedPlayerID__block_invoke_2;
  v12[3] = &unk_2785DE008;
  v5 = v3;
  v13 = v5;
  v6 = [v4 remoteObjectProxyWithErrorHandler:v12];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__GKDaemonProxy_authenticatedPlayerID__block_invoke_3;
  v9[3] = &unk_2785E03D8;
  v7 = *(a1 + 40);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  [v6 getAuthenticatedPlayerIDWithHandler:v9];
}

void __38__GKDaemonProxy_authenticatedPlayerID__block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 32) + 16))();
}

- (id)accountName
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__10;
  v12 = __Block_byref_object_dispose__10;
  v13 = 0;
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKDaemonProxy.m", 430, "-[GKDaemonProxy accountName]"];
  v4 = [GKDispatchGroup dispatchGroupWithName:v3];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__GKDaemonProxy_accountName__block_invoke;
  v7[3] = &unk_2785E0400;
  v7[4] = self;
  v7[5] = &v8;
  [v4 perform:v7];
  [v4 wait];
  v5 = v9[5];

  _Block_object_dispose(&v8, 8);

  return v5;
}

void __28__GKDaemonProxy_accountName__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 88);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __28__GKDaemonProxy_accountName__block_invoke_2;
  v12[3] = &unk_2785DE008;
  v5 = v3;
  v13 = v5;
  v6 = [v4 remoteObjectProxyWithErrorHandler:v12];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __28__GKDaemonProxy_accountName__block_invoke_3;
  v9[3] = &unk_2785E03D8;
  v7 = *(a1 + 40);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  [v6 getAccountNameWithHandler:v9];
}

void __28__GKDaemonProxy_accountName__block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 32) + 16))();
}

- (BOOL)hasAuthenticatedAccount
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKDaemonProxy.m", 449, "-[GKDaemonProxy hasAuthenticatedAccount]"];
  v4 = [GKDispatchGroup dispatchGroupWithName:v3];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__GKDaemonProxy_hasAuthenticatedAccount__block_invoke;
  v6[3] = &unk_2785E0400;
  v6[4] = self;
  v6[5] = &v7;
  [v4 perform:v6];
  [v4 wait];
  LOBYTE(self) = *(v8 + 24);

  _Block_object_dispose(&v7, 8);
  return self;
}

void __40__GKDaemonProxy_hasAuthenticatedAccount__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 88);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__GKDaemonProxy_hasAuthenticatedAccount__block_invoke_2;
  v12[3] = &unk_2785DE008;
  v5 = v3;
  v13 = v5;
  v6 = [v4 remoteObjectProxyWithErrorHandler:v12];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__GKDaemonProxy_hasAuthenticatedAccount__block_invoke_3;
  v9[3] = &unk_2785E03D8;
  v7 = *(a1 + 40);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  [v6 getAuthenticatedPlayerIDWithHandler:v9];
}

- (id)authenticatedPlayerInfo
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__10;
  v12 = __Block_byref_object_dispose__10;
  v13 = 0;
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKDaemonProxy.m", 468, "-[GKDaemonProxy authenticatedPlayerInfo]"];
  v4 = [GKDispatchGroup dispatchGroupWithName:v3];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__GKDaemonProxy_authenticatedPlayerInfo__block_invoke;
  v7[3] = &unk_2785E0400;
  v7[4] = self;
  v7[5] = &v8;
  [v4 perform:v7];
  [v4 wait];
  v5 = v9[5];

  _Block_object_dispose(&v8, 8);

  return v5;
}

void __40__GKDaemonProxy_authenticatedPlayerInfo__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 88);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__GKDaemonProxy_authenticatedPlayerInfo__block_invoke_2;
  v12[3] = &unk_2785DE008;
  v5 = v3;
  v13 = v5;
  v6 = [v4 remoteObjectProxyWithErrorHandler:v12];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__GKDaemonProxy_authenticatedPlayerInfo__block_invoke_3;
  v9[3] = &unk_2785E0428;
  v7 = *(a1 + 40);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  [v6 getAuthenticatedPlayerInfo:v9];
}

void __40__GKDaemonProxy_authenticatedPlayerInfo__block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 32) + 16))();
}

- (id)authenticatedCredential
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__10;
  v12 = __Block_byref_object_dispose__10;
  v13 = 0;
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKDaemonProxy.m", 487, "-[GKDaemonProxy authenticatedCredential]"];
  v4 = [GKDispatchGroup dispatchGroupWithName:v3];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__GKDaemonProxy_authenticatedCredential__block_invoke;
  v7[3] = &unk_2785E0400;
  v7[4] = self;
  v7[5] = &v8;
  [v4 perform:v7];
  [v4 wait];
  v5 = v9[5];

  _Block_object_dispose(&v8, 8);

  return v5;
}

void __40__GKDaemonProxy_authenticatedCredential__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 88);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__GKDaemonProxy_authenticatedCredential__block_invoke_2;
  v12[3] = &unk_2785DE008;
  v5 = v3;
  v13 = v5;
  v6 = [v4 remoteObjectProxyWithErrorHandler:v12];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__GKDaemonProxy_authenticatedCredential__block_invoke_3;
  v9[3] = &unk_2785E0450;
  v7 = *(a1 + 40);
  v10 = v5;
  v11 = v7;
  v8 = v5;
  [v6 getAuthenticatedPlayerCredential:v9];
}

void __40__GKDaemonProxy_authenticatedCredential__block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 32) + 16))();
}

- (void)authenticatedLocalPlayersWithStatus:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  authenticationQueue = self->_authenticationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__GKDaemonProxy_authenticatedLocalPlayersWithStatus_completion___block_invoke;
  block[3] = &unk_2785E0498;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(authenticationQueue, block);
}

void __64__GKDaemonProxy_authenticatedLocalPlayersWithStatus_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 88);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__GKDaemonProxy_authenticatedLocalPlayersWithStatus_completion___block_invoke_2;
  v7[3] = &unk_2785DE008;
  v8 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v7];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__GKDaemonProxy_authenticatedLocalPlayersWithStatus_completion___block_invoke_3;
  v5[3] = &unk_2785DDCB0;
  v4 = *(a1 + 48);
  v6 = *(a1 + 40);
  [v3 getAuthenticatedLocalPlayersWithStatus:v4 handler:v5];
}

void __64__GKDaemonProxy_authenticatedLocalPlayersWithStatus_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 _gkMapWithBlock:&__block_literal_global_105];
  (*(*(a1 + 32) + 16))();
}

GKLocalPlayer *__64__GKDaemonProxy_authenticatedLocalPlayersWithStatus_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(GKLocalPlayer);
  [(GKPlayer *)v3 setInternal:v2];

  [(GKLocalPlayer *)v3 setAuthenticated:1];

  return v3;
}

- (id)authenticatedLocalPlayersWithStatus:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKDaemonProxy.m", 526, "-[GKDaemonProxy authenticatedLocalPlayersWithStatus:]"];
  v6 = [GKDispatchGroup dispatchGroupWithName:v5];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__GKDaemonProxy_authenticatedLocalPlayersWithStatus___block_invoke;
  v10[3] = &unk_2785DE6E0;
  v11 = v6;
  v12 = a3;
  v10[4] = self;
  v7 = v6;
  [v7 perform:v10];
  [v7 wait];
  v8 = [v7 result];

  return v8;
}

void __53__GKDaemonProxy_authenticatedLocalPlayersWithStatus___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__GKDaemonProxy_authenticatedLocalPlayersWithStatus___block_invoke_2;
  v7[3] = &unk_2785DDC38;
  v5 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = v3;
  v6 = v3;
  [v5 authenticatedLocalPlayersWithStatus:v4 completion:v7];
}

uint64_t __53__GKDaemonProxy_authenticatedLocalPlayersWithStatus___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setResult:a2];
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (id)getGamedFiredUp
{
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __32__GKDaemonProxy_getGamedFiredUp__block_invoke;
  aBlock[3] = &unk_2785DFF00;
  aBlock[4] = v18;
  v3 = _Block_copy(aBlock);
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__10;
  v15 = __Block_byref_object_dispose__10;
  v16 = 0;
  v4 = [(GKServiceProxy *)self baseProxy];
  v5 = [v4 connection];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __32__GKDaemonProxy_getGamedFiredUp__block_invoke_106;
  v10[3] = &unk_2785E04E8;
  v10[4] = v18;
  v10[5] = &v11;
  [v5 gkPerformSynchronously:v10 errorHandler:v3];

  v6 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
    v6 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [GKDaemonProxy getGamedFiredUp];
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(v18, 8);

  return v8;
}

void __32__GKDaemonProxy_getGamedFiredUp__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
    v4 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __32__GKDaemonProxy_getGamedFiredUp__block_invoke_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
}

uint64_t __32__GKDaemonProxy_getGamedFiredUp__block_invoke_106(uint64_t result, void *a2)
{
  if ((*(*(*(result + 32) + 8) + 24) & 1) == 0)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __32__GKDaemonProxy_getGamedFiredUp__block_invoke_2;
    v2[3] = &unk_2785E04C0;
    v2[4] = *(result + 40);
    return [a2 getGamedFiredUpWithHandler:v2];
  }

  return result;
}

void __32__GKDaemonProxy_getGamedFiredUp__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
      v7 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __32__GKDaemonProxy_getGamedFiredUp__block_invoke_2_cold_1();
    }
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v5;
}

- (int)localPlayerAgeCategory
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
    v3 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [GKDaemonProxy localPlayerAgeCategory];
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __39__GKDaemonProxy_localPlayerAgeCategory__block_invoke;
  aBlock[3] = &unk_2785DFF00;
  aBlock[4] = &v25;
  v5 = _Block_copy(aBlock);
  v6 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
    v6 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [GKDaemonProxy localPlayerAgeCategory];
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v8 = [(GKServiceProxy *)self baseProxy];
  v9 = [v8 connection];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __39__GKDaemonProxy_localPlayerAgeCategory__block_invoke_109;
  v19[3] = &unk_2785E0538;
  v19[4] = &v25;
  v19[5] = &v29;
  v19[6] = &v20;
  [v9 gkPerformSynchronously:v19 errorHandler:v5];

  v10 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
    v10 = os_log_GKGeneral;
  }

  v12 = v10;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v16 = [MEMORY[0x277CCABB0] numberWithBool:*(v26 + 24)];
    v17 = [MEMORY[0x277CCABB0] numberWithBool:*(v21 + 24)];
    v18 = [MEMORY[0x277CCABB0] numberWithInt:*(v30 + 6)];
    *buf = 138412802;
    v34 = v16;
    v35 = 2112;
    v36 = v17;
    v37 = 2112;
    v38 = v18;
    _os_log_debug_impl(&dword_227904000, v12, OS_LOG_TYPE_DEBUG, "GKDaemonProxy localPlayerAgeCategory: errorOccurred = %@, gotCallback = %@, returning value = %@", buf, 0x20u);
  }

  v13 = *(v30 + 6);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void __39__GKDaemonProxy_localPlayerAgeCategory__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
    v4 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __39__GKDaemonProxy_localPlayerAgeCategory__block_invoke_cold_1();
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
}

void __39__GKDaemonProxy_localPlayerAgeCategory__block_invoke_109(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v4 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
      v4 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __39__GKDaemonProxy_localPlayerAgeCategory__block_invoke_109_cold_1();
    }

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __39__GKDaemonProxy_localPlayerAgeCategory__block_invoke_110;
    v6[3] = &unk_2785E0510;
    v7 = *(a1 + 40);
    [v3 localPlayerAgeCategoryWithCompletion:v6];
  }
}

void __39__GKDaemonProxy_localPlayerAgeCategory__block_invoke_110(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v3 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
    v3 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __39__GKDaemonProxy_localPlayerAgeCategory__block_invoke_110_cold_1(v3, a2);
  }
}

- (void)getAccountNameWithHandler:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"getAccountNameWithHandler: should not be called on GKDaemonProxy, use accountName instead"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/GKDaemonProxy.m"];
  v6 = [v5 lastPathComponent];
  v7 = [v3 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v4, "-[GKDaemonProxy getAccountNameWithHandler:]", objc_msgSend(v6, "UTF8String"), 650];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v7}];
}

- (void)getAuthenticatedPlayerIDWithHandler:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"getAuthenticatedPlayerIDWithHandler: should not be called on GKDaemonProxy, use authenticedPlayerID instead"];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/GKDaemonProxy.m"];
  v6 = [v5 lastPathComponent];
  v7 = [v3 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v4, "-[GKDaemonProxy getAuthenticatedPlayerIDWithHandler:]", objc_msgSend(v6, "UTF8String"), 655];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v7}];
}

- (void)gameServicesRemoteCall:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  invocationQueue = self->_invocationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__GKDaemonProxy_gameServicesRemoteCall_completionHandler___block_invoke;
  block[3] = &unk_2785DE478;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(invocationQueue, block);
}

void __58__GKDaemonProxy_gameServicesRemoteCall_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 88);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__GKDaemonProxy_gameServicesRemoteCall_completionHandler___block_invoke_2;
  v7[3] = &unk_2785DE008;
  v8 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v7];
  if (v3)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __58__GKDaemonProxy_gameServicesRemoteCall_completionHandler___block_invoke_3;
    v5[3] = &unk_2785E0560;
    v4 = *(a1 + 40);
    v6 = *(a1 + 48);
    [v3 gameServicesRemoteCall:v4 completionHandler:v5];
  }
}

- (void)beginNetworkActivity
{
  v2 = [(GKDaemonProxy *)self networkActivityIndicatorDelegate];
  [v2 beginNetworkActivity];
}

- (void)endNetworkActivity
{
  v2 = [(GKDaemonProxy *)self networkActivityIndicatorDelegate];
  [v2 endNetworkActivity];
}

- (void)resetNetworkActivity
{
  v2 = [(GKDaemonProxy *)self networkActivityIndicatorDelegate];
  [v2 resetNetworkActivity];
}

- (void)setPreferencesValues:(id)a3
{
  v3 = a3;
  v4 = +[GKPreferences shared];
  [v4 setOverrideValues:v3];
}

- (void)setCurrentGame:(id)a3 serverEnvironment:(int64_t)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__GKDaemonProxy_setCurrentGame_serverEnvironment_reply___block_invoke;
  block[3] = &unk_2785E0498;
  v13 = v8;
  v14 = a4;
  v12 = v7;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __56__GKDaemonProxy_setCurrentGame_serverEnvironment_reply___block_invoke(void *a1)
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 _gkIsAnyOverlayUI];

  if ((v3 & 1) == 0)
  {
    [GKGame setCurrentGameFromInternal:a1[4] serverEnvironment:a1[6]];
  }

  v4 = *(a1[5] + 16);

  return v4();
}

- (void)authenticatedPlayersDidChange:(id)a3 authenticatingBundleID:(id)a4 reply:(id)a5
{
  v7 = a4;
  v8 = a5;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__GKDaemonProxy_authenticatedPlayersDidChange_authenticatingBundleID_reply___block_invoke;
  v11[3] = &unk_2785DE540;
  v12 = v7;
  v13 = v8;
  v9 = v8;
  v10 = v7;
  [GKLocalPlayer authenticatedLocalPlayersDidChange:a3 complete:v11];
}

uint64_t __76__GKDaemonProxy_authenticatedPlayersDidChange_authenticatingBundleID_reply___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if (([*(a1 + 32) isEqualToString:@"com.apple.GameCenterUI.GameCenterHostingContainer"] & 1) != 0 || objc_msgSend(MEMORY[0x277CCA8D8], "_gkBundleIdentifierIsAnyOverlayUI:", *(a1 + 32)))
  {
    v2 = [MEMORY[0x277CCA8D8] _gkMainBundleIsGameCenterSystemProcess];
    v3 = +[GKLocalPlayer local];
    v4 = objc_opt_respondsToSelector();

    v5 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
      v5 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = MEMORY[0x277CCABB0];
      v9 = v5;
      v10 = [v8 numberWithBool:v2];
      v11 = [MEMORY[0x277CCABB0] numberWithBool:v4 & 1];
      v15 = 138412802;
      v16 = v7;
      v17 = 2112;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "authenticatedPlayersDidChange - player authenticated from %@ (GC system process? %@, update local player? %@)", &v15, 0x20u);
    }

    if (!(v2 & 1 | ((v4 & 1) == 0)))
    {
      v12 = dispatch_get_global_queue(0, 0);
      dispatch_async(v12, &__block_literal_global_128);
    }
  }

  result = (*(*(a1 + 40) + 16))();
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void __76__GKDaemonProxy_authenticatedPlayersDidChange_authenticatingBundleID_reply___block_invoke_126()
{
  v0 = +[GKLocalPlayer local];
  [v0 authenticationDidCompleteWithError:0 signInOrigin:6];
}

- (void)respondedToNearbyInvite:(id)a3
{
  v4 = a3;
  v5 = [(GKDaemonProxy *)self matchmaker];
  [v5 localPlayerRespondedToNearbyInvite:v4];
}

- (void)metricsValuesChanged
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"GKMetricsValuesChangedNotification" object:self];
}

- (void)friendRequestSelected:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(GKDaemonProxy *)self dataUpdateDelegate];
  if (v5)
  {
    v6 = v5;
    v7 = [(GKDaemonProxy *)self dataUpdateDelegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __39__GKDaemonProxy_friendRequestSelected___block_invoke;
      block[3] = &unk_2785DEBA8;
      block[4] = self;
      v24 = v4;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [(NSHashTable *)self->_dataUpdateDelegates _gkSafeCopy];
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    v13 = MEMORY[0x277D85CD0];
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v19 + 1) + 8 * v14);
        if (objc_opt_respondsToSelector())
        {
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __39__GKDaemonProxy_friendRequestSelected___block_invoke_2;
          v17[3] = &unk_2785DEBA8;
          v17[4] = v15;
          v18 = v4;
          dispatch_async(v13, v17);
        }

        ++v14;
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __39__GKDaemonProxy_friendRequestSelected___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataUpdateDelegate];
  [v2 friendRequestSelected:*(a1 + 40)];
}

- (void)deliverEncodedGameActivityInstance:(id)a3
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
    [GKDaemonProxy deliverEncodedGameActivityInstance:];
  }

  v7 = [(GKDaemonProxy *)self gameActivityEventHandler];
  [v7 deliverEncodedGameActivityInstance:v4];
}

- (void)receivedChallengeSelected:(id)a3
{
  v3 = a3;
  v4 = +[GKChallengeEventHandler challengeEventHandler];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__GKDaemonProxy_receivedChallengeSelected___block_invoke;
  v7[3] = &unk_2785DEBA8;
  v8 = v4;
  v9 = v3;
  v5 = v3;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

void __43__GKDaemonProxy_receivedChallengeSelected___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 receivedChallengeSelected:*(a1 + 40)];
  }

  v5 = +[GKLocalPlayer localPlayer];
  v3 = [GKChallenge challengeForInternalRepresentation:*(a1 + 40)];
  v4 = [v5 eventEmitter];
  [v4 player:v5 wantsToPlayChallenge:v3];
}

- (void)dispatchCompletedChallenge:(id)a3
{
  v3 = a3;
  v4 = +[GKLocalPlayer localPlayer];
  v5 = [v3 receivingPlayer];
  v6 = [v5 isEqual:0];

  if (v6)
  {
    v7 = [v3 receivingPlayer];
    v8 = [GKPlayer canonicalizedPlayerForInternal:v7];

    v9 = v4;
  }

  else
  {
    v8 = v4;
    v10 = [v3 receivingPlayer];
    v9 = [GKPlayer canonicalizedPlayerForInternal:v10];
  }

  v11 = [GKChallenge challengeForInternalRepresentation:v3];
  if ([v8 isEqual:v4])
  {
    v12 = v18;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v13 = __44__GKDaemonProxy_dispatchCompletedChallenge___block_invoke;
    v14 = v9;
  }

  else
  {
    v12 = v17;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v13 = __44__GKDaemonProxy_dispatchCompletedChallenge___block_invoke_2;
    v14 = v8;
  }

  v12[2] = v13;
  v12[3] = &unk_2785DDB40;
  v12[4] = v4;
  v12[5] = v11;
  v15 = v14;
  v12[6] = v15;
  v16 = v11;
  [v15 updateScopedIDs:v12];
}

void __44__GKDaemonProxy_dispatchCompletedChallenge___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) eventEmitter];
  [v2 player:*(a1 + 32) didCompleteChallenge:*(a1 + 40) issuedByFriend:*(a1 + 48)];
}

void __44__GKDaemonProxy_dispatchCompletedChallenge___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) eventEmitter];
  [v2 player:*(a1 + 32) issuedChallengeWasCompleted:*(a1 + 40) byFriend:*(a1 + 48)];
}

- (void)completedChallengeSelected:(id)a3
{
  v4 = a3;
  v5 = +[GKChallengeEventHandler challengeEventHandler];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__GKDaemonProxy_completedChallengeSelected___block_invoke;
  block[3] = &unk_2785DDB40;
  v9 = v5;
  v10 = v4;
  v11 = self;
  v6 = v4;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __44__GKDaemonProxy_completedChallengeSelected___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    [v2 completedChallengeSelected:a1[5]];
  }

  v4 = a1[5];
  v3 = a1[6];

  return [v3 dispatchCompletedChallenge:v4];
}

- (void)challengeReceived:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[GKChallengeEventHandler challengeEventHandler];
  v5 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v6 = GKOSLoggers();
    v5 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    _os_log_impl(&dword_227904000, v5, OS_LOG_TYPE_INFO, "Told by gamed we received a challenge %@, telling the handler %@", buf, 0x16u);
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __35__GKDaemonProxy_challengeReceived___block_invoke;
  v10[3] = &unk_2785DEBA8;
  v11 = v4;
  v12 = v3;
  v7 = v3;
  v8 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __35__GKDaemonProxy_challengeReceived___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [v2 challengeReceived:*(a1 + 40)];
  }

  v5 = +[GKLocalPlayer localPlayer];
  v3 = [GKChallenge challengeForInternalRepresentation:*(a1 + 40)];
  v4 = [v5 eventEmitter];
  [v4 player:v5 didReceiveChallenge:v3];
}

- (void)challengeCompleted:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[GKChallengeEventHandler challengeEventHandler];
  v6 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
    v6 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v16 = v4;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "Told by gamed we completed a challenge %@, telling the handler %@", buf, 0x16u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__GKDaemonProxy_challengeCompleted___block_invoke;
  block[3] = &unk_2785DDB40;
  v12 = v5;
  v13 = v4;
  v14 = self;
  v8 = v4;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __36__GKDaemonProxy_challengeCompleted___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    [v2 challengeCompleted:a1[5]];
  }

  v4 = a1[5];
  v3 = a1[6];

  return [v3 dispatchCompletedChallenge:v4];
}

- (void)fetchTurnBasedData
{
  v2 = +[GKLocalPlayer localPlayer];
  [v2 fetchTurnBasedEvent];
}

- (void)acceptMultiplayerGameInvite
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__GKDaemonProxy_acceptMultiplayerGameInvite__block_invoke;
  block[3] = &unk_2785DD760;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __44__GKDaemonProxy_acceptMultiplayerGameInvite__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) matchmaker];
  [v2 localPlayerAcceptedGameInvite];

  v3 = [*(a1 + 32) matchmaker];
  [v3 lookForInvite];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = +[GKLocalPlayer localPlayer];
  [v5 postNotificationName:@"GKAcceptedGameInvite" object:v4];
}

- (void)acceptInviteWithNotification:(id)a3
{
  v3 = a3;
  v4 = +[GKLocalPlayer localPlayer];
  [v4 inviteeAcceptedGameInviteWithNotification:v3];
}

- (void)declineInviteWithNotification:(id)a3
{
  v3 = a3;
  v4 = +[GKLocalPlayer localPlayer];
  [v4 inviteeDeclinedGameInviteWithNotification:v3];
}

- (void)updateInviteWithNotification:(id)a3
{
  v3 = a3;
  v4 = +[GKLocalPlayer localPlayer];
  [v4 inviteeUpdateGameInviteWithNotification:v3];
}

- (void)cancelInviteWithNotification:(id)a3
{
  v3 = a3;
  v4 = +[GKLocalPlayer localPlayer];
  [v4 cancelInviteWithNotification:v3];
}

- (void)cancelGameInvite:(id)a3
{
  v3 = a3;
  v4 = +[GKLocalPlayer localPlayer];
  [v4 cancelGameInvite:v3];
}

- (void)presentBannerWithNotification:(id)a3
{
  v3 = a3;
  v4 = +[GKLocalPlayer local];
  [v4 presentBannerWithNotification:v3];
}

- (void)relayPushNotification:(id)a3
{
  v3 = MEMORY[0x277CCAB98];
  v4 = a3;
  v5 = [v3 defaultCenter];
  [v5 postNotificationName:@"GKRelayPushNotification" object:0 userInfo:v4];
}

- (void)nearbyPlayerFoundForPlayerID:(id)a3 deviceID:(id)a4 discoveryInfo:(id)a5
{
  v6 = [(GKDaemonProxy *)self userInfoForPlayerID:a3 deviceID:a4 data:0 discoveryInfo:a5];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"GKNearbyPlayerFoundNotification" object:0 userInfo:v6];
}

- (void)nearbyPlayerLostForPlayerID:(id)a3 deviceID:(id)a4
{
  v5 = [(GKDaemonProxy *)self userInfoForPlayerID:a3 deviceID:a4 data:0 discoveryInfo:0];
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"GKNearbyPlayerLostNotification" object:0 userInfo:v5];
}

- (void)nearbyDataReceivedForPlayerID:(id)a3 deviceID:(id)a4 data:(id)a5
{
  v6 = [(GKDaemonProxy *)self userInfoForPlayerID:a3 deviceID:a4 data:a5 discoveryInfo:0];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"GKNearbyDataReceivedNotification" object:0 userInfo:v6];
}

- (id)userInfoForPlayerID:(id)a3 deviceID:(id)a4 data:(id)a5 discoveryInfo:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [MEMORY[0x277CBEB38] dictionary];
  v14 = v13;
  if (v9)
  {
    [v13 setObject:v9 forKeyedSubscript:@"playerID"];
  }

  if (v10)
  {
    [v14 setObject:v10 forKeyedSubscript:@"deviceID"];
  }

  if (v11)
  {
    [v14 setObject:v11 forKeyedSubscript:@"data"];
  }

  if (v12)
  {
    [v14 setObject:v12 forKeyedSubscript:@"discoveryInfo"];
  }

  return v14;
}

- (id)localizedMessageFromDictionary:(id)a3 forBundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__10;
  v22 = __Block_byref_object_dispose__10;
  v23 = 0;
  if (v6 && v7)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKDaemonProxy.m", 1000, "-[GKDaemonProxy localizedMessageFromDictionary:forBundleID:]"];
    v11 = [GKDispatchGroup dispatchGroupWithName:v10];

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __60__GKDaemonProxy_localizedMessageFromDictionary_forBundleID___block_invoke;
    v14[3] = &unk_2785E0588;
    v14[4] = self;
    v15 = v6;
    v16 = v8;
    v17 = &v18;
    [v11 perform:v14];
    [v11 wait];

    v9 = v19[5];
  }

  v12 = v9;
  _Block_object_dispose(&v18, 8);

  return v12;
}

void __60__GKDaemonProxy_localizedMessageFromDictionary_forBundleID___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = *(a1[4] + 88);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__GKDaemonProxy_localizedMessageFromDictionary_forBundleID___block_invoke_2;
  v14[3] = &unk_2785DE008;
  v5 = v3;
  v15 = v5;
  v6 = [v4 remoteObjectProxyWithErrorHandler:v14];
  v7 = a1[5];
  v8 = a1[6];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__GKDaemonProxy_localizedMessageFromDictionary_forBundleID___block_invoke_153;
  v11[3] = &unk_2785E03D8;
  v9 = a1[7];
  v12 = v5;
  v13 = v9;
  v10 = v5;
  [v6 localizedMessageFromDictionary:v7 forBundleID:v8 handler:v11];
}

void __60__GKDaemonProxy_localizedMessageFromDictionary_forBundleID___block_invoke_2(uint64_t a1, void *a2)
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
      __60__GKDaemonProxy_localizedMessageFromDictionary_forBundleID___block_invoke_2_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __60__GKDaemonProxy_localizedMessageFromDictionary_forBundleID___block_invoke_153(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 32) + 16))();
}

- (void)resetLoginCancelCount
{
  invocationQueue = self->_invocationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__GKDaemonProxy_resetLoginCancelCount__block_invoke;
  block[3] = &unk_2785DD760;
  block[4] = self;
  dispatch_async(invocationQueue, block);
}

void __38__GKDaemonProxy_resetLoginCancelCount__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 88) remoteObjectProxyWithErrorHandler:&__block_literal_global_155];
  if (v1)
  {
    v2 = v1;
    [v1 resetLoginCancelCount];
    v1 = v2;
  }
}

void __38__GKDaemonProxy_resetLoginCancelCount__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    if (!os_log_GKGeneral)
    {
      v3 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      __38__GKDaemonProxy_resetLoginCancelCount__block_invoke_2_cold_1();
    }
  }
}

- (void)setBadgeCount:(unint64_t)a3 forType:(unint64_t)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = [(GKDaemonProxy *)self dataUpdateDelegate];
  if (v7)
  {
    v8 = v7;
    v9 = [(GKDaemonProxy *)self dataUpdateDelegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = [(GKDaemonProxy *)self dataUpdateDelegate];
      [v11 setBadgeCount:a3 forType:a4];
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = [(NSHashTable *)self->_dataUpdateDelegates _gkSafeCopy];
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * v16);
        if (objc_opt_respondsToSelector())
        {
          [v17 setBadgeCount:a3 forType:a4];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __53__GKDaemonProxy_refreshContentsForDataType_userInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataUpdateDelegate];
  [v2 refreshContentsForDataType:*(a1 + 48) userInfo:*(a1 + 40)];
}

- (BOOL)isRefreshDataTypeEligibleForNotification:(unsigned int)a3
{
  if (a3 >= 0x1B)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      [GKDaemonProxy isRefreshDataTypeEligibleForNotification:];
    }

    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = 0x33FFFFFu >> a3;
  }

  return v3 & 1;
}

- (void)requestSandboxExtension:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  v5 = [v4 bundlePath];

  v6 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
    v6 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = v5;
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "daemon requested sandbox extension for: %@", &v13, 0xCu);
  }

  [v5 UTF8String];
  v8 = sandbox_extension_issue_file();
  if (v8)
  {
    v9 = v8;
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
    v3[2](v3, v10);

    free(v9);
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      [GKDaemonProxy requestSandboxExtension:];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)replyQueueForRequestSelector:(SEL)a3
{
  v4 = MEMORY[0x277D85CD0];
  if (sel_isEqual(sel_getAuthenticatedPlayerIDWithHandler_, a3) || sel_isEqual(sel_getAccountNameWithHandler_, a3) || sel_isEqual(sel_getAuthenticatedPlayerInfo_, a3) || sel_isEqual(sel_getAuthenticatedPlayerCredential_, a3) || sel_isEqual(sel_getAuthenticatedLocalPlayersWithStatus_handler_, a3) || sel_isEqual(sel_getConcernsForPlayer_handler_, a3) || sel_isEqual(sel_getPreferenceForKey_handler_, a3) || sel_isEqual(sel_localizedMessageFromDictionary_forBundleID_handler_, a3))
  {
    if (replyQueueForRequestSelector__onceToken != -1)
    {
      [GKDaemonProxy replyQueueForRequestSelector:];
    }

    v5 = replyQueueForRequestSelector__sPrivateQueue;
  }

  else
  {
    v5 = MEMORY[0x277D85CD0];
  }

  return v5;
}

uint64_t __46__GKDaemonProxy_replyQueueForRequestSelector___block_invoke()
{
  replyQueueForRequestSelector__sPrivateQueue = dispatch_queue_create("com.apple.GameKit.GKDaemonProxy.privateQueue", MEMORY[0x277D85CD8]);

  return MEMORY[0x2821F96F8]();
}

- (void)connection:(id)a3 handleInvocation:(id)a4 isReply:(BOOL)a5
{
  v5 = a5;
  v43 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [a3 gkIsSynchronous];
  if (v5)
  {
    v10 = v9;
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v11 = MEMORY[0x277CCACA8];
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"NSInvocation should response to userInfo, please file a radar against Foundation"];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/GKDaemonProxy.m"];
      v14 = [v13 lastPathComponent];
      v15 = [v11 stringWithFormat:@"%@ ([invocation respondsToSelector:@selector(userInfo)])\n[%s (%s:%d)]", v12, "-[GKDaemonProxy connection:handleInvocation:isReply:]", objc_msgSend(v14, "UTF8String"), 1163];

      [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v15}];
    }

    v16 = [v8 userInfo];
    v17 = [v16 objectForKey:*MEMORY[0x277CCAEE0]];

    v18 = [v8 userInfo];
    v19 = [v18 objectForKey:*MEMORY[0x277CCAEE8]];

    if (v19)
    {
      if (!os_log_GKGeneral)
      {
        v20 = GKOSLoggers();
      }

      v21 = os_log_GKPerf;
      if (os_log_type_enabled(os_log_GKPerf, OS_LOG_TYPE_INFO))
      {
        v22 = v21;
        Current = CFAbsoluteTimeGetCurrent();
        v24 = [v19 objectForKey:@"timestamp"];
        [v24 doubleValue];
        *buf = 138412546;
        v40 = v17;
        v41 = 2048;
        v42 = Current - v25;
        _os_log_impl(&dword_227904000, v22, OS_LOG_TYPE_INFO, "Received reply for request %@ duration(%fs)", buf, 0x16u);
      }

      v26 = +[GKPreferences shared];
      v27 = [v26 isInternalBuild];

      if (v27)
      {
        v28 = [v19 objectForKey:@"requestID"];
        if (v28)
        {
          [_TtC20GameCenterFoundation23GKDaemonProxySignposter endWithRequestId:v28];
        }
      }
    }

    v29 = [(GKDaemonProxy *)self replyQueueForRequestSelector:NSSelectorFromString(v17)];
    [v8 retainArguments];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __53__GKDaemonProxy_connection_handleInvocation_isReply___block_invoke;
    aBlock[3] = &unk_2785DEBA8;
    v30 = v8;
    v37 = v30;
    v38 = self;
    v31 = _Block_copy(aBlock);
    v32 = v31;
    if (v10)
    {
      v31[2](v31);
    }

    else
    {
      dispatch_async(v29, v31);
    }

    v33 = [v19 objectForKey:@"requestID"];
    v34 = [v19 objectForKey:@"subproxy"];
    [v34 replyToDuplicatesForRequest:v33 withInvocation:v30 queue:v29];
  }

  else
  {
    [v8 _gkInvokeOnce];
  }

  v35 = *MEMORY[0x277D85DE8];
}

intptr_t __53__GKDaemonProxy_connection_handleInvocation_isReply___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _gkInvokeOnce];
  v2 = *(*(a1 + 40) + 72);

  return dispatch_semaphore_signal(v2);
}

- (GKDaemonProxyNetworkActivityIndicatorDelegate)networkActivityIndicatorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_networkActivityIndicatorDelegate);

  return WeakRetained;
}

- (GKDaemonProxyDataUpdateDelegate)dataUpdateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_dataUpdateDelegate);

  return WeakRetained;
}

void __72__GKDaemonProxy_messagesDidReceiveGameCenterURL_senderHandle_contactID___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_227904000, v0, v1, "GKDaemonProxy->messagesDidReceiveGameCenterURL: error while getting the remoteObjectProxyWithErrorHandler:%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __28__GKDaemonProxy_setHostPID___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = a1;
  CFAbsoluteTimeGetCurrent();
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_4_0(&dword_227904000, v2, v3, "%s elapsed seconds:%g", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __28__GKDaemonProxy_setHostPID___block_invoke_64_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_227904000, v0, v1, "GKDaemonProxy->setHostPID: error while getting the remoteObjectProxyWithErrorHandler:%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __51__GKDaemonProxy_setTestGame_protocolVersion_reply___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = a1;
  CFAbsoluteTimeGetCurrent();
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_4_0(&dword_227904000, v2, v3, "%s elapsed seconds:%g", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __51__GKDaemonProxy_setTestGame_protocolVersion_reply___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_227904000, v0, v1, "GKDaemonProxy->setTestGame: error while getting the remoteObjectProxyWithHandler:%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)init
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getGamedFiredUp
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __32__GKDaemonProxy_getGamedFiredUp__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __32__GKDaemonProxy_getGamedFiredUp__block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)localPlayerAgeCategory
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __39__GKDaemonProxy_localPlayerAgeCategory__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __39__GKDaemonProxy_localPlayerAgeCategory__block_invoke_109_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __39__GKDaemonProxy_localPlayerAgeCategory__block_invoke_110_cold_1(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v5 = [v3 numberWithInt:a2];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_227904000, v4, OS_LOG_TYPE_DEBUG, "GKDaemonProxy localPlayerAgeCategory: callback value = %@", v7, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)deliverEncodedGameActivityInstance:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __60__GKDaemonProxy_localizedMessageFromDictionary_forBundleID___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_227904000, v0, v1, "GKDaemonProxy->localizedMessageFromDictionary:forBundleID: error while getting the remoteObjectProxyWithHandler:%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __38__GKDaemonProxy_resetLoginCancelCount__block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_227904000, v0, v1, "GKDaemonProxy->resetLoginCancelCount error while getting the remoteObjectProxyWithHandler:%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)requestSandboxExtension:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0(&dword_227904000, v0, v1, "failed to create sandbox extension for %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end