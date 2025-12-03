@interface IDSGlobalLinkSession
- (BOOL)shouldLinkEngineAllowOngoingTasks;
- (BOOL)wantsToBeConnected;
- (IDSGlobalLinkSession)initWithSessionInfo:(id)info sessionInfoDict:(id)dict linkEngine:(id)engine;
- (NSData)sessionToken;
- (const)serverAddress;
- (const)serverAddressV6;
- (int64_t)desiredRelayConnectionBehavior;
- (void)_handleSessionConvergenceTimer;
- (void)_handleSessionGoAwayTimer;
- (void)invalidate;
- (void)setSessionInfo:(id)info sessionInfoDict:(id)dict;
- (void)startSessionConvergenceTimer:(int)timer block:(id)block;
- (void)startSessionGoAwayTimer:(int)timer block:(id)block;
- (void)stopSessionConvergenceTimer;
- (void)stopSessionGoAwayTimer;
@end

@implementation IDSGlobalLinkSession

- (IDSGlobalLinkSession)initWithSessionInfo:(id)info sessionInfoDict:(id)dict linkEngine:(id)engine
{
  infoCopy = info;
  dictCopy = dict;
  engineCopy = engine;
  v17.receiver = self;
  v17.super_class = IDSGlobalLinkSession;
  v12 = [(IDSGlobalLinkSession *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_sessionInfo, info);
    objc_storeStrong(&v13->_sessionInfoDict, dict);
    objc_storeStrong(&v13->_linkEngine, engine);
    array = [MEMORY[0x1E695DF70] array];
    remotePushTokens = v13->_remotePushTokens;
    v13->_remotePushTokens = array;

    -[IDSGlobalLinkSession setServerAddress:](v13, "setServerAddress:", [infoCopy serverAddress]);
    -[IDSGlobalLinkSession setServerAddressV6:](v13, "setServerAddressV6:", [infoCopy serverAddressIPv6]);
  }

  return v13;
}

- (int64_t)desiredRelayConnectionBehavior
{
  if (self->_acceptStatus == 2)
  {
    return 3;
  }

  if (self->_isPendingDisconnect)
  {
    return 2;
  }

  if (self->_wantsToJoin)
  {
    return 1;
  }

  if (self->_wantsInfo)
  {
    return 1;
  }

  return 3;
}

- (BOOL)shouldLinkEngineAllowOngoingTasks
{
  if (self->_acceptStatus == 2)
  {
    return 0;
  }

  else
  {
    return self->_isPendingDisconnect || self->_wantsToJoin || self->_wantsInfo;
  }
}

- (BOOL)wantsToBeConnected
{
  if (self->_isPendingDisconnect)
  {
    return 0;
  }

  else
  {
    return self->_wantsToJoin || self->_wantsInfo;
  }
}

- (const)serverAddress
{
  if (IsValidSA(&self->_serverAddress))
  {
    return &self->_serverAddress;
  }

  sessionInfo = self->_sessionInfo;

  return [(IDSQuickRelaySessionInfo *)sessionInfo serverAddress];
}

- (const)serverAddressV6
{
  if (IsValidSA(&self->_serverAddressV6))
  {
    return &self->_serverAddressV6;
  }

  sessionInfo = self->_sessionInfo;

  return [(IDSQuickRelaySessionInfo *)sessionInfo serverAddressIPv6];
}

- (NSData)sessionToken
{
  sessionToken = self->_sessionToken;
  if (sessionToken)
  {
    relaySessionToken = sessionToken;
  }

  else
  {
    relaySessionToken = [(IDSQuickRelaySessionInfo *)self->_sessionInfo relaySessionToken];
  }

  return relaySessionToken;
}

