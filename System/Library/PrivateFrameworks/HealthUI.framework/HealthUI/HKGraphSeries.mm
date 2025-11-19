@interface HKGraphSeries
+ (void)drawFilledMarkerInContext:(CGContext *)a3 color:(CGColor *)a4 x:(double)a5 y:(double)a6 radius:(double)a7;
+ (void)drawInnerDotMarkerInContext:(CGContext *)a3 outColor:(CGColor *)a4 inColor:(CGColor *)a5 x:(double)a6 y:(double)a7 radius:(double)a8;
- ($99835EE01C73814C063FE1D215793BF7)selectedPathRange;
- ($99835EE01C73814C063FE1D215793BF7)selectedPathRangeStorage;
- (BOOL)_checkInternalDirtyFlag;
- (BOOL)_setInternalDirtyFlag;
- (BOOL)adjustYAxisForLabels;
- (BOOL)allowsSelection;
- (BOOL)blockCoordinate:(id)a3 greaterThan:(id)a4;
- (BOOL)blockCoordinate:(id)a3 lessThan:(id)a4;
- (BOOL)containsCoordinatesInChartRect:(CGRect)a3 xAxis:(id)a4 zoomScale:(double)a5 resolution:(int64_t)a6 contentOffset:(CGPoint)a7 xAxisTransform:(CGAffineTransform *)a8;
- (BOOL)drawLegendInsideSeries;
- (BOOL)drawSelectionLineBehindAllSeries;
- (BOOL)hasAnyDataLoadedInXAxisRange:(id)a3 dateZoom:(int64_t)a4 resolution:(int64_t)a5;
- (BOOL)invertYAxis;
- (BOOL)isCriticalForAutoscale;
- (BOOL)isHighlighted;
- (BOOL)isRangeHighPriority:(id)a3;
- (BOOL)supportsMultiTouchSelection;
- (BOOL)untransformedChartPointsForTimeScope:(int64_t)a3 resolution:(int64_t)a4 range:(id)a5 completion:(id)a6;
- (BOOL)wantsRoundingDuringYRangeExpansion;
- (CGAffineTransform)coordinateTransformForChartRect:(SEL)a3 xAxisTransform:(CGRect)a4;
- (CGAffineTransform)coordinateTransformFromXAxisTransform:(SEL)a3 chartRect:(CGAffineTransform *)a4;
- (CGRect)adjustRect:(CGRect)a3 forFont:(id)a4;
- (CGRect)backgroundRectFromStringRect:(CGRect)a3 forFont:(id)a4;
- (HKAxis)yAxis;
- (HKGraphSeries)init;
- (HKGraphSeriesAxisScalingRule)axisScalingRule;
- (HKGraphSeriesDataSource)dataSource;
- (HKSeriesDelegate)delegate;
- (HKSeriesDelegate)delegateStorage;
- (HKValueRange)visibleValueRange;
- (NSArray)detailLegendEntries;
- (NSArray)titleLegendEntries;
- (UIColor)offScreenIndicatorColor;
- (double)alpha;
- (double)distanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (double)distanceFromTouchPoint:(CGPoint)a3 inChartRect:(CGRect)a4 xAxis:(id)a5 zoomScale:(double)a6 resolution:(int64_t)a7 contentOffset:(CGPoint)a8 xAxisTransform:(CGAffineTransform *)a9;
- (double)offscreenIndicatorAlpha;
- (double)xAxisDistanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (double)yAxisDifferenceToPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (id)_cachedCoordinatesForBlockPath:(HKGraphSeriesDataBlockPath *)a3;
- (id)_clipYAxisValueRangeIfNecessary:(id)a3;
- (id)_coordinateListsForGeneratorWithXAxis:(id)a3 zoomScale:(double)a4 chartRect:(CGRect)a5 contentOffset:(CGPoint)a6 resolution:(int64_t)a7;
- (id)_coordinateListsWithXValueRange:(id)a3 xAxis:(id)a4 zoomLevel:(int64_t)a5 resolution:(int64_t)a6;
- (id)_coordinatesForBlockPath:(HKGraphSeriesDataBlockPath *)a3 xAxis:(id)a4;
- (id)_dataBlockForBlockPath:(HKGraphSeriesDataBlockPath *)a3;
- (id)_expandYRange:(id)a3 withXRange:(id)a4 dateZoom:(int64_t)a5 resolution:(int64_t)a6 chartRect:(CGRect)a7;
- (id)_getBlockFromDataSource:(HKGraphSeriesDataBlockPath *)a3;
- (id)_visibleXValueRangeWithAxis:(id)a3 chartRect:(CGRect)a4 contentOffset:(CGPoint)a5 zoomScale:(double)a6;
- (id)closestXCoordinateRange;
- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6;
- (id)findVisibleBlockCoordinatesForChartRect:(CGRect)a3 xAxis:(id)a4 zoomScale:(double)a5 resolution:(int64_t)a6 contentOffset:(CGPoint)a7 xAxisTransform:(CGAffineTransform *)a8;
- (id)seriesCoordinatesWithXAxis:(id)a3 chartRect:(CGRect)a4 zoomScale:(double)a5 contentOffset:(CGPoint)a6 resolution:(int64_t)a7;
- (id)seriesDataSourceContext;
- (id)valueRangeForYAxisWithXAxisRange:(id)a3 dateZoom:(int64_t)a4 resolution:(int64_t)a5 chartRect:(CGRect)a6;
- (void)_cacheCoordinates:(id)a3 forBlockPath:(HKGraphSeriesDataBlockPath *)a4;
- (void)_clearInternalDirtyFlag;
- (void)_enumeratePathIndexesInValueRange:(id)a3 zoomLevel:(int64_t)a4 resolution:(int64_t)a5 block:(id)a6;
- (void)_requestDataSourceBlocksFromPath:(HKGraphSeriesDataBlockPath *)a3 toPath:(HKGraphSeriesDataBlockPath *)a4;
- (void)_setDirtyWithNewData:(BOOL)a3;
- (void)dataSourceDidUpdateCache:(id)a3;
- (void)dealloc;
- (void)deselectPath;
- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9;
- (void)drawWithChartRect:(CGRect)a3 seriesCoordinates:(id)a4 zoomLevelConfiguration:(id)a5 coordinateTransform:(CGAffineTransform *)a6 inContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9;
- (void)enumerateChartPointsInRange:(id)a3 zoomLevel:(int64_t)a4 resolution:(int64_t)a5 block:(id)a6;
- (void)enumerateCoordinatesInChartRect:(CGRect)a3 xAxis:(id)a4 zoomScale:(double)a5 resolution:(int64_t)a6 contentOffset:(CGPoint)a7 xAxisTransform:(CGAffineTransform *)a8 roundToViewScale:(BOOL)a9 exclusionOptions:(int64_t)a10 block:(id)a11;
- (void)selectPathsinPathRange:(id *)a3 coordinateRange:(id)a4;
- (void)setAdjustYAxisForLabels:(BOOL)a3;
- (void)setAllowsSelection:(BOOL)a3;
- (void)setAlpha:(double)a3;
- (void)setAxisScalingRule:(id)a3;
- (void)setClosestXCoordinateRange:(id)a3;
- (void)setDataSource:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setDetailLegendEntries:(id)a3;
- (void)setDrawLegendInsideSeries:(BOOL)a3;
- (void)setDrawSelectionLineBehindAllSeries:(BOOL)a3;
- (void)setInvertYAxis:(BOOL)a3;
- (void)setIsCriticalForAutoscale:(BOOL)a3;
- (void)setOffScreenIndicatorColor:(id)a3;
- (void)setOffscreenIndicatorAlpha:(double)a3;
- (void)setSelectedPathRange:(id *)a3;
- (void)setSeriesDataSourceContext:(id)a3;
- (void)setTitleLegendEntries:(id)a3;
- (void)setWantsRoundingDuringYRangeExpansion:(BOOL)a3;
- (void)setYAxis:(id)a3;
- (void)updateForAutoscale:(id)a3;
@end

@implementation HKGraphSeries

