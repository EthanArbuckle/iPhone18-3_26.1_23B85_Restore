@interface GKViceroyTransport
- (BOOL)connectToGuestPlayer:(id)a3 withHostPlayer:(id)a4;
- (BOOL)sendScopedData:(id)a3 toPlayers:(id)a4 dataMode:(int64_t)a5 dataScope:(int64_t)a6 transportContext:(id)a7 error:(id *)a8;
- (BOOL)sendScopedDataToAll:(id)a3 dataMode:(int64_t)a4 dataScope:(int64_t)a5 transportContext:(id)a6 error:(id *)a7;
- (GKTransportClientDelegate)clientDelegate;
- (GKViceroyTransport)initWithClientDelegate:(id)a3 matchDataDelegate:(id)a4 daemonProxy:(id)a5;
- (NSData)nearbyConnectionData;
- (id)enrichPeerDictionariesForPlayersConnection:(id)a3;
- (id)peerIdFromPlayer:(id)a3;
- (id)playerIDFromPeerID:(id)a3;
- (id)playerIDFromSession:(id)a3;
- (id)voiceChatWithName:(id)a3 players:(id)a4 transportContext:(id)a5;
- (void)acceptRelayResponse:(id)a3 playerID:(id)a4;
- (void)chooseBestHostingPlayerWithTransportContext:(id)a3 completionHandler:(id)a4;
- (void)connectToNearbyPlayer:(id)a3 withConnectionData:(id)a4;
- (void)connectToPlayersWithTransportContext:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)disconnectAllWithTransportContext:(id)a3 completionHandler:(id)a4;
- (void)initSessionIfNeeded;
- (void)localConnectionDataWithCompletionHandler:(id)a3;
- (void)preemptRelay:(id)a3;
- (void)receiveData:(id)a3 fromPeer:(id)a4 inSession:(id)a5 context:(void *)a6;
- (void)session:(id)a3 connectionWithPeerFailed:(id)a4 withError:(id)a5;
- (void)session:(id)a3 didFailWithError:(id)a4;
- (void)session:(id)a3 initiateRelay:(id)a4 forPeer:(id)a5;
- (void)session:(id)a3 networkStatisticsChanged:(id)a4;
- (void)session:(id)a3 updateRelay:(id)a4 forPeer:(id)a5;
@end

@implementation GKViceroyTransport

- (GKViceroyTransport)initWithClientDelegate:(id)a3 matchDataDelegate:(id)a4 daemonProxy:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v30.receiver = self;
  v30.super_class = GKViceroyTransport;
  v11 = [(GKViceroyTransport *)&v30 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_weakClientDelegate, v8);
    v13 = objc_alloc(MEMORY[0x277D0C928]);
    v14 = +[GKLocalPlayer local];
    v15 = [v14 internal];
    v16 = [v15 playerID];
    v17 = [v13 initWithParticipantID:v16];
    connection = v12->_connection;
    v12->_connection = v17;

    v19 = [MEMORY[0x277CBEB38] dictionary];
    guestConnections = v12->_guestConnections;
    v12->_guestConnections = v19;

    v21 = [MEMORY[0x277CBEB38] dictionary];
    guestSessions = v12->_guestSessions;
    v12->_guestSessions = v21;

    v23 = [[GKViceroyLeaderElector alloc] initWithMatchDataDelegate:v9];
    leaderElector = v12->_leaderElector;
    v12->_leaderElector = v23;

    v25 = [GKViceroyRelay alloc];
    v26 = [(GKViceroyTransport *)v12 connection];
    v27 = [(GKViceroyRelay *)v25 initWithClientDelegate:v8 connection:v26 matchDataDelegate:v9 daemonProxy:v10];
    relay = v12->_relay;
    v12->_relay = v27;
  }

  return v12;
}

- (void)initSessionIfNeeded
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 session];
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

