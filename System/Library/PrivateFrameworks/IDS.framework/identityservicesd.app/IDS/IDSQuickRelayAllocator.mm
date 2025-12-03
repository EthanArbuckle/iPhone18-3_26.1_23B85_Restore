@interface IDSQuickRelayAllocator
+ (IDSQuickRelayAllocator)sharedInstance;
- (BOOL)_addConnectStatus:(id)status relaySessionID:(id)d previousTime:(unint64_t)time qrReason:(unsigned __int16)reason previousError:(unsigned __int16)error previousRelayIP:(unsigned int)p previousAccessToken:(id)token;
- (BOOL)_addResponseToCache:(id)cache sessionInfo:(id)info modifiedMessage:(id *)message;
- (BOOL)_hasSessionInfoRequiredKeys:(id)keys;
- (BOOL)_isDuplicateResponse:(id)response newResponse:(id)newResponse;
- (BOOL)_sendKeepAliveRequest:(id)request;
- (BOOL)_shouldUseCurrentResponse:(id)response cachedMessage:(id)message;
- (BOOL)_startQRConnectionWithDefaults:(id)defaults;
- (BOOL)hasParticipantID:(id)d participantID:(id)iD;
- (BOOL)invalidateLatestResponse:(id)response qrReason:(unsigned __int16)reason previousError:(unsigned __int16)error;
- (BOOL)isURIAvailabeInAllocateResponse:(id)response uri:(id)uri;
- (IDSQuickRelayAllocator)init;
- (id)_createSessionInfoFromResponsePayload:(id)payload;
- (id)_filterSelfAllocationsForSessionID:(id)d;
- (id)_findAllocationForSessionID:(id)d requestIDStr:(id)str;
- (id)_findAllocationListForSessionID:(id)d;
- (id)_findSessionWithID:(id)d;
- (id)_getCombinedSoftwareID:(id)d;
- (id)_getGroupID:(id)d;
- (id)_getParticipantIDFromPushToken:(id)token pushToken:(id)pushToken;
- (id)_getPushTokenFromParticipantID:(id)d participantID:(id)iD;
- (id)_getQuickRelayIPPreference:(unint64_t)preference;
- (id)_getResponse:(id)response relaySessionID:(id)d;
- (id)_getResponseForQRSessionID:(id)d sessionID:(id)iD index:(int64_t *)index;
- (id)_getResponseFromQRGroupID:(id)d;
- (id)_getSelfAllocationFromCache:(id)cache;
- (id)_getStatusMessageFromStatusCode:(unint64_t)code;
- (id)_getURIForRecipientFromResponse:(id)response;
- (id)_mergeParticipantID2PushTokenMapping:(id)mapping sourceResponse:(id)response mappingChange:(BOOL *)change;
- (id)_parseQuickRelayDefaults:(id)defaults gropuID:(id)d;
- (id)_queryPolicy;
- (id)_setupAllocation:(id)allocation fromURI:(id)i sessionID:(id)d isSessionIDRemoteDeviceID:(BOOL)iD options:(id)options prevConnectStatus:(id *)status requestUUID:(id)uID connectReadyHandler:(id)self0 withPreferredLocalInterface:(int)self1;
- (id)_setupNewAllocation:(id)allocation sessionID:(id)d isSessionIDRemoteDeviceID:(BOOL)iD fromIdentity:(id)identity fromURI:(id)i fromService:(id)service options:(id)options connectReadyHandler:(id)self0 withPreferredLocalInterface:(int)self1 forAdditionalAllocation:(BOOL)self2;
- (id)_tokenURIForToken:(id)token uri:(id)uri;
- (id)_translateParticipantIDtoUINT64ForResponse:(id)response;
- (id)_uriToParticipantID:(id)d;
- (id)_uuidFromNSStringToNSData:(id)data;
- (id)findAllocateResponseForSessionID:(id)d FromURI:(id)i;
- (id)getAdditionalAllocationForAddress:(id)address selfAddress:(unsigned int)selfAddress relaySessionID:(id)d allocateType:(int64_t)type qrReason:(unsigned __int16)reason previousTime:(unint64_t)time previousError:(unsigned __int16)error previousRelayIP:(unsigned int)self0 previousAccessToken:(id)self1 requestSelfAllocation:(BOOL)self2 isSessionIDRemoteDeviceID:(BOOL)self3 withPreferredRemoteInterface:(int)self4 withPreferredLocalInterface:(int)self5;
- (id)getAllocateResponse:(id)response groupID:(id)d;
- (id)getParticipantIDFromPushToken:(id)token pushToken:(id)pushToken;
- (id)getPushTokenForRelaySessionID:(id)d relaySessionID:(id)iD;
- (id)getPushTokenFromParticipantID:(id)d participantID:(id)iD;
- (id)getPushTokensFromParticipantIDs:(id)ds participantIDs:(id)iDs;
- (id)getRelaySessionIDForIDSSessionID:(id)d pushToken:(id)token;
- (id)getURIFromParticipantID:(id)d participantID:(id)iD;
- (id)setupNewAllocation:(id)allocation sessionID:(id)d fromIdentity:(id)identity fromURI:(id)i fromService:(id)service options:(id)options connectReadyHandler:(id)handler;
- (id)setupNewAllocationToDevice:(id)device options:(id)options connectReadyHandler:(id)handler;
- (int64_t)getServerProviderForIDSSessionID:(id)d;
- (unint64_t)getLocalParticipantIDForRelaySessionID:(id)d;
- (unsigned)_getErrorCodeFromAllocationStatus:(int)status;
- (void)_addAllocationForSession:(id)session allocation:(id)allocation;
- (void)_cleanupResponses;
- (void)_discardAllocation:(id)allocation;
- (void)_dispatchIncomingAllocateResponse:(id)response isFromCache:(BOOL)cache connectReadyHandler:(id)handler requestOptions:(id)options;
- (void)_handleIncomingAllocateResponse:(id)response isFromCache:(BOOL)cache requestOptions:(id)options;
- (void)_invalidateSession:(id)session isExpiryPurging:(BOOL)purging;
- (void)_notifyParticipantID2PushTokenMappingChange:(id)change;
- (void)_notifyURIToParticipantIDMappingChange:(id)change;
- (void)_processAllocationStatusResult:(id)result;
- (void)_processSelfAllocations:(id)allocations allocation:(id)allocation;
- (void)_removeAllAllocationsForSessionID:(id)d;
- (void)_sendAWDMetricsForAllocation:(id)allocation status:(int64_t)status hasRecipientAccepted:(BOOL)accepted;
- (void)_sendAllocateRequest:(id)request;
- (void)_sendIDQueryRequest:(id)request fromIdentity:(id)identity fromURI:(id)i fromService:(id)service completionBlock:(id)block;
- (void)_setResponseForQRGroupID:(id)d groupID:(id)iD;
- (void)_setSessionInfoRequiredKeys;
- (void)_startCleanupTimer;
- (void)_startQRConnectionForSession:(id)session isInitiatorsAcceptedSession:(BOOL)acceptedSession withLocalInterfacePreference:(int)preference;
- (void)_storeMappingFromPushTokenToURIs:(id)is fromID:(id)d service:(id)service cert:(id)cert forGroup:(id)group;
- (void)_triggerSymptomsWithType:(id)type subType:(id)subType subTypeContext:(id)context;
- (void)cleanUpCachedMappings:(id)mappings;
- (void)clearResponseFromQRGroupID:(id)d;
- (void)dealloc;
- (void)enablePushHandler:(BOOL)handler;
- (void)handler:(id)handler didReceiveMessage:(id)message forTopic:(id)topic fromID:(id)d messageContext:(id)context;
- (void)handler:(id)handler receivedOfflineMessagePendingForTopic:(id)topic messageContext:(id)context;
- (void)invalidateAllocation:(id)allocation;
- (void)invalidateSession:(id)session isExpiryPurging:(BOOL)purging;
- (void)reportAWDAllocatorEvent:(unsigned int)event relayProviderType:(int64_t)type transport:(int64_t)transport localRAT:(unsigned int)t duration:(unint64_t)duration idsSessionID:(id)d reportingDataBlob:(id)blob isInitiator:(BOOL)self0 serverSoftwareVersion:(id)self1;
- (void)requestAllocationForRecipient:(id)recipient;
- (void)setInitiatorsAcceptedToken:(id)token pushToken:(id)pushToken;
- (void)setRequestIDToSession:(id)session idsSessionID:(id)d;
- (void)startKeepAliveTimer:(id)timer relaySessionID:(id)d;
- (void)stopKeepAliveTimer:(id)timer relaySessionID:(id)d;
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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dealloc IDSQuickRelayAllocator %@.", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      selfCopy3 = self;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        selfCopy3 = self;
        _IDSLogV();
      }
    }
  }

  [(IDSPushHandler *)self->_pushHandler removeListener:self, selfCopy3];
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

