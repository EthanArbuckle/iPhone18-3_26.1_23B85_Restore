@interface HDHRHypertensionNotificationAnalysisEvent
- (HDHRHypertensionNotificationAnalysisEvent)init;
- (HDHRHypertensionNotificationAnalysisEvent)initWithProfile:(id)profile dateInterval:(id)interval additionalPayload:(id)payload;
- (id)_daysSinceHTNLastEnabled:(id)enabled;
- (id)_dnuAdditionalPayload;
- (id)_dnuNumDaysWatchWornAnalyticsWithCalendar:(id)calendar;
- (id)_featureStatusForFeatureIdentifier:(id)identifier dataSource:(id)source error:(id *)error;
- (id)_ihaAdditionalPayload;
- (id)_ihaDemographicsPayloadWithDataSource:(id)source;
- (id)_isAFibHistoryEnabledWithDataSource:(id)source;
- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error;
- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error;
@end

@implementation HDHRHypertensionNotificationAnalysisEvent

- (HDHRHypertensionNotificationAnalysisEvent)initWithProfile:(id)profile dateInterval:(id)interval additionalPayload:(id)payload
{
  profileCopy = profile;
  intervalCopy = interval;
  payloadCopy = payload;
  v14.receiver = self;
  v14.super_class = HDHRHypertensionNotificationAnalysisEvent;
  v11 = [(HDHRHypertensionNotificationAnalysisEvent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_profile, profileCopy);
    objc_storeStrong(&v12->_dateInterval, interval);
    objc_storeStrong(&v12->_additionalPayload, payload);
  }

  return v12;
}

- (HDHRHypertensionNotificationAnalysisEvent)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (id)makeUnrestrictedEventPayloadWithDataSource:(id)source error:(id *)error
{
  sourceCopy = source;
  environmentDataSource = [sourceCopy environmentDataSource];
  calendarCache = [environmentDataSource calendarCache];
  currentCalendar = [calendarCache currentCalendar];

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = MEMORY[0x277CCABB0];
  environmentDataSource2 = [sourceCopy environmentDataSource];
  v12 = [v10 numberWithBool:{objc_msgSend(environmentDataSource2, "areHealthNotificationsAuthorized")}];
  [v9 setObject:v12 forKeyedSubscript:*MEMORY[0x277CCB7C8]];

  v13 = MEMORY[0x277CCABB0];
  environmentDataSource3 = [sourceCopy environmentDataSource];
  v15 = [v13 numberWithBool:{objc_msgSend(environmentDataSource3, "isImproveHealthAndActivityEnabled")}];
  [v9 setObject:v15 forKeyedSubscript:*MEMORY[0x277CCB7F8]];

  environmentDataSource4 = [sourceCopy environmentDataSource];

  activePairedDeviceProductType = [environmentDataSource4 activePairedDeviceProductType];
  [v9 setObject:activePairedDeviceProductType forKeyedSubscript:*MEMORY[0x277CCB7B8]];

  v18 = [(HDHRHypertensionNotificationAnalysisEvent *)self _dnuNumDaysWatchWornAnalyticsWithCalendar:currentCalendar];
  [v9 hk_addEntriesFromNonNilDictionary:v18];

  _dnuAdditionalPayload = [(HDHRHypertensionNotificationAnalysisEvent *)self _dnuAdditionalPayload];
  [v9 hk_addEntriesFromNonNilDictionary:_dnuAdditionalPayload];

  return v9;
}

