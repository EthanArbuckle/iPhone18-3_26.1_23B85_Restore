@interface HDHRAFibBurdenNotificationManager
+ (id)_buildNotificationForLackOfAFibBurdenWithCurrentDate:(id)a3 expirationDate:(id)a4 shouldForwardToWatch:(BOOL)a5 uuid:(id)a6;
+ (id)_generateDateRangeStringForAnalysisSampleWithStartDate:(id)a3 endDate:(id)a4 calendar:(id)a5 isUnitTesting:(BOOL)a6;
+ (id)_julianDayFromDate:(id)a3 calendar:(id)a4;
+ (id)_notificationBodyKeyForCurrentPercentageString:(id)a3 isCurrentValueClamped:(BOOL)a4 previousPercentageString:(id)a5 isPreviousValueClamped:(BOOL)a6;
- (HDHRAFibBurdenNotificationManager)initWithProfile:(id)a3;
- (HDHRAFibBurdenNotificationManager)initWithProfile:(id)a3 modeDeterminer:(id)a4 notificationLastSentDateStore:(id)a5 calendarCache:(id)a6 dateGenerator:(id)a7 eventSubmissionManager:(id)a8;
- (id)_buildNotificationForMode:(id)a3;
- (id)_buildValueNotificationForMode:(id)a3 currentDate:(id)a4;
- (id)_generateExpirationDateWithCurrentDate:(id)a3;
- (id)_userNotificationCenter;
- (void)_sendNotificationRequest:(id)a3 completion:(id)a4;
- (void)_sendNotificationWithMode:(id)a3 completion:(id)a4;
@end

@implementation HDHRAFibBurdenNotificationManager

- (HDHRAFibBurdenNotificationManager)initWithProfile:(id)a3
{
  v4 = MEMORY[0x277CCD0A0];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [[HDHRAFibBurdenNotificationModeDeterminer alloc] initWithProfile:v5 calendarCache:v6];
  v8 = [MEMORY[0x277D10718] hdhr_aFibBurdenProtectedSyncedDomainForProfile:v5];
  v9 = objc_alloc(MEMORY[0x277CCCFE8]);
  v10 = HKHRAFibBurdenLogForCategory();
  v11 = [v9 initWithLoggingCategory:v10 healthDataSource:v5];
  v12 = [(HDHRAFibBurdenNotificationManager *)self initWithProfile:v5 modeDeterminer:v7 notificationLastSentDateStore:v8 calendarCache:v6 dateGenerator:&__block_literal_global_5 eventSubmissionManager:v11];

  return v12;
}

- (HDHRAFibBurdenNotificationManager)initWithProfile:(id)a3 modeDeterminer:(id)a4 notificationLastSentDateStore:(id)a5 calendarCache:(id)a6 dateGenerator:(id)a7 eventSubmissionManager:(id)a8
{
  v35 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v31 = a4;
  v30 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v32.receiver = self;
  v32.super_class = HDHRAFibBurdenNotificationManager;
  v18 = [(HDHRAFibBurdenNotificationManager *)&v32 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_profile, v14);
    v20 = MEMORY[0x22AACDB50](v16);
    dateGenerator = v19->_dateGenerator;
    v19->_dateGenerator = v20;

    objc_storeStrong(&v19->_eventSubmissionManager, a8);
    objc_storeStrong(&v19->_modeDeterminer, a4);
    objc_storeStrong(&v19->_notificationLastSentDateStore, a5);
    objc_storeStrong(&v19->_calendarCache, a6);
    v22 = HKDispatchQueueName();
    v23 = dispatch_queue_create(v22, 0);
    queue = v19->_queue;
    v19->_queue = v23;

    _HKInitializeLogging();
    v25 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = objc_opt_class();
      *buf = 138412290;
      v34 = v26;
      v27 = v26;
      _os_log_impl(&dword_229486000, v25, OS_LOG_TYPE_DEFAULT, "[%@] was created", buf, 0xCu);
    }
  }

  v28 = *MEMORY[0x277D85DE8];
  return v19;
}

