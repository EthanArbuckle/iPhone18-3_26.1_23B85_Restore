@interface LKLogEventController
+ (id)loginDetailsPredicate;
- (BOOL)_isKeychainLog:(id)a3;
- (BOOL)_needToParseSecurityLogs;
- (LKLogEventController)init;
- (id)logEventHandler;
- (id)loginDetailsWithStartDate:(id)a3 logArchivePath:(id)a4;
- (void)_handleKeychainItemEventFromLogEvent:(id)a3;
- (void)_parseBuddLog:(id)a3;
- (void)_parseKeychainLog:(id)a3;
- (void)_parseSpringBoardLog:(id)a3;
- (void)_parseUserManagementFrameworkLog:(id)a3;
- (void)enumurateLogEventsSynchronouslyFromDate:(id)a3 predicate:(id)a4 logEventHandler:(id)a5;
- (void)enumuratePersistentLogsSynchronouslyFromDate:(id)a3 logArchivePath:(id)a4 predicate:(id)a5 logEventHandler:(id)a6;
@end

@implementation LKLogEventController

+ (id)loginDetailsPredicate
{
  if (loginDetailsPredicate_onceToken != -1)
  {
    +[LKLogEventController loginDetailsPredicate];
  }

  v3 = loginDetailsPredicate_predicate;

  return v3;
}

void __45__LKLogEventController_loginDetailsPredicate__block_invoke()
{
  v9[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CCA920];
  v1 = [MEMORY[0x277CCAC30] predicateWithFormat:@"((senderImagePath contains \"UserManagement\""];
  v9[0] = v1;
  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"((senderImagePath contains \"Security\""];
  v9[1] = v2;
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"((subsystem contains \"com.apple.purplebuddy\""];
  v9[2] = v3;
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"((subsystem contains \"com.apple.FrontBoard\""];
  v9[3] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:4];
  v6 = [v0 orPredicateWithSubpredicates:v5];
  v7 = loginDetailsPredicate_predicate;
  loginDetailsPredicate_predicate = v6;

  v8 = *MEMORY[0x277D85DE8];
}

- (LKLogEventController)init
{
  v11.receiver = self;
  v11.super_class = LKLogEventController;
  v2 = [(LKLogEventController *)&v11 init];
  if (v2)
  {
    LKRegisterLoginKitLogging();
    v3 = objc_opt_new();
    switchOperationsMutableArray = v2->_switchOperationsMutableArray;
    v2->_switchOperationsMutableArray = v3;

    v5 = objc_opt_new();
    switchOperation = v2->_switchOperation;
    v2->_switchOperation = v5;

    v7 = objc_opt_new();
    mutableKeychainItemsAddedByActivityID = v2->_mutableKeychainItemsAddedByActivityID;
    v2->_mutableKeychainItemsAddedByActivityID = v7;

    logEventHandler = v2->_logEventHandler;
    v2->_logEventHandler = 0;
  }

  return v2;
}

- (id)logEventHandler
{
  logEventHandler = self->_logEventHandler;
  if (!logEventHandler)
  {
    objc_initWeak(&location, self);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __39__LKLogEventController_logEventHandler__block_invoke;
    v8[3] = &unk_2798261F0;
    objc_copyWeak(&v9, &location);
    v4 = MEMORY[0x259C5D090](v8);
    v5 = self->_logEventHandler;
    self->_logEventHandler = v4;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    logEventHandler = self->_logEventHandler;
  }

  v6 = MEMORY[0x259C5D090](logEventHandler, a2);

  return v6;
}

void __39__LKLogEventController_logEventHandler__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained streamingLogs] && (objc_msgSend(v3, "date"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "logEnumarationEndTime"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "compare:", v7), v7, v6, v8 == 1))
    {
      v9 = [v5 dynamicdsema];

      if (v9)
      {
        v10 = LKLogDefault;
        if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEFAULT))
        {
          *v12 = 0;
          _os_log_impl(&dword_25618F000, v10, OS_LOG_TYPE_DEFAULT, "LoginDetails: Login Ended", v12, 2u);
        }

        v11 = [v5 dynamicdsema];
        dispatch_semaphore_signal(v11);
      }
    }

    else
    {
      if ([v3 loggedByFramework:@"UserManagement"])
      {
        [v5 _parseUserManagementFrameworkLog:v3];
      }

      else if ([v3 loggedByProcess:@"budd"])
      {
        [v5 _parseBuddLog:v3];
      }

      else if ([v3 loggedByProcess:@"SpringBoard"])
      {
        [v5 _parseSpringBoardLog:v3];
      }

      if ([v5 _needToParseSecurityLogs] && objc_msgSend(v5, "_isKeychainLog:", v3))
      {
        [v5 _parseKeychainLog:v3];
      }
    }
  }
}

