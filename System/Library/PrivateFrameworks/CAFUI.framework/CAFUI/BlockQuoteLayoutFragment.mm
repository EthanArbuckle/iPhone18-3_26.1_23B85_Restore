@interface BlockQuoteLayoutFragment
- (CGRect)renderingSurfaceBounds;
- (_TtC5CAFUI24BlockQuoteLayoutFragment)initWithCoder:(id)coder;
- (_TtC5CAFUI24BlockQuoteLayoutFragment)initWithTextElement:(id)element range:(id)range;
- (void)drawAtPoint:(CGPoint)point inContext:(CGContext *)context;
@end

@implementation BlockQuoteLayoutFragment

- (CGRect)renderingSurfaceBounds
{
  selfCopy = self;
  BlockQuoteLayoutFragment.tightTextBounds.getter();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v23.receiver = selfCopy;
  v23.super_class = type metadata accessor for BlockQuoteLayoutFragment();
  [(BlockQuoteLayoutFragment *)&v23 renderingSurfaceBounds];
  v27.origin.x = v11;
  v27.origin.y = v12;
  v27.size.width = v13;
  v27.size.height = v14;
  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  v25 = CGRectUnion(v24, v27);
  x = v25.origin.x;
  y = v25.origin.y;
  width = v25.size.width;
  height = v25.size.height;

  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)drawAtPoint:(CGPoint)point inContext:(CGContext *)context
{
  y = point.y;
  x = point.x;
  contextCopy = context;
  selfCopy = self;
  BlockQuoteLayoutFragment.draw(at:in:)(__PAIR128__(*&y, *&x), contextCopy);
}

- (_TtC5CAFUI24BlockQuoteLayoutFragment)initWithTextElement:(id)element range:(id)range
{
  *(&self->super.super.isa + OBJC_IVAR____TtC5CAFUI24BlockQuoteLayoutFragment_barWidth) = 0x4010000000000000;
  v7.receiver = self;
  v7.super_class = type metadata accessor for BlockQuoteLayoutFragment();
  return [(BlockQuoteLayoutFragment *)&v7 initWithTextElement:element range:range];
}

- (_TtC5CAFUI24BlockQuoteLayoutFragment)initWithCoder:(id)coder
{
  *(&self->super.super.isa + OBJC_IVAR____TtC5CAFUI24BlockQuoteLayoutFragment_barWidth) = 0x4010000000000000;
  v7.receiver = self;
  v7.super_class = type metadata accessor for BlockQuoteLayoutFragment();
  coderCopy = coder;
  v5 = [(BlockQuoteLayoutFragment *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end