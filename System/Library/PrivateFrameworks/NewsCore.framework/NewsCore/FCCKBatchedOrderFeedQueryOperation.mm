@interface FCCKBatchedOrderFeedQueryOperation
- (FCCKBatchedOrderFeedQueryOperation)init;
- (id)networkEvents;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
- (void)setDatabase:(uint64_t)database;
@end

@implementation FCCKBatchedOrderFeedQueryOperation

- (FCCKBatchedOrderFeedQueryOperation)init
{
  v22.receiver = self;
  v22.super_class = FCCKBatchedOrderFeedQueryOperation;
  v2 = [(FCOperation *)&v22 init];
  if (v2)
  {
    v3 = objc_alloc_init(FCThreadSafeMutableArray);
    allFeedItemAndArticleRecords = v2->_allFeedItemAndArticleRecords;
    v2->_allFeedItemAndArticleRecords = v3;

    v5 = objc_alloc_init(FCThreadSafeMutableArray);
    allFeedResponses = v2->_allFeedResponses;
    v2->_allFeedResponses = v5;

    v7 = objc_alloc_init(FCThreadSafeMutableArray);
    allTagRecords = v2->_allTagRecords;
    v2->_allTagRecords = v7;

    v9 = objc_alloc_init(FCThreadSafeMutableArray);
    allIssueRecords = v2->_allIssueRecords;
    v2->_allIssueRecords = v9;

    v11 = objc_alloc_init(FCThreadSafeMutableArray);
    allNetworkEvents = v2->_allNetworkEvents;
    v2->_allNetworkEvents = v11;

    v13 = objc_alloc_init(FCThreadSafeMutableArray);
    allErrors = v2->_allErrors;
    v2->_allErrors = v13;

    v15 = objc_alloc(MEMORY[0x1E69B68F8]);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __42__FCCKBatchedOrderFeedQueryOperation_init__block_invoke;
    v20[3] = &unk_1E7C39ED0;
    v16 = v2;
    v21 = v16;
    v17 = [v15 initWithResolver:v20];
    queryCompletionPromise = v16->_queryCompletionPromise;
    v16->_queryCompletionPromise = v17;
  }

  return v2;
}

void __42__FCCKBatchedOrderFeedQueryOperation_init__block_invoke(uint64_t a1, const void *a2, void *a3)
{
  v5 = a3;
  v6 = _Block_copy(a2);
  v7 = *(a1 + 32);
  v8 = *(v7 + 496);
  *(v7 + 496) = v6;

  v9 = _Block_copy(v5);
  v10 = *(a1 + 32);
  v11 = *(v10 + 504);
  *(v10 + 504) = v9;
}

- (id)networkEvents
{
  if (self)
  {
    allNetworkEvents = [self allNetworkEvents];
    readOnlyArray = [allNetworkEvents readOnlyArray];
  }

  else
  {
    readOnlyArray = 0;
  }

  return readOnlyArray;
}

