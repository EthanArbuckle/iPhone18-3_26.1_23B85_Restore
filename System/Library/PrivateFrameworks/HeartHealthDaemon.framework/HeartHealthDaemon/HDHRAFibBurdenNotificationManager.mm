@interface HDHRAFibBurdenNotificationManager
+ (id)_buildNotificationForLackOfAFibBurdenWithCurrentDate:(id)date expirationDate:(id)expirationDate shouldForwardToWatch:(BOOL)watch uuid:(id)uuid;
+ (id)_generateDateRangeStringForAnalysisSampleWithStartDate:(id)date endDate:(id)endDate calendar:(id)calendar isUnitTesting:(BOOL)testing;
+ (id)_julianDayFromDate:(id)date calendar:(id)calendar;
+ (id)_notificationBodyKeyForCurrentPercentageString:(id)string isCurrentValueClamped:(BOOL)clamped previousPercentageString:(id)percentageString isPreviousValueClamped:(BOOL)valueClamped;
- (HDHRAFibBurdenNotificationManager)initWithProfile:(id)profile;
- (HDHRAFibBurdenNotificationManager)initWithProfile:(id)profile modeDeterminer:(id)determiner notificationLastSentDateStore:(id)store calendarCache:(id)cache dateGenerator:(id)generator eventSubmissionManager:(id)manager;
- (id)_buildNotificationForMode:(id)mode;
- (id)_buildValueNotificationForMode:(id)mode currentDate:(id)date;
- (id)_generateExpirationDateWithCurrentDate:(id)date;
- (id)_userNotificationCenter;
- (void)_sendNotificationRequest:(id)request completion:(id)completion;
- (void)_sendNotificationWithMode:(id)mode completion:(id)completion;
@end

@implementation HDHRAFibBurdenNotificationManager

- (HDHRAFibBurdenNotificationManager)initWithProfile:(id)profile
{
  v4 = MEMORY[0x277CCD0A0];
  profileCopy = profile;
  v6 = objc_alloc_init(v4);
  v7 = [[HDHRAFibBurdenNotificationModeDeterminer alloc] initWithProfile:profileCopy calendarCache:v6];
  v8 = [MEMORY[0x277D10718] hdhr_aFibBurdenProtectedSyncedDomainForProfile:profileCopy];
  v9 = objc_alloc(MEMORY[0x277CCCFE8]);
  v10 = HKHRAFibBurdenLogForCategory();
  v11 = [v9 initWithLoggingCategory:v10 healthDataSource:profileCopy];
  v12 = [(HDHRAFibBurdenNotificationManager *)self initWithProfile:profileCopy modeDeterminer:v7 notificationLastSentDateStore:v8 calendarCache:v6 dateGenerator:&__block_literal_global_5 eventSubmissionManager:v11];

  return v12;
}

- (HDHRAFibBurdenNotificationManager)initWithProfile:(id)profile modeDeterminer:(id)determiner notificationLastSentDateStore:(id)store calendarCache:(id)cache dateGenerator:(id)generator eventSubmissionManager:(id)manager
{
  v35 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  determinerCopy = determiner;
  storeCopy = store;
  cacheCopy = cache;
  generatorCopy = generator;
  managerCopy = manager;
  v32.receiver = self;
  v32.super_class = HDHRAFibBurdenNotificationManager;
  v18 = [(HDHRAFibBurdenNotificationManager *)&v32 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_profile, profileCopy);
    v20 = MEMORY[0x22AACDB50](generatorCopy);
    dateGenerator = v19->_dateGenerator;
    v19->_dateGenerator = v20;

    objc_storeStrong(&v19->_eventSubmissionManager, manager);
    objc_storeStrong(&v19->_modeDeterminer, determiner);
    objc_storeStrong(&v19->_notificationLastSentDateStore, store);
    objc_storeStrong(&v19->_calendarCache, cache);
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

- (void)_sendNotificationWithMode:(id)mode completion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = [(HDHRAFibBurdenNotificationManager *)self _buildNotificationForMode:mode];
  if (v7)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74__HDHRAFibBurdenNotificationManager__sendNotificationWithMode_completion___block_invoke;
    v10[3] = &unk_27865FD68;
    v10[4] = self;
    v11 = completionCopy;
    [(HDHRAFibBurdenNotificationManager *)self _sendNotificationRequest:v7 completion:v10];
  }

  else
  {
    _HKInitializeLogging();
    v8 = HKHRAFibBurdenLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
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
  notificationManager = [WeakRetained notificationManager];

  return notificationManager;
}

