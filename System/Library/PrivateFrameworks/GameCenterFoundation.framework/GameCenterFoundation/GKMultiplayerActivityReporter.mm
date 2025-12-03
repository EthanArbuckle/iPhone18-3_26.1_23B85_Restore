@interface GKMultiplayerActivityReporter
- (GKMultiplayerActivityReporter)initWithLocalPlayerID:(id)d matchDataDelegate:(id)delegate apiReporter:(id)reporter;
- (id)instrumentBestHostElectedHandler:(id)handler transportContext:(id)context;
- (id)instrumentClientDelegate:(id)delegate transportContext:(id)context;
- (id)instrumentErrorHandler:(id)handler transportContext:(id)context;
- (void)onDisconnectWithTransportContext:(id)context;
- (void)onGameplayEndedWithReason:(int64_t)reason error:(id)error transportContext:(id)context;
- (void)onGameplayStartedWithTransportContext:(id)context;
- (void)onTransportError:(id)error transportContext:(id)context;
@end

@implementation GKMultiplayerActivityReporter

- (GKMultiplayerActivityReporter)initWithLocalPlayerID:(id)d matchDataDelegate:(id)delegate apiReporter:(id)reporter
{
  v7 = sub_227A724EC();
  v9 = v8;
  swift_unknownObjectRetain();
  return MultiplayerActivityReporter.init(localPlayerID:matchDataDelegate:apiReporter:)(v7, v9, delegate, reporter);
}

- (id)instrumentClientDelegate:(id)delegate transportContext:(id)context
{
  swift_unknownObjectRetain();
  contextCopy = context;
  selfCopy = self;
  v9 = MultiplayerActivityReporter.instrument(clientDelegate:transportContext:)(delegate, contextCopy);
  swift_unknownObjectRelease();

  return v9;
}

- (id)instrumentErrorHandler:(id)handler transportContext:(id)context
{
  v5 = _Block_copy(handler);
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

  MultiplayerActivityReporter.instrument(errorHandler:transportContext:)(v5, v6, context);
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

- (id)instrumentBestHostElectedHandler:(id)handler transportContext:(id)context
{
  v5 = _Block_copy(handler);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  MultiplayerActivityReporter.instrument(bestHostHandler:transportContext:)(sub_2279FF2D0, v6, context);
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

- (void)onDisconnectWithTransportContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  MultiplayerActivityReporter.onDisconnect(transportContext:)(contextCopy);
}

- (void)onGameplayStartedWithTransportContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  MultiplayerActivityReporter.onGameplayStarted(transportContext:)(contextCopy);
}

- (void)onGameplayEndedWithReason:(int64_t)reason error:(id)error transportContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  errorCopy = error;
  MultiplayerActivityReporter.onGameplayEnded(reason:error:transportContext:)();
}

- (void)onTransportError:(id)error transportContext:(id)context
{
  errorCopy = error;
  contextCopy = context;
  selfCopy = self;
  MultiplayerActivityReporter.onTransportError(error:transportContext:)();
}

@end