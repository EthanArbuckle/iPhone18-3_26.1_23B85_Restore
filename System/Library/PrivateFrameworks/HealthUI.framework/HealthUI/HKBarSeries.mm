@interface HKBarSeries
- (BOOL)blockCoordinate:(id)coordinate greaterThan:(id)than;
- (BOOL)blockCoordinate:(id)coordinate lessThan:(id)than;
- (CGSize)cornerRadii;
- (CGSize)cornerRadiiStorage;
- (HKBarSeries)init;
- (HKBarSeriesConfiguration)defaultConfiguration;
- (HKFillStyle)inactiveFillStyle;
- (HKFillStyle)selectedFillStyle;
- (HKFillStyle)unselectedFillStyle;
- (HKStrokeStyle)selectedStrokeStyle;
- (HKStrokeStyle)tiledStrokeStyle;
- (HKStrokeStyle)unselectedStrokeStyle;
- (NSMutableArray)overrideConfigurations;
- (double)barWidthForVisibleBarCount:(int64_t)count axisRect:(CGRect)rect minimumSpacing:(double)spacing;
- (double)distanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (double)xAxisDistanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (double)yAxisDifferenceToPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis;
- (int64_t)_configurationIndexForCoordinate:(id)coordinate inConfigurations:(id)configurations;
- (void)_drawConfiguration:(id)configuration fillStyleBezierPaths:(id)paths strokeStyle:(id)style axisRect:(CGRect)rect context:(CGContext *)context;
- (void)_drawPath:(id)path withFillStyle:(id)style strokeStyle:(id)strokeStyle axisRect:(CGRect)rect context:(CGContext *)context;
- (void)clearCaches;
- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate;
- (void)drawWithBlockCoordinates:(id)coordinates visibleBarCount:(int64_t)count pointTransform:(CGAffineTransform *)transform context:(CGContext *)context axisRect:(CGRect)rect seriesRenderingDelegate:(id)delegate;
- (void)setCornerRadii:(CGSize)radii;
- (void)setDefaultConfiguration:(id)configuration;
- (void)setInactiveFillStyle:(id)style;
- (void)setOverrideConfigurations:(id)configurations;
- (void)setSelectedFillStyle:(id)style;
- (void)setSelectedStrokeStyle:(id)style;
- (void)setTiledStrokeStyle:(id)style;
- (void)setUnselectedFillStyle:(id)style;
- (void)setUnselectedStrokeStyle:(id)style;
@end

@implementation HKBarSeries

