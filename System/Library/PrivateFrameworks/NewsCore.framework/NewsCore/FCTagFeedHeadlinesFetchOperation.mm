@interface FCTagFeedHeadlinesFetchOperation
- (BOOL)canRetryWithError:(id)a3 retryAfter:(id *)a4;
- (FCTagFeedHeadlinesFetchOperation)initWithConfiguration:(id)a3 cloudContext:(id)a4 feedDescriptor:(id)a5 personalizer:(id)a6;
- (void)operationWillFinishWithError:(id)a3;
- (void)performOperation;
- (void)prepareOperation;
- (void)resetForRetry;
@end

@implementation FCTagFeedHeadlinesFetchOperation

- (FCTagFeedHeadlinesFetchOperation)initWithConfiguration:(id)a3 cloudContext:(id)a4 feedDescriptor:(id)a5 personalizer:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v29.receiver = self;
  v29.super_class = FCTagFeedHeadlinesFetchOperation;
  v15 = [(FCOperation *)&v29 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_configuration, a3);
    objc_storeStrong(&v16->_cloudContext, a4);
    objc_storeStrong(&v16->_feedDescriptor, a5);
    objc_storeStrong(&v16->_personalizer, a6);
    v17 = [MEMORY[0x1E695DF00] date];
    topOfFeedDate = v16->_topOfFeedDate;
    v16->_topOfFeedDate = v17;

    v19 = [MEMORY[0x1E695DF00] date];
    v20 = [MEMORY[0x1E695DF00] dateWithTimeInterval:v19 sinceDate:-21600.0];
    v21 = [[FCDateRange alloc] initWithEarlierDate:v20 laterDate:v19];
    v22 = [FCFeedRange feedRangeFromDateRange:v21];
    freeFeedRange = v16->_freeFeedRange;
    v16->_freeFeedRange = v22;

    v24 = [FCFeedRange feedRangeFromDateRange:v21];
    paidFeedRange = v16->_paidFeedRange;
    v16->_paidFeedRange = v24;

    v16->_maxFetchCount = 10;
    v26 = [MEMORY[0x1E695DEC8] array];
    precedingHeadlines = v16->_precedingHeadlines;
    v16->_precedingHeadlines = v26;
  }

  return v16;
}

- (void)prepareOperation
{
  v3 = [(FCTagFeedHeadlinesFetchOperation *)self precedingHeadlines];
  v4 = [v3 fc_setByTransformingWithBlock:&__block_literal_global_123];
  shownArticleIDs = self->_shownArticleIDs;
  self->_shownArticleIDs = v4;

  v8 = [(FCTagFeedHeadlinesFetchOperation *)self precedingHeadlines];
  v6 = [v8 fc_setByTransformingWithBlock:&__block_literal_global_5_1];
  shownClusterIDs = self->_shownClusterIDs;
  self->_shownClusterIDs = v6;
}

