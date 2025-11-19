@interface GKMatch
- (BOOL)sendData:(NSData *)data toPlayers:(NSArray *)playerIDs withDataMode:(GKMatchSendDataMode)mode error:(NSError *)error;
- (BOOL)sendData:(NSData *)data toPlayers:(NSArray *)players dataMode:(GKMatchSendDataMode)mode error:(NSError *)error;
- (BOOL)sendDataToAllPlayers:(NSData *)data withDataMode:(GKMatchSendDataMode)mode error:(NSError *)error;
- (GKMatch)initWithMatchmaker:(id)a3;
- (GKMatch)initWithTransport:(id)a3 context:(id)a4 reporter:(id)a5 matchmaker:(id)a6;
- (GKMatchDelegatePrivate)inviteDelegate;
- (GKMatchmaker)matchmaker;
- (GKVoiceChat)voiceChatWithName:(NSString *)name;
- (NSArray)guestPlayers;
- (NSArray)playerIDs;
- (NSArray)players;
- (NSDictionary)playerProperties;
- (NSDictionary)properties;
- (id)allIDs;
- (id)connectedPlayers;
- (id)dataFromBase64String:(id)a3;
- (id)delegate;
- (id)description;
- (id)getConnectionContextForPlayerID:(id)a3;
- (id)makeInviteMessageDoneData;
- (id)matchPacketWithPacketType:(unsigned __int8)a3 sequence:(int64_t)a4;
- (id)nearbyConnectionData;
- (id)pendingInviteesOfLocalPlayer;
- (id)playerFromID:(id)a3 includingLocal:(BOOL)a4;
- (id)stringForGKPlayerConnectionState:(int64_t)a3;
- (id)updateConnectionInfo:(id)a3 forPlayerID:(id)a4;
- (int64_t)sequenceFromPacket:(id)a3;
- (unint64_t)currentPlayerCount;
- (unint64_t)currentPlayerCountIncludingLocalPlayer;
- (void)_delegate:(id)a3 didReceiveData:(id)a4 forRecipient:(id)a5 fromPlayer:(id)a6;
- (void)acceptRelayResponse:(id)a3 player:(id)a4;
- (void)addPlayerToGroup:(id)a3;
- (void)addPlayers:(id)a3;
- (void)applicationDidEnterBackground:(id)a3;
- (void)applicationWillEnterForeground:(id)a3;
- (void)applicationWillTerminateNotification:(id)a3;
- (void)cancelPendingConnectionCheckWithReason:(id)a3;
- (void)chooseBestHostPlayerWithCompletionHandler:(void *)completionHandler;
- (void)chooseBestHostingPlayerWithCompletionHandler:(void *)completionHandler;
- (void)cleanupForTerminationWithReason:(int64_t)a3;
- (void)clearSessionWithReason:(int64_t)a3;
- (void)conditionallyReinvitePlayer:(id)a3 sessionToken:(id)a4;
- (void)conditionallyRelaunchPlayer:(id)a3;
- (void)connectToGuestPlayer:(id)a3 withHostPlayer:(id)a4;
- (void)connectToNearbyPlayer:(id)a3 withConnectionData:(id)a4;
- (void)connectToPlayers:(id)a3 version:(unsigned __int8)a4 invitedByLocalPlayer:(BOOL)a5 completionHandler:(id)a6;
- (void)connectionDidChangeWithState:(int)a3 playerID:(id)a4;
- (void)connectionDidFailWithError:(id)a3;
- (void)dealloc;
- (void)deferStateCallbackForPlayer:(id)a3 state:(int64_t)a4;
- (void)deliverData:(id)a3 forRecipient:(id)a4 fromPlayer:(id)a5;
- (void)disconnect;
- (void)getLocalConnectionDataWithCompletionHandler:(id)a3;
- (void)localPlayerDidChange:(id)a3;
- (void)monitorStatsUpdated:(id)a3;
- (void)playerIDs;
- (void)preLoadInviter:(id)a3 sessionToken:(id)a4;
- (void)preemptRelay:(id)a3;
- (void)promptRadarAndRequestRemoteLogsWithDescriptionAddition:(id)a3;
- (void)putMultiplayerGroup;
- (void)queueData:(id)a3 withEventQueueForPlayer:(id)a4 forRecipient:(id)a5;
- (void)receivedPlayerSyncData:(id)a3;
- (void)refreshPendingConnectionCheckIfNeeded;
- (void)reinviteeAcceptedNotification:(id)a3;
- (void)reinviteeDeclinedNotification:(id)a3;
- (void)relayDidReceivePushData:(id)a3 completionHandler:(id)a4;
- (void)rematchWithCompletionHandler:(void *)completionHandler;
- (void)retryLimitHit;
- (void)sendConnectingStateCallbackToDelegate:(id)a3 forPlayers:(id)a4;
- (void)sendInviteData:(id)a3;
- (void)sendInviteData:(id)a3 withScope:(int64_t)a4;
- (void)sendPingTo:(id)a3 sequence:(int64_t)a4;
- (void)sendPongTo:(id)a3 sequence:(int64_t)a4;
- (void)sendQueuedPacketsForPlayer:(id)a3;
- (void)sendQueuedStatesAndPackets;
- (void)sendStateCallbackForPlayer:(id)a3 state:(int64_t)a4;
- (void)sendStateCallbackToDelegate:(id)a3 forPlayer:(id)a4 state:(int64_t)a5;
- (void)sendVersionData:(unsigned __int8)a3;
- (void)sendVersionData:(unsigned __int8)a3 toPlayer:(id)a4;
- (void)setAutomatchPlayerCount:(int64_t)a3;
- (void)setDelegate:(id)delegate;
- (void)setInitiallyStarted:(BOOL)a3;
- (void)setInviteDelegate:(id)a3;
- (void)setupWithTransport:(id)a3 context:(id)a4 reporter:(id)a5 matchmaker:(id)a6;
- (void)syncPlayers:(id)a3 forJoinType:(int)a4 toInvitees:(id)a5;
- (void)transportDidFailWithError:(id)a3;
- (void)transportDidReceivePacket:(id)a3 fromPlayerID:(id)a4 remoteRecipientID:(id)a5;
- (void)transportDidUpdateWithInfo:(id)a3;
- (void)updateEventQueueForInviter:(id)a3;
- (void)updateProperties:(id)a3 playerID:(id)a4;
- (void)updateRematchID;
- (void)updateStateForPlayer:(id)a3 state:(int64_t)a4;
- (void)withEventQueueForPlayer:(id)a3 create:(id)a4 perform:(id)a5;
- (void)withEventQueueForPlayer:(id)a3 createIfNeeded:(BOOL)a4 perform:(id)a5;
@end

@implementation GKMatch

- (id)description
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p expected count: %u seqnum: %d\n", v5, self, -[GKMatch expectedPlayerCount](self, "expectedPlayerCount"), -[GKMatch packetSequenceNumber](self, "packetSequenceNumber")];

  obj = self->_playerEventQueues;
  objc_sync_enter(obj);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [(NSMutableDictionary *)self->_playerEventQueues allKeys];
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        [v3 appendFormat:@"    %@:", v10];
        v11 = [(NSMutableDictionary *)self->_playerEventQueues objectForKey:v10];
        v12 = v11;
        if (v11)
        {
          v13 = [v11 playerState];
          if (v13 >= 3)
          {
            goto LABEL_11;
          }

          v14 = off_2785DF318[v13];
        }

        else
        {
          v14 = @"?no queue?";
        }

        [v3 appendString:v14];
LABEL_11:
      }

      v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  objc_sync_exit(obj);
  v15 = [(GKMatch *)self reinvitedPlayers];
  v16 = [(GKMatch *)self properties];
  v17 = [(GKMatch *)self playerProperties];
  [v3 appendFormat:@"reinvitedPlayers:%@, properties:%@, playerProperties:%@>", v15, v16, v17];

  v18 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)pendingInviteesOfLocalPlayer
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = self->_playerEventQueues;
  objc_sync_enter(v3);
  v4 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(NSMutableDictionary *)self->_playerEventQueues allValues];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 invitedByLocalPlayer] && objc_msgSend(v9, "playerState") != 1)
        {
          v10 = [v9 player];
          [v4 addObject:v10];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = [v4 copy];
  objc_sync_exit(v3);

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)refreshPendingConnectionCheckIfNeeded
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __48__GKMatch_refreshPendingConnectionCheckIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [*(a1 + 32) transportContext];
  v6 = [v5 daemonProxy];
  v7 = [WeakRetained transportContext];
  v8 = [v7 formAnInviteUpdate];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__GKMatch_refreshPendingConnectionCheckIfNeeded__block_invoke_2;
  v10[3] = &unk_2785DE008;
  v11 = v3;
  v9 = v3;
  [v6 sendInvitationUpdate:v8 handler:v10];
}

void __48__GKMatch_refreshPendingConnectionCheckIfNeeded__block_invoke_2(uint64_t a1, void *a2)
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
      __48__GKMatch_refreshPendingConnectionCheckIfNeeded__block_invoke_2_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

BOOL __48__GKMatch_refreshPendingConnectionCheckIfNeeded__block_invoke_176(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained pendingInviteesOfLocalPlayer];
  v3 = [v2 count];

  if (!v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      __48__GKMatch_refreshPendingConnectionCheckIfNeeded__block_invoke_176_cold_1();
    }
  }

  return v3 == 0;
}

- (void)setDelegate:(id)delegate
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = delegate;
  objc_storeWeak(&self->_delegate, v4);
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "Set match delegate to: %@", &v8, 0xCu);
  }

  if (v4)
  {
    [(GKMatch *)self sendQueuedStatesAndPackets];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (NSArray)players
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = self->_playerEventQueues;
  objc_sync_enter(v4);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(NSMutableDictionary *)self->_playerEventQueues allValues];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 playerState] == 1)
        {
          v10 = [v9 player];
          [v3 addObject:v10];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  objc_sync_exit(v4);
  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSDictionary)properties
{
  v2 = [(GKMatch *)self propertiesByPlayerID];
  v3 = +[GKLocalPlayer local];
  v4 = [v3 internal];
  v5 = [v4 playerID];
  v6 = [v2 objectForKey:v5];

  return v6;
}

- (NSDictionary)playerProperties
{
  v34 = *MEMORY[0x277D85DE8];
  v25 = [MEMORY[0x277CBEB38] dictionary];
  v26 = self;
  v3 = [(GKMatch *)self propertiesByPlayerID];
  v4 = [v3 allObjects];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v24 = v4;
  v5 = [v4 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v28;
    *&v7 = 138412290;
    v23 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = +[GKLocalPlayer local];
        v13 = [v12 internal];
        v14 = [v13 playerID];
        v15 = [v11 isEqualToString:v14];

        if ((v15 & 1) == 0)
        {
          v16 = [(GKMatch *)v26 playerFromID:v11];
          if (v16)
          {
            v17 = [v24 objectForKeyedSubscript:v11];
            [v25 setObject:v17 forKey:v16];
          }

          else
          {
            if (!os_log_GKGeneral)
            {
              v18 = GKOSLoggers();
            }

            v19 = os_log_GKMatch;
            if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
            {
              *buf = v23;
              v32 = v11;
              _os_log_impl(&dword_227904000, v19, OS_LOG_TYPE_INFO, "Ignoring properties for unknown playerID: %@", buf, 0xCu);
            }
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v8);
  }

  if ([v25 count])
  {
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v25];
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (BOOL)sendData:(NSData *)data toPlayers:(NSArray *)players dataMode:(GKMatchSendDataMode)mode error:(NSError *)error
{
  v10 = data;
  v11 = players;
  v12 = v10;
  if ([(GKMatch *)self version])
  {
    if (mode == GKMatchSendDataUnreliable)
    {
      v13 = 64;
    }

    else
    {
      v13 = (mode == GKMatchSendDataReliable) << 7;
    }

    v12 = [(GKMatch *)self packet:v13 data:v10];
  }

  v14 = [(GKMatch *)self transport];
  v15 = [(GKMatch *)self transportContext];
  v16 = [v14 sendScopedData:v12 toPlayers:v11 dataMode:mode dataScope:0 transportContext:v15 error:error];

  if (error && *error)
  {
    if (!os_log_GKGeneral)
    {
      v17 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      [GKMatch sendData:? toPlayers:? dataMode:? error:?];
    }
  }

  return v16;
}

- (BOOL)sendDataToAllPlayers:(NSData *)data withDataMode:(GKMatchSendDataMode)mode error:(NSError *)error
{
  v8 = data;
  v9 = [(GKMatch *)self transportContext];
  v10 = [v9 shouldFilterGuestWhenSendingToAll];

  if (v10)
  {
    v11 = [(GKMatch *)self players];
    v12 = [(NSData *)v11 _gkNonGuestPlayersFromPlayers];
    v13 = [(GKMatch *)self sendData:v8 toPlayers:v12 dataMode:mode error:error];
  }

  else
  {
    v11 = v8;
    if ([(GKMatch *)self version])
    {
      if (mode == GKMatchSendDataUnreliable)
      {
        v14 = 64;
      }

      else
      {
        v14 = (mode == GKMatchSendDataReliable) << 7;
      }

      v15 = [(GKMatch *)self packet:v14 data:v11];

      v11 = v15;
    }

    v16 = [(GKMatch *)self transport];
    v17 = [(GKMatch *)self transportContext];
    v13 = [v16 sendScopedDataToAll:v11 dataMode:mode dataScope:0 transportContext:v17 error:error];

    if (error && *error)
    {
      if (!os_log_GKGeneral)
      {
        v18 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
      {
        [GKMatch sendDataToAllPlayers:? withDataMode:? error:?];
      }
    }
  }

  return v13;
}

- (GKVoiceChat)voiceChatWithName:(NSString *)name
{
  v4 = name;
  v5 = +[GKPreferences shared];
  if (![v5 shouldAllowCustomCommunication])
  {
    v10 = 0;
    goto LABEL_5;
  }

  v6 = +[GKPreferences shared];
  v7 = [v6 multiplayerAllowedPlayerType];

  if (v7)
  {
    v5 = [(GKMatch *)self transport];
    v8 = [(GKMatch *)self players];
    v9 = [(GKMatch *)self transportContext];
    v10 = [v5 voiceChatWithName:v4 players:v8 transportContext:v9];

LABEL_5:
    goto LABEL_6;
  }

  v10 = 0;
LABEL_6:

  return v10;
}

- (void)chooseBestHostingPlayerWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v5 = [(GKMatch *)self transport];
  v6 = [(GKMatch *)self transportContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__GKMatch_chooseBestHostingPlayerWithCompletionHandler___block_invoke;
  v8[3] = &unk_2785DEE28;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v5 chooseBestHostingPlayerWithTransportContext:v6 completionHandler:v8];
}

void __56__GKMatch_chooseBestHostingPlayerWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v5 = [*(a1 + 32) playerFromID:a2 includingLocal:1];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = *(a1 + 40);
    (*(*(a1 + 40) + 16))();
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __56__GKMatch_chooseBestHostingPlayerWithCompletionHandler___block_invoke_cold_1();
    }
  }
}

- (void)rematchWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  v5 = [(GKMatch *)self matchmaker];
  [v5 findRematchForMatch:self completionHandler:v4];
}

- (void)disconnect
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_227904000, v4, OS_LOG_TYPE_INFO, "GKMatch: disconnect", v6, 2u);
  }

  [(GKMatch *)self clearSessionWithReason:2];
  v5 = [(GKMatch *)self matchmaker];
  [v5 leaveGroupActivity];
}

