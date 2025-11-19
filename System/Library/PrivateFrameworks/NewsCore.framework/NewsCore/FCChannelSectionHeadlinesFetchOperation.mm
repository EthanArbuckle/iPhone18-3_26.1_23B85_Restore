@interface FCChannelSectionHeadlinesFetchOperation
- (BOOL)validateOperation;
- (FCChannelSectionHeadlinesFetchOperation)init;
- (FCChannelSectionHeadlinesFetchOperation)initWithCloudContext:(id)a3 channelID:(id)a4 maxHeadlinesCount:(unint64_t)a5 maxHeadlinesPerFeed:(unint64_t)a6 fetchWindow:(id)a7 sectionsCacheTimeToLive:(double)a8 edgeCacheHint:(id)a9;
- (id)_channelAndSectionTagsPromiseWithChannelID:(id)a3;
- (id)_channelPromiseWithTagsByID:(id)a3 parentChannelID:(id)a4;
- (id)_configurationPromise;
- (id)_createFeedRequestWithFeedID:(id)a3 feedRange:(id)a4;
- (id)_feedItemsPromiseWithChannel:(id)a3 sectionsByID:(id)a4 configuration:(id)a5;
- (id)_feedItemsTransformationWithConfiguration:(id)a3;
- (id)_headlinesAssembledBySectionFromFeedItemMap:(id)a3 sectionIDsByFeedID:(id)a4 sectionsByID:(id)a5;
- (id)_headlinesPromiseWithFeedItems:(id)a3 sectionsByID:(id)a4 configuration:(id)a5;
- (id)_sectionsPromiseWithTagsByID:(id)a3 sectionIDs:(id)a4;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
@end

@implementation FCChannelSectionHeadlinesFetchOperation

- (FCChannelSectionHeadlinesFetchOperation)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCChannelSectionHeadlinesFetchOperation init]";
    v10 = 2080;
    v11 = "FCChannelSectionHeadlinesFetchOperation.m";
    v12 = 1024;
    v13 = 139;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCChannelSectionHeadlinesFetchOperation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCChannelSectionHeadlinesFetchOperation)initWithCloudContext:(id)a3 channelID:(id)a4 maxHeadlinesCount:(unint64_t)a5 maxHeadlinesPerFeed:(unint64_t)a6 fetchWindow:(id)a7 sectionsCacheTimeToLive:(double)a8 edgeCacheHint:(id)a9
{
  v17 = a3;
  v18 = a4;
  v19 = a7;
  v20 = a9;
  v26.receiver = self;
  v26.super_class = FCChannelSectionHeadlinesFetchOperation;
  v21 = [(FCOperation *)&v26 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_cloudContext, a3);
    v23 = [v18 copy];
    channelID = v22->_channelID;
    v22->_channelID = v23;

    v22->_maxHeadlinesCount = a5;
    v22->_maxHeadlinesPerFeed = a6;
    objc_storeStrong(&v22->_fetchWindow, a7);
    v22->_sectionsCacheTimeToLive = a8;
    objc_storeStrong(&v22->_edgeCacheHint, a9);
  }

  return v22;
}

