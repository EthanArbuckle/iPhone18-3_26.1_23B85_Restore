@interface TelephonyStateRelay
- (BOOL)isStewieActive:(id)a3;
- (TelephonyStateRelay)initWithMonitoring:(TelephonyStateDelegate *)a3;
- (basic_string<char,)formatCellularRAT:(std::allocator<char>> *__return_ptr)retstr;
- (basic_string<char,)formatCellularRat:(std::allocator<char>> *__return_ptr)retstr forDeploymentType:;
- (basic_string<char,)formatInternetConnection:(std::allocator<char>> *__return_ptr)retstr;
- (char)formatSignalBars:(id)a3;
- (id).cxx_construct;
- (id)dataSubscriptionContext;
- (id)extractServingCellInfo:(id)a3;
- (int)cellularInternetConnectionStateAsEnum:(int)a3;
- (pair<LinkStateNotificationType,)extractLinkStateChange:(id)a3;
- (unsigned)extractHighThroughput:(id)a3;
- (void)_updateCellInternetStatusAndLQM:(int)a3 pdpContext:(int)a4;
- (void)_updateCellularLQM:(optional<LQMThreshold>)a3;
- (void)_updateCellularRAT:()basic_string<char;
- (void)_updateHighThroughput:(BOOL)a3;
- (void)_updateIsDualSim:(optional<BOOL>)a3;
- (void)_updateServingCarrierName:(optional<std::string> *)a3;
- (void)_updateSignalBars:(char)a3;
- (void)_updateSubscriberCarrierBundleVersion:(optional<std::string> *)a3;
- (void)_updateSubscriberCarrierCountry:(optional<std::string> *)a3;
- (void)_updateSubscriberCarrierName:(optional<std::string> *)a3;
- (void)carrierBundleChange:(id)a3;
- (void)cellMonitorUpdate:(id)a3 info:(id)a4;
- (void)currentDataSimChanged:(id)a3;
- (void)dealloc;
- (void)displayStatusChanged:(id)a3 status:(id)a4;
- (void)enhancedDataLinkQualityChanged:(id)a3 metric:(id)a4;
- (void)handleCarrierBundleChanged:(id)a3;
- (void)handleCellMonitorUpdate:(id)a3 info:(id)a4;
- (void)handleCurrentDataSimChanged:(id)a3;
- (void)handleDisplayStatusChanged:(id)a3 status:(id)a4;
- (void)handleDisplayStatusChangedForSatelliteStatus:(BOOL)a3;
- (void)handleEnhancedLQMChanged:(id)a3 metric:(id)a4;
- (void)handleHighThroughputChanged:(id)a3 metric:(id)a4;
- (void)handleInternetConnectionStateChanged:(id)a3;
- (void)handleLinkStateChanged:(id)a3 metric:(id)a4;
- (void)handleOperatorBundleChanged:(id)a3;
- (void)handleRadioStateChanged:(id)a3;
- (void)handleSignalStrengthChanged:(id)a3 info:(id)a4;
- (void)handleStewieStateChanged:(id)a3;
- (void)handleSubscriptionInfoChanged;
- (void)initCTServerConnection;
- (void)initTelephonyClient;
- (void)internetConnectionStateChanged:(id)a3;
- (void)operatorBundleChange:(id)a3;
- (void)radioStateChanged:(id)a3;
- (void)refreshInternetConnectionSync;
- (void)refreshIsDualSimSync;
- (void)refreshIsSatelliteSystemSync;
- (void)refreshOnCurrentDataSimChange;
- (void)refreshRadioStateSync;
- (void)refreshServingCarrierNameSync;
- (void)refreshSignalStrengthBarsSync;
- (void)refreshSubscriberInfoSync;
- (void)signalStrengthChanged:(id)a3 info:(id)a4;
- (void)stateChanged:(id)a3;
- (void)subscriptionInfoDidChange;
@end

@implementation TelephonyStateRelay

