@interface HDMCWristTemperatureDailyAnalyticsEvent
- (BOOL)_isDeviceWristTemperatureCompatible:(id)compatible;
- (HDMCWristTemperatureDailyAnalyticsEvent)initWithProfile:(id)profile analysisManager:(id)manager settingsManager:(id)settingsManager sleepStore:(id)store wristDetectionSettingManager:(id)settingManager privacyDefaults:(id)defaults;
- (HDMCWristTemperatureDailyAnalyticsEvent)initWithProfile:(id)profile analysisManager:(id)manager sleepStore:(id)store;
- (id)_IHAGatedDemographicsFieldsWithDataSource:(id)source;
- (id)_IHAGatedLastSleepDayWristTemperatureFieldsWithCurrentDate:(id)date gregorianCalendar:(id)calendar;
- (id)_IHAGatedSleepingWristTemperatureStatisticsFieldsWithCurrentDate:(id)date gregorianCalendar:(id)calendar;
- (id)_allNoiseFieldsWithCurrentDate:(id)date gregorianCalendar:(id)calendar;
- (id)_areBloodOxygenMeasurementsEnabledWithDataSource:(id)source;
- (id)_areRespiratoryRateMeasurementsEnabledWithDataSource:(id)source;
- (id)_countOfLast30DaysWithSleepSamplesWithCurrentDate:(id)date calendarCache:(id)cache;
- (id)_countOfLast30DaysWithSleepingWristTemperatureSamplesWithCurrentDate:(id)date gregorianCalendar:(id)calendar;
- (id)_countOfUniqueSourcesOfWristTemperatureSamplesFieldsWithCurrentDate:(id)date gregorianCalendar:(id)calendar;
- (id)_daysWithStandHoursInLast30DaysWithCurrentDate:(id)date gregorianCalendar:(id)calendar;
- (id)_discreteRelativeSleepingWristTemperatureStatisticsLast30DaysWithCurrentDate:(id)date gregorianCalendar:(id)calendar dominantWatchSourceEntityPredicate:(id)predicate;
- (id)_discreteSleepingWristTemperatureStatisticsLast30DaysWithCurrentDate:(id)date gregorianCalendar:(id)calendar dominantWatchSourceEntityPredicate:(id)predicate;
- (id)_dominantSleepingWristTemperatureSourceEntityPredicateOverLastNDays:(int64_t)days currentDate:(id)date gregorianCalendar:(id)calendar;
- (id)_dominantSleepingWristTemperatureSourceOverLastNDays:(int64_t)days currentDate:(id)date gregorianCalendar:(id)calendar;
- (id)_dominantWatchLast30DaysFieldsWithCurrentDate:(id)date gregorianCalendar:(id)calendar;
- (id)_featureStatusForFeatureIdentifier:(id)identifier dataSource:(id)source error:(id *)error;
- (id)_firstPartySleepSamplesFromLastNSleepDays:(int64_t)days currentDate:(id)date gregorianCalendar:(id)calendar;
- (id)_hasCycleFactorsActive;
- (id)_hoursAsleepDuringLastSleepDayWithCurrentDate:(id)date gregorianCalendar:(id)calendar;
- (id)_isAFibHistoryEnabledWithDataSource:(id)source;
- (id)_isCycleTrackingWristTemperatureInputEnabledWithDataSource:(id)source;
- (id)_isHeartRateEnabledInPrivacy;
- (id)_isIRNEnabledWithDataSource:(id)source;
- (id)_isWristDetectionEnabled;
- (id)_isWristTemperatureEnabledWithDataSource:(id)source;
- (id)_lastSleepDayHasSleepDataFromCompatibleProductTypeWithCurrentDate:(id)date gregorianCalendar:(id)calendar;
- (id)_lastSleepDayHasSleepDataWithCurrentDate:(id)date calendarCache:(id)cache;
- (id)_lastSleepDayHasWristTemperatureDataWithCurrentDate:(id)date gregorianCalendar:(id)calendar;
- (id)_lastSleepDayRelativeSleepingWristTemperatureWithCurrentDate:(id)date gregorianCalendar:(id)calendar;
- (id)_medianSleepingWristTemperatureLast30DaysWithCurrentDate:(id)date gregorianCalendar:(id)calendar dominantWatchSourceEntityPredicate:(id)predicate;
- (id)_noiseMetricsFromSleepingWristTemperatureSamples:(id)samples gregorianCalendar:(id)calendar;
- (id)_pairedWristTemperatureCompatibleDevice;
- (id)_predicateForAppleWatchSamplesInLastNSleepDays:(int64_t)days currentDate:(id)date gregorianCalendar:(id)calendar sampleType:(id)type;
- (id)_predicateForAppleWatchSamplesInLastNSleepDays:(int64_t)days currentDate:(id)date gregorianCalendar:(id)calendar sampleType:(id)type sourceEntityPredicate:(id)predicate;
- (id)_preferredSleepingWristTemperatureUnit;
- (id)_sampleStandardDeviationOfValues:(id)values;
- (id)_samplesByMorningIndex:(id)index gregorianCalendar:(id)calendar;
- (id)_sleepFields;
- (id)_sleepingWristTemperatureDominantWatchSampleCountOverLast30DaysWithCurrentDate:(id)date gregorianCalendar:(id)calendar;
- (id)_sleepingWristTemperatureSampleCountBySourceOverLastNDays:(int64_t)days currentDate:(id)date gregorianCalendar:(id)calendar;
- (id)_sleepingWristTemperatureSamplesFromLastNSleepDays:(int64_t)days currentDate:(id)date gregorianCalendar:(id)calendar sourceEntityPredicate:(id)predicate;
- (id)_weeksSinceDeliveryWithDataSource:(id)source;
- (id)_wristTemperatureCompatibleDeviceFields;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error;
- (int64_t)_bucketedWeeksSinceDate:(id)date dataSource:(id)source;
- (int64_t)_countOfUniqueSerialNumbersFromSamples:(id)samples;
- (int64_t)_countOfUniqueSourcesFromSamples:(id)samples;
@end

@implementation HDMCWristTemperatureDailyAnalyticsEvent

- (HDMCWristTemperatureDailyAnalyticsEvent)initWithProfile:(id)profile analysisManager:(id)manager sleepStore:(id)store
{
  v8 = MEMORY[0x277D119F8];
  storeCopy = store;
  managerCopy = manager;
  profileCopy = profile;
  v12 = [[v8 alloc] initWithObservationEnabled:0];
  wristDetectionSettingManager = [profileCopy wristDetectionSettingManager];
  v14 = objc_alloc(MEMORY[0x277CBEBD0]);
  v15 = [v14 initWithSuiteName:*MEMORY[0x277CCE500]];
  v16 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self initWithProfile:profileCopy analysisManager:managerCopy settingsManager:v12 sleepStore:storeCopy wristDetectionSettingManager:wristDetectionSettingManager privacyDefaults:v15];

  return v16;
}

