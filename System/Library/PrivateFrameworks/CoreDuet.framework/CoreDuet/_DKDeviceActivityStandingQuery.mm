@interface _DKDeviceActivityStandingQuery
- (_DKDeviceActivityStandingQuery)init;
- (_DKHistogram)histogramForDate:(void *)date withReference:(void *)reference andUpdate:;
- (double)_deviceActivityEphemerality;
- (id)_customIdentifierForDayOfWeek:(void *)week;
- (id)_predicateForDeletedEventsWithReferenceDate:(uint64_t)date;
- (id)fetchResult;
- (id)fetchResultForDayOfWeek:(int64_t)week;
- (id)fetchResultForDayOfWeek:(int64_t)week withStorage:(id)storage;
- (id)fetchResultFromStorage:(id)storage;
- (uint64_t)_shouldDefer;
- (void)executeWithStorage:(id)storage;
- (void)executeWithStorage:(id)storage referenceDate:(id)date;
@end

@implementation _DKDeviceActivityStandingQuery

- (_DKDeviceActivityStandingQuery)init
{
  v6.receiver = self;
  v6.super_class = _DKDeviceActivityStandingQuery;
  v2 = [(_DKDeviceActivityStandingQuery *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    [(_DKDeviceActivityStandingQuery *)v2 setQueryIdentifier:v4];
  }

  return v2;
}

- (void)executeWithStorage:(id)storage
{
  v4 = MEMORY[0x1E695DF00];
  storageCopy = storage;
  date = [v4 date];
  [(_DKDeviceActivityStandingQuery *)self executeWithStorage:storageCopy referenceDate:date];
}

- (id)fetchResult
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  date = [MEMORY[0x1E695DF00] date];
  v5 = [currentCalendar component:512 fromDate:date];

  return [(_DKDeviceActivityStandingQuery *)self fetchResultForDayOfWeek:v5];
}

- (id)fetchResultForDayOfWeek:(int64_t)week
{
  v5 = +[_DKKnowledgeStore knowledgeStore];
  v6 = [(_DKDeviceActivityStandingQuery *)self fetchResultForDayOfWeek:week withStorage:v5];

  return v6;
}

- (id)fetchResultFromStorage:(id)storage
{
  v4 = MEMORY[0x1E695DEE8];
  storageCopy = storage;
  currentCalendar = [v4 currentCalendar];
  date = [MEMORY[0x1E695DF00] date];
  v8 = [currentCalendar component:512 fromDate:date];

  v9 = [(_DKDeviceActivityStandingQuery *)self fetchResultForDayOfWeek:v8 withStorage:storageCopy];

  return v9;
}

