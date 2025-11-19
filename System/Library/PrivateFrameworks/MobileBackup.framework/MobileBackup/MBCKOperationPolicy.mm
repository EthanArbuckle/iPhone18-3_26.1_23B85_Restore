@interface MBCKOperationPolicy
+ (id)authPromptReason;
+ (id)expensiveCellularPolicy;
- (MBCKOperationPolicy)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)operationGroupWithName:(id)a3 processName:(id)a4;
@end

@implementation MBCKOperationPolicy

+ (id)authPromptReason
{
  if (qword_100421AC8 != -1)
  {
    dispatch_once(&qword_100421AC8, &stru_1003C1DA0);
  }

  v3 = qword_100421AC0;

  return v3;
}

+ (id)expensiveCellularPolicy
{
  v2 = objc_opt_new();
  v3 = +[MBCellularAccess expensiveCellularAccess];
  [v2 setCellularAccess:v3];

  return v2;
}

- (MBCKOperationPolicy)init
{
  v12.receiver = self;
  v12.super_class = MBCKOperationPolicy;
  v2 = [(MBCKOperationPolicy *)&v12 init];
  if (v2)
  {
    if (qword_100421AF8 != -1)
    {
      dispatch_once(&qword_100421AF8, &stru_1003C1DC0);
    }

    *(v2 + 4) = 256;
    *(v2 + 3) = [objc_opt_class() defaultQualityOfService];
    *(v2 + 4) = 2;
    v3 = qword_100421AD8;
    *(v2 + 5) = qword_100421AD0;
    *(v2 + 6) = v3;
    v4 = qword_100421AE8;
    *(v2 + 7) = qword_100421AE0;
    *(v2 + 8) = v4;
    __asm { FMOV            V0.2D, #-1.0 }

    *(v2 + 72) = _Q0;
    v10 = qword_100421AF0;
    *(v2 + 11) = 0x3FF0000000000000;
    *(v2 + 12) = v10;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(MBCKOperationPolicy *)self cellularAccess];
  v6 = [v5 copy];
  [v4 setCellularAccess:v6];

  [v4 setAutomaticallyRetryNetworkFailures:{-[MBCKOperationPolicy automaticallyRetryNetworkFailures](self, "automaticallyRetryNetworkFailures")}];
  [v4 setFetchAssets:{-[MBCKOperationPolicy fetchAssets](self, "fetchAssets")}];
  [v4 setQualityOfService:{-[MBCKOperationPolicy qualityOfService](self, "qualityOfService")}];
  [v4 setRecordSavePolicy:{-[MBCKOperationPolicy recordSavePolicy](self, "recordSavePolicy")}];
  [v4 setMaxBatchCount:{-[MBCKOperationPolicy maxBatchCount](self, "maxBatchCount")}];
  [v4 setMaxBatchSize:{-[MBCKOperationPolicy maxBatchSize](self, "maxBatchSize")}];
  [v4 setMaxBatchFetchAssetSize:{-[MBCKOperationPolicy maxBatchFetchAssetSize](self, "maxBatchFetchAssetSize")}];
  [v4 setMaxBatchSaveAssetSize:{-[MBCKOperationPolicy maxBatchSaveAssetSize](self, "maxBatchSaveAssetSize")}];
  [(MBCKOperationPolicy *)self timeoutIntervalForFetch];
  [v4 setTimeoutIntervalForFetch:?];
  [(MBCKOperationPolicy *)self timeoutIntervalForModify];
  [v4 setTimeoutIntervalForModify:?];
  [(MBCKOperationPolicy *)self retryAfterInterval];
  [v4 setRetryAfterInterval:?];
  [v4 setMaxRetryAttempts:{-[MBCKOperationPolicy maxRetryAttempts](self, "maxRetryAttempts")}];
  return v4;
}

- (id)operationGroupWithName:(id)a3 processName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = [(MBCKOperationPolicy *)self cellularAccess];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 allowsExpensiveNetworkAccess];
    [v8 setAllowsCellularAccess:1];
    [v8 setAllowsExpensiveNetworkAccess:v11];
  }

  else
  {
    [v8 setAllowsCellularAccess:0];
    LODWORD(v11) = 0;
  }

  [v8 setQualityOfService:{-[MBCKOperationPolicy qualityOfService](self, "qualityOfService")}];
  [v8 setDiscretionaryNetworkBehavior:0];
  [v8 setAutomaticallyRetryNetworkFailures:{-[MBCKOperationPolicy automaticallyRetryNetworkFailures](self, "automaticallyRetryNetworkFailures")}];
  v12 = objc_opt_new();
  if (v6 && v7)
  {
    v13 = [[NSString alloc] initWithFormat:@"%@|%@", v6, v7];

    v6 = v13;
  }

  if (v6)
  {
    [v12 setName:v6];
  }

  [v12 setDefaultConfiguration:v8];
  v14 = [objc_opt_class() authPromptReason];
  [v12 setAuthPromptReason:v14];

  v15 = [v12 name];

  v16 = MBGetDefaultLog();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG);
  if (v15)
  {
    if (!v17)
    {
      goto LABEL_15;
    }

    v29 = v7;
    v18 = v10 != 0;
    v19 = [v12 name];
    [v12 operationGroupID];
    v20 = v28 = v10;
    [(MBCKOperationPolicy *)self qualityOfService];
    v21 = MBLogStringForNSQualityOfService();
    *buf = 138544386;
    v31 = v19;
    v32 = 2114;
    v33 = v20;
    v34 = 2112;
    *v35 = v21;
    *&v35[8] = 1024;
    v36 = v18;
    v37 = 1024;
    v38 = v11;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "=ck-op= Created operation group, gn:%{public}@, gid:%{public}@, qos:%@, ac:%d(%d)", buf, 0x2Cu);

    v10 = v28;
    v22 = [v12 name];
    v23 = [v12 operationGroupID];
    [(MBCKOperationPolicy *)self qualityOfService];
    v27 = MBLogStringForNSQualityOfService();
    _MBLog();
  }

  else
  {
    if (!v17)
    {
      goto LABEL_15;
    }

    v29 = v7;
    v24 = [v12 operationGroupID];
    [(MBCKOperationPolicy *)self qualityOfService];
    v25 = MBLogStringForNSQualityOfService();
    *buf = 138544130;
    v31 = v24;
    v32 = 2114;
    v33 = v25;
    v34 = 1024;
    *v35 = v10 != 0;
    *&v35[4] = 1024;
    *&v35[6] = v11;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "=ck-op= Created operation group, gid:%{public}@, qos:%{public}@, ac:%d(%d)", buf, 0x22u);

    v22 = [v12 operationGroupID];
    [(MBCKOperationPolicy *)self qualityOfService];
    v23 = MBLogStringForNSQualityOfService();
    _MBLog();
  }

  v7 = v29;
LABEL_15:

  if (!v12)
  {
    __assert_rtn("[MBCKOperationPolicy operationGroupWithName:processName:]", "MBCKOperationTracker.m", 128, "group");
  }

  return v12;
}

@end