- (HDMCWristTemperatureDailyAnalyticsEvent)initWithProfile:(id)profile analysisManager:(id)manager settingsManager:(id)settingsManager sleepStore:(id)store wristDetectionSettingManager:(id)settingManager privacyDefaults:(id)defaults
{
  profileCopy = profile;
  managerCopy = manager;
  settingsManagerCopy = settingsManager;
  storeCopy = store;
  settingManagerCopy = settingManager;
  defaultsCopy = defaults;
  v23.receiver = self;
  v23.super_class = HDMCWristTemperatureDailyAnalyticsEvent;
  v18 = [(HDMCWristTemperatureDailyAnalyticsEvent *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeWeak(&v18->_profile, profileCopy);
    objc_storeStrong(&v19->_analysisManager, manager);
    objc_storeStrong(&v19->_settingsManager, settingsManager);
    objc_storeStrong(&v19->_sleepStore, store);
    objc_storeStrong(&v19->_wristDetectionSettingManager, settingManager);
    objc_storeStrong(&v19->_privacyDefaults, defaults);
  }

  return v19;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;
  environmentDataSource = [sourceCopy environmentDataSource];
  currentDate = [environmentDataSource currentDate];

  environmentDataSource2 = [sourceCopy environmentDataSource];
  calendarCache = [environmentDataSource2 calendarCache];
  currentCalendar = [calendarCache currentCalendar];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v12 = MEMORY[0x277CCABB0];
  environmentDataSource3 = [sourceCopy environmentDataSource];
  v14 = [v12 numberWithBool:{objc_msgSend(environmentDataSource3, "isImproveHealthAndActivityEnabled")}];
  [dictionary setObject:v14 forKeyedSubscript:@"isImproveHealthAndActivityAllowed"];

  [dictionary setObject:&unk_283CC31C8 forKeyedSubscript:@"algorithmVersion"];
  _isHeartRateEnabledInPrivacy = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _isHeartRateEnabledInPrivacy];
  [dictionary setObject:_isHeartRateEnabledInPrivacy forKeyedSubscript:@"isHeartRateEnabled"];

  v16 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _areRespiratoryRateMeasurementsEnabledWithDataSource:sourceCopy];
  [dictionary setObject:v16 forKeyedSubscript:@"isRespiratoryRateEnabled"];

  v17 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _areBloodOxygenMeasurementsEnabledWithDataSource:sourceCopy];
  [dictionary setObject:v17 forKeyedSubscript:@"isBloodOxygenEnabled"];

  v18 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _isCycleTrackingWristTemperatureInputEnabledWithDataSource:sourceCopy];
  [dictionary setObject:v18 forKeyedSubscript:@"isCTWristTempInputEnabled"];

  v19 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _isWristTemperatureEnabledWithDataSource:sourceCopy];
  [dictionary setObject:v19 forKeyedSubscript:@"isWristTempEnabled"];

  _isWristDetectionEnabled = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _isWristDetectionEnabled];
  [dictionary setObject:_isWristDetectionEnabled forKeyedSubscript:@"isWristDetectionEnabled"];

  environmentDataSource4 = [sourceCopy environmentDataSource];
  calendarCache2 = [environmentDataSource4 calendarCache];
  v23 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _lastSleepDayHasSleepDataWithCurrentDate:currentDate calendarCache:calendarCache2];
  [dictionary setObject:v23 forKeyedSubscript:@"hasWatchSleepPastDay"];

  v24 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _lastSleepDayHasSleepDataFromCompatibleProductTypeWithCurrentDate:currentDate gregorianCalendar:currentCalendar];
  [dictionary setObject:v24 forKeyedSubscript:@"internalOnly_sleepPastDayFromCompatibleProductType"];

  v25 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _lastSleepDayHasWristTemperatureDataWithCurrentDate:currentDate gregorianCalendar:currentCalendar];
  [dictionary setObject:v25 forKeyedSubscript:@"hasTempPastDay"];

  v26 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _weeksSinceDeliveryWithDataSource:sourceCopy];
  [dictionary setObject:v26 forKeyedSubscript:@"weeksSinceOnboarded"];

  _preferredSleepingWristTemperatureUnit = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _preferredSleepingWristTemperatureUnit];
  [dictionary setObject:_preferredSleepingWristTemperatureUnit forKeyedSubscript:@"tempDisplayUnit"];

  v28 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _countOfLast30DaysWithSleepingWristTemperatureSamplesWithCurrentDate:currentDate gregorianCalendar:currentCalendar];
  [dictionary setObject:v28 forKeyedSubscript:@"numDaysTempPast30Days"];

  environmentDataSource5 = [sourceCopy environmentDataSource];
  calendarCache3 = [environmentDataSource5 calendarCache];
  v31 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _countOfLast30DaysWithSleepSamplesWithCurrentDate:currentDate calendarCache:calendarCache3];
  [dictionary setObject:v31 forKeyedSubscript:@"numDaysWatchSleepPast30Days"];

  v32 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _daysWithStandHoursInLast30DaysWithCurrentDate:currentDate gregorianCalendar:currentCalendar];
  [dictionary setObject:v32 forKeyedSubscript:@"numDaysWatchWornPast30Days"];

  v33 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _sleepingWristTemperatureDominantWatchSampleCountOverLast30DaysWithCurrentDate:currentDate gregorianCalendar:currentCalendar];
  [dictionary setObject:v33 forKeyedSubscript:@"numDaysTempCalcPast30Days"];

  _wristTemperatureCompatibleDeviceFields = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _wristTemperatureCompatibleDeviceFields];
  [dictionary addEntriesFromDictionary:_wristTemperatureCompatibleDeviceFields];

  v35 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _dominantWatchLast30DaysFieldsWithCurrentDate:currentDate gregorianCalendar:currentCalendar];
  [dictionary addEntriesFromDictionary:v35];

  v36 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _countOfUniqueSourcesOfWristTemperatureSamplesFieldsWithCurrentDate:currentDate gregorianCalendar:currentCalendar];
  [dictionary addEntriesFromDictionary:v36];

  _sleepFields = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _sleepFields];
  [dictionary addEntriesFromDictionary:_sleepFields];

  v38 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _allNoiseFieldsWithCurrentDate:currentDate gregorianCalendar:currentCalendar];
  [dictionary addEntriesFromDictionary:v38];

  environmentDataSource6 = [sourceCopy environmentDataSource];

  LOBYTE(sourceCopy) = [environmentDataSource6 isImproveHealthAndActivityEnabled];
  if ((sourceCopy & 1) == 0)
  {
    [dictionary setObject:0 forKeyedSubscript:@"stdDevPast30Days"];
    [dictionary setObject:0 forKeyedSubscript:@"stdDevFilteredPast30Days"];
  }

  v40 = [dictionary copy];

  return v40;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;
  environmentDataSource = [sourceCopy environmentDataSource];
  currentDate = [environmentDataSource currentDate];

  environmentDataSource2 = [sourceCopy environmentDataSource];
  calendarCache = [environmentDataSource2 calendarCache];
  currentCalendar = [calendarCache currentCalendar];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  _hasCycleFactorsActive = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _hasCycleFactorsActive];
  [dictionary setObject:_hasCycleFactorsActive forKeyedSubscript:@"hasCycleFactorsActive"];

  v13 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _isIRNEnabledWithDataSource:sourceCopy];
  [dictionary setObject:v13 forKeyedSubscript:@"isIRNEnabled"];

  v14 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _isAFibHistoryEnabledWithDataSource:sourceCopy];
  [dictionary setObject:v14 forKeyedSubscript:@"isAFibHistoryEnabled"];

  v15 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _hoursAsleepDuringLastSleepDayWithCurrentDate:currentDate gregorianCalendar:currentCalendar];
  [dictionary setObject:v15 forKeyedSubscript:@"watchSleepHoursPastDay"];

  v16 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _lastSleepDayRelativeSleepingWristTemperatureWithCurrentDate:currentDate gregorianCalendar:currentCalendar];
  [dictionary setObject:v16 forKeyedSubscript:@"tempDisplayedPastDay"];

  v17 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _IHAGatedDemographicsFieldsWithDataSource:sourceCopy];

  [dictionary addEntriesFromDictionary:v17];
  v18 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _IHAGatedSleepingWristTemperatureStatisticsFieldsWithCurrentDate:currentDate gregorianCalendar:currentCalendar];
  [dictionary addEntriesFromDictionary:v18];

  v19 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _IHAGatedLastSleepDayWristTemperatureFieldsWithCurrentDate:currentDate gregorianCalendar:currentCalendar];
  [dictionary addEntriesFromDictionary:v19];

  v20 = [dictionary copy];

  return v20;
}

