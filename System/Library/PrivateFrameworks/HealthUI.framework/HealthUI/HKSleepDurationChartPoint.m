@interface HKSleepDurationChartPoint
+ (id)chartPointsForInformationProviders:(id)a3 context:(id)a4;
- (id)allYValues;
- (id)maxYValue;
@end

@implementation HKSleepDurationChartPoint

- (id)maxYValue
{
  if (self->_asleepValue >= self->_inBedValue)
  {
    asleepValue = self->_asleepValue;
  }

  else
  {
    asleepValue = self->_inBedValue;
  }

  goalValue = self->_goalValue;
  v4 = MEMORY[0x1E696AD98];
  if (goalValue)
  {
    [(NSNumber *)goalValue doubleValue];
    if (asleepValue < v5)
    {
      asleepValue = v5;
    }
  }

  v6 = [v4 numberWithDouble:asleepValue];

  return v6;
}

- (id)allYValues
{
  v7[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_asleepValue];
  v7[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_inBedValue];
  v7[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  return v5;
}

+ (id)chartPointsForInformationProviders:(id)a3 context:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = objc_alloc_init(HKSleepDurationChartPoint);
        v14 = [HKSleepUtilities standardXValueForChartPointInfoProvider:v12];
        [(HKSleepDurationChartPoint *)v13 setXValue:v14];

        [v12 sleepDuration];
        [(HKSleepDurationChartPoint *)v13 setAsleepValue:?];
        [v12 inBedDuration];
        [(HKSleepDurationChartPoint *)v13 setInBedValue:?];
        v15 = [v12 sleepDurationGoalSeconds];
        [(HKSleepDurationChartPoint *)v13 setGoalValue:v15];

        v16 = -[HKSleepChartPointUserInfo initWithSeriesType:chartPointInfoProvider:]([HKSleepChartPointUserInfo alloc], "initWithSeriesType:chartPointInfoProvider:", [v6 chartType], v12);
        [(HKSleepDurationChartPoint *)v13 setUserInfo:v16];

        [v7 addObject:v13];
      }

      v9 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  return v7;
}

@end