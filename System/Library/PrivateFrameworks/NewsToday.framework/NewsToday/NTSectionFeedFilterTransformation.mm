@interface NTSectionFeedFilterTransformation
- (NTSectionFeedFilterTransformation)init;
- (NTSectionFeedFilterTransformation)initWithTodayData:(id)a3 configurationManager:(id)a4 readArticlesFilterMethod:(int)a5 seenArticlesFilterMethod:(int)a6 minimumTimeSinceFirstSeenToFilter:(double)a7 supplementalFeedFilterOptions:(unint64_t)a8 otherArticleIDs:(id)a9 otherClusterIDs:(id)a10 filterDate:(id)a11 paywalledArticlesMaxCount:(unint64_t)a12;
- (id)transformFeedItems:(id)a3;
@end

@implementation NTSectionFeedFilterTransformation

- (NTSectionFeedFilterTransformation)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTSectionFeedFilterTransformation init]";
    v10 = 2080;
    v11 = "NTSectionFeedFilterTransformation.m";
    v12 = 1024;
    v13 = 65;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTSectionFeedFilterTransformation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTSectionFeedFilterTransformation)initWithTodayData:(id)a3 configurationManager:(id)a4 readArticlesFilterMethod:(int)a5 seenArticlesFilterMethod:(int)a6 minimumTimeSinceFirstSeenToFilter:(double)a7 supplementalFeedFilterOptions:(unint64_t)a8 otherArticleIDs:(id)a9 otherClusterIDs:(id)a10 filterDate:(id)a11 paywalledArticlesMaxCount:(unint64_t)a12
{
  v87 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v20 = a4;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  if (!v20 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTSectionFeedFilterTransformation initWithTodayData:configurationManager:readArticlesFilterMethod:seenArticlesFilterMethod:minimumTimeSinceFirstSeenToFilter:supplementalFeedFilterOptions:otherArticleIDs:otherClusterIDs:filterDate:paywalledArticlesMaxCount:];
    if (v21)
    {
      goto LABEL_6;
    }
  }

  else if (v21)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTSectionFeedFilterTransformation initWithTodayData:configurationManager:readArticlesFilterMethod:seenArticlesFilterMethod:minimumTimeSinceFirstSeenToFilter:supplementalFeedFilterOptions:otherArticleIDs:otherClusterIDs:filterDate:paywalledArticlesMaxCount:];
  }

LABEL_6:
  if (!v22 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTSectionFeedFilterTransformation initWithTodayData:configurationManager:readArticlesFilterMethod:seenArticlesFilterMethod:minimumTimeSinceFirstSeenToFilter:supplementalFeedFilterOptions:otherArticleIDs:otherClusterIDs:filterDate:paywalledArticlesMaxCount:];
    if (v23)
    {
      goto LABEL_11;
    }
  }

  else if (v23)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTSectionFeedFilterTransformation initWithTodayData:configurationManager:readArticlesFilterMethod:seenArticlesFilterMethod:minimumTimeSinceFirstSeenToFilter:supplementalFeedFilterOptions:otherArticleIDs:otherClusterIDs:filterDate:paywalledArticlesMaxCount:];
  }

