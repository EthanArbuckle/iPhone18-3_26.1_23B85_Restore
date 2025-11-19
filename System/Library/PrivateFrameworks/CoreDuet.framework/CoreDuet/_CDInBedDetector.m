@interface _CDInBedDetector
+ (double)hoursOfSleepForResult:(id)a3;
+ (id)inBedDetector;
+ (id)inBedDetectorWithKnowledge:(id)a3;
+ (id)inBedDetectorWithKnowledge:(id)a3 method:(unint64_t)a4;
- (_CDInBedDetector)initWithKnowledge:(id)a3 method:(unint64_t)a4;
- (id)detectInBedBetweenBedtimeDate:(id)a3 wakupDate:(id)a4 error:(id *)a5;
- (id)detectInBedWithPolicyV1BetweenStartDate:(id)a3 endDate:(id)a4 error:(id *)a5;
- (id)detectInBedWithPolicyV2BetweenStartDate:(id)a3 endDate:(id)a4 error:(id *)a5 motionBased:(BOOL)a6;
- (id)findDateIntervalOfEventInStream:(id)a3 datePredicate:(id)a4 valuePredicate:(id)a5 sortDescriptor:(id)a6 error:(id *)a7;
- (id)findLastTimeDeviceWasLockedBetweenStartDate:(id)a3 endDate:(id)a4 error:(id *)a5;
- (id)findLastTimeDeviceWasPluggedInBetweenStartDate:(id)a3 endDate:(id)a4 error:(id *)a5;
- (id)findMotionTerminusBetweenStartDate:(id)a3 endDate:(id)a4 latest:(BOOL)a5 error:(id *)a6;
- (id)lockedTimesBetweenStartDate:(id)a3 endDate:(id)a4 error:(id *)a5;
- (id)stationaryIntervalsBetweenStartDate:(id)a3 endDate:(id)a4 error:(id *)a5;
@end

@implementation _CDInBedDetector

+ (id)inBedDetectorWithKnowledge:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithKnowledge:v4 method:2];

  return v5;
}

+ (id)inBedDetectorWithKnowledge:(id)a3 method:(unint64_t)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithKnowledge:v6 method:a4];

  return v7;
}

+ (id)inBedDetector
{
  v3 = +[_DKKnowledgeStore knowledgeStore];
  v4 = [a1 inBedDetectorWithKnowledge:v3];

  return v4;
}

- (_CDInBedDetector)initWithKnowledge:(id)a3 method:(unint64_t)a4
{
  v7 = a3;
  v14.receiver = self;
  v14.super_class = _CDInBedDetector;
  v8 = [(_CDInBedDetector *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_knowledge, a3);
    v9->_method = a4;
    v10 = os_log_create("com.apple.coreduet", "inBedDetector");
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
    }

    objc_storeStrong(&v9->_log, v12);
  }

  return v9;
}

+ (double)hoursOfSleepForResult:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 endDate];
        v11 = [v9 startDate];
        [v10 timeIntervalSinceDate:v11];
        v7 = v7 + v12 / 3600.0;
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

