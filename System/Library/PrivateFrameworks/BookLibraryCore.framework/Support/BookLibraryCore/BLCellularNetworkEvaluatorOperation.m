@interface BLCellularNetworkEvaluatorOperation
- (id)_presentDialogRequest:(id)a3 outError:(id *)a4;
- (void)run;
@end

@implementation BLCellularNetworkEvaluatorOperation

- (id)_presentDialogRequest:(id)a3 outError:(id *)a4
{
  v5 = a3;
  v6 = [[AMSSystemAlertDialogTask alloc] initWithRequest:v5];

  v7 = [v6 present];
  v8 = [v7 resultWithError:a4];

  return v8;
}

- (void)run
{
  v3 = [BLCellularNetworkEvaluator evaluatorForIdentity:self->_cellularIdentity];
  v4 = [v3 evaluateForDownload:self->_cellularDownload];
  if (v4 == 4)
  {
    if ([(BLEvaluatorDownload *)self->_cellularDownload isAutomatic])
    {
      v5 = BLServiceLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [(BLEvaluatorDownload *)self->_cellularDownload logKey];
        v7 = [(BLEvaluatorDownload *)self->_cellularDownload bytes];
        *buf = 138543618;
        v28 = v6;
        v29 = 2048;
        v30 = v7;
        v8 = "[%{public}@]: Download of size %llu exceeds cellular limit, but not prompting for automatic download.";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v8, buf, 0x16u);

        goto LABEL_17;
      }

      goto LABEL_17;
    }

    v9 = +[BLNetworkMonitor defaultMonitor];
    v10 = [v9 isExpensive];

    v5 = BLServiceLog();
    v11 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if ((v10 & 1) == 0)
    {
      if (v11)
      {
        v6 = [(BLEvaluatorDownload *)self->_cellularDownload logKey];
        v18 = [(BLEvaluatorDownload *)self->_cellularDownload bytes];
        *buf = 138543618;
        v28 = v6;
        v29 = 2048;
        v30 = v18;
        v8 = "[%{public}@]: Download of size %llu exceeds cellular limit, but not prompting for inexpensive network.";
        goto LABEL_16;
      }

LABEL_17:
      v4 = 4;
      goto LABEL_18;
    }

    if (v11)
    {
      v12 = [(BLEvaluatorDownload *)self->_cellularDownload logKey];
      v13 = [(BLEvaluatorDownload *)self->_cellularDownload bytes];
      *buf = 138543618;
      v28 = v12;
      v29 = 2048;
      v30 = v13;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Download of size %llu exceeds cellular limit, asking how to proceed.", buf, 0x16u);
    }

    v14 = [BLCellularDataPromptDialogRequest dialogForDownload:self->_cellularDownload roaming:[(BUCellularIdentity *)self->_cellularIdentity isRoaming]];
    v26 = 0;
    v15 = [(BLCellularNetworkEvaluatorOperation *)self _presentDialogRequest:v14 outError:&v26];
    v5 = v26;
    if (v5)
    {
      v16 = BLServiceLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(BLEvaluatorDownload *)self->_cellularDownload logKey];
        *buf = 138543618;
        v28 = v17;
        v29 = 2114;
        v30 = v5;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Error delivering dialog request: %{public}@", buf, 0x16u);
      }

      v4 = 4;
    }

    else
    {
      if (!v15)
      {
        v4 = 4;
        goto LABEL_13;
      }

      v21 = [v15 selectedActionIdentifier];
      v22 = [v21 isEqualToString:@"BLCellularDataPromptActionDownloadNow"];

      v16 = BLServiceLog();
      v23 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (v22)
      {
        if (v23)
        {
          v24 = [(BLEvaluatorDownload *)self->_cellularDownload logKey];
          *buf = 138543362;
          v28 = v24;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@]: We were asked to download now.  Not requiring inexpensive data.", buf, 0xCu);
        }

        v4 = 1;
      }

      else
      {
        if (v23)
        {
          v25 = [(BLEvaluatorDownload *)self->_cellularDownload logKey];
          *buf = 138543362;
          v28 = v25;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@]: We were asked to download later.  Requiring inexpensive data.", buf, 0xCu);
        }

        v4 = 2;
      }
    }

LABEL_13:
LABEL_18:
  }

  v19 = BLServiceLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [(BLEvaluatorDownload *)self->_cellularDownload logKey];
    *buf = 138543618;
    v28 = v20;
    v29 = 2048;
    v30 = v4;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Evaluation for download completed with result: %ld", buf, 0x16u);
  }

  self->_evaluatorResult = v4;
  self->super._success = 1;
}

@end