- (BOOL)_sendKeepAliveRequest:(id)request
{
  requestCopy = request;
  v5 = [requestCopy objectForKey:kIDSQRAllocateKey_GroupID];
  if (v5)
  {
    v6 = [requestCopy objectForKey:kIDSQRAllocateKey_RelaySessionToken];
    v7 = [requestCopy objectForKey:kIDSQRAllocateKey_RelayAddress];
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
      v12 = [requestCopy objectForKey:kIDSQRAllocateKey_IDSSessionID];
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

        fromURI = [v14 fromURI];
        prefixedURI = [fromURI prefixedURI];
        [v16 setSenderURI:prefixedURI];

        getAppID = [v14 getAppID];
        [v16 setAppID:getAppID];

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
          v24 = [requestCopy objectForKey:kIDSQRAllocateKey_RelaySessionID];
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
            v30 = [requestCopy objectForKey:kIDSQRAllocateKey_RelaySessionID];
            _IDSLogTransport();

            if (_IDSShouldLog())
            {
              v31 = [requestCopy objectForKey:{v25, v5, v30}];
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
      v35 = requestCopy;
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

- (void)_sendAllocateRequest:(id)request
{
  requestCopy = request;
  objc_initWeak(&location, requestCopy);
  v4 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005950B8;
  block[3] = &unk_100BE0D60;
  v7 = requestCopy;
  v5 = requestCopy;
  objc_copyWeak(&v8, &location);
  dispatch_async(v4, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (id)_setupAllocation:(id)allocation fromURI:(id)i sessionID:(id)d isSessionIDRemoteDeviceID:(BOOL)iD options:(id)options prevConnectStatus:(id *)status requestUUID:(id)uID connectReadyHandler:(id)self0 withPreferredLocalInterface:(int)self1
{
  iDCopy = iD;
  allocationCopy = allocation;
  iCopy = i;
  dCopy = d;
  optionsCopy = options;
  uIDCopy = uID;
  handlerCopy = handler;
  v18 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [optionsCopy objectForKeyedSubscript:kIDSQRAllocateKey_IsLightweightParticipant];
    bOOLValue = [v19 BOOLValue];
    v21 = @"NO";
    if (bOOLValue)
    {
      v21 = @"YES";
    }

    *buf = 138412546;
    *&buf[4] = dCopy;
    *&buf[12] = 2112;
    *&buf[14] = v21;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "_setupAllocation:fromURI:sessionID:isSessionIDRemoteDeviceID:options:prevConnectStatus:requestUUID:connectReadyHandler: called {sessionID: %@} options[kIDSQRAllocateKey_IsLightweightParticipant] = %@", buf, 0x16u);
  }

  v22 = [[IDSQuickRelayAllocateMessage alloc] init:uIDCopy];
  v155 = [[NSUUID alloc] initWithUUIDString:dCopy];
  v170.i64[0] = 0xAAAAAAAAAAAAAAAALL;
  v170.i64[1] = 0xAAAAAAAAAAAAAAAALL;
  [v155 getUUIDBytes:&v170];
  if (!self->_requestIDToPreferredLocalInterface)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    requestIDToPreferredLocalInterface = self->_requestIDToPreferredLocalInterface;
    self->_requestIDToPreferredLocalInterface = Mutable;
  }

  v25 = [NSNumber numberWithInteger:interface];
  if (v25)
  {
    v26 = self->_requestIDToPreferredLocalInterface;
    requestIDStr = [v22 requestIDStr];
    CFDictionarySetValue(v26, requestIDStr, v25);
  }

  else
  {
    requestIDStr = &_os_log_default;
    v28 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092A404(v22);
    }
  }

  if (iDCopy)
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
        statusCopy2 = v155;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          statusCopy2 = v155;
          _IDSLogV();
        }
      }
    }

    memset(buf, 170, 16);
    v30 = +[IDSCurrentDevice sharedInstance];
    deviceIdentifier = [v30 deviceIdentifier];

    v32 = [[NSUUID alloc] initWithUUIDString:deviceIdentifier];
    [v32 getUUIDBytes:buf];

    v170 = veorq_s8(v170, *buf);
    v33 = [[NSUUID alloc] initWithUUIDBytes:&v170];
    uUIDString = [v33 UUIDString];

    dCopy = uUIDString;
  }

  v35 = [[NSData alloc] initWithBytes:&v170 length:16];
  [v22 setIDSSessionID:v35];

  [v22 setSenderURI:iCopy];
  v36 = [optionsCopy objectForKey:kIDSQRAllocateKey_AllocateType];
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
  userAgentString = [v38 userAgentString];
  [v22 setUserAgent:userAgentString];

  if ([v162 intValue] == 3)
  {
    v40 = [optionsCopy objectForKey:kIDSQRAllocateKey_GroupID];
    if (v40)
    {
      v41 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = status;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "shared session allocation, previous connect status: %p", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          statusCopy2 = status;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            statusCopy2 = status;
            _IDSLogV();
          }
        }
      }

      [v22 setIsSharedSession:{&off_100C3CB68, statusCopy2}];
      [v22 setGroupID:v40];
      v42 = kIDSQRAllocateKey_TestOptions;
      v43 = [optionsCopy objectForKey:kIDSQRAllocateKey_TestOptions];
      v44 = v43 == 0;

      if (!v44)
      {
        v45 = +[IDSFoundationLog QRAllocator];
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          requestIDStr2 = [v22 requestIDStr];
          v47 = [optionsCopy objectForKey:v42];
          *buf = 138412546;
          *&buf[4] = requestIDStr2;
          *&buf[12] = 2112;
          *&buf[14] = v47;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "_setupAllocation: set test option for request ID %@: %@", buf, 0x16u);
        }

        v48 = [optionsCopy objectForKey:v42];
        [v22 setTestOptions:v48];
      }

      if (status)
      {
        v49 = [[NSData alloc] initWithBytes:&status->var2 length:4];
        v50 = [[NSData alloc] initWithBytes:status->var5 length:status->var4];
        v51 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          var0 = status->var0;
          var1 = status->var1;
          var2 = status->var2;
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
            v146 = status->var2;
            v147 = v50;
            statusCopy2 = status->var0;
            v145 = status->var1;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v146 = status->var2;
              v147 = v50;
              statusCopy2 = status->var0;
              v145 = status->var1;
              _IDSLogV();
            }
          }
        }

        v147 = [NSNumber numberWithUnsignedShort:status->var0, statusCopy2, v145, v146, v147];
        [v22 setQrReason:v147];

        if (status->var1 != 0xFFFF)
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

      v58 = [optionsCopy objectForKey:kIDSQRAllocateKey_IsNewUPlusOneSession];
      bOOLValue2 = [v58 BOOLValue];

      if (bOOLValue2)
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
        *&buf[4] = optionsCopy;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "groupID not set for shared session allocation: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          statusCopy2 = optionsCopy;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            statusCopy2 = optionsCopy;
            _IDSLogV();
          }
        }
      }
    }

    v60 = [optionsCopy objectForKey:{kIDSQRAllocateKey_GroupMemberCount, statusCopy2}];
    if (v60)
    {
      [v22 setGroupMemberCount:v60];
    }
  }

  if (status)
  {
    free(status->var5);
    free(status);
  }

  if (!allocationCopy)
  {
    allocationCopy = objc_alloc_init(NSMutableArray);
  }

  if (!self->_requestIDToSession)
  {
    v61 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    requestIDToSession = self->_requestIDToSession;
    self->_requestIDToSession = v61;
  }

  value = dCopy;
  if (value)
  {
    v63 = self->_requestIDToSession;
    requestIDStr3 = [v22 requestIDStr];
    CFDictionarySetValue(v63, requestIDStr3, value);
  }

  else
  {
    requestIDStr3 = &_os_log_default;
    v65 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092A4A4(v22);
    }
  }

  v66 = [optionsCopy objectForKey:kIDSQRAllocateKey_QRForceExperiment];
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

  v156 = [optionsCopy objectForKey:kIDSQRAllocateKey_RelayAddress];
  v160 = [optionsCopy objectForKey:kIDSQRAllocateKey_RelaySessionToken];
  v159 = [optionsCopy objectForKey:kIDSQRAllocateKey_RelaySessionKey];
  if (v156 && v160 && v159)
  {
    [v22 setExistingRelayIP:v156];
    [v22 setExistingRelaySessionToken:v160];
    *&v68 = 0xAAAAAAAAAAAAAAAALL;
    *(&v68 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buf = v68;
    *&buf[16] = v68;
    v69 = v159;
    bytes = [v159 bytes];
    v71 = [v159 length];
    v72 = v160;
    CCHmac(2u, bytes, v71, [v160 bytes], objc_msgSend(v160, "length"), buf);
    v73 = [[NSData alloc] initWithBytes:buf length:32];
    [v22 setExistingRelaySignature:v73];
  }

  v74 = kIDSQRAllocateKey_SenderExternalAddress;
  v75 = [optionsCopy objectForKey:kIDSQRAllocateKey_SenderExternalAddress];

  if (v75)
  {
    v76 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
    {
      v77 = [optionsCopy objectForKey:v74];
      *buf = 138412290;
      *&buf[4] = v77;
      _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "request allocation for a specific address %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        statusCopy2 = [optionsCopy objectForKey:v74];
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          statusCopy2 = [optionsCopy objectForKey:{v74, statusCopy2}];
          _IDSLogV();
        }
      }
    }

    v78 = [optionsCopy objectForKey:{v74, statusCopy2}];
    [v22 setSenderExternalIP:v78];
  }

  v79 = kIDSQRAllocateKey_AppID;
  v80 = [optionsCopy objectForKey:kIDSQRAllocateKey_AppID];

  if (v80)
  {
    v81 = [optionsCopy objectForKey:v79];
    [v22 setAppID:v81];
  }

  else
  {
    [v22 setAppID:kIDSQuickRelayPushTopic];
  }

  v157 = [optionsCopy objectForKey:kIDSQRAllocateKey_ConversationID];
  if (v157)
  {
    [v22 setConversationID:v157];
  }

  v82 = [optionsCopy objectForKey:kIDSQRAllocateKey_IsLightweightParticipant];
  [v22 setIsLightweightParticipant:v82];

  if ([v162 intValue] != 3)
  {
    v83 = [optionsCopy objectForKey:kIDSQRAllocateKey_SelfAllocationCount];
    [v22 setSelfAllocationCount:v83];
  }

  v84 = [optionsCopy objectForKey:IDSSessionInvitationRetryCountKey];
  [v22 setInvitationRetryCount:v84];

  v85 = _IDSAllocateProtocolVersionNumber();
  [v22 setAllocateProtocolVersion:v85];

  [v22 setRecipients:allocationCopy];
  [v22 setWantsResponse:1];
  [v22 setTopic:kIDSQuickRelayPushTopic];
  v158 = [optionsCopy objectForKey:kIDSQRAllocateKey_PreferredRemoteInterface];
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
        statusCopy2 = GLUtilPreferredInterfaceToString();
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          [v158 intValue];
          statusCopy2 = GLUtilPreferredInterfaceToString();
          _IDSLogV();
        }
      }
    }

    [v22 setInfoAttribute:{v158, statusCopy2}];
  }

  v88 = +[IMLockdownManager sharedInstance];
  isInternalInstall = [v88 isInternalInstall];

  if (isInternalInstall)
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
          statusCopy2 = v92;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            statusCopy2 = v92;
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
    requestIDStr4 = [v22 requestIDStr];
    CFDictionarySetValue(v104, requestIDStr4, v103);
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
    v108 = [allocationCopy count];
    requestIDStr5 = [v22 requestIDStr];
    *buf = 138413058;
    *&buf[4] = value;
    *&buf[12] = 1024;
    *&buf[14] = v108;
    *&buf[18] = 2112;
    *&buf[20] = requestIDStr5;
    *&buf[28] = 2048;
    *&buf[30] = v98;
    _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "Send allocate request, sessionID: %@, recipient count: %u, requestID: %@, time: %.6f.", buf, 0x26u);
  }

  v110 = [v22 description];
  [allocationCopy count];
  v150 = v110;
  cut_dispatch_log_queue();
  v151 = +[NSDate date];
  [(IDSQuickRelayAllocator *)self _sendAllocateRequest:v22];
  v111 = [[QRAllocation alloc] initWithRequest:v22];
  if ([v162 intValue] == 3)
  {
    v112 = [optionsCopy objectForKey:kIDSQRAllocateKey_StreamInfoPublishedStreams];
    v113 = [optionsCopy objectForKey:kIDSQRAllocateKey_StreamInfoSubscribedStreams];
    v114 = [optionsCopy objectForKey:kIDSQRAllocateKey_StreamInfoGenerationCounter];
    v115 = [optionsCopy objectForKey:kIDSQRAllocateKey_StreamInfoMaxConcurrentStreams];
    v116 = [optionsCopy objectForKey:kIDSQRAllocateKey_IsJoinAllocation];
    -[QRAllocation setIsJoinAllocation:](v111, "setIsJoinAllocation:", [v116 BOOLValue]);

    v117 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
    {
      isJoinAllocation = [(QRAllocation *)v111 isJoinAllocation];
      v119 = @"NO";
      *buf = 138413570;
      *&buf[4] = value;
      *&buf[12] = 2112;
      if (isJoinAllocation)
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
      statusCopy2 = value;
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
        statusCopy2 = value;
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

  [(QRAllocation *)v111 setConnectReadyHandler:handlerCopy, statusCopy2, v145, v146, v147, v148, v149];
  [(IDSQuickRelayAllocator *)self _addAllocationForSession:value allocation:v111];
  v123 = [IDSQuickRelayMetric alloc];
  provider = [v22 provider];
  allocateProtocolVersion = [v22 allocateProtocolVersion];
  appID = [v22 appID];
  v127 = [v123 initWithType:&off_100C3CB38 eventSubType:&off_100C3CBF8 duration:0 resultCode:&off_100C3CC10 providerType:provider transportType:0 interfaceType:0 skeEnabled:0 isInitiator:&off_100C3CB68 protocolVersion:allocateProtocolVersion retryCount:0 serviceName:appID subServiceName:0 participantCount:0];

  v128 = +[IDSCoreAnalyticsLogger defaultLogger];
  [v128 logMetric:v127];

  _getIDSAWDLoggingInstance = [(IDSQuickRelayAllocator *)self _getIDSAWDLoggingInstance];
  provider2 = [v22 provider];
  allocateProtocolVersion2 = [v22 allocateProtocolVersion];
  appID2 = [v22 appID];
  [_getIDSAWDLoggingInstance IDSQuickRelayEventType:&off_100C3CB38 eventSubType:&off_100C3CBF8 duration:0 resultCode:&off_100C3CC10 providerType:provider2 transportType:0 interfaceType:0 skeEnabled:0 isInitiator:&off_100C3CB68 protocolVersion:allocateProtocolVersion2 retryCount:0 serviceName:appID2 subServiceName:0 participantCount:0];

  v133 = +[IDSDSessionController sharedInstance];
  sessionIDStr = [(QRAllocation *)v111 sessionIDStr];
  v135 = [v133 sessionWithUniqueID:sessionIDStr];

  if (v135)
  {
    v136 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v137 = [optionsCopy objectForKeyedSubscript:kIDSQRAllocateKey_TimeBase];
    if (v137)
    {
      [v151 timeIntervalSinceDate:v137];
      v139 = [NSNumber numberWithDouble:v138 * 1000.0];
      [(__CFDictionary *)v136 setObject:v139 forKeyedSubscript:IDSDSessionTimeDeltaKey];

      objc_storeStrong(&self->_timeBase, v137);
    }

    allocateProtocolVersion3 = [v22 allocateProtocolVersion];
    [(__CFDictionary *)v136 setObject:allocateProtocolVersion3 forKeyedSubscript:IDSDSessionReportQRVersionKey];

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

  requestIDStr6 = [v22 requestIDStr];

  return requestIDStr6;
}

- (id)setupNewAllocationToDevice:(id)device options:(id)options connectReadyHandler:(id)handler
{
  deviceCopy = device;
  Mutable = options;
  handlerCopy = handler;
  v11 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v46 = deviceCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "setupNewAllocationToDevice:options:connectReadyHandler: called {deviceID: %@}", buf, 0xCu);
  }

  im_assert_primary_base_queue();
  if ([(IDSQuickRelayAllocator *)self _startQRConnectionWithDefaults:deviceCopy])
  {
    v12 = 0;
    goto LABEL_42;
  }

  v13 = +[IDSDServiceController sharedInstance];
  v14 = IDSRegistrationServiceTypeCloudMessaging;
  v42 = [v13 serviceWithPushTopic:IDSRegistrationServiceTypeCloudMessaging];

  v15 = +[IDSDAccountController sharedInstance];
  v16 = [v15 appleIDAccountOnService:v42];

  v17 = [(__CFString *)deviceCopy isEqualToString:kIDSDefaultPairedDeviceID];
  if (v17)
  {
    [v16 defaultPairedDependentRegistration];
  }

  else
  {
    [v16 dependentRegistrationMatchingUUID:deviceCopy];
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

    if (handlerCopy)
    {
      v20 = [NSDictionary dictionaryWithObject:@"No device found" forKey:NSLocalizedDescriptionKey];
      valuea = [NSError errorWithDomain:@"QRAllocator" code:7002 userInfo:v20];

      handlerCopy[2](handlerCopy, valuea, 0);
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
    unprefixedURIStringsFromRegistration = [v16 unprefixedURIStringsFromRegistration];
    v25 = _IDSCopyCallerIDWithSelfMessagingHint();

    _bestGuessURI = [v25 _bestGuessURI];

    primaryRegistration = [v16 primaryRegistration];
    registrationCert = [primaryRegistration registrationCert];

    v27 = [NSMutableArray alloc];
    prefixedURIStringsFromRegistration = [v16 prefixedURIStringsFromRegistration];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100597BA4;
    v43[3] = &unk_100BE0D88;
    v44 = v16;
    v29 = [prefixedURIStringsFromRegistration __imArrayByApplyingBlock:v43];
    v30 = [v27 initWithArray:v29];

    v31 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [v42 identifier];
      *buf = 138412546;
      v46 = identifier;
      v47 = 2112;
      v48 = deviceCopy;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "setup allocation for %@ service to device %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        identifier2 = [v42 identifier];
        v36 = deviceCopy;
        _IDSLogTransport();

        if (_IDSShouldLog())
        {
          identifier2 = [v42 identifier];
          v36 = deviceCopy;
          _IDSLogV();
        }
      }
    }

    identifier3 = [v42 identifier];
    BYTE4(v37) = 0;
    LODWORD(v37) = 0;
    v12 = [(IDSQuickRelayAllocator *)self _setupNewAllocation:v30 sessionID:deviceCopy isSessionIDRemoteDeviceID:v17 ^ 1 fromIdentity:registrationCert fromURI:_bestGuessURI fromService:identifier3 options:Mutable connectReadyHandler:handlerCopy withPreferredLocalInterface:v37 forAdditionalAllocation:?];
  }

  else
  {
    _bestGuessURI = [NSString stringWithFormat:@"No push token for device %@", deviceCopy];
    v21 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v46 = _bestGuessURI;
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

    if (!handlerCopy)
    {
      v12 = 0;
      goto LABEL_40;
    }

    v22 = [NSDictionary dictionaryWithObject:_bestGuessURI forKey:NSLocalizedDescriptionKey];
    registrationCert = [NSError errorWithDomain:@"QRAllocator" code:7003 userInfo:v22];

    handlerCopy[2](handlerCopy, registrationCert, 0);
    v12 = 0;
  }

LABEL_40:
LABEL_41:

LABEL_42:

  return v12;
}

- (id)_getResponseFromQRGroupID:(id)d
{
  dCopy = d;
  v5 = [(NSMutableDictionary *)self->_allocateResponses objectForKey:dCopy];
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
      v11 = dCopy;
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

- (void)clearResponseFromQRGroupID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v5 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v8 = dCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "clear response for groupID %@", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v6 = dCopy;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v6 = dCopy;
          _IDSLogV();
        }
      }
    }

    [(NSMutableDictionary *)self->_allocateResponses removeObjectForKey:dCopy, v6];
  }
}

- (void)_setResponseForQRGroupID:(id)d groupID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  v8 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = iDCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "_setResponseForQRGroupID:groupID: called {groupID: %@}", &v13, 0xCu);
  }

  v9 = [(NSMutableDictionary *)self->_allocateResponses objectForKey:iDCopy];
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

  v12 = [[IDSAllocateResponseWrapper alloc] initWithResponse:dCopy cleanupTime:v11];

  [(NSMutableDictionary *)self->_allocateResponses setObject:v12 forKey:iDCopy];
}

- (id)findAllocateResponseForSessionID:(id)d FromURI:(id)i
{
  dCopy = d;
  iCopy = i;
  selfCopy = self;
  v8 = [(IDSQuickRelayAllocator *)self getAllocateResponse:dCopy groupID:dCopy];
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
      if ([v16 isEqualToIgnoringCase:iCopy])
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
      v84 = iCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Main cached allocation response contains fromURI: %@", buf, 0xCu);
    }

    v18 = kIDSQRAllocateKey_RecipientID;
    v19 = [v15 objectForKeyedSubscript:kIDSQRAllocateKey_RecipientID];
    unsignedLongLongValue = [v19 unsignedLongLongValue];

    if (unsignedLongLongValue)
    {
      v21 = [v8 objectForKeyedSubscript:v18];
      unsignedLongLongValue2 = [v21 unsignedLongLongValue];

      if (unsignedLongLongValue2 == unsignedLongLongValue)
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

  v24 = selfCopy;
  v25 = [(IDSQuickRelayAllocator *)selfCopy _findAllocationListForSessionID:dCopy];
  if (v25)
  {
    v61 = v9;
    v62 = v8;
    v66 = iCopy;
    v63 = dCopy;
    os_unfair_lock_lock(&selfCopy->_lock);
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
          responses = [v32 responses];
          v55 = [responses countByEnumeratingWithState:&v71 objects:v88 count:16];
          if (v55)
          {
            v34 = *v72;
            v60 = responses;
            v53 = *v72;
            v54 = v31;
            do
            {
              v35 = 0;
              do
              {
                if (*v72 != v34)
                {
                  objc_enumerationMutation(responses);
                }

                v56 = v35;
                v36 = *(*(&v71 + 1) + 8 * v35);
                v37 = [v36 objectForKeyedSubscript:v29];
                unsignedLongLongValue3 = [v37 unsignedLongLongValue];

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
                      unsignedLongLongValue4 = [v47 unsignedLongLongValue];

                      if (unsignedLongLongValue3 == unsignedLongLongValue4 && [v46 isEqualToIgnoringCase:v66])
                      {
                        v49 = +[IDSFoundationLog QRAllocator];
                        iCopy = v66;
                        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412546;
                          v84 = v66;
                          v85 = 2048;
                          v86 = unsignedLongLongValue3;
                          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Current cached allocation response contains fromURI: %@ and is for the corresponding participant ID %llu", buf, 0x16u);
                        }

                        os_unfair_lock_unlock(&selfCopy->_lock);
                        v23 = v57;

                        v8 = v62;
                        dCopy = v63;
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
                v24 = selfCopy;
                v26 = v58;
                v25 = v59;
                responses = v60;
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
    dCopy = v63;
    iCopy = v66;
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

- (id)getAllocateResponse:(id)response groupID:(id)d
{
  responseCopy = response;
  dCopy = d;
  v8 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "getAllocateResponse:groupID called {groupID: %@}", buf, 0xCu);
  }

  v9 = [(IDSQuickRelayAllocator *)self _parseQuickRelayDefaults:responseCopy gropuID:dCopy];
  if (v9)
  {
    v10 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = dCopy;
      v16 = 2112;
      v17 = responseCopy;
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
    v12 = [(IDSQuickRelayAllocator *)self _getResponseFromQRGroupID:dCopy];
    os_unfair_lock_unlock(&self->_lock);
    v11 = [(IDSQuickRelayAllocator *)self _createSessionInfoFromResponsePayload:v12];
  }

  return v11;
}

- (BOOL)_shouldUseCurrentResponse:(id)response cachedMessage:(id)message
{
  responseCopy = response;
  messageCopy = message;
  v7 = objc_opt_class();
  v8 = kIDSQRAllocateKey_SessionAllocationTime;
  v9 = sub_10001B8C4(v7, messageCopy, kIDSQRAllocateKey_SessionAllocationTime);
  v10 = objc_opt_class();
  v11 = sub_10001B8C4(v10, responseCopy, v8);
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
    unsignedLongLongValue = [v9 unsignedLongLongValue];
    unsignedLongLongValue2 = [v12 unsignedLongLongValue];
    if (unsignedLongLongValue == unsignedLongLongValue2)
    {
      v18 = kIDSQRAllocateKey_RelaySessionID;
      v19 = [messageCopy objectForKey:kIDSQRAllocateKey_RelaySessionID];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = [messageCopy objectForKey:v18];
        v21 = [NSData _IDSDataFromBase64String:v20];
      }

      else
      {
        v20 = [messageCopy objectForKey:v18];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v22 = 0;
LABEL_21:

          v23 = [responseCopy objectForKey:v18];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = [responseCopy objectForKey:v18];
            v25 = [NSData _IDSDataFromBase64String:v24];
          }

          else
          {
            v24 = [responseCopy objectForKey:v18];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v26 = 0;
              goto LABEL_27;
            }

            v25 = [responseCopy objectForKey:v18];
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
              v61 = [messageCopy objectForKey:kIDSQRAllocateKey_RelayAddress];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v31 = [messageCopy objectForKey:v30];
                v60 = [NSData _IDSDataFromBase64String:v31];
              }

              else
              {
                v31 = [messageCopy objectForKey:v30];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v60 = [messageCopy objectForKey:v30];
                }

                else
                {
                  v60 = 0;
                }
              }

              v62 = [responseCopy objectForKey:v30];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v36 = [responseCopy objectForKey:v30];
                v37 = [NSData _IDSDataFromBase64String:v36];
              }

              else
              {
                v36 = [responseCopy objectForKey:v30];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v38 = 0;
                  goto LABEL_66;
                }

                v37 = [responseCopy objectForKey:v30];
              }

              v38 = v37;
