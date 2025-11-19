@interface HKSleepPeriodDaySeries
- (double)barWidthForVisibleBarCount:(int64_t)a3 axisRect:(CGRect)a4 minimumSpacing:(double)a5;
- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6;
- (void)addGoalLinePathsToCoordinate:(id)a3 upperGoalLinePath:(id)a4 upperGoalMarkerPoints:(id)a5 previousUpperGoalLinePoint:(id)a6 lowerGoalLinePath:(id)a7 lowerGoalMarkerPoints:(id)a8 previousLowerGoalLinePoint:(id)a9 axisRect:(CGRect)a10;
@end

@implementation HKSleepPeriodDaySeries

- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6
{
  v11 = a5;
  v12 = a6;
  v13 = [a3 chartPoints];
  if (!v13)
  {
    [HKSleepPeriodDaySeries coordinatesForBlock:a2 blockPath:self xAxis:? yAxis:?];
  }

  v14 = [v11 transform];
  v15 = [v12 transform];

  v16 = objc_opt_new();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __68__HKSleepPeriodDaySeries_coordinatesForBlock_blockPath_xAxis_yAxis___block_invoke;
  v24[3] = &unk_1E81BA8E8;
  v25 = v15;
  v26 = v14;
  v27 = v16;
  v17 = v16;
  v18 = v14;
  v19 = v15;
  [v13 enumerateObjectsUsingBlock:v24];
  v22 = *&a4->index;
  resolution = a4->resolution;
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

- (double)barWidthForVisibleBarCount:(int64_t)a3 axisRect:(CGRect)a4 minimumSpacing:(double)a5
{
  v5 = a4.size.width / a3;
  v6 = v5 * 0.5;
  if (v5 * 0.5 <= a5)
  {
    v6 = a5;
  }

  return round(v5 - v6);
}

- (void)addGoalLinePathsToCoordinate:(id)a3 upperGoalLinePath:(id)a4 upperGoalMarkerPoints:(id)a5 previousUpperGoalLinePoint:(id)a6 lowerGoalLinePath:(id)a7 lowerGoalMarkerPoints:(id)a8 previousLowerGoalLinePoint:(id)a9 axisRect:(CGRect)a10
{
  width = a10.size.width;
  v50 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = width * 0.25;
  v20 = [v50 upperGoalYValue];

  if (v20)
  {
    [v50 startXValue];
    v22 = v21 - v19;
    v23 = [v50 upperGoalYValue];
    [v23 doubleValue];
    [v15 moveToPoint:{v22, v24}];

    [v50 startXValue];
    v26 = v19 + v25;
    v27 = [v50 upperGoalYValue];
    [v27 doubleValue];
    [v15 addLineToPoint:{v26, v28}];

    v29 = MEMORY[0x1E696B098];
    [v50 startXValue];
    v31 = v30;
    v32 = [v50 upperGoalYValue];
    [v32 doubleValue];
    v34 = [v29 valueWithCGPoint:{v31, v33}];
    [v16 addObject:v34];
  }

  v35 = [v50 lowerGoalYValue];

  if (v35)
  {
    [v50 startXValue];
    v37 = v36 - v19;
    v38 = [v50 lowerGoalYValue];
    [v38 doubleValue];
    [v17 moveToPoint:{v37, v39}];

    [v50 startXValue];
    v41 = v19 + v40;
    v42 = [v50 lowerGoalYValue];
    [v42 doubleValue];
    [v17 addLineToPoint:{v41, v43}];

    v44 = MEMORY[0x1E696B098];
    [v50 startXValue];
    v46 = v45;
    v47 = [v50 lowerGoalYValue];
    [v47 doubleValue];
    v49 = [v44 valueWithCGPoint:{v46, v48}];
    [v18 addObject:v49];
  }
}

- (void)coordinatesForBlock:(uint64_t)a1 blockPath:(uint64_t)a2 xAxis:yAxis:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKSleepPeriodDaySeries.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"points != nil"}];
}

@end