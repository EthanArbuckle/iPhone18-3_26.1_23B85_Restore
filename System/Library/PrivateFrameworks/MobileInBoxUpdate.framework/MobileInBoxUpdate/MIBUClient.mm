@interface MIBUClient
- (BOOL)_isActivated:(id *)activated;
- (BOOL)_isOnLockScreen;
- (BOOL)isInBoxUpdateMode:(id *)mode;
- (BOOL)isInPalletUpdateMode:(id *)mode;
- (MIBUClient)init;
- (id)loopbackServerURL:(id *)l;
- (void)_setupConnection;
- (void)acquireDarkWakeAssertionIfNeeded:(id *)needed;
- (void)connectToWiFi:(id *)fi;
- (void)dealloc;
- (void)eapConfigurationWithCompletion:(id)completion;
- (void)invalidate;
- (void)isLowPowerModeSetWithCompletion:(id)completion;
- (void)setLowPowerModeWithOptions:(id)options completion:(id)completion;
- (void)shutdown:(id *)shutdown;
- (void)stopWiFiMonitor:(id *)monitor;
- (void)terminateInBoxUpdateWithCompletion:(id)completion;
@end

@implementation MIBUClient

- (MIBUClient)init
{
  v5.receiver = self;
  v5.super_class = MIBUClient;
  v2 = [(MIBUClient *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MIBUClient *)v2 _setupConnection];
  }

  return v3;
}

- (void)invalidate
{
  v9 = *MEMORY[0x277D85DE8];
  connection = [(MIBUClient *)self connection];

  if (connection)
  {
    if (MIBUOnceToken != -1)
    {
      [MIBUClient invalidate];
    }

    v4 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = @"com.apple.inboxupdaterd";
      _os_log_impl(&dword_259ABF000, v4, OS_LOG_TYPE_DEFAULT, "Invalidating connection to %@", &v7, 0xCu);
    }

    connection2 = [(MIBUClient *)self connection];
    [connection2 invalidate];

    [(MIBUClient *)self setConnection:0];
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __24__MIBUClient_invalidate__block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)dealloc
{
  [(MIBUClient *)self invalidate];
  v3.receiver = self;
  v3.super_class = MIBUClient;
  [(MIBUClient *)&v3 dealloc];
}