- (id)dataSubscriptionContext
{
  coreTelephonyClient = self->_coreTelephonyClient;
  if (coreTelephonyClient)
  {
    dataSubscriptionContext = self->_dataSubscriptionContext;
    if (dataSubscriptionContext)
    {
      v5 = dataSubscriptionContext;
    }

    else
    {
      v9 = 0;
      v5 = [(CoreTelephonyClient *)coreTelephonyClient getCurrentDataSubscriptionContextSync:&v9];
      v6 = v9;
      if (v6)
      {
        v7 = qword_100192D98;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [v6 localizedDescription];
          objc_claimAutoreleasedReturnValue();
          sub_10011E8A0();
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (TelephonyStateRelay)initWithMonitoring:(TelephonyStateDelegate *)a3
{
  v21.receiver = self;
  v21.super_class = TelephonyStateRelay;
  v4 = [(TelephonyStateRelay *)&v21 init];
  v5 = v4;
  if (v4)
  {
    v4->_telephonyStateDelegate = a3;
    v6 = dispatch_queue_create("com.apple.analyticsd.TelephonyStateRelay.myQueue", 0);
    fObj = v5->_stateRelayQueue.fObj.fObj;
    v5->_stateRelayQueue.fObj.fObj = v6;

    v8 = dispatch_queue_create("com.apple.analyticsd.TelephonyStateRelay.CallbackQueue", 0);
    v9 = v5->_telephonyClientQueue.fObj.fObj;
    v5->_telephonyClientQueue.fObj.fObj = v8;

    [(TelephonyStateRelay *)v5 initTelephonyClient];
    v5->_internetCellStatus = 0;
    [(TelephonyStateRelay *)v5 _updateCellularLQM:0];
    coreTelephonyClient = v5->_coreTelephonyClient;
    if (coreTelephonyClient)
    {
      [(CoreTelephonyClient *)coreTelephonyClient setDelegate:v5];
    }

    v11 = [CTStewieStateMonitor alloc];
    v12 = sub_100006020(&v5->_telephonyClientQueue.fObj.fObj);
    v13 = [v11 initWithDelegate:v5 queue:v12];
    stewieStateMonitor = v5->_stewieStateMonitor;
    v5->_stewieStateMonitor = v13;

    v5->_satelliteStatus = 1;
    [(CTStewieStateMonitor *)v5->_stewieStateMonitor start];
    v15 = sub_100006020(&v5->_stateRelayQueue.fObj.fObj);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10009752C;
    v19[3] = &unk_100184CB0;
    v16 = v5;
    v20 = v16;
    dispatch_async(v15, v19);

    v17 = v16;
  }

  return v5;
}

- (void)dealloc
{
  coreTelephonyClient = self->_coreTelephonyClient;
  if (coreTelephonyClient)
  {
    [(CoreTelephonyClient *)coreTelephonyClient setDelegate:0];
  }

  if (self->_ctServerConnection)
  {
    _CTServerConnectionUnregisterForAllNotifications();
    CFRelease(self->_ctServerConnection);
  }

  v4.receiver = self;
  v4.super_class = TelephonyStateRelay;
  [(TelephonyStateRelay *)&v4 dealloc];
}

- (void)initTelephonyClient
{
  v3 = [CoreTelephonyClient alloc];
  v4 = sub_100006020(&self->_telephonyClientQueue.fObj.fObj);
  v5 = [v3 initWithQueue:v4];
  coreTelephonyClient = self->_coreTelephonyClient;
  self->_coreTelephonyClient = v5;

  v7 = self->_coreTelephonyClient;
  if (v7)
  {
    v14 = 0;
    v8 = [(CoreTelephonyClient *)v7 getPreferredDataSubscriptionContextSync:&v14];
    v9 = v14;
    dataSubscriptionContext = self->_dataSubscriptionContext;
    self->_dataSubscriptionContext = v8;

    if (v9)
    {
      v11 = qword_100192D98;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [v9 localizedDescription];
        objc_claimAutoreleasedReturnValue();
        sub_10011E8A0();
      }
    }

    [(TelephonyStateRelay *)self initCTServerConnection];
  }

  else
  {
    v12 = qword_100192D98;
    if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "[TelephonyStateRelay] WARNING: Failed to create CoreTelephonyClient instance", buf, 2u);
    }

    v13 = self->_dataSubscriptionContext;
    self->_dataSubscriptionContext = 0;

    self->_ctServerConnection = 0;
  }
}

- (void)initCTServerConnection
{
  v3 = sub_100006020(&self->_telephonyClientQueue.fObj.fObj);
  self->_ctServerConnection = _CTServerConnectionCreateOnTargetQueue();

  if (self->_ctServerConnection)
  {
    _CTServerConnectionRegisterBlockForNotification();
  }

  else
  {
    v4 = qword_100192D98;
    if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[TelephonyStateRelay] WARNING: Failed to create CTServerConnection", buf, 2u);
    }
  }
}

- (void)refreshOnCurrentDataSimChange
{
  [(TelephonyStateRelay *)self refreshInternetConnectionSync];
  [(TelephonyStateRelay *)self refreshSignalStrengthBarsSync];
  [(TelephonyStateRelay *)self refreshSubscriberInfoSync];

  [(TelephonyStateRelay *)self refreshServingCarrierNameSync];
}

- (void)refreshSignalStrengthBarsSync
{
  coreTelephonyClient = self->_coreTelephonyClient;
  if (coreTelephonyClient)
  {
    dataSubscriptionContext = self->_dataSubscriptionContext;
    if (dataSubscriptionContext)
    {
      v8 = 0;
      v5 = [(CoreTelephonyClient *)coreTelephonyClient getSignalStrengthInfo:dataSubscriptionContext error:&v8];
      v6 = v8;
      if (!v6 || v5)
      {
        [(TelephonyStateRelay *)self _updateSignalBars:[(TelephonyStateRelay *)self formatSignalBars:v5]];
      }

      else
      {
        v7 = qword_100192D98;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [v6 localizedDescription];
          objc_claimAutoreleasedReturnValue();
          sub_10011E9BC();
        }
      }
    }
  }
}

- (void)refreshInternetConnectionSync
{
  coreTelephonyClient = self->_coreTelephonyClient;
  if (coreTelephonyClient && self->_dataSubscriptionContext)
  {
    v8 = 0;
    v4 = [(CoreTelephonyClient *)coreTelephonyClient getInternetConnectionStateSync:&v8];
    v5 = v8;
    if (!v5 || v4)
    {
      v7 = -[TelephonyStateRelay cellularInternetConnectionStateAsEnum:](self, "cellularInternetConnectionStateAsEnum:", [v4 state]);
      v6 = [v4 pdp];
      [(TelephonyStateRelay *)self _updateCellInternetStatusAndLQM:v7 pdpContext:[v6 intValue]];
    }

    else
    {
      v6 = qword_100192D98;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [v5 localizedDescription];
        objc_claimAutoreleasedReturnValue();
        sub_10011E9BC();
      }
    }
  }
}

