@interface GKTransportContext
+ (id)secureCodedPropertyKeys;
+ (id)syncQueue;
- (BOOL)allowEarlyConnection;
- (BOOL)inviteeShouldAwaitInviteUpdate;
- (BOOL)shouldDelayConnectionForMatchResponse:(id)response;
- (BOOL)shouldFilterGuestWhenSendingToAll;
- (BOOL)shouldSendInviteUpdate;
- (BOOL)supportsTransportRequiredInTheInvite:(id)invite;
- (BOOL)supportsTransportVersion:(id)version;
- (BOOL)validTransportSelected;
- (GKTransportContext)initWithLocalPlayerID:(id)d localPseudonym:(id)pseudonym sessionID:(id)iD;
- (GKTransportContext)initWithSupportedTransports:(id)transports;
- (GKTransportContext)initWithValidTransports:(id)transports localPlayerID:(id)d;
- (NSArray)representedPlayerIDs;
- (NSNumber)defaultInviteVersionFromMinimumSupportedTransportVersion;
- (id)formAnInviteUpdate;
- (id)gameParticipantsServerRepresentationsWithSelfPseudonym:(id)pseudonym;
- (id)supportedTransportVersions;
- (id)updatedParticipantsAfterRemoving:(id)removing fromOldParticipants:(id)participants;
- (void)addGameParticipants:(id)participants;
- (void)addLobbyParticipants:(id)participants;
- (void)addTTRMultiplayerParticipant:(id)participant;
- (void)enrichConnectionDictionary:(id)dictionary inviteResponse:(id)response;
- (void)enrichServerRequest:(id)request andInviteResponse:(id)response;
- (void)enrichServerRequest:(id)request withMatchRequest:(id)matchRequest selfPseudonym:(id)pseudonym;
- (void)enrichServerRequestWithConnectionData:(id)data;
- (void)performUpdateSync:(id)sync;
- (void)removeGameParticipantsIfExists:(id)exists;
- (void)removeLobbyParticipantsIfExists:(id)exists;
- (void)selectDefaultTransport;
- (void)selectTransportWith:(id)with;
- (void)updateAfterAcceptingRemoveInvite:(id)invite acceptedResponse:(id)response;
- (void)updateAfterInviteeAcceptedUserInfo:(id)info;
- (void)updateForInviteAcceptWithConnectionData:(id)data;
- (void)updateForInviteInitiationWithOnlineConnectionData:(id)data;
- (void)updateForLegacyNearbyInvite;
- (void)updateForMatchRequestWithConnectionData:(id)data;
- (void)updateForMatchResponse:(id)response serverHosted:(BOOL)hosted;
- (void)updateWithForceEnabledTransports:(id)transports forceDisabledTransports:(id)disabledTransports andHealthMonitorEnabled:(BOOL)enabled;
- (void)updateWithInfoFromTransport:(id)transport;
- (void)updateWithInviteInitiateResponse:(id)response;
- (void)updateWithInviteUpdateInfo:(id)info;
@end

@implementation GKTransportContext

- (GKTransportContext)initWithSupportedTransports:(id)transports
{
  transportsCopy = transports;
  if (+[GKEntitledContextProvider hasBooleanPublicGameCenterEntitlement])
  {
    v5 = [(GKTransportContext *)self initWithValidTransports:transportsCopy localPlayerID:0];
  }

  else
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __50__GKTransportContext_initWithSupportedTransports___block_invoke;
    v9[3] = &unk_2785E11B0;
    v10 = v6;
    v7 = v6;
    [transportsCopy enumerateObjectsUsingBlock:v9];
    v5 = [(GKTransportContext *)self initWithValidTransports:v7 localPlayerID:0];
  }

  return v5;
}

void __50__GKTransportContext_initWithSupportedTransports___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 version] == 2)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    v5 = os_log_GKFastSync;
    if (os_log_type_enabled(os_log_GKFastSync, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_227904000, v5, OS_LOG_TYPE_INFO, "Removing FastSync from supported transports since this game doesn't have Game Center entitlements.", v6, 2u);
    }
  }

  else
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (GKTransportContext)initWithValidTransports:(id)transports localPlayerID:(id)d
{
  transportsCopy = transports;
  dCopy = d;
  v17.receiver = self;
  v17.super_class = GKTransportContext;
  v10 = [(GKTransportContext *)&v17 init];
  if (v10)
  {
    playerID = dCopy;
    if (!dCopy)
    {
      v4 = +[GKLocalPlayer local];
      internal = [v4 internal];
      playerID = [internal playerID];
    }

    objc_storeStrong(&v10->_localPlayerID, playerID);
    if (!dCopy)
    {
    }

    v12 = [transportsCopy copy];
    supportedTransports = v10->_supportedTransports;
    v10->_supportedTransports = v12;

    v14 = objc_alloc_init(GKMultiplayerDaemonProxyHelper);
    daemonProxy = v10->_daemonProxy;
    v10->_daemonProxy = v14;
  }

  return v10;
}

- (GKTransportContext)initWithLocalPlayerID:(id)d localPseudonym:(id)pseudonym sessionID:(id)iD
{
  pseudonymCopy = pseudonym;
  iDCopy = iD;
  dCopy = d;
  v12 = [[GKSupportedTransport alloc] initWithVersionNumber:&unk_283B333D0];
  v13 = [MEMORY[0x277CBEB98] setWithObject:v12];
  v14 = [(GKTransportContext *)self initWithValidTransports:v13 localPlayerID:dCopy];

  if (v14)
  {
    objc_storeStrong(&v14->_selectedTransport, v12);
    objc_storeStrong(&v14->_sessionID, iD);
    objc_storeStrong(&v14->_pseudonym, pseudonym);
  }

  return v14;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_15 != -1)
  {
    +[GKTransportContext secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_15;

  return v3;
}

void __45__GKTransportContext_secureCodedPropertyKeys__block_invoke()
{
  v18[14] = *MEMORY[0x277D85DE8];
  v17[0] = @"cdxTicket";
  v18[0] = objc_opt_class();
  v17[1] = @"matchID";
  v18[1] = objc_opt_class();
  v17[2] = @"connectionData";
  v18[2] = objc_opt_class();
  v17[3] = @"sessionID";
  v18[3] = objc_opt_class();
  v17[4] = @"peerDictionaries";
  v0 = +[GKServiceInterface plistClasses];
  v18[4] = v0;
  v17[5] = @"pseudonym";
  v18[5] = objc_opt_class();
  v17[6] = @"localPlayerID";
  v18[6] = objc_opt_class();
  v17[7] = @"selectedTransport";
  v18[7] = objc_opt_class();
  v17[8] = @"sessionToken";
  v18[8] = objc_opt_class();
  v17[9] = @"gameParticipants";
  v1 = MEMORY[0x277CBEB98];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  v18[9] = v3;
  v17[10] = @"lobbyParticipants";
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v18[10] = v6;
  v17[11] = @"playerTokenMap";
  v7 = +[GKServiceInterface plistClasses];
  v18[11] = v7;
  v17[12] = @"supportedTransports";
  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v18[12] = v10;
  v17[13] = @"playersAndPushTokens";
  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v18[13] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:14];

  v15 = secureCodedPropertyKeys_sSecureCodedKeys_15;
  secureCodedPropertyKeys_sSecureCodedKeys_15 = v14;

  v16 = *MEMORY[0x277D85DE8];
}

+ (id)syncQueue
{
  if (syncQueue_onceToken_1 != -1)
  {
    +[GKTransportContext syncQueue];
  }

  v3 = syncQueue_sSyncQueue_1;

  return v3;
}

void __31__GKTransportContext_syncQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.GameKit.transportContext.updateQueue", v2);
  v1 = syncQueue_sSyncQueue_1;
  syncQueue_sSyncQueue_1 = v0;
}