- (BOOL)isInBoxUpdateMode:(id *)mode
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  if ([(MIBUClient *)self _isActivated:0])
  {
    [MIBUClient isInBoxUpdateMode:];
    goto LABEL_6;
  }

  if (![(MIBUClient *)self _isOnLockScreen])
  {
    connection = [(MIBUClient *)self connection];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __32__MIBUClient_isInBoxUpdateMode___block_invoke_33;
    v14[3] = &unk_2798E6798;
    v14[4] = &v15;
    v6 = [connection synchronousRemoteObjectProxyWithErrorHandler:v14];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __32__MIBUClient_isInBoxUpdateMode___block_invoke_37;
    v13[3] = &unk_2798E67C0;
    v13[4] = &v15;
    v13[5] = &v21;
    [v6 isInDiagnosticModeWithReply:v13];

    if ((v22[3] & 1) == 0)
    {
      [MIBUClient isInBoxUpdateMode:];
      if (!mode)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  connection2 = [(MIBUClient *)self connection];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __32__MIBUClient_isInBoxUpdateMode___block_invoke_45;
  v12[3] = &unk_2798E6798;
  v12[4] = &v15;
  v8 = [connection2 synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __32__MIBUClient_isInBoxUpdateMode___block_invoke_49;
  v11[3] = &unk_2798E67C0;
  v11[4] = &v15;
  v11[5] = &v21;
  [v8 isInBoxUpdateModeWithReply:v11];

  if (mode)
  {
LABEL_5:
    *mode = v16[5];
  }

LABEL_6:
  v9 = *(v22 + 24);
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  return v9;
}

void __32__MIBUClient_isInBoxUpdateMode___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __32__MIBUClient_isInBoxUpdateMode___block_invoke_33(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MIBUOnceToken != -1)
  {
    __32__MIBUClient_isInBoxUpdateMode___block_invoke_33_cold_1();
  }

  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    __32__MIBUClient_isInBoxUpdateMode___block_invoke_33_cold_2();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __32__MIBUClient_isInBoxUpdateMode___block_invoke_2()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __32__MIBUClient_isInBoxUpdateMode___block_invoke_37(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (MIBUOnceToken != -1)
  {
    __32__MIBUClient_isInBoxUpdateMode___block_invoke_37_cold_1();
  }

  v6 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "[MIBUClient isInBoxUpdateMode:]_block_invoke";
    v13 = 1024;
    v14 = a2;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(&dword_259ABF000, v6, OS_LOG_TYPE_DEFAULT, "%s: isInDiagnosticMode = %d; error = %{public}@", &v11, 0x1Cu);
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v10 = *MEMORY[0x277D85DE8];
}

void __32__MIBUClient_isInBoxUpdateMode___block_invoke_2_38()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __32__MIBUClient_isInBoxUpdateMode___block_invoke_42()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __32__MIBUClient_isInBoxUpdateMode___block_invoke_45(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MIBUOnceToken != -1)
  {
    __32__MIBUClient_isInBoxUpdateMode___block_invoke_45_cold_1();
  }

  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    __32__MIBUClient_isInBoxUpdateMode___block_invoke_33_cold_2();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __32__MIBUClient_isInBoxUpdateMode___block_invoke_2_46()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __32__MIBUClient_isInBoxUpdateMode___block_invoke_49(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (MIBUOnceToken != -1)
  {
    __32__MIBUClient_isInBoxUpdateMode___block_invoke_49_cold_1();
  }

  v6 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "[MIBUClient isInBoxUpdateMode:]_block_invoke";
    v13 = 1024;
    v14 = a2;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(&dword_259ABF000, v6, OS_LOG_TYPE_DEFAULT, "%s: isInBoxUpdateMode = %d; error = %{public}@", &v11, 0x1Cu);
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v9 = v5;

  *(*(*(a1 + 40) + 8) + 24) = a2;
  v10 = *MEMORY[0x277D85DE8];
}

void __32__MIBUClient_isInBoxUpdateMode___block_invoke_2_50()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (BOOL)isInPalletUpdateMode:(id *)mode
{
  if (![(MIBUClient *)self _isIPad]&& ![(MIBUClient *)self _isMac])
  {
    v5 = 0;
    v6 = 0;
    if (!mode)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v8 = 0;
  v5 = [(MIBUClient *)self isInBoxUpdateMode:&v8];
  v6 = v8;
  if (mode)
  {
LABEL_4:
    v6 = v6;
    *mode = v6;
  }

LABEL_5:

  return v5;
}

- (void)eapConfigurationWithCompletion:(id)completion
{
  completionCopy = completion;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1;
  v31 = __Block_byref_object_dispose__1;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__1;
  v25 = __Block_byref_object_dispose__1;
  v26 = 0;
  if ([(MIBUClient *)self _isActivated:0])
  {
    [MIBUClient eapConfigurationWithCompletion:];
    v8 = v28;
    obj = v28[5];
    safeAssignError(&obj, 33554433, 0, @"Device already activated", v9, v10, v11, v12, v13);
    objc_storeStrong(v8 + 5, obj);
    completionCopy[2](completionCopy, v22[5], v28[5]);
  }

  else
  {
    connection = [(MIBUClient *)self connection];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __45__MIBUClient_eapConfigurationWithCompletion___block_invoke_58;
    v18[3] = &unk_2798E67E8;
    v6 = completionCopy;
    v19 = v6;
    v7 = [connection remoteObjectProxyWithErrorHandler:v18];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __45__MIBUClient_eapConfigurationWithCompletion___block_invoke_61;
    v14[3] = &unk_2798E6810;
    v16 = &v27;
    v17 = &v21;
    v15 = v6;
    [v7 eapConfigurationWithReply:v14];
  }

  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
}

void __45__MIBUClient_eapConfigurationWithCompletion___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __45__MIBUClient_eapConfigurationWithCompletion___block_invoke_58(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MIBUOnceToken != -1)
  {
    __45__MIBUClient_eapConfigurationWithCompletion___block_invoke_58_cold_1();
  }

  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    __32__MIBUClient_isInBoxUpdateMode___block_invoke_33_cold_2();
  }

  (*(*(a1 + 32) + 16))();
}

void __45__MIBUClient_eapConfigurationWithCompletion___block_invoke_2()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __45__MIBUClient_eapConfigurationWithCompletion___block_invoke_2_62()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)terminateInBoxUpdateWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(MIBUClient *)self _isActivated:0])
  {
    [MIBUClient terminateInBoxUpdateWithCompletion:completionCopy];
  }

  else
  {
    connection = [(MIBUClient *)self connection];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __49__MIBUClient_terminateInBoxUpdateWithCompletion___block_invoke_70;
    v10[3] = &unk_2798E67E8;
    v6 = completionCopy;
    v11 = v6;
    v7 = [connection remoteObjectProxyWithErrorHandler:v10];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __49__MIBUClient_terminateInBoxUpdateWithCompletion___block_invoke_73;
    v8[3] = &unk_2798E67E8;
    v9 = v6;
    [v7 terminateInBoxUpdateWithReply:v8];
  }
}

