@interface CoreRepairUIUtils
- (BOOL)getRepairTicket;
- (BOOL)hasConnectivity;
- (BOOL)isBatteryInServiceState;
- (BOOL)isPreFlightDone;
- (BOOL)isPreflightSuccessful;
- (BOOL)isVaildCAA:(id)a;
- (BOOL)isbatteryLevelBelowThreshold;
- (int64_t)getCpuUptimeInSec;
- (void)_preflight:(id)_preflight;
- (void)clearCAARequestHistory;
- (void)clearFollowUpForkey:(id)forkey;
- (void)getCAAForRepairHistory;
- (void)getCpuUptimeInSec;
- (void)isPreflightSuccessful;
- (void)performBackGroundMiniPreflight;
- (void)performInteractiveMiniPreflightWith:(id)with;
- (void)requestCAA;
- (void)retryCAA;
- (void)scheduleNetworkActivityWith:(int64_t)with;
- (void)setBootIntentAndReboot;
- (void)setupCAARetry:(id *)retry;
@end

@implementation CoreRepairUIUtils

- (void)clearCAARequestHistory
{
  v2 = handleForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_247875000, v2, OS_LOG_TYPE_DEFAULT, "Clearing CAA request history ...", v4, 2u);
  }

  v3 = [MEMORY[0x277CBEBD0] groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird"];
  [v3 setInteger:0 forKey:@"backOffCount"];
  [v3 setInteger:0 forKey:@"retryCount"];
  [v3 setInteger:0 forKey:@"lastUptime"];
  [v3 setDouble:@"lastTime" forKey:0.0];
}

- (BOOL)isVaildCAA:(id)a
{
  aCopy = a;
  v4 = objc_opt_new();
  if (aCopy)
  {
    v17 = 0;
    v5 = [MEMORY[0x277D01038] isServicePartWithError:&v17];
    v6 = v17;
    if (v5)
    {
      v7 = handleForCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_247875000, v7, OS_LOG_TYPE_DEFAULT, "SrvP exists, always trust CAA", buf, 2u);
      }

      goto LABEL_18;
    }

    if ([MEMORY[0x277D00FE0] isDcSignedComponent:1024 error:0])
    {
      v9 = [aCopy objectForKeyedSubscript:@"vcrt"];
      if (v9)
      {
      }

      else
      {
        v10 = [aCopy objectForKeyedSubscript:@"bcrt"];

        if (!v10)
        {
          v7 = handleForCategory(0);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            [CoreRepairUIUtils isVaildCAA:];
          }

          goto LABEL_27;
        }
      }

      [v4 sendAsyncAnalyticsForEventIfNeeded:@"RepairUsingCAA" moduleName:@"Battery"];
    }

    if ([MEMORY[0x277D00FE0] isDcSignedComponent:1025 error:0])
    {
      v11 = [aCopy objectForKeyedSubscript:@"drp#"];

      if (!v11)
      {
        v7 = handleForCategory(0);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [CoreRepairUIUtils isVaildCAA:];
        }

        goto LABEL_27;
      }

      [v4 sendAsyncAnalyticsForEventIfNeeded:@"RepairUsingCAA" moduleName:@"Display"];
    }

    if (![MEMORY[0x277D00FE0] isDcSignedComponent:1026 error:0])
    {
LABEL_17:
      v13 = [MEMORY[0x277CBEBD0] groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird"];
      v14 = [v13 integerForKey:@"retryCount"];

      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"retryPassedCount:%ld", v14];
      [v4 sendAsyncAnalyticsForEventIfNeeded:v7 moduleName:@"PassedRetryCount"];
LABEL_18:
      v8 = 1;
LABEL_19:

      goto LABEL_20;
    }

    v12 = [aCopy objectForKeyedSubscript:@"CmCl"];

    if (v12)
    {
      [v4 sendAsyncAnalyticsForEventIfNeeded:@"RepairUsingCAA" moduleName:@"Camera"];
      goto LABEL_17;
    }

    v7 = handleForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CoreRepairUIUtils isVaildCAA:];
    }

