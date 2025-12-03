@interface NRNewsDaemonBloomFilterInfoService
- (NRNewsDaemonBloomFilterInfoService)init;
- (void)_fetchBloomFilterInfoWithCompletion:(id)completion;
- (void)fetchWebURLBloomFilterInfoWithCompletion:(id)completion;
@end

@implementation NRNewsDaemonBloomFilterInfoService

- (NRNewsDaemonBloomFilterInfoService)init
{
  v10.receiver = self;
  v10.super_class = NRNewsDaemonBloomFilterInfoService;
  v2 = [(NRNewsDaemonBloomFilterInfoService *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D30E30]);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __42__NRNewsDaemonBloomFilterInfoService_init__block_invoke;
    v8[3] = &unk_2799A8E90;
    v4 = v2;
    v9 = v4;
    v5 = [v3 initWithBlock:v8];
    fetchOnceOperation = v4->_fetchOnceOperation;
    v4->_fetchOnceOperation = v5;
  }

  return v2;
}

uint64_t __42__NRNewsDaemonBloomFilterInfoService_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__NRNewsDaemonBloomFilterInfoService_init__block_invoke_2;
  v7[3] = &unk_2799A8E68;
  v8 = v4;
  v9 = v3;
  v5 = v3;
  [v8 _fetchBloomFilterInfoWithCompletion:v7];

  return 0;
}

void __42__NRNewsDaemonBloomFilterInfoService_init__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  obj = a2;
  v5 = a3;
  v6 = obj;
  if (!obj)
  {
    v6 = [MEMORY[0x277D35438] fc_fullBloomFilterInfo];
  }

  objc_storeStrong((*(a1 + 32) + 8), v6);
  if (!obj)
  {
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchWebURLBloomFilterInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  fetchOnceOperation = [(NRNewsDaemonBloomFilterInfoService *)self fetchOnceOperation];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__NRNewsDaemonBloomFilterInfoService_fetchWebURLBloomFilterInfoWithCompletion___block_invoke;
  v8[3] = &unk_2799A8EB8;
  v8[4] = self;
  v9 = completionCopy;
  v6 = completionCopy;
  v7 = [fetchOnceOperation executeWithCompletionHandler:v8];
}

void __79__NRNewsDaemonBloomFilterInfoService_fetchWebURLBloomFilterInfoWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) bloomFilterInfo];
  (*(v1 + 16))(v1, v2);
}

- (void)_fetchBloomFilterInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NRNewsDaemonBloomFilterInfoService _fetchBloomFilterInfoWithCompletion:];
  }

  v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.newsd.url-resolution" options:0];
  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286E17B40];
  v6 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v5 setClasses:v6 forSelector:sel_fetchWebURLBloomFilterInfoWithCompletion_ argumentIndex:0 ofReply:1];

  [v4 setRemoteObjectInterface:v5];
  [v4 resume];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__NRNewsDaemonBloomFilterInfoService__fetchBloomFilterInfoWithCompletion___block_invoke;
  v15[3] = &unk_2799A8EE0;
  v7 = completionCopy;
  v17 = v7;
  v8 = v4;
  v16 = v8;
  v9 = [v8 remoteObjectProxyWithErrorHandler:v15];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__NRNewsDaemonBloomFilterInfoService__fetchBloomFilterInfoWithCompletion___block_invoke_2;
  v12[3] = &unk_2799A8F08;
  v13 = v8;
  v14 = v7;
  v10 = v8;
  v11 = v7;
  [v9 fetchWebURLBloomFilterInfoWithCompletion:v12];
}

uint64_t __74__NRNewsDaemonBloomFilterInfoService__fetchBloomFilterInfoWithCompletion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

uint64_t __74__NRNewsDaemonBloomFilterInfoService__fetchBloomFilterInfoWithCompletion___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

- (void)_fetchBloomFilterInfoWithCompletion:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "completion"];
  *buf = 136315906;
  v3 = "[NRNewsDaemonBloomFilterInfoService _fetchBloomFilterInfoWithCompletion:]";
  v4 = 2080;
  v5 = "NRNewsDaemonBloomFilterInfoService.m";
  v6 = 1024;
  v7 = 55;
  v8 = 2114;
  v9 = v0;
  _os_log_error_impl(&dword_25C33C000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

@end