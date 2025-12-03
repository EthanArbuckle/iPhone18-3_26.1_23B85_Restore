@interface AnyHashable:
- (uint64_t)Any;
@end

@implementation AnyHashable:

- (uint64_t)Any
{
  v5 = *(self + 32);
  v4 = *(self + 40);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5(v6, a3);
}

@end