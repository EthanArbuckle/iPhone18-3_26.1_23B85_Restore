@interface HKSleepDurationSeries
- (BOOL)_currentGoal:(id)a3 differentFrom:(id)a4;
- (BOOL)_dataIsHidden:(int64_t)a3;
- (BOOL)extendGoalLineToAxis;
- (BOOL)hideAsleepData;
- (BOOL)hideInBedData;
- (HKLineSeriesPointMarkerStyle)goalLineMarkerStyle;
- (HKSleepDurationSeries)init;
- (HKStrokeStyle)goalLineStrokeStyle;
- (NSArray)defaultFillStyles;
- (NSArray)highlightedFillStyles;
- (NSArray)inactiveFillStyles;
- (double)barWidthForVisibleBarCount:(int64_t)a3 axisRect:(CGRect)a4 minimumSpacing:(double)a5;
- (id)_durationAbbreviatedFormatter;
- (id)_durationShortFormatter;
- (id)_stringForDuration:(double)a3;
- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6;
- (id)goalLineMarkerImage;
- (id)startOfDayTransform;
- (void)_addAnnotationForValue:(double)a3 axisAnnotationDelegate:(id)a4;
- (void)_addGoalAnnotationAtLocation:(double)a3 axisAnnotationDelegate:(id)a4;
- (void)_drawGoalLineMarkers:(id)a3 context:(CGContext *)a4 goalLineMarkerImage:(id)a5;
- (void)_drawGoalLinePath:(id)a3 context:(CGContext *)a4;
- (void)_drawPaths:(id)a3 withFillStyles:(id)a4 strokeStyle:(id)a5 axisRect:(CGRect)a6 context:(CGContext *)a7;
- (void)_rebuildPointMarkerImages;
- (void)addGoalLinePathsToCoordinate:(id)a3 goalLinePath:(id)a4 goalLineMarkerPoints:(id)a5 previousCoordinateGoal:(id)a6 axisRect:(CGRect)a7;
- (void)clearCaches;
- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9;
- (void)drawWithBlockCoordinates:(id)a3 visibleBarCount:(int64_t)a4 pointTransform:(CGAffineTransform *)a5 context:(CGContext *)a6 axisRect:(CGRect)a7 seriesRenderingDelegate:(id)a8;
- (void)setDefaultFillStyles:(id)a3;
- (void)setExtendGoalLineToAxis:(BOOL)a3;
- (void)setGoalLineMarkerStyle:(id)a3;
- (void)setGoalLineStrokeStyle:(id)a3;
- (void)setHideAsleepData:(BOOL)a3;
- (void)setHideInBedData:(BOOL)a3;
- (void)setHighlightedFillStyles:(id)a3;
- (void)setInactiveFillStyles:(id)a3;
- (void)setStartOfDayTransform:(id)a3;
@end

@implementation HKSleepDurationSeries

- (HKSleepDurationSeries)init
{
  v12.receiver = self;
  v12.super_class = HKSleepDurationSeries;
  v2 = [(HKBarSeries *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    seriesMutableStateLock = v2->_seriesMutableStateLock;
    v2->_seriesMutableStateLock = v3;

    [(NSLock *)v2->_seriesMutableStateLock setName:@"HKSleepDurationSeriesLock"];
    defaultFillStylesStorage = v2->_defaultFillStylesStorage;
    v2->_defaultFillStylesStorage = 0;

    highlightedFillStylesStorage = v2->_highlightedFillStylesStorage;
    v2->_highlightedFillStylesStorage = 0;

    inactiveFillStylesStorage = v2->_inactiveFillStylesStorage;
    v2->_inactiveFillStylesStorage = 0;

    goalLineStrokeStyleStorage = v2->_goalLineStrokeStyleStorage;
    v2->_goalLineStrokeStyleStorage = 0;

    goalLineMarkerStyleStorage = v2->_goalLineMarkerStyleStorage;
    v2->_goalLineMarkerStyleStorage = 0;

    v2->_extendGoalLineToAxisStorage = 0;
    startOfDayTransformStorage = v2->_startOfDayTransformStorage;
    v2->_startOfDayTransformStorage = 0;

    v2->_hideInBedDataStorage = 0;
    v2->_hideAsleepDataStorage = 0;
    [(HKSleepDurationSeries *)v2 _rebuildPointMarkerImages];
  }

  return v2;
}

- (NSArray)defaultFillStyles
{
  v3 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_defaultFillStylesStorage;
  v5 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setDefaultFillStyles:(id)a3
{
  v4 = a3;
  v5 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v5 lock];

  v6 = [v4 copy];
  defaultFillStylesStorage = self->_defaultFillStylesStorage;
  self->_defaultFillStylesStorage = v6;

  v8 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v8 unlock];

  v9 = [v4 lastObject];

  [(HKBarSeries *)self setUnselectedFillStyle:v9];
}

