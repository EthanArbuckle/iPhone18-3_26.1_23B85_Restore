@interface EDCoreAnalyticAccountMapperService
+ (OS_os_log)log;
- (EDCoreAnalyticAccountMapperService)initWithAccountProvider:(id)a3;
- (id)_allActiveMailAccounts;
- (id)_convertMailAccountToAccountMapper;
- (id)getFileNameURL;
- (unint64_t)findAccountId:(id)a3;
- (unint64_t)numberOfActiveAccounts;
- (void)_retrieveFromDisk;
- (void)saveToDisk;
- (void)validate;
@end

@implementation EDCoreAnalyticAccountMapperService

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__EDCoreAnalyticAccountMapperService_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_34 != -1)
  {
    dispatch_once(&log_onceToken_34, block);
  }

  v2 = log_log_34;

  return v2;
}

void __41__EDCoreAnalyticAccountMapperService_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_34;
  log_log_34 = v1;
}

- (EDCoreAnalyticAccountMapperService)initWithAccountProvider:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = EDCoreAnalyticAccountMapperService;
  v6 = [(EDCoreAnalyticAccountMapperService *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accountsProvider, a3);
    v8 = objc_alloc_init(MEMORY[0x1E696AD10]);
    lock = v7->_lock;
    v7->_lock = v8;

    [(EDCoreAnalyticAccountMapperService *)v7 _retrieveFromDisk];
  }

  return v7;
}

- (id)_convertMailAccountToAccountMapper
{
  v2 = [(EDCoreAnalyticAccountMapperService *)self _allActiveMailAccounts];
  v3 = objc_alloc_init(EDCoreAnalyticAccountMapper);
  v4 = [MEMORY[0x1E695DF00] date];
  [(EDCoreAnalyticAccountMapper *)v3 setDate:v4];

  [(EDCoreAnalyticAccountMapper *)v3 setAccounts:v2];

  return v3;
}

- (void)validate
{
  v16 = [MEMORY[0x1E695DF00] date];
  v3 = [(EDCoreAnalyticAccountMapperService *)self accountMapper];
  if (!v3)
  {
    goto LABEL_3;
  }

  v4 = [MEMORY[0x1E695DEE8] currentCalendar];
  v5 = [(EDCoreAnalyticAccountMapperService *)self accountMapper];
  v6 = [v5 date];
  v7 = [v4 isDate:v6 inSameDayAsDate:v16];

  if ((v7 & 1) == 0)
  {
LABEL_3:
    v8 = [(EDCoreAnalyticAccountMapperService *)self lock];
    [v8 lock];

    [(EDCoreAnalyticAccountMapperService *)self _retrieveFromDisk];
    v9 = [MEMORY[0x1E695DEE8] currentCalendar];
    v10 = [(EDCoreAnalyticAccountMapperService *)self accountMapper];
    v11 = [v10 date];
    v12 = [v9 isDate:v11 inSameDayAsDate:v16];

    if ((v12 & 1) == 0)
    {
      v13 = [(EDCoreAnalyticAccountMapperService *)self _convertMailAccountToAccountMapper];
      accountMapper = self->_accountMapper;
      self->_accountMapper = v13;

      [(EDCoreAnalyticAccountMapperService *)self saveToDisk];
    }

    v15 = [(EDCoreAnalyticAccountMapperService *)self lock];
    [v15 unlock];
  }
}

- (unint64_t)findAccountId:(id)a3
{
  v4 = a3;
  [(EDCoreAnalyticAccountMapperService *)self validate];
  v5 = [(EDCoreAnalyticAccountMapperService *)self accountMapper];
  v6 = [v5 indexOfAccountId:v4];

  return v6;
}

- (unint64_t)numberOfActiveAccounts
{
  [(EDCoreAnalyticAccountMapperService *)self validate];
  v3 = [(EDCoreAnalyticAccountMapperService *)self accountMapper];
  v4 = [v3 accounts];
  v5 = [v4 count];

  return v5;
}

- (void)saveToDisk
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "[BlackPearl][AccountMapper] Failed to remove temporary read URL [%@] error [%@]", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)_retrieveFromDisk
{
  v5 = [(EDCoreAnalyticAccountMapperService *)self getFileNameURL];
  v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:?];
  if (v3)
  {
    v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:0];
    if (v4)
    {
      [(EDCoreAnalyticAccountMapperService *)self setAccountMapper:v4];
    }
  }
}

- (id)getFileNameURL
{
  v2 = [MEMORY[0x1E699AE20] mailDataDirectory];
  v3 = [v2 URLByAppendingPathComponent:@"CAAccountMapper.plist"];

  return v3;
}

- (id)_allActiveMailAccounts
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(EDCoreAnalyticAccountMapperService *)self accountsProvider];

  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = [(EDCoreAnalyticAccountMapperService *)self accountsProvider];
    v6 = [v5 mailAccounts];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __60__EDCoreAnalyticAccountMapperService__allActiveMailAccounts__block_invoke;
    v15[3] = &unk_1E8251FD0;
    v7 = v4;
    v16 = v7;
    [v6 enumerateObjectsUsingBlock:v15];

    v8 = [v7 sortedArrayUsingComparator:&__block_literal_global_22];
    v9 = +[EDCoreAnalyticAccountMapperService log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(EDCoreAnalyticAccountMapperService *)self accountsProvider];
      v11 = [v10 mailAccounts];
      v12 = [v11 count];
      *buf = 138412546;
      v18 = v8;
      v19 = 2048;
      v20 = v12;
      _os_log_impl(&dword_1C61EF000, v9, OS_LOG_TYPE_DEFAULT, "[BlackPearl][AccountMapper] list of Active accounts in order : %@ mailAccounts total count %lu", buf, 0x16u);
    }
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v13 = *MEMORY[0x1E69E9840];

  return v8;
}

void __60__EDCoreAnalyticAccountMapperService__allActiveMailAccounts__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 isActive] && objc_msgSend(v6, "conformsToProtocol:", &unk_1F4628C10))
  {
    v3 = v6;
    if (([v3 isLocalAccount] & 1) == 0)
    {
      v4 = *(a1 + 32);
      v5 = [v3 identifier];
      [v4 addObject:v5];
    }
  }
}

@end