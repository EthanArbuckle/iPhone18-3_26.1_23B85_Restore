@interface BRSharingCopyShortTokenOperation
- (BRSharingCopyShortTokenOperation)initWithURL:(id)l;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
@end

@implementation BRSharingCopyShortTokenOperation

- (BRSharingCopyShortTokenOperation)initWithURL:(id)l
{
  v4.receiver = self;
  v4.super_class = BRSharingCopyShortTokenOperation;
  return [(BRShareOperation *)&v4 initWithURL:l];
}

- (void)main
{
  remoteFPFSObject = [(BRShareOperation *)self remoteFPFSObject];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__BRSharingCopyShortTokenOperation_main__block_invoke;
  v4[3] = &unk_1E7A14CF8;
  v4[4] = self;
  [remoteFPFSObject startOperation:self toCopyShortTokenWithReply:v4];
}

- (void)finishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  shortTokenCompletionBlock = [(BRSharingCopyShortTokenOperation *)self shortTokenCompletionBlock];
  v9 = shortTokenCompletionBlock;
  if (shortTokenCompletionBlock)
  {
    (*(shortTokenCompletionBlock + 16))(shortTokenCompletionBlock, resultCopy, errorCopy);
    [(BRSharingCopyShortTokenOperation *)self setShortTokenCompletionBlock:0];
  }

  v10.receiver = self;
  v10.super_class = BRSharingCopyShortTokenOperation;
  [(BROperation *)&v10 finishWithResult:resultCopy error:errorCopy];
}

@end