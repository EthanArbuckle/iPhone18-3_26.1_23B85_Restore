@interface IMCloudKitEventNotificationManager
+ (id)logHandle;
+ (id)sharedInstance;
- (BOOL)_hasProgressEventListeners;
- (BOOL)accountHasiMessageEnabled;
- (BOOL)didPromptForCloudKitSync;
- (IMCloudKitEventHandlerAccountInfoProvider)accountInfoProvider;
- (IMCloudKitEventNotificationManager)init;
- (IMCloudKitSyncState)syncState;
- (NSTimer)fetchStatsTimer;
- (id)logHandle;
- (id)syncStateWithDictionary:(id)dictionary;
- (void)_cancelStatsFetchingTimer;
- (void)_fetchSyncStateStatistics:(id)statistics;
- (void)_rescheduleFetchSyncProgress;
- (void)_sendHiddenProgressToEventListeners;
- (void)_sendProgressToEventListeners:(id)listeners;
- (void)_sendProgressToEventListenersDeferred;
- (void)_sendSyncStateChangedEventToEventListeners:(id)listeners;
- (void)_sendSyncStatisticsToEventHandlers:(id)handlers error:(id)error;
- (void)_syncStateDidChange:(id)change;
- (void)_timerExpiredForSyncStatsFetching:(id)fetching;
- (void)_updateProgressWithState:(id)state;
- (void)disableAllSyncEnabledCloudKitDevices;
- (void)fetchRampStateWithCompletion:(id)completion;
- (void)fetchSyncDebuggingInfo:(id)info;
- (void)fetchSyncState;
- (void)fetchSyncStateAfterClearingErrors;
- (void)fetchSyncStateAfterClearingErrorsWithRepairSuccess:(BOOL)success completion:(id)completion;
- (void)fetchSyncStateAfterFetchingAccountStatus;
- (void)fetchSyncStateStatistics;
- (void)fetchSyncStateStatisticsWithCompletion:(id)completion;
- (void)fetchSyncStateWithCompletion:(id)completion;
- (void)performAdditionalStorageRequiredCheck;
- (void)setCloudKitSyncEnabled:(BOOL)enabled;
- (void)setCloudKitSyncEnabled:(BOOL)enabled withCompletion:(id)completion;
- (void)startInitialSync;
- (void)startPeriodicSync;
- (void)startUserInitiatedSync;
@end

@implementation IMCloudKitEventNotificationManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8257A60;
  block[3] = &unk_1E78102B8;
  block[4] = self;
  if (qword_1ED767730 != -1)
  {
    dispatch_once(&qword_1ED767730, block);
  }

  v2 = qword_1EB2E9FC0;

  return v2;
}

- (IMCloudKitEventNotificationManager)init
{
  v13.receiver = self;
  v13.super_class = IMCloudKitEventNotificationManager;
  v2 = [(IMCloudKitEventNotificationManager *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_progressPollingInterval = 30.0;
    v4 = objc_alloc_init(MEMORY[0x1E69A8360]);
    eventHandlers = v3->_eventHandlers;
    v3->_eventHandlers = v4;

    v6 = objc_alloc_init(MEMORY[0x1E69A8068]);
    notificationManager = v3->_notificationManager;
    v3->_notificationManager = v6;

    v10 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v8, v9);
    objc_msgSend_addObserver_selector_name_object_(v10, v11, v3, sel__syncStateDidChange_, @"com.apple.IMCore.IMCloudKitHooks.ValuesChanged", 0);
  }

  return v3;
}

- (void)fetchSyncState
{
  v5 = objc_msgSend_cloudKitHooks(self, a2, v2);
  objc_msgSend_broadcastCloudKitState(v5, v3, v4);
}

- (BOOL)accountHasiMessageEnabled
{
  v4 = objc_msgSend_accountInfoProvider(self, a2, v2);

  if (!v4)
  {
    return 1;
  }

  v7 = objc_msgSend_accountInfoProvider(self, v5, v6);
  v9 = objc_msgSend_cloudKitEventNotificationManagerAccountHasiMessageEnabled_(v7, v8, self);

  return v9;
}

