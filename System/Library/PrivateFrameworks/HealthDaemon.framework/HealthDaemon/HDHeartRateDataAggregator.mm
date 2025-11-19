@interface HDHeartRateDataAggregator
- (HDHeartRateDataAggregator)initWithDataCollectionManager:(id)a3;
- (id)configurationForCollector:(id)a3;
- (uint64_t)_shouldRequestActiveCollectionForConfiguration:(uint64_t)a1;
- (void)dataCollector:(id)a3 didCollectSensorData:(id)a4 device:(id)a5 options:(unint64_t)a6;
- (void)dealloc;
- (void)setConfiguration:(id)a3;
@end

@implementation HDHeartRateDataAggregator

- (HDHeartRateDataAggregator)initWithDataCollectionManager:(id)a3
{
  v11.receiver = self;
  v11.super_class = HDHeartRateDataAggregator;
  v3 = [(HDDataAggregator *)&v11 initWithDataCollectionManager:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 addObserver:v3 selector:sel_workoutManagerStateChanged_ name:@"HDWorkoutManagerStateDidChange" object:0];

    v5 = [MEMORY[0x277CCDD30] sharedBehavior];
    v6 = [v5 features];
    v7 = [v6 HRCoordinator];

    if ((v7 & 1) == 0)
    {
      v8 = objc_alloc_init(HDHeartRateDataCollectionForwarder);
      dataForwarder = v3->_dataForwarder;
      v3->_dataForwarder = v8;
    }
  }

  return v3;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"HDWorkoutManagerStateDidChange" object:0];

  v4.receiver = self;
  v4.super_class = HDHeartRateDataAggregator;
  [(HDHeartRateDataAggregator *)&v4 dealloc];
}

- (id)configurationForCollector:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HDDataAggregator *)self allCollectors];
  v6 = [(HDDataAggregator *)self configuration];
  if (([(HDHeartRateDataAggregator *)self _shouldRequestActiveCollectionForConfiguration:v6]& 1) == 0)
  {
    v11 = [HDDataCollectorConfiguration configurationWithType:1 aggregatorConfiguration:v6];
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC298];
    if (!os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v7 = [MEMORY[0x277CCDD30] sharedBehavior];
  v8 = [v7 features];
  v9 = [v8 HRCoordinator];

  if (v9)
  {
    v10 = 2;
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = v5;
    v14 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v26;
      v10 = 2;
      v24 = v5;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v25 + 1) + 8 * i);
          v19 = [v18 collector];

          if (v19 == v4)
          {
            goto LABEL_18;
          }

          v20 = [v18 state];
          v21 = [v20 collectionType];

          if (v21 == 2)
          {
            v10 = 1;
LABEL_18:
            v5 = v24;
            goto LABEL_19;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v25 objects:v29 count:16];
        v5 = v24;
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v10 = 2;
    }

LABEL_19:
  }

  v11 = [HDDataCollectorConfiguration configurationWithType:v10 aggregatorConfiguration:v6];
  _HKInitializeLogging();
  v12 = *MEMORY[0x277CCC298];
  if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
  {
LABEL_21:
    *buf = 138543874;
    v31 = self;
    v32 = 2114;
    v33 = v4;
    v34 = 2114;
    v35 = v11;
    _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Configuration for collector %{public}@: %{public}@", buf, 0x20u);
  }

LABEL_22:

  v22 = *MEMORY[0x277D85DE8];

  return v11;
}

- (uint64_t)_shouldRequestActiveCollectionForConfiguration:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 dataCollectionManager];
    v5 = [v4 profile];
    v6 = [v5 workoutManager];
    v7 = [v6 isInHeartRateRecovery];

    if (v7)
    {
LABEL_3:
      a1 = 1;
      goto LABEL_15;
    }

    v8 = [MEMORY[0x277CCDD30] sharedBehavior];
    v9 = [v8 isRealityDevice];

    if (v9)
    {
      if ([v3 hasBackgroundObserver] & 1) != 0 || (objc_msgSend(v3, "hasForegroundObserver"))
      {
        a1 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      v10 = [MEMORY[0x277CCDD30] sharedBehavior];
      v11 = [v10 isAppleWatch];

      if (v11)
      {
        if ([v3 hasActiveWorkout])
        {
          goto LABEL_3;
        }

        v12 = [v3 hasForegroundObserver];
LABEL_14:
        a1 = v12;
        goto LABEL_15;
      }
    }

    if ([v3 hasForegroundObserver] & 1) != 0 || (objc_msgSend(v3, "hasActiveWorkout"))
    {
      goto LABEL_3;
    }

    v12 = [v3 hasBackgroundObserver];
    goto LABEL_14;
  }