- (void)promptRadarAndRequestRemoteLogsWithDescriptionAddition:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v30 = a3;
  v3 = +[GKPreferences shared];
  v4 = [v3 isInternalBuild];

  if (v4)
  {
    if ([(GKMatch *)self canPromptTapToRadar])
    {
      if (!os_log_GKGeneral)
      {
        v5 = GKOSLoggers();
      }

      v6 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v43 = v30;
        _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "Starting prompting TTR then requesting remote logs with description: %@", buf, 0xCu);
      }

      v31 = [MEMORY[0x277CBEB18] array];
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v7 = [(GKMatch *)self transportContext];
      v8 = [v7 playersAndPushTokens];

      v9 = [v8 countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v9)
      {
        v10 = *v36;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v36 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = *(*(&v35 + 1) + 8 * i);
            v13 = [v12 playerID];
            v14 = [v12 pushToken];
            v15 = v14;
            if (v13)
            {
              v16 = v14 == 0;
            }

            else
            {
              v16 = 1;
            }

            if (!v16)
            {
              v39[0] = @"playerID";
              v39[1] = @"pushToken";
              v40[0] = v13;
              v40[1] = v14;
              v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
              [v31 addObject:v17];
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v35 objects:v41 count:16];
        }

        while (v9);
      }

      v18 = MEMORY[0x277CCAAB0];
      v19 = [v31 copy];
      v34 = 0;
      v20 = [v18 archivedDataWithRootObject:v19 requiringSecureCoding:1 error:&v34];
      v21 = v34;

      if (v21)
      {
        if (!os_log_GKGeneral)
        {
          v22 = GKOSLoggers();
        }

        if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
        {
          [GKMatch promptRadarAndRequestRemoteLogsWithDescriptionAddition:];
        }
      }

      else
      {
        v25 = [v20 base64EncodedStringWithOptions:0];
        objc_initWeak(buf, self);
        v26 = [(GKMatch *)self transportContext];
        v27 = [v26 daemonProxy];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __66__GKMatch_promptRadarAndRequestRemoteLogsWithDescriptionAddition___block_invoke;
        v32[3] = &unk_2785DEE50;
        objc_copyWeak(&v33, buf);
        [v27 fileMultiplayerTTRWithCallBackIdentifier:v25 descriptionAddition:v30 handler:v32];

        objc_destroyWeak(&v33);
        objc_destroyWeak(buf);
      }
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
        *buf = 0;
        _os_log_impl(&dword_227904000, v24, OS_LOG_TYPE_INFO, "Already prompted tap to radar. Skip.", buf, 2u);
      }
    }
  }

  v28 = *MEMORY[0x277D85DE8];
}

void __66__GKMatch_promptRadarAndRequestRemoteLogsWithDescriptionAddition___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setCanPromptTapToRadar:0];
}

- (NSArray)playerIDs
{
  v19[1] = *MEMORY[0x277D85DE8];
  if (GKApplicationLinkedOnOrAfter(917504, 659456))
  {
    if (!os_log_GKGeneral)
    {
      v3 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
    {
      [GKMatch playerIDs];
    }

    v19[0] = @"playerID is no longer available";
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  }

  else
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [(GKMatch *)self players];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v14 + 1) + 8 * i) internal];
          v11 = [v10 playerID];
          [v4 addObject:v11];
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)chooseBestHostPlayerWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  if (v4)
  {
    if (GKApplicationLinkedOnOrAfter(917504, 659456))
    {
      if (!os_log_GKGeneral)
      {
        v5 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
      {
        [GKMatch chooseBestHostPlayerWithCompletionHandler:];
      }

      v4[2](v4, @"playerID is no longer available");
    }

    else
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __53__GKMatch_chooseBestHostPlayerWithCompletionHandler___block_invoke;
      v6[3] = &unk_2785DEE78;
      v7 = v4;
      [(GKMatch *)self chooseBestHostingPlayerWithCompletionHandler:v6];
    }
  }
}

void __53__GKMatch_chooseBestHostPlayerWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 internal];
  v3 = [v4 playerID];
  (*(v2 + 16))(v2, v3);
}

- (BOOL)sendData:(NSData *)data toPlayers:(NSArray *)playerIDs withDataMode:(GKMatchSendDataMode)mode error:(NSError *)error
{
  v10 = data;
  v11 = playerIDs;
  if (!GKApplicationLinkedOnOrAfter(917504, 659456))
  {
    v15 = [(GKMatch *)self players];
    v16 = [v15 _gkMapDictionaryWithKeyPath:@"playerID"];

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __49__GKMatch_sendData_toPlayers_withDataMode_error___block_invoke;
    v19[3] = &unk_2785DEEA0;
    v20 = v16;
    v13 = v16;
    v17 = [(NSArray *)v11 _gkFilterWithBlock:v19];
    v14 = [(GKMatch *)self sendData:v10 toPlayers:v17 dataMode:mode error:error];

    goto LABEL_8;
  }

  if (!os_log_GKGeneral)
  {
    v12 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
  {
    [GKMatch sendData:toPlayers:withDataMode:error:];
    if (error)
    {
      goto LABEL_6;
    }

LABEL_11:
    v14 = 0;
    goto LABEL_9;
  }

  if (!error)
  {
    goto LABEL_11;
  }

LABEL_6:
  v13 = [MEMORY[0x277CCA9B8] userErrorForCode:34 underlyingError:0];
  v14 = 0;
  *error = v13;
LABEL_8:

LABEL_9:
  return v14;
}

- (GKMatch)initWithMatchmaker:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = GKMatch;
  v5 = [(GKMatch *)&v19 init];
  if (v5)
  {
    v6 = [GKTransportContext alloc];
    v7 = +[GKGame currentGame];
    v8 = [v7 internal];
    v9 = [v8 supportedTransports];
    v10 = [(GKTransportContext *)v6 initWithSupportedTransports:v9];

    v11 = [GKMultiplayerActivityReporter alloc];
    v12 = +[GKLocalPlayer local];
    v13 = [v12 internal];
    v14 = [v13 playerID];
    v15 = +[GKAPIReporter reporter];
    v16 = [(GKMultiplayerActivityReporter *)v11 initWithLocalPlayerID:v14 matchDataDelegate:v5 apiReporter:v15];

    v17 = [[GKCompositeTransport alloc] initWithClientDelegate:v5 matchDataDelegate:v5 reporter:v16 transportContext:v10];
    [(GKMatch *)v5 setupWithTransport:v17 context:v10 reporter:v16 matchmaker:v4];
  }

  return v5;
}

- (GKMatch)initWithTransport:(id)a3 context:(id)a4 reporter:(id)a5 matchmaker:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = GKMatch;
  v14 = [(GKMatch *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(GKMatch *)v14 setupWithTransport:v10 context:v11 reporter:v12 matchmaker:v13];
  }

  return v15;
}

- (void)setupWithTransport:(id)a3 context:(id)a4 reporter:(id)a5 matchmaker:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = MEMORY[0x277CBEB58];
  v14 = a6;
  v15 = [v13 set];
  connectedPlayerIDs = self->_connectedPlayerIDs;
  self->_connectedPlayerIDs = v15;

  *&self->_fastStartStateActive = 0;
  self->_canPromptTapToRadar = 1;
  multiplayerActivityReporter = self->_multiplayerActivityReporter;
  self->_multiplayerActivityReporter = v12;
  v18 = v12;

  objc_storeWeak(&self->_matchmaker, v14);
  v19 = [MEMORY[0x277CBEB18] array];
  opponentIDs = self->_opponentIDs;
  self->_opponentIDs = v19;

  v21 = [_TtC20GameCenterFoundation22ExponentialBackoffTask alloc];
  v22 = [(GKMatch *)self matchmaker];
  v23 = [v22 invitationQueue];
  v24 = [(ExponentialBackoffTask *)v21 initWithName:@"GKMatch.pendingConnectionChecker" queue:v23 initialDelay:10 maxDelay:1.0 maxRetryCount:4.0];
  pendingConnectionChecker = self->_pendingConnectionChecker;
  self->_pendingConnectionChecker = v24;

  [(ExponentialBackoffTask *)self->_pendingConnectionChecker setDelegate:self];
  v26 = [MEMORY[0x277CBEB38] dictionary];
  playerEventQueues = self->_playerEventQueues;
  self->_playerEventQueues = v26;

  v28 = [MEMORY[0x277CBEB38] dictionary];
  playerPushTokens = self->_playerPushTokens;
  self->_playerPushTokens = v28;

  v30 = [[GKThreadsafeDictionary alloc] initWithName:@"com.apple.gamecenter.match.playersbyidentifier"];
  playersByIdentifier = self->_playersByIdentifier;
  self->_playersByIdentifier = v30;

  v32 = [[GKThreadsafeDictionary alloc] initWithName:@"com.apple.gamecenter.match.playersByJoinType"];
  playersByJoinType = self->_playersByJoinType;
  self->_playersByJoinType = v32;

  v34 = [[GKThreadsafeDictionary alloc] initWithName:@"com.apple.gamecenter.match.propertiesByPlayerID"];
  propertiesByPlayerID = self->_propertiesByPlayerID;
  self->_propertiesByPlayerID = v34;

  v36 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  reinvitedPlayers = self->_reinvitedPlayers;
  self->_reinvitedPlayers = v36;

  v38 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v39 = dispatch_queue_create("com.apple.gamecenter.match.statechangequeue", v38);
  stateChangeQueue = self->_stateChangeQueue;
  self->_stateChangeQueue = v39;

  transport = self->_transport;
  self->_transport = v10;
  v42 = v10;

  transportContext = self->_transportContext;
  self->_transportContext = v11;
  v44 = v11;

  self->_version = 1;
  v52 = [MEMORY[0x277CCAB98] defaultCenter];
  v45 = GKPlayerAuthenticationDidChangeNotificationName;
  v46 = +[GKLocalPlayer localPlayer];
  [v52 addObserver:self selector:sel_localPlayerDidChange_ name:v45 object:v46];

  v47 = +[GKApplicationNotificationNames willTerminate];
  [v52 addObserver:self selector:sel_applicationWillTerminateNotification_ name:v47 object:0];

  v48 = +[GKApplicationNotificationNames didEnterBackground];
  [v52 addObserver:self selector:sel_applicationDidEnterBackground_ name:v48 object:0];

  v49 = +[GKApplicationNotificationNames willEnterForeground];
  [v52 addObserver:self selector:sel_applicationWillEnterForeground_ name:v49 object:0];

  v50 = [[GKTransportMonitor alloc] initWithMaxIteration:200 pingInterval:5000 pingTimeout:5000 reportFrequency:20];
  healthMonitor = self->_healthMonitor;
  self->_healthMonitor = v50;

  [(GKTransportMonitor *)self->_healthMonitor setClientDelegate:self];
}

- (void)applicationWillTerminateNotification:(id)a3
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
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "need to clear session after receiving applicationWillTerminateNotification", v8, 2u);
  }

  [(GKMatch *)self cleanupForTerminationWithReason:0];
  v7 = [(GKMatch *)self matchmaker];
  [v7 leaveGroupActivity];
}

- (void)applicationDidEnterBackground:(id)a3
{
  v3 = +[GKMatchBackgroundAssertionManager shared];
  [v3 acquire];
}

- (void)applicationWillEnterForeground:(id)a3
{
  v4 = +[GKMatchBackgroundAssertionManager shared];
  [v4 invalidate];

  [(GKMatch *)self setRecentlyBecameActive:1];
  v5 = dispatch_time(0, 3000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__GKMatch_applicationWillEnterForeground___block_invoke;
  block[3] = &unk_2785DD760;
  block[4] = self;
  dispatch_after(v5, MEMORY[0x277D85CD0], block);
}

- (void)cleanupForTerminationWithReason:(int64_t)a3
{
  v5 = +[GKMatchBackgroundAssertionManager shared];
  [v5 invalidate];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 removeObserver:self];

  [(GKMatch *)self clearSessionWithReason:a3];
}

- (void)clearSessionWithReason:(int64_t)a3
{
  v29 = *MEMORY[0x277D85DE8];
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v7 = MEMORY[0x277CCACC8];
    v8 = v6;
    v9 = [v7 callStackSymbols];
    v25 = 134218242;
    v26 = a3;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_INFO, "match clearSession reason: %ld. call stack: %@", &v25, 0x16u);
  }

  if ([(GKMatch *)self initiallyStarted])
  {
    v10 = [(GKMatch *)self multiplayerActivityReporter];
    v11 = [(GKMatch *)self transportContext];
    [v10 onGameplayEndedWithReason:a3 error:0 transportContext:v11];
  }

  v12 = [(GKMatch *)self transport];
  v13 = [(GKMatch *)self transportContext];
  [v12 disconnectAllWithTransportContext:v13 completionHandler:&__block_literal_global_24];

  if (a3 != 1)
  {
    [(GKMatch *)self cancelPendingConnectionCheckWithReason:@"clearSession"];
  }

  v14 = [(GKMatch *)self transportContext];
  v15 = [v14 daemonProxy];
  [v15 removeInviteSession];

  v16 = +[GKReporter reporter];
  [v16 reportCurrentRealtimeMatchPersistenceDuration];

  v17 = [(GKMatch *)self transportContext];
  v18 = [v17 daemonProxy];
  [v18 completeMatchRecording:@"failure" matchType:0];

  v19 = [(GKMatch *)self transportContext];
  v20 = [v19 daemonProxy];
  [v20 completeGameRecording];

  v21 = [(GKMatch *)self healthMonitor];

  if (v21)
  {
    v22 = [(GKMatch *)self healthMonitor];
    [v22 stopMonitoringAll];

    [(GKMatch *)self setHealthMonitor:0];
  }

  transport = self->_transport;
  self->_transport = 0;

  v24 = *MEMORY[0x277D85DE8];
}

void __34__GKMatch_clearSessionWithReason___block_invoke(uint64_t a1, void *a2)
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
      __34__GKMatch_clearSessionWithReason___block_invoke_cold_1();
    }
  }
}

- (void)dealloc
{
  [(GKMatch *)self cleanupForTerminationWithReason:1];
  v3.receiver = self;
  v3.super_class = GKMatch;
  [(GKMatch *)&v3 dealloc];
}

- (void)setInitiallyStarted:(BOOL)a3
{
  if (a3 && !self->_initiallyStarted)
  {
    v5 = [(GKMatch *)self multiplayerActivityReporter];
    v6 = [(GKMatch *)self transportContext];
    [v5 onGameplayStartedWithTransportContext:v6];
  }

  self->_initiallyStarted = a3;
}

- (void)setInviteDelegate:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_storeWeak(&self->_inviteDelegateWeak, v4);
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "Set match inviteDelegate to: %@", &v8, 0xCu);
  }

  if (v4)
  {
    [(GKMatch *)self sendQueuedStatesAndPackets];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_delegate:(id)a3 didReceiveData:(id)a4 forRecipient:(id)a5 fromPlayer:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  connectedPlayerIDs = self->_connectedPlayerIDs;
  v15 = [v13 internal];
  v16 = [v15 playerID];
  LOBYTE(connectedPlayerIDs) = [(NSMutableSet *)connectedPlayerIDs containsObject:v16];

  if (connectedPlayerIDs)
  {
    if (objc_opt_respondsToSelector())
    {
      [v10 match:self didReceiveData:v11 forRecipient:v12 fromRemotePlayer:v13];
    }

    else if (objc_opt_respondsToSelector())
    {
      [v10 match:self didReceiveData:v11 fromRemotePlayer:v13];
    }

    else if (objc_opt_respondsToSelector())
    {
      if (GKApplicationLinkedOnOrAfter(917504, 659456))
      {
        if (!os_log_GKGeneral)
        {
          v19 = GKOSLoggers();
        }

        if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
        {
          [GKMatch _delegate:didReceiveData:forRecipient:fromPlayer:];
        }
      }

      else
      {
        v25 = [v13 internal];
        v26 = [v25 playerID];
        [v10 match:self didReceiveData:v11 fromPlayer:v26];
      }
    }

    else
    {
      v20 = [(GKMatch *)self delegate];
      if (v20)
      {
        v21 = v20;
        v22 = [(GKMatch *)self delegate];
        v23 = [v10 isEqual:v22];

        if (v23)
        {
          if (!os_log_GKGeneral)
          {
            v24 = GKOSLoggers();
          }

          if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
          {
            [GKMatch _delegate:didReceiveData:forRecipient:fromPlayer:];
          }
        }
      }
    }
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
      [GKMatch _delegate:v18 didReceiveData:? forRecipient:? fromPlayer:?];
    }
  }
}

- (void)addPlayers:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = v4;
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "Adding players: %@", buf, 0xCu);
  }

  v7 = [(GKMatch *)self playersByIdentifier];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __22__GKMatch_addPlayers___block_invoke;
  v10[3] = &unk_2785DEEF0;
  v11 = v4;
  v8 = v4;
  [v7 writeToDictionary:v10];

  v9 = *MEMORY[0x277D85DE8];
}

void __22__GKMatch_addPlayers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __22__GKMatch_addPlayers___block_invoke_2;
  v6[3] = &unk_2785DEEC8;
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __22__GKMatch_addPlayers___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 internal];
  v4 = [v5 playerID];
  [v2 setObject:v3 forKey:v4];
}

- (unint64_t)currentPlayerCount
{
  v2 = [(GKMatch *)self players];
  v3 = [v2 count];

  return v3;
}

- (unint64_t)currentPlayerCountIncludingLocalPlayer
{
  v3 = [(GKMatch *)self players];
  v4 = +[GKLocalPlayer localPlayer];
  v5 = [v3 containsObject:v4] ^ 1;

  v6 = [(GKMatch *)self players];
  v7 = [v6 count];

  return v7 + v5;
}

