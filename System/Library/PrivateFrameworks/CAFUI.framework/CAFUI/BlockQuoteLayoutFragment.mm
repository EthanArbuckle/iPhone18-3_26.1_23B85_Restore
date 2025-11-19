@interface BlockQuoteLayoutFragment
- (CGRect)renderingSurfaceBounds;
- (_TtC5CAFUI24BlockQuoteLayoutFragment)initWithCoder:(id)a3;
- (_TtC5CAFUI24BlockQuoteLayoutFragment)initWithTextElement:(id)a3 range:(id)a4;
- (void)drawAtPoint:(CGPoint)a3 inContext:(CGContext *)a4;
@end

@implementation BlockQuoteLayoutFragment

- (CGRect)renderingSurfaceBounds
{
  v2 = self;
  BlockQuoteLayoutFragment.tightTextBounds.getter();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v23.receiver = v2;
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

- (void)drawAtPoint:(CGPoint)a3 inContext:(CGContext *)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = self;
  BlockQuoteLayoutFragment.draw(at:in:)(__PAIR128__(*&y, *&x), v7);
}

- (_TtC5CAFUI24BlockQuoteLayoutFragment)initWithTextElement:(id)a3 range:(id)a4
{
  *(&self->super.super.isa + OBJC_IVAR____TtC5CAFUI24BlockQuoteLayoutFragment_barWidth) = 0x4010000000000000;
  v7.receiver = self;
  v7.super_class = type metadata accessor for BlockQuoteLayoutFragment();
  return [(BlockQuoteLayoutFragment *)&v7 initWithTextElement:a3 range:a4];
}

- (_TtC5CAFUI24BlockQuoteLayoutFragment)initWithCoder:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC5CAFUI24BlockQuoteLayoutFragment_barWidth) = 0x4010000000000000;
  v7.receiver = self;
  v7.super_class = type metadata accessor for BlockQuoteLayoutFragment();
  v4 = a3;
  v5 = [(BlockQuoteLayoutFragment *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end