@interface LACEvaluationRequestRootProcessor
- (_TtC23LocalAuthenticationCore33LACEvaluationRequestRootProcessor)init;
- (void)handleRequest:(id)a3 completion:(id)a4;
@end

@implementation LACEvaluationRequestRootProcessor

- (void)handleRequest:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *(&self->super.isa + OBJC_IVAR____TtC23LocalAuthenticationCore33LACEvaluationRequestRootProcessor_processor);
  _Block_copy(v6);
  swift_unknownObjectRetain();
  v13 = self;
  if ([v8 canProcessRequest_])
  {
    LACEvaluationRequestRootProcessor.process(_:completion:)(a3, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned LACEvaluationResult) -> (), v7);
  }

  else
  {
    v9 = objc_opt_self();
    v10 = specialized static LACEvaluationRequestRootProcessor.noResultError(request:)(a3);
    v11 = _convertErrorToNSError(_:)();

    v12 = [v9 resultWithFailure_];
    (*(v6 + 2))(v6, v12);
  }

  _Block_release(v6);
  swift_unknownObjectRelease();
}

- (_TtC23LocalAuthenticationCore33LACEvaluationRequestRootProcessor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end