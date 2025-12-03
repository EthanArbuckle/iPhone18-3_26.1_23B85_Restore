@interface FMAlertManager
+ (id)sharedInstance;
- (FMAlertManager)init;
- (id)initSingleton;
- (void)activateAlert:(id)alert;
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

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(FMAlertManager *)v2 setActiveAlerts:dictionary];

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    [(FMAlertManager *)v2 setActiveCFNotificationsByCategory:dictionary2];
  }

  return v2;
}

- (void)activateAlert:(id)alert
{
  v52 = *MEMORY[0x277D85DE8];
  alertCopy = alert;
  v5 = LogCategory_Unspecified();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    alertId = [alertCopy alertId];
    *buf = 138412546;
    v49 = alertId;
    v50 = 2048;
    category = [alertCopy category];
    _os_log_impl(&dword_24A2EE000, v5, OS_LOG_TYPE_INFO, "Will display %@:%ld", buf, 0x16u);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  category2 = [alertCopy category];
  if (category2 != *MEMORY[0x277D07B58])
  {
    activeCFNotificationsByCategory = [(FMAlertManager *)self activeCFNotificationsByCategory];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(alertCopy, "category")}];
    v11 = [activeCFNotificationsByCategory objectForKeyedSubscript:v10];

    if (v11)
    {
      activeAlerts = [(FMAlertManager *)self activeAlerts];
      v13 = [activeAlerts objectForKeyedSubscript:v11];

      activeCFNotificationsByCategory2 = [(FMAlertManager *)self activeCFNotificationsByCategory];
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v13, "category")}];
      [activeCFNotificationsByCategory2 removeObjectForKey:v15];

      activeAlerts2 = [(FMAlertManager *)self activeAlerts];
      [activeAlerts2 removeObjectForKey:v11];

      v17 = +[FMXPCTransactionManager sharedInstance];
      v18 = [(FMAlertManager *)self _xpcTransactionNameFor:v13];
      [v17 endTransaction:v18];

      unsignedLongValue = [v11 unsignedLongValue];
      CFUserNotificationCancel(unsignedLongValue);
      CFRelease(unsignedLongValue);
    }
  }

  v20 = *MEMORY[0x277CBF1E8];
  defaultButtonTitle = [alertCopy defaultButtonTitle];
  [dictionary fm_safelyMapKey:v20 toObject:defaultButtonTitle];

  v22 = *MEMORY[0x277CBF1C0];
  alternateButtonTitle = [alertCopy alternateButtonTitle];
  [dictionary fm_safelyMapKey:v22 toObject:alternateButtonTitle];

  v24 = *MEMORY[0x277CBF198];
  msgText = [alertCopy msgText];
  [dictionary fm_safelyMapKey:v24 toObject:msgText];

  v26 = *MEMORY[0x277CBF188];
  msgTitle = [alertCopy msgTitle];
  [dictionary fm_safelyMapKey:v26 toObject:msgTitle];

  v28 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(alertCopy, "showMsgInLockScreen")}];
  [dictionary setObject:v28 forKeyedSubscript:*MEMORY[0x277CBF1B0]];

  v29 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(alertCopy, "dismissMsgOnUnlock") ^ 1}];
  [dictionary setObject:v29 forKeyedSubscript:*MEMORY[0x277D67340]];

  v30 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(alertCopy, "dismissMsgOnLock")}];
  [dictionary setObject:v30 forKeyedSubscript:*MEMORY[0x277D67320]];

  v31 = MEMORY[0x277CBEC38];
  [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D67298]];
  [dictionary setObject:v31 forKeyedSubscript:*MEMORY[0x277D67278]];
  additionalSettings = [alertCopy additionalSettings];

  if (additionalSettings)
  {
    additionalSettings2 = [alertCopy additionalSettings];
    [dictionary addEntriesFromDictionary:additionalSettings2];
  }

  *buf = 0;
  v34 = *MEMORY[0x277CBECE8];
  [alertCopy timeout];
  v36 = CFUserNotificationCreate(v34, v35, 3uLL, buf, dictionary);
  if (v36)
  {
    v37 = v36;
    activeAlerts3 = [(FMAlertManager *)self activeAlerts];
    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v37];
    [activeAlerts3 setObject:alertCopy forKeyedSubscript:v39];

    if ([alertCopy category])
    {
      v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v37];
      activeCFNotificationsByCategory3 = [(FMAlertManager *)self activeCFNotificationsByCategory];
      v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(alertCopy, "category")}];
      [activeCFNotificationsByCategory3 setObject:v40 forKeyedSubscript:v42];
    }

    v43 = +[FMXPCTransactionManager sharedInstance];
    v44 = [(FMAlertManager *)self _xpcTransactionNameFor:alertCopy];
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
      [(FMAlertManager *)alertCopy activateAlert:buf, v45];
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