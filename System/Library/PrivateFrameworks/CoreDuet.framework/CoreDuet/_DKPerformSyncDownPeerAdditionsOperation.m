@interface _DKPerformSyncDownPeerAdditionsOperation
+ (void)_updateEventStatsWithIsNewestMissingWindow:(uint64_t)a1;
+ (void)_updateEventStatsWithPreviousSyncDate:(uint64_t)a3 transportType:;
+ (void)_updateEventStatsWithSyncLatencyOfEvent:(void *)a3 ingressDate:(uint64_t)a4 transportType:;
+ (void)_updateEventStatsWithTotal:(void *)a3 streamNameCounts:(uint64_t)a4 transportType:;
- (id)initWithParent:(void *)a3 localStorage:(void *)a4 transport:(void *)a5 peer:(void *)a6 policy:(void *)a7 type:;
- (void)coalesceRedundantOverlappingWindows;
- (void)endOperation;
- (void)handleFetchedEvents:(void *)a3 completedWindows:(void *)a4 missingWindows:;
- (void)main;
- (void)performSyncDownPeerAdditionsWithCompletedWindows:(uint64_t)a1;
- (void)performSyncDownPeerAdditionsWithDidPrewarm:(void *)a3 orError:;
- (void)updateEvents:(void *)a3 withSourceDeviceID:;
@end

@implementation _DKPerformSyncDownPeerAdditionsOperation

- (void)main
{
  v3 = objc_opt_class();
  if ([_DKSync2Coordinator shouldDeferSyncOperationWithClass:v3 syncType:self->_type transport:self->_transport peer:0 policy:self->_policy])
  {

    [(_DKPerformSyncDownPeerAdditionsOperation *)self endOperation];
  }

  else
  {

    [(_DKPerformSyncDownPeerAdditionsOperation *)self performSyncDownPeerAdditions];
  }
}

+ (void)_updateEventStatsWithPreviousSyncDate:(uint64_t)a3 transportType:
{
  v12 = a2;
  objc_opt_self();
  if (_updateEventStatsWithPreviousSyncDate_transportType__syncCadenceInitialized_2 != -1)
  {
    +[_DKPerformSyncDownPeerAdditionsOperation _updateEventStatsWithPreviousSyncDate:transportType:];
  }

  v4 = v12;
  if (v12)
  {
    v5 = [MEMORY[0x1E695DF00] distantPast];
    v6 = [v12 isEqualToDate:v5];

    v4 = v12;
    if ((v6 & 1) == 0)
    {
      v7 = _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceByTransportCounter_2;
      v8 = [MEMORY[0x1E695DF00] date];
      if (a3 == 1)
      {
        v9 = @"Rapport";
      }

      else
      {
        v9 = @"Cloud";
      }

      [(_DKEventTypeStatsTimerCounter *)v7 addTimingWithStartDate:v12 endDate:v8 typeValue:v9];

      v10 = _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceCounter_2;
      v11 = [MEMORY[0x1E695DF00] date];
      [(_DKEventStatsTimerCounter *)v10 addTimingWithStartDate:v12 endDate:v11];

      v4 = v12;
    }
  }
}

+ (void)_updateEventStatsWithIsNewestMissingWindow:(uint64_t)a1
{
  objc_opt_self();
  if (_updateEventStatsWithIsNewestMissingWindow__syncDownAdditionsWindowAgeCounterInitialized != -1)
  {
    +[_DKPerformSyncDownPeerAdditionsOperation _updateEventStatsWithIsNewestMissingWindow:];
  }

  v3 = _updateEventStatsWithIsNewestMissingWindow__syncDownAdditionsWindowAgeCounter;
  if (a2)
  {
    v4 = @"newest";
  }

  else
  {
    v4 = @"older";
  }

  [(_DKEventTypeStatsCounter *)v3 incrementCountByNumber:v4 typeValue:?];
}

+ (void)_updateEventStatsWithSyncLatencyOfEvent:(void *)a3 ingressDate:(uint64_t)a4 transportType:
{
  v6 = a3;
  v7 = a2;
  objc_opt_self();
  if (_updateEventStatsWithSyncLatencyOfEvent_ingressDate_transportType__syncDownAdditionsLatencyInitialized != -1)
  {
    +[_DKPerformSyncDownPeerAdditionsOperation _updateEventStatsWithSyncLatencyOfEvent:ingressDate:transportType:];
  }

  v9 = [v7 creationDate];

  if (a4 == 1)
  {
    v8 = @"Rapport";
  }

  else
  {
    v8 = @"Cloud";
  }

  [(_DKEventTypeStatsTimerCounter *)_updateEventStatsWithSyncLatencyOfEvent_ingressDate_transportType__syncDownAdditionsLatencyByTransportCounter addTimingWithStartDate:v9 endDate:v6 typeValue:v8];
  [(_DKEventStatsTimerCounter *)_updateEventStatsWithSyncLatencyOfEvent_ingressDate_transportType__syncDownAdditionsLatencyCounter addTimingWithStartDate:v9 endDate:v6];
}