- (void)performUpdateSync:(id)sync
{
  block = sync;
  syncQueue = [objc_opt_class() syncQueue];
  v4 = dispatch_get_current_queue();

  if (v4 == syncQueue)
  {
    v5 = MEMORY[0x277CCACA8];
    label = dispatch_queue_get_label(syncQueue);
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v8 = [v5 stringWithFormat:@"%s invoked on the same queue(%s, would deadlock at %@"), "-[GKTransportContext performUpdateSync:]", label, callStackSymbols];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/Transport/GKTransportContext.m"];
    lastPathComponent = [v9 lastPathComponent];
    v11 = [v5 stringWithFormat:@"%@ (dispatch_get_current_queue() != queue)\n[%s (%s:%d)]", v8, "-[GKTransportContext performUpdateSync:]", objc_msgSend(lastPathComponent, "UTF8String"), 116];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v11}];
  }

  dispatch_sync(syncQueue, block);
}

- (BOOL)allowEarlyConnection
{
  selectedTransport = [(GKTransportContext *)self selectedTransport];
  v3 = [selectedTransport version] == 2;

  return v3;
}

- (BOOL)inviteeShouldAwaitInviteUpdate
{
  selectedTransport = [(GKTransportContext *)self selectedTransport];
  v3 = [selectedTransport version] == 2;

  return v3;
}

- (BOOL)shouldFilterGuestWhenSendingToAll
{
  selectedTransport = [(GKTransportContext *)self selectedTransport];
  v3 = [selectedTransport version] != 2;

  return v3;
}

- (BOOL)shouldDelayConnectionForMatchResponse:(id)response
{
  v41 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = +[GKPreferences shared];
  multiplayerQRAllocationDelayDisabled = [v5 multiplayerQRAllocationDelayDisabled];

  if ((multiplayerQRAllocationDelayDisabled & 1) != 0 || (-[GKTransportContext selectedTransport](self, "selectedTransport"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 version], v7, v8 != 2))
  {
    LOBYTE(v27) = 0;
  }

  else
  {
    v9 = [MEMORY[0x277CBEB58] set];
    pseudonym = [(GKTransportContext *)self pseudonym];

    if (pseudonym)
    {
      selfCopy = self;
      pseudonym2 = [(GKTransportContext *)self pseudonym];
      [v9 addObject:pseudonym2];

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v35 = responseCopy;
      matches = [responseCopy matches];
      v13 = [matches countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v37;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v37 != v15)
            {
              objc_enumerationMutation(matches);
            }

            v17 = *(*(&v36 + 1) + 8 * i);
            v18 = [v17 objectForKey:@"client-data"];
            v19 = [v18 objectForKey:@"ps"];
            if (!v19)
            {
              if (!os_log_GKGeneral)
              {
                v28 = GKOSLoggers();
              }

              v29 = os_log_GKMatch;
              responseCopy = v35;
              if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
              {
                [(GKTransportContext *)v17 shouldDelayConnectionForMatchResponse:v29];
              }

              goto LABEL_27;
            }

            v20 = v19;
            [v9 addObject:v19];
          }

          v14 = [matches countByEnumeratingWithState:&v36 objects:v40 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      allObjects = [v9 allObjects];
      v22 = [allObjects sortedArrayUsingComparator:&__block_literal_global_81_0];

      if (!os_log_GKGeneral)
      {
        v23 = GKOSLoggers();
      }

      v24 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
      {
        [(GKTransportContext *)v22 shouldDelayConnectionForMatchResponse:v24, selfCopy];
      }

      pseudonym3 = [(GKTransportContext *)selfCopy pseudonym];
      firstObject = [v22 firstObject];
      v27 = [pseudonym3 isEqualToString:firstObject] ^ 1;

      responseCopy = v35;
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v30 = GKOSLoggers();
      }

      v31 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
      {
        [GKTransportContext shouldDelayConnectionForMatchResponse:v31];
      }

LABEL_27:
      LOBYTE(v27) = 0;
    }
  }

  v32 = *MEMORY[0x277D85DE8];
  return v27;
}

- (BOOL)validTransportSelected
{
  selectedTransport = [(GKTransportContext *)self selectedTransport];
  if (selectedTransport)
  {
    selectedTransport2 = [(GKTransportContext *)self selectedTransport];
    v5 = [selectedTransport2 version] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)supportedTransportVersions
{
  v17[1] = *MEMORY[0x277D85DE8];
  selectedTransport = [(GKTransportContext *)self selectedTransport];
  if (selectedTransport && (v4 = selectedTransport, -[GKTransportContext selectedTransport](self, "selectedTransport"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 version], v5, v4, v6))
  {
    v7 = MEMORY[0x277CCABB0];
    selectedTransport2 = [(GKTransportContext *)self selectedTransport];
    v9 = [v7 numberWithInteger:{objc_msgSend(selectedTransport2, "version")}];
    v17[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
    supportedTransports = [(GKTransportContext *)self supportedTransports];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __48__GKTransportContext_supportedTransportVersions__block_invoke;
    v15[3] = &unk_2785E11B0;
    v10 = array;
    v16 = v10;
    [supportedTransports enumerateObjectsUsingBlock:v15];

    selectedTransport2 = v16;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

void __48__GKTransportContext_supportedTransportVersions__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a2, "version")}];
  [v2 addObject:v3];
}

- (NSNumber)defaultInviteVersionFromMinimumSupportedTransportVersion
{
  supportedTransportVersions = [(GKTransportContext *)self supportedTransportVersions];
  v3 = [supportedTransportVersions valueForKeyPath:@"@min.self"];

  return v3;
}

- (BOOL)supportsTransportRequiredInTheInvite:(id)invite
{
  inviteCopy = invite;
  transportVersionToUse = [inviteCopy transportVersionToUse];
  integerValue = [transportVersionToUse integerValue];

  if (integerValue)
  {
    supportedTransports = [(GKTransportContext *)self supportedTransports];
    allObjects = [supportedTransports allObjects];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __59__GKTransportContext_supportsTransportRequiredInTheInvite___block_invoke;
    v12[3] = &unk_2785E11F8;
    v13 = inviteCopy;
    v9 = [allObjects _gkFilterWithBlock:v12];

    v10 = [v9 count] != 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void *__59__GKTransportContext_supportsTransportRequiredInTheInvite___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 version];
  v5 = [*(a1 + 32) transportVersionToUse];
  if (v4 == [v5 integerValue])
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (void)selectTransportWith:(id)with
{
  v25 = *MEMORY[0x277D85DE8];
  withCopy = with;
  selectedTransport = [(GKTransportContext *)self selectedTransport];

  if (selectedTransport)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    v8 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      [(GKTransportContext *)v8 selectTransportWith:?];
    }
  }

  else if ([withCopy version])
  {
    v9 = +[GKPreferences shared];
    fastSyncTransportEnabled = [v9 fastSyncTransportEnabled];

    if (fastSyncTransportEnabled)
    {
      objc_storeStrong(&self->_selectedTransport, with);
    }

    else
    {
      [(GKTransportContext *)self selectDefaultTransport];
    }

    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    v14 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      selectedTransport = self->_selectedTransport;
      *buf = 138412546;
      v22 = selectedTransport;
      v23 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_227904000, v14, OS_LOG_TYPE_INFO, "Transport has been selected as: %@ for context: %@", buf, 0x16u);
    }

    daemonProxy = [(GKTransportContext *)self daemonProxy];
    v17 = MEMORY[0x277CCACA8];
    name = [(GKSupportedTransport *)self->_selectedTransport name];
    v19 = [v17 stringWithFormat:@"Transport Selected: %@", name];
    [daemonProxy emitMultiplayerMessage:v19];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    v12 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      [GKTransportContext selectTransportWith:v12];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)selectDefaultTransport
{
  array = [MEMORY[0x277CBEA60] array];
  array2 = [MEMORY[0x277CBEA60] array];
  v4 = [(GKTransportContext *)self defaultTransportWithForceEnabledTransports:array forceDisabledTransports:array2 andHealthMonitorEnabled:0];
  selectedTransport = self->_selectedTransport;
  self->_selectedTransport = v4;
}

