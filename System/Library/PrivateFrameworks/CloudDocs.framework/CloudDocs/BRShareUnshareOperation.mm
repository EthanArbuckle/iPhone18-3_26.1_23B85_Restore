@interface BRShareUnshareOperation
- (BRShareUnshareOperation)initWithShare:(id)a3;
- (BRShareUnshareOperation)initWithShare:(id)a3 fileURL:(id)a4;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)main;
@end

@implementation BRShareUnshareOperation

- (BRShareUnshareOperation)initWithShare:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BRShareUnshareOperation;
  v5 = [(BRShareOperation *)&v8 initWithShare:v4];
  v6 = v5;
  if (v5)
  {
    [(BRShareUnshareOperation *)v5 setShare:v4];
  }

  return v6;
}

- (BRShareUnshareOperation)initWithShare:(id)a3 fileURL:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = BRShareUnshareOperation;
  v7 = [(BRShareOperation *)&v10 initWithURL:a4];
  v8 = v7;
  if (v7)
  {
    [(BRShareUnshareOperation *)v7 setShare:v6];
  }

  return v8;
}

- (void)main
{
  v3 = [(BRShareOperation *)self remoteObject];
  v4 = [(CKShare *)self->_share copy];
  br_setShareAssociatedURL(v4, 0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__BRShareUnshareOperation_main__block_invoke;
  v5[3] = &unk_1E7A14830;
  v5[4] = self;
  [v3 startOperation:self toUnshareShare:v4 forceDelete:0 reply:v5];
}

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BRShareUnshareOperation *)self unshareCompletionBlock];
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8, v6);
    [(BRShareUnshareOperation *)self setUnshareCompletionBlock:0];
  }

  v10.receiver = self;
  v10.super_class = BRShareUnshareOperation;
  [(BROperation *)&v10 finishWithResult:v7 error:v6];
}

@end