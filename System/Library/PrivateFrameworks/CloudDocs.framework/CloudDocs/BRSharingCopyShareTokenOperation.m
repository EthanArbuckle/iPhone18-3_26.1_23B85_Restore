@interface BRSharingCopyShareTokenOperation
- (BRSharingCopyShareTokenOperation)initWithItemID:(id)a3;
- (BRSharingCopyShareTokenOperation)initWithURL:(id)a3;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)main;
@end

@implementation BRSharingCopyShareTokenOperation

- (BRSharingCopyShareTokenOperation)initWithURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BRSharingCopyShareTokenOperation;
  v6 = [(BRShareOperation *)&v9 initWithURL:v5];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fileURL, a3);
  }

  return v7;
}

- (BRSharingCopyShareTokenOperation)initWithItemID:(id)a3
{
  v7.receiver = self;
  v7.super_class = BRSharingCopyShareTokenOperation;
  v3 = [(BRShareOperation *)&v7 initWithItemIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    fileURL = v3->_fileURL;
    v3->_fileURL = 0;
  }

  return v4;
}

- (void)main
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__BRSharingCopyShareTokenOperation_main__block_invoke;
  v6[3] = &unk_1E7A14CD0;
  v6[4] = self;
  v3 = MEMORY[0x1B26FEA90](v6, a2);
  if ([(BRShareOperation *)self shouldUseDirectConnection])
  {
    v4 = [(BRShareOperation *)self directConnectionFPFSObject];
    v5 = [(BRShareOperation *)self itemID];
    [v4 startOperation:self toCopyParticipantTokenWithItemID:v5 reply:v3];
  }

  else
  {
    v4 = [(BRShareOperation *)self remoteFPFSObject];
    [v4 startOperation:self toCopyParticipantTokenWithReply:v3];
  }
}

void __40__BRSharingCopyShareTokenOperation_main__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_new();
  if (v10)
  {
    [v9 setObject:v10 forKeyedSubscript:@"shareToken"];
  }

  if (v7)
  {
    [v9 setObject:v7 forKeyedSubscript:@"baseToken"];
  }

  [*(a1 + 32) completedWithResult:v9 error:v8];
}

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"shareToken"];
  v9 = [v6 objectForKeyedSubscript:@"baseToken"];
  v10 = [(BRSharingCopyShareTokenOperation *)self shareTokenCompletionBlock];
  v11 = v10;
  if (v10)
  {
    (*(v10 + 16))(v10, v8, v7);
    [(BRSharingCopyShareTokenOperation *)self setShareTokenCompletionBlock:0];
  }

  v12 = [(BRSharingCopyShareTokenOperation *)self shareAndBaseTokenCompletionBlock];
  v13 = v12;
  if (v12)
  {
    (*(v12 + 16))(v12, v8, v9, v7);
    [(BRSharingCopyShareTokenOperation *)self setShareAndBaseTokenCompletionBlock:0];
  }

  v14.receiver = self;
  v14.super_class = BRSharingCopyShareTokenOperation;
  [(BROperation *)&v14 finishWithResult:v6 error:v7];
}

@end