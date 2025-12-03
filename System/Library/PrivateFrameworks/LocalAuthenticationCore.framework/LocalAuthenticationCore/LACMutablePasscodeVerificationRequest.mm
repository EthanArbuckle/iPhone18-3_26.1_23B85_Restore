@interface LACMutablePasscodeVerificationRequest
- (BOOL)bioLockoutRecovery;
- (LACMutablePasscodeVerificationRequest)init;
- (LACMutablePasscodeVerificationRequest)initWithPasscode:(id)passcode acmContext:(id)context auditToken:(id)token;
- (LACMutablePasscodeVerificationRequest)initWithPasscode:(id)passcode acmContext:(id)context rawAuditToken:(id *)token;
- (NSData)acmContext;
- (NSDictionary)options;
- (NSNumber)userId;
- (NSString)description;
- (int64_t)policy;
- (void)setBioLockoutRecovery:(BOOL)recovery;
- (void)setOptions:(id)options;
- (void)setPolicy:(int64_t)policy;
- (void)setUserId:(id)id;
@end

@implementation LACMutablePasscodeVerificationRequest

- (NSData)acmContext
{
  v2 = *(self + OBJC_IVAR___LACMutablePasscodeVerificationRequest_acmContext);
  v3 = *(self + OBJC_IVAR___LACMutablePasscodeVerificationRequest_acmContext + 8);
  outlined copy of Data._Representation(v2, v3);
  v4.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v2, v3);

  return v4.super.isa;
}

- (NSNumber)userId
{
  v3 = OBJC_IVAR___LACMutablePasscodeVerificationRequest_userId;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setUserId:(id)id
{
  v5 = OBJC_IVAR___LACMutablePasscodeVerificationRequest_userId;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = id;
  idCopy = id;
}

- (int64_t)policy
{
  v3 = OBJC_IVAR___LACMutablePasscodeVerificationRequest_policy;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPolicy:(int64_t)policy
{
  v5 = OBJC_IVAR___LACMutablePasscodeVerificationRequest_policy;
  swift_beginAccess();
  *(self + v5) = policy;
}

- (NSDictionary)options
{
  v3 = OBJC_IVAR___LACMutablePasscodeVerificationRequest_options;
  swift_beginAccess();
  if (*(self + v3))
  {

    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)setOptions:(id)options
{
  if (options)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = OBJC_IVAR___LACMutablePasscodeVerificationRequest_options;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (BOOL)bioLockoutRecovery
{
  v3 = OBJC_IVAR___LACMutablePasscodeVerificationRequest_bioLockoutRecovery;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setBioLockoutRecovery:(BOOL)recovery
{
  v5 = OBJC_IVAR___LACMutablePasscodeVerificationRequest_bioLockoutRecovery;
  swift_beginAccess();
  *(self + v5) = recovery;
}

- (LACMutablePasscodeVerificationRequest)initWithPasscode:(id)passcode acmContext:(id)context auditToken:(id)token
{
  passcodeCopy = passcode;
  contextCopy = context;
  tokenCopy = token;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  return LACMutablePasscodeVerificationRequest.init(passcode:acmContext:auditToken:)(passcode, v11, v13, tokenCopy);
}

- (LACMutablePasscodeVerificationRequest)initWithPasscode:(id)passcode acmContext:(id)context rawAuditToken:(id *)token
{
  passcodeCopy = passcode;
  contextCopy = context;
  v19 = *token->var0;
  v10 = *&token->var0[4];
  v11 = *&token->var0[6];
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  isa = Data._bridgeToObjectiveC()().super.isa;
  v20 = v19;
  v21 = v10;
  v22 = v11;
  initWithRawValue_ = [objc_allocWithZone(LACAuditToken) initWithRawValue_];
  v17 = [(LACMutablePasscodeVerificationRequest *)self initWithPasscode:passcodeCopy acmContext:isa auditToken:initWithRawValue_];
  outlined consume of Data._Representation(v12, v14);

  return v17;
}

- (NSString)description
{
  selfCopy = self;
  v3 = LACMutablePasscodeVerificationRequest.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1B27229A0](v3, v5);

  return v6;
}

- (LACMutablePasscodeVerificationRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end