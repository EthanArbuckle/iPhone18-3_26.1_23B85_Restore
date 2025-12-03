@interface FCTagSearchOperation
- (BOOL)validateOperation;
- (FCTagSearchOperation)initWithCoreConfiguration:(id)configuration;
- (id)_establishStreamOfTags;
- (id)_localIdentifier;
- (void)_performSearchQuery:(id)query;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
- (void)prepareOperation;
@end

@implementation FCTagSearchOperation

- (FCTagSearchOperation)initWithCoreConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = FCTagSearchOperation;
  v6 = [(FCOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
  }

  return v7;
}

- (BOOL)validateOperation
{
  v17 = *MEMORY[0x1E69E9840];
  contentContext = [(FCTagSearchOperation *)self contentContext];

  if (!contentContext && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"tag search operation requires a content context"];
    v9 = 136315906;
    v10 = "[FCTagSearchOperation validateOperation]";
    v11 = 2080;
    v12 = "FCTagSearchOperation.m";
    v13 = 1024;
    v14 = 70;
    v15 = 2114;
    v16 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v9, 0x26u);
  }

  if ([(FCTagSearchOperation *)self tagType]== 2 || [(FCTagSearchOperation *)self tagType]== 1)
  {
    v4 = 1;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"tag search operation requires a channel or topic tag type"];
      v9 = 136315906;
      v10 = "[FCTagSearchOperation validateOperation]";
      v11 = 2080;
      v12 = "FCTagSearchOperation.m";
      v13 = 1024;
      v14 = 74;
      v15 = 2114;
      v16 = v8;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v9, 0x26u);
    }

    v4 = 0;
  }

  if (contentContext)
  {
    result = v4;
  }

  else
  {
    result = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)prepareOperation
{
  contentContext = [(FCTagSearchOperation *)self contentContext];
  internalContentContext = [contentContext internalContentContext];
  tagRecordSource = [internalContentContext tagRecordSource];
  [(FCTagSearchOperation *)self setTagRecordSource:tagRecordSource];

  contentContext2 = [(FCTagSearchOperation *)self contentContext];
  internalContentContext2 = [contentContext2 internalContentContext];
  contentDatabase = [internalContentContext2 contentDatabase];
  [(FCTagSearchOperation *)self setContentDatabase:contentDatabase];

  contentContext3 = [(FCTagSearchOperation *)self contentContext];
  assetManager = [contentContext3 assetManager];
  [(FCTagSearchOperation *)self setAssetManager:assetManager];
}

- (void)performOperation
{
  searchString = [(FCTagSearchOperation *)self searchString];
  v4 = [searchString length];

  if (v4)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __40__FCTagSearchOperation_performOperation__block_invoke;
    v5[3] = &unk_1E7C458D8;
    v5[4] = self;
    [(FCTagSearchOperation *)self _performSearchQuery:v5];
  }

  else
  {

    [(FCOperation *)self finishedPerformingOperationWithError:0];
  }
}

void __40__FCTagSearchOperation_performOperation__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setSearchResults:a2];
  [*(a1 + 32) setSearchError:v6];
  [*(a1 + 32) finishedPerformingOperationWithError:v6];
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  searchResultsBlock = [(FCTagSearchOperation *)self searchResultsBlock];

  if (searchResultsBlock)
  {
    searchResultsBlock2 = [(FCTagSearchOperation *)self searchResultsBlock];
    searchResults = [(FCTagSearchOperation *)self searchResults];
    searchError = [(FCTagSearchOperation *)self searchError];
    if (searchError)
    {
      v8 = searchError;
    }

    else
    {
      v8 = errorCopy;
    }

    (searchResultsBlock2)[2](searchResultsBlock2, searchResults, v8);
  }
}

- (void)_performSearchQuery:(id)query
{
  queryCopy = query;
  _establishStreamOfTags = [(FCTagSearchOperation *)self _establishStreamOfTags];
  batchSize = [(FCTagSearchOperation *)self batchSize];
  qualityOfService = [(FCTagSearchOperation *)self qualityOfService];
  v8 = FCDispatchQueueForQualityOfService([(FCTagSearchOperation *)self qualityOfService]);
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __44__FCTagSearchOperation__performSearchQuery___block_invoke;
  v15 = &unk_1E7C3C498;
  v16 = _establishStreamOfTags;
  v17 = queryCopy;
  v9 = _establishStreamOfTags;
  v10 = queryCopy;
  v11 = [v9 fetchMoreResultsWithLimit:batchSize qualityOfService:qualityOfService callbackQueue:v8 completionHandler:&v12];

  [(FCOperation *)self associateChildOperation:v11, v12, v13, v14, v15];
}

void __44__FCTagSearchOperation__performSearchQuery___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    [v5 fc_isCancellationError];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = [[FCStreamingResults alloc] initWithResults:v8 followedByStream:*(a1 + 32)];
    (*(*(a1 + 40) + 16))();
  }
}

- (id)_localIdentifier
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = +[FCAppleAccount sharedAccount];
  primaryLanguageCode = [v3 primaryLanguageCode];
  v5 = +[FCAppleAccount sharedAccount];
  contentStoreFrontID = [v5 contentStoreFrontID];
  v7 = [v2 stringWithFormat:@"%@_%@", primaryLanguageCode, contentStoreFrontID];

  return v7;
}

