@interface BRShareCreateShareOperation
- (BRShareCreateShareOperation)initWithItemID:(id)a3;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)main;
@end

@implementation BRShareCreateShareOperation

- (BRShareCreateShareOperation)initWithItemID:(id)a3
{
  v4.receiver = self;
  v4.super_class = BRShareCreateShareOperation;
  return [(BRShareOperation *)&v4 initWithItemIdentifier:a3];
}

- (void)main
{
  OUTLINED_FUNCTION_6_1();
  v11 = *MEMORY[0x1E69E9840];
  v1 = [v0 url];
  v2 = [v1 path];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_1AE2A9000, v3, v4, "[DEBUG] creating share for '%@'%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BRShareOperation *)self url];
  br_setShareAssociatedURL(v6, v8);

  v9 = [(BRShareCreateShareOperation *)self shareCreateCompletionBlock];
  v10 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9, v6, v7);
    [(BRShareCreateShareOperation *)self setShareCreateCompletionBlock:0];
  }

  v11.receiver = self;
  v11.super_class = BRShareCreateShareOperation;
  [(BROperation *)&v11 finishWithResult:v6 error:v7];
}

@end