- (void)performOperation
{
  v47 = *MEMORY[0x1E69E9840];
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = __Block_byref_object_copy__57;
  v38[4] = __Block_byref_object_dispose__57;
  v39 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__57;
  v34[4] = __Block_byref_object_dispose__57;
  v35 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = __Block_byref_object_copy__57;
  v32[4] = __Block_byref_object_dispose__57;
  v33 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__57;
  v30[4] = __Block_byref_object_dispose__57;
  v31 = 0;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __52__FCTagFeedHeadlinesFetchOperation_performOperation__block_invoke;
  v29[3] = &unk_1E7C43848;
  v29[6] = v32;
  v29[7] = v30;
  v29[8] = v36;
  v29[9] = v34;
  v29[4] = self;
  v29[5] = v38;
  v28 = v29;
  if (self)
  {
    v26 = self->_feedDescriptor;
    v3 = [(FCFeedDescriptor *)v26 backingTag];
    if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "tag"];
      *buf = 136315906;
      *&buf[4] = "[FCTagFeedHeadlinesFetchOperation _fetchOrdinaryHeadlinesWithCompletionHandler:]";
      *&buf[12] = 2080;
      *&buf[14] = "FCTagFeedHeadlinesFetchOperation.m";
      *&buf[22] = 1024;
      LODWORD(v41) = 184;
      WORD2(v41) = 2114;
      *(&v41 + 6) = v24;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v27 = [FCFeedContext feedContextForTag:v3];
    v4 = [v3 tagType];
    v25 = v4 != 1;
    if (v4 == 1)
    {
      v5 = 2;
    }

    else
    {
      v5 = 3;
    }

    v6 = [v3 freeFeedIDForBin:v5];
    v7 = [v3 paidFeedIDForBin:v5];
    v8 = [MEMORY[0x1E695DF70] array];
    v9 = [MEMORY[0x1E695DF90] dictionary];
    if (v6)
    {
      v10 = objc_alloc_init(FCFeedRequest);
      [(FCFeedRequest *)v10 setFeedID:v6];
      v11 = [(FCTagFeedHeadlinesFetchOperation *)self freeFeedRange];
      [(FCFeedRequest *)v10 setFeedRange:v11];

      [(FCFeedRequest *)v10 setCachedOnly:self->_fetchOrdinaryItemsFromCache];
      [v8 addObject:v10];
      [v9 setObject:v27 forKey:v6];
    }

    else
    {
      v10 = 0;
    }

    if (v4 != 1)
    {
      v12 = self->_cloudContext;
      v13 = [(FCCloudContext *)v12 paidAccessChecker];
      v14 = [(FCFeedDescriptor *)v26 backingChannel];

      LODWORD(v12) = [v13 canGetSubscriptionToChannel:v14];
      if (v12)
      {
        v15 = [v7 isEqualToString:v6];
        if (v10)
        {
          if (v15 != 1 && v7)
          {
            v16 = [(FCFeedRequest *)v10 copy];
            [v16 setFeedID:v7];
            v17 = [(FCTagFeedHeadlinesFetchOperation *)self paidFeedRange];
            [v16 setFeedRange:v17];

            [v8 addObject:v16];
            [v9 setObject:v27 forKey:v7];
          }
        }
      }
    }

    v18 = objc_alloc_init(FCFeedRequestOperation);
    [(FCFeedRequestOperation *)v18 setContext:self->_cloudContext];
    [(FCFeedRequestOperation *)v18 setConfiguration:self->_configuration];
    [(FCFeedRequestOperation *)v18 setFeedRequests:v8];
    [(FCFeedRequestOperation *)v18 setMaxCount:[(FCTagFeedHeadlinesFetchOperation *)self maxFetchCount]];
    [(FCFeedRequestOperation *)v18 setOptions:14];
    [(FCFeedRequestOperation *)v18 setExpectedNetworkEventCount:1];
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __81__FCTagFeedHeadlinesFetchOperation__fetchOrdinaryHeadlinesWithCompletionHandler___block_invoke;
    *&v41 = &unk_1E7C438C0;
    v19 = v28;
    v44 = v9;
    v45 = v19;
    *(&v41 + 1) = v6;
    v42 = v7;
    v43 = self;
    v46 = v25;
    v20 = v9;
    v21 = v7;
    v22 = v6;
    [(FCFeedRequestOperation *)v18 setRequestCompletionHandler:buf];
    [(FCOperation *)self associateChildOperation:v18];
    [(FCOperation *)v18 start];
  }

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(v32, 8);

  _Block_object_dispose(v34, 8);
  _Block_object_dispose(v36, 8);
  _Block_object_dispose(v38, 8);

  v23 = *MEMORY[0x1E69E9840];
}

