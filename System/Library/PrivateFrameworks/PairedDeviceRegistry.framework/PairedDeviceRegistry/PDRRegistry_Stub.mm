@interface PDRRegistry_Stub
+ (id)sharedInstance;
- (BOOL)removeDelegate:(id)delegate;
- (OS_dispatch_queue)callbackQueue;
- (id)getDevicesExcluding:(unint64_t)excluding;
- (int64_t)migrationCountForPairingID:(id)d;
- (void)addDelegate:(id)delegate;
- (void)pairingClientSetAltAccountName:(id)name altDSID:(id)d forDevice:(id)device completion:(id)completion;
- (void)setActivePairedDevice:(id)device resultsCallback:(id)callback;
- (void)setCallbackQueue:(id)queue;
- (void)start;
@end

@implementation PDRRegistry_Stub

- (OS_dispatch_queue)callbackQueue
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for Registry_Stub();
  callbackQueue = [(PDRRegistry *)&v4 callbackQueue];

  return callbackQueue;
}

- (void)setCallbackQueue:(id)queue
{
  if (*(&self->super.super.isa + OBJC_IVAR___PDRRegistry_Stub_amSingleton) == 1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v4.receiver = self;
    v4.super_class = type metadata accessor for Registry_Stub();
    [(PDRRegistry *)&v4 setCallbackQueue:queue];
  }
}

+ (id)sharedInstance
{
  if (one-time initialization token for sharedInstance_ != -1)
  {
    swift_once();
  }

  v3 = static Registry_Stub.sharedInstance_;

  return v3;
}

- (void)start
{
  if (*(&self->super.super.isa + OBJC_IVAR___PDRRegistry_Stub_started_) == 1)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *(&self->super.super.isa + OBJC_IVAR___PDRRegistry_Stub_started_) = 1;
  }
}

- (id)getDevicesExcluding:(unint64_t)excluding
{
  type metadata accessor for PDRDevice();
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)addDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  Registry_Stub.add(delegate:)();
  swift_unknownObjectRelease();
}

- (BOOL)removeDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = Registry_Stub.remove(delegate:)(delegate);
  swift_unknownObjectRelease();

  return v6 & 1;
}

- (void)setActivePairedDevice:(id)device resultsCallback:(id)callback
{
  v4 = _Block_copy(callback);
  (*(v4 + 2))(v4, 0, 0);

  _Block_release(v4);
}

- (int64_t)migrationCountForPairingID:(id)d
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v4 + 8))(v7, v3);
  return 0;
}

- (void)pairingClientSetAltAccountName:(id)name altDSID:(id)d forDevice:(id)device completion:(id)completion
{
  v6 = _Block_copy(completion);
  v6[2](v6, 0);

  _Block_release(v6);
}

@end