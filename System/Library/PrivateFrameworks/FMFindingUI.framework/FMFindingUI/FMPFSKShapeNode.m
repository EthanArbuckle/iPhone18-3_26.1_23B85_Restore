@interface FMPFSKShapeNode
- (_TtC11FMFindingUI15FMPFSKShapeNode)init;
- (_TtC11FMFindingUI15FMPFSKShapeNode)initWithCoder:(id)a3;
@end

@implementation FMPFSKShapeNode

- (_TtC11FMFindingUI15FMPFSKShapeNode)init
{
  v2 = self + OBJC_IVAR____TtC11FMFindingUI15FMPFSKShapeNode_previousBrightness;
  *v2 = 0;
  v2[8] = 1;
  v4.receiver = self;
  v4.super_class = type metadata accessor for FMPFSKShapeNode();
  return [(SKShapeNode *)&v4 init];
}

- (_TtC11FMFindingUI15FMPFSKShapeNode)initWithCoder:(id)a3
{
  v4 = self + OBJC_IVAR____TtC11FMFindingUI15FMPFSKShapeNode_previousBrightness;
  *v4 = 0;
  v4[8] = 1;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMPFSKShapeNode();
  v5 = a3;
  v6 = [(SKShapeNode *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end