LABEL_27:
    v8 = 0;
    goto LABEL_19;
  }

  v8 = 0;
LABEL_20:

  return v8;
}

- (void)getCAAForRepairHistory
{
  v22[3] = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:&unk_28597F158 forKeyedSubscript:*MEMORY[0x277D04948]];
  v4 = *MEMORY[0x277D04908];
  v22[0] = *MEMORY[0x277D04900];
  v22[1] = v4;
  v22[2] = *MEMORY[0x277D04930];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  [dictionary setObject:v5 forKeyedSubscript:*MEMORY[0x277D04928]];

  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__0;
  v19[4] = __Block_byref_object_dispose__0;
  v20 = 0;
  v6 = objc_opt_new();
  v7 = dispatch_queue_create("async", MEMORY[0x277D85CD8]);
  v8 = handleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247875000, v8, OS_LOG_TYPE_DEFAULT, "Getting CAA for Repair History", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__CoreRepairUIUtils_getCAAForRepairHistory__block_invoke;
  block[3] = &unk_278EB1FC0;
  v13 = v6;
  v14 = dictionary;
  v16 = v21;
  v17 = v19;
  selfCopy = self;
  v9 = dictionary;
  v10 = v6;
  dispatch_async(v7, block);

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v21, 8);
  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __43__CoreRepairUIUtils_getCAAForRepairHistory__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__CoreRepairUIUtils_getCAAForRepairHistory__block_invoke_2;
  v4[3] = &unk_278EB1F98;
  v6 = *(a1 + 64);
  v5 = *(a1 + 48);
  return [v2 issueClientCertificateWithCompletionOnQueue:0 withOptions:v1 completion:v4];
}

void __43__CoreRepairUIUtils_getCAAForRepairHistory__block_invoke_2(uint64_t a1, char a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = handleForCategory(0);
  v10 = v9;
  if ((a2 & 1) == 0)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __43__CoreRepairUIUtils_getCAAForRepairHistory__block_invoke_2_cold_1();
    }

    goto LABEL_21;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v7 referenceKey];
    v12 = [v7 certificates];
    *buf = 138412546;
    v28 = v11;
    v29 = 2112;
    v30 = v12;
    _os_log_impl(&dword_247875000, v10, OS_LOG_TYPE_DEFAULT, "BIK:%@ Certs:%@", buf, 0x16u);
  }

  v13 = [v7 certificates];
  if (!v13)
  {
    goto LABEL_19;
  }

  v14 = v13;
  v15 = [v7 certificates];
  if ([v15 count] != 2)
  {

LABEL_19:
    v10 = handleForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __43__CoreRepairUIUtils_getCAAForRepairHistory__block_invoke_2_cold_2();
    }

    goto LABEL_21;
  }

  v16 = [v7 referenceKey];

  if (!v16)
  {
    goto LABEL_19;
  }

  v17 = handleForCategory(0);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247875000, v17, OS_LOG_TYPE_DEFAULT, "BIK and BAA issues success", buf, 2u);
  }

  *(*(*(a1 + 40) + 8) + 24) = [v7 certifcateType];
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v18 = *(*(a1 + 48) + 8);
    obj = *(v18 + 40);
    v10 = [v7 extractRepairHistoryWithError:&obj];
    objc_storeStrong((v18 + 40), obj);
    v19 = handleForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138412546;
      v28 = v10;
      v29 = 2112;
      v30 = v20;
      _os_log_impl(&dword_247875000, v19, OS_LOG_TYPE_DEFAULT, "repairHistory: %@ error: %@", buf, 0x16u);
    }

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      if ([*(a1 + 32) isVaildCAA:v10])
      {
        v21 = [MEMORY[0x277D00FE0] getLocalSealingManifest];
        v22 = [MEMORY[0x277CBEBD0] groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird"];
        [v22 setObject:v21 forKey:@"cachedSealingManifest"];

        [*(a1 + 32) clearCAARequestHistory];
      }

      v23 = [MEMORY[0x277CCAC58] dataWithPropertyList:v10 format:100 options:0 error:0];
      v24 = [MEMORY[0x277CBEBD0] groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird"];
      [v24 setObject:v23 forKey:@"cachedCAACert"];
    }

LABEL_21:
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)_preflight:(id)_preflight
{
  _preflightCopy = _preflight;
  v4 = objc_opt_new();
  [v4 preflight:_preflightCopy withReply:&__block_literal_global_3];
}