- (void)updateForLegacyNearbyInvite
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __49__GKTransportContext_updateForLegacyNearbyInvite__block_invoke;
  v2[3] = &unk_2785DD760;
  v2[4] = self;
  [(GKTransportContext *)self performUpdateSync:v2];
}

void __49__GKTransportContext_updateForLegacyNearbyInvite__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) validTransportSelected])
  {
    v2 = [*(a1 + 32) selectedTransport];
    v3 = [v2 version];

    if (v3 == 2)
    {
      if (!os_log_GKGeneral)
      {
        v4 = GKOSLoggers();
      }

      v5 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
      {
        __49__GKTransportContext_updateForLegacyNearbyInvite__block_invoke_cold_1(v5);
      }
    }
  }

  else
  {
    v6 = [[GKSupportedTransport alloc] initWithVersionNumber:&unk_283B333E8];
    v7 = *(a1 + 32);
    v8 = *(v7 + 32);
    *(v7 + 32) = v6;

    MEMORY[0x2821F96F8](v6, v8);
  }
}

- (void)updateForInviteInitiationWithOnlineConnectionData:(id)data
{
  dataCopy = data;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __72__GKTransportContext_updateForInviteInitiationWithOnlineConnectionData___block_invoke;
  v6[3] = &unk_2785DEBA8;
  v7 = dataCopy;
  selfCopy = self;
  v5 = dataCopy;
  [(GKTransportContext *)self performUpdateSync:v6];
}

void __72__GKTransportContext_updateForInviteInitiationWithOnlineConnectionData___block_invoke(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    __72__GKTransportContext_updateForInviteInitiationWithOnlineConnectionData___block_invoke_cold_1(a1);
  }

  v4 = [*(a1 + 40) sessionID];
  v5 = v4;
  if (!v4)
  {
    v1 = [MEMORY[0x277CCAD78] UUID];
    v5 = [v1 UUIDString];
  }

  objc_storeStrong((*(a1 + 40) + 96), v5);
  if (!v4)
  {
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = (*(a1 + 40) + 64);

    objc_storeStrong(v7, v6);
  }
}

- (void)updateWithInviteInitiateResponse:(id)response
{
  responseCopy = response;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__GKTransportContext_updateWithInviteInitiateResponse___block_invoke;
  v6[3] = &unk_2785DEBA8;
  v7 = responseCopy;
  selfCopy = self;
  v5 = responseCopy;
  [(GKTransportContext *)self performUpdateSync:v6];
}

void __55__GKTransportContext_updateWithInviteInitiateResponse___block_invoke(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    __55__GKTransportContext_updateWithInviteInitiateResponse___block_invoke_cold_1(a1);
  }

  v3 = *(a1 + 40);
  v4 = [GKSupportedTransport alloc];
  v5 = [*(a1 + 32) transportVersionToUse];
  v6 = [(GKSupportedTransport *)v4 initWithVersionNumber:v5];
  [v3 selectTransportWith:v6];

  v7 = [*(a1 + 32) selfPseudonym];
  v8 = *(a1 + 40);
  v9 = *(v8 + 24);
  *(v8 + 24) = v7;

  v10 = [*(a1 + 32) playerTokenMap];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [*(a1 + 40) playerTokenMap];
    v13 = [v12 mutableCopy];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [MEMORY[0x277CBEB38] dictionary];
    }

    v16 = v15;

    v17 = [*(a1 + 32) playerTokenMap];
    [v16 addEntriesFromDictionary:v17];

    v18 = *(a1 + 40);
    v19 = *(v18 + 104);
    *(v18 + 104) = v16;
  }

  v20 = [GKTransportParticipant alloc];
  v21 = +[GKLocalPlayer local];
  v22 = [v21 internal];
  v23 = [v22 playerID];
  v24 = [*(a1 + 40) pseudonym];
  v25 = [(GKTransportParticipant *)v20 initWithPlayerID:v23 pseudonym:v24];

  v26 = *(a1 + 40);
  v27 = [MEMORY[0x277CBEB98] setWithObject:v25];
  [v26 addLobbyParticipants:v27];

  v28 = *(a1 + 40);
  v29 = [MEMORY[0x277CBEB98] setWithObject:v25];
  [v28 addGameParticipants:v29];
}

- (void)updateForInviteAcceptWithConnectionData:(id)data
{
  dataCopy = data;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__GKTransportContext_updateForInviteAcceptWithConnectionData___block_invoke;
  v6[3] = &unk_2785DEBA8;
  v7 = dataCopy;
  selfCopy = self;
  v5 = dataCopy;
  [(GKTransportContext *)self performUpdateSync:v6];
}

void __62__GKTransportContext_updateForInviteAcceptWithConnectionData___block_invoke(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    __62__GKTransportContext_updateForInviteAcceptWithConnectionData___block_invoke_cold_1(a1);
  }

  v3 = *(a1 + 32);
  v4 = (*(a1 + 40) + 64);

  objc_storeStrong(v4, v3);
}

- (void)updateAfterAcceptingRemoveInvite:(id)invite acceptedResponse:(id)response
{
  inviteCopy = invite;
  responseCopy = response;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__GKTransportContext_updateAfterAcceptingRemoveInvite_acceptedResponse___block_invoke;
  v10[3] = &unk_2785DDB40;
  v11 = inviteCopy;
  v12 = responseCopy;
  selfCopy = self;
  v8 = responseCopy;
  v9 = inviteCopy;
  [(GKTransportContext *)self performUpdateSync:v10];
}

void __72__GKTransportContext_updateAfterAcceptingRemoveInvite_acceptedResponse___block_invoke(uint64_t a1)
{
  v70[6] = *MEMORY[0x277D85DE8];
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    __72__GKTransportContext_updateAfterAcceptingRemoveInvite_acceptedResponse___block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 40) selfPseudonym];
  v4 = *(a1 + 48);
  v5 = *(v4 + 24);
  *(v4 + 24) = v3;

  v6 = [*(a1 + 40) sessionID];
  v7 = *(a1 + 48);
  v8 = *(v7 + 96);
  *(v7 + 96) = v6;

  v9 = [*(a1 + 40) matchID];

  if (v9)
  {
    v10 = [*(a1 + 40) matchID];
    v11 = *(a1 + 48);
    v12 = *(v11 + 88);
    *(v11 + 88) = v10;
  }

  v13 = [*(a1 + 32) internal];
  v14 = [v13 sessionToken];
  v15 = *(a1 + 48);
  v16 = *(v15 + 80);
  *(v15 + 80) = v14;

  v69[0] = @"peer-id";
  v64 = [*(a1 + 32) internal];
  v63 = [v64 peerID];
  v70[0] = v63;
  v69[1] = @"peer-blob";
  v62 = [*(a1 + 32) internal];
  v61 = [v62 peerBlob];
  v70[1] = v61;
  v69[2] = @"peer-push-token";
  v17 = [*(a1 + 32) internal];
  v18 = [v17 peerPushToken];
  v70[2] = v18;
  v69[3] = @"peer-nat-type";
  v19 = MEMORY[0x277CCABB0];
  v20 = [*(a1 + 32) internal];
  v21 = [v19 numberWithUnsignedInteger:{objc_msgSend(v20, "peerNATType")}];
  v70[3] = v21;
  v69[4] = @"peer-nat-ip";
  v22 = [*(a1 + 32) internal];
  v23 = [v22 peerNATIP];
  v70[4] = v23;
  v69[5] = @"session-token";
  v24 = [*(a1 + 32) internal];
  v25 = [v24 sessionToken];
  v70[5] = v25;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:6];
  v65 = [v26 mutableCopy];

  v27 = [*(a1 + 32) internal];
  v28 = [v27 transportVersionToUse];

  if (![v28 integerValue])
  {
    v29 = MEMORY[0x277CCACA8];
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Found undefined transport version from invite: %@", *(a1 + 32)];
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/Transport/GKTransportContext.m"];
    v32 = [v31 lastPathComponent];
    v33 = [v29 stringWithFormat:@"%@ (transportVersionToUse.integerValue != GKSupportedTransportVersionUndefined)\n[%s (%s:%d)]", v30, "-[GKTransportContext updateAfterAcceptingRemoveInvite:acceptedResponse:]_block_invoke", objc_msgSend(v32, "UTF8String"), 323];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v33}];
  }

  v34 = [*(a1 + 32) internal];
  v35 = [v34 peerPseudonym];

  v36 = [*(a1 + 32) internal];
  v37 = [v36 sessionID];

  if ([v28 integerValue] == 2)
  {
    v38 = *(a1 + 48);
    v39 = [[GKSupportedTransport alloc] initWithVersionNumber:v28];
    [v38 selectTransportWith:v39];

    v40 = v65;
    [v65 setObject:v37 forKeyedSubscript:@"sid"];
    [v65 setObject:v35 forKeyedSubscript:@"ps"];
    v41 = [*(a1 + 32) internal];
    v42 = [v41 lobbyParticipants];
    v43 = [v42 count];

    if (v43)
    {
      v44 = *(a1 + 48);
      v45 = [*(a1 + 32) internal];
      v46 = [v45 lobbyParticipants];
      [v44 addLobbyParticipants:v46];
    }

    v47 = [*(a1 + 32) internal];
    v48 = [v47 gameParticipants];
    v49 = [v48 count];

    if (v49)
    {
      v50 = *(a1 + 48);
      v51 = [*(a1 + 32) internal];
      v52 = [v51 gameParticipants];
      [v50 addGameParticipants:v52];

LABEL_20:
    }
  }

  else
  {
    v40 = v65;
    if ([v28 integerValue])
    {
      v53 = *(a1 + 48);
      v54 = [[GKSupportedTransport alloc] initWithVersionNumber:&unk_283B333E8];
      [v53 selectTransportWith:v54];

      if (!os_log_GKGeneral)
      {
        v55 = GKOSLoggers();
      }

      v56 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        v57 = *(a1 + 40);
        *buf = 138412290;
        v68 = v57;
        _os_log_impl(&dword_227904000, v56, OS_LOG_TYPE_INFO, "Cannot find transportVersionToUse from response, so it must be coming from older devices than Dawn. Response: %@", buf, 0xCu);
      }

      v66 = v65;
      v58 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];
      v59 = *(a1 + 48);
      v51 = *(v59 + 72);
      *(v59 + 72) = v58;
      goto LABEL_20;
    }
  }

  v60 = *MEMORY[0x277D85DE8];
}

