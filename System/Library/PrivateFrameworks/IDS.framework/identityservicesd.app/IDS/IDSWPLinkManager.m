@interface IDSWPLinkManager
+ (id)sharedInstance;
- (BOOL)isScanningOrAdvertising;
- (IDSWPLinkManager)init;
- (unint64_t)sendData:(id)a3 peerID:(id)a4;
- (void)_checkWPContinuitySetup;
- (void)_cleanup;
- (void)_continuityDidUpdateStateWithStateValue:(int64_t)a3;
- (void)addConnectivityDelegate:(id)a3;
- (void)clientInstanceCreatedWithMessageContext:(id)a3;
- (void)clientInstancesRemoved;
- (void)connectOnMainQueueToPeer:(id)a3;
- (void)connectToPeer:(id)a3;
- (void)continuity:(id)a3 didConnectToPeer:(id)a4 error:(id)a5;
- (void)continuity:(id)a3 didDisconnectFromPeer:(id)a4 error:(id)a5;
- (void)continuity:(id)a3 didDiscoverType:(int64_t)a4 withData:(id)a5 fromPeer:(id)a6;
- (void)continuity:(id)a3 didFailToStartAdvertisingOfType:(int64_t)a4 withError:(id)a5;
- (void)continuity:(id)a3 didFailToStartScanningForType:(int64_t)a4 WithError:(id)a5;
- (void)continuity:(id)a3 didReceiveData:(id)a4 fromPeer:(id)a5;
- (void)continuity:(id)a3 didSendData:(id)a4 toPeer:(id)a5 error:(id)a6;
- (void)continuityDidStartAdvertisingOfType:(id)a3 advertisingType:(int64_t)a4;
- (void)continuityDidStartScanningForType:(id)a3 scanningType:(int64_t)a4;
- (void)continuityDidStopAdvertisingOfType:(id)a3 advertisingType:(int64_t)a4;
- (void)continuityDidStopAdvertisingOfType:(id)a3 advertisingType:(int64_t)a4 withError:(id)a5;
- (void)continuityDidStopScanningForType:(id)a3 scanningType:(int64_t)a4;
- (void)continuityDidUpdateState:(id)a3;
- (void)disconnectFromPeer:(id)a3;
- (void)disconnectOnMainQueueFromPeer:(id)a3;
- (void)removeLink:(id)a3;
- (void)sendReset;
- (void)setAlwaysConnectedForCBUUID:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setDelegateOnMainQueue:(id)a3;
- (void)startAdvertisingOfType:(int64_t)a3 withData:(id)a4 withOptions:(id)a5;
- (void)startScanningForType:(int64_t)a3 withData:(id)a4 mask:(id)a5;
- (void)startScanningForType:(int64_t)a3 withData:(id)a4 mask:(id)a5 boostedScan:(BOOL)a6 duplicates:(BOOL)a7;
- (void)startScanningForType:(int64_t)a3 withData:(id)a4 mask:(id)a5 peers:(id)a6;
- (void)startScanningForType:(int64_t)a3 withData:(id)a4 mask:(id)a5 peers:(id)a6 boostedScan:(BOOL)a7 duplicates:(BOOL)a8;
- (void)stopAdvertisingOfType:(int64_t)a3;
- (void)stopScanningForType:(int64_t)a3;
- (void)systemDidFastUserSwitchOut;
@end

@implementation IDSWPLinkManager

+ (id)sharedInstance
{
  if (qword_100CBD428 != -1)
  {
    sub_100920950();
  }

  v3 = qword_100CBD430;

  return v3;
}

- (IDSWPLinkManager)init
{
  v12.receiver = self;
  v12.super_class = IDSWPLinkManager;
  v2 = [(IDSWPLinkManager *)&v12 init];
  if (v2)
  {
    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "============= New WPLinkManager %@ starting =============", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v11 = v2;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v11 = v2;
          _IDSLogV();
        }
      }
    }

    v2->_state = 0;
    v4 = +[NSHashTable weakObjectsHashTable];
    connectivityDelegates = v2->_connectivityDelegates;
    v2->_connectivityDelegates = v4;

    v6 = objc_alloc_init(NSMutableDictionary);
    linkIDToLink = v2->_linkIDToLink;
    v2->_linkIDToLink = v6;

    v8 = +[IMSystemMonitor sharedInstance];
    [v8 addListener:v2];

    v9 = +[IMSystemMonitor sharedInstance];
    v2->_systemIsFastUserSwitched = [v9 isFastUserSwitched];
  }

  return v2;
}

- (void)_checkWPContinuitySetup
{
  if (self->_systemIsFastUserSwitched || (WeakRetained = objc_loadWeakRetained(&self->_delegate), WeakRetained, !WeakRetained))
  {
    if (self->_continuity)
    {
      v10 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        continuity = self->_continuity;
        *buf = 138412290;
        v17 = continuity;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Invalidating WPContinuity instance %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v15 = self->_continuity;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v15 = self->_continuity;
            _IDSLogV();
          }
        }
      }

      v13 = self->_continuity;
      p_continuity = &self->_continuity;
      [(WPContinuity *)v13 invalidate];
      v14 = *p_continuity;
      *p_continuity = 0;
    }
  }

  else if (!self->_continuity)
  {
    v4 = [WPContinuity alloc];
    v5 = im_primary_queue();
    v6 = [v4 initWithDelegate:self queue:v5];
    v7 = self->_continuity;
    self->_continuity = v6;

    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_continuity;
      *buf = 138412290;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Created a new WPContinuity instance %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = im_primary_queue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10047B0D4;
  v7[3] = &unk_100BD6E40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)setDelegateOnMainQueue:(id)a3
{
  objc_storeWeak(&self->_delegate, a3);

  [(IDSWPLinkManager *)self _checkWPContinuitySetup];
}

- (BOOL)isScanningOrAdvertising
{
  v3 = [(NSMutableSet *)self->_linkIDsAlwaysConnected count];
  v4 = &v3[[(NSMutableSet *)self->_scanningTypes count]];
  return [(NSMutableSet *)self->_advertisingTypes count]+ v4 != 0;
}

- (void)addConnectivityDelegate:(id)a3
{
  v4 = a3;
  [(NSHashTable *)self->_connectivityDelegates addObject:v4];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = self->_linkIDsAlwaysConnected;
  v5 = [(NSMutableSet *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = im_primary_queue();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_10047B2FC;
        block[3] = &unk_100BD6E18;
        v13 = v4;
        v14 = self;
        v15 = v9;
        dispatch_async(v10, block);

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableSet *)obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

- (void)setAlwaysConnectedForCBUUID:(id)a3
{
  v4 = a3;
  v5 = im_primary_queue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10047B3C8;
  v7[3] = &unk_100BD6E40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)clientInstanceCreatedWithMessageContext:(id)a3
{
  v4 = a3;
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "client instance created", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  v6 = +[IDSDaemon sharedInstance];
  v7 = [v6 broadcasterForEntitlement:kIDSContinuityEntitlement messageContext:v4];

  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    state = self->_state;
    if (state > 3)
    {
      v10 = "UnexpectedState";
    }

    else
    {
      v10 = (&off_100BDD100)[state];
    }

    *buf = 136315138;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "calling continuityDidUpdateStateToState:%s", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v11 = self->_state;
    v12 = v11 > 3 ? "UnexpectedState" : (&off_100BDD100)[v11];
    v15 = v12;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      v13 = self->_state;
      if (v13 > 3)
      {
        v14 = "UnexpectedState";
      }

      else
      {
        v14 = (&off_100BDD100)[v13];
      }

      v15 = v14;
      _IDSLogV();
    }
  }

  [v7 continuityDidUpdateStateToState:{self->_state, v15}];
}

