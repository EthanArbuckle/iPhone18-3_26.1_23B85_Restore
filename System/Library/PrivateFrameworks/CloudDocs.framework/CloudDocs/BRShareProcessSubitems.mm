@interface BRShareProcessSubitems
- (BRShareProcessSubitems)initWithURL:(id)l processType:(unint64_t)type;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
@end

@implementation BRShareProcessSubitems

- (BRShareProcessSubitems)initWithURL:(id)l processType:(unint64_t)type
{
  v6.receiver = self;
  v6.super_class = BRShareProcessSubitems;
  result = [(BRShareOperation *)&v6 initWithURL:l];
  if (result)
  {
    result->_processType = type;
    result->_maxSharedSubitemsBeforeFailure = 1;
  }

  return result;
}

- (void)main
{
  OUTLINED_FUNCTION_6_1();
  v11 = *MEMORY[0x1E69E9840];
  v1 = [v0 url];
  path = [v1 path];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_1AE2A9000, v3, v4, "[DEBUG] processing share subitems at '%@'%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __30__BRShareProcessSubitems_main__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x1E696AD98];
  v4 = a2 == 0;
  v5 = a2;
  v6 = [v3 numberWithInt:v4];
  [v2 completedWithResult:v6 error:v5];
}

- (void)finishWithResult:(id)result error:(id)error
{
  errorCopy = error;
  resultCopy = result;
  processSubitemsCompletionBlock = [(BRShareProcessSubitems *)self processSubitemsCompletionBlock];
  v9 = processSubitemsCompletionBlock;
  if (processSubitemsCompletionBlock)
  {
    (*(processSubitemsCompletionBlock + 16))(processSubitemsCompletionBlock, errorCopy);
    [(BRShareProcessSubitems *)self setProcessSubitemsCompletionBlock:0];
  }

  v10.receiver = self;
  v10.super_class = BRShareProcessSubitems;
  [(BROperation *)&v10 finishWithResult:resultCopy error:errorCopy];
}

@end