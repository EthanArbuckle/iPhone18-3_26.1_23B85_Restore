@interface HKStackedBarSeries
- (BOOL)shouldRoundBottomCorners;
- (HKStackedBarSeries)init;
- (NSArray)inactiveFillStyles;
- (NSArray)selectedFillStyles;
- (NSArray)unselectedFillStyles;
- (NSIndexSet)unseparatedSegmentIndices;
- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis;
- (void)_drawLevels:(id)levels withFillStyles:(id)styles strokeStyle:(id)style axisRect:(CGRect)rect context:(CGContext *)context;
- (void)_strokeSeparatorIfNecessaryAboveSegment:(id)segment belowSegment:(id)belowSegment strokeStyle:(id)style context:(CGContext *)context;
- (void)drawWithBlockCoordinates:(id)coordinates visibleBarCount:(int64_t)count pointTransform:(CGAffineTransform *)transform context:(CGContext *)context axisRect:(CGRect)rect seriesRenderingDelegate:(id)delegate;
- (void)setInactiveFillStyles:(id)styles;
- (void)setSelectedFillStyles:(id)styles;
- (void)setShouldRoundBottomCorners:(BOOL)corners;
- (void)setUnselectedFillStyles:(id)styles;
- (void)setUnseparatedSegmentIndices:(id)indices;
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
  seriesMutableStateLock = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_selectedFillStylesStorage;
  seriesMutableStateLock2 = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setSelectedFillStyles:(id)styles
{
  stylesCopy = styles;
  seriesMutableStateLock = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v6 = [stylesCopy copy];
  selectedFillStylesStorage = self->_selectedFillStylesStorage;
  self->_selectedFillStylesStorage = v6;

  seriesMutableStateLock2 = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (NSArray)unselectedFillStyles
{
  seriesMutableStateLock = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_unselectedFillStylesStorage;
  seriesMutableStateLock2 = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setUnselectedFillStyles:(id)styles
{
  stylesCopy = styles;
  seriesMutableStateLock = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v6 = [stylesCopy copy];
  unselectedFillStylesStorage = self->_unselectedFillStylesStorage;
  self->_unselectedFillStylesStorage = v6;

  lastObject = [(NSArray *)self->_unselectedFillStylesStorage lastObject];
  seriesMutableStateLock2 = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  [(HKBarSeries *)self setUnselectedFillStyle:lastObject];
}

- (NSArray)inactiveFillStyles
{
  seriesMutableStateLock = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_inactiveFillStylesStorage;
  seriesMutableStateLock2 = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setInactiveFillStyles:(id)styles
{
  stylesCopy = styles;
  seriesMutableStateLock = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v6 = [stylesCopy copy];
  inactiveFillStylesStorage = self->_inactiveFillStylesStorage;
  self->_inactiveFillStylesStorage = v6;

  seriesMutableStateLock2 = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (BOOL)shouldRoundBottomCorners
{
  seriesMutableStateLock = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  LOBYTE(seriesMutableStateLock) = self->_shouldRoundBottomCornersStorage;
  seriesMutableStateLock2 = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return seriesMutableStateLock;
}

- (void)setShouldRoundBottomCorners:(BOOL)corners
{
  seriesMutableStateLock = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  self->_shouldRoundBottomCornersStorage = corners;
  seriesMutableStateLock2 = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (NSIndexSet)unseparatedSegmentIndices
{
  seriesMutableStateLock = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_unseparatedSegmentIndicesStorage;
  seriesMutableStateLock2 = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setUnseparatedSegmentIndices:(id)indices
{
  indicesCopy = indices;
  seriesMutableStateLock = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v6 = [indicesCopy copy];
  unseparatedSegmentIndicesStorage = self->_unseparatedSegmentIndicesStorage;
  self->_unseparatedSegmentIndicesStorage = v6;

  seriesMutableStateLock2 = [(HKStackedBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis
{
  v57 = *MEMORY[0x1E69E9840];
  axisCopy = axis;
  yAxisCopy = yAxis;
  chartPoints = [block chartPoints];
  if (!chartPoints)
  {
    [HKStackedBarSeries coordinatesForBlock:a2 blockPath:self xAxis:? yAxis:?];
  }

  v39 = axisCopy;
  transform = [axisCopy transform];
  v38 = yAxisCopy;
  transform2 = [yAxisCopy transform];
  array = [MEMORY[0x1E695DF70] array];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = chartPoints;
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
        xValueAsGenericType = [v15 xValueAsGenericType];
        [transform coordinateForValue:xValueAsGenericType];
        v18 = v17;

        [transform2 coordinateForValue:&unk_1F4382830];
        v20 = v19;
        allYValues = [v15 allYValues];
        array2 = [MEMORY[0x1E695DF70] array];
        v23 = [MEMORY[0x1E696B098] valueWithCGPoint:{v18, v20}];
        [array2 addObject:v23];

        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v24 = allYValues;
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

              [transform2 coordinateForValue:*(*(&v47 + 1) + 8 * j)];
              v30 = [MEMORY[0x1E696B098] valueWithCGPoint:{v18, v29}];
              [array2 addObject:v30];
            }

            v26 = [v24 countByEnumeratingWithState:&v47 objects:v55 count:16];
          }

          while (v26);
        }

        v31 = [HKStackedBarCoordinate alloc];
        userInfo = [v15 userInfo];
        v33 = [(HKStackedBarCoordinate *)v31 initWithStackPoints:array2 userInfo:userInfo];

        [array addObject:v33];
      }

      v44 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v44);
  }

  v45 = *v37;
  v46 = *(v37 + 2);
  v34 = [HKGraphSeriesBlockCoordinateList coordinateListWithCoordinates:array blockPath:&v45];

  return v34;
}

- (void)drawWithBlockCoordinates:(id)coordinates visibleBarCount:(int64_t)count pointTransform:(CGAffineTransform *)transform context:(CGContext *)context axisRect:(CGRect)rect seriesRenderingDelegate:(id)delegate
{
  height = rect.size.height;
  rect = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  delegateCopy = delegate;
  coordinatesCopy = coordinates;
  if ([delegateCopy seriesDrawingDuringTiling] && (-[HKBarSeries tiledStrokeStyle](self, "tiledStrokeStyle"), (v18 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v19 = v18;
    tiledStrokeStyle = [(HKBarSeries *)self tiledStrokeStyle];
  }

  else
  {
    tiledStrokeStyle = [(HKBarSeries *)self unselectedStrokeStyle];
  }

  unselectedStrokeStyle = [(HKBarSeries *)self unselectedStrokeStyle];
  [unselectedStrokeStyle lineWidth];
  v23 = v22;

  selectedStrokeStyle = [(HKBarSeries *)self selectedStrokeStyle];
  [selectedStrokeStyle lineWidth];
  v26 = v25;

  if (v26 < v23)
  {
    v26 = v23;
  }

  [delegateCopy screenRectForSeries:self];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  [(HKBarSeries *)self barWidthForVisibleBarCount:count axisRect:v28 minimumSpacing:v30, v32, v34, v26];
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
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
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
  v42 = array;
  v54 = v42;
  v43 = array2;
  v60 = v65;
  v61 = v66;
  v62 = v67;
  v63 = v68;
  v64 = v36;
  v55 = v43;
  selfCopy = self;
  v44 = *&transform->c;
  v52[0] = *&transform->a;
  v52[1] = v44;
  v52[2] = *&transform->tx;
  [coordinatesCopy enumerateCoordinatesWithTransform:v52 roundToViewScale:1 block:v53];

  if ([(HKGraphSeries *)self allowsSelection])
  {
    [(HKStackedBarSeries *)self unselectedFillStyles];
  }

  else
  {
    [(HKStackedBarSeries *)self inactiveFillStyles];
  }
  v45 = ;
  [(HKStackedBarSeries *)self _drawLevels:v42 withFillStyles:v45 strokeStyle:tiledStrokeStyle axisRect:context context:x, y, rect, height];
  selectedFillStyles = [(HKStackedBarSeries *)self selectedFillStyles];
  unselectedFillStyles = selectedFillStyles;
  if (!selectedFillStyles)
  {
    unselectedFillStyles = [(HKStackedBarSeries *)self unselectedFillStyles];
  }

  selectedStrokeStyle2 = [(HKBarSeries *)self selectedStrokeStyle];
  v49 = selectedStrokeStyle2;
  if (selectedStrokeStyle2)
  {
    v50 = selectedStrokeStyle2;
  }

  else
  {
    v50 = tiledStrokeStyle;
  }

  [(HKStackedBarSeries *)self _drawLevels:v43 withFillStyles:unselectedFillStyles strokeStyle:v50 axisRect:context context:x, y, rect, height];

  if (!selectedFillStyles)
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

- (void)_drawLevels:(id)levels withFillStyles:(id)styles strokeStyle:(id)style axisRect:(CGRect)rect context:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  levelsCopy = levels;
  stylesCopy = styles;
  styleCopy = style;
  v17 = [levelsCopy count];
  v18 = v17 - 1;
  if (v17 - 1 >= 0)
  {
    v19 = 0x1E81B2000uLL;
    v49 = stylesCopy;
    selfCopy = self;
    do
    {
      v52 = v17;
      v20 = [levelsCopy objectAtIndexedSubscript:{v18, v49}];
      v50 = v18;
      if (v18 >= [stylesCopy count])
      {
        v54 = 0;
      }

      else
      {
        v54 = [stylesCopy objectAtIndexedSubscript:v18];
      }

      segments = [v20 segments];
      v22 = [segments count];

      if (v22)
      {
        v23 = 0;
        do
        {
          segments2 = [v20 segments];
          v25 = [segments2 objectAtIndexedSubscript:v23];

          v26 = *(v19 + 504);
          [v25 rect];
          v28 = v27;
          v30 = v29;
          v32 = v31;
          v34 = v33;
          roundedCorners = [v25 roundedCorners];
          [(HKBarSeries *)self cornerRadii];
          v38 = [v26 barSeriesRoundedRect:roundedCorners byRoundingCorners:v28 cornerRadii:{v30, v32, v34, v36, v37}];
          if (([v38 isEmpty] & 1) == 0)
          {
            if (styleCopy)
            {
              if (v52 >= [levelsCopy count])
              {
                v44 = 0;
              }

              else
              {
                v39 = [levelsCopy objectAtIndexedSubscript:?];
                [v39 segments];
                v40 = v19;
                v41 = styleCopy;
                v43 = v42 = context;
                v44 = [v43 objectAtIndexedSubscript:v23];

                context = v42;
                styleCopy = v41;
                v19 = v40;
                self = selfCopy;
              }

              [(HKStackedBarSeries *)self _strokeSeparatorIfNecessaryAboveSegment:v25 belowSegment:v44 strokeStyle:styleCopy context:context];
            }

            if (v54)
            {
              cGPath = [v38 CGPath];
              [(HKGraphSeries *)self alpha];
              [v54 renderPath:cGPath context:context axisRect:x alpha:{y, width, height, v46}];
            }
          }

          ++v23;
          segments3 = [v20 segments];
          v48 = [segments3 count];
        }

        while (v23 < v48);
      }

      stylesCopy = v49;
      v18 = v50 - 1;
      v17 = v50;
    }

    while (v50 > 0);
  }
}

- (void)_strokeSeparatorIfNecessaryAboveSegment:(id)segment belowSegment:(id)belowSegment strokeStyle:(id)style context:(CGContext *)context
{
  segmentCopy = segment;
  belowSegmentCopy = belowSegment;
  styleCopy = style;
  shouldSeparateFromAdjacentSegments = [segmentCopy shouldSeparateFromAdjacentSegments];
  if (belowSegmentCopy && shouldSeparateFromAdjacentSegments && [belowSegmentCopy shouldSeparateFromAdjacentSegments])
  {
    bezierPath = [MEMORY[0x1E69DC728] bezierPath];
    [segmentCopy rect];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [styleCopy lineWidth];
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
    [bezierPath moveToPoint:{v24, CGRectGetMinY(v29)}];
    v30.origin.x = v14;
    v30.origin.y = v16;
    v30.size.width = v18;
    v30.size.height = v20;
    v25 = v23 + CGRectGetMaxX(v30);
    v31.origin.x = v14;
    v31.origin.y = v16;
    v31.size.width = v18;
    v31.size.height = v20;
    [bezierPath addLineToPoint:{v25, CGRectGetMinY(v31)}];
    if (([bezierPath isEmpty] & 1) == 0)
    {
      CGContextSaveGState(context);
      [styleCopy applyToContext:context];
      CGContextAddPath(context, [bezierPath CGPath]);
      CGContextStrokePath(context);
      CGContextRestoreGState(context);
    }
  }
}

- (void)coordinatesForBlock:(uint64_t)a1 blockPath:(uint64_t)a2 xAxis:yAxis:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKStackedBarSeries.m" lineNumber:212 description:{@"Invalid parameter not satisfying: %@", @"points != nil"}];
}

@end