@interface BRShareUnshareOperation
- (BRShareUnshareOperation)initWithShare:(id)share;
- (BRShareUnshareOperation)initWithShare:(id)share fileURL:(id)l;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
@end

@implementation BRShareUnshareOperation

- (BRShareUnshareOperation)initWithShare:(id)share
{
  shareCopy = share;
  v8.receiver = self;
  v8.super_class = BRShareUnshareOperation;
  v5 = [(BRShareOperation *)&v8 initWithShare:shareCopy];
  v6 = v5;
  if (v5)
  {
    [(BRShareUnshareOperation *)v5 setShare:shareCopy];
  }

  return v6;
}

- (BRShareUnshareOperation)initWithShare:(id)share fileURL:(id)l
{
  shareCopy = share;
  v10.receiver = self;
  v10.super_class = BRShareUnshareOperation;
  v7 = [(BRShareOperation *)&v10 initWithURL:l];
  v8 = v7;
  if (v7)
  {
    [(BRShareUnshareOperation *)v7 setShare:shareCopy];
  }

  return v8;
}

- (void)main
{
  remoteObject = [(BRShareOperation *)self remoteObject];
  v4 = [(CKShare *)self->_share copy];
  br_setShareAssociatedURL(v4, 0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__BRShareUnshareOperation_main__block_invoke;
  v5[3] = &unk_1E7A14830;
  v5[4] = self;
  [remoteObject startOperation:self toUnshareShare:v4 forceDelete:0 reply:v5];
}

- (void)finishWithResult:(id)result error:(id)error
{
  errorCopy = error;
  resultCopy = result;
  unshareCompletionBlock = [(BRShareUnshareOperation *)self unshareCompletionBlock];
  v9 = unshareCompletionBlock;
  if (unshareCompletionBlock)
  {
    (*(unshareCompletionBlock + 16))(unshareCompletionBlock, errorCopy);
    [(BRShareUnshareOperation *)self setUnshareCompletionBlock:0];
  }

  v10.receiver = self;
  v10.super_class = BRShareUnshareOperation;
  [(BROperation *)&v10 finishWithResult:resultCopy error:errorCopy];
}

@end