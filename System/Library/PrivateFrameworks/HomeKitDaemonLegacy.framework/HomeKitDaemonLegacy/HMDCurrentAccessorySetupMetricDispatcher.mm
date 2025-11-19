@interface HMDCurrentAccessorySetupMetricDispatcher
+ (id)homepodSetupLogEventFromProtoSetupInfo:(id)a3;
+ (id)logCategory;
+ (id)readLastAccessorySetupInfo:(id)a3;
+ (id)readSetupLogEventFromUserDefaults:(id)a3;
+ (void)removeLastAccessorySetupInfoFromUserDefaults:(id)a3;
+ (void)saveSetupLogEventIntoUserDefaults:(id)a3 setupLogEvent:(id)a4;
- (HMDCurrentAccessorySetupMetricDispatcher)initWithDataSource:(id)a3 setupLogEvent:(id)a4 logEventSubmitter:(id)a5;
- (HMDCurrentAccessorySetupMetricDispatcher)initWithDataSource:(id)a3 setupLogEvent:(id)a4 logEventSubmitter:(id)a5 currentUpTicksFactory:(id)a6 submissionTimerFactory:(id)a7 userDefaults:(id)a8;
- (id)_findFirstNonCommunicationErrorIn:(uint64_t)a1 depth:(void *)a2 maxDepth:(uint64_t)a3;
- (id)_underlyingErrorByIgnoringCommunicationFailureErrors:(id)a3;
- (id)dataSource;
- (void)_handleErrorAndSaveStage:(uint64_t)a3 stageTime:(void *)a4 stageString:(void *)a5 error:;
- (void)_logWithoutStatesWithPrefix:(void *)a3 stage:(uint64_t)a4 time:(void *)a5 error:;
- (void)_markMetricDispatcherSubmission;
- (void)_recordTotalDuration;
- (void)_shouldEndStage:(void *)a3 error:;
- (void)_startSubmissionTimerWithInterval:(double)a3;
- (void)markSetupBeginStage:(unint64_t)a3 error:(id)a4;
- (void)markSetupEndStage:(unint64_t)a3 error:(id)a4;
- (void)setControllerSetupSessionIdentifier:(id)a3;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDCurrentAccessorySetupMetricDispatcher

- (void)setControllerSetupSessionIdentifier:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Setting controller setup session identifier %@ on the log event.", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  v9 = [v4 copy];
  [(HMDHomePodSetupLatencyLogEvent *)v6->_setupLogEvent setSetupSessionIdentifier:v9];

  os_unfair_lock_unlock(&v6->_lock);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)a3
{
  v79 = *MEMORY[0x277D85DE8];
  v72 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [(HMDCurrentAccessorySetupMetricDispatcher *)&self->super.super.isa dataSource];
  [(HMDCurrentAccessorySetupMetricDispatcher *)self setSubmissionTimer:0];
  if ([(HMDCurrentAccessorySetupMetricDispatcher *)self allStagesSubmitted])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v74 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Submission timer fired, but all stages are already submitted.", buf, 0xCu);
    }

