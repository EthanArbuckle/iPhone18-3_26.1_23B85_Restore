@interface _DKPerformSyncDownPeerOperation
+ (void)_updateEventStatsWithTransportType:(uint64_t)a1;
- (id)initWithParent:(void *)a3 localStorage:(void *)a4 transport:(void *)a5 peer:(void *)a6 policy:(void *)a7 type:;
- (void)addSyncDownPeerAdditionsOperation;
- (void)addSyncDownPeerDeletionsOperation;
- (void)endOperation;
- (void)main;
- (void)performSyncDownPeer;
@end

@implementation _DKPerformSyncDownPeerOperation

- (void)main
{
  v3 = objc_opt_class();
  if ([_DKSync2Coordinator shouldDeferSyncOperationWithClass:v3 syncType:self->_type transport:self->_transport peer:self->_peer policy:self->_policy])
  {

    [(_DKPerformSyncDownPeerOperation *)self endOperation];
  }

  else
  {

    [(_DKPerformSyncDownPeerOperation *)self performSyncDownPeer];
  }
}

+ (void)_updateEventStatsWithTransportType:(uint64_t)a1
{
  objc_opt_self();
  if (_updateEventStatsWithTransportType__rapportVsCloudOptimizationCounterInitialized != -1)
  {
    +[_DKPerformSyncDownPeerOperation _updateEventStatsWithTransportType:];
  }

  v3 = _updateEventStatsWithTransportType__rapportVsCloudOptimizationCounter;
  if (a2 == 1)
  {
    v4 = @"Rapport";
  }

  else
  {
    v4 = @"Cloud";
  }

  [(_DKEventTypeStatsCounter *)v3 incrementCountByNumber:v4 typeValue:?];
}