- (void)_parseBuddLog:(id)a3
{
  v4 = a3;
  if ([v4 containsMessage:@"Buddy: Starting EMCS Recovery..."])
  {
    v5 = LKLogDefault;
    if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25618F000, v5, OS_LOG_TYPE_DEFAULT, "LoginDetails: EMCS Recovery started", buf, 2u);
    }

    v6 = objc_opt_new();
    v7 = [v4 date];
    [v6 setStartTime:v7];

    v8 = [(LKLogEventController *)self switchOperation];
    [v8 setRecoverEMCSOperation:v6];
    goto LABEL_10;
  }

  if ([v4 containsMessage:@"Buddy: EMCS recovery completed"])
  {
    v9 = [(LKLogEventController *)self switchOperation];
    v6 = [v9 recoverEMCSOperation];

    v10 = LKLogDefault;
    v11 = os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEFAULT);
    if (!v6)
    {
      if (v11)
      {
        *v14 = 0;
        _os_log_impl(&dword_25618F000, v10, OS_LOG_TYPE_DEFAULT, "We should have a start of recover EMCS recovery. We shouldn't end up here.", v14, 2u);
      }

      goto LABEL_11;
    }

    if (v11)
    {
      *v15 = 0;
      _os_log_impl(&dword_25618F000, v10, OS_LOG_TYPE_DEFAULT, "LoginDetails: EMCS Recovery ended", v15, 2u);
    }

    v12 = [v4 date];
    [v6 setEndTime:v12];

    v8 = [v6 endTime];
    v13 = [v6 startTime];
    [v8 timeIntervalSinceDate:v13];
    [v6 setDuration:?];

LABEL_10:
LABEL_11:
  }
}

- (void)_parseSpringBoardLog:(id)a3
{
  v23 = a3;
  if (![v23 containsMessage:@"Startup transition completed."])
  {
    goto LABEL_9;
  }

  v4 = [v23 date];
  v5 = [(LKLogEventController *)self switchOperation];
  [v5 setEndTime:v4];

  v6 = [(LKLogEventController *)self switchOperation];
  v7 = [v6 endTime];
  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = v7;
  v9 = [(LKLogEventController *)self switchOperation];
  v10 = [v9 startTime];

  if (v10)
  {
    v6 = [(LKLogEventController *)self switchOperation];
    v11 = [v6 endTime];
    v12 = [(LKLogEventController *)self switchOperation];
    v13 = [v12 startTime];
    [v11 timeIntervalSinceDate:v13];
    v15 = v14;
    v16 = [(LKLogEventController *)self switchOperation];
    [v16 setDuration:v15];

LABEL_5:
  }

  v17 = [(LKLogEventController *)self switchOperation];
  v18 = [v17 switchType];

  if (v18)
  {
    v19 = [(LKLogEventController *)self switchOperationsMutableArray];
    v20 = [(LKLogEventController *)self switchOperation];
    v21 = [v20 dictionary];
    [v19 addObject:v21];
  }

  v22 = objc_opt_new();
  [(LKLogEventController *)self setSwitchOperation:v22];

LABEL_9:

  MEMORY[0x2821F96F8]();
}

- (void)_parseUserManagementFrameworkLog:(id)a3
{
  v9 = a3;
  if ([v9 containsMessage:@"switch to user"])
  {
    v4 = v9;
    v5 = 1;
  }

  else if ([v9 containsMessage:@"direct switch to User"])
  {
    v4 = v9;
    v5 = 3;
  }

  else if ([v9 containsMessage:@"Logout to LoginSession Screen"])
  {
    v4 = v9;
    v5 = 2;
  }

  else
  {
    if (![v9 containsMessage:@"switch to login screen"])
    {
      goto LABEL_10;
    }

    v4 = v9;
    v5 = 4;
  }

  v6 = [v4 date];
  v7 = [(LKLogEventController *)self switchOperation];
  [v7 setStartTime:v6];

  v8 = [(LKLogEventController *)self switchOperation];
  [v8 setSwitchType:v5];

LABEL_10:
}

