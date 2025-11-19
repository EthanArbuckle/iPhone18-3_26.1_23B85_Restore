@interface FMPFSKSpriteNode
- (_TtC11FMFindingUI16FMPFSKSpriteNode)initWithCoder:(id)a3;
- (_TtC11FMFindingUI16FMPFSKSpriteNode)initWithTexture:(id)a3 color:(id)a4 size:(CGSize)a5;
@end

@implementation FMPFSKSpriteNode

- (_TtC11FMFindingUI16FMPFSKSpriteNode)initWithTexture:(id)a3 color:(id)a4 size:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = self + OBJC_IVAR____TtC11FMFindingUI16FMPFSKSpriteNode_brightness;
  *v9 = 0;
  v9[8] = 1;
  v10 = self + OBJC_IVAR____TtC11FMFindingUI16FMPFSKSpriteNode_previousBrightness;
  *v10 = 0;
  v10[8] = 1;
  v12.receiver = self;
  v12.super_class = type metadata accessor for FMPFSKSpriteNode();
  return [(SKSpriteNode *)&v12 initWithTexture:a3 color:a4 size:width, height];
}

- (_TtC11FMFindingUI16FMPFSKSpriteNode)initWithCoder:(id)a3
{
  v4 = self + OBJC_IVAR____TtC11FMFindingUI16FMPFSKSpriteNode_brightness;
  *v4 = 0;
  v4[8] = 1;
  v5 = self + OBJC_IVAR____TtC11FMFindingUI16FMPFSKSpriteNode_previousBrightness;
  *v5 = 0;
  v5[8] = 1;
  v9.receiver = self;
  v9.super_class = type metadata accessor for FMPFSKSpriteNode();
  v6 = a3;
  v7 = [(SKSpriteNode *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end