void __49__MIBUClient_terminateInBoxUpdateWithCompletion___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __49__MIBUClient_terminateInBoxUpdateWithCompletion___block_invoke_70(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MIBUOnceToken != -1)
  {
    __49__MIBUClient_terminateInBoxUpdateWithCompletion___block_invoke_70_cold_1();
  }

  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    __32__MIBUClient_isInBoxUpdateMode___block_invoke_33_cold_2();
  }

  (*(*(a1 + 32) + 16))();
}

void __49__MIBUClient_terminateInBoxUpdateWithCompletion___block_invoke_2()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)connectToWiFi:(id *)fi
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = 0;
  if ([(MIBUClient *)self _isActivated:0])
  {
    [MIBUClient connectToWiFi:];
  }

  else
  {
    connection = [(MIBUClient *)self connection];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __28__MIBUClient_connectToWiFi___block_invoke_76;
    v8[3] = &unk_2798E6798;
    v8[4] = &v9;
    v6 = [connection synchronousRemoteObjectProxyWithErrorHandler:v8];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __28__MIBUClient_connectToWiFi___block_invoke_79;
    v7[3] = &unk_2798E6798;
    v7[4] = &v9;
    [v6 connectToWiFiWithReply:v7];

    if (fi)
    {
      *fi = v10[5];
    }
  }

  _Block_object_dispose(&v9, 8);
}

void __28__MIBUClient_connectToWiFi___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __28__MIBUClient_connectToWiFi___block_invoke_76(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MIBUOnceToken != -1)
  {
    __28__MIBUClient_connectToWiFi___block_invoke_76_cold_1();
  }

  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    __32__MIBUClient_isInBoxUpdateMode___block_invoke_33_cold_2();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __28__MIBUClient_connectToWiFi___block_invoke_2()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __28__MIBUClient_connectToWiFi___block_invoke_79(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (MIBUOnceToken != -1)
  {
    __28__MIBUClient_connectToWiFi___block_invoke_79_cold_1();
  }

  v4 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[MIBUClient connectToWiFi:]_block_invoke";
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&dword_259ABF000, v4, OS_LOG_TYPE_DEFAULT, "%s:error = %{public}@", &v8, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x277D85DE8];
}

void __28__MIBUClient_connectToWiFi___block_invoke_2_80()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)stopWiFiMonitor:(id *)monitor
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = 0;
  if ([(MIBUClient *)self _isActivated:0])
  {
    [MIBUClient stopWiFiMonitor:];
  }

  else
  {
    connection = [(MIBUClient *)self connection];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __30__MIBUClient_stopWiFiMonitor___block_invoke_85;
    v8[3] = &unk_2798E6798;
    v8[4] = &v9;
    v6 = [connection synchronousRemoteObjectProxyWithErrorHandler:v8];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __30__MIBUClient_stopWiFiMonitor___block_invoke_88;
    v7[3] = &unk_2798E6798;
    v7[4] = &v9;
    [v6 stopWiFiMonitorWithReply:v7];

    if (monitor)
    {
      *monitor = v10[5];
    }
  }

  _Block_object_dispose(&v9, 8);
}

