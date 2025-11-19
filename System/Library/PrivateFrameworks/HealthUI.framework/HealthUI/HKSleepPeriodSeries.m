@interface HKSleepPeriodSeries
+ (id)_sleepCircleImageWithWidth:(double)a3 diameter:(double)a4 color:(id)a5;
+ (id)asleepImageCompatibleWithFont:(id)a3 withColor:(id)a4;
+ (id)inBedImageCompatibleWithFont:(id)a3 withColor:(id)a4;
- (BOOL)blockCoordinate:(id)a3 greaterThan:(id)a4;
- (BOOL)blockCoordinate:(id)a3 lessThan:(id)a4;
- (BOOL)blockCoordinateIsVisibleInsideOfChartRect:(CGRect)a3 blockCoordinate:(id)a4;
- (CGSize)cornerRadii;
- (CGSize)cornerRadiiStorage;
- (HKLineSeriesPointMarkerStyle)lowerGoalLineMarkerStyle;
- (HKLineSeriesPointMarkerStyle)upperGoalLineMarkerStyle;
- (HKSleepPeriodSeries)init;
- (HKStrokeStyle)goalLineStrokeStyle;
- (HKStrokeStyle)strokeStyle;
- (HKStrokeStyle)tiledStrokeStyle;
- (NSArray)defaultFillStyles;
- (NSArray)highlightedFillStyles;
- (NSArray)inactiveFillStyles;
- (double)_maximumYForCoordinate:(id)a3;
- (double)_minimumYForCoordinate:(id)a3;
- (double)barWidthForVisibleBarCount:(int64_t)a3 axisRect:(CGRect)a4 minimumSpacing:(double)a5;
- (double)distanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (double)xAxisDistanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (double)yAxisDifferenceToPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (id)_attributedAxisString:(id)a3;
- (id)_stringFromTimeSinceNoon:(id)a3;
- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6;
- (id)marginsForYAxis:(id)a3 xAxisRange:(id)a4 zoomLevel:(int64_t)a5 chartRect:(CGRect)a6;
- (id)startOfDayTransform;
- (int64_t)visibleBarCountWithZoomLevelConfiguration:(id)a3;
- (void)_assertCoordinateCompatibility:(id)a3;
- (void)_drawWithBlockCoordinates:(id)a3 visibleBarCount:(int64_t)a4 pointTransform:(CGAffineTransform *)a5 context:(CGContext *)a6 axisRect:(CGRect)a7 axisResolution:(double)a8 seriesRenderingDelegate:(id)a9;
- (void)addAnnotationForValue:(double)a3 axisAnnotationDelegate:(id)a4;
- (void)addGoalLinePathsToCoordinate:(id)a3 upperGoalLinePath:(id)a4 upperGoalMarkerPoints:(id)a5 previousUpperGoalLinePoint:(id)a6 lowerGoalLinePath:(id)a7 lowerGoalMarkerPoints:(id)a8 previousLowerGoalLinePoint:(id)a9 axisRect:(CGRect)a10;
- (void)clearCaches;
- (void)drawGoalLinePath:(id)a3 goalMarkerPoints:(id)a4 markerImage:(id)a5 context:(CGContext *)a6;
- (void)drawPaths:(id)a3 withFillStyles:(id)a4 strokeStyle:(id)a5 axisRect:(CGRect)a6 context:(CGContext *)a7;
- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9;
- (void)setDefaultFillStyles:(id)a3;
- (void)setGoalLineStrokeStyle:(id)a3;
- (void)setHighlightedFillStyles:(id)a3;
- (void)setInactiveFillStyles:(id)a3;
- (void)setLowerGoalLineMarkerStyle:(id)a3;
- (void)setStartOfDayTransform:(id)a3;
- (void)setStrokeStyle:(id)a3;
- (void)setTiledStrokeStyle:(id)a3;
- (void)setUpperGoalLineMarkerStyle:(id)a3;
@end

@implementation HKSleepPeriodSeries