- (id)detectInBedBetweenBedtimeDate:(id)a3 wakupDate:(id)a4 error:(id *)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  if (![(_CDInBedDetector *)self method])
  {
    v33 = 0;
    v11 = [(_CDInBedDetector *)self lockedTimesBetweenStartDate:v8 endDate:v9 error:&v33];
    v12 = v33;
    goto LABEL_5;
  }

  if ([(_CDInBedDetector *)self method]== 1)
  {
    v32 = 0;
    v11 = [(_CDInBedDetector *)self detectInBedWithPolicyV1BetweenStartDate:v8 endDate:v9 error:&v32];
    v12 = v32;
LABEL_5:
    v13 = v12;
    goto LABEL_6;
  }

  v31 = 0;
  v11 = [(_CDInBedDetector *)self detectInBedWithPolicyV2BetweenStartDate:v8 endDate:v9 error:&v31 motionBased:0];
  v13 = v31;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v18 = log;
    [objc_opt_class() hoursOfSleepForResult:v11];
    *buf = 134217984;
    v35 = v19;
    _os_log_impl(&dword_191750000, v18, OS_LOG_TYPE_DEFAULT, "ProactiveSleepDebugging: Sleep time under modified model - simple lock-based session splitting %f", buf, 0xCu);
  }

  if (+[_CDDeviceInfo isRunningOnInternalBuild])
  {
    v30 = v13;
    v20 = [(_CDInBedDetector *)self detectInBedWithPolicyV1BetweenStartDate:v8 endDate:v9 error:&v30];
    v21 = v30;

    v22 = self->_log;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      [objc_opt_class() hoursOfSleepForResult:v20];
      *buf = 134217984;
      v35 = v24;
      _os_log_impl(&dword_191750000, v23, OS_LOG_TYPE_DEFAULT, "ProactiveSleepDebugging: Sleep time under old model %f", buf, 0xCu);
    }

    v29 = v21;
    v25 = [(_CDInBedDetector *)self detectInBedWithPolicyV2BetweenStartDate:v8 endDate:v9 error:&v29 motionBased:1];
    v13 = v29;

    v26 = self->_log;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = v26;
      [objc_opt_class() hoursOfSleepForResult:v25];
      *buf = 134217984;
      v35 = v28;
      _os_log_impl(&dword_191750000, v27, OS_LOG_TYPE_DEFAULT, "ProactiveSleepDebugging: Sleep time under modified model - motion-based session splitting %f", buf, 0xCu);
    }
  }

