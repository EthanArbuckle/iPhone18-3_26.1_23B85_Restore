@interface GKMultiplayerActivityReporter
- (GKMultiplayerActivityReporter)initWithLocalPlayerID:(id)a3 matchDataDelegate:(id)a4 apiReporter:(id)a5;
- (id)instrumentBestHostElectedHandler:(id)a3 transportContext:(id)a4;
- (id)instrumentClientDelegate:(id)a3 transportContext:(id)a4;
- (id)instrumentErrorHandler:(id)a3 transportContext:(id)a4;
- (void)onDisconnectWithTransportContext:(id)a3;
- (void)onGameplayEndedWithReason:(int64_t)a3 error:(id)a4 transportContext:(id)a5;
- (void)onGameplayStartedWithTransportContext:(id)a3;
- (void)onTransportError:(id)a3 transportContext:(id)a4;
@end

@implementation GKMultiplayerActivityReporter

- (GKMultiplayerActivityReporter)initWithLocalPlayerID:(id)a3 matchDataDelegate:(id)a4 apiReporter:(id)a5
{
  v7 = sub_227A724EC();
  v9 = v8;
  swift_unknownObjectRetain();
  return MultiplayerActivityReporter.init(localPlayerID:matchDataDelegate:apiReporter:)(v7, v9, a4, a5);
}

- (id)instrumentClientDelegate:(id)a3 transportContext:(id)a4
{
  swift_unknownObjectRetain();
  v7 = a4;
  v8 = self;
  v9 = MultiplayerActivityReporter.instrument(clientDelegate:transportContext:)(a3, v7);
  swift_unknownObjectRelease();

  return v9;
}

- (id)instrumentErrorHandler:(id)a3 transportContext:(id)a4
{
  v5 = _Block_copy(a3);
  if (v5)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v5 = sub_2279FF03C;
  }

  else
  {
    v6 = 0;
  }

  MultiplayerActivityReporter.instrument(errorHandler:transportContext:)(v5, v6, a4);
  v8 = v7;
  sub_22790D4C0(v5);
  v11[4] = sub_2279FCD44;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2279F9C78;
  v11[3] = &block_descriptor_32;
  v9 = _Block_copy(v11);

  return v9;
}

- (id)instrumentBestHostElectedHandler:(id)a3 transportContext:(id)a4
{
  v5 = _Block_copy(a3);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  MultiplayerActivityReporter.instrument(bestHostHandler:transportContext:)(sub_2279FF2D0, v6, a4);
  v8 = v7;

  v11[4] = sub_2279FCD6C;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2279FF2E8;
  v11[3] = &block_descriptor_29;
  v9 = _Block_copy(v11);

  return v9;
}

- (void)onDisconnectWithTransportContext:(id)a3
{
  v4 = a3;
  v5 = self;
  MultiplayerActivityReporter.onDisconnect(transportContext:)(v4);
}

- (void)onGameplayStartedWithTransportContext:(id)a3
{
  v4 = a3;
  v5 = self;
  MultiplayerActivityReporter.onGameplayStarted(transportContext:)(v4);
}

- (void)onGameplayEndedWithReason:(int64_t)a3 error:(id)a4 transportContext:(id)a5
{
  v7 = a5;
  v8 = self;
  v9 = a4;
  MultiplayerActivityReporter.onGameplayEnded(reason:error:transportContext:)();
}

- (void)onTransportError:(id)a3 transportContext:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = self;
  MultiplayerActivityReporter.onTransportError(error:transportContext:)();
}

@end