- (void)connectToNearbyPlayer:(id)a3 withConnectionData:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 referenceKey];
  v11 = v7;
  v12[0] = v6;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v9 = [(GKViceroyTransport *)self connection];
  [v9 connectParticipantsWithConnectionData:v8 withSessionInfo:0];

  [(GKViceroyTransport *)self initSessionIfNeeded];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)connectToPlayersWithTransportContext:(id)a3 completionHandler:(id)a4
{
  v24 = self;
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v26 = a4;
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = [v5 peerDictionaries];
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v33 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        v13 = [v12 objectForKey:{@"peer-id", v24}];
        v14 = [v12 objectForKey:@"peer-blob"];
        [v6 setObject:v14 forKey:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v27 objects:v33 count:16];
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
    v32 = v6;
    _os_log_impl(&dword_227904000, v16, OS_LOG_TYPE_INFO, "[GKViceroyTransport] Connecting to participants with connectionData %@", buf, 0xCu);
  }

  v17 = [MEMORY[0x277CBEB38] dictionary];
  v18 = [v5 sessionToken];

  if (v18)
  {
    v19 = [v5 sessionToken];
    [v17 setObject:v19 forKey:*MEMORY[0x277D0C918]];
  }

  v20 = [v5 cdxTicket];

  if (v20)
  {
    v21 = [v5 cdxTicket];
    [v17 setObject:v21 forKey:*MEMORY[0x277D0C910]];
  }

  v22 = [v25 connection];
  [v22 connectParticipantsWithConnectionData:v6 withSessionInfo:v17];

  [v25 initSessionIfNeeded];
  v26[2](v26, 0);

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)connectToGuestPlayer:(id)a3 withHostPlayer:(id)a4
{
  v28[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a3 internal];
  v8 = [v7 playerID];

  v9 = [(GKViceroyTransport *)self guestConnections];
  v10 = [v9 objectForKeyedSubscript:v8];

  if (!v10)
  {
    v11 = [objc_alloc(MEMORY[0x277D0C928]) initWithParticipantID:v8];
    v12 = [(GKViceroyTransport *)self connection];
    v13 = [v12 getLocalConnectionDataForLocalGaming];

    v14 = [v11 getLocalConnectionDataForLocalGaming];
    v15 = [(GKViceroyTransport *)self connection];
    v27 = v8;
    v28[0] = v14;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    [v15 connectParticipantsWithConnectionData:v16 withSessionInfo:0];

    v17 = [v6 internal];
    v18 = [v17 playerID];
    v25 = v18;
    v26 = v13;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    [v11 connectParticipantsWithConnectionData:v19 withSessionInfo:0];

    v20 = [(GKViceroyTransport *)self guestConnections];
    [v20 setObject:v11 forKeyedSubscript:v8];

    [(GKViceroyTransport *)self initSessionIfNeeded];
    v21 = [[GKViceroySession alloc] initWithConnection:v11 delegate:self];
    v22 = [(GKViceroyTransport *)self guestSessions];
    [v22 setObject:v21 forKeyedSubscript:v8];
  }

  v23 = *MEMORY[0x277D85DE8];
  return v10 == 0;
}

- (void)disconnectAllWithTransportContext:(id)a3 completionHandler:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
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
    _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "[GKViceroyTransport] disconnectAll", buf, 2u);
  }

  v10 = [(GKViceroyTransport *)self relay];
  [v10 disconnect];

  v11 = [(GKViceroyTransport *)self session];
  [v11 disconnectFromAllPeers];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = [(GKViceroyTransport *)self guestSessions];
  v13 = [v12 allValues];

  v14 = [v13 countByEnumeratingWithState:&v22 objects:v27 count:16];
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
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * i);
        [v18 disconnectFromAllPeers];
        [v18 setDataReceiveHandler:0 withContext:0];
        [v18 disconnectFromAllPeers];
        [v18 setDelegate:0];
        [v18 setPrivateDelegate:0];
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v15);
  }

  v19 = [(GKViceroyTransport *)self guestSessions];
  [v19 removeAllObjects];

  v20 = [(GKViceroyTransport *)self guestConnections];
  [v20 removeAllObjects];

  v7[2](v7, 0);
  v21 = *MEMORY[0x277D85DE8];
}