- (void)updateAfterInviteeAcceptedUserInfo:(id)info
{
  infoCopy = info;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__GKTransportContext_updateAfterInviteeAcceptedUserInfo___block_invoke;
  v6[3] = &unk_2785DEBA8;
  v7 = infoCopy;
  selfCopy = self;
  v5 = infoCopy;
  [(GKTransportContext *)self performUpdateSync:v6];
}

void __57__GKTransportContext_updateAfterInviteeAcceptedUserInfo___block_invoke(uint64_t a1)
{
  v40[6] = *MEMORY[0x277D85DE8];
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    __57__GKTransportContext_updateAfterInviteeAcceptedUserInfo___block_invoke_cold_1(a1);
  }

  v3 = [*(a1 + 32) objectForKeyedSubscript:@"peer-id"];
  v4 = [*(a1 + 32) objectForKeyedSubscript:@"peer-push-token"];
  v5 = [*(a1 + 32) objectForKeyedSubscript:@"pps"];
  v40[0] = v3;
  v39[0] = @"peer-id";
  v39[1] = @"peer-blob";
  v6 = [*(a1 + 32) objectForKeyedSubscript:?];
  v40[1] = v6;
  v40[2] = v4;
  v39[2] = @"peer-push-token";
  v39[3] = @"peer-nat-type";
  v7 = [*(a1 + 32) objectForKeyedSubscript:?];
  v40[3] = v7;
  v39[4] = @"peer-nat-ip";
  v8 = [*(a1 + 32) objectForKeyedSubscript:?];
  v40[4] = v8;
  v39[5] = @"session-token";
  v9 = [*(a1 + 32) objectForKeyedSubscript:?];
  v40[5] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:6];
  v11 = [v10 mutableCopy];

  if (v5)
  {
    [v11 setObject:v5 forKeyedSubscript:@"ps"];
  }

  v12 = [*(a1 + 32) objectForKeyedSubscript:@"session-token"];
  v13 = *(a1 + 40);
  v14 = *(v13 + 80);
  *(v13 + 80) = v12;

  v38 = v11;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
  v16 = *(a1 + 40);
  v17 = *(v16 + 72);
  *(v16 + 72) = v15;

  v18 = [*(a1 + 40) playerTokenMap];
  v19 = [v18 mutableCopy];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = [MEMORY[0x277CBEB38] dictionary];
  }

  v22 = v21;

  v23 = [MEMORY[0x277CBEA60] arrayWithObject:v4];
  [v22 setObject:v23 forKeyedSubscript:v3];

  objc_storeStrong((*(a1 + 40) + 104), v22);
  if (v3 && v5)
  {
    v24 = [[GKTransportParticipant alloc] initWithPlayerID:v3 pseudonym:v5];
    v25 = *(a1 + 40);
    v26 = [MEMORY[0x277CBEB98] setWithObject:v24];
    [v25 addLobbyParticipants:v26];

    v27 = *(a1 + 40);
    v28 = [MEMORY[0x277CBEB98] setWithObject:v24];
    [v27 addGameParticipants:v28];
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
      v34 = 138412546;
      v35 = v3;
      v36 = 2112;
      v37 = v5;
      _os_log_impl(&dword_227904000, v30, OS_LOG_TYPE_INFO, "UpdateAfterInviteeAcceptedUserInfo cannot init participant. playerID(%@) or pseudonym(%@) is nil.", &v34, 0x16u);
    }
  }

  if (v3 && v4)
  {
    v31 = *(a1 + 40);
    v32 = [[GKTTRMultiplayerParticipant alloc] initWithPlayerID:v3 pushToken:v4];
    [v31 addTTRMultiplayerParticipant:v32];
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)updateForMatchRequestWithConnectionData:(id)data
{
  dataCopy = data;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__GKTransportContext_updateForMatchRequestWithConnectionData___block_invoke;
  v6[3] = &unk_2785DEBA8;
  v7 = dataCopy;
  selfCopy = self;
  v5 = dataCopy;
  [(GKTransportContext *)self performUpdateSync:v6];
}

void __62__GKTransportContext_updateForMatchRequestWithConnectionData___block_invoke(uint64_t a1)
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    __62__GKTransportContext_updateForMatchRequestWithConnectionData___block_invoke_cold_1(a1);
  }

  objc_storeStrong((*(a1 + 40) + 64), *(a1 + 32));
  v4 = [*(a1 + 40) sessionID];
  v5 = v4;
  if (!v4)
  {
    v1 = [MEMORY[0x277CCAD78] UUID];
    v5 = [v1 UUIDString];
  }

  objc_storeStrong((*(a1 + 40) + 96), v5);
  if (!v4)
  {
  }
}

- (void)updateForMatchResponse:(id)response serverHosted:(BOOL)hosted
{
  responseCopy = response;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__GKTransportContext_updateForMatchResponse_serverHosted___block_invoke;
  v8[3] = &unk_2785E0F78;
  hostedCopy = hosted;
  v9 = responseCopy;
  selfCopy = self;
  v7 = responseCopy;
  [(GKTransportContext *)self performUpdateSync:v8];
}