void __32__CoreRepairUIUtils__preflight___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = handleForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 67109120;
    LODWORD(v18) = a2;
    _os_log_impl(&dword_247875000, v8, OS_LOG_TYPE_DEFAULT, "Preflight success: %d", &v17, 8u);
  }

  v9 = handleForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v6;
    _os_log_impl(&dword_247875000, v9, OS_LOG_TYPE_DEFAULT, "Preflight results: %@", &v17, 0xCu);
  }

  v10 = handleForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v7;
    _os_log_impl(&dword_247875000, v10, OS_LOG_TYPE_DEFAULT, "Preflight error: %@", &v17, 0xCu);
  }

  v11 = [MEMORY[0x277CBEBD0] groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird.systemhealth"];
  [v11 setObject:v6 forKey:@"tempPreflightResults"];

  v12 = [MEMORY[0x277CBEBD0] groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird.systemhealth"];
  [v12 setObject:v6 forKey:@"cachedPreFlightResults"];

  notify_post("com.apple.mobilerepair.refreshui");
  v13 = objc_opt_new();
  v14 = v13;
  if (((v7 == 0) & a2) != 0)
  {
    v15 = @"PreflightDone";
  }

  else
  {
    v15 = @"PreflightError";
  }

  [v13 sendAsyncAnalyticsForEvent:v15 moduleName:@"PartsAndServiceHistory"];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)performInteractiveMiniPreflightWith:(id)with
{
  withCopy = with;
  v5 = handleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247875000, v5, OS_LOG_TYPE_DEFAULT, "Perform mini-preflight", buf, 2u);
  }

  if ([(CoreRepairUIUtils *)self isPreFlightDone])
  {
    v6 = handleForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_247875000, v6, OS_LOG_TYPE_DEFAULT, "performInteractiveMiniPreflight skipped", buf, 2u);
    }

    withCopy[2](withCopy);
  }

  else
  {
    xpc_activity_unregister([@"com.apple.corerepair.preflight" UTF8String]);
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"miniPreflight"];
    v8 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__CoreRepairUIUtils_performInteractiveMiniPreflightWith___block_invoke;
    block[3] = &unk_278EB2008;
    block[4] = self;
    v11 = v7;
    v12 = withCopy;
    v9 = v7;
    dispatch_async(v8, block);
  }
}

uint64_t __57__CoreRepairUIUtils_performInteractiveMiniPreflightWith___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 sendAsyncAnalyticsForEvent:@"InteractivePreflight" moduleName:@"PartsAndServiceHistory"];

  [*(a1 + 32) _preflight:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (BOOL)isPreFlightDone
{
  v2 = [MEMORY[0x277CBEBD0] groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird.systemhealth"];
  v3 = [v2 objectForKey:@"tempPreflightResults"];

  return v3 != 0;
}

- (void)performBackGroundMiniPreflight
{
  isPreFlightDone = [(CoreRepairUIUtils *)self isPreFlightDone];
  v4 = handleForCategory(0);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (isPreFlightDone)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_247875000, v4, OS_LOG_TYPE_DEFAULT, "performBackGroundMiniPreflight skipped", buf, 2u);
    }
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_247875000, v4, OS_LOG_TYPE_DEFAULT, "perform background mini-preflight", buf, 2u);
    }

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"miniPreflight"];
    v7 = dispatch_get_global_queue(21, 0);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __51__CoreRepairUIUtils_performBackGroundMiniPreflight__block_invoke;
    v8[3] = &unk_278EB1D00;
    v8[4] = self;
    v9 = v6;
    v4 = v6;
    dispatch_async(v7, v8);
  }
}

