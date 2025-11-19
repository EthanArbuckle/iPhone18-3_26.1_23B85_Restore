@interface HDPedometerDataCollector
+ (BOOL)isPedometerDataCollectionSupported;
- (HDPedometerDataCollector)initWithProfile:(id)a3;
- (double)queue_differenceFromDatum:(id)a3 toDatum:(id)a4 type:(id)a5;
- (id)collectedTypes;
- (id)queue_newDataSource;
- (void)dealloc;
- (void)userCharacteristicsManager:(id)a3 didUpdateUserProfile:(id)a4;
@end

@implementation HDPedometerDataCollector

+ (BOOL)isPedometerDataCollectionSupported
{
  if ([MEMORY[0x277CC1D18] isStepCountingAvailable] & 1) != 0 || (objc_msgSend(MEMORY[0x277CC1D18], "isFloorCountingAvailable"))
  {
    return 1;
  }

  v3 = MEMORY[0x277CC1D18];

  return [v3 isDistanceAvailable];
}

- (HDPedometerDataCollector)initWithProfile:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![objc_opt_class() isPedometerDataCollectionSupported])
  {
LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [v5 BOOLForKey:@"HDDataCollectionDisablePedometer"];

  if (v6)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
    {
      v8 = MEMORY[0x277CBEBD0];
      v9 = v7;
      v10 = [v8 standardUserDefaults];
      v11 = [v10 valueForKey:@"HDDataCollectionDisablePedometer"];
      *buf = 138543618;
      v23 = @"HDDataCollectionDisablePedometer";
      v24 = 2114;
      v25 = v11;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "Calorimetry data collection disabled because defaults key '%{public}@' is %{public}@", buf, 0x16u);
    }

    goto LABEL_8;
  }

  v12 = [MEMORY[0x277CCDD30] sharedBehavior];
  v13 = [v12 features];
  v14 = [v13 cmPedometerPush];

  if (v14)
  {
    _HKInitializeLogging();
    v15 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_228986000, v15, OS_LOG_TYPE_DEFAULT, "CMPedometer data collection is disabled because CMHealthKitPushModel is enabled", buf, 2u);
    }

    goto LABEL_8;
  }

  v21.receiver = self;
  v21.super_class = HDPedometerDataCollector;
  v19 = [(HDCoreMotionDataCollector *)&v21 initWithProfile:v4];
  if (v19)
  {
    v20 = [v4 userCharacteristicsManager];
    [v20 addProfileObserver:v19];
  }

  self = v19;
  v16 = self;
LABEL_9:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)dealloc
{
  v3 = [(HDCoreMotionDataCollector *)self profile];
  v4 = [v3 userCharacteristicsManager];
  [v4 removeProfileObserver:self];

  v5.receiver = self;
  v5.super_class = HDPedometerDataCollector;
  [(HDCoreMotionDataCollector *)&v5 dealloc];
}

