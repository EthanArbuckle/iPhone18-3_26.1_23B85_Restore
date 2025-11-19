@interface HDSSetupService
+ (OS_os_log)signpostLog;
- (BOOL)_handleFinishDone2Ready;
- (BOOL)isHomePodSUNoSetup;
- (HDSSetupService)init;
- (id)createScanParameters;
- (id)installProfileData:(id)a3;
- (id)scanResultToDict:(id)a3;
- (int)_handleBasicConfigRequest:(id)a3;
- (int)hdsSUStateForSUState;
- (uint64_t)_handleFinishDone2Ready;
- (uint64_t)_setSiriInfo;
- (uint64_t)setTime;
- (unint64_t)signpostID;
- (void)_activate;
- (void)_boostiTunesCloudDaemon;
- (void)_cleanup;
- (void)_handleAuthActionAudioPasscodeInit:(id)a3 response:(id)a4;
- (void)_handleAuthActionAudioPasscodeStartWithResponse:(id)a3;
- (void)_handleAuthActionRequest:(id)a3 responseHandler:(id)a4;
- (void)_handleAuthActionSiriInit:(id)a3;
- (void)_handleAuthActionSiriStart:(id)a3 response:(id)a4 responseHandler:(id)a5;
- (void)_handleBasicConfigResponse:(id)a3;
- (void)_handleCheckHomePodForJS:(id)a3 responseHandler:(id)a4;
- (void)_handleDeviceActivationRequest:(id)a3 responseHandler:(id)a4;
- (void)_handleFinishApply:(id)a3 responseHandler:(id)a4;
- (void)_handleFinishRequest:(id)a3 responseHandler:(id)a4;
- (void)_handleHomeScanRequest:(id)a3 responseHandler:(id)a4;
- (void)_handlePreAuthRequest:(id)a3 responseHandler:(id)a4;
- (void)_handlePurgeSUNoSetup:(id)a3 responseHandler:(id)a4;
- (void)_handleSUNoSetupScanRequest:(id)a3 responseHandler:(id)a4;
- (void)_handleSessionEnded:(id)a3;
- (void)_handleSessionStarted:(id)a3;
- (void)_handleSiriDialogIdentifier:(id)a3;
- (void)_handleStartSysDrop:(id)a3 responseHandler:(id)a4;
- (void)_handleStartSysDropEnablementProfileTransfer:(id)a3 responseHandler:(id)a4;
- (void)_handleVoicePreviewRequest:(id)a3 responseHandler:(id)a4;
- (void)_invalidate;
- (void)_playReadyToSetupSound;
- (void)_printBitMask:(int64_t)a3;
- (void)_runHomeKitSetupMode:(id)a3 responseHandler:(id)a4;
- (void)_setSiriInfo;
- (void)_sfServiceStart;
- (void)activate;
- (void)activateWithCompletion:(id)a3;
- (void)configureSUControllerManagerToFinish;
- (void)connectionRegained:(id)a3;
- (void)dealloc;
- (void)fetchScanResult;
- (void)fetchScanResult:(id)a3;
- (void)invalidate;
- (void)isHomePodSUNoSetup;
- (void)manager:(id)a3 connectionError:(id)a4;
- (void)manager:(id)a3 didChangeProgressOnApply:(id)a4 progress:(id)a5;
- (void)manager:(id)a3 didChangeProgressOnDownload:(id)a4;
- (void)manager:(id)a3 didFailDownload:(id)a4 withError:(id)a5;
- (void)manager:(id)a3 didFailInstallation:(id)a4 withError:(id)a5;
- (void)manager:(id)a3 didFinishDownload:(id)a4;
- (void)manager:(id)a3 didFinishDownload:(id)a4 willProceedWithInstallation:(BOOL)a5 waitingForAdmissionControl:(BOOL)a6;
- (void)manager:(id)a3 didFinishDownload:(id)a4 willProceedWithInstallation:(BOOL)a5 waitingForAdmissionControl:(BOOL)a6 denialReasons:(id)a7;
- (void)manager:(id)a3 didFinishInstallation:(id)a4;
- (void)manager:(id)a3 scanRequestDidLocateUpdate:(id)a4 error:(id)a5;
- (void)manager:(id)a3 scanRequestPostponed:(id)a4 error:(id)a5;
- (void)removeSysDropProfile;
- (void)sendSUNoSetupErrorPeerEvent:(int64_t)a3;
- (void)sendSUNoSetupSUInstallDonePeerEvent;
- (void)sendSUNoSetupSUStatusPeerEvent;
- (void)setTime;
- (void)wipeWifiConfig;
@end

@implementation HDSSetupService

+ (OS_os_log)signpostLog
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__HDSSetupService_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (signpostLog_onceToken_0 != -1)
  {
    dispatch_once(&signpostLog_onceToken_0, block);
  }

  v2 = signpostLog_log_0;

  return v2;
}

void __30__HDSSetupService_signpostLog__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.HomeDeviceSetup.signposts", [v4 UTF8String]);
  v3 = signpostLog_log_0;
  signpostLog_log_0 = v2;
}

- (unint64_t)signpostID
{
  v3 = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(v3, self);

  return v4;
}

- (HDSSetupService)init
{
  v10.receiver = self;
  v10.super_class = HDSSetupService;
  v2 = [(HDSSetupService *)&v10 init];
  if (v2)
  {
    v3 = CUMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v5 = dispatch_queue_create("WiFiSetup", 0);
    wifiDispatchQueue = v2->_wifiDispatchQueue;
    v2->_wifiDispatchQueue = v5;

    v2->_iTunesCloudCompleteToken = -1;
    v2->_timeAuto = -1;
    v2->_timeZoneAuto = -1;
    v7 = [objc_alloc(MEMORY[0x277D64130]) initWithDelegate:v2];
    suControllerManager = v2->_suControllerManager;
    v2->_suControllerManager = v7;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    v3 = [SysDropSession dealloc];
    [(HDSSetupService *)v3 _cleanup];
  }

  else
  {
    [(HDSSetupService *)self _cleanup];
    v5.receiver = self;
    v5.super_class = HDSSetupService;
    [(HDSSetupService *)&v5 dealloc];
  }
}

- (void)_cleanup
{
  progressHandler = self->_progressHandler;
  self->_progressHandler = 0;
  MEMORY[0x2821F96F8]();
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__HDSSetupService_activate__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService activateWithCompletion:];
  }

  v5 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_fetchScanResult selector:0 userInfo:1 repeats:300.0];
  scanTimer = self->_scanTimer;
  self->_scanTimer = v5;

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__HDSSetupService_activateWithCompletion___block_invoke;
  v8[3] = &unk_279714210;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [(HDSSetupService *)self fetchScanResult:v8];
}

void __42__HDSSetupService_activateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 448);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__HDSSetupService_activateWithCompletion___block_invoke_2;
  v4[3] = &unk_279714210;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

uint64_t __42__HDSSetupService_activateWithCompletion___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 1;
  [*(a1 + 32) _activate];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_activate
{
  v26 = 0;
  self->_advertiseFast = CFPrefs_GetInt64() != 0;
  Int64 = CFPrefs_GetInt64();
  if (v26)
  {
    v4 = 0;
  }

  else
  {
    v4 = Int64 == 0;
  }

  v5 = !v4;
  self->_prefCDPEnabled = v5;
  v6 = CFPrefs_GetInt64();
  if (v26)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  v8 = !v7;
  self->_wifiSetupEnabled = v8;
  v9 = CFPrefs_GetInt64();
  if (v26)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 0;
  }

  v11 = !v10;
  self->_identifyB238AsB520 = v11;
  v12 = CFPrefs_GetInt64();
  if (v26)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12 == 0;
  }

  v14 = !v13;
  self->_shouldSetupAgentPlayBootTone = v14;
  if (!self->_sfClient)
  {
    v15 = objc_alloc_init(MEMORY[0x277D54C30]);
    sfClient = self->_sfClient;
    self->_sfClient = v15;

    [(SFClient *)self->_sfClient activateAssertionWithIdentifier:@"com.apple.sharing.PreventRepair"];
    [(SFClient *)self->_sfClient preventExitForLocaleReason:@"HomePod Setup"];
    objc_initWeak(&location, self->_sfClient);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __28__HDSSetupService__activate__block_invoke;
    v23[3] = &unk_279714798;
    objc_copyWeak(&v24, &location);
    [(SFClient *)self->_sfClient setInterruptionHandler:v23];
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  if (self->_wifiSetupEnabled)
  {
    v17 = WiFiManagerClientCreate();
    self->_wifiManager = v17;
    if (v17)
    {
      WiFiManagerClientDisable();
    }

    else if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _activate];
    }
  }

  if (!self->_siriClient)
  {
    v18 = objc_alloc_init(MEMORY[0x277D54CF0]);
    siriClient = self->_siriClient;
    self->_siriClient = v18;

    [(SFSiriClient *)self->_siriClient setDispatchQueue:self->_dispatchQueue];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __28__HDSSetupService__activate__block_invoke_2;
    v22[3] = &unk_2797147C0;
    v22[4] = self;
    [(SFSiriClient *)self->_siriClient setSiriDialogHandler:v22];
    [(SFSiriClient *)self->_siriClient activate];
  }

  v20 = [objc_alloc(getHMHomeManagerClass_0()) initWithOptions:0];
  homeManager = self->_homeManager;
  self->_homeManager = v20;

  [(HDSSetupService *)self _sfServiceStart];
}

void __28__HDSSetupService__activate__block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    __28__HDSSetupService__activate__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained preventExitForLocaleReason:@"HomePod Setup"];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__HDSSetupService_invalidate__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateCalled && gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _invalidate];
  }

  self->_invalidateCalled = 1;
  finishApplyTimer = self->_finishApplyTimer;
  if (finishApplyTimer)
  {
    v4 = finishApplyTimer;
    dispatch_source_cancel(v4);
    v5 = self->_finishApplyTimer;
    self->_finishApplyTimer = 0;
  }

  if (self->_sfSession)
  {
    [(HDSSetupService *)self _handleSessionEnded:?];
  }

  [(RPCompanionLinkClient *)self->_companionLinkClient invalidate];
  companionLinkClient = self->_companionLinkClient;
  self->_companionLinkClient = 0;

  [(SFService *)self->_sfService invalidate];
  sfService = self->_sfService;
  self->_sfService = 0;

  [(SFSiriClient *)self->_siriClient invalidateWithFlags:32];
  siriClient = self->_siriClient;
  self->_siriClient = 0;

  if (self->_wifiManager)
  {
    WiFiManagerClientEnable();
    CFRelease(self->_wifiManager);
    self->_wifiManager = 0;
  }

  [(CUAudioPlayer *)self->_audioPlayer invalidateWithFlags:1];
  audioPlayer = self->_audioPlayer;
  self->_audioPlayer = 0;

  [(SFClient *)self->_sfClient invalidate];
  sfClient = self->_sfClient;
  self->_sfClient = 0;

  icClient = self->_icClient;
  self->_icClient = 0;

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 20, 0);
  }

  [(NSTimer *)self->_scanTimer invalidate];
  scanTimer = self->_scanTimer;
  self->_scanTimer = 0;

  [(HDSSetupService *)self _cleanup];
}

- (void)_sfServiceStart
{
  if (!self->_sfService)
  {
    v22 = v5;
    v23 = v4;
    v24 = v2;
    v25 = v3;
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _sfServiceStart];
    }

    v7 = [objc_opt_class() signpostLog];
    v8 = [(HDSSetupService *)self signpostID];
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = v8;
      if (os_signpost_enabled(v7))
      {
        *v21 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v9, "SFServiceStart", "", v21, 2u);
      }
    }

    v10 = objc_alloc_init(MEMORY[0x277D54CE0]);
    sfService = self->_sfService;
    self->_sfService = v10;

    if (self->_advertiseFast)
    {
      [(SFService *)self->_sfService setAdvertiseRate:50];
    }

    [(SFService *)self->_sfService setDispatchQueue:self->_dispatchQueue];
    [(SFService *)self->_sfService setIdentifier:*MEMORY[0x277D54D80]];
    [(SFService *)self->_sfService setLabel:@"HomePodSetup"];
    [(SFService *)self->_sfService setNeedsSetup:1];
    if (+[HDSDefaults disableNeedsSetup]&& isInternalBuild())
    {
      if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupService _sfServiceStart];
      }

      [(SFService *)self->_sfService setNeedsSetup:0];
    }

    v12 = SFDeviceModelCodeGet();
    v13 = self->_sfService;
    if (v12)
    {
      v14 = 33;
    }

    else
    {
      v14 = 11;
    }

    [(SFService *)self->_sfService setDeviceActionType:v14];
    if (self->_identifyB238AsB520)
    {
      [(SFService *)self->_sfService setDeviceActionType:33];
    }

    [(SFService *)self->_sfService setPairSetupACL:&unk_2864E7D48];
    [(SFService *)self->_sfService setSessionFlags:1];
    [(SFService *)self->_sfService setTouchRemoteEnabled:1];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __34__HDSSetupService__sfServiceStart__block_invoke;
    v20[3] = &unk_2797147E8;
    v20[4] = self;
    [(SFService *)self->_sfService setSessionStartedHandler:v20];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __34__HDSSetupService__sfServiceStart__block_invoke_343;
    v19[3] = &unk_279714810;
    v19[4] = self;
    [(SFService *)self->_sfService setSessionEndedHandler:v19];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __34__HDSSetupService__sfServiceStart__block_invoke_345;
    v18[3] = &unk_2797147E8;
    v18[4] = self;
    [(SFService *)self->_sfService setSessionSecuredHandler:v18];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __34__HDSSetupService__sfServiceStart__block_invoke_2;
    v17[3] = &unk_279714838;
    v17[4] = self;
    [(SFService *)self->_sfService setReceivedRequestHandler:v17];
    v15 = self->_sfService;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __34__HDSSetupService__sfServiceStart__block_invoke_3;
    v16[3] = &unk_279714198;
    v16[4] = self;
    [(SFService *)v15 activateWithCompletion:v16];
  }
}

void __34__HDSSetupService__sfServiceStart__block_invoke(uint64_t a1, void *a2)
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

void __34__HDSSetupService__sfServiceStart__block_invoke_343(uint64_t a1, void *a2)
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

void __34__HDSSetupService__sfServiceStart__block_invoke_345(uint64_t a1, void *a2)
{
  v5 = a2;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    __34__HDSSetupService__sfServiceStart__block_invoke_345_cold_1(v5);
  }

  v3 = *(*(a1 + 32) + 456);
  if (v3)
  {
    (*(v3 + 16))(v3, 70, 0);
    v4 = *(*(a1 + 32) + 456);
    if (v4)
    {
      (*(v4 + 16))(v4, 33, 0);
    }
  }
}

