@interface HKHorizontalTimePeriodSeries
- (BOOL)blockCoordinate:(id)coordinate greaterThan:(id)than;
- (BOOL)blockCoordinate:(id)coordinate lessThan:(id)than;
- (CGPoint)renderPositionForLabelLocation:(id)location rect:(CGRect)rect zoomScale:(double)scale contentOffset:(CGPoint)offset constantOffset:(double)constantOffset isHorizontal:(BOOL)horizontal optionalOffset:(CGPoint)optionalOffset;
- (CGRect)enumerationRectForLevel:(int64_t)level axisRect:(CGRect)rect;
- (HKHorizontalTimePeriodSeries)init;
- (NSArray)enumerationValueOrdering;
- (NSDictionary)valueLabels;
- (UIColor)fillColor;
- (UIImage)selectedPointMarkerImage;
- (double)distanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (double)lineWidth;
- (double)offsetForCoordinate:(id)coordinate axisRect:(CGRect)rect;
- (double)xAxisDistanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (double)xAxisSelectedCoordinate:(double)coordinate blockCoordinate:(id)blockCoordinate chartRect:(CGRect)rect;
- (double)yAxisDifferenceToPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (id)_generateAxisLabels;
- (id)cachedAxisLabels;
- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis;
- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate;
- (void)setEnumerationValueOrdering:(id)ordering;
- (void)setFillColor:(id)color;
- (void)setLineWidth:(double)width;
- (void)setSelectedPointMarkerImage:(id)image;
- (void)setValueLabels:(id)labels;
@end

@implementation HKHorizontalTimePeriodSeries