- (id)allIDs
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = self->_playerEventQueues;
  objc_sync_enter(v4);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(NSMutableDictionary *)self->_playerEventQueues allKeys];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_playerEventQueues objectForKey:v9];
        if (v10)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  objc_sync_exit(v4);
  v11 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSArray)guestPlayers
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = self->_playerEventQueues;
  objc_sync_enter(v4);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(NSMutableDictionary *)self->_playerEventQueues allValues];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([v9 playerState] == 1)
        {
          v10 = [v9 hostPlayer];
          v11 = v10 == 0;

          if (!v11)
          {
            v12 = [v9 player];
            [v3 addObject:v12];
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  objc_sync_exit(v4);
  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)playerFromID:(id)a3 includingLocal:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v7 = +[GKLocalPlayer local];
    v8 = [v7 internal];
    v9 = [v8 playerID];
    if ([v9 isEqualToString:v6])
    {
      +[GKLocalPlayer local];
    }

    else
    {
      [(GKThreadsafeDictionary *)self->_playersByIdentifier objectForKey:v6];
    }
    v10 = ;
  }

  else
  {
    v10 = [(GKThreadsafeDictionary *)self->_playersByIdentifier objectForKey:v6];
  }

  return v10;
}

- (void)updateProperties:(id)a3 playerID:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(GKMatch *)self propertiesByPlayerID];
  v8 = v7;
  if (v9)
  {
    [v7 setObject:v9 forKey:v6];
  }

  else
  {
    [v7 removeObjectForKey:v6];
  }
}

- (void)withEventQueueForPlayer:(id)a3 createIfNeeded:(BOOL)a4 perform:(id)a5
{
  if (a4)
  {
    v5 = &__block_literal_global_258;
  }

  else
  {
    v5 = 0;
  }

  [(GKMatch *)self withEventQueueForPlayer:a3 create:v5 perform:a5];
}

- (void)withEventQueueForPlayer:(id)a3 create:(id)a4 perform:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = GKStackTraceWithFrameLimit(10);
    v13 = [v11 stringWithFormat:@"nil player for queue request at:%@", v12];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/API/GKMatch.m"];
    v15 = [v14 lastPathComponent];
    v16 = [v11 stringWithFormat:@"%@ (player != nil)\n[%s (%s:%d)]", v13, "-[GKMatch withEventQueueForPlayer:create:perform:]", objc_msgSend(v15, "UTF8String"), 884];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v16}];
  }

  v17 = [v8 internal];
  v18 = [v17 playerID];

  v19 = self->_playerEventQueues;
  objc_sync_enter(v19);
  v20 = [(NSMutableDictionary *)self->_playerEventQueues objectForKey:v18];
  v21 = v20;
  if (v9 && !v20)
  {
    v21 = objc_alloc_init(GKMatchEventQueue);
    [(GKMatchEventQueue *)v21 setPlayer:v8];
    v9[2](v9, v21);
    [(NSMutableDictionary *)self->_playerEventQueues setObject:v21 forKey:v18];
    [(NSMutableSet *)self->_connectedPlayerIDs addObject:v18];
    if (!os_log_GKGeneral)
    {
      v22 = GKOSLoggers();
    }

    v23 = os_log_GKMatch;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [v8 internal];
      [objc_claimAutoreleasedReturnValue() debugDescription];
      objc_claimAutoreleasedReturnValue();
      [GKMatch withEventQueueForPlayer:create:perform:];
    }
  }

  if (!v21)
  {
    if (!os_log_GKGeneral)
    {
      v24 = GKOSLoggers();
    }

    v25 = os_log_GKMatch;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [v8 internal];
      [objc_claimAutoreleasedReturnValue() debugDescription];
      objc_claimAutoreleasedReturnValue();
      [GKMatch withEventQueueForPlayer:create:perform:];
    }
  }

  if (v10)
  {
    v10[2](v10, v21);
  }

  objc_sync_exit(v19);
  v26 = *MEMORY[0x277D85DE8];
}

- (void)preLoadInviter:(id)a3 sessionToken:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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
    *buf = 138412546;
    v20 = v12;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_227904000, v10, OS_LOG_TYPE_INFO, "preLoadInviter - inviting player: %@ sessionToken:%@", buf, 0x16u);
  }

  v18 = v6;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
  [(GKMatch *)self addPlayers:v13];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __39__GKMatch_preLoadInviter_sessionToken___block_invoke;
  v16[3] = &unk_2785DEF38;
  v17 = v7;
  v14 = v7;
  [(GKMatch *)self withEventQueueForPlayer:v6 create:v16 perform:0];

  v15 = *MEMORY[0x277D85DE8];
}

void __39__GKMatch_preLoadInviter_sessionToken___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB38];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 dictionaryWithObject:v3 forKey:@"session-token"];
  [v4 setConnectionInfo:v5];
}

- (void)updateRematchID
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t __26__GKMatch_updateRematchID__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 internal];
  v6 = [v5 playerID];
  v7 = [v4 internal];

  v8 = [v7 playerID];
  v9 = [v6 caseInsensitiveCompare:v8];

  return v9;
}

- (void)localPlayerDidChange:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v17 = 138412290;
    v18 = v4;
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "Local player changed with notification: %@", &v17, 0xCu);
  }

  v7 = [v4 userInfo];
  v8 = [v7 objectForKey:@"GKPlayerDidAuthenticateOldPlayerID"];

  v9 = +[GKLocalPlayer localPlayer];
  if ([v9 isAuthenticated])
  {
    v10 = +[GKLocalPlayer localPlayer];
    v11 = [v10 internal];
    v12 = [v11 playerID];
    v13 = [v12 isEqualToString:v8];

    if (v13)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  if (!os_log_GKGeneral)
  {
    v14 = GKOSLoggers();
  }

  v15 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_227904000, v15, OS_LOG_TYPE_INFO, "Local player is no longer authenticated or local player changed. Will disconnect.", &v17, 2u);
  }

  [(GKMatch *)self disconnect];
LABEL_14:

  v16 = *MEMORY[0x277D85DE8];
}

- (void)putMultiplayerGroup
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = [(GKMatch *)self groupIdentifier];

  if (!v3)
  {
    v4 = [MEMORY[0x277CCAD78] UUID];
    v5 = [v4 UUIDString];
    [(GKMatch *)self setGroupIdentifier:v5];
  }

  if (!os_log_GKGeneral)
  {
    v6 = GKOSLoggers();
  }

  v7 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = [(GKMatch *)self groupIdentifier];
    *buf = 138412290;
    v42 = v9;
    _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_INFO, "Creating group for game: %@", buf, 0xCu);
  }

  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v13 = [(GKMatch *)self playersByJoinType];
    *buf = 138412290;
    v42 = v13;
    _os_log_impl(&dword_227904000, v12, OS_LOG_TYPE_INFO, "playersByJoinType - %@", buf, 0xCu);
  }

  v14 = [(GKMatch *)self connectedPlayers];
  v15 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v37;
    do
    {
      v20 = 0;
      do
      {
        if (*v37 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v36 + 1) + 8 * v20) internal];
        v22 = [v21 playerID];

        if (v22)
        {
          v23 = [(GKMatch *)self playersByJoinType];
          v24 = [v23 objectForKeyedSubscript:v22];

          if (v24 && [v24 integerValue] != 4 && objc_msgSend(v24, "integerValue"))
          {
            [v15 addObject:v22];
          }
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v18);
  }

  if ([v15 count])
  {
    v35 = [(GKMatch *)self transportContext];
    v25 = [v35 daemonProxy];
    v26 = [(GKMatch *)self groupIdentifier];
    v27 = [MEMORY[0x277CBEAA8] now];
    [v27 timeIntervalSince1970];
    v29 = (v28 * 1000.0);
    v30 = [MEMORY[0x277CCA8D8] mainBundle];
    v31 = [v30 bundleIdentifier];
    v32 = [(GKMatch *)self matchmaker];
    v33 = [v32 autoMatchedPlayers];
    [v25 putMultiPlayerGroup:v26 participants:v15 playedAt:v29 bundleID:v31 numberOfAutomatched:objc_msgSend(v33 isSharedLink:"count") completionHandler:{0, &__block_literal_global_286}];
  }

  v34 = *MEMORY[0x277D85DE8];
}

void __30__GKMatch_putMultiplayerGroup__block_invoke(uint64_t a1, void *a2)
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
      __30__GKMatch_putMultiplayerGroup__block_invoke_cold_1();
    }
  }
}

- (void)addPlayerToGroup:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = v4;
      _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "Attempting to update a group with playerID: %@", buf, 0xCu);
    }

    v7 = [(GKMatch *)self playersByJoinType];
    v8 = [v7 objectForKeyedSubscript:v4];

    if (v8 && [v8 integerValue] != 4 && objc_msgSend(v8, "integerValue"))
    {
      objc_initWeak(buf, self);
      v9 = [(GKMatch *)self transportContext];
      v10 = [v9 daemonProxy];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __28__GKMatch_addPlayerToGroup___block_invoke;
      v12[3] = &unk_2785DEF88;
      objc_copyWeak(&v14, buf);
      v13 = v4;
      [v10 getMultiPlayerGroups:v12];

      objc_destroyWeak(&v14);
      objc_destroyWeak(buf);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __28__GKMatch_addPlayerToGroup___block_invoke(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v39;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v39 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v38 + 1) + 8 * v9);
      v11 = [v10 groupID];
      v12 = [WeakRetained groupIdentifier];
      v13 = [v11 isEqualToString:v12];

      if (v13)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v38 objects:v44 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v14 = v10;

    if (!v14)
    {
      goto LABEL_16;
    }

    if (!os_log_GKGeneral)
    {
      v15 = GKOSLoggers();
    }

    v16 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v17 = v16;
      v18 = [v14 groupID];
      *buf = 138412290;
      v43 = v18;
      _os_log_impl(&dword_227904000, v17, OS_LOG_TYPE_INFO, "Group already exists for game, updating: %@", buf, 0xCu);
    }

    v34 = [v14 participants];
    v19 = [MEMORY[0x277CBEB98] setWithArray:v34];
    v20 = [v19 mutableCopy];

    v33 = v20;
    [v20 addObject:*(a1 + 32)];
    v32 = [WeakRetained transportContext];
    v31 = [v32 daemonProxy];
    v21 = [v14 groupID];
    v22 = [v20 allObjects];
    v23 = [MEMORY[0x277CCA8D8] mainBundle];
    v24 = [v23 bundleIdentifier];
    v25 = [v14 numberOfAutomached];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __28__GKMatch_addPlayerToGroup___block_invoke_288;
    v35[3] = &unk_2785DEF60;
    v36 = v14;
    v37 = *(a1 + 32);
    v26 = v14;
    [v31 putMultiPlayerGroup:v21 participants:v22 playedAt:0 bundleID:v24 numberOfAutomatched:v25 isSharedLink:0 completionHandler:v35];
  }

  else
  {
LABEL_9:

LABEL_16:
    if (!os_log_GKGeneral)
    {
      v27 = GKOSLoggers();
    }

    v28 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v29 = *(a1 + 32);
      *buf = 138412290;
      v43 = v29;
      _os_log_impl(&dword_227904000, v28, OS_LOG_TYPE_INFO, "Group does not exist yet, waiting for it to be created when game starts, not adding %@ yet", buf, 0xCu);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __28__GKMatch_addPlayerToGroup___block_invoke_288(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    v5 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __28__GKMatch_addPlayerToGroup___block_invoke_288_cold_1(a1, v5);
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = [v8 groupID];
      v11 = *(a1 + 40);
      v13 = 138412546;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "Group %@ updated adding player: %@", &v13, 0x16u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)getConnectionContextForPlayerID:(id)a3
{
  v4 = a3;
  v5 = [(GKMatch *)self playerFromID:v4];
  if (v5)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__6;
    v15 = __Block_byref_object_dispose__6;
    v16 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __43__GKMatch_getConnectionContextForPlayerID___block_invoke;
    v8[3] = &unk_2785DEFB0;
    v10 = &v11;
    v9 = v4;
    [(GKMatch *)self withEventQueueForPlayer:v5 perform:v8];
    v6 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __43__GKMatch_getConnectionContextForPlayerID___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "player event queue does not exist for %@", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)updateConnectionInfo:(id)a3 forPlayerID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(GKMatch *)self playerFromID:v7];
  if (v8)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__6;
    v19 = __Block_byref_object_dispose__6;
    v20 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __44__GKMatch_updateConnectionInfo_forPlayerID___block_invoke;
    v11[3] = &unk_2785DEFD8;
    v12 = v6;
    v14 = &v15;
    v13 = v7;
    [(GKMatch *)self withEventQueueForPlayer:v8 perform:v11];
    v9 = v16[5];

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __44__GKMatch_updateConnectionInfo_forPlayerID___block_invoke(void *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 connectionInfo];
    [v6 addEntriesFromDictionary:a1[4]];

    objc_storeStrong((*(a1[6] + 8) + 40), a2);
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
      v9 = a1[5];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_INFO, "player event queue does not exist for %@", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)getLocalConnectionDataWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "GKMatch: getLocalConnectionDataWithCompletionHandler:", v8, 2u);
  }

  v7 = [(GKMatch *)self transport];
  [v7 localConnectionDataWithCompletionHandler:v4];
}

