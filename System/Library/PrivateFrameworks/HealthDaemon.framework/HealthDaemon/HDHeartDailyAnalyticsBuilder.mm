@interface HDHeartDailyAnalyticsBuilder
- (BOOL)_buildIrregularRhythmNotificationsV2AnalyticsWithError:(uint64_t)error;
- (BOOL)_buildOTAFeatureAvailabilityAnalyticsWithError:(uint64_t)error;
- (BOOL)_buildRespiratoryRateAnalyticsWithError:(uint64_t)error;
- (HDHeartDailyAnalyticsBuilder)initWithProfile:(id)profile calendar:(id)calendar dateInterval:(id)interval heartRateNotificationsUserDefaults:(id)defaults heartRhythmUserDefaults:(id)userDefaults remoteFeatureAvailabilityUserDefaults:(id)availabilityUserDefaults pairedDeviceRegistry:(id)registry areHealthNotificationsAuthorized:(BOOL)self0 isHealthDataSubmissionAllowed:(BOOL)self1;
- (id)_daysBetweenStartDate:(uint64_t)date endDate:;
- (id)_ecgClassificationsBetweenStartDate:(void *)date endDate:;
- (id)_mostRecentOnboardingCompletionForHighestVersionOfFeatureIdentifier:(uint64_t)identifier error:;
- (id)heartDailyAnalyticsWithError:(id *)error;
@end

@implementation HDHeartDailyAnalyticsBuilder

- (HDHeartDailyAnalyticsBuilder)initWithProfile:(id)profile calendar:(id)calendar dateInterval:(id)interval heartRateNotificationsUserDefaults:(id)defaults heartRhythmUserDefaults:(id)userDefaults remoteFeatureAvailabilityUserDefaults:(id)availabilityUserDefaults pairedDeviceRegistry:(id)registry areHealthNotificationsAuthorized:(BOOL)self0 isHealthDataSubmissionAllowed:(BOOL)self1
{
  profileCopy = profile;
  calendarCopy = calendar;
  intervalCopy = interval;
  defaultsCopy = defaults;
  userDefaultsCopy = userDefaults;
  registryCopy = registry;
  v25.receiver = self;
  v25.super_class = HDHeartDailyAnalyticsBuilder;
  v20 = [(HDHeartDailyAnalyticsBuilder *)&v25 init];
  v21 = v20;
  if (v20)
  {
    objc_storeWeak(&v20->_profile, profileCopy);
    objc_storeStrong(&v21->_heartRateNotificationsUserDefaults, defaults);
    objc_storeStrong(&v21->_heartRhythmUserDefaults, userDefaults);
    v21->_isHealthDataSubmissionAllowed = allowed;
    objc_storeStrong(&v21->_calendar, calendar);
    objc_storeStrong(&v21->_dateInterval, interval);
    objc_storeStrong(&v21->_pairedDeviceRegistry, registry);
    v21->_areHealthNotificationsAuthorized = authorized;
  }

  return v21;
}

