@interface HKChartOverlaySelectedAnalyticsEvent
- (HKChartOverlaySelectedAnalyticsEvent)initWithConfiguration:(id)a3 previousItem:(id)a4 currentItem:(id)a5;
- (id)determineFeatureVersionWithHealthDataSource:(id)a3;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
@end

@implementation HKChartOverlaySelectedAnalyticsEvent

- (HKChartOverlaySelectedAnalyticsEvent)initWithConfiguration:(id)a3 previousItem:(id)a4 currentItem:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HKChartOverlaySelectedAnalyticsEvent;
  v12 = [(HKChartOverlaySelectedAnalyticsEvent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_configuration, a3);
    objc_storeStrong(&v13->_previousItem, a4);
    objc_storeStrong(&v13->_currentItem, a5);
  }

  return v13;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = [v5 healthDataSource];
  v56 = 0;
  v8 = [v7 biologicalSexWithError:&v56];
  v9 = v56;

  if (v9)
  {
    _HKInitializeLogging();
    v10 = [(HKChartOverlaySelectedAnalyticsEventConfiguration *)self->_configuration loggingCategory];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [HKAFibBurdenLifeFactorLoggingInitiatedAnalyticsEvent makeIHAGatedEventPayloadWithDataSource:error:];
    }

    v11 = *MEMORY[0x1E696B508];
    v12 = *MEMORY[0x1E696B4D8];
    v13 = v6;
    goto LABEL_7;
  }

  if (v8)
  {
    v9 = HKAnalyticsPropertyValueForBiologicalSex();
    v12 = *MEMORY[0x1E696B4D8];
    v13 = v6;
    v11 = v9;
LABEL_7:
    [v13 setObject:v11 forKeyedSubscript:v12];
    goto LABEL_8;
  }

  _HKInitializeLogging();
  v9 = [(HKChartOverlaySelectedAnalyticsEventConfiguration *)self->_configuration loggingCategory];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    [(HKChartOverlaySelectedAnalyticsEvent *)self makeIHAGatedEventPayloadWithDataSource:v9 error:v49, v50, v51, v52, v53, v54];
  }

LABEL_8:

  v14 = [v5 healthDataSource];
  v15 = [v5 environmentDataSource];
  v16 = [v15 currentDate];
  v55 = 0;
  v17 = [v14 ageWithCurrentDate:v16 error:&v55];
  v18 = v55;

  if (v18)
  {
    _HKInitializeLogging();
    v19 = [(HKChartOverlaySelectedAnalyticsEventConfiguration *)self->_configuration loggingCategory];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [HKAFibBurdenLifeFactorLoggingInitiatedAnalyticsEvent makeIHAGatedEventPayloadWithDataSource:error:];
    }

    v20 = *MEMORY[0x1E696B4B8];
  }

  else
  {
    v21 = [(HKChartOverlaySelectedAnalyticsEventConfiguration *)self->_configuration minimumAge];
    v20 = HKAnalyticsDecadeBucketedAgeForAgeWithMinimumAge();

    v18 = v20;
    if (!v17)
    {
      goto LABEL_14;
    }
  }

  [v6 setObject:v20 forKeyedSubscript:*MEMORY[0x1E696B4D0]];
  v20 = v18;
