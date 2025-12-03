@interface BRSharingCopyShareInfoOperation
- (BRSharingCopyShareInfoOperation)initWithURL:(id)l;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
@end

@implementation BRSharingCopyShareInfoOperation

- (BRSharingCopyShareInfoOperation)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = BRSharingCopyShareInfoOperation;
  v6 = [(BROperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fileURL, l);
  }

  return v7;
}

- (void)main
{
  v3 = [MEMORY[0x1E696ABC0] brc_errorOperationNotImplemented:self];
  [(BROperation *)self completedWithResult:0 error:v3];
}

- (void)finishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  copyShareInfoCompletionBlock = [(BRSharingCopyShareInfoOperation *)self copyShareInfoCompletionBlock];
  if (copyShareInfoCompletionBlock)
  {
    v9 = [resultCopy objectAtIndexedSubscript:0];
    v10 = [resultCopy objectAtIndexedSubscript:1];
    (copyShareInfoCompletionBlock)[2](copyShareInfoCompletionBlock, v9, v10, errorCopy);

    [(BRSharingCopyShareInfoOperation *)self setCopyShareInfoCompletionBlock:0];
  }

  v11.receiver = self;
  v11.super_class = BRSharingCopyShareInfoOperation;
  [(BROperation *)&v11 finishWithResult:0 error:errorCopy];
}

@end