@interface IDSQuickRelayAllocator
+ (IDSQuickRelayAllocator)sharedInstance;
- (BOOL)_addConnectStatus:(id)a3 relaySessionID:(id)a4 previousTime:(unint64_t)a5 qrReason:(unsigned __int16)a6 previousError:(unsigned __int16)a7 previousRelayIP:(unsigned int)a8 previousAccessToken:(id)a9;
- (BOOL)_addResponseToCache:(id)a3 sessionInfo:(id)a4 modifiedMessage:(id *)a5;
- (BOOL)_hasSessionInfoRequiredKeys:(id)a3;
- (BOOL)_isDuplicateResponse:(id)a3 newResponse:(id)a4;
- (BOOL)_sendKeepAliveRequest:(id)a3;
- (BOOL)_shouldUseCurrentResponse:(id)a3 cachedMessage:(id)a4;
- (BOOL)_startQRConnectionWithDefaults:(id)a3;
- (BOOL)hasParticipantID:(id)a3 participantID:(id)a4;
- (BOOL)invalidateLatestResponse:(id)a3 qrReason:(unsigned __int16)a4 previousError:(unsigned __int16)a5;
- (BOOL)isURIAvailabeInAllocateResponse:(id)a3 uri:(id)a4;
- (IDSQuickRelayAllocator)init;
- (id)_createSessionInfoFromResponsePayload:(id)a3;
- (id)_filterSelfAllocationsForSessionID:(id)a3;
- (id)_findAllocationForSessionID:(id)a3 requestIDStr:(id)a4;
- (id)_findAllocationListForSessionID:(id)a3;
- (id)_findSessionWithID:(id)a3;
- (id)_getCombinedSoftwareID:(id)a3;
- (id)_getGroupID:(id)a3;
- (id)_getParticipantIDFromPushToken:(id)a3 pushToken:(id)a4;
- (id)_getPushTokenFromParticipantID:(id)a3 participantID:(id)a4;
- (id)_getQuickRelayIPPreference:(unint64_t)a3;
- (id)_getResponse:(id)a3 relaySessionID:(id)a4;
- (id)_getResponseForQRSessionID:(id)a3 sessionID:(id)a4 index:(int64_t *)a5;
- (id)_getResponseFromQRGroupID:(id)a3;
- (id)_getSelfAllocationFromCache:(id)a3;
- (id)_getStatusMessageFromStatusCode:(unint64_t)a3;
- (id)_getURIForRecipientFromResponse:(id)a3;
- (id)_mergeParticipantID2PushTokenMapping:(id)a3 sourceResponse:(id)a4 mappingChange:(BOOL *)a5;
- (id)_parseQuickRelayDefaults:(id)a3 gropuID:(id)a4;
- (id)_queryPolicy;
- (id)_setupAllocation:(id)a3 fromURI:(id)a4 sessionID:(id)a5 isSessionIDRemoteDeviceID:(BOOL)a6 options:(id)a7 prevConnectStatus:(id *)a8 requestUUID:(id)a9 connectReadyHandler:(id)a10 withPreferredLocalInterface:(int)a11;
- (id)_setupNewAllocation:(id)a3 sessionID:(id)a4 isSessionIDRemoteDeviceID:(BOOL)a5 fromIdentity:(id)a6 fromURI:(id)a7 fromService:(id)a8 options:(id)a9 connectReadyHandler:(id)a10 withPreferredLocalInterface:(int)a11 forAdditionalAllocation:(BOOL)a12;
- (id)_tokenURIForToken:(id)a3 uri:(id)a4;
- (id)_translateParticipantIDtoUINT64ForResponse:(id)a3;
- (id)_uriToParticipantID:(id)a3;
- (id)_uuidFromNSStringToNSData:(id)a3;
- (id)findAllocateResponseForSessionID:(id)a3 FromURI:(id)a4;
- (id)getAdditionalAllocationForAddress:(id)a3 selfAddress:(unsigned int)a4 relaySessionID:(id)a5 allocateType:(int64_t)a6 qrReason:(unsigned __int16)a7 previousTime:(unint64_t)a8 previousError:(unsigned __int16)a9 previousRelayIP:(unsigned int)a10 previousAccessToken:(id)a11 requestSelfAllocation:(BOOL)a12 isSessionIDRemoteDeviceID:(BOOL)a13 withPreferredRemoteInterface:(int)a14 withPreferredLocalInterface:(int)a15;
- (id)getAllocateResponse:(id)a3 groupID:(id)a4;
- (id)getParticipantIDFromPushToken:(id)a3 pushToken:(id)a4;
- (id)getPushTokenForRelaySessionID:(id)a3 relaySessionID:(id)a4;
- (id)getPushTokenFromParticipantID:(id)a3 participantID:(id)a4;
- (id)getPushTokensFromParticipantIDs:(id)a3 participantIDs:(id)a4;
- (id)getRelaySessionIDForIDSSessionID:(id)a3 pushToken:(id)a4;
- (id)getURIFromParticipantID:(id)a3 participantID:(id)a4;
- (id)setupNewAllocation:(id)a3 sessionID:(id)a4 fromIdentity:(id)a5 fromURI:(id)a6 fromService:(id)a7 options:(id)a8 connectReadyHandler:(id)a9;
- (id)setupNewAllocationToDevice:(id)a3 options:(id)a4 connectReadyHandler:(id)a5;
- (int64_t)getServerProviderForIDSSessionID:(id)a3;
- (unint64_t)getLocalParticipantIDForRelaySessionID:(id)a3;
- (unsigned)_getErrorCodeFromAllocationStatus:(int)a3;
- (void)_addAllocationForSession:(id)a3 allocation:(id)a4;
- (void)_cleanupResponses;
- (void)_discardAllocation:(id)a3;
- (void)_dispatchIncomingAllocateResponse:(id)a3 isFromCache:(BOOL)a4 connectReadyHandler:(id)a5 requestOptions:(id)a6;
- (void)_handleIncomingAllocateResponse:(id)a3 isFromCache:(BOOL)a4 requestOptions:(id)a5;
- (void)_invalidateSession:(id)a3 isExpiryPurging:(BOOL)a4;
- (void)_notifyParticipantID2PushTokenMappingChange:(id)a3;
- (void)_notifyURIToParticipantIDMappingChange:(id)a3;
- (void)_processAllocationStatusResult:(id)a3;
- (void)_processSelfAllocations:(id)a3 allocation:(id)a4;
- (void)_removeAllAllocationsForSessionID:(id)a3;
- (void)_sendAWDMetricsForAllocation:(id)a3 status:(int64_t)a4 hasRecipientAccepted:(BOOL)a5;
- (void)_sendAllocateRequest:(id)a3;
- (void)_sendIDQueryRequest:(id)a3 fromIdentity:(id)a4 fromURI:(id)a5 fromService:(id)a6 completionBlock:(id)a7;
- (void)_setResponseForQRGroupID:(id)a3 groupID:(id)a4;
- (void)_setSessionInfoRequiredKeys;
- (void)_startCleanupTimer;
- (void)_startQRConnectionForSession:(id)a3 isInitiatorsAcceptedSession:(BOOL)a4 withLocalInterfacePreference:(int)a5;
- (void)_storeMappingFromPushTokenToURIs:(id)a3 fromID:(id)a4 service:(id)a5 cert:(id)a6 forGroup:(id)a7;
- (void)_triggerSymptomsWithType:(id)a3 subType:(id)a4 subTypeContext:(id)a5;
- (void)cleanUpCachedMappings:(id)a3;
- (void)clearResponseFromQRGroupID:(id)a3;
- (void)dealloc;
- (void)enablePushHandler:(BOOL)a3;
- (void)handler:(id)a3 didReceiveMessage:(id)a4 forTopic:(id)a5 fromID:(id)a6 messageContext:(id)a7;
- (void)handler:(id)a3 receivedOfflineMessagePendingForTopic:(id)a4 messageContext:(id)a5;
- (void)invalidateAllocation:(id)a3;
- (void)invalidateSession:(id)a3 isExpiryPurging:(BOOL)a4;
- (void)reportAWDAllocatorEvent:(unsigned int)a3 relayProviderType:(int64_t)a4 transport:(int64_t)a5 localRAT:(unsigned int)a6 duration:(unint64_t)a7 idsSessionID:(id)a8 reportingDataBlob:(id)a9 isInitiator:(BOOL)a10 serverSoftwareVersion:(id)a11;
- (void)requestAllocationForRecipient:(id)a3;
- (void)setInitiatorsAcceptedToken:(id)a3 pushToken:(id)a4;
- (void)setRequestIDToSession:(id)a3 idsSessionID:(id)a4;
- (void)startKeepAliveTimer:(id)a3 relaySessionID:(id)a4;
- (void)stopKeepAliveTimer:(id)a3 relaySessionID:(id)a4;
@end

@implementation IDSQuickRelayAllocator

+ (IDSQuickRelayAllocator)sharedInstance
{
  if (qword_100CBF0D8 != -1)
  {
    sub_10092A3F0();
  }

  v3 = qword_100CBF0E0;

  return v3;
}

- (IDSQuickRelayAllocator)init
{
  v26.receiver = self;
  v26.super_class = IDSQuickRelayAllocator;
  v2 = [(IDSQuickRelayAllocator *)&v26 init];
  v3 = v2;
  if (v2)
  {
    requestIDToSession = v2->_requestIDToSession;
    v2->_requestIDToSession = 0;

    sessionToAllocations = v3->_sessionToAllocations;
    v3->_sessionToAllocations = 0;

    pendingRecipientsAcceptedSessions = v3->_pendingRecipientsAcceptedSessions;
    v3->_pendingRecipientsAcceptedSessions = 0;

    initiatorsAcceptedSessionsWithToken = v3->_initiatorsAcceptedSessionsWithToken;
    v3->_initiatorsAcceptedSessionsWithToken = 0;

    v8 = objc_alloc_init(NSMutableDictionary);
    idsSessionIDToqrSessionID = v3->_idsSessionIDToqrSessionID;
    v3->_idsSessionIDToqrSessionID = v8;

    v10 = objc_alloc_init(NSMutableDictionary);
    allocateResponses = v3->_allocateResponses;
    v3->_allocateResponses = v10;

    v12 = objc_alloc_init(NSMutableDictionary);
    pushTokenToURIForGroup = v3->_pushTokenToURIForGroup;
    v3->_pushTokenToURIForGroup = v12;

    v14 = objc_alloc_init(NSMutableDictionary);
    sessionToLocalParticipantID = v3->_sessionToLocalParticipantID;
    v3->_sessionToLocalParticipantID = v14;

    v16 = objc_alloc_init(NSMutableDictionary);
    sessionIDToURIToResponsePayload = v3->_sessionIDToURIToResponsePayload;
    v3->_sessionIDToURIToResponsePayload = v16;

    v18 = objc_alloc_init(NSMutableDictionary);
    duplicateAllocateResponses = v3->_duplicateAllocateResponses;
    v3->_duplicateAllocateResponses = v18;

    v20 = objc_alloc_init(NSMutableDictionary);
    groupIDToDuplicateResponseCleanupTimers = v3->_groupIDToDuplicateResponseCleanupTimers;
    v3->_groupIDToDuplicateResponseCleanupTimers = v20;

    v22 = objc_alloc_init(NSMutableDictionary);
    sessionToRequestIDToAllocateTime = v3->_sessionToRequestIDToAllocateTime;
    v3->_sessionToRequestIDToAllocateTime = v22;

    pushHandler = v3->_pushHandler;
    v3->_pushHandler = 0;

    v3->_lock._os_unfair_lock_opaque = 0;
    [(IDSQuickRelayAllocator *)v3 _setSessionInfoRequiredKeys];
  }

  return v3;
}

- (void)dealloc
{
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dealloc IDSQuickRelayAllocator %@.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v4 = self;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v4 = self;
        _IDSLogV();
      }
    }
  }

  [(IDSPushHandler *)self->_pushHandler removeListener:self, v4];
  [(NSMutableDictionary *)self->_requestIDToSession removeAllObjects];
  [(NSMutableDictionary *)self->_sessionToAllocations removeAllObjects];
  [(NSMutableSet *)self->_pendingRecipientsAcceptedSessions removeAllObjects];
  [(NSMutableDictionary *)self->_initiatorsAcceptedSessionsWithToken removeAllObjects];
  [(NSMutableDictionary *)self->_idsSessionIDToqrSessionID removeAllObjects];
  [(NSMutableDictionary *)self->_allocateResponses removeAllObjects];
  [(NSMutableDictionary *)self->_sessionToLocalParticipantID removeAllObjects];
  [(NSMutableDictionary *)self->_sessionIDToURIToResponsePayload removeAllObjects];
  [(NSMutableDictionary *)self->_duplicateAllocateResponses removeAllObjects];
  [(NSMutableDictionary *)self->_groupIDToDuplicateResponseCleanupTimers removeAllObjects];
  [(NSMutableDictionary *)self->_sessionToRequestIDToAllocateTime removeAllObjects];
  v5.receiver = self;
  v5.super_class = IDSQuickRelayAllocator;
  [(IDSQuickRelayAllocator *)&v5 dealloc];
}

- (id)_queryPolicy
{
  v2 = [IDSQuickRelayAllocatorQueryPolicy alloc];
  v3 = +[IDSServerBag sharedInstance];
  v4 = [(IDSQuickRelayAllocatorQueryPolicy *)v2 initWithServerBag:v3];

  return v4;
}

- (BOOL)_sendKeepAliveRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKey:kIDSQRAllocateKey_GroupID];
  if (v5)
  {
    v6 = [v4 objectForKey:kIDSQRAllocateKey_RelaySessionToken];
    v7 = [v4 objectForKey:kIDSQRAllocateKey_RelayAddress];
    v8 = v7;
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v35 = v6;
        v36 = 2048;
        v37 = v8;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "session token or address not available: %p %p", buf, 0x16u);
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

      v15 = 0;
    }

    else
    {
      v12 = [v4 objectForKey:kIDSQRAllocateKey_IDSSessionID];
      v13 = [(IDSQuickRelayAllocator *)self _findSessionWithID:v12];
      v14 = v13;
      v15 = v13 != 0;
      if (v13)
      {
        v16 = [[IDSQuickRelayAllocateMessage alloc] init:0];
        v17 = objc_alloc_init(NSMutableArray);
        [v16 setRecipients:v17];

        v18 = [(IDSQuickRelayAllocator *)self _uuidFromNSStringToNSData:v12];
        [v16 setIDSSessionID:v18];

        v19 = [v14 fromURI];
        v20 = [v19 prefixedURI];
        [v16 setSenderURI:v20];

        v21 = [v14 getAppID];
        [v16 setAppID:v21];

        [v16 setAllocateType:&off_100C3CBB0];
        [v16 setGroupID:v5];
        [v16 setActiveRelaySessionToken:v6];
        [v16 setActiveRelayIP:v8];
        v22 = _IDSAllocateProtocolVersionNumber();
        [v16 setAllocateProtocolVersion:v22];

        [v16 setWantsResponse:1];
        [v16 setTopic:kIDSQuickRelayPushTopic];
        v23 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = [v4 objectForKey:kIDSQRAllocateKey_RelaySessionID];
          *buf = 138412546;
          v35 = v5;
          v36 = 2112;
          v37 = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "send keepalive for groupID: %@, sessionID: %@", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v25 = kIDSQRAllocateKey_RelaySessionID;
            v30 = [v4 objectForKey:kIDSQRAllocateKey_RelaySessionID];
            _IDSLogTransport();

            if (_IDSShouldLog())
            {
              v31 = [v4 objectForKey:{v25, v5, v30}];
              _IDSLogV();
            }
          }
        }

        v26 = im_primary_queue();
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100594DAC;
        block[3] = &unk_100BD6ED0;
        v33 = v16;
        v27 = v16;
        dispatch_async(v26, block);
      }

      else
      {
        v28 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v35 = v12;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Session not found for %@", buf, 0xCu);
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

  else
  {
    v11 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "no groupID in %@", buf, 0xCu);
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

    v15 = 0;
  }

  return v15;
}

- (void)_sendAllocateRequest:(id)a3
{
  v3 = a3;
  objc_initWeak(&location, v3);
  v4 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005950B8;
  block[3] = &unk_100BE0D60;
  v7 = v3;
  v5 = v3;
  objc_copyWeak(&v8, &location);
  dispatch_async(v4, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (id)_setupAllocation:(id)a3 fromURI:(id)a4 sessionID:(id)a5 isSessionIDRemoteDeviceID:(BOOL)a6 options:(id)a7 prevConnectStatus:(id *)a8 requestUUID:(id)a9 connectReadyHandler:(id)a10 withPreferredLocalInterface:(int)a11
{
  v13 = a6;
  v161 = a3;
  v153 = a4;
  v16 = a5;
  v17 = a7;
  v154 = a9;
  v152 = a10;
  v18 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v17 objectForKeyedSubscript:kIDSQRAllocateKey_IsLightweightParticipant];
    v20 = [v19 BOOLValue];
    v21 = @"NO";
    if (v20)
    {
      v21 = @"YES";
    }

    *buf = 138412546;
    *&buf[4] = v16;
    *&buf[12] = 2112;
    *&buf[14] = v21;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "_setupAllocation:fromURI:sessionID:isSessionIDRemoteDeviceID:options:prevConnectStatus:requestUUID:connectReadyHandler: called {sessionID: %@} options[kIDSQRAllocateKey_IsLightweightParticipant] = %@", buf, 0x16u);
  }

  v22 = [[IDSQuickRelayAllocateMessage alloc] init:v154];
  v155 = [[NSUUID alloc] initWithUUIDString:v16];
  v170.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v170.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  [v155 getUUIDBytes:&v170];
  if (!self->_requestIDToPreferredLocalInterface)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    requestIDToPreferredLocalInterface = self->_requestIDToPreferredLocalInterface;
    self->_requestIDToPreferredLocalInterface = Mutable;
  }

  v25 = [NSNumber numberWithInteger:a11];
  if (v25)
  {
    v26 = self->_requestIDToPreferredLocalInterface;
    v27 = [v22 requestIDStr];
    CFDictionarySetValue(v26, v27, v25);
  }

  else
  {
    v27 = &_os_log_default;
    v28 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092A404(v22);
    }
  }

  if (v13)
  {
    v29 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v155;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "translate deviceID: %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v144 = v155;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v144 = v155;
          _IDSLogV();
        }
      }
    }

    memset(buf, 170, 16);
    v30 = +[IDSCurrentDevice sharedInstance];
    v31 = [v30 deviceIdentifier];

    v32 = [[NSUUID alloc] initWithUUIDString:v31];
    [v32 getUUIDBytes:buf];

    v170 = veorq_s8(v170, *buf);
    v33 = [[NSUUID alloc] initWithUUIDBytes:&v170];
    v34 = [v33 UUIDString];

    v16 = v34;
  }

  v35 = [[NSData alloc] initWithBytes:&v170 length:16];
  [v22 setIDSSessionID:v35];

  [v22 setSenderURI:v153];
  v36 = [v17 objectForKey:kIDSQRAllocateKey_AllocateType];
  v162 = v36;
  if (v36)
  {
    v37 = v36;
  }

  else
  {
    v37 = &off_100C3CBC8;
  }

  [v22 setAllocateType:v37];
  v38 = +[IMDeviceSupport sharedInstance];
  v39 = [v38 userAgentString];
  [v22 setUserAgent:v39];

  if ([v162 intValue] == 3)
  {
    v40 = [v17 objectForKey:kIDSQRAllocateKey_GroupID];
    if (v40)
    {
      v41 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = a8;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "shared session allocation, previous connect status: %p", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v144 = a8;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v144 = a8;
            _IDSLogV();
          }
        }
      }

      [v22 setIsSharedSession:{&off_100C3CB68, v144}];
      [v22 setGroupID:v40];
      v42 = kIDSQRAllocateKey_TestOptions;
      v43 = [v17 objectForKey:kIDSQRAllocateKey_TestOptions];
      v44 = v43 == 0;

      if (!v44)
      {
        v45 = +[IDSFoundationLog QRAllocator];
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          v46 = [v22 requestIDStr];
          v47 = [v17 objectForKey:v42];
          *buf = 138412546;
          *&buf[4] = v46;
          *&buf[12] = 2112;
          *&buf[14] = v47;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "_setupAllocation: set test option for request ID %@: %@", buf, 0x16u);
        }

        v48 = [v17 objectForKey:v42];
        [v22 setTestOptions:v48];
      }

      if (a8)
      {
        v49 = [[NSData alloc] initWithBytes:&a8->var2 length:4];
        v50 = [[NSData alloc] initWithBytes:a8->var5 length:a8->var4];
        v51 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          var0 = a8->var0;
          var1 = a8->var1;
          var2 = a8->var2;
          *buf = 67109890;
          *&buf[4] = var0;
          *&buf[8] = 1024;
          *&buf[10] = var1;
          *&buf[14] = 1024;
          *&buf[16] = var2;
          *&buf[20] = 2112;
          *&buf[22] = v50;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "cached response previous connect status, reason/error/token/ip: %u %u %u %@", buf, 0x1Eu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v146 = a8->var2;
            v147 = v50;
            v144 = a8->var0;
            v145 = a8->var1;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v146 = a8->var2;
              v147 = v50;
              v144 = a8->var0;
              v145 = a8->var1;
              _IDSLogV();
            }
          }
        }

        v55 = [NSNumber numberWithUnsignedShort:a8->var0, v144, v145, v146, v147];
        [v22 setQrReason:v55];

        if (a8->var1 != 0xFFFF)
        {
          v56 = [NSNumber numberWithUnsignedShort:?];
          [v22 setQrError:v56];
        }

        [v22 setPreviousAccessToken:v50];
        [v22 setPreviousRelayIP:v49];
      }

      else
      {
        [v22 setQrReason:&off_100C3CBE0];
      }

      v58 = [v17 objectForKey:kIDSQRAllocateKey_IsNewUPlusOneSession];
      v59 = [v58 BOOLValue];

      if (v59)
      {
        [v22 setIsNewUPlusOneSession:&off_100C3CB68];
      }
    }

    else
    {
      v57 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v17;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "groupID not set for shared session allocation: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v144 = v17;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v144 = v17;
            _IDSLogV();
          }
        }
      }
    }

    v60 = [v17 objectForKey:{kIDSQRAllocateKey_GroupMemberCount, v144}];
    if (v60)
    {
      [v22 setGroupMemberCount:v60];
    }
  }

  if (a8)
  {
    free(a8->var5);
    free(a8);
  }

  if (!v161)
  {
    v161 = objc_alloc_init(NSMutableArray);
  }

  if (!self->_requestIDToSession)
  {
    v61 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    requestIDToSession = self->_requestIDToSession;
    self->_requestIDToSession = v61;
  }

  value = v16;
  if (value)
  {
    v63 = self->_requestIDToSession;
    v64 = [v22 requestIDStr];
    CFDictionarySetValue(v63, v64, value);
  }

  else
  {
    v64 = &_os_log_default;
    v65 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092A4A4(v22);
    }
  }

  v66 = [v17 objectForKey:kIDSQRAllocateKey_QRForceExperiment];
  [v22 setQrForceExperiment:v66];

  if (IMGetDomainIntForKey())
  {
    v67 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "QuickRelayServerProvider switch has been deprecated", buf, 2u);
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

  v156 = [v17 objectForKey:kIDSQRAllocateKey_RelayAddress];
  v160 = [v17 objectForKey:kIDSQRAllocateKey_RelaySessionToken];
  v159 = [v17 objectForKey:kIDSQRAllocateKey_RelaySessionKey];
  if (v156 && v160 && v159)
  {
    [v22 setExistingRelayIP:v156];
    [v22 setExistingRelaySessionToken:v160];
    *&v68 = 0xAAAAAAAAAAAAAAAALL;
    *(&v68 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buf = v68;
    *&buf[16] = v68;
    v69 = v159;
    v70 = [v159 bytes];
    v71 = [v159 length];
    v72 = v160;
    CCHmac(2u, v70, v71, [v160 bytes], objc_msgSend(v160, "length"), buf);
    v73 = [[NSData alloc] initWithBytes:buf length:32];
    [v22 setExistingRelaySignature:v73];
  }

  v74 = kIDSQRAllocateKey_SenderExternalAddress;
  v75 = [v17 objectForKey:kIDSQRAllocateKey_SenderExternalAddress];

  if (v75)
  {
    v76 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
    {
      v77 = [v17 objectForKey:v74];
      *buf = 138412290;
      *&buf[4] = v77;
      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "request allocation for a specific address %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v144 = [v17 objectForKey:v74];
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          v144 = [v17 objectForKey:{v74, v144}];
          _IDSLogV();
        }
      }
    }

    v78 = [v17 objectForKey:{v74, v144}];
    [v22 setSenderExternalIP:v78];
  }

  v79 = kIDSQRAllocateKey_AppID;
  v80 = [v17 objectForKey:kIDSQRAllocateKey_AppID];

  if (v80)
  {
    v81 = [v17 objectForKey:v79];
    [v22 setAppID:v81];
  }

  else
  {
    [v22 setAppID:kIDSQuickRelayPushTopic];
  }

  v157 = [v17 objectForKey:kIDSQRAllocateKey_ConversationID];
  if (v157)
  {
    [v22 setConversationID:v157];
  }

  v82 = [v17 objectForKey:kIDSQRAllocateKey_IsLightweightParticipant];
  [v22 setIsLightweightParticipant:v82];

  if ([v162 intValue] != 3)
  {
    v83 = [v17 objectForKey:kIDSQRAllocateKey_SelfAllocationCount];
    [v22 setSelfAllocationCount:v83];
  }

  v84 = [v17 objectForKey:IDSSessionInvitationRetryCountKey];
  [v22 setInvitationRetryCount:v84];

  v85 = _IDSAllocateProtocolVersionNumber();
  [v22 setAllocateProtocolVersion:v85];

  [v22 setRecipients:v161];
  [v22 setWantsResponse:1];
  [v22 setTopic:kIDSQuickRelayPushTopic];
  v158 = [v17 objectForKey:kIDSQRAllocateKey_PreferredRemoteInterface];
  if ([v158 intValue])
  {
    v86 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
    {
      [v158 intValue];
      v87 = GLUtilPreferredInterfaceToString();
      *buf = 138412290;
      *&buf[4] = v87;
      _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "_setupAllocation: preferredRemoteInterface %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        [v158 intValue];
        v144 = GLUtilPreferredInterfaceToString();
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          [v158 intValue];
          v144 = GLUtilPreferredInterfaceToString();
          _IDSLogV();
        }
      }
    }

    [v22 setInfoAttribute:{v158, v144}];
  }

  v88 = +[IMLockdownManager sharedInstance];
  v89 = [v88 isInternalInstall];

  if (v89)
  {
    if (IMGetDomainBoolForKey())
    {
      [v22 setTestOptions:IDSGroupSessionSendDiagnosticIndication];
      v90 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "_setupAllocation test options: IDSGroupSessionSendDiagnosticIndication", buf, 2u);
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

    v91 = IMGetDomainValueForKey();
    if (v91)
    {
      v92 = [NSString stringWithFormat:@"%@=%@", kIDSQRAllocateKey_ServerAddress, v91];
      [v22 setTestOptions:v92];
      v93 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v92;
        _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "_setupAllocation QuickRelayServerAddress test option: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v144 = v92;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v144 = v92;
            _IDSLogV();
          }
        }
      }
    }

    if (IMGetDomainBoolForKey())
    {
      [v22 setTestOptions:IDSGroupSessionForceDegraded];
      v94 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "_setupAllocation test options: IDSGroupSessionForceDegraded", buf, 2u);
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

    if (IMGetDomainBoolForKey())
    {
      [v22 setTestOptions:IDSGroupSessionBlockUPlusOneSession];
      v95 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "_setupAllocation test options: IDSGroupSessionBlockUPlusOneSession", buf, 2u);
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

    if (IMGetDomainBoolForKey())
    {
      [v22 setTestOptions:IDSGroupSessionAppleTestingKey];
      v96 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "_setupAllocation test options: IDSGroupSessionAppleTestingKey", buf, 2u);
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

  ids_monotonic_time();
  v98 = v97;
  os_unfair_lock_lock(&self->_lock);
  v99 = [(NSMutableDictionary *)self->_sessionToRequestIDToAllocateTime objectForKeyedSubscript:value];
  v100 = v99 == 0;

  if (v100)
  {
    v101 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    [(NSMutableDictionary *)self->_sessionToRequestIDToAllocateTime setObject:v101 forKeyedSubscript:value];
  }

  v102 = objc_alloc_init(IDSQuickRelayAllocateRequestTimings);
  [(IDSQuickRelayAllocateRequestTimings *)v102 setStart:v98];
  v103 = v102;
  if (v103)
  {
    v104 = [(NSMutableDictionary *)self->_sessionToRequestIDToAllocateTime objectForKeyedSubscript:value];
    v105 = [v22 requestIDStr];
    CFDictionarySetValue(v104, v105, v103);
  }

  else
  {
    v104 = &_os_log_default;
    v106 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092A544(v22);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v107 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
  {
    v108 = [v161 count];
    v109 = [v22 requestIDStr];
    *buf = 138413058;
    *&buf[4] = value;
    *&buf[12] = 1024;
    *&buf[14] = v108;
    *&buf[18] = 2112;
    *&buf[20] = v109;
    *&buf[28] = 2048;
    *&buf[30] = v98;
    _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "Send allocate request, sessionID: %@, recipient count: %u, requestID: %@, time: %.6f.", buf, 0x26u);
  }

  v110 = [v22 description];
  [v161 count];
  v150 = v110;
  cut_dispatch_log_queue();
  v151 = +[NSDate date];
  [(IDSQuickRelayAllocator *)self _sendAllocateRequest:v22];
  v111 = [[QRAllocation alloc] initWithRequest:v22];
  if ([v162 intValue] == 3)
  {
    v112 = [v17 objectForKey:kIDSQRAllocateKey_StreamInfoPublishedStreams];
    v113 = [v17 objectForKey:kIDSQRAllocateKey_StreamInfoSubscribedStreams];
    v114 = [v17 objectForKey:kIDSQRAllocateKey_StreamInfoGenerationCounter];
    v115 = [v17 objectForKey:kIDSQRAllocateKey_StreamInfoMaxConcurrentStreams];
    v116 = [v17 objectForKey:kIDSQRAllocateKey_IsJoinAllocation];
    -[QRAllocation setIsJoinAllocation:](v111, "setIsJoinAllocation:", [v116 BOOLValue]);

    v117 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
    {
      v118 = [(QRAllocation *)v111 isJoinAllocation];
      v119 = @"NO";
      *buf = 138413570;
      *&buf[4] = value;
      *&buf[12] = 2112;
      if (v118)
      {
        v119 = @"YES";
      }

      *&buf[14] = v119;
      *&buf[22] = 2112;
      *&buf[24] = v112;
      *&buf[32] = 2112;
      *&buf[34] = v113;
      v166 = 2112;
      v167 = v114;
      v168 = 2112;
      v169 = v115;
      _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEFAULT, "Stream information to cache, idsSessionID=%@, isJoinAllocation: %@, publishedStreams=%@, subscribedStreams=%@, generationCounter=%@, maxConcurrentStreams=%@", buf, 0x3Eu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v120 = [(QRAllocation *)v111 isJoinAllocation]? @"YES" : @"NO";
      v148 = v114;
      v149 = v115;
      v146 = v112;
      v147 = v113;
      v144 = value;
      v145 = v120;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        if ([(QRAllocation *)v111 isJoinAllocation:value])
        {
          v121 = @"YES";
        }

        else
        {
          v121 = @"NO";
        }

        v148 = v114;
        v149 = v115;
        v146 = v112;
        v147 = v113;
        v144 = value;
        v145 = v121;
        _IDSLogV();
      }
    }

    if (v112 || v113 || v114 || v115)
    {
      v122 = [[QRStreamInfo alloc] initQRStreamInfo:v112 subscribedStreams:v113 generationCounter:v114 maxConcurrentStreams:v115];
      [(QRAllocation *)v111 setStreamInfo:v122];
    }
  }

  [(QRAllocation *)v111 setConnectReadyHandler:v152, v144, v145, v146, v147, v148, v149];
  [(IDSQuickRelayAllocator *)self _addAllocationForSession:value allocation:v111];
  v123 = [IDSQuickRelayMetric alloc];
  v124 = [v22 provider];
  v125 = [v22 allocateProtocolVersion];
  v126 = [v22 appID];
  v127 = [v123 initWithType:&off_100C3CB38 eventSubType:&off_100C3CBF8 duration:0 resultCode:&off_100C3CC10 providerType:v124 transportType:0 interfaceType:0 skeEnabled:0 isInitiator:&off_100C3CB68 protocolVersion:v125 retryCount:0 serviceName:v126 subServiceName:0 participantCount:0];

  v128 = +[IDSCoreAnalyticsLogger defaultLogger];
  [v128 logMetric:v127];

  v129 = [(IDSQuickRelayAllocator *)self _getIDSAWDLoggingInstance];
  v130 = [v22 provider];
  v131 = [v22 allocateProtocolVersion];
  v132 = [v22 appID];
  [v129 IDSQuickRelayEventType:&off_100C3CB38 eventSubType:&off_100C3CBF8 duration:0 resultCode:&off_100C3CC10 providerType:v130 transportType:0 interfaceType:0 skeEnabled:0 isInitiator:&off_100C3CB68 protocolVersion:v131 retryCount:0 serviceName:v132 subServiceName:0 participantCount:0];

  v133 = +[IDSDSessionController sharedInstance];
  v134 = [(QRAllocation *)v111 sessionIDStr];
  v135 = [v133 sessionWithUniqueID:v134];

  if (v135)
  {
    v136 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v137 = [v17 objectForKeyedSubscript:kIDSQRAllocateKey_TimeBase];
    if (v137)
    {
      [v151 timeIntervalSinceDate:v137];
      v139 = [NSNumber numberWithDouble:v138 * 1000.0];
      [(__CFDictionary *)v136 setObject:v139 forKeyedSubscript:IDSDSessionTimeDeltaKey];

      objc_storeStrong(&self->_timeBase, v137);
    }

    v140 = [v22 allocateProtocolVersion];
    [(__CFDictionary *)v136 setObject:v140 forKeyedSubscript:IDSDSessionReportQRVersionKey];

    [(__CFDictionary *)v136 setObject:&off_100C3CBF8 forKeyedSubscript:IDSDSessionReportQREventSubTypeKey];
    [(__CFDictionary *)v136 setObject:&off_100C3CC10 forKeyedSubscript:IDSDSessionReportResultCodeKey];
    [v135 addQREventForRTCReport:v136];
  }

  else
  {
    v141 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, "Invalid session. Skip AWD report", buf, 2u);
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

  v142 = [v22 requestIDStr];

  return v142;
}

