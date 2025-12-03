@interface HKSleepPeriodDaySeries
- (double)barWidthForVisibleBarCount:(int64_t)count axisRect:(CGRect)rect minimumSpacing:(double)spacing;
- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis;
- (void)addGoalLinePathsToCoordinate:(id)coordinate upperGoalLinePath:(id)path upperGoalMarkerPoints:(id)points previousUpperGoalLinePoint:(id)point lowerGoalLinePath:(id)linePath lowerGoalMarkerPoints:(id)markerPoints previousLowerGoalLinePoint:(id)linePoint axisRect:(CGRect)self0;
@end

@implementation HKSleepPeriodDaySeries

- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis
{
  axisCopy = axis;
  yAxisCopy = yAxis;
  chartPoints = [block chartPoints];
  if (!chartPoints)
  {
    [HKSleepPeriodDaySeries coordinatesForBlock:a2 blockPath:self xAxis:? yAxis:?];
  }

  transform = [axisCopy transform];
  transform2 = [yAxisCopy transform];

  v16 = objc_opt_new();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __68__HKSleepPeriodDaySeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke;
  v24[3] = &unk_1E81BA8E8;
  v25 = transform2;
  v26 = transform;
  v27 = v16;
  v17 = v16;
  v18 = transform;
  v19 = transform2;
  [chartPoints enumerateObjectsUsingBlock:v24];
  v22 = *&path->index;
  resolution = path->resolution;
  v20 = [HKGraphSeriesBlockCoordinateList coordinateListWithCoordinates:v17 blockPath:&v22];

  return v20;
}

void __68__HKSleepPeriodDaySeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke(uint64_t a1, void *a2)
{
  v35 = a2;
  v3 = [v35 yValue];

  if (v3)
  {
    v4 = [v35 upperGoal];

    if (v4)
    {
      v5 = MEMORY[0x1E696AD98];
      v6 = *(a1 + 32);
      v7 = [v35 upperGoal];
      [v6 coordinateForValue:v7];
      v4 = [v5 numberWithDouble:?];
    }

    v8 = [v35 lowerGoal];

    if (v8)
    {
      v9 = MEMORY[0x1E696AD98];
      v10 = *(a1 + 32);
      v11 = [v35 lowerGoal];
      [v10 coordinateForValue:v11];
      v8 = [v9 numberWithDouble:?];
    }

    v12 = [v35 userInfo];
    v13 = [v12 copyWithAnnotationOptions:2];
    v14 = *(a1 + 40);
    v15 = [v35 xValue];
    v16 = [v15 dateByAddingTimeInterval:21600.0];
    [v14 coordinateForValue:v16];
    v18 = v17;

    v19 = [HKSleepPeriodCoordinate alloc];
    v20 = [v35 asleepOffsets];
    v21 = [v35 allYValues];
    v22 = [v35 highlighted];
    v23 = [(HKSleepPeriodCoordinate *)v19 initWithXValue:v20 asleepYValues:MEMORY[0x1E695E0F0] inBedYValues:v21 yValues:v4 upperGoalYValue:v8 lowerGoalYValue:v22 highlighted:v18 userInfo:v13];

    v24 = [v12 copyWithAnnotationOptions:1];
    v25 = *(a1 + 40);
    v26 = [v35 xValue];
    v27 = [v26 dateByAddingTimeInterval:-21600.0];
    [v25 coordinateForValue:v27];
    v29 = v28;

    v30 = [HKSleepPeriodCoordinate alloc];
    v31 = [v35 inBedOffsets];
    v32 = [v35 allYValues];
    v33 = [v35 highlighted];
    v34 = [(HKSleepPeriodCoordinate *)v30 initWithXValue:MEMORY[0x1E695E0F0] asleepYValues:v31 inBedYValues:v32 yValues:v4 upperGoalYValue:v8 lowerGoalYValue:v33 highlighted:v29 userInfo:v24];

    [*(a1 + 48) addObject:v23];
    [*(a1 + 48) addObject:v34];
  }
}

- (double)barWidthForVisibleBarCount:(int64_t)count axisRect:(CGRect)rect minimumSpacing:(double)spacing
{
  v5 = rect.size.width / count;
  spacingCopy = v5 * 0.5;
  if (v5 * 0.5 <= spacing)
  {
    spacingCopy = spacing;
  }

  return round(v5 - spacingCopy);
}

- (void)addGoalLinePathsToCoordinate:(id)coordinate upperGoalLinePath:(id)path upperGoalMarkerPoints:(id)points previousUpperGoalLinePoint:(id)point lowerGoalLinePath:(id)linePath lowerGoalMarkerPoints:(id)markerPoints previousLowerGoalLinePoint:(id)linePoint axisRect:(CGRect)self0
{
  width = rect.size.width;
  coordinateCopy = coordinate;
  pathCopy = path;
  pointsCopy = points;
  linePathCopy = linePath;
  markerPointsCopy = markerPoints;
  v19 = width * 0.25;
  upperGoalYValue = [coordinateCopy upperGoalYValue];

  if (upperGoalYValue)
  {
    [coordinateCopy startXValue];
    v22 = v21 - v19;
    upperGoalYValue2 = [coordinateCopy upperGoalYValue];
    [upperGoalYValue2 doubleValue];
    [pathCopy moveToPoint:{v22, v24}];

    [coordinateCopy startXValue];
    v26 = v19 + v25;
    upperGoalYValue3 = [coordinateCopy upperGoalYValue];
    [upperGoalYValue3 doubleValue];
    [pathCopy addLineToPoint:{v26, v28}];

    v29 = MEMORY[0x1E696B098];
    [coordinateCopy startXValue];
    v31 = v30;
    upperGoalYValue4 = [coordinateCopy upperGoalYValue];
    [upperGoalYValue4 doubleValue];
    v34 = [v29 valueWithCGPoint:{v31, v33}];
    [pointsCopy addObject:v34];
  }

  lowerGoalYValue = [coordinateCopy lowerGoalYValue];

  if (lowerGoalYValue)
  {
    [coordinateCopy startXValue];
    v37 = v36 - v19;
    lowerGoalYValue2 = [coordinateCopy lowerGoalYValue];
    [lowerGoalYValue2 doubleValue];
    [linePathCopy moveToPoint:{v37, v39}];

    [coordinateCopy startXValue];
    v41 = v19 + v40;
    lowerGoalYValue3 = [coordinateCopy lowerGoalYValue];
    [lowerGoalYValue3 doubleValue];
    [linePathCopy addLineToPoint:{v41, v43}];

    v44 = MEMORY[0x1E696B098];
    [coordinateCopy startXValue];
    v46 = v45;
    lowerGoalYValue4 = [coordinateCopy lowerGoalYValue];
    [lowerGoalYValue4 doubleValue];
    v49 = [v44 valueWithCGPoint:{v46, v48}];
    [markerPointsCopy addObject:v49];
  }
}

- (void)coordinatesForBlock:(uint64_t)a1 blockPath:(uint64_t)a2 xAxis:yAxis:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKSleepPeriodDaySeries.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"points != nil"}];
}

@end