- (void)clientInstancesRemoved
{
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    advertisingTypes = self->_advertisingTypes;
    scanningTypes = self->_scanningTypes;
    *buf = 138412546;
    v38 = scanningTypes;
    v39 = 2112;
    v40 = advertisingTypes;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "all client instances removed, currently scanning: %@   currently advertising: %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v24 = self->_scanningTypes;
      v26 = self->_advertisingTypes;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v24 = self->_scanningTypes;
        v26 = self->_advertisingTypes;
        _IDSLogV();
      }
    }
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = [(NSMutableSet *)self->_advertisingTypes copy:v24];
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v7)
  {
    v8 = *v32;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v31 + 1) + 8 * i) integerValue];
        v11 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = "UnexpectedType";
          if (v10 <= 2)
          {
            v12 = (&off_100BDD120)[v10];
          }

          *buf = 136315138;
          v38 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "  => Stopping advertisement for type: %s", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
        {
          v13 = "UnexpectedType";
          if (v10 <= 2)
          {
            v13 = (&off_100BDD120)[v10];
          }

          v25 = v13;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v14 = "UnexpectedType";
            if (v10 <= 2)
            {
              v14 = (&off_100BDD120)[v10];
            }

            v25 = v14;
            _IDSLogV();
          }
        }

        [(IDSWPLinkManager *)self stopAdvertisingOfType:v10, v25];
      }

      v7 = [v6 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v7);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = [(NSMutableSet *)self->_scanningTypes copy];
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v16)
  {
    v17 = *v28;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = [*(*(&v27 + 1) + 8 * j) integerValue];
        v20 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = "UnexpectedType";
          if (v19 <= 2)
          {
            v21 = (&off_100BDD120)[v19];
          }

          *buf = 136315138;
          v38 = v21;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "  => Stopping scanning for type: %s", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
        {
          v22 = "UnexpectedType";
          if (v19 <= 2)
          {
            v22 = (&off_100BDD120)[v19];
          }

          v25 = v22;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v23 = "UnexpectedType";
            if (v19 <= 2)
            {
              v23 = (&off_100BDD120)[v19];
            }

            v25 = v23;
            _IDSLogV();
          }
        }

        [(IDSWPLinkManager *)self stopScanningForType:v19, v25];
      }

      v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v16);
  }
}

- (void)startAdvertisingOfType:(int64_t)a3 withData:(id)a4 withOptions:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (a3 > 2)
    {
      v11 = "UnexpectedType";
    }

    else
    {
      v11 = (&off_100BDD120)[a3];
    }

    *buf = 136315650;
    v27 = v11;
    v28 = 2112;
    v29 = v8;
    v30 = 2112;
    v31 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "startAdvertisingOfType:%s withData:%@ withOptions:%@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v12 = a3 > 2 ? "UnexpectedType" : (&off_100BDD120)[a3];
    v24 = v8;
    v25 = v9;
    v23 = v12;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      if (a3 > 2)
      {
        v13 = "UnexpectedType";
      }

      else
      {
        v13 = (&off_100BDD120)[a3];
      }

      v24 = v8;
      v25 = v9;
      v23 = v13;
      _IDSLogV();
    }
  }

  if (self->_state != 3)
  {
    v14 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "  => Device not powered on", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }

  if (a3 >= 3)
  {
    v15 = 3;
  }

  else
  {
    v15 = a3;
  }

  [(WPContinuity *)self->_continuity startAdvertisingOfType:v15 withData:v8, v23, v24, v25];
  advertisingTypes = self->_advertisingTypes;
  v17 = [NSNumber numberWithInteger:a3];
  LOBYTE(advertisingTypes) = [(NSMutableSet *)advertisingTypes containsObject:v17];

  if ((advertisingTypes & 1) == 0)
  {
    v18 = self->_advertisingTypes;
    if (!v18)
    {
      v19 = objc_alloc_init(NSMutableSet);
      v21 = self->_advertisingTypes;
      p_advertisingTypes = &self->_advertisingTypes;
      *p_advertisingTypes = v19;

      v18 = *p_advertisingTypes;
    }

    v22 = [NSNumber numberWithInteger:a3];
    [(NSMutableSet *)v18 addObject:v22];
  }
}

- (void)stopAdvertisingOfType:(int64_t)a3
{
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (a3 > 2)
    {
      v6 = "UnexpectedType";
    }

    else
    {
      v6 = (&off_100BDD120)[a3];
    }

    *buf = 136315138;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "stopAdvertisingOfType:%s", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v7 = a3 > 2 ? "UnexpectedType" : (&off_100BDD120)[a3];
    v15 = v7;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      if (a3 > 2)
      {
        v8 = "UnexpectedType";
      }

      else
      {
        v8 = (&off_100BDD120)[a3];
      }

      v15 = v8;
      _IDSLogV();
    }
  }

  if (a3 >= 3)
  {
    v9 = 3;
  }

  else
  {
    v9 = a3;
  }

  [(WPContinuity *)self->_continuity stopAdvertisingOfType:v9, v15];
  advertisingTypes = self->_advertisingTypes;
  v11 = [NSNumber numberWithInteger:a3];
  LODWORD(advertisingTypes) = [(NSMutableSet *)advertisingTypes containsObject:v11];

  if (advertisingTypes)
  {
    v12 = self->_advertisingTypes;
    v13 = [NSNumber numberWithInteger:a3];
    [(NSMutableSet *)v12 removeObject:v13];

    if (![(NSMutableSet *)self->_advertisingTypes count])
    {
      v14 = self->_advertisingTypes;
      self->_advertisingTypes = 0;
    }
  }
}

