@interface QRAllocation
- (QRAllocation)initWithRequest:(id)a3;
- (QRAllocation)initWithResponse:(id)a3;
- (id)getAllocation;
- (void)_allocationTimeout;
- (void)_purgeAllocation;
- (void)addAllocation:(id)a3;
- (void)cancelAllocationTimeoutTimer;
- (void)dealloc;
- (void)setPurgeAtExpiration:(double)a3;
@end

@implementation QRAllocation

- (QRAllocation)initWithRequest:(id)a3
{
  v5 = a3;
  v39.receiver = self;
  v39.super_class = QRAllocation;
  v6 = [(QRAllocation *)&v39 init];
  v7 = v6;
  if (v5 && v6)
  {
    ids_monotonic_time();
    v7->_startTime = v8;
    objc_storeStrong(&v7->_request, a3);
    v9 = [v5 requestIDStr];
    requestIDStr = v7->_requestIDStr;
    v7->_requestIDStr = v9;

    v11 = [v5 IDSSessionID];
    v12 = [v11 length] == 16;

    if (v12)
    {
      v13 = [NSUUID alloc];
      v14 = [v5 IDSSessionID];
      v15 = v14;
      v16 = [v13 initWithUUIDBytes:{objc_msgSend(v14, "bytes")}];
      v17 = [v16 UUIDString];
      sessionIDStr = v7->_sessionIDStr;
      v7->_sessionIDStr = v17;
    }

    else
    {
      v19 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v5 IDSSessionID];
        v21 = [v20 length];
        *buf = 134218240;
        v41 = v21;
        v42 = 2048;
        v43 = 16;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Warning: [[request IDSSessionID] length]: %lu != sizeof(uuid_t): %lu", buf, 0x16u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v22 = [v5 IDSSessionID];
          v35 = [v22 length];
          v36 = 16;
          _IDSLogTransport();

          if (_IDSShouldLog())
          {
            v23 = [v5 IDSSessionID];
            v35 = [v23 length];
            v36 = 16;
            _IDSLogV();
          }
        }
      }

      v14 = v7->_sessionIDStr;
      v7->_sessionIDStr = 0;
    }

    if (!v7->_pushTokenToQRSessionID)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      pushTokenToQRSessionID = v7->_pushTokenToQRSessionID;
      v7->_pushTokenToQRSessionID = Mutable;
    }

    if (!v7->_responses)
    {
      v26 = objc_alloc_init(NSMutableSet);
      responses = v7->_responses;
      v7->_responses = v26;
    }

    [(QRAllocation *)v7 setPurgeAtExpiration:0.0, v35, v36];
    v28 = im_primary_queue();
    v29 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v28);
    timeoutTimer = v7->_timeoutTimer;
    v7->_timeoutTimer = v29;

    v31 = v7->_timeoutTimer;
    v32 = dispatch_time(0, 300000000000);
    dispatch_source_set_timer(v31, v32, 0x45D964B800uLL, 0x5F5E100uLL);
    v33 = v7->_timeoutTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1005928DC;
    handler[3] = &unk_100BD6ED0;
    v38 = v7;
    dispatch_source_set_event_handler(v33, handler);
    dispatch_resume(v7->_timeoutTimer);
  }

  return v7;
}

- (QRAllocation)initWithResponse:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = QRAllocation;
  v5 = [(QRAllocation *)&v24 init];
  v6 = v5;
  if (v4 && v5)
  {
    [(QRAllocation *)v5 startTime];
    if (v7 == 0.0)
    {
      v11 = 0.0;
    }

    else
    {
      ids_monotonic_time();
      v9 = v8;
      [(QRAllocation *)v6 startTime];
      v11 = v9 - v10;
    }

    v6->_duration = v11;
    Value = kIDSQRAllocateKey_RequestID;
    if (kIDSQRAllocateKey_RequestID)
    {
      Value = CFDictionaryGetValue(v4, kIDSQRAllocateKey_RequestID);
    }

    objc_storeStrong(&v6->_requestIDStr, Value);
    v13 = [(__CFDictionary *)v4 objectForKey:kIDSQRAllocateKey_IDSSessionID];
    sessionIDStr = v6->_sessionIDStr;
    v6->_sessionIDStr = v13;

    pushTokenToQRSessionID = v6->_pushTokenToQRSessionID;
    v6->_pushTokenToQRSessionID = 0;

    if (!v6->_pushTokenToQRSessionID)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v17 = v6->_pushTokenToQRSessionID;
      v6->_pushTokenToQRSessionID = Mutable;
    }

    responses = v6->_responses;
    v6->_responses = 0;

    v19 = v6->_responses;
    if (!v19)
    {
      v20 = objc_alloc_init(NSMutableSet);
      v21 = v6->_responses;
      v6->_responses = v20;

      v19 = v6->_responses;
    }

    [(NSMutableSet *)v19 addObject:v4];
    if (kIDSQRAllocateKey_RelayExpiryTimestamp)
    {
      v22 = CFDictionaryGetValue(v4, kIDSQRAllocateKey_RelayExpiryTimestamp);
    }

    else
    {
      v22 = 0;
    }

    [v22 doubleValue];
    [(QRAllocation *)v6 setPurgeAtExpiration:?];
  }

  return v6;
}