- (id)heartDailyAnalyticsWithError:(id *)error
{
  v239 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = HKLogAnalytics();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = objc_opt_class();
    v6 = *(&buf + 4);
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Building heart daily analytics", &buf, 0xCu);
  }

  v7 = objc_alloc_init(HDHeartDailyAnalytics);
  heartDailyAnalytics = self->_heartDailyAnalytics;
  self->_heartDailyAnalytics = v7;

  startDate = [(NSDateInterval *)self->_dateInterval startDate];
  endDate = [(NSDateInterval *)self->_dateInterval endDate];
  v223 = startDate;
  v220 = endDate;
  v11 = self->_heartDailyAnalytics;
  [(HDHeartDailyAnalytics *)v11 updateIrregularRhythmNotificationClassificationCount:-1];
  [(HDHeartDailyAnalytics *)v11 updateIsIrnOnboarded:0];
  [(HDHeartDailyAnalytics *)v11 updateIsEcgOnboarded:0];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v13 = [WeakRetained profileExtensionWithIdentifier:@"Heart"];

  v14 = [v13 featureAvailabilityExtensionForFeatureIdentifier:*MEMORY[0x277CCC070]];
  v228 = 0;
  v15 = [v14 featureOnboardingRecordWithError:&v228];
  v222 = v228;
  if (v15)
  {
    -[HDHeartDailyAnalytics updateIsIrnOnboarded:](v11, "updateIsIrnOnboarded:", [v15 isOnboardingPresent]);
  }

  else
  {
    _HKInitializeLogging();
    v16 = HKLogAnalytics();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v222;
      _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "Could not load IRN onboarding record with error: %{public}@", &buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x277CCBCF0];
  v18 = [(NSUserDefaults *)self->_heartRhythmUserDefaults objectForKey:*MEMORY[0x277CCBCF0]];
  v19 = v18;
  if (v18)
  {
    -[HDHeartDailyAnalytics updateIsEcgOnboarded:](v11, "updateIsEcgOnboarded:", [v18 integerValue] > 0);
  }

  v20 = [(NSUserDefaults *)self->_heartRhythmUserDefaults objectForKey:v17];
  v21 = v20;
  v221 = v19;
  v218 = v14;
  if (!v20 || [v20 integerValue] < 1)
  {
    goto LABEL_19;
  }

  integerValue = [v21 integerValue];
  v23 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(MEMORY[0x277CCD380], "algorithmVersionForOnboardingVersion:", integerValue)}];
  v24 = v23;
  if (!v23 || [v23 integerValue] <= 0)
  {

LABEL_19:
    goto LABEL_20;
  }

  stringValue = [v24 stringValue];

  if (stringValue)
  {
    v206 = v15;
    [(HDHeartDailyAnalytics *)v11 updateECGActiveAlgorithmVersion:stringValue];
    v26 = [MEMORY[0x277CCD7C0] productBuildVersionForDeviceType:0];
    v219 = stringValue;
    if (v26)
    {
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", stringValue, v26];
      if (v27)
      {
        [(HDHeartDailyAnalytics *)v11 updateECGUpdateVersionPhone:v27];
      }
    }

    else
    {
      _HKInitializeLogging();
      v27 = HKLogAnalytics();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&dword_228986000, v27, OS_LOG_TYPE_ERROR, "Could not determine ECGUpdateVersionPhone", &buf, 2u);
      }
    }

    errorCopy2 = error;

    v199 = [MEMORY[0x277CCD7C0] productBuildVersionForDeviceType:1];
    if (v199)
    {
      v199 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v219, v199];
      if (v199)
      {
        [(HDHeartDailyAnalytics *)v11 updateECGUpdateVersionWatch:v199];
      }
    }

    else
    {
      _HKInitializeLogging();
      v199 = HKLogAnalytics();
      if (os_log_type_enabled(v199, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&dword_228986000, v199, OS_LOG_TYPE_ERROR, "Could not determine ECGUpdateVersionWatch", &buf, 2u);
      }
    }

    v15 = v206;
    goto LABEL_23;
  }

LABEL_20:
  _HKInitializeLogging();
  v26 = HKLogAnalytics();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "Could not determine ECGAlgorithmVersion", &buf, 2u);
  }

  v219 = 0;
  errorCopy2 = error;
