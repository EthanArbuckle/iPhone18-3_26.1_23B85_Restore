@interface IMCloudKitSyncProgressRuntimeTest
- (id)createSyncStatisticsForMockSyncState:(id)a3;
- (void)cloudKitEventNotificationManager:(id)a3 syncProgressDidUpdate:(id)a4;
- (void)setUp;
- (void)startTest;
@end

@implementation IMCloudKitSyncProgressRuntimeTest

- (void)cloudKitEventNotificationManager:(id)a3 syncProgressDidUpdate:(id)a4
{
  objc_msgSend_testLog_(self, a2, @"Test got syncState progress: %@", a4);
  objc_msgSend_progressRescheduleDelay(self, v5, v6);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A8316274;
  v8[3] = &unk_1E780FCB0;
  v8[4] = self;
  objc_msgSend_dispatchAfter_block_(self, v7, v8);
}

- (void)startTest
{
  objc_msgSend_testLog_(self, a2, @"Starting test");

  MEMORY[0x1EEE66B58](self, sel_sendSyncStateChangedEvent, v3);
}

- (id)createSyncStatisticsForMockSyncState:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_IMCloudKitSyncControllerSyncState(v4, v5, v6);
  objc_msgSend_IMCloudKitSyncControllerSyncRecordType(v4, v8, v9);

  objc_msgSend_progressCount(self, v10, v11);
  objc_msgSend_maxProgressCount(self, v12, v13);

  return MEMORY[0x1EEE66B58](IMCloudKitSyncStatistics, sel__createSyncStatisticsDictionaryForSyncControllerSyncState_syncType_count_max_unresolved_, v7);
}

- (void)setUp
{
  v5.receiver = self;
  v5.super_class = IMCloudKitSyncProgressRuntimeTest;
  [(IMCloudKitEventNotificationManagerRuntimeTest *)&v5 setUp];
  objc_msgSend_setProgressRescheduleDelay_(self, v3, v4, 3.0);
}

@end