- (void)startScanningForType:(int64_t)a3 withData:(id)a4 mask:(id)a5 peers:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    if (a3 > 2)
    {
      v14 = "UnexpectedType";
    }

    else
    {
      v14 = (&off_100BDD120)[a3];
    }

    v15 = IMLoggingStringForArray();
    *buf = 136315906;
    v34 = v14;
    v35 = 2112;
    v36 = v10;
    v37 = 2112;
    v38 = v11;
    v39 = 2112;
    v40 = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "startScanningForType:%s withData:%@ mask:%@ peers: %@", buf, 0x2Au);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v16 = a3 > 2 ? "UnexpectedType" : (&off_100BDD120)[a3];
    IMLoggingStringForArray();
    v32 = v31 = v11;
    v29 = v16;
    v30 = v10;
    _IDSLogTransport();

    if (_IDSShouldLog())
    {
      if (a3 > 2)
      {
        v17 = "UnexpectedType";
      }

      else
      {
        v17 = (&off_100BDD120)[a3];
      }

      IMLoggingStringForArray();
      v32 = v31 = v11;
      v29 = v17;
      v30 = v10;
      _IDSLogV();
    }
  }

  if (self->_state != 3)
  {
    v18 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "  => Device not powered on", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }

  v19 = [v12 __imArrayByApplyingBlock:{&stru_100BDD138, v29, v30, v31, v32}];

  continuity = self->_continuity;
  if (a3 >= 3)
  {
    v21 = 3;
  }

  else
  {
    v21 = a3;
  }

  if (v11)
  {
    [(WPContinuity *)continuity startScanningForType:v21 withData:v10 mask:v11 peers:v19];
  }

  else
  {
    [(WPContinuity *)continuity startScanningForType:v21 withData:v10 peers:v19];
  }

  scanningTypes = self->_scanningTypes;
  v23 = [NSNumber numberWithInteger:a3];
  LOBYTE(scanningTypes) = [(NSMutableSet *)scanningTypes containsObject:v23];

  if ((scanningTypes & 1) == 0)
  {
    v24 = self->_scanningTypes;
    if (!v24)
    {
      v25 = objc_alloc_init(NSMutableSet);
      v27 = self->_scanningTypes;
      p_scanningTypes = &self->_scanningTypes;
      *p_scanningTypes = v25;

      v24 = *p_scanningTypes;
    }

    v28 = [NSNumber numberWithInteger:a3];
    [(NSMutableSet *)v24 addObject:v28];
  }
}

- (void)startScanningForType:(int64_t)a3 withData:(id)a4 mask:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (a3 > 2)
    {
      v11 = "UnexpectedType";
    }

    else
    {
      v11 = (&off_100BDD120)[a3];
    }

    *buf = 136315650;
    v28 = v11;
    v29 = 2112;
    v30 = v8;
    v31 = 2112;
    v32 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "startScanningForType:%s withData:%@ mask:%@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v12 = a3 > 2 ? "UnexpectedType" : (&off_100BDD120)[a3];
    v25 = v8;
    v26 = v9;
    v24 = v12;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      if (a3 > 2)
      {
        v13 = "UnexpectedType";
      }

      else
      {
        v13 = (&off_100BDD120)[a3];
      }

      v25 = v8;
      v26 = v9;
      v24 = v13;
      _IDSLogV();
    }
  }

  if (self->_state != 3)
  {
    v14 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "  => Device not powered on", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }

  continuity = self->_continuity;
  if (a3 >= 3)
  {
    v16 = 3;
  }

  else
  {
    v16 = a3;
  }

  if (v9)
  {
    [(WPContinuity *)continuity startScanningForType:v16 withData:v8 mask:v9 peers:0];
  }

  else
  {
    [(WPContinuity *)continuity startScanningForType:v16 withData:v8 peers:0];
  }

  scanningTypes = self->_scanningTypes;
  v18 = [NSNumber numberWithInteger:a3, v24, v25, v26];
  LOBYTE(scanningTypes) = [(NSMutableSet *)scanningTypes containsObject:v18];

  if ((scanningTypes & 1) == 0)
  {
    v19 = self->_scanningTypes;
    if (!v19)
    {
      v20 = objc_alloc_init(NSMutableSet);
      v22 = self->_scanningTypes;
      p_scanningTypes = &self->_scanningTypes;
      *p_scanningTypes = v20;

      v19 = *p_scanningTypes;
    }

    v23 = [NSNumber numberWithInteger:a3];
    [(NSMutableSet *)v19 addObject:v23];
  }
}

- (void)startScanningForType:(int64_t)a3 withData:(id)a4 mask:(id)a5 peers:(id)a6 boostedScan:(BOOL)a7 duplicates:(BOOL)a8
{
  v44 = a8;
  v8 = a7;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if (a3 > 2)
    {
      v17 = "UnexpectedType";
    }

    else
    {
      v17 = (&off_100BDD120)[a3];
    }

    v18 = IMLoggingStringForArray();
    v19 = v18;
    v20 = @"NO";
    *buf = 136316418;
    v46 = v17;
    v47 = 2112;
    if (v8)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v48 = v13;
    if (v44)
    {
      v20 = @"YES";
    }

    v49 = 2112;
    v50 = v14;
    v51 = 2112;
    v52 = v18;
    v53 = 2112;
    v54 = v21;
    v55 = 2112;
    v56 = v20;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "startScanningForType:%s withData:%@ mask:%@ peers:%@ boostedScan:%@ duplicates:%@", buf, 0x3Eu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v22 = a3 > 2 ? "UnexpectedType" : (&off_100BDD120)[a3];
    v23 = IMLoggingStringForArray();
    v24 = v23;
    v25 = v8 ? @"YES" : @"NO";
    v26 = v44 ? @"YES" : @"NO";
    v42 = v25;
    v43 = v26;
    v40 = v14;
    v41 = v23;
    v38 = v22;
    v39 = v13;
    _IDSLogTransport();

    if (_IDSShouldLog())
    {
      if (a3 > 2)
      {
        v27 = "UnexpectedType";
      }

      else
      {
        v27 = (&off_100BDD120)[a3];
      }

      IMLoggingStringForArray();
      v42 = v25;
      v43 = v26;
      v41 = v40 = v14;
      v38 = v27;
      v39 = v13;
      _IDSLogV();
    }
  }

  if (self->_state != 3)
  {
    v28 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "  => Device not powered on", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }

  v29 = [v15 __imArrayByApplyingBlock:{&stru_100BDD138, v38, v39, v40, v41, v42, v43}];

  if (a3 >= 3)
  {
    v30 = 3;
  }

  else
  {
    v30 = a3;
  }

  [(WPContinuity *)self->_continuity startScanningForType:v30 withData:v13 mask:v14 peers:v29 boostedScan:v8 duplicates:v44];
  scanningTypes = self->_scanningTypes;
  v32 = [NSNumber numberWithInteger:a3];
  LOBYTE(scanningTypes) = [(NSMutableSet *)scanningTypes containsObject:v32];

  if ((scanningTypes & 1) == 0)
  {
    v33 = self->_scanningTypes;
    if (!v33)
    {
      v34 = objc_alloc_init(NSMutableSet);
      v36 = self->_scanningTypes;
      p_scanningTypes = &self->_scanningTypes;
      *p_scanningTypes = v34;

      v33 = *p_scanningTypes;
    }

    v37 = [NSNumber numberWithInteger:a3];
    [(NSMutableSet *)v33 addObject:v37];
  }
}

