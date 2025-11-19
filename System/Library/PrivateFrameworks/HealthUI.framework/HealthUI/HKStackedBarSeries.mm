@interface HKStackedBarSeries
- (BOOL)shouldRoundBottomCorners;
- (HKStackedBarSeries)init;
- (NSArray)inactiveFillStyles;
- (NSArray)selectedFillStyles;
- (NSArray)unselectedFillStyles;
- (NSIndexSet)unseparatedSegmentIndices;
- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6;
- (void)_drawLevels:(id)a3 withFillStyles:(id)a4 strokeStyle:(id)a5 axisRect:(CGRect)a6 context:(CGContext *)a7;
- (void)_strokeSeparatorIfNecessaryAboveSegment:(id)a3 belowSegment:(id)a4 strokeStyle:(id)a5 context:(CGContext *)a6;
- (void)drawWithBlockCoordinates:(id)a3 visibleBarCount:(int64_t)a4 pointTransform:(CGAffineTransform *)a5 context:(CGContext *)a6 axisRect:(CGRect)a7 seriesRenderingDelegate:(id)a8;
- (void)setInactiveFillStyles:(id)a3;
- (void)setSelectedFillStyles:(id)a3;
- (void)setShouldRoundBottomCorners:(BOOL)a3;
- (void)setUnselectedFillStyles:(id)a3;
- (void)setUnseparatedSegmentIndices:(id)a3;
@end

@implementation HKStackedBarSeries