- (NSArray)highlightedFillStyles
{
  v3 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_highlightedFillStylesStorage;
  v5 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setHighlightedFillStyles:(id)a3
{
  v4 = a3;
  v5 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v5 lock];

  v6 = [v4 copy];
  highlightedFillStylesStorage = self->_highlightedFillStylesStorage;
  self->_highlightedFillStylesStorage = v6;

  v8 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v8 unlock];
}

- (NSArray)inactiveFillStyles
{
  v3 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_inactiveFillStylesStorage;
  v5 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setInactiveFillStyles:(id)a3
{
  v4 = a3;
  v5 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v5 lock];

  v6 = [v4 copy];
  inactiveFillStylesStorage = self->_inactiveFillStylesStorage;
  self->_inactiveFillStylesStorage = v6;

  v8 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v8 unlock];
}

- (HKStrokeStyle)goalLineStrokeStyle
{
  v3 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_goalLineStrokeStyleStorage;
  v5 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setGoalLineStrokeStyle:(id)a3
{
  v4 = a3;
  v5 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v5 lock];

  v6 = [v4 copy];
  goalLineStrokeStyleStorage = self->_goalLineStrokeStyleStorage;
  self->_goalLineStrokeStyleStorage = v6;

  v8 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v8 unlock];
}

- (HKLineSeriesPointMarkerStyle)goalLineMarkerStyle
{
  v3 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_goalLineMarkerStyleStorage;
  v5 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setGoalLineMarkerStyle:(id)a3
{
  v4 = a3;
  v5 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v5 lock];

  goalLineMarkerStyleStorage = self->_goalLineMarkerStyleStorage;
  self->_goalLineMarkerStyleStorage = v4;

  v7 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v7 unlock];

  [(HKSleepDurationSeries *)self _rebuildPointMarkerImages];
}

- (BOOL)extendGoalLineToAxis
{
  v3 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v3 lock];

  LOBYTE(v3) = self->_extendGoalLineToAxisStorage;
  v4 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v4 unlock];

  return v3;
}

- (void)setExtendGoalLineToAxis:(BOOL)a3
{
  v5 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v5 lock];

  self->_extendGoalLineToAxisStorage = a3;
  v6 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v6 unlock];
}

- (id)startOfDayTransform
{
  v3 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = _Block_copy(self->_startOfDayTransformStorage);
  v5 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v5 unlock];

  v6 = _Block_copy(v4);

  return v6;
}

- (void)setStartOfDayTransform:(id)a3
{
  v4 = a3;
  v5 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v5 lock];

  v6 = [v4 copy];
  startOfDayTransformStorage = self->_startOfDayTransformStorage;
  self->_startOfDayTransformStorage = v6;

  v8 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v8 unlock];
}

- (BOOL)hideInBedData
{
  v3 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v3 lock];

  LOBYTE(v3) = self->_hideInBedDataStorage;
  v4 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v4 unlock];

  return v3;
}

- (void)setHideInBedData:(BOOL)a3
{
  v5 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v5 lock];

  self->_hideInBedDataStorage = a3;
  v6 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v6 unlock];
}

- (BOOL)hideAsleepData
{
  v3 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v3 lock];

  LOBYTE(v3) = self->_hideAsleepDataStorage;
  v4 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v4 unlock];

  return v3;
}

- (void)setHideAsleepData:(BOOL)a3
{
  v5 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v5 lock];

  self->_hideAsleepDataStorage = a3;
  v6 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v6 unlock];
}

- (id)goalLineMarkerImage
{
  v3 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_goalLineMarkerImageStorage;
  v5 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)_rebuildPointMarkerImages
{
  v3 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v3 lock];

  if (self->_goalLineMarkerStyleStorage)
  {
    v4 = [HKChartSeriesPointMarker chartPointWithLineSeriesPresentationStyle:?];
  }

  else
  {
    v4 = 0;
  }

  goalLineMarkerImageStorage = self->_goalLineMarkerImageStorage;
  self->_goalLineMarkerImageStorage = v4;

  v6 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [v6 unlock];
}