+ (void)_updateEventStatsWithTotal:(void *)a3 streamNameCounts:(uint64_t)a4 transportType:
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_self();
  if (_updateEventStatsWithTotal_streamNameCounts_transportType__syncDownAdditionsCounterInitialized != -1)
  {
    +[_DKPerformSyncDownPeerAdditionsOperation _updateEventStatsWithTotal:streamNameCounts:transportType:];
  }

  [(_DKEventStatsCounter *)_updateEventStatsWithTotal_streamNameCounts_transportType__syncDownAdditionsTotalCounter incrementCountByNumber:a2];
  if (a4 == 1)
  {
    v7 = @"Rapport";
  }

  else
  {
    v7 = @"Cloud";
  }

  [(_DKEventTypeStatsCounter *)_updateEventStatsWithTotal_streamNameCounts_transportType__syncDownAdditionsTotalByTransportCounter incrementCountByNumber:a2 typeValue:v7];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [_updateEventStatsWithTotal_streamNameCounts_transportType__syncDownAdditionsCountersByStreamName objectForKeyedSubscript:v13];
        if (!v14)
        {
          v15 = MEMORY[0x1E696AEC0];
          v16 = [_DKEventStatsUtilities safeStringWithString:v13];
          v17 = [v15 stringWithFormat:@"sync_down_additions_stream%@", v16];

          v14 = [_DKEventStatsCounter counterInCollection:v17 withEventName:?];
          [_updateEventStatsWithTotal_streamNameCounts_transportType__syncDownAdditionsCountersByStreamName setObject:v14 forKeyedSubscript:v13];
        }

        -[_DKEventStatsCounter incrementCountByNumber:](v14, [v8 countForObject:v13]);
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)endOperation
{
  v2.receiver = self;
  v2.super_class = _DKPerformSyncDownPeerAdditionsOperation;
  [(_DKSyncCompositeOperation *)&v2 endOperation];
}

- (id)initWithParent:(void *)a3 localStorage:(void *)a4 transport:(void *)a5 peer:(void *)a6 policy:(void *)a7 type:
{
  v21 = a3;
  v20 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (a1)
  {
    v22.receiver = a1;
    v22.super_class = _DKPerformSyncDownPeerAdditionsOperation;
    v17 = objc_msgSendSuper2(&v22, sel_initWithParent_, a2, v20, v21);
    v18 = v17;
    if (v17)
    {
      objc_storeStrong(v17 + 37, a3);
      objc_storeStrong(v18 + 38, a4);
      objc_storeStrong(v18 + 39, a5);
      objc_storeStrong(v18 + 40, a6);
      objc_storeStrong(v18 + 41, a7);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)performSyncDownPeerAdditionsWithDidPrewarm:(void *)a3 orError:
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a1)
  {
    v6 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v6);

    if (v5)
    {
      v7 = [a1 errors];
      [v7 addObject:v5];
LABEL_9:

      [a1 endOperation];
      goto LABEL_10;
    }

    v8 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    if (!a2 || ![OUTLINED_FUNCTION_7_9() hasAdditionsFlagForPeer:*(a1 + 312)])
    {
      v7 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v29 = [objc_opt_class() description];
        if ([OUTLINED_FUNCTION_7_9() transportType] == 8)
        {
          v14 = "up to";
        }

        else
        {
          v14 = "down from";
        }

        v15 = &stru_1F05B9908;
        if ([OUTLINED_FUNCTION_0_26() me])
        {
          v16 = @"pseudo ";
        }

        else
        {
          v16 = &stru_1F05B9908;
        }

        v28 = [OUTLINED_FUNCTION_0_26() identifier];
        v17 = [OUTLINED_FUNCTION_0_26() model];
        if (v17)
        {
          v18 = MEMORY[0x1E696AEC0];
          v8 = [OUTLINED_FUNCTION_0_26() model];
          v15 = [v18 stringWithFormat:@" (%@)", v8];
        }

        v19 = [OUTLINED_FUNCTION_7_9() name];
        *buf = 138544642;
        v33 = v29;
        v34 = 2082;
        v35 = v14;
        v36 = 2114;
        v37 = v16;
        v38 = 2114;
        v39 = v28;
        v40 = 2114;
        v41 = v15;
        v42 = 2114;
        v43 = v19;
        OUTLINED_FUNCTION_15_0(&dword_191750000, v7, v20, "%{public}@: Skipping fetching additions sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ due to no changes to sync", buf);

        if (v17)
        {
        }
      }

      goto LABEL_9;
    }

    v9 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v30 = [objc_opt_class() description];
      v21 = &stru_1F05B9908;
      if ([OUTLINED_FUNCTION_0_26() me])
      {
        v22 = @"pseudo ";
      }

      else
      {
        v22 = &stru_1F05B9908;
      }

      v23 = [OUTLINED_FUNCTION_0_26() identifier];
      v24 = [OUTLINED_FUNCTION_0_26() model];
      if (v24)
      {
        v25 = MEMORY[0x1E696AEC0];
        v27 = [OUTLINED_FUNCTION_0_26() model];
        v21 = [v25 stringWithFormat:@" (%@)", v27];
      }

      v26 = [OUTLINED_FUNCTION_7_9() name];
      *buf = 138544386;
      v33 = v30;
      v34 = 2114;
      v35 = v22;
      v36 = 2114;
      v37 = v23;
      v38 = 2114;
      v39 = v21;
      v40 = 2114;
      v41 = v26;
      _os_log_debug_impl(&dword_191750000, v9, OS_LOG_TYPE_DEBUG, "%{public}@: Performing sync down of additions from %{public}@peer %{public}@%{public}@ on transport %{public}@", buf, 0x34u);

      if (v24)
      {
      }
    }

    v10 = OUTLINED_FUNCTION_7_9();
    v11 = *(a1 + 312);
    v12 = *(a1 + 344);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __95___DKPerformSyncDownPeerAdditionsOperation_performSyncDownPeerAdditionsWithDidPrewarm_orError___block_invoke;
    v31[3] = &unk_1E7369B88;
    v31[4] = a1;
    [v10 fetchAdditionsHighWaterMarkWithPeer:v11 highPriority:v12 completion:v31];
  }

