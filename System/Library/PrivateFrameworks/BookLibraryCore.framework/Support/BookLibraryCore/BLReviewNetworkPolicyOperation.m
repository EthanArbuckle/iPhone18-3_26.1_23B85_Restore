@interface BLReviewNetworkPolicyOperation
- (BLReviewNetworkPolicyOperation)initWithDownload:(id)a3;
- (void)run;
@end

@implementation BLReviewNetworkPolicyOperation

- (BLReviewNetworkPolicyOperation)initWithDownload:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BLReviewNetworkPolicyOperation;
  v6 = [(BLOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 11, a3);
  }

  return v7;
}

- (void)run
{
  v3 = +[BLNetworkMonitor defaultMonitor];
  v4 = *(&self->super._success + 1);
  download = self->_download;
  if (download)
  {
    v6 = download;
    v7 = 0;
LABEL_5:
    v10 = *&self->_suppressDialogs;
    v11 = v10 > 4;
    v12 = (1 << v10) & 0x19;
    if (!v11 && v12 != 0)
    {
      v14 = [BLCellularNetworkEvaluator evaluatorForIdentity:v6];
      *&self->_suppressDialogs = [v14 evaluateForDownload:self->_cellularResult];
    }

    if ((v4 & 1) != 0 || ((v15 = *&self->_suppressDialogs, v11 = v15 > 4, v16 = (1 << v15) & 0x15, !v11) ? (v17 = v16 == 0) : (v17 = 1), v17 || ![v3 isExpensive]))
    {
      v9 = v7;
    }

    else
    {
      cellularIdentity = self->_cellularIdentity;
      if (cellularIdentity)
      {
        v19 = cellularIdentity;
      }

      else
      {
        v19 = objc_alloc_init(BLCellularNetworkEvaluatorOperation);
      }

      v25 = v19;
      [(BLCellularNetworkEvaluatorOperation *)v19 setCellularDownload:self->_cellularResult];
      [(BLCellularNetworkEvaluatorOperation *)v25 setCellularIdentity:v6];
      v29 = v7;
      v26 = [(BLOperation *)self runSubOperation:v25 returningError:&v29];
      v9 = v29;

      if (v26)
      {
        *&self->_suppressDialogs = [(BLCellularNetworkEvaluatorOperation *)v25 evaluatorResult];
      }

      else
      {
        v27 = BLServiceLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = [self->_cellularResult logKey];
          *buf = 138543618;
          v32 = v28;
          v33 = 2112;
          v34 = v9;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "[%{public}@]: Unable to evaluate cellular download:  %@", buf, 0x16u);
        }
      }
    }

    goto LABEL_19;
  }

  v8 = +[BLNetworkMonitor defaultMonitor];
  v30 = 0;
  v6 = [v8 copyCellularNetworkIdentityWithError:&v30];
  v9 = v30;

  if (v6)
  {
    v7 = v9;
    goto LABEL_5;
  }

  v20 = *&self->_suppressDialogs;
  v11 = v20 > 4;
  v21 = (1 << v20) & 0x19;
  if (v11 || v21 == 0)
  {
    v6 = 0;
  }

  else
  {
    v23 = BLServiceLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [self->_cellularResult logKey];
      *buf = 138543618;
      v32 = v24;
      v33 = 2112;
      v34 = v9;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[%{public}@]: Unable to evaluate cellular download:  %@", buf, 0x16u);
    }

    v6 = 0;
    *&self->_suppressDialogs = 4;
  }

LABEL_19:
  self->super._success = 1;
}

@end