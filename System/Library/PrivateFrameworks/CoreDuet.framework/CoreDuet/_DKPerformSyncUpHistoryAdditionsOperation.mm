@interface _DKPerformSyncUpHistoryAdditionsOperation
+ (void)_updateEventStatsWithPreviousSyncDate:(uint64_t)date transportType:;
+ (void)_updateEventStatsWithTotal:(void *)total streamNameCounts:(uint64_t)counts transportType:;
- (id)history;
- (id)initWithParent:(void *)parent localStorage:(void *)storage transport:(void *)transport peer:(void *)peer policy:(void *)policy type:;
- (uint64_t)performSyncUpHistoryAdditions;
- (void)endOperation;
- (void)handleUpdateStorageWithFetchedWindow:(uint64_t)window eventsCount:(void *)count error:;
- (void)main;
- (void)performSyncUpHistoryAdditionsWithAdditionsHighWaterMark:(void *)mark orError:;
- (void)performSyncUpHistoryAdditionsWithPreviousHighWaterMark:(uint64_t)mark;
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

+ (void)_updateEventStatsWithPreviousSyncDate:(uint64_t)date transportType:
{
  v11 = a2;
  objc_opt_self();
  if (_updateEventStatsWithPreviousSyncDate_transportType__syncCadenceInitialized_0 != -1)
  {
    +[_DKPerformSyncUpHistoryAdditionsOperation _updateEventStatsWithPreviousSyncDate:transportType:];
  }

  if (v11)
  {
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    v5 = [v11 isEqualToDate:distantPast];

    if ((v5 & 1) == 0)
    {
      v6 = _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceByTransportCounter_0;
      date = [MEMORY[0x1E695DF00] date];
      if (date == 1)
      {
        v8 = @"Rapport";
      }

      else
      {
        v8 = @"Cloud";
      }

      [(_DKEventTypeStatsTimerCounter *)v6 addTimingWithStartDate:v11 endDate:date typeValue:v8];
    }
  }

  v9 = _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceCounter_0;
  date2 = [MEMORY[0x1E695DF00] date];
  [(_DKEventStatsTimerCounter *)v9 addTimingWithStartDate:v11 endDate:date2];
}

