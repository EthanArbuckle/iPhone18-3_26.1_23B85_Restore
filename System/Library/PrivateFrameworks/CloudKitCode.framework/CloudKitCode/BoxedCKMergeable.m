@interface BoxedCKMergeable
- (BOOL)mergeDeltas:(id)a3 error:(id *)a4;
- (NSString)description;
- (id)mergeableDeltasForMetadata:(id)a3 error:(id *)a4;
@end

@implementation BoxedCKMergeable

- (id)mergeableDeltasForMetadata:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  sub_24388D26C();

  sub_24388DAFC();
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

- (BOOL)mergeDeltas:(id)a3 error:(id *)a4
{
  sub_24388DAFC();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_24388D3F0();

  return 1;
}

- (NSString)description
{
  v2 = self;
  v3 = sub_24388D598();
  v5 = v4;

  v6 = MEMORY[0x245D42400](v3, v5);

  return v6;
}

@end