LABEL_6:
  objc_autoreleasePoolPop(v10);
  if (a5 && v13)
  {
    v14 = v13;
    *a5 = v13;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)lockedTimesBetweenStartDate:(id)a3 endDate:(id)a4 error:(id *)a5
{
  v84[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v72 = v8;
  v10 = [_DKQuery predicateForEventsIntersectingDateRangeFrom:v8 to:v9];
  v11 = +[_DKBoolCategory no];
  v12 = [_DKQuery predicateForEventsWithCategoryValue:v11];

  v13 = objc_alloc_init(_DKEventQuery);
  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_CDInBedDetector.m"];
  v15 = [v14 stringByAppendingFormat:@":%d", 123];
  [(_DKQuery *)v13 setClientName:v15];

  [(_DKQuery *)v13 setTracker:&__block_literal_global_26];
  v16 = +[_DKSystemEventStreams deviceIsLockedStream];
  v84[0] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:1];
  [(_DKEventQuery *)v13 setEventStreams:v17];

  v18 = MEMORY[0x1E696AB28];
  v83[0] = v10;
  v83[1] = v12;
  v71 = v12;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:2];
  v20 = [v18 andPredicateWithSubpredicates:v19];
  [(_DKEventQuery *)v13 setPredicate:v20];

  v21 = [_DKQuery startDateSortDescriptorAscending:1];
  v82 = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1];
  [(_DKEventQuery *)v13 setSortDescriptors:v22];

  [(_DKEventQuery *)v13 setResultType:2];
  v23 = [(_CDInBedDetector *)self knowledge];
  v79 = 0;
  v70 = v13;
  v24 = [v23 executeQuery:v13 error:&v79];
  v25 = v79;

  if (a5 && v25)
  {
    v26 = v25;
    v73 = 0;
    *a5 = v25;
    v27 = v25;
    v28 = v71;
    v29 = v72;
  }

  else
  {
    v66 = v24;
    v67 = v10;
    v30 = +[_DKSystemEventStreams deviceIsLockedStream];
    v29 = v72;
    v68 = v9;
    v31 = [_DKQuery predicateForEventsWithEndInDateRangeFrom:v72 to:v9];
    v32 = +[_DKBoolCategory yes];
    v33 = [_DKQuery predicateForEventsWithCategoryValue:v32];
    v34 = [_DKQuery endDateSortDescriptorAscending:0];
    v78 = v25;
    v35 = [(_CDInBedDetector *)self findDateIntervalOfEventInStream:v30 datePredicate:v31 valuePredicate:v33 sortDescriptor:v34 error:&v78];
    v36 = v78;

    v37 = [v35 endDate];

    v27 = v36;
    if (a5 && v36)
    {
      v38 = v36;
      v73 = 0;
      *a5 = v36;
      v10 = v67;
      v9 = v68;
      v28 = v71;
      v24 = v66;
    }

    else
    {
      if (v37)
      {
        v24 = v66;
        v10 = v67;
        v9 = v68;
        if (![v66 count])
        {
          goto LABEL_11;
        }

        v39 = [v66 lastObject];
        v40 = [v39 endDate];
        v41 = v37;
        v42 = [v40 compare:v37];

        v43 = v42 == -1;
        v37 = v41;
        if (v43)
        {
LABEL_11:
          v44 = v37;

          v9 = v44;
        }
      }

      else
      {
        v10 = v67;
        v9 = v68;
        v24 = v66;
      }

      if ([v24 count])
      {
        v64 = v37;
        v65 = v27;
        v69 = v9;
        v73 = [MEMORY[0x1E695DF70] array];
        v45 = v72;
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v46 = v24;
        v47 = [v46 countByEnumeratingWithState:&v74 objects:v80 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v75;
          v50 = v45;
          do
          {
            v51 = 0;
            v52 = v50;
            do
            {
              if (*v75 != v49)
              {
                objc_enumerationMutation(v46);
              }

              v53 = *(*(&v74 + 1) + 8 * v51);
              v54 = objc_alloc_init(_CDInBedDetection);
              [(_CDInBedDetection *)v54 setStartDate:v52];
              v55 = [v53 startDate];
              v56 = [v55 laterDate:v45];
              [(_CDInBedDetection *)v54 setEndDate:v56];

              [(_CDInBedDetection *)v54 setConfidence:1.0];
              [(_CDInBedDetection *)v54 duration];
              if (v57 > 0.0)
              {
                [v73 addObject:v54];
              }

              v50 = [v53 endDate];

              ++v51;
              v52 = v50;
            }

            while (v48 != v51);
            v48 = [v46 countByEnumeratingWithState:&v74 objects:v80 count:16];
          }

          while (v48);
        }

        else
        {
          v50 = v45;
        }

        v9 = v69;
        v59 = [v50 earlierDate:v69];
        v60 = [v59 isEqualToDate:v50];

        if (v60)
        {
          v61 = objc_alloc_init(_CDInBedDetection);
          [(_CDInBedDetection *)v61 setStartDate:v50];
          [(_CDInBedDetection *)v61 setEndDate:v69];
          [v73 addObject:v61];
        }

        v28 = v71;
        v29 = v72;
        v24 = v66;
        v10 = v67;
        v37 = v64;
        v27 = v65;
      }

      else
      {
        v58 = objc_alloc_init(_CDInBedDetection);
        [(_CDInBedDetection *)v58 setStartDate:v72];
        [(_CDInBedDetection *)v58 setEndDate:v9];
        v81 = v58;
        v73 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1];

        v28 = v71;
      }
    }
  }

  v62 = *MEMORY[0x1E69E9840];

  return v73;
}

