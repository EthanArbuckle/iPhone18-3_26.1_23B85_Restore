@interface _DKSyncLocalKnowledgeStorage
+ (void)_updateEventStatsWithFetchEventsTotal:(void *)total streamNameCounts:;
+ (void)_updateEventStatsWithFetchTombstonesTotal:(void *)total streamNameCounts:;
- (BOOL)deleteEventsWithEventIDs:(id)ds error:(id *)error;
- (BOOL)saveEvents:(id)events error:(id *)error;
- (BOOL)saveSyncedDownWindows:(id)windows peer:(id)peer transportName:(id)name error:(id *)error;
- (_DKSyncHistory)syncHistoryForPeer:(void *)peer streamName:(void *)name transportName:(void *)transportName type:(unint64_t *)type error:;
- (id)additionsSyncHistoryForPeer:(id)peer transportName:(id)name error:(id *)error;
- (id)deletionsSyncHistoryForPeer:(id)peer transportName:(id)name error:(id *)error;
- (id)initWithKnowledgeStorage:(id *)storage;
- (id)lastSyncDownDeletionDateForPeer:(id)peer transportName:(id)name error:(id *)error;
- (id)sortedEventsFromSyncWindows:(id)windows streamNames:(id)names compatibility:(id)compatibility limit:(unint64_t)limit fetchOrder:(int64_t)order error:(id *)error;
- (id)sortedEventsFromSyncWindows:(id)windows streamNames:(id)names limit:(unint64_t)limit fetchOrder:(int64_t)order error:(id *)error;
- (id)sortedSyncDownWindowsOverlappingBetweenDate:(id)date andDate:(id)andDate peer:(id)peer error:(id *)error;
- (id)tombstonesSinceDate:(id)date streamNames:(id)names limit:(unint64_t)limit endDate:(id *)endDate error:(id *)error;
- (void)setLastSyncDownDeletionDate:(id)date previousDate:(id)previousDate forPeer:(id)peer transportName:(id)name error:(id *)error;
@end

@implementation _DKSyncLocalKnowledgeStorage

- (id)sortedEventsFromSyncWindows:(id)windows streamNames:(id)names limit:(unint64_t)limit fetchOrder:(int64_t)order error:(id *)error
{
  namesCopy = names;
  windowsCopy = windows;
  v14 = +[_DKCompatibility currentCompatibility];
  v15 = [(_DKSyncLocalKnowledgeStorage *)self sortedEventsFromSyncWindows:windowsCopy streamNames:namesCopy compatibility:v14 limit:limit fetchOrder:order error:error];

  return v15;
}

