@interface HKPointLabelEngine
- ($637F11F6AA09C3CE9B68EC246BD175A1)_computeRenderingDataForValue:(SEL)a3 transformedPoint:(double)a4 previousSlope:(CGPoint)a5 nextSlope:(int64_t)a6 previousOptions:(int64_t)a7;
- ($637F11F6AA09C3CE9B68EC246BD175A1)currentRenderingData;
- ($637F11F6AA09C3CE9B68EC246BD175A1)previousRenderingData;
- ($637F11F6AA09C3CE9B68EC246BD175A1)renderingData;
- (BOOL)processLastPoint;
- (BOOL)processTransformedPoint:(CGPoint)a3 untransformedPoint:(CGPoint)a4;
- (CGPoint)currentTransformedPoint;
- (CGPoint)currentUntransformedPoint;
- (CGPoint)previousTransformedPoint;
- (CGPoint)previousUntransformedPoint;
- (CGRect)boundingRegion;
- (HKPointLabelEngine)initWithBoundingRegion:(CGRect)a3 isLabelShiftingEnabled:(BOOL)a4 labelSizeBlock:(id)a5;
- (int64_t)_slopeForPoint:(CGPoint)a3 otherPoint:(CGPoint)a4;
- (void)_layoutTransformRectVerticallyForData:(id *)a3 withTransformedPoint:(CGPoint)a4;
- (void)_transformRectIfNeededForData:(id *)a3 withTransformedPoint:(CGPoint)a4;
- (void)setCurrentRenderingData:(id *)a3;
- (void)setPreviousRenderingData:(id *)a3;
@end

@implementation HKPointLabelEngine

- (HKPointLabelEngine)initWithBoundingRegion:(CGRect)a3 isLabelShiftingEnabled:(BOOL)a4 labelSizeBlock:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = HKPointLabelEngine;
  v12 = [(HKPointLabelEngine *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_boundingRegion.origin.x = x;
    v12->_boundingRegion.origin.y = y;
    v12->_boundingRegion.size.width = width;
    v12->_boundingRegion.size.height = height;
    v12->_isLabelShiftingEnabled = a4;
    v14 = _Block_copy(v11);
    sizeForValue = v13->_sizeForValue;
    v13->_sizeForValue = v14;

    v13->_currentUntransformedPoint.y = 0.0;
    *&v13->_currentTransformedPoint.y = 0u;
    *&v13->_previousUntransformedPoint.y = 0u;
    *&v13->_previousTransformedPoint.y = 0u;
    *&v13->_state = 0u;
    v17 = *MEMORY[0x1E695F058];
    v16 = *(MEMORY[0x1E695F058] + 16);
    v13->_previousRenderingData.transformedRect.origin = *MEMORY[0x1E695F058];
    v13->_previousRenderingData.transformedRect.size = v16;
    *&v13->_previousRenderingData.labelValue = 0uLL;
    v13->_currentRenderingData.transformedRect.origin = v17;
    v13->_currentRenderingData.transformedRect.size = v16;
    *&v13->_currentRenderingData.labelValue = 0uLL;
    v13->_lastRenderOverlapped = 0;
  }

  return v13;
}

