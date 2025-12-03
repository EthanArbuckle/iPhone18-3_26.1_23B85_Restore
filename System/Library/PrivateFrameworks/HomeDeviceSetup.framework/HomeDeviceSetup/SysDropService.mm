@interface SysDropService
+ (OS_os_log)signpostLog;
- (SysDropService)init;
- (unint64_t)signpostID;
- (void)_cleanup;
- (void)_handleAirDropRequest:(id)request responseHandler:(id)handler;
- (void)_handlePreCheckRequest:(id)request responseHandler:(id)handler;
- (void)_handleSessionEnded:(id)ended;
- (void)_handleSessionStarted:(id)started;
- (void)_invalidate;
- (void)_sfServiceStart;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SysDropService

+ (OS_os_log)signpostLog
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__SysDropService_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (signpostLog_onceToken_3 != -1)
  {
    dispatch_once(&signpostLog_onceToken_3, block);
  }

  v2 = signpostLog_log_3;

  return v2;
}

void __29__SysDropService_signpostLog__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.HomeDeviceSetup.signposts", [v4 UTF8String]);
  v3 = signpostLog_log_3;
  signpostLog_log_3 = v2;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

- (SysDropService)init
{
  v6.receiver = self;
  v6.super_class = SysDropService;
  v2 = [(SysDropService *)&v6 init];
  if (v2)
  {
    v3 = CUMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    if (gLogCategory_SysDropService <= 30 && (gLogCategory_SysDropService != -1 || _LogCategory_Initialize()))
    {
      [SysDropService init];
    }
  }

  return v2;
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    v3 = [SysDropSession dealloc];
    [(SysDropService *)v3 _cleanup];
  }

  else
  {
    [(SysDropService *)self _cleanup];
    v5.receiver = self;
    v5.super_class = SysDropService;
    [(SysDropService *)&v5 dealloc];
  }
}

- (void)_cleanup
{
  sfService = self->_sfService;
  self->_sfService = 0;

  sysdropInterface = self->_sysdropInterface;
  self->_sysdropInterface = 0;

  peerEventHandler = self->_peerEventHandler;
  self->_peerEventHandler = 0;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__SysDropService_activate__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __26__SysDropService_activate__block_invoke(uint64_t a1)
{
  if (gLogCategory_SysDropService <= 30 && (gLogCategory_SysDropService != -1 || _LogCategory_Initialize()))
  {
    __26__SysDropService_activate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 8) = 1;
  v2 = *(a1 + 32);

  return [v2 _activate];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__SysDropService_invalidate__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateCalled && gLogCategory_SysDropService <= 30 && (gLogCategory_SysDropService != -1 || _LogCategory_Initialize()))
  {
    [SysDropService _invalidate];
  }

  self->_invalidateCalled = 1;
  sysdropInterface = self->_sysdropInterface;
  if (sysdropInterface)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __29__SysDropService__invalidate__block_invoke;
    v6[3] = &unk_279714198;
    v6[4] = self;
    [(SBSSysdiagnoseInterface *)sysdropInterface cancelSysdiagnose:v6];
  }

  if (!self->_serviceStartedFromSetup)
  {
    if (self->_sfSession)
    {
      [(SysDropService *)self _handleSessionEnded:?];
    }

    [(SFService *)self->_sfService invalidate];
  }

  [(SFSession *)self->_sfSession deregisterRequestID:@"sysdrop_check"];
  [(SFSession *)self->_sfSession deregisterRequestID:@"sysdrop_ad"];
  fileTransferSession = self->_fileTransferSession;
  if (fileTransferSession)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __29__SysDropService__invalidate__block_invoke_2;
    v5[3] = &unk_279713FF0;
    v5[4] = self;
    [(HDSFileTransfer *)fileTransferSession invalidate:v5];
  }

  [(SysDropService *)self _cleanup];
}

void __29__SysDropService__invalidate__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5 && gLogCategory_SysDropService <= 60 && (gLogCategory_SysDropService != -1 || _LogCategory_Initialize()))
  {
    __29__SysDropService__invalidate__block_invoke_cold_1();
  }

  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = 0;

  *(*(a1 + 32) + 12) = 0;
}

void __29__SysDropService__invalidate__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  *(v1 + 48) = 0;
}

