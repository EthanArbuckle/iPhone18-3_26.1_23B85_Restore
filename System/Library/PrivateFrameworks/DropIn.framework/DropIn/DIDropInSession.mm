@interface DIDropInSession
+ (id)stringForDropInSessionState:(unint64_t)state;
+ (id)stringForDropInSessionStateReason:(unint64_t)reason;
- (BOOL)isEqual:(id)equal;
- (BOOL)isUplinkMuted;
- (DIDropInSession)initWithCoder:(id)coder;
- (DIDropInSession)initWithNullableRequest:(id)request;
- (DIDropInSessionDelegate)delegate;
- (DIXPCConnectionManager)connectionManager;
- (NSArray)participants;
- (NSDate)sessionEndDate;
- (NSDate)sessionStartTimeoutDate;
- (id)description;
- (void)cancelWithError:(id)error completionHandler:(id)handler;
- (void)encodeWithCoder:(id)coder;
- (void)endWithCompletionHandler:(id)handler;
- (void)failWithError:(id)error;
- (void)setDelegate:(id)delegate;
- (void)setParticipants:(id)participants;
- (void)setSessionEndDate:(id)date;
- (void)setSessionStartTimeoutDate:(id)date;
- (void)setState:(unint64_t)state;
- (void)startWithCompletionHandler:(id)handler;
- (void)updateUplinkMuteStatus:(BOOL)status;
- (void)updateWithSession:(id)session;
@end

@implementation DIDropInSession

- (DIDropInSession)initWithNullableRequest:(id)request
{
  requestCopy = request;
  v15.receiver = self;
  v15.super_class = DIDropInSession;
  v6 = [(DIDropInSession *)&v15 init];
  if (v6)
  {
    v7 = objc_opt_new();
    lock = v6->_lock;
    v6->_lock = v7;

    v6->_needsInitialUplinkMuteStatus = 1;
    v6->_state = 2;
    v6->_stateReason = 0;
    v9 = objc_opt_new();
    participants = v6->_participants;
    v6->_participants = v9;

    v11 = objc_opt_new();
    identifier = v6->_identifier;
    v6->_identifier = v11;

    objc_storeStrong(&v6->_request, request);
    connectionManager = [requestCopy connectionManager];
    objc_storeWeak(&v6->_connectionManager, connectionManager);
  }

  return v6;
}

- (void)setDelegate:(id)delegate
{
  v11 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  v5 = DILogHandleDropInSession();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = &stru_285D02BA8;
    v9 = 2112;
    v10 = delegateCopy;
    _os_log_impl(&dword_249DA7000, v5, OS_LOG_TYPE_DEFAULT, "%@Delegate set to %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(DIDropInSession *)self identifier];
      identifier2 = [(DIDropInSession *)v5 identifier];

      v8 = [identifier isEqual:identifier2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  identifier = [(DIDropInSession *)self identifier];
  v4 = [DIDropInSession stringForDropInSessionState:[(DIDropInSession *)self state]];
  v5 = [DIDropInSession stringForDropInSessionStateReason:[(DIDropInSession *)self stateReason]];
  sessionStartTimeoutDate = [(DIDropInSession *)self sessionStartTimeoutDate];
  sessionEndDate = [(DIDropInSession *)self sessionEndDate];
  request = [(DIDropInSession *)self request];
  participants = [(DIDropInSession *)self participants];
  connectionManager = [(DIDropInSession *)self connectionManager];
  delegate = [(DIDropInSession *)self delegate];
  v12 = [v15 stringWithFormat:@"<%@: %p> Identifier = %@, State = %@, State Reason = %@, StartTimeout = %@, EndDate = %@, Request = %@, Participants = %@, Connection Manager = %p, Delegate = %@", v14, self, identifier, v4, v5, sessionStartTimeoutDate, sessionEndDate, request, participants, connectionManager, delegate];

  return v12;
}

- (void)setState:(unint64_t)state
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = DILogHandleDropInSession();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [DIDropInSession stringForDropInSessionState:state];
    *buf = 138412802;
    v23 = &stru_285D02BA8;
    v24 = 2112;
    v25 = v6;
    v26 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_249DA7000, v5, OS_LOG_TYPE_DEFAULT, "%@Updating state to %@ for session %@", buf, 0x20u);
  }

  lock = [(DIDropInSession *)self lock];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __28__DIDropInSession_setState___block_invoke;
  v21[3] = &unk_278FB8CC8;
  v21[4] = self;
  v21[5] = state;
  [lock di_synchronize:v21];

  delegate = [(DIDropInSession *)self delegate];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    connectionManager = [(DIDropInSession *)self connectionManager];
    manager = [connectionManager manager];
    clientQueue = [manager clientQueue];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __28__DIDropInSession_setState___block_invoke_2;
    v20[3] = &unk_278FB8CC8;
    v20[4] = self;
    v20[5] = state;
    [DIUtilities onQueue:clientQueue block:v20];
  }

  delegate2 = [(DIDropInSession *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    connectionManager2 = [(DIDropInSession *)self connectionManager];
    manager2 = [connectionManager2 manager];
    clientQueue2 = [manager2 clientQueue];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __28__DIDropInSession_setState___block_invoke_32;
    v19[3] = &unk_278FB8CC8;
    v19[4] = self;
    v19[5] = state;
    [DIUtilities onQueue:clientQueue2 block:v19];
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __28__DIDropInSession_setState___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = DILogHandleDropInSession();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [DIDropInSession stringForDropInSessionState:*(a1 + 40)];
    v4 = *(a1 + 32);
    v7 = 138412802;
    v8 = &stru_285D02BA8;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_249DA7000, v2, OS_LOG_TYPE_DEFAULT, "%@Notify delegate: Updating state to %@ for session %@", &v7, 0x20u);
  }

  v5 = [*(a1 + 32) delegate];
  [v5 session:*(a1 + 32) didUpdateState:*(a1 + 40)];

  v6 = *MEMORY[0x277D85DE8];
}