- (HKSleepPeriodSeries)init
{
  v16.receiver = self;
  v16.super_class = HKSleepPeriodSeries;
  v2 = [(HKGraphSeries *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    seriesMutableStateLock = v2->_seriesMutableStateLock;
    v2->_seriesMutableStateLock = v3;

    [(NSLock *)v2->_seriesMutableStateLock setName:@"HKSleepPeriodSeriesLock"];
    v2->_cornerRadiiStorage.width = 0.0;
    v2->_cornerRadiiStorage.height = 0.0;
    strokeStyleStorage = v2->_strokeStyleStorage;
    v2->_strokeStyleStorage = 0;

    tiledStrokeStyleStorage = v2->_tiledStrokeStyleStorage;
    v2->_tiledStrokeStyleStorage = 0;

    defaultFillStylesStorage = v2->_defaultFillStylesStorage;
    v8 = MEMORY[0x1E695E0F0];
    v2->_defaultFillStylesStorage = MEMORY[0x1E695E0F0];

    highlightedFillStylesStorage = v2->_highlightedFillStylesStorage;
    v2->_highlightedFillStylesStorage = v8;

    inactiveFillStylesStorage = v2->_inactiveFillStylesStorage;
    v2->_inactiveFillStylesStorage = v8;

    goalLineStrokeStyleStorage = v2->_goalLineStrokeStyleStorage;
    v2->_goalLineStrokeStyleStorage = 0;

    upperGoalLineMarkerStyleStorage = v2->_upperGoalLineMarkerStyleStorage;
    v2->_upperGoalLineMarkerStyleStorage = 0;

    lowerGoalLineMarkerStyleStorage = v2->_lowerGoalLineMarkerStyleStorage;
    v2->_lowerGoalLineMarkerStyleStorage = 0;

    startOfDayTransformStorage = v2->_startOfDayTransformStorage;
    v2->_startOfDayTransformStorage = 0;
  }

  return v2;
}

- (HKStrokeStyle)strokeStyle
{
  v3 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_strokeStyleStorage;
  v5 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setStrokeStyle:(id)a3
{
  v4 = a3;
  v5 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [v5 lock];

  v6 = [v4 copy];
  strokeStyleStorage = self->_strokeStyleStorage;
  self->_strokeStyleStorage = v6;

  v8 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [v8 unlock];
}

- (HKStrokeStyle)tiledStrokeStyle
{
  v3 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_tiledStrokeStyleStorage;
  v5 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setTiledStrokeStyle:(id)a3
{
  v4 = a3;
  v5 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [v5 lock];

  v6 = [v4 copy];
  tiledStrokeStyleStorage = self->_tiledStrokeStyleStorage;
  self->_tiledStrokeStyleStorage = v6;

  v8 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [v8 unlock];
}

- (NSArray)defaultFillStyles
{
  v3 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_defaultFillStylesStorage;
  v5 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setDefaultFillStyles:(id)a3
{
  v4 = a3;
  v5 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [v5 lock];

  v6 = [v4 copy];
  defaultFillStylesStorage = self->_defaultFillStylesStorage;
  self->_defaultFillStylesStorage = v6;

  v8 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [v8 unlock];
}

- (NSArray)highlightedFillStyles
{
  v3 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_highlightedFillStylesStorage;
  v5 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setHighlightedFillStyles:(id)a3
{
  v4 = a3;
  v5 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [v5 lock];

  v6 = [v4 copy];
  highlightedFillStylesStorage = self->_highlightedFillStylesStorage;
  self->_highlightedFillStylesStorage = v6;

  v8 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [v8 unlock];
}

- (NSArray)inactiveFillStyles
{
  v3 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_inactiveFillStylesStorage;
  v5 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setInactiveFillStyles:(id)a3
{
  v4 = a3;
  v5 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [v5 lock];

  v6 = [v4 copy];
  inactiveFillStylesStorage = self->_inactiveFillStylesStorage;
  self->_inactiveFillStylesStorage = v6;

  v8 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [v8 unlock];
}

- (HKStrokeStyle)goalLineStrokeStyle
{
  v3 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_goalLineStrokeStyleStorage;
  v5 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setGoalLineStrokeStyle:(id)a3
{
  v4 = a3;
  v5 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [v5 lock];

  v6 = [v4 copy];
  goalLineStrokeStyleStorage = self->_goalLineStrokeStyleStorage;
  self->_goalLineStrokeStyleStorage = v6;

  v8 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [v8 unlock];
}

- (HKLineSeriesPointMarkerStyle)upperGoalLineMarkerStyle
{
  v3 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_upperGoalLineMarkerStyleStorage;
  v5 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setUpperGoalLineMarkerStyle:(id)a3
{
  v4 = a3;
  v5 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [v5 lock];

  upperGoalLineMarkerStyleStorage = self->_upperGoalLineMarkerStyleStorage;
  self->_upperGoalLineMarkerStyleStorage = v4;

  v7 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [v7 unlock];
}

- (HKLineSeriesPointMarkerStyle)lowerGoalLineMarkerStyle
{
  v3 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_lowerGoalLineMarkerStyleStorage;
  v5 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setLowerGoalLineMarkerStyle:(id)a3
{
  v4 = a3;
  v5 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [v5 lock];

  lowerGoalLineMarkerStyleStorage = self->_lowerGoalLineMarkerStyleStorage;
  self->_lowerGoalLineMarkerStyleStorage = v4;

  v7 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [v7 unlock];
}

- (id)startOfDayTransform
{
  v3 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = _Block_copy(self->_startOfDayTransformStorage);
  v5 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [v5 unlock];

  v6 = _Block_copy(v4);

  return v6;
}

- (void)setStartOfDayTransform:(id)a3
{
  v4 = a3;
  v5 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [v5 lock];

  v6 = [v4 copy];
  startOfDayTransformStorage = self->_startOfDayTransformStorage;
  self->_startOfDayTransformStorage = v6;

  v8 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [v8 unlock];
}

- (void)clearCaches
{
  v34 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v3 = [(HKSleepPeriodSeries *)self defaultFillStyles];
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
  v8 = [(HKSleepPeriodSeries *)self highlightedFillStyles];
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
  v13 = [(HKSleepPeriodSeries *)self inactiveFillStyles];
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

  v18.receiver = self;
  v18.super_class = HKSleepPeriodSeries;
  [(HKGraphSeries *)&v18 clearCaches];
}

- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v18 = a3;
  v19 = a5;
  v20 = a9;
  v21 = [(HKSleepPeriodSeries *)self defaultFillStyles];
  if (v21)
  {

LABEL_4:
    v23 = [(HKSleepPeriodSeries *)self visibleBarCountWithZoomLevelConfiguration:v19];
    [v19 approximateSeriesPointIntervalAtResolution:0];
    v24 = *&a6->c;
    v26[0] = *&a6->a;
    v26[1] = v24;
    v26[2] = *&a6->tx;
    [(HKSleepPeriodSeries *)self _drawWithBlockCoordinates:v18 visibleBarCount:v23 pointTransform:v26 context:a7 axisRect:v20 axisResolution:x seriesRenderingDelegate:y, width, height, v25];
    goto LABEL_5;
  }

  v22 = [(HKSleepPeriodSeries *)self highlightedFillStyles];

  if (v22)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (int64_t)visibleBarCountWithZoomLevelConfiguration:(id)a3
{
  v3 = a3;
  [v3 canonicalSize];
  v5 = v4;
  v6 = [v3 seriesPointIntervalComponentsAtResolution:0];

  [v6 hk_approximateDuration];
  v8 = vcvtmd_s64_f64(v5 / fmax(v7, 1.0));

  return v8;
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

- (void)_drawWithBlockCoordinates:(id)a3 visibleBarCount:(int64_t)a4 pointTransform:(CGAffineTransform *)a5 context:(CGContext *)a6 axisRect:(CGRect)a7 axisResolution:(double)a8 seriesRenderingDelegate:(id)a9
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v117[2] = *MEMORY[0x1E69E9840];
  v65 = a3;
  v66 = a9;
  v60 = [v66 seriesDrawingDuringTiling];
  if (v60 && ([(HKSleepPeriodSeries *)self tiledStrokeStyle], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v67 = [(HKSleepPeriodSeries *)self tiledStrokeStyle];
  }

  else
  {
    v67 = [(HKSleepPeriodSeries *)self strokeStyle];
  }

  [v67 lineWidth];
  v21 = v20;
  [v66 screenRectForSeries:self];
  [HKSleepPeriodSeries barWidthForVisibleBarCount:"barWidthForVisibleBarCount:axisRect:minimumSpacing:" axisRect:a4 minimumSpacing:?];
  v23 = v22;
  v118.origin.x = x;
  v118.origin.y = y;
  v118.size.width = width;
  v118.size.height = height;
  MaxX = CGRectGetMaxX(v118);
  v119.origin.x = x;
  v119.origin.y = y;
  v119.size.width = width;
  v119.size.height = height;
  MinX = CGRectGetMinX(v119);
  v25 = [MEMORY[0x1E69DC728] bezierPath];
  v117[0] = v25;
  v26 = [MEMORY[0x1E69DC728] bezierPath];
  v117[1] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:2];
  v28 = [v27 mutableCopy];

  v29 = [MEMORY[0x1E69DC728] bezierPath];
  v116[0] = v29;
  v30 = [MEMORY[0x1E69DC728] bezierPath];
  v116[1] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:2];
  v32 = [v31 mutableCopy];

  v33 = [MEMORY[0x1E69DC728] bezierPath];
  v34 = [MEMORY[0x1E69DC728] bezierPath];
  v110 = 0;
  v111 = &v110;
  v112 = 0x3032000000;
  v113 = __Block_byref_object_copy__21;
  v114 = __Block_byref_object_dispose__21;
  v115 = 0;
  v104 = 0;
  v105 = &v104;
  v106 = 0x3032000000;
  v107 = __Block_byref_object_copy__21;
  v108 = __Block_byref_object_dispose__21;
  v109 = 0;
  v103[0] = 0;
  v103[1] = v103;
  v103[2] = 0x2020000000;
  v103[3] = 0xFFEFFFFFFFFFFFFFLL;
  v101[0] = 0;
  v101[1] = v101;
  v101[2] = 0x3032000000;
  v101[3] = __Block_byref_object_copy__21;
  v101[4] = __Block_byref_object_dispose__21;
  v102 = 0;
  v99[0] = 0;
  v99[1] = v99;
  v99[2] = 0x3032000000;
  v99[3] = __Block_byref_object_copy__21;
  v99[4] = __Block_byref_object_dispose__21;
  v100 = 0;
  v98[0] = 0;
  v98[1] = v98;
  v98[2] = 0x2020000000;
  v98[3] = 0xFFEFFFFFFFFFFFFFLL;
  v94 = 0;
  v95 = &v94;
  v96 = 0x2020000000;
  v97 = 0;
  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v37 = v21 + v23 + v21 + v23;
  v38 = a8 / 86400.0 * 0.05;
  v69[1] = 3221225472;
  v39 = a8 / 86400.0 - v38;
  v69[0] = MEMORY[0x1E69E9820];
  v69[2] = __136__HKSleepPeriodSeries__drawWithBlockCoordinates_visibleBarCount_pointTransform_context_axisRect_axisResolution_seriesRenderingDelegate___block_invoke;
  v69[3] = &unk_1E81BA938;
  v40 = a8 / 86400.0 + v38;
  v84 = MinX;
  v85 = v37;
  v86 = MaxX;
  v64 = v28;
  v70 = v64;
  v62 = v32;
  v71 = v62;
  v72 = self;
  v77 = &v94;
  v78 = v103;
  v87 = v23;
  v88 = v39;
  v89 = v40;
  v79 = v101;
  v80 = v98;
  v81 = v99;
  v61 = v33;
  v73 = v61;
  v41 = v35;
  v74 = v41;
  v42 = v34;
  v75 = v42;
  v43 = v36;
  v90 = x;
  v91 = y;
  v92 = width;
  v93 = height;
  v76 = v43;
  v82 = &v110;
  v83 = &v104;
  v44 = *&a5->c;
  v68[0] = *&a5->a;
  v68[1] = v44;
  v68[2] = *&a5->tx;
  [v65 enumerateCoordinatesWithTransform:v68 roundToViewScale:1 block:v69];
  if ([(HKGraphSeries *)self allowsSelection])
  {
    [(HKSleepPeriodSeries *)self defaultFillStyles];
  }

  else
  {
    [(HKSleepPeriodSeries *)self inactiveFillStyles];
  }
  v45 = ;
  [(HKSleepPeriodSeries *)self drawPaths:v64 withFillStyles:v45 strokeStyle:v67 axisRect:a6 context:x, y, width, height];
  v46 = [(HKSleepPeriodSeries *)self highlightedFillStyles];
  v47 = v46;
  if (!v46)
  {
    v47 = [(HKSleepPeriodSeries *)self defaultFillStyles];
  }

  [(HKSleepPeriodSeries *)self drawPaths:v62 withFillStyles:v47 strokeStyle:v67 axisRect:a6 context:x, y, width, height];
  if (!v46)
  {
  }

  v48 = [(HKSleepPeriodSeries *)self upperGoalLineMarkerStyle];
  if (v48)
  {
    v49 = [(HKSleepPeriodSeries *)self upperGoalLineMarkerStyle];
    v50 = [HKChartSeriesPointMarker chartPointWithLineSeriesPresentationStyle:v49];
  }

  else
  {
    v50 = 0;
  }

  v51 = [(HKSleepPeriodSeries *)self lowerGoalLineMarkerStyle];
  if (v51)
  {
    v52 = [(HKSleepPeriodSeries *)self lowerGoalLineMarkerStyle];
    v53 = [HKChartSeriesPointMarker chartPointWithLineSeriesPresentationStyle:v52];
  }

  else
  {
    v53 = 0;
  }

  [(HKSleepPeriodSeries *)self drawGoalLinePath:v61 goalMarkerPoints:v41 markerImage:v50 context:a6];
  [(HKSleepPeriodSeries *)self drawGoalLinePath:v42 goalMarkerPoints:v43 markerImage:v53 context:a6];
  v54 = [(HKSleepPeriodSeries *)self goalLineStrokeStyle];
  v55 = v54 == 0;

  if (!v55)
  {
    v56 = [v66 axisAnnotationDelegateForSeries:self];
    v57 = v111[5];
    if (v57)
    {
      [v57 doubleValue];
      [(HKSleepPeriodSeries *)self addAnnotationForValue:v56 axisAnnotationDelegate:?];
    }

    v58 = v105[5];
    if (v58)
    {
      [v58 doubleValue];
      [(HKSleepPeriodSeries *)self addAnnotationForValue:v56 axisAnnotationDelegate:?];
    }
  }

  if (((v60 | [v66 measuringStartupTime] ^ 1) & 1) == 0 && v95[3] >= 1)
  {
    v59 = [(HKGraphSeries *)self delegate];
    [v59 nonemptyDrawComplete];
  }

  _Block_object_dispose(&v94, 8);
  _Block_object_dispose(v98, 8);
  _Block_object_dispose(v99, 8);

  _Block_object_dispose(v101, 8);
  _Block_object_dispose(v103, 8);
  _Block_object_dispose(&v104, 8);

  _Block_object_dispose(&v110, 8);
}

void __136__HKSleepPeriodSeries__drawWithBlockCoordinates_visibleBarCount_pointTransform_context_axisRect_axisResolution_seriesRenderingDelegate___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v103 = a2;
  v6 = a4;
  [v103 xValue];
  v8 = v7;
  v9 = *(a1 + 152);
  if (*(a1 + 144) - v8 <= v9 && v8 - *(a1 + 160) <= v9)
  {
    v10 = [v103 asleepYValues];
    v11 = [v10 count];

    v12 = v103;
    if (v11)
    {
      v13 = [*(a1 + 32) objectAtIndexedSubscript:1];
      if ([v103 highlighted])
      {
        v14 = [*(a1 + 40) objectAtIndexedSubscript:1];

        v13 = v14;
      }

      v15 = [v103 asleepYValues];
      v16 = [v15 firstObject];

      v17 = [v103 asleepYValues];
      v18 = [v17 count];

      if (v18 < 2)
      {
        v21 = v16;
      }

      else
      {
        v19 = 1;
        do
        {
          v20 = [v103 asleepYValues];
          v21 = [v20 objectAtIndexedSubscript:v19];

          v22 = [v16 value];
          [v22 doubleValue];
          v24 = v23;

          v25 = [v21 value];
          [v25 doubleValue];
          v27 = v26;

          if (v19)
          {
            if ([v16 continuation])
            {
              v28 = 0;
            }

            else
            {
              v28 = 3;
            }

            if (![v21 continuation])
            {
              v28 |= 0xCuLL;
            }

            if (v27 - v24 >= 0.0)
            {
              v30 = v27 - v24;
            }

            else
            {
              v30 = -(v27 - v24);
            }

            v31 = v8;
            v32 = v24;
            v29 = *(a1 + 168);
            v105 = CGRectStandardize(*(&v30 - 3));
            v106 = CGRectOffset(v105, *(a1 + 168) * -0.5, 0.0);
            x = v106.origin.x;
            y = v106.origin.y;
            width = v106.size.width;
            height = v106.size.height;
            [*(a1 + 48) cornerRadii];
            v39 = [HKBarSeries barSeriesRoundedRect:v28 byRoundingCorners:x cornerRadii:y, width, height, v37, v38];
            [v13 appendPath:v39];

            ++*(*(*(a1 + 88) + 8) + 24);
          }

          ++v19;
          v40 = [v103 asleepYValues];
          v41 = [v40 count];

          v16 = v21;
        }

        while (v19 < v41);
      }

      v12 = v103;
    }

    v42 = [v12 inBedYValues];
    v43 = [v42 count];

    if (v43)
    {
      v44 = [*(a1 + 32) objectAtIndexedSubscript:0];
      if ([v103 highlighted])
      {
        v45 = [*(a1 + 40) objectAtIndexedSubscript:0];

        v44 = v45;
      }

      v46 = [v103 inBedYValues];
      v47 = [v46 firstObject];

      v48 = [v103 inBedYValues];
      v49 = [v48 count];

      if (v49 < 2)
      {
        v53 = v47;
      }

      else
      {
        v50 = 1;
        v51 = v103;
        do
        {
          v52 = [v51 inBedYValues];
          v53 = [v52 objectAtIndexedSubscript:v50];

          v54 = [v47 value];
          [v54 doubleValue];
          v56 = v55;

          v57 = [v53 value];
          [v57 doubleValue];
          v59 = v58;

          if (v50)
          {
            if ([v47 continuation])
            {
              v60 = 0;
            }

            else
            {
              v60 = 3;
            }

            if (![v53 continuation])
            {
              v60 |= 0xCuLL;
            }

            if (v59 - v56 >= 0.0)
            {
              v62 = v59 - v56;
            }

            else
            {
              v62 = -(v59 - v56);
            }

            v63 = v8;
            v64 = v56;
            v61 = *(a1 + 168);
            v107 = CGRectStandardize(*(&v62 - 3));
            v108 = CGRectOffset(v107, *(a1 + 168) * -0.5, 0.0);
            v65 = v108.origin.x;
            v66 = v108.origin.y;
            v67 = v108.size.width;
            v68 = v108.size.height;
            [*(a1 + 48) cornerRadii];
            v71 = [HKBarSeries barSeriesRoundedRect:v60 byRoundingCorners:v65 cornerRadii:v66, v67, v68, v69, v70];
            [v44 appendPath:v71];

            ++*(*(*(a1 + 88) + 8) + 24);
          }

          ++v50;
          v72 = [v103 inBedYValues];
          v73 = [v72 count];

          v51 = v103;
          v47 = v53;
        }

        while (v50 < v73);
      }
    }

    [v6 xValue];
    v75 = vabdd_f64(v74, *(*(*(a1 + 96) + 8) + 24));
    v76 = v75 < *(a1 + 176) || v75 > *(a1 + 184);
    v77 = v103;
    v78 = *(*(*(a1 + 104) + 8) + 40);
    if (v78 && (v79 = *(*(*(a1 + 112) + 8) + 24), v79 < v8 && !v76))
    {
      v81 = MEMORY[0x1E696B098];
      [v78 doubleValue];
      v83 = [v81 valueWithCGPoint:{v79, v82}];
      v77 = v103;
      v80 = v83;
    }

    else
    {
      v80 = 0;
    }

    v84 = *(*(*(a1 + 120) + 8) + 40);
    if (v84 && (v85 = *(*(*(a1 + 112) + 8) + 24), v85 < v8 && !v76))
    {
      v87 = MEMORY[0x1E696B098];
      [v84 doubleValue];
      v89 = [v87 valueWithCGPoint:{v85, v88}];
      v77 = v103;
      v86 = v89;
    }

    else
    {
      v86 = 0;
    }

    [*(a1 + 48) addGoalLinePathsToCoordinate:v77 upperGoalLinePath:*(a1 + 56) upperGoalMarkerPoints:*(a1 + 64) previousUpperGoalLinePoint:v80 lowerGoalLinePath:*(a1 + 72) lowerGoalMarkerPoints:*(a1 + 80) previousLowerGoalLinePoint:*(a1 + 192) axisRect:{*(a1 + 200), *(a1 + 208), *(a1 + 216), v86}];
    if (v8 <= *(a1 + 160))
    {
      v90 = [v6 upperGoalYValue];
      v91 = *(*(a1 + 128) + 8);
      v92 = *(v91 + 40);
      *(v91 + 40) = v90;

      v93 = [v6 lowerGoalYValue];
      v94 = *(*(a1 + 136) + 8);
      v95 = *(v94 + 40);
      *(v94 + 40) = v93;
    }

    [v6 xValue];
    *(*(*(a1 + 96) + 8) + 24) = v96;
    v97 = [v103 upperGoalYValue];
    v98 = *(*(a1 + 104) + 8);
    v99 = *(v98 + 40);
    *(v98 + 40) = v97;

    v100 = [v103 lowerGoalYValue];
    v101 = *(*(a1 + 120) + 8);
    v102 = *(v101 + 40);
    *(v101 + 40) = v100;

    *(*(*(a1 + 112) + 8) + 24) = v8;
  }
}

- (void)addGoalLinePathsToCoordinate:(id)a3 upperGoalLinePath:(id)a4 upperGoalMarkerPoints:(id)a5 previousUpperGoalLinePoint:(id)a6 lowerGoalLinePath:(id)a7 lowerGoalMarkerPoints:(id)a8 previousLowerGoalLinePoint:(id)a9 axisRect:(CGRect)a10
{
  v34 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  [v34 xValue];
  v22 = v21;
  v23 = [v34 upperGoalYValue];

  v24 = v34;
  if (v23)
  {
    v25 = [v34 upperGoalYValue];
    [v25 doubleValue];
    v27 = v26;

    if (v17)
    {
      [v17 CGPointValue];
      [v15 moveToPoint:?];
      [v15 addLineToPoint:{v22, v27}];
    }

    v28 = [MEMORY[0x1E696B098] valueWithCGPoint:{v22, v27}];
    [v16 addObject:v28];

    v24 = v34;
  }

  v29 = [v24 lowerGoalYValue];

  if (v29)
  {
    v30 = [v34 lowerGoalYValue];
    [v30 doubleValue];
    v32 = v31;

    if (v20)
    {
      [v20 CGPointValue];
      [v18 moveToPoint:?];
      [v18 addLineToPoint:{v22, v32}];
    }

    v33 = [MEMORY[0x1E696B098] valueWithCGPoint:{v22, v32}];
    [v19 addObject:v33];
  }
}

- (void)drawGoalLinePath:(id)a3 goalMarkerPoints:(id)a4 markerImage:(id)a5 context:(CGContext *)a6
{
  v37 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (([v10 isEmpty] & 1) == 0)
  {
    v13 = [(HKSleepPeriodSeries *)self goalLineStrokeStyle];

    if (v13)
    {
      CGContextSaveGState(a6);
      v14 = [(HKSleepPeriodSeries *)self goalLineStrokeStyle];
      [v14 applyToContext:a6];

      CGContextAddPath(a6, [v10 CGPath]);
      CGContextStrokePath(a6);
      CGContextRestoreGState(a6);
    }
  }

  if (v12)
  {
    CGContextSaveGState(a6);
    v15 = HKChartSeriesPointMarkerBaseRect(v12);
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = [v12 CGImage];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v23 = v11;
    v24 = [v23 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v33;
      do
      {
        v27 = 0;
        do
        {
          if (*v33 != v26)
          {
            objc_enumerationMutation(v23);
          }

          [*(*(&v32 + 1) + 8 * v27) CGPointValue];
          v29 = v28;
          v31 = v30;
          v38.origin.x = v15;
          v38.origin.y = v17;
          v38.size.width = v19;
          v38.size.height = v21;
          v39 = CGRectOffset(v38, v29, v31);
          CGContextDrawImage(a6, v39, v22);
          ++v27;
        }

        while (v25 != v27);
        v25 = [v23 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v25);
    }

    CGContextRestoreGState(a6);
  }
}

- (void)drawPaths:(id)a3 withFillStyles:(id)a4 strokeStyle:(id)a5 axisRect:(CGRect)a6 context:(CGContext *)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v35 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  if (v17)
  {
    v18 = [MEMORY[0x1E69DC728] bezierPath];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v19 = v15;
    v20 = [v19 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v31;
      do
      {
        v23 = 0;
        do
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [v18 appendPath:{*(*(&v30 + 1) + 8 * v23++), v30}];
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v21);
    }

    CGContextSaveGState(a7);
    [v17 applyToContext:a7];
    CGContextAddPath(a7, [v18 CGPath]);
    CGContextStrokePath(a7);
    CGContextRestoreGState(a7);
  }

  if ([v15 count])
  {
    v24 = 0;
    do
    {
      v25 = [v15 objectAtIndexedSubscript:v24];
      if (([v25 isEmpty] & 1) == 0 && v24 < objc_msgSend(v16, "count"))
      {
        v26 = [v16 objectAtIndexedSubscript:v24];
        if (v26)
        {
          v27 = v26;
          v28 = [v25 CGPath];
          [(HKGraphSeries *)self alpha];
          [v27 renderPath:v28 context:a7 axisRect:x alpha:{y, width, height, v29}];
        }
      }

      ++v24;
    }

    while (v24 < [v15 count]);
  }
}

- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6
{
  v11 = a5;
  v12 = a6;
  v13 = [a3 chartPoints];
  if (!v13)
  {
    [HKSleepPeriodSeries coordinatesForBlock:a2 blockPath:self xAxis:? yAxis:?];
  }

  v14 = [v11 transform];
  v15 = [v12 transform];

  v16 = objc_opt_new();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __65__HKSleepPeriodSeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke;
  v24[3] = &unk_1E81BA8E8;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v17 = v16;
  v18 = v15;
  v19 = v14;
  [v13 enumerateObjectsUsingBlock:v24];
  v22 = *&a4->index;
  resolution = a4->resolution;
  v20 = [HKGraphSeriesBlockCoordinateList coordinateListWithCoordinates:v17 blockPath:&v22];

  return v20;
}

void __65__HKSleepPeriodSeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 yValue];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v3 xValueAsGenericType];
    [v5 coordinateForValue:v6];
    v8 = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v10 = [v3 allYValues];
    v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v31;
      do
      {
        v14 = 0;
        do
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(a1 + 40) coordinateForValue:*(*(&v30 + 1) + 8 * v14)];
          v15 = [MEMORY[0x1E696AD98] numberWithDouble:?];
          [v9 addObject:v15];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v12);
    }

    v16 = [v3 upperGoal];

    if (v16)
    {
      v17 = MEMORY[0x1E696AD98];
      v18 = *(a1 + 40);
      v19 = [v3 upperGoal];
      [v18 coordinateForValue:v19];
      v16 = [v17 numberWithDouble:?];
    }

    v20 = [v3 lowerGoal];

    if (v20)
    {
      v21 = MEMORY[0x1E696AD98];
      v22 = *(a1 + 40);
      v23 = [v3 lowerGoal];
      [v22 coordinateForValue:v23];
      v20 = [v21 numberWithDouble:?];
    }

    v24 = [v3 userInfo];
    v25 = [HKSleepPeriodCoordinate alloc];
    v26 = [v3 asleepOffsets];
    v27 = [v3 inBedOffsets];
    v28 = [v3 allYValues];
    v29 = -[HKSleepPeriodCoordinate initWithXValue:asleepYValues:inBedYValues:yValues:upperGoalYValue:lowerGoalYValue:highlighted:userInfo:](v25, "initWithXValue:asleepYValues:inBedYValues:yValues:upperGoalYValue:lowerGoalYValue:highlighted:userInfo:", v26, v27, v28, v16, v20, [v3 highlighted], v8, v24);

    [*(a1 + 48) addObject:v29];
  }
}

- (double)distanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  [(HKSleepPeriodSeries *)self _assertCoordinateCompatibility:v6];
  v7 = v6;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [v7 yValues];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    v12 = 1.79769313e308;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        [v7 xValue];
        [v14 doubleValue];
        UIDistanceBetweenPoints();
        if (v12 >= v15)
        {
          v12 = v15;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = 1.79769313e308;
  }

  return v12;
}

