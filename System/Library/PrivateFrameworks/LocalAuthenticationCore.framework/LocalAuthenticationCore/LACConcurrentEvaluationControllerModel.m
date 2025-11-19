@interface LACConcurrentEvaluationControllerModel
- (BOOL)canProcessRequest:(id)a3;
- (_TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel)init;
- (void)postProcessRequest:(id)a3 result:(id)a4 completion:(id)a5;
- (void)processRequest:(id)a3 configuration:(id)a4 completion:(id)a5;
@end

@implementation LACConcurrentEvaluationControllerModel

- (BOOL)canProcessRequest:(id)a3
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_helper);
  swift_unknownObjectRetain();
  v6 = self;
  if ([v5 isConcurrentEvaluationAvailable])
  {
    v7 = [a3 isInteractive];
  }

  else
  {
    v7 = 0;
  }

  swift_unknownObjectRelease();

  return v7;
}

- (void)processRequest:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  swift_unknownObjectRetain();
  v9 = a4;
  v10 = self;
  specialized LACConcurrentEvaluationControllerModel.processRequest(_:configuration:completion:)(a3, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
  swift_unknownObjectRelease();
}

- (void)postProcessRequest:(id)a3 result:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  swift_unknownObjectRetain();
  v10 = a4;
  v13 = self;
  _Block_copy(v8);
  if ((LACConcurrentEvaluationControllerModel.shouldStash(request:for:)(a3, v10) & 1) != 0 && (v11 = [v10 error]) != 0)
  {
    v12 = v11;
    _Block_release(v8);
    LACConcurrentEvaluationControllerModel.stashRequest(_:for:completion:)(a3, v12, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned LACEvaluationResult) -> (), v9);

    swift_unknownObjectRelease();
  }

  else
  {
    [*(&v13->super.isa + OBJC_IVAR____TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel_manager) unregisterRequest_];
    (*(v8 + 2))(v8, v10);
    swift_unknownObjectRelease();

    _Block_release(v8);
  }
}

- (_TtC23LocalAuthenticationCore38LACConcurrentEvaluationControllerModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end