- (HKGraphSeries)init
{
  v23.receiver = self;
  v23.super_class = HKGraphSeries;
  v2 = [(HKGraphSeries *)&v23 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    v4 = *(v2 + 3);
    *(v2 + 3) = v3;

    [*(v2 + 3) setName:@"seriesMutableStateLock"];
    v5 = *(v2 + 4);
    *(v2 + 4) = 0;

    *(v2 + 4) = 1;
    v2[10] = 1;
    v6 = *(v2 + 6);
    *(v2 + 6) = 0;

    v7 = *(v2 + 5);
    *(v2 + 5) = 0;

    v8 = *(v2 + 7);
    *(v2 + 7) = 0;

    v2[11] = 0;
    v9 = [MEMORY[0x1E696AFB0] UUID];
    v10 = *(v2 + 2);
    *(v2 + 2) = v9;

    v11 = *(v2 + 8);
    *(v2 + 8) = 0;

    objc_storeWeak(v2 + 9, 0);
    *(v2 + 9) = HKGraphSeriesDataPointPathNone;
    *(v2 + 10) = unk_1C3D5D5B8;
    *(v2 + 11) = HKGraphSeriesDataPointPathNone;
    *(v2 + 12) = unk_1C3D5D5B8;
    __asm { FMOV            V0.2D, #1.0 }

    *(v2 + 6) = _Q0;
    *(v2 + 13) = 1;
    v17 = *(v2 + 15);
    *(v2 + 15) = 0;

    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v19 = *(v2 + 16);
    *(v2 + 16) = v18;

    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v21 = *(v2 + 17);
    *(v2 + 17) = v20;
  }

  return v2;
}

- (void)dealloc
{
  v3 = [(HKGraphSeries *)self dataSource];
  [v3 setDelegate:0];

  v4.receiver = self;
  v4.super_class = HKGraphSeries;
  [(HKGraphSeries *)&v4 dealloc];
}

- (HKGraphSeriesDataSource)dataSource
{
  v3 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_dataSourceStorage;
  v5 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setDataSource:(id)a3
{
  v9 = a3;
  v5 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v5 lock];

  dataSourceStorage = self->_dataSourceStorage;
  if (dataSourceStorage == v9)
  {
    v8 = [(HKGraphSeries *)self seriesMutableStateLock];
    [v8 unlock];
  }

  else
  {
    if (dataSourceStorage)
    {
      [(HKGraphSeriesDataSource *)dataSourceStorage setDelegate:0];
    }

    objc_storeStrong(&self->_dataSourceStorage, a3);
    [(HKGraphSeriesDataSource *)self->_dataSourceStorage setDelegate:self];
    v7 = [(HKGraphSeries *)self seriesMutableStateLock];
    [v7 unlock];

    [(HKGraphSeries *)self _setDirtyWithNewData:0];
  }
}

- (BOOL)adjustYAxisForLabels
{
  v3 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v3 lock];

  LOBYTE(v3) = self->_adjustYAxisForLabelsStorage;
  v4 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v4 unlock];

  return v3;
}

- (void)setAdjustYAxisForLabels:(BOOL)a3
{
  v5 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v5 lock];

  self->_adjustYAxisForLabelsStorage = a3;
  v6 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v6 unlock];
}

- (id)seriesDataSourceContext
{
  v3 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_seriesDataSourceContextStorage;
  v5 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setSeriesDataSourceContext:(id)a3
{
  v4 = a3;
  v5 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v5 lock];

  seriesDataSourceContextStorage = self->_seriesDataSourceContextStorage;
  self->_seriesDataSourceContextStorage = v4;

  v7 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v7 unlock];
}

- (BOOL)isCriticalForAutoscale
{
  v3 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v3 lock];

  LOBYTE(v3) = self->_isCriticalForAutoscaleStorage;
  v4 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v4 unlock];

  return v3;
}

- (void)setIsCriticalForAutoscale:(BOOL)a3
{
  v5 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v5 lock];

  self->_isCriticalForAutoscaleStorage = a3;
  v6 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v6 unlock];
}

- (BOOL)wantsRoundingDuringYRangeExpansion
{
  v3 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v3 lock];

  LOBYTE(v3) = self->_wantsRoundingDuringYRangeExpansionStorage;
  v4 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v4 unlock];

  return v3;
}

- (void)setWantsRoundingDuringYRangeExpansion:(BOOL)a3
{
  v5 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v5 lock];

  self->_wantsRoundingDuringYRangeExpansionStorage = a3;
  v6 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v6 unlock];
}

- (HKGraphSeriesAxisScalingRule)axisScalingRule
{
  v3 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_axisScalingRuleStorage;
  v5 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setAxisScalingRule:(id)a3
{
  v4 = a3;
  v5 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v5 lock];

  axisScalingRuleStorage = self->_axisScalingRuleStorage;
  self->_axisScalingRuleStorage = v4;

  v7 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v7 unlock];
}

- (UIColor)offScreenIndicatorColor
{
  v3 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = [(UIColor *)self->_offScreenIndicatorColorStorage colorWithAlphaComponent:self->_offscreenIndicatorAlphaStorage];
  v5 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setOffScreenIndicatorColor:(id)a3
{
  v4 = a3;
  v5 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v5 lock];

  offScreenIndicatorColorStorage = self->_offScreenIndicatorColorStorage;
  self->_offScreenIndicatorColorStorage = v4;

  v7 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v7 unlock];
}

- (BOOL)invertYAxis
{
  v3 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v3 lock];

  LOBYTE(v3) = self->_invertYAxisStorage;
  v4 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v4 unlock];

  return v3;
}

- (void)setInvertYAxis:(BOOL)a3
{
  v5 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v5 lock];

  self->_invertYAxisStorage = a3;
  v6 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v6 unlock];
}

- (HKAxis)yAxis
{
  v3 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_yAxisStorage;
  v5 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setYAxis:(id)a3
{
  v4 = a3;
  v5 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v5 lock];

  yAxisStorage = self->_yAxisStorage;
  self->_yAxisStorage = v4;

  v7 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v7 unlock];
}

- (HKSeriesDelegate)delegate
{
  v3 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v3 lock];

  WeakRetained = objc_loadWeakRetained(&self->_delegateStorage);
  v5 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return WeakRetained;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v5 lock];

  objc_storeWeak(&self->_delegateStorage, v4);
  v6 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v6 unlock];
}

- (NSArray)titleLegendEntries
{
  v3 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_titleLegendEntriesStorage;
  v5 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setTitleLegendEntries:(id)a3
{
  v4 = a3;
  v5 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v5 lock];

  titleLegendEntriesStorage = self->_titleLegendEntriesStorage;
  self->_titleLegendEntriesStorage = v4;

  v7 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v7 unlock];
}

- (NSArray)detailLegendEntries
{
  v3 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_detailLegendEntriesStorage;
  v5 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setDetailLegendEntries:(id)a3
{
  v4 = a3;
  v5 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v5 lock];

  detailLegendEntriesStorage = self->_detailLegendEntriesStorage;
  self->_detailLegendEntriesStorage = v4;

  v7 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v7 unlock];
}

- (BOOL)drawLegendInsideSeries
{
  v3 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v3 lock];

  LOBYTE(v3) = self->_drawLegendInsideSeriesStorage;
  v4 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v4 unlock];

  return v3;
}

- (void)setDrawLegendInsideSeries:(BOOL)a3
{
  v5 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v5 lock];

  self->_drawLegendInsideSeriesStorage = a3;
  v6 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v6 unlock];
}

- (double)alpha
{
  v3 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v3 lock];

  alphaStorage = self->_alphaStorage;
  v5 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return alphaStorage;
}

- (void)setAlpha:(double)a3
{
  v5 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v5 lock];

  self->_alphaStorage = a3;
  v6 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v6 unlock];
}

- (double)offscreenIndicatorAlpha
{
  v3 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v3 lock];

  offscreenIndicatorAlphaStorage = self->_offscreenIndicatorAlphaStorage;
  v5 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return offscreenIndicatorAlphaStorage;
}

- (void)setOffscreenIndicatorAlpha:(double)a3
{
  v5 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v5 lock];

  self->_offscreenIndicatorAlphaStorage = a3;
  v6 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v6 unlock];
}

- (BOOL)allowsSelection
{
  v3 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v3 lock];

  LOBYTE(v3) = self->_allowsSelectionStorage;
  v4 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v4 unlock];

  return v3;
}

- (void)setAllowsSelection:(BOOL)a3
{
  v3 = a3;
  v5 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v5 lock];

  if (self->_allowsSelectionStorage == v3)
  {
    v7 = [(HKGraphSeries *)self seriesMutableStateLock];
    [v7 unlock];
  }

  else
  {
    self->_allowsSelectionStorage = v3;
    v6 = [(HKGraphSeries *)self seriesMutableStateLock];
    [v6 unlock];

    [(HKGraphSeries *)self _setDirtyWithNewData:0];
  }
}

- (BOOL)drawSelectionLineBehindAllSeries
{
  v3 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v3 lock];

  LOBYTE(v3) = self->_drawSelectionLineBehindAllSeriesStorage;
  v4 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v4 unlock];

  return v3;
}

- (void)setDrawSelectionLineBehindAllSeries:(BOOL)a3
{
  v5 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v5 lock];

  self->_drawSelectionLineBehindAllSeriesStorage = a3;
  v6 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v6 unlock];
}

- ($99835EE01C73814C063FE1D215793BF7)selectedPathRange
{
  v5 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v5 lock];

  v6 = *&self->_selectedPathRangeStorage.min.blockPath.resolution;
  *&retstr->var0.var0.index = *&self->_selectedPathRangeStorage.min.blockPath.index;
  *&retstr->var0.var0.resolution = v6;
  v7 = *&self->_selectedPathRangeStorage.max.blockPath.resolution;
  *&retstr->var1.var0.index = *&self->_selectedPathRangeStorage.max.blockPath.index;
  *&retstr->var1.var0.resolution = v7;
  v9 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v9 unlock];

  return result;
}