- (id)sortedEventsFromSyncWindows:(id)windows streamNames:(id)names compatibility:(id)compatibility limit:(unint64_t)limit fetchOrder:(int64_t)order error:(id *)error
{
  v165 = *MEMORY[0x1E69E9840];
  windowsCopy = windows;
  namesCopy = names;
  compatibilityCopy = compatibility;
  if (error)
  {
    *error = 0;
  }

  if (![windowsCopy count] || !objc_msgSend(namesCopy, "count"))
  {
    v29 = 0;
    goto LABEL_49;
  }

  selfCopy = self;
  limitCopy = limit;
  errorCopy = error;
  v126 = windowsCopy;
  v129 = compatibilityCopy;
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v16 = windowsCopy;
  v17 = [v16 countByEnumeratingWithState:&v136 objects:v164 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v137;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v137 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v136 + 1) + 8 * i);
        startDate = [(_DKSyncWindow *)v22 startDate];
        urgency = [(_DKSyncType *)v22 urgency];
        if (order == 2)
        {
          [_DKQuery predicateForEventsWithCreationInDateRangeFrom:startDate toBefore:urgency];
        }

        else
        {
          [_DKQuery predicateForEventsWithCreationInDateRangeFromAfter:startDate to:urgency];
        }
        v25 = ;

        if (v19)
        {
          v26 = MEMORY[0x1E696AB28];
          v163[0] = v19;
          v163[1] = v25;
          v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v163 count:2];
          v28 = [v26 orPredicateWithSubpredicates:v27];

          v19 = v28;
        }

        else
        {
          v19 = v25;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v136 objects:v164 count:16];
    }

    while (v18);
  }

  else
  {
    v19 = 0;
  }

  v30 = [_DKQuery predicateForEventsWithStreamNames:namesCopy];
  v31 = MEMORY[0x1E696AB28];
  v162[0] = v19;
  v124 = v30;
  v162[1] = v30;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v162 count:2];
  v33 = [v31 andPredicateWithSubpredicates:v32];

  v34 = +[_DKQuery predicateForEventsWithNullSourceDeviceID];
  v35 = MEMORY[0x1E696AB28];
  v161[0] = v33;
  v161[1] = v34;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v161 count:2];
  v37 = [v35 andPredicateWithSubpredicates:v36];

  v38 = +[_DKSystemEventStreams displayIsBacklit];
  name = [v38 name];

  v122 = name;
  v123 = v34;
  if ([namesCopy containsObject:name])
  {
    v120 = [_DKQuery predicateForEventsWithStreamName:name];
    v112 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v120];
    v40 = +[_DKAnyIntegerCategory type];
    v41 = [_DKCategory categoryWithInteger:1 type:v40];
    v117 = [_DKQuery predicateForEventsWithCategoryValue:v41];

    v114 = [_DKQuery predicateForEventsWithMinimumDuration:6.0];
    v42 = MEMORY[0x1E696AB28];
    v160[0] = v117;
    v160[1] = v114;
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v160 count:2];
    v44 = [v42 andPredicateWithSubpredicates:v43];

    v45 = MEMORY[0x1E696AB28];
    v159[0] = v112;
    v159[1] = v44;
    v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v159 count:2];
    v47 = [v45 orPredicateWithSubpredicates:v46];

    v48 = MEMORY[0x1E696AB28];
    v158[0] = v37;
    v158[1] = v47;
    v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v158 count:2];
    v50 = [v48 andPredicateWithSubpredicates:v49];

    v37 = v50;
  }

  v51 = +[_DKSystemEventStreams nowPlayingStream];
  name2 = [v51 name];

  v121 = name2;
  if ([namesCopy containsObject:name2])
  {
    v118 = [_DKQuery predicateForEventsWithStreamName:name2];
    v53 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v118];
    v115 = [_DKQuery predicateForEventsWithStringValue:@"com.apple.quicklook.UIExtension"];
    v54 = +[_DKNowPlayingMetadataKey mediaType];
    v111 = [_DKQuery predicateForObjectsWithMetadataKey:v54 andStringValue:@"kMRMediaRemoteNowPlayingInfoTypeVideo"];

    v55 = +[_DKNowPlayingMetadataKey playing];
    v56 = [_DKQuery predicateForObjectsWithMetadataKey:v55 andIntegerValue:1];

    v57 = MEMORY[0x1E696AB28];
    v157[0] = v115;
    v157[1] = v111;
    v157[2] = v56;
    v58 = v56;
    v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v157 count:3];
    v60 = [v57 andPredicateWithSubpredicates:v59];

    v61 = MEMORY[0x1E696AB28];
    v156[0] = v53;
    v156[1] = v60;
    v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v156 count:2];
    v63 = [v61 orPredicateWithSubpredicates:v62];

    v64 = MEMORY[0x1E696AB28];
    v155[0] = v37;
    v155[1] = v63;
    v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:v155 count:2];
    v66 = [v64 andPredicateWithSubpredicates:v65];

    v37 = v66;
  }

  v67 = +[_DKSystemEventStreams appActivityStream];
  name3 = [v67 name];

  v119 = name3;
  if ([namesCopy containsObject:name3])
  {
    v69 = [_DKQuery predicateForEventsWithStreamName:name3];
    v70 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:v69];
    v71 = +[_DKApplicationActivityMetadataKey isEligibleForPrediction];
    v72 = [_DKQuery predicateForObjectsWithMetadataKey:v71 andIntegerValue:1];

    v73 = MEMORY[0x1E696AB28];
    v154[0] = v70;
    v154[1] = v72;
    v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:v154 count:2];
    v75 = [v73 orPredicateWithSubpredicates:v74];

    v76 = MEMORY[0x1E696AB28];
    v153[0] = v37;
    v153[1] = v75;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v153 count:2];
    v78 = v77 = v37;
    v79 = [v76 andPredicateWithSubpredicates:v78];

    v37 = v79;
  }

  v80 = +[_DKCompatibility currentCompatibility];
  v81 = [v129 isEqual:v80];

  if (v81)
  {
    v82 = 0x1E695D000;
  }

  else
  {
    eventPredicate = [v129 eventPredicate];
    v84 = MEMORY[0x1E696AB28];
    v152[0] = v37;
    v152[1] = eventPredicate;
    v82 = 0x1E695D000uLL;
    v85 = [MEMORY[0x1E695DEC8] arrayWithObjects:v152 count:2];
    v86 = [v84 andPredicateWithSubpredicates:v85];

    v37 = v86;
  }

  v116 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:order != 2];
  v151 = v116;
  v87 = [*(v82 + 3784) arrayWithObjects:&v151 count:1];
  v88 = [_DKEventQuery eventQueryWithPredicate:v37 eventStreams:0 offset:0 limit:limitCopy sortDescriptors:v87];
  v89 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_DKSyncLocalKnowledgeStorage.m"];
  v90 = [v89 stringByAppendingFormat:@":%d", 198];
  [v88 setClientName:v90];

  [v88 setTracker:&__block_literal_global_41];
  storage = selfCopy->_storage;
  v135 = 0;
  v29 = [(_DKKnowledgeStorage *)storage executeQuery:v88 error:&v135];
  v92 = v135;
  if (order == 2 && v29)
  {
    if (![v29 count])
    {
      goto LABEL_35;
    }

    reverseObjectEnumerator = [v29 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];

    v29 = allObjects;
  }

  if (v29)
  {
LABEL_35:
    if ([v29 count])
    {
      v113 = v37;
      v95 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
      {
        v106 = [objc_opt_class() description];
        v107 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v29, "count")}];
        v108 = _DKSyncLoggingWindowsDescription(v16);
        v109 = _CDPrettyPrintCollection(namesCopy, 0, 0, 0);
        v110 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:limitCopy];
        *buf = 138544386;
        v142 = v106;
        v143 = 2112;
        v144 = v107;
        v145 = 2114;
        v146 = v108;
        v147 = 2114;
        v148 = v109;
        v149 = 2112;
        v150 = v110;
        _os_log_debug_impl(&dword_191750000, v95, OS_LOG_TYPE_DEBUG, "%{public}@: Found %@ events in windows %{public}@ on streams %{public}@ with limit %@", buf, 0x34u);
      }

      v96 = objc_opt_new();
      v131 = 0u;
      v132 = 0u;
      v133 = 0u;
      v134 = 0u;
      v29 = v29;
      v97 = [v29 countByEnumeratingWithState:&v131 objects:v140 count:16];
      if (v97)
      {
        v98 = v97;
        v99 = *v132;
        do
        {
          for (j = 0; j != v98; ++j)
          {
            if (*v132 != v99)
            {
              objc_enumerationMutation(v29);
            }

            stream = [*(*(&v131 + 1) + 8 * j) stream];
            name4 = [stream name];
            [v96 addObject:name4];
          }

          v98 = [v29 countByEnumeratingWithState:&v131 objects:v140 count:16];
        }

        while (v98);
      }

      +[_DKSyncLocalKnowledgeStorage _updateEventStatsWithFetchEventsTotal:streamNameCounts:](_DKSyncLocalKnowledgeStorage, [v29 count], v96);
      v37 = v113;
    }
  }

  if (errorCopy)
  {
    v103 = v92;
    *errorCopy = v92;
  }

  windowsCopy = v126;
  compatibilityCopy = v129;
LABEL_49:

  v104 = *MEMORY[0x1E69E9840];

  return v29;
}