uint64_t __51__CoreRepairUIUtils_performBackGroundMiniPreflight__block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  [v2 sendAsyncAnalyticsForEvent:@"BackGroundPreflight" moduleName:@"PartsAndServiceHistory"];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 _preflight:v4];
}

- (BOOL)hasConnectivity
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = SCNetworkReachabilityCreateWithName(*MEMORY[0x277CBECE8], [@"apple.com" UTF8String]);
  if (v2)
  {
    v3 = v2;
    flags = 0;
    if (SCNetworkReachabilityGetFlags(v2, &flags))
    {
      v4 = flags;
      v5 = handleForCategory(0);
      v6 = (v4 >> 1) & 1;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v11 = v6;
        _os_log_impl(&dword_247875000, v5, OS_LOG_TYPE_DEFAULT, "Network reachability: %d", buf, 8u);
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }

    CFRelease(v3);
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isPreflightSuccessful
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEBD0] groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird.systemhealth"];
  v3 = [v2 objectForKey:@"tempPreflightResults"];

  if (v3 && [v3 count])
  {
    v4 = [MEMORY[0x277D01000] spcResults:v3];
    v5 = [v4 objectForKeyedSubscript:@"sealed"];
    v6 = [v4 objectForKeyedSubscript:@"pass"];
    v7 = [v6 mutableCopy];
    if (v5 && [v5 count])
    {
      [v7 addObject:@"RECOVER"];
    }

    if (v7)
    {
      v8 = [v7 count]!= 0;
    }

    else
    {
      v8 = 0;
    }

    v9 = handleForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12[0] = 67109120;
      v12[1] = v8;
      _os_log_impl(&dword_247875000, v9, OS_LOG_TYPE_DEFAULT, "Cached preflight success: %d", v12, 8u);
    }
  }

  else
  {
    v7 = handleForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CoreRepairUIUtils isPreflightSuccessful];
    }

    LOBYTE(v8) = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)getRepairTicket
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__0;
  v24 = __Block_byref_object_dispose__0;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__0;
  v18 = __Block_byref_object_dispose__0;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v2 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.corerepair.intentControl" options:0];
  v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28599D160];
  [v2 setRemoteObjectInterface:v3];

  [v2 resume];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __36__CoreRepairUIUtils_getRepairTicket__block_invoke;
  v9[3] = &unk_278EB2030;
  v9[4] = &v14;
  v4 = [v2 synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __36__CoreRepairUIUtils_getRepairTicket__block_invoke_121;
  v8[3] = &unk_278EB2058;
  v8[4] = &v20;
  v8[5] = &v14;
  v8[6] = &v10;
  [v4 getRepairTicket:v8];

  v6 = *(v11 + 24) == 1 && (v5 = v21[5]) != 0 && [v5 length] && v15[5] == 0;
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v20, 8);
  return v6;
}

