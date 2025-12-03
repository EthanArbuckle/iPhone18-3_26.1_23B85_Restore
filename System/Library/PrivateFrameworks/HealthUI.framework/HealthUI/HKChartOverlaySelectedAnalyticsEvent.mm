@interface HKChartOverlaySelectedAnalyticsEvent
- (HKChartOverlaySelectedAnalyticsEvent)initWithConfiguration:(id)configuration previousItem:(id)item currentItem:(id)currentItem;
- (id)determineFeatureVersionWithHealthDataSource:(id)source;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
@end

@implementation HKChartOverlaySelectedAnalyticsEvent

- (HKChartOverlaySelectedAnalyticsEvent)initWithConfiguration:(id)configuration previousItem:(id)item currentItem:(id)currentItem
{
  configurationCopy = configuration;
  itemCopy = item;
  currentItemCopy = currentItem;
  v15.receiver = self;
  v15.super_class = HKChartOverlaySelectedAnalyticsEvent;
  v12 = [(HKChartOverlaySelectedAnalyticsEvent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_configuration, configuration);
    objc_storeStrong(&v13->_previousItem, item);
    objc_storeStrong(&v13->_currentItem, currentItem);
  }

  return v13;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  healthDataSource = [sourceCopy healthDataSource];
  v56 = 0;
  v8 = [healthDataSource biologicalSexWithError:&v56];
  loggingCategory2 = v56;

  if (loggingCategory2)
  {
    _HKInitializeLogging();
    loggingCategory = [(HKChartOverlaySelectedAnalyticsEventConfiguration *)self->_configuration loggingCategory];
    if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_ERROR))
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
    loggingCategory2 = HKAnalyticsPropertyValueForBiologicalSex();
    v12 = *MEMORY[0x1E696B4D8];
    v13 = v6;
    v11 = loggingCategory2;
LABEL_7:
    [v13 setObject:v11 forKeyedSubscript:v12];
    goto LABEL_8;
  }

  _HKInitializeLogging();
  loggingCategory2 = [(HKChartOverlaySelectedAnalyticsEventConfiguration *)self->_configuration loggingCategory];
  if (os_log_type_enabled(loggingCategory2, OS_LOG_TYPE_FAULT))
  {
    [(HKChartOverlaySelectedAnalyticsEvent *)self makeIHAGatedEventPayloadWithDataSource:loggingCategory2 error:v49, v50, v51, v52, v53, v54];
  }

