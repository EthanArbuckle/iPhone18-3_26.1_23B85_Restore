@interface BRShareProcessSubitems
- (BRShareProcessSubitems)initWithURL:(id)a3 processType:(unint64_t)a4;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)main;
@end

@implementation BRShareProcessSubitems

- (BRShareProcessSubitems)initWithURL:(id)a3 processType:(unint64_t)a4
{
  v6.receiver = self;
  v6.super_class = BRShareProcessSubitems;
  result = [(BRShareOperation *)&v6 initWithURL:a3];
  if (result)
  {
    result->_processType = a4;
    result->_maxSharedSubitemsBeforeFailure = 1;
  }

  return result;
}

- (void)main
{
  OUTLINED_FUNCTION_6_1();
  v11 = *MEMORY[0x1E69E9840];
  v1 = [v0 url];
  v2 = [v1 path];
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

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BRShareProcessSubitems *)self processSubitemsCompletionBlock];
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8, v6);
    [(BRShareProcessSubitems *)self setProcessSubitemsCompletionBlock:0];
  }

  v10.receiver = self;
  v10.super_class = BRShareProcessSubitems;
  [(BROperation *)&v10 finishWithResult:v7 error:v6];
}

@end