void __58__GKTransportContext_updateForMatchResponse_serverHosted___block_invoke(uint64_t a1)
{
  v76 = *MEMORY[0x277D85DE8];
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    __58__GKTransportContext_updateForMatchResponse_serverHosted___block_invoke_cold_1(a1, v3);
  }

  v4 = [*(a1 + 32) cdxTicket];
  v5 = *(a1 + 40);
  v6 = *(v5 + 56);
  *(v5 + 56) = v4;

  v7 = [*(a1 + 32) sessionToken];
  v8 = *(a1 + 40);
  v9 = *(v8 + 80);
  *(v8 + 80) = v7;

  if ((*(a1 + 48) & 1) == 0)
  {
    v10 = [*(a1 + 32) selfPseudonym];
    v11 = *(a1 + 40);
    v12 = *(v11 + 24);
    *(v11 + 24) = v10;

    v13 = *(a1 + 40);
    v14 = [GKSupportedTransport alloc];
    v15 = [*(a1 + 32) transportVersionToUse];
    v16 = [(GKSupportedTransport *)v14 initWithVersionNumber:v15];
    [v13 selectTransportWith:v16];

    v17 = [*(a1 + 32) matchID];
    v18 = *(a1 + 40);
    v19 = *(v18 + 88);
    *(v18 + 88) = v17;

    v60 = [MEMORY[0x277CBEB18] array];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    obj = [*(a1 + 32) matches];
    v20 = [obj countByEnumeratingWithState:&v63 objects:v75 count:16];
    if (!v20)
    {
      goto LABEL_42;
    }

    v22 = v20;
    v61 = *v64;
    *&v21 = 138413058;
    v56 = v21;
    v59 = a1;
    while (1)
    {
      v23 = 0;
      v57 = v22;
      do
      {
        if (*v64 != v61)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v63 + 1) + 8 * v23);
        v25 = [v24 objectForKey:{@"client-data", v56}];
        v26 = [MEMORY[0x277CBEB38] dictionary];
        v27 = [v24 objectForKey:@"player-id"];
        v28 = [v25 objectForKey:@"push-token"];
        v29 = v28;
        if (v27)
        {
          [v26 setObject:v27 forKey:@"peer-id"];
          if (v29)
          {
            [v26 setObject:v29 forKey:@"peer-push-token"];
            v30 = *(a1 + 40);
            v31 = [[GKTTRMultiplayerParticipant alloc] initWithPlayerID:v27 pushToken:v29];
            [v30 addTTRMultiplayerParticipant:v31];
          }
        }

        else if (v28)
        {
          [v26 setObject:v28 forKey:@"peer-push-token"];
        }

        v62 = v29;
        v32 = [v25 objectForKey:@"conn-blob"];
        if (v32)
        {
          [v26 setObject:v32 forKey:@"peer-blob"];
        }

        v33 = [v25 objectForKey:@"nat-type"];

        if (v33)
        {
          [v26 setObject:v33 forKey:@"peer-nat-type"];
        }

        v34 = [v25 objectForKey:@"nat-ip"];

        if (v34)
        {
          [v26 setObject:v34 forKey:@"peer-nat-ip"];
        }

        v35 = [*(a1 + 32) sessionToken];

        if (v35)
        {
          v36 = [*(a1 + 32) sessionToken];
          [v26 setObject:v36 forKey:@"session-token"];
        }

        if (![v26 count])
        {
          [v26 setObject:MEMORY[0x277CBEC38] forKey:@"missing-client-data"];
        }

        v37 = [v24 objectForKey:@"num-players"];
        v38 = v37;
        if (v37)
        {
          v39 = v37;
        }

        else
        {
          v39 = &unk_283B33400;
        }

        [v26 setObject:v39 forKey:@"num-players"];
        v40 = [*(a1 + 32) transportVersionToUse];
        v41 = [v40 integerValue];

        if (v41 != 2)
        {
          goto LABEL_34;
        }

        [v26 setObject:&unk_283B333D0 forKey:@"stv"];
        v42 = [v25 objectForKey:@"sid"];
        v43 = [v25 objectForKey:@"ps"];
        v44 = v43;
        if (v27 && v42 && v43)
        {
          [v26 setObject:v42 forKey:@"sid"];
          [v26 setObject:v44 forKey:@"ps"];
          v45 = *(v59 + 40);
          v46 = [GKTransportParticipant participantsFrom:v25 withKey:@"gp"];
          v47 = v45;
          a1 = v59;
          [v47 addGameParticipants:v46];

          v22 = v57;
LABEL_34:
          [v60 addObject:v26];
          goto LABEL_40;
        }

        if (!os_log_GKGeneral)
        {
          v48 = GKOSLoggers();
        }

        v49 = os_log_GKFastSync;
        if (os_log_type_enabled(os_log_GKFastSync, OS_LOG_TYPE_INFO))
        {
          v50 = *(v59 + 40);
          v51 = v49;
          v52 = [v50 gameParticipants];
          *buf = v56;
          v68 = v27;
          v69 = 2112;
          v70 = v42;
          v71 = 2112;
          v72 = v44;
          v73 = 2112;
          v74 = v52;
          _os_log_impl(&dword_227904000, v51, OS_LOG_TYPE_INFO, "Ignoring incomplete participant update for playerID: %@, sessionID: %@, pseudonym: %@, current gameParticipants: %@", buf, 0x2Au);

          a1 = v59;
        }

        v22 = v57;
LABEL_40:

        ++v23;
      }

      while (v22 != v23);
      v22 = [obj countByEnumeratingWithState:&v63 objects:v75 count:16];
      if (!v22)
      {
LABEL_42:

        v53 = *(a1 + 40);
        v54 = *(v53 + 72);
        *(v53 + 72) = v60;

        break;
      }
    }
  }

  v55 = *MEMORY[0x277D85DE8];
}

- (void)updateWithInviteUpdateInfo:(id)info
{
  infoCopy = info;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__GKTransportContext_updateWithInviteUpdateInfo___block_invoke;
  v6[3] = &unk_2785DEBA8;
  v7 = infoCopy;
  selfCopy = self;
  v5 = infoCopy;
  [(GKTransportContext *)self performUpdateSync:v6];
}

void __49__GKTransportContext_updateWithInviteUpdateInfo___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v21 = 138412290;
    v22 = v4;
    _os_log_impl(&dword_227904000, v3, OS_LOG_TYPE_INFO, "updateWithInviteUpdateInfo: %@", &v21, 0xCu);
  }

  v5 = [*(a1 + 32) sessionID];
  v6 = [*(a1 + 40) sessionID];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = [*(a1 + 32) lobbyParticipants];
    v9 = [v8 count];

    if (v9)
    {
      v10 = *(a1 + 40);
      v11 = [*(a1 + 32) lobbyParticipants];
      [v10 addLobbyParticipants:v11];
    }

    v12 = [*(a1 + 32) gameParticipants];
    v13 = [v12 count];

    if (v13)
    {
      v14 = *(a1 + 40);
      v15 = [*(a1 + 32) gameParticipants];
      [v14 addGameParticipants:v15];
    }

    v16 = [*(a1 + 32) matchID];

    if (v16)
    {
      v17 = [*(a1 + 32) matchID];
      v18 = *(a1 + 40);
      v19 = *(v18 + 88);
      *(v18 + 88) = v17;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)updateWithForceEnabledTransports:(id)transports forceDisabledTransports:(id)disabledTransports andHealthMonitorEnabled:(BOOL)enabled
{
  transportsCopy = transports;
  disabledTransportsCopy = disabledTransports;
  if (!self->_selectedTransport)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __103__GKTransportContext_updateWithForceEnabledTransports_forceDisabledTransports_andHealthMonitorEnabled___block_invoke;
    v10[3] = &unk_2785DFFC8;
    v11 = transportsCopy;
    enabledCopy = enabled;
    v12 = disabledTransportsCopy;
    selfCopy = self;
    [(GKTransportContext *)self performUpdateSync:v10];
  }
}

