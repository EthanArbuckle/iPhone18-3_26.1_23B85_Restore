@interface CLKUICurvedCircleGlyphLayoutProvider
- (CGAffineTransform)makeTransform;
- (CGPoint)layoutLocation;
- (CGRect)bounds;
- (CLKUICurvedCircleGlyphLayoutProvider)init;
- (double)maxTextWidth;
@end

@implementation CLKUICurvedCircleGlyphLayoutProvider

- (CLKUICurvedCircleGlyphLayoutProvider)init
{
  v4.receiver = self;
  v4.super_class = CLKUICurvedCircleGlyphLayoutProvider;
  result = [(CLKUICurvedCircleGlyphLayoutProvider *)&v4 init];
  if (result)
  {
    *&result->_extraWidthForImage = 0u;
    *&result->_maxAngularWidth = 0u;
    result->_layoutLocation = *MEMORY[0x1E695EFF8];
    result->_usedWidth = 0.0;
    result->_distance = 0.0;
    v3 = *(MEMORY[0x1E695F058] + 16);
    result->_bounds.origin = *MEMORY[0x1E695F058];
    result->_bounds.size = v3;
  }

  return result;
}

- (double)maxTextWidth
{
  maxAngularWidth = self->_maxAngularWidth;
  if (fabs(maxAngularWidth) >= 0.00000011920929 && (circleRadius = self->_circleRadius, fabs(circleRadius) >= 0.00000011920929))
  {
    if (maxAngularWidth > 3.14159265)
    {
      maxAngularWidth = 6.28318531 - maxAngularWidth;
    }

    v4 = maxAngularWidth * circleRadius;
  }

  else
  {
    v4 = 1.79769313e308;
  }

  return v4 - self->_extraWidthForImage;
}

- (CGAffineTransform)makeTransform
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  distance = self->_distance;
  x = self->_layoutLocation.x;
  if (fabs(distance) >= 0.00000011920929)
  {
    centerAngle = self->_centerAngle;
    v10 = centerAngle + (x + self->_usedWidth * -0.5) / distance;
    v11 = self->_bounds.origin.x;
    y = self->_layoutLocation.y;
    v12 = self->_bounds.origin.y;
    width = self->_bounds.size.width;
    height = self->_bounds.size.height;
    v26.origin.x = v11;
    v26.origin.y = v12;
    v26.size.width = width;
    v26.size.height = height;
    MidX = CGRectGetMidX(v26);
    v16 = __sincos_stret(centerAngle);
    v27.origin.x = v11;
    v27.origin.y = v12;
    v27.size.width = width;
    v27.size.height = height;
    v17 = y + CGRectGetMinY(v27) - distance * v16.__cosval;
    v18 = self->_distance;
    v19 = __sincos_stret(v10);
    CGAffineTransformMakeTranslation(retstr, MidX - distance * v16.__sinval + v18 * v19.__sinval, v17 + v18 * v19.__cosval);
    v20 = *&retstr->c;
    *&v23.a = *&retstr->a;
    *&v23.c = v20;
    *&v23.tx = *&retstr->tx;
    result = CGAffineTransformRotate(&v24, &v23, -v10);
    v21 = *&v24.c;
    *&retstr->a = *&v24.a;
    *&retstr->c = v21;
    *&retstr->tx = *&v24.tx;
  }

  else
  {
    v7 = self->_layoutLocation.y;

    return CGAffineTransformMakeTranslation(retstr, x, v7);
  }

  return result;
}

- (CGPoint)layoutLocation
{
  x = self->_layoutLocation.x;
  y = self->_layoutLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end