@interface NRNewsURLResolutionOperation
- (BOOL)validateOperation;
- (NRNewsURLResolutionOperation)init;
- (NRNewsURLResolutionOperation)initWithNewsURL:(id)l;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
- (void)validateOperation;
@end

@implementation NRNewsURLResolutionOperation

- (NRNewsURLResolutionOperation)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NRNewsURLResolutionOperation init]";
    v10 = 2080;
    v11 = "NRNewsURLResolutionOperation.m";
    v12 = 1024;
    v13 = 32;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25C33C000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NRNewsURLResolutionOperation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NRNewsURLResolutionOperation)initWithNewsURL:(id)l
{
  lCopy = l;
  if (!lCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NRNewsURLResolutionOperation initWithNewsURL:];
  }

  v9.receiver = self;
  v9.super_class = NRNewsURLResolutionOperation;
  v5 = [(FCOperation *)&v9 init];
  if (v5)
  {
    v6 = [lCopy copy];
    newsURL = v5->_newsURL;
    v5->_newsURL = v6;
  }

  return v5;
}

- (BOOL)validateOperation
{
  newsURL = [(NRNewsURLResolutionOperation *)self newsURL];

  if (!newsURL && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NRNewsURLResolutionOperation validateOperation];
  }

  return newsURL != 0;
}

- (void)performOperation
{
  newsURL = [(NRNewsURLResolutionOperation *)self newsURL];
  if ([newsURL nr_isNewsURL])
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.newsd.url-resolution" options:0];
    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286E17B40];
    v6 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    [v5 setClasses:v6 forSelector:sel_resolveNewsURL_withCompletion_ argumentIndex:0 ofReply:1];

    [v4 setRemoteObjectInterface:v5];
    [v4 resume];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __48__NRNewsURLResolutionOperation_performOperation__block_invoke_2;
    v12[3] = &unk_2799A8F58;
    v12[4] = self;
    v7 = v4;
    v13 = v7;
    v8 = [v7 remoteObjectProxyWithErrorHandler:v12];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __48__NRNewsURLResolutionOperation_performOperation__block_invoke_3;
    v10[3] = &unk_2799A8F80;
    v10[4] = self;
    v11 = v7;
    v9 = v7;
    [v8 resolveNewsURL:newsURL withCompletion:v10];
  }

  else
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __48__NRNewsURLResolutionOperation_performOperation__block_invoke;
    v14[3] = &unk_2799A8F30;
    v14[4] = self;
    __48__NRNewsURLResolutionOperation_performOperation__block_invoke(v14);
  }
}

void __48__NRNewsURLResolutionOperation_performOperation__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"NRErrorDomain" code:2 userInfo:0];
  [*(a1 + 32) finishedPerformingOperationWithError:v2];
}

uint64_t __48__NRNewsURLResolutionOperation_performOperation__block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) finishedPerformingOperationWithError:a2];
  v3 = *(a1 + 40);

  return [v3 invalidate];
}

uint64_t __48__NRNewsURLResolutionOperation_performOperation__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setResultWebURL:a2];
  [*(a1 + 32) finishedPerformingOperationWithError:v6];

  v7 = *(a1 + 40);

  return [v7 invalidate];
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  resolutionCompletion = [(NRNewsURLResolutionOperation *)self resolutionCompletion];

  if (resolutionCompletion)
  {
    resolutionCompletion2 = [(NRNewsURLResolutionOperation *)self resolutionCompletion];
    resultWebURL = [(NRNewsURLResolutionOperation *)self resultWebURL];
    (resolutionCompletion2)[2](resolutionCompletion2, resultWebURL, errorCopy);
  }
}

- (void)initWithNewsURL:.cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "newsURL != nil"];
  *buf = 136315906;
  v3 = "[NRNewsURLResolutionOperation initWithNewsURL:]";
  v4 = 2080;
  v5 = "NRNewsURLResolutionOperation.m";
  v6 = 1024;
  v7 = 37;
  v8 = 2114;
  v9 = v0;
  _os_log_error_impl(&dword_25C33C000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

- (void)validateOperation
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"news url resolution operation requires URL"];
  v2 = 136315906;
  v3 = "[NRNewsURLResolutionOperation validateOperation]";
  v4 = 2080;
  v5 = "NRNewsURLResolutionOperation.m";
  v6 = 1024;
  v7 = 53;
  v8 = 2114;
  v9 = v0;
  _os_log_error_impl(&dword_25C33C000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v2, 0x26u);

  v1 = *MEMORY[0x277D85DE8];
}

@end