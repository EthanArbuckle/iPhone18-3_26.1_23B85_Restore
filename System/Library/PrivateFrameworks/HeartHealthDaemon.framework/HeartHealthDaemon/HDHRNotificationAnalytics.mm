@interface HDHRNotificationAnalytics
- (HDHRNotificationAnalytics)initWithEventSample:(id)sample areHealthNotificationsAuthorized:(BOOL)authorized;
- (id)_createMetricFromEventSample:(id)sample;
- (void)submit;
@end

@implementation HDHRNotificationAnalytics

- (HDHRNotificationAnalytics)initWithEventSample:(id)sample areHealthNotificationsAuthorized:(BOOL)authorized
{
  sampleCopy = sample;
  if (!HKImproveHealthAndActivityAnalyticsAllowed())
  {
    goto LABEL_5;
  }

  v12.receiver = self;
  v12.super_class = HDHRNotificationAnalytics;
  v7 = [(HDHRNotificationAnalytics *)&v12 init];
  self = v7;
  if (!v7 || (v7->_areHealthNotificationsAuthorized = authorized, [(HDHRNotificationAnalytics *)v7 _createMetricFromEventSample:sampleCopy], v8 = objc_claimAutoreleasedReturnValue(), metric = self->_metric, self->_metric = v8, metric, self->_metric))
  {
    self = self;
    selfCopy = self;
  }

  else
  {
LABEL_5:
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)_createMetricFromEventSample:(id)sample
{
  sampleCopy = sample;
  metadata = [sampleCopy metadata];
  v6 = [metadata hk_safeValueIfExistsForKeyPath:*MEMORY[0x277CCE048] class:objc_opt_class() error:0];

  if (v6)
  {
    v7 = MEMORY[0x277CCABB0];
    [v6 _beatsPerMinute];
    v8 = [v7 numberWithDouble:?];
  }

  else
  {
    v8 = 0;
  }

  categoryType = [sampleCopy categoryType];
  code = [categoryType code];

  if (code > 155)
  {
    if (code == 236)
    {
      v14 = [[HDHRNotificationMetric alloc] initWithNotificationType:@"Cardio Fitness" areHealthNotificationsAuthorized:self->_areHealthNotificationsAuthorized];
      metadata2 = [sampleCopy metadata];
      v16 = [metadata2 hk_safeNumberIfExistsForKeyPath:*MEMORY[0x277CCE0D8] error:0];

      if (v16)
      {
        if ([v16 BOOLValue])
        {
          v20 = @"Repeat";
        }

        else
        {
          v20 = @"Initial";
        }

        [(HDHRNotificationMetric *)v14 setCardioFitnessNotificationType:v20];
      }
    }

    else
    {
      if (code != 156)
      {
        goto LABEL_12;
      }

      v14 = [[HDHRNotificationMetric alloc] initWithNotificationType:@"IRN" areHealthNotificationsAuthorized:self->_areHealthNotificationsAuthorized];
      metadata3 = [sampleCopy metadata];
      v16 = [metadata3 hk_safeStringIfExistsForKeyPath:*MEMORY[0x277CCDFB8] error:0];

      if (v16)
      {
        [(HDHRNotificationMetric *)v14 setIrregularRhythmNotificationsAlgorithmVersion:HKAppleIrregularRhythmNotificationsAlgorithmVersionForPrivateVersionString()];
      }
    }

    goto LABEL_24;
  }

  if (code == 140)
  {
    v11 = [HDHRNotificationMetric alloc];
    areHealthNotificationsAuthorized = self->_areHealthNotificationsAuthorized;
    v13 = @"HHR";
LABEL_16:
    v18 = [(HDHRNotificationMetric *)v11 initWithNotificationType:v13 areHealthNotificationsAuthorized:areHealthNotificationsAuthorized];
    v14 = v18;
    if (v8)
    {
      [(HDHRNotificationMetric *)v18 setNotificationThreshold:v8];
    }

    goto LABEL_24;
  }

  if (code == 147)
  {
    v11 = [HDHRNotificationMetric alloc];
    areHealthNotificationsAuthorized = self->_areHealthNotificationsAuthorized;
    v13 = @"LHR";
    goto LABEL_16;
  }

LABEL_12:
  _HKInitializeLogging();
  v17 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [(HDHRNotificationAnalytics *)self _createMetricFromEventSample:sampleCopy];
  }

  v14 = 0;
LABEL_24:

  return v14;
}

- (void)submit
{
  objc_initWeak(&location, self);
  v3 = BiomeLibrary();
  userFocus = [v3 UserFocus];
  computedMode = [userFocus ComputedMode];
  publisher = [computedMode publisher];
  last = [publisher last];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __35__HDHRNotificationAnalytics_submit__block_invoke;
  v11[3] = &unk_278660308;
  v11[4] = self;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __35__HDHRNotificationAnalytics_submit__block_invoke_313;
  v9[3] = &unk_278660330;
  v9[4] = self;
  objc_copyWeak(&v10, &location);
  v8 = [last sinkWithCompletion:v11 receiveInput:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __35__HDHRNotificationAnalytics_submit__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = v6;
    v8 = [v3 error];
    v10 = 138543618;
    v11 = v6;
    v12 = 2114;
    v13 = v8;
    _os_log_impl(&dword_229486000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] User focus computed mode publisher finished with error: %{public}@", &v10, 0x16u);
  }

  [*(a1 + 32) _submitMetric];
  v9 = *MEMORY[0x277D85DE8];
}

void __35__HDHRNotificationAnalytics_submit__block_invoke_313(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];

  _HKInitializeLogging();
  v5 = HKLogHeartRateCategory();
  WeakRetained = v5;
  if (v4)
  {
    v7 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);

    if (v7)
    {
      v8 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        __35__HDHRNotificationAnalytics_submit__block_invoke_313_cold_1(a1, v3, v8);
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v9 = [v3 eventBody];
    [WeakRetained _setDoNotDisturbOn:{objc_msgSend(v9, "starting")}];
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __35__HDHRNotificationAnalytics_submit__block_invoke_313_cold_2(a1, v3);
  }
}

- (void)_createMetricFromEventSample:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v11 = [a2 categoryType];
  OUTLINED_FUNCTION_1_7(&dword_229486000, v4, v5, "[%{public}@] Analytics not compatible with sample type: %@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x277D85DE8];
}

void __35__HDHRNotificationAnalytics_submit__block_invoke_313_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = objc_opt_class();
  v7 = [a2 eventBody];
  OUTLINED_FUNCTION_0_8();
  _os_log_debug_impl(&dword_229486000, a3, OS_LOG_TYPE_DEBUG, "[%{public}@] Received event: %{public}@", v9, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

void __35__HDHRNotificationAnalytics_submit__block_invoke_313_cold_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = objc_opt_class();
  v5 = MEMORY[0x277CCABB0];
  v6 = v4;
  v7 = [v5 numberWithUnsignedChar:{objc_msgSend(a2, "error")}];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_7(&dword_229486000, v8, v9, "[%{public}@] Received nil user focus computed mode with reason: %{public}@", v10, v11, v12, v13, v15);

  v14 = *MEMORY[0x277D85DE8];
}

@end