+ (void)_updateEventStatsWithFetchEventsTotal:(void *)total streamNameCounts:
{
  v21 = *MEMORY[0x1E69E9840];
  totalCopy = total;
  objc_opt_self();
  if (_updateEventStatsWithFetchEventsTotal_streamNameCounts__fetchEventsCounterInitialized != -1)
  {
    +[_DKSyncLocalKnowledgeStorage _updateEventStatsWithFetchEventsTotal:streamNameCounts:];
  }

  [(_DKEventStatsCounter *)_updateEventStatsWithFetchEventsTotal_streamNameCounts__fetchEventsTotalCounter incrementCountByNumber:a2];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = totalCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [_updateEventStatsWithFetchEventsTotal_streamNameCounts__fetchEventsCountersByStreamName objectForKeyedSubscript:v10];
        if (!v11)
        {
          v12 = MEMORY[0x1E696AEC0];
          v13 = [_DKEventStatsUtilities safeStringWithString:v10];
          v14 = [v12 stringWithFormat:@"sync_fetch_local_events_stream%@", v13];

          v11 = [_DKEventStatsCounter counterInCollection:v14 withEventName:?];
          [_updateEventStatsWithFetchEventsTotal_streamNameCounts__fetchEventsCountersByStreamName setObject:v11 forKeyedSubscript:v10];
        }

        -[_DKEventStatsCounter incrementCountByNumber:](v11, [v5 countForObject:v10]);
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)tombstonesSinceDate:(id)date streamNames:(id)names limit:(unint64_t)limit endDate:(id *)endDate error:(id *)error
{
  v98 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  namesCopy = names;
  v13 = namesCopy;
  if (error)
  {
    *error = 0;
  }

  if ([namesCopy count])
  {
    selfCopy = self;
    endDateCopy = endDate;
    errorCopy = error;
    v73 = dateCopy;
    v14 = objc_opt_new();
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v72 = v13;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v81 objects:v97 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v82;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v82 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v81 + 1) + 8 * i);
          v21 = +[_DKTombstoneMetadataKey eventStreamName];
          v22 = [_DKQuery predicateForObjectsWithMetadataKey:v21 andStringValue:v20];
          [v14 addObject:v22];
        }

        v17 = [v15 countByEnumeratingWithState:&v81 objects:v97 count:16];
      }

      while (v17);
    }

    v23 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v14];
    date = [MEMORY[0x1E695DF00] date];
    dateCopy = v73;
    v25 = [_DKQuery predicateForEventsWithCreationInDateRangeFromAfter:v73 to:date];
    v26 = MEMORY[0x1E696AB28];
    v69 = v25;
    v70 = v23;
    v96[0] = v23;
    v96[1] = v25;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:2];
    v28 = [v26 andPredicateWithSubpredicates:v27];

    if (limit < 1)
    {
      v31 = 0;
    }

    else
    {
      v29 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
      v30 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
      v95[0] = v29;
      v95[1] = v30;
      v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:2];
    }

    v33 = +[_DKSystemEventStreams tombstoneStream];
    v94 = v33;
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v94 count:1];
    limitCopy = limit;
    v75 = v31;
    v36 = [_DKEventQuery eventQueryWithPredicate:v28 eventStreams:v34 offset:0 limit:limitCopy sortDescriptors:v31];

    v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_DKSyncLocalKnowledgeStorage.m"];
    v38 = [v37 stringByAppendingFormat:@":%d", 272];
    [v36 setClientName:v38];

    v39 = v36;
    [v36 setTracker:&__block_literal_global_34];
    [v36 setReadMetadata:1];
    storage = selfCopy->_storage;
    v80 = 0;
    v32 = [(_DKKnowledgeStorage *)storage executeQuery:v36 error:&v80];
    v66 = v80;
    if (v66)
    {
      v41 = +[_CDLogging syncChannel];
      v42 = errorCopy;
      v43 = v66;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        [_DKSyncLocalKnowledgeStorage tombstonesSinceDate:selfCopy streamNames:v66 limit:? endDate:? error:?];
      }
    }

    else if ([v32 count])
    {
      v63 = v36;
      v64 = date;
      v44 = objc_opt_new();
      v45 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        v59 = [objc_opt_class() description];
        v60 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v32, "count")}];
        dk_localtimeString = [(NSDate *)v73 dk_localtimeString];
        v62 = _CDPrettyPrintCollection(v15, 0, 0, 0);
        *buf = 138544130;
        v87 = v59;
        v88 = 2112;
        v89 = v60;
        v90 = 2114;
        v91 = dk_localtimeString;
        v92 = 2114;
        v93 = v62;
        _os_log_debug_impl(&dword_191750000, v45, OS_LOG_TYPE_DEBUG, "%{public}@: Found %@ tombstones since %{public}@ on streams %{public}@", buf, 0x2Au);
      }

      v68 = v28;

      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v46 = v32;
      v47 = [v46 countByEnumeratingWithState:&v76 objects:v85 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v77;
        do
        {
          for (j = 0; j != v48; ++j)
          {
            if (*v77 != v49)
            {
              objc_enumerationMutation(v46);
            }

            metadata = [*(*(&v76 + 1) + 8 * j) metadata];
            v52 = +[_DKTombstoneMetadataKey eventStreamName];
            v53 = [metadata objectForKeyedSubscript:v52];

            if (v53)
            {
              [v44 addObject:v53];
            }
          }

          v48 = [v46 countByEnumeratingWithState:&v76 objects:v85 count:16];
        }

        while (v48);
      }

      if (endDateCopy)
      {
        lastObject = [v46 lastObject];
        *endDateCopy = [lastObject creationDate];
      }

      +[_DKSyncLocalKnowledgeStorage _updateEventStatsWithFetchTombstonesTotal:streamNameCounts:](_DKSyncLocalKnowledgeStorage, [v46 count], v44);

      dateCopy = v73;
      v31 = v75;
      v42 = errorCopy;
      v39 = v63;
      date = v64;
      v43 = 0;
      v28 = v68;
    }

    else
    {
      v42 = errorCopy;
      v43 = 0;
      if (endDateCopy)
      {
        v55 = date;
        *endDateCopy = date;
      }
    }

    v13 = v72;
    if (v42)
    {
      v56 = v43;
      *v42 = v43;
    }
  }

  else
  {
    v32 = 0;
  }

  v57 = *MEMORY[0x1E69E9840];

  return v32;
}

