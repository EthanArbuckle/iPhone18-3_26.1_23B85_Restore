@interface BRSharingCopyEtagOperation
- (BRSharingCopyEtagOperation)initWithURL:(id)l;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
@end

@implementation BRSharingCopyEtagOperation

- (BRSharingCopyEtagOperation)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = BRSharingCopyEtagOperation;
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
  sharingEtagCompletionBlock = [(BRSharingCopyEtagOperation *)self sharingEtagCompletionBlock];
  v9 = sharingEtagCompletionBlock;
  if (sharingEtagCompletionBlock)
  {
    (*(sharingEtagCompletionBlock + 16))(sharingEtagCompletionBlock, resultCopy, errorCopy);
    [(BRSharingCopyEtagOperation *)self setSharingEtagCompletionBlock:0];
  }

  v10.receiver = self;
  v10.super_class = BRSharingCopyEtagOperation;
  [(BROperation *)&v10 finishWithResult:resultCopy error:errorCopy];
}

@end