- (void)refreshSubscriberInfoSync
{
  coreTelephonyClient = self->_coreTelephonyClient;
  if (coreTelephonyClient)
  {
    dataSubscriptionContext = self->_dataSubscriptionContext;
    if (dataSubscriptionContext)
    {
      v5 = sub_10008CAF8(coreTelephonyClient, dataSubscriptionContext);
      v6 = v5;
      if (v5)
      {
        sub_10000459C(__p, [v5 UTF8String]);
        v29 = *__p;
        v30 = v16;
        __p[1] = 0;
        v16 = 0;
        __p[0] = 0;
        v31 = 1;
        [(TelephonyStateRelay *)self _updateSubscriberCarrierName:&v29];
        if (v31 == 1 && SHIBYTE(v30) < 0)
        {
          operator delete(v29);
        }

        if (SHIBYTE(v16) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v7 = sub_10008CF2C(self->_coreTelephonyClient, self->_dataSubscriptionContext);
      v8 = v7;
      if (v7)
      {
        v9 = v7;
        sub_10000459C(__p, [v8 UTF8String]);
        *v26 = *__p;
        v27 = v16;
        __p[1] = 0;
        v16 = 0;
        __p[0] = 0;
        v28 = 1;
        [(TelephonyStateRelay *)self _updateSubscriberCarrierCountry:v26];
        if (v28 == 1 && SHIBYTE(v27) < 0)
        {
          operator delete(v26[0]);
        }

        if (SHIBYTE(v16) < 0)
        {
          v10 = __p[0];
LABEL_18:
          operator delete(v10);
        }
      }

      else
      {
        LOBYTE(v23) = 0;
        v25 = 0;
        [(TelephonyStateRelay *)self _updateSubscriberCarrierCountry:&v23];
        if (v25 == 1 && v24 < 0)
        {
          v10 = v23;
          goto LABEL_18;
        }
      }

      v11 = sub_10008CD84(self->_coreTelephonyClient, self->_dataSubscriptionContext);
      v12 = v11;
      if (v11)
      {
        v13 = v11;
        sub_10000459C(__p, [v12 UTF8String]);
        *v20 = *__p;
        v21 = v16;
        __p[1] = 0;
        v16 = 0;
        __p[0] = 0;
        v22 = 1;
        [(TelephonyStateRelay *)self _updateSubscriberCarrierBundleVersion:v20];
        if (v22 == 1 && SHIBYTE(v21) < 0)
        {
          operator delete(v20[0]);
        }

        if ((SHIBYTE(v16) & 0x80000000) == 0)
        {
          goto LABEL_29;
        }

        v14 = __p[0];
      }

      else
      {
        LOBYTE(v17) = 0;
        v19 = 0;
        [(TelephonyStateRelay *)self _updateSubscriberCarrierBundleVersion:&v17];
        if (v19 != 1 || (v18 & 0x80000000) == 0)
        {
          goto LABEL_29;
        }

        v14 = v17;
      }

      operator delete(v14);
LABEL_29:
    }
  }
}

- (void)refreshServingCarrierNameSync
{
  coreTelephonyClient = self->_coreTelephonyClient;
  if (coreTelephonyClient)
  {
    dataSubscriptionContext = self->_dataSubscriptionContext;
    if (dataSubscriptionContext)
    {
      v5 = sub_10008D04C(coreTelephonyClient, dataSubscriptionContext);
      v6 = v5;
      if (v5)
      {
        sub_10000459C(v7, [v5 UTF8String]);
        *__p = *v7;
        v10 = v8;
        v7[1] = 0;
        v8 = 0;
        v7[0] = 0;
        v11 = 1;
        [(TelephonyStateRelay *)self _updateServingCarrierName:__p];
        if (v11 == 1 && SHIBYTE(v10) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v8) < 0)
        {
          operator delete(v7[0]);
        }
      }
    }
  }
}

- (void)refreshIsDualSimSync
{
  coreTelephonyClient = self->_coreTelephonyClient;
  if (coreTelephonyClient)
  {
    v6 = [(CoreTelephonyClient *)coreTelephonyClient getSubscriptionInfoWithError:0];
    v4 = [v6 subscriptionsInUse];
    if ([v4 count] <= 1)
    {
      v5 = 256;
    }

    else
    {
      v5 = 257;
    }

    [(TelephonyStateRelay *)self _updateIsDualSim:v5];
  }
}

- (void)refreshIsSatelliteSystemSync
{
  [(TelephonyStateRelay *)self updateSatelliteStatusAndCellularRAT:1];
  stewieStateMonitor = self->_stewieStateMonitor;
  if (stewieStateMonitor && ([(CTStewieStateMonitor *)stewieStateMonitor getState], v7 = objc_claimAutoreleasedReturnValue(), v4 = [(TelephonyStateRelay *)self isStewieActive:?], v7, v4))
  {

    [(TelephonyStateRelay *)self updateSatelliteStatusAndCellularRAT:2];
  }

  else
  {
    coreTelephonyClient = self->_coreTelephonyClient;
    if (coreTelephonyClient)
    {
      dataSubscriptionContext = self->_dataSubscriptionContext;
      if (dataSubscriptionContext)
      {
        v8 = [(CoreTelephonyClient *)coreTelephonyClient copyRegistrationDisplayStatus:dataSubscriptionContext error:0];
        if (v8 && [v8 isSatelliteSystem])
        {
          [(TelephonyStateRelay *)self updateSatelliteStatusAndCellularRAT:3];
        }
      }
    }
  }
}

- (void)refreshRadioStateSync
{
  if (self->_ctServerConnection)
  {
    v4 = 5;
    _CTServerConnectionGetRadioState();
    self->_ctRadioState = 5;
    v3 = qword_100192D98;
    if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
    {
      sub_10011EA00(&v4, v3);
    }
  }

  else if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_ERROR))
  {
    sub_10011EA7C();
  }
}

- (void)cellMonitorUpdate:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100006020(&self->_stateRelayQueue.fObj.fObj);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100098574;
  v11[3] = &unk_100185CD8;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);
}

- (void)signalStrengthChanged:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100006020(&self->_stateRelayQueue.fObj.fObj);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000986AC;
  v11[3] = &unk_100185CD8;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);
}

- (void)enhancedDataLinkQualityChanged:(id)a3 metric:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100006020(&self->_stateRelayQueue.fObj.fObj);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000987E4;
  v11[3] = &unk_100185CD8;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);
}

- (void)displayStatusChanged:(id)a3 status:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100006020(&self->_stateRelayQueue.fObj.fObj);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10009891C;
  v11[3] = &unk_100185CD8;
  v11[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);
}

