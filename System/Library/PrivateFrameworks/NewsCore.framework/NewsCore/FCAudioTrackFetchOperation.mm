@interface FCAudioTrackFetchOperation
- (FCAudioTrackFetchOperation)initWithContext:(id)context audioTrack:(id)track;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
@end

@implementation FCAudioTrackFetchOperation

- (FCAudioTrackFetchOperation)initWithContext:(id)context audioTrack:(id)track
{
  contextCopy = context;
  trackCopy = track;
  v12.receiver = self;
  v12.super_class = FCAudioTrackFetchOperation;
  v9 = [(FCOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    objc_storeStrong(&v10->_audioTrack, track);
  }

  return v10;
}

- (void)performOperation
{
  context = [(FCAudioTrackFetchOperation *)self context];
  internalContentContext = [context internalContentContext];
  avAssetDownloadManager = [internalContentContext avAssetDownloadManager];

  audioTrack = [(FCAudioTrackFetchOperation *)self audioTrack];
  asset = [audioTrack asset];
  v8 = [(FCAVAssetDownloadManager *)avAssetDownloadManager interestTokenForCachedAsset:asset];

  if (v8)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __46__FCAudioTrackFetchOperation_performOperation__block_invoke;
    v14[3] = &unk_1E7C36C58;
    v14[4] = self;
    v15 = v8;
    __46__FCAudioTrackFetchOperation_performOperation__block_invoke(v14);
    v9 = v15;
LABEL_6:

    goto LABEL_7;
  }

  if (![(FCAudioTrackFetchOperation *)self cachedOnly])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46__FCAudioTrackFetchOperation_performOperation__block_invoke_3;
    v10[3] = &unk_1E7C36C58;
    v11 = avAssetDownloadManager;
    selfCopy = self;
    [(FCAVAssetDownloadManager *)v11 restoreBackgroundDownloadsWithCompletionHandler:v10];
    v9 = v11;
    goto LABEL_6;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __46__FCAudioTrackFetchOperation_performOperation__block_invoke_2;
  v13[3] = &unk_1E7C36EA0;
  v13[4] = self;
  __46__FCAudioTrackFetchOperation_performOperation__block_invoke_2(v13);
LABEL_7:
}

uint64_t __46__FCAudioTrackFetchOperation_performOperation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) interestTokenHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) interestTokenHandler];
    v3[2](v3, *(a1 + 40));
  }

  v4 = *(a1 + 32);

  return [v4 finishedPerformingOperationWithError:0];
}

void __46__FCAudioTrackFetchOperation_performOperation__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E696ABC0];
  v3 = MEMORY[0x1E695DFD8];
  v8 = [v1 audioTrack];
  v4 = [v8 asset];
  v5 = [v4 identifier];
  v6 = [v3 setWithObject:v5];
  v7 = [v2 fc_notCachedErrorWithMissingObjects:v6];
  [v1 finishedPerformingOperationWithError:v7];
}

void __46__FCAudioTrackFetchOperation_performOperation__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) audioTrack];
  v4 = [v3 asset];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__FCAudioTrackFetchOperation_performOperation__block_invoke_4;
  v6[3] = &unk_1E7C43348;
  v6[4] = *(a1 + 40);
  v5 = [(FCAVAssetDownloadManager *)v2 downloadAsset:v4 completionHandler:v6];

  [*(a1 + 40) associateChildOperation:v5];
}

void __46__FCAudioTrackFetchOperation_performOperation__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v10 = MEMORY[0x1E69E9820];
    v11 = *(a1 + 32);
    v12 = v6;
    [v11 finishedPerformingOperationWithError:{v12, v10, 3221225472, __46__FCAudioTrackFetchOperation_performOperation__block_invoke_5, &unk_1E7C36C58, v11}];
  }

  else
  {
    v8 = [*(a1 + 32) interestTokenHandler];

    if (v8)
    {
      v9 = [*(a1 + 32) interestTokenHandler];
      (v9)[2](v9, v5);
    }

    [*(a1 + 32) finishedPerformingOperationWithError:0];
  }
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __59__FCAudioTrackFetchOperation_operationWillFinishWithError___block_invoke;
    v12[3] = &unk_1E7C36C58;
    v12[4] = self;
    v13 = errorCopy;
    __59__FCAudioTrackFetchOperation_operationWillFinishWithError___block_invoke(v12);
  }

  else
  {
    archiveHandler = [(FCAudioTrackFetchOperation *)self archiveHandler];

    if (archiveHandler)
    {
      archiveHandler2 = [(FCAudioTrackFetchOperation *)self archiveHandler];
      audioTrack = [(FCAudioTrackFetchOperation *)self audioTrack];
      contentArchive = [audioTrack contentArchive];
      (archiveHandler2)[2](archiveHandler2, contentArchive);
    }

    fetchCompletionHandler = [(FCAudioTrackFetchOperation *)self fetchCompletionHandler];

    if (fetchCompletionHandler)
    {
      fetchCompletionHandler2 = [(FCAudioTrackFetchOperation *)self fetchCompletionHandler];
      fetchCompletionHandler2[2](fetchCompletionHandler2, 0);
    }
  }
}

void __59__FCAudioTrackFetchOperation_operationWillFinishWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) fetchCompletionHandler];

  if (v2)
  {
    v3 = [*(a1 + 32) fetchCompletionHandler];
    v3[2](v3, *(a1 + 40));
  }
}

@end