void __36__CoreRepairUIUtils_getRepairTicket__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = handleForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __36__CoreRepairUIUtils_getRepairTicket__block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __36__CoreRepairUIUtils_getRepairTicket__block_invoke_121(void *a1, int a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  objc_storeStrong((*(a1[4] + 8) + 40), a3);
  objc_storeStrong((*(a1[5] + 8) + 40), a4);
  *(*(a1[6] + 8) + 24) = a2;
  v10 = handleForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109634;
    v12[1] = a2;
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v8;
    _os_log_impl(&dword_247875000, v10, OS_LOG_TYPE_DEFAULT, "repairTicket status:%d:error:%@:ticket:%@", v12, 0x1Cu);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setBootIntentAndReboot
{
  v2 = handleForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_247875000, v2, OS_LOG_TYPE_DEFAULT, "Proceeding with bootIntent reboot", v9, 2u);
  }

  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.corerepair.intentControl" options:0];
  v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28599D160];
  [v3 setRemoteObjectInterface:v4];

  [v3 resume];
  v5 = objc_opt_new();
  [v5 sendAsyncAnalyticsForEvent:@"BootIntent" moduleName:@"PartsAndServiceHistory"];

  remoteObjectProxy = [v3 remoteObjectProxy];
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  [remoteObjectProxy setBootIntentAndRebootToCheckerboardWithLocale:localeIdentifier reply:&__block_literal_global_129];
}

void __43__CoreRepairUIUtils_setBootIntentAndReboot__block_invoke(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = handleForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v4;
    v9 = 1024;
    v10 = a2;
    _os_log_impl(&dword_247875000, v5, OS_LOG_TYPE_DEFAULT, "setBootIntentAndRebootToCheckerboardWithLocale:Reply: error:%@:status:%d", &v7, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)scheduleNetworkActivityWith:(int64_t)with
{
  if (with)
  {
    v5 = @"com.apple.corerepair.preflight";
  }

  else
  {
    v5 = @"com.apple.corerepair.CAA";
  }

  uTF8String = [(__CFString *)v5 UTF8String];
  v7 = *MEMORY[0x277D86238];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__CoreRepairUIUtils_scheduleNetworkActivityWith___block_invoke;
  v8[3] = &unk_278EB1E68;
  v8[4] = self;
  v8[5] = with;
  xpc_activity_register(uTF8String, v7, v8);
}

void __49__CoreRepairUIUtils_scheduleNetworkActivityWith___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!xpc_activity_get_state(v3))
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86360], 0);
    xpc_dictionary_set_string(v5, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
    xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86230], 1);
    xpc_dictionary_set_BOOL(v5, *MEMORY[0x277D86398], 1);
    xpc_activity_set_criteria(v3, v5);
    goto LABEL_15;
  }

  v4 = *(a1 + 40);
  if (v4 == 1)
  {
    [*(a1 + 32) performBackGroundMiniPreflight];
  }

  else if (!v4)
  {
    [*(a1 + 32) getCAAForRepairHistory];
  }

  if (xpc_activity_should_defer(v3))
  {
    v6 = xpc_activity_set_state(v3, 3);
    v5 = handleForCategory(0);
    v7 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v7)
      {
        v10 = 138412546;
        v11 = v3;
        v12 = 2048;
        state = xpc_activity_get_state(v3);
        v8 = "Successfully deferred activity %@ to state: %lu";
LABEL_14:
        _os_log_impl(&dword_247875000, v5, OS_LOG_TYPE_DEFAULT, v8, &v10, 0x16u);
      }
    }

    else if (v7)
    {
      v10 = 138412546;
      v11 = v3;
      v12 = 2048;
      state = xpc_activity_get_state(v3);
      v8 = "Failed to set state to DEFER for activity %@ current state: %lu";
      goto LABEL_14;
    }

LABEL_15:

    goto LABEL_16;
  }

  xpc_activity_set_state(v3, 5);
LABEL_16:

  v9 = *MEMORY[0x277D85DE8];
}

- (void)requestCAA
{
  v3 = handleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247875000, v3, OS_LOG_TYPE_DEFAULT, "Requesting CAA ...", buf, 2u);
  }

  v4 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__CoreRepairUIUtils_requestCAA__block_invoke;
  block[3] = &unk_278EB1F28;
  block[4] = self;
  dispatch_async(v4, block);
}