- (void)currentDataSimChanged:(id)a3
{
  v4 = a3;
  v5 = sub_100006020(&self->_stateRelayQueue.fObj.fObj);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100098A24;
  block[3] = &unk_100184D00;
  block[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)internetConnectionStateChanged:(id)a3
{
  v4 = a3;
  v5 = sub_100006020(&self->_stateRelayQueue.fObj.fObj);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100098B28;
  block[3] = &unk_100184D00;
  block[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)carrierBundleChange:(id)a3
{
  v4 = a3;
  v5 = sub_100006020(&self->_stateRelayQueue.fObj.fObj);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100098C2C;
  block[3] = &unk_100184D00;
  block[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)operatorBundleChange:(id)a3
{
  v4 = a3;
  v5 = sub_100006020(&self->_stateRelayQueue.fObj.fObj);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100098D30;
  block[3] = &unk_100184D00;
  block[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)subscriptionInfoDidChange
{
  v3 = sub_100006020(&self->_stateRelayQueue.fObj.fObj);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100098DF4;
  v4[3] = &unk_100184CB0;
  v4[4] = self;
  dispatch_async(v3, v4);
}

- (void)stateChanged:(id)a3
{
  v4 = a3;
  v5 = sub_100006020(&self->_stateRelayQueue.fObj.fObj);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100098EF4;
  block[3] = &unk_100184D00;
  block[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)radioStateChanged:(id)a3
{
  v4 = a3;
  v5 = sub_100006020(&self->_stateRelayQueue.fObj.fObj);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100098FF8;
  block[3] = &unk_100184D00;
  block[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);
}

- (void)handleCurrentDataSimChanged:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_dataSubscriptionContext, a3);
  v6 = qword_100192D98;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [(CTXPCServiceSubscriptionContext *)self->_dataSubscriptionContext slotID];
    v8 = 134217984;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[TelephonyStateRelay] Changing data preferred to slot = %ld", &v8, 0xCu);
  }

  [(TelephonyStateRelay *)self refreshOnCurrentDataSimChange];
}

- (void)handleInternetConnectionStateChanged:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = -[TelephonyStateRelay cellularInternetConnectionStateAsEnum:](self, "cellularInternetConnectionStateAsEnum:", [v4 state]);
    v7 = [v5 pdp];
    -[TelephonyStateRelay _updateCellInternetStatusAndLQM:pdpContext:](self, "_updateCellInternetStatusAndLQM:pdpContext:", v6, [v7 intValue]);
  }

  else if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_ERROR))
  {
    sub_10011EADC();
  }
}

- (void)handleCellMonitorUpdate:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TelephonyStateRelay *)self dataSubscriptionContext];
  v9 = v8;
  if (v7 && v6 && v8)
  {
    v10 = [v8 slotID];
    if (v10 == [v6 slotID])
    {
      v11 = [(TelephonyStateRelay *)self extractServingCellInfo:v7];
      v12 = v11;
      if (v11)
      {
        v13 = [v11 objectForKey:kCTCellMonitorCellRadioAccessTechnology];
        v14 = [v12 objectForKey:kCTCellMonitorDeploymentType];
        if (v13)
        {
          [(TelephonyStateRelay *)self formatCellularRat:v13 forDeploymentType:v14];
          [(TelephonyStateRelay *)self _updateCellularRAT:&__p];
          if (v16 < 0)
          {
            operator delete(__p);
          }
        }
      }
    }
  }

  else if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_ERROR))
  {
    sub_10011EB3C();
  }
}

- (void)handleSignalStrengthChanged:(id)a3 info:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TelephonyStateRelay *)self dataSubscriptionContext];
  v9 = v8;
  if (v7 && v6 && v8)
  {
    v10 = [v8 slotID];
    if (v10 == [v6 slotID])
    {
      [(TelephonyStateRelay *)self _updateSignalBars:[(TelephonyStateRelay *)self formatSignalBars:v7]];
    }
  }

  else if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_ERROR))
  {
    sub_10011EB9C();
  }
}

- (void)handleEnhancedLQMChanged:(id)a3 metric:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 metricType];
    if (v9 == 1)
    {
      [(TelephonyStateRelay *)self handleLinkStateChanged:v6 metric:v8];
    }

    else if (v9 == 8)
    {
      [(TelephonyStateRelay *)self handleHighThroughputChanged:v6 metric:v8];
    }
  }

  else if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_ERROR))
  {
    sub_10011EBFC();
  }
}

- (void)handleLinkStateChanged:(id)a3 metric:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TelephonyStateRelay *)self dataSubscriptionContext];
  v9 = v8;
  if (v7 && v6 && v8)
  {
    v10 = [v8 slotID];
    if (v10 == [v6 slotID])
    {
      v11 = [v7 enhancedLinkQuality];
      v12 = [(TelephonyStateRelay *)self extractLinkStateChange:v11];
      v13 = HIBYTE(v12);
      v14 = v12;

      if (v14 == 1)
      {
        [(TelephonyStateRelay *)self _updateCellularLQM:v13 | 0x100u];
      }
    }
  }

  else if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_ERROR))
  {
    sub_10011EB9C();
  }
}

- (pair<LinkStateNotificationType,)extractLinkStateChange:(id)a3
{
  v3 = a3;
  v9 = 0;
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v3 length] == 5)
    {
      [v3 getBytes:&v9 range:{1, 1}];
      v8 = -1;
      switch(v9)
      {
        case 4u:
          v4 = 4;
          break;
        case 2u:
          v4 = 3;
          break;
        case 1u:
          v4 = 2;
          break;
        default:
          if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_ERROR))
          {
            sub_10011EC5C();
          }

          v6 = 255;
          goto LABEL_16;
      }

      [v3 getBytes:&v8 range:{v4, 1}];
      v6 = v8;
LABEL_16:
      v5 = v9;
      goto LABEL_9;
    }
  }

  v5 = 0;
  v6 = 255;