- (void)clearCaches
{
  v34 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [(HKSleepDurationSeries *)self defaultFillStyles];
  v4 = [v3 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v28;
    do
    {
      v7 = 0;
      do
      {
        if (*v28 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v27 + 1) + 8 * v7++) clearCache];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v5);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [(HKSleepDurationSeries *)self highlightedFillStyles];
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v23 + 1) + 8 * v12++) clearCache];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v23 objects:v32 count:16];
    }

    while (v10);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = [(HKSleepDurationSeries *)self inactiveFillStyles];
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v19 + 1) + 8 * v17++) clearCache];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v19 objects:v31 count:16];
    }

    while (v15);
  }

  [(HKSleepDurationSeries *)self _rebuildPointMarkerImages];
  v18.receiver = self;
  v18.super_class = HKSleepDurationSeries;
  [(HKBarSeries *)&v18 clearCaches];
}

- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6
{
  v62 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v12 = [a3 chartPoints];
  if (!v12)
  {
    [HKSleepDurationSeries coordinatesForBlock:a2 blockPath:self xAxis:? yAxis:?];
  }

  v44 = v10;
  v48 = [v10 transform];
  v43 = v11;
  v13 = [v11 transform];
  v47 = [MEMORY[0x1E695DF70] array];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v12;
  v49 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (v49)
  {
    v46 = *v57;
    do
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v57 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v56 + 1) + 8 * i);
        v16 = [v15 xValueAsGenericType];
        [v48 coordinateForValue:v16];
        v18 = v17;

        v19 = v18 + -0.25;
        [v13 coordinateForValue:&unk_1F4382968];
        v21 = v20;
        v22 = [v15 allYValues];
        v23 = [MEMORY[0x1E695DF70] array];
        v24 = [MEMORY[0x1E696B098] valueWithCGPoint:{v19, v21}];
        [v23 addObject:v24];

        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v25 = v22;
        v26 = [v25 countByEnumeratingWithState:&v52 objects:v60 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v53;
          do
          {
            for (j = 0; j != v27; ++j)
            {
              if (*v53 != v28)
              {
                objc_enumerationMutation(v25);
              }

              [v13 coordinateForValue:*(*(&v52 + 1) + 8 * j)];
              v31 = [MEMORY[0x1E696B098] valueWithCGPoint:{v19, v30}];
              [v23 addObject:v31];
            }

            v27 = [v25 countByEnumeratingWithState:&v52 objects:v60 count:16];
          }

          while (v27);
        }

        v32 = [v15 goalValue];

        if (v32)
        {
          v33 = MEMORY[0x1E696AD98];
          v34 = [v15 goalValue];
          [v13 coordinateForValue:v34];
          v32 = [v33 numberWithDouble:?];
        }

        v35 = [HKSleepDurationCoordinate alloc];
        v36 = [v15 highlighted];
        v37 = [v15 userInfo];
        v38 = [(HKSleepDurationCoordinate *)v35 initWithStackPoints:v23 goalLineYValue:v32 highlighted:v36 userInfo:v37];

        [v47 addObject:v38];
      }

      v49 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v49);
  }

  v50 = *v42;
  v51 = *(v42 + 2);
  v39 = [HKGraphSeriesBlockCoordinateList coordinateListWithCoordinates:v47 blockPath:&v50];

  return v39;
}

- (double)barWidthForVisibleBarCount:(int64_t)a3 axisRect:(CGRect)a4 minimumSpacing:(double)a5
{
  v5 = a4.size.width / a3;
  v6 = v5 * 0.33;
  if (v5 * 0.33 <= a5)
  {
    v6 = a5;
  }

  result = round(v5 - v6);
  if (result > 29.0)
  {
    return 29.0;
  }

  return result;
}

- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v18 = a9;
  v19 = a3;
  v20 = [(HKBarSeries *)self visibleBarCountWithZoomLevelConfiguration:a5];
  v21 = *&a6->c;
  v22[0] = *&a6->a;
  v22[1] = v21;
  v22[2] = *&a6->tx;
  [(HKSleepDurationSeries *)self drawWithBlockCoordinates:v19 visibleBarCount:v20 pointTransform:v22 context:a7 axisRect:v18 seriesRenderingDelegate:x, y, width, height];
}

