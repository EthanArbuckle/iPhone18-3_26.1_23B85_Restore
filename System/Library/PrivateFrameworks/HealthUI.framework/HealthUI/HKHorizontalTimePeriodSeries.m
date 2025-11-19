@interface HKHorizontalTimePeriodSeries
- (BOOL)blockCoordinate:(id)a3 greaterThan:(id)a4;
- (BOOL)blockCoordinate:(id)a3 lessThan:(id)a4;
- (CGPoint)renderPositionForLabelLocation:(id)a3 rect:(CGRect)a4 zoomScale:(double)a5 contentOffset:(CGPoint)a6 constantOffset:(double)a7 isHorizontal:(BOOL)a8 optionalOffset:(CGPoint)a9;
- (CGRect)enumerationRectForLevel:(int64_t)a3 axisRect:(CGRect)a4;
- (HKHorizontalTimePeriodSeries)init;
- (NSArray)enumerationValueOrdering;
- (NSDictionary)valueLabels;
- (UIColor)fillColor;
- (UIImage)selectedPointMarkerImage;
- (double)distanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (double)lineWidth;
- (double)offsetForCoordinate:(id)a3 axisRect:(CGRect)a4;
- (double)xAxisDistanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (double)xAxisSelectedCoordinate:(double)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (double)yAxisDifferenceToPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (id)_generateAxisLabels;
- (id)cachedAxisLabels;
- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6;
- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9;
- (void)setEnumerationValueOrdering:(id)a3;
- (void)setFillColor:(id)a3;
- (void)setLineWidth:(double)a3;
- (void)setSelectedPointMarkerImage:(id)a3;
- (void)setValueLabels:(id)a3;
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
  v3 = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_cachedAxisLabelsStorage;
  v5 = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (UIImage)selectedPointMarkerImage
{
  v3 = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_selectedPointMarkerImageStorage;
  v5 = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setSelectedPointMarkerImage:(id)a3
{
  v4 = a3;
  v5 = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [v5 lock];

  selectedPointMarkerImageStorage = self->_selectedPointMarkerImageStorage;
  self->_selectedPointMarkerImageStorage = v4;

  v7 = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [v7 unlock];
}

- (UIColor)fillColor
{
  v3 = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_fillColorStorage;
  v5 = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setFillColor:(id)a3
{
  v4 = a3;
  v5 = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [v5 lock];

  fillColorStorage = self->_fillColorStorage;
  self->_fillColorStorage = v4;

  v7 = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [v7 unlock];
}

- (double)lineWidth
{
  v3 = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [v3 lock];

  lineWidthStorage = self->_lineWidthStorage;
  v5 = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return lineWidthStorage;
}

- (void)setLineWidth:(double)a3
{
  v5 = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [v5 lock];

  self->_lineWidthStorage = a3;
  v6 = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [v6 unlock];
}

- (NSArray)enumerationValueOrdering
{
  v3 = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_enumerationValueOrderingStorage;
  v5 = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setEnumerationValueOrdering:(id)a3
{
  v4 = a3;
  v5 = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [v5 lock];

  enumerationValueOrderingStorage = self->_enumerationValueOrderingStorage;
  self->_enumerationValueOrderingStorage = v4;
  v7 = v4;

  v8 = [(HKHorizontalTimePeriodSeries *)self _generateAxisLabels];
  cachedAxisLabelsStorage = self->_cachedAxisLabelsStorage;
  self->_cachedAxisLabelsStorage = v8;

  v10 = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [v10 unlock];
}

- (NSDictionary)valueLabels
{
  v3 = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_valueLabelsStorage;
  v5 = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setValueLabels:(id)a3
{
  v4 = a3;
  v5 = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [v5 lock];

  valueLabelsStorage = self->_valueLabelsStorage;
  self->_valueLabelsStorage = v4;
  v7 = v4;

  v8 = [(HKHorizontalTimePeriodSeries *)self _generateAxisLabels];
  cachedAxisLabelsStorage = self->_cachedAxisLabelsStorage;
  self->_cachedAxisLabelsStorage = v8;

  v10 = [(HKHorizontalTimePeriodSeries *)self seriesMutableStateLock];
  [v10 unlock];
}

- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v19 = a3;
  v20 = a5;
  v21 = a8;
  v22 = a9;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  [(HKGraphSeries *)self selectedPathRange];
  v23 = [(HKGraphSeries *)self closestXCoordinateRange];
  v38 = [v23 minValue];

  LOBYTE(v23) = [(HKGraphSeries *)self isHighlighted];
  v58 = 0;
  v59 = &v58;
  v60 = 0x3010000000;
  v61 = &unk_1C3DAF4DA;
  v62 = *MEMORY[0x1E695EFF8];
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  CGContextSaveGState(a7);
  [(HKHorizontalTimePeriodSeries *)self lineWidth];
  CGContextSetLineWidth(a7, v24);
  CGContextSetLineCap(a7, kCGLineCapRound);
  v25 = [(HKHorizontalTimePeriodSeries *)self fillColor];
  CGContextSetStrokeColorWithColor(a7, [v25 CGColor]);

  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __171__HKHorizontalTimePeriodSeries_drawSeriesWithBlockCoordinates_axisRect_zoomLevelConfiguration_pointTransform_renderContext_secondaryRenderContext_seriesRenderingDelegate___block_invoke;
  v40[3] = &unk_1E81BBD80;
  v44 = x;
  v45 = y;
  v46 = width;
  v47 = height;
  v48 = a7;
  v53 = v23;
  v49 = v63;
  v50 = v64;
  v51 = v65;
  v52 = v66;
  v26 = v19;
  v40[4] = self;
  v42 = &v54;
  v27 = v38;
  v41 = v27;
  v43 = &v58;
  v28 = *&a6->c;
  v39[0] = *&a6->a;
  v39[1] = v28;
  v39[2] = *&a6->tx;
  [v26 enumerateCoordinatesWithTransform:v39 roundToViewScale:1 block:v40];
  if (*(v55 + 24) == 1)
  {
    v29 = [(HKHorizontalTimePeriodSeries *)self selectedPointMarkerImage];
    v30 = HKChartSeriesPointMarkerBaseRect(v29);
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v37 = [v29 CGImage];
    v67.origin.x = v30;
    v67.origin.y = v32;
    v67.size.width = v34;
    v67.size.height = v36;
    v68 = CGRectOffset(v67, v59[4], v59[5]);
    CGContextDrawImage(a7, v68, v37);
  }

  CGContextRestoreGState(a7);

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

- (CGRect)enumerationRectForLevel:(int64_t)a3 axisRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = [(HKHorizontalTimePeriodSeries *)self valueLabels];
  if ([v10 count])
  {
    v11 = [(HKHorizontalTimePeriodSeries *)self valueLabels];
    v12 = [v11 count];
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
  v14 = y + a3 * v13;
  v15 = x;
  v16 = width;
  result.size.height = v13;
  result.size.width = v16;
  result.origin.y = v14;
  result.origin.x = v15;
  return result;
}

- (double)offsetForCoordinate:(id)a3 axisRect:(CGRect)a4
{
  [(HKHorizontalTimePeriodSeries *)self enumerationRectForLevel:[(HKHorizontalTimePeriodSeries *)self _enumeratedLevelForCoordinate:a3] axisRect:a4.origin.x, a4.origin.y, a4.size.width, a4.size.height];

  [(HKHorizontalTimePeriodSeries *)self offsetForEnumerationRect:?];
  return result;
}

- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = [a3 chartPoints];
  if (!v11)
  {
    [HKHorizontalTimePeriodSeries coordinatesForBlock:blockPath:xAxis:yAxis:];
  }

  v12 = [v9 transform];
  v13 = [v10 transform];

  v14 = objc_opt_new();
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __74__HKHorizontalTimePeriodSeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke;
  v22[3] = &unk_1E81BBDA8;
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

- (double)distanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a3.y;
  v10 = a3.x;
  v12 = a4;
  [(HKHorizontalTimePeriodSeries *)self xAxisDistanceFromPoint:v12 blockCoordinate:v10 chartRect:v9, x, y, width, height];
  v14 = v13;
  [(HKHorizontalTimePeriodSeries *)self yAxisDifferenceToPoint:v12 blockCoordinate:v10 chartRect:v9, x, y, width, height];
  v16 = v15;

  return sqrt(v16 * v16 + v14 * v14);
}

- (double)xAxisDistanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  height = a5.size.height;
  y = a5.origin.y;
  v7 = a3.y;
  x = a3.x;
  v9 = a4;
  if (v7 >= y && v7 <= y + height)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [HKHorizontalTimePeriodSeries xAxisDistanceFromPoint:blockCoordinate:chartRect:];
    }

    v12 = v9;
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

- (double)yAxisDifferenceToPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a3.y;
  v11 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKHorizontalTimePeriodSeries yAxisDifferenceToPoint:blockCoordinate:chartRect:];
  }

  [(HKHorizontalTimePeriodSeries *)self offsetForCoordinate:v11 axisRect:x, y, width, height];
  v13 = v12 - v9;

  return v13;
}

