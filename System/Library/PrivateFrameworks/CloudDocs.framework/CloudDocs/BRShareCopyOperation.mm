@interface BRShareCopyOperation
- (BRShareCopyOperation)initWithItemID:(id)d;
- (BRShareCopyOperation)initWithURL:(id)l;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
@end

@implementation BRShareCopyOperation

- (BRShareCopyOperation)initWithURL:(id)l
{
  v4.receiver = self;
  v4.super_class = BRShareCopyOperation;
  return [(BRShareOperation *)&v4 initWithURL:l];
}

- (BRShareCopyOperation)initWithItemID:(id)d
{
  v4.receiver = self;
  v4.super_class = BRShareCopyOperation;
  return [(BRShareOperation *)&v4 initWithItemIdentifier:d];
}

- (void)main
{
  OUTLINED_FUNCTION_6_1();
  v11 = *MEMORY[0x1E69E9840];
  v1 = [v0 url];
  path = [v1 path];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_1AE2A9000, v3, v4, "[DEBUG] copying share for '%@'%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __28__BRShareCopyOperation_main__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_new();
  if (v10)
  {
    [v9 setObject:v10 forKeyedSubscript:@"share"];
  }

  if (v7)
  {
    [v9 setObject:v7 forKeyedSubscript:@"rootURL"];
  }

  [*(a1 + 32) completedWithResult:v9 error:v8];
}

- (void)finishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  v8 = [resultCopy objectForKeyedSubscript:@"share"];
  v9 = [(BRShareOperation *)self url];
  br_setShareAssociatedURL(v8, v9);

  v10 = [resultCopy objectForKeyedSubscript:@"rootURL"];
  shareCopyCompletionBlock = [(BRShareCopyOperation *)self shareCopyCompletionBlock];
  v12 = shareCopyCompletionBlock;
  if (shareCopyCompletionBlock)
  {
    (*(shareCopyCompletionBlock + 16))(shareCopyCompletionBlock, v8, errorCopy);
    [(BRShareCopyOperation *)self setShareCopyCompletionBlock:0];
  }

  rootShareCopyCompletionBlock = [(BRShareCopyOperation *)self rootShareCopyCompletionBlock];
  v14 = rootShareCopyCompletionBlock;
  if (rootShareCopyCompletionBlock)
  {
    (*(rootShareCopyCompletionBlock + 16))(rootShareCopyCompletionBlock, v8, v10, errorCopy);
    [(BRShareCopyOperation *)self setRootShareCopyCompletionBlock:0];
  }

  v15.receiver = self;
  v15.super_class = BRShareCopyOperation;
  [(BROperation *)&v15 finishWithResult:resultCopy error:errorCopy];
}

@end