- (double)xAxisDistanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  x = a3.x;
  [a4 startXValue];
  return vabdd_f64(v6, x);
}

- (double)yAxisDifferenceToPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  y = a3.y;
  v21 = *MEMORY[0x1E69E9840];
  v7 = a4;
  [(HKSleepPeriodSeries *)self _assertCoordinateCompatibility:v7];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v7 yValues];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    v12 = 1.79769313e308;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v16 + 1) + 8 * i) doubleValue];
        if (vabdd_f64(v14, y) < fabs(v12))
        {
          v12 = v14 - y;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = 1.79769313e308;
  }

  return v12;
}

- (void)_assertCoordinateCompatibility:(id)a3
{
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [(HKSleepPeriodSeries *)a2 _assertCoordinateCompatibility:?];
  }
}

- (BOOL)blockCoordinateIsVisibleInsideOfChartRect:(CGRect)a3 blockCoordinate:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a4;
  [v8 startXValue];
  v10 = v9;
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  if (v10 >= CGRectGetMinX(v15))
  {
    [v8 endXValue];
    v13 = v12;
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    v11 = v13 <= CGRectGetMaxX(v16);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (double)_minimumYForCoordinate:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a3 yValues];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = 1.79769313e308;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v11 + 1) + 8 * i) doubleValue];
        if (v7 >= v9)
        {
          v7 = v9;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 1.79769313e308;
  }

  return v7;
}