- (id)setupNewAllocationToDevice:(id)a3 options:(id)a4 connectReadyHandler:(id)a5
{
  v8 = a3;
  Mutable = a4;
  v10 = a5;
  v11 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v46 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "setupNewAllocationToDevice:options:connectReadyHandler: called {deviceID: %@}", buf, 0xCu);
  }

  im_assert_primary_base_queue();
  if ([(IDSQuickRelayAllocator *)self _startQRConnectionWithDefaults:v8])
  {
    v12 = 0;
    goto LABEL_42;
  }

  v13 = +[IDSDServiceController sharedInstance];
  v14 = IDSRegistrationServiceTypeCloudMessaging;
  v42 = [v13 serviceWithPushTopic:IDSRegistrationServiceTypeCloudMessaging];

  v15 = +[IDSDAccountController sharedInstance];
  v16 = [v15 appleIDAccountOnService:v42];

  v17 = [(__CFString *)v8 isEqualToString:kIDSDefaultPairedDeviceID];
  if (v17)
  {
    [v16 defaultPairedDependentRegistration];
  }

  else
  {
    [v16 dependentRegistrationMatchingUUID:v8];
  }
  v41 = ;
  if (!v41)
  {
    v19 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v46 = @"No device found";
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
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

    if (v10)
    {
      v20 = [NSDictionary dictionaryWithObject:@"No device found" forKey:NSLocalizedDescriptionKey];
      valuea = [NSError errorWithDomain:@"QRAllocator" code:7002 userInfo:v20];

      v10[2](v10, valuea, 0);
      v12 = 0;
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_41;
  }

  value = [v41 objectForKey:IDSDevicePropertyPushToken];
  if (value)
  {
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_RecipientPushToken, value);
    v18 = v14;
    if (v18)
    {
      CFDictionarySetValue(Mutable, kIDSQRAllocateKey_AppID, v18);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092A5E4();
    }

    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_AllocateType, &off_100C3CBC8);
    v24 = [v16 unprefixedURIStringsFromRegistration];
    v25 = _IDSCopyCallerIDWithSelfMessagingHint();

    v38 = [v25 _bestGuessURI];

    v26 = [v16 primaryRegistration];
    v23 = [v26 registrationCert];

    v27 = [NSMutableArray alloc];
    v28 = [v16 prefixedURIStringsFromRegistration];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100597BA4;
    v43[3] = &unk_100BE0D88;
    v44 = v16;
    v29 = [v28 __imArrayByApplyingBlock:v43];
    v30 = [v27 initWithArray:v29];

    v31 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [v42 identifier];
      *buf = 138412546;
      v46 = v32;
      v47 = 2112;
      v48 = v8;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "setup allocation for %@ service to device %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v35 = [v42 identifier];
        v36 = v8;
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          v35 = [v42 identifier];
          v36 = v8;
          _IDSLogV();
        }
      }
    }

    v33 = [v42 identifier];
    BYTE4(v37) = 0;
    LODWORD(v37) = 0;
    v12 = [(IDSQuickRelayAllocator *)self _setupNewAllocation:v30 sessionID:v8 isSessionIDRemoteDeviceID:v17 ^ 1 fromIdentity:v23 fromURI:v38 fromService:v33 options:Mutable connectReadyHandler:v10 withPreferredLocalInterface:v37 forAdditionalAllocation:?];
  }

  else
  {
    v38 = [NSString stringWithFormat:@"No push token for device %@", v8];
    v21 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v46 = v38;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
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

    if (!v10)
    {
      v12 = 0;
      goto LABEL_40;
    }

    v22 = [NSDictionary dictionaryWithObject:v38 forKey:NSLocalizedDescriptionKey];
    v23 = [NSError errorWithDomain:@"QRAllocator" code:7003 userInfo:v22];

    v10[2](v10, v23, 0);
    v12 = 0;
  }

LABEL_40:
LABEL_41:

LABEL_42:

  return v12;
}

- (id)_getResponseFromQRGroupID:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_allocateResponses objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 8);
  }

  else
  {
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No response found for groupID: %@", buf, 0xCu);
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

    v7 = 0;
  }

  return v7;
}

- (void)clearResponseFromQRGroupID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "clear response for groupID %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v6 = v4;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v6 = v4;
          _IDSLogV();
        }
      }
    }

    [(NSMutableDictionary *)self->_allocateResponses removeObjectForKey:v4, v6];
  }
}

- (void)_setResponseForQRGroupID:(id)a3 groupID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "_setResponseForQRGroupID:groupID: called {groupID: %@}", &v13, 0xCu);
  }

  v9 = [(NSMutableDictionary *)self->_allocateResponses objectForKey:v6];
  v10 = v9;
  if (v9)
  {
    v11 = *(v9 + 16);
  }

  else
  {
    if (qword_100CBF0F0 != -1)
    {
      sub_10092A66C();
    }

    v11 = mach_absolute_time() * dword_100CBF0E8 / *algn_100CBF0EC / 0x3B9ACA00 + 1800;
  }

  v12 = [[IDSAllocateResponseWrapper alloc] initWithResponse:v7 cleanupTime:v11];

  [(NSMutableDictionary *)self->_allocateResponses setObject:v12 forKey:v6];
}

- (id)findAllocateResponseForSessionID:(id)a3 FromURI:(id)a4
{
  v6 = a3;
  v7 = a4;
  v65 = self;
  v8 = [(IDSQuickRelayAllocator *)self getAllocateResponse:v6 groupID:v6];
  v64 = kIDSQRAllocateKey_Allocations;
  [v8 objectForKeyedSubscript:?];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v9 = v82 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v79 objects:v90 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v80;
    v13 = kIDSQRAllocateKey_RecipientURI;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v80 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v79 + 1) + 8 * v14);
      v16 = [v15 objectForKeyedSubscript:v13];
      if ([v16 isEqualToIgnoringCase:v7])
      {
        break;
      }

      if (v11 == ++v14)
      {
        v11 = [v9 countByEnumeratingWithState:&v79 objects:v90 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v17 = +[IDSFoundationLog QRAllocator];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v84 = v7;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Main cached allocation response contains fromURI: %@", buf, 0xCu);
    }

    v18 = kIDSQRAllocateKey_RecipientID;
    v19 = [v15 objectForKeyedSubscript:kIDSQRAllocateKey_RecipientID];
    v20 = [v19 unsignedLongLongValue];

    if (v20)
    {
      v21 = [v8 objectForKeyedSubscript:v18];
      v22 = [v21 unsignedLongLongValue];

      if (v22 == v20)
      {
        v23 = v8;
        goto LABEL_45;
      }
    }
  }

  else
  {
LABEL_9:
  }

  v24 = v65;
  v25 = [(IDSQuickRelayAllocator *)v65 _findAllocationListForSessionID:v6];
  if (v25)
  {
    v61 = v9;
    v62 = v8;
    v66 = v7;
    v63 = v6;
    os_unfair_lock_lock(&v65->_lock);
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v26 = v25;
    v27 = [v26 countByEnumeratingWithState:&v75 objects:v89 count:16];
    if (v27)
    {
      v28 = *v76;
      v29 = kIDSQRAllocateKey_RecipientID;
      v30 = kIDSQRAllocateKey_RecipientURI;
      v58 = v26;
      v59 = v25;
      v51 = *v76;
      do
      {
        v31 = 0;
        v52 = v27;
        do
        {
          if (*v76 != v28)
          {
            objc_enumerationMutation(v26);
          }

          v32 = *(*(&v75 + 1) + 8 * v31);
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v33 = [v32 responses];
          v55 = [v33 countByEnumeratingWithState:&v71 objects:v88 count:16];
          if (v55)
          {
            v34 = *v72;
            v60 = v33;
            v53 = *v72;
            v54 = v31;
            do
            {
              v35 = 0;
              do
              {
                if (*v72 != v34)
                {
                  objc_enumerationMutation(v33);
                }

                v56 = v35;
                v36 = *(*(&v71 + 1) + 8 * v35);
                v37 = [v36 objectForKeyedSubscript:v29];
                v38 = [v37 unsignedLongLongValue];

                v57 = v36;
                v39 = [v36 objectForKeyedSubscript:v64];
                v67 = 0u;
                v68 = 0u;
                v69 = 0u;
                v70 = 0u;
                v40 = v39;
                v41 = [v40 countByEnumeratingWithState:&v67 objects:v87 count:16];
                if (v41)
                {
                  v42 = v41;
                  v43 = *v68;
                  while (2)
                  {
                    for (i = 0; i != v42; i = i + 1)
                    {
                      if (*v68 != v43)
                      {
                        objc_enumerationMutation(v40);
                      }

                      v45 = *(*(&v67 + 1) + 8 * i);
                      v46 = [v45 objectForKeyedSubscript:v30];
                      v47 = [v45 objectForKeyedSubscript:v29];
                      v48 = [v47 unsignedLongLongValue];

                      if (v38 == v48 && [v46 isEqualToIgnoringCase:v66])
                      {
                        v49 = +[IDSFoundationLog QRAllocator];
                        v7 = v66;
                        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412546;
                          v84 = v66;
                          v85 = 2048;
                          v86 = v38;
                          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Current cached allocation response contains fromURI: %@ and is for the corresponding participant ID %llu", buf, 0x16u);
                        }

                        os_unfair_lock_unlock(&v65->_lock);
                        v23 = v57;

                        v8 = v62;
                        v6 = v63;
                        v9 = v61;
                        v25 = v59;
                        goto LABEL_44;
                      }
                    }

                    v42 = [v40 countByEnumeratingWithState:&v67 objects:v87 count:16];
                    if (v42)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v35 = v56 + 1;
                v24 = v65;
                v26 = v58;
                v25 = v59;
                v33 = v60;
                v34 = v53;
                v31 = v54;
              }

              while ((v56 + 1) != v55);
              v55 = [v60 countByEnumeratingWithState:&v71 objects:v88 count:16];
            }

            while (v55);
          }

          v31 = v31 + 1;
          v28 = v51;
        }

        while (v31 != v52);
        v27 = [v26 countByEnumeratingWithState:&v75 objects:v89 count:16];
      }

      while (v27);
    }

    os_unfair_lock_unlock(v24 + 28);
    v23 = 0;
    v8 = v62;
    v6 = v63;
    v7 = v66;
    v9 = v61;
  }

  else
  {
    v23 = 0;
  }

LABEL_44:

LABEL_45:

  return v23;
}

- (id)getAllocateResponse:(id)a3 groupID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "getAllocateResponse:groupID called {groupID: %@}", buf, 0xCu);
  }

  v9 = [(IDSQuickRelayAllocator *)self _parseQuickRelayDefaults:v6 gropuID:v7];
  if (v9)
  {
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = v7;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "use hardcoded session token for group %@, session %@.", buf, 0x16u);
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

    v11 = v9;
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    v12 = [(IDSQuickRelayAllocator *)self _getResponseFromQRGroupID:v7];
    os_unfair_lock_unlock(&self->_lock);
    v11 = [(IDSQuickRelayAllocator *)self _createSessionInfoFromResponsePayload:v12];
  }

  return v11;
}

- (BOOL)_shouldUseCurrentResponse:(id)a3 cachedMessage:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  v8 = kIDSQRAllocateKey_SessionAllocationTime;
  v9 = sub_10001B8C4(v7, v6, kIDSQRAllocateKey_SessionAllocationTime);
  v10 = objc_opt_class();
  v11 = sub_10001B8C4(v10, v5, v8);
  v12 = v11;
  if (v9)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v67 = v9;
      *&v67[8] = 2112;
      v68 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "No session allocation time: %@ %@", buf, 0x16u);
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

    LOBYTE(v15) = 0;
  }

  else
  {
    v16 = [v9 unsignedLongLongValue];
    v17 = [v12 unsignedLongLongValue];
    if (v16 == v17)
    {
      v18 = kIDSQRAllocateKey_RelaySessionID;
      v19 = [v6 objectForKey:kIDSQRAllocateKey_RelaySessionID];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = [v6 objectForKey:v18];
        v21 = [NSData _IDSDataFromBase64String:v20];
      }

      else
      {
        v20 = [v6 objectForKey:v18];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v22 = 0;
LABEL_21:

          v23 = [v5 objectForKey:v18];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = [v5 objectForKey:v18];
            v25 = [NSData _IDSDataFromBase64String:v24];
          }

          else
          {
            v24 = [v5 objectForKey:v18];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v26 = 0;
              goto LABEL_27;
            }

            v25 = [v5 objectForKey:v18];
          }

          v26 = v25;
LABEL_27:

          if (v22 && v26)
          {
            if ([v22 length] == 16 && objc_msgSend(v26, "length") == 16)
            {
              v27 = [[NSUUID alloc] initWithUUIDBytes:{objc_msgSend(v22, "bytes")}];
              v28 = [[NSUUID alloc] initWithUUIDBytes:{objc_msgSend(v26, "bytes")}];
              v29 = v28;
              v65 = v27;
              if (!v27 || !v28)
              {
                v35 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  *v67 = v27;
                  *&v67[8] = 2112;
                  v68 = v29;
                  _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Invalid relay session UUID: %@ %@", buf, 0x16u);
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

                LOBYTE(v15) = 0;
                goto LABEL_90;
              }

              v59 = v28;
              v30 = kIDSQRAllocateKey_RelayAddress;
              v61 = [v6 objectForKey:kIDSQRAllocateKey_RelayAddress];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v31 = [v6 objectForKey:v30];
                v60 = [NSData _IDSDataFromBase64String:v31];
              }

              else
              {
                v31 = [v6 objectForKey:v30];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v60 = [v6 objectForKey:v30];
                }

                else
                {
                  v60 = 0;
                }
              }

              v62 = [v5 objectForKey:v30];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v36 = [v5 objectForKey:v30];
                v37 = [NSData _IDSDataFromBase64String:v36];
              }

              else
              {
                v36 = [v5 objectForKey:v30];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v38 = 0;
                  goto LABEL_66;
                }

                v37 = [v5 objectForKey:v30];
              }

              v38 = v37;
LABEL_66:

              v39 = v60;
              if ([v60 isEqualToData:v38])
              {
                v56 = v38;
                v40 = kIDSQRAllocateKey_RelayAddressIPv6;
                v63 = [v6 objectForKey:kIDSQRAllocateKey_RelayAddressIPv6];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v41 = [v6 objectForKey:v40];
                  v58 = [NSData _IDSDataFromBase64String:v41];
                }

                else
                {
                  v41 = [v6 objectForKey:v40];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v58 = [v6 objectForKey:v40];
                  }

                  else
                  {
                    v58 = 0;
                  }
                }

                v64 = [v5 objectForKey:v40];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v42 = [v5 objectForKey:v40];
                  v57 = [NSData _IDSDataFromBase64String:v42];
                }

                else
                {
                  v42 = [v5 objectForKey:v40];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v57 = [v5 objectForKey:v40];
                  }

                  else
                  {
                    v57 = 0;
                  }
                }

                if ([v58 isEqualToData:v57] && (v43 = objc_opt_class(), v44 = kIDSQRAllocateKey_RelayPort, sub_10001B8C4(v43, v6, kIDSQRAllocateKey_RelayPort), v45 = objc_claimAutoreleasedReturnValue(), v46 = objc_msgSend(v45, "unsignedShortValue"), v45, v47 = objc_opt_class(), sub_10001B8C4(v47, v5, v44), v48 = objc_claimAutoreleasedReturnValue(), LODWORD(v44) = objc_msgSend(v48, "unsignedShortValue"), v48, v46 == v44))
                {
                  v49 = [v22 bytes];
                  v50 = [v26 bytes];
                  v29 = v59;
                  v38 = v56;
                  v51 = bswap64(*v49);
                  v52 = bswap64(*v50);
                  if (v51 == v52 && (v51 = bswap64(v49[1]), v52 = bswap64(v50[1]), v51 == v52))
                  {
                    v53 = 0;
                    v39 = v60;
                  }

                  else
                  {
                    v39 = v60;
                    if (v51 < v52)
                    {
                      v53 = -1;
                    }

                    else
                    {
                      v53 = 1;
                    }
                  }

                  v15 = v53 >> 31;
                }

                else
                {
                  LOBYTE(v15) = 1;
                  v29 = v59;
                  v39 = v60;
                  v38 = v56;
                }
              }

              else
              {
                LOBYTE(v15) = 1;
                v29 = v59;
              }

LABEL_90:
              goto LABEL_48;
            }

            v33 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              *v67 = [v22 length];
              *&v67[4] = 1024;
              *&v67[6] = [v26 length];
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Invalid relay session ID length: %u %u", buf, 0xEu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                v54 = [v22 length];
                v55 = [v26 length];
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  [v22 length];
                  [v26 length];
                  _IDSLogV();
                }
              }
            }
          }

          else
          {
            v32 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218240;
              *v67 = v22;
              *&v67[8] = 2048;
              v68 = v26;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "No relay session ID: %p %p", buf, 0x16u);
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

          LOBYTE(v15) = 0;
LABEL_48:

          goto LABEL_49;
        }

        v21 = [v6 objectForKey:v18];
      }

      v22 = v21;
      goto LABEL_21;
    }

    LOBYTE(v15) = v16 < v17;
  }

LABEL_49:

  return v15;
}

- (id)_getResponseForQRSessionID:(id)a3 sessionID:(id)a4 index:(int64_t *)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 count];
  if (v9 - 1 < 0)
  {
LABEL_5:
    v15 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v8;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No response for relay sessionID %@", buf, 0xCu);
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

    v12 = 0;
  }

  else
  {
    v10 = v9;
    v11 = kIDSQRAllocateKey_RelaySessionID;
    while (1)
    {
      v12 = [v7 objectAtIndex:--v10];
      v13 = [v12 objectForKey:v11];
      v14 = [v8 isEqualToData:v13];

      if (v14)
      {
        break;
      }

      if (v10 <= 0)
      {
        goto LABEL_5;
      }
    }

    if (a5)
    {
      *a5 = v10;
    }
  }

  return v12;
}

- (BOOL)hasParticipantID:(id)a3 participantID:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      v11 = kIDSQRAllocateKey_RecipientID;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = [*(*(&v17 + 1) + 8 * i) objectForKey:{v11, v17}];
          if (v13)
          {
            v14 = [v6 unsignedLongLongValue];
            if (v14 == [v13 unsignedLongLongValue])
            {

              v15 = 1;
              goto LABEL_14;
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
LABEL_14:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_mergeParticipantID2PushTokenMapping:(id)a3 sourceResponse:(id)a4 mappingChange:(BOOL *)a5
{
  v36 = a3;
  v32 = a4;
  v7 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_mergeParticipantID2PushTokenMapping:destinationResponse:sourceResponse:mappingChange: called", buf, 2u);
  }

  v33 = kIDSQRAllocateKey_Allocations;
  v8 = [v36 objectForKey:?];
  v9 = [v32 objectForKey:v33];
  v31 = v9;
  *a5 = 0;
  if (v9)
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v9;
    v10 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v10)
    {
      v34 = 0;
      v37 = kIDSQRAllocateKey_RecipientID;
      v38 = *v40;
      v11 = kIDSQRAllocateKey_RecipientPushToken;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v40 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v39 + 1) + 8 * i);
          v14 = [v13 objectForKey:{v37, v29}];
          v15 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v14 unsignedLongLongValue]);
          v16 = [v13 objectForKey:v11];
          v17 = v16;
          if (v15)
          {
            v18 = v16 == 0;
          }

          else
          {
            v18 = 1;
          }

          if (v18)
          {
            v19 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v44[0] = v13;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "No recipientID or push token in %@", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                v29 = v13;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  v29 = v13;
                  _IDSLogV();
                }
              }
            }
          }

          else
          {
            os_unfair_lock_lock(&self->_lock);
            if (![(IDSQuickRelayAllocator *)self hasParticipantID:v8 participantID:v15])
            {
              v20 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v44[0] = v15;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "merge new participant id %@", buf, 0xCu);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  v29 = v15;
                  _IDSLogTransport();
                  if (_IDSShouldLog())
                  {
                    v29 = v15;
                    _IDSLogV();
                  }
                }
              }

              if (!v8)
              {
                v8 = objc_alloc_init(NSMutableArray);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v21 = v36;
                }

                else
                {
                  v22 = [v36 mutableCopy];

                  v21 = v22;
                }

                v36 = v21;
                [v21 setObject:v8 forKey:{v33, v29}];
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v23 = v8;
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v24 = [v36 mutableCopy];

                  v36 = v24;
                }

                v23 = [v8 mutableCopy];

                [v36 setObject:v23 forKey:v33];
              }

              [v23 addObject:{v13, v29}];
              ++v34;
              v8 = v23;
            }

            os_unfair_lock_unlock(&self->_lock);
          }
        }

        v10 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v10);

      if (v34)
      {
        *a5 = 1;
        v25 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          LODWORD(v44[0]) = v34;
          WORD2(v44[0]) = 2112;
          *(v44 + 6) = v8;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%u new participant-id to push token mappings added, %@", buf, 0x12u);
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

    else
    {
    }
  }

  else
  {
    v26 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v44[0] = v32;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "No participant information in %@", buf, 0xCu);
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

  v27 = v36;

  return v36;
}