void __34__HDSSetupService__sfServiceStart__block_invoke_3(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() signpostLog];
  v6 = [*(a1 + 32) signpostID];
  if ((v6 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *v15 = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, v5, OS_SIGNPOST_INTERVAL_END, v7, "SFServiceStart", "", v15, 2u);
    }
  }

  v8 = v3;
  v9 = *(a1 + 32);
  if (v8)
  {
    v10 = *(v9 + 456);
    if (v10)
    {
      v16 = @"eo";
      v17 = v8;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      (*(v10 + 16))(v10, 30, v11);
LABEL_11:
    }
  }

  else
  {
    if (*(v9 + 208) == 1)
    {
      [v9 _playReadyToSetupSound];
      v9 = *(a1 + 32);
    }

    v12 = *(v9 + 456);
    if (v12)
    {
      v18 = @"PlayBootTone";
      v11 = [MEMORY[0x277CCABB0] numberWithInt:*(v9 + 208) ^ 1u];
      v19[0] = v11;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      (*(v12 + 16))(v12, 10, v13);

      goto LABEL_11;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_handleSessionStarted:(id)a3
{
  v5 = a3;
  if (self->_sfSession)
  {
    if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [(HDSSetupService *)v5 _handleSessionStarted:?];
    }
  }

  else
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleSessionStarted:v5];
    }

    self->_peerFeatureFlags = 0;
    objc_storeStrong(&self->_sfSession, a3);
    v6 = GestaltCopyAnswer();
    if ([v6 length] < 4)
    {
      if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupService _handleSessionStarted:];
      }
    }

    else
    {
      v7 = [v6 substringFromIndex:{objc_msgSend(v6, "length") - 4}];
      [(SFService *)self->_sfService setFixedPIN:v7];
    }

    v44 = 1;
    if (softLinkAudioServicesSetProperty(1633907828, 0, 0, 4, &v44) && gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleSessionStarted:];
    }

    sfSession = self->_sfSession;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __41__HDSSetupService__handleSessionStarted___block_invoke;
    v43[3] = &unk_279714668;
    v43[4] = self;
    [(SFSession *)sfSession registerRequestID:@"_hds_hh2" options:&unk_2864E7D70 handler:v43];
    v9 = self->_sfSession;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __41__HDSSetupService__handleSessionStarted___block_invoke_2;
    v42[3] = &unk_279714668;
    v42[4] = self;
    [(SFSession *)v9 registerRequestID:@"unsetup_hp_sunosetup_cancel_su" options:&unk_2864E7D70 handler:v42];
    v10 = self->_sfSession;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __41__HDSSetupService__handleSessionStarted___block_invoke_3;
    v41[3] = &unk_279714668;
    v41[4] = self;
    [(SFSession *)v10 registerRequestID:@"_hds_ams_token" options:&unk_2864E7D70 handler:v41];
    v11 = self->_sfSession;
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __41__HDSSetupService__handleSessionStarted___block_invoke_4;
    v40[3] = &unk_279714668;
    v40[4] = self;
    [(SFSession *)v11 registerRequestID:@"_pa" options:&unk_2864E7D70 handler:v40];
    v12 = self->_sfSession;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __41__HDSSetupService__handleSessionStarted___block_invoke_6;
    v39[3] = &unk_279714668;
    v39[4] = self;
    [(SFSession *)v12 registerRequestID:@"_dA" options:&unk_2864E7D70 handler:v39];
    v13 = self->_sfSession;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __41__HDSSetupService__handleSessionStarted___block_invoke_7;
    v38[3] = &unk_279714668;
    v38[4] = self;
    [(SFSession *)v13 registerRequestID:@"_aa" options:&unk_2864E7D70 handler:v38];
    v14 = self->_sfSession;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __41__HDSSetupService__handleSessionStarted___block_invoke_8;
    v37[3] = &unk_279714668;
    v37[4] = self;
    [(SFSession *)v14 registerRequestID:@"_pvoice" options:&unk_2864E7D70 handler:v37];
    v15 = self->_sfSession;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __41__HDSSetupService__handleSessionStarted___block_invoke_9;
    v36[3] = &unk_279714668;
    v36[4] = self;
    [(SFSession *)v15 registerRequestID:@"_hds_fu" options:&unk_2864E7D70 handler:v36];
    v16 = self->_sfSession;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __41__HDSSetupService__handleSessionStarted___block_invoke_10;
    v35[3] = &unk_279714668;
    v35[4] = self;
    [(SFSession *)v16 registerRequestID:@"_hds_hp_js" options:&unk_2864E7D70 handler:v35];
    v17 = self->_sfSession;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __41__HDSSetupService__handleSessionStarted___block_invoke_11;
    v34[3] = &unk_279714668;
    v34[4] = self;
    [(SFSession *)v17 registerRequestID:@"sysdrop_sys_start" options:&unk_2864E7D70 handler:v34];
    v18 = self->_sfSession;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __41__HDSSetupService__handleSessionStarted___block_invoke_12;
    v33[3] = &unk_279714668;
    v33[4] = self;
    [(SFSession *)v18 registerRequestID:@"_hds_rpft_sysdrop_enablement" options:&unk_2864E7D70 handler:v33];
    v19 = self->_sfSession;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __41__HDSSetupService__handleSessionStarted___block_invoke_13;
    v32[3] = &unk_279714668;
    v32[4] = self;
    [(SFSession *)v19 registerRequestID:@"wp_s_f" options:&unk_2864E7D70 handler:v32];
    if (self->_prefCDPEnabled)
    {
      v20 = objc_alloc_init(MEMORY[0x277D54C80]);
      cdpSetupHandler = self->_cdpSetupHandler;
      self->_cdpSetupHandler = v20;

      [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler setDispatchQueue:self->_dispatchQueue];
      [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler setSfSession:v5];
      [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler activate];
    }

    v22 = objc_alloc_init(MEMORY[0x277D54C90]);
    wifiSetupHandler = self->_wifiSetupHandler;
    self->_wifiSetupHandler = v22;

    [(SFDeviceOperationHandlerWiFiSetup *)self->_wifiSetupHandler setDispatchQueue:self->_wifiDispatchQueue];
    [(SFDeviceOperationHandlerWiFiSetup *)self->_wifiSetupHandler setSfSession:v5];
    [(SFDeviceOperationHandlerWiFiSetup *)self->_wifiSetupHandler activate];
    v24 = objc_alloc_init(MEMORY[0x277D54C88]);
    captiveNetworkHandler = self->_captiveNetworkHandler;
    self->_captiveNetworkHandler = v24;

    [(SFDeviceOperationHandlerCNJSetup *)self->_captiveNetworkHandler setDispatchQueue:self->_dispatchQueue];
    [(SFDeviceOperationHandlerCNJSetup *)self->_captiveNetworkHandler setSfSession:v5];
    [(SFDeviceOperationHandlerCNJSetup *)self->_captiveNetworkHandler activate];
    v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v27 = [(SFSession *)self->_sfSession trSession];
    if (v27)
    {
      [v26 setObject:v27 forKeyedSubscript:@"trSession"];
    }

    v28 = [v5 messageSessionTemplate];
    if (v28)
    {
      [v26 setObject:v28 forKeyedSubscript:@"mst"];
    }

    else if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleSessionStarted:];
    }

    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      progressHandler[2](progressHandler, 31, v26);
    }

    [(SFService *)self->_sfService setNeedsSetup:0];
    if (self->_homeManager)
    {
      v30 = [MEMORY[0x277CB8F48] defaultStore];
      v31 = [v30 aa_primaryAppleAccount];

      if (!v31)
      {
        [(HMHomeManager *)self->_homeManager removeAllHomeKitPairingIdentities];
        if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupService _handleSessionStarted:];
        }
      }
    }
  }
}

void __41__HDSSetupService__handleSessionStarted___block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = v10[53];
  if (v11 && (v12 = [v11 count], v10 = *(a1 + 32), v12))
  {
    [*(a1 + 32) _handlePreAuthRequest:v8 responseHandler:v9];
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __41__HDSSetupService__handleSessionStarted___block_invoke_5;
    v13[3] = &unk_279714860;
    v13[4] = v10;
    v14 = v8;
    v15 = v9;
    [v10 fetchScanResult:v13];
  }
}

void __41__HDSSetupService__handleSessionStarted___block_invoke_11(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    __41__HDSSetupService__handleSessionStarted___block_invoke_11_cold_1();
  }

  [*(a1 + 32) _handleStartSysDrop:v7 responseHandler:v8];
}

void __41__HDSSetupService__handleSessionStarted___block_invoke_12(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    __41__HDSSetupService__handleSessionStarted___block_invoke_12_cold_1();
  }

  [*(a1 + 32) _handleStartSysDropEnablementProfileTransfer:v7 responseHandler:v8];
}

void __41__HDSSetupService__handleSessionStarted___block_invoke_13(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    __41__HDSSetupService__handleSessionStarted___block_invoke_13_cold_1();
  }

  [*(a1 + 32) _handleHomeScanRequest:v7 responseHandler:v8];
}

- (void)_runHomeKitSetupMode:(id)a3 responseHandler:(id)a4
{
  v7 = a3;
  v5 = a4;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _runHomeKitSetupMode:responseHandler:];
  }

  v6 = NSErrorWithOSStatusF();
  (*(v5 + 2))(v5, v6, 0, 0);
}

- (void)_handlePurgeSUNoSetup:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handlePurgeSUNoSetup:responseHandler:];
  }

  v8 = [(HDSSetupService *)self suControllerManager];

  if (v8)
  {
    v9 = [(HDSSetupService *)self suControllerManager];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __57__HDSSetupService__handlePurgeSUNoSetup_responseHandler___block_invoke;
    v11[3] = &unk_2797148B0;
    v11[4] = self;
    v12 = v7;
    [v9 managerStatus:v11];
  }

  else
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handlePurgeSUNoSetup:responseHandler:];
    }

    v10 = NSErrorWithOSStatusF();
    (*(v7 + 2))(v7, v10, 0, 0);
  }
}

void __57__HDSSetupService__handlePurgeSUNoSetup_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    if (gLogCategory_HDSSetupService <= 90 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __57__HDSSetupService__handlePurgeSUNoSetup_responseHandler___block_invoke_cold_1();
    }

    v10 = *(*(a1 + 40) + 16);
  }

  else if ([v7 updateState] == 9 || objc_msgSend(v7, "updateState") == 10)
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __57__HDSSetupService__handlePurgeSUNoSetup_responseHandler___block_invoke_cold_3();
    }

    v10 = *(*(a1 + 40) + 16);
  }

  else
  {
    if ([v7 updateState] != 1 && objc_msgSend(v7, "updateState") != 17)
    {
      v11 = [*(a1 + 32) suControllerManager];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __57__HDSSetupService__handlePurgeSUNoSetup_responseHandler___block_invoke_2;
      v12[3] = &unk_279714888;
      v13 = *(a1 + 40);
      [v11 purgeUpdate:v8 completion:v12];

      goto LABEL_13;
    }

    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __57__HDSSetupService__handlePurgeSUNoSetup_responseHandler___block_invoke_cold_2();
    }

    v10 = *(*(a1 + 40) + 16);
  }

  v10();
LABEL_13:
}

void __57__HDSSetupService__handlePurgeSUNoSetup_responseHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    if (gLogCategory_HDSSetupService <= 90 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __57__HDSSetupService__handlePurgeSUNoSetup_responseHandler___block_invoke_2_cold_1();
    }

    v3 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __57__HDSSetupService__handlePurgeSUNoSetup_responseHandler___block_invoke_2_cold_2();
    }

    v3 = *(*(a1 + 32) + 16);
  }

  v3();
}

- (void)_handleSessionEnded:(id)a3
{
  v4 = a3;
  sfSession = self->_sfSession;
  if (sfSession != v4)
  {
    goto LABEL_36;
  }

  if (v4 && gLogCategory_HDSSetupService <= 30)
  {
    if (gLogCategory_HDSSetupService == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      sfSession = self->_sfSession;
    }

    v21 = [(SFSession *)sfSession peer];
    LogPrintF();
  }

LABEL_7:
  sysDropService = self->_sysDropService;
  if (sysDropService)
  {
    [(SysDropService *)sysDropService invalidate];
    v7 = self->_sysDropService;
  }

  else
  {
    v7 = 0;
  }

  self->_sysDropService = 0;

  apcPlayer = self->_apcPlayer;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __39__HDSSetupService__handleSessionEnded___block_invoke;
  v22[3] = &unk_279713FF0;
  v22[4] = self;
  [(APCPlayer *)apcPlayer stopSend:0 withCompletion:v22];
  v9 = self->_apcPlayer;
  self->_apcPlayer = 0;

  if (self->_siriClient)
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleSessionEnded:];
    }

    [(SFSiriClient *)self->_siriClient stopSpeaking];
  }

  [(RPCompanionLinkClient *)self->_companionLinkClient invalidate];
  companionLinkClient = self->_companionLinkClient;
  self->_companionLinkClient = 0;

  if (self->_siriDidDeviceSetup)
  {
    [(SFSiriClient *)self->_siriClient deviceSetupEnd];
    self->_siriDidDeviceSetup = 0;
  }

  [(SFDeviceOperationHandlerWiFiSetup *)self->_wifiSetupHandler invalidate];
  wifiSetupHandler = self->_wifiSetupHandler;
  self->_wifiSetupHandler = 0;

  [(SFDeviceOperationHandlerCNJSetup *)self->_captiveNetworkHandler invalidate];
  captiveNetworkHandler = self->_captiveNetworkHandler;
  self->_captiveNetworkHandler = 0;

  homeKitSetupHandler = self->_homeKitSetupHandler;
  self->_homeKitSetupHandler = 0;

  [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler invalidate];
  cdpSetupHandler = self->_cdpSetupHandler;
  self->_cdpSetupHandler = 0;

  semaForScanFoundSU = self->_semaForScanFoundSU;
  self->_semaForScanFoundSU = 0;

  errorForScanSUNoSetup = self->_errorForScanSUNoSetup;
  self->_errorForScanSUNoSetup = 0;

  self->_canCompanionShowHomePodSU = 0;
  v17 = self->_sfSession;
  self->_sfSession = 0;

  [(SFService *)self->_sfService setNeedsSetup:!self->_finished];
  if (+[HDSDefaults disableNeedsSetup]&& isInternalBuild())
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleSessionEnded:];
    }

    [(SFService *)self->_sfService setNeedsSetup:0];
  }

  [(HDSSetupService *)self removeSysDropProfile];
  if (self->_finished && !self->_finishedEventSent)
  {
    self->_finishedEventSent = 1;
    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      progressHandler[2](progressHandler, 96, 0);
    }
  }

  v19 = self->_progressHandler;
  if (v19)
  {
    v19[2](v19, 32, 0);
  }

  if (self->_finished)
  {
    self->_finishSessionEnded = 1;
  }

  if (self->_finished2)
  {
    v20 = self->_progressHandler;
    if (v20)
    {
      v20[2](v20, 100, 0);
    }
  }

  if (self->_finishedFinal)
  {
    (*(self->_progressHandler + 2))();
  }

LABEL_36:
}

uint64_t __39__HDSSetupService__handleSessionEnded___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 456);
  if (result)
  {
    return (*(result + 16))(result, 710, 0);
  }

  return result;
}

- (void)_handleAuthActionRequest:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleAuthActionRequest:responseHandler:];
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleAuthActionRequest:Int64Ranged responseHandler:?];
  }

  if (Int64Ranged > 3)
  {
    if (Int64Ranged != 4)
    {
      if (Int64Ranged == 5)
      {
        [(HDSSetupService *)self _handleAuthActionSiriStart:v6 response:v8 responseHandler:v7];
        goto LABEL_30;
      }

      if (Int64Ranged == 6)
      {
        if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupService _handleAuthActionRequest:responseHandler:];
        }

        [(SFSiriClient *)self->_siriClient stopSpeaking];
        goto LABEL_26;
      }

      goto LABEL_21;
    }

    [(HDSSetupService *)self _handleAuthActionSiriInit:v6];
  }

  else
  {
    switch(Int64Ranged)
    {
      case 1:
        [(HDSSetupService *)self _handleAuthActionAudioPasscodeInit:v6 response:v8];
        break;
      case 2:
        [(HDSSetupService *)self _handleAuthActionAudioPasscodeStartWithResponse:v8];
        break;
      case 3:
        apcPlayer = self->_apcPlayer;
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __60__HDSSetupService__handleAuthActionRequest_responseHandler___block_invoke;
        v12[3] = &unk_279713FF0;
        v12[4] = self;
        [(APCPlayer *)apcPlayer stopSend:0 withCompletion:v12];
        v11 = self->_apcPlayer;
        self->_apcPlayer = 0;

        break;
      default:
LABEL_21:
        if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupService _handleAuthActionRequest:responseHandler:];
        }

        [v8 setObject:&unk_2864E8090 forKeyedSubscript:@"er"];
        break;
    }
  }

LABEL_26:
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleAuthActionRequest:responseHandler:];
  }

  (*(v7 + 2))(v7, 0, 0, v8);
LABEL_30:
}

uint64_t __60__HDSSetupService__handleAuthActionRequest_responseHandler___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 456);
  if (result)
  {
    return (*(result + 16))(result, 710, 0);
  }

  return result;
}

