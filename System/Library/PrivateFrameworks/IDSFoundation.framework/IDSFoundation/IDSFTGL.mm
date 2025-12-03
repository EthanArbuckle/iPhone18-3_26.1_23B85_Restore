@interface IDSFTGL
- (BOOL)_postProcessAllocbindResponse:(id)response candidatePair:(id)pair candidatePairToken:(id)token;
- (BOOL)_postProcessQUICAllocbindResponse:(id)response candidatePair:(id)pair;
- (BOOL)_setupNewQRLinkIfNecessary:(id)necessary;
- (id)linkEngineForSessionInfo:(id)info;
- (void)_didCreateSession:(id)session;
- (void)_resetRetryCountForCandidatePair:(id)pair;
- (void)_willUpdateLinksForSession:(id)session;
- (void)disconnectWithCompletionHandler:(id)handler isReinitiating:(BOOL)reinitiating;
- (void)invalidate;
- (void)sendSKEData:(id)data;
- (void)setDefaultUnderlyingLink:(char)link;
- (void)startWithOptions:(id)options;
@end

@implementation IDSFTGL

- (void)startWithOptions:(id)options
{
  v12 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v5 = +[IDSFoundationLog FTGL];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    idsSessionID = self->super._idsSessionID;
    *buf = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = idsSessionID;
    _os_log_impl(&dword_1A7AD9000, v5, OS_LOG_TYPE_DEFAULT, "Start GL %@ for IDSSessionID: %@ (FaceTime:YES, isMultiway:NO).", buf, 0x16u);
  }

  self->super._startPort = 16393;
  self->super._portRange = 10;
  v7.receiver = self;
  v7.super_class = IDSFTGL;
  [(IDSGlobalLink *)&v7 startWithOptions:optionsCopy];

  self->super._shouldProcessBasebandNotification = 1;
  self->super._supportChannelData = 1;
}

- (void)invalidate
{
  v4.receiver = self;
  v4.super_class = IDSFTGL;
  [(IDSGlobalLink *)&v4 invalidate];
  linkEnginesByRemotePushToken = self->_linkEnginesByRemotePushToken;
  self->_linkEnginesByRemotePushToken = 0;
}

- (void)disconnectWithCompletionHandler:(id)handler isReinitiating:(BOOL)reinitiating
{
  v5.receiver = self;
  v5.super_class = IDSFTGL;
  [(IDSGlobalLink *)&v5 disconnectWithCompletionHandler:handler isReinitiating:reinitiating];
  [(IDSGlobalLink *)self _sendSessionDisconnectedCommand];
  [(IDSGlobalLink *)self _startDisconnectTimer];
}

- (BOOL)_postProcessAllocbindResponse:(id)response candidatePair:(id)pair candidatePairToken:(id)token
{
  responseCopy = response;
  pairCopy = pair;
  tokenCopy = token;
  if (!self->super._enableSKE || self->super._skeToRemoteComplete)
  {
LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  if (!self->super._skeData || ([pairCopy isAcceptedRelaySession] & 1) == 0 && self->super._isInitiator)
  {
    if (!self->super._delaySessionConnected)
    {
      self->super._delaySessionConnected = 1;
      v11 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, "_postProcessAllocbindResponse: SKE data is not ready, delay session connected.", v15, 2u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"_postProcessAllocbindResponse: SKE data is not ready, delay session connected.");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"_postProcessAllocbindResponse: SKE data is not ready, delay session connected.");
          }
        }
      }
    }

    goto LABEL_13;
  }

  v14 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A7AD9000, v14, OS_LOG_TYPE_DEFAULT, "_postProcessAllocbindResponse: send SKE data", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"_postProcessAllocbindResponse: send SKE data");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"_postProcessAllocbindResponse: send SKE data");
      }
    }
  }

  [(IDSGlobalLink *)self _sendSKEDataWithSelectedCandidatePair];
  v12 = 1;
LABEL_14:

  return v12;
}

