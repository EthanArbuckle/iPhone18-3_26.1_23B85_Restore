@interface CUIVectorGlyphEncapsulation
+ (id)newEncapsulationWithShape:(id)a3 rect:(CGRect)a4 canvasSize:(CGSize)a5 representativePointSize:(double)a6;
- (CUIVectorGlyphEncapsulation)init;
- (id)copyWithZone:(void *)a3;
@end

@implementation CUIVectorGlyphEncapsulation

- (CUIVectorGlyphEncapsulation)init
{
  v3 = OBJC_IVAR___CUIVectorGlyphEncapsulation_shape;
  *(&self->super.isa + v3) = [objc_opt_self() newRoundedRect];
  v4 = (self + OBJC_IVAR___CUIVectorGlyphEncapsulation_rect);
  *v4 = 0u;
  v4[1] = 0u;
  v5 = (&self->super.isa + OBJC_IVAR___CUIVectorGlyphEncapsulation_canvasSize);
  *v5 = 0;
  v5[1] = 0;
  *(&self->super.isa + OBJC_IVAR___CUIVectorGlyphEncapsulation_representativePointSize) = 0;
  v6 = self + OBJC_IVAR___CUIVectorGlyphEncapsulation__samples;
  *(v6 + 4) = 0;
  *v6 = 0u;
  *(v6 + 1) = 0u;
  v8.receiver = self;
  v8.super_class = CUIVectorGlyphEncapsulation;
  return [(CUIVectorGlyphEncapsulation *)&v8 init];
}

+ (id)newEncapsulationWithShape:(id)a3 rect:(CGRect)a4 canvasSize:(CGSize)a5 representativePointSize:(double)a6
{
  height = a5.height;
  width = a5.width;
  v9 = a4.size.height;
  v10 = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  swift_getObjCClassMetadata();
  v14 = a3;
  v15 = sub_18DFF9FAC(v14, x, y, v10, v9, width, height, a6);

  return v15;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  sub_18DFFA168(v5);

  __swift_project_boxed_opaque_existential_0(v5, v5[3]);
  sub_18E013328();
}

@end