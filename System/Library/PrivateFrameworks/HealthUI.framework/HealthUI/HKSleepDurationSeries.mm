@interface HKSleepDurationSeries
- (BOOL)_currentGoal:(id)goal differentFrom:(id)from;
- (BOOL)_dataIsHidden:(int64_t)hidden;
- (BOOL)extendGoalLineToAxis;
- (BOOL)hideAsleepData;
- (BOOL)hideInBedData;
- (HKLineSeriesPointMarkerStyle)goalLineMarkerStyle;
- (HKSleepDurationSeries)init;
- (HKStrokeStyle)goalLineStrokeStyle;
- (NSArray)defaultFillStyles;
- (NSArray)highlightedFillStyles;
- (NSArray)inactiveFillStyles;
- (double)barWidthForVisibleBarCount:(int64_t)count axisRect:(CGRect)rect minimumSpacing:(double)spacing;
- (id)_durationAbbreviatedFormatter;
- (id)_durationShortFormatter;
- (id)_stringForDuration:(double)duration;
- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis;
- (id)goalLineMarkerImage;
- (id)startOfDayTransform;
- (void)_addAnnotationForValue:(double)value axisAnnotationDelegate:(id)delegate;
- (void)_addGoalAnnotationAtLocation:(double)location axisAnnotationDelegate:(id)delegate;
- (void)_drawGoalLineMarkers:(id)markers context:(CGContext *)context goalLineMarkerImage:(id)image;
- (void)_drawGoalLinePath:(id)path context:(CGContext *)context;
- (void)_drawPaths:(id)paths withFillStyles:(id)styles strokeStyle:(id)style axisRect:(CGRect)rect context:(CGContext *)context;
- (void)_rebuildPointMarkerImages;
- (void)addGoalLinePathsToCoordinate:(id)coordinate goalLinePath:(id)path goalLineMarkerPoints:(id)points previousCoordinateGoal:(id)goal axisRect:(CGRect)rect;
- (void)clearCaches;
- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate;
- (void)drawWithBlockCoordinates:(id)coordinates visibleBarCount:(int64_t)count pointTransform:(CGAffineTransform *)transform context:(CGContext *)context axisRect:(CGRect)rect seriesRenderingDelegate:(id)delegate;
- (void)setDefaultFillStyles:(id)styles;
- (void)setExtendGoalLineToAxis:(BOOL)axis;
- (void)setGoalLineMarkerStyle:(id)style;
- (void)setGoalLineStrokeStyle:(id)style;
- (void)setHideAsleepData:(BOOL)data;
- (void)setHideInBedData:(BOOL)data;
- (void)setHighlightedFillStyles:(id)styles;
- (void)setInactiveFillStyles:(id)styles;
- (void)setStartOfDayTransform:(id)transform;
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
  seriesMutableStateLock = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_defaultFillStylesStorage;
  seriesMutableStateLock2 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setDefaultFillStyles:(id)styles
{
  stylesCopy = styles;
  seriesMutableStateLock = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v6 = [stylesCopy copy];
  defaultFillStylesStorage = self->_defaultFillStylesStorage;
  self->_defaultFillStylesStorage = v6;

  seriesMutableStateLock2 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  lastObject = [stylesCopy lastObject];

  [(HKBarSeries *)self setUnselectedFillStyle:lastObject];
}

