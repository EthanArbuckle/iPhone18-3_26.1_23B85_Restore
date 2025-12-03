@interface HDAudioAnalyticsManager
- (BOOL)_dayComponents:(id)components lessThan:(id)than;
- (BOOL)_recordedDataForToday;
- (HDAudioAnalyticsManager)initWithProfile:(id)profile;
- (HDProfile)profile;
- (id)_dayForDate:(id)date;
- (id)_lastSuccessfulCalculation;
- (int64_t)capturePhoneAnalyticsWithError:(id *)error;
- (void)_successfulCalculationAt:(id)at;
- (void)daemonReady:(id)ready;
- (void)reportDailyAnalyticsWithCoordinator:(id)coordinator completion:(id)completion;
@end

@implementation HDAudioAnalyticsManager

- (HDAudioAnalyticsManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v12.receiver = self;
  v12.super_class = HDAudioAnalyticsManager;
  v5 = [(HDAudioAnalyticsManager *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    *&v6->_unitTesting = 0;
    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    daemon = [WeakRetained daemon];
    [daemon registerDaemonReadyObserver:v6 queue:v6->_queue];
  }

  return v6;
}

- (void)daemonReady:(id)ready
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  daemon = [WeakRetained daemon];
  analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];
  [analyticsSubmissionCoordinator addObserver:self queue:self->_queue];
}

