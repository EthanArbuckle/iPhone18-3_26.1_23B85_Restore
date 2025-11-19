@interface HMDUserComingHomeCoreRoutineTracker
+ (id)logCategory;
+ (void)initialize;
- (BOOL)_shouldProcessPredictedContextLocation:(id)a3;
- (BOOL)_validateRangeForProcessingSeenPredictedContextLocations:(id)a3;
- (BOOL)canStartComingHome:(id)a3;
- (BOOL)canStayInComingHome:(id)a3;
- (BOOL)locationContextHasValidStateEnd:(id)a3;
- (HMDUserActivityType6ListenerDelegate)delegate;
- (HMDUserActivityType6StateEvent)currentStateEvent;
- (HMDUserComingHomeCoreRoutineTracker)initWithDataSource:(id)a3 locationManager:(id)a4;
- (NSDate)changedTimestamp;
- (NSDate)stateEnd;
- (double)probabilityToStart:(id)a3;
- (double)probabilityToStop:(id)a3;
- (double)standardProbabilityToStart;
- (id)_calculateEstimatedEntryDateForPredictedContextLocation:(id)a3;
- (id)_preprocessPredictedContextLocations:(id)a3;
- (id)_seenPredictedContextLocationsContains:(id)a3 forInsert:(BOOL)a4;
- (unint64_t)lastReason;
- (unint64_t)state;
- (void)_auditSeenPredictedContextLocations;
- (void)_lookUpCurrentHomeLocationOfInterest;
- (void)_processPredictedContextResult:(id)a3;
- (void)_processPredictedContextResults;
- (void)_registerForNotifications;
- (void)_reprocessLastPredictedContextResults;
- (void)_seenPredictedContextLocationsAddContext:(id)a3;
- (void)_startOrUpdateComingHomeTrackingWithStateEnd:(id)a3;
- (void)_stateUpdated;
- (void)_stopComingHomeTracking:(unint64_t)a3;
- (void)configureWithDelegate:(id)a3;
- (void)handleDidArriveNotification:(id)a3;
- (void)handleDidLeaveNotification:(id)a3;
- (void)handleLocationAuthorizationChange:(int64_t)a3;
- (void)handleLocationChangedNotification:(id)a3;
- (void)processPredictedContextResults;
- (void)setChangedTimestamp:(id)a3;
- (void)setLastReason:(unint64_t)a3;
- (void)setState:(unint64_t)a3;
- (void)setStateEnd:(id)a3;
- (void)updatePredictedContextResult:(id)a3 error:(id)a4;
@end

@implementation HMDUserComingHomeCoreRoutineTracker

