@interface _DKPerformSyncDownPeerDeletionsOperation
+ (void)_updateEventStatsWithPreviousSyncDate:(uint64_t)a3 transportType:;
+ (void)_updateEventStatsWithTotal:(uint64_t)a3 transportType:;
- (id)initWithParent:(void *)a3 localStorage:(void *)a4 transport:(void *)a5 peer:(void *)a6 policy:(void *)a7 type:;
- (uint64_t)performSyncDownPeerDeletions;
- (void)endOperation;
- (void)handleFetchedDeletedEventIDs:(void *)a3 startDate:(void *)a4 endDate:(void *)a5 untilDate:;
- (void)main;
- (void)performSyncDownPeerDeletionsWithDidPrewarm:(void *)a3 orError:;
- (void)performSyncDownPeerDeletionsWithHighWaterMark:(void *)a3 orError:;
- (void)performSyncDownPeerDeletionsWithPreviousUntilDate:(uint64_t)a1;
@end

@implementation _DKPerformSyncDownPeerDeletionsOperation

- (void)main
{
  v3 = objc_opt_class();
  if ([_DKSync2Coordinator shouldDeferSyncOperationWithClass:v3 syncType:self->_type transport:self->_transport peer:self->_peer policy:self->_policy])
  {

    [(_DKPerformSyncDownPeerDeletionsOperation *)self endOperation];
  }

  else
  {

    [(_DKPerformSyncDownPeerDeletionsOperation *)self performSyncDownPeerDeletions];
  }
}

+ (void)_updateEventStatsWithPreviousSyncDate:(uint64_t)a3 transportType:
{
  v11 = a2;
  objc_opt_self();
  if (_updateEventStatsWithPreviousSyncDate_transportType__syncCadenceInitialized != -1)
  {
    +[_DKPerformSyncDownPeerDeletionsOperation _updateEventStatsWithPreviousSyncDate:transportType:];
  }

  if (v11)
  {
    v4 = [MEMORY[0x1E695DF00] distantPast];
    v5 = [v11 isEqualToDate:v4];

    if ((v5 & 1) == 0)
    {
      v6 = _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceByTransportCounter;
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

  v9 = _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceCounter;
  v10 = [MEMORY[0x1E695DF00] date];
  [(_DKEventStatsTimerCounter *)v9 addTimingWithStartDate:v11 endDate:v10];
}

+ (void)_updateEventStatsWithTotal:(uint64_t)a3 transportType:
{
  objc_opt_self();
  if (_updateEventStatsWithTotal_transportType__syncDownDeletionsCounterInitialized != -1)
  {
    +[_DKPerformSyncDownPeerDeletionsOperation _updateEventStatsWithTotal:transportType:];
  }

  [(_DKEventStatsCounter *)_updateEventStatsWithTotal_transportType__syncDownDeletionsTotalCounter incrementCountByNumber:a2];
  v5 = _updateEventStatsWithTotal_transportType__syncDownDeletionsTotalByTransportCounter;
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
  v2.super_class = _DKPerformSyncDownPeerDeletionsOperation;
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
    v22.super_class = _DKPerformSyncDownPeerDeletionsOperation;
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

- (uint64_t)performSyncDownPeerDeletions
{
  if (result)
  {
    v1 = result;
    v2 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v2);

    v3 = *(v1 + 296);
    v4 = *(v1 + 312);
    v5 = [*(v1 + 304) name];
    v6 = [v3 deletionsSyncHistoryForPeer:v4 transportName:v5 error:0];
    v7 = *(v1 + 344);
    *(v1 + 344) = v6;

    v8 = objc_opt_class();
    if ([_DKSync2Coordinator canPerformSyncOperationWithClass:v8 syncType:*(v1 + 328) history:*(v1 + 344) transport:*(v1 + 304) peer:*(v1 + 312) policy:*(v1 + 320)])
    {
      v9 = *(v1 + 304);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __72___DKPerformSyncDownPeerDeletionsOperation_performSyncDownPeerDeletions__block_invoke;
      v10[3] = &unk_1E73675F8;
      v10[4] = v1;
      return [v9 prewarmFetchWithCompletion:v10];
    }

    else
    {

      return [v1 endOperation];
    }
  }

  return result;
}

- (void)performSyncDownPeerDeletionsWithDidPrewarm:(void *)a3 orError:
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a1)
  {
    v6 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v6);

    if (v5)
    {
      v7 = [a1 errors];
      [v7 addObject:v5];
    }

    else
    {
      v8 = +[_CDLogging syncChannel];
      v9 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
      v10 = &stru_1F05B9908;
      v11 = "uesWithRequest:options:responseHandler:]";
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v32 = [objc_opt_class() description];
        [OUTLINED_FUNCTION_13_2() transportType];
        [OUTLINED_FUNCTION_5_5() me];
        v31 = [OUTLINED_FUNCTION_5_5() identifier];
        v29 = [OUTLINED_FUNCTION_5_5() model];
        if (v29)
        {
          v18 = MEMORY[0x1E696AEC0];
          v28 = [OUTLINED_FUNCTION_5_5() model];
          v30 = [v18 stringWithFormat:@" (%@)", v28];
        }

        else
        {
          v30 = &stru_1F05B9908;
        }

        v19 = [OUTLINED_FUNCTION_13_2() name];
        v34 = 138544642;
        v35 = v32;
        v36 = 2082;
        OUTLINED_FUNCTION_14_2();
        v37 = v31;
        v38 = v20;
        v39 = v30;
        v40 = v20;
        v41 = v21;
        OUTLINED_FUNCTION_15_0(&dword_191750000, v8, v22, "%{public}@: Performing deletions sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@", &v34);

        if (v29)
        {
        }

        v11 = "[_DKSyncRapportContextStorage handleFetchContextValuesWithRequest:options:responseHandler:]" + 52;
      }

      if (a2 && [OUTLINED_FUNCTION_13_2() hasDeletionsFlagForPeer:a1[39]])
      {
        v17 = [MEMORY[0x1E695DF00] date];
        [(_DKPerformSyncDownPeerDeletionsOperation *)a1 performSyncDownPeerDeletionsWithHighWaterMark:v17 orError:0];

        goto LABEL_10;
      }

      v12 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v33 = [objc_opt_class() description];
        [OUTLINED_FUNCTION_13_2() transportType];
        [OUTLINED_FUNCTION_5_5() me];
        v14 = [OUTLINED_FUNCTION_5_5() identifier];
        v15 = [OUTLINED_FUNCTION_5_5() model];
        v16 = v11;
        if (v15)
        {
          v23 = MEMORY[0x1E696AEC0];
          v9 = [OUTLINED_FUNCTION_5_5() model];
          v10 = [v23 stringWithFormat:@" (%@)", v9];
        }

        v24 = [OUTLINED_FUNCTION_13_2() name];
        v34 = *(v16 + 377);
        v35 = v33;
        v36 = 2082;
        OUTLINED_FUNCTION_14_2();
        v37 = v14;
        v38 = v25;
        v39 = v10;
        v40 = v25;
        v41 = v26;
        OUTLINED_FUNCTION_15_0(&dword_191750000, v12, v27, "%{public}@: Skipping fetching deletions sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ due to no changes to sync", &v34);

        if (v15)
        {
        }
      }
    }

    [a1 endOperation];
  }