- (void)_notifyParticipantID2PushTokenMappingChange:(id)a3
{
  v4 = a3;
  v5 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_notifyParticipantID2PushTokenMappingChange: called", buf, 2u);
  }

  v6 = kIDSQRAllocateKey_IDSSessionID;
  v7 = [v4 objectForKey:kIDSQRAllocateKey_IDSSessionID];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v4 objectForKey:v6];
    v9 = [NSData _IDSDataFromBase64String:v8];
    v10 = sub_100592F04(v9);
  }

  else
  {
    v8 = [v4 objectForKey:v6];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v4 objectForKey:v6];
      v10 = sub_100592F04(v11);
    }

    else
    {
      v10 = sub_100592F04(0);
    }
  }

  v12 = [(IDSQuickRelayAllocator *)self _findSessionWithID:v10];
  v13 = v12;
  if (v12)
  {
    [v12 onParticipantID2PushTokenMappingChange:v4];
  }

  else
  {
    v14 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Session not found for %@", buf, 0xCu);
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

- (void)_notifyURIToParticipantIDMappingChange:(id)a3
{
  v4 = a3;
  v5 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = IDSLoggableDescriptionForObjectOnService();
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_notifyURIToParticipantIDMappingChange: %@", buf, 0xCu);
  }

  v7 = kIDSQRAllocateKey_IDSSessionID;
  v8 = [v4 objectForKey:kIDSQRAllocateKey_IDSSessionID];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v4 objectForKey:v7];
    v10 = [NSData _IDSDataFromBase64String:v9];
    v11 = sub_100592F04(v10);
  }

  else
  {
    v9 = [v4 objectForKey:v7];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v4 objectForKey:v7];
      v11 = sub_100592F04(v12);
    }

    else
    {
      v11 = sub_100592F04(0);
    }
  }

  v13 = [(IDSQuickRelayAllocator *)self _findSessionWithID:v11];
  if (v13)
  {
    v14 = [(IDSQuickRelayAllocator *)self _createSessionInfoFromResponsePayload:v4];
    [v13 onURI2ParticipantIDMappingChange:v14 allocateResponse:v4];
  }

  else
  {
    v15 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Session not found for %@", buf, 0xCu);
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

- (BOOL)_addResponseToCache:(id)a3 sessionInfo:(id)a4 modifiedMessage:(id *)a5
{
  v8 = a3;
  v77 = a4;
  v9 = v8;
  *a5 = v8;
  v10 = objc_opt_class();
  v11 = sub_10001B8C4(v10, v8, kIDSQRAllocateKey_GroupID);
  if (v11)
  {
    v12 = kIDSQRAllocateKey_RelaySessionID;
    v13 = [v8 objectForKey:kIDSQRAllocateKey_RelaySessionID];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v8 objectForKey:v12];
      v78 = [NSData _IDSDataFromBase64String:v14];
    }

    else
    {
      v14 = [v8 objectForKey:v12];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v78 = [v8 objectForKey:v12];
      }

      else
      {
        v78 = 0;
      }
    }

    if (!v78)
    {
      v42 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v83 = v8;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "No QR sessionID in %@", buf, 0xCu);
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

      v16 = 0;
      goto LABEL_148;
    }

    v17 = [(IDSQuickRelayAllocator *)self _getResponseFromQRGroupID:v11];
    v81 = 0;
    v76 = [(IDSQuickRelayAllocator *)self _findSessionWithID:v11];
    if (!v17)
    {
      [(IDSQuickRelayAllocator *)self _setResponseForQRGroupID:v8 groupID:v11];
      v16 = 1;
      goto LABEL_70;
    }

    v18 = [v17 objectForKey:v12];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v17 objectForKey:v12];
      v20 = [NSData _IDSDataFromBase64String:v19];
      v21 = [v78 isEqualToData:v20];

      if (v21)
      {
        goto LABEL_18;
      }

      goto LABEL_57;
    }

    v43 = [v17 objectForKey:v12];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = [v17 objectForKey:v12];
      v45 = [v78 isEqualToData:v44];

      if ((v45 & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v46 = [v78 isEqualToData:0];

      if ((v46 & 1) == 0)
      {
LABEL_57:
        if ([(IDSQuickRelayAllocator *)self _shouldUseCurrentResponse:v8 cachedMessage:v17])
        {
          v47 = [(IDSQuickRelayAllocator *)self _mergeParticipantID2PushTokenMapping:v8 sourceResponse:v17 mappingChange:&v81];

          v48 = v47;
          *a5 = v47;
          v49 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v83 = v17;
            v84 = 2112;
            v85 = v47;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Should switch from %@ to %@", buf, 0x16u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v70 = v17;
              v72 = v47;
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                v70 = v17;
                v72 = v47;
                _IDSLogV();
              }
            }
          }

          [(IDSQuickRelayAllocator *)self _setResponseForQRGroupID:v47 groupID:v11, v70, v72];
          v16 = 1;
          goto LABEL_71;
        }

        v50 = [(IDSQuickRelayAllocator *)self _mergeParticipantID2PushTokenMapping:v17 sourceResponse:v8 mappingChange:&v81];
        if (v50 != v17)
        {
          [(IDSQuickRelayAllocator *)self _setResponseForQRGroupID:v50 groupID:v11];
        }

        if (v81 == 1)
        {
          [(IDSQuickRelayAllocator *)self _notifyParticipantID2PushTokenMappingChange:v50];
          [(IDSQuickRelayAllocator *)self _notifyURIToParticipantIDMappingChange:v50];
        }

        v16 = 0;
LABEL_70:
        v47 = v8;
LABEL_71:
        v51 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v83 = v47;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "message added to cache: %@", buf, 0xCu);
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

        goto LABEL_147;
      }
    }

LABEL_18:
    v22 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v83 = v78;
      v84 = 2112;
      v85 = v17;
      v86 = 2112;
      v87 = v8;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Duplicated responses for sessionID: %@, %@, %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v72 = v17;
        v73 = v8;
        v70 = v78;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v72 = v17;
          v73 = v8;
          v70 = v78;
          _IDSLogV();
        }
      }
    }

    v23 = kIDSQRAllocateKey_RecipientID;
    v24 = [v8 objectForKeyedSubscript:{kIDSQRAllocateKey_RecipientID, v70, v72, v73}];
    v25 = [v24 unsignedLongLongValue];
    v26 = [v17 objectForKeyedSubscript:v23];
    LODWORD(v25) = v25 == [v26 unsignedLongLongValue];

    if (v25)
    {
      v27 = [v8 objectForKey:kIDSQRAllocateKey_RelayExpiryTimestamp];
      v75 = v27;
      if (v27)
      {
        v28 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Saving duplicate response!", buf, 2u);
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

        if (!self->_duplicateAllocateResponses)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          duplicateAllocateResponses = self->_duplicateAllocateResponses;
          self->_duplicateAllocateResponses = Mutable;
        }

        groupIDToDuplicateResponseCleanupTimers = self->_groupIDToDuplicateResponseCleanupTimers;
        if (!groupIDToDuplicateResponseCleanupTimers)
        {
          v32 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          v33 = self->_groupIDToDuplicateResponseCleanupTimers;
          self->_groupIDToDuplicateResponseCleanupTimers = v32;

          groupIDToDuplicateResponseCleanupTimers = self->_groupIDToDuplicateResponseCleanupTimers;
        }

        v34 = [(NSMutableDictionary *)groupIDToDuplicateResponseCleanupTimers objectForKey:v11];
        v35 = v34;
        if (v34)
        {
          dispatch_source_cancel(v34);
        }

        [(NSMutableDictionary *)self->_duplicateAllocateResponses setObject:v8 forKey:v11];
        v36 = [v75 unsignedLongLongValue];
        v37 = time(0);
        v38 = im_primary_queue();
        source = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v38);

        v39 = dispatch_time(0, 1000000 * &v36[-1000 * v37 - 10]);
        dispatch_source_set_timer(source, v39, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_10059B7C8;
        handler[3] = &unk_100BD6E40;
        handler[4] = self;
        v40 = v11;
        v80 = v40;
        dispatch_source_set_event_handler(source, handler);
        dispatch_resume(source);
        v41 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Duplicate response purge timer started!", buf, 2u);
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

        [(NSMutableDictionary *)self->_groupIDToDuplicateResponseCleanupTimers setObject:source forKey:v40];

LABEL_90:
        v27 = v75;
      }
    }

    else
    {
      if (!v76)
      {
        goto LABEL_92;
      }

      v27 = [v76 fromURI];
      v75 = v27;
      if (v27)
      {
        source = [v27 prefixedURI];
        v52 = [(IDSQuickRelayAllocator *)self _getURIForRecipientFromResponse:v8];
        if ([source isEqualToString:v52])
        {
          v47 = [(IDSQuickRelayAllocator *)self _mergeParticipantID2PushTokenMapping:v8 sourceResponse:v17 mappingChange:&v81];

          v53 = v47;
          *a5 = v47;
          [(IDSQuickRelayAllocator *)self _setResponseForQRGroupID:v47 groupID:v11];
          v54 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v83 = v47;
            _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "message added to cache: %@", buf, 0xCu);
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

          if (v81 == 1)
          {
            [(IDSQuickRelayAllocator *)self _notifyParticipantID2PushTokenMappingChange:v47];
            [(IDSQuickRelayAllocator *)self _notifyURIToParticipantIDMappingChange:v47];
          }

          v16 = 1;
          goto LABEL_147;
        }

        goto LABEL_90;
      }
    }

LABEL_92:
    v55 = kIDSQRAllocateKey_QRConnectStatus;
    v56 = [v17 objectForKey:kIDSQRAllocateKey_QRConnectStatus];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v57 = [v17 objectForKey:v55];
      v58 = [NSData _IDSDataFromBase64String:v57];
    }

    else
    {
      v57 = [v17 objectForKey:v55];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v59 = 0;
LABEL_98:

        if (v59)
        {
          v60 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v83 = v59;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "cached allocation response has issue: %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v71 = v59;
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                v71 = v59;
                _IDSLogV();
              }
            }
          }

          v47 = [(IDSQuickRelayAllocator *)self _mergeParticipantID2PushTokenMapping:v8 sourceResponse:v17 mappingChange:&v81, v71];

          v61 = v47;
          *a5 = v47;
          [(IDSQuickRelayAllocator *)self _setResponseForQRGroupID:v47 groupID:v11];
          v62 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v83 = v47;
            _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "message added to cache: %@", buf, 0xCu);
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

          v16 = 1;
          goto LABEL_146;
        }

        v63 = [(IDSQuickRelayAllocator *)self _mergeParticipantID2PushTokenMapping:v17 sourceResponse:v8 mappingChange:&v81];
        if (v63 != v17)
        {
          [(IDSQuickRelayAllocator *)self _setResponseForQRGroupID:v63 groupID:v11];
        }

        if (v81 == 1)
        {
          [(IDSQuickRelayAllocator *)self _notifyParticipantID2PushTokenMappingChange:v63];
          [(IDSQuickRelayAllocator *)self _notifyURIToParticipantIDMappingChange:v63];
        }

        v64 = [v77 objectForKey:kIDSQRAllocateKey_IDSSessionID];
        if (v64)
        {
          if (v76)
          {
            if ([v76 shouldConnectToQRServer])
            {
              v65 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "use duplicated response", buf, 2u);
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

              v16 = 1;
              goto LABEL_145;
            }

            v68 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "ignore duplicated response", buf, 2u);
            }

            if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLogTransport() || (_IDSLogTransport(), !_IDSShouldLog()))
            {
LABEL_144:
              v16 = 0;
LABEL_145:

              v47 = v8;
LABEL_146:

LABEL_147:
              v8 = v47;
LABEL_148:

              goto LABEL_149;
            }
          }

          else
          {
            v67 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v83 = v64;
              _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "failed to find IDSDSession object for %@", buf, 0xCu);
            }

            if (!os_log_shim_legacy_logging_enabled())
            {
              goto LABEL_144;
            }

            if (!_IDSShouldLogTransport())
            {
              goto LABEL_144;
            }

            _IDSLogTransport();
            if (!_IDSShouldLog())
            {
              goto LABEL_144;
            }
          }
        }

        else
        {
          v66 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v83 = v77;
            _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "no IDSDSession ID in %@", buf, 0xCu);
          }

          if (!os_log_shim_legacy_logging_enabled())
          {
            goto LABEL_144;
          }

          if (!_IDSShouldLogTransport())
          {
            goto LABEL_144;
          }

          _IDSLogTransport();
          if (!_IDSShouldLog())
          {
            goto LABEL_144;
          }
        }

        _IDSLogV();
        goto LABEL_144;
      }

      v58 = [v17 objectForKey:v55];
    }

    v59 = v58;
    goto LABEL_98;
  }

  v15 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v83 = v8;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "No groupID in %@", buf, 0xCu);
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

  v16 = 0;
LABEL_149:

  return v16;
}

- (id)_getURIForRecipientFromResponse:(id)a3
{
  v3 = a3;
  v4 = kIDSQRAllocateKey_RecipientID;
  v5 = [v3 objectForKeyedSubscript:kIDSQRAllocateKey_RecipientID];
  v6 = [v5 unsignedLongLongValue];

  [v3 objectForKeyedSubscript:kIDSQRAllocateKey_Allocations];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v20 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:{v4, v17}];
        v14 = [v13 unsignedLongLongValue];

        if (v6 == v14)
        {
          v15 = [v12 objectForKeyedSubscript:kIDSQRAllocateKey_RecipientURI];
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (BOOL)_addConnectStatus:(id)a3 relaySessionID:(id)a4 previousTime:(unint64_t)a5 qrReason:(unsigned __int16)a6 previousError:(unsigned __int16)a7 previousRelayIP:(unsigned int)a8 previousAccessToken:(id)a9
{
  v9 = *&a8;
  v10 = a7;
  v11 = a6;
  v15 = a3;
  v16 = a4;
  v36 = a9;
  v17 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413570;
    v38 = v15;
    v39 = 2112;
    v40 = v16;
    v41 = 1024;
    v42 = v11;
    v43 = 1024;
    v44 = v10;
    v45 = 1024;
    v46 = v9;
    v47 = 2112;
    v48 = v36;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "addConnectStatus, groupID: %@, relaySessionID: %@i, data: %u %u %u %@", buf, 0x32u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v34 = v9;
      v35 = v36;
      v32 = v11;
      v33 = v10;
      v30 = v15;
      v31 = v16;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v34 = v9;
        v35 = v36;
        v32 = v11;
        v33 = v10;
        v30 = v15;
        v31 = v16;
        _IDSLogV();
      }
    }
  }

  v18 = [(IDSQuickRelayAllocator *)self _getResponseFromQRGroupID:v15, v30, v31, v32, v33, v34, v35];
  v19 = v18;
  if (!v18)
  {
    v25 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v15;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "No response for groupID: %@", buf, 0xCu);
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

    v19 = 0;
    goto LABEL_24;
  }

  v20 = [v18 objectForKey:kIDSQRAllocateKey_RelaySessionID];
  v21 = [v16 isEqualToData:v20];

  if ((v21 & 1) == 0)
  {
    v26 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v38 = v16;
      v39 = 2112;
      v40 = v19;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Response is not for sessionID %@, response %@", buf, 0x16u);
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

LABEL_24:
    v27 = 0;
    goto LABEL_33;
  }

  v22 = sub_10059BFE4(a5, v11, v10, v9, v36);
  v23 = sub_10059C0A8(v22);
  sub_100597284(v22);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v19 setObject:v23 forKey:kIDSQRAllocateKey_QRConnectStatus];
    v24 = v19;
  }

  else
  {
    v24 = [v19 mutableCopy];

    [v24 setObject:v23 forKey:kIDSQRAllocateKey_QRConnectStatus];
    [(IDSQuickRelayAllocator *)self _setResponseForQRGroupID:v24 groupID:v15];
  }

  v28 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v16;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Cached response modified for relay sessionID %@", buf, 0xCu);
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

  v27 = 1;
  v19 = v24;
LABEL_33:

  return v27;
}

- (BOOL)invalidateLatestResponse:(id)a3 qrReason:(unsigned __int16)a4 previousError:(unsigned __int16)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  v9 = +[IMLockdownManager sharedInstance];
  v10 = [v9 isInternalInstall];

  if (v10)
  {
    v11 = [(IDSQuickRelayAllocator *)self _getResponseFromQRGroupID:v8];
    v12 = v11;
    if (v11)
    {
      *buf = -1431655766;
      v13 = [(__CFDictionary *)v11 objectForKey:kIDSQRAllocateKey_RelaySessionID];
      if (kIDSQRAllocateKey_RelaySessionToken)
      {
        Value = CFDictionaryGetValue(v12, kIDSQRAllocateKey_RelaySessionToken);
      }

      else
      {
        Value = 0;
      }

      v18 = Value;
      if (kIDSQRAllocateKey_RelayAddress)
      {
        v19 = CFDictionaryGetValue(v12, kIDSQRAllocateKey_RelayAddress);
      }

      else
      {
        v19 = 0;
      }

      [v19 getBytes:buf length:4];
      ids_monotonic_time();
      v16 = [(IDSQuickRelayAllocator *)self _addConnectStatus:v8 relaySessionID:v13 previousTime:v20 qrReason:v6 previousError:v5 previousRelayIP:*buf previousAccessToken:v18];
    }

    else
    {
      v17 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = v8;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "no response for groupID %@", buf, 0xCu);
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

      v16 = 0;
    }
  }

  else
  {
    v15 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "response invalidation is supported on internal install only", buf, 2u);
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

    v16 = 0;
  }

  return v16;
}

- (void)_dispatchIncomingAllocateResponse:(id)a3 isFromCache:(BOOL)a4 connectReadyHandler:(id)a5 requestOptions:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10059C558;
  block[3] = &unk_100BD9968;
  block[4] = self;
  v18 = v10;
  v21 = a4;
  v19 = v12;
  v20 = v11;
  v14 = v11;
  v15 = v12;
  v16 = v10;
  dispatch_async(v13, block);
}

- (id)_getSelfAllocationFromCache:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(IDSQuickRelayAllocator *)self _findAllocationListForSessionID:v4];
  v6 = v5;
  if (v5)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v8)
    {
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = [*(*(&v17 + 1) + 8 * i) getAllocation];
          if (v11)
          {
            v13 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v22 = v11;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "self allocation in cache: %@", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                v16 = v11;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  v16 = v11;
                  _IDSLogV();
                }
              }
            }

            [(IDSQuickRelayAllocator *)self _dispatchIncomingAllocateResponse:v11 isFromCache:1 connectReadyHandler:0 requestOptions:0, v16];
            os_unfair_lock_unlock(&self->_lock);
            v14 = [v11 objectForKey:kIDSQRAllocateKey_RequestID];
            v12 = sub_100592F04(v14);

            goto LABEL_21;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v17 objects:v23 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v7 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_getSelfAllocationFromCache: allocation is nil {sessinID: %@}", buf, 0xCu);
  }

  v12 = 0;
LABEL_21:

  return v12;
}

- (void)_sendIDQueryRequest:(id)a3 fromIdentity:(id)a4 fromURI:(id)a5 fromService:(id)a6 completionBlock:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(IDSQuickRelayAllocator *)self _queryPolicy];
  v18 = [v17 shouldQueryOnEveryQRAllocationForServiceIdentifier:v15];

  v19 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = @"NO";
    *buf = 138413314;
    v25 = v15;
    if (v18)
    {
      v20 = @"YES";
    }

    v26 = 2112;
    v27 = v20;
    v28 = 2112;
    v29 = v14;
    v30 = 2048;
    v31 = v13;
    v32 = 2112;
    v33 = v12;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "_sendIDQueryRequest:fromIdentity:fromURI:fromService:completionBlock: called { fromService: %@, shouldForceQuery: %@, fromURI: %@, fromIdentity: %p, recipientIDs: %@ }", buf, 0x34u);
  }

  v21 = [(IDSQuickRelayAllocator *)self _peerIDManager];
  v22 = [IDSURI URIWithPrefixedURI:v14 withServiceLoggingHint:v15];
  LOBYTE(v23) = 0;
  [v21 startQueryForURIs:v12 fromIdentity:v13 fromURI:v22 fromService:v15 forSending:1 forceToServer:v18 clientRequestedForceQuery:v23 reason:@"QRAlloc" completionBlock:v16];
}

- (id)_setupNewAllocation:(id)a3 sessionID:(id)a4 isSessionIDRemoteDeviceID:(BOOL)a5 fromIdentity:(id)a6 fromURI:(id)a7 fromService:(id)a8 options:(id)a9 connectReadyHandler:(id)a10 withPreferredLocalInterface:(int)a11 forAdditionalAllocation:(BOOL)a12
{
  v97 = a5;
  v100 = a3;
  v16 = a4;
  v101 = a6;
  v103 = a7;
  v99 = a8;
  v17 = a9;
  v98 = a10;
  v18 = [v17 objectForKeyedSubscript:kIDSQRAllocateKey_IsLightweightParticipant];
  v19 = [v18 BOOLValue];

  v20 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = @"NO";
    *buf = 138412802;
    v118 = v16;
    v119 = 2112;
    if (v19)
    {
      v21 = @"YES";
    }

    v120 = v21;
    v121 = 2112;
    v122 = v103;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "_setupNewAllocation: called {sessionID: %@}, isLightweightParticipant = %@, fromURI: %@", buf, 0x20u);
  }

  im_assert_primary_base_queue();
  if (!v101 || !v103)
  {
    v22 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v118 = v99;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Unable to setup QR allocation for unregistered account for %@ service", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v88 = v99;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v88 = v99;
          _IDSLogV();
        }
      }
    }
  }

  if (!v16)
  {
    v23 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "missing sessionID to setup a QR allocation", buf, 2u);
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

  if ([(IDSQuickRelayAllocator *)self _startQRConnectionWithDefaults:v16, v88])
  {
    v24 = [(IDSQuickRelayAllocator *)self _findSessionWithID:v16];
    v25 = v24;
    if (v24 && a12)
    {
      [v24 setHasPendingAllocation:0 forIDSSession:v16];
    }

    goto LABEL_25;
  }

  v27 = kIDSQRAllocateKey_AllocateType;
  v28 = [v17 objectForKey:?];
  if ([v28 intValue] == 3)
  {
    v29 = [v17 objectForKey:kIDSQRAllocateKey_TestOptions];
    v30 = [v29 isEqualToString:IDSGroupSessionForceQRSession];

    if (v30)
    {
      v96 = 0;
      goto LABEL_90;
    }

    v28 = [v17 objectForKey:kIDSQRAllocateKey_GroupID];
    if (!v28)
    {
      v32 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v118 = v17;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "No groupID for shared session %@", buf, 0xCu);
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

      goto LABEL_25;
    }

    v31 = +[NSMutableDictionary dictionary];
    [(NSMutableDictionary *)self->_pushTokenToURIForGroup setObject:v31 forKeyedSubscript:v28];

    theDict = [(IDSQuickRelayAllocator *)self _getResponseFromQRGroupID:v28];
    if (theDict)
    {
LABEL_56:
      v41 = [v17 objectForKey:kIDSQRAllocateKey_AllocateRequestForUnauthorizedUser];
      v42 = [v41 BOOLValue];

      if (theDict)
      {
        v43 = [(IDSQuickRelayAllocator *)self _getURIForRecipientFromResponse:?];
        v44 = v43;
        if (v103)
        {
          v45 = [v43 isEqualToString:v103];
        }

        else
        {
          v45 = 1;
        }

        if (!(v42 & 1 | ((v45 & 1) == 0)))
        {
          v96 = [(__CFDictionary *)theDict objectForKey:kIDSQRAllocateKey_QRConnectStatus];
          v74 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v118 = v16;
            v119 = 2112;
            v120 = theDict;
            v121 = 2112;
            v122 = v96;
            _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "found cached allocation response for %@: %@, previous connect status %@", buf, 0x20u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v90 = theDict;
              v91 = v96;
              v89 = v16;
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                v90 = theDict;
                v91 = v96;
                v89 = v16;
                _IDSLogV();
              }
            }
          }

          [(IDSQuickRelayAllocator *)self _storeMappingFromPushTokenToURIs:v100 fromID:v103 service:v99 cert:v101 forGroup:v28, v89, v90, v91];
          if (v96)
          {
            v75 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v118 = v16;
              v119 = 2112;
              v120 = v96;
              _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "cached allocation response has issue: %@ %@", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                v89 = v16;
                v90 = v96;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  v89 = v16;
                  v90 = v96;
                  _IDSLogV();
                }
              }
            }
          }

          else
          {
            v76 = [(__CFDictionary *)theDict objectForKey:kIDSQRAllocateKey_RelayExpiryTimestamp];
            v77 = v76;
            if (!v76)
            {
              goto LABEL_156;
            }

            v78 = [v76 unsignedLongLongValue];
            v79 = 1000 * time(0);
            v80 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218240;
              v118 = v78;
              v119 = 2048;
              v120 = v79;
              _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "Expired time: %llu, current time: %llu", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                v89 = v78;
                v90 = v79;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  v89 = v78;
                  v90 = v79;
                  _IDSLogV();
                }
              }
            }

            if (v79 + 10 < v78)
            {
              goto LABEL_156;
            }

            v81 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "Response has expired or about to expire", buf, 2u);
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

            v93 = [(NSMutableDictionary *)self->_duplicateAllocateResponses objectForKey:v28, v89, v90];
            v92 = [(IDSQuickRelayAllocator *)self _getURIForRecipientFromResponse:v93];
            if (v93 && (!v103 || [v92 isEqualToString:v103]))
            {
              v82 = theDict;
              theDict = v93;
              v96 = 0;
            }

            else
            {
              v83 = kIDSQRAllocateKey_RelaySessionID ? CFDictionaryGetValue(theDict, kIDSQRAllocateKey_RelaySessionID) : 0;
              v82 = v83;
              v84 = kIDSQRAllocateKey_RelayAddress ? CFDictionaryGetValue(theDict, kIDSQRAllocateKey_RelayAddress) : 0;
              v85 = v84;
              *buf = -1431655766;
              [v85 getBytes:buf length:4];
              ids_monotonic_time();
              v87 = sub_10059BFE4(v86, 1, 0xFFFF, *buf, v82);
              v96 = sub_10059C0A8(v87);
              sub_100597284(v87);
            }

            [(NSMutableDictionary *)self->_allocateResponses removeObjectForKey:v28];
            if (!v96)
            {
LABEL_156:
              [IDSQuickRelayAllocator _dispatchIncomingAllocateResponse:"_dispatchIncomingAllocateResponse:isFromCache:connectReadyHandler:requestOptions:" isFromCache:v89 connectReadyHandler:? requestOptions:?];

LABEL_25:
              v26 = 0;
              goto LABEL_113;
            }
          }

          goto LABEL_80;
        }
      }

      else
      {
        v45 = 0;
      }

      v46 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v47 = @"NO";
        if (v42)
        {
          v48 = @"YES";
        }

        else
        {
          v48 = @"NO";
        }

        *buf = 138412802;
        v118 = v16;
        v120 = v48;
        v119 = 2112;
        if (v45)
        {
          v47 = @"YES";
        }

        v121 = 2112;
        v122 = v47;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "found no cached allocation response for %@, isAllocateRequestForUnauthorizedUser: %@, shouldUseCachedResponse: %@", buf, 0x20u);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
      {
        v49 = v42 ? @"YES" : @"NO";
        v50 = v45 ? @"YES" : @"NO";
        v90 = v49;
        v91 = v50;
        v89 = v16;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v90 = v49;
          v91 = v50;
          v89 = v16;
          _IDSLogV();
        }
      }

      v96 = 0;
LABEL_80:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v51 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "trying to change a read-only dictionary", buf, 2u);
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

        v52 = [v17 mutableCopy];

        v17 = v52;
      }

      v53 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v100 count]);
      [v17 setObject:v53 forKey:kIDSQRAllocateKey_GroupMemberCount];

      goto LABEL_89;
    }

    v33 = [(NSMutableDictionary *)self->_sessionIDToURIToResponsePayload objectForKey:v16];
    v34 = v33;
    if (!v33)
    {
      theDict = 0;
LABEL_55:

      goto LABEL_56;
    }

    v35 = [v33 allKeys];
    v36 = v35;
    if (v103)
    {
      theDict = [v34 objectForKey:v103];
    }

    else
    {
      if (![v35 count])
      {
        goto LABEL_53;
      }

      v37 = [v36 objectAtIndexedSubscript:0];
      theDict = [v34 objectForKey:v37];
    }

    if (theDict)
    {
      v38 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = [(__CFDictionary *)theDict objectForKeyedSubscript:kIDSQRAllocateKey_RecipientID];
        *buf = 138412290;
        v118 = v39;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Setting allocate response for participantID: %@!", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v40 = kIDSQRAllocateKey_RecipientID;
          v89 = [(__CFDictionary *)theDict objectForKeyedSubscript:kIDSQRAllocateKey_RecipientID];
          _IDSLogTransport();

          if (_IDSShouldLog())
          {
            v89 = [(__CFDictionary *)theDict objectForKeyedSubscript:v40, v89];
            _IDSLogV();
          }
        }
      }

      [(NSMutableDictionary *)self->_sessionIDToURIToResponsePayload removeAllObjects];
      goto LABEL_54;
    }

LABEL_53:
    theDict = 0;
LABEL_54:

    goto LABEL_55;
  }

  v96 = 0;
LABEL_89:

LABEL_90:
  Value = 0;
  if (v17 && kIDSQRAllocateKey_RecipientPushToken)
  {
    Value = CFDictionaryGetValue(v17, kIDSQRAllocateKey_RecipientPushToken);
  }

  theDicta = Value;
  v55 = +[NSUUID UUID];
  v56 = [v17 objectForKey:v27];
  v57 = [v56 intValue];

  if (v100 || v57 != 2)
  {
    v61 = [v17 objectForKeyedSubscript:kIDSQRAllocateKey_waitingForAllocation];
    v62 = [v61 BOOLValue];

    if (v62)
    {
      v63 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v118 = v16;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Will not send QR allocation request for session: %@", buf, 0xCu);
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

      v26 = 0;
    }

    else
    {
      v104[0] = _NSConcreteStackBlock;
      v104[1] = 3221225472;
      v104[2] = sub_10059DE58;
      v104[3] = &unk_100BE0DB0;
      v104[4] = self;
      v64 = v99;
      v105 = v64;
      v106 = theDicta;
      v65 = v100;
      v107 = v65;
      v66 = v101;
      v108 = v66;
      v109 = v17;
      v67 = v98;
      v114 = v67;
      v110 = v16;
      v115 = a12;
      v111 = v96;
      v68 = v103;
      v112 = v68;
      v116 = v97;
      v69 = v55;
      v113 = v69;
      v70 = objc_retainBlock(v104);
      if ([v65 count])
      {
        [(IDSQuickRelayAllocator *)self _sendIDQueryRequest:v65 fromIdentity:v66 fromURI:v68 fromService:v64 completionBlock:v70];
      }

      else if (v67)
      {
        v71 = [NSDictionary dictionaryWithObject:@"Missing recipientIDs" forKey:NSLocalizedDescriptionKey];
        v72 = [NSError errorWithDomain:@"QRAllocator" code:7001 userInfo:v71];

        (*(v67 + 2))(v67, v72, 0);
      }

      v26 = [v69 UUIDString];
    }
  }

  else
  {
    v58 = [(IDSQuickRelayAllocator *)self _getSelfAllocationFromCache:v16];
    v59 = v58;
    if (v58)
    {
      v60 = v58;
    }

    else
    {
      LODWORD(v91) = a11;
      v60 = [(IDSQuickRelayAllocator *)self _setupAllocation:0 fromURI:v103 sessionID:v16 isSessionIDRemoteDeviceID:v97 options:v17 prevConnectStatus:0 requestUUID:v55 connectReadyHandler:v98 withPreferredLocalInterface:v91];
    }

    v26 = v60;
  }