- (id)detectInBedWithPolicyV1BetweenStartDate:(id)a3 endDate:(id)a4 error:(id *)a5
{
  v61 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  [v8 dateByAddingTimeInterval:-3600.0];
  v52[1] = 0;
  v47 = v49 = v7;
  v9 = [_CDInBedDetector findLatestEndOfMovementBetweenStartDate:"findLatestEndOfMovementBetweenStartDate:endDate:error:" endDate:v7 error:?];
  v10 = 0;
  if (v10)
  {
    v11 = v10;
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [_CDInBedDetector detectInBedWithPolicyV1BetweenStartDate:endDate:error:];
    }
  }

  else if (!v9 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [_CDInBedDetector detectInBedWithPolicyV1BetweenStartDate:endDate:error:];
  }

  v12 = v49;
  if (v9)
  {
    v12 = v9;
  }

  v13 = v12;

  v14 = v13;
  v15 = [v14 dateByAddingTimeInterval:5400.0];
  v52[0] = 0;
  v16 = [(_CDInBedDetector *)self findLastTimeDeviceWasLockedBetweenStartDate:v14 endDate:v15 error:v52];
  v17 = v52[0];
  if (v17)
  {
    v18 = v17;
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v54 = v14;
      v55 = 2112;
      v56 = v15;
      v57 = 2112;
      v58 = v18;
      _os_log_error_impl(&dword_191750000, log, OS_LOG_TYPE_ERROR, "Error finding last lock date between %@ and %@: %@", buf, 0x20u);
    }
  }

  v20 = v14;
  if (v16)
  {
    v20 = [v14 laterDate:v16];
  }

  v51 = 0;
  v21 = [(_CDInBedDetector *)self findLastTimeDeviceWasPluggedInBetweenStartDate:v14 endDate:v15 error:&v51];
  v22 = v51;
  if (v22)
  {
    v23 = v22;
    v24 = v21;
    v25 = self->_log;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v54 = v14;
      v55 = 2112;
      v56 = v15;
      v57 = 2112;
      v58 = v23;
      _os_log_error_impl(&dword_191750000, v25, OS_LOG_TYPE_ERROR, "Error finding last date device was plugged in between %@ and %@: %@", buf, 0x20u);
    }

    v21 = v24;
  }

  if (v21)
  {
    v26 = [v20 laterDate:v21];

    v20 = v26;
  }

  if ([0 count])
  {
    v27 = [0 copy];
    v48 = 0;
    v28 = @"motion";
  }

  else
  {
    v50 = 0;
    v27 = [(_CDInBedDetector *)self lockedTimesBetweenStartDate:v20 endDate:v8 error:&v50];
    v48 = v50;
    if (v48)
    {
      if (a5)
      {
        *a5 = v48;
      }

      v29 = self->_log;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v54 = v20;
        v55 = 2112;
        v56 = v8;
        v57 = 2112;
        v58 = v48;
        _os_log_error_impl(&dword_191750000, v29, OS_LOG_TYPE_ERROR, "Error identifying locked times between %@ and %@: %@", buf, 0x20u);
      }
    }

    else
    {
      v48 = 0;
    }

    v28 = @"screenlock";
  }

  v46 = v28;
  v30 = self->_log;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v42 = v21;
    v31 = MEMORY[0x1E696AD98];
    v32 = v30;
    v33 = [v31 numberWithUnsignedInteger:{objc_msgSend(v27, "count")}];
    v34 = [v27 firstObject];
    [v34 startDate];
    v35 = v44 = v8;
    [v27 lastObject];
    v36 = v43 = v16;
    [v36 endDate];
    v37 = v20;
    v39 = v38 = v27;
    *buf = 138413058;
    v54 = v33;
    v55 = 2112;
    v56 = v35;
    v57 = 2112;
    v58 = v39;
    v59 = 2112;
    v60 = v46;
    _os_log_impl(&dword_191750000, v32, OS_LOG_TYPE_DEFAULT, "Found %@ in-bed intervals between %@ & %@ using %@-based heuristic", buf, 0x2Au);

    v27 = v38;
    v20 = v37;

    v16 = v43;
    v8 = v44;

    v21 = v42;
  }

  v40 = *MEMORY[0x1E69E9840];

  return v27;
}