- (id)_IHAGatedDemographicsFieldsWithDataSource:(id)source
{
  sourceCopy = source;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  healthDataSource = [sourceCopy healthDataSource];
  v6 = [healthDataSource biologicalSexWithError:0];

  if (v6)
  {
    v7 = HKAnalyticsPropertyValueForBiologicalSex();
    [dictionary setObject:v7 forKeyedSubscript:*MEMORY[0x277CCB7D0]];
  }

  else
  {
    [dictionary setObject:*MEMORY[0x277CCB800] forKeyedSubscript:*MEMORY[0x277CCB7D0]];
  }

  healthDataSource2 = [sourceCopy healthDataSource];
  environmentDataSource = [sourceCopy environmentDataSource];
  currentDate = [environmentDataSource currentDate];
  v11 = [healthDataSource2 ageWithCurrentDate:currentDate error:0];
  [dictionary setObject:v11 forKeyedSubscript:*MEMORY[0x277CCB7C0]];

  v12 = [dictionary copy];

  return v12;
}

- (id)_wristTemperatureCompatibleDeviceFields
{
  _pairedWristTemperatureCompatibleDevice = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _pairedWristTemperatureCompatibleDevice];
  if (_pairedWristTemperatureCompatibleDevice)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v4 = [_pairedWristTemperatureCompatibleDevice valueForProperty:*MEMORY[0x277D2BBC0]];
    [dictionary setObject:v4 forKeyedSubscript:@"compatibleWatchProductType"];

    v5 = [_pairedWristTemperatureCompatibleDevice valueForProperty:*MEMORY[0x277D2BC08]];
    [dictionary setObject:v5 forKeyedSubscript:@"compatiblePairedWatchBuild"];

    v6 = [_pairedWristTemperatureCompatibleDevice valueForProperty:*MEMORY[0x277D2BAC8]];
    [dictionary setObject:v6 forKeyedSubscript:@"compatibleWatchHousingColorAndMaterial"];

    v7 = [dictionary copy];
  }

  else
  {
    v7 = MEMORY[0x277CBEC10];
  }

  return v7;
}

- (id)_pairedWristTemperatureCompatibleDevice
{
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  getActivePairedDevice = [mEMORY[0x277D2BCF8] getActivePairedDevice];
  if (getActivePairedDevice && [(HDMCWristTemperatureDailyAnalyticsEvent *)self _isDeviceWristTemperatureCompatible:getActivePairedDevice])
  {
    v5 = getActivePairedDevice;
  }

  else
  {
    getPairedDevices = [mEMORY[0x277D2BCF8] getPairedDevices];
    v7 = getPairedDevices;
    v8 = MEMORY[0x277CBEBF8];
    if (getPairedDevices)
    {
      v8 = getPairedDevices;
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

- (BOOL)_isDeviceWristTemperatureCompatible:(id)compatible
{
  v3 = MEMORY[0x277CCAD78];
  compatibleCopy = compatible;
  v5 = [[v3 alloc] initWithUUIDString:@"CBC78224-8F5E-4D43-8666-69ADBE2A6277"];
  v6 = [compatibleCopy supportsCapability:v5];

  return v6;
}

- (id)_dominantWatchLast30DaysFieldsWithCurrentDate:(id)date gregorianCalendar:(id)calendar
{
  v5 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _dominantSleepingWristTemperatureSourceOverLastNDays:30 currentDate:date gregorianCalendar:calendar];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  _productType = [v5 _productType];
  [dictionary setObject:_productType forKeyedSubscript:@"dominantWatchPast30DaysProductType"];

  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isAppleInternalInstall = [mEMORY[0x277CCDD30] isAppleInternalInstall];

  if (isAppleInternalInstall)
  {
    v10 = MEMORY[0x277D10718];
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v12 = [v10 _wristTemperatureIdentifierDomainWithProfile:WeakRetained];

    _wristTemperatureSerialNumbersBySourceIdentifier = [v12 _wristTemperatureSerialNumbersBySourceIdentifier];
    bundleIdentifier = [v5 bundleIdentifier];
    v15 = [_wristTemperatureSerialNumbersBySourceIdentifier objectForKeyedSubscript:bundleIdentifier];

    [dictionary setObject:v15 forKeyedSubscript:@"internalOnly_dominantWatchPast30DaysSerialNumber"];
  }

  v16 = [dictionary copy];

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
  isWristDetectEnabled = [(HKWristDetectionSettingManager *)self->_wristDetectionSettingManager isWristDetectEnabled];

  return [v2 numberWithBool:isWristDetectEnabled];
}

- (id)_isWristTemperatureEnabledWithDataSource:(id)source
{
  v3 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _featureStatusForFeatureIdentifier:*MEMORY[0x277CCC0F8] dataSource:source error:0];
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

- (id)_isCycleTrackingWristTemperatureInputEnabledWithDataSource:(id)source
{
  v3 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _featureStatusForFeatureIdentifier:*MEMORY[0x277CCC0A8] dataSource:source error:0];
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

- (id)_isIRNEnabledWithDataSource:(id)source
{
  v3 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _featureStatusForFeatureIdentifier:*MEMORY[0x277CCC070] dataSource:source error:0];
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

- (id)_isAFibHistoryEnabledWithDataSource:(id)source
{
  v3 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _featureStatusForFeatureIdentifier:*MEMORY[0x277CCBFF0] dataSource:source error:0];
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

- (id)_areRespiratoryRateMeasurementsEnabledWithDataSource:(id)source
{
  v3 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _featureStatusForFeatureIdentifier:*MEMORY[0x277CCC0C8] dataSource:source error:0];
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

- (id)_areBloodOxygenMeasurementsEnabledWithDataSource:(id)source
{
  v3 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _featureStatusForFeatureIdentifier:*MEMORY[0x277CCC0B0] dataSource:source error:0];
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

- (id)_IHAGatedSleepingWristTemperatureStatisticsFieldsWithCurrentDate:(id)date gregorianCalendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  v8 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _dominantSleepingWristTemperatureSourceEntityPredicateOverLastNDays:30 currentDate:dateCopy gregorianCalendar:calendarCopy];
  if (v8)
  {
    v9 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _discreteSleepingWristTemperatureStatisticsLast30DaysWithCurrentDate:dateCopy gregorianCalendar:calendarCopy dominantWatchSourceEntityPredicate:v8];
    v10 = [v9 mutableCopy];

    v11 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _discreteRelativeSleepingWristTemperatureStatisticsLast30DaysWithCurrentDate:dateCopy gregorianCalendar:calendarCopy dominantWatchSourceEntityPredicate:v8];
    [v10 addEntriesFromDictionary:v11];

    v12 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _medianSleepingWristTemperatureLast30DaysWithCurrentDate:dateCopy gregorianCalendar:calendarCopy dominantWatchSourceEntityPredicate:v8];
    stringValue = [v12 stringValue];
    [v10 setObject:stringValue forKeyedSubscript:@"aggTempPast30DaysMedian"];

    v14 = [v10 copy];
  }

  else
  {
    v14 = MEMORY[0x277CBEC10];
  }

  return v14;
}