- (double)_maximumYForCoordinate:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a3 yValues];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    v7 = -1.79769313e308;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v11 + 1) + 8 * i) doubleValue];
        if (v7 < v9)
        {
          v7 = v9;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = -1.79769313e308;
  }

  return v7;
}

- (BOOL)blockCoordinate:(id)a3 lessThan:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(HKSleepPeriodSeries *)self _assertCoordinateCompatibility:v7];
  [(HKSleepPeriodSeries *)self _minimumYForCoordinate:v7];
  v9 = v8;

  [(HKSleepPeriodSeries *)self _minimumYForCoordinate:v6];
  v11 = v10;

  return v9 < v11;
}

- (BOOL)blockCoordinate:(id)a3 greaterThan:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(HKSleepPeriodSeries *)self _assertCoordinateCompatibility:v7];
  [(HKSleepPeriodSeries *)self _maximumYForCoordinate:v7];
  v9 = v8;

  [(HKSleepPeriodSeries *)self _maximumYForCoordinate:v6];
  v11 = v10;

  return v9 > v11;
}

- (id)marginsForYAxis:(id)a3 xAxisRange:(id)a4 zoomLevel:(int64_t)a5 chartRect:(CGRect)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [(HKSleepPeriodSeries *)self goalLineStrokeStyle];
  if ((v11 || ![(HKGraphSeries *)self allowsSelection]) && (v11, v9))
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v12 = [v9 minValue];
    [v12 doubleValue];
    v14 = v13;

    v30 = v14;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v15 = [v9 maxValue];
    [v15 doubleValue];
    v17 = v16;

    v26 = v17;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __70__HKSleepPeriodSeries_marginsForYAxis_xAxisRange_zoomLevel_chartRect___block_invoke;
    v22[3] = &unk_1E81BA960;
    v22[4] = &v27;
    v22[5] = &v23;
    [(HKGraphSeries *)self enumerateChartPointsInRange:v10 zoomLevel:a5 resolution:0 block:v22];
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:v28[3]];
    v19 = [MEMORY[0x1E696AD98] numberWithDouble:v24[3]];
    v20 = [HKValueRange valueRangeWithMinValue:v18 maxValue:v19];

    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v20 = v9;
  }

  return v20;
}

