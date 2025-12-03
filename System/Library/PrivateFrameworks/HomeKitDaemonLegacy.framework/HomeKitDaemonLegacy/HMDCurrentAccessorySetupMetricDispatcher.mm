@interface HMDCurrentAccessorySetupMetricDispatcher
+ (id)homepodSetupLogEventFromProtoSetupInfo:(id)info;
+ (id)logCategory;
+ (id)readLastAccessorySetupInfo:(id)info;
+ (id)readSetupLogEventFromUserDefaults:(id)defaults;
+ (void)removeLastAccessorySetupInfoFromUserDefaults:(id)defaults;
+ (void)saveSetupLogEventIntoUserDefaults:(id)defaults setupLogEvent:(id)event;
- (HMDCurrentAccessorySetupMetricDispatcher)initWithDataSource:(id)source setupLogEvent:(id)event logEventSubmitter:(id)submitter;
- (HMDCurrentAccessorySetupMetricDispatcher)initWithDataSource:(id)source setupLogEvent:(id)event logEventSubmitter:(id)submitter currentUpTicksFactory:(id)factory submissionTimerFactory:(id)timerFactory userDefaults:(id)defaults;
- (id)_findFirstNonCommunicationErrorIn:(uint64_t)in depth:(void *)depth maxDepth:(uint64_t)maxDepth;
- (id)_underlyingErrorByIgnoringCommunicationFailureErrors:(id)errors;
- (id)dataSource;
- (void)_handleErrorAndSaveStage:(uint64_t)stage stageTime:(void *)time stageString:(void *)string error:;
- (void)_logWithoutStatesWithPrefix:(void *)prefix stage:(uint64_t)stage time:(void *)time error:;
- (void)_markMetricDispatcherSubmission;
- (void)_recordTotalDuration;
- (void)_shouldEndStage:(void *)stage error:;
- (void)_startSubmissionTimerWithInterval:(double)interval;
- (void)markSetupBeginStage:(unint64_t)stage error:(id)error;
- (void)markSetupEndStage:(unint64_t)stage error:(id)error;
- (void)setControllerSetupSessionIdentifier:(id)identifier;
- (void)timerDidFire:(id)fire;
@end

@implementation HMDCurrentAccessorySetupMetricDispatcher