LABEL_10:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)performSyncDownPeerAdditionsWithCompletedWindows:(uint64_t)a1
{
  v166 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = +[_CDLogging syncChannel];
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
    v6 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    if (v3)
    {
      if (!v5)
      {
        goto LABEL_7;
      }

      v145 = v3;
      v7 = [objc_opt_class() description];
      [*(a1 + 304) transportType];
      v8 = &stru_1F05B9908;
      [OUTLINED_FUNCTION_9_9() me];
      v9 = [OUTLINED_FUNCTION_9_9() identifier];
      v10 = [OUTLINED_FUNCTION_9_9() model];
      if (v10)
      {
        v66 = MEMORY[0x1E696AEC0];
        v143 = [*(a1 + 312) model];
        v8 = [v66 stringWithFormat:@" (%@)", v143];
      }

      v67 = [*(a1 + 304) name];
      v68 = [(NSDate *)*(a1 + 376) dk_localtimeString];
      OUTLINED_FUNCTION_1_21();
      v69 = "%{public}@: Will attempt another additions sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ with high water mark %{public}@";
    }

    else
    {
      if (!v5)
      {
        goto LABEL_7;
      }

      v145 = 0;
      v7 = [objc_opt_class() description];
      [*(a1 + 304) transportType];
      v8 = &stru_1F05B9908;
      [OUTLINED_FUNCTION_9_9() me];
      v9 = [OUTLINED_FUNCTION_9_9() identifier];
      v10 = [OUTLINED_FUNCTION_9_9() model];
      if (v10)
      {
        v85 = MEMORY[0x1E696AEC0];
        v143 = [*(a1 + 312) model];
        v8 = [v85 stringWithFormat:@" (%@)", v143];
      }

      v67 = [*(a1 + 304) name];
      v68 = [(NSDate *)*(a1 + 376) dk_localtimeString];
      OUTLINED_FUNCTION_1_21();
      v69 = "%{public}@: Will attempt additions sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ with high water mark %{public}@";
    }

    _os_log_debug_impl(&dword_191750000, v4, OS_LOG_TYPE_DEBUG, v69, buf, 0x48u);

    if (v10)
    {
    }

    v3 = v145;
    v6 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
LABEL_7:

    if (!*(a1 + 384))
    {
      v11 = [MEMORY[0x1E695DF00] date];
      v12 = *(a1 + 368);
      *(a1 + 368) = v11;
    }

    v13 = [*(a1 + 320) maxSyncPeriodInDays];
    v14 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-(86400 * v13)];
    v15 = *(a1 + 368);
    [v15 timeIntervalSinceReferenceDate];
    v17 = v16;
    [v14 timeIntervalSinceReferenceDate];
    v144 = v15;
    v146 = v14;
    if (v17 - v18 < [*(a1 + 320) minSyncWindowInSeconds])
    {
      v19 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v142 = [objc_opt_class() description];
        v133 = [(NSDate *)v146 dk_localtimeString];
        v138 = [(NSDate *)v15 dk_localtimeString];
        v61 = [OUTLINED_FUNCTION_0_26() me];
        v62 = &stru_1F05B9908;
        v63 = @"pseudo ";
        if (!v61)
        {
          v63 = &stru_1F05B9908;
        }

        v130 = v63;
        v64 = [OUTLINED_FUNCTION_0_26() identifier];
        v65 = [OUTLINED_FUNCTION_0_26() model];
        if (v65)
        {
          v80 = MEMORY[0x1E696AEC0];
          v126 = [OUTLINED_FUNCTION_0_26() model];
          v62 = [v80 stringWithFormat:@" (%@)", v126];
        }

        *buf = 138544642;
        OUTLINED_FUNCTION_12_5();
        v153 = v133;
        v154 = v81;
        v155 = v82;
        v156 = v81;
        OUTLINED_FUNCTION_22_5();
        v159 = v64;
        v160 = v83;
        v161 = v62;
        OUTLINED_FUNCTION_15_0(&dword_191750000, v19, v84, "%{public}@: No more missing additions windows found between %{public}@ and %{public}@ for %{public}@peer %{public}@%{public}@", buf);
        if (v65)
        {
        }
      }

      v141 = 0;
      v20 = 0;
      v14 = v146;
      if (![0 count])
      {
        goto LABEL_39;
      }

      goto LABEL_29;
    }

    v21 = *(a1 + 392);
    if (v21)
    {
      v22 = [_DKSyncWindow sortedUnionOfSortedWindows:v21 andSortedWindows:v3];
      v141 = 0;
      v23 = *(a1 + 392);
      *(a1 + 392) = v22;
    }

    else
    {
      v24 = *(a1 + 296);
      v25 = *(a1 + v6[959]);
      v149 = 0;
      v26 = [v24 sortedSyncDownWindowsOverlappingBetweenDate:v14 andDate:v15 peer:v25 error:&v149];
      v27 = v149;
      v28 = *(a1 + 392);
      *(a1 + 392) = v26;

      v141 = v27;
      if (!v27)
      {
        v141 = 0;
LABEL_18:
        v29 = *(a1 + 392);
        if (!v29)
        {
          v20 = 0;
          goto LABEL_28;
        }

        v20 = [_DKSyncWindow windowsMissingFromSortedWindows:v29 windowMinimumDate:v14 windowMaximumDate:v15];
        v30 = [v20 count];
        v31 = +[_CDLogging syncChannel];
        v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG);
        if (v30)
        {
          if (v32)
          {
            v136 = [objc_opt_class() description];
            [v20 count];
            v131 = [OUTLINED_FUNCTION_5_1() numberWithUnsignedInteger:?];
            [OUTLINED_FUNCTION_23_4() count];
            v127 = [OUTLINED_FUNCTION_5_1() numberWithUnsignedInteger:?];
            v130 = [(NSDate *)v14 dk_localtimeString];
            v124 = [(NSDate *)v15 dk_localtimeString];
            v33 = [OUTLINED_FUNCTION_3_18() me];
            v34 = &stru_1F05B9908;
            v35 = @"pseudo ";
            if (!v33)
            {
              v35 = &stru_1F05B9908;
            }

            v120 = v35;
            v121 = [OUTLINED_FUNCTION_3_18() identifier];
            v36 = [OUTLINED_FUNCTION_3_18() model];
            if (v36)
            {
              v96 = MEMORY[0x1E696AEC0];
              [OUTLINED_FUNCTION_3_18() model];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_21_7();
              v34 = [v96 stringWithFormat:@" (%@)"];
            }

            OUTLINED_FUNCTION_17_8();
            v153 = v97;
            v154 = v98;
            v155 = v127;
            v156 = 2114;
            OUTLINED_FUNCTION_22_5();
            v159 = v124;
            v160 = v99;
            v161 = v120;
            v162 = v99;
            v163 = v121;
            v164 = v99;
            v165 = v34;
            OUTLINED_FUNCTION_11_8();
            _os_log_debug_impl(v100, v101, v102, v103, v104, 0x52u);
            if (v36)
            {
            }

            v105 = v130;
LABEL_98:
          }
        }

        else if (v32)
        {
          v140 = [objc_opt_class() description];
          [OUTLINED_FUNCTION_23_4() count];
          v130 = [OUTLINED_FUNCTION_5_1() numberWithUnsignedInteger:?];
          v135 = [(NSDate *)v14 dk_localtimeString];
          v129 = [(NSDate *)v15 dk_localtimeString];
          v89 = [OUTLINED_FUNCTION_3_18() me];
          v90 = &stru_1F05B9908;
          v91 = @"pseudo ";
          if (!v89)
          {
            v91 = &stru_1F05B9908;
          }

          v122 = v91;
          v125 = [OUTLINED_FUNCTION_3_18() identifier];
          v92 = [OUTLINED_FUNCTION_3_18() model];
          if (v92)
          {
            v110 = MEMORY[0x1E696AEC0];
            v119 = [OUTLINED_FUNCTION_3_18() model];
            v90 = [v110 stringWithFormat:@" (%@)", v119];
          }

          OUTLINED_FUNCTION_17_8();
          v153 = v130;
          v154 = 2114;
          v155 = v111;
          v156 = 2114;
          OUTLINED_FUNCTION_22_5();
          v159 = v122;
          v160 = v112;
          v161 = v125;
          v162 = v112;
          v163 = v90;
          OUTLINED_FUNCTION_11_8();
          _os_log_debug_impl(v113, v114, v115, v116, v117, 0x48u);
          if (v92)
          {
          }

          v105 = v135;
          goto LABEL_98;
        }

LABEL_28:
        if (![v20 count])
        {
          v53 = v141;
          if (v141)
          {
            v54 = [a1 errors];
            [v54 addObject:v141];

LABEL_43:
            if ([*(a1 + 304) transportType] != 1)
            {
              [*(a1 + 304) setHasAdditionsFlag:0 forPeer:*(a1 + 312)];
            }

            [a1 endOperation];
LABEL_46:

            goto LABEL_47;
          }

LABEL_39:
          v55 = OUTLINED_FUNCTION_23_4();
          if (v55)
          {
            if (*(a1 + 352))
            {
              v56 = [v55 count];
              if (v56 > [*(a1 + 352) lastDaySyncCount] + *(a1 + 384) + 100)
              {
                v93 = +[_CDLogging syncChannel];
                if (os_log_type_enabled(v93, OS_LOG_TYPE_DEBUG))
                {
                  v94 = [objc_opt_class() description];
                  v95 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(OUTLINED_FUNCTION_23_4(), "count")}];
                  *buf = 138543618;
                  v151 = v94;
                  v152 = 2112;
                  v153 = v95;
                  _os_log_debug_impl(&dword_191750000, v93, OS_LOG_TYPE_DEBUG, "%{public}@: Coalescing (%@) redundant overlapping windows", buf, 0x16u);
                }

                [(_DKPerformSyncDownPeerAdditionsOperation *)a1 coalesceRedundantOverlappingWindows];
              }
            }
          }

          notify_post("com.apple.CoreDuet.SyncDownPeerAdditions.NoMoreDataToSync");
          v53 = 0;
          goto LABEL_43;
        }