LABEL_4:

    objc_autoreleasePoolPop(v5);
    [v4 removeCurrentAccessorySetupMetricDispatcherIfNeeded];
    goto LABEL_73;
  }

  if (!self)
  {
LABEL_13:
    v5 = objc_autoreleasePoolPush();
    v13 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v74 = v14;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Not a valid log event and do not submit", buf, 0xCu);
    }

    goto LABEL_4;
  }

  os_unfair_lock_assert_owner(&self->_lock);
  if ([(HMDHomePodSetupLatencyLogEvent *)self->_setupLogEvent sessionSetupOpenMS_HH1]>= 1 && [(HMDHomePodSetupLatencyLogEvent *)self->_setupLogEvent sessionSetupCloseMS_HH1]>= 1 && (![(HMDHomePodSetupLatencyLogEvent *)self->_setupLogEvent controllerKeyExchangeMS_HH1]|| ![(HMDHomePodSetupLatencyLogEvent *)self->_setupLogEvent newAccessoryTransferMS_HH1]))
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v74 = v12;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Do not submit as this appears to be a device repair session.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    goto LABEL_13;
  }

  -[HMDHomePodSetupLatencyLogEvent setNetworkAvailable_INT:](self->_setupLogEvent, "setNetworkAvailable_INT:", [v4 hasValidNetwork]);
  -[HMDHomePodSetupLatencyLogEvent setManateeAvailable_INT:](self->_setupLogEvent, "setManateeAvailable_INT:", [v4 hasManatee]);
  -[HMDHomePodSetupLatencyLogEvent setICloudAvailable_INT:](self->_setupLogEvent, "setICloudAvailable_INT:", [v4 isSignedIntoiCloud]);
  -[HMDHomePodSetupLatencyLogEvent setIDSAvailable_INT:](self->_setupLogEvent, "setIDSAvailable_INT:", [v4 isIdsServiceActive]);
  -[HMDHomePodSetupLatencyLogEvent setIDSRegistrationStatus_INT:](self->_setupLogEvent, "setIDSRegistrationStatus_INT:", [v4 IDSAccountRegistrationStatus]);
  -[HMDHomePodSetupLatencyLogEvent setIDSRegistrationError_INT:](self->_setupLogEvent, "setIDSRegistrationError_INT:", [v4 IDSAccountRegistrationError]);
  os_unfair_lock_assert_owner(&self->_lock);
  v15 = [(NSMutableDictionary *)self->_stageErrorDict objectForKeyedSubscript:@"Setup Session Open"];
  if (![(HMDHomePodSetupLatencyLogEvent *)self->_setupLogEvent sessionSetupOpenMS_HH1]|| [(HMDHomePodSetupLatencyLogEvent *)self->_setupLogEvent sessionSetupOpenMS_HH1]== -1)
  {
    [(HMDHomePodSetupLatencyLogEvent *)self->_setupLogEvent setErrorStage_String:@"Setup Session Open"];
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = [(NSMutableDictionary *)self->_stageErrorDict objectForKeyedSubscript:@"Controller Key Exchange"];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v15;
  }

  v20 = v19;

  if (![(HMDHomePodSetupLatencyLogEvent *)self->_setupLogEvent controllerKeyExchangeMS_HH1]|| [(HMDHomePodSetupLatencyLogEvent *)self->_setupLogEvent controllerKeyExchangeMS_HH1]== -1)
  {
    [(HMDHomePodSetupLatencyLogEvent *)self->_setupLogEvent setErrorStage_String:@"Controller Key Exchange"];
    v21 = v20;

    v16 = v21;
  }

  v22 = [(NSMutableDictionary *)self->_stageErrorDict objectForKeyedSubscript:@"New Accessory Transfer"];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = v20;
  }

  v25 = v24;

  if (![(HMDHomePodSetupLatencyLogEvent *)self->_setupLogEvent newAccessoryTransferMS_HH1]|| [(HMDHomePodSetupLatencyLogEvent *)self->_setupLogEvent newAccessoryTransferMS_HH1]== -1)
  {
    [(HMDHomePodSetupLatencyLogEvent *)self->_setupLogEvent setErrorStage_String:@"New Accessory Transfer"];
    v26 = v25;

    v16 = v26;
  }

  v27 = [(NSMutableDictionary *)self->_stageErrorDict objectForKeyedSubscript:@"Setup Session Close"];
  v28 = v27;
  if (v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = v25;
  }

  v30 = v29;

  if (![(HMDHomePodSetupLatencyLogEvent *)self->_setupLogEvent sessionSetupCloseMS_HH1]|| [(HMDHomePodSetupLatencyLogEvent *)self->_setupLogEvent sessionSetupCloseMS_HH1]== -1)
  {
    [(HMDHomePodSetupLatencyLogEvent *)self->_setupLogEvent setErrorStage_String:@"Setup Session Close"];
    v31 = v30;

    v16 = v31;
  }

  v32 = [(NSMutableDictionary *)self->_stageErrorDict objectForKeyedSubscript:@"Settings Creation"];
  v33 = v32;
  if (v32)
  {
    v34 = v32;
  }

  else
  {
    v34 = v30;
  }

  v35 = v34;

  if (![(HMDHomePodSetupLatencyLogEvent *)self->_setupLogEvent settingsCreationMS_HH2]|| [(HMDHomePodSetupLatencyLogEvent *)self->_setupLogEvent settingsCreationMS_HH2]== -1)
  {
    [(HMDHomePodSetupLatencyLogEvent *)self->_setupLogEvent setErrorStage_String:@"Settings Creation"];
    v36 = v35;

    v16 = v36;
  }

  v37 = [(NSMutableDictionary *)self->_stageErrorDict objectForKeyedSubscript:@"Pairing Identity Creation"];
  v38 = v37;
  if (v37)
  {
    v39 = v37;
  }

  else
  {
    v39 = v35;
  }

  v40 = v39;

  if (![(HMDHomePodSetupLatencyLogEvent *)self->_setupLogEvent pairingIdentityCreationMS_HH2]|| [(HMDHomePodSetupLatencyLogEvent *)self->_setupLogEvent pairingIdentityCreationMS_HH2]== -1)
  {
    [(HMDHomePodSetupLatencyLogEvent *)self->_setupLogEvent setErrorStage_String:@"Pairing Identity Creation"];
    v41 = v40;

    v16 = v41;
  }

  v42 = [(NSMutableDictionary *)self->_stageErrorDict objectForKeyedSubscript:@"Accessory Add"];
  v43 = v42;
  if (v42)
  {
    v44 = v42;
  }

  else
  {
    v44 = v40;
  }

  v45 = v44;

  if (![(HMDHomePodSetupLatencyLogEvent *)self->_setupLogEvent accessoryAddMS_HH2]|| [(HMDHomePodSetupLatencyLogEvent *)self->_setupLogEvent accessoryAddMS_HH2]== -1)
  {
    [(HMDHomePodSetupLatencyLogEvent *)self->_setupLogEvent setErrorStage_String:@"Accessory Add"];
    v46 = v45;

    v16 = v46;
  }

  v47 = [(NSMutableDictionary *)self->_stageErrorDict objectForKeyedSubscript:@"Siri Home Automation Ready"];
  v48 = v47;
  if (v47)
  {
    v49 = v47;
  }

  else
  {
    v49 = v45;
  }

  v50 = v49;

  if (![(HMDHomePodSetupLatencyLogEvent *)self->_setupLogEvent siriReadyMS_HH2]|| [(HMDHomePodSetupLatencyLogEvent *)self->_setupLogEvent siriReadyMS_HH2]== -1)
  {
    [(HMDHomePodSetupLatencyLogEvent *)self->_setupLogEvent setErrorStage_String:@"Siri Home Automation Ready"];
    v51 = v50;

    v16 = v51;
  }

  if (!v16)
  {
    v16 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:13];
  }

  [(HMDHomePodSetupLatencyLogEvent *)self->_setupLogEvent setSavedEventState:3];
  [(HMDCurrentAccessorySetupMetricDispatcher *)self _recordTotalDuration];
  WeakRetained = objc_loadWeakRetained(&self->_logEventSubmitter);
  [WeakRetained submitLogEvent:self->_setupLogEvent error:v16];

  v53 = objc_autoreleasePoolPush();
  v54 = self;
  v55 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
  {
    v56 = HMFGetLogIdentifier();
    v57 = [(HMDHomePodSetupLatencyLogEvent *)self->_setupLogEvent coreAnalyticsEventDictionary];
    *buf = 138543874;
    v74 = v56;
    v75 = 2112;
    v76 = v57;
    v77 = 2112;
    v78 = v16;
    _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_INFO, "%{public}@Submission timer fired and submitting the final metric log event: %@ with error %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v53);
  v58 = objc_opt_class();
  v60 = objc_getProperty(v54, v59, 56, 1);
  v62 = objc_getProperty(v54, v61, 48, 1);
  [v58 saveSetupLogEventIntoUserDefaults:v60 setupLogEvent:v62];

  [(HMDCurrentAccessorySetupMetricDispatcher *)v54 _markMetricDispatcherSubmission];
  LOBYTE(v62) = v54->_firstTimeOutSubmissionDone;
  v64 = objc_autoreleasePoolPush();
  v65 = v54;
  if (v62)
  {
    v66 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
    {
      v67 = HMFGetLogIdentifier();
      *buf = 138543362;
      v74 = v67;
      _os_log_impl(&dword_2531F8000, v66, OS_LOG_TYPE_INFO, "%{public}@Log event submitted during extended timeout, removing the metric dispatcher", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v64);
    v65->_allStagesSubmitted = 1;
    [v4 removeCurrentAccessorySetupMetricDispatcherIfNeeded];
  }

  else
  {
    v68 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
    {
      v69 = HMFGetLogIdentifier();
      *buf = 138543362;
      v74 = v69;
      _os_log_impl(&dword_2531F8000, v68, OS_LOG_TYPE_INFO, "%{public}@First timeout submission is done and starting extended timeout timer", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v64);
    v54->_firstTimeOutSubmissionDone = 1;
    [(HMDHomePodSetupLatencyLogEvent *)self->_setupLogEvent setSetupSessionIdentifier:@"Extended Timeout Session"];
    [(HMDCurrentAccessorySetupMetricDispatcher *)v65 _startSubmissionTimerWithInterval:v70, 14400.0];
  }

LABEL_73:
  os_unfair_lock_unlock(&self->_lock);

  v71 = *MEMORY[0x277D85DE8];
}

- (id)dataSource
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 2);
    v1 = vars8;
  }

  return WeakRetained;
}

- (void)_recordTotalDuration
{
  v18 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 8));
    Property = objc_getProperty(a1, v2, 24, 1);
    v4 = Property[2]();
    v5 = *(a1 + 80);
    if (v4 <= v5 || v5 == 0)
    {
      v7 = -1;
    }

    else
    {
      v7 = v4 - v5;
    }

    [*(a1 + 48) setTotalDurationMS_HH1:v7];
    v8 = objc_autoreleasePoolPush();
    v9 = a1;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v9[6] totalDurationMS_HH1];
      v14 = 138543618;
      v15 = v11;
      v16 = 2048;
      v17 = v12;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Total duration for HH1: %llu", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_markMetricDispatcherSubmission
{
  if (a1)
  {
    Property = objc_getProperty(a1, a2, 24, 1);
    v4 = Property[2]();

    [(HMDCurrentAccessorySetupMetricDispatcher *)a1 _logWithoutStatesWithPrefix:@"Setup In HH1" stage:v4 time:0 error:?];
  }
}

- (void)_startSubmissionTimerWithInterval:(double)a3
{
  if (a1)
  {
    Property = objc_getProperty(a1, a2, 40, 1);
    v6 = Property[2](a3);
    [a1 setSubmissionTimer:v6];

    v7 = [a1 submissionTimer];
    [v7 setDelegate:a1];

    v8 = [a1 submissionTimer];
    [v8 resume];
  }
}

- (void)_logWithoutStatesWithPrefix:(void *)a3 stage:(uint64_t)a4 time:(void *)a5 error:
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  v12 = objc_autoreleasePoolPush();
  v13 = a1;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = HMFBooleanToString();
    v18 = 138544642;
    v19 = v15;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v10;
    v24 = 2048;
    v25 = a4;
    v26 = 2112;
    v27 = v16;
    v28 = 2112;
    v29 = v11;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@%@: %@, time: %llu, HH2 mode: %@, error: %@", &v18, 0x3Eu);
  }

  objc_autoreleasePoolPop(v12);
  v17 = *MEMORY[0x277D85DE8];
}