- (void)setControllerSetupSessionIdentifier:(id)identifier
{
  v15 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = identifierCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Setting controller setup session identifier %@ on the log event.", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  v9 = [identifierCopy copy];
  [(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent setSetupSessionIdentifier:v9];

  os_unfair_lock_unlock(&selfCopy->_lock);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)timerDidFire:(id)fire
{
  v79 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  os_unfair_lock_lock_with_options();
  dataSource = [(HMDCurrentAccessorySetupMetricDispatcher *)&self->super.super.isa dataSource];
  [(HMDCurrentAccessorySetupMetricDispatcher *)self setSubmissionTimer:0];
  if ([(HMDCurrentAccessorySetupMetricDispatcher *)self allStagesSubmitted])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
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
    [dataSource removeCurrentAccessorySetupMetricDispatcherIfNeeded];
    goto LABEL_73;
  }

  if (!self)
  {
LABEL_13:
    v5 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    selfCopy3 = self;
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

  -[HMDHomePodSetupLatencyLogEvent setNetworkAvailable_INT:](self->_setupLogEvent, "setNetworkAvailable_INT:", [dataSource hasValidNetwork]);
  -[HMDHomePodSetupLatencyLogEvent setManateeAvailable_INT:](self->_setupLogEvent, "setManateeAvailable_INT:", [dataSource hasManatee]);
  -[HMDHomePodSetupLatencyLogEvent setICloudAvailable_INT:](self->_setupLogEvent, "setICloudAvailable_INT:", [dataSource isSignedIntoiCloud]);
  -[HMDHomePodSetupLatencyLogEvent setIDSAvailable_INT:](self->_setupLogEvent, "setIDSAvailable_INT:", [dataSource isIdsServiceActive]);
  -[HMDHomePodSetupLatencyLogEvent setIDSRegistrationStatus_INT:](self->_setupLogEvent, "setIDSRegistrationStatus_INT:", [dataSource IDSAccountRegistrationStatus]);
  -[HMDHomePodSetupLatencyLogEvent setIDSRegistrationError_INT:](self->_setupLogEvent, "setIDSRegistrationError_INT:", [dataSource IDSAccountRegistrationError]);
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
  selfCopy4 = self;
  v55 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
  {
    v56 = HMFGetLogIdentifier();
    coreAnalyticsEventDictionary = [(HMDHomePodSetupLatencyLogEvent *)self->_setupLogEvent coreAnalyticsEventDictionary];
    *buf = 138543874;
    v74 = v56;
    v75 = 2112;
    v76 = coreAnalyticsEventDictionary;
    v77 = 2112;
    v78 = v16;
    _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_INFO, "%{public}@Submission timer fired and submitting the final metric log event: %@ with error %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v53);
  v58 = objc_opt_class();
  v60 = objc_getProperty(selfCopy4, v59, 56, 1);
  v62 = objc_getProperty(selfCopy4, v61, 48, 1);
  [v58 saveSetupLogEventIntoUserDefaults:v60 setupLogEvent:v62];

  [(HMDCurrentAccessorySetupMetricDispatcher *)selfCopy4 _markMetricDispatcherSubmission];
  LOBYTE(v62) = selfCopy4->_firstTimeOutSubmissionDone;
  v64 = objc_autoreleasePoolPush();
  v65 = selfCopy4;
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
    [dataSource removeCurrentAccessorySetupMetricDispatcherIfNeeded];
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
    selfCopy4->_firstTimeOutSubmissionDone = 1;
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
  if (self)
  {
    os_unfair_lock_assert_owner((self + 8));
    Property = objc_getProperty(self, v2, 24, 1);
    v4 = Property[2]();
    v5 = *(self + 80);
    if (v4 <= v5 || v5 == 0)
    {
      v7 = -1;
    }

    else
    {
      v7 = v4 - v5;
    }

    [*(self + 48) setTotalDurationMS_HH1:v7];
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      totalDurationMS_HH1 = [selfCopy[6] totalDurationMS_HH1];
      v14 = 138543618;
      v15 = v11;
      v16 = 2048;
      v17 = totalDurationMS_HH1;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Total duration for HH1: %llu", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_markMetricDispatcherSubmission
{
  if (self)
  {
    Property = objc_getProperty(self, a2, 24, 1);
    v4 = Property[2]();

    [(HMDCurrentAccessorySetupMetricDispatcher *)self _logWithoutStatesWithPrefix:@"Setup In HH1" stage:v4 time:0 error:?];
  }
}

- (void)_startSubmissionTimerWithInterval:(double)interval
{
  if (self)
  {
    Property = objc_getProperty(self, a2, 40, 1);
    v6 = Property[2](interval);
    [self setSubmissionTimer:v6];

    submissionTimer = [self submissionTimer];
    [submissionTimer setDelegate:self];

    submissionTimer2 = [self submissionTimer];
    [submissionTimer2 resume];
  }
}

- (void)_logWithoutStatesWithPrefix:(void *)prefix stage:(uint64_t)stage time:(void *)time error:
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = a2;
  prefixCopy = prefix;
  timeCopy = time;
  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
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
    v23 = prefixCopy;
    v24 = 2048;
    stageCopy = stage;
    v26 = 2112;
    v27 = v16;
    v28 = 2112;
    v29 = timeCopy;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@%@: %@, time: %llu, HH2 mode: %@, error: %@", &v18, 0x3Eu);
  }

  objc_autoreleasePoolPop(v12);
  v17 = *MEMORY[0x277D85DE8];
}

- (id)_underlyingErrorByIgnoringCommunicationFailureErrors:(id)errors
{
  errorsCopy = errors;
  v5 = [HMDCurrentAccessorySetupMetricDispatcher _findFirstNonCommunicationErrorIn:errorsCopy depth:0 maxDepth:?];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = errorsCopy;
  }

  v8 = v7;

  return v7;
}

- (id)_findFirstNonCommunicationErrorIn:(uint64_t)in depth:(void *)depth maxDepth:(uint64_t)maxDepth
{
  v21 = *MEMORY[0x277D85DE8];
  depthCopy = depth;
  v6 = depthCopy;
  if (in)
  {
    if (depthCopy && maxDepth < 6 && ([depthCopy code] == 54 || objc_msgSend(v6, "code") == 3203))
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

            v12 = [HMDCurrentAccessorySetupMetricDispatcher _findFirstNonCommunicationErrorIn:in depth:*(*(&v16 + 1) + 8 * i) maxDepth:maxDepth + 1];
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

- (void)markSetupEndStage:(unint64_t)stage error:(id)error
{
  v46 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    if (stage - 1 > 8)
    {
      v11 = @"Unknown Setup Stage";
    }

    else
    {
      v11 = off_279730990[stage - 1];
    }

    v12 = v11;
    v40 = 138543874;
    v41 = v10;
    v42 = 2112;
    v43 = v12;
    v44 = 2112;
    v45 = errorCopy;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Mark end stage: %@ error: %@", &v40, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  if (stage > 4)
  {
    if (stage <= 6)
    {
      if (stage == 5)
      {
        v13 = errorCopy;
        if (selfCopy)
        {
          os_unfair_lock_lock_with_options();
          if (selfCopy->_settingsCreationBeginTime && !selfCopy->_settingsCreationEndTime)
          {
            [(HMDCurrentAccessorySetupMetricDispatcher *)selfCopy _shouldEndStage:v13 error:?];
            v30 = objc_getProperty(selfCopy, v29, 24, 1);
            selfCopy->_settingsCreationEndTime = v30[2]();

            [(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent setSettingsCreationMS_HH2:selfCopy->_settingsCreationEndTime - selfCopy->_settingsCreationBeginTime];
            if (![(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent settingsCreationMS_HH2])
            {
              [(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent setSettingsCreationMS_HH2:1];
            }

            [(HMDCurrentAccessorySetupMetricDispatcher *)selfCopy _handleErrorAndSaveStage:selfCopy->_settingsCreationEndTime stageTime:@"Settings Creation" stageString:v13 error:?];
          }

          os_unfair_lock_unlock(&selfCopy->_lock);
        }
      }

      else
      {
        v13 = errorCopy;
        if (selfCopy)
        {
          os_unfair_lock_lock_with_options();
          if (selfCopy->_pairingIdentityCreationBeginTime && !selfCopy->_pairingIdentityCreationEndTime)
          {
            [(HMDCurrentAccessorySetupMetricDispatcher *)selfCopy _shouldEndStage:v13 error:?];
            v24 = objc_getProperty(selfCopy, v23, 24, 1);
            selfCopy->_pairingIdentityCreationEndTime = v24[2]();

            [(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent setPairingIdentityCreationMS_HH2:selfCopy->_pairingIdentityCreationEndTime - selfCopy->_pairingIdentityCreationBeginTime];
            if (![(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent pairingIdentityCreationMS_HH2])
            {
              [(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent setPairingIdentityCreationMS_HH2:1];
            }

            [(HMDCurrentAccessorySetupMetricDispatcher *)selfCopy _handleErrorAndSaveStage:selfCopy->_pairingIdentityCreationEndTime stageTime:@"Pairing Identity Creation" stageString:v13 error:?];
          }

          os_unfair_lock_unlock(&selfCopy->_lock);
        }
      }

      goto LABEL_91;
    }

    switch(stage)
    {
      case 7uLL:
        v13 = errorCopy;
        if (selfCopy)
        {
          os_unfair_lock_lock_with_options();
          if (selfCopy->_addAccessoryBeginTime && !selfCopy->_addAccessoryEndTime)
          {
            [(HMDCurrentAccessorySetupMetricDispatcher *)selfCopy _shouldEndStage:v13 error:?];
            v34 = objc_getProperty(selfCopy, v33, 24, 1);
            selfCopy->_addAccessoryEndTime = v34[2]();

            [(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent setAccessoryAddMS_HH2:selfCopy->_addAccessoryEndTime - selfCopy->_addAccessoryBeginTime];
            if (![(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent accessoryAddMS_HH2])
            {
              [(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent setAccessoryAddMS_HH2:1];
            }

            [(HMDCurrentAccessorySetupMetricDispatcher *)selfCopy _handleErrorAndSaveStage:selfCopy->_addAccessoryEndTime stageTime:@"Accessory Add" stageString:v13 error:?];
          }

          os_unfair_lock_unlock(&selfCopy->_lock);
        }

        goto LABEL_91;
      case 8uLL:
        v13 = errorCopy;
        if (selfCopy)
        {
          os_unfair_lock_lock_with_options();
          if (selfCopy->_siriReadyBeginTime && !selfCopy->_siriReadyEndTime)
          {
            [(HMDCurrentAccessorySetupMetricDispatcher *)selfCopy _shouldEndStage:v13 error:?];
            v38 = objc_getProperty(selfCopy, v37, 24, 1);
            selfCopy->_siriReadyEndTime = v38[2]();

            [(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent setSiriReadyMS_HH2:selfCopy->_siriReadyEndTime - selfCopy->_siriReadyBeginTime];
            if (![(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent siriReadyMS_HH2])
            {
              [(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent setSiriReadyMS_HH2:1];
            }

            [(HMDCurrentAccessorySetupMetricDispatcher *)selfCopy _handleErrorAndSaveStage:selfCopy->_siriReadyEndTime stageTime:@"Siri Home Automation Ready" stageString:v13 error:?];
          }

          os_unfair_lock_unlock(&selfCopy->_lock);
        }

        goto LABEL_91;
      case 9uLL:
        v13 = errorCopy;
        if (selfCopy)
        {
          os_unfair_lock_lock_with_options();
          if (selfCopy->_hh2SentinelZoneFetchBeginTime && !selfCopy->_hh2SentinelZoneFetchEndTime)
          {
            [(HMDCurrentAccessorySetupMetricDispatcher *)selfCopy _shouldEndStage:v13 error:?];
            v17 = objc_getProperty(selfCopy, v16, 24, 1);
            selfCopy->_hh2SentinelZoneFetchEndTime = v17[2]();

            [(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent setSentinelZoneFetchMS_HH1:selfCopy->_hh2SentinelZoneFetchEndTime - selfCopy->_hh2SentinelZoneFetchBeginTime];
            if (![(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent sentinelZoneFetchMS_HH1])
            {
              [(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent setSentinelZoneFetchMS_HH1:1];
            }

            [(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent setSavedEventState:1];
            [(HMDCurrentAccessorySetupMetricDispatcher *)selfCopy _recordTotalDuration];
            [(HMDCurrentAccessorySetupMetricDispatcher *)selfCopy _handleErrorAndSaveStage:selfCopy->_hh2SentinelZoneFetchEndTime stageTime:@"HH2 sentinel zone fetched" stageString:v13 error:?];
            v19 = objc_getProperty(selfCopy, v18, 24, 1);
            v20 = v19[2]();
            [(HMDCurrentAccessorySetupMetricDispatcher *)selfCopy _logWithoutStatesWithPrefix:@"Setup In HH1" stage:v20 time:v13 error:?];
          }

          os_unfair_lock_unlock(&selfCopy->_lock);
        }

        goto LABEL_91;
    }
  }

  else
  {
    if (stage > 1)
    {
      if (stage == 2)
      {
        v13 = errorCopy;
        if (selfCopy)
        {
          os_unfair_lock_lock_with_options();
          if (selfCopy->_setupSessionCloseBeginTime && !selfCopy->_setupSessionCloseEndTime)
          {
            [(HMDCurrentAccessorySetupMetricDispatcher *)selfCopy _shouldEndStage:v13 error:?];
            v32 = objc_getProperty(selfCopy, v31, 24, 1);
            selfCopy->_setupSessionCloseEndTime = v32[2]();

            [(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent setSessionSetupCloseMS_HH1:selfCopy->_setupSessionCloseEndTime - selfCopy->_setupSessionCloseBeginTime];
            if (![(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent sessionSetupCloseMS_HH1])
            {
              [(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent setSessionSetupCloseMS_HH1:1];
            }

            [(HMDCurrentAccessorySetupMetricDispatcher *)selfCopy _handleErrorAndSaveStage:selfCopy->_setupSessionCloseEndTime stageTime:@"Setup Session Close" stageString:v13 error:?];
          }

          os_unfair_lock_unlock(&selfCopy->_lock);
        }
      }

      else if (stage == 3)
      {
        v13 = errorCopy;
        if (selfCopy)
        {
          os_unfair_lock_lock_with_options();
          if (selfCopy->_receiveControllerKeyBeginTime && !selfCopy->_receiveControllerKeyEndTime)
          {
            [(HMDCurrentAccessorySetupMetricDispatcher *)selfCopy _shouldEndStage:v13 error:?];
            v36 = objc_getProperty(selfCopy, v35, 24, 1);
            selfCopy->_receiveControllerKeyEndTime = v36[2]();

            [(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent setControllerKeyExchangeMS_HH1:selfCopy->_receiveControllerKeyEndTime - selfCopy->_receiveControllerKeyBeginTime];
            if (![(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent sessionSetupCloseMS_HH1])
            {
              [(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent setSessionSetupCloseMS_HH1:1];
            }

            [(HMDCurrentAccessorySetupMetricDispatcher *)selfCopy _handleErrorAndSaveStage:selfCopy->_receiveControllerKeyEndTime stageTime:@"Controller Key Exchange" stageString:v13 error:?];
          }

          os_unfair_lock_unlock(&selfCopy->_lock);
        }
      }

      else
      {
        v13 = errorCopy;
        if (selfCopy)
        {
          os_unfair_lock_lock_with_options();
          if (selfCopy->_sentUnassociatedMediaAccessoryBeginTime && !selfCopy->_sentUnassociatedMediaAccessoryEndTime)
          {
            [(HMDCurrentAccessorySetupMetricDispatcher *)selfCopy _shouldEndStage:v13 error:?];
            v15 = objc_getProperty(selfCopy, v14, 24, 1);
            selfCopy->_sentUnassociatedMediaAccessoryEndTime = v15[2]();

            [(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent setNewAccessoryTransferMS_HH1:selfCopy->_sentUnassociatedMediaAccessoryEndTime - selfCopy->_sentUnassociatedMediaAccessoryBeginTime];
            if (![(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent newAccessoryTransferMS_HH1])
            {
              [(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent setNewAccessoryTransferMS_HH1:1];
            }

            [(HMDCurrentAccessorySetupMetricDispatcher *)selfCopy _handleErrorAndSaveStage:selfCopy->_sentUnassociatedMediaAccessoryEndTime stageTime:@"New Accessory Transfer" stageString:v13 error:?];
          }

          os_unfair_lock_unlock(&selfCopy->_lock);
        }
      }

LABEL_91:

      goto LABEL_92;
    }

    if (stage)
    {
      if (stage == 1)
      {
        v13 = errorCopy;
        if (selfCopy)
        {
          os_unfair_lock_lock_with_options();
          if (selfCopy->_setupSessionOpenBeginTime && !selfCopy->_setupSessionOpenEndTime)
          {
            [(HMDCurrentAccessorySetupMetricDispatcher *)selfCopy _shouldEndStage:v13 error:?];
            v22 = objc_getProperty(selfCopy, v21, 24, 1);
            selfCopy->_setupSessionOpenEndTime = v22[2]();

            [(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent setSessionSetupOpenMS_HH1:selfCopy->_setupSessionOpenEndTime - selfCopy->_setupSessionOpenBeginTime];
            if (![(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent sessionSetupOpenMS_HH1])
            {
              [(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent setSessionSetupOpenMS_HH1:1];
            }

            [(HMDCurrentAccessorySetupMetricDispatcher *)selfCopy _handleErrorAndSaveStage:selfCopy->_setupSessionOpenEndTime stageTime:@"Setup Session Open" stageString:v13 error:?];
          }

          os_unfair_lock_unlock(&selfCopy->_lock);
        }

        goto LABEL_91;
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = selfCopy;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        v40 = 138543618;
        v41 = v28;
        v42 = 2112;
        v43 = errorCopy;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Unknown setup stage with error: %@", &v40, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
    }
  }

LABEL_92:

  v39 = *MEMORY[0x277D85DE8];
}

- (void)_shouldEndStage:(void *)stage error:
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  stageCopy = stage;
  os_unfair_lock_assert_owner((self + 8));
  if (stageCopy)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v19 = 138543874;
      v20 = v10;
      v21 = 2112;
      v22 = stageCopy;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Save error %@ for stage %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [stageCopy copy];
    [selfCopy[8] setObject:v11 forKeyedSubscript:v5];
  }

  else
  {
    v12 = [*(self + 64) objectForKeyedSubscript:v5];

    if (v12)
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        v17 = [selfCopy2[8] objectForKeyedSubscript:v5];
        v19 = 138543874;
        v20 = v16;
        v21 = 2112;
        v22 = v5;
        v23 = 2112;
        v24 = v17;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Clear stage %@ with previously saved error %@", &v19, 0x20u);
      }

      objc_autoreleasePoolPop(v13);
      [selfCopy2[8] removeObjectForKey:v5];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_handleErrorAndSaveStage:(uint64_t)stage stageTime:(void *)time stageString:(void *)string error:
{
  v46 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  stringCopy = string;
  os_unfair_lock_assert_owner((self + 8));
  if (stringCopy)
  {
    [*(self + 48) setError:stringCopy];
    [*(self + 48) setErrorStage_String:timeCopy];
    if (a2)
    {
      v11 = @"End stage";
    }

    else
    {
      v11 = @"Begin stage";
    }

    selfCopy2 = self;
    v13 = timeCopy;
    stageCopy2 = stage;
    v15 = stringCopy;
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

    selfCopy2 = self;
    v13 = timeCopy;
    stageCopy2 = stage;
    v15 = 0;
  }

  [(HMDCurrentAccessorySetupMetricDispatcher *)selfCopy2 _logWithoutStatesWithPrefix:v11 stage:v13 time:stageCopy2 error:v15];
  if (a2)
  {
    if (([self allStagesSubmitted] & 1) != 0 || (os_unfair_lock_assert_owner((self + 8)), objc_msgSend(*(self + 48), "sessionSetupOpenMS_HH1") < 1) || objc_msgSend(*(self + 48), "controllerKeyExchangeMS_HH1") < 1 || objc_msgSend(*(self + 48), "newAccessoryTransferMS_HH1") < 1 || objc_msgSend(*(self + 48), "sessionSetupCloseMS_HH1") < 1 || objc_msgSend(*(self + 48), "accessoryAddMS_HH2") < 1 || objc_msgSend(*(self + 48), "settingsCreationMS_HH2") < 1 || objc_msgSend(*(self + 48), "pairingIdentityCreationMS_HH2") < 1 || objc_msgSend(*(self + 48), "siriReadyMS_HH2") < 1)
    {
LABEL_35:
      v34 = objc_opt_class();
      v36 = objc_getProperty(self, v35, 56, 1);
      [v34 saveSetupLogEventIntoUserDefaults:v36 setupLogEvent:{objc_getProperty(self, v37, 48, 1)}];

      goto LABEL_36;
    }

    WeakRetained = objc_loadWeakRetained((self + 16));
    [*(self + 48) setNetworkAvailable_INT:{objc_msgSend(WeakRetained, "hasValidNetwork")}];
    [*(self + 48) setManateeAvailable_INT:{objc_msgSend(WeakRetained, "hasManatee")}];
    [*(self + 48) setICloudAvailable_INT:{objc_msgSend(WeakRetained, "isSignedIntoiCloud")}];
    [*(self + 48) setIDSAvailable_INT:{objc_msgSend(WeakRetained, "isIdsServiceActive")}];
    [*(self + 48) setIDSRegistrationStatus_INT:{objc_msgSend(WeakRetained, "IDSAccountRegistrationStatus")}];
    [*(self + 48) setIDSRegistrationError_INT:{objc_msgSend(WeakRetained, "IDSAccountRegistrationError")}];
    [(HMDCurrentAccessorySetupMetricDispatcher *)self _recordTotalDuration];
    v17 = objc_loadWeakRetained((self + 32));
    [v17 submitLogEvent:*(self + 48) error:stringCopy];

    [*(self + 48) setSavedEventState:3];
    *(self + 12) = 1;
    v18 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v20 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
LABEL_32:

      objc_autoreleasePoolPop(v18);
      [(HMDCurrentAccessorySetupMetricDispatcher *)selfCopy3 _markMetricDispatcherSubmission];
      submissionTimer = [selfCopy3 submissionTimer];
      [submissionTimer cancel];

      [selfCopy3 setSubmissionTimer:0];
      v30 = objc_autoreleasePoolPush();
      v31 = selfCopy3;
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
    coreAnalyticsEventDictionary = [selfCopy3[6] coreAnalyticsEventDictionary];
    savedEventState = [selfCopy3[6] savedEventState];
    v24 = @"HH1Initial";
    if (savedEventState > 2)
    {
      if (savedEventState != 3)
      {
        v25 = savedEventState == 0x10000;
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
      if (savedEventState != 1)
      {
        v25 = savedEventState == 2;
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
    v43 = coreAnalyticsEventDictionary;
    v44 = 2112;
    v45 = v27;
    _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@All stages completed and submitted the event: %@ final state: %@", buf, 0x20u);

    v18 = v39;
    goto LABEL_32;
  }

LABEL_36:

  v38 = *MEMORY[0x277D85DE8];
}

- (void)markSetupBeginStage:(unint64_t)stage error:(id)error
{
  v43 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    if (stage - 1 > 8)
    {
      v11 = @"Unknown Setup Stage";
    }

    else
    {
      v11 = off_279730990[stage - 1];
    }

    v12 = v11;
    v37 = 138543874;
    v38 = v10;
    v39 = 2112;
    v40 = v12;
    v41 = 2112;
    v42 = errorCopy;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Mark begin stage: %@ error: %@", &v37, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  if (stage > 4)
  {
    if (stage <= 6)
    {
      if (stage == 5)
      {
        v13 = errorCopy;
        if (selfCopy)
        {
          os_unfair_lock_lock_with_options();
          if (!selfCopy->_settingsCreationBeginTime)
          {
            v27 = objc_getProperty(selfCopy, v26, 24, 1);
            selfCopy->_settingsCreationBeginTime = v27[2]();

            [(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent setSettingsCreationMS_HH2:-1];
            [(HMDCurrentAccessorySetupMetricDispatcher *)selfCopy _handleErrorAndSaveStage:selfCopy->_settingsCreationBeginTime stageTime:@"Settings Creation" stageString:v13 error:?];
          }

          os_unfair_lock_unlock(&selfCopy->_lock);
        }
      }

      else
      {
        v13 = errorCopy;
        if (selfCopy)
        {
          os_unfair_lock_lock_with_options();
          if (!selfCopy->_pairingIdentityCreationBeginTime)
          {
            v21 = objc_getProperty(selfCopy, v20, 24, 1);
            selfCopy->_pairingIdentityCreationBeginTime = v21[2]();

            [(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent setPairingIdentityCreationMS_HH2:-1];
            [(HMDCurrentAccessorySetupMetricDispatcher *)selfCopy _handleErrorAndSaveStage:selfCopy->_pairingIdentityCreationBeginTime stageTime:@"Pairing Identity Creation" stageString:v13 error:?];
          }

          os_unfair_lock_unlock(&selfCopy->_lock);
        }
      }

      goto LABEL_64;
    }

    switch(stage)
    {
      case 7uLL:
        v13 = errorCopy;
        if (selfCopy)
        {
          os_unfair_lock_lock_with_options();
          if (!selfCopy->_addAccessoryBeginTime)
          {
            v31 = objc_getProperty(selfCopy, v30, 24, 1);
            selfCopy->_addAccessoryBeginTime = v31[2]();

            [(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent setAccessoryAddMS_HH2:-1];
            [(HMDCurrentAccessorySetupMetricDispatcher *)selfCopy _handleErrorAndSaveStage:selfCopy->_addAccessoryBeginTime stageTime:@"Accessory Add" stageString:v13 error:?];
          }

          os_unfair_lock_unlock(&selfCopy->_lock);
        }

        goto LABEL_64;
      case 8uLL:
        v13 = errorCopy;
        if (selfCopy)
        {
          os_unfair_lock_lock_with_options();
          if (!selfCopy->_siriReadyBeginTime)
          {
            v35 = objc_getProperty(selfCopy, v34, 24, 1);
            selfCopy->_siriReadyBeginTime = v35[2]();

            [(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent setSiriReadyMS_HH2:-1];
            [(HMDCurrentAccessorySetupMetricDispatcher *)selfCopy _handleErrorAndSaveStage:selfCopy->_siriReadyBeginTime stageTime:@"Siri Home Automation Ready" stageString:v13 error:?];
          }

          os_unfair_lock_unlock(&selfCopy->_lock);
        }

        goto LABEL_64;
      case 9uLL:
        v13 = errorCopy;
        if (selfCopy)
        {
          os_unfair_lock_lock_with_options();
          if (!selfCopy->_hh2SentinelZoneFetchBeginTime)
          {
            v17 = objc_getProperty(selfCopy, v16, 24, 1);
            selfCopy->_hh2SentinelZoneFetchBeginTime = v17[2]();

            [(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent setSentinelZoneFetchMS_HH1:-1];
            [(HMDCurrentAccessorySetupMetricDispatcher *)selfCopy _handleErrorAndSaveStage:selfCopy->_hh2SentinelZoneFetchBeginTime stageTime:@"HH2 sentinel zone fetched" stageString:v13 error:?];
          }

          os_unfair_lock_unlock(&selfCopy->_lock);
        }

        goto LABEL_64;
    }
  }

  else
  {
    if (stage > 1)
    {
      if (stage == 2)
      {
        v13 = errorCopy;
        if (selfCopy)
        {
          os_unfair_lock_lock_with_options();
          if (!selfCopy->_setupSessionCloseBeginTime)
          {
            v29 = objc_getProperty(selfCopy, v28, 24, 1);
            selfCopy->_setupSessionCloseBeginTime = v29[2]();

            [(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent setSessionSetupCloseMS_HH1:-1];
            [(HMDCurrentAccessorySetupMetricDispatcher *)selfCopy _handleErrorAndSaveStage:selfCopy->_setupSessionCloseBeginTime stageTime:@"Setup Session Close" stageString:v13 error:?];
          }

          os_unfair_lock_unlock(&selfCopy->_lock);
        }
      }

      else if (stage == 3)
      {
        v13 = errorCopy;
        if (selfCopy)
        {
          os_unfair_lock_lock_with_options();
          if (!selfCopy->_receiveControllerKeyBeginTime)
          {
            v33 = objc_getProperty(selfCopy, v32, 24, 1);
            selfCopy->_receiveControllerKeyBeginTime = v33[2]();

            [(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent setControllerKeyExchangeMS_HH1:-1];
            [(HMDCurrentAccessorySetupMetricDispatcher *)selfCopy _handleErrorAndSaveStage:selfCopy->_receiveControllerKeyBeginTime stageTime:@"Controller Key Exchange" stageString:v13 error:?];
          }

          os_unfair_lock_unlock(&selfCopy->_lock);
        }
      }

      else
      {
        v13 = errorCopy;
        if (selfCopy)
        {
          os_unfair_lock_lock_with_options();
          if (!selfCopy->_sentUnassociatedMediaAccessoryBeginTime)
          {
            v15 = objc_getProperty(selfCopy, v14, 24, 1);
            selfCopy->_sentUnassociatedMediaAccessoryBeginTime = v15[2]();

            [(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent setNewAccessoryTransferMS_HH1:-1];
            [(HMDCurrentAccessorySetupMetricDispatcher *)selfCopy _handleErrorAndSaveStage:selfCopy->_sentUnassociatedMediaAccessoryBeginTime stageTime:@"New Accessory Transfer" stageString:v13 error:?];
          }

          os_unfair_lock_unlock(&selfCopy->_lock);
        }
      }

LABEL_64:

      goto LABEL_65;
    }

    if (stage)
    {
      if (stage == 1)
      {
        v13 = errorCopy;
        if (selfCopy)
        {
          os_unfair_lock_lock_with_options();
          if (!selfCopy->_setupSessionOpenBeginTime)
          {
            v19 = objc_getProperty(selfCopy, v18, 24, 1);
            selfCopy->_setupSessionOpenBeginTime = v19[2]();

            [(HMDHomePodSetupLatencyLogEvent *)selfCopy->_setupLogEvent setSessionSetupOpenMS_HH1:-1];
            [(HMDCurrentAccessorySetupMetricDispatcher *)selfCopy _handleErrorAndSaveStage:selfCopy->_setupSessionOpenBeginTime stageTime:@"Setup Session Open" stageString:v13 error:?];
          }

          os_unfair_lock_unlock(&selfCopy->_lock);
        }

        goto LABEL_64;
      }
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = selfCopy;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v37 = 138543618;
        v38 = v25;
        v39 = 2112;
        v40 = errorCopy;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@Unknown setup stage with error: %@", &v37, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
    }
  }

LABEL_65:

  v36 = *MEMORY[0x277D85DE8];
}

- (HMDCurrentAccessorySetupMetricDispatcher)initWithDataSource:(id)source setupLogEvent:(id)event logEventSubmitter:(id)submitter
{
  v8 = MEMORY[0x277CBEBD0];
  submitterCopy = submitter;
  eventCopy = event;
  sourceCopy = source;
  standardUserDefaults = [v8 standardUserDefaults];
  v13 = [(HMDCurrentAccessorySetupMetricDispatcher *)self initWithDataSource:sourceCopy setupLogEvent:eventCopy logEventSubmitter:submitterCopy currentUpTicksFactory:&__block_literal_global_159853 submissionTimerFactory:&__block_literal_global_67_159854 userDefaults:standardUserDefaults];

  return v13;
}

id __95__HMDCurrentAccessorySetupMetricDispatcher_initWithDataSource_setupLogEvent_logEventSubmitter___block_invoke_2(double a1)
{
  v1 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:8 options:a1];

  return v1;
}

- (HMDCurrentAccessorySetupMetricDispatcher)initWithDataSource:(id)source setupLogEvent:(id)event logEventSubmitter:(id)submitter currentUpTicksFactory:(id)factory submissionTimerFactory:(id)timerFactory userDefaults:(id)defaults
{
  sourceCopy = source;
  eventCopy = event;
  submitterCopy = submitter;
  factoryCopy = factory;
  timerFactoryCopy = timerFactory;
  defaultsCopy = defaults;
  v32.receiver = self;
  v32.super_class = HMDCurrentAccessorySetupMetricDispatcher;
  v20 = [(HMDCurrentAccessorySetupMetricDispatcher *)&v32 init];
  v21 = v20;
  if (v20)
  {
    objc_storeWeak(&v20->_dataSource, sourceCopy);
    objc_storeStrong(&v21->_setupLogEvent, event);
    v22 = _Block_copy(factoryCopy);
    currentUpTicksFactory = v21->_currentUpTicksFactory;
    v21->_currentUpTicksFactory = v22;

    objc_storeWeak(&v21->_logEventSubmitter, submitterCopy);
    v24 = _Block_copy(timerFactoryCopy);
    submissionTimerFactory = v21->_submissionTimerFactory;
    v21->_submissionTimerFactory = v24;

    objc_storeStrong(&v21->_userDefaults, defaults);
    v21->_lock._os_unfair_lock_opaque = 0;
    v21->_allStagesSubmitted = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    stageErrorDict = v21->_stageErrorDict;
    v21->_stageErrorDict = dictionary;

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

+ (void)saveSetupLogEventIntoUserDefaults:(id)defaults setupLogEvent:(id)event
{
  v35 = *MEMORY[0x277D85DE8];
  defaultsCopy = defaults;
  eventCopy = event;
  v8 = objc_alloc_init(MEMORY[0x277CD16D0]);
  error = [eventCopy error];
  v10 = [error copy];

  [v8 setSessionSetupOpenMSHH1:{objc_msgSend(eventCopy, "sessionSetupOpenMS_HH1")}];
  [v8 setControllerKeyExchangeMSHH1:{objc_msgSend(eventCopy, "controllerKeyExchangeMS_HH1")}];
  [v8 setNewAccessoryTransferMSHH1:{objc_msgSend(eventCopy, "newAccessoryTransferMS_HH1")}];
  [v8 setSessionSetupCloseMSHH1:{objc_msgSend(eventCopy, "sessionSetupCloseMS_HH1")}];
  [v8 setTotalDurationMSHH1:{objc_msgSend(eventCopy, "totalDurationMS_HH1")}];
  [v8 setSentinelZoneFetchMSHH1:{objc_msgSend(eventCopy, "sentinelZoneFetchMS_HH1")}];
  [v8 setAccountSettleWaitMSHH2:{objc_msgSend(eventCopy, "accountSettleWaitMS_HH2")}];
  [v8 setCurrentDeviceIDSWaitMSHH2:{objc_msgSend(eventCopy, "currentDeviceIDSWaitMS_HH2")}];
  [v8 setHomeManagerReadyMSHH2:{objc_msgSend(eventCopy, "homeManagerReadyMS_HH2")}];
  [v8 setFirstCoreDataImportMSHH2:{objc_msgSend(eventCopy, "firstCoreDataImportMS_HH2")}];
  [v8 setAccessoryAddMSHH2:{objc_msgSend(eventCopy, "accessoryAddMS_HH2")}];
  [v8 setSettingsCreationMSHH2:{objc_msgSend(eventCopy, "settingsCreationMS_HH2")}];
  [v8 setPairingIdentityCreationMSHH2:{objc_msgSend(eventCopy, "pairingIdentityCreationMS_HH2")}];
  [v8 setSiriReadyMSHH2:{objc_msgSend(eventCopy, "siriReadyMS_HH2")}];
  [v8 setEventRouterServerConnectionMSHH2:{objc_msgSend(eventCopy, "eventRouterServerConnectionMS_HH2")}];
  [v8 setPrimaryResidentElectionMSHH2:{objc_msgSend(eventCopy, "primaryResidentElectionMS_HH2")}];
  [v8 setEventRouterFirstEventPushMSHH2:{objc_msgSend(eventCopy, "eventRouterFirstEventPushMS_HH2")}];
  [v8 setTotalDurationMSHH2:{objc_msgSend(eventCopy, "totalDurationMS_HH2")}];
  [v8 setICloudAvailableINT:{objc_msgSend(eventCopy, "iCloudAvailable_INT")}];
  [v8 setIDSAvailableINT:{objc_msgSend(eventCopy, "IDSAvailable_INT")}];
  [v8 setManateeAvailableINT:{objc_msgSend(eventCopy, "manateeAvailable_INT")}];
  [v8 setNetworkAvailableINT:{objc_msgSend(eventCopy, "networkAvailable_INT")}];
  if ([eventCopy controllerInHH2_INT])
  {
    v11 = 2;
  }

  else
  {
    v11 = 1;
  }

  [v8 setLastKnownControllerHH2Mode:v11];
  [v8 setLastKnownControllerSentinelZoneExistence:{objc_msgSend(eventCopy, "controllerHasSentinelZone_INT")}];
  if (v10)
  {
    [v8 setLastKnownStageErrorCode:{objc_msgSend(v10, "code")}];
    domain = [v10 domain];
    [v8 setLastKnownStageErrorDomain:domain];

    underlyingErrors = [v10 underlyingErrors];
    firstObject = [underlyingErrors firstObject];
    v15 = firstObject;
    if (firstObject)
    {
      v16 = firstObject;
    }

    else
    {
      v16 = v10;
    }

    v17 = v16;

    [v8 setLastKnownStageUnderlyingErrorCode:{objc_msgSend(v17, "code")}];
    domain2 = [v17 domain];

    [v8 setLastKnownStageUnderlyingErrorDomain:domain2];
  }

  errorStage_String = [eventCopy errorStage_String];
  [v8 setLastKnownStageErrorString:errorStage_String];

  setupSessionIdentifier = [eventCopy setupSessionIdentifier];
  [v8 setControllerSetupSessionIdentifier:setupSessionIdentifier];

  [v8 setNumberOfTimesPrimaryResidentChangedHH2:{objc_msgSend(eventCopy, "numberOfTimesPrimaryResidentChanged_HH2")}];
  [v8 setLastPrimaryClientConnectedTimeHH2:{objc_msgSend(eventCopy, "lastPrimaryClientConnectedTime_HH2")}];
  [v8 setNumberOfTimesPrimaryClientConnectedHH2:{objc_msgSend(eventCopy, "numberOfTimesPrimaryClientConnected_HH2")}];
  [v8 setNumberOfTimesPrimaryClientDisconnectedHH2:{objc_msgSend(eventCopy, "numberOfTimesPrimaryClientDisconnected_HH2")}];
  [v8 setNumberOfTimesPrimaryClientConnectMessageFailedHH2:{objc_msgSend(eventCopy, "numberOfTimesPrimaryClientConnectMessageFailed_HH2")}];
  [v8 setCurrentDeviceConfirmedPrimaryResidentINT:{objc_msgSend(eventCopy, "currentDeviceConfirmedPrimaryResident_INT")}];
  [v8 setLastPrimaryClientConnectMessageFailErrorCodeHH2:{objc_msgSend(eventCopy, "lastPrimaryClientConnectMessageFailErrorCode_HH2")}];
  lastPrimaryClientConnectMessageFailErrorDomain_HH2 = [eventCopy lastPrimaryClientConnectMessageFailErrorDomain_HH2];
  [v8 setLastPrimaryClientConnectMessageFailErrorDomainHH2:lastPrimaryClientConnectMessageFailErrorDomain_HH2];

  [v8 setLastPrimaryClientConnectMessageFailUnderlyingErrorCodeHH2:{objc_msgSend(eventCopy, "lastPrimaryClientConnectMessageFailUnderlyingErrorCode_HH2")}];
  lastPrimaryClientConnectMessageFailUnderlyingErrorDomain_HH2 = [eventCopy lastPrimaryClientConnectMessageFailUnderlyingErrorDomain_HH2];
  [v8 setLastPrimaryClientConnectMessageFailUnderlyingErrorDomainHH2:lastPrimaryClientConnectMessageFailUnderlyingErrorDomain_HH2];

  [v8 setPrimaryResidentElectionPeerDeviceFutureResolvedMSHH2:{objc_msgSend(eventCopy, "primaryResidentElectionPeerDeviceFutureResolvedMS_HH2")}];
  [v8 setPrimaryResidentElectionFirstCloudKitImportFutureResolvedMSHH2:{objc_msgSend(eventCopy, "primaryResidentElectionFirstCloudKitImportFutureResolvedMS_HH2")}];
  [v8 setPrimaryResidentElectionModernTransportStartedFutureResolvedMSHH2:{objc_msgSend(eventCopy, "primaryResidentElectionModernTransportStartedFutureResolvedMS_HH2")}];
  [v8 setPrimaryResidentSelectionConnectedToStatusKitFutureResolvedMSHH2:{objc_msgSend(eventCopy, "primaryResidentSelectionConnectedToStatusKitFutureResolvedMS_HH2")}];
  [v8 setPrimaryResidentElectionJoinMeshMSHH2:{objc_msgSend(eventCopy, "primaryResidentElectionJoinMeshMS_HH2")}];
  [v8 setFirstCoreDataContainerSetupDurationMSHH2:{objc_msgSend(eventCopy, "firstCoreDataContainerSetupDurationMS_HH2")}];
  [v8 setFirstCoreDataContainerSetupErrorCodeHH2:{objc_msgSend(eventCopy, "firstCoreDataContainerSetupErrorCode_HH2")}];
  firstCoreDataContainerSetupErrorDomain_HH2 = [eventCopy firstCoreDataContainerSetupErrorDomain_HH2];
  [v8 setFirstCoreDataContainerSetupErrorDomainHH2:firstCoreDataContainerSetupErrorDomain_HH2];

  [v8 setFirstCoreDataContainerSetupUnderlyingErrorCodeHH2:{objc_msgSend(eventCopy, "firstCoreDataContainerSetupUnderlyingErrorCode_HH2")}];
  firstCoreDataContainerSetupUnderlyingErrorDomain_HH2 = [eventCopy firstCoreDataContainerSetupUnderlyingErrorDomain_HH2];
  [v8 setFirstCoreDataContainerSetupUnderlyingErrorDomainHH2:firstCoreDataContainerSetupUnderlyingErrorDomain_HH2];

  [v8 setSavedEventState:{objc_msgSend(eventCopy, "savedEventState")}];
  data = [v8 data];
  v26 = objc_autoreleasePoolPush();
  selfCopy = self;
  v28 = HMFGetOSLogHandle();
  v29 = v28;
  if (data)
  {
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v30 = HMFGetLogIdentifier();
      v33 = 138543362;
      v34 = v30;
      _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Saved HomePod setup latency log event", &v33, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
    [defaultsCopy setObject:data forKey:@"accessorysetup.latencylogevent"];
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

+ (id)readSetupLogEventFromUserDefaults:(id)defaults
{
  v15 = *MEMORY[0x277D85DE8];
  defaultsCopy = defaults;
  v5 = [self readLastAccessorySetupInfo:defaultsCopy];
  if (v5)
  {
    v6 = [self homepodSetupLogEventFromProtoSetupInfo:v5];
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
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

+ (id)homepodSetupLogEventFromProtoSetupInfo:(id)info
{
  infoCopy = info;
  v60 = [HMDHomePodSetupLatencyLogEvent alloc];
  sessionSetupOpenMSHH1 = [infoCopy sessionSetupOpenMSHH1];
  controllerKeyExchangeMSHH1 = [infoCopy controllerKeyExchangeMSHH1];
  newAccessoryTransferMSHH1 = [infoCopy newAccessoryTransferMSHH1];
  sessionSetupCloseMSHH1 = [infoCopy sessionSetupCloseMSHH1];
  sentinelZoneFetchMSHH1 = [infoCopy sentinelZoneFetchMSHH1];
  totalDurationMSHH1 = [infoCopy totalDurationMSHH1];
  accountSettleWaitMSHH2 = [infoCopy accountSettleWaitMSHH2];
  currentDeviceIDSWaitMSHH2 = [infoCopy currentDeviceIDSWaitMSHH2];
  homeManagerReadyMSHH2 = [infoCopy homeManagerReadyMSHH2];
  firstCoreDataImportMSHH2 = [infoCopy firstCoreDataImportMSHH2];
  accessoryAddMSHH2 = [infoCopy accessoryAddMSHH2];
  settingsCreationMSHH2 = [infoCopy settingsCreationMSHH2];
  pairingIdentityCreationMSHH2 = [infoCopy pairingIdentityCreationMSHH2];
  siriReadyMSHH2 = [infoCopy siriReadyMSHH2];
  eventRouterServerConnectionMSHH2 = [infoCopy eventRouterServerConnectionMSHH2];
  primaryResidentElectionMSHH2 = [infoCopy primaryResidentElectionMSHH2];
  eventRouterFirstEventPushMSHH2 = [infoCopy eventRouterFirstEventPushMSHH2];
  totalDurationMSHH2 = [infoCopy totalDurationMSHH2];
  v41 = [infoCopy iCloudAvailableINT] == 1;
  v40 = [infoCopy iDSAvailableINT] == 1;
  v39 = [infoCopy manateeAvailableINT] == 1;
  v38 = [infoCopy networkAvailableINT] == 1;
  v37 = [infoCopy lastKnownControllerHH2Mode] == 2;
  v36 = [infoCopy lastKnownControllerSentinelZoneExistence] == 1;
  lastKnownStageErrorCode = [infoCopy lastKnownStageErrorCode];
  lastKnownStageErrorDomain = [infoCopy lastKnownStageErrorDomain];
  lastKnownStageUnderlyingErrorCode = [infoCopy lastKnownStageUnderlyingErrorCode];
  lastKnownStageUnderlyingErrorDomain = [infoCopy lastKnownStageUnderlyingErrorDomain];
  lastKnownStageErrorString = [infoCopy lastKnownStageErrorString];
  controllerSetupSessionIdentifier = [infoCopy controllerSetupSessionIdentifier];
  numberOfTimesPrimaryResidentChangedHH2 = [infoCopy numberOfTimesPrimaryResidentChangedHH2];
  lastPrimaryClientConnectedTimeHH2 = [infoCopy lastPrimaryClientConnectedTimeHH2];
  numberOfTimesPrimaryClientConnectedHH2 = [infoCopy numberOfTimesPrimaryClientConnectedHH2];
  numberOfTimesPrimaryClientDisconnectedHH2 = [infoCopy numberOfTimesPrimaryClientDisconnectedHH2];
  numberOfTimesPrimaryClientConnectMessageFailedHH2 = [infoCopy numberOfTimesPrimaryClientConnectMessageFailedHH2];
  v21 = [infoCopy currentDeviceConfirmedPrimaryResidentINT] == 1;
  lastPrimaryClientConnectMessageFailErrorCodeHH2 = [infoCopy lastPrimaryClientConnectMessageFailErrorCodeHH2];
  lastPrimaryClientConnectMessageFailErrorDomainHH2 = [infoCopy lastPrimaryClientConnectMessageFailErrorDomainHH2];
  lastPrimaryClientConnectMessageFailUnderlyingErrorCodeHH2 = [infoCopy lastPrimaryClientConnectMessageFailUnderlyingErrorCodeHH2];
  lastPrimaryClientConnectMessageFailUnderlyingErrorDomainHH2 = [infoCopy lastPrimaryClientConnectMessageFailUnderlyingErrorDomainHH2];
  primaryResidentElectionPeerDeviceFutureResolvedMSHH2 = [infoCopy primaryResidentElectionPeerDeviceFutureResolvedMSHH2];
  primaryResidentElectionFirstCloudKitImportFutureResolvedMSHH2 = [infoCopy primaryResidentElectionFirstCloudKitImportFutureResolvedMSHH2];
  primaryResidentElectionModernTransportStartedFutureResolvedMSHH2 = [infoCopy primaryResidentElectionModernTransportStartedFutureResolvedMSHH2];
  primaryResidentSelectionConnectedToStatusKitFutureResolvedMSHH2 = [infoCopy primaryResidentSelectionConnectedToStatusKitFutureResolvedMSHH2];
  primaryResidentElectionJoinMeshMSHH2 = [infoCopy primaryResidentElectionJoinMeshMSHH2];
  firstCoreDataContainerSetupDurationMSHH2 = [infoCopy firstCoreDataContainerSetupDurationMSHH2];
  firstCoreDataContainerSetupErrorCodeHH2 = [infoCopy firstCoreDataContainerSetupErrorCodeHH2];
  firstCoreDataContainerSetupErrorDomainHH2 = [infoCopy firstCoreDataContainerSetupErrorDomainHH2];
  firstCoreDataContainerSetupUnderlyingErrorCodeHH2 = [infoCopy firstCoreDataContainerSetupUnderlyingErrorCodeHH2];
  firstCoreDataContainerSetupUnderlyingErrorDomainHH2 = [infoCopy firstCoreDataContainerSetupUnderlyingErrorDomainHH2];
  savedEventState = [infoCopy savedEventState];

  BYTE4(v17) = v21;
  LODWORD(v17) = numberOfTimesPrimaryClientConnectMessageFailedHH2;
  LODWORD(v16) = numberOfTimesPrimaryResidentChangedHH2;
  BYTE5(v15) = v36;
  BYTE4(v15) = v37;
  BYTE3(v15) = v38;
  BYTE2(v15) = v39;
  BYTE1(v15) = v40;
  LOBYTE(v15) = v41;
  v13 = [HMDHomePodSetupLatencyLogEvent initWithSessionSetupOpenMS_HH1:v60 controllerKeyExchangeMS_HH1:"initWithSessionSetupOpenMS_HH1:controllerKeyExchangeMS_HH1:newAccessoryTransferMS_HH1:sessionSetupCloseMS_HH1:sentinelZoneFetchMS_HH1:totalDurationMS_HH1:accountSettleWaitMS_HH2:currentDeviceIDSWaitMS_HH2:homeManagerReadyMS_HH2:firstCoreDataImportMS_HH2:accessoryAddMS_HH2:settingsCreationMS_HH2:pairingIdentityCreationMS_HH2:siriReadyMS_HH2:eventRouterServerConnectionMS_HH2:primaryResidentElectionMS_HH2:eventRouterFirstEventPushMS_HH2:totalDurationMS_HH2:iCloudAvailable_INT:IDSAvailable_INT:manateeAvailable_INT:networkAvailable_INT:controllerInHH2_INT:controllerHasSentinelZone_INT:errorCode:errorDomain:underlyingErrorCode:underlyingErrorDomain:errorStage_String:setupSessionIdentifier:numberOfTimesPrimaryResidentChanged_HH2:lastPrimaryClientConnectedTime_HH2:numberOfTimesPrimaryClientConnected_HH2:numberOfTimesPrimaryClientDisconnected_HH2:numberOfTimesPrimaryClientConnectMessageFailed_HH2:currentDeviceConfirmedPrimaryResident_INT:lastPrimaryClientConnectMessageFailErrorCode_HH2:lastPrimaryClientConnectMessageFailErrorDomain_HH2:lastPrimaryClientConnectMessageFailUnderlyingErrorCode_HH2:lastPrimaryClientConnectMessageFailUnderlyingErrorDomain_HH2:primaryResidentElectionPeerDeviceFutureResolvedMS_HH2:primaryResidentElectionFirstCloudKitImportFutureResolvedMS_HH2:primaryResidentElectionModernTransportStartedFutureResolvedMS_HH2:primaryResidentSelectionConnectedToStatusKitFutureResolvedMS_HH2:primaryResidentElectionJoinMeshMS_HH2:firstCoreDataContainerSetupDurationMS_HH2:firstCoreDataContainerSetupErrorCode_HH2:firstCoreDataContainerSetupErrorDomain_HH2:firstCoreDataContainerSetupUnderlyingErrorCode_HH2:firstCoreDataContainerSetupUnderlyingErrorDomain_HH2:savedEventState:" newAccessoryTransferMS_HH1:sessionSetupOpenMSHH1 sessionSetupCloseMS_HH1:controllerKeyExchangeMSHH1 sentinelZoneFetchMS_HH1:newAccessoryTransferMSHH1 totalDurationMS_HH1:sessionSetupCloseMSHH1 accountSettleWaitMS_HH2:sentinelZoneFetchMSHH1 currentDeviceIDSWaitMS_HH2:totalDurationMSHH1 homeManagerReadyMS_HH2:accountSettleWaitMSHH2 firstCoreDataImportMS_HH2:currentDeviceIDSWaitMSHH2 accessoryAddMS_HH2:homeManagerReadyMSHH2 settingsCreationMS_HH2:firstCoreDataImportMSHH2 pairingIdentityCreationMS_HH2:accessoryAddMSHH2 siriReadyMS_HH2:settingsCreationMSHH2 eventRouterServerConnectionMS_HH2:pairingIdentityCreationMSHH2 primaryResidentElectionMS_HH2:siriReadyMSHH2 eventRouterFirstEventPushMS_HH2:eventRouterServerConnectionMSHH2 totalDurationMS_HH2:primaryResidentElectionMSHH2 iCloudAvailable_INT:eventRouterFirstEventPushMSHH2 IDSAvailable_INT:totalDurationMSHH2 manateeAvailable_INT:v15 networkAvailable_INT:lastKnownStageErrorCode controllerInHH2_INT:lastKnownStageErrorDomain controllerHasSentinelZone_INT:lastKnownStageUnderlyingErrorCode errorCode:lastKnownStageUnderlyingErrorDomain errorDomain:lastKnownStageErrorString underlyingErrorCode:controllerSetupSessionIdentifier underlyingErrorDomain:v16 errorStage_String:lastPrimaryClientConnectedTimeHH2 setupSessionIdentifier:__PAIR64__(numberOfTimesPrimaryClientDisconnectedHH2 numberOfTimesPrimaryResidentChanged_HH2:numberOfTimesPrimaryClientConnectedHH2) lastPrimaryClientConnectedTime_HH2:v17 numberOfTimesPrimaryClientConnected_HH2:lastPrimaryClientConnectMessageFailErrorCodeHH2 numberOfTimesPrimaryClientDisconnected_HH2:lastPrimaryClientConnectMessageFailErrorDomainHH2 numberOfTimesPrimaryClientConnectMessageFailed_HH2:lastPrimaryClientConnectMessageFailUnderlyingErrorCodeHH2 currentDeviceConfirmedPrimaryResident_INT:lastPrimaryClientConnectMessageFailUnderlyingErrorDomainHH2 lastPrimaryClientConnectMessageFailErrorCode_HH2:primaryResidentElectionPeerDeviceFutureResolvedMSHH2 lastPrimaryClientConnectMessageFailErrorDomain_HH2:primaryResidentElectionFirstCloudKitImportFutureResolvedMSHH2 lastPrimaryClientConnectMessageFailUnderlyingErrorCode_HH2:primaryResidentElectionModernTransportStartedFutureResolvedMSHH2 lastPrimaryClientConnectMessageFailUnderlyingErrorDomain_HH2:primaryResidentSelectionConnectedToStatusKitFutureResolvedMSHH2 primaryResidentElectionPeerDeviceFutureResolvedMS_HH2:primaryResidentElectionJoinMeshMSHH2 primaryResidentElectionFirstCloudKitImportFutureResolvedMS_HH2:firstCoreDataContainerSetupDurationMSHH2 primaryResidentElectionModernTransportStartedFutureResolvedMS_HH2:firstCoreDataContainerSetupErrorCodeHH2 primaryResidentSelectionConnectedToStatusKitFutureResolvedMS_HH2:firstCoreDataContainerSetupErrorDomainHH2 primaryResidentElectionJoinMeshMS_HH2:firstCoreDataContainerSetupUnderlyingErrorCodeHH2 firstCoreDataContainerSetupDurationMS_HH2:firstCoreDataContainerSetupUnderlyingErrorDomainHH2 firstCoreDataContainerSetupErrorCode_HH2:savedEventState firstCoreDataContainerSetupErrorDomain_HH2:? firstCoreDataContainerSetupUnderlyingErrorCode_HH2:? firstCoreDataContainerSetupUnderlyingErrorDomain_HH2:? savedEventState:?];

  return v13;
}

+ (void)removeLastAccessorySetupInfoFromUserDefaults:(id)defaults
{
  v12 = *MEMORY[0x277D85DE8];
  defaultsCopy = defaults;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Removing last accessory setup info", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [defaultsCopy removeObjectForKey:@"accessorysetup.latencylogevent"];

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)readLastAccessorySetupInfo:(id)info
{
  v3 = [info dataForKey:@"accessorysetup.latencylogevent"];
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