- (NSArray)highlightedFillStyles
{
  seriesMutableStateLock = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_highlightedFillStylesStorage;
  seriesMutableStateLock2 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setHighlightedFillStyles:(id)styles
{
  stylesCopy = styles;
  seriesMutableStateLock = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v6 = [stylesCopy copy];
  highlightedFillStylesStorage = self->_highlightedFillStylesStorage;
  self->_highlightedFillStylesStorage = v6;

  seriesMutableStateLock2 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (NSArray)inactiveFillStyles
{
  seriesMutableStateLock = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_inactiveFillStylesStorage;
  seriesMutableStateLock2 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setInactiveFillStyles:(id)styles
{
  stylesCopy = styles;
  seriesMutableStateLock = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v6 = [stylesCopy copy];
  inactiveFillStylesStorage = self->_inactiveFillStylesStorage;
  self->_inactiveFillStylesStorage = v6;

  seriesMutableStateLock2 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (HKStrokeStyle)goalLineStrokeStyle
{
  seriesMutableStateLock = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_goalLineStrokeStyleStorage;
  seriesMutableStateLock2 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setGoalLineStrokeStyle:(id)style
{
  styleCopy = style;
  seriesMutableStateLock = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v6 = [styleCopy copy];
  goalLineStrokeStyleStorage = self->_goalLineStrokeStyleStorage;
  self->_goalLineStrokeStyleStorage = v6;

  seriesMutableStateLock2 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (HKLineSeriesPointMarkerStyle)goalLineMarkerStyle
{
  seriesMutableStateLock = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_goalLineMarkerStyleStorage;
  seriesMutableStateLock2 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setGoalLineMarkerStyle:(id)style
{
  styleCopy = style;
  seriesMutableStateLock = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  goalLineMarkerStyleStorage = self->_goalLineMarkerStyleStorage;
  self->_goalLineMarkerStyleStorage = styleCopy;

  seriesMutableStateLock2 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  [(HKSleepDurationSeries *)self _rebuildPointMarkerImages];
}

- (BOOL)extendGoalLineToAxis
{
  seriesMutableStateLock = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  LOBYTE(seriesMutableStateLock) = self->_extendGoalLineToAxisStorage;
  seriesMutableStateLock2 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return seriesMutableStateLock;
}

- (void)setExtendGoalLineToAxis:(BOOL)axis
{
  seriesMutableStateLock = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  self->_extendGoalLineToAxisStorage = axis;
  seriesMutableStateLock2 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (id)startOfDayTransform
{
  seriesMutableStateLock = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = _Block_copy(self->_startOfDayTransformStorage);
  seriesMutableStateLock2 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  v6 = _Block_copy(v4);

  return v6;
}

- (void)setStartOfDayTransform:(id)transform
{
  transformCopy = transform;
  seriesMutableStateLock = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v6 = [transformCopy copy];
  startOfDayTransformStorage = self->_startOfDayTransformStorage;
  self->_startOfDayTransformStorage = v6;

  seriesMutableStateLock2 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (BOOL)hideInBedData
{
  seriesMutableStateLock = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  LOBYTE(seriesMutableStateLock) = self->_hideInBedDataStorage;
  seriesMutableStateLock2 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return seriesMutableStateLock;
}

- (void)setHideInBedData:(BOOL)data
{
  seriesMutableStateLock = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  self->_hideInBedDataStorage = data;
  seriesMutableStateLock2 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (BOOL)hideAsleepData
{
  seriesMutableStateLock = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  LOBYTE(seriesMutableStateLock) = self->_hideAsleepDataStorage;
  seriesMutableStateLock2 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return seriesMutableStateLock;
}

- (void)setHideAsleepData:(BOOL)data
{
  seriesMutableStateLock = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  self->_hideAsleepDataStorage = data;
  seriesMutableStateLock2 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (id)goalLineMarkerImage
{
  seriesMutableStateLock = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_goalLineMarkerImageStorage;
  seriesMutableStateLock2 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)_rebuildPointMarkerImages
{
  seriesMutableStateLock = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

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

  seriesMutableStateLock2 = [(HKSleepDurationSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (void)clearCaches
{
  v34 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  defaultFillStyles = [(HKSleepDurationSeries *)self defaultFillStyles];
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
  highlightedFillStyles = [(HKSleepDurationSeries *)self highlightedFillStyles];
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
  inactiveFillStyles = [(HKSleepDurationSeries *)self inactiveFillStyles];
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

  [(HKSleepDurationSeries *)self _rebuildPointMarkerImages];
  v18.receiver = self;
  v18.super_class = HKSleepDurationSeries;
  [(HKBarSeries *)&v18 clearCaches];
}

- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis
{
  v62 = *MEMORY[0x1E69E9840];
  axisCopy = axis;
  yAxisCopy = yAxis;
  chartPoints = [block chartPoints];
  if (!chartPoints)
  {
    [HKSleepDurationSeries coordinatesForBlock:a2 blockPath:self xAxis:? yAxis:?];
  }

  v44 = axisCopy;
  transform = [axisCopy transform];
  v43 = yAxisCopy;
  transform2 = [yAxisCopy transform];
  array = [MEMORY[0x1E695DF70] array];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = chartPoints;
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
        xValueAsGenericType = [v15 xValueAsGenericType];
        [transform coordinateForValue:xValueAsGenericType];
        v18 = v17;

        v19 = v18 + -0.25;
        [transform2 coordinateForValue:&unk_1F4382968];
        v21 = v20;
        allYValues = [v15 allYValues];
        array2 = [MEMORY[0x1E695DF70] array];
        v24 = [MEMORY[0x1E696B098] valueWithCGPoint:{v19, v21}];
        [array2 addObject:v24];

        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v25 = allYValues;
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

              [transform2 coordinateForValue:*(*(&v52 + 1) + 8 * j)];
              v31 = [MEMORY[0x1E696B098] valueWithCGPoint:{v19, v30}];
              [array2 addObject:v31];
            }

            v27 = [v25 countByEnumeratingWithState:&v52 objects:v60 count:16];
          }

          while (v27);
        }

        goalValue = [v15 goalValue];

        if (goalValue)
        {
          v33 = MEMORY[0x1E696AD98];
          goalValue2 = [v15 goalValue];
          [transform2 coordinateForValue:goalValue2];
          goalValue = [v33 numberWithDouble:?];
        }

        v35 = [HKSleepDurationCoordinate alloc];
        highlighted = [v15 highlighted];
        userInfo = [v15 userInfo];
        v38 = [(HKSleepDurationCoordinate *)v35 initWithStackPoints:array2 goalLineYValue:goalValue highlighted:highlighted userInfo:userInfo];

        [array addObject:v38];
      }

      v49 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
    }

    while (v49);
  }

  v50 = *v42;
  v51 = *(v42 + 2);
  v39 = [HKGraphSeriesBlockCoordinateList coordinateListWithCoordinates:array blockPath:&v50];

  return v39;
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

- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  delegateCopy = delegate;
  coordinatesCopy = coordinates;
  v20 = [(HKBarSeries *)self visibleBarCountWithZoomLevelConfiguration:configuration];
  v21 = *&transform->c;
  v22[0] = *&transform->a;
  v22[1] = v21;
  v22[2] = *&transform->tx;
  [(HKSleepDurationSeries *)self drawWithBlockCoordinates:coordinatesCopy visibleBarCount:v20 pointTransform:v22 context:context axisRect:delegateCopy seriesRenderingDelegate:x, y, width, height];
}

- (void)drawWithBlockCoordinates:(id)coordinates visibleBarCount:(int64_t)count pointTransform:(CGAffineTransform *)transform context:(CGContext *)context axisRect:(CGRect)rect seriesRenderingDelegate:(id)delegate
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  coordinatesCopy = coordinates;
  delegateCopy = delegate;
  seriesDrawingDuringTiling = [delegateCopy seriesDrawingDuringTiling];
  v52 = coordinatesCopy;
  if (seriesDrawingDuringTiling && ([(HKBarSeries *)self tiledStrokeStyle], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v19 = v18;
    tiledStrokeStyle = [(HKBarSeries *)self tiledStrokeStyle];
  }

  else
  {
    tiledStrokeStyle = [(HKBarSeries *)self unselectedStrokeStyle];
  }

  v54 = tiledStrokeStyle;
  [tiledStrokeStyle lineWidth];
  v22 = v21;
  selectedStrokeStyle = [(HKBarSeries *)self selectedStrokeStyle];
  [selectedStrokeStyle lineWidth];
  v25 = v24;

  if (v25 < v22)
  {
    v25 = v22;
  }

  [delegateCopy screenRectForSeries:self];
  [HKSleepDurationSeries barWidthForVisibleBarCount:"barWidthForVisibleBarCount:axisRect:minimumSpacing:" axisRect:count minimumSpacing:?];
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
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  bezierPath = [MEMORY[0x1E69DC728] bezierPath];
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
  v35 = array;
  v57 = v35;
  v36 = array2;
  v69 = v27;
  v58 = v36;
  selfCopy = self;
  v37 = bezierPath;
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
  v39 = *&transform->c;
  v55[0] = *&transform->a;
  v55[1] = v39;
  v55[2] = *&transform->tx;
  [v52 enumerateCoordinatesWithTransform:v55 roundToViewScale:1 block:v56];
  defaultFillStyles = [(HKSleepDurationSeries *)self defaultFillStyles];

  if (defaultFillStyles)
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
    [(HKSleepDurationSeries *)self _drawPaths:v35 withFillStyles:v41 strokeStyle:tiledStrokeStyle axisRect:context context:x, y, width, height];
    highlightedFillStyles = [(HKSleepDurationSeries *)self highlightedFillStyles];
    defaultFillStyles2 = highlightedFillStyles;
    if (!highlightedFillStyles)
    {
      defaultFillStyles2 = [(HKSleepDurationSeries *)self defaultFillStyles];
    }

    selectedStrokeStyle2 = [(HKBarSeries *)self selectedStrokeStyle];
    v45 = selectedStrokeStyle2;
    if (selectedStrokeStyle2)
    {
      v46 = selectedStrokeStyle2;
    }

    else
    {
      v46 = v54;
    }

    [(HKSleepDurationSeries *)self _drawPaths:v36 withFillStyles:defaultFillStyles2 strokeStyle:v46 axisRect:context context:x, y, width, height];

    if (!highlightedFillStyles)
    {
    }
  }

  if (([v37 isEmpty] & 1) == 0)
  {
    goalLineStrokeStyle = [(HKSleepDurationSeries *)self goalLineStrokeStyle];

    if (goalLineStrokeStyle)
    {
      if (v81[5] && [(HKSleepDurationSeries *)self extendGoalLineToAxis])
      {
        [v81[5] doubleValue];
        [v37 addLineToPoint:{x + width, v48}];
      }

      [(HKSleepDurationSeries *)self _drawGoalLinePath:v37 context:context];
      goalLineMarkerImage = [(HKSleepDurationSeries *)self goalLineMarkerImage];
      if (goalLineMarkerImage)
      {
        [(HKSleepDurationSeries *)self _drawGoalLineMarkers:v38 context:context goalLineMarkerImage:goalLineMarkerImage];
      }

      if (v87[5])
      {
        v50 = [delegateCopy axisAnnotationDelegateForSeries:self];
        if ((seriesDrawingDuringTiling & 1) != 0 || *(v75 + 24) != 1)
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

- (void)addGoalLinePathsToCoordinate:(id)coordinate goalLinePath:(id)path goalLineMarkerPoints:(id)points previousCoordinateGoal:(id)goal axisRect:(CGRect)rect
{
  coordinateCopy = coordinate;
  pathCopy = path;
  pointsCopy = points;
  goalLineYValue = [coordinateCopy goalLineYValue];

  if (goalLineYValue)
  {
    [coordinateCopy startXValue];
    v14 = v13;
    goalLineYValue2 = [coordinateCopy goalLineYValue];
    [goalLineYValue2 doubleValue];
    if (goal)
    {
      [pathCopy addLineToPoint:{v14, v16}];
    }

    else
    {
      [pathCopy moveToPoint:{v14, v16}];
    }

    v17 = MEMORY[0x1E696B098];
    [coordinateCopy startXValue];
    v19 = v18;
    goalLineYValue3 = [coordinateCopy goalLineYValue];
    [goalLineYValue3 doubleValue];
    v22 = [v17 valueWithCGPoint:{v19, v21}];
    [pointsCopy addObject:v22];
  }
}

- (BOOL)_currentGoal:(id)goal differentFrom:(id)from
{
  fromCopy = from;
  [goal doubleValue];
  v7 = v6;
  [fromCopy doubleValue];
  v9 = v8;

  return vabdd_f64(v7, v9) >= 0.000001;
}

- (void)_drawGoalLinePath:(id)path context:(CGContext *)context
{
  pathCopy = path;
  CGContextSaveGState(context);
  goalLineStrokeStyle = [(HKSleepDurationSeries *)self goalLineStrokeStyle];
  [goalLineStrokeStyle applyToContext:context];

  cGPath = [pathCopy CGPath];
  CGContextAddPath(context, cGPath);
  CGContextStrokePath(context);

  CGContextRestoreGState(context);
}

- (void)_drawGoalLineMarkers:(id)markers context:(CGContext *)context goalLineMarkerImage:(id)image
{
  v31 = *MEMORY[0x1E69E9840];
  markersCopy = markers;
  imageCopy = image;
  cGImage = [imageCopy CGImage];
  v10 = HKChartSeriesPointMarkerBaseRect(imageCopy);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = markersCopy;
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
        CGContextDrawImage(context, v33, cGImage);
        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v19);
  }
}

- (void)_drawPaths:(id)paths withFillStyles:(id)styles strokeStyle:(id)style axisRect:(CGRect)rect context:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  pathsCopy = paths;
  stylesCopy = styles;
  styleCopy = style;
  v17 = [pathsCopy count];
  if (v17 - 1 >= 0)
  {
    v18 = v17;
    do
    {
      v19 = [pathsCopy objectAtIndexedSubscript:--v18];
      if (([v19 isEmpty] & 1) == 0 && !-[HKSleepDurationSeries _dataIsHidden:](self, "_dataIsHidden:", v18))
      {
        if (styleCopy)
        {
          CGContextSaveGState(context);
          [styleCopy applyToContext:context];
          CGContextAddPath(context, [v19 CGPath]);
          CGContextStrokePath(context);
          CGContextRestoreGState(context);
        }

        if (v18 < [stylesCopy count])
        {
          v20 = [stylesCopy objectAtIndexedSubscript:v18];
          if (v20)
          {
            v21 = v20;
            cGPath = [v19 CGPath];
            [(HKGraphSeries *)self alpha];
            [v21 renderPath:cGPath context:context axisRect:x alpha:{y, width, height, v23}];
          }
        }
      }
    }

    while (v18 > 0);
  }
}

- (BOOL)_dataIsHidden:(int64_t)hidden
{
  if (hidden == 1)
  {
    return [(HKSleepDurationSeries *)self hideInBedData];
  }

  if (hidden)
  {
    return 0;
  }

  return [(HKSleepDurationSeries *)self hideAsleepData];
}

- (void)_addAnnotationForValue:(double)value axisAnnotationDelegate:(id)delegate
{
  v17[2] = *MEMORY[0x1E69E9840];
  if (delegate)
  {
    delegateCopy = delegate;
    seriesDataSourceContext = [(HKGraphSeries *)self seriesDataSourceContext];
    chartType = [seriesDataSourceContext chartType];
    v9 = &stru_1F42FFBE0;
    if (chartType <= 6 && ((1 << chartType) & 0x65) != 0)
    {
      v9 = [(HKSleepDurationSeries *)self _stringForDuration:value];
    }

    v16[0] = *MEMORY[0x1E69DB650];
    goalLineStrokeStyle = [(HKSleepDurationSeries *)self goalLineStrokeStyle];
    strokeColor = [goalLineStrokeStyle strokeColor];
    v17[0] = strokeColor;
    v16[1] = *MEMORY[0x1E69DB648];
    hk_chartAxisLabelFont = [MEMORY[0x1E69DB878] hk_chartAxisLabelFont];
    v17[1] = hk_chartAxisLabelFont;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

    v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v9 attributes:v13];
    v15 = [MEMORY[0x1E696AD98] numberWithDouble:value];
    [delegateCopy addAxisAnnotation:v14 forSeries:self modelCoordinate:v15];
  }
}

- (void)_addGoalAnnotationAtLocation:(double)location axisAnnotationDelegate:(id)delegate
{
  v17[2] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AAE8];
  delegateCopy = delegate;
  v8 = [v6 bundleWithIdentifier:@"com.apple.HealthUI"];
  v9 = [v8 localizedStringForKey:@"SLEEP_MULTIPLE_GOAL_AXIS" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Eucalyptus"];

  v16[0] = *MEMORY[0x1E69DB650];
  goalLineStrokeStyle = [(HKSleepDurationSeries *)self goalLineStrokeStyle];
  strokeColor = [goalLineStrokeStyle strokeColor];
  v17[0] = strokeColor;
  v16[1] = *MEMORY[0x1E69DB648];
  hk_chartAxisLabelFont = [MEMORY[0x1E69DB878] hk_chartAxisLabelFont];
  v17[1] = hk_chartAxisLabelFont;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v9 attributes:v13];
  v15 = [MEMORY[0x1E696AD98] numberWithDouble:location];
  [delegateCopy addAxisAnnotation:v14 forSeries:self modelCoordinate:v15];
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

- (id)_stringForDuration:(double)duration
{
  if (__ROR8__(0xFEDCBA987654321 * llround(duration) + 0x91A2B3C4D5E6F0, 4) <= 0x123456789ABCDEuLL)
  {
    [(HKSleepDurationSeries *)self _durationShortFormatter];
  }

  else
  {
    [(HKSleepDurationSeries *)self _durationAbbreviatedFormatter];
  }
  v4 = ;
  v5 = [v4 stringFromTimeInterval:duration];

  return v5;
}

- (void)coordinatesForBlock:(uint64_t)a1 blockPath:(uint64_t)a2 xAxis:yAxis:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKSleepDurationSeries.m" lineNumber:271 description:{@"Invalid parameter not satisfying: %@", @"points != nil"}];
}

@end