- (BOOL)processTransformedPoint:(CGPoint)a3 untransformedPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v6 = a3.y;
  v7 = a3.x;
  state = self->_state;
  if (state == 2)
  {
    p_currentTransformedPoint = &self->_currentTransformedPoint;
    v15 = [(HKPointLabelEngine *)self _slopeForPoint:self->_currentTransformedPoint.x otherPoint:self->_currentTransformedPoint.y, self->_previousTransformedPoint.x, self->_previousTransformedPoint.y];
    v16 = [(HKPointLabelEngine *)self _slopeForPoint:p_currentTransformedPoint->x otherPoint:self->_currentTransformedPoint.y, v7, v6];
    if (!self->_lastRenderOverlapped)
    {
      size = self->_currentRenderingData.transformedRect.size;
      self->_previousRenderingData.transformedRect.origin = self->_currentRenderingData.transformedRect.origin;
      self->_previousRenderingData.transformedRect.size = size;
      *&self->_previousRenderingData.labelValue = *&self->_currentRenderingData.labelValue;
    }

    p_y = &self->_currentUntransformedPoint.y;
    [(HKPointLabelEngine *)self _computeRenderingDataForValue:v15 transformedPoint:v16 previousSlope:self->_previousRenderingData.options nextSlope:self->_currentUntransformedPoint.y previousOptions:self->_currentTransformedPoint.x, self->_currentTransformedPoint.y];
    self->_currentRenderingData.transformedRect.origin = v20;
    self->_currentRenderingData.transformedRect.size = v21;
    *&self->_currentRenderingData.labelValue = v22;
    v18 = CGRectIntersectsRect(self->_currentRenderingData.transformedRect, self->_previousRenderingData.transformedRect);
    self->_lastRenderOverlapped = v18;
    v10 = !v18;
    self->_previousTransformedPoint = *p_currentTransformedPoint;
    self->_previousUntransformedPoint = self->_currentUntransformedPoint;
    self->_currentTransformedPoint.x = v7;
    self->_currentTransformedPoint.y = v6;
    self->_currentUntransformedPoint.x = x;
    goto LABEL_9;
  }

  if (state == 1)
  {
    v10 = 1;
    [(HKPointLabelEngine *)self _computeRenderingDataForValue:1 transformedPoint:[(HKPointLabelEngine *)self _slopeForPoint:self->_previousTransformedPoint.x otherPoint:self->_previousTransformedPoint.y previousSlope:a3.x nextSlope:a3.y] previousOptions:1, self->_previousUntransformedPoint.y, self->_previousTransformedPoint.x, self->_previousTransformedPoint.y];
    self->_currentRenderingData.transformedRect.size = v21;
    *&self->_currentRenderingData.labelValue = v22;
    v13 = self->_currentRenderingData.transformedRect.size;
    *&self->_previousRenderingData.labelValue = *&self->_currentRenderingData.labelValue;
    self->_currentRenderingData.transformedRect.origin = v20;
    self->_previousRenderingData.transformedRect.origin = self->_currentRenderingData.transformedRect.origin;
    self->_previousRenderingData.transformedRect.size = v13;
    self->_currentTransformedPoint.x = v7;
    self->_currentTransformedPoint.y = v6;
    self->_currentUntransformedPoint.x = x;
    p_y = &self->_currentUntransformedPoint.y;
LABEL_9:
    v12 = 2;
    goto LABEL_10;
  }

  v10 = 0;
  if (!state)
  {
    self->_previousTransformedPoint = a3;
    p_y = &self->_previousUntransformedPoint.y;
    v12 = 1;
    self->_previousUntransformedPoint.x = a4.x;
LABEL_10:
    *p_y = y;
    self->_state = v12;
  }

  return v10;
}

- (BOOL)processLastPoint
{
  state = self->_state;
  if (state == 2)
  {
    v5 = [(HKPointLabelEngine *)self _slopeForPoint:self->_currentTransformedPoint.x otherPoint:self->_currentTransformedPoint.y, self->_previousTransformedPoint.x, self->_previousTransformedPoint.y];
    if (!self->_lastRenderOverlapped)
    {
      size = self->_currentRenderingData.transformedRect.size;
      self->_previousRenderingData.transformedRect.origin = self->_currentRenderingData.transformedRect.origin;
      self->_previousRenderingData.transformedRect.size = size;
      *&self->_previousRenderingData.labelValue = *&self->_currentRenderingData.labelValue;
    }

    [(HKPointLabelEngine *)self _computeRenderingDataForValue:v5 transformedPoint:1 previousSlope:self->_previousRenderingData.options nextSlope:self->_currentUntransformedPoint.y previousOptions:self->_currentTransformedPoint.x, self->_currentTransformedPoint.y];
    self->_currentRenderingData.transformedRect.origin = v9;
    self->_currentRenderingData.transformedRect.size = v10;
    *&self->_currentRenderingData.labelValue = v11;
    v7 = CGRectIntersectsRect(self->_currentRenderingData.transformedRect, self->_previousRenderingData.transformedRect);
    self->_lastRenderOverlapped = v7;
    return !v7;
  }

  else if (state == 1)
  {
    v4 = 1;
    [(HKPointLabelEngine *)self _computeRenderingDataForValue:1 transformedPoint:1 previousSlope:1 nextSlope:self->_previousUntransformedPoint.y previousOptions:self->_previousTransformedPoint.x, self->_previousTransformedPoint.y];
    self->_currentRenderingData.transformedRect.origin = v9;
    self->_currentRenderingData.transformedRect.size = v10;
    *&self->_currentRenderingData.labelValue = v11;
  }

  else
  {
    return 0;
  }

  return v4;
}