- (void)sendSKEData:(id)data
{
  v16 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (self->super._enableSKE)
  {
    if (self->super._skeData)
    {
      v6 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        skeData = self->super._skeData;
        *buf = 134217984;
        v15 = skeData;
        _os_log_impl(&dword_1A7AD9000, v6, OS_LOG_TYPE_DEFAULT, "already has pending SKE data %p, ignore.", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"already has pending SKE data %p, ignore.");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"already has pending SKE data %p, ignore.");
          }
        }
      }
    }

    else
    {
      objc_storeStrong(&self->super._skeData, data);
      v10 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = self->super._skeData;
        *buf = 134217984;
        v15 = v11;
        _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "add SKE data %p.", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          v13 = self->super._skeData;
          _IDSLogTransport(@"GL", @"IDS", @"add SKE data %p.");
          if (_IDSShouldLog())
          {
            v13 = self->super._skeData;
            _IDSLogV(0, @"IDSFoundation", @"GL", @"add SKE data %p.");
          }
        }
      }

      self->super._skeToRemoteComplete = 0;
      if (self->super._delaySessionConnected)
      {
        v12 = OSLogHandleForTransportCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A7AD9000, v12, OS_LOG_TYPE_DEFAULT, "session connected is delayed, send SKE data immediately.", buf, 2u);
        }

        if (os_log_shim_legacy_logging_enabled())
        {
          if (_IDSShouldLogTransport())
          {
            _IDSLogTransport(@"GL", @"IDS", @"session connected is delayed, send SKE data immediately.");
            if (_IDSShouldLog())
            {
              _IDSLogV(0, @"IDSFoundation", @"GL", @"session connected is delayed, send SKE data immediately.");
            }
          }
        }

        [(IDSGlobalLink *)self _sendSKEDataToSucceededCandidatePairs];
      }
    }
  }

  else
  {
    v8 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (self->super._enableSKE)
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "send SKE data failed (EnableSKE:%@).", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"send SKE data failed (EnableSKE:%@).");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"send SKE data failed (EnableSKE:%@).");
        }
      }
    }
  }
}

- (void)setDefaultUnderlyingLink:(char)link
{
  linkCopy = link;
  v15 = *MEMORY[0x1E69E9840];
  if (self->super._isInitiator)
  {
    if (link < 0 || self->super._maxLinkID <= link || (v5 = self->super._candidatePairs[link]) == 0)
    {
      v9 = OSLogHandleForTransportCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v12 = linkCopy;
        _os_log_impl(&dword_1A7AD9000, v9, OS_LOG_TYPE_DEFAULT, "failed to find candidate pair for linkID:%d.", buf, 8u);
      }

      if (os_log_shim_legacy_logging_enabled())
      {
        if (_IDSShouldLogTransport())
        {
          _IDSLogTransport(@"GL", @"IDS", @"failed to find candidate pair for linkID:%d.");
          if (_IDSShouldLog())
          {
            _IDSLogV(0, @"IDSFoundation", @"GL", @"failed to find candidate pair for linkID:%d.");
          }
        }
      }
    }

    else
    {
      v10 = v5;
      candidatePairToken = [(IDSStunCandidatePair *)v5 candidatePairToken];
      [(IDSGlobalLink *)self _nominateCandidatePair:candidatePairToken];
    }
  }

  else
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (self->super._isInitiator)
      {
        v8 = @"YES";
      }

      else
      {
        v8 = @"NO";
      }

      *buf = 67109378;
      v12 = linkCopy;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "set default underlying link (linkID:%d) failed (isInitiator:%@).", buf, 0x12u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        _IDSLogTransport(@"GL", @"IDS", @"set default underlying link (linkID:%d) failed (isInitiator:%@).");
        if (_IDSShouldLog())
        {
          _IDSLogV(0, @"IDSFoundation", @"GL", @"set default underlying link (linkID:%d) failed (isInitiator:%@).");
        }
      }
    }
  }
}

- (BOOL)_setupNewQRLinkIfNecessary:(id)necessary
{
  v21 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  if (!necessaryCopy)
  {
    if (self->super._allowOnlyOneQR || !self->super._isInitiator)
    {
      v8 = +[IDSFoundationLog FTGL];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        isInitiator = self->super._isInitiator;
        if (self->super._allowOnlyOneQR)
        {
          v10 = @"YES";
        }

        else
        {
          v10 = @"NO";
        }

        *buf = 138412802;
        if (isInitiator)
        {
          v11 = @"YES";
        }

        else
        {
          v11 = @"NO";
        }

        v16 = 0;
        v17 = 2112;
        v18 = v10;
        v19 = 2112;
        v20 = v11;
        _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "skip set up new QR link (relaySessionID:%@, FaceTime:YES, allowOnlyOneQR:%@, isInitiator:%@).", buf, 0x20u);
      }
    }

    else
    {
      if (!self->super._hasPendingAllocation)
      {
        goto LABEL_2;
      }

      v7 = +[IDSFoundationLog FTGL];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = 0;
        _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "skip set up new QR link, allocation is pending, relaySessionID: %@", buf, 0xCu);
      }
    }

    v6 = 0;
    goto LABEL_21;
  }

LABEL_2:
  v14.receiver = self;
  v14.super_class = IDSFTGL;
  v5 = [(IDSGlobalLink *)&v14 _setupNewQRLinkIfNecessary:necessaryCopy];
  v6 = v5;
  if (!necessaryCopy && v5)
  {
    v13.receiver = self;
    v13.super_class = IDSFTGL;
    [(IDSGlobalLink *)&v13 _requestNewTwoWayQRAllocation:0];
    v6 = 1;
  }

