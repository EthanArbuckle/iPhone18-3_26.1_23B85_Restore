@interface FMAlertManager
+ (id)sharedInstance;
- (FMAlertManager)init;
- (id)initSingleton;
- (void)activateAlert:(id)a3;
@end

@implementation FMAlertManager

+ (id)sharedInstance
{
  if (sharedInstance_dispatch_predicate_0 != -1)
  {
    +[FMAlertManager sharedInstance];
  }

  v3 = sharedInstance__instance_0;

  return v3;
}

void __32__FMAlertManager_sharedInstance__block_invoke()
{
  v0 = LogCategory_Unspecified();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __32__FMAlertManager_sharedInstance__block_invoke_cold_1(v0);
  }

  v1 = [[FMAlertManager alloc] initSingleton];
  v2 = sharedInstance__instance_0;
  sharedInstance__instance_0 = v1;
}

- (FMAlertManager)init
{
  v3 = LogCategory_Unspecified();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(FMAlertManager *)v3 init];
  }

  return 0;
}

- (id)initSingleton
{
  v7.receiver = self;
  v7.super_class = FMAlertManager;
  v2 = [(FMAlertManager *)&v7 init];
  if (v2)
  {
    v3 = LogCategory_Unspecified();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(FMAlertManager *)v3 initSingleton];
    }

    v4 = [MEMORY[0x277CBEB38] dictionary];
    [(FMAlertManager *)v2 setActiveAlerts:v4];

    v5 = [MEMORY[0x277CBEB38] dictionary];
    [(FMAlertManager *)v2 setActiveCFNotificationsByCategory:v5];
  }

  return v2;
}

- (void)activateAlert:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = LogCategory_Unspecified();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [v4 alertId];
    *buf = 138412546;
    v49 = v6;
    v50 = 2048;
    v51 = [v4 category];
    _os_log_impl(&dword_24A2EE000, v5, OS_LOG_TYPE_INFO, "Will display %@:%ld", buf, 0x16u);
  }

  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = [v4 category];
  if (v8 != *MEMORY[0x277D07B58])
  {
    v9 = [(FMAlertManager *)self activeCFNotificationsByCategory];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "category")}];
    v11 = [v9 objectForKeyedSubscript:v10];

    if (v11)
    {
      v12 = [(FMAlertManager *)self activeAlerts];
      v13 = [v12 objectForKeyedSubscript:v11];

      v14 = [(FMAlertManager *)self activeCFNotificationsByCategory];
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "category")}];
      [v14 removeObjectForKey:v15];

      v16 = [(FMAlertManager *)self activeAlerts];
      [v16 removeObjectForKey:v11];

      v17 = +[FMXPCTransactionManager sharedInstance];
      v18 = [(FMAlertManager *)self _xpcTransactionNameFor:v13];
      [v17 endTransaction:v18];

      v19 = [v11 unsignedLongValue];
      CFUserNotificationCancel(v19);
      CFRelease(v19);
    }
  }

  v20 = *MEMORY[0x277CBF1E8];
  v21 = [v4 defaultButtonTitle];
  [v7 fm_safelyMapKey:v20 toObject:v21];

  v22 = *MEMORY[0x277CBF1C0];
  v23 = [v4 alternateButtonTitle];
  [v7 fm_safelyMapKey:v22 toObject:v23];

  v24 = *MEMORY[0x277CBF198];
  v25 = [v4 msgText];
  [v7 fm_safelyMapKey:v24 toObject:v25];

  v26 = *MEMORY[0x277CBF188];
  v27 = [v4 msgTitle];
  [v7 fm_safelyMapKey:v26 toObject:v27];

  v28 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "showMsgInLockScreen")}];
  [v7 setObject:v28 forKeyedSubscript:*MEMORY[0x277CBF1B0]];

  v29 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "dismissMsgOnUnlock") ^ 1}];
  [v7 setObject:v29 forKeyedSubscript:*MEMORY[0x277D67340]];

  v30 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "dismissMsgOnLock")}];
  [v7 setObject:v30 forKeyedSubscript:*MEMORY[0x277D67320]];

  v31 = MEMORY[0x277CBEC38];
  [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D67298]];
  [v7 setObject:v31 forKeyedSubscript:*MEMORY[0x277D67278]];
  v32 = [v4 additionalSettings];

  if (v32)
  {
    v33 = [v4 additionalSettings];
    [v7 addEntriesFromDictionary:v33];
  }

  *buf = 0;
  v34 = *MEMORY[0x277CBECE8];
  [v4 timeout];
  v36 = CFUserNotificationCreate(v34, v35, 3uLL, buf, v7);
  if (v36)
  {
    v37 = v36;
    v38 = [(FMAlertManager *)self activeAlerts];
    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v37];
    [v38 setObject:v4 forKeyedSubscript:v39];

    if ([v4 category])
    {
      v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v37];
      v41 = [(FMAlertManager *)self activeCFNotificationsByCategory];
      v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "category")}];
      [v41 setObject:v40 forKeyedSubscript:v42];
    }

    v43 = +[FMXPCTransactionManager sharedInstance];
    v44 = [(FMAlertManager *)self _xpcTransactionNameFor:v4];
    [v43 beginTransaction:v44];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__FMAlertManager_activateAlert___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v37;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v45 = LogCategory_Unspecified();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      [(FMAlertManager *)v4 activateAlert:buf, v45];
    }
  }

  v46 = *MEMORY[0x277D85DE8];
}

void __32__FMAlertManager_activateAlert___block_invoke(uint64_t a1)
{
  RunLoopSource = CFUserNotificationCreateRunLoopSource(*MEMORY[0x277CBECE8], *(a1 + 32), _fmAlertCFCallback, 0);
  if (RunLoopSource)
  {
    v2 = RunLoopSource;
    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, v2, *MEMORY[0x277CBF048]);

    CFRelease(v2);
  }
}

- (void)activateAlert:(NSObject *)a3 .cold.1(void *a1, int *a2, NSObject *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = [a1 fm_logID];
  v6 = *a2;
  v8 = 138412546;
  v9 = v5;
  v10 = 2048;
  v11 = v6;
  _os_log_error_impl(&dword_24A2EE000, a3, OS_LOG_TYPE_ERROR, "Error while creating a CFUserNotification %@: %ld", &v8, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end