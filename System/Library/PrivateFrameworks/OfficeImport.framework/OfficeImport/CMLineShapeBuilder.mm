@interface CMLineShapeBuilder
- (CGPath)copyShapeWithTransform:(CGAffineTransform *)transform;
- (CGRect)_boundingBoxForLineEnd:(id)end;
- (float)_adjustedCoefAtIndex:(int)index;
- (float)_getRotationFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint withBounds:(id)bounds;
- (void)_renderBentConnector2InPath:(CGPath *)path withTransform:(CGAffineTransform *)transform andOrientedBounds:(id)bounds headSrc:(CGPoint *)src headDst:(CGPoint *)dst tailSrc:(CGPoint *)tailSrc tailDst:(CGPoint *)tailDst;
- (void)_renderBentConnector3InPath:(CGPath *)path withTransform:(CGAffineTransform *)transform andOrientedBounds:(id)bounds headSrc:(CGPoint *)src headDst:(CGPoint *)dst tailSrc:(CGPoint *)tailSrc tailDst:(CGPoint *)tailDst;
- (void)_renderLineEnd:(id)end atPoint:(CGPoint)point withOrientation:(float)orientation inPath:(CGPath *)path;
- (void)_renderStraightConnector1InPath:(CGPath *)path withTransform:(CGAffineTransform *)transform andOrientedBounds:(id)bounds headSrc:(CGPoint *)src headDst:(CGPoint *)dst tailSrc:(CGPoint *)tailSrc tailDst:(CGPoint *)tailDst;
@end

@implementation CMLineShapeBuilder

- (CGPath)copyShapeWithTransform:(CGAffineTransform *)transform
{
  Mutable = CGPathCreateMutable();
  type = self->super._type;
  if (type == 34)
  {
    v8 = *&transform->c;
    v28 = *&transform->a;
    v29 = v8;
    v30 = *&transform->tx;
    [(CMLineShapeBuilder *)self _renderBentConnector3InPath:Mutable withTransform:&v28 andOrientedBounds:self->super._orientedBounds headSrc:&v37 headDst:&v35 tailSrc:&v33 tailDst:&v31];
  }

  else
  {
    v7 = *&transform->c;
    v28 = *&transform->a;
    v29 = v7;
    v30 = *&transform->tx;
    if (type == 33)
    {
      [(CMLineShapeBuilder *)self _renderBentConnector2InPath:Mutable withTransform:&v28 andOrientedBounds:self->super._orientedBounds headSrc:&v37 headDst:&v35 tailSrc:&v33 tailDst:&v31];
    }

    else
    {
      [(CMLineShapeBuilder *)self _renderStraightConnector1InPath:Mutable withTransform:&v28 andOrientedBounds:self->super._orientedBounds headSrc:&v37 headDst:&v35 tailSrc:&v33 tailDst:&v31];
    }
  }

  a = transform->a;
  b = transform->b;
  c = transform->c;
  d = transform->d;
  tx = transform->tx;
  ty = transform->ty;
  v15 = ty + v38 * d + b * v37;
  v37 = tx + v38 * c + transform->a * v37;
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
  head = [(OADStroke *)self->_stroke head];
  LODWORD(v22) = v20;
  [(CMLineShapeBuilder *)self _renderLineEnd:head atPoint:Mutable withOrientation:v35 inPath:v36, v22];

  [(CMLineShapeBuilder *)self _getRotationFromPoint:self->super._orientedBounds toPoint:v33 withBounds:v34, v31, v32];
  v24 = v23;
  tail = [(OADStroke *)self->_stroke tail];
  LODWORD(v26) = v24;
  [(CMLineShapeBuilder *)self _renderLineEnd:tail atPoint:Mutable withOrientation:v31 inPath:v32, v26];

  return Mutable;
}

- (void)_renderStraightConnector1InPath:(CGPath *)path withTransform:(CGAffineTransform *)transform andOrientedBounds:(id)bounds headSrc:(CGPoint *)src headDst:(CGPoint *)dst tailSrc:(CGPoint *)tailSrc tailDst:(CGPoint *)tailDst
{
  boundsCopy = bounds;
  [boundsCopy rotation];
  v14 = [OADOrientedBounds directionCloserToVerticalThanToHorizontal:?];
  flipX = [boundsCopy flipX];
  v16 = flipX ^ [boundsCopy flipY];
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

  CGPathMoveToPoint(path, transform, v17, v18);
  CGPathAddLineToPoint(path, transform, v18, v17);
  tailDst->x = v18;
  tailDst->y = v17;
  tailSrc->x = v17;
  tailSrc->y = v18;
  src->x = v18;
  src->y = v17;
  dst->x = v17;
  dst->y = v18;
}

- (void)_renderBentConnector2InPath:(CGPath *)path withTransform:(CGAffineTransform *)transform andOrientedBounds:(id)bounds headSrc:(CGPoint *)src headDst:(CGPoint *)dst tailSrc:(CGPoint *)tailSrc tailDst:(CGPoint *)tailDst
{
  boundsCopy = bounds;
  [boundsCopy rotation];
  v14 = [OADOrientedBounds directionCloserToVerticalThanToHorizontal:?];
  flipX = [boundsCopy flipX];
  v16 = flipX ^ [boundsCopy flipY];
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

  CGPathMoveToPoint(path, transform, v17, v18);
  CGPathAddLineToPoint(path, transform, v18, v18);
  CGPathAddLineToPoint(path, transform, v18, v17);
  tailDst->x = v17;
  tailDst->y = v18;
  tailSrc->x = v18;
  tailSrc->y = v18;
  src->x = v18;
  src->y = v18;
  dst->x = v18;
  dst->y = v17;
}