- (id)_discreteSleepingWristTemperatureStatisticsLast30DaysWithCurrentDate:(id)date gregorianCalendar:(id)calendar dominantWatchSourceEntityPredicate:(id)predicate
{
  v35[3] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  calendarCopy = calendar;
  dateCopy = date;
  v11 = _HKMCAppleSleepingWristTemperatureType();
  v12 = [MEMORY[0x277D10890] calculatorForQuantityType:v11 intervalCollection:0 options:14 mergeStrategy:1];
  v13 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _predicateForAppleWatchSamplesInLastNSleepDays:30 currentDate:dateCopy gregorianCalendar:calendarCopy sampleType:v11 sourceEntityPredicate:predicateCopy];

  v14 = objc_alloc(MEMORY[0x277D108A0]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v16 = [v14 initForProfile:WeakRetained quantityType:v11 predicate:v13 restrictedSourceEntities:0];

  [v12 setDataSource:v16];
  v33 = 0;
  v17 = [v12 queryForInitialStatisticsWithError:&v33];
  v18 = v33;
  currentStatistics = [v12 currentStatistics];
  v20 = currentStatistics;
  v21 = MEMORY[0x277CBEC10];
  if (v17 && currentStatistics && [currentStatistics dataCount])
  {
    v34[0] = @"aggTempPast30DaysMin";
    minimumQuantity = [v20 minimumQuantity];
    v31 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _celsiusValueFromQuantity:minimumQuantity scale:1];
    stringValue = [v31 stringValue];
    v35[0] = stringValue;
    v34[1] = @"aggTempPast30DaysMax";
    maximumQuantity = [v20 maximumQuantity];
    v28 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _celsiusValueFromQuantity:maximumQuantity scale:1];
    stringValue2 = [v28 stringValue];
    v35[1] = stringValue2;
    v34[2] = @"aggTempPast30DaysMean";
    averageQuantity = [v20 averageQuantity];
    v23 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _celsiusValueFromQuantity:averageQuantity scale:1];
    stringValue3 = [v23 stringValue];
    v35[2] = stringValue3;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];
  }

  v25 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)_discreteRelativeSleepingWristTemperatureStatisticsLast30DaysWithCurrentDate:(id)date gregorianCalendar:(id)calendar dominantWatchSourceEntityPredicate:(id)predicate
{
  v31[2] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  calendarCopy = calendar;
  dateCopy = date;
  v11 = _HKMCAppleSleepingWristTemperatureType();
  v12 = [MEMORY[0x277D10890] calculatorForQuantityType:v11 intervalCollection:0 options:_HKStatisticsOptionBaselineRelativeQuantities() | 0xE mergeStrategy:1];
  v13 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _predicateForAppleWatchSamplesInLastNSleepDays:30 currentDate:dateCopy gregorianCalendar:calendarCopy sampleType:v11 sourceEntityPredicate:predicateCopy];

  v14 = objc_alloc(MEMORY[0x277D108B0]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  _rollingBaselineConfiguration = [v11 _rollingBaselineConfiguration];
  v17 = [v14 initForProfile:WeakRetained quantityType:v11 predicate:v13 restrictedSourceEntities:0 configuration:_rollingBaselineConfiguration currentDate:dateCopy];

  [v12 setDataSource:v17];
  v29 = 0;
  v18 = [v12 queryForInitialStatisticsWithError:&v29];
  v19 = v29;
  currentStatistics = [v12 currentStatistics];
  v21 = currentStatistics;
  v22 = MEMORY[0x277CBEC10];
  if (v18 && currentStatistics && [currentStatistics dataCount])
  {
    v30[0] = @"aggTempDisplayedPast30DaysMin";
    minimumQuantity = [v21 minimumQuantity];
    v23 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _changeInCelsiusStringFromQuantity:minimumQuantity scale:1];
    v30[1] = @"aggTempDisplayedPast30DaysMax";
    v31[0] = v23;
    maximumQuantity = [v21 maximumQuantity];
    v25 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _changeInCelsiusStringFromQuantity:maximumQuantity scale:1];
    v31[1] = v25;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  }

  v26 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)_medianSleepingWristTemperatureLast30DaysWithCurrentDate:(id)date gregorianCalendar:(id)calendar dominantWatchSourceEntityPredicate:(id)predicate
{
  predicateCopy = predicate;
  calendarCopy = calendar;
  dateCopy = date;
  v11 = _HKMCAppleSleepingWristTemperatureType();
  v12 = [MEMORY[0x277D10890] calculatorForQuantityType:v11 intervalCollection:0 options:_HKStatisticsOptionPercentile() mergeStrategy:1];
  v13 = [objc_alloc(MEMORY[0x277D108C0]) initWithPercentile:&unk_283CC3418];
  [v12 setStatisticsConfiguration:v13];

  v14 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _predicateForAppleWatchSamplesInLastNSleepDays:30 currentDate:dateCopy gregorianCalendar:calendarCopy sampleType:v11 sourceEntityPredicate:predicateCopy];

  v15 = objc_alloc(MEMORY[0x277D108A0]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v17 = [v15 initForProfile:WeakRetained quantityType:v11 predicate:v14 restrictedSourceEntities:0];

  [v12 setDataSource:v17];
  v24 = 0;
  v18 = [v12 queryForInitialStatisticsWithError:&v24];
  currentStatistics = [v12 currentStatistics];
  v20 = currentStatistics;
  v21 = 0;
  if (v18 && currentStatistics)
  {
    if ([currentStatistics dataCount])
    {
      percentileQuantity = [v20 percentileQuantity];
      v21 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _celsiusValueFromQuantity:percentileQuantity scale:1];
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

- (id)_sleepingWristTemperatureDominantWatchSampleCountOverLast30DaysWithCurrentDate:(id)date gregorianCalendar:(id)calendar
{
  v4 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _sleepingWristTemperatureSampleCountBySourceOverLastNDays:30 currentDate:date gregorianCalendar:calendar];
  allValues = [v4 allValues];
  v6 = [allValues hk_firstObjectWithMaximumValueUsingEvaluationBlock:&__block_literal_global_2];

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

- (id)_countOfLast30DaysWithSleepingWristTemperatureSamplesWithCurrentDate:(id)date gregorianCalendar:(id)calendar
{
  v45 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  calendarCopy = calendar;
  v8 = _HKMCAppleSleepingWristTemperatureType();
  v9 = [dateCopy hk_sleepDayStartWithCalendar:calendarCopy];
  v10 = [calendarCopy dateByAddingUnit:16 value:-30 toDate:v9 options:0];
  v11 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v11 setCalendar:calendarCopy];
  [v11 setDay:1];
  v36 = [objc_alloc(MEMORY[0x277CCDD78]) initWithAnchorDate:v10 intervalComponents:v11];
  v12 = [MEMORY[0x277D10890] calculatorForQuantityType:v8 intervalCollection:v36 options:_HKStatisticsOptionPresence() mergeStrategy:1];
  v13 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _predicateForAppleWatchSamplesInLast30SleepDaysRelativeToCurrentDate:dateCopy gregorianCalendar:calendarCopy sampleType:v8];
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
    v33 = dateCopy;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    statistics = [v18 statistics];
    v22 = [statistics countByEnumeratingWithState:&v37 objects:v44 count:16];
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
            objc_enumerationMutation(statistics);
          }

          if ([*(*(&v37 + 1) + 8 * i) dataCount])
          {
            ++v24;
          }
        }

        v23 = [statistics countByEnumeratingWithState:&v37 objects:v44 count:16];
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
    dateCopy = v33;
    v19 = v30;
    v10 = v31;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)_countOfLast30DaysWithSleepSamplesWithCurrentDate:(id)date calendarCache:(id)cache
{
  dateCopy = date;
  cacheCopy = cache;
  currentCalendar = [cacheCopy currentCalendar];
  v9 = [dateCopy hk_morningIndexWithCalendar:currentCalendar];

  v10 = v9 - 30;
  v11 = objc_alloc(MEMORY[0x277D10868]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  currentCalendar2 = [cacheCopy currentCalendar];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [v11 initWithProfile:WeakRetained cachingSession:0 gregorianCalendar:currentCalendar2 morningIndexRange:v10 ascending:30 options:1 debugIdentifier:{1, v15}];

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

- (id)_hoursAsleepDuringLastSleepDayWithCurrentDate:(id)date gregorianCalendar:(id)calendar
{
  v53[2] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  calendarCopy = calendar;
  v8 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCBAB8]];
  v9 = [MEMORY[0x277D10890] calculatorForCategoryType:v8 intervalCollection:0 options:65 mergeStrategy:1];
  v10 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _predicateForAppleWatchSamplesInLastNSleepDays:1 currentDate:dateCopy gregorianCalendar:calendarCopy sampleType:v8];
  v11 = HKCategoryValueSleepAnalysisAsleepValues();
  allObjects = [v11 allObjects];
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
  quantityType = [v19 quantityType];
  v23 = [v20 initWithProfile:v21 quantityType:quantityType];

  [v9 setSourceOrderProvider:v23];
  v51 = 0;
  LODWORD(v13) = [v9 queryForInitialStatisticsWithError:&v51];
  v43 = v51;
  currentStatistics = [v9 currentStatistics];
  v25 = currentStatistics;
  v26 = 0;
  if (v13 && currentStatistics)
  {
    v39 = v23;
    selfCopy = self;
    v41 = v8;
    v42 = calendarCopy;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    sources = [currentStatistics sources];
    v28 = [sources countByEnumeratingWithState:&v47 objects:v52 count:16];
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
            objc_enumerationMutation(sources);
          }

          v33 = [v25 durationForSource:*(*(&v47 + 1) + 8 * i)];
          secondUnit = [MEMORY[0x277CCDAB0] secondUnit];
          [v33 doubleValueForUnit:secondUnit];
          v36 = v35;

          if (v36 > v31)
          {
            v31 = v36;
          }
        }

        v29 = [sources countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v29);
    }

    else
    {
      v31 = 0.0;
    }

    v26 = [(HDMCWristTemperatureDailyAnalyticsEvent *)selfCopy _roundDouble:0 scale:v31 / 3600.0];
    calendarCopy = v42;
    v8 = v41;
    v23 = v39;
  }

  v37 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)_daysWithStandHoursInLast30DaysWithCurrentDate:(id)date gregorianCalendar:(id)calendar
{
  calendarCopy = calendar;
  dateCopy = date;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v9 = HDAnalyticsCountOfSleepDaysWithStandHoursPriorToDate();

  return v9;
}