void __28__DIDropInSession_setState___block_invoke_32(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = DILogHandleDropInSession();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [DIDropInSession stringForDropInSessionState:*(a1 + 40)];
    v4 = *(a1 + 32);
    v7 = 138413058;
    v8 = &stru_285D02BA8;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    v13 = 2048;
    v14 = [v4 stateReason];
    _os_log_impl(&dword_249DA7000, v2, OS_LOG_TYPE_DEFAULT, "%@Notify delegate: Updating state to %@ for session %@ with reason %lu", &v7, 0x2Au);
  }

  v5 = [*(a1 + 32) delegate];
  [v5 session:*(a1 + 32) didUpdateState:*(a1 + 40) reason:{objc_msgSend(*(a1 + 32), "stateReason")}];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)startWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  connectionManager = [(DIDropInSession *)self connectionManager];
  manager = [connectionManager manager];
  clientContext = [manager clientContext];

  connectionManager2 = [(DIDropInSession *)self connectionManager];
  manager2 = [connectionManager2 manager];
  connection = [manager2 connection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __46__DIDropInSession_startWithCompletionHandler___block_invoke;
  v17[3] = &unk_278FB8D18;
  v17[4] = self;
  v11 = handlerCopy;
  v18 = v11;
  v12 = [connection remoteObjectProxyWithErrorHandler:v17];
  request = [(DIDropInSession *)self request];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __46__DIDropInSession_startWithCompletionHandler___block_invoke_2;
  v15[3] = &unk_278FB8D40;
  v15[4] = self;
  v16 = v11;
  v14 = v11;
  [v12 startSessionWithContext:clientContext request:request completionHandler:v15];
}