- (void)_handleSessionConvergenceTimer
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sessionConvergenceTimer = self->_sessionConvergenceTimer;
    v5 = _Block_copy(self->_sessionConvergenceBlock);
    *buf = 134218240;
    v11 = sessionConvergenceTimer;
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "session convergence timer %p fired, block %p.", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v8 = self->_sessionConvergenceTimer;
      v9 = _Block_copy(self->_sessionConvergenceBlock);
      _IDSLogTransport(@"GL", @"IDS", @"session convergence timer %p fired, block %p.");

      if (_IDSShouldLog())
      {
        v8 = self->_sessionConvergenceTimer;
        v9 = _Block_copy(self->_sessionConvergenceBlock);
        _IDSLogV(0, @"IDSFoundation", @"GL", @"session convergence timer %p fired, block %p.");
      }
    }
  }

  sessionConvergenceBlock = self->_sessionConvergenceBlock;
  if (sessionConvergenceBlock)
  {
    sessionConvergenceBlock[2](sessionConvergenceBlock, v6);
  }

  [(IDSGlobalLinkSession *)self stopSessionConvergenceTimer:v8];
}

- (void)startSessionConvergenceTimer:(int)timer block:(id)block
{
  v4 = *&timer;
  v46 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (*&self->_sessionConvergenceTimer == 0)
  {
    v17 = im_primary_queue();
    v18 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v17);
    sessionConvergenceTimer = self->_sessionConvergenceTimer;
    self->_sessionConvergenceTimer = v18;

    v20 = self->_sessionConvergenceTimer;
    v21 = dispatch_time(0, 1000000000 * v4);
    dispatch_source_set_timer(v20, v21, 1000000000 * v4, 0x5F5E100uLL);
    v22 = self->_sessionConvergenceTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1A7C0AC44;
    handler[3] = &unk_1E77E0818;
    handler[4] = self;
    dispatch_source_set_event_handler(v22, handler);
    v23 = _Block_copy(blockCopy);
    sessionConvergenceBlock = self->_sessionConvergenceBlock;
    self->_sessionConvergenceBlock = v23;

    dispatch_resume(self->_sessionConvergenceTimer);
    v25 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = self->_sessionConvergenceTimer;
      v27 = _Block_copy(self->_sessionConvergenceBlock);
      idsSessionID = [(IDSGlobalLinkSession *)self idsSessionID];
      qrSessionID = [(IDSGlobalLinkSession *)self qrSessionID];
      *buf = 134219010;
      v43 = v26;
      v44 = 1024;
      *v45 = v4;
      *&v45[4] = 2048;
      *&v45[6] = v27;
      *&v45[14] = 2112;
      *&v45[16] = idsSessionID;
      *&v45[24] = 2112;
      *&v45[26] = qrSessionID;
      _os_log_impl(&dword_1A7AD9000, v25, OS_LOG_TYPE_DEFAULT, "start session convergence timer %p, timeout %d sec, block %p for idsSessionID=%@ qrSessionID=%@.", buf, 0x30u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v30 = self->_sessionConvergenceTimer;
        v31 = _Block_copy(self->_sessionConvergenceBlock);
        idsSessionID2 = [(IDSGlobalLinkSession *)self idsSessionID];
        qrSessionID2 = [(IDSGlobalLinkSession *)self qrSessionID];
        v36 = v31;
        _IDSLogTransport(@"GL", @"IDS", @"start session convergence timer %p, timeout %d sec, block %p for idsSessionID=%@ qrSessionID=%@.");

        if (_IDSShouldLog())
        {
          v33 = _Block_copy(self->_sessionConvergenceBlock);
          v34 = [(IDSGlobalLinkSession *)self idsSessionID:v30];
          qrSessionID3 = [(IDSGlobalLinkSession *)self qrSessionID];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"start session convergence timer %p, timeout %d sec, block %p for idsSessionID=%@ qrSessionID=%@.");
        }
      }
    }
  }

  else
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_sessionConvergenceTimer;
      v9 = _Block_copy(self->_sessionConvergenceBlock);
      idsSessionID3 = [(IDSGlobalLinkSession *)self idsSessionID];
      qrSessionID4 = [(IDSGlobalLinkSession *)self qrSessionID];
      *buf = 134218754;
      v43 = v8;
      v44 = 2048;
      *v45 = v9;
      *&v45[8] = 2112;
      *&v45[10] = idsSessionID3;
      *&v45[18] = 2112;
      *&v45[20] = qrSessionID4;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "session convergence timer %p and block %p for idsSessionID=%@ qrSessionID=%@ are already scheduled.", buf, 0x2Au);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v12 = self->_sessionConvergenceTimer;
        v13 = _Block_copy(self->_sessionConvergenceBlock);
        idsSessionID4 = [(IDSGlobalLinkSession *)self idsSessionID];
        qrSessionID5 = [(IDSGlobalLinkSession *)self qrSessionID];
        v35 = v13;
        _IDSLogTransport(@"GL", @"IDS", @"session convergence timer %p and block %p for idsSessionID=%@ qrSessionID=%@ are already scheduled.");

        if (_IDSShouldLog())
        {
          v15 = _Block_copy(self->_sessionConvergenceBlock);
          v16 = [(IDSGlobalLinkSession *)self idsSessionID:v12];
          qrSessionID6 = [(IDSGlobalLinkSession *)self qrSessionID];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"session convergence timer %p and block %p for idsSessionID=%@ qrSessionID=%@ are already scheduled.");
        }
      }
    }
  }
}