void __103__GKTransportContext_updateWithForceEnabledTransports_forceDisabledTransports_andHealthMonitorEnabled___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  if (!os_log_GKGeneral)
  {
    v2 = GKOSLoggers();
  }

  v3 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    __103__GKTransportContext_updateWithForceEnabledTransports_forceDisabledTransports_andHealthMonitorEnabled___block_invoke_cold_1(a1, v3);
  }

  if ([*(a1 + 32) count] || objc_msgSend(*(a1 + 40), "count"))
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      __103__GKTransportContext_updateWithForceEnabledTransports_forceDisabledTransports_andHealthMonitorEnabled___block_invoke_cold_2((a1 + 32), a1);
    }

    v5 = [*(*(a1 + 48) + 48) mutableCopy];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v6 = *(a1 + 32);
    v7 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v32;
      do
      {
        v10 = 0;
        do
        {
          if (*v32 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [[GKSupportedTransport alloc] initWithVersionNumber:*(*(&v31 + 1) + 8 * v10)];
          [v5 addObject:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v8);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v12 = *(a1 + 40);
    v13 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v28;
      do
      {
        v16 = 0;
        do
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v27 + 1) + 8 * v16);
          v18 = [GKSupportedTransport alloc];
          v19 = [(GKSupportedTransport *)v18 initWithVersionNumber:v17, v27];
          [v5 removeObject:v19];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v14);
    }

    v20 = *(a1 + 48);
    v21 = *(v20 + 48);
    *(v20 + 48) = v5;
  }

  v23 = *(a1 + 48);
  v22 = a1 + 48;
  *(v23 + 9) = *(v22 + 8);
  if (!os_log_GKGeneral)
  {
    v24 = GKOSLoggers();
  }

  v25 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    __103__GKTransportContext_updateWithForceEnabledTransports_forceDisabledTransports_andHealthMonitorEnabled___block_invoke_cold_3(v22, v25);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldSendInviteUpdate
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__GKTransportContext_shouldSendInviteUpdate__block_invoke;
  v4[3] = &unk_2785E1220;
  v4[4] = self;
  v4[5] = &v5;
  [(GKTransportContext *)self performUpdateSync:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __44__GKTransportContext_shouldSendInviteUpdate__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) selectedTransport];
  v3 = [v2 version];

  if (v3 == 2)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [*(a1 + 32) lobbyParticipants];
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v12 + 1) + 8 * i) playerID];
          v10 = [*(a1 + 32) localPlayerID];

          if (v9 != v10)
          {
            *(*(*(a1 + 40) + 8) + 24) = 1;
            goto LABEL_12;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)formAnInviteUpdate
{
  v3 = objc_alloc_init(GKUpdateInviteInfo);
  gameParticipants = [(GKTransportContext *)self gameParticipants];
  [(GKUpdateInviteInfo *)v3 setGameParticipants:gameParticipants];

  lobbyParticipants = [(GKTransportContext *)self lobbyParticipants];
  [(GKUpdateInviteInfo *)v3 setLobbyParticipants:lobbyParticipants];

  playerTokenMap = [(GKTransportContext *)self playerTokenMap];
  [(GKUpdateInviteInfo *)v3 setPlayerTokenMap:playerTokenMap];

  sessionID = [(GKTransportContext *)self sessionID];
  [(GKUpdateInviteInfo *)v3 setSessionID:sessionID];

  sessionToken = [(GKTransportContext *)self sessionToken];
  [(GKUpdateInviteInfo *)v3 setSessionToken:sessionToken];

  matchID = [(GKTransportContext *)self matchID];

  if (matchID)
  {
    matchID2 = [(GKTransportContext *)self matchID];
    [(GKUpdateInviteInfo *)v3 setMatchID:matchID2];
  }

  v11 = MEMORY[0x277CCABB0];
  selectedTransport = [(GKTransportContext *)self selectedTransport];
  v13 = [v11 numberWithInteger:{objc_msgSend(selectedTransport, "version")}];
  [(GKUpdateInviteInfo *)v3 setTransportVersionToUse:v13];

  return v3;
}

- (void)addGameParticipants:(id)participants
{
  participantsCopy = participants;
  gameParticipants = self->_gameParticipants;
  v10 = participantsCopy;
  if (!gameParticipants)
  {
    v6 = [MEMORY[0x277CBEB98] set];
    v7 = self->_gameParticipants;
    self->_gameParticipants = v6;

    participantsCopy = v10;
    gameParticipants = self->_gameParticipants;
  }

  v8 = [(NSSet *)gameParticipants setByAddingObjectsFromSet:participantsCopy];
  v9 = self->_gameParticipants;
  self->_gameParticipants = v8;
}

- (void)addLobbyParticipants:(id)participants
{
  participantsCopy = participants;
  lobbyParticipants = self->_lobbyParticipants;
  v10 = participantsCopy;
  if (!lobbyParticipants)
  {
    v6 = [MEMORY[0x277CBEB98] set];
    v7 = self->_lobbyParticipants;
    self->_lobbyParticipants = v6;

    participantsCopy = v10;
    lobbyParticipants = self->_lobbyParticipants;
  }

  v8 = [(NSSet *)lobbyParticipants setByAddingObjectsFromSet:participantsCopy];
  v9 = self->_lobbyParticipants;
  self->_lobbyParticipants = v8;
}

- (void)addTTRMultiplayerParticipant:(id)participant
{
  participantCopy = participant;
  playersAndPushTokens = self->_playersAndPushTokens;
  v10 = participantCopy;
  if (!playersAndPushTokens)
  {
    v6 = [MEMORY[0x277CBEB98] set];
    v7 = self->_playersAndPushTokens;
    self->_playersAndPushTokens = v6;

    participantCopy = v10;
    playersAndPushTokens = self->_playersAndPushTokens;
  }

  v8 = [(NSSet *)playersAndPushTokens setByAddingObject:participantCopy];
  v9 = self->_playersAndPushTokens;
  self->_playersAndPushTokens = v8;
}

- (id)updatedParticipantsAfterRemoving:(id)removing fromOldParticipants:(id)participants
{
  removingCopy = removing;
  participantsCopy = participants;
  if (participantsCopy && [removingCopy count])
  {
    v7 = [participantsCopy mutableCopy];
    [v7 minusSet:removingCopy];
    v8 = [v7 copy];
  }

  else
  {
    v8 = participantsCopy;
  }

  return v8;
}

- (void)removeGameParticipantsIfExists:(id)exists
{
  v4 = [(GKTransportContext *)self updatedParticipantsAfterRemoving:exists fromOldParticipants:self->_gameParticipants];
  gameParticipants = self->_gameParticipants;
  self->_gameParticipants = v4;

  MEMORY[0x2821F96F8](v4, gameParticipants);
}

- (void)removeLobbyParticipantsIfExists:(id)exists
{
  v4 = [(GKTransportContext *)self updatedParticipantsAfterRemoving:exists fromOldParticipants:self->_lobbyParticipants];
  lobbyParticipants = self->_lobbyParticipants;
  self->_lobbyParticipants = v4;

  MEMORY[0x2821F96F8](v4, lobbyParticipants);
}

- (void)enrichServerRequest:(id)request withMatchRequest:(id)matchRequest selfPseudonym:(id)pseudonym
{
  requestCopy = request;
  matchRequestCopy = matchRequest;
  pseudonymCopy = pseudonym;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__GKTransportContext_enrichServerRequest_withMatchRequest_selfPseudonym___block_invoke;
  v14[3] = &unk_2785DF3E0;
  v15 = requestCopy;
  selfCopy = self;
  v17 = matchRequestCopy;
  v18 = pseudonymCopy;
  v11 = pseudonymCopy;
  v12 = matchRequestCopy;
  v13 = requestCopy;
  [(GKTransportContext *)self performUpdateSync:v14];
}

void __73__GKTransportContext_enrichServerRequest_withMatchRequest_selfPseudonym___block_invoke(uint64_t a1)
{
  v18[5] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) supportedTransportVersions];
  [v2 setObject:v3 forKey:@"supported-transport-versions"];

  v4 = MEMORY[0x277CBEB38];
  v17[0] = @"client-data-version";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:1];
  v18[0] = v5;
  v17[1] = @"match-version";
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 48), "version")}];
  v18[1] = v6;
  v17[2] = @"conn-blob";
  v7 = [*(a1 + 40) connectionData];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x277CBEA90] data];
  }

  v18[2] = v8;
  v17[3] = @"nat-ip";
  v9 = [*(a1 + 40) connectionData];
  v10 = [GKViceroyNATConfiguration externalAddressForSelfConnectionData:v9];
  v18[3] = v10;
  v17[4] = @"gp";
  v11 = [*(a1 + 40) gameParticipantsServerRepresentationsWithSelfPseudonym:*(a1 + 56)];
  v18[4] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:5];
  v13 = [v4 dictionaryWithDictionary:v12];

  if (!v7)
  {
  }

  v14 = [*(a1 + 40) sessionID];

  if (v14)
  {
    v15 = [*(a1 + 40) sessionID];
    [v13 setObject:v15 forKey:@"sid"];
  }

  [*(a1 + 32) setObject:v13 forKey:@"client-data"];

  v16 = *MEMORY[0x277D85DE8];
}

