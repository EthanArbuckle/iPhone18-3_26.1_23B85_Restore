@interface _DKPerformSyncUpHistoryDeletionsOperation
+ (void)_updateEventStatsWithPreviousSyncDate:(uint64_t)a3 transportType:;
+ (void)_updateEventStatsWithTotal:(uint64_t)a3 transportType:;
- (id)initWithParent:(void *)a3 sibling:(void *)a4 localStorage:(void *)a5 transport:(void *)a6 peer:(void *)a7 policy:(void *)a8 type:;
- (uint64_t)existsAdditionsSyncHistory;
- (void)endOperation;
- (void)handleUpdateStorageWithStartDate:(void *)a3 endDate:(uint64_t)a4 deletedEventIDsCount:(void *)a5 orError:;
- (void)main;
- (void)performSyncUpHistoryDeletions;
- (void)performSyncUpHistoryDeletionsWithDeletionsHighWaterMark:(void *)a3 orError:;
- (void)performSyncUpHistoryDeletionsWithPreviousHighWaterMark:(char *)a1;
@end

@implementation _DKPerformSyncUpHistoryDeletionsOperation

- (void)main
{
  v3 = objc_opt_class();
  if ([_DKSync2Coordinator shouldDeferSyncOperationWithClass:v3 syncType:self->_type transport:self->_transport peer:0 policy:self->_policy])
  {

    [(_DKPerformSyncUpHistoryDeletionsOperation *)self endOperation];
  }

  else
  {

    [(_DKPerformSyncUpHistoryDeletionsOperation *)self performSyncUpHistoryDeletions];
  }
}

