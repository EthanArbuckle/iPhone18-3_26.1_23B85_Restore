@interface HKSleepStageDurationDaySeries
- (HKSleepStageDurationDaySeries)init;
- (id)_buildSleepDurationCoordinateWithDurationValue:(double)value sleepValue:(int64_t)sleepValue barLocationIndex:(int64_t)index startOfCalendarDay:(id)day xAxisTransform:(id)transform yAxisTransform:(id)axisTransform userInfo:(id)info;
- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis;
@end

@implementation HKSleepStageDurationDaySeries

- (HKSleepStageDurationDaySeries)init
{
  v6.receiver = self;
  v6.super_class = HKSleepStageDurationDaySeries;
  v2 = [(HKSleepStageDurationSeries *)&v6 init];
  if (v2)
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    currentCalendar = v2->_currentCalendar;
    v2->_currentCalendar = currentCalendar;
  }

  return v2;
}

- (id)coordinatesForBlock:(id)block blockPath:(HKGraphSeriesDataBlockPath *)path xAxis:(id)axis yAxis:(id)yAxis
{
  v40 = *MEMORY[0x1E69E9840];
  axisCopy = axis;
  yAxisCopy = yAxis;
  chartPoints = [block chartPoints];
  if (!chartPoints)
  {
    [HKSleepStageDurationDaySeries coordinatesForBlock:a2 blockPath:self xAxis:? yAxis:?];
  }

  v24 = axisCopy;
  transform = [axisCopy transform];
  transform2 = [yAxisCopy transform];
  array = [MEMORY[0x1E695DF70] array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = chartPoints;
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
        currentCalendar = [(HKSleepStageDurationDaySeries *)self currentCalendar];
        xValue = [v13 xValue];
        v16 = [currentCalendar startOfDayForDate:xValue];

        userInfo = [v13 userInfo];
        [v13 awakeValue];
        v32 = [(HKSleepStageDurationDaySeries *)self _buildSleepDurationCoordinateWithDurationValue:2 sleepValue:0 barLocationIndex:v16 startOfCalendarDay:transform xAxisTransform:transform2 yAxisTransform:userInfo userInfo:?];
        [array addObject:v32];
        [v13 asleepRemValue];
        v18 = [(HKSleepStageDurationDaySeries *)self _buildSleepDurationCoordinateWithDurationValue:5 sleepValue:1 barLocationIndex:v16 startOfCalendarDay:transform xAxisTransform:transform2 yAxisTransform:userInfo userInfo:?];
        [array addObject:v18];
        [v13 asleepCoreValue];
        v19 = [(HKSleepStageDurationDaySeries *)self _buildSleepDurationCoordinateWithDurationValue:3 sleepValue:2 barLocationIndex:v16 startOfCalendarDay:transform xAxisTransform:transform2 yAxisTransform:userInfo userInfo:?];
        [array addObject:v19];
        [v13 asleepDeepValue];
        v20 = [(HKSleepStageDurationDaySeries *)self _buildSleepDurationCoordinateWithDurationValue:4 sleepValue:3 barLocationIndex:v16 startOfCalendarDay:transform xAxisTransform:transform2 yAxisTransform:userInfo userInfo:?];
        [array addObject:v20];
      }

      v31 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v31);
  }

  v33 = *&path->index;
  resolution = path->resolution;
  v21 = [HKGraphSeriesBlockCoordinateList coordinateListWithCoordinates:array blockPath:&v33];

  return v21;
}

- (id)_buildSleepDurationCoordinateWithDurationValue:(double)value sleepValue:(int64_t)sleepValue barLocationIndex:(int64_t)index startOfCalendarDay:(id)day xAxisTransform:(id)transform yAxisTransform:(id)axisTransform userInfo:(id)info
{
  v40[2] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  axisTransformCopy = axisTransform;
  transformCopy = transform;
  dayCopy = day;
  currentCalendar = [(HKSleepStageDurationDaySeries *)self currentCalendar];
  v21 = [HKCategoricalDateAxis datePositionForCategoryIndex:index categoryCount:4 startDate:dayCopy calendar:currentCalendar];

  [transformCopy coordinateForValue:v21];
  v23 = v22;

  [axisTransformCopy coordinateForValue:&unk_1F4384348];
  v25 = v24;
  v26 = [MEMORY[0x1E696AD98] numberWithDouble:value];
  [axisTransformCopy coordinateForValue:v26];
  v28 = v27;

  v29 = [MEMORY[0x1E696B098] valueWithCGPoint:{v23, v25}];
  v40[0] = v29;
  v30 = [MEMORY[0x1E696B098] valueWithCGPoint:{v23, v28}];
  v40[1] = v30;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
  v32 = [v31 mutableCopy];

  highlightedSleepStage = [(HKSleepStageDurationSeries *)self highlightedSleepStage];
  intValue = [highlightedSleepStage intValue];

  if (intValue != sleepValue)
  {
    v35 = [MEMORY[0x1E696B098] valueWithCGPoint:{v23, v25}];
    [v32 insertObject:v35 atIndex:1];
  }

  v36 = [MEMORY[0x1E696AD98] numberWithInteger:sleepValue];
  v37 = [infoCopy copyWithAnnotationOptions:HKSleepChartPointFormatterOptionsForSleepAnalysis(v36)];

  v38 = [[HKSleepDurationCoordinate alloc] initWithStackPoints:v32 goalLineYValue:0 highlighted:0 userInfo:v37];

  return v38;
}

- (void)coordinatesForBlock:(uint64_t)a1 blockPath:(uint64_t)a2 xAxis:yAxis:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKSleepStageDurationDaySeries.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"points != nil"}];
}

@end