- (float)_adjustedCoefAtIndex:(int)index
{
  adjustValues = self->super._adjustValues;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:*&index];
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

- (void)_renderBentConnector3InPath:(CGPath *)path withTransform:(CGAffineTransform *)transform andOrientedBounds:(id)bounds headSrc:(CGPoint *)src headDst:(CGPoint *)dst tailSrc:(CGPoint *)tailSrc tailDst:(CGPoint *)tailDst
{
  boundsCopy = bounds;
  [boundsCopy rotation];
  v15 = [OADOrientedBounds directionCloserToVerticalThanToHorizontal:?];
  flipX = [boundsCopy flipX];
  flipY = [boundsCopy flipY];
  [(CMLineShapeBuilder *)self _adjustedCoefAtIndex:0];
  v19 = flipX ^ flipY;
  if ((v15 & (flipX ^ flipY)) != 0)
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

  CGPathMoveToPoint(path, transform, v21, v20);
  v23 = v22 * 10.0;
  CGPathAddLineToPoint(path, transform, v23, v20);
  CGPathAddLineToPoint(path, transform, v23, v21);
  CGPathAddLineToPoint(path, transform, v20, v21);
  dst->x = v21;
  dst->y = v20;
  src->x = v23;
  src->y = v20;
  tailSrc->x = v23;
  tailSrc->y = v21;
  tailDst->x = v20;
  tailDst->y = v21;
}

- (float)_getRotationFromPoint:(CGPoint)point toPoint:(CGPoint)toPoint withBounds:(id)bounds
{
  x = toPoint.x;
  v6 = point.x;
  v7 = toPoint.x - point.x;
  if (v7 == 0.0)
  {
    v8 = dbl_25D710B10[point.y > toPoint.y];
  }

  else
  {
    v8 = atan((toPoint.y - point.y) / v7);
  }

  result = v8;
  if (x < v6)
  {
    return result + 3.14159265;
  }

  return result;
}

- (CGRect)_boundingBoxForLineEnd:(id)end
{
  endCopy = end;
  if ([endCopy type] == 5)
  {
    v4 = &[CMLineShapeBuilder _boundingBoxForLineEnd:]::openEndArrowSizes;
  }

  else
  {
    v4 = &[CMLineShapeBuilder _boundingBoxForLineEnd:]::arrowSizes;
  }

  width = [endCopy width];
  v6 = [endCopy length];
  if (width >= 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = width;
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
  type = [endCopy type];
  v12 = 0.0;
  if (type == 4)
  {
    v12 = v10 * 0.5;
  }

  if (type == 3)
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

- (void)_renderLineEnd:(id)end atPoint:(CGPoint)point withOrientation:(float)orientation inPath:(CGPath *)path
{
  y = point.y;
  x = point.x;
  endCopy = end;
  if (!endCopy)
  {
    goto LABEL_15;
  }

  [(CMLineShapeBuilder *)self _boundingBoxForLineEnd:endCopy];
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
  CGAffineTransformRotate(&v33, &t1, orientation + 1.57079633);
  v34 = v33;
  t1 = v33;
  CGAffineTransformScale(&v33, &t1, 1.0, -1.0);
  v34 = v33;
  type = [endCopy type];
  v19 = v16;
  v20 = v17;
  v21 = v19 * 0.5;
  if (type <= 2)
  {
    if (type == 1)
    {
      CGAffineTransformMakeTranslation(&m, 0.0, -v20);
      t1 = m;
      v31 = v34;
      CGAffineTransformConcat(&v33, &t1, &v31);
      m = v33;
      CGPathMoveToPoint(path, &m, v21, 0.0);
      v30 = 0.0;
      CGPathAddLineToPoint(path, &m, 0.0, v20);
      v28 = -v21;
      goto LABEL_14;
    }

    if (type != 2)
    {
      goto LABEL_15;
    }

    CGAffineTransformMakeTranslation(&m, 0.0, (v20 / -3.0));
    t1 = m;
    v31 = v34;
    CGAffineTransformConcat(&v33, &t1, &v31);
    m = v33;
    CGPathMoveToPoint(path, &m, v21, 0.0);
    CGPathAddLineToPoint(path, &m, 0.0, v20);
    v28 = 0.0;
    CGPathAddLineToPoint(path, &m, -v21, 0.0);
    v29 = v20 / 3.0;
LABEL_11:
    v30 = v29;
LABEL_14:
    CGPathAddLineToPoint(path, &m, v28, v30);
    CGPathCloseSubpath(path);
    goto LABEL_15;
  }

  switch(type)
  {
    case 3:
      m = v34;
      CGPathMoveToPoint(path, &m, v21, 0.0);
      CGPathAddLineToPoint(path, &m, 0.0, (v20 * 0.5));
      v28 = 0.0;
      CGPathAddLineToPoint(path, &m, -v21, 0.0);
      v29 = -(v20 * 0.5);
      goto LABEL_11;
    case 4:
      m = v34;
      v38.origin.x = (v19 * -0.5);
      v38.origin.y = (v20 * -0.5);
      v38.size.width = v19;
      v38.size.height = v20;
      CGPathAddEllipseInRect(path, &m, v38);
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
      CGPathMoveToPoint(path, &m, 0.0, v20);
      v26 = v21 + -0.5;
      v27 = cosf(v23);
      CGPathAddLineToPoint(path, &m, (v26 + (v27 * 0.5)), ((v24 * 0.5) + 0.5));
      CGPathAddLineToPoint(path, &m, 0.0, v25);
      CGPathAddLineToPoint(path, &m, -(v26 + (v27 * -0.5)), ((v24 * -0.5) + 0.5));
      CGPathCloseSubpath(path);
      break;
  }

LABEL_15:
}

@end