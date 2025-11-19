@interface _DKPerformSyncUpHistoryAdditionsOperation
+ (void)_updateEventStatsWithPreviousSyncDate:(uint64_t)a3 transportType:;
+ (void)_updateEventStatsWithTotal:(void *)a3 streamNameCounts:(uint64_t)a4 transportType:;
- (id)history;
- (id)initWithParent:(void *)a3 localStorage:(void *)a4 transport:(void *)a5 peer:(void *)a6 policy:(void *)a7 type:;
- (uint64_t)performSyncUpHistoryAdditions;
- (void)endOperation;
- (void)handleUpdateStorageWithFetchedWindow:(uint64_t)a3 eventsCount:(void *)a4 error:;
- (void)main;
- (void)performSyncUpHistoryAdditionsWithAdditionsHighWaterMark:(void *)a3 orError:;
- (void)performSyncUpHistoryAdditionsWithPreviousHighWaterMark:(uint64_t)a1;
@end

@implementation _DKPerformSyncUpHistoryAdditionsOperation

- (void)main
{
  v3 = objc_opt_class();
  if ([_DKSync2Coordinator shouldDeferSyncOperationWithClass:v3 syncType:self->_type transport:self->_transport peer:0 policy:self->_policy])
  {

    [(_DKPerformSyncUpHistoryAdditionsOperation *)self endOperation];
  }

  else
  {

    [(_DKPerformSyncUpHistoryAdditionsOperation *)self performSyncUpHistoryAdditions];
  }
}

+ (void)_updateEventStatsWithPreviousSyncDate:(uint64_t)a3 transportType:
{
  v11 = a2;
  objc_opt_self();
  if (_updateEventStatsWithPreviousSyncDate_transportType__syncCadenceInitialized_0 != -1)
  {
    +[_DKPerformSyncUpHistoryAdditionsOperation _updateEventStatsWithPreviousSyncDate:transportType:];
  }

  if (v11)
  {
    v4 = [MEMORY[0x1E695DF00] distantPast];
    v5 = [v11 isEqualToDate:v4];

    if ((v5 & 1) == 0)
    {
      v6 = _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceByTransportCounter_0;
      v7 = [MEMORY[0x1E695DF00] date];
      if (a3 == 1)
      {
        v8 = @"Rapport";
      }

      else
      {
        v8 = @"Cloud";
      }

      [(_DKEventTypeStatsTimerCounter *)v6 addTimingWithStartDate:v11 endDate:v7 typeValue:v8];
    }
  }

  v9 = _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceCounter_0;
  v10 = [MEMORY[0x1E695DF00] date];
  [(_DKEventStatsTimerCounter *)v9 addTimingWithStartDate:v11 endDate:v10];
}

+ (void)_updateEventStatsWithTotal:(void *)a3 streamNameCounts:(uint64_t)a4 transportType:
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  objc_opt_self();
  if (_updateEventStatsWithTotal_streamNameCounts_transportType__syncUpHistoryAdditionsCounterInitialized != -1)
  {
    +[_DKPerformSyncUpHistoryAdditionsOperation _updateEventStatsWithTotal:streamNameCounts:transportType:];
  }

  [(_DKEventStatsCounter *)_updateEventStatsWithTotal_streamNameCounts_transportType__syncUpHistoryAdditionsTotalCounter incrementCountByNumber:a2];
  if (a4 == 1)
  {
    v7 = @"Rapport";
  }

  else
  {
    v7 = @"Cloud";
  }

  [(_DKEventTypeStatsCounter *)_updateEventStatsWithTotal_streamNameCounts_transportType__syncUpHistoryAdditionsTotalByTransportCounter incrementCountByNumber:a2 typeValue:v7];
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
        v14 = [_updateEventStatsWithTotal_streamNameCounts_transportType__syncUpHistoryAdditionsCountersByStreamName objectForKeyedSubscript:v13];
        if (!v14)
        {
          v15 = MEMORY[0x1E696AEC0];
          v16 = [_DKEventStatsUtilities safeStringWithString:v13];
          v17 = [v15 stringWithFormat:@"sync_up_history_additions_stream%@", v16];

          v14 = [_DKEventStatsCounter counterInCollection:v17 withEventName:?];
          [_updateEventStatsWithTotal_streamNameCounts_transportType__syncUpHistoryAdditionsCountersByStreamName setObject:v14 forKeyedSubscript:v13];
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
  v2.super_class = _DKPerformSyncUpHistoryAdditionsOperation;
  [(_DKSyncCompositeOperation *)&v2 endOperation];
}