- (void)setAutomatchPlayerCount:(int64_t)a3
{
  v5 = [(GKMatch *)self inviteDelegate];
  if (v5 && (v6 = v5, [(GKMatch *)self inviteDelegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    v10 = [(GKMatch *)self inviteDelegate];
    [v10 setAutomatchPlayerCount:a3];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      [GKMatch setAutomatchPlayerCount:];
    }
  }
}

- (void)updateEventQueueForInviter:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "Update with inviter: %@", buf, 0xCu);
  }

  v10 = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
  [(GKMatch *)self addPlayers:v7];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__GKMatch_updateEventQueueForInviter___block_invoke;
  v9[3] = &unk_2785DEF38;
  v9[4] = self;
  [(GKMatch *)self withEventQueueForPlayer:v4 createIfNeeded:1 perform:v9];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)cancelPendingConnectionCheckWithReason:(id)a3
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
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "Canceling existing match pending connection checker for: %@.", &v9, 0xCu);
  }

  v7 = [(GKMatch *)self pendingConnectionChecker];
  [v7 cancel];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)connectToPlayers:(id)a3 version:(unsigned __int8)a4 invitedByLocalPlayer:(BOOL)a5 completionHandler:(id)a6
{
  v7 = a5;
  v54 = a4;
  v68 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a6;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
  }

  v12 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v67 = v9;
    _os_log_impl(&dword_227904000, v12, OS_LOG_TYPE_INFO, "connect to players: %@", buf, 0xCu);
  }

  if (!os_log_GKGeneral)
  {
    v13 = GKOSLoggers();
  }

  v14 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v15 = v14;
    v16 = [(GKMatch *)self transportContext];
    v17 = [v16 peerDictionaries];
    *buf = 138412290;
    v67 = v17;
    _os_log_impl(&dword_227904000, v15, OS_LOG_TYPE_INFO, "make connection with peerDictionaries %@", buf, 0xCu);
  }

  v18 = +[GKReporter reporter];
  [v18 recordConnectingDevicesTimestamp];

  v19 = "Close the challenge received alert without further action" + 16;
  if ([v9 count])
  {
    v52 = v10;
    v53 = v9;
    [(GKMatch *)self addPlayers:v9];
    if ([(GKMatch *)self version]> v54)
    {
      [(GKMatch *)self sendVersionData:v54];
      [(GKMatch *)self setVersion:v54];
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v20 = [(GKMatch *)self transport];
    v21 = [(GKMatch *)self transportContext];
    v22 = [v21 peerDictionaries];
    v23 = [v20 enrichPeerDictionariesForPlayersConnection:v22];

    v24 = [v23 countByEnumeratingWithState:&v61 objects:v65 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v62;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v62 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v61 + 1) + 8 * i);
          v29 = [v28 objectForKey:@"player-id"];
          v30 = [(GKThreadsafeDictionary *)self->_playersByIdentifier objectForKey:v29];
          if (v30)
          {
            v58[0] = MEMORY[0x277D85DD0];
            v58[1] = 3221225472;
            v58[2] = __75__GKMatch_connectToPlayers_version_invitedByLocalPlayer_completionHandler___block_invoke;
            v58[3] = &unk_2785DF000;
            v59 = v54;
            v60 = v7;
            v58[4] = v28;
            v58[5] = self;
            [(GKMatch *)self withEventQueueForPlayer:v30 createIfNeeded:1 perform:v58];
            if (v7)
            {
              if (!os_log_GKGeneral)
              {
                v31 = GKOSLoggers();
              }

              v32 = os_log_GKMatch;
              if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v67 = v53;
                _os_log_debug_impl(&dword_227904000, v32, OS_LOG_TYPE_DEBUG, "Perform a pending connection check for invitees: %@.", buf, 0xCu);
              }

              [(GKMatch *)self refreshPendingConnectionCheckIfNeeded];
            }
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
              *buf = 138412290;
              v67 = v29;
              _os_log_impl(&dword_227904000, v34, OS_LOG_TYPE_INFO, "Missing player for playerID: %@ while connecting to players", buf, 0xCu);
            }
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v61 objects:v65 count:16];
      }

      while (v25);
    }

    v35 = [(GKMatch *)self inviteDelegate];

    v10 = v52;
    if (v35)
    {
      v36 = [(GKMatch *)self inviteDelegate];
      v9 = v53;
      [(GKMatch *)self sendConnectingStateCallbackToDelegate:v36 forPlayers:v53];

      v37 = "Close the challenge received alert without further action" + 16;
      v19 = "Close the challenge received alert without further action" + 16;
    }

    else
    {
      v9 = v53;
      v37 = "nge received alert without further action";
      v19 = "nge received alert without further action";
      if (!os_log_GKGeneral)
      {
        v39 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
      {
        [GKMatch connectToPlayers:version:invitedByLocalPlayer:completionHandler:];
      }
    }

    v40 = +[GKReporter reporter];
    [v40 reportEvent:@"com.apple.GameKit.multiplayer.realtime.connectionType" type:@"realtime.allConnectionAttempt" count:{objc_msgSend(v9, "count")}];

    if (!os_log_GKGeneral)
    {
      v41 = GKOSLoggers();
    }

    v42 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v43 = MEMORY[0x277CCABB0];
      expectedPlayerCount = self->_expectedPlayerCount;
      v45 = v42;
      v46 = [v43 numberWithUnsignedInteger:expectedPlayerCount];
      *buf = *(v37 + 442);
      v67 = v46;
      _os_log_impl(&dword_227904000, v45, OS_LOG_TYPE_INFO, "Connecting to peers, expecting: %@", buf, 0xCu);
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v38 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      [GKMatch connectToPlayers:version:invitedByLocalPlayer:completionHandler:];
    }
  }

  if ([v9 count] || (-[GKMatch transportContext](self, "transportContext"), v47 = objc_claimAutoreleasedReturnValue(), v48 = objc_msgSend(v47, "allowEarlyConnection"), v47, (v48 & 1) != 0))
  {
    v49 = [(GKMatch *)self transport];
    v50 = [(GKMatch *)self transportContext];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = *(v19 + 434);
    v55[2] = __75__GKMatch_connectToPlayers_version_invitedByLocalPlayer_completionHandler___block_invoke_301;
    v55[3] = &unk_2785DD8E8;
    v56 = v9;
    v57 = v10;
    [v49 connectToPlayersWithTransportContext:v50 completionHandler:v55];
  }

  else
  {
    (*(v10 + 2))(v10, 0);
  }

  v51 = *MEMORY[0x277D85DE8];
}

void __75__GKMatch_connectToPlayers_version_invitedByLocalPlayer_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 connectionInfo];

  if (v4)
  {
    v5 = [v3 connectionInfo];
    [v5 addEntriesFromDictionary:*(a1 + 32)];
  }

  else
  {
    v5 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:*(a1 + 32)];
    [v3 setConnectionInfo:v5];
  }

  v6 = [v3 connectionInfo];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a1 + 48)];
  [v6 setObject:v7 forKey:@"match-version"];

  [v3 setInvitedByLocalPlayer:*(a1 + 49)];
  v8 = [*(a1 + 32) objectForKey:@"num-players"];
  v9 = [v8 intValue];

  if (v9 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  v12 = *(a1 + 40);
  v11 = a1 + 40;
  *(v12 + 176) += v10;
  if (!os_log_GKGeneral)
  {
    v13 = GKOSLoggers();
  }

  v14 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    __75__GKMatch_connectToPlayers_version_invitedByLocalPlayer_completionHandler___block_invoke_cold_1(v14, v10, v11);
  }
}

void __75__GKMatch_connectToPlayers_version_invitedByLocalPlayer_completionHandler___block_invoke_301(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __75__GKMatch_connectToPlayers_version_invitedByLocalPlayer_completionHandler___block_invoke_301_cold_1();
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "Connection requested handler for players: %@", &v9, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (void)connectToGuestPlayer:(id)a3 withHostPlayer:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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
    *buf = 138412546;
    v23 = v12;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&dword_227904000, v10, OS_LOG_TYPE_INFO, "Connect to guest player - player: %@ hostPlayer:%@", buf, 0x16u);
  }

  v13 = [(GKMatch *)self transport];
  v14 = [v13 connectToGuestPlayer:v6 withHostPlayer:v7];

  if (v14)
  {
    v21 = v6;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
    [(GKMatch *)self addPlayers:v15];

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __47__GKMatch_connectToGuestPlayer_withHostPlayer___block_invoke;
    v18[3] = &unk_2785DF028;
    v19 = v6;
    v20 = v7;
    [(GKMatch *)self withEventQueueForPlayer:v19 createIfNeeded:1 perform:v18];
    v16 = +[GKReporter reporter];
    [v16 reportEvent:@"com.apple.GameKit.multiplayer.realtime.connectionType" type:@"realtime.allConnectionAttempt" count:2];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __47__GKMatch_connectToGuestPlayer_withHostPlayer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setPlayerState:1];
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    __47__GKMatch_connectToGuestPlayer_withHostPlayer___block_invoke_cold_1(a1, v5);
  }

  [v3 setHostPlayer:*(a1 + 40)];
}

- (id)nearbyConnectionData
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_227904000, v4, OS_LOG_TYPE_INFO, "GKMatch: nearbyConnectionData", v8, 2u);
  }

  v5 = [(GKMatch *)self transport];
  v6 = [v5 nearbyConnectionData];

  return v6;
}

- (void)connectToNearbyPlayer:(id)a3 withConnectionData:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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
    v39 = v12;
    _os_log_impl(&dword_227904000, v10, OS_LOG_TYPE_INFO, "Connect to nearby player: %@", buf, 0xCu);
  }

  v13 = +[GKReporter reporter];
  [v13 reportEvent:@"com.apple.GameKit.multiplayer.realtime.connectionResult" type:@"realtime.allMatchTotal"];

  v14 = +[GKReporter reporter];
  [v14 reportEvent:@"com.apple.GameKit.multiplayer.realtime.connectionResult" type:@"realtime.nearbyMatchTotal"];

  v37 = v6;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
  [(GKMatch *)self addPlayers:v15];

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __52__GKMatch_connectToNearbyPlayer_withConnectionData___block_invoke;
  v32[3] = &unk_2785DF050;
  v16 = v6;
  v33 = v16;
  v17 = v7;
  v34 = v17;
  v35 = self;
  [(GKMatch *)self withEventQueueForPlayer:v16 createIfNeeded:1 perform:v32];
  if (!os_log_GKGeneral)
  {
    v18 = GKOSLoggers();
  }

  v19 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    v20 = v19;
    v21 = [v16 internal];
    v22 = [v21 debugDescription];
    *buf = 138412290;
    v39 = v22;
    _os_log_impl(&dword_227904000, v20, OS_LOG_TYPE_INFO, "GKMatch: connectToNearbyPlayer: %@ - connecting to participant with session info: nil", buf, 0xCu);
  }

  v23 = [(GKMatch *)self inviteDelegate];

  if (v23)
  {
    v24 = [(GKMatch *)self inviteDelegate];
    v36 = v16;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
    [(GKMatch *)self sendConnectingStateCallbackToDelegate:v24 forPlayers:v25];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v26 = GKOSLoggers();
    }

    v27 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      [GKMatch connectToNearbyPlayer:v27 withConnectionData:?];
    }
  }

  v28 = [(GKMatch *)self transportContext];
  [v28 updateForLegacyNearbyInvite];

  v29 = [(GKMatch *)self transport];
  [v29 connectToNearbyPlayer:v16 withConnectionData:v17];

  v30 = +[GKReporter reporter];
  [v30 reportEvent:@"com.apple.GameKit.multiplayer.realtime.connectionType" type:@"realtime.allConnectionAttempt"];

  v31 = *MEMORY[0x277D85DE8];
}

void __52__GKMatch_connectToNearbyPlayer_withConnectionData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) referenceKey];
  v5 = [v3 connectionInfo];

  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    [v3 setConnectionInfo:v6];
  }

  v7 = [v3 connectionInfo];
  [v7 setObject:v4 forKey:@"peer-id"];

  v8 = [v3 connectionInfo];
  [v8 setObject:*(a1 + 40) forKey:@"peer-blob"];

  v9 = [v3 connectionInfo];
  v11 = *(a1 + 48);
  v10 = (a1 + 48);
  v12 = [v11 nearbyConnectionData];
  [v9 setObject:v12 forKey:@"self-blob"];

  v13 = [v3 connectionInfo];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(*v10, "version")}];
  [v13 setObject:v14 forKey:@"match-version"];

  v15 = [v3 connectionInfo];
  v16 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v15 setObject:v16 forKey:@"nearby"];

  ++*(*v10 + 22);
  if (!os_log_GKGeneral)
  {
    v17 = GKOSLoggers();
  }

  v18 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    __52__GKMatch_connectToNearbyPlayer_withConnectionData___block_invoke_cold_1(v10, v18);
  }
}

- (void)syncPlayers:(id)a3 forJoinType:(int)a4 toInvitees:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v9 count])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__GKMatch_syncPlayers_forJoinType_toInvitees___block_invoke;
    v10[3] = &unk_2785DF078;
    v11 = v9;
    v14 = a4;
    v12 = v8;
    v13 = self;
    [(GKPlayer *)GKLocalPlayer loadPlayersForLegacyIdentifiers:v11 withCompletionHandler:v10];
  }
}

void __46__GKMatch_syncPlayers_forJoinType_toInvitees___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33[2] = *MEMORY[0x277D85DE8];
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
      __46__GKMatch_syncPlayers_forJoinType_toInvitees___block_invoke_cold_1(a1);
    }
  }

  else
  {
    v32[0] = @"GKMatchJoinType";
    v9 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56)];
    v32[1] = @"playerIDs";
    v33[0] = v9;
    v33[1] = *(a1 + 40);
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];

    v23 = 0;
    v11 = [MEMORY[0x277CCAC58] dataWithPropertyList:v10 format:200 options:0 error:&v23];
    v7 = v23;
    if (v7)
    {
      if (!os_log_GKGeneral)
      {
        v12 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
      {
        __46__GKMatch_syncPlayers_forJoinType_toInvitees___block_invoke_cold_2();
      }
    }

    else
    {
      v13 = [*(a1 + 48) packet:8 data:v11];
      v14 = [*(a1 + 48) transport];
      v15 = [*(a1 + 48) transportContext];
      v22 = 0;
      [v14 sendScopedData:v13 toPlayers:v5 dataMode:0 dataScope:0 transportContext:v15 error:&v22];
      v16 = v22;

      if (v16)
      {
        if (!os_log_GKGeneral)
        {
          v17 = GKOSLoggers();
        }

        v18 = os_log_GKMatch;
        if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
        {
          *buf = 138413058;
          v25 = v5;
          v26 = 2112;
          v27 = v10;
          v28 = 2112;
          v29 = v13;
          v30 = 2112;
          v31 = 0;
          _os_log_error_impl(&dword_227904000, v18, OS_LOG_TYPE_ERROR, "Failed to sync data to players: %@, dict: %@, data: %@, error: %@", buf, 0x2Au);
        }
      }

      else
      {
        if (!os_log_GKGeneral)
        {
          v19 = GKOSLoggers();
        }

        v20 = os_log_GKMatch;
        if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v25 = v5;
          v26 = 2112;
          v27 = v10;
          v28 = 2112;
          v29 = v13;
          _os_log_impl(&dword_227904000, v20, OS_LOG_TYPE_INFO, "Sent sync data to players: %@, dict: %@, data: %@", buf, 0x20u);
        }
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)receivedPlayerSyncData:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v4 = [MEMORY[0x277CCAC58] propertyListWithData:a3 options:0 format:0 error:&v18];
  v5 = v18;
  v6 = [v4 objectForKeyedSubscript:@"GKMatchJoinType"];
  v7 = [v6 integerValue];

  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = v9;
    v12 = [v10 numberWithUnsignedInt:v7];
    *buf = 138412546;
    v20 = v4;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&dword_227904000, v11, OS_LOG_TYPE_INFO, "receivedPlayerSyncData, dict: %@, joinType: %@", buf, 0x16u);
  }

  v13 = [v4 objectForKeyedSubscript:@"playerIDs"];
  v14 = [v13 allObjects];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __34__GKMatch_receivedPlayerSyncData___block_invoke;
  v16[3] = &unk_2785DF0A0;
  v17 = v7;
  v16[4] = self;
  [(GKPlayer *)GKLocalPlayer loadPlayersForLegacyIdentifiers:v14 withCompletionHandler:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __34__GKMatch_receivedPlayerSyncData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if ((v7 - 1) < 3 || v7 == 5)
  {
    v9 = MEMORY[0x277CBEB98];
    v10 = [v5 _gkPlayersIDsFromPlayers];
    v11 = [v9 setWithArray:v10];

    v12 = [*(a1 + 32) matchmaker];
    v13 = [v12 siblingInvitees];
    [v13 unionSet:v11];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v14 = v11;
    v15 = [v14 countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v35;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(a1 + 32) updateJoinedPlayer:*(*(&v34 + 1) + 8 * i) joinType:{5, v34}];
        }

        v16 = [v14 countByEnumeratingWithState:&v34 objects:v46 count:16];
      }

      while (v16);
    }

    goto LABEL_14;
  }

  if (v7 == 4)
  {
    v20 = [*(a1 + 32) matchmaker];
    v21 = [v20 autoMatchedPlayers];
    v22 = MEMORY[0x277CBEB98];
    v23 = [v5 _gkPlayersIDsFromPlayers];
    v24 = [v22 setWithArray:v23];
    [v21 unionSet:v24];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v14 = [v5 _gkPlayersIDsFromPlayers];
    v25 = [v14 countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v39;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v39 != v27)
          {
            objc_enumerationMutation(v14);
          }

          [*(a1 + 32) updateJoinedPlayer:*(*(&v38 + 1) + 8 * j) joinType:4];
        }

        v26 = [v14 countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v26);
    }

    goto LABEL_14;
  }

  if (!os_log_GKGeneral)
  {
    v29 = GKOSLoggers();
  }

  v30 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v31 = MEMORY[0x277CCABB0];
    v32 = *(a1 + 40);
    v14 = v30;
    v33 = [v31 numberWithUnsignedInt:v32];
    *buf = 138412546;
    v43 = v33;
    v44 = 2112;
    v45 = v5;
    _os_log_impl(&dword_227904000, v14, OS_LOG_TYPE_INFO, "receivedPlayerSyncData, joinType: %@ not doing anything for players: %@", buf, 0x16u);

LABEL_14:
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (id)makeInviteMessageDoneData
{
  v3 = objc_opt_class();
  v4 = [(GKMatch *)self propertiesByPlayerID];
  v5 = [v4 allObjects];
  v6 = [v3 makeInviteMessageDoneWithProperties:v5];

  return v6;
}

- (void)sendInviteData:(id)a3
{
  v4 = a3;
  v5 = [(GKMatch *)self transportContext];
  v6 = [v5 validTransportSelected];

  if (v6)
  {
    [(GKMatch *)self sendInviteData:v4 withScope:0];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    v8 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      [GKMatch sendInviteData:v8];
    }
  }
}