- (id)_underlyingErrorByIgnoringCommunicationFailureErrors:(id)a3
{
  v4 = a3;
  v5 = [HMDCurrentAccessorySetupMetricDispatcher _findFirstNonCommunicationErrorIn:v4 depth:0 maxDepth:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7;

  return v7;
}

- (id)_findFirstNonCommunicationErrorIn:(uint64_t)a1 depth:(void *)a2 maxDepth:(uint64_t)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if (v5 && a3 < 6 && ([v5 code] == 54 || objc_msgSend(v6, "code") == 3203))
    {
      [v6 underlyingErrors];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v7 = v19 = 0u;
      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v17;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = [HMDCurrentAccessorySetupMetricDispatcher _findFirstNonCommunicationErrorIn:a1 depth:*(*(&v16 + 1) + 8 * i) maxDepth:a3 + 1];
            if (v12)
            {
              v13 = v12;
              goto LABEL_17;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      v13 = 0;
LABEL_17:
    }

    else
    {
      v13 = v6;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)markSetupEndStage:(unint64_t)a3 error:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    if (a3 - 1 > 8)
    {
      v11 = @"Unknown Setup Stage";
    }

    else
    {
      v11 = off_279730990[a3 - 1];
    }

    v12 = v11;
    v40 = 138543874;
    v41 = v10;
    v42 = 2112;
    v43 = v12;
    v44 = 2112;
    v45 = v6;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Mark end stage: %@ error: %@", &v40, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  if (a3 > 4)
  {
    if (a3 <= 6)
    {
      if (a3 == 5)
      {
        v13 = v6;
        if (v8)
        {
          os_unfair_lock_lock_with_options();
          if (v8->_settingsCreationBeginTime && !v8->_settingsCreationEndTime)
          {
            [(HMDCurrentAccessorySetupMetricDispatcher *)v8 _shouldEndStage:v13 error:?];
            v30 = objc_getProperty(v8, v29, 24, 1);
            v8->_settingsCreationEndTime = v30[2]();

            [(HMDHomePodSetupLatencyLogEvent *)v8->_setupLogEvent setSettingsCreationMS_HH2:v8->_settingsCreationEndTime - v8->_settingsCreationBeginTime];
            if (![(HMDHomePodSetupLatencyLogEvent *)v8->_setupLogEvent settingsCreationMS_HH2])
            {
              [(HMDHomePodSetupLatencyLogEvent *)v8->_setupLogEvent setSettingsCreationMS_HH2:1];
            }

            [(HMDCurrentAccessorySetupMetricDispatcher *)v8 _handleErrorAndSaveStage:v8->_settingsCreationEndTime stageTime:@"Settings Creation" stageString:v13 error:?];
          }

          os_unfair_lock_unlock(&v8->_lock);
        }
      }

      else
      {
        v13 = v6;
        if (v8)
        {
          os_unfair_lock_lock_with_options();
          if (v8->_pairingIdentityCreationBeginTime && !v8->_pairingIdentityCreationEndTime)
          {
            [(HMDCurrentAccessorySetupMetricDispatcher *)v8 _shouldEndStage:v13 error:?];
            v24 = objc_getProperty(v8, v23, 24, 1);
            v8->_pairingIdentityCreationEndTime = v24[2]();

            [(HMDHomePodSetupLatencyLogEvent *)v8->_setupLogEvent setPairingIdentityCreationMS_HH2:v8->_pairingIdentityCreationEndTime - v8->_pairingIdentityCreationBeginTime];
            if (![(HMDHomePodSetupLatencyLogEvent *)v8->_setupLogEvent pairingIdentityCreationMS_HH2])
            {
              [(HMDHomePodSetupLatencyLogEvent *)v8->_setupLogEvent setPairingIdentityCreationMS_HH2:1];
            }

            [(HMDCurrentAccessorySetupMetricDispatcher *)v8 _handleErrorAndSaveStage:v8->_pairingIdentityCreationEndTime stageTime:@"Pairing Identity Creation" stageString:v13 error:?];
          }

          os_unfair_lock_unlock(&v8->_lock);
        }
      }

      goto LABEL_91;
    }

    switch(a3)
    {
      case 7uLL:
        v13 = v6;
        if (v8)
        {
          os_unfair_lock_lock_with_options();
          if (v8->_addAccessoryBeginTime && !v8->_addAccessoryEndTime)
          {
            [(HMDCurrentAccessorySetupMetricDispatcher *)v8 _shouldEndStage:v13 error:?];
            v34 = objc_getProperty(v8, v33, 24, 1);
            v8->_addAccessoryEndTime = v34[2]();

            [(HMDHomePodSetupLatencyLogEvent *)v8->_setupLogEvent setAccessoryAddMS_HH2:v8->_addAccessoryEndTime - v8->_addAccessoryBeginTime];
            if (![(HMDHomePodSetupLatencyLogEvent *)v8->_setupLogEvent accessoryAddMS_HH2])
            {
              [(HMDHomePodSetupLatencyLogEvent *)v8->_setupLogEvent setAccessoryAddMS_HH2:1];
            }

            [(HMDCurrentAccessorySetupMetricDispatcher *)v8 _handleErrorAndSaveStage:v8->_addAccessoryEndTime stageTime:@"Accessory Add" stageString:v13 error:?];
          }

          os_unfair_lock_unlock(&v8->_lock);
        }

        goto LABEL_91;
      case 8uLL:
        v13 = v6;
        if (v8)
        {
          os_unfair_lock_lock_with_options();
          if (v8->_siriReadyBeginTime && !v8->_siriReadyEndTime)
          {
            [(HMDCurrentAccessorySetupMetricDispatcher *)v8 _shouldEndStage:v13 error:?];
            v38 = objc_getProperty(v8, v37, 24, 1);
            v8->_siriReadyEndTime = v38[2]();

            [(HMDHomePodSetupLatencyLogEvent *)v8->_setupLogEvent setSiriReadyMS_HH2:v8->_siriReadyEndTime - v8->_siriReadyBeginTime];
            if (![(HMDHomePodSetupLatencyLogEvent *)v8->_setupLogEvent siriReadyMS_HH2])
            {
              [(HMDHomePodSetupLatencyLogEvent *)v8->_setupLogEvent setSiriReadyMS_HH2:1];
            }

            [(HMDCurrentAccessorySetupMetricDispatcher *)v8 _handleErrorAndSaveStage:v8->_siriReadyEndTime stageTime:@"Siri Home Automation Ready" stageString:v13 error:?];
          }

          os_unfair_lock_unlock(&v8->_lock);
        }

        goto LABEL_91;
      case 9uLL:
        v13 = v6;
        if (v8)
        {
          os_unfair_lock_lock_with_options();
          if (v8->_hh2SentinelZoneFetchBeginTime && !v8->_hh2SentinelZoneFetchEndTime)
          {
            [(HMDCurrentAccessorySetupMetricDispatcher *)v8 _shouldEndStage:v13 error:?];
            v17 = objc_getProperty(v8, v16, 24, 1);
            v8->_hh2SentinelZoneFetchEndTime = v17[2]();

            [(HMDHomePodSetupLatencyLogEvent *)v8->_setupLogEvent setSentinelZoneFetchMS_HH1:v8->_hh2SentinelZoneFetchEndTime - v8->_hh2SentinelZoneFetchBeginTime];
            if (![(HMDHomePodSetupLatencyLogEvent *)v8->_setupLogEvent sentinelZoneFetchMS_HH1])
            {
              [(HMDHomePodSetupLatencyLogEvent *)v8->_setupLogEvent setSentinelZoneFetchMS_HH1:1];
            }

            [(HMDHomePodSetupLatencyLogEvent *)v8->_setupLogEvent setSavedEventState:1];
            [(HMDCurrentAccessorySetupMetricDispatcher *)v8 _recordTotalDuration];
            [(HMDCurrentAccessorySetupMetricDispatcher *)v8 _handleErrorAndSaveStage:v8->_hh2SentinelZoneFetchEndTime stageTime:@"HH2 sentinel zone fetched" stageString:v13 error:?];
            v19 = objc_getProperty(v8, v18, 24, 1);
            v20 = v19[2]();
            [(HMDCurrentAccessorySetupMetricDispatcher *)v8 _logWithoutStatesWithPrefix:@"Setup In HH1" stage:v20 time:v13 error:?];
          }

          os_unfair_lock_unlock(&v8->_lock);
        }

        goto LABEL_91;
    }
  }

  else
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v13 = v6;
        if (v8)
        {
          os_unfair_lock_lock_with_options();
          if (v8->_setupSessionCloseBeginTime && !v8->_setupSessionCloseEndTime)
          {
            [(HMDCurrentAccessorySetupMetricDispatcher *)v8 _shouldEndStage:v13 error:?];
            v32 = objc_getProperty(v8, v31, 24, 1);
            v8->_setupSessionCloseEndTime = v32[2]();

            [(HMDHomePodSetupLatencyLogEvent *)v8->_setupLogEvent setSessionSetupCloseMS_HH1:v8->_setupSessionCloseEndTime - v8->_setupSessionCloseBeginTime];
            if (![(HMDHomePodSetupLatencyLogEvent *)v8->_setupLogEvent sessionSetupCloseMS_HH1])
            {
              [(HMDHomePodSetupLatencyLogEvent *)v8->_setupLogEvent setSessionSetupCloseMS_HH1:1];
            }

            [(HMDCurrentAccessorySetupMetricDispatcher *)v8 _handleErrorAndSaveStage:v8->_setupSessionCloseEndTime stageTime:@"Setup Session Close" stageString:v13 error:?];
          }

          os_unfair_lock_unlock(&v8->_lock);
        }
      }

      else if (a3 == 3)
      {
        v13 = v6;
        if (v8)
        {
          os_unfair_lock_lock_with_options();
          if (v8->_receiveControllerKeyBeginTime && !v8->_receiveControllerKeyEndTime)
          {
            [(HMDCurrentAccessorySetupMetricDispatcher *)v8 _shouldEndStage:v13 error:?];
            v36 = objc_getProperty(v8, v35, 24, 1);
            v8->_receiveControllerKeyEndTime = v36[2]();

            [(HMDHomePodSetupLatencyLogEvent *)v8->_setupLogEvent setControllerKeyExchangeMS_HH1:v8->_receiveControllerKeyEndTime - v8->_receiveControllerKeyBeginTime];
            if (![(HMDHomePodSetupLatencyLogEvent *)v8->_setupLogEvent sessionSetupCloseMS_HH1])
            {
              [(HMDHomePodSetupLatencyLogEvent *)v8->_setupLogEvent setSessionSetupCloseMS_HH1:1];
            }

            [(HMDCurrentAccessorySetupMetricDispatcher *)v8 _handleErrorAndSaveStage:v8->_receiveControllerKeyEndTime stageTime:@"Controller Key Exchange" stageString:v13 error:?];
          }

          os_unfair_lock_unlock(&v8->_lock);
        }
      }

      else
      {
        v13 = v6;
        if (v8)
        {
          os_unfair_lock_lock_with_options();
          if (v8->_sentUnassociatedMediaAccessoryBeginTime && !v8->_sentUnassociatedMediaAccessoryEndTime)
          {
            [(HMDCurrentAccessorySetupMetricDispatcher *)v8 _shouldEndStage:v13 error:?];
            v15 = objc_getProperty(v8, v14, 24, 1);
            v8->_sentUnassociatedMediaAccessoryEndTime = v15[2]();

            [(HMDHomePodSetupLatencyLogEvent *)v8->_setupLogEvent setNewAccessoryTransferMS_HH1:v8->_sentUnassociatedMediaAccessoryEndTime - v8->_sentUnassociatedMediaAccessoryBeginTime];
            if (![(HMDHomePodSetupLatencyLogEvent *)v8->_setupLogEvent newAccessoryTransferMS_HH1])
            {
              [(HMDHomePodSetupLatencyLogEvent *)v8->_setupLogEvent setNewAccessoryTransferMS_HH1:1];
            }

            [(HMDCurrentAccessorySetupMetricDispatcher *)v8 _handleErrorAndSaveStage:v8->_sentUnassociatedMediaAccessoryEndTime stageTime:@"New Accessory Transfer" stageString:v13 error:?];
          }

          os_unfair_lock_unlock(&v8->_lock);
        }
      }

LABEL_91:

      goto LABEL_92;
    }

    if (a3)
    {
      if (a3 == 1)
      {
        v13 = v6;
        if (v8)
        {
          os_unfair_lock_lock_with_options();
          if (v8->_setupSessionOpenBeginTime && !v8->_setupSessionOpenEndTime)
          {
            [(HMDCurrentAccessorySetupMetricDispatcher *)v8 _shouldEndStage:v13 error:?];
            v22 = objc_getProperty(v8, v21, 24, 1);
            v8->_setupSessionOpenEndTime = v22[2]();

            [(HMDHomePodSetupLatencyLogEvent *)v8->_setupLogEvent setSessionSetupOpenMS_HH1:v8->_setupSessionOpenEndTime - v8->_setupSessionOpenBeginTime];
            if (![(HMDHomePodSetupLatencyLogEvent *)v8->_setupLogEvent sessionSetupOpenMS_HH1])
            {
              [(HMDHomePodSetupLatencyLogEvent *)v8->_setupLogEvent setSessionSetupOpenMS_HH1:1];
            }

            [(HMDCurrentAccessorySetupMetricDispatcher *)v8 _handleErrorAndSaveStage:v8->_setupSessionOpenEndTime stageTime:@"Setup Session Open" stageString:v13 error:?];
          }

          os_unfair_lock_unlock(&v8->_lock);
        }

        goto LABEL_91;
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = v8;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        v40 = 138543618;
        v41 = v28;
        v42 = 2112;
        v43 = v6;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Unknown setup stage with error: %@", &v40, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
    }
  }