+ (void)_updateEventStatsWithFetchTombstonesTotal:(void *)total streamNameCounts:
{
  v21 = *MEMORY[0x1E69E9840];
  totalCopy = total;
  objc_opt_self();
  if (_updateEventStatsWithFetchTombstonesTotal_streamNameCounts__fetchTombstonesCounterInitialized != -1)
  {
    +[_DKSyncLocalKnowledgeStorage _updateEventStatsWithFetchTombstonesTotal:streamNameCounts:];
  }

  [(_DKEventStatsCounter *)_updateEventStatsWithFetchTombstonesTotal_streamNameCounts__fetchTombstonesTotalCounter incrementCountByNumber:a2];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = totalCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [_updateEventStatsWithFetchTombstonesTotal_streamNameCounts__fetchTombstonesCountersByStreamName objectForKeyedSubscript:v10];
        if (!v11)
        {
          v12 = MEMORY[0x1E696AEC0];
          v13 = [_DKEventStatsUtilities safeStringWithString:v10];
          v14 = [v12 stringWithFormat:@"sync_fetch_local_tombstones_stream%@", v13];

          v11 = [_DKEventStatsCounter counterInCollection:v14 withEventName:?];
          [_updateEventStatsWithFetchTombstonesTotal_streamNameCounts__fetchTombstonesCountersByStreamName setObject:v11 forKeyedSubscript:v10];
        }

        -[_DKEventStatsCounter incrementCountByNumber:](v11, [v5 countForObject:v10]);
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)sortedSyncDownWindowsOverlappingBetweenDate:(id)date andDate:(id)andDate peer:(id)peer error:(id *)error
{
  v96[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  andDateCopy = andDate;
  if (error)
  {
    *error = 0;
  }

  errorCopy = error;
  sourceDeviceID = [peer sourceDeviceID];
  v12 = [_DKSyncMetadataStorage windowStreamNameWithSourceDeviceID:sourceDeviceID];

  v13 = +[_DKAnyStringIdentifier type];
  v70 = v12;
  v14 = [_DKEventStream eventStreamWithName:v12 valueType:v13];
  v96[0] = v14;
  v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:v96 count:1];

  v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE"];
  v16 = [_DKQuery predicateForEventsWithStartInDateRangeFrom:dateCopy to:andDateCopy];
  v17 = [_DKQuery predicateForEventsWithEndInDateRangeFrom:dateCopy to:andDateCopy];
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  v71 = dateCopy;
  v19 = [_DKQuery predicateForEventsWithStartInDateRangeFrom:distantPast to:dateCopy];

  v20 = v15;
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  v22 = [_DKQuery predicateForEventsWithEndInDateRangeFrom:andDateCopy to:distantFuture];

  v23 = MEMORY[0x1E696AB28];
  v67 = v22;
  v68 = v19;
  v95[0] = v19;
  v95[1] = v22;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:2];
  v25 = [v23 andPredicateWithSubpredicates:v24];

  v26 = MEMORY[0x1E696AB28];
  v69 = v16;
  v94[0] = v16;
  v94[1] = v17;
  v27 = v17;
  v94[2] = v25;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:3];
  v29 = [v26 orPredicateWithSubpredicates:v28];

  v30 = MEMORY[0x1E696AB28];
  v65 = v29;
  v93[0] = v29;
  v93[1] = v20;
  v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:2];
  v32 = [v30 andPredicateWithSubpredicates:v31];

  v33 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:1];
  v34 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"endDate" ascending:1];
  v63 = v33;
  v92[0] = v33;
  v92[1] = v34;
  v35 = v75;
  v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:2];
  v64 = v32;
  v37 = [_DKEventQuery eventQueryWithPredicate:v32 eventStreams:v75 offset:0 limit:0x7FFFFFFFFFFFFFFFLL sortDescriptors:v36];

  v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_DKSyncLocalKnowledgeStorage.m"];
  v39 = [v38 stringByAppendingFormat:@":%d", 411];
  [v37 setClientName:v39];

  [v37 setTracker:&__block_literal_global_69];
  storage = self->_storage;
  v80 = 0;
  v41 = [(_DKKnowledgeStorage *)storage executeQuery:v37 error:&v80];
  v42 = v80;
  v66 = v25;
  v62 = v34;
  if (v42)
  {
    v43 = +[_CDLogging syncChannel];
    v44 = v70;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v56 = [objc_opt_class() description];
      [v42 domain];
      v57 = v74 = v20;
      code = [v42 code];
      *buf = 138544386;
      v82 = v56;
      v83 = 2114;
      v84 = v70;
      v85 = 2114;
      v86 = v57;
      v87 = 2048;
      v88 = code;
      v89 = 2112;
      v90 = v42;
      _os_log_error_impl(&dword_191750000, v43, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch missing additions window for stream %{public}@: %{public}@:%lld (%@)", buf, 0x34u);

      v20 = v74;
      v35 = v75;
    }

    v45 = v71;
    v46 = errorCopy;
    if (errorCopy)
    {
      v47 = v42;
      v46 = 0;
      *errorCopy = v42;
    }
  }

  else
  {
    v46 = objc_opt_new();
    if ([v41 count])
    {
      v59 = v27;
      v61 = andDateCopy;
      v73 = v20;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v48 = v41;
      v49 = [v48 countByEnumeratingWithState:&v76 objects:v91 count:16];
      if (v49)
      {
        v50 = v49;
        v51 = *v77;
        do
        {
          for (i = 0; i != v50; ++i)
          {
            if (*v77 != v51)
            {
              objc_enumerationMutation(v48);
            }

            v53 = [[_DKSyncWindow alloc] initWithEvent:?];
            [v46 addObject:v53];
          }

          v50 = [v48 countByEnumeratingWithState:&v76 objects:v91 count:16];
        }

        while (v50);
      }

      v44 = v70;
      v45 = v71;
      v27 = v59;
      andDateCopy = v61;
      v20 = v73;
      v35 = v75;
    }

    else
    {
      v44 = v70;
      v45 = v71;
    }
  }

  v54 = *MEMORY[0x1E69E9840];

  return v46;
}

- (BOOL)saveSyncedDownWindows:(id)windows peer:(id)peer transportName:(id)name error:(id *)error
{
  v71 = *MEMORY[0x1E69E9840];
  windowsCopy = windows;
  peerCopy = peer;
  nameCopy = name;
  v11 = peerCopy;
  sourceDeviceID = [peerCopy sourceDeviceID];
  v13 = [_DKSyncMetadataStorage windowStreamNameWithSourceDeviceID:sourceDeviceID];

  v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(windowsCopy, "count")}];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v15 = windowsCopy;
  v16 = [v15 countByEnumeratingWithState:&v52 objects:v70 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v53;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v53 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [_DKSyncMetadataStorage eventFromFetchedWindow:v13 windowStreamName:nameCopy transportName:?];
        if (v20)
        {
          [v14 addObject:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v52 objects:v70 count:16];
    }

    while (v17);
  }

  if ([v14 count])
  {
    storage = self->_storage;
    v51 = 0;
    v22 = [(_DKKnowledgeStorage *)storage saveObjects:v14 error:&v51];
    v23 = v51;
    v24 = +[_CDLogging syncChannel];
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);
    if (v23 || !v22)
    {
      v26 = v11;
      if (v25)
      {
        v48 = [objc_opt_class() description];
        v30 = [v11 me];
        v31 = &stru_1F05B9908;
        v32 = @"pseudo ";
        if (!v30)
        {
          v32 = &stru_1F05B9908;
        }

        v43 = v32;
        identifier = [v11 identifier];
        model = [v11 model];
        if (model)
        {
          v37 = MEMORY[0x1E696AEC0];
          model2 = [v11 model];
          v31 = [v37 stringWithFormat:@" (%@)", model2];
        }

        domain = [v23 domain];
        code = [v23 code];
        *buf = 138544898;
        v57 = v48;
        v58 = 2114;
        v59 = v43;
        v60 = 2114;
        v61 = identifier;
        v62 = 2114;
        v63 = v31;
        v64 = 2114;
        v65 = domain;
        v66 = 2048;
        v67 = code;
        v68 = 2112;
        v69 = v23;
        _os_log_debug_impl(&dword_191750000, v24, OS_LOG_TYPE_DEBUG, "%{public}@: Failed to save additions windows for %{public}@peer %{public}@%{public}@: %{public}@:%lld (%@)", buf, 0x48u);

        if (model)
        {
        }
      }
    }

    else
    {
      v26 = v11;
      if (v25)
      {
        v49 = [objc_opt_class() description];
        v46 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
        v34 = &stru_1F05B9908;
        if ([v11 me])
        {
          v35 = @"pseudo ";
        }

        else
        {
          v35 = &stru_1F05B9908;
        }

        identifier2 = [v11 identifier];
        model3 = [v11 model];
        if (model3)
        {
          v40 = MEMORY[0x1E696AEC0];
          model2 = [v26 model];
          v34 = [v40 stringWithFormat:@" (%@)", model2];
        }

        v41 = _DKSyncLoggingWindowsDescription(v15);
        *buf = 138544642;
        v57 = v49;
        v58 = 2112;
        v59 = v46;
        v60 = 2114;
        v61 = v35;
        v62 = 2114;
        v63 = identifier2;
        v64 = 2114;
        v65 = v34;
        v66 = 2114;
        v67 = v41;
        _os_log_debug_impl(&dword_191750000, v24, OS_LOG_TYPE_DEBUG, "%{public}@: Saved %@ additions windows for %{public}@peer %{public}@%{public}@: windows %{public}@", buf, 0x3Eu);
        if (model3)
        {
        }
      }

      v23 = 0;
    }
  }

  else
  {
    v23 = +[_DKSyncErrors internalFailure];
    v26 = v11;
  }

  if (error)
  {
    v27 = v23;
    *error = v23;
  }

  v28 = *MEMORY[0x1E69E9840];
  return v23 == 0;
}