LABEL_23:

  v29 = *MEMORY[0x277CCB748];
  v30 = [(NSUserDefaults *)self->_remoteFeatureAvailabilityUserDefaults integerForKey:*MEMORY[0x277CCB748]];
  if ((v30 & 0x8000000000000000) == 0)
  {
    [(HDHeartDailyAnalytics *)v11 updateCountMobileAssetsDownloadedPast24Hours:v30];
  }

  [(NSUserDefaults *)self->_remoteFeatureAvailabilityUserDefaults setInteger:0 forKey:v29];
  v31 = [(NSUserDefaults *)self->_heartRateNotificationsUserDefaults objectForKey:*MEMORY[0x277CCE430]];
  [(HDHeartDailyAnalytics *)v11 updateIsAtrialFibrillationEnabled:v31];
  getActivePairedDevice = [(NRPairedDeviceRegistry *)self->_pairedDeviceRegistry getActivePairedDevice];
  v33 = [getActivePairedDevice valueForProperty:*MEMORY[0x277D2BBC0]];
  [(HDHeartDailyAnalytics *)v11 updateActiveWatchProductType:v33];

  v34 = [getActivePairedDevice valueForProperty:*MEMORY[0x277D2BC08]];
  [(HDHeartDailyAnalytics *)v11 updateActiveWatchSystemBuildVersion:v34];

  v35 = [HDKeyValueDomain alloc];
  v36 = *MEMORY[0x277CCE460];
  v37 = objc_loadWeakRetained(&self->_profile);
  v211 = v36;
  v38 = [(HDKeyValueDomain *)v35 initWithCategory:105 domainName:v36 profile:v37];

  if (v221 && [v221 integerValue] >= 1)
  {
    v214 = getActivePairedDevice;
    v216 = v13;
    v39 = v31;
    v40 = errorCopy2;
    v41 = v15;
    v42 = *MEMORY[0x277CCBCE0];
    v227 = 0;
    v43 = [(HDKeyValueDomain *)v38 stringForKey:v42 error:&v227];
    v44 = v227;
    v45 = v44;
    if (v43)
    {
      [(HDHeartDailyAnalytics *)v11 updateECGOnboardingCountryCode:v43];
    }

    else if (v44)
    {
      _HKInitializeLogging();
      v46 = HKLogAnalytics();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v45;
        _os_log_error_impl(&dword_228986000, v46, OS_LOG_TYPE_ERROR, "Error getting ECGOnboardingCountryCode: %{public}@", &buf, 0xCu);
      }
    }

    v15 = v41;
    errorCopy2 = v40;
    v31 = v39;
    getActivePairedDevice = v214;
    v13 = v216;
  }

  v47 = *MEMORY[0x277CCB838];
  v226 = 0;
  v48 = [(HDKeyValueDomain *)v38 stringForKey:v47 error:&v226];
  v49 = v226;
  v50 = v49;
  if (v48)
  {
    [(HDHeartDailyAnalytics *)v11 updateIRNOnboardingCountryCode:v48];
  }

  else if (v49)
  {
    v209 = errorCopy2;
    v51 = v49;
    _HKInitializeLogging();
    v52 = HKLogAnalytics();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v51;
      _os_log_error_impl(&dword_228986000, v52, OS_LOG_TYPE_ERROR, "Error getting IRNCountryCodeError: %{public}@", &buf, 0xCu);
    }

    v50 = v51;
    errorCopy2 = v209;
  }

  if (!self->_isHealthDataSubmissionAllowed)
  {
    [(HDHeartDailyAnalytics *)v11 updateIsImproveHealthAndActivityAllowed:0];
    v68 = v11;
    goto LABEL_97;
  }

  v203 = v50;
  v204 = v48;
  v207 = v15;
  v208 = v38;
  v215 = getActivePairedDevice;
  v217 = v13;
  v205 = v31;
  v210 = errorCopy2;
  [(HDHeartDailyAnalytics *)v11 updateIsImproveHealthAndActivityAllowed:1];
  v213 = [(HDHeartDailyAnalyticsBuilder *)self _ecgClassificationsBetweenStartDate:v223 endDate:v220];
  -[HDHeartDailyAnalytics updateElectrocardiogramClassificationCount:](v11, "updateElectrocardiogramClassificationCount:", [v213 count]);
  v53 = v220;
  v54 = HDSampleEntityPredicateForStartDate(6);
  v55 = HDSampleEntityPredicateForEndDate(4);

  v56 = MEMORY[0x277D10B20];
  v201 = v54;
  v237 = v54;
  v238 = v55;
  v57 = [MEMORY[0x277CBEA60] arrayWithObjects:&v237 count:2];
  v58 = [v56 predicateMatchingAllPredicates:v57];

  atrialFibrillationEventType = [MEMORY[0x277CCD0C0] atrialFibrillationEventType];
  v60 = objc_loadWeakRetained(&self->_profile);
  v61 = [(HDSampleEntity *)HDCategorySampleEntity entityEnumeratorWithType:atrialFibrillationEventType profile:v60];

  [v61 setPredicate:v58];
  v62 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"start_date" entityClass:objc_opt_class() ascending:1];
  v236 = v62;
  v63 = [MEMORY[0x277CBEA60] arrayWithObjects:&v236 count:1];
  [v61 setOrderingTerms:v63];

  array = [MEMORY[0x277CBEB18] array];
  v229 = 0;
  *&buf = MEMORY[0x277D85DD0];
  *(&buf + 1) = 3221225472;
  v233 = __69__HDHeartDailyAnalyticsBuilder__aFibSamplesBetweenStartDate_endDate___block_invoke;
  v234 = &unk_2786204C8;
  v65 = array;
  v235 = v65;
  LOBYTE(v62) = [v61 enumerateWithError:&v229 handler:&buf];
  v66 = v229;
  if (v62)
  {
    v67 = v65;
  }

  else
  {
    _HKInitializeLogging();
    v69 = HKLogAnalytics();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      *v230 = 138543362;
      v231 = v66;
      _os_log_error_impl(&dword_228986000, v69, OS_LOG_TYPE_ERROR, "Error querying atrial fibrillation samples: %{public}@", v230, 0xCu);
    }

    v67 = MEMORY[0x277CBEBF8];
  }

  v202 = v67;
  -[HDHeartDailyAnalytics updateIrregularRhythmNotificationClassificationCount:](v11, "updateIrregularRhythmNotificationClassificationCount:", [v67 count]);
  v70 = v53;
  v71 = HDSampleEntityPredicateForStartDate(6);
  v72 = HDSampleEntityPredicateForEndDate(4);

  v73 = MEMORY[0x277D10B20];
  v237 = v71;
  v238 = v72;
  v74 = [MEMORY[0x277CBEA60] arrayWithObjects:&v237 count:2];
  v75 = [v73 predicateMatchingAllPredicates:v74];

  heartbeatSeriesType = [MEMORY[0x277CCD920] heartbeatSeriesType];
  v77 = objc_loadWeakRetained(&self->_profile);
  v78 = [(HDSampleEntity *)HDCategorySampleEntity entityEnumeratorWithType:heartbeatSeriesType profile:v77];

  [v78 setPredicate:v75];
  array2 = [MEMORY[0x277CBEB18] array];
  v236 = 0;
  *&buf = MEMORY[0x277D85DD0];
  *(&buf + 1) = 3221225472;
  v233 = __81__HDHeartDailyAnalyticsBuilder__countRecordedTachogramsBetweenStartDate_endDate___block_invoke;
  v234 = &unk_2786204C8;
  v80 = array2;
  v235 = v80;
  LOBYTE(v73) = [v78 enumerateWithError:&v236 handler:&buf];
  v81 = v236;
  v82 = v81;
  if ((v73 & 1) != 0 || !v81)
  {
    v84 = [v80 count];
  }

  else
  {
    _HKInitializeLogging();
    v83 = HKLogAnalytics();
    if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
    {
      *v230 = 138543362;
      v231 = v82;
      _os_log_error_impl(&dword_228986000, v83, OS_LOG_TYPE_ERROR, "Error querying tacogram samples: %{public}@", v230, 0xCu);
    }

    v84 = -1;
  }

  if (v84 < 0)
  {
    _HKInitializeLogging();
    v87 = HKLogAnalytics();
    v85 = v211;
    v86 = off_27860E000;
    if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_228986000, v87, OS_LOG_TYPE_ERROR, "Unable to retrieve countRecordedTachograms", &buf, 2u);
    }
  }

  else
  {
    [(HDHeartDailyAnalytics *)v11 updateCountRecordedTachogramsPast24Hours:v84];
    v85 = v211;
    v86 = off_27860E000;
  }

  v88 = objc_alloc(v86[438]);
  v89 = objc_loadWeakRetained(&self->_profile);
  v90 = [v88 initWithCategory:105 domainName:v85 profile:v89];

  v91 = *MEMORY[0x277CCB740];
  v237 = 0;
  v92 = [v90 numberForKey:v91 error:&v237];
  v93 = v237;
  if (v93)
  {
    _HKInitializeLogging();
    v94 = HKLogAnalytics();
    if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v93;
      _os_log_error_impl(&dword_228986000, v94, OS_LOG_TYPE_ERROR, "Failed to get CountAnalyzedTacogramsPast24Hours, error: %{public}@", &buf, 0xCu);
    }

    integerValue2 = -1;
  }

  else
  {
    integerValue2 = [v92 integerValue];
  }

  if (integerValue2 < 0)
  {
    _HKInitializeLogging();
    v98 = HKLogAnalytics();
    if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_228986000, v98, OS_LOG_TYPE_ERROR, "Unable to retrieve countAnalyzedTachograms", &buf, 2u);
    }

    goto LABEL_72;
  }

  [(HDHeartDailyAnalytics *)v11 updateCountAnalyzedTachogramsPast24Hours:integerValue2];
  if (integerValue2)
  {
    v96 = objc_alloc(v86[438]);
    v97 = objc_loadWeakRetained(&self->_profile);
    v98 = [v96 initWithCategory:105 domainName:v85 profile:v97];

    v237 = 0;
    [v98 setNumber:0 forKey:v91 error:&v237];
    v99 = v237;
    if (v99)
    {
      _HKInitializeLogging();
      v100 = HKLogAnalytics();
      if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v99;
        _os_log_error_impl(&dword_228986000, v100, OS_LOG_TYPE_ERROR, "Failed to reset CountAnalyzedTacogramsPast24Hours, error: %{public}@", &buf, 0xCu);
      }
    }

