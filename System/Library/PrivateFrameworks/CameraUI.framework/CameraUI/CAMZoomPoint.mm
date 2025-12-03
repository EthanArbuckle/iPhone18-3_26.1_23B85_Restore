@interface CAMZoomPoint
+ (BOOL)_canExtendFromCustomLens:(int64_t)lens toLens:(int64_t)toLens withIntermediateLens:(int64_t *)intermediateLens;
+ (id)displayZoomFactorsFromZoomPoints:(id)points;
+ (id)significantIndexesInZoomPoints:(id)points;
+ (id)zoomFactorsFromZoomPoints:(id)points;
+ (id)zoomPointWithCustomLens:(int64_t)lens baseZoomPoint:(id)point;
+ (id)zoomPointWithFactor:(double)factor displayed:(double)displayed;
+ (id)zoomPointsWithFactors:(id)factors displayZoomFactors:(id)zoomFactors customLensGroup:(id)group;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToZoomPoint:(id)point;
- (CAMZoomPoint)baseZoomPoint;
- (CAMZoomPoint)fundamentalZoomPoint;
- (NSArray)allZoomPoints;
- (double)displayFocalLength;
- (id)description;
@end

@implementation CAMZoomPoint

+ (id)zoomPointWithFactor:(double)factor displayed:(double)displayed
{
  v6 = objc_alloc_init(self);
  v6[4] = 0.0;
  v6[2] = factor;
  v6[3] = displayed;

  return v6;
}

+ (BOOL)_canExtendFromCustomLens:(int64_t)lens toLens:(int64_t)toLens withIntermediateLens:(int64_t *)intermediateLens
{
  v8 = +[CAMCaptureCapabilities capabilities];
  v9 = [v8 effectiveFocalLengthForCustomLens:lens];
  v10 = [v8 effectiveFocalLengthForCustomLens:toLens];
  v11 = [v8 baseFocalLengthForCustomLens:0];
  v12 = [v8 effectiveFocalLengthForCustomLens:0];
  if (v11 == v9 && v12 == v10)
  {
    v16 = 0;
    v20 = 1;
    if (!intermediateLens)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v14 = 0;
  while (1)
  {
    v15 = v14;
    if (v14 == 5)
    {
      break;
    }

    v16 = CAMCustomLensAllLenses[v14 + 1];
    v17 = [v8 baseFocalLengthForCustomLens:v16];
    v18 = [v8 effectiveFocalLengthForCustomLens:v16];
    v14 = v15 + 1;
    if (v17 == v9 && v18 == v10)
    {
      goto LABEL_16;
    }
  }

  v16 = 0;
LABEL_16:
  v20 = v15 < 5;
  if (intermediateLens)
  {
LABEL_17:
    *intermediateLens = v16;
  }

LABEL_18:

  return v20;
}

+ (id)zoomPointWithCustomLens:(int64_t)lens baseZoomPoint:(id)point
{
  pointCopy = point;
  v19 = 0;
  v8 = +[CAMCaptureCapabilities capabilities];
  v9 = [self _canExtendFromCustomLens:objc_msgSend(pointCopy toLens:"customLens") withIntermediateLens:{lens, &v19}];
  v10 = 0;
  if (v9)
  {
    v10 = objc_alloc_init(self);
    *(v10 + 4) = v19;
    objc_storeStrong(v10 + 1, point);
    if (v19 > 5)
    {
      v11 = NAN;
    }

    else
    {
      v11 = dbl_1A3A68118[v19] / dbl_1A3A680E8[v19];
    }

    [pointCopy displayZoomFactor];
    [v8 zoomFactorForCustomLensZoomFactor:v12 * v11];
    *(v10 + 3) = round(v13 * 10.0) / 10.0;
    [pointCopy zoomFactor];
    v15 = v11 * v14;
    v16 = +[CAMCaptureCapabilities capabilities];
    [v16 zoomFactorForCustomLensZoomFactor:v15];
    *(v10 + 2) = v17;
  }

  return v10;
}

+ (id)zoomPointsWithFactors:(id)factors displayZoomFactors:(id)zoomFactors customLensGroup:(id)group
{
  v40 = *MEMORY[0x1E69E9840];
  factorsCopy = factors;
  zoomFactorsCopy = zoomFactors;
  groupCopy = group;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(factorsCopy, "count")}];
  if ([factorsCopy count])
  {
    v9 = 0;
    v31 = factorsCopy;
    do
    {
      v10 = [factorsCopy objectAtIndexedSubscript:{v9, v31}];
      [v10 doubleValue];
      v12 = v11;
      v13 = [zoomFactorsCopy objectAtIndexedSubscript:v9];
      [v13 doubleValue];
      v15 = [CAMZoomPoint zoomPointWithFactor:v12 displayed:v14];

      [v8 addObject:v15];
      [v15 displayZoomFactor];
      v17 = v16;
      v18 = +[CAMCaptureCapabilities capabilities];
      [v18 wideDisplayZoomFactor];
      v20 = v19;

      if (v17 == v20)
      {
        v34 = v15;
        v21 = v15;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v22 = groupCopy;
        v23 = [v22 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v36;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v36 != v25)
              {
                objc_enumerationMutation(v22);
              }

              integerValue = [*(*(&v35 + 1) + 8 * i) integerValue];
              if (integerValue)
              {
                v28 = [CAMZoomPoint zoomPointWithCustomLens:integerValue baseZoomPoint:v21];
                if (v28)
                {
                  [v8 addObject:v28];
                  v29 = v28;

                  v21 = v29;
                }
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v35 objects:v39 count:16];
          }

          while (v24);
        }

        factorsCopy = v31;
        v15 = v34;
      }

      ++v9;
    }

    while (v9 < [factorsCopy count]);
  }

  return v8;
}

