@interface BRShareCopyOperation
- (BRShareCopyOperation)initWithItemID:(id)a3;
- (BRShareCopyOperation)initWithURL:(id)a3;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)main;
@end

@implementation BRShareCopyOperation

- (BRShareCopyOperation)initWithURL:(id)a3
{
  v4.receiver = self;
  v4.super_class = BRShareCopyOperation;
  return [(BRShareOperation *)&v4 initWithURL:a3];
}

- (BRShareCopyOperation)initWithItemID:(id)a3
{
  v4.receiver = self;
  v4.super_class = BRShareCopyOperation;
  return [(BRShareOperation *)&v4 initWithItemIdentifier:a3];
}

- (void)main
{
  OUTLINED_FUNCTION_6_1();
  v11 = *MEMORY[0x1E69E9840];
  v1 = [v0 url];
  v2 = [v1 path];
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

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"share"];
  v9 = [(BRShareOperation *)self url];
  br_setShareAssociatedURL(v8, v9);

  v10 = [v6 objectForKeyedSubscript:@"rootURL"];
  v11 = [(BRShareCopyOperation *)self shareCopyCompletionBlock];
  v12 = v11;
  if (v11)
  {
    (*(v11 + 16))(v11, v8, v7);
    [(BRShareCopyOperation *)self setShareCopyCompletionBlock:0];
  }

  v13 = [(BRShareCopyOperation *)self rootShareCopyCompletionBlock];
  v14 = v13;
  if (v13)
  {
    (*(v13 + 16))(v13, v8, v10, v7);
    [(BRShareCopyOperation *)self setRootShareCopyCompletionBlock:0];
  }

  v15.receiver = self;
  v15.super_class = BRShareCopyOperation;
  [(BROperation *)&v15 finishWithResult:v6 error:v7];
}

@end