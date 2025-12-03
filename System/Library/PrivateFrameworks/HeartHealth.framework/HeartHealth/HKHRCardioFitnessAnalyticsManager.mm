@interface HKHRCardioFitnessAnalyticsManager
- (HKHRCardioFitnessAnalyticsManager)initWithSignalSource:(id)source;
- (id)submitClassificationChartOverlaySelectedEventCurrentOverlay:(id)overlay previousOverlay:(id)previousOverlay;
- (id)submitDailyEventWithSource:(id)source deviceContextsDict:(id)dict;
- (id)submitOnboardingEventForStep:(id)step acceptDefaults:(BOOL)defaults countryCode:(id)code;
- (void)_setKey:(id)key value:(id)value onPayloadIfPresent:(id)present;
@end

@implementation HKHRCardioFitnessAnalyticsManager

- (HKHRCardioFitnessAnalyticsManager)initWithSignalSource:(id)source
{
  sourceCopy = source;
  v11.receiver = self;
  v11.super_class = HKHRCardioFitnessAnalyticsManager;
  v6 = [(HKHRCardioFitnessAnalyticsManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_signalSource, source);
    v8 = HKCreateSerialDispatchQueue();
    queue = v7->_queue;
    v7->_queue = v8;
  }

  return v7;
}

- (id)submitOnboardingEventForStep:(id)step acceptDefaults:(BOOL)defaults countryCode:(id)code
{
  stepCopy = step;
  codeCopy = code;
  queue = self->_queue;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __93__HKHRCardioFitnessAnalyticsManager_submitOnboardingEventForStep_acceptDefaults_countryCode___block_invoke;
  v19 = &unk_27860AC60;
  defaultsCopy = defaults;
  selfCopy = self;
  v21 = codeCopy;
  v22 = stepCopy;
  v11 = stepCopy;
  v12 = codeCopy;
  dispatch_async(queue, &v16);
  v13 = [HKHRCardioFitnessAnalyticsResult alloc];
  selfCopy = [(HKHRCardioFitnessAnalyticsResult *)v13 initWithStatus:0 error:0, v16, v17, v18, v19, selfCopy];

  return selfCopy;
}

void __93__HKHRCardioFitnessAnalyticsManager_submitOnboardingEventForStep_acceptDefaults_countryCode___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = *(a1 + 56);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  AnalyticsSendEventLazy();
}

id __93__HKHRCardioFitnessAnalyticsManager_submitOnboardingEventForStep_acceptDefaults_countryCode___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [*(*(a1 + 32) + 8) isImproveHealthAndActivityAllowed];
  if (v3)
  {
    v4 = [*(*(a1 + 32) + 8) biologicalSexStringWithError:0];
    [v2 setObject:v4 forKeyedSubscript:@"biologicalSex"];

    v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(*(a1 + 32) + 8), "bucketedAgeWithError:", 0)}];
    [v2 setObject:v5 forKeyedSubscript:@"age"];

    v6 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
    [v2 setObject:v6 forKeyedSubscript:@"acceptDefaults"];
  }

  v7 = [*(*(a1 + 32) + 8) activeWatchProductType];
  [v2 setObject:v7 forKeyedSubscript:@"activeWatchProductType"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:v3];
  [v2 setObject:v8 forKeyedSubscript:@"isImproveHealthAndActivityAllowed"];

  v9 = *(a1 + 40);
  if (v9)
  {
    [v2 setObject:v9 forKeyedSubscript:@"countryCode"];
  }

  v10 = [*(*(a1 + 32) + 8) featureVersion];
  [v2 setObject:v10 forKeyedSubscript:@"featureVersion"];

  [v2 setObject:*(a1 + 48) forKeyedSubscript:@"step"];

  return v2;
}

- (id)submitClassificationChartOverlaySelectedEventCurrentOverlay:(id)overlay previousOverlay:(id)previousOverlay
{
  v18 = *MEMORY[0x277D85DE8];
  overlayCopy = overlay;
  previousOverlayCopy = previousOverlay;
  if ([(HKHRCardioFitnessAnalyticsSignalSource *)self->_signalSource isImproveHealthAndActivityAllowed])
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __113__HKHRCardioFitnessAnalyticsManager_submitClassificationChartOverlaySelectedEventCurrentOverlay_previousOverlay___block_invoke;
    block[3] = &unk_27860AA48;
    block[4] = self;
    v14 = overlayCopy;
    v15 = previousOverlayCopy;
    dispatch_async(queue, block);
    v9 = [[HKHRCardioFitnessAnalyticsResult alloc] initWithStatus:0 error:0];
  }

  else
  {
    _HKInitializeLogging();
    v10 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_228942000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@]: IH&A not allowed, will not submit overlay analytics.", buf, 0xCu);
    }

    v9 = [[HKHRCardioFitnessAnalyticsResult alloc] initWithStatus:2 error:0];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v9;
}

