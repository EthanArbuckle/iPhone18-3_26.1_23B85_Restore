@interface HMDLightProfileDataSource
- (NSDictionary)naturalLightingCurveResourceFileContent;
- (double)naturalLightingCurveUpdateAccessoryTimeDifferenceThreshold;
- (double)naturalLightingCurveUpdateInterval;
- (double)naturalLightingEnabledRetryInterval;
- (int64_t)naturalLightingEnabledMaxRetryCount;
- (int64_t)naturalLightingStartUpColorTemperature;
- (unint64_t)millisecondsElapsedSinceStartOfDayWithDate:(id)a3 timeZone:(id)a4;
- (void)dispatchAfterTimeInterval:(double)a3 queue:(id)a4 block:(id)a5;
@end

@implementation HMDLightProfileDataSource

- (int64_t)naturalLightingStartUpColorTemperature
{
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"naturalLightingStartUpColorTemperature"];
  v4 = [v3 numberValue];
  v5 = [v4 integerValue];

  return v5;
}

- (double)naturalLightingEnabledRetryInterval
{
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"naturalLightingEnabledRetryInterval"];
  v4 = [v3 numberValue];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (int64_t)naturalLightingEnabledMaxRetryCount
{
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"naturalLightingEnabledMaxRetryCount"];
  v4 = [v3 numberValue];
  v5 = [v4 integerValue];

  return v5;
}

- (void)dispatchAfterTimeInterval:(double)a3 queue:(id)a4 block:(id)a5
{
  v6 = (a3 * 1000000000.0);
  v7 = a5;
  queue = a4;
  v8 = dispatch_time(0, v6);
  dispatch_after(v8, queue, v7);
}

- (double)naturalLightingCurveUpdateAccessoryTimeDifferenceThreshold
{
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"naturalLightingCurveUpdateAccessoryTimeDifferenceThreshold"];
  v4 = [v3 numberValue];

  [v4 doubleValue];
  if (v5 >= 0.0)
  {
    [v4 doubleValue];
    v6 = v7;
  }

  else
  {
    v6 = 60.0;
  }

  return v6;
}

- (double)naturalLightingCurveUpdateInterval
{
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"naturalLightingCurveUpdateInterval"];
  v4 = [v3 numberValue];

  [v4 doubleValue];
  if (v5 >= 0.0)
  {
    [v4 doubleValue];
    v6 = v7;
  }

  else
  {
    v6 = 86400.0;
  }

  return v6;
}

- (NSDictionary)naturalLightingCurveResourceFileContent
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"NaturalLightingCurve" ofType:@"plist"];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
    v16 = 0;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v4 error:&v16];
    v6 = v16;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543874;
        v18 = v13;
        v19 = 2112;
        v20 = v4;
        v21 = 2112;
        v22 = v6;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to create dictionary from file URL %@:%@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
      v7 = MEMORY[0x277CBEC10];
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543874;
      v18 = v10;
      v19 = 2112;
      v20 = @"NaturalLightingCurve";
      v21 = 2112;
      v22 = @"plist";
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to locate the resource file with name: %@ with extension: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = MEMORY[0x277CBEC10];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (unint64_t)millisecondsElapsedSinceStartOfDayWithDate:(id)a3 timeZone:(id)a4
{
  v5 = MEMORY[0x277CBEA80];
  v6 = *MEMORY[0x277CBE5C0];
  v7 = a4;
  v8 = a3;
  v9 = [v5 calendarWithIdentifier:v6];
  [v9 setTimeZone:v7];

  v10 = [v9 components:224 fromDate:v8];

  v11 = 3600 * [v10 hour];
  v12 = v11 + 60 * [v10 minute];
  v13 = 1000 * (v12 + [v10 second]);

  return v13;
}

@end