- (BOOL)validateOperation
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [(FCChannelSectionHeadlinesFetchOperation *)self cloudContext];

  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Channel section headlines fetch operation must have a content context"];
    v13 = 136315906;
    v14 = "[FCChannelSectionHeadlinesFetchOperation validateOperation]";
    v15 = 2080;
    v16 = "FCChannelSectionHeadlinesFetchOperation.m";
    v17 = 1024;
    v18 = 170;
    v19 = 2114;
    v20 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v13, 0x26u);
  }

  v4 = [(FCChannelSectionHeadlinesFetchOperation *)self channelID];

  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Channel section headlines fetch operation must have a channel ID"];
    v13 = 136315906;
    v14 = "[FCChannelSectionHeadlinesFetchOperation validateOperation]";
    v15 = 2080;
    v16 = "FCChannelSectionHeadlinesFetchOperation.m";
    v17 = 1024;
    v18 = 174;
    v19 = 2114;
    v20 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v13, 0x26u);
  }

  v5 = [(FCChannelSectionHeadlinesFetchOperation *)self fetchCompletionHandler];

  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Channel section headlines fetch operation must have a fetch completion handler"];
    v13 = 136315906;
    v14 = "[FCChannelSectionHeadlinesFetchOperation validateOperation]";
    v15 = 2080;
    v16 = "FCChannelSectionHeadlinesFetchOperation.m";
    v17 = 1024;
    v18 = 178;
    v19 = 2114;
    v20 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v13, 0x26u);
  }

  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  result = !v6 && v5 != 0;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)performOperation
{
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__79;
  v30[4] = __Block_byref_object_dispose__79;
  v31 = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__79;
  v28[4] = __Block_byref_object_dispose__79;
  v29 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__79;
  v26[4] = __Block_byref_object_dispose__79;
  v27 = 0;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __59__FCChannelSectionHeadlinesFetchOperation_performOperation__block_invoke;
  v25[3] = &unk_1E7C396C0;
  v25[4] = self;
  v17 = [MEMORY[0x1E69B68F8] firstly:v25];
  v16 = zalgo();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __59__FCChannelSectionHeadlinesFetchOperation_performOperation__block_invoke_2;
  v24[3] = &unk_1E7C45D18;
  v24[4] = self;
  v24[5] = v30;
  v15 = [v17 thenOn:v16 then:v24];
  v14 = zalgo();
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __59__FCChannelSectionHeadlinesFetchOperation_performOperation__block_invoke_3;
  v23[3] = &unk_1E7C45D40;
  v23[4] = self;
  v23[5] = v28;
  v13 = [v15 thenOn:v14 then:v23];
  v3 = zalgo();
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __59__FCChannelSectionHeadlinesFetchOperation_performOperation__block_invoke_4;
  v22[3] = &unk_1E7C45D68;
  v22[4] = self;
  v22[5] = v28;
  v4 = [v13 thenOn:v3 then:v22];
  v5 = zalgo();
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __59__FCChannelSectionHeadlinesFetchOperation_performOperation__block_invoke_5;
  v21[3] = &unk_1E7C45D90;
  v21[4] = self;
  v21[5] = v26;
  v21[6] = v30;
  v6 = [v4 thenOn:v5 then:v21];
  v7 = zalgo();
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __59__FCChannelSectionHeadlinesFetchOperation_performOperation__block_invoke_6;
  v20[3] = &unk_1E7C45DB8;
  v20[4] = self;
  v20[5] = v26;
  v20[6] = v30;
  v8 = [v6 thenOn:v7 then:v20];
  v9 = zalgo();
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __59__FCChannelSectionHeadlinesFetchOperation_performOperation__block_invoke_7;
  v19[3] = &unk_1E7C45DE0;
  v19[4] = self;
  v10 = [v8 thenOn:v9 then:v19];
  v11 = zalgo();
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __59__FCChannelSectionHeadlinesFetchOperation_performOperation__block_invoke_8;
  v18[3] = &unk_1E7C36E50;
  v18[4] = self;
  v12 = [v10 errorOn:v11 error:v18];

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(v28, 8);

  _Block_object_dispose(v30, 8);
}

id __59__FCChannelSectionHeadlinesFetchOperation_performOperation__block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  v5 = *(a1 + 32);
  v6 = [v5 channelID];
  v7 = [v5 _channelAndSectionTagsPromiseWithChannelID:v6];

  return v7;
}

id __59__FCChannelSectionHeadlinesFetchOperation_performOperation__block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  v5 = *(a1 + 32);
  v6 = *(*(*(a1 + 40) + 8) + 40);
  v7 = [v5 channelID];
  v8 = [v5 _channelPromiseWithTagsByID:v6 parentChannelID:v7];

  return v8;
}

id __59__FCChannelSectionHeadlinesFetchOperation_performOperation__block_invoke_4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 424), a2);
  v4 = a2;
  v5 = *(a1 + 32);
  v6 = *(*(*(a1 + 40) + 8) + 40);
  v7 = [v5[53] sectionIDs];
  v8 = [v5 _sectionsPromiseWithTagsByID:v6 sectionIDs:v7];

  return v8;
}

id __59__FCChannelSectionHeadlinesFetchOperation_performOperation__block_invoke_5(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  v5 = [*(a1 + 32) _feedItemsPromiseWithChannel:*(*(a1 + 32) + 424) sectionsByID:*(*(*(a1 + 40) + 8) + 40) configuration:*(*(*(a1 + 48) + 8) + 40)];

  return v5;
}

uint64_t __59__FCChannelSectionHeadlinesFetchOperation_performOperation__block_invoke_7(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setSectionHeadlinesGroups:a2];
  [*(a1 + 32) finishedPerformingOperationWithError:0];
  return 0;
}