+ (void)_updateEventStatsWithTotal:(void *)total streamNameCounts:(uint64_t)counts transportType:
{
  v24 = *MEMORY[0x1E69E9840];
  totalCopy = total;
  objc_opt_self();
  if (_updateEventStatsWithTotal_streamNameCounts_transportType__syncUpHistoryAdditionsCounterInitialized != -1)
  {
    +[_DKPerformSyncUpHistoryAdditionsOperation _updateEventStatsWithTotal:streamNameCounts:transportType:];
  }

  [(_DKEventStatsCounter *)_updateEventStatsWithTotal_streamNameCounts_transportType__syncUpHistoryAdditionsTotalCounter incrementCountByNumber:a2];
  if (counts == 1)
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
  v8 = totalCopy;
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

- (id)initWithParent:(void *)parent localStorage:(void *)storage transport:(void *)transport peer:(void *)peer policy:(void *)policy type:
{
  parentCopy = parent;
  storageCopy = storage;
  transportCopy = transport;
  peerCopy = peer;
  policyCopy = policy;
  if (self)
  {
    v24.receiver = self;
    v24.super_class = _DKPerformSyncUpHistoryAdditionsOperation;
    v17 = objc_msgSendSuper2(&v24, sel_initWithParent_, a2, storageCopy, parentCopy);
    v18 = v17;
    if (v17)
    {
      objc_storeStrong(v17 + 37, parent);
      objc_storeStrong(v18 + 38, storage);
      objc_storeStrong(v18 + 39, transport);
      objc_storeStrong(v18 + 40, peer);
      objc_storeStrong(v18 + 41, policy);
      date = [MEMORY[0x1E695DF00] date];
      v20 = v18[43];
      v18[43] = date;
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

        model2 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
        v21 = &stru_1F05B9908;
        if ([OUTLINED_FUNCTION_17_6() me])
        {
          v22 = @"pseudo ";
        }

        else
        {
          v22 = &stru_1F05B9908;
        }

        identifier = [OUTLINED_FUNCTION_17_6() identifier];
        model = [OUTLINED_FUNCTION_17_6() model];
        if (model)
        {
          v25 = MEMORY[0x1E696AEC0];
          model2 = [OUTLINED_FUNCTION_17_6() model];
          v21 = [v25 stringWithFormat:@" (%@)", model2];
        }

        name = [OUTLINED_FUNCTION_14_5() name];
        *buf = 138544642;
        v29 = v18;
        v30 = 2082;
        v31 = v19;
        v32 = 2114;
        v33 = v22;
        v34 = 2114;
        v35 = identifier;
        v36 = 2114;
        v37 = v21;
        v38 = 2114;
        v39 = name;
        _os_log_debug_impl(&dword_191750000, v16, OS_LOG_TYPE_DEBUG, "%{public}@: Skipped additions history sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ due to no streams to sync", buf, 0x3Eu);

        if (model)
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

- (void)performSyncUpHistoryAdditionsWithAdditionsHighWaterMark:(void *)mark orError:
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  markCopy = mark;
  if (self)
  {
    if (v5)
    {
      [(_DKPerformSyncUpHistoryAdditionsOperation *)self performSyncUpHistoryAdditionsWithPreviousHighWaterMark:v5];
    }

    else
    {
      errors = +[_CDLogging syncChannel];
      v8 = os_log_type_enabled(errors, OS_LOG_TYPE_DEBUG);
      if (markCopy)
      {
        if (v8)
        {
          v27 = [objc_opt_class() description];
          [OUTLINED_FUNCTION_4_13() transportType];
          OUTLINED_FUNCTION_12_3();
          v10 = &stru_1F05B9908;
          [OUTLINED_FUNCTION_8_7() me];
          identifier = [OUTLINED_FUNCTION_8_7() identifier];
          model = [OUTLINED_FUNCTION_8_7() model];
          if (model)
          {
            v17 = MEMORY[0x1E696AEC0];
            model2 = [OUTLINED_FUNCTION_8_7() model];
            v10 = [v17 stringWithFormat:@" (%@)", model2];
          }

          name = [OUTLINED_FUNCTION_4_13() name];
          domain = [markCopy domain];
          [markCopy code];
          OUTLINED_FUNCTION_13_5();
          v30 = model4;
          OUTLINED_FUNCTION_6_13();
          v31 = name;
          v32 = v20;
          v33 = domain;
          v34 = 2048;
          v35 = v21;
          v36 = 2112;
          v37 = markCopy;
          _os_log_debug_impl(&dword_191750000, errors, OS_LOG_TYPE_DEBUG, "%{public}@: Skipping additions history sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@: %{public}@:%lld (%@)", buf, 0x5Cu);

          if (model)
          {
          }
        }

        errors = [self errors];
        [errors addObject:markCopy];
      }

      else if (v8)
      {
        v28 = [objc_opt_class() description];
        if ([self[38] transportType] == 8)
        {
          v13 = "up to";
        }

        else
        {
          v13 = "down from";
        }

        v14 = &stru_1F05B9908;
        [OUTLINED_FUNCTION_8_7() me];
        identifier2 = [OUTLINED_FUNCTION_8_7() identifier];
        model3 = [OUTLINED_FUNCTION_8_7() model];
        if (model3)
        {
          v22 = MEMORY[0x1E696AEC0];
          model4 = [OUTLINED_FUNCTION_8_7() model];
          v14 = [v22 stringWithFormat:@" (%@)", model4];
        }

        name2 = [self[38] name];
        OUTLINED_FUNCTION_13_5();
        v30 = v13;
        OUTLINED_FUNCTION_6_13();
        v31 = v24;
        _os_log_debug_impl(&dword_191750000, errors, OS_LOG_TYPE_DEBUG, "%{public}@: Skipping additions history sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ due to missing high water mark", buf, 0x3Eu);

        if (model3)
        {
        }
      }

      [self endOperation];
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)performSyncUpHistoryAdditionsWithPreviousHighWaterMark:(uint64_t)mark
{
  v280[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (mark)
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

      if ([*(mark + 312) me])
      {
        v36 = @"pseudo ";
      }

      else
      {
        v36 = &stru_1F05B9908;
      }

      identifier = [*(mark + 312) identifier];
      model = [*(mark + 312) model];
      if (model)
      {
        v52 = MEMORY[0x1E696AEC0];
        model2 = [*(mark + 312) model];
        v188 = model2;
        v39 = [v52 stringWithFormat:@" (%@)"];
      }

      else
      {
        v39 = &stru_1F05B9908;
      }

      name = [OUTLINED_FUNCTION_4_13() name];
      dk_localtimeString = [(NSDate *)v240 dk_localtimeString];
      *buf = 138544898;
      v263 = v34;
      v264 = 2082;
      v265 = v35;
      v266 = 2114;
      v267 = v36;
      v268 = 2114;
      v269 = identifier;
      v270 = 2114;
      v271 = v39;
      v272 = 2114;
      v273 = name;
      v274 = 2112;
      v275 = dk_localtimeString;
      _os_log_debug_impl(&dword_191750000, v6, OS_LOG_TYPE_DEBUG, "%{public}@: Performing additions history sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ from previous high water mark %@", buf, 0x48u);

      if (model)
      {
      }

      v3 = v240;
      v7 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
      v8 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
      v5 = 0x1E7366000;
    }

    v9 = [*(mark + 320) queryStartDateWithSyncType:*(mark + 328) previousHighWaterMark:v3];
    v10 = *(mark + 344);
    [v10 timeIntervalSinceReferenceDate];
    v12 = v11;
    [v9 timeIntervalSinceReferenceDate];
    if (v12 - v13 <= [*(mark + 320) minSyncWindowInSeconds])
    {
      syncChannel = [*(v5 + 648) syncChannel];
      if (os_log_type_enabled(syncChannel, OS_LOG_TYPE_DEBUG))
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
        if ([*(mark + v8[848]) me])
        {
          v48 = @"pseudo ";
        }

        else
        {
          v48 = &stru_1F05B9908;
        }

        [*(mark + v8[848]) identifier];
        v50 = model4 = v8;
        model3 = [*(mark + model4[848]) model];
        if (model3)
        {
          v110 = MEMORY[0x1E696AEC0];
          model4 = [*(mark + model4[848]) model];
          v47 = [v110 stringWithFormat:@" (%@)", model4];
        }

        name2 = [*(mark + v45[847]) name];
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
        v273 = name2;
        OUTLINED_FUNCTION_5_10();
        _os_log_debug_impl(v112, v113, v114, v115, v116, 0x3Eu);

        if (model3)
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
      v14 = *(mark + 352);
      if (!v14)
      {
        [*(mark + 360) lastSyncDate];
        v16 = v15 = v5;
        transportType = [OUTLINED_FUNCTION_4_13() transportType];
        [_DKPerformSyncUpHistoryAdditionsOperation _updateEventStatsWithPreviousSyncDate:v16 transportType:transportType];

        v5 = v15;
        v14 = *(mark + 352);
      }

      *(mark + 352) = v14 + 1;
      v18 = objc_opt_new();
      [(_DKSyncWindow *)v18 setStartDate:v9];
      [(_DKSyncWindow *)v18 setEndDate:v10];
      syncChannel2 = [*(v5 + 648) syncChannel];
      v244 = v18;
      if (os_log_type_enabled(syncChannel2, OS_LOG_TYPE_DEBUG))
      {
        v221 = [OUTLINED_FUNCTION_15_5() description];
        v236 = [v18 debugDescription];
        if ([*(mark + 304) transportType] == 8)
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

        identifier2 = [OUTLINED_FUNCTION_1_16() identifier];
        model5 = [OUTLINED_FUNCTION_1_16() model];
        if (model5)
        {
          v101 = MEMORY[0x1E696AEC0];
          model6 = [OUTLINED_FUNCTION_1_16() model];
          v188 = model6;
          v41 = [v101 stringWithFormat:@" (%@)"];
        }

        name3 = [*(mark + 304) name];
        OUTLINED_FUNCTION_11_5();
        *(v103 + 4) = v221;
        v264 = 2114;
        *(v103 + 14) = v236;
        v266 = 2082;
        v267 = v40;
        v268 = 2114;
        *(v103 + 34) = v42;
        v270 = 2114;
        *(v103 + 44) = identifier2;
        v272 = 2114;
        *(v103 + 54) = v41;
        v274 = 2114;
        v275 = v104;
        OUTLINED_FUNCTION_5_10();
        _os_log_debug_impl(v105, v106, v107, v108, v109, 0x48u);

        if (model5)
        {
        }

        v3 = v240;
        v18 = v244;
        v10 = v225;
        v9 = v233;
      }

      syncBatchSizeInEvents = [*(mark + 320) syncBatchSizeInEvents];
      v21 = syncBatchSizeInEvents;
      if (syncBatchSizeInEvents <= 1)
      {
        v22 = syncBatchSizeInEvents;
      }

      else
      {
        v22 = syncBatchSizeInEvents + 1;
      }

      v23 = *(mark + 296);
      v280[0] = v18;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v280 count:1];
      v25 = *(mark + 336);
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
          transportType2 = [*(mark + 304) transportType];
          v96 = "down from";
          if (transportType2 == 8)
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

          identifier3 = [OUTLINED_FUNCTION_1_16() identifier];
          model7 = [OUTLINED_FUNCTION_1_16() model];
          if (model7)
          {
            v117 = MEMORY[0x1E696AEC0];
            model8 = [OUTLINED_FUNCTION_1_16() model];
            v188 = model8;
            v100 = [v117 stringWithFormat:@" (%@)"];
          }

          else
          {
            v100 = &stru_1F05B9908;
          }

          name4 = [*(mark + 304) name];
          domain = [v27 domain];
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
          *(v120 + 44) = identifier3;
          v272 = 2114;
          *(v120 + 54) = v100;
          OUTLINED_FUNCTION_2_13(v121);
          OUTLINED_FUNCTION_22_4(&dword_191750000, v122, v123, "%{public}@: Failed while querying for events in window %{public}@ doing additions history sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@: %{public}@:%lld (%@)", v124, v125, v126, v127, v188, v189, model14, model16, model10, model12, v200, v206, model8, v218, v223, v225, v233, v238, v240, v244, v246, v247, v248, v249, v250, v251, v252, markCopy, v254, v255, v256[0], v256[1], v257, *(&v257 + 1), v258[0], v258[1], v259, *(&v259 + 1), v260, v261, buf[0]);

          if (model7)
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
          lastObject = [v26 lastObject];
          startDate = [(_DKSyncWindow *)v244 startDate];
          [(_DKSyncWindow *)v56 setStartDate:startDate];

          creationDate = [lastObject creationDate];
          [(_DKSyncWindow *)v56 setEndDate:creationDate];

          v60 = +[_CDLogging syncChannel];
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
          {
            v229 = [objc_opt_class() description];
            v219 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v207];
            v214 = [v244 debugDescription];
            transportType3 = [*(mark + 304) transportType];
            v134 = "down from";
            if (transportType3 == 8)
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
            identifier4 = [OUTLINED_FUNCTION_1_16() identifier];
            model9 = [OUTLINED_FUNCTION_1_16() model];
            if (model9)
            {
              v160 = MEMORY[0x1E696AEC0];
              model10 = [OUTLINED_FUNCTION_1_16() model];
              v188 = model10;
              v139 = [v160 stringWithFormat:@" (%@)"];
            }

            else
            {
              v139 = &stru_1F05B9908;
            }

            name5 = [*(mark + 304) name];
            v162 = [v237 debugDescription];
            OUTLINED_FUNCTION_11_5();
            *(v163 + 4) = v229;
            v264 = 2112;
            OUTLINED_FUNCTION_9_6(v219);
            *(v164 + 34) = v202;
            v270 = v165;
            *(v164 + 44) = v198;
            v272 = v165;
            *(v164 + 54) = identifier4;
            v274 = v165;
            v275 = v139;
            v276 = v165;
            *(v164 + 74) = name5;
            v277 = v165;
            *(v164 + 84) = v166;
            _os_log_debug_impl(&dword_191750000, v60, OS_LOG_TYPE_DEBUG, "%{public}@: Found %@ events in window %{public}@ for additions history sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ but hit limit, fetch limited to window %{public}@", buf, 0x5Cu);

            if (model9)
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
            transportType4 = [OUTLINED_FUNCTION_4_13() transportType];
            v141 = "down from";
            if (transportType4 == 8)
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

            identifier5 = [OUTLINED_FUNCTION_18_4() identifier];
            model11 = [OUTLINED_FUNCTION_18_4() model];
            if (model11)
            {
              v167 = MEMORY[0x1E696AEC0];
              model12 = [OUTLINED_FUNCTION_18_4() model];
              v188 = model12;
              v142 = [v167 stringWithFormat:@" (%@)"];
            }

            name6 = [*(mark + 304) name];
            OUTLINED_FUNCTION_11_5();
            *(v169 + 4) = v215;
            v264 = 2112;
            OUTLINED_FUNCTION_9_6(v230);
            *(v170 + 34) = v203;
            v270 = v171;
            *(v170 + 44) = v143;
            v272 = v171;
            *(v170 + 54) = identifier5;
            v274 = v171;
            v275 = v142;
            v276 = v171;
            *(v170 + 74) = v172;
            OUTLINED_FUNCTION_5_10();
            _os_log_debug_impl(v173, v174, v175, v176, v177, 0x52u);

            if (model11)
            {
            }
          }

          startDate2 = [(_DKSyncWindow *)v244 startDate];
          v56 = v237;
          [(_DKSyncWindow *)v237 setStartDate:startDate2];

          lastObject = [(_DKSyncType *)v244 urgency];
          [(_DKSyncWindow *)v237 setEndDate:lastObject];
        }

        sourceDeviceID = [*(mark + 312) sourceDeviceID];
        v64 = [_DKSyncMetadataStorage windowStreamNameWithSourceDeviceID:sourceDeviceID];

        name7 = [OUTLINED_FUNCTION_4_13() name];
        v217 = v64;
        v66 = [_DKSyncMetadataStorage eventFromFetchedWindow:v56 windowStreamName:v64 transportName:name7];

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
        if ([v26 count] || objc_msgSend(OUTLINED_FUNCTION_4_13(), "transportType") != 8 || -[_DKSyncType forceSync](*(mark + 328)))
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
                  stream = [v77 stream];
                  name8 = [stream name];

                  if (name8)
                  {
                    [v71 addObject:name8];
                  }
                }
              }

              v74 = [v72 countByEnumeratingWithState:v256 objects:v279 count:16];
            }

            while (v74);
          }

          v80 = *(mark + 320);
          v81 = *(mark + 328);
          lastSyncDate = [*(mark + 360) lastSyncDate];
          v83 = [v80 highPriorityForSyncUpWithSyncType:v81 lastSyncDate:lastSyncDate];

          v84 = *(mark + 304);
          v247 = MEMORY[0x1E69E9820];
          v248 = 3221225472;
          v249 = __100___DKPerformSyncUpHistoryAdditionsOperation_performSyncUpHistoryAdditionsWithPreviousHighWaterMark___block_invoke;
          v250 = &unk_1E7369BB0;
          v251 = v26;
          v252 = v71;
          markCopy = mark;
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

        v87 = *(mark + v70[846]);
        v278 = v85;
        v88 = [*(v67 + 3784) arrayWithObjects:&v278 count:1];
        v89 = *(mark + 312);
        name9 = [OUTLINED_FUNCTION_4_13() name];
        v246 = 0;
        [v87 saveSyncedDownWindows:v88 peer:v89 transportName:name9 error:&v246];
        v27 = v246;

        v91 = +[_CDLogging syncChannel];
        errors = v91;
        if (v27)
        {
          v26 = v222;
          if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
          {
            v228 = [objc_opt_class() description];
            v208 = [v237 debugDescription];
            transportType5 = [*(mark + 304) transportType];
            v129 = "down from";
            if (transportType5 == 8)
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
            identifier6 = [OUTLINED_FUNCTION_7_6() identifier];
            model13 = [OUTLINED_FUNCTION_7_6() model];
            if (model13)
            {
              v148 = MEMORY[0x1E696AEC0];
              model14 = [OUTLINED_FUNCTION_7_6() model];
              v188 = model14;
              v132 = [v148 stringWithFormat:@" (%@)"];
            }

            else
            {
              v132 = &stru_1F05B9908;
            }

            name10 = [*(mark + 304) name];
            domain2 = [v27 domain];
            [v27 code];
            OUTLINED_FUNCTION_3_15();
            OUTLINED_FUNCTION_16_3();
            *(v151 + 44) = identifier6;
            v272 = v152;
            *(v151 + 54) = v132;
            OUTLINED_FUNCTION_2_13(v153);
            OUTLINED_FUNCTION_22_4(&dword_191750000, v154, v155, "%{public}@: Failed while saving additions window %{public}@ doing additions history sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@: %{public}@:%lld (%@)", v156, v157, v158, v159, v188, v189, model14, v193, v195, model13, identifier6, v208, v212, v217, v222, v228, v234, v237, v241, v244, v246, v247, v248, v249, v250, v251, v252, markCopy, v254, v255, v256[0], v256[1], v257, *(&v257 + 1), v258[0], v258[1], v259, *(&v259 + 1), v260, v261, buf[0]);

            if (v199)
            {
            }
          }

          errors = [mark errors];
          [errors addObject:v27];
        }

        else
        {
          v26 = v222;
          if (os_log_type_enabled(v91, OS_LOG_TYPE_DEBUG))
          {
            v231 = [objc_opt_class() description];
            v209 = [v237 debugDescription];
            [*(mark + 304) transportType];
            [OUTLINED_FUNCTION_7_6() me];
            identifier7 = [OUTLINED_FUNCTION_7_6() identifier];
            model15 = [OUTLINED_FUNCTION_7_6() model];
            if (model15)
            {
              v178 = MEMORY[0x1E696AEC0];
              model16 = [OUTLINED_FUNCTION_7_6() model];
              v192 = [v178 stringWithFormat:@" (%@)", model16];
            }

            else
            {
              v192 = &stru_1F05B9908;
            }

            name11 = [*(mark + 304) name];
            OUTLINED_FUNCTION_3_15();
            OUTLINED_FUNCTION_16_3();
            *(v180 + 44) = identifier7;
            v272 = v181;
            *(v180 + 54) = v192;
            v274 = v181;
            v275 = v182;
            OUTLINED_FUNCTION_5_10();
            _os_log_debug_impl(v183, v184, v185, v186, v187, 0x48u);

            if (model15)
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

      errors2 = [mark errors];
      [errors2 addObject:v27];

      if ((v29 & 1) == 0)
      {
LABEL_81:

        goto LABEL_82;
      }
    }

LABEL_80:
    [mark endOperation];
    goto LABEL_81;
  }

