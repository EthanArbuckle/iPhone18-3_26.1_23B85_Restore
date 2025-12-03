@interface LACEvaluationRequestRootProcessor
- (_TtC23LocalAuthenticationCore33LACEvaluationRequestRootProcessor)init;
- (void)handleRequest:(id)request completion:(id)completion;
@end

@implementation LACEvaluationRequestRootProcessor

- (void)handleRequest:(id)request completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = *(&self->super.isa + OBJC_IVAR____TtC23LocalAuthenticationCore33LACEvaluationRequestRootProcessor_processor);
  _Block_copy(v6);
  swift_unknownObjectRetain();
  selfCopy = self;
  if ([v8 canProcessRequest_])
  {
    LACEvaluationRequestRootProcessor.process(_:completion:)(request, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned LACEvaluationResult) -> (), v7);
  }

  else
  {
    v9 = objc_opt_self();
    v10 = specialized static LACEvaluationRequestRootProcessor.noResultError(request:)(request);
    v11 = _convertErrorToNSError(_:)();

    resultWithFailure_ = [v9 resultWithFailure_];
    (*(v6 + 2))(v6, resultWithFailure_);
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