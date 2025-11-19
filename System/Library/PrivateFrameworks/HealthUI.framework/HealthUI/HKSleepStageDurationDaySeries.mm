@interface HKSleepStageDurationDaySeries
- (HKSleepStageDurationDaySeries)init;
- (id)_buildSleepDurationCoordinateWithDurationValue:(double)a3 sleepValue:(int64_t)a4 barLocationIndex:(int64_t)a5 startOfCalendarDay:(id)a6 xAxisTransform:(id)a7 yAxisTransform:(id)a8 userInfo:(id)a9;
- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6;
@end

@implementation HKSleepStageDurationDaySeries

- (HKSleepStageDurationDaySeries)init
{
  v6.receiver = self;
  v6.super_class = HKSleepStageDurationDaySeries;
  v2 = [(HKSleepStageDurationSeries *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DEE8] currentCalendar];
    currentCalendar = v2->_currentCalendar;
    v2->_currentCalendar = v3;
  }

  return v2;
}

- (id)coordinatesForBlock:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4 xAxis:(id)a5 yAxis:(id)a6
{
  v40 = *MEMORY[0x1E69E9840];
  v9 = a5;
  v10 = a6;
  v11 = [a3 chartPoints];
  if (!v11)
  {
    [HKSleepStageDurationDaySeries coordinatesForBlock:a2 blockPath:self xAxis:? yAxis:?];
  }

  v24 = v9;
  v30 = [v9 transform];
  v29 = [v10 transform];
  v28 = [MEMORY[0x1E695DF70] array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v11;
  v31 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v31)
  {
    v26 = *v36;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v36 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v35 + 1) + 8 * i);
        v14 = [(HKSleepStageDurationDaySeries *)self currentCalendar];
        v15 = [v13 xValue];
        v16 = [v14 startOfDayForDate:v15];

        v17 = [v13 userInfo];
        [v13 awakeValue];
        v32 = [(HKSleepStageDurationDaySeries *)self _buildSleepDurationCoordinateWithDurationValue:2 sleepValue:0 barLocationIndex:v16 startOfCalendarDay:v30 xAxisTransform:v29 yAxisTransform:v17 userInfo:?];
        [v28 addObject:v32];
        [v13 asleepRemValue];
        v18 = [(HKSleepStageDurationDaySeries *)self _buildSleepDurationCoordinateWithDurationValue:5 sleepValue:1 barLocationIndex:v16 startOfCalendarDay:v30 xAxisTransform:v29 yAxisTransform:v17 userInfo:?];
        [v28 addObject:v18];
        [v13 asleepCoreValue];
        v19 = [(HKSleepStageDurationDaySeries *)self _buildSleepDurationCoordinateWithDurationValue:3 sleepValue:2 barLocationIndex:v16 startOfCalendarDay:v30 xAxisTransform:v29 yAxisTransform:v17 userInfo:?];
        [v28 addObject:v19];
        [v13 asleepDeepValue];
        v20 = [(HKSleepStageDurationDaySeries *)self _buildSleepDurationCoordinateWithDurationValue:4 sleepValue:3 barLocationIndex:v16 startOfCalendarDay:v30 xAxisTransform:v29 yAxisTransform:v17 userInfo:?];
        [v28 addObject:v20];
      }

      v31 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v31);
  }

  v33 = *&a4->index;
  resolution = a4->resolution;
  v21 = [HKGraphSeriesBlockCoordinateList coordinateListWithCoordinates:v28 blockPath:&v33];

  return v21;
}

- (id)_buildSleepDurationCoordinateWithDurationValue:(double)a3 sleepValue:(int64_t)a4 barLocationIndex:(int64_t)a5 startOfCalendarDay:(id)a6 xAxisTransform:(id)a7 yAxisTransform:(id)a8 userInfo:(id)a9
{
  v40[2] = *MEMORY[0x1E69E9840];
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = [(HKSleepStageDurationDaySeries *)self currentCalendar];
  v21 = [HKCategoricalDateAxis datePositionForCategoryIndex:a5 categoryCount:4 startDate:v19 calendar:v20];

  [v18 coordinateForValue:v21];
  v23 = v22;

  [v17 coordinateForValue:&unk_1F4384348];
  v25 = v24;
  v26 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v17 coordinateForValue:v26];
  v28 = v27;

  v29 = [MEMORY[0x1E696B098] valueWithCGPoint:{v23, v25}];
  v40[0] = v29;
  v30 = [MEMORY[0x1E696B098] valueWithCGPoint:{v23, v28}];
  v40[1] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
  v32 = [v31 mutableCopy];

  v33 = [(HKSleepStageDurationSeries *)self highlightedSleepStage];
  v34 = [v33 intValue];

  if (v34 != a4)
  {
    v35 = [MEMORY[0x1E696B098] valueWithCGPoint:{v23, v25}];
    [v32 insertObject:v35 atIndex:1];
  }

  v36 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v37 = [v16 copyWithAnnotationOptions:HKSleepChartPointFormatterOptionsForSleepAnalysis(v36)];

  v38 = [[HKSleepDurationCoordinate alloc] initWithStackPoints:v32 goalLineYValue:0 highlighted:0 userInfo:v37];

  return v38;
}

- (void)coordinatesForBlock:(uint64_t)a1 blockPath:(uint64_t)a2 xAxis:yAxis:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKSleepStageDurationDaySeries.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"points != nil"}];
}

@end