- (id)detectInBedWithPolicyV2BetweenStartDate:(id)a3 endDate:(id)a4 error:(id *)a5 motionBased:(BOOL)a6
{
  v6 = a6;
  v106 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = [v9 dateByAddingTimeInterval:14400.0];
  v12 = [v10 dateByAddingTimeInterval:-60.0];
  v13 = [v11 earlierDate:v12];
  v96 = 0;
  v14 = [(_CDInBedDetector *)self findLatestEndOfMovementBetweenStartDate:v9 endDate:v13 error:&v96];
  v15 = v96;

  if (v15)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [_CDInBedDetector detectInBedWithPolicyV1BetweenStartDate:endDate:error:];
    }
  }

  else if (!v14 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [_CDInBedDetector detectInBedWithPolicyV1BetweenStartDate:endDate:error:];
  }

  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v9;
  }

  v17 = v16;

  v18 = v17;
  v19 = [v18 dateByAddingTimeInterval:5400.0];
  v20 = [v10 dateByAddingTimeInterval:-60.0];
  v21 = [v19 earlierDate:v20];

  v95 = 0;
  v86 = [(_CDInBedDetector *)self findLastTimeDeviceWasLockedBetweenStartDate:v18 endDate:v21 error:&v95];
  v22 = v95;
  if (v22)
  {
    v23 = v22;
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v98 = v18;
      v99 = 2112;
      v100 = v21;
      v101 = 2112;
      v102 = v23;
      _os_log_error_impl(&dword_191750000, log, OS_LOG_TYPE_ERROR, "Error finding last lock date between %@ and %@: %@", buf, 0x20u);
    }
  }

  v25 = v18;
  if (v86)
  {
    v25 = [v18 laterDate:?];
  }

  v94 = 0;
  v85 = [(_CDInBedDetector *)self findLastTimeDeviceWasPluggedInBetweenStartDate:v18 endDate:v21 error:&v94];
  v26 = v94;
  if (v26)
  {
    v27 = v26;
    v28 = v25;
    v29 = self->_log;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v98 = v18;
      v99 = 2112;
      v100 = v21;
      v101 = 2112;
      v102 = v27;
      _os_log_error_impl(&dword_191750000, v29, OS_LOG_TYPE_ERROR, "Error finding last date device was plugged in between %@ and %@: %@", buf, 0x20u);
    }

    v25 = v28;
  }

  if (v85)
  {
    v30 = [v25 laterDate:?];

    v25 = v30;
  }

  v31 = [v10 dateByAddingTimeInterval:-3600.0];
  [v31 timeIntervalSinceReferenceDate];
  v33 = v32;
  [v25 timeIntervalSinceReferenceDate];
  v84 = v25;
  v80 = v31;
  if (v33 <= v34)
  {
    v38 = self->_log;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_191750000, v38, OS_LOG_TYPE_DEFAULT, "Bedtime started less than an hour before end date, not performing further movement based changes on end date", buf, 2u);
    }

LABEL_33:
    v35 = 0;
    goto LABEL_34;
  }

  v93 = 0;
  v35 = [(_CDInBedDetector *)self findMotionTerminusBetweenStartDate:v31 endDate:v10 latest:0 error:&v93];
  v36 = v93;
  if (!v36)
  {
    if (v35)
    {
      goto LABEL_34;
    }

    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [_CDInBedDetector detectInBedWithPolicyV2BetweenStartDate:endDate:error:motionBased:];
    }

    goto LABEL_33;
  }

  v37 = v36;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [_CDInBedDetector detectInBedWithPolicyV2BetweenStartDate:endDate:error:motionBased:];
  }

