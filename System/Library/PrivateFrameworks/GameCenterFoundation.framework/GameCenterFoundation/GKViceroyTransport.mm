@interface GKViceroyTransport
- (BOOL)connectToGuestPlayer:(id)player withHostPlayer:(id)hostPlayer;
- (BOOL)sendScopedData:(id)data toPlayers:(id)players dataMode:(int64_t)mode dataScope:(int64_t)scope transportContext:(id)context error:(id *)error;
- (BOOL)sendScopedDataToAll:(id)all dataMode:(int64_t)mode dataScope:(int64_t)scope transportContext:(id)context error:(id *)error;
- (GKTransportClientDelegate)clientDelegate;
- (GKViceroyTransport)initWithClientDelegate:(id)delegate matchDataDelegate:(id)dataDelegate daemonProxy:(id)proxy;
- (NSData)nearbyConnectionData;
- (id)enrichPeerDictionariesForPlayersConnection:(id)connection;
- (id)peerIdFromPlayer:(id)player;
- (id)playerIDFromPeerID:(id)d;
- (id)playerIDFromSession:(id)session;
- (id)voiceChatWithName:(id)name players:(id)players transportContext:(id)context;
- (void)acceptRelayResponse:(id)response playerID:(id)d;
- (void)chooseBestHostingPlayerWithTransportContext:(id)context completionHandler:(id)handler;
- (void)connectToNearbyPlayer:(id)player withConnectionData:(id)data;
- (void)connectToPlayersWithTransportContext:(id)context completionHandler:(id)handler;
- (void)dealloc;
- (void)disconnectAllWithTransportContext:(id)context completionHandler:(id)handler;
- (void)initSessionIfNeeded;
- (void)localConnectionDataWithCompletionHandler:(id)handler;
- (void)preemptRelay:(id)relay;
- (void)receiveData:(id)data fromPeer:(id)peer inSession:(id)session context:(void *)context;
- (void)session:(id)session connectionWithPeerFailed:(id)failed withError:(id)error;
- (void)session:(id)session didFailWithError:(id)error;
- (void)session:(id)session initiateRelay:(id)relay forPeer:(id)peer;
- (void)session:(id)session networkStatisticsChanged:(id)changed;
- (void)session:(id)session updateRelay:(id)relay forPeer:(id)peer;
@end

@implementation GKViceroyTransport

- (GKViceroyTransport)initWithClientDelegate:(id)delegate matchDataDelegate:(id)dataDelegate daemonProxy:(id)proxy
{
  delegateCopy = delegate;
  dataDelegateCopy = dataDelegate;
  proxyCopy = proxy;
  v30.receiver = self;
  v30.super_class = GKViceroyTransport;
  v11 = [(GKViceroyTransport *)&v30 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_weakClientDelegate, delegateCopy);
    v13 = objc_alloc(MEMORY[0x277D0C928]);
    v14 = +[GKLocalPlayer local];
    internal = [v14 internal];
    playerID = [internal playerID];
    v17 = [v13 initWithParticipantID:playerID];
    connection = v12->_connection;
    v12->_connection = v17;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    guestConnections = v12->_guestConnections;
    v12->_guestConnections = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    guestSessions = v12->_guestSessions;
    v12->_guestSessions = dictionary2;

    v23 = [[GKViceroyLeaderElector alloc] initWithMatchDataDelegate:dataDelegateCopy];
    leaderElector = v12->_leaderElector;
    v12->_leaderElector = v23;

    v25 = [GKViceroyRelay alloc];
    connection = [(GKViceroyTransport *)v12 connection];
    v27 = [(GKViceroyRelay *)v25 initWithClientDelegate:delegateCopy connection:connection matchDataDelegate:dataDelegateCopy daemonProxy:proxyCopy];
    relay = v12->_relay;
    v12->_relay = v27;
  }

  return v12;
}

- (void)initSessionIfNeeded
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  session = [a2 session];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_6(&dword_227904000, v5, v6, "[GKViceroyTransport] A new session (%p) has been created", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(GKViceroyTransport *)self setLeaderElector:0];
  [(GKViceroyTransport *)self setSession:0];
  [(GKViceroyTransport *)self setClientDelegate:0];
  v3.receiver = self;
  v3.super_class = GKViceroyTransport;
  [(GKViceroyTransport *)&v3 dealloc];
}