LABEL_92:

  v39 = *MEMORY[0x277D85DE8];
}

- (void)_shouldEndStage:(void *)a3 error:
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  os_unfair_lock_assert_owner((a1 + 8));
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v19 = 138543874;
      v20 = v10;
      v21 = 2112;
      v22 = v6;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Save error %@ for stage %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [v6 copy];
    [v8[8] setObject:v11 forKeyedSubscript:v5];
  }

  else
  {
    v12 = [*(a1 + 64) objectForKeyedSubscript:v5];

    if (v12)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = a1;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v17 = [v14[8] objectForKeyedSubscript:v5];
        v19 = 138543874;
        v20 = v16;
        v21 = 2112;
        v22 = v5;
        v23 = 2112;
        v24 = v17;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Clear stage %@ with previously saved error %@", &v19, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      [v14[8] removeObjectForKey:v5];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_handleErrorAndSaveStage:(uint64_t)a3 stageTime:(void *)a4 stageString:(void *)a5 error:
{
  v46 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v10 = a5;
  os_unfair_lock_assert_owner((a1 + 8));
  if (v10)
  {
    [*(a1 + 48) setError:v10];
    [*(a1 + 48) setErrorStage_String:v9];
    if (a2)
    {
      v11 = @"End stage";
    }

    else
    {
      v11 = @"Begin stage";
    }

    v12 = a1;
    v13 = v9;
    v14 = a3;
    v15 = v10;
  }

  else
  {
    if (a2)
    {
      v11 = @"End stage";
    }

    else
    {
      v11 = @"Begin stage";
    }

    v12 = a1;
    v13 = v9;
    v14 = a3;
    v15 = 0;
  }

  [(HMDCurrentAccessorySetupMetricDispatcher *)v12 _logWithoutStatesWithPrefix:v11 stage:v13 time:v14 error:v15];
  if (a2)
  {
    if (([a1 allStagesSubmitted] & 1) != 0 || (os_unfair_lock_assert_owner((a1 + 8)), objc_msgSend(*(a1 + 48), "sessionSetupOpenMS_HH1") < 1) || objc_msgSend(*(a1 + 48), "controllerKeyExchangeMS_HH1") < 1 || objc_msgSend(*(a1 + 48), "newAccessoryTransferMS_HH1") < 1 || objc_msgSend(*(a1 + 48), "sessionSetupCloseMS_HH1") < 1 || objc_msgSend(*(a1 + 48), "accessoryAddMS_HH2") < 1 || objc_msgSend(*(a1 + 48), "settingsCreationMS_HH2") < 1 || objc_msgSend(*(a1 + 48), "pairingIdentityCreationMS_HH2") < 1 || objc_msgSend(*(a1 + 48), "siriReadyMS_HH2") < 1)
    {
LABEL_35:
      v34 = objc_opt_class();
      v36 = objc_getProperty(a1, v35, 56, 1);
      [v34 saveSetupLogEventIntoUserDefaults:v36 setupLogEvent:{objc_getProperty(a1, v37, 48, 1)}];

      goto LABEL_36;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 16));
    [*(a1 + 48) setNetworkAvailable_INT:{objc_msgSend(WeakRetained, "hasValidNetwork")}];
    [*(a1 + 48) setManateeAvailable_INT:{objc_msgSend(WeakRetained, "hasManatee")}];
    [*(a1 + 48) setICloudAvailable_INT:{objc_msgSend(WeakRetained, "isSignedIntoiCloud")}];
    [*(a1 + 48) setIDSAvailable_INT:{objc_msgSend(WeakRetained, "isIdsServiceActive")}];
    [*(a1 + 48) setIDSRegistrationStatus_INT:{objc_msgSend(WeakRetained, "IDSAccountRegistrationStatus")}];
    [*(a1 + 48) setIDSRegistrationError_INT:{objc_msgSend(WeakRetained, "IDSAccountRegistrationError")}];
    [(HMDCurrentAccessorySetupMetricDispatcher *)a1 _recordTotalDuration];
    v17 = objc_loadWeakRetained((a1 + 32));
    [v17 submitLogEvent:*(a1 + 48) error:v10];

    [*(a1 + 48) setSavedEventState:3];
    *(a1 + 12) = 1;
    v18 = objc_autoreleasePoolPush();
    v19 = a1;
    v20 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
LABEL_32:

      objc_autoreleasePoolPop(v18);
      [(HMDCurrentAccessorySetupMetricDispatcher *)v19 _markMetricDispatcherSubmission];
      v29 = [v19 submissionTimer];
      [v29 cancel];

      [v19 setSubmissionTimer:0];
      v30 = objc_autoreleasePoolPush();
      v31 = v19;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543362;
        v41 = v33;
        _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Log event submitted for all stages, removing the metric dispatcher", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v30);
      [WeakRetained removeCurrentAccessorySetupMetricDispatcherIfNeeded];

      goto LABEL_35;
    }

    v39 = v18;
    v21 = HMFGetLogIdentifier();
    v22 = [v19[6] coreAnalyticsEventDictionary];
    v23 = [v19[6] savedEventState];
    v24 = @"HH1Initial";
    if (v23 > 2)
    {
      if (v23 != 3)
      {
        v25 = v23 == 0x10000;
        v26 = @"Unknown";
LABEL_26:
        if (v25)
        {
          v24 = v26;
        }

        goto LABEL_31;
      }

      v24 = @"Submitted";
    }

    else
    {
      if (v23 != 1)
      {
        v25 = v23 == 2;
        v26 = @"HH2Initial";
        goto LABEL_26;
      }

      v24 = @"HH2SentinelFetched";
    }

LABEL_31:
    v27 = v24;
    *buf = 138543874;
    v41 = v21;
    v42 = 2112;
    v43 = v22;
    v44 = 2112;
    v45 = v27;
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@All stages completed and submitted the event: %@ final state: %@", buf, 0x20u);

    v18 = v39;
    goto LABEL_32;
  }

