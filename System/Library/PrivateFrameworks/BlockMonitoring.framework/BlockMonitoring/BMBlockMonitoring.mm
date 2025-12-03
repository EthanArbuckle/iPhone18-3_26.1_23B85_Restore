@interface BMBlockMonitoring
+ (id)computePersistencePath:(int64_t *)path error:(id *)error;
+ (id)monitorForTestingWithBootArgs:(id)args;
+ (id)sanitizedSignature:(id)signature maxLength:(int64_t)length;
+ (id)sharedManager;
+ (void)readEntitlement:(__CFString *)entitlement withBlock:(id)block;
- (BOOL)_test_getPresentAlert;
- (BOOL)isProcessBeingDebugged;
- (char)initForTesting:(void *)testing bootArgs:;
- (id)_test_getAlertPath;
- (id)_test_getOSVersion;
- (id)_test_getPanicReason;
- (id)_test_getSignaturePath;
- (id)alertPath;
- (id)signaturePath;
- (uint64_t)cleanup;
- (uint64_t)lookForDeviceReadiness;
- (uint64_t)parseBootArgInt:(void *)int where:;
- (unsigned)_test_getDebuggerState;
- (unsigned)_test_getPanicDeny;
- (unsigned)_test_getResultType;
- (void)_test_allowPanic:(BOOL)panic;
- (void)_test_resetVariables;
- (void)_test_setActionDoneCallback:(id)callback;
- (void)_test_setDebuggerState:(unsigned __int8)state;
- (void)_test_setEnabled:(BOOL)enabled;
- (void)_test_setExecutionDuration:(unint64_t)duration;
- (void)_test_setLogFlushSleep:(unsigned int)sleep;
- (void)_test_setOSVersion:(id)version;
- (void)_test_setPanicPacing:(int64_t)pacing;
- (void)_test_setPanicSleep:(unsigned int)sleep;
- (void)_test_setPostPersistenceSleep:(unsigned int)sleep;
- (void)_test_setPresentAlert:(BOOL)alert;
- (void)dealloc;
- (void)executeBlockWithSignature:(const char *)signature timeout:(unint64_t)timeout options:(int)options diagnosticCollectionBlock:(id)block block:(id)a7;
- (void)logFault:(uint64_t)fault thread_id:(uint64_t)thread_id reason:;
- (void)logPanicDeny:(uint64_t)deny thread_id:(uint64_t)thread_id reason:(int)reason demoted:;
- (void)lookForDeviceReadiness;
- (void)showBootArgsAlertWithCheckingFirst:(uint64_t)first;
- (void)takeActionIfRelevant:(uint64_t)relevant thread_id:(NSObject *)thread_id timeout:(unsigned int)timeout options:(_BYTE *)options recovered:(void *)recovered diagnosticCollectionBlock:;
@end

@implementation BMBlockMonitoring

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[BMBlockMonitoring sharedManager];
  }

  v3 = sharedManager_sharedManager;

  return v3;
}

uint64_t __34__BMBlockMonitoring_sharedManager__block_invoke()
{
  sharedManager_sharedManager = [[BMBlockMonitoring alloc] initForTesting:0 bootArgs:?];

  return MEMORY[0x2821F96F8]();
}

- (char)initForTesting:(void *)testing bootArgs:
{
  v80 = *MEMORY[0x277D85DE8];
  testingCopy = testing;
  if (!self)
  {
    v11 = 0;
    goto LABEL_60;
  }

  v72.receiver = self;
  v72.super_class = BMBlockMonitoring;
  v7 = objc_msgSendSuper2(&v72, sel_init);
  v8 = v7;
  if (!v7)
  {
    v11 = 0;
    goto LABEL_60;
  }

  *(v7 + 8) = a2;
  if (a2)
  {
    objc_storeStrong(v7 + 19, testing);
  }

  *(v8 + 9) = xmmword_241BB4590;
  v9 = os_log_create("com.apple.blockmonitoring", "BMBlockMonitoring");
  v10 = v8[11];
  v8[11] = v9;

  *(v8 + 40) = 1;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __45__BMBlockMonitoring_initForTesting_bootArgs___block_invoke;
  v65[3] = &unk_278D0FD38;
  v67 = &v68;
  v11 = v8;
  v66 = v11;
  [BMBlockMonitoring readEntitlement:@"com.apple.security.exception.sysctl.read-only" withBlock:v65];
  if ((v69[3] & 1) == 0)
  {
    if (os_log_type_enabled(v8[11], OS_LOG_TYPE_ERROR))
    {
      [BMBlockMonitoring initForTesting:bootArgs:];
    }

    goto LABEL_14;
  }

  if (v8[5])
  {
    *v73 = 0;
    if ([(BMBlockMonitoring *)v11 parseBootArgInt:v73 where:?])
    {
      if (*v73)
      {
        *(v11 + 7) = *v73;
        v12 = v8[11];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(v11 + 7);
          *buf = 134217984;
          *&buf[4] = v13;
          _os_log_impl(&dword_241BAE000, v12, OS_LOG_TYPE_DEFAULT, "Detected boot-arg flags 0x%llx", buf, 0xCu);
        }
      }

      else
      {
        if (os_log_type_enabled(v8[11], OS_LOG_TYPE_ERROR))
        {
          [BMBlockMonitoring initForTesting:bootArgs:];
        }

        *(v8 + 40) = 0;
        atomic_store(0, v11 + 42);
      }
    }

    else
    {
      *(v11 + 7) = 0;
    }

    if ((v8[5] & 1) != 0 && (os_variant_has_internal_diagnostics() & 1) == 0)
    {
      v31 = *(v11 + 7);
      v32 = v8[11];
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
      if ((v31 & 0x80) == 0)
      {
        if (v33)
        {
          *buf = 0;
          _os_log_impl(&dword_241BAE000, v32, OS_LOG_TYPE_DEFAULT, "Disabling feature - customer machine", buf, 2u);
        }

LABEL_14:
        *(v8 + 40) = 0;
        goto LABEL_15;
      }

      if (v33)
      {
        *buf = 0;
        _os_log_impl(&dword_241BAE000, v32, OS_LOG_TYPE_DEFAULT, "Allowing customer machine via boot-arg", buf, 2u);
      }
    }
  }