LABEL_11:
  v84.receiver = self;
  v84.super_class = NTSectionFeedFilterTransformation;
  v24 = [(NTSectionFeedFilterTransformation *)&v84 init];
  v25 = v24;
  if (v24)
  {
    v62 = v24;
    v63 = v21;
    v64 = v20;
    v26 = MEMORY[0x277CBEB98];
    v27 = [v19 rankedAllSubscribedTagIDs];
    v60 = [v26 setWithArray:v27];

    v28 = [v19 mutedTagIDs];
    v29 = v28;
    v56 = a5;
    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = objc_opt_new();
    }

    v58 = v30;

    v31 = [v19 recentlyReadHistoryItems];
    v32 = [v31 allValues];
    v33 = v32;
    v34 = MEMORY[0x277CBEBF8];
    if (v32)
    {
      v35 = v32;
    }

    else
    {
      v35 = MEMORY[0x277CBEBF8];
    }

    v36 = v35;

    v37 = [v19 recentlySeenHistoryItems];
    v38 = v37;
    if (v37)
    {
      v39 = v37;
    }

    else
    {
      v39 = v34;
    }

    v40 = v39;

    v41 = NewsCoreUserDefaults();
    v42 = [v41 stringForKey:*MEMORY[0x277D30510]];

    v57 = v42;
    if (v42)
    {
      v43 = NTSharedLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v86 = v42;
        _os_log_impl(&dword_25BF21000, v43, OS_LOG_TYPE_DEFAULT, "will treat article as unseen/unread because it's the active audio article, id=%{public}@", buf, 0xCu);
      }

      v82[0] = MEMORY[0x277D85DD0];
      v82[1] = 3221225472;
      v82[2] = __259__NTSectionFeedFilterTransformation_initWithTodayData_configurationManager_readArticlesFilterMethod_seenArticlesFilterMethod_minimumTimeSinceFirstSeenToFilter_supplementalFeedFilterOptions_otherArticleIDs_otherClusterIDs_filterDate_paywalledArticlesMaxCount___block_invoke;
      v82[3] = &unk_279982D78;
      v44 = v42;
      v83 = v44;
      v45 = [v36 fc_arrayByRemovingObjectsPassingTest:v82];

      v80[0] = MEMORY[0x277D85DD0];
      v80[1] = 3221225472;
      v80[2] = __259__NTSectionFeedFilterTransformation_initWithTodayData_configurationManager_readArticlesFilterMethod_seenArticlesFilterMethod_minimumTimeSinceFirstSeenToFilter_supplementalFeedFilterOptions_otherArticleIDs_otherClusterIDs_filterDate_paywalledArticlesMaxCount___block_invoke_2;
      v80[3] = &unk_279982D78;
      v81 = v44;
      v46 = [v40 fc_arrayByRemovingObjectsPassingTest:v80];

      v40 = v46;
      v36 = v45;
    }

    v47 = MEMORY[0x277CBEA60];
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __259__NTSectionFeedFilterTransformation_initWithTodayData_configurationManager_readArticlesFilterMethod_seenArticlesFilterMethod_minimumTimeSinceFirstSeenToFilter_supplementalFeedFilterOptions_otherArticleIDs_otherClusterIDs_filterDate_paywalledArticlesMaxCount___block_invoke_3;
    v65[3] = &unk_279982E00;
    v78 = v56;
    v66 = v36;
    v79 = a6;
    v67 = v23;
    v68 = v40;
    v75 = a7;
    v76 = a8;
    v69 = v19;
    v70 = v64;
    v71 = v63;
    v72 = v22;
    v73 = v60;
    v74 = v58;
    v77 = a12;
    v59 = v58;
    v61 = v60;
    v48 = v40;
    v49 = v36;
    v50 = [v47 fc_array:v65];
    v51 = [objc_alloc(MEMORY[0x277D30FF0]) initWithFeedTransformations:v50];
    [v51 setShouldLogTransformationResults:1];
    v52 = [[NTFeedTransformationItemFeedTransformation alloc] initWithFeedItemTransformation:v51];
    v25 = v62;
    underlyingTransformation = v62->_underlyingTransformation;
    v62->_underlyingTransformation = v52;

    v20 = v64;
    v21 = v63;
  }

  v54 = *MEMORY[0x277D85DE8];
  return v25;
}

uint64_t __259__NTSectionFeedFilterTransformation_initWithTodayData_configurationManager_readArticlesFilterMethod_seenArticlesFilterMethod_minimumTimeSinceFirstSeenToFilter_supplementalFeedFilterOptions_otherArticleIDs_otherClusterIDs_filterDate_paywalledArticlesMaxCount___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 articleID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __259__NTSectionFeedFilterTransformation_initWithTodayData_configurationManager_readArticlesFilterMethod_seenArticlesFilterMethod_minimumTimeSinceFirstSeenToFilter_supplementalFeedFilterOptions_otherArticleIDs_otherClusterIDs_filterDate_paywalledArticlesMaxCount___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 articleID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

