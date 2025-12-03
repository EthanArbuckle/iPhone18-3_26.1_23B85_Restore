@interface IMCloudKitEventNotificationRuntimeTestSuite
+ (void)runTestsIfNeeded;
- (IMCloudKitEventNotificationRuntimeTestSuite)init;
- (void)cloudKitEventNotificationManager:(id)manager syncProgressDidUpdate:(id)update;
- (void)setUp;
- (void)tearDown;
@end

@implementation IMCloudKitEventNotificationRuntimeTestSuite

- (IMCloudKitEventNotificationRuntimeTestSuite)init
{
  v25.receiver = self;
  v25.super_class = IMCloudKitEventNotificationRuntimeTestSuite;
  v2 = [(IMRuntimeTestSuite *)&v25 init];
  if (v2)
  {
    IMSetAlwaysUseSingletonProxies();
    objc_msgSend_setTestSuiteStartDelay_(v2, v3, v4, 5.0);
    v5 = objc_alloc_init(IMCloudKitSyncProgressRuntimeTestUploading);
    objc_msgSend_addTest_(v2, v6, v5);

    v7 = objc_alloc_init(IMCloudKitSyncProgressRuntimeTestDownloading);
    objc_msgSend_addTest_(v2, v8, v7);

    v9 = objc_alloc_init(IMCloudKitSyncProgressRuntimeTestDeleting);
    objc_msgSend_addTest_(v2, v10, v9);

    v11 = objc_alloc_init(IMCloudKitSyncProgressRuntimeTestPreparing);
    objc_msgSend_addTest_(v2, v12, v11);

    v13 = objc_alloc_init(IMCloudKitSyncProgressRuntimeTestPaused);
    objc_msgSend_addTest_(v2, v14, v13);

    v15 = [IMCloudKitErrorProgressTest alloc];
    v17 = objc_msgSend_initWithErrorCode_(v15, v16, 3);
    objc_msgSend_addTest_(v2, v18, v17);

    v19 = [IMCloudKitErrorProgressTest alloc];
    v21 = objc_msgSend_initWithErrorCode_(v19, v20, 6);
    objc_msgSend_addTest_(v2, v22, v21);

    objc_msgSend_testLog_(v2, v23, @"installed tests");
  }

  return v2;
}

- (void)setUp
{
  v28.receiver = self;
  v28.super_class = IMCloudKitEventNotificationRuntimeTestSuite;
  [(IMRuntimeTest *)&v28 setUp];
  objc_msgSend_setShouldTearDown_(self, v3, 0);
  objc_msgSend_testLog_(self, v4, @"Setting up cloudkit hooks, etc");
  v7 = objc_msgSend_sharedInstance(IMCloudKitEventNotificationManager, v5, v6);
  objc_msgSend_progressBroadcastDelay(v7, v8, v9);
  objc_msgSend_setTestStartDelay_(self, v11, v12, v10 + 2.0);

  v13 = objc_alloc_init(IMCloudKitHookTestSingleton);
  objc_msgSend_setCloudKitHooks_(self, v14, v13);

  v17 = objc_msgSend_cloudKitHooks(self, v15, v16);
  objc_msgSend_overrideSingletonWithObject_(IMCloudKitHooks, v18, v17);

  v21 = objc_msgSend_sharedInstance(IMCloudKitEventNotificationManager, v19, v20);
  objc_msgSend_addEventHandler_(v21, v22, self);

  v25 = objc_msgSend_cloudKitHooks(self, v23, v24);
  v26 = objc_alloc_init(IMCloudKitMockSyncState);
  objc_msgSend_setTestState_(v25, v27, v26);
}

- (void)cloudKitEventNotificationManager:(id)manager syncProgressDidUpdate:(id)update
{
  if (objc_msgSend_shouldTearDown(self, a2, manager, update))
  {
    objc_msgSend_setShouldTearDown_(self, v5, 0);
    objc_msgSend_testLog_(self, v6, @"Actually Tearing down cloudkit hooks");
    objc_msgSend_removeSingletonOverride(IMCloudKitHooks, v7, v8);
    objc_msgSend_setCloudKitHooks_(self, v9, 0);
    v13 = objc_msgSend_sharedInstance(IMCloudKitEventNotificationManager, v10, v11);
    objc_msgSend_removeEventHandler_(v13, v12, self);
  }
}

- (void)tearDown
{
  objc_msgSend_setShouldTearDown_(self, a2, 1);
  v5 = objc_msgSend_cloudKitHooks(self, v3, v4);
  v6 = objc_alloc_init(IMCloudKitMockSyncState);
  objc_msgSend_setTestState_(v5, v7, v6);

  v8.receiver = self;
  v8.super_class = IMCloudKitEventNotificationRuntimeTestSuite;
  [(IMRuntimeTest *)&v8 tearDown];
}

+ (void)runTestsIfNeeded
{
  v4 = objc_msgSend_standardUserDefaults(MEMORY[0x1E695E000], a2, v2);
  v6 = objc_msgSend_integerForKey_(v4, v5, @"cloudkit-sync-ui-tests");

  if (v6 >= 1)
  {
    objc_msgSend_testLog_(self, v7, @"user default cloudkit-sync-ui-tests == %ld, starting runtime tests", v6);

    MEMORY[0x1EEE66B58](self, sel_runTestsIfNeededWithRepeatCount_, v6);
  }
}

@end