void __46__DIDropInSession_startWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DILogHandleDropInSession();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    *buf = 138412802;
    v16 = &stru_285D02BA8;
    v17 = 2112;
    v18 = v3;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_249DA7000, v4, OS_LOG_TYPE_ERROR, "%@Failed to start Session Error = %@, Session = %@", buf, 0x20u);
  }

  v6 = [*(a1 + 32) connectionManager];
  v7 = [v6 manager];
  v8 = [v7 clientQueue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__DIDropInSession_startWithCompletionHandler___block_invoke_33;
  v12[3] = &unk_278FB8CF0;
  v9 = *(a1 + 40);
  v13 = v3;
  v14 = v9;
  v10 = v3;
  [DIUtilities onQueue:v8 block:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __46__DIDropInSession_startWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    [*(a1 + 32) setStateReason:0];
    [*(a1 + 32) setState:6];
    v5 = DILogHandleDropInSession();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      *buf = 138412802;
      v22 = &stru_285D02BA8;
      v23 = 2112;
      v24 = v4;
      v25 = 2112;
      v26 = v6;
      v7 = "%@Failed to start Error = %@, Session = %@";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 32;
LABEL_6:
      _os_log_impl(&dword_249DA7000, v8, v9, v7, buf, v10);
    }
  }

  else
  {
    v5 = DILogHandleDropInSession();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 138412546;
      v22 = &stru_285D02BA8;
      v23 = 2112;
      v24 = v11;
      v7 = "%@Started Session %@";
      v8 = v5;
      v9 = OS_LOG_TYPE_DEFAULT;
      v10 = 22;
      goto LABEL_6;
    }
  }

  v12 = [*(a1 + 32) connectionManager];
  v13 = [v12 manager];
  v14 = [v13 clientQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __46__DIDropInSession_startWithCompletionHandler___block_invoke_35;
  v18[3] = &unk_278FB8CF0;
  v15 = *(a1 + 40);
  v19 = v4;
  v20 = v15;
  v16 = v4;
  [DIUtilities onQueue:v14 block:v18];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)endWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  connectionManager = [(DIDropInSession *)self connectionManager];
  manager = [connectionManager manager];
  clientContext = [manager clientContext];

  connectionManager2 = [(DIDropInSession *)self connectionManager];
  manager2 = [connectionManager2 manager];
  connection = [manager2 connection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __44__DIDropInSession_endWithCompletionHandler___block_invoke;
  v16[3] = &unk_278FB8D18;
  v16[4] = self;
  v11 = handlerCopy;
  v17 = v11;
  v12 = [connection remoteObjectProxyWithErrorHandler:v16];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __44__DIDropInSession_endWithCompletionHandler___block_invoke_2;
  v14[3] = &unk_278FB8D18;
  v14[4] = self;
  v15 = v11;
  v13 = v11;
  [v12 endSessionWithContext:clientContext session:self completionHandler:v14];
}

void __44__DIDropInSession_endWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DILogHandleDropInSession();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v15 = &stru_285D02BA8;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_249DA7000, v4, OS_LOG_TYPE_ERROR, "%@Failed to End Session %@", buf, 0x16u);
  }

  v5 = [*(a1 + 32) connectionManager];
  v6 = [v5 manager];
  v7 = [v6 clientQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__DIDropInSession_endWithCompletionHandler___block_invoke_37;
  v11[3] = &unk_278FB8CF0;
  v8 = *(a1 + 40);
  v12 = v3;
  v13 = v8;
  v9 = v3;
  [DIUtilities onQueue:v7 block:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __44__DIDropInSession_endWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connectionManager];
  v5 = [v4 manager];
  v6 = [v5 clientQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__DIDropInSession_endWithCompletionHandler___block_invoke_3;
  v9[3] = &unk_278FB8CF0;
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  [DIUtilities onQueue:v6 block:v9];
}

- (void)cancelWithError:(id)error completionHandler:(id)handler
{
  handlerCopy = handler;
  errorCopy = error;
  connectionManager = [(DIDropInSession *)self connectionManager];
  manager = [connectionManager manager];
  clientContext = [manager clientContext];

  connectionManager2 = [(DIDropInSession *)self connectionManager];
  manager2 = [connectionManager2 manager];
  connection = [manager2 connection];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __53__DIDropInSession_cancelWithError_completionHandler___block_invoke;
  v19[3] = &unk_278FB8D18;
  v19[4] = self;
  v14 = handlerCopy;
  v20 = v14;
  v15 = [connection remoteObjectProxyWithErrorHandler:v19];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __53__DIDropInSession_cancelWithError_completionHandler___block_invoke_2;
  v17[3] = &unk_278FB8D18;
  v17[4] = self;
  v18 = v14;
  v16 = v14;
  [v15 cancelSessionWithContext:clientContext session:self error:errorCopy completionHandler:v17];
}

void __53__DIDropInSession_cancelWithError_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DILogHandleDropInSession();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v15 = &stru_285D02BA8;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&dword_249DA7000, v4, OS_LOG_TYPE_ERROR, "%@Failed to cancel session %@", buf, 0x16u);
  }

  v5 = [*(a1 + 32) connectionManager];
  v6 = [v5 manager];
  v7 = [v6 clientQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__DIDropInSession_cancelWithError_completionHandler___block_invoke_38;
  v11[3] = &unk_278FB8CF0;
  v8 = *(a1 + 40);
  v12 = v3;
  v13 = v8;
  v9 = v3;
  [DIUtilities onQueue:v7 block:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __53__DIDropInSession_cancelWithError_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) connectionManager];
  v5 = [v4 manager];
  v6 = [v5 clientQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__DIDropInSession_cancelWithError_completionHandler___block_invoke_3;
  v9[3] = &unk_278FB8CF0;
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v7;
  v8 = v3;
  [DIUtilities onQueue:v6 block:v9];
}