LABEL_15:
  if (*(v8 + 40) == 1 && MGGetBoolAnswer())
  {
    v14 = v8[11];
    if ((v11[57] & 2) != 0)
    {
      if (os_log_type_enabled(v8[11], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_241BAE000, v14, OS_LOG_TYPE_DEFAULT, "Allowing virtual device via boot-arg", buf, 2u);
      }
    }

    else
    {
      if (os_log_type_enabled(v8[11], OS_LOG_TYPE_ERROR))
      {
        [BMBlockMonitoring initForTesting:bootArgs:];
      }

      *(v8 + 40) = 0;
    }
  }

  if (*(v8 + 40) != 1)
  {
    goto LABEL_53;
  }

  *buf = 0;
  if (![(BMBlockMonitoring *)v11 parseBootArgInt:buf where:?]|| (buf[1] & 4) == 0)
  {
    v15 = v8[11];
    if (v11[57])
    {
      if (os_log_type_enabled(v8[11], OS_LOG_TYPE_DEFAULT))
      {
        *v73 = 0;
        _os_log_impl(&dword_241BAE000, v15, OS_LOG_TYPE_DEFAULT, "Allowing panics without core dumps via boot-arg", v73, 2u);
      }
    }

    else
    {
      if (os_log_type_enabled(v8[11], OS_LOG_TYPE_ERROR))
      {
        [BMBlockMonitoring initForTesting:buf bootArgs:?];
      }

      v11[41] = 1;
      if (([(BMBlockMonitoring *)v11 parseBootArgInt:0 where:?]& 1) == 0)
      {
        atomic_store(1u, v11 + 42);
        *(v11 + 6) = *buf;
      }
    }
  }

  if ((v8[5] & 1) == 0)
  {
    goto LABEL_53;
  }

  *buf = 0;
  v16 = [(BMBlockMonitoring *)v11 parseBootArgInt:buf where:?];
  if (*buf == -1)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 == 1)
  {
    v18 = v8[11];
    if ((v11[57] & 4) != 0)
    {
      if (os_log_type_enabled(v8[11], OS_LOG_TYPE_DEFAULT))
      {
        *v73 = 0;
        _os_log_impl(&dword_241BAE000, v18, OS_LOG_TYPE_DEFAULT, "Ignoring watchdog disablement via boot-arg", v73, 2u);
      }
    }

    else
    {
      if (os_log_type_enabled(v8[11], OS_LOG_TYPE_ERROR))
      {
        [BMBlockMonitoring initForTesting:buf bootArgs:?];
      }

      *(v8 + 40) = 0;
      atomic_store(0, v11 + 42);
    }
  }

  if (v8[5])
  {
    v19 = objc_autoreleasePoolPush();
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    if (([bundleIdentifier isEqualToString:@"com.apple.springboard"] & 1) == 0 && (objc_msgSend(bundleIdentifier, "isEqualToString:", @"com.apple.backboardd") & 1) == 0 && (v8[1] & 1) == 0)
    {
      v22 = v8[11];
      if ((v11[57] & 8) != 0)
      {
        if (os_log_type_enabled(v8[11], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_241BAE000, v22, OS_LOG_TYPE_DEFAULT, "Allowing BlockMonitoring in any process via boot-arg", buf, 2u);
        }
      }

      else
      {
        if (os_log_type_enabled(v8[11], OS_LOG_TYPE_ERROR))
        {
          [BMBlockMonitoring initForTesting:bootArgs:];
        }

        *(v8 + 40) = 0;
        atomic_store(0, v11 + 42);
      }
    }

    objc_autoreleasePoolPop(v19);
    v34 = *(v8 + 40);
    buf[0] = 0;
    if (v34)
    {
      *v73 = 20;
      if (sysctlbyname("kern.osversion", buf, v73, 0, 0) < 0)
      {
        v37 = *(v11 + 7);
        v38 = v8[11];
        v39 = v38;
        if ((v37 & 8) != 0)
        {
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            v41 = *__error();
            *v76 = 67109120;
            v77 = v41;
            _os_log_impl(&dword_241BAE000, v39, OS_LOG_TYPE_DEFAULT, "Ignoring failure to gather os version: %{errno}d - ignoring via boot-arg", v76, 8u);
          }
        }

        else
        {
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v40 = __error();
            [(BMBlockMonitoring *)v40 initForTesting:v76 bootArgs:v39];
          }

          *(v8 + 40) = 0;
          atomic_store(0, v11 + 42);
        }
      }

      else
      {
        v79 = 0;
        v35 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:buf encoding:4];
        v36 = *(v11 + 8);
        *(v11 + 8) = v35;
      }

      if (v8[5])
      {
        v63 = 0;
        v64 = -1;
        v42 = [BMBlockMonitoring computePersistencePath:&v64 error:&v63];
        v43 = v63;
        if (v42)
        {
          objc_storeStrong(v11 + 3, v42);
          *(v11 + 4) = v64;
        }

        else
        {
          if (v64 != -1)
          {
            sandbox_extension_release();
          }

          v44 = v8[11];
          if ((v11[56] & 0x40) != 0)
          {
            if (os_log_type_enabled(v8[11], OS_LOG_TYPE_DEFAULT))
            {
              *v73 = 138412290;
              *&v73[4] = v43;
              _os_log_impl(&dword_241BAE000, v44, OS_LOG_TYPE_DEFAULT, "Container not found: %@ - ignoring via boot-arg", v73, 0xCu);
            }
          }

          else
          {
            if (os_log_type_enabled(v8[11], OS_LOG_TYPE_ERROR))
            {
              [BMBlockMonitoring initForTesting:bootArgs:];
            }

            *(v8 + 40) = 0;
            atomic_store(0, v11 + 42);
          }
        }

        if (v8[5])
        {
          v45 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
          v46 = dispatch_queue_create("com.apple.blockmonitoring.BMBlockMonitoring", v45);
          v47 = *(v11 + 2);
          *(v11 + 2) = v46;

          v48 = *(v11 + 2);
          if (!v48)
          {
            _os_assert_log();
            v56 = _os_crash();
            [BMBlockMonitoring initForTesting:v56 bootArgs:?];
          }

          if (v8[5])
          {
            v61[0] = MEMORY[0x277D85DD0];
            v61[1] = 3221225472;
            v61[2] = __45__BMBlockMonitoring_initForTesting_bootArgs___block_invoke_39;
            v61[3] = &unk_278D0FD60;
            v49 = v11;
            v62 = v49;
            [BMBlockMonitoring readEntitlement:@"com.apple.private.allow-ext_paniclog" withBlock:v61];
            if (v49[96] == 1)
            {
              v50 = v8[11];
              if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
              {
                *v73 = 0;
                _os_log_impl(&dword_241BAE000, v50, OS_LOG_TYPE_DEFAULT, "Process is properly entitled for panic with data", v73, 2u);
              }

              getpid();
              v51 = *MEMORY[0x277D861D8];
              v49[96] = sandbox_check() == 0;
            }

            v52 = v8[11];
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              if (v49[96])
              {
                v53 = " ";
              }

              else
              {
                v53 = " not ";
              }

              *v73 = 136315138;
              *&v73[4] = v53;
              _os_log_impl(&dword_241BAE000, v52, OS_LOG_TYPE_DEFAULT, "BM will%sbe using panic_with_data", v73, 0xCu);
            }

            if (v8[5])
            {
              v59[0] = MEMORY[0x277D85DD0];
              v59[1] = 3221225472;
              v59[2] = __45__BMBlockMonitoring_initForTesting_bootArgs___block_invoke_46;
              v59[3] = &unk_278D0FD60;
              v54 = v49;
              v60 = v54;
              [BMBlockMonitoring readEntitlement:@"com.apple.private.logging.flush-buffers" withBlock:v59];

              v55 = *(v8 + 40);
              atomic_store(0, v54 + 25);
              if (v55)
              {
                [(BMBlockMonitoring *)v54 lookForDeviceReadiness];
              }

              goto LABEL_55;
            }
          }
        }
      }
    }
  }

  else
  {
LABEL_53:
    buf[0] = 0;
  }

  atomic_store(0, v11 + 25);
LABEL_55:
  v23 = atomic_load(v11 + 42);
  if (v23)
  {
    v24 = *(v11 + 2);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__BMBlockMonitoring_initForTesting_bootArgs___block_invoke_47;
    block[3] = &unk_278D0FD88;
    v58 = v11;
    dispatch_async(v24, block);
  }

  v25 = v8[11];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *(v8 + 40);
    v27 = v11[41];
    v28 = atomic_load(v11 + 42);
    *v73 = 67109632;
    *&v73[4] = v26;
    *&v73[8] = 1024;
    *&v73[10] = v27;
    v74 = 1024;
    v75 = v28 & 1;
    _os_log_impl(&dword_241BAE000, v25, OS_LOG_TYPE_DEFAULT, "BM state: %d (%d) - %d", v73, 0x14u);
  }

  _Block_object_dispose(&v68, 8);
LABEL_60:

  v29 = *MEMORY[0x277D85DE8];
  return v11;
}

