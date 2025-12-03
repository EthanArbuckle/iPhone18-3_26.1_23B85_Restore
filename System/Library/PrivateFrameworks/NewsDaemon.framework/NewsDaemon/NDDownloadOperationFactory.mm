@interface NDDownloadOperationFactory
- (NDDownloadOperationFactory)initWithContext:(id)context ANFHelper:(id)helper;
- (id)_articleOperationForRequest:(id)request;
- (id)_audioOperationForRequest:(id)request;
- (id)_issueOperationForRequest:(id)request;
- (id)_puzzleOperationForRequest:(id)request;
- (id)_recipeOperationForRequest:(id)request;
- (id)operationForRequest:(id)request;
- (int64_t)_operationFlagsForRequest:(id)request;
@end

@implementation NDDownloadOperationFactory

- (NDDownloadOperationFactory)initWithContext:(id)context ANFHelper:(id)helper
{
  contextCopy = context;
  helperCopy = helper;
  v12.receiver = self;
  v12.super_class = NDDownloadOperationFactory;
  v9 = [(NDDownloadOperationFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    objc_storeStrong(&v10->_ANFHelper, helper);
  }

  return v10;
}

- (id)operationForRequest:(id)request
{
  requestCopy = request;
  contentType = [requestCopy contentType];
  if (contentType <= 1)
  {
    if (contentType)
    {
      if (contentType != 1)
      {
        goto LABEL_13;
      }

      v7 = [(NDDownloadOperationFactory *)self _audioOperationForRequest:requestCopy];
    }

    else
    {
      v7 = [(NDDownloadOperationFactory *)self _articleOperationForRequest:requestCopy];
    }
  }

  else
  {
    switch(contentType)
    {
      case 2:
        v7 = [(NDDownloadOperationFactory *)self _issueOperationForRequest:requestCopy];
        break;
      case 3:
        v7 = [(NDDownloadOperationFactory *)self _puzzleOperationForRequest:requestCopy];
        break;
      case 4:
        v7 = [(NDDownloadOperationFactory *)self _recipeOperationForRequest:requestCopy];
        break;
      default:
        goto LABEL_13;
    }
  }

  v3 = v7;
LABEL_13:

  return v3;
}

- (id)_articleOperationForRequest:(id)request
{
  requestCopy = request;
  v5 = [FCOfflineArticleFetchOperation alloc];
  context = [(NDDownloadOperationFactory *)self context];
  aNFHelper = [(NDDownloadOperationFactory *)self ANFHelper];
  articleID = [requestCopy articleID];
  v9 = [v5 initWithContext:context ANFHelper:aNFHelper articleID:articleID];

  v10 = [(NDDownloadOperationFactory *)self _operationFlagsForRequest:requestCopy];
  [v9 setFlags:v10];
  [v9 setPurpose:FCOperationPurposeOfflineDownload];

  return v9;
}

- (id)_audioOperationForRequest:(id)request
{
  requestCopy = request;
  v5 = [FCOfflineAudioFetchOperation alloc];
  context = [(NDDownloadOperationFactory *)self context];
  articleID = [requestCopy articleID];
  v8 = [v5 initWithContext:context articleID:articleID];

  v9 = [(NDDownloadOperationFactory *)self _operationFlagsForRequest:requestCopy];
  [v8 setFlags:v9];
  [v8 setPurpose:FCOperationPurposeOfflineDownload];

  return v8;
}

- (id)_issueOperationForRequest:(id)request
{
  requestCopy = request;
  v5 = [FCOfflineIssueFetchOperation alloc];
  context = [(NDDownloadOperationFactory *)self context];
  aNFHelper = [(NDDownloadOperationFactory *)self ANFHelper];
  issueID = [requestCopy issueID];
  v9 = [v5 initWithContext:context ANFHelper:aNFHelper issueID:issueID];

  v10 = [(NDDownloadOperationFactory *)self _operationFlagsForRequest:requestCopy];
  [v9 setFlags:v10];
  [v9 setPurpose:FCOperationPurposeOfflineDownload];

  return v9;
}

- (id)_puzzleOperationForRequest:(id)request
{
  requestCopy = request;
  v5 = [FCOfflinePuzzleFetchOperation alloc];
  context = [(NDDownloadOperationFactory *)self context];
  puzzleID = [requestCopy puzzleID];
  v8 = [v5 initWithContext:context puzzleID:puzzleID];

  v9 = [(NDDownloadOperationFactory *)self _operationFlagsForRequest:requestCopy];
  [v8 setFlags:v9];
  [v8 setPurpose:FCOperationPurposeOfflineDownload];

  return v8;
}

- (id)_recipeOperationForRequest:(id)request
{
  requestCopy = request;
  v5 = [FCOfflineRecipesFetchOperation alloc];
  context = [(NDDownloadOperationFactory *)self context];
  recipeID = [requestCopy recipeID];
  v8 = [v5 initWithContext:context recipeID:recipeID];

  v9 = [(NDDownloadOperationFactory *)self _operationFlagsForRequest:requestCopy];
  [v8 setFlags:v9];
  [v8 setPurpose:FCOperationPurposeOfflineDownload];

  return v8;
}

- (int64_t)_operationFlagsForRequest:(id)request
{
  requestCopy = request;
  v4 = ([requestCopy options] << 63) >> 63;
  options = [requestCopy options];

  return options & 4 | (v4 & 3);
}

@end