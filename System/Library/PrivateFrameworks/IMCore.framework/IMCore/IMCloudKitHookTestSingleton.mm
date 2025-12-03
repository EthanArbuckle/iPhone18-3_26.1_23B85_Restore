@interface IMCloudKitHookTestSingleton
+ (id)logHandle;
- (BOOL)isStartingSync;
- (IMCloudKitHookTestSingleton)init;
- (id)logHandle;
- (void)fetchSyncStateStatistics;
- (void)sendSyncChangedEvent;
- (void)setControllerSyncState:(unint64_t)state;
- (void)setControllerSyncType:(int64_t)type;
- (void)setIMCloudKitSyncErrors:(id)errors;
- (void)setLastSyncDate:(id)date;
- (void)setTestState:(id)state;
@end

@implementation IMCloudKitHookTestSingleton

- (IMCloudKitHookTestSingleton)init
{
  v13.receiver = self;
  v13.super_class = IMCloudKitHookTestSingleton;
  v2 = [(IMCloudKitHookTestSingleton *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF20]);
    v4 = objc_alloc_init(MEMORY[0x1E695DF20]);
    v6 = objc_msgSend__createSyncStatisticsDictionary_messageSyncCount_messageUnresolvedCount_chatCount_chatSyncCount_chatUnresolvedCount_attachmentCount_attachmentSyncCount_attachmentUnresolvedCount_serverRecordCounts_syncStoreCounts_(IMCloudKitSyncStatistics, v5, 0, 0, 0, 0, 0, 0, 0, 0, 0, v3, v4);
    syncStats = v2->_syncStats;
    v2->_syncStats = v6;

    v8 = objc_alloc_init(IMCloudKitMockSyncState);
    testState = v2->_testState;
    v2->_testState = v8;

    objc_msgSend_setIMCloudKitSyncingEnabled_(v2->_testState, v10, 1);
    objc_msgSend_setIMCloudKitIsEligibleForTruthZone_(v2->_testState, v11, 1);
  }

  return v2;
}

+ (id)logHandle
{
  if (qword_1ED767780 != -1)
  {
    sub_1A84E2584();
  }

  v3 = qword_1ED767768;

  return v3;
}

- (id)logHandle
{
  v2 = objc_opt_class();

  return objc_msgSend_logHandle(v2, v3, v4);
}

- (void)setTestState:(id)state
{
  objc_storeStrong(&self->_testState, state);

  objc_msgSend_sendSyncChangedEvent(self, v4, v5);
}

- (void)fetchSyncStateStatistics
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8395378;
  block[3] = &unk_1E780FCB0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)sendSyncChangedEvent
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_sharedInstance(IMCloudKitHooks, a2, v2);
  v7 = objc_msgSend_syncStateDictionary(v4, v5, v6);

  v10 = objc_msgSend_logHandle(self, v8, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = v7;
    _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Sending fake state: %@ from IMCloudKitHooksTestSingleton", &v16, 0xCu);
  }

  v13 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v11, v12);
  objc_msgSend_postNotificationName_object_userInfo_(v13, v14, @"com.apple.IMCore.IMCloudKitHooks.ValuesChanged", 0, v7);

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)isStartingSync
{
  if (objc_msgSend_IMCloudKitStartingInitialSync(self->_testState, a2, v2))
  {
    return 1;
  }

  testState = self->_testState;

  return objc_msgSend_IMCloudKitStartingPeriodicSync(testState, v4, v5);
}

- (void)setLastSyncDate:(id)date
{
  objc_msgSend_setIMCloudKitSyncDate_(self->_testState, a2, date);

  objc_msgSend_sendSyncChangedEvent(self, v4, v5);
}

- (void)setControllerSyncState:(unint64_t)state
{
  objc_msgSend_setIMCloudKitSyncControllerSyncState_(self->_testState, a2, state);

  MEMORY[0x1EEE66B58](self, sel_setSyncing_, state == 0);
}

- (void)setControllerSyncType:(int64_t)type
{
  objc_msgSend_setIMCloudKitSyncControllerSyncType_(self->_testState, a2, type);

  objc_msgSend_sendSyncChangedEvent(self, v4, v5);
}

- (void)setIMCloudKitSyncErrors:(id)errors
{
  objc_msgSend_setIMCloudKitSyncErrors_(self->_testState, a2, errors);

  objc_msgSend_sendSyncChangedEvent(self, v4, v5);
}

@end