LABEL_29:
        v37 = *(a1 + 384);
        if (v37)
        {
          v38 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
        }

        else
        {
          v39 = [*(a1 + 352) lastSyncDate];
          v38 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
          [OUTLINED_FUNCTION_7_9() transportType];
          v40 = OUTLINED_FUNCTION_5_1();
          [(_DKPerformSyncDownPeerAdditionsOperation *)v40 _updateEventStatsWithPreviousSyncDate:v39 transportType:v41];

          v37 = *(a1 + 384);
        }

        v42 = v3;
        *(a1 + 384) = v37 + 1;
        v43 = [v20 lastObject];
        v44 = [(_DKSyncType *)v43 urgency];
        +[_DKPerformSyncDownPeerAdditionsOperation _updateEventStatsWithIsNewestMissingWindow:](_DKPerformSyncDownPeerAdditionsOperation, [v44 isEqualToDate:*(a1 + 376)]);

        v45 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          v137 = [objc_opt_class() description];
          if ([OUTLINED_FUNCTION_25_3() me])
          {
            v58 = @"pseudo ";
          }

          else
          {
            v58 = &stru_1F05B9908;
          }

          v132 = [OUTLINED_FUNCTION_25_3() identifier];
          v59 = [OUTLINED_FUNCTION_25_3() model];
          if (v59)
          {
            v70 = MEMORY[0x1E696AEC0];
            v130 = [OUTLINED_FUNCTION_25_3() model];
            v60 = [v70 stringWithFormat:@" (%@)", v130];
          }

          else
          {
            v60 = &stru_1F05B9908;
          }

          [v20 count];
          v71 = [OUTLINED_FUNCTION_5_1() numberWithUnsignedInteger:?];
          v72 = _DKSyncLoggingWindowsDescription(v20);
          *buf = 138544642;
          OUTLINED_FUNCTION_12_5();
          v153 = v58;
          v154 = v73;
          v155 = v132;
          v156 = v73;
          v157 = v60;
          v158 = 2112;
          v159 = v71;
          v160 = v73;
          v161 = v74;
          OUTLINED_FUNCTION_11_8();
          _os_log_debug_impl(v75, v76, v77, v78, v79, 0x3Eu);

          if (v59)
          {
          }

          v38 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
        }

        v46 = [*(a1 + 320) syncBatchSizeInEvents];
        v47 = [OUTLINED_FUNCTION_7_9() transportType];
        v48 = *(a1 + v38[958]);
        v49 = *(a1 + 312);
        if (v47 == 4)
        {
          v50 = 1;
        }

        else
        {
          v50 = 2;
        }

        v51 = *(a1 + 336);
        v52 = *(a1 + 344);
        v147[0] = MEMORY[0x1E69E9820];
        v147[1] = 3221225472;
        v147[2] = &__93___DKPerformSyncDownPeerAdditionsOperation_performSyncDownPeerAdditionsWithCompletedWindows___block_invoke;
        v147[3] = &unk_1E7369EC0;
        v147[4] = a1;
        v20 = v20;
        v148 = v20;
        [v48 fetchEventsFromPeer:v49 windows:v20 streamNames:v51 limit:v46 fetchOrder:v50 highPriority:v52 completion:v147];

        v3 = v42;
        v14 = v146;
        v53 = v141;
        goto LABEL_46;
      }

      v23 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v139 = [objc_opt_class() description];
        v86 = [OUTLINED_FUNCTION_3_18() me];
        v87 = @"pseudo ";
        if (!v86)
        {
          v87 = &stru_1F05B9908;
        }

        v128 = v87;
        v134 = [OUTLINED_FUNCTION_3_18() identifier];
        v88 = [OUTLINED_FUNCTION_3_18() model];
        if (v88)
        {
          v106 = MEMORY[0x1E696AEC0];
          v123 = [OUTLINED_FUNCTION_3_18() model];
          v130 = [v106 stringWithFormat:@" (%@)", v123];
        }

        else
        {
          v130 = &stru_1F05B9908;
        }

        v107 = [(__CFString *)v141 domain];
        [(__CFString *)v141 code];
        *buf = 138544898;
        OUTLINED_FUNCTION_12_5();
        v153 = v128;
        v154 = v108;
        v155 = v134;
        v156 = v108;
        OUTLINED_FUNCTION_22_5();
        v159 = v107;
        v160 = 2048;
        v161 = v109;
        v162 = 2112;
        v163 = v141;
        _os_log_error_impl(&dword_191750000, v23, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch overlapping additions windows for %{public}@peer %{public}@%{public}@: %{public}@:%lld (%@)", buf, 0x48u);

        if (v88)
        {
        }

        v15 = v144;
      }
    }

    goto LABEL_18;
  }

