@interface LACConcurrentEvaluationManagerModel
- (BOOL)restartRequestsForContextID:(id)d;
- (_TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel)init;
- (void)cancelRequestsForContextID:(id)d;
- (void)connectIdleUI:(id)i identifier:(id)identifier completion:(id)completion;
- (void)connectionInvalidatedForIdentifier:(id)identifier;
- (void)idleUIGotFocus:(id)focus identifier:(id)identifier completion:(id)completion;
- (void)stashRequest:(id)request acceptsIdleUI:(BOOL)i;
@end

@implementation LACConcurrentEvaluationManagerModel

- (void)stashRequest:(id)request acceptsIdleUI:(BOOL)i
{
  iCopy = i;
  swift_unknownObjectRetain();
  selfCopy = self;
  LACConcurrentEvaluationManagerModel.stashRequest(_:acceptsIdleUI:)(request, iCopy);
  swift_unknownObjectRelease();
}

- (BOOL)restartRequestsForContextID:(id)d
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v10 = LACConcurrentEvaluationManagerModel.restartRequests(forContextID:)(v8);

  (*(v5 + 8))(v8, v4);
  return v10 & 1;
}

- (void)cancelRequestsForContextID:(id)d
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  LACConcurrentEvaluationManagerModel.cancelRequests(forContextID:)(v8);

  (*(v5 + 8))(v8, v4);
}

- (_TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)idleUIGotFocus:(id)focus identifier:(id)identifier completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  swift_unknownObjectRetain();
  identifierCopy = identifier;
  selfCopy = self;
  specialized LACConcurrentEvaluationManagerModel.idleUIGotFocus(_:identifier:completion:)(identifierCopy, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> (), v8);
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
  LACConcurrentEvaluationManagerModel.connect(_:identifier:completion:)(i, identifierCopy, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned LACDTOEnvironment?, @unowned NSError?) -> (), v9);
  swift_unknownObjectRelease();
}

- (void)connectionInvalidatedForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.super.isa = identifier;
  LACConcurrentEvaluationManagerModel.connectionInvalidated(forIdentifier:)(v9);
}

@end