LABEL_9:

  return (v5 | (v6 << 8));
}

- (void)handleHighThroughputChanged:(id)a3 metric:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(TelephonyStateRelay *)self dataSubscriptionContext];
  v9 = v8;
  if (v7 && v6 && v8)
  {
    v10 = [v8 slotID];
    if (v10 == [v6 slotID])
    {
      v11 = [v7 enhancedLinkQuality];
      v12 = [(TelephonyStateRelay *)self extractHighThroughput:v11];

      if (v12 <= 1)
      {
        [(TelephonyStateRelay *)self _updateHighThroughput:v12 != 0];
      }
    }
  }

  else if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_ERROR))
  {
    sub_10011EB9C();
  }
}

- (void)handleCarrierBundleChanged:(id)a3
{
  v4 = a3;
  v5 = [(TelephonyStateRelay *)self dataSubscriptionContext];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [v5 slotID];
    if (v7 == [v4 slotID])
    {
      [(TelephonyStateRelay *)self refreshSubscriberInfoSync];
    }
  }

  else if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_ERROR))
  {
    sub_10011ECBC();
  }
}

- (void)handleOperatorBundleChanged:(id)a3
{
  v4 = a3;
  v5 = [(TelephonyStateRelay *)self dataSubscriptionContext];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [v5 slotID];
    if (v7 == [v4 slotID])
    {
      [(TelephonyStateRelay *)self refreshServingCarrierNameSync];
    }
  }

  else if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_ERROR))
  {
    sub_10011ED1C();
  }
}

- (void)handleDisplayStatusChanged:(id)a3 status:(id)a4
{
  v6 = a3;
  v7 = a4;
  -[TelephonyStateRelay handleDisplayStatusChangedForSatelliteStatus:](self, "handleDisplayStatusChangedForSatelliteStatus:", [v7 isSatelliteSystem]);
  v8 = [(TelephonyStateRelay *)self dataSubscriptionContext];
  v9 = v8;
  if (v6 && v8)
  {
    v10 = [v8 slotID];
    if (v10 == [v6 slotID])
    {
      v11 = [v7 registrationDisplayStatus];
      if ([v11 isEqualToString:kCTRegistrationStatusNotRegistered])
      {
        satelliteStatus = self->_satelliteStatus;

        if (satelliteStatus == 1)
        {
          sub_10000459C(__p, "NoService");
          [(TelephonyStateRelay *)self _updateCellularRAT:__p];
          if (v16 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      else
      {
      }

      v13 = [v7 registrationDisplayStatus];
      v14 = sub_10008D4D0(v13);

      if (v14)
      {
        [(TelephonyStateRelay *)self refreshServingCarrierNameSync];
        [(TelephonyStateRelay *)self refreshSubscriberInfoSync];
      }
    }
  }

  else if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_ERROR))
  {
    sub_10011ED7C();
  }
}

- (void)handleDisplayStatusChangedForSatelliteStatus:(BOOL)a3
{
  v3 = a3;
  if (a3 || self->_satelliteStatus != 1)
  {
    v5 = qword_100192D98;
    if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
    {
      sub_10011EDDC(v3, self, v5);
      if (v3)
      {
        goto LABEL_5;
      }
    }

    else if (v3)
    {
LABEL_5:
      v6 = self;
      v7 = 3;
LABEL_9:
      [(TelephonyStateRelay *)v6 updateSatelliteStatusAndCellularRAT:v7];
      return;
    }

    if (self->_satelliteStatus != 3)
    {
      return;
    }

    v6 = self;
    v7 = 1;
    goto LABEL_9;
  }
}

- (void)handleSubscriptionInfoChanged
{
  [(TelephonyStateRelay *)self refreshIsDualSimSync];

  [(TelephonyStateRelay *)self refreshSubscriberInfoSync];
}

- (void)handleStewieStateChanged:(id)a3
{
  v4 = a3;
  if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
  {
    sub_10011EE5C();
  }

  if ([(TelephonyStateRelay *)self isStewieActive:v4])
  {
    [(TelephonyStateRelay *)self updateSatelliteStatusAndCellularRAT:2];
  }

  else if (self->_satelliteStatus == 2)
  {
    [(TelephonyStateRelay *)self updateSatelliteStatusAndCellularRAT:1];
  }
}

- (void)handleRadioStateChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 intValue];
  if (v5 != self->_ctRadioState)
  {
    v6 = qword_100192D98;
    if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_DEBUG))
    {
      sub_10011EEC8(v5, v6);
    }

    self->_ctRadioState = v5;
    (*(self->_telephonyStateDelegate->var0 + 12))(&v8);
    v7 = v8;
    v8 = 0;
  }
}

- (unsigned)extractHighThroughput:(id)a3
{
  v3 = a3;
  v4 = -1;
  v8 = -1;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v3 length] == 8)
      {
        v7 = 0;
        [v3 getBytes:&v7 range:{4, 4}];
        v4 = v7 != 0;
      }

      else if ([v3 length] < 2 || (objc_msgSend(v3, "getBytes:range:", &v8, 1, 1), v4 = v8, v8 >= 2u))
      {
        v5 = qword_100192D98;
        if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_ERROR))
        {
          sub_10011EF40(&v8, v5);
        }

        v4 = -1;
      }
    }
  }

  return v4;
}