uint64_t __70__HKSleepPeriodSeries_marginsForYAxis_xAxisRange_zoomLevel_chartRect___block_invoke(uint64_t a1, void *a2)
{
  v19 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v19;
  if (isKindOfClass)
  {
    v5 = v19;
    v6 = [v5 upperGoal];

    if (v6)
    {
      v7 = *(*(*(a1 + 32) + 8) + 24);
      v8 = [v5 upperGoal];
      [v8 doubleValue];
      v10 = v9;

      if (v7 >= v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = v7;
      }

      *(*(*(a1 + 32) + 8) + 24) = v11;
    }

    v12 = [v5 lowerGoal];

    if (v12)
    {
      v13 = *(*(*(a1 + 40) + 8) + 24);
      v14 = [v5 lowerGoal];
      [v14 doubleValue];
      v16 = v15;

      if (v13 >= v16)
      {
        v17 = v13;
      }

      else
      {
        v17 = v16;
      }

      *(*(*(a1 + 40) + 8) + 24) = v17;
    }

    v4 = v19;
  }

  return MEMORY[0x1EEE66BB8](isKindOfClass, v4);
}

- (void)addAnnotationForValue:(double)a3 axisAnnotationDelegate:(id)a4
{
  if (a4)
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = a4;
    v10 = [v6 numberWithDouble:a3];
    v8 = [(HKSleepPeriodSeries *)self _stringFromTimeSinceNoon:v10];
    v9 = [(HKSleepPeriodSeries *)self _attributedAxisString:v8];
    [v7 addAxisAnnotation:v9 forSeries:self modelCoordinate:v10];
  }
}

