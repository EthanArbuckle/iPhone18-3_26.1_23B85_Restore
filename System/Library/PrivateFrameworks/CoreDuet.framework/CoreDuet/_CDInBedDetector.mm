@interface _CDInBedDetector
+ (double)hoursOfSleepForResult:(id)result;
+ (id)inBedDetector;
+ (id)inBedDetectorWithKnowledge:(id)knowledge;
+ (id)inBedDetectorWithKnowledge:(id)knowledge method:(unint64_t)method;
- (_CDInBedDetector)initWithKnowledge:(id)knowledge method:(unint64_t)method;
- (id)detectInBedBetweenBedtimeDate:(id)date wakupDate:(id)wakupDate error:(id *)error;
- (id)detectInBedWithPolicyV1BetweenStartDate:(id)date endDate:(id)endDate error:(id *)error;
- (id)detectInBedWithPolicyV2BetweenStartDate:(id)date endDate:(id)endDate error:(id *)error motionBased:(BOOL)based;
- (id)findDateIntervalOfEventInStream:(id)stream datePredicate:(id)predicate valuePredicate:(id)valuePredicate sortDescriptor:(id)descriptor error:(id *)error;
- (id)findLastTimeDeviceWasLockedBetweenStartDate:(id)date endDate:(id)endDate error:(id *)error;
- (id)findLastTimeDeviceWasPluggedInBetweenStartDate:(id)date endDate:(id)endDate error:(id *)error;
- (id)findMotionTerminusBetweenStartDate:(id)date endDate:(id)endDate latest:(BOOL)latest error:(id *)error;
- (id)lockedTimesBetweenStartDate:(id)date endDate:(id)endDate error:(id *)error;
- (id)stationaryIntervalsBetweenStartDate:(id)date endDate:(id)endDate error:(id *)error;
@end

@implementation _CDInBedDetector

+ (id)inBedDetectorWithKnowledge:(id)knowledge
{
  knowledgeCopy = knowledge;
  v5 = [[self alloc] initWithKnowledge:knowledgeCopy method:2];

  return v5;
}

+ (id)inBedDetectorWithKnowledge:(id)knowledge method:(unint64_t)method
{
  knowledgeCopy = knowledge;
  v7 = [[self alloc] initWithKnowledge:knowledgeCopy method:method];

  return v7;
}

+ (id)inBedDetector
{
  v3 = +[_DKKnowledgeStore knowledgeStore];
  v4 = [self inBedDetectorWithKnowledge:v3];

  return v4;
}