- (void)operationWillFinishWithError:(id)a3
{
  v10 = a3;
  v4 = [FCChannelSectionHeadlinesFetchResult alloc];
  v5 = [(FCChannelSectionHeadlinesFetchOperation *)self channel];
  v6 = [(FCChannelSectionHeadlinesFetchOperation *)self sectionHeadlinesGroups];
  v7 = [(FCChannelSectionHeadlinesFetchResult *)v4 initWithChannel:v5 sectionHeadlinesGroups:v6];

  v8 = [(FCChannelSectionHeadlinesFetchOperation *)self fetchCompletionHandler];

  if (v8)
  {
    v9 = [(FCChannelSectionHeadlinesFetchOperation *)self fetchCompletionHandler];
    (v9)[2](v9, v7, v10);
  }
}

- (id)_configurationPromise
{
  v2 = [(FCChannelSectionHeadlinesFetchOperation *)self cloudContext];
  v3 = [v2 configurationManager];
  v4 = FCCoreConfigurationPromise(v3);

  return v4;
}

- (id)_channelAndSectionTagsPromiseWithChannelID:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "channelID"];
    *buf = 136315906;
    v14 = "[FCChannelSectionHeadlinesFetchOperation _channelAndSectionTagsPromiseWithChannelID:]";
    v15 = 2080;
    v16 = "FCChannelSectionHeadlinesFetchOperation.m";
    v17 = 1024;
    v18 = 229;
    v19 = 2114;
    v20 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = objc_alloc(MEMORY[0x1E69B68F8]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __86__FCChannelSectionHeadlinesFetchOperation__channelAndSectionTagsPromiseWithChannelID___block_invoke;
  v11[3] = &unk_1E7C3B310;
  v11[4] = self;
  v12 = v4;
  v6 = v4;
  v7 = [v5 initWithResolver:v11];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

void __86__FCChannelSectionHeadlinesFetchOperation__channelAndSectionTagsPromiseWithChannelID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) cloudContext];
  v8 = [v7 tagController];
  v20[0] = *(a1 + 40);
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  [*(a1 + 32) sectionsCacheTimeToLive];
  v10 = [v8 fetchOperationForTagsIncludingChildrenWithIDs:v9 softMaxAge:?];

  [v10 setCanSendFetchCompletionSynchronously:1];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __86__FCChannelSectionHeadlinesFetchOperation__channelAndSectionTagsPromiseWithChannelID___block_invoke_2;
  v17 = &unk_1E7C404C8;
  v18 = v6;
  v19 = v5;
  v11 = v5;
  v12 = v6;
  [v10 setFetchCompletionBlock:&v14];
  [*(a1 + 32) associateChildOperation:{v10, v14, v15, v16, v17}];
  [v10 start];

  v13 = *MEMORY[0x1E69E9840];
}

void __86__FCChannelSectionHeadlinesFetchOperation__channelAndSectionTagsPromiseWithChannelID___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];
  if (v4)
  {
    v7 = *(a1 + 32);
    v6 = v4;
    v7[2](v7, v6);
  }

  else
  {
    v5 = [v3 fetchedObject];
    (*(*(a1 + 40) + 16))();
  }
}

- (id)_channelPromiseWithTagsByID:(id)a3 parentChannelID:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagsByID"];
    *buf = 136315906;
    v21 = "[FCChannelSectionHeadlinesFetchOperation _channelPromiseWithTagsByID:parentChannelID:]";
    v22 = 2080;
    v23 = "FCChannelSectionHeadlinesFetchOperation.m";
    v24 = 1024;
    v25 = 256;
    v26 = 2114;
    v27 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "parentChannelID"];
    *buf = 136315906;
    v21 = "[FCChannelSectionHeadlinesFetchOperation _channelPromiseWithTagsByID:parentChannelID:]";
    v22 = 2080;
    v23 = "FCChannelSectionHeadlinesFetchOperation.m";
    v24 = 1024;
    v25 = 257;
    v26 = 2114;
    v27 = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v8 = objc_alloc(MEMORY[0x1E69B68F8]);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __87__FCChannelSectionHeadlinesFetchOperation__channelPromiseWithTagsByID_parentChannelID___block_invoke;
  v16[3] = &unk_1E7C3B768;
  v17 = v6;
  v18 = self;
  v19 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [v8 initWithResolver:v16];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

