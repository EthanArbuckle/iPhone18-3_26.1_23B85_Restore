@interface BCCloudKitTransaction
- (BCCloudKitTransaction)initWithEntityName:(id)name delegate:(id)delegate;
- (BCCloudKitTransactionDelegate)delegate;
- (id)transactionName;
- (void)clientConnected;
- (void)laq_scheduleTransactionLifetime;
- (void)performWorkWithCompletion:(id)completion;
- (void)signal;
@end

@implementation BCCloudKitTransaction

- (BCCloudKitTransaction)initWithEntityName:(id)name delegate:(id)delegate
{
  nameCopy = name;
  delegateCopy = delegate;
  v32.receiver = self;
  v32.super_class = BCCloudKitTransaction;
  v8 = [(BCCloudKitTransaction *)&v32 init];
  if (v8)
  {
    v9 = [nameCopy copy];
    entityName = v8->_entityName;
    v8->_entityName = v9;

    objc_storeWeak(&v8->_delegate, delegateCopy);
    v11 = [BDSOSTransaction alloc];
    transactionName = [(BCCloudKitTransaction *)v8 transactionName];
    v13 = -[BDSOSTransaction initWithTransactionName:](v11, "initWithTransactionName:", [transactionName cStringUsingEncoding:4]);
    osTransaction = v8->_osTransaction;
    v8->_osTransaction = v13;

    transactionName2 = [(BCCloudKitTransaction *)v8 transactionName];
    v16 = [@"com.apple.iBooks.CloudKitTransaction." stringByAppendingString:transactionName2];

    v17 = [v16 cStringUsingEncoding:4];
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create(v17, v18);
    lifecycleAccessQueue = v8->_lifecycleAccessQueue;
    v8->_lifecycleAccessQueue = v19;

    objc_initWeak(&location, v8);
    v21 = objc_alloc(MEMORY[0x1E698F548]);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = sub_1E46198F4;
    v29[3] = &unk_1E875A1E8;
    objc_copyWeak(&v30, &location);
    v22 = MEMORY[0x1E696AEC0];
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = [v22 stringWithFormat:@"_coalescedNotification in %@", v24];
    v26 = [v21 initWithNotifyBlock:v29 notifyTimeout:10 blockDescription:v25 notifyTimeoutBlock:&unk_1F5E61F48];
    coalescedNotification = v8->_coalescedNotification;
    v8->_coalescedNotification = v26;

    [(BCCloudKitTransaction *)v8 coalescingDelay];
    [(BUCoalescingCallBlock *)v8->_coalescedNotification setCoalescingDelay:?];
    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return v8;
}

- (id)transactionName
{
  v3 = objc_opt_class();
  entityName = [(BCCloudKitTransaction *)self entityName];
  v5 = [v3 transactionNameForEntityName:entityName];

  return v5;
}

- (void)performWorkWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

- (void)clientConnected
{
  lifecycleAccessQueue = [(BCCloudKitTransaction *)self lifecycleAccessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E4619B80;
  block[3] = &unk_1E875A008;
  block[4] = self;
  dispatch_async(lifecycleAccessQueue, block);
}

- (void)signal
{
  v13 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
  verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

  if (verboseLoggingEnabled)
  {
    v5 = BDSCloudKitDevelopmentLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      transactionName = [(BCCloudKitTransaction *)self transactionName];
      *buf = 138412290;
      v12 = transactionName;
      _os_log_impl(&dword_1E45E0000, v5, OS_LOG_TYPE_DEFAULT, "\\Transaction signaling for %@\\"", buf, 0xCu);
    }
  }

  objc_initWeak(buf, self);
  coalescedNotification = [(BCCloudKitTransaction *)self coalescedNotification];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1E4619DB0;
  v9[3] = &unk_1E875A230;
  v9[4] = self;
  objc_copyWeak(&v10, buf);
  [coalescedNotification signalWithCompletion:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)laq_scheduleTransactionLifetime
{
  v17 = *MEMORY[0x1E69E9840];
  transactionLifetime = [(BCCloudKitTransaction *)self transactionLifetime];

  if (!transactionLifetime)
  {
    mEMORY[0x1E698F550] = [MEMORY[0x1E698F550] shared];
    verboseLoggingEnabled = [mEMORY[0x1E698F550] verboseLoggingEnabled];

    if (verboseLoggingEnabled)
    {
      v6 = BDSCloudKitDevelopmentLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        transactionName = [(BCCloudKitTransaction *)self transactionName];
        *buf = 138412290;
        v16 = transactionName;
        _os_log_impl(&dword_1E45E0000, v6, OS_LOG_TYPE_DEFAULT, "\\Transaction scheduletransactionLifetime for %@\\"", buf, 0xCu);
      }
    }

    lifecycleAccessQueue = [(BCCloudKitTransaction *)self lifecycleAccessQueue];
    v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, lifecycleAccessQueue);

    v10 = dispatch_time(0, 5000000000);
    dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0xBEBC200uLL);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1E461A228;
    handler[3] = &unk_1E875A008;
    handler[4] = self;
    dispatch_source_set_event_handler(v9, handler);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1E461A340;
    v13[3] = &unk_1E875A008;
    v13[4] = self;
    dispatch_source_set_cancel_handler(v9, v13);
    [(BCCloudKitTransaction *)self setTransactionLifetime:v9];
    transactionLifetime2 = [(BCCloudKitTransaction *)self transactionLifetime];
    dispatch_resume(transactionLifetime2);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BCCloudKitTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end