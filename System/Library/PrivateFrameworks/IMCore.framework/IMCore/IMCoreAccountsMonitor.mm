@interface IMCoreAccountsMonitor
+ (IMCoreAccountsMonitor)sharedInstance;
- (BOOL)isSignedIntoiCloud;
- (IMCoreAccountsMonitor)init;
- (id)_cachedPrimaryAppleAccount;
- (void)accountStoreDidChange:(id)change;
@end

@implementation IMCoreAccountsMonitor

- (IMCoreAccountsMonitor)init
{
  v12.receiver = self;
  v12.super_class = IMCoreAccountsMonitor;
  v2 = [(IMCoreAccountsMonitor *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_create("IMCoreAccountsMonitor", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v7 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v5, v6);
    v8 = *MEMORY[0x1E6959968];
    v9 = sub_1A8394BB0();
    objc_msgSend_addObserver_selector_name_object_(v7, v10, v2, sel_accountStoreDidChange_, v8, v9);
  }

  return v2;
}

+ (IMCoreAccountsMonitor)sharedInstance
{
  if (qword_1EB2EA0F0 != -1)
  {
    sub_1A84E2570();
  }

  v3 = qword_1EB2EA430;

  return v3;
}

- (BOOL)isSignedIntoiCloud
{
  v3 = objc_msgSend__cachedPrimaryAppleAccount(self, a2, v2);
  v4 = v3 != 0;

  return v4;
}

- (id)_cachedPrimaryAppleAccount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1A8259C40;
  v10 = sub_1A825AF4C;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A8394D98;
  v5[3] = &unk_1E78133A8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)accountStoreDidChange:(id)change
{
  v4 = objc_msgSend_userInfo(change, a2, change);
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, *MEMORY[0x1E69598B8]);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v7, *MEMORY[0x1E69597F8]);

  if (isEqualToString)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A8394FFC;
    block[3] = &unk_1E780FCB0;
    block[4] = self;
    dispatch_sync(queue, block);
  }
}

@end