- (void)endOperation
{
  v2.receiver = self;
  v2.super_class = _DKPerformSyncDownPeerOperation;
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
    v24.super_class = _DKPerformSyncDownPeerOperation;
    v17 = objc_msgSendSuper2(&v24, sel_initWithParent_, a2, v22, v23);
    v18 = v17;
    if (v17)
    {
      objc_storeStrong(v17 + 37, a3);
      objc_storeStrong(v18 + 38, a4);
      objc_storeStrong(v18 + 39, a5);
      objc_storeStrong(v18 + 40, a6);
      objc_storeStrong(v18 + 41, a7);
      v19 = objc_opt_new();
      v20 = v18[42];
      v18[42] = v19;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)performSyncDownPeer
{
  v94 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_14;
  }

  v2 = 0x1E7366000uLL;
  v3 = +[_DKSyncSerializer underlyingQueue];
  dispatch_assert_queue_V2(v3);

  v4 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
  v5 = "down from";
  v6 = &stru_1F05B9908;
  v7 = 0x1E7366000uLL;
  if ([OUTLINED_FUNCTION_2_6() transportType] == 4)
  {
    v8 = +[_DKSyncPeerStatusTracker sharedInstance];
    v9 = [v8 activeTransportsForPeer:*(a1 + 312)];
    if ([OUTLINED_FUNCTION_2_6() hasAdditionsFlagForPeer:*(a1 + 312)] & 1) != 0 || (objc_msgSend(OUTLINED_FUNCTION_2_6(), "hasDeletionsFlagForPeer:", *(a1 + 312)))
    {
      v10 = &stru_1F05B9908;
      v11 = 0x1E7366000uLL;
      if ((v9 & 1) == 0)
      {
LABEL_24:
        v26 = [OUTLINED_FUNCTION_2_6() transportType];
        [_DKPerformSyncDownPeerOperation _updateEventStatsWithTransportType:v26];

        v7 = v11;
        v6 = &stru_1F05B9908;
        goto LABEL_25;
      }

      v12 = 1;
    }

    else
    {
      v18 = +[_CDLogging syncChannel];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v74 = [objc_opt_class() description];
        if ([OUTLINED_FUNCTION_2_6() transportType] == 8)
        {
          v19 = "up to";
        }

        else
        {
          v19 = "down from";
        }

        if ([OUTLINED_FUNCTION_0_10() me])
        {
          v20 = @"pseudo ";
        }

        else
        {
          v20 = &stru_1F05B9908;
        }

        v70 = v20;
        v21 = [OUTLINED_FUNCTION_0_10() identifier];
        [OUTLINED_FUNCTION_0_10() model];
        v23 = v22 = &stru_1F05B9908;
        v24 = v19;
        if (v23)
        {
          v25 = MEMORY[0x1E696AEC0];
          v68 = [OUTLINED_FUNCTION_0_10() model];
          v69 = v68;
          v22 = [v25 stringWithFormat:@" (%@)"];
        }

        v31 = [*(a1 + 304) name];
        *buf = 138544642;
        v81 = v74;
        v82 = 2082;
        v83 = v24;
        v84 = 2114;
        v85 = v70;
        v86 = 2114;
        v87 = v21;
        v88 = 2114;
        v89 = v22;
        v90 = 2114;
        v91 = v31;
        _os_log_impl(&dword_191750000, v18, OS_LOG_TYPE_INFO, "%{public}@: Skipping sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ because of no cloud changes", buf, 0x3Eu);

        if (v23)
        {
        }

        v4 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
        v5 = "down from";
        v7 = 0x1E7366000;
      }

      v10 = &stru_1F05B9908;
      v11 = v7;

      v2 = 0x1E7366000;
      if ((v9 & 1) == 0)
      {
        goto LABEL_12;
      }

      v12 = 0;
    }

    v13 = [v8 lastSuccessfulActivityDateOnTransport:1 forPeer:*(a1 + 312)];
    v14 = v13;
    if (v13)
    {
      [v13 timeIntervalSinceNow];
      if (v15 > -120.0)
      {
        v16 = [*(v11 + 648) syncChannel];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v78 = [objc_opt_class() description];
          v54 = [OUTLINED_FUNCTION_2_6() transportType];
          v55 = "up to";
          if (v54 != 8)
          {
            v55 = "down from";
          }

          v72 = v55;
          if ([OUTLINED_FUNCTION_0_10() me])
          {
            v10 = @"pseudo ";
          }

          v56 = [OUTLINED_FUNCTION_0_10() identifier];
          v57 = [OUTLINED_FUNCTION_0_10() model];
          if (v57)
          {
            v64 = MEMORY[0x1E696AEC0];
            v69 = [OUTLINED_FUNCTION_0_10() model];
            v58 = [v64 stringWithFormat:@" (%@)", v69];
          }

          else
          {
            v58 = &stru_1F05B9908;
          }

          v65 = [*(a1 + 304) name];
          *buf = 138544642;
          v81 = v78;
          v82 = 2082;
          v83 = v72;
          v84 = 2114;
          v85 = v10;
          v86 = 2114;
          v87 = v56;
          v88 = 2114;
          v89 = v58;
          v90 = 2114;
          v91 = v65;
          _os_log_debug_impl(&dword_191750000, v16, OS_LOG_TYPE_DEBUG, "%{public}@: Skipping sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ because of recent successful sync on different transport", buf, 0x3Eu);

          if (v57)
          {
          }
        }

        [_DKPerformSyncDownPeerOperation _updateEventStatsWithTransportType:?];
        goto LABEL_12;
      }
    }

    if (!v12)
    {
LABEL_12:

LABEL_13:
      [a1 endOperation];
      goto LABEL_14;
    }

    goto LABEL_24;
  }