- (id)makeIHAGatedEventPayloadWithDataSource:(id)source error:(id *)error
{
  v153 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [(HDHRHypertensionNotificationAnalysisEvent *)self _ihaDemographicsPayloadWithDataSource:sourceCopy];
  [v6 hk_addEntriesFromNonNilDictionary:v7];

  _ihaAdditionalPayload = [(HDHRHypertensionNotificationAnalysisEvent *)self _ihaAdditionalPayload];
  [v6 hk_addEntriesFromNonNilDictionary:_ihaAdditionalPayload];

  v9 = *MEMORY[0x277CCBBA8];
  v10 = [MEMORY[0x277CCD250] correlationTypeForIdentifier:*MEMORY[0x277CCBBA8]];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  dateInterval = self->_dateInterval;
  p_dateInterval = &self->_dateInterval;
  v13 = HDAnalyticsCountOfSamples();
  v14 = 0;

  v131 = v10;
  if (v13)
  {
    v15 = HDHRAnalyticsPropertyNameTotalCountBpValuesEntered;
    v16 = v6;
    v17 = v13;
    v18 = v13;
  }

  else
  {
    _HKInitializeLogging();
    v19 = HKLogAnalytics();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [HDHRHypertensionNotificationAnalysisEvent makeIHAGatedEventPayloadWithDataSource:error:];
    }

    v17 = 0;

    v18 = *MEMORY[0x277CCB7A0];
    v15 = HDHRAnalyticsPropertyNameTotalCountBpValuesEntered;
    v16 = v6;
  }

  [v16 setObject:v18 forKeyedSubscript:v15];
  v20 = [MEMORY[0x277CCD0C0] categoryTypeForIdentifier:*MEMORY[0x277CCB8E0]];
  v21 = objc_loadWeakRetained(&self->_profile);
  v22 = *p_dateInterval;
  v130 = v20;
  v23 = HDHRAnalyticsCountOfSamples(v21, v20);
  [v6 setObject:v23 forKeyedSubscript:HDHRAnalyticsPropertyNameNumStandHoursInPast30Days];

  v132 = sourceCopy;
  environmentDataSource = [sourceCopy environmentDataSource];
  calendarCache = [environmentDataSource calendarCache];
  currentCalendar = [calendarCache currentCalendar];

  v27 = [MEMORY[0x277CBEAB8] hk_dateComponentsForCalendarUnit:32];
  v129 = currentCalendar;
  [v27 setCalendar:currentCalendar];

  v28 = objc_loadWeakRetained(&self->_profile);
  heartRateType = [MEMORY[0x277CCD830] heartRateType];
  v30 = *p_dateInterval;
  selfCopy = self;
  v31 = objc_loadWeakRetained(&self->_profile);
  v32 = HDHRBackgroundHeartRateContextPredicate(v31);
  v128 = v27;
  v33 = HDAnalyticsCountOfIntervalsForQuantityType();
  v34 = 0;

  v133 = v33;
  if (v33)
  {
    v35 = HDHRAnalyticsPropertyNameNumBGHRHoursPast30Days;
    v36 = v6;
    v37 = v33;
  }

  else
  {
    _HKInitializeLogging();
    v38 = HKLogAnalytics();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [HDHRHypertensionNotificationAnalysisEvent makeIHAGatedEventPayloadWithDataSource:error:];
    }

    v37 = *MEMORY[0x277CCB7A0];
    v35 = HDHRAnalyticsPropertyNameNumBGHRHoursPast30Days;
    v36 = v6;
  }

  [v36 setObject:v37 forKeyedSubscript:v35];
  v39 = v17;

  p_isa = &selfCopy->super.isa;
  v41 = objc_loadWeakRetained(&selfCopy->_profile);
  v42 = *p_dateInterval;
  v43 = v41;
  v44 = v42;
  v45 = v9;
  v46 = v44;
  v47 = [MEMORY[0x277CCD720] correlationTypeForIdentifier:v45];
  v48 = HDSampleEntityPredicateForDateInterval();
  v142 = 0;
  v49 = [MEMORY[0x277D10848] samplesWithType:v47 profile:v43 encodingOptions:MEMORY[0x277CBEC10] predicate:v48 limit:0 anchor:0 error:&v142];
  v50 = v142;
  v126 = v48;
  v127 = v47;
  if (v50)
  {
    v51 = v50;
    v52 = 0;
    v53 = v50;
    v54 = v49;
    v55 = v39;
    v56 = v133;
    goto LABEL_39;
  }

  v125 = v46;
  v137 = v49;
  if (![v49 count])
  {
    _HKInitializeLogging();
    v98 = HKLogAnalytics();
    if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
    {
      *v151 = 138412290;
      v152 = v125;
      _os_log_impl(&dword_229486000, v98, OS_LOG_TYPE_DEFAULT, "No Blood Pressure samples found for date interval: %@", v151, 0xCu);
    }

    v53 = 0;
    v52 = 0;
    v46 = v125;
    v54 = v49;
    v55 = v39;
    v56 = v133;
    goto LABEL_38;
  }

  v124 = v43;
  v136 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCC980]];
  v57 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCC978]];
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v141 = 0u;
  v58 = v49;
  v59 = [v58 countByEnumeratingWithState:&v138 objects:v151 count:16];
  if (!v59)
  {
    v54 = v49;

    v55 = v39;
    v56 = v133;
LABEL_34:
    _HKInitializeLogging();
    v94 = HKLogAnalytics();
    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v144 = v125;
      _os_log_impl(&dword_229486000, v94, OS_LOG_TYPE_DEFAULT, "Zero correlated Blood Pressure samples found for date interval: %@", buf, 0xCu);
    }

    v52 = 0;
    goto LABEL_37;
  }

  v60 = v59;
  v122 = v6;
  v123 = v39;
  v61 = 0;
  v62 = *v139;
  v63 = 0.0;
  v64 = 0.0;
  do
  {
    for (i = 0; i != v60; ++i)
    {
      if (*v139 != v62)
      {
        objc_enumerationMutation(v58);
      }

      v66 = *(*(&v138 + 1) + 8 * i);
      v67 = [v66 objectsForType:v136];
      allObjects = [v67 allObjects];
      firstObject = [allObjects firstObject];

      v70 = [v66 objectsForType:v57];
      allObjects2 = [v70 allObjects];
      firstObject2 = [allObjects2 firstObject];

      if (firstObject)
      {
        v73 = firstObject2 == 0;
      }

      else
      {
        v73 = 1;
      }

      if (!v73)
      {
        quantity = [firstObject quantity];
        millimeterOfMercuryUnit = [MEMORY[0x277CCDAB0] millimeterOfMercuryUnit];
        [quantity doubleValueForUnit:millimeterOfMercuryUnit];
        v77 = v76;

        v64 = v64 + v77;
        quantity2 = [firstObject2 quantity];
        millimeterOfMercuryUnit2 = [MEMORY[0x277CCDAB0] millimeterOfMercuryUnit];
        [quantity2 doubleValueForUnit:millimeterOfMercuryUnit2];
        v81 = v80;

        v63 = v63 + v81;
        ++v61;
      }

      v54 = v137;
    }

    v60 = [v58 countByEnumeratingWithState:&v138 objects:v151 count:16];
  }

  while (v60);

  v6 = v122;
  v55 = v123;
  v56 = v133;
  p_isa = &selfCopy->super.isa;
  if (!v61)
  {
    goto LABEL_34;
  }

  v121 = v57;
  v82 = v64 / v61;
  v83 = v63 / v61;
  _HKInitializeLogging();
  v84 = HKLogAnalytics();
  if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
  {
    v85 = [MEMORY[0x277CCABB0] numberWithInteger:v61];
    v86 = HKSensitiveLogItem();
    v87 = HKSensitiveLogItem();
    v88 = [MEMORY[0x277CCABB0] numberWithDouble:v82];
    v89 = HKSensitiveLogItem();
    v90 = [MEMORY[0x277CCABB0] numberWithDouble:v83];
    v91 = HKSensitiveLogItem();
    *buf = 138413058;
    v144 = v86;
    v145 = 2112;
    v146 = v87;
    v147 = 2112;
    v148 = v89;
    v149 = 2112;
    v150 = v91;
    _os_log_impl(&dword_229486000, v84, OS_LOG_TYPE_DEFAULT, "Blood Pressure average of %@ samples within date interval: %@ is systolic: %@ and diastolic: %@", buf, 0x2Au);

    v55 = v123;
    p_isa = &selfCopy->super.isa;
  }

  v92 = MEMORY[0x277CCD7E8];
  millimeterOfMercuryUnit3 = [MEMORY[0x277CCDAB0] millimeterOfMercuryUnit];
  v94 = [v92 quantityWithUnit:millimeterOfMercuryUnit3 doubleValue:v82];

  v95 = MEMORY[0x277CCD7E8];
  millimeterOfMercuryUnit4 = [MEMORY[0x277CCDAB0] millimeterOfMercuryUnit];
  v97 = [v95 quantityWithUnit:millimeterOfMercuryUnit4 doubleValue:v83];

  v52 = [MEMORY[0x277CCD080] categoryForClassificationGuidelines:0 systolic:v94 diastolic:v97];

  v56 = v133;
  v54 = v137;
  v57 = v121;
