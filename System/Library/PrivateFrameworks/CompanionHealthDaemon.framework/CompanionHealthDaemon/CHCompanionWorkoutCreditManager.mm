@interface CHCompanionWorkoutCreditManager
- (BOOL)_queue_generateAndSaveSamplesForIntervals:(id)intervals withExerciseMinuteTable:(id)table standHourTable:(id)hourTable standMinuteTable:(id)minuteTable moveMinuteTable:(id)moveMinuteTable error:(id)error;
- (CHCompanionWorkoutCreditManager)initWithProfile:(id)profile;
- (id)_queue_samplesForType:(id)type fromStartTime:(id)time toEndTime:(id)endTime;
- (id)_queue_userLocalProtectedDomain;
- (id)_queue_workoutAnchor;
- (id)_queue_workoutsSinceAnchor:(id *)anchor error:(id)error;
- (void)_queue_fastForwardAnchor;
- (void)_queue_performWorkoutCreditFixup;
- (void)_queue_processWorkouts;
- (void)_queue_setWorkoutAnchor:(id)anchor;
- (void)dealloc;
- (void)performWorkoutCreditFixup;
- (void)profileDidBecomeReady:(id)ready;
- (void)samplesAdded:(id)added anchor:(id)anchor;
- (void)stopObservingWorkouts;
@end

@implementation CHCompanionWorkoutCreditManager

- (CHCompanionWorkoutCreditManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v14.receiver = self;
  v14.super_class = CHCompanionWorkoutCreditManager;
  v5 = [(CHCompanionWorkoutCreditManager *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    anchor = v6->_anchor;
    v6->_anchor = 0;

    hk_gregorianCalendarWithUTCTimeZone = [MEMORY[0x277CBEA80] hk_gregorianCalendarWithUTCTimeZone];
    calendar = v6->_calendar;
    v6->_calendar = hk_gregorianCalendarWithUTCTimeZone;

    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    [WeakRetained registerProfileReadyObserver:v6 queue:0];
  }

  return v6;
}

- (void)dealloc
{
  [(CHCompanionWorkoutCreditManager *)self stopObservingWorkouts];
  v3.receiver = self;
  v3.super_class = CHCompanionWorkoutCreditManager;
  [(CHCompanionWorkoutCreditManager *)&v3 dealloc];
}

- (void)performWorkoutCreditFixup
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__CHCompanionWorkoutCreditManager_performWorkoutCreditFixup__block_invoke;
  v4[3] = &unk_278DF0168;
  objc_copyWeak(&v5, &location);
  dispatch_sync(queue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __60__CHCompanionWorkoutCreditManager_performWorkoutCreditFixup__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[3];
    WeakRetained[3] = 0;
    v3 = WeakRetained;

    [v3 _queue_performWorkoutCreditFixup];
    WeakRetained = v3;
  }
}

- (void)stopObservingWorkouts
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  dataManager = [WeakRetained dataManager];
  workoutType = [MEMORY[0x277CCD720] workoutType];
  [dataManager removeObserver:self forDataType:workoutType];
}

- (void)profileDidBecomeReady:(id)ready
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  dataManager = [WeakRetained dataManager];
  workoutType = [MEMORY[0x277CCD720] workoutType];
  [dataManager addObserver:self forDataType:workoutType];
}

- (void)samplesAdded:(id)added anchor:(id)anchor
{
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_243CCD000, v5, OS_LOG_TYPE_INFO, "[CWCM] Workout sample added", buf, 2u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__CHCompanionWorkoutCreditManager_samplesAdded_anchor___block_invoke;
  block[3] = &unk_278DF00F0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_queue_processWorkouts
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 138543874;
  v4 = @"Companion Workout Credit Manager";
  v5 = 2048;
  v6 = 0x404E000000000000;
  v7 = 2114;
  selfCopy = self;
  _os_log_error_impl(&dword_243CCD000, a2, OS_LOG_TYPE_ERROR, "Failed to get accessibility assertion for %{public}@ with %lf second timeout with error %{public}@", &v3, 0x20u);
  v2 = *MEMORY[0x277D85DE8];
}

uint64_t __57__CHCompanionWorkoutCreditManager__queue_processWorkouts__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_workoutAnchor];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = *(a1 + 32);
  if (*(v5 + 24) && (*(v5 + 40) & 1) != 0 || ([v5 _queue_fastForwardAnchor], v5 = *(a1 + 32), *(v5 + 24)))
  {
    if (*(v5 + 40) == 1)
    {
      [v5 _queue_performWorkoutCreditFixup];
    }
  }

  return 1;
}

