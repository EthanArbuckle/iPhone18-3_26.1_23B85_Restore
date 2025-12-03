@interface _DKPerformSyncDownPeerDeletionsOperation
+ (void)_updateEventStatsWithPreviousSyncDate:(uint64_t)date transportType:;
+ (void)_updateEventStatsWithTotal:(uint64_t)total transportType:;
- (id)initWithParent:(void *)parent localStorage:(void *)storage transport:(void *)transport peer:(void *)peer policy:(void *)policy type:;
- (uint64_t)performSyncDownPeerDeletions;
- (void)endOperation;
- (void)handleFetchedDeletedEventIDs:(void *)ds startDate:(void *)date endDate:(void *)endDate untilDate:;
- (void)main;
- (void)performSyncDownPeerDeletionsWithDidPrewarm:(void *)prewarm orError:;
- (void)performSyncDownPeerDeletionsWithHighWaterMark:(void *)mark orError:;
- (void)performSyncDownPeerDeletionsWithPreviousUntilDate:(uint64_t)date;
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

+ (void)_updateEventStatsWithPreviousSyncDate:(uint64_t)date transportType:
{
  v11 = a2;
  objc_opt_self();
  if (_updateEventStatsWithPreviousSyncDate_transportType__syncCadenceInitialized != -1)
  {
    +[_DKPerformSyncDownPeerDeletionsOperation _updateEventStatsWithPreviousSyncDate:transportType:];
  }

  if (v11)
  {
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    v5 = [v11 isEqualToDate:distantPast];

    if ((v5 & 1) == 0)
    {
      v6 = _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceByTransportCounter;
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

  v9 = _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceCounter;
  date2 = [MEMORY[0x1E695DF00] date];
  [(_DKEventStatsTimerCounter *)v9 addTimingWithStartDate:v11 endDate:date2];
}

+ (void)_updateEventStatsWithTotal:(uint64_t)total transportType:
{
  objc_opt_self();
  if (_updateEventStatsWithTotal_transportType__syncDownDeletionsCounterInitialized != -1)
  {
    +[_DKPerformSyncDownPeerDeletionsOperation _updateEventStatsWithTotal:transportType:];
  }

  [(_DKEventStatsCounter *)_updateEventStatsWithTotal_transportType__syncDownDeletionsTotalCounter incrementCountByNumber:a2];
  v5 = _updateEventStatsWithTotal_transportType__syncDownDeletionsTotalByTransportCounter;
  if (total == 1)
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

- (id)initWithParent:(void *)parent localStorage:(void *)storage transport:(void *)transport peer:(void *)peer policy:(void *)policy type:
{
  parentCopy = parent;
  storageCopy = storage;
  transportCopy = transport;
  peerCopy = peer;
  policyCopy = policy;
  if (self)
  {
    v22.receiver = self;
    v22.super_class = _DKPerformSyncDownPeerDeletionsOperation;
    v17 = objc_msgSendSuper2(&v22, sel_initWithParent_, a2, storageCopy, parentCopy);
    v18 = v17;
    if (v17)
    {
      objc_storeStrong(v17 + 37, parent);
      objc_storeStrong(v18 + 38, storage);
      objc_storeStrong(v18 + 39, transport);
      objc_storeStrong(v18 + 40, peer);
      objc_storeStrong(v18 + 41, policy);
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
    name = [*(v1 + 304) name];
    v6 = [v3 deletionsSyncHistoryForPeer:v4 transportName:name error:0];
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

- (void)performSyncDownPeerDeletionsWithDidPrewarm:(void *)prewarm orError:
{
  v42 = *MEMORY[0x1E69E9840];
  prewarmCopy = prewarm;
  if (self)
  {
    v6 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v6);

    if (prewarmCopy)
    {
      errors = [self errors];
      [errors addObject:prewarmCopy];
    }

    else
    {
      v8 = +[_CDLogging syncChannel];
      model4 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
      v10 = &stru_1F05B9908;
      v11 = "uesWithRequest:options:responseHandler:]";
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v32 = [objc_opt_class() description];
        [OUTLINED_FUNCTION_13_2() transportType];
        [OUTLINED_FUNCTION_5_5() me];
        identifier = [OUTLINED_FUNCTION_5_5() identifier];
        model = [OUTLINED_FUNCTION_5_5() model];
        if (model)
        {
          v18 = MEMORY[0x1E696AEC0];
          model2 = [OUTLINED_FUNCTION_5_5() model];
          v30 = [v18 stringWithFormat:@" (%@)", model2];
        }

        else
        {
          v30 = &stru_1F05B9908;
        }

        name = [OUTLINED_FUNCTION_13_2() name];
        v34 = 138544642;
        v35 = v32;
        v36 = 2082;
        OUTLINED_FUNCTION_14_2();
        v37 = identifier;
        v38 = v20;
        v39 = v30;
        v40 = v20;
        v41 = v21;
        OUTLINED_FUNCTION_15_0(&dword_191750000, v8, v22, "%{public}@: Performing deletions sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@", &v34);

        if (model)
        {
        }

        v11 = "[_DKSyncRapportContextStorage handleFetchContextValuesWithRequest:options:responseHandler:]" + 52;
      }

      if (a2 && [OUTLINED_FUNCTION_13_2() hasDeletionsFlagForPeer:self[39]])
      {
        date = [MEMORY[0x1E695DF00] date];
        [(_DKPerformSyncDownPeerDeletionsOperation *)self performSyncDownPeerDeletionsWithHighWaterMark:date orError:0];

        goto LABEL_10;
      }

      v12 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v33 = [objc_opt_class() description];
        [OUTLINED_FUNCTION_13_2() transportType];
        [OUTLINED_FUNCTION_5_5() me];
        identifier2 = [OUTLINED_FUNCTION_5_5() identifier];
        model3 = [OUTLINED_FUNCTION_5_5() model];
        v16 = v11;
        if (model3)
        {
          v23 = MEMORY[0x1E696AEC0];
          model4 = [OUTLINED_FUNCTION_5_5() model];
          v10 = [v23 stringWithFormat:@" (%@)", model4];
        }

        name2 = [OUTLINED_FUNCTION_13_2() name];
        v34 = *(v16 + 377);
        v35 = v33;
        v36 = 2082;
        OUTLINED_FUNCTION_14_2();
        v37 = identifier2;
        v38 = v25;
        v39 = v10;
        v40 = v25;
        v41 = v26;
        OUTLINED_FUNCTION_15_0(&dword_191750000, v12, v27, "%{public}@: Skipping fetching deletions sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ due to no changes to sync", &v34);

        if (model3)
        {
        }
      }
    }

    [self endOperation];
  }

LABEL_10:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)performSyncDownPeerDeletionsWithHighWaterMark:(void *)mark orError:
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a2;
  markCopy = mark;
  v8 = markCopy;
  if (self)
  {
    if (markCopy)
    {
      errors = [self errors];
      [errors addObject:v8];
    }

    else
    {
      if (v6)
      {
        distantPast = [MEMORY[0x1E695DF00] distantPast];
        v11 = [v6 isEqualToDate:distantPast];

        if ((v11 & 1) == 0)
        {
          objc_storeStrong((self + 352), a2);
          [(_DKPerformSyncDownPeerDeletionsOperation *)self performSyncDownPeerDeletionsWithPreviousUntilDate:?];
          goto LABEL_9;
        }
      }

      v12 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v27 = [objc_opt_class() description];
        transportType = [*(self + 304) transportType];
        v15 = "down from";
        if (transportType == 8)
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
        identifier = [OUTLINED_FUNCTION_19_3() identifier];
        model = [OUTLINED_FUNCTION_19_3() model];
        if (model)
        {
          v21 = MEMORY[0x1E696AEC0];
          model2 = [OUTLINED_FUNCTION_19_3() model];
          v17 = [v21 stringWithFormat:@" (%@)", model2];
        }

        name = [*(self + 304) name];
        v28 = 138544642;
        v29 = v27;
        v30 = 2082;
        v31 = v26;
        v32 = 2114;
        v33 = v25;
        v34 = 2114;
        v35 = identifier;
        v36 = 2114;
        v37 = v17;
        v38 = 2114;
        v39 = name;
        OUTLINED_FUNCTION_15_0(&dword_191750000, v12, v23, "%{public}@: Will not attempt deletions sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ because peer has not yet synced deletions", &v28);

        if (model)
        {
        }
      }

      [*(self + 304) setHasDeletionsFlag:0 forPeer:*(self + 312)];
    }

    [self endOperation];
  }

LABEL_9:

  v13 = *MEMORY[0x1E69E9840];
}

- (void)performSyncDownPeerDeletionsWithPreviousUntilDate:(uint64_t)date
{
  v130 = *MEMORY[0x1E69E9840];
  dk_localtimeString2 = a2;
  if (date)
  {
    v4 = +[_CDLogging syncChannel];
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
    v6 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    name = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    if (dk_localtimeString2)
    {
      if (v5)
      {
        dk_localtimeString2 = [OUTLINED_FUNCTION_17_3() description];
        transportType = [OUTLINED_FUNCTION_12_2() transportType];
        v43 = "down from";
        if (transportType == 8)
        {
          v43 = "up to";
        }

        dk_localtimeString3 = v43;
        [OUTLINED_FUNCTION_1_13() me];
        identifier = [OUTLINED_FUNCTION_1_13() identifier];
        model = [OUTLINED_FUNCTION_1_13() model];
        if (model)
        {
          v55 = MEMORY[0x1E696AEC0];
          model2 = [OUTLINED_FUNCTION_1_13() model];
          v6 = [v55 stringWithFormat:@" (%@)", model2];
        }

        else
        {
          v6 = &stru_1F05B9908;
        }

        name = [*(date + 304) name];
        dk_localtimeString = [(NSDate *)v110 dk_localtimeString];
        *buf = 138544898;
        v117 = dk_localtimeString2;
        v118 = 2082;
        v119 = dk_localtimeString3;
        OUTLINED_FUNCTION_7_2();
        OUTLINED_FUNCTION_22_1();
        v127 = name;
        v128 = 2112;
        v129 = v57;
        _os_log_debug_impl(&dword_191750000, v4, OS_LOG_TYPE_DEBUG, "%{public}@: Will attempt another deletions sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ since %@", buf, 0x48u);

        if (model)
        {
        }

        OUTLINED_FUNCTION_6_9();
      }

      distantPast = dk_localtimeString2;
      goto LABEL_5;
    }

    if (v5)
    {
      v110 = [objc_opt_class() description];
      transportType2 = [OUTLINED_FUNCTION_12_2() transportType];
      v50 = "down from";
      if (transportType2 == 8)
      {
        v50 = "up to";
      }

      dk_localtimeString3 = v50;
      if ([OUTLINED_FUNCTION_1_13() me])
      {
        v51 = @"pseudo ";
      }

      else
      {
        v51 = &stru_1F05B9908;
      }

      identifier2 = [OUTLINED_FUNCTION_1_13() identifier];
      model3 = [OUTLINED_FUNCTION_1_13() model];
      if (model3)
      {
        v72 = MEMORY[0x1E696AEC0];
        model4 = [*(date + 312) model];
        v101 = [v72 stringWithFormat:@" (%@)", model4];
      }

      else
      {
        v101 = &stru_1F05B9908;
      }

      name2 = [*(date + 304) name];
      *buf = 138544642;
      v117 = v110;
      v118 = 2082;
      v119 = dk_localtimeString3;
      v120 = 2114;
      v121 = v51;
      v122 = 2114;
      OUTLINED_FUNCTION_22_1();
      v127 = v74;
      OUTLINED_FUNCTION_15_0(&dword_191750000, v4, v75, "%{public}@: Will attempt deletions sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@", buf);

      if (model3)
      {
      }

      name = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
      v6 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    }

    if ([OUTLINED_FUNCTION_1_13() me])
    {
      v25 = 0;
    }

    else
    {
      v30 = v6;
      v31 = *(date + 296);
      v32 = *(date + name[515]);
      name3 = [*(date + v30[514]) name];
      v115 = 0;
      v34 = v31;
      v6 = v30;
      dk_localtimeString2 = 0;
      distantPast = [v34 lastSyncDownDeletionDateForPeer:v32 transportName:name3 error:&v115];
      v25 = v115;

      if (distantPast)
      {
        goto LABEL_23;
      }
    }

    distantPast = [MEMORY[0x1E695DF00] distantPast];
LABEL_23:
    if (v25)
    {
      v35 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        dk_localtimeString2 = [OUTLINED_FUNCTION_17_3() description];
        v63 = [OUTLINED_FUNCTION_1_13() me];
        v1012 = &stru_1F05B9908;
        v65 = @"pseudo ";
        if (!v63)
        {
          v65 = &stru_1F05B9908;
        }

        v108 = v65;
        name = [OUTLINED_FUNCTION_1_13() identifier];
        model5 = [OUTLINED_FUNCTION_5_5() model];
        if (model5)
        {
          v86 = MEMORY[0x1E696AEC0];
          model4 = [OUTLINED_FUNCTION_5_5() model];
          v1012 = [v86 stringWithFormat:@" (%@)", model4];
        }

        domain = [v25 domain];
        code = [v25 code];
        *buf = 138544898;
        v117 = dk_localtimeString2;
        v118 = 2114;
        v119 = v108;
        v120 = 2114;
        v121 = name;
        v122 = 2114;
        v123 = v1012;
        v124 = 2114;
        v125 = domain;
        v126 = 2048;
        v127 = code;
        v128 = 2112;
        v129 = v25;
        _os_log_debug_impl(&dword_191750000, v35, OS_LOG_TYPE_DEBUG, "%{public}@: Failed to find last sync down deletions bookmark from %{public}@peer %{public}@%{public}@: %{public}@:%lld (%@)", buf, 0x48u);

        if (model5)
        {
        }

        OUTLINED_FUNCTION_6_9();
      }

      errors = [date errors];
      [errors addObject:v25];
      goto LABEL_29;
    }

LABEL_5:
    errors = *(date + 352);
    v10 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v102 = [OUTLINED_FUNCTION_17_3() description];
      dk_localtimeString2 = [(NSDate *)distantPast dk_localtimeString];
      dk_localtimeString3 = [(NSDate *)errors dk_localtimeString];
      v38 = [OUTLINED_FUNCTION_1_13() me];
      v6 = &stru_1F05B9908;
      v39 = @"pseudo ";
      if (!v38)
      {
        v39 = &stru_1F05B9908;
      }

      v99 = v39;
      identifier3 = [OUTLINED_FUNCTION_1_13() identifier];
      model6 = [OUTLINED_FUNCTION_1_13() model];
      if (model6)
      {
        v46 = MEMORY[0x1E696AEC0];
        model7 = [OUTLINED_FUNCTION_1_13() model];
        v6 = [v46 stringWithFormat:@" (%@)", model7];
      }

      *buf = 138544642;
      name = v102;
      v117 = v102;
      v118 = 2114;
      v119 = dk_localtimeString2;
      OUTLINED_FUNCTION_7_2();
      v123 = v99;
      v124 = v47;
      v125 = identifier3;
      v126 = v47;
      v127 = v6;
      OUTLINED_FUNCTION_15_0(&dword_191750000, v10, v48, "%{public}@: Syncing down deletions with bookmark [%{public}@ ending %{public}@] from %{public}@peer %{public}@%{public}@", buf);
      if (model6)
      {
      }

      OUTLINED_FUNCTION_6_9();
    }

    [errors timeIntervalSinceReferenceDate];
    v12 = v11;
    [distantPast timeIntervalSinceReferenceDate];
    if (v12 - v13 <= [*(date + 320) minSyncWindowInSeconds])
    {
      v14 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v26 = [OUTLINED_FUNCTION_17_3() description];
        dk_localtimeString2 = [(NSDate *)distantPast dk_localtimeString];
        if ([OUTLINED_FUNCTION_1_13() me])
        {
          v27 = @"pseudo ";
        }

        else
        {
          v27 = &stru_1F05B9908;
        }

        identifier4 = [OUTLINED_FUNCTION_1_13() identifier];
        model8 = [OUTLINED_FUNCTION_1_13() model];
        if (model8)
        {
          v104 = identifier4;
          v67 = v27;
          v68 = dk_localtimeString2;
          v69 = v26;
          v70 = MEMORY[0x1E696AEC0];
          dk_localtimeString3 = [OUTLINED_FUNCTION_1_13() model];
          v71 = v70;
          v26 = v69;
          dk_localtimeString2 = v68;
          v27 = v67;
          identifier4 = v104;
          name = [v71 stringWithFormat:@" (%@)", dk_localtimeString3];
        }

        else
        {
          name = &stru_1F05B9908;
        }

        *buf = 138544386;
        v117 = v26;
        v118 = 2112;
        v119 = dk_localtimeString2;
        v120 = 2114;
        v121 = v27;
        v122 = 2114;
        v123 = identifier4;
        v124 = 2114;
        v125 = name;
        _os_log_debug_impl(&dword_191750000, v14, OS_LOG_TYPE_DEBUG, "%{public}@: Deletions bookmark %@ is up-to-date for deletions sync down for %{public}@peer %{public}@%{public}@", buf, 0x34u);
        if (model8)
        {
        }

        OUTLINED_FUNCTION_6_9();
      }
    }

    else
    {
      v14 = [*(date + 320) streamNamesToSyncWithDisabledFeatures:0];
      if ([v14 count])
      {
        v111 = dk_localtimeString2;
        v15 = v6;
        v16 = *(date + 360);
        if (!v16)
        {
          lastSyncDate = [*(date + 344) lastSyncDate];
          +[_DKPerformSyncDownPeerDeletionsOperation _updateEventStatsWithPreviousSyncDate:transportType:](_DKPerformSyncDownPeerDeletionsOperation, lastSyncDate, [*(date + v6[514]) transportType]);

          v16 = *(date + 360);
        }

        v18 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
        *(date + 360) = v16 + 1;
        v19 = +[_CDLogging syncChannel];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v107 = [objc_opt_class() description];
          dk_localtimeString4 = [(NSDate *)distantPast dk_localtimeString];
          dk_localtimeString5 = [(NSDate *)errors dk_localtimeString];
          v59 = [OUTLINED_FUNCTION_1_13() me];
          v60 = &stru_1F05B9908;
          if (v59)
          {
            v60 = @"pseudo ";
          }

          v97 = v60;
          identifier5 = [OUTLINED_FUNCTION_1_13() identifier];
          model9 = [OUTLINED_FUNCTION_1_13() model];
          if (model9)
          {
            v94 = dk_localtimeString4;
            v82 = MEMORY[0x1E696AEC0];
            model10 = [OUTLINED_FUNCTION_1_13() model];
            v83 = v82;
            dk_localtimeString4 = v94;
            v62 = [v83 stringWithFormat:@" (%@)", model10];
          }

          else
          {
            v62 = &stru_1F05B9908;
          }

          *buf = 138544642;
          v117 = v107;
          v118 = 2114;
          v119 = dk_localtimeString4;
          OUTLINED_FUNCTION_7_2();
          v123 = v97;
          v124 = v84;
          v125 = identifier5;
          v126 = v84;
          v127 = v62;
          OUTLINED_FUNCTION_15_0(&dword_191750000, v19, v85, "%{public}@: Fetching deletions with bookmark [%{public}@ ending %{public}@] from %{public}@peer %{public}@%{public}@", buf);
          if (model9)
          {
          }

          v18 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
        }

        v20 = *(date + v15[514]);
        v21 = *(date + v18[515]);
        syncBatchSizeInEvents = [*(date + 320) syncBatchSizeInEvents];
        v23 = *(date + 336);
        v112[0] = MEMORY[0x1E69E9820];
        v112[1] = 3221225472;
        v112[2] = __94___DKPerformSyncDownPeerDeletionsOperation_performSyncDownPeerDeletionsWithPreviousUntilDate___block_invoke;
        v112[3] = &unk_1E7368E50;
        v112[4] = date;
        distantPast = distantPast;
        v113 = distantPast;
        v114 = errors;
        v24 = errors;
        [v20 fetchDeletedEventIDsFromPeer:v21 sinceDate:distantPast streamNames:v14 limit:syncBatchSizeInEvents highPriority:v23 completion:v112];

        v25 = 0;
        dk_localtimeString2 = v111;
LABEL_32:

        goto LABEL_33;
      }

      v36 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        v109 = [OUTLINED_FUNCTION_17_3() description];
        v76 = v6;
        transportType3 = [OUTLINED_FUNCTION_12_2() transportType];
        v78 = "down from";
        if (transportType3 == 8)
        {
          v78 = "up to";
        }

        v105 = v78;
        [OUTLINED_FUNCTION_1_13() me];
        identifier6 = [OUTLINED_FUNCTION_1_13() identifier];
        model11 = [OUTLINED_FUNCTION_1_13() model];
        if (model11)
        {
          v89 = MEMORY[0x1E696AEC0];
          model7 = [OUTLINED_FUNCTION_1_13() model];
          v81 = [v89 stringWithFormat:@" (%@)", model7];
        }

        else
        {
          v81 = &stru_1F05B9908;
        }

        name4 = [*(date + v76[514]) name];
        *buf = 138544642;
        v117 = v109;
        v118 = 2082;
        v119 = v105;
        OUTLINED_FUNCTION_7_2();
        v123 = identifier6;
        v124 = v91;
        v125 = v81;
        v126 = v91;
        v127 = v92;
        OUTLINED_FUNCTION_15_0(&dword_191750000, v36, v93, "%{public}@: Skipped fetching deletions sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ due to no streams to sync", buf);

        if (model11)
        {
        }

        name = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
        dk_localtimeString2 = v110;
      }
    }

    v25 = 0;