LABEL_36:

  v38 = *MEMORY[0x277D85DE8];
}

- (void)markSetupBeginStage:(unint64_t)a3 error:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    if (a3 - 1 > 8)
    {
      v11 = @"Unknown Setup Stage";
    }

    else
    {
      v11 = off_279730990[a3 - 1];
    }

    v12 = v11;
    v37 = 138543874;
    v38 = v10;
    v39 = 2112;
    v40 = v12;
    v41 = 2112;
    v42 = v6;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Mark begin stage: %@ error: %@", &v37, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  if (a3 > 4)
  {
    if (a3 <= 6)
    {
      if (a3 == 5)
      {
        v13 = v6;
        if (v8)
        {
          os_unfair_lock_lock_with_options();
          if (!v8->_settingsCreationBeginTime)
          {
            v27 = objc_getProperty(v8, v26, 24, 1);
            v8->_settingsCreationBeginTime = v27[2]();

            [(HMDHomePodSetupLatencyLogEvent *)v8->_setupLogEvent setSettingsCreationMS_HH2:-1];
            [(HMDCurrentAccessorySetupMetricDispatcher *)v8 _handleErrorAndSaveStage:v8->_settingsCreationBeginTime stageTime:@"Settings Creation" stageString:v13 error:?];
          }

          os_unfair_lock_unlock(&v8->_lock);
        }
      }

      else
      {
        v13 = v6;
        if (v8)
        {
          os_unfair_lock_lock_with_options();
          if (!v8->_pairingIdentityCreationBeginTime)
          {
            v21 = objc_getProperty(v8, v20, 24, 1);
            v8->_pairingIdentityCreationBeginTime = v21[2]();

            [(HMDHomePodSetupLatencyLogEvent *)v8->_setupLogEvent setPairingIdentityCreationMS_HH2:-1];
            [(HMDCurrentAccessorySetupMetricDispatcher *)v8 _handleErrorAndSaveStage:v8->_pairingIdentityCreationBeginTime stageTime:@"Pairing Identity Creation" stageString:v13 error:?];
          }

          os_unfair_lock_unlock(&v8->_lock);
        }
      }

      goto LABEL_64;
    }

    switch(a3)
    {
      case 7uLL:
        v13 = v6;
        if (v8)
        {
          os_unfair_lock_lock_with_options();
          if (!v8->_addAccessoryBeginTime)
          {
            v31 = objc_getProperty(v8, v30, 24, 1);
            v8->_addAccessoryBeginTime = v31[2]();

            [(HMDHomePodSetupLatencyLogEvent *)v8->_setupLogEvent setAccessoryAddMS_HH2:-1];
            [(HMDCurrentAccessorySetupMetricDispatcher *)v8 _handleErrorAndSaveStage:v8->_addAccessoryBeginTime stageTime:@"Accessory Add" stageString:v13 error:?];
          }

          os_unfair_lock_unlock(&v8->_lock);
        }

        goto LABEL_64;
      case 8uLL:
        v13 = v6;
        if (v8)
        {
          os_unfair_lock_lock_with_options();
          if (!v8->_siriReadyBeginTime)
          {
            v35 = objc_getProperty(v8, v34, 24, 1);
            v8->_siriReadyBeginTime = v35[2]();

            [(HMDHomePodSetupLatencyLogEvent *)v8->_setupLogEvent setSiriReadyMS_HH2:-1];
            [(HMDCurrentAccessorySetupMetricDispatcher *)v8 _handleErrorAndSaveStage:v8->_siriReadyBeginTime stageTime:@"Siri Home Automation Ready" stageString:v13 error:?];
          }

          os_unfair_lock_unlock(&v8->_lock);
        }

        goto LABEL_64;
      case 9uLL:
        v13 = v6;
        if (v8)
        {
          os_unfair_lock_lock_with_options();
          if (!v8->_hh2SentinelZoneFetchBeginTime)
          {
            v17 = objc_getProperty(v8, v16, 24, 1);
            v8->_hh2SentinelZoneFetchBeginTime = v17[2]();

            [(HMDHomePodSetupLatencyLogEvent *)v8->_setupLogEvent setSentinelZoneFetchMS_HH1:-1];
            [(HMDCurrentAccessorySetupMetricDispatcher *)v8 _handleErrorAndSaveStage:v8->_hh2SentinelZoneFetchBeginTime stageTime:@"HH2 sentinel zone fetched" stageString:v13 error:?];
          }

          os_unfair_lock_unlock(&v8->_lock);
        }

        goto LABEL_64;
    }
  }

  else
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v13 = v6;
        if (v8)
        {
          os_unfair_lock_lock_with_options();
          if (!v8->_setupSessionCloseBeginTime)
          {
            v29 = objc_getProperty(v8, v28, 24, 1);
            v8->_setupSessionCloseBeginTime = v29[2]();

            [(HMDHomePodSetupLatencyLogEvent *)v8->_setupLogEvent setSessionSetupCloseMS_HH1:-1];
            [(HMDCurrentAccessorySetupMetricDispatcher *)v8 _handleErrorAndSaveStage:v8->_setupSessionCloseBeginTime stageTime:@"Setup Session Close" stageString:v13 error:?];
          }

          os_unfair_lock_unlock(&v8->_lock);
        }
      }

      else if (a3 == 3)
      {
        v13 = v6;
        if (v8)
        {
          os_unfair_lock_lock_with_options();
          if (!v8->_receiveControllerKeyBeginTime)
          {
            v33 = objc_getProperty(v8, v32, 24, 1);
            v8->_receiveControllerKeyBeginTime = v33[2]();

            [(HMDHomePodSetupLatencyLogEvent *)v8->_setupLogEvent setControllerKeyExchangeMS_HH1:-1];
            [(HMDCurrentAccessorySetupMetricDispatcher *)v8 _handleErrorAndSaveStage:v8->_receiveControllerKeyBeginTime stageTime:@"Controller Key Exchange" stageString:v13 error:?];
          }

          os_unfair_lock_unlock(&v8->_lock);
        }
      }

      else
      {
        v13 = v6;
        if (v8)
        {
          os_unfair_lock_lock_with_options();
          if (!v8->_sentUnassociatedMediaAccessoryBeginTime)
          {
            v15 = objc_getProperty(v8, v14, 24, 1);
            v8->_sentUnassociatedMediaAccessoryBeginTime = v15[2]();

            [(HMDHomePodSetupLatencyLogEvent *)v8->_setupLogEvent setNewAccessoryTransferMS_HH1:-1];
            [(HMDCurrentAccessorySetupMetricDispatcher *)v8 _handleErrorAndSaveStage:v8->_sentUnassociatedMediaAccessoryBeginTime stageTime:@"New Accessory Transfer" stageString:v13 error:?];
          }

          os_unfair_lock_unlock(&v8->_lock);
        }
      }