- (id)lastSyncDownDeletionDateForPeer:(id)peer transportName:(id)name error:(id *)error
{
  v85[1] = *MEMORY[0x1E69E9840];
  peerCopy = peer;
  nameCopy = name;
  if (error)
  {
    *error = 0;
  }

  v64 = peerCopy;
  sourceDeviceID = [peerCopy sourceDeviceID];
  v67 = [_DKSyncMetadataStorage bookmarkStreamNameWithSourceDeviceID:sourceDeviceID];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (nameCopy)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"valueString == %@", nameCopy];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE"];
  }
  v66 = ;
  v11 = +[_DKAnyStringIdentifier type];
  v12 = [_DKEventStream eventStreamWithName:v67 valueType:v11];

  v63 = v12;
  v85[0] = v12;
  v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:1];
  v13 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v14 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"endDate" ascending:0];
  v84[0] = v13;
  v84[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:2];
  v16 = [_DKEventQuery eventQueryWithPredicate:v66 eventStreams:v65 offset:0 limit:1 sortDescriptors:v15];
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_DKSyncLocalKnowledgeStorage.m"];
  v18 = [v17 stringByAppendingFormat:@":%d", 511];
  [v16 setClientName:v18];

  [v16 setTracker:&__block_literal_global_85];
  storage = selfCopy->_storage;
  v69 = 0;
  v20 = [(_DKKnowledgeStorage *)storage executeQuery:v16 error:&v69];
  v21 = v69;
  if (v21)
  {
    v22 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v57 = [objc_opt_class() description];
      v31 = [v64 me];
      v32 = &stru_1F05B9908;
      if (v31)
      {
        v32 = @"pseudo ";
      }

      v46 = v32;
      identifier = [v64 identifier];
      model = [v64 model];
      if (model)
      {
        v50 = MEMORY[0x1E696AEC0];
        model2 = [v64 model];
        v49 = [v50 stringWithFormat:@" (%@)", model2];
      }

      else
      {
        v49 = &stru_1F05B9908;
      }

      domain = [v21 domain];
      code = [v21 code];
      *buf = 138544898;
      v71 = v57;
      v72 = 2114;
      v73 = v46;
      v74 = 2114;
      v75 = identifier;
      v76 = 2114;
      v77 = v49;
      v78 = 2114;
      v79 = domain;
      v80 = 2048;
      v81 = code;
      v82 = 2112;
      v83 = v21;
      _os_log_debug_impl(&dword_191750000, v22, OS_LOG_TYPE_DEBUG, "%{public}@: Failed to find deletions bookmark for %{public}@peer %{public}@%{public}@: %{public}@:%lld (%@)", buf, 0x48u);

      if (model)
      {
      }
    }

    if (error)
    {
      v23 = v21;
      endDate = 0;
      *error = v21;
      goto LABEL_17;
    }

LABEL_16:
    endDate = 0;
    goto LABEL_17;
  }

  if (!v20 || ![v20 count])
  {
    v27 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v55 = [objc_opt_class() description];
      v35 = [v64 me];
      v36 = &stru_1F05B9908;
      if (v35)
      {
        v36 = @"pseudo ";
      }

      v51 = v36;
      identifier2 = [v64 identifier];
      model3 = [v64 model];
      if (model3)
      {
        v41 = MEMORY[0x1E696AEC0];
        model4 = [v64 model];
        v37 = [v41 stringWithFormat:@" (%@)", model4];
        v45 = model4;
      }

      else
      {
        v37 = &stru_1F05B9908;
      }

      *buf = 138544130;
      v71 = v55;
      v72 = 2114;
      v73 = v51;
      v74 = 2114;
      v75 = identifier2;
      v76 = 2114;
      v77 = v37;
      _os_log_debug_impl(&dword_191750000, v27, OS_LOG_TYPE_DEBUG, "%{public}@: No deletions bookmark found for %{public}@peer %{public}@%{public}@", buf, 0x2Au);
      if (model3)
      {
      }
    }

    goto LABEL_16;
  }

  firstObject = [v20 firstObject];
  endDate = [firstObject endDate];

  v26 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    model6 = v64;
    v59 = [objc_opt_class() description];
    v39 = [v64 me];
    v40 = &stru_1F05B9908;
    if (v39)
    {
      v40 = @"pseudo ";
    }

    v52 = v40;
    identifier3 = [v64 identifier];
    model5 = [v64 model];
    if (model5)
    {
      v48 = MEMORY[0x1E696AEC0];
      model6 = [v64 model];
      v47 = [v48 stringWithFormat:@" (%@)", model6];
    }

    else
    {
      v47 = &stru_1F05B9908;
    }

    dk_localtimeString = [(NSDate *)endDate dk_localtimeString];
    *buf = 138544642;
    v71 = v59;
    v72 = 2114;
    v73 = v52;
    v74 = 2114;
    v75 = identifier3;
    v76 = 2114;
    v77 = v47;
    v78 = 2114;
    v79 = nameCopy;
    v80 = 2112;
    v53 = dk_localtimeString;
    v81 = dk_localtimeString;
    _os_log_debug_impl(&dword_191750000, v26, OS_LOG_TYPE_DEBUG, "%{public}@: Found saved deletions bookmark for %{public}@peer %{public}@%{public}@ on  %{public}@: %@", buf, 0x3Eu);
    if (model5)
    {
    }
  }

LABEL_17:
  objc_sync_exit(selfCopy);

  v28 = endDate;
  v29 = *MEMORY[0x1E69E9840];
  return endDate;
}