- (void)_parseKeychainLog:(id)a3
{
  v12 = a3;
  if ([v12 containsMessage:@"SecItemAdd_ios"])
  {
    [(LKLogEventController *)self _handleKeychainItemEventFromLogEvent:v12];
    goto LABEL_11;
  }

  if ([v12 containsMessage:@"inserted <"])
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v12, "activityIdentifier")}];
    v5 = [(LKLogEventController *)self mutableKeychainItemsAddedByActivityID];
    v6 = [v5 objectForKeyedSubscript:v4];

    if (!v6)
    {
LABEL_10:

      goto LABEL_11;
    }

    v7 = [v12 composedMessage];
    if (([v7 containsString:@"vwht=null"] & 1) == 0)
    {
      v8 = [v12 composedMessage];
      v9 = [v8 containsString:@"sysb=null"];

      if (!v9)
      {
LABEL_9:
        v11 = [(LKLogEventController *)self mutableKeychainItemsAddedByActivityID];
        [v11 setObject:0 forKeyedSubscript:v4];

        goto LABEL_10;
      }

      v10 = [v12 composedMessage];
      [v6 setKeychainItemAdded:v10];

      v7 = [(LKLogEventController *)self switchOperation];
      [v7 addKeychainItemAdditionEvent:v6];
    }

    goto LABEL_9;
  }

LABEL_11:
}

- (BOOL)_isKeychainLog:(id)a3
{
  v3 = a3;
  if ([v3 loggedByProcess:@"securityd"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 loggedByFramework:@"Security"];
  }

  return v4;
}

- (BOOL)_needToParseSecurityLogs
{
  v5 = [(LKLogEventController *)self switchOperation];
  v6 = [v5 recoverEMCSOperation];
  if (v6)
  {
    v2 = [(LKLogEventController *)self switchOperation];
    v3 = [v2 recoverEMCSOperation];
    v7 = [v3 endTime];
    if (v7)
    {
      v8 = 1;
LABEL_9:

      goto LABEL_10;
    }
  }

  v9 = [(LKLogEventController *)self switchOperation];
  if ([v9 switchType] == 2)
  {
    v8 = 1;
  }

  else
  {
    v10 = [(LKLogEventController *)self switchOperation];
    v8 = [v10 switchType] == 3;
  }

  if (v6)
  {
    v7 = 0;
    goto LABEL_9;
  }

LABEL_10:

  return v8;
}

- (void)_handleKeychainItemEventFromLogEvent:(id)a3
{
  v4 = a3;
  v15 = [LKLogKeychainItemAdditionEvent eventFromLKLogEvent:v4];
  v5 = [(LKLogEventController *)self mutableKeychainItemsAddedByActivityID];
  v6 = MEMORY[0x277CCABB0];
  v7 = [v4 activityIdentifier];

  *&v8 = v7;
  v9 = [v6 numberWithFloat:v8];
  [v5 setObject:v15 forKeyedSubscript:v9];

  v10 = [(LKLogEventController *)self switchOperation];
  v11 = [v10 recoverEMCSOperation];

  if (v11)
  {
    v12 = [v11 startTime];
    if (v12)
    {
      v13 = v12;
      v14 = [v11 endTime];

      if (!v14)
      {
        [v11 setRecoveredKeychainItemCount:{objc_msgSend(v11, "recoveredKeychainItemCount") + 1}];
      }
    }
  }
}

