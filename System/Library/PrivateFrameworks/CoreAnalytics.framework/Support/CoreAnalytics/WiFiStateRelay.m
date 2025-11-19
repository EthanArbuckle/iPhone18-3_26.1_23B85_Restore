@interface WiFiStateRelay
- (BOOL)wiFiActiveAndUsingPersonalHotspot;
- (WiFiStateRelay)initWithMonitoring:(WiFiStateDelegate *)a3;
- (char)retrieveWiFILQM:(id)a3;
- (id).cxx_construct;
- (optional<std::string>)retrieveRadioTech;
- (queue)getQueue;
- (void)configureCWFInterfaceEventHandler;
- (void)configureSCDynamicStore;
- (void)dealloc;
- (void)deregisterForCWEventTypes;
- (void)refreshWiFiLQM;
- (void)refreshWiFiLQM:(id)a3;
- (void)refreshWiFiRadioTech;
- (void)registerForCWEventTypes;
- (void)registerForSCDynamicStoreLQMUpdates;
- (void)teardownSCDynamicStore;
- (void)updateDelegateWithInitialStates;
@end

@implementation WiFiStateRelay

- (queue)getQueue
{
  v3 = v2;
  v4 = self->_stateRelayQueue.fObj.fObj;
  *v3 = v4;
  return v4;
}

- (WiFiStateRelay)initWithMonitoring:(WiFiStateDelegate *)a3
{
  v12.receiver = self;
  v12.super_class = WiFiStateRelay;
  v4 = [(WiFiStateRelay *)&v12 init];
  if (!v4)
  {
    goto LABEL_4;
  }

  if (objc_opt_class())
  {
    v4->delegate = a3;
    v5 = dispatch_queue_create("analyticsd.NetworkingStateResolver.WiFiStateRelay.myQueue", 0);
    fObj = v4->_stateRelayQueue.fObj.fObj;
    v4->_stateRelayQueue.fObj.fObj = v5;

    [(WiFiStateRelay *)v4 configureSCDynamicStore];
    *buf = xmmword_100143CB8;
    v14 = 1;
    sub_100081A48(&v4->_registeredCWEventTypes.__begin_, buf, &v15, 3uLL);
    v7 = objc_alloc_init(CWFInterface);
    coreWiFiInterface = v4->_coreWiFiInterface;
    v4->_coreWiFiInterface = v7;

    [(WiFiStateRelay *)v4 configureCWFInterfaceEventHandler];
    [(CWFInterface *)v4->_coreWiFiInterface activate];
    [(WiFiStateRelay *)v4 registerForCWEventTypes];
    [(WiFiStateRelay *)v4 registerForSCDynamicStoreLQMUpdates];
    [(WiFiStateRelay *)v4 updateDelegateWithInitialStates];
LABEL_4:
    v9 = v4;
    goto LABEL_8;
  }

  v10 = qword_100192D98;
  if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[WiFiStateRelay] WARNING: Failed to get CoreWiFiInterface", buf, 2u);
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (void)dealloc
{
  fObj = self->_stateRelayQueue.fObj.fObj;
  p_stateRelayQueue = &self->_stateRelayQueue;
  if (fObj)
  {
    v5 = sub_100006020(&p_stateRelayQueue->fObj.fObj);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100080AF8;
    block[3] = &unk_100184CB0;
    block[4] = self;
    dispatch_sync(v5, block);
  }

  v6.receiver = self;
  v6.super_class = WiFiStateRelay;
  [(WiFiStateRelay *)&v6 dealloc];
}

- (void)registerForCWEventTypes
{
  if (self->_coreWiFiInterface)
  {
    begin = self->_registeredCWEventTypes.__begin_;
    end = self->_registeredCWEventTypes.__end_;
    while (begin != end)
    {
      v5 = *begin++;
      [(CWFInterface *)self->_coreWiFiInterface startMonitoringEventType:v5 error:0];
    }
  }
}

- (void)teardownSCDynamicStore
{
  if (self->_scDynamicStore)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = self->_scKeyPatterns;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v9 count:16];
    if (v4)
    {
      v5 = *v11;
      do
      {
        v6 = 0;
        do
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v10 + 1) + 8 * v6);
          scDynamicStore = self->_scDynamicStore;
          SCDynamicStoreRemoveWatchedKey();
          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v9 count:16];
      }

      while (v4);
    }

    CFRelease(self->_scDynamicStore);
  }
}

- (void)deregisterForCWEventTypes
{
  if (self->_coreWiFiInterface)
  {
    begin = self->_registeredCWEventTypes.__begin_;
    end = self->_registeredCWEventTypes.__end_;
    while (begin != end)
    {
      v5 = *begin++;
      [(CWFInterface *)self->_coreWiFiInterface stopMonitoringEventType:v5];
    }
  }
}

- (void)configureSCDynamicStore
{
  context.version = 0;
  context.info = self;
  memset(&context.retain, 0, 24);
  v3 = SCDynamicStoreCreate(0, @"com.apple.analyticsd.WiFiAnalytics", sub_100029BD8, &context);
  self->_scDynamicStore = v3;
  if (v3)
  {
    v4 = sub_100006020(&self->_stateRelayQueue.fObj.fObj);
    SCDynamicStoreSetDispatchQueue(v3, v4);

    v5 = objc_alloc_init(NSMutableArray);
    scKeyPatterns = self->_scKeyPatterns;
    self->_scKeyPatterns = v5;
  }

  else
  {
    v7 = qword_100192D98;
    if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "[WiFiStateRelay] WARNING: Failed to create SCDynamicStore", buf, 2u);
    }
  }
}