void __151__HDHRAFibBurdenNotificationManager_sevenDayAnalysisScheduler_didSuccessfullyCompleteAnalysisWithSample_onboardedWithinAnalysisInterval_featureStatus___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __151__HDHRAFibBurdenNotificationManager_sevenDayAnalysisScheduler_didSuccessfullyCompleteAnalysisWithSample_onboardedWithinAnalysisInterval_featureStatus___block_invoke_2;
  v6[3] = &unk_278660128;
  v7 = v2;
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v8 = v4;
  v9 = v5;
  [v3 _sendNotificationWithMode:v7 completion:v6];
}

void __151__HDHRAFibBurdenNotificationManager_sevenDayAnalysisScheduler_didSuccessfullyCompleteAnalysisWithSample_onboardedWithinAnalysisInterval_featureStatus___block_invoke_2(void *a1)
{
  v2 = [HDHRAFibBurdenNotificationAnalyticsEvent alloc];
  v3 = a1[4];
  v4 = a1[5];
  WeakRetained = objc_loadWeakRetained((a1[6] + 8));
  v6 = [(HDHRAFibBurdenNotificationAnalyticsEvent *)v2 initWithNotificationMode:v3 featureStatus:v4 profile:WeakRetained];

  [*(a1[6] + 48) submitEvent:v6 error:0];
}

- (void)_sendNotificationWithMode:(id)a3 completion:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(HDHRAFibBurdenNotificationManager *)self _buildNotificationForMode:a3];
  if (v7)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74__HDHRAFibBurdenNotificationManager__sendNotificationWithMode_completion___block_invoke;
    v10[3] = &unk_27865FD68;
    v10[4] = self;
    v11 = v6;
    [(HDHRAFibBurdenNotificationManager *)self _sendNotificationRequest:v7 completion:v10];
  }

  else
  {
    _HKInitializeLogging();
    v8 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v13 = self;
      _os_log_impl(&dword_229486000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Did not generate notification for mode, will not post notification", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __74__HDHRAFibBurdenNotificationManager__sendNotificationWithMode_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    v6 = *(v4 + 16);
    v7 = *(v6 + 16);
    v9 = a3;
    v8 = v7(v6);
    [v5 setNotificationSentDate:v8];

    (*(*(a1 + 40) + 16))();
  }
}

- (id)_userNotificationCenter
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v3 = [WeakRetained notificationManager];

  return v3;
}

- (id)_generateExpirationDateWithCurrentDate:(id)a3
{
  calendarCache = self->_calendarCache;
  v4 = a3;
  v5 = [(HKCalendarCache *)calendarCache currentCalendar];
  v6 = [v5 hk_dateByAddingDays:1 toDate:v4];

  return v6;
}