- (void)dealloc
{
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "QRAllocation destroyed", buf, 2u);
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

  [(QRAllocation *)self cancelAllocationTimeoutTimer];
  request = self->_request;
  if (request)
  {
    v5 = [(IDSQuickRelayAllocateMessage *)request recipients];
    v6 = [v5 count];

    if (v6 > [(NSMutableSet *)self->_responses count])
    {
      v7 = [IDSQuickRelayMetric alloc];
      v8 = [NSNumber numberWithInt:2];
      v9 = [(IDSQuickRelayAllocateMessage *)self->_request provider];
      v10 = [(IDSQuickRelayAllocateMessage *)self->_request allocateProtocolVersion];
      v11 = [(IDSQuickRelayAllocateMessage *)self->_request appID];
      v12 = [v7 initWithType:&off_100C3CB38 eventSubType:&off_100C3CB50 duration:0 resultCode:v8 providerType:v9 transportType:0 interfaceType:0 skeEnabled:0 isInitiator:&off_100C3CB68 protocolVersion:v10 retryCount:0 serviceName:v11 subServiceName:0 participantCount:0];

      v13 = +[IDSCoreAnalyticsLogger defaultLogger];
      [v13 logMetric:v12];

      v14 = +[IDSAWDLogging sharedInstance];
      v15 = [NSNumber numberWithInt:2];
      v16 = [(IDSQuickRelayAllocateMessage *)self->_request provider];
      v17 = [(IDSQuickRelayAllocateMessage *)self->_request allocateProtocolVersion];
      v18 = [(IDSQuickRelayAllocateMessage *)self->_request appID];
      [v14 IDSQuickRelayEventType:&off_100C3CB38 eventSubType:&off_100C3CB50 duration:0 resultCode:v15 providerType:v16 transportType:0 interfaceType:0 skeEnabled:0 isInitiator:&off_100C3CB68 protocolVersion:v17 retryCount:0 serviceName:v18 subServiceName:0 participantCount:0];

      v19 = [(IDSQuickRelayAllocateMessage *)self->_request IDSSessionID];
      v20 = sub_100592F04(v19);

      v21 = +[IDSDSessionController sharedInstance];
      v22 = [v21 sessionWithUniqueID:v20];

      if (v22)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v24 = [(IDSQuickRelayAllocateMessage *)self->_request allocateProtocolVersion];
        [(__CFDictionary *)Mutable setObject:v24 forKeyedSubscript:IDSDSessionReportQRVersionKey];

        [(__CFDictionary *)Mutable setObject:&off_100C3CB50 forKeyedSubscript:IDSDSessionReportQREventSubTypeKey];
        v25 = [NSNumber numberWithInt:2];
        [(__CFDictionary *)Mutable setObject:v25 forKeyedSubscript:IDSDSessionReportResultCodeKey];

        [v22 addQREventForRTCReport:Mutable];
      }

      else
      {
        v26 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Invalid session. Skip AWD report", buf, 2u);
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
    }
  }

  v27.receiver = self;
  v27.super_class = QRAllocation;
  [(QRAllocation *)&v27 dealloc];
}

- (void)setPurgeAtExpiration:(double)a3
{
  IMTimeOfDay();
  v6 = a3 + v5 * -1000.0;
  if (v6 < 120000.0)
  {
    v6 = 120000.0;
  }

  v7 = dispatch_time(0, (v6 * 1000000.0));
  objc_initWeak(&location, self);
  v8 = im_primary_queue();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1005931F4;
  v9[3] = &unk_100BD9D38;
  objc_copyWeak(&v10, &location);
  dispatch_after(v7, v8, v9);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)_purgeAllocation
{
  IMTimeOfDay();
  v4 = v3;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v35 = self;
  obj = [(QRAllocation *)self responses];
  v5 = 0;
  v6 = [obj countByEnumeratingWithState:&v40 objects:v51 count:16];
  if (v6)
  {
    v7 = v4 * 1000.0;
    v8 = *v41;
    v9 = kIDSQRAllocateKey_RelayExpiryTimestamp;
    v10 = kIDSQRAllocateKey_RelaySessionID;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v41 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v40 + 1) + 8 * i);
        if (v12)
        {
          v13 = v9 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
          Value = 0;
        }

        else
        {
          Value = CFDictionaryGetValue(*(*(&v40 + 1) + 8 * i), v9);
        }

        v15 = Value;
        [v15 doubleValue];
        if (v7 > v16)
        {
          if (v12)
          {
            v17 = v10 == 0;
          }

          else
          {
            v17 = 1;
          }

          if (v17)
          {
            v18 = 0;
          }

          else
          {
            v18 = CFDictionaryGetValue(v12, v10);
          }

          v19 = v18;
          v20 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v46 = v19;
            v47 = 2048;
            v48 = v7;
            v49 = 2112;
            v50 = v15;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "access token of allocation for QR session %@ expired (%f > %@). Discard it.", buf, 0x20u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v33 = v15;
              v32 = v7;
              v31 = v19;
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                v33 = v15;
                v32 = v7;
                v31 = v19;
                _IDSLogV();
              }
            }
          }

          if (!v5)
          {
            v5 = objc_alloc_init(NSMutableSet);
          }

          [v5 addObject:{v12, v31, *&v32, v33}];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v40 objects:v51 count:16];
    }

    while (v6);
  }

  if ([v5 count])
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v21 = v5;
    v22 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v22)
    {
      v23 = *v37;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v37 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = *(*(&v36 + 1) + 8 * j);
          v26 = [(QRAllocation *)v35 responses];
          [v26 removeObject:v25];
        }

        v22 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v22);
    }

    [v21 removeAllObjects];
  }

  v27 = [(QRAllocation *)v35 responses];
  v28 = [v27 count] == 0;

  if (v28)
  {
    v29 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "_purgeAllocation: Invalidate allocation", buf, 2u);
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

    v30 = +[IDSQuickRelayAllocator sharedInstance];
    [v30 invalidateAllocation:v35];
  }
}

