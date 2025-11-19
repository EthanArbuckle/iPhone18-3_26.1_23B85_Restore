@interface CMLineShapeBuilder
- (CGPath)copyShapeWithTransform:(CGAffineTransform *)a3;
- (CGRect)_boundingBoxForLineEnd:(id)a3;
- (float)_adjustedCoefAtIndex:(int)a3;
- (float)_getRotationFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4 withBounds:(id)a5;
- (void)_renderBentConnector2InPath:(CGPath *)a3 withTransform:(CGAffineTransform *)a4 andOrientedBounds:(id)a5 headSrc:(CGPoint *)a6 headDst:(CGPoint *)a7 tailSrc:(CGPoint *)a8 tailDst:(CGPoint *)a9;
- (void)_renderBentConnector3InPath:(CGPath *)a3 withTransform:(CGAffineTransform *)a4 andOrientedBounds:(id)a5 headSrc:(CGPoint *)a6 headDst:(CGPoint *)a7 tailSrc:(CGPoint *)a8 tailDst:(CGPoint *)a9;
- (void)_renderLineEnd:(id)a3 atPoint:(CGPoint)a4 withOrientation:(float)a5 inPath:(CGPath *)a6;
- (void)_renderStraightConnector1InPath:(CGPath *)a3 withTransform:(CGAffineTransform *)a4 andOrientedBounds:(id)a5 headSrc:(CGPoint *)a6 headDst:(CGPoint *)a7 tailSrc:(CGPoint *)a8 tailDst:(CGPoint *)a9;
@end

@implementation CMLineShapeBuilder

- (CGPath)copyShapeWithTransform:(CGAffineTransform *)a3
{
  Mutable = CGPathCreateMutable();
  type = self->super._type;
  if (type == 34)
  {
    v8 = *&a3->c;
    v28 = *&a3->a;
    v29 = v8;
    v30 = *&a3->tx;
    [(CMLineShapeBuilder *)self _renderBentConnector3InPath:Mutable withTransform:&v28 andOrientedBounds:self->super._orientedBounds headSrc:&v37 headDst:&v35 tailSrc:&v33 tailDst:&v31];
  }

  else
  {
    v7 = *&a3->c;
    v28 = *&a3->a;
    v29 = v7;
    v30 = *&a3->tx;
    if (type == 33)
    {
      [(CMLineShapeBuilder *)self _renderBentConnector2InPath:Mutable withTransform:&v28 andOrientedBounds:self->super._orientedBounds headSrc:&v37 headDst:&v35 tailSrc:&v33 tailDst:&v31];
    }

    else
    {
      [(CMLineShapeBuilder *)self _renderStraightConnector1InPath:Mutable withTransform:&v28 andOrientedBounds:self->super._orientedBounds headSrc:&v37 headDst:&v35 tailSrc:&v33 tailDst:&v31];
    }
  }

  a = a3->a;
  b = a3->b;
  c = a3->c;
  d = a3->d;
  tx = a3->tx;
  ty = a3->ty;
  v15 = ty + v38 * d + b * v37;
  v37 = tx + v38 * c + a3->a * v37;
  v38 = v15;
  v16 = ty + d * v36 + b * v35;
  v35 = tx + c * v36 + a * v35;
  v36 = v16;
  v17 = ty + d * v34 + b * v33;
  v33 = tx + c * v34 + a * v33;
  v34 = v17;
  v18 = ty + d * v32 + b * v31;
  v31 = tx + c * v32 + a * v31;
  v32 = v18;
  [CMLineShapeBuilder _getRotationFromPoint:"_getRotationFromPoint:toPoint:withBounds:" toPoint:self->super._orientedBounds withBounds:?];
  v20 = v19;
  v21 = [(OADStroke *)self->_stroke head];
  LODWORD(v22) = v20;
  [(CMLineShapeBuilder *)self _renderLineEnd:v21 atPoint:Mutable withOrientation:v35 inPath:v36, v22];

  [(CMLineShapeBuilder *)self _getRotationFromPoint:self->super._orientedBounds toPoint:v33 withBounds:v34, v31, v32];
  v24 = v23;
  v25 = [(OADStroke *)self->_stroke tail];
  LODWORD(v26) = v24;
  [(CMLineShapeBuilder *)self _renderLineEnd:v25 atPoint:Mutable withOrientation:v31 inPath:v32, v26];

  return Mutable;
}

