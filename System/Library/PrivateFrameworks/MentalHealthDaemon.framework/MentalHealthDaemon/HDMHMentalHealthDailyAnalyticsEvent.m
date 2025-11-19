@interface HDMHMentalHealthDailyAnalyticsEvent
- (HDMHMentalHealthDailyAnalyticsEvent)initWithProfile:(id)a3 settingsManager:(id)a4 userDefaults:(id)a5;
- (id)_IHAGatedDemographicsFieldsWithDataSource:(id)a3;
- (id)_determineDaysSinceLastSampleWithSampleType:(id)a3 dataSource:(id)a4;
- (id)_enumeratorForPastNDays:(int64_t)a3 withDataSource:(id)a4 forSampleType:(id)a5 withExtraPredicate:(id)a6;
- (id)_featureStatusForFeatureIdentifier:(id)a3 dataSource:(id)a4 error:(id *)a5;
- (id)_fetchDeviceContextAnalytics;
- (id)_hasLaunchedHealthAppInInterval:(int64_t)a3 withDataSource:(id)a4;
- (id)_hasLoggedStateOfMindInPastNDays:(int64_t)a3 withDataSource:(id)a4;
- (id)_isFeatureEnabledForFeatureIdentifier:(id)a3 dataSource:(id)a4 featureAvailabilityContext:(id)a5;
- (id)_isFeatureOnboardedForFeatureIdentifier:(id)a3 dataSource:(id)a4;
- (id)_mostRecentAssessmentCategories;
- (id)_mostRecentAssessmentCategoryWithSampleType:(id)a3;
- (id)_mostRecentStateOfMindPleasantnessRatings;
- (id)_mostRecentStateOfMindWithReflectiveInterval:(int64_t)a3;
- (id)_numAssessmentsCompletedWithDataSource:(id)a3;
- (id)_numAssessmentsInPastNDays:(int64_t)a3 withDataSource:(id)a4;
- (id)_numDailyStateOfMindLogsInPastNDays:(int64_t)a3 withDataSource:(id)a4;
- (id)_numDaysStateOfMindLoggedInPast14DaysWithDataSource:(id)a3;
- (id)_numDaysStateOfMindLoggedInPast30DaysWithDataSource:(id)a3;
- (id)_numDaysStateOfMindLoggedInPastDayWithDataSource:(id)a3;
- (id)_stateOfMindDaySummaryEnumeratorForPastNDays:(int64_t)a3 withDataSource:(id)a4;
- (id)_weeksSinceLastHealthAppLaunchWithDataSource:(id)a3;
- (id)_weeksSinceOnboardingWithDataSource:(id)a3;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
- (int64_t)_bucketedWeeksSinceDate:(id)a3 dataSource:(id)a4;
- (int64_t)numberOfDaysBetweenStartDate:(id)a3 endDate:(id)a4 withCalendar:(id)a5;
@end

@implementation HDMHMentalHealthDailyAnalyticsEvent

