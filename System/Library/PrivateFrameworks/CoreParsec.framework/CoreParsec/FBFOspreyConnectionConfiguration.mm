@interface FBFOspreyConnectionConfiguration
- (NSDictionary)extraHeaders;
- (void)prepare:(id)prepare;
- (void)setExtraHeaders:(id)headers;
@end

@implementation FBFOspreyConnectionConfiguration

- (NSDictionary)extraHeaders
{
  sub_1000A2490();
  v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setExtraHeaders:(id)headers
{
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1000A2514(v4);
}

- (void)prepare:(id)prepare
{
  prepareCopy = prepare;
  selfCopy = self;
  sub_1000A28E8(prepareCopy);
}

@end