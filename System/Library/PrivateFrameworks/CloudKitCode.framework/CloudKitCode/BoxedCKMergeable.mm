@interface BoxedCKMergeable
- (BOOL)mergeDeltas:(id)deltas error:(id *)error;
- (NSString)description;
- (id)mergeableDeltasForMetadata:(id)metadata error:(id *)error;
@end

@implementation BoxedCKMergeable

- (id)mergeableDeltasForMetadata:(id)metadata error:(id *)error
{
  metadataCopy = metadata;
  selfCopy = self;
  sub_24388D26C();

  sub_24388DAFC();
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

- (BOOL)mergeDeltas:(id)deltas error:(id *)error
{
  sub_24388DAFC();
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_24388D3F0();

  return 1;
}

- (NSString)description
{
  selfCopy = self;
  v3 = sub_24388D598();
  v5 = v4;

  v6 = MEMORY[0x245D42400](v3, v5);

  return v6;
}

@end