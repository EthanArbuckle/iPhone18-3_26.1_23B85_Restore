@interface HKJulianIndexedSevenDayQuantitySeries
- (BOOL)blockCoordinate:(id)a3 greaterThan:(id)a4;
- (BOOL)blockCoordinate:(id)a3 lessThan:(id)a4;
- (HKJulianIndexedSevenDayQuantitySeries)initWithColor:(id)a3 lineWidth:(double)a4 hollowLineRatio:(double)a5;
- (double)distanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (double)xAxisDistanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (double)xAxisSelectedCoordinate:(double)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (double)yAxisDifferenceToPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6;
- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9;
@end

@implementation HKJulianIndexedSevenDayQuantitySeries

- (HKJulianIndexedSevenDayQuantitySeries)initWithColor:(id)a3 lineWidth:(double)a4 hollowLineRatio:(double)a5
{
  v9 = a3;
  v14.receiver = self;
  v14.super_class = HKJulianIndexedSevenDayQuantitySeries;
  v10 = [(HKGraphSeries *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_color, a3);
    v11->_lineWidth = a4;
    v12 = 1.0;
    if (a5 <= 1.0)
    {
      v12 = a5;
    }

    v11->_hollowLineRatio = fmax(v12, 0.0);
  }

  return v11;
}

- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9
{
  v13 = a9;
  v14 = a3;
  if ([(HKGraphSeries *)self allowsSelection])
  {
    v15 = self->_color;
  }

  else
  {
    v15 = [MEMORY[0x1E69DC888] hk_chartInactiveSeriesColor];
  }

  v16 = v15;
  CGContextSaveGState(a7);
  CGContextSetLineCap(a7, kCGLineCapRound);
  v17 = self->_lineWidth * 0.5;
  v22[1] = 3221225472;
  v22[0] = MEMORY[0x1E69E9820];
  v22[2] = __180__HKJulianIndexedSevenDayQuantitySeries_drawSeriesWithBlockCoordinates_axisRect_zoomLevelConfiguration_pointTransform_renderContext_secondaryRenderContext_seriesRenderingDelegate___block_invoke;
  v22[3] = &unk_1E81BABA0;
  v25 = v17 + 2.0;
  v26 = a7;
  v22[4] = self;
  v23 = v16;
  v24 = v13;
  v18 = *&a6->c;
  v21[0] = *&a6->a;
  v21[1] = v18;
  v21[2] = *&a6->tx;
  v19 = v13;
  v20 = v16;
  [v14 enumerateCoordinatesWithTransform:v21 roundToViewScale:1 block:v22];

  CGContextRestoreGState(a7);
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

- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = [a3 chartPoints];
  if (!v11)
  {
    [HKJulianIndexedSevenDayQuantitySeries coordinatesForBlock:blockPath:xAxis:yAxis:];
  }

  v12 = [v9 transform];
  v13 = [v10 transform];

  v14 = objc_opt_new();
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __83__HKJulianIndexedSevenDayQuantitySeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke;
  v22[3] = &unk_1E81BABC8;
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

- (double)distanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a3.y;
  v10 = a3.x;
  v12 = a4;
  [(HKJulianIndexedSevenDayQuantitySeries *)self xAxisDistanceFromPoint:v12 blockCoordinate:v10 chartRect:v9, x, y, width, height];
  v14 = v13;
  [(HKJulianIndexedSevenDayQuantitySeries *)self yAxisDifferenceToPoint:v12 blockCoordinate:v10 chartRect:v9, x, y, width, height];
  v16 = v15;

  return sqrt(v16 * v16 + v14 * v14);
}

- (double)xAxisDistanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  x = a3.x;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKJulianIndexedSevenDayQuantitySeries xAxisDistanceFromPoint:blockCoordinate:chartRect:];
  }

  v7 = v6;
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

- (double)yAxisDifferenceToPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  y = a3.y;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKJulianIndexedSevenDayQuantitySeries yAxisDifferenceToPoint:blockCoordinate:chartRect:];
  }

  [v6 start];
  v8 = v7 - y;

  return v8;
}

- (double)xAxisSelectedCoordinate:(double)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  v7 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKJulianIndexedSevenDayQuantitySeries xAxisSelectedCoordinate:blockCoordinate:chartRect:];
  }

  v8 = v7;
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

  if (v15 <= a3)
  {
    v17 = a3;
  }

  else
  {
    v17 = v15;
  }

  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  return v18;
}

- (BOOL)blockCoordinate:(id)a3 lessThan:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKJulianIndexedSevenDayQuantitySeries blockCoordinate:lessThan:];
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
    [HKJulianIndexedSevenDayQuantitySeries blockCoordinate:greaterThan:];
  }

  v7 = v6;
  [v5 start];
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