@interface CPSAuthenticationSession
- (CPSAuthenticationSession)initWithRequest:(id)request;
- (void)_activated;
- (void)_deviceStartedAuthentication:(uint64_t)authentication;
- (void)_deviceTappedNotification:(uint64_t)notification;
- (void)_invalidated;
- (void)_sessionFailedWithError:(uint64_t)error;
- (void)_sessionFinishedWithResponse:(uint64_t)response;
- (void)authenticationSessionPresentShieldWithStyle:(int64_t)style device:(id)device;
- (void)cancel;
- (void)start;
@end

@implementation CPSAuthenticationSession

- (CPSAuthenticationSession)initWithRequest:(id)request
{
  v25 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if (!requestCopy)
  {
    [(CPSAuthenticationSession *)a2 initWithRequest:?];
  }

  v7 = requestCopy;
  currentPersona = [MEMORY[0x277D77C08] currentPersona];
  v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (currentPersona)
  {
    if (v9)
    {
      userPersonaType = [currentPersona userPersonaType];
      userPersonaNickName = [currentPersona userPersonaNickName];
      userPersonaUniqueString = [currentPersona userPersonaUniqueString];
      *buf = 134218498;
      v20 = userPersonaType;
      v21 = 2112;
      v22 = userPersonaNickName;
      v23 = 2112;
      v24 = userPersonaUniqueString;
      _os_log_impl(&dword_243D1C000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "activePersona: <ty:%lu, nm:%@, id:%@>", buf, 0x20u);
    }
  }

  else if (v9)
  {
    *buf = 0;
    _os_log_impl(&dword_243D1C000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "activePersona: nil", buf, 2u);
  }

  v18.receiver = self;
  v18.super_class = CPSAuthenticationSession;
  v13 = [(CPSAuthenticationSession *)&v18 init];
  if (v13)
  {
    Serial = BSDispatchQueueCreateSerial();
    dispatchQueue = v13->_dispatchQueue;
    v13->_dispatchQueue = Serial;

    objc_storeStrong(&v13->_request, request);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)start
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__CPSAuthenticationSession_start__block_invoke;
  block[3] = &unk_278DF14F0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __33__CPSAuthenticationSession_start__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 24) == 1)
  {
    v2 = ClientSessionLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __33__CPSAuthenticationSession_start__block_invoke_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }

LABEL_7:

    return;
  }

  if (*(v1 + 25) == 1)
  {
    v2 = ClientSessionLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __33__CPSAuthenticationSession_start__block_invoke_cold_1(v2, v10, v11, v12, v13, v14, v15, v16);
    }

    goto LABEL_7;
  }

  [(CPSAuthenticationSession *)v1 _activated];
}

- (void)cancel
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__CPSAuthenticationSession_cancel__block_invoke;
  block[3] = &unk_278DF14F0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __38__CPSAuthenticationSession__activated__block_invoke(uint64_t a1)
{
  v2 = ClientSessionLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __38__CPSAuthenticationSession__activated__block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v10 = NSErrorF();
  [(CPSAuthenticationSession *)*(a1 + 32) _sessionFailedWithError:v10];
}

void __38__CPSAuthenticationSession__activated__block_invoke_19(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = ClientSessionLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __38__CPSAuthenticationSession__activated__block_invoke_19_cold_1(v3, v4);
    }

    [(CPSAuthenticationSession *)*(a1 + 32) _sessionFailedWithError:v3];
  }
}