- (id)initWithParent:(void *)a3 localStorage:(void *)a4 transport:(void *)a5 peer:(void *)a6 policy:(void *)a7 type:
{
  v23 = a3;
  v22 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (a1)
  {
    v24.receiver = a1;
    v24.super_class = _DKPerformSyncUpHistoryAdditionsOperation;
    v17 = objc_msgSendSuper2(&v24, sel_initWithParent_, a2, v22, v23);
    v18 = v17;
    if (v17)
    {
      objc_storeStrong(v17 + 37, a3);
      objc_storeStrong(v18 + 38, a4);
      objc_storeStrong(v18 + 39, a5);
      objc_storeStrong(v18 + 40, a6);
      objc_storeStrong(v18 + 41, a7);
      v19 = [MEMORY[0x1E695DF00] date];
      v20 = v18[43];
      v18[43] = v19;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (uint64_t)performSyncUpHistoryAdditions
{
  v40 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    v3 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v3);

    v4 = [*(v2 + 320) streamNamesToSyncWithSyncType:*(v2 + 328) transportType:{objc_msgSend(OUTLINED_FUNCTION_14_5(), "transportType")}];
    v5 = *(v2 + 336);
    *(v2 + 336) = v4;

    if ([*(v2 + 336) count])
    {
      v6 = *(v2 + 296);
      v7 = *(v2 + 312);
      [OUTLINED_FUNCTION_14_5() name];
      objc_claimAutoreleasedReturnValue();
      v8 = [OUTLINED_FUNCTION_20_5() additionsSyncHistoryForPeer:? transportName:? error:?];
      v9 = *(v2 + 360);
      *(v2 + 360) = v8;

      v10 = objc_opt_class();
      if (([_DKSync2Coordinator canPerformSyncOperationWithClass:v10 syncType:*(v2 + 328) history:*(v2 + 360) transport:*(v2 + 304) peer:*(v2 + 312) policy:*(v2 + 320)]& 1) != 0)
      {
        v11 = *(v2 + 320);
        v12 = *(v2 + 328);
        [*(v2 + 360) lastSyncDate];
        objc_claimAutoreleasedReturnValue();
        v13 = [OUTLINED_FUNCTION_20_5() highPriorityForSyncUpWithSyncType:? lastSyncDate:?];

        v14 = OUTLINED_FUNCTION_14_5();
        v15 = *(v2 + 312);
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __74___DKPerformSyncUpHistoryAdditionsOperation_performSyncUpHistoryAdditions__block_invoke;
        v27[3] = &unk_1E7369B88;
        v27[4] = v2;
        result = [v14 fetchAdditionsHighWaterMarkWithPeer:v15 highPriority:v13 completion:v27];
        goto LABEL_8;
      }
    }

    else
    {
      v16 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v18 = [objc_opt_class() description];
        if ([OUTLINED_FUNCTION_14_5() transportType] == 8)
        {
          v19 = "up to";
        }

        else
        {
          v19 = "down from";
        }

        v20 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
        v21 = &stru_1F05B9908;
        if ([OUTLINED_FUNCTION_17_6() me])
        {
          v22 = @"pseudo ";
        }

        else
        {
          v22 = &stru_1F05B9908;
        }

        v23 = [OUTLINED_FUNCTION_17_6() identifier];
        v24 = [OUTLINED_FUNCTION_17_6() model];
        if (v24)
        {
          v25 = MEMORY[0x1E696AEC0];
          v20 = [OUTLINED_FUNCTION_17_6() model];
          v21 = [v25 stringWithFormat:@" (%@)", v20];
        }

        v26 = [OUTLINED_FUNCTION_14_5() name];
        *buf = 138544642;
        v29 = v18;
        v30 = 2082;
        v31 = v19;
        v32 = 2114;
        v33 = v22;
        v34 = 2114;
        v35 = v23;
        v36 = 2114;
        v37 = v21;
        v38 = 2114;
        v39 = v26;
        _os_log_debug_impl(&dword_191750000, v16, OS_LOG_TYPE_DEBUG, "%{public}@: Skipped additions history sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ due to no streams to sync", buf, 0x3Eu);

        if (v24)
        {
        }
      }
    }

    result = [v2 endOperation];
  }

LABEL_8:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)performSyncUpHistoryAdditionsWithAdditionsHighWaterMark:(void *)a3 orError:
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if (v5)
    {
      [(_DKPerformSyncUpHistoryAdditionsOperation *)a1 performSyncUpHistoryAdditionsWithPreviousHighWaterMark:v5];
    }

    else
    {
      v7 = +[_CDLogging syncChannel];
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
      if (v6)
      {
        if (v8)
        {
          v27 = [objc_opt_class() description];
          [OUTLINED_FUNCTION_4_13() transportType];
          OUTLINED_FUNCTION_12_3();
          v10 = &stru_1F05B9908;
          [OUTLINED_FUNCTION_8_7() me];
          v11 = [OUTLINED_FUNCTION_8_7() identifier];
          v12 = [OUTLINED_FUNCTION_8_7() model];
          if (v12)
          {
            v17 = MEMORY[0x1E696AEC0];
            v25 = [OUTLINED_FUNCTION_8_7() model];
            v10 = [v17 stringWithFormat:@" (%@)", v25];
          }

          v18 = [OUTLINED_FUNCTION_4_13() name];
          v19 = [v6 domain];
          [v6 code];
          OUTLINED_FUNCTION_13_5();
          v30 = v26;
          OUTLINED_FUNCTION_6_13();
          v31 = v18;
          v32 = v20;
          v33 = v19;
          v34 = 2048;
          v35 = v21;
          v36 = 2112;
          v37 = v6;
          _os_log_debug_impl(&dword_191750000, v7, OS_LOG_TYPE_DEBUG, "%{public}@: Skipping additions history sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@: %{public}@:%lld (%@)", buf, 0x5Cu);

          if (v12)
          {
          }
        }

        v7 = [a1 errors];
        [v7 addObject:v6];
      }

      else if (v8)
      {
        v28 = [objc_opt_class() description];
        if ([a1[38] transportType] == 8)
        {
          v13 = "up to";
        }

        else
        {
          v13 = "down from";
        }

        v14 = &stru_1F05B9908;
        [OUTLINED_FUNCTION_8_7() me];
        v15 = [OUTLINED_FUNCTION_8_7() identifier];
        v16 = [OUTLINED_FUNCTION_8_7() model];
        if (v16)
        {
          v22 = MEMORY[0x1E696AEC0];
          v26 = [OUTLINED_FUNCTION_8_7() model];
          v14 = [v22 stringWithFormat:@" (%@)", v26];
        }

        v23 = [a1[38] name];
        OUTLINED_FUNCTION_13_5();
        v30 = v13;
        OUTLINED_FUNCTION_6_13();
        v31 = v24;
        _os_log_debug_impl(&dword_191750000, v7, OS_LOG_TYPE_DEBUG, "%{public}@: Skipping additions history sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ due to missing high water mark", buf, 0x3Eu);

        if (v16)
        {
        }
      }

      [a1 endOperation];
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)performSyncUpHistoryAdditionsWithPreviousHighWaterMark:(uint64_t)a1
{
  v280[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v4);

    v5 = 0x1E7366000uLL;
    v6 = +[_CDLogging syncChannel];
    v7 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    v8 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v240 = v3;
      v34 = [objc_opt_class() description];
      if ([OUTLINED_FUNCTION_4_13() transportType] == 8)
      {
        v35 = "up to";
      }

      else
      {
        v35 = "down from";
      }

      if ([*(a1 + 312) me])
      {
        v36 = @"pseudo ";
      }

      else
      {
        v36 = &stru_1F05B9908;
      }

      v37 = [*(a1 + 312) identifier];
      v38 = [*(a1 + 312) model];
      if (v38)
      {
        v52 = MEMORY[0x1E696AEC0];
        v243 = [*(a1 + 312) model];
        v188 = v243;
        v39 = [v52 stringWithFormat:@" (%@)"];
      }

      else
      {
        v39 = &stru_1F05B9908;
      }

      v53 = [OUTLINED_FUNCTION_4_13() name];
      v54 = [(NSDate *)v240 dk_localtimeString];
      *buf = 138544898;
      v263 = v34;
      v264 = 2082;
      v265 = v35;
      v266 = 2114;
      v267 = v36;
      v268 = 2114;
      v269 = v37;
      v270 = 2114;
      v271 = v39;
      v272 = 2114;
      v273 = v53;
      v274 = 2112;
      v275 = v54;
      _os_log_debug_impl(&dword_191750000, v6, OS_LOG_TYPE_DEBUG, "%{public}@: Performing additions history sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ from previous high water mark %@", buf, 0x48u);

      if (v38)
      {
      }

      v3 = v240;
      v7 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
      v8 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
      v5 = 0x1E7366000;
    }

    v9 = [*(a1 + 320) queryStartDateWithSyncType:*(a1 + 328) previousHighWaterMark:v3];
    v10 = *(a1 + 344);
    [v10 timeIntervalSinceReferenceDate];
    v12 = v11;
    [v9 timeIntervalSinceReferenceDate];
    if (v12 - v13 <= [*(a1 + 320) minSyncWindowInSeconds])
    {
      v30 = [*(v5 + 648) syncChannel];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v245 = [OUTLINED_FUNCTION_15_5() description];
        v45 = v7;
        if ([OUTLINED_FUNCTION_4_13() transportType] == 8)
        {
          v46 = "up to";
        }

        else
        {
          v46 = "down from";
        }

        v47 = &stru_1F05B9908;
        if ([*(a1 + v8[848]) me])
        {
          v48 = @"pseudo ";
        }

        else
        {
          v48 = &stru_1F05B9908;
        }

        [*(a1 + v8[848]) identifier];
        v50 = v49 = v8;
        v51 = [*(a1 + v49[848]) model];
        if (v51)
        {
          v110 = MEMORY[0x1E696AEC0];
          v49 = [*(a1 + v49[848]) model];
          v47 = [v110 stringWithFormat:@" (%@)", v49];
        }

        v111 = [*(a1 + v45[847]) name];
        *buf = 138544642;
        v263 = v245;
        v264 = 2082;
        v265 = v46;
        v266 = 2114;
        v267 = v48;
        v268 = 2114;
        v269 = v50;
        v270 = 2114;
        v271 = v47;
        v272 = 2114;
        v273 = v111;
        OUTLINED_FUNCTION_5_10();
        _os_log_debug_impl(v112, v113, v114, v115, v116, 0x3Eu);

        if (v51)
        {
        }

        v3 = v240;
        v10 = v225;
        v9 = v233;
      }

      v27 = 0;
      v26 = 0;
    }

    else
    {
      v14 = *(a1 + 352);
      if (!v14)
      {
        [*(a1 + 360) lastSyncDate];
        v16 = v15 = v5;
        v17 = [OUTLINED_FUNCTION_4_13() transportType];
        [_DKPerformSyncUpHistoryAdditionsOperation _updateEventStatsWithPreviousSyncDate:v16 transportType:v17];

        v5 = v15;
        v14 = *(a1 + 352);
      }

      *(a1 + 352) = v14 + 1;
      v18 = objc_opt_new();
      [(_DKSyncWindow *)v18 setStartDate:v9];
      [(_DKSyncWindow *)v18 setEndDate:v10];
      v19 = [*(v5 + 648) syncChannel];
      v244 = v18;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v221 = [OUTLINED_FUNCTION_15_5() description];
        v236 = [v18 debugDescription];
        if ([*(a1 + 304) transportType] == 8)
        {
          v40 = "up to";
        }

        else
        {
          v40 = "down from";
        }

        v41 = &stru_1F05B9908;
        if ([OUTLINED_FUNCTION_1_16() me])
        {
          v42 = @"pseudo ";
        }

        else
        {
          v42 = &stru_1F05B9908;
        }

        v43 = [OUTLINED_FUNCTION_1_16() identifier];
        v44 = [OUTLINED_FUNCTION_1_16() model];
        if (v44)
        {
          v101 = MEMORY[0x1E696AEC0];
          v216 = [OUTLINED_FUNCTION_1_16() model];
          v188 = v216;
          v41 = [v101 stringWithFormat:@" (%@)"];
        }

        v102 = [*(a1 + 304) name];
        OUTLINED_FUNCTION_11_5();
        *(v103 + 4) = v221;
        v264 = 2114;
        *(v103 + 14) = v236;
        v266 = 2082;
        v267 = v40;
        v268 = 2114;
        *(v103 + 34) = v42;
        v270 = 2114;
        *(v103 + 44) = v43;
        v272 = 2114;
        *(v103 + 54) = v41;
        v274 = 2114;
        v275 = v104;
        OUTLINED_FUNCTION_5_10();
        _os_log_debug_impl(v105, v106, v107, v108, v109, 0x48u);

        if (v44)
        {
        }

        v3 = v240;
        v18 = v244;
        v10 = v225;
        v9 = v233;
      }

      v20 = [*(a1 + 320) syncBatchSizeInEvents];
      v21 = v20;
      if (v20 <= 1)
      {
        v22 = v20;
      }

      else
      {
        v22 = v20 + 1;
      }

      v23 = *(a1 + 296);
      v280[0] = v18;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v280 count:1];
      v25 = *(a1 + 336);
      v261 = 0;
      v26 = [v23 sortedEventsFromSyncWindows:v24 streamNames:v25 limit:v22 fetchOrder:1 error:&v261];
      v27 = v261;

      if (v27)
      {
        v28 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v238 = [OUTLINED_FUNCTION_15_5() description];
          v223 = [v244 debugDescription];
          v95 = [*(a1 + 304) transportType];
          v96 = "down from";
          if (v95 == 8)
          {
            v96 = "up to";
          }

          v218 = v96;
          if ([OUTLINED_FUNCTION_1_16() me])
          {
            v97 = @"pseudo ";
          }

          else
          {
            v97 = &stru_1F05B9908;
          }

          v98 = [OUTLINED_FUNCTION_1_16() identifier];
          v99 = [OUTLINED_FUNCTION_1_16() model];
          if (v99)
          {
            v117 = MEMORY[0x1E696AEC0];
            v211 = [OUTLINED_FUNCTION_1_16() model];
            v188 = v211;
            v100 = [v117 stringWithFormat:@" (%@)"];
          }

          else
          {
            v100 = &stru_1F05B9908;
          }

          v118 = [*(a1 + 304) name];
          v119 = [v27 domain];
          [v27 code];
          OUTLINED_FUNCTION_11_5();
          *(v120 + 4) = v238;
          v264 = 2114;
          *(v120 + 14) = v223;
          v266 = 2082;
          v267 = v218;
          v268 = 2114;
          *(v120 + 34) = v97;
          v270 = 2114;
          *(v120 + 44) = v98;
          v272 = 2114;
          *(v120 + 54) = v100;
          OUTLINED_FUNCTION_2_13(v121);
          OUTLINED_FUNCTION_22_4(&dword_191750000, v122, v123, "%{public}@: Failed while querying for events in window %{public}@ doing additions history sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@: %{public}@:%lld (%@)", v124, v125, v126, v127, v188, v189, v190, v192, v194, v196, v200, v206, v211, v218, v223, v225, v233, v238, v240, v244, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256[0], v256[1], v257, *(&v257 + 1), v258[0], v258[1], v259, *(&v259 + 1), v260, v261, buf[0]);

          if (v99)
          {
          }

          v3 = v242;
          v10 = v227;
          v9 = v235;
        }

        LOBYTE(v29) = 1;
      }

      else
      {
        if (v21 < 2)
        {
          v31 = v10;
          v33 = 0;
        }

        else
        {
          v31 = v10;
          if ([v26 count] == v21 + 1)
          {
            if ([v26 count] < 2)
            {
              v33 = 1;
            }

            else
            {
              v32 = [v26 subarrayWithRange:{0, objc_msgSend(v26, "count") - 1}];

              v33 = 1;
              v26 = v32;
            }
          }

          else
          {
            v33 = 0;
          }
        }

        v207 = [v26 count];
        v55 = objc_opt_new();
        v237 = v55;
        v241 = v3;
        v234 = v9;
        if (v33)
        {
          v56 = v55;
          v57 = [v26 lastObject];
          v58 = [(_DKSyncWindow *)v244 startDate];
          [(_DKSyncWindow *)v56 setStartDate:v58];

          v59 = [v57 creationDate];
          [(_DKSyncWindow *)v56 setEndDate:v59];

          v60 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
          {
            v229 = [objc_opt_class() description];
            v219 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v207];
            v214 = [v244 debugDescription];
            v133 = [*(a1 + 304) transportType];
            v134 = "down from";
            if (v133 == 8)
            {
              v134 = "up to";
            }

            v202 = v134;
            v135 = [OUTLINED_FUNCTION_1_16() me];
            v136 = @"pseudo ";
            if (!v135)
            {
              v136 = &stru_1F05B9908;
            }

            v198 = v136;
            v137 = [OUTLINED_FUNCTION_1_16() identifier];
            v138 = [OUTLINED_FUNCTION_1_16() model];
            if (v138)
            {
              v160 = MEMORY[0x1E696AEC0];
              v194 = [OUTLINED_FUNCTION_1_16() model];
              v188 = v194;
              v139 = [v160 stringWithFormat:@" (%@)"];
            }

            else
            {
              v139 = &stru_1F05B9908;
            }

            v161 = [*(a1 + 304) name];
            v162 = [v237 debugDescription];
            OUTLINED_FUNCTION_11_5();
            *(v163 + 4) = v229;
            v264 = 2112;
            OUTLINED_FUNCTION_9_6(v219);
            *(v164 + 34) = v202;
            v270 = v165;
            *(v164 + 44) = v198;
            v272 = v165;
            *(v164 + 54) = v137;
            v274 = v165;
            v275 = v139;
            v276 = v165;
            *(v164 + 74) = v161;
            v277 = v165;
            *(v164 + 84) = v166;
            _os_log_debug_impl(&dword_191750000, v60, OS_LOG_TYPE_DEBUG, "%{public}@: Found %@ events in window %{public}@ for additions history sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ but hit limit, fetch limited to window %{public}@", buf, 0x5Cu);

            if (v138)
            {
            }

            v56 = v237;
          }
        }

        else
        {
          v61 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
          {
            v215 = [objc_opt_class() description];
            v230 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v207];
            v220 = [v244 debugDescription];
            v140 = [OUTLINED_FUNCTION_4_13() transportType];
            v141 = "down from";
            if (v140 == 8)
            {
              v141 = "up to";
            }

            v203 = v141;
            v142 = &stru_1F05B9908;
            if ([OUTLINED_FUNCTION_18_4() me])
            {
              v143 = @"pseudo ";
            }

            else
            {
              v143 = &stru_1F05B9908;
            }

            v144 = [OUTLINED_FUNCTION_18_4() identifier];
            v145 = [OUTLINED_FUNCTION_18_4() model];
            if (v145)
            {
              v167 = MEMORY[0x1E696AEC0];
              v196 = [OUTLINED_FUNCTION_18_4() model];
              v188 = v196;
              v142 = [v167 stringWithFormat:@" (%@)"];
            }

            v168 = [*(a1 + 304) name];
            OUTLINED_FUNCTION_11_5();
            *(v169 + 4) = v215;
            v264 = 2112;
            OUTLINED_FUNCTION_9_6(v230);
            *(v170 + 34) = v203;
            v270 = v171;
            *(v170 + 44) = v143;
            v272 = v171;
            *(v170 + 54) = v144;
            v274 = v171;
            v275 = v142;
            v276 = v171;
            *(v170 + 74) = v172;
            OUTLINED_FUNCTION_5_10();
            _os_log_debug_impl(v173, v174, v175, v176, v177, 0x52u);

            if (v145)
            {
            }
          }

          v62 = [(_DKSyncWindow *)v244 startDate];
          v56 = v237;
          [(_DKSyncWindow *)v237 setStartDate:v62];

          v57 = [(_DKSyncType *)v244 urgency];
          [(_DKSyncWindow *)v237 setEndDate:v57];
        }

        v63 = [*(a1 + 312) sourceDeviceID];
        v64 = [_DKSyncMetadataStorage windowStreamNameWithSourceDeviceID:v63];

        v65 = [OUTLINED_FUNCTION_4_13() name];
        v217 = v64;
        v66 = [_DKSyncMetadataStorage eventFromFetchedWindow:v56 windowStreamName:v64 transportName:v65];

        v10 = v31;
        v67 = 0x1E695D000;
        if (v26)
        {
          v68 = [v26 mutableCopy];
        }

        else
        {
          v68 = objc_opt_new();
        }

        v69 = v68;
        v70 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
        [v68 addObject:v66];
        v222 = v26;
        v212 = v69;
        if ([v26 count] || objc_msgSend(OUTLINED_FUNCTION_4_13(), "transportType") != 8 || -[_DKSyncType forceSync](*(a1 + 328)))
        {
          v226 = v31;
          v71 = objc_opt_new();
          *v256 = 0u;
          v257 = 0u;
          *v258 = 0u;
          v259 = 0u;
          v72 = v69;
          v73 = [v72 countByEnumeratingWithState:v256 objects:v279 count:16];
          if (v73)
          {
            v74 = v73;
            v75 = *v257;
            do
            {
              for (i = 0; i != v74; ++i)
              {
                if (*v257 != v75)
                {
                  objc_enumerationMutation(v72);
                }

                v77 = *(v256[1] + 8 * i);
                if (v77 != v66)
                {
                  v78 = [v77 stream];
                  v79 = [v78 name];

                  if (v79)
                  {
                    [v71 addObject:v79];
                  }
                }
              }

              v74 = [v72 countByEnumeratingWithState:v256 objects:v279 count:16];
            }

            while (v74);
          }

          v80 = *(a1 + 320);
          v81 = *(a1 + 328);
          v82 = [*(a1 + 360) lastSyncDate];
          v83 = [v80 highPriorityForSyncUpWithSyncType:v81 lastSyncDate:v82];

          v84 = *(a1 + 304);
          v247 = MEMORY[0x1E69E9820];
          v248 = 3221225472;
          v249 = __100___DKPerformSyncUpHistoryAdditionsOperation_performSyncUpHistoryAdditionsWithPreviousHighWaterMark___block_invoke;
          v250 = &unk_1E7369BB0;
          v251 = v26;
          v252 = v71;
          v253 = a1;
          v85 = v237;
          v254 = v237;
          v255 = v207;
          v86 = v71;
          [v84 updateStorageWithAddedEvents:v72 deletedEventIDs:0 highPriority:v83 completion:&v247];

          v29 = 0;
          v10 = v226;
          v70 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
          v67 = 0x1E695D000uLL;
        }

        else
        {
          v29 = 1;
          v85 = v237;
        }

        v87 = *(a1 + v70[846]);
        v278 = v85;
        v88 = [*(v67 + 3784) arrayWithObjects:&v278 count:1];
        v89 = *(a1 + 312);
        v90 = [OUTLINED_FUNCTION_4_13() name];
        v246 = 0;
        [v87 saveSyncedDownWindows:v88 peer:v89 transportName:v90 error:&v246];
        v27 = v246;

        v91 = +[_CDLogging syncChannel];
        v92 = v91;
        if (v27)
        {
          v26 = v222;
          if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
          {
            v228 = [objc_opt_class() description];
            v208 = [v237 debugDescription];
            v128 = [*(a1 + 304) transportType];
            v129 = "down from";
            if (v128 == 8)
            {
              v129 = "up to";
            }

            v195 = v129;
            v130 = [OUTLINED_FUNCTION_7_6() me];
            v131 = &stru_1F05B9908;
            if (v130)
            {
              v131 = @"pseudo ";
            }

            v193 = v131;
            v201 = [OUTLINED_FUNCTION_7_6() identifier];
            v197 = [OUTLINED_FUNCTION_7_6() model];
            if (v197)
            {
              v148 = MEMORY[0x1E696AEC0];
              v190 = [OUTLINED_FUNCTION_7_6() model];
              v188 = v190;
              v132 = [v148 stringWithFormat:@" (%@)"];
            }

            else
            {
              v132 = &stru_1F05B9908;
            }

            v149 = [*(a1 + 304) name];
            v150 = [v27 domain];
            [v27 code];
            OUTLINED_FUNCTION_3_15();
            OUTLINED_FUNCTION_16_3();
            *(v151 + 44) = v201;
            v272 = v152;
            *(v151 + 54) = v132;
            OUTLINED_FUNCTION_2_13(v153);
            OUTLINED_FUNCTION_22_4(&dword_191750000, v154, v155, "%{public}@: Failed while saving additions window %{public}@ doing additions history sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@: %{public}@:%lld (%@)", v156, v157, v158, v159, v188, v189, v190, v193, v195, v197, v201, v208, v212, v217, v222, v228, v234, v237, v241, v244, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256[0], v256[1], v257, *(&v257 + 1), v258[0], v258[1], v259, *(&v259 + 1), v260, v261, buf[0]);

            if (v199)
            {
            }
          }

          v92 = [a1 errors];
          [v92 addObject:v27];
        }

        else
        {
          v26 = v222;
          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
          {
            v231 = [objc_opt_class() description];
            v209 = [v237 debugDescription];
            [*(a1 + 304) transportType];
            [OUTLINED_FUNCTION_7_6() me];
            v146 = [OUTLINED_FUNCTION_7_6() identifier];
            v204 = [OUTLINED_FUNCTION_7_6() model];
            if (v204)
            {
              v178 = MEMORY[0x1E696AEC0];
              v192 = [OUTLINED_FUNCTION_7_6() model];
              v147 = [v178 stringWithFormat:@" (%@)", v192];
            }

            else
            {
              v147 = &stru_1F05B9908;
            }

            v179 = [*(a1 + 304) name];
            OUTLINED_FUNCTION_3_15();
            OUTLINED_FUNCTION_16_3();
            *(v180 + 44) = v146;
            v272 = v181;
            *(v180 + 54) = v147;
            v274 = v181;
            v275 = v182;
            OUTLINED_FUNCTION_5_10();
            _os_log_debug_impl(v183, v184, v185, v186, v187, 0x48u);

            if (v204)
            {
            }
          }
        }

        if (!v27)
        {
          v3 = v241;
          v9 = v234;
          if (!v29)
          {
            goto LABEL_81;
          }

          goto LABEL_80;
        }

        v3 = v241;
        v9 = v234;
      }

      v93 = [a1 errors];
      [v93 addObject:v27];

      if ((v29 & 1) == 0)
      {
LABEL_81:

        goto LABEL_82;
      }
    }