LABEL_34:
  v79 = v35;
  if (v35)
  {
    v39 = v35;
  }

  else
  {
    v39 = v10;
  }

  v40 = v39;

  v81 = v11;
  v82 = v9;
  v83 = v40;
  if (v6)
  {
    v73 = v21;
    v75 = v18;
    v92 = 0;
    v41 = [(_CDInBedDetector *)self stationaryIntervalsBetweenStartDate:v25 endDate:v40 error:&v92];
    v42 = v92;
    if (v42)
    {
      v43 = v42;
      v44 = self->_log;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v98 = v84;
        v99 = 2112;
        v100 = v83;
        v101 = 2112;
        v102 = v43;
        _os_log_error_impl(&dword_191750000, v44, OS_LOG_TYPE_ERROR, "Error finding stationary intervals between %@ and %@: %@", buf, 0x20u);
      }
    }

    v45 = [MEMORY[0x1E695DF70] array];
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v46 = v41;
    v47 = [v46 countByEnumeratingWithState:&v88 objects:v105 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v89;
      do
      {
        for (i = 0; i != v48; ++i)
        {
          if (*v89 != v49)
          {
            objc_enumerationMutation(v46);
          }

          v51 = *(*(&v88 + 1) + 8 * i);
          [v51 duration];
          if (v52 >= 300.0)
          {
            v53 = objc_alloc_init(_CDInBedDetection);
            v54 = [v51 startDate];
            [(_CDInBedDetection *)v53 setStartDate:v54];

            v55 = [v51 endDate];
            [(_CDInBedDetection *)v53 setEndDate:v55];

            [(_CDInBedDetection *)v53 setConfidence:1.0];
            [v45 addObject:v53];
          }
        }

        v48 = [v46 countByEnumeratingWithState:&v88 objects:v105 count:16];
      }

      while (v48);
    }

    v9 = v82;
    v21 = v73;
    v18 = v75;
    v25 = v84;
  }

  else
  {
    v45 = 0;
  }

  v56 = v86;
  if ([v45 count])
  {
    v57 = [v45 copy];
    v58 = 0;
    v59 = @"motion";
  }

  else
  {
    v87 = 0;
    v57 = [(_CDInBedDetector *)self lockedTimesBetweenStartDate:v25 endDate:v83 error:&v87];
    v60 = v87;
    v58 = v60;
    if (v60)
    {
      if (a5)
      {
        v61 = v60;
        *a5 = v58;
      }

      v62 = self->_log;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v98 = v84;
        v99 = 2112;
        v100 = v83;
        v101 = 2112;
        v102 = v58;
        _os_log_error_impl(&dword_191750000, v62, OS_LOG_TYPE_ERROR, "Error identifying locked times between %@ and %@: %@", buf, 0x20u);
      }
    }

    v59 = @"screenlock";
  }

  v63 = self->_log;
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    v74 = v59;
    v64 = MEMORY[0x1E696AD98];
    v76 = v63;
    v72 = [v64 numberWithUnsignedInteger:{objc_msgSend(v57, "count")}];
    v65 = [v57 firstObject];
    [v65 startDate];
    v78 = v58;
    v67 = v66 = v57;
    v68 = [v66 lastObject];
    v69 = [v68 endDate];
    *buf = 138413058;
    v98 = v72;
    v99 = 2112;
    v100 = v67;
    v101 = 2112;
    v102 = v69;
    v103 = 2112;
    v104 = v74;
    _os_log_impl(&dword_191750000, v76, OS_LOG_TYPE_DEFAULT, "Found %@ in-bed intervals between %@ & %@ using %@-based heuristic", buf, 0x2Au);

    v9 = v82;
    v56 = v86;

    v57 = v66;
    v58 = v78;
  }

  v70 = *MEMORY[0x1E69E9840];

  return v57;
}

- (id)findMotionTerminusBetweenStartDate:(id)a3 endDate:(id)a4 latest:(BOOL)a5 error:(id *)a6
{
  v6 = a5;
  v62 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = [v9 earlierDate:v10];
  v12 = [v11 isEqualToDate:v10];

  if (v12)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [_CDInBedDetector findMotionTerminusBetweenStartDate:endDate:latest:error:];
    }

