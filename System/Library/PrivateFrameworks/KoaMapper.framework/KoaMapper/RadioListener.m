@interface RadioListener
- (NSString)appId;
- (id)radioStations;
- (id)updateHandler;
- (void)accessoryDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
- (void)donationUpdateTriggered;
- (void)registerUpdateHandler:(id)a3;
- (void)setUpdateHandler:(id)a3;
- (void)teardownPublisherSubscriptions;
@end

@implementation RadioListener

- (id)updateHandler
{
  v2 = RadioListener.updateHandler.getter();
  if (v2)
  {
    v6[4] = v2;
    v6[5] = v3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = thunk for @escaping @callee_guaranteed (@guaranteed String) -> ();
    v6[3] = &block_descriptor_30;
    v4 = _Block_copy(v6);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setUpdateHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = thunk for @escaping @callee_unowned @convention(block) (@unowned NSString) -> ()partial apply;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  RadioListener.updateHandler.setter(v4, v5);
}

- (NSString)appId
{
  v2 = RadioListener.appId.getter();
  v3 = MEMORY[0x259C459A0](v2);

  return v3;
}

- (void)teardownPublisherSubscriptions
{
  v2 = self;
  RadioListener.teardownPublisherSubscriptions()();
}

- (void)registerUpdateHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSString) -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = self;
  RadioListener.registerUpdateHandler(_:)(v7, v6);
  outlined consume of (@escaping @callee_guaranteed (@guaranteed String) -> ())?(v7);
}

- (id)radioStations
{
  v2 = self;
  RadioListener.radioStations()();

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for KVItem, 0x277D22D20);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)donationUpdateTriggered
{
  v2 = self;
  RadioListener.donationUpdateTriggered()();
}

- (void)accessoryDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  RadioListener.accessoryDidUpdate(_:receivedAllValues:)(v6, a4);
}

@end