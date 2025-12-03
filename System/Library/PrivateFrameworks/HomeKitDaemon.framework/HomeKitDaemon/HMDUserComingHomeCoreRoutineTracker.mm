@interface HMDUserComingHomeCoreRoutineTracker
+ (id)logCategory;
+ (void)initialize;
- (BOOL)_shouldProcessPredictedContextLocation:(id)location;
- (BOOL)_validateRangeForProcessingSeenPredictedContextLocations:(id)locations;
- (BOOL)canStartComingHome:(id)home;
- (BOOL)canStayInComingHome:(id)home;
- (BOOL)locationContextHasValidStateEnd:(id)end;
- (HMDUserActivityType6ListenerDelegate)delegate;
- (HMDUserActivityType6StateEvent)currentStateEvent;
- (HMDUserComingHomeCoreRoutineTracker)initWithDataSource:(id)source locationManager:(id)manager;
- (NSDate)changedTimestamp;
- (NSDate)stateEnd;
- (double)probabilityToStart:(id)start;
- (double)probabilityToStop:(id)stop;
- (double)standardProbabilityToStart;
- (id)_calculateEstimatedEntryDateForPredictedContextLocation:(id)location;
- (id)_preprocessPredictedContextLocations:(id)locations;
- (id)_seenPredictedContextLocationsContains:(id)contains forInsert:(BOOL)insert;
- (unint64_t)lastReason;
- (unint64_t)state;
- (void)_auditSeenPredictedContextLocations;
- (void)_lookUpCurrentHomeLocationOfInterest;
- (void)_processPredictedContextResult:(id)result;
- (void)_processPredictedContextResults;
- (void)_registerForNotifications;
- (void)_reprocessLastPredictedContextResults;
- (void)_seenPredictedContextLocationsAddContext:(id)context;
- (void)_startOrUpdateComingHomeTrackingWithStateEnd:(id)end;
- (void)_stateUpdated;
- (void)_stopComingHomeTracking:(unint64_t)tracking;
- (void)configureWithDelegate:(id)delegate;
- (void)handleDidArriveNotification:(id)notification;
- (void)handleDidLeaveNotification:(id)notification;
- (void)handleLocationAuthorizationChange:(int64_t)change;
- (void)handleLocationChangedNotification:(id)notification;
- (void)processPredictedContextResults;
- (void)setChangedTimestamp:(id)timestamp;
- (void)setLastReason:(unint64_t)reason;
- (void)setState:(unint64_t)state;
- (void)setStateEnd:(id)end;
- (void)updatePredictedContextResult:(id)result error:(id)error;
@end

@implementation HMDUserComingHomeCoreRoutineTracker