- (id)enrichPeerDictionariesForPlayersConnection:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(GKViceroyTransport *)self selfBlob];
  *(&v18 + 1) = v5;
  if (v5)
  {
    *&v18 = [MEMORY[0x277D0C928] externalAddressForSelfConnectionData:v5];
  }

  else
  {
    *&v18 = 0;
  }

  v6 = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v4;
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
          [v6 addObject:v15];
        }

        else
        {
          [v6 addObject:v11];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)localConnectionDataWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(GKViceroyTransport *)self connection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__GKViceroyTransport_localConnectionDataWithCompletionHandler___block_invoke;
  v7[3] = &unk_2785DD870;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 getLocalConnectionDataWithCompletionHandler:v7];
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
  v2 = [(GKViceroyTransport *)self connection];
  v3 = [v2 getLocalConnectionDataForLocalGaming];

  return v3;
}

- (id)peerIdFromPlayer:(id)a3
{
  v4 = a3;
  v5 = [(GKViceroyTransport *)self connection];
  v6 = [v4 internal];
  v7 = [v6 playerID];
  v16 = 0;
  v8 = [v5 convertParticipantID:v7 toPeerID:&v16];
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
      [(GKViceroyTransport *)v9 peerIdFromPlayer:v10, v4];
    }

    v12 = v9;
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
      [(GKViceroyTransport *)v10 peerIdFromPlayer:v4];
    }

    v14 = [v4 internal];
    v12 = [v14 playerID];
  }

  return v12;
}

- (id)playerIDFromPeerID:(id)a3
{
  v4 = a3;
  v5 = [(GKViceroyTransport *)self connection];
  v14 = 0;
  v6 = [v5 convertPeerID:v4 toParticipantID:&v14];
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

    v10 = v4;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [GKViceroyTransport playerIDFromPeerID:];
      v10 = v4;
    }
  }

  v12 = v10;

  return v10;
}

- (id)playerIDFromSession:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(GKViceroyTransport *)self guestSessions];
  v6 = [v5 allKeys];

  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [(GKViceroyTransport *)self guestSessions];
        v13 = [v12 objectForKeyedSubscript:v11];

        if ([v13 isWrappingGKSession:v4])
        {
          v14 = v11;

          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (BOOL)sendScopedData:(id)a3 toPlayers:(id)a4 dataMode:(int64_t)a5 dataScope:(int64_t)a6 transportContext:(id)a7 error:(id *)a8
{
  v33 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v13, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = v13;
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
    v21 = [(GKViceroyTransport *)self session];
    v22 = [v21 sendData:v12 toPeers:v14 withDataMode:a5 error:a8];
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

- (BOOL)sendScopedDataToAll:(id)a3 dataMode:(int64_t)a4 dataScope:(int64_t)a5 transportContext:(id)a6 error:(id *)a7
{
  v10 = a3;
  v11 = [(GKViceroyTransport *)self session];
  LOBYTE(a7) = [v11 sendDataToAllPeers:v10 withDataMode:a4 error:a7];

  return a7;
}

- (void)receiveData:(id)a3 fromPeer:(id)a4 inSession:(id)a5 context:(void *)a6
{
  v16 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[GKMatchPacket alloc] initWithMessage:v10];

  v12 = [(GKViceroyTransport *)self playerIDFromPeerID:v9];

  if ([(GKMatchPacket *)v11 valid]&& [(GKMatchPacket *)v11 packetType]== 4)
  {
    v13 = [(GKViceroyTransport *)self leaderElector];
    v14 = [(GKMatchPacket *)v11 data];
    [v13 receivedChooseHostData:v14 fromPlayerID:v12];
  }

  else
  {
    v15 = [(GKViceroyTransport *)self session];
    if ([v15 isWrappingGKSession:v16])
    {
      v13 = 0;
    }

    else
    {
      v13 = [(GKViceroyTransport *)self playerIDFromSession:v16];
    }

    v14 = [(GKViceroyTransport *)self clientDelegate];
    [v14 transportDidReceivePacket:v11 fromPlayerID:v12 remoteRecipientID:v13];
  }
}

- (void)acceptRelayResponse:(id)a3 playerID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKViceroyTransport *)self relay];
  [v8 acceptRelayResponse:v7 playerID:v6];
}