LABEL_72:
  }

  v101 = v70;
  v102 = HDSampleEntityPredicateForStartDate(6);
  v103 = HDSampleEntityPredicateForEndDate(4);
  v212 = v101;

  v104 = MEMORY[0x277D10B20];
  v237 = v102;
  v238 = v103;
  v105 = [MEMORY[0x277CBEA60] arrayWithObjects:&v237 count:2];
  v106 = [v104 predicateMatchingAllPredicates:v105];

  v107 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCC918]];
  v108 = objc_loadWeakRetained(&self->_profile);
  v109 = [(HDSampleEntity *)HDCategorySampleEntity entityEnumeratorWithType:v107 profile:v108];

  [v109 setPredicate:v106];
  array3 = [MEMORY[0x277CBEB18] array];
  v236 = 0;
  *&buf = MEMORY[0x277D85DD0];
  *(&buf + 1) = 3221225472;
  v233 = __82__HDHeartDailyAnalyticsBuilder__countActiveEnergySamplesBetweenStartDate_endDate___block_invoke;
  v234 = &unk_2786204C8;
  v111 = array3;
  v235 = v111;
  LOBYTE(v104) = [v109 enumerateWithError:&v236 handler:&buf];
  v112 = v236;
  v113 = v112;
  if ((v104 & 1) != 0 || !v112)
  {
    v115 = [v111 count];
  }

  else
  {
    _HKInitializeLogging();
    v114 = HKLogAnalytics();
    if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
    {
      *v230 = 138543362;
      v231 = v113;
      _os_log_error_impl(&dword_228986000, v114, OS_LOG_TYPE_ERROR, "Error querying ActiveEnergyBurned samples: %{public}@", v230, 0xCu);
    }

    v115 = -1;
  }

  if (v115 < 0)
  {
    _HKInitializeLogging();
    v117 = HKLogAnalytics();
    v116 = v222;
    v31 = v205;
    v38 = v208;
    if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_228986000, v117, OS_LOG_TYPE_ERROR, "wasWatchWornPast24Hours could not be determined", &buf, 2u);
    }
  }

  else
  {
    [(HDHeartDailyAnalytics *)v11 updateWasWatchWornPast24Hours:v115 != 0];
    v116 = v222;
    v31 = v205;
    v38 = v208;
  }

  v118 = *MEMORY[0x277CCBCD0];
  v237 = 0;
  v119 = [(HDKeyValueDomain *)v38 dateForKey:v118 error:&v237];
  v120 = v237;
  v121 = v120;
  if (v119 && !v120)
  {
    [(HDHeartDailyAnalytics *)v11 updateIsEcgOnboarded:1];
    v122 = [(NSCalendar *)self->_calendar components:0x2000 fromDate:v119 toDate:v212 options:0];
    v123 = 0;
    if ([v122 weekOfYear] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v123 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v122, "weekOfYear")}];
    }

    [(HDHeartDailyAnalytics *)v11 updateWeeksSinceElectrocardiogramOnboarded:v123];
