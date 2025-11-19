@interface MUISearchSenderQueryManager
+ (id)log;
- (MUISearchSenderQueryManager)initWithSenderRepository:(id)a3;
- (void)_relevantSendersFilterQuery;
@end

@implementation MUISearchSenderQueryManager

+ (id)log
{
  v0 = objc_opt_self();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__MUISearchSenderQueryManager_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v0;
  if (log_onceToken_18 != -1)
  {
    dispatch_once(&log_onceToken_18, block);
  }

  v1 = log_log_18;

  return v1;
}

void __34__MUISearchSenderQueryManager_log__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.email", [v4 UTF8String]);
  v3 = log_log_18;
  log_log_18 = v2;
}

- (MUISearchSenderQueryManager)initWithSenderRepository:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MUISearchSenderQueryManager;
  v6 = [(MUISearchSenderQueryManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_senderRepository, a3);
    v9 = [(MUISearchSenderQueryManager *)v7 _relevantSendersFilterQuery];
    senderFilterQueryFuture = v7->_senderFilterQueryFuture;
    v7->_senderFilterQueryFuture = v9;
  }

  return v7;
}

void __58__MUISearchSenderQueryManager__relevantSendersFilterQuery__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[MUISearchSenderQueryManager log];
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134217984;
      v13 = [v5 count];
      _os_log_impl(&dword_214A5E000, v8, OS_LOG_TYPE_DEFAULT, "Returned %ld senders", &v12, 0xCu);
    }

    v9 = [v5 ef_compactMap:&__block_literal_global_35];
    v10 = *(a1 + 32);
    v11 = [v9 componentsJoinedByString:@" || "];
    [v10 finishWithResult:v11];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __58__MUISearchSenderQueryManager__relevantSendersFilterQuery__block_invoke_cold_1(v6, v8);
    }

    [*(a1 + 32) finishWithError:v6];
  }
}

- (void)_relevantSendersFilterQuery
{
  v1 = a1;
  if (a1)
  {
    v2 = [MEMORY[0x277D071A8] promise];
    v3 = v1[1];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __58__MUISearchSenderQueryManager__relevantSendersFilterQuery__block_invoke;
    v6[3] = &unk_27818B070;
    v7 = v2;
    v4 = v2;
    [v3 simpleAddressesForRelevantSendersWithCompletion:v6];
    v1 = [v4 future];
  }

  return v1;
}

void __58__MUISearchSenderQueryManager__relevantSendersFilterQuery__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 ef_publicDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_214A5E000, a2, OS_LOG_TYPE_ERROR, "Error retrieving primary senders: %{public}@", &v4, 0xCu);
}

@end