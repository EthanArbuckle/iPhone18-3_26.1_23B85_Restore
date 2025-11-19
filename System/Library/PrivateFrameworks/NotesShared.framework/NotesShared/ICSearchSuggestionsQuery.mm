@interface ICSearchSuggestionsQuery
- (ICSearchSuggestionsQuery)initWithSearchString:(id)a3 additionalLiteralSearchString:(id)a4 searchTokens:(id)a5 filterQueries:(id)a6 rankingQueriesDefinition:(id)a7 modernResultsOnly:(BOOL)a8 suggestionsResponder:(id)a9;
- (NSMutableArray)foundSuggestions;
- (id)newSearchQueryContext;
- (id)newSearchQueryWithContext:(id)a3;
- (id)queryResultsToAddFromBatch:(id)a3;
- (void)queryFinishedRunningWithError:(id)a3;
@end

@implementation ICSearchSuggestionsQuery

- (ICSearchSuggestionsQuery)initWithSearchString:(id)a3 additionalLiteralSearchString:(id)a4 searchTokens:(id)a5 filterQueries:(id)a6 rankingQueriesDefinition:(id)a7 modernResultsOnly:(BOOL)a8 suggestionsResponder:(id)a9
{
  v15 = a9;
  v16 = a3;
  v17 = a4;
  v31 = a5;
  v30 = a6;
  v18 = a7;
  v19 = a9;
  if (!+[ICSearchSuggestionsContext supportsSearchSuggestions])
  {
    v20 = v19;
    v21 = v17;
    v22 = v16;
    v23 = MEMORY[0x277D36198];
    v28 = objc_opt_class();
    v24 = v23;
    v16 = v22;
    v17 = v21;
    v19 = v20;
    v15 = a9;
    [v24 handleFailedAssertWithCondition:"ICSearchSuggestionsContext.supportsSearchSuggestions" functionName:"-[ICSearchSuggestionsQuery initWithSearchString:additionalLiteralSearchString:searchTokens:filterQueries:rankingQueriesDefinition:modernResultsOnly:suggestionsResponder:]" simulateCrash:1 showAlert:0 format:{@"%@ is only supported to use if search suggestions are supported.", v28}];
  }

  v32.receiver = self;
  v32.super_class = ICSearchSuggestionsQuery;
  v25 = [(ICSearchQuery *)&v32 initWithRankingQueriesDefinition:v18];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_userSearchString, a3);
    objc_storeStrong(&v26->_literalSearchString, a4);
    objc_storeStrong(&v26->_searchTokens, a5);
    objc_storeStrong(&v26->_filterQueries, a6);
    v26->_modernResultsOnly = a8;
    objc_storeStrong(&v26->_suggestionsResponder, v15);
  }

  return v26;
}

- (NSMutableArray)foundSuggestions
{
  foundSuggestions = self->_foundSuggestions;
  if (!foundSuggestions)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v5 = self->_foundSuggestions;
    self->_foundSuggestions = v4;

    foundSuggestions = self->_foundSuggestions;
  }

  return foundSuggestions;
}

- (id)newSearchQueryContext
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = [(ICSearchSuggestionsQuery *)self suggestionsResponder];
  v4 = [v3 searchContext];
  v5 = [v4 searchSuggestion];

  v6 = [(ICSearchSuggestionsQuery *)self searchTokens];
  v7 = [v6 ic_compactMap:&__block_literal_global_65];

  v8 = MEMORY[0x277CC34D8];
  v9 = [(ICSearchSuggestionsQuery *)self userSearchString];
  v10 = [v8 updatedSuggestionWithCurrentSuggestion:v5 userString:v9 tokens:v7];

  v11 = [MEMORY[0x277CC3508] userQueryContextWithCurrentSuggestion:v10];
  v12 = [(ICSearchSuggestionsQuery *)self literalSearchString];
  if (v12)
  {
    v13 = [(ICSearchSuggestionsQuery *)self literalSearchString];
    v19[0] = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    [v11 setAdditionalQueries:v14];
  }

  else
  {
    [v11 setAdditionalQueries:0];
  }

  v15 = [(ICSearchSuggestionsQuery *)self filterQueries];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = MEMORY[0x277CBEBF8];
  }

  [v11 setFilterQueries:v17];

  [v11 setEnableRankedResults:1];
  [v11 setEnableSuggestionTokens:1];
  [v11 setEnableResultCountsPerSuggestion:1];
  [v11 setMaxSuggestionCount:5];
  [v11 setDisableBlockingOnIndex:1];

  return v11;
}