- (BOOL)isUplinkMuted
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = DILogHandleDropInSession();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = &stru_285D02BA8;
    _os_log_impl(&dword_249DA7000, v3, OS_LOG_TYPE_DEFAULT, "%@Getting uplink muted", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v10 = 0x2020000000;
  v11 = 0;
  lock = [(DIDropInSession *)self lock];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __32__DIDropInSession_isUplinkMuted__block_invoke;
  v8[3] = &unk_278FB8DB8;
  v8[4] = self;
  v8[5] = &buf;
  [lock di_synchronize:v8];

  v5 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

void __32__DIDropInSession_isUplinkMuted__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) needsInitialUplinkMuteStatus])
  {
    objc_initWeak(&location, *(a1 + 32));
    v2 = [*(a1 + 32) connectionManager];
    v3 = [v2 manager];
    v4 = [v3 connection];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __32__DIDropInSession_isUplinkMuted__block_invoke_2;
    v12[3] = &unk_278FB8D68;
    v12[4] = *(a1 + 40);
    v5 = [v4 synchronousRemoteObjectProxyWithErrorHandler:v12];
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __32__DIDropInSession_isUplinkMuted__block_invoke_39;
    v9 = &unk_278FB8D90;
    objc_copyWeak(&v11, &location);
    v10 = *(a1 + 40);
    [v5 getUplinkMutedForCurrentSessionWithCompletionHandler:&v6];

    if (([*(a1 + 32) needsInitialUplinkMuteStatus] & 1) == 0)
    {
      *(*(a1 + 32) + 8) = *(*(*(a1 + 40) + 8) + 24);
    }

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 8);
  }
}

void __32__DIDropInSession_isUplinkMuted__block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = 0;
  v4 = DILogHandleDropInSession();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412546;
    v7 = &stru_285D02BA8;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_249DA7000, v4, OS_LOG_TYPE_ERROR, "%@Failed to get uplink muted for current session %@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __32__DIDropInSession_isUplinkMuted__block_invoke_39(uint64_t a1, char a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (v5)
  {
    v8 = DILogHandleDropInSession();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412546;
      v11 = &stru_285D02BA8;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_249DA7000, v8, OS_LOG_TYPE_ERROR, "%@Failed to get uplink muted for current session %@", &v10, 0x16u);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
    [WeakRetained setNeedsInitialUplinkMuteStatus:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __34__DIDropInSession_setUplinkMuted___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = DILogHandleDropInSession();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412546;
    v6 = &stru_285D02BA8;
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_249DA7000, v3, OS_LOG_TYPE_ERROR, "%@Failed to set uplink muted %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __34__DIDropInSession_setUplinkMuted___block_invoke_41(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = DILogHandleDropInSession();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v12 = 138412546;
      v13 = &stru_285D02BA8;
      v14 = 1024;
      v15 = v6;
      v7 = "%@Failed to set uplink muted to %d";
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_249DA7000, v8, v9, v7, &v12, 0x12u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v12 = 138412546;
    v13 = &stru_285D02BA8;
    v14 = 1024;
    v15 = v10;
    v7 = "%@Uplink muted set to %d";
    v8 = v5;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (NSArray)participants
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  lock = [(DIDropInSession *)self lock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__DIDropInSession_participants__block_invoke;
  v6[3] = &unk_278FB8E20;
  v6[4] = self;
  v6[5] = &v7;
  [lock di_synchronize:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __31__DIDropInSession_participants__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setParticipants:(id)participants
{
  v30 = *MEMORY[0x277D85DE8];
  participantsCopy = participants;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  lock = [(DIDropInSession *)self lock];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __35__DIDropInSession_setParticipants___block_invoke;
  v21[3] = &unk_278FB8E20;
  v21[4] = self;
  v21[5] = &v22;
  [lock di_synchronize:v21];

  v6 = [MEMORY[0x277CBEB98] setWithArray:participantsCopy];
  if ([v23[5] isEqualToSet:v6])
  {
    v7 = DILogHandleDropInSession();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = &stru_285D02BA8;
      _os_log_impl(&dword_249DA7000, v7, OS_LOG_TYPE_INFO, "%@No changes in participant list", buf, 0xCu);
    }
  }

  else
  {
    lock2 = [(DIDropInSession *)self lock];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __35__DIDropInSession_setParticipants___block_invoke_43;
    v19[3] = &unk_278FB8E48;
    v19[4] = self;
    v9 = participantsCopy;
    v20 = v9;
    [lock2 di_synchronize:v19];

    delegate = [(DIDropInSession *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      connectionManager = [(DIDropInSession *)self connectionManager];
      manager = [connectionManager manager];
      clientQueue = [manager clientQueue];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __35__DIDropInSession_setParticipants___block_invoke_2;
      v16[3] = &unk_278FB8E48;
      v17 = v9;
      selfCopy = self;
      [DIUtilities onQueue:clientQueue block:v16];
    }
  }

  _Block_object_dispose(&v22, 8);
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __35__DIDropInSession_setParticipants___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB98] setWithArray:*(*(a1 + 32) + 16)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

uint64_t __35__DIDropInSession_setParticipants___block_invoke_43(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  return MEMORY[0x2821F96F8]();
}

void __35__DIDropInSession_setParticipants___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = DILogHandleDropInSession();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138412802;
    v8 = &stru_285D02BA8;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_249DA7000, v2, OS_LOG_TYPE_DEFAULT, "%@Notify delegate: Updating participants to %@ for session %@", &v7, 0x20u);
  }

  v5 = [*(a1 + 40) delegate];
  [v5 session:*(a1 + 40) didUpdateParticipants:*(a1 + 32)];

  v6 = *MEMORY[0x277D85DE8];
}