- (HMDUserActivityType6ListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updatePredictedContextResult:(id)result error:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  errorCopy = error;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v18 = v11;
    v19 = 2112;
    v20 = resultCopy;
    v21 = 2112;
    v22 = errorCopy;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Detected NPLOI update predicted context %@ with error %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  if (!errorCopy)
  {
    dataSource = [(HMDUserComingHomeCoreRoutineTracker *)selfCopy dataSource];
    queue = [dataSource queue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __74__HMDUserComingHomeCoreRoutineTracker_updatePredictedContextResult_error___block_invoke;
    v15[3] = &unk_27868A750;
    v15[4] = selfCopy;
    v16 = resultCopy;
    dispatch_async(queue, v15);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __74__HMDUserComingHomeCoreRoutineTracker_updatePredictedContextResult_error___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v12 = 138543618;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Adding predicted context result to process: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [[HMDRTPredictedContextResultTuple alloc] initWithPredictedContextResult:*(a1 + 40)];
  v8 = [*(a1 + 32) predictedContextResultsToProcess];
  [v8 addObject:v7];

  v9 = [*(a1 + 32) predictedContextResultsToProcess];
  v10 = [v9 count];

  if (v10 == 1)
  {
    [*(a1 + 32) _lookUpCurrentHomeLocationOfInterest];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_lookUpCurrentHomeLocationOfInterest
{
  v45 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  dataSource2 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  home = [dataSource2 home];
  homeLocationHandler = [home homeLocationHandler];
  location = [homeLocationHandler location];

  if (location)
  {
    predictedContextResultsToProcess = [(HMDUserComingHomeCoreRoutineTracker *)self predictedContextResultsToProcess];
    v10 = [predictedContextResultsToProcess count];

    if (!v10 || [(HMDUserComingHomeCoreRoutineTracker *)self isLookUpLocationOfInterestInProgress])
    {
      goto LABEL_14;
    }

    currentHomeLocationOfInterest = [(HMDUserComingHomeCoreRoutineTracker *)self currentHomeLocationOfInterest];

    if (!currentHomeLocationOfInterest)
    {
      goto LABEL_8;
    }

    currentHomeLocationOfInterestTimestamp = [(HMDUserComingHomeCoreRoutineTracker *)self currentHomeLocationOfInterestTimestamp];

    if (!currentHomeLocationOfInterestTimestamp)
    {
      goto LABEL_8;
    }

    mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
    v14 = [mEMORY[0x277D0F8D0] preferenceForKey:@"maximumIntervalToHoldLOILookup"];
    numberValue = [v14 numberValue];
    [numberValue doubleValue];
    v17 = v16;

    currentHomeLocationOfInterestTimestamp2 = [(HMDUserComingHomeCoreRoutineTracker *)self currentHomeLocationOfInterestTimestamp];
    v19 = [currentHomeLocationOfInterestTimestamp2 dateByAddingTimeInterval:v17];

    dataSource3 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
    currentDate = [dataSource3 currentDate];

    if ([v19 compare:currentDate] == 1)
    {

LABEL_8:
      [(HMDUserComingHomeCoreRoutineTracker *)self setIsLookUpLocationOfInterestInProgress:1];
      v22 = objc_autoreleasePoolPush();
      selfCopy = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543618;
        v42 = v25;
        v43 = 2112;
        v44 = location;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Looking up the current location of interest for %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      objc_initWeak(buf, selfCopy);
      locationManager = [(HMDUserComingHomeCoreRoutineTracker *)selfCopy locationManager];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __75__HMDUserComingHomeCoreRoutineTracker__lookUpCurrentHomeLocationOfInterest__block_invoke;
      v38[3] = &unk_27867BF60;
      objc_copyWeak(&v40, buf);
      v39 = location;
      [locationManager fetchLocationOfInterestAtLocation:v39 withCompletion:v38];

      objc_destroyWeak(&v40);
      objc_destroyWeak(buf);
      goto LABEL_14;
    }

    v33 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = HMFGetLogIdentifier();
      currentHomeLocationOfInterest2 = [(HMDUserComingHomeCoreRoutineTracker *)selfCopy2 currentHomeLocationOfInterest];
      *buf = 138543618;
      v42 = v36;
      v43 = 2112;
      v44 = currentHomeLocationOfInterest2;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Using current location of interest %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
    [(HMDUserComingHomeCoreRoutineTracker *)selfCopy2 _processPredictedContextResults];
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v30;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Cannot lookup the current location of interest because cannot determine the home location", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    [(HMDUserComingHomeCoreRoutineTracker *)selfCopy3 setCurrentHomeLocationOfInterest:0];
    predictedContextResultsToProcess2 = [(HMDUserComingHomeCoreRoutineTracker *)selfCopy3 predictedContextResultsToProcess];
    [predictedContextResultsToProcess2 removeAllObjects];

    [(HMDUserComingHomeCoreRoutineTracker *)selfCopy3 _stopComingHomeTracking:11];
  }

LABEL_14:

  v32 = *MEMORY[0x277D85DE8];
}

void __75__HMDUserComingHomeCoreRoutineTracker__lookUpCurrentHomeLocationOfInterest__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v6)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = WeakRetained;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v12 = *(a1 + 32);
        *buf = 138543874;
        v19 = v11;
        v20 = 2112;
        v21 = v12;
        v22 = 2112;
        v23 = v6;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_ERROR, "%{public}@Unable to find location of interest for the home %@ location with error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v8);
    }

    v13 = [WeakRetained dataSource];
    v14 = [v13 queue];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __75__HMDUserComingHomeCoreRoutineTracker__lookUpCurrentHomeLocationOfInterest__block_invoke_73;
    v16[3] = &unk_27868A750;
    v16[4] = WeakRetained;
    v17 = v5;
    dispatch_async(v14, v16);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __75__HMDUserComingHomeCoreRoutineTracker__lookUpCurrentHomeLocationOfInterest__block_invoke_73(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v12 = 138543618;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@Setting current location of interest to %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) setIsLookUpLocationOfInterestInProgress:0];
  v7 = [*(a1 + 32) predictedContextResultsToProcess];
  v8 = [v7 count];

  if (v8)
  {
    [*(a1 + 32) setCurrentHomeLocationOfInterest:*(a1 + 40)];
    v9 = [*(a1 + 32) dataSource];
    v10 = [v9 currentDate];
    [*(a1 + 32) setCurrentHomeLocationOfInterestTimestamp:v10];

    [*(a1 + 32) _processPredictedContextResults];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_processPredictedContextResults
{
  v21 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  if ([(HMDUserComingHomeCoreRoutineTracker *)self isLookUpLocationOfInterestInProgress])
  {
LABEL_11:
    v13 = *MEMORY[0x277D85DE8];
    return;
  }

  currentHomeLocationOfInterest = [(HMDUserComingHomeCoreRoutineTracker *)self currentHomeLocationOfInterest];

  if (currentHomeLocationOfInterest)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    predictedContextResultsToProcess = [(HMDUserComingHomeCoreRoutineTracker *)self predictedContextResultsToProcess];
    v7 = [predictedContextResultsToProcess countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(predictedContextResultsToProcess);
          }

          result = [*(*(&v16 + 1) + 8 * i) result];
          [(HMDUserComingHomeCoreRoutineTracker *)self _processPredictedContextResult:result];
        }

        v8 = [predictedContextResultsToProcess countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    predictedContextResultsToProcess2 = [(HMDUserComingHomeCoreRoutineTracker *)self predictedContextResultsToProcess];
    [predictedContextResultsToProcess2 removeAllObjects];

    goto LABEL_11;
  }

  predictedContextResultsToProcess3 = [(HMDUserComingHomeCoreRoutineTracker *)self predictedContextResultsToProcess];
  [predictedContextResultsToProcess3 removeAllObjects];

  v15 = *MEMORY[0x277D85DE8];

  [(HMDUserComingHomeCoreRoutineTracker *)self _stopComingHomeTracking:11];
}

- (void)_reprocessLastPredictedContextResults
{
  v24 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  lastPredictedContextResult = [(HMDUserComingHomeCoreRoutineTracker *)self lastPredictedContextResult];

  if (lastPredictedContextResult)
  {
    predictedContextResultsToProcess = [(HMDUserComingHomeCoreRoutineTracker *)self predictedContextResultsToProcess];
    v7 = [predictedContextResultsToProcess count];

    if (!v7)
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        lastPredictedContextResult2 = [(HMDUserComingHomeCoreRoutineTracker *)selfCopy lastPredictedContextResult];
        v20 = 138543618;
        v21 = v11;
        v22 = 2112;
        v23 = lastPredictedContextResult2;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Reprocessing predicted context result to process: %@", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v13 = [HMDRTPredictedContextResultTuple alloc];
      lastPredictedContextResult3 = [(HMDUserComingHomeCoreRoutineTracker *)selfCopy lastPredictedContextResult];
      v15 = [(HMDRTPredictedContextResultTuple *)v13 initWithPredictedContextResult:lastPredictedContextResult3];

      predictedContextResultsToProcess2 = [(HMDUserComingHomeCoreRoutineTracker *)selfCopy predictedContextResultsToProcess];
      [predictedContextResultsToProcess2 addObject:v15];

      predictedContextResultsToProcess3 = [(HMDUserComingHomeCoreRoutineTracker *)selfCopy predictedContextResultsToProcess];
      v18 = [predictedContextResultsToProcess3 count];

      if (v18 == 1)
      {
        [(HMDUserComingHomeCoreRoutineTracker *)selfCopy _lookUpCurrentHomeLocationOfInterest];
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_processPredictedContextResult:(id)result
{
  v70 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  dataSource = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v65 = v10;
    v66 = 2112;
    v67 = resultCopy;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Processing predicted context result: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [(HMDUserComingHomeCoreRoutineTracker *)selfCopy setLastPredictedContextResult:resultCopy];
  if (resultCopy)
  {
    v58 = resultCopy;
    v11 = [resultCopy nextStepPredictedContextsWithFilterMask:1];
    v12 = [(HMDUserComingHomeCoreRoutineTracker *)selfCopy _preprocessPredictedContextLocations:v11];

    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      dataSource2 = [(HMDUserComingHomeCoreRoutineTracker *)v14 dataSource];
      home = [dataSource2 home];
      uuid = [home uuid];
      *buf = 138543874;
      v65 = v16;
      v66 = 2112;
      v67 = uuid;
      v68 = 2112;
      v69 = v12;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Home %@ processing contexts: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v20 = v12;
    v21 = [v20 countByEnumeratingWithState:&v59 objects:v63 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v60;
      v57 = selfCopy;
      while (2)
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v60 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v59 + 1) + 8 * i);
          if ([(HMDUserComingHomeCoreRoutineTracker *)v14 canStartComingHome:v25, v57]|| [(HMDUserComingHomeCoreRoutineTracker *)v14 canStayInComingHome:v25])
          {
            v31 = objc_autoreleasePoolPush();
            v32 = v14;
            v33 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              v34 = HMFGetLogIdentifier();
              *buf = 138543618;
              v65 = v34;
              v66 = 2112;
              v67 = v25;
              _os_log_impl(&dword_229538000, v33, OS_LOG_TYPE_INFO, "%{public}@Found predicted context location: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v31);
            v30 = v25;
            selfCopy = v57;
            goto LABEL_25;
          }

          v26 = objc_autoreleasePoolPush();
          v27 = v14;
          v28 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v29 = HMFGetLogIdentifier();
            *buf = 138543618;
            v65 = v29;
            v66 = 2112;
            v67 = v25;
            _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_INFO, "%{public}@Ignoring predicted context that will not start of maintain Coming Home: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v26);
        }

        v22 = [v20 countByEnumeratingWithState:&v59 objects:v63 count:16];
        v30 = 0;
        selfCopy = v57;
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v30 = 0;
    }

LABEL_25:

    resultCopy = v58;
  }

  else
  {
    v35 = objc_autoreleasePoolPush();
    v36 = selfCopy;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543362;
      v65 = v38;
      _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_INFO, "%{public}@No predicted context to process", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v35);
    v30 = 0;
  }

  v39 = [(HMDUserComingHomeCoreRoutineTracker *)selfCopy _calculateEstimatedEntryDateForPredictedContextLocation:v30];
  v40 = v39;
  if (v30 && v39 && ([(HMDUserComingHomeCoreRoutineTracker *)selfCopy canStartComingHome:v30]|| [(HMDUserComingHomeCoreRoutineTracker *)selfCopy canStayInComingHome:v30]))
  {
    [(HMDUserComingHomeCoreRoutineTracker *)selfCopy _startOrUpdateComingHomeTrackingWithStateEnd:v40];
  }

  else
  {
    if ([(HMDUserComingHomeCoreRoutineTracker *)selfCopy state]== 2)
    {
      dataSource3 = [(HMDUserComingHomeCoreRoutineTracker *)selfCopy dataSource];
      currentDate = [dataSource3 currentDate];

      changedTimestamp = [(HMDUserComingHomeCoreRoutineTracker *)selfCopy changedTimestamp];
      if (changedTimestamp)
      {
        changedTimestamp2 = [(HMDUserComingHomeCoreRoutineTracker *)selfCopy changedTimestamp];
        [currentDate timeIntervalSinceDate:changedTimestamp2];
        v46 = v45;
      }

      else
      {
        v46 = 0;
      }

      stateEnd = [(HMDUserComingHomeCoreRoutineTracker *)selfCopy stateEnd];
      if (stateEnd)
      {
        [(HMDUserComingHomeCoreRoutineTracker *)selfCopy stateEnd];
        v48 = selfCopy;
        v50 = v49 = resultCopy;
        [v50 timeIntervalSinceDate:currentDate];
        v52 = v51;

        resultCopy = v49;
        selfCopy = v48;
      }

      else
      {
        v52 = 0;
      }

      v53 = [[HMDUserActivityStateType6DetectorTransitionLogEvent alloc] initWithTrackerType:3 reason:2 timeInEvent:v46 secondaryOffset:v52];
      dataSource4 = [(HMDUserComingHomeCoreRoutineTracker *)selfCopy dataSource];
      logEventSubmitter = [dataSource4 logEventSubmitter];
      [logEventSubmitter submitLogEvent:v53];
    }

    [(HMDUserComingHomeCoreRoutineTracker *)selfCopy _stopComingHomeTracking:11];
  }

  v56 = *MEMORY[0x277D85DE8];
}

- (id)_preprocessPredictedContextLocations:(id)locations
{
  v61 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  dataSource = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  [(HMDUserComingHomeCoreRoutineTracker *)self _auditSeenPredictedContextLocations];
  v50 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(locationsCopy, "count")}];
  v49 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(locationsCopy, "count")}];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v58 = v10;
    v59 = 2112;
    v60 = locationsCopy;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Preprocessing predicted contexts: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = locationsCopy;
  v11 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v53;
    do
    {
      v14 = 0;
      do
      {
        if (*v53 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v52 + 1) + 8 * v14);
        if ([v15 conformsToProtocol:&unk_283FE7FC8])
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }

        v17 = v16;

        if (!v17)
        {
          v22 = objc_autoreleasePoolPush();
          v23 = selfCopy;
          v24 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            v25 = HMFGetLogIdentifier();
            *buf = 138543618;
            v58 = v25;
            v59 = 2112;
            v60 = v15;
            _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring because this is not a predicted context location: %@", buf, 0x16u);
          }