- (void)setLastSyncDownDeletionDate:(id)date previousDate:(id)previousDate forPeer:(id)peer transportName:(id)name error:(id *)error
{
  v78 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  previousDateCopy = previousDate;
  peerCopy = peer;
  nameCopy = name;
  v14 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v58 = [objc_opt_class() description];
    dk_localtimeString = [(NSDate *)previousDateCopy dk_localtimeString];
    dk_localtimeString2 = [(NSDate *)dateCopy dk_localtimeString];
    if ([peerCopy me])
    {
      v32 = @"pseudo ";
    }

    else
    {
      v32 = &stru_1F05B9908;
    }

    identifier = [peerCopy identifier];
    model = [peerCopy model];
    if (model)
    {
      v36 = MEMORY[0x1E696AEC0];
      model2 = [peerCopy model];
      v35 = [v36 stringWithFormat:@" (%@)", model2];
    }

    else
    {
      v35 = &stru_1F05B9908;
    }

    *buf = 138544898;
    v65 = v58;
    v66 = 2114;
    v67 = dk_localtimeString;
    v68 = 2114;
    v69 = dk_localtimeString2;
    v70 = 2114;
    v71 = v32;
    v72 = 2114;
    v73 = identifier;
    v74 = 2114;
    v75 = v35;
    v76 = 2114;
    v77 = nameCopy;
    _os_log_debug_impl(&dword_191750000, v14, OS_LOG_TYPE_DEBUG, "%{public}@: Setting last sync down deletion bookmark [%{public}@ ending %{public}@] for %{public}@peer %{public}@%{public}@ on %{public}@", buf, 0x48u);
    if (model)
    {
    }
  }

  if (error)
  {
    *error = 0;
  }

  sourceDeviceID = [peerCopy sourceDeviceID];
  v16 = [_DKSyncMetadataStorage bookmarkStreamNameWithSourceDeviceID:sourceDeviceID];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v18 = +[_DKAnyStringIdentifier type];
  v19 = [_DKEventStream eventStreamWithName:v16 valueType:v18];

  v20 = [_DKEvent eventWithStream:v19 startDate:previousDateCopy endDate:dateCopy identifierStringValue:nameCopy metadata:0];
  v21 = v20;
  if (v20)
  {
    storage = selfCopy->_storage;
    v63 = v20;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
    v62 = 0;
    v24 = [(_DKKnowledgeStorage *)storage saveObjects:v23 error:&v62];
    v25 = v62;

    if (v25 == 0 || v24)
    {
      v26 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v54 = [objc_opt_class() description];
        v27 = [peerCopy me];
        v28 = &stru_1F05B9908;
        if (v27)
        {
          v28 = @"pseudo ";
        }

        v48 = v28;
        identifier2 = [peerCopy identifier];
        model3 = [peerCopy model];
        if (model3)
        {
          v39 = MEMORY[0x1E696AEC0];
          model4 = [peerCopy model];
          v29 = [v39 stringWithFormat:@" (%@)", model4];
        }

        else
        {
          v29 = &stru_1F05B9908;
        }

        dk_localtimeString3 = [(NSDate *)dateCopy dk_localtimeString];
        *buf = 138544386;
        v65 = v54;
        v66 = 2114;
        v67 = v48;
        v68 = 2114;
        v69 = identifier2;
        v70 = 2114;
        v71 = v29;
        v72 = 2112;
        v50 = dk_localtimeString3;
        v73 = dk_localtimeString3;
        _os_log_debug_impl(&dword_191750000, v26, OS_LOG_TYPE_DEBUG, "%{public}@: Saved deletions bookmark for %{public}@peer %{public}@%{public}@: %@", buf, 0x34u);
        if (model3)
        {
        }
      }
    }

    else
    {
      v26 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v56 = [objc_opt_class() description];
        v37 = [peerCopy me];
        v38 = &stru_1F05B9908;
        if (v37)
        {
          v38 = @"pseudo ";
        }

        v46 = v38;
        identifier3 = [peerCopy identifier];
        model5 = [peerCopy model];
        if (model5)
        {
          v41 = MEMORY[0x1E696AEC0];
          model6 = [peerCopy model];
          v49 = [v41 stringWithFormat:@" (%@)", model6];
        }

        else
        {
          v49 = &stru_1F05B9908;
        }

        domain = [v25 domain];
        code = [v25 code];
        *buf = 138544898;
        v65 = v56;
        v66 = 2114;
        v67 = v46;
        v68 = 2114;
        v69 = identifier3;
        v70 = 2114;
        v71 = v49;
        v72 = 2114;
        v73 = domain;
        v74 = 2048;
        v75 = code;
        v76 = 2112;
        v77 = v25;
        _os_log_debug_impl(&dword_191750000, v26, OS_LOG_TYPE_DEBUG, "%{public}@: Failed to save deletions bookmark for %{public}@peer %{public}@%{public}@: %{public}@:%lld (%@)", buf, 0x48u);

        if (model5)
        {
        }
      }
    }
  }

  else
  {
    v25 = +[_DKSyncErrors internalFailure];
  }

  objc_sync_exit(selfCopy);
  if (error)
  {
    v30 = v25;
    *error = v25;
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (BOOL)saveEvents:(id)events error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  storage = self->_storage;
  v20 = 0;
  v8 = [(_DKKnowledgeStorage *)storage saveObjects:eventsCopy error:&v20];
  v9 = v20;
  v10 = v9;
  if (error && v9)
  {
    v11 = v9;
    *error = v10;
  }

  v12 = +[_CDLogging syncChannel];
  v13 = v12;
  if (v8)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [_DKSyncLocalKnowledgeStorage saveEvents:eventsCopy error:?];
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_opt_class() description];
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(eventsCopy, "count")}];
    domain = [v10 domain];
    code = [v10 code];
    *buf = 138544386;
    v22 = v16;
    v23 = 2112;
    v24 = v17;
    v25 = 2114;
    v26 = domain;
    v27 = 2048;
    v28 = code;
    v29 = 2112;
    v30 = v10;
    _os_log_error_impl(&dword_191750000, v13, OS_LOG_TYPE_ERROR, "%{public}@: Failed to save %@ events: %{public}@:%lld (%@)", buf, 0x34u);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)deleteEventsWithEventIDs:(id)ds error:(id *)error
{
  v19 = *MEMORY[0x1E69E9840];
  if (error)
  {
    *error = 0;
  }

  v5 = [MEMORY[0x1E695DFD8] setWithArray:ds];
  if ([v5 count])
  {
    v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(uuid IN %@)", v5];
    v7 = [(_DKKnowledgeStorage *)self->_storage deleteEventsMatchingPredicate:v6 limit:0x7FFFFFFFFFFFFFFFLL];
    v8 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [_DKSyncLocalKnowledgeStorage deleteEventsWithEventIDs:error:];
    }

    v9 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = [objc_opt_class() description];
      *buf = 138543874;
      v14 = v12;
      v15 = 2048;
      v16 = v7;
      v17 = 2048;
      v18 = [v5 count];
      _os_log_debug_impl(&dword_191750000, v9, OS_LOG_TYPE_DEBUG, "%{public}@: Deleted %lu events from %lu specified", buf, 0x20u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return 1;
}

- (id)initWithKnowledgeStorage:(id *)storage
{
  v4 = a2;
  if (storage)
  {
    v7.receiver = storage;
    v7.super_class = _DKSyncLocalKnowledgeStorage;
    v5 = objc_msgSendSuper2(&v7, sel_init);
    storage = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return storage;
}

- (_DKSyncHistory)syncHistoryForPeer:(void *)peer streamName:(void *)name transportName:(void *)transportName type:(unint64_t *)type error:
{
  typeCopy = type;
  v205[1] = *MEMORY[0x1E69E9840];
  model2 = a2;
  nameCopy = name;
  v179 = model2;
  transportNameCopy = transportName;
  v177 = nameCopy;
  if (!self)
  {
    v63 = 0;
    goto LABEL_36;
  }

  peerCopy = peer;
  v14 = +[_CDLogging syncChannel];
  v15 = &stru_1F05B9908;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v66 = nameCopy;
    v67 = [objc_opt_class() description];
    if ([model2 me])
    {
      v68 = @"pseudo ";
    }

    else
    {
      v68 = &stru_1F05B9908;
    }

    identifier = [model2 identifier];
    model = [model2 model];
    if (model)
    {
      v76 = MEMORY[0x1E696AEC0];
      model2 = [model2 model];
      v15 = [v76 stringWithFormat:@" (%@)", model2];
    }

    *buf = 138544642;
    v186 = v67;
    v187 = 2114;
    v188 = transportNameCopy;
    v189 = 2114;
    v190 = v68;
    v191 = 2114;
    v192 = identifier;
    v193 = 2114;
    v194 = v15;
    v195 = 2114;
    nameCopy = v66;
    v196 = v66;
    _os_log_debug_impl(&dword_191750000, v14, OS_LOG_TYPE_DEBUG, "%{public}@: Fetching %{public}@ sync history for %{public}@peer %{public}@%{public}@ on %{public}@", buf, 0x3Eu);
    if (model)
    {
    }
  }

  v16 = +[_DKAnyStringIdentifier type];
  v17 = [_DKEventStream eventStreamWithName:peerCopy valueType:v16];

  v173 = v17;
  v205[0] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v205 count:1];
  v19 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-86400.0];
  date = [MEMORY[0x1E695DF00] date];
  v171 = v19;
  v20 = [_DKQuery predicateForEventsWithCreationInDateRangeFromAfter:v19 to:?];
  v21 = v20;
  v167 = v20;
  if (nameCopy)
  {
    nameCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"valueString == %@", nameCopy];
    v22 = MEMORY[0x1E696AB28];
    v204[0] = v21;
    v204[1] = nameCopy;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v204 count:2];
    v24 = [v22 andPredicateWithSubpredicates:v23];
  }

  else
  {
    v24 = v20;
  }

  v182 = v18;
  v25 = [_DKEventQuery eventQueryWithPredicate:v24 eventStreams:v18 offset:0 limit:0x7FFFFFFFFFFFFFFFLL sortDescriptors:0];
  v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_DKSyncLocalKnowledgeStorage.m"];
  v130 = 615;
  v27 = [v26 stringByAppendingFormat:@":%d"];
  [v25 setClientName:v27];

  [v25 setTracker:&__block_literal_global_88];
  [v25 setResultType:1];
  v28 = *(self + 8);
  v184 = 0;
  v29 = [v28 executeQuery:v25 error:&v184];
  v30 = v184;
  v165 = v29;
  if (v30)
  {
    v31 = v30;
    distantPast = +[_CDLogging syncChannel];
    if (os_log_type_enabled(distantPast, OS_LOG_TYPE_ERROR))
    {
      v70 = [objc_opt_class() description];
      v71 = [v179 me];
      v72 = &stru_1F05B9908;
      if (v71)
      {
        v72 = @"pseudo ";
      }

      v163 = v72;
      identifier2 = [v179 identifier];
      model3 = [v179 model];
      if (model3)
      {
        v77 = MEMORY[0x1E696AEC0];
        model4 = [v179 model];
        v130 = model4;
        v75 = [v77 stringWithFormat:@" (%@)"];
      }

      else
      {
        v75 = &stru_1F05B9908;
      }

      domain = [v31 domain];
      [v31 code];
      OUTLINED_FUNCTION_0_13();
      v190 = v163;
      v191 = v79;
      v192 = identifier2;
      v193 = v79;
      v194 = v75;
      v195 = v79;
      v196 = domain;
      OUTLINED_FUNCTION_1_12();
      OUTLINED_FUNCTION_6_8(&dword_191750000, v80, v81, "%{public}@: Failed to fetch %{public}@ sync count for %{public}@peer %{public}@%{public}@: %{public}@:%lld (%@)", v82, v83, v84, v85, v130, model8, v134, v137, v141, v144, v149, log, model4, v163, v165, v167, date, v171, v173, typeCopy, v177, v179, transportNameCopy, v182, v183, v184, buf[0]);

      if (model3)
      {
      }
    }

    v33 = 0;
LABEL_32:

    v49 = v24;
    v52 = v25;
    goto LABEL_33;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v34 = +[_CDLogging syncChannel];
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v36 = [objc_opt_class() description];
    v44 = OUTLINED_FUNCTION_5_4(v36, v37, v38, v39, v40, v41, v42, v43, 615, model8, v134, v137, v141, v144, v149, log, model4, identifier3, v165, v167, date, v171, v173, typeCopy, v177, v179);
    v45 = @"pseudo ";
    if (!v44)
    {
      v45 = &stru_1F05B9908;
    }

    model4 = v45;
    identifier3 = [v27 identifier];
    model5 = [v27 model];
    if (model5)
    {
      v149 = MEMORY[0x1E696AEC0];
      log = [v27 model];
      v47 = [v149 stringWithFormat:@" (%@)", log];
    }

    else
    {
      v47 = &stru_1F05B9908;
    }

    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_2_8();
    v109 = "%{public}@: Failed to fetch %{public}@ sync count for %{public}@peer %{public}@%{public}@ due to invalid type";
LABEL_90:
    _os_log_error_impl(&dword_191750000, v34, OS_LOG_TYPE_ERROR, v109, buf, 0x34u);
    if (model5)
    {
    }

    goto LABEL_18;
  }

  if ([v29 count])
  {
    v34 = [v29 objectAtIndexedSubscript:0];
    integerValue = [v34 integerValue];
    goto LABEL_19;
  }

  v34 = +[_CDLogging syncChannel];
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    v116 = [objc_opt_class() description];
    v124 = OUTLINED_FUNCTION_5_4(v116, v117, v118, v119, v120, v121, v122, v123, 615, model8, v134, v137, v141, v144, v149, log, model4, identifier3, v165, v167, date, v171, v173, typeCopy, v177, v179);
    v125 = @"pseudo ";
    if (!v124)
    {
      v125 = &stru_1F05B9908;
    }

    model4 = v125;
    identifier3 = [v27 identifier];
    model5 = [v27 model];
    if (model5)
    {
      v149 = MEMORY[0x1E696AEC0];
      log = [v27 model];
      v47 = [v149 stringWithFormat:@" (%@)", log];
    }

    else
    {
      v47 = &stru_1F05B9908;
    }

    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_2_8();
    v109 = "%{public}@: Failed to fetch %{public}@ sync count for %{public}@peer %{public}@%{public}@ due to missing value";
    goto LABEL_90;
  }