void __30__MIBUClient_stopWiFiMonitor___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __30__MIBUClient_stopWiFiMonitor___block_invoke_85(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MIBUOnceToken != -1)
  {
    __30__MIBUClient_stopWiFiMonitor___block_invoke_85_cold_1();
  }

  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    __32__MIBUClient_isInBoxUpdateMode___block_invoke_33_cold_2();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __30__MIBUClient_stopWiFiMonitor___block_invoke_2()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __30__MIBUClient_stopWiFiMonitor___block_invoke_88(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (MIBUOnceToken != -1)
  {
    __30__MIBUClient_stopWiFiMonitor___block_invoke_88_cold_1();
  }

  v4 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[MIBUClient stopWiFiMonitor:]_block_invoke";
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&dword_259ABF000, v4, OS_LOG_TYPE_DEFAULT, "%s:error = %{public}@", &v8, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x277D85DE8];
}

void __30__MIBUClient_stopWiFiMonitor___block_invoke_2_89()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)setLowPowerModeWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  if ([(MIBUClient *)self _isActivated:0])
  {
    [(MIBUClient *)&v16 setLowPowerModeWithOptions:completionCopy completion:&v17];
    v11 = v17;
  }

  else
  {
    connection = [(MIBUClient *)self connection];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __52__MIBUClient_setLowPowerModeWithOptions_completion___block_invoke_94;
    v14[3] = &unk_2798E67E8;
    v9 = completionCopy;
    v15 = v9;
    v10 = [connection synchronousRemoteObjectProxyWithErrorHandler:v14];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __52__MIBUClient_setLowPowerModeWithOptions_completion___block_invoke_97;
    v12[3] = &unk_2798E67E8;
    v13 = v9;
    [v10 setToLPMWithOptions:optionsCopy reply:v12];

    v11 = v15;
  }
}

void __52__MIBUClient_setLowPowerModeWithOptions_completion___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __52__MIBUClient_setLowPowerModeWithOptions_completion___block_invoke_94(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MIBUOnceToken != -1)
  {
    __52__MIBUClient_setLowPowerModeWithOptions_completion___block_invoke_94_cold_1();
  }

  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    __32__MIBUClient_isInBoxUpdateMode___block_invoke_33_cold_2();
  }

  (*(*(a1 + 32) + 16))();
}

void __52__MIBUClient_setLowPowerModeWithOptions_completion___block_invoke_2()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __52__MIBUClient_setLowPowerModeWithOptions_completion___block_invoke_97(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (MIBUOnceToken != -1)
  {
    __52__MIBUClient_setLowPowerModeWithOptions_completion___block_invoke_97_cold_1();
  }

  v4 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[MIBUClient setLowPowerModeWithOptions:completion:]_block_invoke";
    v8 = 2114;
    v9 = v3;
    _os_log_impl(&dword_259ABF000, v4, OS_LOG_TYPE_DEFAULT, "%s:error = %{public}@", &v6, 0x16u);
  }

  (*(*(a1 + 32) + 16))();

  v5 = *MEMORY[0x277D85DE8];
}

void __52__MIBUClient_setLowPowerModeWithOptions_completion___block_invoke_2_98()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)isLowPowerModeSetWithCompletion:(id)completion
{
  completionCopy = completion;
  connection = [(MIBUClient *)self connection];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__MIBUClient_isLowPowerModeSetWithCompletion___block_invoke;
  v8[3] = &unk_2798E67E8;
  v9 = completionCopy;
  v6 = completionCopy;
  v7 = [connection synchronousRemoteObjectProxyWithErrorHandler:v8];
  [v7 isLPMSetWithReply:v6];
}

void __46__MIBUClient_isLowPowerModeSetWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MIBUOnceToken != -1)
  {
    __46__MIBUClient_isLowPowerModeSetWithCompletion___block_invoke_cold_1();
  }

  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    __32__MIBUClient_isInBoxUpdateMode___block_invoke_33_cold_2();
  }

  (*(*(a1 + 32) + 16))();
}