- (void)_handleAuthActionAudioPasscodeInit:(id)a3 response:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleAuthActionAudioPasscodeInit:response:];
  }

  CFDataGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  if (v8)
  {
    v9 = v8;
    objc_storeStrong(&self->_apcCapData, v8);
  }

  else
  {
    v9 = self->_apcCapData;
    if (!v9)
    {
      if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupService _handleAuthActionAudioPasscodeInit:response:];
      }

      v9 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v25 = 0;
      v29 = 4294960591;
      goto LABEL_49;
    }
  }

  apcPlayer = self->_apcPlayer;
  if (apcPlayer)
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __63__HDSSetupService__handleAuthActionAudioPasscodeInit_response___block_invoke;
    v34[3] = &unk_279713FF0;
    v34[4] = self;
    [(APCPlayer *)apcPlayer stopSend:1 withCompletion:v34];
  }

  v11 = [objc_alloc(getAPCPlayerClass()) initWithListenerCapabilityData:v9 payloadLength:3];
  v12 = self->_apcPlayer;
  self->_apcPlayer = v11;

  v13 = self->_apcPlayer;
  if (!v13)
  {
    if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleAuthActionAudioPasscodeInit:response:];
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    v25 = 0;
    v29 = 4294960564;
    goto LABEL_49;
  }

  [(APCPlayer *)v13 setDispatchQueue:self->_dispatchQueue];
  __str[0] = 0;
  v14 = 298;
  do
  {
    RandomString();
  }

  while (__str[0] == 48 && v14-- != 0);
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:__str];
  [(SFService *)self->_sfService setFixedPIN:v16];

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleAuthActionAudioPasscodeInit:response:];
  }

  v17 = strtoul(__str, 0, 10);
  v32 = v17;
  v33 = BYTE2(v17);
  v18 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v32 length:3];
  v19 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HomeDeviceSetup"];
  v20 = [v19 URLForResource:@"HomePodPasscode-b238.m4a" withExtension:0];
  if (v20)
  {
    v21 = self->_apcPlayer;
    v31 = 0;
    [(APCPlayer *)v21 preparePayload:v18 usingCarrierAtURL:v20 error:&v31];
    v22 = v31;
  }

  else
  {
    v22 = NSErrorWithOSStatusF();
  }

  v23 = v22;
  if (v22)
  {
    if (gLogCategory_HDSSetupService <= 90 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleAuthActionAudioPasscodeInit:response:];
    }

    v24 = self->_apcPlayer;
    v30 = v23;
    [(APCPlayer *)v24 preparePayload:v18 usingCarrierAsset:3 error:&v30];
    v25 = v30;

    if (v25)
    {
      if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupService _handleAuthActionAudioPasscodeInit:response:];
      }

      goto LABEL_48;
    }
  }

  v26 = [(APCPlayer *)self->_apcPlayer configurationData];
  if (!v26)
  {
    if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleAuthActionAudioPasscodeInit:response:];
    }

    v25 = 0;
LABEL_48:
    v29 = 4294960596;
LABEL_49:
    v27 = [MEMORY[0x277CCABB0] numberWithInt:v29];
    [v7 setObject:v27 forKeyedSubscript:@"er"];
    goto LABEL_29;
  }

  v27 = v26;
  [v7 setObject:v26 forKeyedSubscript:@"apcPC"];
  v25 = 0;
LABEL_29:

  v28 = *MEMORY[0x277D85DE8];
}

uint64_t __63__HDSSetupService__handleAuthActionAudioPasscodeInit_response___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 456);
  if (result)
  {
    return (*(result + 16))(result, 710, 0);
  }

  return result;
}

- (void)_handleAuthActionAudioPasscodeStartWithResponse:(id)a3
{
  v4 = a3;
  apcPlayer = self->_apcPlayer;
  if (apcPlayer)
  {
LABEL_19:
    [(APCPlayer *)apcPlayer startSend];
    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      progressHandler[2](progressHandler, 60, 0);
    }

    goto LABEL_21;
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleAuthActionAudioPasscodeStartWithResponse:];
  }

  v6 = self->_apcCapData;
  if (v6)
  {
    v7 = [objc_alloc(getAPCPlayerClass()) initWithListenerCapabilityData:v6 payloadLength:3];
    v8 = self->_apcPlayer;
    self->_apcPlayer = v7;

    v9 = self->_apcPlayer;
    if (v9)
    {
      [(APCPlayer *)v9 setDispatchQueue:self->_dispatchQueue];
      v10 = [(SFService *)self->_sfService fixedPIN];
      v11 = [v10 UTF8String];

      if (v11)
      {
        v12 = strtoul(v11, 0, 10);
        v26 = v12;
        v27 = BYTE2(v12);
        v13 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v26 length:3];
        v14 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HomeDeviceSetup"];
        v15 = [v14 URLForResource:@"HomePodPasscode-b238.m4a" withExtension:0];
        if (v15)
        {
          v16 = self->_apcPlayer;
          v25 = 0;
          [(APCPlayer *)v16 preparePayload:v13 usingCarrierAtURL:v15 error:&v25];
          v17 = v25;
        }

        else
        {
          v17 = NSErrorWithOSStatusF();
        }

        v18 = v17;
        if (v17)
        {
          v19 = self->_apcPlayer;
          v24 = v18;
          [(APCPlayer *)v19 preparePayload:v13 usingCarrierAsset:3 error:&v24];
          v20 = v24;

          if (v20)
          {
            if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
            {
              [HDSSetupService _handleAuthActionAudioPasscodeStartWithResponse:];
            }

            v21 = 0;
            v18 = 4294960596;
            goto LABEL_16;
          }

          v18 = 0;
        }

        else
        {
          v20 = 0;
        }

        v21 = 1;
LABEL_16:

        goto LABEL_17;
      }

      if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupService _handleAuthActionAudioPasscodeStartWithResponse:];
      }

      v20 = 0;
      v13 = 0;
      v21 = 0;
      v18 = 4294960551;
    }

    else
    {
      if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupService _handleAuthActionAudioPasscodeStartWithResponse:];
      }

      v20 = 0;
      v13 = 0;
      v21 = 0;
      v18 = 4294960564;
    }
  }

  else
  {
    if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleAuthActionAudioPasscodeStartWithResponse:];
    }

    v20 = 0;
    v13 = 0;
    v21 = 0;
    v18 = 4294960591;
  }

LABEL_17:

  if (v21)
  {
    apcPlayer = self->_apcPlayer;
    goto LABEL_19;
  }

  if (v18)
  {
    v23 = [MEMORY[0x277CCABB0] numberWithInt:v18];
    [v4 setObject:v23 forKeyedSubscript:@"er"];
  }

LABEL_21:
}

- (void)_handleAuthActionSiriInit:(id)a3
{
  v4 = a3;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleAuthActionSiriInit:];
  }

  v8[0] = 0;
  RandomString();
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
  [(SFService *)self->_sfService setFixedPIN:v5];

  if (IsAppleInternalBuild())
  {
    CFStringGetTypeID();
    v6 = CFDictionaryGetTypedValue();
    if (![v6 length])
    {
      CFStringGetTypeID();
      v7 = CFPrefs_CopyTypedValue();

      v6 = v7;
    }

    if ([v6 length])
    {
      if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupService _handleAuthActionSiriInit:];
      }

      [(SFService *)self->_sfService setFixedPIN:v6];
    }
  }
}

- (void)_handleAuthActionSiriStart:(id)a3 response:(id)a4 responseHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleAuthActionSiriStart:response:responseHandler:];
  }

  v11 = [(SFService *)self->_sfService fixedPIN];
  if ([v11 length] <= 3)
  {
    [HDSSetupService _handleAuthActionSiriStart:v9 response:v10 responseHandler:v11];
    goto LABEL_24;
  }

  CFStringGetTypeID();
  v12 = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  v13 = CFDictionaryGetTypedValue();
  v14 = CFDictionaryGetInt64Ranged() << 32;
  CFStringGetTypeID();
  v15 = CFDictionaryGetTypedValue();
  if (v14 == 0x200000000)
  {
    v16 = 64;
  }

  else
  {
    v16 = 192;
  }

  if (v14 == 0x100000000)
  {
    v17 = 128;
  }

  else
  {
    v17 = v16;
  }

  if (v12 && gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleAuthActionSiriStart:response:responseHandler:];
    if (v13)
    {
      goto LABEL_16;
    }
  }

  else if (v13)
  {
LABEL_16:
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleAuthActionSiriStart:response:responseHandler:];
    }
  }

  if (v15 && gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleAuthActionSiriStart:response:responseHandler:];
  }

  siriClient = self->_siriClient;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __71__HDSSetupService__handleAuthActionSiriStart_response_responseHandler___block_invoke;
  v19[3] = &unk_279714640;
  v20 = v9;
  v21 = v10;
  [(SFSiriClient *)siriClient speakPasscode:v11 instructions:v12 languageCode:v13 voiceName:v15 flags:v17 completion:v19];

LABEL_24:
}

uint64_t __71__HDSSetupService__handleAuthActionSiriStart_response_responseHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithInt:NSErrorToOSStatus()];
    [*(a1 + 32) setObject:v3 forKeyedSubscript:@"er"];
  }

  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 16);

  return v5();
}

- (int)_handleBasicConfigRequest:(id)a3
{
  v4 = a3;
  v97 = 0;
  v5 = [objc_opt_class() signpostLog];
  v6 = [(HDSSetupService *)self signpostID];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "BasicConfig", "", buf, 2u);
    }
  }

  apcPlayer = self->_apcPlayer;
  v95[0] = MEMORY[0x277D85DD0];
  v95[1] = 3221225472;
  v95[2] = __45__HDSSetupService__handleBasicConfigRequest___block_invoke;
  v95[3] = &unk_279713FF0;
  v95[4] = self;
  [(APCPlayer *)apcPlayer stopSend:0 withCompletion:v95];
  v9 = self->_apcPlayer;
  self->_apcPlayer = 0;

  Int64 = CFDictionaryGetInt64();
  v11 = Int64;
  if (!v97)
  {
    softLink_AXSVoiceOverTouchSetEnabled(Int64 != 0);
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [(HDSSetupService *)v11 != 0 _handleBasicConfigRequest:?];
  }

  CFDictionaryGetDouble();
  v13 = *&v12;
  if (!v97)
  {
    v14 = v12;
    softLink_AXSVoiceOverTouchSetSpeakingRate(v14);
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    v91 = v97;
    TMSourceProxBuddy = v13;
    v89 = @"vosr";
    LogPrintF();
  }

  v15 = [(objc_class *)getAXSettingsClass() sharedInstance];
  v16 = CFDictionaryGetInt64();
  v17 = v16;
  if (!v97)
  {
    [v15 setTouchAccommodationsEnabled:{v16 != 0, v89, TMSourceProxBuddy, v91}];
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [(HDSSetupService *)v17 != 0 _handleBasicConfigRequest:?];
  }

  v18 = CFDictionaryGetInt64();
  v19 = v18;
  if (!v97)
  {
    [v15 setTouchAccommodationsHoldDurationEnabled:v18 != 0];
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [(HDSSetupService *)v19 != 0 _handleBasicConfigRequest:?];
  }

  CFDictionaryGetDouble();
  v21 = *&v20;
  if (!v97)
  {
    [v15 setTouchAccommodationsHoldDuration:v20];
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    v91 = v97;
    TMSourceProxBuddy = v21;
    v89 = @"taHD";
    LogPrintF();
  }

  v22 = CFDictionaryGetInt64();
  v23 = v22;
  if (!v97)
  {
    [v15 setTouchAccommodationsIgnoreRepeatEnabled:{v22 != 0, v89, TMSourceProxBuddy, v91}];
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [(HDSSetupService *)v23 != 0 _handleBasicConfigRequest:?];
  }

  CFDictionaryGetDouble();
  v25 = *&v24;
  if (!v97)
  {
    [v15 setTouchAccommodationsIgnoreRepeatDuration:v24];
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    v91 = v97;
    TMSourceProxBuddy = v25;
    v89 = @"taIRD";
    LogPrintF();
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  v27 = Int64Ranged;
  if (!v97)
  {
    [v15 setTouchAccommodationsTapActivationMethod:Int64Ranged];
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    TMSourceProxBuddy = v27;
    v91 = v97;
    v89 = @"taTAM";
    LogPrintF();
  }

  CFDictionaryGetDouble();
  v29 = *&v28;
  if (!v97)
  {
    [v15 setTouchAccommodationsTapActivationTimeout:v28];
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    v91 = v97;
    TMSourceProxBuddy = v29;
    v89 = @"taTAT";
    LogPrintF();
  }

  CFDictionaryGetDouble();
  v31 = *&v30;
  if (!v97)
  {
    [v15 setVoiceOverDoubleTapInterval:v30];
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    v91 = v97;
    TMSourceProxBuddy = v31;
    v89 = @"vodti";
    LogPrintF();
  }

  v32 = CFDictionaryGetInt64();
  v33 = MEMORY[0x277CBF008];
  if (v32)
  {
    CFPrefs_SetValue();
    CFPrefs_SetInt64();
    CFPreferencesSetValue(@"AcceptProfileServicePayloadOnHomePod", *MEMORY[0x277CBED28], *v33, *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [(HDSSetupService *)v32 == 0 _handleBasicConfigRequest:?];
  }

  v34 = CFDictionaryGetInt64Ranged();
  if (v34)
  {
    CFPrefs_SetInt64();
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    v89 = v34;
    TMSourceProxBuddy = v97;
    LogPrintF();
  }

  v35 = CFDictionaryGetInt64();
  if (!v97)
  {
    [(objc_class *)getCLLocationManagerClass() setLocationServicesEnabled:v35 != 0];
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [(HDSSetupService *)v35 != 0 _handleBasicConfigRequest:?];
  }

  CFStringGetTypeID();
  v36 = CFDictionaryGetTypedValue();
  p_languageCode = &self->_languageCode;
  languageCode = self->_languageCode;
  self->_languageCode = v36;

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [(HDSSetupService *)&self->_languageCode _handleBasicConfigRequest:?];
  }

  if (v97)
  {
    CFStringGetTypeID();
    v39 = CFDictionaryGetTypedValue();
    v40 = *p_languageCode;
    *p_languageCode = v39;

    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [(HDSSetupService *)&self->_languageCode _handleBasicConfigRequest:?];
    }
  }

  v41 = *p_languageCode;
  if (v41)
  {
    CFPreferencesSetAppValue(@"AppleLanguageCodeSetup", v41, *v33);
  }

  CFStringGetTypeID();
  v42 = CFDictionaryGetTypedValue();
  localeIdentifier = self->_localeIdentifier;
  self->_localeIdentifier = v42;

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [(HDSSetupService *)&self->_localeIdentifier _handleBasicConfigRequest:?];
  }

  v44 = self->_localeIdentifier;
  if (v44)
  {
    CFPreferencesSetAppValue(@"AppleLocaleSetup", v44, *v33);
  }

  CFStringGetTypeID();
  v45 = CFDictionaryGetTypedValue();
  temperatureUnit = self->_temperatureUnit;
  self->_temperatureUnit = v45;

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [(HDSSetupService *)&self->_temperatureUnit _handleBasicConfigRequest:?];
  }

  CFPreferencesAppSynchronize(*v33);
  if ([(SFSession *)self->_sfSession sharingSourceVersion]- 16300101 > 0x13D5BA)
  {
    self->_siriDataSharingDeviceIsValid = 1;
    v47 = CFDictionaryGetInt64();
    if (!v97)
    {
      if (v47)
      {
        v48 = 6;
      }

      else
      {
        v48 = 5;
      }

      self->_siriDataSharingState = v48;
    }

    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [(HDSSetupService *)self _handleBasicConfigRequest:?];
    }
  }

  else
  {
    self->_siriDataSharingDeviceIsValid = 0;
    if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleBasicConfigRequest:];
    }

    self->_siriDataSharingState = 5;
  }

  siriDisabled = CFDictionaryGetInt64() != 0;
  self->_siriDisabled = siriDisabled;
  if (gLogCategory_HDSSetupService <= 30)
  {
    if (gLogCategory_HDSSetupService == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_113;
      }

      siriDisabled = self->_siriDisabled;
    }

    if (siriDisabled)
    {
      v50 = "yes";
    }

    else
    {
      v50 = "no";
    }

    v89 = v50;
    TMSourceProxBuddy = v97;
    LogPrintF();
  }

