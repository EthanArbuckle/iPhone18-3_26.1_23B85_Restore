@interface FBFOspreyConnectionConfiguration
- (NSDictionary)extraHeaders;
- (void)prepare:(id)a3;
- (void)setExtraHeaders:(id)a3;
@end

@implementation FBFOspreyConnectionConfiguration

- (NSDictionary)extraHeaders
{
  sub_1000A2490();
  v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setExtraHeaders:(id)a3
{
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_1000A2514(v4);
}

- (void)prepare:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000A28E8(v4);
}

@end