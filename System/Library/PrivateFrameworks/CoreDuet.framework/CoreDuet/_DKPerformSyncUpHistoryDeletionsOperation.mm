@interface _DKPerformSyncUpHistoryDeletionsOperation
+ (void)_updateEventStatsWithPreviousSyncDate:(uint64_t)date transportType:;
+ (void)_updateEventStatsWithTotal:(uint64_t)total transportType:;
- (id)initWithParent:(void *)parent sibling:(void *)sibling localStorage:(void *)storage transport:(void *)transport peer:(void *)peer policy:(void *)policy type:;
- (uint64_t)existsAdditionsSyncHistory;
- (void)endOperation;
- (void)handleUpdateStorageWithStartDate:(void *)date endDate:(uint64_t)endDate deletedEventIDsCount:(void *)count orError:;
- (void)main;
- (void)performSyncUpHistoryDeletions;
- (void)performSyncUpHistoryDeletionsWithDeletionsHighWaterMark:(void *)mark orError:;
- (void)performSyncUpHistoryDeletionsWithPreviousHighWaterMark:(char *)mark;
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

+ (void)_updateEventStatsWithPreviousSyncDate:(uint64_t)date transportType:
{
  v11 = a2;
  objc_opt_self();
  if (_updateEventStatsWithPreviousSyncDate_transportType__syncCadenceInitialized_1 != -1)
  {
    +[_DKPerformSyncUpHistoryDeletionsOperation _updateEventStatsWithPreviousSyncDate:transportType:];
  }

  if (v11)
  {
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    v5 = [v11 isEqualToDate:distantPast];

    if ((v5 & 1) == 0)
    {
      v6 = _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceByTransportCounter_1;
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

  v9 = _updateEventStatsWithPreviousSyncDate_transportType__syncCadenceCounter_1;
  date2 = [MEMORY[0x1E695DF00] date];
  [(_DKEventStatsTimerCounter *)v9 addTimingWithStartDate:v11 endDate:date2];
}

+ (void)_updateEventStatsWithTotal:(uint64_t)total transportType:
{
  objc_opt_self();
  if (_updateEventStatsWithTotal_transportType__syncUpHistoryDeletionsCounterInitialized != -1)
  {
    +[_DKPerformSyncUpHistoryDeletionsOperation _updateEventStatsWithTotal:transportType:];
  }

  [(_DKEventStatsCounter *)_updateEventStatsWithTotal_transportType__syncUpHistoryDeletionsTotalCounter incrementCountByNumber:a2];
  v5 = _updateEventStatsWithTotal_transportType__syncUpHistoryDeletionsTotalByTransportCounter;
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
  v2.super_class = _DKPerformSyncUpHistoryDeletionsOperation;
  [(_DKSyncCompositeOperation *)&v2 endOperation];
}

- (id)initWithParent:(void *)parent sibling:(void *)sibling localStorage:(void *)storage transport:(void *)transport peer:(void *)peer policy:(void *)policy type:
{
  parentCopy = parent;
  siblingCopy = sibling;
  storageCopy = storage;
  transportCopy = transport;
  peerCopy = peer;
  policyCopy = policy;
  if (self)
  {
    v27.receiver = self;
    v27.super_class = _DKPerformSyncUpHistoryDeletionsOperation;
    v18 = objc_msgSendSuper2(&v27, sel_initWithParent_, a2, transportCopy, storageCopy, siblingCopy, parentCopy);
    v19 = v18;
    if (v18)
    {
      objc_storeStrong(v18 + 37, parent);
      objc_storeStrong(v19 + 38, sibling);
      objc_storeStrong(v19 + 39, storage);
      objc_storeStrong(v19 + 40, transport);
      objc_storeStrong(v19 + 41, peer);
      objc_storeStrong(v19 + 42, policy);
      date = [MEMORY[0x1E695DF00] date];
      v21 = v19[44];
      v19[44] = date;
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
  if (!self)
  {
    goto LABEL_10;
  }

  selfCopy = self;
  v3 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [*(selfCopy + 328) streamNamesToSyncWithDisabledFeatures:0];
  v5 = *(selfCopy + 344);
  *(selfCopy + 344) = v4;

  if (![*(selfCopy + 344) count])
  {
    v19 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v21 = [objc_opt_class() description];
      if ([*(selfCopy + 312) transportType] == 8)
      {
        v22 = "up to";
      }

      else
      {
        v22 = "down from";
      }

      v103 = &stru_1F05B9908;
      if ([OUTLINED_FUNCTION_16_4() me])
      {
        v24 = @"pseudo ";
      }

      else
      {
        v24 = &stru_1F05B9908;
      }

      identifier = [OUTLINED_FUNCTION_16_4() identifier];
      model = [OUTLINED_FUNCTION_16_4() model];
      if (model)
      {
        v49 = MEMORY[0x1E696AEC0];
        model2 = [OUTLINED_FUNCTION_16_4() model];
        v103 = [v49 stringWithFormat:@" (%@)", model2];
      }

      name = [*(selfCopy + 312) name];
      *buf = 138544642;
      v124 = v21;
      v125 = 2082;
      v126 = v22;
      v127 = 2114;
      v128 = v24;
      v129 = 2114;
      v130 = identifier;
      v131 = 2114;
      v132 = v103;
      v133 = 2114;
      v134 = name;
      OUTLINED_FUNCTION_15_0(&dword_191750000, v19, v51, "%{public}@: Skippped deletions history sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ due to no streams to sync", buf);

      if (model)
      {
      }
    }

    goto LABEL_9;
  }

  v6 = *(selfCopy + 304);
  v7 = *(selfCopy + 320);
  [OUTLINED_FUNCTION_8_9() name];
  objc_claimAutoreleasedReturnValue();
  v8 = [OUTLINED_FUNCTION_20_5() deletionsSyncHistoryForPeer:? transportName:? error:?];
  v9 = *(selfCopy + 360);
  *(selfCopy + 360) = v8;

  v10 = objc_opt_class();
  if (![_DKSync2Coordinator canPerformSyncOperationWithClass:v10 syncType:*(selfCopy + 336) history:*(selfCopy + 360) transport:*(selfCopy + 312) peer:*(selfCopy + 320) policy:*(selfCopy + 328)])
  {
LABEL_9:
    [selfCopy endOperation];
    goto LABEL_10;
  }

  existsAdditionsSyncHistory = [(_DKPerformSyncUpHistoryDeletionsOperation *)selfCopy existsAdditionsSyncHistory];
  v13 = +[_CDLogging syncChannel];
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
  if (existsAdditionsSyncHistory)
  {
    if (v14)
    {
      v105 = [objc_opt_class() description];
      name2 = [OUTLINED_FUNCTION_8_9() name];
      v52 = [OUTLINED_FUNCTION_2_15() me];
      v53 = &stru_1F05B9908;
      v54 = @"pseudo ";
      if (!v52)
      {
        v54 = &stru_1F05B9908;
      }

      v91 = v54;
      identifier2 = [OUTLINED_FUNCTION_2_15() identifier];
      model3 = [OUTLINED_FUNCTION_2_15() model];
      if (model3)
      {
        v60 = MEMORY[0x1E696AEC0];
        model4 = [OUTLINED_FUNCTION_2_15() model];
        v83 = model4;
        v53 = [v60 stringWithFormat:@" (%@)"];
      }

      OUTLINED_FUNCTION_7_8();
      v128 = v91;
      v129 = v61;
      v130 = identifier2;
      v131 = v61;
      v132 = v53;
      OUTLINED_FUNCTION_21_6(&dword_191750000, v62, v63, "%{public}@: Peforming deletions history sync up on transport %{public}@ for %{public}@peer %{public}@%{public}@", v64, v65, v66, v67, v83, v84, v85, model4, v91, identifier2, name2, v105, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, buf[0]);
      if (model3)
      {
      }
    }

    v15 = *(selfCopy + 328);
    v16 = *(selfCopy + 336);
    [*(selfCopy + 360) lastSyncDate];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_20_5() highPriorityForSyncUpWithSyncType:? lastSyncDate:?];

    OUTLINED_FUNCTION_8_9();
    v17 = *(selfCopy + 320);
    OUTLINED_FUNCTION_3_17();
    [v18 fetchDeletionsHighWaterMarkWithPeer:? highPriority:? completion:?];
  }

  else
  {
    if (v14)
    {
      v106 = [objc_opt_class() description];
      name3 = [OUTLINED_FUNCTION_8_9() name];
      v56 = &stru_1F05B9908;
      if ([OUTLINED_FUNCTION_2_15() me])
      {
        v57 = @"pseudo ";
      }

      else
      {
        v57 = &stru_1F05B9908;
      }

      identifier3 = [OUTLINED_FUNCTION_2_15() identifier];
      model5 = [OUTLINED_FUNCTION_2_15() model];
      if (model5)
      {
        v68 = MEMORY[0x1E696AEC0];
        model6 = [OUTLINED_FUNCTION_2_15() model];
        v83 = model6;
        v56 = [v68 stringWithFormat:@" (%@)"];
      }

      OUTLINED_FUNCTION_7_8();
      v128 = v57;
      v129 = v69;
      v130 = identifier3;
      v131 = v69;
      v132 = v56;
      OUTLINED_FUNCTION_21_6(&dword_191750000, v70, v71, "%{public}@: Skipping deletions history sync up on transport %{public}@ for %{public}@peer %{public}@%{public}@ due to no previous additions", v72, v73, v74, v75, v83, v84, v85, model4, v90, model6, name3, v106, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, buf[0]);
      if (model5)
      {
      }
    }

    distantPast = [MEMORY[0x1E695DF00] distantPast];
    v28 = *(selfCopy + 352);
    sourceDeviceID = [OUTLINED_FUNCTION_2_15() sourceDeviceID];
    v30 = [_DKSyncMetadataStorage bookmarkStreamNameWithSourceDeviceID:sourceDeviceID];

    name4 = [OUTLINED_FUNCTION_8_9() name];
    v32 = distantPast;
    v104 = v30;
    v33 = [_DKSyncMetadataStorage eventFromStartDate:distantPast endDate:v28 bookmarkStreamName:v30 transportName:name4];

    v34 = *(selfCopy + 312);
    v98 = v33;
    v122 = v33;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v122 count:1];
    v115 = MEMORY[0x1E69E9820];
    v116 = 3221225472;
    v117 = __74___DKPerformSyncUpHistoryDeletionsOperation_performSyncUpHistoryDeletions__block_invoke;
    v118 = &unk_1E7367C28;
    v119 = selfCopy;
    v36 = v32;
    v120 = v36;
    v37 = v28;
    v121 = v37;
    [v34 updateStorageWithAddedEvents:v35 deletedEventIDs:0 highPriority:0 completion:&v115];

    v38 = *(selfCopy + 304);
    v39 = *(selfCopy + 320);
    name5 = [OUTLINED_FUNCTION_8_9() name];
    v114 = 0;
    [v38 setLastSyncDownDeletionDate:v37 previousDate:v36 forPeer:v39 transportName:name5 error:&v114];
    v41 = v114;

    v42 = +[_CDLogging syncChannel];
    v43 = v42;
    if (v41)
    {
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v44 = [objc_opt_class() description];
        dk_localtimeString = [(NSDate *)v36 dk_localtimeString];
        dk_localtimeString2 = [(NSDate *)v37 dk_localtimeString];
        domain = [(__CFString *)v41 domain];
        code = [(__CFString *)v41 code];
        *buf = 138544642;
        v124 = v44;
        v125 = 2114;
        v126 = dk_localtimeString;
        v127 = 2114;
        v128 = dk_localtimeString2;
        v129 = 2114;
        v130 = domain;
        v131 = 2048;
        v132 = code;
        v133 = 2112;
        v134 = v41;
        _os_log_error_impl(&dword_191750000, v43, OS_LOG_TYPE_ERROR, "%{public}@: Failed while fast forwarding local bookmark [%{public}@ ending %{public}@]: %{public}@:%lld (%@)", buf, 0x3Eu);
      }
    }

    else if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      v97 = [objc_opt_class() description];
      dk_localtimeString3 = [(NSDate *)v36 dk_localtimeString];
      dk_localtimeString4 = [(NSDate *)v37 dk_localtimeString];
      v76 = [OUTLINED_FUNCTION_2_15() me];
      selfCopy = &stru_1F05B9908;
      v78 = @"pseudo ";
      if (!v76)
      {
        v78 = &stru_1F05B9908;
      }

      v86 = v78;
      identifier4 = [OUTLINED_FUNCTION_2_15() identifier];
      model7 = [OUTLINED_FUNCTION_2_15() model];
      if (model7)
      {
        v82 = MEMORY[0x1E696AEC0];
        selfCopy = [OUTLINED_FUNCTION_2_15() model];
        selfCopy = [v82 stringWithFormat:@" (%@)", selfCopy];
      }

      *buf = 138544642;
      v124 = v97;
      v125 = 2114;
      v126 = dk_localtimeString3;
      v127 = 2114;
      v128 = dk_localtimeString4;
      v129 = 2114;
      v130 = v86;
      v131 = 2114;
      v132 = identifier4;
      v133 = 2114;
      v134 = selfCopy;
      OUTLINED_FUNCTION_15_0(&dword_191750000, v43, v80, "%{public}@: Successfully fast forwarded local bookmark [%{public}@ ending %{public}@] for %{public}@peer %{public}@%{public}@", buf);
      if (model7)
      {
      }
    }
  }