- (void)_renderStraightConnector1InPath:(CGPath *)a3 withTransform:(CGAffineTransform *)a4 andOrientedBounds:(id)a5 headSrc:(CGPoint *)a6 headDst:(CGPoint *)a7 tailSrc:(CGPoint *)a8 tailDst:(CGPoint *)a9
{
  v19 = a5;
  [v19 rotation];
  v14 = [OADOrientedBounds directionCloserToVerticalThanToHorizontal:?];
  v15 = [v19 flipX];
  v16 = v15 ^ [v19 flipY];
  if ((v14 & v16) != 0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = 10.0;
  }

  if ((v14 & v16) != 0)
  {
    v18 = 10.0;
  }

  else
  {
    v18 = 0.0;
  }

  CGPathMoveToPoint(a3, a4, v17, v18);
  CGPathAddLineToPoint(a3, a4, v18, v17);
  a9->x = v18;
  a9->y = v17;
  a8->x = v17;
  a8->y = v18;
  a6->x = v18;
  a6->y = v17;
  a7->x = v17;
  a7->y = v18;
}

- (void)_renderBentConnector2InPath:(CGPath *)a3 withTransform:(CGAffineTransform *)a4 andOrientedBounds:(id)a5 headSrc:(CGPoint *)a6 headDst:(CGPoint *)a7 tailSrc:(CGPoint *)a8 tailDst:(CGPoint *)a9
{
  v19 = a5;
  [v19 rotation];
  v14 = [OADOrientedBounds directionCloserToVerticalThanToHorizontal:?];
  v15 = [v19 flipX];
  v16 = v15 ^ [v19 flipY];
  if ((v14 & v16) != 0)
  {
    v17 = 10.0;
  }

  else
  {
    v17 = 0.0;
  }

  if ((v14 & v16) != 0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = 10.0;
  }

  CGPathMoveToPoint(a3, a4, v17, v18);
  CGPathAddLineToPoint(a3, a4, v18, v18);
  CGPathAddLineToPoint(a3, a4, v18, v17);
  a9->x = v17;
  a9->y = v18;
  a8->x = v18;
  a8->y = v18;
  a6->x = v18;
  a6->y = v18;
  a7->x = v18;
  a7->y = v17;
}

- (float)_adjustedCoefAtIndex:(int)a3
{
  adjustValues = self->super._adjustValues;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:*&a3];
  v6 = [(NSDictionary *)adjustValues objectForKey:v5];

  if (v6)
  {
    [v6 floatValue];
    v8 = v7;
    [(CMShapeBuilder *)self maxAdjustedValue];
    v10 = v8 / (v9 + v9);
  }

  else
  {
    v10 = 0.5;
  }

  return v10;
}

- (void)_renderBentConnector3InPath:(CGPath *)a3 withTransform:(CGAffineTransform *)a4 andOrientedBounds:(id)a5 headSrc:(CGPoint *)a6 headDst:(CGPoint *)a7 tailSrc:(CGPoint *)a8 tailDst:(CGPoint *)a9
{
  v24 = a5;
  [v24 rotation];
  v15 = [OADOrientedBounds directionCloserToVerticalThanToHorizontal:?];
  v16 = [v24 flipX];
  v17 = [v24 flipY];
  [(CMLineShapeBuilder *)self _adjustedCoefAtIndex:0];
  v19 = v16 ^ v17;
  if ((v15 & (v16 ^ v17)) != 0)
  {
    v20 = 10.0;
  }

  else
  {
    v20 = 0.0;
  }

  if ((v15 & v19) != 0)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = 10.0;
  }

  if ((v15 & v19) != 0)
  {
    v22 = 1.0 - v18;
  }

  else
  {
    v22 = v18;
  }

  CGPathMoveToPoint(a3, a4, v21, v20);
  v23 = v22 * 10.0;
  CGPathAddLineToPoint(a3, a4, v23, v20);
  CGPathAddLineToPoint(a3, a4, v23, v21);
  CGPathAddLineToPoint(a3, a4, v20, v21);
  a7->x = v21;
  a7->y = v20;
  a6->x = v23;
  a6->y = v20;
  a8->x = v23;
  a8->y = v21;
  a9->x = v20;
  a9->y = v21;
}

- (float)_getRotationFromPoint:(CGPoint)a3 toPoint:(CGPoint)a4 withBounds:(id)a5
{
  x = a4.x;
  v6 = a3.x;
  v7 = a4.x - a3.x;
  if (v7 == 0.0)
  {
    v8 = dbl_25D710B10[a3.y > a4.y];
  }

  else
  {
    v8 = atan((a4.y - a3.y) / v7);
  }

  result = v8;
  if (x < v6)
  {
    return result + 3.14159265;
  }

  return result;
}