- (id)collectedTypes
{
  v11[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC70]];
  v11[0] = v3;
  v4 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC10]];
  v11[1] = v4;
  v5 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB70]];
  v11[2] = v5;
  v6 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB40]];
  v11[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
  v8 = [v2 setWithArray:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)queue_newDataSource
{
  v9 = *MEMORY[0x277D85DE8];
  if (self && self->_userCondition)
  {
    v3 = objc_alloc_init(MEMORY[0x277CC1D18]);
  }

  else
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = self;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Not creating data source: user condition is not yet set.", &v7, 0xCu);
    }

    v3 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (double)queue_differenceFromDatum:(id)a3 toDatum:(id)a4 type:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 hd_epochDatestamp];
  v12 = [v8 hd_epochDatestamp];
  v13 = [v11 isEqualToDate:v12];

  v14 = [v8 hd_epochDatestamp];
  v15 = [v8 hd_datestamp];
  if ([v14 isEqualToDate:v15])
  {
    v16 = 1;
  }

  else
  {
    v17 = [v9 hd_epochDatestamp];
    v18 = [v9 hd_datestamp];
    v16 = [v17 isEqualToDate:v18];
  }

  v19 = [v10 identifier];
  v20 = [v19 isEqualToString:*MEMORY[0x277CCCB40]];

  if (v20)
  {
    if (self && !-[NSNumber integerValue](self->_userCondition, "integerValue") || (v21 = 0.0, [v9 hd_hasWorkout]))
    {
      v22 = [v9 distance];
      [v22 doubleValue];
      v21 = v23;
      if ((v13 | v16))
      {
        v24 = [v8 distance];
LABEL_16:
        v31 = v24;
        [v24 doubleValue];
        v21 = v21 - v32;

LABEL_17:
        if (v21 < 0.0)
        {
          v21 = 0.0;
        }

        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v25 = [v10 identifier];
    v26 = [v25 isEqualToString:*MEMORY[0x277CCCB70]];

    if (v26)
    {
      v22 = [v9 floorsAscended];
      [v22 doubleValue];
      v21 = v27;
      if ((v13 | v16))
      {
        v24 = [v8 floorsAscended];
        goto LABEL_16;
      }

LABEL_20:

      goto LABEL_21;
    }

    v28 = [v10 identifier];
    v29 = [v28 isEqualToString:*MEMORY[0x277CCCC10]];

    if (v29)
    {
      v22 = [v9 numberOfPushes];
      [v22 doubleValue];
      v21 = v30;
      if ((v13 | v16))
      {
        v24 = [v8 numberOfPushes];
        goto LABEL_16;
      }

      goto LABEL_20;
    }

    v35 = [v10 identifier];
    v36 = [v35 isEqualToString:*MEMORY[0x277CCCC70]];

    if (v36)
    {
      if (self && !-[NSNumber integerValue](self->_userCondition, "integerValue") || (v21 = 0.0, [v9 hd_hasWorkout]))
      {
        v37 = [v9 numberOfSteps];
        [v37 doubleValue];
        v21 = v38;
        if ((v13 | v16))
        {
          v39 = [v8 numberOfSteps];
          [v39 doubleValue];
          v21 = v21 - v40;
        }

        if (v21 > 10000.0)
        {
          _HKInitializeLogging();
          v41 = *MEMORY[0x277CCC298];
          if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
          {
            v43 = 134218498;
            v44 = *&v21;
            v45 = 2112;
            v46 = v8;
            v47 = 2112;
            v48 = v9;
            _os_log_impl(&dword_228986000, v41, OS_LOG_TYPE_DEFAULT, "Unexpectedly large step count (%lf) between %@ and %@", &v43, 0x20u);
          }
        }

        goto LABEL_17;
      }
    }

    else
    {
      _HKInitializeLogging();
      v42 = *MEMORY[0x277CCC298];
      v21 = 0.0;
      if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_FAULT))
      {
        v43 = 138412546;
        v44 = self;
        v45 = 2112;
        v46 = v10;
        _os_log_fault_impl(&dword_228986000, v42, OS_LOG_TYPE_FAULT, "%@: Unexpected type '%@' during difference calculation.", &v43, 0x16u);
      }
    }
  }

LABEL_21:

  v33 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)userCharacteristicsManager:(id)a3 didUpdateUserProfile:(id)a4
{
  v5 = a4;
  v6 = [(HDCoreMotionDataCollector *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__HDPedometerDataCollector_userCharacteristicsManager_didUpdateUserProfile___block_invoke;
  v8[3] = &unk_278613920;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

uint64_t __76__HDPedometerDataCollector_userCharacteristicsManager_didUpdateUserProfile___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x277CC1BE0]];
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;

  if (*(a1 + 40))
  {
    v5 = *(a1 + 32);
    if (!*(v5 + 72))
    {
      *(v5 + 72) = &unk_283CB3FC0;
    }
  }

  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC298];
  if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_228986000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Updated user characteristics", &v10, 0xCu);
  }

  result = [*(a1 + 32) queue_recomputeCurrentState];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

@end