void __52__FCTagFeedHeadlinesFetchOperation_performOperation__block_invoke(void *a1, void *a2, void *a3, void *a4, char a5, void *a6)
{
  v38 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  objc_storeStrong((*(a1[5] + 8) + 40), a2);
  objc_storeStrong((*(a1[6] + 8) + 40), a3);
  objc_storeStrong((*(a1[7] + 8) + 40), a4);
  *(*(a1[8] + 8) + 24) = a5;
  objc_storeStrong((*(a1[9] + 8) + 40), a6);
  v15 = a1[4];
  if (*(*(a1[9] + 8) + 40))
  {
    [v15 finishedPerformingOperationWithError:?];
  }

  else
  {
    if (v15)
    {
      v15 = v15[55];
    }

    v16 = [v15 backingTag];
    v17 = a1[4];
    if (v17)
    {
      v18 = *(v17 + 432);
    }

    else
    {
      v18 = 0;
    }

    v19 = [v18 purchaseProvider];
    v20 = v16;
    if ([v20 tagType] == 3)
    {
      v21 = [v20 asSection];

      v22 = [v21 parentID];
    }

    else
    {
      v22 = [v20 identifier];
      v21 = v20;
    }

    v23 = v22;
    v24 = [v19 purchasedTagIDs];
    v25 = [v24 containsObject:v23];

    if ((v25 & 1) == 0)
    {
      v27 = a1[4];
      if (v27)
      {
        v28 = *(v27 + 424);
        v29 = *(v27 + 432);
      }

      else
      {
        v28 = 0;
        v29 = 0;
      }

      v30 = [FCFeedTransformationFilter transformationWithFilterOptions:0x2000 configuration:v28 context:v29];
      v31 = [v30 transformHeadlines:*(*(a1[5] + 8) + 40)];
      v32 = *(a1[5] + 8);
      v33 = *(v32 + 40);
      *(v32 + 40) = v31;
    }

    v34 = a1[4];
    if (v34)
    {
      objc_setProperty_nonatomic_copy(v34, v26, *(*(a1[5] + 8) + 40), 472);
      v34 = a1[4];
      if (v34)
      {
        objc_setProperty_nonatomic_copy(v34, v35, *(*(a1[6] + 8) + 40), 480);
        v34 = a1[4];
        if (v34)
        {
          objc_setProperty_nonatomic_copy(v34, v36, *(*(a1[7] + 8) + 40), 488);
          v37 = a1[4];
          if (v37)
          {
            *(v37 + 369) = *(*(a1[8] + 8) + 24);
            v34 = a1[4];
          }

          else
          {
            v34 = 0;
          }
        }
      }
    }

    [v34 finishedPerformingOperationWithError:0];
  }
}

- (void)operationWillFinishWithError:(id)a3
{
  v4 = a3;
  v11 = [(FCTagFeedHeadlinesFetchOperation *)self fetchCompletionHandler];
  v5 = MEMORY[0x1E695E0F0];
  if (self)
  {
    v6 = self->_resultOrdinaryHeadlines;
    v7 = v6;
    if (v6)
    {
      v5 = v6;
    }

    v8 = self->_resultFetchedFreeRange;
    v9 = self->_resultFetchedPaidRange;
    resultFinished = self->_resultFinished;
  }

  else
  {
    v9 = 0;
    v7 = 0;
    v8 = 0;
    resultFinished = 0;
  }

  v11[2](v11, v5, v8, v9, resultFinished, v4);
}

- (BOOL)canRetryWithError:(id)a3 retryAfter:(id *)a4
{
  v5 = [a3 fc_isRequestDroppedError];
  if (v5)
  {
    *a4 = objc_opt_new();
  }

  return v5;
}

- (void)resetForRetry
{
  if (self)
  {
    self->_fetchOrdinaryItemsFromCache = 1;
  }
}