- (HDMHMentalHealthDailyAnalyticsEvent)initWithProfile:(id)a3 settingsManager:(id)a4 userDefaults:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HDMHMentalHealthDailyAnalyticsEvent;
  v11 = [(HDMHMentalHealthDailyAnalyticsEvent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_profile, v8);
    objc_storeStrong(&v12->_settingsManager, a4);
    objc_storeStrong(&v12->_userDefaults, a5);
  }

  return v12;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277CBEB38];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 environmentDataSource];
  v9 = [v8 activePairedDeviceProductType];
  [v7 setObject:v9 forKeyedSubscript:@"activePairedWatchType"];

  v10 = [v6 environmentDataSource];
  v11 = [v10 activePairedDeviceOSBuildNumber];
  [v7 setObject:v11 forKeyedSubscript:*MEMORY[0x277CCB7B0]];

  v12 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _fetchDeviceContextAnalytics];
  [v7 addEntriesFromDictionary:v12];

  v13 = MEMORY[0x277CCABB0];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v15 = [WeakRetained notificationManager];
  v16 = [v13 numberWithBool:{objc_msgSend(v15, "areHealthNotificationsAuthorized")}];
  [v7 setObject:v16 forKeyedSubscript:*MEMORY[0x277CCB7C8]];

  v17 = MEMORY[0x277CCABB0];
  v18 = [v6 environmentDataSource];
  v19 = [v17 numberWithBool:{objc_msgSend(v18, "isImproveHealthAndActivityEnabled")}];
  [v7 setObject:v19 forKeyedSubscript:*MEMORY[0x277CCB7F8]];

  v20 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _hasLaunchedHealthAppInInterval:7 withDataSource:v6];
  [v7 setObject:v20 forKeyedSubscript:@"hasLaunchedHealthAppInLastWeek"];

  v21 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _hasLaunchedHealthAppInInterval:30 withDataSource:v6];
  [v7 setObject:v21 forKeyedSubscript:@"hasLaunchedHealthAppInLastMonth"];

  v22 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _weeksSinceLastHealthAppLaunchWithDataSource:v6];
  [v7 setObject:v22 forKeyedSubscript:@"weeksSinceLastHealthAppLaunch"];

  v23 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _isFeatureOnboardedForFeatureIdentifier:*MEMORY[0x277CCC100] dataSource:v6];
  [v7 setObject:v23 forKeyedSubscript:@"isOnboarded"];

  v24 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _weeksSinceOnboardingWithDataSource:v6];
  [v7 setObject:v24 forKeyedSubscript:@"weeksSinceOnboarded"];

  v25 = *MEMORY[0x277CCC0C0];
  v26 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _isFeatureOnboardedForFeatureIdentifier:*MEMORY[0x277CCC0C0] dataSource:v6];
  [v7 setObject:v26 forKeyedSubscript:@"wereAssessmentsDelivered"];

  v27 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMHSettingsManager hasAnyStateOfMindReminderEnabled](self->_settingsManager, "hasAnyStateOfMindReminderEnabled")}];
  [v7 setObject:v27 forKeyedSubscript:@"hasStateOfMindNotificationEnabled"];

  v28 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMHSettingsManager middayNotificationsEnabled](self->_settingsManager, "middayNotificationsEnabled")}];
  [v7 setObject:v28 forKeyedSubscript:@"hasStateOfMindMidDayNotificationEnabled"];

  v29 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKMHSettingsManager endOfDayNotificationsEnabled](self->_settingsManager, "endOfDayNotificationsEnabled")}];
  [v7 setObject:v29 forKeyedSubscript:@"hasStateOfMindEndOfDayNotificationEnabled"];

  v30 = MEMORY[0x277CCABB0];
  v31 = [(HKMHSettingsManager *)self->_settingsManager customReminderSchedule];
  v32 = [v30 numberWithInt:{objc_msgSend(v31, "count") != 0}];
  [v7 setObject:v32 forKeyedSubscript:@"hasStateOfMindCustomNotificationEnabled"];

  v33 = *MEMORY[0x277CCBEA0];
  v34 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _isFeatureEnabledForFeatureIdentifier:v25 dataSource:v6 featureAvailabilityContext:*MEMORY[0x277CCBEA0]];
  [v7 setObject:v34 forKeyedSubscript:@"hasScheduledQuestionnairesEnabled"];

  v35 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _isFeatureEnabledForFeatureIdentifier:*MEMORY[0x277CCC108] dataSource:v6 featureAvailabilityContext:v33];
  [v7 setObject:v35 forKeyedSubscript:@"hasUnpleasantLoggingPatternsEnabled"];

  v36 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _hasLoggedStateOfMindInPastNDays:30 withDataSource:v6];
  [v7 setObject:v36 forKeyedSubscript:@"hasLoggedStateOfMindInPast30Days"];

  v37 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _hasLoggedStateOfMindInPastNDays:7 withDataSource:v6];

  [v7 setObject:v37 forKeyedSubscript:@"hasLoggedStateOfMindInPast7Days"];

  return v7;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277CBEB38];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _IHAGatedDemographicsFieldsWithDataSource:v6];
  [v7 addEntriesFromDictionary:v8];

  v9 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _numDaysStateOfMindLoggedInPast14DaysWithDataSource:v6];
  [v7 addEntriesFromDictionary:v9];

  v10 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _numDaysStateOfMindLoggedInPast30DaysWithDataSource:v6];
  [v7 addEntriesFromDictionary:v10];

  v11 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _numDaysStateOfMindLoggedInPastDayWithDataSource:v6];
  [v7 addEntriesFromDictionary:v11];

  v12 = [MEMORY[0x277CCD8D8] stateOfMindType];
  v13 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _determineDaysSinceLastSampleWithSampleType:v12 dataSource:v6];
  [v7 setObject:v13 forKeyedSubscript:@"daysSinceLastStateOfMindLogged"];

  v14 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _mostRecentStateOfMindPleasantnessRatings];
  [v7 addEntriesFromDictionary:v14];

  v15 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _numAssessmentsCompletedWithDataSource:v6];
  [v7 addEntriesFromDictionary:v15];

  v16 = [MEMORY[0x277CCD8F0] scoredAssessmentTypeForIdentifier:*MEMORY[0x277CCCD60]];
  v17 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _determineDaysSinceLastSampleWithSampleType:v16 dataSource:v6];

  v18 = [MEMORY[0x277CCD8F0] scoredAssessmentTypeForIdentifier:*MEMORY[0x277CCCD68]];
  v19 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _determineDaysSinceLastSampleWithSampleType:v18 dataSource:v6];

  if (v17 >= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v17;
  }

  v21 = v20;
  [v7 setObject:v21 forKeyedSubscript:@"daysSinceLastAssessment"];

  v22 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _mostRecentAssessmentCategories];
  [v7 addEntriesFromDictionary:v22];

  return v7;
}