- (id)gameParticipantsServerRepresentationsWithSelfPseudonym:(id)pseudonym
{
  pseudonymCopy = pseudonym;
  v5 = [GKTransportParticipant alloc];
  localPlayerID = [(GKTransportContext *)self localPlayerID];
  v7 = [(GKTransportParticipant *)v5 initWithPlayerID:localPlayerID pseudonym:pseudonymCopy];

  v8 = MEMORY[0x277CBEB18];
  serverRepresentation = [(GKTransportParticipant *)v7 serverRepresentation];
  v10 = [v8 arrayWithObject:serverRepresentation];

  v11 = MEMORY[0x277CBEB58];
  localPlayerID2 = [(GKTransportContext *)self localPlayerID];
  v13 = [v11 setWithObject:localPlayerID2];

  gameParticipants = [(GKTransportContext *)self gameParticipants];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __77__GKTransportContext_gameParticipantsServerRepresentationsWithSelfPseudonym___block_invoke;
  v20[3] = &unk_2785E1248;
  v21 = v13;
  v15 = v10;
  v22 = v15;
  v16 = v13;
  [gameParticipants enumerateObjectsUsingBlock:v20];

  v17 = v22;
  v18 = v15;

  return v15;
}

void __77__GKTransportContext_gameParticipantsServerRepresentationsWithSelfPseudonym___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10 = v3;
  v5 = [v3 playerID];
  LOBYTE(v4) = [v4 containsObject:v5];

  if ((v4 & 1) == 0)
  {
    v6 = *(a1 + 40);
    v7 = [v10 serverRepresentation];
    [v6 addObject:v7];

    v8 = *(a1 + 32);
    v9 = [v10 playerID];
    [v8 addObject:v9];
  }
}

- (void)enrichConnectionDictionary:(id)dictionary inviteResponse:(id)response
{
  dictionaryCopy = dictionary;
  responseCopy = response;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__GKTransportContext_enrichConnectionDictionary_inviteResponse___block_invoke;
  v10[3] = &unk_2785DDB40;
  v10[4] = self;
  v11 = dictionaryCopy;
  v12 = responseCopy;
  v8 = responseCopy;
  v9 = dictionaryCopy;
  [(GKTransportContext *)self performUpdateSync:v10];
}

void __64__GKTransportContext_enrichConnectionDictionary_inviteResponse___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionData];

  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [MEMORY[0x277CCABB0] numberWithInt:1];
    [v3 setObject:v4 forKey:@"blob-type"];

    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) connectionData];
    v7 = [v6 base64EncodedStringWithOptions:0];
    [v5 setObject:v7 forKey:@"self-blob"];

    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) connectionData];
    v10 = [GKViceroyNATConfiguration externalAddressForSelfConnectionData:v9];
    v11 = [v10 base64EncodedStringWithOptions:0];
    [v8 setObject:v11 forKey:@"self-nat-ip"];
  }

  else
  {
    v23 = 0;
    v12 = *(a1 + 40);
    v13 = [MEMORY[0x277CBEA90] dataWithBytes:&v23 length:4];
    v14 = [v13 base64EncodedStringWithOptions:0];
    [v12 setObject:v14 forKey:@"self-nat-ip"];

    v15 = *(a1 + 40);
    v16 = [MEMORY[0x277CBEA90] data];
    v17 = [v16 base64EncodedStringWithOptions:0];
    [v15 setObject:v17 forKey:@"self-blob"];

    v18 = *(a1 + 40);
    v19 = [MEMORY[0x277CCABB0] numberWithInt:0];
    [v18 setObject:v19 forKey:@"blob-type"];
  }

  v20 = *(a1 + 40);
  v21 = [*(a1 + 32) sessionID];
  [v20 setObject:v21 forKey:@"sid"];

  v22 = [*(a1 + 32) sessionID];
  [*(a1 + 48) setSessionID:v22];
}

- (void)enrichServerRequestWithConnectionData:(id)data
{
  dataCopy = data;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__GKTransportContext_enrichServerRequestWithConnectionData___block_invoke;
  v6[3] = &unk_2785DEBA8;
  v6[4] = self;
  v7 = dataCopy;
  v5 = dataCopy;
  [(GKTransportContext *)self performUpdateSync:v6];
}

void __60__GKTransportContext_enrichServerRequestWithConnectionData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connectionData];

  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = [MEMORY[0x277CCABB0] numberWithInt:1];
    [v3 setObject:v4 forKey:@"blob-type"];

    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) connectionData];
    [v5 setObject:v6 forKey:@"self-blob"];

    v7 = *(a1 + 40);
    v15 = [*(a1 + 32) connectionData];
    v8 = [GKViceroyNATConfiguration externalAddressForSelfConnectionData:v15];
    [v7 setObject:v8 forKey:@"self-nat-ip"];
  }

  else
  {
    v16 = 0;
    v9 = *(a1 + 40);
    v10 = [MEMORY[0x277CCABB0] numberWithInt:0];
    [v9 setObject:v10 forKey:@"blob-type"];

    v11 = *(a1 + 40);
    v12 = [MEMORY[0x277CBEA90] data];
    [v11 setObject:v12 forKey:@"self-blob"];

    v13 = *(a1 + 40);
    v14 = [MEMORY[0x277CBEA90] dataWithBytes:&v16 length:4];
    [v13 setObject:v14 forKey:@"self-nat-ip"];
  }
}

- (void)enrichServerRequest:(id)request andInviteResponse:(id)response
{
  requestCopy = request;
  responseCopy = response;
  [(GKTransportContext *)self enrichServerRequestWithConnectionData:requestCopy];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__GKTransportContext_enrichServerRequest_andInviteResponse___block_invoke;
  v10[3] = &unk_2785DDB40;
  v11 = requestCopy;
  selfCopy = self;
  v13 = responseCopy;
  v8 = responseCopy;
  v9 = requestCopy;
  [(GKTransportContext *)self performUpdateSync:v10];
}

void __60__GKTransportContext_enrichServerRequest_andInviteResponse___block_invoke(id *a1)
{
  v2 = [a1[4] objectForKeyedSubscript:@"client-data"];
  v3 = [a1[5] sessionID];

  if (v3)
  {
    v4 = [a1[5] sessionID];
    [v2 setObject:v4 forKey:@"sid"];
  }

  v5 = a1[4];
  v6 = [a1[5] supportedTransportVersions];
  [v5 setObject:v6 forKey:@"supported-transport-versions"];

  v7 = [a1[5] sessionID];
  [a1[6] setSessionID:v7];

  v8 = [a1[5] supportedTransportVersions];
  LODWORD(v6) = [v8 containsObject:&unk_283B333D0];

  if (v6)
  {
    v9 = [GKTransportParticipant alloc];
    v10 = [a1[5] localPlayerID];
    v11 = [a1[6] selfPseudonym];
    v12 = [(GKTransportParticipant *)v9 initWithPlayerID:v10 pseudonym:v11];

    v13 = MEMORY[0x277CBEB18];
    v14 = [(GKTransportParticipant *)v12 serverRepresentation];
    v15 = [v13 arrayWithObject:v14];

    v16 = [a1[5] gameParticipants];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __60__GKTransportContext_enrichServerRequest_andInviteResponse___block_invoke_2;
    v31[3] = &unk_2785E1270;
    v17 = v15;
    v32 = v17;
    [v16 enumerateObjectsUsingBlock:v31];

    v18 = MEMORY[0x277CBEB18];
    v19 = [(GKTransportParticipant *)v12 serverRepresentation];
    v20 = [v18 arrayWithObject:v19];

    v21 = [a1[5] lobbyParticipants];
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __60__GKTransportContext_enrichServerRequest_andInviteResponse___block_invoke_3;
    v29 = &unk_2785E1270;
    v22 = v20;
    v30 = v22;
    [v21 enumerateObjectsUsingBlock:&v26];

    v23 = [v2 objectForKeyedSubscript:{@"matchID", v26, v27, v28, v29}];

    if (v23)
    {
      v24 = [v2 objectForKeyedSubscript:@"matchID"];
      [v2 setObject:v24 forKey:@"matchID"];
    }

    v25 = [a1[6] selfPseudonym];
    [v2 setObject:v25 forKey:@"ps"];

    [v2 setObject:v17 forKey:@"gp"];
    [v2 setObject:v22 forKey:@"lp"];
    if ([v17 count])
    {
      [a1[6] setGameParticipantsInfo:v17];
    }

    if ([v22 count])
    {
      [a1[6] setLobbyParticipantsInfo:v22];
    }
  }
}

