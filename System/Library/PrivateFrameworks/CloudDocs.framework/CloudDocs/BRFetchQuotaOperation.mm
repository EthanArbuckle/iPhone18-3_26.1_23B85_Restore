@interface BRFetchQuotaOperation
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)main;
@end

@implementation BRFetchQuotaOperation

- (void)main
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1AE2A9000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] fetching available quota%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BRFetchQuotaOperation *)self fetchQuotaCompletionBlock];
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8, v6, v7);
    [(BRFetchQuotaOperation *)self setFetchQuotaCompletionBlock:0];
  }

  v10.receiver = self;
  v10.super_class = BRFetchQuotaOperation;
  [(BROperation *)&v10 finishWithResult:v6 error:v7];
}

@end