@interface HDMCWristTemperatureDailyAnalyticsEvent
- (BOOL)_isDeviceWristTemperatureCompatible:(id)a3;
- (HDMCWristTemperatureDailyAnalyticsEvent)initWithProfile:(id)a3 analysisManager:(id)a4 settingsManager:(id)a5 sleepStore:(id)a6 wristDetectionSettingManager:(id)a7 privacyDefaults:(id)a8;
- (HDMCWristTemperatureDailyAnalyticsEvent)initWithProfile:(id)a3 analysisManager:(id)a4 sleepStore:(id)a5;
- (id)_IHAGatedDemographicsFieldsWithDataSource:(id)a3;
- (id)_IHAGatedLastSleepDayWristTemperatureFieldsWithCurrentDate:(id)a3 gregorianCalendar:(id)a4;
- (id)_IHAGatedSleepingWristTemperatureStatisticsFieldsWithCurrentDate:(id)a3 gregorianCalendar:(id)a4;
- (id)_allNoiseFieldsWithCurrentDate:(id)a3 gregorianCalendar:(id)a4;
- (id)_areBloodOxygenMeasurementsEnabledWithDataSource:(id)a3;
- (id)_areRespiratoryRateMeasurementsEnabledWithDataSource:(id)a3;
- (id)_countOfLast30DaysWithSleepSamplesWithCurrentDate:(id)a3 calendarCache:(id)a4;
- (id)_countOfLast30DaysWithSleepingWristTemperatureSamplesWithCurrentDate:(id)a3 gregorianCalendar:(id)a4;
- (id)_countOfUniqueSourcesOfWristTemperatureSamplesFieldsWithCurrentDate:(id)a3 gregorianCalendar:(id)a4;
- (id)_daysWithStandHoursInLast30DaysWithCurrentDate:(id)a3 gregorianCalendar:(id)a4;
- (id)_discreteRelativeSleepingWristTemperatureStatisticsLast30DaysWithCurrentDate:(id)a3 gregorianCalendar:(id)a4 dominantWatchSourceEntityPredicate:(id)a5;
- (id)_discreteSleepingWristTemperatureStatisticsLast30DaysWithCurrentDate:(id)a3 gregorianCalendar:(id)a4 dominantWatchSourceEntityPredicate:(id)a5;
- (id)_dominantSleepingWristTemperatureSourceEntityPredicateOverLastNDays:(int64_t)a3 currentDate:(id)a4 gregorianCalendar:(id)a5;
- (id)_dominantSleepingWristTemperatureSourceOverLastNDays:(int64_t)a3 currentDate:(id)a4 gregorianCalendar:(id)a5;
- (id)_dominantWatchLast30DaysFieldsWithCurrentDate:(id)a3 gregorianCalendar:(id)a4;
- (id)_featureStatusForFeatureIdentifier:(id)a3 dataSource:(id)a4 error:(id *)a5;
- (id)_firstPartySleepSamplesFromLastNSleepDays:(int64_t)a3 currentDate:(id)a4 gregorianCalendar:(id)a5;
- (id)_hasCycleFactorsActive;
- (id)_hoursAsleepDuringLastSleepDayWithCurrentDate:(id)a3 gregorianCalendar:(id)a4;
- (id)_isAFibHistoryEnabledWithDataSource:(id)a3;
- (id)_isCycleTrackingWristTemperatureInputEnabledWithDataSource:(id)a3;
- (id)_isHeartRateEnabledInPrivacy;
- (id)_isIRNEnabledWithDataSource:(id)a3;
- (id)_isWristDetectionEnabled;
- (id)_isWristTemperatureEnabledWithDataSource:(id)a3;
- (id)_lastSleepDayHasSleepDataFromCompatibleProductTypeWithCurrentDate:(id)a3 gregorianCalendar:(id)a4;
- (id)_lastSleepDayHasSleepDataWithCurrentDate:(id)a3 calendarCache:(id)a4;
- (id)_lastSleepDayHasWristTemperatureDataWithCurrentDate:(id)a3 gregorianCalendar:(id)a4;
- (id)_lastSleepDayRelativeSleepingWristTemperatureWithCurrentDate:(id)a3 gregorianCalendar:(id)a4;
- (id)_medianSleepingWristTemperatureLast30DaysWithCurrentDate:(id)a3 gregorianCalendar:(id)a4 dominantWatchSourceEntityPredicate:(id)a5;
- (id)_noiseMetricsFromSleepingWristTemperatureSamples:(id)a3 gregorianCalendar:(id)a4;
- (id)_pairedWristTemperatureCompatibleDevice;
- (id)_predicateForAppleWatchSamplesInLastNSleepDays:(int64_t)a3 currentDate:(id)a4 gregorianCalendar:(id)a5 sampleType:(id)a6;
- (id)_predicateForAppleWatchSamplesInLastNSleepDays:(int64_t)a3 currentDate:(id)a4 gregorianCalendar:(id)a5 sampleType:(id)a6 sourceEntityPredicate:(id)a7;
- (id)_preferredSleepingWristTemperatureUnit;
- (id)_sampleStandardDeviationOfValues:(id)a3;
- (id)_samplesByMorningIndex:(id)a3 gregorianCalendar:(id)a4;
- (id)_sleepFields;
- (id)_sleepingWristTemperatureDominantWatchSampleCountOverLast30DaysWithCurrentDate:(id)a3 gregorianCalendar:(id)a4;
- (id)_sleepingWristTemperatureSampleCountBySourceOverLastNDays:(int64_t)a3 currentDate:(id)a4 gregorianCalendar:(id)a5;
- (id)_sleepingWristTemperatureSamplesFromLastNSleepDays:(int64_t)a3 currentDate:(id)a4 gregorianCalendar:(id)a5 sourceEntityPredicate:(id)a6;
- (id)_weeksSinceDeliveryWithDataSource:(id)a3;
- (id)_wristTemperatureCompatibleDeviceFields;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4;
- (int64_t)_bucketedWeeksSinceDate:(id)a3 dataSource:(id)a4;
- (int64_t)_countOfUniqueSerialNumbersFromSamples:(id)a3;
- (int64_t)_countOfUniqueSourcesFromSamples:(id)a3;
@end

@implementation HDMCWristTemperatureDailyAnalyticsEvent

- (HDMCWristTemperatureDailyAnalyticsEvent)initWithProfile:(id)a3 analysisManager:(id)a4 sleepStore:(id)a5
{
  v8 = MEMORY[0x277D119F8];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [[v8 alloc] initWithObservationEnabled:0];
  v13 = [v11 wristDetectionSettingManager];
  v14 = objc_alloc(MEMORY[0x277CBEBD0]);
  v15 = [v14 initWithSuiteName:*MEMORY[0x277CCE500]];
  v16 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self initWithProfile:v11 analysisManager:v10 settingsManager:v12 sleepStore:v9 wristDetectionSettingManager:v13 privacyDefaults:v15];

  return v16;
}

