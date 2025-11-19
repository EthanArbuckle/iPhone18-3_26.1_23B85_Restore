@interface HKAFibBurdenLifeFactorLoggingInitiatedAnalyticsEvent
- (HKAFibBurdenLifeFactorLoggingInitiatedAnalyticsEvent)initWithSampleType:(id)a3 context:(int64_t)a4;
- (id)determineFeatureVersionWithHealthDataSource:(id)a3;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
@end

@implementation HKAFibBurdenLifeFactorLoggingInitiatedAnalyticsEvent

- (HKAFibBurdenLifeFactorLoggingInitiatedAnalyticsEvent)initWithSampleType:(id)a3 context:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HKAFibBurdenLifeFactorLoggingInitiatedAnalyticsEvent;
  v8 = [(HKAFibBurdenLifeFactorLoggingInitiatedAnalyticsEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_sampleType, a3);
    v9->_context = a4;
  }

  return v9;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [v5 healthDataSource];
  v32 = 0;
  v8 = [v7 biologicalSexWithError:&v32];
  v9 = v32;

  v10 = MEMORY[0x1E696B508];
  if (v9)
  {
    _HKInitializeLogging();
    v11 = HKLogAFibBurden();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [HKAFibBurdenLifeFactorLoggingInitiatedAnalyticsEvent makeIHAGatedEventPayloadWithDataSource:error:];
    }

    v12 = *v10;
    v13 = *MEMORY[0x1E696B4D8];
    v14 = v6;
    goto LABEL_7;
  }

  if (v8)
  {
    v9 = HKAnalyticsPropertyValueForBiologicalSex();
    v13 = *MEMORY[0x1E696B4D8];
    v14 = v6;
    v12 = v9;
LABEL_7:
    [v14 setObject:v12 forKeyedSubscript:v13];
    goto LABEL_8;
  }

  _HKInitializeLogging();
  v9 = HKLogAFibBurden();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    [HKAFibBurdenLifeFactorLoggingInitiatedAnalyticsEvent makeIHAGatedEventPayloadWithDataSource:v9 error:?];
  }

LABEL_8:

  v15 = [v5 healthDataSource];
  v16 = [v5 environmentDataSource];
  v17 = [v16 currentDate];
  v31 = 0;
  v18 = [v15 ageWithCurrentDate:v17 error:&v31];
  v19 = v31;

  if (v19)
  {
    _HKInitializeLogging();
    v20 = HKLogAFibBurden();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [HKAFibBurdenLifeFactorLoggingInitiatedAnalyticsEvent makeIHAGatedEventPayloadWithDataSource:error:];
    }

    v21 = *MEMORY[0x1E696B4B8];
  }

  else
  {
    v22 = [MEMORY[0x1E696AD98] numberWithInteger:*MEMORY[0x1E696C808]];
    v21 = HKAnalyticsDecadeBucketedAgeForAgeWithMinimumAge();

    v19 = v21;
    if (!v18)
    {
      goto LABEL_14;
    }
  }

  [v6 setObject:v21 forKeyedSubscript:*MEMORY[0x1E696B4D0]];
  v21 = v19;
LABEL_14:

  v23 = [v5 healthDataSource];
  v24 = [(HKAFibBurdenLifeFactorLoggingInitiatedAnalyticsEvent *)self determineFeatureVersionWithHealthDataSource:v23];

  if (v24)
  {
    [v6 setObject:v24 forKeyedSubscript:@"featureVersion"];
  }

  v25 = [(HKSampleType *)self->_sampleType identifier];
  [v6 setObject:v25 forKeyedSubscript:@"lifeFactor"];

  v26 = *v10;
  v27 = v26;
  context = self->_context;
  if (context)
  {
    if (context != 1)
    {
      goto LABEL_21;
    }

    v29 = @"lifeFactorPlatter";
  }

  else
  {
    v29 = @"interactiveChart";
  }

  v27 = v29;
LABEL_21:
  [v6 setObject:v27 forKeyedSubscript:@"context"];

  return v6;
}

- (id)determineFeatureVersionWithHealthDataSource:(id)a3
{
  v4 = [a3 featureAvailabilityProviderForIdentifier:*MEMORY[0x1E696B878]];
  v5 = v4;
  if (v4)
  {
    v16 = 0;
    v6 = [v4 featureOnboardingRecordWithError:&v16];
    v7 = v16;
    if (v6)
    {
      v8 = [v6 onboardingCompletion];

      if (v8)
      {
        v9 = objc_alloc_init(MEMORY[0x1E696ADA0]);
        [v9 setNumberStyle:1];
        [v9 setMinimumFractionDigits:1];
        v10 = MEMORY[0x1E696AD98];
        v11 = [v6 onboardingCompletion];
        v12 = [v10 numberWithInteger:{objc_msgSend(v11, "version")}];
        v8 = [v9 stringFromNumber:v12];
      }
    }

    else
    {
      _HKInitializeLogging();
      v14 = HKLogAFibBurden();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [HKAFibBurdenLifeFactorLoggingInitiatedAnalyticsEvent determineFeatureVersionWithHealthDataSource:];
      }

      v8 = *MEMORY[0x1E696B508];
    }
  }

  else
  {
    _HKInitializeLogging();
    v13 = HKLogAFibBurden();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [(HKAFibBurdenLifeFactorLoggingInitiatedAnalyticsEvent *)self determineFeatureVersionWithHealthDataSource:v13];
    }

    v8 = *MEMORY[0x1E696B508];
  }

  return v8;
}

- (void)makeIHAGatedEventPayloadWithDataSource:(uint64_t)a1 error:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_1C3942000, a2, OS_LOG_TYPE_FAULT, "[%{public}@] No error when fetching biological sex but also didn't get object", &v2, 0xCu);
}

- (void)determineFeatureVersionWithHealthDataSource:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_1C3942000, a2, OS_LOG_TYPE_FAULT, "[%{public}@] No feature availability provider found", &v2, 0xCu);
}

@end