- (void)stopSessionConvergenceTimer
{
  v15 = *MEMORY[0x1E69E9840];
  sessionConvergenceTimer = self->_sessionConvergenceTimer;
  if (sessionConvergenceTimer)
  {
    dispatch_source_cancel(sessionConvergenceTimer);
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = self->_sessionConvergenceTimer;
      v6 = _Block_copy(self->_sessionConvergenceBlock);
      *buf = 134218240;
      v12 = v5;
      v13 = 2048;
      v14 = v6;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "stop session convergence timer %p, block %p.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v9 = _Block_copy(self->_sessionConvergenceBlock);
      _IDSLogTransport(@"GL", @"IDS", @"stop session convergence timer %p, block %p.");

      if (_IDSShouldLog())
      {
        v10 = _Block_copy(self->_sessionConvergenceBlock);
        _IDSLogV(0, @"IDSFoundation", @"GL", @"stop session convergence timer %p, block %p.");
      }
    }

    v7 = self->_sessionConvergenceTimer;
    self->_sessionConvergenceTimer = 0;

    sessionConvergenceBlock = self->_sessionConvergenceBlock;
    self->_sessionConvergenceBlock = 0;
  }
}

- (void)_handleSessionGoAwayTimer
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sessionConvergenceTimer = self->_sessionConvergenceTimer;
    v5 = _Block_copy(self->_sessionConvergenceBlock);
    *buf = 134218240;
    v11 = sessionConvergenceTimer;
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&dword_1A7AD9000, v3, OS_LOG_TYPE_DEFAULT, "session goaway timer %p fired, block %p.", buf, 0x16u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      v8 = self->_sessionConvergenceTimer;
      v9 = _Block_copy(self->_sessionConvergenceBlock);
      _IDSLogTransport(@"GL", @"IDS", @"session goaway timer %p fired, block %p.");

      if (_IDSShouldLog())
      {
        v8 = self->_sessionConvergenceTimer;
        v9 = _Block_copy(self->_sessionConvergenceBlock);
        _IDSLogV(0, @"IDSFoundation", @"GL", @"session goaway timer %p fired, block %p.");
      }
    }
  }

  sessionGoAwayBlock = self->_sessionGoAwayBlock;
  if (sessionGoAwayBlock)
  {
    sessionGoAwayBlock[2](sessionGoAwayBlock, v6);
  }

  [(IDSGlobalLinkSession *)self stopSessionGoAwayTimer:v8];
}