- (id)extractServingCellInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 legacyInfo];
  v5 = [v3 legacyInfo];

  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = 0;
      v9 = &v8;
      v10 = 0x3032000000;
      v11 = sub_10009A204;
      v12 = sub_10009A214;
      v13 = 0;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_10009A21C;
      v7[3] = &unk_100185D00;
      v7[4] = &v8;
      [v4 enumerateObjectsUsingBlock:v7];
      v5 = v9[5];
      _Block_object_dispose(&v8, 8);
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)_updateCellInternetStatusAndLQM:(int)a3 pdpContext:(int)a4
{
  self->_internetCellStatus = a3;
  telephonyStateDelegate = self->_telephonyStateDelegate;
  [(TelephonyStateRelay *)self formatInternetConnection:?];
  *__p = *v7;
  v11 = v8;
  v12 = 1;
  (*(telephonyStateDelegate->var0 + 4))(&v9, telephonyStateDelegate, __p);
  v6 = v9;
  v9 = 0;

  if (v12 == 1 && SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  [(TelephonyStateRelay *)self _updateCellularLQM:0];
}

- (void)_updateCellularLQM:(optional<LQMThreshold>)a3
{
  internetCellStatus = self->_internetCellStatus;
  (*(self->_telephonyStateDelegate->var0 + 5))(&v5);
  v4 = v5;
  v5 = 0;
}

- (void)_updateSignalBars:(char)a3
{
  (*(self->_telephonyStateDelegate->var0 + 3))(&v4);
  v3 = v4;
  v4 = 0;
}

- (void)_updateHighThroughput:(BOOL)a3
{
  (*(self->_telephonyStateDelegate->var0 + 6))(&v4);
  v3 = v4;
  v4 = 0;
}

- (void)_updateCellularRAT:()basic_string<char
{
  p_cellularRAT = &self->_cellularRAT;
  v6 = *(&a3->__rep_.__l + 23);
  if (v6 >= 0)
  {
    size = *(&a3->__rep_.__l + 23);
  }

  else
  {
    size = a3->__rep_.__l.__size_;
  }

  v8 = *(&self->_cellularRAT.__rep_.__l + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = self->_cellularRAT.__rep_.__l.__size_;
  }

  if (size != v8 || (v6 >= 0 ? (data = a3) : (data = a3->__rep_.__l.__data_), (v11 = p_cellularRAT->__r_.__value_.__r.__words[0], v9 >= 0) ? (v12 = p_cellularRAT) : (v12 = p_cellularRAT->__r_.__value_.__r.__words[0]), memcmp(data, v12, size)))
  {
    std::string::operator=(p_cellularRAT, a3);
    telephonyStateDelegate = self->_telephonyStateDelegate;
    if (*(&self->_cellularRAT.__rep_.__l + 23) < 0)
    {
      sub_1000078D8(__p, self->_cellularRAT.__rep_.__l.__data_, self->_cellularRAT.__rep_.__l.__size_);
    }

    else
    {
      *__p = *&p_cellularRAT->__r_.__value_.__l.__data_;
      v17 = p_cellularRAT->__r_.__value_.__r.__words[2];
    }

    v18 = 1;
    (*(telephonyStateDelegate->var0 + 2))(&v15, telephonyStateDelegate, __p);
    v14 = v15;
    v15 = 0;

    if (v18 == 1 && SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

- (void)_updateSubscriberCarrierName:(optional<std::string> *)a3
{
  p_subscriberCarrierName = &self->_subscriberCarrierName;
  if (a3[1].var0.var0 == 1)
  {
    v6 = *(&self->_subscriberCarrierName.__rep_.__l + 23);
    if (v6 >= 0)
    {
      size = *(&self->_subscriberCarrierName.__rep_.__l + 23);
    }

    else
    {
      size = self->_subscriberCarrierName.__rep_.__l.__size_;
    }

    v8 = *(&a3->var0.var1.__rep_.__l + 23);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = a3->var0.var1.__rep_.__l.__size_;
    }

    if (size != v8 || (v6 >= 0 ? (v10 = &self->_subscriberCarrierName) : (v10 = p_subscriberCarrierName->__r_.__value_.__r.__words[0]), (v11 = a3->var0.var1.__rep_.__l.__data_, v9 >= 0) ? (v12 = a3) : (v12 = a3->var0.var1.__rep_.__l.__data_), memcmp(v10, v12, size)))
    {
      v13 = qword_100192D98;
      if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_INFO))
      {
        v14 = p_subscriberCarrierName;
        if (*(&self->_subscriberCarrierName.__rep_.__l + 23) < 0)
        {
          v14 = p_subscriberCarrierName->__r_.__value_.__r.__words[0];
        }

        data = a3;
        if (*(&a3->var0.var1.__rep_.__l + 23) < 0)
        {
          data = a3->var0.var1.__rep_.__l.__data_;
        }

        *buf = 136315394;
        v26 = v14;
        v27 = 2080;
        v28 = data;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[TelephonyStateRelay] Changing homeCarrierName from %s to %s", buf, 0x16u);
      }

      std::string::operator=(p_subscriberCarrierName, a3);
      telephonyStateDelegate = self->_telephonyStateDelegate;
      sub_10009B928(v24, &a3->var0.var0);
      (*(telephonyStateDelegate->var0 + 7))(&v22, telephonyStateDelegate, v24);
      v17 = v22;
      v22 = 0;

      if (v24[24] == 1 && v24[23] < 0)
      {
        v18 = v24;
LABEL_27:
        operator delete(*v18);
      }
    }
  }

  else
  {
    std::string::assign(&self->_subscriberCarrierName, "");
    v19 = self->_telephonyStateDelegate;
    sub_10009B928(v23, &a3->var0.var0);
    (*(v19->var0 + 7))(&v21, v19, v23);
    v20 = v21;
    v21 = 0;

    if (v23[24] == 1 && (v23[23] & 0x80000000) != 0)
    {
      v18 = v23;
      goto LABEL_27;
    }
  }
}

- (void)_updateSubscriberCarrierCountry:(optional<std::string> *)a3
{
  p_subscriberCarrierCountry = &self->_subscriberCarrierCountry;
  if (a3[1].var0.var0 == 1)
  {
    v6 = *(&self->_subscriberCarrierCountry.__rep_.__l + 23);
    if (v6 >= 0)
    {
      size = *(&self->_subscriberCarrierCountry.__rep_.__l + 23);
    }

    else
    {
      size = self->_subscriberCarrierCountry.__rep_.__l.__size_;
    }

    v8 = *(&a3->var0.var1.__rep_.__l + 23);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = a3->var0.var1.__rep_.__l.__size_;
    }

    if (size != v8 || (v6 >= 0 ? (v10 = &self->_subscriberCarrierCountry) : (v10 = p_subscriberCarrierCountry->__r_.__value_.__r.__words[0]), (v11 = a3->var0.var1.__rep_.__l.__data_, v9 >= 0) ? (v12 = a3) : (v12 = a3->var0.var1.__rep_.__l.__data_), memcmp(v10, v12, size)))
    {
      v13 = qword_100192D98;
      if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_INFO))
      {
        v14 = p_subscriberCarrierCountry;
        if (*(&self->_subscriberCarrierCountry.__rep_.__l + 23) < 0)
        {
          v14 = p_subscriberCarrierCountry->__r_.__value_.__r.__words[0];
        }

        data = a3;
        if (*(&a3->var0.var1.__rep_.__l + 23) < 0)
        {
          data = a3->var0.var1.__rep_.__l.__data_;
        }

        *buf = 136315394;
        v26 = v14;
        v27 = 2080;
        v28 = data;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[TelephonyStateRelay] Changing homeCarrierCountry from %s to %s", buf, 0x16u);
      }

      std::string::operator=(p_subscriberCarrierCountry, a3);
      telephonyStateDelegate = self->_telephonyStateDelegate;
      sub_10009B928(v24, &a3->var0.var0);
      (*(telephonyStateDelegate->var0 + 9))(&v22, telephonyStateDelegate, v24);
      v17 = v22;
      v22 = 0;

      if (v24[24] == 1 && v24[23] < 0)
      {
        v18 = v24;
LABEL_27:
        operator delete(*v18);
      }
    }
  }

  else
  {
    std::string::assign(&self->_subscriberCarrierCountry, "");
    v19 = self->_telephonyStateDelegate;
    sub_10009B928(v23, &a3->var0.var0);
    (*(v19->var0 + 9))(&v21, v19, v23);
    v20 = v21;
    v21 = 0;

    if (v23[24] == 1 && (v23[23] & 0x80000000) != 0)
    {
      v18 = v23;
      goto LABEL_27;
    }
  }
}

