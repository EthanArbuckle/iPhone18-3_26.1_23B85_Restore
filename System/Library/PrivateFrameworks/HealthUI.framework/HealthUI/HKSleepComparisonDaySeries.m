@interface HKSleepComparisonDaySeries
- (CGPoint)renderPositionForLabelLocation:(id)a3 rect:(CGRect)a4 zoomScale:(double)a5 contentOffset:(CGPoint)a6 constantOffset:(double)a7 isHorizontal:(BOOL)a8 optionalOffset:(CGPoint)a9;
- (CGSize)cornerRadii;
- (CGSize)cornerRadiiStorage;
- (HKSleepComparisonDaySeries)init;
- (NSArray)defaultFillStyles;
- (double)distanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (double)xAxisDistanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (double)xAxisSelectedCoordinate:(double)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5;
- (id)cacheKeysForModelRange:(id)a3 zoomScale:(double)a4;
- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6;
- (id)findAxisLabelsInModelRange:(id)a3 zoomScale:(double)a4;
- (void)_drawPaths:(id)a3 withFillStyles:(id)a4 axisRect:(CGRect)a5 context:(CGContext *)a6;
- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9;
- (void)setCornerRadii:(CGSize)a3;
- (void)setDefaultFillStyles:(id)a3;
@end

@implementation HKSleepComparisonDaySeries

- (HKSleepComparisonDaySeries)init
{
  v8.receiver = self;
  v8.super_class = HKSleepComparisonDaySeries;
  v2 = [(HKGraphSeries *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_cornerRadiiStorage.width = 0.0;
    v2->_cornerRadiiStorage.height = 0.0;
    defaultFillStylesStorage = v2->_defaultFillStylesStorage;
    v2->_defaultFillStylesStorage = MEMORY[0x1E695E0F0];

    v5 = objc_alloc_init(MEMORY[0x1E696AD10]);
    seriesMutableStateLock = v3->_seriesMutableStateLock;
    v3->_seriesMutableStateLock = v5;

    [(NSLock *)v3->_seriesMutableStateLock setName:@"HKSleepComparisonDaySeriesLock"];
  }

  return v3;
}

- (CGSize)cornerRadii
{
  v3 = [(HKSleepComparisonDaySeries *)self seriesMutableStateLock];
  [v3 lock];

  width = self->_cornerRadiiStorage.width;
  height = self->_cornerRadiiStorage.height;
  v6 = [(HKSleepComparisonDaySeries *)self seriesMutableStateLock];
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
  v6 = [(HKSleepComparisonDaySeries *)self seriesMutableStateLock];
  [v6 lock];

  self->_cornerRadiiStorage.width = width;
  self->_cornerRadiiStorage.height = height;
  v7 = [(HKSleepComparisonDaySeries *)self seriesMutableStateLock];
  [v7 unlock];
}

- (NSArray)defaultFillStyles
{
  v3 = [(HKSleepComparisonDaySeries *)self seriesMutableStateLock];
  [v3 lock];

  v4 = self->_defaultFillStylesStorage;
  v5 = [(HKSleepComparisonDaySeries *)self seriesMutableStateLock];
  [v5 unlock];

  return v4;
}

- (void)setDefaultFillStyles:(id)a3
{
  v4 = a3;
  v5 = [(HKSleepComparisonDaySeries *)self seriesMutableStateLock];
  [v5 lock];

  v6 = [v4 copy];
  defaultFillStylesStorage = self->_defaultFillStylesStorage;
  self->_defaultFillStylesStorage = v6;

  v8 = [(HKSleepComparisonDaySeries *)self seriesMutableStateLock];
  [v8 unlock];
}

- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6
{
  v10 = a5;
  v11 = [a3 chartPoints];
  if (!v11)
  {
    [HKSleepComparisonDaySeries coordinatesForBlock:a2 blockPath:self xAxis:? yAxis:?];
  }

  v12 = [v10 transform];
  v13 = objc_opt_new();
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __72__HKSleepComparisonDaySeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke;
  v20[3] = &unk_1E81B92B8;
  v21 = v12;
  v22 = v13;
  v14 = v13;
  v15 = v12;
  [v11 enumerateObjectsUsingBlock:v20];
  v18 = *&a4->index;
  resolution = a4->resolution;
  v16 = [HKGraphSeriesBlockCoordinateList coordinateListWithCoordinates:v14 blockPath:&v18];

  return v16;
}

void __72__HKSleepComparisonDaySeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = [v18 yValue];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v18 startDate];
    [v4 coordinateForValue:v5];
    v7 = v6;

    v8 = *(a1 + 32);
    v9 = [v18 endDate];
    [v8 coordinateForValue:v9];
    v11 = v10;

    v12 = *(a1 + 40);
    v13 = [HKSleepComparisonDayCoordinate alloc];
    v14 = [v18 yValue];
    v15 = [v14 intValue];
    v16 = [v18 userInfo];
    v17 = [(HKSleepComparisonDayCoordinate *)v13 initWithXValueStart:v15 xValueEnd:v16 sleepValue:v7 userInfo:v11];
    [v12 addObject:v17];
  }
}