- (HKStackedBarSeries)init
{
  v12.receiver = self;
  v12.super_class = HKStackedBarSeries;
  v2 = [(HKBarSeries *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    seriesMutableStateLock = v2->_seriesMutableStateLock;
    v2->_seriesMutableStateLock = v3;

    [(NSLock *)v2->_seriesMutableStateLock setName:@"HKStackedBarSeriesLock"];
    selectedFillStylesStorage = v2->_selectedFillStylesStorage;
    v6 = MEMORY[0x1E695E0F0];
    v2->_selectedFillStylesStorage = MEMORY[0x1E695E0F0];

    unselectedFillStylesStorage = v2->_unselectedFillStylesStorage;
    v2->_unselectedFillStylesStorage = v6;

    inactiveFillStylesStorage = v2->_inactiveFillStylesStorage;
    v2->_inactiveFillStylesStorage = v6;

    v2->_shouldRoundBottomCornersStorage = 0;
    v9 = objc_alloc_init(MEMORY[0x1E696AC90]);
    unseparatedSegmentIndicesStorage = v2->_unseparatedSegmentIndicesStorage;
    v2->_unseparatedSegmentIndicesStorage = v9;
  }

  return v2;
}

- (NSArray)selectedFillStyles
{
  v3 = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_selectedFillStylesStorage;
  v5 = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setSelectedFillStyles:(id)a3
{
  v4 = a3;
  v5 = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [v5 lock];

  v6 = [v4 copy];
  selectedFillStylesStorage = self->_selectedFillStylesStorage;
  self->_selectedFillStylesStorage = v6;

  v8 = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [v8 unlock];
}

- (NSArray)unselectedFillStyles
{
  v3 = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_unselectedFillStylesStorage;
  v5 = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setUnselectedFillStyles:(id)a3
{
  v4 = a3;
  v5 = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [v5 lock];

  v6 = [v4 copy];
  unselectedFillStylesStorage = self->_unselectedFillStylesStorage;
  self->_unselectedFillStylesStorage = v6;

  v9 = [(NSArray *)self->_unselectedFillStylesStorage lastObject];
  v8 = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [v8 unlock];

  [(HKBarSeries *)self setUnselectedFillStyle:v9];
}

- (NSArray)inactiveFillStyles
{
  v3 = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_inactiveFillStylesStorage;
  v5 = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setInactiveFillStyles:(id)a3
{
  v4 = a3;
  v5 = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [v5 lock];

  v6 = [v4 copy];
  inactiveFillStylesStorage = self->_inactiveFillStylesStorage;
  self->_inactiveFillStylesStorage = v6;

  v8 = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [v8 unlock];
}

- (BOOL)shouldRoundBottomCorners
{
  v3 = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [v3 lock];

  LOBYTE(v3) = self->_shouldRoundBottomCornersStorage;
  v4 = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [v4 unlock];

  return v3;
}

- (void)setShouldRoundBottomCorners:(BOOL)a3
{
  v5 = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [v5 lock];

  self->_shouldRoundBottomCornersStorage = a3;
  v6 = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [v6 unlock];
}

- (NSIndexSet)unseparatedSegmentIndices
{
  v3 = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_unseparatedSegmentIndicesStorage;
  v5 = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setUnseparatedSegmentIndices:(id)a3
{
  v4 = a3;
  v5 = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [v5 lock];

  v6 = [v4 copy];
  unseparatedSegmentIndicesStorage = self->_unseparatedSegmentIndicesStorage;
  self->_unseparatedSegmentIndicesStorage = v6;

  v8 = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [v8 unlock];
}

- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6
{
  v57 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v12 = [a3 chartPoints];
  if (!v12)
  {
    [HKStackedBarSeries coordinatesForBlock:a2 blockPath:self xAxis:? yAxis:?];
  }

  v39 = v10;
  v43 = [v10 transform];
  v38 = v11;
  v13 = [v11 transform];
  v42 = [MEMORY[0x1E695DF70] array];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v12;
  v44 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v44)
  {
    v41 = *v52;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v52 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v51 + 1) + 8 * i);
        v16 = [v15 xValueAsGenericType];
        [v43 coordinateForValue:v16];
        v18 = v17;

        [v13 coordinateForValue:&unk_1F4382830];
        v20 = v19;
        v21 = [v15 allYValues];
        v22 = [MEMORY[0x1E695DF70] array];
        v23 = [MEMORY[0x1E696B098] valueWithCGPoint:{v18, v20}];
        [v22 addObject:v23];

        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v24 = v21;
        v25 = [v24 countByEnumeratingWithState:&v47 objects:v55 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v48;
          do
          {
            for (j = 0; j != v26; ++j)
            {
              if (*v48 != v27)
              {
                objc_enumerationMutation(v24);
              }

              [v13 coordinateForValue:*(*(&v47 + 1) + 8 * j)];
              v30 = [MEMORY[0x1E696B098] valueWithCGPoint:{v18, v29}];
              [v22 addObject:v30];
            }

            v26 = [v24 countByEnumeratingWithState:&v47 objects:v55 count:16];
          }

          while (v26);
        }

        v31 = [HKStackedBarCoordinate alloc];
        v32 = [v15 userInfo];
        v33 = [(HKStackedBarCoordinate *)v31 initWithStackPoints:v22 userInfo:v32];

        [v42 addObject:v33];
      }

      v44 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v44);
  }

  v45 = *v37;
  v46 = *(v37 + 2);
  v34 = [HKGraphSeriesBlockCoordinateList coordinateListWithCoordinates:v42 blockPath:&v45];

  return v34;
}