- (IMCloudKitEventHandlerAccountInfoProvider)accountInfoProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_accountInfoProvider);

  return WeakRetained;
}

- (id)logHandle
{
  v2 = objc_opt_class();

  return objc_msgSend_logHandle(v2, v3, v4);
}

+ (id)logHandle
{
  if (qword_1ED767778 != -1)
  {
    sub_1A825E148();
  }

  v3 = qword_1ED767760;

  return v3;
}

- (NSTimer)fetchStatsTimer
{
  WeakRetained = objc_loadWeakRetained(&self->_fetchStatsTimer);

  return WeakRetained;
}

- (BOOL)_hasProgressEventListeners
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1A82A6D1C;
  v4[3] = &unk_1E7810BB0;
  v4[4] = &v5;
  objc_msgSend_visitEventHandlers_(self, a2, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (IMCloudKitSyncState)syncState
{
  v4 = objc_msgSend_previousState(self, a2, v2);
  if (!v4)
  {
    v5 = [IMCloudKitSyncState alloc];
    v8 = objc_msgSend_accountHasiMessageEnabled(self, v6, v7);
    v11 = objc_msgSend_cloudKitHooks(self, v9, v10);
    v14 = objc_msgSend_syncStateDictionary(v11, v12, v13);
    v4 = objc_msgSend_initWithAccountEnabled_stateDictionary_(v5, v15, v8, v14);
  }

  return v4;
}

- (id)syncStateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [IMCloudKitSyncState alloc];
  v8 = objc_msgSend_accountHasiMessageEnabled(self, v6, v7);
  v10 = objc_msgSend_initWithAccountEnabled_stateDictionary_(v5, v9, v8, dictionaryCopy);

  return v10;
}

- (void)_sendSyncStateChangedEventToEventListeners:(id)listeners
{
  listenersCopy = listeners;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A82A4CC4;
  v7[3] = &unk_1E78109C8;
  v7[4] = self;
  v8 = listenersCopy;
  v5 = listenersCopy;
  objc_msgSend_visitEventHandlers_(self, v6, v7);
}

- (void)_syncStateDidChange:(id)change
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_userInfo(change, a2, change);
  v6 = objc_msgSend_syncStateWithDictionary_(self, v5, v4);

  objc_msgSend_setPreviousState_(self, v7, v6);
  v10 = objc_msgSend_logHandle(self, v8, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v14 = 138412290;
    v15 = v6;
    _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "received new sync state: %@", &v14, 0xCu);
  }

  objc_msgSend__sendSyncStateChangedEventToEventListeners_(self, v11, v6);
  objc_msgSend__updateProgressWithState_(self, v12, v6);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)fetchSyncStateAfterFetchingAccountStatus
{
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Requesting to broadcast CloudKit syncState after fetching account status", v9, 2u);
    }
  }

  v6 = objc_msgSend_cloudKitHooks(self, v3, v4);
  objc_msgSend_broadcastCloudKitStateAfterFetchingAccountStatus(v6, v7, v8);
}

- (void)fetchSyncStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = objc_msgSend_notificationManager(self, v5, v6);
  v9 = objc_msgSend_createEventListenerForNotificationName_object_(v7, v8, @"com.apple.IMCore.IMCloudKitHooks.ValuesChanged", 0);

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A82A4FF4;
  v12[3] = &unk_1E7810A10;
  v12[4] = self;
  v13 = completionCopy;
  v10 = completionCopy;
  objc_msgSend_startListeningForEventTarget_sendStartingEvent_completion_(v9, v11, self, &unk_1F1B6DF60, v12);
}

- (void)fetchRampStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v7 = objc_msgSend_notificationManager(self, v5, v6);
  v9 = objc_msgSend_createEventListenerForNotificationName_object_(v7, v8, @"IMCloudKitFetchedRampStateNotification", 0);

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A82A5228;
  v12[3] = &unk_1E7810A38;
  v13 = completionCopy;
  v10 = completionCopy;
  objc_msgSend_startListeningForEventTarget_sendStartingEvent_completion_(v9, v11, self, &unk_1F1B6DF80, v12);
}

