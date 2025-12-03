@interface BRShareAcceptOperation
- (BRShareAcceptOperation)initWithShareLink:(id)link;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
@end

@implementation BRShareAcceptOperation

- (BRShareAcceptOperation)initWithShareLink:(id)link
{
  linkCopy = link;
  v9.receiver = self;
  v9.super_class = BRShareAcceptOperation;
  v6 = [(BROperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_shareLink, link);
  }

  return v7;
}

- (void)main
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(self + 296);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __30__BRShareAcceptOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 url];
  [v4 completedWithResult:v6 error:v5];
}

- (void)finishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  shareAcceptCompletionBlock = [(BRShareAcceptOperation *)self shareAcceptCompletionBlock];
  v9 = shareAcceptCompletionBlock;
  if (shareAcceptCompletionBlock)
  {
    (*(shareAcceptCompletionBlock + 16))(shareAcceptCompletionBlock, resultCopy, errorCopy);
    [(BRShareAcceptOperation *)self setShareAcceptCompletionBlock:0];
  }

  v10.receiver = self;
  v10.super_class = BRShareAcceptOperation;
  [(BROperation *)&v10 finishWithResult:resultCopy error:errorCopy];
}

@end