- (id)_lastSleepDayHasSleepDataWithCurrentDate:(id)date calendarCache:(id)cache
{
  dateCopy = date;
  cacheCopy = cache;
  currentCalendar = [cacheCopy currentCalendar];
  v9 = [dateCopy hk_morningIndexWithCalendar:currentCalendar];

  v10 = v9 - 1;
  v11 = objc_alloc(MEMORY[0x277D10868]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  currentCalendar2 = [cacheCopy currentCalendar];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [v11 initWithProfile:WeakRetained cachingSession:0 gregorianCalendar:currentCalendar2 morningIndexRange:v10 ascending:1 options:1 debugIdentifier:{1, v15}];

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

- (id)_lastSleepDayHasSleepDataFromCompatibleProductTypeWithCurrentDate:(id)date gregorianCalendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isAppleInternalInstall = [mEMORY[0x277CCDD30] isAppleInternalInstall];

  if (isAppleInternalInstall)
  {
    v10 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _firstPartySleepSamplesFromLastNSleepDays:1 currentDate:dateCopy gregorianCalendar:calendarCopy];
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

- (id)_lastSleepDayHasWristTemperatureDataWithCurrentDate:(id)date gregorianCalendar:(id)calendar
{
  v4 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _sleepingWristTemperatureSamplesFromLastNSleepDays:1 currentDate:date gregorianCalendar:calendar sourceEntityPredicate:0];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "count") != 0}];

  return v5;
}