- (void)drawWithBlockCoordinates:(id)a3 visibleBarCount:(int64_t)a4 pointTransform:(CGAffineTransform *)a5 context:(CGContext *)a6 axisRect:(CGRect)a7 seriesRenderingDelegate:(id)a8
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v16 = a3;
  v17 = a8;
  v51 = [v17 seriesDrawingDuringTiling];
  v52 = v16;
  if (v51 && ([(HKBarSeries *)self tiledStrokeStyle], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v19 = v18;
    v20 = [(HKBarSeries *)self tiledStrokeStyle];
  }

  else
  {
    v20 = [(HKBarSeries *)self unselectedStrokeStyle];
  }

  v54 = v20;
  [v20 lineWidth];
  v22 = v21;
  v23 = [(HKBarSeries *)self selectedStrokeStyle];
  [v23 lineWidth];
  v25 = v24;

  if (v25 < v22)
  {
    v25 = v22;
  }

  [v17 screenRectForSeries:self];
  [HKSleepDurationSeries barWidthForVisibleBarCount:"barWidthForVisibleBarCount:axisRect:minimumSpacing:" axisRect:a4 minimumSpacing:?];
  v27 = v26;
  v28 = v25 + v26 + v25 + v26;
  v92.origin.x = x;
  v92.origin.y = y;
  v92.size.width = width;
  v92.size.height = height;
  MaxX = CGRectGetMaxX(v92);
  v93.origin.x = x;
  v93.origin.y = y;
  v93.size.width = width;
  v93.size.height = height;
  MinX = CGRectGetMinX(v93);
  v31 = [MEMORY[0x1E695DF70] array];
  v32 = [MEMORY[0x1E695DF70] array];
  v33 = [MEMORY[0x1E69DC728] bezierPath];
  v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v86 = 0;
  v87 = &v86;
  v88 = 0x3032000000;
  v89 = __Block_byref_object_copy__8;
  v90 = __Block_byref_object_dispose__8;
  v91 = 0;
  v80 = 0;
  v81 = &v80;
  v82 = 0x3032000000;
  v83 = __Block_byref_object_copy__8;
  v84 = __Block_byref_object_dispose__8;
  v85 = 0;
  v78[0] = 0;
  v78[1] = v78;
  v78[2] = 0x3032000000;
  v78[3] = __Block_byref_object_copy__8;
  v78[4] = __Block_byref_object_dispose__8;
  v79 = 0;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __122__HKSleepDurationSeries_drawWithBlockCoordinates_visibleBarCount_pointTransform_context_axisRect_seriesRenderingDelegate___block_invoke;
  v56[3] = &unk_1E81B8490;
  v66 = MinX;
  v67 = v28;
  v68 = MaxX;
  v35 = v31;
  v57 = v35;
  v36 = v32;
  v69 = v27;
  v58 = v36;
  v59 = self;
  v37 = v33;
  v60 = v37;
  v38 = v34;
  v61 = v38;
  v62 = v78;
  v70 = x;
  v71 = y;
  v72 = width;
  v73 = height;
  v63 = &v74;
  v64 = &v86;
  v65 = &v80;
  v39 = *&a5->c;
  v55[0] = *&a5->a;
  v55[1] = v39;
  v55[2] = *&a5->tx;
  [v52 enumerateCoordinatesWithTransform:v55 roundToViewScale:1 block:v56];
  v40 = [(HKSleepDurationSeries *)self defaultFillStyles];

  if (v40)
  {
    if ([(HKGraphSeries *)self allowsSelection])
    {
      [(HKSleepDurationSeries *)self defaultFillStyles];
    }

    else
    {
      [(HKSleepDurationSeries *)self inactiveFillStyles];
    }
    v41 = ;
    [(HKSleepDurationSeries *)self _drawPaths:v35 withFillStyles:v41 strokeStyle:v20 axisRect:a6 context:x, y, width, height];
    v42 = [(HKSleepDurationSeries *)self highlightedFillStyles];
    v43 = v42;
    if (!v42)
    {
      v43 = [(HKSleepDurationSeries *)self defaultFillStyles];
    }

    v44 = [(HKBarSeries *)self selectedStrokeStyle];
    v45 = v44;
    if (v44)
    {
      v46 = v44;
    }

    else
    {
      v46 = v54;
    }

    [(HKSleepDurationSeries *)self _drawPaths:v36 withFillStyles:v43 strokeStyle:v46 axisRect:a6 context:x, y, width, height];

    if (!v42)
    {
    }
  }

  if (([v37 isEmpty] & 1) == 0)
  {
    v47 = [(HKSleepDurationSeries *)self goalLineStrokeStyle];

    if (v47)
    {
      if (v81[5] && [(HKSleepDurationSeries *)self extendGoalLineToAxis])
      {
        [v81[5] doubleValue];
        [v37 addLineToPoint:{x + width, v48}];
      }

      [(HKSleepDurationSeries *)self _drawGoalLinePath:v37 context:a6];
      v49 = [(HKSleepDurationSeries *)self goalLineMarkerImage];
      if (v49)
      {
        [(HKSleepDurationSeries *)self _drawGoalLineMarkers:v38 context:a6 goalLineMarkerImage:v49];
      }

      if (v87[5])
      {
        v50 = [v17 axisAnnotationDelegateForSeries:self];
        if ((v51 & 1) != 0 || *(v75 + 24) != 1)
        {
          [v87[5] doubleValue];
          [(HKSleepDurationSeries *)self _addAnnotationForValue:v50 axisAnnotationDelegate:?];
        }

        else
        {
          [v87[5] doubleValue];
          [(HKSleepDurationSeries *)self _addGoalAnnotationAtLocation:v50 axisAnnotationDelegate:?];
        }
      }
    }
  }

  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(v78, 8);

  _Block_object_dispose(&v80, 8);
  _Block_object_dispose(&v86, 8);
}

