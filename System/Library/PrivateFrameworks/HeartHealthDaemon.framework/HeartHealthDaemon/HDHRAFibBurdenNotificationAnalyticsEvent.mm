@interface HDHRAFibBurdenNotificationAnalyticsEvent
- (HDHRAFibBurdenNotificationAnalyticsEvent)initWithNotificationMode:(id)a3 featureStatus:(id)a4 focusModeDeterminer:(id)a5 notificationsAuthorizedProvider:(id)a6;
- (HDHRAFibBurdenNotificationAnalyticsEvent)initWithNotificationMode:(id)a3 featureStatus:(id)a4 profile:(id)a5;
- (id)_notificationTypeStringForType:(int64_t)a3;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
@end

@implementation HDHRAFibBurdenNotificationAnalyticsEvent

- (HDHRAFibBurdenNotificationAnalyticsEvent)initWithNotificationMode:(id)a3 featureStatus:(id)a4 profile:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(HDHRAFibBurdenBiomeFocusModeDeterminer);
  v12 = [v8 notificationManager];

  v13 = [(HDHRAFibBurdenNotificationAnalyticsEvent *)self initWithNotificationMode:v10 featureStatus:v9 focusModeDeterminer:v11 notificationsAuthorizedProvider:v12];
  return v13;
}

- (HDHRAFibBurdenNotificationAnalyticsEvent)initWithNotificationMode:(id)a3 featureStatus:(id)a4 focusModeDeterminer:(id)a5 notificationsAuthorizedProvider:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = HDHRAFibBurdenNotificationAnalyticsEvent;
  v15 = [(HDHRAFibBurdenNotificationAnalyticsEvent *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_notificationMode, a3);
    objc_storeStrong(&v16->_featureStatus, a4);
    objc_storeStrong(&v16->_focusModeDeterminer, a5);
    objc_storeStrong(&v16->_notificationsAuthorizedProvider, a6);
  }

  return v16;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [v5 healthDataSource];
  v37 = 0;
  v8 = [v7 biologicalSexWithError:&v37];
  v9 = v37;

  v10 = MEMORY[0x277CCB800];
  if (v9)
  {
    _HKInitializeLogging();
    v11 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [HDHRAFibBurdenNotificationAnalyticsEvent makeIHAGatedEventPayloadWithDataSource:error:];
    }

    v12 = *v10;
    v13 = *MEMORY[0x277CCB7D0];
    v14 = v6;
    goto LABEL_7;
  }

  if (v8)
  {
    v9 = HKAnalyticsPropertyValueForBiologicalSex();
    v13 = *MEMORY[0x277CCB7D0];
    v14 = v6;
    v12 = v9;
LABEL_7:
    [v14 setObject:v12 forKeyedSubscript:v13];
    goto LABEL_8;
  }

  _HKInitializeLogging();
  v9 = HKHRAFibBurdenLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    [HDHRAFibBurdenDailyAnalyticsEvent makeIHAGatedEventPayloadWithDataSource:error:];
  }

LABEL_8:

  v15 = [v5 healthDataSource];
  v16 = [v5 environmentDataSource];
  v17 = [v16 currentDate];
  v36 = 0;
  v18 = [v15 ageWithCurrentDate:v17 error:&v36];
  v19 = v36;

  if (v19)
  {
    _HKInitializeLogging();
    v20 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [HDHRAFibBurdenNotificationAnalyticsEvent makeIHAGatedEventPayloadWithDataSource:error:];
    }

    v21 = *MEMORY[0x277CCB7A0];
  }

  else
  {
    v22 = [MEMORY[0x277CCABB0] numberWithInteger:*MEMORY[0x277CCE208]];
    v21 = HKAnalyticsDecadeBucketedAgeForAgeWithMinimumAge();

    v19 = v21;
    if (!v18)
    {
      goto LABEL_14;
    }
  }

  [v6 setObject:v21 forKeyedSubscript:*MEMORY[0x277CCB7C0]];
  v21 = v19;