- (_CDInBedDetector)initWithKnowledge:(id)knowledge method:(unint64_t)method
{
  knowledgeCopy = knowledge;
  v14.receiver = self;
  v14.super_class = _CDInBedDetector;
  v8 = [(_CDInBedDetector *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_knowledge, knowledge);
    v9->_method = method;
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

+ (double)hoursOfSleepForResult:(id)result
{
  v20 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [resultCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(resultCopy);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        endDate = [v9 endDate];
        startDate = [v9 startDate];
        [endDate timeIntervalSinceDate:startDate];
        v7 = v7 + v12 / 3600.0;
      }

      v5 = [resultCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (id)detectInBedBetweenBedtimeDate:(id)date wakupDate:(id)wakupDate error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  wakupDateCopy = wakupDate;
  v10 = objc_autoreleasePoolPush();
  if (![(_CDInBedDetector *)self method])
  {
    v33 = 0;
    v11 = [(_CDInBedDetector *)self lockedTimesBetweenStartDate:dateCopy endDate:wakupDateCopy error:&v33];
    v12 = v33;
    goto LABEL_5;
  }

  if ([(_CDInBedDetector *)self method]== 1)
  {
    v32 = 0;
    v11 = [(_CDInBedDetector *)self detectInBedWithPolicyV1BetweenStartDate:dateCopy endDate:wakupDateCopy error:&v32];
    v12 = v32;
LABEL_5:
    v13 = v12;
    goto LABEL_6;
  }

  v31 = 0;
  v11 = [(_CDInBedDetector *)self detectInBedWithPolicyV2BetweenStartDate:dateCopy endDate:wakupDateCopy error:&v31 motionBased:0];
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
    v20 = [(_CDInBedDetector *)self detectInBedWithPolicyV1BetweenStartDate:dateCopy endDate:wakupDateCopy error:&v30];
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
    v25 = [(_CDInBedDetector *)self detectInBedWithPolicyV2BetweenStartDate:dateCopy endDate:wakupDateCopy error:&v29 motionBased:1];
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
  if (error && v13)
  {
    v14 = v13;
    *error = v13;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)lockedTimesBetweenStartDate:(id)date endDate:(id)endDate error:(id *)error
{
  v84[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  v72 = dateCopy;
  v10 = [_DKQuery predicateForEventsIntersectingDateRangeFrom:dateCopy to:endDateCopy];
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
  knowledge = [(_CDInBedDetector *)self knowledge];
  v79 = 0;
  v70 = v13;
  v24 = [knowledge executeQuery:v13 error:&v79];
  v25 = v79;

  if (error && v25)
  {
    v26 = v25;
    array = 0;
    *error = v25;
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
    v68 = endDateCopy;
    v31 = [_DKQuery predicateForEventsWithEndInDateRangeFrom:v72 to:endDateCopy];
    v32 = +[_DKBoolCategory yes];
    v33 = [_DKQuery predicateForEventsWithCategoryValue:v32];
    v34 = [_DKQuery endDateSortDescriptorAscending:0];
    v78 = v25;
    v35 = [(_CDInBedDetector *)self findDateIntervalOfEventInStream:v30 datePredicate:v31 valuePredicate:v33 sortDescriptor:v34 error:&v78];
    v36 = v78;

    endDate = [v35 endDate];

    v27 = v36;
    if (error && v36)
    {
      v38 = v36;
      array = 0;
      *error = v36;
      v10 = v67;
      endDateCopy = v68;
      v28 = v71;
      v24 = v66;
    }

    else
    {
      if (endDate)
      {
        v24 = v66;
        v10 = v67;
        endDateCopy = v68;
        if (![v66 count])
        {
          goto LABEL_11;
        }

        lastObject = [v66 lastObject];
        endDate2 = [lastObject endDate];
        v41 = endDate;
        v42 = [endDate2 compare:endDate];

        v43 = v42 == -1;
        endDate = v41;
        if (v43)
        {
LABEL_11:
          v44 = endDate;

          endDateCopy = v44;
        }
      }

      else
      {
        v10 = v67;
        endDateCopy = v68;
        v24 = v66;
      }

      if ([v24 count])
      {
        v64 = endDate;
        v65 = v27;
        v69 = endDateCopy;
        array = [MEMORY[0x1E695DF70] array];
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
          endDate3 = v45;
          do
          {
            v51 = 0;
            v52 = endDate3;
            do
            {
              if (*v75 != v49)
              {
                objc_enumerationMutation(v46);
              }

              v53 = *(*(&v74 + 1) + 8 * v51);
              v54 = objc_alloc_init(_CDInBedDetection);
              [(_CDInBedDetection *)v54 setStartDate:v52];
              startDate = [v53 startDate];
              v56 = [startDate laterDate:v45];
              [(_CDInBedDetection *)v54 setEndDate:v56];

              [(_CDInBedDetection *)v54 setConfidence:1.0];
              [(_CDInBedDetection *)v54 duration];
              if (v57 > 0.0)
              {
                [array addObject:v54];
              }

              endDate3 = [v53 endDate];

              ++v51;
              v52 = endDate3;
            }

            while (v48 != v51);
            v48 = [v46 countByEnumeratingWithState:&v74 objects:v80 count:16];
          }

          while (v48);
        }

        else
        {
          endDate3 = v45;
        }

        endDateCopy = v69;
        v59 = [endDate3 earlierDate:v69];
        v60 = [v59 isEqualToDate:endDate3];

        if (v60)
        {
          v61 = objc_alloc_init(_CDInBedDetection);
          [(_CDInBedDetection *)v61 setStartDate:endDate3];
          [(_CDInBedDetection *)v61 setEndDate:v69];
          [array addObject:v61];
        }

        v28 = v71;
        v29 = v72;
        v24 = v66;
        v10 = v67;
        endDate = v64;
        v27 = v65;
      }

      else
      {
        v58 = objc_alloc_init(_CDInBedDetection);
        [(_CDInBedDetection *)v58 setStartDate:v72];
        [(_CDInBedDetection *)v58 setEndDate:endDateCopy];
        v81 = v58;
        array = [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1];

        v28 = v71;
      }
    }
  }

  v62 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)detectInBedWithPolicyV1BetweenStartDate:(id)date endDate:(id)endDate error:(id *)error
{
  v61 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  [endDateCopy dateByAddingTimeInterval:-3600.0];
  v52[1] = 0;
  v47 = v49 = dateCopy;
  v9 = [_CDInBedDetector findLatestEndOfMovementBetweenStartDate:"findLatestEndOfMovementBetweenStartDate:endDate:error:" endDate:dateCopy error:?];
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
    v27 = [(_CDInBedDetector *)self lockedTimesBetweenStartDate:v20 endDate:endDateCopy error:&v50];
    v48 = v50;
    if (v48)
    {
      if (error)
      {
        *error = v48;
      }

      v29 = self->_log;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v54 = v20;
        v55 = 2112;
        v56 = endDateCopy;
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
    firstObject = [v27 firstObject];
    [firstObject startDate];
    v35 = v44 = endDateCopy;
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
    endDateCopy = v44;

    v21 = v42;
  }

  v40 = *MEMORY[0x1E69E9840];

  return v27;
}

- (id)detectInBedWithPolicyV2BetweenStartDate:(id)date endDate:(id)endDate error:(id *)error motionBased:(BOOL)based
{
  basedCopy = based;
  v106 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  v11 = [dateCopy dateByAddingTimeInterval:14400.0];
  v12 = [endDateCopy dateByAddingTimeInterval:-60.0];
  v13 = [v11 earlierDate:v12];
  v96 = 0;
  v14 = [(_CDInBedDetector *)self findLatestEndOfMovementBetweenStartDate:dateCopy endDate:v13 error:&v96];
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
    v16 = dateCopy;
  }

  v17 = v16;

  v18 = v17;
  v19 = [v18 dateByAddingTimeInterval:5400.0];
  v20 = [endDateCopy dateByAddingTimeInterval:-60.0];
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

  v31 = [endDateCopy dateByAddingTimeInterval:-3600.0];
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
  v35 = [(_CDInBedDetector *)self findMotionTerminusBetweenStartDate:v31 endDate:endDateCopy latest:0 error:&v93];
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
    v39 = endDateCopy;
  }

  v40 = v39;

  v81 = v11;
  v82 = dateCopy;
  v83 = v40;
  if (basedCopy)
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

    array = [MEMORY[0x1E695DF70] array];
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
            startDate = [v51 startDate];
            [(_CDInBedDetection *)v53 setStartDate:startDate];

            endDate = [v51 endDate];
            [(_CDInBedDetection *)v53 setEndDate:endDate];

            [(_CDInBedDetection *)v53 setConfidence:1.0];
            [array addObject:v53];
          }
        }

        v48 = [v46 countByEnumeratingWithState:&v88 objects:v105 count:16];
      }

      while (v48);
    }

    dateCopy = v82;
    v21 = v73;
    v18 = v75;
    v25 = v84;
  }

  else
  {
    array = 0;
  }

  v56 = v86;
  if ([array count])
  {
    v57 = [array copy];
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
      if (error)
      {
        v61 = v60;
        *error = v58;
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
    firstObject = [v57 firstObject];
    [firstObject startDate];
    v78 = v58;
    v67 = v66 = v57;
    lastObject = [v66 lastObject];
    endDate2 = [lastObject endDate];
    *buf = 138413058;
    v98 = v72;
    v99 = 2112;
    v100 = v67;
    v101 = 2112;
    v102 = endDate2;
    v103 = 2112;
    v104 = v74;
    _os_log_impl(&dword_191750000, v76, OS_LOG_TYPE_DEFAULT, "Found %@ in-bed intervals between %@ & %@ using %@-based heuristic", buf, 0x2Au);

    dateCopy = v82;
    v56 = v86;

    v57 = v66;
    v58 = v78;
  }

  v70 = *MEMORY[0x1E69E9840];

  return v57;
}

