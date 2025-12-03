@interface HKQuantityDistributionSeries
+ (id)segmentsFromChartPoint:(id)point minY:(double)y maxY:(double)maxY zeroCountForGap:(int64_t)gap;
+ (id)segmentsFromChartPoint:(id)point zeroCountForGap:(int64_t)gap;
+ (id)transformedSegmentsFromChartPoint:(id)point forX:(double)x minY:(double)y maxY:(double)maxY zeroCountForGap:(int64_t)gap;
- (BOOL)blockCoordinate:(id)coordinate greaterThan:(id)than;
- (BOOL)blockCoordinate:(id)coordinate lessThan:(id)than;
- (BOOL)excludeDistribution;
- (CGRect)_textRectForSize:(CGSize)size location:(CGPoint)location screenRect:(CGRect)rect yOffset:(double)offset;
- (HKAxisLabelStyle)minMaxLabelStyle;
- (HKAxisLabelStyle)minMaxValueStyle;
- (HKQuantityDistributionSeries)init;
- (HKStrokeStyle)inactiveStrokeStyle;
- (HKStrokeStyle)minMaxPointStyle;
- (HKStrokeStyle)selectedStrokeStyle;
- (HKStrokeStyle)unselectedStrokeStyle;
- (double)distanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (double)hollowLineRatio;
- (double)xAxisDistanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (double)yAxisDifferenceToPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (id)_quickDate:(id)date;
- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis;
- (id)marginsForYAxis:(id)axis xAxisRange:(id)range zoomLevel:(int64_t)level chartRect:(CGRect)rect;
- (int64_t)zeroCountForGap;
- (void)_drawMinMaxLabelsForMin:(CGPoint)min max:(CGPoint)max pointTransform:(CGAffineTransform *)transform axisRect:(CGRect)rect context:(CGContext *)context;
- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate;
- (void)setExcludeDistribution:(BOOL)distribution;
- (void)setHollowLineRatio:(double)ratio;
- (void)setInactiveStrokeStyle:(id)style;
- (void)setMinMaxLabelStyle:(id)style;
- (void)setMinMaxPointStyle:(id)style;
- (void)setMinMaxValueStyle:(id)style;
- (void)setSelectedStrokeStyle:(id)style;
- (void)setUnselectedStrokeStyle:(id)style;
- (void)setZeroCountForGap:(int64_t)gap;
@end

@implementation HKQuantityDistributionSeries