- (void)fetchSyncStateAfterClearingErrors
{
  v4 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2);
  isMessagesIniCloudVersion2 = objc_msgSend_isMessagesIniCloudVersion2(v4, v5, v6);

  if ((isMessagesIniCloudVersion2 & 1) == 0)
  {
    v12 = objc_msgSend_cloudKitHooks(self, v8, v9);
    objc_msgSend_broadcastCloudKitStateAfterClearingErrors(v12, v10, v11);
  }
}

- (void)fetchSyncStateAfterClearingErrorsWithRepairSuccess:(BOOL)success completion:(id)completion
{
  completionCopy = completion;
  v9 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v7, v8);
  isMessagesIniCloudVersion2 = objc_msgSend_isMessagesIniCloudVersion2(v9, v10, v11);

  if ((isMessagesIniCloudVersion2 & 1) == 0)
  {
    v15 = objc_msgSend_notificationManager(self, v13, v14);
    v17 = objc_msgSend_createEventListenerForNotificationName_object_(v15, v16, @"com.apple.IMCore.IMCloudKitHooks.ValuesChanged", 0);

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1A82A5528;
    v19[3] = &unk_1E7810A60;
    v19[4] = self;
    v20 = completionCopy;
    successCopy = success;
    objc_msgSend_startListeningForEventTarget_sendStartingEvent_completion_(v17, v18, self, &unk_1F1B6DFA0, v19);
  }
}

- (void)setCloudKitSyncEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v18 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (enabledCopy)
      {
        v8 = @"YES";
      }

      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "set messages in cloud enabled: %@", buf, 0xCu);
    }
  }

  v9 = objc_msgSend_notificationManager(self, v5, v6);
  v11 = objc_msgSend_createEventListenerForNotificationName_object_(v9, v10, @"com.apple.IMCore.IMCloudKitHooks.SetEnabledReturned", 0);

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1A82A5998;
  v14[3] = &unk_1E7810AC8;
  v15 = enabledCopy;
  objc_msgSend_startListeningForEventTarget_sendStartingEvent_completion_(v11, v12, self, v14, &unk_1F1B6DFC0);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setCloudKitSyncEnabled:(BOOL)enabled withCompletion:(id)completion
{
  enabledCopy = enabled;
  v24 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v9 = objc_msgSend_logHandle(self, v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v23 = enabledCopy;
    _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "set messages in cloud enabled: %{BOOL}d", buf, 8u);
  }

  v12 = objc_msgSend_notificationManager(self, v10, v11);
  v14 = objc_msgSend_createEventListenerForNotificationName_object_(v12, v13, @"com.apple.IMCore.IMCloudKitHooks.SetEnabledReturned", 0);

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1A82A5B94;
  v20[3] = &unk_1E7810AC8;
  v21 = enabledCopy;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_1A82A5BE8;
  v18[3] = &unk_1E7810A38;
  v19 = completionCopy;
  v15 = completionCopy;
  objc_msgSend_startListeningForEventTarget_sendStartingEvent_completion_(v14, v16, self, v20, v18);

  v17 = *MEMORY[0x1E69E9840];
}

- (void)startPeriodicSync
{
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "beginning periodic sync", v9, 2u);
    }
  }

  v6 = objc_msgSend_cloudKitHooks(self, v3, v4);
  objc_msgSend_initiatePeriodicSync(v6, v7, v8);
}

- (void)startUserInitiatedSync
{
  v5 = objc_msgSend_cloudKitHooks(self, a2, v2);
  objc_msgSend_startUserInitiatedSync(v5, v3, v4);
}

- (void)startInitialSync
{
  v4 = objc_msgSend_logHandle(self, a2, v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "beginning initial sync", v9, 2u);
  }

  v7 = objc_msgSend_cloudKitHooks(self, v5, v6);
  objc_msgSend_initiateSync_forceRunNow_reply_(v7, v8, @"initial", 1, &unk_1F1B6DFE0);
}