LABEL_66:

              v39 = v60;
              if ([v60 isEqualToData:v38])
              {
                v56 = v38;
                v40 = kIDSQRAllocateKey_RelayAddressIPv6;
                v63 = [messageCopy objectForKey:kIDSQRAllocateKey_RelayAddressIPv6];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v41 = [messageCopy objectForKey:v40];
                  v58 = [NSData _IDSDataFromBase64String:v41];
                }

                else
                {
                  v41 = [messageCopy objectForKey:v40];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v58 = [messageCopy objectForKey:v40];
                  }

                  else
                  {
                    v58 = 0;
                  }
                }

                v64 = [responseCopy objectForKey:v40];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v42 = [responseCopy objectForKey:v40];
                  v57 = [NSData _IDSDataFromBase64String:v42];
                }

                else
                {
                  v42 = [responseCopy objectForKey:v40];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v57 = [responseCopy objectForKey:v40];
                  }

                  else
                  {
                    v57 = 0;
                  }
                }

                if ([v58 isEqualToData:v57] && (v43 = objc_opt_class(), v44 = kIDSQRAllocateKey_RelayPort, sub_10001B8C4(v43, messageCopy, kIDSQRAllocateKey_RelayPort), v45 = objc_claimAutoreleasedReturnValue(), v46 = objc_msgSend(v45, "unsignedShortValue"), v45, v47 = objc_opt_class(), sub_10001B8C4(v47, responseCopy, v44), v48 = objc_claimAutoreleasedReturnValue(), LODWORD(v44) = objc_msgSend(v48, "unsignedShortValue"), v48, v46 == v44))
                {
                  bytes = [v22 bytes];
                  bytes2 = [v26 bytes];
                  v29 = v59;
                  v38 = v56;
                  v51 = bswap64(*bytes);
                  v52 = bswap64(*bytes2);
                  if (v51 == v52 && (v51 = bswap64(bytes[1]), v52 = bswap64(bytes2[1]), v51 == v52))
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

        v21 = [messageCopy objectForKey:v18];
      }

      v22 = v21;
      goto LABEL_21;
    }

    LOBYTE(v15) = unsignedLongLongValue < unsignedLongLongValue2;
  }

LABEL_49:

  return v15;
}

- (id)_getResponseForQRSessionID:(id)d sessionID:(id)iD index:(int64_t *)index
{
  dCopy = d;
  iDCopy = iD;
  v9 = [dCopy count];
  if (v9 - 1 < 0)
  {
LABEL_5:
    v15 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = iDCopy;
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
      v12 = [dCopy objectAtIndex:--v10];
      v13 = [v12 objectForKey:v11];
      v14 = [iDCopy isEqualToData:v13];

      if (v14)
      {
        break;
      }

      if (v10 <= 0)
      {
        goto LABEL_5;
      }
    }

    if (index)
    {
      *index = v10;
    }
  }

  return v12;
}

- (BOOL)hasParticipantID:(id)d participantID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  if (dCopy)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = dCopy;
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
            unsignedLongLongValue = [iDCopy unsignedLongLongValue];
            if (unsignedLongLongValue == [v13 unsignedLongLongValue])
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

- (id)_mergeParticipantID2PushTokenMapping:(id)mapping sourceResponse:(id)response mappingChange:(BOOL *)change
{
  mappingCopy = mapping;
  responseCopy = response;
  v7 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_mergeParticipantID2PushTokenMapping:destinationResponse:sourceResponse:mappingChange: called", buf, 2u);
  }

  v33 = kIDSQRAllocateKey_Allocations;
  v8 = [mappingCopy objectForKey:?];
  v9 = [responseCopy objectForKey:v33];
  v31 = v9;
  *change = 0;
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
                  v21 = mappingCopy;
                }

                else
                {
                  v22 = [mappingCopy mutableCopy];

                  v21 = v22;
                }

                mappingCopy = v21;
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
                  v24 = [mappingCopy mutableCopy];

                  mappingCopy = v24;
                }

                v23 = [v8 mutableCopy];

                [mappingCopy setObject:v23 forKey:v33];
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
        *change = 1;
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
      v44[0] = responseCopy;
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

  v27 = mappingCopy;

  return mappingCopy;
}

- (void)_notifyParticipantID2PushTokenMappingChange:(id)change
{
  changeCopy = change;
  v5 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_notifyParticipantID2PushTokenMappingChange: called", buf, 2u);
  }

  v6 = kIDSQRAllocateKey_IDSSessionID;
  v7 = [changeCopy objectForKey:kIDSQRAllocateKey_IDSSessionID];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [changeCopy objectForKey:v6];
    v9 = [NSData _IDSDataFromBase64String:v8];
    v10 = sub_100592F04(v9);
  }

  else
  {
    v8 = [changeCopy objectForKey:v6];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [changeCopy objectForKey:v6];
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
    [v12 onParticipantID2PushTokenMappingChange:changeCopy];
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

- (void)_notifyURIToParticipantIDMappingChange:(id)change
{
  changeCopy = change;
  v5 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = IDSLoggableDescriptionForObjectOnService();
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_notifyURIToParticipantIDMappingChange: %@", buf, 0xCu);
  }

  v7 = kIDSQRAllocateKey_IDSSessionID;
  v8 = [changeCopy objectForKey:kIDSQRAllocateKey_IDSSessionID];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [changeCopy objectForKey:v7];
    v10 = [NSData _IDSDataFromBase64String:v9];
    v11 = sub_100592F04(v10);
  }

  else
  {
    v9 = [changeCopy objectForKey:v7];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [changeCopy objectForKey:v7];
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
    v14 = [(IDSQuickRelayAllocator *)self _createSessionInfoFromResponsePayload:changeCopy];
    [v13 onURI2ParticipantIDMappingChange:v14 allocateResponse:changeCopy];
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

- (BOOL)_addResponseToCache:(id)cache sessionInfo:(id)info modifiedMessage:(id *)message
{
  cacheCopy = cache;
  infoCopy = info;
  v9 = cacheCopy;
  *message = cacheCopy;
  v10 = objc_opt_class();
  v11 = sub_10001B8C4(v10, cacheCopy, kIDSQRAllocateKey_GroupID);
  if (v11)
  {
    v12 = kIDSQRAllocateKey_RelaySessionID;
    v13 = [cacheCopy objectForKey:kIDSQRAllocateKey_RelaySessionID];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [cacheCopy objectForKey:v12];
      v78 = [NSData _IDSDataFromBase64String:v14];
    }

    else
    {
      v14 = [cacheCopy objectForKey:v12];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v78 = [cacheCopy objectForKey:v12];
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
        v83 = cacheCopy;
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
      [(IDSQuickRelayAllocator *)self _setResponseForQRGroupID:cacheCopy groupID:v11];
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
        if ([(IDSQuickRelayAllocator *)self _shouldUseCurrentResponse:cacheCopy cachedMessage:v17])
        {
          v47 = [(IDSQuickRelayAllocator *)self _mergeParticipantID2PushTokenMapping:cacheCopy sourceResponse:v17 mappingChange:&v81];

          v48 = v47;
          *message = v47;
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

        v50 = [(IDSQuickRelayAllocator *)self _mergeParticipantID2PushTokenMapping:v17 sourceResponse:cacheCopy mappingChange:&v81];
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
        v47 = cacheCopy;
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
      v87 = cacheCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Duplicated responses for sessionID: %@, %@, %@", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v72 = v17;
        v73 = cacheCopy;
        v70 = v78;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v72 = v17;
          v73 = cacheCopy;
          v70 = v78;
          _IDSLogV();
        }
      }
    }

    v23 = kIDSQRAllocateKey_RecipientID;
    v24 = [cacheCopy objectForKeyedSubscript:{kIDSQRAllocateKey_RecipientID, v70, v72, v73}];
    unsignedLongLongValue = [v24 unsignedLongLongValue];
    v26 = [v17 objectForKeyedSubscript:v23];
    LODWORD(unsignedLongLongValue) = unsignedLongLongValue == [v26 unsignedLongLongValue];

    if (unsignedLongLongValue)
    {
      fromURI = [cacheCopy objectForKey:kIDSQRAllocateKey_RelayExpiryTimestamp];
      v75 = fromURI;
      if (fromURI)
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

        [(NSMutableDictionary *)self->_duplicateAllocateResponses setObject:cacheCopy forKey:v11];
        unsignedLongLongValue2 = [v75 unsignedLongLongValue];
        v37 = time(0);
        v38 = im_primary_queue();
        source = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v38);

        v39 = dispatch_time(0, 1000000 * &unsignedLongLongValue2[-1000 * v37 - 10]);
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
        fromURI = v75;
      }
    }

    else
    {
      if (!v76)
      {
        goto LABEL_92;
      }

      fromURI = [v76 fromURI];
      v75 = fromURI;
      if (fromURI)
      {
        source = [fromURI prefixedURI];
        v52 = [(IDSQuickRelayAllocator *)self _getURIForRecipientFromResponse:cacheCopy];
        if ([source isEqualToString:v52])
        {
          v47 = [(IDSQuickRelayAllocator *)self _mergeParticipantID2PushTokenMapping:cacheCopy sourceResponse:v17 mappingChange:&v81];

          v53 = v47;
          *message = v47;
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

          v47 = [(IDSQuickRelayAllocator *)self _mergeParticipantID2PushTokenMapping:cacheCopy sourceResponse:v17 mappingChange:&v81, v71];

          v61 = v47;
          *message = v47;
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

        v63 = [(IDSQuickRelayAllocator *)self _mergeParticipantID2PushTokenMapping:v17 sourceResponse:cacheCopy mappingChange:&v81];
        if (v63 != v17)
        {
          [(IDSQuickRelayAllocator *)self _setResponseForQRGroupID:v63 groupID:v11];
        }

        if (v81 == 1)
        {
          [(IDSQuickRelayAllocator *)self _notifyParticipantID2PushTokenMappingChange:v63];
          [(IDSQuickRelayAllocator *)self _notifyURIToParticipantIDMappingChange:v63];
        }

        v64 = [infoCopy objectForKey:kIDSQRAllocateKey_IDSSessionID];
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

              v47 = cacheCopy;
LABEL_146:

LABEL_147:
              cacheCopy = v47;
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
            v83 = infoCopy;
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
    v83 = cacheCopy;
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

- (id)_getURIForRecipientFromResponse:(id)response
{
  responseCopy = response;
  v4 = kIDSQRAllocateKey_RecipientID;
  v5 = [responseCopy objectForKeyedSubscript:kIDSQRAllocateKey_RecipientID];
  unsignedLongLongValue = [v5 unsignedLongLongValue];

  [responseCopy objectForKeyedSubscript:kIDSQRAllocateKey_Allocations];
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
        unsignedLongLongValue2 = [v13 unsignedLongLongValue];

        if (unsignedLongLongValue == unsignedLongLongValue2)
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

- (BOOL)_addConnectStatus:(id)status relaySessionID:(id)d previousTime:(unint64_t)time qrReason:(unsigned __int16)reason previousError:(unsigned __int16)error previousRelayIP:(unsigned int)p previousAccessToken:(id)token
{
  v9 = *&p;
  errorCopy = error;
  reasonCopy = reason;
  statusCopy = status;
  dCopy = d;
  tokenCopy = token;
  v17 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413570;
    v38 = statusCopy;
    v39 = 2112;
    v40 = dCopy;
    v41 = 1024;
    v42 = reasonCopy;
    v43 = 1024;
    v44 = errorCopy;
    v45 = 1024;
    v46 = v9;
    v47 = 2112;
    v48 = tokenCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "addConnectStatus, groupID: %@, relaySessionID: %@i, data: %u %u %u %@", buf, 0x32u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v34 = v9;
      v35 = tokenCopy;
      v32 = reasonCopy;
      v33 = errorCopy;
      v30 = statusCopy;
      v31 = dCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v34 = v9;
        v35 = tokenCopy;
        v32 = reasonCopy;
        v33 = errorCopy;
        v30 = statusCopy;
        v31 = dCopy;
        _IDSLogV();
      }
    }
  }

  v18 = [(IDSQuickRelayAllocator *)self _getResponseFromQRGroupID:statusCopy, v30, v31, v32, v33, v34, v35];
  v19 = v18;
  if (!v18)
  {
    v25 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = statusCopy;
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
  v21 = [dCopy isEqualToData:v20];

  if ((v21 & 1) == 0)
  {
    v26 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v38 = dCopy;
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

  v22 = sub_10059BFE4(time, reasonCopy, errorCopy, v9, tokenCopy);
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
    [(IDSQuickRelayAllocator *)self _setResponseForQRGroupID:v24 groupID:statusCopy];
  }

  v28 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = dCopy;
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

- (BOOL)invalidateLatestResponse:(id)response qrReason:(unsigned __int16)reason previousError:(unsigned __int16)error
{
  errorCopy = error;
  reasonCopy = reason;
  responseCopy = response;
  v9 = +[IMLockdownManager sharedInstance];
  isInternalInstall = [v9 isInternalInstall];

  if (isInternalInstall)
  {
    v11 = [(IDSQuickRelayAllocator *)self _getResponseFromQRGroupID:responseCopy];
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
      v16 = [(IDSQuickRelayAllocator *)self _addConnectStatus:responseCopy relaySessionID:v13 previousTime:v20 qrReason:reasonCopy previousError:errorCopy previousRelayIP:*buf previousAccessToken:v18];
    }

    else
    {
      v17 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v23 = responseCopy;
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

- (void)_dispatchIncomingAllocateResponse:(id)response isFromCache:(BOOL)cache connectReadyHandler:(id)handler requestOptions:(id)options
{
  responseCopy = response;
  handlerCopy = handler;
  optionsCopy = options;
  v13 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10059C558;
  block[3] = &unk_100BD9968;
  block[4] = self;
  v18 = responseCopy;
  cacheCopy = cache;
  v19 = optionsCopy;
  v20 = handlerCopy;
  v14 = handlerCopy;
  v15 = optionsCopy;
  v16 = responseCopy;
  dispatch_async(v13, block);
}

- (id)_getSelfAllocationFromCache:(id)cache
{
  cacheCopy = cache;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(IDSQuickRelayAllocator *)self _findAllocationListForSessionID:cacheCopy];
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

          getAllocation = [*(*(&v17 + 1) + 8 * i) getAllocation];
          if (getAllocation)
          {
            v13 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v22 = getAllocation;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "self allocation in cache: %@", buf, 0xCu);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                v16 = getAllocation;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  v16 = getAllocation;
                  _IDSLogV();
                }
              }
            }

            [(IDSQuickRelayAllocator *)self _dispatchIncomingAllocateResponse:getAllocation isFromCache:1 connectReadyHandler:0 requestOptions:0, v16];
            os_unfair_lock_unlock(&self->_lock);
            v14 = [getAllocation objectForKey:kIDSQRAllocateKey_RequestID];
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
    v22 = cacheCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_getSelfAllocationFromCache: allocation is nil {sessinID: %@}", buf, 0xCu);
  }

  v12 = 0;
LABEL_21:

  return v12;
}

- (void)_sendIDQueryRequest:(id)request fromIdentity:(id)identity fromURI:(id)i fromService:(id)service completionBlock:(id)block
{
  requestCopy = request;
  identityCopy = identity;
  iCopy = i;
  serviceCopy = service;
  blockCopy = block;
  _queryPolicy = [(IDSQuickRelayAllocator *)self _queryPolicy];
  v18 = [_queryPolicy shouldQueryOnEveryQRAllocationForServiceIdentifier:serviceCopy];

  v19 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = @"NO";
    *buf = 138413314;
    v25 = serviceCopy;
    if (v18)
    {
      v20 = @"YES";
    }

    v26 = 2112;
    v27 = v20;
    v28 = 2112;
    v29 = iCopy;
    v30 = 2048;
    v31 = identityCopy;
    v32 = 2112;
    v33 = requestCopy;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "_sendIDQueryRequest:fromIdentity:fromURI:fromService:completionBlock: called { fromService: %@, shouldForceQuery: %@, fromURI: %@, fromIdentity: %p, recipientIDs: %@ }", buf, 0x34u);
  }

  _peerIDManager = [(IDSQuickRelayAllocator *)self _peerIDManager];
  v22 = [IDSURI URIWithPrefixedURI:iCopy withServiceLoggingHint:serviceCopy];
  LOBYTE(v23) = 0;
  [_peerIDManager startQueryForURIs:requestCopy fromIdentity:identityCopy fromURI:v22 fromService:serviceCopy forSending:1 forceToServer:v18 clientRequestedForceQuery:v23 reason:@"QRAlloc" completionBlock:blockCopy];
}