- (NSDate)sessionStartTimeoutDate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  lock = [(DIDropInSession *)self lock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__DIDropInSession_sessionStartTimeoutDate__block_invoke;
  v6[3] = &unk_278FB8E20;
  v6[4] = self;
  v6[5] = &v7;
  [lock di_synchronize:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setSessionStartTimeoutDate:(id)date
{
  v32 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v5 = DILogHandleDropInSession();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v29 = &stru_285D02BA8;
    v30 = 2112;
    v31 = dateCopy;
    _os_log_impl(&dword_249DA7000, v5, OS_LOG_TYPE_INFO, "%@Update session start timeout date: %@", buf, 0x16u);
  }

  lock = [(DIDropInSession *)self lock];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __46__DIDropInSession_setSessionStartTimeoutDate___block_invoke;
  v21[3] = &unk_278FB8E20;
  v21[4] = self;
  v21[5] = &v22;
  [lock di_synchronize:v21];

  if ([v23[5] isEqualToDate:dateCopy])
  {
    v7 = DILogHandleDropInSession();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = &stru_285D02BA8;
      _os_log_impl(&dword_249DA7000, v7, OS_LOG_TYPE_INFO, "%@No changes to start timeout date", buf, 0xCu);
    }
  }

  else
  {
    lock2 = [(DIDropInSession *)self lock];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __46__DIDropInSession_setSessionStartTimeoutDate___block_invoke_46;
    v19[3] = &unk_278FB8E48;
    v19[4] = self;
    v9 = dateCopy;
    v20 = v9;
    [lock2 di_synchronize:v19];

    delegate = [(DIDropInSession *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      connectionManager = [(DIDropInSession *)self connectionManager];
      manager = [connectionManager manager];
      clientQueue = [manager clientQueue];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __46__DIDropInSession_setSessionStartTimeoutDate___block_invoke_2;
      v16[3] = &unk_278FB8E48;
      v17 = v9;
      selfCopy = self;
      [DIUtilities onQueue:clientQueue block:v16];
    }
  }

  _Block_object_dispose(&v22, 8);

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __46__DIDropInSession_setSessionStartTimeoutDate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionStartTimeoutDate];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __46__DIDropInSession_setSessionStartTimeoutDate___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = DILogHandleDropInSession();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138412802;
    v8 = &stru_285D02BA8;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_249DA7000, v2, OS_LOG_TYPE_DEFAULT, "%@Notify delegate: Updating sessionStartTimeoutDate to %@ for session %@", &v7, 0x20u);
  }

  v5 = [*(a1 + 40) delegate];
  [v5 session:*(a1 + 40) didUpdateSessionStartTimeoutDate:*(a1 + 32)];

  v6 = *MEMORY[0x277D85DE8];
}

