@interface LACConcurrentEvaluationManager
- (BOOL)restartRequestsForContextID:(id)d;
- (LACConcurrentEvaluationManager)initWithReplyQueue:(id)queue;
- (id)makeModel;
- (void)cancelRequestsForContextID:(id)d;
- (void)connectIdleUI:(id)i identifier:(id)identifier completion:(id)completion;
- (void)connectionInvalidatedForIdentifier:(id)identifier;
- (void)idleUIGotFocus:(id)focus identifier:(id)identifier completion:(id)completion;
@end

@implementation LACConcurrentEvaluationManager

- (LACConcurrentEvaluationManager)initWithReplyQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = LACConcurrentEvaluationManager;
  v6 = [(LACConcurrentEvaluationManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_replyQueue, queue);
    makeModel = [(LACConcurrentEvaluationManager *)v7 makeModel];
    model = v7->_model;
    v7->_model = makeModel;
  }

  return v7;
}

- (BOOL)restartRequestsForContextID:(id)d
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  model = [(LACConcurrentEvaluationManager *)selfCopy model];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  restartRequestsForContextID_ = [model restartRequestsForContextID_];

  swift_unknownObjectRelease();
  (*(v5 + 8))(v8, v4);
  return restartRequestsForContextID_;
}

- (void)cancelRequestsForContextID:(id)d
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  model = [(LACConcurrentEvaluationManager *)selfCopy model];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [model cancelRequestsForContextID_];

  swift_unknownObjectRelease();
  (*(v5 + 8))(v8, v4);
}

- (void)idleUIGotFocus:(id)focus identifier:(id)identifier completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  swift_unknownObjectRetain();
  identifierCopy = identifier;
  selfCopy = self;
  model = [(LACConcurrentEvaluationManager *)selfCopy model];
  v14[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ();
  v14[5] = v9;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v14[3] = &block_descriptor_12;
  v13 = _Block_copy(v14);

  [model idleUIGotFocus:focus identifier:identifierCopy completion:v13];
  swift_unknownObjectRelease();

  _Block_release(v13);
  swift_unknownObjectRelease();
}

- (void)connectionInvalidatedForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  [-[LACConcurrentEvaluationManager model](selfCopy model)];
  swift_unknownObjectRelease();
}

- (void)connectIdleUI:(id)i identifier:(id)identifier completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  swift_unknownObjectRetain();
  identifierCopy = identifier;
  selfCopy = self;
  model = [(LACConcurrentEvaluationManager *)selfCopy model];
  v14[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned LACDTOEnvironment?, @unowned NSError?) -> ();
  v14[5] = v9;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed LACConcurrentIdleUIHandling?, @guaranteed Error?) -> ();
  v14[3] = &block_descriptor_6_1;
  v13 = _Block_copy(v14);

  [model connectIdleUI:i identifier:identifierCopy completion:v13];
  swift_unknownObjectRelease();

  _Block_release(v13);
  swift_unknownObjectRelease();
}

- (id)makeModel
{
  selfCopy = self;
  replyQueue = [(LACConcurrentEvaluationManager *)selfCopy replyQueue];
  sharedInstance = [objc_opt_self() sharedInstance];
  sharedInstance2 = [objc_opt_self() sharedInstance];
  v6 = objc_allocWithZone(type metadata accessor for LACConcurrentEvaluationManagerModel());
  v7 = specialized LACConcurrentEvaluationManagerModel.init(clientInfoProvider:helper:replyQueue:)(sharedInstance, sharedInstance2, replyQueue, v6);

  return v7;
}

@end