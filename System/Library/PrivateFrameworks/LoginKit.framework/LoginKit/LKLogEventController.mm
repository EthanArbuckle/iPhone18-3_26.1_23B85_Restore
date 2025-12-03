@interface LKLogEventController
+ (id)loginDetailsPredicate;
- (BOOL)_isKeychainLog:(id)log;
- (BOOL)_needToParseSecurityLogs;
- (LKLogEventController)init;
- (id)logEventHandler;
- (id)loginDetailsWithStartDate:(id)date logArchivePath:(id)path;
- (void)_handleKeychainItemEventFromLogEvent:(id)event;
- (void)_parseBuddLog:(id)log;
- (void)_parseKeychainLog:(id)log;
- (void)_parseSpringBoardLog:(id)log;
- (void)_parseUserManagementFrameworkLog:(id)log;
- (void)enumurateLogEventsSynchronouslyFromDate:(id)date predicate:(id)predicate logEventHandler:(id)handler;
- (void)enumuratePersistentLogsSynchronouslyFromDate:(id)date logArchivePath:(id)path predicate:(id)predicate logEventHandler:(id)handler;
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

- (void)_parseBuddLog:(id)log
{
  logCopy = log;
  if ([logCopy containsMessage:@"Buddy: Starting EMCS Recovery..."])
  {
    v5 = LKLogDefault;
    if (os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25618F000, v5, OS_LOG_TYPE_DEFAULT, "LoginDetails: EMCS Recovery started", buf, 2u);
    }

    recoverEMCSOperation = objc_opt_new();
    date = [logCopy date];
    [recoverEMCSOperation setStartTime:date];

    switchOperation = [(LKLogEventController *)self switchOperation];
    [switchOperation setRecoverEMCSOperation:recoverEMCSOperation];
    goto LABEL_10;
  }

  if ([logCopy containsMessage:@"Buddy: EMCS recovery completed"])
  {
    switchOperation2 = [(LKLogEventController *)self switchOperation];
    recoverEMCSOperation = [switchOperation2 recoverEMCSOperation];

    v10 = LKLogDefault;
    v11 = os_log_type_enabled(LKLogDefault, OS_LOG_TYPE_DEFAULT);
    if (!recoverEMCSOperation)
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

    date2 = [logCopy date];
    [recoverEMCSOperation setEndTime:date2];

    switchOperation = [recoverEMCSOperation endTime];
    startTime = [recoverEMCSOperation startTime];
    [switchOperation timeIntervalSinceDate:startTime];
    [recoverEMCSOperation setDuration:?];

LABEL_10:
LABEL_11:
  }
}

- (void)_parseSpringBoardLog:(id)log
{
  logCopy = log;
  if (![logCopy containsMessage:@"Startup transition completed."])
  {
    goto LABEL_9;
  }

  date = [logCopy date];
  switchOperation = [(LKLogEventController *)self switchOperation];
  [switchOperation setEndTime:date];

  switchOperation2 = [(LKLogEventController *)self switchOperation];
  endTime = [switchOperation2 endTime];
  if (!endTime)
  {
    goto LABEL_5;
  }

  v8 = endTime;
  switchOperation3 = [(LKLogEventController *)self switchOperation];
  startTime = [switchOperation3 startTime];

  if (startTime)
  {
    switchOperation2 = [(LKLogEventController *)self switchOperation];
    endTime2 = [switchOperation2 endTime];
    switchOperation4 = [(LKLogEventController *)self switchOperation];
    startTime2 = [switchOperation4 startTime];
    [endTime2 timeIntervalSinceDate:startTime2];
    v15 = v14;
    switchOperation5 = [(LKLogEventController *)self switchOperation];
    [switchOperation5 setDuration:v15];

LABEL_5:
  }

  switchOperation6 = [(LKLogEventController *)self switchOperation];
  switchType = [switchOperation6 switchType];

  if (switchType)
  {
    switchOperationsMutableArray = [(LKLogEventController *)self switchOperationsMutableArray];
    switchOperation7 = [(LKLogEventController *)self switchOperation];
    dictionary = [switchOperation7 dictionary];
    [switchOperationsMutableArray addObject:dictionary];
  }

  v22 = objc_opt_new();
  [(LKLogEventController *)self setSwitchOperation:v22];

LABEL_9:

  MEMORY[0x2821F96F8]();
}