- (void)cancelAllocationTimeoutTimer
{
  if (self->_timeoutTimer)
  {
    v3 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "allocation timeout timer cancelled", v5, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    dispatch_source_cancel(self->_timeoutTimer);
    timeoutTimer = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }
}

- (void)_allocationTimeout
{
  request = self->_request;
  if (request)
  {
    v25 = [(IDSQuickRelayAllocateMessage *)request requestIDStr];
    v4 = [(IDSQuickRelayAllocateMessage *)self->_request IDSSessionID];
    v5 = sub_100592F04(v4);

    v6 = [(IDSQuickRelayAllocateMessage *)self->_request allocateType];
    v7 = +[IDSUTunController sharedInstance];
    [v7 handleAllocateRequestFailureForDevice:v5 requestID:v25 errorCode:0];

    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "allocation timed out", buf, 2u);
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

    v9 = +[NSMutableDictionary dictionary];
    CFDictionarySetValue(v9, kIDSQRAllocateKey_ErrorCode, &off_100C3CB80);
    v35[0] = 0xAAAAAAAAAAAAAAAALL;
    v35[1] = 0xAAAAAAAAAAAAAAAALL;
    v10 = [[NSUUID alloc] initWithUUIDString:v25];
    [v10 getUUIDBytes:v35];

    v11 = [NSData dataWithBytes:v35 length:16];
    if (v11)
    {
      CFDictionarySetValue(v9, kIDSQRAllocateKey_RequestID, v11);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092A258();
    }

    v12 = [(IDSQuickRelayAllocateMessage *)self->_request appID];
    if (v12)
    {
      CFDictionarySetValue(v9, kIDSQRAllocateKey_AppID, v12);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092A2E0();
    }

    v13 = +[IMDeviceSupport sharedInstance];
    v14 = [v13 userAgentString];

    v15 = v14;
    if (v15)
    {
      CFDictionarySetValue(v9, kIDSQRAllocateKey_UserAgent, v15);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100919EE8();
    }

    v16 = v6;
    if (v16)
    {
      CFDictionarySetValue(v9, kIDSQRAllocateKey_AllocateType, v16);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092A368();
    }

    v17 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v30 = v5;
      v31 = 2112;
      v32 = v25;
      v33 = 2112;
      v34 = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Sending server message QR metrics allocation timeout report for session %@ requestID: %@, ua: %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v23 = v25;
        v24 = v15;
        v22 = v5;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v23 = v25;
          v24 = v15;
          v22 = v5;
          _IDSLogV();
        }
      }
    }

    v18 = [[IDSServerMessage alloc] initWithPayload:v9 command:&off_100C3CB98];
    v19 = im_primary_queue();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100593CEC;
    block[3] = &unk_100BD6E40;
    v27 = v18;
    v28 = v5;
    v20 = v5;
    v21 = v18;
    dispatch_async(v19, block);
  }

  [(QRAllocation *)self cancelAllocationTimeoutTimer:v22];
}

- (void)addAllocation:(id)a3
{
  v4 = a3;
  selfAllocations = self->_selfAllocations;
  v8 = v4;
  if (!selfAllocations)
  {
    v6 = objc_alloc_init(QRSelfAllocationArray);
    v7 = self->_selfAllocations;
    self->_selfAllocations = v6;

    v4 = v8;
    selfAllocations = self->_selfAllocations;
  }

  [(QRSelfAllocationArray *)selfAllocations addAllocation:v4];
}

- (id)getAllocation
{
  selfAllocations = self->_selfAllocations;
  if (selfAllocations)
  {
    selfAllocations = [selfAllocations getAllocation];
    v2 = vars8;
  }

  return selfAllocations;
}

@end