@interface HDSkiingWorkoutDistanceCollector
- (HDSkiingWorkoutDistanceCollector)initWithProfile:(id)a3;
- (id)generateDownhillSnowSportsDistanceSampleForDistance:(double)a3 startDate:(id)a4 endDate:(id)a5;
- (id)hkObjectsFromSensorData:(id)a3 baseSensorDatum:(id)a4 startDate:(id)a5 endDate:(id)a6;
- (void)beginUpdatesFromDatum:(id)a3 withHandler:(id)a4;
- (void)fetchHistoricalSensorDataSinceDatum:(id)a3 databaseIdentifier:(id)a4 completion:(id)a5;
- (void)stopPerformingUpdatesWithErrorEncountered:(BOOL)a3;
@end

@implementation HDSkiingWorkoutDistanceCollector

- (HDSkiingWorkoutDistanceCollector)initWithProfile:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HDSkiingWorkoutDistanceCollector;
  v5 = [(HDAggregateDataCollector *)&v10 initWithProfile:v4];
  if (v5)
  {
    v6 = [v4 workoutManager];
    v7 = [v6 newCMSkiTracker];
    skiTracker = v5->_skiTracker;
    v5->_skiTracker = v7;
  }

  return v5;
}

- (void)stopPerformingUpdatesWithErrorEncountered:(BOOL)a3
{
  v3 = a3;
  [(CMSkiTracker *)self->_skiTracker stopUpdates];
  if (v3)
  {
    skiTracker = self->_skiTracker;
    self->_skiTracker = 0;
  }
}

- (void)beginUpdatesFromDatum:(id)a3 withHandler:(id)a4
{
  v5 = a4;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC298];
  if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "Registering for skiing distance updates", buf, 2u);
  }

  skiTracker = self->_skiTracker;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__HDSkiingWorkoutDistanceCollector_beginUpdatesFromDatum_withHandler___block_invoke;
  v9[3] = &unk_27861BB88;
  v10 = v5;
  v8 = v5;
  [(CMSkiTracker *)skiTracker startUpdatesFromRecord:0 handler:v9];
}

- (void)fetchHistoricalSensorDataSinceDatum:(id)a3 databaseIdentifier:(id)a4 completion:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC298];
  if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_INFO, "Fetching historical skiing distance data since datum: %{public}@ for database: %{public}@", buf, 0x16u);
  }

  skiTracker = self->_skiTracker;
  if (skiTracker)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __102__HDSkiingWorkoutDistanceCollector_fetchHistoricalSensorDataSinceDatum_databaseIdentifier_completion___block_invoke;
    v14[3] = &unk_27861BB88;
    v15 = v10;
    [(CMSkiTracker *)skiTracker querySkiUpdatesFromRecord:v8 handler:v14];
  }

  else
  {
    (*(v10 + 2))(v10, MEMORY[0x277CBEBF8], 0);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)hkObjectsFromSensorData:(id)a3 baseSensorDatum:(id)a4 startDate:(id)a5 endDate:(id)a6
{
  v58 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v10 count])
  {
    v42 = v13;
    v43 = v12;
    v44 = v11;
    v46 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14 = [(HDAggregateDataCollector *)self _queue_lastReceivedSensorDatum];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v45 = v10;
    v15 = v10;
    v16 = [v15 countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v16)
    {
      v17 = v16;
      v47 = self;
      v18 = *v50;
      v19 = MEMORY[0x277CCC330];
      v20 = &dword_228986000;
      do
      {
        v21 = 0;
        v48 = v17;
        do
        {
          if (*v50 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v22 = *(*(&v49 + 1) + 8 * v21);
          _HKInitializeLogging();
          v23 = *v19;
          if (os_log_type_enabled(*v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v55 = v22;
            _os_log_impl(v20, v23, OS_LOG_TYPE_DEFAULT, "Processing ski distance data: %@", buf, 0xCu);
          }

          v24 = [v22 recordId];
          if (v24 > [v14 recordId])
          {
            [v22 runDistance];
            v26 = v25;
            [v14 runDistance];
            v28 = v26 - v27;
            if (v28 > 2.22044605e-16)
            {
              v29 = v18;
              v30 = v19;
              v31 = v15;
              v32 = v20;
              v33 = [v22 startDate];
              v34 = [v22 endDate];
              v35 = [(HDSkiingWorkoutDistanceCollector *)v47 generateDownhillSnowSportsDistanceSampleForDistance:v33 startDate:v34 endDate:v28];

              if (v35)
              {
                [v46 addObject:v35];
              }

              v20 = v32;
              v15 = v31;
              v19 = v30;
              v18 = v29;
              v17 = v48;
            }

            v36 = v22;

            v14 = v36;
          }

          ++v21;
        }

        while (v17 != v21);
        v17 = [v15 countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v17);
    }

    v11 = v44;
    v10 = v45;
    v13 = v42;
    v12 = v43;
  }

  else
  {
    _HKInitializeLogging();
    v37 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
    {
      v40 = v37;
      *buf = 138412546;
      v55 = objc_opt_class();
      v56 = 2112;
      v57 = v10;
      v41 = v55;
      _os_log_error_impl(&dword_228986000, v40, OS_LOG_TYPE_ERROR, "%@: Received ski data array (%@) with no elememts", buf, 0x16u);
    }

    v46 = MEMORY[0x277CBEBF8];
  }

  v38 = *MEMORY[0x277D85DE8];

  return v46;
}

- (id)generateDownhillSnowSportsDistanceSampleForDistance:(double)a3 startDate:(id)a4 endDate:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  if ([v8 hk_isBeforeDate:v7])
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_FAULT))
    {
      v19 = 138543618;
      v20 = v7;
      v21 = 2114;
      v22 = v8;
      _os_log_fault_impl(&dword_228986000, v9, OS_LOG_TYPE_FAULT, "Out-of-order CMSkiData samples: %{public}@, %{public}@", &v19, 0x16u);
    }

    v10 = 0;
  }

  else
  {
    v11 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB18]];
    v12 = MEMORY[0x277CCD7E8];
    v13 = [MEMORY[0x277CCDAB0] meterUnit];
    v14 = [v12 quantityWithUnit:v13 doubleValue:a3];

    v15 = MEMORY[0x277CCD800];
    v16 = [MEMORY[0x277CCD2E8] localDevice];
    v10 = [v15 quantitySampleWithType:v11 quantity:v14 startDate:v7 endDate:v8 device:v16 metadata:0];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v10;
}

@end