LABEL_82:

  v94 = *MEMORY[0x1E69E9840];
}

- (void)handleUpdateStorageWithFetchedWindow:(uint64_t)window eventsCount:(void *)count error:
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = a2;
  countCopy = count;
  if (!self)
  {
    goto LABEL_25;
  }

  v9 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v9);

  if (countCopy)
  {
    v10 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v23 = [objc_opt_class() description];
      domain = [countCopy domain];
      *buf = 138544130;
      v34 = v23;
      v35 = 2114;
      v36 = domain;
      v37 = 2048;
      code = [countCopy code];
      v39 = 2112;
      v40 = countCopy;
      _os_log_error_impl(&dword_191750000, v10, OS_LOG_TYPE_ERROR, "%{public}@: Failed while updating storage: %{public}@:%lld (%@)", buf, 0x2Au);
    }

    errors = [self errors];
    [errors addObject:countCopy];

    goto LABEL_24;
  }

  v12 = +[_CDLogging syncChannel];
  v13 = v12;
  if (window)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v30 = [objc_opt_class() description];
      v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:window];
      v28 = [v7 debugDescription];
      [*(self + 304) transportType];
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

      identifier = [OUTLINED_FUNCTION_21_5() identifier];
      model = [OUTLINED_FUNCTION_21_5() model];
      if (model)
      {
        v18 = MEMORY[0x1E696AEC0];
        model2 = [OUTLINED_FUNCTION_21_5() model];
        v14 = [v18 stringWithFormat:@" (%@)", model2];
      }

      name = [*(self + 304) name];
      OUTLINED_FUNCTION_0_23();
      v41 = v15;
      OUTLINED_FUNCTION_10_7();
      _os_log_impl(&dword_191750000, v13, OS_LOG_TYPE_INFO, "%{public}@: Synced up %@ events and high water mark window in window %{public}@ doing sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@", buf, 0x52u);

      if (!model)
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
    [*(self + 304) transportType];
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

    identifier = [OUTLINED_FUNCTION_19_6() identifier];
    model = [OUTLINED_FUNCTION_19_6() model];
    if (model)
    {
      v25 = MEMORY[0x1E696AEC0];
      model2 = [OUTLINED_FUNCTION_19_6() model];
      v14 = [v25 stringWithFormat:@" (%@)", model2];
    }

    name2 = [*(self + 304) name];
    OUTLINED_FUNCTION_0_23();
    v41 = v19;
    OUTLINED_FUNCTION_10_7();
    _os_log_debug_impl(&dword_191750000, v13, OS_LOG_TYPE_DEBUG, "%{public}@: Synced up %@ events and high water mark window in window %{public}@ doing sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@", buf, 0x52u);

    if (!model)
    {
      goto LABEL_21;
    }

LABEL_20:

LABEL_21:
  }

  v21 = *(self + 352);
  if (v21 >= [*(self + 320) maxBatchesPerSync])
  {
LABEL_24:
    [self endOperation];
    goto LABEL_25;
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __100___DKPerformSyncUpHistoryAdditionsOperation_handleUpdateStorageWithFetchedWindow_eventsCount_error___block_invoke;
  v31[3] = &unk_1E7367710;
  v31[4] = self;
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