- (void)_sfServiceStart
{
  if (gLogCategory_SysDropService <= 30 && (gLogCategory_SysDropService != -1 || _LogCategory_Initialize()))
  {
    [SysDropService _sfServiceStart];
  }

  if (self->_sfService && self->_sfSession)
  {

    [(SysDropService *)self _handleSessionStarted:?];
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x277D54CE0]);
    sfService = self->_sfService;
    self->_sfService = v3;

    if (self->_advertiseFast)
    {
      [(SFService *)self->_sfService setAdvertiseRate:50];
    }

    [(SFService *)self->_sfService setDispatchQueue:self->_dispatchQueue];
    [(SFService *)self->_sfService setIdentifier:*MEMORY[0x277D54D80]];
    [(SFService *)self->_sfService setLabel:@"SysDrop"];
    v5 = SFDeviceModelCodeGet();
    v6 = self->_sfService;
    if (v5)
    {
      v7 = 33;
    }

    else
    {
      v7 = 11;
    }

    [(SFService *)self->_sfService setDeviceActionType:v7];
    [(SFService *)self->_sfService setSessionFlags:1];
    [(SFService *)self->_sfService setTouchRemoteEnabled:1];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __33__SysDropService__sfServiceStart__block_invoke;
    v12[3] = &unk_2797147E8;
    v12[4] = self;
    [(SFService *)self->_sfService setSessionStartedHandler:v12];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __33__SysDropService__sfServiceStart__block_invoke_42;
    v11[3] = &unk_279714810;
    v11[4] = self;
    [(SFService *)self->_sfService setSessionEndedHandler:v11];
    [(SFService *)self->_sfService setSessionSecuredHandler:&__block_literal_global_9];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __33__SysDropService__sfServiceStart__block_invoke_2;
    v10[3] = &unk_279714838;
    v10[4] = self;
    [(SFService *)self->_sfService setReceivedRequestHandler:v10];
    v8 = self->_sfService;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __33__SysDropService__sfServiceStart__block_invoke_3;
    v9[3] = &unk_279714198;
    v9[4] = self;
    [(SFService *)v8 activateWithCompletion:v9];
  }
}

void __33__SysDropService__sfServiceStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [objc_opt_class() signpostLog];
  v6 = [*(a1 + 32) signpostID];
  if ((v6 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *v8 = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "SetupSession", "", v8, 2u);
    }
  }

  [*(a1 + 32) _handleSessionStarted:v4];
}

void __33__SysDropService__sfServiceStart__block_invoke_42(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [objc_opt_class() signpostLog];
  v6 = [*(a1 + 32) signpostID];
  if ((v6 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *v8 = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, v5, OS_SIGNPOST_INTERVAL_END, v7, "SetupSession", "", v8, 2u);
    }
  }

  [*(a1 + 32) _handleSessionEnded:v4];
}

uint64_t __33__SysDropService__sfServiceStart__block_invoke_44(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_SysDropService <= 30)
  {
    v5 = v2;
    if (gLogCategory_SysDropService != -1 || (v2 = _LogCategory_Initialize(), v3 = v5, v2))
    {
      __33__SysDropService__sfServiceStart__block_invoke_44_cold_1(v3);
      v3 = v5;
    }
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

void __33__SysDropService__sfServiceStart__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() signpostLog];
  v6 = [*(a1 + 32) signpostID];
  if ((v6 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *v9 = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, v5, OS_SIGNPOST_INTERVAL_END, v7, "SFServiceStart", "", v9, 2u);
    }
  }

  v8 = v3;
  if (v8 && gLogCategory_SysDropService <= 90 && (gLogCategory_SysDropService != -1 || _LogCategory_Initialize()))
  {
    __33__SysDropService__sfServiceStart__block_invoke_3_cold_1(v8);
  }
}