void __87__FCChannelSectionHeadlinesFetchOperation__channelPromiseWithTagsByID_parentChannelID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) channelID];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [v9 asChannel];

  if (v10)
  {
    v11 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 48)];
    v12 = [v11 asChannel];

    v5[2](v5, v12);
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __87__FCChannelSectionHeadlinesFetchOperation__channelPromiseWithTagsByID_parentChannelID___block_invoke_2;
    v13[3] = &unk_1E7C37BC0;
    v13[4] = *(a1 + 40);
    v14 = v6;
    __87__FCChannelSectionHeadlinesFetchOperation__channelPromiseWithTagsByID_parentChannelID___block_invoke_2(v13);
  }
}

void __87__FCChannelSectionHeadlinesFetchOperation__channelPromiseWithTagsByID_parentChannelID___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 shortOperationDescription];
    v6 = [*(a1 + 32) channelID];
    v12 = 138543618;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Fetch failed. The tag with identifer %@ is not a valid channel.", &v12, 0x16u);
  }

  v7 = MEMORY[0x1E696ABC0];
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) channelID];
  v10 = [v7 fc_invalidChannelErrorForTagID:v9];
  (*(v8 + 16))(v8, v10);

  v11 = *MEMORY[0x1E69E9840];
}

- (id)_sectionsPromiseWithTagsByID:(id)a3 sectionIDs:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagsByID"];
    *buf = 136315906;
    v21 = "[FCChannelSectionHeadlinesFetchOperation _sectionsPromiseWithTagsByID:sectionIDs:]";
    v22 = 2080;
    v23 = "FCChannelSectionHeadlinesFetchOperation.m";
    v24 = 1024;
    v25 = 272;
    v26 = 2114;
    v27 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "sectionIDs"];
    *buf = 136315906;
    v21 = "[FCChannelSectionHeadlinesFetchOperation _sectionsPromiseWithTagsByID:sectionIDs:]";
    v22 = 2080;
    v23 = "FCChannelSectionHeadlinesFetchOperation.m";
    v24 = 1024;
    v25 = 273;
    v26 = 2114;
    v27 = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v8 = objc_alloc(MEMORY[0x1E69B68F8]);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __83__FCChannelSectionHeadlinesFetchOperation__sectionsPromiseWithTagsByID_sectionIDs___block_invoke;
  v16[3] = &unk_1E7C3B768;
  v17 = v7;
  v18 = v6;
  v19 = self;
  v9 = v6;
  v10 = v7;
  v11 = [v8 initWithResolver:v16];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

void __83__FCChannelSectionHeadlinesFetchOperation__sectionsPromiseWithTagsByID_sectionIDs___block_invoke(id *a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v31 = a2;
  v30 = a3;
  v33 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = a1[4];
  v5 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v37;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v37 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(*(&v36 + 1) + 8 * v8);
      v10 = [a1[5] objectForKeyedSubscript:{v9, v30}];
      v11 = [v10 asSection];

      if (!v11)
      {
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __83__FCChannelSectionHeadlinesFetchOperation__sectionsPromiseWithTagsByID_sectionIDs___block_invoke_2;
        v34[3] = &unk_1E7C38FF0;
        v34[4] = a1[6];
        v34[5] = v9;
        v28 = v30;
        v35 = v30;
        __83__FCChannelSectionHeadlinesFetchOperation__sectionsPromiseWithTagsByID_sectionIDs___block_invoke_2(v34);

        v26 = v31;
        v27 = v33;
        goto LABEL_19;
      }

      v12 = [a1[5] objectForKeyedSubscript:v9];
      v13 = [v12 asSection];

      v14 = [a1[6] channel];
      v15 = [v14 defaultSectionID];
      v16 = [v13 identifier];
      v17 = [v15 isEqualToString:v16];

      if (!v17)
      {
        v19 = [v13 supergroupKnobs];
        if (![v19 isEligible])
        {

LABEL_13:
          v21 = FCOperationLog;
          if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
          {
            v22 = a1[6];
            v23 = v21;
            v24 = [v22 shortOperationDescription];
            v25 = [v13 description];
            *buf = 138543618;
            v41 = v24;
            v42 = 2114;
            v43 = v25;
            _os_log_impl(&dword_1B63EF000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: Filtering out ineligible section: %{public}@", buf, 0x16u);
          }

          goto LABEL_15;
        }

        v20 = [FCTagController isTagAllowed:v13];

        if (!v20)
        {
          goto LABEL_13;
        }
      }

      v18 = [v13 asSection];
      [v33 setObject:v18 forKeyedSubscript:v9];

LABEL_15:
      if (v6 == ++v8)
      {
        v6 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v26 = v31;
  v27 = v33;
  (*(v31 + 2))(v31, v33);
  v28 = v30;
LABEL_19:

  v29 = *MEMORY[0x1E69E9840];
}

void __83__FCChannelSectionHeadlinesFetchOperation__sectionsPromiseWithTagsByID_sectionIDs___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 shortOperationDescription];
    v6 = *(a1 + 40);
    v12 = 138543618;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Fetch failed. The tag with identifer %@ is not a valid section.", &v12, 0x16u);
  }

  v7 = *(a1 + 48);
  v8 = MEMORY[0x1E696ABC0];
  v9 = [*(a1 + 32) channelID];
  v10 = [v8 fc_invalidChannelErrorForTagID:v9];
  (*(v7 + 16))(v7, v10);

  v11 = *MEMORY[0x1E69E9840];
}