LABEL_64:

      goto LABEL_65;
    }

    if (a3)
    {
      if (a3 == 1)
      {
        v13 = v6;
        if (v8)
        {
          os_unfair_lock_lock_with_options();
          if (!v8->_setupSessionOpenBeginTime)
          {
            v19 = objc_getProperty(v8, v18, 24, 1);
            v8->_setupSessionOpenBeginTime = v19[2]();

            [(HMDHomePodSetupLatencyLogEvent *)v8->_setupLogEvent setSessionSetupOpenMS_HH1:-1];
            [(HMDCurrentAccessorySetupMetricDispatcher *)v8 _handleErrorAndSaveStage:v8->_setupSessionOpenBeginTime stageTime:@"Setup Session Open" stageString:v13 error:?];
          }

          os_unfair_lock_unlock(&v8->_lock);
        }

        goto LABEL_64;
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = v8;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v37 = 138543618;
        v38 = v25;
        v39 = 2112;
        v40 = v6;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unknown setup stage with error: %@", &v37, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
    }
  }

LABEL_65:

  v36 = *MEMORY[0x277D85DE8];
}

- (HMDCurrentAccessorySetupMetricDispatcher)initWithDataSource:(id)a3 setupLogEvent:(id)a4 logEventSubmitter:(id)a5
{
  v8 = MEMORY[0x277CBEBD0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 standardUserDefaults];
  v13 = [(HMDCurrentAccessorySetupMetricDispatcher *)self initWithDataSource:v11 setupLogEvent:v10 logEventSubmitter:v9 currentUpTicksFactory:&__block_literal_global_159853 submissionTimerFactory:&__block_literal_global_67_159854 userDefaults:v12];

  return v13;
}

id __95__HMDCurrentAccessorySetupMetricDispatcher_initWithDataSource_setupLogEvent_logEventSubmitter___block_invoke_2(double a1)
{
  v1 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:8 options:a1];

  return v1;
}

- (HMDCurrentAccessorySetupMetricDispatcher)initWithDataSource:(id)a3 setupLogEvent:(id)a4 logEventSubmitter:(id)a5 currentUpTicksFactory:(id)a6 submissionTimerFactory:(id)a7 userDefaults:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v32.receiver = self;
  v32.super_class = HMDCurrentAccessorySetupMetricDispatcher;
  v20 = [(HMDCurrentAccessorySetupMetricDispatcher *)&v32 init];
  v21 = v20;
  if (v20)
  {
    objc_storeWeak(&v20->_dataSource, v14);
    objc_storeStrong(&v21->_setupLogEvent, a4);
    v22 = _Block_copy(v17);
    currentUpTicksFactory = v21->_currentUpTicksFactory;
    v21->_currentUpTicksFactory = v22;

    objc_storeWeak(&v21->_logEventSubmitter, v16);
    v24 = _Block_copy(v18);
    submissionTimerFactory = v21->_submissionTimerFactory;
    v21->_submissionTimerFactory = v24;

    objc_storeStrong(&v21->_userDefaults, a8);
    v21->_lock._os_unfair_lock_opaque = 0;
    v21->_allStagesSubmitted = 0;
    v26 = [MEMORY[0x277CBEB38] dictionary];
    stageErrorDict = v21->_stageErrorDict;
    v21->_stageErrorDict = v26;

    v21->_firstTimeOutSubmissionDone = 0;
    Property = objc_getProperty(v21, v28, 24, 1);
    v30 = Property[2]();
    [(HMDCurrentAccessorySetupMetricDispatcher *)v21 _logWithoutStatesWithPrefix:@"Setup In HH1" stage:v30 time:0 error:?];
  }

  return v21;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t42_159871 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t42_159871, &__block_literal_global_81_159872);
  }

  v3 = logCategory__hmf_once_v43_159873;

  return v3;
}