LABEL_10:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)performSyncDownPeerDeletionsWithHighWaterMark:(void *)a3 orError:
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (a1)
  {
    if (v7)
    {
      v9 = [a1 errors];
      [v9 addObject:v8];
    }

    else
    {
      if (v6)
      {
        v10 = [MEMORY[0x1E695DF00] distantPast];
        v11 = [v6 isEqualToDate:v10];

        if ((v11 & 1) == 0)
        {
          objc_storeStrong((a1 + 352), a2);
          [(_DKPerformSyncDownPeerDeletionsOperation *)a1 performSyncDownPeerDeletionsWithPreviousUntilDate:?];
          goto LABEL_9;
        }
      }

      v12 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v27 = [objc_opt_class() description];
        v14 = [*(a1 + 304) transportType];
        v15 = "down from";
        if (v14 == 8)
        {
          v15 = "up to";
        }

        v26 = v15;
        v16 = [OUTLINED_FUNCTION_19_3() me];
        v17 = &stru_1F05B9908;
        v18 = @"pseudo ";
        if (!v16)
        {
          v18 = &stru_1F05B9908;
        }

        v25 = v18;
        v19 = [OUTLINED_FUNCTION_19_3() identifier];
        v20 = [OUTLINED_FUNCTION_19_3() model];
        if (v20)
        {
          v21 = MEMORY[0x1E696AEC0];
          v24 = [OUTLINED_FUNCTION_19_3() model];
          v17 = [v21 stringWithFormat:@" (%@)", v24];
        }

        v22 = [*(a1 + 304) name];
        v28 = 138544642;
        v29 = v27;
        v30 = 2082;
        v31 = v26;
        v32 = 2114;
        v33 = v25;
        v34 = 2114;
        v35 = v19;
        v36 = 2114;
        v37 = v17;
        v38 = 2114;
        v39 = v22;
        OUTLINED_FUNCTION_15_0(&dword_191750000, v12, v23, "%{public}@: Will not attempt deletions sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ because peer has not yet synced deletions", &v28);

        if (v20)
        {
        }
      }

      [*(a1 + 304) setHasDeletionsFlag:0 forPeer:*(a1 + 312)];
    }

    [a1 endOperation];
  }