- (void)drawSeriesWithBlockCoordinates:(id)a3 axisRect:(CGRect)a4 zoomLevelConfiguration:(id)a5 pointTransform:(CGAffineTransform *)a6 renderContext:(CGContext *)a7 secondaryRenderContext:(id)a8 seriesRenderingDelegate:(id)a9
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v35[2] = *MEMORY[0x1E69E9840];
  v16 = MEMORY[0x1E69DC728];
  v17 = a3;
  v18 = [v16 bezierPath];
  v35[0] = v18;
  v19 = [MEMORY[0x1E69DC728] bezierPath];
  v35[1] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  v21 = [v20 mutableCopy];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __169__HKSleepComparisonDaySeries_drawSeriesWithBlockCoordinates_axisRect_zoomLevelConfiguration_pointTransform_renderContext_secondaryRenderContext_seriesRenderingDelegate___block_invoke;
  v28[3] = &unk_1E81B92E0;
  v31 = x;
  v32 = y;
  v33 = width;
  v34 = height;
  v29 = v21;
  v30 = self;
  v22 = *&a6->c;
  v25 = *&a6->a;
  v26 = v22;
  v27 = *&a6->tx;
  v23 = v21;
  [v17 enumerateCoordinatesWithTransform:&v25 roundToViewScale:1 block:v28];

  v24 = [(HKSleepComparisonDaySeries *)self defaultFillStyles:v25];
  [(HKSleepComparisonDaySeries *)self _drawPaths:v23 withFillStyles:v24 axisRect:a7 context:x, y, width, height];
}

void __169__HKSleepComparisonDaySeries_drawSeriesWithBlockCoordinates_axisRect_zoomLevelConfiguration_pointTransform_renderContext_secondaryRenderContext_seriesRenderingDelegate___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 72);
  v4 = v3 * 0.3;
  v5 = *(a1 + 56) + (v3 - v3 * 0.3) * 0.5;
  v6 = a2;
  [v6 xValueStart];
  v8 = v7;
  [v6 xValueEnd];
  v10 = v9;
  [v6 xValueStart];
  v22.size.width = v10 - v11;
  v22.origin.x = v8;
  v22.origin.y = v5;
  v22.size.height = v4;
  v23 = CGRectStandardize(v22);
  x = v23.origin.x;
  y = v23.origin.y;
  width = v23.size.width;
  height = v23.size.height;
  v16 = [v6 sleepValue];

  v20 = [*(a1 + 32) objectAtIndexedSubscript:v16 != 0];
  [*(a1 + 40) cornerRadii];
  v19 = [HKBarSeries barSeriesRoundedRect:-1 byRoundingCorners:x cornerRadii:y, width, height, v17, v18];
  [v20 appendPath:v19];
}

