@interface GKFastSyncTransport
- (BOOL)connectToGuestPlayer:(id)player withHostPlayer:(id)hostPlayer;
- (BOOL)sendScopedData:(id)data toPlayers:(id)players dataMode:(int64_t)mode dataScope:(int64_t)scope transportContext:(id)context error:(id *)error;
- (BOOL)sendScopedDataToAll:(id)all dataMode:(int64_t)mode dataScope:(int64_t)scope transportContext:(id)context error:(id *)error;
- (GKFastSyncTransport)initWithClientDelegate:(id)delegate reporter:(id)reporter daemonProxy:(id)proxy;
- (NSData)nearbyConnectionData;
- (id)enrichPeerDictionariesForPlayersConnection:(id)connection;
- (id)voiceChatWithName:(id)name players:(id)players transportContext:(id)context;
- (void)acceptRelayResponse:(id)response playerID:(id)d;
- (void)connectToNearbyPlayer:(id)player withConnectionData:(id)data;
- (void)handleRelayPushData:(id)data onlyIfPreemptive:(BOOL)preemptive;
- (void)localConnectionDataWithCompletionHandler:(id)handler;
- (void)preemptRelay:(id)relay;
@end

@implementation GKFastSyncTransport

- (GKFastSyncTransport)initWithClientDelegate:(id)delegate reporter:(id)reporter daemonProxy:(id)proxy
{
  swift_unknownObjectRetain();
  reporterCopy = reporter;
  swift_unknownObjectRetain();
  return FastSyncTransport.init(clientDelegate:reporter:daemonProxy:)(delegate, reporterCopy, proxy);
}

- (BOOL)sendScopedData:(id)data toPlayers:(id)players dataMode:(int64_t)mode dataScope:(int64_t)scope transportContext:(id)context error:(id *)error
{
  dataCopy = data;
  playersCopy = players;
  contextCopy = context;
  selfCopy = self;
  v17 = sub_227A71B9C();
  v19 = v18;

  sub_2279FF044(0, &qword_27D7DC660, off_2785DBC00);
  v20 = sub_227A7269C();

  FastSyncTransport.sendScopedData(_:to:dataMode:dataScope:transportContext:)(v17, v19, v20, mode, scope, contextCopy);

  sub_2279E3FA4(v17, v19);
  return 1;
}

- (BOOL)sendScopedDataToAll:(id)all dataMode:(int64_t)mode dataScope:(int64_t)scope transportContext:(id)context error:(id *)error
{
  allCopy = all;
  contextCopy = context;
  selfCopy = self;
  v14 = sub_227A71B9C();
  v16 = v15;

  FastSyncTransport.sendScopedData(toAll:dataMode:dataScope:transportContext:)(v14, v16, mode, scope, contextCopy);
  sub_2279E3FA4(v14, v16);
  return 1;
}

- (id)voiceChatWithName:(id)name players:(id)players transportContext:(id)context
{
  sub_227A724EC();
  sub_2279FF044(0, &qword_27D7DC660, off_2785DBC00);
  sub_227A7269C();
  contextCopy = context;
  v8._countAndFlagsBits = self;
  countAndFlagsBits = v8._countAndFlagsBits;
  FastSyncTransport.voiceChat(withName:players:transportContext:)(v12, v8, v10, v11);

  return 0;
}

- (NSData)nearbyConnectionData
{
  selfCopy = self;
  FastSyncTransport.nearbyConnectionData.getter();

  v3 = sub_227A71B8C();
  sub_2279E3FA4(0, 0xC000000000000000);

  return v3;
}

- (BOOL)connectToGuestPlayer:(id)player withHostPlayer:(id)hostPlayer
{
  playerCopy = player;
  hostPlayerCopy = hostPlayer;
  v10.super.super.isa = self;
  isa = v10.super.super.isa;
  FastSyncTransport.connect(toGuestPlayer:withHostPlayer:)(v10, v11);

  return 0;
}

- (void)connectToNearbyPlayer:(id)player withConnectionData:(id)data
{
  playerCopy = player;
  dataCopy = data;
  selfCopy = self;
  v8 = sub_227A71B9C();
  v10 = v9;

  FastSyncTransport.connect(toNearbyPlayer:withConnectionData:)();
  sub_2279E3FA4(v8, v10);
}

- (id)enrichPeerDictionariesForPlayersConnection:(id)connection
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD010, &qword_227AA3C00);
  sub_227A7269C();
  selfCopy = self;
  FastSyncTransport.enrichPeerDictionaries(forPlayersConnection:)();

  v5 = sub_227A7268C();

  return v5;
}

- (void)localConnectionDataWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_227A62CD4(&unk_227AA3570, v5);
}

- (void)acceptRelayResponse:(id)response playerID:(id)d
{
  sub_227A7241C();
  sub_227A724EC();
}

- (void)handleRelayPushData:(id)data onlyIfPreemptive:(BOOL)preemptive
{
  sub_227A7241C();
}

- (void)preemptRelay:(id)relay
{
  sub_227A724EC();
}

@end