LABEL_80:
    [a1 endOperation];
    goto LABEL_81;
  }

LABEL_82:

  v94 = *MEMORY[0x1E69E9840];
}

- (void)handleUpdateStorageWithFetchedWindow:(uint64_t)a3 eventsCount:(void *)a4 error:
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if (!a1)
  {
    goto LABEL_25;
  }

  v9 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v9);

  if (v8)
  {
    v10 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v23 = [objc_opt_class() description];
      v24 = [v8 domain];
      *buf = 138544130;
      v34 = v23;
      v35 = 2114;
      v36 = v24;
      v37 = 2048;
      v38 = [v8 code];
      v39 = 2112;
      v40 = v8;
      _os_log_error_impl(&dword_191750000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Failed while updating storage: %{public}@:%lld (%@)", buf, 0x2Au);
    }

    v11 = [a1 errors];
    [v11 addObject:v8];

    goto LABEL_24;
  }

  v12 = +[_CDLogging syncChannel];
  v13 = v12;
  if (a3)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v30 = [objc_opt_class() description];
      v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      v28 = [v7 debugDescription];
      [*(a1 + 304) transportType];
      OUTLINED_FUNCTION_12_3();
      v14 = &stru_1F05B9908;
      if ([OUTLINED_FUNCTION_21_5() me])
      {
        v15 = @"pseudo ";
      }

      else
      {
        v15 = &stru_1F05B9908;
      }

      v16 = [OUTLINED_FUNCTION_21_5() identifier];
      v17 = [OUTLINED_FUNCTION_21_5() model];
      if (v17)
      {
        v18 = MEMORY[0x1E696AEC0];
        v27 = [OUTLINED_FUNCTION_21_5() model];
        v14 = [v18 stringWithFormat:@" (%@)", v27];
      }

      v20 = [*(a1 + 304) name];
      OUTLINED_FUNCTION_0_23();
      v41 = v15;
      OUTLINED_FUNCTION_10_7();
      _os_log_impl(&dword_191750000, v13, OS_LOG_TYPE_INFO, "%{public}@: Synced up %@ events and high water mark window in window %{public}@ doing sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@", buf, 0x52u);

      if (!v17)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v30 = [objc_opt_class() description];
    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
    v28 = [v7 debugDescription];
    [*(a1 + 304) transportType];
    OUTLINED_FUNCTION_12_3();
    v14 = &stru_1F05B9908;
    if ([OUTLINED_FUNCTION_19_6() me])
    {
      v19 = @"pseudo ";
    }

    else
    {
      v19 = &stru_1F05B9908;
    }

    v16 = [OUTLINED_FUNCTION_19_6() identifier];
    v17 = [OUTLINED_FUNCTION_19_6() model];
    if (v17)
    {
      v25 = MEMORY[0x1E696AEC0];
      v27 = [OUTLINED_FUNCTION_19_6() model];
      v14 = [v25 stringWithFormat:@" (%@)", v27];
    }

    v26 = [*(a1 + 304) name];
    OUTLINED_FUNCTION_0_23();
    v41 = v19;
    OUTLINED_FUNCTION_10_7();
    _os_log_debug_impl(&dword_191750000, v13, OS_LOG_TYPE_DEBUG, "%{public}@: Synced up %@ events and high water mark window in window %{public}@ doing sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@", buf, 0x52u);

    if (!v17)
    {
      goto LABEL_21;
    }

LABEL_20:

LABEL_21:
  }

  v21 = *(a1 + 352);
  if (v21 >= [*(a1 + 320) maxBatchesPerSync])
  {
LABEL_24:
    [a1 endOperation];
    goto LABEL_25;
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __100___DKPerformSyncUpHistoryAdditionsOperation_handleUpdateStorageWithFetchedWindow_eventsCount_error___block_invoke;
  v31[3] = &unk_1E7367710;
  v31[4] = a1;
  v32 = v7;
  [_DKSyncSerializer performAsyncBlock:v31];

LABEL_25:
  v22 = *MEMORY[0x1E69E9840];
}

- (id)history
{
  if (result)
  {
    return objc_getProperty(result, a2, 360, 1);
  }

  return result;
}

@end