- (void)sendInviteData:(id)a3 withScope:(int64_t)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if ([(GKMatch *)self version])
  {
    v7 = [(GKMatch *)self packet:2 data:v6];
  }

  v8 = [(GKMatch *)self transport];
  v9 = [(GKMatch *)self transportContext];
  v14 = 0;
  [v8 sendScopedDataToAll:v7 dataMode:0 dataScope:a4 transportContext:v9 error:&v14];
  v10 = v14;

  if (v10)
  {
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    v12 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = v10;
      _os_log_impl(&dword_227904000, v12, OS_LOG_TYPE_INFO, "Failed to send invite data, error: %@", buf, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)sendVersionData:(unsigned __int8)a3
{
  v14 = a3;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_227904000, v5, OS_LOG_TYPE_INFO, "GKMatch: sendVersionData", buf, 2u);
  }

  if ([(GKMatch *)self version])
  {
    v6 = [MEMORY[0x277CBEA90] dataWithBytes:&v14 length:1];
    v7 = [(GKMatch *)self packet:1 data:v6];

    v8 = [(GKMatch *)self transport];
    v9 = [(GKMatch *)self transportContext];
    v12 = 0;
    [v8 sendScopedDataToAll:v7 dataMode:0 dataScope:0 transportContext:v9 error:&v12];
    v10 = v12;

    if (v10)
    {
      if (!os_log_GKGeneral)
      {
        v11 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        [GKMatch sendVersionData:];
      }
    }
  }
}

- (void)sendVersionData:(unsigned __int8)a3 toPlayer:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v16 = a3;
  v5 = a4;
  v6 = [MEMORY[0x277CBEA90] dataWithBytes:&v16 length:1];
  v7 = [(GKMatch *)self packet:1 data:v6];

  v8 = [(GKMatch *)self transport];
  v17[0] = v5;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v10 = [(GKMatch *)self transportContext];
  v15 = 0;
  [v8 sendScopedData:v7 toPlayers:v9 dataMode:0 dataScope:0 transportContext:v10 error:&v15];
  v11 = v15;

  if (v11)
  {
    if (!os_log_GKGeneral)
    {
      v12 = GKOSLoggers();
    }

    v13 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      [GKMatch sendVersionData:v13 toPlayer:?];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)queueData:(id)a3 withEventQueueForPlayer:(id)a4 forRecipient:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__GKMatch_queueData_withEventQueueForPlayer_forRecipient___block_invoke;
  v12[3] = &unk_2785DF028;
  v13 = v9;
  v14 = v8;
  v10 = v8;
  v11 = v9;
  [(GKMatch *)self withEventQueueForPlayer:a4 perform:v12];
}

void __58__GKMatch_queueData_withEventQueueForPlayer_forRecipient___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v5 = objc_alloc_init(GKMatchEvent);
    [(GKMatchEvent *)v5 setRecipientPlayer:*(a1 + 32)];
    [(GKMatchEvent *)v5 setData:*(a1 + 40)];
    v4 = [v3 events];

    [v4 addObject:v5];
  }
}

- (void)deliverData:(id)a3 forRecipient:(id)a4 fromPlayer:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __47__GKMatch_deliverData_forRecipient_fromPlayer___block_invoke;
  v18 = &unk_2785DF0C8;
  v22 = &v23;
  v11 = v10;
  v19 = v11;
  v12 = v9;
  v20 = v12;
  v13 = v8;
  v21 = v13;
  [(GKMatch *)self withEventQueueForPlayer:v11 createIfNeeded:1 perform:&v15];
  if (*(v24 + 24) == 1)
  {
    v14 = [(GKMatch *)self delegate:v15];
    [(GKMatch *)self _delegate:v14 didReceiveData:v13 forRecipient:v12 fromPlayer:v11];
  }

  _Block_object_dispose(&v23, 8);
}

void __47__GKMatch_deliverData_forRecipient_fromPlayer___block_invoke(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if ([v3 okToSend])
    {
      *(*(a1[7] + 8) + 24) = 1;
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v5 = GKOSLoggers();
      }

      v6 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        v7 = a1[4];
        v8 = v6;
        v9 = [v7 internal];
        v10 = [v9 conciseDescription];
        v14 = 138412290;
        v15 = v10;
        _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_INFO, "Queuing data for player: %@ (not ready)", &v14, 0xCu);
      }

      v11 = objc_alloc_init(GKMatchEvent);
      [(GKMatchEvent *)v11 setRecipientPlayer:a1[5]];
      [(GKMatchEvent *)v11 setData:a1[6]];
      v12 = [v4 events];
      [v12 addObject:v11];
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)sendQueuedStatesAndPackets
{
  v32 = *MEMORY[0x277D85DE8];
  [(GKMatch *)self players];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  obj = v24 = 0u;
  v22 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v22)
  {
    v21 = *v24;
    *&v3 = 138412546;
    v18 = v3;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v24 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v23 + 1) + 8 * i);
        v6 = [v5 internal];
        v7 = [v6 playerID];

        v8 = self->_playerEventQueues;
        objc_sync_enter(v8);
        v9 = [(NSMutableDictionary *)self->_playerEventQueues objectForKey:v7];
        v10 = v9;
        if (v9)
        {
          v11 = [v9 deferedPlayerState];
          v12 = [v10 playerState];
          [v10 setDeferedPlayerState:0];
          if (!os_log_GKGeneral)
          {
            v13 = GKOSLoggers();
          }

          v14 = os_log_GKMatch;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v19 = [v5 internal];
            v16 = [v19 debugDescription];
            *buf = v18;
            v28 = v16;
            v29 = 2112;
            v30 = &unk_283B33250;
            _os_log_debug_impl(&dword_227904000, v14, OS_LOG_TYPE_DEBUG, "_playerEventQueues for player %@ changed deferedPlayerState to %@", buf, 0x16u);
          }

          v15 = v12 == 1;
        }

        else
        {
          v15 = 0;
          v11 = 0;
        }

        objc_sync_exit(v8);
        if (v11)
        {
          [(GKMatch *)self sendStateCallbackForPlayer:v5 state:v11];
        }

        if (v15)
        {
          [(GKMatch *)self sendQueuedPacketsForPlayer:v5];
        }
      }

      v22 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v22);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)sendQueuedPacketsForPlayer:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__GKMatch_sendQueuedPacketsForPlayer___block_invoke;
  v6[3] = &unk_2785DF028;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(GKMatch *)self withEventQueueForPlayer:v5 perform:v6];
}

void __38__GKMatch_sendQueuedPacketsForPlayer___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = v3;
    obj = [v3 events];
    v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v4)
    {
      v5 = *v22;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v22 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v21 + 1) + 8 * i);
          if (!os_log_GKGeneral)
          {
            v8 = GKOSLoggers();
          }

          v9 = os_log_GKMatch;
          if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "Calling delegate with saved peer data", buf, 2u);
          }

          v10 = *(a1 + 32);
          v11 = [v10 delegate];
          v12 = [v7 data];
          v13 = [v7 recipientPlayer];
          [v10 _delegate:v11 didReceiveData:v12 forRecipient:v13 fromPlayer:*(a1 + 40)];
        }

        v4 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v4);
    }

    v14 = [v18 events];
    [v14 removeAllObjects];

    [v18 setOkToSend:1];
    v15 = *(*(a1 + 32) + 88);
    objc_sync_enter(v15);
    v16 = [*(a1 + 40) referenceKey];
    if (([*(*(a1 + 32) + 88) containsObject:v16] & 1) == 0)
    {
      [*(*(a1 + 32) + 88) addObject:v16];
    }

    objc_sync_exit(v15);
    v3 = v18;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)deferStateCallbackForPlayer:(id)a3 state:(int64_t)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [(GKMatch *)self stringForGKPlayerConnectionState:a4];
    v11 = [v6 internal];
    v12 = [v11 debugDescription];
    *buf = 138412546;
    v19 = v10;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "defering GKPlayerConnectionState: %@ callback for player: %@", buf, 0x16u);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __45__GKMatch_deferStateCallbackForPlayer_state___block_invoke;
  v15[3] = &unk_2785DF0F0;
  v16 = v6;
  v17 = a4;
  v13 = v6;
  [(GKMatch *)self withEventQueueForPlayer:v13 perform:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __45__GKMatch_deferStateCallbackForPlayer_state___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    __45__GKMatch_deferStateCallbackForPlayer_state___block_invoke_cold_2();
  }

  v4 = v3;
  [v3 setDeferedPlayerState:*(a1 + 40)];
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    __45__GKMatch_deferStateCallbackForPlayer_state___block_invoke_cold_1(a1, v6, (a1 + 40));
  }
}

- (void)updateStateForPlayer:(id)a3 state:(int64_t)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
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
    v12 = [(GKMatch *)self stringForGKPlayerConnectionState:a4];
    *buf = 138412546;
    v25 = v11;
    v26 = 2112;
    v27 = v12;
    _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "Updating GKPlayerConnectionState for player: %@ to %@", buf, 0x16u);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __38__GKMatch_updateStateForPlayer_state___block_invoke;
  v21[3] = &unk_2785DF118;
  v21[4] = self;
  v23 = a4;
  v13 = v6;
  v22 = v13;
  [(GKMatch *)self withEventQueueForPlayer:v13 createIfNeeded:1 perform:v21];
  if (!os_log_GKGeneral)
  {
    v14 = GKOSLoggers();
  }

  v15 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v16 = MEMORY[0x277CCABB0];
    expectedPlayerCount = self->_expectedPlayerCount;
    v18 = v15;
    v19 = [v16 numberWithUnsignedInteger:expectedPlayerCount];
    *buf = 138412290;
    v25 = v19;
    _os_log_impl(&dword_227904000, v18, OS_LOG_TYPE_INFO, "expecting %@ more players", buf, 0xCu);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __38__GKMatch_updateStateForPlayer_state___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (([v3 counted] & 1) == 0)
    {
      v6 = (a1 + 4);
      v5 = a1[4];
      v7 = *(v5 + 176);
      if (v7)
      {
        *(v5 + 176) = v7 - 1;
        if (!os_log_GKGeneral)
        {
          v8 = GKOSLoggers();
        }

        v9 = os_log_GKMatch;
        if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
        {
          __38__GKMatch_updateStateForPlayer_state___block_invoke_cold_1((a1 + 4), v9);
        }

        if (!*(*v6 + 22))
        {
          if (!os_log_GKGeneral)
          {
            v10 = GKOSLoggers();
          }

          if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
          {
            __38__GKMatch_updateStateForPlayer_state___block_invoke_cold_2();
          }

          [*v6 updateRematchID];
        }
      }

      [v4 setCounted:1];
    }

    if (a1[6] == 2)
    {
      v12 = a1[5];
      v11 = a1 + 5;
      v13 = [v12 internal];
      v14 = [v13 playerID];

      [*(*(v11 - 1) + 56) removeObjectForKey:v14];
      [*(*(v11 - 1) + 32) removeObject:v14];
      if (!os_log_GKGeneral)
      {
        v15 = GKOSLoggers();
      }

      v16 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
      {
        __38__GKMatch_updateStateForPlayer_state___block_invoke_cold_3(v11, v16);
      }
    }
  }
}

- (void)sendStateCallbackForPlayer:(id)a3 state:(int64_t)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!self->_expectedPlayerCount)
  {
    v7 = +[GKReporter reporter];
    [v7 reportConnectingDevicesDuration];

    v8 = +[GKReporter reporter];
    [v8 reportProgramaticInviteDuration];
  }

  v9 = [(GKMatch *)self delegate];
  if (v9)
  {

LABEL_6:
    v11 = [(GKMatch *)self delegate];

    if (v11)
    {
      v12 = [(GKMatch *)self delegate];
      [(GKMatch *)self sendStateCallbackToDelegate:v12 forPlayer:v6 state:a4];
    }

    v13 = [(GKMatch *)self inviteDelegate];

    if (v13)
    {
      v14 = [(GKMatch *)self inviteDelegate];
      [(GKMatch *)self sendStateCallbackToDelegate:v14 forPlayer:v6 state:a4];
    }

    goto LABEL_10;
  }

  v10 = [(GKMatch *)self inviteDelegate];

  if (v10)
  {
    goto LABEL_6;
  }

  if (!os_log_GKGeneral)
  {
    v16 = GKOSLoggers();
  }

  v17 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
  {
    v18 = v17;
    v19 = [v6 internal];
    v20 = [v19 debugDescription];
    v21 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    v22 = 138412802;
    v23 = v20;
    v24 = 2112;
    v25 = v21;
    v26 = 2048;
    v27 = self;
    _os_log_error_impl(&dword_227904000, v18, OS_LOG_TYPE_ERROR, "Cannot send state call back for player: %@, state: %@, due to missing delegates set for GKMatch: %p", &v22, 0x20u);
  }

LABEL_10:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)sendStateCallbackToDelegate:(id)a3 forPlayer:(id)a4 state:(int64_t)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  [(GKMatch *)self updateStateForPlayer:v9 state:a5];
  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v13 = [(GKMatch *)self stringForGKPlayerConnectionState:a5];
    v14 = [v9 internal];
    v15 = [v14 debugDescription];
    *buf = 138412802;
    v39 = v8;
    v40 = 2112;
    v41 = v13;
    v42 = 2112;
    v43 = v15;
    _os_log_impl(&dword_227904000, v12, OS_LOG_TYPE_INFO, "Informing state change to delegate %@: The GKPlayerConnectionState = %@, for player: %@", buf, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __55__GKMatch_sendStateCallbackToDelegate_forPlayer_state___block_invoke;
    v33[3] = &unk_2785DF140;
    v34 = v8;
    v35 = self;
    v36 = v9;
    v37 = a5;
    [v36 updateScopedIDs:v33];
  }

  else if (objc_opt_respondsToSelector())
  {
    if (GKApplicationLinkedOnOrAfter(917504, 659456))
    {
      if (!os_log_GKGeneral)
      {
        v23 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
      {
        [GKMatch sendStateCallbackToDelegate:forPlayer:state:];
      }
    }

    else
    {
      v31 = [v9 internal];
      v32 = [v31 playerID];
      [v8 match:self player:v32 didChangeState:a5];
    }
  }

  else
  {
    v24 = [(GKMatch *)self delegate];
    if (v24)
    {
      v25 = v24;
      v26 = [(GKMatch *)self delegate];
      v27 = [v26 isEqual:v8];

      if (v27)
      {
        if (!os_log_GKGeneral)
        {
          v28 = GKOSLoggers();
        }

        v29 = os_log_GKMatch;
        if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_227904000, v29, OS_LOG_TYPE_INFO, "Delegate doesn't respond to state change callback", buf, 2u);
        }

        if (!os_log_GKGeneral)
        {
          v30 = GKOSLoggers();
        }

        if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
        {
          [GKMatch sendStateCallbackToDelegate:forPlayer:state:];
        }
      }
    }
  }

  if (a5 == 1)
  {
    if ([(GKMatch *)self fastStartStateActive])
    {
      v16 = [(GKMatch *)self connectedPlayers];
      v17 = [v16 count];
      v18 = [(GKMatch *)self matchmaker];
      v19 = [v18 currentMatchRequest];
      v20 = [v19 minPlayers];

      if (v17 >= v20)
      {
        v21 = [(GKMatch *)self makeInviteMessageDoneData];
        [(GKMatch *)self sendInviteData:v21];
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __55__GKMatch_sendStateCallbackToDelegate_forPlayer_state___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__GKMatch_sendStateCallbackToDelegate_forPlayer_state___block_invoke_2;
  v7[3] = &unk_2785DF140;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v8 = v2;
  v9 = v3;
  v5 = v4;
  v6 = *(a1 + 56);
  v10 = v5;
  v11 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

- (id)connectedPlayers
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = self->_playerEventQueues;
  objc_sync_enter(v4);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(GKMatch *)self players];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v16 + 1) + 8 * i) internal];
        v10 = [v9 playerID];

        v11 = [(NSMutableDictionary *)self->_playerEventQueues objectForKey:v10];
        v12 = v11;
        if (v11 && [v11 playerState] == 1)
        {
          v13 = [v12 player];
          [v3 addObject:v13];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  objc_sync_exit(v4);
  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)sendConnectingStateCallbackToDelegate:(id)a3 forPlayers:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = v6;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
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
          if (!os_log_GKGeneral)
          {
            v12 = GKOSLoggers();
          }

          v13 = os_log_GKMatch;
          if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
          {
            v14 = v13;
            v15 = [v11 internal];
            v16 = [v15 debugDescription];
            *buf = 138412290;
            v25 = v16;
            _os_log_impl(&dword_227904000, v14, OS_LOG_TYPE_INFO, "Informing match inviteDelegate to set connecting state for player %@", buf, 0xCu);
          }

          [v5 setConnectingStateForPlayer:v11];
        }

        v8 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v8);
    }

    v6 = v18;
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)reinviteeAcceptedNotification:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"peer-id"];
  if (!os_log_GKGeneral)
  {
    v6 = GKOSLoggers();
  }

  v7 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v16 = v5;
    _os_log_impl(&dword_227904000, v7, OS_LOG_TYPE_INFO, "Got reinvite acception notification: player(ID: %@) would like to reconnect to this  match...", buf, 0xCu);
  }

  v8 = [v4 objectForKeyedSubscript:@"invite-version"];
  v9 = [v8 unsignedCharValue];

  v10 = [(GKMatch *)self transportContext];
  [v10 updateAfterInviteeAcceptedUserInfo:v4];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __41__GKMatch_reinviteeAcceptedNotification___block_invoke;
  v13[3] = &unk_2785DEF60;
  v13[4] = self;
  v14 = v4;
  v11 = v4;
  [(GKMatch *)self connectToPlayers:0 version:v9 invitedByLocalPlayer:1 completionHandler:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __41__GKMatch_reinviteeAcceptedNotification___block_invoke(uint64_t a1)
{
  [*(a1 + 32) handleRelayPushData:*(a1 + 40) onlyIfPreemptive:1];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:*(a1 + 32) name:@"GKInviteeAcceptedGameInvite" object:0];

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:*(a1 + 32) name:@"GKInviteeDeclinedGameInvite" object:0];
}

