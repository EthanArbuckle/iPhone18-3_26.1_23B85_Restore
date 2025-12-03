@interface BRShareCopyShareURLOperation
- (BRShareCopyShareURLOperation)initWithFileURL:(id)l documentType:(id)type;
- (BRShareCopyShareURLOperation)initWithItemID:(id)d;
- (BRShareCopyShareURLOperation)initWithShare:(id)share documentType:(id)type;
- (BRShareCopyShareURLOperation)initWithShare:(id)share fileURL:(id)l documentType:(id)type;
- (BRShareCopyShareURLOperation)initWithShare:(id)share itemID:(id)d;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
@end

@implementation BRShareCopyShareURLOperation

- (BRShareCopyShareURLOperation)initWithShare:(id)share fileURL:(id)l documentType:(id)type
{
  shareCopy = share;
  v11.receiver = self;
  v11.super_class = BRShareCopyShareURLOperation;
  v8 = [(BRShareOperation *)&v11 initWithURL:l];
  v9 = v8;
  if (v8)
  {
    [(BRShareCopyShareURLOperation *)v8 setShare:shareCopy];
  }

  return v9;
}

- (BRShareCopyShareURLOperation)initWithShare:(id)share documentType:(id)type
{
  shareCopy = share;
  typeCopy = type;
  if (shareCopy)
  {
    v8 = br_shareAssociatedURL(shareCopy);
    if (v8)
    {
      v9 = [(BRShareCopyShareURLOperation *)self initWithShare:shareCopy fileURL:v8 documentType:typeCopy];
    }

    else
    {
      v12 = brc_bread_crumbs("[BRShareCopyShareURLOperation initWithShare:documentType:]", 868);
      v13 = brc_default_log(0, 0);
      if (os_log_type_enabled(v13, 0x90u))
      {
        [BRShareCopyShareURLOperation initWithShare:documentType:];
      }

      v9 = 0;
    }

    self = v8;
  }

  else
  {
    v10 = brc_bread_crumbs("[BRShareCopyShareURLOperation initWithShare:documentType:]", 862);
    v11 = brc_default_log(0, 0);
    if (os_log_type_enabled(v11, 0x90u))
    {
      [BRShareCopyiWorkShareURLOperation initWithShare:];
    }

    v9 = 0;
  }

  return v9;
}

- (BRShareCopyShareURLOperation)initWithFileURL:(id)l documentType:(id)type
{
  v15 = 0;
  typeCopy = type;
  lCopy = l;
  v8 = BRSharingCreateShareForItemAtURL(lCopy, &v15);
  v9 = v15;
  share = self->_share;
  self->_share = v8;

  error = self->_error;
  self->_error = v9;
  v12 = v9;

  v13 = [(BRShareCopyShareURLOperation *)self initWithShare:self->_share fileURL:lCopy documentType:typeCopy];
  return v13;
}

- (BRShareCopyShareURLOperation)initWithShare:(id)share itemID:(id)d
{
  shareCopy = share;
  v10.receiver = self;
  v10.super_class = BRShareCopyShareURLOperation;
  v7 = [(BRShareOperation *)&v10 initWithItemIdentifier:d];
  v8 = v7;
  if (v7)
  {
    [(BRShareCopyShareURLOperation *)v7 setShare:shareCopy];
  }

  return v8;
}

- (BRShareCopyShareURLOperation)initWithItemID:(id)d
{
  v12 = 0;
  dCopy = d;
  v5 = BRSharingCreateShareForItemWithIdentifier(dCopy, &v12);
  v6 = v12;
  share = self->_share;
  self->_share = v5;

  error = self->_error;
  self->_error = v6;
  v9 = v6;

  v10 = [(BRShareCopyShareURLOperation *)self initWithShare:self->_share itemID:dCopy];
  return v10;
}

- (void)main
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_1AE2A9000, v0, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: No share and no error%@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __36__BRShareCopyShareURLOperation_main__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E695DF90] dictionary];
  if (v13)
  {
    [v9 setObject:v13 forKeyedSubscript:@"share"];
    v10 = [*(a1 + 32) url];
    br_setShareAssociatedURL(v13, v10);

    v11 = [v13 baseToken];
    [*(*(a1 + 32) + 344) setBaseToken:v11];

    v12 = [v13 publicSharingIdentity];
    [*(*(a1 + 32) + 344) setPublicSharingIdentity:v12];
  }

  if (v7)
  {
    [v9 setObject:v7 forKeyedSubscript:@"url"];
  }

  [*(a1 + 32) completedWithResult:v9 error:v8];
}

- (void)finishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  shareCopyURLCompletionBlock = [(BRShareCopyShareURLOperation *)self shareCopyURLCompletionBlock];
  if (shareCopyURLCompletionBlock)
  {
    v9 = [resultCopy objectForKeyedSubscript:@"share"];
    v10 = [resultCopy objectForKeyedSubscript:@"url"];
    (shareCopyURLCompletionBlock)[2](shareCopyURLCompletionBlock, v9, v10, errorCopy);

    [(BRShareCopyShareURLOperation *)self setShareCopyURLCompletionBlock:0];
  }

  copyShareURLCompletionBlock = [(BRShareCopyShareURLOperation *)self copyShareURLCompletionBlock];
  if (copyShareURLCompletionBlock)
  {
    v12 = [resultCopy objectForKeyedSubscript:@"url"];
    (copyShareURLCompletionBlock)[2](copyShareURLCompletionBlock, v12, errorCopy);

    [(BRShareCopyShareURLOperation *)self setCopyShareURLCompletionBlock:0];
  }

  v13.receiver = self;
  v13.super_class = BRShareCopyShareURLOperation;
  [(BROperation *)&v13 finishWithResult:resultCopy error:errorCopy];
}

- (void)initWithShare:documentType:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0(&dword_1AE2A9000, v0, v1, "[ERROR] CKShare wasn't returned by BRShareCopyShareOperation%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end