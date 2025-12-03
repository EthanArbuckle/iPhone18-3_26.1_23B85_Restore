@interface LACEvaluationRequestCompoundProcessor
- (_TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor)init;
- (void)postProcessRequest:(id)request result:(id)result completion:(id)completion;
- (void)processRequest:(id)request configuration:(id)configuration completion:(id)completion;
@end

@implementation LACEvaluationRequestCompoundProcessor

- (void)processRequest:(id)request configuration:(id)configuration completion:(id)completion
{
  v8 = _Block_copy(completion);
  _Block_copy(v8);
  swift_unknownObjectRetain();
  configurationCopy = configuration;
  selfCopy = self;
  specialized LACEvaluationRequestCompoundProcessor.processRequest(_:configuration:completion:)(request, configurationCopy, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
  swift_unknownObjectRelease();
}

- (void)postProcessRequest:(id)request result:(id)result completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  if (self->processors[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_currentProcessorIndex])
  {
    swift_unknownObjectRetain();
    resultCopy = result;
    _Block_copy(v8);
    (*(v8 + 2))(v8, resultCopy);
    swift_unknownObjectRelease();

    _Block_release(v8);
  }

  else
  {
    v11 = *(&self->super.isa + OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_currentProcessorIndex);
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRetain();
    resultCopy2 = result;
    selfCopy = self;
    specialized LACEvaluationRequestCompoundProcessor.postProcessRequest(_:result:subProcessorIndex:completion:)(request, resultCopy2, v11, selfCopy, v12, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned LACEvaluationResult) -> (), v9);

    swift_unknownObjectRelease();
  }
}

- (_TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end