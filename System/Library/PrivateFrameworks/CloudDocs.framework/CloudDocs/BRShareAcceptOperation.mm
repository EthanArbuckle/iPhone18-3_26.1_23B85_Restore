@interface BRShareAcceptOperation
- (BRShareAcceptOperation)initWithShareLink:(id)a3;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)main;
@end

@implementation BRShareAcceptOperation

- (BRShareAcceptOperation)initWithShareLink:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BRShareAcceptOperation;
  v6 = [(BROperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_shareLink, a3);
  }

  return v7;
}

- (void)main
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 296);
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

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BRShareAcceptOperation *)self shareAcceptCompletionBlock];
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8, v6, v7);
    [(BRShareAcceptOperation *)self setShareAcceptCompletionBlock:0];
  }

  v10.receiver = self;
  v10.super_class = BRShareAcceptOperation;
  [(BROperation *)&v10 finishWithResult:v6 error:v7];
}

@end