LABEL_8:

  healthDataSource2 = [sourceCopy healthDataSource];
  environmentDataSource = [sourceCopy environmentDataSource];
  currentDate = [environmentDataSource currentDate];
  v55 = 0;
  v17 = [healthDataSource2 ageWithCurrentDate:currentDate error:&v55];
  v18 = v55;

  if (v18)
  {
    _HKInitializeLogging();
    loggingCategory3 = [(HKChartOverlaySelectedAnalyticsEventConfiguration *)self->_configuration loggingCategory];
    if (os_log_type_enabled(loggingCategory3, OS_LOG_TYPE_ERROR))
    {
      [HKAFibBurdenLifeFactorLoggingInitiatedAnalyticsEvent makeIHAGatedEventPayloadWithDataSource:error:];
    }

    v20 = *MEMORY[0x1E696B4B8];
  }

  else
  {
    minimumAge = [(HKChartOverlaySelectedAnalyticsEventConfiguration *)self->_configuration minimumAge];
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

  healthDataSource3 = [sourceCopy healthDataSource];
  v23 = [(HKChartOverlaySelectedAnalyticsEvent *)self determineFeatureVersionWithHealthDataSource:healthDataSource3];

  if (v23)
  {
    [v6 setObject:v23 forKeyedSubscript:@"featureVersion"];
  }

  previousItem = self->_previousItem;
  if (previousItem)
  {
    analyticsIdentifier = [(HKDisplayTypeContextItem *)previousItem analyticsIdentifier];

    if (analyticsIdentifier)
    {
      analyticsIdentifier2 = [(HKDisplayTypeContextItem *)self->_previousItem analyticsIdentifier];
      previousContextItemPropertyName = [(HKChartOverlaySelectedAnalyticsEventConfiguration *)self->_configuration previousContextItemPropertyName];
      [v6 setObject:analyticsIdentifier2 forKeyedSubscript:previousContextItemPropertyName];
    }

    else
    {
      _HKInitializeLogging();
      loggingCategory4 = [(HKChartOverlaySelectedAnalyticsEventConfiguration *)self->_configuration loggingCategory];
      if (os_log_type_enabled(loggingCategory4, OS_LOG_TYPE_FAULT))
      {
        [(HKChartOverlaySelectedAnalyticsEvent *)self makeIHAGatedEventPayloadWithDataSource:loggingCategory4 error:v29, v30, v31, v32, v33, v34];
      }

      v35 = *MEMORY[0x1E696B508];
      analyticsIdentifier2 = [(HKChartOverlaySelectedAnalyticsEventConfiguration *)self->_configuration previousContextItemPropertyName];
      [v6 setObject:v35 forKeyedSubscript:analyticsIdentifier2];
    }
  }

  currentItem = self->_currentItem;
  if (currentItem)
  {
    analyticsIdentifier3 = [(HKDisplayTypeContextItem *)currentItem analyticsIdentifier];

    if (analyticsIdentifier3)
    {
      analyticsIdentifier4 = [(HKDisplayTypeContextItem *)self->_currentItem analyticsIdentifier];
      currentContextItemPropertyName = [(HKChartOverlaySelectedAnalyticsEventConfiguration *)self->_configuration currentContextItemPropertyName];
      [v6 setObject:analyticsIdentifier4 forKeyedSubscript:currentContextItemPropertyName];
    }

    else
    {
      _HKInitializeLogging();
      loggingCategory5 = [(HKChartOverlaySelectedAnalyticsEventConfiguration *)self->_configuration loggingCategory];
      if (os_log_type_enabled(loggingCategory5, OS_LOG_TYPE_FAULT))
      {
        [(HKChartOverlaySelectedAnalyticsEvent *)self makeIHAGatedEventPayloadWithDataSource:loggingCategory5 error:v41, v42, v43, v44, v45, v46];
      }

      v47 = *MEMORY[0x1E696B508];
      analyticsIdentifier4 = [(HKChartOverlaySelectedAnalyticsEventConfiguration *)self->_configuration currentContextItemPropertyName];
      [v6 setObject:v47 forKeyedSubscript:analyticsIdentifier4];
    }
  }

  return v6;
}

- (id)determineFeatureVersionWithHealthDataSource:(id)source
{
  sourceCopy = source;
  p_configuration = &self->_configuration;
  featureIdentifier = [(HKChartOverlaySelectedAnalyticsEventConfiguration *)self->_configuration featureIdentifier];

  if (featureIdentifier)
  {
    featureIdentifier2 = [(HKChartOverlaySelectedAnalyticsEventConfiguration *)*p_configuration featureIdentifier];
    v8 = [sourceCopy featureAvailabilityProviderForIdentifier:featureIdentifier2];

    if (v8)
    {
      v19 = 0;
      v9 = [v8 featureOnboardingRecordWithError:&v19];
      v10 = v19;
      if (v9)
      {
        onboardingCompletion = [v9 onboardingCompletion];

        if (onboardingCompletion)
        {
          v12 = objc_alloc_init(MEMORY[0x1E696ADA0]);
          [v12 setNumberStyle:1];
          [v12 setMinimumFractionDigits:1];
          v13 = MEMORY[0x1E696AD98];
          onboardingCompletion2 = [v9 onboardingCompletion];
          v15 = [v13 numberWithInteger:{objc_msgSend(onboardingCompletion2, "version")}];
          onboardingCompletion = [v12 stringFromNumber:v15];
        }
      }

      else
      {
        _HKInitializeLogging();
        loggingCategory = [(HKChartOverlaySelectedAnalyticsEventConfiguration *)*p_configuration loggingCategory];
        if (os_log_type_enabled(loggingCategory, OS_LOG_TYPE_ERROR))
        {
          [HKAFibBurdenLifeFactorLoggingInitiatedAnalyticsEvent determineFeatureVersionWithHealthDataSource:];
        }

        onboardingCompletion = *MEMORY[0x1E696B508];
      }
    }

    else
    {
      _HKInitializeLogging();
      loggingCategory2 = [(HKChartOverlaySelectedAnalyticsEventConfiguration *)*p_configuration loggingCategory];
      if (os_log_type_enabled(loggingCategory2, OS_LOG_TYPE_FAULT))
      {
        [(HKChartOverlaySelectedAnalyticsEvent *)self determineFeatureVersionWithHealthDataSource:loggingCategory2];
      }

      onboardingCompletion = *MEMORY[0x1E696B508];
    }
  }

  else
  {
    onboardingCompletion = 0;
  }

  return onboardingCompletion;
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