LABEL_47:

  v57 = *MEMORY[0x1E69E9840];
}

- (void)handleFetchedEvents:(void *)a3 completedWindows:(void *)a4 missingWindows:
{
  v137 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!a1)
  {
    v12 = v7;
    goto LABEL_37;
  }

  v10 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v10);

  v11 = +[_DKCompatibility currentCompatibility];
  v12 = [v11 filterIncompatibleEvents:v7];

  v13 = [v12 count];
  v14 = +[_CDLogging syncChannel];
  v15 = v14;
  v16 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
  v17 = "down from";
  v116 = v12;
  if (v13)
  {
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      goto LABEL_24;
    }

    v101 = v8;
    v111 = [objc_opt_class() description];
    [v12 count];
    v18 = [OUTLINED_FUNCTION_8_4() numberWithUnsignedInteger:?];
    v96 = v9;
    v106 = _DKSyncLoggingWindowsDescription(v9);
    if ([*(a1 + 304) transportType] == 8)
    {
      v19 = "up to";
    }

    else
    {
      v19 = "down from";
    }

    v20 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    v21 = &stru_1F05B9908;
    if ([OUTLINED_FUNCTION_10_10() me])
    {
      v22 = @"pseudo ";
    }

    else
    {
      v22 = &stru_1F05B9908;
    }

    v23 = [OUTLINED_FUNCTION_4_16() identifier];
    v24 = [OUTLINED_FUNCTION_4_16() model];
    if (v24)
    {
      v25 = MEMORY[0x1E696AEC0];
      v20 = [OUTLINED_FUNCTION_4_16() model];
      v21 = [v25 stringWithFormat:@" (%@)", v20];
    }

    v31 = [*(a1 + 304) name];
    OUTLINED_FUNCTION_13_6();
    OUTLINED_FUNCTION_2_17();
    v126 = v32;
    v127 = 2082;
    v128 = v19;
    v129 = v33;
    v130 = v22;
    OUTLINED_FUNCTION_8_10();
    _os_log_impl(&dword_191750000, v15, OS_LOG_TYPE_INFO, "%{public}@: Fetched %@ events in windows %{public}@ doing sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@", buf, 0x52u);

    if (v24)
    {
    }

    v34 = v106;
  }

  else
  {
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_24;
    }

    v101 = v8;
    v107 = [objc_opt_class() description];
    [v12 count];
    v26 = [OUTLINED_FUNCTION_8_4() numberWithUnsignedInteger:?];
    v96 = v9;
    v112 = _DKSyncLoggingWindowsDescription(v9);
    if ([*(a1 + 304) transportType] == 8)
    {
      v17 = "up to";
    }

    v27 = &stru_1F05B9908;
    if ([OUTLINED_FUNCTION_10_10() me])
    {
      v28 = @"pseudo ";
    }

    else
    {
      v28 = &stru_1F05B9908;
    }

    v29 = [OUTLINED_FUNCTION_10_10() identifier];
    v30 = [OUTLINED_FUNCTION_10_10() model];
    if (v30)
    {
      v75 = MEMORY[0x1E696AEC0];
      [OUTLINED_FUNCTION_10_10() model];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_21_7();
      v27 = [v75 stringWithFormat:@" (%@)"];
    }

    v76 = [*(a1 + 304) name];
    *buf = 138545154;
    v122 = v107;
    OUTLINED_FUNCTION_2_17();
    v126 = v77;
    v127 = 2082;
    v128 = v17;
    v129 = v78;
    v130 = v28;
    OUTLINED_FUNCTION_8_10();
    _os_log_debug_impl(&dword_191750000, v15, OS_LOG_TYPE_DEBUG, "%{public}@: Fetched %@ events in windows %{public}@ doing sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@", buf, 0x52u);

    if (v30)
    {
    }

    v34 = v112;
  }

  v9 = v96;
  v8 = v101;
  v12 = v116;
  v16 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