- (void)startSessionGoAwayTimer:(int)timer block:(id)block
{
  v4 = *&timer;
  v40 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (*&self->_sessionGoAwayTimer == 0)
  {
    v14 = im_primary_queue();
    v15 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v14);
    sessionGoAwayTimer = self->_sessionGoAwayTimer;
    self->_sessionGoAwayTimer = v15;

    v17 = self->_sessionGoAwayTimer;
    v18 = dispatch_time(0, 1000000000 * v4);
    dispatch_source_set_timer(v17, v18, 1000000000 * v4, 0x5F5E100uLL);
    v19 = self->_sessionGoAwayTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1A7C0B420;
    handler[3] = &unk_1E77E0818;
    handler[4] = self;
    dispatch_source_set_event_handler(v19, handler);
    v20 = _Block_copy(blockCopy);
    sessionGoAwayBlock = self->_sessionGoAwayBlock;
    self->_sessionGoAwayBlock = v20;

    dispatch_resume(self->_sessionGoAwayTimer);
    v22 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = self->_sessionGoAwayTimer;
      v24 = _Block_copy(self->_sessionGoAwayBlock);
      qrSessionID = [(IDSGlobalLinkSession *)self qrSessionID];
      *buf = 134218754;
      v37 = v23;
      v38 = 1024;
      *v39 = v4;
      *&v39[4] = 2048;
      *&v39[6] = v24;
      *&v39[14] = 2112;
      *&v39[16] = qrSessionID;
      _os_log_impl(&dword_1A7AD9000, v22, OS_LOG_TYPE_DEFAULT, "start session goaway timer %p, timeout %d sec, block %p for %@.", buf, 0x26u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v26 = self->_sessionGoAwayTimer;
        v27 = _Block_copy(self->_sessionGoAwayBlock);
        [(IDSGlobalLinkSession *)self qrSessionID];
        v33 = v32 = v27;
        _IDSLogTransport(@"GL", @"IDS", @"start session goaway timer %p, timeout %d sec, block %p for %@.");

        if (_IDSShouldLog())
        {
          v28 = _Block_copy(self->_sessionGoAwayBlock);
          v34 = [(IDSGlobalLinkSession *)self qrSessionID:v26];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"start session goaway timer %p, timeout %d sec, block %p for %@.");
        }
      }
    }
  }

  else
  {
    v7 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_sessionGoAwayTimer;
      v9 = _Block_copy(self->_sessionGoAwayBlock);
      qrSessionID2 = [(IDSGlobalLinkSession *)self qrSessionID];
      *buf = 134218498;
      v37 = v8;
      v38 = 2048;
      *v39 = v9;
      *&v39[8] = 2112;
      *&v39[10] = qrSessionID2;
      _os_log_impl(&dword_1A7AD9000, v7, OS_LOG_TYPE_DEFAULT, "session goaway timer %p and block %p for %@ are already scheduled.", buf, 0x20u);
    }

    if (os_log_shim_legacy_logging_enabled())
    {
      if (_IDSShouldLogTransport())
      {
        v11 = self->_sessionGoAwayTimer;
        v12 = _Block_copy(self->_sessionGoAwayBlock);
        [(IDSGlobalLinkSession *)self qrSessionID];
        v30 = v29 = v12;
        _IDSLogTransport(@"GL", @"IDS", @"session goaway timer %p and block %p for %@ are already scheduled.");

        if (_IDSShouldLog())
        {
          v13 = _Block_copy(self->_sessionGoAwayBlock);
          v31 = [(IDSGlobalLinkSession *)self qrSessionID:v11];
          _IDSLogV(0, @"IDSFoundation", @"GL", @"session goaway timer %p and block %p for %@ are already scheduled.");
        }
      }
    }
  }
}