- (void)connectToNearbyPlayer:(id)player withConnectionData:(id)data
{
  v12[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  referenceKey = [player referenceKey];
  v11 = referenceKey;
  v12[0] = dataCopy;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  connection = [(GKViceroyTransport *)self connection];
  [connection connectParticipantsWithConnectionData:v8 withSessionInfo:0];

  [(GKViceroyTransport *)self initSessionIfNeeded];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)connectToPlayersWithTransportContext:(id)context completionHandler:(id)handler
{
  selfCopy = self;
  v34 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  handlerCopy = handler;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  peerDictionaries = [contextCopy peerDictionaries];
  v8 = [peerDictionaries countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(peerDictionaries);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        v13 = [v12 objectForKey:{@"peer-id", selfCopy}];
        v14 = [v12 objectForKey:@"peer-blob"];
        [dictionary setObject:v14 forKey:v13];
      }

      v9 = [peerDictionaries countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v9);
  }

  if (!os_log_GKGeneral)
  {
    v15 = GKOSLoggers();
  }

  v16 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v32 = dictionary;
    _os_log_impl(&dword_227904000, v16, OS_LOG_TYPE_INFO, "[GKViceroyTransport] Connecting to participants with connectionData %@", buf, 0xCu);
  }

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  sessionToken = [contextCopy sessionToken];

  if (sessionToken)
  {
    sessionToken2 = [contextCopy sessionToken];
    [dictionary2 setObject:sessionToken2 forKey:*MEMORY[0x277D0C918]];
  }

  cdxTicket = [contextCopy cdxTicket];

  if (cdxTicket)
  {
    cdxTicket2 = [contextCopy cdxTicket];
    [dictionary2 setObject:cdxTicket2 forKey:*MEMORY[0x277D0C910]];
  }

  connection = [v25 connection];
  [connection connectParticipantsWithConnectionData:dictionary withSessionInfo:dictionary2];

  [v25 initSessionIfNeeded];
  handlerCopy[2](handlerCopy, 0);

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)connectToGuestPlayer:(id)player withHostPlayer:(id)hostPlayer
{
  v28[1] = *MEMORY[0x277D85DE8];
  hostPlayerCopy = hostPlayer;
  internal = [player internal];
  playerID = [internal playerID];

  guestConnections = [(GKViceroyTransport *)self guestConnections];
  v10 = [guestConnections objectForKeyedSubscript:playerID];

  if (!v10)
  {
    v11 = [objc_alloc(MEMORY[0x277D0C928]) initWithParticipantID:playerID];
    connection = [(GKViceroyTransport *)self connection];
    getLocalConnectionDataForLocalGaming = [connection getLocalConnectionDataForLocalGaming];

    getLocalConnectionDataForLocalGaming2 = [v11 getLocalConnectionDataForLocalGaming];
    connection2 = [(GKViceroyTransport *)self connection];
    v27 = playerID;
    v28[0] = getLocalConnectionDataForLocalGaming2;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    [connection2 connectParticipantsWithConnectionData:v16 withSessionInfo:0];

    internal2 = [hostPlayerCopy internal];
    playerID2 = [internal2 playerID];
    v25 = playerID2;
    v26 = getLocalConnectionDataForLocalGaming;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    [v11 connectParticipantsWithConnectionData:v19 withSessionInfo:0];

    guestConnections2 = [(GKViceroyTransport *)self guestConnections];
    [guestConnections2 setObject:v11 forKeyedSubscript:playerID];

    [(GKViceroyTransport *)self initSessionIfNeeded];
    v21 = [[GKViceroySession alloc] initWithConnection:v11 delegate:self];
    guestSessions = [(GKViceroyTransport *)self guestSessions];
    [guestSessions setObject:v21 forKeyedSubscript:playerID];
  }

  v23 = *MEMORY[0x277D85DE8];
  return v10 == 0;
}