LABEL_113:
  CFStringGetTypeID();
  v51 = CFDictionaryGetTypedValue();
  siriListenLanguage = self->_siriListenLanguage;
  self->_siriListenLanguage = v51;

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [(HDSSetupService *)&self->_siriListenLanguage _handleBasicConfigRequest:?];
  }

  siriVoiceGender = CFDictionaryGetInt64Ranged();
  self->_siriVoiceGender = siriVoiceGender;
  if (gLogCategory_HDSSetupService <= 30)
  {
    if (gLogCategory_HDSSetupService == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_120;
      }

      siriVoiceGender = self->_siriVoiceGender;
    }

    v89 = siriVoiceGender;
    TMSourceProxBuddy = v97;
    LogPrintF();
  }

LABEL_120:
  CFStringGetTypeID();
  v54 = CFDictionaryGetTypedValue();
  siriVoiceLanguage = self->_siriVoiceLanguage;
  self->_siriVoiceLanguage = v54;

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [(HDSSetupService *)&self->_siriVoiceLanguage _handleBasicConfigRequest:?];
  }

  CFStringGetTypeID();
  v56 = CFDictionaryGetTypedValue();
  siriVoiceName = self->_siriVoiceName;
  self->_siriVoiceName = v56;

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [(HDSSetupService *)&self->_siriVoiceName _handleBasicConfigRequest:?];
  }

  CFDateGetTypeID();
  v58 = CFDictionaryGetTypedValue();
  timeObj = self->_timeObj;
  self->_timeObj = v58;

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [(HDSSetupService *)&self->_timeObj _handleBasicConfigRequest:?];
  }

  v60 = self->_timeObj;
  if (v60)
  {
    if (gLogCategory_HDSSetupService <= 30)
    {
      if (gLogCategory_HDSSetupService == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_134;
        }

        v60 = self->_timeObj;
      }

      v89 = v60;
      TMSourceProxBuddy = getTMSourceProxBuddy();
      LogPrintF();
    }

LABEL_134:
    v61 = getTMSourceProxBuddy();
    [(NSDate *)self->_timeObj timeIntervalSinceReferenceDate];
    softLinkTMSetSourceTime(v61, v62, 10.0);
  }

  LODWORD(timeAuto) = CFDictionaryGetInt64() != 0;
  v64 = v97;
  if (v97)
  {
    timeAuto = 0xFFFFFFFFLL;
  }

  else
  {
    timeAuto = timeAuto;
  }

  self->_timeAuto = timeAuto;
  if (gLogCategory_HDSSetupService <= 30)
  {
    if (gLogCategory_HDSSetupService != -1)
    {
LABEL_140:
      v89 = timeAuto;
      TMSourceProxBuddy = v64;
      LogPrintF();
      goto LABEL_142;
    }

    if (_LogCategory_Initialize())
    {
      timeAuto = self->_timeAuto;
      v64 = v97;
      goto LABEL_140;
    }
  }

LABEL_142:
  timeCycle = CFDictionaryGetInt64Ranged();
  self->_timeCycle = timeCycle;
  if (gLogCategory_HDSSetupService <= 30)
  {
    if (gLogCategory_HDSSetupService == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_146;
      }

      timeCycle = self->_timeCycle;
    }

    v89 = timeCycle;
    TMSourceProxBuddy = v97;
    LogPrintF();
  }

LABEL_146:
  CFStringGetTypeID();
  v66 = CFDictionaryGetTypedValue();
  timeZone = self->_timeZone;
  self->_timeZone = v66;

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [(HDSSetupService *)&self->_timeZone _handleBasicConfigRequest:?];
  }

  v68 = CFDictionaryGetInt64() != 0;
  v69 = v97;
  if (v97)
  {
    timeZoneAuto = 0xFFFFFFFFLL;
  }

  else
  {
    timeZoneAuto = v68;
  }

  self->_timeZoneAuto = timeZoneAuto;
  if (gLogCategory_HDSSetupService <= 30)
  {
    if (gLogCategory_HDSSetupService == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_156;
      }

      timeZoneAuto = self->_timeZoneAuto;
      v69 = v97;
    }

    v89 = timeZoneAuto;
    TMSourceProxBuddy = v69;
    LogPrintF();
  }

LABEL_156:
  [(HDSSetupService *)self setTime:v89];
  v71 = objc_alloc_init(getHMDeviceSetupOperationHandlerClass());
  homeKitSetupHandler = self->_homeKitSetupHandler;
  self->_homeKitSetupHandler = v71;

  v73 = self->_homeKitSetupHandler;
  v74 = [(SFSession *)self->_sfSession trSession];
  [(HMDeviceSetupOperationHandler *)v73 registerMessageHandlersForSession:v74];

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleBasicConfigRequest:?];
  }

  v75 = CFDictionaryGetInt64();
  if (*p_languageCode)
  {
    v76 = v75;
    v77 = [(objc_class *)getVTPreferencesClass() sharedPreferences];
    v78 = [v77 isCompactVoiceTriggerAvailableForLanguageCode:*p_languageCode];

    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleBasicConfigRequest:];
      if (!v78)
      {
        goto LABEL_172;
      }
    }

    else if (!v78)
    {
      goto LABEL_172;
    }

    v79 = v76 != 0;
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleBasicConfigRequest:];
    }

    v80 = [(objc_class *)getVTPreferencesClass() sharedPreferences];
    v81 = [v80 setUserPreferredVoiceTriggerPhraseType:v79 sender:self deviceType:0 endpointId:0];

    if (v81 && gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleBasicConfigRequest:];
    }
  }

LABEL_172:
  v82 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HDSSetupService__handleBasicConfigRequest___block_invoke_2;
  block[3] = &unk_2797142A8;
  v83 = v4;
  v93 = v83;
  v94 = v68;
  dispatch_async(v82, block);

  v84 = [objc_opt_class() signpostLog];
  v85 = [(HDSSetupService *)self signpostID];
  if (v85 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v86 = v85;
    if (os_signpost_enabled(v84))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, v84, OS_SIGNPOST_INTERVAL_END, v86, "BasicConfig", "", buf, 2u);
    }
  }

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 80, v83);
  }

  return 0;
}

uint64_t __45__HDSSetupService__handleBasicConfigRequest___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 456);
  if (result)
  {
    return (*(result + 16))(result, 710, 0);
  }

  return result;
}

void __45__HDSSetupService__handleBasicConfigRequest___block_invoke_2(uint64_t a1)
{
  v16 = 0;
  v2 = *(a1 + 32);
  Int64 = CFDictionaryGetInt64();
  v4 = Int64;
  v5 = Int64 != 0;
  v6 = [MEMORY[0x277D262A0] sharedConnection];
  [v6 setBoolValue:v5 forSetting:*MEMORY[0x277D25E90]];

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    __45__HDSSetupService__handleBasicConfigRequest___block_invoke_2_cold_1(v4 != 0, &v16);
  }

  v7 = *(a1 + 32);
  v8 = CFDictionaryGetInt64();
  if (!v16)
  {
    v9 = v8;
    v10 = v8 != 0;
    v11 = [MEMORY[0x277D262A0] sharedConnection];
    [v11 setBoolValue:v10 forSetting:*MEMORY[0x277D25E58]];

    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __45__HDSSetupService__handleBasicConfigRequest___block_invoke_2_cold_2(v9 != 0, &v16);
    }
  }

  v12 = *(a1 + 32);
  v13 = CFDictionaryGetInt64();
  if (!v16)
  {
    v14 = v13;
    v15 = [MEMORY[0x277D262A0] sharedConnection];
    [v15 setBoolValue:*(a1 + 40) forSetting:*MEMORY[0x277D25FB8]];

    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __45__HDSSetupService__handleBasicConfigRequest___block_invoke_2_cold_3(v14 == 0, &v16);
    }
  }
}

- (void)setTime
{
  timeZone = self->_timeZone;
  v4 = MEMORY[0x277CBED28];
  if (timeZone)
  {
    if (gLogCategory_HDSSetupService <= 30)
    {
      if (gLogCategory_HDSSetupService != -1 || (v5 = _LogCategory_Initialize(), timeZone = self->_timeZone, v5))
      {
        v11 = timeZone;
        LogPrintF();
        timeZone = self->_timeZone;
      }
    }

    [(NSString *)timeZone UTF8String];
    if (tzlink() && gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      v12 = self->_timeZone;
      LogPrintF();
    }

    CFPreferencesSetAppValue(@"timezone", self->_timeZone, @"com.apple.preferences.datetime");
    CFPreferencesSetAppValue(@"timezoneset", *v4, @"com.apple.preferences.datetime");
    CFPreferencesAppSynchronize(@"com.apple.preferences.datetime");
    [MEMORY[0x277CBEBB0] resetSystemTimeZone];
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [(HDSSetupService *)self setTime];
  }

  softLinkTMSetAutomaticTimeZoneEnabled(1);
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [(HDSSetupService *)self setTime];
  }

  softLinkTMSetAutomaticTimeEnabled(1);
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [(HDSSetupService *)self setTime];
  }

  timeCycle = self->_timeCycle;
  v7 = *v4;
  if (timeCycle == 12)
  {
    v8 = *v4;
  }

  else
  {
    v8 = 0;
  }

  if (timeCycle == 24)
  {
    v9 = *v4;
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x277CBF008];
  CFPreferencesSetAppValue(@"AppleICUForce12HourTime", v8, *MEMORY[0x277CBF008]);
  CFPreferencesSetAppValue(@"AppleICUForce24HourTime", v9, v10);
  CFPreferencesAppSynchronize(v10);
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService setTime];
  }

  softLinkTMSetupTime(self->_dispatchQueue, &__block_literal_global_5, 30.0);
  notify_post("AppleTimePreferencesChangedNotification");
  notify_post("AppleDatePreferencesChangedNotification");
  self->_timeSet = 1;
}

void __26__HDSSetupService_setTime__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __26__HDSSetupService_setTime__block_invoke_cold_1();
    }
  }

  else if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    __26__HDSSetupService_setTime__block_invoke_cold_2();
  }
}

- (void)_handleBasicConfigResponse:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (gLogCategory_HDSSetupService <= 30)
  {
    v5 = v3;
    if (gLogCategory_HDSSetupService != -1 || (v3 = _LogCategory_Initialize(), v4 = v5, v3))
    {
      v3 = [HDSSetupService _handleBasicConfigResponse:v4];
      v4 = v5;
    }
  }

  MEMORY[0x2821F96F8](v3, v4);
}

- (void)_handleFinishRequest:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleFinishRequest:responseHandler:];
  }

  v8 = [objc_opt_class() signpostLog];
  v9 = [(HDSSetupService *)self signpostID];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v8))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "Finish", "", v11, 2u);
    }
  }

  self->_finishSessionEnded = 0;
  [(HDSSetupService *)self _handleFinishApply:v6 responseHandler:v7];
}

- (void)_handleFinishApply:(id)a3 responseHandler:(id)a4
{
  v55[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v51 = a4;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleFinishApply:responseHandler:];
  }

  CFStringGetTypeID();
  v7 = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  if (v7)
  {
    CUSetSystemName();
  }

  [(HDSSetupService *)self _setSiriInfo];
  v9 = MEMORY[0x277CBF008];
  if (!self->_timeSet)
  {
    timeZone = self->_timeZone;
    v11 = MEMORY[0x277CBED28];
    if (timeZone)
    {
      if (gLogCategory_HDSSetupService <= 30)
      {
        if (gLogCategory_HDSSetupService != -1 || (v12 = _LogCategory_Initialize(), timeZone = self->_timeZone, v12))
        {
          v49 = timeZone;
          LogPrintF();
          timeZone = self->_timeZone;
        }
      }

      [(NSString *)timeZone UTF8String];
      v13 = tzlink();
      if (v13)
      {
        if (gLogCategory_HDSSetupService <= 60)
        {
          v14 = v13;
          if (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize())
          {
            v49 = self->_timeZone;
            v50 = v14;
            LogPrintF();
          }
        }
      }

      CFPreferencesSetAppValue(@"timezone", self->_timeZone, @"com.apple.preferences.datetime");
      CFPreferencesSetAppValue(@"timezoneset", *v11, @"com.apple.preferences.datetime");
      CFPreferencesAppSynchronize(@"com.apple.preferences.datetime");
      [MEMORY[0x277CBEBB0] resetSystemTimeZone];
    }

    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleFinishApply:? responseHandler:?];
    }

    softLinkTMSetAutomaticTimeZoneEnabled(1);
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleFinishApply:? responseHandler:?];
    }

    softLinkTMSetAutomaticTimeEnabled(1);
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleFinishApply:? responseHandler:?];
    }

    timeCycle = self->_timeCycle;
    v16 = *v11;
    if (timeCycle == 12)
    {
      v17 = *v11;
    }

    else
    {
      v17 = 0;
    }

    if (timeCycle == 24)
    {
      v18 = *v11;
    }

    else
    {
      v18 = 0;
    }

    v19 = *v9;
    CFPreferencesSetAppValue(@"AppleICUForce12HourTime", v17, *v9);
    CFPreferencesSetAppValue(@"AppleICUForce24HourTime", v18, v19);
    CFPreferencesAppSynchronize(v19);
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleFinishApply:responseHandler:];
    }

    softLinkTMSetupTime(self->_dispatchQueue, &__block_literal_global_703, 30.0);
  }

  languageCode = self->_languageCode;
  if (languageCode)
  {
    v21 = self->_languageCode;
    if (gLogCategory_HDSSetupService <= 30)
    {
      v21 = self->_languageCode;
      if (gLogCategory_HDSSetupService != -1 || (v22 = _LogCategory_Initialize(), v21 = self->_languageCode, v22))
      {
        v49 = v21;
        LogPrintF();
        v21 = self->_languageCode;
      }
    }

    v23 = MEMORY[0x277CBEAF8];
    v55[0] = v21;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:{1, v49, v50, v51}];
    [v23 setPreferredLanguages:v24];
  }

  v25 = *v9;
  CFPreferencesSetAppValue(@"AppleLanguageCodeSetup", 0, *v9);
  localeIdentifier = self->_localeIdentifier;
  v27 = localeIdentifier != 0;
  if (localeIdentifier)
  {
    v28 = self->_localeIdentifier;
    if (gLogCategory_HDSSetupService <= 30)
    {
      if (gLogCategory_HDSSetupService != -1 || (v29 = _LogCategory_Initialize(), v28 = self->_localeIdentifier, v29))
      {
        v49 = v28;
        LogPrintF();
        v28 = self->_localeIdentifier;
      }
    }

    CFPreferencesSetAppValue(@"AppleLocale", v28, v25);
    CFPreferencesAppSynchronize(v25);
  }

  CFPreferencesSetAppValue(@"AppleLocaleSetup", 0, v25);
  temperatureUnit = self->_temperatureUnit;
  if (temperatureUnit)
  {
    if (gLogCategory_HDSSetupService <= 30)
    {
      if (gLogCategory_HDSSetupService != -1 || (v31 = _LogCategory_Initialize(), temperatureUnit = self->_temperatureUnit, v31))
      {
        v49 = temperatureUnit;
        LogPrintF();
        temperatureUnit = self->_temperatureUnit;
      }
    }

    [MEMORY[0x277CBEAF8] _setPreferredTemperatureUnit:{temperatureUnit, v49}];
    v27 = 1;
  }

  else if (!(languageCode | localeIdentifier))
  {
    goto LABEL_72;
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleFinishApply:responseHandler:];
  }

  if (lockdown_connect())
  {
    v32 = MEMORY[0x277D82A18];
    if (languageCode)
    {
      v33 = *MEMORY[0x277D82A18];
      v34 = *MEMORY[0x277D82A20];
      v35 = *MEMORY[0x277CBED28];
      lockdown_set_value();
    }

    if (v27)
    {
      v36 = *v32;
      v37 = *MEMORY[0x277D82A28];
      v38 = *MEMORY[0x277CBED28];
      lockdown_set_value();
    }

    lockdown_disconnect();
  }

  else if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleFinishApply:responseHandler:];
  }

  if (!self->_timeSet)
  {
    notify_post("AppleDatePreferencesChangedNotification");
    notify_post("AppleTimePreferencesChangedNotification");
  }

  notify_post("AppleNumberPreferencesChangedNotification");
  notify_post("AppleLanguagePreferencesChangedNotification");
  notify_post("com.apple.language.changed");