- (CGRect)_boundingBoxForLineEnd:(id)a3
{
  v3 = a3;
  if ([v3 type] == 5)
  {
    v4 = &[CMLineShapeBuilder _boundingBoxForLineEnd:]::openEndArrowSizes;
  }

  else
  {
    v4 = &[CMLineShapeBuilder _boundingBoxForLineEnd:]::arrowSizes;
  }

  v5 = [v3 width];
  v6 = [v3 length];
  if (v5 >= 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v4[v7];
  if (v6 >= 3)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  v10 = v4[v9];
  v11 = [v3 type];
  v12 = 0.0;
  if (v11 == 4)
  {
    v12 = v10 * 0.5;
  }

  if (v11 == 3)
  {
    v12 = v10 * 0.5;
  }

  v13 = (v12 - v10);

  v14 = (v8 * -0.5);
  v15 = v13;
  v16 = v8;
  v17 = v10;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)_renderLineEnd:(id)a3 atPoint:(CGPoint)a4 withOrientation:(float)a5 inPath:(CGPath *)a6
{
  y = a4.y;
  x = a4.x;
  v11 = a3;
  if (!v11)
  {
    goto LABEL_15;
  }

  [(CMLineShapeBuilder *)self _boundingBoxForLineEnd:v11];
  v12 = v36.origin.x;
  v13 = v36.origin.y;
  width = v36.size.width;
  height = v36.size.height;
  v16 = CGRectGetWidth(v36);
  v37.origin.x = v12;
  v37.origin.y = v13;
  v37.size.width = width;
  v37.size.height = height;
  v17 = CGRectGetHeight(v37);
  memset(&v34, 0, sizeof(v34));
  CGAffineTransformMakeTranslation(&v34, x, y);
  t1 = v34;
  CGAffineTransformScale(&v33, &t1, 1.66666663, 1.66666663);
  v34 = v33;
  t1 = v33;
  CGAffineTransformRotate(&v33, &t1, a5 + 1.57079633);
  v34 = v33;
  t1 = v33;
  CGAffineTransformScale(&v33, &t1, 1.0, -1.0);
  v34 = v33;
  v18 = [v11 type];
  v19 = v16;
  v20 = v17;
  v21 = v19 * 0.5;
  if (v18 <= 2)
  {
    if (v18 == 1)
    {
      CGAffineTransformMakeTranslation(&m, 0.0, -v20);
      t1 = m;
      v31 = v34;
      CGAffineTransformConcat(&v33, &t1, &v31);
      m = v33;
      CGPathMoveToPoint(a6, &m, v21, 0.0);
      v30 = 0.0;
      CGPathAddLineToPoint(a6, &m, 0.0, v20);
      v28 = -v21;
      goto LABEL_14;
    }

    if (v18 != 2)
    {
      goto LABEL_15;
    }

    CGAffineTransformMakeTranslation(&m, 0.0, (v20 / -3.0));
    t1 = m;
    v31 = v34;
    CGAffineTransformConcat(&v33, &t1, &v31);
    m = v33;
    CGPathMoveToPoint(a6, &m, v21, 0.0);
    CGPathAddLineToPoint(a6, &m, 0.0, v20);
    v28 = 0.0;
    CGPathAddLineToPoint(a6, &m, -v21, 0.0);
    v29 = v20 / 3.0;
LABEL_11:
    v30 = v29;
LABEL_14:
    CGPathAddLineToPoint(a6, &m, v28, v30);
    CGPathCloseSubpath(a6);
    goto LABEL_15;
  }

  switch(v18)
  {
    case 3:
      m = v34;
      CGPathMoveToPoint(a6, &m, v21, 0.0);
      CGPathAddLineToPoint(a6, &m, 0.0, (v20 * 0.5));
      v28 = 0.0;
      CGPathAddLineToPoint(a6, &m, -v21, 0.0);
      v29 = -(v20 * 0.5);
      goto LABEL_11;
    case 4:
      m = v34;
      v38.origin.x = (v19 * -0.5);
      v38.origin.y = (v20 * -0.5);
      v38.size.width = v19;
      v38.size.height = v20;
      CGPathAddEllipseInRect(a6, &m, v38);
      break;
    case 5:
      v22 = atanf((sqrtf(((v20 + (v20 * -0.5)) + -0.5) + (v21 * (v21 + -1.0))) - (v20 + -0.5)) / (v21 + -1.0));
      v23 = v22 + v22;
      v24 = sinf(v22 + v22);
      v25 = v20 + (-1.0 / v24);
      CGAffineTransformMakeTranslation(&m, 0.0, -v25);
      t1 = m;
      v31 = v34;
      CGAffineTransformConcat(&v33, &t1, &v31);
      m = v33;
      CGPathMoveToPoint(a6, &m, 0.0, v20);
      v26 = v21 + -0.5;
      v27 = cosf(v23);
      CGPathAddLineToPoint(a6, &m, (v26 + (v27 * 0.5)), ((v24 * 0.5) + 0.5));
      CGPathAddLineToPoint(a6, &m, 0.0, v25);
      CGPathAddLineToPoint(a6, &m, -(v26 + (v27 * -0.5)), ((v24 * -0.5) + 0.5));
      CGPathCloseSubpath(a6);
      break;
  }

LABEL_15:
}

@end