uint64_t __55__HMDCurrentAccessorySetupMetricDispatcher_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v43_159873;
  logCategory__hmf_once_v43_159873 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (void)saveSetupLogEventIntoUserDefaults:(id)a3 setupLogEvent:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CD16D0]);
  v9 = [v7 error];
  v10 = [v9 copy];

  [v8 setSessionSetupOpenMSHH1:{objc_msgSend(v7, "sessionSetupOpenMS_HH1")}];
  [v8 setControllerKeyExchangeMSHH1:{objc_msgSend(v7, "controllerKeyExchangeMS_HH1")}];
  [v8 setNewAccessoryTransferMSHH1:{objc_msgSend(v7, "newAccessoryTransferMS_HH1")}];
  [v8 setSessionSetupCloseMSHH1:{objc_msgSend(v7, "sessionSetupCloseMS_HH1")}];
  [v8 setTotalDurationMSHH1:{objc_msgSend(v7, "totalDurationMS_HH1")}];
  [v8 setSentinelZoneFetchMSHH1:{objc_msgSend(v7, "sentinelZoneFetchMS_HH1")}];
  [v8 setAccountSettleWaitMSHH2:{objc_msgSend(v7, "accountSettleWaitMS_HH2")}];
  [v8 setCurrentDeviceIDSWaitMSHH2:{objc_msgSend(v7, "currentDeviceIDSWaitMS_HH2")}];
  [v8 setHomeManagerReadyMSHH2:{objc_msgSend(v7, "homeManagerReadyMS_HH2")}];
  [v8 setFirstCoreDataImportMSHH2:{objc_msgSend(v7, "firstCoreDataImportMS_HH2")}];
  [v8 setAccessoryAddMSHH2:{objc_msgSend(v7, "accessoryAddMS_HH2")}];
  [v8 setSettingsCreationMSHH2:{objc_msgSend(v7, "settingsCreationMS_HH2")}];
  [v8 setPairingIdentityCreationMSHH2:{objc_msgSend(v7, "pairingIdentityCreationMS_HH2")}];
  [v8 setSiriReadyMSHH2:{objc_msgSend(v7, "siriReadyMS_HH2")}];
  [v8 setEventRouterServerConnectionMSHH2:{objc_msgSend(v7, "eventRouterServerConnectionMS_HH2")}];
  [v8 setPrimaryResidentElectionMSHH2:{objc_msgSend(v7, "primaryResidentElectionMS_HH2")}];
  [v8 setEventRouterFirstEventPushMSHH2:{objc_msgSend(v7, "eventRouterFirstEventPushMS_HH2")}];
  [v8 setTotalDurationMSHH2:{objc_msgSend(v7, "totalDurationMS_HH2")}];
  [v8 setICloudAvailableINT:{objc_msgSend(v7, "iCloudAvailable_INT")}];
  [v8 setIDSAvailableINT:{objc_msgSend(v7, "IDSAvailable_INT")}];
  [v8 setManateeAvailableINT:{objc_msgSend(v7, "manateeAvailable_INT")}];
  [v8 setNetworkAvailableINT:{objc_msgSend(v7, "networkAvailable_INT")}];
  if ([v7 controllerInHH2_INT])
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  [v8 setLastKnownControllerHH2Mode:v11];
  [v8 setLastKnownControllerSentinelZoneExistence:{objc_msgSend(v7, "controllerHasSentinelZone_INT")}];
  if (v10)
  {
    [v8 setLastKnownStageErrorCode:{objc_msgSend(v10, "code")}];
    v12 = [v10 domain];
    [v8 setLastKnownStageErrorDomain:v12];

    v13 = [v10 underlyingErrors];
    v14 = [v13 firstObject];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v10;
    }

    v17 = v16;

    [v8 setLastKnownStageUnderlyingErrorCode:{objc_msgSend(v17, "code")}];
    v18 = [v17 domain];

    [v8 setLastKnownStageUnderlyingErrorDomain:v18];
  }

  v19 = [v7 errorStage_String];
  [v8 setLastKnownStageErrorString:v19];

  v20 = [v7 setupSessionIdentifier];
  [v8 setControllerSetupSessionIdentifier:v20];

  [v8 setNumberOfTimesPrimaryResidentChangedHH2:{objc_msgSend(v7, "numberOfTimesPrimaryResidentChanged_HH2")}];
  [v8 setLastPrimaryClientConnectedTimeHH2:{objc_msgSend(v7, "lastPrimaryClientConnectedTime_HH2")}];
  [v8 setNumberOfTimesPrimaryClientConnectedHH2:{objc_msgSend(v7, "numberOfTimesPrimaryClientConnected_HH2")}];
  [v8 setNumberOfTimesPrimaryClientDisconnectedHH2:{objc_msgSend(v7, "numberOfTimesPrimaryClientDisconnected_HH2")}];
  [v8 setNumberOfTimesPrimaryClientConnectMessageFailedHH2:{objc_msgSend(v7, "numberOfTimesPrimaryClientConnectMessageFailed_HH2")}];
  [v8 setCurrentDeviceConfirmedPrimaryResidentINT:{objc_msgSend(v7, "currentDeviceConfirmedPrimaryResident_INT")}];
  [v8 setLastPrimaryClientConnectMessageFailErrorCodeHH2:{objc_msgSend(v7, "lastPrimaryClientConnectMessageFailErrorCode_HH2")}];
  v21 = [v7 lastPrimaryClientConnectMessageFailErrorDomain_HH2];
  [v8 setLastPrimaryClientConnectMessageFailErrorDomainHH2:v21];

  [v8 setLastPrimaryClientConnectMessageFailUnderlyingErrorCodeHH2:{objc_msgSend(v7, "lastPrimaryClientConnectMessageFailUnderlyingErrorCode_HH2")}];
  v22 = [v7 lastPrimaryClientConnectMessageFailUnderlyingErrorDomain_HH2];
  [v8 setLastPrimaryClientConnectMessageFailUnderlyingErrorDomainHH2:v22];

  [v8 setPrimaryResidentElectionPeerDeviceFutureResolvedMSHH2:{objc_msgSend(v7, "primaryResidentElectionPeerDeviceFutureResolvedMS_HH2")}];
  [v8 setPrimaryResidentElectionFirstCloudKitImportFutureResolvedMSHH2:{objc_msgSend(v7, "primaryResidentElectionFirstCloudKitImportFutureResolvedMS_HH2")}];
  [v8 setPrimaryResidentElectionModernTransportStartedFutureResolvedMSHH2:{objc_msgSend(v7, "primaryResidentElectionModernTransportStartedFutureResolvedMS_HH2")}];
  [v8 setPrimaryResidentSelectionConnectedToStatusKitFutureResolvedMSHH2:{objc_msgSend(v7, "primaryResidentSelectionConnectedToStatusKitFutureResolvedMS_HH2")}];
  [v8 setPrimaryResidentElectionJoinMeshMSHH2:{objc_msgSend(v7, "primaryResidentElectionJoinMeshMS_HH2")}];
  [v8 setFirstCoreDataContainerSetupDurationMSHH2:{objc_msgSend(v7, "firstCoreDataContainerSetupDurationMS_HH2")}];
  [v8 setFirstCoreDataContainerSetupErrorCodeHH2:{objc_msgSend(v7, "firstCoreDataContainerSetupErrorCode_HH2")}];
  v23 = [v7 firstCoreDataContainerSetupErrorDomain_HH2];
  [v8 setFirstCoreDataContainerSetupErrorDomainHH2:v23];

  [v8 setFirstCoreDataContainerSetupUnderlyingErrorCodeHH2:{objc_msgSend(v7, "firstCoreDataContainerSetupUnderlyingErrorCode_HH2")}];
  v24 = [v7 firstCoreDataContainerSetupUnderlyingErrorDomain_HH2];
  [v8 setFirstCoreDataContainerSetupUnderlyingErrorDomainHH2:v24];

  [v8 setSavedEventState:{objc_msgSend(v7, "savedEventState")}];
  v25 = [v8 data];
  v26 = objc_autoreleasePoolPush();
  v27 = a1;
  v28 = HMFGetOSLogHandle();
  v29 = v28;
  if (v25)
  {
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v30 = HMFGetLogIdentifier();
      v33 = 138543362;
      v34 = v30;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Saved HomePod setup latency log event", &v33, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
    [v6 setObject:v25 forKey:@"accessorysetup.latencylogevent"];
  }

  else
  {
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      v33 = 138543362;
      v34 = v31;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Error saving setup log event", &v33, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
  }

  v32 = *MEMORY[0x277D85DE8];
}

