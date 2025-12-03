@interface CMFreeFormShapeBuilder
- (CGAffineTransform)affineTransform;
- (CGPath)copyShapeWithTransform:(CGAffineTransform *)transform;
- (CGPoint)_renderPathElement:(id)element withTransform:(CGAffineTransform *)transform inPath:(CGPath *)path;
- (void)setSpace:(CGSize)space;
@end

@implementation CMFreeFormShapeBuilder

- (CGAffineTransform)affineTransform
{
  orientedBounds = self->super.super._orientedBounds;
  if (!orientedBounds)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a3 object:self file:@"CMFreeFormShapeBuilder.mm" lineNumber:41 description:@"oriented bounds not set"];

    orientedBounds = self->super.super._orientedBounds;
  }

  v6 = MEMORY[0x277CBF2C0];
  v7 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v7;
  *&retstr->tx = *(v6 + 32);
  [(OADOrientedBounds *)orientedBounds bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(OADOrientedBounds *)self->super.super._orientedBounds rotation];
  if ([OADOrientedBounds directionCloserToVerticalThanToHorizontal:?])
  {
    v9 = NSTransposedRectWithSameCenter(v9, v11, v13, v15);
    v11 = v16;
    v13 = v17;
    v15 = v18;
  }

  v19 = *&retstr->c;
  *&v40.a = *&retstr->a;
  *&v40.c = v19;
  *&v40.tx = *&retstr->tx;
  CGAffineTransformTranslate(retstr, &v40, v9, v11);
  [(OADOrientedBounds *)self->super.super._orientedBounds rotation];
  v21 = v20 * 3.14159265 / -180.0;
  if (v21 != 0.0)
  {
    v22 = *&retstr->c;
    *&v39.a = *&retstr->a;
    *&v39.c = v22;
    *&v39.tx = *&retstr->tx;
    CGAffineTransformTranslate(&v40, &v39, v13 * 0.5, v15 * 0.5);
    v23 = *&v40.c;
    *&retstr->a = *&v40.a;
    *&retstr->c = v23;
    *&retstr->tx = *&v40.tx;
    v24 = *&retstr->c;
    *&v39.a = *&retstr->a;
    *&v39.c = v24;
    *&v39.tx = *&retstr->tx;
    CGAffineTransformRotate(&v40, &v39, v21);
    v25 = *&v40.c;
    *&retstr->a = *&v40.a;
    *&retstr->c = v25;
    *&retstr->tx = *&v40.tx;
    v26 = *&retstr->c;
    *&v39.a = *&retstr->a;
    *&v39.c = v26;
    *&v39.tx = *&retstr->tx;
    CGAffineTransformTranslate(&v40, &v39, -(v13 * 0.5), -(v15 * 0.5));
    v27 = *&v40.c;
    *&retstr->a = *&v40.a;
    *&retstr->c = v27;
    *&retstr->tx = *&v40.tx;
  }

  if ([(OADOrientedBounds *)self->super.super._orientedBounds flipX])
  {
    v28 = *&retstr->c;
    *&v39.a = *&retstr->a;
    *&v39.c = v28;
    *&v39.tx = *&retstr->tx;
    CGAffineTransformScale(&v40, &v39, -1.0, 1.0);
    v29 = *&v40.c;
    *&retstr->a = *&v40.a;
    *&retstr->c = v29;
    *&retstr->tx = *&v40.tx;
    v30 = *&retstr->c;
    *&v39.a = *&retstr->a;
    *&v39.c = v30;
    *&v39.tx = *&retstr->tx;
    CGAffineTransformTranslate(&v40, &v39, -v13, 0.0);
    v31 = *&v40.c;
    *&retstr->a = *&v40.a;
    *&retstr->c = v31;
    *&retstr->tx = *&v40.tx;
  }

  result = [(OADOrientedBounds *)self->super.super._orientedBounds flipY];
  if (result)
  {
    v33 = *&retstr->c;
    *&v39.a = *&retstr->a;
    *&v39.c = v33;
    *&v39.tx = *&retstr->tx;
    CGAffineTransformScale(&v40, &v39, 1.0, -1.0);
    v34 = *&v40.c;
    *&retstr->a = *&v40.a;
    *&retstr->c = v34;
    *&retstr->tx = *&v40.tx;
    v35 = *&retstr->c;
    *&v39.a = *&retstr->a;
    *&v39.c = v35;
    *&v39.tx = *&retstr->tx;
    result = CGAffineTransformTranslate(&v40, &v39, 0.0, -v15);
    v36 = *&v40.c;
    *&retstr->a = *&v40.a;
    *&retstr->c = v36;
    *&retstr->tx = *&v40.tx;
  }

  return result;
}

