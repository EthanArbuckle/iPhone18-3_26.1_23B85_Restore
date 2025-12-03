@interface IMCloudKitEventNotificationManagerRuntimeTest
- (id)createSyncStatisticsForMockSyncState:(id)state;
- (void)sendSyncStateChangedEvent;
- (void)setUp;
- (void)startTest;
- (void)tearDown;
- (void)updateMockSyncState;
@end

@implementation IMCloudKitEventNotificationManagerRuntimeTest

- (void)setUp
{
  v16.receiver = self;
  v16.super_class = IMCloudKitEventNotificationManagerRuntimeTest;
  [(IMRuntimeTest *)&v16 setUp];
  objc_msgSend_setDefaultTestDuration_(self, v3, v4, 1.0);
  v7 = objc_msgSend_singletonOverride(IMCloudKitHooks, v5, v6);
  objc_msgSend_setCloudKitHooks_(self, v8, v7);

  v11 = objc_msgSend_sharedInstance(IMCloudKitEventNotificationManager, v9, v10);
  objc_msgSend_addEventHandler_(v11, v12, self);

  v13 = objc_opt_class();
  v14 = NSStringFromClass(v13);
  objc_msgSend_testLog_(self, v15, @"Setting up test: %@", v14);
}

- (void)tearDown
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  objc_msgSend_testLog_(self, v5, @"Tearing down test: %@", v4);

  v8 = objc_msgSend_sharedInstance(IMCloudKitEventNotificationManager, v6, v7);
  objc_msgSend_removeEventHandler_(v8, v9, self);

  v12 = objc_msgSend_cloudKitHooks(self, v10, v11);
  v13 = objc_alloc_init(IMCloudKitMockSyncState);
  objc_msgSend_setTestState_(v12, v14, v13);

  objc_msgSend_setCloudKitHooks_(self, v15, 0);
  v16.receiver = self;
  v16.super_class = IMCloudKitEventNotificationManagerRuntimeTest;
  [(IMRuntimeTest *)&v16 tearDown];
}

- (id)createSyncStatisticsForMockSyncState:(id)state
{
  stateCopy = state;
  v6 = objc_msgSend_IMCloudKitSyncControllerSyncState(stateCopy, v4, v5);
  objc_msgSend_IMCloudKitSyncControllerSyncRecordType(stateCopy, v7, v8);

  return MEMORY[0x1EEE66B58](IMCloudKitSyncStatistics, sel__createSyncStatisticsDictionaryForSyncControllerSyncState_syncType_count_max_unresolved_, v6);
}

- (void)updateMockSyncState
{
  v4 = objc_msgSend_cloudKitHooks(self, a2, v2);
  v33 = objc_msgSend_testState(v4, v5, v6);

  objc_msgSend_setIMCloudKitSyncDate_(v33, v7, 0);
  objc_msgSend_setIMCloudKitIsSyncing_(v33, v8, 1);
  objc_msgSend_setIMCloudKitSyncControllerSyncType_(v33, v9, 2);
  objc_msgSend_setIMCloudKitIsEligibleForTruthZone_(v33, v10, 1);
  objc_msgSend_setIMCloudKitSyncingEnabled_(v33, v11, 1);
  objc_msgSend_setIMCloudKitSyncControllerSyncRecordType_(v33, v12, 1);
  objc_msgSend_willUpdateSyncState_(self, v13, v33);
  v15 = objc_msgSend_createSyncStatisticsForMockSyncState_(self, v14, v33);
  objc_msgSend_willSendSyncState_withSyncStatistics_(self, v16, v33, v15);
  v19 = objc_msgSend_cloudKitHooks(self, v17, v18);
  objc_msgSend_setSyncStats_(v19, v20, v15);

  v23 = objc_msgSend_sharedInstance(IMCloudKitHooks, v21, v22);
  v26 = objc_msgSend_syncStateDictionary(v23, v24, v25);
  objc_msgSend_testLog_(self, v27, @"Updated mock sync state to: %@, with sync stats: %@", v26, v15);

  v30 = objc_msgSend_cloudKitHooks(self, v28, v29);
  objc_msgSend_sendSyncChangedEvent(v30, v31, v32);
}

- (void)sendSyncStateChangedEvent
{
  objc_msgSend_updateMockSyncState(self, a2, v2);
  v6 = objc_msgSend_sharedInstance(IMCloudKitHooks, v4, v5);
  v9 = objc_msgSend_syncStateDictionary(v6, v7, v8);
  objc_msgSend_testLog_(self, v10, @"Sending fake syncState dictionary: %@", v9);

  v15 = objc_msgSend_cloudKitHooks(self, v11, v12);
  objc_msgSend_sendSyncChangedEvent(v15, v13, v14);
}

- (void)startTest
{
  objc_msgSend_defaultTestDuration(self, a2, v2);
  objc_msgSend_testLog_(self, v4, @"Running test for %f seconds", v5);
  objc_msgSend_updateMockSyncState(self, v6, v7);
  objc_msgSend_defaultTestDuration(self, v8, v9);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A8397118;
  v11[3] = &unk_1E780FCB0;
  v11[4] = self;
  objc_msgSend_dispatchAfter_block_(self, v10, v11);
}

@end