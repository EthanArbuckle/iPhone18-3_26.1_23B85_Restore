@interface GKCompositeTransport
- (BOOL)connectToGuestPlayer:(id)a3 withHostPlayer:(id)a4;
- (BOOL)sendScopedData:(id)a3 toPlayers:(id)a4 dataMode:(int64_t)a5 dataScope:(int64_t)a6 transportContext:(id)a7 error:(id *)a8;
- (BOOL)sendScopedDataToAll:(id)a3 dataMode:(int64_t)a4 dataScope:(int64_t)a5 transportContext:(id)a6 error:(id *)a7;
- (GKCompositeTransport)initWithClientDelegate:(id)a3 matchDataDelegate:(id)a4 reporter:(id)a5 transportContext:(id)a6;
- (NSData)nearbyConnectionData;
- (id)enrichPeerDictionariesForPlayersConnection:(id)a3;
- (id)transportForContext:(id)a3;
- (id)voiceChatWithName:(id)a3 players:(id)a4 transportContext:(id)a5;
- (void)acceptRelayResponse:(id)a3 playerID:(id)a4;
- (void)chooseBestHostingPlayerWithTransportContext:(id)a3 completionHandler:(id)a4;
- (void)connectToNearbyPlayer:(id)a3 withConnectionData:(id)a4;
- (void)connectToPlayersWithTransportContext:(id)a3 completionHandler:(id)a4;
- (void)disconnectAllWithTransportContext:(id)a3 completionHandler:(id)a4;
- (void)fileMultiplayerTTRWith:(id)a3;
- (void)localConnectionDataWithCompletionHandler:(id)a3;
- (void)preemptRelay:(id)a3;
@end

@implementation GKCompositeTransport

- (GKCompositeTransport)initWithClientDelegate:(id)a3 matchDataDelegate:(id)a4 reporter:(id)a5 transportContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v28.receiver = self;
  v28.super_class = GKCompositeTransport;
  v14 = [(GKCompositeTransport *)&v28 init];
  if (v14)
  {
    v15 = [v12 instrumentClientDelegate:v10 transportContext:v13];
    instrumentedClientDelegate = v14->_instrumentedClientDelegate;
    v14->_instrumentedClientDelegate = v15;

    v17 = [v13 daemonProxy];
    daemonProxy = v14->_daemonProxy;
    v14->_daemonProxy = v17;

    v19 = [GKViceroyTransport alloc];
    v20 = [(GKCompositeTransport *)v14 instrumentedClientDelegate];
    v21 = [(GKViceroyTransport *)v19 initWithClientDelegate:v20 matchDataDelegate:v11 daemonProxy:v14->_daemonProxy];
    viceroyTransport = v14->_viceroyTransport;
    v14->_viceroyTransport = v21;

    v23 = [GKFastSyncTransport alloc];
    v24 = [(GKCompositeTransport *)v14 instrumentedClientDelegate];
    v25 = [(GKFastSyncTransport *)v23 initWithClientDelegate:v24 reporter:v12 daemonProxy:v14->_daemonProxy];
    fastSyncTransport = v14->_fastSyncTransport;
    v14->_fastSyncTransport = v25;

    objc_storeStrong(&v14->_reporter, a5);
  }

  return v14;
}

- (void)disconnectAllWithTransportContext:(id)a3 completionHandler:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(GKCompositeTransport *)self reporter];
  [v8 onDisconnectWithTransportContext:v6];

  if ([v6 validTransportSelected])
  {
    v9 = [(GKCompositeTransport *)self transportForContext:v6];
    [v9 disconnectAllWithTransportContext:v6 completionHandler:v7];
LABEL_7:

    goto LABEL_8;
  }

  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v12 = MEMORY[0x277CCACC8];
    v9 = v11;
    v13 = [v12 callStackSymbols];
    v15 = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = v13;
    _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "Undefined transport or no transport has been selected when disconnecting. Context: %@.\nCall stack: %@", &v15, 0x16u);

    goto LABEL_7;
  }

LABEL_8:

  v14 = *MEMORY[0x277D85DE8];
}

- (id)transportForContext:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 selectedTransport];
  v6 = [v5 version];

  if (v6 == 1)
  {
    v7 = [(GKCompositeTransport *)self viceroyTransport];
    goto LABEL_5;
  }

  if (v6 == 2)
  {
    v7 = [(GKCompositeTransport *)self fastSyncTransport];
LABEL_5:
    v8 = v7;
    goto LABEL_11;
  }

  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
  }

  v10 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v11 = MEMORY[0x277CCACC8];
    v12 = v10;
    v13 = [v11 callStackSymbols];
    *buf = 138412290;
    v22 = v13;
    _os_log_impl(&dword_227904000, v12, OS_LOG_TYPE_INFO, "Undefined transport used from call stack: %@", buf, 0xCu);
  }

  v14 = MEMORY[0x277CCACA8];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Something went wrong. We got an undefined transport version from: %@", v4];
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/Transport/GKCompositeTransport.m"];
  v17 = [v16 lastPathComponent];
  v18 = [v14 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", v15, "-[GKCompositeTransport transportForContext:]", objc_msgSend(v17, "UTF8String"), 82];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v18}];
  v8 = 0;
LABEL_11:

  v19 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)chooseBestHostingPlayerWithTransportContext:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(GKCompositeTransport *)self transportForContext:v7];
  v8 = [(GKCompositeTransport *)self reporter];
  v9 = [v8 instrumentBestHostElectedHandler:v6 transportContext:v7];

  [v10 chooseBestHostingPlayerWithTransportContext:v7 completionHandler:v9];
}