- (int64_t)getCpuUptimeInSec
{
  v4.tv_sec = 0;
  v4.tv_nsec = 0;
  if (!clock_gettime(_CLOCK_UPTIME_RAW, &v4))
  {
    return v4.tv_sec;
  }

  v2 = handleForCategory(1uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    [CoreRepairUIUtils getCpuUptimeInSec];
  }

  return -1;
}

- (void)retryCAA
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEBD0] groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird"];
  v4 = [v3 integerForKey:@"backOffCount"];
  v5 = [v3 integerForKey:@"retryCount"];
  v6 = [v3 integerForKey:@"lastUptime"];
  [v3 doubleForKey:@"lastTime"];
  v8 = v7;
  getCpuUptimeInSec = [(CoreRepairUIUtils *)self getCpuUptimeInSec];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v12 = v11;

  [v3 doubleForKey:@"timeIntervalOverride"];
  v14 = v13;
  if ((os_variant_has_internal_content() & (v13 != 0.0)) != 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = v4;
  }

  v16 = handleForCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 134219264;
    v25 = v15;
    v26 = 2048;
    v27 = v5;
    v28 = 2048;
    v29 = v6;
    v30 = 2048;
    v31 = getCpuUptimeInSec;
    v32 = 2048;
    v33 = v8;
    v34 = 2048;
    v35 = v12;
    _os_log_impl(&dword_247875000, v16, OS_LOG_TYPE_DEFAULT, "Retry CAA request (BackOff: %ld RetryCount: %ld LastUptime: %ld CurrentUptime: %ld LastTime: %lf CurrentTime: %lf) ...", &v24, 0x3Eu);
  }

  if (v5 > 7)
  {
    v19 = objc_opt_new();
    [v19 sendAnalyticsForRepairHistoryMismatch];

    [(CoreRepairUIUtils *)self clearCAARequestHistory];
    getLocalSealingManifest = [MEMORY[0x277D00FE0] getLocalSealingManifest];
    [v3 setObject:getLocalSealingManifest forKey:@"cachedSealingManifest"];
    [v3 synchronize];
  }

  else
  {
    if ((v6 + 1) <= 1)
    {
      v17 = handleForCategory(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        v18 = "First request or uptime error, requesting CAA.";
LABEL_22:
        _os_log_impl(&dword_247875000, v17, OS_LOG_TYPE_DEFAULT, v18, &v24, 2u);
        goto LABEL_23;
      }

      goto LABEL_23;
    }

    v21 = getCpuUptimeInSec - v6;
    if (getCpuUptimeInSec < v6)
    {
      v17 = handleForCategory(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        v18 = "System must have rebooted (currentUptime < lastUptime), requesting CAA.";
        goto LABEL_22;
      }

LABEL_23:

      [(CoreRepairUIUtils *)self requestCAA];
      [v3 setInteger:v5 + 1 forKey:@"retryCount"];
      [v3 setInteger:6 * v15 + 4 forKey:@"backOffCount"];
      [v3 synchronize];
      [v3 setInteger:getCpuUptimeInSec forKey:@"lastUptime"];
      [v3 setDouble:@"lastTime" forKey:v12];
      [v3 synchronize];
      goto LABEL_24;
    }

    if (v21 >= v15)
    {
      v17 = handleForCategory(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        v18 = "Backoff time has elapsed, requesting CAA.";
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    v22 = handleForCategory(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 134218240;
      v25 = (v12 - v8);
      v26 = 2048;
      v27 = v21;
      _os_log_impl(&dword_247875000, v22, OS_LOG_TYPE_DEFAULT, "intervalTime: %lld intervalUptime: %lld", &v24, 0x16u);
    }

    if (v21 + 5 < (v12 - v8))
    {
      v17 = handleForCategory(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24) = 0;
        v18 = "System must have rebooted (Uptime rolls), requesting CAA.";
        goto LABEL_22;
      }

      goto LABEL_23;
    }
  }

LABEL_24:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)setupCAARetry:(id *)retry
{
  v5 = [MEMORY[0x277CBEBD0] groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird"];
  v6 = [v5 objectForKey:@"cachedSealingManifest"];

  getLocalSealingManifest = [MEMORY[0x277D00FE0] getLocalSealingManifest];
  v8 = [MEMORY[0x277D00FE0] isDcSignedSealingManifest:0];
  if (AMFDRSealingMapGetFDRDataVersionForDevice() != 1 && v8)
  {
    v9 = [MEMORY[0x277CBEBD0] groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird"];
    v10 = [v9 objectForKey:@"cachedCAACert"];

    if (v10 && [v10 length])
    {
      *retry = [MEMORY[0x277CCAC58] propertyListWithData:v10 options:0 format:0 error:0];
    }

    if ([getLocalSealingManifest isEqualToData:v6])
    {
      v11 = handleForCategory(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_247875000, v11, OS_LOG_TYPE_DEFAULT, "Local sealing data matches cached one. CAA has been requested before. Skipping ...", buf, 2u);
      }

      goto LABEL_19;
    }

    v12 = handleForCategory(0);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v13)
      {
        v17 = 0;
        v14 = "Requesting CAA due to local and cached sealing data mismatch ...";
        v15 = &v17;
LABEL_17:
        _os_log_impl(&dword_247875000, v12, OS_LOG_TYPE_DEFAULT, v14, v15, 2u);
      }
    }

    else if (v13)
    {
      *v18 = 0;
      v14 = "Requesting CAA due to no cached sealing data ...";
      v15 = v18;
      goto LABEL_17;
    }

    [(CoreRepairUIUtils *)self retryCAA];
    goto LABEL_19;
  }

  v10 = handleForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_247875000, v10, OS_LOG_TYPE_DEFAULT, "FDR data indicates no repair happened on this device.", v16, 2u);
  }