- (id)newSearchQueryWithContext:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = ICCheckedDynamicCast();
  v6 = objc_alloc(MEMORY[0x277CC3500]);
  v7 = [(ICSearchSuggestionsQuery *)self userSearchString];
  v8 = [v6 initWithUserQueryString:v7 userQueryContext:v5];

  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__ICSearchSuggestionsQuery_newSearchQueryWithContext___block_invoke;
  v10[3] = &unk_2781984F0;
  objc_copyWeak(&v11, &location);
  [v8 setFoundSuggestionsHandler:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v8;
}

void __54__ICSearchSuggestionsQuery_newSearchQueryWithContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained wasForceStopped];
  v6 = os_log_create("com.apple.notes", "SearchIndexer");
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __54__ICSearchSuggestionsQuery_newSearchQueryWithContext___block_invoke_cold_2(WeakRetained, v7);
    }
  }

  else
  {
    v8 = v6;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __54__ICSearchSuggestionsQuery_newSearchQueryWithContext___block_invoke_cold_1(WeakRetained, v3, v8);
    }

    v7 = [v3 ic_compactMap:&__block_literal_global_15_0];
    v9 = [WeakRetained foundSuggestions];
    [v9 addObjectsFromArray:v7];
  }
}

ICSearchSuggestion *__54__ICSearchSuggestionsQuery_newSearchQueryWithContext___block_invoke_12(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ICSearchSuggestion alloc] initWithSuggestion:v2];

  return v3;
}

- (id)queryResultsToAddFromBatch:(id)a3
{
  v4 = a3;
  v5 = [(ICSearchSuggestionsQuery *)self topHits];

  if (v5)
  {
    v6 = v4;
  }

  else if ([v4 count] > 2)
  {
    v7 = [v4 ic_arrayBySplittingIntoTwoArraysWithMaxPrefixCount:2 prefixMatchingPredicate:&__block_literal_global_20];
    v8 = [v7 firstObject];
    v9 = [v8 count];

    if (v9)
    {
      v10 = [v7 firstObject];
      [(ICSearchSuggestionsQuery *)self setTopHits:v10];
    }

    v6 = [v7 secondObject];
  }

  else
  {
    [(ICSearchSuggestionsQuery *)self setTopHits:v4];
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

BOOL __55__ICSearchSuggestionsQuery_queryResultsToAddFromBatch___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 attributeSet];
  v3 = [v2 ic_searchResultType] == 0;

  return v3;
}

- (void)queryFinishedRunningWithError:(id)a3
{
  if (a3)
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v4 = [(ICSearchSuggestionsQuery *)self foundSuggestions];
    v3 = [v4 copy];
  }

  v5 = v3;
  performBlockOnMainThread();
}

void __58__ICSearchSuggestionsQuery_queryFinishedRunningWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) suggestionsResponder];
  [v2 setVisibleSearchSuggestions:*(a1 + 40)];
}

void __54__ICSearchSuggestionsQuery_newSearchQueryWithContext___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  v5 = a1;
  v6 = 1024;
  v7 = [a2 count];
  _os_log_debug_impl(&dword_214D51000, a3, OS_LOG_TYPE_DEBUG, "%@ found %d suggestions", &v4, 0x12u);
}

void __54__ICSearchSuggestionsQuery_newSearchQueryWithContext___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_214D51000, a2, OS_LOG_TYPE_DEBUG, "FoundSuggestionsHandler of search query called, but search query was force stopped earlier: %@", &v2, 0xCu);
}

@end