@interface FSFStreamQuery
- (NSArray)interactionIds;
- (NSString)description;
- (void)setInteractionIds:(id)ids;
@end

@implementation FSFStreamQuery

- (NSArray)interactionIds
{
  StreamQuery.interactionIds.getter();
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setInteractionIds:(id)ids
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  StreamQuery.interactionIds.setter(v4);
}

- (NSString)description
{
  selfCopy = self;
  v3 = StreamQuery.description.getter();
  v5 = v4;

  v6 = MEMORY[0x223DD33D0](v3, v5);

  return v6;
}

@end