- (void)startScanningForType:(int64_t)a3 withData:(id)a4 mask:(id)a5 boostedScan:(BOOL)a6 duplicates:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v12 = a4;
  v13 = a5;
  v14 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if (a3 > 2)
    {
      v15 = "UnexpectedType";
    }

    else
    {
      v15 = (&off_100BDD120)[a3];
    }

    v16 = @"NO";
    *buf = 136316162;
    v37 = v15;
    v38 = 2112;
    if (v8)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    v39 = v12;
    if (v7)
    {
      v16 = @"YES";
    }

    v40 = 2112;
    v41 = v13;
    v42 = 2112;
    v43 = v17;
    v44 = 2112;
    v45 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "startScanningForType:%s withData:%@ mask:%@ boostedScan:%@ duplicates:%@", buf, 0x34u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v18 = a3 > 2 ? "UnexpectedType" : (&off_100BDD120)[a3];
    v19 = v8 ? @"YES" : @"NO";
    v20 = v7 ? @"YES" : @"NO";
    v34 = v19;
    v35 = v20;
    v32 = v12;
    v33 = v13;
    v31 = v18;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      if (a3 > 2)
      {
        v21 = "UnexpectedType";
      }

      else
      {
        v21 = (&off_100BDD120)[a3];
      }

      v34 = v19;
      v35 = v20;
      v32 = v12;
      v33 = v13;
      v31 = v21;
      _IDSLogV();
    }
  }

  if (self->_state != 3)
  {
    v22 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "  => Device not powered on", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }
  }

  if (a3 >= 3)
  {
    v23 = 3;
  }

  else
  {
    v23 = a3;
  }

  [(WPContinuity *)self->_continuity startScanningForType:v23 withData:v12 mask:v13 peers:0 boostedScan:v8 duplicates:v7, v31, v32, v33, v34, v35];
  scanningTypes = self->_scanningTypes;
  v25 = [NSNumber numberWithInteger:a3];
  LOBYTE(scanningTypes) = [(NSMutableSet *)scanningTypes containsObject:v25];

  if ((scanningTypes & 1) == 0)
  {
    v26 = self->_scanningTypes;
    if (!v26)
    {
      v27 = objc_alloc_init(NSMutableSet);
      v29 = self->_scanningTypes;
      p_scanningTypes = &self->_scanningTypes;
      *p_scanningTypes = v27;

      v26 = *p_scanningTypes;
    }

    v30 = [NSNumber numberWithInteger:a3];
    [(NSMutableSet *)v26 addObject:v30];
  }
}

- (void)stopScanningForType:(int64_t)a3
{
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (a3 > 2)
    {
      v6 = "UnexpectedType";
    }

    else
    {
      v6 = (&off_100BDD120)[a3];
    }

    *buf = 136315138;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "stopScanningForType:%s", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v7 = a3 > 2 ? "UnexpectedType" : (&off_100BDD120)[a3];
    v15 = v7;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      if (a3 > 2)
      {
        v8 = "UnexpectedType";
      }

      else
      {
        v8 = (&off_100BDD120)[a3];
      }

      v15 = v8;
      _IDSLogV();
    }
  }

  if (a3 >= 3)
  {
    v9 = 3;
  }

  else
  {
    v9 = a3;
  }

  [(WPContinuity *)self->_continuity stopScanningForType:v9, v15];
  scanningTypes = self->_scanningTypes;
  v11 = [NSNumber numberWithInteger:a3];
  LODWORD(scanningTypes) = [(NSMutableSet *)scanningTypes containsObject:v11];

  if (scanningTypes)
  {
    v12 = self->_scanningTypes;
    v13 = [NSNumber numberWithInteger:a3];
    [(NSMutableSet *)v12 removeObject:v13];

    if (![(NSMutableSet *)self->_scanningTypes count])
    {
      v14 = self->_scanningTypes;
      self->_scanningTypes = 0;
    }
  }
}

- (void)connectOnMainQueueToPeer:(id)a3
{
  v4 = a3;
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    continuity = self->_continuity;
    *buf = 138543618;
    v41 = v4;
    v42 = 2112;
    v43 = continuity;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "connectToPeer %{public}@, continuity %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v31 = v4;
      v33 = self->_continuity;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v31 = v4;
        v33 = self->_continuity;
        _IDSLogV();
      }
    }
  }

  if (v4)
  {
    if (self->_continuity)
    {
      v7 = +[IDSDevicePolicyController sharedInstance];
      v8 = [v7 shouldBlackOutDeviceWithCbuuid:v4];

      if ((v8 & 1) == 0)
      {
        if (self->_state == 3)
        {
          v9 = [(NSMutableDictionary *)self->_linkIDToLink objectForKey:v4];

          if (v9)
          {
            v10 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v41 = v4;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "already connected to %{public}@.", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  _IDSLogV();
                }
              }
            }

            goto LABEL_51;
          }

          linkIDsConnecting = self->_linkIDsConnecting;
          if (!linkIDsConnecting)
          {
            Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            v18 = self->_linkIDsConnecting;
            self->_linkIDsConnecting = Mutable;

            linkIDsConnecting = self->_linkIDsConnecting;
          }

          v19 = [(NSMutableDictionary *)linkIDsConnecting objectForKey:v4, v31, v33];
          v20 = v19;
          if (v19 && ([v19 timeIntervalSinceNow], fabs(v21) < 10.0))
          {
            v22 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v23 = [(NSMutableDictionary *)self->_linkIDsConnecting objectForKey:v4];
              [v23 timeIntervalSinceNow];
              *buf = 138543618;
              v41 = v4;
              v42 = 2048;
              v43 = v24;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "already connecting to %{public}@  (Time: %f)", buf, 0x16u);
            }

            if (!os_log_shim_legacy_logging_enabled())
            {
              goto LABEL_50;
            }

            if (!_IDSShouldLogTransport())
            {
              goto LABEL_50;
            }

            v25 = [(NSMutableDictionary *)self->_linkIDsConnecting objectForKey:v4];
            [v25 timeIntervalSinceNow];
            v34 = v26;
            _IDSLogTransport();

            if (!_IDSShouldLog())
            {
              goto LABEL_50;
            }

            v27 = [(NSMutableDictionary *)self->_linkIDsConnecting objectForKey:v4, v4, v34];
            [v27 timeIntervalSinceNow];
            _IDSLogV();
          }

          else
          {
            v28 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v41 = v4;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "*** starting connection to %{public}@", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                v32 = v4;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  v32 = v4;
                  _IDSLogV();
                }
              }
            }

            v29 = self->_linkIDsConnecting;
            v30 = +[NSDate date];
            [(NSMutableDictionary *)v29 setObject:v30 forKey:v4];

            v27 = [[NSUUID alloc] initWithUUIDString:v4];
            kdebug_trace();
            [(WPContinuity *)self->_continuity connectToPeer:v27];
          }

LABEL_50:
          goto LABEL_51;
        }

        v11 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "  => Device not powered on", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              _IDSLogV();
            }
          }
        }

        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v12 = self->_connectivityDelegates;
        v13 = [(NSHashTable *)v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v13)
        {
          v14 = *v36;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v36 != v14)
              {
                objc_enumerationMutation(v12);
              }

              [*(*(&v35 + 1) + 8 * i) manager:self cbuuidDidFailToConnect:v4 withReason:{0, v31, v33, v35}];
            }

            v13 = [(NSHashTable *)v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
          }

          while (v13);
        }
      }
    }
  }

