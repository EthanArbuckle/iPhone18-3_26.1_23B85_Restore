@interface BRSharingCopyShareInfoOperation
- (BRSharingCopyShareInfoOperation)initWithURL:(id)a3;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)main;
@end

@implementation BRSharingCopyShareInfoOperation

- (BRSharingCopyShareInfoOperation)initWithURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BRSharingCopyShareInfoOperation;
  v6 = [(BROperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fileURL, a3);
  }

  return v7;
}

- (void)main
{
  v3 = [MEMORY[0x1E696ABC0] brc_errorOperationNotImplemented:self];
  [(BROperation *)self completedWithResult:0 error:v3];
}

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BRSharingCopyShareInfoOperation *)self copyShareInfoCompletionBlock];
  if (v8)
  {
    v9 = [v6 objectAtIndexedSubscript:0];
    v10 = [v6 objectAtIndexedSubscript:1];
    (v8)[2](v8, v9, v10, v7);

    [(BRSharingCopyShareInfoOperation *)self setCopyShareInfoCompletionBlock:0];
  }

  v11.receiver = self;
  v11.super_class = BRSharingCopyShareInfoOperation;
  [(BROperation *)&v11 finishWithResult:0 error:v7];
}

@end