LABEL_113:

  return v26;
}

- (id)_tokenURIForToken:(id)a3 uri:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length] && objc_msgSend(v6, "length"))
  {
    v7 = [NSString alloc];
    v8 = [v5 __imHexString];
    v9 = [v7 initWithFormat:@"token:%@/%@", v8, v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)setupNewAllocation:(id)a3 sessionID:(id)a4 fromIdentity:(id)a5 fromURI:(id)a6 fromService:(id)a7 options:(id)a8 connectReadyHandler:(id)a9
{
  BYTE4(v10) = 0;
  LODWORD(v10) = 0;
  return [(IDSQuickRelayAllocator *)self _setupNewAllocation:a3 sessionID:a4 isSessionIDRemoteDeviceID:0 fromIdentity:a5 fromURI:a6 fromService:a7 options:a8 connectReadyHandler:a9 withPreferredLocalInterface:v10 forAdditionalAllocation:?];
}

- (BOOL)_startQRConnectionWithDefaults:(id)a3
{
  v4 = a3;
  v5 = [(IDSQuickRelayAllocator *)self _parseQuickRelayDefaults:v4 gropuID:0];
  if (v5)
  {
    v6 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "use QR session info from user defaults: %@.", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v13 = v5;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v13 = v5;
          _IDSLogV();
        }
      }
    }

    v7 = +[NSUUID UUID];
    v8 = [v7 UUIDString];

    if (v8)
    {
      CFDictionarySetValue(v5, kIDSQRAllocateKey_RequestID, v8);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092A71C();
    }

    v9 = v4;
    if (v9)
    {
      CFDictionarySetValue(v5, kIDSQRAllocateKey_IDSSessionID, v9);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092A7A4();
    }

    CFDictionarySetValue(v5, kIDSQRAllocateKey_isInitiator, &__kCFBooleanTrue);
    if ([v9 isEqualToString:kIDSDefaultPairedDeviceID])
    {
      CFDictionarySetValue(v5, IDSGlobalLinkOptionForceRelayKey, &__kCFBooleanTrue);
    }

    idsSessionIDToqrSessionID = self->_idsSessionIDToqrSessionID;
    v11 = [(__CFDictionary *)v5 objectForKey:kIDSQRAllocateKey_RelaySessionID];
    [(NSMutableDictionary *)idsSessionIDToqrSessionID setObject:v11 forKey:v9];

    [(IDSQuickRelayAllocator *)self _startQRConnectionForSession:v5 isInitiatorsAcceptedSession:0 withLocalInterfacePreference:0];
  }

  return v5 != 0;
}

- (id)_getPushTokenFromParticipantID:(id)a3 participantID:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v9)
  {
    v10 = *v23;
    v11 = kIDSQRAllocateKey_RecipientID;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [v13 objectForKey:v11];
        v15 = v14;
        if (v14)
        {
          v16 = [v14 unsignedLongLongValue];
          if (v16 == [v7 unsignedLongLongValue])
          {
            v19 = [v13 objectForKey:kIDSQRAllocateKey_RecipientPushToken];
            os_unfair_lock_unlock(&self->_lock);

            goto LABEL_18;
          }
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v22 objects:v28 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v17 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v7 unsignedLongLongValue];
    *buf = 134217984;
    v27 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "no push token for participantID %llu", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v21 = [v7 unsignedLongLongValue];
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        [v7 unsignedLongLongValue];
        _IDSLogV();
      }
    }
  }

  v19 = 0;
LABEL_18:

  return v19;
}

- (id)_getParticipantIDFromPushToken:(id)a3 pushToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v9)
  {
    v10 = *v22;
    v11 = kIDSQRAllocateKey_RecipientID;
    v12 = kIDSQRAllocateKey_RecipientPushToken;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [v14 objectForKey:v11];
        v16 = [v14 objectForKey:v12];
        v17 = v16;
        if (v16)
        {
          v18 = v15 == 0;
        }

        else
        {
          v18 = 1;
        }

        if (!v18 && ([v16 isEqualToData:v7] & 1) != 0)
        {
          os_unfair_lock_unlock(&self->_lock);

          goto LABEL_21;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v19 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v7;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "no participantID for pushToken %@", buf, 0xCu);
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

  v15 = 0;
LABEL_21:

  return v15;
}

- (id)getPushTokensFromParticipantIDs:(id)a3 participantIDs:(id)a4
{
  v23 = a3;
  v24 = a4;
  v6 = [(IDSQuickRelayAllocator *)self _getResponseFromQRGroupID:v23];
  v25 = v6;
  if (v6)
  {
    v7 = [v6 objectForKey:kIDSQRAllocateKey_Allocations];
    if (v7)
    {
      v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v24 count]);
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v9 = v24;
      v10 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v10)
      {
        v11 = *v27;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v27 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = *(*(&v26 + 1) + 8 * i);
            v14 = [(IDSQuickRelayAllocator *)self _getPushTokenFromParticipantID:v7 participantID:v13];
            if (v14)
            {
              [v8 addObject:v14];
            }

            else
            {
              v15 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v31 = v13;
                v32 = 2112;
                v33 = v25;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "no push token for participantID %@ in response %@", buf, 0x16u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  v21 = v13;
                  v22 = v25;
                  _IDSLogTransport();
                  if (_IDSShouldLog())
                  {
                    v21 = v13;
                    v22 = v25;
                    _IDSLogV();
                  }
                }
              }

              v16 = [NSNull null:v21];
              [v8 addObject:v16];
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
        }

        while (v10);
      }

      v17 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v31 = v9;
        v32 = 2112;
        v33 = v8;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "participantID to push token mapping: %@ %@", buf, 0x16u);
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

    else
    {
      v19 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = v25;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "no participant list in %@", buf, 0xCu);
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

      v8 = 0;
    }
  }

  else
  {
    v18 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = v23;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "no response for %@", buf, 0xCu);
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

    v8 = 0;
  }

  return v8;
}

- (id)getPushTokenFromParticipantID:(id)a3 participantID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IDSQuickRelayAllocator *)self _getResponseFromQRGroupID:v6];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectForKey:kIDSQRAllocateKey_Allocations];
    if (v10)
    {
      v11 = [(IDSQuickRelayAllocator *)self _getPushTokenFromParticipantID:v10 participantID:v7];
      if (v11)
      {
        v12 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          v21 = [v7 unsignedLongLongValue];
          v22 = 2112;
          v23 = v11;
          v24 = 2112;
          v25 = v6;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "participantID: %llu, pushToken: %@, group: %@", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v18 = [v7 unsignedLongLongValue];
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              [v7 unsignedLongLongValue];
              _IDSLogV();
            }
          }
        }

        v13 = v11;
      }

      else
      {
        v16 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          v21 = [v7 unsignedLongLongValue];
          v22 = 2112;
          v23 = v9;
          v24 = 2112;
          v25 = v6;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "no push token for participantID %llu in response %@ for group: %@", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v19 = [v7 unsignedLongLongValue];
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              [v7 unsignedLongLongValue];
              _IDSLogV();
            }
          }
        }
      }
    }

    else
    {
      v15 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v9;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "no participant list in %@", buf, 0xCu);
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

      v11 = 0;
    }
  }

  else
  {
    v14 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "no response for %@", buf, 0xCu);
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

    v11 = 0;
  }

  return v11;
}

- (id)getParticipantIDFromPushToken:(id)a3 pushToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IDSQuickRelayAllocator *)self _getResponseFromQRGroupID:v6];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectForKey:kIDSQRAllocateKey_Allocations];
    if (v10)
    {
      v11 = [(IDSQuickRelayAllocator *)self _getParticipantIDFromPushToken:v10 pushToken:v7];
      if (v11)
      {
        v12 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          v20 = [v11 unsignedLongLongValue];
          v21 = 2112;
          v22 = v7;
          v23 = 2112;
          v24 = v6;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "participantID: %llu, pushToken: %@, group: %@", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v18 = [v11 unsignedLongLongValue];
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              [v11 unsignedLongLongValue];
              _IDSLogV();
            }
          }
        }

        v13 = v11;
      }

      else
      {
        v16 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v20 = v7;
          v21 = 2112;
          v22 = v9;
          v23 = 2112;
          v24 = v6;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "no participantID for pushToken %@ in response %@ for group: %@", buf, 0x20u);
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

    else
    {
      v15 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v9;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "no participant list in %@", buf, 0xCu);
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

      v11 = 0;
    }
  }

  else
  {
    v14 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "no response for %@", buf, 0xCu);
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

    v11 = 0;
  }

  return v11;
}

- (id)getURIFromParticipantID:(id)a3 participantID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v32 = v6;
  v8 = [(IDSQuickRelayAllocator *)self _getResponseFromQRGroupID:v6];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectForKey:kIDSQRAllocateKey_Allocations];
    v31 = v10;
    if (v10)
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v33 objects:v43 count:16];
      if (v12)
      {
        v13 = *v34;
        v14 = kIDSQRAllocateKey_RecipientID;
        while (2)
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v34 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v33 + 1) + 8 * i);
            v17 = [v16 objectForKey:v14];
            v18 = v17;
            if (v17)
            {
              v19 = [v17 unsignedLongLongValue];
              if (v19 == [v7 unsignedLongLongValue])
              {
                v22 = [v16 objectForKey:kIDSQRAllocateKey_RecipientURI];
                v24 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                {
                  v25 = [v7 unsignedLongLongValue];
                  v26 = IDSLoggableDescriptionForHandleOnService();
                  *buf = 134218498;
                  v38 = v25;
                  v39 = 2112;
                  v40 = v32;
                  v41 = 2112;
                  v42 = v26;
                  _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "URI for participant ID %llu in group %@: %@", buf, 0x20u);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    v27 = [v7 unsignedLongLongValue];
                    v29 = IDSLoggableDescriptionForHandleOnService();
                    _IDSLogTransport();

                    if (_IDSShouldLog())
                    {
                      [v7 unsignedLongLongValue];
                      v30 = IDSLoggableDescriptionForHandleOnService();
                      _IDSLogV();
                    }
                  }
                }

                goto LABEL_39;
              }
            }
          }

          v12 = [v11 countByEnumeratingWithState:&v33 objects:v43 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      v20 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v38 = v7;
        v39 = 2112;
        v40 = v32;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "No URI for participant %@ in group %@", buf, 0x16u);
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

    else
    {
      v23 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v38 = v9;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "no participant list in %@", buf, 0xCu);
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

    v22 = 0;
LABEL_39:
  }

  else
  {
    v21 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v6;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "no response for %@", buf, 0xCu);
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

    v22 = 0;
  }

  return v22;
}

- (BOOL)isURIAvailabeInAllocateResponse:(id)a3 uri:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23 = v6;
  v8 = [(IDSQuickRelayAllocator *)self _getResponseFromQRGroupID:v6];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectForKey:kIDSQRAllocateKey_Allocations];
    v11 = v10;
    if (v10)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v13)
      {
        v14 = *v25;
        v15 = kIDSQRAllocateKey_RecipientURI;
        while (2)
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v25 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [*(*(&v24 + 1) + 8 * i) objectForKey:v15];
            v18 = [v7 isEqualToString:v17];

            if (v18)
            {

              v20 = 1;
              goto LABEL_27;
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      v21 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = v9;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "no participant list in %@", buf, 0xCu);
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

    v20 = 0;
LABEL_27:
  }

  else
  {
    v19 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v6;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "no response for %@", buf, 0xCu);
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

    v20 = 0;
  }

  return v20;
}

- (id)getAdditionalAllocationForAddress:(id)a3 selfAddress:(unsigned int)a4 relaySessionID:(id)a5 allocateType:(int64_t)a6 qrReason:(unsigned __int16)a7 previousTime:(unint64_t)a8 previousError:(unsigned __int16)a9 previousRelayIP:(unsigned int)a10 previousAccessToken:(id)a11 requestSelfAllocation:(BOOL)a12 isSessionIDRemoteDeviceID:(BOOL)a13 withPreferredRemoteInterface:(int)a14 withPreferredLocalInterface:(int)a15
{
  v16 = a7;
  v92 = a3;
  v97 = a4;
  v21 = a5;
  v87 = a11;
  im_assert_primary_base_queue();
  v88 = v21;
  v22 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    *v99 = v92;
    *&v99[8] = 2112;
    *&v99[10] = v21;
    *&v99[18] = 1024;
    *&v99[20] = a6;
    v100 = 1024;
    LODWORD(v101) = v16;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "IDSSession ID %@ requested additional allocation for QR Session ID %@, allocateType %d, reason %d", buf, 0x22u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v78 = a6;
      v81 = v16;
      v73 = v92;
      v76 = v21;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v78 = a6;
        v81 = v16;
        v73 = v92;
        v76 = v21;
        _IDSLogV();
      }
    }
  }

  v91 = [(IDSQuickRelayAllocator *)self _filterSelfAllocationsForSessionID:v92, v73, v76, v78, v81];
  if (![v91 count])
  {
    v23 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      sessionToAllocations = self->_sessionToAllocations;
      *buf = 138412290;
      *v99 = sessionToAllocations;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "could not find original allocate request to clone %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v74 = self->_sessionToAllocations;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v74 = self->_sessionToAllocations;
          _IDSLogV();
        }
      }
    }
  }

  os_unfair_lock_lock(&self->_lock);
  if ([v91 count])
  {
    v25 = [v91 objectAtIndex:0];
    v26 = [(IDSQuickRelayAllocator *)self _getGroupID:v25];

    os_unfair_lock_unlock(&self->_lock);
    if (v26)
    {
      v27 = [(IDSQuickRelayAllocator *)self _uuidFromNSStringToNSData:v88];
      [(IDSQuickRelayAllocator *)self _addConnectStatus:v26 relaySessionID:v27 previousTime:a8 qrReason:v16 previousError:a9 previousRelayIP:a10 previousAccessToken:v87];

      goto LABEL_24;
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  v28 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v99 = v92;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "No groupID for %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v74 = v92;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v74 = v92;
        _IDSLogV();
      }
    }
  }

LABEL_24:
  os_unfair_lock_lock(&self->_lock);
  if ([v91 count])
  {
    v29 = [v91 objectAtIndex:0];
    v89 = [v29 request];
  }

  else
  {
    v89 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  theDict = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v30 = [(IDSQuickRelayAllocator *)self _findSessionWithID:v92];
  if (v30)
  {
    if (v89)
    {
      v85 = [v89 appID];
      v86 = [v89 senderURI];
    }

    else
    {
      v85 = [v30 getAppID];
      v33 = [v30 fromURI];
      v86 = [v33 prefixedURI];
    }

    if (v97)
    {
      v34 = [[NSData alloc] initWithBytes:&v97 length:4];
      [(__CFDictionary *)theDict setValue:v34 forKey:kIDSQRAllocateKey_SenderExternalAddress];
    }

    [(__CFDictionary *)theDict setValue:v85 forKey:kIDSQRAllocateKey_AppID, v74];
    v35 = [NSNumber numberWithInteger:a6];
    [(__CFDictionary *)theDict setValue:v35 forKey:kIDSQRAllocateKey_AllocateType];

    v36 = [NSNumber numberWithInt:a14];
    [(__CFDictionary *)theDict setValue:v36 forKey:kIDSQRAllocateKey_PreferredRemoteInterface];

    if (a12)
    {
      if (a6 == 3)
      {
        v37 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Ignore self allocation for shared session", buf, 2u);
        }

        v38 = os_log_shim_legacy_logging_enabled();
        v39 = v89;
        if (v38)
        {
          v40 = _IDSShouldLogTransport();
          v39 = v89;
          if (v40)
          {
            _IDSLogTransport();
            v41 = _IDSShouldLog();
            v39 = v89;
            if (v41)
            {
              _IDSLogV();
              v39 = v89;
            }
          }
        }

        goto LABEL_53;
      }

      [(__CFDictionary *)theDict setValue:&off_100C3CC28 forKey:kIDSQRAllocateKey_SelfAllocationCount];
    }

    v39 = v89;
    if (a6 == 3)
    {
LABEL_53:
      v45 = v39 == 0;
      v46 = [v30 groupID];
      v47 = v46;
      if (v45)
      {
        v48 = v46;
      }

      else
      {
        v48 = [v89 groupID];
      }

      v59 = v48;
      if (v48)
      {
        CFDictionarySetValue(theDict, kIDSQRAllocateKey_GroupID, v48);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10092A82C();
      }

      if (v47)
      {
        if (![v91 count])
        {
          v60 = [(IDSQuickRelayAllocator *)self _uuidFromNSStringToNSData:v88];
          [(IDSQuickRelayAllocator *)self _addConnectStatus:v47 relaySessionID:v60 previousTime:a8 qrReason:v16 previousError:a9 previousRelayIP:a10 previousAccessToken:v87];
        }
      }

      else
      {
        v61 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v99 = v92;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "No groupID for shared session %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v75 = v92;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v75 = v92;
              _IDSLogV();
            }
          }
        }
      }

LABEL_88:
      v62 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        v63 = [v30 destinations];
        *buf = 67109890;
        *v99 = a6;
        *&v99[4] = 2112;
        *&v99[6] = v63;
        *&v99[14] = 2112;
        *&v99[16] = v92;
        v100 = 2112;
        v101 = v86;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "need to do ID query: allocateType: %d, destinations: %@, sessionID: %@, fromURI: %@", buf, 0x26u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          [v30 destinations];
          v79 = v92;
          v82 = v86;
          v77 = v75 = a6;
          _IDSLogTransport();

          if (_IDSShouldLog())
          {
            [v30 destinations];
            v79 = v92;
            v82 = v86;
            v77 = v75 = a6;
            _IDSLogV();
          }
        }
      }

      v64 = [v30 destinations];
      v65 = [v64 allObjects];
      v66 = [v30 getCallerCert];
      v67 = [v30 getFromService];
      BYTE4(v80) = 1;
      LODWORD(v80) = a15;
      v32 = [(IDSQuickRelayAllocator *)self _setupNewAllocation:v65 sessionID:v92 isSessionIDRemoteDeviceID:a13 fromIdentity:v66 fromURI:v86 fromService:v67 options:theDict connectReadyHandler:0 withPreferredLocalInterface:v80 forAdditionalAllocation:?];

      goto LABEL_118;
    }

    if (a6 == 2)
    {
      v42 = [(IDSQuickRelayAllocator *)self _getSelfAllocationFromCache:v92];
      v43 = v42;
      if (v42)
      {
        v44 = v42;
      }

      else
      {
        LODWORD(v79) = a15;
        v44 = [(IDSQuickRelayAllocator *)self _setupAllocation:0 fromURI:v86 sessionID:v92 isSessionIDRemoteDeviceID:a13 options:theDict prevConnectStatus:0 requestUUID:0 connectReadyHandler:0 withPreferredLocalInterface:v79];
      }

      v32 = v44;

      goto LABEL_118;
    }

    if (!v89)
    {
      goto LABEL_88;
    }

    v84 = [v89 recipients];
    if (v88)
    {
      v49 = [(IDSQuickRelayAllocator *)self getPushTokenForRelaySessionID:v92 relaySessionID:?];
      if (!v49)
      {
        v69 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v99 = v88;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "could not find original push token to clone for QR session %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v75 = v88;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v75 = v88;
              _IDSLogV();
            }
          }
        }

        [v30 setHasPendingAllocation:0 forIDSSession:{v92, v75}];
        goto LABEL_116;
      }

      v83 = objc_alloc_init(NSMutableArray);
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v50 = v84;
      v51 = [v50 countByEnumeratingWithState:&v93 objects:v102 count:16];
      if (v51)
      {
        v52 = *v94;
        v53 = kIDSQRAllocateKey_RecipientPushToken;
        while (2)
        {
          for (i = 0; i != v51; i = i + 1)
          {
            if (*v94 != v52)
            {
              objc_enumerationMutation(v50);
            }

            v55 = *(*(&v93 + 1) + 8 * i);
            if (v55)
            {
              v56 = v53 == 0;
            }

            else
            {
              v56 = 1;
            }

            if (v56)
            {
              Value = 0;
            }

            else
            {
              Value = CFDictionaryGetValue(*(*(&v93 + 1) + 8 * i), v53);
            }

            v58 = Value;
            if ([v58 isEqual:v49])
            {
              [v83 addObject:v55];

              goto LABEL_106;
            }
          }

          v51 = [v50 countByEnumeratingWithState:&v93 objects:v102 count:16];
          if (v51)
          {
            continue;
          }

          break;
        }
      }

LABEL_106:

      v68 = v83;
    }

    else
    {
      v68 = v84;
    }

    v70 = v68;
    if ([v68 count])
    {
      LODWORD(v79) = a15;
      v32 = [(IDSQuickRelayAllocator *)self _setupAllocation:v70 fromURI:v86 sessionID:v92 isSessionIDRemoteDeviceID:a13 options:theDict prevConnectStatus:0 requestUUID:0 connectReadyHandler:0 withPreferredLocalInterface:v79];

LABEL_117:
      goto LABEL_118;
    }

    v71 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "could not find existing recipient to clone", buf, 2u);
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

    [v30 setHasPendingAllocation:0 forIDSSession:v92];

LABEL_116:
    v32 = 0;
    goto LABEL_117;
  }

  v31 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v99 = v92;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Session not found for %@", buf, 0xCu);
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

  v32 = 0;
LABEL_118:

  return v32;
}