+ (void)_updateEventStatsWithPreviousSyncDate:(uint64_t)a3 transportType:
{
  v11 = a2;
  objc_opt_self();
  if (_updateEventStatsWithPreviousSyncDate_transportType__syncCadenceInitialized_1 != -1)
  {
    +[_DKPerformSyncUpHistoryDeletionsOperation _updateEventStatsWithPreviousSyncDate:transportType:];
  }

  if (v11)
  {
    v4 = [MEMORY[0x1E695DF00] distantPast];
    v5 = [v11 isEqualToDate:v4];

    if ((v5 & 1) == 0)
    {
      v6 = _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceByTransportCounter_1;
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

  v9 = _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceCounter_1;
  v10 = [MEMORY[0x1E695DF00] date];
  [(_DKEventStatsTimerCounter *)v9 addTimingWithStartDate:v11 endDate:v10];
}

+ (void)_updateEventStatsWithTotal:(uint64_t)a3 transportType:
{
  objc_opt_self();
  if (_updateEventStatsWithTotal_transportType__syncUpHistoryDeletionsCounterInitialized != -1)
  {
    +[_DKPerformSyncUpHistoryDeletionsOperation _updateEventStatsWithTotal:transportType:];
  }

  [(_DKEventStatsCounter *)_updateEventStatsWithTotal_transportType__syncUpHistoryDeletionsTotalCounter incrementCountByNumber:a2];
  v5 = _updateEventStatsWithTotal_transportType__syncUpHistoryDeletionsTotalByTransportCounter;
  if (a3 == 1)
  {
    v6 = @"Rapport";
  }

  else
  {
    v6 = @"Cloud";
  }

  [(_DKEventTypeStatsCounter *)v5 incrementCountByNumber:a2 typeValue:v6];
}

- (void)endOperation
{
  v2.receiver = self;
  v2.super_class = _DKPerformSyncUpHistoryDeletionsOperation;
  [(_DKSyncCompositeOperation *)&v2 endOperation];
}

- (id)initWithParent:(void *)a3 sibling:(void *)a4 localStorage:(void *)a5 transport:(void *)a6 peer:(void *)a7 policy:(void *)a8 type:
{
  v26 = a3;
  v25 = a4;
  v24 = a5;
  v23 = a6;
  v16 = a7;
  v17 = a8;
  if (a1)
  {
    v27.receiver = a1;
    v27.super_class = _DKPerformSyncUpHistoryDeletionsOperation;
    v18 = objc_msgSendSuper2(&v27, sel_initWithParent_, a2, v23, v24, v25, v26);
    v19 = v18;
    if (v18)
    {
      objc_storeStrong(v18 + 37, a3);
      objc_storeStrong(v19 + 38, a4);
      objc_storeStrong(v19 + 39, a5);
      objc_storeStrong(v19 + 40, a6);
      objc_storeStrong(v19 + 41, a7);
      objc_storeStrong(v19 + 42, a8);
      v20 = [MEMORY[0x1E695DF00] date];
      v21 = v19[44];
      v19[44] = v20;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)performSyncUpHistoryDeletions
{
  v135 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_10;
  }

  v2 = a1;
  v3 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [*(v2 + 328) streamNamesToSyncWithDisabledFeatures:0];
  v5 = *(v2 + 344);
  *(v2 + 344) = v4;

  if (![*(v2 + 344) count])
  {
    v19 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v21 = [objc_opt_class() description];
      if ([*(v2 + 312) transportType] == 8)
      {
        v22 = "up to";
      }

      else
      {
        v22 = "down from";
      }

      v23 = &stru_1F05B9908;
      if ([OUTLINED_FUNCTION_16_4() me])
      {
        v24 = @"pseudo ";
      }

      else
      {
        v24 = &stru_1F05B9908;
      }

      v25 = [OUTLINED_FUNCTION_16_4() identifier];
      v26 = [OUTLINED_FUNCTION_16_4() model];
      if (v26)
      {
        v49 = MEMORY[0x1E696AEC0];
        v103 = [OUTLINED_FUNCTION_16_4() model];
        v23 = [v49 stringWithFormat:@" (%@)", v103];
      }

      v50 = [*(v2 + 312) name];
      *buf = 138544642;
      v124 = v21;
      v125 = 2082;
      v126 = v22;
      v127 = 2114;
      v128 = v24;
      v129 = 2114;
      v130 = v25;
      v131 = 2114;
      v132 = v23;
      v133 = 2114;
      v134 = v50;
      OUTLINED_FUNCTION_15_0(&dword_191750000, v19, v51, "%{public}@: Skippped deletions history sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ due to no streams to sync", buf);

      if (v26)
      {
      }
    }

    goto LABEL_9;
  }

  v6 = *(v2 + 304);
  v7 = *(v2 + 320);
  [OUTLINED_FUNCTION_8_9() name];
  objc_claimAutoreleasedReturnValue();
  v8 = [OUTLINED_FUNCTION_20_5() deletionsSyncHistoryForPeer:? transportName:? error:?];
  v9 = *(v2 + 360);
  *(v2 + 360) = v8;

  v10 = objc_opt_class();
  if (![_DKSync2Coordinator canPerformSyncOperationWithClass:v10 syncType:*(v2 + 336) history:*(v2 + 360) transport:*(v2 + 312) peer:*(v2 + 320) policy:*(v2 + 328)])
  {
LABEL_9:
    [v2 endOperation];
    goto LABEL_10;
  }

  v12 = [(_DKPerformSyncUpHistoryDeletionsOperation *)v2 existsAdditionsSyncHistory];
  v13 = +[_CDLogging syncChannel];
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
  if (v12)
  {
    if (v14)
    {
      v105 = [objc_opt_class() description];
      v99 = [OUTLINED_FUNCTION_8_9() name];
      v52 = [OUTLINED_FUNCTION_2_15() me];
      v53 = &stru_1F05B9908;
      v54 = @"pseudo ";
      if (!v52)
      {
        v54 = &stru_1F05B9908;
      }

      v91 = v54;
      v94 = [OUTLINED_FUNCTION_2_15() identifier];
      v55 = [OUTLINED_FUNCTION_2_15() model];
      if (v55)
      {
        v60 = MEMORY[0x1E696AEC0];
        v87 = [OUTLINED_FUNCTION_2_15() model];
        v83 = v87;
        v53 = [v60 stringWithFormat:@" (%@)"];
      }

      OUTLINED_FUNCTION_7_8();
      v128 = v91;
      v129 = v61;
      v130 = v94;
      v131 = v61;
      v132 = v53;
      OUTLINED_FUNCTION_21_6(&dword_191750000, v62, v63, "%{public}@: Peforming deletions history sync up on transport %{public}@ for %{public}@peer %{public}@%{public}@", v64, v65, v66, v67, v83, v84, v85, v87, v91, v94, v99, v105, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, buf[0]);
      if (v55)
      {
      }
    }

    v15 = *(v2 + 328);
    v16 = *(v2 + 336);
    [*(v2 + 360) lastSyncDate];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_20_5() highPriorityForSyncUpWithSyncType:? lastSyncDate:?];

    OUTLINED_FUNCTION_8_9();
    v17 = *(v2 + 320);
    OUTLINED_FUNCTION_3_17();
    [v18 fetchDeletionsHighWaterMarkWithPeer:? highPriority:? completion:?];
  }

  else
  {
    if (v14)
    {
      v106 = [objc_opt_class() description];
      v100 = [OUTLINED_FUNCTION_8_9() name];
      v56 = &stru_1F05B9908;
      if ([OUTLINED_FUNCTION_2_15() me])
      {
        v57 = @"pseudo ";
      }

      else
      {
        v57 = &stru_1F05B9908;
      }

      v58 = [OUTLINED_FUNCTION_2_15() identifier];
      v59 = [OUTLINED_FUNCTION_2_15() model];
      if (v59)
      {
        v68 = MEMORY[0x1E696AEC0];
        v93 = [OUTLINED_FUNCTION_2_15() model];
        v83 = v93;
        v56 = [v68 stringWithFormat:@" (%@)"];
      }

      OUTLINED_FUNCTION_7_8();
      v128 = v57;
      v129 = v69;
      v130 = v58;
      v131 = v69;
      v132 = v56;
      OUTLINED_FUNCTION_21_6(&dword_191750000, v70, v71, "%{public}@: Skipping deletions history sync up on transport %{public}@ for %{public}@peer %{public}@%{public}@ due to no previous additions", v72, v73, v74, v75, v83, v84, v85, v87, v90, v93, v100, v106, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, buf[0]);
      if (v59)
      {
      }
    }

    v27 = [MEMORY[0x1E695DF00] distantPast];
    v28 = *(v2 + 352);
    v29 = [OUTLINED_FUNCTION_2_15() sourceDeviceID];
    v30 = [_DKSyncMetadataStorage bookmarkStreamNameWithSourceDeviceID:v29];

    v31 = [OUTLINED_FUNCTION_8_9() name];
    v32 = v27;
    v104 = v30;
    v33 = [_DKSyncMetadataStorage eventFromStartDate:v27 endDate:v28 bookmarkStreamName:v30 transportName:v31];

    v34 = *(v2 + 312);
    v98 = v33;
    v122 = v33;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v122 count:1];
    v115 = MEMORY[0x1E69E9820];
    v116 = 3221225472;
    v117 = __74___DKPerformSyncUpHistoryDeletionsOperation_performSyncUpHistoryDeletions__block_invoke;
    v118 = &unk_1E7367C28;
    v119 = v2;
    v36 = v32;
    v120 = v36;
    v37 = v28;
    v121 = v37;
    [v34 updateStorageWithAddedEvents:v35 deletedEventIDs:0 highPriority:0 completion:&v115];

    v38 = *(v2 + 304);
    v39 = *(v2 + 320);
    v40 = [OUTLINED_FUNCTION_8_9() name];
    v114 = 0;
    [v38 setLastSyncDownDeletionDate:v37 previousDate:v36 forPeer:v39 transportName:v40 error:&v114];
    v41 = v114;

    v42 = +[_CDLogging syncChannel];
    v43 = v42;
    if (v41)
    {
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v44 = [objc_opt_class() description];
        v45 = [(NSDate *)v36 dk_localtimeString];
        v46 = [(NSDate *)v37 dk_localtimeString];
        v47 = [(__CFString *)v41 domain];
        v48 = [(__CFString *)v41 code];
        *buf = 138544642;
        v124 = v44;
        v125 = 2114;
        v126 = v45;
        v127 = 2114;
        v128 = v46;
        v129 = 2114;
        v130 = v47;
        v131 = 2048;
        v132 = v48;
        v133 = 2112;
        v134 = v41;
        _os_log_error_impl(&dword_191750000, v43, OS_LOG_TYPE_ERROR, "%{public}@: Failed while fast forwarding local bookmark [%{public}@ ending %{public}@]: %{public}@:%lld (%@)", buf, 0x3Eu);
      }
    }

    else if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      v97 = [objc_opt_class() description];
      v89 = [(NSDate *)v36 dk_localtimeString];
      v92 = [(NSDate *)v37 dk_localtimeString];
      v76 = [OUTLINED_FUNCTION_2_15() me];
      v77 = &stru_1F05B9908;
      v78 = @"pseudo ";
      if (!v76)
      {
        v78 = &stru_1F05B9908;
      }

      v86 = v78;
      v79 = [OUTLINED_FUNCTION_2_15() identifier];
      v81 = [OUTLINED_FUNCTION_2_15() model];
      if (v81)
      {
        v82 = MEMORY[0x1E696AEC0];
        v2 = [OUTLINED_FUNCTION_2_15() model];
        v77 = [v82 stringWithFormat:@" (%@)", v2];
      }

      *buf = 138544642;
      v124 = v97;
      v125 = 2114;
      v126 = v89;
      v127 = 2114;
      v128 = v92;
      v129 = 2114;
      v130 = v86;
      v131 = 2114;
      v132 = v79;
      v133 = 2114;
      v134 = v77;
      OUTLINED_FUNCTION_15_0(&dword_191750000, v43, v80, "%{public}@: Successfully fast forwarded local bookmark [%{public}@ ending %{public}@] for %{public}@peer %{public}@%{public}@", buf);
      if (v81)
      {
      }
    }
  }