- (id)_IHAGatedLastSleepDayWristTemperatureFieldsWithCurrentDate:(id)date gregorianCalendar:(id)calendar
{
  v22[1] = *MEMORY[0x277D85DE8];
  v5 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _sleepingWristTemperatureSamplesFromLastNSleepDays:1 currentDate:date gregorianCalendar:calendar sourceEntityPredicate:0];
  if ([v5 count])
  {
    lastObject = [v5 lastObject];
    quantity = [lastObject quantity];
    v8 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _celsiusValueFromQuantity:quantity scale:1];

    v9 = &unk_283CC3428;
    if ([v8 compare:&unk_283CC3428] == -1 || (v9 = &unk_283CC3438, objc_msgSend(v8, "compare:", &unk_283CC3438) == 1))
    {

      v8 = v9;
    }

    v10 = MEMORY[0x277CBEB38];
    v21 = @"tempPastDay";
    stringValue = [v8 stringValue];
    v22[0] = stringValue;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v13 = [v10 dictionaryWithDictionary:v12];

    metadata = [lastObject metadata];
    v15 = [metadata objectForKeyedSubscript:*MEMORY[0x277CCE0F0]];

    if (v15)
    {
      v16 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _celsiusValueFromQuantity:v15 scale:1];
      stringValue2 = [v16 stringValue];
      [v13 setObject:stringValue2 forKeyedSubscript:@"tempUncorrectedPastDay"];
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

- (id)_lastSleepDayRelativeSleepingWristTemperatureWithCurrentDate:(id)date gregorianCalendar:(id)calendar
{
  calendarCopy = calendar;
  dateCopy = date;
  v8 = _HKMCAppleSleepingWristTemperatureType();
  v9 = [MEMORY[0x277D10890] calculatorForQuantityType:v8 intervalCollection:0 options:_HKStatisticsOptionBaselineRelativeQuantities() | 0x20 mergeStrategy:1];
  v10 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _predicateForAppleWatchSamplesInLastNSleepDays:1 currentDate:dateCopy gregorianCalendar:calendarCopy sampleType:v8];

  v11 = objc_alloc(MEMORY[0x277D108B0]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  _rollingBaselineConfiguration = [v8 _rollingBaselineConfiguration];
  v14 = [v11 initForProfile:WeakRetained quantityType:v8 predicate:v10 restrictedSourceEntities:0 configuration:_rollingBaselineConfiguration currentDate:dateCopy];

  [v9 setDataSource:v14];
  v20 = 0;
  LODWORD(_rollingBaselineConfiguration) = [v9 queryForInitialStatisticsWithError:&v20];
  currentStatistics = [v9 currentStatistics];
  v16 = currentStatistics;
  mostRecentQuantity = 0;
  if (_rollingBaselineConfiguration && currentStatistics)
  {
    if ([currentStatistics dataCount])
    {
      mostRecentQuantity = [v16 mostRecentQuantity];

      if (mostRecentQuantity)
      {
        mostRecentQuantity2 = [v16 mostRecentQuantity];
        mostRecentQuantity = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _changeInCelsiusStringFromQuantity:mostRecentQuantity2 scale:1];
      }
    }

    else
    {
      mostRecentQuantity = 0;
    }
  }

  return mostRecentQuantity;
}

- (id)_allNoiseFieldsWithCurrentDate:(id)date gregorianCalendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  v8 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _dominantSleepingWristTemperatureSourceEntityPredicateOverLastNDays:30 currentDate:dateCopy gregorianCalendar:calendarCopy];
  if (v8)
  {
    v9 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _sleepingWristTemperatureSamplesFromLastNSleepDays:30 currentDate:dateCopy gregorianCalendar:calendarCopy sourceEntityPredicate:v8];
    v10 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _noiseMetricsFromSleepingWristTemperatureSamples:v9 gregorianCalendar:calendarCopy];
    v11 = [v10 mutableCopy];

    v12 = [v9 hk_map:&__block_literal_global_481];
    v13 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _sampleStandardDeviationOfValues:v12];

    if (v13)
    {
      [v13 doubleValue];
      v14 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _roundDouble:2 scale:?];
      stringValue = [v14 stringValue];
      [v11 setObject:stringValue forKeyedSubscript:@"stdDevPast30Days"];
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

- (id)_noiseMetricsFromSleepingWristTemperatureSamples:(id)samples gregorianCalendar:(id)calendar
{
  samplesCopy = samples;
  calendarCopy = calendar;
  selfCopy = self;
  v8 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _samplesByMorningIndex:samplesCopy gregorianCalendar:calendarCopy];
  firstObject = [samplesCopy firstObject];
  endDate = [firstObject endDate];
  v11 = [endDate hk_morningIndexWithCalendar:calendarCopy];

  v51 = samplesCopy;
  lastObject = [samplesCopy lastObject];
  endDate2 = [lastObject endDate];
  v14 = [endDate2 hk_morningIndexWithCalendar:calendarCopy];

  v50 = v8;
  v15 = [v8 hk_map:&__block_literal_global_484];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
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
        [array2 addObject:v29];

        if (v24)
        {
          [v20 doubleValue];
          v31 = v30;
          [v22 doubleValue];
          v33 = v31 + v32 * -0.5;
          [v24 doubleValue];
          v35 = [MEMORY[0x277CCABB0] numberWithDouble:v33 + v34 * -0.5];
          [array addObject:v35];
        }
      }
    }

    while (v18 - 1 != v14);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v37 = [(HDMCWristTemperatureDailyAnalyticsEvent *)selfCopy _sampleStandardDeviationOfValues:array];
  v38 = v37;
  if (v37)
  {
    [v37 doubleValue];
    v40 = [(HDMCWristTemperatureDailyAnalyticsEvent *)selfCopy _roundDouble:2 scale:v39 / 1.22474487];
    stringValue = [v40 stringValue];
    [dictionary setObject:stringValue forKeyedSubscript:@"dayToDayNoisePast30Days"];
  }

  v42 = [(HDMCWristTemperatureDailyAnalyticsEvent *)selfCopy _sampleStandardDeviationOfValues:array2];
  v43 = v42;
  if (v42)
  {
    [v42 doubleValue];
    v45 = [(HDMCWristTemperatureDailyAnalyticsEvent *)selfCopy _roundDouble:2 scale:v44 / 1.41421356];
    stringValue2 = [v45 stringValue];
    [dictionary setObject:stringValue2 forKeyedSubscript:@"stdDevFilteredPast30Days"];
  }

  v47 = [dictionary copy];

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

