@interface LACInternalInfoParser
- (LACAuditToken)callerAuditToken;
- (LACInternalInfoParser)init;
- (LACInternalInfoParser)initWithInternalInfo:(id)info;
- (NSDictionary)internalInfo;
- (NSDictionary)options;
- (NSNumber)userId;
- (int64_t)policy;
@end

@implementation LACInternalInfoParser

- (NSDictionary)internalInfo
{
  v2 = *(self + OBJC_IVAR___LACInternalInfoParser_internalInfo);

  v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (LACInternalInfoParser)initWithInternalInfo:(id)info
{
  *(self + OBJC_IVAR___LACInternalInfoParser_internalInfo) = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5.receiver = self;
  v5.super_class = LACInternalInfoParser;
  return [(LACInternalInfoParser *)&v5 init];
}

- (LACAuditToken)callerAuditToken
{
  selfCopy = self;
  v3 = LACInternalInfoParser.callerAuditToken.getter();

  return v3;
}

- (NSNumber)userId
{
  selfCopy = self;
  v3 = LACInternalInfoParser.userId.getter();

  return v3;
}

- (NSDictionary)options
{
  selfCopy = self;
  v3 = LACInternalInfoParser.options.getter();

  if (v3)
  {
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (int64_t)policy
{
  selfCopy = self;
  v3 = LACInternalInfoParser.policy.getter();

  return v3;
}

- (LACInternalInfoParser)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end