- (void)reinviteeDeclinedNotification:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v20 = a3;
  v21 = [v20 userInfo];
  v4 = [v21 objectForKey:@"I"];
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v28 = v4;
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "Got reinvite declined notification: player %@ has refused a reconnect to this match...", buf, 0xCu);
  }

  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 removeObserver:self name:@"GKInviteeAcceptedGameInvite" object:0];

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 removeObserver:self name:@"GKInviteeDeclinedGameInvite" object:0];

  v9 = self->_reinvitedPlayers;
  objc_sync_enter(v9);
  v10 = self->_reinvitedPlayers;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = v10;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = *v23;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = [v15 internal];
        v17 = [v16 playerID];
        v18 = [v17 isEqualToString:v4];

        if (v18)
        {
          [(NSMutableArray *)v11 removeObject:v15];
          goto LABEL_15;
        }
      }

      v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  objc_sync_exit(v9);
  v19 = *MEMORY[0x277D85DE8];
}

- (void)conditionallyReinvitePlayer:(id)a3 sessionToken:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  playerPushTokens = self->_playerPushTokens;
  v9 = [v6 internal];
  v10 = [v9 playerID];
  v11 = [(NSMutableDictionary *)playerPushTokens objectForKey:v10];

  if (v11)
  {
    v12 = [(GKMatch *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v13 = [v12 match:self shouldReinviteDisconnectedPlayer:v6];
      if (v7)
      {
LABEL_4:
        if (v13)
        {
          v14 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings GAME_RECONNECT_MESSAGE];
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 3221225472;
          aBlock[2] = __52__GKMatch_conditionallyReinvitePlayer_sessionToken___block_invoke;
          aBlock[3] = &unk_2785DF190;
          aBlock[4] = self;
          v28 = v14;
          v29 = v6;
          v30 = v7;
          v31 = v11;
          v15 = v14;
          v16 = _Block_copy(aBlock);
          [(GKMatch *)self getLocalConnectionDataWithCompletionHandler:v16];
        }
      }
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        if (!os_log_GKGeneral)
        {
          v18 = GKOSLoggers();
        }

        v19 = os_log_GKMatch;
        if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
        {
          v20 = v19;
          v21 = [v6 internal];
          v22 = [v21 debugDescription];
          *buf = 138412290;
          v33 = v22;
          _os_log_impl(&dword_227904000, v20, OS_LOG_TYPE_INFO, "Player %@ disconnected: do not reinvite...", buf, 0xCu);
        }

        if (!os_log_GKGeneral)
        {
          v23 = GKOSLoggers();
        }

        if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
        {
          [GKMatch conditionallyReinvitePlayer:sessionToken:];
        }

        goto LABEL_20;
      }

      if (GKApplicationLinkedOnOrAfter(917504, 659456))
      {
        if (!os_log_GKGeneral)
        {
          v17 = GKOSLoggers();
        }

        if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
        {
          [GKMatch conditionallyReinvitePlayer:sessionToken:];
        }

        goto LABEL_20;
      }

      v25 = [v6 internal];
      v26 = [v25 playerID];
      v13 = [v12 match:self shouldReinvitePlayer:v26];

      if (v7)
      {
        goto LABEL_4;
      }
    }

LABEL_20:
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __52__GKMatch_conditionallyReinvitePlayer_sessionToken___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    objc_initWeak(&location, *(a1 + 32));
    v8 = [*(a1 + 32) transportContext];
    v9 = [v8 daemonProxy];
    v10 = *(a1 + 40);
    v11 = [*(a1 + 48) internal];
    v12 = *(a1 + 56);
    v13 = *(a1 + 64);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __52__GKMatch_conditionallyReinvitePlayer_sessionToken___block_invoke_2;
    v17[3] = &unk_2785DF168;
    v18 = *(a1 + 48);
    v19 = *(a1 + 40);
    objc_copyWeak(&v20, &location);
    [v9 sendReconnectInvitation:v10 toPlayer:v11 connectionData:v5 sessionToken:v12 pushToken:v13 handler:v17];

    if (!os_log_GKGeneral)
    {
      v14 = GKOSLoggers();
    }

    v15 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v23 = 0;
      _os_log_impl(&dword_227904000, v15, OS_LOG_TYPE_INFO, "error getLocalConnectionData for re-invite = %@", buf, 0xCu);
    }

    objc_destroyWeak(&v20);

    objc_destroyWeak(&location);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __52__GKMatch_conditionallyReinvitePlayer_sessionToken___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __52__GKMatch_conditionallyReinvitePlayer_sessionToken___block_invoke_2_cold_1();
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = [v7 internal];
      v10 = [v9 conciseDescription];
      v11 = *(a1 + 40);
      v18 = 138412546;
      v19 = v10;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_INFO, "re-invite request sent == [%@, %@]...", &v18, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v13 = WeakRetained[8];
    objc_sync_enter(v13);
    if (([WeakRetained[8] containsObject:*(a1 + 32)] & 1) == 0)
    {
      [WeakRetained[8] addObject:*(a1 + 32)];
    }

    objc_sync_exit(v13);

    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    v15 = +[GKLocalPlayer localPlayer];
    [v14 addObserver:WeakRetained selector:sel_reinviteeAcceptedNotification_ name:@"GKInviteeAcceptedGameInvite" object:v15];

    v16 = +[GKLocalPlayer localPlayer];
    [v14 addObserver:WeakRetained selector:sel_reinviteeDeclinedNotification_ name:@"GKInviteeDeclinedGameInvite" object:v16];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)conditionallyRelaunchPlayer:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self->_reinvitedPlayers;
  objc_sync_enter(v5);
  v6 = self->_reinvitedPlayers;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v6;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = *v20;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v20 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v19 + 1) + 8 * v10);
      if ([v11 isEqual:{v4, v19}])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    playerPushTokens = self->_playerPushTokens;
    v13 = [v4 internal];
    v14 = [v13 playerID];
    v15 = [(NSMutableDictionary *)playerPushTokens objectForKey:v14];

    [(NSMutableArray *)v7 removeObject:v11];
    objc_sync_exit(v5);

    if (!v15)
    {
      goto LABEL_17;
    }

    if (!os_log_GKGeneral)
    {
      v16 = GKOSLoggers();
    }

    v17 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      [(GKMatch *)v17 conditionallyRelaunchPlayer:v4];
    }

    v5 = [(GKMatch *)self makeInviteMessageDoneData];
    [(GKMatch *)self sendInviteData:v5];
  }

  else
  {
LABEL_9:

    objc_sync_exit(v5);
  }

LABEL_17:
  v18 = *MEMORY[0x277D85DE8];
}

- (void)acceptRelayResponse:(id)a3 player:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(GKMatch *)self transport];
  v8 = [v6 internal];

  v9 = [v8 playerID];
  [v10 acceptRelayResponse:v7 playerID:v9];
}

- (void)preemptRelay:(id)a3
{
  v4 = a3;
  v7 = [(GKMatch *)self transport];
  v5 = [v4 internal];

  v6 = [v5 playerID];
  [v7 preemptRelay:v6];
}

- (void)relayDidReceivePushData:(id)a3 completionHandler:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v29 = a4;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_INFO, "relayPush - push notification's userInfo: %@", &buf, 0xCu);
  }

  v9 = [v6 objectForKey:@"I"];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__6;
  v50 = __Block_byref_object_dispose__6;
  v51 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__6;
  v43 = __Block_byref_object_dispose__6;
  v44 = 0;
  v10 = self->_playerEventQueues;
  objc_sync_enter(v10);
  v11 = [(NSMutableDictionary *)self->_playerEventQueues objectForKey:v9];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 connectionInfo];
    v14 = [v13 objectForKey:@"session-token"];
    v15 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v14;

    if (!os_log_GKGeneral)
    {
      v16 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      [GKMatch relayDidReceivePushData:&buf + 8 completionHandler:?];
    }

    v17 = [v12 player];
    v18 = v40[5];
    v40[5] = v17;
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v19 = GKOSLoggers();
    }

    v20 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      *v45 = 138412290;
      v46 = v9;
      _os_log_impl(&dword_227904000, v20, OS_LOG_TYPE_INFO, "player event queue does not exist for %@", v45, 0xCu);
    }
  }

  objc_sync_exit(v10);
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMatch.m", 1769, "-[GKMatch relayDidReceivePushData:completionHandler:]"];
  v22 = [GKDispatchGroup dispatchGroupWithName:v21];

  if (!v40[5])
  {
    if (!os_log_GKGeneral)
    {
      v23 = GKOSLoggers();
    }

    v24 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      *v45 = 0;
      _os_log_impl(&dword_227904000, v24, OS_LOG_TYPE_INFO, "no player, bootstrapping player (loading player from identifier)", v45, 2u);
    }

    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __53__GKMatch_relayDidReceivePushData_completionHandler___block_invoke;
    v35[3] = &unk_2785DF1E0;
    v37 = self;
    v38 = &v39;
    v36 = v9;
    [v22 perform:v35];
  }

  v25 = dispatch_get_global_queue(0, 0);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __53__GKMatch_relayDidReceivePushData_completionHandler___block_invoke_363;
  v30[3] = &unk_2785DF208;
  v33 = &v39;
  p_buf = &buf;
  v30[4] = self;
  v26 = v6;
  v31 = v26;
  v27 = v29;
  v32 = v27;
  [v22 notifyOnQueue:v25 block:v30];

  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&buf, 8);

  v28 = *MEMORY[0x277D85DE8];
}

void __53__GKMatch_relayDidReceivePushData_completionHandler___block_invoke(int8x16_t *a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v13[0] = a1[2].i64[0];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__GKMatch_relayDidReceivePushData_completionHandler___block_invoke_2;
  v9[3] = &unk_2785DF1B8;
  v12 = a1[3].i64[0];
  v8 = a1[2];
  v5 = v8.i64[0];
  v10 = vextq_s8(v8, v8, 8uLL);
  v11 = v3;
  v6 = v3;
  [GKPlayer loadPlayersForIdentifiersPrivate:v4 withCompletionHandler:v9];

  v7 = *MEMORY[0x277D85DE8];
}

void __53__GKMatch_relayDidReceivePushData_completionHandler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = [v5 firstObject];
    v8 = *(a1[7] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = *(a1[4] + 56);
    objc_sync_enter(v10);
    v11 = [*(a1[4] + 56) objectForKey:a1[5]];
    v12 = v11;
    if (v11)
    {
      [v11 setPlayer:*(*(a1[7] + 8) + 40)];
    }

    objc_sync_exit(v10);
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      __53__GKMatch_relayDidReceivePushData_completionHandler___block_invoke_2_cold_1(a1);
    }
  }

  (*(a1[6] + 16))();
}

void __53__GKMatch_relayDidReceivePushData_completionHandler___block_invoke_363(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
LABEL_15:
    (*(*(a1 + 48) + 16))();
    v12 = *MEMORY[0x277D85DE8];
    return;
  }

  v2 = *(a1 + 32);
  v3 = *(*(*(a1 + 64) + 8) + 40);
  v4 = [*(a1 + 40) objectForKey:@"s"];
  v5 = [v2 dataFromBase64String:v4];
  LOBYTE(v3) = [v3 isEqualToData:v5];

  if ((v3 & 1) == 0)
  {
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    v10 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      v13 = *(*(*(a1 + 64) + 8) + 40);
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v16 = v10;
      v17 = [v15 objectForKey:@"s"];
      v18 = [v14 dataFromBase64String:v17];
      *buf = 134218498;
      v21 = v14;
      v22 = 2112;
      v23 = v13;
      v24 = 2112;
      v25 = v18;
      _os_log_error_impl(&dword_227904000, v16, OS_LOG_TYPE_ERROR, "relayPush for match: %p - session token doesn't match with this session! - sessionToken from relay push: %@ - sessionToken in this match: %@", buf, 0x20u);
    }

    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      if (!os_log_GKGeneral)
      {
        v11 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
      {
        __53__GKMatch_relayDidReceivePushData_completionHandler___block_invoke_363_cold_1((a1 + 32));
      }
    }

    goto LABEL_15;
  }

  v6 = *(a1 + 48);
  v19 = [*(*(*(a1 + 56) + 8) + 40) internal];
  v7 = [v19 playerID];
  (*(v6 + 16))(v6, v7);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)connectionDidChangeWithState:(int)a3 playerID:(id)a4
{
  v6 = a4;
  stateChangeQueue = self->_stateChangeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke;
  block[3] = &unk_2785DF2D0;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(stateChangeQueue, block);
}

void __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 56);
  if (v2 && ([v2 allValues], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "count"), v3, v4))
  {
    v5 = [*(*(a1 + 32) + 56) allValues];
    v6 = [v5 firstObject];

    v7 = [v6 connectionInfo];
    v8 = [v7 objectForKeyedSubscript:@"session-token"];
  }

  else
  {
    v8 = @"Unknown";
  }

  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
  }

  v10 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 48);
    v13 = v10;
    v14 = [v11 stringForGKPeerConnectionState:v12];
    v15 = *(a1 + 40);
    *buf = 134218754;
    v34 = v11;
    v35 = 2112;
    v36 = v14;
    v37 = 2112;
    v38 = v15;
    v39 = 2112;
    v40 = v8;
    _os_log_impl(&dword_227904000, v13, OS_LOG_TYPE_INFO, "GKTransportClientDelegate call back for match: %p - new state: %@ - playerID: %@ - sessionToken: %@.", buf, 0x2Au);
  }

  v16 = [GKDispatchGroup dispatchGroupWithName:@"com.apple.gamecenter.match.changestategroup"];
  v17 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
  [v16 setObject:v17 forKeyedSubscript:@"player"];
  if (!v17)
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_376;
    v28[3] = &unk_2785DF280;
    v18 = *(a1 + 40);
    v19 = *(a1 + 32);
    v29 = v18;
    v30 = v19;
    v32 = *(a1 + 48);
    v31 = v16;
    [v31 perform:v28];
  }

  v20 = dispatch_get_global_queue(0, 0);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_381;
  v24[3] = &unk_2785DF2D0;
  v21 = *(a1 + 32);
  v25 = v16;
  v26 = v21;
  v27 = *(a1 + 48);
  v22 = v16;
  [v22 notifyOnQueue:v20 block:v24];

  v23 = *MEMORY[0x277D85DE8];
}

