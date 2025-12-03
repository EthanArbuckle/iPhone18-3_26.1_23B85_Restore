@interface HKJulianIndexedSevenDayQuantitySeries
- (BOOL)blockCoordinate:(id)coordinate greaterThan:(id)than;
- (BOOL)blockCoordinate:(id)coordinate lessThan:(id)than;
- (HKJulianIndexedSevenDayQuantitySeries)initWithColor:(id)color lineWidth:(double)width hollowLineRatio:(double)ratio;
- (double)distanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (double)xAxisDistanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (double)xAxisSelectedCoordinate:(double)coordinate blockCoordinate:(id)blockCoordinate chartRect:(CGRect)rect;
- (double)yAxisDifferenceToPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis;
- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate;
@end

@implementation HKJulianIndexedSevenDayQuantitySeries

- (HKJulianIndexedSevenDayQuantitySeries)initWithColor:(id)color lineWidth:(double)width hollowLineRatio:(double)ratio
{
  colorCopy = color;
  v14.receiver = self;
  v14.super_class = HKJulianIndexedSevenDayQuantitySeries;
  v10 = [(HKGraphSeries *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_color, color);
    v11->_lineWidth = width;
    ratioCopy = 1.0;
    if (ratio <= 1.0)
    {
      ratioCopy = ratio;
    }

    v11->_hollowLineRatio = fmax(ratioCopy, 0.0);
  }

  return v11;
}

- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate
{
  delegateCopy = delegate;
  coordinatesCopy = coordinates;
  if ([(HKGraphSeries *)self allowsSelection])
  {
    hk_chartInactiveSeriesColor = self->_color;
  }

  else
  {
    hk_chartInactiveSeriesColor = [MEMORY[0x1E69DC888] hk_chartInactiveSeriesColor];
  }

  v16 = hk_chartInactiveSeriesColor;
  CGContextSaveGState(context);
  CGContextSetLineCap(context, kCGLineCapRound);
  v17 = self->_lineWidth * 0.5;
  v22[1] = 3221225472;
  v22[0] = MEMORY[0x1E69E9820];
  v22[2] = __180__HKJulianIndexedSevenDayQuantitySeries_drawSeriesWithBlockCoordinates_axisRect_zoomLevelConfiguration_pointTransform_renderContext_secondaryRenderContext_seriesRenderingDelegate___block_invoke;
  v22[3] = &unk_1E81BABA0;
  v25 = v17 + 2.0;
  contextCopy = context;
  v22[4] = self;
  v23 = v16;
  v24 = delegateCopy;
  v18 = *&transform->c;
  v21[0] = *&transform->a;
  v21[1] = v18;
  v21[2] = *&transform->tx;
  v19 = delegateCopy;
  v20 = v16;
  [coordinatesCopy enumerateCoordinatesWithTransform:v21 roundToViewScale:1 block:v22];

  CGContextRestoreGState(context);
}

void __180__HKJulianIndexedSevenDayQuantitySeries_drawSeriesWithBlockCoordinates_axisRect_zoomLevelConfiguration_pointTransform_renderContext_secondaryRenderContext_seriesRenderingDelegate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 start];
  v5 = v4;
  v7 = v6;
  [v3 end];
  v9 = v8;
  v11 = v10;

  v12 = v5 + (v9 - v5) * 0.5;
  v13 = *(a1 + 56);
  if (v12 >= v5 + v13)
  {
    v14 = v5 + v13;
  }

  else
  {
    v14 = v5 + (v9 - v5) * 0.5;
  }

  v15 = v9 - v13;
  if (v12 >= v15)
  {
    v16 = v5 + (v9 - v5) * 0.5;
  }

  else
  {
    v16 = v15;
  }

  CGContextSetLineWidth(*(a1 + 64), *(*(a1 + 32) + 216));
  CGContextSetBlendMode(*(a1 + 64), kCGBlendModeNormal);
  CGContextSetStrokeColorWithColor(*(a1 + 64), [*(a1 + 40) CGColor]);
  CGContextMoveToPoint(*(a1 + 64), v14, v7);
  CGContextAddLineToPoint(*(a1 + 64), v16, v11);
  CGContextStrokePath(*(a1 + 64));
  v17 = *(a1 + 32);
  v18 = *(v17 + 224);
  if (v18 > 0.0)
  {
    CGContextSetLineWidth(*(a1 + 64), v18 * *(v17 + 216));
    v19 = [*(a1 + 48) seriesDrawingDuringTiling];
    v20 = *(a1 + 64);
    if (v19)
    {
      v21 = [MEMORY[0x1E69DC888] hk_chartBackgroundColor];
      CGContextSetStrokeColorWithColor(v20, [v21 CGColor]);
    }

    else
    {
      CGContextSetBlendMode(*(a1 + 64), kCGBlendModeClear);
    }

    CGContextMoveToPoint(*(a1 + 64), v14, v7);
    CGContextAddLineToPoint(*(a1 + 64), v16, v11);
    v22 = *(a1 + 64);

    CGContextStrokePath(v22);
  }
}

- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis
{
  axisCopy = axis;
  yAxisCopy = yAxis;
  chartPoints = [block chartPoints];
  if (!chartPoints)
  {
    [HKJulianIndexedSevenDayQuantitySeries coordinatesForBlock:blockPath:xAxis:yAxis:];
  }

  transform = [axisCopy transform];
  transform2 = [yAxisCopy transform];

  v14 = objc_opt_new();
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __83__HKJulianIndexedSevenDayQuantitySeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke;
  v22[3] = &unk_1E81BABC8;
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

void __83__HKJulianIndexedSevenDayQuantitySeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke(void *a1, void *a2)
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
    v17 = [_HKJulianIndexedSevenDayQuantitySeriesBlockCoordinate alloc];
    v18 = [v20 userInfo];
    v19 = [(_HKJulianIndexedSevenDayQuantitySeriesBlockCoordinate *)v17 initWithStart:v18 end:v7 userInfo:v15, v11, v15];
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
  [(HKJulianIndexedSevenDayQuantitySeries *)self xAxisDistanceFromPoint:coordinateCopy blockCoordinate:v10 chartRect:v9, x, y, width, height];
  v14 = v13;
  [(HKJulianIndexedSevenDayQuantitySeries *)self yAxisDifferenceToPoint:coordinateCopy blockCoordinate:v10 chartRect:v9, x, y, width, height];
  v16 = v15;

  return sqrt(v16 * v16 + v14 * v14);
}

- (double)xAxisDistanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  x = point.x;
  coordinateCopy = coordinate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKJulianIndexedSevenDayQuantitySeries xAxisDistanceFromPoint:blockCoordinate:chartRect:];
  }

  v7 = coordinateCopy;
  [v7 startXValue];
  v9 = v8 - x;
  [v7 endXValue];
  v11 = v10;

  v12 = fmax(v9, 0.0);
  if (x - v11 <= 0.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = x - v11;
  }

  return v13;
}

- (double)yAxisDifferenceToPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  y = point.y;
  coordinateCopy = coordinate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKJulianIndexedSevenDayQuantitySeries yAxisDifferenceToPoint:blockCoordinate:chartRect:];
  }

  [coordinateCopy start];
  v8 = v7 - y;

  return v8;
}

- (double)xAxisSelectedCoordinate:(double)coordinate blockCoordinate:(id)blockCoordinate chartRect:(CGRect)rect
{
  blockCoordinateCopy = blockCoordinate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKJulianIndexedSevenDayQuantitySeries xAxisSelectedCoordinate:blockCoordinate:chartRect:];
  }

  v8 = blockCoordinateCopy;
  [v8 startXValue];
  v10 = v9;
  [v8 endXValue];
  v12 = v11;

  v13 = self->_lineWidth * 0.5 + 2.0;
  v14 = v10 + (v12 - v10) * 0.5;
  v15 = v10 + v13;
  if (v14 < v10 + v13)
  {
    v15 = v10 + (v12 - v10) * 0.5;
  }

  v16 = v12 - v13;
  if (v14 >= v16)
  {
    v16 = v10 + (v12 - v10) * 0.5;
  }

  if (v15 <= coordinate)
  {
    coordinateCopy = coordinate;
  }

  else
  {
    coordinateCopy = v15;
  }

  if (coordinateCopy >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = coordinateCopy;
  }

  return v18;
}

- (BOOL)blockCoordinate:(id)coordinate lessThan:(id)than
{
  coordinateCopy = coordinate;
  thanCopy = than;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKJulianIndexedSevenDayQuantitySeries blockCoordinate:lessThan:];
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
    [HKJulianIndexedSevenDayQuantitySeries blockCoordinate:greaterThan:];
  }

  v7 = thanCopy;
  [coordinateCopy start];
  v9 = v8;
  [v7 start];
  v11 = v10;

  return v9 > v11;
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