- (HKBarSeries)init
{
  v13.receiver = self;
  v13.super_class = HKBarSeries;
  v2 = [(HKGraphSeries *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    seriesMutableStateLock = v2->_seriesMutableStateLock;
    v2->_seriesMutableStateLock = v3;

    [(NSLock *)v2->_seriesMutableStateLock setName:@"HKBarSeriesLock"];
    v5 = objc_alloc_init(HKBarSeriesConfiguration);
    defaultConfigurationStorage = v2->_defaultConfigurationStorage;
    v2->_defaultConfigurationStorage = v5;

    [(HKBarSeriesConfiguration *)v2->_defaultConfigurationStorage setIsIncludedBlock:&__block_literal_global_16];
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    overrideConfigurationsStorage = v2->_overrideConfigurationsStorage;
    v2->_overrideConfigurationsStorage = v7;

    unselectedStrokeStyleStorage = v2->_unselectedStrokeStyleStorage;
    v2->_unselectedStrokeStyleStorage = 0;

    selectedStrokeStyleStorage = v2->_selectedStrokeStyleStorage;
    v2->_selectedStrokeStyleStorage = 0;

    tiledStrokeStyleStorage = v2->_tiledStrokeStyleStorage;
    v2->_tiledStrokeStyleStorage = 0;

    v2->_cornerRadiiStorage.width = 0.0;
    v2->_cornerRadiiStorage.height = 0.0;
  }

  return v2;
}

- (void)clearCaches
{
  v21 = *MEMORY[0x1E69E9840];
  defaultConfiguration = [(HKBarSeries *)self defaultConfiguration];
  selectedFillStyle = [defaultConfiguration selectedFillStyle];
  [selectedFillStyle clearCache];

  defaultConfiguration2 = [(HKBarSeries *)self defaultConfiguration];
  unselectedFillStyle = [defaultConfiguration2 unselectedFillStyle];
  [unselectedFillStyle clearCache];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  overrideConfigurations = [(HKBarSeries *)self overrideConfigurations];
  v8 = [overrideConfigurations countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(overrideConfigurations);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        selectedFillStyle2 = [v12 selectedFillStyle];
        [selectedFillStyle2 clearCache];

        unselectedFillStyle2 = [v12 unselectedFillStyle];
        [unselectedFillStyle2 clearCache];
      }

      v9 = [overrideConfigurations countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v15.receiver = self;
  v15.super_class = HKBarSeries;
  [(HKGraphSeries *)&v15 clearCaches];
}

- (HKBarSeriesConfiguration)defaultConfiguration
{
  seriesMutableStateLock = [(HKBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_defaultConfigurationStorage;
  seriesMutableStateLock2 = [(HKBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setDefaultConfiguration:(id)configuration
{
  configurationCopy = configuration;
  seriesMutableStateLock = [(HKBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  defaultConfigurationStorage = self->_defaultConfigurationStorage;
  self->_defaultConfigurationStorage = configurationCopy;

  seriesMutableStateLock2 = [(HKBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (NSMutableArray)overrideConfigurations
{
  seriesMutableStateLock = [(HKBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_overrideConfigurationsStorage;
  seriesMutableStateLock2 = [(HKBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setOverrideConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  seriesMutableStateLock = [(HKBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  overrideConfigurationsStorage = self->_overrideConfigurationsStorage;
  self->_overrideConfigurationsStorage = configurationsCopy;

  seriesMutableStateLock2 = [(HKBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (HKStrokeStyle)unselectedStrokeStyle
{
  seriesMutableStateLock = [(HKBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_unselectedStrokeStyleStorage;
  seriesMutableStateLock2 = [(HKBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setUnselectedStrokeStyle:(id)style
{
  styleCopy = style;
  seriesMutableStateLock = [(HKBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  unselectedStrokeStyleStorage = self->_unselectedStrokeStyleStorage;
  self->_unselectedStrokeStyleStorage = styleCopy;

  seriesMutableStateLock2 = [(HKBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (HKStrokeStyle)selectedStrokeStyle
{
  seriesMutableStateLock = [(HKBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_selectedStrokeStyleStorage;
  seriesMutableStateLock2 = [(HKBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setSelectedStrokeStyle:(id)style
{
  styleCopy = style;
  seriesMutableStateLock = [(HKBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  selectedStrokeStyleStorage = self->_selectedStrokeStyleStorage;
  self->_selectedStrokeStyleStorage = styleCopy;

  seriesMutableStateLock2 = [(HKBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (HKStrokeStyle)tiledStrokeStyle
{
  seriesMutableStateLock = [(HKBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_tiledStrokeStyleStorage;
  seriesMutableStateLock2 = [(HKBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setTiledStrokeStyle:(id)style
{
  styleCopy = style;
  seriesMutableStateLock = [(HKBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  tiledStrokeStyleStorage = self->_tiledStrokeStyleStorage;
  self->_tiledStrokeStyleStorage = styleCopy;

  seriesMutableStateLock2 = [(HKBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (HKFillStyle)unselectedFillStyle
{
  seriesMutableStateLock = [(HKBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  unselectedFillStyle = [(HKBarSeriesConfiguration *)self->_defaultConfigurationStorage unselectedFillStyle];
  seriesMutableStateLock2 = [(HKBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return unselectedFillStyle;
}

- (void)setUnselectedFillStyle:(id)style
{
  styleCopy = style;
  seriesMutableStateLock = [(HKBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  [(HKBarSeriesConfiguration *)self->_defaultConfigurationStorage setUnselectedFillStyle:styleCopy];
  seriesMutableStateLock2 = [(HKBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (HKFillStyle)selectedFillStyle
{
  seriesMutableStateLock = [(HKBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  selectedFillStyle = [(HKBarSeriesConfiguration *)self->_defaultConfigurationStorage selectedFillStyle];
  seriesMutableStateLock2 = [(HKBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return selectedFillStyle;
}

- (void)setSelectedFillStyle:(id)style
{
  styleCopy = style;
  seriesMutableStateLock = [(HKBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  [(HKBarSeriesConfiguration *)self->_defaultConfigurationStorage setSelectedFillStyle:styleCopy];
  seriesMutableStateLock2 = [(HKBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (HKFillStyle)inactiveFillStyle
{
  seriesMutableStateLock = [(HKBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  inactiveFillStyle = [(HKBarSeriesConfiguration *)self->_defaultConfigurationStorage inactiveFillStyle];
  seriesMutableStateLock2 = [(HKBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return inactiveFillStyle;
}

- (void)setInactiveFillStyle:(id)style
{
  styleCopy = style;
  seriesMutableStateLock = [(HKBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  [(HKBarSeriesConfiguration *)self->_defaultConfigurationStorage setInactiveFillStyle:styleCopy];
  seriesMutableStateLock2 = [(HKBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (CGSize)cornerRadii
{
  seriesMutableStateLock = [(HKBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  width = self->_cornerRadiiStorage.width;
  height = self->_cornerRadiiStorage.height;
  seriesMutableStateLock2 = [(HKBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  v7 = width;
  v8 = height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setCornerRadii:(CGSize)radii
{
  height = radii.height;
  width = radii.width;
  seriesMutableStateLock = [(HKBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  self->_cornerRadiiStorage.width = width;
  self->_cornerRadiiStorage.height = height;
  seriesMutableStateLock2 = [(HKBarSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
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
  unselectedStrokeStyle = [(HKBarSeries *)self unselectedStrokeStyle];
  if (unselectedStrokeStyle || ([(HKBarSeries *)self unselectedFillStyle], (unselectedStrokeStyle = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    overrideConfigurations = [(HKBarSeries *)self overrideConfigurations];
    v25 = [overrideConfigurations count];

    if (!v25)
    {
      goto LABEL_5;
    }
  }

  v22 = [(HKBarSeries *)self visibleBarCountWithZoomLevelConfiguration:configurationCopy];
  v23 = *&transform->c;
  v26[0] = *&transform->a;
  v26[1] = v23;
  v26[2] = *&transform->tx;
  [(HKBarSeries *)self drawWithBlockCoordinates:coordinatesCopy visibleBarCount:v22 pointTransform:v26 context:context axisRect:delegateCopy seriesRenderingDelegate:x, y, width, height];
LABEL_5:
}

- (double)barWidthForVisibleBarCount:(int64_t)count axisRect:(CGRect)rect minimumSpacing:(double)spacing
{
  v5 = rect.size.width / count;
  spacingCopy = v5 * 0.33;
  if (v5 * 0.33 <= spacing)
  {
    spacingCopy = spacing;
  }

  return floor(v5 - spacingCopy + -1.0) + HKUIOnePixel();
}

- (void)drawWithBlockCoordinates:(id)coordinates visibleBarCount:(int64_t)count pointTransform:(CGAffineTransform *)transform context:(CGContext *)context axisRect:(CGRect)rect seriesRenderingDelegate:(id)delegate
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v74 = *MEMORY[0x1E69E9840];
  coordinatesCopy = coordinates;
  delegateCopy = delegate;
  seriesDrawingDuringTiling = [delegateCopy seriesDrawingDuringTiling];
  if (seriesDrawingDuringTiling && ([(HKBarSeries *)self tiledStrokeStyle], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    tiledStrokeStyle = [(HKBarSeries *)self tiledStrokeStyle];
  }

  else
  {
    tiledStrokeStyle = [(HKBarSeries *)self unselectedStrokeStyle];
  }

  [tiledStrokeStyle lineWidth];
  v19 = v18;
  selectedStrokeStyle = [(HKBarSeries *)self selectedStrokeStyle];
  [selectedStrokeStyle lineWidth];
  v22 = v21;

  if (v22 >= v19)
  {
    v23 = v22;
  }

  else
  {
    v23 = v19;
  }

  [delegateCopy screenRectForSeries:self];
  [HKBarSeries barWidthForVisibleBarCount:"barWidthForVisibleBarCount:axisRect:minimumSpacing:" axisRect:count minimumSpacing:?];
  v25 = v24;
  v75.origin.x = x;
  v75.origin.y = y;
  v75.size.width = width;
  v75.size.height = height;
  MaxX = CGRectGetMaxX(v75);
  v76.origin.x = x;
  v76.origin.y = y;
  v76.size.width = width;
  v76.size.height = height;
  MinX = CGRectGetMinX(v76);
  v28 = objc_alloc_init(HKBarSeriesFillStyleBezierPaths);
  overrideConfigurations = [(HKBarSeries *)self overrideConfigurations];
  v30 = [overrideConfigurations hk_map:&__block_literal_global_349_0];

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  [(HKGraphSeries *)self selectedPathRange];
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0;
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __112__HKBarSeries_drawWithBlockCoordinates_visibleBarCount_pointTransform_context_axisRect_seriesRenderingDelegate___block_invoke_2;
  v53[3] = &unk_1E81B6C00;
  v57 = MinX;
  v58 = v23 + v25;
  v59 = MaxX;
  v53[4] = self;
  v31 = v30;
  v54 = v31;
  v32 = v28;
  v60 = v69;
  v61 = v70;
  v62 = v71;
  v63 = v72;
  v64 = v25;
  v44 = v32;
  v55 = v32;
  v56 = &v65;
  v33 = *&transform->c;
  v52[0] = *&transform->a;
  v52[1] = v33;
  v52[2] = *&transform->tx;
  [coordinatesCopy enumerateCoordinatesWithTransform:v52 roundToViewScale:1 block:v53];
  defaultConfiguration = [(HKBarSeries *)self defaultConfiguration];
  [(HKBarSeries *)self _drawConfiguration:defaultConfiguration fillStyleBezierPaths:v44 strokeStyle:tiledStrokeStyle axisRect:context context:x, y, width, height];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  overrideConfigurations2 = [(HKBarSeries *)self overrideConfigurations];
  v36 = [overrideConfigurations2 countByEnumeratingWithState:&v48 objects:v73 count:16];
  if (v36)
  {
    v37 = 0;
    v38 = *v49;
    do
    {
      v39 = 0;
      do
      {
        if (*v49 != v38)
        {
          objc_enumerationMutation(overrideConfigurations2);
        }

        v40 = *(*(&v48 + 1) + 8 * v39);
        v41 = [v31 objectAtIndexedSubscript:v37];
        [(HKBarSeries *)self _drawConfiguration:v40 fillStyleBezierPaths:v41 strokeStyle:tiledStrokeStyle axisRect:context context:x, y, width, height];

        ++v37;
        ++v39;
      }

      while (v36 != v39);
      v36 = [overrideConfigurations2 countByEnumeratingWithState:&v48 objects:v73 count:16];
    }

    while (v36);
  }

  if (((seriesDrawingDuringTiling | [delegateCopy measuringStartupTime] ^ 1) & 1) == 0 && v66[3] >= 1)
  {
    delegate = [(HKGraphSeries *)self delegate];
    [delegate nonemptyDrawComplete];
  }

  _Block_object_dispose(&v65, 8);
}

HKBarSeriesFillStyleBezierPaths *__112__HKBarSeries_drawWithBlockCoordinates_visibleBarCount_pointTransform_context_axisRect_seriesRenderingDelegate___block_invoke()
{
  v0 = objc_alloc_init(HKBarSeriesFillStyleBezierPaths);

  return v0;
}

void __112__HKBarSeries_drawWithBlockCoordinates_visibleBarCount_pointTransform_context_axisRect_seriesRenderingDelegate___block_invoke_2(uint64_t a1, void *a2, _OWORD *a3)
{
  v5 = a2;
  [v5 min];
  v7 = v6;
  v9 = v8;
  [v5 max];
  v11 = v10;
  v13 = v12;
  v14 = *(a1 + 72);
  if (*(a1 + 64) - v7 <= v14 && v7 - *(a1 + 80) <= v14)
  {
    v15 = *(a1 + 32);
    v16 = [v15 overrideConfigurations];
    v17 = [v15 _configurationIndexForCoordinate:v5 inConfigurations:v16];

    if (v17 < 0)
    {
      v18 = *(a1 + 48);
    }

    else
    {
      v18 = [*(a1 + 40) objectAtIndexedSubscript:v17];
    }

    v19 = v18;
    v20 = [v18 unselectedBezierPath];
    v21 = a3[1];
    v37[0] = *a3;
    v37[1] = v21;
    v22 = *(a1 + 104);
    v36[0] = *(a1 + 88);
    v36[1] = v22;
    v23 = *(a1 + 136);
    v36[2] = *(a1 + 120);
    v36[3] = v23;
    if (HKGraphSeriesDataPointPathInRangeInclusive(v37, v36))
    {
      v24 = [v19 selectedBezierPath];

      v20 = v24;
    }

    if (v7 - v11 >= 0.0)
    {
      v25 = v7 - v11;
    }

    else
    {
      v25 = -(v7 - v11);
    }

    if (v9 - v13 >= 0.0)
    {
      v26 = v9 - v13;
    }

    else
    {
      v26 = -(v9 - v13);
    }

    v27 = v11;
    v28 = v13;
    v38 = CGRectStandardize(*(&v25 - 2));
    v39 = CGRectOffset(v38, *(a1 + 152) * -0.5, 0.0);
    x = v39.origin.x;
    y = v39.origin.y;
    height = v39.size.height;
    v32 = *(a1 + 152) + v39.size.width;
    [*(a1 + 32) cornerRadii];
    v35 = [HKBarSeries barSeriesRoundedRect:3 byRoundingCorners:x cornerRadii:y, v32, height, v33, v34];
    [v20 appendPath:v35];

    ++*(*(*(a1 + 56) + 8) + 24);
  }
}

- (int64_t)_configurationIndexForCoordinate:(id)coordinate inConfigurations:(id)configurations
{
  v21 = *MEMORY[0x1E69E9840];
  coordinateCopy = coordinate;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  configurationsCopy = configurations;
  v7 = [configurationsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v17;
LABEL_3:
    v11 = 0;
    v12 = v9;
    v9 += v8;
    while (1)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(configurationsCopy);
      }

      isIncludedBlock = [*(*(&v16 + 1) + 8 * v11) isIncludedBlock];
      v14 = (isIncludedBlock)[2](isIncludedBlock, coordinateCopy);

      if (v14)
      {
        break;
      }

      ++v12;
      if (v8 == ++v11)
      {
        v8 = [configurationsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v12 = -1;
  }

  return v12;
}

- (void)_drawConfiguration:(id)configuration fillStyleBezierPaths:(id)paths strokeStyle:(id)style axisRect:(CGRect)rect context:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  configurationCopy = configuration;
  styleCopy = style;
  pathsCopy = paths;
  if ([(HKGraphSeries *)self allowsSelection])
  {
    [configurationCopy unselectedFillStyle];
  }

  else
  {
    [configurationCopy inactiveFillStyle];
  }
  v17 = ;
  unselectedBezierPath = [pathsCopy unselectedBezierPath];
  [(HKBarSeries *)self _drawPath:unselectedBezierPath withFillStyle:v17 strokeStyle:styleCopy axisRect:context context:x, y, width, height];

  selectedBezierPath = [pathsCopy selectedBezierPath];

  selectedFillStyle = [configurationCopy selectedFillStyle];
  [(HKBarSeries *)self _drawPath:selectedBezierPath withFillStyle:selectedFillStyle strokeStyle:styleCopy axisRect:context context:x, y, width, height];
}

- (void)_drawPath:(id)path withFillStyle:(id)style strokeStyle:(id)strokeStyle axisRect:(CGRect)rect context:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  pathCopy = path;
  styleCopy = style;
  strokeStyleCopy = strokeStyle;
  if (([pathCopy isEmpty] & 1) == 0)
  {
    if (strokeStyleCopy)
    {
      CGContextSaveGState(context);
      [strokeStyleCopy applyToContext:context];
      CGContextAddPath(context, [pathCopy CGPath]);
      CGContextStrokePath(context);
      CGContextRestoreGState(context);
    }

    if (styleCopy)
    {
      cGPath = [pathCopy CGPath];
      [(HKGraphSeries *)self alpha];
      [styleCopy renderPath:cGPath context:context axisRect:x alpha:{y, width, height, v18}];
    }
  }
}

- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis
{
  axisCopy = axis;
  yAxisCopy = yAxis;
  chartPoints = [block chartPoints];
  if (!chartPoints)
  {
    [HKBarSeries coordinatesForBlock:blockPath:xAxis:yAxis:];
  }

  transform = [axisCopy transform];
  transform2 = [yAxisCopy transform];

  v14 = objc_opt_new();
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __57__HKBarSeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke;
  v22[3] = &unk_1E81B6998;
  v23 = transform;
  v24 = transform2;
  v25 = v14;
  v15 = v14;
  v16 = transform2;
  v17 = transform;
  [chartPoints enumerateObjectsUsingBlock:v22];
  v20 = *&path->index;
  resolution = path->resolution;
  v18 = [HKGraphSeriesBlockCoordinateList coordinateListWithCoordinates:v15 blockPath:&v20];

  return v18;
}

void __57__HKBarSeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  v3 = [v16 yValue];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v16 xValueAsGenericType];
    [v4 coordinateForValue:v5];
    v7 = v6;

    [*(a1 + 40) coordinateForValue:&unk_1F43823B0];
    v9 = v8;
    v10 = *(a1 + 40);
    v11 = [v16 maxYValue];
    [v10 coordinateForValue:v11];
    v13 = v12;

    v14 = [v16 userInfo];
    v15 = [[HKMinMaxCoordinate alloc] initWithMin:v14 max:v7 userInfo:v9, v7, v13];
    [*(a1 + 48) addObject:v15];
  }
}

- (double)distanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  coordinateCopy = coordinate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKBarSeries distanceFromPoint:blockCoordinate:chartRect:];
  }

  [coordinateCopy max];
  UIDistanceBetweenPoints();
  v7 = v6;

  return v7;
}

- (double)xAxisDistanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  x = point.x;
  coordinateCopy = coordinate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKBarSeries xAxisDistanceFromPoint:blockCoordinate:chartRect:];
  }

  [coordinateCopy startXValue];
  v8 = vabdd_f64(v7, x);

  return v8;
}

- (double)yAxisDifferenceToPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  y = point.y;
  coordinateCopy = coordinate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKBarSeries yAxisDifferenceToPoint:blockCoordinate:chartRect:];
  }

  [coordinateCopy max];
  v8 = v7 - y;

  return v8;
}

- (BOOL)blockCoordinate:(id)coordinate lessThan:(id)than
{
  coordinateCopy = coordinate;
  thanCopy = than;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKBarSeries blockCoordinate:lessThan:];
  }

  v7 = thanCopy;
  [coordinateCopy max];
  v9 = v8;
  [v7 max];
  v11 = v10;

  return v9 < v11;
}

- (BOOL)blockCoordinate:(id)coordinate greaterThan:(id)than
{
  coordinateCopy = coordinate;
  thanCopy = than;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKBarSeries blockCoordinate:greaterThan:];
  }

  v7 = thanCopy;
  [coordinateCopy max];
  v9 = v8;
  [v7 max];
  v11 = v10;

  return v9 > v11;
}

- (CGSize)cornerRadiiStorage
{
  width = self->_cornerRadiiStorage.width;
  height = self->_cornerRadiiStorage.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)coordinatesForBlock:blockPath:xAxis:yAxis:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"points != nil" object:? file:? lineNumber:? description:?];
}

- (void)distanceFromPoint:blockCoordinate:chartRect:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)xAxisDistanceFromPoint:blockCoordinate:chartRect:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)yAxisDifferenceToPoint:blockCoordinate:chartRect:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)blockCoordinate:lessThan:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)blockCoordinate:greaterThan:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end