- (void)_parseUserManagementFrameworkLog:(id)log
{
  logCopy = log;
  if ([logCopy containsMessage:@"switch to user"])
  {
    v4 = logCopy;
    v5 = 1;
  }

  else if ([logCopy containsMessage:@"direct switch to User"])
  {
    v4 = logCopy;
    v5 = 3;
  }

  else if ([logCopy containsMessage:@"Logout to LoginSession Screen"])
  {
    v4 = logCopy;
    v5 = 2;
  }

  else
  {
    if (![logCopy containsMessage:@"switch to login screen"])
    {
      goto LABEL_10;
    }

    v4 = logCopy;
    v5 = 4;
  }

  date = [v4 date];
  switchOperation = [(LKLogEventController *)self switchOperation];
  [switchOperation setStartTime:date];

  switchOperation2 = [(LKLogEventController *)self switchOperation];
  [switchOperation2 setSwitchType:v5];

LABEL_10:
}

- (void)_parseKeychainLog:(id)log
{
  logCopy = log;
  if ([logCopy containsMessage:@"SecItemAdd_ios"])
  {
    [(LKLogEventController *)self _handleKeychainItemEventFromLogEvent:logCopy];
    goto LABEL_11;
  }

  if ([logCopy containsMessage:@"inserted <"])
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(logCopy, "activityIdentifier")}];
    mutableKeychainItemsAddedByActivityID = [(LKLogEventController *)self mutableKeychainItemsAddedByActivityID];
    v6 = [mutableKeychainItemsAddedByActivityID objectForKeyedSubscript:v4];

    if (!v6)
    {
LABEL_10:

      goto LABEL_11;
    }

    composedMessage = [logCopy composedMessage];
    if (([composedMessage containsString:@"vwht=null"] & 1) == 0)
    {
      composedMessage2 = [logCopy composedMessage];
      v9 = [composedMessage2 containsString:@"sysb=null"];

      if (!v9)
      {
LABEL_9:
        mutableKeychainItemsAddedByActivityID2 = [(LKLogEventController *)self mutableKeychainItemsAddedByActivityID];
        [mutableKeychainItemsAddedByActivityID2 setObject:0 forKeyedSubscript:v4];

        goto LABEL_10;
      }

      composedMessage3 = [logCopy composedMessage];
      [v6 setKeychainItemAdded:composedMessage3];

      composedMessage = [(LKLogEventController *)self switchOperation];
      [composedMessage addKeychainItemAdditionEvent:v6];
    }

    goto LABEL_9;
  }

LABEL_11:
}

