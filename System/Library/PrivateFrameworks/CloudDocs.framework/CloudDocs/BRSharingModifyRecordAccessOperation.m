@interface BRSharingModifyRecordAccessOperation
- (BRSharingModifyRecordAccessOperation)initWithURL:(id)a3 allowAccess:(BOOL)a4;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)main;
@end

@implementation BRSharingModifyRecordAccessOperation

- (BRSharingModifyRecordAccessOperation)initWithURL:(id)a3 allowAccess:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = BRSharingModifyRecordAccessOperation;
  v8 = [(BRShareOperation *)&v11 initWithURL:v7];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_fileURL, a3);
    v9->_allowAccess = a4;
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
  v4 = [(BRShareOperation *)self remoteFPFSObject];
  [v4 startOperation:self toModifyRecordWithAllowAccess:self->_allowAccess reply:v3];
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

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BRSharingModifyRecordAccessOperation *)self allowAccessCompletionBlock];
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8, v7);
    [(BRSharingModifyRecordAccessOperation *)self setAllowAccessCompletionBlock:0];
  }

  v10 = [(BRSharingModifyRecordAccessOperation *)self accessAllowedCompletionBlock];
  if (v10)
  {
    v11 = [v6 objectForKeyedSubscript:@"accessToken"];
    v12 = [v6 objectForKeyedSubscript:@"referenceIdentifier"];
    (v10)[2](v10, v11, v12, v7);

    [(BRSharingModifyRecordAccessOperation *)self setAccessAllowedCompletionBlock:0];
  }

  v13.receiver = self;
  v13.super_class = BRSharingModifyRecordAccessOperation;
  [(BROperation *)&v13 finishWithResult:v6 error:v7];
}

@end