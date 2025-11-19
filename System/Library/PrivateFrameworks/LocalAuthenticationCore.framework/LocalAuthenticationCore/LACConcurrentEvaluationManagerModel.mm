@interface LACConcurrentEvaluationManagerModel
- (BOOL)restartRequestsForContextID:(id)a3;
- (_TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel)init;
- (void)cancelRequestsForContextID:(id)a3;
- (void)connectIdleUI:(id)a3 identifier:(id)a4 completion:(id)a5;
- (void)connectionInvalidatedForIdentifier:(id)a3;
- (void)idleUIGotFocus:(id)a3 identifier:(id)a4 completion:(id)a5;
- (void)stashRequest:(id)a3 acceptsIdleUI:(BOOL)a4;
@end

@implementation LACConcurrentEvaluationManagerModel

- (void)stashRequest:(id)a3 acceptsIdleUI:(BOOL)a4
{
  v4 = a4;
  swift_unknownObjectRetain();
  v7 = self;
  LACConcurrentEvaluationManagerModel.stashRequest(_:acceptsIdleUI:)(a3, v4);
  swift_unknownObjectRelease();
}

- (BOOL)restartRequestsForContextID:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  v10 = LACConcurrentEvaluationManagerModel.restartRequests(forContextID:)(v8);

  (*(v5 + 8))(v8, v4);
  return v10 & 1;
}

- (void)cancelRequestsForContextID:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  LACConcurrentEvaluationManagerModel.cancelRequests(forContextID:)(v8);

  (*(v5 + 8))(v8, v4);
}

- (_TtC23LocalAuthenticationCore35LACConcurrentEvaluationManagerModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)idleUIGotFocus:(id)a3 identifier:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  swift_unknownObjectRetain();
  v9 = a4;
  v10 = self;
  specialized LACConcurrentEvaluationManagerModel.idleUIGotFocus(_:identifier:completion:)(v9, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> (), v8);
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
  LACConcurrentEvaluationManagerModel.connect(_:identifier:completion:)(a3, v10, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned LACDTOEnvironment?, @unowned NSError?) -> (), v9);
  swift_unknownObjectRelease();
}

- (void)connectionInvalidatedForIdentifier:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.super.isa = a3;
  LACConcurrentEvaluationManagerModel.connectionInvalidated(forIdentifier:)(v9);
}

@end