- (id)_fetchDeviceContextAnalytics
{
  v32[4] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v3 = [WeakRetained deviceContextManager];
  v4 = [v3 numberOfDeviceContextsPerDeviceType:0];

  if (v4)
  {
    v5 = [v4 objectForKeyedSubscript:&unk_2869D07F0];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = &unk_2869D0808;
    }

    v8 = v7;

    v9 = [v4 objectForKeyedSubscript:&unk_2869D0820];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = &unk_2869D0808;
    }

    v12 = v11;

    v13 = [v4 objectForKeyedSubscript:&unk_2869D0838];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = &unk_2869D0808;
    }

    v16 = v15;

    v17 = [v4 objectForKeyedSubscript:&unk_2869D0850];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = &unk_2869D0808;
    }

    v20 = v19;

    v21 = *MEMORY[0x277CCB7E8];
    v27[0] = *MEMORY[0x277CCB7D8];
    v27[1] = v21;
    v30[0] = v8;
    v30[1] = v16;
    v28 = *MEMORY[0x277CCB7F0];
    v29 = v28;
    v30[2] = v12;
    v30[3] = v20;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v27 count:4];
  }

  else
  {
    v23 = *MEMORY[0x277CCB7E8];
    v31[0] = *MEMORY[0x277CCB7D8];
    v31[1] = v23;
    v32[0] = &unk_2869D07D8;
    v32[1] = &unk_2869D07D8;
    v24 = *MEMORY[0x277CCB7E0];
    v31[2] = *MEMORY[0x277CCB7F0];
    v31[3] = v24;
    v32[2] = &unk_2869D07D8;
    v32[3] = &unk_2869D07D8;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:4];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)_IHAGatedDemographicsFieldsWithDataSource:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [v3 healthDataSource];
  v6 = [v5 biologicalSexWithError:0];

  if (v6)
  {
    v7 = HKAnalyticsPropertyValueForBiologicalSex();
    [v4 setObject:v7 forKeyedSubscript:*MEMORY[0x277CCB7D0]];
  }

  else
  {
    [v4 setObject:*MEMORY[0x277CCB800] forKeyedSubscript:*MEMORY[0x277CCB7D0]];
  }

  v8 = [v3 healthDataSource];
  v9 = [v3 environmentDataSource];
  v10 = [v9 currentDate];
  v11 = [v8 ageWithCurrentDate:v10 error:0];

  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = &unk_2869D07D8;
  }

  [v4 setObject:v12 forKeyedSubscript:*MEMORY[0x277CCB7C0]];
  v13 = [v4 copy];

  return v13;
}

- (id)_featureStatusForFeatureIdentifier:(id)a3 dataSource:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [a4 healthDataSource];
  v9 = [v8 featureStatusProviderForIdentifier:v7];

  v10 = [v9 featureStatusWithError:a5];

  return v10;
}

- (id)_isFeatureOnboardedForFeatureIdentifier:(id)a3 dataSource:(id)a4
{
  v4 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _featureStatusForFeatureIdentifier:a3 dataSource:a4 error:0];
  v5 = v4;
  if (v4)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "isOnboardingRecordPresent")}];
  }

  else
  {
    v6 = *MEMORY[0x277CCB798];
  }

  v7 = v6;

  return v7;
}