LABEL_15:

  return a1;
}

- (void)dataCollector:(id)a3 didCollectSensorData:(id)a4 device:(id)a5 options:(unint64_t)a6
{
  v6 = a6;
  v94[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v89.receiver = self;
  v89.super_class = HDHeartRateDataAggregator;
  v65 = a5;
  [HDDataAggregator dataCollector:sel_dataCollector_didCollectSensorData_device_options_ didCollectSensorData:v10 device:v11 options:?];
  if ((v6 & 1) == 0)
  {
    v12 = [v10 sourceForDataAggregator:self];
    v13 = v12;
    if (v12)
    {
      v55 = v12;
      v57 = v10;
      v64 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
      v14 = [v64 canonicalUnit];
      v63 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v56 = v11;
      v15 = v11;
      v16 = [v15 countByEnumeratingWithState:&v85 objects:v93 count:16];
      if (!v16)
      {
        LOBYTE(v18) = 0;
        goto LABEL_39;
      }

      v17 = v16;
      v18 = 0;
      v19 = *v86;
      v67 = *MEMORY[0x277CCE030];
      v58 = *MEMORY[0x277CCE028];
      v59 = v14;
      v60 = *v86;
      v61 = v15;
      v62 = self;
      while (1)
      {
        v20 = 0;
        v66 = v17;
        do
        {
          if (*v86 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v85 + 1) + 8 * v20);
          if (![(HDDataAggregator *)self doesDatumPredateDatabaseObliteration:v21])
          {
            v23 = [v21 quantity];
            if ([v23 isCompatibleWithUnit:v14])
            {
              [v23 doubleValueForUnit:v14];
              if (v24 >= 0.0)
              {
                v75 = v18;
                v30 = [v21 metadata];
                v31 = [v30 valueForKey:v67];

                v74 = v31;
                v73 = [v31 integerValue] == 10;
                v68 = MEMORY[0x277CCD800];
                v72 = [v21 quantity];
                v71 = [v21 dateInterval];
                v70 = [v71 startDate];
                v69 = [v21 dateInterval];
                v32 = [v69 endDate];
                if (self)
                {
                  v33 = MEMORY[0x277CBEB38];
                  v34 = [v21 metadata];
                  v35 = [v33 dictionaryWithDictionary:v34];

                  [v35 removeObjectForKey:v58];
                  v36 = [v35 valueForKey:v67];
                  v37 = v36;
                  if (v36)
                  {
                    v38 = [v36 integerValue] != 9;
                  }

                  else
                  {
                    v38 = 1;
                  }

                  v39 = [(HDDataAggregator *)self dataCollectionManager];
                  v40 = [v39 profile];
                  v41 = [v40 workoutManager];

                  v42 = [v41 currentWorkoutConfiguration];

                  if (v42 && v38)
                  {
                    v94[0] = v67;
                    *buf = &unk_283CB4278;
                    v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v94 count:1];
                    [v35 addEntriesFromDictionary:v43];
                  }

                  v14 = v59;
                }

                else
                {
                  v35 = 0;
                }

                v44 = [v68 _quantitySamplesEnforcingDurationWithType:v64 quantity:v72 startDate:v70 endDate:v32 device:v65 metadata:v35];

                v45 = [v21 datumIdentifier];
                v15 = v61;
                self = v62;
                if (v45)
                {
                  v46 = v45;
                  v47 = [v44 count];

                  if (v47)
                  {
                    v48 = [v44 objectAtIndexedSubscript:0];
                    v49 = [v21 datumIdentifier];
                    [v48 _setUUID:v49];
                  }
                }

                v18 = v73 | v75;
                [v63 addObjectsFromArray:v44];

                v19 = v60;
                v17 = v66;
              }

              else
              {
                v25 = v24;
                _HKInitializeLogging();
                v26 = *MEMORY[0x277CCC298];
                if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  *&buf[4] = v23;
                  v91 = 2048;
                  v92 = v25;
                  v27 = v26;
                  v28 = "Rejecting heart rate quantity %@ because it's value (%f) is less than 0.0";
                  goto LABEL_17;
                }
              }
            }

            else
            {
              _HKInitializeLogging();
              v29 = *MEMORY[0x277CCC298];
              if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                *&buf[4] = v23;
                v91 = 2114;
                v92 = *&v14;
                v27 = v29;
                v28 = "Rejecting heart rate quantity %@ because it is not compatible with canonical unit %{public}@";
LABEL_17:
                _os_log_error_impl(&dword_228986000, v27, OS_LOG_TYPE_ERROR, v28, buf, 0x16u);
              }
            }

            goto LABEL_31;
          }

          _HKInitializeLogging();
          v22 = *MEMORY[0x277CCC298];
          if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            *&buf[4] = self;
            _os_log_debug_impl(&dword_228986000, v22, OS_LOG_TYPE_DEBUG, "%{public}@: Rejecting sensor datum from pre-obliteration", buf, 0xCu);
          }

LABEL_31:
          ++v20;
        }

        while (v17 != v20);
        v50 = [v15 countByEnumeratingWithState:&v85 objects:v93 count:16];
        v17 = v50;
        if (!v50)
        {
LABEL_39:

          v13 = v55;
          [(HDDataCollectionForwarder *)self->_dataForwarder insertSamples:v63 device:v65 source:v55];
          v52 = [(HDDataAggregator *)self dataCollectionManager];
          v78[0] = MEMORY[0x277D85DD0];
          v78[1] = 3221225472;
          v78[2] = __79__HDHeartRateDataAggregator_dataCollector_didCollectSensorData_device_options___block_invoke;
          v78[3] = &unk_27862FC38;
          v78[4] = self;
          v79 = v63;
          v80 = v15;
          v10 = v57;
          v81 = v57;
          v82 = v55;
          v83 = v65;
          v84 = v18 & 1;
          v76[0] = MEMORY[0x277D85DD0];
          v76[1] = 3221225472;
          v76[2] = __79__HDHeartRateDataAggregator_dataCollector_didCollectSensorData_device_options___block_invoke_2;
          v76[3] = &unk_2786130B0;
          v77 = v79;
          v53 = v79;
          [v52 performSaveWithMaximumLatency:v78 block:v76 completion:1.0];

          v11 = v56;
          goto LABEL_40;
        }
      }
    }

    _HKInitializeLogging();
    v51 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v10;
      _os_log_error_impl(&dword_228986000, v51, OS_LOG_TYPE_ERROR, "Collector %{public}@ failed to provide a source", buf, 0xCu);
    }