- (void)drawWithBlockCoordinates:(id)a3 visibleBarCount:(int64_t)a4 pointTransform:(CGAffineTransform *)a5 context:(CGContext *)a6 axisRect:(CGRect)a7 seriesRenderingDelegate:(id)a8
{
  height = a7.size.height;
  rect = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v16 = a8;
  v17 = a3;
  if ([v16 seriesDrawingDuringTiling] && (-[HKBarSeries tiledStrokeStyle](self, "tiledStrokeStyle"), (v18 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v19 = v18;
    v20 = [(HKBarSeries *)self tiledStrokeStyle];
  }

  else
  {
    v20 = [(HKBarSeries *)self unselectedStrokeStyle];
  }

  v21 = [(HKBarSeries *)self unselectedStrokeStyle];
  [v21 lineWidth];
  v23 = v22;

  v24 = [(HKBarSeries *)self selectedStrokeStyle];
  [v24 lineWidth];
  v26 = v25;

  if (v26 < v23)
  {
    v26 = v23;
  }

  [v16 screenRectForSeries:self];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  [(HKBarSeries *)self barWidthForVisibleBarCount:a4 axisRect:v28 minimumSpacing:v30, v32, v34, v26];
  v36 = v35;
  v37 = v26 + v35;
  v69.origin.x = x;
  v69.origin.y = y;
  v69.size.width = rect;
  v69.size.height = height;
  MaxX = CGRectGetMaxX(v69);
  v70.origin.x = x;
  v70.origin.y = y;
  v70.size.width = rect;
  v70.size.height = height;
  MinX = CGRectGetMinX(v70);
  v40 = [MEMORY[0x1E695DF70] array];
  v41 = [MEMORY[0x1E695DF70] array];
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  [(HKGraphSeries *)self selectedPathRange];
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __119__HKStackedBarSeries_drawWithBlockCoordinates_visibleBarCount_pointTransform_context_axisRect_seriesRenderingDelegate___block_invoke;
  v53[3] = &unk_1E81B7D78;
  v57 = MinX;
  v58 = v37;
  v59 = MaxX;
  v42 = v40;
  v54 = v42;
  v43 = v41;
  v60 = v65;
  v61 = v66;
  v62 = v67;
  v63 = v68;
  v64 = v36;
  v55 = v43;
  v56 = self;
  v44 = *&a5->c;
  v52[0] = *&a5->a;
  v52[1] = v44;
  v52[2] = *&a5->tx;
  [v17 enumerateCoordinatesWithTransform:v52 roundToViewScale:1 block:v53];

  if ([(HKGraphSeries *)self allowsSelection])
  {
    [(HKStackedBarSeries *)self unselectedFillStyles];
  }

  else
  {
    [(HKStackedBarSeries *)self inactiveFillStyles];
  }
  v45 = ;
  [(HKStackedBarSeries *)self _drawLevels:v42 withFillStyles:v45 strokeStyle:v20 axisRect:a6 context:x, y, rect, height];
  v46 = [(HKStackedBarSeries *)self selectedFillStyles];
  v47 = v46;
  if (!v46)
  {
    v47 = [(HKStackedBarSeries *)self unselectedFillStyles];
  }

  v48 = [(HKBarSeries *)self selectedStrokeStyle];
  v49 = v48;
  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = v20;
  }

  [(HKStackedBarSeries *)self _drawLevels:v43 withFillStyles:v47 strokeStyle:v50 axisRect:a6 context:x, y, rect, height];

  if (!v46)
  {
  }
}

void __119__HKStackedBarSeries_drawWithBlockCoordinates_visibleBarCount_pointTransform_context_axisRect_seriesRenderingDelegate___block_invoke(uint64_t a1, void *a2, _OWORD *a3)
{
  v5 = a2;
  v6 = [v5 stackPoints];
  v7 = [v6 firstObject];
  [v7 CGPointValue];
  v9 = v8;
  v64 = v10;

  v11 = [v5 stackPoints];
  v12 = [v11 lastObject];
  [v12 CGPointValue];
  v62 = v14;
  v63 = v13;

  v15 = *(a1 + 64);
  v65 = v9;
  if (*(a1 + 56) - v9 <= v15 && v9 - *(a1 + 72) <= v15)
  {
    v16 = [v5 stackPoints];
    v17 = [v16 count];

    if (v17 != 1)
    {
      v18 = 0;
      do
      {
        if ([*(a1 + 32) count] <= v18)
        {
          v19 = *(a1 + 32);
          v20 = objc_alloc_init(_HKStackedBarLevel);
          [v19 addObject:v20];

          v21 = *(a1 + 40);
          v22 = objc_alloc_init(_HKStackedBarLevel);
          [v21 addObject:v22];
        }

        v23 = [*(a1 + 32) objectAtIndexedSubscript:v18];
        v24 = a3[1];
        v67[0] = *a3;
        v67[1] = v24;
        v25 = *(a1 + 96);
        v66[0] = *(a1 + 80);
        v66[1] = v25;
        v26 = *(a1 + 128);
        v66[2] = *(a1 + 112);
        v66[3] = v26;
        if (HKGraphSeriesDataPointPathInRangeInclusive(v67, v66))
        {
          v27 = [*(a1 + 40) objectAtIndexedSubscript:v18];

          v23 = v27;
        }

        v28 = [v5 stackPoints];
        v29 = [v28 objectAtIndexedSubscript:v18];
        [v29 CGPointValue];
        v31 = v30;
        v33 = v32;

        v34 = [v5 stackPoints];
        v35 = v18 + 1;
        v36 = [v34 objectAtIndexedSubscript:v18 + 1];
        [v36 CGPointValue];
        v38 = v37;
        v40 = v39;

        if (v38 != v65 || v40 != v64)
        {
          if (v31 - v38 >= 0.0)
          {
            v41 = v31 - v38;
          }

          else
          {
            v41 = -(v31 - v38);
          }

          if (v33 - v40 >= 0.0)
          {
            v42 = v33 - v40;
          }

          else
          {
            v42 = -(v33 - v40);
          }

          v43 = v38;
          v44 = v40;
          v68 = CGRectStandardize(*(&v41 - 2));
          v69 = CGRectOffset(v68, *(a1 + 144) * -0.5, 0.0);
          x = v69.origin.x;
          y = v69.origin.y;
          height = v69.size.height;
          v48 = *(a1 + 144) + v69.size.width;
          v49 = v38 - v63;
          if (v38 - v63 < 0.0)
          {
            v49 = -(v38 - v63);
          }

          v50 = v40 - v62;
          if (v40 - v62 < 0.0)
          {
            v50 = -(v40 - v62);
          }

          v51 = 3;
          if (v50 > 0.00000011920929)
          {
            v51 = 0;
          }

          if (v49 <= 0.00000011920929)
          {
            v52 = v51;
          }

          else
          {
            v52 = 0;
          }

          v53 = [*(a1 + 48) shouldRoundBottomCorners];
          v54 = v31 - v65;
          if (v31 - v65 < 0.0)
          {
            v54 = -(v31 - v65);
          }

          v55 = v33 - v64;
          if (v33 - v64 < 0.0)
          {
            v55 = -(v33 - v64);
          }

          v56 = v52 | 0xC;
          if (v55 > 0.00000011920929)
          {
            v56 = v52;
          }

          if (v54 > 0.00000011920929)
          {
            v56 = v52;
          }

          if (v53)
          {
            v52 = v56;
          }

          v57 = objc_alloc_init(_HKStackedBarSegment);
          [(_HKStackedBarSegment *)v57 setRect:x, y, v48, height];
          [(_HKStackedBarSegment *)v57 setRoundedCorners:v52];
          v58 = [*(a1 + 48) unseparatedSegmentIndices];
          -[_HKStackedBarSegment setShouldSeparateFromAdjacentSegments:](v57, "setShouldSeparateFromAdjacentSegments:", [v58 containsIndex:v18] ^ 1);

          v59 = [v23 segments];
          [v59 addObject:v57];
        }

        v60 = [v5 stackPoints];
        v61 = [v60 count] - 1;

        v18 = v35;
      }

      while (v35 < v61);
    }
  }
}

- (void)_drawLevels:(id)a3 withFillStyles:(id)a4 strokeStyle:(id)a5 axisRect:(CGRect)a6 context:(CGContext *)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v53 = a3;
  v15 = a4;
  v16 = a5;
  v17 = [v53 count];
  v18 = v17 - 1;
  if (v17 - 1 >= 0)
  {
    v19 = 0x1E81B2000uLL;
    v49 = v15;
    v51 = self;
    do
    {
      v52 = v17;
      v20 = [v53 objectAtIndexedSubscript:{v18, v49}];
      v50 = v18;
      if (v18 >= [v15 count])
      {
        v54 = 0;
      }

      else
      {
        v54 = [v15 objectAtIndexedSubscript:v18];
      }

      v21 = [v20 segments];
      v22 = [v21 count];

      if (v22)
      {
        v23 = 0;
        do
        {
          v24 = [v20 segments];
          v25 = [v24 objectAtIndexedSubscript:v23];

          v26 = *(v19 + 504);
          [v25 rect];
          v28 = v27;
          v30 = v29;
          v32 = v31;
          v34 = v33;
          v35 = [v25 roundedCorners];
          [(HKBarSeries *)self cornerRadii];
          v38 = [v26 barSeriesRoundedRect:v35 byRoundingCorners:v28 cornerRadii:{v30, v32, v34, v36, v37}];
          if (([v38 isEmpty] & 1) == 0)
          {
            if (v16)
            {
              if (v52 >= [v53 count])
              {
                v44 = 0;
              }

              else
              {
                v39 = [v53 objectAtIndexedSubscript:?];
                [v39 segments];
                v40 = v19;
                v41 = v16;
                v43 = v42 = a7;
                v44 = [v43 objectAtIndexedSubscript:v23];

                a7 = v42;
                v16 = v41;
                v19 = v40;
                self = v51;
              }

              [(HKStackedBarSeries *)self _strokeSeparatorIfNecessaryAboveSegment:v25 belowSegment:v44 strokeStyle:v16 context:a7];
            }

            if (v54)
            {
              v45 = [v38 CGPath];
              [(HKGraphSeries *)self alpha];
              [v54 renderPath:v45 context:a7 axisRect:x alpha:{y, width, height, v46}];
            }
          }

          ++v23;
          v47 = [v20 segments];
          v48 = [v47 count];
        }

        while (v23 < v48);
      }

      v15 = v49;
      v18 = v50 - 1;
      v17 = v50;
    }

    while (v50 > 0);
  }
}