- (uint64_t)_shouldDefer
{
  v10 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    result = [result activity];
    if (result)
    {
      v2 = result;
      activity = [v1 activity];
      should_defer = xpc_activity_should_defer(activity);

      if (should_defer)
      {
        v5 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          queryIdentifier = [v1 queryIdentifier];
          v8 = 138412290;
          v9 = queryIdentifier;
          _os_log_impl(&dword_191750000, v5, OS_LOG_TYPE_DEFAULT, "Activity deferral requested for %@", &v8, 0xCu);
        }

        result = 1;
      }

      else
      {
        result = 0;
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (double)_deviceActivityEphemerality
{
  if (!self)
  {
    return 0.0;
  }

  v1 = +[_DKSystemEventStreams deviceActivityLevelStream];
  v2 = [_CDEventStreams eventStreamPropertiesForEventStream:v1];
  [v2 timeToLive];
  v4 = v3;

  return v4;
}

- (id)_customIdentifierForDayOfWeek:(void *)week
{
  if (week)
  {
    v3 = MEMORY[0x1E696AEC0];
    queryIdentifier = [week queryIdentifier];
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
    v6 = [v3 stringWithFormat:@"%@-%@-%@", queryIdentifier, v5, &unk_1F05EEE68];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_predicateForDeletedEventsWithReferenceDate:(uint64_t)date
{
  v12[2] = *MEMORY[0x1E69E9840];
  if (date)
  {
    v3 = a2;
    v4 = [v3 dateByAddingTimeInterval:--[_DKDeviceActivityStandingQuery _deviceActivityEphemerality](date)];

    v5 = [_DKQuery predicateForEventsWithStartDateOrCreationDateBefore:v4];
    v6 = +[_DKPredictor deviceActivityLikelihoodQueryPredicate];
    v7 = MEMORY[0x1E696AB28];
    v12[0] = v6;
    v12[1] = v5;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    v9 = [v7 andPredicateWithSubpredicates:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (_DKHistogram)histogramForDate:(void *)date withReference:(void *)reference andUpdate:
{
  v7 = a2;
  dateCopy = date;
  referenceCopy = reference;
  if (self)
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v11 = [currentCalendar component:512 fromDate:v7];

    v12 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
    v13 = [referenceCopy objectForKeyedSubscript:v12];

    if (!v13)
    {
      v13 = objc_alloc_init(_DKHistogram);
      v15 = +[_DKSystemEventStreams deviceActivityLevelStream];
      [(_DKHistogram *)v13 setStream:v15];

      v16 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v7 endDate:dateCopy];
      [(_DKHistogram *)v13 setInterval:v16];

      v17 = [(_DKDeviceActivityStandingQuery *)self _customIdentifierForDayOfWeek:v11];
      [(_DKHistogram *)v13 setCustomIdentifier:v17];

      v18 = [MEMORY[0x1E696AD98] numberWithInteger:v11];
      [referenceCopy setObject:v13 forKeyedSubscript:v18];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)executeWithStorage:(id)storage referenceDate:(id)date
{
  v140[1] = *MEMORY[0x1E69E9840];
  storageCopy = storage;
  dateCopy = date;
  if (([(_DKDeviceActivityStandingQuery *)self _shouldDefer]& 1) != 0)
  {
    goto LABEL_2;
  }

  v9 = [(_DKDeviceActivityStandingQuery *)self _predicateForDeletedEventsWithReferenceDate:dateCopy];
  v10 = +[_DKSystemEventStreams deviceActivityLevelStream];
  v140[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v140 count:1];
  v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:1];
  v139 = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v139 count:1];
  v14 = [_DKEventQuery eventQueryWithPredicate:v9 eventStreams:v11 offset:0 limit:0 sortDescriptors:v13];

  queryIdentifier = [(_DKDeviceActivityStandingQuery *)self queryIdentifier];
  if (queryIdentifier)
  {
    [v14 setClientName:queryIdentifier];
  }

  else
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_DKStandingQuery.m"];
    v17 = [v16 stringByAppendingFormat:@":%d", 118];
    [v14 setClientName:v17];
  }

  v132 = 0;
  v18 = [storageCopy executeQuery:v14 error:&v132];
  v19 = v132;
  if (([(_DKDeviceActivityStandingQuery *)self _shouldDefer]& 1) != 0)
  {
    goto LABEL_76;
  }

  if (v19)
  {
    v20 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_26();
      *(v80 + 4) = v19;
      _os_log_error_impl(&dword_191750000, v20, OS_LOG_TYPE_ERROR, "Encountered error while fetching device activity events to be deleted: %@.", buf, 0xCu);
    }
  }

  if (![v18 count])
  {
    log = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_191750000, log, OS_LOG_TYPE_DEBUG, "No device activity events to process.", buf, 2u);
    }

    goto LABEL_75;
  }

  log = [MEMORY[0x1E695DF90] dictionaryWithCapacity:7];
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v21 = v18;
  v113 = v14;
  v114 = v9;
  v117 = v19;
  v118 = v18;
  v115 = [v21 countByEnumeratingWithState:&v128 objects:v138 count:16];
  if (v115)
  {
    v22 = *v129;
    v108 = *v129;
    v109 = v21;
    while (2)
    {
      v23 = 0;
      do
      {
        if (*v129 != v22)
        {
          objc_enumerationMutation(v21);
        }

        v119 = v23;
        v24 = *(*(&v128 + 1) + 8 * v23);
        if (([(_DKDeviceActivityStandingQuery *)self _shouldDefer]& 1) != 0)
        {
          goto LABEL_74;
        }

        v25 = objc_autoreleasePoolPush();
        startDate = [v24 startDate];
        v27 = startDate;
        context = v25;
        if (self)
        {
          v28 = [startDate slotFromMidnightWithTotalSlotsInDay:96];
        }

        else
        {
          v28 = 0;
        }

        startDate2 = [v24 startDate];
        v30 = [(_DKDeviceActivityStandingQuery *)self histogramForDate:startDate2 withReference:dateCopy andUpdate:log];

        startDate3 = [v24 startDate];
        [dateCopy timeIntervalSinceDate:startDate3];
        v33 = v32;
        _deviceActivityEphemerality = [(_DKDeviceActivityStandingQuery *)self _deviceActivityEphemerality];
        if (v33 <= _deviceActivityEphemerality)
        {
          v81 = +[_CDLogging knowledgeChannel];
          v18 = v118;
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_191750000, v81, OS_LOG_TYPE_DEBUG, "Encountered event still has time to live, skip soon-to-to-deleted historgram construction as this point.", buf, 2u);
          }

          objc_autoreleasePoolPop(context);
          v9 = v114;
          v19 = v117;
          goto LABEL_56;
        }

        v35 = _deviceActivityEphemerality;
        v36 = (v33 - _deviceActivityEphemerality) / -604800.0;
        v37 = exp2f(v36);
        v38 = [MEMORY[0x1E696AD98] numberWithInteger:v28];
        [v30 addValue:v38 withCount:v37];

        endDate = [v24 endDate];
        [endDate timeIntervalSinceDate:startDate3];
        v41 = v40;

        v42 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          endDate2 = [v24 endDate];
          OUTLINED_FUNCTION_1_26();
          *(v44 + 4) = startDate3;
          v135 = 2112;
          *(v44 + 14) = v45;
          v136 = 1024;
          v137 = v41;
          _os_log_impl(&dword_191750000, v42, OS_LOG_TYPE_INFO, "Binning event with startDate: %@, endDate: %@ (excessTime = %d)", buf, 0x1Cu);
        }

        if (v41 < 1)
        {
          v47 = startDate3;
          v53 = v30;
        }

        else
        {
          while (1)
          {
            v46 = objc_autoreleasePoolPush();
            if (v41 <= 0x384)
            {
              break;
            }

            v47 = [startDate3 dateByAddingTimeInterval:900.0];

            if (self)
            {
              v48 = [v47 slotFromMidnightWithTotalSlotsInDay:96];
            }

            else
            {
              v48 = 0;
            }

            v49 = OUTLINED_FUNCTION_0_32();
            v53 = [(_DKDeviceActivityStandingQuery *)v49 histogramForDate:v50 withReference:v51 andUpdate:v52];

            [dateCopy timeIntervalSinceDate:v47];
            if (v54 <= v35)
            {
              v65 = +[_CDLogging knowledgeChannel];
              if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_debug_impl(&dword_191750000, v65, OS_LOG_TYPE_DEBUG, "Encountered event still has time to live, skip soon-to-to-deleted histogram construction as this point.", buf, 2u);
              }

              startDate3 = v47;
              goto LABEL_46;
            }

            v55 = (v54 - v35) / -604800.0;
            v56 = exp2f(v55);
            v57 = [MEMORY[0x1E696AD98] numberWithInteger:v48];
            [v53 addValue:v57 withCount:v56];

            endDate3 = [v24 endDate];
            [endDate3 timeIntervalSinceDate:v47];
            v41 = v59;

            objc_autoreleasePoolPop(v46);
            v30 = v53;
            startDate3 = v47;
            if (v41 <= 0)
            {
              goto LABEL_35;
            }
          }

          [startDate3 timeIntervalSince1970];
          v61 = fmod(v60, 900.0);
          endDate4 = [v24 endDate];
          [endDate4 timeIntervalSinceDate:startDate3];
          v64 = v63;

          if (v61 + v64 <= 900.0)
          {
            v53 = v30;
            goto LABEL_33;
          }

          endDate5 = [v24 endDate];
          v67 = endDate5;
          if (self)
          {
            v68 = [endDate5 slotFromMidnightWithTotalSlotsInDay:96];
          }

          else
          {
            v68 = 0;
          }

          endDate6 = [v24 endDate];
          v70 = OUTLINED_FUNCTION_0_32();
          v53 = [(_DKDeviceActivityStandingQuery *)v70 histogramForDate:v71 withReference:v72 andUpdate:v73];

          endDate7 = [v24 endDate];
          [dateCopy timeIntervalSinceDate:endDate7];
          v76 = v75;

          if (v76 <= v35)
          {
            v65 = +[_CDLogging knowledgeChannel];
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              _os_log_debug_impl(&dword_191750000, v65, OS_LOG_TYPE_DEBUG, "Encountered event still has time to live, skip soon-to-to-deleted histogram construction as this point.", buf, 2u);
            }
          }

          else
          {
            v77 = (v76 - v35) / -604800.0;
            v78 = exp2f(v77);
            v65 = [MEMORY[0x1E696AD98] numberWithInteger:v68];
            [v53 addValue:v65 withCount:v78];
          }

LABEL_46:

LABEL_33:
          objc_autoreleasePoolPop(v46);
          v47 = startDate3;
        }