- (void)setSelectedPathRange:(id *)a3
{
  v5 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v5 lock];

  v6 = *&a3->var0.var0.index;
  v7 = *&a3->var0.var0.resolution;
  v8 = *&a3->var1.var0.resolution;
  *&self->_selectedPathRangeStorage.max.blockPath.index = *&a3->var1.var0.index;
  *&self->_selectedPathRangeStorage.max.blockPath.resolution = v8;
  *&self->_selectedPathRangeStorage.min.blockPath.index = v6;
  *&self->_selectedPathRangeStorage.min.blockPath.resolution = v7;
  v9 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v9 unlock];
}

- (id)closestXCoordinateRange
{
  v3 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_closestXCoordinateRangeStorage;
  v5 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setClosestXCoordinateRange:(id)a3
{
  v4 = a3;
  v5 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v5 lock];

  closestXCoordinateRangeStorage = self->_closestXCoordinateRangeStorage;
  self->_closestXCoordinateRangeStorage = v4;

  v7 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v7 unlock];
}

- (HKValueRange)visibleValueRange
{
  v3 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_visibleValueRangeStorage;
  v5 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)updateForAutoscale:(id)a3
{
  v4 = a3;
  v5 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v5 lock];

  visibleValueRangeStorage = self->_visibleValueRangeStorage;
  self->_visibleValueRangeStorage = v4;

  v7 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v7 unlock];

  [(HKGraphSeries *)self _setDirtyWithNewData:0];
}

- (id)_expandYRange:(id)a3 withXRange:(id)a4 dateZoom:(int64_t)a5 resolution:(int64_t)a6 chartRect:(CGRect)a7
{
  v11 = a3;
  v12 = a4;
  v13 = objc_alloc_init(HKChartPointRangeBuilder);
  v14 = [v12 startDate];
  v15 = [v12 endDate];

  [v15 timeIntervalSinceDate:v14];
  v17 = v16;
  v18 = [v14 dateByAddingTimeInterval:v16 * -2.0];
  v19 = [v15 dateByAddingTimeInterval:v17 + v17];
  v20 = [HKValueRange valueRangeWithMinValue:v18 maxValue:v19];

  v40 = MEMORY[0x1E69E9820];
  v41 = 3221225472;
  v42 = __72__HKGraphSeries__expandYRange_withXRange_dateZoom_resolution_chartRect___block_invoke;
  v43 = &unk_1E81BB018;
  v46 = a5;
  v47 = a6;
  v44 = self;
  v21 = v13;
  v45 = v21;
  [(HKGraphSeries *)self _enumeratePathIndexesInValueRange:v20 zoomLevel:a5 resolution:a6 block:&v40];
  v22 = [(HKChartPointRangeBuilder *)v21 suggestedValueRangeWithRounding:[(HKGraphSeries *)self wantsRoundingDuringYRangeExpansion:v40]];
  if (v22)
  {
    v23 = [v11 maxValue];
    [v23 doubleValue];
    v25 = v24;

    v26 = [v22 maxValue];
    [v26 doubleValue];
    v28 = v27;

    if (v25 < v28)
    {
      v25 = v28;
    }

    v29 = [v11 minValue];
    [v29 doubleValue];
    v31 = v30;

    v32 = [v22 minValue];
    [v32 doubleValue];
    v34 = v33;

    if (v31 >= v34)
    {
      v35 = v34;
    }

    else
    {
      v35 = v31;
    }

    v36 = [MEMORY[0x1E696AD98] numberWithDouble:v35];
    v37 = [MEMORY[0x1E696AD98] numberWithDouble:v25];
    v38 = [HKValueRange valueRangeWithMinValue:v36 maxValue:v37];
  }

  else
  {
    v38 = v11;
  }

  return v38;
}

void __72__HKGraphSeries__expandYRange_withXRange_dateZoom_resolution_chartRect___block_invoke(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v15 = a2;
  v16 = *(a1 + 48);
  v4 = [v3 _dataBlockForBlockPath:&v15];
  v5 = v4;
  if (v4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [v4 chartPoints];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(a1 + 40) visitChartPoint:*(*(&v11 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

- (BOOL)hasAnyDataLoadedInXAxisRange:(id)a3 dateZoom:(int64_t)a4 resolution:(int64_t)a5
{
  v8 = a3;
  v9 = [(HKGraphSeries *)self yAxis];
  v10 = v9;
  v11 = 0;
  if (v8 && v9)
  {
    v24 = 0uLL;
    v25 = 0;
    v12 = [(HKGraphSeries *)self dataSource];
    v13 = [v8 minValue];
    if (v12)
    {
      [v12 blockPathForX:v13 zoom:a4 resolution:a5];
    }

    else
    {
      v24 = 0uLL;
      v25 = 0;
    }

    v22 = 0uLL;
    v23 = 0;
    v14 = [(HKGraphSeries *)self dataSource];
    v15 = [v8 maxValue];
    if (v14)
    {
      [v14 blockPathForX:v15 zoom:a4 resolution:a5];
    }

    else
    {
      v22 = 0uLL;
      v23 = 0;
    }

    *&v24 = v24 - 1;
    *&v22 = v22 + 1;
    v20 = v24;
    v21 = v25;
    v18 = v22;
    v19 = v23;
    [(HKGraphSeries *)self _requestDataSourceBlocksFromPath:&v20 toPath:&v18];
    v16 = [(HKGraphSeries *)self dataSource];
    v20 = v24;
    v21 = v25;
    v18 = v22;
    v19 = v23;
    v11 = [v16 hasAllBlocksAvailableBetweenStartPath:&v20 endPath:&v18];
  }

  return v11;
}

- (id)valueRangeForYAxisWithXAxisRange:(id)a3 dateZoom:(int64_t)a4 resolution:(int64_t)a5 chartRect:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v13 = a3;
  v14 = [(HKGraphSeries *)self yAxis];
  v15 = v14;
  v16 = 0;
  if (!v13 || !v14)
  {
    goto LABEL_19;
  }

  v17 = [v13 minValue];
  [v17 doubleValue];
  v19 = v18;

  v20 = [v13 maxValue];
  [v20 doubleValue];
  v22 = v21;

  v55[0] = 0;
  v55[1] = v55;
  v55[2] = 0x3032000000;
  v55[3] = __Block_byref_object_copy__23;
  v55[4] = __Block_byref_object_dispose__23;
  v56 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0x7FEFFFFFFFFFFFFFLL;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0xFFEFFFFFFFFFFFFFLL;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __80__HKGraphSeries_valueRangeForYAxisWithXAxisRange_dateZoom_resolution_chartRect___block_invoke;
  aBlock[3] = &unk_1E81BB040;
  aBlock[4] = &v51;
  aBlock[5] = &v47;
  v23 = _Block_copy(aBlock);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __80__HKGraphSeries_valueRangeForYAxisWithXAxisRange_dateZoom_resolution_chartRect___block_invoke_2;
  v37[3] = &unk_1E81BB068;
  v42 = a4;
  v43 = a5;
  v37[4] = self;
  v39 = v55;
  v44 = v22;
  v24 = v23;
  v45 = v19;
  v38 = v24;
  v40 = &v51;
  v41 = &v47;
  [(HKGraphSeries *)self _enumeratePathIndexesInValueRange:v13 zoomLevel:a4 resolution:a5 block:v37];
  if (v52[3] >= 1.79769313e308)
  {
    v28 = [(HKGraphSeries *)self axisScalingRule];

    if (!v28)
    {
      goto LABEL_11;
    }

    v29 = [(HKGraphSeries *)self axisScalingRule];
    v25 = [v29 noDataStartingRange];

    if (v25)
    {
      v25 = v25;
      v27 = v25;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v25 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    v26 = [MEMORY[0x1E696AD98] numberWithDouble:v48[3]];
    v27 = [HKValueRange valueRangeWithMinValue:v25 maxValue:v26];
  }

  if (v27)
  {
    v30 = [(HKGraphSeries *)self _expandYRange:v27 withXRange:v13 dateZoom:a4 resolution:a5 chartRect:x, y, width, height];

    goto LABEL_12;
  }

LABEL_11:
  v30 = 0;
LABEL_12:
  v31 = [(HKGraphSeries *)self axisScalingRule];

  if (v31 && v30)
  {
    v32 = [(HKGraphSeries *)self axisScalingRule];
    v33 = [v32 yValueRangeForRange:v30 zoomLevel:a4];

    v30 = v33;
  }

  v34 = [(HKGraphSeries *)self marginsForYAxis:v30 xAxisRange:v13 zoomLevel:a4 chartRect:x, y, width, height];

  v16 = [(HKGraphSeries *)self _clipYAxisValueRangeIfNecessary:v34];

  if ([(HKGraphSeries *)self adjustYAxisForLabels])
  {
    [v15 setAxisLabelEndings:0];
    v35 = [v15 adjustValueRangeForLabels:v16];

    v16 = v35;
  }

  else
  {
    [v15 setAxisLabelEndings:3];
  }

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(v55, 8);

LABEL_19:

  return v16;
}

void __80__HKGraphSeries_valueRangeForYAxisWithXAxisRange_dateZoom_resolution_chartRect___block_invoke(uint64_t a1, void *a2, void *a3, double a4)
{
  v7 = a3;
  v8 = a2;
  v9 = [v8 xValueAsGenericType];
  [v9 doubleValue];
  v11 = v10;

  v12 = [v7 xValueAsGenericType];
  [v12 doubleValue];
  v14 = v13;

  v15 = [v8 maxYValue];
  [v15 doubleValue];
  v17 = v16;

  v18 = [v7 maxYValue];
  [v18 doubleValue];
  v20 = v19;

  v21 = [v8 minYValue];

  [v21 doubleValue];
  v23 = v22;

  v24 = [v7 minYValue];

  [v24 doubleValue];
  v26 = v25;

  v27 = v14 - v11;
  v28 = 1.0 - (v14 - a4) / (v14 - v11);
  v29 = v17 + (v20 - v17) * v28;
  v30 = v23 + (v26 - v23) * v28;
  if (v17 >= v20)
  {
    v31 = v17;
  }

  else
  {
    v31 = v20;
  }

  if (v23 >= v26)
  {
    v32 = v26;
  }

  else
  {
    v32 = v23;
  }

  v33 = v27 < 0.00000011920929;
  if (v27 < 0.00000011920929)
  {
    v34 = v31;
  }

  else
  {
    v34 = v29;
  }

  if (v33)
  {
    v35 = v32;
  }

  else
  {
    v35 = v30;
  }

  v36 = *(*(a1 + 32) + 8);
  if (v35 >= *(v36 + 24))
  {
    v35 = *(v36 + 24);
  }

  *(v36 + 24) = v35;
  v37 = *(*(a1 + 40) + 8);
  if (v34 < *(v37 + 24))
  {
    v34 = *(v37 + 24);
  }

  *(v37 + 24) = v34;
}

void __80__HKGraphSeries_valueRangeForYAxisWithXAxisRange_dateZoom_resolution_chartRect___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v39 = a2;
  v40 = *(a1 + 72);
  v4 = [v3 _dataBlockForBlockPath:&v39];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = [v4 chartPoints];
  v6 = [v5 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v36;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v36 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v35 + 1) + 8 * i);
        v11 = [v10 minXValueAsGenericType];
        [v11 doubleValue];
        v13 = v12;

        v14 = [v10 maxXValueAsGenericType];
        [v14 doubleValue];
        v16 = v15;

        v17 = [*(*(*(a1 + 48) + 8) + 40) xValueAsGenericType];
        [v17 doubleValue];
        v19 = v18;

        v20 = *(a1 + 88);
        if (v13 <= v20)
        {
          if (v16 >= *(a1 + 96) && v13 <= v20)
          {
            v25 = [v10 maxYValue];
            [v25 doubleValue];
            v27 = v26;

            v28 = [v10 minYValue];
            [v28 doubleValue];
            v30 = v29;

            v31 = *(*(a1 + 56) + 8);
            v32 = *(v31 + 24);
            if (v30 < v32)
            {
              v32 = v30;
            }

            *(v31 + 24) = v32;
            v33 = *(*(a1 + 64) + 8);
            v34 = *(v33 + 24);
            if (v27 >= v34)
            {
              v34 = v27;
            }

            *(v33 + 24) = v34;
            v23 = *(*(*(a1 + 48) + 8) + 40);
            if (v23)
            {
              if (v19 < *(a1 + 96))
              {
                v22 = *(a1 + 40);
                goto LABEL_25;
              }
            }
          }
        }

        else
        {
          if (*(*(*(a1 + 48) + 8) + 40))
          {
            v21 = v19 < v20;
          }

          else
          {
            v21 = 0;
          }

          if (v21)
          {
            (*(*(a1 + 40) + 16))();
            if (v19 < *(a1 + 96))
            {
              v22 = *(a1 + 40);
              v23 = *(*(*(a1 + 48) + 8) + 40);
LABEL_25:
              (*(v22 + 16))(v22, v23, v10);
            }
          }
        }

        objc_storeStrong((*(*(a1 + 48) + 8) + 40), v10);
      }

      v7 = [v5 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v7);
  }
}