- (void)_handleIncomingAllocateResponse:(id)a3 isFromCache:(BOOL)a4 requestOptions:(id)a5
{
  v268 = a4;
  v6 = a3;
  v264 = a5;
  v7 = +[IDSFoundationLog QRAllocator];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  v9 = kIDSQRAllocateKey_RequestID;
  if (v8)
  {
    v10 = [v6 objectForKey:kIDSQRAllocateKey_RequestID];
    v11 = sub_100592F04(v10);
    v12 = kIDSQRAllocateKey_IDSSessionID;
    v13 = [v6 objectForKey:kIDSQRAllocateKey_IDSSessionID];
    v14 = sub_100592F04(v13);
    key = kIDSQRAllocateKey_RelaySessionID;
    v15 = [v6 objectForKey:?];
    v16 = sub_100592F04(v15);
    v17 = v16;
    v18 = @"NO";
    *buf = 138413058;
    v294 = v11;
    if (v268)
    {
      v18 = @"YES";
    }

    v295 = 2112;
    v296 = v14;
    v297 = 2112;
    *v298 = v16;
    *&v298[8] = 2112;
    v299 = v18;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received allocate response for RequestID: %@ IDSSessionID: %@ QRSessionID: %@ from cache: %@", buf, 0x2Au);
  }

  else
  {
    v12 = kIDSQRAllocateKey_IDSSessionID;
    key = kIDSQRAllocateKey_RelaySessionID;
  }

  v265 = [(IDSQuickRelayAllocator *)self _translateParticipantIDtoUINT64ForResponse:v6];
  v19 = [v6 objectForKey:v9];
  v20 = sub_100592F04(v19);

  v21 = [v6 objectForKey:v12];
  v22 = sub_100592F04(v21);

  v23 = [v6 objectForKey:key];
  v24 = sub_100592F04(v23);

  v25 = IDSLoggableDescriptionForObjectOnService();
  v283 = _NSConcreteStackBlock;
  v284 = 3221225472;
  v285 = sub_1005A5314;
  v286 = &unk_100BE0DD8;
  v258 = v20;
  v287 = v258;
  v259 = v22;
  v288 = v259;
  v260 = v24;
  v289 = v260;
  v291 = v268;
  v261 = v25;
  v290 = v261;
  cut_dispatch_log_queue();
  v26 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [v6 objectForKey:kIDSQRAllocateKey_RelayAddress];
    v28 = [v6 objectForKey:kIDSQRAllocateKey_RelayPort];
    v29 = [v6 objectForKey:kIDSQRAllocateKey_RelayAddressIPv6];
    *buf = 138412802;
    v294 = v27;
    v295 = 2112;
    v296 = v28;
    v297 = 2112;
    *v298 = v29;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "QRserver ipv4: %@:%@, ipv6: %@", buf, 0x20u);
  }

  v30 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [v6 objectForKey:kIDSQRAllocateKey_RelayHighPriorityPort];
    v32 = [v6 objectForKey:kIDSQRAllocateKey_RelayIPPreference];
    v33 = -[IDSQuickRelayAllocator _getQuickRelayIPPreference:](self, "_getQuickRelayIPPreference:", [v32 unsignedIntegerValue]);
    *buf = 138412546;
    v294 = v31;
    v295 = 2112;
    v296 = v33;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "QRserver hpp: %@, ipp: %@", buf, 0x16u);
  }

  v34 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = [v6 objectForKey:kIDSQRAllocateKey_RelayServerType];
    v36 = [v35 unsignedIntValue];
    v37 = @"Multi-Server Configuration";
    if (!v36)
    {
      v37 = @"Single-Server Configuration";
    }

    *buf = 138412290;
    v294 = v37;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "QRserver type: %@", buf, 0xCu);
  }

  v38 = [(IDSQuickRelayAllocator *)self _createSessionInfoFromResponsePayload:v6];
  v39 = v38;
  if (v38)
  {
    v270 = [(__CFDictionary *)v38 objectForKey:v12];
    if (v9)
    {
      v40 = CFDictionaryGetValue(v39, v9);
      Value = 0;
      requestIDToPreferredLocalInterface = self->_requestIDToPreferredLocalInterface;
      v263 = v40;
      if (requestIDToPreferredLocalInterface && v40)
      {
        Value = CFDictionaryGetValue(requestIDToPreferredLocalInterface, v40);
      }
    }

    else
    {
      v263 = 0;
      Value = 0;
    }

    v254 = Value;
    v253 = [v254 intValue];
    v271 = [(IDSQuickRelayAllocator *)self _findAllocationForSessionID:v270 requestIDStr:v263];
    v257 = [(IDSQuickRelayAllocator *)self _findSessionWithID:v270];
    v44 = [(QRAllocation *)v271 request];
    if (v44)
    {
      v45 = v268;
    }

    else
    {
      v45 = 1;
    }

    if ((v45 & 1) == 0)
    {
      [(QRAllocation *)v271 cancelAllocationTimeoutTimer];
    }

    v46 = objc_opt_class();
    v47 = kIDSQRAllocateKey_AllocateType;
    v48 = sub_10001B8C4(v46, v6, kIDSQRAllocateKey_AllocateType);
    v262 = [v48 integerValue];

    if (v262 == 3)
    {
      Mutable = [(NSMutableDictionary *)self->_sessionIDToURIToResponsePayload objectForKey:v270];
      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      }

      v50 = [(IDSQuickRelayAllocator *)self _getURIForRecipientFromResponse:v6];
      v51 = [Mutable objectForKeyedSubscript:v50];
      if (!v51 || ([v6 objectForKey:key], v52 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v51, "objectForKey:", key), v53 = objc_claimAutoreleasedReturnValue(), v54 = objc_msgSend(v52, "isEqualToData:", v53), v53, v52, (v54 & 1) != 0) || -[IDSQuickRelayAllocator _shouldUseCurrentResponse:cachedMessage:](self, "_shouldUseCurrentResponse:cachedMessage:", v6, v51))
      {
        [Mutable setObject:v6 forKey:v50];
        [(NSMutableDictionary *)self->_sessionIDToURIToResponsePayload setObject:Mutable forKey:v270];
      }

      else
      {
        v73 = v51;

        v74 = [(IDSQuickRelayAllocator *)self _createSessionInfoFromResponsePayload:v73];

        v39 = v74;
        v6 = v73;
      }

      if (!v257)
      {
        v58 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "Have not yet received the callerID!", buf, 2u);
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

        v59 = 0;
        if (v6 && kIDSQRAllocateKey_GroupID)
        {
          v59 = CFDictionaryGetValue(v6, kIDSQRAllocateKey_GroupID);
        }

        v60 = v59;
        v61 = 0;
        if (key && v6)
        {
          v61 = CFDictionaryGetValue(v6, key);
        }

        v62 = sub_100592F04(v61);
        v282 = 0;
        if (v62 && v60)
        {
          v63 = [(IDSQuickRelayAllocator *)self _getResponseFromQRGroupID:v60];
          v64 = v63;
          if (v63)
          {
            v65 = key ? CFDictionaryGetValue(v63, key) : 0;
            v195 = sub_100592F04(v65);
            v196 = [v62 isEqualToString:v195];

            if (v196)
            {
              v197 = [(IDSQuickRelayAllocator *)self _mergeParticipantID2PushTokenMapping:v64 sourceResponse:v6 mappingChange:&v282];
              if (v197 != v64)
              {
                [(IDSQuickRelayAllocator *)self _setResponseForQRGroupID:v197 groupID:v60];
              }

              if (v282 == 1)
              {
                [(IDSQuickRelayAllocator *)self _notifyParticipantID2PushTokenMappingChange:v197];
                [(IDSQuickRelayAllocator *)self _notifyURIToParticipantIDMappingChange:v197];
              }
            }
          }
        }

        else
        {
          v72 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "Invalid groupID or sessionID!", buf, 2u);
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

        goto LABEL_454;
      }

      v55 = [v257 fromURI];
      v56 = [(__CFDictionary *)v39 objectForKey:kIDSQRAllocateKey_AppID];
      v57 = [v56 isEqualToString:@"com.apple.private.alloy.airdrop.walkaway"];

      if ((v55 == 0) | v57 & 1)
      {
        v255 = 1;
      }

      else
      {
        v251 = [v55 prefixedURI];
        v66 = [Mutable objectForKey:v251];
        v255 = v66 != 0;
        if (v66)
        {
          v67 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            v68 = [v66 objectForKeyedSubscript:kIDSQRAllocateKey_RecipientID];
            *buf = 138412290;
            v294 = v68;
            _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Setting allocate response for participantID: %@!", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v69 = kIDSQRAllocateKey_RecipientID;
              v238 = [v66 objectForKeyedSubscript:kIDSQRAllocateKey_RecipientID];
              _IDSLogTransport();

              if (_IDSShouldLog())
              {
                v238 = [v66 objectForKeyedSubscript:{v69, v238}];
                _IDSLogV();
              }
            }
          }

          v70 = v66;

          v71 = [(IDSQuickRelayAllocator *)self _createSessionInfoFromResponsePayload:v70];

          [(NSMutableDictionary *)self->_sessionIDToURIToResponsePayload removeAllObjects];
          v39 = v71;
          v6 = v70;
        }

        else
        {
          v75 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v294 = v251;
            _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "Have not yet received the allocate response for %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v238 = v251;
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                v238 = v251;
                _IDSLogV();
              }
            }
          }
        }
      }

      if (!v255)
      {
LABEL_454:

        goto LABEL_455;
      }
    }

    v76 = objc_opt_class();
    v77 = sub_10001B8C4(v76, v6, v47);
    v78 = [v77 integerValue] == 2;

    if (!v78)
    {
      if (!self->_sessionToLocalParticipantID)
      {
        v79 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        sessionToLocalParticipantID = self->_sessionToLocalParticipantID;
        self->_sessionToLocalParticipantID = v79;
      }

      v81 = [v6 objectForKey:{kIDSQRAllocateKey_RecipientID, v238}];
      v82 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v81 unsignedLongLongValue]);
      v83 = v82;
      if (v270)
      {
        v84 = v82;
        if (v84)
        {
          CFDictionarySetValue(self->_sessionToLocalParticipantID, v270, v84);
        }
      }

      v85 = +[IDSFoundationLog QRAllocator];
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        v86 = self->_sessionToLocalParticipantID;
        *buf = 138412802;
        v294 = v83;
        v295 = 2112;
        v296 = v270;
        v297 = 2112;
        *v298 = v86;
        _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "add localParticipantID: %@ to sessionID: %@ _sessionToLocalParticipantID: %@", buf, 0x20u);
      }
    }

    if (v271 && v262 != 3 && [(IDSQuickRelayAllocator *)self _isDuplicateResponse:v271 newResponse:v39])
    {
      v87 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "detected duplicate response. Ignore it.", buf, 2u);
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

      goto LABEL_454;
    }

    if (v268 || v262 != 3)
    {
      v250 = 0;
    }

    else
    {
      v281 = 0;
      v88 = [(IDSQuickRelayAllocator *)self _addResponseToCache:v6 sessionInfo:v39 modifiedMessage:&v281];
      v89 = v281;
      if (v89 == v6)
      {
        v91 = v6;
      }

      else
      {
        v90 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v294 = v89;
          _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "allocate response modified %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v238 = v89;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v238 = v89;
              _IDSLogV();
            }
          }
        }

        v91 = v89;

        v92 = [(IDSQuickRelayAllocator *)self _createSessionInfoFromResponsePayload:v91];

        v39 = v92;
      }

      v152 = v271;
      if (!v271)
      {
        v153 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "no allocation for shared session", buf, 2u);
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

        CFDictionarySetValue(v39, kIDSQRAllocateKey_isInitiator, &__kCFBooleanFalse);
        v154 = [[QRAllocation alloc] initWithResponse:v39];
        [(IDSQuickRelayAllocator *)self _addAllocationForSession:v270 allocation:v154];
        v152 = v154;
      }

      v271 = v152;
      if ((v88 & 1) == 0)
      {
        v155 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_DEFAULT, "current response ignored", buf, 2u);
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

        [v257 qrAllocatorDidReceiveAllocateResponse:{v91, v238}];

        v6 = v91;
        goto LABEL_454;
      }

      v250 = 1;
      v6 = v91;
    }

    v93 = kIDSQRAllocateKey_AppID;
    v94 = [(__CFDictionary *)v39 objectForKey:kIDSQRAllocateKey_AppID, v238];
    v252 = [v94 isEqualToString:IDSRegistrationServiceTypeCloudMessaging];

    if ([(__CFString *)v270 isEqualToString:kIDSDefaultPairedDeviceID])
    {
      v95 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
      {
        v96 = [(__CFDictionary *)v39 objectForKey:v93];
        *buf = 138412290;
        v294 = v96;
        _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "Recieved allocation from DefaultPairedDeviceID {appID: %@}", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v239 = [(__CFDictionary *)v39 objectForKey:v93];
          _IDSLogTransport();

          if (_IDSShouldLog())
          {
            v239 = [(__CFDictionary *)v39 objectForKey:v93, v239];
            _IDSLogV();
          }
        }
      }
    }

    if (!v252)
    {
LABEL_131:
      if (v271)
      {
        v105 = [(QRAllocation *)v271 request];

        if (v105)
        {
          v106 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v294 = v263;
            _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "allocate response ID %@ is for initiator", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v239 = v263;
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                v239 = v263;
                _IDSLogV();
              }
            }
          }

          v107 = 0;
          if (v39 && kIDSQRAllocateKey_RelayExpiryTimestamp)
          {
            v107 = CFDictionaryGetValue(v39, kIDSQRAllocateKey_RelayExpiryTimestamp);
          }

          v246 = v107;
          [v246 doubleValue];
          [(QRAllocation *)v271 setPurgeAtExpiration:?];
          v108 = [(QRAllocation *)v271 responses];
          [v108 addObject:v39];

          [(QRAllocation *)v271 startTime];
          if (v109 == 0.0)
          {
            v113 = 0.0;
          }

          else
          {
            ids_monotonic_time();
            v111 = v110;
            [(QRAllocation *)v271 startTime];
            v113 = (v111 - v112) * 1000.0;
          }

          [(QRAllocation *)v271 setDuration:v113, v239];
          v119 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
          {
            [(QRAllocation *)v271 duration];
            v121 = v120;
            v122 = [(QRAllocation *)v271 request];
            v123 = [v122 recipients];
            v124 = [v123 count];
            v125 = [(QRAllocation *)v271 responses];
            v126 = [v125 count];
            *buf = 138413058;
            v294 = v263;
            v295 = 2048;
            v296 = v121;
            v297 = 1024;
            *v298 = v124;
            *&v298[4] = 1024;
            *&v298[6] = v126;
            _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_DEFAULT, "allocate response ID %@ is for initiator and took %0.6lf ms, recipient count: %u, response count: %u.", buf, 0x22u);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              [(QRAllocation *)v271 duration];
              v128 = v127;
              v129 = [(QRAllocation *)v271 request];
              v130 = [v129 recipients];
              v131 = [v130 count];
              v132 = [(QRAllocation *)v271 responses];
              v242 = v131;
              v243 = [v132 count];
              v241 = v128;
              v239 = v263;
              _IDSLogTransport();

              if (_IDSShouldLog())
              {
                [(QRAllocation *)v271 duration:v263];
                v134 = v133;
                v135 = [(QRAllocation *)v271 request];
                v136 = [v135 recipients];
                v137 = [v136 count];
                v138 = [(QRAllocation *)v271 responses];
                v242 = v137;
                v243 = [v138 count];
                v241 = v134;
                v239 = v263;
                _IDSLogV();
              }
            }
          }

          v139 = objc_opt_class();
          v140 = sub_10001B8C4(v139, v6, kIDSQRAllocateKey_Allocations);
          if (!v140)
          {
            v151 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v151, OS_LOG_TYPE_DEFAULT, "missing allocation status result for initiator", buf, 2u);
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

            goto LABEL_454;
          }

          v279 = 0u;
          v280 = 0u;
          v277 = 0u;
          v278 = 0u;
          obj = v140;
          v141 = [obj countByEnumeratingWithState:&v277 objects:v304 count:16];
          if (v141)
          {
            v256 = 0;
            v142 = *v278;
            v143 = kIDSQRAllocateKey_RecipientPushToken;
            while (2)
            {
              for (i = 0; i != v141; i = i + 1)
              {
                if (*v278 != v142)
                {
                  objc_enumerationMutation(obj);
                }

                v145 = [*(*(&v277 + 1) + 8 * i) objectForKey:{v143, v239, v241, v242, v243}];
                if (!v145)
                {
                  v157 = OSLogHandleForTransportCategory();
                  if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_DEFAULT, "missing recipient push token in allocation status result", buf, 2u);
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

                  goto LABEL_241;
                }

                v146 = [(__CFDictionary *)v39 objectForKey:key];
                if (!v146)
                {
                  v158 = OSLogHandleForTransportCategory();
                  if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v158, OS_LOG_TYPE_DEFAULT, "missing QR session ID", buf, 2u);
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

                  goto LABEL_241;
                }

                if (v256)
                {
                  v256 = 1;
                }

                else
                {
                  v256 = 0;
                  v147 = 0;
                  initiatorsAcceptedSessionsWithToken = self->_initiatorsAcceptedSessionsWithToken;
                  if (initiatorsAcceptedSessionsWithToken && v270)
                  {
                    v147 = CFDictionaryGetValue(initiatorsAcceptedSessionsWithToken, v270);
                    if (v147 && [(__CFString *)v145 isEqual:v147])
                    {
                      v149 = OSLogHandleForTransportCategory();
                      if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412546;
                        v294 = v270;
                        v295 = 2112;
                        v296 = v145;
                        _os_log_impl(&_mh_execute_header, v149, OS_LOG_TYPE_DEFAULT, "detects that session %@ has been accepted by device with token %@", buf, 0x16u);
                      }

                      if (os_log_shim_legacy_logging_enabled())
                      {
                        if (_IDSShouldLogTransport())
                        {
                          v239 = v270;
                          v241 = v145;
                          _IDSLogTransport();
                          if (_IDSShouldLog())
                          {
                            v239 = v270;
                            v241 = v145;
                            _IDSLogV();
                          }
                        }
                      }

                      v256 = 1;
                    }

                    else
                    {
                      v256 = 0;
                    }
                  }
                }

                v150 = [(QRAllocation *)v271 pushTokenToQRSessionID];
                [v150 setObject:v146 forKey:v145];
              }

              v141 = [obj countByEnumeratingWithState:&v277 objects:v304 count:16];
              if (v141)
              {
                continue;
              }

              break;
            }

LABEL_241:
          }

          else
          {

            v256 = 0;
          }

          keya = 1;
LABEL_243:
          v159 = [v257 sharedSessionHasJoined];
          v160 = v159;
          if (v268)
          {
            v161 = (v262 == 3) & v159;
            v162 = v264;
            if (v161 == 1)
            {
              v163 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v163, OS_LOG_TYPE_DEFAULT, "participant has joined with cached response", buf, 2u);
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

              v162 = v264;
              goto LABEL_290;
            }
          }

          else
          {
            v164 = v250 ^ 1;
            if (v262 != 3)
            {
              v164 = 1;
            }

            if (v164)
            {
              if (v262 == 3)
              {
                v166 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
                {
                  v167 = @"NO";
                  if (v250)
                  {
                    v168 = @"YES";
                  }

                  else
                  {
                    v168 = @"NO";
                  }

                  if (v160)
                  {
                    v167 = @"YES";
                  }

                  *buf = 138412546;
                  v294 = v168;
                  v295 = 2112;
                  v296 = v167;
                  _os_log_impl(&_mh_execute_header, v166, OS_LOG_TYPE_DEFAULT, "useCurrentResponse=%@, sharedSessionHasJoined=%@", buf, 0x16u);
                }

                if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
                {
                  v169 = v250 ? @"YES" : @"NO";
                  v170 = v160 ? @"YES" : @"NO";
                  v240 = v169;
                  v241 = v170;
                  _IDSLogTransport();
                  if (_IDSShouldLog())
                  {
                    v240 = v169;
                    v241 = v170;
                    _IDSLogV();
                  }
                }
              }
            }

            else if (v159)
            {
              v165 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v165, OS_LOG_TYPE_DEFAULT, "join request in process", buf, 2u);
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

              v250 = 1;
            }

            else
            {
              v171 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v294 = v270;
                _os_log_impl(&_mh_execute_header, v171, OS_LOG_TYPE_DEFAULT, "participant has not joined, ids: %@", buf, 0xCu);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  v240 = v270;
                  _IDSLogTransport();
                  if (_IDSShouldLog())
                  {
                    v240 = v270;
                    _IDSLogV();
                  }
                }
              }

              v250 = 0;
            }

            [(IDSQuickRelayAllocator *)self _processSelfAllocations:v6 allocation:v271, v240, v241];
            v162 = v264;
          }

          if (v262 != 3)
          {
LABEL_383:
            if ((keya & 1) != 0 || ((v250 | v252 | [(NSMutableSet *)self->_pendingRecipientsAcceptedSessions containsObject:v270]) & 1) != 0 || v268)
            {
              v217 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v217, OS_LOG_TYPE_DEFAULT))
              {
                v218 = @"NO";
                if (keya)
                {
                  v219 = @"YES";
                }

                else
                {
                  v219 = @"NO";
                }

                v220 = [(NSMutableSet *)self->_pendingRecipientsAcceptedSessions containsObject:v270];
                v221 = 0;
                if (v220)
                {
                  v222 = @"YES";
                }

                else
                {
                  v222 = @"NO";
                }

                if (v252)
                {
                  v223 = @"YES";
                }

                else
                {
                  v223 = @"NO";
                }

                if (v250)
                {
                  v224 = @"YES";
                }

                else
                {
                  v224 = @"NO";
                }

                if (v268)
                {
                  v218 = @"YES";
                }

                if (v39 && kIDSQRAllocateKey_StreamInfoSubscribedStreams)
                {
                  v221 = CFDictionaryGetValue(v39, kIDSQRAllocateKey_StreamInfoSubscribedStreams);
                }

                *buf = 138413570;
                v294 = v219;
                v295 = 2112;
                v296 = v222;
                v297 = 2112;
                *v298 = v223;
                *&v298[8] = 2112;
                v299 = v224;
                v300 = 2112;
                v301 = v218;
                v302 = 2112;
                v303 = v221;
                _os_log_impl(&_mh_execute_header, v217, OS_LOG_TYPE_DEFAULT, "isInitiator: %@, pendingRecipientsAcceptedSessions= %@, isCloudAllocation= %@,  useCurrentResponse= %@, isFromCache= %@, subscribedStreams = %@", buf, 0x3Eu);
              }

              if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
              {
                v225 = @"NO";
                v226 = keya ? @"YES" : @"NO";
                v227 = [(NSMutableSet *)self->_pendingRecipientsAcceptedSessions containsObject:v270]? @"YES" : @"NO";
                v228 = v252 ? @"YES" : @"NO";
                v229 = v250 ? @"YES" : @"NO";
                v230 = v268 ? @"YES" : @"NO";
                v231 = kIDSQRAllocateKey_StreamInfoSubscribedStreams;
                v232 = !v39 || kIDSQRAllocateKey_StreamInfoSubscribedStreams == 0;
                v233 = !v232;
                v269 = v233;
                v234 = v232 ? 0 : CFDictionaryGetValue(v39, kIDSQRAllocateKey_StreamInfoSubscribedStreams);
                v244 = v230;
                v245 = v234;
                v242 = v228;
                v243 = v229;
                v240 = v226;
                v241 = v227;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  if ([(NSMutableSet *)self->_pendingRecipientsAcceptedSessions containsObject:v270, v226, v227, v228, v229, v230, v245])
                  {
                    v225 = @"YES";
                  }

                  if (v269)
                  {
                    v236 = CFDictionaryGetValue(v39, v231);
                  }

                  else
                  {
                    v236 = 0;
                  }

                  v244 = v230;
                  v245 = v236;
                  v242 = v228;
                  v243 = v229;
                  v240 = v226;
                  v241 = v225;
                  _IDSLogV();
                }
              }

              v237 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v237, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v294 = v39;
                _os_log_impl(&_mh_execute_header, v237, OS_LOG_TYPE_DEFAULT, "connecting with sessionInfo %@", buf, 0xCu);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  v240 = v39;
                  _IDSLogTransport();
                  if (_IDSShouldLog())
                  {
                    v240 = v39;
                    _IDSLogV();
                  }
                }
              }

              [(IDSQuickRelayAllocator *)self _startQRConnectionForSession:v39 isInitiatorsAcceptedSession:v256 & 1 withLocalInterfacePreference:v253, v240, v241, v242, v243, v244, v245];
            }

            else
            {
              if (v262 == 3)
              {
                [(IDSQuickRelayAllocator *)self _startCleanupTimer];
              }

              v235 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v235, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v235, OS_LOG_TYPE_DEFAULT, "recipient waits for session acceptance", buf, 2u);
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

            [v257 qrAllocatorDidReceiveAllocateResponse:v6];
            goto LABEL_454;
          }

LABEL_290:
          if (v162)
          {
            v172 = [v162 objectForKey:kIDSQRAllocateKey_StreamInfoPublishedStreams];
            v173 = [v264 objectForKey:kIDSQRAllocateKey_StreamInfoSubscribedStreams];
            v174 = [v264 objectForKey:kIDSQRAllocateKey_StreamInfoGenerationCounter];
            v175 = [v264 objectForKey:kIDSQRAllocateKey_StreamInfoMaxConcurrentStreams];
            v176 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
            {
              v177 = [v264 objectForKey:kIDSQRAllocateKey_IsJoinAllocation];
              v178 = [v177 BOOLValue];
              v179 = @"NO";
              *buf = 138413570;
              v294 = v270;
              v295 = 2112;
              if (v178)
              {
                v179 = @"YES";
              }

              v296 = v172;
              v297 = 2112;
              *v298 = v173;
              *&v298[8] = 2112;
              v299 = v174;
              v300 = 2112;
              v301 = v175;
              v302 = 2112;
              v303 = v179;
              _os_log_impl(&_mh_execute_header, v176, OS_LOG_TYPE_DEFAULT, "joinWithOptions information: idsSessionID=%@, publishedStreams=%@, subscribedStreams=%@, generationCounter=%@, maxConcurrentStreams=%@, isJoinAllocation = %@", buf, 0x3Eu);
            }

            if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLogTransport())
            {
              goto LABEL_372;
            }

            v180 = kIDSQRAllocateKey_IsJoinAllocation;
            v181 = [v264 objectForKey:kIDSQRAllocateKey_IsJoinAllocation];
            v182 = [v181 BOOLValue] ? @"YES" : @"NO";
            v244 = v175;
            v245 = v182;
            v242 = v173;
            v243 = v174;
            v240 = v270;
            v241 = v172;
            _IDSLogTransport();

            if (!_IDSShouldLog())
            {
              goto LABEL_372;
            }

            v183 = [v264 objectForKey:{v180, v270, v172, v173, v174, v175, v245}];
            if ([v183 BOOLValue])
            {
              v184 = @"YES";
            }

            else
            {
              v184 = @"NO";
            }

            v244 = v175;
            v245 = v184;
            v242 = v173;
            v243 = v174;
            v240 = v270;
            v241 = v172;
            _IDSLogV();
          }

          else
          {
            if (!v271)
            {
              v191 = 0;
              v192 = 0;
              v193 = 0;
              v194 = 0;
LABEL_380:
              v216 = [(IDSQuickRelayAllocator *)self _uriToParticipantID:v39, v240, v241, v242, v243, v244, v245];
              if (v216)
              {
                CFDictionarySetValue(v39, kIDSQRAllocateKey_URIToParticipantID, v216);
              }

              goto LABEL_383;
            }

            obja = [(QRAllocation *)v271 streamInfo];
            v185 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
            {
              v186 = [(QRAllocation *)v271 isJoinAllocation];
              v187 = @"NO";
              if (v186)
              {
                v187 = @"YES";
              }

              *buf = 138412290;
              v294 = v187;
              _os_log_impl(&_mh_execute_header, v185, OS_LOG_TYPE_DEFAULT, "should connect to qr server: %@", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
            {
              v188 = [(QRAllocation *)v271 isJoinAllocation]? @"YES" : @"NO";
              v240 = v188;
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                if ([(QRAllocation *)v271 isJoinAllocation])
                {
                  v189 = @"YES";
                }

                else
                {
                  v189 = @"NO";
                }

                v240 = v189;
                _IDSLogV();
              }
            }

            if (obja)
            {
              v172 = obja[1];
              v173 = obja[2];
              v174 = obja[3];
              v175 = obja[4];
              v190 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v190, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138413314;
                v294 = v270;
                v295 = 2112;
                v296 = v172;
                v297 = 2112;
                *v298 = v173;
                *&v298[8] = 2112;
                v299 = v174;
                v300 = 2112;
                v301 = v175;
                _os_log_impl(&_mh_execute_header, v190, OS_LOG_TYPE_DEFAULT, "Cached stream infomation:  idsSessionID=%@, publishedStreams=%@, subscribedStreams=%@, generationCounter=%@, maxConcurrentStreams=%@", buf, 0x34u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  v243 = v174;
                  v244 = v175;
                  v241 = v172;
                  v242 = v173;
                  v240 = v270;
                  _IDSLogTransport();
                  if (_IDSShouldLog())
                  {
                    v243 = v174;
                    v244 = v175;
                    v241 = v172;
                    v242 = v173;
                    v240 = v270;
                    _IDSLogV();
                  }
                }
              }
            }

            else
            {
              os_unfair_lock_lock(&self->_lock);
              v247 = [(IDSQuickRelayAllocator *)self _findAllocationListForSessionID:v270];
              if ([v247 count])
              {
                v275 = 0u;
                v276 = 0u;
                v273 = 0u;
                v274 = 0u;
                v198 = v247;
                v175 = [v198 countByEnumeratingWithState:&v273 objects:v292 count:16];
                if (v175)
                {
                  v199 = *v274;
                  while (2)
                  {
                    for (j = 0; j != v175; j = (j + 1))
                    {
                      if (*v274 != v199)
                      {
                        objc_enumerationMutation(v198);
                      }

                      v201 = *(*(&v273 + 1) + 8 * j);
                      if ([v201 isJoinAllocation])
                      {
                        v202 = [v201 streamInfo];
                        v203 = v202 == 0;

                        if (!v203)
                        {
                          v206 = [v201 streamInfo];
                          [(QRAllocation *)v271 setStreamInfo:v206];

                          v207 = [v201 streamInfo];
                          v172 = v207[1];

                          v208 = [v201 streamInfo];
                          v173 = v208[2];

                          v209 = [v201 streamInfo];
                          v174 = v209[3];

                          v210 = [v201 streamInfo];
                          v175 = v210[4];

                          v211 = OSLogHandleForTransportCategory();
                          if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
                          {
                            v212 = [v201 streamInfo];
                            *buf = 138413314;
                            v294 = v212;
                            v295 = 2112;
                            v296 = v173;
                            v297 = 2112;
                            *v298 = v172;
                            *&v298[8] = 2112;
                            v299 = v174;
                            v300 = 2112;
                            v301 = v175;
                            _os_log_impl(&_mh_execute_header, v211, OS_LOG_TYPE_DEFAULT, "set streamInfo from cache: %@, subscribedStreams=%@, publisehdStreams=%@, generationCounter = %@, maxConcurrentStreams = %@", buf, 0x34u);
                          }

                          if (os_log_shim_legacy_logging_enabled())
                          {
                            if (_IDSShouldLogTransport())
                            {
                              [v201 streamInfo];
                              v243 = v174;
                              v244 = v175;
                              v241 = v173;
                              v240 = v242 = v172;
                              _IDSLogTransport();

                              if (_IDSShouldLog())
                              {
                                [v201 streamInfo];
                                v243 = v174;
                                v244 = v175;
                                v241 = v173;
                                v240 = v242 = v172;
                                _IDSLogV();
                              }
                            }
                          }

                          goto LABEL_361;
                        }
                      }
                    }

                    v175 = [v198 countByEnumeratingWithState:&v273 objects:v292 count:16];
                    if (v175)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v174 = 0;
                v173 = 0;
                v172 = 0;
LABEL_361:
              }

              else
              {
                v204 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v204, OS_LOG_TYPE_DEFAULT))
                {
                  sessionToAllocations = self->_sessionToAllocations;
                  *buf = 138412290;
                  v294 = sessionToAllocations;
                  _os_log_impl(&_mh_execute_header, v204, OS_LOG_TYPE_DEFAULT, "could not find original allocate request %@", buf, 0xCu);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    v240 = self->_sessionToAllocations;
                    _IDSLogTransport();
                    if (_IDSShouldLog())
                    {
                      v240 = self->_sessionToAllocations;
                      _IDSLogV();
                    }
                  }
                }

                v175 = 0;
                v174 = 0;
                v173 = 0;
                v172 = 0;
              }

              os_unfair_lock_unlock(&self->_lock);
              v213 = [(QRAllocation *)v271 streamInfo];
              v214 = v213 == 0;

              if (v214)
              {
                v215 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v215, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v215, OS_LOG_TYPE_DEFAULT, "No stream information", buf, 2u);
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

            v183 = obja;
          }

LABEL_372:
          v194 = v172;
          if (v194)
          {
            CFDictionarySetValue(v39, kIDSQRAllocateKey_StreamInfoPublishedStreams, v194);
          }

          v193 = v173;
          if (v193)
          {
            CFDictionarySetValue(v39, kIDSQRAllocateKey_StreamInfoSubscribedStreams, v193);
          }

          v192 = v174;
          if (v192)
          {
            CFDictionarySetValue(v39, kIDSQRAllocateKey_StreamInfoGenerationCounter, v192);
          }

          v191 = v175;
          if (v191)
          {
            CFDictionarySetValue(v39, kIDSQRAllocateKey_StreamInfoMaxConcurrentStreams, v191);
          }

          goto LABEL_380;
        }

        v115 = [(QRAllocation *)v271 responses];
        [v115 addObject:v39];

        v116 = 0;
        if (v39 && kIDSQRAllocateKey_RelayExpiryTimestamp)
        {
          v116 = CFDictionaryGetValue(v39, kIDSQRAllocateKey_RelayExpiryTimestamp);
        }

        v117 = v116;
        [v117 doubleValue];
        [(QRAllocation *)v271 setPurgeAtExpiration:?];
      }

      else
      {
        v114 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v294 = v263;
          _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "allocate response ID %@ is for recipient.", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v239 = v263;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v239 = v263;
              _IDSLogV();
            }
          }
        }

        v271 = [[QRAllocation alloc] initWithResponse:v39];
        [(IDSQuickRelayAllocator *)self _addAllocationForSession:v270 allocation:v271];
      }

      v256 = 0;
      keya = 0;
      goto LABEL_243;
    }

    v97 = objc_opt_class();
    v98 = sub_10001B8C4(v97, v6, kIDSQRAllocateKey_RelayExpiryTimestamp);
    if (!v98)
    {
LABEL_122:
      v101 = +[IDSPairingManager sharedInstance];
      v102 = [v101 pairedDeviceUniqueID];

      v103 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v294 = v102;
        _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "defaultRemoteDeviceCBUUIDString: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v239 = v102;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v239 = v102;
            _IDSLogV();
          }
        }
      }

      v104 = v102;
      if (v104)
      {
        [(__CFDictionary *)v39 setObject:v104 forKey:kIDSQRAllocateKey_DefaultRemoteDeviceCBUUID];
      }

      goto LABEL_131;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v99 = [v98 unsignedLongLongValue];
      v100 = 1000 * time(0);
      if (v99 > v100)
      {
        goto LABEL_122;
      }

      v156 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218498;
        v294 = v100;
        v295 = 2048;
        v296 = v99;
        v297 = 2112;
        *v298 = v6;
        _os_log_impl(&_mh_execute_header, v156, OS_LOG_TYPE_DEFAULT, "response expired: %16llx %16llx, %@", buf, 0x20u);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_226;
      }

      if (!_IDSShouldLogTransport())
      {
        goto LABEL_226;
      }

      _IDSLogTransport();
      if (!_IDSShouldLog())
      {
        goto LABEL_226;
      }
    }

    else
    {
      v118 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v294 = v98;
        _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "Relay expiry time-stamp is NaN: %@", buf, 0xCu);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_226;
      }

      if (!_IDSShouldLogTransport())
      {
        goto LABEL_226;
      }

      _IDSLogTransport();
      if (!_IDSShouldLog())
      {
        goto LABEL_226;
      }
    }

    _IDSLogV();
