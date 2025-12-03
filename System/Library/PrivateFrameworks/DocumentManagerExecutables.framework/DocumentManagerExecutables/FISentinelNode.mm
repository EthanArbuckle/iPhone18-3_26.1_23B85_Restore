@interface FISentinelNode
- (NSString)filename;
- (NSString)typeIdentifier;
- (UTType)contentType;
- (_TtC26DocumentManagerExecutables14FISentinelNode)init;
- (_TtC26DocumentManagerExecutables14FISentinelNode)initWithCoder:(id)coder;
- (id)identifier;
@end

@implementation FISentinelNode

- (_TtC26DocumentManagerExecutables14FISentinelNode)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FISentinelNode();
  return [(FICustomNode *)&v3 init];
}

- (id)identifier
{
  swift_beginAccess();

  v2 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();

  return v2;
}

- (UTType)contentType
{
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UTType.item.getter();
  v7.super.isa = UTType._bridgeToObjectiveC()().super.isa;
  (*(v3 + 8))(v6, v2);

  return v7.super.isa;
}

- (NSString)typeIdentifier
{
  v3 = type metadata accessor for UTType();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  contentType = [(FISentinelNode *)selfCopy contentType];
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  v10 = UTType.identifier.getter();
  v12 = v11;

  (*(v4 + 8))(v7, v3);
  v13 = MEMORY[0x24C1FAD20](v10, v12);

  return v13;
}

- (NSString)filename
{
  v2 = MEMORY[0x24C1FAD20](4271950, 0xE300000000000000);

  return v2;
}

- (_TtC26DocumentManagerExecutables14FISentinelNode)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FISentinelNode();
  coderCopy = coder;
  v5 = [(FISentinelNode *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end