LABEL_19:
}

- (BOOL)isbatteryLevelBelowThreshold
{
  v2 = MGCopyAnswer();
  v3 = [v2 intValue] < 20;

  return v3;
}

- (void)clearFollowUpForkey:(id)forkey
{
  forkeyCopy = forkey;
  v3 = [MEMORY[0x277CBEBD0] groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird.systemhealth"];
  v4 = [v3 integerForKey:forkeyCopy];

  if (v4 <= 1)
  {
    v5 = [MEMORY[0x277CBEBD0] groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird.systemhealth"];
    [v5 setInteger:v4 + 1 forKey:forkeyCopy];

    notify_post("com.apple.mobilerepair.refreshui");
  }
}

- (BOOL)isBatteryInServiceState
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.mobilerepaird" options:0];
  v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28599D248];
  [v2 setRemoteObjectInterface:v3];

  [v2 resume];
  v4 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_152];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__CoreRepairUIUtils_isBatteryInServiceState__block_invoke_153;
  v6[3] = &unk_278EB20A0;
  v6[4] = &v7;
  [v4 isBatteryInServiceState:v6];

  LOBYTE(v4) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __44__CoreRepairUIUtils_isBatteryInServiceState__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = handleForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __36__CoreRepairUIUtils_getRepairTicket__block_invoke_cold_1();
  }
}

void __44__CoreRepairUIUtils_isBatteryInServiceState__block_invoke_153(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  v6 = handleForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __44__CoreRepairUIUtils_isBatteryInServiceState__block_invoke_153_cold_1();
  }
}

- (void)isVaildCAA:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)isVaildCAA:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)isVaildCAA:.cold.3()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __43__CoreRepairUIUtils_getCAAForRepairHistory__block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __43__CoreRepairUIUtils_getCAAForRepairHistory__block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)isPreflightSuccessful
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __36__CoreRepairUIUtils_getRepairTicket__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)getCpuUptimeInSec
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __44__CoreRepairUIUtils_isBatteryInServiceState__block_invoke_153_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end