- (void)_queue_fastForwardAnchor
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  selfCopy = self;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_243CCD000, log, OS_LOG_TYPE_ERROR, "[CWCM] Error:%{public}@ reading anchor data from domain: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (id)_queue_workoutAnchor
{
  v20 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  _queue_userLocalProtectedDomain = [(CHCompanionWorkoutCreditManager *)self _queue_userLocalProtectedDomain];
  v13 = 0;
  v5 = [_queue_userLocalProtectedDomain numberForKey:@"companionWorkoutCreditAnchorKey" error:&v13];
  v6 = v13;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC330];
  v8 = *MEMORY[0x277CCC330];
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = v7;
      v12 = NSStringFromSelector(a2);
      *buf = 138543874;
      v15 = v6;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v5;
      _os_log_error_impl(&dword_243CCD000, v11, OS_LOG_TYPE_ERROR, "[CWCM] Error: %{public}@ retrieving data from key value domain. %@: %@", buf, 0x20u);
    }

    v5 = 0;
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&dword_243CCD000, v7, OS_LOG_TYPE_INFO, "[CWCM] Anchor fetched: %@", buf, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_queue_setWorkoutAnchor:(id)anchor
{
  v17 = *MEMORY[0x277D85DE8];
  anchorCopy = anchor;
  dispatch_assert_queue_V2(self->_queue);
  _queue_userLocalProtectedDomain = [(CHCompanionWorkoutCreditManager *)self _queue_userLocalProtectedDomain];
  v10 = 0;
  [_queue_userLocalProtectedDomain setNumber:anchorCopy forKey:@"companionWorkoutCreditAnchorKey" error:&v10];
  v6 = v10;
  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC330];
  v8 = *MEMORY[0x277CCC330];
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v12 = v6;
      v13 = 2112;
      v14 = _queue_userLocalProtectedDomain;
      v15 = 2112;
      v16 = anchorCopy;
      _os_log_error_impl(&dword_243CCD000, v7, OS_LOG_TYPE_ERROR, "[CWCM] Error:%{public}@ saving data into key value domain. %@: %@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v12 = anchorCopy;
    _os_log_impl(&dword_243CCD000, v7, OS_LOG_TYPE_INFO, "[CWCM] Anchor saved: %@", buf, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_queue_userLocalProtectedDomain
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = objc_alloc(MEMORY[0x277D10718]);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v5 = [v3 initWithCategory:100 domainName:@"com.apple.healthd.workout" profile:WeakRetained];

  return v5;
}

- (void)_queue_performWorkoutCreditFixup
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = 0;
  _os_log_error_impl(&dword_243CCD000, log, OS_LOG_TYPE_ERROR, "[CWCM] Error: %{public}@ generating and saving workout related samples", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __67__CHCompanionWorkoutCreditManager__queue_performWorkoutCreditFixup__block_invoke_325(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [v14 type];
  if (v3 > 4)
  {
    if (v3 == 6)
    {
      goto LABEL_8;
    }

    if (v3 != 5)
    {
      goto LABEL_9;
    }

LABEL_7:
    v4 = objc_alloc(MEMORY[0x277CCA970]);
    v5 = *(*(*(a1 + 40) + 8) + 40);
    v6 = [v14 dateInterval];
    v7 = [v6 startDate];
    v8 = [v4 initWithStartDate:v5 endDate:v7];

    v9 = [[CHCompanionWorkoutCreditManagerInterval alloc] initWithDateInterval:v8 activityMoveMode:*(a1 + 56)];
    [*(a1 + 32) addObject:v9];
    *(*(*(a1 + 48) + 8) + 24) = 0;

    goto LABEL_9;
  }

  if (v3 == 1)
  {
    goto LABEL_7;
  }

  if (v3 == 2)
  {
LABEL_8:
    v10 = [v14 dateInterval];
    v11 = [v10 startDate];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

LABEL_9:
}

- (BOOL)_queue_generateAndSaveSamplesForIntervals:(id)intervals withExerciseMinuteTable:(id)table standHourTable:(id)hourTable standMinuteTable:(id)minuteTable moveMinuteTable:(id)moveMinuteTable error:(id)error
{
  v144 = *MEMORY[0x277D85DE8];
  intervalsCopy = intervals;
  tableCopy = table;
  hourTableCopy = hourTable;
  minuteTableCopy = minuteTable;
  moveMinuteTableCopy = moveMinuteTable;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  v130 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  obj = intervalsCopy;
  v117 = [obj countByEnumeratingWithState:&v137 objects:v143 count:16];
  if (v117)
  {
    v116 = *v138;
    v125 = *MEMORY[0x277CCC928];
    v126 = *MEMORY[0x277CCC940];
    v127 = *MEMORY[0x277CCB8E0];
    v17 = 0.0;
    v129 = hourTableCopy;
    v118 = minuteTableCopy;
    do
    {
      v18 = 0;
      do
      {
        if (*v138 != v116)
        {
          objc_enumerationMutation(obj);
        }

        v124 = v18;
        v19 = *(*(&v137 + 1) + 8 * v18);
        dateInterval = [v19 dateInterval];
        startDate = [dateInterval startDate];
        [startDate timeIntervalSinceReferenceDate];
        v23 = v22;

        v121 = v23;
        v24 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v23];
        dateInterval2 = [v19 dateInterval];
        endDate = [dateInterval2 endDate];
        [endDate timeIntervalSinceReferenceDate];
        v28 = v27;

        v119 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v28];
        v120 = v24;
        v123 = [NSCalendar components:"components:fromDate:toDate:options:" fromDate:128 toDate:v24 options:?];
        second = [v123 second];
        v30 = floor(second / 60.0);
        dateInterval3 = [v19 dateInterval];
        startDate2 = [dateInterval3 startDate];
        [startDate2 timeIntervalSinceReferenceDate];
        v34 = floor(v33 / 60.0) * 60.0;

        v132 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v34];
        if (v30 > 0.0)
        {
          v35 = 0;
          do
          {
            v36 = [(NSCalendar *)self->_calendar dateByAddingUnit:64 value:v35 toDate:v132 options:0];
            v37 = [v36 dateByAddingTimeInterval:60.0];
            v38 = [tableCopy objectForKey:v36];
            if (!v38)
            {
              v39 = MEMORY[0x277CCD7E8];
              minuteUnit = [MEMORY[0x277CCDAB0] minuteUnit];
              v41 = [v39 quantityWithUnit:minuteUnit doubleValue:1.0];

              v42 = MEMORY[0x277CCD800];
              briskMinuteDataType = [MEMORY[0x277CCD830] briskMinuteDataType];
              v44 = [v42 quantitySampleWithType:briskMinuteDataType quantity:v41 startDate:v36 endDate:v37];

              [tableCopy setObject:v44 forKey:v36];
              [v130 addObject:v44];
            }

            if ([v19 activityMoveMode] == 2)
            {
              v45 = [moveMinuteTableCopy objectForKey:v36];
              if (!v45)
              {
                v46 = MEMORY[0x277CCD7E8];
                minuteUnit2 = [MEMORY[0x277CCDAB0] minuteUnit];
                v48 = [v46 quantityWithUnit:minuteUnit2 doubleValue:1.0];

                v49 = MEMORY[0x277CCD800];
                v50 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:v125];
                v51 = [v49 quantitySampleWithType:v50 quantity:v48 startDate:v36 endDate:v37];

                hourTableCopy = v129;
                [moveMinuteTableCopy setObject:v51 forKey:v36];
                [v130 addObject:v51];
              }
            }

            ++v35;
          }

          while (v30 > v35);
          minuteTableCopy = v118;
          if (v30 > 0.0)
          {
            v52 = 0;
            do
            {
              v53 = [(NSCalendar *)self->_calendar dateByAddingUnit:64 value:v52 toDate:v132 options:0];
              v54 = [v53 dateByAddingTimeInterval:300.0];
              v55 = [v118 objectForKey:v53];
              if (!v55)
              {
                v56 = MEMORY[0x277CCD7E8];
                minuteUnit3 = [MEMORY[0x277CCDAB0] minuteUnit];
                v58 = [v56 quantityWithUnit:minuteUnit3 doubleValue:1.0];

                v59 = MEMORY[0x277CCD800];
                v60 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:v126];
                v61 = [v59 quantitySampleWithType:v60 quantity:v58 startDate:v53 endDate:v54];

                hourTableCopy = v129;
                [v118 setObject:v61 forKey:v53];
                [v130 addObject:v61];
              }

              v52 += 5;
            }

            while (v30 > v52);
          }
        }

        v62 = v17 + second - v30 * 60.0;
        v17 = v62;
        if (v62 >= 60.0)
        {
          v63 = [v132 dateByAddingTimeInterval:60.0];
          v64 = [tableCopy objectForKey:v132];
          if (!v64)
          {
            v65 = MEMORY[0x277CCD7E8];
            minuteUnit4 = [MEMORY[0x277CCDAB0] minuteUnit];
            v67 = [v65 quantityWithUnit:minuteUnit4 doubleValue:1.0];

            v68 = MEMORY[0x277CCD800];
            briskMinuteDataType2 = [MEMORY[0x277CCD830] briskMinuteDataType];
            v70 = [v68 quantitySampleWithType:briskMinuteDataType2 quantity:v67 startDate:v132 endDate:v63];

            [tableCopy setObject:v70 forKey:v132];
            [v130 addObject:v70];
          }

          if ([v19 activityMoveMode] == 2)
          {
            v71 = [moveMinuteTableCopy objectForKey:v132];
            if (!v71)
            {
              v72 = MEMORY[0x277CCD7E8];
              minuteUnit5 = [MEMORY[0x277CCDAB0] minuteUnit];
              v74 = [v72 quantityWithUnit:minuteUnit5 doubleValue:1.0];

              v75 = MEMORY[0x277CCD800];
              v76 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:v125];
              v77 = [v75 quantitySampleWithType:v76 quantity:v74 startDate:v132 endDate:v63];

              [moveMinuteTableCopy setObject:v77 forKey:v132];
              [v130 addObject:v77];
            }
          }

          v17 = v62 + -60.0;
        }

        if (v62 >= 300.0)
        {
          v17 = v17 + -300.0;
          v80 = [v132 dateByAddingTimeInterval:v17];
          v81 = [minuteTableCopy objectForKey:v132];
          v79 = v120;
          if (!v81)
          {
            v82 = MEMORY[0x277CCD7E8];
            minuteUnit6 = [MEMORY[0x277CCDAB0] minuteUnit];
            v84 = [v82 quantityWithUnit:minuteUnit6 doubleValue:1.0];

            v85 = MEMORY[0x277CCD800];
            v86 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:v126];
            v87 = [v85 quantitySampleWithType:v86 quantity:v84 startDate:v132 endDate:v80];

            [minuteTableCopy setObject:v87 forKey:v132];
            [v130 addObject:v87];
          }

          v78 = v121;
        }

        else
        {
          v78 = v121;
          v79 = v120;
        }

        v88 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:floor(v78 / 3600.0) * 3600.0];

        v89 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:ceil(v28 / 3600.0) * 3600.0];

        v122 = v89;
        v90 = [(NSCalendar *)self->_calendar components:32 fromDate:v88 toDate:v89 options:0];
        hour = [v90 hour];
        if (hour >= 1)
        {
          v92 = hour;
          for (i = 0; i != v92; ++i)
          {
            v94 = [(NSCalendar *)self->_calendar dateByAddingUnit:32 value:i toDate:v88 options:0];
            v95 = [v94 dateByAddingTimeInterval:3600.0];
            v96 = [hourTableCopy objectForKey:v94];
            if (!v96)
            {
              v97 = MEMORY[0x277CCD0B0];
              v98 = [MEMORY[0x277CCD720] categoryTypeForIdentifier:v127];
              v99 = [v97 categorySampleWithType:v98 value:0 startDate:v94 endDate:v95];

              hourTableCopy = v129;
              [v129 setObject:v99 forKey:v94];
              [v130 addObject:v99];
            }
          }
        }

        v18 = v124 + 1;
        minuteTableCopy = v118;
      }

      while (v124 + 1 != v117);
      v117 = [obj countByEnumeratingWithState:&v137 objects:v143 count:16];
    }

    while (v117);
  }

  v100 = [v130 count];
  _HKInitializeLogging();
  v101 = *MEMORY[0x277CCC330];
  v102 = os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO);
  if (v100)
  {
    if (v102)
    {
      v103 = v101;
      v104 = [v130 count];
      *buf = 134217984;
      v142 = v104;
      _os_log_impl(&dword_243CCD000, v103, OS_LOG_TYPE_INFO, "[CWCM] Created %zd samples from workouts", buf, 0xCu);
    }

    WeakRetained = objc_loadWeakRetained(&self->_profile);
    v106 = MEMORY[0x277D10690];
    v107 = WeakRetained;
    database = [v107 database];
    v136 = errorCopy;
    v133[0] = MEMORY[0x277D85DD0];
    v133[1] = 3221225472;
    v133[2] = __155__CHCompanionWorkoutCreditManager__queue_generateAndSaveSamplesForIntervals_withExerciseMinuteTable_standHourTable_standMinuteTable_moveMinuteTable_error___block_invoke;
    v133[3] = &unk_278DF0208;
    v134 = v107;
    v135 = v130;
    v109 = v107;
    v110 = [v106 performWriteTransactionWithHealthDatabase:database error:&v136 block:v133];
    v111 = v136;
  }

  else
  {
    if (v102)
    {
      *buf = 0;
      v110 = 1;
      _os_log_impl(&dword_243CCD000, v101, OS_LOG_TYPE_INFO, "[CWCM] No new samples generated from workouts", buf, 2u);
    }

    else
    {
      v110 = 1;
    }

    v111 = errorCopy;
  }

  v112 = *MEMORY[0x277D85DE8];
  return v110;
}