LABEL_51:
}

- (void)connectToPeer:(id)a3
{
  v4 = a3;
  v5 = im_primary_queue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10047DAFC;
  v7[3] = &unk_100BD6E40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)disconnectOnMainQueueFromPeer:(id)a3
{
  v4 = a3;
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    continuity = self->_continuity;
    *buf = 138543618;
    v27 = v4;
    v28 = 2114;
    v29 = continuity;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "disconnectFromPeer %{public}@, continuity %{public}@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v22 = v4;
      v24 = self->_continuity;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v22 = v4;
        v24 = self->_continuity;
        _IDSLogV();
      }
    }
  }

  if (v4 && self->_continuity)
  {
    linkIDsDisconnecting = self->_linkIDsDisconnecting;
    if (!linkIDsDisconnecting)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v9 = self->_linkIDsDisconnecting;
      self->_linkIDsDisconnecting = Mutable;

      linkIDsDisconnecting = self->_linkIDsDisconnecting;
    }

    v10 = [(NSMutableDictionary *)linkIDsDisconnecting objectForKey:v4, v22, v24];
    v11 = v10;
    if (v10 && ([v10 timeIntervalSinceNow], fabs(v12) < 10.0))
    {
      v13 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [(NSMutableDictionary *)self->_linkIDsDisconnecting objectForKey:v4];
        [v14 timeIntervalSinceNow];
        *buf = 138543618;
        v27 = v4;
        v28 = 2048;
        v29 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "already disconnecting from %{public}@  (Time: %f)", buf, 0x16u);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_27;
      }

      if (!_IDSShouldLogTransport())
      {
        goto LABEL_27;
      }

      v16 = [(NSMutableDictionary *)self->_linkIDsDisconnecting objectForKey:v4];
      [v16 timeIntervalSinceNow];
      v25 = v17;
      _IDSLogTransport();

      if (!_IDSShouldLog())
      {
        goto LABEL_27;
      }

      v18 = [(NSMutableDictionary *)self->_linkIDsDisconnecting objectForKey:v4, v4, v25];
      [v18 timeIntervalSinceNow];
      _IDSLogV();
    }

    else
    {
      v19 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v27 = v4;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "*** starting disconnected from %{public}@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v23 = v4;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v23 = v4;
            _IDSLogV();
          }
        }
      }

      v20 = self->_linkIDsDisconnecting;
      v21 = +[NSDate date];
      [(NSMutableDictionary *)v20 setObject:v21 forKey:v4];

      v18 = [[NSUUID alloc] initWithUUIDString:v4];
      [(WPContinuity *)self->_continuity disconnectFromPeer:v18];
    }

LABEL_27:
  }
}

- (void)disconnectFromPeer:(id)a3
{
  v4 = a3;
  v5 = im_primary_queue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10047DFF0;
  v7[3] = &unk_100BD6E40;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)removeLink:(id)a3
{
  v4 = a3;
  v5 = [v4 linkID];
  v6 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10047E0D0;
  block[3] = &unk_100BD6E18;
  v10 = v4;
  v11 = v5;
  v12 = self;
  v7 = v5;
  v8 = v4;
  dispatch_async(v6, block);
}

- (unint64_t)sendData:(id)a3 peerID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v13 = [v6 length];
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "sendData %luB peerID %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    [v6 length];
    _IDSLogV();
  }

  if (self->_state == 3)
  {
    [(WPContinuity *)self->_continuity sendData:v6 toPeer:v7];
    v9 = 0;
  }

  else
  {
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "  => Device not powered on", buf, 2u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          _IDSLogV();
        }
      }
    }

    v9 = 6;
  }

  return v9;
}

- (void)_cleanup
{
  linkIDToLink = self->_linkIDToLink;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10047E518;
  v6[3] = &unk_100BD95F8;
  v6[4] = self;
  [(NSMutableDictionary *)linkIDToLink enumerateKeysAndObjectsUsingBlock:v6];
  [(NSMutableDictionary *)self->_linkIDToLink removeAllObjects];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained manager:self didPowerStateChange:0];

  v5 = +[IDSUTunDeliveryController sharedInstance];
  [v5 unlockAllContinuityPeers];
}

- (void)systemDidFastUserSwitchOut
{
  self->_systemIsFastUserSwitched = 1;
  [(IDSWPLinkManager *)self _continuityDidUpdateStateWithStateValue:1];

  [(IDSWPLinkManager *)self _checkWPContinuitySetup];
}

- (void)continuityDidUpdateState:(id)a3
{
  v4 = [a3 state];

  [(IDSWPLinkManager *)self _continuityDidUpdateStateWithStateValue:v4];
}

- (void)_continuityDidUpdateStateWithStateValue:(int64_t)a3
{
  self->_state = a3;
  state = a3;
  if (a3 < 2)
  {
    [(NSMutableDictionary *)self->_linkIDsConnecting removeAllObjects];
    linkIDsConnecting = self->_linkIDsConnecting;
    self->_linkIDsConnecting = 0;

    [(NSMutableDictionary *)self->_linkIDsDisconnecting removeAllObjects];
    linkIDsDisconnecting = self->_linkIDsDisconnecting;
    self->_linkIDsDisconnecting = 0;

    state = self->_state;
  }

  if (state <= 2)
  {
    [(IDSWPLinkManager *)self _cleanup];
  }

  v8 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10047E78C;
  block[3] = &unk_100BD75B8;
  block[4] = a3;
  dispatch_async(v8, block);
}

- (void)continuityDidStartAdvertisingOfType:(id)a3 advertisingType:(int64_t)a4
{
  v5 = a3;
  v6 = +[IDSDaemon sharedInstance];
  v7 = [v6 broadcasterForEntitlement:kIDSContinuityEntitlement messageContext:0];

  if (a4 <= 2)
  {
    v8 = a4;
  }

  else
  {
    v8 = 3;
  }

  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (a4 <= 2)
    {
      v10 = (&off_100BDD120)[v8];
    }

    else
    {
      v10 = "UnexpectedType";
    }

    *buf = 136315138;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "calling continuityDidStartAdvertisingOfType:%s", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v11 = a4 <= 2 ? (&off_100BDD120)[v8] : "UnexpectedType";
    v13 = v11;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      if (a4 <= 2)
      {
        v12 = (&off_100BDD120)[v8];
      }

      else
      {
        v12 = "UnexpectedType";
      }

      v13 = v12;
      _IDSLogV();
    }
  }

  [v7 continuityDidStartAdvertisingOfType:{v8, v13}];
}

