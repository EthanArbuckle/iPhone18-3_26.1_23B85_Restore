@interface HKSleepPeriodSeries
+ (id)_sleepCircleImageWithWidth:(double)width diameter:(double)diameter color:(id)color;
+ (id)asleepImageCompatibleWithFont:(id)font withColor:(id)color;
+ (id)inBedImageCompatibleWithFont:(id)font withColor:(id)color;
- (BOOL)blockCoordinate:(id)coordinate greaterThan:(id)than;
- (BOOL)blockCoordinate:(id)coordinate lessThan:(id)than;
- (BOOL)blockCoordinateIsVisibleInsideOfChartRect:(CGRect)rect blockCoordinate:(id)coordinate;
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
- (double)_maximumYForCoordinate:(id)coordinate;
- (double)_minimumYForCoordinate:(id)coordinate;
- (double)barWidthForVisibleBarCount:(int64_t)count axisRect:(CGRect)rect minimumSpacing:(double)spacing;
- (double)distanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (double)xAxisDistanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (double)yAxisDifferenceToPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (id)_attributedAxisString:(id)string;
- (id)_stringFromTimeSinceNoon:(id)noon;
- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis;
- (id)marginsForYAxis:(id)axis xAxisRange:(id)range zoomLevel:(int64_t)level chartRect:(CGRect)rect;
- (id)startOfDayTransform;
- (int64_t)visibleBarCountWithZoomLevelConfiguration:(id)configuration;
- (void)_assertCoordinateCompatibility:(id)compatibility;
- (void)_drawWithBlockCoordinates:(id)coordinates visibleBarCount:(int64_t)count pointTransform:(CGAffineTransform *)transform context:(CGContext *)context axisRect:(CGRect)rect axisResolution:(double)resolution seriesRenderingDelegate:(id)delegate;
- (void)addAnnotationForValue:(double)value axisAnnotationDelegate:(id)delegate;
- (void)addGoalLinePathsToCoordinate:(id)coordinate upperGoalLinePath:(id)path upperGoalMarkerPoints:(id)points previousUpperGoalLinePoint:(id)point lowerGoalLinePath:(id)linePath lowerGoalMarkerPoints:(id)markerPoints previousLowerGoalLinePoint:(id)linePoint axisRect:(CGRect)self0;
- (void)clearCaches;
- (void)drawGoalLinePath:(id)path goalMarkerPoints:(id)points markerImage:(id)image context:(CGContext *)context;
- (void)drawPaths:(id)paths withFillStyles:(id)styles strokeStyle:(id)style axisRect:(CGRect)rect context:(CGContext *)context;
- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate;
- (void)setDefaultFillStyles:(id)styles;
- (void)setGoalLineStrokeStyle:(id)style;
- (void)setHighlightedFillStyles:(id)styles;
- (void)setInactiveFillStyles:(id)styles;
- (void)setLowerGoalLineMarkerStyle:(id)style;
- (void)setStartOfDayTransform:(id)transform;
- (void)setStrokeStyle:(id)style;
- (void)setTiledStrokeStyle:(id)style;
- (void)setUpperGoalLineMarkerStyle:(id)style;
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
  seriesMutableStateLock = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_strokeStyleStorage;
  seriesMutableStateLock2 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setStrokeStyle:(id)style
{
  styleCopy = style;
  seriesMutableStateLock = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v6 = [styleCopy copy];
  strokeStyleStorage = self->_strokeStyleStorage;
  self->_strokeStyleStorage = v6;

  seriesMutableStateLock2 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (HKStrokeStyle)tiledStrokeStyle
{
  seriesMutableStateLock = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_tiledStrokeStyleStorage;
  seriesMutableStateLock2 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setTiledStrokeStyle:(id)style
{
  styleCopy = style;
  seriesMutableStateLock = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v6 = [styleCopy copy];
  tiledStrokeStyleStorage = self->_tiledStrokeStyleStorage;
  self->_tiledStrokeStyleStorage = v6;

  seriesMutableStateLock2 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (NSArray)defaultFillStyles
{
  seriesMutableStateLock = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_defaultFillStylesStorage;
  seriesMutableStateLock2 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setDefaultFillStyles:(id)styles
{
  stylesCopy = styles;
  seriesMutableStateLock = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v6 = [stylesCopy copy];
  defaultFillStylesStorage = self->_defaultFillStylesStorage;
  self->_defaultFillStylesStorage = v6;

  seriesMutableStateLock2 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (NSArray)highlightedFillStyles
{
  seriesMutableStateLock = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_highlightedFillStylesStorage;
  seriesMutableStateLock2 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setHighlightedFillStyles:(id)styles
{
  stylesCopy = styles;
  seriesMutableStateLock = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v6 = [stylesCopy copy];
  highlightedFillStylesStorage = self->_highlightedFillStylesStorage;
  self->_highlightedFillStylesStorage = v6;

  seriesMutableStateLock2 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (NSArray)inactiveFillStyles
{
  seriesMutableStateLock = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_inactiveFillStylesStorage;
  seriesMutableStateLock2 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setInactiveFillStyles:(id)styles
{
  stylesCopy = styles;
  seriesMutableStateLock = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v6 = [stylesCopy copy];
  inactiveFillStylesStorage = self->_inactiveFillStylesStorage;
  self->_inactiveFillStylesStorage = v6;

  seriesMutableStateLock2 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (HKStrokeStyle)goalLineStrokeStyle
{
  seriesMutableStateLock = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_goalLineStrokeStyleStorage;
  seriesMutableStateLock2 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setGoalLineStrokeStyle:(id)style
{
  styleCopy = style;
  seriesMutableStateLock = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v6 = [styleCopy copy];
  goalLineStrokeStyleStorage = self->_goalLineStrokeStyleStorage;
  self->_goalLineStrokeStyleStorage = v6;

  seriesMutableStateLock2 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (HKLineSeriesPointMarkerStyle)upperGoalLineMarkerStyle
{
  seriesMutableStateLock = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_upperGoalLineMarkerStyleStorage;
  seriesMutableStateLock2 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setUpperGoalLineMarkerStyle:(id)style
{
  styleCopy = style;
  seriesMutableStateLock = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  upperGoalLineMarkerStyleStorage = self->_upperGoalLineMarkerStyleStorage;
  self->_upperGoalLineMarkerStyleStorage = styleCopy;

  seriesMutableStateLock2 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (HKLineSeriesPointMarkerStyle)lowerGoalLineMarkerStyle
{
  seriesMutableStateLock = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_lowerGoalLineMarkerStyleStorage;
  seriesMutableStateLock2 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setLowerGoalLineMarkerStyle:(id)style
{
  styleCopy = style;
  seriesMutableStateLock = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  lowerGoalLineMarkerStyleStorage = self->_lowerGoalLineMarkerStyleStorage;
  self->_lowerGoalLineMarkerStyleStorage = styleCopy;

  seriesMutableStateLock2 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (id)startOfDayTransform
{
  seriesMutableStateLock = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = _Block_copy(self->_startOfDayTransformStorage);
  seriesMutableStateLock2 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  v6 = _Block_copy(v4);

  return v6;
}

- (void)setStartOfDayTransform:(id)transform
{
  transformCopy = transform;
  seriesMutableStateLock = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v6 = [transformCopy copy];
  startOfDayTransformStorage = self->_startOfDayTransformStorage;
  self->_startOfDayTransformStorage = v6;

  seriesMutableStateLock2 = [(HKSleepPeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (void)clearCaches
{
  v34 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  defaultFillStyles = [(HKSleepPeriodSeries *)self defaultFillStyles];
  v4 = [defaultFillStyles countByEnumeratingWithState:&v27 objects:v33 count:16];
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
          objc_enumerationMutation(defaultFillStyles);
        }

        [*(*(&v27 + 1) + 8 * v7++) clearCache];
      }

      while (v5 != v7);
      v5 = [defaultFillStyles countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v5);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  highlightedFillStyles = [(HKSleepPeriodSeries *)self highlightedFillStyles];
  v9 = [highlightedFillStyles countByEnumeratingWithState:&v23 objects:v32 count:16];
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
          objc_enumerationMutation(highlightedFillStyles);
        }

        [*(*(&v23 + 1) + 8 * v12++) clearCache];
      }

      while (v10 != v12);
      v10 = [highlightedFillStyles countByEnumeratingWithState:&v23 objects:v32 count:16];
    }

    while (v10);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  inactiveFillStyles = [(HKSleepPeriodSeries *)self inactiveFillStyles];
  v14 = [inactiveFillStyles countByEnumeratingWithState:&v19 objects:v31 count:16];
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
          objc_enumerationMutation(inactiveFillStyles);
        }

        [*(*(&v19 + 1) + 8 * v17++) clearCache];
      }

      while (v15 != v17);
      v15 = [inactiveFillStyles countByEnumeratingWithState:&v19 objects:v31 count:16];
    }

    while (v15);
  }

  v18.receiver = self;
  v18.super_class = HKSleepPeriodSeries;
  [(HKGraphSeries *)&v18 clearCaches];
}

- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  coordinatesCopy = coordinates;
  configurationCopy = configuration;
  delegateCopy = delegate;
  defaultFillStyles = [(HKSleepPeriodSeries *)self defaultFillStyles];
  if (defaultFillStyles)
  {

LABEL_4:
    v23 = [(HKSleepPeriodSeries *)self visibleBarCountWithZoomLevelConfiguration:configurationCopy];
    [configurationCopy approximateSeriesPointIntervalAtResolution:0];
    v24 = *&transform->c;
    v26[0] = *&transform->a;
    v26[1] = v24;
    v26[2] = *&transform->tx;
    [(HKSleepPeriodSeries *)self _drawWithBlockCoordinates:coordinatesCopy visibleBarCount:v23 pointTransform:v26 context:context axisRect:delegateCopy axisResolution:x seriesRenderingDelegate:y, width, height, v25];
    goto LABEL_5;
  }

  highlightedFillStyles = [(HKSleepPeriodSeries *)self highlightedFillStyles];

  if (highlightedFillStyles)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (int64_t)visibleBarCountWithZoomLevelConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [configurationCopy canonicalSize];
  v5 = v4;
  v6 = [configurationCopy seriesPointIntervalComponentsAtResolution:0];

  [v6 hk_approximateDuration];
  v8 = vcvtmd_s64_f64(v5 / fmax(v7, 1.0));

  return v8;
}

- (double)barWidthForVisibleBarCount:(int64_t)count axisRect:(CGRect)rect minimumSpacing:(double)spacing
{
  v5 = rect.size.width / count;
  spacingCopy = v5 * 0.33;
  if (v5 * 0.33 <= spacing)
  {
    spacingCopy = spacing;
  }

  result = round(v5 - spacingCopy);
  if (result > 29.0)
  {
    return 29.0;
  }

  return result;
}

- (void)_drawWithBlockCoordinates:(id)coordinates visibleBarCount:(int64_t)count pointTransform:(CGAffineTransform *)transform context:(CGContext *)context axisRect:(CGRect)rect axisResolution:(double)resolution seriesRenderingDelegate:(id)delegate
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v117[2] = *MEMORY[0x1E69E9840];
  coordinatesCopy = coordinates;
  delegateCopy = delegate;
  seriesDrawingDuringTiling = [delegateCopy seriesDrawingDuringTiling];
  if (seriesDrawingDuringTiling && ([(HKSleepPeriodSeries *)self tiledStrokeStyle], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    tiledStrokeStyle = [(HKSleepPeriodSeries *)self tiledStrokeStyle];
  }

  else
  {
    tiledStrokeStyle = [(HKSleepPeriodSeries *)self strokeStyle];
  }

  [tiledStrokeStyle lineWidth];
  v21 = v20;
  [delegateCopy screenRectForSeries:self];
  [HKSleepPeriodSeries barWidthForVisibleBarCount:"barWidthForVisibleBarCount:axisRect:minimumSpacing:" axisRect:count minimumSpacing:?];
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
  bezierPath = [MEMORY[0x1E69DC728] bezierPath];
  v117[0] = bezierPath;
  bezierPath2 = [MEMORY[0x1E69DC728] bezierPath];
  v117[1] = bezierPath2;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:2];
  v28 = [v27 mutableCopy];

  bezierPath3 = [MEMORY[0x1E69DC728] bezierPath];
  v116[0] = bezierPath3;
  bezierPath4 = [MEMORY[0x1E69DC728] bezierPath];
  v116[1] = bezierPath4;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v116 count:2];
  v32 = [v31 mutableCopy];

  bezierPath5 = [MEMORY[0x1E69DC728] bezierPath];
  bezierPath6 = [MEMORY[0x1E69DC728] bezierPath];
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
  v38 = resolution / 86400.0 * 0.05;
  v69[1] = 3221225472;
  v39 = resolution / 86400.0 - v38;
  v69[0] = MEMORY[0x1E69E9820];
  v69[2] = __136__HKSleepPeriodSeries__drawWithBlockCoordinates_visibleBarCount_pointTransform_context_axisRect_axisResolution_seriesRenderingDelegate___block_invoke;
  v69[3] = &unk_1E81BA938;
  v40 = resolution / 86400.0 + v38;
  v84 = MinX;
  v85 = v37;
  v86 = MaxX;
  v64 = v28;
  v70 = v64;
  v62 = v32;
  v71 = v62;
  selfCopy = self;
  v77 = &v94;
  v78 = v103;
  v87 = v23;
  v88 = v39;
  v89 = v40;
  v79 = v101;
  v80 = v98;
  v81 = v99;
  v61 = bezierPath5;
  v73 = v61;
  v41 = v35;
  v74 = v41;
  v42 = bezierPath6;
  v75 = v42;
  v43 = v36;
  v90 = x;
  v91 = y;
  v92 = width;
  v93 = height;
  v76 = v43;
  v82 = &v110;
  v83 = &v104;
  v44 = *&transform->c;
  v68[0] = *&transform->a;
  v68[1] = v44;
  v68[2] = *&transform->tx;
  [coordinatesCopy enumerateCoordinatesWithTransform:v68 roundToViewScale:1 block:v69];
  if ([(HKGraphSeries *)self allowsSelection])
  {
    [(HKSleepPeriodSeries *)self defaultFillStyles];
  }

  else
  {
    [(HKSleepPeriodSeries *)self inactiveFillStyles];
  }
  v45 = ;
  [(HKSleepPeriodSeries *)self drawPaths:v64 withFillStyles:v45 strokeStyle:tiledStrokeStyle axisRect:context context:x, y, width, height];
  highlightedFillStyles = [(HKSleepPeriodSeries *)self highlightedFillStyles];
  defaultFillStyles = highlightedFillStyles;
  if (!highlightedFillStyles)
  {
    defaultFillStyles = [(HKSleepPeriodSeries *)self defaultFillStyles];
  }

  [(HKSleepPeriodSeries *)self drawPaths:v62 withFillStyles:defaultFillStyles strokeStyle:tiledStrokeStyle axisRect:context context:x, y, width, height];
  if (!highlightedFillStyles)
  {
  }

  upperGoalLineMarkerStyle = [(HKSleepPeriodSeries *)self upperGoalLineMarkerStyle];
  if (upperGoalLineMarkerStyle)
  {
    upperGoalLineMarkerStyle2 = [(HKSleepPeriodSeries *)self upperGoalLineMarkerStyle];
    v50 = [HKChartSeriesPointMarker chartPointWithLineSeriesPresentationStyle:upperGoalLineMarkerStyle2];
  }

  else
  {
    v50 = 0;
  }

  lowerGoalLineMarkerStyle = [(HKSleepPeriodSeries *)self lowerGoalLineMarkerStyle];
  if (lowerGoalLineMarkerStyle)
  {
    lowerGoalLineMarkerStyle2 = [(HKSleepPeriodSeries *)self lowerGoalLineMarkerStyle];
    v53 = [HKChartSeriesPointMarker chartPointWithLineSeriesPresentationStyle:lowerGoalLineMarkerStyle2];
  }

  else
  {
    v53 = 0;
  }

  [(HKSleepPeriodSeries *)self drawGoalLinePath:v61 goalMarkerPoints:v41 markerImage:v50 context:context];
  [(HKSleepPeriodSeries *)self drawGoalLinePath:v42 goalMarkerPoints:v43 markerImage:v53 context:context];
  goalLineStrokeStyle = [(HKSleepPeriodSeries *)self goalLineStrokeStyle];
  v55 = goalLineStrokeStyle == 0;

  if (!v55)
  {
    v56 = [delegateCopy axisAnnotationDelegateForSeries:self];
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

  if (((seriesDrawingDuringTiling | [delegateCopy measuringStartupTime] ^ 1) & 1) == 0 && v95[3] >= 1)
  {
    delegate = [(HKGraphSeries *)self delegate];
    [delegate nonemptyDrawComplete];
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

- (void)addGoalLinePathsToCoordinate:(id)coordinate upperGoalLinePath:(id)path upperGoalMarkerPoints:(id)points previousUpperGoalLinePoint:(id)point lowerGoalLinePath:(id)linePath lowerGoalMarkerPoints:(id)markerPoints previousLowerGoalLinePoint:(id)linePoint axisRect:(CGRect)self0
{
  coordinateCopy = coordinate;
  pathCopy = path;
  pointsCopy = points;
  pointCopy = point;
  linePathCopy = linePath;
  markerPointsCopy = markerPoints;
  linePointCopy = linePoint;
  [coordinateCopy xValue];
  v22 = v21;
  upperGoalYValue = [coordinateCopy upperGoalYValue];

  v24 = coordinateCopy;
  if (upperGoalYValue)
  {
    upperGoalYValue2 = [coordinateCopy upperGoalYValue];
    [upperGoalYValue2 doubleValue];
    v27 = v26;

    if (pointCopy)
    {
      [pointCopy CGPointValue];
      [pathCopy moveToPoint:?];
      [pathCopy addLineToPoint:{v22, v27}];
    }

    v28 = [MEMORY[0x1E696B098] valueWithCGPoint:{v22, v27}];
    [pointsCopy addObject:v28];

    v24 = coordinateCopy;
  }

  lowerGoalYValue = [v24 lowerGoalYValue];

  if (lowerGoalYValue)
  {
    lowerGoalYValue2 = [coordinateCopy lowerGoalYValue];
    [lowerGoalYValue2 doubleValue];
    v32 = v31;

    if (linePointCopy)
    {
      [linePointCopy CGPointValue];
      [linePathCopy moveToPoint:?];
      [linePathCopy addLineToPoint:{v22, v32}];
    }

    v33 = [MEMORY[0x1E696B098] valueWithCGPoint:{v22, v32}];
    [markerPointsCopy addObject:v33];
  }
}

- (void)drawGoalLinePath:(id)path goalMarkerPoints:(id)points markerImage:(id)image context:(CGContext *)context
{
  v37 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  pointsCopy = points;
  imageCopy = image;
  if (([pathCopy isEmpty] & 1) == 0)
  {
    goalLineStrokeStyle = [(HKSleepPeriodSeries *)self goalLineStrokeStyle];

    if (goalLineStrokeStyle)
    {
      CGContextSaveGState(context);
      goalLineStrokeStyle2 = [(HKSleepPeriodSeries *)self goalLineStrokeStyle];
      [goalLineStrokeStyle2 applyToContext:context];

      CGContextAddPath(context, [pathCopy CGPath]);
      CGContextStrokePath(context);
      CGContextRestoreGState(context);
    }
  }

  if (imageCopy)
  {
    CGContextSaveGState(context);
    v15 = HKChartSeriesPointMarkerBaseRect(imageCopy);
    v17 = v16;
    v19 = v18;
    v21 = v20;
    cGImage = [imageCopy CGImage];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v23 = pointsCopy;
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
          CGContextDrawImage(context, v39, cGImage);
          ++v27;
        }

        while (v25 != v27);
        v25 = [v23 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v25);
    }

    CGContextRestoreGState(context);
  }
}

- (void)drawPaths:(id)paths withFillStyles:(id)styles strokeStyle:(id)style axisRect:(CGRect)rect context:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v35 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  stylesCopy = styles;
  styleCopy = style;
  if (styleCopy)
  {
    bezierPath = [MEMORY[0x1E69DC728] bezierPath];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v19 = pathsCopy;
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

          [bezierPath appendPath:{*(*(&v30 + 1) + 8 * v23++), v30}];
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v21);
    }

    CGContextSaveGState(context);
    [styleCopy applyToContext:context];
    CGContextAddPath(context, [bezierPath CGPath]);
    CGContextStrokePath(context);
    CGContextRestoreGState(context);
  }

  if ([pathsCopy count])
  {
    v24 = 0;
    do
    {
      v25 = [pathsCopy objectAtIndexedSubscript:v24];
      if (([v25 isEmpty] & 1) == 0 && v24 < objc_msgSend(stylesCopy, "count"))
      {
        v26 = [stylesCopy objectAtIndexedSubscript:v24];
        if (v26)
        {
          v27 = v26;
          cGPath = [v25 CGPath];
          [(HKGraphSeries *)self alpha];
          [v27 renderPath:cGPath context:context axisRect:x alpha:{y, width, height, v29}];
        }
      }

      ++v24;
    }

    while (v24 < [pathsCopy count]);
  }
}

- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis
{
  axisCopy = axis;
  yAxisCopy = yAxis;
  chartPoints = [block chartPoints];
  if (!chartPoints)
  {
    [HKSleepPeriodSeries coordinatesForBlock:a2 blockPath:self xAxis:? yAxis:?];
  }

  transform = [axisCopy transform];
  transform2 = [yAxisCopy transform];

  v16 = objc_opt_new();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __65__HKSleepPeriodSeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke;
  v24[3] = &unk_1E81BA8E8;
  v25 = transform;
  v26 = transform2;
  v27 = v16;
  v17 = v16;
  v18 = transform2;
  v19 = transform;
  [chartPoints enumerateObjectsUsingBlock:v24];
  v22 = *&path->index;
  resolution = path->resolution;
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

- (double)distanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  v22 = *MEMORY[0x1E69E9840];
  coordinateCopy = coordinate;
  [(HKSleepPeriodSeries *)self _assertCoordinateCompatibility:coordinateCopy];
  v7 = coordinateCopy;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  yValues = [v7 yValues];
  v9 = [yValues countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(yValues);
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

      v10 = [yValues countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = 1.79769313e308;
  }

  return v12;
}

- (double)xAxisDistanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  x = point.x;
  [coordinate startXValue];
  return vabdd_f64(v6, x);
}

- (double)yAxisDifferenceToPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  y = point.y;
  v21 = *MEMORY[0x1E69E9840];
  coordinateCopy = coordinate;
  [(HKSleepPeriodSeries *)self _assertCoordinateCompatibility:coordinateCopy];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  yValues = [coordinateCopy yValues];
  v9 = [yValues countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(yValues);
        }

        [*(*(&v16 + 1) + 8 * i) doubleValue];
        if (vabdd_f64(v14, y) < fabs(v12))
        {
          v12 = v14 - y;
        }
      }

      v10 = [yValues countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  else
  {
    v12 = 1.79769313e308;
  }

  return v12;
}

- (void)_assertCoordinateCompatibility:(id)compatibility
{
  compatibilityCopy = compatibility;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [(HKSleepPeriodSeries *)a2 _assertCoordinateCompatibility:?];
  }
}

- (BOOL)blockCoordinateIsVisibleInsideOfChartRect:(CGRect)rect blockCoordinate:(id)coordinate
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  coordinateCopy = coordinate;
  [coordinateCopy startXValue];
  v10 = v9;
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  if (v10 >= CGRectGetMinX(v15))
  {
    [coordinateCopy endXValue];
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

- (double)_minimumYForCoordinate:(id)coordinate
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  yValues = [coordinate yValues];
  v4 = [yValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(yValues);
        }

        [*(*(&v11 + 1) + 8 * i) doubleValue];
        if (v7 >= v9)
        {
          v7 = v9;
        }
      }

      v5 = [yValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 1.79769313e308;
  }

  return v7;
}

- (double)_maximumYForCoordinate:(id)coordinate
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  yValues = [coordinate yValues];
  v4 = [yValues countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(yValues);
        }

        [*(*(&v11 + 1) + 8 * i) doubleValue];
        if (v7 < v9)
        {
          v7 = v9;
        }
      }

      v5 = [yValues countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = -1.79769313e308;
  }

  return v7;
}

