@interface _DKPerformSyncDownPeerOperation
+ (void)_updateEventStatsWithTransportType:(uint64_t)type;
- (id)initWithParent:(void *)parent localStorage:(void *)storage transport:(void *)transport peer:(void *)peer policy:(void *)policy type:;
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

+ (void)_updateEventStatsWithTransportType:(uint64_t)type
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
    v24.super_class = _DKPerformSyncDownPeerOperation;
    v17 = objc_msgSendSuper2(&v24, sel_initWithParent_, a2, storageCopy, parentCopy);
    v18 = v17;
    if (v17)
    {
      objc_storeStrong(v17 + 37, parent);
      objc_storeStrong(v18 + 38, storage);
      objc_storeStrong(v18 + 39, transport);
      objc_storeStrong(v18 + 40, peer);
      objc_storeStrong(v18 + 41, policy);
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
  if (!self)
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
    v9 = [v8 activeTransportsForPeer:*(self + 312)];
    if ([OUTLINED_FUNCTION_2_6() hasAdditionsFlagForPeer:*(self + 312)] & 1) != 0 || (objc_msgSend(OUTLINED_FUNCTION_2_6(), "hasDeletionsFlagForPeer:", *(self + 312)))
    {
      v10 = &stru_1F05B9908;
      v11 = 0x1E7366000uLL;
      if ((v9 & 1) == 0)
      {
LABEL_24:
        transportType = [OUTLINED_FUNCTION_2_6() transportType];
        [_DKPerformSyncDownPeerOperation _updateEventStatsWithTransportType:transportType];

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
        model5 = [objc_opt_class() description];
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

        model7 = v20;
        identifier = [OUTLINED_FUNCTION_0_10() identifier];
        [OUTLINED_FUNCTION_0_10() model];
        v23 = v22 = &stru_1F05B9908;
        v24 = v19;
        if (v23)
        {
          v25 = MEMORY[0x1E696AEC0];
          model = [OUTLINED_FUNCTION_0_10() model];
          model3 = model;
          v22 = [v25 stringWithFormat:@" (%@)"];
        }

        name = [*(self + 304) name];
        *buf = 138544642;
        v81 = model5;
        v82 = 2082;
        v83 = v24;
        v84 = 2114;
        v85 = model7;
        v86 = 2114;
        v87 = identifier;
        v88 = 2114;
        v89 = v22;
        v90 = 2114;
        v91 = name;
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

    v13 = [v8 lastSuccessfulActivityDateOnTransport:1 forPeer:*(self + 312)];
    v14 = v13;
    if (v13)
    {
      [v13 timeIntervalSinceNow];
      if (v15 > -120.0)
      {
        syncChannel = [*(v11 + 648) syncChannel];
        if (os_log_type_enabled(syncChannel, OS_LOG_TYPE_DEBUG))
        {
          v78 = [objc_opt_class() description];
          transportType2 = [OUTLINED_FUNCTION_2_6() transportType];
          v55 = "up to";
          if (transportType2 != 8)
          {
            v55 = "down from";
          }

          v72 = v55;
          if ([OUTLINED_FUNCTION_0_10() me])
          {
            v10 = @"pseudo ";
          }

          identifier2 = [OUTLINED_FUNCTION_0_10() identifier];
          model2 = [OUTLINED_FUNCTION_0_10() model];
          if (model2)
          {
            v64 = MEMORY[0x1E696AEC0];
            model3 = [OUTLINED_FUNCTION_0_10() model];
            v58 = [v64 stringWithFormat:@" (%@)", model3];
          }

          else
          {
            v58 = &stru_1F05B9908;
          }

          name2 = [*(self + 304) name];
          *buf = 138544642;
          v81 = v78;
          v82 = 2082;
          v83 = v72;
          v84 = 2114;
          v85 = v10;
          v86 = 2114;
          v87 = identifier2;
          v88 = 2114;
          v89 = v58;
          v90 = 2114;
          v91 = name2;
          _os_log_debug_impl(&dword_191750000, syncChannel, OS_LOG_TYPE_DEBUG, "%{public}@: Skipping sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ because of recent successful sync on different transport", buf, 0x3Eu);

          if (model2)
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
      [self endOperation];
      goto LABEL_14;
    }

    goto LABEL_24;
  }

LABEL_25:
  syncChannel2 = [*(v7 + 648) syncChannel];
  if (os_log_type_enabled(syncChannel2, OS_LOG_TYPE_DEBUG))
  {
    v28 = [objc_opt_class() description];
    [OUTLINED_FUNCTION_2_6() transportType];
    [OUTLINED_FUNCTION_0_10() me];
    identifier3 = [OUTLINED_FUNCTION_0_10() identifier];
    model4 = [OUTLINED_FUNCTION_0_10() model];
    if (model4)
    {
      v32 = MEMORY[0x1E696AEC0];
      model5 = [OUTLINED_FUNCTION_0_10() model];
      model = model5;
      v6 = [v32 stringWithFormat:@" (%@)"];
    }

    name3 = [*(self + 304) name];
    *buf = 138544642;
    v81 = v28;
    OUTLINED_FUNCTION_1_8();
    OUTLINED_FUNCTION_4_5(&dword_191750000, v34, v35, "%{public}@: Queuing subordinate operations for sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@", v36, v37, v38, v39, model, model3, model7, model5, buf[0]);

    if (model4)
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
    syncChannel3 = [*(v7 + 648) syncChannel];
    if (os_log_type_enabled(syncChannel3, OS_LOG_TYPE_DEBUG))
    {
      v76 = [objc_opt_class() description];
      [OUTLINED_FUNCTION_2_6() transportType];
      [OUTLINED_FUNCTION_0_10() me];
      identifier4 = [OUTLINED_FUNCTION_0_10() identifier];
      model6 = [OUTLINED_FUNCTION_0_10() model];
      if (model6)
      {
        v44 = MEMORY[0x1E696AEC0];
        model7 = [OUTLINED_FUNCTION_0_10() model];
        model = model7;
        v6 = [v44 stringWithFormat:@" (%@)"];
      }

      name4 = [*(self + 304) name];
      *buf = 138544642;
      v81 = v76;
      OUTLINED_FUNCTION_1_8();
      OUTLINED_FUNCTION_4_5(&dword_191750000, v46, v47, "%{public}@: Skipping additions sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@ because no additions will exist", v48, v49, v50, v51, model, model3, model7, v76, buf[0]);

      if (model6)
      {
      }

      v4 = &OBJC_IVAR____DKSync2Coordinator__periodicJobInterval;
      v5 = "down from";
      v7 = 0x1E7366000uLL;
    }
  }

  else
  {
    [(_DKPerformSyncDownPeerOperation *)self addSyncDownPeerAdditionsOperation];
  }

  [(_DKPerformSyncDownPeerOperation *)self addSyncDownPeerDeletionsOperation];
  v52 = [*(self + 336) count];
  if (v52)
  {
    [*(v40 + 2528) addOperations:*(self + 336) waitUntilFinished:0];
  }

  syncChannel4 = [*(v7 + 648) syncChannel];
  if (os_log_type_enabled(syncChannel4, OS_LOG_TYPE_DEBUG))
  {
    v73 = [objc_opt_class() description];
    v79 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(*(self + 336), "count")}];
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

    identifier5 = [OUTLINED_FUNCTION_0_10() identifier];
    model8 = [OUTLINED_FUNCTION_0_10() model];
    if (model8)
    {
      v66 = MEMORY[0x1E696AEC0];
      model3 = [OUTLINED_FUNCTION_0_10() model];
      v63 = [v66 stringWithFormat:@" (%@)", model3];
    }

    else
    {
      v63 = &stru_1F05B9908;
    }

    name5 = [*(self + v60[192]) name];
    *buf = 138544898;
    v81 = v73;
    v82 = 2112;
    v83 = v79;
    v84 = 2082;
    v85 = v5;
    v86 = 2114;
    v87 = v59;
    v88 = 2114;
    v89 = identifier5;
    v90 = 2114;
    v91 = v63;
    v92 = 2114;
    v93 = name5;
    _os_log_debug_impl(&dword_191750000, syncChannel4, OS_LOG_TYPE_DEBUG, "%{public}@: Done queuing %@ subordinate operation for sync %{public}s %{public}@peer %{public}@%{public}@ on transport %{public}@", buf, 0x48u);

    if (model8)
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
  if (self)
  {
    v2 = [[_DKPerformSyncDownPeerAdditionsOperation alloc] initWithParent:self localStorage:self[37] transport:self[38] peer:self[39] policy:self[40] type:self[41]];
    if ([OUTLINED_FUNCTION_3_5() count])
    {
      lastObject = [OUTLINED_FUNCTION_3_5() lastObject];
      [v2 addDependency:lastObject];
    }

    [OUTLINED_FUNCTION_3_5() addObject:v2];
  }
}

- (void)addSyncDownPeerDeletionsOperation
{
  if (self)
  {
    v2 = [[_DKPerformSyncDownPeerDeletionsOperation alloc] initWithParent:self localStorage:self[37] transport:self[38] peer:self[39] policy:self[40] type:self[41]];
    if ([OUTLINED_FUNCTION_3_5() count])
    {
      lastObject = [OUTLINED_FUNCTION_3_5() lastObject];
      [v2 addDependency:lastObject];
    }

    [OUTLINED_FUNCTION_3_5() addObject:v2];
  }
}

@end