- (id)_samplesByMorningIndex:(id)index gregorianCalendar:(id)calendar
{
  v36 = *MEMORY[0x277D85DE8];
  indexCopy = index;
  calendarCopy = calendar;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = indexCopy;
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
        endDate = [v11 endDate];
        v13 = [endDate hk_morningIndexWithCalendar:calendarCopy];

        v14 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
        v15 = [dictionary objectForKeyedSubscript:v14];

        v16 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
        if (v15)
        {
          v17 = [dictionary objectForKeyedSubscript:v16];

          endDate2 = [v17 endDate];
          startDate = [v17 startDate];
          [endDate2 timeIntervalSinceDate:startDate];
          v21 = v20;

          endDate3 = [v11 endDate];
          startDate2 = [v11 startDate];
          [endDate3 timeIntervalSinceDate:startDate2];
          v25 = v24;

          if (v21 <= v25)
          {
            v26 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
            [dictionary setObject:v11 forKeyedSubscript:v26];
          }
        }

        else
        {
          [dictionary setObject:v11 forKeyedSubscript:v16];
          v17 = v16;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v8);
  }

  v27 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (id)_countOfUniqueSourcesOfWristTemperatureSamplesFieldsWithCurrentDate:(id)date gregorianCalendar:(id)calendar
{
  v21[2] = *MEMORY[0x277D85DE8];
  calendarCopy = calendar;
  dateCopy = date;
  v8 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _sleepingWristTemperatureSamplesFromLastNSleepDays:30 currentDate:dateCopy gregorianCalendar:calendarCopy sourceEntityPredicate:0];
  v9 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _sleepingWristTemperatureSamplesFromLastNSleepDays:365 currentDate:dateCopy gregorianCalendar:calendarCopy sourceEntityPredicate:0];

  v10 = MEMORY[0x277CBEB38];
  v20[0] = @"numUniqueWatchesPast30Days";
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDMCWristTemperatureDailyAnalyticsEvent _countOfUniqueSourcesFromSamples:](self, "_countOfUniqueSourcesFromSamples:", v8)}];
  v20[1] = @"numUniqueWatchesPastYear";
  v21[0] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDMCWristTemperatureDailyAnalyticsEvent _countOfUniqueSourcesFromSamples:](self, "_countOfUniqueSourcesFromSamples:", v9)}];
  v21[1] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v14 = [v10 dictionaryWithDictionary:v13];

  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  LODWORD(v12) = [mEMORY[0x277CCDD30] isAppleInternalInstall];

  if (v12)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDMCWristTemperatureDailyAnalyticsEvent _countOfUniqueSerialNumbersFromSamples:](self, "_countOfUniqueSerialNumbersFromSamples:", v8)}];
    [v14 setObject:v16 forKeyedSubscript:@"numUniqueWatchSerialsPast30Days"];
  }

  v17 = [v14 copy];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (int64_t)_countOfUniqueSourcesFromSamples:(id)samples
{
  v20 = *MEMORY[0x277D85DE8];
  samplesCopy = samples;
  v4 = [MEMORY[0x277CBEB58] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = samplesCopy;
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

        sourceRevision = [*(*(&v15 + 1) + 8 * v9) sourceRevision];
        source = [sourceRevision source];
        [v4 addObject:source];

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

- (int64_t)_countOfUniqueSerialNumbersFromSamples:(id)samples
{
  v27 = *MEMORY[0x277D85DE8];
  samplesCopy = samples;
  v5 = MEMORY[0x277D10718];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v7 = [v5 _wristTemperatureIdentifierDomainWithProfile:WeakRetained];

  _wristTemperatureSerialNumbersBySourceIdentifier = [v7 _wristTemperatureSerialNumbersBySourceIdentifier];
  v9 = [MEMORY[0x277CBEB58] set];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = samplesCopy;
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

        sourceRevision = [*(*(&v22 + 1) + 8 * v14) sourceRevision];
        source = [sourceRevision source];
        bundleIdentifier = [source bundleIdentifier];

        v18 = [_wristTemperatureSerialNumbersBySourceIdentifier objectForKeyedSubscript:bundleIdentifier];
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

- (id)_weeksSinceDeliveryWithDataSource:(id)source
{
  sourceCopy = source;
  v5 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _featureStatusForFeatureIdentifier:*MEMORY[0x277CCC0F8] dataSource:sourceCopy error:0];
  v6 = v5;
  if (v5)
  {
    if ([v5 isOnboardingRecordPresent])
    {
      v7 = MEMORY[0x277CCABB0];
      onboardingRecord = [v6 onboardingRecord];
      onboardingCompletion = [onboardingRecord onboardingCompletion];
      completionDate = [onboardingCompletion completionDate];
      v11 = [v7 numberWithInteger:{-[HDMCWristTemperatureDailyAnalyticsEvent _bucketedWeeksSinceDate:dataSource:](self, "_bucketedWeeksSinceDate:dataSource:", completionDate, sourceCopy)}];
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

- (int64_t)_bucketedWeeksSinceDate:(id)date dataSource:(id)source
{
  dateCopy = date;
  environmentDataSource = [source environmentDataSource];
  v7 = [environmentDataSource bucketedNumberOfWeeksSinceDate:dateCopy];

  v8 = *MEMORY[0x277CCB7A0];
  if (v7)
  {
    v8 = v7;
  }

  v9 = v8;

  integerValue = [v9 integerValue];
  return integerValue;
}

- (id)_hasCycleFactorsActive
{
  analysisManager = self->_analysisManager;
  if (analysisManager && (([(HDMCAnalysisManager *)analysisManager currentAnalysis], (v4 = objc_claimAutoreleasedReturnValue()) != 0) || ([(HDMCAnalysisManager *)self->_analysisManager analyzeWithError:0], (v4 = objc_claimAutoreleasedReturnValue()) != 0)))
  {
    v5 = v4;
    v6 = MEMORY[0x277CCABB0];
    ongoingCycleFactors = [v4 ongoingCycleFactors];
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
  unitPreferencesManager = [WeakRetained unitPreferencesManager];
  v4 = _HKMCAppleSleepingWristTemperatureType();
  v5 = [unitPreferencesManager preferredUnitForType:v4 error:0];

  if (v5)
  {
    degreeCelsiusUnit = [MEMORY[0x277CCDAB0] degreeCelsiusUnit];
    v7 = [v5 isEqual:degreeCelsiusUnit];

    if (v7)
    {
      v8 = @"C";
    }

    else
    {
      degreeFahrenheitUnit = [MEMORY[0x277CCDAB0] degreeFahrenheitUnit];
      v10 = [v5 isEqual:degreeFahrenheitUnit];

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

- (id)_featureStatusForFeatureIdentifier:(id)identifier dataSource:(id)source error:(id *)error
{
  identifierCopy = identifier;
  healthDataSource = [source healthDataSource];
  v9 = [healthDataSource featureStatusProviderForIdentifier:identifierCopy];

  v10 = [v9 featureStatusWithError:error];

  return v10;
}

- (id)_sleepingWristTemperatureSamplesFromLastNSleepDays:(int64_t)days currentDate:(id)date gregorianCalendar:(id)calendar sourceEntityPredicate:(id)predicate
{
  v30[1] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  calendarCopy = calendar;
  dateCopy = date;
  v13 = _HKMCAppleSleepingWristTemperatureType();
  v14 = MEMORY[0x277D10810];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v16 = [v14 entityEnumeratorWithType:v13 profile:WeakRetained];

  v17 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _predicateForAppleWatchSamplesInLastNSleepDays:days currentDate:dateCopy gregorianCalendar:calendarCopy sampleType:v13 sourceEntityPredicate:predicateCopy];

  [v16 setPredicate:v17];
  v18 = [MEMORY[0x277D10B68] orderingTermWithProperty:*MEMORY[0x277D104A8] entityClass:objc_opt_class() ascending:1];
  v30[0] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
  [v16 setOrderingTerms:v19];

  array = [MEMORY[0x277CBEB18] array];
  v29 = 0;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __146__HDMCWristTemperatureDailyAnalyticsEvent__sleepingWristTemperatureSamplesFromLastNSleepDays_currentDate_gregorianCalendar_sourceEntityPredicate___block_invoke;
  v27[3] = &unk_27865ABD0;
  v21 = array;
  v28 = v21;
  LOBYTE(dateCopy) = [v16 enumerateWithError:&v29 handler:v27];
  v22 = v29;
  if (dateCopy)
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

- (id)_firstPartySleepSamplesFromLastNSleepDays:(int64_t)days currentDate:(id)date gregorianCalendar:(id)calendar
{
  v29[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCD0C0];
  v9 = *MEMORY[0x277CCBAB8];
  calendarCopy = calendar;
  dateCopy = date;
  v12 = [v8 categoryTypeForIdentifier:v9];
  v13 = MEMORY[0x277D105E8];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v15 = [v13 entityEnumeratorWithType:v12 profile:WeakRetained];

  v16 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _predicateForAppleWatchSamplesInLastNSleepDays:days currentDate:dateCopy gregorianCalendar:calendarCopy sampleType:v12 sourceEntityPredicate:0];

  [v15 setPredicate:v16];
  v17 = [MEMORY[0x277D10B68] orderingTermWithProperty:*MEMORY[0x277D104A8] entityClass:objc_opt_class() ascending:1];
  v29[0] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  [v15 setOrderingTerms:v18];

  array = [MEMORY[0x277CBEB18] array];
  v28 = 0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __115__HDMCWristTemperatureDailyAnalyticsEvent__firstPartySleepSamplesFromLastNSleepDays_currentDate_gregorianCalendar___block_invoke;
  v26[3] = &unk_27865ABD0;
  v20 = array;
  v27 = v20;
  LOBYTE(dateCopy) = [v15 enumerateWithError:&v28 handler:v26];
  v21 = v28;
  if (dateCopy)
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

- (id)_dominantSleepingWristTemperatureSourceOverLastNDays:(int64_t)days currentDate:(id)date gregorianCalendar:(id)calendar
{
  dateCopy = date;
  calendarCopy = calendar;
  v10 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _sleepingWristTemperatureSamplesFromLastNSleepDays:days currentDate:dateCopy gregorianCalendar:calendarCopy sourceEntityPredicate:0];
  if ([v10 count])
  {
    v11 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _sleepingWristTemperatureSampleCountBySourceOverLastNDays:days currentDate:dateCopy gregorianCalendar:calendarCopy];
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

- (id)_dominantSleepingWristTemperatureSourceEntityPredicateOverLastNDays:(int64_t)days currentDate:(id)date gregorianCalendar:(id)calendar
{
  v6 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _dominantSleepingWristTemperatureSourceOverLastNDays:days currentDate:date gregorianCalendar:calendar];
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    sourceManager = [WeakRetained sourceManager];
    bundleIdentifier = [v6 bundleIdentifier];
    v10 = [sourceManager allSourcesForBundleIdentifier:bundleIdentifier error:0];

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

- (id)_sleepingWristTemperatureSampleCountBySourceOverLastNDays:(int64_t)days currentDate:(id)date gregorianCalendar:(id)calendar
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _sleepingWristTemperatureSamplesFromLastNSleepDays:days currentDate:date gregorianCalendar:calendar sourceEntityPredicate:0];
  if ([v5 count])
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
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

          sourceRevision = [*(*(&v22 + 1) + 8 * i) sourceRevision];
          source = [sourceRevision source];

          v14 = [dictionary objectForKeyedSubscript:source];

          if (v14)
          {
            v15 = MEMORY[0x277CCABB0];
            v16 = [dictionary objectForKeyedSubscript:source];
            v17 = [v15 numberWithInteger:{objc_msgSend(v16, "integerValue") + 1}];
            [dictionary setObject:v17 forKeyedSubscript:source];
          }

          else
          {
            [dictionary setObject:&unk_283CC31C8 forKeyedSubscript:source];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }

    v18 = [dictionary copy];
    v5 = v21;
  }

  else
  {
    v18 = MEMORY[0x277CBEC10];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_predicateForAppleWatchSamplesInLastNSleepDays:(int64_t)days currentDate:(id)date gregorianCalendar:(id)calendar sampleType:(id)type sourceEntityPredicate:(id)predicate
{
  v20[2] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  v13 = [(HDMCWristTemperatureDailyAnalyticsEvent *)self _predicateForAppleWatchSamplesInLastNSleepDays:days currentDate:date gregorianCalendar:calendar sampleType:type];
  v14 = v13;
  if (predicateCopy)
  {
    v15 = MEMORY[0x277D10B20];
    v20[0] = v13;
    v20[1] = predicateCopy;
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

- (id)_predicateForAppleWatchSamplesInLastNSleepDays:(int64_t)days currentDate:(id)date gregorianCalendar:(id)calendar sampleType:(id)type
{
  v25 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  calendarCopy = calendar;
  v11 = [date hk_sleepDayStartWithCalendar:calendarCopy];
  v12 = [calendarCopy dateByAddingUnit:16 value:-days toDate:v11 options:0];

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

- (id)_sampleStandardDeviationOfValues:(id)values
{
  valuesCopy = values;
  if ([valuesCopy count] >= 2)
  {
    v5 = [valuesCopy hk_averageUsingEvaluationBlock:&__block_literal_global_513];
    [v5 doubleValue];
    v7 = v6;

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __76__HDMCWristTemperatureDailyAnalyticsEvent__sampleStandardDeviationOfValues___block_invoke_2;
    v12[3] = &__block_descriptor_40_e18_d16__0__NSNumber_8l;
    v12[4] = v7;
    [valuesCopy hk_sumUsingEvaluationBlock:v12];
    v9 = v8;
    v10 = [valuesCopy count];
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