- (BOOL)blockCoordinate:(id)coordinate lessThan:(id)than
{
  thanCopy = than;
  coordinateCopy = coordinate;
  [(HKSleepPeriodSeries *)self _assertCoordinateCompatibility:coordinateCopy];
  [(HKSleepPeriodSeries *)self _minimumYForCoordinate:coordinateCopy];
  v9 = v8;

  [(HKSleepPeriodSeries *)self _minimumYForCoordinate:thanCopy];
  v11 = v10;

  return v9 < v11;
}

- (BOOL)blockCoordinate:(id)coordinate greaterThan:(id)than
{
  thanCopy = than;
  coordinateCopy = coordinate;
  [(HKSleepPeriodSeries *)self _assertCoordinateCompatibility:coordinateCopy];
  [(HKSleepPeriodSeries *)self _maximumYForCoordinate:coordinateCopy];
  v9 = v8;

  [(HKSleepPeriodSeries *)self _maximumYForCoordinate:thanCopy];
  v11 = v10;

  return v9 > v11;
}

- (id)marginsForYAxis:(id)axis xAxisRange:(id)range zoomLevel:(int64_t)level chartRect:(CGRect)rect
{
  axisCopy = axis;
  rangeCopy = range;
  goalLineStrokeStyle = [(HKSleepPeriodSeries *)self goalLineStrokeStyle];
  if ((goalLineStrokeStyle || ![(HKGraphSeries *)self allowsSelection]) && (goalLineStrokeStyle, axisCopy))
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    minValue = [axisCopy minValue];
    [minValue doubleValue];
    v14 = v13;

    v30 = v14;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    maxValue = [axisCopy maxValue];
    [maxValue doubleValue];
    v17 = v16;

    v26 = v17;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __70__HKSleepPeriodSeries_marginsForYAxis_xAxisRange_zoomLevel_chartRect___block_invoke;
    v22[3] = &unk_1E81BA960;
    v22[4] = &v27;
    v22[5] = &v23;
    [(HKGraphSeries *)self enumerateChartPointsInRange:rangeCopy zoomLevel:level resolution:0 block:v22];
    v18 = [MEMORY[0x1E696AD98] numberWithDouble:v28[3]];
    v19 = [MEMORY[0x1E696AD98] numberWithDouble:v24[3]];
    v20 = [HKValueRange valueRangeWithMinValue:v18 maxValue:v19];

    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v20 = axisCopy;
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

- (void)addAnnotationForValue:(double)value axisAnnotationDelegate:(id)delegate
{
  if (delegate)
  {
    v6 = MEMORY[0x1E696AD98];
    delegateCopy = delegate;
    v10 = [v6 numberWithDouble:value];
    v8 = [(HKSleepPeriodSeries *)self _stringFromTimeSinceNoon:v10];
    v9 = [(HKSleepPeriodSeries *)self _attributedAxisString:v8];
    [delegateCopy addAxisAnnotation:v9 forSeries:self modelCoordinate:v10];
  }
}

- (id)_stringFromTimeSinceNoon:(id)noon
{
  v4 = MEMORY[0x1E695DEE8];
  noonCopy = noon;
  currentCalendar = [v4 currentCalendar];
  startOfDayTransform = [(HKSleepPeriodSeries *)self startOfDayTransform];

  if (startOfDayTransform)
  {
    startOfDayTransform2 = [(HKSleepPeriodSeries *)self startOfDayTransform];
    v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];
    v10 = (startOfDayTransform2)[2](startOfDayTransform2, currentCalendar, v9);
  }

  else
  {
    startOfDayTransform2 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];
    v10 = [currentCalendar startOfDayForDate:startOfDayTransform2];
  }

  [noonCopy doubleValue];
  v12 = v11;

  v13 = [v10 dateByAddingTimeInterval:v12];
  v14 = HKLocalizedStringForDateAndTemplate(v13, 28);

  return v14;
}

