@interface FCFeedTransformationUnconsumedOnly
- (FCFeedTransformationUnconsumedOnly)init;
- (FCFeedTransformationUnconsumedOnly)initWithFilterMethod:(unint64_t)method consumedArticleItems:(id)items minimumTimeSinceFirstConsumedToFilter:(double)filter filterDate:(id)date articleIDProvider:(id)provider dateOfArticleIDConsumptionProvider:(id)consumptionProvider maxVersionConsumedProvider:(id)consumedProvider dateOfMaxVersionConsumptionProvider:(id)self0;
- (id)transformFeedItems:(id)items;
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

- (FCFeedTransformationUnconsumedOnly)initWithFilterMethod:(unint64_t)method consumedArticleItems:(id)items minimumTimeSinceFirstConsumedToFilter:(double)filter filterDate:(id)date articleIDProvider:(id)provider dateOfArticleIDConsumptionProvider:(id)consumptionProvider maxVersionConsumedProvider:(id)consumedProvider dateOfMaxVersionConsumptionProvider:(id)self0
{
  v64 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  dateCopy = date;
  providerCopy = provider;
  consumptionProviderCopy = consumptionProvider;
  consumedProviderCopy = consumedProvider;
  versionConsumptionProviderCopy = versionConsumptionProvider;
  v46 = itemsCopy;
  if (!itemsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v35 = consumedProviderCopy;
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

    consumedProviderCopy = v35;
    if (dateCopy)
    {
      goto LABEL_6;
    }
  }

  else if (dateCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v37 = consumedProviderCopy;
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

    consumedProviderCopy = v37;
  }

LABEL_6:
  if (!providerCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v39 = consumedProviderCopy;
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

    consumedProviderCopy = v39;
    if (consumptionProviderCopy)
    {
      goto LABEL_11;
    }
  }

  else if (consumptionProviderCopy)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v41 = consumedProviderCopy;
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

    consumedProviderCopy = v41;
  }

LABEL_11:
  if (!consumedProviderCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

    consumedProviderCopy = 0;
    if (versionConsumptionProviderCopy)
    {
      goto LABEL_16;
    }
  }

  else if (versionConsumptionProviderCopy)
  {
    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v44 = consumedProviderCopy;
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

    consumedProviderCopy = v44;
  }

LABEL_16:
  v55.receiver = self;
  v55.super_class = FCFeedTransformationUnconsumedOnly;
  v23 = [(FCFeedTransformationUnconsumedOnly *)&v55 init];
  if (v23)
  {
    if (method == 2)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __245__FCFeedTransformationUnconsumedOnly_initWithFilterMethod_consumedArticleItems_minimumTimeSinceFirstConsumedToFilter_filterDate_articleIDProvider_dateOfArticleIDConsumptionProvider_maxVersionConsumedProvider_dateOfMaxVersionConsumptionProvider___block_invoke_3;
      aBlock[3] = &unk_1E7C46600;
      v24 = consumedProviderCopy;
      v54 = consumedProviderCopy;
      v25 = _Block_copy(aBlock);
      v26 = _Block_copy(versionConsumptionProviderCopy);
    }

    else
    {
      v24 = consumedProviderCopy;
      if (method == 1)
      {
        v26 = _Block_copy(consumptionProviderCopy);
        v25 = &__block_literal_global_17_2;
      }

      else
      {
        if (method)
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

    v27 = [v46 fc_dictionaryWithKeyBlock:providerCopy];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __245__FCFeedTransformationUnconsumedOnly_initWithFilterMethod_consumedArticleItems_minimumTimeSinceFirstConsumedToFilter_filterDate_articleIDProvider_dateOfArticleIDConsumptionProvider_maxVersionConsumedProvider_dateOfMaxVersionConsumptionProvider___block_invoke_4;
    v47[3] = &unk_1E7C46628;
    v48 = v27;
    v50 = v25;
    v49 = dateCopy;
    v51 = v26;
    filterCopy = filter;
    v28 = v26;
    v29 = v25;
    v30 = v27;
    v31 = [FCFeedTransformationBlockFilter blockFilterWithPredicate:v47];
    innerFilter = v23->_innerFilter;
    v23->_innerFilter = v31;

    consumedProviderCopy = v24;
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

- (id)transformFeedItems:(id)items
{
  v18 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if (!itemsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

  innerFilter = [(FCFeedTransformationUnconsumedOnly *)self innerFilter];
  v6 = [innerFilter transformFeedItems:itemsCopy];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

@end