- (void)disconnectAllWithTransportContext:(id)context completionHandler:(id)handler
{
  v28 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "[GKViceroyTransport] disconnectAll", buf, 2u);
  }

  relay = [(GKViceroyTransport *)self relay];
  [relay disconnect];

  session = [(GKViceroyTransport *)self session];
  [session disconnectFromAllPeers];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  guestSessions = [(GKViceroyTransport *)self guestSessions];
  allValues = [guestSessions allValues];

  v14 = [allValues countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(allValues);
        }

        v18 = *(*(&v22 + 1) + 8 * i);
        [v18 disconnectFromAllPeers];
        [v18 setDataReceiveHandler:0 withContext:0];
        [v18 disconnectFromAllPeers];
        [v18 setDelegate:0];
        [v18 setPrivateDelegate:0];
      }

      v15 = [allValues countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v15);
  }

  guestSessions2 = [(GKViceroyTransport *)self guestSessions];
  [guestSessions2 removeAllObjects];

  guestConnections = [(GKViceroyTransport *)self guestConnections];
  [guestConnections removeAllObjects];

  handlerCopy[2](handlerCopy, 0);
  v21 = *MEMORY[0x277D85DE8];
}

- (id)enrichPeerDictionariesForPlayersConnection:(id)connection
{
  v25 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  selfBlob = [(GKViceroyTransport *)self selfBlob];
  *(&v18 + 1) = selfBlob;
  if (selfBlob)
  {
    *&v18 = [MEMORY[0x277D0C928] externalAddressForSelfConnectionData:selfBlob];
  }

  else
  {
    *&v18 = 0;
  }

  array = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = connectionCopy;
  v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 objectForKey:@"peer-id"];
        v13 = [(GKViceroyTransport *)self playerIDFromPeerID:v12];
        if (v13)
        {
          v14 = 1;
        }

        else
        {
          v14 = v18 != 0;
        }

        if (v14)
        {
          v15 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v11];
          [v15 setValue:*(&v18 + 1) forKey:@"self-blob"];
          [v15 setValue:v18 forKey:@"self-nat-ip"];
          [v15 setValue:v13 forKey:@"player-id"];
          [array addObject:v15];
        }

        else
        {
          [array addObject:v11];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)localConnectionDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(GKViceroyTransport *)self connection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__GKViceroyTransport_localConnectionDataWithCompletionHandler___block_invoke;
  v7[3] = &unk_2785DD870;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [connection getLocalConnectionDataWithCompletionHandler:v7];
}

void __63__GKViceroyTransport_localConnectionDataWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(a1 + 32) setSelfBlob:v5];
  }

  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      __63__GKViceroyTransport_localConnectionDataWithCompletionHandler___block_invoke_cold_1();
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (NSData)nearbyConnectionData
{
  connection = [(GKViceroyTransport *)self connection];
  getLocalConnectionDataForLocalGaming = [connection getLocalConnectionDataForLocalGaming];

  return getLocalConnectionDataForLocalGaming;
}

- (id)peerIdFromPlayer:(id)player
{
  playerCopy = player;
  connection = [(GKViceroyTransport *)self connection];
  internal = [playerCopy internal];
  playerID = [internal playerID];
  v16 = 0;
  v8 = [connection convertParticipantID:playerID toPeerID:&v16];
  v9 = v16;

  v10 = os_log_GKGeneral;
  if (v8)
  {
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
      v10 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(GKViceroyTransport *)v9 peerIdFromPlayer:v10, playerCopy];
    }

    playerID2 = v9;
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
      v10 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(GKViceroyTransport *)v10 peerIdFromPlayer:playerCopy];
    }

    internal2 = [playerCopy internal];
    playerID2 = [internal2 playerID];
  }

  return playerID2;
}

- (id)playerIDFromPeerID:(id)d
{
  dCopy = d;
  connection = [(GKViceroyTransport *)self connection];
  v14 = 0;
  v6 = [connection convertPeerID:dCopy toParticipantID:&v14];
  v7 = v14;

  v8 = os_log_GKGeneral;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
      v8 = os_log_GKGeneral;
    }

    v10 = v7;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [GKViceroyTransport playerIDFromPeerID:];
      v10 = v7;
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
      v8 = os_log_GKGeneral;
    }

    v10 = dCopy;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [GKViceroyTransport playerIDFromPeerID:];
      v10 = dCopy;
    }
  }

  v12 = v10;

  return v10;
}

