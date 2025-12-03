@interface IDSMessageHashStore
+ (id)sharedInstance;
- (BOOL)containsMessageHash:(id)hash;
- (IDSMessageHashStore)init;
- (unint64_t)_currentLocalTime;
- (void)_runCleanup;
- (void)_setDatabaseCloseTimerOnIvarQueue;
- (void)_startCleanupTimer;
- (void)addMessageHash:(id)hash;
- (void)closeDatabase;
- (void)updateCreationDateForHash:(id)hash;
@end

@implementation IDSMessageHashStore

+ (id)sharedInstance
{
  if (qword_2814138A8 != -1)
  {
    sub_25473A8C8();
  }

  v3 = qword_281413898;

  return v3;
}

- (IDSMessageHashStore)init
{
  v11.receiver = self;
  v11.super_class = IDSMessageHashStore;
  v2 = [(IDSMessageHashStore *)&v11 init];
  if (v2)
  {
    v3 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_254737000, v3, OS_LOG_TYPE_DEFAULT, "Hash Store initialized", v10, 2u);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_UTILITY, 0);

    v6 = dispatch_queue_create("IDSHashMessageStore", v5);
    ivarQueue = v2->_ivarQueue;
    v2->_ivarQueue = v6;

    v2->_initialProcessTime = mach_continuous_time();
    [MEMORY[0x259C17E80](@"APSConnection" @"ApplePushService")];
    v2->_initialServerTime = v8;
    [(IDSMessageHashStore *)v2 _performInitialHousekeeping];
    [(IDSMessageHashStore *)v2 _startCleanupTimer];
  }

  return v2;
}

- (BOOL)containsMessageHash:(id)hash
{
  v22 = *MEMORY[0x277D85DE8];
  hashCopy = hash;
  v5 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = hashCopy;
    _os_log_impl(&dword_254737000, v5, OS_LOG_TYPE_DEFAULT, "Checking if message hash %@ is contained in the database", &buf, 0xCu);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v20 = 0x2020000000;
  v21 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_254739714;
  v14[3] = &unk_279782458;
  p_buf = &buf;
  v14[4] = self;
  v6 = hashCopy;
  v15 = v6;
  sub_254738470(v14);
  if (*(*(&buf + 1) + 24) == 1)
  {
    v7 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 138412290;
      v18 = v6;
      _os_log_impl(&dword_254737000, v7, OS_LOG_TYPE_DEFAULT, "Database reports that this message hash %@ has been seen before", v17, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }

    v8 = objc_alloc_init(MEMORY[0x277D189B8]);
    defaultLogger = [MEMORY[0x277D189A0] defaultLogger];
    [defaultLogger logMetric:v8];

    v10 = +[IDSHashPersistenceAWDLogging sharedInstance];
    [v10 duplicateMessageEncounted];

    v11 = *(*(&buf + 1) + 24);
  }

  else
  {
    v11 = 0;
  }

  _Block_object_dispose(&buf, 8);
  v12 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

- (void)addMessageHash:(id)hash
{
  hashCopy = hash;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_254739874;
  v11[3] = &unk_279782480;
  v11[4] = self;
  v5 = hashCopy;
  v12 = v5;
  sub_254738470(v11);
  ivarQueue = self->_ivarQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2547399DC;
  v8[3] = &unk_279782480;
  v9 = v5;
  selfCopy = self;
  v7 = v5;
  dispatch_async(ivarQueue, v8);
}

- (void)updateCreationDateForHash:(id)hash
{
  hashCopy = hash;
  ivarQueue = self->_ivarQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_254739D4C;
  v7[3] = &unk_279782480;
  v7[4] = self;
  v8 = hashCopy;
  v6 = hashCopy;
  dispatch_async(ivarQueue, v7);
}

- (unint64_t)_currentLocalTime
{
  info = 0xAAAAAAAAAAAAAAAALL;
  if (mach_timebase_info(&info))
  {
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    v5 = v4;
  }

  else
  {
    v6 = mach_continuous_time();
    initialProcessTime = [(IDSMessageHashStore *)self initialProcessTime];
    v8 = (v6 - initialProcessTime) * info.numer / info.denom;
    return [(IDSMessageHashStore *)self initialServerTime]+ v8 / 0x3B9ACA00;
  }

  return v5;
}

- (void)_setDatabaseCloseTimerOnIvarQueue
{
  sub_254738464();
  self->_databaseLastUpdateTime = CFAbsoluteTimeGetCurrent();
  if (!self->_databaseCloseTimer)
  {
    v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_ivarQueue);
    databaseCloseTimer = self->_databaseCloseTimer;
    self->_databaseCloseTimer = v3;

    v5 = self->_databaseCloseTimer;
    v6 = dispatch_time(0, 0x8BB2C90000);
    dispatch_source_set_timer(v5, v6, 0x7FFFFFFFFFFFFFFFuLL, 0xDF8474CCCuLL);
    v7 = self->_databaseCloseTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = sub_25473A1BC;
    handler[3] = &unk_279782230;
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_resume(self->_databaseCloseTimer);
  }
}

- (void)closeDatabase
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_254737000, v3, OS_LOG_TYPE_DEFAULT, "Closing database.", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_25473A384;
  v4[3] = &unk_279782230;
  v4[4] = self;
  sub_254738470(v4);
}

- (void)_startCleanupTimer
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_254737000, v3, OS_LOG_TYPE_DEBUG, "Scheduling Cleanup Timer", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_ivarQueue);
  v5 = qword_2814138B8;
  qword_2814138B8 = v4;

  v6 = qword_2814138B8;
  if (qword_2814138B8)
  {
    v7 = dispatch_time(0, 60000000000);
    dispatch_source_set_timer(v6, v7, 0x8BB2C97000uLL, 0x3B9ACA00uLL);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = sub_25473A564;
    handler[3] = &unk_279782230;
    handler[4] = self;
    dispatch_source_set_event_handler(qword_2814138B8, handler);
    dispatch_resume(qword_2814138B8);
  }
}

- (void)_runCleanup
{
  v3 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_254737000, v3, OS_LOG_TYPE_DEBUG, "Scheduling timer called", buf, 2u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_25473A684;
  v4[3] = &unk_279782230;
  v4[4] = self;
  sub_254738470(v4);
}

@end