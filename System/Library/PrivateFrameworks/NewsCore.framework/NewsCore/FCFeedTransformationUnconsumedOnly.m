@interface FCFeedTransformationUnconsumedOnly
- (FCFeedTransformationUnconsumedOnly)init;
- (FCFeedTransformationUnconsumedOnly)initWithFilterMethod:(unint64_t)a3 consumedArticleItems:(id)a4 minimumTimeSinceFirstConsumedToFilter:(double)a5 filterDate:(id)a6 articleIDProvider:(id)a7 dateOfArticleIDConsumptionProvider:(id)a8 maxVersionConsumedProvider:(id)a9 dateOfMaxVersionConsumptionProvider:(id)a10;
- (id)transformFeedItems:(id)a3;
@end

@implementation FCFeedTransformationUnconsumedOnly

- (FCFeedTransformationUnconsumedOnly)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCFeedTransformationUnconsumedOnly init]";
    v10 = 2080;
    v11 = "FCFeedTransformationUnconsumedOnly.m";
    v12 = 1024;
    v13 = 24;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCFeedTransformationUnconsumedOnly init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCFeedTransformationUnconsumedOnly)initWithFilterMethod:(unint64_t)a3 consumedArticleItems:(id)a4 minimumTimeSinceFirstConsumedToFilter:(double)a5 filterDate:(id)a6 articleIDProvider:(id)a7 dateOfArticleIDConsumptionProvider:(id)a8 maxVersionConsumedProvider:(id)a9 dateOfMaxVersionConsumptionProvider:(id)a10
{
  v64 = *MEMORY[0x1E69E9840];
  v17 = a4;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v46 = v17;
  if (!v17 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v35 = v21;
    v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "consumedArticleItems"];
    *buf = 136315906;
    v57 = "[FCFeedTransformationUnconsumedOnly initWithFilterMethod:consumedArticleItems:minimumTimeSinceFirstConsumedToFilter:filterDate:articleIDProvider:dateOfArticleIDConsumptionProvider:maxVersionConsumedProvider:dateOfMaxVersionConsumptionProvider:]";
    v58 = 2080;
    v59 = "FCFeedTransformationUnconsumedOnly.m";
    v60 = 1024;
    v61 = 36;
    v62 = 2114;
    v63 = v36;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    v21 = v35;
    if (v18)
    {
      goto LABEL_6;
    }
  }

  else if (v18)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v37 = v21;
    v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "filterDate"];
    *buf = 136315906;
    v57 = "[FCFeedTransformationUnconsumedOnly initWithFilterMethod:consumedArticleItems:minimumTimeSinceFirstConsumedToFilter:filterDate:articleIDProvider:dateOfArticleIDConsumptionProvider:maxVersionConsumedProvider:dateOfMaxVersionConsumptionProvider:]";
    v58 = 2080;
    v59 = "FCFeedTransformationUnconsumedOnly.m";
    v60 = 1024;
    v61 = 37;
    v62 = 2114;
    v63 = v38;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    v21 = v37;
  }

LABEL_6:
  if (!v19 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v39 = v21;
    v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "articleIDProvider"];
    *buf = 136315906;
    v57 = "[FCFeedTransformationUnconsumedOnly initWithFilterMethod:consumedArticleItems:minimumTimeSinceFirstConsumedToFilter:filterDate:articleIDProvider:dateOfArticleIDConsumptionProvider:maxVersionConsumedProvider:dateOfMaxVersionConsumptionProvider:]";
    v58 = 2080;
    v59 = "FCFeedTransformationUnconsumedOnly.m";
    v60 = 1024;
    v61 = 38;
    v62 = 2114;
    v63 = v40;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    v21 = v39;
    if (v20)
    {
      goto LABEL_11;
    }
  }

  else if (v20)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v41 = v21;
    v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "dateOfArticleIDConsumptionProvider"];
    *buf = 136315906;
    v57 = "[FCFeedTransformationUnconsumedOnly initWithFilterMethod:consumedArticleItems:minimumTimeSinceFirstConsumedToFilter:filterDate:articleIDProvider:dateOfArticleIDConsumptionProvider:maxVersionConsumedProvider:dateOfMaxVersionConsumptionProvider:]";
    v58 = 2080;
    v59 = "FCFeedTransformationUnconsumedOnly.m";
    v60 = 1024;
    v61 = 39;
    v62 = 2114;
    v63 = v42;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    v21 = v41;
  }