LABEL_24:

  v35 = [OUTLINED_FUNCTION_10_10() sourceDeviceID];
  if (!v35)
  {
    v46 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v98 = v9;
      v103 = v8;
      v65 = [objc_opt_class() description];
      [v12 count];
      v66 = [OUTLINED_FUNCTION_8_4() numberWithUnsignedInteger:?];
      v67 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
      [OUTLINED_FUNCTION_6_16() me];
      v68 = [OUTLINED_FUNCTION_6_16() identifier];
      v69 = [OUTLINED_FUNCTION_6_16() model];
      if (v69)
      {
        v79 = MEMORY[0x1E696AEC0];
        v67 = [OUTLINED_FUNCTION_6_16() model];
        v70 = [v79 stringWithFormat:@" (%@)", v67];
      }

      else
      {
        v70 = &stru_1F05B9908;
      }

      *buf = 138544386;
      v122 = v65;
      OUTLINED_FUNCTION_2_17();
      OUTLINED_FUNCTION_18_6();
      _os_log_error_impl(&dword_191750000, v46, OS_LOG_TYPE_ERROR, "%{public}@: Unable to save %@ events, missing device id in peer %{public}@peer %{public}@%{public}@", buf, 0x34u);
      if (v69)
      {
      }

      v9 = v98;
      v8 = v103;
      v12 = v116;
    }

    v36 = [a1 errors];
    v45 = +[_DKSyncErrors internalFailure];
    [v36 addObject:v45];
    v42 = 0;
    goto LABEL_32;
  }

  v36 = +[_DKSyncPeerStatusTracker sharedInstance];
  v37 = [MEMORY[0x1E695DF00] date];
  v38 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
  [v36 setLastSuccessfulActivityDate:v37 onTransport:objc_msgSend(*(a1 + 304) forPeer:{"transportType"), *(a1 + v16[959])}];

  if ([v12 count])
  {
    *(a1 + 400) = 1;
    [(_DKPerformSyncDownPeerAdditionsOperation *)a1 updateEvents:v116 withSourceDeviceID:v35];
    v50 = *(a1 + 296);
    v120 = 0;
    v51 = [v50 saveEvents:v116 error:&v120];
    v52 = v120;
    v53 = +[_CDLogging syncChannel];
    v54 = v53;
    if (v51)
    {
      if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
      {
        v97 = v9;
        v102 = v8;
        v113 = [objc_opt_class() description];
        [v116 count];
        v108 = [OUTLINED_FUNCTION_8_4() numberWithUnsignedInteger:?];
        v55 = [OUTLINED_FUNCTION_4_16() me];
        v56 = &stru_1F05B9908;
        v57 = @"pseudo ";
        if (!v55)
        {
          v57 = &stru_1F05B9908;
        }

        v94 = v57;
        v58 = [OUTLINED_FUNCTION_4_16() identifier];
        v59 = [OUTLINED_FUNCTION_4_16() model];
        if (v59)
        {
          v60 = MEMORY[0x1E696AEC0];
          v92 = [OUTLINED_FUNCTION_4_16() model];
          v56 = [v60 stringWithFormat:@" (%@)", v92];
        }

        v82 = _DKSyncLoggingWindowsDescription(v102);
        *buf = 138544642;
        v122 = v113;
        v123 = 2112;
        v124 = v108;
        v125 = 2114;
        v126 = v94;
        v127 = 2114;
        v128 = v58;
        v129 = 2114;
        v130 = v56;
        v131 = 2114;
        v132 = v82;
        _os_log_impl(&dword_191750000, v54, OS_LOG_TYPE_INFO, "%{public}@: Saved %@ events from %{public}@peer %{public}@%{public}@ in windows %{public}@", buf, 0x3Eu);
        if (v59)
        {
        }

        v9 = v97;
        v8 = v102;
      }
    }

    else
    {
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        v100 = v9;
        v105 = v8;
        v115 = [objc_opt_class() description];
        [v116 count];
        v110 = [OUTLINED_FUNCTION_8_4() numberWithUnsignedInteger:?];
        v83 = [OUTLINED_FUNCTION_4_16() me];
        v84 = @"pseudo ";
        if (!v83)
        {
          v84 = &stru_1F05B9908;
        }

        v95 = v84;
        v85 = [OUTLINED_FUNCTION_4_16() identifier];
        v86 = [OUTLINED_FUNCTION_4_16() model];
        if (v86)
        {
          v88 = MEMORY[0x1E696AEC0];
          v92 = [OUTLINED_FUNCTION_4_16() model];
          v87 = [v88 stringWithFormat:@" (%@)", v92];
        }

        else
        {
          v87 = &stru_1F05B9908;
        }

        v89 = [v52 domain];
        [v52 code];
        OUTLINED_FUNCTION_13_6();
        v123 = 2112;
        v124 = v90;
        v125 = 2114;
        v126 = v95;
        v127 = 2114;
        v128 = v85;
        v129 = 2114;
        v130 = v87;
        v131 = 2114;
        v132 = v89;
        v133 = 2048;
        v134 = v91;
        v135 = 2112;
        v136 = v52;
        _os_log_error_impl(&dword_191750000, v54, OS_LOG_TYPE_ERROR, "%{public}@: Failed while saving %@ events from %{public}@peer %{public}@%{public}@: %{public}@:%lld (%@)", buf, 0x52u);

        if (v86)
        {
        }

        v9 = v100;
        v8 = v105;
      }

      v54 = [a1 errors];
      [v54 addObject:v52];
    }

    v16 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    v38 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
  }

  v39 = *(a1 + 296);
  v40 = *(a1 + v16[959]);
  v41 = [*(a1 + v38[958]) name];
  v119 = 0;
  [v39 saveSyncedDownWindows:v8 peer:v40 transportName:v41 error:&v119];
  v42 = v119;

  v43 = +[_CDLogging syncChannel];
  v44 = v43;
  if (v42)
  {
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v61 = [objc_opt_class() description];
      v62 = _DKSyncLoggingWindowsDescription(v8);
      v63 = [(__CFString *)v42 domain];
      v64 = [(__CFString *)v42 code];
      *buf = 138544386;
      v122 = v61;
      v123 = 2114;
      v124 = v62;
      v125 = 2114;
      v126 = v63;
      v127 = 2048;
      v128 = v64;
      v129 = 2112;
      v130 = v42;
      _os_log_error_impl(&dword_191750000, v44, OS_LOG_TYPE_ERROR, "%{public}@: Failed while saving synced down windows %{public}@: %{public}@:%lld (%@)", buf, 0x34u);
    }

    v45 = [a1 errors];
    [v45 addObject:v42];
    v12 = v116;