LABEL_226:

    goto LABEL_454;
  }

  v43 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "failed to compose a QR sessionInfo dict", buf, 2u);
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

LABEL_455:
}

- (id)_translateParticipantIDtoUINT64ForResponse:(id)a3
{
  v3 = a3;
  v4 = [v3 mutableCopy];
  v5 = kIDSQRAllocateKey_RecipientID;
  v6 = [v3 objectForKey:kIDSQRAllocateKey_RecipientID];
  v7 = v6;
  if (v6)
  {
    v8 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v6 unsignedLongLongValue]);
    if (v8)
    {
      CFDictionarySetValue(v4, v5, v8);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092A8B4();
    }
  }

  v9 = kIDSQRAllocateKey_Allocations;
  v10 = [v3 objectForKey:kIDSQRAllocateKey_Allocations];
  v11 = v10;
  if (v10 && [v10 count])
  {
    key = v9;
    v27 = v3;
    theDict = v4;
    v12 = objc_alloc_init(NSMutableArray);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v26 = v11;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v30;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v29 + 1) + 8 * i);
          v19 = [v18 mutableCopy];
          v20 = [v18 objectForKey:v5];
          v21 = v20;
          if (v20)
          {
            v22 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v20 unsignedLongLongValue]);
            if (v22)
            {
              CFDictionarySetValue(v19, v5, v22);
            }

            else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v34 = v5;
              v35 = 2080;
              v36 = "newParticipant";
              _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "REQUIRED_ATTRIBUTE - Warning, missing %@ to add to %s", buf, 0x16u);
            }
          }

          [v12 addObject:v19];
        }

        v15 = [v13 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v15);
    }

    v23 = v12;
    if (v23)
    {
      v4 = theDict;
      CFDictionarySetValue(theDict, key, v23);
      v3 = v27;
    }

    else
    {
      v3 = v27;
      v4 = theDict;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10092A8B4();
      }
    }

    v11 = v26;
  }

  return v4;
}

- (BOOL)_isDuplicateResponse:(id)a3 newResponse:(id)a4
{
  v5 = a3;
  if (v5 && a4)
  {
    v6 = kIDSQRAllocateKey_RelaySessionID;
    v7 = [a4 objectForKey:kIDSQRAllocateKey_RelaySessionID];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = [v5 responses];
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          Value = 0;
          if (v6 && *(*(&v18 + 1) + 8 * i))
          {
            Value = CFDictionaryGetValue(*(*(&v18 + 1) + 8 * i), v6);
          }

          v14 = Value;
          if ([v14 isEqualToString:v7])
          {
            v16 = +[IDSFoundationLog QRAllocator];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v23 = v7;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "_isDuplicateResponse:newResponse: found duplicate response for QRSessionID: %@", buf, 0xCu);
            }

            v15 = 1;
            goto LABEL_23;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v24 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v8 = +[IDSFoundationLog QRAllocator];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "_isDuplicateResponse:newResponse: duplicate response not found.", buf, 2u);
    }

    v15 = 0;
LABEL_23:
  }

  else
  {
    v7 = +[IDSFoundationLog QRAllocator];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_isDuplicateResponse:newResponse: invalid parameters!", buf, 2u);
    }

    v15 = 0;
  }

  return v15;
}

- (void)_processSelfAllocations:(id)a3 allocation:(id)a4
{
  v30 = a3;
  v29 = a4;
  v5 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_processSelfAllocations:allocation: called", buf, 2u);
  }

  v6 = objc_opt_class();
  v28 = kIDSQRAllocateKey_SelfAllocationArray;
  v23 = sub_10001B8C4(v6, v30, kIDSQRAllocateKey_SelfAllocationArray);
  if (v23)
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v23 count];
      *buf = 67109120;
      LODWORD(v41) = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "self allocation count in response: %u", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v22 = [v23 count];
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v22 = [v23 count];
          _IDSLogV();
        }
      }
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v23;
    v9 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
    if (v9)
    {
      v26 = kIDSQRAllocateKey_Allocations;
      v27 = *v36;
      v25 = kIDSQRAllocateKey_AllocateType;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v36 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v35 + 1) + 8 * i);
          v12 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v41 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "self allocation: %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v22 = v11;
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                v22 = v11;
                _IDSLogV();
              }
            }
          }

          v13 = [v30 mutableCopy];
          [v13 removeObjectForKey:v28];
          v14 = objc_alloc_init(NSMutableArray);
          [v13 setObject:v14 forKey:v26];

          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v15 = v11;
          v16 = [v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v16)
          {
            v17 = *v32;
            do
            {
              for (j = 0; j != v16; j = j + 1)
              {
                if (*v32 != v17)
                {
                  objc_enumerationMutation(v15);
                }

                v19 = *(*(&v31 + 1) + 8 * j);
                v20 = [v15 objectForKey:v19];
                [v13 setObject:v20 forKey:v19];
              }

              v16 = [v15 countByEnumeratingWithState:&v31 objects:v39 count:16];
            }

            while (v16);
          }

          [v13 setObject:&off_100C3CC40 forKey:v25];
          [v29 addAllocation:v13];
          v21 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v41 = v13;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "transformed self allocation: %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v22 = v13;
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                v22 = v13;
                _IDSLogV();
              }
            }
          }
        }

        v9 = [obj countByEnumeratingWithState:&v35 objects:v42 count:16];
      }

      while (v9);
    }
  }
}

- (id)_getCombinedSoftwareID:(id)a3
{
  v3 = a3;
  v4 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_getCombinedSoftwareID: called", buf, 2u);
  }

  if ([v3 length])
  {
    v5 = _IDSAllocateProtocolVersionNumber();
    v6 = [v5 unsignedShortValue];

    v10 = v6;
    v7 = [[NSMutableData alloc] initWithData:v3];
    [v7 appendBytes:&v10 length:1];
  }

  else
  {
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "failed to get combined-software-id due to invalid parameter.", v11, 2u);
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

    v7 = 0;
  }

  return v7;
}

- (id)_createSessionInfoFromResponsePayload:(id)a3
{
  v4 = a3;
  v5 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_createSessionInfoFromResponsePayload: called", buf, 2u);
  }

  if (!v4)
  {
    v17 = 0;
    goto LABEL_278;
  }

  v6 = [[IDSQuickRelayAllocateMessage alloc] initWithDictionary:v4];
  v174 = [(IDSQuickRelayAllocateMessage *)v6 IDSSessionID];
  v173 = [(IDSQuickRelayAllocateMessage *)v6 appID];
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(IDSQuickRelayAllocateMessage *)v6 relayBuildVersion];
    *buf = 138412290;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "QR Build Version: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v161 = [(IDSQuickRelayAllocateMessage *)v6 relayBuildVersion];
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v161 = [(IDSQuickRelayAllocateMessage *)v6 relayBuildVersion];
        _IDSLogV();
      }
    }
  }

  if ([v173 isEqualToString:{IDSRegistrationServiceTypeCloudMessaging, v161}])
  {
    v10 = sub_100592F04(v174);
    if (([v10 isEqualToString:kIDSDefaultPairedDeviceID] & 1) == 0)
    {
      v11 = v174;
      memset(buf, 170, 16);
      v186.i64[0] = 0xAAAAAAAAAAAAAAAALL;
      v186.i64[1] = 0xAAAAAAAAAAAAAAAALL;
      v12 = +[IDSCurrentDevice sharedInstance];
      v13 = [v12 deviceIdentifier];

      if ([v11 length] == 16)
      {
        v14 = v11;
        *keya = *[v11 bytes];
        v15 = [[NSUUID alloc] initWithUUIDString:v13];
        [v15 getUUIDBytes:buf];

        v186 = veorq_s8(*keya, *buf);
        v16 = [NSData dataWithBytes:&v186 length:16];
      }

      else
      {
        v18 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *v180 = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Not an UUID", v180, 2u);
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

        v16 = v11;
      }

      v19 = v16;

      v20 = sub_100592F04(v19);
      if (v20)
      {
        CFDictionarySetValue(Mutable, kIDSQRAllocateKey_RemoteDeviceIDKey, v20);
      }

      else
      {
        v21 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10092A930();
        }
      }

      v22 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v20;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "remote deviceID: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v162 = v20;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v162 = v20;
            _IDSLogV();
          }
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v23 = [(IDSQuickRelayAllocateMessage *)v6 requestID];
  v24 = sub_100592F04(v23);

  v25 = v24;
  key = v25;
  if (v25)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_RequestID, v25);
  }

  else
  {
    v26 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092A71C();
    }
  }

  if (v10)
  {
    v27 = v10;
LABEL_43:
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_IDSSessionID, v27);
    v177 = v27;
    goto LABEL_44;
  }

  v27 = sub_100592F04(v174);
  if (v27)
  {
    goto LABEL_43;
  }

  v27 = &_os_log_default;
  v54 = &_os_log_default;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092A7A4();
  }

  v177 = 0;
LABEL_44:

  if ([v177 isEqualToString:kIDSDefaultPairedDeviceID])
  {
    CFDictionarySetValue(Mutable, IDSGlobalLinkOptionForceRelayKey, &__kCFBooleanTrue);
  }

  v28 = _IDSAllocateProtocolVersionNumber();
  if (v28)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_AllocateProtocolVersion, v28);
  }

  else
  {
    v29 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092A9B8();
    }
  }

  os_unfair_lock_lock(&self->_lock);
  v30 = [(NSMutableDictionary *)self->_sessionToRequestIDToAllocateTime objectForKeyedSubscript:v177];
  v31 = key == 0;
  if (!v30)
  {
    v31 = 1;
  }

  if (v31)
  {
    v176 = 0;
  }

  else
  {
    v32 = [(NSMutableDictionary *)self->_sessionToRequestIDToAllocateTime objectForKeyedSubscript:v177];
    v176 = CFDictionaryGetValue(v32, key);
  }

  os_unfair_lock_unlock(&self->_lock);
  if (v176)
  {
    v33 = kIDSQRAllocateKey_InferredExternalAddress;
    if (kIDSQRAllocateKey_InferredExternalAddress && (v34 = CFDictionaryGetValue(v4, kIDSQRAllocateKey_InferredExternalAddress)) != 0)
    {
      v35 = v34;
      CFDictionarySetValue(Mutable, v33, v34);
      v36 = v35;
    }

    else
    {
      v35 = &_os_log_default;
      v37 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10092AA40();
      }

      v36 = 0;
    }

    [v176 end];
    if (v38 == 0.0)
    {
      ids_monotonic_time();
      [v176 setEnd:?];
      v39 = @"YES";
    }

    else
    {
      v39 = @"NO";
    }

    [v176 end];
    v41 = v40;
    [v176 start];
    v43 = v41 - v42;
    v44 = [NSNumber numberWithDouble:v43];
    if (v44)
    {
      CFDictionarySetValue(Mutable, kIDSQRAllocateKey_AllocateTime, v44);
    }

    else
    {
      v45 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10092AABC();
      }
    }

    v46 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      *&buf[4] = key;
      *&buf[12] = 2048;
      *&buf[14] = v43;
      v182 = 2112;
      v183 = v36;
      v184 = 2112;
      v185 = v39;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "allocate request %@ took: %.6f seconds, extIPAddr: %@, isFirstLog: %@.", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v169 = v36;
        v170 = v39;
        v167 = v43;
        v163 = key;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v169 = v36;
          v170 = v39;
          v167 = v43;
          v163 = key;
          _IDSLogV();
        }
      }
    }
  }

  v175 = [(IDSQuickRelayAllocator *)self _findAllocationForSessionID:v177 requestIDStr:key, v163, *&v167, v169, v170];
  if (!v175 || ([v175 request], v47 = objc_claimAutoreleasedReturnValue(), v48 = v47 == 0, v47, v48))
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_isInitiator, &__kCFBooleanFalse);
  }

  else
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_isInitiator, &__kCFBooleanTrue);
    v49 = [v175 request];
    v50 = [v49 senderExternalIP];

    if (v50)
    {
      v51 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "allocate response is for an auxiliary connection", buf, 2u);
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

      v52 = [v175 request];
      v53 = [v52 senderExternalIP];

      if (v53)
      {
        CFDictionarySetValue(Mutable, kIDSQRAllocateKey_SenderExternalAddress, v53);
      }

      else
      {
        v55 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10092AB44();
        }
      }
    }
  }

  v56 = kIDSQRAllocateKey_Provider;
  if (kIDSQRAllocateKey_Provider && (v57 = CFDictionaryGetValue(v4, kIDSQRAllocateKey_Provider)) != 0)
  {
    v58 = v57;
    CFDictionarySetValue(Mutable, v56, v57);
    v172 = v58;
  }

  else
  {
    v58 = &_os_log_default;
    v59 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092AA40();
    }

    v172 = 0;
  }

  v60 = [(IDSQuickRelayAllocateMessage *)v6 relaySoftwareVersion];
  v61 = [(IDSQuickRelayAllocator *)self _getCombinedSoftwareID:v60];

  v62 = v61;
  if (v62)
  {
    v63 = v62;
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_RelayCombinedSoftwareID, v62);
    v62 = v63;
  }

  v171 = v62;

  v64 = [(IDSQuickRelayAllocateMessage *)v6 relayPort];
  if (v64)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_RelayPort, v64);
  }

  else
  {
    v65 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092ABCC();
    }
  }

  v66 = [(IDSQuickRelayAllocateMessage *)v6 relayIP];
  if (v66)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_RelayAddress, v66);
  }

  else
  {
    v67 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092AC54();
    }
  }

  v68 = [(IDSQuickRelayAllocateMessage *)v6 relayIPv6];
  if (v68)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_RelayAddressIPv6, v68);
  }

  v69 = [(IDSQuickRelayAllocateMessage *)v6 relayHighPriorityPort];
  if (v69)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_RelayHighPriorityPort, v69);
  }

  v70 = [(IDSQuickRelayAllocateMessage *)v6 relaySessionToken];
  if (v70)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_RelaySessionToken, v70);
  }

  else
  {
    v71 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092ACDC();
    }
  }

  v72 = [(IDSQuickRelayAllocateMessage *)v6 infoAttribute];
  if (v72)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_PreferredRemoteInterface, v72);
  }

  v73 = [(IDSQuickRelayAllocateMessage *)v6 pskTransportParameters];
  if (v73)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_PSKTransportParameters, v73);
  }

  v74 = [(IDSQuickRelayAllocateMessage *)v6 pskH3Settings];
  if (v74)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_PSKH3Settings, v74);
  }

  v75 = [(IDSQuickRelayAllocateMessage *)v6 reportingDataBlob];
  if (v75)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_ReportingDataBlob, v75);
  }

  v76 = [(IDSQuickRelayAllocateMessage *)v6 isInternal];
  if (v76)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_IsInternal, v76);
  }

  v77 = [(IDSQuickRelayAllocateMessage *)v6 relayBuildVersion];
  if (v77)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_RelayBuildVersion, v77);
  }

  v78 = IMGetCachedDomainIntForKeyWithDefaultValue();
  if ((v78 & 0x80000000) != 0)
  {
    v80 = [(IDSQuickRelayAllocateMessage *)v6 ipPreference];
    if (v80)
    {
      CFDictionarySetValue(Mutable, kIDSQRAllocateKey_RelayIPPreference, v80);
    }
  }

  else
  {
    v79 = [NSNumber numberWithInt:v78];
    if (v79)
    {
      CFDictionarySetValue(Mutable, kIDSQRAllocateKey_RelayIPPreference, v79);
    }

    else
    {
      v81 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10092AD64();
      }
    }

    v82 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v78;
      _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "defaults write to set ipPreference: %d", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v164 = v78;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v164 = v78;
          _IDSLogV();
        }
      }
    }
  }

  v83 = IMGetCachedDomainIntForKeyWithDefaultValue();
  if ((v83 & 0x80000000) != 0)
  {
    v85 = kIDSQRAllocateKey_LinkSuggestion;
    if (kIDSQRAllocateKey_LinkSuggestion)
    {
      v86 = CFDictionaryGetValue(v4, kIDSQRAllocateKey_LinkSuggestion);
      if (v86)
      {
        v87 = v86;
        CFDictionarySetValue(Mutable, v85, v86);
      }
    }
  }

  else
  {
    v84 = [NSNumber numberWithInt:v83];
    if (v84)
    {
      CFDictionarySetValue(Mutable, kIDSQRAllocateKey_LinkSuggestion, v84);
    }

    else
    {
      v88 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10092ADEC();
      }
    }

    v89 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v83;
      _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "defaults write to set linkSuggestionValue: %d", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v164 = v83;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v164 = v83;
          _IDSLogV();
        }
      }
    }
  }

  v90 = IMGetCachedDomainIntForKeyWithDefaultValue();
  if ((v90 & 0x80000000) != 0)
  {
    v92 = kIDSQRAllocateKey_LinkScore;
    if (kIDSQRAllocateKey_LinkScore)
    {
      v93 = CFDictionaryGetValue(v4, kIDSQRAllocateKey_LinkScore);
      if (v93)
      {
        v94 = v93;
        CFDictionarySetValue(Mutable, v92, v93);
      }
    }
  }

  else
  {
    v91 = [NSNumber numberWithInt:v90];
    if (v91)
    {
      CFDictionarySetValue(Mutable, kIDSQRAllocateKey_LinkScore, v91);
    }

    else
    {
      v95 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10092AE74();
      }
    }

    v96 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v90;
      _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "defaults write to set linkScoreValue: %d", buf, 8u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v164 = v90;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v164 = v90;
          _IDSLogV();
        }
      }
    }
  }

  v97 = [(IDSQuickRelayAllocateMessage *)v6 qrExperiments];
  if (IMGetDomainBoolForKey())
  {
    v98 = [NSNumber numberWithBool:1];
    if (v98)
    {
      CFDictionarySetValue(Mutable, kIDSQRAllocateKey_HTTP2Disabled, v98);
    }

    else
    {
      v101 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10092AEFC();
      }
    }

    v100 = +[IDSFoundationLog QRAllocator];
    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "Disable HTTP2 due to user defaults", buf, 2u);
    }
  }

  else
  {
    v99 = kIDSQRAllocateKey_HTTP2Disabled;
    v100 = [v97 objectForKey:kIDSQRAllocateKey_HTTP2Disabled];
    if (v100)
    {
      CFDictionarySetValue(Mutable, v99, v100);
    }
  }

  if (IMGetDomainBoolForKey())
  {
    v102 = [NSNumber numberWithBool:1];
    if (v102)
    {
      CFDictionarySetValue(Mutable, kIDSQRAllocateKey_IPDiscoveryDisabled, v102);
    }

    else
    {
      v105 = &_os_log_default;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10092AF84();
      }
    }

    v104 = +[IDSFoundationLog QRAllocator];
    if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "Disable ip discovery due to user defaults", buf, 2u);
    }
  }

  else
  {
    v103 = kIDSQRAllocateKey_IPDiscoveryDisabled;
    v104 = [v97 objectForKey:kIDSQRAllocateKey_IPDiscoveryDisabled];
    if (v104)
    {
      CFDictionarySetValue(Mutable, v103, v104);
    }
  }

  v106 = kIDSQRAllocateKey_UplinkNackDisabled;
  v107 = [v97 objectForKey:kIDSQRAllocateKey_UplinkNackDisabled];
  if (v107)
  {
    CFDictionarySetValue(Mutable, v106, v107);
  }

  v108 = kIDSQRAllocateKey_TransportLayerEncryptionDisabled;
  v109 = [v97 objectForKey:kIDSQRAllocateKey_TransportLayerEncryptionDisabled];
  if (v109)
  {
    CFDictionarySetValue(Mutable, v108, v109);
  }

  v110 = kIDSQRAllocateKey_IPDiscoveryDisabled;
  v111 = [v97 objectForKey:kIDSQRAllocateKey_IPDiscoveryDisabled];
  if (v111)
  {
    CFDictionarySetValue(Mutable, v110, v111);
  }

  v112 = v97;
  if (v112)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_QRExperiments, v112);
  }

  v113 = [(IDSQuickRelayAllocateMessage *)v6 relaySessionID];
  v114 = [v113 length] == 16;

  if (v114)
  {
    v115 = [NSUUID alloc];
    v116 = [(IDSQuickRelayAllocateMessage *)v6 relaySessionID];
    v117 = v116;
    v118 = [v115 initWithUUIDBytes:{objc_msgSend(v116, "bytes")}];
LABEL_211:

    goto LABEL_219;
  }

  v119 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
  {
    v120 = [(IDSQuickRelayAllocateMessage *)v6 relaySessionID];
    v121 = [v120 length];
    *buf = 134218240;
    *&buf[4] = v121;
    *&buf[12] = 2048;
    *&buf[14] = 16;
    _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_DEFAULT, "Warning: invalid response relaySessionID length = %lu != sizeof(uuid_t) = %lu", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v122 = [(IDSQuickRelayAllocateMessage *)v6 relaySessionID];
      v165 = [v122 length];
      v168 = 16;
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        v116 = [(IDSQuickRelayAllocateMessage *)v6 relaySessionID:v165];
        v165 = [v116 length];
        v168 = 16;
        _IDSLogV();
        v118 = 0;
        goto LABEL_211;
      }
    }
  }

  v118 = 0;
LABEL_219:
  v123 = [v118 UUIDString];
  if (v123)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_RelaySessionID, v123);
  }

  else
  {
    v124 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092B00C();
    }
  }

  v125 = [(IDSQuickRelayAllocateMessage *)v6 relaySessionKey];
  if (v125)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_RelaySessionKey, v125);
  }

  else
  {
    v126 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092B094();
    }
  }

  v127 = [(IDSQuickRelayAllocateMessage *)v6 appID];
  if (v127)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_AppID, v127);
  }

  else
  {
    v128 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092B11C();
    }
  }

  v129 = [(IDSQuickRelayAllocateMessage *)v6 relayExpiryTimeStamp];
  [v129 doubleValue];
  v131 = v130;

  v132 = [[NSNumber alloc] initWithDouble:v131];
  if (v132)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_RelayExpiryTimestamp, v132);
  }

  else
  {
    v133 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092B1A4();
    }
  }

  v134 = objc_opt_class();
  v135 = kIDSQRAllocateKey_AllocateType;
  v136 = sub_10001B8C4(v134, v4, kIDSQRAllocateKey_AllocateType);
  v137 = v136;
  if (v136)
  {
    v138 = v136;
    CFDictionarySetValue(Mutable, v135, v138);

    if ([v138 intValue] == 3 || objc_msgSend(v138, "intValue") == 1)
    {
      v139 = objc_opt_class();
      v140 = kIDSQRAllocateKey_Allocations;
      v141 = sub_10001B8C4(v139, v4, kIDSQRAllocateKey_Allocations);
      v142 = v141;
      if (v141)
      {
        v143 = v141;
        CFDictionarySetValue(Mutable, v140, v143);
      }

      else
      {
        v150 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v150, OS_LOG_TYPE_DEFAULT, "missing allocation status result", buf, 2u);
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

    goto LABEL_265;
  }

  v144 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "missing allocateType in response", buf, 2u);
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

  v145 = [(IDSQuickRelayAllocateMessage *)v6 allocateProtocolVersion];
  v146 = [v145 intValue] > 1;

  if (!v146)
  {
    CFDictionarySetValue(Mutable, v135, &off_100C3CBC8);
LABEL_265:
    v151 = kIDSQRAllocateKey_SessionAllocationTime;
    v152 = [(__CFDictionary *)v4 objectForKey:kIDSQRAllocateKey_SessionAllocationTime];
    if (v152)
    {
      [(__CFDictionary *)Mutable setObject:v152 forKey:v151];
    }

    v153 = kIDSQRAllocateKey_RecipientID;
    v154 = [(__CFDictionary *)v4 objectForKey:kIDSQRAllocateKey_RecipientID];
    v149 = v154;
    if (v154)
    {
      v155 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v154 unsignedLongLongValue]);
      if (v155)
      {
        [(__CFDictionary *)Mutable setObject:v155 forKey:v153];
      }
    }

    v156 = kIDSQRAllocateKey_GroupID;
    v157 = [(__CFDictionary *)v4 objectForKey:kIDSQRAllocateKey_GroupID];
    if (v157)
    {
      [(__CFDictionary *)Mutable setObject:v157 forKey:v156];
    }

    v158 = kIDSQRAllocateKey_GroupMemberCount;
    v159 = [(__CFDictionary *)v4 objectForKey:kIDSQRAllocateKey_GroupMemberCount];
    if (v159)
    {
      [(__CFDictionary *)Mutable setObject:v159 forKey:v158];
    }

    v17 = Mutable;
    goto LABEL_276;
  }

  v147 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
  {
    v148 = [(IDSQuickRelayAllocateMessage *)v6 allocateProtocolVersion];
    *buf = 138412290;
    *&buf[4] = v148;
    _os_log_impl(&_mh_execute_header, v147, OS_LOG_TYPE_DEFAULT, "allocate type is required for allocate protocol version %@", buf, 0xCu);
  }

  if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLogTransport() || ([(IDSQuickRelayAllocateMessage *)v6 allocateProtocolVersion], v166 = objc_claimAutoreleasedReturnValue(), _IDSLogTransport(), v166, !_IDSShouldLog()))
  {
    v17 = 0;
    goto LABEL_277;
  }

  v149 = [(IDSQuickRelayAllocateMessage *)v6 allocateProtocolVersion];
  _IDSLogV();
  v17 = 0;
LABEL_276:

LABEL_277:
LABEL_278:

  return v17;
}

- (void)_setSessionInfoRequiredKeys
{
  v3 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "_setSessionInfoRequiredKeys called", v7, 2u);
  }

  sessionInfoRequiredKeys = self->_sessionInfoRequiredKeys;
  if (!sessionInfoRequiredKeys)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = self->_sessionInfoRequiredKeys;
    self->_sessionInfoRequiredKeys = v5;

    sessionInfoRequiredKeys = self->_sessionInfoRequiredKeys;
  }

  [(NSMutableArray *)sessionInfoRequiredKeys addObject:kIDSQRAllocateKey_RequestID];
  [(NSMutableArray *)self->_sessionInfoRequiredKeys addObject:kIDSQRAllocateKey_IDSSessionID];
  [(NSMutableArray *)self->_sessionInfoRequiredKeys addObject:kIDSQRAllocateKey_RelayPort];
  [(NSMutableArray *)self->_sessionInfoRequiredKeys addObject:kIDSQRAllocateKey_RelayAddress];
  [(NSMutableArray *)self->_sessionInfoRequiredKeys addObject:kIDSQRAllocateKey_RelaySessionToken];
  [(NSMutableArray *)self->_sessionInfoRequiredKeys addObject:kIDSQRAllocateKey_RelaySessionID];
  [(NSMutableArray *)self->_sessionInfoRequiredKeys addObject:kIDSQRAllocateKey_RelaySessionKey];
  [(NSMutableArray *)self->_sessionInfoRequiredKeys addObject:kIDSQRAllocateKey_isInitiator];
}

- (BOOL)_hasSessionInfoRequiredKeys:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if ([(NSMutableArray *)self->_sessionInfoRequiredKeys count])
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v5 = self->_sessionInfoRequiredKeys;
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
      if (v6)
      {
        v7 = *v18;
        v8 = 1;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v18 != v7)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v17 + 1) + 8 * i);
            v11 = [v4 objectForKey:{v10, v15, v16}];
            v12 = v11 == 0;

            if (v12)
            {
              v13 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v22 = v10;
                v23 = 2112;
                v24 = v4;
                _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " is missing required attributes %@ in sessionInfo %@", buf, 0x16u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  v15 = v10;
                  v16 = v4;
                  _IDSLogTransport();
                  if (_IDSShouldLog())
                  {
                    v15 = v10;
                    v16 = v4;
                    _IDSLogV();
                  }
                }
              }

              v8 = 0;
            }
          }

          v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
        }

        while (v6);
      }

      else
      {
        v8 = 1;
      }
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (void)_triggerSymptomsWithType:(id)a3 subType:(id)a4 subTypeContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = +[IMLockdownManager sharedInstance];
  v11 = [v10 isInternalInstall];

  if (v11)
  {
    v12 = objc_alloc_init(IMWeakLinkClass());
    v13 = [v12 signatureWithDomain:@"IDSQuickRelay" type:v7 subType:v8 subtypeContext:v9 detectedProcess:@"identityservicesd" triggerThresholdValues:0];
    v14 = im_primary_queue();
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1005A84CC;
    v17[3] = &unk_100BE0E40;
    v18 = v12;
    v19 = v13;
    v20 = 0;
    v21 = 0x402E000000000000;
    v15 = v13;
    v16 = v12;
    dispatch_async(v14, v17);
  }
}