LABEL_40:
  }

  v54 = *MEMORY[0x277D85DE8];
}

void __79__HDHeartRateDataAggregator_dataCollector_didCollectSensorData_device_options___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138412546;
      v10 = v8;
      v11 = 2114;
      v12 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "Failed to persist heart rate samples '%@': %{public}@", &v9, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setConfiguration:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC298];
  if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v16 = self;
    v17 = 2114;
    v18 = v4;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Requesting configuration update to %{public}@", buf, 0x16u);
  }

  if ([(HDHeartRateDataAggregator *)self _shouldRequestActiveCollectionForConfiguration:v4])
  {
    v6 = [MEMORY[0x277CCDD30] sharedBehavior];
    v7 = [v6 features];
    if ([v7 HRCoordinator])
    {
      v8 = [MEMORY[0x277CCDD30] sharedBehavior];
      v9 = [v8 isRealityDevice];

      if (!v9)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v10 = MEMORY[0x277CBEB98];
    v11 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
    v12 = [v10 setWithObject:v11];
    [HDActiveDataCollectionObserverServer launchObservingProcessesForTypes:v12];
  }

LABEL_9:
  v14.receiver = self;
  v14.super_class = HDHeartRateDataAggregator;
  [(HDDataAggregator *)&v14 setConfiguration:v4];

  v13 = *MEMORY[0x277D85DE8];
}

@end