- (id)_setupNewAllocation:(id)allocation sessionID:(id)d isSessionIDRemoteDeviceID:(BOOL)iD fromIdentity:(id)identity fromURI:(id)i fromService:(id)service options:(id)options connectReadyHandler:(id)self0 withPreferredLocalInterface:(int)self1 forAdditionalAllocation:(BOOL)self2
{
  iDCopy = iD;
  allocationCopy = allocation;
  dCopy = d;
  identityCopy = identity;
  iCopy = i;
  serviceCopy = service;
  optionsCopy = options;
  handlerCopy = handler;
  v18 = [optionsCopy objectForKeyedSubscript:kIDSQRAllocateKey_IsLightweightParticipant];
  bOOLValue = [v18 BOOLValue];

  v20 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = @"NO";
    *buf = 138412802;
    v118 = dCopy;
    v119 = 2112;
    if (bOOLValue)
    {
      v21 = @"YES";
    }

    v120 = v21;
    v121 = 2112;
    v122 = iCopy;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "_setupNewAllocation: called {sessionID: %@}, isLightweightParticipant = %@, fromURI: %@", buf, 0x20u);
  }

  im_assert_primary_base_queue();
  if (!identityCopy || !iCopy)
  {
    v22 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v118 = serviceCopy;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Unable to setup QR allocation for unregistered account for %@ service", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v88 = serviceCopy;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v88 = serviceCopy;
          _IDSLogV();
        }
      }
    }
  }

  if (!dCopy)
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

  if ([(IDSQuickRelayAllocator *)self _startQRConnectionWithDefaults:dCopy, v88])
  {
    v24 = [(IDSQuickRelayAllocator *)self _findSessionWithID:dCopy];
    v25 = v24;
    if (v24 && additionalAllocation)
    {
      [v24 setHasPendingAllocation:0 forIDSSession:dCopy];
    }

    goto LABEL_25;
  }

  v27 = kIDSQRAllocateKey_AllocateType;
  v28 = [optionsCopy objectForKey:?];
  if ([v28 intValue] == 3)
  {
    v29 = [optionsCopy objectForKey:kIDSQRAllocateKey_TestOptions];
    v30 = [v29 isEqualToString:IDSGroupSessionForceQRSession];

    if (v30)
    {
      v96 = 0;
      goto LABEL_90;
    }

    v28 = [optionsCopy objectForKey:kIDSQRAllocateKey_GroupID];
    if (!v28)
    {
      v32 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v118 = optionsCopy;
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
      v41 = [optionsCopy objectForKey:kIDSQRAllocateKey_AllocateRequestForUnauthorizedUser];
      bOOLValue2 = [v41 BOOLValue];

      if (theDict)
      {
        v43 = [(IDSQuickRelayAllocator *)self _getURIForRecipientFromResponse:?];
        v44 = v43;
        if (iCopy)
        {
          v45 = [v43 isEqualToString:iCopy];
        }

        else
        {
          v45 = 1;
        }

        if (!(bOOLValue2 & 1 | ((v45 & 1) == 0)))
        {
          v96 = [(__CFDictionary *)theDict objectForKey:kIDSQRAllocateKey_QRConnectStatus];
          v74 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v118 = dCopy;
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
              v89 = dCopy;
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                v90 = theDict;
                v91 = v96;
                v89 = dCopy;
                _IDSLogV();
              }
            }
          }

          [(IDSQuickRelayAllocator *)self _storeMappingFromPushTokenToURIs:allocationCopy fromID:iCopy service:serviceCopy cert:identityCopy forGroup:v28, v89, v90, v91];
          if (v96)
          {
            v75 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v118 = dCopy;
              v119 = 2112;
              v120 = v96;
              _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "cached allocation response has issue: %@ %@", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                v89 = dCopy;
                v90 = v96;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  v89 = dCopy;
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

            unsignedLongLongValue = [v76 unsignedLongLongValue];
            v79 = 1000 * time(0);
            v80 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218240;
              v118 = unsignedLongLongValue;
              v119 = 2048;
              v120 = v79;
              _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "Expired time: %llu, current time: %llu", buf, 0x16u);
            }

            if (os_log_shim_legacy_logging_enabled())
            {
              if (_IDSShouldLogTransport())
              {
                v89 = unsignedLongLongValue;
                v90 = v79;
                _IDSLogTransport();
                if (_IDSShouldLog())
                {
                  v89 = unsignedLongLongValue;
                  v90 = v79;
                  _IDSLogV();
                }
              }
            }

            if (v79 + 10 < unsignedLongLongValue)
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
            if (v93 && (!iCopy || [v92 isEqualToString:iCopy]))
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
              uUIDString = 0;
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
        if (bOOLValue2)
        {
          v48 = @"YES";
        }

        else
        {
          v48 = @"NO";
        }

        *buf = 138412802;
        v118 = dCopy;
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
        v49 = bOOLValue2 ? @"YES" : @"NO";
        v50 = v45 ? @"YES" : @"NO";
        v90 = v49;
        v91 = v50;
        v89 = dCopy;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v90 = v49;
          v91 = v50;
          v89 = dCopy;
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

        v52 = [optionsCopy mutableCopy];

        optionsCopy = v52;
      }

      v53 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [allocationCopy count]);
      [optionsCopy setObject:v53 forKey:kIDSQRAllocateKey_GroupMemberCount];

      goto LABEL_89;
    }

    v33 = [(NSMutableDictionary *)self->_sessionIDToURIToResponsePayload objectForKey:dCopy];
    v34 = v33;
    if (!v33)
    {
      theDict = 0;
LABEL_55:

      goto LABEL_56;
    }

    allKeys = [v33 allKeys];
    v36 = allKeys;
    if (iCopy)
    {
      theDict = [v34 objectForKey:iCopy];
    }

    else
    {
      if (![allKeys count])
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
  if (optionsCopy && kIDSQRAllocateKey_RecipientPushToken)
  {
    Value = CFDictionaryGetValue(optionsCopy, kIDSQRAllocateKey_RecipientPushToken);
  }

  theDicta = Value;
  v55 = +[NSUUID UUID];
  v56 = [optionsCopy objectForKey:v27];
  intValue = [v56 intValue];

  if (allocationCopy || intValue != 2)
  {
    v61 = [optionsCopy objectForKeyedSubscript:kIDSQRAllocateKey_waitingForAllocation];
    bOOLValue3 = [v61 BOOLValue];

    if (bOOLValue3)
    {
      v63 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v118 = dCopy;
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

      uUIDString = 0;
    }

    else
    {
      v104[0] = _NSConcreteStackBlock;
      v104[1] = 3221225472;
      v104[2] = sub_10059DE58;
      v104[3] = &unk_100BE0DB0;
      v104[4] = self;
      v64 = serviceCopy;
      v105 = v64;
      v106 = theDicta;
      v65 = allocationCopy;
      v107 = v65;
      v66 = identityCopy;
      v108 = v66;
      v109 = optionsCopy;
      v67 = handlerCopy;
      v114 = v67;
      v110 = dCopy;
      additionalAllocationCopy = additionalAllocation;
      v111 = v96;
      v68 = iCopy;
      v112 = v68;
      v116 = iDCopy;
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

      uUIDString = [v69 UUIDString];
    }
  }

  else
  {
    v58 = [(IDSQuickRelayAllocator *)self _getSelfAllocationFromCache:dCopy];
    v59 = v58;
    if (v58)
    {
      v60 = v58;
    }

    else
    {
      LODWORD(v91) = interface;
      v60 = [(IDSQuickRelayAllocator *)self _setupAllocation:0 fromURI:iCopy sessionID:dCopy isSessionIDRemoteDeviceID:iDCopy options:optionsCopy prevConnectStatus:0 requestUUID:v55 connectReadyHandler:handlerCopy withPreferredLocalInterface:v91];
    }

    uUIDString = v60;
  }

LABEL_113:

  return uUIDString;
}

- (id)_tokenURIForToken:(id)token uri:(id)uri
{
  tokenCopy = token;
  uriCopy = uri;
  if ([tokenCopy length] && objc_msgSend(uriCopy, "length"))
  {
    v7 = [NSString alloc];
    __imHexString = [tokenCopy __imHexString];
    uriCopy = [v7 initWithFormat:@"token:%@/%@", __imHexString, uriCopy];
  }

  else
  {
    uriCopy = 0;
  }

  return uriCopy;
}

- (id)setupNewAllocation:(id)allocation sessionID:(id)d fromIdentity:(id)identity fromURI:(id)i fromService:(id)service options:(id)options connectReadyHandler:(id)handler
{
  BYTE4(v10) = 0;
  LODWORD(v10) = 0;
  return [(IDSQuickRelayAllocator *)self _setupNewAllocation:allocation sessionID:d isSessionIDRemoteDeviceID:0 fromIdentity:identity fromURI:i fromService:service options:options connectReadyHandler:handler withPreferredLocalInterface:v10 forAdditionalAllocation:?];
}

- (BOOL)_startQRConnectionWithDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v5 = [(IDSQuickRelayAllocator *)self _parseQuickRelayDefaults:defaultsCopy gropuID:0];
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
    uUIDString = [v7 UUIDString];

    if (uUIDString)
    {
      CFDictionarySetValue(v5, kIDSQRAllocateKey_RequestID, uUIDString);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092A71C();
    }

    v9 = defaultsCopy;
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

- (id)_getPushTokenFromParticipantID:(id)d participantID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  os_unfair_lock_lock(&self->_lock);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = dCopy;
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
          unsignedLongLongValue = [v14 unsignedLongLongValue];
          if (unsignedLongLongValue == [iDCopy unsignedLongLongValue])
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
    unsignedLongLongValue2 = [iDCopy unsignedLongLongValue];
    *buf = 134217984;
    v27 = unsignedLongLongValue2;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "no push token for participantID %llu", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      unsignedLongLongValue3 = [iDCopy unsignedLongLongValue];
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        [iDCopy unsignedLongLongValue];
        _IDSLogV();
      }
    }
  }

  v19 = 0;
LABEL_18:

  return v19;
}

- (id)_getParticipantIDFromPushToken:(id)token pushToken:(id)pushToken
{
  tokenCopy = token;
  pushTokenCopy = pushToken;
  os_unfair_lock_lock(&self->_lock);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = tokenCopy;
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

        if (!v18 && ([v16 isEqualToData:pushTokenCopy] & 1) != 0)
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
    v26 = pushTokenCopy;
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

- (id)getPushTokensFromParticipantIDs:(id)ds participantIDs:(id)iDs
{
  dsCopy = ds;
  iDsCopy = iDs;
  v6 = [(IDSQuickRelayAllocator *)self _getResponseFromQRGroupID:dsCopy];
  v25 = v6;
  if (v6)
  {
    v7 = [v6 objectForKey:kIDSQRAllocateKey_Allocations];
    if (v7)
    {
      v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [iDsCopy count]);
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v9 = iDsCopy;
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
      v31 = dsCopy;
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

- (id)getPushTokenFromParticipantID:(id)d participantID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v8 = [(IDSQuickRelayAllocator *)self _getResponseFromQRGroupID:dCopy];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectForKey:kIDSQRAllocateKey_Allocations];
    if (v10)
    {
      v11 = [(IDSQuickRelayAllocator *)self _getPushTokenFromParticipantID:v10 participantID:iDCopy];
      if (v11)
      {
        v12 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          unsignedLongLongValue = [iDCopy unsignedLongLongValue];
          v22 = 2112;
          v23 = v11;
          v24 = 2112;
          v25 = dCopy;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "participantID: %llu, pushToken: %@, group: %@", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            unsignedLongLongValue2 = [iDCopy unsignedLongLongValue];
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              [iDCopy unsignedLongLongValue];
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
          unsignedLongLongValue = [iDCopy unsignedLongLongValue];
          v22 = 2112;
          v23 = v9;
          v24 = 2112;
          v25 = dCopy;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "no push token for participantID %llu in response %@ for group: %@", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            unsignedLongLongValue3 = [iDCopy unsignedLongLongValue];
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              [iDCopy unsignedLongLongValue];
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
        unsignedLongLongValue = v9;
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
      unsignedLongLongValue = dCopy;
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

- (id)getParticipantIDFromPushToken:(id)token pushToken:(id)pushToken
{
  tokenCopy = token;
  pushTokenCopy = pushToken;
  v8 = [(IDSQuickRelayAllocator *)self _getResponseFromQRGroupID:tokenCopy];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectForKey:kIDSQRAllocateKey_Allocations];
    if (v10)
    {
      v11 = [(IDSQuickRelayAllocator *)self _getParticipantIDFromPushToken:v10 pushToken:pushTokenCopy];
      if (v11)
      {
        v12 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          unsignedLongLongValue = [v11 unsignedLongLongValue];
          v21 = 2112;
          v22 = pushTokenCopy;
          v23 = 2112;
          v24 = tokenCopy;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "participantID: %llu, pushToken: %@, group: %@", buf, 0x20u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            unsignedLongLongValue2 = [v11 unsignedLongLongValue];
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
          unsignedLongLongValue = pushTokenCopy;
          v21 = 2112;
          v22 = v9;
          v23 = 2112;
          v24 = tokenCopy;
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
        unsignedLongLongValue = v9;
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
      unsignedLongLongValue = tokenCopy;
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

- (id)getURIFromParticipantID:(id)d participantID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v32 = dCopy;
  v8 = [(IDSQuickRelayAllocator *)self _getResponseFromQRGroupID:dCopy];
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
              unsignedLongLongValue = [v17 unsignedLongLongValue];
              if (unsignedLongLongValue == [iDCopy unsignedLongLongValue])
              {
                v22 = [v16 objectForKey:kIDSQRAllocateKey_RecipientURI];
                v24 = OSLogHandleForTransportCategory();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                {
                  unsignedLongLongValue2 = [iDCopy unsignedLongLongValue];
                  v26 = IDSLoggableDescriptionForHandleOnService();
                  *buf = 134218498;
                  v38 = unsignedLongLongValue2;
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
                    unsignedLongLongValue3 = [iDCopy unsignedLongLongValue];
                    v29 = IDSLoggableDescriptionForHandleOnService();
                    _IDSLogTransport();

                    if (_IDSShouldLog())
                    {
                      [iDCopy unsignedLongLongValue];
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
        v38 = iDCopy;
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
      v38 = dCopy;
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

- (BOOL)isURIAvailabeInAllocateResponse:(id)response uri:(id)uri
{
  responseCopy = response;
  uriCopy = uri;
  v23 = responseCopy;
  v8 = [(IDSQuickRelayAllocator *)self _getResponseFromQRGroupID:responseCopy];
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
            v18 = [uriCopy isEqualToString:v17];

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
      v30 = responseCopy;
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

- (id)getAdditionalAllocationForAddress:(id)address selfAddress:(unsigned int)selfAddress relaySessionID:(id)d allocateType:(int64_t)type qrReason:(unsigned __int16)reason previousTime:(unint64_t)time previousError:(unsigned __int16)error previousRelayIP:(unsigned int)self0 previousAccessToken:(id)self1 requestSelfAllocation:(BOOL)self2 isSessionIDRemoteDeviceID:(BOOL)self3 withPreferredRemoteInterface:(int)self4 withPreferredLocalInterface:(int)self5
{
  reasonCopy = reason;
  addressCopy = address;
  selfAddressCopy = selfAddress;
  dCopy = d;
  tokenCopy = token;
  im_assert_primary_base_queue();
  v88 = dCopy;
  v22 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    *v99 = addressCopy;
    *&v99[8] = 2112;
    *&v99[10] = dCopy;
    *&v99[18] = 1024;
    *&v99[20] = type;
    v100 = 1024;
    LODWORD(v101) = reasonCopy;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "IDSSession ID %@ requested additional allocation for QR Session ID %@, allocateType %d, reason %d", buf, 0x22u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      typeCopy2 = type;
      v81 = reasonCopy;
      v73 = addressCopy;
      v76 = dCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        typeCopy2 = type;
        v81 = reasonCopy;
        v73 = addressCopy;
        v76 = dCopy;
        _IDSLogV();
      }
    }
  }

  v91 = [(IDSQuickRelayAllocator *)self _filterSelfAllocationsForSessionID:addressCopy, v73, v76, typeCopy2, v81];
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
      [(IDSQuickRelayAllocator *)self _addConnectStatus:v26 relaySessionID:v27 previousTime:time qrReason:reasonCopy previousError:error previousRelayIP:p previousAccessToken:tokenCopy];

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
    *v99 = addressCopy;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "No groupID for %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v74 = addressCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v74 = addressCopy;
        _IDSLogV();
      }
    }
  }

LABEL_24:
  os_unfair_lock_lock(&self->_lock);
  if ([v91 count])
  {
    v29 = [v91 objectAtIndex:0];
    request = [v29 request];
  }

  else
  {
    request = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  theDict = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v30 = [(IDSQuickRelayAllocator *)self _findSessionWithID:addressCopy];
  if (v30)
  {
    if (request)
    {
      appID = [request appID];
      senderURI = [request senderURI];
    }

    else
    {
      appID = [v30 getAppID];
      fromURI = [v30 fromURI];
      senderURI = [fromURI prefixedURI];
    }

    if (selfAddressCopy)
    {
      v34 = [[NSData alloc] initWithBytes:&selfAddressCopy length:4];
      [(__CFDictionary *)theDict setValue:v34 forKey:kIDSQRAllocateKey_SenderExternalAddress];
    }

    [(__CFDictionary *)theDict setValue:appID forKey:kIDSQRAllocateKey_AppID, v74];
    v35 = [NSNumber numberWithInteger:type];
    [(__CFDictionary *)theDict setValue:v35 forKey:kIDSQRAllocateKey_AllocateType];

    v36 = [NSNumber numberWithInt:interface];
    [(__CFDictionary *)theDict setValue:v36 forKey:kIDSQRAllocateKey_PreferredRemoteInterface];

    if (allocation)
    {
      if (type == 3)
      {
        v37 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Ignore self allocation for shared session", buf, 2u);
        }

        v38 = os_log_shim_legacy_logging_enabled();
        v39 = request;
        if (v38)
        {
          v40 = _IDSShouldLogTransport();
          v39 = request;
          if (v40)
          {
            _IDSLogTransport();
            v41 = _IDSShouldLog();
            v39 = request;
            if (v41)
            {
              _IDSLogV();
              v39 = request;
            }
          }
        }

        goto LABEL_53;
      }

      [(__CFDictionary *)theDict setValue:&off_100C3CC28 forKey:kIDSQRAllocateKey_SelfAllocationCount];
    }

    v39 = request;
    if (type == 3)
    {
LABEL_53:
      v45 = v39 == 0;
      groupID = [v30 groupID];
      v47 = groupID;
      if (v45)
      {
        groupID2 = groupID;
      }

      else
      {
        groupID2 = [request groupID];
      }

      v59 = groupID2;
      if (groupID2)
      {
        CFDictionarySetValue(theDict, kIDSQRAllocateKey_GroupID, groupID2);
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
          [(IDSQuickRelayAllocator *)self _addConnectStatus:v47 relaySessionID:v60 previousTime:time qrReason:reasonCopy previousError:error previousRelayIP:p previousAccessToken:tokenCopy];
        }
      }

      else
      {
        v61 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v99 = addressCopy;
          _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "No groupID for shared session %@", buf, 0xCu);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            v75 = addressCopy;
            _IDSLogTransport();
            if (_IDSShouldLog())
            {
              v75 = addressCopy;
              _IDSLogV();
            }
          }
        }
      }

LABEL_88:
      v62 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        destinations = [v30 destinations];
        *buf = 67109890;
        *v99 = type;
        *&v99[4] = 2112;
        *&v99[6] = destinations;
        *&v99[14] = 2112;
        *&v99[16] = addressCopy;
        v100 = 2112;
        v101 = senderURI;
        _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "need to do ID query: allocateType: %d, destinations: %@, sessionID: %@, fromURI: %@", buf, 0x26u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          [v30 destinations];
          v79 = addressCopy;
          v82 = senderURI;
          v77 = v75 = type;
          _IDSLogTransport();

          if (_IDSShouldLog())
          {
            [v30 destinations];
            v79 = addressCopy;
            v82 = senderURI;
            v77 = v75 = type;
            _IDSLogV();
          }
        }
      }

      destinations2 = [v30 destinations];
      allObjects = [destinations2 allObjects];
      getCallerCert = [v30 getCallerCert];
      getFromService = [v30 getFromService];
      BYTE4(v80) = 1;
      LODWORD(v80) = localInterface;
      v32 = [(IDSQuickRelayAllocator *)self _setupNewAllocation:allObjects sessionID:addressCopy isSessionIDRemoteDeviceID:iD fromIdentity:getCallerCert fromURI:senderURI fromService:getFromService options:theDict connectReadyHandler:0 withPreferredLocalInterface:v80 forAdditionalAllocation:?];

      goto LABEL_118;
    }

    if (type == 2)
    {
      v42 = [(IDSQuickRelayAllocator *)self _getSelfAllocationFromCache:addressCopy];
      v43 = v42;
      if (v42)
      {
        v44 = v42;
      }

      else
      {
        LODWORD(v79) = localInterface;
        v44 = [(IDSQuickRelayAllocator *)self _setupAllocation:0 fromURI:senderURI sessionID:addressCopy isSessionIDRemoteDeviceID:iD options:theDict prevConnectStatus:0 requestUUID:0 connectReadyHandler:0 withPreferredLocalInterface:v79];
      }

      v32 = v44;

      goto LABEL_118;
    }

    if (!request)
    {
      goto LABEL_88;
    }

    recipients = [request recipients];
    if (v88)
    {
      v49 = [(IDSQuickRelayAllocator *)self getPushTokenForRelaySessionID:addressCopy relaySessionID:?];
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

        [v30 setHasPendingAllocation:0 forIDSSession:{addressCopy, v75}];
        goto LABEL_116;
      }

      v83 = objc_alloc_init(NSMutableArray);
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v50 = recipients;
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
      v68 = recipients;
    }

    v70 = v68;
    if ([v68 count])
    {
      LODWORD(v79) = localInterface;
      v32 = [(IDSQuickRelayAllocator *)self _setupAllocation:v70 fromURI:senderURI sessionID:addressCopy isSessionIDRemoteDeviceID:iD options:theDict prevConnectStatus:0 requestUUID:0 connectReadyHandler:0 withPreferredLocalInterface:v79];

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

    [v30 setHasPendingAllocation:0 forIDSSession:addressCopy];

LABEL_116:
    v32 = 0;
    goto LABEL_117;
  }

  v31 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v99 = addressCopy;
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