void __122__HKSleepDurationSeries_drawWithBlockCoordinates_visibleBarCount_pointTransform_context_axisRect_seriesRenderingDelegate___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v54 = a2;
  v6 = a4;
  v7 = [v54 stackPoints];
  v8 = [v7 firstObject];
  [v8 CGPointValue];
  v10 = v9;
  v12 = v11;

  v13 = *(a1 + 112);
  if (*(a1 + 104) - v10 <= v13 && v10 - *(a1 + 120) <= v13)
  {
    v14 = [v54 stackPoints];
    v15 = [v14 count];

    if (v15 != 1)
    {
      v16 = 0;
      do
      {
        if ([*(a1 + 32) count] <= v16)
        {
          v17 = *(a1 + 32);
          v18 = [MEMORY[0x1E69DC728] bezierPath];
          [v17 addObject:v18];

          v19 = *(a1 + 40);
          v20 = [MEMORY[0x1E69DC728] bezierPath];
          [v19 addObject:v20];
        }

        v21 = [*(a1 + 32) objectAtIndexedSubscript:v16];
        if ([v54 highlighted])
        {
          v22 = [*(a1 + 40) objectAtIndexedSubscript:v16];

          v21 = v22;
        }

        v23 = [v54 stackPoints];
        v24 = [v23 objectAtIndexedSubscript:++v16];
        [v24 CGPointValue];
        v26 = v25;
        v28 = v27;

        if (v26 != v10 || v28 != v12)
        {
          if (v12 - v28 >= 0.0)
          {
            v30 = v12 - v28;
          }

          else
          {
            v30 = -(v12 - v28);
          }

          v31 = v26;
          v32 = v28;
          v29 = *(a1 + 128);
          v56 = CGRectStandardize(*(&v30 - 3));
          v57 = CGRectOffset(v56, *(a1 + 128) * -0.5, 0.0);
          x = v57.origin.x;
          y = v57.origin.y;
          width = v57.size.width;
          height = v57.size.height;
          [*(a1 + 48) cornerRadii];
          v39 = [HKBarSeries barSeriesRoundedRect:3 byRoundingCorners:x cornerRadii:y, width, height, v37, v38];
          [v21 appendPath:v39];
        }

        v40 = [v54 stackPoints];
        v41 = [v40 count] - 1;
      }

      while (v16 < v41);
    }

    [*(a1 + 48) addGoalLinePathsToCoordinate:v54 goalLinePath:*(a1 + 56) goalLineMarkerPoints:*(a1 + 64) previousCoordinateGoal:*(*(*(a1 + 72) + 8) + 40) axisRect:{*(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160)}];
    v42 = [v54 goalLineYValue];

    if (v42)
    {
      if (*(*(*(a1 + 72) + 8) + 40))
      {
        v43 = *(a1 + 48);
        v44 = [v54 goalLineYValue];
        LODWORD(v43) = [v43 _currentGoal:v44 differentFrom:*(*(*(a1 + 72) + 8) + 40)];

        if (v43)
        {
          *(*(*(a1 + 80) + 8) + 24) = 1;
        }
      }

      v45 = [v6 goalLineYValue];
      v46 = *(*(a1 + 88) + 8);
      v47 = *(v46 + 40);
      *(v46 + 40) = v45;

      v48 = [v54 goalLineYValue];
      v49 = *(*(a1 + 96) + 8);
      v50 = *(v49 + 40);
      *(v49 + 40) = v48;
    }

    v51 = [v54 goalLineYValue];
    v52 = *(*(a1 + 72) + 8);
    v53 = *(v52 + 40);
    *(v52 + 40) = v51;
  }
}