LABEL_14:

  v23 = [(HKFeatureStatus *)self->_featureStatus onboardingRecord];
  v24 = [v23 onboardingCompletion];

  if (v24)
  {
    [v24 version];
    v25 = HKHRAFibBurdenAnalyticsPropertyValueForVersion();
    [v6 setObject:v25 forKeyedSubscript:@"featureVersion"];
  }

  else
  {
    _HKInitializeLogging();
    v26 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      [HDHRAFibBurdenNotificationAnalyticsEvent makeIHAGatedEventPayloadWithDataSource:error:];
    }

    [v6 setObject:*v10 forKeyedSubscript:@"featureVersion"];
  }

  v27 = [(HDHRAFibBurdenNotificationAnalyticsEvent *)self _notificationTypeStringForType:[(HKHRAFibBurdenNotificationMode *)self->_notificationMode type]];
  [v6 setObject:v27 forKeyedSubscript:@"notificationType"];

  v28 = [(HKHRAFibBurdenNotificationMode *)self->_notificationMode currentValueClamped];

  if (v28)
  {
    v29 = [(HKHRAFibBurdenNotificationMode *)self->_notificationMode currentValueClamped];
    [v6 setObject:v29 forKeyedSubscript:@"wasDataClamped"];
  }

  v30 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKHRAFibBurdenNotificationMode shouldForwardToWatch](self->_notificationMode, "shouldForwardToWatch")}];
  [v6 setObject:v30 forKeyedSubscript:@"wasForwardedToWatch"];

  v31 = [(HKHRAFibBurdenNotificationMode *)self->_notificationMode previousTimeZoneDiffersFromCurrent];

  if (v31)
  {
    v32 = [(HKHRAFibBurdenNotificationMode *)self->_notificationMode previousTimeZoneDiffersFromCurrent];
    [v6 setObject:v32 forKeyedSubscript:@"wasPreviousValueInDifferentTimeZone"];
  }

  v33 = [(HDHRAFibBurdenNotificationAnalyticsEventFocusModeDeterminer *)self->_focusModeDeterminer isFocusModeOn];
  if (v33)
  {
    [v6 setObject:v33 forKeyedSubscript:@"isFocusModeOn"];
  }

  v34 = [MEMORY[0x277CCABB0] numberWithBool:{-[HDHRAFibBurdenAnalyticsEventHealthAppNotificationsAuthorizedProvider areHealthNotificationsAuthorized](self->_notificationsAuthorizedProvider, "areHealthNotificationsAuthorized")}];
  [v6 setObject:v34 forKeyedSubscript:*MEMORY[0x277CCB7C8]];

  return v6;
}

- (id)_notificationTypeStringForType:(int64_t)a3
{
  if (a3 == 3)
  {
    v5 = @"insufficientData";
  }

  else if (a3 == 2)
  {
    v5 = @"burdenPercentageWithPreviousValue";
  }

  else if (a3)
  {
    v5 = @"burdenPercentageWithoutPreviousValue";
  }

  else
  {
    _HKInitializeLogging();
    v4 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [HDHRAFibBurdenNotificationAnalyticsEvent _notificationTypeStringForType:];
    }

    v5 = *MEMORY[0x277CCB800];
  }

  return v5;
}

- (void)makeIHAGatedEventPayloadWithDataSource:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%{public}@] Error when determining biological sex, continuing daily analytics submission: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)makeIHAGatedEventPayloadWithDataSource:error:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%{public}@] Error when determining age, continuing daily analytics submission: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)makeIHAGatedEventPayloadWithDataSource:error:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_0(&dword_229486000, v0, v1, "[%{public}@] No onboarding completion when sending notification analytics event", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_notificationTypeStringForType:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5_0(&dword_229486000, v0, v1, "[%{public}@] Sending notification event when we actually do not have notification", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end