- (void)stopSessionGoAwayTimer
{
  v15 = *MEMORY[0x1E69E9840];
  sessionGoAwayTimer = self->_sessionGoAwayTimer;
  if (sessionGoAwayTimer)
  {
    dispatch_source_cancel(sessionGoAwayTimer);
    v4 = OSLogHandleForTransportCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = self->_sessionGoAwayTimer;
      v6 = _Block_copy(self->_sessionGoAwayBlock);
      *buf = 134218240;
      v12 = v5;
      v13 = 2048;
      v14 = v6;
      _os_log_impl(&dword_1A7AD9000, v4, OS_LOG_TYPE_DEFAULT, "stop session GoAway timer %p, block %p.", buf, 0x16u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLogTransport())
    {
      v9 = _Block_copy(self->_sessionGoAwayBlock);
      _IDSLogTransport(@"GL", @"IDS", @"stop session GoAway timer %p, block %p.");

      if (_IDSShouldLog())
      {
        v10 = _Block_copy(self->_sessionGoAwayBlock);
        _IDSLogV(0, @"IDSFoundation", @"GL", @"stop session GoAway timer %p, block %p.");
      }
    }

    v7 = self->_sessionGoAwayTimer;
    self->_sessionGoAwayTimer = 0;

    sessionGoAwayBlock = self->_sessionGoAwayBlock;
    self->_sessionGoAwayBlock = 0;
  }
}

- (void)setSessionInfo:(id)info sessionInfoDict:(id)dict
{
  infoCopy = info;
  dictCopy = dict;
  v8 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_1A7AD9000, v8, OS_LOG_TYPE_DEFAULT, "setSessionInfo and sessionInfoDict.", v14, 2u);
  }

  if (os_log_shim_legacy_logging_enabled())
  {
    if (_IDSShouldLogTransport())
    {
      _IDSLogTransport(@"GL", @"IDS", @"setSessionInfo and sessionInfoDict.");
      if (_IDSShouldLog())
      {
        _IDSLogV(0, @"IDSFoundation", @"GL", @"setSessionInfo and sessionInfoDict.");
      }
    }
  }

  sessionToken = self->_sessionToken;
  self->_sessionToken = 0;

  *&self->_serverAddressV6.ss_len = 0u;
  p_serverAddressV6 = &self->_serverAddressV6;
  *&p_serverAddressV6[-1].__ss_pad2[80] = 0u;
  *&p_serverAddressV6[-1].__ss_pad2[96] = 0u;
  *&p_serverAddressV6[-1].__ss_pad2[48] = 0u;
  *&p_serverAddressV6[-1].__ss_pad2[64] = 0u;
  *&p_serverAddressV6[-1].__ss_pad2[16] = 0u;
  *&p_serverAddressV6[-1].__ss_pad2[32] = 0u;
  *&p_serverAddressV6[-1].ss_len = 0u;
  *p_serverAddressV6[-1].__ss_pad2 = 0u;
  *p_serverAddressV6->__ss_pad2 = 0u;
  *&p_serverAddressV6->__ss_pad2[16] = 0u;
  *&p_serverAddressV6->__ss_pad2[32] = 0u;
  *&p_serverAddressV6->__ss_pad2[48] = 0u;
  *&p_serverAddressV6->__ss_pad2[64] = 0u;
  *&p_serverAddressV6->__ss_pad2[80] = 0u;
  *&p_serverAddressV6->__ss_pad2[96] = 0u;
  v11 = *&p_serverAddressV6[1].__ss_pad2[8];
  *&p_serverAddressV6[1].__ss_pad2[8] = infoCopy;
  v12 = infoCopy;

  v13 = *&p_serverAddressV6[1].__ss_pad2[16];
  *&p_serverAddressV6[1].__ss_pad2[16] = dictCopy;
}

- (void)invalidate
{
  sessionInfo = self->_sessionInfo;
  self->_sessionInfo = 0;

  sessionInfoDict = self->_sessionInfoDict;
  self->_sessionInfoDict = 0;

  linkEngine = self->_linkEngine;
  self->_linkEngine = 0;

  remotePushTokens = self->_remotePushTokens;
  self->_remotePushTokens = 0;
}

@end