LABEL_25:
  v27 = [*(v7 + 648) syncChannel];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v28 = [objc_opt_class() description];
    [OUTLINED_FUNCTION_2_6() transportType];
    [OUTLINED_FUNCTION_0_10() me];
    v29 = [OUTLINED_FUNCTION_0_10() identifier];
    v30 = [OUTLINED_FUNCTION_0_10() model];
    if (v30)
    {
      v32 = MEMORY[0x1E696AEC0];
      v74 = [OUTLINED_FUNCTION_0_10() model];
      v68 = v74;
      v6 = [v32 stringWithFormat:@" (%@)"];
    }

    v33 = [*(a1 + 304) name];
    *buf = 138544642;
    v81 = v28;
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_4_5(&dword_191750000, v34, v35, "%{public}@: Queuing subordinate operations for sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@", v36, v37, v38, v39, v68, v69, v70, v74, buf[0]);

    if (v30)
    {
    }

    v6 = &stru_1F05B9908;
    v4 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
    v5 = "down from";
    v2 = 0x1E7366000uLL;
    v7 = 0x1E7366000uLL;
  }

  v40 = v2;
  if ([OUTLINED_FUNCTION_0_10() me])
  {
    v41 = [*(v7 + 648) syncChannel];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v76 = [objc_opt_class() description];
      [OUTLINED_FUNCTION_2_6() transportType];
      [OUTLINED_FUNCTION_0_10() me];
      v42 = [OUTLINED_FUNCTION_0_10() identifier];
      v43 = [OUTLINED_FUNCTION_0_10() model];
      if (v43)
      {
        v44 = MEMORY[0x1E696AEC0];
        v70 = [OUTLINED_FUNCTION_0_10() model];
        v68 = v70;
        v6 = [v44 stringWithFormat:@" (%@)"];
      }

      v45 = [*(a1 + 304) name];
      *buf = 138544642;
      v81 = v76;
      OUTLINED_FUNCTION_1_8();
      OUTLINED_FUNCTION_4_5(&dword_191750000, v46, v47, "%{public}@: Skipping additions sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ because no additions will exist", v48, v49, v50, v51, v68, v69, v70, v76, buf[0]);

      if (v43)
      {
      }

      v4 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
      v5 = "down from";
      v7 = 0x1E7366000uLL;
    }
  }

  else
  {
    [(_DKPerformSyncDownPeerOperation *)a1 addSyncDownPeerAdditionsOperation];
  }

  [(_DKPerformSyncDownPeerOperation *)a1 addSyncDownPeerDeletionsOperation];
  v52 = [*(a1 + 336) count];
  if (v52)
  {
    [*(v40 + 2528) addOperations:*(a1 + 336) waitUntilFinished:0];
  }

  v53 = [*(v7 + 648) syncChannel];
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
  {
    v73 = [objc_opt_class() description];
    v79 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 336), "count")}];
    v59 = @"pseudo ";
    v60 = v4;
    if ([OUTLINED_FUNCTION_2_6() transportType] == 8)
    {
      v5 = "up to";
    }

    if (![OUTLINED_FUNCTION_0_10() me])
    {
      v59 = &stru_1F05B9908;
    }

    v61 = [OUTLINED_FUNCTION_0_10() identifier];
    v62 = [OUTLINED_FUNCTION_0_10() model];
    if (v62)
    {
      v66 = MEMORY[0x1E696AEC0];
      v69 = [OUTLINED_FUNCTION_0_10() model];
      v63 = [v66 stringWithFormat:@" (%@)", v69];
    }

    else
    {
      v63 = &stru_1F05B9908;
    }

    v67 = [*(a1 + v60[192]) name];
    *buf = 138544898;
    v81 = v73;
    v82 = 2112;
    v83 = v79;
    v84 = 2082;
    v85 = v5;
    v86 = 2114;
    v87 = v59;
    v88 = 2114;
    v89 = v61;
    v90 = 2114;
    v91 = v63;
    v92 = 2114;
    v93 = v67;
    _os_log_debug_impl(&dword_191750000, v53, OS_LOG_TYPE_DEBUG, "%{public}@: Done queuing %@ subordinate operation for sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@", buf, 0x48u);

    if (v62)
    {
    }
  }

  if (!v52)
  {
    goto LABEL_13;
  }

LABEL_14:
  v17 = *MEMORY[0x1E69E9840];
}

- (void)addSyncDownPeerAdditionsOperation
{
  if (a1)
  {
    v2 = [[_DKPerformSyncDownPeerAdditionsOperation alloc] initWithParent:a1 localStorage:a1[37] transport:a1[38] peer:a1[39] policy:a1[40] type:a1[41]];
    if ([OUTLINED_FUNCTION_3_5() count])
    {
      v1 = [OUTLINED_FUNCTION_3_5() lastObject];
      [v2 addDependency:v1];
    }

    [OUTLINED_FUNCTION_3_5() addObject:v2];
  }
}

- (void)addSyncDownPeerDeletionsOperation
{
  if (a1)
  {
    v2 = [[_DKPerformSyncDownPeerDeletionsOperation alloc] initWithParent:a1 localStorage:a1[37] transport:a1[38] peer:a1[39] policy:a1[40] type:a1[41]];
    if ([OUTLINED_FUNCTION_3_5() count])
    {
      v1 = [OUTLINED_FUNCTION_3_5() lastObject];
      [v2 addDependency:v1];
    }

    [OUTLINED_FUNCTION_3_5() addObject:v2];
  }
}

@end