- (id)findMotionTerminusBetweenStartDate:(id)date endDate:(id)endDate latest:(BOOL)latest error:(id *)error
{
  latestCopy = latest;
  v62 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  v11 = [dateCopy earlierDate:endDateCopy];
  v12 = [v11 isEqualToDate:endDateCopy];

  if (v12)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [_CDInBedDetector findMotionTerminusBetweenStartDate:endDate:latest:error:];
    }

LABEL_22:
    startDate3 = 0;
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
  [v13 queryActivityStartingFromDate:dateCopy toDate:endDateCopy toQueue:v14 withHandler:v44];
  v16 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(dsema, v16))
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [_CDInBedDetector findMotionTerminusBetweenStartDate:endDate:latest:error:];
    }

    [v14 cancelAllOperations];
  }

  startDate = endDateCopy;
  if (latestCopy)
  {
    v42 = 0uLL;
    v43 = 0uLL;
    v40 = 0uLL;
    v41 = 0uLL;
    reverseObjectEnumerator = [v49[5] reverseObjectEnumerator];
    startDate3 = [reverseObjectEnumerator countByEnumeratingWithState:&v40 objects:v61 count:16];
    if (startDate3)
    {
      v20 = *v41;
      startDate2 = startDate;
      while (2)
      {
        v22 = 0;
        v23 = startDate;
        v24 = startDate2;
        do
        {
          if (*v41 != v20)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v25 = *(*(&v40 + 1) + 8 * v22);
          if (([v25 stationary] & 1) == 0 && objc_msgSend(v25, "confidence") == 1)
          {
            startDate2 = v24;
            startDate = v23;
            startDate3 = startDate2;
            goto LABEL_36;
          }

          startDate = [v25 startDate];

          startDate2 = [v25 startDate];

          v22 = v22 + 1;
          v23 = startDate;
          v24 = startDate2;
        }

        while (startDate3 != v22);
        startDate3 = [reverseObjectEnumerator countByEnumeratingWithState:&v40 objects:v61 count:16];
        if (startDate3)
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
    reverseObjectEnumerator = [v49[5] objectEnumerator];
    startDate3 = [reverseObjectEnumerator countByEnumeratingWithState:&v36 objects:v60 count:16];
    if (startDate3)
    {
      v26 = *v37;
      while (2)
      {
        for (i = 0; i != startDate3; i = i + 1)
        {
          if (*v37 != v26)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v28 = *(*(&v36 + 1) + 8 * i);
          if (([v28 stationary] & 1) == 0 && objc_msgSend(v28, "confidence") == 1)
          {
            startDate3 = [v28 startDate];
            goto LABEL_34;
          }
        }

        startDate3 = [reverseObjectEnumerator countByEnumeratingWithState:&v36 objects:v60 count:16];
        if (startDate3)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_34:
  startDate2 = startDate;
LABEL_36:

  if (error)
  {
    v29 = v55[5];
    if (v29)
    {
      *error = v29;
    }
  }

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v54, 8);

LABEL_40:
  v30 = *MEMORY[0x1E69E9840];

  return startDate3;
}

- (id)stationaryIntervalsBetweenStartDate:(id)date endDate:(id)endDate error:(id *)error
{
  v56 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  v34 = dateCopy;
  v9 = [dateCopy earlierDate:endDateCopy];
  v10 = [v9 isEqualToDate:endDateCopy];

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
  [v12 queryActivityStartingFromDate:dateCopy toDate:endDateCopy toQueue:v13 withHandler:v39];
  v15 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(dsema, v15))
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [_CDInBedDetector findMotionTerminusBetweenStartDate:endDate:latest:error:];
    }

    [v13 cancelAllOperations];
  }

  array = [MEMORY[0x1E695DF70] array];
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
        startDate = [v22 startDate];
      }

      else
      {
        if (!v18)
        {
          continue;
        }

        v24 = objc_alloc(MEMORY[0x1E696AB80]);
        startDate2 = [v22 startDate];
        v26 = [v24 initWithStartDate:v18 endDate:startDate2];
        [array addObject:v26];

        startDate = 0;
      }

      v18 = startDate;
    }

    v19 = [v17 countByEnumeratingWithState:&v35 objects:v55 count:16];
  }

  while (v19);

  if (v18)
  {
    v17 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v18 endDate:endDateCopy];
    [array addObject:v17];
    goto LABEL_23;
  }

