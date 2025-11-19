@interface LACEvaluationRequestCompoundProcessor
- (_TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor)init;
- (void)postProcessRequest:(id)a3 result:(id)a4 completion:(id)a5;
- (void)processRequest:(id)a3 configuration:(id)a4 completion:(id)a5;
@end

@implementation LACEvaluationRequestCompoundProcessor

- (void)processRequest:(id)a3 configuration:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  swift_unknownObjectRetain();
  v9 = a4;
  v10 = self;
  specialized LACEvaluationRequestCompoundProcessor.processRequest(_:configuration:completion:)(a3, v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
  swift_unknownObjectRelease();
}

- (void)postProcessRequest:(id)a3 result:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  if (self->processors[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_currentProcessorIndex])
  {
    swift_unknownObjectRetain();
    v10 = a4;
    _Block_copy(v8);
    (*(v8 + 2))(v8, v10);
    swift_unknownObjectRelease();

    _Block_release(v8);
  }

  else
  {
    v11 = *(&self->super.isa + OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_currentProcessorIndex);
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectRetain();
    v13 = a4;
    v14 = self;
    specialized LACEvaluationRequestCompoundProcessor.postProcessRequest(_:result:subProcessorIndex:completion:)(a3, v13, v11, v14, v12, partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned LACEvaluationResult) -> (), v9);

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