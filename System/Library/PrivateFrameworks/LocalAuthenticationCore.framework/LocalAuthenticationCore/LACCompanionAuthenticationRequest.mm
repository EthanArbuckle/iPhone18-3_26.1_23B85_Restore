@interface LACCompanionAuthenticationRequest
- (BOOL)isFallbackAvailable;
- (LACCompanionAuthenticationRequest)init;
- (LACEvaluationRequest)evaluationRequest;
- (NSData)acmContextData;
- (unsigned)identifier;
- (void)setIsFallbackAvailable:(BOOL)available;
@end

@implementation LACCompanionAuthenticationRequest

- (NSData)acmContextData
{
  v2 = *(self + OBJC_IVAR___LACCompanionAuthenticationRequest_acmContextData);
  v3 = *(self + OBJC_IVAR___LACCompanionAuthenticationRequest_acmContextData + 8);
  outlined copy of Data._Representation(v2, v3);
  v4.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v2, v3);

  return v4.super.isa;
}

- (LACEvaluationRequest)evaluationRequest
{
  v2 = *(self + OBJC_IVAR___LACCompanionAuthenticationRequest_evaluationRequest);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (BOOL)isFallbackAvailable
{
  v3 = OBJC_IVAR___LACCompanionAuthenticationRequest_isFallbackAvailable;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsFallbackAvailable:(BOOL)available
{
  v5 = OBJC_IVAR___LACCompanionAuthenticationRequest_isFallbackAvailable;
  swift_beginAccess();
  *(self + v5) = available;
}

- (unsigned)identifier
{
  selfCopy = self;
  identifier = [(LACEvaluationRequest *)[(LACCompanionAuthenticationRequest *)selfCopy evaluationRequest] identifier];

  swift_unknownObjectRelease();
  return identifier;
}

- (LACCompanionAuthenticationRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end