LABEL_10:
  v20 = *MEMORY[0x1E69E9840];
}

- (uint64_t)existsAdditionsSyncHistory
{
  if (!a1)
  {
    return 0;
  }

  v3 = [(_DKPerformSyncUpHistoryAdditionsOperation *)*(a1 + 296) history];
  if (!v3)
  {
    v4 = *(a1 + 304);
    v5 = *(a1 + 320);
    v6 = [*(a1 + 312) name];
    v3 = [v4 additionsSyncHistoryForPeer:v5 transportName:v6 error:0];
  }

  v7 = [v3 lastSyncDate];
  if (v7)
  {
    v8 = [v3 lastSyncDate];
    v9 = [MEMORY[0x1E695DF00] distantPast];
    v10 = [v8 isEqualToDate:v9];

    v11 = v10 ^ 1u;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)performSyncUpHistoryDeletionsWithDeletionsHighWaterMark:(void *)a3 orError:
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if (v5)
    {
      [(_DKPerformSyncUpHistoryDeletionsOperation *)a1 performSyncUpHistoryDeletionsWithPreviousHighWaterMark:v5];
    }

    else
    {
      v7 = +[_CDLogging syncChannel];
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
      if (v6)
      {
        if (v8)
        {
          v26 = [objc_opt_class() description];
          v10 = [*(a1 + 312) name];
          v11 = &stru_1F05B9908;
          if ([OUTLINED_FUNCTION_20_6() me])
          {
            v12 = @"pseudo ";
          }

          else
          {
            v12 = &stru_1F05B9908;
          }

          v13 = [OUTLINED_FUNCTION_20_6() identifier];
          v14 = [OUTLINED_FUNCTION_20_6() model];
          if (v14)
          {
            v20 = MEMORY[0x1E696AEC0];
            v25 = [OUTLINED_FUNCTION_20_6() model];
            v11 = [v20 stringWithFormat:@" (%@)", v25];
          }

          v21 = [v6 domain];
          [v6 code];
          *buf = 138545154;
          v29 = v26;
          OUTLINED_FUNCTION_17_7();
          v30 = v12;
          OUTLINED_FUNCTION_18_5();
          v31 = v22;
          v32 = v21;
          v33 = 2048;
          v34 = v23;
          v35 = 2112;
          v36 = v6;
          _os_log_debug_impl(&dword_191750000, v7, OS_LOG_TYPE_DEBUG, "%{public}@: Skipping deletions history sync up on transport %{public}@ for %{public}@peer %{public}@%{public}@: %{public}@:%lld (%@)", buf, 0x52u);

          if (v14)
          {
          }
        }

        v7 = [a1 errors];
        [v7 addObject:v6];
      }

      else if (v8)
      {
        v27 = [objc_opt_class() description];
        v15 = [*(a1 + 312) name];
        v16 = &stru_1F05B9908;
        if ([OUTLINED_FUNCTION_15_6() me])
        {
          v17 = @"pseudo ";
        }

        else
        {
          v17 = &stru_1F05B9908;
        }

        v18 = [OUTLINED_FUNCTION_15_6() identifier];
        v19 = [OUTLINED_FUNCTION_15_6() model];
        if (v19)
        {
          v24 = MEMORY[0x1E696AEC0];
          v25 = [OUTLINED_FUNCTION_15_6() model];
          v16 = [v24 stringWithFormat:@" (%@)", v25];
        }

        *buf = 138544386;
        v29 = v27;
        OUTLINED_FUNCTION_17_7();
        v30 = v17;
        OUTLINED_FUNCTION_18_5();
        _os_log_debug_impl(&dword_191750000, v7, OS_LOG_TYPE_DEBUG, "%{public}@: Skipping deletions history sync up on transport %{public}@ for %{public}@peer %{public}@%{public}@ due to missing high water mark", buf, 0x34u);
        if (v19)
        {
        }
      }

      [a1 endOperation];
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)performSyncUpHistoryDeletionsWithPreviousHighWaterMark:(char *)a1
{
  v213 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v4);

    v5 = +[_CDLogging syncChannel];
    v6 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    v7 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    v8 = &stru_1F05B9908;
    v9 = 0x1E696A000uLL;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v169 = v3;
      v82 = [objc_opt_class() description];
      v83 = [*(a1 + 39) name];
      if ([OUTLINED_FUNCTION_14_6() me])
      {
        v8 = @"pseudo ";
      }

      v84 = [OUTLINED_FUNCTION_14_6() identifier];
      v85 = [OUTLINED_FUNCTION_14_6() model];
      v180 = a1;
      if (v85)
      {
        v106 = MEMORY[0x1E696AEC0];
        v7 = [OUTLINED_FUNCTION_14_6() model];
        v163 = v7;
        v86 = [v106 stringWithFormat:@" (%@)"];
      }

      else
      {
        v86 = &stru_1F05B9908;
      }

      v107 = [(NSDate *)v169 dk_localtimeString];
      OUTLINED_FUNCTION_9_8();
      *(v108 + 4) = v82;
      v203 = 2114;
      *(v108 + 14) = v83;
      v204 = 2114;
      v205 = v8;
      v206 = 2114;
      *(v108 + 34) = v84;
      v207 = 2114;
      *(v108 + 44) = v86;
      v208 = 2112;
      *(v108 + 54) = v109;
      OUTLINED_FUNCTION_5_12();
      _os_log_debug_impl(v110, v111, v112, v113, v114, 0x3Eu);
      if (v85)
      {
      }

      v3 = v169;
      a1 = v180;
      v7 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
      v9 = 0x1E696A000;
      v6 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    }

    v10 = v3;
    [*(a1 + 44) timeIntervalSinceReferenceDate];
    v12 = v11;
    [v10 timeIntervalSinceReferenceDate];
    if (v12 - v13 <= [*(a1 + 41) minSyncWindowInSeconds])
    {
      v25 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v97 = v9;
        v98 = a1;
        v170 = v3;
        v99 = [objc_opt_class() description];
        v175 = v10;
        v100 = [(NSDate *)v10 dk_localtimeString];
        if ([*&v98[v7[892]] me])
        {
          v101 = @"pseudo ";
        }

        else
        {
          v101 = &stru_1F05B9908;
        }

        v102 = [*&v98[v7[892]] identifier];
        v103 = [*&v98[v7[892]] model];
        if (v103)
        {
          v122 = *(v97 + 3776);
          v105 = v98;
          v98 = [*&v98[v7[892]] model];
          v104 = [v122 stringWithFormat:@" (%@)", v98];
        }

        else
        {
          v104 = &stru_1F05B9908;
          v105 = v98;
        }

        OUTLINED_FUNCTION_9_8();
        *(v123 + 4) = v99;
        OUTLINED_FUNCTION_12_4();
        *(v124 + 14) = v100;
        v204 = 2114;
        v205 = v101;
        v206 = 2114;
        *(v124 + 34) = v102;
        v207 = 2114;
        *(v124 + 44) = v104;
        OUTLINED_FUNCTION_5_12();
        _os_log_debug_impl(v125, v126, v127, v128, v129, 0x34u);
        if (v103)
        {
        }

        v3 = v170;
        a1 = v105;
        v10 = v175;
      }

      v21 = 0;
      v20 = 0;
      goto LABEL_51;
    }

    v14 = *(a1 + 46);
    if (!v14)
    {
      v15 = [*(a1 + 45) lastSyncDate];
      +[_DKPerformSyncUpHistoryDeletionsOperation _updateEventStatsWithPreviousSyncDate:transportType:](_DKPerformSyncUpHistoryDeletionsOperation, v15, [*&a1[v6[891]] transportType]);

      v14 = *(a1 + 46);
    }

    *(a1 + 46) = v14 + 1;
    v16 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v87 = [objc_opt_class() description];
      v88 = [(NSDate *)v10 dk_localtimeString];
      OUTLINED_FUNCTION_9_8();
      *(v89 + 4) = v87;
      OUTLINED_FUNCTION_12_4();
      *(v91 + 14) = v90;
      OUTLINED_FUNCTION_5_12();
      _os_log_debug_impl(v92, v93, v94, v95, v96, 0x16u);
    }

    v17 = *(a1 + 38);
    v18 = *(a1 + 43);
    v19 = [*(a1 + 41) syncBatchSizeInEvents];
    v199 = 0;
    v200 = 0;
    v20 = [v17 tombstonesSinceDate:v10 streamNames:v18 limit:v19 endDate:&v200 error:&v199];
    v176 = v200;
    v21 = v199;
    v22 = +[_CDLogging syncChannel];
    v23 = v22;
    if (v21)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [objc_opt_class() description];
        v115 = v173 = v20;
        v116 = [(NSDate *)v10 dk_localtimeString];
        [(NSDate *)v176 dk_localtimeString];
        v118 = v117 = v3;
        v119 = [(__CFString *)v21 domain];
        [(__CFString *)v21 code];
        OUTLINED_FUNCTION_9_8();
        *(v120 + 4) = v115;
        v203 = 2114;
        *(v120 + 14) = v116;
        v204 = 2114;
        v205 = v118;
        v206 = 2114;
        *(v120 + 34) = v119;
        v207 = 2048;
        *(v120 + 44) = v121;
        v208 = 2112;
        *(v120 + 54) = v21;
        _os_log_error_impl(&dword_191750000, v23, OS_LOG_TYPE_ERROR, "%{public}@: Failed while querying for deletions with bookmark [%{public}@ ending %{public}@]: %{public}@:%lld (%@)", buf, 0x3Eu);

        v20 = v173;
        v3 = v117;
      }

      LOBYTE(v24) = 1;