LABEL_30:
          v37 = v22;
LABEL_31:
          objc_autoreleasePoolPop(v37);
          goto LABEL_32;
        }

        locationOfInterest = [v17 locationOfInterest];
        currentHomeLocationOfInterest = [(HMDUserComingHomeCoreRoutineTracker *)selfCopy currentHomeLocationOfInterest];
        v20 = currentHomeLocationOfInterest;
        if (locationOfInterest)
        {
          v21 = currentHomeLocationOfInterest == 0;
        }

        else
        {
          v21 = 1;
        }

        if (v21)
        {

LABEL_27:
          v22 = objc_autoreleasePoolPush();
          v34 = selfCopy;
          v35 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            v36 = HMFGetLogIdentifier();
            *buf = 138543618;
            v58 = v36;
            v59 = 2112;
            v60 = v17;
            _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_DEBUG, "%{public}@Ignoring because this is for another home: %@", buf, 0x16u);
          }

          goto LABEL_30;
        }

        identifier = [locationOfInterest identifier];
        identifier2 = [v20 identifier];
        v28 = HMFEqualObjects();

        if ((v28 & 1) == 0)
        {
          goto LABEL_27;
        }

        if (isNavigation(v17))
        {
          v29 = objc_autoreleasePoolPush();
          v30 = selfCopy;
          v31 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            v32 = HMFGetLogIdentifier();
            *buf = 138543618;
            v58 = v32;
            v59 = 2112;
            v60 = v17;
            _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_INFO, "%{public}@Found navigation predicted context location: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v29);
          v33 = v50;
LABEL_26:
          [v33 addObject:{v17, v49}];
          goto LABEL_32;
        }

        if (![(HMDUserComingHomeCoreRoutineTracker *)selfCopy _validateRangeForProcessingSeenPredictedContextLocations:v17])
        {
          v38 = [(HMDUserComingHomeCoreRoutineTracker *)selfCopy _shouldProcessPredictedContextLocation:v17];
          v39 = objc_autoreleasePoolPush();
          v40 = selfCopy;
          v41 = HMFGetOSLogHandle();
          v42 = os_log_type_enabled(v41, OS_LOG_TYPE_INFO);
          if (v38)
          {
            if (v42)
            {
              v43 = HMFGetLogIdentifier();
              *buf = 138543618;
              v58 = v43;
              v59 = 2112;
              v60 = v17;
              _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@Found valid predicted context location: %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v39);
            v33 = v49;
            goto LABEL_26;
          }

          if (v42)
          {
            v44 = HMFGetLogIdentifier();
            *buf = 138543618;
            v58 = v44;
            v59 = 2112;
            v60 = v17;
            _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_INFO, "%{public}@Ignoring visit predicted context location: %@", buf, 0x16u);
          }

          v37 = v39;
          goto LABEL_31;
        }

        [(HMDUserComingHomeCoreRoutineTracker *)selfCopy _seenPredictedContextLocationsAddContext:v17];