- (void)preemptRelay:(id)a3
{
  v4 = a3;
  v5 = [(GKViceroyTransport *)self relay];
  [v5 preemptRelay:v4];
}

- (void)session:(id)a3 connectionWithPeerFailed:(id)a4 withError:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
  }

  v12 = os_log_GKError;
  if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
  {
    v15 = v12;
    v16 = [v8 sessionID];
    v17 = [(GKViceroyTransport *)self playerIDFromPeerID:v9];
    v18 = 138413058;
    v19 = v16;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v17;
    v24 = 2112;
    v25 = v10;
    _os_log_error_impl(&dword_227904000, v15, OS_LOG_TYPE_ERROR, "[GKViceroyTransport] session (%@) connection with peerID: %@ playerID: %@ failed %@", &v18, 0x2Au);
  }

  v13 = [(GKViceroyTransport *)self clientDelegate];
  [v13 connectionDidFailWithError:v10];

  [(GKViceroyTransport *)self session:v8 peer:v9 didChangeState:3];
  v14 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)a3 didFailWithError:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKError;
  if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
  {
    v12 = v9;
    v13 = [v6 sessionID];
    v14 = [(GKViceroyTransport *)self playerIDFromSession:v6];
    v15 = 138412802;
    v16 = v13;
    v17 = 2112;
    v18 = v14;
    v19 = 2112;
    v20 = v7;
    _os_log_error_impl(&dword_227904000, v12, OS_LOG_TYPE_ERROR, "[GKViceroyTransport] session (%@) did fail for playerID: %@ with error %@", &v15, 0x20u);
  }

  v10 = [(GKViceroyTransport *)self clientDelegate];
  [v10 transportDidFailWithError:v7];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)a3 initiateRelay:(id)a4 forPeer:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = [(GKViceroyTransport *)self playerIDFromPeerID:a5];
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
    v16 = v7;
    _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_DEFAULT, "[GKViceroyTransport] session initiateRelay for playerID: %@ - sessionInfo: %@", &v13, 0x16u);
  }

  v11 = [(GKViceroyTransport *)self relay];
  [v11 sessionDidInitiateOrUpdateRelay:v7 playerID:v8];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)a3 updateRelay:(id)a4 forPeer:(id)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
    v10 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412802;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_227904000, v10, OS_LOG_TYPE_DEFAULT, "[GKViceroyTransport] session: %@ updateRelay: %@ forPeer: %@", &v13, 0x20u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)session:(id)a3 networkStatisticsChanged:(id)a4
{
  v5 = a4;
  v8 = [(GKViceroyTransport *)self leaderElector];
  v6 = +[GKLocalPlayer local];
  v7 = [(GKViceroyTransport *)self peerIdFromPlayer:v6];
  [v8 networkStatisticsDidChange:v5 localPlayerPeerID:v7];
}

- (void)chooseBestHostingPlayerWithTransportContext:(id)a3 completionHandler:(id)a4
{
  v5 = a4;
  v6 = [(GKViceroyTransport *)self leaderElector];
  [v6 chooseBestHostingPlayerWithCompletionHandler:v5];
}

- (id)voiceChatWithName:(id)a3 players:(id)a4 transportContext:(id)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [(GKViceroyTransport *)self session];
  v10 = [v9 voiceChatWithName:v8 players:v7];

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