- (HDMCWristTemperatureDailyAnalyticsEvent)initWithProfile:(id)a3 analysisManager:(id)a4 settingsManager:(id)a5 sleepStore:(id)a6 wristDetectionSettingManager:(id)a7 privacyDefaults:(id)a8
{
  v14 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = HDMCWristTemperatureDailyAnalyticsEvent;
  v18 = [(HDMCWristTemperatureDailyAnalyticsEvent *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_profile, v14);
    objc_storeStrong(&v19->_analysisManager, a4);
    objc_storeStrong(&v19->_settingsManager, a5);
    objc_storeStrong(&v19->_sleepStore, a6);
    objc_storeStrong(&v19->_wristDetectionSettingManager, a7);
    objc_storeStrong(&v19->_privacyDefaults, a8);
  }

  return v19;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 environmentDataSource];
  v7 = [v6 currentDate];

  v8 = [v5 environmentDataSource];
  v9 = [v8 calendarCache];
  v10 = [v9 currentCalendar];

  v11 = [MEMORY[0x277CBEB38] dictionary];
  v12 = MEMORY[0x277CCABB0];
  v13 = [v5 environmentDataSource];
  v14 = [v12 numberWithBool:{objc_msgSend(v13, "isImproveHealthAndActivityEnabled")}];
  [v11 setObject:v14 forKeyedSubscript:@"isImproveHealthAndActivityAllowed"];

  [v11 setObject:&unk_283CC31C8 forKeyedSubscript:@"algorithmVersion"];
  v15 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _isHeartRateEnabledInPrivacy];
  [v11 setObject:v15 forKeyedSubscript:@"isHeartRateEnabled"];

  v16 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _areRespiratoryRateMeasurementsEnabledWithDataSource:v5];
  [v11 setObject:v16 forKeyedSubscript:@"isRespiratoryRateEnabled"];

  v17 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _areBloodOxygenMeasurementsEnabledWithDataSource:v5];
  [v11 setObject:v17 forKeyedSubscript:@"isBloodOxygenEnabled"];

  v18 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _isCycleTrackingWristTemperatureInputEnabledWithDataSource:v5];
  [v11 setObject:v18 forKeyedSubscript:@"isCTWristTempInputEnabled"];

  v19 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _isWristTemperatureEnabledWithDataSource:v5];
  [v11 setObject:v19 forKeyedSubscript:@"isWristTempEnabled"];

  v20 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _isWristDetectionEnabled];
  [v11 setObject:v20 forKeyedSubscript:@"isWristDetectionEnabled"];

  v21 = [v5 environmentDataSource];
  v22 = [v21 calendarCache];
  v23 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _lastSleepDayHasSleepDataWithCurrentDate:v7 calendarCache:v22];
  [v11 setObject:v23 forKeyedSubscript:@"hasWatchSleepPastDay"];

  v24 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _lastSleepDayHasSleepDataFromCompatibleProductTypeWithCurrentDate:v7 gregorianCalendar:v10];
  [v11 setObject:v24 forKeyedSubscript:@"internalOnly_sleepPastDayFromCompatibleProductType"];

  v25 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _lastSleepDayHasWristTemperatureDataWithCurrentDate:v7 gregorianCalendar:v10];
  [v11 setObject:v25 forKeyedSubscript:@"hasTempPastDay"];

  v26 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _weeksSinceDeliveryWithDataSource:v5];
  [v11 setObject:v26 forKeyedSubscript:@"weeksSinceOnboarded"];

  v27 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _preferredSleepingWristTemperatureUnit];
  [v11 setObject:v27 forKeyedSubscript:@"tempDisplayUnit"];

  v28 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _countOfLast30DaysWithSleepingWristTemperatureSamplesWithCurrentDate:v7 gregorianCalendar:v10];
  [v11 setObject:v28 forKeyedSubscript:@"numDaysTempPast30Days"];

  v29 = [v5 environmentDataSource];
  v30 = [v29 calendarCache];
  v31 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _countOfLast30DaysWithSleepSamplesWithCurrentDate:v7 calendarCache:v30];
  [v11 setObject:v31 forKeyedSubscript:@"numDaysWatchSleepPast30Days"];

  v32 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _daysWithStandHoursInLast30DaysWithCurrentDate:v7 gregorianCalendar:v10];
  [v11 setObject:v32 forKeyedSubscript:@"numDaysWatchWornPast30Days"];

  v33 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _sleepingWristTemperatureDominantWatchSampleCountOverLast30DaysWithCurrentDate:v7 gregorianCalendar:v10];
  [v11 setObject:v33 forKeyedSubscript:@"numDaysTempCalcPast30Days"];

  v34 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _wristTemperatureCompatibleDeviceFields];
  [v11 addEntriesFromDictionary:v34];

  v35 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _dominantWatchLast30DaysFieldsWithCurrentDate:v7 gregorianCalendar:v10];
  [v11 addEntriesFromDictionary:v35];

  v36 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _countOfUniqueSourcesOfWristTemperatureSamplesFieldsWithCurrentDate:v7 gregorianCalendar:v10];
  [v11 addEntriesFromDictionary:v36];

  v37 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _sleepFields];
  [v11 addEntriesFromDictionary:v37];

  v38 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _allNoiseFieldsWithCurrentDate:v7 gregorianCalendar:v10];
  [v11 addEntriesFromDictionary:v38];

  v39 = [v5 environmentDataSource];

  LOBYTE(v5) = [v39 isImproveHealthAndActivityEnabled];
  if ((v5 & 1) == 0)
  {
    [v11 setObject:0 forKeyedSubscript:@"stdDevPast30Days"];
    [v11 setObject:0 forKeyedSubscript:@"stdDevFilteredPast30Days"];
  }

  v40 = [v11 copy];

  return v40;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 environmentDataSource];
  v7 = [v6 currentDate];

  v8 = [v5 environmentDataSource];
  v9 = [v8 calendarCache];
  v10 = [v9 currentCalendar];

  v11 = [MEMORY[0x277CBEB38] dictionary];
  v12 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _hasCycleFactorsActive];
  [v11 setObject:v12 forKeyedSubscript:@"hasCycleFactorsActive"];

  v13 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _isIRNEnabledWithDataSource:v5];
  [v11 setObject:v13 forKeyedSubscript:@"isIRNEnabled"];

  v14 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _isAFibHistoryEnabledWithDataSource:v5];
  [v11 setObject:v14 forKeyedSubscript:@"isAFibHistoryEnabled"];

  v15 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _hoursAsleepDuringLastSleepDayWithCurrentDate:v7 gregorianCalendar:v10];
  [v11 setObject:v15 forKeyedSubscript:@"watchSleepHoursPastDay"];

  v16 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _lastSleepDayRelativeSleepingWristTemperatureWithCurrentDate:v7 gregorianCalendar:v10];
  [v11 setObject:v16 forKeyedSubscript:@"tempDisplayedPastDay"];

  v17 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _IHAGatedDemographicsFieldsWithDataSource:v5];

  [v11 addEntriesFromDictionary:v17];
  v18 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _IHAGatedSleepingWristTemperatureStatisticsFieldsWithCurrentDate:v7 gregorianCalendar:v10];
  [v11 addEntriesFromDictionary:v18];

  v19 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _IHAGatedLastSleepDayWristTemperatureFieldsWithCurrentDate:v7 gregorianCalendar:v10];
  [v11 addEntriesFromDictionary:v19];

  v20 = [v11 copy];

  return v20;
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
  [v4 setObject:v11 forKeyedSubscript:*MEMORY[0x277CCB7C0]];

  v12 = [v4 copy];

  return v12;
}

- (id)_wristTemperatureCompatibleDeviceFields
{
  v2 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _pairedWristTemperatureCompatibleDevice];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    v4 = [v2 valueForProperty:*MEMORY[0x277D2BBC0]];
    [v3 setObject:v4 forKeyedSubscript:@"compatibleWatchProductType"];

    v5 = [v2 valueForProperty:*MEMORY[0x277D2BC08]];
    [v3 setObject:v5 forKeyedSubscript:@"compatiblePairedWatchBuild"];

    v6 = [v2 valueForProperty:*MEMORY[0x277D2BAC8]];
    [v3 setObject:v6 forKeyedSubscript:@"compatibleWatchHousingColorAndMaterial"];

    v7 = [v3 copy];
  }

  else
  {
    v7 = MEMORY[0x277CBEC10];
  }

  return v7;
}