- (void)_handleIncomingAllocateResponse:(id)response isFromCache:(BOOL)cache requestOptions:(id)options
{
  cacheCopy = cache;
  responseCopy = response;
  optionsCopy = options;
  v7 = +[IDSFoundationLog QRAllocator];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  v9 = kIDSQRAllocateKey_RequestID;
  if (v8)
  {
    v10 = [responseCopy objectForKey:kIDSQRAllocateKey_RequestID];
    v11 = sub_100592F04(v10);
    v12 = kIDSQRAllocateKey_IDSSessionID;
    v13 = [responseCopy objectForKey:kIDSQRAllocateKey_IDSSessionID];
    v14 = sub_100592F04(v13);
    key = kIDSQRAllocateKey_RelaySessionID;
    v15 = [responseCopy objectForKey:?];
    v16 = sub_100592F04(v15);
    v17 = v16;
    v18 = @"NO";
    *buf = 138413058;
    v294 = v11;
    if (cacheCopy)
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

  v265 = [(IDSQuickRelayAllocator *)self _translateParticipantIDtoUINT64ForResponse:responseCopy];
  v19 = [responseCopy objectForKey:v9];
  v20 = sub_100592F04(v19);

  v21 = [responseCopy objectForKey:v12];
  v22 = sub_100592F04(v21);

  v23 = [responseCopy objectForKey:key];
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
  v291 = cacheCopy;
  v261 = v25;
  v290 = v261;
  cut_dispatch_log_queue();
  v26 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [responseCopy objectForKey:kIDSQRAllocateKey_RelayAddress];
    v28 = [responseCopy objectForKey:kIDSQRAllocateKey_RelayPort];
    v29 = [responseCopy objectForKey:kIDSQRAllocateKey_RelayAddressIPv6];
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
    v31 = [responseCopy objectForKey:kIDSQRAllocateKey_RelayHighPriorityPort];
    v32 = [responseCopy objectForKey:kIDSQRAllocateKey_RelayIPPreference];
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
    v35 = [responseCopy objectForKey:kIDSQRAllocateKey_RelayServerType];
    unsignedIntValue = [v35 unsignedIntValue];
    v37 = @"Multi-Server Configuration";
    if (!unsignedIntValue)
    {
      v37 = @"Single-Server Configuration";
    }

    *buf = 138412290;
    v294 = v37;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "QRserver type: %@", buf, 0xCu);
  }

  v38 = [(IDSQuickRelayAllocator *)self _createSessionInfoFromResponsePayload:responseCopy];
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
    intValue = [v254 intValue];
    v271 = [(IDSQuickRelayAllocator *)self _findAllocationForSessionID:v270 requestIDStr:v263];
    v257 = [(IDSQuickRelayAllocator *)self _findSessionWithID:v270];
    request = [(QRAllocation *)v271 request];
    if (request)
    {
      v45 = cacheCopy;
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
    v48 = sub_10001B8C4(v46, responseCopy, kIDSQRAllocateKey_AllocateType);
    integerValue = [v48 integerValue];

    if (integerValue == 3)
    {
      Mutable = [(NSMutableDictionary *)self->_sessionIDToURIToResponsePayload objectForKey:v270];
      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      }

      v50 = [(IDSQuickRelayAllocator *)self _getURIForRecipientFromResponse:responseCopy];
      v51 = [Mutable objectForKeyedSubscript:v50];
      if (!v51 || ([responseCopy objectForKey:key], v52 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v51, "objectForKey:", key), v53 = objc_claimAutoreleasedReturnValue(), v54 = objc_msgSend(v52, "isEqualToData:", v53), v53, v52, (v54 & 1) != 0) || -[IDSQuickRelayAllocator _shouldUseCurrentResponse:cachedMessage:](self, "_shouldUseCurrentResponse:cachedMessage:", responseCopy, v51))
      {
        [Mutable setObject:responseCopy forKey:v50];
        [(NSMutableDictionary *)self->_sessionIDToURIToResponsePayload setObject:Mutable forKey:v270];
      }

      else
      {
        v73 = v51;

        v74 = [(IDSQuickRelayAllocator *)self _createSessionInfoFromResponsePayload:v73];

        v39 = v74;
        responseCopy = v73;
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
        if (responseCopy && kIDSQRAllocateKey_GroupID)
        {
          v59 = CFDictionaryGetValue(responseCopy, kIDSQRAllocateKey_GroupID);
        }

        v60 = v59;
        v61 = 0;
        if (key && responseCopy)
        {
          v61 = CFDictionaryGetValue(responseCopy, key);
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
              v197 = [(IDSQuickRelayAllocator *)self _mergeParticipantID2PushTokenMapping:v64 sourceResponse:responseCopy mappingChange:&v282];
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

      fromURI = [v257 fromURI];
      v56 = [(__CFDictionary *)v39 objectForKey:kIDSQRAllocateKey_AppID];
      v57 = [v56 isEqualToString:@"com.apple.private.alloy.airdrop.walkaway"];

      if ((fromURI == 0) | v57 & 1)
      {
        v255 = 1;
      }

      else
      {
        prefixedURI = [fromURI prefixedURI];
        v66 = [Mutable objectForKey:prefixedURI];
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
          responseCopy = v70;
        }

        else
        {
          v75 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v294 = prefixedURI;
            _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "Have not yet received the allocate response for %@", buf, 0xCu);
          }

          if (os_log_shim_legacy_logging_enabled())
          {
            if (_IDSShouldLogTransport())
            {
              v238 = prefixedURI;
              _IDSLogTransport();
              if (_IDSShouldLog())
              {
                v238 = prefixedURI;
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
    v77 = sub_10001B8C4(v76, responseCopy, v47);
    v78 = [v77 integerValue] == 2;

    if (!v78)
    {
      if (!self->_sessionToLocalParticipantID)
      {
        v79 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        sessionToLocalParticipantID = self->_sessionToLocalParticipantID;
        self->_sessionToLocalParticipantID = v79;
      }

      v81 = [responseCopy objectForKey:{kIDSQRAllocateKey_RecipientID, v238}];
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

    if (v271 && integerValue != 3 && [(IDSQuickRelayAllocator *)self _isDuplicateResponse:v271 newResponse:v39])
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

    if (cacheCopy || integerValue != 3)
    {
      v250 = 0;
    }

    else
    {
      v281 = 0;
      v88 = [(IDSQuickRelayAllocator *)self _addResponseToCache:responseCopy sessionInfo:v39 modifiedMessage:&v281];
      v89 = v281;
      if (v89 == responseCopy)
      {
        v91 = responseCopy;
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

        responseCopy = v91;
        goto LABEL_454;
      }

      v250 = 1;
      responseCopy = v91;
    }

    v93 = kIDSQRAllocateKey_AppID;
    v238 = [(__CFDictionary *)v39 objectForKey:kIDSQRAllocateKey_AppID, v238];
    v252 = [v238 isEqualToString:IDSRegistrationServiceTypeCloudMessaging];

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
        request2 = [(QRAllocation *)v271 request];

        if (request2)
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
          responses = [(QRAllocation *)v271 responses];
          [responses addObject:v39];

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
            request3 = [(QRAllocation *)v271 request];
            recipients = [request3 recipients];
            v124 = [recipients count];
            responses2 = [(QRAllocation *)v271 responses];
            v126 = [responses2 count];
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
              request4 = [(QRAllocation *)v271 request];
              recipients2 = [request4 recipients];
              v131 = [recipients2 count];
              responses3 = [(QRAllocation *)v271 responses];
              v242 = v131;
              v243 = [responses3 count];
              v241 = v128;
              v239 = v263;
              _IDSLogTransport();

              if (_IDSShouldLog())
              {
                [(QRAllocation *)v271 duration:v263];
                v134 = v133;
                request5 = [(QRAllocation *)v271 request];
                recipients3 = [request5 recipients];
                v137 = [recipients3 count];
                responses4 = [(QRAllocation *)v271 responses];
                v242 = v137;
                v243 = [responses4 count];
                v241 = v134;
                v239 = v263;
                _IDSLogV();
              }
            }
          }

          v139 = objc_opt_class();
          v140 = sub_10001B8C4(v139, responseCopy, kIDSQRAllocateKey_Allocations);
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

                pushTokenToQRSessionID = [(QRAllocation *)v271 pushTokenToQRSessionID];
                [pushTokenToQRSessionID setObject:v146 forKey:v145];
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
          sharedSessionHasJoined = [v257 sharedSessionHasJoined];
          v160 = sharedSessionHasJoined;
          if (cacheCopy)
          {
            v161 = (integerValue == 3) & sharedSessionHasJoined;
            v162 = optionsCopy;
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

              v162 = optionsCopy;
              goto LABEL_290;
            }
          }

          else
          {
            v164 = v250 ^ 1;
            if (integerValue != 3)
            {
              v164 = 1;
            }

            if (v164)
            {
              if (integerValue == 3)
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

            else if (sharedSessionHasJoined)
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

            [(IDSQuickRelayAllocator *)self _processSelfAllocations:responseCopy allocation:v271, v240, v241];
            v162 = optionsCopy;
          }

          if (integerValue != 3)
          {
LABEL_383:
            if ((keya & 1) != 0 || ((v250 | v252 | [(NSMutableSet *)self->_pendingRecipientsAcceptedSessions containsObject:v270]) & 1) != 0 || cacheCopy)
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

                if (cacheCopy)
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
                v230 = cacheCopy ? @"YES" : @"NO";
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

              [(IDSQuickRelayAllocator *)self _startQRConnectionForSession:v39 isInitiatorsAcceptedSession:v256 & 1 withLocalInterfacePreference:intValue, v240, v241, v242, v243, v244, v245];
            }

            else
            {
              if (integerValue == 3)
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

            [v257 qrAllocatorDidReceiveAllocateResponse:responseCopy];
            goto LABEL_454;
          }

LABEL_290:
          if (v162)
          {
            v172 = [v162 objectForKey:kIDSQRAllocateKey_StreamInfoPublishedStreams];
            v173 = [optionsCopy objectForKey:kIDSQRAllocateKey_StreamInfoSubscribedStreams];
            v174 = [optionsCopy objectForKey:kIDSQRAllocateKey_StreamInfoGenerationCounter];
            v175 = [optionsCopy objectForKey:kIDSQRAllocateKey_StreamInfoMaxConcurrentStreams];
            v176 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
            {
              v177 = [optionsCopy objectForKey:kIDSQRAllocateKey_IsJoinAllocation];
              bOOLValue = [v177 BOOLValue];
              v179 = @"NO";
              *buf = 138413570;
              v294 = v270;
              v295 = 2112;
              if (bOOLValue)
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
            v181 = [optionsCopy objectForKey:kIDSQRAllocateKey_IsJoinAllocation];
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

            v183 = [optionsCopy objectForKey:{v180, v270, v172, v173, v174, v175, v245}];
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
              v245 = [(IDSQuickRelayAllocator *)self _uriToParticipantID:v39, v240, v241, v242, v243, v244, v245];
              if (v245)
              {
                CFDictionarySetValue(v39, kIDSQRAllocateKey_URIToParticipantID, v245);
              }

              goto LABEL_383;
            }

            obja = [(QRAllocation *)v271 streamInfo];
            v185 = OSLogHandleForTransportCategory();
            if (os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
            {
              isJoinAllocation = [(QRAllocation *)v271 isJoinAllocation];
              v187 = @"NO";
              if (isJoinAllocation)
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
                        streamInfo = [v201 streamInfo];
                        v203 = streamInfo == 0;

                        if (!v203)
                        {
                          streamInfo2 = [v201 streamInfo];
                          [(QRAllocation *)v271 setStreamInfo:streamInfo2];

                          streamInfo3 = [v201 streamInfo];
                          v172 = streamInfo3[1];

                          streamInfo4 = [v201 streamInfo];
                          v173 = streamInfo4[2];

                          streamInfo5 = [v201 streamInfo];
                          v174 = streamInfo5[3];

                          streamInfo6 = [v201 streamInfo];
                          v175 = streamInfo6[4];

                          v211 = OSLogHandleForTransportCategory();
                          if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
                          {
                            streamInfo7 = [v201 streamInfo];
                            *buf = 138413314;
                            v294 = streamInfo7;
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
              streamInfo8 = [(QRAllocation *)v271 streamInfo];
              v214 = streamInfo8 == 0;

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

        responses5 = [(QRAllocation *)v271 responses];
        [responses5 addObject:v39];

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
    v98 = sub_10001B8C4(v97, responseCopy, kIDSQRAllocateKey_RelayExpiryTimestamp);
    if (!v98)
    {
LABEL_122:
      v101 = +[IDSPairingManager sharedInstance];
      pairedDeviceUniqueID = [v101 pairedDeviceUniqueID];

      v103 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v294 = pairedDeviceUniqueID;
        _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "defaultRemoteDeviceCBUUIDString: %@", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v239 = pairedDeviceUniqueID;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v239 = pairedDeviceUniqueID;
            _IDSLogV();
          }
        }
      }

      v104 = pairedDeviceUniqueID;
      if (v104)
      {
        [(__CFDictionary *)v39 setObject:v104 forKey:kIDSQRAllocateKey_DefaultRemoteDeviceCBUUID];
      }

      goto LABEL_131;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedLongLongValue = [v98 unsignedLongLongValue];
      v100 = 1000 * time(0);
      if (unsignedLongLongValue > v100)
      {
        goto LABEL_122;
      }

      v156 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218498;
        v294 = v100;
        v295 = 2048;
        v296 = unsignedLongLongValue;
        v297 = 2112;
        *v298 = responseCopy;
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

- (id)_translateParticipantIDtoUINT64ForResponse:(id)response
{
  responseCopy = response;
  v4 = [responseCopy mutableCopy];
  v5 = kIDSQRAllocateKey_RecipientID;
  v6 = [responseCopy objectForKey:kIDSQRAllocateKey_RecipientID];
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
  v10 = [responseCopy objectForKey:kIDSQRAllocateKey_Allocations];
  v11 = v10;
  if (v10 && [v10 count])
  {
    key = v9;
    v27 = responseCopy;
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
      responseCopy = v27;
    }

    else
    {
      responseCopy = v27;
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

- (BOOL)_isDuplicateResponse:(id)response newResponse:(id)newResponse
{
  responseCopy = response;
  if (responseCopy && newResponse)
  {
    v6 = kIDSQRAllocateKey_RelaySessionID;
    v7 = [newResponse objectForKey:kIDSQRAllocateKey_RelaySessionID];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    responses = [responseCopy responses];
    v9 = [responses countByEnumeratingWithState:&v18 objects:v24 count:16];
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
            objc_enumerationMutation(responses);
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

        v10 = [responses countByEnumeratingWithState:&v18 objects:v24 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    responses = +[IDSFoundationLog QRAllocator];
    if (os_log_type_enabled(responses, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, responses, OS_LOG_TYPE_DEFAULT, "_isDuplicateResponse:newResponse: duplicate response not found.", buf, 2u);
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

- (void)_processSelfAllocations:(id)allocations allocation:(id)allocation
{
  allocationsCopy = allocations;
  allocationCopy = allocation;
  v5 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_processSelfAllocations:allocation: called", buf, 2u);
  }

  v6 = objc_opt_class();
  v28 = kIDSQRAllocateKey_SelfAllocationArray;
  v23 = sub_10001B8C4(v6, allocationsCopy, kIDSQRAllocateKey_SelfAllocationArray);
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

          v13 = [allocationsCopy mutableCopy];
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
          [allocationCopy addAllocation:v13];
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

- (id)_getCombinedSoftwareID:(id)d
{
  dCopy = d;
  v4 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_getCombinedSoftwareID: called", buf, 2u);
  }

  if ([dCopy length])
  {
    v5 = _IDSAllocateProtocolVersionNumber();
    unsignedShortValue = [v5 unsignedShortValue];

    v10 = unsignedShortValue;
    v7 = [[NSMutableData alloc] initWithData:dCopy];
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

- (id)_createSessionInfoFromResponsePayload:(id)payload
{
  payloadCopy = payload;
  v5 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_createSessionInfoFromResponsePayload: called", buf, 2u);
  }

  if (!payloadCopy)
  {
    v17 = 0;
    goto LABEL_278;
  }

  v6 = [[IDSQuickRelayAllocateMessage alloc] initWithDictionary:payloadCopy];
  iDSSessionID = [(IDSQuickRelayAllocateMessage *)v6 IDSSessionID];
  appID = [(IDSQuickRelayAllocateMessage *)v6 appID];
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    relayBuildVersion = [(IDSQuickRelayAllocateMessage *)v6 relayBuildVersion];
    *buf = 138412290;
    *&buf[4] = relayBuildVersion;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "QR Build Version: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      relayBuildVersion2 = [(IDSQuickRelayAllocateMessage *)v6 relayBuildVersion];
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        relayBuildVersion2 = [(IDSQuickRelayAllocateMessage *)v6 relayBuildVersion];
        _IDSLogV();
      }
    }
  }

  if ([appID isEqualToString:{IDSRegistrationServiceTypeCloudMessaging, relayBuildVersion2}])
  {
    v10 = sub_100592F04(iDSSessionID);
    if (([v10 isEqualToString:kIDSDefaultPairedDeviceID] & 1) == 0)
    {
      v11 = iDSSessionID;
      memset(buf, 170, 16);
      v186.i64[0] = 0xAAAAAAAAAAAAAAAALL;
      v186.i64[1] = 0xAAAAAAAAAAAAAAAALL;
      v12 = +[IDSCurrentDevice sharedInstance];
      deviceIdentifier = [v12 deviceIdentifier];

      if ([v11 length] == 16)
      {
        v14 = v11;
        *keya = *[v11 bytes];
        v15 = [[NSUUID alloc] initWithUUIDString:deviceIdentifier];
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

  requestID = [(IDSQuickRelayAllocateMessage *)v6 requestID];
  v24 = sub_100592F04(requestID);

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

  v27 = sub_100592F04(iDSSessionID);
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
    if (kIDSQRAllocateKey_InferredExternalAddress && (v34 = CFDictionaryGetValue(payloadCopy, kIDSQRAllocateKey_InferredExternalAddress)) != 0)
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

  v170 = [(IDSQuickRelayAllocator *)self _findAllocationForSessionID:v177 requestIDStr:key, v163, *&v167, v169, v170];
  if (!v170 || ([v170 request], v47 = objc_claimAutoreleasedReturnValue(), v48 = v47 == 0, v47, v48))
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_isInitiator, &__kCFBooleanFalse);
  }

  else
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_isInitiator, &__kCFBooleanTrue);
    request = [v170 request];
    senderExternalIP = [request senderExternalIP];

    if (senderExternalIP)
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

      request2 = [v170 request];
      senderExternalIP2 = [request2 senderExternalIP];

      if (senderExternalIP2)
      {
        CFDictionarySetValue(Mutable, kIDSQRAllocateKey_SenderExternalAddress, senderExternalIP2);
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
  if (kIDSQRAllocateKey_Provider && (v57 = CFDictionaryGetValue(payloadCopy, kIDSQRAllocateKey_Provider)) != 0)
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

  relaySoftwareVersion = [(IDSQuickRelayAllocateMessage *)v6 relaySoftwareVersion];
  v61 = [(IDSQuickRelayAllocator *)self _getCombinedSoftwareID:relaySoftwareVersion];

  v62 = v61;
  if (v62)
  {
    v63 = v62;
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_RelayCombinedSoftwareID, v62);
    v62 = v63;
  }

  v171 = v62;

  relayPort = [(IDSQuickRelayAllocateMessage *)v6 relayPort];
  if (relayPort)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_RelayPort, relayPort);
  }

  else
  {
    v65 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092ABCC();
    }
  }

  relayIP = [(IDSQuickRelayAllocateMessage *)v6 relayIP];
  if (relayIP)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_RelayAddress, relayIP);
  }

  else
  {
    v67 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092AC54();
    }
  }

  relayIPv6 = [(IDSQuickRelayAllocateMessage *)v6 relayIPv6];
  if (relayIPv6)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_RelayAddressIPv6, relayIPv6);
  }

  relayHighPriorityPort = [(IDSQuickRelayAllocateMessage *)v6 relayHighPriorityPort];
  if (relayHighPriorityPort)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_RelayHighPriorityPort, relayHighPriorityPort);
  }

  relaySessionToken = [(IDSQuickRelayAllocateMessage *)v6 relaySessionToken];
  if (relaySessionToken)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_RelaySessionToken, relaySessionToken);
  }

  else
  {
    v71 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092ACDC();
    }
  }

  infoAttribute = [(IDSQuickRelayAllocateMessage *)v6 infoAttribute];
  if (infoAttribute)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_PreferredRemoteInterface, infoAttribute);
  }

  pskTransportParameters = [(IDSQuickRelayAllocateMessage *)v6 pskTransportParameters];
  if (pskTransportParameters)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_PSKTransportParameters, pskTransportParameters);
  }

  pskH3Settings = [(IDSQuickRelayAllocateMessage *)v6 pskH3Settings];
  if (pskH3Settings)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_PSKH3Settings, pskH3Settings);
  }

  reportingDataBlob = [(IDSQuickRelayAllocateMessage *)v6 reportingDataBlob];
  if (reportingDataBlob)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_ReportingDataBlob, reportingDataBlob);
  }

  isInternal = [(IDSQuickRelayAllocateMessage *)v6 isInternal];
  if (isInternal)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_IsInternal, isInternal);
  }

  relayBuildVersion3 = [(IDSQuickRelayAllocateMessage *)v6 relayBuildVersion];
  if (relayBuildVersion3)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_RelayBuildVersion, relayBuildVersion3);
  }

  v78 = IMGetCachedDomainIntForKeyWithDefaultValue();
  if ((v78 & 0x80000000) != 0)
  {
    ipPreference = [(IDSQuickRelayAllocateMessage *)v6 ipPreference];
    if (ipPreference)
    {
      CFDictionarySetValue(Mutable, kIDSQRAllocateKey_RelayIPPreference, ipPreference);
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
      v86 = CFDictionaryGetValue(payloadCopy, kIDSQRAllocateKey_LinkSuggestion);
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
      v93 = CFDictionaryGetValue(payloadCopy, kIDSQRAllocateKey_LinkScore);
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

  qrExperiments = [(IDSQuickRelayAllocateMessage *)v6 qrExperiments];
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
    v100 = [qrExperiments objectForKey:kIDSQRAllocateKey_HTTP2Disabled];
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
    v104 = [qrExperiments objectForKey:kIDSQRAllocateKey_IPDiscoveryDisabled];
    if (v104)
    {
      CFDictionarySetValue(Mutable, v103, v104);
    }
  }

  v106 = kIDSQRAllocateKey_UplinkNackDisabled;
  v107 = [qrExperiments objectForKey:kIDSQRAllocateKey_UplinkNackDisabled];
  if (v107)
  {
    CFDictionarySetValue(Mutable, v106, v107);
  }

  v108 = kIDSQRAllocateKey_TransportLayerEncryptionDisabled;
  v109 = [qrExperiments objectForKey:kIDSQRAllocateKey_TransportLayerEncryptionDisabled];
  if (v109)
  {
    CFDictionarySetValue(Mutable, v108, v109);
  }

  v110 = kIDSQRAllocateKey_IPDiscoveryDisabled;
  v111 = [qrExperiments objectForKey:kIDSQRAllocateKey_IPDiscoveryDisabled];
  if (v111)
  {
    CFDictionarySetValue(Mutable, v110, v111);
  }

  v112 = qrExperiments;
  if (v112)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_QRExperiments, v112);
  }

  relaySessionID = [(IDSQuickRelayAllocateMessage *)v6 relaySessionID];
  v114 = [relaySessionID length] == 16;

  if (v114)
  {
    v115 = [NSUUID alloc];
    relaySessionID2 = [(IDSQuickRelayAllocateMessage *)v6 relaySessionID];
    v117 = relaySessionID2;
    v118 = [v115 initWithUUIDBytes:{objc_msgSend(relaySessionID2, "bytes")}];
LABEL_211:

    goto LABEL_219;
  }

  v119 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
  {
    relaySessionID3 = [(IDSQuickRelayAllocateMessage *)v6 relaySessionID];
    v121 = [relaySessionID3 length];
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
      relaySessionID4 = [(IDSQuickRelayAllocateMessage *)v6 relaySessionID];
      v165 = [relaySessionID4 length];
      v168 = 16;
      _IDSLogTransport();

      if (_IDSShouldLog())
      {
        relaySessionID2 = [(IDSQuickRelayAllocateMessage *)v6 relaySessionID:v165];
        v165 = [relaySessionID2 length];
        v168 = 16;
        _IDSLogV();
        v118 = 0;
        goto LABEL_211;
      }
    }
  }

  v118 = 0;