- (NSDate)sessionEndDate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  lock = [(DIDropInSession *)self lock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__DIDropInSession_sessionEndDate__block_invoke;
  v6[3] = &unk_278FB8E20;
  v6[4] = self;
  v6[5] = &v7;
  [lock di_synchronize:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setSessionEndDate:(id)date
{
  v32 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v5 = DILogHandleDropInSession();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v29 = &stru_285D02BA8;
    v30 = 2112;
    v31 = dateCopy;
    _os_log_impl(&dword_249DA7000, v5, OS_LOG_TYPE_INFO, "%@Update session end date: %@", buf, 0x16u);
  }

  lock = [(DIDropInSession *)self lock];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __37__DIDropInSession_setSessionEndDate___block_invoke;
  v21[3] = &unk_278FB8E20;
  v21[4] = self;
  v21[5] = &v22;
  [lock di_synchronize:v21];

  if ([v23[5] isEqualToDate:dateCopy])
  {
    v7 = DILogHandleDropInSession();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v29 = &stru_285D02BA8;
      _os_log_impl(&dword_249DA7000, v7, OS_LOG_TYPE_INFO, "%@No changes to end date", buf, 0xCu);
    }
  }

  else
  {
    lock2 = [(DIDropInSession *)self lock];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __37__DIDropInSession_setSessionEndDate___block_invoke_49;
    v19[3] = &unk_278FB8E48;
    v19[4] = self;
    v9 = dateCopy;
    v20 = v9;
    [lock2 di_synchronize:v19];

    delegate = [(DIDropInSession *)self delegate];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      connectionManager = [(DIDropInSession *)self connectionManager];
      manager = [connectionManager manager];
      clientQueue = [manager clientQueue];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __37__DIDropInSession_setSessionEndDate___block_invoke_2;
      v16[3] = &unk_278FB8E48;
      v17 = v9;
      selfCopy = self;
      [DIUtilities onQueue:clientQueue block:v16];
    }
  }

  _Block_object_dispose(&v22, 8);

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __37__DIDropInSession_setSessionEndDate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) sessionEndDate];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

void __37__DIDropInSession_setSessionEndDate___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = DILogHandleDropInSession();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138412802;
    v8 = &stru_285D02BA8;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_249DA7000, v2, OS_LOG_TYPE_DEFAULT, "%@Notify delegate: Updating sessionEndDate to %@ for session %@", &v7, 0x20u);
  }

  v5 = [*(a1 + 40) delegate];
  [v5 session:*(a1 + 40) didUpdateSessionEndDate:*(a1 + 32)];

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)stringForDropInSessionState:(unint64_t)state
{
  if (state - 1 > 6)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_278FB8EB0[state - 1];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"(%lu) %@", state, v5, v3, v4];
}

+ (id)stringForDropInSessionStateReason:(unint64_t)reason
{
  if (reason > 6)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_278FB8EE8[reason];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"(%lu) %@", reason, v5, v3, v4];
}

- (void)updateWithSession:(id)session
{
  sessionCopy = session;
  lock = [(DIDropInSession *)self lock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__DIDropInSession_updateWithSession___block_invoke;
  v7[3] = &unk_278FB8E48;
  v7[4] = self;
  v8 = sessionCopy;
  v6 = sessionCopy;
  [lock di_synchronize:v7];
}

void __37__DIDropInSession_updateWithSession___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setStateReason:{objc_msgSend(*(a1 + 40), "stateReason")}];
  [*(a1 + 32) setState:{objc_msgSend(*(a1 + 40), "state")}];
  v2 = [*(a1 + 40) participants];
  [*(a1 + 32) setParticipants:v2];

  v3 = [*(a1 + 40) sessionStartTimeoutDate];
  [*(a1 + 32) setSessionStartTimeoutDate:v3];

  v4 = [*(a1 + 40) sessionEndDate];
  [*(a1 + 32) setSessionEndDate:v4];
}

