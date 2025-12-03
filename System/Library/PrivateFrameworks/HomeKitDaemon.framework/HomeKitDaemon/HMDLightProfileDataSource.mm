@interface HMDLightProfileDataSource
- (NSDictionary)naturalLightingCurveResourceFileContent;
- (double)naturalLightingCurveUpdateAccessoryTimeDifferenceThreshold;
- (double)naturalLightingCurveUpdateInterval;
- (double)naturalLightingEnabledRetryInterval;
- (int64_t)naturalLightingEnabledMaxRetryCount;
- (int64_t)naturalLightingStartUpColorTemperature;
- (unint64_t)millisecondsElapsedSinceStartOfDayWithDate:(id)date timeZone:(id)zone;
- (void)dispatchAfterTimeInterval:(double)interval queue:(id)queue block:(id)block;
@end

@implementation HMDLightProfileDataSource

- (int64_t)naturalLightingStartUpColorTemperature
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"naturalLightingStartUpColorTemperature"];
  numberValue = [v3 numberValue];
  integerValue = [numberValue integerValue];

  return integerValue;
}

- (double)naturalLightingEnabledRetryInterval
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"naturalLightingEnabledRetryInterval"];
  numberValue = [v3 numberValue];
  [numberValue doubleValue];
  v6 = v5;

  return v6;
}

- (int64_t)naturalLightingEnabledMaxRetryCount
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"naturalLightingEnabledMaxRetryCount"];
  numberValue = [v3 numberValue];
  integerValue = [numberValue integerValue];

  return integerValue;
}

- (void)dispatchAfterTimeInterval:(double)interval queue:(id)queue block:(id)block
{
  v6 = (interval * 1000000000.0);
  blockCopy = block;
  queue = queue;
  v8 = dispatch_time(0, v6);
  dispatch_after(v8, queue, blockCopy);
}

- (double)naturalLightingCurveUpdateAccessoryTimeDifferenceThreshold
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"naturalLightingCurveUpdateAccessoryTimeDifferenceThreshold"];
  numberValue = [v3 numberValue];

  [numberValue doubleValue];
  if (v5 >= 0.0)
  {
    [numberValue doubleValue];
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
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"naturalLightingCurveUpdateInterval"];
  numberValue = [v3 numberValue];

  [numberValue doubleValue];
  if (v5 >= 0.0)
  {
    [numberValue doubleValue];
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

- (unint64_t)millisecondsElapsedSinceStartOfDayWithDate:(id)date timeZone:(id)zone
{
  v5 = MEMORY[0x277CBEA80];
  v6 = *MEMORY[0x277CBE5C0];
  zoneCopy = zone;
  dateCopy = date;
  v9 = [v5 calendarWithIdentifier:v6];
  [v9 setTimeZone:zoneCopy];

  v10 = [v9 components:224 fromDate:dateCopy];

  v11 = 3600 * [v10 hour];
  v12 = v11 + 60 * [v10 minute];
  v13 = 1000 * (v12 + [v10 second]);

  return v13;
}

@end