- (id)_clipYAxisValueRangeIfNecessary:(id)a3
{
  v4 = a3;
  v5 = [v4 minValue];
  [v5 doubleValue];
  v7 = v6;

  v8 = [v4 maxValue];
  [v8 doubleValue];
  v10 = v9;

  if (v4)
  {
    v11 = [(HKGraphSeries *)self axisScalingRule];
    if (objc_opt_respondsToSelector())
    {
      v12 = [v11 yAxisBounds];
      v13 = [v12 minValue];
      v14 = [v12 maxValue];
      if (v13)
      {
        v15 = [v4 minValue];

        if (v15)
        {
          [v13 doubleValue];
          if (v16 >= v7)
          {
            v7 = v16;
          }
        }
      }

      if (v14)
      {
        v17 = [v4 maxValue];

        if (v17)
        {
          [v14 doubleValue];
          if (v18 < v10)
          {
            v10 = v18;
          }
        }
      }
    }

    v19 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
    v20 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
    v21 = [HKValueRange valueRangeWithMinValue:v19 maxValue:v20];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)seriesCoordinatesWithXAxis:(id)a3 chartRect:(CGRect)a4 zoomScale:(double)a5 contentOffset:(CGPoint)a6 resolution:(int64_t)a7
{
  y = a6.y;
  x = a6.x;
  height = a4.size.height;
  width = a4.size.width;
  v13 = a4.origin.y;
  v14 = a4.origin.x;
  v16 = a3;
  v17 = [(HKGraphSeries *)self _coordinateListsForGeneratorWithXAxis:v16 zoomScale:a7 chartRect:a5 contentOffset:v14 resolution:v13, width, height, x, y];
  v18 = MEMORY[0x1E696AD98];
  v19 = [v16 transform];
  v20 = [v16 axisChartableValueRange];
  v21 = [v20 minValue];
  [v19 coordinateForValue:v21];
  v22 = [v18 numberWithDouble:?];
  v23 = MEMORY[0x1E696AD98];
  v24 = [v16 transform];
  v25 = [v16 axisChartableValueRange];

  v26 = [v25 maxValue];
  [v24 coordinateForValue:v26];
  v27 = [v23 numberWithDouble:?];
  v28 = [HKValueRange valueRangeWithMinValue:v22 maxValue:v27];

  v29 = [HKGraphSeriesBlockCoordinateList coordinateListByCombiningSubCoordinates:v17 chartableValueRange:v28];

  return v29;
}

- (CGAffineTransform)coordinateTransformFromXAxisTransform:(SEL)a3 chartRect:(CGAffineTransform *)a4
{
  v5 = *&a4->c;
  v7[0] = *&a4->a;
  v7[1] = v5;
  v7[2] = *&a4->tx;
  return [(HKGraphSeries *)self coordinateTransformForChartRect:v7 xAxisTransform:a5.origin.x, a5.origin.y, a5.size.width, a5.size.height];
}

- (void)drawWithChartRect:(CGRect)a3 seriesCoordinates:(id)a4 zoomLevelConfiguration:(id)a5 coordinateTransform:(CGAffineTransform *)a6 inContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v19 = a4;
  v20 = a5;
  v21 = a8;
  v22 = a9;
  v23 = [(HKGraphSeries *)self yAxis];
  v24 = [v23 requiresScaling];

  if ((v24 & 1) == 0)
  {
    CGContextSaveGState(a7);
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    if (!CGRectEqualToRect(v29, *MEMORY[0x1E695F050]))
    {
      v30.origin.x = x;
      v30.origin.y = y;
      v30.size.width = width;
      v30.size.height = height;
      CGContextClipToRect(a7, v30);
    }

    [(HKGraphSeries *)self alpha];
    if (v25 < 1.0)
    {
      [(HKGraphSeries *)self alpha];
      CGContextSetAlpha(a7, v26);
    }

    v27 = *&a6->c;
    v28[0] = *&a6->a;
    v28[1] = v27;
    v28[2] = *&a6->tx;
    [(HKGraphSeries *)self drawSeriesWithBlockCoordinates:v19 axisRect:v20 zoomLevelConfiguration:v28 pointTransform:a7 renderContext:v21 secondaryRenderContext:v22 seriesRenderingDelegate:x, y, width, height];
    CGContextRestoreGState(a7);
  }
}