- (void)failWithError:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = DILogHandleDropInSession();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v16 = &stru_285D02BA8;
    v17 = 2112;
    v18 = errorCopy;
    v19 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_249DA7000, v5, OS_LOG_TYPE_ERROR, "%@Session failed with error %@. Session = %@", buf, 0x20u);
  }

  delegate = [(DIDropInSession *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    connectionManager = [(DIDropInSession *)self connectionManager];
    manager = [connectionManager manager];
    clientQueue = [manager clientQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __33__DIDropInSession_failWithError___block_invoke;
    v12[3] = &unk_278FB8E48;
    v13 = errorCopy;
    selfCopy2 = self;
    [DIUtilities onQueue:clientQueue block:v12];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __33__DIDropInSession_failWithError___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = DILogHandleDropInSession();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138412802;
    v8 = &stru_285D02BA8;
    v9 = 2112;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_249DA7000, v2, OS_LOG_TYPE_DEFAULT, "%@Notify delegate: Session failed with error %@. Session = %@", &v7, 0x20u);
  }

  v5 = [*(a1 + 40) delegate];
  [v5 session:*(a1 + 40) didFailWithError:*(a1 + 32)];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateUplinkMuteStatus:(BOOL)status
{
  statusCopy = status;
  v23 = *MEMORY[0x277D85DE8];
  v5 = DILogHandleDropInSession();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v18 = &stru_285D02BA8;
    v19 = 1024;
    v20 = statusCopy;
    v21 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_249DA7000, v5, OS_LOG_TYPE_DEFAULT, "%@Update uplink mute status %d. Session = %@", buf, 0x1Cu);
  }

  lock = [(DIDropInSession *)self lock];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __42__DIDropInSession_updateUplinkMuteStatus___block_invoke;
  v15[3] = &unk_278FB8E70;
  v15[4] = self;
  v16 = statusCopy;
  [lock di_synchronize:v15];

  delegate = [(DIDropInSession *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    connectionManager = [(DIDropInSession *)self connectionManager];
    manager = [connectionManager manager];
    clientQueue = [manager clientQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __42__DIDropInSession_updateUplinkMuteStatus___block_invoke_2;
    v13[3] = &unk_278FB8E70;
    v14 = statusCopy;
    v13[4] = self;
    [DIUtilities onQueue:clientQueue block:v13];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __42__DIDropInSession_updateUplinkMuteStatus___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = DILogHandleDropInSession();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    v7 = 138412802;
    v8 = &stru_285D02BA8;
    v9 = 1024;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_249DA7000, v2, OS_LOG_TYPE_DEFAULT, "%@Notify delegate: Update uplink mute status %d. Session = %@", &v7, 0x1Cu);
  }

  v5 = [*(a1 + 32) delegate];
  [v5 session:*(a1 + 32) didUpdateUplinkMuteStatus:*(a1 + 40)];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(DIDropInSession *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"Identifier"];

  [coderCopy encodeInteger:-[DIDropInSession state](self forKey:{"state"), @"State"}];
  [coderCopy encodeInteger:-[DIDropInSession stateReason](self forKey:{"stateReason"), @"StateReason"}];
  participants = [(DIDropInSession *)self participants];
  [coderCopy encodeObject:participants forKey:@"Participants"];

  sessionStartTimeoutDate = [(DIDropInSession *)self sessionStartTimeoutDate];
  [coderCopy encodeObject:sessionStartTimeoutDate forKey:@"StartTimeoutDate"];

  sessionEndDate = [(DIDropInSession *)self sessionEndDate];
  [coderCopy encodeObject:sessionEndDate forKey:@"EndDate"];
}

- (DIDropInSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(DIDropInSession *)self init];
  if (!v5)
  {
LABEL_11:
    v7 = v5;
    goto LABEL_12;
  }

  v6 = objc_opt_self();
  v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"Identifier"];

  if (v7)
  {
    objc_storeStrong(&v5->_identifier, v7);
    v5->_state = [coderCopy decodeIntegerForKey:@"State"];
    v5->_stateReason = [coderCopy decodeIntegerForKey:@"StateReason"];
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"Participants"];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&v5->_participants, v13);

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StartTimeoutDate"];
    if (v14)
    {
      objc_storeStrong(&v5->_sessionStartTimeoutDate, v14);
    }

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EndDate"];
    if (v15)
    {
      objc_storeStrong(&v5->_sessionEndDate, v15);
    }

    goto LABEL_11;
  }

LABEL_12:

  return v7;
}

- (DIDropInSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (DIXPCConnectionManager)connectionManager
{
  WeakRetained = objc_loadWeakRetained(&self->_connectionManager);

  return WeakRetained;
}

@end