- (BOOL)_isKeychainLog:(id)log
{
  logCopy = log;
  if ([logCopy loggedByProcess:@"securityd"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [logCopy loggedByFramework:@"Security"];
  }

  return v4;
}

- (BOOL)_needToParseSecurityLogs
{
  switchOperation = [(LKLogEventController *)self switchOperation];
  recoverEMCSOperation = [switchOperation recoverEMCSOperation];
  if (recoverEMCSOperation)
  {
    switchOperation2 = [(LKLogEventController *)self switchOperation];
    recoverEMCSOperation2 = [switchOperation2 recoverEMCSOperation];
    endTime = [recoverEMCSOperation2 endTime];
    if (endTime)
    {
      v8 = 1;
LABEL_9:

      goto LABEL_10;
    }
  }

  switchOperation3 = [(LKLogEventController *)self switchOperation];
  if ([switchOperation3 switchType] == 2)
  {
    v8 = 1;
  }

  else
  {
    switchOperation4 = [(LKLogEventController *)self switchOperation];
    v8 = [switchOperation4 switchType] == 3;
  }

  if (recoverEMCSOperation)
  {
    endTime = 0;
    goto LABEL_9;
  }

LABEL_10:

  return v8;
}

- (void)_handleKeychainItemEventFromLogEvent:(id)event
{
  eventCopy = event;
  v15 = [LKLogKeychainItemAdditionEvent eventFromLKLogEvent:eventCopy];
  mutableKeychainItemsAddedByActivityID = [(LKLogEventController *)self mutableKeychainItemsAddedByActivityID];
  v6 = MEMORY[0x277CCABB0];
  activityIdentifier = [eventCopy activityIdentifier];

  *&v8 = activityIdentifier;
  v9 = [v6 numberWithFloat:v8];
  [mutableKeychainItemsAddedByActivityID setObject:v15 forKeyedSubscript:v9];

  switchOperation = [(LKLogEventController *)self switchOperation];
  recoverEMCSOperation = [switchOperation recoverEMCSOperation];

  if (recoverEMCSOperation)
  {
    startTime = [recoverEMCSOperation startTime];
    if (startTime)
    {
      v13 = startTime;
      endTime = [recoverEMCSOperation endTime];

      if (!endTime)
      {
        [recoverEMCSOperation setRecoveredKeychainItemCount:{objc_msgSend(recoverEMCSOperation, "recoveredKeychainItemCount") + 1}];
      }
    }
  }
}

- (void)enumurateLogEventsSynchronouslyFromDate:(id)date predicate:(id)predicate logEventHandler:(id)handler
{
  dateCopy = date;
  predicateCopy = predicate;
  handlerCopy = handler;
  localStore = [MEMORY[0x277D24438] localStore];
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
  [localStore prepareWithCompletionHandler:v22];
  v12 = dispatch_semaphore_create(0);
  [(LKLogEventController *)self setDynamicdsema:v12];

  [(LKLogEventController *)self setStreamingLogs:1];
  v13 = objc_alloc(MEMORY[0x277D24440]);
  v14 = [v13 initWithSource:v24[5]];
  v15 = enumurateLogEventsSynchronouslyFromDate_predicate_logEventHandler__stream;
  enumurateLogEventsSynchronouslyFromDate_predicate_logEventHandler__stream = v14;

  [enumurateLogEventsSynchronouslyFromDate_predicate_logEventHandler__stream setFlags:21];
  [enumurateLogEventsSynchronouslyFromDate_predicate_logEventHandler__stream setFilterPredicate:predicateCopy];
  v16 = enumurateLogEventsSynchronouslyFromDate_predicate_logEventHandler__stream;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __90__LKLogEventController_enumurateLogEventsSynchronouslyFromDate_predicate_logEventHandler___block_invoke_2;
  v20[3] = &unk_279826240;
  v17 = handlerCopy;
  v21 = v17;
  [v16 setEventHandler:v20];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __90__LKLogEventController_enumurateLogEventsSynchronouslyFromDate_predicate_logEventHandler___block_invoke_3;
  v19[3] = &unk_279826268;
  v19[4] = self;
  [enumurateLogEventsSynchronouslyFromDate_predicate_logEventHandler__stream setInvalidationHandler:v19];
  [enumurateLogEventsSynchronouslyFromDate_predicate_logEventHandler__stream activateStreamFromDate:dateCopy];
  dynamicdsema = [(LKLogEventController *)self dynamicdsema];
  dispatch_semaphore_wait(dynamicdsema, 0xFFFFFFFFFFFFFFFFLL);

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

- (void)enumuratePersistentLogsSynchronouslyFromDate:(id)date logArchivePath:(id)path predicate:(id)predicate logEventHandler:(id)handler
{
  v21[1] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  predicateCopy = predicate;
  pathCopy = path;
  dateCopy = date;
  v13 = objc_opt_new();
  [v13 setLogArchive:pathCopy];

  v14 = objc_alloc(MEMORY[0x277CCA920]);
  v21[0] = predicateCopy;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
  v16 = [v14 initWithType:1 subpredicates:v15];
  [v13 setPredicate:v16];

  [v13 setOptions:3];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __110__LKLogEventController_enumuratePersistentLogsSynchronouslyFromDate_logArchivePath_predicate_logEventHandler___block_invoke;
  v19[3] = &unk_279826290;
  v20 = handlerCopy;
  v17 = handlerCopy;
  [v13 enumerateFromStartDate:dateCopy toEndDate:0 withBlock:v19];

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

- (id)loginDetailsWithStartDate:(id)date logArchivePath:(id)path
{
  pathCopy = path;
  dateCopy = date;
  if (pathCopy)
  {
    loginDetailsPredicate = [objc_opt_class() loginDetailsPredicate];
    logEventHandler = [(LKLogEventController *)self logEventHandler];
    [(LKLogEventController *)self enumuratePersistentLogsSynchronouslyFromDate:dateCopy logArchivePath:pathCopy predicate:loginDetailsPredicate logEventHandler:logEventHandler];
  }

  else
  {
    v10 = objc_opt_new();
    [(LKLogEventController *)self setLogEnumarationEndTime:v10];

    loginDetailsPredicate = [objc_opt_class() loginDetailsPredicate];
    logEventHandler = [(LKLogEventController *)self logEventHandler];
    [(LKLogEventController *)self enumurateLogEventsSynchronouslyFromDate:dateCopy predicate:loginDetailsPredicate logEventHandler:logEventHandler];
  }

  switchOperationsMutableArray = [(LKLogEventController *)self switchOperationsMutableArray];
  v12 = [switchOperationsMutableArray copy];

  return v12;
}

@end