- (CGAffineTransform)coordinateTransformForChartRect:(SEL)a3 xAxisTransform:(CGRect)a4
{
  v14 = *(MEMORY[0x1E695EFD0] + 16);
  *&v19.a = *MEMORY[0x1E695EFD0];
  *&v19.c = v14;
  *&v19.tx = *(MEMORY[0x1E695EFD0] + 32);
  MinY = CGRectGetMinY(a4);
  *&v18.a = *&v19.a;
  *&v18.c = v14;
  *&v18.tx = *&v19.tx;
  CGAffineTransformTranslate(&v19, &v18, 0.0, MinY);
  memset(&v18, 0, sizeof(v18));
  v9 = [(HKGraphSeries *)self yAxis];
  [v9 pointTransform];
  HKAffineTransformFromLinearTransforms(&v18, 0.0, 1.0, v10, v11);

  t1 = v18;
  t2 = v19;
  CGAffineTransformConcat(&v17, &t1, &t2);
  v18 = v17;
  v12 = *&a5->c;
  *&t1.a = *&a5->a;
  *&t1.c = v12;
  *&t1.tx = *&a5->tx;
  return CGAffineTransformConcat(retstr, &v17, &t1);
}

- (BOOL)containsCoordinatesInChartRect:(CGRect)a3 xAxis:(id)a4 zoomScale:(double)a5 resolution:(int64_t)a6 contentOffset:(CGPoint)a7 xAxisTransform:(CGAffineTransform *)a8
{
  y = a7.y;
  x = a7.x;
  height = a3.size.height;
  width = a3.size.width;
  v15 = a3.origin.y;
  v16 = a3.origin.x;
  v18 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __104__HKGraphSeries_containsCoordinatesInChartRect_xAxis_zoomScale_resolution_contentOffset_xAxisTransform___block_invoke;
  v22[3] = &unk_1E81BB090;
  v22[4] = &v23;
  v19 = *&a8->c;
  v21[0] = *&a8->a;
  v21[1] = v19;
  v21[2] = *&a8->tx;
  [(HKGraphSeries *)self enumerateCoordinatesInChartRect:v18 xAxis:a6 zoomScale:v21 resolution:1 contentOffset:2 xAxisTransform:v22 roundToViewScale:v16 exclusionOptions:v15 block:width, height, a5, x, y];
  LOBYTE(a6) = *(v24 + 24);
  _Block_object_dispose(&v23, 8);

  return a6;
}

uint64_t __104__HKGraphSeries_containsCoordinatesInChartRect_xAxis_zoomScale_resolution_contentOffset_xAxisTransform___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a5 = 1;
  return result;
}

- (void)enumerateCoordinatesInChartRect:(CGRect)a3 xAxis:(id)a4 zoomScale:(double)a5 resolution:(int64_t)a6 contentOffset:(CGPoint)a7 xAxisTransform:(CGAffineTransform *)a8 roundToViewScale:(BOOL)a9 exclusionOptions:(int64_t)a10 block:(id)a11
{
  y = a7.y;
  x = a7.x;
  height = a3.size.height;
  width = a3.size.width;
  v21 = a3.origin.y;
  v22 = a3.origin.x;
  v24 = a4;
  v25 = a11;
  if (!v25)
  {
    [HKGraphSeries enumerateCoordinatesInChartRect:xAxis:zoomScale:resolution:contentOffset:xAxisTransform:roundToViewScale:exclusionOptions:block:];
  }

  v26 = [(HKGraphSeries *)self _coordinateListsForGeneratorWithXAxis:v24 zoomScale:a6 chartRect:a5 contentOffset:v22 resolution:v21, width, height, x, y];
  v46 = 0u;
  v47 = 0u;
  v45 = 0u;
  v27 = *&a8->c;
  v44[0] = *&a8->a;
  v44[1] = v27;
  v44[2] = *&a8->tx;
  [(HKGraphSeries *)self coordinateTransformForChartRect:v44 xAxisTransform:v22, v21, width, height];
  v48.origin.x = v22;
  v48.origin.y = v21;
  v48.size.width = width;
  v48.size.height = height;
  MinX = CGRectGetMinX(v48);
  v49.origin.x = v22;
  v49.origin.y = v21;
  v49.size.width = width;
  v49.size.height = height;
  MaxX = CGRectGetMaxX(v49);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __145__HKGraphSeries_enumerateCoordinatesInChartRect_xAxis_zoomScale_resolution_contentOffset_xAxisTransform_roundToViewScale_exclusionOptions_block___block_invoke;
  v31[3] = &unk_1E81BB0E0;
  v33 = v45;
  v34 = v46;
  v35 = v47;
  v43 = a9;
  v36 = MaxX;
  v37 = MinX;
  v38 = a10;
  v39 = v22;
  v40 = v21;
  v41 = width;
  v42 = height;
  v31[4] = self;
  v32 = v25;
  v30 = v25;
  [v26 enumerateObjectsUsingBlock:v31];
}

void __145__HKGraphSeries_enumerateCoordinatesInChartRect_xAxis_zoomScale_resolution_contentOffset_xAxisTransform_roundToViewScale_exclusionOptions_block___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v7 = *(a1 + 152);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __145__HKGraphSeries_enumerateCoordinatesInChartRect_xAxis_zoomScale_resolution_contentOffset_xAxisTransform_roundToViewScale_exclusionOptions_block___block_invoke_2;
  v12[3] = &unk_1E81BB0B8;
  v15 = *(a1 + 96);
  v16 = *(a1 + 112);
  v8 = *(a1 + 40);
  v12[4] = *(a1 + 32);
  v9 = *(a1 + 136);
  v17 = *(a1 + 120);
  v18 = v9;
  v13 = v8;
  v14 = &v19;
  v10 = *(a1 + 64);
  v11[0] = *(a1 + 48);
  v11[1] = v10;
  v11[2] = *(a1 + 80);
  [v6 enumerateCoordinatesWithTransform:v11 roundToViewScale:v7 block:v12];
  *a4 = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
}

void __145__HKGraphSeries_enumerateCoordinatesInChartRect_xAxis_zoomScale_resolution_contentOffset_xAxisTransform_roundToViewScale_exclusionOptions_block___block_invoke_2(uint64_t a1, void *a2, _OWORD *a3, void *a4, _BYTE *a5)
{
  v9 = a2;
  v10 = a4;
  [v9 startXValue];
  v12 = v11;
  [v9 endXValue];
  v14 = v12 > *(a1 + 56) || v13 < *(a1 + 64);
  v15 = *(a1 + 72);
  if (v15 != 2)
  {
    if (v15 == 1 && v14)
    {
      goto LABEL_11;
    }

LABEL_10:
    v16 = *(a1 + 40);
    v17 = *(v16 + 16);
    v18 = a3[1];
    v19[0] = *a3;
    v19[1] = v18;
    v17(v16, v10, v9, v19);
    *a5 = *(*(*(a1 + 48) + 8) + 24);
    goto LABEL_11;
  }

  if (!v14 && [*(a1 + 32) blockCoordinateIsVisibleInsideOfChartRect:v9 blockCoordinate:{*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}])
  {
    goto LABEL_10;
  }

LABEL_11:
}

- (void)dataSourceDidUpdateCache:(id)a3
{
  v4 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v4 lock];

  v5 = [(HKGraphSeries *)self cachedCoordinateListsByBlockPath];
  [v5 removeAllObjects];

  v6 = [(HKGraphSeries *)self cachedDataBlocksByBlockPath];
  [v6 removeAllObjects];

  v7 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v7 unlock];

  [(HKGraphSeries *)self _setDirtyWithNewData:1];
}

- (BOOL)_setInternalDirtyFlag
{
  v3 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v3 lock];

  LOBYTE(v3) = self->_internalDirtyFlag;
  self->_internalDirtyFlag = 1;
  v4 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v4 unlock];

  return v3;
}

- (void)_clearInternalDirtyFlag
{
  v3 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v3 lock];

  self->_internalDirtyFlag = 0;
  v4 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v4 unlock];
}

- (BOOL)_checkInternalDirtyFlag
{
  v3 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v3 lock];

  LOBYTE(v3) = self->_internalDirtyFlag;
  v4 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v4 unlock];

  return v3;
}

- (void)_setDirtyWithNewData:(BOOL)a3
{
  if (![(HKGraphSeries *)self _setInternalDirtyFlag])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __38__HKGraphSeries__setDirtyWithNewData___block_invoke;
    v5[3] = &unk_1E81B8570;
    v5[4] = self;
    v6 = a3;
    dispatch_async(MEMORY[0x1E69E96A0], v5);
  }
}

void __38__HKGraphSeries__setDirtyWithNewData___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _checkInternalDirtyFlag])
  {
    [*(a1 + 32) _clearInternalDirtyFlag];
    v2 = [*(a1 + 32) delegate];
    [v2 seriesDidInvalidatePaths:*(a1 + 32) newDataArrived:*(a1 + 40)];
  }
}

