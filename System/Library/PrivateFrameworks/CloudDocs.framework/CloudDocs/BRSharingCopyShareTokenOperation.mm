@interface BRSharingCopyShareTokenOperation
- (BRSharingCopyShareTokenOperation)initWithItemID:(id)d;
- (BRSharingCopyShareTokenOperation)initWithURL:(id)l;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
@end

@implementation BRSharingCopyShareTokenOperation

- (BRSharingCopyShareTokenOperation)initWithURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = BRSharingCopyShareTokenOperation;
  v6 = [(BRShareOperation *)&v9 initWithURL:lCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fileURL, l);
  }

  return v7;
}

- (BRSharingCopyShareTokenOperation)initWithItemID:(id)d
{
  v7.receiver = self;
  v7.super_class = BRSharingCopyShareTokenOperation;
  v3 = [(BRShareOperation *)&v7 initWithItemIdentifier:d];
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
    directConnectionFPFSObject = [(BRShareOperation *)self directConnectionFPFSObject];
    itemID = [(BRShareOperation *)self itemID];
    [directConnectionFPFSObject startOperation:self toCopyParticipantTokenWithItemID:itemID reply:v3];
  }

  else
  {
    directConnectionFPFSObject = [(BRShareOperation *)self remoteFPFSObject];
    [directConnectionFPFSObject startOperation:self toCopyParticipantTokenWithReply:v3];
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

- (void)finishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  v8 = [resultCopy objectForKeyedSubscript:@"shareToken"];
  v9 = [resultCopy objectForKeyedSubscript:@"baseToken"];
  shareTokenCompletionBlock = [(BRSharingCopyShareTokenOperation *)self shareTokenCompletionBlock];
  v11 = shareTokenCompletionBlock;
  if (shareTokenCompletionBlock)
  {
    (*(shareTokenCompletionBlock + 16))(shareTokenCompletionBlock, v8, errorCopy);
    [(BRSharingCopyShareTokenOperation *)self setShareTokenCompletionBlock:0];
  }

  shareAndBaseTokenCompletionBlock = [(BRSharingCopyShareTokenOperation *)self shareAndBaseTokenCompletionBlock];
  v13 = shareAndBaseTokenCompletionBlock;
  if (shareAndBaseTokenCompletionBlock)
  {
    (*(shareAndBaseTokenCompletionBlock + 16))(shareAndBaseTokenCompletionBlock, v8, v9, errorCopy);
    [(BRSharingCopyShareTokenOperation *)self setShareAndBaseTokenCompletionBlock:0];
  }

  v14.receiver = self;
  v14.super_class = BRSharingCopyShareTokenOperation;
  [(BROperation *)&v14 finishWithResult:resultCopy error:errorCopy];
}

@end