- (id)_isFeatureEnabledForFeatureIdentifier:(id)a3 dataSource:(id)a4 featureAvailabilityContext:(id)a5
{
  v8 = a5;
  v9 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _featureStatusForFeatureIdentifier:a3 dataSource:a4 error:0];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectForKeyedSubscript:v8];
    v12 = [v11 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF38]];

    v13 = [MEMORY[0x277CCABB0] numberWithBool:v12];
  }

  else
  {
    v13 = *MEMORY[0x277CCB798];
  }

  v14 = v13;

  return v14;
}

- (id)_hasLaunchedHealthAppInInterval:(int64_t)a3 withDataSource:(id)a4
{
  v6 = a4;
  v7 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _healthAppLastOpenedDate];
  if (v7)
  {
    v8 = [v6 environmentDataSource];
    v9 = [v8 currentDate];

    v10 = [v6 environmentDataSource];
    v11 = [v10 calendarCache];
    v12 = [v11 currentCalendar];

    v13 = [(HDMHMentalHealthDailyAnalyticsEvent *)self numberOfDaysBetweenStartDate:v7 endDate:v9 withCalendar:v12];
    v14 = v13 > -1 && v13 <= a3;
    v15 = MEMORY[0x277CBEC28];
    if (v14)
    {
      v15 = MEMORY[0x277CBEC38];
    }

    v16 = v15;
  }

  else
  {
    v16 = *MEMORY[0x277CCB798];
  }

  return v16;
}

- (id)_weeksSinceLastHealthAppLaunchWithDataSource:(id)a3
{
  v4 = a3;
  v5 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _healthAppLastOpenedDate];
  if (v5)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDMHMentalHealthDailyAnalyticsEvent _bucketedWeeksSinceDate:dataSource:](self, "_bucketedWeeksSinceDate:dataSource:", v5, v4)}];
  }

  else
  {
    v6 = *MEMORY[0x277CCB7A0];
  }

  v7 = v6;

  return v7;
}

- (id)_stateOfMindDaySummaryEnumeratorForPastNDays:(int64_t)a3 withDataSource:(id)a4
{
  v6 = a4;
  v7 = [v6 environmentDataSource];
  v8 = [v7 currentDate];

  v9 = [v6 environmentDataSource];

  v10 = [v9 calendarCache];
  v11 = [v10 currentCalendar];

  v12 = [v8 hk_dayIndexWithCalendar:v11] - a3;
  v13 = [HDMHDaySummaryEnumerator alloc];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  LOBYTE(v17) = 1;
  v15 = [(HDMHDaySummaryEnumerator *)v13 initWithProfile:WeakRetained dayIndexRange:v12 gregorianCalendar:a3 predicate:v11 pendingDailyStateOfMind:0 ascending:0, v17];

  return v15;
}

- (id)_numDaysStateOfMindLoggedInPast14DaysWithDataSource:(id)a3
{
  v27[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _stateOfMindDaySummaryEnumeratorForPastNDays:14 withDataSource:v4];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v14[5] = &v16;
  v15 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __91__HDMHMentalHealthDailyAnalyticsEvent__numDaysStateOfMindLoggedInPast14DaysWithDataSource___block_invoke;
  v14[3] = &unk_2798AAEF0;
  v14[4] = &v20;
  v6 = [v5 enumerateWithError:&v15 handler:v14];
  v7 = v15;
  if (v6)
  {
    v24[0] = @"numDaysDailyStateOfMindLoggedPast2Weeks";
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:v21[3]];
    v25[0] = v8;
    v24[1] = @"numDaysMomentaryStateOfMindLoggedPast2Weeks";
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:v17[3]];
    v25[1] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  }

  else
  {
    v11 = *MEMORY[0x277CCB7A0];
    v26[0] = @"numDaysDailyStateOfMindLoggedPast2Weeks";
    v26[1] = @"numDaysMomentaryStateOfMindLoggedPast2Weeks";
    v27[0] = v11;
    v27[1] = v11;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

void __91__HDMHMentalHealthDailyAnalyticsEvent__numDaysStateOfMindLoggedInPast14DaysWithDataSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 dailyStateOfMind];

  if (v4)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  v5 = [v3 momentaryStatesOfMind];

  v6 = [v5 count];
  if (v6)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