LABEL_50:
      v80 = [a1 errors];
      [v80 addObject:v21];

      if ((v24 & 1) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_51;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v130 = [objc_opt_class() description];
      v131 = v20;
      v132 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v20, "count")}];
      [(NSDate *)v10 dk_localtimeString];
      v134 = v133 = v3;
      v135 = [(NSDate *)v176 dk_localtimeString];
      OUTLINED_FUNCTION_9_8();
      *(v136 + 4) = v130;
      OUTLINED_FUNCTION_12_4();
      *(v137 + 14) = v132;
      v204 = 2114;
      v205 = v134;
      v206 = 2114;
      *(v137 + 34) = v138;
      OUTLINED_FUNCTION_5_12();
      _os_log_debug_impl(v139, v140, v141, v142, v143, 0x2Au);

      v20 = v131;
      v3 = v133;
    }

    v174 = v10;

    v172 = v20;
    if (![v20 count])
    {
      v187 = 0;
      goto LABEL_38;
    }

    v179 = a1;
    v168 = v3;
    v166 = +[_DKSyncPeerStatusTracker sharedInstance];
    v165 = [v166 pseudoPeerForSyncTransportCloudUp];
    v181 = [v165 sourceDeviceID];
    v26 = +[_DKSystemEventStreams appWebUsageStream];
    v185 = [v26 name];

    v187 = objc_opt_new();
    v195 = 0u;
    v196 = 0u;
    v197 = 0u;
    v198 = 0u;
    obj = v20;
    v27 = [obj countByEnumeratingWithState:&v195 objects:v212 count:16];
    v29 = 0x1E7366000uLL;
    if (!v27)
    {
      goto LABEL_36;
    }

    v30 = v27;
    v31 = *v196;
    *&v28 = 138543618;
    v177 = v28;
    v32 = 0x1E7366000uLL;
    v183 = *v196;