- (id)_attributedAxisString:(id)string
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = *MEMORY[0x1E69DB648];
  v3 = MEMORY[0x1E69DB878];
  stringCopy = string;
  hk_chartAxisLabelFont = [v3 hk_chartAxisLabelFont];
  v11[0] = hk_chartAxisLabelFont;
  v10[1] = *MEMORY[0x1E69DB650];
  hk_sleepAsleepColor = [MEMORY[0x1E69DC888] hk_sleepAsleepColor];
  v11[1] = hk_sleepAsleepColor;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:stringCopy attributes:v7];

  return v8;
}

+ (id)_sleepCircleImageWithWidth:(double)width diameter:(double)diameter color:(id)color
{
  colorCopy = color;
  v13.width = width;
  v13.height = width;
  UIGraphicsBeginImageContextWithOptions(v13, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  cGColor = [colorCopy CGColor];

  CGContextSetFillColorWithColor(CurrentContext, cGColor);
  v14.origin.x = width * 0.5 - diameter * 0.5;
  v14.origin.y = v14.origin.x;
  v14.size.width = diameter;
  v14.size.height = diameter;
  CGContextFillEllipseInRect(CurrentContext, v14);
  v10 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v10;
}

+ (id)asleepImageCompatibleWithFont:(id)font withColor:(id)color
{
  colorCopy = color;
  [font capHeight];
  v8 = [self _sleepCircleImageWithWidth:colorCopy diameter:v7 color:v7];

  return v8;
}

+ (id)inBedImageCompatibleWithFont:(id)font withColor:(id)color
{
  colorCopy = color;
  [font capHeight];
  v8 = [self _sleepCircleImageWithWidth:colorCopy diameter:v7 color:v7];

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