LABEL_22:
    v19 = 0;
    goto LABEL_40;
  }

  if (([getCMMotionActivityManagerClass() isActivityAvailable] & 1) == 0)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [_CDInBedDetector findMotionTerminusBetweenStartDate:endDate:latest:error:];
    }

    goto LABEL_22;
  }

  v13 = objc_alloc_init(getCMMotionActivityManagerClass());
  v14 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  [v14 setName:@"com.apple.coreduet.inbed.coremotion"];
  v54 = 0;
  v55 = &v54;
  v56 = 0x3032000000;
  v57 = __Block_byref_object_copy__8;
  v58 = __Block_byref_object_dispose__8;
  v59 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__8;
  v52 = __Block_byref_object_dispose__8;
  v53 = 0;
  v15 = dispatch_semaphore_create(0);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __76___CDInBedDetector_findMotionTerminusBetweenStartDate_endDate_latest_error___block_invoke;
  v44[3] = &unk_1E73685F0;
  v46 = &v54;
  v47 = &v48;
  v33 = v14;
  dsema = v15;
  v45 = dsema;
  v32 = v13;
  [v13 queryActivityStartingFromDate:v9 toDate:v10 toQueue:v14 withHandler:v44];
  v16 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(dsema, v16))
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [_CDInBedDetector findMotionTerminusBetweenStartDate:endDate:latest:error:];
    }

    [v14 cancelAllOperations];
  }

  v17 = v10;
  if (v6)
  {
    v42 = 0uLL;
    v43 = 0uLL;
    v40 = 0uLL;
    v41 = 0uLL;
    v18 = [v49[5] reverseObjectEnumerator];
    v19 = [v18 countByEnumeratingWithState:&v40 objects:v61 count:16];
    if (v19)
    {
      v20 = *v41;
      v21 = v17;
      while (2)
      {
        v22 = 0;
        v23 = v17;
        v24 = v21;
        do
        {
          if (*v41 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v25 = *(*(&v40 + 1) + 8 * v22);
          if (([v25 stationary] & 1) == 0 && objc_msgSend(v25, "confidence") == 1)
          {
            v21 = v24;
            v17 = v23;
            v19 = v21;
            goto LABEL_36;
          }

          v17 = [v25 startDate];

          v21 = [v25 startDate];

          v22 = v22 + 1;
          v23 = v17;
          v24 = v21;
        }

        while (v19 != v22);
        v19 = [v18 countByEnumeratingWithState:&v40 objects:v61 count:16];
        if (v19)
        {
          continue;
        }

        goto LABEL_36;
      }
    }
  }

  else
  {
    v38 = 0uLL;
    v39 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    v18 = [v49[5] objectEnumerator];
    v19 = [v18 countByEnumeratingWithState:&v36 objects:v60 count:16];
    if (v19)
    {
      v26 = *v37;
      while (2)
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v37 != v26)
          {
            objc_enumerationMutation(v18);
          }

          v28 = *(*(&v36 + 1) + 8 * i);
          if (([v28 stationary] & 1) == 0 && objc_msgSend(v28, "confidence") == 1)
          {
            v19 = [v28 startDate];
            goto LABEL_34;
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v36 objects:v60 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_34:
  v21 = v17;
LABEL_36:

  if (a6)
  {
    v29 = v55[5];
    if (v29)
    {
      *a6 = v29;
    }
  }

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v54, 8);

LABEL_40:
  v30 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)stationaryIntervalsBetweenStartDate:(id)a3 endDate:(id)a4 error:(id *)a5
{
  v56 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v34 = v7;
  v9 = [v7 earlierDate:v8];
  v10 = [v9 isEqualToDate:v8];

  if (v10)
  {
LABEL_2:
    v11 = 0;
    goto LABEL_28;
  }

  if (([getCMMotionActivityManagerClass() isActivityAvailable] & 1) == 0)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [_CDInBedDetector findMotionTerminusBetweenStartDate:endDate:latest:error:];
    }

    goto LABEL_2;
  }

  v12 = objc_alloc_init(getCMMotionActivityManagerClass());
  v13 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  [v13 setName:@"com.apple.coreduet.inbed.coremotion"];
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__8;
  v53 = __Block_byref_object_dispose__8;
  v54 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__8;
  v47 = __Block_byref_object_dispose__8;
  v48 = 0;
  v14 = dispatch_semaphore_create(0);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __70___CDInBedDetector_stationaryIntervalsBetweenStartDate_endDate_error___block_invoke;
  v39[3] = &unk_1E73685F0;
  v41 = &v49;
  v42 = &v43;
  v31 = v13;
  dsema = v14;
  v40 = dsema;
  v30 = v12;
  [v12 queryActivityStartingFromDate:v7 toDate:v8 toQueue:v13 withHandler:v39];
  v15 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(dsema, v15))
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [_CDInBedDetector findMotionTerminusBetweenStartDate:endDate:latest:error:];
    }

    [v13 cancelAllOperations];
  }

  v16 = [MEMORY[0x1E695DF70] array];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v17 = v44[5];
  v18 = 0;
  v19 = [v17 countByEnumeratingWithState:&v35 objects:v55 count:16];
  if (!v19)
  {
LABEL_23:

    goto LABEL_24;
  }

  v20 = *v36;
  do
  {
    for (i = 0; i != v19; ++i)
    {
      if (*v36 != v20)
      {
        objc_enumerationMutation(v17);
      }

      v22 = *(*(&v35 + 1) + 8 * i);
      if ([v22 stationary] && objc_msgSend(v22, "confidence") == 2)
      {
        v23 = [v22 startDate];
      }

      else
      {
        if (!v18)
        {
          continue;
        }

        v24 = objc_alloc(MEMORY[0x1E696AB80]);
        v25 = [v22 startDate];
        v26 = [v24 initWithStartDate:v18 endDate:v25];
        [v16 addObject:v26];

        v23 = 0;
      }

      v18 = v23;
    }

    v19 = [v17 countByEnumeratingWithState:&v35 objects:v55 count:16];
  }

  while (v19);

  if (v18)
  {
    v17 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v18 endDate:v8];
    [v16 addObject:v17];
    goto LABEL_23;
  }