LABEL_18:
  integerValue = 0;
LABEL_19:

  if (nameCopy)
  {
    v48 = nameCopy;
  }

  else
  {
    v48 = [MEMORY[0x1E696AE18] predicateWithFormat:@"TRUEPREDICATE"];
  }

  v49 = v48;

  v50 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v203 = v50;
  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v203 count:1];
  v52 = [_DKEventQuery eventQueryWithPredicate:v49 eventStreams:v182 offset:0 limit:1 sortDescriptors:v51];

  v53 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_DKSyncLocalKnowledgeStorage.m"];
  v54 = [v53 stringByAppendingFormat:@":%d"];
  [v52 setClientName:v54];

  [v52 setTracker:&__block_literal_global_91];
  v55 = *(self + 8);
  v183 = 0;
  v56 = [v55 executeQuery:v52 error:&v183];
  v31 = v183;
  if (v31)
  {
    lastObject = +[_CDLogging syncChannel];
    if (os_log_type_enabled(lastObject, OS_LOG_TYPE_ERROR))
    {
      v86 = [objc_opt_class() description];
      v94 = OUTLINED_FUNCTION_5_4(v86, v87, v88, v89, v90, v91, v92, v93, 645, model8, v134, v137, v141, v144, v149, log, model4, identifier3, v165, v167, date, v171, v173, typeCopy, v177, v179);
      v95 = @"pseudo ";
      if (!v94)
      {
        v95 = &stru_1F05B9908;
      }

      v150 = v95;
      identifier4 = [0x1E7366000 identifier];
      loga = [0x1E7366000 model];
      if (loga)
      {
        v160 = MEMORY[0x1E696AEC0];
        model6 = [0x1E7366000 model];
        v131 = model6;
        v159 = [v160 stringWithFormat:@" (%@)"];
      }

      else
      {
        v159 = &stru_1F05B9908;
      }

      domain2 = [v31 domain];
      [v31 code];
      OUTLINED_FUNCTION_0_13();
      v190 = v150;
      v191 = v102;
      v192 = identifier4;
      v193 = v102;
      v194 = v159;
      v195 = v102;
      v196 = domain2;
      OUTLINED_FUNCTION_1_12();
      OUTLINED_FUNCTION_6_8(&dword_191750000, v103, v104, "%{public}@: Failed to fetch last %{public}@ sync date for %{public}@peer %{public}@%{public}@: %{public}@:%lld (%@)", v105, v106, v107, v108, v131, v133, v135, v138, v142, model6, v150, loga, v159, identifier4, v166, v168, v170, v172, v174, v176, v178, v180, transportNameCopy, v182, v183, v184, buf[0]);

      if (logb)
      {
      }
    }

    v33 = 0;
LABEL_28:

    goto LABEL_29;
  }

  if ([v56 count])
  {
    v157 = v56;
    identifier3 = v50;
    lastObject = [v56 lastObject];
    creationDate = [lastObject creationDate];
    v33 = [[_DKSyncHistory alloc] initWithLastSyncDate:creationDate lastDaySyncCount:integerValue];
    v59 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
    {
      v151 = creationDate;
      logc = v59;
      v139 = integerValue;
      v112 = [objc_opt_class() description];
      v113 = [v179 me];
      v114 = @"pseudo ";
      if (!v113)
      {
        v114 = &stru_1F05B9908;
      }

      v136 = v114;
      identifier5 = [v179 identifier];
      model7 = [v179 model];
      if (model7)
      {
        v148 = MEMORY[0x1E696AEC0];
        model8 = [v179 model];
        v132 = [v148 stringWithFormat:@" (%@)", model8];
      }

      else
      {
        v132 = &stru_1F05B9908;
      }

      dk_localtimeString = [(NSDate *)creationDate dk_localtimeString];
      [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v139];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_0_13();
      v190 = v136;
      v191 = v127;
      v192 = identifier5;
      v193 = v127;
      v194 = v132;
      v195 = v127;
      v196 = v177;
      v197 = v127;
      v140 = dk_localtimeString;
      v198 = dk_localtimeString;
      v199 = 2112;
      v200 = v128;
      v129 = v128;
      v201 = 2112;
      v202 = v33;
      _os_log_debug_impl(&dword_191750000, logc, OS_LOG_TYPE_DEBUG, "%{public}@: Found %{public}@ sync history for %{public}@peer %{public}@%{public}@ on %{public}@ with last sync date of %{public}@ and with %@ syncs in the previous day: %@", buf, 0x5Cu);

      if (model7)
      {
      }

      creationDate = v151;
      v59 = logc;
    }

    v56 = v157;
    v50 = identifier3;
    goto LABEL_28;
  }

  v33 = 0;
