@interface HKBarSeries
- (BOOL)blockCoordinate:(id)a3 greaterThan:(id)a4;
- (BOOL)blockCoordinate:(id)a3 lessThan:(id)a4;
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
- (double)barWidthForVisibleBarCount:(int64_t)a3 axisRect:(CGRect)a4 minimumSpacing:(double)a5;
- (double)distanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (double)xAxisDistanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (double)yAxisDifferenceToPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6;
- (int64_t)_configurationIndexForCoordinate:(id)a3 inConfigurations:(id)a4;
- (void)_drawConfiguration:(id)a3 fillStyleBezierPaths:(id)a4 strokeStyle:(id)a5 axisRect:(CGRect)a6 context:(CGContext *)a7;
- (void)_drawPath:(id)a3 withFillStyle:(id)a4 strokeStyle:(id)a5 axisRect:(CGRect)a6 context:(CGContext *)a7;
- (void)clearCaches;
- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9;
- (void)drawWithBlockCoordinates:(id)a3 visibleBarCount:(int64_t)a4 pointTransform:(CGAffineTransform *)a5 context:(CGContext *)a6 axisRect:(CGRect)a7 seriesRenderingDelegate:(id)a8;
- (void)setCornerRadii:(CGSize)a3;
- (void)setDefaultConfiguration:(id)a3;
- (void)setInactiveFillStyle:(id)a3;
- (void)setOverrideConfigurations:(id)a3;
- (void)setSelectedFillStyle:(id)a3;
- (void)setSelectedStrokeStyle:(id)a3;
- (void)setTiledStrokeStyle:(id)a3;
- (void)setUnselectedFillStyle:(id)a3;
- (void)setUnselectedStrokeStyle:(id)a3;
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
  v3 = [(HKBarSeries *)self defaultConfiguration];
  v4 = [v3 selectedFillStyle];
  [v4 clearCache];

  v5 = [(HKBarSeries *)self defaultConfiguration];
  v6 = [v5 unselectedFillStyle];
  [v6 clearCache];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [(HKBarSeries *)self overrideConfigurations];
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v12 selectedFillStyle];
        [v13 clearCache];

        v14 = [v12 unselectedFillStyle];
        [v14 clearCache];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v15.receiver = self;
  v15.super_class = HKBarSeries;
  [(HKGraphSeries *)&v15 clearCaches];
}

