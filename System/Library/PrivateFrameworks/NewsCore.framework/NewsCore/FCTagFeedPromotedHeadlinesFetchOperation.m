@interface FCTagFeedPromotedHeadlinesFetchOperation
- (BOOL)validateOperation;
- (FCTagFeedPromotedHeadlinesFetchOperation)initWithConfiguration:(id)a3 cloudContext:(id)a4 tagID:(id)a5 expireAfterTimeWindow:(double)a6;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
@end

@implementation FCTagFeedPromotedHeadlinesFetchOperation

- (FCTagFeedPromotedHeadlinesFetchOperation)initWithConfiguration:(id)a3 cloudContext:(id)a4 tagID:(id)a5 expireAfterTimeWindow:(double)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = FCTagFeedPromotedHeadlinesFetchOperation;
  v14 = [(FCOperation *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_configuration, a3);
    objc_storeStrong(&v15->_cloudContext, a4);
    objc_storeStrong(&v15->_tagID, a5);
    v15->_expireAfterTimeWindow = a6;
  }

  return v15;
}

- (BOOL)validateOperation
{
  v14 = *MEMORY[0x1E69E9840];
  if (self && self->_tagID)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v2 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Promoted headlines operation must have a tag ID"];
      v6 = 136315906;
      v7 = "[FCTagFeedPromotedHeadlinesFetchOperation validateOperation]";
      v8 = 2080;
      v9 = "FCTagFeedPromotedHeadlinesFetchOperation.m";
      v10 = 1024;
      v11 = 60;
      v12 = 2114;
      v13 = v4;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v6, 0x26u);

      LOBYTE(v2) = 0;
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)performOperation
{
  v25[1] = *MEMORY[0x1E69E9840];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __60__FCTagFeedPromotedHeadlinesFetchOperation_performOperation__block_invoke;
  v16[3] = &unk_1E7C37750;
  v16[4] = self;
  v3 = v16;
  if (self)
  {
    v4 = objc_alloc_init(FCRecordChainFetchOperation);
    [(FCRecordChainFetchOperation *)v4 setContext:self->_cloudContext];
    v25[0] = self->_tagID;
    v5 = MEMORY[0x1E695DEC8];
    v6 = v25[0];
    v7 = [v5 arrayWithObjects:v25 count:1];

    [(FCRecordChainFetchOperation *)v4 setTopLevelRecordIDs:v7];
    v23[0] = @"Article";
    v22[0] = @"sourceChannelTagID";
    v22[1] = @"parentIssueID";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    v24[0] = v8;
    v23[1] = @"Tag";
    v21 = @"publisherSpecifiedArticleIDs";
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    v23[2] = @"Issue";
    v24[1] = v9;
    v24[2] = MEMORY[0x1E695E0F0];
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];
    [(FCRecordChainFetchOperation *)v4 setLinkKeysByRecordType:v10];

    tagID = self->_tagID;
    v11 = tagID;
    v12 = [FCCachePolicy cachePolicyWithSoftMaxAge:300.0];
    v20 = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&tagID count:1];
    [(FCRecordChainFetchOperation *)v4 setCachePoliciesByRecordID:v13];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __87__FCTagFeedPromotedHeadlinesFetchOperation__fetchPinnedHeadlinesWithCompletionHandler___block_invoke;
    v17[3] = &unk_1E7C3F228;
    v14 = v3;
    v17[4] = self;
    v18 = v14;
    [(FCRecordChainFetchOperation *)v4 setRecordChainCompletionHandler:v17];
    [(FCOperation *)self associateChildOperation:v4];
    [(FCOperation *)v4 start];
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __60__FCTagFeedPromotedHeadlinesFetchOperation_performOperation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  newValue = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    if (v7)
    {
      objc_setProperty_nonatomic_copy(v7, v5, newValue, 408);
      v7 = *(a1 + 32);
    }

    v8 = 0;
  }

  [v7 finishedPerformingOperationWithError:v8];
}