void __81__FCTagFeedHeadlinesFetchOperation__fetchOrdinaryHeadlinesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (a4)
  {
    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __81__FCTagFeedHeadlinesFetchOperation__fetchOrdinaryHeadlinesWithCompletionHandler___block_invoke_2;
    v48[3] = &unk_1E7C42280;
    v49 = *(a1 + 32);
    v9 = [v7 fc_firstObjectPassingTest:v48];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __81__FCTagFeedHeadlinesFetchOperation__fetchOrdinaryHeadlinesWithCompletionHandler___block_invoke_3;
    v46[3] = &unk_1E7C42280;
    v47 = *(a1 + 40);
    v10 = [v7 fc_firstObjectPassingTest:v46];
    v11 = [*(a1 + 48) topOfFeedDate];
    v12 = [FCFeedCursor cursorForDate:v11];

    v13 = *(a1 + 48);
    if (v13)
    {
      v14 = *(v13 + 440);
    }

    else
    {
      v14 = 0;
    }

    v35 = v14;
    v15 = [v35 backingTag];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v38 = __81__FCTagFeedHeadlinesFetchOperation__fetchOrdinaryHeadlinesWithCompletionHandler___block_invoke_4;
    v39 = &unk_1E7C43898;
    v16 = *(a1 + 56);
    v40 = *(a1 + 48);
    v17 = v16;
    v45 = *(a1 + 72);
    v41 = v17;
    v42 = v9;
    v43 = v10;
    v44 = *(a1 + 64);
    v34 = v10;
    v18 = v9;
    v36 = v8;
    v19 = v8;
    v20 = v15;
    v21 = v12;
    v22 = v37;
    if (v13)
    {
      if ([v20 tagType] == 1 && objc_msgSend(v19, "count"))
      {
        v31 = [v19 valueForKeyPath:@"@max.order"];
        v30 = [v19 valueForKeyPath:@"@min.order"];
        v33 = v18;
        v29 = [MEMORY[0x1E695DF00] fc_dateWithMillisecondTimeIntervalSince1970:{objc_msgSend(v31, "unsignedLongLongValue")}];
        v28 = [MEMORY[0x1E695DF00] fc_dateWithMillisecondTimeIntervalSince1970:{objc_msgSend(v30, "unsignedLongLongValue") - 1}];
        v27 = [FCDateRange dateRangeWithStartDate:v29 endDate:v28];
        v32 = v21;
        v23 = objc_alloc_init(FCMyArticlesSearchOperation);
        [(FCMyArticlesSearchOperation *)v23 setContext:*(v13 + 432)];
        v24 = [*(v13 + 440) backingTag];
        v25 = [v24 identifier];
        v26 = [FCFeedItemFeature featureForTopicID:v25];
        [(FCMyArticlesSearchOperation *)v23 setFeature:v26];

        v18 = v33;
        [(FCMyArticlesSearchOperation *)v23 setDateRange:v27];
        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __92__FCTagFeedHeadlinesFetchOperation_supplementFeedItems_forTag_fromCursor_completionHandler___block_invoke;
        v50[3] = &unk_1E7C438E8;
        v52 = v22;
        v51 = v19;
        [(FCMyArticlesSearchOperation *)v23 setSearchCompletionHandler:v50];
        [v13 associateChildOperation:v23];
        [(FCOperation *)v23 start];

        v21 = v32;
      }

      else
      {
        v38(v22, v19);
      }
    }

    v8 = v36;
  }
}

