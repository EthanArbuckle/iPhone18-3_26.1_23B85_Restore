@interface BRSharingCopyShortTokenOperation
- (BRSharingCopyShortTokenOperation)initWithURL:(id)a3;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)main;
@end

@implementation BRSharingCopyShortTokenOperation

- (BRSharingCopyShortTokenOperation)initWithURL:(id)a3
{
  v4.receiver = self;
  v4.super_class = BRSharingCopyShortTokenOperation;
  return [(BRShareOperation *)&v4 initWithURL:a3];
}

- (void)main
{
  v3 = [(BRShareOperation *)self remoteFPFSObject];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__BRSharingCopyShortTokenOperation_main__block_invoke;
  v4[3] = &unk_1E7A14CF8;
  v4[4] = self;
  [v3 startOperation:self toCopyShortTokenWithReply:v4];
}

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BRSharingCopyShortTokenOperation *)self shortTokenCompletionBlock];
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8, v6, v7);
    [(BRSharingCopyShortTokenOperation *)self setShortTokenCompletionBlock:0];
  }

  v10.receiver = self;
  v10.super_class = BRSharingCopyShortTokenOperation;
  [(BROperation *)&v10 finishWithResult:v6 error:v7];
}

@end