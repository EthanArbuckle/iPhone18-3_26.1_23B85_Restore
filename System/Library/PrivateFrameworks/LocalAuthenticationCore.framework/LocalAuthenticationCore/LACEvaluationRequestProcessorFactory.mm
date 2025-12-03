@interface LACEvaluationRequestProcessorFactory
+ (id)makeProcessorWithSubprocessors:(id)subprocessors;
+ (id)makeRootProcessorWithSubprocessors:(id)subprocessors;
@end

@implementation LACEvaluationRequestProcessorFactory

+ (id)makeRootProcessorWithSubprocessors:(id)subprocessors
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29LACEvaluationRequestProcessor_pMd, &_sSo29LACEvaluationRequestProcessor_pMR);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = specialized static LACEvaluationRequestProcessorFactory.makeRootProcessor(withSubprocessors:)(v3);

  return v4;
}

+ (id)makeProcessorWithSubprocessors:(id)subprocessors
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29LACEvaluationRequestProcessor_pMd, &_sSo29LACEvaluationRequestProcessor_pMR);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = type metadata accessor for LACEvaluationRequestCompoundProcessor();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_nextProcessor] = 0;
  v6 = &v5[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_currentProcessorIndex];
  *v6 = 0;
  v6[8] = 1;
  *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_involvedProcessorIndices] = MEMORY[0x1E69E7CC0];
  *&v5[OBJC_IVAR____TtC23LocalAuthenticationCore37LACEvaluationRequestCompoundProcessor_processors] = v3;
  v9.receiver = v5;
  v9.super_class = v4;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

@end