uint64_t __81__FCTagFeedHeadlinesFetchOperation__fetchOrdinaryHeadlinesWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 feedID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __81__FCTagFeedHeadlinesFetchOperation__fetchOrdinaryHeadlinesWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 feedID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __81__FCTagFeedHeadlinesFetchOperation__fetchOrdinaryHeadlinesWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v43 = a2;
  if (v2)
  {
    v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = *(v2 + 440);
    v42 = +[FCFeedTransformationSort transformationWithSortMethod:configurationSet:personalizer:](FCFeedTransformationSort, "transformationWithSortMethod:configurationSet:personalizer:", [v3 feedSortMethod], objc_msgSend(v3, "feedPersonalizationConfigurationSet"), *(v2 + 448));
    [v38 addObject:v42];
    v34 = [v3 feedFilterOptions];
    v41 = [v3 otherArticleIDs];

    v47 = [*(v2 + 456) setByAddingObjectsFromArray:v41];
    v4 = *(v2 + 464);
    v39 = *(v2 + 432);
    v46 = v4;
    v40 = [v39 subscriptionList];
    v45 = [v40 subscribedTagIDs];
    v36 = *(v2 + 432);
    v37 = [v36 subscriptionList];
    v29 = [v37 mutedTagIDs];
    v32 = *(v2 + 432);
    v33 = [v32 readingHistory];
    v26 = [v33 readingHistoryItemsByArticleID];
    v30 = *(v2 + 432);
    v31 = [v30 audioPlaylist];
    v25 = [v31 articleIDs];
    v27 = *(v2 + 432);
    v28 = [v27 offlineArticleManager];
    v24 = [v28 readableArticleIDs];
    v5 = *(v2 + 424);
    v6 = [v5 briefingsTagID];
    v7 = *(v2 + 432);
    v8 = [v7 paidAccessChecker];
    v9 = *(v2 + 432);
    v10 = [v9 bundleSubscriptionManager];
    v11 = [v10 cachedSubscription];
    v35 = [FCFeedTransformationFilter transformationWithFilterOptions:v34 otherArticleIDs:v47 otherClusterIDs:v46 subscribedTagIDs:v45 mutedTagIDs:v29 readingHistoryItems:v26 playlistArticleIDs:v25 downloadedArticleIDs:v24 briefingsTagID:v6 paidAccessChecker:v8 bundleSubscription:v11 paywalledArticlesMaxCount:0];

    v12 = v38;
    [v38 addObject:v35];
  }

  else
  {
    v12 = 0;
  }

  v13 = FCApplyFeedTransformations(v43, v12);

  v14 = *(a1 + 32);
  if (v14)
  {
    v14 = v14[53];
  }

  v15 = v14;
  v16 = objc_alloc_init(FCFeedItemHeadlinesOperation);
  [(FCFeedItemHeadlinesOperation *)v16 setConfiguration:v15];
  v17 = *(a1 + 32);
  if (v17)
  {
    v18 = *(v17 + 432);
  }

  else
  {
    v18 = 0;
  }

  [(FCFeedItemHeadlinesOperation *)v16 setContext:v18];
  v19 = *(a1 + 32);
  if (v19)
  {
    v20 = *(v19 + 448);
  }

  else
  {
    v20 = 0;
  }

  [(FCFeedItemHeadlinesOperation *)v16 setPersonalizer:v20];
  v21 = *(a1 + 32);
  if (v21)
  {
    v22 = *(v21 + 440);
  }

  else
  {
    v22 = 0;
  }

  -[FCFeedItemHeadlinesOperation setFeedPersonalizationConfigurationSet:](v16, "setFeedPersonalizationConfigurationSet:", [v22 feedPersonalizationConfigurationSet]);
  [(FCFeedItemHeadlinesOperation *)v16 setFeedItems:v13];
  [(FCFeedItemHeadlinesOperation *)v16 setFeedContextByFeedID:*(a1 + 40)];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __81__FCTagFeedHeadlinesFetchOperation__fetchOrdinaryHeadlinesWithCompletionHandler___block_invoke_5;
  v48[3] = &unk_1E7C43870;
  v53 = *(a1 + 72);
  v48[4] = *(a1 + 32);
  v49 = v15;
  v50 = *(a1 + 48);
  v51 = *(a1 + 56);
  v52 = *(a1 + 64);
  v23 = v15;
  [(FCFeedItemHeadlinesOperation *)v16 setHeadlinesCompletionHandler:v48];
  [*(a1 + 32) associateChildOperation:v16];
  [(FCOperation *)v16 start];
}

void __81__FCTagFeedHeadlinesFetchOperation__fetchOrdinaryHeadlinesWithCompletionHandler___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 72) == 0;
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = a2;
  v9 = [v6 precedingHeadlines];
  v10 = [*(a1 + 40) minimumDistanceBetweenImageOnTopTiles];
  v16 = FCPromoteHeadlines(v8, v5, v9, MEMORY[0x1E695E0F0], v10);

  if ([*(a1 + 48) exhaustedRequestRange])
  {
    v11 = *(a1 + 56);
    if (v11)
    {
      v12 = [v11 exhaustedRequestRange];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = *(a1 + 64);
  v14 = [*(a1 + 48) feedRange];
  v15 = [*(a1 + 56) feedRange];
  (*(v13 + 16))(v13, v16, v14, v15, v12, v7);
}

void __92__FCTagFeedHeadlinesFetchOperation_supplementFeedItems_forTag_fromCursor_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E695DEC8] fc_arrayByAddingObjectsFromArray:a2 toArray:*(a1 + 32)];
  (*(v2 + 16))(v2, v3);
}

@end