+ (id)readSetupLogEventFromUserDefaults:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 readLastAccessorySetupInfo:v4];
  if (v5)
  {
    v6 = [a1 homepodSetupLogEventFromProtoSetupInfo:v5];
    v7 = objc_autoreleasePoolPush();
    v8 = a1;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Loaded setup log event", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    v6 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)homepodSetupLogEventFromProtoSetupInfo:(id)a3
{
  v3 = a3;
  v60 = [HMDHomePodSetupLatencyLogEvent alloc];
  v59 = [v3 sessionSetupOpenMSHH1];
  v58 = [v3 controllerKeyExchangeMSHH1];
  v57 = [v3 newAccessoryTransferMSHH1];
  v56 = [v3 sessionSetupCloseMSHH1];
  v55 = [v3 sentinelZoneFetchMSHH1];
  v54 = [v3 totalDurationMSHH1];
  v53 = [v3 accountSettleWaitMSHH2];
  v52 = [v3 currentDeviceIDSWaitMSHH2];
  v51 = [v3 homeManagerReadyMSHH2];
  v50 = [v3 firstCoreDataImportMSHH2];
  v49 = [v3 accessoryAddMSHH2];
  v48 = [v3 settingsCreationMSHH2];
  v47 = [v3 pairingIdentityCreationMSHH2];
  v46 = [v3 siriReadyMSHH2];
  v45 = [v3 eventRouterServerConnectionMSHH2];
  v44 = [v3 primaryResidentElectionMSHH2];
  v43 = [v3 eventRouterFirstEventPushMSHH2];
  v42 = [v3 totalDurationMSHH2];
  v41 = [v3 iCloudAvailableINT] == 1;
  v40 = [v3 iDSAvailableINT] == 1;
  v39 = [v3 manateeAvailableINT] == 1;
  v38 = [v3 networkAvailableINT] == 1;
  v37 = [v3 lastKnownControllerHH2Mode] == 2;
  v36 = [v3 lastKnownControllerSentinelZoneExistence] == 1;
  v35 = [v3 lastKnownStageErrorCode];
  v34 = [v3 lastKnownStageErrorDomain];
  v33 = [v3 lastKnownStageUnderlyingErrorCode];
  v32 = [v3 lastKnownStageUnderlyingErrorDomain];
  v31 = [v3 lastKnownStageErrorString];
  v30 = [v3 controllerSetupSessionIdentifier];
  v29 = [v3 numberOfTimesPrimaryResidentChangedHH2];
  v28 = [v3 lastPrimaryClientConnectedTimeHH2];
  v27 = [v3 numberOfTimesPrimaryClientConnectedHH2];
  v26 = [v3 numberOfTimesPrimaryClientDisconnectedHH2];
  v24 = [v3 numberOfTimesPrimaryClientConnectMessageFailedHH2];
  v21 = [v3 currentDeviceConfirmedPrimaryResidentINT] == 1;
  v25 = [v3 lastPrimaryClientConnectMessageFailErrorCodeHH2];
  v23 = [v3 lastPrimaryClientConnectMessageFailErrorDomainHH2];
  v22 = [v3 lastPrimaryClientConnectMessageFailUnderlyingErrorCodeHH2];
  v20 = [v3 lastPrimaryClientConnectMessageFailUnderlyingErrorDomainHH2];
  v19 = [v3 primaryResidentElectionPeerDeviceFutureResolvedMSHH2];
  v18 = [v3 primaryResidentElectionFirstCloudKitImportFutureResolvedMSHH2];
  v4 = [v3 primaryResidentElectionModernTransportStartedFutureResolvedMSHH2];
  v5 = [v3 primaryResidentSelectionConnectedToStatusKitFutureResolvedMSHH2];
  v6 = [v3 primaryResidentElectionJoinMeshMSHH2];
  v7 = [v3 firstCoreDataContainerSetupDurationMSHH2];
  v8 = [v3 firstCoreDataContainerSetupErrorCodeHH2];
  v9 = [v3 firstCoreDataContainerSetupErrorDomainHH2];
  v10 = [v3 firstCoreDataContainerSetupUnderlyingErrorCodeHH2];
  v11 = [v3 firstCoreDataContainerSetupUnderlyingErrorDomainHH2];
  v12 = [v3 savedEventState];

  BYTE4(v17) = v21;
  LODWORD(v17) = v24;
  LODWORD(v16) = v29;
  BYTE5(v15) = v36;
  BYTE4(v15) = v37;
  BYTE3(v15) = v38;
  BYTE2(v15) = v39;
  BYTE1(v15) = v40;
  LOBYTE(v15) = v41;
  v13 = [HMDHomePodSetupLatencyLogEvent initWithSessionSetupOpenMS_HH1:v60 controllerKeyExchangeMS_HH1:"initWithSessionSetupOpenMS_HH1:controllerKeyExchangeMS_HH1:newAccessoryTransferMS_HH1:sessionSetupCloseMS_HH1:sentinelZoneFetchMS_HH1:totalDurationMS_HH1:accountSettleWaitMS_HH2:currentDeviceIDSWaitMS_HH2:homeManagerReadyMS_HH2:firstCoreDataImportMS_HH2:accessoryAddMS_HH2:settingsCreationMS_HH2:pairingIdentityCreationMS_HH2:siriReadyMS_HH2:eventRouterServerConnectionMS_HH2:primaryResidentElectionMS_HH2:eventRouterFirstEventPushMS_HH2:totalDurationMS_HH2:iCloudAvailable_INT:IDSAvailable_INT:manateeAvailable_INT:networkAvailable_INT:controllerInHH2_INT:controllerHasSentinelZone_INT:errorCode:errorDomain:underlyingErrorCode:underlyingErrorDomain:errorStage_String:setupSessionIdentifier:numberOfTimesPrimaryResidentChanged_HH2:lastPrimaryClientConnectedTime_HH2:numberOfTimesPrimaryClientConnected_HH2:numberOfTimesPrimaryClientDisconnected_HH2:numberOfTimesPrimaryClientConnectMessageFailed_HH2:currentDeviceConfirmedPrimaryResident_INT:lastPrimaryClientConnectMessageFailErrorCode_HH2:lastPrimaryClientConnectMessageFailErrorDomain_HH2:lastPrimaryClientConnectMessageFailUnderlyingErrorCode_HH2:lastPrimaryClientConnectMessageFailUnderlyingErrorDomain_HH2:primaryResidentElectionPeerDeviceFutureResolvedMS_HH2:primaryResidentElectionFirstCloudKitImportFutureResolvedMS_HH2:primaryResidentElectionModernTransportStartedFutureResolvedMS_HH2:primaryResidentSelectionConnectedToStatusKitFutureResolvedMS_HH2:primaryResidentElectionJoinMeshMS_HH2:firstCoreDataContainerSetupDurationMS_HH2:firstCoreDataContainerSetupErrorCode_HH2:firstCoreDataContainerSetupErrorDomain_HH2:firstCoreDataContainerSetupUnderlyingErrorCode_HH2:firstCoreDataContainerSetupUnderlyingErrorDomain_HH2:savedEventState:" newAccessoryTransferMS_HH1:v59 sessionSetupCloseMS_HH1:v58 sentinelZoneFetchMS_HH1:v57 totalDurationMS_HH1:v56 accountSettleWaitMS_HH2:v55 currentDeviceIDSWaitMS_HH2:v54 homeManagerReadyMS_HH2:v53 firstCoreDataImportMS_HH2:v52 accessoryAddMS_HH2:v51 settingsCreationMS_HH2:v50 pairingIdentityCreationMS_HH2:v49 siriReadyMS_HH2:v48 eventRouterServerConnectionMS_HH2:v47 primaryResidentElectionMS_HH2:v46 eventRouterFirstEventPushMS_HH2:v45 totalDurationMS_HH2:v44 iCloudAvailable_INT:v43 IDSAvailable_INT:v42 manateeAvailable_INT:v15 networkAvailable_INT:v35 controllerInHH2_INT:v34 controllerHasSentinelZone_INT:v33 errorCode:v32 errorDomain:v31 underlyingErrorCode:v30 underlyingErrorDomain:v16 errorStage_String:v28 setupSessionIdentifier:__PAIR64__(v26 numberOfTimesPrimaryResidentChanged_HH2:v27) lastPrimaryClientConnectedTime_HH2:v17 numberOfTimesPrimaryClientConnected_HH2:v25 numberOfTimesPrimaryClientDisconnected_HH2:v23 numberOfTimesPrimaryClientConnectMessageFailed_HH2:v22 currentDeviceConfirmedPrimaryResident_INT:v20 lastPrimaryClientConnectMessageFailErrorCode_HH2:v19 lastPrimaryClientConnectMessageFailErrorDomain_HH2:v18 lastPrimaryClientConnectMessageFailUnderlyingErrorCode_HH2:v4 lastPrimaryClientConnectMessageFailUnderlyingErrorDomain_HH2:v5 primaryResidentElectionPeerDeviceFutureResolvedMS_HH2:v6 primaryResidentElectionFirstCloudKitImportFutureResolvedMS_HH2:v7 primaryResidentElectionModernTransportStartedFutureResolvedMS_HH2:v8 primaryResidentSelectionConnectedToStatusKitFutureResolvedMS_HH2:v9 primaryResidentElectionJoinMeshMS_HH2:v10 firstCoreDataContainerSetupDurationMS_HH2:v11 firstCoreDataContainerSetupErrorCode_HH2:v12 firstCoreDataContainerSetupErrorDomain_HH2:? firstCoreDataContainerSetupUnderlyingErrorCode_HH2:? firstCoreDataContainerSetupUnderlyingErrorDomain_HH2:? savedEventState:?];

  return v13;
}

+ (void)removeLastAccessorySetupInfoFromUserDefaults:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = a1;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing last accessory setup info", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [v4 removeObjectForKey:@"accessorysetup.latencylogevent"];

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)readLastAccessorySetupInfo:(id)a3
{
  v3 = [a3 dataForKey:@"accessorysetup.latencylogevent"];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277CD16D0]) initWithData:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end