LABEL_24:
  if (error)
  {
    v27 = v50[5];
    if (v27)
    {
      *error = v27;
    }
  }

  v11 = [array copy];

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v49, 8);

LABEL_28:
  v28 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)findLastTimeDeviceWasLockedBetweenStartDate:(id)date endDate:(id)endDate error:(id *)error
{
  endDateCopy = endDate;
  dateCopy = date;
  v10 = +[_DKSystemEventStreams deviceIsLockedStream];
  v11 = [_DKQuery predicateForEventsWithEndInDateRangeFrom:dateCopy to:endDateCopy];

  v12 = +[_DKBoolCategory no];
  v13 = [_DKQuery predicateForEventsWithCategoryValue:v12];
  v14 = [_DKQuery endDateSortDescriptorAscending:0];
  v15 = [(_CDInBedDetector *)self findDateIntervalOfEventInStream:v10 datePredicate:v11 valuePredicate:v13 sortDescriptor:v14 error:error];
  endDate = [v15 endDate];

  return endDate;
}

- (id)findLastTimeDeviceWasPluggedInBetweenStartDate:(id)date endDate:(id)endDate error:(id *)error
{
  endDateCopy = endDate;
  dateCopy = date;
  v10 = +[_DKSystemEventStreams deviceIsPluggedInStream];
  v11 = [_DKQuery predicateForEventsWithEndInDateRangeFrom:dateCopy to:endDateCopy];

  v12 = +[_DKBoolCategory no];
  v13 = [_DKQuery predicateForEventsWithCategoryValue:v12];
  v14 = [_DKQuery endDateSortDescriptorAscending:0];
  v15 = [(_CDInBedDetector *)self findDateIntervalOfEventInStream:v10 datePredicate:v11 valuePredicate:v13 sortDescriptor:v14 error:error];
  endDate = [v15 endDate];

  return endDate;
}