LABEL_32:

    v47 = v36;
    v36 = v42;
LABEL_33:

    if ([*(a1 + 304) transportType] != 1)
    {
      [*(a1 + 304) setHasAdditionsFlag:0 forPeer:*(a1 + 312)];
    }

    [a1 endOperation];
    goto LABEL_36;
  }

  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    v99 = v9;
    v114 = [objc_opt_class() description];
    v104 = v8;
    v109 = _DKSyncLoggingWindowsDescription(v8);
    v71 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    [OUTLINED_FUNCTION_6_16() me];
    v72 = [OUTLINED_FUNCTION_6_16() identifier];
    v73 = [OUTLINED_FUNCTION_6_16() model];
    if (v73)
    {
      v80 = MEMORY[0x1E696AEC0];
      v71 = [OUTLINED_FUNCTION_6_16() model];
      v74 = [v80 stringWithFormat:@" (%@)", v71];
    }

    else
    {
      v74 = &stru_1F05B9908;
    }

    OUTLINED_FUNCTION_13_6();
    v123 = 2114;
    v124 = v81;
    v125 = 2114;
    OUTLINED_FUNCTION_18_6();
    _os_log_debug_impl(&dword_191750000, v44, OS_LOG_TYPE_DEBUG, "%{public}@: Successfully saved completed windows %{public}@ from %{public}@peer %{public}@%{public}@", buf, 0x34u);
    if (v73)
    {
    }

    v9 = v99;
    v8 = v104;
  }

  v49 = *(a1 + 384);
  if (v49 >= [*(a1 + 320) maxBatchesPerSync])
  {
    v47 = v36;
    v36 = 0;
    v12 = v116;
    goto LABEL_33;
  }

  v117[0] = MEMORY[0x1E69E9820];
  v117[1] = 3221225472;
  v117[2] = __96___DKPerformSyncDownPeerAdditionsOperation_handleFetchedEvents_completedWindows_missingWindows___block_invoke;
  v117[3] = &unk_1E7367710;
  v117[4] = a1;
  v118 = v8;
  [_DKSyncSerializer performAsyncBlock:v117];

  v12 = v116;
LABEL_36:

LABEL_37:
  v48 = *MEMORY[0x1E69E9840];
}

