@interface BRSharePrepFolderForSharing
- (BRSharePrepFolderForSharing)initWithURL:(id)l;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
@end

@implementation BRSharePrepFolderForSharing

- (BRSharePrepFolderForSharing)initWithURL:(id)l
{
  v4.receiver = self;
  v4.super_class = BRSharePrepFolderForSharing;
  return [(BRShareOperation *)&v4 initWithURL:l];
}

- (void)main
{
  OUTLINED_FUNCTION_6_1();
  v11 = *MEMORY[0x1E69E9840];
  v1 = [v0 url];
  path = [v1 path];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2_0(&dword_1AE2A9000, v3, v4, "[DEBUG] prepping folder for sharing at '%@'%@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __35__BRSharePrepFolderForSharing_main__block_invoke(uint64_t a1, void *a2)
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
  prepFolderSharingCompletionBlock = [(BRSharePrepFolderForSharing *)self prepFolderSharingCompletionBlock];
  v9 = prepFolderSharingCompletionBlock;
  if (prepFolderSharingCompletionBlock)
  {
    (*(prepFolderSharingCompletionBlock + 16))(prepFolderSharingCompletionBlock, errorCopy);
    [(BRSharePrepFolderForSharing *)self setPrepFolderSharingCompletionBlock:0];
  }

  v10.receiver = self;
  v10.super_class = BRSharePrepFolderForSharing;
  [(BROperation *)&v10 finishWithResult:resultCopy error:errorCopy];
}

@end