- (HMDUserActivityType6ListenerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updatePredictedContextResult:(id)a3 error:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v18 = v11;
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Detected NPLOI update predicted context %@ with error %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  if (!v7)
  {
    v12 = [(HMDUserComingHomeCoreRoutineTracker *)v9 dataSource];
    v13 = [v12 queue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __74__HMDUserComingHomeCoreRoutineTracker_updatePredictedContextResult_error___block_invoke;
    v15[3] = &unk_27868A750;
    v15[4] = v9;
    v16 = v6;
    dispatch_async(v13, v15);
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
  v3 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  v4 = [v3 queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  v6 = [v5 home];
  v7 = [v6 homeLocationHandler];
  v8 = [v7 location];

  if (v8)
  {
    v9 = [(HMDUserComingHomeCoreRoutineTracker *)self predictedContextResultsToProcess];
    v10 = [v9 count];

    if (!v10 || [(HMDUserComingHomeCoreRoutineTracker *)self isLookUpLocationOfInterestInProgress])
    {
      goto LABEL_14;
    }

    v11 = [(HMDUserComingHomeCoreRoutineTracker *)self currentHomeLocationOfInterest];

    if (!v11)
    {
      goto LABEL_8;
    }

    v12 = [(HMDUserComingHomeCoreRoutineTracker *)self currentHomeLocationOfInterestTimestamp];

    if (!v12)
    {
      goto LABEL_8;
    }

    v13 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v14 = [v13 preferenceForKey:@"maximumIntervalToHoldLOILookup"];
    v15 = [v14 numberValue];
    [v15 doubleValue];
    v17 = v16;

    v18 = [(HMDUserComingHomeCoreRoutineTracker *)self currentHomeLocationOfInterestTimestamp];
    v19 = [v18 dateByAddingTimeInterval:v17];

    v20 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
    v21 = [v20 currentDate];

    if ([v19 compare:v21] == 1)
    {

LABEL_8:
      [(HMDUserComingHomeCoreRoutineTracker *)self setIsLookUpLocationOfInterestInProgress:1];
      v22 = objc_autoreleasePoolPush();
      v23 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543618;
        v42 = v25;
        v43 = 2112;
        v44 = v8;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_INFO, "%{public}@Looking up the current location of interest for %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
      objc_initWeak(buf, v23);
      v26 = [(HMDUserComingHomeCoreRoutineTracker *)v23 locationManager];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __75__HMDUserComingHomeCoreRoutineTracker__lookUpCurrentHomeLocationOfInterest__block_invoke;
      v38[3] = &unk_27867BF60;
      objc_copyWeak(&v40, buf);
      v39 = v8;
      [v26 fetchLocationOfInterestAtLocation:v39 withCompletion:v38];

      objc_destroyWeak(&v40);
      objc_destroyWeak(buf);
      goto LABEL_14;
    }

    v33 = objc_autoreleasePoolPush();
    v34 = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = HMFGetLogIdentifier();
      v37 = [(HMDUserComingHomeCoreRoutineTracker *)v34 currentHomeLocationOfInterest];
      *buf = 138543618;
      v42 = v36;
      v43 = 2112;
      v44 = v37;
      _os_log_impl(&dword_229538000, v35, OS_LOG_TYPE_INFO, "%{public}@Using current location of interest %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
    [(HMDUserComingHomeCoreRoutineTracker *)v34 _processPredictedContextResults];
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v42 = v30;
      _os_log_impl(&dword_229538000, v29, OS_LOG_TYPE_ERROR, "%{public}@Cannot lookup the current location of interest because cannot determine the home location", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    [(HMDUserComingHomeCoreRoutineTracker *)v28 setCurrentHomeLocationOfInterest:0];
    v31 = [(HMDUserComingHomeCoreRoutineTracker *)v28 predictedContextResultsToProcess];
    [v31 removeAllObjects];

    [(HMDUserComingHomeCoreRoutineTracker *)v28 _stopComingHomeTracking:11];
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
  v3 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  v4 = [v3 queue];
  dispatch_assert_queue_V2(v4);

  if ([(HMDUserComingHomeCoreRoutineTracker *)self isLookUpLocationOfInterestInProgress])
  {
LABEL_11:
    v13 = *MEMORY[0x277D85DE8];
    return;
  }

  v5 = [(HMDUserComingHomeCoreRoutineTracker *)self currentHomeLocationOfInterest];

  if (v5)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [(HMDUserComingHomeCoreRoutineTracker *)self predictedContextResultsToProcess];
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v16 + 1) + 8 * i) result];
          [(HMDUserComingHomeCoreRoutineTracker *)self _processPredictedContextResult:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v12 = [(HMDUserComingHomeCoreRoutineTracker *)self predictedContextResultsToProcess];
    [v12 removeAllObjects];

    goto LABEL_11;
  }

  v14 = [(HMDUserComingHomeCoreRoutineTracker *)self predictedContextResultsToProcess];
  [v14 removeAllObjects];

  v15 = *MEMORY[0x277D85DE8];

  [(HMDUserComingHomeCoreRoutineTracker *)self _stopComingHomeTracking:11];
}

- (void)_reprocessLastPredictedContextResults
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  v4 = [v3 queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(HMDUserComingHomeCoreRoutineTracker *)self lastPredictedContextResult];

  if (v5)
  {
    v6 = [(HMDUserComingHomeCoreRoutineTracker *)self predictedContextResultsToProcess];
    v7 = [v6 count];

    if (!v7)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [(HMDUserComingHomeCoreRoutineTracker *)v9 lastPredictedContextResult];
        v20 = 138543618;
        v21 = v11;
        v22 = 2112;
        v23 = v12;
        _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Reprocessing predicted context result to process: %@", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      v13 = [HMDRTPredictedContextResultTuple alloc];
      v14 = [(HMDUserComingHomeCoreRoutineTracker *)v9 lastPredictedContextResult];
      v15 = [(HMDRTPredictedContextResultTuple *)v13 initWithPredictedContextResult:v14];

      v16 = [(HMDUserComingHomeCoreRoutineTracker *)v9 predictedContextResultsToProcess];
      [v16 addObject:v15];

      v17 = [(HMDUserComingHomeCoreRoutineTracker *)v9 predictedContextResultsToProcess];
      v18 = [v17 count];

      if (v18 == 1)
      {
        [(HMDUserComingHomeCoreRoutineTracker *)v9 _lookUpCurrentHomeLocationOfInterest];
      }
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_processPredictedContextResult:(id)a3
{
  v70 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  v6 = [v5 queue];
  dispatch_assert_queue_V2(v6);

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v65 = v10;
    v66 = 2112;
    v67 = v4;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_INFO, "%{public}@Processing predicted context result: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [(HMDUserComingHomeCoreRoutineTracker *)v8 setLastPredictedContextResult:v4];
  if (v4)
  {
    v58 = v4;
    v11 = [v4 nextStepPredictedContextsWithFilterMask:1];
    v12 = [(HMDUserComingHomeCoreRoutineTracker *)v8 _preprocessPredictedContextLocations:v11];

    v13 = objc_autoreleasePoolPush();
    v14 = v8;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [(HMDUserComingHomeCoreRoutineTracker *)v14 dataSource];
      v18 = [v17 home];
      v19 = [v18 uuid];
      *buf = 138543874;
      v65 = v16;
      v66 = 2112;
      v67 = v19;
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
      v57 = v8;
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
            v8 = v57;
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
        v8 = v57;
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

    v4 = v58;
  }

  else
  {
    v35 = objc_autoreleasePoolPush();
    v36 = v8;
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

  v39 = [(HMDUserComingHomeCoreRoutineTracker *)v8 _calculateEstimatedEntryDateForPredictedContextLocation:v30];
  v40 = v39;
  if (v30 && v39 && ([(HMDUserComingHomeCoreRoutineTracker *)v8 canStartComingHome:v30]|| [(HMDUserComingHomeCoreRoutineTracker *)v8 canStayInComingHome:v30]))
  {
    [(HMDUserComingHomeCoreRoutineTracker *)v8 _startOrUpdateComingHomeTrackingWithStateEnd:v40];
  }

  else
  {
    if ([(HMDUserComingHomeCoreRoutineTracker *)v8 state]== 2)
    {
      v41 = [(HMDUserComingHomeCoreRoutineTracker *)v8 dataSource];
      v42 = [v41 currentDate];

      v43 = [(HMDUserComingHomeCoreRoutineTracker *)v8 changedTimestamp];
      if (v43)
      {
        v44 = [(HMDUserComingHomeCoreRoutineTracker *)v8 changedTimestamp];
        [v42 timeIntervalSinceDate:v44];
        v46 = v45;
      }

      else
      {
        v46 = 0;
      }

      v47 = [(HMDUserComingHomeCoreRoutineTracker *)v8 stateEnd];
      if (v47)
      {
        [(HMDUserComingHomeCoreRoutineTracker *)v8 stateEnd];
        v48 = v8;
        v50 = v49 = v4;
        [v50 timeIntervalSinceDate:v42];
        v52 = v51;

        v4 = v49;
        v8 = v48;
      }

      else
      {
        v52 = 0;
      }

      v53 = [[HMDUserActivityStateType6DetectorTransitionLogEvent alloc] initWithTrackerType:3 reason:2 timeInEvent:v46 secondaryOffset:v52];
      v54 = [(HMDUserComingHomeCoreRoutineTracker *)v8 dataSource];
      v55 = [v54 logEventSubmitter];
      [v55 submitLogEvent:v53];
    }

    [(HMDUserComingHomeCoreRoutineTracker *)v8 _stopComingHomeTracking:11];
  }

  v56 = *MEMORY[0x277D85DE8];
}

- (id)_preprocessPredictedContextLocations:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  v6 = [v5 queue];
  dispatch_assert_queue_V2(v6);

  [(HMDUserComingHomeCoreRoutineTracker *)self _auditSeenPredictedContextLocations];
  v50 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v49 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v58 = v10;
    v59 = 2112;
    v60 = v4;
    _os_log_impl(&dword_229538000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Preprocessing predicted contexts: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v4;
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
          v23 = v8;
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

        v18 = [v17 locationOfInterest];
        v19 = [(HMDUserComingHomeCoreRoutineTracker *)v8 currentHomeLocationOfInterest];
        v20 = v19;
        if (v18)
        {
          v21 = v19 == 0;
        }

        else
        {
          v21 = 1;
        }

        if (v21)
        {

LABEL_27:
          v22 = objc_autoreleasePoolPush();
          v34 = v8;
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

        v26 = [v18 identifier];
        v27 = [v20 identifier];
        v28 = HMFEqualObjects();

        if ((v28 & 1) == 0)
        {
          goto LABEL_27;
        }

        if (isNavigation(v17))
        {
          v29 = objc_autoreleasePoolPush();
          v30 = v8;
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

        if (![(HMDUserComingHomeCoreRoutineTracker *)v8 _validateRangeForProcessingSeenPredictedContextLocations:v17])
        {
          v38 = [(HMDUserComingHomeCoreRoutineTracker *)v8 _shouldProcessPredictedContextLocation:v17];
          v39 = objc_autoreleasePoolPush();
          v40 = v8;
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

        [(HMDUserComingHomeCoreRoutineTracker *)v8 _seenPredictedContextLocationsAddContext:v17];
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

- (BOOL)_shouldProcessPredictedContextLocation:(id)a3
{
  v4 = a3;
  v5 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  v6 = [v5 queue];
  dispatch_assert_queue_V2(v6);

  v7 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v8 = [v7 preferenceForKey:@"detectorMaximumIntervalForStateEnd"];
  v9 = [v8 numberValue];
  [v9 doubleValue];
  v11 = v10;

  v12 = [(HMDUserComingHomeCoreRoutineTracker *)self _calculateEstimatedEntryDateForPredictedContextLocation:v4];
  if (v12)
  {
    v13 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v12 sinceDate:-v11];
    v14 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
    v15 = [v14 currentDate];
    v16 = [v15 compare:v13];

    if (v16 == -1)
    {
      v31 = 0;
    }

    else
    {
      v17 = [(HMDUserComingHomeCoreRoutineTracker *)self _seenPredictedContextLocationsContains:v4 forInsert:0];
      if (v17)
      {
        v18 = [v4 dateInterval];
        v19 = [v18 startDate];
        v20 = [v19 date];
        v21 = [v17 dateInterval];
        v22 = [v21 startDate];
        v23 = [v22 date];
        [v20 timeIntervalSinceDate:v23];
        v25 = v24;

        v26 = [MEMORY[0x277D0F8D0] sharedPreferences];
        v27 = [v26 preferenceForKey:@"predictedLocationContextMatchStartEndDateDelta"];
        v28 = [v27 numberValue];
        [v28 doubleValue];
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

- (BOOL)_validateRangeForProcessingSeenPredictedContextLocations:(id)a3
{
  v4 = a3;
  v5 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  v6 = [v5 queue];
  dispatch_assert_queue_V2(v6);

  v7 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v8 = [v7 preferenceForKey:@"minimumIntervalForValidSeenPrediction"];
  v9 = [v8 numberValue];
  [v9 doubleValue];
  v11 = v10;

  v12 = MEMORY[0x277CBEAA8];
  v13 = [v4 dateInterval];

  v14 = [v13 startDate];
  v15 = [v14 date];
  v16 = [v12 dateWithTimeInterval:v15 sinceDate:-v11];

  v17 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  v18 = [v17 currentDate];
  LOBYTE(v13) = [v18 compare:v16] != 1;

  return v13;
}

- (void)_seenPredictedContextLocationsAddContext:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  v6 = [v5 queue];
  dispatch_assert_queue_V2(v6);

  v7 = [(HMDUserComingHomeCoreRoutineTracker *)self _seenPredictedContextLocationsContains:v4 forInsert:1];
  if (!v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Adding new context location to seen contexts: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [(HMDUserComingHomeCoreRoutineTracker *)v9 seenPredictedContextLocations];
    [v12 addObject:v4];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_seenPredictedContextLocationsContains:(id)a3 forInsert:(BOOL)a4
{
  v74 = a4;
  v87 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  v7 = [v6 queue];
  dispatch_assert_queue_V2(v7);

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = [(HMDUserComingHomeCoreRoutineTracker *)self seenPredictedContextLocations];
  v75 = [obj countByEnumeratingWithState:&v76 objects:v86 count:16];
  if (v75)
  {
    v64 = self;
    v73 = *v77;
    v71 = v5;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v77 != v73)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v76 + 1) + 8 * v8);
      v10 = v5;
      v11 = [v10 dateInterval];
      v12 = [v11 startDate];
      v13 = [v12 date];
      v14 = [v9 dateInterval];
      v15 = [v14 startDate];
      v16 = [v15 date];
      [v13 timeIntervalSinceDate:v16];
      v18 = v17;

      v19 = [MEMORY[0x277D0F8D0] sharedPreferences];
      v20 = [v19 preferenceForKey:@"predictedLocationContextMatchStartEndDateDelta"];
      v21 = [v20 numberValue];
      [v21 doubleValue];
      v23 = v22;

      v24 = fabs(v18);
      v25 = vabdd_f64(v24, v23);
      if (v74)
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

        v28 = [v9 dateInterval];
        v29 = [v28 startDate];
        v30 = [v29 date];
        v31 = [v10 dateInterval];
        v32 = [v31 startDate];
        v33 = [v32 date];
        v34 = [v30 compare:v33];

        v35 = v34 == 1;
        v5 = v71;
        if (v35)
        {
          goto LABEL_17;
        }
      }

      v36 = [v10 dateInterval];
      v37 = [v36 endDate];
      v38 = [v37 date];
      v39 = [v9 dateInterval];
      v40 = [v39 endDate];
      v41 = [v40 date];
      [v38 timeIntervalSinceDate:v41];
      v43 = v42;

      v5 = v71;
      v44 = fabs(v43);
      if (v44 <= v23 && vabdd_f64(v44, v23) >= 2.22044605e-16)
      {
        v45 = [v9 dateInterval];
        v46 = [v45 startDate];
        v47 = [v46 date];
        v48 = [v10 dateInterval];
        v49 = [v48 endDate];
        v50 = [v49 date];
        if ([v47 compare:v50] != 1)
        {
          v66 = [v10 dateInterval];
          v65 = [v66 startDate];
          v51 = [v65 date];
          [v9 dateInterval];
          v52 = v69 = v47;
          [v52 endDate];
          v53 = v68 = v46;
          [v53 date];
          v54 = v67 = v45;
          v70 = [v51 compare:v54];

          v5 = v71;
          if (v70 != 1)
          {
            v57 = objc_autoreleasePoolPush();
            v58 = v64;
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
            v5 = v71;
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
  v3 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  v4 = [v3 queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  v34 = [v5 currentDate];

  v6 = MEMORY[0x277CBEB18];
  v7 = [(HMDUserComingHomeCoreRoutineTracker *)self seenPredictedContextLocations];
  v31 = [v6 arrayWithCapacity:{objc_msgSend(v7, "count")}];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v30 = self;
  v8 = [(HMDUserComingHomeCoreRoutineTracker *)self seenPredictedContextLocations];
  v9 = [v8 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v9)
  {
    v11 = v9;
    v29 = 0;
    v33 = *v36;
    *&v10 = 138543618;
    v28 = v10;
    obj = v8;
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
        v15 = [v13 dateInterval];
        v16 = [v15 endDate];
        [v16 confidenceInterval];
        v18 = v17;
        v19 = [v13 dateInterval];
        v20 = [v19 endDate];
        v21 = [v20 date];
        v22 = [v14 dateWithTimeInterval:v21 sinceDate:v18];

        if ([v22 compare:v34] == 1)
        {
          [v31 addObject:v13];
        }

        else
        {
          v23 = objc_autoreleasePoolPush();
          v24 = v30;
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
      [(HMDUserComingHomeCoreRoutineTracker *)v30 setSeenPredictedContextLocations:v31];
    }
  }

  else
  {
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)processPredictedContextResults
{
  v3 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  v4 = [v3 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HMDUserComingHomeCoreRoutineTracker_processPredictedContextResults__block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v4, block);
}

- (BOOL)canStayInComingHome:(id)a3
{
  v4 = a3;
  v5 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  v6 = [v5 queue];
  dispatch_assert_queue_V2(v6);

  if ([(HMDUserComingHomeCoreRoutineTracker *)self state]== 2 && [(HMDUserComingHomeCoreRoutineTracker *)self locationContextHasValidStateEnd:v4])
  {
    [v4 probability];
    v8 = v7;
    [(HMDUserComingHomeCoreRoutineTracker *)self probabilityToStop:v4];
    v10 = v8 > v9 || vabdd_f64(v8, v9) < 2.22044605e-16;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)canStartComingHome:(id)a3
{
  v4 = a3;
  v5 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  v6 = [v5 queue];
  dispatch_assert_queue_V2(v6);

  if ([(HMDUserComingHomeCoreRoutineTracker *)self state]== 2 || ![(HMDUserComingHomeCoreRoutineTracker *)self locationContextHasValidStateEnd:v4])
  {
    v10 = 0;
  }

  else
  {
    [v4 probability];
    v8 = v7;
    [(HMDUserComingHomeCoreRoutineTracker *)self probabilityToStart:v4];
    v10 = v8 > v9 || vabdd_f64(v8, v9) < 2.22044605e-16;
  }

  return v10;
}

- (BOOL)locationContextHasValidStateEnd:(id)a3
{
  v4 = a3;
  v5 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  v6 = [v5 queue];
  dispatch_assert_queue_V2(v6);

  v7 = [(HMDUserComingHomeCoreRoutineTracker *)self lastHomeEntryDate];
  if (!v7 || (v8 = v7, [(HMDUserComingHomeCoreRoutineTracker *)self lastHomeExitDate], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
  {
    v10 = [(HMDUserComingHomeCoreRoutineTracker *)self _calculateEstimatedEntryDateForPredictedContextLocation:v4];
    if (v10)
    {
      v9 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
      v11 = [v9 currentDate];
      [v10 timeIntervalSinceDate:v11];
      v13 = v12;

      LOBYTE(v9) = 0;
      if (v13 < 0.0 || fabs(v13) < 2.22044605e-16)
      {
        goto LABEL_13;
      }

      v14 = [(HMDUserComingHomeCoreRoutineTracker *)self lastHomeEntryDate];
      if (v14)
      {

LABEL_8:
        LOBYTE(v9) = 1;
LABEL_13:

        goto LABEL_14;
      }

      v15 = [(HMDUserComingHomeCoreRoutineTracker *)self lastHomeExitDate];

      if (!v15)
      {
        goto LABEL_8;
      }

      v16 = [MEMORY[0x277D0F8D0] sharedPreferences];
      v17 = [v16 preferenceForKey:@"minimumDurationToStateEndWhenLeavingHome"];
      v18 = [v17 numberValue];
      [v18 doubleValue];
      v20 = v19;

      v21 = [(HMDUserComingHomeCoreRoutineTracker *)self lastHomeExitDate];
      [v10 timeIntervalSinceDate:v21];
      v23 = v22;

      if (v23 >= v20 || vabdd_f64(v23, v20) < 2.22044605e-16)
      {
        goto LABEL_8;
      }
    }

    LOBYTE(v9) = 0;
    goto LABEL_13;
  }

LABEL_14:

  return v9;
}

- (void)_stopComingHomeTracking:(unint64_t)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  v6 = [v5 queue];
  dispatch_assert_queue_V2(v6);

  v7 = [(HMDUserComingHomeCoreRoutineTracker *)self locationManager];
  LODWORD(v6) = [v7 isNPLOIMonitoringAllowed];

  v8 = [(HMDUserComingHomeCoreRoutineTracker *)self state];
  if (v6)
  {
    if (v8 != 3)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = self;
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
      [(HMDUserComingHomeCoreRoutineTracker *)self setLastReason:a3];
      [(HMDUserComingHomeCoreRoutineTracker *)self _stateUpdated];
    }
  }

  else if (v8 != 1)
  {
    v9 = objc_autoreleasePoolPush();
    v14 = self;
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

- (void)_startOrUpdateComingHomeTrackingWithStateEnd:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  v6 = [v5 queue];
  dispatch_assert_queue_V2(v6);

  if ([(HMDUserComingHomeCoreRoutineTracker *)self state]!= 2)
  {
    [(HMDUserComingHomeCoreRoutineTracker *)self setState:2];
    [(HMDUserComingHomeCoreRoutineTracker *)self setStateEnd:v4];
    [(HMDUserComingHomeCoreRoutineTracker *)self setOriginalStateEnd:v4];
    [(HMDUserComingHomeCoreRoutineTracker *)self setLastReason:11];
    v12 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
    v13 = [v12 currentDate];
    [(HMDUserComingHomeCoreRoutineTracker *)self setChangedTimestamp:v13];

LABEL_12:
    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      v28 = [(HMDUserComingHomeCoreRoutineTracker *)v25 stateEnd];
      v35 = 138543618;
      v36 = v27;
      v37 = 2112;
      v38 = v28;
      _os_log_impl(&dword_229538000, v26, OS_LOG_TYPE_INFO, "%{public}@Setting Coming Home with ETA: %@", &v35, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    [(HMDUserComingHomeCoreRoutineTracker *)v25 _stateUpdated];
    goto LABEL_15;
  }

  v7 = [(HMDUserComingHomeCoreRoutineTracker *)self stateEnd];
  [v7 timeIntervalSinceDate:v4];
  v9 = v8;

  v10 = [(HMDUserComingHomeCoreRoutineTracker *)self stateEnd];
  if (!v10)
  {
LABEL_7:
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = [(HMDUserComingHomeCoreRoutineTracker *)v16 stateEnd];
      v35 = 138543874;
      v36 = v18;
      v37 = 2112;
      v38 = v4;
      v39 = 2112;
      v40 = v19;
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_INFO, "%{public}@Updating Coming Home with ETA: %@, Previous ETA: %@", &v35, 0x20u);
    }

    objc_autoreleasePoolPop(v15);
    [(HMDUserComingHomeCoreRoutineTracker *)v16 setStateEnd:v4];
    v20 = [(HMDUserComingHomeCoreRoutineTracker *)v16 originalStateEnd];

    if (!v20)
    {
      [(HMDUserComingHomeCoreRoutineTracker *)v16 setOriginalStateEnd:v4];
    }

    [(HMDUserComingHomeCoreRoutineTracker *)v16 setLastReason:11];
    v21 = [[HMDUserActivityStateType6DetectorTransitionLogEvent alloc] initWithTrackerType:3 reason:5];
    v22 = [(HMDUserComingHomeCoreRoutineTracker *)v16 dataSource];
    v23 = [v22 logEventSubmitter];
    [v23 submitLogEvent:v21];

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
  v31 = self;
  v32 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = HMFGetLogIdentifier();
    v34 = [(HMDUserComingHomeCoreRoutineTracker *)v31 stateEnd];
    v35 = 138543874;
    v36 = v33;
    v37 = 2112;
    v38 = v4;
    v39 = 2112;
    v40 = v34;
    _os_log_impl(&dword_229538000, v32, OS_LOG_TYPE_INFO, "%{public}@Not updating Coming Home with new ETA: %@, Previous ETA: %@", &v35, 0x20u);
  }

  objc_autoreleasePoolPop(v30);
LABEL_15:

  v29 = *MEMORY[0x277D85DE8];
}

- (id)_calculateEstimatedEntryDateForPredictedContextLocation:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  v6 = [v5 queue];
  dispatch_assert_queue_V2(v6);

  if (v4)
  {
    v7 = [v4 dateInterval];
    v8 = [v7 startDate];
    v9 = [v8 date];

    if (v9)
    {
      [(HMDUserComingHomeCoreRoutineTracker *)self standardProbabilityToStart];
      v11 = v10;
      v12 = [v4 dateInterval];
      v13 = [v12 startDate];
      [v13 confidenceInterval];
      v15 = v14;

      [v4 probability];
      if (v16 > v11 || vabdd_f64(v16, v11) < 2.22044605e-16)
      {
        [v4 probability];
        v15 = v15 * ((v11 + v11) / v17 + -1.0);
      }

      v18 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:v9 sinceDate:v15];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        v25 = 138543618;
        v26 = v22;
        v27 = 2112;
        v28 = v4;
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

- (void)handleDidLeaveNotification:(id)a3
{
  v4 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  v5 = [v4 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HMDUserComingHomeCoreRoutineTracker_handleDidLeaveNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v5, block);
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

- (void)handleDidArriveNotification:(id)a3
{
  v4 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  v5 = [v4 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HMDUserComingHomeCoreRoutineTracker_handleDidArriveNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v5, block);
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

- (void)handleLocationChangedNotification:(id)a3
{
  v4 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  v5 = [v4 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__HMDUserComingHomeCoreRoutineTracker_handleLocationChangedNotification___block_invoke;
  block[3] = &unk_27868A728;
  block[4] = self;
  dispatch_async(v5, block);
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

- (void)handleLocationAuthorizationChange:(int64_t)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  v6 = [v5 queue];
  dispatch_assert_queue_V2(v6);

  if ([(HMDUserComingHomeCoreRoutineTracker *)self locationAuthorization]!= a3)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
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
    [(HMDUserComingHomeCoreRoutineTracker *)v8 setLocationAuthorization:a3];
    if (a3 == 1)
    {
      v13 = [(HMDUserComingHomeCoreRoutineTracker *)v8 locationManager];
      v14 = [(HMDUserComingHomeCoreRoutineTracker *)v8 dataSource];
      v15 = [v14 home];
      v16 = [v15 homeLocationHandler];
      v17 = [v16 location];
      [v13 registerForNPLOIMonitoring:v8 forLocation:v17];
    }

    else if (a3 == 2)
    {
      v12 = [(HMDUserComingHomeCoreRoutineTracker *)v8 locationManager];
      [v12 unregisterForNPLOIMonitoring:v8];

      [(HMDUserComingHomeCoreRoutineTracker *)v8 _stopComingHomeTracking:4];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_registerForNotifications
{
  v3 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  v4 = [v3 queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  v13 = [v5 home];

  if (v13)
  {
    v6 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
    v7 = [v6 notificationCenter];
    v8 = [v13 homeLocationHandler];
    [v7 addObserver:self selector:sel_handleLocationChangedNotification_ name:@"HMDLocationForHomeChanged" object:v8];

    v9 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
    v10 = [v9 notificationCenter];
    [v10 addObserver:self selector:sel_handleDidArriveNotification_ name:@"HMDHomeDidArriveHomeNotificationKey" object:v13];

    v11 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
    v12 = [v11 notificationCenter];
    [v12 addObserver:self selector:sel_handleDidLeaveNotification_ name:@"HMDHomeDidLeaveHomeNotificationKey" object:v13];
  }
}

- (void)_stateUpdated
{
  v3 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  v4 = [v3 queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(HMDUserComingHomeCoreRoutineTracker *)self delegate];
  if (v5)
  {
    v6 = v5;
    [v5 stateUpdated];
    v5 = v6;
  }
}

- (HMDUserActivityType6StateEvent)currentStateEvent
{
  os_unfair_lock_lock_with_options();
  v3 = [[HMDUserActivityType6StateEvent alloc] initWithState:self->_state stateEnd:self->_stateEnd changedTimestamp:self->_changedTimestamp withReason:self->_lastReason];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (double)probabilityToStop:(id)a3
{
  v3 = isNavigation(a3);
  v4 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v5 = v4;
  if (v3)
  {
    v6 = @"comingHomeProbabilityToStopNavigation";
  }

  else
  {
    v6 = @"comingHomeProbabilityToStop";
  }

  v7 = [v4 preferenceForKey:v6];
  v8 = [v7 numberValue];
  [v8 doubleValue];
  v10 = v9;

  return v10;
}

- (double)probabilityToStart:(id)a3
{
  if (isNavigation(a3))
  {
    v4 = [MEMORY[0x277D0F8D0] sharedPreferences];
    v5 = [v4 preferenceForKey:@"comingHomeHomeProbabilityToStartNavigation"];
    v6 = [v5 numberValue];
    [v6 doubleValue];
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
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"comingHomeHomeProbabilityToStart"];
  v4 = [v3 numberValue];
  [v4 doubleValue];
  v6 = v5;

  return v6;
}

- (void)setLastReason:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_lastReason = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)lastReason
{
  os_unfair_lock_lock_with_options();
  lastReason = self->_lastReason;
  os_unfair_lock_unlock(&self->_lock);
  return lastReason;
}

- (void)setChangedTimestamp:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  changedTimestamp = self->_changedTimestamp;
  self->_changedTimestamp = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)changedTimestamp
{
  os_unfair_lock_lock_with_options();
  v3 = self->_changedTimestamp;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setStateEnd:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  stateEnd = self->_stateEnd;
  self->_stateEnd = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDate)stateEnd
{
  os_unfair_lock_lock_with_options();
  v3 = self->_stateEnd;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setState:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_state = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)state
{
  os_unfair_lock_lock_with_options();
  state = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  return state;
}

- (void)configureWithDelegate:(id)a3
{
  v4 = a3;
  v5 = [(HMDUserComingHomeCoreRoutineTracker *)self dataSource];
  v6 = [v5 queue];
  dispatch_assert_queue_V2(v6);

  objc_storeWeak(&self->_delegate, v4);
  [(HMDUserComingHomeCoreRoutineTracker *)self _registerForNotifications];
  v7 = [(HMDUserComingHomeCoreRoutineTracker *)self locationManager];
  -[HMDUserComingHomeCoreRoutineTracker handleLocationAuthorizationChange:](self, "handleLocationAuthorizationChange:", [v7 locationAuthorized]);
}

- (HMDUserComingHomeCoreRoutineTracker)initWithDataSource:(id)a3 locationManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = HMDUserComingHomeCoreRoutineTracker;
  v9 = [(HMDUserComingHomeCoreRoutineTracker *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_dataSource, a3);
    objc_storeStrong(&v10->_locationManager, a4);
    v10->_locationAuthorization = 0;
    v11 = [MEMORY[0x277CBEB18] array];
    predictedContextResultsToProcess = v10->_predictedContextResultsToProcess;
    v10->_predictedContextResultsToProcess = v11;

    v10->_state = 1;
    v10->_lastReason = 0;
    v13 = [MEMORY[0x277CBEB18] array];
    seenPredictedContextLocations = v10->_seenPredictedContextLocations;
    v10->_seenPredictedContextLocations = v13;
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