uint64_t __155__CHCompanionWorkoutCreditManager__queue_generateAndSaveSamplesForIntervals_withExerciseMinuteTable_standHourTable_standMinuteTable_moveMinuteTable_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) dataProvenanceManager];
  v6 = [v5 defaultLocalDataProvenance];

  if (v6)
  {
    v7 = [*(a1 + 32) dataManager];
    v8 = [v7 insertDataObjects:*(a1 + 40) withProvenance:v6 creationDate:a3 error:CFAbsoluteTimeGetCurrent()];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_queue_samplesForType:(id)type fromStartTime:(id)time toEndTime:(id)endTime
{
  v41[3] = *MEMORY[0x277D85DE8];
  queue = self->_queue;
  endTimeCopy = endTime;
  timeCopy = time;
  typeCopy = type;
  dispatch_assert_queue_V2(queue);
  v12 = MEMORY[0x277D10B18];
  v13 = *MEMORY[0x277D104B0];
  v14 = _HDSQLiteValueForDate();

  v15 = [v12 predicateWithProperty:v13 greaterThanOrEqualToValue:v14];

  v16 = MEMORY[0x277D10B18];
  v17 = *MEMORY[0x277D104A8];
  v18 = _HDSQLiteValueForDate();

  v19 = [v16 predicateWithProperty:v17 lessThanOrEqualToValue:v18];

  v20 = HDDataEntityPredicateForOriginProductType();
  v21 = MEMORY[0x277D10B20];
  v41[0] = v15;
  v41[1] = v19;
  v41[2] = v20;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:3];
  v23 = [v21 predicateMatchingAllPredicates:v22];

  v24 = MEMORY[0x277D10848];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v33 = 0;
  v34 = 0;
  v26 = [v24 samplesWithType:typeCopy profile:WeakRetained encodingOptions:0 predicate:v23 limit:0 anchor:&v34 error:&v33];

  v27 = v34;
  v28 = v33;

  if (v28)
  {
    _HKInitializeLogging();
    v29 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v36 = v28;
      v37 = 2112;
      v38 = v23;
      v39 = 2112;
      v40 = v27;
      _os_log_error_impl(&dword_243CCD000, v29, OS_LOG_TYPE_ERROR, "[CWCM] Error: %{public}@ fetching samples with predicate: %@, anchor: %@", buf, 0x20u);
    }

    v30 = 0;
  }

  else
  {
    v30 = v26;
  }

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