- (void)registerForSCDynamicStoreLQMUpdates
{
  if (self->_scDynamicStore)
  {
    NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, @"(en)[^/]+", kSCEntNetLinkQuality);
    if (NetworkInterfaceEntity)
    {
      scDynamicStore = self->_scDynamicStore;
      if (SCDynamicStoreAddWatchedKey())
      {
        [(NSMutableArray *)self->_scKeyPatterns addObject:NetworkInterfaceEntity];
      }

      else
      {
        v6 = qword_100192D98;
        if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_ERROR))
        {
          sub_10011D320(v6);
        }
      }
    }

    else
    {
      v5 = qword_100192D98;
      if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_ERROR))
      {
        sub_10011D390(v5);
      }
    }
  }
}

- (void)updateDelegateWithInitialStates
{
  v3 = sub_100006020(&self->_stateRelayQueue.fObj.fObj);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100081004;
  v4[3] = &unk_100184CB0;
  v4[4] = self;
  dispatch_async(v3, v4);
}

- (void)refreshWiFiLQM
{
  coreWiFiInterface = self->_coreWiFiInterface;
  if (coreWiFiInterface)
  {
    v4 = [(CWFInterface *)self->_coreWiFiInterface interfaceName];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(WiFiStateRelay *)self refreshWiFiLQM:v4];
  if (coreWiFiInterface)
  {
  }
}

- (void)refreshWiFiLQM:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[NWInterface alloc] initWithInterfaceName:v4];
    v6 = v5;
    if (v5 && [v5 type] == 1 && objc_msgSend(v6, "subtype") == 1001)
    {
      (*(self->delegate->var0 + 2))(&v9, self->delegate, [(WiFiStateRelay *)self retrieveWiFILQM:v4]| 0x100);
      v7 = v9;
      v9 = 0;
    }
  }

  else
  {
    (*(self->delegate->var0 + 2))(&v10);
    v8 = v10;
    v10 = 0;

    v6 = v10;
  }
}

- (void)configureCWFInterfaceEventHandler
{
  if (objc_opt_class())
  {
    objc_initWeak(&location, self);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10008139C;
    v4[3] = &unk_100184CD8;
    objc_copyWeak(&v5, &location);
    [(CWFInterface *)self->_coreWiFiInterface setEventHandler:v4];
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }

  else
  {
    v3 = qword_100192D98;
    if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_INFO))
    {
      LOWORD(location) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "[WiFiStateRelay] WARNING: Failed to get CoreWiFiEvent", &location, 2u);
    }
  }
}

- (void)refreshWiFiRadioTech
{
  delegate = self->delegate;
  [(WiFiStateRelay *)self retrieveRadioTech];
  (*(delegate->var0 + 3))(&v4, delegate, &__p);
  v3 = v4;
  v4 = 0;

  if (v7 == 1 && v6 < 0)
  {
    operator delete(__p);
  }
}

- (optional<std::string>)retrieveRadioTech
{
  v2 = v1;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&retstr->var0.var0 = v4;
  *(&retstr->var0.var1.__rep_.__l + 1) = v4;
  retstr->var0.var0 = 0;
  retstr[1].var0.var0 = 0;
  result = *(v1 + 64);
  if (!result)
  {
    return result;
  }

  if ((unk_100194520(result, "powerOn") & 1) == 0)
  {
    v9 = &unk_100192B60;
    return sub_100081734(retstr, v9);
  }

  v6 = [*(v2 + 64) networkName];

  if (!v6)
  {
    v9 = &unk_100192B78;
    return sub_100081734(retstr, v9);
  }

  v7 = [*(v2 + 64) maxPHYModeDescription];
  v8 = v7;
  if (v7)
  {
    v10 = [v7 UTF8String];
    sub_1000817A4(retstr, &v10);
  }

  return result;
}

- (char)retrieveWiFILQM:(id)a3
{
  v4 = a3;
  if (self->_scDynamicStore)
  {
    v5 = kSCEntNetLinkQuality;
    NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, v4, kSCEntNetLinkQuality);
    if (NetworkInterfaceEntity)
    {
      v7 = SCDynamicStoreCopyValue(self->_scDynamicStore, NetworkInterfaceEntity);
      v8 = v7;
      if (v7)
      {
        v9 = [v7 objectForKey:v5];
        v10 = [v9 intValue];
      }

      else
      {
        v10 = -1;
      }
    }

    else
    {
      v11 = qword_100192D98;
      if (os_log_type_enabled(qword_100192D98, OS_LOG_TYPE_ERROR))
      {
        sub_10011D414(v11);
      }

      v10 = -1;
    }
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

- (BOOL)wiFiActiveAndUsingPersonalHotspot
{
  v3 = [(CWFInterface *)self->_coreWiFiInterface NANData];
  v4 = v3;
  if (v3 && ([v3 currentKnownNetworkProfile], (v5 = objc_claimAutoreleasedReturnValue()) != 0) || (-[CWFInterface currentKnownNetworkProfile](self->_coreWiFiInterface, "currentKnownNetworkProfile"), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = [v5 isPersonalHotspot];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id).cxx_construct
{
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  return self;
}

@end