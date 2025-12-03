@interface FMPFSKSpriteNode
- (_TtC11FMFindingUI16FMPFSKSpriteNode)initWithCoder:(id)coder;
- (_TtC11FMFindingUI16FMPFSKSpriteNode)initWithTexture:(id)texture color:(id)color size:(CGSize)size;
@end

@implementation FMPFSKSpriteNode

- (_TtC11FMFindingUI16FMPFSKSpriteNode)initWithTexture:(id)texture color:(id)color size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v9 = self + OBJC_IVAR____TtC11FMFindingUI16FMPFSKSpriteNode_brightness;
  *v9 = 0;
  v9[8] = 1;
  v10 = self + OBJC_IVAR____TtC11FMFindingUI16FMPFSKSpriteNode_previousBrightness;
  *v10 = 0;
  v10[8] = 1;
  v12.receiver = self;
  v12.super_class = type metadata accessor for FMPFSKSpriteNode();
  return [(SKSpriteNode *)&v12 initWithTexture:texture color:color size:width, height];
}

- (_TtC11FMFindingUI16FMPFSKSpriteNode)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC11FMFindingUI16FMPFSKSpriteNode_brightness;
  *v4 = 0;
  v4[8] = 1;
  v5 = self + OBJC_IVAR____TtC11FMFindingUI16FMPFSKSpriteNode_previousBrightness;
  *v5 = 0;
  v5[8] = 1;
  v9.receiver = self;
  v9.super_class = type metadata accessor for FMPFSKSpriteNode();
  coderCopy = coder;
  v7 = [(SKSpriteNode *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end