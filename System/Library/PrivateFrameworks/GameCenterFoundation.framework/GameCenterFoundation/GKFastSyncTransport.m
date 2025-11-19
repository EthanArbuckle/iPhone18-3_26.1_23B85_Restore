@interface GKFastSyncTransport
- (BOOL)connectToGuestPlayer:(id)a3 withHostPlayer:(id)a4;
- (BOOL)sendScopedData:(id)a3 toPlayers:(id)a4 dataMode:(int64_t)a5 dataScope:(int64_t)a6 transportContext:(id)a7 error:(id *)a8;
- (BOOL)sendScopedDataToAll:(id)a3 dataMode:(int64_t)a4 dataScope:(int64_t)a5 transportContext:(id)a6 error:(id *)a7;
- (GKFastSyncTransport)initWithClientDelegate:(id)a3 reporter:(id)a4 daemonProxy:(id)a5;
- (NSData)nearbyConnectionData;
- (id)enrichPeerDictionariesForPlayersConnection:(id)a3;
- (id)voiceChatWithName:(id)a3 players:(id)a4 transportContext:(id)a5;
- (void)acceptRelayResponse:(id)a3 playerID:(id)a4;
- (void)connectToNearbyPlayer:(id)a3 withConnectionData:(id)a4;
- (void)handleRelayPushData:(id)a3 onlyIfPreemptive:(BOOL)a4;
- (void)localConnectionDataWithCompletionHandler:(id)a3;
- (void)preemptRelay:(id)a3;
@end

@implementation GKFastSyncTransport

- (GKFastSyncTransport)initWithClientDelegate:(id)a3 reporter:(id)a4 daemonProxy:(id)a5
{
  swift_unknownObjectRetain();
  v8 = a4;
  swift_unknownObjectRetain();
  return FastSyncTransport.init(clientDelegate:reporter:daemonProxy:)(a3, v8, a5);
}

- (BOOL)sendScopedData:(id)a3 toPlayers:(id)a4 dataMode:(int64_t)a5 dataScope:(int64_t)a6 transportContext:(id)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a7;
  v16 = self;
  v17 = sub_227A71B9C();
  v19 = v18;

  sub_2279FF044(0, &qword_27D7DC660, off_2785DBC00);
  v20 = sub_227A7269C();

  FastSyncTransport.sendScopedData(_:to:dataMode:dataScope:transportContext:)(v17, v19, v20, a5, a6, v15);

  sub_2279E3FA4(v17, v19);
  return 1;
}

- (BOOL)sendScopedDataToAll:(id)a3 dataMode:(int64_t)a4 dataScope:(int64_t)a5 transportContext:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a6;
  v13 = self;
  v14 = sub_227A71B9C();
  v16 = v15;

  FastSyncTransport.sendScopedData(toAll:dataMode:dataScope:transportContext:)(v14, v16, a4, a5, v12);
  sub_2279E3FA4(v14, v16);
  return 1;
}

- (id)voiceChatWithName:(id)a3 players:(id)a4 transportContext:(id)a5
{
  sub_227A724EC();
  sub_2279FF044(0, &qword_27D7DC660, off_2785DBC00);
  sub_227A7269C();
  v7 = a5;
  v8._countAndFlagsBits = self;
  countAndFlagsBits = v8._countAndFlagsBits;
  FastSyncTransport.voiceChat(withName:players:transportContext:)(v12, v8, v10, v11);

  return 0;
}

- (NSData)nearbyConnectionData
{
  v2 = self;
  FastSyncTransport.nearbyConnectionData.getter();

  v3 = sub_227A71B8C();
  sub_2279E3FA4(0, 0xC000000000000000);

  return v3;
}

- (BOOL)connectToGuestPlayer:(id)a3 withHostPlayer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10.super.super.isa = self;
  isa = v10.super.super.isa;
  FastSyncTransport.connect(toGuestPlayer:withHostPlayer:)(v10, v11);

  return 0;
}

- (void)connectToNearbyPlayer:(id)a3 withConnectionData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = self;
  v8 = sub_227A71B9C();
  v10 = v9;

  FastSyncTransport.connect(toNearbyPlayer:withConnectionData:)();
  sub_2279E3FA4(v8, v10);
}

- (id)enrichPeerDictionariesForPlayersConnection:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7DD010, &qword_227AA3C00);
  sub_227A7269C();
  v4 = self;
  FastSyncTransport.enrichPeerDictionaries(forPlayersConnection:)();

  v5 = sub_227A7268C();

  return v5;
}

- (void)localConnectionDataWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_227A62CD4(&unk_227AA3570, v5);
}

- (void)acceptRelayResponse:(id)a3 playerID:(id)a4
{
  sub_227A7241C();
  sub_227A724EC();
}

- (void)handleRelayPushData:(id)a3 onlyIfPreemptive:(BOOL)a4
{
  sub_227A7241C();
}

- (void)preemptRelay:(id)a3
{
  sub_227A724EC();
}

@end