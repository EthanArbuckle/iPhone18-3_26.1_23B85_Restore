@interface BRSharingModifyRecordAccessOperation
- (BRSharingModifyRecordAccessOperation)initWithURL:(id)l allowAccess:(BOOL)access;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
@end

@implementation BRSharingModifyRecordAccessOperation

- (BRSharingModifyRecordAccessOperation)initWithURL:(id)l allowAccess:(BOOL)access
{
  lCopy = l;
  v11.receiver = self;
  v11.super_class = BRSharingModifyRecordAccessOperation;
  v8 = [(BRShareOperation *)&v11 initWithURL:lCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_fileURL, l);
    v9->_allowAccess = access;
  }

  return v9;
}

- (void)main
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__BRSharingModifyRecordAccessOperation_main__block_invoke;
  v5[3] = &unk_1E7A14CA8;
  v5[4] = self;
  v3 = MEMORY[0x1B26FEA90](v5, a2);
  remoteFPFSObject = [(BRShareOperation *)self remoteFPFSObject];
  [remoteFPFSObject startOperation:self toModifyRecordWithAllowAccess:self->_allowAccess reply:v3];
}

void __44__BRSharingModifyRecordAccessOperation_main__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_new();
  if (v10)
  {
    [v9 setObject:v10 forKeyedSubscript:@"accessToken"];
  }

  if (v7)
  {
    [v9 setObject:v7 forKeyedSubscript:@"referenceIdentifier"];
  }

  [*(a1 + 32) completedWithResult:v9 error:v8];
}

- (void)finishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  allowAccessCompletionBlock = [(BRSharingModifyRecordAccessOperation *)self allowAccessCompletionBlock];
  v9 = allowAccessCompletionBlock;
  if (allowAccessCompletionBlock)
  {
    (*(allowAccessCompletionBlock + 16))(allowAccessCompletionBlock, errorCopy);
    [(BRSharingModifyRecordAccessOperation *)self setAllowAccessCompletionBlock:0];
  }

  accessAllowedCompletionBlock = [(BRSharingModifyRecordAccessOperation *)self accessAllowedCompletionBlock];
  if (accessAllowedCompletionBlock)
  {
    v11 = [resultCopy objectForKeyedSubscript:@"accessToken"];
    v12 = [resultCopy objectForKeyedSubscript:@"referenceIdentifier"];
    (accessAllowedCompletionBlock)[2](accessAllowedCompletionBlock, v11, v12, errorCopy);

    [(BRSharingModifyRecordAccessOperation *)self setAccessAllowedCompletionBlock:0];
  }

  v13.receiver = self;
  v13.super_class = BRSharingModifyRecordAccessOperation;
  [(BROperation *)&v13 finishWithResult:resultCopy error:errorCopy];
}

@end