LABEL_219:
  uUIDString = [v118 UUIDString];
  if (uUIDString)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_RelaySessionID, uUIDString);
  }

  else
  {
    v124 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092B00C();
    }
  }

  relaySessionKey = [(IDSQuickRelayAllocateMessage *)v6 relaySessionKey];
  if (relaySessionKey)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_RelaySessionKey, relaySessionKey);
  }

  else
  {
    v126 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092B094();
    }
  }

  appID2 = [(IDSQuickRelayAllocateMessage *)v6 appID];
  if (appID2)
  {
    CFDictionarySetValue(Mutable, kIDSQRAllocateKey_AppID, appID2);
  }

  else
  {
    v128 = &_os_log_default;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10092B11C();
    }
  }

  relayExpiryTimeStamp = [(IDSQuickRelayAllocateMessage *)v6 relayExpiryTimeStamp];
  [relayExpiryTimeStamp doubleValue];
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
  v136 = sub_10001B8C4(v134, payloadCopy, kIDSQRAllocateKey_AllocateType);
  v137 = v136;
  if (v136)
  {
    v138 = v136;
    CFDictionarySetValue(Mutable, v135, v138);

    if ([v138 intValue] == 3 || objc_msgSend(v138, "intValue") == 1)
    {
      v139 = objc_opt_class();
      v140 = kIDSQRAllocateKey_Allocations;
      v141 = sub_10001B8C4(v139, payloadCopy, kIDSQRAllocateKey_Allocations);
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

  allocateProtocolVersion = [(IDSQuickRelayAllocateMessage *)v6 allocateProtocolVersion];
  v146 = [allocateProtocolVersion intValue] > 1;

  if (!v146)
  {
    CFDictionarySetValue(Mutable, v135, &off_100C3CBC8);
LABEL_265:
    v151 = kIDSQRAllocateKey_SessionAllocationTime;
    v152 = [(__CFDictionary *)payloadCopy objectForKey:kIDSQRAllocateKey_SessionAllocationTime];
    if (v152)
    {
      [(__CFDictionary *)Mutable setObject:v152 forKey:v151];
    }

    v153 = kIDSQRAllocateKey_RecipientID;
    v154 = [(__CFDictionary *)payloadCopy objectForKey:kIDSQRAllocateKey_RecipientID];
    allocateProtocolVersion3 = v154;
    if (v154)
    {
      v155 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v154 unsignedLongLongValue]);
      if (v155)
      {
        [(__CFDictionary *)Mutable setObject:v155 forKey:v153];
      }
    }

    v156 = kIDSQRAllocateKey_GroupID;
    v157 = [(__CFDictionary *)payloadCopy objectForKey:kIDSQRAllocateKey_GroupID];
    if (v157)
    {
      [(__CFDictionary *)Mutable setObject:v157 forKey:v156];
    }

    v158 = kIDSQRAllocateKey_GroupMemberCount;
    v159 = [(__CFDictionary *)payloadCopy objectForKey:kIDSQRAllocateKey_GroupMemberCount];
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
    allocateProtocolVersion2 = [(IDSQuickRelayAllocateMessage *)v6 allocateProtocolVersion];
    *buf = 138412290;
    *&buf[4] = allocateProtocolVersion2;
    _os_log_impl(&_mh_execute_header, v147, OS_LOG_TYPE_DEFAULT, "allocate type is required for allocate protocol version %@", buf, 0xCu);
  }

  if (!os_log_shim_legacy_logging_enabled() || !_IDSShouldLogTransport() || ([(IDSQuickRelayAllocateMessage *)v6 allocateProtocolVersion], v166 = objc_claimAutoreleasedReturnValue(), _IDSLogTransport(), v166, !_IDSShouldLog()))
  {
    v17 = 0;
    goto LABEL_277;
  }

  allocateProtocolVersion3 = [(IDSQuickRelayAllocateMessage *)v6 allocateProtocolVersion];
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