LABEL_72:
  CFAbsoluteTimeGetCurrent();
  CFPrefs_SetDouble();
  self->_finished = 1;
  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 95, 0);
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleFinishApply:responseHandler:];
  }

  v41 = self->_finishApplyTimer;
  v42 = v41;
  if (v41)
  {
    dispatch_source_cancel(v41);
    finishApplyTimer = self->_finishApplyTimer;
    self->_finishApplyTimer = 0;
  }

  v44 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_dispatchQueue);
  v45 = self->_finishApplyTimer;
  self->_finishApplyTimer = v44;

  v46 = self->_finishApplyTimer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __54__HDSSetupService__handleFinishApply_responseHandler___block_invoke_2;
  handler[3] = &unk_2797148F8;
  handler[4] = self;
  v54 = Int64Ranged;
  v47 = v51;
  v53 = v47;
  dispatch_source_set_event_handler(v46, handler);
  HDSDispatchTimerSet(self->_finishApplyTimer, 4.0, -1.0, -4.0);
  dispatch_resume(self->_finishApplyTimer);

  v48 = *MEMORY[0x277D85DE8];
}

void __54__HDSSetupService__handleFinishApply_responseHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __54__HDSSetupService__handleFinishApply_responseHandler___block_invoke_cold_1();
    }
  }

  else if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    __54__HDSSetupService__handleFinishApply_responseHandler___block_invoke_cold_2();
  }
}

uint64_t __54__HDSSetupService__handleFinishApply_responseHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }

  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);

  return [v7 _handleFinishDone:v6 responseHandler:v8];
}

uint64_t __53__HDSSetupService__handleFinishDone_responseHandler___block_invoke(uint64_t result)
{
  v1 = result;
  if (gLogCategory_HDSSetupService <= 30)
  {
    if (gLogCategory_HDSSetupService != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = __53__HDSSetupService__handleFinishDone_responseHandler___block_invoke_cold_1();
    }
  }

  v2 = *(v1 + 32);
  if (*(v2 + 64) != -1)
  {
    *(v2 + 62) = 1;
    v3 = *(v1 + 32);
    if (v3[9] == 0.0)
    {
      mach_absolute_time();
      v4 = *(v1 + 48);
      UpTicksToSecondsF();
      *(*(v1 + 32) + 72) = v5;
      v3 = *(v1 + 32);
    }

    result = [v3 _handleFinishDone2Ready];
    if (result)
    {
      v6 = *(v1 + 56);
      v7 = *(v1 + 32);
      v8 = *(v1 + 40);

      return [v7 _handleFinishDone2:v6 responseHandler:v8];
    }
  }

  return result;
}

uint64_t __53__HDSSetupService__handleFinishDone_responseHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(a1 + 32) + 32))
  {
    v10 = v3;
    v3 = [v3 mediaSystemState];
    v5 = v3;
    if (gLogCategory_HDSSetupService <= 30)
    {
      if (gLogCategory_HDSSetupService != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        v3 = __53__HDSSetupService__handleFinishDone_responseHandler___block_invoke_2_cold_1();
      }
    }

    v4 = v10;
    if (v5 == 4 || v5 == 1)
    {
      *(*(a1 + 32) + 80) = 1;
      v6 = *(a1 + 32);
      if (v6[11] == 0.0)
      {
        mach_absolute_time();
        v7 = *(a1 + 48);
        UpTicksToSecondsF();
        *(*(a1 + 32) + 88) = v8;
        v6 = *(a1 + 32);
      }

      v3 = [v6 _handleFinishDone2Ready];
      v4 = v10;
      if (v3)
      {
        v3 = [*(a1 + 32) _handleFinishDone2:*(a1 + 56) responseHandler:*(a1 + 40)];
        v4 = v10;
      }
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

uint64_t __53__HDSSetupService__handleFinishDone_responseHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(a1 + 32) + 32))
  {
    v9 = v3;
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || (v3 = _LogCategory_Initialize(), v4 = v9, v3)))
    {
      v3 = __53__HDSSetupService__handleFinishDone_responseHandler___block_invoke_3_cold_1();
      v4 = v9;
      if (!v9)
      {
        goto LABEL_10;
      }
    }

    else if (!v4)
    {
      goto LABEL_10;
    }

    *(*(a1 + 32) + 80) = 1;
    v5 = *(a1 + 32);
    if (v5[11] == 0.0)
    {
      mach_absolute_time();
      v6 = *(a1 + 48);
      UpTicksToSecondsF();
      *(*(a1 + 32) + 88) = v7;
      v5 = *(a1 + 32);
    }

    v3 = [v5 _handleFinishDone2Ready];
    v4 = v9;
    if (v3)
    {
      v3 = [*(a1 + 32) _handleFinishDone2:*(a1 + 56) responseHandler:*(a1 + 40)];
      v4 = v9;
    }
  }

LABEL_10:

  return MEMORY[0x2821F96F8](v3, v4);
}

uint64_t __53__HDSSetupService__handleFinishDone_responseHandler___block_invoke_4(uint64_t a1)
{
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    __53__HDSSetupService__handleFinishDone_responseHandler___block_invoke_4_cold_1();
  }

  v2 = *(a1 + 32);
  if (v2[11] == 0.0)
  {
    mach_absolute_time();
    v3 = *(a1 + 48);
    UpTicksToSecondsF();
    *(*(a1 + 32) + 88) = v4;
    v2 = *(a1 + 32);
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 56) | 4u;

  return [v2 _handleFinishDone2:v6 responseHandler:v5];
}

uint64_t __54__HDSSetupService__handleFinishDone2_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (gLogCategory_HDSSetupService <= 30)
  {
    v7 = v3;
    if (gLogCategory_HDSSetupService != -1 || (v3 = _LogCategory_Initialize(), v4 = v7, v3))
    {
      v3 = __54__HDSSetupService__handleFinishDone2_responseHandler___block_invoke_cold_1();
      v4 = v7;
    }
  }

  *(*(a1 + 32) + 57) = 1;
  v5 = *(a1 + 32);
  if (*(v5 + 60) == 1)
  {
    v3 = *(v5 + 456);
    if (v3)
    {
      v8 = v4;
      v3 = v3[2](v3, 100, 0);
      v4 = v8;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (BOOL)_handleFinishDone2Ready
{
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [(HDSSetupService *)self _handleFinishDone2Ready];
  }

  return self->_iTunesCloudCompleted && self->_mediaSystemReady;
}

- (void)_handleVoicePreviewRequest:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_voicePreviewer)
  {
    v8 = objc_alloc_init(getSUICDefaultVoicePreviewerClass());
    voicePreviewer = self->_voicePreviewer;
    self->_voicePreviewer = v8;
  }

  CFStringGetTypeID();
  v10 = CFDictionaryGetTypedValue();
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleVoicePreviewRequest:responseHandler:];
  }

  CFStringGetTypeID();
  v11 = CFDictionaryGetTypedValue();
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleVoicePreviewRequest:responseHandler:];
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleVoicePreviewRequest:responseHandler:];
  }

  v13 = [objc_alloc(getAFVoiceInfoClass()) initWithLanguageCode:v10 gender:Int64Ranged isCustom:1 name:v11 footprint:0 contentVersion:0 masteredVersion:0];
  v14 = self->_voicePreviewer;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__HDSSetupService__handleVoicePreviewRequest_responseHandler___block_invoke;
  v16[3] = &unk_2797149C0;
  v17 = v7;
  v15 = v7;
  [(SUICDefaultVoicePreviewer *)v14 previewVoice:v13 completion:v16];
}

void __62__HDSSetupService__handleVoicePreviewRequest_responseHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10 = @"siriVPSuccess";
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = [v5 numberWithBool:a2];
  v11[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  (*(*(a1 + 32) + 16))();
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_handleCheckHomePodForJS:(id)a3 responseHandler:(id)a4
{
  v11 = a4;
  v5 = a3;
  v6 = objc_opt_new();
  CFStringGetTypeID();
  v7 = CFDictionaryGetTypedValue();

  if (v7)
  {
    v8 = [(objc_class *)getVTPreferencesClass() sharedPreferences];
    v9 = [v8 isCompactVoiceTriggerAvailableForLanguageCode:v7];

    v10 = [MEMORY[0x277CCABB0] numberWithBool:v9];
    [v6 setObject:v10 forKeyedSubscript:@"homepod_js_locale"];
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  (*(v11 + 2))(v11, 0, 0, v6);
}

- (void)_handleStartSysDropEnablementProfileTransfer:(id)a3 responseHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(HDSFileTransferService);
  [(HDSFileTransferService *)v8 setFileTransferProgressHandler:&__block_literal_global_775];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__HDSSetupService__handleStartSysDropEnablementProfileTransfer_responseHandler___block_invoke_2;
  v12[3] = &unk_2797149E8;
  v12[4] = self;
  [(HDSFileTransferService *)v8 setFileTransferCompletionHandler:v12];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__HDSSetupService__handleStartSysDropEnablementProfileTransfer_responseHandler___block_invoke_3;
  v10[3] = &unk_279714888;
  v11 = v6;
  v9 = v6;
  [(HDSFileTransferService *)v8 handleSysDropStartFileTransferRequest:v7 responseHandler:v10];
}

uint64_t __80__HDSSetupService__handleStartSysDropEnablementProfileTransfer_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_HDSSetupService <= 30)
  {
    v5 = v2;
    if (gLogCategory_HDSSetupService != -1 || (v2 = _LogCategory_Initialize(), v3 = v5, v2))
    {
      v2 = __80__HDSSetupService__handleStartSysDropEnablementProfileTransfer_responseHandler___block_invoke_cold_1();
      v3 = v5;
    }
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

void __80__HDSSetupService__handleStartSysDropEnablementProfileTransfer_responseHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v11)
  {
    if (gLogCategory_HDSSetupService <= 90 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __80__HDSSetupService__handleStartSysDropEnablementProfileTransfer_responseHandler___block_invoke_2_cold_1();
    }
  }

  else
  {
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [v5 itemURL];
    v8 = [v7 path];
    v9 = [v6 contentsAtPath:v8];

    v10 = [*(a1 + 32) installProfileData:v9];
  }
}

uint64_t __80__HDSSetupService__handleStartSysDropEnablementProfileTransfer_responseHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v6 = 0;
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __80__HDSSetupService__handleStartSysDropEnablementProfileTransfer_responseHandler___block_invoke_3_cold_2();
    }

    v3 = (*(*(a1 + 32) + 16))();
    goto LABEL_10;
  }

  if (gLogCategory_HDSSetupService <= 30)
  {
    v6 = v3;
    if (gLogCategory_HDSSetupService != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
    {
      v3 = __80__HDSSetupService__handleStartSysDropEnablementProfileTransfer_responseHandler___block_invoke_3_cold_1();
LABEL_10:
      v4 = v6;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)_handleStartSysDrop:(id)a3 responseHandler:(id)a4
{
  v5 = a4;
  v6 = objc_opt_new();
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleStartSysDrop:responseHandler:];
  }

  v7 = objc_alloc_init(SysDropService);
  sysDropService = self->_sysDropService;
  self->_sysDropService = v7;

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__HDSSetupService__handleStartSysDrop_responseHandler___block_invoke;
  v9[3] = &unk_279714A10;
  v9[4] = self;
  [(SysDropService *)self->_sysDropService setPeerEventHandler:v9];
  [(SysDropService *)self->_sysDropService setSfService:self->_sfService];
  [(SysDropService *)self->_sysDropService setSfSession:self->_sfSession];
  [(SysDropService *)self->_sysDropService setServiceStartedFromSetup:1];
  [(SysDropService *)self->_sysDropService activate];
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleStartSysDrop:responseHandler:];
  }

  (*(v5 + 2))(v5, 0, 0, v6);
}

- (void)_handleSUNoSetupScanRequest:(id)a3 responseHandler:(id)a4
{
  v15 = a4;
  v5 = objc_opt_new();
  v6 = dispatch_semaphore_create(0);
  semaForScanFoundSU = self->_semaForScanFoundSU;
  self->_semaForScanFoundSU = v6;

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleSUNoSetupScanRequest:responseHandler:];
  }

  v8 = objc_alloc_init(MEMORY[0x277D64138]);
  [v8 setUserInitiated:1];
  [v8 setDownloadWhenFound:1];
  v9 = [(HDSSetupService *)self suControllerManager];
  [v9 scanForUpdates:v8];

  v10 = self->_semaForScanFoundSU;
  v11 = dispatch_time(0, 300000000000);
  dispatch_semaphore_wait(v10, v11);
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleSUNoSetupScanRequest:responseHandler:];
  }

  v12 = self->_semaForScanFoundSU;
  self->_semaForScanFoundSU = 0;

  if (self->_scanFoundSUForSUNoSetup)
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleSUNoSetupScanRequest:responseHandler:];
    }

    self->_homePodSUNoSetupState = 3;
    v13 = [MEMORY[0x277CCABB0] numberWithInt:3];
    [v5 setObject:v13 forKeyedSubscript:@"unsetup_hp_su_phase"];

    v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_scanFoundSUForSUNoSetup];
    [v5 setObject:v14 forKeyedSubscript:@"unsetup_hp_su_scan_success"];
  }

  else
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleSUNoSetupScanRequest:? responseHandler:?];
    }

    [(HDSSetupService *)self wipeWifiConfig];
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleSUNoSetupScanRequest:responseHandler:];
  }

  self->_errorForScanSUNoSetup;
  v15[2]();
}

- (void)_handleDeviceActivationRequest:(id)a3 responseHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (gLogCategory_HDSSetupService <= 40 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleDeviceActivationRequest:responseHandler:];
  }

  v7 = objc_alloc_init(HDSDeviceActivation);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__HDSSetupService__handleDeviceActivationRequest_responseHandler___block_invoke;
  v9[3] = &unk_279714A38;
  v10 = v6;
  v8 = v6;
  [(HDSDeviceActivation *)v7 performActivationStep:v5 completion:v9];
}

void __66__HDSSetupService__handleDeviceActivationRequest_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (gLogCategory_HDSSetupService <= 40 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v6);
}