- (id)_stringFromTimeSinceNoon:(id)a3
{
  v4 = MEMORY[0x1E695DEE8];
  v5 = a3;
  v6 = [v4 currentCalendar];
  v7 = [(HKSleepPeriodSeries *)self startOfDayTransform];

  if (v7)
  {
    v8 = [(HKSleepPeriodSeries *)self startOfDayTransform];
    v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];
    v10 = (v8)[2](v8, v6, v9);
  }

  else
  {
    v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];
    v10 = [v6 startOfDayForDate:v8];
  }

  [v5 doubleValue];
  v12 = v11;

  v13 = [v10 dateByAddingTimeInterval:v12];
  v14 = HKLocalizedStringForDateAndTemplate(v13, 28);

  return v14;
}

- (id)_attributedAxisString:(id)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = *MEMORY[0x1E69DB648];
  v3 = MEMORY[0x1E69DB878];
  v4 = a3;
  v5 = [v3 hk_chartAxisLabelFont];
  v11[0] = v5;
  v10[1] = *MEMORY[0x1E69DB650];
  v6 = [MEMORY[0x1E69DC888] hk_sleepAsleepColor];
  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v4 attributes:v7];

  return v8;
}

+ (id)_sleepCircleImageWithWidth:(double)a3 diameter:(double)a4 color:(id)a5
{
  v7 = a5;
  v13.width = a3;
  v13.height = a3;
  UIGraphicsBeginImageContextWithOptions(v13, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v9 = [v7 CGColor];

  CGContextSetFillColorWithColor(CurrentContext, v9);
  v14.origin.x = a3 * 0.5 - a4 * 0.5;
  v14.origin.y = v14.origin.x;
  v14.size.width = a4;
  v14.size.height = a4;
  CGContextFillEllipseInRect(CurrentContext, v14);
  v10 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v10;
}

+ (id)asleepImageCompatibleWithFont:(id)a3 withColor:(id)a4
{
  v6 = a4;
  [a3 capHeight];
  v8 = [a1 _sleepCircleImageWithWidth:v6 diameter:v7 color:v7];

  return v8;
}

+ (id)inBedImageCompatibleWithFont:(id)a3 withColor:(id)a4
{
  v6 = a4;
  [a3 capHeight];
  v8 = [a1 _sleepCircleImageWithWidth:v6 diameter:v7 color:v7];

  return v8;
}

- (CGSize)cornerRadii
{
  width = self->_cornerRadii.width;
  height = self->_cornerRadii.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)cornerRadiiStorage
{
  width = self->_cornerRadiiStorage.width;
  height = self->_cornerRadiiStorage.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)coordinatesForBlock:(uint64_t)a1 blockPath:(uint64_t)a2 xAxis:yAxis:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKSleepPeriodSeries.m" lineNumber:611 description:{@"Invalid parameter not satisfying: %@", @"points != nil"}];
}

- (void)_assertCoordinateCompatibility:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKSleepPeriodSeries.m" lineNumber:695 description:{@"Invalid parameter not satisfying: %@", @"[coordinate isKindOfClass:[HKSleepPeriodCoordinate class]]"}];
}

@end