- (BOOL)_hasSessionInfoRequiredKeys:(id)keys
{
  keysCopy = keys;
  if (keysCopy)
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
            v11 = [keysCopy objectForKey:{v10, v15, v16}];
            v12 = v11 == 0;

            if (v12)
            {
              v13 = OSLogHandleForTransportCategory();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v22 = v10;
                v23 = 2112;
                v24 = keysCopy;
                _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, " is missing required attributes %@ in sessionInfo %@", buf, 0x16u);
              }

              if (os_log_shim_legacy_logging_enabled())
              {
                if (_IDSShouldLogTransport())
                {
                  v15 = v10;
                  v16 = keysCopy;
                  _IDSLogTransport();
                  if (_IDSShouldLog())
                  {
                    v15 = v10;
                    v16 = keysCopy;
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

- (void)_triggerSymptomsWithType:(id)type subType:(id)subType subTypeContext:(id)context
{
  typeCopy = type;
  subTypeCopy = subType;
  contextCopy = context;
  v10 = +[IMLockdownManager sharedInstance];
  isInternalInstall = [v10 isInternalInstall];

  if (isInternalInstall)
  {
    v12 = objc_alloc_init(IMWeakLinkClass());
    v13 = [v12 signatureWithDomain:@"IDSQuickRelay" type:typeCopy subType:subTypeCopy subtypeContext:contextCopy detectedProcess:@"identityservicesd" triggerThresholdValues:0];
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

- (unsigned)_getErrorCodeFromAllocationStatus:(int)status
{
  if (status > 5007)
  {
    if (status > 5031)
    {
      if (status == 5032)
      {
        return 37;
      }

      if (status == 7000)
      {
        return 42;
      }
    }

    else
    {
      if (status == 5008)
      {
        return 36;
      }

      if (status == 5010)
      {
        return 45;
      }
    }
  }

  else if (status > 5000)
  {
    if (status == 5001)
    {
      return 34;
    }

    if (status == 5004)
    {
      return 35;
    }
  }

  else
  {
    if (status == 1000)
    {
      return 32;
    }

    if (status == 1001)
    {
      return 33;
    }
  }

  return 38;
}

- (void)_processAllocationStatusResult:(id)result
{
  resultCopy = result;
  v5 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_processAllocationStatusResult: called", buf, 2u);
  }

  v6 = objc_opt_class();
  v7 = sub_10001B8C4(v6, resultCopy, @"s");
  intValue = [v7 intValue];

  if (!intValue)
  {
    goto LABEL_55;
  }

  v9 = objc_opt_class();
  v10 = sub_10001B8C4(v9, resultCopy, @"p");
  v11 = intValue;
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
    v47 = resultCopy;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Allocation error response: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v39 = resultCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v39 = resultCopy;
        _IDSLogV();
      }
    }
  }

  v16 = [(IDSQuickRelayAllocator *)self _getErrorCodeFromAllocationStatus:v11, v39, v41];
  v17 = kIDSQRAllocateKey_RequestID;
  v18 = [resultCopy objectForKey:kIDSQRAllocateKey_RequestID];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = [resultCopy objectForKey:v17];
    v20 = [NSData _IDSDataFromBase64String:v19];
    v21 = sub_100592F04(v20);
  }

  else
  {
    v19 = [resultCopy objectForKey:v17];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [resultCopy objectForKey:v17];
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
        request = [v27 request];

        [(IDSQuickRelayAllocator *)self _sendAllocateRequest:request];
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
  v10 = sub_10001B8C4(v34, resultCopy, kIDSQRAllocateKey_QRFailureSubType);
  v35 = objc_opt_class();
  v21 = sub_10001B8C4(v35, resultCopy, kIDSQRAllocateKey_QRFailureContext);
  v36 = objc_opt_class();
  v25 = sub_10001B8C4(v36, resultCopy, kIDSQRAllocateKey_AllocateType);
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
  request = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:5];
  v37 = [request objectForKey:v25];
  v38 = v37;
  if (v10 && v21 && v37)
  {
    [(IDSQuickRelayAllocator *)self _triggerSymptomsWithType:v37 subType:v10 subTypeContext:v21];
  }

LABEL_60:
}

- (void)_sendAWDMetricsForAllocation:(id)allocation status:(int64_t)status hasRecipientAccepted:(BOOL)accepted
{
  acceptedCopy = accepted;
  allocationCopy = allocation;
  v9 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_sendAWDMetricsForAllocation:status:hasRecipientAccepted: called", buf, 2u);
  }

  responses = [allocationCopy responses];
  v11 = [responses count];

  if (v11)
  {
    request = [allocationCopy request];
    if (request)
    {
      request2 = [allocationCopy request];
      appID = [request2 appID];
    }

    else
    {
      appID = &stru_100C06028;
    }

    request3 = [allocationCopy request];
    if (request3)
    {
      request4 = [allocationCopy request];
      requestLength = [request4 requestLength];
    }

    else
    {
      requestLength = 0;
    }

    v19 = [IDSQRAllocationMetric alloc];
    [allocationCopy duration];
    v21 = [v19 initWithDuration:v20 result:status hasRecipientAccepted:acceptedCopy payloadSize:requestLength topic:appID service:appID];
    v22 = +[IDSCoreAnalyticsLogger defaultLogger];
    [v22 logMetric:v21];

    _getIDSAWDLoggingInstance = [(IDSQuickRelayAllocator *)self _getIDSAWDLoggingInstance];
    [allocationCopy duration];
    [_getIDSAWDLoggingInstance IDSQRAllocation:v24 result:status hasRecipientAccepted:acceptedCopy payloadSize:requestLength topic:appID service:appID];

    v25 = +[IDSDSessionController sharedInstance];
    sessionIDStr = [allocationCopy sessionIDStr];
    v27 = [v25 sessionWithUniqueID:sessionIDStr];

    if (v27)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      request5 = [allocationCopy request];
      allocateProtocolVersion = [request5 allocateProtocolVersion];
      [(__CFDictionary *)Mutable setObject:allocateProtocolVersion forKeyedSubscript:IDSDSessionReportQRVersionKey];

      [(__CFDictionary *)Mutable setObject:&off_100C3CC88 forKeyedSubscript:IDSDSessionReportQREventSubTypeKey];
      [allocationCopy duration];
      v31 = [NSNumber numberWithDouble:?];
      [(__CFDictionary *)Mutable setObject:v31 forKeyedSubscript:IDSDSessionReportDurationKey];

      v32 = [NSNumber numberWithInteger:status];
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

- (id)_getStatusMessageFromStatusCode:(unint64_t)code
{
  if (code <= 5003)
  {
    if (!code)
    {
      return @"Success";
    }

    if (code != 5001)
    {
      if (code == 5003)
      {
        return @"BadRequest";
      }

      return @"Unknown status";
    }

    return @"ServerInternalError";
  }

  else if (code > 5040)
  {
    if (code != 5041)
    {
      if (code == 5042)
      {
        return @"ExpiredSessionToken";
      }

      return @"Unknown status";
    }

    return @"BadSessionToken";
  }

  else
  {
    if (code != 5004)
    {
      if (code == 5008)
      {
        return @"MissingRequiredKey";
      }

      return @"Unknown status";
    }

    return @"ServerBusy";
  }
}

- (void)_startQRConnectionForSession:(id)session isInitiatorsAcceptedSession:(BOOL)acceptedSession withLocalInterfacePreference:(int)preference
{
  v5 = *&preference;
  acceptedSessionCopy = acceptedSession;
  sessionCopy = session;
  v9 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    if (acceptedSessionCopy)
    {
      v10 = @"YES";
    }

    *buf = 138412546;
    v58 = v10;
    v59 = 2112;
    v60 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "_startQRConnectionForSession:isInitiatorsAcceptedSession: called {isInitiator: %@} sessionInfo %@", buf, 0x16u);
  }

  if ([(IDSQuickRelayAllocator *)self _hasSessionInfoRequiredKeys:sessionCopy])
  {
    Value = 0;
    v12 = kIDSQRAllocateKey_RequestID;
    if (sessionCopy && kIDSQRAllocateKey_RequestID)
    {
      Value = CFDictionaryGetValue(sessionCopy, kIDSQRAllocateKey_RequestID);
    }

    key = Value;
    v13 = [(__CFDictionary *)sessionCopy objectForKey:kIDSQRAllocateKey_IDSSessionID];
    v14 = v13;
    if (key)
    {
      if (v13 || (v19 = self->_requestIDToSession) != 0 && (v14 = CFDictionaryGetValue(v19, key)) != 0)
      {
        if (-[__CFString isEqualToString:](v14, "isEqualToString:", kIDSDefaultPairedDeviceID) & 1) != 0 || (-[__CFDictionary objectForKey:](sessionCopy, "objectForKey:", kIDSQRAllocateKey_AppID), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 isEqualToString:IDSRegistrationServiceTypeCloudMessaging], v15, (v16))
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

          v54 = [(__CFDictionary *)sessionCopy objectForKey:kIDSQRAllocateKey_GroupID];
          v53 = [(__CFDictionary *)sessionCopy objectForKey:kIDSQRAllocateKey_AllocateType];
          v23 = OSLogHandleForTransportCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            uniqueID = [v55 uniqueID];
            connectReadyHandler = [v22 connectReadyHandler];
            v26 = objc_retainBlock(connectReadyHandler);
            shouldConnectToQRServer = [v55 shouldConnectToQRServer];
            v28 = @"NO";
            *buf = 138413058;
            v58 = uniqueID;
            v59 = 2048;
            if (shouldConnectToQRServer)
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
            uniqueID2 = [v55 uniqueID];
            connectReadyHandler2 = [v22 connectReadyHandler];
            v31 = [v55 shouldConnectToQRServer] ? @"YES" : @"NO";
            v51 = connectReadyHandler2;
            v52 = v31;
            v48 = uniqueID2;
            v50 = v22;
            _IDSLogTransport();

            if (_IDSShouldLog())
            {
              uniqueID3 = [v55 uniqueID];
              connectReadyHandler3 = [v22 connectReadyHandler];
              if ([v55 shouldConnectToQRServer])
              {
                v34 = @"YES";
              }

              else
              {
                v34 = @"NO";
              }

              v51 = connectReadyHandler3;
              v52 = v34;
              v48 = uniqueID3;
              v50 = v22;
              _IDSLogV();
            }
          }

          if (!v22 || ([v22 connectReadyHandler], v35 = objc_claimAutoreleasedReturnValue(), v36 = v35 == 0, v35, v36) || (objc_msgSend(v22, "connectReadyHandler"), v37 = objc_claimAutoreleasedReturnValue(), (v37)[2](v37, 0, sessionCopy), v37, objc_msgSend(v22, "setConnectReadyHandler:", 0), -[NSMutableSet containsObject:](self->_pendingRecipientsAcceptedSessions, "containsObject:", v14)))
          {
            [v55 setShouldConnectToQRServer:{0, v48, v50, v51, v52}];
            [v55 connectQRServer:sessionCopy withPreferredLocalInterface:v5];
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

          if (acceptedSessionCopy)
          {
            v46 = [(__CFDictionary *)sessionCopy objectForKey:kIDSQRAllocateKey_RelaySessionID];
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
            v41 = [(__CFDictionary *)sessionCopy objectForKey:kIDSQRAllocateKey_RemoteDeviceIDKey];
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
            [v43 connectGlobalLinkForDevice:v41 sessionInfo:sessionCopy connectReadyHandler:0 withLocalInterfacePreference:0];

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

- (id)_findSessionWithID:(id)d
{
  dCopy = d;
  v4 = +[IDSDSessionController sharedInstance];
  v5 = [v4 sessionWithUniqueID:dCopy];

  return v5;
}

- (void)_storeMappingFromPushTokenToURIs:(id)is fromID:(id)d service:(id)service cert:(id)cert forGroup:(id)group
{
  isCopy = is;
  dCopy = d;
  serviceCopy = service;
  certCopy = cert;
  groupCopy = group;
  v17 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v51 = groupCopy;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "_storeMappingFromPushTokenToURIs:fromURI:service:cert:forGroup: called {groupID: %@}", buf, 0xCu);
  }

  v32 = groupCopy;
  v18 = [(NSMutableDictionary *)self->_pushTokenToURIForGroup objectForKeyedSubscript:groupCopy];
  _peerIDManager = [(IDSQuickRelayAllocator *)self _peerIDManager];
  v35 = dCopy;
  v20 = [IDSURI URIWithPrefixedURI:dCopy withServiceLoggingHint:serviceCopy];
  v36 = isCopy;
  v33 = certCopy;
  v34 = serviceCopy;
  v21 = [_peerIDManager sessionTokensForURIs:isCopy fromURI:v20 service:serviceCopy fromIdentity:certCopy includeSelfDevice:1 fullyRemoveSelfDevice:0];

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
              prefixedURI = [v23 prefixedURI];
              [v18 setObject:prefixedURI forKeyedSubscript:v30];
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

- (id)_uriToParticipantID:(id)d
{
  dCopy = d;
  v3 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = dCopy;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "_uriToParticipantID: called sessionInfo %@", buf, 0xCu);
  }

  v25 = [(NSMutableDictionary *)dCopy objectForKeyedSubscript:kIDSQRAllocateKey_GroupID];
  v4 = [(NSMutableDictionary *)dCopy objectForKeyedSubscript:kIDSQRAllocateKey_Allocations];
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

- (id)getRelaySessionIDForIDSSessionID:(id)d pushToken:(id)token
{
  dCopy = d;
  tokenCopy = token;
  v7 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v28 = dCopy;
    v29 = 2112;
    v30 = tokenCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "getRelaySessionIDForIDSSessionID:pushToken: called {sessionID: %@, pushToken: %@}", buf, 0x16u);
  }

  im_assert_primary_base_queue();
  os_unfair_lock_lock(&self->_lock);
  v8 = [(IDSQuickRelayAllocator *)self _findAllocationListForSessionID:dCopy];
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
          pushTokenToQRSessionID = [v13 pushTokenToQRSessionID];
          v15 = pushTokenToQRSessionID;
          if (pushTokenToQRSessionID)
          {
            v16 = tokenCopy != 0;
          }

          else
          {
            v16 = 0;
          }

          if (v16)
          {
            pushTokenToQRSessionID2 = [v13 pushTokenToQRSessionID];
            v18 = CFDictionaryGetValue(pushTokenToQRSessionID2, tokenCopy);

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
    v18 = [(NSMutableDictionary *)self->_idsSessionIDToqrSessionID objectForKey:dCopy];
    if (v18)
    {
      goto LABEL_27;
    }
  }

  v19 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = dCopy;
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

- (id)getPushTokenForRelaySessionID:(id)d relaySessionID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v8 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = dCopy;
    v26 = 2112;
    v27 = iDCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "getPushTokenForRelaySessionID:relaySessionID called {sessionID: %@, relaySessionID: %@}", buf, 0x16u);
  }

  v9 = [(IDSQuickRelayAllocator *)self _filterSelfAllocationsForSessionID:dCopy];
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

          pushTokenToQRSessionID = [*(*(&v19 + 1) + 8 * i) pushTokenToQRSessionID];
          v15 = [pushTokenToQRSessionID allKeysForObject:iDCopy];

          if ([v15 count])
          {
            os_unfair_lock_unlock(&self->_lock);
            firstObject = [v15 firstObject];

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
      v25 = dCopy;
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

  firstObject = 0;
LABEL_21:

  return firstObject;
}