LABEL_29:

    if ([OUTLINED_FUNCTION_12_2() transportType] != 1)
    {
      [OUTLINED_FUNCTION_12_2() setHasDeletionsFlag:0 forPeer:*(date + name[515])];
    }

    [date endOperation];
    goto LABEL_32;
  }

LABEL_33:

  v37 = *MEMORY[0x1E69E9840];
}

- (void)handleFetchedDeletedEventIDs:(void *)ds startDate:(void *)date endDate:(void *)endDate untilDate:
{
  v198 = *MEMORY[0x1E69E9840];
  v9 = a2;
  dsCopy = ds;
  dateCopy = date;
  endDateCopy = endDate;
  if (self)
  {
    v12 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v12);

    if (!endDateCopy)
    {
      endDateCopy = *(self + 352);
    }

    v13 = 0x1E7366000uLL;
    v14 = +[_CDLogging syncChannel];
    v15 = 0x1E696A000;
    v174 = dsCopy;
    v175 = v9;
    v177 = endDateCopy;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_16_1();
      v167 = [OUTLINED_FUNCTION_8_4() numberWithUnsignedInteger:?];
      dk_localtimeString = [(NSDate *)dsCopy dk_localtimeString];
      dk_localtimeString2 = [(NSDate *)dateCopy dk_localtimeString];
      v80 = [OUTLINED_FUNCTION_21_2() isEqualToDate:?];
      if (v80)
      {
        dk_localtimeString3 = @"ending";
      }

      else
      {
        dk_localtimeString3 = [(NSDate *)endDateCopy dk_localtimeString];
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

      identifier = [OUTLINED_FUNCTION_2_9() identifier];
      model = [OUTLINED_FUNCTION_2_9() model];
      if (model)
      {
        v85 = MEMORY[0x1E696AEC0];
        [*(self + 312) model];
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_20_2();
        v81 = [v85 stringWithFormat:@" (%@)"];
      }

      *buf = 138545154;
      v183 = v171;
      OUTLINED_FUNCTION_9_3();
      v185 = v167;
      v186 = 2114;
      v187 = dk_localtimeString;
      v188 = 2114;
      v189 = dk_localtimeString2;
      v190 = 2114;
      v191 = dk_localtimeString3;
      v192 = 2114;
      v193 = v82;
      OUTLINED_FUNCTION_18_2();
      *(v86 + 74) = v81;
      _os_log_debug_impl(&dword_191750000, v14, OS_LOG_TYPE_DEBUG, "%{public}@: Fetched %@ deleted event ids with bookmark [%{public}@ ending %{public}@] up through %{public}@ from %{public}@peer %{public}@%{public}@", buf, 0x52u);
      if (model)
      {
      }

      if ((v80 & 1) == 0)
      {
      }

      dsCopy = v174;
      v9 = v175;
      endDateCopy = v177;
      v13 = 0x1E7366000;
      v15 = 0x1E696A000;
    }

    v16 = [v9 count];
    syncChannel = [*(v13 + 648) syncChannel];
    v18 = syncChannel;
    if (v16)
    {
      if (!os_log_type_enabled(syncChannel, OS_LOG_TYPE_INFO))
      {
        goto LABEL_21;
      }

      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_16_1();
      v159 = [OUTLINED_FUNCTION_8_4() numberWithUnsignedInteger:?];
      dk_localtimeString4 = [(NSDate *)dsCopy dk_localtimeString];
      v27 = OUTLINED_FUNCTION_10_5(dk_localtimeString4, v20, v21, v22, v23, v24, v25, v26, v144, v145, v146, v148, model7, dk_localtimeString6, dk_localtimeString5, v159, v167, v171, v174, v175, dateCopy);
      dk_localtimeString5 = [(NSDate *)v27 dk_localtimeString];
      v28 = [OUTLINED_FUNCTION_21_2() isEqualToDate:?];
      if (v28)
      {
        dk_localtimeString6 = @"ending";
      }

      else
      {
        dk_localtimeString6 = [(NSDate *)endDateCopy dk_localtimeString];
      }

      [*(self + 304) transportType];
      v38 = &stru_1F05B9908;
      [OUTLINED_FUNCTION_4_9() me];
      identifier2 = [OUTLINED_FUNCTION_4_9() identifier];
      model2 = [OUTLINED_FUNCTION_4_9() model];
      if (model2)
      {
        v41 = MEMORY[0x1E696AEC0];
        [OUTLINED_FUNCTION_4_9() model];
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_20_2();
        v38 = [v41 stringWithFormat:@" (%@)"];
      }

      name = [*(self + 304) name];
      *buf = 138545666;
      v183 = v172;
      OUTLINED_FUNCTION_9_3();
      OUTLINED_FUNCTION_0_14();
      OUTLINED_FUNCTION_3_9();
      _os_log_impl(&dword_191750000, v18, OS_LOG_TYPE_INFO, "%{public}@: Fetched %@ deleted event ids with bookmark [%{public}@ ending %{public}@] up through %{public}@ doing sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@", buf, 0x66u);
    }

    else
    {
      if (!os_log_type_enabled(syncChannel, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_21;
      }

      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_16_1();
      v161 = [OUTLINED_FUNCTION_8_4() numberWithUnsignedInteger:?];
      dk_localtimeString7 = [(NSDate *)dsCopy dk_localtimeString];
      v37 = OUTLINED_FUNCTION_10_5(dk_localtimeString7, v30, v31, v32, v33, v34, v35, v36, v144, v145, v146, v148, model7, dk_localtimeString6, dk_localtimeString5, v161, v167, v171, v174, v175, dateCopy);
      dk_localtimeString5 = [(NSDate *)v37 dk_localtimeString];
      v28 = [OUTLINED_FUNCTION_21_2() isEqualToDate:?];
      if (v28)
      {
        dk_localtimeString6 = @"ending";
      }

      else
      {
        dk_localtimeString6 = [(NSDate *)endDateCopy dk_localtimeString];
      }

      [*(self + 304) transportType];
      v38 = &stru_1F05B9908;
      [OUTLINED_FUNCTION_4_9() me];
      identifier2 = [OUTLINED_FUNCTION_4_9() identifier];
      model2 = [OUTLINED_FUNCTION_4_9() model];
      if (model2)
      {
        v123 = MEMORY[0x1E696AEC0];
        [OUTLINED_FUNCTION_4_9() model];
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_20_2();
        v38 = [v123 stringWithFormat:@" (%@)"];
      }

      name = [*(self + 304) name];
      *buf = 138545666;
      v183 = v172;
      OUTLINED_FUNCTION_9_3();
      OUTLINED_FUNCTION_0_14();
      OUTLINED_FUNCTION_3_9();
      _os_log_debug_impl(&dword_191750000, v18, OS_LOG_TYPE_DEBUG, "%{public}@: Fetched %@ deleted event ids with bookmark [%{public}@ ending %{public}@] up through %{public}@ doing sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@", buf, 0x66u);
    }

    if (model2)
    {
    }

    dsCopy = v174;
    v9 = v175;
    endDateCopy = v177;
    if ((v28 & 1) == 0)
    {
    }

    v13 = 0x1E7366000uLL;
    v15 = 0x1E696A000uLL;
LABEL_21:

    v43 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    sourceDeviceID = [OUTLINED_FUNCTION_2_9() sourceDeviceID];
    v45 = sourceDeviceID;
    if (sourceDeviceID)
    {
      v173 = sourceDeviceID;
      errors3 = +[_DKSyncPeerStatusTracker sharedInstance];
      date = [MEMORY[0x1E695DF00] date];
      [errors3 setLastSuccessfulActivityDate:date onTransport:objc_msgSend(OUTLINED_FUNCTION_11_4() forPeer:{"transportType"), *(self + 312)}];

      if ([v9 count])
      {
        *(self + 368) = 1;
        v48 = v13;
        v49 = [v9 count];
        [OUTLINED_FUNCTION_11_4() transportType];
        v50 = OUTLINED_FUNCTION_8_4();
        v51 = v49;
        v13 = v48;
        [(_DKPerformSyncDownPeerDeletionsOperation *)v50 _updateEventStatsWithTotal:v51 transportType:v52];
        v53 = *(self + 296);
        v181 = 0;
        v54 = [v53 deleteEventsWithEventIDs:v9 error:&v181];
        v55 = v181;
        syncChannel2 = [*(v48 + 648) syncChannel];
        errors = syncChannel2;
        if (v54)
        {
          if (os_log_type_enabled(syncChannel2, OS_LOG_TYPE_DEBUG))
          {
            v151 = [objc_opt_class() description];
            v58 = *(v15 + 3480);
            [v175 count];
            v162 = [OUTLINED_FUNCTION_8_4() numberWithUnsignedInteger:?];
            dk_localtimeString8 = [(NSDate *)v174 dk_localtimeString];
            v67 = OUTLINED_FUNCTION_10_5(dk_localtimeString8, v60, v61, v62, v63, v64, v65, v66, v144, v145, v146, v148, v151, dk_localtimeString6, dk_localtimeString5, v162, v167, v173, v174, v175, dateCopy);
            dk_localtimeString9 = [(NSDate *)v67 dk_localtimeString];
            v149 = [v58 isEqualToDate:v177];
            if (v149)
            {
              dk_localtimeString10 = @"ending";
            }

            else
            {
              dk_localtimeString10 = [(NSDate *)v177 dk_localtimeString];
            }

            v147 = &stru_1F05B9908;
            if ([OUTLINED_FUNCTION_2_9() me])
            {
              v125 = @"pseudo ";
            }

            else
            {
              v125 = &stru_1F05B9908;
            }

            identifier3 = [OUTLINED_FUNCTION_2_9() identifier];
            model3 = [OUTLINED_FUNCTION_2_9() model];
            if (model3)
            {
              v137 = MEMORY[0x1E696AEC0];
              model4 = [*(self + 312) model];
              v147 = [v137 stringWithFormat:@" (%@)", model4];
            }

            *buf = 138545154;
            v183 = model7;
            OUTLINED_FUNCTION_9_3();
            OUTLINED_FUNCTION_0_14();
            v192 = v138;
            v193 = v125;
            OUTLINED_FUNCTION_18_2();
            *(v139 + 74) = v147;
            OUTLINED_FUNCTION_23_1();
            _os_log_debug_impl(v140, v141, OS_LOG_TYPE_DEBUG, v142, v143, 0x52u);
            if (model3)
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
          if (os_log_type_enabled(syncChannel2, OS_LOG_TYPE_ERROR))
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

            identifier4 = [OUTLINED_FUNCTION_2_9() identifier];
            model5 = [OUTLINED_FUNCTION_2_9() model];
            if (model5)
            {
              v128 = MEMORY[0x1E696AEC0];
              dk_localtimeString6 = [*(self + 312) model];
              v152 = [v128 stringWithFormat:@" (%@)", dk_localtimeString6];
            }

            else
            {
              v152 = &stru_1F05B9908;
            }

            domain = [v55 domain];
            [v55 code];
            *buf = 138545154;
            v183 = v166;
            OUTLINED_FUNCTION_9_3();
            v185 = v130;
            v186 = 2114;
            v187 = v112;
            v188 = 2114;
            v189 = identifier4;
            v190 = 2114;
            v191 = v152;
            v192 = 2114;
            v193 = domain;
            v194 = 2048;
            v195 = v131;
            v196 = v132;
            v197 = v55;
            OUTLINED_FUNCTION_23_1();
            _os_log_error_impl(v133, v134, OS_LOG_TYPE_ERROR, v135, v136, 0x52u);

            if (model5)
            {
            }

            v43 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
            v13 = v48;
          }

          errors = [self errors];
          [errors addObject:v55];
        }

        v9 = v175;
        endDateCopy = v177;
      }

      if ([OUTLINED_FUNCTION_2_9() me])
      {
        v45 = v173;
        dsCopy = v174;
LABEL_76:

        if ([OUTLINED_FUNCTION_11_4() transportType] != 1)
        {
          [OUTLINED_FUNCTION_11_4() setHasDeletionsFlag:0 forPeer:*(self + v43[515])];
        }

        [self endOperation];
        goto LABEL_79;
      }

      v70 = *(self + 296);
      v71 = v13;
      v72 = *(self + v43[515]);
      name2 = [OUTLINED_FUNCTION_11_4() name];
      v180 = 0;
      dsCopy = v174;
      [OUTLINED_FUNCTION_21_2() setLastSyncDownDeletionDate:? previousDate:? forPeer:? transportName:? error:?];
      v69 = 0;

      syncChannel3 = [*(v71 + 648) syncChannel];
      v75 = syncChannel3;
      if (v69)
      {
        if (os_log_type_enabled(syncChannel3, OS_LOG_TYPE_ERROR))
        {
          v115 = [objc_opt_class() description];
          domain2 = [(__CFString *)v69 domain];
          code = [(__CFString *)v69 code];
          *buf = 138544130;
          v183 = v115;
          v184 = 2114;
          v185 = domain2;
          v186 = 2048;
          v187 = code;
          v188 = 2112;
          v189 = v69;
          OUTLINED_FUNCTION_23_1();
          _os_log_error_impl(v118, v119, OS_LOG_TYPE_ERROR, v120, v121, 0x2Au);
        }

        errors2 = [self errors];
        [errors2 addObject:v69];

        v9 = v175;
      }

      else
      {
        if (os_log_type_enabled(syncChannel3, OS_LOG_TYPE_INFO))
        {
          v169 = [objc_opt_class() description];
          dk_localtimeString11 = [(NSDate *)v174 dk_localtimeString];
          dk_localtimeString12 = [(NSDate *)dateCopy dk_localtimeString];
          v154 = [dateCopy isEqualToDate:v177];
          if (v154)
          {
            dk_localtimeString13 = @"ending";
          }

          else
          {
            dk_localtimeString13 = [(NSDate *)v177 dk_localtimeString];
          }

          v150 = &stru_1F05B9908;
          if ([OUTLINED_FUNCTION_2_9() me])
          {
            v88 = @"pseudo ";
          }

          else
          {
            v88 = &stru_1F05B9908;
          }

          identifier5 = [OUTLINED_FUNCTION_2_9() identifier];
          model6 = [OUTLINED_FUNCTION_2_9() model];
          v91 = v43;
          v92 = model6;
          if (model6)
          {
            v93 = MEMORY[0x1E696AEC0];
            model7 = [*(self + v91[515]) model];
            v94 = v93;
            dsCopy = v174;
            v150 = [v94 stringWithFormat:@" (%@)", model7];
          }

          *buf = 138544898;
          v183 = v169;
          v184 = 2114;
          v185 = dk_localtimeString11;
          v186 = 2114;
          v187 = dk_localtimeString12;
          v188 = 2114;
          v189 = dk_localtimeString13;
          v190 = 2114;
          v191 = v88;
          v192 = 2114;
          v193 = identifier5;
          v194 = 2114;
          v195 = v150;
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

        v106 = *(self + 360);
        if (v106 >= [*(self + 320) maxBatchesPerSync])
        {
          v9 = v175;
        }

        else
        {
          [*(self + 352) timeIntervalSinceReferenceDate];
          v108 = v107;
          [v177 timeIntervalSinceReferenceDate];
          v9 = v175;
          if (v108 > v109)
          {
            v178[0] = MEMORY[0x1E69E9820];
            v178[1] = 3221225472;
            v178[2] = __101___DKPerformSyncDownPeerDeletionsOperation_handleFetchedDeletedEventIDs_startDate_endDate_untilDate___block_invoke;
            v178[3] = &unk_1E7367710;
            v178[4] = self;
            v179 = v177;
            [_DKSyncSerializer performAsyncBlock:v178];

            endDateCopy = v177;
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
      syncChannel4 = [*(v13 + 648) syncChannel];
      if (os_log_type_enabled(syncChannel4, OS_LOG_TYPE_ERROR))
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

        identifier6 = [OUTLINED_FUNCTION_4_9() identifier];
        model8 = [OUTLINED_FUNCTION_4_9() model];
        if (model8)
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
        v189 = identifier6;
        v190 = 2114;
        v191 = v98;
        _os_log_error_impl(&dword_191750000, syncChannel4, OS_LOG_TYPE_ERROR, "%{public}@: Unable to delete %@ events, missing source device id in peer %{public}@peer %{public}@%{public}@", buf, 0x34u);
        if (model8)
        {
        }

        dsCopy = v174;
        v9 = v175;
        v43 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
        v45 = 0;
      }

      errors3 = [self errors];
      v69 = +[_DKSyncErrors internalFailure];
      [errors3 addObject:v69];
    }

    endDateCopy = v177;
    goto LABEL_76;
  }

LABEL_80:

  v110 = *MEMORY[0x1E69E9840];
}

@end