LABEL_9:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)performSyncDownPeerDeletionsWithPreviousUntilDate:(uint64_t)a1
{
  v130 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = +[_CDLogging syncChannel];
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
    v6 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    v7 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    if (v3)
    {
      if (v5)
      {
        v3 = [OUTLINED_FUNCTION_17_3() description];
        v42 = [OUTLINED_FUNCTION_12_2() transportType];
        v43 = "down from";
        if (v42 == 8)
        {
          v43 = "up to";
        }

        v106 = v43;
        [OUTLINED_FUNCTION_1_13() me];
        v44 = [OUTLINED_FUNCTION_1_13() identifier];
        v45 = [OUTLINED_FUNCTION_1_13() model];
        if (v45)
        {
          v55 = MEMORY[0x1E696AEC0];
          v98 = [OUTLINED_FUNCTION_1_13() model];
          v6 = [v55 stringWithFormat:@" (%@)", v98];
        }

        else
        {
          v6 = &stru_1F05B9908;
        }

        v7 = [*(a1 + 304) name];
        v56 = [(NSDate *)v110 dk_localtimeString];
        *buf = 138544898;
        v117 = v3;
        v118 = 2082;
        v119 = v106;
        OUTLINED_FUNCTION_7_2();
        OUTLINED_FUNCTION_22_1();
        v127 = v7;
        v128 = 2112;
        v129 = v57;
        _os_log_debug_impl(&dword_191750000, v4, OS_LOG_TYPE_DEBUG, "%{public}@: Will attempt another deletions sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ since %@", buf, 0x48u);

        if (v45)
        {
        }

        OUTLINED_FUNCTION_6_9();
      }

      v8 = v3;
      goto LABEL_5;
    }

    if (v5)
    {
      v110 = [objc_opt_class() description];
      v49 = [OUTLINED_FUNCTION_12_2() transportType];
      v50 = "down from";
      if (v49 == 8)
      {
        v50 = "up to";
      }

      v106 = v50;
      if ([OUTLINED_FUNCTION_1_13() me])
      {
        v51 = @"pseudo ";
      }

      else
      {
        v51 = &stru_1F05B9908;
      }

      v52 = [OUTLINED_FUNCTION_1_13() identifier];
      v53 = [OUTLINED_FUNCTION_1_13() model];
      if (v53)
      {
        v72 = MEMORY[0x1E696AEC0];
        v101 = [*(a1 + 312) model];
        v54 = [v72 stringWithFormat:@" (%@)", v101];
      }

      else
      {
        v54 = &stru_1F05B9908;
      }

      v73 = [*(a1 + 304) name];
      *buf = 138544642;
      v117 = v110;
      v118 = 2082;
      v119 = v106;
      v120 = 2114;
      v121 = v51;
      v122 = 2114;
      OUTLINED_FUNCTION_22_1();
      v127 = v74;
      OUTLINED_FUNCTION_15_0(&dword_191750000, v4, v75, "%{public}@: Will attempt deletions sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@", buf);

      if (v53)
      {
      }

      v7 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
      v6 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    }

    if ([OUTLINED_FUNCTION_1_13() me])
    {
      v25 = 0;
    }

    else
    {
      v30 = v6;
      v31 = *(a1 + 296);
      v32 = *(a1 + v7[515]);
      v33 = [*(a1 + v30[514]) name];
      v115 = 0;
      v34 = v31;
      v6 = v30;
      v3 = 0;
      v8 = [v34 lastSyncDownDeletionDateForPeer:v32 transportName:v33 error:&v115];
      v25 = v115;

      if (v8)
      {
        goto LABEL_23;
      }
    }

    v8 = [MEMORY[0x1E695DF00] distantPast];
LABEL_23:
    if (v25)
    {
      v35 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        v3 = [OUTLINED_FUNCTION_17_3() description];
        v63 = [OUTLINED_FUNCTION_1_13() me];
        v64 = &stru_1F05B9908;
        v65 = @"pseudo ";
        if (!v63)
        {
          v65 = &stru_1F05B9908;
        }

        v108 = v65;
        v7 = [OUTLINED_FUNCTION_1_13() identifier];
        v66 = [OUTLINED_FUNCTION_5_5() model];
        if (v66)
        {
          v86 = MEMORY[0x1E696AEC0];
          v101 = [OUTLINED_FUNCTION_5_5() model];
          v64 = [v86 stringWithFormat:@" (%@)", v101];
        }

        v87 = [v25 domain];
        v88 = [v25 code];
        *buf = 138544898;
        v117 = v3;
        v118 = 2114;
        v119 = v108;
        v120 = 2114;
        v121 = v7;
        v122 = 2114;
        v123 = v64;
        v124 = 2114;
        v125 = v87;
        v126 = 2048;
        v127 = v88;
        v128 = 2112;
        v129 = v25;
        _os_log_debug_impl(&dword_191750000, v35, OS_LOG_TYPE_DEBUG, "%{public}@: Failed to find last sync down deletions bookmark from %{public}@peer %{public}@%{public}@: %{public}@:%lld (%@)", buf, 0x48u);

        if (v66)
        {
        }

        OUTLINED_FUNCTION_6_9();
      }

      v9 = [a1 errors];
      [v9 addObject:v25];
      goto LABEL_29;
    }