LABEL_92:

    goto LABEL_93;
  }

  if (v120)
  {
    _HKInitializeLogging();
    v123 = HKLogAnalytics();
    if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v121;
      _os_log_error_impl(&dword_228986000, v123, OS_LOG_TYPE_ERROR, "Error getting electrocardiogramFirstOnboardedCompletedDate: %{public}@", &buf, 0xCu);
    }

    goto LABEL_92;
  }

LABEL_93:
  v222 = v121;
  [(HDHeartDailyAnalytics *)v11 updateWithElectrocardiogramClassifications:v213 isWithin24HoursPostIRN:0];
  if ([v202 count])
  {
    firstObject = [v202 firstObject];
    calendar = self->_calendar;
    startDate2 = [firstObject startDate];
    v127 = [(NSCalendar *)calendar dateByAddingUnit:16 value:1 toDate:startDate2 options:0];

    startDate3 = [firstObject startDate];
    v129 = [(HDHeartDailyAnalyticsBuilder *)self _ecgClassificationsBetweenStartDate:startDate3 endDate:v127];

    v38 = v208;
    [(HDHeartDailyAnalytics *)v11 updateWithElectrocardiogramClassifications:v129 isWithin24HoursPostIRN:1];
    v130 = v11;
    v131 = v11;
  }

  else
  {
    v130 = v11;
    v132 = v11;
  }

  v15 = v207;
  getActivePairedDevice = v215;
  v50 = v203;

  v48 = v204;
  errorCopy2 = v210;
  v11 = v130;
  v13 = v217;