LABEL_21:

  return v6;
}

- (void)_resetRetryCountForCandidatePair:(id)pair
{
  pairCopy = pair;
  v5 = pairCopy;
  if (self->super._isInitiator)
  {
    v15 = pairCopy;
    isRelayStunCandidatePair = [pairCopy isRelayStunCandidatePair];
    v5 = v15;
    if (isRelayStunCandidatePair)
    {
      v7 = GLUtilLinkTypeMaskForCandidatePair(v15);
      retryCountPerLinkType = self->super._retryCountPerLinkType;
      v9 = [MEMORY[0x1E696AD98] numberWithInt:v7];
      v10 = [(NSMutableDictionary *)retryCountPerLinkType objectForKey:v9];
      intValue = [v10 intValue];

      v5 = v15;
      if (intValue >= 1)
      {
        v12 = self->super._retryCountPerLinkType;
        v13 = [MEMORY[0x1E696AD98] numberWithInt:0];
        v14 = [MEMORY[0x1E696AD98] numberWithInt:v7];
        [(NSMutableDictionary *)v12 setObject:v13 forKey:v14];

        v5 = v15;
      }
    }
  }
}

- (BOOL)_postProcessQUICAllocbindResponse:(id)response candidatePair:(id)pair
{
  pairCopy = pair;
  candidatePairToken = [pairCopy candidatePairToken];
  LOBYTE(self) = [(IDSFTGL *)self _postProcessAllocbindResponse:0 candidatePair:pairCopy candidatePairToken:candidatePairToken];

  return self;
}

- (id)linkEngineForSessionInfo:(id)info
{
  v54[1] = *MEMORY[0x1E69E9840];
  infoCopy = info;
  if (!self->_linkEnginesByRemotePushToken)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    linkEnginesByRemotePushToken = self->_linkEnginesByRemotePushToken;
    self->_linkEnginesByRemotePushToken = Mutable;
  }

  if ([infoCopy allocateType] != 1)
  {
    v10 = +[IDSFoundationLog FTGL];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A7AD9000, v10, OS_LOG_TYPE_DEFAULT, "linkEngineForSessionInfo: not creating link engine because allocation type is not two-way", buf, 2u);
    }

    goto LABEL_37;
  }

  if (([infoCopy isInitiator] & 1) == 0)
  {
    null = [MEMORY[0x1E695DFB0] null];
    v54[0] = null;
    allocatedPushTokens2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:1];

    goto LABEL_10;
  }

  allocatedPushTokens = [infoCopy allocatedPushTokens];
  v8 = [allocatedPushTokens count];

  if (!v8)
  {
    v10 = +[IDSFoundationLog FTGL];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1A7E11E18(v10);
    }

LABEL_37:
    v26 = 0;
    goto LABEL_38;
  }

  allocatedPushTokens2 = [infoCopy allocatedPushTokens];
