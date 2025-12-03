@interface GKCompositeTransport
- (BOOL)connectToGuestPlayer:(id)player withHostPlayer:(id)hostPlayer;
- (BOOL)sendScopedData:(id)data toPlayers:(id)players dataMode:(int64_t)mode dataScope:(int64_t)scope transportContext:(id)context error:(id *)error;
- (BOOL)sendScopedDataToAll:(id)all dataMode:(int64_t)mode dataScope:(int64_t)scope transportContext:(id)context error:(id *)error;
- (GKCompositeTransport)initWithClientDelegate:(id)delegate matchDataDelegate:(id)dataDelegate reporter:(id)reporter transportContext:(id)context;
- (NSData)nearbyConnectionData;
- (id)enrichPeerDictionariesForPlayersConnection:(id)connection;
- (id)transportForContext:(id)context;
- (id)voiceChatWithName:(id)name players:(id)players transportContext:(id)context;
- (void)acceptRelayResponse:(id)response playerID:(id)d;
- (void)chooseBestHostingPlayerWithTransportContext:(id)context completionHandler:(id)handler;
- (void)connectToNearbyPlayer:(id)player withConnectionData:(id)data;
- (void)connectToPlayersWithTransportContext:(id)context completionHandler:(id)handler;
- (void)disconnectAllWithTransportContext:(id)context completionHandler:(id)handler;
- (void)fileMultiplayerTTRWith:(id)with;
- (void)localConnectionDataWithCompletionHandler:(id)handler;
- (void)preemptRelay:(id)relay;
@end

@implementation GKCompositeTransport

- (GKCompositeTransport)initWithClientDelegate:(id)delegate matchDataDelegate:(id)dataDelegate reporter:(id)reporter transportContext:(id)context
{
  delegateCopy = delegate;
  dataDelegateCopy = dataDelegate;
  reporterCopy = reporter;
  contextCopy = context;
  v28.receiver = self;
  v28.super_class = GKCompositeTransport;
  v14 = [(GKCompositeTransport *)&v28 init];
  if (v14)
  {
    v15 = [reporterCopy instrumentClientDelegate:delegateCopy transportContext:contextCopy];
    instrumentedClientDelegate = v14->_instrumentedClientDelegate;
    v14->_instrumentedClientDelegate = v15;

    daemonProxy = [contextCopy daemonProxy];
    daemonProxy = v14->_daemonProxy;
    v14->_daemonProxy = daemonProxy;

    v19 = [GKViceroyTransport alloc];
    instrumentedClientDelegate = [(GKCompositeTransport *)v14 instrumentedClientDelegate];
    v21 = [(GKViceroyTransport *)v19 initWithClientDelegate:instrumentedClientDelegate matchDataDelegate:dataDelegateCopy daemonProxy:v14->_daemonProxy];
    viceroyTransport = v14->_viceroyTransport;
    v14->_viceroyTransport = v21;

    v23 = [GKFastSyncTransport alloc];
    instrumentedClientDelegate2 = [(GKCompositeTransport *)v14 instrumentedClientDelegate];
    v25 = [(GKFastSyncTransport *)v23 initWithClientDelegate:instrumentedClientDelegate2 reporter:reporterCopy daemonProxy:v14->_daemonProxy];
    fastSyncTransport = v14->_fastSyncTransport;
    v14->_fastSyncTransport = v25;

    objc_storeStrong(&v14->_reporter, reporter);
  }

  return v14;
}

- (void)disconnectAllWithTransportContext:(id)context completionHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  handlerCopy = handler;
  reporter = [(GKCompositeTransport *)self reporter];
  [reporter onDisconnectWithTransportContext:contextCopy];

  if ([contextCopy validTransportSelected])
  {
    v9 = [(GKCompositeTransport *)self transportForContext:contextCopy];
    [v9 disconnectAllWithTransportContext:contextCopy completionHandler:handlerCopy];
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
    callStackSymbols = [v12 callStackSymbols];
    v15 = 138412546;
    v16 = contextCopy;
    v17 = 2112;
    v18 = callStackSymbols;
    _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "Undefined transport or no transport has been selected when disconnecting. Context: %@.\nCall stack: %@", &v15, 0x16u);

    goto LABEL_7;
  }

LABEL_8:

  v14 = *MEMORY[0x277D85DE8];
}

- (id)transportForContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  selectedTransport = [contextCopy selectedTransport];
  version = [selectedTransport version];

  if (version == 1)
  {
    viceroyTransport = [(GKCompositeTransport *)self viceroyTransport];
    goto LABEL_5;
  }

  if (version == 2)
  {
    viceroyTransport = [(GKCompositeTransport *)self fastSyncTransport];
LABEL_5:
    v8 = viceroyTransport;
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
    callStackSymbols = [v11 callStackSymbols];
    *buf = 138412290;
    v22 = callStackSymbols;
    _os_log_impl(&dword_227904000, v12, OS_LOG_TYPE_INFO, "Undefined transport used from call stack: %@", buf, 0xCu);
  }

  v14 = MEMORY[0x277CCACA8];
  contextCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Something went wrong. We got an undefined transport version from: %@", contextCopy];
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/Transport/GKCompositeTransport.m"];
  lastPathComponent = [v16 lastPathComponent];
  v18 = [v14 stringWithFormat:@"%@ (NO)\n[%s (%s:%d)]", contextCopy, "-[GKCompositeTransport transportForContext:]", objc_msgSend(lastPathComponent, "UTF8String"), 82];

  [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v18}];
  v8 = 0;