- (id)_pairedWristTemperatureCompatibleDevice
{
  v3 = [MEMORY[0x277D2BCF8] sharedInstance];
  v4 = [v3 getActivePairedDevice];
  if (v4 && [(HDMCWristTemperatureDailyAnalyticsEvent *)self _isDeviceWristTemperatureCompatible:v4])
  {
    v5 = v4;
  }

  else
  {
    v6 = [v3 getPairedDevices];
    v7 = v6;
    v8 = MEMORY[0x277CBEBF8];
    if (v6)
    {
      v8 = v6;
    }

    v9 = v8;

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __82__HDMCWristTemperatureDailyAnalyticsEvent__pairedWristTemperatureCompatibleDevice__block_invoke;
    v11[3] = &unk_27865AAD0;
    v11[4] = self;
    v5 = [v9 hk_firstObjectPassingTest:v11];
  }

  return v5;
}

- (BOOL)_isDeviceWristTemperatureCompatible:(id)a3
{
  v3 = MEMORY[0x277CCAD78];
  v4 = a3;
  v5 = [[v3 alloc] initWithUUIDString:@"CBC78224-8F5E-4D43-8666-69ADBE2A6277"];
  v6 = [v4 supportsCapability:v5];

  return v6;
}

- (id)_dominantWatchLast30DaysFieldsWithCurrentDate:(id)a3 gregorianCalendar:(id)a4
{
  v5 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _dominantSleepingWristTemperatureSourceOverLastNDays:30 currentDate:a3 gregorianCalendar:a4];
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v7 = [v5 _productType];
  [v6 setObject:v7 forKeyedSubscript:@"dominantWatchPast30DaysProductType"];

  v8 = [MEMORY[0x277CCDD30] sharedBehavior];
  v9 = [v8 isAppleInternalInstall];

  if (v9)
  {
    v10 = MEMORY[0x277D10718];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v12 = [v10 _wristTemperatureIdentifierDomainWithProfile:WeakRetained];

    v13 = [v12 _wristTemperatureSerialNumbersBySourceIdentifier];
    v14 = [v5 bundleIdentifier];
    v15 = [v13 objectForKeyedSubscript:v14];

    [v6 setObject:v15 forKeyedSubscript:@"internalOnly_dominantWatchPast30DaysSerialNumber"];
  }

  v16 = [v6 copy];

  return v16;
}

- (id)_isHeartRateEnabledInPrivacy
{
  v2 = [(NSUserDefaults *)self->_privacyDefaults objectForKey:*MEMORY[0x277CCE518]];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEC38];
  }

  v5 = v4;

  return v4;
}

- (id)_isWristDetectionEnabled
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [(HKWristDetectionSettingManager *)self->_wristDetectionSettingManager isWristDetectEnabled];

  return [v2 numberWithBool:v3];
}

- (id)_isWristTemperatureEnabledWithDataSource:(id)a3
{
  v3 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _featureStatusForFeatureIdentifier:*MEMORY[0x277CCC0F8] dataSource:a3 error:0];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
    v6 = [v5 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF38]];

    v7 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "isOnboardingRecordPresent") & v6}];
  }

  else
  {
    v7 = *MEMORY[0x277CCB798];
  }

  v8 = v7;

  return v8;
}

- (id)_isCycleTrackingWristTemperatureInputEnabledWithDataSource:(id)a3
{
  v3 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _featureStatusForFeatureIdentifier:*MEMORY[0x277CCC0A8] dataSource:a3 error:0];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
    v6 = [v5 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF38]];

    v7 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "isOnboardingRecordPresent") & v6}];
  }

  else
  {
    v7 = *MEMORY[0x277CCB798];
  }

  v8 = v7;

  return v8;
}

- (id)_isIRNEnabledWithDataSource:(id)a3
{
  v3 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _featureStatusForFeatureIdentifier:*MEMORY[0x277CCC070] dataSource:a3 error:0];
  v4 = v3;
  if (v3)
  {
    v5 = *MEMORY[0x277CCBEA0];
    v6 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
    v7 = [v6 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF38]];

    if (v7)
    {
      v8 = [v4 objectForKeyedSubscript:v5];
      v9 = [v8 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF60]];
    }

    else
    {
      v9 = 0;
    }

    v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "isOnboardingRecordPresent") & v9}];
  }

  else
  {
    v10 = *MEMORY[0x277CCB798];
  }

  v11 = v10;

  return v11;
}

- (id)_isAFibHistoryEnabledWithDataSource:(id)a3
{
  v3 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _featureStatusForFeatureIdentifier:*MEMORY[0x277CCBFF0] dataSource:a3 error:0];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
    v6 = [v5 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF38]];

    v7 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "isOnboardingRecordPresent") & v6}];
  }

  else
  {
    v7 = *MEMORY[0x277CCB798];
  }

  v8 = v7;

  return v8;
}

- (id)_areRespiratoryRateMeasurementsEnabledWithDataSource:(id)a3
{
  v3 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _featureStatusForFeatureIdentifier:*MEMORY[0x277CCC0C8] dataSource:a3 error:0];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
    v6 = [v5 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF38]];

    v7 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "isOnboardingRecordPresent") & v6}];
  }

  else
  {
    v7 = *MEMORY[0x277CCB798];
  }

  v8 = v7;

  return v8;
}

- (id)_areBloodOxygenMeasurementsEnabledWithDataSource:(id)a3
{
  v3 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _featureStatusForFeatureIdentifier:*MEMORY[0x277CCC0B0] dataSource:a3 error:0];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
    v6 = [v5 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBEE8]];

    v7 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "isOnboardingRecordPresent") & v6}];
  }

  else
  {
    v7 = *MEMORY[0x277CCB798];
  }

  v8 = v7;

  return v8;
}

- (id)_sleepFields
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  v22 = @"isSleepFocusSetUp";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:{-[HKSPSleepStore hasSleepFocusMode](self->_sleepStore, "hasSleepFocusMode")}];
  v23[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v6 = [v3 dictionaryWithDictionary:v5];

  v7 = [(HKSPSleepStore *)self->_sleepStore currentSleepSettingsWithError:0];
  v8 = v7;
  if (v7)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "sleepTracking")}];
    [v6 setObject:v9 forKeyedSubscript:@"isWatchSleepTrackingEnabled"];

    v10 = [MEMORY[0x277CCABB0] numberWithInt:{(objc_msgSend(v8, "sleepModeOptions") >> 14) & 1}];
    [v6 setObject:v10 forKeyedSubscript:@"isSleepScreenEnabled"];

    v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v8, "scheduledSleepMode")}];
    [v6 setObject:v11 forKeyedSubscript:@"isAutomatedSleepFocusEnabled"];
  }

  else
  {
    v12 = *MEMORY[0x277CCB798];
    [v6 setObject:*MEMORY[0x277CCB798] forKeyedSubscript:@"isWatchSleepTrackingEnabled"];
    [v6 setObject:v12 forKeyedSubscript:@"isSleepScreenEnabled"];
    [v6 setObject:v12 forKeyedSubscript:@"isAutomatedSleepFocusEnabled"];
  }

  v13 = [(HKSPSleepStore *)self->_sleepStore currentSleepScheduleWithError:0];
  v14 = v13;
  if (v13)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "isEnabled")}];
    [v6 setObject:v15 forKeyedSubscript:@"isSleepScheduleEnabled"];
  }

  else
  {
    [v6 setObject:*MEMORY[0x277CCB798] forKeyedSubscript:@"isSleepScheduleEnabled"];
  }

  v16 = [(HKSPSleepStore *)self->_sleepStore currentSleepEventRecordWithError:0];
  v17 = v16;
  if (v16)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v16, "isAnySleepTrackingOnboardingCompleted")}];
    [v6 setObject:v18 forKeyedSubscript:@"isSleepOnWatchOnboarded"];
  }

  else
  {
    [v6 setObject:*MEMORY[0x277CCB798] forKeyedSubscript:@"isSleepOnWatchOnboarded"];
  }

  v19 = [v6 copy];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_IHAGatedSleepingWristTemperatureStatisticsFieldsWithCurrentDate:(id)a3 gregorianCalendar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _dominantSleepingWristTemperatureSourceEntityPredicateOverLastNDays:30 currentDate:v6 gregorianCalendar:v7];
  if (v8)
  {
    v9 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _discreteSleepingWristTemperatureStatisticsLast30DaysWithCurrentDate:v6 gregorianCalendar:v7 dominantWatchSourceEntityPredicate:v8];
    v10 = [v9 mutableCopy];

    v11 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _discreteRelativeSleepingWristTemperatureStatisticsLast30DaysWithCurrentDate:v6 gregorianCalendar:v7 dominantWatchSourceEntityPredicate:v8];
    [v10 addEntriesFromDictionary:v11];

    v12 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _medianSleepingWristTemperatureLast30DaysWithCurrentDate:v6 gregorianCalendar:v7 dominantWatchSourceEntityPredicate:v8];
    v13 = [v12 stringValue];
    [v10 setObject:v13 forKeyedSubscript:@"aggTempPast30DaysMedian"];

    v14 = [v10 copy];
  }

  else
  {
    v14 = MEMORY[0x277CBEC10];
  }

  return v14;
}