LABEL_97:

  if (!self->_isHealthDataSubmissionAllowed)
  {
    v136 = 0;
    goto LABEL_102;
  }

  v133 = objc_loadWeakRetained(&self->_profile);
  ageGatingManager = [v133 ageGatingManager];
  *&buf = 0;
  v135 = [ageGatingManager ageInYearsWithError:&buf];
  v136 = buf;

  if (v135 || !v136)
  {
    [(HDHeartDailyAnalytics *)self->_heartDailyAnalytics updateAgeInYears:v135];
    v146 = [MEMORY[0x277CCD720] characteristicTypeForIdentifier:*MEMORY[0x277CCBB08]];
    v147 = objc_loadWeakRetained(&self->_profile);
    userCharacteristicsManager = [v147 userCharacteristicsManager];
    v237 = v136;
    v149 = [userCharacteristicsManager userCharacteristicForType:v146 error:&v237];
    v150 = v237;

    if (v149)
    {
      v151 = 1;
    }

    else
    {
      v151 = v150 == 0;
    }

    v152 = v151;
    if (v151)
    {
      -[HDHeartDailyAnalytics updateSex:](self->_heartDailyAnalytics, "updateSex:", [v149 integerValue]);
      v136 = 0;
    }

    else
    {
      v153 = v150;
      v136 = v150;
    }

    if ((v152 & 1) == 0)
    {
      goto LABEL_117;
    }

LABEL_102:
    v138 = v136;
    [(HDHeartDailyAnalytics *)self->_heartDailyAnalytics updateAreHealthNotificationsAuthorized:self->_areHealthNotificationsAuthorized];
    if (!self->_isHealthDataSubmissionAllowed)
    {
      v145 = v138;

LABEL_121:
      v155 = objc_loadWeakRetained(&self->_profile);
      periodicCountryMonitor = [v155 periodicCountryMonitor];

      v157 = self->_calendar;
      endDate2 = [(NSDateInterval *)self->_dateInterval endDate];
      v159 = [(NSCalendar *)v157 dateByAddingUnit:16 value:2 toDate:endDate2 options:0];

      lastCheckAttemptDate = [periodicCountryMonitor lastCheckAttemptDate];
      if (lastCheckAttemptDate)
      {
        v161 = self->_heartDailyAnalytics;
        v162 = [(HDHeartDailyAnalyticsBuilder *)self->_calendar _daysBetweenStartDate:lastCheckAttemptDate endDate:v159];
        [(HDHeartDailyAnalytics *)v161 updateDaysSinceLastCountryMonitorCheck:v162];
      }

      lastFetchAttemptDate = [periodicCountryMonitor lastFetchAttemptDate];
      if (lastFetchAttemptDate)
      {
        v164 = self->_heartDailyAnalytics;
        v165 = [(HDHeartDailyAnalyticsBuilder *)self->_calendar _daysBetweenStartDate:lastFetchAttemptDate endDate:v159];
        [(HDHeartDailyAnalytics *)v164 updateDaysSinceLastCountryMonitorFetch:v165];
      }

      v166 = self->_heartDailyAnalytics;
      lastFetchAttemptBuild = [periodicCountryMonitor lastFetchAttemptBuild];
      [(HDHeartDailyAnalytics *)v166 updateLastCountryMonitorFetchBuildNumber:lastFetchAttemptBuild];

      v168 = *MEMORY[0x277CCC030];
      *&buf = 0;
      v169 = [(HDHeartDailyAnalyticsBuilder *)self _mostRecentOnboardingCompletionForHighestVersionOfFeatureIdentifier:v168 error:&buf];
      v170 = buf;
      v171 = v170;
      if (v169)
      {
        v172 = 1;
      }

      else
      {
        v172 = v170 == 0;
      }

      v173 = v172;
      if (v172)
      {
        [(HDHeartDailyAnalytics *)self->_heartDailyAnalytics updateIsGlucoseEnhancedChartingDelivered:v169 != 0];
        v174 = self->_heartDailyAnalytics;
        countryCode = [v169 countryCode];
        [(HDHeartDailyAnalytics *)v174 updateGlucoseEnhancedChartingCountryCode:countryCode];

        v177 = v145;
      }

      else
      {
        v176 = v170;
        v177 = v171;
      }

      v178 = v177;
      if ((v173 & 1) == 0)
      {
        goto LABEL_151;
      }

      [(HDHeartDailyAnalytics *)self->_heartDailyAnalytics updateIsTachycardiaDetectionEnabled:[(NSUserDefaults *)self->_heartRateNotificationsUserDefaults BOOLForKey:*MEMORY[0x277CCE448]]];
      [(HDHeartDailyAnalytics *)self->_heartDailyAnalytics updateIsBradycardiaDetectionEnabled:[(NSUserDefaults *)self->_heartRateNotificationsUserDefaults BOOLForKey:*MEMORY[0x277CCE438]]];
      if (self->_isHealthDataSubmissionAllowed)
      {
        v179 = self->_heartDailyAnalytics;
        v180 = [(NSUserDefaults *)self->_heartRateNotificationsUserDefaults hk_safeNumberForKeyPath:*MEMORY[0x277CCE450] error:0];
        [(HDHeartDailyAnalytics *)v179 updateHighHeartRateNotificationThreshold:v180];

        v181 = self->_heartDailyAnalytics;
        v182 = [(NSUserDefaults *)self->_heartRateNotificationsUserDefaults hk_safeNumberForKeyPath:*MEMORY[0x277CCE428] error:0];
        [(HDHeartDailyAnalytics *)v181 updateLowHeartRateNotificationThreshold:v182];
      }

      v183 = *MEMORY[0x277CCC0A0];
      *&buf = 0;
      v184 = [(HDHeartDailyAnalyticsBuilder *)self _mostRecentOnboardingCompletionForHighestVersionOfFeatureIdentifier:v183 error:&buf];
      v185 = buf;
      v186 = v185;
      if (v184)
      {
        v187 = 1;
      }

      else
      {
        v187 = v185 == 0;
      }

      v188 = v187;
      if (v187)
      {
        [(HDHeartDailyAnalytics *)self->_heartDailyAnalytics updateIsMenstrualCyclesHeartRateInputDelivered:v184 != 0];
        v189 = self->_heartDailyAnalytics;
        countryCode2 = [v184 countryCode];
        [(HDHeartDailyAnalytics *)v189 updateMenstrualCyclesHeartRateInputCountryCode:countryCode2];

        v192 = v178;
      }

      else
      {
        v191 = v185;
        v192 = v186;
      }

      v145 = v192;
      if (v188)
      {
        v225 = v145;
        v193 = [(HDHeartDailyAnalyticsBuilder *)self _buildIrregularRhythmNotificationsV2AnalyticsWithError:?];
        v178 = v225;

        if (v193 && [HDHeartDailyAnalyticsBuilder _buildOTAFeatureAvailabilityAnalyticsWithError:?])
        {
          v224 = v178;
          v194 = [(HDHeartDailyAnalyticsBuilder *)self _buildRespiratoryRateAnalyticsWithError:?];
          v145 = v224;

          if (v194)
          {
            v195 = [(HDHeartDailyAnalytics *)self->_heartDailyAnalytics copy];
            goto LABEL_158;
          }

          goto LABEL_152;
        }

LABEL_151:
        v154 = v178;
        goto LABEL_153;
      }

LABEL_152:
      v154 = v145;
      goto LABEL_153;
    }

    v139 = objc_loadWeakRetained(&self->_profile);
    dateInterval = self->_dateInterval;
    *&buf = 0;
    v141 = HDAnalyticsBucketedNumberOfStandAndIdleHours(v139, dateInterval, &buf);
    v142 = buf;

    if (v141)
    {
      [(HDHeartDailyAnalytics *)self->_heartDailyAnalytics updateNumberOfStandAndIdleHoursInPreviousCalendarDay:v141];
      v143 = v141;
    }

    else
    {
      v143 = v142;
      if (v143)
      {
        v143 = v143;
        v144 = v143;
LABEL_120:

        v145 = v144;
        if (!v141)
        {
          goto LABEL_152;
        }

        goto LABEL_121;
      }
    }

    v144 = v138;
    goto LABEL_120;
  }

  v137 = v136;