- (void)continuityDidStopAdvertisingOfType:(id)a3 advertisingType:(int64_t)a4
{
  v5 = a3;
  v6 = +[IDSDaemon sharedInstance];
  v7 = [v6 broadcasterForEntitlement:kIDSContinuityEntitlement messageContext:0];

  if (a4 <= 2)
  {
    v8 = a4;
  }

  else
  {
    v8 = 3;
  }

  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (a4 <= 2)
    {
      v10 = (&off_100BDD120)[v8];
    }

    else
    {
      v10 = "UnexpectedType";
    }

    *buf = 136315138;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "calling continuityDidStopAdvertisingOfType:%s", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v11 = a4 <= 2 ? (&off_100BDD120)[v8] : "UnexpectedType";
    v13 = v11;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      if (a4 <= 2)
      {
        v12 = (&off_100BDD120)[v8];
      }

      else
      {
        v12 = "UnexpectedType";
      }

      v13 = v12;
      _IDSLogV();
    }
  }

  [v7 continuityDidStopAdvertisingOfType:{v8, v13}];
}

- (void)continuityDidStopAdvertisingOfType:(id)a3 advertisingType:(int64_t)a4 withError:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = +[IDSDaemon sharedInstance];
  v10 = [v9 broadcasterForEntitlement:kIDSContinuityEntitlement messageContext:0];

  if (a4 <= 2)
  {
    v11 = a4;
  }

  else
  {
    v11 = 3;
  }

  v12 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if (a4 <= 2)
    {
      v13 = (&off_100BDD120)[v11];
    }

    else
    {
      v13 = "UnexpectedType";
    }

    *buf = 136315394;
    v19 = v13;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "calling continuityDidStopAdvertisingOfType:%s withError:%@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v14 = a4 <= 2 ? (&off_100BDD120)[v11] : "UnexpectedType";
    v16 = v14;
    v17 = v8;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      if (a4 <= 2)
      {
        v15 = (&off_100BDD120)[v11];
      }

      else
      {
        v15 = "UnexpectedType";
      }

      v16 = v15;
      v17 = v8;
      _IDSLogV();
    }
  }

  [v10 continuityDidStopAdvertisingOfType:v11 withError:{v8, v16, v17}];
}

- (void)continuity:(id)a3 didFailToStartAdvertisingOfType:(int64_t)a4 withError:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = +[IDSDaemon sharedInstance];
  v10 = [v9 broadcasterForEntitlement:kIDSContinuityEntitlement messageContext:0];

  if (a4 <= 2)
  {
    v11 = a4;
  }

  else
  {
    v11 = 3;
  }

  v12 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if (a4 <= 2)
    {
      v13 = (&off_100BDD120)[v11];
    }

    else
    {
      v13 = "UnexpectedType";
    }

    *buf = 136315394;
    v19 = v13;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "calling continuityDidFailToStartAdvertisingOfType:%s withError:%@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v14 = a4 <= 2 ? (&off_100BDD120)[v11] : "UnexpectedType";
    v16 = v14;
    v17 = v8;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      if (a4 <= 2)
      {
        v15 = (&off_100BDD120)[v11];
      }

      else
      {
        v15 = "UnexpectedType";
      }

      v16 = v15;
      v17 = v8;
      _IDSLogV();
    }
  }

  [v10 continuityDidFailToStartAdvertisingOfType:v11 withError:{v8, v16, v17}];
}

- (void)continuityDidStartScanningForType:(id)a3 scanningType:(int64_t)a4
{
  v5 = a3;
  v6 = +[IDSDaemon sharedInstance];
  v7 = [v6 broadcasterForEntitlement:kIDSContinuityEntitlement messageContext:0];

  if (a4 <= 2)
  {
    v8 = a4;
  }

  else
  {
    v8 = 3;
  }

  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (a4 <= 2)
    {
      v10 = (&off_100BDD120)[v8];
    }

    else
    {
      v10 = "UnexpectedType";
    }

    *buf = 136315138;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "calling continuityDidStartScanningForType:%s", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v11 = a4 <= 2 ? (&off_100BDD120)[v8] : "UnexpectedType";
    v13 = v11;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      if (a4 <= 2)
      {
        v12 = (&off_100BDD120)[v8];
      }

      else
      {
        v12 = "UnexpectedType";
      }

      v13 = v12;
      _IDSLogV();
    }
  }

  [v7 continuityDidStartScanningForType:{v8, v13}];
}

- (void)continuityDidStopScanningForType:(id)a3 scanningType:(int64_t)a4
{
  v5 = a3;
  v6 = +[IDSDaemon sharedInstance];
  v7 = [v6 broadcasterForEntitlement:kIDSContinuityEntitlement messageContext:0];

  if (a4 <= 2)
  {
    v8 = a4;
  }

  else
  {
    v8 = 3;
  }

  v9 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (a4 <= 2)
    {
      v10 = (&off_100BDD120)[v8];
    }

    else
    {
      v10 = "UnexpectedType";
    }

    *buf = 136315138;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "calling continuityDidStopScanningForType:%s", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v11 = a4 <= 2 ? (&off_100BDD120)[v8] : "UnexpectedType";
    v13 = v11;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      if (a4 <= 2)
      {
        v12 = (&off_100BDD120)[v8];
      }

      else
      {
        v12 = "UnexpectedType";
      }

      v13 = v12;
      _IDSLogV();
    }
  }

  [v7 continuityDidStopScanningForType:{v8, v13}];
}

- (void)continuity:(id)a3 didFailToStartScanningForType:(int64_t)a4 WithError:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = +[IDSDaemon sharedInstance];
  v10 = [v9 broadcasterForEntitlement:kIDSContinuityEntitlement messageContext:0];

  if (a4 <= 2)
  {
    v11 = a4;
  }

  else
  {
    v11 = 3;
  }

  v12 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if (a4 <= 2)
    {
      v13 = (&off_100BDD120)[v11];
    }

    else
    {
      v13 = "UnexpectedType";
    }

    *buf = 136315394;
    v19 = v13;
    v20 = 2112;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "calling continuityDidFailToStartScanningForType:%s withError:%@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v14 = a4 <= 2 ? (&off_100BDD120)[v11] : "UnexpectedType";
    v16 = v14;
    v17 = v8;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      if (a4 <= 2)
      {
        v15 = (&off_100BDD120)[v11];
      }

      else
      {
        v15 = "UnexpectedType";
      }

      v16 = v15;
      v17 = v8;
      _IDSLogV();
    }
  }

  [v10 continuityDidFailToStartScanningForType:v11 withError:{v8, v16, v17}];
}