- (void)addGoalLinePathsToCoordinate:(id)a3 goalLinePath:(id)a4 goalLineMarkerPoints:(id)a5 previousCoordinateGoal:(id)a6 axisRect:(CGRect)a7
{
  v23 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v23 goalLineYValue];

  if (v12)
  {
    [v23 startXValue];
    v14 = v13;
    v15 = [v23 goalLineYValue];
    [v15 doubleValue];
    if (a6)
    {
      [v10 addLineToPoint:{v14, v16}];
    }

    else
    {
      [v10 moveToPoint:{v14, v16}];
    }

    v17 = MEMORY[0x1E696B098];
    [v23 startXValue];
    v19 = v18;
    v20 = [v23 goalLineYValue];
    [v20 doubleValue];
    v22 = [v17 valueWithCGPoint:{v19, v21}];
    [v11 addObject:v22];
  }
}

- (BOOL)_currentGoal:(id)a3 differentFrom:(id)a4
{
  v5 = a4;
  [a3 doubleValue];
  v7 = v6;
  [v5 doubleValue];
  v9 = v8;

  return vabdd_f64(v7, v9) >= 0.000001;
}

- (void)_drawGoalLinePath:(id)a3 context:(CGContext *)a4
{
  v6 = a3;
  CGContextSaveGState(a4);
  v7 = [(HKSleepDurationSeries *)self goalLineStrokeStyle];
  [v7 applyToContext:a4];

  v8 = [v6 CGPath];
  CGContextAddPath(a4, v8);
  CGContextStrokePath(a4);

  CGContextRestoreGState(a4);
}

- (void)_drawGoalLineMarkers:(id)a3 context:(CGContext *)a4 goalLineMarkerImage:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = [v8 CGImage];
  v10 = HKChartSeriesPointMarkerBaseRect(v8);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = v7;
  v18 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v27;
    do
    {
      v21 = 0;
      do
      {
        if (*v27 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v26 + 1) + 8 * v21) CGPointValue];
        v23 = v22;
        v25 = v24;
        v32.origin.x = v10;
        v32.origin.y = v12;
        v32.size.width = v14;
        v32.size.height = v16;
        v33 = CGRectOffset(v32, v23, v25);
        CGContextDrawImage(a4, v33, v9);
        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v19);
  }
}

- (void)_drawPaths:(id)a3 withFillStyles:(id)a4 strokeStyle:(id)a5 axisRect:(CGRect)a6 context:(CGContext *)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v24 = a3;
  v15 = a4;
  v16 = a5;
  v17 = [v24 count];
  if (v17 - 1 >= 0)
  {
    v18 = v17;
    do
    {
      v19 = [v24 objectAtIndexedSubscript:--v18];
      if (([v19 isEmpty] & 1) == 0 && !-[HKSleepDurationSeries _dataIsHidden:](self, "_dataIsHidden:", v18))
      {
        if (v16)
        {
          CGContextSaveGState(a7);
          [v16 applyToContext:a7];
          CGContextAddPath(a7, [v19 CGPath]);
          CGContextStrokePath(a7);
          CGContextRestoreGState(a7);
        }

        if (v18 < [v15 count])
        {
          v20 = [v15 objectAtIndexedSubscript:v18];
          if (v20)
          {
            v21 = v20;
            v22 = [v19 CGPath];
            [(HKGraphSeries *)self alpha];
            [v21 renderPath:v22 context:a7 axisRect:x alpha:{y, width, height, v23}];
          }
        }
      }
    }

    while (v18 > 0);
  }
}