- (void)operationWillFinishWithError:(id)a3
{
  v4 = a3;
  v5 = [(FCTagFeedPromotedHeadlinesFetchOperation *)self fetchCompletionHandler];
  if (self)
  {
    resultHeadlines = self->_resultHeadlines;
  }

  else
  {
    resultHeadlines = 0;
  }

  if (resultHeadlines)
  {
    v7 = resultHeadlines;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  v8 = v5;
  (*(v5 + 16))(v5, v7, v4);
}

void __87__FCTagFeedPromotedHeadlinesFetchOperation__fetchPinnedHeadlinesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v73 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v57 = MEMORY[0x1E69E9820];
    v58 = 3221225472;
    v59 = __87__FCTagFeedPromotedHeadlinesFetchOperation__fetchPinnedHeadlinesWithCompletionHandler___block_invoke_2;
    v60 = &unk_1E7C37778;
    v62 = *(a1 + 40);
    v61 = v6;
    v62[2](v62, 0, v61);

    v7 = v62;
  }

  else
  {
    v7 = [v5 objectForKeyedSubscript:&unk_1F2E70368];
    v8 = [v5 objectForKeyedSubscript:&unk_1F2E70380];
    v9 = [v5 objectForKeyedSubscript:&unk_1F2E70398];
    v10 = *(a1 + 32);
    if (v10)
    {
      v10 = v10[47];
    }

    v54 = v10;
    v11 = *(a1 + 32);
    if (v11)
    {
      v12 = *(v11 + 384);
    }

    else
    {
      v12 = 0;
    }

    v13 = [v12 tagController];
    v14 = [v13 tagsForTagRecords:v8];

    v15 = *(a1 + 32);
    if (v15)
    {
      v16 = *(v15 + 392);
    }

    else
    {
      v16 = 0;
    }

    v17 = [v14 objectForKey:v16];
    v18 = [MEMORY[0x1E695DF00] date];
    v19 = v18;
    v20 = *(a1 + 32);
    v53 = v14;
    if (v20)
    {
      v21 = *(v20 + 400);
    }

    else
    {
      v21 = 0.0;
    }

    v22 = [v18 fc_dateBySubtractingTimeInterval:v21];

    v23 = [v17 publisherSpecifiedArticleIDsModifiedDate];
    v52 = v22;
    LOBYTE(v22) = [v23 fc_isLaterThan:v22];

    if (v22)
    {
      v24 = *(a1 + 32);
      v50 = v8;
      if (v24)
      {
        v24 = v24[48];
      }

      v25 = v24;
      v26 = [v25 assetManager];
      v27 = MEMORY[0x1E695DFD8];
      v28 = [v17 publisherSpecifiedArticleIDs];
      v29 = [v27 setWithArray:v28];
      v51 = FCHeadlinesByArticleIDFromHeldRecords(v54, v26, v29, v7, v53, v9, 0, 1);

      v30 = FCOperationLog;
      v49 = v9;
      if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
      {
        v31 = *(a1 + 32);
        log = v30;
        v47 = [v31 shortOperationDescription];
        v32 = [v17 fetchDate];
        v33 = [v17 lastModifiedDate];
        v34 = [v17 publisherSpecifiedArticleIDs];
        v35 = [v51 allKeys];
        *buf = 138544386;
        v64 = v47;
        v65 = 2114;
        v66 = v32;
        v67 = 2114;
        v68 = v33;
        v69 = 2114;
        v70 = v34;
        v71 = 2114;
        v72 = v35;
        _os_log_impl(&dword_1B63EF000, log, OS_LOG_TYPE_DEFAULT, "%{public}@ did fetch promoted headlines, tagFetchedAt=%{public}@, tagModifiedAt=%{public}@, tagPromotedArticleIDs=%{public}@, fetchedArticleIDs=%{public}@", buf, 0x34u);
      }

      v36 = *(a1 + 32);
      if (v36)
      {
        v37 = *(v36 + 384);
        v38 = *(v36 + 376);
        v39 = [FCFeedTransformationFilter transformationWithFilterOptions:0x200002118 configuration:v38 context:v37];
      }

      else
      {
        v39 = 0;
      }

      v40 = [v17 publisherSpecifiedArticleIDs];
      v41 = [v51 nf_objectsForKeysWithoutMarker:v40];

      v42 = [v39 transformHeadlines:v41];
      v43 = [v17 publisherSpecifiedArticles];
      v44 = FCAssignHeadlineMetadata(v42, v43, 0);

      (*(*(a1 + 40) + 16))();
      v9 = v49;
      v8 = v50;
    }

    else
    {
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __87__FCTagFeedPromotedHeadlinesFetchOperation__fetchPinnedHeadlinesWithCompletionHandler___block_invoke_14;
      v55[3] = &unk_1E7C37BC0;
      v45 = *(a1 + 40);
      v55[4] = *(a1 + 32);
      v56 = v45;
      __87__FCTagFeedPromotedHeadlinesFetchOperation__fetchPinnedHeadlinesWithCompletionHandler___block_invoke_14(v55);
    }
  }

  v46 = *MEMORY[0x1E69E9840];
}

uint64_t __87__FCTagFeedPromotedHeadlinesFetchOperation__fetchPinnedHeadlinesWithCompletionHandler___block_invoke_14(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 shortOperationDescription];
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ did will finish early because promoted articles are expired", &v8, 0xCu);
  }

  result = (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

@end