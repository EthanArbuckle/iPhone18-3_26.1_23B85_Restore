@interface BRShareDestroyOperation
- (BRShareDestroyOperation)initWithShare:(id)share;
- (BRShareDestroyOperation)initWithShare:(id)share fileURL:(id)l;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
@end

@implementation BRShareDestroyOperation

- (BRShareDestroyOperation)initWithShare:(id)share
{
  shareCopy = share;
  v8.receiver = self;
  v8.super_class = BRShareDestroyOperation;
  v5 = [(BRShareOperation *)&v8 initWithShare:shareCopy];
  v6 = v5;
  if (v5)
  {
    [(BRShareDestroyOperation *)v5 setShare:shareCopy];
  }

  return v6;
}

- (BRShareDestroyOperation)initWithShare:(id)share fileURL:(id)l
{
  shareCopy = share;
  v10.receiver = self;
  v10.super_class = BRShareDestroyOperation;
  v7 = [(BRShareOperation *)&v10 initWithURL:l];
  v8 = v7;
  if (v7)
  {
    [(BRShareDestroyOperation *)v7 setShare:shareCopy];
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
  v5[2] = __31__BRShareDestroyOperation_main__block_invoke;
  v5[3] = &unk_1E7A14830;
  v5[4] = self;
  [remoteObject startOperation:self toUnshareShare:v4 forceDelete:1 reply:v5];
}

- (void)finishWithResult:(id)result error:(id)error
{
  errorCopy = error;
  resultCopy = result;
  shareDestroyCompletionBlock = [(BRShareDestroyOperation *)self shareDestroyCompletionBlock];
  v9 = shareDestroyCompletionBlock;
  if (shareDestroyCompletionBlock)
  {
    (*(shareDestroyCompletionBlock + 16))(shareDestroyCompletionBlock, errorCopy);
    [(BRShareDestroyOperation *)self setShareDestroyCompletionBlock:0];
  }

  v10.receiver = self;
  v10.super_class = BRShareDestroyOperation;
  [(BROperation *)&v10 finishWithResult:resultCopy error:errorCopy];
}

@end