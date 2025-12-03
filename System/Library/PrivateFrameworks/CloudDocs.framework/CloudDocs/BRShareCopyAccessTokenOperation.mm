@interface BRShareCopyAccessTokenOperation
- (BRShareCopyAccessTokenOperation)initWithURL:(id)l;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
@end

@implementation BRShareCopyAccessTokenOperation

- (BRShareCopyAccessTokenOperation)initWithURL:(id)l
{
  v4.receiver = self;
  v4.super_class = BRShareCopyAccessTokenOperation;
  return [(BRShareOperation *)&v4 initWithURL:l];
}

- (void)main
{
  OUTLINED_FUNCTION_6_1();
  v11 = *MEMORY[0x1E69E9840];
  v1 = [v0 url];
  path = [v1 path];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_1AE2A9000, v3, v4, "[DEBUG] copying access token for '%@'%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __39__BRShareCopyAccessTokenOperation_main__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  if (a2 && a3)
  {
    v13[0] = a2;
    v13[1] = a3;
    v7 = MEMORY[0x1E695DEC8];
    v8 = a4;
    v9 = a3;
    v10 = a2;
    v11 = [v7 arrayWithObjects:v13 count:2];
    [v6 completedWithResult:v11 error:v8];
  }

  else
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    [v6 completedWithResult:0 error:v9];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)finishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  shareCopyAccessTokenCompletionBlock = [(BRShareCopyAccessTokenOperation *)self shareCopyAccessTokenCompletionBlock];
  if (shareCopyAccessTokenCompletionBlock)
  {
    v9 = [resultCopy objectAtIndexedSubscript:0];
    v10 = [resultCopy objectAtIndexedSubscript:1];
    (shareCopyAccessTokenCompletionBlock)[2](shareCopyAccessTokenCompletionBlock, v9, v10, errorCopy);

    [(BRShareCopyAccessTokenOperation *)self setShareCopyAccessTokenCompletionBlock:0];
  }

  v11.receiver = self;
  v11.super_class = BRShareCopyAccessTokenOperation;
  [(BROperation *)&v11 finishWithResult:resultCopy error:errorCopy];
}

@end