- (BOOL)didPromptForCloudKitSync
{
  v3 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], a2, v2);
  v5 = objc_msgSend_objectForKey_(v3, v4, @"HasPromptedForMessagesInCloud");

  if (v5)
  {
    v8 = objc_msgSend_BOOLValue(v5, v6, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)disableAllSyncEnabledCloudKitDevices
{
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "attempting to disable all icloud devices", v10, 2u);
    }
  }

  v6 = objc_msgSend_notificationManager(self, v3, v4);
  v8 = objc_msgSend_createEventListenerForNotificationName_object_(v6, v7, @"com.apple.IMCore.IMCloudKitHooks.tryToDisableAllDevicesReturned", 0);

  objc_msgSend_startListeningForEventTarget_sendStartingEvent_completion_(v8, v9, self, &unk_1F1B6E020, &unk_1F1B6E000);
}

- (void)performAdditionalStorageRequiredCheck
{
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Check if additional storage is required", v10, 2u);
    }
  }

  v6 = objc_msgSend_notificationManager(self, v3, v4);
  v8 = objc_msgSend_createEventListenerForNotificationName_object_(v6, v7, @"com.apple.IMCore.IMCloudKitHooks.AdditionalStorageCheckReturned", 0);

  objc_msgSend_startListeningForEventTarget_sendStartingEvent_completion_(v8, v9, self, &unk_1F1B6E060, &unk_1F1B6E040);
}

- (void)_fetchSyncStateStatistics:(id)statistics
{
  statisticsCopy = statistics;
  v7 = objc_msgSend_logHandle(self, v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1A84DF518(v7);
  }

  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = sub_1A82A6800;
  v19 = &unk_1E7810A10;
  selfCopy = self;
  v21 = statisticsCopy;
  v8 = statisticsCopy;
  v9 = _Block_copy(&v16);
  v12 = objc_msgSend_notificationManager(self, v10, v11, v16, v17, v18, v19, selfCopy);
  v14 = objc_msgSend_createEventListenerForNotificationName_object_(v12, v13, @"IMCloudKitFetchedSyncStatsNotification", 0);

  objc_msgSend_startListeningForEventTarget_sendStartingEvent_completion_(v14, v15, self, &unk_1F1B6E080, v9);
}

- (void)_sendSyncStatisticsToEventHandlers:(id)handlers error:(id)error
{
  handlersCopy = handlers;
  errorCopy = error;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A82A6A5C;
  v11[3] = &unk_1E7810B38;
  v11[4] = self;
  v12 = handlersCopy;
  v13 = errorCopy;
  v8 = errorCopy;
  v9 = handlersCopy;
  objc_msgSend_visitEventHandlers_(self, v10, v11);
}

- (void)fetchSyncStateStatistics
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1A82A6B2C;
  v2[3] = &unk_1E7810B60;
  v2[4] = self;
  objc_msgSend__fetchSyncStateStatistics_(self, a2, v2);
}

- (void)fetchSyncStateStatisticsWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A82A6BD0;
  v7[3] = &unk_1E7810B88;
  v7[4] = self;
  v8 = completionCopy;
  v5 = completionCopy;
  objc_msgSend__fetchSyncStateStatistics_(self, v6, v7);
}

- (void)_cancelStatsFetchingTimer
{
  v4 = objc_msgSend_fetchStatsTimer(self, a2, v2);
  if (v4)
  {
    v8 = v4;
    objc_msgSend_invalidate(v4, v5, v6);
    objc_msgSend_setFetchStatsTimer_(self, v7, 0);
    v4 = v8;
  }
}

- (void)_timerExpiredForSyncStatsFetching:(id)fetching
{
  v4 = objc_msgSend_logHandle(self, a2, fetching);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Rescheduled sync progress: firing", v8, 2u);
  }

  objc_msgSend_fetchSyncState(self, v5, v6);
  objc_msgSend_setFetchStatsTimer_(self, v7, 0);
}