- (void)continuity:(id)a3 didDiscoverType:(int64_t)a4 withData:(id)a5 fromPeer:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [v12 UUIDString];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = self->_connectivityDelegates;
  v15 = [(NSHashTable *)v14 countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v15)
  {
    v16 = *v30;
LABEL_3:
    v17 = 0;
    while (1)
    {
      if (*v30 != v16)
      {
        objc_enumerationMutation(v14);
      }

      if ([*(*(&v29 + 1) + 8 * v17) manager:self cbuuidDidDiscover:v13])
      {
        break;
      }

      if (v15 == ++v17)
      {
        v15 = [(NSHashTable *)v14 countByEnumeratingWithState:&v29 objects:v39 count:16];
        if (v15)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v18 = +[IDSDaemon sharedInstance];
  v19 = [v18 broadcasterForEntitlement:kIDSContinuityEntitlement messageContext:0];

  if (a4 <= 2)
  {
    v20 = a4;
  }

  else
  {
    v20 = 3;
  }

  v21 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    if (a4 <= 2)
    {
      v22 = (&off_100BDD120)[v20];
    }

    else
    {
      v22 = "UnexpectedType";
    }

    *buf = 136315650;
    v34 = v22;
    v35 = 2112;
    v36 = v11;
    v37 = 2112;
    v38 = v12;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "calling continuityDidDiscoverType:%s withData:%@ fromPeer:%@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v23 = a4 <= 2 ? (&off_100BDD120)[v20] : "UnexpectedType";
    v27 = v11;
    v28 = v12;
    v26 = v23;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      if (a4 <= 2)
      {
        v24 = (&off_100BDD120)[v20];
      }

      else
      {
        v24 = "UnexpectedType";
      }

      v27 = v11;
      v28 = v12;
      v26 = v24;
      _IDSLogV();
    }
  }

  v25 = [v12 UUIDString];
  [v19 continuityDidDiscoverType:v20 withData:v11 fromPeer:v25];
}

- (void)continuity:(id)a3 didConnectToPeer:(id)a4 error:(id)a5
{
  v49 = a3;
  v8 = a4;
  v9 = a5;
  v50 = v8;
  v10 = [(NSHashTable *)v8 UUIDString];
  if (v10)
  {
    kdebug_trace();
    v11 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v62 = v10;
      v63 = 2114;
      v64 = *&v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "didConnectToPeer:%{public}@ error:%{public}@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v47 = v10;
        v48 = *&v9;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v47 = v10;
          v48 = *&v9;
          _IDSLogV();
        }
      }
    }

    if (v9)
    {
      v12 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v62 = v10;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "linkDidFailToConnect for peer %{public}@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v47 = v10;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v47 = v10;
            _IDSLogV();
          }
        }
      }

      v13 = [IDSUTunDeliveryController sharedInstance:v47];
      v14 = [v13 isPeerForPhoneContinuityLocalMessage:v10];

      if (v14)
      {
        v15 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v62 = v10;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Skip unlockContinuityPeer for peer %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v47 = v10;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v47 = v10;
              _IDSLogV();
            }
          }
        }
      }

      else
      {
        v25 = +[IDSUTunDeliveryController sharedInstance];
        [v25 unlockContinuityPeer:v10];
      }

      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v17 = self->_connectivityDelegates;
      v26 = [(NSHashTable *)v17 countByEnumeratingWithState:&v51 objects:v59 count:16];
      if (v26)
      {
        v27 = *v52;
        do
        {
          for (i = 0; i != v26; i = i + 1)
          {
            if (*v52 != v27)
            {
              objc_enumerationMutation(v17);
            }

            [*(*(&v51 + 1) + 8 * i) manager:self cbuuidDidFailToConnect:v10 withReason:{v9, v47}];
          }

          v26 = [(NSHashTable *)v17 countByEnumeratingWithState:&v51 objects:v59 count:16];
        }

        while (v26);
      }
    }

    else
    {
      v17 = [(NSMutableDictionary *)self->_linkIDToLink objectForKey:v10];
      if (!v17)
      {
        v17 = [[IDSBTLELink alloc] initWithWPLinkManager:self withIdentifier:v10];
        v18 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v62 = v17;
          v63 = 2114;
          v64 = *&v10;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "BTLELink %{public}@ created with BTID: %{public}@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v47 = v17;
            v48 = *&v10;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v47 = v17;
              v48 = *&v10;
              _IDSLogV();
            }
          }
        }

        [(NSMutableDictionary *)self->_linkIDToLink setObject:v17 forKey:v10, v47, *&v48, v49];
        kdebug_trace();
        v19 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v62 = v17;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "linkDidConnect %{public}@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v47 = v17;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v47 = v17;
              _IDSLogV();
            }
          }
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained manager:self linkDidConnect:v17];

        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v21 = self->_connectivityDelegates;
        v22 = [(NSHashTable *)v21 countByEnumeratingWithState:&v55 objects:v60 count:16];
        if (v22)
        {
          v23 = *v56;
          do
          {
            for (j = 0; j != v22; j = j + 1)
            {
              if (*v56 != v23)
              {
                objc_enumerationMutation(v21);
              }

              [*(*(&v55 + 1) + 8 * j) manager:self cbuuidDidConnect:v10 isAlwaysConnected:{0, v47}];
            }

            v22 = [(NSHashTable *)v21 countByEnumeratingWithState:&v55 objects:v60 count:16];
          }

          while (v22);
        }
      }
    }

    v29 = [(NSMutableDictionary *)self->_linkIDsConnecting objectForKey:v10];
    v30 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      [v29 timeIntervalSinceNow];
      *buf = 138412546;
      v62 = v50;
      v63 = 2048;
      v64 = fabs(v31);
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "   * Connect for %@ time was: %f", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        [v29 timeIntervalSinceNow];
        v48 = fabs(v32);
        v47 = v50;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          [v29 timeIntervalSinceNow];
          v48 = fabs(v33);
          v47 = v50;
          _IDSLogV();
        }
      }
    }

    [(NSMutableDictionary *)self->_linkIDsConnecting removeObjectForKey:v10, v47, *&v48];
    if (![(NSMutableDictionary *)self->_linkIDsConnecting count])
    {
      linkIDsConnecting = self->_linkIDsConnecting;
      self->_linkIDsConnecting = 0;
    }

    [v29 timeIntervalSinceNow];
    v36 = ceil(fabs(v35) * 1000.0);
    if (v9)
    {
      v37 = [[IDSWiProxConnectionFailedMetric alloc] initWithDuration:v36];
      v38 = +[IDSCoreAnalyticsLogger defaultLogger];
      [v38 logMetric:v37];

      IMSubmitSimpleAWDMetric();
      v39 = [NSString stringWithFormat:@"%@.%@", kIDSCoreAnalyticsIDSDomain, kIDSWiProxConnectionFailureMetricName];
      IMSubmitSimpleCoreAnalyticsMetric();
      v40 = [[IDSWiProxDidConnectToPeerMetric alloc] initWithDuration:v36 resultCode:{objc_msgSend(v9, "code")}];
      v41 = +[IDSCoreAnalyticsLogger defaultLogger];
      [v41 logMetric:v40];

      v42 = +[IDSAWDLogging sharedInstance];
      [v42 IDSWiProxDidConnectToPeer:v36 resultCode:{objc_msgSend(v9, "code")}];
    }

    else
    {
      if (v36 == 0.0)
      {
LABEL_70:
        v45 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          linkIDToLink = self->_linkIDToLink;
          *buf = 138412290;
          v62 = linkIDToLink;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "links = %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              _IDSLogV();
            }
          }
        }

        goto LABEL_77;
      }

      v37 = [[IDSWiProxConnectionSuccessMetric alloc] initWithDuration:v36];
      v43 = +[IDSCoreAnalyticsLogger defaultLogger];
      [v43 logMetric:v37];

      IMSubmitSimpleAWDMetric();
      v39 = [NSString stringWithFormat:@"%@.%@", kIDSCoreAnalyticsIDSDomain, kIDSWiProxConnectionSuccessMetricName];
      IMSubmitSimpleCoreAnalyticsMetric();
      v40 = [[IDSWiProxDidConnectToPeerMetric alloc] initWithDuration:v36 resultCode:0];
      v44 = +[IDSCoreAnalyticsLogger defaultLogger];
      [v44 logMetric:v40];

      v42 = +[IDSAWDLogging sharedInstance];
      [v42 IDSWiProxDidConnectToPeer:v36 resultCode:0];
    }

    goto LABEL_70;
  }

  v16 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v62 = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "didConnectToPeer was called with an invalid linkID: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