- (id)_numDaysStateOfMindLoggedInPast30DaysWithDataSource:(id)a3
{
  v41[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _stateOfMindDaySummaryEnumeratorForPastNDays:30 withDataSource:v4];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0x7FFFFFFFFFFFFFFFLL;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v16[8] = &v22;
  v17 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __91__HDMHMentalHealthDailyAnalyticsEvent__numDaysStateOfMindLoggedInPast30DaysWithDataSource___block_invoke;
  v16[3] = &unk_2798AAF18;
  v16[4] = &v18;
  v16[5] = &v34;
  v16[6] = &v30;
  v16[7] = &v26;
  v6 = [v5 enumerateWithError:&v17 handler:v16];
  v7 = v17;
  if (v19[3] <= 29)
  {
    v23[3] = 0;
  }

  if (v6)
  {
    v38[0] = @"numDaysDailyStateOfMindLoggedPast30Days";
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:v35[3]];
    v39[0] = v8;
    v38[1] = @"numDaysMomentaryStateOfMindLoggedPast30Days";
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:v31[3]];
    v39[1] = v9;
    v38[2] = @"numMomentaryStateOfMindLogsPerDayPast30DaysMax";
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:v27[3]];
    v39[2] = v10;
    v38[3] = @"numMomentaryStateOfMindLogsPerDayPast30DaysMin";
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:v23[3]];
    v39[3] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:4];
  }

  else
  {
    v13 = *MEMORY[0x277CCB7A0];
    v40[0] = @"numDaysDailyStateOfMindLoggedPast30Days";
    v40[1] = @"numDaysMomentaryStateOfMindLoggedPast30Days";
    v41[0] = v13;
    v41[1] = v13;
    v40[2] = @"numMomentaryStateOfMindLogsPerDayPast30DaysMax";
    v40[3] = @"numMomentaryStateOfMindLogsPerDayPast30DaysMin";
    v41[2] = v13;
    v41[3] = v13;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:4];
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v34, 8);

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

void __91__HDMHMentalHealthDailyAnalyticsEvent__numDaysStateOfMindLoggedInPast30DaysWithDataSource___block_invoke(void *a1, void *a2)
{
  ++*(*(a1[4] + 8) + 24);
  v3 = a2;
  v4 = [v3 dailyStateOfMind];

  if (v4)
  {
    ++*(*(a1[5] + 8) + 24);
  }

  v5 = [v3 momentaryStatesOfMind];

  v6 = [v5 count];
  if (v6)
  {
    ++*(*(a1[6] + 8) + 24);
  }

  v7 = *(a1[7] + 8);
  v8 = *(v7 + 24);
  if (v8 <= v6)
  {
    v8 = v6;
  }

  *(v7 + 24) = v8;
  v9 = *(a1[8] + 8);
  v10 = *(v9 + 24);
  if (v10 >= v6)
  {
    v10 = v6;
  }

  *(v9 + 24) = v10;
}

- (id)_numDaysStateOfMindLoggedInPastDayWithDataSource:(id)a3
{
  v23[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _stateOfMindDaySummaryEnumeratorForPastNDays:1 withDataSource:v4];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v14[4] = &v16;
  v15 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __88__HDMHMentalHealthDailyAnalyticsEvent__numDaysStateOfMindLoggedInPastDayWithDataSource___block_invoke;
  v14[3] = &unk_2798AAF40;
  v6 = [v5 enumerateWithError:&v15 handler:v14];
  v7 = v15;
  v8 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _numDailyStateOfMindLogsInPastNDays:1 withDataSource:v4];
  if (v6)
  {
    v20[0] = @"numMomentaryStateOfMindLogsPastDay";
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:v17[3]];
    v20[1] = @"numDailyStateOfMindLogsPastDay";
    v21[0] = v9;
    v21[1] = v8;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  }

  else
  {
    v11 = *MEMORY[0x277CCB7A0];
    v22[0] = @"numMomentaryStateOfMindLogsPastDay";
    v22[1] = @"numDailyStateOfMindLogsPastDay";
    v23[0] = v11;
    v23[1] = v11;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  }

  _Block_object_dispose(&v16, 8);
  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

void __88__HDMHMentalHealthDailyAnalyticsEvent__numDaysStateOfMindLoggedInPastDayWithDataSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 momentaryStatesOfMind];
  *(*(*(a1 + 32) + 8) + 24) = [v3 count];
}

