@interface IMSyncedSettingsManager
+ (IMSyncedSettingsManager)sharedManager;
- (IMSyncedSettingsManager)init;
- (id)settingValueForKey:(int64_t)key;
@end

@implementation IMSyncedSettingsManager

+ (IMSyncedSettingsManager)sharedManager
{
  if (qword_1EB2E9FA0 != -1)
  {
    sub_1A84DF93C();
  }

  v3 = qword_1EB2E9FA8;

  return v3;
}

- (IMSyncedSettingsManager)init
{
  v20.receiver = self;
  v20.super_class = IMSyncedSettingsManager;
  v4 = [(IMSyncedSettingsManager *)&v20 init];
  if (v4)
  {
    v5 = objc_msgSend_sharedController(IMDaemonController, v2, v3);
    v7 = objc_msgSend_multiplexedConnectionWithLabel_capabilities_context_(v5, v6, @"IMSyncedSettingsManager", 0x20000000, 0);

    objc_msgSend_connectWithCompletion_(v7, v8, &unk_1F1B6E2A0);
    v9 = [IMSyncedSettingsManager_Impl alloc];
    v12 = objc_msgSend_sharedController(IMDaemonController, v10, v11);
    v15 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v13, v14);
    v17 = objc_msgSend_initWithDaemonController_connection_notificationCenter_(v9, v16, v12, v7, v15);
    impl = v4->_impl;
    v4->_impl = v17;
  }

  return v4;
}

- (id)settingValueForKey:(int64_t)key
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1A8259B20;
  v11 = sub_1A825AEBC;
  v12 = 0;
  impl = self->_impl;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A82C2CB4;
  v6[3] = &unk_1E78114F8;
  v6[4] = &v7;
  objc_msgSend_settingValueForKey_reply_(impl, a2, key, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

@end