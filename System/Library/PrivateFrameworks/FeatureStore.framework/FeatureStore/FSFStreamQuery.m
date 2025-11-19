@interface FSFStreamQuery
- (NSArray)interactionIds;
- (NSString)description;
- (void)setInteractionIds:(id)a3;
@end

@implementation FSFStreamQuery

- (NSArray)interactionIds
{
  StreamQuery.interactionIds.getter();
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setInteractionIds:(id)a3
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  StreamQuery.interactionIds.setter(v4);
}

- (NSString)description
{
  v2 = self;
  v3 = StreamQuery.description.getter();
  v5 = v4;

  v6 = MEMORY[0x223DD33D0](v3, v5);

  return v6;
}

@end