- (BOOL)_dataIsHidden:(int64_t)a3
{
  if (a3 == 1)
  {
    return [(HKSleepDurationSeries *)self hideInBedData];
  }

  if (a3)
  {
    return 0;
  }

  return [(HKSleepDurationSeries *)self hideAsleepData];
}

- (void)_addAnnotationForValue:(double)a3 axisAnnotationDelegate:(id)a4
{
  v17[2] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v6 = a4;
    v7 = [(HKGraphSeries *)self seriesDataSourceContext];
    v8 = [v7 chartType];
    v9 = &stru_1F42FFBE0;
    if (v8 <= 6 && ((1 << v8) & 0x65) != 0)
    {
      v9 = [(HKSleepDurationSeries *)self _stringForDuration:a3];
    }

    v16[0] = *MEMORY[0x1E69DB650];
    v10 = [(HKSleepDurationSeries *)self goalLineStrokeStyle];
    v11 = [v10 strokeColor];
    v17[0] = v11;
    v16[1] = *MEMORY[0x1E69DB648];
    v12 = [MEMORY[0x1E69DB878] hk_chartAxisLabelFont];
    v17[1] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

    v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v9 attributes:v13];
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    [v6 addAxisAnnotation:v14 forSeries:self modelCoordinate:v15];
  }
}

- (void)_addGoalAnnotationAtLocation:(double)a3 axisAnnotationDelegate:(id)a4
{
  v17[2] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AAE8];
  v7 = a4;
  v8 = [v6 bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = [v8 localizedStringForKey:@"SLEEP_MULTIPLE_GOAL_AXIS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Eucalyptus"];

  v16[0] = *MEMORY[0x1E69DB650];
  v10 = [(HKSleepDurationSeries *)self goalLineStrokeStyle];
  v11 = [v10 strokeColor];
  v17[0] = v11;
  v16[1] = *MEMORY[0x1E69DB648];
  v12 = [MEMORY[0x1E69DB878] hk_chartAxisLabelFont];
  v17[1] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v9 attributes:v13];
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v7 addAxisAnnotation:v14 forSeries:self modelCoordinate:v15];
}

- (id)_durationAbbreviatedFormatter
{
  if (_durationAbbreviatedFormatter_onceToken != -1)
  {
    [HKSleepDurationSeries _durationAbbreviatedFormatter];
  }

  v3 = _durationAbbreviatedFormatter___formatter;

  return v3;
}

uint64_t __54__HKSleepDurationSeries__durationAbbreviatedFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB70]);
  v1 = _durationAbbreviatedFormatter___formatter;
  _durationAbbreviatedFormatter___formatter = v0;

  [_durationAbbreviatedFormatter___formatter setUnitsStyle:1];
  v2 = _durationAbbreviatedFormatter___formatter;

  return [v2 setAllowedUnits:96];
}

- (id)_durationShortFormatter
{
  if (_durationShortFormatter_onceToken != -1)
  {
    [HKSleepDurationSeries _durationShortFormatter];
  }

  v3 = _durationShortFormatter___formatter;

  return v3;
}

uint64_t __48__HKSleepDurationSeries__durationShortFormatter__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AB70]);
  v1 = _durationShortFormatter___formatter;
  _durationShortFormatter___formatter = v0;

  [_durationShortFormatter___formatter setUnitsStyle:2];
  v2 = _durationShortFormatter___formatter;

  return [v2 setAllowedUnits:96];
}

- (id)_stringForDuration:(double)a3
{
  if (__ROR8__(0xFEDCBA987654321 * llround(a3) + 0x91A2B3C4D5E6F0, 4) <= 0x123456789ABCDEuLL)
  {
    [(HKSleepDurationSeries *)self _durationShortFormatter];
  }

  else
  {
    [(HKSleepDurationSeries *)self _durationAbbreviatedFormatter];
  }
  v4 = ;
  v5 = [v4 stringFromTimeInterval:a3];

  return v5;
}

- (void)coordinatesForBlock:(uint64_t)a1 blockPath:(uint64_t)a2 xAxis:yAxis:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKSleepDurationSeries.m" lineNumber:271 description:{@"Invalid parameter not satisfying: %@", @"points != nil"}];
}

@end