LABEL_10:
  v20 = *MEMORY[0x1E69E9840];
}

- (uint64_t)existsAdditionsSyncHistory
{
  if (!self)
  {
    return 0;
  }

  history = [(_DKPerformSyncUpHistoryAdditionsOperation *)*(self + 296) history];
  if (!history)
  {
    v4 = *(self + 304);
    v5 = *(self + 320);
    name = [*(self + 312) name];
    history = [v4 additionsSyncHistoryForPeer:v5 transportName:name error:0];
  }

  lastSyncDate = [history lastSyncDate];
  if (lastSyncDate)
  {
    lastSyncDate2 = [history lastSyncDate];
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    v10 = [lastSyncDate2 isEqualToDate:distantPast];

    v11 = v10 ^ 1u;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)performSyncUpHistoryDeletionsWithDeletionsHighWaterMark:(void *)mark orError:
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  markCopy = mark;
  if (self)
  {
    if (v5)
    {
      [(_DKPerformSyncUpHistoryDeletionsOperation *)self performSyncUpHistoryDeletionsWithPreviousHighWaterMark:v5];
    }

    else
    {
      errors = +[_CDLogging syncChannel];
      v8 = os_log_type_enabled(errors, OS_LOG_TYPE_DEBUG);
      if (markCopy)
      {
        if (v8)
        {
          v26 = [objc_opt_class() description];
          name = [*(self + 312) name];
          v11 = &stru_1F05B9908;
          if ([OUTLINED_FUNCTION_20_6() me])
          {
            v12 = @"pseudo ";
          }

          else
          {
            v12 = &stru_1F05B9908;
          }

          identifier = [OUTLINED_FUNCTION_20_6() identifier];
          model = [OUTLINED_FUNCTION_20_6() model];
          if (model)
          {
            v20 = MEMORY[0x1E696AEC0];
            model2 = [OUTLINED_FUNCTION_20_6() model];
            v11 = [v20 stringWithFormat:@" (%@)", model2];
          }

          domain = [markCopy domain];
          [markCopy code];
          *buf = 138545154;
          v29 = v26;
          OUTLINED_FUNCTION_17_7();
          v30 = v12;
          OUTLINED_FUNCTION_18_5();
          v31 = v22;
          v32 = domain;
          v33 = 2048;
          v34 = v23;
          v35 = 2112;
          v36 = markCopy;
          _os_log_debug_impl(&dword_191750000, errors, OS_LOG_TYPE_DEBUG, "%{public}@: Skipping deletions history sync up on transport %{public}@ for %{public}@peer %{public}@%{public}@: %{public}@:%lld (%@)", buf, 0x52u);

          if (model)
          {
          }
        }

        errors = [self errors];
        [errors addObject:markCopy];
      }

      else if (v8)
      {
        v27 = [objc_opt_class() description];
        name2 = [*(self + 312) name];
        v16 = &stru_1F05B9908;
        if ([OUTLINED_FUNCTION_15_6() me])
        {
          v17 = @"pseudo ";
        }

        else
        {
          v17 = &stru_1F05B9908;
        }

        identifier2 = [OUTLINED_FUNCTION_15_6() identifier];
        model3 = [OUTLINED_FUNCTION_15_6() model];
        if (model3)
        {
          v24 = MEMORY[0x1E696AEC0];
          model2 = [OUTLINED_FUNCTION_15_6() model];
          v16 = [v24 stringWithFormat:@" (%@)", model2];
        }

        *buf = 138544386;
        v29 = v27;
        OUTLINED_FUNCTION_17_7();
        v30 = v17;
        OUTLINED_FUNCTION_18_5();
        _os_log_debug_impl(&dword_191750000, errors, OS_LOG_TYPE_DEBUG, "%{public}@: Skipping deletions history sync up on transport %{public}@ for %{public}@peer %{public}@%{public}@ due to missing high water mark", buf, 0x34u);
        if (model3)
        {
        }
      }

      [self endOperation];
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)performSyncUpHistoryDeletionsWithPreviousHighWaterMark:(char *)mark
{
  v213 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (mark)
  {
    v4 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v4);

    v5 = +[_CDLogging syncChannel];
    v6 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    model2 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    v8 = &stru_1F05B9908;
    v9 = 0x1E696A000uLL;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v169 = v3;
      v82 = [objc_opt_class() description];
      name = [*(mark + 39) name];
      if ([OUTLINED_FUNCTION_14_6() me])
      {
        v8 = @"pseudo ";
      }

      identifier = [OUTLINED_FUNCTION_14_6() identifier];
      model = [OUTLINED_FUNCTION_14_6() model];
      markCopy = mark;
      if (model)
      {
        v106 = MEMORY[0x1E696AEC0];
        model2 = [OUTLINED_FUNCTION_14_6() model];
        v163 = model2;
        v86 = [v106 stringWithFormat:@" (%@)"];
      }

      else
      {
        v86 = &stru_1F05B9908;
      }

      dk_localtimeString = [(NSDate *)v169 dk_localtimeString];
      OUTLINED_FUNCTION_9_8();
      *(v108 + 4) = v82;
      v203 = 2114;
      *(v108 + 14) = name;
      v204 = 2114;
      v205 = v8;
      v206 = 2114;
      *(v108 + 34) = identifier;
      v207 = 2114;
      *(v108 + 44) = v86;
      v208 = 2112;
      *(v108 + 54) = v109;
      OUTLINED_FUNCTION_5_12();
      _os_log_debug_impl(v110, v111, v112, v113, v114, 0x3Eu);
      if (model)
      {
      }

      v3 = v169;
      mark = markCopy;
      model2 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
      v9 = 0x1E696A000;
      v6 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    }

    v10 = v3;
    [*(mark + 44) timeIntervalSinceReferenceDate];
    v12 = v11;
    [v10 timeIntervalSinceReferenceDate];
    if (v12 - v13 <= [*(mark + 41) minSyncWindowInSeconds])
    {
      v25 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v97 = v9;
        markCopy2 = mark;
        v170 = v3;
        v99 = [objc_opt_class() description];
        v175 = v10;
        dk_localtimeString2 = [(NSDate *)v10 dk_localtimeString];
        if ([*&markCopy2[model2[892]] me])
        {
          v101 = @"pseudo ";
        }

        else
        {
          v101 = &stru_1F05B9908;
        }

        identifier2 = [*&markCopy2[model2[892]] identifier];
        model3 = [*&markCopy2[model2[892]] model];
        if (model3)
        {
          v122 = *(v97 + 3776);
          v105 = markCopy2;
          markCopy2 = [*&markCopy2[model2[892]] model];
          markCopy2 = [v122 stringWithFormat:@" (%@)", markCopy2];
        }

        else
        {
          markCopy2 = &stru_1F05B9908;
          v105 = markCopy2;
        }

        OUTLINED_FUNCTION_9_8();
        *(v123 + 4) = v99;
        OUTLINED_FUNCTION_12_4();
        *(v124 + 14) = dk_localtimeString2;
        v204 = 2114;
        v205 = v101;
        v206 = 2114;
        *(v124 + 34) = identifier2;
        v207 = 2114;
        *(v124 + 44) = markCopy2;
        OUTLINED_FUNCTION_5_12();
        _os_log_debug_impl(v125, v126, v127, v128, v129, 0x34u);
        if (model3)
        {
        }

        v3 = v170;
        mark = v105;
        v10 = v175;
      }

      v21 = 0;
      v20 = 0;
      goto LABEL_51;
    }

    v14 = *(mark + 46);
    if (!v14)
    {
      lastSyncDate = [*(mark + 45) lastSyncDate];
      +[_DKPerformSyncUpHistoryDeletionsOperation _updateEventStatsWithPreviousSyncDate:transportType:](_DKPerformSyncUpHistoryDeletionsOperation, lastSyncDate, [*&mark[v6[891]] transportType]);

      v14 = *(mark + 46);
    }

    *(mark + 46) = v14 + 1;
    v16 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v87 = [objc_opt_class() description];
      dk_localtimeString3 = [(NSDate *)v10 dk_localtimeString];
      OUTLINED_FUNCTION_9_8();
      *(v89 + 4) = v87;
      OUTLINED_FUNCTION_12_4();
      *(v91 + 14) = v90;
      OUTLINED_FUNCTION_5_12();
      _os_log_debug_impl(v92, v93, v94, v95, v96, 0x16u);
    }

    v17 = *(mark + 38);
    v18 = *(mark + 43);
    syncBatchSizeInEvents = [*(mark + 41) syncBatchSizeInEvents];
    v199 = 0;
    v200 = 0;
    v20 = [v17 tombstonesSinceDate:v10 streamNames:v18 limit:syncBatchSizeInEvents endDate:&v200 error:&v199];
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
        dk_localtimeString4 = [(NSDate *)v10 dk_localtimeString];
        [(NSDate *)v176 dk_localtimeString];
        v118 = v117 = v3;
        domain = [(__CFString *)v21 domain];
        [(__CFString *)v21 code];
        OUTLINED_FUNCTION_9_8();
        *(v120 + 4) = v115;
        v203 = 2114;
        *(v120 + 14) = dk_localtimeString4;
        v204 = 2114;
        v205 = v118;
        v206 = 2114;
        *(v120 + 34) = domain;
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
      errors = [mark errors];
      [errors addObject:v21];

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
      dk_localtimeString5 = [(NSDate *)v176 dk_localtimeString];
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

    markCopy3 = mark;
    v168 = v3;
    v166 = +[_DKSyncPeerStatusTracker sharedInstance];
    pseudoPeerForSyncTransportCloudUp = [v166 pseudoPeerForSyncTransportCloudUp];
    sourceDeviceID = [pseudoPeerForSyncTransportCloudUp sourceDeviceID];
    v26 = +[_DKSystemEventStreams appWebUsageStream];
    name2 = [v26 name];

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
      stringValue = [v34 stringValue];
      if (stringValue)
      {
        break;
      }

      syncChannel = [*(v29 + 648) syncChannel];
      if (os_log_type_enabled(syncChannel, OS_LOG_TYPE_ERROR))
      {
        syncChannel2 = [objc_opt_class() description];
        OUTLINED_FUNCTION_10_9(syncChannel2, v44, v45, v46, v47, v48, v49, v50, v163, v164, pseudoPeerForSyncTransportCloudUp, v166, v168, v172, v174, v176, v177);
        *(v51 + 14) = v34;
        _os_log_error_impl(&dword_191750000, syncChannel, OS_LOG_TYPE_ERROR, "%{public}@: Skipping tombstone due to missing tombstone uuid: %@", buf, 0x16u);
LABEL_33:
      }

      if (v30 == ++v33)
      {
        v30 = [obj countByEnumeratingWithState:&v195 objects:v212 count:16];
        if (!v30)
        {
LABEL_36:

          v3 = v168;
          mark = markCopy3;
LABEL_38:
          sourceDeviceID2 = [*(mark + 40) sourceDeviceID];
          v62 = [_DKSyncMetadataStorage bookmarkStreamNameWithSourceDeviceID:sourceDeviceID2];

          name3 = [*(mark + 39) name];
          obja = v62;
          v64 = [_DKSyncMetadataStorage eventFromStartDate:v174 endDate:v176 bookmarkStreamName:v62 transportName:name3];

          v186 = v64;
          if ([v172 count] || objc_msgSend(*(mark + 39), "transportType") != 8 || -[_DKSyncType forceSync](*(mark + 42)))
          {
            v65 = *(mark + 41);
            v66 = *(mark + 42);
            lastSyncDate2 = [*(mark + 45) lastSyncDate];
            v68 = [v65 highPriorityForSyncUpWithSyncType:v66 lastSyncDate:lastSyncDate2];

            v69 = *(mark + 39);
            v211 = v64;
            v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v211 count:1];
            v191[0] = MEMORY[0x1E69E9820];
            v191[1] = 3221225472;
            v191[2] = __100___DKPerformSyncUpHistoryDeletionsOperation_performSyncUpHistoryDeletionsWithPreviousHighWaterMark___block_invoke;
            v191[3] = &unk_1E7369CB0;
            v191[4] = mark;
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

          v73 = *(mark + 38);
          v74 = *(mark + 40);
          name4 = [*(mark + 39) name];
          v190 = 0;
          [v73 setLastSyncDownDeletionDate:v72 previousDate:v71 forPeer:v74 transportName:name4 error:&v190];
          v21 = v190;

          v76 = +[_CDLogging syncChannel];
          errors2 = v76;
          v78 = v72;
          if (v21)
          {
            v79 = obja;
            if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
            {
              v144 = [objc_opt_class() description];
              [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-[_DKSyncDeletedEventIDs count](v187)];
              v145 = v171 = v3;
              dk_localtimeString6 = [(NSDate *)v174 dk_localtimeString];
              dk_localtimeString7 = [(NSDate *)v78 dk_localtimeString];
              domain2 = [(__CFString *)v21 domain];
              [(__CFString *)v21 code];
              *buf = 138544898;
              v202 = v144;
              OUTLINED_FUNCTION_12_4();
              *(v149 + 14) = v145;
              v204 = 2114;
              v205 = dk_localtimeString6;
              v206 = 2114;
              *(v149 + 34) = dk_localtimeString7;
              v207 = 2114;
              *(v149 + 44) = domain2;
              v208 = 2048;
              *(v149 + 54) = v150;
              v209 = v151;
              v210 = v21;
              _os_log_error_impl(&dword_191750000, errors2, OS_LOG_TYPE_ERROR, "%{public}@: Failed while syncing up %@ deletions with bookmark [%{public}@ ending %{public}@]: %{public}@:%lld (%@)", buf, 0x48u);

              v3 = v171;
              v78 = v176;
            }

            errors2 = [mark errors];
            [errors2 addObject:v21];
          }

          else if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
          {
            v178 = [objc_opt_class() description];
            v152 = v72;
            v184 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-[_DKSyncDeletedEventIDs count](v187)];
            dk_localtimeString8 = [(NSDate *)v174 dk_localtimeString];
            dk_localtimeString9 = [(NSDate *)v152 dk_localtimeString];
            v154 = [*(mark + 40) me];
            v155 = &stru_1F05B9908;
            if (v154)
            {
              v155 = @"pseudo ";
            }

            v167 = v155;
            identifier3 = [*(mark + 40) identifier];
            model4 = [*(mark + 40) model];
            if (model4)
            {
              v159 = MEMORY[0x1E696AEC0];
              pseudoPeerForSyncTransportCloudUp = [*(mark + 40) model];
              v165 = [v159 stringWithFormat:@" (%@)", pseudoPeerForSyncTransportCloudUp];
            }

            else
            {
              v165 = &stru_1F05B9908;
            }

            OUTLINED_FUNCTION_9_8();
            *(v160 + 4) = v178;
            OUTLINED_FUNCTION_12_4();
            *(v161 + 14) = v184;
            v204 = 2114;
            v162 = dk_localtimeString8;
            v205 = dk_localtimeString8;
            v206 = 2114;
            *(v161 + 34) = dk_localtimeString9;
            v207 = 2114;
            *(v161 + 44) = v167;
            v208 = 2114;
            *(v161 + 54) = identifier3;
            v209 = 2114;
            v210 = v165;
            _os_log_debug_impl(&dword_191750000, errors2, OS_LOG_TYPE_DEBUG, "%{public}@: Successfully synced up %@ deletions with bookmark [%{public}@ ending %{public}@] to %{public}@peer %{public}@%{public}@", buf, 0x48u);
            v79 = obja;
            if (model4)
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
          [mark endOperation];
          goto LABEL_52;
        }

        goto LABEL_19;
      }
    }

    syncChannel = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:stringValue];
    if (syncChannel)
    {
      metadata = [v34 metadata];
      [*(v32 + 2616) eventSourceDeviceID];
      v39 = v38 = v32;
      syncChannel2 = [metadata objectForKeyedSubscript:v39];

      if (syncChannel2)
      {
        metadata2 = [v34 metadata];
        eventStreamName = [*(v38 + 2616) eventStreamName];
        v43 = [metadata2 objectForKeyedSubscript:eventStreamName];

        if ([v43 isEqualToString:name2])
        {
          [(_DKSyncDeletedEventIDs *)v187 addDeletedEventID:syncChannel forSourceDeviceID:syncChannel2];
        }

        v29 = 0x1E7366000;
        v32 = v38;
        v31 = v183;
      }

      else
      {
        [(_DKSyncDeletedEventIDs *)v187 addDeletedEventID:syncChannel forSourceDeviceID:sourceDeviceID];
        v29 = 0x1E7366000;
        v32 = v38;
      }
    }

    else
    {
      syncChannel2 = [*(v29 + 648) syncChannel];
      if (os_log_type_enabled(syncChannel2, OS_LOG_TYPE_ERROR))
      {
        v52 = [objc_opt_class() description];
        OUTLINED_FUNCTION_10_9(v52, v53, v54, v55, v56, v57, v58, v59, v163, v164, pseudoPeerForSyncTransportCloudUp, v166, v168, v172, v174, v176, v177);
        *(v60 + 14) = stringValue;
        _os_log_error_impl(&dword_191750000, syncChannel2, OS_LOG_TYPE_ERROR, "%{public}@: Skipping tombstone due to malformed tombstone uuid: %@", buf, 0x16u);

        v29 = 0x1E7366000;
      }
    }

    goto LABEL_33;
  }