- (void)setSpace:(CGSize)space
{
  if (space.width == 0.0 || space.height == 0.0)
  {
    isOffice12 = [(CMShapeBuilder *)self isOffice12];
    space.width = 12666.0;
    if (!isOffice12)
    {
      space.width = 8.0;
    }

    space.height = space.width;
  }

  self->_space = space;
}

- (CGPath)copyShapeWithTransform:(CGAffineTransform *)transform
{
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, transform, 0.0, 0.0);
  if ([(OADPath *)self->_path elementCount])
  {
    v6 = 0;
    v7 = 1;
    while (1)
    {
      v8 = [(OADPath *)self->_path elementAtIndex:v6];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v9 = *&transform->c;
      v12[0] = *&transform->a;
      v12[1] = v9;
      v12[2] = *&transform->tx;
      [(CMFreeFormShapeBuilder *)self _renderPathElement:v8 withTransform:v12 inPath:Mutable];

      v6 = v7;
      if ([(OADPath *)self->_path elementCount]<= v7++)
      {
        return Mutable;
      }
    }

    CGPathCloseSubpath(Mutable);
  }

  return Mutable;
}

- (CGPoint)_renderPathElement:(id)element withTransform:(CGAffineTransform *)transform inPath:(CGPath *)path
{
  elementCopy = element;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [elementCopy toPoint] >> 32;
    p_space = &self->_space;
    width = p_space->width;
    [elementCopy toPoint];
    v5 = v11 / width;
    v6 = v14 / p_space->height;
    CGPathMoveToPoint(path, transform, v5, v6);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [elementCopy toPoint] >> 32;
      v18 = self->_space.width;
      [elementCopy toPoint];
      v5 = v17 / v18;
      v6 = v19 / self->_space.height;
      if ([elementCopy relative])
      {
        CurrentPoint = CGPathGetCurrentPoint(path);
        v5 = v5 + CurrentPoint.x;
        v6 = v6 + CurrentPoint.y;
        CGPathAddLineToPoint(path, 0, v5, v6);
      }

      else
      {
        CGPathAddLineToPoint(path, transform, v5, v6);
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = [elementCopy toPoint] >> 32;
        v22 = &self->_space;
        v23 = v22->width;
        [elementCopy toPoint];
        v5 = v21 / v23;
        v6 = v24 / v22->height;
        CGPathAddLineToPoint(path, transform, v5, v6);
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = [elementCopy toPoint] >> 32;
          v26 = &self->_space;
          v27 = self->_space.width;
          [elementCopy toPoint];
          v29 = v28;
          height = v26->height;
          v31 = [elementCopy controlPoint1] >> 32;
          v32 = v26->width;
          [elementCopy controlPoint1];
          v34 = v33;
          v35 = v26->height;
          v36 = [elementCopy controlPoint2] >> 32;
          v37 = v26->width;
          [elementCopy controlPoint2];
          v5 = v25 / v27;
          v6 = v29 / height;
          CGPathAddCurveToPoint(path, transform, v31 / v32, v34 / v35, v36 / v37, v38 / v26->height, v5, v6);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v39 = [elementCopy toPoint] >> 32;
            v40 = &self->_space;
            v41 = self->_space.width;
            [elementCopy toPoint];
            v43 = v42;
            v44 = v40->height;
            v45 = [elementCopy controlPoint] >> 32;
            v46 = v40->width;
            [elementCopy controlPoint];
            v5 = v39 / v41;
            v6 = v43 / v44;
            CGPathAddQuadCurveToPoint(path, transform, v45 / v46, v47 / v40->height, v5, v6);
          }
        }
      }
    }
  }

  v15 = v5;
  v16 = v6;
  result.y = v16;
  result.x = v15;
  return result;
}

@end