- (void)coalesceRedundantOverlappingWindows
{
  v81[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v2);

    v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-86400.0];
    v4 = [_DKSyncWindow redundantWindowsFromSortedWindows:v3 olderThanDate:?];
    if ([v4 count] >= 2)
    {
      v5 = [v4 valueForKeyPath:@"event.UUID"];
      v6 = [v4 firstObject];
      v7 = [(_DKSyncWindow *)v6 startDate];
      v8 = [v4 lastObject];
      v9 = [(_DKSyncType *)v8 urgency];
      v10 = [_DKSyncWindow syncWindowWithStartDate:v7 endDate:v9];

      v11 = [v4 firstObject];
      v12 = [(_DKSyncWindow *)v11 event];

      if (v12)
      {
        v63 = v5;
        v13 = [v12 stream];
        v14 = [v13 name];

        v61 = v14;
        v15 = [_DKSyncMetadataStorage eventFromFetchedWindow:v10 windowStreamName:v14 transportName:0];
        v16 = *(a1 + 296);
        v60 = v15;
        v81[0] = v15;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:1];
        v65 = 0;
        LODWORD(v14) = [v16 saveEvents:v17 error:&v65];
        v18 = v65;

        if (v14)
        {
          v19 = *(a1 + 296);
          v64 = v18;
          v20 = [v19 deleteEventsWithEventIDs:v63 error:&v64];
          v62 = v64;

          v21 = +[_CDLogging syncChannel];
          v22 = v21;
          if (v20)
          {
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              v54 = [objc_opt_class() description];
              v58 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
              v23 = [OUTLINED_FUNCTION_0_26() me];
              v24 = &stru_1F05B9908;
              v25 = @"pseudo ";
              if (!v23)
              {
                v25 = &stru_1F05B9908;
              }

              v51 = v25;
              v56 = [OUTLINED_FUNCTION_0_26() identifier];
              v52 = [OUTLINED_FUNCTION_0_26() model];
              if (v52)
              {
                v43 = MEMORY[0x1E696AEC0];
                v49 = [OUTLINED_FUNCTION_0_26() model];
                v24 = [v43 stringWithFormat:@" (%@)", v49];
              }

              v44 = [v10 debugDescription];
              *buf = 138544642;
              v68 = v54;
              v69 = 2112;
              v70 = v58;
              v71 = 2114;
              v72 = v51;
              v73 = 2114;
              v74 = v56;
              v75 = 2114;
              v76 = v24;
              v77 = 2114;
              v78 = v44;
              OUTLINED_FUNCTION_15_0(&dword_191750000, v22, v45, "%{public}@: Coalesced %@ windows for %{public}@peer %{public}@%{public}@ into window %{public}@", buf);

              if (v52)
              {
              }
            }
          }

          else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v59 = [objc_opt_class() description];
            v40 = [OUTLINED_FUNCTION_0_26() me];
            v41 = &stru_1F05B9908;
            v42 = @"pseudo ";
            if (!v40)
            {
              v42 = &stru_1F05B9908;
            }

            v53 = v42;
            v57 = [OUTLINED_FUNCTION_0_26() identifier];
            v55 = [OUTLINED_FUNCTION_0_26() model];
            if (v55)
            {
              v46 = MEMORY[0x1E696AEC0];
              [OUTLINED_FUNCTION_0_26() model];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_21_7();
              v41 = [v46 stringWithFormat:@" (%@)"];
            }

            v47 = [(__CFString *)v62 domain];
            v48 = [(__CFString *)v62 code];
            *buf = 138544898;
            v68 = v59;
            v69 = 2114;
            v70 = v53;
            v71 = 2114;
            v72 = v57;
            v73 = 2114;
            v74 = v41;
            v75 = 2114;
            v76 = v47;
            v77 = 2048;
            v78 = v48;
            v79 = 2112;
            v80 = v62;
            _os_log_error_impl(&dword_191750000, v22, OS_LOG_TYPE_ERROR, "%{public}@: Failed while deleting coalesced events for %{public}@peer %{public}@%{public}@: %{public}@:%lld (%@)", buf, 0x48u);

            if (v55)
            {
            }
          }
        }

        else
        {
          v22 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            v37 = [objc_opt_class() description];
            v38 = [(__CFString *)v18 domain];
            v39 = [(__CFString *)v18 code];
            *buf = 138544130;
            v68 = v37;
            v69 = 2114;
            v70 = v38;
            v71 = 2048;
            v72 = v39;
            v73 = 2112;
            v74 = v18;
            _os_log_error_impl(&dword_191750000, v22, OS_LOG_TYPE_ERROR, "%{public}@: Failed while saving coalesced event: %{public}@:%lld (%@)", buf, 0x2Au);
          }

          v62 = v18;
        }

        v26 = *(a1 + 392);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v28 = *(a1 + 392);
        if (isKindOfClass)
        {
          v29 = v28;
        }

        else
        {
          v29 = [v28 mutableCopy];
        }

        v30 = v29;
        v31 = [v4 firstObject];
        v32 = [v30 indexOfObject:v31];

        v33 = [v4 count];
        v66 = v10;
        v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
        [v30 replaceObjectsInRange:v32 withObjectsFromArray:{v33, v34}];

        v35 = *(a1 + 392);
        *(a1 + 392) = v30;

        v5 = v63;
      }
    }
  }

  v36 = *MEMORY[0x1E69E9840];
}

- (void)updateEvents:(void *)a3 withSourceDeviceID:
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v7);

    v24 = objc_opt_new();
    v22 = v6;
    v23 = objc_opt_new();
    [v23 setDeviceID:v6];
    v8 = [MEMORY[0x1E695DF00] date];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v21 = v5;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          v15 = [v14 source];
          v16 = v15;
          if (v15)
          {
            v17 = [v15 deviceID];

            if (!v17)
            {
              [v16 setDeviceID:v22];
            }
          }

          else
          {
            [v14 setSource:v23];
          }

          v18 = [v14 stream];
          v19 = [v18 name];

          if (v19)
          {
            [v24 addObject:v19];
          }

          +[_DKPerformSyncDownPeerAdditionsOperation _updateEventStatsWithSyncLatencyOfEvent:ingressDate:transportType:](_DKPerformSyncDownPeerAdditionsOperation, v14, v8, [*(a1 + 304) transportType]);
        }

        v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v11);
    }

    +[_DKPerformSyncDownPeerAdditionsOperation _updateEventStatsWithTotal:streamNameCounts:transportType:](_DKPerformSyncDownPeerAdditionsOperation, [v9 count], v24, objc_msgSend(*(a1 + 304), "transportType"));
    v5 = v21;
    v6 = v22;
  }

  v20 = *MEMORY[0x1E69E9840];
}

@end