- (void)authenticationSessionPresentShieldWithStyle:(int64_t)style device:(id)device
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = ClientSessionLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[CPSAuthenticationSession authenticationSessionPresentShieldWithStyle:device:]";
    _os_log_impl(&dword_243D1C000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_activated
{
  v21 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = ClientSessionLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_243D1C000, v2, OS_LOG_TYPE_INFO, "Activated", buf, 2u);
    }

    *(self + 24) = 1;
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.companiond.xpc" options:0];
    v4 = *(self + 16);
    *(self + 16) = v3;

    v5 = *(self + 16);
    v6 = +[CPSAuthenticationServiceInterface clientInterface];
    [v5 setExportedInterface:v6];

    v7 = *(self + 16);
    v8 = +[CPSAuthenticationServiceInterface daemonInterface];
    [v7 setRemoteObjectInterface:v8];

    [*(self + 16) setExportedObject:self];
    [*(self + 16) _setQueue:*(self + 8)];
    v9 = *(self + 16);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __38__CPSAuthenticationSession__activated__block_invoke;
    v18[3] = &unk_278DF14F0;
    v18[4] = self;
    [v9 setInterruptionHandler:v18];
    v10 = *(self + 16);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __38__CPSAuthenticationSession__activated__block_invoke_18;
    v17[3] = &unk_278DF14F0;
    v17[4] = self;
    [v10 setInvalidationHandler:v17];
    [*(self + 16) resume];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __38__CPSAuthenticationSession__activated__block_invoke_19;
    aBlock[3] = &unk_278DF1518;
    aBlock[4] = self;
    v11 = _Block_copy(aBlock);
    v12 = ClientSessionLog();
    if (OUTLINED_FUNCTION_3(v12))
    {
      v13 = *(self + 32);
      *buf = 138412290;
      v20 = v13;
      _os_log_impl(&dword_243D1C000, v8, OS_LOG_TYPE_DEFAULT, "Starting authentication session: %@", buf, 0xCu);
    }

    v14 = [*(self + 16) remoteObjectProxyWithErrorHandler:v11];
    [v14 startAuthenticationSessionWithRequest:*(self + 32) completionHandler:v11];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_invalidated
{
  if (self && (*(self + 25) & 1) == 0)
  {
    v2 = ClientSessionLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_243D1C000, v2, OS_LOG_TYPE_INFO, "Invalidated", v11, 2u);
    }

    v3 = *(self + 64);
    *(self + 64) = 0;

    v4 = *(self + 72);
    *(self + 72) = 0;

    v5 = *(self + 48);
    *(self + 48) = 0;

    v6 = *(self + 56);
    *(self + 56) = 0;

    v7 = *(self + 40);
    if (v7)
    {
      v8 = NSErrorF();
      (*(v7 + 16))(v7, 0, v8);

      v9 = *(self + 40);
      *(self + 40) = 0;
    }

    [*(self + 16) setInterruptionHandler:0];
    [*(self + 16) setInvalidationHandler:0];
    [*(self + 16) invalidate];
    v10 = *(self + 16);
    *(self + 16) = 0;

    *(self + 25) = 1;
  }
}

- (void)_sessionFailedWithError:(uint64_t)error
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (error)
  {
    v4 = ClientSessionLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v3;
      _os_log_error_impl(&dword_243D1C000, v4, OS_LOG_TYPE_ERROR, "Session failed: %@", &v14, 0xCu);
    }

    v5 = *(error + 56);
    if (v5)
    {
      v6 = OUTLINED_FUNCTION_1_0(v5);
      v7(v6, v3);
      v8 = *(error + 56);
      *(error + 56) = 0;
    }

    v9 = *(error + 40);
    if (v9)
    {
      v10 = OUTLINED_FUNCTION_1_0(v9);
      v11(v10, 0, v3);
      v12 = *(error + 40);
      *(error + 40) = 0;
    }

    [(CPSAuthenticationSession *)error _invalidated];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __38__CPSAuthenticationSession__activated__block_invoke_18(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = ClientSessionLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_243D1C000, v4, OS_LOG_TYPE_ERROR, "Connection invalidated", v6, 2u);
  }

  v5 = NSErrorF();
  [(CPSAuthenticationSession *)*(a1 + 32) _sessionFailedWithError:v5];
}

- (void)_deviceTappedNotification:(uint64_t)notification
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (notification)
  {
    v5 = ClientSessionLog();
    if (OUTLINED_FUNCTION_3(v5))
    {
      OUTLINED_FUNCTION_0_0(&dword_243D1C000, v6, v7, "Device tapped notification: %@", v8, v9, v10, v11, 2u);
    }

    v12 = *(notification + 64);
    if (v12)
    {
      v13 = OUTLINED_FUNCTION_1_0(v12);
      v14(v13, v4);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_deviceStartedAuthentication:(uint64_t)authentication
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (authentication)
  {
    v5 = ClientSessionLog();
    if (OUTLINED_FUNCTION_3(v5))
    {
      OUTLINED_FUNCTION_0_0(&dword_243D1C000, v6, v7, "Device started authentication: %@", v8, v9, v10, v11, 2u);
    }

    v12 = *(authentication + 72);
    if (v12)
    {
      v13 = OUTLINED_FUNCTION_1_0(v12);
      v14(v13, v4);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_sessionFinishedWithResponse:(uint64_t)response
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (response)
  {
    v5 = ClientSessionLog();
    if (OUTLINED_FUNCTION_3(v5))
    {
      OUTLINED_FUNCTION_0_0(&dword_243D1C000, v6, v7, "Session finished: %@", v8, v9, v10, v11, 2u);
    }

    v12 = *(response + 48);
    if (v12)
    {
      v13 = OUTLINED_FUNCTION_1_0(v12);
      v14(v13, v4);
      v15 = *(response + 48);
      *(response + 48) = 0;
    }

    v16 = *(response + 40);
    if (v16)
    {
      v17 = OUTLINED_FUNCTION_1_0(v16);
      v18(v17, v4, 0);
      v19 = *(response + 40);
      *(response + 40) = 0;
    }

    [(CPSAuthenticationSession *)response _invalidated];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)initWithRequest:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"request != nil"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"CPSAuthenticationSession.m";
    v16 = 1024;
    v17 = 46;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_243D1C000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __38__CPSAuthenticationSession__activated__block_invoke_19_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_243D1C000, a2, OS_LOG_TYPE_ERROR, "Failed to start session: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end