LABEL_53:

  v81 = *MEMORY[0x1E69E9840];
}

- (void)handleUpdateStorageWithStartDate:(void *)date endDate:(uint64_t)endDate deletedEventIDsCount:(void *)count orError:
{
  v42 = *MEMORY[0x1E69E9840];
  v9 = a2;
  dateCopy = date;
  countCopy = count;
  if (self)
  {
    v12 = +[_DKSyncSerializer underlyingQueue];
    dispatch_assert_queue_V2(v12);

    if (countCopy)
    {
      v13 = [_DKCKError isIgnorableError:countCopy];
      v14 = +[_CDLogging syncChannel];
      v15 = v14;
      if (v13)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v16 = [objc_opt_class() description];
          domain = [countCopy domain];
          [countCopy code];
          OUTLINED_FUNCTION_4_15();
          _os_log_debug_impl(&dword_191750000, v15, OS_LOG_TYPE_DEBUG, "%{public}@: Did not update storage: %{public}@:%lld (%@)", buf, 0x2Au);
LABEL_25:
        }
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v16 = [objc_opt_class() description];
        domain = [countCopy domain];
        [countCopy code];
        OUTLINED_FUNCTION_4_15();
        _os_log_error_impl(&dword_191750000, v15, OS_LOG_TYPE_ERROR, "%{public}@: Failed while updating storage: %{public}@:%lld (%@)", buf, 0x2Au);
        goto LABEL_25;
      }

      errors = [self errors];
      [errors addObject:countCopy];

LABEL_12:
      [self endOperation];
      goto LABEL_13;
    }

    v18 = +[_CDLogging syncChannel];
    v19 = v18;
    if (endDate)
    {
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        goto LABEL_21;
      }

      v34 = [objc_opt_class() description];
      v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:endDate];
      dk_localtimeString = [(NSDate *)v9 dk_localtimeString];
      dk_localtimeString2 = [(NSDate *)dateCopy dk_localtimeString];
      [*(self + 312) transportType];
      v20 = &stru_1F05B9908;
      [OUTLINED_FUNCTION_6_15() me];
      identifier = [OUTLINED_FUNCTION_6_15() identifier];
      model = [OUTLINED_FUNCTION_6_15() model];
      if (model)
      {
        v23 = MEMORY[0x1E696AEC0];
        model2 = [OUTLINED_FUNCTION_6_15() model];
        v20 = [v23 stringWithFormat:@" (%@)", model2];
      }

      name = [*(self + 312) name];
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
      dk_localtimeString = [(NSDate *)v9 dk_localtimeString];
      dk_localtimeString2 = [(NSDate *)dateCopy dk_localtimeString];
      [*(self + 312) transportType];
      v20 = &stru_1F05B9908;
      [OUTLINED_FUNCTION_6_15() me];
      identifier = [OUTLINED_FUNCTION_6_15() identifier];
      model = [OUTLINED_FUNCTION_6_15() model];
      if (model)
      {
        v29 = MEMORY[0x1E696AEC0];
        model2 = [OUTLINED_FUNCTION_6_15() model];
        v20 = [v29 stringWithFormat:@" (%@)", model2];
      }

      name = [*(self + 312) name];
      OUTLINED_FUNCTION_0_25();
      _os_log_debug_impl(&dword_191750000, v19, OS_LOG_TYPE_DEBUG, "%{public}@: Synced up %@ deletions and high water mark with bookmark [%{public}@ ending %{public}@] doing sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@", buf, 0x5Cu);
    }

    if (model)
    {
    }

LABEL_21:
    +[_DKPerformSyncUpHistoryDeletionsOperation _updateEventStatsWithTotal:transportType:](_DKPerformSyncUpHistoryDeletionsOperation, endDate, [*(self + 312) transportType]);
    v27 = *(self + 368);
    maxBatchesPerSync = [*(self + 328) maxBatchesPerSync];
    if (endDate && v27 < maxBatchesPerSync)
    {
      OUTLINED_FUNCTION_3_17();
      v36 = 3221225472;
      v37 = __115___DKPerformSyncUpHistoryDeletionsOperation_handleUpdateStorageWithStartDate_endDate_deletedEventIDsCount_orError___block_invoke;
      v38 = &unk_1E7367710;
      selfCopy = self;
      v40 = dateCopy;
      [_DKSyncSerializer performAsyncBlock:v35];

      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_13:

  v25 = *MEMORY[0x1E69E9840];
}

@end