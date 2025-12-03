@interface QRAllocation
- (QRAllocation)initWithRequest:(id)request;
- (QRAllocation)initWithResponse:(id)response;
- (id)getAllocation;
- (void)_allocationTimeout;
- (void)_purgeAllocation;
- (void)addAllocation:(id)allocation;
- (void)cancelAllocationTimeoutTimer;
- (void)dealloc;
- (void)setPurgeAtExpiration:(double)expiration;
@end

@implementation QRAllocation

- (QRAllocation)initWithRequest:(id)request
{
  requestCopy = request;
  v39.receiver = self;
  v39.super_class = QRAllocation;
  v6 = [(QRAllocation *)&v39 init];
  v7 = v6;
  if (requestCopy && v6)
  {
    ids_monotonic_time();
    v7->_startTime = v8;
    objc_storeStrong(&v7->_request, request);
    requestIDStr = [requestCopy requestIDStr];
    requestIDStr = v7->_requestIDStr;
    v7->_requestIDStr = requestIDStr;

    iDSSessionID = [requestCopy IDSSessionID];
    v12 = [iDSSessionID length] == 16;

    if (v12)
    {
      v13 = [NSUUID alloc];
      iDSSessionID2 = [requestCopy IDSSessionID];
      v15 = iDSSessionID2;
      v16 = [v13 initWithUUIDBytes:{objc_msgSend(iDSSessionID2, "bytes")}];
      uUIDString = [v16 UUIDString];
      sessionIDStr = v7->_sessionIDStr;
      v7->_sessionIDStr = uUIDString;
    }

    else
    {
      v19 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        iDSSessionID3 = [requestCopy IDSSessionID];
        v21 = [iDSSessionID3 length];
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
          iDSSessionID4 = [requestCopy IDSSessionID];
          v35 = [iDSSessionID4 length];
          v36 = 16;
          _IDSLogTransport();

          if (_IDSShouldLog())
          {
            iDSSessionID5 = [requestCopy IDSSessionID];
            v35 = [iDSSessionID5 length];
            v36 = 16;
            _IDSLogV();
          }
        }
      }

      iDSSessionID2 = v7->_sessionIDStr;
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

- (QRAllocation)initWithResponse:(id)response
{
  responseCopy = response;
  v24.receiver = self;
  v24.super_class = QRAllocation;
  v5 = [(QRAllocation *)&v24 init];
  v6 = v5;
  if (responseCopy && v5)
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
      Value = CFDictionaryGetValue(responseCopy, kIDSQRAllocateKey_RequestID);
    }

    objc_storeStrong(&v6->_requestIDStr, Value);
    v13 = [(__CFDictionary *)responseCopy objectForKey:kIDSQRAllocateKey_IDSSessionID];
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

    [(NSMutableSet *)v19 addObject:responseCopy];
    if (kIDSQRAllocateKey_RelayExpiryTimestamp)
    {
      v22 = CFDictionaryGetValue(responseCopy, kIDSQRAllocateKey_RelayExpiryTimestamp);
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
    recipients = [(IDSQuickRelayAllocateMessage *)request recipients];
    v6 = [recipients count];

    if (v6 > [(NSMutableSet *)self->_responses count])
    {
      v7 = [IDSQuickRelayMetric alloc];
      v8 = [NSNumber numberWithInt:2];
      provider = [(IDSQuickRelayAllocateMessage *)self->_request provider];
      allocateProtocolVersion = [(IDSQuickRelayAllocateMessage *)self->_request allocateProtocolVersion];
      appID = [(IDSQuickRelayAllocateMessage *)self->_request appID];
      v12 = [v7 initWithType:&off_100C3CB38 eventSubType:&off_100C3CB50 duration:0 resultCode:v8 providerType:provider transportType:0 interfaceType:0 skeEnabled:0 isInitiator:&off_100C3CB68 protocolVersion:allocateProtocolVersion retryCount:0 serviceName:appID subServiceName:0 participantCount:0];

      v13 = +[IDSCoreAnalyticsLogger defaultLogger];
      [v13 logMetric:v12];

      v14 = +[IDSAWDLogging sharedInstance];
      v15 = [NSNumber numberWithInt:2];
      provider2 = [(IDSQuickRelayAllocateMessage *)self->_request provider];
      allocateProtocolVersion2 = [(IDSQuickRelayAllocateMessage *)self->_request allocateProtocolVersion];
      appID2 = [(IDSQuickRelayAllocateMessage *)self->_request appID];
      [v14 IDSQuickRelayEventType:&off_100C3CB38 eventSubType:&off_100C3CB50 duration:0 resultCode:v15 providerType:provider2 transportType:0 interfaceType:0 skeEnabled:0 isInitiator:&off_100C3CB68 protocolVersion:allocateProtocolVersion2 retryCount:0 serviceName:appID2 subServiceName:0 participantCount:0];

      iDSSessionID = [(IDSQuickRelayAllocateMessage *)self->_request IDSSessionID];
      v20 = sub_100592F04(iDSSessionID);

      v21 = +[IDSDSessionController sharedInstance];
      v22 = [v21 sessionWithUniqueID:v20];

      if (v22)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        allocateProtocolVersion3 = [(IDSQuickRelayAllocateMessage *)self->_request allocateProtocolVersion];
        [(__CFDictionary *)Mutable setObject:allocateProtocolVersion3 forKeyedSubscript:IDSDSessionReportQRVersionKey];

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

- (void)setPurgeAtExpiration:(double)expiration
{
  IMTimeOfDay();
  v6 = expiration + v5 * -1000.0;
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
  selfCopy = self;
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
          responses = [(QRAllocation *)selfCopy responses];
          [responses removeObject:v25];
        }

        v22 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v22);
    }

    [v21 removeAllObjects];
  }

  responses2 = [(QRAllocation *)selfCopy responses];
  v28 = [responses2 count] == 0;

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
    [v30 invalidateAllocation:selfCopy];
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
    requestIDStr = [(IDSQuickRelayAllocateMessage *)request requestIDStr];
    iDSSessionID = [(IDSQuickRelayAllocateMessage *)self->_request IDSSessionID];
    v5 = sub_100592F04(iDSSessionID);

    allocateType = [(IDSQuickRelayAllocateMessage *)self->_request allocateType];
    v7 = +[IDSUTunController sharedInstance];
    [v7 handleAllocateRequestFailureForDevice:v5 requestID:requestIDStr errorCode:0];

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
    v10 = [[NSUUID alloc] initWithUUIDString:requestIDStr];
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

    appID = [(IDSQuickRelayAllocateMessage *)self->_request appID];
    if (appID)
    {
      CFDictionarySetValue(v9, kIDSQRAllocateKey_AppID, appID);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092A2E0();
    }

    v13 = +[IMDeviceSupport sharedInstance];
    userAgentString = [v13 userAgentString];

    v15 = userAgentString;
    if (v15)
    {
      CFDictionarySetValue(v9, kIDSQRAllocateKey_UserAgent, v15);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100919EE8();
    }

    v16 = allocateType;
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
      v32 = requestIDStr;
      v33 = 2112;
      v34 = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Sending server message QR metrics allocation timeout report for session %@ requestID: %@, ua: %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v23 = requestIDStr;
        v24 = v15;
        v22 = v5;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v23 = requestIDStr;
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

- (void)addAllocation:(id)allocation
{
  allocationCopy = allocation;
  selfAllocations = self->_selfAllocations;
  v8 = allocationCopy;
  if (!selfAllocations)
  {
    v6 = objc_alloc_init(QRSelfAllocationArray);
    v7 = self->_selfAllocations;
    self->_selfAllocations = v6;

    allocationCopy = v8;
    selfAllocations = self->_selfAllocations;
  }

  [(QRSelfAllocationArray *)selfAllocations addAllocation:allocationCopy];
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