- (id)_queue_workoutsSinceAnchor:(id *)anchor error:(id)error
{
  v27[2] = *MEMORY[0x277D85DE8];
  queue = self->_queue;
  errorCopy = error;
  dispatch_assert_queue_V2(queue);
  v25 = HDDataEntityPredicateForOriginProductType();
  v8 = HDDataEntityPredicateForOriginProductType();
  v9 = MEMORY[0x277D10B20];
  v27[0] = v25;
  v27[1] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v11 = [v9 predicateMatchingAnyPredicates:v10];

  calendar = self->_calendar;
  date = [MEMORY[0x277CBEAA8] date];
  v14 = [(NSCalendar *)calendar dateByAddingUnit:16 value:-1 toDate:date options:0];

  v15 = [(NSCalendar *)self->_calendar startOfDayForDate:v14];
  v16 = HDSampleEntityPredicateForEndDate();

  v17 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v11 otherPredicate:v16];
  v18 = MEMORY[0x277D10980];
  workoutType = [MEMORY[0x277CCD720] workoutType];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v26 = errorCopy;
  v21 = [v18 samplesWithType:workoutType profile:WeakRetained encodingOptions:0 predicate:v17 limit:0 anchor:anchor error:&v26];
  v22 = v26;

  v23 = *MEMORY[0x277D85DE8];

  return v21;
}

@end