void __45__BMBlockMonitoring_initForTesting_bootArgs___block_invoke(uint64_t a1, void *cf, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = *(*(a1 + 32) + 88);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = a3;
      _os_log_impl(&dword_241BAE000, v5, OS_LOG_TYPE_DEFAULT, "Failed gathering entitlement for boot-args reading: %@", &v9, 0xCu);
    }
  }

  else if (cf)
  {
    v7 = CFGetTypeID(cf);
    if (v7 == CFArrayGetTypeID())
    {
      *(*(*(a1 + 40) + 8) + 24) = [cf containsObject:@"kern.bootargs"];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (uint64_t)parseBootArgInt:(void *)int where:
{
  v5 = a2;
  if (self)
  {
    if (*(self + 8) == 1 && (v6 = *(self + 152)) != 0 && ([v6 objectForKey:v5], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
    {
      if (int)
      {
        v8 = [*(self + 152) objectForKey:v5];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [BMBlockMonitoring parseBootArgInt:where:];
        }

        *int = [v8 longLongValue];
      }

      v9 = 1;
    }

    else
    {
      [v5 UTF8String];
      v9 = os_parse_boot_arg_int();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __45__BMBlockMonitoring_initForTesting_bootArgs___block_invoke_39(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = *(*(a1 + 32) + 88);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = a3;
      _os_log_impl(&dword_241BAE000, v5, OS_LOG_TYPE_DEFAULT, "Failed gathering entitlement for panic_with_data: %@", &v9, 0xCu);
    }
  }

  else if (cf)
  {
    v7 = CFGetTypeID(cf);
    if (v7 == CFBooleanGetTypeID())
    {
      *(*(a1 + 32) + 96) = CFBooleanGetValue(cf) != 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __45__BMBlockMonitoring_initForTesting_bootArgs___block_invoke_46(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  if (a3)
  {
    if (os_log_type_enabled(*(*(a1 + 32) + 88), OS_LOG_TYPE_ERROR))
    {
      __45__BMBlockMonitoring_initForTesting_bootArgs___block_invoke_46_cold_1();
    }
  }

  else if (cf && (v5 = CFGetTypeID(cf), v5 == CFBooleanGetTypeID()) && CFBooleanGetValue(cf))
  {
    *(*(a1 + 32) + 105) = 1;
    if (os_log_type_enabled(*(*(a1 + 32) + 88), OS_LOG_TYPE_DEBUG))
    {
      __45__BMBlockMonitoring_initForTesting_bootArgs___block_invoke_46_cold_2();
    }
  }

  else if (os_log_type_enabled(*(*(a1 + 32) + 88), OS_LOG_TYPE_ERROR))
  {
    __45__BMBlockMonitoring_initForTesting_bootArgs___block_invoke_46_cold_3();
  }
}

- (void)lookForDeviceReadiness
{
  v7 = *self;
  uTF8String = [v7 UTF8String];
  v9 = *a2;
  *a3 = MEMORY[0x277D85DD0];
  a3[1] = 3221225472;
  a3[2] = __43__BMBlockMonitoring_lookForDeviceReadiness__block_invoke_54;
  a3[3] = &unk_278D0FDB0;
  a3[4] = a4;
  notify_register_dispatch(uTF8String, &lookForDeviceReadiness_buddyToken, v9, a3);
}

void __43__BMBlockMonitoring_lookForDeviceReadiness__block_invoke(uint64_t a1, int token)
{
  v10 = *MEMORY[0x277D85DE8];
  notify_cancel(token);
  v3 = atomic_fetch_or_explicit((*(a1 + 32) + 100), 1u, memory_order_relaxed);
  v4 = *(*(a1 + 32) + 88);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "Device has been unlocked";
    v8 = 1024;
    v9 = v3 | 1;
    _os_log_impl(&dword_241BAE000, v4, OS_LOG_TYPE_DEFAULT, "%s (state: %d)", &v6, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __43__BMBlockMonitoring_lookForDeviceReadiness__block_invoke_54(uint64_t a1, int token)
{
  v10 = *MEMORY[0x277D85DE8];
  notify_cancel(token);
  v3 = atomic_fetch_or_explicit((*(a1 + 32) + 100), 2u, memory_order_relaxed);
  v4 = *(*(a1 + 32) + 88);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "Device has completed setup";
    v8 = 1024;
    v9 = v3 | 2;
    _os_log_impl(&dword_241BAE000, v4, OS_LOG_TYPE_DEFAULT, "%s (state: %d)", &v6, 0x12u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __43__BMBlockMonitoring_lookForDeviceReadiness__block_invoke_56(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (MKBGetDeviceLockState() == 3 || MKBDeviceUnlockedSinceBoot())
  {
    v2 = atomic_fetch_or_explicit((*(a1 + 32) + 100), 1u, memory_order_relaxed);
    v3 = *(*(a1 + 32) + 88);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "Device has been once unlocked";
      *&buf[12] = 1024;
      *&buf[14] = v2 | 1;
      _os_log_impl(&dword_241BAE000, v3, OS_LOG_TYPE_DEFAULT, "%s (state: %d)", buf, 0x12u);
    }

    if (lookForDeviceReadiness_firstUnlockToken != -1)
    {
      notify_cancel(lookForDeviceReadiness_firstUnlockToken);
    }
  }

  result = SetupAssistantLibraryCore();
  if (result)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v5 = getBYSetupAssistantNeedsToRunSymbolLoc_ptr;
    v15 = getBYSetupAssistantNeedsToRunSymbolLoc_ptr;
    if (!getBYSetupAssistantNeedsToRunSymbolLoc_ptr)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getBYSetupAssistantNeedsToRunSymbolLoc_block_invoke;
      v17 = &unk_278D0FE80;
      v18 = &v12;
      v6 = SetupAssistantLibrary();
      v7 = dlsym(v6, "BYSetupAssistantNeedsToRun");
      *(v18[1] + 24) = v7;
      getBYSetupAssistantNeedsToRunSymbolLoc_ptr = *(v18[1] + 24);
      v5 = v13[3];
    }

    _Block_object_dispose(&v12, 8);
    if (!v5)
    {
      [BMBlockMonitoring lookForDeviceReadiness];
      __break(1u);
    }

    result = v5(v8);
    if ((result & 1) == 0)
    {
      v9 = atomic_fetch_or_explicit((*(a1 + 32) + 100), 2u, memory_order_relaxed);
      v10 = *(*(a1 + 32) + 88);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "Device does not require setup";
        *&buf[12] = 1024;
        *&buf[14] = v9 | 2;
        _os_log_impl(&dword_241BAE000, v10, OS_LOG_TYPE_DEFAULT, "%s (state: %d)", buf, 0x12u);
      }

      result = lookForDeviceReadiness_buddyToken;
      if (lookForDeviceReadiness_buddyToken != -1)
      {
        result = notify_cancel(lookForDeviceReadiness_buddyToken);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

intptr_t __104__BMBlockMonitoring_takeActionIfRelevant_thread_id_timeout_options_recovered_diagnosticCollectionBlock___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  OSLogFlushBuffers();
  sync();
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1 && *(v2 + 144))
  {
    v3 = *(v2 + 88);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 64);
      v5 = *(a1 + 56);
      v6 = *(a1 + 40);
      v7 = *(*(a1 + 32) + 144);
      v10 = 138413058;
      v11 = v6;
      v12 = 1024;
      v13 = v4;
      v14 = 2048;
      v15 = v5;
      v16 = 1024;
      v17 = v7;
      _os_log_impl(&dword_241BAE000, v3, OS_LOG_TYPE_INFO, "%@ (%u:%llu) sleeping for log flush recovery testing for %us", &v10, 0x22u);
    }

    sleep(*(*(a1 + 32) + 144));
  }

  result = dispatch_semaphore_signal(*(a1 + 48));
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)executeBlockWithSignature:(const char *)signature timeout:(unint64_t)timeout options:(int)options diagnosticCollectionBlock:(id)block block:(id)a7
{
  blockCopy = block;
  v13 = a7;
  if (!signature)
  {
    [BMBlockMonitoring parseBootArgInt:where:];
  }

  v14 = v13;
  if (!v13)
  {
    [BMBlockMonitoring parseBootArgInt:where:];
  }

  queue = self->_queue;
  if (queue && self->_enabled && self->_deviceState == 3 && (options || !self->_coreDumpsDisabled || self->_presentAlert))
  {
    v16 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);
    v17 = dispatch_time(0, 1000000000 * timeout);
    dispatch_source_set_timer(v16, v17, 0xFFFFFFFFFFFFFFFFLL, 1000000000 * timeout / 0xA);
    v18 = strdup(signature);
    v29 = 0;
    v19 = pthread_self();
    pthread_threadid_np(v19, &v29);
    v20 = malloc_type_malloc(1uLL, 0x100004077774924uLL);
    atomic_store(0, v20);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __95__BMBlockMonitoring_executeBlockWithSignature_timeout_options_diagnosticCollectionBlock_block___block_invoke;
    handler[3] = &unk_278D0FE00;
    handler[4] = self;
    v24 = v18;
    v25 = v29;
    timeoutCopy = timeout;
    v27 = v20;
    optionsCopy = options;
    v23 = blockCopy;
    dispatch_source_set_event_handler(v16, handler);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __95__BMBlockMonitoring_executeBlockWithSignature_timeout_options_diagnosticCollectionBlock_block___block_invoke_2;
    v21[3] = &__block_descriptor_48_e5_v8__0l;
    v21[4] = v18;
    v21[5] = v20;
    dispatch_source_set_cancel_handler(v16, v21);
    dispatch_activate(v16);
    v14[2](v14);
    *v20 = 1;
    dispatch_source_cancel(v16);
  }

  else
  {
    v13[2](v13);
  }
}

void __95__BMBlockMonitoring_executeBlockWithSignature_timeout_options_diagnosticCollectionBlock_block___block_invoke_2(uint64_t a1)
{
  free(*(a1 + 32));
  v2 = *(a1 + 40);

  free(v2);
}

+ (id)monitorForTestingWithBootArgs:(id)args
{
  argsCopy = args;
  v4 = [[BMBlockMonitoring alloc] initForTesting:argsCopy bootArgs:?];

  return v4;
}

- (void)_test_resetVariables
{
  if (self->_testing)
  {
    self->_test_panicDeny = 0;
    test_panicReason = self->_test_panicReason;
    self->_test_panicReason = 0;

    self->_test_resultType = 0;
    self->_test_alertShown = 0;
    test_actionDoneCallback = self->_test_actionDoneCallback;
    self->_test_actionDoneCallback = 0;
  }
}

- (void)_test_setExecutionDuration:(unint64_t)duration
{
  if (self->_testing)
  {
    self->_executionDuration = duration;
  }
}

- (void)_test_setPanicPacing:(int64_t)pacing
{
  if (self->_testing)
  {
    self->_panicPacing = pacing;
  }
}

- (void)_test_setOSVersion:(id)version
{
  versionCopy = version;
  if (self->_testing)
  {
    v6 = versionCopy;
    objc_storeStrong(&self->_osVersion, version);
    versionCopy = v6;
  }
}

- (void)_test_allowPanic:(BOOL)panic
{
  if (self->_testing)
  {
    self->_test_allowPanic = panic;
  }
}

- (void)_test_setEnabled:(BOOL)enabled
{
  if (self->_testing)
  {
    self->_enabled = enabled;
  }
}

- (void)_test_setPresentAlert:(BOOL)alert
{
  if (self->_testing)
  {
    atomic_store(alert, &self->_presentAlert);
  }
}

- (void)_test_setPanicSleep:(unsigned int)sleep
{
  if (self->_testing)
  {
    self->_test_panicSleep = sleep;
  }
}

- (void)_test_setLogFlushSleep:(unsigned int)sleep
{
  if (self->_testing)
  {
    self->_test_logFlushSleep = sleep;
  }
}

- (void)_test_setPostPersistenceSleep:(unsigned int)sleep
{
  if (self->_testing)
  {
    self->_test_postPersistenceSleep = sleep;
  }
}

- (void)_test_setDebuggerState:(unsigned __int8)state
{
  if (self->_testing)
  {
    self->_test_debuggerState = state;
  }
}

- (id)_test_getSignaturePath
{
  if (self->_testing)
  {
    signaturePath = [(BMBlockMonitoring *)self signaturePath];
  }

  else
  {
    signaturePath = 0;
  }

  return signaturePath;
}

- (id)_test_getAlertPath
{
  if (self->_testing)
  {
    alertPath = [(BMBlockMonitoring *)self alertPath];
  }

  else
  {
    alertPath = 0;
  }

  return alertPath;
}

- (id)_test_getPanicReason
{
  if (self->_testing)
  {
    v3 = self->_test_panicReason;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unsigned)_test_getPanicDeny
{
  if (self->_testing)
  {
    return self->_test_panicDeny;
  }

  else
  {
    return 0;
  }
}

- (unsigned)_test_getResultType
{
  if (self->_testing)
  {
    return self->_test_resultType;
  }

  else
  {
    return 0;
  }
}

- (id)_test_getOSVersion
{
  if (self->_testing)
  {
    v3 = self->_osVersion;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_test_getPresentAlert
{
  if (self->_testing)
  {
    v2 = atomic_load(&self->_presentAlert);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (unsigned)_test_getDebuggerState
{
  if (self->_testing)
  {
    return self->_test_debuggerState;
  }

  else
  {
    return 0;
  }
}

- (void)_test_setActionDoneCallback:(id)callback
{
  v4 = MEMORY[0x245CF9470](callback, a2);
  test_actionDoneCallback = self->_test_actionDoneCallback;
  self->_test_actionDoneCallback = v4;

  MEMORY[0x2821F96F8]();
}

+ (id)computePersistencePath:(int64_t *)path error:(id *)error
{
  *path = -1;
  if (container_query_create())
  {
    container_query_set_class();
    v6 = xpc_string_create("group.com.apple.BlockMonitoring");
    container_query_set_group_identifiers();

    container_query_operation_set_flags();
    v7 = *MEMORY[0x277D85ED0];
    container_query_set_persona_unique_string();
    if (!container_query_get_single_result())
    {
      if (error)
      {
        container_query_get_last_error();
        v11 = container_error_copy_unlocalized_description();
        if (!v11)
        {
          v10 = 0;
          *error = @"Unable to get sandbox result, and unable to get error string";
          goto LABEL_16;
        }

        v12 = v11;
        *error = [MEMORY[0x277CCACA8] stringWithCString:v11 encoding:4];
        free(v12);
      }

      v10 = 0;
LABEL_16:
      container_query_free();
      goto LABEL_17;
    }

    v8 = container_copy_sandbox_token();
    if (v8)
    {
      v9 = sandbox_extension_consume();
      if (v9 < 0)
      {
        if (error)
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to get sandbox extension: %d (handle: %lld)", *__error(), v9];
          *error = v10 = 0;
        }

        else
        {
          v10 = 0;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v9 = -1;
    }

    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:container_get_path() encoding:4];
    *path = v9;
LABEL_15:
    free(v8);
    goto LABEL_16;
  }

  v10 = 0;
  if (error)
  {
    *error = @"Unable to create sandbox container query";
  }

LABEL_17:

  return v10;
}

+ (void)readEntitlement:(__CFString *)entitlement withBlock:(id)block
{
  blockCopy = block;
  v6 = SecTaskCreateFromSelf(0);
  if (v6)
  {
    v7 = v6;
    error = 0;
    v8 = SecTaskCopyValueForEntitlement(v6, entitlement, &error);
    blockCopy[2](blockCopy, v8, error);
    if (error)
    {
      CFRelease(error);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    CFRelease(v7);
  }

  else
  {
    blockCopy[2](blockCopy, 0, 0);
  }
}

+ (id)sanitizedSignature:(id)signature maxLength:(int64_t)length
{
  v5 = [signature stringByReplacingOccurrencesOfString:@" " withString:@"_"];
  if (sanitizedSignature_maxLength__onceToken != -1)
  {
    +[BMBlockMonitoring(Testing) sanitizedSignature:maxLength:];
  }

  v6 = [v5 componentsSeparatedByCharactersInSet:sanitizedSignature_maxLength__removedCharacters];
  v7 = [v6 componentsJoinedByString:&stru_2853CE600];

  if (length <= 0)
  {
    v10 = v7;
  }

  else
  {
    v8 = [v7 length];
    if (v8 >= length)
    {
      lengthCopy = length;
    }

    else
    {
      lengthCopy = v8;
    }

    v10 = [v7 substringToIndex:lengthCopy];
  }

  v11 = v10;

  return v11;
}

void __59__BMBlockMonitoring_Testing__sanitizedSignature_maxLength___block_invoke()
{
  v2 = [MEMORY[0x277CCAB50] alphanumericCharacterSet];
  [v2 addCharactersInString:@"_"];
  v0 = [v2 invertedSet];
  v1 = sanitizedSignature_maxLength__removedCharacters;
  sanitizedSignature_maxLength__removedCharacters = v0;
}

- (BOOL)isProcessBeingDebugged
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  memset(v7, 0, sizeof(v7));
  v3 = getpid();
  if (proc_pidinfo(v3, 13, 0, v7, 64) && (v8 & 2) != 0)
  {
    v4 = self->_test_debuggerState == 0 || !self->_testing || self->_test_debuggerState == 2;
  }

  else
  {
    v4 = self->_test_debuggerState == 2 && self->_testing;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)showBootArgsAlertWithCheckingFirst:(uint64_t)first
{
  v18[4] = *MEMORY[0x277D85DE8];
  if (first)
  {
    v4 = objc_autoreleasePoolPush();
    alertPath = [(BMBlockMonitoring *)first alertPath];
    v6 = alertPath;
    if (!a2 || !access([alertPath fileSystemRepresentation], 0))
    {
      if (*(first + 8))
      {
        *(first + 137) = 1;
      }

      else
      {
        error = 0;
        v7 = *MEMORY[0x277CBF198];
        v17[0] = *MEMORY[0x277CBF188];
        v17[1] = v7;
        v18[0] = @"Missing boot-arg";
        v18[1] = @"Your device encountered an unexpectedly long stall that requires a core dump to diagnose. Please add bit 0x400 to the debug boot-arg to enable core dumps, then reboot your device and reproduce your latest actions. A core dump will be gathered automatically at the right time. Do you want to open Livability app to update the boot-arg?";
        v8 = *MEMORY[0x277CBF1C0];
        v17[2] = *MEMORY[0x277CBF1E8];
        v17[3] = v8;
        v18[2] = @"Update";
        v18[3] = @"Dismiss";
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];
        v10 = CFUserNotificationCreate(*MEMORY[0x277CBECE8], 0.0, 2uLL, &error, v9);
        responseFlags = 0;
        CFUserNotificationReceiveResponse(v10, 0.0, &responseFlags);
        if (!responseFlags)
        {
          0x400 = [MEMORY[0x277CCACA8] stringWithFormat:@"livability://boot-args/set?debug=0x%llx", *(first + 48) | 0x400];
          v12 = [MEMORY[0x277CBEBC0] URLWithString:0x400];
          defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
          [defaultWorkspace openURL:v12 withOptions:0];
        }

        CFRelease(v10);
      }

      unlink([v6 fileSystemRepresentation]);
    }

    objc_autoreleasePoolPop(v4);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  if (self && self->_sandboxHandle != -1)
  {
    sandbox_extension_release();
    self->_sandboxHandle = -1;
  }

  v3.receiver = self;
  v3.super_class = BMBlockMonitoring;
  [(BMBlockMonitoring *)&v3 dealloc];
}

- (uint64_t)cleanup
{
  if (result)
  {
    v1 = result;
    result = *(result + 32);
    if (result != -1)
    {
      result = sandbox_extension_release();
      *(v1 + 32) = -1;
    }
  }

  return result;
}

- (id)signaturePath
{
  if (self)
  {
    v1 = *(self + 24);
    if (v1)
    {
      v2 = +[BMBlockMonitoring signatureFileName];
      v1 = [v1 stringByAppendingPathComponent:v2];
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

- (id)alertPath
{
  if (self)
  {
    v1 = *(self + 24);
    if (v1)
    {
      v2 = +[BMBlockMonitoring alertFileName];
      v1 = [v1 stringByAppendingPathComponent:v2];
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

- (void)logPanicDeny:(uint64_t)deny thread_id:(uint64_t)thread_id reason:(int)reason demoted:
{
  v28 = *MEMORY[0x277D85DE8];
  v9 = a2;
  if (self)
  {
    OUTLINED_FUNCTION_21();
    if (v10)
    {
      if ((reason & 1) == 0)
      {
        *(self + 120) = thread_id;
        v11 = *(self + 128);
        if (v11)
        {
          (*(v11 + 16))(v11, v9, deny, thread_id, 0);
        }
      }
    }

    v12 = *(self + 88);
    if (os_signpost_enabled(v12))
    {
      v13 = [BMBlockMonitoring sanitizedSignature:v9 maxLength:255];

      if (os_signpost_enabled(*(self + 88)))
      {
        v22 = 138543874;
        v23 = v13;
        v24 = 1026;
        thread_idCopy = thread_id;
        v26 = 1026;
        reasonCopy = reason;
        OUTLINED_FUNCTION_14();
        _os_signpost_emit_with_name_impl(v14, v15, v16, v17, v18, v19, v20, 0x18u);
      }

      v9 = v13;
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v22) = 0;
      _os_log_error_impl(&dword_241BAE000, v12, OS_LOG_TYPE_ERROR, "signposts not enabled", &v22, 2u);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)logFault:(uint64_t)fault thread_id:(uint64_t)thread_id reason:
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (self)
  {
    v8 = *(self + 104);
    v9 = *(self + 88);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v21 = 136315138;
      thread_idCopy = thread_id;
      _os_log_fault_impl(&dword_241BAE000, v9, OS_LOG_TYPE_FAULT, "%s", &v21, 0xCu);
    }

    *(self + 104) = 1;
    if (*(self + 8) == 1)
    {
      *(self + 121) = 3;
      *(self + 160) = (v8 & 1) == 0;
      v10 = *(self + 128);
      if (v10)
      {
        (*(v10 + 16))(v10, v7, fault, 0, 3);
      }
    }

    v11 = *(self + 88);
    if (os_signpost_enabled(v11))
    {
      v12 = [BMBlockMonitoring sanitizedSignature:v7 maxLength:255];

      if (os_signpost_enabled(*(self + 88)))
      {
        v21 = 138543618;
        thread_idCopy = v12;
        v23 = 1026;
        v24 = (v8 & 1) == 0;
        OUTLINED_FUNCTION_14();
        _os_signpost_emit_with_name_impl(v13, v14, v15, v16, v17, v18, v19, 0x12u);
      }

      v7 = v12;
    }

    else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v21) = 0;
      _os_log_error_impl(&dword_241BAE000, v11, OS_LOG_TYPE_ERROR, "signposts not enabled", &v21, 2u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)takeActionIfRelevant:(uint64_t)relevant thread_id:(NSObject *)thread_id timeout:(unsigned int)timeout options:(_BYTE *)options recovered:(void *)recovered diagnosticCollectionBlock:
{
  v338[1] = *MEMORY[0x277D85DE8];
  v13 = a2;
  recoveredCopy = recovered;
  if (!self)
  {
    goto LABEL_53;
  }

  if ([self isProcessBeingDebugged])
  {
    if ((*(self + 56) & 2) == 0)
    {
      v65 = OUTLINED_FUNCTION_6();
      v68 = 11;
LABEL_89:
      [(BMBlockMonitoring *)v65 logPanicDeny:v66 thread_id:v67 reason:v68 demoted:0];
      goto LABEL_53;
    }

    v15 = *(self + 88);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *__str = 0;
      _os_log_debug_impl(&dword_241BAE000, v15, OS_LOG_TYPE_DEBUG, "Allowing reporting process being debugged via boot-arg", __str, 2u);
    }
  }

  v16 = &loc_241BB4000;
  if (timeout <= 1 && *(self + 41) == 1)
  {
    v17 = 1;
    atomic_compare_exchange_strong_explicit((self + 42), &v17, 0, memory_order_relaxed, memory_order_relaxed);
    if (v17 != 1)
    {
      if (timeout)
      {
        goto LABEL_11;
      }

LABEL_88:
      v65 = OUTLINED_FUNCTION_6();
      v68 = 7;
      goto LABEL_89;
    }

    relevantCopy = relevant;
    v102 = *(self + 88);
    if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_16();
      _os_log_error_impl(v103, v104, v105, v106, v107, 0xCu);
    }

    v108 = objc_autoreleasePoolPush();
    alertPath = [(BMBlockMonitoring *)self alertPath];
    v110 = open([alertPath fileSystemRepresentation], 770, 384);
    if ((v110 & 0x80000000) == 0)
    {
      v111 = v110;
      fcntl(v110, 51);
      close(v111);
    }

    [(BMBlockMonitoring *)self showBootArgsAlertWithCheckingFirst:?];

    objc_autoreleasePoolPop(v108);
    relevant = relevantCopy;
    if (!timeout)
    {
      goto LABEL_88;
    }
  }

LABEL_11:
  v18 = getpid();
  v19 = *(self + 88);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    *&v333[6] = relevant;
    v334 = v44;
    thread_idCopy = thread_id;
    _os_log_error_impl(&dword_241BAE000, v19, OS_LOG_TYPE_ERROR, "%@ (%u:%llu) timed out after %llu seconds", __str, 0x26u);
  }

  OUTLINED_FUNCTION_21();
  if (v20 && *(self + 140))
  {
    thread_id = *(self + 88);
    if (os_log_type_enabled(thread_id, OS_LOG_TYPE_INFO))
    {
      v21 = *(self + 140);
      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_17();
      *&v333[6] = relevant;
      v334 = v22;
      LODWORD(thread_idCopy) = v23;
      OUTLINED_FUNCTION_12();
      _os_log_impl(v24, v25, OS_LOG_TYPE_INFO, v26, v27, 0x22u);
    }

    sleep(*(self + 140));
  }

  v28 = 0x277CCA000uLL;
  if (timeout != 2)
  {
    if (*(self + 41) == 1)
    {
      thread_id = *(self + 88);
      if (os_log_type_enabled(thread_id, OS_LOG_TYPE_INFO))
      {
        *__str = 0;
        OUTLINED_FUNCTION_12();
        _os_log_impl(v45, v46, OS_LOG_TYPE_INFO, v47, v48, 2u);
      }

      v49 = OUTLINED_FUNCTION_6();
      [(BMBlockMonitoring *)v49 logPanicDeny:v50 thread_id:v51 reason:7 demoted:1];
      goto LABEL_20;
    }

    v69 = objc_autoreleasePoolPush();
    signaturePath = [(BMBlockMonitoring *)self signaturePath];
    v292 = 384;
    v70 = open([signaturePath fileSystemRepresentation], 770);
    context = v69;
    if (v70 < 0)
    {
      v112 = *(self + 56);
      v113 = OUTLINED_FUNCTION_19();
      if ((v112 & 0x40) != 0)
      {
        v114 = signaturePath;
        if (!v113)
        {
LABEL_97:

          objc_autoreleasePoolPop(context);
          goto LABEL_202;
        }

        v115 = v69;
        v116 = *__error();
        *__str = 138412546;
        v331 = signaturePath;
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_12();
        v121 = 18;
LABEL_110:
        _os_log_error_impl(v117, v118, OS_LOG_TYPE_ERROR, v119, v120, v121);

        goto LABEL_97;
      }

      v125 = signaturePath;
      if (v113)
      {
        v126 = v69;
        v127 = *__error();
        *__str = 138412546;
        v331 = signaturePath;
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_16();
        _os_log_error_impl(v128, v129, v130, v131, v132, 0x12u);
      }

      v133 = OUTLINED_FUNCTION_6();
      [(BMBlockMonitoring *)v133 logPanicDeny:v134 thread_id:v135 reason:10 demoted:0];
    }

    else
    {
      HIDWORD(v313) = v70;
      v71 = malloc_type_calloc(1uLL, 0x1FA0uLL, 0xB740846AuLL);
      if (v71)
      {
        v72 = v71;
        v73 = read(SHIDWORD(v313), v71, 0x1FA0uLL);
        relevantCopy2 = relevant;
        v309 = v72;
        if (v73 < 1)
        {
          OUTLINED_FUNCTION_15();
          v28 = 0x277CCA000;
        }

        else
        {
          v69 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v72 length:v73];
          v74 = [MEMORY[0x277CCAC58] propertyListWithData:v69 options:0 format:0 error:0];
          v303 = v74;
          v306 = v69;
          if (v74)
          {
            v75 = v74;
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            v77 = v75;
            v28 = 0x277CCA000uLL;
            if (isKindOfClass)
            {
              v301 = v77;
              v299 = [v301 objectForKeyedSubscript:@"last_panic"];
              if (v299 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v78 = v299;
                [v78 timeIntervalSinceNow];
                if (v79 <= -*(self + 80))
                {
                  v69 = 0;
                  v16 = v78;
                  v147 = 1;
                }

                else
                {
                  v80 = *(self + 56);
                  v311 = (v80 >> 3) & 1;
                  v81 = *(self + 88);
                  if ((v80 & 8) != 0)
                  {
                    v298 = v81;
                    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
                    {
                      *__str = 138412290;
                      v16 = v78;
                      v331 = v78;
                      v82 = v298;
                      _os_log_debug_impl(&dword_241BAE000, v298, OS_LOG_TYPE_DEBUG, "last panic was within 24 hours at: %@ - ignoring via boot-arg", __str, 0xCu);
                      v69 = 0;
                    }

                    else
                    {
                      v69 = 0;
                      v16 = v78;
                      v82 = v298;
                    }
                  }

                  else
                  {
                    v69 = 1;
                    v148 = v81;
                    v149 = os_log_type_enabled(v81, OS_LOG_TYPE_INFO);
                    v150 = v78;
                    v82 = v148;
                    v16 = v150;
                    if (v149)
                    {
                      OUTLINED_FUNCTION_7();
                      v332 = 2112;
                      *v333 = v16;
                      OUTLINED_FUNCTION_9();
                      _os_log_impl(v151, v152, OS_LOG_TYPE_INFO, v153, v154, 0x16u);
                    }
                  }

                  v147 = v311;
                }

                LODWORD(v16) = v147;
              }

              else
              {
                v69 = 0;
                LODWORD(v16) = 1;
              }

              v155 = [v301 objectForKeyedSubscript:@"last_build"];
              v156 = 1;
              v297 = v155;
              if (*(self + 64) && v155)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v312 = v297;
                  v156 = [v312 isEqualToString:*(self + 64)];
                }

                else
                {
                  v156 = 1;
                }
              }

              v157 = [v301 objectForKeyedSubscript:@"triggered_signatures"];
              v310 = 0;
              if ((v16 & v156) == 1 && v157)
              {
                v16 = v157;
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v296 = v16;
                  v310 = v16;
                  if ([v310 containsObject:v13])
                  {
                    v158 = *(self + 56);
                    v16 = (v158 >> 2) & 1;
                    v159 = *(self + 88);
                    log = v159;
                    if ((v158 & 4) != 0)
                    {
                      if (os_log_type_enabled(v159, OS_LOG_TYPE_DEBUG))
                      {
                        v160 = *(self + 64);
                        OUTLINED_FUNCTION_7();
                        v332 = 2112;
                        *v333 = v161;
                        _os_log_debug_impl(&dword_241BAE000, log, OS_LOG_TYPE_DEBUG, "%@ has already panic on %@ - ignoring via boot-arg", __str, 0x16u);
                      }
                    }

                    else
                    {
                      if (os_log_type_enabled(v159, OS_LOG_TYPE_INFO))
                      {
                        v162 = *(self + 64);
                        OUTLINED_FUNCTION_7();
                        v332 = 2112;
                        *v333 = v163;
                        _os_log_impl(&dword_241BAE000, log, OS_LOG_TYPE_INFO, "%@ cannot panic, it has already panic on %@", __str, 0x16u);
                      }

                      v69 = 2;
                    }
                  }

                  else
                  {
                    LODWORD(v16) = 1;
                  }

                  v157 = v296;
                }

                else
                {
                  v310 = 0;
                  v157 = v16;
                  LODWORD(v16) = 1;
                }
              }
            }

            else
            {
              OUTLINED_FUNCTION_15();
            }
          }

          else
          {
            OUTLINED_FUNCTION_15();
            v28 = 0x277CCA000;
          }
        }

        if (*options)
        {
          if ((*(self + 56) & 0x10) == 0)
          {
            if (os_log_type_enabled(*(self + 88), OS_LOG_TYPE_INFO))
            {
              OUTLINED_FUNCTION_0();
              OUTLINED_FUNCTION_4();
              OUTLINED_FUNCTION_9();
              OUTLINED_FUNCTION_20(v164, v165, v166, v167, v168);
            }

            LOBYTE(v16) = 0;
            v69 = 3;
            goto LABEL_194;
          }

          v169 = *(self + 88);
          if (os_log_type_enabled(v169, OS_LOG_TYPE_DEBUG))
          {
            OUTLINED_FUNCTION_0();
            OUTLINED_FUNCTION_4();
            OUTLINED_FUNCTION_8();
            _os_log_debug_impl(v262, v263, v264, v265, v266, 0x1Cu);
          }
        }

        v170 = v16 ^ 1;
        if (!recoveredCopy)
        {
          v170 = 1;
        }

        if (v170)
        {
          goto LABEL_155;
        }

        v171 = *(self + 88);
        if (os_log_type_enabled(v171, OS_LOG_TYPE_ERROR))
        {
          getpid();
          OUTLINED_FUNCTION_2();
          *v333 = v255;
          OUTLINED_FUNCTION_1();
          OUTLINED_FUNCTION_9();
          OUTLINED_FUNCTION_18(v256, v257, v258, v259, v260);
        }

        recoveredCopy[2](recoveredCopy);
        if ((*options & 1) == 0)
        {
LABEL_155:
          if (!v16)
          {
            goto LABEL_194;
          }
        }

        else
        {
          if ((*(self + 56) & 0x20) == 0)
          {
            if (os_log_type_enabled(*(self + 88), OS_LOG_TYPE_INFO))
            {
              OUTLINED_FUNCTION_0();
              OUTLINED_FUNCTION_4();
              OUTLINED_FUNCTION_9();
              OUTLINED_FUNCTION_20(v172, v173, v174, v175, v176);
            }

            LOBYTE(v16) = 0;
            v69 = 4;
            goto LABEL_194;
          }

          v177 = *(self + 88);
          if (os_log_type_enabled(v177, OS_LOG_TYPE_DEBUG))
          {
            OUTLINED_FUNCTION_0();
            OUTLINED_FUNCTION_4();
            OUTLINED_FUNCTION_8();
            _os_log_debug_impl(v267, v268, v269, v270, v271, 0x1Cu);
          }
        }

        if ((timeout & 3) != 0)
        {
          v178 = *(self + 88);
          v179 = v310;
          if (os_log_type_enabled(v178, OS_LOG_TYPE_DEBUG))
          {
            getpid();
            OUTLINED_FUNCTION_2();
            *v333 = v180;
            OUTLINED_FUNCTION_1();
            OUTLINED_FUNCTION_8();
            _os_log_debug_impl(v181, v182, v183, v184, v185, 0x1Cu);
          }
        }

        else
        {
          if (*(self + 105))
          {
            v186 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
            v187 = dispatch_queue_attr_make_with_overcommit();

            v188 = dispatch_queue_attr_make_with_qos_class(v187, QOS_CLASS_USER_INTERACTIVE, 0);

            v307 = v188;
            v189 = dispatch_queue_create("com.apple.BlockMonitoring.FlushLogsQueue", v188);
            v190 = dispatch_semaphore_create(0);
            v191 = *(self + 88);
            if (os_log_type_enabled(v191, OS_LOG_TYPE_DEBUG))
            {
              getpid();
              OUTLINED_FUNCTION_2();
              *v333 = v272;
              OUTLINED_FUNCTION_1();
              OUTLINED_FUNCTION_13(&dword_241BAE000, v273, v274, "%@ (%u:%llu) flushing logs", v275, v276, v277, v278, 384, v293, v294, log, v296, v297, v299, v301, v303, v307, v309, v310, v313, relevantCopy2, signaturePath, context, v318, block, v320, v321, v322, selfCopy, v324, v325, v326, v327, buf, *v329, *&v329[8], *&v329[16], __str[0]);
            }

            block = MEMORY[0x277D85DD0];
            v320 = 3221225472;
            v321 = __104__BMBlockMonitoring_takeActionIfRelevant_thread_id_timeout_options_recovered_diagnosticCollectionBlock___block_invoke;
            v322 = &unk_278D0FDD8;
            selfCopy = self;
            LODWORD(v327) = v18;
            v300 = v13;
            v324 = v300;
            v326 = relevantCopy2;
            v192 = v190;
            v325 = v192;
            dispatch_async(v189, &block);
            v193 = dispatch_time(0, 1000000000);
            v302 = v192;
            v194 = dispatch_semaphore_wait(v192, v193);
            v195 = *(self + 88);
            v196 = v195;
            if (v194)
            {
              if (os_log_type_enabled(v195, OS_LOG_TYPE_ERROR))
              {
                getpid();
                OUTLINED_FUNCTION_5();
                *v333 = v197;
                OUTLINED_FUNCTION_1();
                OUTLINED_FUNCTION_18(&dword_241BAE000, v196, v198, "%@ (%u:%llu) timed out waiting for log flushing", __str);
              }
            }

            else if (os_log_type_enabled(v195, OS_LOG_TYPE_DEBUG))
            {
              getpid();
              OUTLINED_FUNCTION_5();
              *v333 = v285;
              OUTLINED_FUNCTION_1();
              OUTLINED_FUNCTION_13(&dword_241BAE000, v286, v287, "%@ (%u:%llu) flushed logs", v288, v289, v290, v291, v292, v293, v294, log, v296, v297, v300, v302, v303, v307, v309, v310, v313, relevantCopy2, signaturePath, context, v318, block, v320, v321, v322, selfCopy, v324, v325, v326, v327, buf, *v329, *&v329[8], *&v329[16], __str[0]);
            }

            v305 = v189;

            if (*options)
            {
              v244 = *(self + 56);
              v245 = (v244 >> 12) & 1;
              v246 = *(self + 88);
              v247 = v246;
              if ((v244 & 0x1000) != 0)
              {
                if (os_log_type_enabled(v246, OS_LOG_TYPE_DEBUG))
                {
                  OUTLINED_FUNCTION_5();
                  *v333 = v18;
                  OUTLINED_FUNCTION_1();
                  OUTLINED_FUNCTION_13(&dword_241BAE000, v248, v249, "%@ (%u:%llu) recovered during log flush - ignoring via boot-arg", v250, v251, v252, v253, v292, v293, v294, log, v296, v297, v300, v302, v305, v307, v309, v310, v313, relevantCopy2, signaturePath, context, v318, block, v320, v321, v322, selfCopy, v324, v325, v326, v327, buf, *v329, *&v329[8], *&v329[16], __str[0]);
                }
              }

              else
              {
                if (os_log_type_enabled(v246, OS_LOG_TYPE_INFO))
                {
                  OUTLINED_FUNCTION_5();
                  *v333 = v18;
                  OUTLINED_FUNCTION_1();
                  OUTLINED_FUNCTION_20(&dword_241BAE000, v247, v261, "%@ (%u:%llu) recovered during log flush - skipping panic", __str);
                }

                v69 = 5;
              }

              v254 = v307;
            }

            else
            {
              LOBYTE(v245) = 1;
              v254 = v307;
            }

            v179 = v310;
            if ((v245 & 1) == 0)
            {
              LOBYTE(v16) = 0;
              v224 = v309;
              goto LABEL_195;
            }

LABEL_172:
            if (v179)
            {
              v199 = [v179 arrayByAddingObject:v13];
            }

            else
            {
              v338[0] = v13;
              v199 = [MEMORY[0x277CBEA60] arrayWithObjects:v338 count:1];
            }

            v336[0] = @"last_panic";
            v200 = [MEMORY[0x277CBEAA8] now];
            v201 = v200;
            v202 = *(self + 64);
            if (!v202)
            {
              v202 = @"???";
            }

            v337[0] = v200;
            v337[1] = v202;
            v336[1] = @"last_build";
            v336[2] = @"triggered_signatures";
            v310 = v199;
            v337[2] = v199;
            v203 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v337 forKeys:v336 count:3];

            v318 = 0;
            v304 = v203;
            v204 = [MEMORY[0x277CCAC58] dataWithPropertyList:v203 format:200 options:0 error:&v318];
            v308 = v318;
            if (v204)
            {
              if ((ftruncate(SHIDWORD(v313), 0) & 0x80000000) == 0)
              {
                v205 = pwrite(SHIDWORD(v313), [v204 bytes], objc_msgSend(v204, "length"), 0);
                if (v205 == [v204 length] && fcntl(SHIDWORD(v313), 51) != -1)
                {
                  LOBYTE(v16) = 1;
LABEL_193:

LABEL_194:
                  v224 = v309;
                  v179 = v310;
LABEL_195:
                  free(v224);
                  close(SHIDWORD(v313));
                  OUTLINED_FUNCTION_21();
                  if (v20 && *(self + 148))
                  {
                    v225 = *(self + 88);
                    if (os_log_type_enabled(v225, OS_LOG_TYPE_INFO))
                    {
                      v226 = *(self + 148);
                      OUTLINED_FUNCTION_7();
                      OUTLINED_FUNCTION_17();
                      *&v333[6] = relevantCopy2;
                      v334 = v227;
                      LODWORD(thread_idCopy) = v228;
                      OUTLINED_FUNCTION_9();
                      _os_log_impl(v229, v230, OS_LOG_TYPE_INFO, v231, v232, 0x22u);
                    }

                    sleep(*(self + 148));
                  }

                  objc_autoreleasePoolPop(context);
                  relevant = relevantCopy2;
                  if ((v16 & 1) == 0)
                  {
                    goto LABEL_82;
                  }

LABEL_202:
                  if (*options)
                  {
                    v233 = *(self + 56);
                    v234 = *(self + 88);
                    v235 = v234;
                    if ((v233 & 0x2000) == 0)
                    {
                      if (os_log_type_enabled(v234, OS_LOG_TYPE_DEFAULT))
                      {
                        OUTLINED_FUNCTION_2();
                        *v333 = v18;
                        OUTLINED_FUNCTION_3();
                        OUTLINED_FUNCTION_25();
                        _os_log_impl(v236, v237, OS_LOG_TYPE_DEFAULT, v238, v239, 0x1Cu);
                      }

                      v69 = 6;
                      goto LABEL_82;
                    }

                    if (os_log_type_enabled(v234, OS_LOG_TYPE_DEBUG))
                    {
                      OUTLINED_FUNCTION_0();
                      *&v333[6] = relevant;
                      OUTLINED_FUNCTION_25();
                      _os_log_debug_impl(v240, v241, OS_LOG_TYPE_DEBUG, v242, v243, 0x1Cu);
                    }
                  }

                  v30 = 0;
                  goto LABEL_31;
                }
              }

              v206 = *(self + 56);
              v207 = *(self + 88);
              v208 = v207;
              if ((v206 & 0x40) == 0)
              {
                if (os_log_type_enabled(v207, OS_LOG_TYPE_ERROR))
                {
                  v209 = *__error();
                  OUTLINED_FUNCTION_7();
                  OUTLINED_FUNCTION_11();
                  OUTLINED_FUNCTION_9();
                  v214 = 18;
LABEL_225:
                  _os_log_error_impl(v210, v211, OS_LOG_TYPE_ERROR, v212, v213, v214);
                  goto LABEL_187;
                }

                goto LABEL_187;
              }

              if (os_log_type_enabled(v207, OS_LOG_TYPE_DEBUG))
              {
                v217 = *__error();
                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_11();
                OUTLINED_FUNCTION_8();
                v223 = 18;
LABEL_227:
                _os_log_debug_impl(v218, v219, v220, v221, v222, v223);
              }
            }

            else
            {
              v215 = *(self + 56);
              v216 = *(self + 88);
              v208 = v216;
              if ((v215 & 0x40) == 0)
              {
                if (os_log_type_enabled(v216, OS_LOG_TYPE_ERROR))
                {
                  OUTLINED_FUNCTION_7();
                  OUTLINED_FUNCTION_26();
                  OUTLINED_FUNCTION_9();
                  v214 = 22;
                  goto LABEL_225;
                }

LABEL_187:
                LOBYTE(v16) = 0;
                v69 = 8;
LABEL_192:

                goto LABEL_193;
              }

              if (os_log_type_enabled(v216, OS_LOG_TYPE_DEBUG))
              {
                OUTLINED_FUNCTION_7();
                OUTLINED_FUNCTION_26();
                OUTLINED_FUNCTION_8();
                v223 = 22;
                goto LABEL_227;
              }
            }

            LOBYTE(v16) = 1;
            goto LABEL_192;
          }

          v178 = *(self + 88);
          v179 = v310;
          if (os_log_type_enabled(v178, OS_LOG_TYPE_ERROR))
          {
            getpid();
            OUTLINED_FUNCTION_2();
            *v333 = v279;
            OUTLINED_FUNCTION_1();
            OUTLINED_FUNCTION_9();
            OUTLINED_FUNCTION_18(v280, v281, v282, v283, v284);
          }
        }

        goto LABEL_172;
      }

      v123 = *(self + 56);
      v124 = OUTLINED_FUNCTION_19();
      if ((v123 & 0x40) != 0)
      {
        v114 = signaturePath;
        if (!v124)
        {
          goto LABEL_97;
        }

        v115 = v69;
        v146 = *__error();
        *__str = 67109120;
        LODWORD(v331) = v146;
        OUTLINED_FUNCTION_12();
        v121 = 8;
        goto LABEL_110;
      }

      if (v124)
      {
        v136 = v69;
        v137 = *__error();
        *__str = 67109120;
        LODWORD(v331) = v137;
        OUTLINED_FUNCTION_16();
        _os_log_error_impl(v138, v139, v140, v141, v142, 8u);
      }

      v143 = OUTLINED_FUNCTION_6();
      [(BMBlockMonitoring *)v143 logPanicDeny:v144 thread_id:v145 reason:9 demoted:0];
      close(SHIDWORD(v313));
      v125 = signaturePath;
    }

    objc_autoreleasePoolPop(v69);
    goto LABEL_53;
  }

LABEL_20:
  if ((*options & 1) == 0)
  {
    goto LABEL_23;
  }

  thread_id = *(self + 88);
  if ((*(self + 56) & 0x10) == 0)
  {
    if (os_log_type_enabled(*(self + 88), OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_2();
      *v333 = v18;
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_20(v83, v84, v85, v86, v87);
    }

    v69 = 3;
LABEL_82:
    v65 = OUTLINED_FUNCTION_6();
    v68 = v69;
    goto LABEL_89;
  }

  if (os_log_type_enabled(*(self + 88), OS_LOG_TYPE_DEBUG))
  {
    OUTLINED_FUNCTION_0();
    *&v333[6] = relevant;
    OUTLINED_FUNCTION_12();
    _os_log_debug_impl(v89, v90, OS_LOG_TYPE_DEBUG, v91, v92, 0x1Cu);
    if (recoveredCopy)
    {
      goto LABEL_24;
    }

    goto LABEL_30;
  }

LABEL_23:
  if (recoveredCopy)
  {
LABEL_24:
    if (OUTLINED_FUNCTION_19())
    {
      thread_idCopy2 = thread_id;
      getpid();
      OUTLINED_FUNCTION_2();
      *v333 = v59;
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_18(v60, v61, v62, v63, v64);
    }

    recoveredCopy[2](recoveredCopy);
    if ((*options & 1) == 0)
    {
      goto LABEL_30;
    }

    v29 = *(self + 88);
    if ((*(self + 56) & 0x20) != 0)
    {
      if (os_log_type_enabled(*(self + 88), OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_0();
        *&v333[6] = relevant;
        OUTLINED_FUNCTION_25();
        _os_log_debug_impl(v98, v99, OS_LOG_TYPE_DEBUG, v100, v101, 0x1Cu);
      }

      goto LABEL_30;
    }

    if (os_log_type_enabled(*(self + 88), OS_LOG_TYPE_INFO))
    {
      OUTLINED_FUNCTION_2();
      *v333 = v18;
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_20(v93, v94, v95, v96, v97);
    }

    v69 = 4;
    goto LABEL_82;
  }

LABEL_30:
  v30 = 1;
LABEL_31:
  snprintf(__str, 0x400uLL, "BMBlockMonitoring: %s (%u:%llu)", [v13 UTF8String], v18, relevant);
  if ((v30 & 1) == 0)
  {
    v31 = *(self + 88);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_23();
      *&v329[6] = v18;
      *&v329[10] = 2048;
      *&v329[12] = relevant;
      OUTLINED_FUNCTION_18(&dword_241BAE000, v31, v88, "%@ (%u:%llu) is going to panic device", &buf);
    }
  }

  OUTLINED_FUNCTION_21();
  if (!v20 || *(self + 136) == 1)
  {
    if ((v30 & 1) == 0)
    {
      if ((*(self + 56) & 1) == 0)
      {
        if (*(self + 96) != 1)
        {
LABEL_52:
          MEMORY[0x245CF9630](3072, __str);
          goto LABEL_53;
        }

        v32 = panic_with_data(0, 0, 0, 1u, __str);
        v33 = *(self + 88);
        v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
        if (v32 < 0)
        {
          if (v34)
          {
            v122 = *__error();
            LODWORD(buf) = 67109120;
            HIDWORD(buf) = v122;
            v35 = "panic_with_data() failed with: %d";
            v36 = v33;
            v37 = 8;
            goto LABEL_94;
          }
        }

        else if (v34)
        {
          LOWORD(buf) = 0;
          v35 = "panic_with_data() unexpectedly returned";
          v36 = v33;
          v37 = 2;
LABEL_94:
          _os_log_error_impl(&dword_241BAE000, v36, OS_LOG_TYPE_ERROR, v35, &buf, v37);
        }

        goto LABEL_52;
      }

      v52 = *(self + 88);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_23();
        *&v329[6] = v18;
        *&v329[10] = 2048;
        *&v329[12] = relevant;
        OUTLINED_FUNCTION_18(&dword_241BAE000, v52, v53, "%@ (%u:%llu) would trigger a panic - boot-arg prevents panic, so faulting instead", &buf);
      }
    }

LABEL_61:
    v54 = OUTLINED_FUNCTION_6();
    [(BMBlockMonitoring *)v54 logFault:v55 thread_id:v56 reason:v57];
    goto LABEL_53;
  }

  v38 = [*(v28 + 3240) stringWithCString:__str encoding:4];
  v39 = [v38 copy];
  v40 = *(self + 112);
  *(self + 112) = v39;

  if (v30)
  {
    goto LABEL_61;
  }

  if (*(self + 96))
  {
    v41 = 1;
  }

  else
  {
    v41 = 2;
  }

  *(self + 121) = v41;
  v42 = *(self + 128);
  if (v42)
  {
    (*(v42 + 16))(v42, v13, relevant, 0, v41);
  }

LABEL_53:

  v43 = *MEMORY[0x277D85DE8];
}

void __95__BMBlockMonitoring_executeBlockWithSignature_timeout_options_diagnosticCollectionBlock_block___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:*(a1 + 48)];
  [(BMBlockMonitoring *)v2 takeActionIfRelevant:v3 thread_id:*(a1 + 56) timeout:*(a1 + 64) options:*(a1 + 80) recovered:*(a1 + 72) diagnosticCollectionBlock:*(a1 + 40)];
}

- (void)initForTesting:bootArgs:.cold.1()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initForTesting:bootArgs:.cold.2()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initForTesting:bootArgs:.cold.3()
{
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initForTesting:(uint64_t *)a1 bootArgs:.cold.4(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_10();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initForTesting:(uint64_t *)a1 bootArgs:.cold.5(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_10();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)initForTesting:bootArgs:.cold.6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initForTesting:(os_log_t)log bootArgs:.cold.7(int *a1, uint8_t *buf, os_log_t log)
{
  v3 = *a1;
  *buf = 67109120;
  *(buf + 1) = v3;
  _os_log_error_impl(&dword_241BAE000, log, OS_LOG_TYPE_ERROR, "Disabling feature - os version not gathered: %{errno}d", buf, 8u);
}

- (void)initForTesting:bootArgs:.cold.8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)parseBootArgInt:where:.cold.1()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void __45__BMBlockMonitoring_initForTesting_bootArgs___block_invoke_46_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __45__BMBlockMonitoring_initForTesting_bootArgs___block_invoke_46_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_10();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (uint64_t)lookForDeviceReadiness
{
  dlerror();
  v0 = abort_report_np();
  return [(BMBlockMonitoring *)v0 lookForDeviceReadiness];
}

@end