- (HKHorizontalTimePeriodSeries)init
{
  v12.receiver = self;
  v12.super_class = HKHorizontalTimePeriodSeries;
  v2 = [(HKGraphSeries *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    seriesMutableStateLock = v2->_seriesMutableStateLock;
    v2->_seriesMutableStateLock = v3;

    [(NSLock *)v2->_seriesMutableStateLock setName:@"HKHorizontalTimePeriodSeriesLock"];
    cachedAxisLabelsStorage = v2->_cachedAxisLabelsStorage;
    v6 = MEMORY[0x1E695E0F0];
    v2->_cachedAxisLabelsStorage = MEMORY[0x1E695E0F0];

    selectedPointMarkerImageStorage = v2->_selectedPointMarkerImageStorage;
    v2->_selectedPointMarkerImageStorage = 0;

    fillColorStorage = v2->_fillColorStorage;
    v2->_fillColorStorage = 0;

    v2->_lineWidthStorage = 1.0;
    enumerationValueOrderingStorage = v2->_enumerationValueOrderingStorage;
    v2->_enumerationValueOrderingStorage = v6;

    valueLabelsStorage = v2->_valueLabelsStorage;
    v2->_valueLabelsStorage = MEMORY[0x1E695E0F8];
  }

  return v2;
}

- (id)cachedAxisLabels
{
  seriesMutableStateLock = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_cachedAxisLabelsStorage;
  seriesMutableStateLock2 = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (UIImage)selectedPointMarkerImage
{
  seriesMutableStateLock = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_selectedPointMarkerImageStorage;
  seriesMutableStateLock2 = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setSelectedPointMarkerImage:(id)image
{
  imageCopy = image;
  seriesMutableStateLock = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  selectedPointMarkerImageStorage = self->_selectedPointMarkerImageStorage;
  self->_selectedPointMarkerImageStorage = imageCopy;

  seriesMutableStateLock2 = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (UIColor)fillColor
{
  seriesMutableStateLock = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_fillColorStorage;
  seriesMutableStateLock2 = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setFillColor:(id)color
{
  colorCopy = color;
  seriesMutableStateLock = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  fillColorStorage = self->_fillColorStorage;
  self->_fillColorStorage = colorCopy;

  seriesMutableStateLock2 = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (double)lineWidth
{
  seriesMutableStateLock = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  lineWidthStorage = self->_lineWidthStorage;
  seriesMutableStateLock2 = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return lineWidthStorage;
}

- (void)setLineWidth:(double)width
{
  seriesMutableStateLock = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  self->_lineWidthStorage = width;
  seriesMutableStateLock2 = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (NSArray)enumerationValueOrdering
{
  seriesMutableStateLock = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_enumerationValueOrderingStorage;
  seriesMutableStateLock2 = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setEnumerationValueOrdering:(id)ordering
{
  orderingCopy = ordering;
  seriesMutableStateLock = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  enumerationValueOrderingStorage = self->_enumerationValueOrderingStorage;
  self->_enumerationValueOrderingStorage = orderingCopy;
  v7 = orderingCopy;

  _generateAxisLabels = [(HKHorizontalTimePeriodSeries *)self _generateAxisLabels];
  cachedAxisLabelsStorage = self->_cachedAxisLabelsStorage;
  self->_cachedAxisLabelsStorage = _generateAxisLabels;

  seriesMutableStateLock2 = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (NSDictionary)valueLabels
{
  seriesMutableStateLock = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_valueLabelsStorage;
  seriesMutableStateLock2 = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setValueLabels:(id)labels
{
  labelsCopy = labels;
  seriesMutableStateLock = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  valueLabelsStorage = self->_valueLabelsStorage;
  self->_valueLabelsStorage = labelsCopy;
  v7 = labelsCopy;

  _generateAxisLabels = [(HKHorizontalTimePeriodSeries *)self _generateAxisLabels];
  cachedAxisLabelsStorage = self->_cachedAxisLabelsStorage;
  self->_cachedAxisLabelsStorage = _generateAxisLabels;

  seriesMutableStateLock2 = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
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
  renderContextCopy = renderContext;
  delegateCopy = delegate;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  [(HKGraphSeries *)self selectedPathRange];
  closestXCoordinateRange = [(HKGraphSeries *)self closestXCoordinateRange];
  minValue = [closestXCoordinateRange minValue];

  LOBYTE(closestXCoordinateRange) = [(HKGraphSeries *)self isHighlighted];
  v58 = 0;
  v59 = &v58;
  v60 = 0x3010000000;
  v61 = &unk_1C3DAF4DA;
  v62 = *MEMORY[0x1E695EFF8];
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  CGContextSaveGState(context);
  [(HKHorizontalTimePeriodSeries *)self lineWidth];
  CGContextSetLineWidth(context, v24);
  CGContextSetLineCap(context, kCGLineCapRound);
  fillColor = [(HKHorizontalTimePeriodSeries *)self fillColor];
  CGContextSetStrokeColorWithColor(context, [fillColor CGColor]);

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __171__HKHorizontalTimePeriodSeries_drawSeriesWithBlockCoordinates_axisRect_zoomLevelConfiguration_pointTransform_renderContext_secondaryRenderContext_seriesRenderingDelegate___block_invoke;
  v40[3] = &unk_1E81BBD80;
  v44 = x;
  v45 = y;
  v46 = width;
  v47 = height;
  contextCopy = context;
  v53 = closestXCoordinateRange;
  v49 = v63;
  v50 = v64;
  v51 = v65;
  v52 = v66;
  v26 = coordinatesCopy;
  v40[4] = self;
  v42 = &v54;
  v27 = minValue;
  v41 = v27;
  v43 = &v58;
  v28 = *&transform->c;
  v39[0] = *&transform->a;
  v39[1] = v28;
  v39[2] = *&transform->tx;
  [v26 enumerateCoordinatesWithTransform:v39 roundToViewScale:1 block:v40];
  if (*(v55 + 24) == 1)
  {
    selectedPointMarkerImage = [(HKHorizontalTimePeriodSeries *)self selectedPointMarkerImage];
    v30 = HKChartSeriesPointMarkerBaseRect(selectedPointMarkerImage);
    v32 = v31;
    v34 = v33;
    v36 = v35;
    cGImage = [selectedPointMarkerImage CGImage];
    v67.origin.x = v30;
    v67.origin.y = v32;
    v67.size.width = v34;
    v67.size.height = v36;
    v68 = CGRectOffset(v67, v59[4], v59[5]);
    CGContextDrawImage(context, v68, cGImage);
  }

  CGContextRestoreGState(context);

  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v58, 8);
}

void __171__HKHorizontalTimePeriodSeries_drawSeriesWithBlockCoordinates_axisRect_zoomLevelConfiguration_pointTransform_renderContext_secondaryRenderContext_seriesRenderingDelegate___block_invoke(uint64_t a1, void *a2, _OWORD *a3, void *a4)
{
  v7 = a4;
  v8 = a2;
  [v8 start];
  v10 = v9;
  [v8 end];
  v12 = v11;

  [*(a1 + 32) offsetForCoordinate:v7 axisRect:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  v14 = v13;

  CGContextMoveToPoint(*(a1 + 96), v10, v14);
  CGContextAddLineToPoint(*(a1 + 96), v12, v14);
  CGContextStrokePath(*(a1 + 96));
  if (*(a1 + 168) == 1)
  {
    v15 = a3[1];
    v22[0] = *a3;
    v22[1] = v15;
    v16 = *(a1 + 120);
    v21[0] = *(a1 + 104);
    v21[1] = v16;
    v17 = *(a1 + 152);
    v21[2] = *(a1 + 136);
    v21[3] = v17;
    if (HKGraphSeriesDataPointPathInRangeInclusive(v22, v21))
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      v18 = *(a1 + 40);
      if (v18)
      {
        [v18 floatValue];
        *(*(*(a1 + 56) + 8) + 32) = v19;
        v20 = *(*(a1 + 56) + 8);
      }

      else
      {
        v20 = *(*(a1 + 56) + 8);
        *(v20 + 32) = v10;
      }

      *(v20 + 40) = v14;
    }
  }
}

- (CGRect)enumerationRectForLevel:(int64_t)level axisRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  valueLabels = [(HKHorizontalTimePeriodSeries *)self valueLabels];
  if ([valueLabels count])
  {
    valueLabels2 = [(HKHorizontalTimePeriodSeries *)self valueLabels];
    v12 = [valueLabels2 count];
  }

  else
  {
    v12 = 1.0;
  }

  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  v13 = CGRectGetHeight(v17) / v12;
  v14 = y + level * v13;
  v15 = x;
  v16 = width;
  result.size.height = v13;
  result.size.width = v16;
  result.origin.y = v14;
  result.origin.x = v15;
  return result;
}

- (double)offsetForCoordinate:(id)coordinate axisRect:(CGRect)rect
{
  [(HKHorizontalTimePeriodSeries *)self enumerationRectForLevel:[(HKHorizontalTimePeriodSeries *)self _enumeratedLevelForCoordinate:coordinate] axisRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];

  [(HKHorizontalTimePeriodSeries *)self offsetForEnumerationRect:?];
  return result;
}

- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis
{
  axisCopy = axis;
  yAxisCopy = yAxis;
  chartPoints = [block chartPoints];
  if (!chartPoints)
  {
    [HKHorizontalTimePeriodSeries coordinatesForBlock:blockPath:xAxis:yAxis:];
  }

  transform = [axisCopy transform];
  transform2 = [yAxisCopy transform];

  v14 = objc_opt_new();
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __74__HKHorizontalTimePeriodSeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke;
  v22[3] = &unk_1E81BBDA8;
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

void __74__HKHorizontalTimePeriodSeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke(void *a1, void *a2)
{
  v20 = a2;
  v3 = [v20 yValue];

  if (v3)
  {
    v4 = a1[4];
    v5 = [v20 xStart];
    [v4 coordinateForValue:v5];
    v7 = v6;

    v8 = a1[4];
    v9 = [v20 xEnd];
    [v8 coordinateForValue:v9];
    v11 = v10;

    v12 = a1[5];
    v13 = [v20 yValue];
    [v12 coordinateForValue:v13];
    v15 = v14;

    v16 = a1[6];
    v17 = [HKStackedCategoryValueSeriesCoordinate alloc];
    v18 = [v20 userInfo];
    v19 = [(HKStackedCategoryValueSeriesCoordinate *)v17 initWithStart:0 end:v18 pointStyle:v7 userInfo:v15, v11, v15];
    [v16 addObject:v19];
  }
}

- (double)distanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = point.y;
  v10 = point.x;
  coordinateCopy = coordinate;
  [(HKHorizontalTimePeriodSeries *)self xAxisDistanceFromPoint:coordinateCopy blockCoordinate:v10 chartRect:v9, x, y, width, height];
  v14 = v13;
  [(HKHorizontalTimePeriodSeries *)self yAxisDifferenceToPoint:coordinateCopy blockCoordinate:v10 chartRect:v9, x, y, width, height];
  v16 = v15;

  return sqrt(v16 * v16 + v14 * v14);
}

- (double)xAxisDistanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  height = rect.size.height;
  y = rect.origin.y;
  v7 = point.y;
  x = point.x;
  coordinateCopy = coordinate;
  if (v7 >= y && v7 <= y + height)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [HKHorizontalTimePeriodSeries xAxisDistanceFromPoint:blockCoordinate:chartRect:];
    }

    v12 = coordinateCopy;
    [v12 startXValue];
    v14 = v13 - x;
    [v12 endXValue];
    v16 = v15;

    v17 = fmax(v14, 0.0);
    if (x - v16 <= 0.0)
    {
      v11 = v17;
    }

    else
    {
      v11 = x - v16;
    }
  }

  else
  {
    v11 = 1.79769313e308;
  }

  return v11;
}

- (double)yAxisDifferenceToPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = point.y;
  coordinateCopy = coordinate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKHorizontalTimePeriodSeries yAxisDifferenceToPoint:blockCoordinate:chartRect:];
  }

  [(HKHorizontalTimePeriodSeries *)self offsetForCoordinate:coordinateCopy axisRect:x, y, width, height];
  v13 = v12 - v9;

  return v13;
}

- (double)xAxisSelectedCoordinate:(double)coordinate blockCoordinate:(id)blockCoordinate chartRect:(CGRect)rect
{
  blockCoordinateCopy = blockCoordinate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKHorizontalTimePeriodSeries xAxisSelectedCoordinate:blockCoordinate:chartRect:];
  }

  v7 = blockCoordinateCopy;
  [v7 startXValue];
  if (v8 <= coordinate)
  {
    coordinateCopy = coordinate;
  }

  else
  {
    coordinateCopy = v8;
  }

  [v7 endXValue];
  v11 = v10;

  if (coordinateCopy < v11)
  {
    v11 = coordinateCopy;
  }

  return v11;
}