- (void)_handleSessionStarted:(id)started
{
  startedCopy = started;
  if (self->_sfSession && !self->_serviceStartedFromSetup)
  {
    if (gLogCategory_SysDropService <= 60 && (gLogCategory_SysDropService != -1 || _LogCategory_Initialize()))
    {
      [(SysDropService *)startedCopy _handleSessionStarted:?];
    }
  }

  else
  {
    if (gLogCategory_SysDropService <= 30 && (gLogCategory_SysDropService != -1 || _LogCategory_Initialize()))
    {
      [SysDropService _handleSessionStarted:startedCopy];
    }

    objc_storeStrong(&self->_sfSession, started);
    sfSession = self->_sfSession;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __40__SysDropService__handleSessionStarted___block_invoke;
    v9[3] = &unk_279714668;
    v9[4] = self;
    [(SFSession *)sfSession registerRequestID:@"sysdrop_check" options:&unk_2864E8068 handler:v9];
    v7 = self->_sfSession;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __40__SysDropService__handleSessionStarted___block_invoke_2;
    v8[3] = &unk_279714668;
    v8[4] = self;
    [(SFSession *)v7 registerRequestID:@"sysdrop_ad" options:&unk_2864E8068 handler:v8];
  }
}

- (void)_handleSessionEnded:(id)ended
{
  endedCopy = ended;
  sfSession = self->_sfSession;
  if (sfSession == endedCopy)
  {
    v8 = endedCopy;
    if (endedCopy)
    {
      if (gLogCategory_SysDropService <= 30)
      {
        if (gLogCategory_SysDropService != -1 || (v6 = _LogCategory_Initialize(), sfSession = self->_sfSession, v6))
        {
          peer = [(SFSession *)sfSession peer];
          LogPrintF();

          sfSession = self->_sfSession;
        }
      }
    }

    self->_sfSession = 0;

    endedCopy = v8;
  }

  MEMORY[0x2821F96F8](sfSession, endedCopy);
}

- (void)_handleAirDropRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if (gLogCategory_SysDropService <= 30 && (gLogCategory_SysDropService != -1 || _LogCategory_Initialize()))
  {
    [SysDropService _handleAirDropRequest:responseHandler:];
  }

  CFStringGetTypeID();
  v7 = CFDictionaryGetTypedValue();
  if (gLogCategory_SysDropService <= 30 && (gLogCategory_SysDropService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  (*(handlerCopy + 2))(handlerCopy, 0, 0, v8);
}

- (void)_handlePreCheckRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if (gLogCategory_SysDropService <= 30 && (gLogCategory_SysDropService != -1 || _LogCategory_Initialize()))
  {
    [SysDropService _handlePreCheckRequest:responseHandler:];
  }

  companionCanRPFileTransfer = CFDictionaryGetInt64() != 0;
  self->_companionCanRPFileTransfer = companionCanRPFileTransfer;
  if (gLogCategory_SysDropService <= 30)
  {
    if (gLogCategory_SysDropService == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      companionCanRPFileTransfer = self->_companionCanRPFileTransfer;
    }

    if (companionCanRPFileTransfer)
    {
      v8 = "yes";
    }

    else
    {
      v8 = "no";
    }

    v13 = v8;
    LogPrintF();
  }

LABEL_11:
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  sysdiagnoseStatus = self->_sysdiagnoseStatus;
  if (!sysdiagnoseStatus)
  {
    [(SysDropService *)self _sysdiagnoseStart];
    sysdiagnoseStatus = self->_sysdiagnoseStatus;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{sysdiagnoseStatus, v13}];
  [v9 setObject:v11 forKeyedSubscript:@"sd_status"];

  [v9 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"sd_rpft_cap"];
  if (gLogCategory_SysDropService <= 30)
  {
    if (gLogCategory_SysDropService != -1 || _LogCategory_Initialize())
    {
      [SysDropService _handlePreCheckRequest:responseHandler:];
    }

    if (gLogCategory_SysDropService <= 30 && (gLogCategory_SysDropService != -1 || _LogCategory_Initialize()))
    {
      [SysDropService _handlePreCheckRequest:? responseHandler:?];
    }
  }

  if (self->_sysdiagnoseStatus == 3)
  {
    preCheckError = self->_preCheckError;
  }

  else
  {
    preCheckError = 0;
  }

  handlerCopy[2](handlerCopy, preCheckError, 0, v9);
}

void __33__SysDropService__sfServiceStart__block_invoke_44_cold_1(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF();
}

void __33__SysDropService__sfServiceStart__block_invoke_3_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  LogPrintF();
}

- (void)_handleSessionStarted:(void *)a1 .cold.1(void *a1, id *a2)
{
  v4 = [a1 peer];
  v3 = [*a2 peer];
  LogPrintF();
}

- (void)_handleSessionStarted:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 peer];
  LogPrintF();
}

@end