@interface BLCellularNetworkEvaluatorOperation
- (id)_presentDialogRequest:(id)request outError:(id *)error;
- (void)run;
@end

@implementation BLCellularNetworkEvaluatorOperation

- (id)_presentDialogRequest:(id)request outError:(id *)error
{
  requestCopy = request;
  v6 = [[AMSSystemAlertDialogTask alloc] initWithRequest:requestCopy];

  present = [v6 present];
  v8 = [present resultWithError:error];

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
        logKey = [(BLEvaluatorDownload *)self->_cellularDownload logKey];
        bytes = [(BLEvaluatorDownload *)self->_cellularDownload bytes];
        *buf = 138543618;
        v28 = logKey;
        v29 = 2048;
        v30 = bytes;
        v8 = "[%{public}@]: Download of size %llu exceeds cellular limit, but not prompting for automatic download.";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v8, buf, 0x16u);

        goto LABEL_17;
      }

      goto LABEL_17;
    }

    v9 = +[BLNetworkMonitor defaultMonitor];
    isExpensive = [v9 isExpensive];

    v5 = BLServiceLog();
    v11 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if ((isExpensive & 1) == 0)
    {
      if (v11)
      {
        logKey = [(BLEvaluatorDownload *)self->_cellularDownload logKey];
        bytes2 = [(BLEvaluatorDownload *)self->_cellularDownload bytes];
        *buf = 138543618;
        v28 = logKey;
        v29 = 2048;
        v30 = bytes2;
        v8 = "[%{public}@]: Download of size %llu exceeds cellular limit, but not prompting for inexpensive network.";
        goto LABEL_16;
      }

LABEL_17:
      v4 = 4;
      goto LABEL_18;
    }

    if (v11)
    {
      logKey2 = [(BLEvaluatorDownload *)self->_cellularDownload logKey];
      bytes3 = [(BLEvaluatorDownload *)self->_cellularDownload bytes];
      *buf = 138543618;
      v28 = logKey2;
      v29 = 2048;
      v30 = bytes3;
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
        logKey3 = [(BLEvaluatorDownload *)self->_cellularDownload logKey];
        *buf = 138543618;
        v28 = logKey3;
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

      selectedActionIdentifier = [v15 selectedActionIdentifier];
      v22 = [selectedActionIdentifier isEqualToString:@"BLCellularDataPromptActionDownloadNow"];

      v16 = BLServiceLog();
      v23 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (v22)
      {
        if (v23)
        {
          logKey4 = [(BLEvaluatorDownload *)self->_cellularDownload logKey];
          *buf = 138543362;
          v28 = logKey4;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@]: We were asked to download now.  Not requiring inexpensive data.", buf, 0xCu);
        }

        v4 = 1;
      }

      else
      {
        if (v23)
        {
          logKey5 = [(BLEvaluatorDownload *)self->_cellularDownload logKey];
          *buf = 138543362;
          v28 = logKey5;
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
    logKey6 = [(BLEvaluatorDownload *)self->_cellularDownload logKey];
    *buf = 138543618;
    v28 = logKey6;
    v29 = 2048;
    v30 = v4;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Evaluation for download completed with result: %ld", buf, 0x16u);
  }

  self->_evaluatorResult = v4;
  self->super._success = 1;
}

@end