LABEL_77:
}

- (void)continuity:(id)a3 didDisconnectFromPeer:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NSMutableDictionary *)v9 UUIDString];
  v12 = [(NSMutableDictionary *)self->_linkIDToLink objectForKey:v11];
  if (v12)
  {
    [(NSMutableDictionary *)self->_linkIDToLink removeObjectForKey:v11];
    v13 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v43 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "linkDidDisconnect %{public}@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v35 = v12;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v35 = v12;
          _IDSLogV();
        }
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained manager:self linkDidDisconnect:v12];

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v15 = self->_connectivityDelegates;
    v16 = [(NSHashTable *)v15 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v16)
    {
      v17 = *v39;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v39 != v17)
          {
            objc_enumerationMutation(v15);
          }

          [*(*(&v38 + 1) + 8 * i) manager:self cbuuidDidDisconnect:{v11, v35}];
        }

        v16 = [(NSHashTable *)v15 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v16);
    }

    v19 = +[IDSUTunDeliveryController sharedInstance];
    [v19 unlockContinuityPeer:v11];
  }

  v20 = [(NSMutableDictionary *)self->_linkIDsDisconnecting objectForKey:v11, v35];
  v21 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    [v20 timeIntervalSinceNow];
    *buf = 138412546;
    v43 = v9;
    v44 = 2048;
    v45 = fabs(v22);
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "   * Disconnect for %@ time was: %f", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      [v20 timeIntervalSinceNow];
      v37 = fabs(v23);
      v36 = v9;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        [v20 timeIntervalSinceNow];
        v37 = fabs(v24);
        v36 = v9;
        _IDSLogV();
      }
    }
  }

  [(NSMutableDictionary *)self->_linkIDsConnecting removeObjectForKey:v11, v36, *&v37, v38];
  [(NSMutableDictionary *)self->_linkIDsDisconnecting removeObjectForKey:v11];
  if (![(NSMutableDictionary *)self->_linkIDsDisconnecting count])
  {
    linkIDsDisconnecting = self->_linkIDsDisconnecting;
    self->_linkIDsDisconnecting = 0;
  }

  if (![(NSMutableDictionary *)self->_linkIDsConnecting count])
  {
    linkIDsConnecting = self->_linkIDsConnecting;
    self->_linkIDsConnecting = 0;
  }

  [v20 timeIntervalSinceNow];
  v28 = ceil(fabs(v27) * 1000.0);
  if (v10)
  {
    v29 = [[IDSWiProxDidDisconnectFromPeerMetric alloc] initWithDuration:v28 resultCode:{objc_msgSend(v10, "code")}];
    v30 = +[IDSCoreAnalyticsLogger defaultLogger];
    [v30 logMetric:v29];

    v31 = +[IDSAWDLogging sharedInstance];
    [v31 IDSWiProxDidDisconnectFromPeer:v28 resultCode:{objc_msgSend(v10, "code")}];
  }

  else
  {
    if (v28 == 0.0)
    {
      goto LABEL_31;
    }

    v29 = [[IDSWiProxDidDisconnectFromPeerMetric alloc] initWithDuration:v28 resultCode:0];
    v32 = +[IDSCoreAnalyticsLogger defaultLogger];
    [v32 logMetric:v29];

    v31 = +[IDSAWDLogging sharedInstance];
    [v31 IDSWiProxDidDisconnectFromPeer:v28 resultCode:0];
  }

LABEL_31:
  v33 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    linkIDToLink = self->_linkIDToLink;
    *buf = 138412290;
    v43 = linkIDToLink;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "links = %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }
}

- (void)continuity:(id)a3 didSendData:(id)a4 toPeer:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    v21 = v12;
    v22 = 2114;
    v23 = v13;
    v24 = 2114;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "didSendData to:%{public}@ error:%{public}@ data:%{public}@", buf, 0x20u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v15 = [[IDSWiProxDidSendDataMetric alloc] initWithResultCode:{objc_msgSend(v13, "code")}];
  v16 = +[IDSCoreAnalyticsLogger defaultLogger];
  [v16 logMetric:v15];

  v17 = +[IDSAWDLogging sharedInstance];
  [v17 IDSWiProxDidSendData:{objc_msgSend(v13, "code")}];

  v18 = [v12 UUIDString];
  v19 = [(NSMutableDictionary *)self->_linkIDToLink objectForKey:v18];
  [v19 setHasSpaceAvailable:1];
}

- (void)continuity:(id)a3 didReceiveData:(id)a4 fromPeer:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 UUIDString];
  v12 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v20 = v11;
    v21 = 2114;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "didReceiveData from:%{public}@ data:%{public}@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    v17 = v11;
    v18 = v9;
    _IDSLogV();
  }

  v13 = [(NSMutableDictionary *)self->_linkIDToLink objectForKey:v11, v17, v18];
  v14 = v13;
  if (v13)
  {
    [v13 didReceiveData:v9];
  }

  else
  {
    v15 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      linkIDToLink = self->_linkIDToLink;
      *buf = 138412546;
      v20 = v11;
      v21 = 2112;
      v22 = linkIDToLink;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "missing peer:%@ links:%@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

- (void)sendReset
{
  v3 = +[IDSDaemon sharedInstance];
  v4 = [v3 broadcasterForEntitlement:kIDSContinuityEntitlement messageContext:0];

  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Reseting client states", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }
  }

  v6 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v17 = "Resetting";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "   calling continuityDidUpdateStateToState:%s", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v14 = "Resetting";
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v14 = "Resetting";
        _IDSLogV();
      }
    }
  }

  [v4 continuityDidUpdateStateToState:{1, v14}];
  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    state = self->_state;
    if (state > 3)
    {
      v9 = "UnexpectedState";
    }

    else
    {
      v9 = (&off_100BDD100)[state];
    }

    *buf = 136315138;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "   calling continuityDidUpdateStateToState:%s", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
  {
    v10 = self->_state;
    v11 = v10 > 3 ? "UnexpectedState" : (&off_100BDD100)[v10];
    v15 = v11;
    _IDSLogTransport();
    if (_IDSShouldLog())
    {
      v12 = self->_state;
      if (v12 > 3)
      {
        v13 = "UnexpectedState";
      }

      else
      {
        v13 = (&off_100BDD100)[v12];
      }

      v15 = v13;
      _IDSLogV();
    }
  }

  [v4 continuityDidUpdateStateToState:{self->_state, v15}];
}

@end