- (void)reportDailyAnalyticsWithCoordinator:(id)coordinator completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v17 = 0;
  v6 = [(HDAudioAnalyticsManager *)self capturePhoneAnalyticsWithError:&v17];
  v7 = v17;
  switch(v6)
  {
    case 2:
      _HKInitializeLogging();
      v15 = *MEMORY[0x277CCC2C8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy3 = self;
        _os_log_impl(&dword_251764000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: HDAudioAnalyticsManager HDAudioAnalyticsStatusIgnore", buf, 0xCu);
      }

      v9 = completionCopy[2];
      v10 = completionCopy;
      v11 = 1;
      goto LABEL_13;
    case 1:
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC2C8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        localizedDescription = [v7 localizedDescription];
        *buf = 138543618;
        selfCopy3 = self;
        v20 = 2114;
        v21 = localizedDescription;
        _os_log_impl(&dword_251764000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: HDAudioAnalyticsManager HDAudioAnalyticsStatusRetry %{public}@", buf, 0x16u);
      }

      (completionCopy[2])(completionCopy, 0, 2, v7);
      break;
    case 0:
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC2C8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2C8], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy3 = self;
        _os_log_impl(&dword_251764000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: HDAudioAnalyticsManager HDAudioAnalyticsStatusSuccess", buf, 0xCu);
      }

      v9 = completionCopy[2];
      v10 = completionCopy;
      v11 = 0;
LABEL_13:
      v9(v10, 0, v11, 0);
      break;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_successfulCalculationAt:(id)at
{
  v3 = MEMORY[0x277CBEBD0];
  atCopy = at;
  standardUserDefaults = [v3 standardUserDefaults];
  [standardUserDefaults setObject:atCopy forKey:@"HDAudioAnalyticsManager-LastSuccessfulRun"];
}

- (id)_lastSuccessfulCalculation
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"HDAudioAnalyticsManager-LastSuccessfulRun"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)capturePhoneAnalyticsWithError:(id *)error
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  profileType = [WeakRetained profileType];

  if (profileType != 1 || [(HDAudioAnalyticsManager *)self _recordedDataForToday])
  {
    return 2;
  }

  date = [MEMORY[0x277CBEAA8] date];
  v9 = [HDAudioAnalyticsExposureCalculator alloc];
  profile = [(HDAudioAnalyticsManager *)self profile];
  v11 = [(HDAudioAnalyticsExposureCalculator *)v9 initWithTargetDate:date exposureType:0 profile:profile];

  v12 = [(HDAudioAnalyticsExposureCalculator *)v11 audioExposureResultWithError:error];
  v7 = 1;
  v56 = [(HDAudioAnalyticsExposureCalculator *)v11 notificationCountForRollingDays:1 error:error];
  v57 = [(HDAudioAnalyticsExposureCalculator *)v11 notificationCountForRollingDays:30 error:error];
  v53 = v11;
  v64 = [(HDAudioAnalyticsExposureCalculator *)v11 sevenDayDoseForMostRecentNotificationWithError:error];
  v13 = [HDAudioAnalyticsExposureCalculator alloc];
  profile2 = [(HDAudioAnalyticsManager *)self profile];
  v15 = [(HDAudioAnalyticsExposureCalculator *)v13 initWithTargetDate:date exposureType:1 profile:profile2];

  v16 = [(HDAudioAnalyticsExposureCalculator *)v15 audioExposureResultWithError:error];
  v63 = [(HDAudioAnalyticsExposureCalculator *)v15 notificationCountForRollingDays:1 error:error];
  v54 = v15;
  v62 = [(HDAudioAnalyticsExposureCalculator *)v15 notificationCountForRollingDays:30 error:error];
  v17 = [HDAudioAnalyticsExposureCalculator alloc];
  profile3 = [(HDAudioAnalyticsManager *)self profile];
  v19 = [(HDAudioAnalyticsExposureCalculator *)v17 initWithTargetDate:date exposureType:2 profile:profile3];

  v61 = [(HDAudioAnalyticsExposureCalculator *)v19 audioExposureResultWithError:error];
  v60 = [(HDAudioAnalyticsExposureCalculator *)v19 notificationCountForRollingDays:1 error:error];
  v59 = [(HDAudioAnalyticsExposureCalculator *)v19 notificationCountForRollingDays:30 error:error];
  v20 = v12;
  v21 = [HDAudioAnalyticsExposureCalculator alloc];
  profile4 = [(HDAudioAnalyticsManager *)self profile];
  v23 = [(HDAudioAnalyticsExposureCalculator *)v21 initWithTargetDate:date exposureType:3 profile:profile4];

  v58 = v23;
  v24 = [(HDAudioAnalyticsExposureCalculator *)v23 audioExposureResultWithError:error];
  v55 = v16;
  if (v20 && v16)
  {
    v26 = v56;
    v25 = v57;
    if (v56 && v57 && v64 && v63 && v62 && v61 && v60 && v59 && v58)
    {
      v52 = v24;
      v27 = objc_loadWeakRetained(&self->_profile);
      deviceContextManager = [v27 deviceContextManager];
      v29 = [deviceContextManager numberOfDeviceContextsPerDeviceType:error];

      if (v29)
      {
        v30 = [v29 objectForKeyedSubscript:&unk_2863A9B30];
        if (v30)
        {
          v48 = [v29 objectForKeyedSubscript:&unk_2863A9B30];
        }

        else
        {
          v48 = &unk_2863A9B48;
        }

        v31 = [v29 objectForKeyedSubscript:&unk_2863A9B60];
        if (v31)
        {
          v46 = [v29 objectForKeyedSubscript:&unk_2863A9B60];
        }

        else
        {
          v46 = &unk_2863A9B48;
        }

        v32 = [v29 objectForKeyedSubscript:&unk_2863A9B78];
        if (v32)
        {
          v50 = [v29 objectForKeyedSubscript:&unk_2863A9B78];
        }

        else
        {
          v50 = &unk_2863A9B48;
        }

        v33 = [v29 objectForKeyedSubscript:&unk_2863A9B90];
        v43 = v29;
        if (v33)
        {
          v44 = [v29 objectForKeyedSubscript:&unk_2863A9B90];
        }

        else
        {
          v44 = &unk_2863A9B48;
        }

        v49 = objc_alloc_init(HDAudioAnalyticsSettingsPreferences);
        noisePreferences = [(HDAudioAnalyticsSettingsPreferences *)v49 noisePreferences];
        headphonePreferences = [(HDAudioAnalyticsSettingsPreferences *)v49 headphonePreferences];
        v35 = objc_loadWeakRetained(&self->_profile);
        daemon = [v35 daemon];
        behavior = [daemon behavior];
        [behavior isiPad];

        v65 = v50;
        v66 = v46;
        v67 = v44;
        v68 = v64;
        v26 = v56;
        v69 = v56;
        v25 = v57;
        v70 = v57;
        v71 = v63;
        v72 = v62;
        v73 = v55;
        v74 = v20;
        v75 = v52;
        v76 = v61;
        v77 = v60;
        v78 = v59;
        v45 = v44;
        v38 = v46;
        v47 = v50;
        v51 = v48;
        v39 = noisePreferences;
        v40 = headphonePreferences;
        AnalyticsSendEventLazy();
        [(HDAudioAnalyticsManager *)self _successfulCalculationAt:date];

        v7 = 0;
        v29 = v43;
      }

      else
      {
        v7 = 1;
        v25 = v57;
      }

      v24 = v52;
    }
  }

  else
  {
    v26 = v56;
    v25 = v57;
  }

  return v7;
}