LABEL_37:

  v53 = 0;
  v43 = v124;
  v46 = v125;
LABEL_38:
  v51 = 0;
LABEL_39:

  v99 = v53;
  if (v99)
  {
    _HKInitializeLogging();
    v100 = HKLogAnalytics();
    if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      [(HDHRHypertensionNotificationAnalysisEvent *)p_dateInterval makeIHAGatedEventPayloadWithDataSource:v99 error:v100];
    }

LABEL_42:

    [v6 setObject:*MEMORY[0x277CCB7A0] forKeyedSubscript:HDHRAnalyticsPropertyNameMeanEnteredBpCategory];
    goto LABEL_47;
  }

  if (!v52)
  {
    _HKInitializeLogging();
    v100 = HKLogAnalytics();
    if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      [(HDHRHypertensionNotificationAnalysisEvent *)p_dateInterval makeIHAGatedEventPayloadWithDataSource:v100 error:v115, v116, v117, v118, v119, v120];
    }

    goto LABEL_42;
  }

  v101 = HDHRBloodPressureClassificationAnalyticsString(v52);
  _HKInitializeLogging();
  v102 = HKLogAnalytics();
  if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
  {
    v103 = HKSensitiveLogItem();
    *v151 = 138412290;
    v152 = v103;
    _os_log_impl(&dword_229486000, v102, OS_LOG_TYPE_DEFAULT, "Blood Pressure analytics classification: %@", v151, 0xCu);
  }

  [v6 setObject:v101 forKeyedSubscript:HDHRAnalyticsPropertyNameMeanEnteredBpCategory];