- (void)connectToPlayersWithTransportContext:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(GKCompositeTransport *)self transportForContext:v7];
  v8 = [(GKCompositeTransport *)self reporter];
  v9 = [v8 instrumentErrorHandler:v6 transportContext:v7];

  [v10 connectToPlayersWithTransportContext:v7 completionHandler:v9];
}

- (BOOL)sendScopedData:(id)a3 toPlayers:(id)a4 dataMode:(int64_t)a5 dataScope:(int64_t)a6 transportContext:(id)a7 error:(id *)a8
{
  v14 = a7;
  v15 = a4;
  v16 = a3;
  v17 = [(GKCompositeTransport *)self transportForContext:v14];
  v18 = [v17 sendScopedData:v16 toPlayers:v15 dataMode:a5 dataScope:a6 transportContext:v14 error:a8];

  if (a8 && *a8)
  {
    v19 = [(GKCompositeTransport *)self reporter];
    [v19 onTransportError:*a8 transportContext:v14];

    [(GKCompositeTransport *)self fileMultiplayerTTRWith:*a8];
  }

  return v18;
}

- (BOOL)sendScopedDataToAll:(id)a3 dataMode:(int64_t)a4 dataScope:(int64_t)a5 transportContext:(id)a6 error:(id *)a7
{
  v12 = a6;
  v13 = a3;
  v14 = [(GKCompositeTransport *)self transportForContext:v12];
  v15 = [v14 sendScopedDataToAll:v13 dataMode:a4 dataScope:a5 transportContext:v12 error:a7];

  if (a7 && *a7)
  {
    v16 = [(GKCompositeTransport *)self reporter];
    [v16 onTransportError:*a7 transportContext:v12];

    [(GKCompositeTransport *)self fileMultiplayerTTRWith:*a7];
  }

  return v15;
}

- (id)voiceChatWithName:(id)a3 players:(id)a4 transportContext:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(GKCompositeTransport *)self transportForContext:v8];
  v12 = [v11 voiceChatWithName:v10 players:v9 transportContext:v8];

  return v12;
}

- (NSData)nearbyConnectionData
{
  v2 = [(GKCompositeTransport *)self viceroyTransport];
  v3 = [v2 nearbyConnectionData];

  return v3;
}

- (void)connectToNearbyPlayer:(id)a3 withConnectionData:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKCompositeTransport *)self viceroyTransport];
  [v8 connectToNearbyPlayer:v7 withConnectionData:v6];
}

- (BOOL)connectToGuestPlayer:(id)a3 withHostPlayer:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKCompositeTransport *)self viceroyTransport];
  v9 = [v8 connectToGuestPlayer:v7 withHostPlayer:v6];

  return v9;
}

- (id)enrichPeerDictionariesForPlayersConnection:(id)a3
{
  v4 = a3;
  v5 = [(GKCompositeTransport *)self viceroyTransport];
  v6 = [v5 enrichPeerDictionariesForPlayersConnection:v4];

  return v6;
}

- (void)localConnectionDataWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(GKCompositeTransport *)self viceroyTransport];
  [v5 localConnectionDataWithCompletionHandler:v4];
}

- (void)acceptRelayResponse:(id)a3 playerID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(GKCompositeTransport *)self viceroyTransport];
  [v8 acceptRelayResponse:v7 playerID:v6];
}

- (void)preemptRelay:(id)a3
{
  v4 = a3;
  v5 = [(GKCompositeTransport *)self viceroyTransport];
  [v5 preemptRelay:v4];
}

- (void)fileMultiplayerTTRWith:(id)a3
{
  v4 = a3;
  if (![(GKCompositeTransport *)self hasPromptedTTR])
  {
    objc_initWeak(&location, self);
    v5 = [(GKCompositeTransport *)self daemonProxy];
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Tap here to report an issue helpful for multiplayer instrumentation. Error: %@", v4];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__GKCompositeTransport_fileMultiplayerTTRWith___block_invoke;
    v7[3] = &unk_2785DEE50;
    objc_copyWeak(&v8, &location);
    [v5 fileMultiplayerTTRWithCallBackIdentifier:0 descriptionAddition:v6 handler:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __47__GKCompositeTransport_fileMultiplayerTTRWith___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHasPromptedTTR:1];
}

@end