void __113__HKHRCardioFitnessAnalyticsManager_submitClassificationChartOverlaySelectedEventCurrentOverlay_previousOverlay___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  AnalyticsSendEventLazy();
}

id __113__HKHRCardioFitnessAnalyticsManager_submitClassificationChartOverlaySelectedEventCurrentOverlay_previousOverlay___block_invoke_2(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1[4] + 8), "bucketedAgeWithError:", 0)}];
  [v2 setObject:v3 forKeyedSubscript:@"age"];

  v4 = [*(a1[4] + 8) biologicalSexStringWithError:0];
  [v2 setObject:v4 forKeyedSubscript:@"biologicalSex"];

  v5 = [*(a1[4] + 8) featureVersion];
  [v2 setObject:v5 forKeyedSubscript:@"featureVersion"];

  if (a1[5])
  {
    v6 = a1[5];
  }

  else
  {
    v6 = &stru_283BD8508;
  }

  [v2 setObject:v6 forKeyedSubscript:@"currentClassificationOverlay"];
  if (a1[6])
  {
    v7 = a1[6];
  }

  else
  {
    v7 = &stru_283BD8508;
  }

  [v2 setObject:v7 forKeyedSubscript:@"previousClassificationOverlay"];

  return v2;
}

- (id)submitDailyEventWithSource:(id)source deviceContextsDict:(id)dict
{
  sourceCopy = source;
  dictCopy = dict;
  isImproveHealthAndActivityAllowed = [(HKHRCardioFitnessAnalyticsSignalSource *)self->_signalSource isImproveHealthAndActivityAllowed];
  date = [MEMORY[0x277CBEAA8] date];
  v61[0] = 0;
  v10 = [sourceCopy determineWeeksSinceOnboardingWithCurrentDate:date error:v61];
  v11 = v61[0];
  if (v11 || (v12 = self->_signalSource, v60 = 0, [(HKHRCardioFitnessAnalyticsSignalSource *)v12 bucketedAgeWithError:&v60], (v11 = v60) != 0))
  {
    v13 = v11;
    v14 = [[HKHRCardioFitnessAnalyticsResult alloc] initWithStatus:1 error:v11];
  }

  else
  {
    signalSource = self->_signalSource;
    v59 = 0;
    v17 = [(HKHRCardioFitnessAnalyticsSignalSource *)signalSource biologicalSexStringWithError:&v59];
    v18 = v59;
    if (v18)
    {
      v13 = v18;
      v14 = [[HKHRCardioFitnessAnalyticsResult alloc] initWithStatus:1 error:v18];
    }

    else
    {
      v58 = 0;
      v19 = [sourceCopy determineDaysSinceLastLowNotificationWithCurrentDate:date isImproveHealthAndActivityAllowed:isImproveHealthAndActivityAllowed error:&v58];
      v20 = v58;
      if (v20)
      {
        v13 = v20;
        v14 = [[HKHRCardioFitnessAnalyticsResult alloc] initWithStatus:1 error:v20];
      }

      else
      {
        v57 = 0;
        v44 = [sourceCopy determineDaysSinceLastVO2MaxSampleWithCurrentDate:date isImproveHealthAndActivityAllowed:isImproveHealthAndActivityAllowed error:&v57];
        v21 = v57;
        if (v21)
        {
          v13 = v21;
          v14 = [[HKHRCardioFitnessAnalyticsResult alloc] initWithStatus:1 error:v21];
        }

        else
        {
          v56 = 0;
          v43 = [sourceCopy determineNumberOfLowNotificationsInPastYearWithCurrentDate:date isImproveHealthAndActivityAllowed:isImproveHealthAndActivityAllowed error:&v56];
          v22 = v56;
          if (v22)
          {
            v13 = v22;
            v14 = [[HKHRCardioFitnessAnalyticsResult alloc] initWithStatus:1 error:v22];
          }

          else
          {
            v55 = 0;
            v42 = [sourceCopy determineIsBlockersEnabledWithIsImproveHealthAndActivityAllowed:isImproveHealthAndActivityAllowed error:&v55];
            v23 = v55;
            if (v23)
            {
              v13 = v23;
              v14 = [[HKHRCardioFitnessAnalyticsResult alloc] initWithStatus:1 error:v23];
            }

            else
            {
              v54 = 0;
              v41 = [sourceCopy latestClassificationWithIsOnboarded:v10 >= 0 isImproveHealthAndActivityAllowed:isImproveHealthAndActivityAllowed error:&v54];
              v13 = v54;
              if (v13)
              {
                v14 = [[HKHRCardioFitnessAnalyticsResult alloc] initWithStatus:1 error:v13];
                v24 = v41;
              }

              else
              {
                v25 = [dictCopy objectForKeyedSubscript:&unk_283BE0D68];
                if (v25)
                {
                  v37 = v25;
                  v40 = [dictCopy objectForKeyedSubscript:&unk_283BE0D68];
                  v25 = v37;
                }

                else
                {
                  v40 = &unk_283BE0D80;
                }

                v26 = [dictCopy objectForKeyedSubscript:&unk_283BE0D98];
                if (v26)
                {
                  v38 = v26;
                  v35 = [dictCopy objectForKeyedSubscript:&unk_283BE0D98];
                  v26 = v38;
                }

                else
                {
                  v35 = &unk_283BE0D80;
                }

                v27 = [dictCopy objectForKeyedSubscript:&unk_283BE0DB0];
                if (v27)
                {
                  v32 = v27;
                  v39 = [dictCopy objectForKeyedSubscript:&unk_283BE0DB0];
                  v27 = v32;
                }

                else
                {
                  v39 = &unk_283BE0D80;
                }

                v28 = [dictCopy objectForKeyedSubscript:&unk_283BE0DC8];
                if (v28)
                {
                  v31 = v28;
                  v33 = [dictCopy objectForKeyedSubscript:&unk_283BE0DC8];
                  v28 = v31;
                }

                else
                {
                  v33 = &unk_283BE0D80;
                }

                v45 = sourceCopy;
                v46 = v35;
                v47 = v33;
                v48 = v17;
                v49 = v19;
                v50 = v44;
                v51 = v43;
                v24 = v41;
                v52 = v41;
                v53 = v42;
                v34 = v33;
                v36 = v35;
                v29 = v39;
                v30 = v40;
                AnalyticsSendEventLazy();
                v14 = [[HKHRCardioFitnessAnalyticsResult alloc] initWithStatus:0 error:0];
              }
            }
          }
        }
      }
    }
  }

  return v14;
}