void __259__NTSectionFeedFilterTransformation_initWithTodayData_configurationManager_readArticlesFilterMethod_seenArticlesFilterMethod_minimumTimeSinceFirstSeenToFilter_supplementalFeedFilterOptions_otherArticleIDs_otherClusterIDs_filterDate_paywalledArticlesMaxCount___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D31048];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = *(a1 + 128);
  if (v6 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2 * (v6 == 0);
  }

  v21 = [v5 initWithFilterMethod:v7 consumedArticleItems:*(a1 + 32) minimumTimeSinceFirstConsumedToFilter:*(a1 + 40) filterDate:&__block_literal_global_4 articleIDProvider:&__block_literal_global_23 dateOfArticleIDConsumptionProvider:&__block_literal_global_27 maxVersionConsumedProvider:0.0 dateOfMaxVersionConsumptionProvider:&__block_literal_global_29];
  [v4 addObject:v21];
  v8 = objc_alloc(MEMORY[0x277D31048]);
  v9 = *(a1 + 132);
  if (v9 == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2 * (v9 == 2);
  }

  v20 = [v8 initWithFilterMethod:v10 consumedArticleItems:*(a1 + 48) minimumTimeSinceFirstConsumedToFilter:*(a1 + 40) filterDate:&__block_literal_global_31 articleIDProvider:&__block_literal_global_33 dateOfArticleIDConsumptionProvider:&__block_literal_global_35 maxVersionConsumedProvider:*(a1 + 104) dateOfMaxVersionConsumptionProvider:&__block_literal_global_37];
  [v4 addObject:v20];
  v11 = *(a1 + 112);
  v12 = [objc_alloc(MEMORY[0x277D311B8]) initWithPurchaseProvider:*(a1 + 56) bundleSubscriptionProvider:*(a1 + 56) configurationManager:*(a1 + 64)];
  v13 = MEMORY[0x277D30FF8];
  v14 = *(a1 + 72);
  v15 = *(a1 + 80);
  v16 = *(a1 + 88);
  v17 = *(a1 + 96);
  v18 = [*(a1 + 56) bundleSubscription];
  v19 = [v13 transformationWithFilterOptions:v11 | 0x312 otherArticleIDs:v14 otherClusterIDs:v15 subscribedTagIDs:v16 mutedTagIDs:v17 readingHistoryItems:0 playlistArticleIDs:0 downloadedArticleIDs:0 briefingsTagID:0 paidAccessChecker:v12 bundleSubscription:v18 paywalledArticlesMaxCount:*(a1 + 120)];
  [v4 addObject:v19];
}

- (id)transformFeedItems:(id)a3
{
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTSectionFeedFilterTransformation transformFeedItems:];
  }

  v5 = [v4 fc_arrayOfObjectsPassingTest:&__block_literal_global_46];
  v6 = [(NTSectionFeedFilterTransformation *)self underlyingTransformation];
  v7 = [v6 transformFeedItems:v5];

  v8 = objc_opt_new();
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v18[3] = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__NTSectionFeedFilterTransformation_transformFeedItems___block_invoke_2;
  v14[3] = &unk_279982E48;
  v17 = v18;
  v9 = v7;
  v15 = v9;
  v10 = v8;
  v16 = v10;
  [v4 enumerateObjectsUsingBlock:v14];
  v11 = v16;
  v12 = v10;

  _Block_object_dispose(v18, 8);

  return v12;
}

BOOL __56__NTSectionFeedFilterTransformation_transformFeedItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 feedTransformationItem];
  v3 = v2 != 0;

  return v3;
}

uint64_t __56__NTSectionFeedFilterTransformation_transformFeedItems___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 feedTransformationItem];

  if (v3)
  {
    v4 = *(*(*(a1 + 48) + 8) + 24);
    v5 = [*(a1 + 32) count];
    v6 = v9;
    if (v4 >= v5)
    {
      goto LABEL_8;
    }

    v7 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 48) + 8) + 24)];
    if (![v9 isEqual:v7])
    {

      goto LABEL_7;
    }

    ++*(*(*(a1 + 48) + 8) + 24);
  }

  v5 = [*(a1 + 40) addObject:v9];
LABEL_7:
  v6 = v9;
LABEL_8:

  return MEMORY[0x2821F96F8](v5, v6);
}

- (void)initWithTodayData:configurationManager:readArticlesFilterMethod:seenArticlesFilterMethod:minimumTimeSinceFirstSeenToFilter:supplementalFeedFilterOptions:otherArticleIDs:otherClusterIDs:filterDate:paywalledArticlesMaxCount:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "configurationManager", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithTodayData:configurationManager:readArticlesFilterMethod:seenArticlesFilterMethod:minimumTimeSinceFirstSeenToFilter:supplementalFeedFilterOptions:otherArticleIDs:otherClusterIDs:filterDate:paywalledArticlesMaxCount:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "otherArticleIDs", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithTodayData:configurationManager:readArticlesFilterMethod:seenArticlesFilterMethod:minimumTimeSinceFirstSeenToFilter:supplementalFeedFilterOptions:otherArticleIDs:otherClusterIDs:filterDate:paywalledArticlesMaxCount:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "otherClusterIDs", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)initWithTodayData:configurationManager:readArticlesFilterMethod:seenArticlesFilterMethod:minimumTimeSinceFirstSeenToFilter:supplementalFeedFilterOptions:otherArticleIDs:otherClusterIDs:filterDate:paywalledArticlesMaxCount:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "filterDate", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)transformFeedItems:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "feedItems", v7, 2u);

  v6 = *MEMORY[0x277D85DE8];
}

@end