LABEL_19:
    v33 = 0;
    while (1)
    {
      if (*v196 != v31)
      {
        objc_enumerationMutation(obj);
      }

      v34 = *(*(&v195 + 1) + 8 * v33);
      v35 = [v34 stringValue];
      if (v35)
      {
        break;
      }

      v36 = [*(v29 + 648) syncChannel];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v40 = [objc_opt_class() description];
        OUTLINED_FUNCTION_10_9(v40, v44, v45, v46, v47, v48, v49, v50, v163, v164, v165, v166, v168, v172, v174, v176, v177);
        *(v51 + 14) = v34;
        _os_log_error_impl(&dword_191750000, v36, OS_LOG_TYPE_ERROR, "%{public}@: Skipping tombstone due to missing tombstone uuid: %@", buf, 0x16u);
LABEL_33:
      }

      if (v30 == ++v33)
      {
        v30 = [obj countByEnumeratingWithState:&v195 objects:v212 count:16];
        if (!v30)
        {
LABEL_36:

          v3 = v168;
          a1 = v179;
LABEL_38:
          v61 = [*(a1 + 40) sourceDeviceID];
          v62 = [_DKSyncMetadataStorage bookmarkStreamNameWithSourceDeviceID:v61];

          v63 = [*(a1 + 39) name];
          obja = v62;
          v64 = [_DKSyncMetadataStorage eventFromStartDate:v174 endDate:v176 bookmarkStreamName:v62 transportName:v63];

          v186 = v64;
          if ([v172 count] || objc_msgSend(*(a1 + 39), "transportType") != 8 || -[_DKSyncType forceSync](*(a1 + 42)))
          {
            v65 = *(a1 + 41);
            v66 = *(a1 + 42);
            v67 = [*(a1 + 45) lastSyncDate];
            v68 = [v65 highPriorityForSyncUpWithSyncType:v66 lastSyncDate:v67];

            v69 = *(a1 + 39);
            v211 = v64;
            v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v211 count:1];
            v191[0] = MEMORY[0x1E69E9820];
            v191[1] = 3221225472;
            v191[2] = __100___DKPerformSyncUpHistoryDeletionsOperation_performSyncUpHistoryDeletionsWithPreviousHighWaterMark___block_invoke;
            v191[3] = &unk_1E7369CB0;
            v191[4] = a1;
            v71 = v174;
            v192 = v174;
            v72 = v176;
            v193 = v176;
            v194 = v187;
            [v69 updateStorageWithAddedEvents:v70 deletedEventIDs:v194 highPriority:v68 completion:v191];

            v24 = 0;
          }

          else
          {
            v24 = 1;
            v71 = v174;
            v72 = v176;
          }

          v73 = *(a1 + 38);
          v74 = *(a1 + 40);
          v75 = [*(a1 + 39) name];
          v190 = 0;
          [v73 setLastSyncDownDeletionDate:v72 previousDate:v71 forPeer:v74 transportName:v75 error:&v190];
          v21 = v190;

          v76 = +[_CDLogging syncChannel];
          v77 = v76;
          v78 = v72;
          if (v21)
          {
            v79 = obja;
            if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
            {
              v144 = [objc_opt_class() description];
              [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-[_DKSyncDeletedEventIDs count](v187)];
              v145 = v171 = v3;
              v146 = [(NSDate *)v174 dk_localtimeString];
              v147 = [(NSDate *)v78 dk_localtimeString];
              v148 = [(__CFString *)v21 domain];
              [(__CFString *)v21 code];
              *buf = 138544898;
              v202 = v144;
              OUTLINED_FUNCTION_12_4();
              *(v149 + 14) = v145;
              v204 = 2114;
              v205 = v146;
              v206 = 2114;
              *(v149 + 34) = v147;
              v207 = 2114;
              *(v149 + 44) = v148;
              v208 = 2048;
              *(v149 + 54) = v150;
              v209 = v151;
              v210 = v21;
              _os_log_error_impl(&dword_191750000, v77, OS_LOG_TYPE_ERROR, "%{public}@: Failed while syncing up %@ deletions with bookmark [%{public}@ ending %{public}@]: %{public}@:%lld (%@)", buf, 0x48u);

              v3 = v171;
              v78 = v176;
            }

            v77 = [a1 errors];
            [v77 addObject:v21];
          }

          else if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
          {
            v178 = [objc_opt_class() description];
            v152 = v72;
            v184 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-[_DKSyncDeletedEventIDs count](v187)];
            v153 = [(NSDate *)v174 dk_localtimeString];
            v182 = [(NSDate *)v152 dk_localtimeString];
            v154 = [*(a1 + 40) me];
            v155 = &stru_1F05B9908;
            if (v154)
            {
              v155 = @"pseudo ";
            }

            v167 = v155;
            v156 = [*(a1 + 40) identifier];
            v157 = [*(a1 + 40) model];
            if (v157)
            {
              v159 = MEMORY[0x1E696AEC0];
              v165 = [*(a1 + 40) model];
              v158 = [v159 stringWithFormat:@" (%@)", v165];
            }

            else
            {
              v158 = &stru_1F05B9908;
            }

            OUTLINED_FUNCTION_9_8();
            *(v160 + 4) = v178;
            OUTLINED_FUNCTION_12_4();
            *(v161 + 14) = v184;
            v204 = 2114;
            v162 = v153;
            v205 = v153;
            v206 = 2114;
            *(v161 + 34) = v182;
            v207 = 2114;
            *(v161 + 44) = v167;
            v208 = 2114;
            *(v161 + 54) = v156;
            v209 = 2114;
            v210 = v158;
            _os_log_debug_impl(&dword_191750000, v77, OS_LOG_TYPE_DEBUG, "%{public}@: Successfully synced up %@ deletions with bookmark [%{public}@ ending %{public}@] to %{public}@peer %{public}@%{public}@", buf, 0x48u);
            v79 = obja;
            if (v157)
            {
            }

            v78 = v176;
          }

          else
          {
            v79 = obja;
          }

          if (v21)
          {
            v20 = v172;
            v10 = v174;
            goto LABEL_50;
          }

          v20 = v172;
          v10 = v174;
          if (!v24)
          {
LABEL_52:

            goto LABEL_53;
          }