- (id)_visibleXValueRangeWithAxis:(id)a3 chartRect:(CGRect)a4 contentOffset:(CGPoint)a5 zoomScale:(double)a6
{
  if (a3)
  {
    v6 = a5.x / a6;
    v7 = a3;
    [v7 pointTransform];
    v10 = HKLinearTransformInvert(v8, v9);
    v12 = HKLinearTransformRange(v10, v11, v6);
    v14 = v13;
    v15 = [v7 transform];
    v16 = [v15 valueForCoordinate:{HKRangeMin(v12, v14)}];

    v17 = [v7 transform];

    v18 = [v17 valueForCoordinate:{HKRangeMax(v12, v14)}];

    if (v16)
    {
      v19 = v18 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      v20 = 0;
    }

    else
    {
      v20 = [HKValueRange valueRangeWithMinValue:v16 maxValue:v18];
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)_coordinateListsForGeneratorWithXAxis:(id)a3 zoomScale:(double)a4 chartRect:(CGRect)a5 contentOffset:(CGPoint)a6 resolution:(int64_t)a7
{
  y = a6.y;
  x = a6.x;
  height = a5.size.height;
  width = a5.size.width;
  v12 = a5.origin.y;
  v13 = a5.origin.x;
  v16 = a3;
  v17 = [(HKGraphSeries *)self _visibleXValueRangeWithAxis:v16 chartRect:v13 contentOffset:v12 zoomScale:width, height, x, y, a4];
  v18 = [v16 zoomScaleEngine];
  v19 = [v18 zoomForZoomScale:a4];

  v20 = [(HKGraphSeries *)self _coordinateListsWithXValueRange:v17 xAxis:v16 zoomLevel:v19 resolution:a7];

  return v20;
}

- (void)_enumeratePathIndexesInValueRange:(id)a3 zoomLevel:(int64_t)a4 resolution:(int64_t)a5 block:(id)a6
{
  v10 = a3;
  v11 = a6;
  v24 = 0uLL;
  v25 = 0;
  v12 = [(HKGraphSeries *)self dataSource];
  v13 = [v10 minValue];
  if (v12)
  {
    [v12 blockPathForX:v13 zoom:a4 resolution:a5];
  }

  else
  {
    v24 = 0uLL;
    v25 = 0;
  }

  v22 = 0uLL;
  v23 = 0;
  v14 = [(HKGraphSeries *)self dataSource];
  v15 = [v10 maxValue];
  if (v14)
  {
    [v14 blockPathForX:v15 zoom:a4 resolution:a5];
  }

  else
  {
    v22 = 0uLL;
    v23 = 0;
  }

  *&v24 = v24 - 1;
  *&v22 = v22 + 1;
  v20 = v24;
  v21 = v25;
  v18 = v22;
  v19 = v23;
  [(HKGraphSeries *)self _requestDataSourceBlocksFromPath:&v20 toPath:&v18];
  v16 = v24;
  if (v24 <= v22)
  {
    do
    {
      LOBYTE(v20) = 0;
      v11[2](v11, v16, &v20);
      if (v20 == 1)
      {
        break;
      }
    }

    while (v16++ < v22);
  }
}

- (id)_coordinateListsWithXValueRange:(id)a3 xAxis:(id)a4 zoomLevel:(int64_t)a5 resolution:(int64_t)a6
{
  v10 = a4;
  if (a3)
  {
    v11 = a3;
    v12 = objc_opt_new();
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __76__HKGraphSeries__coordinateListsWithXValueRange_xAxis_zoomLevel_resolution___block_invoke;
    v17[3] = &unk_1E81BB108;
    v20 = a5;
    v21 = a6;
    v17[4] = self;
    v18 = v10;
    v13 = v12;
    v19 = v13;
    [(HKGraphSeries *)self _enumeratePathIndexesInValueRange:v11 zoomLevel:a5 resolution:a6 block:v17];

    v14 = v19;
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __76__HKGraphSeries__coordinateListsWithXValueRange_xAxis_zoomLevel_resolution___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 32);
  v11 = a2;
  v12 = v4;
  v13 = v5;
  v7 = [v6 _cachedCoordinatesForBlockPath:&v11];
  if (v7 || (v8 = *(a1 + 32), v9 = *(a1 + 40), v11 = a2, v12 = v4, v13 = v5, [v8 _coordinatesForBlockPath:&v11 xAxis:v9], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v7;
    [*(a1 + 48) addObject:v7];
  }
}

- (id)_cachedCoordinatesForBlockPath:(HKGraphSeriesDataBlockPath *)a3
{
  v5 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v5 lock];

  v6 = [(HKGraphSeries *)self cachedCoordinateListsByBlockPath];
  v11 = *a3;
  v7 = [MEMORY[0x1E696B098] valueWithHKGraphSeriesDataBlockPath:&v11];
  v8 = [v6 objectForKeyedSubscript:v7];

  v9 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v9 unlock];

  return v8;
}

- (void)_cacheCoordinates:(id)a3 forBlockPath:(HKGraphSeriesDataBlockPath *)a4
{
  v6 = a3;
  v7 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v7 lock];

  v12 = *a4;
  v8 = [MEMORY[0x1E696B098] valueWithHKGraphSeriesDataBlockPath:&v12];
  v9 = [(HKGraphSeries *)self cachedCoordinateListsByBlockPath];
  v10 = v9;
  if (v6)
  {
    [v9 setObject:v6 forKeyedSubscript:v8];
  }

  else
  {
    [v9 removeObjectForKey:v8];
  }

  v11 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v11 unlock];
}

- (id)_coordinatesForBlockPath:(HKGraphSeriesDataBlockPath *)a3 xAxis:(id)a4
{
  v6 = a4;
  v11 = *a3;
  v7 = [(HKGraphSeries *)self _dataBlockForBlockPath:&v11];
  if (v7)
  {
    v8 = [(HKGraphSeries *)self yAxis];
    v11 = *a3;
    v9 = [(HKGraphSeries *)self coordinatesForBlock:v7 blockPath:&v11 xAxis:v6 yAxis:v8];

    v11 = *a3;
    [(HKGraphSeries *)self _cacheCoordinates:v9 forBlockPath:&v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_dataBlockForBlockPath:(HKGraphSeriesDataBlockPath *)a3
{
  v14 = *a3;
  v5 = [MEMORY[0x1E696B098] valueWithHKGraphSeriesDataBlockPath:&v14];
  v6 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v6 lock];

  v7 = [(HKGraphSeries *)self cachedDataBlocksByBlockPath];
  v8 = [v7 objectForKeyedSubscript:v5];

  v9 = [(HKGraphSeries *)self seriesMutableStateLock];
  [v9 unlock];

  if (!v8)
  {
    v14 = *a3;
    v8 = [(HKGraphSeries *)self _getBlockFromDataSource:&v14];
    if (v8)
    {
      v10 = [(HKGraphSeries *)self seriesMutableStateLock];
      [v10 lock];

      v11 = [(HKGraphSeries *)self cachedDataBlocksByBlockPath];
      [v11 setObject:v8 forKeyedSubscript:v5];

      v12 = [(HKGraphSeries *)self seriesMutableStateLock];
      [v12 unlock];
    }
  }

  return v8;
}

- (id)_getBlockFromDataSource:(HKGraphSeriesDataBlockPath *)a3
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    dataSourceStorage = self->_dataSourceStorage;
    seriesDataSourceContextStorage = self->_seriesDataSourceContextStorage;
    v21 = *&a3->index;
    resolution = a3->resolution;
    v7 = [(HKGraphSeriesDataSource *)dataSourceStorage cachedBlockForPath:&v21 context:seriesDataSourceContextStorage];
  }

  else
  {
    v8 = dispatch_group_create();
    *&v21 = 0;
    *(&v21 + 1) = &v21;
    resolution = 0x3032000000;
    v23 = __Block_byref_object_copy__23;
    v24 = __Block_byref_object_dispose__23;
    v25 = 0;
    dispatch_group_enter(v8);
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __41__HKGraphSeries__getBlockFromDataSource___block_invoke;
    v15 = &unk_1E81BB130;
    v18 = &v21;
    v16 = self;
    v19 = *&a3->index;
    v20 = a3->resolution;
    v9 = v8;
    v17 = v9;
    dispatch_async(MEMORY[0x1E69E96A0], &v12);
    if (dispatch_group_wait(v9, [(HKGraphSeries *)self _mainThreadJoinTimeout:v12]))
    {
      _HKInitializeLogging();
      v10 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [HKGraphSeries _getBlockFromDataSource:v10];
      }

      v7 = 0;
    }

    else
    {
      v7 = *(*(&v21 + 1) + 40);
    }

    _Block_object_dispose(&v21, 8);
  }

  return v7;
}

void __41__HKGraphSeries__getBlockFromDataSource___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v8 = *(a1 + 56);
  v9 = *(a1 + 72);
  v5 = [v3 cachedBlockForPath:&v8 context:v4];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  dispatch_group_leave(*(a1 + 40));
}