- (id)_discreteSleepingWristTemperatureStatisticsLast30DaysWithCurrentDate:(id)a3 gregorianCalendar:(id)a4 dominantWatchSourceEntityPredicate:(id)a5
{
  v35[3] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = _HKMCAppleSleepingWristTemperatureType();
  v12 = [MEMORY[0x277D10890] calculatorForQuantityType:v11 intervalCollection:0 options:14 mergeStrategy:1];
  v13 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _predicateForAppleWatchSamplesInLastNSleepDays:30 currentDate:v10 gregorianCalendar:v9 sampleType:v11 sourceEntityPredicate:v8];

  v14 = objc_alloc(MEMORY[0x277D108A0]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v16 = [v14 initForProfile:WeakRetained quantityType:v11 predicate:v13 restrictedSourceEntities:0];

  [v12 setDataSource:v16];
  v33 = 0;
  v17 = [v12 queryForInitialStatisticsWithError:&v33];
  v18 = v33;
  v19 = [v12 currentStatistics];
  v20 = v19;
  v21 = MEMORY[0x277CBEC10];
  if (v17 && v19 && [v19 dataCount])
  {
    v34[0] = @"aggTempPast30DaysMin";
    v32 = [v20 minimumQuantity];
    v31 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _celsiusValueFromQuantity:v32 scale:1];
    v30 = [v31 stringValue];
    v35[0] = v30;
    v34[1] = @"aggTempPast30DaysMax";
    v29 = [v20 maximumQuantity];
    v28 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _celsiusValueFromQuantity:v29 scale:1];
    v27 = [v28 stringValue];
    v35[1] = v27;
    v34[2] = @"aggTempPast30DaysMean";
    v22 = [v20 averageQuantity];
    v23 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _celsiusValueFromQuantity:v22 scale:1];
    v24 = [v23 stringValue];
    v35[2] = v24;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)_discreteRelativeSleepingWristTemperatureStatisticsLast30DaysWithCurrentDate:(id)a3 gregorianCalendar:(id)a4 dominantWatchSourceEntityPredicate:(id)a5
{
  v31[2] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = _HKMCAppleSleepingWristTemperatureType();
  v12 = [MEMORY[0x277D10890] calculatorForQuantityType:v11 intervalCollection:0 options:_HKStatisticsOptionBaselineRelativeQuantities() | 0xE mergeStrategy:1];
  v13 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _predicateForAppleWatchSamplesInLastNSleepDays:30 currentDate:v10 gregorianCalendar:v9 sampleType:v11 sourceEntityPredicate:v8];

  v14 = objc_alloc(MEMORY[0x277D108B0]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v16 = [v11 _rollingBaselineConfiguration];
  v17 = [v14 initForProfile:WeakRetained quantityType:v11 predicate:v13 restrictedSourceEntities:0 configuration:v16 currentDate:v10];

  [v12 setDataSource:v17];
  v29 = 0;
  v18 = [v12 queryForInitialStatisticsWithError:&v29];
  v19 = v29;
  v20 = [v12 currentStatistics];
  v21 = v20;
  v22 = MEMORY[0x277CBEC10];
  if (v18 && v20 && [v20 dataCount])
  {
    v30[0] = @"aggTempDisplayedPast30DaysMin";
    v28 = [v21 minimumQuantity];
    v23 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _changeInCelsiusStringFromQuantity:v28 scale:1];
    v30[1] = @"aggTempDisplayedPast30DaysMax";
    v31[0] = v23;
    v24 = [v21 maximumQuantity];
    v25 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _changeInCelsiusStringFromQuantity:v24 scale:1];
    v31[1] = v25;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  }

  v26 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)_medianSleepingWristTemperatureLast30DaysWithCurrentDate:(id)a3 gregorianCalendar:(id)a4 dominantWatchSourceEntityPredicate:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = _HKMCAppleSleepingWristTemperatureType();
  v12 = [MEMORY[0x277D10890] calculatorForQuantityType:v11 intervalCollection:0 options:_HKStatisticsOptionPercentile() mergeStrategy:1];
  v13 = [objc_alloc(MEMORY[0x277D108C0]) initWithPercentile:&unk_283CC3418];
  [v12 setStatisticsConfiguration:v13];

  v14 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _predicateForAppleWatchSamplesInLastNSleepDays:30 currentDate:v10 gregorianCalendar:v9 sampleType:v11 sourceEntityPredicate:v8];

  v15 = objc_alloc(MEMORY[0x277D108A0]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v17 = [v15 initForProfile:WeakRetained quantityType:v11 predicate:v14 restrictedSourceEntities:0];

  [v12 setDataSource:v17];
  v24 = 0;
  v18 = [v12 queryForInitialStatisticsWithError:&v24];
  v19 = [v12 currentStatistics];
  v20 = v19;
  v21 = 0;
  if (v18 && v19)
  {
    if ([v19 dataCount])
    {
      v22 = [v20 percentileQuantity];
      v21 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _celsiusValueFromQuantity:v22 scale:1];
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

- (id)_sleepingWristTemperatureDominantWatchSampleCountOverLast30DaysWithCurrentDate:(id)a3 gregorianCalendar:(id)a4
{
  v4 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _sleepingWristTemperatureSampleCountBySourceOverLastNDays:30 currentDate:a3 gregorianCalendar:a4];
  v5 = [v4 allValues];
  v6 = [v5 hk_firstObjectWithMaximumValueUsingEvaluationBlock:&__block_literal_global_2];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &unk_283CC31E0;
  }

  v8 = v7;

  return v7;
}