LABEL_11:
  if (!v21 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "maxVersionConsumedProvider"];
    *buf = 136315906;
    v57 = "[FCFeedTransformationUnconsumedOnly initWithFilterMethod:consumedArticleItems:minimumTimeSinceFirstConsumedToFilter:filterDate:articleIDProvider:dateOfArticleIDConsumptionProvider:maxVersionConsumedProvider:dateOfMaxVersionConsumptionProvider:]";
    v58 = 2080;
    v59 = "FCFeedTransformationUnconsumedOnly.m";
    v60 = 1024;
    v61 = 40;
    v62 = 2114;
    v63 = v43;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    v21 = 0;
    if (v22)
    {
      goto LABEL_16;
    }
  }

  else if (v22)
  {
    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v44 = v21;
    v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "dateOfMaxVersionConsumptionProvider"];
    *buf = 136315906;
    v57 = "[FCFeedTransformationUnconsumedOnly initWithFilterMethod:consumedArticleItems:minimumTimeSinceFirstConsumedToFilter:filterDate:articleIDProvider:dateOfArticleIDConsumptionProvider:maxVersionConsumedProvider:dateOfMaxVersionConsumptionProvider:]";
    v58 = 2080;
    v59 = "FCFeedTransformationUnconsumedOnly.m";
    v60 = 1024;
    v61 = 41;
    v62 = 2114;
    v63 = v45;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    v21 = v44;
  }

LABEL_16:
  v55.receiver = self;
  v55.super_class = FCFeedTransformationUnconsumedOnly;
  v23 = [(FCFeedTransformationUnconsumedOnly *)&v55 init];
  if (v23)
  {
    if (a3 == 2)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __245__FCFeedTransformationUnconsumedOnly_initWithFilterMethod_consumedArticleItems_minimumTimeSinceFirstConsumedToFilter_filterDate_articleIDProvider_dateOfArticleIDConsumptionProvider_maxVersionConsumedProvider_dateOfMaxVersionConsumptionProvider___block_invoke_3;
      aBlock[3] = &unk_1E7C46600;
      v24 = v21;
      v54 = v21;
      v25 = _Block_copy(aBlock);
      v26 = _Block_copy(v22);
    }

    else
    {
      v24 = v21;
      if (a3 == 1)
      {
        v26 = _Block_copy(v20);
        v25 = &__block_literal_global_17_2;
      }

      else
      {
        if (a3)
        {
          v25 = 0;
        }

        else
        {
          v25 = &__block_literal_global_164;
        }

        v26 = 0;
      }
    }

    v27 = [v46 fc_dictionaryWithKeyBlock:v19];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __245__FCFeedTransformationUnconsumedOnly_initWithFilterMethod_consumedArticleItems_minimumTimeSinceFirstConsumedToFilter_filterDate_articleIDProvider_dateOfArticleIDConsumptionProvider_maxVersionConsumedProvider_dateOfMaxVersionConsumptionProvider___block_invoke_4;
    v47[3] = &unk_1E7C46628;
    v48 = v27;
    v50 = v25;
    v49 = v18;
    v51 = v26;
    v52 = a5;
    v28 = v26;
    v29 = v25;
    v30 = v27;
    v31 = [FCFeedTransformationBlockFilter blockFilterWithPredicate:v47];
    innerFilter = v23->_innerFilter;
    v23->_innerFilter = v31;

    v21 = v24;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v23;
}

BOOL __245__FCFeedTransformationUnconsumedOnly_initWithFilterMethod_consumedArticleItems_minimumTimeSinceFirstConsumedToFilter_filterDate_articleIDProvider_dateOfArticleIDConsumptionProvider_maxVersionConsumedProvider_dateOfMaxVersionConsumptionProvider___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v6 = a2;
  v7 = v5(v4, a3);
  v8 = [v6 publisherArticleVersion];

  return v7 >= v8;
}

BOOL __245__FCFeedTransformationUnconsumedOnly_initWithFilterMethod_consumedArticleItems_minimumTimeSinceFirstConsumedToFilter_filterDate_articleIDProvider_dateOfArticleIDConsumptionProvider_maxVersionConsumedProvider_dateOfMaxVersionConsumptionProvider___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 articleID];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6 && (*(*(a1 + 48) + 16))())
  {
    v7 = *(a1 + 40);
    v8 = (*(*(a1 + 56) + 16))();
    [v7 timeIntervalSinceDate:v8];
    v10 = v9;

    v11 = v10 < *(a1 + 64);
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (id)transformFeedItems:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "feedItems"];
    *buf = 136315906;
    v11 = "[FCFeedTransformationUnconsumedOnly transformFeedItems:]";
    v12 = 2080;
    v13 = "FCFeedTransformationUnconsumedOnly.m";
    v14 = 1024;
    v15 = 112;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = [(FCFeedTransformationUnconsumedOnly *)self innerFilter];
  v6 = [v5 transformFeedItems:v4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

@end