- (void)_handlePreAuthRequest:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v64 = a4;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handlePreAuthRequest:responseHandler:];
  }

  v74[0] = 0;
  v7 = [objc_opt_class() signpostLog];
  v8 = [(HDSSetupService *)self signpostID];
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PreAuth", "", buf, 2u);
    }
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  Int64 = CFDictionaryGetInt64();
  self->_peerFeatureFlags = Int64;
  if (!self->_siriDidDeviceSetup)
  {
    [(SFSiriClient *)self->_siriClient deviceSetupBegin:Int64];
    self->_siriDidDeviceSetup = 1;
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handlePreAuthRequest:responseHandler:];
  }

  [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"cbCapableHP"];
  v12 = GestaltCopyAnswer();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setObject:v12 forKeyedSubscript:@"mdN"];
  }

  else if (gLogCategory_HDSSetupService <= 90 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handlePreAuthRequest:responseHandler:];
  }

  v13 = GestaltCopyAnswer();

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setObject:v13 forKeyedSubscript:@"model"];
  }

  else if (gLogCategory_HDSSetupService <= 90 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handlePreAuthRequest:responseHandler:];
  }

  v14 = GestaltCopyAnswer();

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setObject:v14 forKeyedSubscript:@"hp_pn"];
  }

  else if (gLogCategory_HDSSetupService <= 90 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handlePreAuthRequest:responseHandler:];
  }

  v15 = GestaltCopyAnswer();

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setObject:v15 forKeyedSubscript:@"hp_bv"];
  }

  else if (gLogCategory_HDSSetupService <= 90 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handlePreAuthRequest:responseHandler:];
  }

  v16 = GestaltCopyAnswer();

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setObject:v16 forKeyedSubscript:@"dguid"];
  }

  else if (gLogCategory_HDSSetupService <= 90 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handlePreAuthRequest:responseHandler:];
  }

  v17 = GestaltCopyAnswer();

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setObject:v17 forKeyedSubscript:@"dsn"];
  }

  else if (gLogCategory_HDSSetupService <= 90 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handlePreAuthRequest:responseHandler:];
  }

  CFDictionaryGetTypeID();
  v18 = CFDictionaryGetTypedValue();
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    v55 = v18;
    v58 = v74[0];
    LogPrintF();
  }

  if ([v18 count])
  {
    softLinkAFPreferencesSetHorsemanSupplementalLanguageDictionary(v18);
  }

  v63 = v18;
  v19 = GestaltCopyAnswer();

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setObject:v19 forKeyedSubscript:@"wifiMA"];
  }

  else if (gLogCategory_HDSSetupService <= 90 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handlePreAuthRequest:responseHandler:];
  }

  CFStringGetTypeID();
  v20 = CFDictionaryGetTypedValue();

  v65 = v20;
  if (v20)
  {
    v72 = 0;
    v21 = [(objc_class *)getAFConnectionClass() assistantIsSupportedForLanguageCode:v20 error:&v72];
    v22 = v72;
    v23 = v22;
    if ((v21 & 1) == 0)
    {
      v62 = v22;
      if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
      {
        v56 = v20;
        v59 = v62;
        LogPrintF();
      }

LABEL_70:
      [v10 setObject:&unk_2864E80C0 forKeyedSubscript:{@"siriFl", v56, v59, v61}];
      v32 = softLinkAFPreferencesSupportedLanguages();
      v25 = [v32 mutableCopy];

      v27 = [(objc_class *)getAFPreferencesClass() sharedPreferences];
      v31 = [v27 bestSupportedLanguageCodeForLanguageCode:v20];
      v33 = [v25 indexOfObject:v31];
      if (!v31 || v33 == 0x7FFFFFFFFFFFFFFFLL)
      {

        if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupService _handlePreAuthRequest:responseHandler:];
        }

        v31 = @"en-US";
      }

      else if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
      {
        v57 = v20;
        v60 = v31;
        LogPrintF();
      }

      v34 = [v25 indexOfObject:{v31, v57, v60}];
      if (v34 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v25 removeObjectAtIndex:v34];
        [v25 insertObject:v31 atIndex:0];
      }

      if (v25)
      {
        [v10 setObject:v25 forKeyedSubscript:@"siriLangs"];
      }

      goto LABEL_83;
    }
  }

  else
  {
    v23 = 0;
  }

  CFStringGetTypeID();
  v24 = CFDictionaryGetTypedValue();
  if (!v24)
  {
    goto LABEL_84;
  }

  v25 = v24;
  v62 = v23;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  CFStringGetTypeID();
  v27 = CFDictionaryGetTypedValue();
  if (![v27 length])
  {
    v28 = [(objc_class *)getAFLocalizationClass() sharedInstance];
    v29 = [v28 voiceNamesForOutputLanguageCode:v25 gender:Int64Ranged];
    v30 = [v29 firstObject];

    v27 = v30;
    v20 = v65;
  }

  v31 = [objc_alloc(getAFVoiceInfoClass()) initWithLanguageCode:v25 gender:Int64Ranged isCustom:0 name:v27 footprint:2 contentVersion:0 masteredVersion:0];
  if (([(__CFString *)v31 isValidForSiriSessionLanguage:v20]& 1) == 0)
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      v59 = v20;
      v61 = v23;
      v56 = v25;
      LogPrintF();
    }

    goto LABEL_70;
  }

LABEL_83:

  v23 = v62;
LABEL_84:
  if (_os_feature_enabled_impl())
  {
    v35 = 4495;
  }

  else
  {
    v35 = 399;
  }

  v36 = SFDeviceSupportsTVAudio();
  v37 = v35 | 0x400;
  if (!v36)
  {
    v37 = v35;
  }

  v38 = 10240;
  if (self->_prefCDPEnabled)
  {
    v38 = 10256;
  }

  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v38 | v37];
  [v10 setObject:v39 forKeyedSubscript:@"ff"];

  v40 = MGCopyAnswer();
  [v10 setObject:v40 forKeyedSubscript:@"hpBuildVersion"];
  v41 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMHomeManager needsOSUpdateToRunHH2](self->_homeManager, "needsOSUpdateToRunHH2")}];
  [v10 setObject:v41 forKeyedSubscript:@"hh2SU"];

  v42 = MGCopyAnswer();
  [v10 setObject:v42 forKeyedSubscript:@"hp_bv"];

  v43 = MEMORY[0x277CBEC38];
  [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"sd_capa"];
  [v10 setObject:v43 forKeyedSubscript:@"sd_capa_v2"];
  [v10 setObject:v43 forKeyedSubscript:@"hds_tc_v2_"];
  [v10 setObject:v43 forKeyedSubscript:@"wr_v2"];
  canCompanionShowHomePodSU = CFDictionaryGetInt64() != 0;
  self->_canCompanionShowHomePodSU = canCompanionShowHomePodSU;
  if (gLogCategory_HDSSetupService <= 30)
  {
    if (gLogCategory_HDSSetupService == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_98;
      }

      canCompanionShowHomePodSU = self->_canCompanionShowHomePodSU;
    }

    if (canCompanionShowHomePodSU)
    {
      v45 = "yes";
    }

    else
    {
      v45 = "no";
    }

    v56 = v45;
    v59 = v74[0];
    LogPrintF();
  }

LABEL_98:
  [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:{@"hds_n_h2", v56, v59}];
  v46 = CFDictionaryGetInt64();
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handlePreAuthRequest:v74 responseHandler:?];
  }

  if (!self->_scanResults)
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handlePreAuthRequest:responseHandler:];
    }

    v49 = objc_opt_new();
    if (v46)
    {
      goto LABEL_106;
    }

LABEL_111:
    [v10 setObject:MEMORY[0x277CBEBF8] forKeyedSubscript:@"hds_hp_scn_res"];
    goto LABEL_112;
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handlePreAuthRequest:responseHandler:];
  }

  v47 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_scanResults, "count")}];
  scanResults = self->_scanResults;
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __57__HDSSetupService__handlePreAuthRequest_responseHandler___block_invoke;
  v70[3] = &unk_279714A60;
  v70[4] = self;
  v49 = v47;
  v71 = v49;
  [(NSArray *)scanResults enumerateObjectsUsingBlock:v70];

  if (!v46)
  {
    goto LABEL_111;
  }

LABEL_106:
  v50 = [v49 copy];
  [v10 setObject:v50 forKeyedSubscript:@"hds_hp_scn_res"];

LABEL_112:
  [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"wr_w_p_c"];
  v51 = [(HDSSetupService *)self suControllerManager];
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __57__HDSSetupService__handlePreAuthRequest_responseHandler___block_invoke_2;
  v66[3] = &unk_279714A88;
  v66[4] = self;
  v52 = v10;
  v67 = v52;
  v53 = v23;
  v68 = v53;
  v54 = v64;
  v69 = v54;
  [v51 managerStatus:v66];
}

void __57__HDSSetupService__handlePreAuthRequest_responseHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) scanResultToDict:a2];
  [*(a1 + 40) addObject:v3];
}

void __57__HDSSetupService__handlePreAuthRequest_responseHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  *(*(a1 + 32) + 368) = [v7 updateState];
  *(*(a1 + 32) + 364) = [*(a1 + 32) hdsSUStateForSUState];
  v10 = [*(a1 + 32) isHomePodSUNoSetup];
  if (gLogCategory_HDSSetupService <= 30)
  {
    if (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize())
    {
      __57__HDSSetupService__handlePreAuthRequest_responseHandler___block_invoke_2_cold_1();
    }

    if (gLogCategory_HDSSetupService <= 30)
    {
      if (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize())
      {
        __57__HDSSetupService__handlePreAuthRequest_responseHandler___block_invoke_2_cold_2();
      }

      if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
      {
        __57__HDSSetupService__handlePreAuthRequest_responseHandler___block_invoke_2_cold_3();
      }
    }
  }

  v11 = [MEMORY[0x277CCABB0] numberWithBool:v10];
  [*(a1 + 40) setObject:v11 forKeyedSubscript:@"unsetup_hp_su_start"];

  v12 = [MEMORY[0x277CCABB0] numberWithInt:*(*(a1 + 32) + 364)];
  [*(a1 + 40) setObject:v12 forKeyedSubscript:@"unsetup_hp_su_phase"];

  if (v9)
  {
    if (gLogCategory_HDSSetupService <= 90 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __57__HDSSetupService__handlePreAuthRequest_responseHandler___block_invoke_2_cold_4();
    }

    v13 = v9;
LABEL_15:
    v14 = v13;
    goto LABEL_29;
  }

  if (v10)
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __57__HDSSetupService__handlePreAuthRequest_responseHandler___block_invoke_2_cold_6();
    }

    if ((*(*(a1 + 32) + 408) & 1) == 0)
    {
      if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
      {
        __57__HDSSetupService__handlePreAuthRequest_responseHandler___block_invoke_2_cold_7();
      }

      v13 = NSErrorWithOSStatusF();
      goto LABEL_15;
    }

    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __57__HDSSetupService__handlePreAuthRequest_responseHandler___block_invoke_2_cold_8();
    }
  }

  else if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    __57__HDSSetupService__handlePreAuthRequest_responseHandler___block_invoke_2_cold_5();
  }

  v14 = 0;
LABEL_29:
  [*(a1 + 40) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"unsetup_hp_su_capable"];
  v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "homePodNeedsSUNoSetup")}];
  [*(a1 + 40) setObject:v15 forKeyedSubscript:@"unsetup_hp_needs_su"];

  if (gLogCategory_HDSSetupService <= 30)
  {
    if (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize())
    {
      __57__HDSSetupService__handlePreAuthRequest_responseHandler___block_invoke_2_cold_9((a1 + 40));
    }

    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __57__HDSSetupService__handlePreAuthRequest_responseHandler___block_invoke_2_cold_10(a1);
    }
  }

  v16 = *(a1 + 32);
  v17 = [objc_opt_class() signpostLog];
  v18 = [*(a1 + 32) signpostID];
  if ((v18 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v19 = v18;
    if (os_signpost_enabled(v17))
    {
      *v21 = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, v17, OS_SIGNPOST_INTERVAL_END, v19, "PreAuth", "", v21, 2u);
    }
  }

  if (!v14)
  {
    v20 = *(a1 + 40);
  }

  (*(*(a1 + 56) + 16))();
}

- (void)_handleHomeScanRequest:(id)a3 responseHandler:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleHomeScanRequest:responseHandler:];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__HDSSetupService__handleHomeScanRequest_responseHandler___block_invoke;
  v9[3] = &unk_279714860;
  v9[4] = self;
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  [(HDSSetupService *)self fetchScanResult:v9];
}

void __58__HDSSetupService__handleHomeScanRequest_responseHandler___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 448);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HDSSetupService__handleHomeScanRequest_responseHandler___block_invoke_2;
  block[3] = &unk_279714860;
  block[4] = v3;
  v6 = v2;
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

void __58__HDSSetupService__handleHomeScanRequest_responseHandler___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(*(a1 + 32) + 424), "count")}];
  v3 = *(a1 + 32);
  v4 = *(v3 + 424);
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __58__HDSSetupService__handleHomeScanRequest_responseHandler___block_invoke_3;
  v11 = &unk_279714A60;
  v12 = v3;
  v5 = v2;
  v13 = v5;
  [v4 enumerateObjectsUsingBlock:&v8];
  v6 = [v5 copy];
  [*(a1 + 40) setObject:v6 forKeyedSubscript:@"wp_hp_s_r"];

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    __58__HDSSetupService__handleHomeScanRequest_responseHandler___block_invoke_2_cold_1((a1 + 40));
  }

  v7 = *(a1 + 40);
  (*(*(a1 + 48) + 16))();
}

void __58__HDSSetupService__handleHomeScanRequest_responseHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) scanResultToDict:a2];
  [*(a1 + 40) addObject:v3];
}

- (void)_handleSiriDialogIdentifier:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (gLogCategory_HDSSetupService <= 30)
  {
    v5 = v3;
    if (gLogCategory_HDSSetupService != -1 || (v3 = _LogCategory_Initialize(), v4 = v5, v3))
    {
      v3 = [HDSSetupService _handleSiriDialogIdentifier:];
      v4 = v5;
    }
  }

  MEMORY[0x2821F96F8](v3, v4);
}

- (void)_playReadyToSetupSound
{
  v3 = objc_alloc_init(MEMORY[0x277D02828]);
  audioPlayer = self->_audioPlayer;
  self->_audioPlayer = v3;

  [(CUAudioPlayer *)self->_audioPlayer setDispatchQueue:self->_dispatchQueue];
  [(CUAudioPlayer *)self->_audioPlayer setLabel:@"HomePod Setup"];
  [(CUAudioPlayer *)self->_audioPlayer activate];
  v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HomeDeviceSetup"];
  v6 = [v5 URLForResource:@"HomePodReadyToSetUp-b238.m4a" withExtension:0];
  if (v6)
  {
    v7 = [MEMORY[0x277D26E58] sharedAVSystemController];
    v14 = 1056964608;
    if (([v7 getVolume:&v14 forCategory:@"MediaPlayback"] & 1) == 0 && gLogCategory_HDSSetupService <= 90 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _playReadyToSetupSound];
    }

    LODWORD(v8) = 1059145646;
    if (([v7 setVolumeTo:@"MediaPlayback" forCategory:v8] & 1) == 0 && gLogCategory_HDSSetupService <= 90 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _playReadyToSetupSound];
    }

    v9 = self->_audioPlayer;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __41__HDSSetupService__playReadyToSetupSound__block_invoke;
    v11[3] = &unk_279714AB0;
    v12 = v7;
    v13 = v14;
    v10 = v7;
    [(CUAudioPlayer *)v9 playURL:v6 completion:v11];
  }

  else if (gLogCategory_HDSSetupService <= 90 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _playReadyToSetupSound];
  }
}

uint64_t __41__HDSSetupService__playReadyToSetupSound__block_invoke(uint64_t a1, double a2)
{
  LODWORD(a2) = *(a1 + 40);
  result = [*(a1 + 32) setVolumeTo:@"MediaPlayback" forCategory:a2];
  if ((result & 1) == 0 && gLogCategory_HDSSetupService <= 90)
  {
    if (gLogCategory_HDSSetupService != -1)
    {
      return __41__HDSSetupService__playReadyToSetupSound__block_invoke_cold_1();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __41__HDSSetupService__playReadyToSetupSound__block_invoke_cold_1();
    }
  }

  return result;
}