void __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_376(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    *buf = 138412290;
    v35 = v6;
    _os_log_impl(&dword_227904000, v5, OS_LOG_TYPE_INFO, "fetching player with playerID: %@", buf, 0xCu);
  }

  if ([GKPlayer isGuestPlayerID:*(a1 + 32)])
  {
    v7 = [*(a1 + 32) componentsSeparatedByString:@"_"];
    v8 = [v7 objectAtIndexedSubscript:0];
    v9 = [v7 objectAtIndexedSubscript:1];
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_376_cold_2();
    }

    v33 = v8;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_377;
    v26[3] = &unk_2785DF230;
    v27 = v9;
    v31 = *(a1 + 56);
    v19 = *(a1 + 32);
    v12 = v19.i64[0];
    v28 = vextq_s8(v19, v19, 8uLL);
    v29 = *(a1 + 48);
    v30 = v3;
    v13 = v3;
    v14 = v9;
    [GKPlayer loadPlayersForIdentifiersPrivate:v11 withCompletionHandler:v26];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v15 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_376_cold_1((a1 + 32));
    }

    v32 = *(a1 + 32);
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_379;
    v21[3] = &unk_2785DF258;
    v22 = *(a1 + 48);
    v25 = *(a1 + 56);
    v20 = *(a1 + 32);
    v17 = v20.i64[0];
    v23 = vextq_s8(v20, v20, 8uLL);
    v24 = v3;
    v7 = v3;
    [GKPlayer loadPlayersForIdentifiersPrivate:v16 withCompletionHandler:v21];

    v8 = v22;
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_377(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [a2 firstObject];
  v4 = [GKAnonymousGuestPlayerInternal alloc];
  v5 = [v3 internal];
  v6 = [(GKAnonymousGuestPlayerInternal *)v4 initWithHostPlayerInternal:v5 guestIdentifier:*(a1 + 32)];

  v7 = [[GKPlayer alloc] initWithInternalRepresentation:v6];
  v8 = *(a1 + 40);
  v11[0] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  [v8 addPlayers:v9];

  [*(a1 + 40) connectionDidChangeWithState:*(a1 + 72) playerID:*(a1 + 48)];
  [*(a1 + 56) setObject:v7 forKeyedSubscript:@"player"];
  (*(*(a1 + 64) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

void __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_379(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![GKMatchmaker canPlayMultiplayerGameWithPlayers:v3])
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_379_cold_1();
    }

    v6 = [MEMORY[0x277CCA9B8] userErrorForCode:10 userInfo:0];
    [*(a1 + 32) setError:v6];
    goto LABEL_9;
  }

  [*(a1 + 40) addPlayers:v3];
  v4 = +[GKReporter reporter];
  [v4 reportEvent:@"com.apple.GameKit.multiplayer.realtime.connectionResult" type:@"realtime.allMatchTotal"];

  v5 = +[GKReporter reporter];
  [v5 reportEvent:@"com.apple.GameKit.multiplayer.realtime.connectionResult" type:@"realtime.indirectMatchTotal"];

  [*(a1 + 40) connectionDidChangeWithState:*(a1 + 64) playerID:*(a1 + 48)];
  if ([v3 count])
  {
    v6 = [v3 firstObject];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:@"player"];
LABEL_9:
  }

  (*(*(a1 + 56) + 16))();
}

void __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_381(uint64_t a1)
{
  v113 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"player"];
  v4 = [*v2 error];
  v5 = [v4 code];

  if (v5 != 10)
  {
    if (!v3)
    {
      goto LABEL_67;
    }

    v6 = 0;
    v7 = *(a1 + 48);
    v8 = 1;
    v9 = 1;
    if (v7 != 2 && v7 != 5)
    {
      v9 = 0;
      if (v7 == 3)
      {
        v6 = 1;
        v8 = 2;
      }

      else
      {
        v6 = 0;
        v8 = 0;
      }
    }

    v80 = v6;
    v81 = v9;
    v104 = 0;
    v105 = &v104;
    v106 = 0x2020000000;
    v107 = 0;
    v100 = 0;
    v101 = &v100;
    v102 = 0x2020000000;
    v103 = 0;
    v94 = 0;
    v95 = &v94;
    v96 = 0x3032000000;
    v97 = __Block_byref_object_copy__6;
    v98 = __Block_byref_object_dispose__6;
    v99 = 0;
    v10 = *(a1 + 40);
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_2;
    v87[3] = &unk_2785DF2A8;
    v90 = &v100;
    v91 = &v94;
    v82 = v8;
    v93 = v8;
    v11 = v3;
    v12 = *(a1 + 40);
    v88 = v11;
    v89 = v12;
    v92 = &v104;
    [v10 withEventQueueForPlayer:v11 createIfNeeded:1 perform:v87];
    if (*(v105 + 24) != 1)
    {
LABEL_66:

      _Block_object_dispose(&v94, 8);
      _Block_object_dispose(&v100, 8);
      _Block_object_dispose(&v104, 8);
      goto LABEL_67;
    }

    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    v14 = os_log_GKMatch;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v74 = [v11 internal];
      v75 = [v74 debugDescription];
      v76 = [*(a1 + 40) stringForGKPlayerConnectionState:v82];
      *buf = 138412546;
      v110 = v75;
      v111 = 2112;
      v112 = v76;
      _os_log_debug_impl(&dword_227904000, v14, OS_LOG_TYPE_DEBUG, "EventQueue for player %@ changed playerState to %@", buf, 0x16u);
    }

    v15 = [*(a1 + 40) transportContext];
    v16 = [v15 daemonProxy];
    v17 = MEMORY[0x277CCACA8];
    v18 = [v11 alias];
    v19 = [*(a1 + 40) stringForGKPeerConnectionState:*(a1 + 48)];
    v20 = [v17 stringWithFormat:@"%@ -> %@", v18, v19];
    [v16 emitMultiplayerMessage:v20];

    if (v81)
    {
      v21 = *(v101 + 24);
      if (v21 > [*(a1 + 40) version])
      {
        [*(a1 + 40) sendVersionData:objc_msgSend(*(a1 + 40) toPlayer:{"version"), v11}];
      }

      v22 = *(a1 + 40);
      v23 = [v11 internal];
      v24 = [v23 playerID];
      [v22 addPlayerToGroup:v24];

      v25 = +[GKReporter reporter];
      [v25 reportEvent:@"com.apple.GameKit.match" type:@"connect"];

      v26 = [*(a1 + 40) matchmaker];
      v27 = [v11 internal];
      v28 = [v27 playerID];
      [v26 reportPlayerConnectedWithPlayerID:v28 forMatch:*(a1 + 40)];

      v29 = [*(a1 + 40) matchmaker];
      v30 = [v29 allInvitedInvitees];
      v31 = [v30 allObjects];

      v32 = [v11 internal];
      v33 = [v32 playerID];
      LODWORD(v30) = [v31 containsObject:v33];

      if (v30)
      {
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v34 = v31;
        v35 = [v34 countByEnumeratingWithState:&v83 objects:v108 count:16];
        if (v35)
        {
          v36 = *v84;
          do
          {
            for (i = 0; i != v35; ++i)
            {
              if (*v84 != v36)
              {
                objc_enumerationMutation(v34);
              }

              v38 = *(*(&v83 + 1) + 8 * i);
              v39 = [*(a1 + 40) playersByJoinType];
              v40 = [v39 objectForKeyedSubscript:v38];

              if (v40)
              {
                [*(a1 + 40) syncPlayers:v34 forJoinType:5 toInvitees:v34];
              }
            }

            v35 = [v34 countByEnumeratingWithState:&v83 objects:v108 count:16];
          }

          while (v35);
        }
      }

      v41 = *(a1 + 48);
      if (v41 == 2)
      {
        v42 = +[GKReporter reporter];
        [v42 reportEvent:@"com.apple.GameKit.multiplayer.realtime.connectionType" type:@"realtime.p2pSuccess"];
      }

      else if (v41 == 5)
      {
        v42 = +[GKReporter reporter];
        [v42 reportEvent:@"com.apple.GameKit.multiplayer.realtime.connectionType" type:@"realtime.relaySuccess"];
      }

      else
      {
        if (!os_log_GKGeneral)
        {
          v55 = GKOSLoggers();
        }

        v42 = os_log_GKMatch;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v77 = [v11 internal];
          v78 = [v77 debugDescription];
          v79 = [*(a1 + 40) stringForGKPeerConnectionState:*(a1 + 48)];
          *buf = 138412546;
          v110 = v78;
          v111 = 2112;
          v112 = v79;
          _os_log_error_impl(&dword_227904000, v42, OS_LOG_TYPE_ERROR, "Connection state not match for player: %@, state=%@, playerState=GKPlayerStateConnected", buf, 0x16u);
        }
      }

      v56 = [*(a1 + 40) transportContext];
      v57 = [v56 healthMonitorEnabled];

      if (!v57)
      {
        goto LABEL_49;
      }

      if (!os_log_GKGeneral)
      {
        v58 = GKOSLoggers();
      }

      v59 = os_log_GKMatch;
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        [v11 internal];
        [objc_claimAutoreleasedReturnValue() debugDescription];
        objc_claimAutoreleasedReturnValue();
        __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_381_cold_2();
      }

      v53 = [*(a1 + 40) healthMonitor];
      v54 = [v11 internal];
      v60 = [v54 playerID];
      [v53 startMonitor:v60];
    }

    else
    {
      v43 = +[GKReporter reporter];
      [v43 reportEvent:@"com.apple.GameKit.match" type:@"disconnect"];

      v44 = [*(a1 + 40) matchmaker];
      [v44 playerDisconnected:v11];

      v45 = *(a1 + 40);
      v46 = MEMORY[0x277CCACA8];
      v47 = [v11 internal];
      v48 = [v47 alias];
      v49 = [v46 stringWithFormat:@"Player disconnection detected: %@. If unexpected, Tap here to report.", v48];
      [v45 promptRadarAndRequestRemoteLogsWithDescriptionAddition:v49];

      v50 = [*(a1 + 40) transportContext];
      LODWORD(v48) = [v50 healthMonitorEnabled];

      if (!v48)
      {
LABEL_50:
        v61 = [*(a1 + 40) delegate];
        v62 = [*(a1 + 40) inviteDelegate];
        if (v61 | v62)
        {
          if (v61)
          {
            v63 = MEMORY[0x277CBEB18];
            v64 = [*(a1 + 40) allIDs];
            v65 = [v63 arrayWithArray:v64];

            v66 = +[GKLocalPlayer localPlayer];
            v67 = [v66 internal];
            v68 = [v67 playerID];
            [v65 removeObject:v68];

            [*(a1 + 40) sendStateCallbackForPlayer:v11 state:v82];
            if (v81)
            {
              [*(a1 + 40) conditionallyRelaunchPlayer:v11];
              [*(a1 + 40) sendQueuedPacketsForPlayer:v11];
            }

            else if (v80)
            {
              if ([*(*(a1 + 40) + 88) count] <= 1 && (objc_msgSend(*(a1 + 40), "recentlyBecameActive") & 1) == 0)
              {
                if (v95[5])
                {
                  if ([v65 count] == 1)
                  {
                    v69 = [v65 objectAtIndex:0];
                    v70 = [v11 internal];
                    v71 = [v70 playerID];
                    v72 = [v69 isEqualToString:v71];

                    if (v72)
                    {
                      [*(a1 + 40) conditionallyReinvitePlayer:v11 sessionToken:v95[5]];
                    }
                  }
                }
              }
            }
          }

          if (v62)
          {
            [*(a1 + 40) updateStateForPlayer:v11 state:v82];
            [*(a1 + 40) sendStateCallbackToDelegate:v62 forPlayer:v11 state:v82];
          }
        }

        else
        {
          [*(a1 + 40) deferStateCallbackForPlayer:v11 state:v82];
        }

        goto LABEL_66;
      }

      if (!os_log_GKGeneral)
      {
        v51 = GKOSLoggers();
      }

      v52 = os_log_GKMatch;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        [v11 internal];
        [objc_claimAutoreleasedReturnValue() debugDescription];
        objc_claimAutoreleasedReturnValue();
        __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_381_cold_1();
      }

      v31 = [*(a1 + 40) healthMonitor];
      v53 = [v11 internal];
      v54 = [v53 playerID];
      [v31 stopMonitor:v54];
    }

LABEL_49:
    goto LABEL_50;
  }

  [*(a1 + 40) disconnect];
LABEL_67:

  v73 = *MEMORY[0x277D85DE8];
}

void __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_2(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 connectionInfo];
  v5 = [v4 objectForKey:@"match-version"];
  *(*(*(a1 + 48) + 8) + 24) = [v5 integerValue];

  v6 = [v3 connectionInfo];
  v7 = [v6 objectForKey:@"session-token"];
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if ([v3 playerState] != *(a1 + 72))
  {
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
    }

    v11 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 32);
      v14 = v11;
      v15 = [v13 internal];
      v16 = [v15 debugDescription];
      v17 = [*(a1 + 40) stringForGKPlayerConnectionState:{objc_msgSend(v3, "playerState")}];
      v18 = [*(a1 + 40) stringForGKPlayerConnectionState:*(a1 + 72)];
      v19 = 138412802;
      v20 = v16;
      v21 = 2112;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      _os_log_debug_impl(&dword_227904000, v14, OS_LOG_TYPE_DEBUG, "EventQueue for player %@ changing playerState from: %@ to %@", &v19, 0x20u);
    }

    [v3 setPlayerState:*(a1 + 72)];
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)connectionDidFailWithError:(id)a3
{
  v3 = a3;
  v4 = +[GKReporter reporter];
  [v4 reportEvent:@"com.apple.GameKit.match" type:@"connectionFail"];

  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
  {
    [GKMatch connectionDidFailWithError:];
  }
}