- (HKBarSeriesConfiguration)defaultConfiguration
{
  v3 = [(HKBarSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_defaultConfigurationStorage;
  v5 = [(HKBarSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setDefaultConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(HKBarSeries *)self seriesMutableStateLock];
  [v5 lock];

  defaultConfigurationStorage = self->_defaultConfigurationStorage;
  self->_defaultConfigurationStorage = v4;

  v7 = [(HKBarSeries *)self seriesMutableStateLock];
  [v7 unlock];
}

- (NSMutableArray)overrideConfigurations
{
  v3 = [(HKBarSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_overrideConfigurationsStorage;
  v5 = [(HKBarSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setOverrideConfigurations:(id)a3
{
  v4 = a3;
  v5 = [(HKBarSeries *)self seriesMutableStateLock];
  [v5 lock];

  overrideConfigurationsStorage = self->_overrideConfigurationsStorage;
  self->_overrideConfigurationsStorage = v4;

  v7 = [(HKBarSeries *)self seriesMutableStateLock];
  [v7 unlock];
}

- (HKStrokeStyle)unselectedStrokeStyle
{
  v3 = [(HKBarSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_unselectedStrokeStyleStorage;
  v5 = [(HKBarSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setUnselectedStrokeStyle:(id)a3
{
  v4 = a3;
  v5 = [(HKBarSeries *)self seriesMutableStateLock];
  [v5 lock];

  unselectedStrokeStyleStorage = self->_unselectedStrokeStyleStorage;
  self->_unselectedStrokeStyleStorage = v4;

  v7 = [(HKBarSeries *)self seriesMutableStateLock];
  [v7 unlock];
}

- (HKStrokeStyle)selectedStrokeStyle
{
  v3 = [(HKBarSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_selectedStrokeStyleStorage;
  v5 = [(HKBarSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setSelectedStrokeStyle:(id)a3
{
  v4 = a3;
  v5 = [(HKBarSeries *)self seriesMutableStateLock];
  [v5 lock];

  selectedStrokeStyleStorage = self->_selectedStrokeStyleStorage;
  self->_selectedStrokeStyleStorage = v4;

  v7 = [(HKBarSeries *)self seriesMutableStateLock];
  [v7 unlock];
}

- (HKStrokeStyle)tiledStrokeStyle
{
  v3 = [(HKBarSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_tiledStrokeStyleStorage;
  v5 = [(HKBarSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setTiledStrokeStyle:(id)a3
{
  v4 = a3;
  v5 = [(HKBarSeries *)self seriesMutableStateLock];
  [v5 lock];

  tiledStrokeStyleStorage = self->_tiledStrokeStyleStorage;
  self->_tiledStrokeStyleStorage = v4;

  v7 = [(HKBarSeries *)self seriesMutableStateLock];
  [v7 unlock];
}

- (HKFillStyle)unselectedFillStyle
{
  v3 = [(HKBarSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = [(HKBarSeriesConfiguration *)self->_defaultConfigurationStorage unselectedFillStyle];
  v5 = [(HKBarSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setUnselectedFillStyle:(id)a3
{
  v4 = a3;
  v5 = [(HKBarSeries *)self seriesMutableStateLock];
  [v5 lock];

  [(HKBarSeriesConfiguration *)self->_defaultConfigurationStorage setUnselectedFillStyle:v4];
  v6 = [(HKBarSeries *)self seriesMutableStateLock];
  [v6 unlock];
}

- (HKFillStyle)selectedFillStyle
{
  v3 = [(HKBarSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = [(HKBarSeriesConfiguration *)self->_defaultConfigurationStorage selectedFillStyle];
  v5 = [(HKBarSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setSelectedFillStyle:(id)a3
{
  v4 = a3;
  v5 = [(HKBarSeries *)self seriesMutableStateLock];
  [v5 lock];

  [(HKBarSeriesConfiguration *)self->_defaultConfigurationStorage setSelectedFillStyle:v4];
  v6 = [(HKBarSeries *)self seriesMutableStateLock];
  [v6 unlock];
}

- (HKFillStyle)inactiveFillStyle
{
  v3 = [(HKBarSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = [(HKBarSeriesConfiguration *)self->_defaultConfigurationStorage inactiveFillStyle];
  v5 = [(HKBarSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setInactiveFillStyle:(id)a3
{
  v4 = a3;
  v5 = [(HKBarSeries *)self seriesMutableStateLock];
  [v5 lock];

  [(HKBarSeriesConfiguration *)self->_defaultConfigurationStorage setInactiveFillStyle:v4];
  v6 = [(HKBarSeries *)self seriesMutableStateLock];
  [v6 unlock];
}

- (CGSize)cornerRadii
{
  v3 = [(HKBarSeries *)self seriesMutableStateLock];
  [v3 lock];

  width = self->_cornerRadiiStorage.width;
  height = self->_cornerRadiiStorage.height;
  v6 = [(HKBarSeries *)self seriesMutableStateLock];
  [v6 unlock];

  v7 = width;
  v8 = height;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setCornerRadii:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(HKBarSeries *)self seriesMutableStateLock];
  [v6 lock];

  self->_cornerRadiiStorage.width = width;
  self->_cornerRadiiStorage.height = height;
  v7 = [(HKBarSeries *)self seriesMutableStateLock];
  [v7 unlock];
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
  v21 = [(HKBarSeries *)self unselectedStrokeStyle];
  if (v21 || ([(HKBarSeries *)self unselectedFillStyle], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v24 = [(HKBarSeries *)self overrideConfigurations];
    v25 = [v24 count];

    if (!v25)
    {
      goto LABEL_5;
    }
  }

  v22 = [(HKBarSeries *)self visibleBarCountWithZoomLevelConfiguration:v19];
  v23 = *&a6->c;
  v26[0] = *&a6->a;
  v26[1] = v23;
  v26[2] = *&a6->tx;
  [(HKBarSeries *)self drawWithBlockCoordinates:v18 visibleBarCount:v22 pointTransform:v26 context:a7 axisRect:v20 seriesRenderingDelegate:x, y, width, height];
LABEL_5:
}

- (double)barWidthForVisibleBarCount:(int64_t)a3 axisRect:(CGRect)a4 minimumSpacing:(double)a5
{
  v5 = a4.size.width / a3;
  v6 = v5 * 0.33;
  if (v5 * 0.33 <= a5)
  {
    v6 = a5;
  }

  return floor(v5 - v6 + -1.0) + HKUIOnePixel();
}

- (void)drawWithBlockCoordinates:(id)a3 visibleBarCount:(int64_t)a4 pointTransform:(CGAffineTransform *)a5 context:(CGContext *)a6 axisRect:(CGRect)a7 seriesRenderingDelegate:(id)a8
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v74 = *MEMORY[0x1E69E9840];
  v45 = a3;
  v46 = a8;
  v43 = [v46 seriesDrawingDuringTiling];
  if (v43 && ([(HKBarSeries *)self tiledStrokeStyle], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v47 = [(HKBarSeries *)self tiledStrokeStyle];
  }

  else
  {
    v47 = [(HKBarSeries *)self unselectedStrokeStyle];
  }

  [v47 lineWidth];
  v19 = v18;
  v20 = [(HKBarSeries *)self selectedStrokeStyle];
  [v20 lineWidth];
  v22 = v21;

  if (v22 >= v19)
  {
    v23 = v22;
  }

  else
  {
    v23 = v19;
  }

  [v46 screenRectForSeries:self];
  [HKBarSeries barWidthForVisibleBarCount:"barWidthForVisibleBarCount:axisRect:minimumSpacing:" axisRect:a4 minimumSpacing:?];
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
  v29 = [(HKBarSeries *)self overrideConfigurations];
  v30 = [v29 hk_map:&__block_literal_global_349_0];

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
  v33 = *&a5->c;
  v52[0] = *&a5->a;
  v52[1] = v33;
  v52[2] = *&a5->tx;
  [v45 enumerateCoordinatesWithTransform:v52 roundToViewScale:1 block:v53];
  v34 = [(HKBarSeries *)self defaultConfiguration];
  [(HKBarSeries *)self _drawConfiguration:v34 fillStyleBezierPaths:v44 strokeStyle:v47 axisRect:a6 context:x, y, width, height];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v35 = [(HKBarSeries *)self overrideConfigurations];
  v36 = [v35 countByEnumeratingWithState:&v48 objects:v73 count:16];
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
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v48 + 1) + 8 * v39);
        v41 = [v31 objectAtIndexedSubscript:v37];
        [(HKBarSeries *)self _drawConfiguration:v40 fillStyleBezierPaths:v41 strokeStyle:v47 axisRect:a6 context:x, y, width, height];

        ++v37;
        ++v39;
      }

      while (v36 != v39);
      v36 = [v35 countByEnumeratingWithState:&v48 objects:v73 count:16];
    }

    while (v36);
  }

  if (((v43 | [v46 measuringStartupTime] ^ 1) & 1) == 0 && v66[3] >= 1)
  {
    v42 = [(HKGraphSeries *)self delegate];
    [v42 nonemptyDrawComplete];
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

- (int64_t)_configurationIndexForCoordinate:(id)a3 inConfigurations:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = a4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
        objc_enumerationMutation(v6);
      }

      v13 = [*(*(&v16 + 1) + 8 * v11) isIncludedBlock];
      v14 = (v13)[2](v13, v5);

      if (v14)
      {
        break;
      }

      ++v12;
      if (v8 == ++v11)
      {
        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (void)_drawConfiguration:(id)a3 fillStyleBezierPaths:(id)a4 strokeStyle:(id)a5 axisRect:(CGRect)a6 context:(CGContext *)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v21 = a3;
  v15 = a5;
  v16 = a4;
  if ([(HKGraphSeries *)self allowsSelection])
  {
    [v21 unselectedFillStyle];
  }

  else
  {
    [v21 inactiveFillStyle];
  }
  v17 = ;
  v18 = [v16 unselectedBezierPath];
  [(HKBarSeries *)self _drawPath:v18 withFillStyle:v17 strokeStyle:v15 axisRect:a7 context:x, y, width, height];

  v19 = [v16 selectedBezierPath];

  v20 = [v21 selectedFillStyle];
  [(HKBarSeries *)self _drawPath:v19 withFillStyle:v20 strokeStyle:v15 axisRect:a7 context:x, y, width, height];
}

- (void)_drawPath:(id)a3 withFillStyle:(id)a4 strokeStyle:(id)a5 axisRect:(CGRect)a6 context:(CGContext *)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v19 = a3;
  v15 = a4;
  v16 = a5;
  if (([v19 isEmpty] & 1) == 0)
  {
    if (v16)
    {
      CGContextSaveGState(a7);
      [v16 applyToContext:a7];
      CGContextAddPath(a7, [v19 CGPath]);
      CGContextStrokePath(a7);
      CGContextRestoreGState(a7);
    }

    if (v15)
    {
      v17 = [v19 CGPath];
      [(HKGraphSeries *)self alpha];
      [v15 renderPath:v17 context:a7 axisRect:x alpha:{y, width, height, v18}];
    }
  }
}

- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = [a3 chartPoints];
  if (!v11)
  {
    [HKBarSeries coordinatesForBlock:blockPath:xAxis:yAxis:];
  }

  v12 = [v9 transform];
  v13 = [v10 transform];

  v14 = objc_opt_new();
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __57__HKBarSeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke;
  v22[3] = &unk_1E81B6998;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v15 = v14;
  v16 = v13;
  v17 = v12;
  [v11 enumerateObjectsUsingBlock:v22];
  v20 = *&a4->index;
  resolution = a4->resolution;
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

- (double)distanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  v5 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKBarSeries distanceFromPoint:blockCoordinate:chartRect:];
  }

  [v5 max];
  UIDistanceBetweenPoints();
  v7 = v6;

  return v7;
}

- (double)xAxisDistanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  x = a3.x;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKBarSeries xAxisDistanceFromPoint:blockCoordinate:chartRect:];
  }

  [v6 startXValue];
  v8 = vabdd_f64(v7, x);

  return v8;
}

- (double)yAxisDifferenceToPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  y = a3.y;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKBarSeries yAxisDifferenceToPoint:blockCoordinate:chartRect:];
  }

  [v6 max];
  v8 = v7 - y;

  return v8;
}

- (BOOL)blockCoordinate:(id)a3 lessThan:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKBarSeries blockCoordinate:lessThan:];
  }

  v7 = v6;
  [v5 max];
  v9 = v8;
  [v7 max];
  v11 = v10;

  return v9 < v11;
}

- (BOOL)blockCoordinate:(id)a3 greaterThan:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKBarSeries blockCoordinate:greaterThan:];
  }

  v7 = v6;
  [v5 max];
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