LABEL_47:

  v104 = [MEMORY[0x277CCD8D8] dataTypeWithCode:139];
  v105 = objc_loadWeakRetained(p_isa + 1);
  v106 = *p_dateInterval;
  v107 = HDAnalyticsCountOfSamples();
  v108 = 0;

  v109 = v107;
  if (!v55)
  {
    _HKInitializeLogging();
    v110 = HKLogAnalytics();
    if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
    {
      [HDHRHypertensionNotificationAnalysisEvent makeIHAGatedEventPayloadWithDataSource:error:];
    }

    v109 = *MEMORY[0x277CCB7A0];
  }

  [v6 setObject:v109 forKeyedSubscript:HDHRAnalyticsPropertyNameNumHRVValuesPast30Days];
  v111 = [p_isa _isAFibHistoryEnabledWithDataSource:v132];
  [v6 setObject:v111 forKeyedSubscript:HDHRAnalyticsPropertyNameIsAfibHistoryEnabled];

  v112 = [p_isa _daysSinceHTNLastEnabled:v132];
  [v6 setObject:v112 forKeyedSubscript:HDHRAnalyticsPropertyNameDaysSinceNotificationsLastEnabled];

  v113 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_dnuAdditionalPayload
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(NSDictionary *)self->_additionalPayload objectForKeyedSubscript:HDHRAnalyticsPropertyNameNumScores];
  v5 = v4;
  v6 = *MEMORY[0x277CCB7A0];
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = *MEMORY[0x277CCB7A0];
  }

  [v3 setObject:v7 forKeyedSubscript:HDHRAnalyticsPropertyNameNumScores];

  v8 = [(NSDictionary *)self->_additionalPayload objectForKeyedSubscript:HDHRAnalyticsPropertyNameValidScoreDays];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  [v3 setObject:v10 forKeyedSubscript:HDHRAnalyticsPropertyNameValidScoreDays];

  return v3;
}