LABEL_5:
    v9 = *(a1 + 352);
    v10 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v102 = [OUTLINED_FUNCTION_17_3() description];
      v3 = [(NSDate *)v8 dk_localtimeString];
      v106 = [(NSDate *)v9 dk_localtimeString];
      v38 = [OUTLINED_FUNCTION_1_13() me];
      v6 = &stru_1F05B9908;
      v39 = @"pseudo ";
      if (!v38)
      {
        v39 = &stru_1F05B9908;
      }

      v99 = v39;
      v40 = [OUTLINED_FUNCTION_1_13() identifier];
      v41 = [OUTLINED_FUNCTION_1_13() model];
      if (v41)
      {
        v46 = MEMORY[0x1E696AEC0];
        v96 = [OUTLINED_FUNCTION_1_13() model];
        v6 = [v46 stringWithFormat:@" (%@)", v96];
      }

      *buf = 138544642;
      v7 = v102;
      v117 = v102;
      v118 = 2114;
      v119 = v3;
      OUTLINED_FUNCTION_7_2();
      v123 = v99;
      v124 = v47;
      v125 = v40;
      v126 = v47;
      v127 = v6;
      OUTLINED_FUNCTION_15_0(&dword_191750000, v10, v48, "%{public}@: Syncing down deletions with bookmark [%{public}@ ending %{public}@] from %{public}@peer %{public}@%{public}@", buf);
      if (v41)
      {
      }

      OUTLINED_FUNCTION_6_9();
    }

    [v9 timeIntervalSinceReferenceDate];
    v12 = v11;
    [v8 timeIntervalSinceReferenceDate];
    if (v12 - v13 <= [*(a1 + 320) minSyncWindowInSeconds])
    {
      v14 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v26 = [OUTLINED_FUNCTION_17_3() description];
        v3 = [(NSDate *)v8 dk_localtimeString];
        if ([OUTLINED_FUNCTION_1_13() me])
        {
          v27 = @"pseudo ";
        }

        else
        {
          v27 = &stru_1F05B9908;
        }

        v28 = [OUTLINED_FUNCTION_1_13() identifier];
        v29 = [OUTLINED_FUNCTION_1_13() model];
        if (v29)
        {
          v104 = v28;
          v67 = v27;
          v68 = v3;
          v69 = v26;
          v70 = MEMORY[0x1E696AEC0];
          v106 = [OUTLINED_FUNCTION_1_13() model];
          v71 = v70;
          v26 = v69;
          v3 = v68;
          v27 = v67;
          v28 = v104;
          v7 = [v71 stringWithFormat:@" (%@)", v106];
        }

        else
        {
          v7 = &stru_1F05B9908;
        }

        *buf = 138544386;
        v117 = v26;
        v118 = 2112;
        v119 = v3;
        v120 = 2114;
        v121 = v27;
        v122 = 2114;
        v123 = v28;
        v124 = 2114;
        v125 = v7;
        _os_log_debug_impl(&dword_191750000, v14, OS_LOG_TYPE_DEBUG, "%{public}@: Deletions bookmark %@ is up-to-date for deletions sync down for %{public}@peer %{public}@%{public}@", buf, 0x34u);
        if (v29)
        {
        }

        OUTLINED_FUNCTION_6_9();
      }
    }

    else
    {
      v14 = [*(a1 + 320) streamNamesToSyncWithDisabledFeatures:0];
      if ([v14 count])
      {
        v111 = v3;
        v15 = v6;
        v16 = *(a1 + 360);
        if (!v16)
        {
          v17 = [*(a1 + 344) lastSyncDate];
          +[_DKPerformSyncDownPeerDeletionsOperation _updateEventStatsWithPreviousSyncDate:transportType:](_DKPerformSyncDownPeerDeletionsOperation, v17, [*(a1 + v6[514]) transportType]);

          v16 = *(a1 + 360);
        }

        v18 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
        *(a1 + 360) = v16 + 1;
        v19 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v107 = [objc_opt_class() description];
          v58 = [(NSDate *)v8 dk_localtimeString];
          v103 = [(NSDate *)v9 dk_localtimeString];
          v59 = [OUTLINED_FUNCTION_1_13() me];
          v60 = &stru_1F05B9908;
          if (v59)
          {
            v60 = @"pseudo ";
          }

          v97 = v60;
          v100 = [OUTLINED_FUNCTION_1_13() identifier];
          v61 = [OUTLINED_FUNCTION_1_13() model];
          if (v61)
          {
            v94 = v58;
            v82 = MEMORY[0x1E696AEC0];
            v95 = [OUTLINED_FUNCTION_1_13() model];
            v83 = v82;
            v58 = v94;
            v62 = [v83 stringWithFormat:@" (%@)", v95];
          }

          else
          {
            v62 = &stru_1F05B9908;
          }

          *buf = 138544642;
          v117 = v107;
          v118 = 2114;
          v119 = v58;
          OUTLINED_FUNCTION_7_2();
          v123 = v97;
          v124 = v84;
          v125 = v100;
          v126 = v84;
          v127 = v62;
          OUTLINED_FUNCTION_15_0(&dword_191750000, v19, v85, "%{public}@: Fetching deletions with bookmark [%{public}@ ending %{public}@] from %{public}@peer %{public}@%{public}@", buf);
          if (v61)
          {
          }

          v18 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
        }

        v20 = *(a1 + v15[514]);
        v21 = *(a1 + v18[515]);
        v22 = [*(a1 + 320) syncBatchSizeInEvents];
        v23 = *(a1 + 336);
        v112[0] = MEMORY[0x1E69E9820];
        v112[1] = 3221225472;
        v112[2] = __94___DKPerformSyncDownPeerDeletionsOperation_performSyncDownPeerDeletionsWithPreviousUntilDate___block_invoke;
        v112[3] = &unk_1E7368E50;
        v112[4] = a1;
        v8 = v8;
        v113 = v8;
        v114 = v9;
        v24 = v9;
        [v20 fetchDeletedEventIDsFromPeer:v21 sinceDate:v8 streamNames:v14 limit:v22 highPriority:v23 completion:v112];

        v25 = 0;
        v3 = v111;
LABEL_32:

        goto LABEL_33;
      }

      v36 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        v109 = [OUTLINED_FUNCTION_17_3() description];
        v76 = v6;
        v77 = [OUTLINED_FUNCTION_12_2() transportType];
        v78 = "down from";
        if (v77 == 8)
        {
          v78 = "up to";
        }

        v105 = v78;
        [OUTLINED_FUNCTION_1_13() me];
        v79 = [OUTLINED_FUNCTION_1_13() identifier];
        v80 = [OUTLINED_FUNCTION_1_13() model];
        if (v80)
        {
          v89 = MEMORY[0x1E696AEC0];
          v96 = [OUTLINED_FUNCTION_1_13() model];
          v81 = [v89 stringWithFormat:@" (%@)", v96];
        }

        else
        {
          v81 = &stru_1F05B9908;
        }

        v90 = [*(a1 + v76[514]) name];
        *buf = 138544642;
        v117 = v109;
        v118 = 2082;
        v119 = v105;
        OUTLINED_FUNCTION_7_2();
        v123 = v79;
        v124 = v91;
        v125 = v81;
        v126 = v91;
        v127 = v92;
        OUTLINED_FUNCTION_15_0(&dword_191750000, v36, v93, "%{public}@: Skipped fetching deletions sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ due to no streams to sync", buf);

        if (v80)
        {
        }

        v7 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
        v3 = v110;
      }
    }

    v25 = 0;
