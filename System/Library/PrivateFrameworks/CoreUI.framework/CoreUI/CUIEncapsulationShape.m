@interface CUIEncapsulationShape
- (CUIEncapsulationShape)init;
- (const)pathInRect:(CGRect)a3;
- (const)pathInRect:(CGRect)a3 inset:(double)a4;
- (int64_t)graphicVariantShape;
@end

@implementation CUIEncapsulationShape

- (const)pathInRect:(CGRect)a3
{
  v3 = [(CUIEncapsulationShape *)self pathInRect:a3.origin.x inset:a3.origin.y, a3.size.width, a3.size.height, 0.0];

  return v3;
}

- (const)pathInRect:(CGRect)a3 inset:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = self;
  v10 = sub_18DFFD570(x, y, width, height, a4);

  return v10;
}

- (int64_t)graphicVariantShape
{
  v2 = 1;
  if (*(&self->super.isa + OBJC_IVAR___CUIEncapsulationShape_backing))
  {
    v2 = 2;
  }

  if (self->backing[OBJC_IVAR___CUIEncapsulationShape_backing])
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (CUIEncapsulationShape)init
{
  v3 = self + OBJC_IVAR___CUIEncapsulationShape_backing;
  [objc_opt_self() defaultRoundedRectCornerRadius];
  *v3 = v4;
  v3[8] = 0;
  v6.receiver = self;
  v6.super_class = CUIEncapsulationShape;
  return [(CUIEncapsulationShape *)&v6 init];
}

@end