- (void)_drawPaths:(id)a3 withFillStyles:(id)a4 axisRect:(CGRect)a5 context:(CGContext *)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v19 = a3;
  v13 = a4;
  if ([v19 count])
  {
    v14 = 0;
    do
    {
      v15 = [v19 objectAtIndexedSubscript:v14];
      if (([v15 isEmpty] & 1) == 0)
      {
        v16 = [v13 objectAtIndexedSubscript:v14];
        if (v16)
        {
          v17 = [v15 CGPath];
          [(HKGraphSeries *)self alpha];
          [v16 renderPath:v17 context:a6 axisRect:x alpha:{y, width, height, v18}];
        }
      }

      ++v14;
    }

    while (v14 < [v19 count]);
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
  [(HKSleepComparisonDaySeries *)self xAxisDistanceFromPoint:v12 blockCoordinate:v10 chartRect:v9, x, y, width, height];
  v14 = v13;
  [(HKSleepComparisonDaySeries *)self yAxisDifferenceToPoint:v12 blockCoordinate:v10 chartRect:v9, x, y, width, height];
  v16 = v15;

  return sqrt(v16 * v16 + v14 * v14);
}

- (double)xAxisSelectedCoordinate:(double)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKSleepComparisonDaySeries xAxisSelectedCoordinate:a2 blockCoordinate:self chartRect:?];
  }

  v9 = v8;
  [v9 startXValue];
  if (v10 <= a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = v10;
  }

  [v9 endXValue];
  v13 = v12;

  if (v11 < v13)
  {
    v13 = v11;
  }

  return v13;
}

- (double)xAxisDistanceFromPoint:(CGPoint)a3 blockCoordinate:(id)a4 chartRect:(CGRect)a5
{
  x = a3.x;
  v8 = a4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKSleepComparisonDaySeries xAxisDistanceFromPoint:a2 blockCoordinate:self chartRect:?];
  }

  v9 = v8;
  [v9 startXValue];
  v11 = v10 - x;
  [v9 endXValue];
  v13 = v12;

  v14 = fmax(v11, 0.0);
  if (x - v13 <= 0.0)
  {
    v15 = v14;
  }

  else
  {
    v15 = x - v13;
  }

  return v15;
}

- (id)cacheKeysForModelRange:(id)a3 zoomScale:(double)a4
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = [(HKSleepComparisonDaySeries *)self visibleValueRange:a3];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  return v5;
}

- (id)findAxisLabelsInModelRange:(id)a3 zoomScale:(double)a4
{
  v8[2] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(HKAxisLabel);
  [(HKAxisLabel *)v4 setText:&stru_1F42FFBE0];
  [(HKAxisLabel *)v4 setLocation:&unk_1F43849A0];
  [(HKAxisLabel *)v4 setLabelType:1];
  v5 = objc_alloc_init(HKAxisLabel);
  [(HKAxisLabel *)v5 setText:&stru_1F42FFBE0];
  [(HKAxisLabel *)v5 setLocation:&unk_1F43849B0];
  [(HKAxisLabel *)v5 setLabelType:1];
  v8[0] = v4;
  v8[1] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];

  return v6;
}

- (CGPoint)renderPositionForLabelLocation:(id)a3 rect:(CGRect)a4 zoomScale:(double)a5 contentOffset:(CGPoint)a6 constantOffset:(double)a7 isHorizontal:(BOOL)a8 optionalOffset:(CGPoint)a9
{
  v9 = *MEMORY[0x1E695EFF8];
  v10 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGSize)cornerRadiiStorage
{
  width = self->_cornerRadiiStorage.width;
  height = self->_cornerRadiiStorage.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)coordinatesForBlock:(uint64_t)a1 blockPath:(uint64_t)a2 xAxis:yAxis:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKSleepComparisonDaySeries.m" lineNumber:153 description:{@"Invalid parameter not satisfying: %@", @"points != nil"}];
}

- (void)xAxisSelectedCoordinate:(uint64_t)a1 blockCoordinate:(uint64_t)a2 chartRect:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKSleepComparisonDaySeries.m" lineNumber:251 description:@"xAxisSelectedCoordinate type class failure"];
}

- (void)xAxisDistanceFromPoint:(uint64_t)a1 blockCoordinate:(uint64_t)a2 chartRect:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKSleepComparisonDaySeries.m" lineNumber:261 description:@"xAxisDistanceFromPoint type class failure"];
}

@end