- (HKQuantityDistributionSeries)init
{
  v12.receiver = self;
  v12.super_class = HKQuantityDistributionSeries;
  v2 = [(HKGraphSeries *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    seriesMutableStateLock = v2->_seriesMutableStateLock;
    v2->_seriesMutableStateLock = v3;

    [(NSLock *)v2->_seriesMutableStateLock setName:@"HKQuantityDistributionSeriesLock"];
    inactiveStrokeStyleStorage = v2->_inactiveStrokeStyleStorage;
    v2->_inactiveStrokeStyleStorage = 0;

    unselectedStrokeStyleStorage = v2->_unselectedStrokeStyleStorage;
    v2->_unselectedStrokeStyleStorage = 0;

    selectedStrokeStyleStorage = v2->_selectedStrokeStyleStorage;
    v2->_selectedStrokeStyleStorage = 0;

    minMaxLabelStyleStorage = v2->_minMaxLabelStyleStorage;
    v2->_minMaxLabelStyleStorage = 0;

    minMaxValueStyleStorage = v2->_minMaxValueStyleStorage;
    v2->_minMaxValueStyleStorage = 0;

    minMaxPointStyleStorage = v2->_minMaxPointStyleStorage;
    v2->_minMaxPointStyleStorage = 0;

    v2->_excludeDistributionStorage = 0;
    v2->_zeroCountForGapStorage = 4;
    v2->_hollowLineRatioStorage = 0.0;
  }

  return v2;
}

- (HKStrokeStyle)inactiveStrokeStyle
{
  seriesMutableStateLock = [(HKQuantityDistributionSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_inactiveStrokeStyleStorage;
  seriesMutableStateLock2 = [(HKQuantityDistributionSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setInactiveStrokeStyle:(id)style
{
  styleCopy = style;
  seriesMutableStateLock = [(HKQuantityDistributionSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v6 = [styleCopy copy];
  inactiveStrokeStyleStorage = self->_inactiveStrokeStyleStorage;
  self->_inactiveStrokeStyleStorage = v6;

  seriesMutableStateLock2 = [(HKQuantityDistributionSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (HKStrokeStyle)unselectedStrokeStyle
{
  seriesMutableStateLock = [(HKQuantityDistributionSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_unselectedStrokeStyleStorage;
  seriesMutableStateLock2 = [(HKQuantityDistributionSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setUnselectedStrokeStyle:(id)style
{
  styleCopy = style;
  seriesMutableStateLock = [(HKQuantityDistributionSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v6 = [styleCopy copy];
  unselectedStrokeStyleStorage = self->_unselectedStrokeStyleStorage;
  self->_unselectedStrokeStyleStorage = v6;

  seriesMutableStateLock2 = [(HKQuantityDistributionSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (HKStrokeStyle)selectedStrokeStyle
{
  seriesMutableStateLock = [(HKQuantityDistributionSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_selectedStrokeStyleStorage;
  seriesMutableStateLock2 = [(HKQuantityDistributionSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setSelectedStrokeStyle:(id)style
{
  styleCopy = style;
  seriesMutableStateLock = [(HKQuantityDistributionSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v6 = [styleCopy copy];
  selectedStrokeStyleStorage = self->_selectedStrokeStyleStorage;
  self->_selectedStrokeStyleStorage = v6;

  seriesMutableStateLock2 = [(HKQuantityDistributionSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (HKAxisLabelStyle)minMaxLabelStyle
{
  seriesMutableStateLock = [(HKQuantityDistributionSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_minMaxLabelStyleStorage;
  seriesMutableStateLock2 = [(HKQuantityDistributionSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setMinMaxLabelStyle:(id)style
{
  styleCopy = style;
  seriesMutableStateLock = [(HKQuantityDistributionSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v6 = [styleCopy copy];
  minMaxLabelStyleStorage = self->_minMaxLabelStyleStorage;
  self->_minMaxLabelStyleStorage = v6;

  seriesMutableStateLock2 = [(HKQuantityDistributionSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (HKAxisLabelStyle)minMaxValueStyle
{
  seriesMutableStateLock = [(HKQuantityDistributionSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_minMaxValueStyleStorage;
  seriesMutableStateLock2 = [(HKQuantityDistributionSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setMinMaxValueStyle:(id)style
{
  styleCopy = style;
  seriesMutableStateLock = [(HKQuantityDistributionSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v6 = [styleCopy copy];
  minMaxValueStyleStorage = self->_minMaxValueStyleStorage;
  self->_minMaxValueStyleStorage = v6;

  seriesMutableStateLock2 = [(HKQuantityDistributionSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (HKStrokeStyle)minMaxPointStyle
{
  seriesMutableStateLock = [(HKQuantityDistributionSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_minMaxPointStyleStorage;
  seriesMutableStateLock2 = [(HKQuantityDistributionSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setMinMaxPointStyle:(id)style
{
  styleCopy = style;
  seriesMutableStateLock = [(HKQuantityDistributionSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v6 = [styleCopy copy];
  minMaxPointStyleStorage = self->_minMaxPointStyleStorage;
  self->_minMaxPointStyleStorage = v6;

  seriesMutableStateLock2 = [(HKQuantityDistributionSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (BOOL)excludeDistribution
{
  seriesMutableStateLock = [(HKQuantityDistributionSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  LOBYTE(seriesMutableStateLock) = self->_excludeDistributionStorage;
  seriesMutableStateLock2 = [(HKQuantityDistributionSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return seriesMutableStateLock;
}

- (void)setExcludeDistribution:(BOOL)distribution
{
  seriesMutableStateLock = [(HKQuantityDistributionSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  self->_excludeDistributionStorage = distribution;
  seriesMutableStateLock2 = [(HKQuantityDistributionSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (int64_t)zeroCountForGap
{
  seriesMutableStateLock = [(HKQuantityDistributionSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  zeroCountForGapStorage = self->_zeroCountForGapStorage;
  seriesMutableStateLock2 = [(HKQuantityDistributionSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return zeroCountForGapStorage;
}

- (void)setZeroCountForGap:(int64_t)gap
{
  seriesMutableStateLock = [(HKQuantityDistributionSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  self->_zeroCountForGapStorage = gap;
  seriesMutableStateLock2 = [(HKQuantityDistributionSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (double)hollowLineRatio
{
  seriesMutableStateLock = [(HKQuantityDistributionSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  hollowLineRatioStorage = self->_hollowLineRatioStorage;
  seriesMutableStateLock2 = [(HKQuantityDistributionSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return hollowLineRatioStorage;
}

- (void)setHollowLineRatio:(double)ratio
{
  seriesMutableStateLock = [(HKQuantityDistributionSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  ratioCopy = 1.0;
  if (ratio <= 1.0)
  {
    ratioCopy = ratio;
  }

  self->_hollowLineRatioStorage = fmax(ratioCopy, 0.0);
  seriesMutableStateLock2 = [(HKQuantityDistributionSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (id)_quickDate:(id)date
{
  v3 = MEMORY[0x1E696AB78];
  dateCopy = date;
  v5 = objc_alloc_init(v3);
  [v5 setDateFormat:@"MM/dd/YYYY-HH:mm:ss"];
  localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
  [v5 setTimeZone:localTimeZone];

  v7 = [v5 stringFromDate:dateCopy];

  return v7;
}

- (id)marginsForYAxis:(id)axis xAxisRange:(id)range zoomLevel:(int64_t)level chartRect:(CGRect)rect
{
  height = rect.size.height;
  y = rect.origin.y;
  axisCopy = axis;
  minMaxLabelStyle = [(HKQuantityDistributionSeries *)self minMaxLabelStyle];
  if (minMaxLabelStyle && (v11 = minMaxLabelStyle, [(HKQuantityDistributionSeries *)self minMaxValueStyle], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, axisCopy) && v12 && height > 0.0)
  {
    minValue = [axisCopy minValue];
    [minValue doubleValue];
    v15 = v14;
    maxValue = [axisCopy maxValue];
    [maxValue doubleValue];
    v18 = v17;

    [HKAxis expandByPointsLow:36.0 high:36.0 modelRange:v15 pointRange:v18, y, y + height];
    v20 = v19;
    v21 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    v22 = [MEMORY[0x1E696AD98] numberWithDouble:v20];
    v23 = [HKValueRange valueRangeWithMinValue:v21 maxValue:v22];
  }

  else
  {
    v23 = axisCopy;
  }

  return v23;
}

- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  coordinatesCopy = coordinates;
  configurationCopy = configuration;
  renderContextCopy = renderContext;
  delegateCopy = delegate;
  CGContextSaveGState(context);
  if ([(HKGraphSeries *)self allowsSelection])
  {
    [(HKQuantityDistributionSeries *)self unselectedStrokeStyle];
  }

  else
  {
    [(HKQuantityDistributionSeries *)self inactiveStrokeStyle];
  }
  v21 = ;
  [v21 applyToContext:context];
  [v21 lineWidth];
  v23 = v22;
  selectedStrokeStyle = [(HKQuantityDistributionSeries *)self selectedStrokeStyle];
  [selectedStrokeStyle lineWidth];
  v26 = v25;

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  [(HKGraphSeries *)self selectedPathRange];
  [delegateCopy virtualMarginInsets];
  v49 = v28;
  v50 = v27;
  v30 = v29;
  v32 = v31;
  v99[0] = 0;
  v99[1] = v99;
  v99[2] = 0x2020000000;
  v100 = 1;
  v97[0] = 0;
  v97[1] = v97;
  v97[2] = 0x2020000000;
  v98 = 1;
  v91 = 0;
  v92 = &v91;
  v93 = 0x3010000000;
  v96 = 0;
  v94 = &unk_1C3DAF4DA;
  v95 = 0;
  v85 = 0;
  v86 = &v85;
  v87 = 0x3010000000;
  v89 = 0;
  v90 = 0;
  v88 = &unk_1C3DAF4DA;
  v83[0] = 0;
  v83[1] = v83;
  v83[2] = 0x2020000000;
  v84 = 0;
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 0;
  v77[0] = 0;
  v77[1] = v77;
  v77[2] = 0x2020000000;
  excludeDistribution = [(HKQuantityDistributionSeries *)self excludeDistribution];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __171__HKQuantityDistributionSeries_drawSeriesWithBlockCoordinates_axisRect_zoomLevelConfiguration_pointTransform_renderContext_secondaryRenderContext_seriesRenderingDelegate___block_invoke;
  v56[3] = &unk_1E81B8E20;
  v48 = v30;
  v33 = x + v30;
  if (v23 >= v26)
  {
    v34 = v23;
  }

  else
  {
    v34 = v26;
  }

  v65 = x;
  v66 = y;
  v67 = width;
  v68 = height;
  v69 = v34;
  v70 = v33;
  v71 = x + width - v32;
  v59 = &v91;
  v60 = v97;
  v61 = &v85;
  v62 = v77;
  contextCopy = context;
  v58 = v99;
  v56[4] = self;
  v76 = v104;
  v75 = v103;
  v74 = v102;
  v73 = v101;
  v63 = v83;
  v64 = &v79;
  v35 = v21;
  v57 = v35;
  v36 = *&transform->c;
  v53 = *&transform->a;
  v54 = v36;
  v55 = *&transform->tx;
  [coordinatesCopy enumerateCoordinatesWithTransform:&v53 roundToViewScale:0 block:v56];
  seriesDrawingDuringScrolling = [delegateCopy seriesDrawingDuringScrolling];
  seriesDrawingDuringTiling = [delegateCopy seriesDrawingDuringTiling];
  if ([(HKGraphSeries *)self allowsSelection])
  {
    if ((v80[3] & 1) == 0)
    {
      minMaxLabelStyle = [(HKQuantityDistributionSeries *)self minMaxLabelStyle];
      if (minMaxLabelStyle)
      {
        minMaxValueStyle = [(HKQuantityDistributionSeries *)self minMaxValueStyle];
        v41 = minMaxValueStyle;
        if ((minMaxValueStyle == 0) | (seriesDrawingDuringTiling | seriesDrawingDuringScrolling) & 1)
        {
        }

        else
        {
          excludeDistribution2 = [(HKQuantityDistributionSeries *)self excludeDistribution];

          if (excludeDistribution2)
          {
            v43 = v92[4];
            v44 = v92[5];
            v45 = v86[4];
            v46 = v86[5];
            v47 = *&transform->c;
            v53 = *&transform->a;
            v54 = v47;
            v55 = *&transform->tx;
            [(HKQuantityDistributionSeries *)self _drawMinMaxLabelsForMin:&v53 max:context pointTransform:v43 axisRect:v44 context:v45, v46, v33, y + v50, width - (v48 + v32), height - (v50 + v49)];
          }
        }
      }
    }
  }

  CGContextRestoreGState(context);

  _Block_object_dispose(v77, 8);
  _Block_object_dispose(&v79, 8);
  _Block_object_dispose(v83, 8);
  _Block_object_dispose(&v85, 8);
  _Block_object_dispose(&v91, 8);
  _Block_object_dispose(v97, 8);
  _Block_object_dispose(v99, 8);
}

void __171__HKQuantityDistributionSeries_drawSeriesWithBlockCoordinates_axisRect_zoomLevelConfiguration_pointTransform_renderContext_secondaryRenderContext_seriesRenderingDelegate___block_invoke(uint64_t a1, void *a2, _OWORD *a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = *(a1 + 104);
  v10 = *(a1 + 120);
  [v7 minPoint];
  v12 = v11;
  v13 = *(a1 + 136);
  if (v11 >= *(a1 + 104) - v13 && v11 <= v9 + v10 + v13)
  {
    v15 = [v7 distributionSegments];
    v16 = [v15 count];

    if ((v16 & 1) == 0)
    {
      if (v12 >= *(a1 + 144) && v12 <= *(a1 + 152))
      {
        if ((*(*(*(a1 + 48) + 8) + 24) & 1) != 0 || ([v8 minPoint], v17 < *(*(*(a1 + 56) + 8) + 40)))
        {
          [v8 minPoint];
          v18 = *(*(a1 + 56) + 8);
          *(v18 + 32) = v19;
          *(v18 + 40) = v20;
          *(*(*(a1 + 48) + 8) + 24) = 0;
        }

        if ((*(*(*(a1 + 64) + 8) + 24) & 1) != 0 || ([v8 maxPoint], v21 >= *(*(*(a1 + 72) + 8) + 40)))
        {
          [v8 maxPoint];
          v22 = *(*(a1 + 72) + 8);
          *(v22 + 32) = v23;
          *(v22 + 40) = v24;
          *(*(*(a1 + 64) + 8) + 24) = 0;
        }
      }

      if ((*(*(*(a1 + 80) + 8) + 24) & 1) == 0)
      {
        v25 = [v7 distributionSegments];
        v26 = [v25 count];

        if (v26)
        {
          v27 = 0;
          do
          {
            v28 = [v7 distributionSegments];
            v29 = [v28 objectAtIndexedSubscript:v27];
            [v29 CGPointValue];
            v31 = v30;
            v33 = v32;

            v34 = [v7 distributionSegments];
            v35 = [v34 objectAtIndexedSubscript:v27 + 1];
            [v35 CGPointValue];
            v37 = v36;
            v39 = v38;

            v40 = *(a1 + 160);
            v41 = HKUIFloorToScreenScale(v31);
            CGContextMoveToPoint(v40, v41, v33);
            v42 = *(a1 + 160);
            v43 = HKUIFloorToScreenScale(v37);
            CGContextAddLineToPoint(v42, v43, v39);
            CGContextStrokePath(*(a1 + 160));
            v44 = [v7 distributionSegments];
            v45 = [v44 count];

            v27 += 2;
          }

          while (v27 < v45);
        }

        [*(a1 + 32) hollowLineRatio];
        if (v46 > 0.0)
        {
          CGContextSaveGState(*(a1 + 160));
          v47 = *(a1 + 160);
          v48 = *(a1 + 136);
          [*(a1 + 32) hollowLineRatio];
          CGContextSetLineWidth(v47, v48 * v49);
          v50 = *(a1 + 160);
          v51 = [MEMORY[0x1E69DC888] hk_chartBackgroundColor];
          CGContextSetStrokeColorWithColor(v50, [v51 CGColor]);

          v52 = [v7 distributionSegments];
          v53 = [v52 count];

          if (v53)
          {
            v54 = 0;
            do
            {
              v55 = [v7 distributionSegments];
              v56 = [v55 objectAtIndexedSubscript:v54];
              [v56 CGPointValue];
              v58 = v57;
              v60 = v59;

              v61 = [v7 distributionSegments];
              v62 = [v61 objectAtIndexedSubscript:v54 + 1];
              [v62 CGPointValue];
              v64 = v63;
              v66 = v65;

              v67 = *(a1 + 160);
              v68 = HKUIFloorToScreenScale(v58);
              CGContextMoveToPoint(v67, v68, v60);
              v69 = *(a1 + 160);
              v70 = HKUIFloorToScreenScale(v64);
              CGContextAddLineToPoint(v69, v70, v66);
              CGContextStrokePath(*(a1 + 160));
              v71 = [v7 distributionSegments];
              v72 = [v71 count];

              v54 += 2;
            }

            while (v54 < v72);
          }

          CGContextRestoreGState(*(a1 + 160));
        }
      }

      v73 = a3[1];
      v81[0] = *a3;
      v81[1] = v73;
      v74 = *(a1 + 184);
      v80[0] = *(a1 + 168);
      v80[1] = v74;
      v75 = *(a1 + 216);
      v80[2] = *(a1 + 200);
      v80[3] = v75;
      v76 = a1 + 88;
      if (HKGraphSeriesDataPointPathInRangeInclusive(v81, v80))
      {
        if ((*(*(*(a1 + 88) + 8) + 24) & 1) == 0)
        {
          v77 = [*(a1 + 32) selectedStrokeStyle];

          if (v77)
          {
            v78 = [*(a1 + 32) selectedStrokeStyle];
            [v78 applyToContext:*(a1 + 160)];

            *(*(*(a1 + 88) + 8) + 24) = 1;
          }
        }

        v76 = a1 + 96;
        v79 = 1;
        goto LABEL_32;
      }

      if (*(*(*(a1 + 88) + 8) + 24))
      {
        [*(a1 + 40) applyToContext:*(a1 + 160)];
        v79 = 0;
LABEL_32:
        *(*(*v76 + 8) + 24) = v79;
      }
    }
  }
}

- (void)_drawMinMaxLabelsForMin:(CGPoint)min max:(CGPoint)max pointTransform:(CGAffineTransform *)transform axisRect:(CGRect)rect context:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  x = rect.origin.x;
  y = rect.origin.y;
  v10 = max.y;
  v11 = max.x;
  v12 = min.y;
  v13 = min.x;
  v179[2] = *MEMORY[0x1E69E9840];
  minMaxLabelStyle = [(HKQuantityDistributionSeries *)self minMaxLabelStyle];
  font = [minMaxLabelStyle font];

  minMaxLabelStyle2 = [(HKQuantityDistributionSeries *)self minMaxLabelStyle];
  textColor = [minMaxLabelStyle2 textColor];

  v20 = *MEMORY[0x1E69DB650];
  v178[0] = *MEMORY[0x1E69DB648];
  v19 = v178[0];
  v178[1] = v20;
  v166 = font;
  v179[0] = font;
  v179[1] = textColor;
  v168 = textColor;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v179 forKeys:v178 count:2];
  minMaxValueStyle = [(HKQuantityDistributionSeries *)self minMaxValueStyle];
  font2 = [minMaxValueStyle font];

  minMaxValueStyle2 = [(HKQuantityDistributionSeries *)self minMaxValueStyle];
  textColor2 = [minMaxValueStyle2 textColor];

  v176[0] = v19;
  v176[1] = v20;
  v167 = font2;
  v177[0] = font2;
  v177[1] = textColor2;
  v26 = textColor2;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v177 forKeys:v176 count:2];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  minMaxValueStyle3 = [(HKQuantityDistributionSeries *)self minMaxValueStyle];
  numberFormatter = [minMaxValueStyle3 numberFormatter];

  rect = height;
  if (numberFormatter)
  {
    minMaxValueStyle4 = [(HKQuantityDistributionSeries *)self minMaxValueStyle];
    numberFormatter2 = [minMaxValueStyle4 numberFormatter];
  }

  else
  {
    numberFormatter2 = [MEMORY[0x1E696ADA0] hk_wholeNumberFormatter];
  }

  v33 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
  v34 = [numberFormatter2 stringFromNumber:v33 displayType:0 unitController:0];

  v35 = [MEMORY[0x1E696AD98] numberWithDouble:v10];
  v36 = numberFormatter2;
  v37 = v35;
  v169 = v36;
  v38 = [v36 stringFromNumber:v35 displayType:0 unitController:0];

  a = transform->a;
  b = transform->b;
  v41 = transform->c;
  d = transform->d;
  tx = transform->tx;
  ty = transform->ty;
  v45 = v38;
  v172 = tx + v12 * v41 + a * v13;
  v46 = ty + v12 * d + b * v13;
  v47 = tx + v10 * v41 + a * v11;
  v48 = ty + v10 * d + b * v11;
  v171 = v46;
  if ([v34 isEqualToString:v38])
  {
    [v38 sizeWithAttributes:v27];
    v160 = v49;
    v51 = v50;
    v180.origin.x = x;
    v180.origin.y = y;
    v180.size.width = width;
    v180.size.height = rect;
    v52 = v48 + -26.0 > CGRectGetMinY(v180);
    v53 = -3.0;
    if (v52)
    {
      v53 = 26.0;
    }

    [(HKQuantityDistributionSeries *)self _textRectForSize:v160 location:v51 screenRect:v47 yOffset:v48, x, y, width, rect, *&v53];
    [v38 hk_drawInRect:v27 withAttributes:clearColor outlineWidth:context outlineColor:? context:?];
    v54 = v169;
  }

  else
  {
    v158 = v47;
    v159 = v48;
    v55 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    [v55 localizedStringForKey:@"HEART_RATE_MIN_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    v56 = v157 = v34;
    localizedUppercaseString = [v56 localizedUppercaseString];

    v34 = v157;
    [localizedUppercaseString sizeWithAttributes:v21];
    v59 = v58;
    v61 = v60;
    [v157 sizeWithAttributes:v27];
    r2 = v62;
    v64 = v63;
    v65 = v46 + 14.0 + v63;
    v66 = CTFontCopySystemUIFontExcessiveLineHeightCharacterSet();
    v181.origin.x = x;
    v181.origin.y = y;
    v181.size.width = width;
    v181.size.height = rect;
    v161 = v21;
    v156 = v66;
    if (v65 >= CGRectGetMaxY(v181))
    {
      [(HKQuantityDistributionSeries *)self _textRectForSize:v59 location:v61 screenRect:v172 yOffset:v46, x, y, width, rect, 0x4042800000000000];
      v146 = v80;
      v147 = v79;
      v144 = v82;
      v145 = v81;
      [(HKQuantityDistributionSeries *)self _textRectForSize:r2 location:v64 screenRect:v172 yOffset:v46, x, y, width, rect, 0x403A000000000000];
      v72 = v83;
      v152 = v84;
      v153 = v85;
      r2a = v86;
    }

    else
    {
      [(HKQuantityDistributionSeries *)self _textRectForSize:v59 location:v61 screenRect:v172 yOffset:v46, x, y, width, rect, 0xC008000000000000];
      v146 = v68;
      v147 = v67;
      v144 = v70;
      v145 = v69;
      [(HKQuantityDistributionSeries *)self _textRectForSize:r2 location:v64 screenRect:v172 yOffset:v46, x, y, width, rect, 0xC02C000000000000];
      v72 = v71;
      v74 = v73;
      v153 = v76;
      r2a = v75;
      v77 = [localizedUppercaseString rangeOfCharacterFromSet:v66];
      v78 = v74 + 3.0;
      if (v77 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v78 = v74;
      }

      v152 = v78;
    }

    v87 = x;
    v88 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v89 = [v88 localizedStringForKey:@"HEART_RATE_MAX_TITLE" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    localizedUppercaseString2 = [v89 localizedUppercaseString];

    v21 = v161;
    [localizedUppercaseString2 sizeWithAttributes:v161];
    v92 = v91;
    v94 = v93;
    [v45 sizeWithAttributes:v27];
    v140 = v95;
    v142 = v96;
    v182.origin.x = x;
    v182.origin.y = y;
    v182.size.width = width;
    v182.size.height = rect;
    v163 = v72;
    if (v159 + -37.0 <= CGRectGetMinY(v182))
    {
      v97 = v158;
      [(HKQuantityDistributionSeries *)self _textRectForSize:v92 location:v94 screenRect:v158 yOffset:v159, v87, y, width, rect, 0xC008000000000000];
      v99 = v114;
      v148 = v115;
      v149 = v116;
      r1 = v117;
      [(HKQuantityDistributionSeries *)self _textRectForSize:v140 location:v142 screenRect:v158 yOffset:v159, v87, y, width, rect, 0xC02C000000000000];
      v105 = v118;
      v107 = v119;
      v109 = v120;
      v111 = v121;
    }

    else
    {
      v97 = v158;
      [(HKQuantityDistributionSeries *)self _textRectForSize:v92 location:v94 screenRect:v158 yOffset:v159, v87, y, width, rect, 0x4042800000000000];
      v99 = v98;
      v101 = v100;
      v149 = v103;
      r1 = v102;
      [(HKQuantityDistributionSeries *)self _textRectForSize:v140 location:v142 screenRect:v158 yOffset:v159, v87, y, width, rect, 0x403A000000000000];
      v105 = v104;
      v107 = v106;
      v109 = v108;
      v111 = v110;
      v112 = [localizedUppercaseString2 rangeOfCharacterFromSet:v156];
      v113 = v101 + -3.0;
      if (v112 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v113 = v101;
      }

      v148 = v113;
    }

    v54 = v169;
    v183.origin.x = v99;
    v183.origin.y = v148;
    v183.size.height = v149;
    v183.size.width = r1;
    v141 = v107;
    v143 = v105;
    v188.origin.x = v105;
    v188.origin.y = v107;
    v188.size.width = v109;
    v188.size.height = v111;
    v184 = CGRectUnion(v183, v188);
    v189.size.width = 0.0;
    v189.size.height = 0.0;
    v189.origin.x = v97;
    v189.origin.y = v159;
    v185 = CGRectUnion(v184, v189);
    v122 = v185.origin.x;
    v123 = v185.origin.y;
    v124 = v185.size.width;
    v125 = v185.size.height;
    v185.origin.x = v147;
    v185.origin.y = v146;
    v185.size.width = v145;
    v185.size.height = v144;
    v190.origin.x = v163;
    v190.origin.y = v152;
    v190.size.height = v153;
    v190.size.width = r2a;
    v186 = CGRectUnion(v185, v190);
    v191.size.width = 0.0;
    v191.size.height = 0.0;
    v191.origin.y = v171;
    v191.origin.x = v172;
    v192 = CGRectUnion(v186, v191);
    v187.origin.x = v122;
    v187.origin.y = v123;
    v187.size.width = v124;
    v187.size.height = v125;
    v193 = CGRectIntersection(v187, v192);
    if (CGRectEqualToRect(*MEMORY[0x1E695F050], v193))
    {
      recta = clearColor;
      r1a = [HKStringDrawing stringDrawingWithText:localizedUppercaseString2 inRect:v161 withAttributes:v99, v148, r1, v149];
      v175[0] = r1a;
      v111 = [HKStringDrawing stringDrawingWithText:v45 inRect:v27 withAttributes:v143, v141, v109, v111];
      v175[1] = v111;
      [HKStringDrawing stringDrawingWithText:localizedUppercaseString inRect:v161 withAttributes:v147, v146, v145, v144];
      v127 = v165 = localizedUppercaseString2;
      v175[2] = v127;
      [HKStringDrawing stringDrawingWithText:v157 inRect:v27 withAttributes:v163, v152, r2a, v153];
      v129 = v128 = v26;
      v175[3] = v129;
      v130 = [MEMORY[0x1E695DEC8] arrayWithObjects:v175 count:4];
      [HKStringDrawing drawStrings:v130 outlineWidth:recta outlineColor:context context:8.0];

      clearColor = recta;
      v26 = v128;
      v34 = v157;

      localizedUppercaseString2 = v165;
      v54 = v169;

      v21 = v161;
    }

    v47 = v158;
    v48 = v159;
  }

  minMaxPointStyle = [(HKQuantityDistributionSeries *)self minMaxPointStyle];

  if (minMaxPointStyle)
  {
    minMaxPointStyle2 = [(HKQuantityDistributionSeries *)self minMaxPointStyle];
    [minMaxPointStyle2 lineWidth];
    v134 = v133;

    minMaxPointStyle3 = [(HKQuantityDistributionSeries *)self minMaxPointStyle];
    [minMaxPointStyle3 strokeColor];
    v137 = v136 = clearColor;
    CGContextSetFillColorWithColor(context, [v137 CGColor]);

    clearColor = v136;
    v138 = HKUIFloorToScreenScale(v172);
    CGContextAddArc(context, v138, v171, v134, 0.0, 6.28318531, 1);
    CGContextFillPath(context);
    v139 = HKUIFloorToScreenScale(v47);
    CGContextAddArc(context, v139, v48, v134, 0.0, 6.28318531, 1);
    CGContextFillPath(context);
  }
}

- (CGRect)_textRectForSize:(CGSize)size location:(CGPoint)location screenRect:(CGRect)rect yOffset:(double)offset
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = size.height;
  v11 = size.width;
  v12 = location.x + size.width * -0.5;
  v13 = location.y - offset;
  v24.origin.x = v12;
  v24.origin.y = location.y - offset;
  v24.size.width = v11;
  v24.size.height = v10;
  v25 = CGRectIntersection(v24, rect);
  if (!CGRectIsNull(v25))
  {
    if (v12 < x)
    {
      v12 = x;
    }

    if (v13 < y)
    {
      v13 = y;
    }

    v26.origin.x = v12;
    v26.origin.y = v13;
    v26.size.width = v11;
    v26.size.height = v10;
    MaxX = CGRectGetMaxX(v26);
    v27.size.height = height;
    v15 = MaxX;
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    rect = v27.size.height;
    if (v15 > CGRectGetMaxX(v27))
    {
      v28.origin.x = v12;
      v28.origin.y = v13;
      v28.size.width = v11;
      v28.size.height = v10;
      v16 = CGRectGetMaxX(v28);
      v29.origin.x = x;
      v29.origin.y = y;
      v29.size.width = width;
      v29.size.height = rect;
      v12 = v12 - (v16 - CGRectGetMaxX(v29));
    }

    v30.origin.x = v12;
    v30.origin.y = v13;
    v30.size.width = v11;
    v30.size.height = v10;
    MaxY = CGRectGetMaxY(v30);
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = rect;
    if (MaxY > CGRectGetMaxY(v31))
    {
      v32.origin.x = v12;
      v32.origin.y = v13;
      v32.size.width = v11;
      v32.size.height = v10;
      v18 = CGRectGetMaxY(v32);
      v33.origin.x = x;
      v33.origin.y = y;
      v33.size.width = width;
      v33.size.height = rect;
      v13 = v13 - (v18 - CGRectGetMaxY(v33));
    }
  }

  v19 = v12;
  v20 = v13;
  v21 = v11;
  v22 = v10;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis
{
  v35 = *MEMORY[0x1E69E9840];
  axisCopy = axis;
  yAxisCopy = yAxis;
  chartPoints = [block chartPoints];
  if (!chartPoints)
  {
    [HKQuantityDistributionSeries coordinatesForBlock:a2 blockPath:self xAxis:? yAxis:?];
  }

  v26 = axisCopy;
  transform = [axisCopy transform];
  v25 = yAxisCopy;
  transform2 = [yAxisCopy transform];
  v15 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = chartPoints;
  v16 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v31;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v31 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = [[HKDistributionBlockPoint alloc] initWithChartPoint:*(*(&v30 + 1) + 8 * i) xAxisTransform:transform yAxisTransform:transform2 gapZeroCount:[(HKQuantityDistributionSeries *)self zeroCountForGap]];
        [v15 addObject:v20];
      }

      v17 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v17);
  }

  v28 = *v24;
  v29 = *(v24 + 2);
  v21 = [HKGraphSeriesBlockCoordinateList coordinateListWithCoordinates:v15 blockPath:&v28];

  return v21;
}

- (double)distanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  distributionSegments = [coordinate distributionSegments];
  v6 = [distributionSegments countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    v9 = 1.79769313e308;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(distributionSegments);
        }

        [*(*(&v13 + 1) + 8 * i) CGPointValue];
        UIDistanceBetweenPoints();
        if (v9 >= v11)
        {
          v9 = v11;
        }
      }

      v7 = [distributionSegments countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    v9 = 1.79769313e308;
  }

  return v9;
}

- (double)xAxisDistanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  x = point.x;
  [coordinate minPoint];
  return vabdd_f64(x, v6);
}

- (double)yAxisDifferenceToPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  y = point.y;
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  distributionSegments = [coordinate distributionSegments];
  v7 = [distributionSegments countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    v10 = 1.79769313e308;
    v11 = -1.79769313e308;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(distributionSegments);
        }

        [*(*(&v16 + 1) + 8 * i) CGPointValue];
        if (v13 - y < 0.0 && v11 < v13 - y)
        {
          v11 = v13 - y;
        }

        if (v10 >= v13 - y && v13 - y >= 0.0)
        {
          v10 = v13 - y;
        }
      }

      v8 = [distributionSegments countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 1.79769313e308;
    v11 = -1.79769313e308;
  }

  if (v10 >= -v11)
  {
    return v11;
  }

  else
  {
    return v10;
  }
}

- (BOOL)blockCoordinate:(id)coordinate lessThan:(id)than
{
  thanCopy = than;
  [coordinate minPoint];
  v7 = v6;
  [thanCopy minPoint];
  v9 = v8;

  return v7 < v9;
}

- (BOOL)blockCoordinate:(id)coordinate greaterThan:(id)than
{
  thanCopy = than;
  [coordinate maxPoint];
  v7 = v6;
  [thanCopy maxPoint];
  v9 = v8;

  return v7 > v9;
}

+ (id)segmentsFromChartPoint:(id)point zeroCountForGap:(int64_t)gap
{
  pointCopy = point;
  minYValue = [pointCopy minYValue];
  maxYValue = [pointCopy maxYValue];
  [minYValue doubleValue];
  v10 = v9;
  [maxYValue doubleValue];
  v12 = [self segmentsFromChartPoint:pointCopy minY:gap maxY:v10 zeroCountForGap:v11];

  return v12;
}

+ (id)segmentsFromChartPoint:(id)point minY:(double)y maxY:(double)maxY zeroCountForGap:(int64_t)gap
{
  v41 = *MEMORY[0x1E69E9840];
  pointCopy = point;
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [pointCopy minimumBucketValue];
  v12 = v11;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  bucketCounts = [pointCopy bucketCounts];
  v14 = [bucketCounts countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v14)
  {
    v15 = v14;
    gapCopy = 0;
    v17 = *v37;
    v18 = v12;
    v19 = v12;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v37 != v17)
        {
          objc_enumerationMutation(bucketCounts);
        }

        if ([*(*(&v36 + 1) + 8 * i) integerValue])
        {
          v21 = gapCopy < gap;
          gapCopy = 0;
          if (!v21)
          {
            v12 = v19;
            v18 = v19;
          }
        }

        else
        {
          if (!gapCopy)
          {
            v12 = v19;
          }

          if (++gapCopy == gap)
          {
            v22 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
            v23 = [MEMORY[0x1E696AD98] numberWithDouble:v12];
            [v10 addObject:v22];
            [v10 addObject:v23];

            gapCopy = gap;
          }
        }

        [pointCopy bucketIncrement];
        v19 = v19 + v24;
      }

      v15 = [bucketCounts countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v15);
  }

  else
  {
    v18 = v12;
    v19 = v12;
  }

  v25 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
  v26 = [MEMORY[0x1E696AD98] numberWithDouble:v19];
  [v10 addObject:v25];
  [v10 addObject:v26];
  if ([v10 count])
  {
    firstObject = [v10 firstObject];
    [firstObject doubleValue];
    v29 = v28;

    if (v29 < y)
    {
      v30 = [MEMORY[0x1E696AD98] numberWithDouble:y];
      [v10 setObject:v30 atIndexedSubscript:0];
    }

    lastObject = [v10 lastObject];
    [lastObject doubleValue];
    v33 = v32;

    if (v33 > maxY)
    {
      v34 = [MEMORY[0x1E696AD98] numberWithDouble:maxY];
      [v10 setObject:v34 atIndexedSubscript:{objc_msgSend(v10, "count") - 1}];
    }
  }

  return v10;
}

+ (id)transformedSegmentsFromChartPoint:(id)point forX:(double)x minY:(double)y maxY:(double)maxY zeroCountForGap:(int64_t)gap
{
  v8 = [self segmentsFromChartPoint:point minY:gap maxY:y zeroCountForGap:maxY];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __97__HKQuantityDistributionSeries_transformedSegmentsFromChartPoint_forX_minY_maxY_zeroCountForGap___block_invoke;
  v11[3] = &__block_descriptor_40_e27___NSValue_16__0__NSNumber_8l;
  *&v11[4] = x;
  v9 = [v8 hk_map:v11];

  return v9;
}

uint64_t __97__HKQuantityDistributionSeries_transformedSegmentsFromChartPoint_forX_minY_maxY_zeroCountForGap___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  [a2 doubleValue];
  v4 = MEMORY[0x1E696B098];

  return [v4 valueWithCGPoint:{v2, v3}];
}

- (void)coordinatesForBlock:(uint64_t)a1 blockPath:(uint64_t)a2 xAxis:yAxis:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKQuantityDistributionSeries.m" lineNumber:491 description:{@"Invalid parameter not satisfying: %@", @"points != nil"}];
}

@end