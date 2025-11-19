@interface CAMZoomPoint
+ (BOOL)_canExtendFromCustomLens:(int64_t)a3 toLens:(int64_t)a4 withIntermediateLens:(int64_t *)a5;
+ (id)displayZoomFactorsFromZoomPoints:(id)a3;
+ (id)significantIndexesInZoomPoints:(id)a3;
+ (id)zoomFactorsFromZoomPoints:(id)a3;
+ (id)zoomPointWithCustomLens:(int64_t)a3 baseZoomPoint:(id)a4;
+ (id)zoomPointWithFactor:(double)a3 displayed:(double)a4;
+ (id)zoomPointsWithFactors:(id)a3 displayZoomFactors:(id)a4 customLensGroup:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToZoomPoint:(id)a3;
- (CAMZoomPoint)baseZoomPoint;
- (CAMZoomPoint)fundamentalZoomPoint;
- (NSArray)allZoomPoints;
- (double)displayFocalLength;
- (id)description;
@end

@implementation CAMZoomPoint

+ (id)zoomPointWithFactor:(double)a3 displayed:(double)a4
{
  v6 = objc_alloc_init(a1);
  v6[4] = 0.0;
  v6[2] = a3;
  v6[3] = a4;

  return v6;
}

+ (BOOL)_canExtendFromCustomLens:(int64_t)a3 toLens:(int64_t)a4 withIntermediateLens:(int64_t *)a5
{
  v8 = +[CAMCaptureCapabilities capabilities];
  v9 = [v8 effectiveFocalLengthForCustomLens:a3];
  v10 = [v8 effectiveFocalLengthForCustomLens:a4];
  v11 = [v8 baseFocalLengthForCustomLens:0];
  v12 = [v8 effectiveFocalLengthForCustomLens:0];
  if (v11 == v9 && v12 == v10)
  {
    v16 = 0;
    v20 = 1;
    if (!a5)
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
  if (a5)
  {
LABEL_17:
    *a5 = v16;
  }

LABEL_18:

  return v20;
}

+ (id)zoomPointWithCustomLens:(int64_t)a3 baseZoomPoint:(id)a4
{
  v7 = a4;
  v19 = 0;
  v8 = +[CAMCaptureCapabilities capabilities];
  v9 = [a1 _canExtendFromCustomLens:objc_msgSend(v7 toLens:"customLens") withIntermediateLens:{a3, &v19}];
  v10 = 0;
  if (v9)
  {
    v10 = objc_alloc_init(a1);
    *(v10 + 4) = v19;
    objc_storeStrong(v10 + 1, a4);
    if (v19 > 5)
    {
      v11 = NAN;
    }

    else
    {
      v11 = dbl_1A3A68118[v19] / dbl_1A3A680E8[v19];
    }

    [v7 displayZoomFactor];
    [v8 zoomFactorForCustomLensZoomFactor:v12 * v11];
    *(v10 + 3) = round(v13 * 10.0) / 10.0;
    [v7 zoomFactor];
    v15 = v11 * v14;
    v16 = +[CAMCaptureCapabilities capabilities];
    [v16 zoomFactorForCustomLensZoomFactor:v15];
    *(v10 + 2) = v17;
  }

  return v10;
}

+ (id)zoomPointsWithFactors:(id)a3 displayZoomFactors:(id)a4 customLensGroup:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v33 = a4;
  v32 = a5;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  if ([v7 count])
  {
    v9 = 0;
    v31 = v7;
    do
    {
      v10 = [v7 objectAtIndexedSubscript:{v9, v31}];
      [v10 doubleValue];
      v12 = v11;
      v13 = [v33 objectAtIndexedSubscript:v9];
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
        v22 = v32;
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

              v27 = [*(*(&v35 + 1) + 8 * i) integerValue];
              if (v27)
              {
                v28 = [CAMZoomPoint zoomPointWithCustomLens:v27 baseZoomPoint:v21];
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

        v7 = v31;
        v15 = v34;
      }

      ++v9;
    }

    while (v9 < [v7 count]);
  }

  return v8;
}

+ (id)zoomFactorsFromZoomPoints:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
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

+ (id)displayZoomFactorsFromZoomPoints:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
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

+ (id)significantIndexesInZoomPoints:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v3, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CAMZoomPoint *)self isEqualToZoomPoint:v4];

  return v5;
}

- (BOOL)isEqualToZoomPoint:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  if (v4 == self)
  {
    v16 = 1;
    goto LABEL_12;
  }

  [(CAMZoomPoint *)self zoomFactor];
  v7 = v6;
  [(CAMZoomPoint *)v5 zoomFactor];
  if (v7 == v8 && ([(CAMZoomPoint *)self displayZoomFactor], v10 = v9, [(CAMZoomPoint *)v5 displayZoomFactor], v10 == v11) && (v12 = [(CAMZoomPoint *)self customLens], v12 == [(CAMZoomPoint *)v5 customLens]))
  {
    v13 = [(CAMZoomPoint *)self baseZoomPoint];
    if (v13 == self)
    {
      v16 = 1;
    }

    else
    {
      v14 = [(CAMZoomPoint *)self baseZoomPoint];
      v15 = [(CAMZoomPoint *)v5 baseZoomPoint];
      v16 = [v14 isEqualToZoomPoint:v15];
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
    v2 = [(CAMZoomPoint *)self->_baseZoomPoint fundamentalZoomPoint];
  }

  else
  {
    v2 = self;
  }

  return v2;
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
    v4 = [(CAMZoomPoint *)self customLens];
    v5 = +[CAMCaptureCapabilities capabilities];
    v6 = [v5 baseFocalLengthForCustomLens:v4];
    v7 = [v5 effectiveFocalLengthForCustomLens:v4];
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
      v9 = [v3 backSuperWideFocalLengthDisplayValue];
    }

    else
    {
      [(CAMZoomPoint *)self displayZoomFactor];
      v11 = v10;
      [v3 wideDisplayZoomFactor];
      if (v11 == v12)
      {
        v9 = [v3 backWideFocalLengthDisplayValue];
      }

      else
      {
        [(CAMZoomPoint *)self displayZoomFactor];
        v14 = v13;
        [v3 quadraWideDisplayZoomFactor];
        if (v14 == v15)
        {
          v9 = [v3 backQuadraWideFocalLengthDisplayValue];
        }

        else
        {
          [(CAMZoomPoint *)self displayZoomFactor];
          v17 = v16;
          [v3 telephotoDisplayZoomFactor];
          if (v17 == v18)
          {
            v9 = [v3 backTelephotoFocalLengthDisplayValue];
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

            v9 = [v3 backQuadraTeleFocalLengthDisplayValue];
          }
        }
      }
    }

    v5 = v9;
  }

LABEL_15:

  return v5;
}

@end