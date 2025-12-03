@interface BRFetchQuotaOperation
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
@end

@implementation BRFetchQuotaOperation

- (void)main
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  selfCopy = self;
  _os_log_debug_impl(&dword_1AE2A9000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] fetching available quota%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)finishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  fetchQuotaCompletionBlock = [(BRFetchQuotaOperation *)self fetchQuotaCompletionBlock];
  v9 = fetchQuotaCompletionBlock;
  if (fetchQuotaCompletionBlock)
  {
    (*(fetchQuotaCompletionBlock + 16))(fetchQuotaCompletionBlock, resultCopy, errorCopy);
    [(BRFetchQuotaOperation *)self setFetchQuotaCompletionBlock:0];
  }

  v10.receiver = self;
  v10.super_class = BRFetchQuotaOperation;
  [(BROperation *)&v10 finishWithResult:resultCopy error:errorCopy];
}

@end