- (id)_hasLoggedStateOfMindInPastNDays:(int64_t)a3 withDataSource:(id)a4
{
  v6 = a4;
  v7 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _stateOfMindDaySummaryEnumeratorForPastNDays:a3 withDataSource:v6];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__4;
  v18 = __Block_byref_object_dispose__4;
  v19 = MEMORY[0x277CBEC28];
  v12[4] = &v14;
  v13 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __87__HDMHMentalHealthDailyAnalyticsEvent__hasLoggedStateOfMindInPastNDays_withDataSource___block_invoke;
  v12[3] = &unk_2798AAF40;
  LODWORD(self) = [v7 enumerateWithError:&v13 handler:v12];
  v8 = v13;
  v9 = (v15 + 5);
  if (!self)
  {
    v9 = MEMORY[0x277CCB798];
  }

  v10 = *v9;

  _Block_object_dispose(&v14, 8);

  return v10;
}

void __87__HDMHMentalHealthDailyAnalyticsEvent__hasLoggedStateOfMindInPastNDays_withDataSource___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 dailyStateOfMind];
  if (v3)
  {
  }

  else
  {
    v4 = [v7 momentaryStatesOfMind];

    if (!v4)
    {
      goto LABEL_5;
    }
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = MEMORY[0x277CBEC38];

LABEL_5:
}

- (id)_enumeratorForPastNDays:(int64_t)a3 withDataSource:(id)a4 forSampleType:(id)a5 withExtraPredicate:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = [v12 environmentDataSource];
  v14 = [v13 calendarCache];
  v15 = [v14 currentCalendar];

  v16 = [v12 environmentDataSource];

  v17 = [v16 currentDate];

  v18 = [v15 dateByAddingUnit:16 value:-a3 toDate:v17 options:0];
  v19 = objc_alloc(MEMORY[0x277CCA970]);
  v20 = [v19 initWithStartDate:v18 duration:(*MEMORY[0x277CCB828] * a3)];
  v21 = [objc_msgSend(v11 "dataObjectClass")];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v23 = [v21 entityEnumeratorWithProfile:WeakRetained];

  v24 = MEMORY[0x277D10B70];
  v25 = HDSampleEntityPredicateForDateInterval();

  v26 = [v24 compoundPredicateWithPredicate:v25 otherPredicate:v10];

  [v23 setPredicate:v26];

  return v23;
}

- (id)_numAssessmentsInPastNDays:(int64_t)a3 withDataSource:(id)a4
{
  v26[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [MEMORY[0x277CCD8F0] scoredAssessmentTypeForIdentifier:*MEMORY[0x277CCCD68]];
  v8 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _enumeratorForPastNDays:a3 withDataSource:v6 forSampleType:v7 withExtraPredicate:0];

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v15[5] = &v17;
  v16 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __81__HDMHMentalHealthDailyAnalyticsEvent__numAssessmentsInPastNDays_withDataSource___block_invoke;
  v15[3] = &unk_2798AAF68;
  v15[4] = &v21;
  LOBYTE(v7) = [v8 enumerateWithError:&v16 handler:v15];
  v9 = v16;
  if (v7)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:v22[3]];
    v25[0] = v10;
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:v18[3]];
    v25[1] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  }

  else
  {
    v26[0] = *MEMORY[0x277CCB7A0];
    v26[1] = v26[0];
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

uint64_t __81__HDMHMentalHealthDailyAnalyticsEvent__numAssessmentsInPastNDays_withDataSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return 1;
}

