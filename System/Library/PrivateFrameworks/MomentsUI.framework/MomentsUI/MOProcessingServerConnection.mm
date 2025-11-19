@interface MOProcessingServerConnection
- (MOProcessingServerConnection)init;
- (void)beginSystemTaskWithTask:(id)a3 completionHandler:(id)a4;
- (void)continueSystemTaskWithToken:(id)a3 completionHandler:(id)a4;
- (void)endSystemTaskWithToken:(id)a3 completionHandler:(id)a4;
@end

@implementation MOProcessingServerConnection

- (void)beginSystemTaskWithTask:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  v10 = [(MOProcessingServerConnection *)v9 connection];
  v12[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned MOTaskAction, @unowned NSUUID?, @unowned NSError?) -> ();
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed MOTaskAction, @in_guaranteed UUID?, @guaranteed Error?) -> ();
  v12[3] = &block_descriptor_97_0;
  v11 = _Block_copy(v12);

  [(ProcessingServerConnection *)v10 beginSystemTaskWithTask:v8 completionHandler:v11];

  _Block_release(v11);
}

- (void)continueSystemTaskWithToken:(id)a3 completionHandler:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = self;
  v13 = [(MOProcessingServerConnection *)v12 connection];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  aBlock[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned MOTaskAction, @unowned NSNumber, @unowned NSError?) -> ();
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MOTaskAction, @guaranteed NSNumber, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_91_0;
  v15 = _Block_copy(aBlock);

  [(ProcessingServerConnection *)v13 continueSystemTaskWithToken:isa completionHandler:v15];
  _Block_release(v15);

  (*(v7 + 8))(v9, v6);
}

- (void)endSystemTaskWithToken:(id)a3 completionHandler:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = self;
  v13 = [(MOProcessingServerConnection *)v12 connection];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  aBlock[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NotificationApprovedApplicationList?, @unowned NSError?) -> ();
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MOTaskAction, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_85;
  v15 = _Block_copy(aBlock);

  [(ProcessingServerConnection *)v13 endSystemTaskWithToken:isa completionHandler:v15];
  _Block_release(v15);

  (*(v7 + 8))(v9, v6);
}

- (MOProcessingServerConnection)init
{
  v3 = OBJC_IVAR___MOProcessingServerConnection_connection;
  *(&self->super.isa + v3) = [objc_allocWithZone(type metadata accessor for ProcessingServerConnection()) init];
  v4 = OBJC_IVAR___MOProcessingServerConnection_presenterServerConnection;
  *(&self->super.isa + v4) = [objc_allocWithZone(type metadata accessor for PresenterServerConnection()) init];
  v6.receiver = self;
  v6.super_class = MOProcessingServerConnection;
  return [(MOProcessingServerConnection *)&v6 init];
}

@end