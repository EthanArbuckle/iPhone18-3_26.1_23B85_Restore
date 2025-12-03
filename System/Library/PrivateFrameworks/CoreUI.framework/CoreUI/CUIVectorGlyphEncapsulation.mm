@interface CUIVectorGlyphEncapsulation
+ (id)newEncapsulationWithShape:(id)shape rect:(CGRect)rect canvasSize:(CGSize)size representativePointSize:(double)pointSize;
- (CUIVectorGlyphEncapsulation)init;
- (id)copyWithZone:(void *)zone;
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

+ (id)newEncapsulationWithShape:(id)shape rect:(CGRect)rect canvasSize:(CGSize)size representativePointSize:(double)pointSize
{
  height = size.height;
  width = size.width;
  v9 = rect.size.height;
  v10 = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  swift_getObjCClassMetadata();
  shapeCopy = shape;
  v15 = sub_18DFF9FAC(shapeCopy, x, y, v10, v9, width, height, pointSize);

  return v15;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  sub_18DFFA168(v5);

  __swift_project_boxed_opaque_existential_0(v5, v5[3]);
  sub_18E013328();
}

@end