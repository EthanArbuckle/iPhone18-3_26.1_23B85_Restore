@interface HKSleepStageDurationChartPoint
+ (id)chartPointsForInformationProviders:(id)providers context:(id)context;
- (id)allYValues;
@end

@implementation HKSleepStageDurationChartPoint

- (id)allYValues
{
  v9[4] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_awakeValue];
  v9[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_asleepRemValue];
  v9[1] = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_asleepDeepValue];
  v9[2] = v5;
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_asleepCoreValue];
  v9[3] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  return v7;
}

+ (id)chartPointsForInformationProviders:(id)providers context:(id)context
{
  v40 = *MEMORY[0x1E69E9840];
  providersCopy = providers;
  contextCopy = context;
  v7 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = providersCopy;
  v8 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v36;
    v11 = 0x1E81B2000uLL;
    v12 = 0x1E81B2000uLL;
    v33 = contextCopy;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v35 + 1) + 8 * i);
        v15 = objc_alloc_init(*(v11 + 3720));
        v16 = [*(v12 + 3744) standardXValueForChartPointInfoProvider:v14];
        [v15 setXValue:v16];

        [v14 awakeDuration];
        [v15 setAwakeValue:?];
        [v14 remSleepDuration];
        [v15 setAsleepRemValue:?];
        [v14 deepSleepDuration];
        [v15 setAsleepDeepValue:?];
        [v14 coreSleepDuration];
        [v15 setAsleepCoreValue:?];
        [v15 awakeValue];
        v18 = v17;
        [v15 asleepRemValue];
        v20 = v18 + v19;
        [v15 asleepDeepValue];
        v22 = v20 + v21;
        [v15 asleepCoreValue];
        [v15 setTotalDurationValue:v22 + v23];
        if ([contextCopy timeScope] == 6)
        {
          allYValues = [v15 allYValues];
          [allYValues valueForKeyPath:@"@max.doubleValue"];
          v25 = v9;
          v26 = v10;
          v27 = v7;
          v28 = v12;
          v30 = v29 = v11;
          [v30 doubleValue];
          [v15 setMaxDurationValue:?];

          v11 = v29;
          v12 = v28;
          v7 = v27;
          v10 = v26;
          v9 = v25;
          contextCopy = v33;
        }

        else
        {
          [v15 totalDurationValue];
          [v15 setMaxDurationValue:?];
        }

        v31 = -[HKSleepChartPointUserInfo initWithSeriesType:chartPointInfoProvider:]([HKSleepChartPointUserInfo alloc], "initWithSeriesType:chartPointInfoProvider:", [contextCopy chartType], v14);
        [(HKSleepChartPointUserInfo *)v31 setCurrentValueViewOptions:[(HKSleepChartPointUserInfo *)v31 currentValueViewOptions]| 0x40];
        [v15 setUserInfo:v31];
        [v7 addObject:v15];
      }

      v9 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v9);
  }

  return v7;
}

@end