@interface NPKGreenTeaDataUsageResolver
+ (id)sharedInstance;
+ (void)resolveGreenTeaDataUsageIfNecessary;
- (NPKGreenTeaDataUsageResolver)init;
- (void)resolveGreenTeaDataUsageIfNecessary;
@end

@implementation NPKGreenTeaDataUsageResolver

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[NPKGreenTeaDataUsageResolver sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

void __46__NPKGreenTeaDataUsageResolver_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(NPKGreenTeaDataUsageResolver);
  v1 = sharedInstance_sharedInstance_0;
  sharedInstance_sharedInstance_0 = v0;
}

+ (void)resolveGreenTeaDataUsageIfNecessary
{
  v2 = +[NPKGreenTeaDataUsageResolver sharedInstance];
  [v2 resolveGreenTeaDataUsageIfNecessary];
}

- (NPKGreenTeaDataUsageResolver)init
{
  v6.receiver = self;
  v6.super_class = NPKGreenTeaDataUsageResolver;
  v2 = [(NPKGreenTeaDataUsageResolver *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.NanoPassbookDataUsageREsolver", 0);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v3;
  }

  return v2;
}

- (void)resolveGreenTeaDataUsageIfNecessary
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__NPKGreenTeaDataUsageResolver_resolveGreenTeaDataUsageIfNecessary__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __67__NPKGreenTeaDataUsageResolver_resolveGreenTeaDataUsageIfNecessary__block_invoke(uint64_t a1)
{
  if (MGGetBoolAnswer() && MGGetBoolAnswer())
  {
    v2 = pk_Payment_log();
    v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);

    if (v3)
    {
      v4 = pk_Payment_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v4, OS_LOG_TYPE_DEFAULT, "Notice: Device may need data usage resolution", buf, 2u);
      }
    }

    v5 = *(a1 + 32);
    if (*(v5 + 8) == 1)
    {
      v6 = pk_Payment_log();
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

      if (v7)
      {
        v8 = pk_Payment_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Currently resolving data usage", buf, 2u);
        }
      }
    }

    else
    {
      *(v5 + 8) = 1;
      v9 = *(a1 + 32);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __67__NPKGreenTeaDataUsageResolver_resolveGreenTeaDataUsageIfNecessary__block_invoke_6;
      v10[3] = &unk_279944F98;
      v10[4] = v9;
      [v9 _resolveGreenTeaDataUsageIfNecessaryWithCompletion:v10];
    }
  }
}

void __67__NPKGreenTeaDataUsageResolver_resolveGreenTeaDataUsageIfNecessary__block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__NPKGreenTeaDataUsageResolver_resolveGreenTeaDataUsageIfNecessary__block_invoke_2;
  block[3] = &unk_279944F98;
  block[4] = v1;
  dispatch_async(v2, block);
}

@end