- (void)requestAllocationForRecipient:(id)recipient
{
  recipientCopy = recipient;
  im_assert_primary_base_queue();
  value = recipientCopy;
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v54 = recipientCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IDSSession ID %@ requested for a QR allocation", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v37 = recipientCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v37 = recipientCopy;
        _IDSLogV();
      }
    }
  }

  if (recipientCopy)
  {
    theDict = [(IDSQuickRelayAllocator *)self _parseQuickRelayDefaults:recipientCopy gropuID:0];
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
      uUIDString = [v7 UUIDString];

      if (uUIDString)
      {
        CFDictionarySetValue(theDict, kIDSQRAllocateKey_RequestID, uUIDString);
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
      v10 = [(IDSQuickRelayAllocator *)self _findAllocationListForSessionID:recipientCopy];
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
            responses = [v16 responses];
            v18 = [responses countByEnumeratingWithState:&v45 objects:v58 count:16];
            if (v18)
            {
              v19 = *v46;
              do
              {
                for (j = 0; j != v18; j = j + 1)
                {
                  if (*v46 != v19)
                  {
                    objc_enumerationMutation(responses);
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

                v18 = [responses countByEnumeratingWithState:&v45 objects:v58 count:16];
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

- (void)setInitiatorsAcceptedToken:(id)token pushToken:(id)pushToken
{
  tokenCopy = token;
  pushTokenCopy = pushToken;
  v8 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = pushTokenCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setInitiatorsAcceptedToken:pushToken: called {pushToken: %@}", buf, 0xCu);
  }

  im_assert_primary_base_queue();
  if (tokenCopy && pushTokenCopy)
  {
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v13 = tokenCopy;
      v14 = 2112;
      v15 = pushTokenCopy;
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

    CFDictionarySetValue(self->_initiatorsAcceptedSessionsWithToken, tokenCopy, pushTokenCopy);
  }
}

- (int64_t)getServerProviderForIDSSessionID:(id)d
{
  dCopy = d;
  v5 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = dCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "getServerProviderForIDSSessionID: called {sessionID: %@}", &v13, 0xCu);
  }

  im_assert_primary_base_queue();
  os_unfair_lock_lock(&self->_lock);
  v6 = [(IDSQuickRelayAllocator *)self _findAllocationListForSessionID:dCopy];
  firstObject = [v6 firstObject];
  responses = [firstObject responses];
  anyObject = [responses anyObject];

  os_unfair_lock_unlock(&self->_lock);
  Value = 0;
  if (anyObject && kIDSQRAllocateKey_Provider)
  {
    Value = CFDictionaryGetValue(anyObject, kIDSQRAllocateKey_Provider);
  }

  unsignedIntValue = [Value unsignedIntValue];

  return unsignedIntValue;
}

- (void)reportAWDAllocatorEvent:(unsigned int)event relayProviderType:(int64_t)type transport:(int64_t)transport localRAT:(unsigned int)t duration:(unint64_t)duration idsSessionID:(id)d reportingDataBlob:(id)blob isInitiator:(BOOL)self0 serverSoftwareVersion:(id)self1
{
  v54 = *&event;
  dCopy = d;
  blobCopy = blob;
  versionCopy = version;
  v12 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = _IDSStunTransportStrings[transport];
    v14 = IDSRadioAccessTechnologyToString();
    v15 = @"NO";
    *buf = 67110658;
    v56 = v54;
    if (initiator)
    {
      v15 = @"YES";
    }

    v57 = 2080;
    v58 = v13;
    v59 = 2080;
    v60 = v14;
    v61 = 1024;
    durationCopy = duration;
    v63 = 2112;
    v64 = dCopy;
    v65 = 2112;
    v66 = v15;
    v67 = 2112;
    v68 = versionCopy;
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
  v18 = [NSNumber numberWithUnsignedLongLong:duration];
  v19 = [NSNumber numberWithInteger:type];
  v20 = [NSNumber numberWithInteger:transport];
  v21 = [NSNumber numberWithUnsignedInt:t];
  v22 = [NSNumber numberWithBool:initiator];
  v23 = _IDSAllocateProtocolVersionNumber();
  v24 = [v16 initWithType:&off_100C3CB38 eventSubType:v17 duration:v18 resultCode:0 providerType:v19 transportType:v20 interfaceType:v21 skeEnabled:0 isInitiator:v22 protocolVersion:v23 retryCount:0 serviceName:0 subServiceName:0 participantCount:0];

  v25 = +[IDSCoreAnalyticsLogger defaultLogger];
  [v25 logMetric:v24];

  _getIDSAWDLoggingInstance = [(IDSQuickRelayAllocator *)self _getIDSAWDLoggingInstance];
  v27 = [NSNumber numberWithUnsignedInt:v54];
  v28 = [NSNumber numberWithUnsignedLongLong:duration];
  v29 = [NSNumber numberWithInteger:type];
  v30 = [NSNumber numberWithInteger:transport];
  v31 = [NSNumber numberWithUnsignedInt:t];
  v32 = [NSNumber numberWithBool:initiator];
  v33 = _IDSAllocateProtocolVersionNumber();
  [_getIDSAWDLoggingInstance IDSQuickRelayEventType:&off_100C3CB38 eventSubType:v27 duration:v28 resultCode:0 providerType:v29 transportType:v30 interfaceType:v31 skeEnabled:0 isInitiator:v32 protocolVersion:v33 retryCount:0 serviceName:0 subServiceName:0 participantCount:0];

  v34 = +[IDSDSessionController sharedInstance];
  v35 = [v34 sessionWithUniqueID:dCopy];

  if (v35)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v37 = _IDSAllocateProtocolVersionNumber();
    [(__CFDictionary *)Mutable setObject:v37 forKeyedSubscript:IDSDSessionReportQRVersionKey];

    v38 = [NSNumber numberWithUnsignedInt:v54];
    [(__CFDictionary *)Mutable setObject:v38 forKeyedSubscript:IDSDSessionReportQREventSubTypeKey];

    v39 = [NSNumber numberWithUnsignedLongLong:duration];
    [(__CFDictionary *)Mutable setObject:v39 forKeyedSubscript:IDSDSessionReportDurationKey];

    [(__CFDictionary *)Mutable setObject:&off_100C3CC10 forKeyedSubscript:IDSDSessionReportResultCodeKey];
    v40 = [NSNumber numberWithInteger:transport];
    [(__CFDictionary *)Mutable setObject:v40 forKeyedSubscript:IDSDSessionReportTransportTypeKey];

    v41 = [NSNumber numberWithUnsignedInt:t];
    [(__CFDictionary *)Mutable setObject:v41 forKeyedSubscript:IDSDSessionReportLocalInterfaceTypeKey];

    [(__CFDictionary *)Mutable setObject:blobCopy forKeyedSubscript:IDSDSessionReportReportingDataBlobKey];
    v42 = [NSNumber numberWithBool:initiator];
    [(__CFDictionary *)Mutable setObject:v42 forKeyedSubscript:IDSDSessionReportIsInitiatorKey];

    [(__CFDictionary *)Mutable setObject:versionCopy forKeyedSubscript:IDSDSessionReportReportingSoftwareVersionKey];
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

- (void)cleanUpCachedMappings:(id)mappings
{
  mappingsCopy = mappings;
  v5 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = mappingsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "cleanUpCachedMappings for group %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v6 = mappingsCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v6 = mappingsCopy;
        _IDSLogV();
      }
    }
  }

  [(NSMutableDictionary *)self->_pushTokenToURIForGroup setObject:0 forKeyedSubscript:mappingsCopy, v6];
}

- (void)invalidateSession:(id)session isExpiryPurging:(BOOL)purging
{
  sessionCopy = session;
  v7 = im_primary_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005AC630;
  block[3] = &unk_100BD8FC0;
  block[4] = self;
  v10 = sessionCopy;
  purgingCopy = purging;
  v8 = sessionCopy;
  dispatch_async(v7, block);
}

- (void)_invalidateSession:(id)session isExpiryPurging:(BOOL)purging
{
  sessionCopy = session;
  im_assert_primary_base_queue();
  v7 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "invalidate all allocations for IDSSession ID %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v10 = sessionCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v10 = sessionCopy;
        _IDSLogV();
      }
    }
  }

  [(IDSQuickRelayAllocator *)self _removeAllAllocationsForSessionID:sessionCopy, v10];
  if (!purging)
  {
    [(NSMutableSet *)self->_pendingRecipientsAcceptedSessions removeObject:sessionCopy];
    [(NSMutableDictionary *)self->_initiatorsAcceptedSessionsWithToken removeObjectForKey:sessionCopy];
  }

  v8 = [(NSMutableDictionary *)self->_requestIDToSession allKeysForObject:sessionCopy];
  [(NSMutableDictionary *)self->_requestIDToSession removeObjectsForKeys:v8];
  [(NSMutableDictionary *)self->_idsSessionIDToqrSessionID removeObjectForKey:sessionCopy];
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableDictionary *)self->_sessionToRequestIDToAllocateTime removeObjectForKey:sessionCopy];
  os_unfair_lock_unlock(&self->_lock);
  v9 = [(NSMutableDictionary *)self->_allocateResponses objectForKey:sessionCopy];
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

- (void)invalidateAllocation:(id)allocation
{
  allocationCopy = allocation;
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
  v9 = allocationCopy;
  v7 = allocationCopy;
  dispatch_async(v6, v8);
}

- (void)_addAllocationForSession:(id)session allocation:(id)allocation
{
  sessionCopy = session;
  allocationCopy = allocation;
  if (!sessionCopy)
  {
    goto LABEL_25;
  }

  v8 = +[IDSDSessionController sharedInstance];
  v9 = [v8 sessionWithUniqueID:sessionCopy];

  sharedSessionHasJoined = [v9 sharedSessionHasJoined];
  v11 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"NO";
    if (sharedSessionHasJoined)
    {
      v12 = @"YES";
    }

    *buf = 138412802;
    v18 = sessionCopy;
    if (!allocationCopy)
    {
      v12 = @"invalid";
    }

    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = allocationCopy;
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
  v13 = [(IDSQuickRelayAllocator *)self _findAllocationListForSessionID:sessionCopy];
  if (v13)
  {
    if (!allocationCopy)
    {
      goto LABEL_18;
    }

LABEL_16:
    if (v13)
    {
      CFArrayAppendValue(v13, allocationCopy);
    }

    goto LABEL_18;
  }

  v13 = objc_alloc_init(NSMutableArray);
  if (allocationCopy)
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
    CFDictionarySetValue(self->_sessionToAllocations, sessionCopy, v16);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092B22C();
  }

  os_unfair_lock_unlock(&self->_lock);
LABEL_25:
}

- (void)_discardAllocation:(id)allocation
{
  allocationCopy = allocation;
  if (allocationCopy)
  {
    v5 = [NSString alloc];
    sessionIDStr = [allocationCopy sessionIDStr];
    v7 = [v5 initWithString:sessionIDStr];

    os_unfair_lock_lock(&self->_lock);
    v8 = [(IDSQuickRelayAllocator *)self _findAllocationListForSessionID:v7];
    v9 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = v7;
      v16 = 2112;
      v17 = allocationCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Discard allocation For Session: %@, %@", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v12 = v7;
        v13 = allocationCopy;
        _IDSLogTransport();
        if (_IDSShouldLog())
        {
          v12 = v7;
          v13 = allocationCopy;
          _IDSLogV();
        }
      }
    }

    if (v8)
    {
      [v8 removeObject:allocationCopy];
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

- (void)_removeAllAllocationsForSessionID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  selfCopy = self;
  key = dCopy;
  v25 = [(IDSQuickRelayAllocator *)self _findAllocationListForSessionID:dCopy];
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
          responses = [v11 responses];
          v13 = [responses countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v13)
          {
            v14 = *v32;
            do
            {
              for (i = 0; i != v13; i = i + 1)
              {
                if (*v32 != v14)
                {
                  objc_enumerationMutation(responses);
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

              v13 = [responses countByEnumeratingWithState:&v31 objects:v39 count:16];
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
      sessionToAllocations = selfCopy->_sessionToAllocations;
      if (sessionToAllocations)
      {
        CFDictionaryRemoveValue(sessionToAllocations, key);
        v6 = v25;
      }
    }
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
}

- (id)_filterSelfAllocationsForSessionID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(IDSQuickRelayAllocator *)self _findAllocationListForSessionID:dCopy];
  v6 = objc_alloc_init(NSMutableIndexSet);
  if ([v5 count])
  {
    v7 = 0;
    do
    {
      v8 = [v5 objectAtIndexedSubscript:v7];
      request = [v8 request];
      allocateType = [request allocateType];
      intValue = [allocateType intValue];

      if (intValue == 2)
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

- (id)_findAllocationListForSessionID:(id)d
{
  Value = 0;
  if (d)
  {
    sessionToAllocations = self->_sessionToAllocations;
    if (sessionToAllocations)
    {
      Value = CFDictionaryGetValue(sessionToAllocations, d);
      v3 = vars8;
    }
  }

  return Value;
}

- (id)_findAllocationForSessionID:(id)d requestIDStr:(id)str
{
  dCopy = d;
  strCopy = str;
  v8 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v28 = dCopy;
    v29 = 2112;
    v30 = strCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "_findAllocationForSessionID:requestIDStr called {sessionID: %@, requestID: %@}", buf, 0x16u);
  }

  os_unfair_lock_lock(&self->_lock);
  v9 = [(IDSQuickRelayAllocator *)self _findAllocationListForSessionID:dCopy];
  v10 = v9;
  if (v9)
  {
    v21 = dCopy;
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
          requestIDStr = [v16 requestIDStr];
          v18 = [requestIDStr isEqualToIgnoringCase:strCopy];

          if (v18)
          {
            os_unfair_lock_unlock(&self->_lock);
            v19 = v16;
            dCopy = v21;
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

    dCopy = v21;
  }

  os_unfair_lock_unlock(&self->_lock);
  v11 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v28 = dCopy;
    v29 = 2112;
    v30 = strCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "_findAllocationForSessionID, {sessionID: %@, requestID: %@} not found", buf, 0x16u);
  }

  v19 = 0;
LABEL_17:

  return v19;
}

- (id)_parseQuickRelayDefaults:(id)defaults gropuID:(id)d
{
  defaultsCopy = defaults;
  dCopy = d;
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
      integerValue = [v11 integerValue];

      v12 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v61 = v10;
        v62 = 1024;
        LODWORD(v63) = integerValue;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "decoded relay-server-address %@:%u", buf, 0x12u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v47 = v10;
          v48 = integerValue;
          _IDSLogTransport();
          if (_IDSShouldLog())
          {
            v47 = v10;
            v48 = integerValue;
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
      uUIDString = [v15 UUIDString];
      v20 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v61 = uUIDString;
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

      if (v54 && integerValue && uUIDString && v56 && v55)
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

        v29 = defaultsCopy;
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

        v31 = dCopy;
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

        v36 = [NSNumber numberWithUnsignedShort:integerValue];
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

        v38 = uUIDString;
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

- (void)enablePushHandler:(BOOL)handler
{
  v5 = im_primary_queue();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1005AE6EC;
  v6[3] = &unk_100BD7478;
  handlerCopy = handler;
  v6[4] = self;
  dispatch_async(v5, v6);
}

- (unint64_t)getLocalParticipantIDForRelaySessionID:(id)d
{
  v3 = [(NSMutableDictionary *)self->_sessionToLocalParticipantID objectForKey:d];
  unsignedLongLongValue = [v3 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (void)handler:(id)handler didReceiveMessage:(id)message forTopic:(id)topic fromID:(id)d messageContext:(id)context
{
  handlerCopy = handler;
  messageCopy = message;
  topicCopy = topic;
  dCopy = d;
  contextCopy = context;
  v17 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "handler:didReceiveMessage:forTopic:fromID:messageContext: called", buf, 2u);
  }

  im_assert_primary_base_queue();
  v18 = objc_opt_class();
  v19 = sub_10001B8C4(v18, messageCopy, @"c");
  intValue = [v19 intValue];

  if (intValue == 255)
  {
    [(IDSQuickRelayAllocator *)self _processAllocationStatusResult:messageCopy];
  }

  else if (intValue == 200)
  {
    [(IDSQuickRelayAllocator *)self _handleIncomingAllocateResponse:messageCopy isFromCache:0 requestOptions:0];
  }

  else
  {
    v21 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = messageCopy;
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

- (void)handler:(id)handler receivedOfflineMessagePendingForTopic:(id)topic messageContext:(id)context
{
  handlerCopy = handler;
  topicCopy = topic;
  contextCopy = context;
  v10 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = topicCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "receivedOfflineMessagePendingForTopic: %@", buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v12 = topicCopy;
      _IDSLogTransport();
      if (_IDSShouldLog())
      {
        v12 = topicCopy;
        _IDSLogV();
      }
    }
  }

  v11 = +[IDSServerStorageStateMachine sharedInstance];
  [v11 incomingStorageRequestForTopic:topicCopy primary:1 messageContext:contextCopy sendReasonPathID:26];
}

- (id)_getGroupID:(id)d
{
  dCopy = d;
  v4 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_getGroupID called", buf, 2u);
  }

  request = [dCopy request];
  v6 = request;
  if (request)
  {
    groupID = [request groupID];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    responses = [dCopy responses];
    v9 = [responses countByEnumeratingWithState:&v16 objects:v21 count:16];
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
            objc_enumerationMutation(responses);
          }

          v14 = [*(*(&v16 + 1) + 8 * i) objectForKey:v12];
          if (v14)
          {
            groupID = v14;

            goto LABEL_15;
          }
        }

        v10 = [responses countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    groupID = 0;
  }

LABEL_15:

  return groupID;
}

- (id)_uuidFromNSStringToNSData:(id)data
{
  dataCopy = data;
  v4 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "_uuidFromNSStringToNSData called", v8, 2u);
  }

  v5 = [[NSUUID alloc] initWithUUIDString:dataCopy];
  v8[0] = 0xAAAAAAAAAAAAAAAALL;
  v8[1] = 0xAAAAAAAAAAAAAAAALL;
  [v5 getUUIDBytes:v8];
  v6 = [NSData dataWithBytes:v8 length:16];

  return v6;
}

- (id)_getResponse:(id)response relaySessionID:(id)d
{
  responseCopy = response;
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  v27 = responseCopy;
  selfCopy = self;
  v29 = [(IDSQuickRelayAllocator *)self _findAllocationListForSessionID:responseCopy];
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
          responses = [v11 responses];
          v13 = [responses countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v13)
          {
            v14 = *v31;
            while (2)
            {
              for (j = 0; j != v13; j = j + 1)
              {
                if (*v31 != v14)
                {
                  objc_enumerationMutation(responses);
                }

                v16 = *(*(&v30 + 1) + 8 * j);
                v17 = [v16 objectForKey:v9];
                v18 = [dCopy isEqualToString:v17];

                if (v18)
                {
                  os_unfair_lock_unlock(&selfCopy->_lock);
                  v20 = v16;

                  goto LABEL_32;
                }
              }

              v13 = [responses countByEnumeratingWithState:&v30 objects:v38 count:16];
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

    os_unfair_lock_unlock(&selfCopy->_lock);
    v19 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = dCopy;
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
      v41 = responseCopy;
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

- (void)startKeepAliveTimer:(id)timer relaySessionID:(id)d
{
  timerCopy = timer;
  dCopy = d;
  v8 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v23 = timerCopy;
    v24 = 2112;
    v25 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "startKeepAliveTimer:relaySessionID called - {sessionID: %@, relaySessionID %@}", buf, 0x16u);
  }

  v9 = [(IDSQuickRelayAllocator *)self _getResponse:timerCopy relaySessionID:dCopy];
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
      v23 = dCopy;
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

- (void)stopKeepAliveTimer:(id)timer relaySessionID:(id)d
{
  timerCopy = timer;
  dCopy = d;
  v8 = +[IDSFoundationLog QRAllocator];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = timerCopy;
    v17 = 2112;
    v18 = dCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "stopKeepAliveTimer:relaySessionID: called {sessionID: %@, relaySessionID %@}", buf, 0x16u);
  }

  v9 = [(IDSQuickRelayAllocator *)self _getResponse:timerCopy relaySessionID:dCopy];
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
        v16 = dCopy;
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
        v16 = dCopy;
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

- (id)_getQuickRelayIPPreference:(unint64_t)preference
{
  v3 = @"Unknown preference";
  if (preference == 1)
  {
    v3 = @"Prefer IPV6";
  }

  if (preference)
  {
    return v3;
  }

  else
  {
    return @"Prefer IPV4";
  }
}

- (void)setRequestIDToSession:(id)session idsSessionID:(id)d
{
  sessionCopy = session;
  dCopy = d;
  if (!self->_requestIDToSession)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    requestIDToSession = self->_requestIDToSession;
    self->_requestIDToSession = Mutable;
  }

  v10 = dCopy;
  if (v10)
  {
    CFDictionarySetValue(self->_requestIDToSession, sessionCopy, v10);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10092B344();
  }
}

@end