LABEL_32:

        ++v14;
      }

      while (v12 != v14);
      v45 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
      v12 = v45;
    }

    while (v45);
  }

  [v50 addObjectsFromArray:v49];
  v46 = [v50 copy];

  v47 = *MEMORY[0x277D85DE8];

  return v46;
}

- (BOOL)_shouldProcessPredictedContextLocation:(id)location
{
  locationCopy = location;
  dataSource = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v8 = [mEMORY[0x277D0F8D0] preferenceForKey:@"detectorMaximumIntervalForStateEnd"];
  numberValue = [v8 numberValue];
  [numberValue doubleValue];
  v11 = v10;

  v12 = [(HMDUserComingHomeCoreRoutineTracker *)self _calculateEstimatedEntryDateForPredictedContextLocation:locationCopy];
  if (v12)
  {
    v13 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v12 sinceDate:-v11];
    dataSource2 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
    currentDate = [dataSource2 currentDate];
    v16 = [currentDate compare:v13];

    if (v16 == -1)
    {
      v31 = 0;
    }

    else
    {
      v17 = [(HMDUserComingHomeCoreRoutineTracker *)self _seenPredictedContextLocationsContains:locationCopy forInsert:0];
      if (v17)
      {
        dateInterval = [locationCopy dateInterval];
        startDate = [dateInterval startDate];
        date = [startDate date];
        dateInterval2 = [v17 dateInterval];
        startDate2 = [dateInterval2 startDate];
        date2 = [startDate2 date];
        [date timeIntervalSinceDate:date2];
        v25 = v24;

        mEMORY[0x277D0F8D0]2 = [MEMORY[0x277D0F8D0] sharedPreferences];
        v27 = [mEMORY[0x277D0F8D0]2 preferenceForKey:@"predictedLocationContextMatchStartEndDateDelta"];
        numberValue2 = [v27 numberValue];
        [numberValue2 doubleValue];
        v30 = v29;

        v31 = vabdd_f64(v25, v30) >= 2.22044605e-16 && v25 <= v30;
      }

      else
      {
        v31 = 0;
      }
    }
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (BOOL)_validateRangeForProcessingSeenPredictedContextLocations:(id)locations
{
  locationsCopy = locations;
  dataSource = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v8 = [mEMORY[0x277D0F8D0] preferenceForKey:@"minimumIntervalForValidSeenPrediction"];
  numberValue = [v8 numberValue];
  [numberValue doubleValue];
  v11 = v10;

  v12 = MEMORY[0x277CBEAA8];
  dateInterval = [locationsCopy dateInterval];

  startDate = [dateInterval startDate];
  date = [startDate date];
  v16 = [v12 dateWithTimeInterval:date sinceDate:-v11];

  dataSource2 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  currentDate = [dataSource2 currentDate];
  LOBYTE(dateInterval) = [currentDate compare:v16] != 1;

  return dateInterval;
}

- (void)_seenPredictedContextLocationsAddContext:(id)context
{
  v18 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  dataSource = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  v7 = [(HMDUserComingHomeCoreRoutineTracker *)self _seenPredictedContextLocationsContains:contextCopy forInsert:1];
  if (!v7)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = contextCopy;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Adding new context location to seen contexts: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    seenPredictedContextLocations = [(HMDUserComingHomeCoreRoutineTracker *)selfCopy seenPredictedContextLocations];
    [seenPredictedContextLocations addObject:contextCopy];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_seenPredictedContextLocationsContains:(id)contains forInsert:(BOOL)insert
{
  insertCopy = insert;
  v87 = *MEMORY[0x277D85DE8];
  containsCopy = contains;
  dataSource = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = [(HMDUserComingHomeCoreRoutineTracker *)self seenPredictedContextLocations];
  v75 = [obj countByEnumeratingWithState:&v76 objects:v86 count:16];
  if (v75)
  {
    selfCopy = self;
    v73 = *v77;
    v71 = containsCopy;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v77 != v73)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v76 + 1) + 8 * v8);
      v10 = containsCopy;
      dateInterval = [v10 dateInterval];
      startDate = [dateInterval startDate];
      date = [startDate date];
      dateInterval2 = [v9 dateInterval];
      startDate2 = [dateInterval2 startDate];
      date2 = [startDate2 date];
      [date timeIntervalSinceDate:date2];
      v18 = v17;

      mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
      v20 = [mEMORY[0x277D0F8D0] preferenceForKey:@"predictedLocationContextMatchStartEndDateDelta"];
      numberValue = [v20 numberValue];
      [numberValue doubleValue];
      v23 = v22;

      v24 = fabs(v18);
      v25 = vabdd_f64(v24, v23);
      if (insertCopy)
      {
        if (v24 > v23 || v25 < 2.22044605e-16)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v24 > v23 || v25 < 2.22044605e-16)
        {
          goto LABEL_17;
        }

        dateInterval3 = [v9 dateInterval];
        startDate3 = [dateInterval3 startDate];
        date3 = [startDate3 date];
        dateInterval4 = [v10 dateInterval];
        startDate4 = [dateInterval4 startDate];
        date4 = [startDate4 date];
        v34 = [date3 compare:date4];

        v35 = v34 == 1;
        containsCopy = v71;
        if (v35)
        {
          goto LABEL_17;
        }
      }

      dateInterval5 = [v10 dateInterval];
      endDate = [dateInterval5 endDate];
      date5 = [endDate date];
      dateInterval6 = [v9 dateInterval];
      endDate2 = [dateInterval6 endDate];
      date6 = [endDate2 date];
      [date5 timeIntervalSinceDate:date6];
      v43 = v42;

      containsCopy = v71;
      v44 = fabs(v43);
      if (v44 <= v23 && vabdd_f64(v44, v23) >= 2.22044605e-16)
      {
        dateInterval7 = [v9 dateInterval];
        startDate5 = [dateInterval7 startDate];
        date7 = [startDate5 date];
        dateInterval8 = [v10 dateInterval];
        endDate3 = [dateInterval8 endDate];
        date8 = [endDate3 date];
        if ([date7 compare:date8] != 1)
        {
          dateInterval9 = [v10 dateInterval];
          startDate6 = [dateInterval9 startDate];
          date9 = [startDate6 date];
          [v9 dateInterval];
          v52 = v69 = date7;
          [v52 endDate];
          v53 = v68 = startDate5;
          [v53 date];
          v54 = v67 = dateInterval7;
          v70 = [date9 compare:v54];

          containsCopy = v71;
          if (v70 != 1)
          {
            v57 = objc_autoreleasePoolPush();
            v58 = selfCopy;
            v59 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
            {
              v61 = HMFGetLogIdentifier();
              *buf = 138543874;
              v81 = v61;
              v82 = 2112;
              v83 = v9;
              v84 = 2112;
              v85 = v10;
              _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_DEBUG, "%{public}@Found matching context location in seen contexts: %@ == %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v57);
            v56 = v9;
            containsCopy = v71;
            goto LABEL_32;
          }

          goto LABEL_18;
        }
      }

LABEL_17:

LABEL_18:
      if (v75 == ++v8)
      {
        v55 = [obj countByEnumeratingWithState:&v76 objects:v86 count:16];
        v75 = v55;
        if (v55)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v56 = 0;
LABEL_32:

  v62 = *MEMORY[0x277D85DE8];

  return v56;
}

- (void)_auditSeenPredictedContextLocations
{
  v44 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  dataSource2 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  currentDate = [dataSource2 currentDate];

  v6 = MEMORY[0x277CBEB18];
  seenPredictedContextLocations = [(HMDUserComingHomeCoreRoutineTracker *)self seenPredictedContextLocations];
  v31 = [v6 arrayWithCapacity:{objc_msgSend(seenPredictedContextLocations, "count")}];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  selfCopy = self;
  seenPredictedContextLocations2 = [(HMDUserComingHomeCoreRoutineTracker *)self seenPredictedContextLocations];
  v9 = [seenPredictedContextLocations2 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v9)
  {
    v11 = v9;
    v29 = 0;
    v33 = *v36;
    *&v10 = 138543618;
    v28 = v10;
    obj = seenPredictedContextLocations2;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v36 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v35 + 1) + 8 * i);
        v14 = MEMORY[0x277CBEAA8];
        dateInterval = [v13 dateInterval];
        endDate = [dateInterval endDate];
        [endDate confidenceInterval];
        v18 = v17;
        dateInterval2 = [v13 dateInterval];
        endDate2 = [dateInterval2 endDate];
        date = [endDate2 date];
        v22 = [v14 dateWithTimeInterval:date sinceDate:v18];

        if ([v22 compare:currentDate] == 1)
        {
          [v31 addObject:v13];
        }

        else
        {
          v23 = objc_autoreleasePoolPush();
          v24 = selfCopy;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = HMFGetLogIdentifier();
            *buf = v28;
            v40 = v26;
            v41 = 2112;
            v42 = v13;
            _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Expiring context from seen predicted contexts: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v23);
          v29 = 1;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v11);

    if (v29)
    {
      [(HMDUserComingHomeCoreRoutineTracker *)selfCopy setSeenPredictedContextLocations:v31];
    }
  }

  else
  {
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)processPredictedContextResults
{
  dataSource = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  queue = [dataSource queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HMDUserComingHomeCoreRoutineTracker_processPredictedContextResults__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)canStayInComingHome:(id)home
{
  homeCopy = home;
  dataSource = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  if ([(HMDUserComingHomeCoreRoutineTracker *)self state]== 2 && [(HMDUserComingHomeCoreRoutineTracker *)self locationContextHasValidStateEnd:homeCopy])
  {
    [homeCopy probability];
    v8 = v7;
    [(HMDUserComingHomeCoreRoutineTracker *)self probabilityToStop:homeCopy];
    v10 = v8 > v9 || vabdd_f64(v8, v9) < 2.22044605e-16;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)canStartComingHome:(id)home
{
  homeCopy = home;
  dataSource = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  if ([(HMDUserComingHomeCoreRoutineTracker *)self state]== 2 || ![(HMDUserComingHomeCoreRoutineTracker *)self locationContextHasValidStateEnd:homeCopy])
  {
    v10 = 0;
  }

  else
  {
    [homeCopy probability];
    v8 = v7;
    [(HMDUserComingHomeCoreRoutineTracker *)self probabilityToStart:homeCopy];
    v10 = v8 > v9 || vabdd_f64(v8, v9) < 2.22044605e-16;
  }

  return v10;
}

- (BOOL)locationContextHasValidStateEnd:(id)end
{
  endCopy = end;
  dataSource = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  lastHomeEntryDate = [(HMDUserComingHomeCoreRoutineTracker *)self lastHomeEntryDate];
  if (!lastHomeEntryDate || (v8 = lastHomeEntryDate, [(HMDUserComingHomeCoreRoutineTracker *)self lastHomeExitDate], dataSource2 = objc_claimAutoreleasedReturnValue(), dataSource2, v8, dataSource2))
  {
    v10 = [(HMDUserComingHomeCoreRoutineTracker *)self _calculateEstimatedEntryDateForPredictedContextLocation:endCopy];
    if (v10)
    {
      dataSource2 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
      currentDate = [dataSource2 currentDate];
      [v10 timeIntervalSinceDate:currentDate];
      v13 = v12;

      LOBYTE(dataSource2) = 0;
      if (v13 < 0.0 || fabs(v13) < 2.22044605e-16)
      {
        goto LABEL_13;
      }

      lastHomeEntryDate2 = [(HMDUserComingHomeCoreRoutineTracker *)self lastHomeEntryDate];
      if (lastHomeEntryDate2)
      {

LABEL_8:
        LOBYTE(dataSource2) = 1;
LABEL_13:

        goto LABEL_14;
      }

      lastHomeExitDate = [(HMDUserComingHomeCoreRoutineTracker *)self lastHomeExitDate];

      if (!lastHomeExitDate)
      {
        goto LABEL_8;
      }

      mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
      v17 = [mEMORY[0x277D0F8D0] preferenceForKey:@"minimumDurationToStateEndWhenLeavingHome"];
      numberValue = [v17 numberValue];
      [numberValue doubleValue];
      v20 = v19;

      lastHomeExitDate2 = [(HMDUserComingHomeCoreRoutineTracker *)self lastHomeExitDate];
      [v10 timeIntervalSinceDate:lastHomeExitDate2];
      v23 = v22;

      if (v23 >= v20 || vabdd_f64(v23, v20) < 2.22044605e-16)
      {
        goto LABEL_8;
      }
    }

    LOBYTE(dataSource2) = 0;
    goto LABEL_13;
  }

LABEL_14:

  return dataSource2;
}

- (void)_stopComingHomeTracking:(unint64_t)tracking
{
  v19 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  locationManager = [(HMDUserComingHomeCoreRoutineTracker *)self locationManager];
  LODWORD(queue) = [locationManager isNPLOIMonitoringAllowed];

  state = [(HMDUserComingHomeCoreRoutineTracker *)self state];
  if (queue)
  {
    if (state != 3)
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = HMFGetLogIdentifier();
        v17 = 138543362;
        v18 = v12;
        _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Setting Coming Home to Not Coming Home", &v17, 0xCu);
      }

      v13 = 3;
LABEL_9:

      objc_autoreleasePoolPop(v9);
      [(HMDUserComingHomeCoreRoutineTracker *)self setState:v13];
      [(HMDUserComingHomeCoreRoutineTracker *)self setStateEnd:0];
      [(HMDUserComingHomeCoreRoutineTracker *)self setOriginalStateEnd:0];
      [(HMDUserComingHomeCoreRoutineTracker *)self setChangedTimestamp:0];
      [(HMDUserComingHomeCoreRoutineTracker *)self setLastReason:tracking];
      [(HMDUserComingHomeCoreRoutineTracker *)self _stateUpdated];
    }
  }

  else if (state != 1)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    v13 = 1;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v15;
      v13 = 1;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Monitoring is not allowed, setting Coming Home to Unknown", &v17, 0xCu);
    }

    goto LABEL_9;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_startOrUpdateComingHomeTrackingWithStateEnd:(id)end
{
  v41 = *MEMORY[0x277D85DE8];
  endCopy = end;
  dataSource = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  if ([(HMDUserComingHomeCoreRoutineTracker *)self state]!= 2)
  {
    [(HMDUserComingHomeCoreRoutineTracker *)self setState:2];
    [(HMDUserComingHomeCoreRoutineTracker *)self setStateEnd:endCopy];
    [(HMDUserComingHomeCoreRoutineTracker *)self setOriginalStateEnd:endCopy];
    [(HMDUserComingHomeCoreRoutineTracker *)self setLastReason:11];
    dataSource2 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
    currentDate = [dataSource2 currentDate];
    [(HMDUserComingHomeCoreRoutineTracker *)self setChangedTimestamp:currentDate];

LABEL_12:
    v24 = objc_autoreleasePoolPush();
    selfCopy = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      stateEnd = [(HMDUserComingHomeCoreRoutineTracker *)selfCopy stateEnd];
      v35 = 138543618;
      v36 = v27;
      v37 = 2112;
      v38 = stateEnd;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Setting Coming Home with ETA: %@", &v35, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    [(HMDUserComingHomeCoreRoutineTracker *)selfCopy _stateUpdated];
    goto LABEL_15;
  }

  stateEnd2 = [(HMDUserComingHomeCoreRoutineTracker *)self stateEnd];
  [stateEnd2 timeIntervalSinceDate:endCopy];
  v9 = v8;

  stateEnd3 = [(HMDUserComingHomeCoreRoutineTracker *)self stateEnd];
  if (!stateEnd3)
  {
LABEL_7:
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      stateEnd4 = [(HMDUserComingHomeCoreRoutineTracker *)selfCopy2 stateEnd];
      v35 = 138543874;
      v36 = v18;
      v37 = 2112;
      v38 = endCopy;
      v39 = 2112;
      v40 = stateEnd4;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Updating Coming Home with ETA: %@, Previous ETA: %@", &v35, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    [(HMDUserComingHomeCoreRoutineTracker *)selfCopy2 setStateEnd:endCopy];
    originalStateEnd = [(HMDUserComingHomeCoreRoutineTracker *)selfCopy2 originalStateEnd];

    if (!originalStateEnd)
    {
      [(HMDUserComingHomeCoreRoutineTracker *)selfCopy2 setOriginalStateEnd:endCopy];
    }

    [(HMDUserComingHomeCoreRoutineTracker *)selfCopy2 setLastReason:11];
    v21 = [[HMDUserActivityStateType6DetectorTransitionLogEvent alloc] initWithTrackerType:3 reason:5];
    dataSource3 = [(HMDUserComingHomeCoreRoutineTracker *)selfCopy2 dataSource];
    logEventSubmitter = [dataSource3 logEventSubmitter];
    [logEventSubmitter submitLogEvent:v21];

    goto LABEL_12;
  }

  v11 = fabs(v9);
  if (v11 > 600.0)
  {

    goto LABEL_7;
  }

  v14 = fabs(v11 + -600.0);

  if (v14 < 2.22044605e-16)
  {
    goto LABEL_7;
  }

  v30 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = HMFGetLogIdentifier();
    stateEnd5 = [(HMDUserComingHomeCoreRoutineTracker *)selfCopy3 stateEnd];
    v35 = 138543874;
    v36 = v33;
    v37 = 2112;
    v38 = endCopy;
    v39 = 2112;
    v40 = stateEnd5;
    _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Not updating Coming Home with new ETA: %@, Previous ETA: %@", &v35, 0x20u);
  }

  objc_autoreleasePoolPop(v30);