LABEL_29:

  if (!(v31 | v33))
  {
    v60 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
    {
      v96 = [objc_opt_class() description];
      if ([v179 me])
      {
        v97 = @"pseudo ";
      }

      else
      {
        v97 = &stru_1F05B9908;
      }

      identifier6 = [v179 identifier];
      model9 = [v179 model];
      if (model9)
      {
        v110 = MEMORY[0x1E696AEC0];
        identifier3 = [v179 model];
        v162 = [v110 stringWithFormat:@" (%@)", identifier3];
      }

      else
      {
        v162 = &stru_1F05B9908;
      }

      OUTLINED_FUNCTION_0_13();
      v190 = v97;
      v191 = v111;
      v192 = identifier6;
      v193 = v111;
      v194 = v162;
      _os_log_debug_impl(&dword_191750000, v60, OS_LOG_TYPE_DEBUG, "%{public}@: No %{public}@ sync history for %{public}@peer %{public}@%{public}@", buf, 0x34u);
      if (model9)
      {
      }
    }

    v61 = [_DKSyncHistory alloc];
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    v33 = [(_DKSyncHistory *)v61 initWithLastSyncDate:distantPast lastDaySyncCount:0];
    v31 = 0;
    v24 = v49;
    v25 = v52;
    goto LABEL_32;
  }

LABEL_33:
  if (typeCopy)
  {
    v62 = v31;
    *typeCopy = v31;
  }

  v63 = v33;

LABEL_36:
  v64 = *MEMORY[0x1E69E9840];

  return v63;
}

- (id)additionsSyncHistoryForPeer:(id)peer transportName:(id)name error:(id *)error
{
  nameCopy = name;
  peerCopy = peer;
  sourceDeviceID = [peerCopy sourceDeviceID];
  v9 = [_DKSyncMetadataStorage windowStreamNameWithSourceDeviceID:sourceDeviceID];

  v10 = OUTLINED_FUNCTION_4_8();
  v16 = [(_DKSyncLocalKnowledgeStorage *)v10 syncHistoryForPeer:v11 streamName:v12 transportName:v13 type:v14 error:v15];

  return v16;
}

- (id)deletionsSyncHistoryForPeer:(id)peer transportName:(id)name error:(id *)error
{
  nameCopy = name;
  peerCopy = peer;
  sourceDeviceID = [peerCopy sourceDeviceID];
  v9 = [_DKSyncMetadataStorage bookmarkStreamNameWithSourceDeviceID:sourceDeviceID];

  v10 = OUTLINED_FUNCTION_4_8();
  v16 = [(_DKSyncLocalKnowledgeStorage *)v10 syncHistoryForPeer:v11 streamName:v12 transportName:v13 type:v14 error:v15];

  return v16;
}

- (void)tombstonesSinceDate:(uint64_t)a1 streamNames:(void *)a2 limit:endDate:error:.cold.1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_class() description];
  v10 = [a2 domain];
  [a2 code];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x2Au);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)saveEvents:(uint64_t)a1 error:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [objc_opt_class() description];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a2, "count")}];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)deleteEventsWithEventIDs:error:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = [objc_opt_class() description];
  OUTLINED_FUNCTION_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);

  v5 = *MEMORY[0x1E69E9840];
}

@end