LABEL_11:

  v19 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)chooseBestHostingPlayerWithTransportContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  contextCopy = context;
  v10 = [(GKCompositeTransport *)self transportForContext:contextCopy];
  reporter = [(GKCompositeTransport *)self reporter];
  v9 = [reporter instrumentBestHostElectedHandler:handlerCopy transportContext:contextCopy];

  [v10 chooseBestHostingPlayerWithTransportContext:contextCopy completionHandler:v9];
}

- (void)connectToPlayersWithTransportContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  contextCopy = context;
  v10 = [(GKCompositeTransport *)self transportForContext:contextCopy];
  reporter = [(GKCompositeTransport *)self reporter];
  v9 = [reporter instrumentErrorHandler:handlerCopy transportContext:contextCopy];

  [v10 connectToPlayersWithTransportContext:contextCopy completionHandler:v9];
}

- (BOOL)sendScopedData:(id)data toPlayers:(id)players dataMode:(int64_t)mode dataScope:(int64_t)scope transportContext:(id)context error:(id *)error
{
  contextCopy = context;
  playersCopy = players;
  dataCopy = data;
  v17 = [(GKCompositeTransport *)self transportForContext:contextCopy];
  v18 = [v17 sendScopedData:dataCopy toPlayers:playersCopy dataMode:mode dataScope:scope transportContext:contextCopy error:error];

  if (error && *error)
  {
    reporter = [(GKCompositeTransport *)self reporter];
    [reporter onTransportError:*error transportContext:contextCopy];

    [(GKCompositeTransport *)self fileMultiplayerTTRWith:*error];
  }

  return v18;
}

- (BOOL)sendScopedDataToAll:(id)all dataMode:(int64_t)mode dataScope:(int64_t)scope transportContext:(id)context error:(id *)error
{
  contextCopy = context;
  allCopy = all;
  v14 = [(GKCompositeTransport *)self transportForContext:contextCopy];
  v15 = [v14 sendScopedDataToAll:allCopy dataMode:mode dataScope:scope transportContext:contextCopy error:error];

  if (error && *error)
  {
    reporter = [(GKCompositeTransport *)self reporter];
    [reporter onTransportError:*error transportContext:contextCopy];

    [(GKCompositeTransport *)self fileMultiplayerTTRWith:*error];
  }

  return v15;
}

- (id)voiceChatWithName:(id)name players:(id)players transportContext:(id)context
{
  contextCopy = context;
  playersCopy = players;
  nameCopy = name;
  v11 = [(GKCompositeTransport *)self transportForContext:contextCopy];
  v12 = [v11 voiceChatWithName:nameCopy players:playersCopy transportContext:contextCopy];

  return v12;
}

- (NSData)nearbyConnectionData
{
  viceroyTransport = [(GKCompositeTransport *)self viceroyTransport];
  nearbyConnectionData = [viceroyTransport nearbyConnectionData];

  return nearbyConnectionData;
}

- (void)connectToNearbyPlayer:(id)player withConnectionData:(id)data
{
  dataCopy = data;
  playerCopy = player;
  viceroyTransport = [(GKCompositeTransport *)self viceroyTransport];
  [viceroyTransport connectToNearbyPlayer:playerCopy withConnectionData:dataCopy];
}

- (BOOL)connectToGuestPlayer:(id)player withHostPlayer:(id)hostPlayer
{
  hostPlayerCopy = hostPlayer;
  playerCopy = player;
  viceroyTransport = [(GKCompositeTransport *)self viceroyTransport];
  v9 = [viceroyTransport connectToGuestPlayer:playerCopy withHostPlayer:hostPlayerCopy];

  return v9;
}

- (id)enrichPeerDictionariesForPlayersConnection:(id)connection
{
  connectionCopy = connection;
  viceroyTransport = [(GKCompositeTransport *)self viceroyTransport];
  v6 = [viceroyTransport enrichPeerDictionariesForPlayersConnection:connectionCopy];

  return v6;
}

- (void)localConnectionDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  viceroyTransport = [(GKCompositeTransport *)self viceroyTransport];
  [viceroyTransport localConnectionDataWithCompletionHandler:handlerCopy];
}

- (void)acceptRelayResponse:(id)response playerID:(id)d
{
  dCopy = d;
  responseCopy = response;
  viceroyTransport = [(GKCompositeTransport *)self viceroyTransport];
  [viceroyTransport acceptRelayResponse:responseCopy playerID:dCopy];
}

- (void)preemptRelay:(id)relay
{
  relayCopy = relay;
  viceroyTransport = [(GKCompositeTransport *)self viceroyTransport];
  [viceroyTransport preemptRelay:relayCopy];
}

- (void)fileMultiplayerTTRWith:(id)with
{
  withCopy = with;
  if (![(GKCompositeTransport *)self hasPromptedTTR])
  {
    objc_initWeak(&location, self);
    daemonProxy = [(GKCompositeTransport *)self daemonProxy];
    withCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Tap here to report an issue helpful for multiplayer instrumentation. Error: %@", withCopy];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __47__GKCompositeTransport_fileMultiplayerTTRWith___block_invoke;
    v7[3] = &unk_2785DEE50;
    objc_copyWeak(&v8, &location);
    [daemonProxy fileMultiplayerTTRWithCallBackIdentifier:0 descriptionAddition:withCopy handler:v7];

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