LABEL_51:
          [a1 endOperation];
          goto LABEL_52;
        }

        goto LABEL_19;
      }
    }

    v36 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v35];
    if (v36)
    {
      v37 = [v34 metadata];
      [*(v32 + 2616) eventSourceDeviceID];
      v39 = v38 = v32;
      v40 = [v37 objectForKeyedSubscript:v39];

      if (v40)
      {
        v41 = [v34 metadata];
        v42 = [*(v38 + 2616) eventStreamName];
        v43 = [v41 objectForKeyedSubscript:v42];

        if ([v43 isEqualToString:v185])
        {
          [(_DKSyncDeletedEventIDs *)v187 addDeletedEventID:v36 forSourceDeviceID:v40];
        }

        v29 = 0x1E7366000;
        v32 = v38;
        v31 = v183;
      }

      else
      {
        [(_DKSyncDeletedEventIDs *)v187 addDeletedEventID:v36 forSourceDeviceID:v181];
        v29 = 0x1E7366000;
        v32 = v38;
      }
    }

    else
    {
      v40 = [*(v29 + 648) syncChannel];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v52 = [objc_opt_class() description];
        OUTLINED_FUNCTION_10_9(v52, v53, v54, v55, v56, v57, v58, v59, v163, v164, v165, v166, v168, v172, v174, v176, v177);
        *(v60 + 14) = v35;
        _os_log_error_impl(&dword_191750000, v40, OS_LOG_TYPE_ERROR, "%{public}@: Skipping tombstone due to malformed tombstone uuid: %@", buf, 0x16u);

        v29 = 0x1E7366000;
      }
    }

    goto LABEL_33;
  }

