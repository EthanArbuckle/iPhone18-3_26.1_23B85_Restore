@interface CUIEncapsulationShape
- (CUIEncapsulationShape)init;
- (const)pathInRect:(CGRect)rect;
- (const)pathInRect:(CGRect)rect inset:(double)inset;
- (int64_t)graphicVariantShape;
@end

@implementation CUIEncapsulationShape

- (const)pathInRect:(CGRect)rect
{
  v3 = [(CUIEncapsulationShape *)self pathInRect:rect.origin.x inset:rect.origin.y, rect.size.width, rect.size.height, 0.0];

  return v3;
}

- (const)pathInRect:(CGRect)rect inset:(double)inset
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  v10 = sub_18DFFD570(x, y, width, height, inset);

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