id __83__HKHRCardioFitnessAnalyticsManager_submitDailyEventWithSource_deviceContextsDict___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [*(*(a1 + 32) + 8) activeWatchProductType];
  [v2 setObject:v3 forKeyedSubscript:@"activeWatchProductType"];

  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 144)];
  [v2 setObject:v4 forKeyedSubscript:@"isImproveHealthAndActivityAllowed"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 40), "determineIsNotificationsEnabled")}];
  [v2 setObject:v5 forKeyedSubscript:@"notificationsEnabled"];

  v6 = [*(*(a1 + 32) + 8) featureVersion];
  [v2 setObject:v6 forKeyedSubscript:@"onboardedVersion"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 128)];
  [v2 setObject:v7 forKeyedSubscript:@"weeksSinceOnboarding"];

  [v2 setObject:*(a1 + 48) forKeyedSubscript:@"countPairediPhone"];
  [v2 setObject:*(a1 + 56) forKeyedSubscript:@"countPairedWatch"];
  [v2 setObject:*(a1 + 64) forKeyedSubscript:@"countPairediPad"];
  [v2 setObject:*(a1 + 72) forKeyedSubscript:@"countPairedVisionPro"];
  if (*(a1 + 144) == 1)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 136)];
    [v2 setObject:v8 forKeyedSubscript:@"age"];

    [v2 setObject:*(a1 + 80) forKeyedSubscript:@"biologicalSex"];
    [v2 setObject:*(a1 + 88) forKeyedSubscript:@"daysSinceLastLowNotification"];
    [v2 setObject:*(a1 + 96) forKeyedSubscript:@"daysSinceLastVO2MaxSample"];
    [v2 setObject:*(a1 + 104) forKeyedSubscript:@"numberOfLowNotificationsInPastYear"];
    [v2 setObject:*(a1 + 112) forKeyedSubscript:@"assignedClassification"];
    [*(a1 + 32) _setKey:@"isBlockersEnabled" value:*(a1 + 120) onPayloadIfPresent:v2];
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) determineIsHeartRateEnabledWithIsImproveHealthAndActivityAllowed:*(a1 + 144)];
    [v9 _setKey:@"isHeartRateEnabled" value:v10 onPayloadIfPresent:v2];

    v11 = *(a1 + 32);
    v12 = [*(a1 + 40) determineIsWristDetectionEnabledWithIsImproveHealthAndActivityAllowed:*(a1 + 144)];
    [v11 _setKey:@"isWristDetectionEnabled" value:v12 onPayloadIfPresent:v2];
  }

  return v2;
}

- (void)_setKey:(id)key value:(id)value onPayloadIfPresent:(id)present
{
  if (value)
  {
    [present setObject:value forKeyedSubscript:key];
  }
}

@end