- (void)_requestDataSourceBlocksFromPath:(HKGraphSeriesDataBlockPath *)a3 toPath:(HKGraphSeriesDataBlockPath *)a4
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    dataSourceStorage = self->_dataSourceStorage;
    v23 = *&a3->index;
    resolution = a3->resolution;
    v21 = *&a4->index;
    v22 = a4->resolution;
    [(HKGraphSeriesDataSource *)dataSourceStorage blocksRequestedFromPath:&v23 toPath:&v21 priorityDelegate:self];
  }

  else
  {
    v8 = dispatch_group_create();
    dispatch_group_enter(v8);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __57__HKGraphSeries__requestDataSourceBlocksFromPath_toPath___block_invoke;
    v14 = &unk_1E81B99A8;
    v15 = self;
    v17 = *&a3->index;
    v18 = a3->resolution;
    v19 = *&a4->index;
    v20 = a4->resolution;
    v9 = v8;
    v16 = v9;
    dispatch_async(MEMORY[0x1E69E96A0], &v11);
    if (dispatch_group_wait(v9, [(HKGraphSeries *)self _mainThreadJoinTimeout:v11]))
    {
      _HKInitializeLogging();
      v10 = HKLogWellnessDashboard();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [HKGraphSeries _requestDataSourceBlocksFromPath:v10 toPath:?];
      }
    }
  }
}

void __57__HKGraphSeries__requestDataSourceBlocksFromPath_toPath___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v3 = *(a1 + 72);
  v4 = *(a1 + 88);
  [v2 blocksRequestedFromPath:&v5 toPath:&v3 priorityDelegate:?];
  dispatch_group_leave(*(a1 + 40));
}

- (BOOL)isRangeHighPriority:(id)a3
{
  v4 = a3;
  v5 = [(HKGraphSeries *)self delegate];
  v6 = [v5 rangeIsVisible:v4];

  return v6;
}

- (void)enumerateChartPointsInRange:(id)a3 zoomLevel:(int64_t)a4 resolution:(int64_t)a5 block:(id)a6
{
  v10 = a6;
  v11 = a3;
  v12 = [v11 minValue];
  [v12 doubleValue];
  v14 = v13;

  v15 = [v11 maxValue];
  [v15 doubleValue];
  v17 = v16;

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __72__HKGraphSeries_enumerateChartPointsInRange_zoomLevel_resolution_block___block_invoke;
  v19[3] = &unk_1E81BB158;
  v21 = a4;
  v22 = a5;
  v23 = v14;
  v24 = v17;
  v19[4] = self;
  v20 = v10;
  v18 = v10;
  [(HKGraphSeries *)self _enumeratePathIndexesInValueRange:v11 zoomLevel:a4 resolution:a5 block:v19];
}

void __72__HKGraphSeries_enumerateChartPointsInRange_zoomLevel_resolution_block___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v23 = a2;
  v24 = *(a1 + 48);
  v6 = [v5 _dataBlockForBlockPath:&v23];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [v6 chartPoints];
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        LOBYTE(v23) = 0;
        v13 = [v12 minXValueAsGenericType];
        [v13 doubleValue];
        v15 = v14;

        v16 = [v12 maxXValueAsGenericType];
        [v16 doubleValue];
        v18 = v17;

        if (v15 >= *(a1 + 64) && v18 <= *(a1 + 72))
        {
          (*(*(a1 + 40) + 16))();
          if (v23 == 1)
          {
            *a3 = v23;
            goto LABEL_13;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (BOOL)isHighlighted
{
  [(HKGraphSeries *)self selectedPathRange];
  v4[0] = v3[2];
  v4[1] = v3[3];
  v3[0] = HKGraphSeriesDataPointPathNone;
  v3[1] = unk_1C3D5D5B8;
  return !HKGraphSeriesDataPointPathEqualToPath(v4, v3);
}

- (void)selectPathsinPathRange:(id *)a3 coordinateRange:(id)a4
{
  v6 = a4;
  [(HKGraphSeries *)self selectedPathRange];
  v7 = *&a3->var0.var0.resolution;
  v11[0] = *&a3->var0.var0.index;
  v11[1] = v7;
  v8 = *&a3->var1.var0.resolution;
  v11[2] = *&a3->var1.var0.index;
  v11[3] = v8;
  if (!HKGraphSeriesDataPointPathRangeEqualToRange(v11, v12))
  {
    v9 = *&a3->var0.var0.resolution;
    v12[0] = *&a3->var0.var0.index;
    v12[1] = v9;
    v10 = *&a3->var1.var0.resolution;
    v12[2] = *&a3->var1.var0.index;
    v12[3] = v10;
    [(HKGraphSeries *)self setSelectedPathRange:v12];
    [(HKGraphSeries *)self setClosestXCoordinateRange:v6];
    [(HKGraphSeries *)self _setDirtyWithNewData:0];
  }
}

- (void)deselectPath
{
  v2[0] = HKGraphSeriesDataPointPathNone;
  v2[1] = unk_1C3D5D5B8;
  v2[2] = HKGraphSeriesDataPointPathNone;
  v2[3] = unk_1C3D5D5B8;
  [(HKGraphSeries *)self selectPathsinPathRange:v2 coordinateRange:0];
}

- (double)distanceFromTouchPoint:(CGPoint)a3 inChartRect:(CGRect)a4 xAxis:(id)a5 zoomScale:(double)a6 resolution:(int64_t)a7 contentOffset:(CGPoint)a8 xAxisTransform:(CGAffineTransform *)a9
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v15 = a3.y;
  v16 = a3.x;
  v18 = a5;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0x7FEFFFFFFFFFFFFFLL;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __108__HKGraphSeries_distanceFromTouchPoint_inChartRect_xAxis_zoomScale_resolution_contentOffset_xAxisTransform___block_invoke;
  v24[3] = &unk_1E81BB180;
  *&v24[6] = v16;
  *&v24[7] = v15;
  *&v24[8] = x;
  *&v24[9] = y;
  *&v24[10] = width;
  *&v24[11] = height;
  v24[4] = self;
  v24[5] = &v25;
  v19 = *&a9->c;
  v23[0] = *&a9->a;
  v23[1] = v19;
  v23[2] = *&a9->tx;
  [(HKGraphSeries *)self enumerateCoordinatesInChartRect:v18 xAxis:a7 zoomScale:v23 resolution:1 contentOffset:0 xAxisTransform:v24 roundToViewScale:x exclusionOptions:y block:width, height, a6, a8.x, a8.y];
  v20 = v26[3];
  _Block_object_dispose(&v25, 8);

  return v20;
}

uint64_t __108__HKGraphSeries_distanceFromTouchPoint_inChartRect_xAxis_zoomScale_resolution_contentOffset_xAxisTransform___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) distanceFromPoint:*(a1 + 48) blockCoordinate:*(a1 + 56) chartRect:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  v4 = *(*(a1 + 40) + 8);
  if (v3 < *(v4 + 24))
  {
    *(v4 + 24) = v3;
  }

  return result;
}

- (id)findVisibleBlockCoordinatesForChartRect:(CGRect)a3 xAxis:(id)a4 zoomScale:(double)a5 resolution:(int64_t)a6 contentOffset:(CGPoint)a7 xAxisTransform:(CGAffineTransform *)a8
{
  y = a7.y;
  x = a7.x;
  height = a3.size.height;
  width = a3.size.width;
  v15 = a3.origin.y;
  v16 = a3.origin.x;
  v18 = a4;
  v19 = [(HKGraphSeries *)self yAxis];
  v20 = [v19 requiresScaling];

  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v22 = [(HKGraphSeries *)self _coordinateListsForGeneratorWithXAxis:v18 zoomScale:a6 chartRect:a5 contentOffset:v16 resolution:v15, width, height, x, y];
    v23 = [v18 axisChartableValueRange];
    v24 = [HKGraphSeriesBlockCoordinateList coordinateListByCombiningSubCoordinates:v22 chartableValueRange:v23];

    v46 = 0u;
    v47 = 0u;
    v25 = *&a8->c;
    v42 = *&a8->a;
    v43 = v25;
    v44 = *&a8->tx;
    v45 = 0u;
    [(HKGraphSeries *)self coordinateTransformForChartRect:&v42 xAxisTransform:v16, v15, width, height];
    *&v42 = 0;
    *(&v42 + 1) = &v42;
    *&v43 = 0x3032000000;
    *(&v43 + 1) = __Block_byref_object_copy__23;
    *&v44 = __Block_byref_object_dispose__23;
    *(&v44 + 1) = 0;
    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = __Block_byref_object_copy__23;
    v40 = __Block_byref_object_dispose__23;
    v41 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__23;
    v34 = __Block_byref_object_dispose__23;
    v35 = 0;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __113__HKGraphSeries_findVisibleBlockCoordinatesForChartRect_xAxis_zoomScale_resolution_contentOffset_xAxisTransform___block_invoke;
    v29[3] = &unk_1E81BB1A8;
    *&v29[8] = v16;
    *&v29[9] = v15;
    *&v29[10] = width;
    *&v29[11] = height;
    v29[4] = self;
    v29[5] = &v42;
    v29[6] = &v36;
    v29[7] = &v30;
    v28[0] = v45;
    v28[1] = v46;
    v28[2] = v47;
    [v24 enumerateCoordinatesWithTransform:v28 roundToViewScale:0 block:v29];
    if (*(*(&v42 + 1) + 40) && v37[5])
    {
      v26 = [HKGraphSeriesVisibleBlockCoordinates alloc];
      v21 = [(HKGraphSeriesVisibleBlockCoordinates *)v26 initWithMinimum:*(*(&v42 + 1) + 40) maximum:v37[5] last:v31[5]];
    }

    else
    {
      v21 = 0;
    }

    _Block_object_dispose(&v30, 8);

    _Block_object_dispose(&v36, 8);
    _Block_object_dispose(&v42, 8);
  }

  return v21;
}