- (void)_updateSubscriberCarrierBundleVersion:(optional<std::string> *)a3
{
  p_subscriberCarrierBundleVersion = &self->_subscriberCarrierBundleVersion;
  if (a3[1].var0.var0 == 1)
  {
    v6 = *(&self->_subscriberCarrierBundleVersion.__rep_.__l + 23);
    if (v6 >= 0)
    {
      size = *(&self->_subscriberCarrierBundleVersion.__rep_.__l + 23);
    }

    else
    {
      size = self->_subscriberCarrierBundleVersion.__rep_.__l.__size_;
    }

    v8 = *(&a3->var0.var1.__rep_.__l + 23);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = a3->var0.var1.__rep_.__l.__size_;
    }

    if (size != v8 || (v6 >= 0 ? (v10 = &self->_subscriberCarrierBundleVersion) : (v10 = p_subscriberCarrierBundleVersion->__r_.__value_.__r.__words[0]), (v11 = a3->var0.var1.__rep_.__l.__data_, v9 >= 0) ? (v12 = a3) : (v12 = a3->var0.var1.__rep_.__l.__data_), memcmp(v10, v12, size)))
    {
      v13 = qword_100192D98;
      if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_INFO))
      {
        v14 = p_subscriberCarrierBundleVersion;
        if (*(&self->_subscriberCarrierBundleVersion.__rep_.__l + 23) < 0)
        {
          v14 = p_subscriberCarrierBundleVersion->__r_.__value_.__r.__words[0];
        }

        data = a3;
        if (*(&a3->var0.var1.__rep_.__l + 23) < 0)
        {
          data = a3->var0.var1.__rep_.__l.__data_;
        }

        *buf = 136315394;
        v26 = v14;
        v27 = 2080;
        v28 = data;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[TelephonyStateRelay] Changing homeCarrierBundleVersion from %s to %s", buf, 0x16u);
      }

      std::string::operator=(p_subscriberCarrierBundleVersion, a3);
      telephonyStateDelegate = self->_telephonyStateDelegate;
      sub_10009B928(v24, &a3->var0.var0);
      (*(telephonyStateDelegate->var0 + 8))(&v22, telephonyStateDelegate, v24);
      v17 = v22;
      v22 = 0;

      if (v24[24] == 1 && v24[23] < 0)
      {
        v18 = v24;
LABEL_27:
        operator delete(*v18);
      }
    }
  }

  else
  {
    std::string::assign(&self->_subscriberCarrierBundleVersion, "");
    v19 = self->_telephonyStateDelegate;
    sub_10009B928(v23, &a3->var0.var0);
    (*(v19->var0 + 8))(&v21, v19, v23);
    v20 = v21;
    v21 = 0;

    if (v23[24] == 1 && (v23[23] & 0x80000000) != 0)
    {
      v18 = v23;
      goto LABEL_27;
    }
  }
}

