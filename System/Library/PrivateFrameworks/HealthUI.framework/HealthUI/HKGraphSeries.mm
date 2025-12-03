@interface HKGraphSeries
+ (void)drawFilledMarkerInContext:(CGContext *)context color:(CGColor *)color x:(double)x y:(double)y radius:(double)radius;
+ (void)drawInnerDotMarkerInContext:(CGContext *)context outColor:(CGColor *)color inColor:(CGColor *)inColor x:(double)x y:(double)y radius:(double)radius;
- ($99835EE01C73814C063FE1D215793BF7)selectedPathRange;
- ($99835EE01C73814C063FE1D215793BF7)selectedPathRangeStorage;
- (BOOL)_checkInternalDirtyFlag;
- (BOOL)_setInternalDirtyFlag;
- (BOOL)adjustYAxisForLabels;
- (BOOL)allowsSelection;
- (BOOL)blockCoordinate:(id)coordinate greaterThan:(id)than;
- (BOOL)blockCoordinate:(id)coordinate lessThan:(id)than;
- (BOOL)containsCoordinatesInChartRect:(CGRect)rect xAxis:(id)axis zoomScale:(double)scale resolution:(int64_t)resolution contentOffset:(CGPoint)offset xAxisTransform:(CGAffineTransform *)transform;
- (BOOL)drawLegendInsideSeries;
- (BOOL)drawSelectionLineBehindAllSeries;
- (BOOL)hasAnyDataLoadedInXAxisRange:(id)range dateZoom:(int64_t)zoom resolution:(int64_t)resolution;
- (BOOL)invertYAxis;
- (BOOL)isCriticalForAutoscale;
- (BOOL)isHighlighted;
- (BOOL)isRangeHighPriority:(id)priority;
- (BOOL)supportsMultiTouchSelection;
- (BOOL)untransformedChartPointsForTimeScope:(int64_t)scope resolution:(int64_t)resolution range:(id)range completion:(id)completion;
- (BOOL)wantsRoundingDuringYRangeExpansion;
- (CGAffineTransform)coordinateTransformForChartRect:(SEL)rect xAxisTransform:(CGRect)transform;
- (CGAffineTransform)coordinateTransformFromXAxisTransform:(SEL)transform chartRect:(CGAffineTransform *)rect;
- (CGRect)adjustRect:(CGRect)rect forFont:(id)font;
- (CGRect)backgroundRectFromStringRect:(CGRect)rect forFont:(id)font;
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
- (double)distanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (double)distanceFromTouchPoint:(CGPoint)point inChartRect:(CGRect)rect xAxis:(id)axis zoomScale:(double)scale resolution:(int64_t)resolution contentOffset:(CGPoint)offset xAxisTransform:(CGAffineTransform *)transform;
- (double)offscreenIndicatorAlpha;
- (double)xAxisDistanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (double)yAxisDifferenceToPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (id)_cachedCoordinatesForBlockPath:(HKGraphSeriesDataBlockPath *)path;
- (id)_clipYAxisValueRangeIfNecessary:(id)necessary;
- (id)_coordinateListsForGeneratorWithXAxis:(id)axis zoomScale:(double)scale chartRect:(CGRect)rect contentOffset:(CGPoint)offset resolution:(int64_t)resolution;
- (id)_coordinateListsWithXValueRange:(id)range xAxis:(id)axis zoomLevel:(int64_t)level resolution:(int64_t)resolution;
- (id)_coordinatesForBlockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis;
- (id)_dataBlockForBlockPath:(HKGraphSeriesDataBlockPath *)path;
- (id)_expandYRange:(id)range withXRange:(id)xRange dateZoom:(int64_t)zoom resolution:(int64_t)resolution chartRect:(CGRect)rect;
- (id)_getBlockFromDataSource:(HKGraphSeriesDataBlockPath *)source;
- (id)_visibleXValueRangeWithAxis:(id)axis chartRect:(CGRect)rect contentOffset:(CGPoint)offset zoomScale:(double)scale;
- (id)closestXCoordinateRange;
- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis;
- (id)findVisibleBlockCoordinatesForChartRect:(CGRect)rect xAxis:(id)axis zoomScale:(double)scale resolution:(int64_t)resolution contentOffset:(CGPoint)offset xAxisTransform:(CGAffineTransform *)transform;
- (id)seriesCoordinatesWithXAxis:(id)axis chartRect:(CGRect)rect zoomScale:(double)scale contentOffset:(CGPoint)offset resolution:(int64_t)resolution;
- (id)seriesDataSourceContext;
- (id)valueRangeForYAxisWithXAxisRange:(id)range dateZoom:(int64_t)zoom resolution:(int64_t)resolution chartRect:(CGRect)rect;
- (void)_cacheCoordinates:(id)coordinates forBlockPath:(HKGraphSeriesDataBlockPath *)path;
- (void)_clearInternalDirtyFlag;
- (void)_enumeratePathIndexesInValueRange:(id)range zoomLevel:(int64_t)level resolution:(int64_t)resolution block:(id)block;
- (void)_requestDataSourceBlocksFromPath:(HKGraphSeriesDataBlockPath *)path toPath:(HKGraphSeriesDataBlockPath *)toPath;
- (void)_setDirtyWithNewData:(BOOL)data;
- (void)dataSourceDidUpdateCache:(id)cache;
- (void)dealloc;
- (void)deselectPath;
- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate;
- (void)drawWithChartRect:(CGRect)rect seriesCoordinates:(id)coordinates zoomLevelConfiguration:(id)configuration coordinateTransform:(CGAffineTransform *)transform inContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate;
- (void)enumerateChartPointsInRange:(id)range zoomLevel:(int64_t)level resolution:(int64_t)resolution block:(id)block;
- (void)enumerateCoordinatesInChartRect:(CGRect)rect xAxis:(id)axis zoomScale:(double)scale resolution:(int64_t)resolution contentOffset:(CGPoint)offset xAxisTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)viewScale exclusionOptions:(int64_t)self0 block:(id)self1;
- (void)selectPathsinPathRange:(id *)range coordinateRange:(id)coordinateRange;
- (void)setAdjustYAxisForLabels:(BOOL)labels;
- (void)setAllowsSelection:(BOOL)selection;
- (void)setAlpha:(double)alpha;
- (void)setAxisScalingRule:(id)rule;
- (void)setClosestXCoordinateRange:(id)range;
- (void)setDataSource:(id)source;
- (void)setDelegate:(id)delegate;
- (void)setDetailLegendEntries:(id)entries;
- (void)setDrawLegendInsideSeries:(BOOL)series;
- (void)setDrawSelectionLineBehindAllSeries:(BOOL)series;
- (void)setInvertYAxis:(BOOL)axis;
- (void)setIsCriticalForAutoscale:(BOOL)autoscale;
- (void)setOffScreenIndicatorColor:(id)color;
- (void)setOffscreenIndicatorAlpha:(double)alpha;
- (void)setSelectedPathRange:(id *)range;
- (void)setSeriesDataSourceContext:(id)context;
- (void)setTitleLegendEntries:(id)entries;
- (void)setWantsRoundingDuringYRangeExpansion:(BOOL)expansion;
- (void)setYAxis:(id)axis;
- (void)updateForAutoscale:(id)autoscale;
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
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v10 = *(v2 + 2);
    *(v2 + 2) = uUID;

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
  dataSource = [(HKGraphSeries *)self dataSource];
  [dataSource setDelegate:0];

  v4.receiver = self;
  v4.super_class = HKGraphSeries;
  [(HKGraphSeries *)&v4 dealloc];
}