void __46__MIBUClient_isLowPowerModeSetWithCompletion___block_invoke_2()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)shutdown:(id *)shutdown
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = 0;
  if ([(MIBUClient *)self _isActivated:0])
  {
    [MIBUClient shutdown:];
  }

  else
  {
    connection = [(MIBUClient *)self connection];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __23__MIBUClient_shutdown___block_invoke_105;
    v8[3] = &unk_2798E6798;
    v8[4] = &v9;
    v6 = [connection synchronousRemoteObjectProxyWithErrorHandler:v8];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __23__MIBUClient_shutdown___block_invoke_108;
    v7[3] = &unk_2798E6798;
    v7[4] = &v9;
    [v6 shutdownWithReply:v7];

    if (shutdown)
    {
      *shutdown = v10[5];
    }
  }

  _Block_object_dispose(&v9, 8);
}

void __23__MIBUClient_shutdown___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __23__MIBUClient_shutdown___block_invoke_105(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MIBUOnceToken != -1)
  {
    __23__MIBUClient_shutdown___block_invoke_105_cold_1();
  }

  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    __32__MIBUClient_isInBoxUpdateMode___block_invoke_33_cold_2();
  }

  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __23__MIBUClient_shutdown___block_invoke_2()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __23__MIBUClient_shutdown___block_invoke_108(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (MIBUOnceToken != -1)
  {
    __23__MIBUClient_shutdown___block_invoke_108_cold_1();
  }

  v4 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[MIBUClient shutdown:]_block_invoke";
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&dword_259ABF000, v4, OS_LOG_TYPE_DEFAULT, "%s:error = %{public}@", &v8, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x277D85DE8];
}

void __23__MIBUClient_shutdown___block_invoke_2_109()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (id)loopbackServerURL:(id *)l
{
  result = [MEMORY[0x277CBEBC0] URLWithString:@"http://localhost:8080"];
  if (l)
  {
    *l = 0;
  }

  return result;
}

- (void)acquireDarkWakeAssertionIfNeeded:(id *)needed
{
  v7 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    [MIBUClient acquireDarkWakeAssertionIfNeeded:];
  }

  v3 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[MIBUClient acquireDarkWakeAssertionIfNeeded:]";
    _os_log_impl(&dword_259ABF000, v3, OS_LOG_TYPE_DEFAULT, "%s acquireDarkWakeAssertionIfNeeded", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void __47__MIBUClient_acquireDarkWakeAssertionIfNeeded___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (void)_setupConnection
{
  v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.inboxupdaterd" options:0];
  [(MIBUClient *)self setConnection:v3];

  v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286ACC920];
  connection = [(MIBUClient *)self connection];
  [connection setRemoteObjectInterface:v4];

  connection2 = [(MIBUClient *)self connection];
  [connection2 resume];
}

- (BOOL)_isActivated:(id *)activated
{
  v4 = MAEGetActivationStateWithError();
  v5 = 0;
  v6 = v5;
  if (v5)
  {
    [MIBUClient _isActivated:v5];
    if (!activated)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (activated)
  {
LABEL_3:
    v7 = v6;
    *activated = v6;
  }

LABEL_4:
  v8 = [v4 isEqualToString:*MEMORY[0x277D288B0]];

  return v8;
}

void __27__MIBUClient__isActivated___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

- (BOOL)_isOnLockScreen
{
  v4 = 0;
  v2 = SBSSpringBoardBlockableServerPort();
  MEMORY[0x259CAD2C0](v2, &v4 + 1, &v4);
  return HIBYTE(v4) != 0;
}

void __45__MIBUClient_eapConfigurationWithCompletion___block_invoke_61(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v39 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_64_1);
  }

  v12 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v34 = "[MIBUClient eapConfigurationWithCompletion:]_block_invoke";
    v35 = 2114;
    v36 = v9;
    v37 = 2114;
    v38 = v10;
    _os_log_impl(&dword_259ABF000, v12, OS_LOG_TYPE_DEFAULT, "%s: tlsCertData = %{public}@; tlsKeyData = %{public}@", buf, 0x20u);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a5);
  OUTLINED_FUNCTION_4_4();
  if (v13)
  {
    v19 = 0;
  }

  else
  {
    v14 = objc_alloc_init(MIBUEAPConfiguartion);
    OUTLINED_FUNCTION_6_3();
    v16 = *(v15 + 40);
    *(v15 + 40) = v17;

    v18 = *(*(a1 + 40) + 8);
    obj = *(v18 + 40);
    v19 = [MIBUCertHelper certificatesFromData:v9 error:&obj];
    objc_storeStrong((v18 + 40), obj);
    v20 = *(*(a1 + 40) + 8);
    v22 = *(v20 + 40);
    v21 = (v20 + 40);
    if (!v22)
    {
      v31 = 0;
      v23 = [MIBUCertHelper suCertKeyFromData:v10 isSEPKey:a4 error:&v31];
      objc_storeStrong(v21, v31);
      OUTLINED_FUNCTION_4_4();
      if (!v24)
      {
        OUTLINED_FUNCTION_6_3();
        [*(v25 + 40) setTlsCertificateChain:v19];
        OUTLINED_FUNCTION_6_3();
        [*(v26 + 40) setTLSKey:v23];
        OUTLINED_FUNCTION_4_4();
      }
    }
  }

  v27 = *(a1 + 32);
  OUTLINED_FUNCTION_6_3();
  (*(v29 + 16))(v29, *(v28 + 40));

  v30 = *MEMORY[0x277D85DE8];
}

