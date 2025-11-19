@interface NRWebURLResolutionOperation
- (BOOL)validateOperation;
- (NRWebURLResolutionOperation)init;
- (NRWebURLResolutionOperation)initWithWebURL:(id)a3 bloomFilterInfoService:(id)a4;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
- (void)validateOperation;
@end

@implementation NRWebURLResolutionOperation

- (NRWebURLResolutionOperation)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NRWebURLResolutionOperation init]";
    v10 = 2080;
    v11 = "NRWebURLResolutionOperation.m";
    v12 = 1024;
    v13 = 35;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25C33C000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NRWebURLResolutionOperation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NRWebURLResolutionOperation)initWithWebURL:(id)a3 bloomFilterInfoService:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NRWebURLResolutionOperation initWithWebURL:bloomFilterInfoService:];
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NRWebURLResolutionOperation initWithWebURL:bloomFilterInfoService:];
  }

LABEL_6:
  v12.receiver = self;
  v12.super_class = NRWebURLResolutionOperation;
  v8 = [(FCOperation *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    webURL = v8->_webURL;
    v8->_webURL = v9;

    objc_storeStrong(&v8->_bloomFilterInfoService, a4);
  }

  return v8;
}

- (BOOL)validateOperation
{
  v3 = [(NRWebURLResolutionOperation *)self webURL];

  if (!v3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NRWebURLResolutionOperation validateOperation];
  }

  v4 = [(NRWebURLResolutionOperation *)self bloomFilterInfoService];

  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NRWebURLResolutionOperation validateOperation];
  }

  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  return !v5;
}

- (void)performOperation
{
  v3 = [(NRWebURLResolutionOperation *)self webURL];
  if ([v3 nr_isWebURL])
  {
    v4 = [(NRWebURLResolutionOperation *)self bloomFilterInfoService];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __47__NRWebURLResolutionOperation_performOperation__block_invoke_2;
    v5[3] = &unk_2799A8FA8;
    v6 = v3;
    v7 = self;
    [v4 fetchWebURLBloomFilterInfoWithCompletion:v5];
  }

  else
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__NRWebURLResolutionOperation_performOperation__block_invoke;
    v8[3] = &unk_2799A8F30;
    v8[4] = self;
    __47__NRWebURLResolutionOperation_performOperation__block_invoke(v8);
  }
}

void __47__NRWebURLResolutionOperation_performOperation__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NRErrorDomain" code:1 userInfo:0];
  [*(a1 + 32) finishedPerformingOperationWithError:v2];
}

void __47__NRWebURLResolutionOperation_performOperation__block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 fc_maybeContainsURL:*(a1 + 32)])
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.newsd.url-resolution" options:0];
    v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286E17B40];
    v5 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    [v4 setClasses:v5 forSelector:sel_resolveWebURL_withCompletion_ argumentIndex:0 ofReply:1];

    [v3 setRemoteObjectInterface:v4];
    [v3 resume];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __47__NRWebURLResolutionOperation_performOperation__block_invoke_4;
    v12[3] = &unk_2799A8F58;
    v12[4] = *(a1 + 40);
    v6 = v3;
    v13 = v6;
    v7 = [v6 remoteObjectProxyWithErrorHandler:v12];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __47__NRWebURLResolutionOperation_performOperation__block_invoke_5;
    v10[3] = &unk_2799A8F80;
    v8 = *(a1 + 32);
    v10[4] = *(a1 + 40);
    v11 = v6;
    v9 = v6;
    [v7 resolveWebURL:v8 withCompletion:v10];
  }

  else
  {
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __47__NRWebURLResolutionOperation_performOperation__block_invoke_3;
    v17 = &unk_2799A8F30;
    [*(a1 + 40) finishedPerformingOperationWithError:0];
  }
}

uint64_t __47__NRWebURLResolutionOperation_performOperation__block_invoke_4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) finishedPerformingOperationWithError:a2];
  v3 = *(a1 + 40);

  return [v3 invalidate];
}

uint64_t __47__NRWebURLResolutionOperation_performOperation__block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setResultNewsURL:a2];
  [*(a1 + 32) finishedPerformingOperationWithError:v6];

  v7 = *(a1 + 40);

  return [v7 invalidate];
}

- (void)operationWillFinishWithError:(id)a3
{
  v7 = a3;
  v4 = [(NRWebURLResolutionOperation *)self resolutionCompletion];

  if (v4)
  {
    v5 = [(NRWebURLResolutionOperation *)self resolutionCompletion];
    v6 = [(NRWebURLResolutionOperation *)self resultNewsURL];
    (v5)[2](v5, v6, v7);
  }
}

- (void)initWithWebURL:bloomFilterInfoService:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "webURL != nil"];
  v3 = 136315906;
  v4 = "[NRWebURLResolutionOperation initWithWebURL:bloomFilterInfoService:]";
  v5 = 2080;
  v6 = "NRWebURLResolutionOperation.m";
  v7 = 1024;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_25C33C000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v3);

  v2 = *MEMORY[0x277D85DE8];
}

- (void)initWithWebURL:bloomFilterInfoService:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "bloomFilterInfoService != nil"];
  v3 = 136315906;
  v4 = "[NRWebURLResolutionOperation initWithWebURL:bloomFilterInfoService:]";
  v5 = 2080;
  v6 = "NRWebURLResolutionOperation.m";
  v7 = 1024;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_25C33C000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v3);

  v2 = *MEMORY[0x277D85DE8];
}

- (void)validateOperation
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"web URL resolution operations requires a bloom filter info service"];
  v3 = 136315906;
  v4 = "[NRWebURLResolutionOperation validateOperation]";
  v5 = 2080;
  v6 = "NRWebURLResolutionOperation.m";
  v7 = 1024;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25C33C000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v3);

  v2 = *MEMORY[0x277D85DE8];
}

@end