- (void)performOperation
{
  v3 = dispatch_group_create();
  if (self)
  {
    feedRequests = self->_feedRequests;
  }

  else
  {
    feedRequests = 0;
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__FCCKBatchedOrderFeedQueryOperation_performOperation__block_invoke;
  v8[3] = &unk_1E7C39308;
  v8[4] = self;
  v9 = v3;
  v5 = v3;
  [(NSArray *)feedRequests fc_visitSubarraysWithMaxCount:400 block:v8];
  v6 = FCDispatchQueueForQualityOfService([(FCCKBatchedOrderFeedQueryOperation *)self qualityOfService]);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__FCCKBatchedOrderFeedQueryOperation_performOperation__block_invoke_3;
  block[3] = &unk_1E7C36EA0;
  block[4] = self;
  dispatch_group_notify(v5, v6, block);
}

void __54__FCCKBatchedOrderFeedQueryOperation_performOperation__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(FCCKOrderFeedQueryOperation);
  v5 = v4;
  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 368);
  }

  else
  {
    v7 = 0;
  }

  [(FCCKOrderFeedQueryOperation *)v4 setDatabase:v7];
  if (v5)
  {
    objc_setProperty_nonatomic_copy(v5, v8, v3, 376);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = v9[48];
    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = 0;
  if (v5)
  {
LABEL_7:
    objc_setProperty_nonatomic_copy(v5, v8, v10, 384);
    v9 = *(a1 + 32);
  }

LABEL_8:
  if (v9)
  {
    v11 = v9[49];
    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v11 = 0;
  if (v5)
  {
LABEL_10:
    v5->_resultsLimit = v11;
    v9 = *(a1 + 32);
  }

LABEL_11:
  if (v9)
  {
    v12 = v9[50];
    if (!v5)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v12 = 0;
  if (v5)
  {
LABEL_13:
    v5->_queryPriority = v12;
    v9 = *(a1 + 32);
  }

LABEL_14:
  if (v9)
  {
    v13 = v9[51];
    if (!v5)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v13 = 0;
  if (v5)
  {
LABEL_16:
    objc_setProperty_nonatomic_copy(v5, v8, v13, 408);
    v9 = *(a1 + 32);
  }

LABEL_17:
  if (v9)
  {
    v14 = v9[52];
    if (!v5)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v14 = 0;
  if (v5)
  {
LABEL_19:
    objc_setProperty_nonatomic_copy(v5, v8, v14, 416);
    v9 = *(a1 + 32);
  }

LABEL_20:
  if (v9)
  {
    v15 = v9[53];
    if (!v5)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v15 = 0;
  if (v5)
  {
LABEL_22:
    objc_setProperty_nonatomic_copy(v5, v8, v15, 424);
  }

LABEL_23:
  dispatch_group_enter(*(a1 + 40));
  objc_initWeak(&location, v5);
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __54__FCCKBatchedOrderFeedQueryOperation_performOperation__block_invoke_2;
  v20 = &unk_1E7C44860;
  v21 = *(a1 + 32);
  objc_copyWeak(&v23, &location);
  v22 = *(a1 + 40);
  if (v5)
  {
    objc_setProperty_nonatomic_copy(v5, v16, &v17, 440);
  }

  [*(a1 + 32) associateChildOperation:{v5, v17, v18, v19, v20, v21}];
  [(FCOperation *)v5 start];

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void __54__FCCKBatchedOrderFeedQueryOperation_performOperation__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v25 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 allFeedItemAndArticleRecords];
  if (v6)
  {
    v8 = v6[1];
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v7 addObjectsFromArray:v9];

  v10 = [*(a1 + 32) allFeedResponses];
  if (v6)
  {
    v11 = v6[2];
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  [v10 addObjectsFromArray:v12];

  v13 = [*(a1 + 32) allTagRecords];
  if (v6)
  {
    v14 = v6[3];
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  [v13 addObjectsFromArray:v15];

  v16 = [*(a1 + 32) allIssueRecords];
  if (v6)
  {
    v17 = v6[4];
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;

  [v16 addObjectsFromArray:v18];
  v19 = [*(a1 + 32) allNetworkEvents];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v21 = WeakRetained;
  if (WeakRetained)
  {
    v22 = *(WeakRetained + 54);
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;
  [v19 addObjectsFromArray:v23];

  if (v25)
  {
    v24 = [*(a1 + 32) allErrors];
    [v24 addObject:v25];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __54__FCCKBatchedOrderFeedQueryOperation_performOperation__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) allErrors];
  v3 = [v2 firstObject];

  [*(a1 + 32) finishedPerformingOperationWithError:v3];
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  allTagRecords = [(FCCKBatchedOrderFeedQueryOperation *)self allTagRecords];
  readOnlyArray = [allTagRecords readOnlyArray];
  v6 = [readOnlyArray fc_uniqueByValueBlock:&__block_literal_global_135];

  allIssueRecords = [(FCCKBatchedOrderFeedQueryOperation *)self allIssueRecords];
  readOnlyArray2 = [allIssueRecords readOnlyArray];
  v9 = [readOnlyArray2 fc_uniqueByValueBlock:&__block_literal_global_8_2];

  v10 = [FCCKOrderFeedQueryResult alloc];
  allFeedItemAndArticleRecords = [(FCCKBatchedOrderFeedQueryOperation *)self allFeedItemAndArticleRecords];
  readOnlyArray3 = [allFeedItemAndArticleRecords readOnlyArray];
  allFeedResponses = [(FCCKBatchedOrderFeedQueryOperation *)self allFeedResponses];
  readOnlyArray4 = [allFeedResponses readOnlyArray];
  allNetworkEvents = [(FCCKBatchedOrderFeedQueryOperation *)self allNetworkEvents];
  readOnlyArray5 = [allNetworkEvents readOnlyArray];
  v17 = [(FCCKOrderFeedQueryResult *)&v10->super.isa initWithFeedItemAndArticleRecords:readOnlyArray3 feedResponses:readOnlyArray4 tagRecords:v6 issueRecords:v9 networkEvents:readOnlyArray5];

  if (errorCopy)
  {
    [(FCCKBatchedOrderFeedQueryOperation *)self promiseRejectBlock];
  }

  else
  {
    [(FCCKBatchedOrderFeedQueryOperation *)self promiseResolveBlock];
  }
  v18 = ;
  v18[2]();

  if (self)
  {
    queryCompletionHandler = self->_queryCompletionHandler;
    if (queryCompletionHandler)
    {
      queryCompletionHandler[2](queryCompletionHandler, v17, errorCopy);
    }
  }
}

id __67__FCCKBatchedOrderFeedQueryOperation_operationWillFinishWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 recordID];
  v3 = [v2 recordName];

  return v3;
}

id __67__FCCKBatchedOrderFeedQueryOperation_operationWillFinishWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 recordID];
  v3 = [v2 recordName];

  return v3;
}

- (void)setDatabase:(uint64_t)database
{
  if (database)
  {
    objc_storeStrong((database + 368), a2);
  }
}

@end