- (void)_setSiriInfo
{
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [(HDSSetupService *)self _setSiriInfo];
  }

  v3 = [(objc_class *)getAFPreferencesClass() sharedPreferences];
  [v3 setAssistantIsEnabled:!self->_siriDisabled];
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [(HDSSetupService *)&self->_siriDisabled _setSiriInfo];
  }

  if ((self->_siriDataSharingState - 5) <= 1)
  {
    v4 = objc_alloc_init(getAFSettingsConnectionClass());
    v5 = v4;
    if (self->_siriDataSharingState == 6)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    [v4 setSiriDataSharingHomePodSetupDeviceIsValid:self->_siriDataSharingDeviceIsValid completion:0];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __31__HDSSetupService__setSiriInfo__block_invoke;
    v21[3] = &unk_279714AD8;
    v22 = v5;
    v23 = v6;
    v7 = v5;
    [v7 setSiriDataSharingOptInStatus:v6 propagateToHomeAccessories:0 source:5 reason:0 completion:v21];
  }

  if ([(NSString *)self->_siriListenLanguage length])
  {
    [v3 setLanguageCode:self->_siriListenLanguage];
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [(HDSSetupService *)&self->_siriListenLanguage _setSiriInfo];
    }
  }

  if ([(NSString *)self->_siriVoiceName length])
  {
    v8 = self->_siriVoiceName;
  }

  else
  {
    v8 = 0;
  }

  if (self->_siriVoiceGender && [(NSString *)self->_siriVoiceLanguage length])
  {
    v9 = [objc_alloc(getAFVoiceInfoClass()) initWithLanguageCode:self->_siriVoiceLanguage gender:self->_siriVoiceGender isCustom:0 name:v8 footprint:2 contentVersion:0 masteredVersion:0];
    if (v9)
    {
      v10 = dispatch_semaphore_create(0);
      v11 = objc_alloc_init(getAFSettingsConnectionClass());
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __31__HDSSetupService__setSiriInfo__block_invoke_2;
      v19[3] = &unk_279713FF0;
      v12 = v10;
      v20 = v12;
      [v11 setOutputVoice:v9 withCompletion:v19];
      v13 = dispatch_time(0, 5000000000);
      v14 = dispatch_semaphore_wait(v12, v13);
      [v3 setOutputVoice:v9];
      if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
      {
        v17 = v8;
        v18 = v14;
        siriVoiceGender = self->_siriVoiceGender;
        siriVoiceLanguage = self->_siriVoiceLanguage;
        LogPrintF();
      }
    }

    else if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _setSiriInfo];
    }
  }

  [v3 synchronize];
}

uint64_t __31__HDSSetupService__setSiriInfo__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (gLogCategory_HDSSetupService <= 30)
  {
    v7 = v3;
    if (gLogCategory_HDSSetupService != -1 || (v3 = _LogCategory_Initialize(), v4 = v7, v3))
    {
      v6 = *(a1 + 40);
      v3 = LogPrintF();
      v4 = v7;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

intptr_t __31__HDSSetupService__setSiriInfo__block_invoke_2(uint64_t a1)
{
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    __31__HDSSetupService__setSiriInfo__block_invoke_2_cold_1();
  }

  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

- (void)_boostiTunesCloudDaemon
{
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _boostiTunesCloudDaemon];
  }

  getICCloudClientClass();
  v3 = objc_opt_new();
  icClient = self->_icClient;
  self->_icClient = v3;

  v5 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HDSSetupService__boostiTunesCloudDaemon__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(v5, block);
}

uint64_t __42__HDSSetupService__boostiTunesCloudDaemon__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (gLogCategory_HDSSetupService <= 90)
    {
      v5 = v2;
      if (gLogCategory_HDSSetupService != -1 || (v2 = _LogCategory_Initialize(), v3 = v5, v2))
      {
        v2 = __42__HDSSetupService__boostiTunesCloudDaemon__block_invoke_2_cold_1();
LABEL_13:
        v3 = v5;
      }
    }
  }

  else if (gLogCategory_HDSSetupService <= 30)
  {
    v5 = 0;
    if (gLogCategory_HDSSetupService != -1 || (v2 = _LogCategory_Initialize(), v3 = 0, v2))
    {
      v2 = __42__HDSSetupService__boostiTunesCloudDaemon__block_invoke_2_cold_2();
      goto LABEL_13;
    }
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

- (void)_printBitMask:(int64_t)a3
{
  v4 = [MEMORY[0x277CCAB68] string];
  v5 = 32;
  v8 = v4;
  do
  {
    if (a3)
    {
      v6 = @"1";
    }

    else
    {
      v6 = @"0";
    }

    v7 = [v4 insertString:v6 atIndex:0];
    v4 = v8;
    a3 >>= 1;
    --v5;
  }

  while (v5);
  if (gLogCategory_HDSSetupService < 31)
  {
    if (gLogCategory_HDSSetupService != -1 || (v7 = _LogCategory_Initialize(), v4 = v8, v7))
    {
      v7 = [HDSSetupService _printBitMask:];
      v4 = v8;
    }
  }

  MEMORY[0x2821F96F8](v7, v4);
}

- (int)hdsSUStateForSUState
{
  v2 = self->_suUpdateState - 1;
  if (v2 > 0x11)
  {
    return 0;
  }

  else
  {
    return dword_252FEDF78[v2];
  }
}

- (BOOL)isHomePodSUNoSetup
{
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [(HDSSetupService *)self isHomePodSUNoSetup];
  }

  return 0;
}

- (void)configureSUControllerManagerToFinish
{
  v3 = objc_alloc_init(MEMORY[0x277D64128]);
  [v3 setPerformAutoDownloadAndPrepare:1];
  [v3 setPerformAutoInstall:1];
  [v3 setAutoAcceptTermsAndConditions:1];
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService configureSUControllerManagerToFinish];
  }

  v4 = [(HDSSetupService *)self suControllerManager];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__HDSSetupService_configureSUControllerManagerToFinish__block_invoke;
  v6[3] = &unk_279714B00;
  v7 = v3;
  v5 = v3;
  [v4 modifyConfig:v5 modifying:14 completion:v6];
}

void __55__HDSSetupService_configureSUControllerManagerToFinish__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    v6 = *(a1 + 32);
    LogPrintF();
  }
}

- (void)sendSUNoSetupSUInstallDonePeerEvent
{
  v10[5] = *MEMORY[0x277D85DE8];
  sfSession = self->_sfSession;
  v10[0] = &unk_2864E80D8;
  v9[0] = @"spe";
  v9[1] = @"hp_su_est_time";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_estTimeRemainingSUNoSetup];
  v5 = MEMORY[0x277CBEC38];
  v10[1] = v4;
  v10[2] = MEMORY[0x277CBEC38];
  v9[2] = @"unsetup_hp_su_start";
  v9[3] = @"unsetup_hp_su_phase";
  v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_homePodSUNoSetupState];
  v9[4] = @"unsetup_hp_su_install_done";
  v10[3] = v6;
  v10[4] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:5];
  [(SFSession *)sfSession sendWithFlags:0 object:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)sendSUNoSetupSUStatusPeerEvent
{
  v9[4] = *MEMORY[0x277D85DE8];
  sfSession = self->_sfSession;
  v9[0] = &unk_2864E80D8;
  v8[0] = @"spe";
  v8[1] = @"hp_su_est_time";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_estTimeRemainingSUNoSetup];
  v9[1] = v4;
  v9[2] = MEMORY[0x277CBEC38];
  v8[2] = @"unsetup_hp_su_start";
  v8[3] = @"unsetup_hp_su_phase";
  v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_homePodSUNoSetupState];
  v9[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:4];
  [(SFSession *)sfSession sendWithFlags:0 object:v6];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)sendSUNoSetupErrorPeerEvent:(int64_t)a3
{
  v9[3] = *MEMORY[0x277D85DE8];
  sfSession = self->_sfSession;
  v9[0] = &unk_2864E80D8;
  v8[0] = @"spe";
  v8[1] = @"unsetup_hp_sunosetup_error";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v8[2] = @"unsetup_hp_su_start";
  v9[1] = v5;
  v9[2] = MEMORY[0x277CBEC28];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
  [(SFSession *)sfSession sendWithFlags:0 object:v6];

  self->_canCompanionShowHomePodSU = 0;
  v7 = *MEMORY[0x277D85DE8];
}

- (void)wipeWifiConfig
{
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService wipeWifiConfig];
  }

  v3 = *(self->_progressHandler + 2);

  v3();
}

- (id)installProfileData:(id)a3
{
  v3 = MEMORY[0x277D262A0];
  v4 = a3;
  v5 = [v3 sharedConnection];
  v9 = 0;
  v6 = [v5 installProfileData:v4 options:0 outError:&v9];

  v7 = v9;
  if (v7)
  {
    if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService installProfileData:];
    }
  }

  else if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService installProfileData:];
  }

  return v6;
}

- (void)removeSysDropProfile
{
  v21 = *MEMORY[0x277D85DE8];
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService removeSysDropProfile];
  }

  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 installedProfilesWithFilterFlags:3];

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService removeSysDropProfile];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = [v9 identifier];
        v11 = [v10 isEqualToString:@"com.apple.defaults.managed.homedevicesetup.logging"];

        if (v11)
        {
          if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
          {
            [HDSSetupService removeSysDropProfile];
          }

          v12 = [MEMORY[0x277D262A0] sharedConnection];
          v13 = [v9 identifier];
          [v12 removeProfileWithIdentifier:v13];
        }

        ++v8;
      }

      while (v6 != v8);
      v14 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      v6 = v14;
    }

    while (v14);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)createScanParameters
{
  getCWFScanParametersClass();
  v2 = objc_opt_new();
  [v2 setMergeScanResults:1];
  [v2 setAcceptableCacheAge:1000];
  [v2 setExclude6GChannels:1];
  [v2 setSortByAutoJoinPreference:1];

  return v2;
}

- (void)fetchScanResult
{
  if (!self->_scanInProgress)
  {
    [(HDSSetupService *)self fetchScanResult:&__block_literal_global_1016];
  }
}

void __34__HDSSetupService_fetchScanResult__block_invoke()
{
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    __34__HDSSetupService_fetchScanResult__block_invoke_cold_1();
  }
}

- (void)fetchScanResult:(id)a3
{
  v4 = a3;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService fetchScanResult:];
  }

  v5 = mach_absolute_time();
  self->_scanInProgress = 1;
  v6 = objc_alloc_init(getCWFInterfaceClass());
  [v6 activate];
  v7 = [(HDSSetupService *)self createScanParameters];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __35__HDSSetupService_fetchScanResult___block_invoke;
  v10[3] = &unk_279714B50;
  v10[4] = self;
  v11 = v6;
  v12 = v4;
  v13 = v5;
  v8 = v4;
  v9 = v6;
  [v9 performScanWithParameters:v7 reply:v10];
}

void __35__HDSSetupService_fetchScanResult___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  mach_absolute_time();
  v7 = *(a1 + 56);
  UpTicksToSecondsF();
  if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    __35__HDSSetupService_fetchScanResult___block_invoke_cold_1(v6);
  }

  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(v9 + 448);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HDSSetupService_fetchScanResult___block_invoke_2;
  block[3] = &unk_279714B28;
  block[4] = v9;
  v14 = v5;
  v15 = v6;
  v16 = v8;
  v17 = *(a1 + 48);
  v11 = v6;
  v12 = v5;
  dispatch_async(v10, block);
}

uint64_t __35__HDSSetupService_fetchScanResult___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 440) = 0;
  if (*(a1 + 40))
  {
    if (gLogCategory_HDSSetupService > 60)
    {
      goto LABEL_10;
    }

    if (gLogCategory_HDSSetupService != -1)
    {
      goto LABEL_4;
    }

    if (_LogCategory_Initialize())
    {
      v5 = *(a1 + 40);
LABEL_4:
      LogPrintF();
    }
  }

  else
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __35__HDSSetupService_fetchScanResult___block_invoke_2_cold_1(a1);
    }

    objc_storeStrong((*(a1 + 32) + 424), *(a1 + 48));
  }

LABEL_10:
  v2 = *(a1 + 56);
  if (v2)
  {
    [v2 invalidate];
  }

  v3 = *(*(a1 + 64) + 16);

  return v3();
}

- (id)scanResultToDict:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 SSID];
  [v4 setObject:v5 forKeyedSubscript:@"hds_hp_scn_ssid"];

  v6 = [v3 BSSID];
  [v4 setObject:v6 forKeyedSubscript:@"hds_hp_scn_bssid"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "RSSI")}];
  [v4 setObject:v7 forKeyedSubscript:@"hds_hp_scn_rssi"];

  v8 = [v3 networkName];
  [v4 setObject:v8 forKeyedSubscript:@"hds_hp_scn_nn"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "isOpen")}];
  [v4 setObject:v9 forKeyedSubscript:@"hds_hp_scn_io"];

  v10 = MEMORY[0x277CCABB0];
  v11 = [v3 channel];

  v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(v11, "channel")}];
  [v4 setObject:v12 forKeyedSubscript:@"hds_hp_scn_ch"];

  v13 = [v4 copy];

  return v13;
}

- (void)manager:(id)a3 scanRequestDidLocateUpdate:(id)a4 error:(id)a5
{
  v16 = a3;
  v8 = a4;
  v9 = a5;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    v14 = v8;
    v15 = v9;
    LogPrintF();
  }

  if (v9)
  {
    objc_storeStrong(&self->_errorForScanSUNoSetup, a5);
    v10 = 1;
  }

  else
  {
    self->_scanFoundSUForSUNoSetup = 1;
    v10 = 3;
  }

  self->_suUpdateState = v10;
  self->_homePodSUNoSetupState = [(HDSSetupService *)self hdsSUStateForSUState:v14];
  if (gLogCategory_HDSSetupService <= 30)
  {
    if (gLogCategory_HDSSetupService != -1)
    {
LABEL_10:
      suUpdateState = self->_suUpdateState;
      self->_scanFoundSUForSUNoSetup;
      LogPrintF();
      goto LABEL_12;
    }

    if (_LogCategory_Initialize())
    {
      homePodSUNoSetupState = self->_homePodSUNoSetupState;
      goto LABEL_10;
    }
  }

LABEL_12:
  semaForScanFoundSU = self->_semaForScanFoundSU;
  if (semaForScanFoundSU)
  {
    dispatch_semaphore_signal(semaForScanFoundSU);
  }

  if (self->_scanFoundSUForSUNoSetup)
  {
    [(HDSSetupService *)self configureSUControllerManagerToFinish];
  }
}

- (void)manager:(id)a3 scanRequestPostponed:(id)a4 error:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    v11 = v8;
    v13 = v9;
    LogPrintF();
  }

  self->_suUpdateState = 2;
  self->_homePodSUNoSetupState = [(HDSSetupService *)self hdsSUStateForSUState:v11];
  if (gLogCategory_HDSSetupService <= 30)
  {
    if (gLogCategory_HDSSetupService != -1)
    {
LABEL_7:
      suUpdateState = self->_suUpdateState;
      LogPrintF();
      goto LABEL_9;
    }

    if (_LogCategory_Initialize())
    {
      homePodSUNoSetupState = self->_homePodSUNoSetupState;
      goto LABEL_7;
    }
  }

LABEL_9:
}

- (void)manager:(id)a3 didChangeProgressOnDownload:(id)a4
{
  v15 = a3;
  v6 = a4;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService manager:didChangeProgressOnDownload:];
    if (v6)
    {
LABEL_5:
      self->_suUpdateState = 4;
      homePodSUNoSetupState = [(HDSSetupService *)self hdsSUStateForSUState];
      self->_homePodSUNoSetupState = homePodSUNoSetupState;
      if (gLogCategory_HDSSetupService <= 30)
      {
        if (gLogCategory_HDSSetupService == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_9;
          }

          homePodSUNoSetupState = self->_homePodSUNoSetupState;
        }

        suUpdateState = self->_suUpdateState;
        v14 = homePodSUNoSetupState;
        LogPrintF();
      }

LABEL_9:
      v8 = objc_alloc(MEMORY[0x277CBEAA8]);
      v9 = [v6 progress];
      [v9 estimatedTimeRemaining];
      v10 = [v8 initWithTimeIntervalSinceNow:?];

      if (v10 == self->_estFinishTimeSUNoSetup)
      {
        if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupService manager:didChangeProgressOnDownload:];
        }
      }

      else
      {
        objc_storeStrong(&self->_estFinishTimeSUNoSetup, v10);
        v11 = [v6 progress];
        [v11 estimatedTimeRemaining];
        self->_estTimeRemainingSUNoSetup = v12;

        if ([(HDSSetupService *)self canSendPeerUpdates])
        {
          if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
          {
            [HDSSetupService manager:didChangeProgressOnDownload:];
          }

          [(HDSSetupService *)self sendSUNoSetupSUStatusPeerEvent:suUpdateState];
        }

        else
        {
          if (!self->_canCompanionShowHomePodSU && gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
          {
            [HDSSetupService manager:didChangeProgressOnDownload:];
          }

          if ((!self->_sfSession || [(SFService *)self->_sfService needsSetup]) && gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
          {
            [HDSSetupService manager:didChangeProgressOnDownload:];
          }
        }
      }

      goto LABEL_35;
    }
  }

  else if (v6)
  {
    goto LABEL_5;
  }

  if ([(HDSSetupService *)self canSendPeerUpdates])
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService manager:didChangeProgressOnDownload:];
    }

    [(HDSSetupService *)self sendSUNoSetupErrorPeerEvent:903];
    [(HDSSetupService *)self wipeWifiConfig];
    self->_suUpdateState = 1;
    self->_homePodSUNoSetupState = [(HDSSetupService *)self hdsSUStateForSUState];
  }