LABEL_29:

    if ([OUTLINED_FUNCTION_12_2() transportType] != 1)
    {
      [OUTLINED_FUNCTION_12_2() setHasDeletionsFlag:0 forPeer:*(a1 + v7[515])];
    }

    [a1 endOperation];
    goto LABEL_32;
  }

LABEL_33:

  v37 = *MEMORY[0x1E69E9840];
}

- (void)handleFetchedDeletedEventIDs:(void *)a3 startDate:(void *)a4 endDate:(void *)a5 untilDate:
{
  v198 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v176 = a4;
  v11 = a5;
  if (a1)
  {
    v12 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v12);

    if (!v11)
    {
      v11 = *(a1 + 352);
    }

    v13 = 0x1E7366000uLL;
    v14 = +[_CDLogging syncChannel];
    v15 = 0x1E696A000;
    v174 = v10;
    v175 = v9;
    v177 = v11;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_16_1();
      v167 = [OUTLINED_FUNCTION_8_4() numberWithUnsignedInteger:?];
      v78 = [(NSDate *)v10 dk_localtimeString];
      v79 = [(NSDate *)v176 dk_localtimeString];
      v80 = [OUTLINED_FUNCTION_21_2() isEqualToDate:?];
      if (v80)
      {
        v165 = @"ending";
      }

      else
      {
        v165 = [(NSDate *)v11 dk_localtimeString];
      }

      v81 = &stru_1F05B9908;
      if ([OUTLINED_FUNCTION_2_9() me])
      {
        v82 = @"pseudo ";
      }

      else
      {
        v82 = &stru_1F05B9908;
      }

      v83 = [OUTLINED_FUNCTION_2_9() identifier];
      v84 = [OUTLINED_FUNCTION_2_9() model];
      if (v84)
      {
        v85 = MEMORY[0x1E696AEC0];
        [*(a1 + 312) model];
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_20_2();
        v81 = [v85 stringWithFormat:@" (%@)"];
      }

      *buf = 138545154;
      v183 = v171;
      OUTLINED_FUNCTION_9_3();
      v185 = v167;
      v186 = 2114;
      v187 = v78;
      v188 = 2114;
      v189 = v79;
      v190 = 2114;
      v191 = v165;
      v192 = 2114;
      v193 = v82;
      OUTLINED_FUNCTION_18_2();
      *(v86 + 74) = v81;
      _os_log_debug_impl(&dword_191750000, v14, OS_LOG_TYPE_DEBUG, "%{public}@: Fetched %@ deleted event ids with bookmark [%{public}@ ending %{public}@] up through %{public}@ from %{public}@peer %{public}@%{public}@", buf, 0x52u);
      if (v84)
      {
      }

      if ((v80 & 1) == 0)
      {
      }

      v10 = v174;
      v9 = v175;
      v11 = v177;
      v13 = 0x1E7366000;
      v15 = 0x1E696A000;
    }

    v16 = [v9 count];
    v17 = [*(v13 + 648) syncChannel];
    v18 = v17;
    if (v16)
    {
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        goto LABEL_21;
      }

      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_16_1();
      v159 = [OUTLINED_FUNCTION_8_4() numberWithUnsignedInteger:?];
      v19 = [(NSDate *)v10 dk_localtimeString];
      v27 = OUTLINED_FUNCTION_10_5(v19, v20, v21, v22, v23, v24, v25, v26, v144, v145, v146, v148, v150, v152, v155, v159, v167, v171, v174, v175, v176);
      v155 = [(NSDate *)v27 dk_localtimeString];
      v28 = [OUTLINED_FUNCTION_21_2() isEqualToDate:?];
      if (v28)
      {
        v152 = @"ending";
      }

      else
      {
        v152 = [(NSDate *)v11 dk_localtimeString];
      }

      [*(a1 + 304) transportType];
      v38 = &stru_1F05B9908;
      [OUTLINED_FUNCTION_4_9() me];
      v39 = [OUTLINED_FUNCTION_4_9() identifier];
      v40 = [OUTLINED_FUNCTION_4_9() model];
      if (v40)
      {
        v41 = MEMORY[0x1E696AEC0];
        [OUTLINED_FUNCTION_4_9() model];
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_20_2();
        v38 = [v41 stringWithFormat:@" (%@)"];
      }

      v42 = [*(a1 + 304) name];
      *buf = 138545666;
      v183 = v172;
      OUTLINED_FUNCTION_9_3();
      OUTLINED_FUNCTION_0_14();
      OUTLINED_FUNCTION_3_9();
      _os_log_impl(&dword_191750000, v18, OS_LOG_TYPE_INFO, "%{public}@: Fetched %@ deleted event ids with bookmark [%{public}@ ending %{public}@] up through %{public}@ doing sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@", buf, 0x66u);
    }

    else
    {
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_21;
      }

      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_16_1();
      v161 = [OUTLINED_FUNCTION_8_4() numberWithUnsignedInteger:?];
      v29 = [(NSDate *)v10 dk_localtimeString];
      v37 = OUTLINED_FUNCTION_10_5(v29, v30, v31, v32, v33, v34, v35, v36, v144, v145, v146, v148, v150, v152, v155, v161, v167, v171, v174, v175, v176);
      v155 = [(NSDate *)v37 dk_localtimeString];
      v28 = [OUTLINED_FUNCTION_21_2() isEqualToDate:?];
      if (v28)
      {
        v152 = @"ending";
      }

      else
      {
        v152 = [(NSDate *)v11 dk_localtimeString];
      }

      [*(a1 + 304) transportType];
      v38 = &stru_1F05B9908;
      [OUTLINED_FUNCTION_4_9() me];
      v39 = [OUTLINED_FUNCTION_4_9() identifier];
      v40 = [OUTLINED_FUNCTION_4_9() model];
      if (v40)
      {
        v123 = MEMORY[0x1E696AEC0];
        [OUTLINED_FUNCTION_4_9() model];
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_20_2();
        v38 = [v123 stringWithFormat:@" (%@)"];
      }

      v42 = [*(a1 + 304) name];
      *buf = 138545666;
      v183 = v172;
      OUTLINED_FUNCTION_9_3();
      OUTLINED_FUNCTION_0_14();
      OUTLINED_FUNCTION_3_9();
      _os_log_debug_impl(&dword_191750000, v18, OS_LOG_TYPE_DEBUG, "%{public}@: Fetched %@ deleted event ids with bookmark [%{public}@ ending %{public}@] up through %{public}@ doing sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@", buf, 0x66u);
    }

    if (v40)
    {
    }

    v10 = v174;
    v9 = v175;
    v11 = v177;
    if ((v28 & 1) == 0)
    {
    }

    v13 = 0x1E7366000uLL;
    v15 = 0x1E696A000uLL;