- (void)transportDidFailWithError:(id)a3
{
  v4 = a3;
  v5 = +[GKReporter reporter];
  [v5 reportEvent:@"com.apple.GameKit.match" type:@"fail"];

  if (!os_log_GKGeneral)
  {
    v6 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
  {
    [GKMatch connectionDidFailWithError:];
  }

  v7 = [(GKMatch *)self delegate];

  if (v7)
  {
    v8 = [(GKMatch *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      v10 = [(GKMatch *)self delegate];
      [v10 match:self didFailWithError:v4];
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v11 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
      {
        [GKMatch transportDidFailWithError:];
      }
    }
  }

  [(GKMatch *)self clearSessionWithReason:3];
  v12 = MEMORY[0x277CCACA8];
  v13 = [v4 localizedDescription];
  v14 = [v12 stringWithFormat:@"Error detected in transport. Error: %@", v13];
  [(GKMatch *)self promptRadarAndRequestRemoteLogsWithDescriptionAddition:v14];
}

- (void)transportDidReceivePacket:(id)a3 fromPlayerID:(id)a4 remoteRecipientID:(id)a5
{
  v82 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(GKThreadsafeDictionary *)self->_playersByIdentifier objectForKey:v9];
  if (v11)
  {
    if (v10)
    {
      if (!os_log_GKGeneral)
      {
        v12 = GKOSLoggers();
      }

      v13 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v81 = v10;
        _os_log_impl(&dword_227904000, v13, OS_LOG_TYPE_INFO, "Got data intended for remoteRecipientID = %@", buf, 0xCu);
      }

      v14 = [(GKThreadsafeDictionary *)self->_playersByIdentifier objectForKey:v10];
    }

    else
    {
      v14 = +[GKLocalPlayer localPlayer];
    }

    v17 = v14;
    if (!os_log_GKGeneral)
    {
      v18 = GKOSLoggers();
    }

    v73 = v11;
    v19 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      [GKMatch transportDidReceivePacket:v19 fromPlayerID:v17 remoteRecipientID:v9];
    }

    v20 = [(GKMatch *)self delegate];
    v74 = [(GKMatch *)self inviteDelegate];
    v21 = [(GKMatch *)self version];
    v22 = [v8 valid];
    if (v21)
    {
      if (!v22)
      {
        v24 = v20;
        if (!os_log_GKGeneral)
        {
          v38 = GKOSLoggers();
        }

        v39 = os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG);
        v11 = v73;
        v33 = v74;
        if (!v39)
        {
          goto LABEL_71;
        }

        [GKMatch transportDidReceivePacket:fromPlayerID:remoteRecipientID:];
        goto LABEL_70;
      }

      v23 = [v8 packetType];
      v24 = v20;
      if (v23 <= 15)
      {
        if (v23 == 1)
        {
          v49 = [v8 data];
          -[GKMatch setVersion:](self, "setVersion:", *[v49 bytes]);

          v11 = v73;
LABEL_70:
          v33 = v74;
          goto LABEL_71;
        }

        if (v23 == 2)
        {
          if ([v17 isLocalPlayer])
          {
            v72 = v17;
            v55 = [v8 data];
            v56 = [GKInviteMessageSupport extractPropertiesWithData:v55];

            if (v56)
            {
              v69 = v10;
              v70 = v9;
              v77 = 0u;
              v78 = 0u;
              v75 = 0u;
              v76 = 0u;
              v57 = [v56 allKeys];
              v58 = [v57 countByEnumeratingWithState:&v75 objects:v79 count:16];
              if (v58)
              {
                v59 = v58;
                v60 = *v76;
                do
                {
                  for (i = 0; i != v59; ++i)
                  {
                    if (*v76 != v60)
                    {
                      objc_enumerationMutation(v57);
                    }

                    v62 = *(*(&v75 + 1) + 8 * i);
                    v63 = [v56 objectForKeyedSubscript:v62];
                    [(GKMatch *)self updateProperties:v63 playerID:v62];
                  }

                  v59 = [v57 countByEnumeratingWithState:&v75 objects:v79 count:16];
                }

                while (v59);
              }

              v10 = v69;
              v9 = v70;
            }

            v17 = v72;
            v24 = v20;
          }

          v64 = [v8 data];
          v11 = v73;
          [(GKMatch *)self _delegate:v74 didReceiveData:v64 forRecipient:v17 fromPlayer:v73];

          v33 = v74;
          goto LABEL_71;
        }

        v11 = v73;
        if (v23 != 8)
        {
          goto LABEL_60;
        }

        v46 = [v8 data];
        [(GKMatch *)self receivedPlayerSyncData:v46];
LABEL_69:

        goto LABEL_70;
      }

      v11 = v73;
      if (v23 <= 63)
      {
        if (v23 == 16)
        {
          v53 = [(GKMatch *)self sequenceFromPacket:v8];
          v26 = [(GKMatch *)self healthMonitor];
          v27 = [v73 internal];
          v28 = [v27 playerID];
          [v26 receivedPing:v28 sequenceNumber:v53];
          goto LABEL_65;
        }

        if (v23 == 17)
        {
          v25 = [(GKMatch *)self sequenceFromPacket:v8];
          v26 = [(GKMatch *)self healthMonitor];
          v27 = [v73 internal];
          v28 = [v27 playerID];
          [v26 receivedPong:v28 sequenceNumber:v25];
LABEL_65:

          goto LABEL_70;
        }

LABEL_60:
        if (!os_log_GKGeneral)
        {
          v50 = GKOSLoggers();
        }

        v51 = os_log_GKMatch;
        v52 = os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG);
        v33 = v74;
        if (!v52)
        {
          goto LABEL_71;
        }

        [GKMatch transportDidReceivePacket:v51 fromPlayerID:? remoteRecipientID:?];
        goto LABEL_70;
      }

      if (v23 != 64)
      {
        if (v23 != 128)
        {
          goto LABEL_60;
        }

        v46 = [v8 data];
        if (!v24)
        {
          [(GKMatch *)self queueData:v46 withEventQueueForPlayer:v73 forRecipient:v17];
          goto LABEL_69;
        }

LABEL_68:
        [(GKMatch *)self deliverData:v46 forRecipient:v17 fromPlayer:v73];
        goto LABEL_69;
      }

      v33 = v74;
      if (v24)
      {
        v46 = [v8 data];
        goto LABEL_68;
      }
    }

    else
    {
      if (v22)
      {
        if (!os_log_GKGeneral)
        {
          v29 = GKOSLoggers();
        }

        v30 = os_log_GKMatch;
        if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
        {
          v31 = v30;
          v32 = [v8 version];
          *buf = 67109120;
          LODWORD(v81) = v32;
          _os_log_impl(&dword_227904000, v31, OS_LOG_TYPE_INFO, "packet version: %d, expecting version 0", buf, 8u);
        }
      }

      v33 = v74;
      if (!(v20 | v74))
      {
        if (!os_log_GKGeneral)
        {
          v40 = GKOSLoggers();
        }

        v41 = os_log_GKMatch;
        if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
        {
          v42 = v41;
          v43 = [v73 internal];
          v44 = [v43 conciseDescription];
          *buf = 138412290;
          v81 = v44;
          _os_log_impl(&dword_227904000, v42, OS_LOG_TYPE_INFO, "Queuing data for player; %@ (no delegate)", buf, 0xCu);
        }

        v45 = [v8 data];
        [(GKMatch *)self queueData:v45 withEventQueueForPlayer:v73 forRecipient:v17];

        v24 = v20;
        v11 = v73;
        goto LABEL_70;
      }

      v34 = v20;
      v24 = v20;
      v11 = v73;
      if (v34)
      {
        v35 = [v8 data];
        [(GKMatch *)self deliverData:v35 forRecipient:v17 fromPlayer:v73];

        v33 = v74;
      }

      if (!v33)
      {
        goto LABEL_71;
      }

      v71 = v17;
      v36 = v33;
      if (objc_opt_respondsToSelector())
      {
        v37 = [v8 data];
        [v36 match:self didReceiveData:v37 fromRemotePlayer:v73];
      }

      else
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          v17 = v71;
          if (!os_log_GKGeneral)
          {
            v65 = GKOSLoggers();
          }

          v66 = os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR);
          v33 = v74;
          if (!v66)
          {
            goto LABEL_71;
          }

          [GKMatch transportDidReceivePacket:fromPlayerID:remoteRecipientID:];
          goto LABEL_70;
        }

        if (GKApplicationLinkedOnOrAfter(917504, 659456))
        {
          v17 = v71;
          if (!os_log_GKGeneral)
          {
            v47 = GKOSLoggers();
          }

          v48 = os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR);
          v33 = v74;
          if (!v48)
          {
            goto LABEL_71;
          }

          [GKMatch _delegate:didReceiveData:forRecipient:fromPlayer:];
          goto LABEL_70;
        }

        v37 = [v8 data];
        v67 = [v73 internal];
        v68 = [v67 playerID];
        v36 = v74;
        [v74 match:self didReceiveData:v37 fromPlayer:v68];
      }

      v33 = v36;
      v17 = v71;
    }

LABEL_71:

    goto LABEL_72;
  }

  if (!os_log_GKGeneral)
  {
    v15 = GKOSLoggers();
  }

  v16 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v81 = v9;
    _os_log_impl(&dword_227904000, v16, OS_LOG_TYPE_INFO, "Data from playerID: %@ without player mapping", buf, 0xCu);
  }

LABEL_72:

  v54 = *MEMORY[0x277D85DE8];
}

- (void)transportDidUpdateWithInfo:(id)a3
{
  v4 = a3;
  v5 = [(GKMatch *)self transportContext];
  [v5 updateWithInfoFromTransport:v4];
}

- (void)retryLimitHit
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_227904000, v4, OS_LOG_TYPE_INFO, "We have reached the limit of retry for pending connection checker.", v5, 2u);
  }

  [(GKMatch *)self promptRadarAndRequestRemoteLogsWithDescriptionAddition:@"Invitation failed after retry. Please tap to file a radar."];
}

- (void)sendPingTo:(id)a3 sequence:(int64_t)a4
{
  v6 = a3;
  v7 = [(GKMatch *)self matchPacketWithPacketType:16 sequence:a4];
  [(GKMatch *)self sendMeasurementData:v7 packetType:16 toPlayerID:v6];
}

- (void)sendPongTo:(id)a3 sequence:(int64_t)a4
{
  v6 = a3;
  v7 = [(GKMatch *)self matchPacketWithPacketType:17 sequence:a4];
  [(GKMatch *)self sendMeasurementData:v7 packetType:17 toPlayerID:v6];
}

- (void)monitorStatsUpdated:(id)a3
{
  v4 = a3;
  [v4 overallLatency];
  v6 = v5;
  [v4 overallAverageLatency];
  v8 = v7;
  [v4 overallPacketLoss];
  v10 = v9;

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"AVG: %.2fms, CUR: %.2fms, LOSS: %.2f%%", v8, v6, v10 * 100.0];
  objc_initWeak(&location, self);
  v12 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__GKMatch_monitorStatsUpdated___block_invoke;
  block[3] = &unk_2785DF2F8;
  objc_copyWeak(&v16, &location);
  v15 = v11;
  v13 = v11;
  dispatch_async(v12, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __31__GKMatch_monitorStatsUpdated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    __31__GKMatch_monitorStatsUpdated___block_invoke_cold_1(a1);
  }

  v4 = [WeakRetained transportContext];
  v5 = [v4 daemonProxy];
  [v5 emitMultiplayerMessage:*(a1 + 32)];
}

- (id)matchPacketWithPacketType:(unsigned __int8)a3 sequence:(int64_t)a4
{
  v6 = a4;
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:&v6 length:8];

  return v4;
}

- (int64_t)sequenceFromPacket:(id)a3
{
  v3 = [a3 data];
  v4 = v3;
  if (v3)
  {
    v5 = *[v3 bytes];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      [GKMatch sequenceFromPacket:];
    }

    v5 = -1;
  }

  return v5;
}

- (id)dataFromBase64String:(id)a3
{
  v3 = MEMORY[0x277CBEA90];
  v4 = a3;
  v5 = [[v3 alloc] initWithBase64EncodedString:v4 options:0];

  return v5;
}

- (id)stringForGKPlayerConnectionState:(int64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3 >= 3)
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v7 = MEMORY[0x277CCABB0];
      v8 = v6;
      v9 = [v7 numberWithInteger:a3];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_INFO, "Invalid connection state: GKPlayerConnectionState %@", &v11, 0xCu);
    }

    result = 0;
  }

  else
  {
    result = off_2785DF330[a3];
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

- (GKMatchDelegatePrivate)inviteDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_inviteDelegateWeak);

  return WeakRetained;
}

- (GKMatchmaker)matchmaker
{
  WeakRetained = objc_loadWeakRetained(&self->_matchmaker);

  return WeakRetained;
}

void __48__GKMatch_refreshPendingConnectionCheckIfNeeded__block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __48__GKMatch_refreshPendingConnectionCheckIfNeeded__block_invoke_176_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendData:(uint64_t *)a1 toPlayers:dataMode:error:.cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_16(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)sendDataToAllPlayers:(uint64_t *)a1 withDataMode:error:.cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_16(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __56__GKMatch_chooseBestHostingPlayerWithCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)promptRadarAndRequestRemoteLogsWithDescriptionAddition:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)playerIDs
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)chooseBestHostPlayerWithCompletionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendData:toPlayers:withDataMode:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void __34__GKMatch_clearSessionWithReason___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_delegate:(void *)a1 didReceiveData:forRecipient:fromPlayer:.cold.1(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_13() internal];
  v4 = [v3 playerID];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_227904000, v1, OS_LOG_TYPE_ERROR, "received data from playerID: %@ who is NOT connected!", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_delegate:didReceiveData:forRecipient:fromPlayer:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_delegate:didReceiveData:forRecipient:fromPlayer:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)withEventQueueForPlayer:create:perform:.cold.1()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_15(v2, v3, 5.7779e-34);
  OUTLINED_FUNCTION_12(&dword_227904000, v4, v4, "_playerEventQueues created for player: %@", v5);
}

- (void)withEventQueueForPlayer:create:perform:.cold.2()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_15(v2, v3, 5.7779e-34);
  _os_log_error_impl(&dword_227904000, v4, OS_LOG_TYPE_ERROR, "No GKMatchEventQueue for player: %@", v5, 0xCu);
}

void __30__GKMatch_putMultiplayerGroup__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __28__GKMatch_addPlayerToGroup___block_invoke_288_cold_1(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_17() groupID];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_11(&dword_227904000, v6, v7, "Error attempting to update group to the server: %@ %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setAutomatchPlayerCount:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)connectToPlayers:version:invitedByLocalPlayer:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)connectToPlayers:version:invitedByLocalPlayer:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __75__GKMatch_connectToPlayers_version_invitedByLocalPlayer_completionHandler___block_invoke_cold_1(void *a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCABB0];
  v6 = a1;
  v7 = [v5 numberWithInt:a2];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*a3 + 176)];
  v12 = 138412546;
  v13 = v7;
  OUTLINED_FUNCTION_6();
  v14 = v9;
  OUTLINED_FUNCTION_14(&dword_227904000, v6, v10, "Calculating _expectedPlayerCount + %@ = %@", &v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __75__GKMatch_connectToPlayers_version_invitedByLocalPlayer_completionHandler___block_invoke_301_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __47__GKMatch_connectToGuestPlayer_withHostPlayer___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_13() internal];
  v6 = [v5 debugDescription];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0x16u);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)connectToNearbyPlayer:(void *)a1 withConnectionData:.cold.1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_13() internal];
  v4 = [v3 debugDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

void __52__GKMatch_connectToNearbyPlayer_withConnectionData___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCABB0];
  v3 = *(*a1 + 176);
  v4 = a2;
  v5 = [v2 numberWithUnsignedInteger:v3];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12(&dword_227904000, v4, v6, "Calculating _expectedPlayerCount + 1 = %@", v8);

  v7 = *MEMORY[0x277D85DE8];
}

void __46__GKMatch_syncPlayers_forJoinType_toInvitees___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

void __46__GKMatch_syncPlayers_forJoinType_toInvitees___block_invoke_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_18(&dword_227904000, v0, v1, "syncPlayers error dataWithPropertyList: %@, error: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)sendInviteData:(void *)a1 .cold.1(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_13() transportContext];
  v4 = [MEMORY[0x277CCACC8] callStackSymbols];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)sendVersionData:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)sendVersionData:(void *)a1 toPlayer:.cold.1(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_17() internal];
  v4 = [v3 playerID];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_11(&dword_227904000, v5, v6, "Failed to send version data to playerID: %@, error: %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __45__GKMatch_deferStateCallbackForPlayer_state___block_invoke_cold_1(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 internal];
  v7 = [v6 debugDescription];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:*a3];
  v12 = 138412546;
  v13 = v7;
  OUTLINED_FUNCTION_6();
  v14 = v9;
  OUTLINED_FUNCTION_14(&dword_227904000, v5, v10, "GKMatch Queue for player %@ changed deferedPlayerState to %@", &v12);

  v11 = *MEMORY[0x277D85DE8];
}

void __38__GKMatch_updateStateForPlayer_state___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCABB0];
  v3 = *(*a1 + 176);
  v4 = a2;
  v5 = [v2 numberWithUnsignedInteger:v3];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12(&dword_227904000, v4, v6, "Calculating (updateStateForPlayer) _expectedPlayerCount - 1 = %@", v8);

  v7 = *MEMORY[0x277D85DE8];
}

void __38__GKMatch_updateStateForPlayer_state___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __38__GKMatch_updateStateForPlayer_state___block_invoke_cold_3(uint64_t *a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = a2;
  v5 = [OUTLINED_FUNCTION_13() internal];
  v6 = [v5 debugDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v7, v8, v9, v10, v11, 0xCu);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)sendStateCallbackToDelegate:forPlayer:state:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendStateCallbackToDelegate:forPlayer:state:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)conditionallyReinvitePlayer:sessionToken:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)conditionallyReinvitePlayer:sessionToken:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void __52__GKMatch_conditionallyReinvitePlayer_sessionToken___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)conditionallyRelaunchPlayer:(void *)a1 .cold.1(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 internal];
  v5 = [v4 conciseDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0xCu);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)relayDidReceivePushData:(uint64_t)a1 completionHandler:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(*a2 + 40);
  OUTLINED_FUNCTION_0();
  v7 = 2112;
  v8 = v3;
  OUTLINED_FUNCTION_14(&dword_227904000, v4, v4, "relaypush for match: %p - assigning sessionToken to %@", v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __53__GKMatch_relayDidReceivePushData_completionHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_18(&dword_227904000, v2, v3, "relayPush will not act on push notification because couldn't load player (%@) due to error: %@");
  v4 = *MEMORY[0x277D85DE8];
}

void __53__GKMatch_relayDidReceivePushData_completionHandler___block_invoke_363_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_16(a1, *MEMORY[0x277D85DE8]);
  v2 = *(v1 + 56);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_376_cold_1(uint64_t *a1)
{
  OUTLINED_FUNCTION_16(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_376_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_379_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_381_cold_1()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_15(v2, v3, 5.7779e-34);
  OUTLINED_FUNCTION_12(&dword_227904000, v4, v4, "Stopping monitor for player: %@", v5);
}

void __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_381_cold_2()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_15(v2, v3, 5.7779e-34);
  OUTLINED_FUNCTION_12(&dword_227904000, v4, v4, "Starting monitor for player: %@", v5);
}

- (void)connectionDidFailWithError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)transportDidFailWithError:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)transportDidReceivePacket:(void *)a1 fromPlayerID:(uint64_t)a2 remoteRecipientID:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [OUTLINED_FUNCTION_17() internal];
  v7 = [v6 playerID];
  OUTLINED_FUNCTION_0_2();
  v11 = a3;
  OUTLINED_FUNCTION_14(&dword_227904000, v3, v8, "Data intended for playerID: %@ from playerID: %@", v10);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)transportDidReceivePacket:fromPlayerID:remoteRecipientID:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)transportDidReceivePacket:(void *)a1 fromPlayerID:remoteRecipientID:.cold.3(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a1;
  [OUTLINED_FUNCTION_13() packetType];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 8u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)transportDidReceivePacket:fromPlayerID:remoteRecipientID:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __31__GKMatch_monitorStatsUpdated___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)sequenceFromPacket:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendMeasurementData:(void *)a1 packetType:toPlayerID:.cold.1(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_17() internal];
  v4 = [v3 playerID];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_11(&dword_227904000, v5, v6, "Failed to send measurement data to playerID: %@, error: %@", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)sendMeasurementData:packetType:toPlayerID:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end