- (id)_countOfLast30DaysWithSleepingWristTemperatureSamplesWithCurrentDate:(id)a3 gregorianCalendar:(id)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _HKMCAppleSleepingWristTemperatureType();
  v9 = [v6 hk_sleepDayStartWithCalendar:v7];
  v10 = [v7 dateByAddingUnit:16 value:-30 toDate:v9 options:0];
  v11 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v11 setCalendar:v7];
  [v11 setDay:1];
  v36 = [objc_alloc(MEMORY[0x277CCDD78]) initWithAnchorDate:v10 intervalComponents:v11];
  v12 = [MEMORY[0x277D10890] calculatorForQuantityType:v8 intervalCollection:v36 options:_HKStatisticsOptionPresence() mergeStrategy:1];
  v13 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _predicateForAppleWatchSamplesInLast30SleepDaysRelativeToCurrentDate:v6 gregorianCalendar:v7 sampleType:v8];
  v14 = objc_alloc(MEMORY[0x277D108A0]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v35 = v13;
  v16 = [v14 initForProfile:WeakRetained quantityType:v8 predicate:v13 restrictedSourceEntities:0];

  v34 = v16;
  [v12 setDataSource:v16];
  v17 = [objc_alloc(MEMORY[0x277CCDA58]) initWithAnchorDate:v10 statisticsInterval:v11];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __130__HDMCWristTemperatureDailyAnalyticsEvent__countOfLast30DaysWithSleepingWristTemperatureSamplesWithCurrentDate_gregorianCalendar___block_invoke;
  v42[3] = &unk_27865AB18;
  v18 = v17;
  v43 = v18;
  [v12 setStatisticsHandler:v42];
  v41 = 0;
  LODWORD(v13) = [v12 queryForInitialStatisticsWithError:&v41];
  v19 = v41;
  v20 = 0;
  if (v13)
  {
    v30 = v19;
    v31 = v10;
    v32 = v9;
    v33 = v6;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v21 = [v18 statistics];
    v22 = [v21 countByEnumeratingWithState:&v37 objects:v44 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = 0;
      v25 = *v38;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v38 != v25)
          {
            objc_enumerationMutation(v21);
          }

          if ([*(*(&v37 + 1) + 8 * i) dataCount])
          {
            ++v24;
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v37 objects:v44 count:16];
      }

      while (v23);
    }

    else
    {
      v24 = 0;
    }

    if (v24 >= 30)
    {
      v27 = 30;
    }

    else
    {
      v27 = v24;
    }

    v20 = [MEMORY[0x277CCABB0] numberWithInteger:v27];
    v9 = v32;
    v6 = v33;
    v19 = v30;
    v10 = v31;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_countOfLast30DaysWithSleepSamplesWithCurrentDate:(id)a3 calendarCache:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 currentCalendar];
  v9 = [v6 hk_morningIndexWithCalendar:v8];

  v10 = v9 - 30;
  v11 = objc_alloc(MEMORY[0x277D10868]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v13 = [v7 currentCalendar];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [v11 initWithProfile:WeakRetained cachingSession:0 gregorianCalendar:v13 morningIndexRange:v10 ascending:30 options:1 debugIdentifier:{1, v15}];

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __107__HDMCWristTemperatureDailyAnalyticsEvent__countOfLast30DaysWithSleepSamplesWithCurrentDate_calendarCache___block_invoke;
  v19[3] = &unk_27865AB40;
  v19[4] = &v20;
  if ([v16 enumerateWithError:0 handler:v19])
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:v21[3]];
  }

  else
  {
    v17 = 0;
  }

  _Block_object_dispose(&v20, 8);

  return v17;
}

uint64_t __107__HDMCWristTemperatureDailyAnalyticsEvent__countOfLast30DaysWithSleepSamplesWithCurrentDate_calendarCache___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 containsPeriodsWithAppleSleepTrackingData];
  if (result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

- (id)_hoursAsleepDuringLastSleepDayWithCurrentDate:(id)a3 gregorianCalendar:(id)a4
{
  v53[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBAB8]];
  v9 = [MEMORY[0x277D10890] calculatorForCategoryType:v8 intervalCollection:0 options:65 mergeStrategy:1];
  v10 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _predicateForAppleWatchSamplesInLastNSleepDays:1 currentDate:v6 gregorianCalendar:v7 sampleType:v8];
  v11 = HKCategoryValueSleepAnalysisAsleepValues();
  v12 = [v11 allObjects];
  v13 = HDCategorySampleEntityPredicateEqualToValues();

  v14 = MEMORY[0x277D10B20];
  v45 = v13;
  v46 = v10;
  v53[0] = v10;
  v53[1] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:2];
  v16 = [v14 predicateMatchingAllPredicates:v15];

  v17 = objc_alloc(MEMORY[0x277D108A0]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v44 = v16;
  v19 = [v17 initForProfile:WeakRetained categoryType:v8 predicate:v16 restrictedSourceEntities:0];

  [v9 setDataSource:v19];
  v20 = objc_alloc(MEMORY[0x277D108A8]);
  v21 = objc_loadWeakRetained(&self->_profile);
  v22 = [v19 quantityType];
  v23 = [v20 initWithProfile:v21 quantityType:v22];

  [v9 setSourceOrderProvider:v23];
  v51 = 0;
  LODWORD(v13) = [v9 queryForInitialStatisticsWithError:&v51];
  v43 = v51;
  v24 = [v9 currentStatistics];
  v25 = v24;
  v26 = 0;
  if (v13 && v24)
  {
    v39 = v23;
    v40 = self;
    v41 = v8;
    v42 = v7;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v27 = [v24 sources];
    v28 = [v27 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v48;
      v31 = 0.0;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v48 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v33 = [v25 durationForSource:*(*(&v47 + 1) + 8 * i)];
          v34 = [MEMORY[0x277CCDAB0] secondUnit];
          [v33 doubleValueForUnit:v34];
          v36 = v35;

          if (v36 > v31)
          {
            v31 = v36;
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v29);
    }

    else
    {
      v31 = 0.0;
    }

    v26 = [(HDMCWristTemperatureDailyAnalyticsEvent *)v40 _roundDouble:0 scale:v31 / 3600.0];
    v7 = v42;
    v8 = v41;
    v23 = v39;
  }

  v37 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)_daysWithStandHoursInLast30DaysWithCurrentDate:(id)a3 gregorianCalendar:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v9 = HDAnalyticsCountOfSleepDaysWithStandHoursPriorToDate();

  return v9;
}

- (id)_lastSleepDayHasSleepDataWithCurrentDate:(id)a3 calendarCache:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 currentCalendar];
  v9 = [v6 hk_morningIndexWithCalendar:v8];

  v10 = v9 - 1;
  v11 = objc_alloc(MEMORY[0x277D10868]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v13 = [v7 currentCalendar];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [v11 initWithProfile:WeakRetained cachingSession:0 gregorianCalendar:v13 morningIndexRange:v10 ascending:1 options:1 debugIdentifier:{1, v15}];

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __98__HDMCWristTemperatureDailyAnalyticsEvent__lastSleepDayHasSleepDataWithCurrentDate_calendarCache___block_invoke;
  v19[3] = &unk_27865AB40;
  v19[4] = &v20;
  if ([v16 enumerateWithError:0 handler:v19])
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInt:v21[3] > 0];
  }

  else
  {
    v17 = 0;
  }

  _Block_object_dispose(&v20, 8);

  return v17;
}

uint64_t __98__HDMCWristTemperatureDailyAnalyticsEvent__lastSleepDayHasSleepDataWithCurrentDate_calendarCache___block_invoke(uint64_t a1, void *a2)
{
  result = [a2 containsPeriodsWithAppleSleepTrackingData];
  if (result)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  return result;
}

- (id)_lastSleepDayHasSleepDataFromCompatibleProductTypeWithCurrentDate:(id)a3 gregorianCalendar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCDD30] sharedBehavior];
  v9 = [v8 isAppleInternalInstall];

  if (v9)
  {
    v10 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _firstPartySleepSamplesFromLastNSleepDays:1 currentDate:v6 gregorianCalendar:v7];
    if ([v10 count])
    {
      v11 = [MEMORY[0x277CBEB98] setWithArray:&unk_283CC33C0];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __127__HDMCWristTemperatureDailyAnalyticsEvent__lastSleepDayHasSleepDataFromCompatibleProductTypeWithCurrentDate_gregorianCalendar___block_invoke;
      v16[3] = &unk_27865AB68;
      v17 = v11;
      v12 = v11;
      v13 = [v10 hk_containsObjectPassingTest:v16];
      v14 = [MEMORY[0x277CCABB0] numberWithBool:v13];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __127__HDMCWristTemperatureDailyAnalyticsEvent__lastSleepDayHasSleepDataFromCompatibleProductTypeWithCurrentDate_gregorianCalendar___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 sourceRevision];
  v4 = [v3 source];
  v5 = [v4 _productType];
  v6 = [v2 containsObject:v5];

  return v6;
}