LABEL_15:

  v29 = *MEMORY[0x277D85DE8];
}

- (id)_calculateEstimatedEntryDateForPredictedContextLocation:(id)location
{
  v29 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  dataSource = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  if (locationCopy)
  {
    dateInterval = [locationCopy dateInterval];
    startDate = [dateInterval startDate];
    date = [startDate date];

    if (date)
    {
      [(HMDUserComingHomeCoreRoutineTracker *)self standardProbabilityToStart];
      v11 = v10;
      dateInterval2 = [locationCopy dateInterval];
      startDate2 = [dateInterval2 startDate];
      [startDate2 confidenceInterval];
      v15 = v14;

      [locationCopy probability];
      if (v16 > v11 || vabdd_f64(v16, v11) < 2.22044605e-16)
      {
        [locationCopy probability];
        v15 = v15 * ((v11 + v11) / v17 + -1.0);
      }

      v18 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:date sinceDate:v15];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        v25 = 138543618;
        v26 = v22;
        v27 = 2112;
        v28 = locationCopy;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Cannot calculate ETA because the current prediction does not have a startDate: %@", &v25, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v18;
}

- (void)handleDidLeaveNotification:(id)notification
{
  dataSource = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  queue = [dataSource queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HMDUserComingHomeCoreRoutineTracker_handleDidLeaveNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __66__HMDUserComingHomeCoreRoutineTracker_handleDidLeaveNotification___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@User has left the home", &v10, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) setLastHomeEntryDate:0];
  v6 = [*(a1 + 32) dataSource];
  v7 = [v6 currentDate];
  [*(a1 + 32) setLastHomeExitDate:v7];

  result = [*(a1 + 32) _reprocessLastPredictedContextResults];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleDidArriveNotification:(id)notification
{
  dataSource = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  queue = [dataSource queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HMDUserComingHomeCoreRoutineTracker_handleDidArriveNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

void __67__HMDUserComingHomeCoreRoutineTracker_handleDidArriveNotification___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v23 = 138543362;
    v24 = v5;
    _os_log_impl(&dword_229538000, v4, OS_LOG_TYPE_INFO, "%{public}@User has arrived home", &v23, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v6 = [*(a1 + 32) dataSource];
  v7 = [v6 currentDate];
  [*(a1 + 32) setLastHomeEntryDate:v7];

  [*(a1 + 32) setLastHomeExitDate:0];
  if ([*(a1 + 32) state] == 2)
  {
    v8 = [*(a1 + 32) changedTimestamp];
    if (v8)
    {
      v9 = [*(a1 + 32) lastHomeEntryDate];
      v10 = [*(a1 + 32) changedTimestamp];
      [v9 timeIntervalSinceDate:v10];
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v14 = [*(a1 + 32) originalStateEnd];
    if (v14)
    {
      v15 = [*(a1 + 32) lastHomeEntryDate];
      v16 = [*(a1 + 32) originalStateEnd];
      [v15 timeIntervalSinceDate:v16];
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v13 = [[HMDUserActivityStateType6DetectorTransitionLogEvent alloc] initWithTrackerType:3 reason:1 timeInEvent:v12 secondaryOffset:v18];
  }

  else
  {
    v13 = [[HMDUserActivityStateType6DetectorTransitionLogEvent alloc] initWithTrackerType:1 reason:1];
  }

  v19 = v13;
  v20 = [*(a1 + 32) dataSource];
  v21 = [v20 logEventSubmitter];
  [v21 submitLogEvent:v19];

  [*(a1 + 32) _stopComingHomeTracking:11];
  v22 = *MEMORY[0x277D85DE8];
}

- (void)handleLocationChangedNotification:(id)notification
{
  dataSource = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  queue = [dataSource queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__HMDUserComingHomeCoreRoutineTracker_handleLocationChangedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(queue, block);
}

void __73__HMDUserComingHomeCoreRoutineTracker_handleLocationChangedNotification___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCurrentHomeLocationOfInterest:0];
  [*(a1 + 32) setCurrentHomeLocationOfInterestTimestamp:0];
  v7 = [*(a1 + 32) locationManager];
  v2 = *(a1 + 32);
  v3 = [v2 dataSource];
  v4 = [v3 home];
  v5 = [v4 homeLocationHandler];
  v6 = [v5 location];
  [v7 registerForNPLOIMonitoring:v2 forLocation:v6];
}

- (void)handleLocationAuthorizationChange:(int64_t)change
{
  v23 = *MEMORY[0x277D85DE8];
  dataSource = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  if ([(HMDUserComingHomeCoreRoutineTracker *)self locationAuthorization]!= change)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = HMLocationAuthorizationAsString();
      v19 = 138543618;
      v20 = v10;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Location authorization updated to %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDUserComingHomeCoreRoutineTracker *)selfCopy setLocationAuthorization:change];
    if (change == 1)
    {
      locationManager = [(HMDUserComingHomeCoreRoutineTracker *)selfCopy locationManager];
      dataSource2 = [(HMDUserComingHomeCoreRoutineTracker *)selfCopy dataSource];
      home = [dataSource2 home];
      homeLocationHandler = [home homeLocationHandler];
      location = [homeLocationHandler location];
      [locationManager registerForNPLOIMonitoring:selfCopy forLocation:location];
    }

    else if (change == 2)
    {
      locationManager2 = [(HMDUserComingHomeCoreRoutineTracker *)selfCopy locationManager];
      [locationManager2 unregisterForNPLOIMonitoring:selfCopy];

      [(HMDUserComingHomeCoreRoutineTracker *)selfCopy _stopComingHomeTracking:4];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_registerForNotifications
{
  dataSource = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  dataSource2 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  home = [dataSource2 home];

  if (home)
  {
    dataSource3 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
    notificationCenter = [dataSource3 notificationCenter];
    homeLocationHandler = [home homeLocationHandler];
    [notificationCenter addObserver:self selector:sel_handleLocationChangedNotification_ name:@"HMDLocationForHomeChanged" object:homeLocationHandler];

    dataSource4 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
    notificationCenter2 = [dataSource4 notificationCenter];
    [notificationCenter2 addObserver:self selector:sel_handleDidArriveNotification_ name:@"HMDHomeDidArriveHomeNotificationKey" object:home];

    dataSource5 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
    notificationCenter3 = [dataSource5 notificationCenter];
    [notificationCenter3 addObserver:self selector:sel_handleDidLeaveNotification_ name:@"HMDHomeDidLeaveHomeNotificationKey" object:home];
  }
}

- (void)_stateUpdated
{
  dataSource = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  delegate = [(HMDUserComingHomeCoreRoutineTracker *)self delegate];
  if (delegate)
  {
    v6 = delegate;
    [delegate stateUpdated];
    delegate = v6;
  }
}

- (HMDUserActivityType6StateEvent)currentStateEvent
{
  os_unfair_lock_lock_with_options();
  v3 = [[HMDUserActivityType6StateEvent alloc] initWithState:self->_state stateEnd:self->_stateEnd changedTimestamp:self->_changedTimestamp withReason:self->_lastReason];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (double)probabilityToStop:(id)stop
{
  v3 = isNavigation(stop);
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v5 = mEMORY[0x277D0F8D0];
  if (v3)
  {
    v6 = @"comingHomeProbabilityToStopNavigation";
  }

  else
  {
    v6 = @"comingHomeProbabilityToStop";
  }

  v7 = [mEMORY[0x277D0F8D0] preferenceForKey:v6];
  numberValue = [v7 numberValue];
  [numberValue doubleValue];
  v10 = v9;

  return v10;
}

- (double)probabilityToStart:(id)start
{
  if (isNavigation(start))
  {
    mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
    v5 = [mEMORY[0x277D0F8D0] preferenceForKey:@"comingHomeHomeProbabilityToStartNavigation"];
    numberValue = [v5 numberValue];
    [numberValue doubleValue];
    v8 = v7;

    return v8;
  }

  else
  {

    [(HMDUserComingHomeCoreRoutineTracker *)self standardProbabilityToStart];
  }

  return result;
}

- (double)standardProbabilityToStart
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"comingHomeHomeProbabilityToStart"];
  numberValue = [v3 numberValue];
  [numberValue doubleValue];
  v6 = v5;

  return v6;
}

- (void)setLastReason:(unint64_t)reason
{
  os_unfair_lock_lock_with_options();
  self->_lastReason = reason;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)lastReason
{
  os_unfair_lock_lock_with_options();
  lastReason = self->_lastReason;
  os_unfair_lock_unlock(&self->_lock);
  return lastReason;
}

- (void)setChangedTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  os_unfair_lock_lock_with_options();
  changedTimestamp = self->_changedTimestamp;
  self->_changedTimestamp = timestampCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)changedTimestamp
{
  os_unfair_lock_lock_with_options();
  v3 = self->_changedTimestamp;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setStateEnd:(id)end
{
  endCopy = end;
  os_unfair_lock_lock_with_options();
  stateEnd = self->_stateEnd;
  self->_stateEnd = endCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)stateEnd
{
  os_unfair_lock_lock_with_options();
  v3 = self->_stateEnd;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setState:(unint64_t)state
{
  os_unfair_lock_lock_with_options();
  self->_state = state;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)state
{
  os_unfair_lock_lock_with_options();
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  return state;
}

- (void)configureWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  dataSource = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  queue = [dataSource queue];
  dispatch_assert_queue_V2(queue);

  objc_storeWeak(&self->_delegate, delegateCopy);
  [(HMDUserComingHomeCoreRoutineTracker *)self _registerForNotifications];
  locationManager = [(HMDUserComingHomeCoreRoutineTracker *)self locationManager];
  -[HMDUserComingHomeCoreRoutineTracker handleLocationAuthorizationChange:](self, "handleLocationAuthorizationChange:", [locationManager locationAuthorized]);
}

- (HMDUserComingHomeCoreRoutineTracker)initWithDataSource:(id)source locationManager:(id)manager
{
  sourceCopy = source;
  managerCopy = manager;
  v16.receiver = self;
  v16.super_class = HMDUserComingHomeCoreRoutineTracker;
  v9 = [(HMDUserComingHomeCoreRoutineTracker *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_dataSource, source);
    objc_storeStrong(&v10->_locationManager, manager);
    v10->_locationAuthorization = 0;
    array = [MEMORY[0x277CBEB18] array];
    predictedContextResultsToProcess = v10->_predictedContextResultsToProcess;
    v10->_predictedContextResultsToProcess = array;

    v10->_state = 1;
    v10->_lastReason = 0;
    array2 = [MEMORY[0x277CBEB18] array];
    seenPredictedContextLocations = v10->_seenPredictedContextLocations;
    v10->_seenPredictedContextLocations = array2;
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t42_159698 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t42_159698, &__block_literal_global_159699);
  }

  v3 = logCategory__hmf_once_v43_159700;

  return v3;
}

void __50__HMDUserComingHomeCoreRoutineTracker_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v43_159700;
  logCategory__hmf_once_v43_159700 = v1;
}

+ (void)initialize
{
  [MEMORY[0x277D0F8D0] setDefaultValue:&unk_283E75EF8 forPreferenceKey:@"comingHomeHomeProbabilityToStart"];
  [MEMORY[0x277D0F8D0] setDefaultValue:&unk_283E75F08 forPreferenceKey:@"comingHomeHomeProbabilityToStartNavigation"];
  [MEMORY[0x277D0F8D0] setDefaultValue:&unk_283E75F18 forPreferenceKey:@"comingHomeProbabilityToStop"];
  [MEMORY[0x277D0F8D0] setDefaultValue:&unk_283E75F28 forPreferenceKey:@"comingHomeProbabilityToStopNavigation"];
  [MEMORY[0x277D0F8D0] setDefaultValue:&unk_283E75F38 forPreferenceKey:@"maximumIntervalToHoldLOILookup"];
  [MEMORY[0x277D0F8D0] setDefaultValue:&unk_283E75F48 forPreferenceKey:@"predictedLocationContextMatchStartEndDateDelta"];
  v2 = MEMORY[0x277D0F8D0];

  [v2 setDefaultValue:&unk_283E75F58 forPreferenceKey:@"minimumIntervalForValidSeenPrediction"];
}

@end