- (id)playerIDFromSession:(id)session
{
  v22 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  guestSessions = [(GKViceroyTransport *)self guestSessions];
  allKeys = [guestSessions allKeys];

  v7 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        guestSessions2 = [(GKViceroyTransport *)self guestSessions];
        v13 = [guestSessions2 objectForKeyedSubscript:v11];

        if ([v13 isWrappingGKSession:sessionCopy])
        {
          v14 = v11;

          goto LABEL_11;
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)sendScopedData:(id)data toPlayers:(id)players dataMode:(int64_t)mode dataScope:(int64_t)scope transportContext:(id)context error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  playersCopy = players;
  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(playersCopy, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = playersCopy;
  v16 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v29;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [(GKViceroyTransport *)self peerIdFromPlayer:*(*(&v28 + 1) + 8 * i)];
        if (v20)
        {
          [v14 addObject:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v17);
  }

  if ([v14 count])
  {
    session = [(GKViceroyTransport *)self session];
    v22 = [session sendData:dataCopy toPeers:v14 withDataMode:mode error:error];
  }

  else
  {
    v23 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v24 = GKOSLoggers();
      v23 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 0;
      _os_log_impl(&dword_227904000, v23, OS_LOG_TYPE_DEFAULT, "[GKViceroyTransport] sendData toPlayers: not sending to any peers", v27, 2u);
    }

    v22 = 1;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v22;
}

- (BOOL)sendScopedDataToAll:(id)all dataMode:(int64_t)mode dataScope:(int64_t)scope transportContext:(id)context error:(id *)error
{
  allCopy = all;
  session = [(GKViceroyTransport *)self session];
  LOBYTE(error) = [session sendDataToAllPeers:allCopy withDataMode:mode error:error];

  return error;
}

- (void)receiveData:(id)data fromPeer:(id)peer inSession:(id)session context:(void *)context
{
  sessionCopy = session;
  peerCopy = peer;
  dataCopy = data;
  v11 = [[GKMatchPacket alloc] initWithMessage:dataCopy];

  v12 = [(GKViceroyTransport *)self playerIDFromPeerID:peerCopy];

  if ([(GKMatchPacket *)v11 valid]&& [(GKMatchPacket *)v11 packetType]== 4)
  {
    leaderElector = [(GKViceroyTransport *)self leaderElector];
    data = [(GKMatchPacket *)v11 data];
    [leaderElector receivedChooseHostData:data fromPlayerID:v12];
  }

  else
  {
    session = [(GKViceroyTransport *)self session];
    if ([session isWrappingGKSession:sessionCopy])
    {
      leaderElector = 0;
    }

    else
    {
      leaderElector = [(GKViceroyTransport *)self playerIDFromSession:sessionCopy];
    }

    data = [(GKViceroyTransport *)self clientDelegate];
    [data transportDidReceivePacket:v11 fromPlayerID:v12 remoteRecipientID:leaderElector];
  }
}

- (void)acceptRelayResponse:(id)response playerID:(id)d
{
  dCopy = d;
  responseCopy = response;
  relay = [(GKViceroyTransport *)self relay];
  [relay acceptRelayResponse:responseCopy playerID:dCopy];
}

- (void)preemptRelay:(id)relay
{
  relayCopy = relay;
  relay = [(GKViceroyTransport *)self relay];
  [relay preemptRelay:relayCopy];
}

- (void)session:(id)session connectionWithPeerFailed:(id)failed withError:(id)error
{
  v26 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  failedCopy = failed;
  errorCopy = error;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
  }

  v12 = os_log_GKError;
  if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
  {
    v15 = v12;
    sessionID = [sessionCopy sessionID];
    v17 = [(GKViceroyTransport *)self playerIDFromPeerID:failedCopy];
    v18 = 138413058;
    v19 = sessionID;
    v20 = 2112;
    v21 = failedCopy;
    v22 = 2112;
    v23 = v17;
    v24 = 2112;
    v25 = errorCopy;
    _os_log_error_impl(&dword_227904000, v15, OS_LOG_TYPE_ERROR, "[GKViceroyTransport] session (%@) connection with peerID: %@ playerID: %@ failed %@", &v18, 0x2Au);
  }

  clientDelegate = [(GKViceroyTransport *)self clientDelegate];
  [clientDelegate connectionDidFailWithError:errorCopy];

  [(GKViceroyTransport *)self session:sessionCopy peer:failedCopy didChangeState:3];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)session didFailWithError:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  errorCopy = error;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKError;
  if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
  {
    v12 = v9;
    sessionID = [sessionCopy sessionID];
    v14 = [(GKViceroyTransport *)self playerIDFromSession:sessionCopy];
    v15 = 138412802;
    v16 = sessionID;
    v17 = 2112;
    v18 = v14;
    v19 = 2112;
    v20 = errorCopy;
    _os_log_error_impl(&dword_227904000, v12, OS_LOG_TYPE_ERROR, "[GKViceroyTransport] session (%@) did fail for playerID: %@ with error %@", &v15, 0x20u);
  }

  clientDelegate = [(GKViceroyTransport *)self clientDelegate];
  [clientDelegate transportDidFailWithError:errorCopy];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)session initiateRelay:(id)relay forPeer:(id)peer
{
  v17 = *MEMORY[0x277D85DE8];
  relayCopy = relay;
  v8 = [(GKViceroyTransport *)self playerIDFromPeerID:peer];
  v9 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
    v9 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v8;
    v15 = 2112;
    v16 = relayCopy;
    _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_DEFAULT, "[GKViceroyTransport] session initiateRelay for playerID: %@ - sessionInfo: %@", &v13, 0x16u);
  }

  relay = [(GKViceroyTransport *)self relay];
  [relay sessionDidInitiateOrUpdateRelay:relayCopy playerID:v8];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)session updateRelay:(id)relay forPeer:(id)peer
{
  v19 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  relayCopy = relay;
  peerCopy = peer;
  v10 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
    v10 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412802;
    v14 = sessionCopy;
    v15 = 2112;
    v16 = relayCopy;
    v17 = 2112;
    v18 = peerCopy;
    _os_log_impl(&dword_227904000, v10, OS_LOG_TYPE_DEFAULT, "[GKViceroyTransport] session: %@ updateRelay: %@ forPeer: %@", &v13, 0x20u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)session networkStatisticsChanged:(id)changed
{
  changedCopy = changed;
  leaderElector = [(GKViceroyTransport *)self leaderElector];
  v6 = +[GKLocalPlayer local];
  v7 = [(GKViceroyTransport *)self peerIdFromPlayer:v6];
  [leaderElector networkStatisticsDidChange:changedCopy localPlayerPeerID:v7];
}

- (void)chooseBestHostingPlayerWithTransportContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  leaderElector = [(GKViceroyTransport *)self leaderElector];
  [leaderElector chooseBestHostingPlayerWithCompletionHandler:handlerCopy];
}