LABEL_53:

  v81 = *MEMORY[0x1E69E9840];
}

- (void)handleUpdateStorageWithStartDate:(void *)a3 endDate:(uint64_t)a4 deletedEventIDsCount:(void *)a5 orError:
{
  v42 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (a1)
  {
    v12 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v12);

    if (v11)
    {
      v13 = [_DKCKError isIgnorableError:v11];
      v14 = +[_CDLogging syncChannel];
      v15 = v14;
      if (v13)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v16 = [objc_opt_class() description];
          v17 = [v11 domain];
          [v11 code];
          OUTLINED_FUNCTION_4_15();
          _os_log_debug_impl(&dword_191750000, v15, OS_LOG_TYPE_DEBUG, "%{public}@: Did not update storage: %{public}@:%lld (%@)", buf, 0x2Au);
LABEL_25:
        }
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = [objc_opt_class() description];
        v17 = [v11 domain];
        [v11 code];
        OUTLINED_FUNCTION_4_15();
        _os_log_error_impl(&dword_191750000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Failed while updating storage: %{public}@:%lld (%@)", buf, 0x2Au);
        goto LABEL_25;
      }

      v24 = [a1 errors];
      [v24 addObject:v11];

LABEL_12:
      [a1 endOperation];
      goto LABEL_13;
    }

    v18 = +[_CDLogging syncChannel];
    v19 = v18;
    if (a4)
    {
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        goto LABEL_21;
      }

      v34 = [objc_opt_class() description];
      v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
      v33 = [(NSDate *)v9 dk_localtimeString];
      v31 = [(NSDate *)v10 dk_localtimeString];
      [*(a1 + 312) transportType];
      v20 = &stru_1F05B9908;
      [OUTLINED_FUNCTION_6_15() me];
      v21 = [OUTLINED_FUNCTION_6_15() identifier];
      v22 = [OUTLINED_FUNCTION_6_15() model];
      if (v22)
      {
        v23 = MEMORY[0x1E696AEC0];
        v30 = [OUTLINED_FUNCTION_6_15() model];
        v20 = [v23 stringWithFormat:@" (%@)", v30];
      }

      v26 = [*(a1 + 312) name];
      OUTLINED_FUNCTION_0_25();
      _os_log_impl(&dword_191750000, v19, OS_LOG_TYPE_INFO, "%{public}@: Synced up %@ deletions and high water mark with bookmark [%{public}@ ending %{public}@] doing sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@", buf, 0x5Cu);
    }

    else
    {
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_21;
      }

      v34 = [objc_opt_class() description];
      v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:0];
      v33 = [(NSDate *)v9 dk_localtimeString];
      v31 = [(NSDate *)v10 dk_localtimeString];
      [*(a1 + 312) transportType];
      v20 = &stru_1F05B9908;
      [OUTLINED_FUNCTION_6_15() me];
      v21 = [OUTLINED_FUNCTION_6_15() identifier];
      v22 = [OUTLINED_FUNCTION_6_15() model];
      if (v22)
      {
        v29 = MEMORY[0x1E696AEC0];
        v30 = [OUTLINED_FUNCTION_6_15() model];
        v20 = [v29 stringWithFormat:@" (%@)", v30];
      }

      v26 = [*(a1 + 312) name];
      OUTLINED_FUNCTION_0_25();
      _os_log_debug_impl(&dword_191750000, v19, OS_LOG_TYPE_DEBUG, "%{public}@: Synced up %@ deletions and high water mark with bookmark [%{public}@ ending %{public}@] doing sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@", buf, 0x5Cu);
    }

    if (v22)
    {
    }

LABEL_21:
    +[_DKPerformSyncUpHistoryDeletionsOperation _updateEventStatsWithTotal:transportType:](_DKPerformSyncUpHistoryDeletionsOperation, a4, [*(a1 + 312) transportType]);
    v27 = *(a1 + 368);
    v28 = [*(a1 + 328) maxBatchesPerSync];
    if (a4 && v27 < v28)
    {
      OUTLINED_FUNCTION_3_17();
      v36 = 3221225472;
      v37 = __115___DKPerformSyncUpHistoryDeletionsOperation_handleUpdateStorageWithStartDate_endDate_deletedEventIDsCount_orError___block_invoke;
      v38 = &unk_1E7367710;
      v39 = a1;
      v40 = v10;
      [_DKSyncSerializer performAsyncBlock:v35];

      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_13:

  v25 = *MEMORY[0x1E69E9840];
}

@end