- (unsigned)_getErrorCodeFromAllocationStatus:(int)a3
{
  if (a3 > 5007)
  {
    if (a3 > 5031)
    {
      if (a3 == 5032)
      {
        return 37;
      }

      if (a3 == 7000)
      {
        return 42;
      }
    }

    else
    {
      if (a3 == 5008)
      {
        return 36;
      }

      if (a3 == 5010)
      {
        return 45;
      }
    }
  }

  else if (a3 > 5000)
  {
    if (a3 == 5001)
    {
      return 34;
    }

    if (a3 == 5004)
    {
      return 35;
    }
  }

  else
  {
    if (a3 == 1000)
    {
      return 32;
    }

    if (a3 == 1001)
    {
      return 33;
    }
  }

  return 38;
}

- (void)_processAllocationStatusResult:(id)a3
{
  v4 = a3;
  v5 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_processAllocationStatusResult: called", buf, 2u);
  }

  v6 = objc_opt_class();
  v7 = sub_10001B8C4(v6, v4, @"s");
  v8 = [v7 intValue];

  if (!v8)
  {
    goto LABEL_55;
  }

  v9 = objc_opt_class();
  v10 = sub_10001B8C4(v9, v4, @"p");
  v11 = v8;
  if (v10)
  {
    v12 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v10 objectForKey:kIDSQRAllocateKey_RecipientPushToken];
      *buf = 138412546;
      v47 = v13;
      v48 = 2048;
      *v49 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failed to allocate QR for recipient with token %@ with error %lu", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v14 = kIDSQRAllocateKey_RecipientPushToken;
        v39 = [v10 objectForKey:kIDSQRAllocateKey_RecipientPushToken];
        v41 = v11;
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          v39 = [v10 objectForKey:{v14, v39, v11}];
          v41 = v11;
          _IDSLogV();
        }
      }
    }
  }

  v15 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v47 = v4;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Allocation error response: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v39 = v4;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v39 = v4;
        _IDSLogV();
      }
    }
  }

  v16 = [(IDSQuickRelayAllocator *)self _getErrorCodeFromAllocationStatus:v11, v39, v41];
  v17 = kIDSQRAllocateKey_RequestID;
  v18 = [v4 objectForKey:kIDSQRAllocateKey_RequestID];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = [v4 objectForKey:v17];
    v20 = [NSData _IDSDataFromBase64String:v19];
    v21 = sub_100592F04(v20);
  }

  else
  {
    v19 = [v4 objectForKey:v17];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [v4 objectForKey:v17];
      v21 = sub_100592F04(v22);
    }

    else
    {
      v21 = sub_100592F04(0);
    }
  }

  if (!v21)
  {
    v30 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "No request id", buf, 2u);
    }

    if (!os_log_shim_legacy_logging_enabled())
    {
      goto LABEL_54;
    }

    if (!_IDSShouldLogTransport())
    {
      goto LABEL_54;
    }

    _IDSLogTransport();
    if (!_IDSShouldLog())
    {
      goto LABEL_54;
    }

    goto LABEL_38;
  }

  requestIDToSession = self->_requestIDToSession;
  if (requestIDToSession)
  {
    v24 = CFDictionaryGetValue(requestIDToSession, v21);
    if (v24)
    {
      v25 = v24;
      if (v11 == 5001)
      {
        v26 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v47 = v25;
          v48 = 1024;
          *v49 = 5001;
          *&v49[4] = 1024;
          *&v49[6] = v16;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Allocation failure for session %@, status = %d, code = %d, attempting to retry!", buf, 0x18u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v42 = 5001;
            v43 = v16;
            v40 = v25;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v42 = 5001;
              v43 = v16;
              v40 = v25;
              _IDSLogV();
            }
          }
        }

        v27 = [(IDSQuickRelayAllocator *)self _findAllocationForSessionID:v25 requestIDStr:v21, v40, v42, v43];
        v28 = [v27 request];

        [(IDSQuickRelayAllocator *)self _sendAllocateRequest:v28];
        goto LABEL_60;
      }

      v31 = [(IDSQuickRelayAllocator *)self _findSessionWithID:v24];
      v32 = v31;
      if (v31)
      {
        [v31 processAllocationErrorStatus:v11 errorCode:v16];
      }

      else
      {
        v33 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v47 = v25;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "No ids session for ids session id %@", buf, 0xCu);
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

      goto LABEL_54;
    }
  }

  v29 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v47 = v21;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "No ids session id for request id %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
LABEL_38:
        _IDSLogV();
      }
    }
  }

LABEL_54:

LABEL_55:
  v34 = objc_opt_class();
  v10 = sub_10001B8C4(v34, v4, kIDSQRAllocateKey_QRFailureSubType);
  v35 = objc_opt_class();
  v21 = sub_10001B8C4(v35, v4, kIDSQRAllocateKey_QRFailureContext);
  v36 = objc_opt_class();
  v25 = sub_10001B8C4(v36, v4, kIDSQRAllocateKey_AllocateType);
  v44[0] = &off_100C3CBC8;
  v44[1] = &off_100C3CC40;
  v45[0] = @"IDSQuickRelayTwoWay";
  v45[1] = @"IDSQuickRelaySelf";
  v44[2] = &off_100C3CC58;
  v44[3] = &off_100C3CBB0;
  v45[2] = @"IDSQuickRelayShared";
  v45[3] = @"IDSQuickRelayKeepAlive";
  v44[4] = &off_100C3CC70;
  v45[4] = @"IDSQuickRelayMax";
  v28 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:5];
  v37 = [v28 objectForKey:v25];
  v38 = v37;
  if (v10 && v21 && v37)
  {
    [(IDSQuickRelayAllocator *)self _triggerSymptomsWithType:v37 subType:v10 subTypeContext:v21];
  }

LABEL_60:
}

- (void)_sendAWDMetricsForAllocation:(id)a3 status:(int64_t)a4 hasRecipientAccepted:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_sendAWDMetricsForAllocation:status:hasRecipientAccepted: called", buf, 2u);
  }

  v10 = [v8 responses];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [v8 request];
    if (v12)
    {
      v13 = [v8 request];
      v14 = [v13 appID];
    }

    else
    {
      v14 = &stru_100C06028;
    }

    v16 = [v8 request];
    if (v16)
    {
      v17 = [v8 request];
      v18 = [v17 requestLength];
    }

    else
    {
      v18 = 0;
    }

    v19 = [IDSQRAllocationMetric alloc];
    [v8 duration];
    v21 = [v19 initWithDuration:v20 result:a4 hasRecipientAccepted:v5 payloadSize:v18 topic:v14 service:v14];
    v22 = +[IDSCoreAnalyticsLogger defaultLogger];
    [v22 logMetric:v21];

    v23 = [(IDSQuickRelayAllocator *)self _getIDSAWDLoggingInstance];
    [v8 duration];
    [v23 IDSQRAllocation:v24 result:a4 hasRecipientAccepted:v5 payloadSize:v18 topic:v14 service:v14];

    v25 = +[IDSDSessionController sharedInstance];
    v26 = [v8 sessionIDStr];
    v27 = [v25 sessionWithUniqueID:v26];

    if (v27)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v29 = [v8 request];
      v30 = [v29 allocateProtocolVersion];
      [(__CFDictionary *)Mutable setObject:v30 forKeyedSubscript:IDSDSessionReportQRVersionKey];

      [(__CFDictionary *)Mutable setObject:&off_100C3CC88 forKeyedSubscript:IDSDSessionReportQREventSubTypeKey];
      [v8 duration];
      v31 = [NSNumber numberWithDouble:?];
      [(__CFDictionary *)Mutable setObject:v31 forKeyedSubscript:IDSDSessionReportDurationKey];

      v32 = [NSNumber numberWithInteger:a4];
      [(__CFDictionary *)Mutable setObject:v32 forKeyedSubscript:IDSDSessionReportResultCodeKey];

      [v27 addQREventForRTCReport:Mutable];
    }

    else
    {
      v33 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Invalid session. Skip AWD report", v34, 2u);
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

  else
  {
    v15 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "missing response. Skip AWD report", v35, 2u);
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

- (id)_getStatusMessageFromStatusCode:(unint64_t)a3
{
  if (a3 <= 5003)
  {
    if (!a3)
    {
      return @"Success";
    }

    if (a3 != 5001)
    {
      if (a3 == 5003)
      {
        return @"BadRequest";
      }

      return @"Unknown status";
    }

    return @"ServerInternalError";
  }

  else if (a3 > 5040)
  {
    if (a3 != 5041)
    {
      if (a3 == 5042)
      {
        return @"ExpiredSessionToken";
      }

      return @"Unknown status";
    }

    return @"BadSessionToken";
  }

  else
  {
    if (a3 != 5004)
    {
      if (a3 == 5008)
      {
        return @"MissingRequiredKey";
      }

      return @"Unknown status";
    }

    return @"ServerBusy";
  }
}

- (void)_startQRConnectionForSession:(id)a3 isInitiatorsAcceptedSession:(BOOL)a4 withLocalInterfacePreference:(int)a5
{
  v5 = *&a5;
  v6 = a4;
  v8 = a3;
  v9 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    if (v6)
    {
      v10 = @"YES";
    }

    *buf = 138412546;
    v58 = v10;
    v59 = 2112;
    v60 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_startQRConnectionForSession:isInitiatorsAcceptedSession: called {isInitiator: %@} sessionInfo %@", buf, 0x16u);
  }

  if ([(IDSQuickRelayAllocator *)self _hasSessionInfoRequiredKeys:v8])
  {
    Value = 0;
    v12 = kIDSQRAllocateKey_RequestID;
    if (v8 && kIDSQRAllocateKey_RequestID)
    {
      Value = CFDictionaryGetValue(v8, kIDSQRAllocateKey_RequestID);
    }

    key = Value;
    v13 = [(__CFDictionary *)v8 objectForKey:kIDSQRAllocateKey_IDSSessionID];
    v14 = v13;
    if (key)
    {
      if (v13 || (v19 = self->_requestIDToSession) != 0 && (v14 = CFDictionaryGetValue(v19, key)) != 0)
      {
        if (-[__CFString isEqualToString:](v14, "isEqualToString:", kIDSDefaultPairedDeviceID) & 1) != 0 || (-[__CFDictionary objectForKey:](v8, "objectForKey:", kIDSQRAllocateKey_AppID), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 isEqualToString:IDSRegistrationServiceTypeCloudMessaging], v15, (v16))
        {
          v55 = 0;
          v17 = 1;
        }

        else
        {
          v55 = [(IDSQuickRelayAllocator *)self _findSessionWithID:v14];
          v17 = 0;
        }

        v21 = [(IDSQuickRelayAllocator *)self _findAllocationForSessionID:v14 requestIDStr:key];
        v22 = v21;
        if (v55)
        {
          if (!v21)
          {
            [(IDSQuickRelayAllocator *)self _sendAWDMetricsForAllocation:0 status:0 hasRecipientAccepted:1];
          }

          v54 = [(__CFDictionary *)v8 objectForKey:kIDSQRAllocateKey_GroupID];
          v53 = [(__CFDictionary *)v8 objectForKey:kIDSQRAllocateKey_AllocateType];
          v23 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = [v55 uniqueID];
            v25 = [v22 connectReadyHandler];
            v26 = objc_retainBlock(v25);
            v27 = [v55 shouldConnectToQRServer];
            v28 = @"NO";
            *buf = 138413058;
            v58 = v24;
            v59 = 2048;
            if (v27)
            {
              v28 = @"YES";
            }

            v60 = v22;
            v61 = 2048;
            v62 = v26;
            v63 = 2112;
            v64 = v28;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "passed sessionInfo to IDSSession ID %@ to connect, allocation: %p, %p, session should connectToQRServer: %@", buf, 0x2Au);
          }

          if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
          {
            v29 = [v55 uniqueID];
            v30 = [v22 connectReadyHandler];
            v31 = [v55 shouldConnectToQRServer] ? @"YES" : @"NO";
            v51 = v30;
            v52 = v31;
            v48 = v29;
            v50 = v22;
            _IDSLogTransport();

            if (_IDSShouldLog())
            {
              v32 = [v55 uniqueID];
              v33 = [v22 connectReadyHandler];
              if ([v55 shouldConnectToQRServer])
              {
                v34 = @"YES";
              }

              else
              {
                v34 = @"NO";
              }

              v51 = v33;
              v52 = v34;
              v48 = v32;
              v50 = v22;
              _IDSLogV();
            }
          }

          if (!v22 || ([v22 connectReadyHandler], v35 = objc_claimAutoreleasedReturnValue(), v36 = v35 == 0, v35, v36) || (objc_msgSend(v22, "connectReadyHandler"), v37 = objc_claimAutoreleasedReturnValue(), (v37)[2](v37, 0, v8), v37, objc_msgSend(v22, "setConnectReadyHandler:", 0), -[NSMutableSet containsObject:](self->_pendingRecipientsAcceptedSessions, "containsObject:", v14)))
          {
            [v55 setShouldConnectToQRServer:{0, v48, v50, v51, v52}];
            [v55 connectQRServer:v8 withPreferredLocalInterface:v5];
          }

          if (v54 && v53 && [v53 intValue] == 3)
          {
            v38 = [(NSMutableDictionary *)self->_allocateResponses objectForKey:v54];
            v39 = v38;
            if (v38)
            {
              *(v38 + 16) = -1;
            }

            else
            {
              v45 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v58 = v54;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "failed to find response for groupID %@", buf, 0xCu);
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

          if (v6)
          {
            v46 = [(__CFDictionary *)v8 objectForKey:kIDSQRAllocateKey_RelaySessionID];
            [v55 setAcceptedRelaySession:v46];
          }

          requestIDToSession = self->_requestIDToSession;
          if (requestIDToSession)
          {
            CFDictionaryRemoveValue(requestIDToSession, key);
          }
        }

        else
        {
          v40 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v58 = v14;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "cannot find existing IDSSession %@ to start a connection", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v48 = v14;
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                v48 = v14;
                _IDSLogV();
              }
            }
          }

          [v22 setConnectReadyHandler:{0, v48}];
          if (v17)
          {
            v41 = [(__CFDictionary *)v8 objectForKey:kIDSQRAllocateKey_RemoteDeviceIDKey];
            if (!v41)
            {
              v41 = v14;
            }

            v42 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v58 = v41;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "bring up GlobalLink link for cloud messaging to %@", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                v49 = v41;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  v49 = v41;
                  _IDSLogV();
                }
              }
            }

            v43 = +[IDSUTunController sharedInstance];
            [v43 connectGlobalLinkForDevice:v41 sessionInfo:v8 connectReadyHandler:0 withLocalInterfacePreference:0];

            v44 = self->_requestIDToSession;
            if (v44)
            {
              CFDictionaryRemoveValue(v44, key);
            }
          }

          [(IDSQuickRelayAllocator *)self _sendAWDMetricsForAllocation:v22 status:0 hasRecipientAccepted:0];
        }
      }

      else
      {
        v20 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v58 = key;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "No IDSSessionID found for this requestID %@, bailing...", buf, 0xCu);
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

        v14 = 0;
      }
    }

    else
    {
      v18 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v58 = v12;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, " is missing %@, bailling...", buf, 0xCu);
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

- (id)_findSessionWithID:(id)a3
{
  v3 = a3;
  v4 = +[IDSDSessionController sharedInstance];
  v5 = [v4 sessionWithUniqueID:v3];

  return v5;
}

- (void)_storeMappingFromPushTokenToURIs:(id)a3 fromID:(id)a4 service:(id)a5 cert:(id)a6 forGroup:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v51 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "_storeMappingFromPushTokenToURIs:fromURI:service:cert:forGroup: called {groupID: %@}", buf, 0xCu);
  }

  v32 = v16;
  v18 = [(NSMutableDictionary *)self->_pushTokenToURIForGroup objectForKeyedSubscript:v16];
  v19 = [(IDSQuickRelayAllocator *)self _peerIDManager];
  v35 = v13;
  v20 = [IDSURI URIWithPrefixedURI:v13 withServiceLoggingHint:v14];
  v36 = v12;
  v33 = v15;
  v34 = v14;
  v21 = [v19 sessionTokensForURIs:v12 fromURI:v20 service:v14 fromIdentity:v15 includeSelfDevice:1 fullyRemoveSelfDevice:0];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v21;
  v38 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v38)
  {
    v37 = *v45;
    do
    {
      for (i = 0; i != v38; i = i + 1)
      {
        if (*v45 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v44 + 1) + 8 * i);
        v24 = [obj objectForKey:v23];
        v25 = [v24 objectForKey:@"push-tokens"];
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v26 = [v25 countByEnumeratingWithState:&v40 objects:v48 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v41;
          do
          {
            for (j = 0; j != v27; j = j + 1)
            {
              if (*v41 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v40 + 1) + 8 * j);
              v31 = [v23 prefixedURI];
              [v18 setObject:v31 forKeyedSubscript:v30];
            }

            v27 = [v25 countByEnumeratingWithState:&v40 objects:v48 count:16];
          }

          while (v27);
        }
      }

      v38 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v38);
  }
}

- (id)_uriToParticipantID:(id)a3
{
  v26 = a3;
  v3 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = v26;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "_uriToParticipantID: called sessionInfo %@", buf, 0xCu);
  }

  v25 = [(NSMutableDictionary *)v26 objectForKeyedSubscript:kIDSQRAllocateKey_GroupID];
  v4 = [(NSMutableDictionary *)v26 objectForKeyedSubscript:kIDSQRAllocateKey_Allocations];
  v29 = [(NSMutableDictionary *)self->_pushTokenToURIForGroup objectForKeyedSubscript:v25];
  v5 = +[NSMutableDictionary dictionary];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v6)
  {
    v28 = *v33;
    v7 = kIDSQRAllocateKey_RecipientPushToken;
    v8 = kIDSQRAllocateKey_RecipientID;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v33 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v32 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:v7];
        v12 = [v10 objectForKeyedSubscript:v8];
        v13 = [v29 objectForKeyedSubscript:v11];
        if (!v13)
        {
          v21 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            pushTokenToURIForGroup = self->_pushTokenToURIForGroup;
            *buf = 138412290;
            v38 = pushTokenToURIForGroup;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "there is no URI list yet. stopped converting URI to Participant ID - %@", buf, 0xCu);
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

          v19 = 0;
          v20 = obj;
          goto LABEL_21;
        }

        v14 = [v5 objectForKeyedSubscript:v13];
        v15 = v14 == 0;

        if (v15)
        {
          v16 = objc_alloc_init(NSMutableSet);
          [v5 setObject:v16 forKeyedSubscript:v13];
        }

        v17 = [v5 objectForKeyedSubscript:v13];
        v18 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v12 unsignedLongLongValue]);
        [v17 addObject:v18];
      }

      v6 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  +[NSMutableDictionary dictionary];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1005AAA38;
  v19 = v30[3] = &unk_100BE0E68;
  v31 = v19;
  [v5 enumerateKeysAndObjectsUsingBlock:v30];
  v20 = v31;
LABEL_21:

  return v19;
}

- (id)getRelaySessionIDForIDSSessionID:(id)a3 pushToken:(id)a4
{
  v21 = a3;
  v6 = a4;
  v7 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v28 = v21;
    v29 = 2112;
    v30 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "getRelaySessionIDForIDSSessionID:pushToken: called {sessionID: %@, pushToken: %@}", buf, 0x16u);
  }

  im_assert_primary_base_queue();
  os_unfair_lock_lock(&self->_lock);
  v8 = [(IDSQuickRelayAllocator *)self _findAllocationListForSessionID:v21];
  if ([v8 count])
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = [v13 pushTokenToQRSessionID];
          v15 = v14;
          if (v14)
          {
            v16 = v6 != 0;
          }

          else
          {
            v16 = 0;
          }

          if (v16)
          {
            v17 = [v13 pushTokenToQRSessionID];
            v18 = CFDictionaryGetValue(v17, v6);

            if (v18)
            {
              os_unfair_lock_unlock(&self->_lock);

              goto LABEL_27;
            }
          }

          else
          {
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v18 = [(NSMutableDictionary *)self->_idsSessionIDToqrSessionID objectForKey:v21];
    if (v18)
    {
      goto LABEL_27;
    }
  }

  v19 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "failed to find allocation for session %@", buf, 0xCu);
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

  v18 = 0;
LABEL_27:

  return v18;
}

- (id)getPushTokenForRelaySessionID:(id)a3 relaySessionID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = v6;
    v26 = 2112;
    v27 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "getPushTokenForRelaySessionID:relaySessionID called {sessionID: %@, relaySessionID: %@}", buf, 0x16u);
  }

  v9 = [(IDSQuickRelayAllocator *)self _filterSelfAllocationsForSessionID:v6];
  if ([v9 count])
  {
    os_unfair_lock_lock(&self->_lock);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = *v20;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = [*(*(&v19 + 1) + 8 * i) pushTokenToQRSessionID];
          v15 = [v14 allKeysForObject:v7];

          if ([v15 count])
          {
            os_unfair_lock_unlock(&self->_lock);
            v16 = [v15 firstObject];

            goto LABEL_21;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v17 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v6;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "failed to find allocation for session %@", buf, 0xCu);
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

  v16 = 0;
LABEL_21:

  return v16;
}

- (void)requestAllocationForRecipient:(id)a3
{
  v4 = a3;
  im_assert_primary_base_queue();
  value = v4;
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v54 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IDSSession ID %@ requested for a QR allocation", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v37 = v4;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v37 = v4;
        _IDSLogV();
      }
    }
  }

  if (v4)
  {
    theDict = [(IDSQuickRelayAllocator *)self _parseQuickRelayDefaults:v4 gropuID:0];
    if (theDict)
    {
      v6 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v54 = theDict;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "use QR session info from user defaults: %@.", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v37 = theDict;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v37 = theDict;
            _IDSLogV();
          }
        }
      }

      v7 = +[NSUUID UUID];
      v8 = [v7 UUIDString];

      if (v8)
      {
        CFDictionarySetValue(theDict, kIDSQRAllocateKey_RequestID, v8);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10092A71C();
      }

      CFDictionarySetValue(theDict, kIDSQRAllocateKey_IDSSessionID, value);
      CFDictionarySetValue(theDict, kIDSQRAllocateKey_isInitiator, &__kCFBooleanFalse);
      if ([value isEqualToString:kIDSDefaultPairedDeviceID])
      {
        CFDictionarySetValue(theDict, IDSGlobalLinkOptionForceRelayKey, &__kCFBooleanTrue);
      }

      [(IDSQuickRelayAllocator *)self _startQRConnectionForSession:theDict isInitiatorsAcceptedSession:0 withLocalInterfacePreference:0];
    }

    else
    {
      os_unfair_lock_lock(&self->_lock);
      v10 = [(IDSQuickRelayAllocator *)self _findAllocationListForSessionID:v4];
      v11 = objc_alloc_init(NSMutableArray);
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v49 objects:v59 count:16];
      if (v13)
      {
        v14 = *v50;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v50 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v49 + 1) + 8 * i);
            v45 = 0u;
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v17 = [v16 responses];
            v18 = [v17 countByEnumeratingWithState:&v45 objects:v58 count:16];
            if (v18)
            {
              v19 = *v46;
              do
              {
                for (j = 0; j != v18; j = j + 1)
                {
                  if (*v46 != v19)
                  {
                    objc_enumerationMutation(v17);
                  }

                  if (v11)
                  {
                    v21 = *(*(&v45 + 1) + 8 * j);
                    if (v21)
                    {
                      CFArrayAppendValue(v11, v21);
                    }
                  }
                }

                v18 = [v17 countByEnumeratingWithState:&v45 objects:v58 count:16];
              }

              while (v18);
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v49 objects:v59 count:16];
        }

        while (v13);
      }

      os_unfair_lock_unlock(&self->_lock);
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v22 = v11;
      v23 = [(__CFArray *)v22 countByEnumeratingWithState:&v41 objects:v57 count:16];
      if (v23)
      {
        v24 = *v42;
        v25 = kIDSQRAllocateKey_RelaySessionID;
        do
        {
          for (k = 0; k != v23; k = k + 1)
          {
            if (*v42 != v24)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v41 + 1) + 8 * k);
            if (v27)
            {
              v28 = v25 == 0;
            }

            else
            {
              v28 = 1;
            }

            if (v28)
            {
              v29 = 0;
            }

            else
            {
              v30 = CFDictionaryGetValue(*(*(&v41 + 1) + 8 * k), v25);
              v29 = v30;
              if (v30)
              {
                v31 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v54 = value;
                  v55 = 2112;
                  v56 = v29;
                  _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "found a pending QR allocation for IDSSession %@ with QR session ID %@", buf, 0x16u);
                }

                if (os_log_shim_legacy_logging_enabled())
                {
                  if (_IDSShouldLogTransport())
                  {
                    v37 = value;
                    v38 = v29;
                    _IDSLogTransport();
                    if (_IDSShouldLog())
                    {
                      v37 = value;
                      v38 = v29;
                      _IDSLogV();
                    }
                  }
                }
              }
            }

            [(IDSQuickRelayAllocator *)self _startQRConnectionForSession:v27 isInitiatorsAcceptedSession:0 withLocalInterfacePreference:0, v37, v38];
          }

          v23 = [(__CFArray *)v22 countByEnumeratingWithState:&v41 objects:v57 count:16];
        }

        while (v23);
      }

      else
      {

        v32 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v54 = value;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "there's no pending QR allocation for IDSSession %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v37 = value;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v37 = value;
              _IDSLogV();
            }
          }
        }
      }

      pendingRecipientsAcceptedSessions = self->_pendingRecipientsAcceptedSessions;
      if (!pendingRecipientsAcceptedSessions)
      {
        v34 = objc_alloc_init(NSMutableSet);
        v36 = self->_pendingRecipientsAcceptedSessions;
        p_pendingRecipientsAcceptedSessions = &self->_pendingRecipientsAcceptedSessions;
        *p_pendingRecipientsAcceptedSessions = v34;

        pendingRecipientsAcceptedSessions = *p_pendingRecipientsAcceptedSessions;
      }

      [(NSMutableSet *)pendingRecipientsAcceptedSessions addObject:value, v37];
    }
  }

  else
  {
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "missing sessionID in requestAllocationForRecipient", buf, 2u);
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

- (void)setInitiatorsAcceptedToken:(id)a3 pushToken:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setInitiatorsAcceptedToken:pushToken: called {pushToken: %@}", buf, 0xCu);
  }

  im_assert_primary_base_queue();
  if (v6 && v7)
  {
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "add accepted session %@ with token %@", buf, 0x16u);
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

    if (!self->_initiatorsAcceptedSessionsWithToken)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      initiatorsAcceptedSessionsWithToken = self->_initiatorsAcceptedSessionsWithToken;
      self->_initiatorsAcceptedSessionsWithToken = Mutable;
    }

    CFDictionarySetValue(self->_initiatorsAcceptedSessionsWithToken, v6, v7);
  }
}

- (int64_t)getServerProviderForIDSSessionID:(id)a3
{
  v4 = a3;
  v5 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "getServerProviderForIDSSessionID: called {sessionID: %@}", &v13, 0xCu);
  }

  im_assert_primary_base_queue();
  os_unfair_lock_lock(&self->_lock);
  v6 = [(IDSQuickRelayAllocator *)self _findAllocationListForSessionID:v4];
  v7 = [v6 firstObject];
  v8 = [v7 responses];
  v9 = [v8 anyObject];

  os_unfair_lock_unlock(&self->_lock);
  Value = 0;
  if (v9 && kIDSQRAllocateKey_Provider)
  {
    Value = CFDictionaryGetValue(v9, kIDSQRAllocateKey_Provider);
  }

  v11 = [Value unsignedIntValue];

  return v11;
}

