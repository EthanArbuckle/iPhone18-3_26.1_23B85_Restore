@interface BRSharingCopyEtagOperation
- (BRSharingCopyEtagOperation)initWithURL:(id)a3;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)main;
@end

@implementation BRSharingCopyEtagOperation

- (BRSharingCopyEtagOperation)initWithURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BRSharingCopyEtagOperation;
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
  v8 = [(BRSharingCopyEtagOperation *)self sharingEtagCompletionBlock];
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8, v6, v7);
    [(BRSharingCopyEtagOperation *)self setSharingEtagCompletionBlock:0];
  }

  v10.receiver = self;
  v10.super_class = BRSharingCopyEtagOperation;
  [(BROperation *)&v10 finishWithResult:v6 error:v7];
}

@end