LABEL_14:

  v22 = [v5 healthDataSource];
  v23 = [(HKChartOverlaySelectedAnalyticsEvent *)self determineFeatureVersionWithHealthDataSource:v22];

  if (v23)
  {
    [v6 setObject:v23 forKeyedSubscript:@"featureVersion"];
  }

  previousItem = self->_previousItem;
  if (previousItem)
  {
    v25 = [(HKDisplayTypeContextItem *)previousItem analyticsIdentifier];

    if (v25)
    {
      v26 = [(HKDisplayTypeContextItem *)self->_previousItem analyticsIdentifier];
      v27 = [(HKChartOverlaySelectedAnalyticsEventConfiguration *)self->_configuration previousContextItemPropertyName];
      [v6 setObject:v26 forKeyedSubscript:v27];
    }

    else
    {
      _HKInitializeLogging();
      v28 = [(HKChartOverlaySelectedAnalyticsEventConfiguration *)self->_configuration loggingCategory];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        [(HKChartOverlaySelectedAnalyticsEvent *)self makeIHAGatedEventPayloadWithDataSource:v28 error:v29, v30, v31, v32, v33, v34];
      }

      v35 = *MEMORY[0x1E696B508];
      v26 = [(HKChartOverlaySelectedAnalyticsEventConfiguration *)self->_configuration previousContextItemPropertyName];
      [v6 setObject:v35 forKeyedSubscript:v26];
    }
  }

  currentItem = self->_currentItem;
  if (currentItem)
  {
    v37 = [(HKDisplayTypeContextItem *)currentItem analyticsIdentifier];

    if (v37)
    {
      v38 = [(HKDisplayTypeContextItem *)self->_currentItem analyticsIdentifier];
      v39 = [(HKChartOverlaySelectedAnalyticsEventConfiguration *)self->_configuration currentContextItemPropertyName];
      [v6 setObject:v38 forKeyedSubscript:v39];
    }

    else
    {
      _HKInitializeLogging();
      v40 = [(HKChartOverlaySelectedAnalyticsEventConfiguration *)self->_configuration loggingCategory];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
      {
        [(HKChartOverlaySelectedAnalyticsEvent *)self makeIHAGatedEventPayloadWithDataSource:v40 error:v41, v42, v43, v44, v45, v46];
      }

      v47 = *MEMORY[0x1E696B508];
      v38 = [(HKChartOverlaySelectedAnalyticsEventConfiguration *)self->_configuration currentContextItemPropertyName];
      [v6 setObject:v47 forKeyedSubscript:v38];
    }
  }

  return v6;
}

- (id)determineFeatureVersionWithHealthDataSource:(id)a3
{
  v4 = a3;
  p_configuration = &self->_configuration;
  v6 = [(HKChartOverlaySelectedAnalyticsEventConfiguration *)self->_configuration featureIdentifier];

  if (v6)
  {
    v7 = [(HKChartOverlaySelectedAnalyticsEventConfiguration *)*p_configuration featureIdentifier];
    v8 = [v4 featureAvailabilityProviderForIdentifier:v7];

    if (v8)
    {
      v19 = 0;
      v9 = [v8 featureOnboardingRecordWithError:&v19];
      v10 = v19;
      if (v9)
      {
        v11 = [v9 onboardingCompletion];

        if (v11)
        {
          v12 = objc_alloc_init(MEMORY[0x1E696ADA0]);
          [v12 setNumberStyle:1];
          [v12 setMinimumFractionDigits:1];
          v13 = MEMORY[0x1E696AD98];
          v14 = [v9 onboardingCompletion];
          v15 = [v13 numberWithInteger:{objc_msgSend(v14, "version")}];
          v11 = [v12 stringFromNumber:v15];
        }
      }

      else
      {
        _HKInitializeLogging();
        v17 = [(HKChartOverlaySelectedAnalyticsEventConfiguration *)*p_configuration loggingCategory];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [HKAFibBurdenLifeFactorLoggingInitiatedAnalyticsEvent determineFeatureVersionWithHealthDataSource:];
        }

        v11 = *MEMORY[0x1E696B508];
      }
    }

    else
    {
      _HKInitializeLogging();
      v16 = [(HKChartOverlaySelectedAnalyticsEventConfiguration *)*p_configuration loggingCategory];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [(HKChartOverlaySelectedAnalyticsEvent *)self determineFeatureVersionWithHealthDataSource:v16];
      }

      v11 = *MEMORY[0x1E696B508];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)determineFeatureVersionWithHealthDataSource:(NSObject *)a3 .cold.2(uint64_t a1, id *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*a2 featureIdentifier];
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_fault_impl(&dword_1C3942000, a3, OS_LOG_TYPE_FAULT, "[%{public}@] Given feature identifier %{public}@ but no feature availability provider found", &v6, 0x16u);
}

@end