- (id)_numAssessmentsCompletedWithDataSource:(id)a3
{
  v15[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _numAssessmentsInPastNDays:30 withDataSource:v4];
  v6 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _numAssessmentsInPastNDays:180 withDataSource:v4];

  v14[0] = @"numDepressionAssessmentsCompletedPast30Days";
  v7 = [v5 objectAtIndexedSubscript:0];
  v15[0] = v7;
  v14[1] = @"numAnxietyAssessmentsCompletedPast30Days";
  v8 = [v5 objectAtIndexedSubscript:1];
  v15[1] = v8;
  v14[2] = @"numDepressionAssessmentsCompletedPast180Days";
  v9 = [v6 objectAtIndexedSubscript:0];
  v15[2] = v9;
  v14[3] = @"numAnxietyAssessmentsCompletedPast180Days";
  v10 = [v6 objectAtIndexedSubscript:1];
  v15[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_numDailyStateOfMindLogsInPastNDays:(int64_t)a3 withDataSource:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [MEMORY[0x277D10880] predicateForReflectiveInterval:2 equals:1];
  v8 = [MEMORY[0x277CCD8D8] stateOfMindType];
  v9 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _enumeratorForPastNDays:a3 withDataSource:v6 forSampleType:v8 withExtraPredicate:v7];

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v18[4] = &v20;
  v19 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __90__HDMHMentalHealthDailyAnalyticsEvent__numDailyStateOfMindLogsInPastNDays_withDataSource___block_invoke;
  v18[3] = &unk_2798AAF90;
  v10 = [v9 enumerateWithError:&v19 handler:v18];
  v11 = v19;
  if (v11)
  {
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC2F0];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      [(HDMHMentalHealthDailyAnalyticsEvent *)v13 _numDailyStateOfMindLogsInPastNDays:v11 withDataSource:v24, v12];
    }
  }

  if (v10)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:v21[3]];
  }

  else
  {
    v14 = *MEMORY[0x277CCB7A0];
  }

  v15 = v14;

  _Block_object_dispose(&v20, 8);
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __90__HDMHMentalHealthDailyAnalyticsEvent__numDailyStateOfMindLogsInPastNDays_withDataSource___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return 1;
}

- (id)_determineDaysSinceLastSampleWithSampleType:(id)a3 dataSource:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 environmentDataSource];
  v9 = [v8 currentDate];

  v10 = [v6 environmentDataSource];

  v11 = [v10 calendarCache];
  v12 = [v11 currentCalendar];

  v13 = MEMORY[0x277D10848];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v22 = 0;
  v15 = [v13 mostRecentSampleWithType:v7 profile:WeakRetained encodingOptions:0 predicate:0 anchor:0 error:&v22];

  v16 = v22;
  if (v16 && (_HKInitializeLogging(), v17 = *MEMORY[0x277CCC2F0], os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR)))
  {
    [HDMHMentalHealthDailyAnalyticsEvent _determineDaysSinceLastSampleWithSampleType:v17 dataSource:?];
    if (v15)
    {
      goto LABEL_4;
    }
  }

  else if (v15)
  {
LABEL_4:
    v18 = MEMORY[0x277CCABB0];
    v19 = [v15 startDate];
    v20 = [v18 numberWithInteger:{-[HDMHMentalHealthDailyAnalyticsEvent numberOfDaysBetweenStartDate:endDate:withCalendar:](self, "numberOfDaysBetweenStartDate:endDate:withCalendar:", v19, v9, v12)}];

    goto LABEL_7;
  }

  v20 = *MEMORY[0x277CCB7A0];
LABEL_7:

  return v20;
}

- (int64_t)numberOfDaysBetweenStartDate:(id)a3 endDate:(id)a4 withCalendar:(id)a5
{
  v5 = [a5 components:16 fromDate:a3 toDate:a4 options:0];
  v6 = [v5 day];

  return v6;
}