id __58__HDAudioAnalyticsManager_capturePhoneAnalyticsWithError___block_invoke(uint64_t a1)
{
  v122[2] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:35];
  v3 = [*(a1 + 32) localDevice];
  v4 = [v3 haeRetention];

  if (v4)
  {
    v5 = [*(a1 + 32) localDevice];
    v6 = [v5 hasHAENRequired];
    v7 = [v6 BOOLValue];

    if ((v7 & 1) == 0)
    {
      __58__HDAudioAnalyticsManager_capturePhoneAnalyticsWithError___block_invoke_cold_1(a1);
    }

    v8 = @"dataRetentionHAENPhone";
    if (*(a1 + 184))
    {
      v8 = @"dataRetentionHAENiPad";
    }

    v9 = *(a1 + 32);
    v10 = v8;
    v11 = [v9 localDevice];
    v12 = [v11 haeRetention];
    [v2 setObject:v12 forKeyedSubscript:v10];
  }

  v13 = [*(a1 + 32) activePairedWatch];
  v14 = [v13 haeRetention];

  if (v14)
  {
    v15 = [*(a1 + 32) activePairedWatch];
    v16 = [v15 hasHAENRequired];
    v17 = [v16 BOOLValue];

    if ((v17 & 1) == 0)
    {
      __58__HDAudioAnalyticsManager_capturePhoneAnalyticsWithError___block_invoke_cold_2(a1);
    }

    v18 = [*(a1 + 32) activePairedWatch];
    v19 = [v18 haeRetention];
    [v2 setObject:v19 forKeyedSubscript:@"dataRetentionHAENWatch"];
  }

  v121[0] = @"hasEligibleWatchPaired";
  v20 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 48), "hasWatchPairedWithNoiseApp")}];
  v121[1] = @"hasEnvironmentalNoiseEnabled";
  v122[0] = v20;
  v21 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 48), "hasNoiseEnabled")}];
  v122[1] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v122 forKeys:v121 count:2];
  [v2 addEntriesFromDictionary:v22];

  v23 = [*(a1 + 32) localDevice];
  v24 = [v23 hasHAENEnabled];

  if (v24)
  {
    v25 = @"hasHAENEnabledPhone";
    if (*(a1 + 184))
    {
      v25 = @"hasHAENEnablediPad";
    }

    v26 = *(a1 + 32);
    v27 = v25;
    v28 = [v26 localDevice];
    v29 = [v28 hasHAENEnabled];
    [v2 setObject:v29 forKeyedSubscript:v27];
  }

  v30 = [*(a1 + 32) activePairedWatch];
  v31 = [v30 hasHAENEnabled];

  if (v31)
  {
    v32 = [*(a1 + 32) activePairedWatch];
    v33 = [v32 hasHAENEnabled];
    [v2 setObject:v33 forKeyedSubscript:@"hasHAENEnabledWatch"];
  }

  v34 = [*(a1 + 32) localDevice];
  v35 = [v34 hasMeasureLevelsEnabled];

  if (v35)
  {
    v36 = @"hasHeadphoneAudioExposureEnabledPhone";
    if (*(a1 + 184))
    {
      v36 = @"hasHeadphoneAudioExposureEnablediPad";
    }

    v37 = *(a1 + 32);
    v38 = v36;
    v39 = [v37 localDevice];
    v40 = [v39 hasMeasureLevelsEnabled];
    [v2 setObject:v40 forKeyedSubscript:v38];
  }

  v41 = [*(a1 + 32) activePairedWatch];
  v42 = [v41 hasMeasureLevelsEnabled];

  if (v42)
  {
    v43 = [*(a1 + 32) activePairedWatch];
    v44 = [v43 hasMeasureLevelsEnabled];
    [v2 setObject:v44 forKeyedSubscript:@"hasHeadphoneAudioExposureEnabledWatch"];
  }

  v45 = [*(a1 + 32) localDevice];
  v46 = [v45 hasIncludeOtherHeadphonesEnabled];

  if (v46)
  {
    v47 = @"hasHeadphoneAudioExposureOtherEnabledPhone";
    if (*(a1 + 184))
    {
      v47 = @"hasHeadphoneAudioExposureOtherEnablediPad";
    }

    v48 = *(a1 + 32);
    v49 = v47;
    v50 = [v48 localDevice];
    v51 = [v50 hasIncludeOtherHeadphonesEnabled];
    [v2 setObject:v51 forKeyedSubscript:v49];
  }

  v52 = [*(a1 + 32) activePairedWatch];
  v53 = [v52 hasIncludeOtherHeadphonesEnabled];

  if (v53)
  {
    v54 = [*(a1 + 32) activePairedWatch];
    v55 = [v54 hasIncludeOtherHeadphonesEnabled];
    [v2 setObject:v55 forKeyedSubscript:@"hasHeadphoneAudioExposureOtherEnabledWatch"];
  }

  v56 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 48), "hasNoiseNotificationsEnabled")}];
  [v2 setObject:v56 forKeyedSubscript:@"hasNoiseNotificationsEnabled"];

  v57 = @"isHAENRequiredPhone";
  if (*(a1 + 184))
  {
    v57 = @"isHAENRequirediPad";
  }

  v58 = *(a1 + 32);
  v59 = v57;
  v60 = [v58 localDevice];
  v61 = [v60 hasHAENRequired];
  [v2 setObject:v61 forKeyedSubscript:v59];

  v62 = [*(a1 + 32) activePairedWatch];

  if (v62)
  {
    v63 = [*(a1 + 32) activePairedWatch];
    v64 = [v63 hasHAENRequired];
    [v2 setObject:v64 forKeyedSubscript:@"isHAENRequiredWatch"];
  }

  v65 = *(a1 + 56);
  v117[0] = @"countPairediPhone";
  v117[1] = @"countPairedWatch";
  v119 = *(a1 + 64);
  v117[2] = @"countPairediPad";
  v117[3] = @"countPairedVisionPro";
  v66 = *(a1 + 80);
  v118 = v65;
  v120 = v66;
  v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v118 forKeys:v117 count:4];
  [v2 addEntriesFromDictionary:v67];

  v68 = HKImproveHealthAndActivityAnalyticsAllowed();
  v69 = [MEMORY[0x277CCABB0] numberWithBool:v68];
  [v2 setObject:v69 forKeyedSubscript:@"isImproveHealthAndActivityAllowed"];

  if (v68)
  {
    v107[0] = @"actualDosePercentAtNotification";
    v107[1] = @"countHAENotificationsLast24Hours";
    v70 = *(a1 + 96);
    v108[0] = *(a1 + 88);
    v108[1] = v70;
    v109 = *(a1 + 104);
    v107[2] = @"countHAENotificationsLast30Days";
    v107[3] = @"countEAENotificationsLast24Hours";
    v71 = *(a1 + 128);
    v110 = *(a1 + 120);
    v107[4] = @"countEAENotificationsLast30Days";
    v107[5] = @"EAE7DayDosePercentage";
    v72 = [v71 audioExposureDose];
    v111 = v72;
    v107[6] = @"EAE7DayDuration";
    v73 = [*(a1 + 128) audioExposureDuration];
    v112 = v73;
    v107[7] = @"EAE7DayLEQ";
    v74 = [*(a1 + 128) audioExposureLEQ];
    v113 = v74;
    v107[8] = @"hAE7DayDosePercentage";
    v75 = [*(a1 + 136) audioExposureDose];
    v114 = v75;
    v107[9] = @"hAE7DayDuration";
    v76 = [*(a1 + 136) audioExposureDuration];
    v115 = v76;
    v107[10] = @"hAE7DayLEQ";
    v77 = [*(a1 + 136) audioExposureLEQ];
    v116 = v77;
    v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v108 forKeys:v107 count:11];
    [v2 addEntriesFromDictionary:v78];

    v79 = [*(a1 + 144) audioExposureDuration];
    [v79 doubleValue];
    v81 = v80 > 0.0;

    v82 = [MEMORY[0x277CCABB0] numberWithBool:v81];
    [v2 setObject:v82 forKeyedSubscript:@"hasEnvironmentalSoundReductionDataPast7Days"];

    v83 = [MEMORY[0x277D12DF8] sharedInstance];
    v84 = [v83 activeHearingProtectionAvailable];

    v85 = [MEMORY[0x277D12DF8] sharedInstance];
    v86 = [v85 activeHearingProtectionEnabled];

    if (v84)
    {
      v87 = [v84 allValues];
      v88 = [v87 containsObject:MEMORY[0x277CBEC38]];

      v89 = [MEMORY[0x277CCABB0] numberWithBool:v88];
      [v2 setObject:v89 forKeyedSubscript:@"hasEnvironmentalSoundReductionAvailable"];

      if (v88)
      {
        if (v86)
        {
          v90 = [v86 allValues];
          v91 = [v90 containsObject:MEMORY[0x277CBEC38]];

          v92 = [MEMORY[0x277CCABB0] numberWithBool:v91];
          [v2 setObject:v92 forKeyedSubscript:@"hasEnvironmentalSoundReductionEnabled"];
        }
      }
    }

    v93 = [*(a1 + 152) audioExposureDose];
    v106[0] = v93;
    v105[1] = @"EAE7DayDurationWithEnvironmentalSoundReduction";
    v94 = [*(a1 + 152) audioExposureDuration];
    v106[1] = v94;
    v105[2] = @"EAE7DayLEQWithEnvironmentalSoundReduction";
    v95 = [*(a1 + 152) audioExposureLEQ];
    v106[2] = v95;
    v105[3] = @"soundReduction7DayDuration";
    v96 = [*(a1 + 144) audioExposureDuration];
    v106[3] = v96;
    v105[4] = @"soundReduction7DayLEQ";
    v97 = [*(a1 + 144) audioExposureLEQ];
    v98 = *(a1 + 160);
    v99 = *(a1 + 168);
    v106[4] = v97;
    v106[5] = v98;
    v105[5] = @"countEAENotificationsWithSoundReductionLast24Hours";
    v105[6] = @"countEAENotificationsWithSoundReductionLast30Days";
    v106[6] = v99;
    v105[7] = @"noiseThresholdSetting";
    v100 = [*(a1 + 48) noiseThreshold];
    v106[7] = v100;
    v101 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v106 forKeys:v105 count:8];
    [v2 addEntriesFromDictionary:v101];

    v102 = [v2 copy];
  }

  else
  {
    v102 = [v2 copy];
  }

  v103 = *MEMORY[0x277D85DE8];

  return v102;
}

