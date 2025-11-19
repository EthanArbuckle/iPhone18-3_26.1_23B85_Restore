@interface NDDownloadOperationFactory
- (NDDownloadOperationFactory)initWithContext:(id)a3 ANFHelper:(id)a4;
- (id)_articleOperationForRequest:(id)a3;
- (id)_audioOperationForRequest:(id)a3;
- (id)_issueOperationForRequest:(id)a3;
- (id)_puzzleOperationForRequest:(id)a3;
- (id)_recipeOperationForRequest:(id)a3;
- (id)operationForRequest:(id)a3;
- (int64_t)_operationFlagsForRequest:(id)a3;
@end

@implementation NDDownloadOperationFactory

- (NDDownloadOperationFactory)initWithContext:(id)a3 ANFHelper:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = NDDownloadOperationFactory;
  v9 = [(NDDownloadOperationFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, a3);
    objc_storeStrong(&v10->_ANFHelper, a4);
  }

  return v10;
}

- (id)operationForRequest:(id)a3
{
  v5 = a3;
  v6 = [v5 contentType];
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v6 != 1)
      {
        goto LABEL_13;
      }

      v7 = [(NDDownloadOperationFactory *)self _audioOperationForRequest:v5];
    }

    else
    {
      v7 = [(NDDownloadOperationFactory *)self _articleOperationForRequest:v5];
    }
  }

  else
  {
    switch(v6)
    {
      case 2:
        v7 = [(NDDownloadOperationFactory *)self _issueOperationForRequest:v5];
        break;
      case 3:
        v7 = [(NDDownloadOperationFactory *)self _puzzleOperationForRequest:v5];
        break;
      case 4:
        v7 = [(NDDownloadOperationFactory *)self _recipeOperationForRequest:v5];
        break;
      default:
        goto LABEL_13;
    }
  }

  v3 = v7;
LABEL_13:

  return v3;
}

- (id)_articleOperationForRequest:(id)a3
{
  v4 = a3;
  v5 = [FCOfflineArticleFetchOperation alloc];
  v6 = [(NDDownloadOperationFactory *)self context];
  v7 = [(NDDownloadOperationFactory *)self ANFHelper];
  v8 = [v4 articleID];
  v9 = [v5 initWithContext:v6 ANFHelper:v7 articleID:v8];

  v10 = [(NDDownloadOperationFactory *)self _operationFlagsForRequest:v4];
  [v9 setFlags:v10];
  [v9 setPurpose:FCOperationPurposeOfflineDownload];

  return v9;
}

- (id)_audioOperationForRequest:(id)a3
{
  v4 = a3;
  v5 = [FCOfflineAudioFetchOperation alloc];
  v6 = [(NDDownloadOperationFactory *)self context];
  v7 = [v4 articleID];
  v8 = [v5 initWithContext:v6 articleID:v7];

  v9 = [(NDDownloadOperationFactory *)self _operationFlagsForRequest:v4];
  [v8 setFlags:v9];
  [v8 setPurpose:FCOperationPurposeOfflineDownload];

  return v8;
}

- (id)_issueOperationForRequest:(id)a3
{
  v4 = a3;
  v5 = [FCOfflineIssueFetchOperation alloc];
  v6 = [(NDDownloadOperationFactory *)self context];
  v7 = [(NDDownloadOperationFactory *)self ANFHelper];
  v8 = [v4 issueID];
  v9 = [v5 initWithContext:v6 ANFHelper:v7 issueID:v8];

  v10 = [(NDDownloadOperationFactory *)self _operationFlagsForRequest:v4];
  [v9 setFlags:v10];
  [v9 setPurpose:FCOperationPurposeOfflineDownload];

  return v9;
}

- (id)_puzzleOperationForRequest:(id)a3
{
  v4 = a3;
  v5 = [FCOfflinePuzzleFetchOperation alloc];
  v6 = [(NDDownloadOperationFactory *)self context];
  v7 = [v4 puzzleID];
  v8 = [v5 initWithContext:v6 puzzleID:v7];

  v9 = [(NDDownloadOperationFactory *)self _operationFlagsForRequest:v4];
  [v8 setFlags:v9];
  [v8 setPurpose:FCOperationPurposeOfflineDownload];

  return v8;
}

- (id)_recipeOperationForRequest:(id)a3
{
  v4 = a3;
  v5 = [FCOfflineRecipesFetchOperation alloc];
  v6 = [(NDDownloadOperationFactory *)self context];
  v7 = [v4 recipeID];
  v8 = [v5 initWithContext:v6 recipeID:v7];

  v9 = [(NDDownloadOperationFactory *)self _operationFlagsForRequest:v4];
  [v8 setFlags:v9];
  [v8 setPurpose:FCOperationPurposeOfflineDownload];

  return v8;
}

- (int64_t)_operationFlagsForRequest:(id)a3
{
  v3 = a3;
  v4 = ([v3 options] << 63) >> 63;
  v5 = [v3 options];

  return v5 & 4 | (v4 & 3);
}

@end