void __60__GKTransportContext_enrichServerRequest_andInviteResponse___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 serverRepresentation];
  [v2 addObject:v3];
}

void __60__GKTransportContext_enrichServerRequest_andInviteResponse___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 serverRepresentation];
  [v2 addObject:v3];
}

- (BOOL)supportsTransportVersion:(id)version
{
  v20 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  supportedTransports = [(GKTransportContext *)self supportedTransports];
  allObjects = [supportedTransports allObjects];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__GKTransportContext_supportsTransportVersion___block_invoke;
  v14[3] = &unk_2785E1298;
  v7 = versionCopy;
  v15 = v7;
  v8 = [allObjects _gkContainsObjectPassingTest:v14];

  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
  }

  v10 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v11 = @"not ";
    if (v8)
    {
      v11 = &stru_283AFD1E0;
    }

    *buf = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_227904000, v10, OS_LOG_TYPE_INFO, "Transport version(%@) %@supported.", buf, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

- (NSArray)representedPlayerIDs
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__14;
  v9 = __Block_byref_object_dispose__14;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__GKTransportContext_representedPlayerIDs__block_invoke;
  v4[3] = &unk_2785DEA90;
  v4[4] = self;
  v4[5] = &v5;
  [(GKTransportContext *)self performUpdateSync:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __42__GKTransportContext_representedPlayerIDs__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lobbyParticipants];
  v3 = [v2 allObjects];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__GKTransportContext_representedPlayerIDs__block_invoke_2;
  v7[3] = &unk_2785E12C0;
  v7[4] = *(a1 + 32);
  v4 = [v3 _gkFilterWithBlock:v7];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

id __42__GKTransportContext_representedPlayerIDs__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 playerID];
  v5 = [*(a1 + 32) localPlayerID];
  if ([v4 isEqualToString:v5])
  {
    v6 = 0;
  }

  else
  {
    v6 = [v3 playerID];
  }

  return v6;
}

- (void)updateWithInfoFromTransport:(id)transport
{
  transportCopy = transport;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__GKTransportContext_updateWithInfoFromTransport___block_invoke;
  v6[3] = &unk_2785DEBA8;
  v7 = transportCopy;
  selfCopy = self;
  v5 = transportCopy;
  [(GKTransportContext *)self performUpdateSync:v6];
}

void __50__GKTransportContext_updateWithInfoFromTransport___block_invoke(uint64_t a1)
{
  obj = [*(a1 + 32) objectForKeyedSubscript:@"sid"];
  if (obj)
  {
    objc_storeStrong((*(a1 + 40) + 96), obj);
  }

  v2 = [*(a1 + 32) objectForKeyedSubscript:@"matchID"];
  if (v2)
  {
    objc_storeStrong((*(a1 + 40) + 88), v2);
  }

  v3 = [*(a1 + 32) objectForKeyedSubscript:@"addedGameParticipants"];
  if ([v3 count])
  {
    [*(a1 + 40) addGameParticipants:v3];
  }

  v4 = [*(a1 + 32) objectForKeyedSubscript:@"addedLobbyParticipants"];
  if ([v4 count])
  {
    [*(a1 + 40) addLobbyParticipants:v4];
  }

  v5 = [*(a1 + 32) objectForKeyedSubscript:@"removedGameParticipants"];
  if ([v5 count])
  {
    [*(a1 + 40) removeGameParticipantsIfExists:v5];
  }

  v6 = [*(a1 + 32) objectForKeyedSubscript:@"removedLobbyParticipants"];
  if ([v6 count])
  {
    [*(a1 + 40) removeLobbyParticipantsIfExists:v6];
  }
}

uint64_t __113__GKTransportContext_defaultTransportWithForceEnabledTransports_forceDisabledTransports_andHealthMonitorEnabled___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 version];
  if (v6 >= [v5 version])
  {
    v8 = [v4 version];
    v7 = v8 > [v5 version];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (void)shouldDelayConnectionForMatchResponse:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_227904000, a2, OS_LOG_TYPE_ERROR, "Invalid matched player: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)shouldDelayConnectionForMatchResponse:(void *)a3 .cold.2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = [a3 pseudonym];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)selectTransportWith:(void *)a1 .cold.1(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 selectedTransport];
  OUTLINED_FUNCTION_1_6(&dword_227904000, v5, v6, "Skip transport selection since we have already selected: %@.", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

void __72__GKTransportContext_updateForInviteInitiationWithOnlineConnectionData___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_0_6(&dword_227904000, v1, v2, "updateForInviteInitiationWithOnlineConnectionData: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __55__GKTransportContext_updateWithInviteInitiateResponse___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_0_6(&dword_227904000, v1, v2, "updateWithInviteInitiateResponse: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __62__GKTransportContext_updateForInviteAcceptWithConnectionData___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_0_6(&dword_227904000, v1, v2, "updateForInviteAcceptWithConnectionData: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __72__GKTransportContext_updateAfterAcceptingRemoveInvite_acceptedResponse___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_6();
  v7 = v3;
  _os_log_debug_impl(&dword_227904000, v4, OS_LOG_TYPE_DEBUG, "updateAfterAcceptingRemoveInvite: %@, acceptedResponse: %@", v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __57__GKTransportContext_updateAfterInviteeAcceptedUserInfo___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_0_6(&dword_227904000, v1, v2, "updateAfterInviteeAcceptedUserInfo: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __62__GKTransportContext_updateForMatchRequestWithConnectionData___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_0_6(&dword_227904000, v1, v2, "updateForMatchRequestWithConnectionData: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __58__GKTransportContext_updateForMatchResponse_serverHosted___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCABB0];
  v4 = *(a1 + 48);
  v5 = a2;
  v6 = [v3 numberWithBool:v4];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x16u);

  v12 = *MEMORY[0x277D85DE8];
}

void __103__GKTransportContext_updateWithForceEnabledTransports_forceDisabledTransports_andHealthMonitorEnabled___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = MEMORY[0x277CCABB0];
  v5 = *(a1 + 56);
  v6 = a2;
  v7 = [v4 numberWithBool:v5];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v8, v9, v10, v11, v12, 0x20u);

  v13 = *MEMORY[0x277D85DE8];
}

void __103__GKTransportContext_updateWithForceEnabledTransports_forceDisabledTransports_andHealthMonitorEnabled___block_invoke_cold_2(uint64_t *a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a2 + 40);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_6();
  v8 = v4;
  _os_log_debug_impl(&dword_227904000, v5, OS_LOG_TYPE_DEBUG, "Overriding transport versions with forceEnabledTransports: %@, forceDisabledTransports: %@", v7, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __103__GKTransportContext_updateWithForceEnabledTransports_forceDisabledTransports_andHealthMonitorEnabled___block_invoke_cold_3(void **a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a2;
  v4 = [v2 supportedTransports];
  OUTLINED_FUNCTION_1_6(&dword_227904000, v5, v6, "Supported transport versions: %@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

@end