- (BOOL)_recordedDataForToday
{
  if (self->_unitTesting)
  {
    unitTesting_recordedDataForToday = self->_unitTesting_recordedDataForToday;
  }

  else
  {
    _lastSuccessfulCalculation = [(HDAudioAnalyticsManager *)self _lastSuccessfulCalculation];
    if (_lastSuccessfulCalculation)
    {
      v5 = [(HDAudioAnalyticsManager *)self _dayForDate:_lastSuccessfulCalculation];
      date = [MEMORY[0x277CBEAA8] date];
      v7 = [(HDAudioAnalyticsManager *)self _dayForDate:date];

      unitTesting_recordedDataForToday = ![(HDAudioAnalyticsManager *)self _dayComponents:v5 lessThan:v7];
    }

    else
    {
      unitTesting_recordedDataForToday = 0;
    }
  }

  return unitTesting_recordedDataForToday & 1;
}

- (id)_dayForDate:(id)date
{
  dateCopy = date;
  v4 = +[HDAudioAnalyticsUtilities localGregorianCalendar];
  v5 = [v4 components:30 fromDate:dateCopy];

  return v5;
}

- (BOOL)_dayComponents:(id)components lessThan:(id)than
{
  componentsCopy = components;
  thanCopy = than;
  v7 = [componentsCopy era];
  if (v7 >= [thanCopy era] && (v8 = objc_msgSend(componentsCopy, "year"), v8 >= objc_msgSend(thanCopy, "year")) && (v9 = objc_msgSend(componentsCopy, "month"), v9 >= objc_msgSend(thanCopy, "month")))
  {
    v12 = [componentsCopy day];
    v10 = v12 < [thanCopy day];
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

void __58__HDAudioAnalyticsManager_capturePhoneAnalyticsWithError___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 176) object:*(a1 + 40) file:@"HDAudioAnalyticsManager.m" lineNumber:162 description:{@"Invalid parameter not satisfying: %@", @"headphonePreferences.localDevice.hasHAENRequired.BOOLValue"}];
}

void __58__HDAudioAnalyticsManager_capturePhoneAnalyticsWithError___block_invoke_cold_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 176) object:*(a1 + 40) file:@"HDAudioAnalyticsManager.m" lineNumber:170 description:{@"Invalid parameter not satisfying: %@", @"headphonePreferences.activePairedWatch.hasHAENRequired.BOOLValue"}];
}

@end