- (id)findDateIntervalOfEventInStream:(id)stream datePredicate:(id)predicate valuePredicate:(id)valuePredicate sortDescriptor:(id)descriptor error:(id *)error
{
  v34[1] = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  predicateCopy = predicate;
  valuePredicateCopy = valuePredicate;
  descriptorCopy = descriptor;
  v16 = objc_alloc_init(_DKEventQuery);
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_CDInBedDetector.m"];
  v18 = [v17 stringByAppendingFormat:@":%d", 638];
  [(_DKQuery *)v16 setClientName:v18];

  [(_DKQuery *)v16 setTracker:&__block_literal_global_557];
  v34[0] = streamCopy;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:1];
  [(_DKEventQuery *)v16 setEventStreams:v19];

  v20 = MEMORY[0x1E696AB28];
  v33[0] = predicateCopy;
  v33[1] = valuePredicateCopy;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v22 = [v20 andPredicateWithSubpredicates:v21];
  [(_DKEventQuery *)v16 setPredicate:v22];

  v32 = descriptorCopy;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  [(_DKEventQuery *)v16 setSortDescriptors:v23];

  [(_DKEventQuery *)v16 setLimit:1];
  [(_DKEventQuery *)v16 setResultType:2];
  knowledge = [(_CDInBedDetector *)self knowledge];
  v31 = 0;
  v25 = [knowledge executeQuery:v16 error:&v31];
  v26 = v31;

  if (v26)
  {
    if (error)
    {
      v27 = v26;
      firstObject = 0;
      *error = v26;
    }

    else
    {
      firstObject = 0;
    }
  }

  else
  {
    firstObject = [v25 firstObject];
  }

  v29 = *MEMORY[0x1E69E9840];

  return firstObject;
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