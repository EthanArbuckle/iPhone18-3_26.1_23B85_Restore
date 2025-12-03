@interface HDSkiingWorkoutDistanceCollector
- (HDSkiingWorkoutDistanceCollector)initWithProfile:(id)profile;
- (id)generateDownhillSnowSportsDistanceSampleForDistance:(double)distance startDate:(id)date endDate:(id)endDate;
- (id)hkObjectsFromSensorData:(id)data baseSensorDatum:(id)datum startDate:(id)date endDate:(id)endDate;
- (void)beginUpdatesFromDatum:(id)datum withHandler:(id)handler;
- (void)fetchHistoricalSensorDataSinceDatum:(id)datum databaseIdentifier:(id)identifier completion:(id)completion;
- (void)stopPerformingUpdatesWithErrorEncountered:(BOOL)encountered;
@end

@implementation HDSkiingWorkoutDistanceCollector

- (HDSkiingWorkoutDistanceCollector)initWithProfile:(id)profile
{
  profileCopy = profile;
  v10.receiver = self;
  v10.super_class = HDSkiingWorkoutDistanceCollector;
  v5 = [(HDAggregateDataCollector *)&v10 initWithProfile:profileCopy];
  if (v5)
  {
    workoutManager = [profileCopy workoutManager];
    newCMSkiTracker = [workoutManager newCMSkiTracker];
    skiTracker = v5->_skiTracker;
    v5->_skiTracker = newCMSkiTracker;
  }

  return v5;
}

- (void)stopPerformingUpdatesWithErrorEncountered:(BOOL)encountered
{
  encounteredCopy = encountered;
  [(CMSkiTracker *)self->_skiTracker stopUpdates];
  if (encounteredCopy)
  {
    skiTracker = self->_skiTracker;
    self->_skiTracker = 0;
  }
}

- (void)beginUpdatesFromDatum:(id)datum withHandler:(id)handler
{
  handlerCopy = handler;
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
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(CMSkiTracker *)skiTracker startUpdatesFromRecord:0 handler:v9];
}

- (void)fetchHistoricalSensorDataSinceDatum:(id)datum databaseIdentifier:(id)identifier completion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  datumCopy = datum;
  identifierCopy = identifier;
  completionCopy = completion;
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC298];
  if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v17 = datumCopy;
    v18 = 2114;
    v19 = identifierCopy;
    _os_log_impl(&dword_228986000, v11, OS_LOG_TYPE_INFO, "Fetching historical skiing distance data since datum: %{public}@ for database: %{public}@", buf, 0x16u);
  }

  skiTracker = self->_skiTracker;
  if (skiTracker)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __102__HDSkiingWorkoutDistanceCollector_fetchHistoricalSensorDataSinceDatum_databaseIdentifier_completion___block_invoke;
    v14[3] = &unk_27861BB88;
    v15 = completionCopy;
    [(CMSkiTracker *)skiTracker querySkiUpdatesFromRecord:datumCopy handler:v14];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, MEMORY[0x277CBEBF8], 0);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)hkObjectsFromSensorData:(id)data baseSensorDatum:(id)datum startDate:(id)date endDate:(id)endDate
{
  v58 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  datumCopy = datum;
  dateCopy = date;
  endDateCopy = endDate;
  if ([dataCopy count])
  {
    v42 = endDateCopy;
    v43 = dateCopy;
    v44 = datumCopy;
    v46 = objc_alloc_init(MEMORY[0x277CBEB18]);
    _queue_lastReceivedSensorDatum = [(HDAggregateDataCollector *)self _queue_lastReceivedSensorDatum];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v45 = dataCopy;
    v15 = dataCopy;
    v16 = [v15 countByEnumeratingWithState:&v49 objects:v53 count:16];
    if (v16)
    {
      v17 = v16;
      selfCopy = self;
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

          recordId = [v22 recordId];
          if (recordId > [_queue_lastReceivedSensorDatum recordId])
          {
            [v22 runDistance];
            v26 = v25;
            [_queue_lastReceivedSensorDatum runDistance];
            v28 = v26 - v27;
            if (v28 > 2.22044605e-16)
            {
              v29 = v18;
              v30 = v19;
              v31 = v15;
              v32 = v20;
              startDate = [v22 startDate];
              endDate = [v22 endDate];
              v35 = [(HDSkiingWorkoutDistanceCollector *)selfCopy generateDownhillSnowSportsDistanceSampleForDistance:startDate startDate:endDate endDate:v28];

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

            _queue_lastReceivedSensorDatum = v36;
          }

          ++v21;
        }

        while (v17 != v21);
        v17 = [v15 countByEnumeratingWithState:&v49 objects:v53 count:16];
      }

      while (v17);
    }

    datumCopy = v44;
    dataCopy = v45;
    endDateCopy = v42;
    dateCopy = v43;
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
      v57 = dataCopy;
      v41 = v55;
      _os_log_error_impl(&dword_228986000, v40, OS_LOG_TYPE_ERROR, "%@: Received ski data array (%@) with no elememts", buf, 0x16u);
    }

    v46 = MEMORY[0x277CBEBF8];
  }

  v38 = *MEMORY[0x277D85DE8];

  return v46;
}

- (id)generateDownhillSnowSportsDistanceSampleForDistance:(double)distance startDate:(id)date endDate:(id)endDate
{
  v23 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  if ([endDateCopy hk_isBeforeDate:dateCopy])
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_FAULT))
    {
      v19 = 138543618;
      v20 = dateCopy;
      v21 = 2114;
      v22 = endDateCopy;
      _os_log_fault_impl(&dword_228986000, v9, OS_LOG_TYPE_FAULT, "Out-of-order CMSkiData samples: %{public}@, %{public}@", &v19, 0x16u);
    }

    v10 = 0;
  }

  else
  {
    v11 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB18]];
    v12 = MEMORY[0x277CCD7E8];
    meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
    v14 = [v12 quantityWithUnit:meterUnit doubleValue:distance];

    v15 = MEMORY[0x277CCD800];
    localDevice = [MEMORY[0x277CCD2E8] localDevice];
    v10 = [v15 quantitySampleWithType:v11 quantity:v14 startDate:dateCopy endDate:endDateCopy device:localDevice metadata:0];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v10;
}

@end