- (void)_sendNotificationRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__HDHRAFibBurdenNotificationManager__sendNotificationRequest_completion___block_invoke;
  block[3] = &unk_278660468;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __73__HDHRAFibBurdenNotificationManager__sendNotificationRequest_completion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = HKHRAFibBurdenLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v11 = objc_opt_class();
    v4 = v11;
    _os_log_impl(&dword_229486000, v2, OS_LOG_TYPE_DEFAULT, "[%@] About to show AFib Burden Report notification", buf, 0xCu);
  }

  v5 = [*(a1 + 32) _userNotificationCenter];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__HDHRAFibBurdenNotificationManager__sendNotificationRequest_completion___block_invoke_330;
  v8[3] = &unk_27865FD68;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = *(a1 + 48);
  [v5 postNotificationWithRequest:v6 completion:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __73__HDHRAFibBurdenNotificationManager__sendNotificationRequest_completion___block_invoke_330(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    _HKInitializeLogging();
    v5 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __73__HDHRAFibBurdenNotificationManager__sendNotificationRequest_completion___block_invoke_330_cold_1(a1, v4, v5);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (id)_buildNotificationForMode:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = (*(self->_dateGenerator + 2))();
  v6 = [v4 type];
  switch(v6)
  {
    case 3:
      v10 = objc_opt_class();
      v11 = [(HDHRAFibBurdenNotificationManager *)self _generateExpirationDateWithCurrentDate:v5];
      v12 = [v4 shouldForwardToWatch];
      v13 = [MEMORY[0x277CCAD78] UUID];
      v14 = [v13 UUIDString];
      v9 = [v10 _buildNotificationForLackOfAFibBurdenWithCurrentDate:v5 expirationDate:v11 shouldForwardToWatch:v12 uuid:v14];

      break;
    case 2:
      _HKInitializeLogging();
      v7 = HKHRAFibBurdenLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138543362;
        v18 = self;
        v8 = "[%{public}@] Preparing notification with current and previous value";
        goto LABEL_8;
      }

LABEL_9:

      v9 = [(HDHRAFibBurdenNotificationManager *)self _buildValueNotificationForMode:v4 currentDate:v5];
      break;
    case 1:
      _HKInitializeLogging();
      v7 = HKHRAFibBurdenLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138543362;
        v18 = self;
        v8 = "[%{public}@] Preparing notification with current value only";
LABEL_8:
        _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_DEFAULT, v8, &v17, 0xCu);
        goto LABEL_9;
      }

      goto LABEL_9;
    default:
      v9 = 0;
      break;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_buildValueNotificationForMode:(id)a3 currentDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 currentPercentage];
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  v10 = [v6 currentValueClamped];
  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = v10;
  v12 = [v6 currentValueDateInterval];
  if (!v12)
  {

LABEL_7:
    goto LABEL_8;
  }

  v13 = v12;
  v14 = [v6 currentValueUUID];

  if (v14)
  {
    v15 = objc_opt_class();
    v32 = [v6 currentPercentage];
    v31 = [v6 currentValueClamped];
    v28 = [v31 BOOLValue];
    v26 = [v6 previousPercentage];
    v30 = [v6 previousValueClamped];
    v25 = [v30 BOOLValue];
    v29 = [v6 currentValueDateInterval];
    v16 = [v29 startDate];
    v27 = [v6 currentValueDateInterval];
    v17 = [v27 endDate];
    v18 = [(HDHRAFibBurdenNotificationManager *)self _generateExpirationDateWithCurrentDate:v7];
    v19 = [v6 currentValueUUID];
    v20 = [v19 UUIDString];
    v21 = [(HKCalendarCache *)self->_calendarCache currentCalendar];
    v22 = [v15 _buildNotificationForAFibBurdenCurrentPercentage:v32 isCurrentValueClamped:v28 previousPercentage:v26 isPreviousValueClamped:v25 startDate:v16 endDate:v17 currentDate:v7 expirationDate:v18 uuid:v20 calendar:v21];

    goto LABEL_11;
  }

LABEL_8:
  _HKInitializeLogging();
  v23 = HKHRAFibBurdenLogForCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
  {
    [HDHRAFibBurdenNotificationManager _buildValueNotificationForMode:v23 currentDate:?];
  }

  v22 = 0;
LABEL_11:

  return v22;
}