- (id)_mostRecentAssessmentCategories
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCD8F0] scoredAssessmentTypeForIdentifier:*MEMORY[0x277CCCD68]];
  v4 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _mostRecentAssessmentCategoryWithSampleType:v3];

  v5 = [MEMORY[0x277CCD8F0] scoredAssessmentTypeForIdentifier:*MEMORY[0x277CCCD60]];
  v6 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _mostRecentAssessmentCategoryWithSampleType:v5];

  v10[0] = @"mostRecentDepressionsAssessmentCategory";
  v10[1] = @"mostRecentAnxietyAssessmentCategory";
  v11[0] = v4;
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_mostRecentStateOfMindPleasantnessRatings
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _mostRecentStateOfMindWithReflectiveInterval:2];
  v4 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _mostRecentStateOfMindWithReflectiveInterval:1];
  v8[0] = @"mostRecentDailyPleasantnessRating";
  v8[1] = @"mostRecentMomentaryPleasantnessRating";
  v9[0] = v3;
  v9[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_weeksSinceOnboardingWithDataSource:(id)a3
{
  v4 = a3;
  v5 = [(HDMHMentalHealthDailyAnalyticsEvent *)self _featureStatusForFeatureIdentifier:*MEMORY[0x277CCC100] dataSource:v4 error:0];
  v6 = v5;
  if (v5)
  {
    if ([v5 isOnboardingRecordPresent])
    {
      v7 = MEMORY[0x277CCABB0];
      v8 = [v6 onboardingRecord];
      v9 = [v8 onboardingCompletion];
      v10 = [v9 completionDate];
      v11 = [v7 numberWithInteger:{-[HDMHMentalHealthDailyAnalyticsEvent _bucketedWeeksSinceDate:dataSource:](self, "_bucketedWeeksSinceDate:dataSource:", v10, v4)}];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = *MEMORY[0x277CCB798];
  }

  return v11;
}

- (int64_t)_bucketedWeeksSinceDate:(id)a3 dataSource:(id)a4
{
  v5 = a3;
  v6 = [a4 environmentDataSource];
  v7 = [v6 bucketedNumberOfWeeksSinceDate:v5];

  v8 = *MEMORY[0x277CCB7A0];
  if (v7)
  {
    v8 = v7;
  }

  v9 = v8;

  v10 = [v9 integerValue];
  return v10;
}

- (id)_mostRecentAssessmentCategoryWithSampleType:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D10848];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v18 = 0;
  v7 = [v5 mostRecentSampleWithType:v4 profile:WeakRetained encodingOptions:0 predicate:0 anchor:0 error:&v18];
  v8 = v18;

  if (v8)
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2F0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
    {
      v15 = v9;
      v16 = objc_opt_class();
      *buf = 138543874;
      v20 = v16;
      v21 = 2112;
      v22 = v4;
      v23 = 2112;
      v24 = v8;
      v17 = v16;
      _os_log_error_impl(&dword_258977000, v15, OS_LOG_TYPE_ERROR, "[%{public}@] Error retrieving last sample %@: %@", buf, 0x20u);
    }

LABEL_4:
    v10 = &stru_2869CE0C8;
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 risk];
    v11 = NSStringFromHKGAD7AssessmentRisk();
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _HKInitializeLogging();
      v14 = *MEMORY[0x277CCC2F0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
      {
        [HDMHMentalHealthDailyAnalyticsEvent _mostRecentAssessmentCategoryWithSampleType:v14];
      }

      goto LABEL_4;
    }

    [v7 risk];
    v11 = NSStringFromHKPHQ9AssessmentRisk();
  }

  v10 = v11;
LABEL_10:

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_mostRecentStateOfMindWithReflectiveInterval:(int64_t)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D10880] predicateForReflectiveInterval:?];
  v5 = MEMORY[0x277D10848];
  v6 = [MEMORY[0x277CCD8D8] stateOfMindType];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v19 = 0;
  v8 = [v5 mostRecentSampleWithType:v6 profile:WeakRetained encodingOptions:0 predicate:v4 anchor:0 error:&v19];
  v9 = v19;

  if (v9)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC2F0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      v12 = objc_opt_class();
      v13 = v12;
      v14 = NSStringFromHKStateOfMindReflectiveInterval();
      *buf = 138543874;
      v21 = v12;
      v22 = 2112;
      v23 = v14;
      v24 = 2112;
      v25 = v9;
      _os_log_error_impl(&dword_258977000, v11, OS_LOG_TYPE_ERROR, "[%{public}@] Error retrieving last state of mind sample %@: %@", buf, 0x20u);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 valenceClassification];
      v15 = NSStringFromHKStateOfMindValenceClassification();
      goto LABEL_9;
    }

    _HKInitializeLogging();
    v16 = *MEMORY[0x277CCC2F0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_ERROR))
    {
      [HDMHMentalHealthDailyAnalyticsEvent _mostRecentAssessmentCategoryWithSampleType:v16];
    }
  }

  v15 = &stru_2869CE0C8;
LABEL_9:

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)_numDailyStateOfMindLogsInPastNDays:(uint64_t)a3 withDataSource:(NSObject *)a4 .cold.1(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  *a3 = 138543618;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  v6 = a1;
  _os_log_error_impl(&dword_258977000, a4, OS_LOG_TYPE_ERROR, "[%{public}@] Error retrieving daily state of mind logs: %@", a3, 0x16u);
}

- (void)_determineDaysSinceLastSampleWithSampleType:(void *)a1 dataSource:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  OUTLINED_FUNCTION_0(&dword_258977000, v3, v4, "[%{public}@] Error retrieving days since last sample: %@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_mostRecentAssessmentCategoryWithSampleType:(void *)a1 .cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_class();
  v3 = OUTLINED_FUNCTION_1_0(v2);
  OUTLINED_FUNCTION_0(&dword_258977000, v4, v5, "[%{public}@] Retrieved sample of unexpected type: %{private}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

@end