- (void)isInBoxUpdateMode:.cold.1()
{
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_44_0);
  }

  if (OUTLINED_FUNCTION_5_3())
  {
    OUTLINED_FUNCTION_2_4(&dword_259ABF000, v0, v1, "Device is not in lock screen and not in Diagnostic mode", v2, v3, v4, v5, 0);
  }
}

- (void)isInBoxUpdateMode:.cold.2()
{
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_32_1);
  }

  if (OUTLINED_FUNCTION_5_3())
  {
    OUTLINED_FUNCTION_2_4(&dword_259ABF000, v0, v1, "Device is already activated and not in InBoxUpdate mode", v2, v3, v4, v5, 0);
  }
}

void __32__MIBUClient_isInBoxUpdateMode___block_invoke_33_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_6();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)eapConfigurationWithCompletion:.cold.1()
{
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_54_1);
  }

  if (OUTLINED_FUNCTION_5_3())
  {
    OUTLINED_FUNCTION_2_4(&dword_259ABF000, v0, v1, "Device is already activated and not in InBoxUpdate mode", v2, v3, v4, v5, 0);
  }
}

- (uint64_t)terminateInBoxUpdateWithCompletion:(uint64_t)a1 .cold.1(uint64_t a1)
{
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_69);
  }

  v2 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_259ABF000, v2, OS_LOG_TYPE_DEFAULT, "Device is already activated and InBoxUpdate operatons should be terminated", v4, 2u);
  }

  return (*(a1 + 16))(a1, 0);
}

- (void)connectToWiFi:.cold.1()
{
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_75);
  }

  if (OUTLINED_FUNCTION_5_3())
  {
    OUTLINED_FUNCTION_2_4(&dword_259ABF000, v0, v1, "Device is already activated and not in InBoxUpdate mode", v2, v3, v4, v5, 0);
  }
}

- (void)stopWiFiMonitor:.cold.1()
{
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_84);
  }

  if (OUTLINED_FUNCTION_5_3())
  {
    OUTLINED_FUNCTION_2_4(&dword_259ABF000, v0, v1, "Device is already activated and not in InBoxUpdate mode", v2, v3, v4, v5, 0);
  }
}

- (uint64_t)setLowPowerModeWithOptions:(void *)a3 completion:.cold.1(void **a1, uint64_t a2, void **a3)
{
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_93);
  }

  v6 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_259ABF000, v6, OS_LOG_TYPE_DEFAULT, "Device is already activated and not in InBoxUpdate mode", &v13, 2u);
  }

  *a1 = 0;
  safeAssignError(a1, 33554433, 0, @"Device already activated", v7, v8, v9, v10, v13);
  v11 = *a1;
  *a3 = *a1;
  return (*(a2 + 16))(a2, v11);
}

- (void)shutdown:.cold.1()
{
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_104);
  }

  if (OUTLINED_FUNCTION_5_3())
  {
    OUTLINED_FUNCTION_2_4(&dword_259ABF000, v0, v1, "Device is already activated and not in InBoxUpdate mode", v2, v3, v4, v5, 0);
  }
}

- (void)_isActivated:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_179);
  }

  v2 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    v4 = 138543362;
    v5 = a1;
    _os_log_error_impl(&dword_259ABF000, v2, OS_LOG_TYPE_ERROR, "Failed to retrieve device activation state with error: %{public}@", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

@end