LABEL_117:
  v154 = v136;
LABEL_153:
  v145 = v154;
  if (v154)
  {
    if (errorCopy2)
    {
      v196 = v154;
      *errorCopy2 = v145;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v195 = 0;
LABEL_158:

  v197 = *MEMORY[0x277D85DE8];

  return v195;
}

- (BOOL)_buildIrregularRhythmNotificationsV2AnalyticsWithError:(uint64_t)error
{
  if (!error)
  {
    return 0;
  }

  v4 = *MEMORY[0x277CCC080];
  v23 = 0;
  v5 = [(HDHeartDailyAnalyticsBuilder *)error _mostRecentOnboardingCompletionForHighestVersionOfFeatureIdentifier:v4 error:&v23];
  v6 = v23;
  v7 = v6;
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (!v8)
  {
    if (a2)
    {
      v19 = v6;
      v13 = 0;
      *a2 = v7;
    }

    else
    {
      _HKLogDroppedError();
      v13 = 0;
    }

    v12 = v7;
    goto LABEL_23;
  }

  WeakRetained = objc_loadWeakRetained((error + 8));
  featureSettingsManager = [WeakRetained featureSettingsManager];
  v22 = v7;
  v11 = [featureSettingsManager featureSettingsForFeatureIdentifier:v4 error:&v22];
  v12 = v22;

  v13 = v11 != 0;
  if (v11)
  {
    if (v5)
    {
      v14 = &unk_283CB2118;
    }

    else
    {
      v14 = 0;
    }

    [*(error + 16) updateAlgorithmVersionIRN:v14];
    v15 = *(error + 16);
    v16 = [v11 numberForKey:*MEMORY[0x277CCC120]];
    [v15 updateIsAtrialFibrillationEnabledV2:v16];

    if (*(error + 48) != 1)
    {
      goto LABEL_22;
    }

    v17 = *(error + 16);
    countryCode = [v5 countryCode];
    [v17 updateAtrialFibrillationDetectionV2CountryCode:countryCode];
  }

  else
  {
    countryCode = v12;
    if (countryCode)
    {
      if (a2)
      {
        v20 = countryCode;
        *a2 = countryCode;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

LABEL_22:
LABEL_23:

  return v13;
}

- (BOOL)_buildOTAFeatureAvailabilityAnalyticsWithError:(uint64_t)error
{
  if (error)
  {
    WeakRetained = objc_loadWeakRetained((error + 8));
    daemon = [WeakRetained daemon];
    oTAFeatureAvailabilityManager = [daemon OTAFeatureAvailabilityManager];

    v5 = *(error + 16);
    factorPackID = [oTAFeatureAvailabilityManager factorPackID];
    [v5 updateOTAFactorPackID:factorPackID];
  }

  return error != 0;
}

- (BOOL)_buildRespiratoryRateAnalyticsWithError:(uint64_t)error
{
  if (!error)
  {
    return 0;
  }

  v4 = *MEMORY[0x277CCC0C8];
  v22 = 0;
  v5 = [(HDHeartDailyAnalyticsBuilder *)error _mostRecentOnboardingCompletionForHighestVersionOfFeatureIdentifier:v4 error:&v22];
  v6 = v22;
  v7 = v6;
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (v8)
  {
    [*(error + 16) updateIsRespiratoryRateDelivered:v5 != 0];
    v9 = *(error + 16);
    countryCode = [v5 countryCode];
    [v9 updateRespiratoryRateCountryCode:countryCode];

    WeakRetained = objc_loadWeakRetained((error + 8));
    featureSettingsManager = [WeakRetained featureSettingsManager];
    v21 = v7;
    v13 = [featureSettingsManager featureSettingsForFeatureIdentifier:v4 error:&v21];
    v14 = v21;

    v15 = v13 != 0;
    if (v13)
    {
      v16 = *(error + 16);
      v17 = [v13 numberForKey:*MEMORY[0x277CCC120]];
      [v16 updateIsRespiratoryRateEnabledInPrivacy:v17];
    }

    else
    {
      v17 = v14;
      if (v17)
      {
        if (a2)
        {
          v19 = v17;
          *a2 = v17;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  else
  {
    if (a2)
    {
      v18 = v6;
      v15 = 0;
      *a2 = v7;
    }

    else
    {
      _HKLogDroppedError();
      v15 = 0;
    }

    v14 = v7;
  }

  return v15;
}

- (id)_daysBetweenStartDate:(uint64_t)date endDate:
{
  v3 = [self components:16 fromDate:a2 toDate:date options:0];
  v4 = 0;
  if ([v3 day] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "day")}];
  }

  return v4;
}

- (id)_mostRecentOnboardingCompletionForHighestVersionOfFeatureIdentifier:(uint64_t)identifier error:
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((self + 8));
  onboardingCompletionManager = [WeakRetained onboardingCompletionManager];
  v8 = [onboardingCompletionManager onboardingCompletionsForHighestVersionOfFeatureIdentifier:v5 error:identifier];

  if (v8)
  {
    v9 = [v8 hk_firstSortedObjectWithComparison:&__block_literal_global_94];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t __106__HDHeartDailyAnalyticsBuilder__mostRecentOnboardingCompletionForHighestVersionOfFeatureIdentifier_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 completionDate];
  v6 = [v4 completionDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)_ecgClassificationsBetweenStartDate:(void *)date endDate:
{
  v28[2] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v5 = HDSampleEntityPredicateForStartDate(6);
  v6 = HDSampleEntityPredicateForEndDate(4);

  v7 = MEMORY[0x277D10B20];
  v28[0] = v5;
  v28[1] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
  v9 = [v7 predicateMatchingAllPredicates:v8];

  electrocardiogramType = [MEMORY[0x277CCD3A8] electrocardiogramType];
  WeakRetained = objc_loadWeakRetained((self + 8));
  v12 = [(HDSampleEntity *)HDCategorySampleEntity entityEnumeratorWithType:electrocardiogramType profile:WeakRetained];

  [v12 setPredicate:v9];
  v13 = [MEMORY[0x277D10B68] orderingTermWithProperty:@"start_date" entityClass:objc_opt_class() ascending:1];
  v27 = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  [v12 setOrderingTerms:v14];

  array = [MEMORY[0x277CBEB18] array];
  v24 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __76__HDHeartDailyAnalyticsBuilder__ecgClassificationsBetweenStartDate_endDate___block_invoke;
  v22[3] = &unk_2786204C8;
  v16 = array;
  v23 = v16;
  LOBYTE(WeakRetained) = [v12 enumerateWithError:&v24 handler:v22];
  v17 = v24;
  if (WeakRetained)
  {
    v18 = v16;
  }

  else
  {
    _HKInitializeLogging();
    v19 = HKLogAnalytics();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v26 = v17;
      _os_log_error_impl(&dword_228986000, v19, OS_LOG_TYPE_ERROR, "Error querying electrocardiogram samples: %{public}@", buf, 0xCu);
    }

    v18 = MEMORY[0x277CBEBF8];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v18;
}

uint64_t __76__HDHeartDailyAnalyticsBuilder__ecgClassificationsBetweenStartDate_endDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a2, "privateClassification")}];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &unk_283CB2130;
  }

  [*(a1 + 32) addObject:v4];

  return 1;
}

@end