- (id)_establishStreamOfTags
{
  v3 = objc_alloc_init(FCTagSearchRecordStream);
  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__FCTagSearchOperation__establishStreamOfTags__block_invoke;
  v11[3] = &unk_1E7C45900;
  objc_copyWeak(&v12, &location);
  v11[4] = self;
  [(FCTagSearchRecordStream *)v3 setOperationConstructor:v11];
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = __Block_byref_object_copy__74;
  v9[4] = __Block_byref_object_dispose__74;
  v10 = [MEMORY[0x1E695DFA8] set];
  v4 = [FCTransformedResultsStream alloc];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__FCTagSearchOperation__establishStreamOfTags__block_invoke_21;
  v7[3] = &unk_1E7C45978;
  objc_copyWeak(&v8, &location);
  v7[4] = self;
  v7[5] = v9;
  v5 = [(FCTransformedResultsStream *)v4 initWithStream:v3 asyncTransformBlock:v7];
  objc_destroyWeak(&v8);
  _Block_object_dispose(v9, 8);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v5;
}

FCCKTagSearchQueryOperation *__46__FCTagSearchOperation__establishStreamOfTags__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_copyWeak(&to, (a1 + 40));
  v4 = objc_loadWeakRetained(&to);

  if (v4)
  {
    v4 = objc_alloc_init(FCCKTagSearchQueryOperation);
    v5 = objc_loadWeakRetained(&to);
    v6 = [v5 contentDatabase];
    [(FCCKTagSearchQueryOperation *)v4 setDatabase:v6];

    v7 = objc_loadWeakRetained(&to);
    v8 = [v7 tagRecordSource];
    v10 = [v8 desiredKeys];
    if (v4)
    {
      objc_setProperty_nonatomic_copy(v4, v9, v10, 408);
    }

    v11 = objc_loadWeakRetained(&to);
    v13 = [v11 searchString];
    if (v4)
    {
      objc_setProperty_nonatomic_copy(v4, v12, v13, 384);
    }

    v14 = objc_loadWeakRetained(&to);
    v15 = [v14 tagType];
    if (v4)
    {
      v16 = 1;
      if (v15 != 1)
      {
        v16 = 2;
      }

      v4->_tagType = v16;
    }

    v18 = [*(a1 + 32) _localIdentifier];
    if (v4)
    {
      objc_setProperty_nonatomic_copy(v4, v17, v18, 416);
    }

    [(FCCKTagSearchQueryOperation *)v4 setCursor:v3];
    v19 = objc_loadWeakRetained(&to);
    v20 = [v19 batchSize];
    if (v4)
    {
      v4->_resultsLimit = v20;
    }
  }

  objc_destroyWeak(&to);

  return v4;
}

void __46__FCTagSearchOperation__establishStreamOfTags__block_invoke_21(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  objc_copyWeak(&to, (a1 + 48));
  v8 = objc_loadWeakRetained(&to);

  if (v8)
  {
    v9 = objc_loadWeakRetained(&to);
    v10 = [v9 tagRecordSource];
    v11 = [v10 saveTagRecords:v6];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __46__FCTagSearchOperation__establishStreamOfTags__block_invoke_3;
    v20[3] = &unk_1E7C45928;
    objc_copyWeak(&v21, &to);
    v12 = [v6 fc_arrayByTransformingWithBlock:v20];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __46__FCTagSearchOperation__establishStreamOfTags__block_invoke_4;
    v17[3] = &unk_1E7C45950;
    objc_copyWeak(&v19, (a1 + 48));
    v18 = *(a1 + 32);
    v13 = [v11 transformRecordsInOrder:v12 withBlock:v17];
    v14 = objc_loadWeakRetained(&to);
    v15 = [v14 contentContext];
    v16 = [v15 tagController];
    [v16 saveTagsToCache:v13];

    v7[2](v7, v13);
    objc_destroyWeak(&v19);

    objc_destroyWeak(&v21);
  }

  objc_destroyWeak(&to);
}

id __46__FCTagSearchOperation__establishStreamOfTags__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained tagRecordSource];
  v6 = [objc_opt_class() identifierFromCKRecord:v3];

  return v6;
}

FCTag *__46__FCTagSearchOperation__establishStreamOfTags__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&to, (a1 + 48));
  v7 = objc_loadWeakRetained(&to);

  if (v7)
  {
    v8 = [FCTag alloc];
    v9 = objc_loadWeakRetained(&to);
    v10 = [v9 assetManager];
    v11 = [v5 base];
    v12 = [v11 identifier];
    v13 = [*(a1 + 32) configuration];
    v14 = [(FCTag *)v8 initWithTagRecord:v5 assetManager:v10 interestToken:v6 specialTagFeedType:FCSpecialTagFeedTypeForTagID(v12, v13)];

    if (+[FCTagController isTagAllowed:](FCTagController, "isTagAllowed:", v14) && (v15 = *(*(*(a1 + 40) + 8) + 40), -[FCTag name](v14, "name"), v16 = objc_claimAutoreleasedReturnValue(), LOBYTE(v15) = [v15 containsObject:v16], v16, (v15 & 1) == 0))
    {
      v18 = *(*(*(a1 + 40) + 8) + 40);
      v19 = [(FCTag *)v14 name];
      [v18 addObject:v19];

      v17 = v14;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  objc_destroyWeak(&to);

  return v17;
}

@end