- (void)_rescheduleFetchSyncProgress
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_fetchStatsTimer(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_logHandle(self, v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      objc_msgSend_progressPollingInterval(self, v8, v9);
      v23 = 134217984;
      v24 = v10;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Rescheduled sync progress pending (interval %f secs)", &v23, 0xCu);
    }
  }

  else
  {
    objc_msgSend__cancelStatsFetchingTimer(self, v5, v6);
    v13 = objc_msgSend_logHandle(self, v11, v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      objc_msgSend_progressPollingInterval(self, v14, v15);
      v23 = 134217984;
      v24 = v16;
      _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Rescheduled sync progress for %f seconds in the future", &v23, 0xCu);
    }

    v17 = MEMORY[0x1E695DFF0];
    objc_msgSend_progressPollingInterval(self, v18, v19);
    v7 = objc_msgSend_scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_(v17, v20, self, sel__timerExpiredForSyncStatsFetching_, 0, 0);
    objc_msgSend_setFetchStatsTimer_(self, v21, v7);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)_sendProgressToEventListenersDeferred
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_progressToSend(self, a2, v2);
  objc_msgSend_setProgressToSend_(self, v5, 0);
  v8 = objc_msgSend_logHandle(self, v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = v4;
    _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Sending progress to event handlers: %@", buf, 0xCu);
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A82A700C;
  v12[3] = &unk_1E78109C8;
  v12[4] = self;
  v13 = v4;
  v9 = v4;
  objc_msgSend_visitEventHandlers_(self, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_sendProgressToEventListeners:(id)listeners
{
  listenersCopy = listeners;
  objc_msgSend_setProgressToSend_(self, v5, listenersCopy);
  v8 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v6, v7);
  isMessagesIniCloudVersion2 = objc_msgSend_isMessagesIniCloudVersion2(v8, v9, v10);

  if (isMessagesIniCloudVersion2)
  {
    objc_msgSend__sendProgressToEventListenersDeferred(self, v12, v13);
  }

  else
  {
    objc_msgSend_progressBroadcastDelay(self, v12, v13);
    v15 = v14;
    objc_msgSend_broadcastDeferralOverride(listenersCopy, v16, v17);
    if (v15 <= v20)
    {
      objc_msgSend_broadcastDeferralOverride(listenersCopy, v18, v19);
    }

    else
    {
      objc_msgSend_progressBroadcastDelay(self, v18, v19);
    }

    v24 = v23;
    v25 = objc_msgSend_logHandle(self, v21, v22);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      sub_1A84DF6D0(v25, v24);
    }

    objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x1E69E58C0], v26, self, sel__sendProgressToEventListenersDeferred, 0);
    objc_msgSend_performSelector_withObject_afterDelay_(self, v27, sel__sendProgressToEventListenersDeferred, 0, v24);
  }
}

- (void)_sendHiddenProgressToEventListeners
{
  v3 = [IMCloudKitSyncProgress alloc];
  v6 = objc_msgSend_initWithType_syncState_syncStatistics_(v3, v4, 2, 0, 0);
  objc_msgSend__sendProgressToEventListeners_(self, v5, v6);
}

- (void)_updateProgressWithState:(id)state
{
  stateCopy = state;
  v7 = objc_msgSend_fetchStatsTimer(self, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_logHandle(self, v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v19 = 0;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Rescheduled sync progress: cancelled", v19, 2u);
    }

    objc_msgSend__cancelStatsFetchingTimer(self, v11, v12);
  }

  if (objc_msgSend__hasProgressEventListeners(self, v8, v9))
  {
    v15 = objc_msgSend_logHandle(self, v13, v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      sub_1A84DF74C(v15);
    }

    v17 = objc_msgSend_createSyncProgressWithSyncStatistics_(stateCopy, v16, 0);
    objc_msgSend__sendProgressToEventListeners_(self, v18, v17);
  }
}

- (void)fetchSyncDebuggingInfo:(id)info
{
  infoCopy = info;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Fetching sync state debugging info…", buf, 2u);
    }
  }

  v8 = objc_msgSend_notificationManager(self, v5, v6);
  v10 = objc_msgSend_createEventListenerForNotificationName_object_(v8, v9, @"IMCloudKitFetchedSyncDebuggingInfoNotification", 0);

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1A82A76E0;
  v13[3] = &unk_1E7810C00;
  v14 = infoCopy;
  v11 = infoCopy;
  objc_msgSend_startListeningForEventTarget_sendStartingEvent_completion_(v10, v12, self, v13, &unk_1F1B6E0A0);
}

@end