LABEL_35:

        objc_autoreleasePoolPop(context);
        v18 = v118;
        v23 = v119 + 1;
        v9 = v114;
        v14 = v113;
        v19 = v117;
        v22 = v108;
        v21 = v109;
      }

      while (v119 + 1 != v115);
      v79 = [v109 countByEnumeratingWithState:&v128 objects:v138 count:16];
      v115 = v79;
      if (v79)
      {
        continue;
      }

      break;
    }
  }

LABEL_56:

  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v21 = log;
  v120 = [v21 countByEnumeratingWithState:&v124 objects:v133 count:16];
  if (!v120)
  {
    goto LABEL_74;
  }

  v82 = *v125;
  v110 = *v125;
  while (2)
  {
    v83 = 0;
    do
    {
      if (*v125 != v82)
      {
        objc_enumerationMutation(v21);
      }

      v84 = v21;
      v85 = *(*(&v124 + 1) + 8 * v83);
      if (([(_DKDeviceActivityStandingQuery *)self _shouldDefer]& 1) != 0)
      {
        v14 = v113;
        goto LABEL_73;
      }

      v86 = -[_DKDeviceActivityStandingQuery _customIdentifierForDayOfWeek:](self, [v85 integerValue]);
      v87 = +[_DKSystemEventStreams deviceActivityLevelStream];
      contexta = v86;
      v88 = [_DKHistogramQuery histogramQueryForPersistedHistogramsForStream:v87 withCustomIdentifier:v86];

      v123 = 0;
      v89 = [storageCopy executeQuery:v88 error:&v123];
      v116 = v123;
      if (v116)
      {
        v90 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
        {
          OUTLINED_FUNCTION_1_26();
          *(v101 + 4) = v116;
          _os_log_debug_impl(&dword_191750000, v90, OS_LOG_TYPE_DEBUG, "Encountered error while fetching existing device activity histogram: %@", buf, 0xCu);
        }
      }

      v91 = [v84 objectForKeyedSubscript:v85];
      if (v89)
      {
        v92 = [storageCopy deleteHistogram:v89];
        if (v92 == 1)
        {
          interval = [v89 interval];
          [interval endDate];
          v94 = v107 = v88;
          [dateCopy timeIntervalSinceDate:v94];
          v96 = v95;

          v97 = v96 / -604800.0;
          v98 = exp2f(v97);
          v99 = [v84 objectForKeyedSubscript:v85];
          [v89 addHistogram:v99 decayingExistingCounts:v98];

          v100 = v89;
          v91 = v100;
          v88 = v107;
          v9 = v114;
          goto LABEL_69;
        }

        v102 = v92;
        v103 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
        {
          v104 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v102];
          OUTLINED_FUNCTION_1_26();
          *(v106 + 4) = v105;
          _os_log_error_impl(&dword_191750000, v103, OS_LOG_TYPE_ERROR, "Did not delete expected number of histograms (%@).", buf, 0xCu);
        }

        v14 = v113;
        v9 = v114;
        v19 = v117;
        v18 = v118;
LABEL_73:
        v21 = v84;
        goto LABEL_74;
      }

LABEL_69:
      v122[0] = MEMORY[0x1E69E9820];
      v122[1] = 3221225472;
      v122[2] = __67___DKDeviceActivityStandingQuery_executeWithStorage_referenceDate___block_invoke;
      v122[3] = &unk_1E736A4B0;
      v122[4] = v85;
      [storageCopy saveHistogram:v91 responseQueue:0 withCompletion:v122];

      ++v83;
      v18 = v118;
      v19 = v117;
      v21 = v84;
      v82 = v110;
    }

    while (v120 != v83);
    v120 = [v84 countByEnumeratingWithState:&v124 objects:v133 count:16];
    if (v120)
    {
      continue;
    }

    break;
  }

  v14 = v113;
LABEL_74:

LABEL_75:
LABEL_76:

LABEL_2:
  v8 = *MEMORY[0x1E69E9840];
}

- (id)fetchResultForDayOfWeek:(int64_t)week withStorage:(id)storage
{
  storageCopy = storage;
  v7 = [(_DKDeviceActivityStandingQuery *)self _customIdentifierForDayOfWeek:week];
  v8 = +[_DKSystemEventStreams deviceActivityLevelStream];
  v9 = [_DKHistogramQuery histogramQueryForPersistedHistogramsForStream:v8 withCustomIdentifier:v7];

  v10 = [storageCopy executeQuery:v9 error:0];

  return v10;
}

@end