LABEL_35:
}

- (void)manager:(id)a3 didFailDownload:(id)a4 withError:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    v11 = v8;
    v13 = v9;
    LogPrintF();
  }

  if (!v9)
  {
    self->_suUpdateState = 4;
    self->_homePodSUNoSetupState = [(HDSSetupService *)self hdsSUStateForSUState];
    if (gLogCategory_HDSSetupService > 30)
    {
      goto LABEL_13;
    }

    if (gLogCategory_HDSSetupService == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      homePodSUNoSetupState = self->_homePodSUNoSetupState;
    }

    suUpdateState = self->_suUpdateState;
    LogPrintF();
    goto LABEL_13;
  }

  self->_suUpdateState = 1;
  self->_homePodSUNoSetupState = [(HDSSetupService *)self hdsSUStateForSUState];
  if ([(HDSSetupService *)self canSendPeerUpdates])
  {
    -[HDSSetupService sendSUNoSetupErrorPeerEvent:](self, "sendSUNoSetupErrorPeerEvent:", [v9 code]);
  }

  [(HDSSetupService *)self wipeWifiConfig:v11];
LABEL_13:
}

- (void)manager:(id)a3 didFinishDownload:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService manager:didFinishDownload:];
  }

  self->_suUpdateState = 8;
  homePodSUNoSetupState = [(HDSSetupService *)self hdsSUStateForSUState];
  self->_homePodSUNoSetupState = homePodSUNoSetupState;
  if (gLogCategory_HDSSetupService <= 30)
  {
    if (gLogCategory_HDSSetupService != -1)
    {
LABEL_6:
      suUpdateState = self->_suUpdateState;
      v13 = homePodSUNoSetupState;
      LogPrintF();
      goto LABEL_8;
    }

    if (_LogCategory_Initialize())
    {
      homePodSUNoSetupState = self->_homePodSUNoSetupState;
      goto LABEL_6;
    }
  }

LABEL_8:
  [(HDSSetupService *)self configureSUControllerManagerToFinish:suUpdateState];
  v9 = [v7 progress];
  v10 = [v9 isDone];

  if (v10)
  {
    suControllerManager = self->_suControllerManager;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __45__HDSSetupService_manager_didFinishDownload___block_invoke;
    v14[3] = &unk_279714B78;
    v14[4] = self;
    [(SUControllerManager *)suControllerManager managerState:v14];
  }
}

void __45__HDSSetupService_manager_didFinishDownload___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v6 = a4;
  if (v6 && [*(a1 + 32) canSendPeerUpdates])
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __45__HDSSetupService_manager_didFinishDownload___block_invoke_cold_1();
    }

    [*(a1 + 32) sendSUNoSetupErrorPeerEvent:{objc_msgSend(v6, "code")}];
  }

  else
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __45__HDSSetupService_manager_didFinishDownload___block_invoke_cold_2();
    }

    [*(*(a1 + 32) + 472) installUpdate:v7];
  }
}

- (void)manager:(id)a3 didChangeProgressOnApply:(id)a4 progress:(id)a5
{
  v18 = a3;
  v8 = a4;
  v9 = a5;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    v14 = v8;
    v16 = v9;
    LogPrintF();
  }

  self->_suUpdateState = 9;
  homePodSUNoSetupState = [(HDSSetupService *)self hdsSUStateForSUState:v14];
  self->_homePodSUNoSetupState = homePodSUNoSetupState;
  if (gLogCategory_HDSSetupService <= 30)
  {
    if (gLogCategory_HDSSetupService != -1)
    {
LABEL_7:
      suUpdateState = self->_suUpdateState;
      v17 = homePodSUNoSetupState;
      LogPrintF();
      goto LABEL_9;
    }

    if (_LogCategory_Initialize())
    {
      homePodSUNoSetupState = self->_homePodSUNoSetupState;
      goto LABEL_7;
    }
  }

LABEL_9:
  v11 = objc_alloc(MEMORY[0x277CBEAA8]);
  [v9 estimatedTimeRemaining];
  v12 = [v11 initWithTimeIntervalSinceNow:?];
  if (v12 == self->_estFinishTimeSUNoSetup)
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService manager:didChangeProgressOnApply:progress:];
    }
  }

  else
  {
    objc_storeStrong(&self->_estFinishTimeSUNoSetup, v12);
    [v9 estimatedTimeRemaining];
    self->_estTimeRemainingSUNoSetup = v13;
    if ([(HDSSetupService *)self canSendPeerUpdates])
    {
      if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupService manager:didChangeProgressOnApply:progress:];
      }

      [(HDSSetupService *)self sendSUNoSetupSUStatusPeerEvent:suUpdateState];
    }

    else
    {
      if (!self->_canCompanionShowHomePodSU && gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupService manager:didChangeProgressOnApply:progress:];
      }

      if ((!self->_sfSession || [(SFService *)self->_sfService needsSetup]) && gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupService manager:didChangeProgressOnApply:progress:];
      }
    }
  }
}

- (void)manager:(id)a3 didFailInstallation:(id)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    v13 = v9;
    v15 = v10;
    LogPrintF();
  }

  if (v10)
  {
    self->_suUpdateState = 1;
    self->_homePodSUNoSetupState = [(HDSSetupService *)self hdsSUStateForSUState];
    if ([(HDSSetupService *)self canSendPeerUpdates])
    {
      -[HDSSetupService sendSUNoSetupErrorPeerEvent:](self, "sendSUNoSetupErrorPeerEvent:", [v10 code]);
    }

    suControllerManager = self->_suControllerManager;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __57__HDSSetupService_manager_didFailInstallation_withError___block_invoke;
    v16[3] = &unk_279714198;
    v16[4] = self;
    [(SUControllerManager *)suControllerManager purgeUpdate:v9 completion:v16, v13, v15];
  }

  else
  {
    self->_suUpdateState = 9;
    self->_homePodSUNoSetupState = [(HDSSetupService *)self hdsSUStateForSUState];
    if (gLogCategory_HDSSetupService <= 30)
    {
      if (gLogCategory_HDSSetupService == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_13;
        }

        homePodSUNoSetupState = self->_homePodSUNoSetupState;
      }

      suUpdateState = self->_suUpdateState;
      LogPrintF();
    }
  }

LABEL_13:
}

uint64_t __57__HDSSetupService_manager_didFailInstallation_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v6 = 0;
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __57__HDSSetupService_manager_didFailInstallation_withError___block_invoke_cold_2();
    }

    v3 = [*(a1 + 32) wipeWifiConfig];
    goto LABEL_10;
  }

  if (gLogCategory_HDSSetupService <= 90)
  {
    v6 = v3;
    if (gLogCategory_HDSSetupService != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
    {
      v3 = __57__HDSSetupService_manager_didFailInstallation_withError___block_invoke_cold_1();
LABEL_10:
      v4 = v6;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)manager:(id)a3 didFinishInstallation:(id)a4
{
  v10 = a3;
  v6 = a4;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService manager:didFinishInstallation:];
  }

  self->_suUpdateState = 10;
  homePodSUNoSetupState = [(HDSSetupService *)self hdsSUStateForSUState];
  self->_homePodSUNoSetupState = homePodSUNoSetupState;
  if (gLogCategory_HDSSetupService <= 30)
  {
    if (gLogCategory_HDSSetupService != -1)
    {
LABEL_6:
      suUpdateState = self->_suUpdateState;
      v9 = homePodSUNoSetupState;
      LogPrintF();
      goto LABEL_8;
    }

    if (_LogCategory_Initialize())
    {
      homePodSUNoSetupState = self->_homePodSUNoSetupState;
      goto LABEL_6;
    }
  }

LABEL_8:
  [(HDSSetupService *)self configureSUControllerManagerToFinish:suUpdateState];
  [(HDSSetupService *)self sendSUNoSetupSUInstallDonePeerEvent];
}

- (void)manager:(id)a3 didFinishDownload:(id)a4 willProceedWithInstallation:(BOOL)a5 waitingForAdmissionControl:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v10 = a3;
  v11 = a4;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    v12 = "no";
    if (v7)
    {
      v13 = "yes";
    }

    else
    {
      v13 = "no";
    }

    if (v6)
    {
      v12 = "yes";
    }

    v18 = v13;
    v19 = v12;
    v17 = v11;
    LogPrintF();
  }

  v14 = [v11 progress];
  v15 = [v14 isDone];

  if (v15)
  {
    suControllerManager = self->_suControllerManager;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __100__HDSSetupService_manager_didFinishDownload_willProceedWithInstallation_waitingForAdmissionControl___block_invoke;
    v20[3] = &unk_279714B78;
    v20[4] = self;
    [(SUControllerManager *)suControllerManager managerState:v20];
  }

  else
  {
    self->_suUpdateState = 4;
    self->_homePodSUNoSetupState = [(HDSSetupService *)self hdsSUStateForSUState];
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService manager:? didFinishDownload:? willProceedWithInstallation:? waitingForAdmissionControl:?];
  }

  [(HDSSetupService *)self configureSUControllerManagerToFinish];
}

void __100__HDSSetupService_manager_didFinishDownload_willProceedWithInstallation_waitingForAdmissionControl___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v6 = a4;
  if (v6 && [*(a1 + 32) canSendPeerUpdates])
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __100__HDSSetupService_manager_didFinishDownload_willProceedWithInstallation_waitingForAdmissionControl___block_invoke_cold_1();
    }

    [*(a1 + 32) sendSUNoSetupErrorPeerEvent:{objc_msgSend(v6, "code")}];
  }

  else
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __100__HDSSetupService_manager_didFinishDownload_willProceedWithInstallation_waitingForAdmissionControl___block_invoke_cold_2();
    }

    [*(*(a1 + 32) + 472) installUpdate:v7];
  }
}

- (void)manager:(id)a3 didFinishDownload:(id)a4 willProceedWithInstallation:(BOOL)a5 waitingForAdmissionControl:(BOOL)a6 denialReasons:(id)a7
{
  v8 = a6;
  v9 = a5;
  v12 = a3;
  v13 = a4;
  v14 = a7;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    v15 = "no";
    if (v9)
    {
      v16 = "yes";
    }

    else
    {
      v16 = "no";
    }

    if (v8)
    {
      v15 = "yes";
    }

    v22 = v15;
    v23 = v14;
    v20 = v13;
    v21 = v16;
    LogPrintF();
  }

  v17 = [v13 progress];
  v18 = [v17 isDone];

  if (v18)
  {
    suControllerManager = self->_suControllerManager;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __114__HDSSetupService_manager_didFinishDownload_willProceedWithInstallation_waitingForAdmissionControl_denialReasons___block_invoke;
    v24[3] = &unk_279714B78;
    v24[4] = self;
    [(SUControllerManager *)suControllerManager managerState:v24];
  }

  else
  {
    self->_suUpdateState = 4;
    self->_homePodSUNoSetupState = [(HDSSetupService *)self hdsSUStateForSUState];
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService manager:? didFinishDownload:? willProceedWithInstallation:? waitingForAdmissionControl:? denialReasons:?];
  }

  [(HDSSetupService *)self configureSUControllerManagerToFinish];
}

void __114__HDSSetupService_manager_didFinishDownload_willProceedWithInstallation_waitingForAdmissionControl_denialReasons___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v6 = a4;
  if (v6 && [*(a1 + 32) canSendPeerUpdates])
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __114__HDSSetupService_manager_didFinishDownload_willProceedWithInstallation_waitingForAdmissionControl_denialReasons___block_invoke_cold_1();
    }

    [*(a1 + 32) sendSUNoSetupErrorPeerEvent:{objc_msgSend(v6, "code")}];
  }

  else
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __114__HDSSetupService_manager_didFinishDownload_willProceedWithInstallation_waitingForAdmissionControl_denialReasons___block_invoke_cold_2();
    }

    [*(*(a1 + 32) + 472) installUpdate:v7];
  }
}

- (void)manager:(id)a3 connectionError:(id)a4
{
  v6 = a3;
  v5 = a4;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService manager:connectionError:];
  }
}

- (void)connectionRegained:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (gLogCategory_HDSSetupService <= 30)
  {
    v5 = v3;
    if (gLogCategory_HDSSetupService != -1 || (v3 = _LogCategory_Initialize(), v4 = v5, v3))
    {
      v3 = [HDSSetupService connectionRegained:];
      v4 = v5;
    }
  }

  MEMORY[0x2821F96F8](v3, v4);
}

void __34__HDSSetupService__sfServiceStart__block_invoke_345_cold_1(void *a1)
{
  v1 = [a1 identifier];
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

- (uint64_t)_handleAuthActionRequest:(unsigned int)a1 responseHandler:(char)a2 .cold.2(unsigned int a1, char a2)
{
  if (a1 <= 6)
  {
    v2 = off_279714B98[a2 & 7];
  }

  return LogPrintF();
}

- (uint64_t)_handleAuthActionSiriStart:(void *)a1 response:(uint64_t)a2 responseHandler:(uint64_t)a3 .cold.2(void *a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    v9 = a3;
    LogPrintF();
  }

  v6 = [MEMORY[0x277CCABB0] numberWithInt:{4294960551, v9}];
  [a1 setObject:v6 forKeyedSubscript:@"er"];

  v7 = *(a2 + 16);

  return v7(a2, 0, 0, a1);
}

- (uint64_t)_handleBasicConfigRequest:(uint64_t)a1 .cold.11(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 240);
  if (v2 <= 7)
  {
    v3 = off_279714BD0[v2];
  }

  v5 = *a2;
  return LogPrintF();
}

- (uint64_t)setTime
{
  v1 = *(a1 + 288);
  OUTLINED_FUNCTION_6();
  return LogPrintF();
}

- (uint64_t)_handleFinishApply:(uint64_t)a1 responseHandler:.cold.2(uint64_t a1)
{
  v1 = *(a1 + 312);
  OUTLINED_FUNCTION_6();
  return LogPrintF();
}

- (uint64_t)_handleFinishApply:(uint64_t)a1 responseHandler:.cold.3(uint64_t a1)
{
  v1 = *(a1 + 288);
  OUTLINED_FUNCTION_6();
  return LogPrintF();
}

- (uint64_t)_handleFinishDone2Ready
{
  *(a1 + 62);
  *(a1 + 80);
  return LogPrintF();
}

- (uint64_t)_handleRawRequest:(int)a1 flags:(unsigned int *)a2 responseHandler:.cold.4(int a1, unsigned int *a2)
{
  if (a1 != -1 || (result = _LogCategory_Initialize(), result))
  {
    v4 = *a2;
    return LogPrintF();
  }

  return result;
}

- (uint64_t)_setSiriInfo
{
  *(a1 + 245);
  v1 = *(a1 + 240);
  if (v1 <= 7)
  {
    v2 = off_279714BD0[v1];
  }

  v5 = *(a1 + 264);
  v4 = *(a1 + 248);
  return LogPrintF();
}

- (void)isHomePodSUNoSetup
{
  v1 = *(a1 + 368);
  v2 = SUControllerStringForManagerState();
  LogPrintF();
}

- (uint64_t)manager:(uint64_t)a1 didFinishDownload:willProceedWithInstallation:waitingForAdmissionControl:.cold.1(uint64_t a1)
{
  v2 = *(a1 + 368);
  v3 = *(a1 + 364);
  return LogPrintF();
}

- (uint64_t)manager:(uint64_t)a1 didFinishDownload:willProceedWithInstallation:waitingForAdmissionControl:denialReasons:.cold.1(uint64_t a1)
{
  v2 = *(a1 + 368);
  v3 = *(a1 + 364);
  return LogPrintF();
}

@end