- (id)_lastSleepDayHasWristTemperatureDataWithCurrentDate:(id)a3 gregorianCalendar:(id)a4
{
  v4 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _sleepingWristTemperatureSamplesFromLastNSleepDays:1 currentDate:a3 gregorianCalendar:a4 sourceEntityPredicate:0];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "count") != 0}];

  return v5;
}

- (id)_IHAGatedLastSleepDayWristTemperatureFieldsWithCurrentDate:(id)a3 gregorianCalendar:(id)a4
{
  v22[1] = *MEMORY[0x277D85DE8];
  v5 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _sleepingWristTemperatureSamplesFromLastNSleepDays:1 currentDate:a3 gregorianCalendar:a4 sourceEntityPredicate:0];
  if ([v5 count])
  {
    v6 = [v5 lastObject];
    v7 = [v6 quantity];
    v8 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _celsiusValueFromQuantity:v7 scale:1];

    v9 = &unk_283CC3428;
    if ([v8 compare:&unk_283CC3428] == -1 || (v9 = &unk_283CC3438, objc_msgSend(v8, "compare:", &unk_283CC3438) == 1))
    {

      v8 = v9;
    }

    v10 = MEMORY[0x277CBEB38];
    v21 = @"tempPastDay";
    v11 = [v8 stringValue];
    v22[0] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v13 = [v10 dictionaryWithDictionary:v12];

    v14 = [v6 metadata];
    v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277CCE0F0]];

    if (v15)
    {
      v16 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _celsiusValueFromQuantity:v15 scale:1];
      v17 = [v16 stringValue];
      [v13 setObject:v17 forKeyedSubscript:@"tempUncorrectedPastDay"];
    }

    v18 = [v13 copy];
  }

  else
  {
    v18 = MEMORY[0x277CBEC10];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_lastSleepDayRelativeSleepingWristTemperatureWithCurrentDate:(id)a3 gregorianCalendar:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = _HKMCAppleSleepingWristTemperatureType();
  v9 = [MEMORY[0x277D10890] calculatorForQuantityType:v8 intervalCollection:0 options:_HKStatisticsOptionBaselineRelativeQuantities() | 0x20 mergeStrategy:1];
  v10 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _predicateForAppleWatchSamplesInLastNSleepDays:1 currentDate:v7 gregorianCalendar:v6 sampleType:v8];

  v11 = objc_alloc(MEMORY[0x277D108B0]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v13 = [v8 _rollingBaselineConfiguration];
  v14 = [v11 initForProfile:WeakRetained quantityType:v8 predicate:v10 restrictedSourceEntities:0 configuration:v13 currentDate:v7];

  [v9 setDataSource:v14];
  v20 = 0;
  LODWORD(v13) = [v9 queryForInitialStatisticsWithError:&v20];
  v15 = [v9 currentStatistics];
  v16 = v15;
  v17 = 0;
  if (v13 && v15)
  {
    if ([v15 dataCount])
    {
      v17 = [v16 mostRecentQuantity];

      if (v17)
      {
        v18 = [v16 mostRecentQuantity];
        v17 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _changeInCelsiusStringFromQuantity:v18 scale:1];
      }
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (id)_allNoiseFieldsWithCurrentDate:(id)a3 gregorianCalendar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _dominantSleepingWristTemperatureSourceEntityPredicateOverLastNDays:30 currentDate:v6 gregorianCalendar:v7];
  if (v8)
  {
    v9 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _sleepingWristTemperatureSamplesFromLastNSleepDays:30 currentDate:v6 gregorianCalendar:v7 sourceEntityPredicate:v8];
    v10 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _noiseMetricsFromSleepingWristTemperatureSamples:v9 gregorianCalendar:v7];
    v11 = [v10 mutableCopy];

    v12 = [v9 hk_map:&__block_literal_global_481];
    v13 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _sampleStandardDeviationOfValues:v12];

    if (v13)
    {
      [v13 doubleValue];
      v14 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _roundDouble:2 scale:?];
      v15 = [v14 stringValue];
      [v11 setObject:v15 forKeyedSubscript:@"stdDevPast30Days"];
    }

    v16 = [v11 copy];
  }

  else
  {
    v16 = MEMORY[0x277CBEC10];
  }

  return v16;
}

id __92__HDMCWristTemperatureDailyAnalyticsEvent__allNoiseFieldsWithCurrentDate_gregorianCalendar___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 quantity];
  v4 = [MEMORY[0x277CCDAB0] degreeCelsiusUnit];
  [v3 doubleValueForUnit:v4];
  v5 = [v2 numberWithDouble:?];

  return v5;
}

- (id)_noiseMetricsFromSleepingWristTemperatureSamples:(id)a3 gregorianCalendar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v49 = self;
  v8 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _samplesByMorningIndex:v6 gregorianCalendar:v7];
  v9 = [v6 firstObject];
  v10 = [v9 endDate];
  v11 = [v10 hk_morningIndexWithCalendar:v7];

  v51 = v6;
  v12 = [v6 lastObject];
  v13 = [v12 endDate];
  v14 = [v13 hk_morningIndexWithCalendar:v7];

  v50 = v8;
  v15 = [v8 hk_map:&__block_literal_global_484];
  v16 = [MEMORY[0x277CBEB18] array];
  v17 = [MEMORY[0x277CBEB18] array];
  if (v11 < v14)
  {
    v18 = v11 + 1;
    do
    {
      v19 = [MEMORY[0x277CCABB0] numberWithInteger:v18];
      v20 = [v15 objectForKeyedSubscript:v19];

      v21 = [MEMORY[0x277CCABB0] numberWithInteger:v18 - 1];
      v22 = [v15 objectForKeyedSubscript:v21];

      v23 = [MEMORY[0x277CCABB0] numberWithInteger:++v18];
      v24 = [v15 objectForKeyedSubscript:v23];

      if (v20)
      {
        v25 = v22 == 0;
      }

      else
      {
        v25 = 1;
      }

      if (!v25)
      {
        [v20 doubleValue];
        v27 = v26;
        [v22 doubleValue];
        v29 = [MEMORY[0x277CCABB0] numberWithDouble:v27 - v28];
        [v17 addObject:v29];

        if (v24)
        {
          [v20 doubleValue];
          v31 = v30;
          [v22 doubleValue];
          v33 = v31 + v32 * -0.5;
          [v24 doubleValue];
          v35 = [MEMORY[0x277CCABB0] numberWithDouble:v33 + v34 * -0.5];
          [v16 addObject:v35];
        }
      }
    }

    while (v18 - 1 != v14);
  }

  v36 = [MEMORY[0x277CBEB38] dictionary];
  v37 = [(HDMCWristTemperatureDailyAnalyticsEvent *)v49 _sampleStandardDeviationOfValues:v16];
  v38 = v37;
  if (v37)
  {
    [v37 doubleValue];
    v40 = [(HDMCWristTemperatureDailyAnalyticsEvent *)v49 _roundDouble:2 scale:v39 / 1.22474487];
    v41 = [v40 stringValue];
    [v36 setObject:v41 forKeyedSubscript:@"dayToDayNoisePast30Days"];
  }

  v42 = [(HDMCWristTemperatureDailyAnalyticsEvent *)v49 _sampleStandardDeviationOfValues:v17];
  v43 = v42;
  if (v42)
  {
    [v42 doubleValue];
    v45 = [(HDMCWristTemperatureDailyAnalyticsEvent *)v49 _roundDouble:2 scale:v44 / 1.41421356];
    v46 = [v45 stringValue];
    [v36 setObject:v46 forKeyedSubscript:@"stdDevFilteredPast30Days"];
  }

  v47 = [v36 copy];

  return v47;
}