- (void)_strokeSeparatorIfNecessaryAboveSegment:(id)a3 belowSegment:(id)a4 strokeStyle:(id)a5 context:(CGContext *)a6
{
  v26 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v26 shouldSeparateFromAdjacentSegments];
  if (v9 && v11 && [v9 shouldSeparateFromAdjacentSegments])
  {
    v12 = [MEMORY[0x1E69DC728] bezierPath];
    [v26 rect];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [v10 lineWidth];
    v22 = v21;
    v28.origin.x = v14;
    v28.origin.y = v16;
    v28.size.width = v18;
    v28.size.height = v20;
    v23 = v22 * 0.5;
    v24 = CGRectGetMinX(v28) - v22 * 0.5;
    v29.origin.x = v14;
    v29.origin.y = v16;
    v29.size.width = v18;
    v29.size.height = v20;
    [v12 moveToPoint:{v24, CGRectGetMinY(v29)}];
    v30.origin.x = v14;
    v30.origin.y = v16;
    v30.size.width = v18;
    v30.size.height = v20;
    v25 = v23 + CGRectGetMaxX(v30);
    v31.origin.x = v14;
    v31.origin.y = v16;
    v31.size.width = v18;
    v31.size.height = v20;
    [v12 addLineToPoint:{v25, CGRectGetMinY(v31)}];
    if (([v12 isEmpty] & 1) == 0)
    {
      CGContextSaveGState(a6);
      [v10 applyToContext:a6];
      CGContextAddPath(a6, [v12 CGPath]);
      CGContextStrokePath(a6);
      CGContextRestoreGState(a6);
    }
  }
}

- (void)coordinatesForBlock:(uint64_t)a1 blockPath:(uint64_t)a2 xAxis:yAxis:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKStackedBarSeries.m" lineNumber:212 description:{@"Invalid parameter not satisfying: %@", @"points != nil"}];
}

@end