- ($637F11F6AA09C3CE9B68EC246BD175A1)renderingData
{
  origin = self[4].var0.origin;
  retstr->var0.origin = *&self[3].var1;
  retstr->var0.size = origin;
  *&retstr->var1 = self[4].var0.size;
  return self;
}

- (int64_t)_slopeForPoint:(CGPoint)a3 otherPoint:(CGPoint)a4
{
  v4 = vabdd_f64(a3.x, a4.x);
  if (a3.x != 0.0 && a4.x != 0.0)
  {
    v5 = fabs(a3.x);
    v6 = fabs(a4.x);
    if (v5 >= v6)
    {
      v5 = v6;
    }

    if (v4 > v5 / 1.0e10)
    {
      goto LABEL_10;
    }

    return 2 * (a3.y > a4.y);
  }

  if (a3.x == 0.0 && a4.x == 0.0)
  {
    return 2 * (a3.y > a4.y);
  }

LABEL_10:
  v8 = (a3.y - a4.y) / v4;
  v9 = 2;
  if (v8 >= -0.05)
  {
    v9 = 1;
  }

  if (v8 <= 0.05)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

- ($637F11F6AA09C3CE9B68EC246BD175A1)_computeRenderingDataForValue:(SEL)a3 transformedPoint:(double)a4 previousSlope:(CGPoint)a5 nextSlope:(int64_t)a6 previousOptions:(int64_t)a7
{
  y = a5.y;
  x = a5.x;
  retstr->var0.origin = *MEMORY[0x1E695F058];
  retstr->var2 = 0;
  if (a6 == 2)
  {
    if ((a7 - 1) >= 2)
    {
      if (a7)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (a6 == 1)
  {
    if (a7 == 1)
    {
LABEL_13:
      retstr->var2 = a8;
      goto LABEL_14;
    }

    if (a7 != 2)
    {
      goto LABEL_14;
    }

LABEL_10:
    a8 = 1;
    goto LABEL_13;
  }

  if (!a6 && a7 == 2)
  {
LABEL_12:
    a8 |= 2uLL;
    goto LABEL_13;
  }

LABEL_14:
  retstr->var1 = a4;
  retstr->var0.size.width = (*(self->_sizeForValue + 2))();
  retstr->var0.size.height = v12;
  result = [(HKPointLabelEngine *)self _layoutTransformRectVerticallyForData:retstr withTransformedPoint:x, y];
  if (self->_isLabelShiftingEnabled)
  {
    [(HKPointLabelEngine *)self boundingRegion];
    v44.origin.x = v14;
    v44.origin.y = v15;
    v44.size.width = v16;
    v44.size.height = v17;
    v39 = CGRectIntersection(retstr->var0, v44);
    result = CGRectIsNull(v39);
    if ((result & 1) == 0)
    {
      v18 = retstr->var0.origin.x;
      [(HKPointLabelEngine *)self boundingRegion];
      if (v18 < v19)
      {
        [(HKPointLabelEngine *)self boundingRegion];
        retstr->var0.origin.x = v20;
      }

      v21 = retstr->var0.origin.y;
      [(HKPointLabelEngine *)self boundingRegion];
      if (v21 >= v22)
      {
        v23 = retstr->var0.origin.y;
      }

      else
      {
        [(HKPointLabelEngine *)self boundingRegion];
        retstr->var0.origin.y = v23;
      }

      v24 = retstr->var0.origin.x;
      width = retstr->var0.size.width;
      height = retstr->var0.size.height;
      MaxX = CGRectGetMaxX(*(&v23 - 1));
      [(HKPointLabelEngine *)self boundingRegion];
      v28 = CGRectGetMaxX(v40);
      v29 = retstr->var0.origin.x;
      if (MaxX > v28)
      {
        v30 = retstr->var0.origin.y;
        v31 = retstr->var0.size.width;
        v32 = retstr->var0.size.height;
        v33 = CGRectGetMaxX(*&v29);
        [(HKPointLabelEngine *)self boundingRegion];
        v29 = retstr->var0.origin.x - (v33 - CGRectGetMaxX(v41));
        retstr->var0.origin.x = v29;
      }

      v34 = retstr->var0.origin.y;
      v35 = retstr->var0.size.width;
      v36 = retstr->var0.size.height;
      MaxY = CGRectGetMaxY(*&v29);
      [(HKPointLabelEngine *)self boundingRegion];
      if (MaxY > CGRectGetMaxY(v42))
      {
        v38 = CGRectGetMaxY(retstr->var0);
        [(HKPointLabelEngine *)self boundingRegion];
        retstr->var0.origin.y = retstr->var0.origin.y - (v38 - CGRectGetMaxY(v43));
      }
    }
  }

  return result;
}

- (void)_layoutTransformRectVerticallyForData:(id *)a3 withTransformedPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  [HKPointLabelEngine _transformRectIfNeededForData:"_transformRectIfNeededForData:withTransformedPoint:" withTransformedPoint:?];
  if (a3->var2)
  {
    v10 = a3->var0.origin.y;
    [(HKPointLabelEngine *)self boundingRegion];
    if (v10 >= v11)
    {
      return;
    }

    v9 = a3->var2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    MaxY = CGRectGetMaxY(a3->var0);
    [(HKPointLabelEngine *)self boundingRegion];
    if (MaxY <= CGRectGetMaxY(v13))
    {
      return;
    }

    v9 = a3->var2 | 1;
  }

  a3->var2 = v9;

  [(HKPointLabelEngine *)self _transformRectIfNeededForData:a3 withTransformedPoint:x, y];
}

- (void)_transformRectIfNeededForData:(id *)a3 withTransformedPoint:(CGPoint)a4
{
  var2 = a3->var2;
  a3->var0.origin.x = a4.x + a3->var0.size.width * -0.5;
  if (var2)
  {
    v5 = a4.y - *&HKPointLabelEngineVerticalOffset - a3->var0.size.height;
  }

  else
  {
    v5 = a4.y + *&HKPointLabelEngineVerticalOffset;
  }

  a3->var0.origin.y = v5;
}

- (CGRect)boundingRegion
{
  x = self->_boundingRegion.origin.x;
  y = self->_boundingRegion.origin.y;
  width = self->_boundingRegion.size.width;
  height = self->_boundingRegion.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)previousTransformedPoint
{
  x = self->_previousTransformedPoint.x;
  y = self->_previousTransformedPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)previousUntransformedPoint
{
  x = self->_previousUntransformedPoint.x;
  y = self->_previousUntransformedPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)currentTransformedPoint
{
  x = self->_currentTransformedPoint.x;
  y = self->_currentTransformedPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)currentUntransformedPoint
{
  x = self->_currentUntransformedPoint.x;
  y = self->_currentUntransformedPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- ($637F11F6AA09C3CE9B68EC246BD175A1)previousRenderingData
{
  origin = self[3].var0.origin;
  retstr->var0.origin = *&self[2].var1;
  retstr->var0.size = origin;
  *&retstr->var1 = self[3].var0.size;
  return self;
}

- (void)setPreviousRenderingData:(id *)a3
{
  origin = a3->var0.origin;
  v4 = *&a3->var1;
  self->_previousRenderingData.transformedRect.size = a3->var0.size;
  *&self->_previousRenderingData.labelValue = v4;
  self->_previousRenderingData.transformedRect.origin = origin;
}

- ($637F11F6AA09C3CE9B68EC246BD175A1)currentRenderingData
{
  origin = self[4].var0.origin;
  retstr->var0.origin = *&self[3].var1;
  retstr->var0.size = origin;
  *&retstr->var1 = self[4].var0.size;
  return self;
}

- (void)setCurrentRenderingData:(id *)a3
{
  origin = a3->var0.origin;
  v4 = *&a3->var1;
  self->_currentRenderingData.transformedRect.size = a3->var0.size;
  *&self->_currentRenderingData.labelValue = v4;
  self->_currentRenderingData.transformedRect.origin = origin;
}

@end