void __113__HKGraphSeries_findVisibleBlockCoordinatesForChartRect_xAxis_zoomScale_resolution_contentOffset_xAxisTransform___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v11 = a2;
  v6 = a4;
  [v11 startXValue];
  if (v7 >= *(a1 + 64))
  {
    [v11 endXValue];
    if (v8 <= *(a1 + 64) + *(a1 + 80))
    {
      v9 = *(*(a1 + 40) + 8);
      if (*(v9 + 40))
      {
        if (![*(a1 + 32) blockCoordinate:v6 lessThan:?])
        {
          goto LABEL_7;
        }

        v9 = *(*(a1 + 40) + 8);
      }

      objc_storeStrong((v9 + 40), a4);
LABEL_7:
      v10 = *(*(a1 + 48) + 8);
      if (*(v10 + 40))
      {
        if (![*(a1 + 32) blockCoordinate:v6 greaterThan:?])
        {
LABEL_11:
          objc_storeStrong((*(*(a1 + 56) + 8) + 40), a4);
          goto LABEL_12;
        }

        v10 = *(*(a1 + 48) + 8);
      }

      objc_storeStrong((v10 + 40), a4);
      goto LABEL_11;
    }
  }

LABEL_12:
}

- (BOOL)untransformedChartPointsForTimeScope:(int64_t)a3 resolution:(int64_t)a4 range:(id)a5 completion:(id)a6
{
  v53 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v12 = [v10 minValue];
  v13 = [v10 maxValue];
  v50 = 0uLL;
  v51 = 0;
  v38 = self;
  v14 = [(HKGraphSeries *)self dataSource];
  v15 = v14;
  if (v14)
  {
    [v14 blockPathForX:v12 zoom:a3 resolution:a4];
  }

  else
  {
    v50 = 0uLL;
    v51 = 0;
  }

  v48 = 0uLL;
  v49 = 0;
  v16 = [(HKGraphSeries *)self dataSource];
  v17 = v16;
  if (v16)
  {
    [v16 blockPathForX:v13 zoom:a3 resolution:a4];
  }

  else
  {
    v48 = 0uLL;
    v49 = 0;
  }

  *&v50 = v50 - 1;
  *&v48 = v48 + 1;
  v18 = [(HKGraphSeries *)self dataSource];
  v46 = v50;
  v47 = v51;
  v44 = v48;
  v45 = v49;
  v19 = [v18 hasAllBlocksAvailableBetweenStartPath:&v46 endPath:&v44];

  if (v19)
  {
    v33 = v19;
    v34 = v11;
    v35 = v10;
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = v50;
    if (v50 <= v48)
    {
      v36 = a3;
      v37 = a4;
      do
      {
        v22 = [(HKGraphSeries *)v38 dataSource];
        *&v46 = v21;
        *(&v46 + 1) = a3;
        v47 = a4;
        v23 = [v22 cachedBlockForPath:&v46 context:0];

        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v39 = v23;
        v24 = [v23 chartPoints];
        v25 = [v24 countByEnumeratingWithState:&v40 objects:v52 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v41;
          do
          {
            for (i = 0; i != v26; ++i)
            {
              if (*v41 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v40 + 1) + 8 * i);
              v30 = [v29 xValueAsGenericType];
              if ([v30 compare:v12] != -1 && objc_msgSend(v30, "compare:", v13) != 1)
              {
                [v20 addObject:v29];
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v40 objects:v52 count:16];
          }

          while (v26);
        }

        v31 = v21++ < v48;
        a3 = v36;
        a4 = v37;
      }

      while (v31);
    }

    v11 = v34;
    (*(v34 + 2))(v34, v20, 1, 0);

    v10 = v35;
    LOBYTE(v19) = v33;
  }

  return v19;
}

+ (void)drawFilledMarkerInContext:(CGContext *)a3 color:(CGColor *)a4 x:(double)a5 y:(double)a6 radius:(double)a7
{
  CGContextSetFillColorWithColor(a3, a4);
  CGContextMoveToPoint(a3, a5, a6);
  CGContextAddArc(a3, a5, a6, a7, 0.0, 6.28318531, 0);

  CGContextFillPath(a3);
}

+ (void)drawInnerDotMarkerInContext:(CGContext *)a3 outColor:(CGColor *)a4 inColor:(CGColor *)a5 x:(double)a6 y:(double)a7 radius:(double)a8
{
  CGContextSetFillColorWithColor(a3, a4);
  CGContextMoveToPoint(a3, a6, a7);
  CGContextAddArc(a3, a6, a7, a8, 0.0, 6.28318531, 0);
  CGContextFillPath(a3);
  CGContextSetFillColorWithColor(a3, a5);
  CGContextMoveToPoint(a3, a6, a7);
  CGContextAddArc(a3, a6, a7, a8 * 0.5, 0.0, 6.28318531, 0);

  CGContextFillPath(a3);
}

- (CGRect)adjustRect:(CGRect)a3 forFont:(id)a4
{
  width = a3.size.width;
  y = a3.origin.y;
  v6 = a3.origin.x + -1.0;
  v7 = a4;
  [v7 ascender];
  v9 = v8;
  [v7 capHeight];
  v11 = y + v9 - v10 + -1.0;
  [v7 capHeight];
  v13 = v12;

  v14 = v13 + 2.0;
  v15 = v6;
  v16 = v11;
  v17 = width + 2.0;
  result.size.height = v14;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGRect)backgroundRectFromStringRect:(CGRect)a3 forFont:(id)a4
{
  width = a3.size.width;
  y = a3.origin.y;
  v6 = a3.origin.x + -1.0;
  v7 = a4;
  [v7 ascender];
  v9 = v8;
  [v7 capHeight];
  v11 = y + v9 - v10 + -1.0;
  [v7 capHeight];
  v13 = v12;

  v14 = v13 + 2.0;
  v15 = v6;
  v16 = v11;
  v17 = width + 2.0;
  result.size.height = v14;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (HKSeriesDelegate)delegateStorage
{
  WeakRetained = objc_loadWeakRetained(&self->_delegateStorage);

  return WeakRetained;
}

- ($99835EE01C73814C063FE1D215793BF7)selectedPathRangeStorage
{
  v3 = *&self[2].var1.var0.index;
  *&retstr->var0.var0.index = *&self[2].var0.var0.resolution;
  *&retstr->var0.var0.resolution = v3;
  v4 = *&self[3].var0.var0.index;
  *&retstr->var1.var0.index = *&self[2].var1.var0.resolution;
  *&retstr->var1.var0.resolution = v4;
  return self;
}

- (double)distanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  OUTLINED_FUNCTION_1_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();
  NSRequestConcreteImplementation();
  return 0.0;
}

- (double)xAxisDistanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  OUTLINED_FUNCTION_1_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();
  NSRequestConcreteImplementation();
  return 0.0;
}

- (double)yAxisDifferenceToPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  OUTLINED_FUNCTION_1_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();
  NSRequestConcreteImplementation();
  return 0.0;
}

- (BOOL)blockCoordinate:(id)a3 lessThan:(id)a4
{
  OUTLINED_FUNCTION_1_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)blockCoordinate:(id)a3 greaterThan:(id)a4
{
  OUTLINED_FUNCTION_1_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9
{
  OUTLINED_FUNCTION_1_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();

  NSRequestConcreteImplementation();
}

- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6
{
  OUTLINED_FUNCTION_1_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)supportsMultiTouchSelection
{
  OUTLINED_FUNCTION_1_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)enumerateCoordinatesInChartRect:xAxis:zoomScale:resolution:contentOffset:xAxisTransform:roundToViewScale:exclusionOptions:block:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"HKGraphSeries.m" lineNumber:888 description:{@"Invalid parameter not satisfying: %@", @"block != NULL"}];
}

@end