LABEL_10:
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v10 = allocatedPushTokens2;
  v12 = [v10 countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v45;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v45 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = [(NSMutableDictionary *)self->_linkEnginesByRemotePushToken objectForKeyedSubscript:*(*(&v44 + 1) + 8 * i)];
        if (v16)
        {
          v26 = v16;
          v35 = +[IDSFoundationLog FTGL];
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            allocatedPushTokens3 = [infoCopy allocatedPushTokens];
            *buf = 138412546;
            v50 = allocatedPushTokens3;
            v51 = 2112;
            v52 = v26;
            _os_log_impl(&dword_1A7AD9000, v35, OS_LOG_TYPE_DEFAULT, "linkEngineForSessionInfo: found link engine for session for push tokens %@, engine: %@", buf, 0x16u);
          }

          goto LABEL_38;
        }
      }

      v13 = [v10 countByEnumeratingWithState:&v44 objects:v53 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v17 = +[IDSFoundationLog FTGL];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    allocatedPushTokens4 = [infoCopy allocatedPushTokens];
    v19 = self->_linkEnginesByRemotePushToken;
    *buf = 138412546;
    v50 = allocatedPushTokens4;
    v51 = 2112;
    v52 = v19;
    _os_log_impl(&dword_1A7AD9000, v17, OS_LOG_TYPE_DEFAULT, "linkEngineForSessionInfo: creating new link engine for push tokens %@. Existing link engines: %@", buf, 0x16u);
  }

  v39 = [IDSGLLinkEngine alloc];
  v20 = [[IDSWeakGLLinkConnector alloc] initWithGLLinkConnector:self];
  allocateType = [infoCopy allocateType];
  isInitiator = [infoCopy isInitiator];
  useLinkSelection = self->super._useLinkSelection;
  recordExpensiveQualityMetrics = self->super._recordExpensiveQualityMetrics;
  linkSelectionStrategy = self->super._linkSelectionStrategy;
  v25 = [IDSServerBag sharedInstanceForBagType:0];
  v26 = [(IDSGLLinkEngine *)v39 initWithLinkConnector:v20 allocateType:allocateType isInitiator:isInitiator useLinkSelection:useLinkSelection recordExpensiveQualityMetrics:recordExpensiveQualityMetrics linkSelectionStrategy:linkSelectionStrategy serverBag:v25 timeFn:&unk_1F1AAA1A0];

  v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Two-Way (FTGL) remotePushTokens=%@", v10];
  [(IDSGLLinkEngine *)v26 setTag:v27];

  [(IDSGLLinkEngine *)v26 registerEngine];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v10 = v10;
  v28 = [v10 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v41;
    do
    {
      for (j = 0; j != v29; ++j)
      {
        if (*v41 != v30)
        {
          objc_enumerationMutation(v10);
        }

        v32 = *(*(&v40 + 1) + 8 * j);
        if (([v32 isNull] & 1) == 0)
        {
          [(IDSGLLinkEngine *)v26 addRemotePushToken:v32];
        }

        [(NSMutableDictionary *)self->_linkEnginesByRemotePushToken setObject:v26 forKeyedSubscript:v32];
      }

      v29 = [v10 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v29);
  }

  v33 = +[IDSFoundationLog FTGL];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = self->_linkEnginesByRemotePushToken;
    *buf = 138412290;
    v50 = v34;
    _os_log_impl(&dword_1A7AD9000, v33, OS_LOG_TYPE_DEFAULT, "linkEngineForSessionInfo: all link engines: %@", buf, 0xCu);
  }

LABEL_38:

  return v26;
}

- (void)_didCreateSession:(id)session
{
  v21 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v5 = sessionCopy;
  if (self->super._isInitiator)
  {
    localInterfacePreference = [sessionCopy localInterfacePreference];
  }

  else
  {
    sessionInfoDict = [sessionCopy sessionInfoDict];
    v8 = [sessionInfoDict objectForKey:@"qia"];
    localInterfacePreference = [v8 intValue];
  }

  remoteInterfacePreference = [v5 remoteInterfacePreference];
  isInitiator = self->super._isInitiator;
  v11 = +[IDSFoundationLog FTGL];
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (isInitiator)
  {
    if (!v12)
    {
      goto LABEL_10;
    }

    v19 = 67109120;
    v20 = localInterfacePreference;
    v13 = "_didCreateSession: is initiator; preferred interface: %d";
  }

  else
  {
    if (!v12)
    {
      goto LABEL_10;
    }

    v19 = 67109120;
    v20 = localInterfacePreference;
    v13 = "_didCreateSession: preferred interface from initiator: %d";
  }

  _os_log_impl(&dword_1A7AD9000, v11, OS_LOG_TYPE_DEFAULT, v13, &v19, 8u);
LABEL_10:

  sessionInfo = [v5 sessionInfo];
  allocateType = [sessionInfo allocateType];

  if (allocateType == 1)
  {
    linkEngine = [v5 linkEngine];
    qrSessionID = [v5 qrSessionID];
    v18 = [(IDSGlobalLink *)self _remoteCandidatesForRelaySession:v5];
    [linkEngine addTwoWayAllocation:qrSessionID localAffinity:localInterfacePreference remoteAffinity:remoteInterfacePreference resolvedCandidates:v18];
  }
}

- (void)_willUpdateLinksForSession:(id)session
{
  sessionCopy = session;
  if (self->super._isInitiator)
  {
    localInterfacePreference = [sessionCopy localInterfacePreference];
  }

  else
  {
    sessionInfoDict = [sessionCopy sessionInfoDict];
    v6 = [sessionInfoDict objectForKey:@"qia"];
    localInterfacePreference = [v6 intValue];
  }

  remoteInterfacePreference = [sessionCopy remoteInterfacePreference];
  sessionInfo = [sessionCopy sessionInfo];
  allocateType = [sessionInfo allocateType];

  if (allocateType == 1)
  {
    linkEngine = [sessionCopy linkEngine];
    qrSessionID = [sessionCopy qrSessionID];
    v12 = [(IDSGlobalLink *)self _remoteCandidatesForRelaySession:sessionCopy];
    [linkEngine addTwoWayAllocation:qrSessionID localAffinity:localInterfacePreference remoteAffinity:remoteInterfacePreference resolvedCandidates:v12];
  }
}

@end