- (double)xAxisSelectedCoordinate:(double)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKHorizontalTimePeriodSeries xAxisSelectedCoordinate:blockCoordinate:chartRect:];
  }

  v7 = v6;
  [v7 startXValue];
  if (v8 <= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v8;
  }

  [v7 endXValue];
  v11 = v10;

  if (v9 < v11)
  {
    v11 = v9;
  }

  return v11;
}

- (BOOL)blockCoordinate:(id)a3 lessThan:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKHorizontalTimePeriodSeries blockCoordinate:lessThan:];
  }

  v7 = v6;
  [v5 start];
  v9 = v8;
  [v7 start];
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
    [HKHorizontalTimePeriodSeries blockCoordinate:greaterThan:];
  }

  v7 = v6;
  [v5 start];
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

- (CGPoint)renderPositionForLabelLocation:(id)a3 rect:(CGRect)a4 zoomScale:(double)a5 contentOffset:(CGPoint)a6 constantOffset:(double)a7 isHorizontal:(BOOL)a8 optionalOffset:(CGPoint)a9
{
  v9 = a8;
  -[HKHorizontalTimePeriodSeries enumerationRectForLevel:axisRect:](self, "enumerationRectForLevel:axisRect:", [a3 integerValue], a4.origin.x, a4.origin.y, a4.size.width, a4.size.height);
  [(HKHorizontalTimePeriodSeries *)self offsetForEnumerationRect:?];
  v13 = HKUIFloorToScreenScale(v12);
  if (v9)
  {
    v14 = v13;
  }

  else
  {
    v14 = a7;
  }

  v15 = v18 + v14;
  if (v9)
  {
    v13 = a7;
  }

  v16 = v19 + v13;
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