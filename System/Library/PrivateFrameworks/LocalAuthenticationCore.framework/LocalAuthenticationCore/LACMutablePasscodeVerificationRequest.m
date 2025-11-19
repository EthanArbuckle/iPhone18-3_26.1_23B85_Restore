@interface LACMutablePasscodeVerificationRequest
- (BOOL)bioLockoutRecovery;
- (LACMutablePasscodeVerificationRequest)init;
- (LACMutablePasscodeVerificationRequest)initWithPasscode:(id)a3 acmContext:(id)a4 auditToken:(id)a5;
- (LACMutablePasscodeVerificationRequest)initWithPasscode:(id)a3 acmContext:(id)a4 rawAuditToken:(id *)a5;
- (NSData)acmContext;
- (NSDictionary)options;
- (NSNumber)userId;
- (NSString)description;
- (int64_t)policy;
- (void)setBioLockoutRecovery:(BOOL)a3;
- (void)setOptions:(id)a3;
- (void)setPolicy:(int64_t)a3;
- (void)setUserId:(id)a3;
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

- (void)setUserId:(id)a3
{
  v5 = OBJC_IVAR___LACMutablePasscodeVerificationRequest_userId;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (int64_t)policy
{
  v3 = OBJC_IVAR___LACMutablePasscodeVerificationRequest_policy;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setPolicy:(int64_t)a3
{
  v5 = OBJC_IVAR___LACMutablePasscodeVerificationRequest_policy;
  swift_beginAccess();
  *(self + v5) = a3;
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

- (void)setOptions:(id)a3
{
  if (a3)
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

- (void)setBioLockoutRecovery:(BOOL)a3
{
  v5 = OBJC_IVAR___LACMutablePasscodeVerificationRequest_bioLockoutRecovery;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (LACMutablePasscodeVerificationRequest)initWithPasscode:(id)a3 acmContext:(id)a4 auditToken:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  return LACMutablePasscodeVerificationRequest.init(passcode:acmContext:auditToken:)(a3, v11, v13, v10);
}

- (LACMutablePasscodeVerificationRequest)initWithPasscode:(id)a3 acmContext:(id)a4 rawAuditToken:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v19 = *a5->var0;
  v10 = *&a5->var0[4];
  v11 = *&a5->var0[6];
  v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  isa = Data._bridgeToObjectiveC()().super.isa;
  v20 = v19;
  v21 = v10;
  v22 = v11;
  v16 = [objc_allocWithZone(LACAuditToken) initWithRawValue_];
  v17 = [(LACMutablePasscodeVerificationRequest *)self initWithPasscode:v8 acmContext:isa auditToken:v16];
  outlined consume of Data._Representation(v12, v14);

  return v17;
}

- (NSString)description
{
  v2 = self;
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