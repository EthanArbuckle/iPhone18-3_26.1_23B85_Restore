@interface BRShareCopyCurrentUserNameAndDisplayHandleOperation
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)main;
@end

@implementation BRShareCopyCurrentUserNameAndDisplayHandleOperation

- (void)main
{
  OUTLINED_FUNCTION_6_1();
  v11 = *MEMORY[0x1E69E9840];
  v1 = [v0 url];
  v2 = [v1 path];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_1AE2A9000, v3, v4, "[DEBUG] copying account name for '%@'%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __59__BRShareCopyCurrentUserNameAndDisplayHandleOperation_main__block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v17 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = objc_opt_new();
  v16 = v15;
  if (v17)
  {
    [v15 setObject:v17 forKeyedSubscript:@"nameComponents"];
  }

  if (v11)
  {
    [v16 setObject:v11 forKeyedSubscript:@"displayHandle"];
  }

  if (v12)
  {
    [v16 setObject:v12 forKeyedSubscript:@"primaryEmailAddress"];
  }

  if (v13)
  {
    [v16 setObject:v13 forKeyedSubscript:@"personaIdentifier"];
  }

  [*(a1 + 32) completedWithResult:v16 error:v14];
}

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"nameComponents"];
  v9 = [v6 objectForKeyedSubscript:@"displayHandle"];
  v10 = [v6 objectForKeyedSubscript:@"primaryEmailAddress"];
  v11 = [v6 objectForKeyedSubscript:@"personaIdentifier"];
  v12 = [(BRShareCopyCurrentUserNameAndDisplayHandleOperation *)self shareUserNameCompletionBlock];
  v13 = v12;
  if (v12)
  {
    (*(v12 + 16))(v12, v8, v9, v10, v11, v7);
    [(BRShareCopyCurrentUserNameAndDisplayHandleOperation *)self setShareUserNameCompletionBlock:0];
  }

  v14.receiver = self;
  v14.super_class = BRShareCopyCurrentUserNameAndDisplayHandleOperation;
  [(BROperation *)&v14 finishWithResult:v6 error:v7];
}

@end