- (id)_ihaAdditionalPayload
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(NSDictionary *)self->_additionalPayload objectForKeyedSubscript:HDHRAnalyticsPropertyNameAlertStatus];
  v5 = v4;
  v6 = *MEMORY[0x277CCB7A0];
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = *MEMORY[0x277CCB7A0];
  }

  [v3 setObject:v7 forKeyedSubscript:HDHRAnalyticsPropertyNameAlertStatus];

  v8 = [(NSDictionary *)self->_additionalPayload objectForKeyedSubscript:HDHRAnalyticsPropertyNameMeanScore];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  [v3 setObject:v10 forKeyedSubscript:HDHRAnalyticsPropertyNameMeanScore];

  return v3;
}

- (id)_dnuNumDaysWatchWornAnalyticsWithCalendar:(id)calendar
{
  v45 = *MEMORY[0x277D85DE8];
  calendarCopy = calendar;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = [MEMORY[0x277CBEAB8] hk_dateComponentsForCalendarUnit:32];
  v38 = calendarCopy;
  [v6 setCalendar:calendarCopy];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  heartRateType = [MEMORY[0x277CCD830] heartRateType];
  dateInterval = self->_dateInterval;
  v10 = objc_loadWeakRetained(&self->_profile);
  v11 = HDHRBackgroundHeartRateContextPredicate(v10);
  v43 = 0;
  v12 = HDAnalyticsStatisticsCollectionOfIntervalsForQuantityType();
  v13 = 0;

  if (v12)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    statistics = [v12 statistics];
    v15 = [statistics countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v15)
    {
      v16 = v15;
      v34 = v13;
      v35 = v12;
      v36 = v6;
      v37 = v5;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = *v40;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v40 != v21)
          {
            objc_enumerationMutation(statistics);
          }

          v23 = *(*(&v39 + 1) + 8 * i);
          if ([v23 dataCount])
          {
            startDate = [v23 startDate];
            v25 = [startDate hk_dayIndexWithCalendar:v38];

            if (v25 == v17)
            {
              ++v20;
            }

            else
            {
              if (v20 > 7)
              {
                ++v18;
              }

              if (v20 > 11)
              {
                ++v19;
              }

              v17 = v25;
              v20 = 1;
            }
          }
        }

        v16 = [statistics countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v16);

      if (v20 <= 7)
      {
        v26 = v18;
      }

      else
      {
        v26 = v18 + 1;
      }

      if (v20 <= 11)
      {
        v27 = v19;
      }

      else
      {
        v27 = v19 + 1;
      }

      v6 = v36;
      v5 = v37;
      v13 = v34;
      v12 = v35;
    }

    else
    {

      v26 = 0;
      v27 = 0;
    }

    v30 = [MEMORY[0x277CCABB0] numberWithInteger:v26];
    [v5 setObject:v30 forKeyedSubscript:HDHRAnalyticsPropertyNameNumDaysWatchWornMoreThan8Hours];

    v31 = [MEMORY[0x277CCABB0] numberWithInteger:v27];
    [v5 setObject:v31 forKeyedSubscript:HDHRAnalyticsPropertyNameNumDaysWatchWornMoreThan12Hours];
  }

  else
  {
    _HKInitializeLogging();
    v28 = HKLogAnalytics();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [HDHRHypertensionNotificationAnalysisEvent _dnuNumDaysWatchWornAnalyticsWithCalendar:];
    }

    v29 = *MEMORY[0x277CCB7A0];
    [v5 setObject:*MEMORY[0x277CCB7A0] forKeyedSubscript:HDHRAnalyticsPropertyNameNumDaysWatchWornMoreThan8Hours];
    [v5 setObject:v29 forKeyedSubscript:HDHRAnalyticsPropertyNameNumDaysWatchWornMoreThan12Hours];
  }

  v32 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_ihaDemographicsPayloadWithDataSource:(id)source
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

  if (v11)
  {
    v12 = *MEMORY[0x277CCB7C0];
    v13 = dictionary;
    v14 = v11;
  }

  else
  {
    v14 = *MEMORY[0x277CCB7A0];
    v12 = *MEMORY[0x277CCB7C0];
    v13 = dictionary;
  }

  [v13 setObject:v14 forKeyedSubscript:v12];

  return dictionary;
}