- (id)_feedItemsPromiseWithChannel:(id)a3 sectionsByID:(id)a4 configuration:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "channel"];
    *buf = 136315906;
    v25 = "[FCChannelSectionHeadlinesFetchOperation _feedItemsPromiseWithChannel:sectionsByID:configuration:]";
    v26 = 2080;
    v27 = "FCChannelSectionHeadlinesFetchOperation.m";
    v28 = 1024;
    v29 = 309;
    v30 = 2114;
    v31 = v18;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v10)
    {
      goto LABEL_6;
    }
  }

  else if (v10)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "configuration"];
    *buf = 136315906;
    v25 = "[FCChannelSectionHeadlinesFetchOperation _feedItemsPromiseWithChannel:sectionsByID:configuration:]";
    v26 = 2080;
    v27 = "FCChannelSectionHeadlinesFetchOperation.m";
    v28 = 1024;
    v29 = 310;
    v30 = 2114;
    v31 = v19;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  v11 = objc_alloc(MEMORY[0x1E69B68F8]);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __99__FCChannelSectionHeadlinesFetchOperation__feedItemsPromiseWithChannel_sectionsByID_configuration___block_invoke;
  v20[3] = &unk_1E7C45E30;
  v20[4] = self;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  v15 = [v11 initWithResolver:v20];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

void __99__FCChannelSectionHeadlinesFetchOperation__feedItemsPromiseWithChannel_sectionsByID_configuration___block_invoke(id *a1, void *a2, void *a3)
{
  v63 = *MEMORY[0x1E69E9840];
  v41 = a2;
  v40 = a3;
  v5 = [a1[4] fetchWindow];
  v6 = [v5 laterDate];
  v7 = [v6 fc_dateByRoundingDownToNearestQuarterHour];

  v8 = [a1[4] fetchWindow];
  v9 = [v8 earlierDate];

  v42 = v9;
  v43 = v7;
  v44 = [FCFeedRange feedRangeFromDate:v7 toDate:v9];
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v12 = [a1[5] sectionIDs];
  v13 = [v12 countByEnumeratingWithState:&v50 objects:v62 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v51;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v51 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v50 + 1) + 8 * i);
        v18 = [a1[6] objectForKeyedSubscript:v17];

        if (v18)
        {
          v19 = [a1[5] freeFeedIDForSection:v17 bin:3];
          [v10 setObject:v17 forKeyedSubscript:v19];
          v20 = [a1[4] _createFeedRequestWithFeedID:v19 feedRange:v44];
          [v11 addObject:v20];

          v21 = [a1[5] paidFeedIDForSection:v17 bin:3];
          v22 = v21;
          if (v21 && ([v21 isEqualToString:v19] & 1) == 0)
          {
            [v10 setObject:v17 forKeyedSubscript:v22];
            v23 = [a1[4] _createFeedRequestWithFeedID:v22 feedRange:v44];
            [v11 addObject:v23];
          }
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v50 objects:v62 count:16];
    }

    while (v14);
  }

  v24 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v25 = a1[4];
    v26 = v24;
    v27 = [v25 shortOperationDescription];
    v28 = [v44 dateRange];
    v29 = [v11 count];
    v30 = [a1[5] identifier];
    *buf = 138544130;
    v55 = v27;
    v56 = 2112;
    v57 = v28;
    v58 = 2048;
    v59 = v29;
    v60 = 2112;
    v61 = v30;
    _os_log_impl(&dword_1B63EF000, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: Fetching feed items in range %@ for %lu number of feeds in channel %@", buf, 0x2Au);
  }

  v31 = objc_alloc_init(FCFeedRequestOperation);
  v32 = [a1[4] cloudContext];
  [(FCFeedRequestOperation *)v31 setContext:v32];

  [(FCFeedRequestOperation *)v31 setConfiguration:a1[7]];
  [(FCFeedRequestOperation *)v31 setFeedRequests:v11];
  -[FCFeedRequestOperation setMaxCount:](v31, "setMaxCount:", [a1[4] maxHeadlinesCount]);
  [(FCFeedRequestOperation *)v31 setOptions:14];
  v33 = [a1[4] edgeCacheHint];
  [(FCFeedRequestOperation *)v31 setEdgeCacheHint:v33];

  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __99__FCChannelSectionHeadlinesFetchOperation__feedItemsPromiseWithChannel_sectionsByID_configuration___block_invoke_102;
  v45[3] = &unk_1E7C45E08;
  v34 = a1[4];
  v48 = v40;
  v45[4] = v34;
  v35 = a1[7];
  v49 = v41;
  v46 = v35;
  v47 = v10;
  v36 = v10;
  v37 = v41;
  v38 = v40;
  [(FCFeedRequestOperation *)v31 setRequestCompletionHandler:v45];
  [a1[4] associateChildOperation:v31];
  [(FCOperation *)v31 start];

  v39 = *MEMORY[0x1E69E9840];
}