LABEL_24:
  if (a5)
  {
    v27 = v50[5];
    if (v27)
    {
      *a5 = v27;
    }
  }

  v11 = [v16 copy];

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v49, 8);

LABEL_28:
  v28 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)findLastTimeDeviceWasLockedBetweenStartDate:(id)a3 endDate:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = +[_DKSystemEventStreams deviceIsLockedStream];
  v11 = [_DKQuery predicateForEventsWithEndInDateRangeFrom:v9 to:v8];

  v12 = +[_DKBoolCategory no];
  v13 = [_DKQuery predicateForEventsWithCategoryValue:v12];
  v14 = [_DKQuery endDateSortDescriptorAscending:0];
  v15 = [(_CDInBedDetector *)self findDateIntervalOfEventInStream:v10 datePredicate:v11 valuePredicate:v13 sortDescriptor:v14 error:a5];
  v16 = [v15 endDate];

  return v16;
}

- (id)findLastTimeDeviceWasPluggedInBetweenStartDate:(id)a3 endDate:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = a3;
  v10 = +[_DKSystemEventStreams deviceIsPluggedInStream];
  v11 = [_DKQuery predicateForEventsWithEndInDateRangeFrom:v9 to:v8];

  v12 = +[_DKBoolCategory no];
  v13 = [_DKQuery predicateForEventsWithCategoryValue:v12];
  v14 = [_DKQuery endDateSortDescriptorAscending:0];
  v15 = [(_CDInBedDetector *)self findDateIntervalOfEventInStream:v10 datePredicate:v11 valuePredicate:v13 sortDescriptor:v14 error:a5];
  v16 = [v15 endDate];

  return v16;
}

- (id)findDateIntervalOfEventInStream:(id)a3 datePredicate:(id)a4 valuePredicate:(id)a5 sortDescriptor:(id)a6 error:(id *)a7
{
  v34[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = objc_alloc_init(_DKEventQuery);
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_CDInBedDetector.m"];
  v18 = [v17 stringByAppendingFormat:@":%d", 638];
  [(_DKQuery *)v16 setClientName:v18];

  [(_DKQuery *)v16 setTracker:&__block_literal_global_557];
  v34[0] = v12;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  [(_DKEventQuery *)v16 setEventStreams:v19];

  v20 = MEMORY[0x1E696AB28];
  v33[0] = v13;
  v33[1] = v14;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v22 = [v20 andPredicateWithSubpredicates:v21];
  [(_DKEventQuery *)v16 setPredicate:v22];

  v32 = v15;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  [(_DKEventQuery *)v16 setSortDescriptors:v23];

  [(_DKEventQuery *)v16 setLimit:1];
  [(_DKEventQuery *)v16 setResultType:2];
  v24 = [(_CDInBedDetector *)self knowledge];
  v31 = 0;
  v25 = [v24 executeQuery:v16 error:&v31];
  v26 = v31;

  if (v26)
  {
    if (a7)
    {
      v27 = v26;
      v28 = 0;
      *a7 = v26;
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = [v25 firstObject];
  }

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

- (void)detectInBedWithPolicyV1BetweenStartDate:endDate:error:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "Error finding last end of movement: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)detectInBedWithPolicyV2BetweenStartDate:endDate:error:motionBased:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "Error finding first start of movement: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)findMotionTerminusBetweenStartDate:endDate:latest:error:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_191750000, v1, OS_LOG_TYPE_ERROR, "InBed endDate (%@) is before startDate (%@)", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end