- (void)_updateServingCarrierName:(optional<std::string> *)a3
{
  p_servingCarrierName = &self->_servingCarrierName;
  if (a3[1].var0.var0 == 1)
  {
    v6 = *(&self->_servingCarrierName.__rep_.__l + 23);
    if (v6 >= 0)
    {
      size = *(&self->_servingCarrierName.__rep_.__l + 23);
    }

    else
    {
      size = self->_servingCarrierName.__rep_.__l.__size_;
    }

    v8 = *(&a3->var0.var1.__rep_.__l + 23);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = a3->var0.var1.__rep_.__l.__size_;
    }

    if (size != v8 || (v6 >= 0 ? (v10 = &self->_servingCarrierName) : (v10 = p_servingCarrierName->__r_.__value_.__r.__words[0]), (v11 = a3->var0.var1.__rep_.__l.__data_, v9 >= 0) ? (v12 = a3) : (v12 = a3->var0.var1.__rep_.__l.__data_), memcmp(v10, v12, size)))
    {
      v13 = qword_100192D98;
      if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_INFO))
      {
        v14 = p_servingCarrierName;
        if (*(&self->_servingCarrierName.__rep_.__l + 23) < 0)
        {
          v14 = p_servingCarrierName->__r_.__value_.__r.__words[0];
        }

        data = a3;
        if (*(&a3->var0.var1.__rep_.__l + 23) < 0)
        {
          data = a3->var0.var1.__rep_.__l.__data_;
        }

        *buf = 136315394;
        v26 = v14;
        v27 = 2080;
        v28 = data;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[TelephonyStateRelay] Changing servingCarrierName from %s to %s", buf, 0x16u);
      }

      std::string::operator=(p_servingCarrierName, a3);
      telephonyStateDelegate = self->_telephonyStateDelegate;
      sub_10009B928(v24, &a3->var0.var0);
      (*(telephonyStateDelegate->var0 + 10))(&v22, telephonyStateDelegate, v24);
      v17 = v22;
      v22 = 0;

      if (v24[24] == 1 && v24[23] < 0)
      {
        v18 = v24;
LABEL_27:
        operator delete(*v18);
      }
    }
  }

  else
  {
    std::string::assign(&self->_servingCarrierName, "");
    v19 = self->_telephonyStateDelegate;
    sub_10009B928(v23, &a3->var0.var0);
    (*(v19->var0 + 10))(&v21, v19, v23);
    v20 = v21;
    v21 = 0;

    if (v23[24] == 1 && (v23[23] & 0x80000000) != 0)
    {
      v18 = v23;
      goto LABEL_27;
    }
  }
}

- (void)_updateIsDualSim:(optional<BOOL>)a3
{
  (*(self->_telephonyStateDelegate->var0 + 11))(&v4);
  v3 = v4;
  v4 = 0;
}

- (int)cellularInternetConnectionStateAsEnum:(int)a3
{
  if (a3 > 3)
  {
    return 0;
  }

  else
  {
    return dword_100145030[a3];
  }
}

- (char)formatSignalBars:(id)a3
{
  v3 = [a3 displayBars];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 intValue];
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

- (basic_string<char,)formatInternetConnection:(std::allocator<char>> *__return_ptr)retstr
{
  v2 = v1;
  memset(retstr, 170, sizeof(basic_string<char, std::char_traits<char>, std::allocator<char>>));
  result = sub_10000459C(retstr, "Unknown");
  if ((v2 - 1) < 4)
  {
    return std::string::assign(retstr, off_100185D20[v2 - 1]);
  }

  return result;
}

- (basic_string<char,)formatCellularRat:(std::allocator<char>> *__return_ptr)retstr forDeploymentType:
{
  v4 = v3;
  v5 = v1;
  v6 = v2;
  v7 = v4;
  memset(&v11, 0, sizeof(v11));
  if ([v6 isEqualToString:kCTCellMonitorRadioAccessTechnologyLTE])
  {
    std::string::assign(&v11, "LTE");
    if (!v7)
    {
      goto LABEL_24;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || [v7 intValue] <= 0)
    {
      goto LABEL_24;
    }

    v8 = "NR NSA";
  }

  else if ([v6 isEqualToString:kCTCellMonitorRadioAccessTechnologyNR])
  {
    v8 = "NR";
  }

  else if ([v6 isEqualToString:kCTCellMonitorRadioAccessTechnologyUMTS])
  {
    v8 = "UMTS";
  }

  else if ([v6 isEqualToString:kCTCellMonitorRadioAccessTechnologyUTRAN])
  {
    v8 = "UTRAN";
  }

  else if ([v6 isEqualToString:kCTCellMonitorRadioAccessTechnologyGSM])
  {
    v8 = "GSM";
  }

  else if ([v6 isEqualToString:kCTCellMonitorRadioAccessTechnologyCDMA1x])
  {
    v8 = "CDMA1x";
  }

  else if ([v6 isEqualToString:kCTCellMonitorRadioAccessTechnologyCDMAEVDO])
  {
    v8 = "CDMAEVDO";
  }

  else if ([v6 isEqualToString:kCTCellMonitorRadioAccessTechnologyCDMAHybrid])
  {
    v8 = "CDMAHybrid";
  }

  else if ([v6 isEqualToString:kCTCellMonitorRadioAccessTechnologyUTRAN2])
  {
    v8 = "TDSCDMA";
  }

  else
  {
    v8 = "RATUnknown";
  }

  std::string::assign(&v11, v8);
LABEL_24:
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_1000078D8(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v11;
  }

  [v5 formatCellularRAT:&__p];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  return result;
}

- (basic_string<char,)formatCellularRAT:(std::allocator<char>> *__return_ptr)retstr
{
  v3 = v2;
  v5 = result[7].__rep_.__s.__data_[8];
  if (v5 == 3)
  {
    v6 = "LTE NTN";
    goto LABEL_5;
  }

  if (v5 == 2)
  {
    v6 = "Satellite";
LABEL_5:
    result = std::string::assign(v2, v6);
  }

  *retstr->__rep_.__s.__data_ = *&v3->__r_.__value_.__l.__data_;
  *(&retstr->__rep_.__l + 2) = *(&v3->__r_.__value_.__l + 2);
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  return result;
}

- (BOOL)isStewieActive:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isStewieActive];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  *(self + 104) = 0u;
  *(self + 120) = 0u;
  *(self + 136) = 0u;
  *(self + 152) = 0u;
  *(self + 21) = 0;
  return self;
}

@end