void __110__HDMCWristTemperatureDailyAnalyticsEvent__noiseMetricsFromSleepingWristTemperatureSamples_gregorianCalendar___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  v8 = [a3 quantity];
  v9 = [MEMORY[0x277CCDAB0] degreeCelsiusUnit];
  [v8 doubleValueForUnit:v9];
  v11 = v10;

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
  v6[2](v6, v7, v12);
}

- (id)_samplesByMorningIndex:(id)a3 gregorianCalendar:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v30 = a4;
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        v12 = [v11 endDate];
        v13 = [v12 hk_morningIndexWithCalendar:v30];

        v14 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
        v15 = [v6 objectForKeyedSubscript:v14];

        v16 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
        if (v15)
        {
          v17 = [v6 objectForKeyedSubscript:v16];

          v18 = [v17 endDate];
          v19 = [v17 startDate];
          [v18 timeIntervalSinceDate:v19];
          v21 = v20;

          v22 = [v11 endDate];
          v23 = [v11 startDate];
          [v22 timeIntervalSinceDate:v23];
          v25 = v24;

          if (v21 <= v25)
          {
            v26 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
            [v6 setObject:v11 forKeyedSubscript:v26];
          }
        }

        else
        {
          [v6 setObject:v11 forKeyedSubscript:v16];
          v17 = v16;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v8);
  }

  v27 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_countOfUniqueSourcesOfWristTemperatureSamplesFieldsWithCurrentDate:(id)a3 gregorianCalendar:(id)a4
{
  v21[2] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _sleepingWristTemperatureSamplesFromLastNSleepDays:30 currentDate:v7 gregorianCalendar:v6 sourceEntityPredicate:0];
  v9 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _sleepingWristTemperatureSamplesFromLastNSleepDays:365 currentDate:v7 gregorianCalendar:v6 sourceEntityPredicate:0];

  v10 = MEMORY[0x277CBEB38];
  v20[0] = @"numUniqueWatchesPast30Days";
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDMCWristTemperatureDailyAnalyticsEvent _countOfUniqueSourcesFromSamples:](self, "_countOfUniqueSourcesFromSamples:", v8)}];
  v20[1] = @"numUniqueWatchesPastYear";
  v21[0] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDMCWristTemperatureDailyAnalyticsEvent _countOfUniqueSourcesFromSamples:](self, "_countOfUniqueSourcesFromSamples:", v9)}];
  v21[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v14 = [v10 dictionaryWithDictionary:v13];

  v15 = [MEMORY[0x277CCDD30] sharedBehavior];
  LODWORD(v12) = [v15 isAppleInternalInstall];

  if (v12)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDMCWristTemperatureDailyAnalyticsEvent _countOfUniqueSerialNumbersFromSamples:](self, "_countOfUniqueSerialNumbersFromSamples:", v8)}];
    [v14 setObject:v16 forKeyedSubscript:@"numUniqueWatchSerialsPast30Days"];
  }

  v17 = [v14 copy];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (int64_t)_countOfUniqueSourcesFromSamples:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB58] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v15 + 1) + 8 * v9) sourceRevision];
        v11 = [v10 source];
        [v4 addObject:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [v4 count];
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (int64_t)_countOfUniqueSerialNumbersFromSamples:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D10718];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v7 = [v5 _wristTemperatureIdentifierDomainWithProfile:WeakRetained];

  v8 = [v7 _wristTemperatureSerialNumbersBySourceIdentifier];
  v9 = [MEMORY[0x277CBEB58] set];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v4;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      v14 = 0;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v22 + 1) + 8 * v14) sourceRevision];
        v16 = [v15 source];
        v17 = [v16 bundleIdentifier];

        v18 = [v8 objectForKeyedSubscript:v17];
        if (v18)
        {
          [v9 addObject:v18];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v19 = [v9 count];
  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)_weeksSinceDeliveryWithDataSource:(id)a3
{
  v4 = a3;
  v5 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _featureStatusForFeatureIdentifier:*MEMORY[0x277CCC0F8] dataSource:v4 error:0];
  v6 = v5;
  if (v5)
  {
    if ([v5 isOnboardingRecordPresent])
    {
      v7 = MEMORY[0x277CCABB0];
      v8 = [v6 onboardingRecord];
      v9 = [v8 onboardingCompletion];
      v10 = [v9 completionDate];
      v11 = [v7 numberWithInteger:{-[HDMCWristTemperatureDailyAnalyticsEvent _bucketedWeeksSinceDate:dataSource:](self, "_bucketedWeeksSinceDate:dataSource:", v10, v4)}];
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

- (id)_hasCycleFactorsActive
{
  analysisManager = self->_analysisManager;
  if (analysisManager && (([(HDMCAnalysisManager *)analysisManager currentAnalysis], (v4 = objc_claimAutoreleasedReturnValue()) != 0) || ([(HDMCAnalysisManager *)self->_analysisManager analyzeWithError:0], (v4 = objc_claimAutoreleasedReturnValue()) != 0)))
  {
    v5 = v4;
    v6 = MEMORY[0x277CCABB0];
    v7 = [v4 ongoingCycleFactors];
    v8 = [v6 numberWithBool:HKMCForceDisableFertileWindowProjectionsFromCycleFactorSamples()];
  }

  else
  {
    v8 = *MEMORY[0x277CCB798];
  }

  return v8;
}

- (id)_preferredSleepingWristTemperatureUnit
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v3 = [WeakRetained unitPreferencesManager];
  v4 = _HKMCAppleSleepingWristTemperatureType();
  v5 = [v3 preferredUnitForType:v4 error:0];

  if (v5)
  {
    v6 = [MEMORY[0x277CCDAB0] degreeCelsiusUnit];
    v7 = [v5 isEqual:v6];

    if (v7)
    {
      v8 = @"C";
    }

    else
    {
      v9 = [MEMORY[0x277CCDAB0] degreeFahrenheitUnit];
      v10 = [v5 isEqual:v9];

      if (v10)
      {
        v8 = @"F";
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_featureStatusForFeatureIdentifier:(id)a3 dataSource:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = [a4 healthDataSource];
  v9 = [v8 featureStatusProviderForIdentifier:v7];

  v10 = [v9 featureStatusWithError:a5];

  return v10;
}

- (id)_sleepingWristTemperatureSamplesFromLastNSleepDays:(int64_t)a3 currentDate:(id)a4 gregorianCalendar:(id)a5 sourceEntityPredicate:(id)a6
{
  v30[1] = *MEMORY[0x277D85DE8];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = _HKMCAppleSleepingWristTemperatureType();
  v14 = MEMORY[0x277D10810];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v16 = [v14 entityEnumeratorWithType:v13 profile:WeakRetained];

  v17 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _predicateForAppleWatchSamplesInLastNSleepDays:a3 currentDate:v12 gregorianCalendar:v11 sampleType:v13 sourceEntityPredicate:v10];

  [v16 setPredicate:v17];
  v18 = [MEMORY[0x277D10B68] orderingTermWithProperty:*MEMORY[0x277D104A8] entityClass:objc_opt_class() ascending:1];
  v30[0] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  [v16 setOrderingTerms:v19];

  v20 = [MEMORY[0x277CBEB18] array];
  v29 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __146__HDMCWristTemperatureDailyAnalyticsEvent__sleepingWristTemperatureSamplesFromLastNSleepDays_currentDate_gregorianCalendar_sourceEntityPredicate___block_invoke;
  v27[3] = &unk_27865ABD0;
  v21 = v20;
  v28 = v21;
  LOBYTE(v12) = [v16 enumerateWithError:&v29 handler:v27];
  v22 = v29;
  if (v12)
  {
    v23 = v21;
  }

  else
  {
    _HKInitializeLogging();
    v24 = HKLogAnalytics();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [HDMCWristTemperatureDailyAnalyticsEvent _sleepingWristTemperatureSamplesFromLastNSleepDays:currentDate:gregorianCalendar:sourceEntityPredicate:];
    }

    v23 = MEMORY[0x277CBEBF8];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)_firstPartySleepSamplesFromLastNSleepDays:(int64_t)a3 currentDate:(id)a4 gregorianCalendar:(id)a5
{
  v29[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCD0C0];
  v9 = *MEMORY[0x277CCBAB8];
  v10 = a5;
  v11 = a4;
  v12 = [v8 categoryTypeForIdentifier:v9];
  v13 = MEMORY[0x277D105E8];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v15 = [v13 entityEnumeratorWithType:v12 profile:WeakRetained];

  v16 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _predicateForAppleWatchSamplesInLastNSleepDays:a3 currentDate:v11 gregorianCalendar:v10 sampleType:v12 sourceEntityPredicate:0];

  [v15 setPredicate:v16];
  v17 = [MEMORY[0x277D10B68] orderingTermWithProperty:*MEMORY[0x277D104A8] entityClass:objc_opt_class() ascending:1];
  v29[0] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  [v15 setOrderingTerms:v18];

  v19 = [MEMORY[0x277CBEB18] array];
  v28 = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __115__HDMCWristTemperatureDailyAnalyticsEvent__firstPartySleepSamplesFromLastNSleepDays_currentDate_gregorianCalendar___block_invoke;
  v26[3] = &unk_27865ABD0;
  v20 = v19;
  v27 = v20;
  LOBYTE(v11) = [v15 enumerateWithError:&v28 handler:v26];
  v21 = v28;
  if (v11)
  {
    v22 = v20;
  }

  else
  {
    _HKInitializeLogging();
    v23 = HKLogAnalytics();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [HDMCWristTemperatureDailyAnalyticsEvent _firstPartySleepSamplesFromLastNSleepDays:currentDate:gregorianCalendar:];
    }

    v22 = MEMORY[0x277CBEBF8];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)_dominantSleepingWristTemperatureSourceOverLastNDays:(int64_t)a3 currentDate:(id)a4 gregorianCalendar:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _sleepingWristTemperatureSamplesFromLastNSleepDays:a3 currentDate:v8 gregorianCalendar:v9 sourceEntityPredicate:0];
  if ([v10 count])
  {
    v11 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _sleepingWristTemperatureSampleCountBySourceOverLastNDays:a3 currentDate:v8 gregorianCalendar:v9];
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__3;
    v20 = __Block_byref_object_dispose__3;
    v21 = 0;
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v15[3] = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __126__HDMCWristTemperatureDailyAnalyticsEvent__dominantSleepingWristTemperatureSourceOverLastNDays_currentDate_gregorianCalendar___block_invoke;
    v14[3] = &unk_27865ABF8;
    v14[4] = v15;
    v14[5] = &v16;
    [v11 enumerateKeysAndObjectsUsingBlock:v14];
    v12 = v17[5];
    _Block_object_dispose(v15, 8);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __126__HDMCWristTemperatureDailyAnalyticsEvent__dominantSleepingWristTemperatureSourceOverLastNDays_currentDate_gregorianCalendar___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  if ([v6 integerValue] > *(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = [v6 integerValue];
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }
}

- (id)_dominantSleepingWristTemperatureSourceEntityPredicateOverLastNDays:(int64_t)a3 currentDate:(id)a4 gregorianCalendar:(id)a5
{
  v6 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _dominantSleepingWristTemperatureSourceOverLastNDays:a3 currentDate:a4 gregorianCalendar:a5];
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v8 = [WeakRetained sourceManager];
    v9 = [v6 bundleIdentifier];
    v10 = [v8 allSourcesForBundleIdentifier:v9 error:0];

    if (v10 && [v10 count])
    {
      v11 = HDDataEntityPredicateForSourceEntitySet();
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_sleepingWristTemperatureSampleCountBySourceOverLastNDays:(int64_t)a3 currentDate:(id)a4 gregorianCalendar:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _sleepingWristTemperatureSamplesFromLastNSleepDays:a3 currentDate:a4 gregorianCalendar:a5 sourceEntityPredicate:0];
  if ([v5 count])
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = v5;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v22 + 1) + 8 * i) sourceRevision];
          v13 = [v12 source];

          v14 = [v6 objectForKeyedSubscript:v13];

          if (v14)
          {
            v15 = MEMORY[0x277CCABB0];
            v16 = [v6 objectForKeyedSubscript:v13];
            v17 = [v15 numberWithInteger:{objc_msgSend(v16, "integerValue") + 1}];
            [v6 setObject:v17 forKeyedSubscript:v13];
          }

          else
          {
            [v6 setObject:&unk_283CC31C8 forKeyedSubscript:v13];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    v18 = [v6 copy];
    v5 = v21;
  }

  else
  {
    v18 = MEMORY[0x277CBEC10];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_predicateForAppleWatchSamplesInLastNSleepDays:(int64_t)a3 currentDate:(id)a4 gregorianCalendar:(id)a5 sampleType:(id)a6 sourceEntityPredicate:(id)a7
{
  v20[2] = *MEMORY[0x277D85DE8];
  v12 = a7;
  v13 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _predicateForAppleWatchSamplesInLastNSleepDays:a3 currentDate:a4 gregorianCalendar:a5 sampleType:a6];
  v14 = v13;
  if (v12)
  {
    v15 = MEMORY[0x277D10B20];
    v20[0] = v13;
    v20[1] = v12;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    v17 = [v15 predicateMatchingAllPredicates:v16];
  }

  else
  {
    v17 = v13;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_predicateForAppleWatchSamplesInLastNSleepDays:(int64_t)a3 currentDate:(id)a4 gregorianCalendar:(id)a5 sampleType:(id)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v9 = a6;
  v10 = a5;
  v11 = [a4 hk_sleepDayStartWithCalendar:v10];
  v12 = [v10 dateByAddingUnit:16 value:-a3 toDate:v11 options:0];

  v13 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v12 endDate:v11];
  v14 = MEMORY[0x277D10B20];
  v15 = HDSampleEntityPredicateForDataType();
  v22 = v15;
  v16 = HDSampleEntityPredicateForDateInterval();

  v23 = v16;
  v17 = HDDataEntityPredicateForObjectsFromAppleWatchSources();
  v24 = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:3];
  v19 = [v14 predicateMatchingAllPredicates:{v18, v22, v23}];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_sampleStandardDeviationOfValues:(id)a3
{
  v3 = a3;
  if ([v3 count] >= 2)
  {
    v5 = [v3 hk_averageUsingEvaluationBlock:&__block_literal_global_513];
    [v5 doubleValue];
    v7 = v6;

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __76__HDMCWristTemperatureDailyAnalyticsEvent__sampleStandardDeviationOfValues___block_invoke_2;
    v12[3] = &__block_descriptor_40_e18_d16__0__NSNumber_8l;
    v12[4] = v7;
    [v3 hk_sumUsingEvaluationBlock:v12];
    v9 = v8;
    v10 = [v3 count];
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:sqrt(v9 / (v10 - 1))];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

double __76__HDMCWristTemperatureDailyAnalyticsEvent__sampleStandardDeviationOfValues___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 doubleValue];
  v5 = v4 - *(a1 + 32);
  [v3 doubleValue];
  v7 = v6;

  return v5 * (v7 - *(a1 + 32));
}

- (void)_sleepingWristTemperatureSamplesFromLastNSleepDays:currentDate:gregorianCalendar:sourceEntityPredicate:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_0_2(v0);
  OUTLINED_FUNCTION_4(&dword_2293D1000, v2, v3, "[%{public}@] Error querying sleeping wrist temperature samples: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_firstPartySleepSamplesFromLastNSleepDays:currentDate:gregorianCalendar:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_0_2(v0);
  OUTLINED_FUNCTION_4(&dword_2293D1000, v2, v3, "[%{public}@] Error querying sleep samples: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end