- (BOOL)blockCoordinate:(id)coordinate lessThan:(id)than
{
  coordinateCopy = coordinate;
  thanCopy = than;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKHorizontalTimePeriodSeries blockCoordinate:lessThan:];
  }

  v7 = thanCopy;
  [coordinateCopy start];
  v9 = v8;
  [v7 start];
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
    [HKHorizontalTimePeriodSeries blockCoordinate:greaterThan:];
  }

  v7 = thanCopy;
  [coordinateCopy start];
  v9 = v8;
  [v7 start];
  v11 = v10;

  return v9 > v11;
}

- (id)_generateAxisLabels
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = self->_enumerationValueOrderingStorage;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [(NSDictionary *)self->_valueLabelsStorage objectForKeyedSubscript:*(*(&v14 + 1) + 8 * i)];
        v10 = objc_alloc_init(HKAxisLabel);
        [(HKAxisLabel *)v10 setText:v9];
        v11 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
        [(HKAxisLabel *)v10 setLocation:v11];

        [v3 addObject:v10];
        ++v6;
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  return v3;
}

- (CGPoint)renderPositionForLabelLocation:(id)location rect:(CGRect)rect zoomScale:(double)scale contentOffset:(CGPoint)offset constantOffset:(double)constantOffset isHorizontal:(BOOL)horizontal optionalOffset:(CGPoint)optionalOffset
{
  horizontalCopy = horizontal;
  -[HKHorizontalTimePeriodSeries enumerationRectForLevel:axisRect:](self, "enumerationRectForLevel:axisRect:", [location integerValue], rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
  [(HKHorizontalTimePeriodSeries *)self offsetForEnumerationRect:?];
  constantOffsetCopy2 = HKUIFloorToScreenScale(v12);
  if (horizontalCopy)
  {
    constantOffsetCopy = constantOffsetCopy2;
  }

  else
  {
    constantOffsetCopy = constantOffset;
  }

  v15 = v18 + constantOffsetCopy;
  if (horizontalCopy)
  {
    constantOffsetCopy2 = constantOffset;
  }

  v16 = v19 + constantOffsetCopy2;
  v17 = v15;
  result.y = v16;
  result.x = v17;
  return result;
}

- (void)coordinatesForBlock:blockPath:xAxis:yAxis:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_1();
  [v0 handleFailureInMethod:@"points != nil" object:? file:? lineNumber:? description:?];
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

- (void)xAxisSelectedCoordinate:blockCoordinate:chartRect:.cold.1()
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