- (id)voiceChatWithName:(id)name players:(id)players transportContext:(id)context
{
  playersCopy = players;
  nameCopy = name;
  session = [(GKViceroyTransport *)self session];
  v10 = [session voiceChatWithName:nameCopy players:playersCopy];

  return v10;
}

- (GKTransportClientDelegate)clientDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_weakClientDelegate);

  return WeakRetained;
}

void __63__GKViceroyTransport_localConnectionDataWithCompletionHandler___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_227904000, v0, OS_LOG_TYPE_ERROR, "[GKViceroyTransport] Getting local connection data encountered cdxError: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)peerIdFromPlayer:(void *)a1 .cold.1(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 internal];
  v5 = [v4 debugDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_6(&dword_227904000, v6, v7, "[GKViceroyTransport] PeerID for player: %@ not found and therefore, return playerID instead.", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)peerIdFromPlayer:(void *)a3 .cold.2(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 internal];
  v7 = [v6 debugDescription];
  v9 = 138412546;
  v10 = a1;
  v11 = 2112;
  v12 = v7;
  _os_log_debug_impl(&dword_227904000, v5, OS_LOG_TYPE_DEBUG, "[GKViceroyTransport] Return peerID: %@, converted from player: %@", &v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)playerIDFromPeerID:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_227904000, v0, OS_LOG_TYPE_DEBUG, "[GKViceroyTransport] Converted peerID: %@ not found and therefore, return it as playerID", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)playerIDFromPeerID:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_227904000, v1, OS_LOG_TYPE_DEBUG, "[GKViceroyTransport] Return playerID: %@, converted from peerID: %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end