@interface WirelessTrialStateRelay
- (WirelessTrialStateRelay)initWithMonitoring:(WirelessTrialStateDelegate *)a3;
- (optional<std::string>)getWirelessTrialIdentifier;
- (void)_updateWirelessTrialIdentifier:(optional<std::string> *)a3;
- (void)refreshWirelessTrialIdentifier;
- (void)subscribeToTrial;
@end

@implementation WirelessTrialStateRelay

- (WirelessTrialStateRelay)initWithMonitoring:(WirelessTrialStateDelegate *)a3
{
  v11.receiver = self;
  v11.super_class = WirelessTrialStateRelay;
  v4 = [(WirelessTrialStateRelay *)&v11 init];
  if (v4)
  {
    if (objc_opt_class())
    {
      v4->_wirelessTrialStateDelegate = a3;
      v5 = dispatch_queue_create("analyticsd.TrialCellularWireless.CallbackQueue", 0);
      fObj = v4->_trialCellularWirelessClientQueue.fObj.fObj;
      v4->_trialCellularWirelessClientQueue.fObj.fObj = v5;

      v7 = [TRIClient clientWithIdentifier:259];
      trialClient = v4->trialClient;
      v4->trialClient = v7;

      if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
      {
        sub_100123F0C();
      }

      [(WirelessTrialStateRelay *)v4 subscribeToTrial];
    }

    v9 = v4;
  }

  return v4;
}

- (void)refreshWirelessTrialIdentifier
{
  [(WirelessTrialStateRelay *)self getWirelessTrialIdentifier];
  [(WirelessTrialStateRelay *)self _updateWirelessTrialIdentifier:&__p];
  if (v5 == 1 && v4 < 0)
  {
    operator delete(__p);
  }
}

- (optional<std::string>)getWirelessTrialIdentifier
{
  v2 = v1;
  [*(v1 + 8) refresh];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&retstr->var0.var0 = v4;
  *(&retstr->var0.var1.__rep_.__l + 1) = v4;
  retstr->var0.var0 = 0;
  retstr[1].var0.var0 = 0;
  if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
  {
    sub_100123F6C();
  }

  v5 = [*(v2 + 8) experimentIdentifiersWithNamespaceName:@"WIRELESS_DATA_ANALYTICS_CELLULAR_PRODUCT_EXPERIMENTATION_INTERNAL"];
  if (v5)
  {
    v6 = [*(v2 + 8) levelForFactor:off_100192780 withNamespaceName:@"WIRELESS_DATA_ANALYTICS_CELLULAR_PRODUCT_EXPERIMENTATION_INTERNAL"];
    v7 = v6;
    if (!v6)
    {
      if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_ERROR))
      {
        sub_10012408C();
      }

      goto LABEL_20;
    }

    v8 = [v6 fileValue];
    v9 = [v8 path];
    if (v9)
    {
      v10 = [v7 fileValue];
      v11 = [v10 path];
      v12 = [v11 length] == 0;

      if (!v12)
      {
        v13 = [v7 fileValue];
        v14 = [v13 path];
        v15 = [NSURL fileURLWithPath:v14];

        if (v15)
        {
          v16 = [v5 treatmentId];
          v17 = v16;
          *v23 = [v16 UTF8String];
          sub_1000817A4(retstr, v23);
          v18 = qword_100192D98;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            v20 = [v5 experimentId];
            v21 = [v5 deploymentId];
            if (*(&retstr->var0.var1.__rep_.__l + 23) >= 0)
            {
              data = retstr;
            }

            else
            {
              data = retstr->var0.var1.__rep_.__l.__data_;
            }

            *v23 = 138412802;
            *&v23[4] = v20;
            v24 = 1024;
            v25 = v21;
            v26 = 2080;
            v27 = data;
            _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "[WirelessTrialStateRelay] WirelessTrialIdentifier: experimentIdentifiers are: experimentId: %@, deploymentId: %d, treatmentId: %s", v23, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_ERROR))
        {
          sub_100123FCC();
        }

LABEL_20:
        goto LABEL_21;
      }
    }

    else
    {
    }

    if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_ERROR))
    {
      sub_10012402C();
    }

    goto LABEL_20;
  }

  if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
  {
    sub_1001240EC();
  }

LABEL_21:

  return result;
}

- (void)subscribeToTrial
{
  if (self->trialClient)
  {
    if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
    {
      sub_10012414C();
    }

    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v3 = objc_autoreleasePoolPush();
    objc_initWeak(&location, self);
    trialClient = self->trialClient;
    v5 = sub_100006020(&self->_trialCellularWirelessClientQueue.fObj.fObj);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000AFDA8;
    v10[3] = &unk_100187428;
    v10[4] = &v13;
    objc_copyWeak(&v11, &location);
    v6 = [(TRIClient *)trialClient addUpdateHandlerForNamespaceName:@"WIRELESS_DATA_ANALYTICS_CELLULAR_PRODUCT_EXPERIMENTATION_INTERNAL" queue:v5 usingBlock:v10];

    if ((v14[3] & 1) == 0)
    {
      v7 = qword_100192D98;
      if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_INFO))
      {
        if (*(v14 + 24))
        {
          v8 = "YES";
        }

        else
        {
          v8 = "NO";
        }

        *buf = 136446210;
        v18 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[WirelessTrialStateRelay] WirelessTrialIdentifier: subscribeToTrial: trialCallbackReceived: %{public}s", buf, 0xCu);
      }

      v9 = objc_loadWeakRetained(&location);
      [v9 refreshWirelessTrialIdentifier];
    }

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
    objc_autoreleasePoolPop(v3);
    _Block_object_dispose(&v13, 8);
  }

  else if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_ERROR))
  {
    sub_1001241AC();
  }
}

- (void)_updateWirelessTrialIdentifier:(optional<std::string> *)a3
{
  wirelessTrialStateDelegate = self->_wirelessTrialStateDelegate;
  sub_10009B928(__p, &a3->var0.var0);
  (*(wirelessTrialStateDelegate->var0 + 2))(&v5, wirelessTrialStateDelegate, __p);
  v4 = v5;
  v5 = 0;

  if (v8 == 1 && v7 < 0)
  {
    operator delete(__p[0]);
  }
}

@end