void __99__FCChannelSectionHeadlinesFetchOperation__feedItemsPromiseWithChannel_sectionsByID_configuration___block_invoke_102(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v13 = *(a1 + 56);
    v12 = v7;
    v13[2](v13, v12);
  }

  else
  {
    v8 = [*(a1 + 32) _feedItemsTransformationWithConfiguration:*(a1 + 40)];
    v9 = [v8 transformFeedItems:v6];
    v10 = *(a1 + 64);
    v11 = [[FCFeedItemsWithIDLookupResult alloc] initWithSectionIDByFeedID:*(a1 + 48) feedItems:v9];
    (*(v10 + 16))(v10, v11);
  }
}

- (id)_headlinesPromiseWithFeedItems:(id)a3 sectionsByID:(id)a4 configuration:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "feedItemsResult"];
    *buf = 136315906;
    v27 = "[FCChannelSectionHeadlinesFetchOperation _headlinesPromiseWithFeedItems:sectionsByID:configuration:]";
    v28 = 2080;
    v29 = "FCChannelSectionHeadlinesFetchOperation.m";
    v30 = 1024;
    v31 = 376;
    v32 = 2114;
    v33 = v18;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v9)
    {
      goto LABEL_6;
    }
  }

  else if (v9)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "sectionsByID"];
    *buf = 136315906;
    v27 = "[FCChannelSectionHeadlinesFetchOperation _headlinesPromiseWithFeedItems:sectionsByID:configuration:]";
    v28 = 2080;
    v29 = "FCChannelSectionHeadlinesFetchOperation.m";
    v30 = 1024;
    v31 = 377;
    v32 = 2114;
    v33 = v19;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!v10 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "configuration"];
    *buf = 136315906;
    v27 = "[FCChannelSectionHeadlinesFetchOperation _headlinesPromiseWithFeedItems:sectionsByID:configuration:]";
    v28 = 2080;
    v29 = "FCChannelSectionHeadlinesFetchOperation.m";
    v30 = 1024;
    v31 = 378;
    v32 = 2114;
    v33 = v20;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v11 = objc_alloc(MEMORY[0x1E69B68F8]);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __101__FCChannelSectionHeadlinesFetchOperation__headlinesPromiseWithFeedItems_sectionsByID_configuration___block_invoke;
  v21[3] = &unk_1E7C45E30;
  v22 = v10;
  v23 = self;
  v24 = v8;
  v25 = v9;
  v12 = v9;
  v13 = v8;
  v14 = v10;
  v15 = [v11 initWithResolver:v21];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

