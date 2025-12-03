@interface HDPedometerDataCollector
+ (BOOL)isPedometerDataCollectionSupported;
- (HDPedometerDataCollector)initWithProfile:(id)profile;
- (double)queue_differenceFromDatum:(id)datum toDatum:(id)toDatum type:(id)type;
- (id)collectedTypes;
- (id)queue_newDataSource;
- (void)dealloc;
- (void)userCharacteristicsManager:(id)manager didUpdateUserProfile:(id)profile;
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

- (HDPedometerDataCollector)initWithProfile:(id)profile
{
  v26 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  if (![objc_opt_class() isPedometerDataCollectionSupported])
  {
LABEL_8:
    selfCopy = 0;
    goto LABEL_9;
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v6 = [standardUserDefaults BOOLForKey:@"HDDataCollectionDisablePedometer"];

  if (v6)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
    {
      v8 = MEMORY[0x277CBEBD0];
      v9 = v7;
      standardUserDefaults2 = [v8 standardUserDefaults];
      v11 = [standardUserDefaults2 valueForKey:@"HDDataCollectionDisablePedometer"];
      *buf = 138543618;
      v23 = @"HDDataCollectionDisablePedometer";
      v24 = 2114;
      v25 = v11;
      _os_log_impl(&dword_228986000, v9, OS_LOG_TYPE_DEFAULT, "Calorimetry data collection disabled because defaults key '%{public}@' is %{public}@", buf, 0x16u);
    }

    goto LABEL_8;
  }

  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  cmPedometerPush = [features cmPedometerPush];

  if (cmPedometerPush)
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
  v19 = [(HDCoreMotionDataCollector *)&v21 initWithProfile:profileCopy];
  if (v19)
  {
    userCharacteristicsManager = [profileCopy userCharacteristicsManager];
    [userCharacteristicsManager addProfileObserver:v19];
  }

  self = v19;
  selfCopy = self;
LABEL_9:

  v17 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)dealloc
{
  profile = [(HDCoreMotionDataCollector *)self profile];
  userCharacteristicsManager = [profile userCharacteristicsManager];
  [userCharacteristicsManager removeProfileObserver:self];

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
      selfCopy = self;
      _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Not creating data source: user condition is not yet set.", &v7, 0xCu);
    }

    v3 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (double)queue_differenceFromDatum:(id)datum toDatum:(id)toDatum type:(id)type
{
  v49 = *MEMORY[0x277D85DE8];
  datumCopy = datum;
  toDatumCopy = toDatum;
  typeCopy = type;
  hd_epochDatestamp = [toDatumCopy hd_epochDatestamp];
  hd_epochDatestamp2 = [datumCopy hd_epochDatestamp];
  v13 = [hd_epochDatestamp isEqualToDate:hd_epochDatestamp2];

  hd_epochDatestamp3 = [datumCopy hd_epochDatestamp];
  hd_datestamp = [datumCopy hd_datestamp];
  if ([hd_epochDatestamp3 isEqualToDate:hd_datestamp])
  {
    v16 = 1;
  }

  else
  {
    hd_epochDatestamp4 = [toDatumCopy hd_epochDatestamp];
    hd_datestamp2 = [toDatumCopy hd_datestamp];
    v16 = [hd_epochDatestamp4 isEqualToDate:hd_datestamp2];
  }

  identifier = [typeCopy identifier];
  v20 = [identifier isEqualToString:*MEMORY[0x277CCCB40]];

  if (v20)
  {
    if (self && !-[NSNumber integerValue](self->_userCondition, "integerValue") || (v21 = 0.0, [toDatumCopy hd_hasWorkout]))
    {
      distance = [toDatumCopy distance];
      [distance doubleValue];
      v21 = v23;
      if ((v13 | v16))
      {
        distance2 = [datumCopy distance];
LABEL_16:
        v31 = distance2;
        [distance2 doubleValue];
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
    identifier2 = [typeCopy identifier];
    v26 = [identifier2 isEqualToString:*MEMORY[0x277CCCB70]];

    if (v26)
    {
      distance = [toDatumCopy floorsAscended];
      [distance doubleValue];
      v21 = v27;
      if ((v13 | v16))
      {
        distance2 = [datumCopy floorsAscended];
        goto LABEL_16;
      }

LABEL_20:

      goto LABEL_21;
    }

    identifier3 = [typeCopy identifier];
    v29 = [identifier3 isEqualToString:*MEMORY[0x277CCCC10]];

    if (v29)
    {
      distance = [toDatumCopy numberOfPushes];
      [distance doubleValue];
      v21 = v30;
      if ((v13 | v16))
      {
        distance2 = [datumCopy numberOfPushes];
        goto LABEL_16;
      }

      goto LABEL_20;
    }

    identifier4 = [typeCopy identifier];
    v36 = [identifier4 isEqualToString:*MEMORY[0x277CCCC70]];

    if (v36)
    {
      if (self && !-[NSNumber integerValue](self->_userCondition, "integerValue") || (v21 = 0.0, [toDatumCopy hd_hasWorkout]))
      {
        numberOfSteps = [toDatumCopy numberOfSteps];
        [numberOfSteps doubleValue];
        v21 = v38;
        if ((v13 | v16))
        {
          numberOfSteps2 = [datumCopy numberOfSteps];
          [numberOfSteps2 doubleValue];
          v21 = v21 - v40;
        }

        if (v21 > 10000.0)
        {
          _HKInitializeLogging();
          v41 = *MEMORY[0x277CCC298];
          if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
          {
            v43 = 134218498;
            selfCopy = *&v21;
            v45 = 2112;
            v46 = datumCopy;
            v47 = 2112;
            v48 = toDatumCopy;
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
        selfCopy = self;
        v45 = 2112;
        v46 = typeCopy;
        _os_log_fault_impl(&dword_228986000, v42, OS_LOG_TYPE_FAULT, "%@: Unexpected type '%@' during difference calculation.", &v43, 0x16u);
      }
    }
  }

LABEL_21:

  v33 = *MEMORY[0x277D85DE8];
  return v21;
}

- (void)userCharacteristicsManager:(id)manager didUpdateUserProfile:(id)profile
{
  profileCopy = profile;
  queue = [(HDCoreMotionDataCollector *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __76__HDPedometerDataCollector_userCharacteristicsManager_didUpdateUserProfile___block_invoke;
  v8[3] = &unk_278613920;
  v8[4] = self;
  v9 = profileCopy;
  v7 = profileCopy;
  dispatch_async(queue, v8);
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