- (HKGraphSeriesDataSource)dataSource
{
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_dataSourceStorage;
  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setDataSource:(id)source
{
  sourceCopy = source;
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  dataSourceStorage = self->_dataSourceStorage;
  if (dataSourceStorage == sourceCopy)
  {
    seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
    [seriesMutableStateLock2 unlock];
  }

  else
  {
    if (dataSourceStorage)
    {
      [(HKGraphSeriesDataSource *)dataSourceStorage setDelegate:0];
    }

    objc_storeStrong(&self->_dataSourceStorage, source);
    [(HKGraphSeriesDataSource *)self->_dataSourceStorage setDelegate:self];
    seriesMutableStateLock3 = [(HKGraphSeries *)self seriesMutableStateLock];
    [seriesMutableStateLock3 unlock];

    [(HKGraphSeries *)self _setDirtyWithNewData:0];
  }
}

- (BOOL)adjustYAxisForLabels
{
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  LOBYTE(seriesMutableStateLock) = self->_adjustYAxisForLabelsStorage;
  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return seriesMutableStateLock;
}

- (void)setAdjustYAxisForLabels:(BOOL)labels
{
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  self->_adjustYAxisForLabelsStorage = labels;
  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (id)seriesDataSourceContext
{
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_seriesDataSourceContextStorage;
  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setSeriesDataSourceContext:(id)context
{
  contextCopy = context;
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  seriesDataSourceContextStorage = self->_seriesDataSourceContextStorage;
  self->_seriesDataSourceContextStorage = contextCopy;

  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (BOOL)isCriticalForAutoscale
{
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  LOBYTE(seriesMutableStateLock) = self->_isCriticalForAutoscaleStorage;
  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return seriesMutableStateLock;
}

- (void)setIsCriticalForAutoscale:(BOOL)autoscale
{
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  self->_isCriticalForAutoscaleStorage = autoscale;
  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (BOOL)wantsRoundingDuringYRangeExpansion
{
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  LOBYTE(seriesMutableStateLock) = self->_wantsRoundingDuringYRangeExpansionStorage;
  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return seriesMutableStateLock;
}

- (void)setWantsRoundingDuringYRangeExpansion:(BOOL)expansion
{
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  self->_wantsRoundingDuringYRangeExpansionStorage = expansion;
  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (HKGraphSeriesAxisScalingRule)axisScalingRule
{
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_axisScalingRuleStorage;
  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setAxisScalingRule:(id)rule
{
  ruleCopy = rule;
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  axisScalingRuleStorage = self->_axisScalingRuleStorage;
  self->_axisScalingRuleStorage = ruleCopy;

  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (UIColor)offScreenIndicatorColor
{
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = [(UIColor *)self->_offScreenIndicatorColorStorage colorWithAlphaComponent:self->_offscreenIndicatorAlphaStorage];
  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setOffScreenIndicatorColor:(id)color
{
  colorCopy = color;
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  offScreenIndicatorColorStorage = self->_offScreenIndicatorColorStorage;
  self->_offScreenIndicatorColorStorage = colorCopy;

  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (BOOL)invertYAxis
{
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  LOBYTE(seriesMutableStateLock) = self->_invertYAxisStorage;
  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return seriesMutableStateLock;
}

- (void)setInvertYAxis:(BOOL)axis
{
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  self->_invertYAxisStorage = axis;
  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (HKAxis)yAxis
{
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_yAxisStorage;
  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setYAxis:(id)axis
{
  axisCopy = axis;
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  yAxisStorage = self->_yAxisStorage;
  self->_yAxisStorage = axisCopy;

  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (HKSeriesDelegate)delegate
{
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  WeakRetained = objc_loadWeakRetained(&self->_delegateStorage);
  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  objc_storeWeak(&self->_delegateStorage, delegateCopy);
  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (NSArray)titleLegendEntries
{
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_titleLegendEntriesStorage;
  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setTitleLegendEntries:(id)entries
{
  entriesCopy = entries;
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  titleLegendEntriesStorage = self->_titleLegendEntriesStorage;
  self->_titleLegendEntriesStorage = entriesCopy;

  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (NSArray)detailLegendEntries
{
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_detailLegendEntriesStorage;
  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setDetailLegendEntries:(id)entries
{
  entriesCopy = entries;
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  detailLegendEntriesStorage = self->_detailLegendEntriesStorage;
  self->_detailLegendEntriesStorage = entriesCopy;

  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (BOOL)drawLegendInsideSeries
{
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  LOBYTE(seriesMutableStateLock) = self->_drawLegendInsideSeriesStorage;
  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return seriesMutableStateLock;
}

- (void)setDrawLegendInsideSeries:(BOOL)series
{
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  self->_drawLegendInsideSeriesStorage = series;
  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (double)alpha
{
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  alphaStorage = self->_alphaStorage;
  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return alphaStorage;
}

- (void)setAlpha:(double)alpha
{
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  self->_alphaStorage = alpha;
  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (double)offscreenIndicatorAlpha
{
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  offscreenIndicatorAlphaStorage = self->_offscreenIndicatorAlphaStorage;
  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return offscreenIndicatorAlphaStorage;
}

- (void)setOffscreenIndicatorAlpha:(double)alpha
{
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  self->_offscreenIndicatorAlphaStorage = alpha;
  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (BOOL)allowsSelection
{
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  LOBYTE(seriesMutableStateLock) = self->_allowsSelectionStorage;
  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return seriesMutableStateLock;
}

- (void)setAllowsSelection:(BOOL)selection
{
  selectionCopy = selection;
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  if (self->_allowsSelectionStorage == selectionCopy)
  {
    seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
    [seriesMutableStateLock2 unlock];
  }

  else
  {
    self->_allowsSelectionStorage = selectionCopy;
    seriesMutableStateLock3 = [(HKGraphSeries *)self seriesMutableStateLock];
    [seriesMutableStateLock3 unlock];

    [(HKGraphSeries *)self _setDirtyWithNewData:0];
  }
}

- (BOOL)drawSelectionLineBehindAllSeries
{
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  LOBYTE(seriesMutableStateLock) = self->_drawSelectionLineBehindAllSeriesStorage;
  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return seriesMutableStateLock;
}

- (void)setDrawSelectionLineBehindAllSeries:(BOOL)series
{
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  self->_drawSelectionLineBehindAllSeriesStorage = series;
  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- ($99835EE01C73814C063FE1D215793BF7)selectedPathRange
{
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v6 = *&self->_selectedPathRangeStorage.min.blockPath.resolution;
  *&retstr->var0.var0.index = *&self->_selectedPathRangeStorage.min.blockPath.index;
  *&retstr->var0.var0.resolution = v6;
  v7 = *&self->_selectedPathRangeStorage.max.blockPath.resolution;
  *&retstr->var1.var0.index = *&self->_selectedPathRangeStorage.max.blockPath.index;
  *&retstr->var1.var0.resolution = v7;
  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return result;
}

- (void)setSelectedPathRange:(id *)range
{
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v6 = *&range->var0.var0.index;
  v7 = *&range->var0.var0.resolution;
  v8 = *&range->var1.var0.resolution;
  *&self->_selectedPathRangeStorage.max.blockPath.index = *&range->var1.var0.index;
  *&self->_selectedPathRangeStorage.max.blockPath.resolution = v8;
  *&self->_selectedPathRangeStorage.min.blockPath.index = v6;
  *&self->_selectedPathRangeStorage.min.blockPath.resolution = v7;
  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (id)closestXCoordinateRange
{
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_closestXCoordinateRangeStorage;
  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setClosestXCoordinateRange:(id)range
{
  rangeCopy = range;
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  closestXCoordinateRangeStorage = self->_closestXCoordinateRangeStorage;
  self->_closestXCoordinateRangeStorage = rangeCopy;

  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (HKValueRange)visibleValueRange
{
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_visibleValueRangeStorage;
  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)updateForAutoscale:(id)autoscale
{
  autoscaleCopy = autoscale;
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  visibleValueRangeStorage = self->_visibleValueRangeStorage;
  self->_visibleValueRangeStorage = autoscaleCopy;

  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  [(HKGraphSeries *)self _setDirtyWithNewData:0];
}

- (id)_expandYRange:(id)range withXRange:(id)xRange dateZoom:(int64_t)zoom resolution:(int64_t)resolution chartRect:(CGRect)rect
{
  rangeCopy = range;
  xRangeCopy = xRange;
  v13 = objc_alloc_init(HKChartPointRangeBuilder);
  startDate = [xRangeCopy startDate];
  endDate = [xRangeCopy endDate];

  [endDate timeIntervalSinceDate:startDate];
  v17 = v16;
  v18 = [startDate dateByAddingTimeInterval:v16 * -2.0];
  v19 = [endDate dateByAddingTimeInterval:v17 + v17];
  v20 = [HKValueRange valueRangeWithMinValue:v18 maxValue:v19];

  v40 = MEMORY[0x1E69E9820];
  v41 = 3221225472;
  v42 = __72__HKGraphSeries__expandYRange_withXRange_dateZoom_resolution_chartRect___block_invoke;
  v43 = &unk_1E81BB018;
  zoomCopy = zoom;
  resolutionCopy = resolution;
  selfCopy = self;
  v21 = v13;
  v45 = v21;
  [(HKGraphSeries *)self _enumeratePathIndexesInValueRange:v20 zoomLevel:zoom resolution:resolution block:&v40];
  v22 = [(HKChartPointRangeBuilder *)v21 suggestedValueRangeWithRounding:[(HKGraphSeries *)self wantsRoundingDuringYRangeExpansion:v40]];
  if (v22)
  {
    maxValue = [rangeCopy maxValue];
    [maxValue doubleValue];
    v25 = v24;

    maxValue2 = [v22 maxValue];
    [maxValue2 doubleValue];
    v28 = v27;

    if (v25 < v28)
    {
      v25 = v28;
    }

    minValue = [rangeCopy minValue];
    [minValue doubleValue];
    v31 = v30;

    minValue2 = [v22 minValue];
    [minValue2 doubleValue];
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
    v38 = rangeCopy;
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

- (BOOL)hasAnyDataLoadedInXAxisRange:(id)range dateZoom:(int64_t)zoom resolution:(int64_t)resolution
{
  rangeCopy = range;
  yAxis = [(HKGraphSeries *)self yAxis];
  v10 = yAxis;
  v11 = 0;
  if (rangeCopy && yAxis)
  {
    v24 = 0uLL;
    v25 = 0;
    dataSource = [(HKGraphSeries *)self dataSource];
    minValue = [rangeCopy minValue];
    if (dataSource)
    {
      [dataSource blockPathForX:minValue zoom:zoom resolution:resolution];
    }

    else
    {
      v24 = 0uLL;
      v25 = 0;
    }

    v22 = 0uLL;
    v23 = 0;
    dataSource2 = [(HKGraphSeries *)self dataSource];
    maxValue = [rangeCopy maxValue];
    if (dataSource2)
    {
      [dataSource2 blockPathForX:maxValue zoom:zoom resolution:resolution];
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
    dataSource3 = [(HKGraphSeries *)self dataSource];
    v20 = v24;
    v21 = v25;
    v18 = v22;
    v19 = v23;
    v11 = [dataSource3 hasAllBlocksAvailableBetweenStartPath:&v20 endPath:&v18];
  }

  return v11;
}

- (id)valueRangeForYAxisWithXAxisRange:(id)range dateZoom:(int64_t)zoom resolution:(int64_t)resolution chartRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  rangeCopy = range;
  yAxis = [(HKGraphSeries *)self yAxis];
  v15 = yAxis;
  v16 = 0;
  if (!rangeCopy || !yAxis)
  {
    goto LABEL_19;
  }

  minValue = [rangeCopy minValue];
  [minValue doubleValue];
  v19 = v18;

  maxValue = [rangeCopy maxValue];
  [maxValue doubleValue];
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
  zoomCopy = zoom;
  resolutionCopy = resolution;
  v37[4] = self;
  v39 = v55;
  v44 = v22;
  v24 = v23;
  v45 = v19;
  v38 = v24;
  v40 = &v51;
  v41 = &v47;
  [(HKGraphSeries *)self _enumeratePathIndexesInValueRange:rangeCopy zoomLevel:zoom resolution:resolution block:v37];
  if (v52[3] >= 1.79769313e308)
  {
    axisScalingRule = [(HKGraphSeries *)self axisScalingRule];

    if (!axisScalingRule)
    {
      goto LABEL_11;
    }

    axisScalingRule2 = [(HKGraphSeries *)self axisScalingRule];
    noDataStartingRange = [axisScalingRule2 noDataStartingRange];

    if (noDataStartingRange)
    {
      noDataStartingRange = noDataStartingRange;
      v27 = noDataStartingRange;
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    noDataStartingRange = [MEMORY[0x1E696AD98] numberWithDouble:?];
    v26 = [MEMORY[0x1E696AD98] numberWithDouble:v48[3]];
    v27 = [HKValueRange valueRangeWithMinValue:noDataStartingRange maxValue:v26];
  }

  if (v27)
  {
    height = [(HKGraphSeries *)self _expandYRange:v27 withXRange:rangeCopy dateZoom:zoom resolution:resolution chartRect:x, y, width, height];

    goto LABEL_12;
  }

LABEL_11:
  height = 0;
LABEL_12:
  axisScalingRule3 = [(HKGraphSeries *)self axisScalingRule];

  if (axisScalingRule3 && height)
  {
    axisScalingRule4 = [(HKGraphSeries *)self axisScalingRule];
    v33 = [axisScalingRule4 yValueRangeForRange:height zoomLevel:zoom];

    height = v33;
  }

  height2 = [(HKGraphSeries *)self marginsForYAxis:height xAxisRange:rangeCopy zoomLevel:zoom chartRect:x, y, width, height];

  v16 = [(HKGraphSeries *)self _clipYAxisValueRangeIfNecessary:height2];

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

- (id)_clipYAxisValueRangeIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  minValue = [necessaryCopy minValue];
  [minValue doubleValue];
  v7 = v6;

  maxValue = [necessaryCopy maxValue];
  [maxValue doubleValue];
  v10 = v9;

  if (necessaryCopy)
  {
    axisScalingRule = [(HKGraphSeries *)self axisScalingRule];
    if (objc_opt_respondsToSelector())
    {
      yAxisBounds = [axisScalingRule yAxisBounds];
      minValue2 = [yAxisBounds minValue];
      maxValue2 = [yAxisBounds maxValue];
      if (minValue2)
      {
        minValue3 = [necessaryCopy minValue];

        if (minValue3)
        {
          [minValue2 doubleValue];
          if (v16 >= v7)
          {
            v7 = v16;
          }
        }
      }

      if (maxValue2)
      {
        maxValue3 = [necessaryCopy maxValue];

        if (maxValue3)
        {
          [maxValue2 doubleValue];
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

- (id)seriesCoordinatesWithXAxis:(id)axis chartRect:(CGRect)rect zoomScale:(double)scale contentOffset:(CGPoint)offset resolution:(int64_t)resolution
{
  y = offset.y;
  x = offset.x;
  height = rect.size.height;
  width = rect.size.width;
  v13 = rect.origin.y;
  v14 = rect.origin.x;
  axisCopy = axis;
  v17 = [(HKGraphSeries *)self _coordinateListsForGeneratorWithXAxis:axisCopy zoomScale:resolution chartRect:scale contentOffset:v14 resolution:v13, width, height, x, y];
  v18 = MEMORY[0x1E696AD98];
  transform = [axisCopy transform];
  axisChartableValueRange = [axisCopy axisChartableValueRange];
  minValue = [axisChartableValueRange minValue];
  [transform coordinateForValue:minValue];
  v22 = [v18 numberWithDouble:?];
  v23 = MEMORY[0x1E696AD98];
  transform2 = [axisCopy transform];
  axisChartableValueRange2 = [axisCopy axisChartableValueRange];

  maxValue = [axisChartableValueRange2 maxValue];
  [transform2 coordinateForValue:maxValue];
  v27 = [v23 numberWithDouble:?];
  v28 = [HKValueRange valueRangeWithMinValue:v22 maxValue:v27];

  v29 = [HKGraphSeriesBlockCoordinateList coordinateListByCombiningSubCoordinates:v17 chartableValueRange:v28];

  return v29;
}

- (CGAffineTransform)coordinateTransformFromXAxisTransform:(SEL)transform chartRect:(CGAffineTransform *)rect
{
  v5 = *&rect->c;
  v7[0] = *&rect->a;
  v7[1] = v5;
  v7[2] = *&rect->tx;
  return [(HKGraphSeries *)self coordinateTransformForChartRect:v7 xAxisTransform:a5.origin.x, a5.origin.y, a5.size.width, a5.size.height];
}

- (void)drawWithChartRect:(CGRect)rect seriesCoordinates:(id)coordinates zoomLevelConfiguration:(id)configuration coordinateTransform:(CGAffineTransform *)transform inContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  coordinatesCopy = coordinates;
  configurationCopy = configuration;
  renderContextCopy = renderContext;
  delegateCopy = delegate;
  yAxis = [(HKGraphSeries *)self yAxis];
  requiresScaling = [yAxis requiresScaling];

  if ((requiresScaling & 1) == 0)
  {
    CGContextSaveGState(context);
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
      CGContextClipToRect(context, v30);
    }

    [(HKGraphSeries *)self alpha];
    if (v25 < 1.0)
    {
      [(HKGraphSeries *)self alpha];
      CGContextSetAlpha(context, v26);
    }

    v27 = *&transform->c;
    v28[0] = *&transform->a;
    v28[1] = v27;
    v28[2] = *&transform->tx;
    [(HKGraphSeries *)self drawSeriesWithBlockCoordinates:coordinatesCopy axisRect:configurationCopy zoomLevelConfiguration:v28 pointTransform:context renderContext:renderContextCopy secondaryRenderContext:delegateCopy seriesRenderingDelegate:x, y, width, height];
    CGContextRestoreGState(context);
  }
}

- (CGAffineTransform)coordinateTransformForChartRect:(SEL)rect xAxisTransform:(CGRect)transform
{
  v14 = *(MEMORY[0x1E695EFD0] + 16);
  *&v19.a = *MEMORY[0x1E695EFD0];
  *&v19.c = v14;
  *&v19.tx = *(MEMORY[0x1E695EFD0] + 32);
  MinY = CGRectGetMinY(transform);
  *&v18.a = *&v19.a;
  *&v18.c = v14;
  *&v18.tx = *&v19.tx;
  CGAffineTransformTranslate(&v19, &v18, 0.0, MinY);
  memset(&v18, 0, sizeof(v18));
  yAxis = [(HKGraphSeries *)self yAxis];
  [yAxis pointTransform];
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

- (BOOL)containsCoordinatesInChartRect:(CGRect)rect xAxis:(id)axis zoomScale:(double)scale resolution:(int64_t)resolution contentOffset:(CGPoint)offset xAxisTransform:(CGAffineTransform *)transform
{
  y = offset.y;
  x = offset.x;
  height = rect.size.height;
  width = rect.size.width;
  v15 = rect.origin.y;
  v16 = rect.origin.x;
  axisCopy = axis;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __104__HKGraphSeries_containsCoordinatesInChartRect_xAxis_zoomScale_resolution_contentOffset_xAxisTransform___block_invoke;
  v22[3] = &unk_1E81BB090;
  v22[4] = &v23;
  v19 = *&transform->c;
  v21[0] = *&transform->a;
  v21[1] = v19;
  v21[2] = *&transform->tx;
  [(HKGraphSeries *)self enumerateCoordinatesInChartRect:axisCopy xAxis:resolution zoomScale:v21 resolution:1 contentOffset:2 xAxisTransform:v22 roundToViewScale:v16 exclusionOptions:v15 block:width, height, scale, x, y];
  LOBYTE(resolution) = *(v24 + 24);
  _Block_object_dispose(&v23, 8);

  return resolution;
}

uint64_t __104__HKGraphSeries_containsCoordinatesInChartRect_xAxis_zoomScale_resolution_contentOffset_xAxisTransform___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a5 = 1;
  return result;
}

- (void)enumerateCoordinatesInChartRect:(CGRect)rect xAxis:(id)axis zoomScale:(double)scale resolution:(int64_t)resolution contentOffset:(CGPoint)offset xAxisTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)viewScale exclusionOptions:(int64_t)self0 block:(id)self1
{
  y = offset.y;
  x = offset.x;
  height = rect.size.height;
  width = rect.size.width;
  v21 = rect.origin.y;
  v22 = rect.origin.x;
  axisCopy = axis;
  blockCopy = block;
  if (!blockCopy)
  {
    [HKGraphSeries enumerateCoordinatesInChartRect:xAxis:zoomScale:resolution:contentOffset:xAxisTransform:roundToViewScale:exclusionOptions:block:];
  }

  v26 = [(HKGraphSeries *)self _coordinateListsForGeneratorWithXAxis:axisCopy zoomScale:resolution chartRect:scale contentOffset:v22 resolution:v21, width, height, x, y];
  v46 = 0u;
  v47 = 0u;
  v45 = 0u;
  v27 = *&transform->c;
  v44[0] = *&transform->a;
  v44[1] = v27;
  v44[2] = *&transform->tx;
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
  viewScaleCopy = viewScale;
  v36 = MaxX;
  v37 = MinX;
  optionsCopy = options;
  v39 = v22;
  v40 = v21;
  v41 = width;
  v42 = height;
  v31[4] = self;
  v32 = blockCopy;
  v30 = blockCopy;
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

- (void)dataSourceDidUpdateCache:(id)cache
{
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  cachedCoordinateListsByBlockPath = [(HKGraphSeries *)self cachedCoordinateListsByBlockPath];
  [cachedCoordinateListsByBlockPath removeAllObjects];

  cachedDataBlocksByBlockPath = [(HKGraphSeries *)self cachedDataBlocksByBlockPath];
  [cachedDataBlocksByBlockPath removeAllObjects];

  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  [(HKGraphSeries *)self _setDirtyWithNewData:1];
}

- (BOOL)_setInternalDirtyFlag
{
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  LOBYTE(seriesMutableStateLock) = self->_internalDirtyFlag;
  self->_internalDirtyFlag = 1;
  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return seriesMutableStateLock;
}

- (void)_clearInternalDirtyFlag
{
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  self->_internalDirtyFlag = 0;
  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (BOOL)_checkInternalDirtyFlag
{
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  LOBYTE(seriesMutableStateLock) = self->_internalDirtyFlag;
  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return seriesMutableStateLock;
}

- (void)_setDirtyWithNewData:(BOOL)data
{
  if (![(HKGraphSeries *)self _setInternalDirtyFlag])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __38__HKGraphSeries__setDirtyWithNewData___block_invoke;
    v5[3] = &unk_1E81B8570;
    v5[4] = self;
    dataCopy = data;
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

- (id)_visibleXValueRangeWithAxis:(id)axis chartRect:(CGRect)rect contentOffset:(CGPoint)offset zoomScale:(double)scale
{
  if (axis)
  {
    v6 = offset.x / scale;
    axisCopy = axis;
    [axisCopy pointTransform];
    v10 = HKLinearTransformInvert(v8, v9);
    v12 = HKLinearTransformRange(v10, v11, v6);
    v14 = v13;
    transform = [axisCopy transform];
    v16 = [transform valueForCoordinate:{HKRangeMin(v12, v14)}];

    transform2 = [axisCopy transform];

    v18 = [transform2 valueForCoordinate:{HKRangeMax(v12, v14)}];

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

- (id)_coordinateListsForGeneratorWithXAxis:(id)axis zoomScale:(double)scale chartRect:(CGRect)rect contentOffset:(CGPoint)offset resolution:(int64_t)resolution
{
  y = offset.y;
  x = offset.x;
  height = rect.size.height;
  width = rect.size.width;
  v12 = rect.origin.y;
  v13 = rect.origin.x;
  axisCopy = axis;
  scale = [(HKGraphSeries *)self _visibleXValueRangeWithAxis:axisCopy chartRect:v13 contentOffset:v12 zoomScale:width, height, x, y, scale];
  zoomScaleEngine = [axisCopy zoomScaleEngine];
  v19 = [zoomScaleEngine zoomForZoomScale:scale];

  v20 = [(HKGraphSeries *)self _coordinateListsWithXValueRange:scale xAxis:axisCopy zoomLevel:v19 resolution:resolution];

  return v20;
}

- (void)_enumeratePathIndexesInValueRange:(id)range zoomLevel:(int64_t)level resolution:(int64_t)resolution block:(id)block
{
  rangeCopy = range;
  blockCopy = block;
  v24 = 0uLL;
  v25 = 0;
  dataSource = [(HKGraphSeries *)self dataSource];
  minValue = [rangeCopy minValue];
  if (dataSource)
  {
    [dataSource blockPathForX:minValue zoom:level resolution:resolution];
  }

  else
  {
    v24 = 0uLL;
    v25 = 0;
  }

  v22 = 0uLL;
  v23 = 0;
  dataSource2 = [(HKGraphSeries *)self dataSource];
  maxValue = [rangeCopy maxValue];
  if (dataSource2)
  {
    [dataSource2 blockPathForX:maxValue zoom:level resolution:resolution];
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
      blockCopy[2](blockCopy, v16, &v20);
      if (v20 == 1)
      {
        break;
      }
    }

    while (v16++ < v22);
  }
}

- (id)_coordinateListsWithXValueRange:(id)range xAxis:(id)axis zoomLevel:(int64_t)level resolution:(int64_t)resolution
{
  axisCopy = axis;
  if (range)
  {
    rangeCopy = range;
    v12 = objc_opt_new();
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __76__HKGraphSeries__coordinateListsWithXValueRange_xAxis_zoomLevel_resolution___block_invoke;
    v17[3] = &unk_1E81BB108;
    levelCopy = level;
    resolutionCopy = resolution;
    v17[4] = self;
    v18 = axisCopy;
    v13 = v12;
    v19 = v13;
    [(HKGraphSeries *)self _enumeratePathIndexesInValueRange:rangeCopy zoomLevel:level resolution:resolution block:v17];

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

- (id)_cachedCoordinatesForBlockPath:(HKGraphSeriesDataBlockPath *)path
{
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  cachedCoordinateListsByBlockPath = [(HKGraphSeries *)self cachedCoordinateListsByBlockPath];
  v11 = *path;
  v7 = [MEMORY[0x1E696B098] valueWithHKGraphSeriesDataBlockPath:&v11];
  v8 = [cachedCoordinateListsByBlockPath objectForKeyedSubscript:v7];

  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v8;
}

- (void)_cacheCoordinates:(id)coordinates forBlockPath:(HKGraphSeriesDataBlockPath *)path
{
  coordinatesCopy = coordinates;
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v12 = *path;
  v8 = [MEMORY[0x1E696B098] valueWithHKGraphSeriesDataBlockPath:&v12];
  cachedCoordinateListsByBlockPath = [(HKGraphSeries *)self cachedCoordinateListsByBlockPath];
  v10 = cachedCoordinateListsByBlockPath;
  if (coordinatesCopy)
  {
    [cachedCoordinateListsByBlockPath setObject:coordinatesCopy forKeyedSubscript:v8];
  }

  else
  {
    [cachedCoordinateListsByBlockPath removeObjectForKey:v8];
  }

  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (id)_coordinatesForBlockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis
{
  axisCopy = axis;
  v11 = *path;
  v7 = [(HKGraphSeries *)self _dataBlockForBlockPath:&v11];
  if (v7)
  {
    yAxis = [(HKGraphSeries *)self yAxis];
    v11 = *path;
    v9 = [(HKGraphSeries *)self coordinatesForBlock:v7 blockPath:&v11 xAxis:axisCopy yAxis:yAxis];

    v11 = *path;
    [(HKGraphSeries *)self _cacheCoordinates:v9 forBlockPath:&v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_dataBlockForBlockPath:(HKGraphSeriesDataBlockPath *)path
{
  v14 = *path;
  v5 = [MEMORY[0x1E696B098] valueWithHKGraphSeriesDataBlockPath:&v14];
  seriesMutableStateLock = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  cachedDataBlocksByBlockPath = [(HKGraphSeries *)self cachedDataBlocksByBlockPath];
  v8 = [cachedDataBlocksByBlockPath objectForKeyedSubscript:v5];

  seriesMutableStateLock2 = [(HKGraphSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  if (!v8)
  {
    v14 = *path;
    v8 = [(HKGraphSeries *)self _getBlockFromDataSource:&v14];
    if (v8)
    {
      seriesMutableStateLock3 = [(HKGraphSeries *)self seriesMutableStateLock];
      [seriesMutableStateLock3 lock];

      cachedDataBlocksByBlockPath2 = [(HKGraphSeries *)self cachedDataBlocksByBlockPath];
      [cachedDataBlocksByBlockPath2 setObject:v8 forKeyedSubscript:v5];

      seriesMutableStateLock4 = [(HKGraphSeries *)self seriesMutableStateLock];
      [seriesMutableStateLock4 unlock];
    }
  }

  return v8;
}

- (id)_getBlockFromDataSource:(HKGraphSeriesDataBlockPath *)source
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    dataSourceStorage = self->_dataSourceStorage;
    seriesDataSourceContextStorage = self->_seriesDataSourceContextStorage;
    v21 = *&source->index;
    resolution = source->resolution;
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
    selfCopy = self;
    v19 = *&source->index;
    v20 = source->resolution;
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

- (void)_requestDataSourceBlocksFromPath:(HKGraphSeriesDataBlockPath *)path toPath:(HKGraphSeriesDataBlockPath *)toPath
{
  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    dataSourceStorage = self->_dataSourceStorage;
    v23 = *&path->index;
    resolution = path->resolution;
    v21 = *&toPath->index;
    v22 = toPath->resolution;
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
    selfCopy = self;
    v17 = *&path->index;
    v18 = path->resolution;
    v19 = *&toPath->index;
    v20 = toPath->resolution;
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

- (BOOL)isRangeHighPriority:(id)priority
{
  priorityCopy = priority;
  delegate = [(HKGraphSeries *)self delegate];
  v6 = [delegate rangeIsVisible:priorityCopy];

  return v6;
}

- (void)enumerateChartPointsInRange:(id)range zoomLevel:(int64_t)level resolution:(int64_t)resolution block:(id)block
{
  blockCopy = block;
  rangeCopy = range;
  minValue = [rangeCopy minValue];
  [minValue doubleValue];
  v14 = v13;

  maxValue = [rangeCopy maxValue];
  [maxValue doubleValue];
  v17 = v16;

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __72__HKGraphSeries_enumerateChartPointsInRange_zoomLevel_resolution_block___block_invoke;
  v19[3] = &unk_1E81BB158;
  levelCopy = level;
  resolutionCopy = resolution;
  v23 = v14;
  v24 = v17;
  v19[4] = self;
  v20 = blockCopy;
  v18 = blockCopy;
  [(HKGraphSeries *)self _enumeratePathIndexesInValueRange:rangeCopy zoomLevel:level resolution:resolution block:v19];
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

- (void)selectPathsinPathRange:(id *)range coordinateRange:(id)coordinateRange
{
  coordinateRangeCopy = coordinateRange;
  [(HKGraphSeries *)self selectedPathRange];
  v7 = *&range->var0.var0.resolution;
  v11[0] = *&range->var0.var0.index;
  v11[1] = v7;
  v8 = *&range->var1.var0.resolution;
  v11[2] = *&range->var1.var0.index;
  v11[3] = v8;
  if (!HKGraphSeriesDataPointPathRangeEqualToRange(v11, v12))
  {
    v9 = *&range->var0.var0.resolution;
    v12[0] = *&range->var0.var0.index;
    v12[1] = v9;
    v10 = *&range->var1.var0.resolution;
    v12[2] = *&range->var1.var0.index;
    v12[3] = v10;
    [(HKGraphSeries *)self setSelectedPathRange:v12];
    [(HKGraphSeries *)self setClosestXCoordinateRange:coordinateRangeCopy];
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

- (double)distanceFromTouchPoint:(CGPoint)point inChartRect:(CGRect)rect xAxis:(id)axis zoomScale:(double)scale resolution:(int64_t)resolution contentOffset:(CGPoint)offset xAxisTransform:(CGAffineTransform *)transform
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v15 = point.y;
  v16 = point.x;
  axisCopy = axis;
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
  v19 = *&transform->c;
  v23[0] = *&transform->a;
  v23[1] = v19;
  v23[2] = *&transform->tx;
  [(HKGraphSeries *)self enumerateCoordinatesInChartRect:axisCopy xAxis:resolution zoomScale:v23 resolution:1 contentOffset:0 xAxisTransform:v24 roundToViewScale:x exclusionOptions:y block:width, height, scale, offset.x, offset.y];
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

- (id)findVisibleBlockCoordinatesForChartRect:(CGRect)rect xAxis:(id)axis zoomScale:(double)scale resolution:(int64_t)resolution contentOffset:(CGPoint)offset xAxisTransform:(CGAffineTransform *)transform
{
  y = offset.y;
  x = offset.x;
  height = rect.size.height;
  width = rect.size.width;
  v15 = rect.origin.y;
  v16 = rect.origin.x;
  axisCopy = axis;
  yAxis = [(HKGraphSeries *)self yAxis];
  requiresScaling = [yAxis requiresScaling];

  if (requiresScaling)
  {
    v21 = 0;
  }

  else
  {
    v22 = [(HKGraphSeries *)self _coordinateListsForGeneratorWithXAxis:axisCopy zoomScale:resolution chartRect:scale contentOffset:v16 resolution:v15, width, height, x, y];
    axisChartableValueRange = [axisCopy axisChartableValueRange];
    v24 = [HKGraphSeriesBlockCoordinateList coordinateListByCombiningSubCoordinates:v22 chartableValueRange:axisChartableValueRange];

    v46 = 0u;
    v47 = 0u;
    v25 = *&transform->c;
    v42 = *&transform->a;
    v43 = v25;
    v44 = *&transform->tx;
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

- (BOOL)untransformedChartPointsForTimeScope:(int64_t)scope resolution:(int64_t)resolution range:(id)range completion:(id)completion
{
  v53 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  completionCopy = completion;
  minValue = [rangeCopy minValue];
  maxValue = [rangeCopy maxValue];
  v50 = 0uLL;
  v51 = 0;
  selfCopy = self;
  dataSource = [(HKGraphSeries *)self dataSource];
  v15 = dataSource;
  if (dataSource)
  {
    [dataSource blockPathForX:minValue zoom:scope resolution:resolution];
  }

  else
  {
    v50 = 0uLL;
    v51 = 0;
  }

  v48 = 0uLL;
  v49 = 0;
  dataSource2 = [(HKGraphSeries *)self dataSource];
  v17 = dataSource2;
  if (dataSource2)
  {
    [dataSource2 blockPathForX:maxValue zoom:scope resolution:resolution];
  }

  else
  {
    v48 = 0uLL;
    v49 = 0;
  }

  *&v50 = v50 - 1;
  *&v48 = v48 + 1;
  dataSource3 = [(HKGraphSeries *)self dataSource];
  v46 = v50;
  resolutionCopy2 = v51;
  v44 = v48;
  v45 = v49;
  v19 = [dataSource3 hasAllBlocksAvailableBetweenStartPath:&v46 endPath:&v44];

  if (v19)
  {
    v33 = v19;
    v34 = completionCopy;
    v35 = rangeCopy;
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = v50;
    if (v50 <= v48)
    {
      scopeCopy = scope;
      resolutionCopy = resolution;
      do
      {
        dataSource4 = [(HKGraphSeries *)selfCopy dataSource];
        *&v46 = v21;
        *(&v46 + 1) = scope;
        resolutionCopy2 = resolution;
        v23 = [dataSource4 cachedBlockForPath:&v46 context:0];

        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v39 = v23;
        chartPoints = [v23 chartPoints];
        v25 = [chartPoints countByEnumeratingWithState:&v40 objects:v52 count:16];
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
                objc_enumerationMutation(chartPoints);
              }

              v29 = *(*(&v40 + 1) + 8 * i);
              xValueAsGenericType = [v29 xValueAsGenericType];
              if ([xValueAsGenericType compare:minValue] != -1 && objc_msgSend(xValueAsGenericType, "compare:", maxValue) != 1)
              {
                [v20 addObject:v29];
              }
            }

            v26 = [chartPoints countByEnumeratingWithState:&v40 objects:v52 count:16];
          }

          while (v26);
        }

        v31 = v21++ < v48;
        scope = scopeCopy;
        resolution = resolutionCopy;
      }

      while (v31);
    }

    completionCopy = v34;
    (*(v34 + 2))(v34, v20, 1, 0);

    rangeCopy = v35;
    LOBYTE(v19) = v33;
  }

  return v19;
}

+ (void)drawFilledMarkerInContext:(CGContext *)context color:(CGColor *)color x:(double)x y:(double)y radius:(double)radius
{
  CGContextSetFillColorWithColor(context, color);
  CGContextMoveToPoint(context, x, y);
  CGContextAddArc(context, x, y, radius, 0.0, 6.28318531, 0);

  CGContextFillPath(context);
}

+ (void)drawInnerDotMarkerInContext:(CGContext *)context outColor:(CGColor *)color inColor:(CGColor *)inColor x:(double)x y:(double)y radius:(double)radius
{
  CGContextSetFillColorWithColor(context, color);
  CGContextMoveToPoint(context, x, y);
  CGContextAddArc(context, x, y, radius, 0.0, 6.28318531, 0);
  CGContextFillPath(context);
  CGContextSetFillColorWithColor(context, inColor);
  CGContextMoveToPoint(context, x, y);
  CGContextAddArc(context, x, y, radius * 0.5, 0.0, 6.28318531, 0);

  CGContextFillPath(context);
}

- (CGRect)adjustRect:(CGRect)rect forFont:(id)font
{
  width = rect.size.width;
  y = rect.origin.y;
  v6 = rect.origin.x + -1.0;
  fontCopy = font;
  [fontCopy ascender];
  v9 = v8;
  [fontCopy capHeight];
  v11 = y + v9 - v10 + -1.0;
  [fontCopy capHeight];
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

- (CGRect)backgroundRectFromStringRect:(CGRect)rect forFont:(id)font
{
  width = rect.size.width;
  y = rect.origin.y;
  v6 = rect.origin.x + -1.0;
  fontCopy = font;
  [fontCopy ascender];
  v9 = v8;
  [fontCopy capHeight];
  v11 = y + v9 - v10 + -1.0;
  [fontCopy capHeight];
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

- (double)distanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  OUTLINED_FUNCTION_1_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();
  NSRequestConcreteImplementation();
  return 0.0;
}

- (double)xAxisDistanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  OUTLINED_FUNCTION_1_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();
  NSRequestConcreteImplementation();
  return 0.0;
}

- (double)yAxisDifferenceToPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  OUTLINED_FUNCTION_1_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();
  NSRequestConcreteImplementation();
  return 0.0;
}

- (BOOL)blockCoordinate:(id)coordinate lessThan:(id)than
{
  OUTLINED_FUNCTION_1_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();
  NSRequestConcreteImplementation();
  return 0;
}

- (BOOL)blockCoordinate:(id)coordinate greaterThan:(id)than
{
  OUTLINED_FUNCTION_1_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate
{
  OUTLINED_FUNCTION_1_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();

  NSRequestConcreteImplementation();
}

- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis
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