- (id)_featureStatusForFeatureIdentifier:(id)identifier dataSource:(id)source error:(id *)error
{
  identifierCopy = identifier;
  healthDataSource = [source healthDataSource];
  v9 = [healthDataSource featureStatusProviderForIdentifier:identifierCopy];

  v10 = [v9 featureStatusWithError:error];

  return v10;
}

- (id)_isAFibHistoryEnabledWithDataSource:(id)source
{
  healthDataSource = [source healthDataSource];
  v4 = [healthDataSource featureStatusProviderForIdentifier:*MEMORY[0x277CCBFF0]];

  v5 = [v4 featureStatusWithError:0];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:*MEMORY[0x277CCBEA0]];
    v8 = [v7 isRequirementSatisfiedWithIdentifier:*MEMORY[0x277CCBF38]];

    v9 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v6, "isOnboardingRecordPresent") & v8}];
  }

  else
  {
    v9 = *MEMORY[0x277CCB798];
  }

  v10 = v9;

  return v10;
}

- (id)_daysSinceHTNLastEnabled:(id)enabled
{
  enabledCopy = enabled;
  healthDataSource = [enabledCopy healthDataSource];
  v5 = [healthDataSource featureStatusProviderForIdentifier:*MEMORY[0x277CCC068]];

  v6 = [v5 featureStatusWithError:0];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_7;
  }

  if (![v6 isOnboardingRecordPresent])
  {
    goto LABEL_7;
  }

  onboardingRecord = [v7 onboardingRecord];
  featureSettings = [onboardingRecord featureSettings];

  if (!featureSettings)
  {
    goto LABEL_7;
  }

  onboardingRecord2 = [v7 onboardingRecord];
  featureSettings2 = [onboardingRecord2 featureSettings];
  v12 = *MEMORY[0x277CCC120];
  v13 = [featureSettings2 numberForKey:*MEMORY[0x277CCC120]];
  intValue = [v13 intValue];

  if (intValue == 1)
  {
    onboardingRecord3 = [v7 onboardingRecord];
    featureSettings3 = [onboardingRecord3 featureSettings];
    v17 = [featureSettings3 modificationDateForKey:v12];

    if (v17)
    {
      environmentDataSource = [enabledCopy environmentDataSource];
      currentDate = [environmentDataSource currentDate];

      environmentDataSource2 = [enabledCopy environmentDataSource];
      calendarCache = [environmentDataSource2 calendarCache];
      currentCalendar = [calendarCache currentCalendar];

      v23 = [currentCalendar components:16 fromDate:v17 toDate:currentDate options:0];
      v24 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v23, "day")}];
    }

    else
    {
      v24 = *MEMORY[0x277CCB798];
    }
  }

  else
  {
LABEL_7:
    v24 = *MEMORY[0x277CCB798];
  }

  return v24;
}

- (void)makeIHAGatedEventPayloadWithDataSource:error:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4(&dword_229486000, v0, v1, "Could not get count of Blood Pressure sample types with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)makeIHAGatedEventPayloadWithDataSource:error:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4(&dword_229486000, v0, v1, "Could not get number of hours with bg hr samples with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)makeIHAGatedEventPayloadWithDataSource:(os_log_t)log error:.cold.3(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 138412546;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_229486000, log, OS_LOG_TYPE_ERROR, "Could not get average blood pressure for date interval: %@ with error: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)makeIHAGatedEventPayloadWithDataSource:(uint64_t)a3 error:(uint64_t)a4 .cold.4(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_0_4(&dword_229486000, a2, a3, "Average blood pressure classification is nil for date interval: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)makeIHAGatedEventPayloadWithDataSource:error:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4(&dword_229486000, v0, v1, "Could not get count of HRV sample types with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_dnuNumDaysWatchWornAnalyticsWithCalendar:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_4(&dword_229486000, v0, v1, "Could not get count of hours with bghr with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end