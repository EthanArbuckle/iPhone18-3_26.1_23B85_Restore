@interface BLCellularNetworkEvaluator
+ (id)evaluatorForIdentity:(id)identity;
- (BLCellularNetworkEvaluator)initWithIdentity:(id)identity;
- (int64_t)evaluateForDownload:(id)download;
@end

@implementation BLCellularNetworkEvaluator

+ (id)evaluatorForIdentity:(id)identity
{
  identityCopy = identity;
  v5 = [[self alloc] initWithIdentity:identityCopy];

  return v5;
}

- (BLCellularNetworkEvaluator)initWithIdentity:(id)identity
{
  identityCopy = identity;
  v11.receiver = self;
  v11.super_class = BLCellularNetworkEvaluator;
  v6 = [(BLCellularNetworkEvaluator *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identity, identity);
    v8 = [BUCellularSettings settingsForIdentity:identityCopy];
    settings = v7->_settings;
    v7->_settings = v8;
  }

  return v7;
}

- (int64_t)evaluateForDownload:(id)download
{
  downloadCopy = download;
  v5 = BLServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    logKey = [downloadCopy logKey];
    *buf = 138543874;
    v30 = logKey;
    v31 = 2048;
    bytes = [downloadCopy bytes];
    v33 = 1024;
    isAutomatic = [downloadCopy isAutomatic];
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Evaluating download, size = %llu automatic = %d", buf, 0x1Cu);
  }

  allowAutomaticDownloads = [(BUCellularSettings *)self->_settings allowAutomaticDownloads];
  if ([downloadCopy isAutomatic] && (allowAutomaticDownloads & 1) == 0)
  {
    v8 = BLServiceLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      logKey2 = [downloadCopy logKey];
      *buf = 138543362;
      v30 = logKey2;
      v10 = "[%{public}@]: Implicitly denied - automatic downloads are disabled in Settings > Books > Cellular Data and will only happen on WiFi";
LABEL_17:
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v10, buf, 0xCu);
LABEL_18:

      goto LABEL_19;
    }

    goto LABEL_19;
  }

  cellularDataPrompt = [(BUCellularSettings *)self->_settings cellularDataPrompt];
  if (![(BUCellularIdentity *)self->_identity isRoaming])
  {
    if (cellularDataPrompt == 1)
    {
      goto LABEL_15;
    }

    if (cellularDataPrompt == 2)
    {
      v8 = BLServiceLog();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_33:
        v14 = 3;
        goto LABEL_20;
      }

      logKey2 = [downloadCopy logKey];
      *buf = 138543362;
      v30 = logKey2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Implicitly allowed - cellular prompt disabled", buf, 0xCu);
    }

    else
    {
      if (![downloadCopy bytes])
      {
        v8 = BLServiceLog();
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        logKey2 = [downloadCopy logKey];
        *buf = 138543362;
        v30 = logKey2;
        v10 = "[%{public}@]: Implicitly denied - download size is unavailable";
        goto LABEL_17;
      }

      constraints = self->_constraints;
      if (constraints)
      {
        v8 = 0;
      }

      else
      {
        v17 = +[BUBag defaultBag];
        kind = [downloadCopy kind];
        v19 = [AMSNetworkConstraints networkConstraintsForMediaType:kind withBag:v17];
        v28 = 0;
        v20 = [v19 resultWithError:&v28];
        v8 = v28;
        v21 = self->_constraints;
        self->_constraints = v20;

        constraints = self->_constraints;
        if (!constraints)
        {
          logKey2 = BLServiceLog();
          if (os_log_type_enabled(logKey2, OS_LOG_TYPE_ERROR))
          {
            logKey3 = [downloadCopy logKey];
            *buf = 138543618;
            v30 = logKey3;
            v31 = 2112;
            bytes = v8;
            _os_log_impl(&_mh_execute_header, logKey2, OS_LOG_TYPE_ERROR, "[%{public}@]: Implicitly denied - failed to load constraints:  %@", buf, 0x16u);
          }

          goto LABEL_18;
        }
      }

      v22 = [(AMSNetworkConstraints *)constraints sizeLimitForNetworkType:AMSNetworkTypeCellular];
      bytes2 = [downloadCopy bytes];
      logKey2 = BLServiceLog();
      v24 = os_log_type_enabled(logKey2, OS_LOG_TYPE_DEFAULT);
      if (bytes2 > v22)
      {
        if (v24)
        {
          logKey4 = [downloadCopy logKey];
          *buf = 138543618;
          v30 = logKey4;
          v31 = 2048;
          bytes = v22;
          _os_log_impl(&_mh_execute_header, logKey2, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Implicitly denied - exceeded cellular limit (of %llu bytes)", buf, 0x16u);
        }

        goto LABEL_18;
      }

      if (v24)
      {
        logKey5 = [downloadCopy logKey];
        *buf = 138543618;
        v30 = logKey5;
        v31 = 2048;
        bytes = v22;
        _os_log_impl(&_mh_execute_header, logKey2, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Implicitly allowed - cellular limit (of %llu bytes) applies", buf, 0x16u);
      }
    }

    goto LABEL_33;
  }

  v12 = BLServiceLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    logKey6 = [downloadCopy logKey];
    *buf = 138543362;
    v30 = logKey6;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Overriding cellular prompt - network is roaming", buf, 0xCu);
  }

LABEL_15:
  v8 = BLServiceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    logKey2 = [downloadCopy logKey];
    *buf = 138543362;
    v30 = logKey2;
    v10 = "[%{public}@]: Implicitly denied - cellular prompt required";
    goto LABEL_17;
  }

LABEL_19:
  v14 = 4;
LABEL_20:

  return v14;
}

@end