+ (id)zoomFactorsFromZoomPoints:(id)points
{
  v18 = *MEMORY[0x1E69E9840];
  pointsCopy = points;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(pointsCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = pointsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = MEMORY[0x1E696AD98];
        [*(*(&v13 + 1) + 8 * i) zoomFactor];
        v11 = [v10 numberWithDouble:?];
        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)displayZoomFactorsFromZoomPoints:(id)points
{
  v18 = *MEMORY[0x1E69E9840];
  pointsCopy = points;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(pointsCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = pointsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = MEMORY[0x1E696AD98];
        [*(*(&v13 + 1) + 8 * i) displayZoomFactor];
        v11 = [v10 numberWithDouble:?];
        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)significantIndexesInZoomPoints:(id)points
{
  v25 = *MEMORY[0x1E69E9840];
  pointsCopy = points;
  v4 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(pointsCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = pointsCopy;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        if ([v10 isCustomLens])
        {
          v11 = v10;
          v12 = v11;
          v13 = *(v11 + 1);
          if (v13)
          {
            do
            {
              v14 = v13;

              [v4 addObject:v14];
              v13 = v14[1];
              v12 = v14;
            }

            while (v13);
          }

          else
          {
            v14 = v11;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __47__CAMZoomPoint_significantIndexesInZoomPoints___block_invoke;
  v18[3] = &unk_1E76F8A78;
  v19 = v4;
  v15 = v4;
  v16 = [v5 indexesOfObjectsPassingTest:v18];

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CAMZoomPoint *)self isEqualToZoomPoint:equalCopy];

  return v5;
}

- (BOOL)isEqualToZoomPoint:(id)point
{
  pointCopy = point;
  v5 = pointCopy;
  if (!pointCopy)
  {
    goto LABEL_8;
  }

  if (pointCopy == self)
  {
    v16 = 1;
    goto LABEL_12;
  }

  [(CAMZoomPoint *)self zoomFactor];
  v7 = v6;
  [(CAMZoomPoint *)v5 zoomFactor];
  if (v7 == v8 && ([(CAMZoomPoint *)self displayZoomFactor], v10 = v9, [(CAMZoomPoint *)v5 displayZoomFactor], v10 == v11) && (v12 = [(CAMZoomPoint *)self customLens], v12 == [(CAMZoomPoint *)v5 customLens]))
  {
    baseZoomPoint = [(CAMZoomPoint *)self baseZoomPoint];
    if (baseZoomPoint == self)
    {
      v16 = 1;
    }

    else
    {
      baseZoomPoint2 = [(CAMZoomPoint *)self baseZoomPoint];
      baseZoomPoint3 = [(CAMZoomPoint *)v5 baseZoomPoint];
      v16 = [baseZoomPoint2 isEqualToZoomPoint:baseZoomPoint3];
    }
  }

  else
  {
LABEL_8:
    v16 = 0;
  }

LABEL_12:

  return v16;
}

- (CAMZoomPoint)baseZoomPoint
{
  if (self->_baseZoomPoint)
  {
    self = self->_baseZoomPoint;
  }

  return self;
}

- (CAMZoomPoint)fundamentalZoomPoint
{
  if (self->_baseZoomPoint)
  {
    selfCopy = [(CAMZoomPoint *)self->_baseZoomPoint fundamentalZoomPoint];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (NSArray)allZoomPoints
{
  v3 = [MEMORY[0x1E695DF70] arrayWithObject:self];
  v4 = self->_baseZoomPoint;
  if (v4)
  {
    p_isa = &v4->super.isa;
    do
    {
      [v3 addObject:p_isa];
      v6 = p_isa[1];

      p_isa = v6;
    }

    while (v6);
  }

  return v3;
}

- (id)description
{
  if ([(CAMZoomPoint *)self isCustomLens])
  {
    v3 = MEMORY[0x1E696AEC0];
    customLens = [(CAMZoomPoint *)self customLens];
    v5 = +[CAMCaptureCapabilities capabilities];
    v6 = [v5 baseFocalLengthForCustomLens:customLens];
    v7 = [v5 effectiveFocalLengthForCustomLens:customLens];
    if (v6 == v7)
    {
      v8 = @"Base";
    }

    else
    {
      v10 = v7;
      v11 = MEMORY[0x1E696AEC0];
      if (v6 > 3)
      {
        v12 = 0;
      }

      else
      {
        v12 = dword_1A3A68180[v6];
      }

      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%dmm", v12];
      if (v10 > 3)
      {
        v14 = 0;
      }

      else
      {
        v14 = dword_1A3A68180[v10];
      }

      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%dmm", v14];
      v8 = [v11 stringWithFormat:@"%@ as %@", v13, v15];
    }

    v9 = [v3 stringWithFormat:@" %@", v8];
  }

  else
  {
    v9 = &stru_1F1660A30;
  }

  v16 = MEMORY[0x1E696AEC0];
  v17 = objc_opt_class();
  v18 = NSStringFromClass(v17);
  [(CAMZoomPoint *)self zoomFactor];
  v20 = v19;
  [(CAMZoomPoint *)self displayZoomFactor];
  v22 = [v16 stringWithFormat:@"<%@: %p (%.3f, %.1fx)%@>", v18, self, v20, v21, v9];;

  return v22;
}

- (double)displayFocalLength
{
  v3 = +[CAMCaptureCapabilities capabilities];
  if ([(CAMZoomPoint *)self isCustomLens])
  {
    v4 = [v3 effectiveFocalLengthForCustomLens:{-[CAMZoomPoint customLens](self, "customLens")}];
    v5 = 0.0;
    if (v4 < 4)
    {
      v5 = dbl_1A3A68148[v4];
    }
  }

  else
  {
    [(CAMZoomPoint *)self displayZoomFactor];
    v7 = v6;
    [v3 superWideDisplayZoomFactor];
    if (v7 == v8)
    {
      backSuperWideFocalLengthDisplayValue = [v3 backSuperWideFocalLengthDisplayValue];
    }

    else
    {
      [(CAMZoomPoint *)self displayZoomFactor];
      v11 = v10;
      [v3 wideDisplayZoomFactor];
      if (v11 == v12)
      {
        backSuperWideFocalLengthDisplayValue = [v3 backWideFocalLengthDisplayValue];
      }

      else
      {
        [(CAMZoomPoint *)self displayZoomFactor];
        v14 = v13;
        [v3 quadraWideDisplayZoomFactor];
        if (v14 == v15)
        {
          backSuperWideFocalLengthDisplayValue = [v3 backQuadraWideFocalLengthDisplayValue];
        }

        else
        {
          [(CAMZoomPoint *)self displayZoomFactor];
          v17 = v16;
          [v3 telephotoDisplayZoomFactor];
          if (v17 == v18)
          {
            backSuperWideFocalLengthDisplayValue = [v3 backTelephotoFocalLengthDisplayValue];
          }

          else
          {
            [(CAMZoomPoint *)self displayZoomFactor];
            v20 = v19;
            [v3 quadraTeleDisplayZoomFactor];
            if (v20 != v21)
            {
              v5 = 0.0;
              goto LABEL_15;
            }

            backSuperWideFocalLengthDisplayValue = [v3 backQuadraTeleFocalLengthDisplayValue];
          }
        }
      }
    }

    v5 = backSuperWideFocalLengthDisplayValue;
  }

LABEL_15:

  return v5;
}

@end