void __101__FCChannelSectionHeadlinesFetchOperation__headlinesPromiseWithFeedItems_sectionsByID_configuration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_new();
  [v4 setConfiguration:*(a1 + 32)];
  v5 = [*(a1 + 40) cloudContext];
  [v4 setContext:v5];

  v6 = [*(a1 + 48) feedItems];
  [v4 setFeedItems:v6];

  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __101__FCChannelSectionHeadlinesFetchOperation__headlinesPromiseWithFeedItems_sectionsByID_configuration___block_invoke_2;
  v12 = &unk_1E7C45E58;
  v7 = *(a1 + 48);
  v13 = *(a1 + 40);
  v14 = v7;
  v15 = *(a1 + 56);
  v16 = v3;
  v8 = v3;
  [v4 setHeadlinesMapCompletionHandler:&v9];
  [*(a1 + 40) associateChildOperation:{v4, v9, v10, v11, v12, v13}];
  [v4 start];
}

void __101__FCChannelSectionHeadlinesFetchOperation__headlinesPromiseWithFeedItems_sectionsByID_configuration___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) sectionIDsByFeedID];
  v18 = v3;
  v6 = [v4 _headlinesAssembledBySectionFromFeedItemMap:v3 sectionIDsByFeedID:v5 sectionsByID:*(a1 + 48)];

  v7 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * v12);
        v14 = [FCChannelSectionHeadlinesOperationGroup alloc];
        v15 = [v8 objectForKeyedSubscript:v13];
        v16 = [(FCChannelSectionHeadlinesOperationGroup *)v14 initWithSection:v13 headlines:v15];
        [v7 addObject:v16];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  (*(*(a1 + 56) + 16))();
  v17 = *MEMORY[0x1E69E9840];
}

- (id)_createFeedRequestWithFeedID:(id)a3 feedRange:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(FCFeedRequest);
  [(FCFeedRequest *)v8 setFeedID:v7];

  [(FCFeedRequest *)v8 setMaxCount:[(FCChannelSectionHeadlinesFetchOperation *)self maxHeadlinesPerFeed]];
  [(FCFeedRequest *)v8 setFeedRange:v6];

  return v8;
}

- (id)_headlinesAssembledBySectionFromFeedItemMap:(id)a3 sectionIDsByFeedID:(id)a4 sectionsByID:(id)a5
{
  v44 = *MEMORY[0x1E69E9840];
  v32 = a3;
  v33 = a4;
  v7 = a5;
  v8 = objc_opt_new();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v9 = [v7 allValues];
  v10 = [v9 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v39;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v38 + 1) + 8 * i);
        v15 = [MEMORY[0x1E695DF70] array];
        [v8 setObject:v15 forKeyedSubscript:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v11);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v16 = v32;
  v17 = [v32 keyEnumerator];
  v18 = [v17 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v35;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v34 + 1) + 8 * j);
        v23 = [v22 feedID];
        v24 = [v33 objectForKeyedSubscript:v23];

        v25 = [v7 objectForKeyedSubscript:v24];
        v26 = [v16 objectForKey:v22];
        v27 = v26;
        if (v25)
        {
          v28 = v26 == 0;
        }

        else
        {
          v28 = 1;
        }

        if (!v28)
        {
          v29 = [v8 objectForKeyedSubscript:v25];
          [v29 addObject:v27];

          v16 = v32;
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v19);
  }

  v30 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)_feedItemsTransformationWithConfiguration:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "configuration"];
    *buf = 136315906;
    v21 = "[FCChannelSectionHeadlinesFetchOperation _feedItemsTransformationWithConfiguration:]";
    v22 = 2080;
    v23 = "FCChannelSectionHeadlinesFetchOperation.m";
    v24 = 1024;
    v25 = 444;
    v26 = 2114;
    v27 = v17;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [(FCChannelSectionHeadlinesFetchOperation *)self cloudContext];
  v6 = objc_alloc(MEMORY[0x1E695DFD8]);
  v7 = [(FCChannelSectionHeadlinesFetchOperation *)self channelID];
  v19 = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v9 = [v6 initWithArray:v8];
  v10 = [FCFeedTransformationFilter transformationWithFilterOptions:0x60002213CLL configuration:v4 context:v5 ignoreMutedTagIDs:v9];

  v11 = [v5 readingHistory];
  v12 = [FCFeedTransformationUnreadOnly transformationWithReadingHistory:v11];

  v18[0] = v10;
  v18[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v14 = [[FCFeedTransformationComposite alloc] initWithFeedTransformations:v13];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

@end