+ (id)_notificationBodyKeyForCurrentPercentageString:(id)a3 isCurrentValueClamped:(BOOL)a4 previousPercentageString:(id)a5 isPreviousValueClamped:(BOOL)a6
{
  v6 = a6;
  v8 = a4;
  v9 = a3;
  v10 = a5;
  if (v10)
  {
    if (v8)
    {
      v11 = @"AFIB_BURDEN_TWO_WEEK_NOTIFICATION_BODY_FIRST_CLAMPED_SECOND_PERCENT";
      v12 = @"AFIB_BURDEN_TWO_WEEK_NOTIFICATION_BODY_FIRST_CLAMPED_SECOND_CLAMPED_SAME";
      v13 = !v6;
    }

    else
    {
      if (v6)
      {
        v14 = @"AFIB_BURDEN_TWO_WEEK_NOTIFICATION_BODY_FIRST_PERCENT_SECOND_CLAMPED";
        goto LABEL_11;
      }

      v15 = [v9 isEqualToString:v10];
      v11 = @"AFIB_BURDEN_TWO_WEEK_NOTIFICATION_BODY_FIRST_PERCENT_SECOND_PERCENT";
      v12 = @"AFIB_BURDEN_TWO_WEEK_NOTIFICATION_BODY_FIRST_PERCENT_SECOND_PERCENT_SAME";
      v13 = v15 == 0;
    }
  }

  else
  {
    v11 = @"AFIB_BURDEN_SINGLE_WEEK_NOTIFICATION_BODY_PERCENT";
    v12 = @"AFIB_BURDEN_SINGLE_WEEK_NOTIFICATION_BODY_CLAMPED";
    v13 = !v8;
  }

  if (v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

LABEL_11:

  return v14;
}

+ (id)_buildNotificationForLackOfAFibBurdenWithCurrentDate:(id)a3 expirationDate:(id)a4 shouldForwardToWatch:(BOOL)a5 uuid:(id)a6
{
  v6 = a5;
  v9 = *MEMORY[0x277D13050];
  v10 = MEMORY[0x277CCACA8];
  v11 = a6;
  v12 = a4;
  v13 = a3;
  v14 = MEMORY[0x277CBEBF8];
  v15 = [v10 localizedUserNotificationStringForKey:@"AFIB_BURDEN_LACK_OF_SAMPLE_NOTIFICATION_TITLE" arguments:MEMORY[0x277CBEBF8]];
  v16 = [MEMORY[0x277CCACA8] localizedUserNotificationStringForKey:@"AFIB_BURDEN_LACK_OF_SAMPLE_NOTIFICATION_BODY" arguments:v14];
  v17 = objc_alloc_init(MEMORY[0x277CE1F60]);
  [v17 setTitle:v15];
  [v17 setBody:v16];
  [v17 setCategoryIdentifier:v9];
  [v17 setThreadIdentifier:v9];
  v18 = [MEMORY[0x277CE1F70] soundWithAlertType:25];
  [v17 setSound:v18];
  [v17 setDate:v13];

  [v17 setExpirationDate:v12];
  v19 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:MEMORY[0x277CBEC10]];
  v20 = [MEMORY[0x277CCD0C0] quantityTypeForIdentifier:*MEMORY[0x277CCC950]];
  v21 = _HKCreateURLForSampleType();
  v22 = [v21 absoluteString];
  [v19 setObject:v22 forKeyedSubscript:*MEMORY[0x277CCE4E0]];

  [v19 setObject:&unk_283CD27E8 forKeyedSubscript:*MEMORY[0x277CCE4D0]];
  [v19 setObject:@"AFIB_BURDEN_LACK_OF_SAMPLE_NOTIFICATION_BODY" forKeyedSubscript:@"watchBodyKey"];
  v23 = [MEMORY[0x277CCABB0] numberWithInt:!v6];
  [v19 setObject:v23 forKeyedSubscript:*MEMORY[0x277CCE4D8]];

  [v17 setUserInfo:v19];
  v24 = [MEMORY[0x277CE1FC0] requestWithIdentifier:v11 content:v17 trigger:0];

  return v24;
}

+ (id)_generateDateRangeStringForAnalysisSampleWithStartDate:(id)a3 endDate:(id)a4 calendar:(id)a5 isUnitTesting:(BOOL)a6
{
  v6 = a6;
  v9 = a5;
  v10 = MEMORY[0x277CCA978];
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(v10);
  if (v6)
  {
    v14 = [v9 locale];
    [v13 setLocale:v14];

    v15 = [v9 timeZone];
    [v13 setTimeZone:v15];
  }

  [v13 setDateStyle:2];
  [v13 setTimeStyle:0];
  v16 = [v11 dateByAddingTimeInterval:-1.0];

  v17 = [v13 stringFromDate:v12 toDate:v16];

  return v17;
}

+ (id)_julianDayFromDate:(id)a3 calendar:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 hk_dayIndexWithCalendar:v5];
  v8 = [v5 components:32 fromDate:v6];

  v9 = [v8 hour];
  v10 = [MEMORY[0x277CBEAA8] hk_dateOnDayIndex:v7 atHour:v9 calendar:v5];

  return v10;
}

- (void)sevenDayAnalysisScheduler:didSuccessfullyCompleteAnalysisWithSample:onboardedWithinAnalysisInterval:featureStatus:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1(&dword_229486000, v0, v1, "[%{public}@] Not showing notification as we encountered an error when determining mode: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

void __73__HDHRAFibBurdenNotificationManager__sendNotificationRequest_completion___block_invoke_330_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v8 = 138412546;
  v9 = objc_opt_class();
  v10 = 2112;
  v11 = a2;
  v6 = v9;
  _os_log_error_impl(&dword_229486000, a3, OS_LOG_TYPE_ERROR, "[%@] error requesting notification: %@)", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_buildValueNotificationForMode:(uint64_t)a1 currentDate:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_229486000, a2, OS_LOG_TYPE_FAULT, "[%{public}@] Current value indicated to be present but not all components of current value present.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end