- (id)_generateExpirationDateWithCurrentDate:(id)date
{
  calendarCache = self->_calendarCache;
  dateCopy = date;
  currentCalendar = [(HKCalendarCache *)calendarCache currentCalendar];
  v6 = [currentCalendar hk_dateByAddingDays:1 toDate:dateCopy];

  return v6;
}

- (void)_sendNotificationRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__HDHRAFibBurdenNotificationManager__sendNotificationRequest_completion___block_invoke;
  block[3] = &unk_278660468;
  block[4] = self;
  v11 = requestCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = requestCopy;
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

- (id)_buildNotificationForMode:(id)mode
{
  v19 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  v5 = (*(self->_dateGenerator + 2))();
  type = [modeCopy type];
  switch(type)
  {
    case 3:
      v10 = objc_opt_class();
      v11 = [(HDHRAFibBurdenNotificationManager *)self _generateExpirationDateWithCurrentDate:v5];
      shouldForwardToWatch = [modeCopy shouldForwardToWatch];
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      v9 = [v10 _buildNotificationForLackOfAFibBurdenWithCurrentDate:v5 expirationDate:v11 shouldForwardToWatch:shouldForwardToWatch uuid:uUIDString];

      break;
    case 2:
      _HKInitializeLogging();
      v7 = HKHRAFibBurdenLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138543362;
        selfCopy2 = self;
        v8 = "[%{public}@] Preparing notification with current and previous value";
        goto LABEL_8;
      }

LABEL_9:

      v9 = [(HDHRAFibBurdenNotificationManager *)self _buildValueNotificationForMode:modeCopy currentDate:v5];
      break;
    case 1:
      _HKInitializeLogging();
      v7 = HKHRAFibBurdenLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138543362;
        selfCopy2 = self;
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

- (id)_buildValueNotificationForMode:(id)mode currentDate:(id)date
{
  modeCopy = mode;
  dateCopy = date;
  currentPercentage = [modeCopy currentPercentage];
  if (!currentPercentage)
  {
    goto LABEL_8;
  }

  v9 = currentPercentage;
  currentValueClamped = [modeCopy currentValueClamped];
  if (!currentValueClamped)
  {
    goto LABEL_7;
  }

  v11 = currentValueClamped;
  currentValueDateInterval = [modeCopy currentValueDateInterval];
  if (!currentValueDateInterval)
  {

LABEL_7:
    goto LABEL_8;
  }

  v13 = currentValueDateInterval;
  currentValueUUID = [modeCopy currentValueUUID];

  if (currentValueUUID)
  {
    v15 = objc_opt_class();
    currentPercentage2 = [modeCopy currentPercentage];
    currentValueClamped2 = [modeCopy currentValueClamped];
    bOOLValue = [currentValueClamped2 BOOLValue];
    previousPercentage = [modeCopy previousPercentage];
    previousValueClamped = [modeCopy previousValueClamped];
    bOOLValue2 = [previousValueClamped BOOLValue];
    currentValueDateInterval2 = [modeCopy currentValueDateInterval];
    startDate = [currentValueDateInterval2 startDate];
    currentValueDateInterval3 = [modeCopy currentValueDateInterval];
    endDate = [currentValueDateInterval3 endDate];
    v18 = [(HDHRAFibBurdenNotificationManager *)self _generateExpirationDateWithCurrentDate:dateCopy];
    currentValueUUID2 = [modeCopy currentValueUUID];
    uUIDString = [currentValueUUID2 UUIDString];
    currentCalendar = [(HKCalendarCache *)self->_calendarCache currentCalendar];
    v22 = [v15 _buildNotificationForAFibBurdenCurrentPercentage:currentPercentage2 isCurrentValueClamped:bOOLValue previousPercentage:previousPercentage isPreviousValueClamped:bOOLValue2 startDate:startDate endDate:endDate currentDate:dateCopy expirationDate:v18 uuid:uUIDString calendar:currentCalendar];

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

+ (id)_notificationBodyKeyForCurrentPercentageString:(id)string isCurrentValueClamped:(BOOL)clamped previousPercentageString:(id)percentageString isPreviousValueClamped:(BOOL)valueClamped
{
  valueClampedCopy = valueClamped;
  clampedCopy = clamped;
  stringCopy = string;
  percentageStringCopy = percentageString;
  if (percentageStringCopy)
  {
    if (clampedCopy)
    {
      v11 = @"AFIB_BURDEN_TWO_WEEK_NOTIFICATION_BODY_FIRST_CLAMPED_SECOND_PERCENT";
      v12 = @"AFIB_BURDEN_TWO_WEEK_NOTIFICATION_BODY_FIRST_CLAMPED_SECOND_CLAMPED_SAME";
      v13 = !valueClampedCopy;
    }

    else
    {
      if (valueClampedCopy)
      {
        v14 = @"AFIB_BURDEN_TWO_WEEK_NOTIFICATION_BODY_FIRST_PERCENT_SECOND_CLAMPED";
        goto LABEL_11;
      }

      v15 = [stringCopy isEqualToString:percentageStringCopy];
      v11 = @"AFIB_BURDEN_TWO_WEEK_NOTIFICATION_BODY_FIRST_PERCENT_SECOND_PERCENT";
      v12 = @"AFIB_BURDEN_TWO_WEEK_NOTIFICATION_BODY_FIRST_PERCENT_SECOND_PERCENT_SAME";
      v13 = v15 == 0;
    }
  }

  else
  {
    v11 = @"AFIB_BURDEN_SINGLE_WEEK_NOTIFICATION_BODY_PERCENT";
    v12 = @"AFIB_BURDEN_SINGLE_WEEK_NOTIFICATION_BODY_CLAMPED";
    v13 = !clampedCopy;
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

+ (id)_buildNotificationForLackOfAFibBurdenWithCurrentDate:(id)date expirationDate:(id)expirationDate shouldForwardToWatch:(BOOL)watch uuid:(id)uuid
{
  watchCopy = watch;
  v9 = *MEMORY[0x277D13050];
  v10 = MEMORY[0x277CCACA8];
  uuidCopy = uuid;
  expirationDateCopy = expirationDate;
  dateCopy = date;
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
  [v17 setDate:dateCopy];

  [v17 setExpirationDate:expirationDateCopy];
  v19 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:MEMORY[0x277CBEC10]];
  v20 = [MEMORY[0x277CCD0C0] quantityTypeForIdentifier:*MEMORY[0x277CCC950]];
  v21 = _HKCreateURLForSampleType();
  absoluteString = [v21 absoluteString];
  [v19 setObject:absoluteString forKeyedSubscript:*MEMORY[0x277CCE4E0]];

  [v19 setObject:&unk_283CD27E8 forKeyedSubscript:*MEMORY[0x277CCE4D0]];
  [v19 setObject:@"AFIB_BURDEN_LACK_OF_SAMPLE_NOTIFICATION_BODY" forKeyedSubscript:@"watchBodyKey"];
  v23 = [MEMORY[0x277CCABB0] numberWithInt:!watchCopy];
  [v19 setObject:v23 forKeyedSubscript:*MEMORY[0x277CCE4D8]];

  [v17 setUserInfo:v19];
  v24 = [MEMORY[0x277CE1FC0] requestWithIdentifier:uuidCopy content:v17 trigger:0];

  return v24;
}

+ (id)_generateDateRangeStringForAnalysisSampleWithStartDate:(id)date endDate:(id)endDate calendar:(id)calendar isUnitTesting:(BOOL)testing
{
  testingCopy = testing;
  calendarCopy = calendar;
  v10 = MEMORY[0x277CCA978];
  endDateCopy = endDate;
  dateCopy = date;
  v13 = objc_alloc_init(v10);
  if (testingCopy)
  {
    locale = [calendarCopy locale];
    [v13 setLocale:locale];

    timeZone = [calendarCopy timeZone];
    [v13 setTimeZone:timeZone];
  }

  [v13 setDateStyle:2];
  [v13 setTimeStyle:0];
  v16 = [endDateCopy dateByAddingTimeInterval:-1.0];

  v17 = [v13 stringFromDate:dateCopy toDate:v16];

  return v17;
}

+ (id)_julianDayFromDate:(id)date calendar:(id)calendar
{
  calendarCopy = calendar;
  dateCopy = date;
  v7 = [dateCopy hk_dayIndexWithCalendar:calendarCopy];
  v8 = [calendarCopy components:32 fromDate:dateCopy];

  hour = [v8 hour];
  v10 = [MEMORY[0x277CBEAA8] hk_dateOnDayIndex:v7 atHour:hour calendar:calendarCopy];

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