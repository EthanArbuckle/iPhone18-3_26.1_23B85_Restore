@interface HKSleepComparisonDaySeries
- (CGPoint)renderPositionForLabelLocation:(id)location rect:(CGRect)rect zoomScale:(double)scale contentOffset:(CGPoint)offset constantOffset:(double)constantOffset isHorizontal:(BOOL)horizontal optionalOffset:(CGPoint)optionalOffset;
- (CGSize)cornerRadii;
- (CGSize)cornerRadiiStorage;
- (HKSleepComparisonDaySeries)init;
- (NSArray)defaultFillStyles;
- (double)distanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (double)xAxisDistanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect;
- (double)xAxisSelectedCoordinate:(double)coordinate blockCoordinate:(id)blockCoordinate chartRect:(CGRect)rect;
- (id)cacheKeysForModelRange:(id)range zoomScale:(double)scale;
- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis;
- (id)findAxisLabelsInModelRange:(id)range zoomScale:(double)scale;
- (void)_drawPaths:(id)paths withFillStyles:(id)styles axisRect:(CGRect)rect context:(CGContext *)context;
- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate;
- (void)setCornerRadii:(CGSize)radii;
- (void)setDefaultFillStyles:(id)styles;
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
  seriesMutableStateLock = [(HKSleepComparisonDaySeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  width = self->_cornerRadiiStorage.width;
  height = self->_cornerRadiiStorage.height;
  seriesMutableStateLock2 = [(HKSleepComparisonDaySeries *)self seriesMutableStateLock];
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
  seriesMutableStateLock = [(HKSleepComparisonDaySeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  self->_cornerRadiiStorage.width = width;
  self->_cornerRadiiStorage.height = height;
  seriesMutableStateLock2 = [(HKSleepComparisonDaySeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (NSArray)defaultFillStyles
{
  seriesMutableStateLock = [(HKSleepComparisonDaySeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v4 = self->_defaultFillStylesStorage;
  seriesMutableStateLock2 = [(HKSleepComparisonDaySeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];

  return v4;
}

- (void)setDefaultFillStyles:(id)styles
{
  stylesCopy = styles;
  seriesMutableStateLock = [(HKSleepComparisonDaySeries *)self seriesMutableStateLock];
  [seriesMutableStateLock lock];

  v6 = [stylesCopy copy];
  defaultFillStylesStorage = self->_defaultFillStylesStorage;
  self->_defaultFillStylesStorage = v6;

  seriesMutableStateLock2 = [(HKSleepComparisonDaySeries *)self seriesMutableStateLock];
  [seriesMutableStateLock2 unlock];
}

- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis
{
  axisCopy = axis;
  chartPoints = [block chartPoints];
  if (!chartPoints)
  {
    [HKSleepComparisonDaySeries coordinatesForBlock:a2 blockPath:self xAxis:? yAxis:?];
  }

  transform = [axisCopy transform];
  v13 = objc_opt_new();
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __72__HKSleepComparisonDaySeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke;
  v20[3] = &unk_1E81B92B8;
  v21 = transform;
  v22 = v13;
  v14 = v13;
  v15 = transform;
  [chartPoints enumerateObjectsUsingBlock:v20];
  v18 = *&path->index;
  resolution = path->resolution;
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

- (void)drawSeriesWithBlockCoordinates:(id)coordinates axisRect:(CGRect)rect zoomLevelConfiguration:(id)configuration pointTransform:(CGAffineTransform *)transform renderContext:(CGContext *)context secondaryRenderContext:(id)renderContext seriesRenderingDelegate:(id)delegate
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v35[2] = *MEMORY[0x1E69E9840];
  v16 = MEMORY[0x1E69DC728];
  coordinatesCopy = coordinates;
  bezierPath = [v16 bezierPath];
  v35[0] = bezierPath;
  bezierPath2 = [MEMORY[0x1E69DC728] bezierPath];
  v35[1] = bezierPath2;
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
  selfCopy = self;
  v22 = *&transform->c;
  v25 = *&transform->a;
  v26 = v22;
  v27 = *&transform->tx;
  v23 = v21;
  [coordinatesCopy enumerateCoordinatesWithTransform:&v25 roundToViewScale:1 block:v28];

  v24 = [(HKSleepComparisonDaySeries *)self defaultFillStyles:v25];
  [(HKSleepComparisonDaySeries *)self _drawPaths:v23 withFillStyles:v24 axisRect:context context:x, y, width, height];
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

- (void)_drawPaths:(id)paths withFillStyles:(id)styles axisRect:(CGRect)rect context:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  pathsCopy = paths;
  stylesCopy = styles;
  if ([pathsCopy count])
  {
    v14 = 0;
    do
    {
      v15 = [pathsCopy objectAtIndexedSubscript:v14];
      if (([v15 isEmpty] & 1) == 0)
      {
        v16 = [stylesCopy objectAtIndexedSubscript:v14];
        if (v16)
        {
          cGPath = [v15 CGPath];
          [(HKGraphSeries *)self alpha];
          [v16 renderPath:cGPath context:context axisRect:x alpha:{y, width, height, v18}];
        }
      }

      ++v14;
    }

    while (v14 < [pathsCopy count]);
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
  [(HKSleepComparisonDaySeries *)self xAxisDistanceFromPoint:coordinateCopy blockCoordinate:v10 chartRect:v9, x, y, width, height];
  v14 = v13;
  [(HKSleepComparisonDaySeries *)self yAxisDifferenceToPoint:coordinateCopy blockCoordinate:v10 chartRect:v9, x, y, width, height];
  v16 = v15;

  return sqrt(v16 * v16 + v14 * v14);
}

- (double)xAxisSelectedCoordinate:(double)coordinate blockCoordinate:(id)blockCoordinate chartRect:(CGRect)rect
{
  blockCoordinateCopy = blockCoordinate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKSleepComparisonDaySeries xAxisSelectedCoordinate:a2 blockCoordinate:self chartRect:?];
  }

  v9 = blockCoordinateCopy;
  [v9 startXValue];
  if (v10 <= coordinate)
  {
    coordinateCopy = coordinate;
  }

  else
  {
    coordinateCopy = v10;
  }

  [v9 endXValue];
  v13 = v12;

  if (coordinateCopy < v13)
  {
    v13 = coordinateCopy;
  }

  return v13;
}

- (double)xAxisDistanceFromPoint:(CGPoint)point blockCoordinate:(id)coordinate chartRect:(CGRect)rect
{
  x = point.x;
  coordinateCopy = coordinate;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [HKSleepComparisonDaySeries xAxisDistanceFromPoint:a2 blockCoordinate:self chartRect:?];
  }

  v9 = coordinateCopy;
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

- (id)cacheKeysForModelRange:(id)range zoomScale:(double)scale
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = [(HKSleepComparisonDaySeries *)self visibleValueRange:range];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  return v5;
}

- (id)findAxisLabelsInModelRange:(id)range zoomScale:(double)scale
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

- (CGPoint)renderPositionForLabelLocation:(id)location rect:(CGRect)rect zoomScale:(double)scale contentOffset:(CGPoint)offset constantOffset:(double)constantOffset isHorizontal:(BOOL)horizontal optionalOffset:(CGPoint)optionalOffset
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