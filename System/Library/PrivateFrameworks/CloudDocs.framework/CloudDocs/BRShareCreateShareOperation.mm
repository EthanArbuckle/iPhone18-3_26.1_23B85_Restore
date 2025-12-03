@interface BRShareCreateShareOperation
- (BRShareCreateShareOperation)initWithItemID:(id)d;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
@end

@implementation BRShareCreateShareOperation

- (BRShareCreateShareOperation)initWithItemID:(id)d
{
  v4.receiver = self;
  v4.super_class = BRShareCreateShareOperation;
  return [(BRShareOperation *)&v4 initWithItemIdentifier:d];
}

- (void)main
{
  OUTLINED_FUNCTION_6_1();
  v11 = *MEMORY[0x1E69E9840];
  v1 = [v0 url];
  path = [v1 path];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_1AE2A9000, v3, v4, "[DEBUG] creating share for '%@'%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)finishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  v8 = [(BRShareOperation *)self url];
  br_setShareAssociatedURL(resultCopy, v8);

  shareCreateCompletionBlock = [(BRShareCreateShareOperation *)self shareCreateCompletionBlock];
  v10 = shareCreateCompletionBlock;
  if (shareCreateCompletionBlock)
  {
    (*(shareCreateCompletionBlock + 16))(shareCreateCompletionBlock, resultCopy, errorCopy);
    [(BRShareCreateShareOperation *)self setShareCreateCompletionBlock:0];
  }

  v11.receiver = self;
  v11.super_class = BRShareCreateShareOperation;
  [(BROperation *)&v11 finishWithResult:resultCopy error:errorCopy];
}

@end