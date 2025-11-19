@interface LACConcurrentEvaluationManager
- (BOOL)restartRequestsForContextID:(id)a3;
- (LACConcurrentEvaluationManager)initWithReplyQueue:(id)a3;
- (id)makeModel;
- (void)cancelRequestsForContextID:(id)a3;
- (void)connectIdleUI:(id)a3 identifier:(id)a4 completion:(id)a5;
- (void)connectionInvalidatedForIdentifier:(id)a3;
- (void)idleUIGotFocus:(id)a3 identifier:(id)a4 completion:(id)a5;
@end

@implementation LACConcurrentEvaluationManager

- (LACConcurrentEvaluationManager)initWithReplyQueue:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = LACConcurrentEvaluationManager;
  v6 = [(LACConcurrentEvaluationManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_replyQueue, a3);
    v8 = [(LACConcurrentEvaluationManager *)v7 makeModel];
    model = v7->_model;
    v7->_model = v8;
  }

  return v7;
}

- (BOOL)restartRequestsForContextID:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  v10 = [(LACConcurrentEvaluationManager *)v9 model];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v12 = [v10 restartRequestsForContextID_];

  swift_unknownObjectRelease();
  (*(v5 + 8))(v8, v4);
  return v12;
}

- (void)cancelRequestsForContextID:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  v10 = [(LACConcurrentEvaluationManager *)v9 model];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v10 cancelRequestsForContextID_];

  swift_unknownObjectRelease();
  (*(v5 + 8))(v8, v4);
}

- (void)idleUIGotFocus:(id)a3 identifier:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  swift_unknownObjectRetain();
  v10 = a4;
  v11 = self;
  v12 = [(LACConcurrentEvaluationManager *)v11 model];
  v14[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ();
  v14[5] = v9;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v14[3] = &block_descriptor_12;
  v13 = _Block_copy(v14);

  [v12 idleUIGotFocus:a3 identifier:v10 completion:v13];
  swift_unknownObjectRelease();

  _Block_release(v13);
  swift_unknownObjectRelease();
}

- (void)connectionInvalidatedForIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  [-[LACConcurrentEvaluationManager model](v5 model)];
  swift_unknownObjectRelease();
}

- (void)connectIdleUI:(id)a3 identifier:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  swift_unknownObjectRetain();
  v10 = a4;
  v11 = self;
  v12 = [(LACConcurrentEvaluationManager *)v11 model];
  v14[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned LACDTOEnvironment?, @unowned NSError?) -> ();
  v14[5] = v9;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACConcurrentIdleUIHandling?, @guaranteed Error?) -> ();
  v14[3] = &block_descriptor_6_1;
  v13 = _Block_copy(v14);

  [v12 connectIdleUI:a3 identifier:v10 completion:v13];
  swift_unknownObjectRelease();

  _Block_release(v13);
  swift_unknownObjectRelease();
}

- (id)makeModel
{
  v2 = self;
  v3 = [(LACConcurrentEvaluationManager *)v2 replyQueue];
  v4 = [objc_opt_self() sharedInstance];
  v5 = [objc_opt_self() sharedInstance];
  v6 = objc_allocWithZone(type metadata accessor for LACConcurrentEvaluationManagerModel());
  v7 = specialized LACConcurrentEvaluationManagerModel.init(clientInfoProvider:helper:replyQueue:)(v4, v5, v3, v6);

  return v7;
}

@end