- (void)enumurateLogEventsSynchronouslyFromDate:(id)a3 predicate:(id)a4 logEventHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277D24438] localStore];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __90__LKLogEventController_enumurateLogEventsSynchronouslyFromDate_predicate_logEventHandler___block_invoke;
  v22[3] = &unk_279826218;
  v22[4] = &v23;
  [v11 prepareWithCompletionHandler:v22];
  v12 = dispatch_semaphore_create(0);
  [(LKLogEventController *)self setDynamicdsema:v12];

  [(LKLogEventController *)self setStreamingLogs:1];
  v13 = objc_alloc(MEMORY[0x277D24440]);
  v14 = [v13 initWithSource:v24[5]];
  v15 = enumurateLogEventsSynchronouslyFromDate_predicate_logEventHandler__stream;
  enumurateLogEventsSynchronouslyFromDate_predicate_logEventHandler__stream = v14;

  [enumurateLogEventsSynchronouslyFromDate_predicate_logEventHandler__stream setFlags:21];
  [enumurateLogEventsSynchronouslyFromDate_predicate_logEventHandler__stream setFilterPredicate:v9];
  v16 = enumurateLogEventsSynchronouslyFromDate_predicate_logEventHandler__stream;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __90__LKLogEventController_enumurateLogEventsSynchronouslyFromDate_predicate_logEventHandler___block_invoke_2;
  v20[3] = &unk_279826240;
  v17 = v10;
  v21 = v17;
  [v16 setEventHandler:v20];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __90__LKLogEventController_enumurateLogEventsSynchronouslyFromDate_predicate_logEventHandler___block_invoke_3;
  v19[3] = &unk_279826268;
  v19[4] = self;
  [enumurateLogEventsSynchronouslyFromDate_predicate_logEventHandler__stream setInvalidationHandler:v19];
  [enumurateLogEventsSynchronouslyFromDate_predicate_logEventHandler__stream activateStreamFromDate:v8];
  v18 = [(LKLogEventController *)self dynamicdsema];
  dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);

  _Block_object_dispose(&v23, 8);
}

void __90__LKLogEventController_enumurateLogEventsSynchronouslyFromDate_predicate_logEventHandler___block_invoke_2(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v3 = a2;
    v9 = objc_opt_new();
    v4 = [v3 process];
    [v9 setProcess:v4];

    v5 = [v3 date];
    [v9 setDate:v5];

    v6 = [v3 composedMessage];
    [v9 setComposedMessage:v6];

    v7 = [v3 sender];
    [v9 setSenderImagePath:v7];

    v8 = [v3 activityIdentifier];
    [v9 setActivityIdentifier:v8];
    (*(*(a1 + 32) + 16))();
  }
}

void __90__LKLogEventController_enumurateLogEventsSynchronouslyFromDate_predicate_logEventHandler___block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) dynamicdsema];
  dispatch_semaphore_signal(v1);
}

- (void)enumuratePersistentLogsSynchronouslyFromDate:(id)a3 logArchivePath:(id)a4 predicate:(id)a5 logEventHandler:(id)a6
{
  v21[1] = *MEMORY[0x277D85DE8];
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  [v13 setLogArchive:v11];

  v14 = objc_alloc(MEMORY[0x277CCA920]);
  v21[0] = v10;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v16 = [v14 initWithType:1 subpredicates:v15];
  [v13 setPredicate:v16];

  [v13 setOptions:3];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __110__LKLogEventController_enumuratePersistentLogsSynchronouslyFromDate_logArchivePath_predicate_logEventHandler___block_invoke;
  v19[3] = &unk_279826290;
  v20 = v9;
  v17 = v9;
  [v13 enumerateFromStartDate:v12 toEndDate:0 withBlock:v19];

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __110__LKLogEventController_enumuratePersistentLogsSynchronouslyFromDate_logArchivePath_predicate_logEventHandler___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32))
  {
    v3 = a2;
    v4 = objc_opt_new();
    v5 = [v3 process];
    [v4 setProcess:v5];

    v6 = [v3 timestamp];
    [v4 setDate:v6];

    v7 = [v3 eventMessage];
    [v4 setComposedMessage:v7];

    v8 = [v3 sender];
    [v4 setSenderImagePath:v8];

    v9 = [v3 activityID];
    [v4 setActivityIdentifier:v9];
    (*(*(a1 + 32) + 16))();
  }

  return 1;
}

- (id)loginDetailsWithStartDate:(id)a3 logArchivePath:(id)a4
{
  v6 = a4;
  v7 = a3;
  if (v6)
  {
    v8 = [objc_opt_class() loginDetailsPredicate];
    v9 = [(LKLogEventController *)self logEventHandler];
    [(LKLogEventController *)self enumuratePersistentLogsSynchronouslyFromDate:v7 logArchivePath:v6 predicate:v8 logEventHandler:v9];
  }

  else
  {
    v10 = objc_opt_new();
    [(LKLogEventController *)self setLogEnumarationEndTime:v10];

    v8 = [objc_opt_class() loginDetailsPredicate];
    v9 = [(LKLogEventController *)self logEventHandler];
    [(LKLogEventController *)self enumurateLogEventsSynchronouslyFromDate:v7 predicate:v8 logEventHandler:v9];
  }

  v11 = [(LKLogEventController *)self switchOperationsMutableArray];
  v12 = [v11 copy];

  return v12;
}

@end