LABEL_21:

    v43 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    v44 = [OUTLINED_FUNCTION_2_9() sourceDeviceID];
    v45 = v44;
    if (v44)
    {
      v173 = v44;
      v46 = +[_DKSyncPeerStatusTracker sharedInstance];
      v47 = [MEMORY[0x1E695DF00] date];
      [v46 setLastSuccessfulActivityDate:v47 onTransport:objc_msgSend(OUTLINED_FUNCTION_11_4() forPeer:{"transportType"), *(a1 + 312)}];

      if ([v9 count])
      {
        *(a1 + 368) = 1;
        v48 = v13;
        v49 = [v9 count];
        [OUTLINED_FUNCTION_11_4() transportType];
        v50 = OUTLINED_FUNCTION_8_4();
        v51 = v49;
        v13 = v48;
        [(_DKPerformSyncDownPeerDeletionsOperation *)v50 _updateEventStatsWithTotal:v51 transportType:v52];
        v53 = *(a1 + 296);
        v181 = 0;
        v54 = [v53 deleteEventsWithEventIDs:v9 error:&v181];
        v55 = v181;
        v56 = [*(v48 + 648) syncChannel];
        v57 = v56;
        if (v54)
        {
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
          {
            v151 = [objc_opt_class() description];
            v58 = *(v15 + 3480);
            [v175 count];
            v162 = [OUTLINED_FUNCTION_8_4() numberWithUnsignedInteger:?];
            v59 = [(NSDate *)v174 dk_localtimeString];
            v67 = OUTLINED_FUNCTION_10_5(v59, v60, v61, v62, v63, v64, v65, v66, v144, v145, v146, v148, v151, v152, v155, v162, v167, v173, v174, v175, v176);
            v156 = [(NSDate *)v67 dk_localtimeString];
            v149 = [v58 isEqualToDate:v177];
            if (v149)
            {
              v153 = @"ending";
            }

            else
            {
              v153 = [(NSDate *)v177 dk_localtimeString];
            }

            v124 = &stru_1F05B9908;
            if ([OUTLINED_FUNCTION_2_9() me])
            {
              v125 = @"pseudo ";
            }

            else
            {
              v125 = &stru_1F05B9908;
            }

            v126 = [OUTLINED_FUNCTION_2_9() identifier];
            v127 = [OUTLINED_FUNCTION_2_9() model];
            if (v127)
            {
              v137 = MEMORY[0x1E696AEC0];
              v147 = [*(a1 + 312) model];
              v124 = [v137 stringWithFormat:@" (%@)", v147];
            }

            *buf = 138545154;
            v183 = v150;
            OUTLINED_FUNCTION_9_3();
            OUTLINED_FUNCTION_0_14();
            v192 = v138;
            v193 = v125;
            OUTLINED_FUNCTION_18_2();
            *(v139 + 74) = v124;
            OUTLINED_FUNCTION_23_1();
            _os_log_debug_impl(v140, v141, OS_LOG_TYPE_DEBUG, v142, v143, 0x52u);
            if (v127)
            {
            }

            v13 = v48;
            if ((v149 & 1) == 0)
            {
            }

            v43 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
          }
        }

        else
        {
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            v166 = [objc_opt_class() description];
            v111 = *(v15 + 3480);
            [v175 count];
            v170 = [OUTLINED_FUNCTION_8_4() numberWithUnsignedInteger:?];
            if ([OUTLINED_FUNCTION_2_9() me])
            {
              v112 = @"pseudo ";
            }

            else
            {
              v112 = &stru_1F05B9908;
            }

            v158 = [OUTLINED_FUNCTION_2_9() identifier];
            v113 = [OUTLINED_FUNCTION_2_9() model];
            if (v113)
            {
              v128 = MEMORY[0x1E696AEC0];
              v152 = [*(a1 + 312) model];
              v114 = [v128 stringWithFormat:@" (%@)", v152];
            }

            else
            {
              v114 = &stru_1F05B9908;
            }

            v129 = [v55 domain];
            [v55 code];
            *buf = 138545154;
            v183 = v166;
            OUTLINED_FUNCTION_9_3();
            v185 = v130;
            v186 = 2114;
            v187 = v112;
            v188 = 2114;
            v189 = v158;
            v190 = 2114;
            v191 = v114;
            v192 = 2114;
            v193 = v129;
            v194 = 2048;
            v195 = v131;
            v196 = v132;
            v197 = v55;
            OUTLINED_FUNCTION_23_1();
            _os_log_error_impl(v133, v134, OS_LOG_TYPE_ERROR, v135, v136, 0x52u);

            if (v113)
            {
            }

            v43 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
            v13 = v48;
          }

          v57 = [a1 errors];
          [v57 addObject:v55];
        }

        v9 = v175;
        v11 = v177;
      }

      if ([OUTLINED_FUNCTION_2_9() me])
      {
        v45 = v173;
        v10 = v174;
LABEL_76:

        if ([OUTLINED_FUNCTION_11_4() transportType] != 1)
        {
          [OUTLINED_FUNCTION_11_4() setHasDeletionsFlag:0 forPeer:*(a1 + v43[515])];
        }

        [a1 endOperation];
        goto LABEL_79;
      }

      v70 = *(a1 + 296);
      v71 = v13;
      v72 = *(a1 + v43[515]);
      v73 = [OUTLINED_FUNCTION_11_4() name];
      v180 = 0;
      v10 = v174;
      [OUTLINED_FUNCTION_21_2() setLastSyncDownDeletionDate:? previousDate:? forPeer:? transportName:? error:?];
      v69 = 0;

      v74 = [*(v71 + 648) syncChannel];
      v75 = v74;
      if (v69)
      {
        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          v115 = [objc_opt_class() description];
          v116 = [(__CFString *)v69 domain];
          v117 = [(__CFString *)v69 code];
          *buf = 138544130;
          v183 = v115;
          v184 = 2114;
          v185 = v116;
          v186 = 2048;
          v187 = v117;
          v188 = 2112;
          v189 = v69;
          OUTLINED_FUNCTION_23_1();
          _os_log_error_impl(v118, v119, OS_LOG_TYPE_ERROR, v120, v121, 0x2Au);
        }

        v76 = [a1 errors];
        [v76 addObject:v69];

        v9 = v175;
      }

      else
      {
        if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
        {
          v169 = [objc_opt_class() description];
          v164 = [(NSDate *)v174 dk_localtimeString];
          v77 = [(NSDate *)v176 dk_localtimeString];
          v154 = [v176 isEqualToDate:v177];
          if (v154)
          {
            v157 = @"ending";
          }

          else
          {
            v157 = [(NSDate *)v177 dk_localtimeString];
          }

          v87 = &stru_1F05B9908;
          if ([OUTLINED_FUNCTION_2_9() me])
          {
            v88 = @"pseudo ";
          }

          else
          {
            v88 = &stru_1F05B9908;
          }

          v89 = [OUTLINED_FUNCTION_2_9() identifier];
          v90 = [OUTLINED_FUNCTION_2_9() model];
          v91 = v43;
          v92 = v90;
          if (v90)
          {
            v93 = MEMORY[0x1E696AEC0];
            v150 = [*(a1 + v91[515]) model];
            v94 = v93;
            v10 = v174;
            v87 = [v94 stringWithFormat:@" (%@)", v150];
          }

          *buf = 138544898;
          v183 = v169;
          v184 = 2114;
          v185 = v164;
          v186 = 2114;
          v187 = v77;
          v188 = 2114;
          v189 = v157;
          v190 = 2114;
          v191 = v88;
          v192 = 2114;
          v193 = v89;
          v194 = 2114;
          v195 = v87;
          OUTLINED_FUNCTION_23_1();
          _os_log_impl(v102, v103, OS_LOG_TYPE_INFO, v104, v105, 0x48u);
          if (v92)
          {
          }

          if ((v154 & 1) == 0)
          {
          }

          v43 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
        }

        v106 = *(a1 + 360);
        if (v106 >= [*(a1 + 320) maxBatchesPerSync])
        {
          v9 = v175;
        }

        else
        {
          [*(a1 + 352) timeIntervalSinceReferenceDate];
          v108 = v107;
          [v177 timeIntervalSinceReferenceDate];
          v9 = v175;
          if (v108 > v109)
          {
            v178[0] = MEMORY[0x1E69E9820];
            v178[1] = 3221225472;
            v178[2] = __101___DKPerformSyncDownPeerDeletionsOperation_handleFetchedDeletedEventIDs_startDate_endDate_untilDate___block_invoke;
            v178[3] = &unk_1E7367710;
            v178[4] = a1;
            v179 = v177;
            [_DKSyncSerializer performAsyncBlock:v178];

            v11 = v177;
            v45 = v173;
LABEL_79:

            goto LABEL_80;
          }
        }
      }

      v45 = v173;
    }

    else
    {
      v68 = [*(v13 + 648) syncChannel];
      if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        v95 = [objc_opt_class() description];
        v96 = *(v15 + 3480);
        [v9 count];
        v97 = [OUTLINED_FUNCTION_8_4() numberWithUnsignedInteger:?];
        v98 = &stru_1F05B9908;
        if ([OUTLINED_FUNCTION_4_9() me])
        {
          v99 = @"pseudo ";
        }

        else
        {
          v99 = &stru_1F05B9908;
        }

        v100 = [OUTLINED_FUNCTION_4_9() identifier];
        v101 = [OUTLINED_FUNCTION_4_9() model];
        if (v101)
        {
          v122 = MEMORY[0x1E696AEC0];
          [OUTLINED_FUNCTION_4_9() model];
          objc_claimAutoreleasedReturnValue();
          OUTLINED_FUNCTION_20_2();
          v98 = [v122 stringWithFormat:@" (%@)"];
        }

        *buf = 138544386;
        v183 = v95;
        OUTLINED_FUNCTION_9_3();
        v185 = v97;
        v186 = 2114;
        v187 = v99;
        v188 = 2114;
        v189 = v100;
        v190 = 2114;
        v191 = v98;
        _os_log_error_impl(&dword_191750000, v68, OS_LOG_TYPE_ERROR, "%{public}@: Unable to delete %@ events, missing source device id in peer %{public}@peer %{public}@%{public}@", buf, 0x34u);
        if (v101)
        {
        }

        v10 = v174;
        v9 = v175;
        v43 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
        v45 = 0;
      }

      v46 = [a1 errors];
      v69 = +[_DKSyncErrors internalFailure];
      [v46 addObject:v69];
    }

    v11 = v177;
    goto LABEL_76;
  }

LABEL_80:

  v110 = *MEMORY[0x1E69E9840];
}

@end