- (void)reportAWDAllocatorEvent:(unsigned int)a3 relayProviderType:(int64_t)a4 transport:(int64_t)a5 localRAT:(unsigned int)a6 duration:(unint64_t)a7 idsSessionID:(id)a8 reportingDataBlob:(id)a9 isInitiator:(BOOL)a10 serverSoftwareVersion:(id)a11
{
  v54 = *&a3;
  v50 = a8;
  v48 = a9;
  v49 = a11;
  v12 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = _IDSStunTransportStrings[a5];
    v14 = IDSRadioAccessTechnologyToString();
    v15 = @"NO";
    *buf = 67110658;
    v56 = v54;
    if (a10)
    {
      v15 = @"YES";
    }

    v57 = 2080;
    v58 = v13;
    v59 = 2080;
    v60 = v14;
    v61 = 1024;
    v62 = a7;
    v63 = 2112;
    v64 = v50;
    v65 = 2112;
    v66 = v15;
    v67 = 2112;
    v68 = v49;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "report AWD allocator event %u, transport [%s], RAT [%s], duration %u ms, idsSessionID %@, isInitiator:%@, serverSoftwareVersion: %@", buf, 0x40u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      IDSRadioAccessTechnologyToString();
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        IDSRadioAccessTechnologyToString();
        _IDSLogV();
      }
    }
  }

  v16 = [IDSQuickRelayMetric alloc];
  v17 = [NSNumber numberWithUnsignedInt:v54];
  v18 = [NSNumber numberWithUnsignedLongLong:a7];
  v19 = [NSNumber numberWithInteger:a4];
  v20 = [NSNumber numberWithInteger:a5];
  v21 = [NSNumber numberWithUnsignedInt:a6];
  v22 = [NSNumber numberWithBool:a10];
  v23 = _IDSAllocateProtocolVersionNumber();
  v24 = [v16 initWithType:&off_100C3CB38 eventSubType:v17 duration:v18 resultCode:0 providerType:v19 transportType:v20 interfaceType:v21 skeEnabled:0 isInitiator:v22 protocolVersion:v23 retryCount:0 serviceName:0 subServiceName:0 participantCount:0];

  v25 = +[IDSCoreAnalyticsLogger defaultLogger];
  [v25 logMetric:v24];

  v26 = [(IDSQuickRelayAllocator *)self _getIDSAWDLoggingInstance];
  v27 = [NSNumber numberWithUnsignedInt:v54];
  v28 = [NSNumber numberWithUnsignedLongLong:a7];
  v29 = [NSNumber numberWithInteger:a4];
  v30 = [NSNumber numberWithInteger:a5];
  v31 = [NSNumber numberWithUnsignedInt:a6];
  v32 = [NSNumber numberWithBool:a10];
  v33 = _IDSAllocateProtocolVersionNumber();
  [v26 IDSQuickRelayEventType:&off_100C3CB38 eventSubType:v27 duration:v28 resultCode:0 providerType:v29 transportType:v30 interfaceType:v31 skeEnabled:0 isInitiator:v32 protocolVersion:v33 retryCount:0 serviceName:0 subServiceName:0 participantCount:0];

  v34 = +[IDSDSessionController sharedInstance];
  v35 = [v34 sessionWithUniqueID:v50];

  if (v35)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v37 = _IDSAllocateProtocolVersionNumber();
    [(__CFDictionary *)Mutable setObject:v37 forKeyedSubscript:IDSDSessionReportQRVersionKey];

    v38 = [NSNumber numberWithUnsignedInt:v54];
    [(__CFDictionary *)Mutable setObject:v38 forKeyedSubscript:IDSDSessionReportQREventSubTypeKey];

    v39 = [NSNumber numberWithUnsignedLongLong:a7];
    [(__CFDictionary *)Mutable setObject:v39 forKeyedSubscript:IDSDSessionReportDurationKey];

    [(__CFDictionary *)Mutable setObject:&off_100C3CC10 forKeyedSubscript:IDSDSessionReportResultCodeKey];
    v40 = [NSNumber numberWithInteger:a5];
    [(__CFDictionary *)Mutable setObject:v40 forKeyedSubscript:IDSDSessionReportTransportTypeKey];

    v41 = [NSNumber numberWithUnsignedInt:a6];
    [(__CFDictionary *)Mutable setObject:v41 forKeyedSubscript:IDSDSessionReportLocalInterfaceTypeKey];

    [(__CFDictionary *)Mutable setObject:v48 forKeyedSubscript:IDSDSessionReportReportingDataBlobKey];
    v42 = [NSNumber numberWithBool:a10];
    [(__CFDictionary *)Mutable setObject:v42 forKeyedSubscript:IDSDSessionReportIsInitiatorKey];

    [(__CFDictionary *)Mutable setObject:v49 forKeyedSubscript:IDSDSessionReportReportingSoftwareVersionKey];
    if (v54 == 402 && self->_timeBase)
    {
      v43 = +[NSDate date];
      [v43 timeIntervalSinceDate:self->_timeBase];
      v45 = [NSNumber numberWithDouble:v44 * 1000.0];
      [(__CFDictionary *)Mutable setObject:v45 forKeyedSubscript:IDSDSessionTimeDeltaKey];
    }

    [v35 addQREventForRTCReport:Mutable];
  }

  else
  {
    v46 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Invalid session. Skip AWD report", buf, 2u);
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

- (void)cleanUpCachedMappings:(id)a3
{
  v4 = a3;
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "cleanUpCachedMappings for group %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v6 = v4;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v6 = v4;
        _IDSLogV();
      }
    }
  }

  [(NSMutableDictionary *)self->_pushTokenToURIForGroup setObject:0 forKeyedSubscript:v4, v6];
}

- (void)invalidateSession:(id)a3 isExpiryPurging:(BOOL)a4
{
  v6 = a3;
  v7 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005AC630;
  block[3] = &unk_100BD8FC0;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(v7, block);
}

- (void)_invalidateSession:(id)a3 isExpiryPurging:(BOOL)a4
{
  v6 = a3;
  im_assert_primary_base_queue();
  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "invalidate all allocations for IDSSession ID %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v10 = v6;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v10 = v6;
        _IDSLogV();
      }
    }
  }

  [(IDSQuickRelayAllocator *)self _removeAllAllocationsForSessionID:v6, v10];
  if (!a4)
  {
    [(NSMutableSet *)self->_pendingRecipientsAcceptedSessions removeObject:v6];
    [(NSMutableDictionary *)self->_initiatorsAcceptedSessionsWithToken removeObjectForKey:v6];
  }

  v8 = [(NSMutableDictionary *)self->_requestIDToSession allKeysForObject:v6];
  [(NSMutableDictionary *)self->_requestIDToSession removeObjectsForKeys:v8];
  [(NSMutableDictionary *)self->_idsSessionIDToqrSessionID removeObjectForKey:v6];
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_sessionToRequestIDToAllocateTime removeObjectForKey:v6];
  os_unfair_lock_unlock(&self->_lock);
  v9 = [(NSMutableDictionary *)self->_allocateResponses objectForKey:v6];
  if (v9)
  {
    if (qword_100CBF0F0 != -1)
    {
      sub_10092A66C();
    }

    v9[2] = mach_absolute_time() * dword_100CBF0E8 / *algn_100CBF0EC / 0x3B9ACA00 + 1800;
    [(IDSQuickRelayAllocator *)self _startCleanupTimer];
  }
}

- (void)invalidateAllocation:(id)a3
{
  v4 = a3;
  v5 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "invalidateAllocation: called", buf, 2u);
  }

  v6 = im_primary_queue();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1005AC974;
  v8[3] = &unk_100BD6E40;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

- (void)_addAllocationForSession:(id)a3 allocation:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    goto LABEL_25;
  }

  v8 = +[IDSDSessionController sharedInstance];
  v9 = [v8 sessionWithUniqueID:v6];

  v10 = [v9 sharedSessionHasJoined];
  v11 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"NO";
    if (v10)
    {
      v12 = @"YES";
    }

    *buf = 138412802;
    v18 = v6;
    if (!v7)
    {
      v12 = @"invalid";
    }

    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Add allocation For Session: %@, _sharedSessionHasJoined=%@, %@", buf, 0x20u);
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

  os_unfair_lock_lock(&self->_lock);
  v13 = [(IDSQuickRelayAllocator *)self _findAllocationListForSessionID:v6];
  if (v13)
  {
    if (!v7)
    {
      goto LABEL_18;
    }

LABEL_16:
    if (v13)
    {
      CFArrayAppendValue(v13, v7);
    }

    goto LABEL_18;
  }

  v13 = objc_alloc_init(NSMutableArray);
  if (v7)
  {
    goto LABEL_16;
  }

LABEL_18:
  if (!self->_sessionToAllocations)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    sessionToAllocations = self->_sessionToAllocations;
    self->_sessionToAllocations = Mutable;
  }

  v16 = v13;
  if (v13)
  {
    CFDictionarySetValue(self->_sessionToAllocations, v6, v16);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092B22C();
  }

  os_unfair_lock_unlock(&self->_lock);
LABEL_25:
}

- (void)_discardAllocation:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [NSString alloc];
    v6 = [v4 sessionIDStr];
    v7 = [v5 initWithString:v6];

    os_unfair_lock_lock(&self->_lock);
    v8 = [(IDSQuickRelayAllocator *)self _findAllocationListForSessionID:v7];
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = v7;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Discard allocation For Session: %@, %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v12 = v7;
        v13 = v4;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v12 = v7;
          v13 = v4;
          _IDSLogV();
        }
      }
    }

    if (v8)
    {
      [v8 removeObject:v4];
      os_unfair_lock_unlock(&self->_lock);
      if (![v8 count])
      {
        v10 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v15 = v7;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "_invalidateSession: %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v12 = v7;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v12 = v7;
              _IDSLogV();
            }
          }
        }

        [(IDSQuickRelayAllocator *)self _invalidateSession:v7 isExpiryPurging:1, v12, v13];
      }
    }

    else
    {
      os_unfair_lock_unlock(&self->_lock);
      v11 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "invalid allocationList", buf, 2u);
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

- (void)_removeAllAllocationsForSessionID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v23 = self;
  key = v4;
  v25 = [(IDSQuickRelayAllocator *)self _findAllocationListForSessionID:v4];
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v42 = key;
    v43 = 2112;
    v44 = v25;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_removeAllAllocationsForSessionID: %@, %@", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v21 = key;
      v22 = v25;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v21 = key;
        v22 = v25;
        _IDSLogV();
      }
    }
  }

  v6 = v25;
  if (v25)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v25;
    v28 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v28)
    {
      v27 = *v36;
      v7 = kIDSQRAllocateKey_KeepAliveTimer;
      v8 = kIDSQRAllocateKey_RelaySessionID;
      do
      {
        v9 = 0;
        do
        {
          if (*v36 != v27)
          {
            v10 = v9;
            objc_enumerationMutation(obj);
            v9 = v10;
          }

          v11 = *(*(&v35 + 1) + 8 * v9);
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v29 = v9;
          v30 = v11;
          v12 = [v11 responses];
          v13 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v13)
          {
            v14 = *v32;
            do
            {
              for (i = 0; i != v13; i = i + 1)
              {
                if (*v32 != v14)
                {
                  objc_enumerationMutation(v12);
                }

                v16 = *(*(&v31 + 1) + 8 * i);
                v17 = [v16 objectForKey:{v7, v21}];
                if (v17)
                {
                  [v16 removeObjectForKey:v7];
                  dispatch_source_cancel(v17[1]);
                  v18 = OSLogHandleForTransportCategory();
                  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                  {
                    v19 = [v16 objectForKey:v8];
                    *buf = 138412290;
                    v42 = v19;
                    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "keepalive timer stopped for %@", buf, 0xCu);
                  }

                  if (os_log_shim_legacy_logging_enabled())
                  {
                    if (_IDSShouldLogTransport())
                    {
                      v21 = [v16 objectForKey:v8];
                      _IDSLogTransport();

                      if (_IDSShouldLog())
                      {
                        v21 = [v16 objectForKey:{v8, v21}];
                        _IDSLogV();
                      }
                    }
                  }
                }
              }

              v13 = [v12 countByEnumeratingWithState:&v31 objects:v39 count:16];
            }

            while (v13);
          }

          [v30 cancelAllocationTimeoutTimer];
          v9 = v29 + 1;
        }

        while ((v29 + 1) != v28);
        v28 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v28);
    }

    [obj removeAllObjects];
    v6 = v25;
    if (key)
    {
      sessionToAllocations = v23->_sessionToAllocations;
      if (sessionToAllocations)
      {
        CFDictionaryRemoveValue(sessionToAllocations, key);
        v6 = v25;
      }
    }
  }

  os_unfair_lock_unlock(&v23->_lock);
}

- (id)_filterSelfAllocationsForSessionID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(IDSQuickRelayAllocator *)self _findAllocationListForSessionID:v4];
  v6 = objc_alloc_init(NSMutableIndexSet);
  if ([v5 count])
  {
    v7 = 0;
    do
    {
      v8 = [v5 objectAtIndexedSubscript:v7];
      v9 = [v8 request];
      v10 = [v9 allocateType];
      v11 = [v10 intValue];

      if (v11 == 2)
      {
        [v6 addIndex:v7];
      }

      ++v7;
    }

    while ([v5 count] > v7);
  }

  v12 = [v5 mutableCopy];
  [v12 removeObjectsAtIndexes:v6];
  os_unfair_lock_unlock(&self->_lock);

  return v12;
}

- (id)_findAllocationListForSessionID:(id)a3
{
  Value = 0;
  if (a3)
  {
    sessionToAllocations = self->_sessionToAllocations;
    if (sessionToAllocations)
    {
      Value = CFDictionaryGetValue(sessionToAllocations, a3);
      v3 = vars8;
    }
  }

  return Value;
}

- (id)_findAllocationForSessionID:(id)a3 requestIDStr:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v28 = v6;
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "_findAllocationForSessionID:requestIDStr called {sessionID: %@, requestID: %@}", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_lock);
  v9 = [(IDSQuickRelayAllocator *)self _findAllocationListForSessionID:v6];
  v10 = v9;
  if (v9)
  {
    v21 = v6;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          v17 = [v16 requestIDStr];
          v18 = [v17 isEqualToIgnoringCase:v7];

          if (v18)
          {
            os_unfair_lock_unlock(&self->_lock);
            v19 = v16;
            v6 = v21;
            goto LABEL_17;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v6 = v21;
  }

  os_unfair_lock_unlock(&self->_lock);
  v11 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v28 = v6;
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "_findAllocationForSessionID, {sessionID: %@, requestID: %@} not found", buf, 0x16u);
  }

  v19 = 0;
LABEL_17:

  return v19;
}

- (id)_parseQuickRelayDefaults:(id)a3 gropuID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = IMGetDomainValueForKey();
  v9 = [v8 componentsSeparatedByString:@":"];
  if ([v9 count] == 2)
  {
    v10 = [v9 objectAtIndex:0];
    v64[0] = 0xAAAAAAAAAAAAAAAALL;
    v64[1] = 0xAAAAAAAAAAAAAAAALL;
    if (inet_pton(2, [v10 UTF8String], v64 + 4) == 1)
    {
      v54 = [[NSData alloc] initWithBytes:v64 + 4 length:4];
      v11 = [v9 objectAtIndex:1];
      v53 = [v11 integerValue];

      v12 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v61 = v10;
        v62 = 1024;
        LODWORD(v63) = v53;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "decoded relay-server-address %@:%u", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v47 = v10;
          v48 = v53;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v47 = v10;
            v48 = v53;
            _IDSLogV();
          }
        }
      }

      v52 = IMGetDomainValueForKey();
      v58 = [[NSData alloc] initWithBase64EncodedString:v52 options:0];
      if ([v58 length] == 16)
      {
        v13 = [NSUUID alloc];
        v14 = v58;
        v15 = [v13 initWithUUIDBytes:{objc_msgSend(v58, "bytes")}];
      }

      else
      {
        v18 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [v58 length];
          *buf = 134218240;
          v61 = v19;
          v62 = 2048;
          v63 = 16;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Warning: [decodedUUIDData length]: %lu != sizeof(uuid_t): %lu", buf, 0x16u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v47 = [v58 length];
            v48 = 16;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v47 = [v58 length];
              v48 = 16;
              _IDSLogV();
            }
          }
        }

        v15 = 0;
      }

      v49 = v15;
      v57 = [v15 UUIDString];
      v20 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v61 = v57;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "decoded base64 relay-session-id %@", buf, 0xCu);
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

      v51 = IMGetDomainValueForKey();
      v56 = [[NSData alloc] initWithBase64EncodedString:v51 options:0];
      v21 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v61 = v56;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "decoded base64 relay-session-token %@", buf, 0xCu);
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

      v50 = IMGetDomainValueForKey();
      v55 = [[NSData alloc] initWithBase64EncodedString:v50 options:0];
      v22 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v61 = v55;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "decoded base64 relay-session-key %@", buf, 0xCu);
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

      if (v54 && v53 && v57 && v56 && v55)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        ids_monotonic_time();
        v24 = [NSNumber numberWithDouble:?];
        if (v24)
        {
          CFDictionarySetValue(Mutable, kIDSQRAllocateKey_SessionAllocationTime, v24);
        }

        else
        {
          v26 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10092B2A8();
          }
        }

        v27 = +[NSUUID UUID];
        if (v27)
        {
          CFDictionarySetValue(Mutable, kIDSQRAllocateKey_RequestID, v27);
        }

        else
        {
          v28 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10092A71C();
          }
        }

        v29 = v6;
        if (v29)
        {
          CFDictionarySetValue(Mutable, kIDSQRAllocateKey_IDSSessionID, v29);
        }

        else
        {
          v30 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10092A7A4();
          }
        }

        v31 = v7;
        if (v31)
        {
          CFDictionarySetValue(Mutable, kIDSQRAllocateKey_GroupID, v31);
        }

        *buf = 769;
        buf[2] = 0;
        v32 = [NSData dataWithBytes:buf length:3];
        v33 = [(IDSQuickRelayAllocator *)self _getCombinedSoftwareID:v32];

        v34 = v33;
        if (v34)
        {
          CFDictionarySetValue(Mutable, kIDSQRAllocateKey_RelayCombinedSoftwareID, v34);
        }

        v35 = v54;
        CFDictionarySetValue(Mutable, kIDSQRAllocateKey_RelayAddress, v35);

        v36 = [NSNumber numberWithUnsignedShort:v53];
        if (v36)
        {
          CFDictionarySetValue(Mutable, kIDSQRAllocateKey_RelayPort, v36);
        }

        else
        {
          v37 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10092ABCC();
          }
        }

        v38 = v57;
        CFDictionarySetValue(Mutable, kIDSQRAllocateKey_RelaySessionID, v38);

        v39 = v56;
        CFDictionarySetValue(Mutable, kIDSQRAllocateKey_RelaySessionToken, v39);

        v40 = v55;
        CFDictionarySetValue(Mutable, kIDSQRAllocateKey_RelaySessionKey, v40);

        v41 = _IDSAllocateProtocolVersionNumber();
        if (v41)
        {
          CFDictionarySetValue(Mutable, kIDSQRAllocateKey_AllocateProtocolVersion, v41);
        }

        else
        {
          v42 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10092A9B8();
          }
        }

        v43 = kIDSQuickRelayPushTopic;
        if (v43)
        {
          CFDictionarySetValue(Mutable, kIDSQRAllocateKey_AppID, v43);
        }

        else
        {
          v44 = &_os_log_default;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10092B11C();
          }
        }

        v45 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *v59 = 0;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, " using preallocated tokens from user defaults", v59, 2u);
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

      else
      {
        v25 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Missing a defaults for hardcoded QR session info", buf, 2u);
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

        Mutable = 0;
      }

      v16 = Mutable;
    }

    else
    {
      v17 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "faied to get address in FixedQuickRelayServerAddress defaults", buf, 2u);
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

      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)enablePushHandler:(BOOL)a3
{
  v5 = im_primary_queue();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1005AE6EC;
  v6[3] = &unk_100BD7478;
  v7 = a3;
  v6[4] = self;
  dispatch_async(v5, v6);
}

- (unint64_t)getLocalParticipantIDForRelaySessionID:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_sessionToLocalParticipantID objectForKey:a3];
  v4 = [v3 unsignedLongLongValue];

  return v4;
}

- (void)handler:(id)a3 didReceiveMessage:(id)a4 forTopic:(id)a5 fromID:(id)a6 messageContext:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "handler:didReceiveMessage:forTopic:fromID:messageContext: called", buf, 2u);
  }

  im_assert_primary_base_queue();
  v18 = objc_opt_class();
  v19 = sub_10001B8C4(v18, v13, @"c");
  v20 = [v19 intValue];

  if (v20 == 255)
  {
    [(IDSQuickRelayAllocator *)self _processAllocationStatusResult:v13];
  }

  else if (v20 == 200)
  {
    [(IDSQuickRelayAllocator *)self _handleIncomingAllocateResponse:v13 isFromCache:0 requestOptions:0];
  }

  else
  {
    v21 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v13;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "received an unexpected message %@", buf, 0xCu);
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

- (void)handler:(id)a3 receivedOfflineMessagePendingForTopic:(id)a4 messageContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "receivedOfflineMessagePendingForTopic: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v12 = v8;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v12 = v8;
        _IDSLogV();
      }
    }
  }

  v11 = +[IDSServerStorageStateMachine sharedInstance];
  [v11 incomingStorageRequestForTopic:v8 primary:1 messageContext:v9 sendReasonPathID:26];
}

- (id)_getGroupID:(id)a3
{
  v3 = a3;
  v4 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_getGroupID called", buf, 2u);
  }

  v5 = [v3 request];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 groupID];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = [v3 responses];
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      v12 = kIDSQRAllocateKey_GroupID;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = [*(*(&v16 + 1) + 8 * i) objectForKey:v12];
          if (v14)
          {
            v7 = v14;

            goto LABEL_15;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
  }

LABEL_15:

  return v7;
}

- (id)_uuidFromNSStringToNSData:(id)a3
{
  v3 = a3;
  v4 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_uuidFromNSStringToNSData called", v8, 2u);
  }

  v5 = [[NSUUID alloc] initWithUUIDString:v3];
  v8[0] = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = 0xAAAAAAAAAAAAAAAALL;
  [v5 getUUIDBytes:v8];
  v6 = [NSData dataWithBytes:v8 length:16];

  return v6;
}

- (id)_getResponse:(id)a3 relaySessionID:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  v27 = v6;
  v28 = self;
  v29 = [(IDSQuickRelayAllocator *)self _findAllocationListForSessionID:v6];
  if ([v29 count])
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v29;
    v25 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v25)
    {
      v8 = *v35;
      v9 = kIDSQRAllocateKey_RelaySessionID;
      v24 = *v35;
      do
      {
        for (i = 0; i != v25; i = i + 1)
        {
          if (*v35 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v34 + 1) + 8 * i);
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v12 = [v11 responses];
          v13 = [v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v13)
          {
            v14 = *v31;
            while (2)
            {
              for (j = 0; j != v13; j = j + 1)
              {
                if (*v31 != v14)
                {
                  objc_enumerationMutation(v12);
                }

                v16 = *(*(&v30 + 1) + 8 * j);
                v17 = [v16 objectForKey:v9];
                v18 = [v7 isEqualToString:v17];

                if (v18)
                {
                  os_unfair_lock_unlock(&v28->_lock);
                  v20 = v16;

                  goto LABEL_32;
                }
              }

              v13 = [v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

          v8 = v24;
        }

        v25 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
        v8 = v24;
      }

      while (v25);
    }

    os_unfair_lock_unlock(&v28->_lock);
    v19 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v7;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "no response for %@", buf, 0xCu);
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

  else
  {
    v21 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      sessionToAllocations = self->_sessionToAllocations;
      *buf = 138412546;
      v41 = v6;
      v42 = 2112;
      v43 = sessionToAllocations;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Cannot find allocation for session %@, all allocations: %@", buf, 0x16u);
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

    os_unfair_lock_unlock(&self->_lock);
  }

  v20 = 0;
LABEL_32:

  return v20;
}

- (void)startKeepAliveTimer:(id)a3 relaySessionID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v23 = v6;
    v24 = 2112;
    v25 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "startKeepAliveTimer:relaySessionID called - {sessionID: %@, relaySessionID %@}", buf, 0x16u);
  }

  v9 = [(IDSQuickRelayAllocator *)self _getResponse:v6 relaySessionID:v7];
  v10 = v9;
  if (v9)
  {
    v11 = kIDSQRAllocateKey_KeepAliveTimer;
    v12 = [v9 objectForKey:kIDSQRAllocateKey_KeepAliveTimer];
    v13 = v12;
    if (v12)
    {
      dispatch_source_cancel(*(v12 + 8));
    }

    v14 = im_primary_queue();
    v15 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v14);

    v16 = dispatch_time(0, 1790000000000);
    dispatch_source_set_timer(v15, v16, 0x1A0C4506C00uLL, 0x5F5E100uLL);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1005AF7FC;
    handler[3] = &unk_100BD6E40;
    handler[4] = self;
    v17 = v10;
    v21 = v17;
    dispatch_source_set_event_handler(v15, handler);
    v18 = [[TimerWrapper alloc] initWithTimer:v15];
    [v17 setObject:v18 forKey:v11];

    dispatch_resume(v15);
    v19 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = v7;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "keepalive timer started for %@", buf, 0xCu);
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

- (void)stopKeepAliveTimer:(id)a3 relaySessionID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "stopKeepAliveTimer:relaySessionID: called {sessionID: %@, relaySessionID %@}", buf, 0x16u);
  }

  v9 = [(IDSQuickRelayAllocator *)self _getResponse:v6 relaySessionID:v7];
  v10 = v9;
  if (v9)
  {
    v11 = kIDSQRAllocateKey_KeepAliveTimer;
    v12 = [v9 objectForKey:kIDSQRAllocateKey_KeepAliveTimer];
    if (v12)
    {
      [v10 removeObjectForKey:v11];
      dispatch_source_cancel(v12[1]);
      v13 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v7;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "keepalive timer stopped for %@", buf, 0xCu);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_17;
      }

      if (!_IDSShouldLogTransport())
      {
        goto LABEL_17;
      }

      _IDSLogTransport();
      if ((_IDSShouldLog() & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v14 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = v7;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "keepalive timer not found for %@", buf, 0xCu);
      }

      if (!os_log_shim_legacy_logging_enabled())
      {
        goto LABEL_17;
      }

      if (!_IDSShouldLogTransport())
      {
        goto LABEL_17;
      }

      _IDSLogTransport();
      if ((_IDSShouldLog() & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    _IDSLogV();
LABEL_17:
  }
}

- (void)_cleanupResponses
{
  if (qword_100CBF0F0 != -1)
  {
    sub_10092B330();
  }

  v3 = mach_absolute_time();
  v5 = dword_100CBF0E8;
  v4 = *algn_100CBF0EC;
  v6 = [(NSMutableDictionary *)self->_allocateResponses count];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_10000AA54;
  v28 = sub_10000BC9C;
  v29 = 0;
  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v32 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "cleanup response count: %zu", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v17 = v6;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v17 = v6;
        _IDSLogV();
      }
    }
  }

  allocateResponses = self->_allocateResponses;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1005AFFDC;
  v23[3] = &unk_100BE0E90;
  v23[5] = &v24;
  v23[6] = v3 * v5 / v4 / 0x3B9ACA00;
  v23[4] = self;
  [(NSMutableDictionary *)allocateResponses enumerateKeysAndObjectsUsingBlock:v23, v17];
  if (v25[5])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v25[5];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v30 count:16];
    if (v10)
    {
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v32 = v13;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "clean up response for groupID %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v18 = v13;
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                v18 = v13;
                _IDSLogV();
              }
            }
          }

          [(NSMutableDictionary *)self->_allocateResponses removeObjectForKey:v13, v18];
        }

        v10 = [v9 countByEnumeratingWithState:&v19 objects:v30 count:16];
      }

      while (v10);
    }
  }

  if (![(NSMutableDictionary *)self->_allocateResponses count])
  {
    dispatch_source_cancel(self->_responseCleanupTimer);
    responseCleanupTimer = self->_responseCleanupTimer;
    self->_responseCleanupTimer = 0;

    v16 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "cleanup timer disabled", buf, 2u);
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

  _Block_object_dispose(&v24, 8);
}

- (void)_startCleanupTimer
{
  if (!self->_responseCleanupTimer)
  {
    v3 = im_primary_queue();
    v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
    responseCleanupTimer = self->_responseCleanupTimer;
    self->_responseCleanupTimer = v4;

    v6 = self->_responseCleanupTimer;
    v7 = dispatch_time(0, 300000000000);
    dispatch_source_set_timer(v6, v7, 0x45D964B800uLL, 0x5F5E100uLL);
    v8 = self->_responseCleanupTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1005B026C;
    handler[3] = &unk_100BD6ED0;
    handler[4] = self;
    dispatch_source_set_event_handler(v8, handler);
    dispatch_resume(self->_responseCleanupTimer);
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "cleanup timer started", v10, 2u);
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

- (id)_getQuickRelayIPPreference:(unint64_t)a3
{
  v3 = @"Unknown preference";
  if (a3 == 1)
  {
    v3 = @"Prefer IPV6";
  }

  if (a3)
  {
    return v3;
  }

  else
  {
    return @"Prefer IPV4";
  }
}

- (void)setRequestIDToSession:(id)a3 idsSessionID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_requestIDToSession)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    requestIDToSession = self->_requestIDToSession;
    self->_requestIDToSession = Mutable;
  }

  v10 = v7;
  if (v10)
  {
    CFDictionarySetValue(self->_requestIDToSession, v6, v10);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092B344();
  }
}

@end