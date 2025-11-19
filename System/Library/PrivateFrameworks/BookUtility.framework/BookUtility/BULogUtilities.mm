@interface BULogUtilities
+ (id)shared;
- (BOOL)verboseLoggingEnabled;
- (BULogUtilities)init;
- (BULogUtilities)initWithUserDefaults:(id)a3 keyPath:(id)a4;
- (void)dealloc;
- (void)observeDefaults;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation BULogUtilities

+ (id)shared
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241DA98F4;
  block[3] = &unk_278D1CD30;
  block[4] = a1;
  if (qword_280BC5DA8 != -1)
  {
    dispatch_once(&qword_280BC5DA8, block);
  }

  v2 = qword_280BC5DB0;

  return v2;
}

- (BULogUtilities)init
{
  v4 = objc_msgSend_books(BUAppGroup, a2, v2);
  v7 = objc_msgSend_userDefaults(v4, v5, v6);

  v9 = objc_msgSend_initWithUserDefaults_keyPath_(self, v8, v7, @"buVerboseLoggingEnabled");
  return v9;
}

- (void)observeDefaults
{
  v8 = objc_msgSend_defaults(self, a2, v2);
  v6 = objc_msgSend_keyPath(self, v4, v5);
  objc_msgSend_addObserver_forKeyPath_options_context_(v8, v7, self, v6, 5, 0);
}

- (BOOL)verboseLoggingEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_241DA9C40;
  v5[3] = &unk_278D1CE00;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BULogUtilities)initWithUserDefaults:(id)a3 keyPath:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v30.receiver = self;
  v30.super_class = BULogUtilities;
  v8 = [(BULogUtilities *)&v30 init];
  v10 = v8;
  if (v8)
  {
    objc_msgSend_setDefaults_(v8, v9, v6);
    objc_msgSend_setKeyPath_(v10, v11, v7);
    v14 = objc_msgSend_defaults(v10, v12, v13);
    v16 = objc_msgSend_BOOLForKey_(v14, v15, v7);
    objc_msgSend_setBuVerboseLoggingEnabled_(v10, v17, v16);

    v18 = dispatch_queue_create("BULogUtilities.access", MEMORY[0x277D85CD8]);
    accessQueue = v10->_accessQueue;
    v10->_accessQueue = v18;

    objc_msgSend_observeDefaults(v10, v20, v21);
    v22 = BookUtilityLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v25 = objc_msgSend_keyPath(v10, v23, v24);
      v28 = objc_msgSend_buVerboseLoggingEnabled(v10, v26, v27);
      *buf = 138412546;
      v32 = v25;
      v33 = 1024;
      v34 = v28;
      _os_log_impl(&dword_241DA6000, v22, OS_LOG_TYPE_DEFAULT, "BULogUtilities: Init with %@:%{BOOL}d", buf, 0x12u);
    }
  }

  return v10;
}

- (void)dealloc
{
  v4 = objc_msgSend_defaults(self, a2, v2);
  v7 = objc_msgSend_keyPath(self, v5, v6);
  objc_msgSend_removeObserver_forKeyPath_(v4, v8, self, v7);

  v9.receiver = self;
  v9.super_class = BULogUtilities;
  [(BULogUtilities *)&v9 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a3;
  v10 = objc_opt_class();
  v12 = objc_msgSend_objectForKeyedSubscript_(v8, v11, *MEMORY[0x277CCA2F0]);

  v13 = BUDynamicCast(v10, v12);
  v16 = objc_msgSend_BOOLValue(v13, v14, v15);

  v17 = BookUtilityLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v20 = objc_msgSend_keyPath(self, v18, v19);
    *buf = 138412546;
    v30 = v20;
    v31 = 1024;
    v32 = v16;
    _os_log_impl(&dword_241DA6000, v17, OS_LOG_TYPE_DEFAULT, "BULogUtilities: Received change for keypath %@:%{BOOL}d", buf, 0x12u);
  }

  v23 = objc_msgSend_keyPath(self, v21, v22);
  isEqualToString = objc_msgSend_isEqualToString_(v9, v24, v23);

  if (isEqualToString)
  {
    accessQueue = self->_accessQueue;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_241DB5574;
    v27[3] = &unk_278D1D280;
    v27[4] = self;
    v28 = v16;
    dispatch_barrier_sync(accessQueue, v27);
  }
}

@end