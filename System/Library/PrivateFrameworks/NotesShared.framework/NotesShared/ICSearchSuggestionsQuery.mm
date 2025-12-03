@interface ICSearchSuggestionsQuery
- (ICSearchSuggestionsQuery)initWithSearchString:(id)string additionalLiteralSearchString:(id)searchString searchTokens:(id)tokens filterQueries:(id)queries rankingQueriesDefinition:(id)definition modernResultsOnly:(BOOL)only suggestionsResponder:(id)responder;
- (NSMutableArray)foundSuggestions;
- (id)newSearchQueryContext;
- (id)newSearchQueryWithContext:(id)context;
- (id)queryResultsToAddFromBatch:(id)batch;
- (void)queryFinishedRunningWithError:(id)error;
@end

@implementation ICSearchSuggestionsQuery

- (ICSearchSuggestionsQuery)initWithSearchString:(id)string additionalLiteralSearchString:(id)searchString searchTokens:(id)tokens filterQueries:(id)queries rankingQueriesDefinition:(id)definition modernResultsOnly:(BOOL)only suggestionsResponder:(id)responder
{
  responderCopy3 = responder;
  stringCopy = string;
  searchStringCopy = searchString;
  tokensCopy = tokens;
  queriesCopy = queries;
  definitionCopy = definition;
  responderCopy2 = responder;
  if (!+[ICSearchSuggestionsContext supportsSearchSuggestions])
  {
    v20 = responderCopy2;
    v21 = searchStringCopy;
    v22 = stringCopy;
    v23 = MEMORY[0x277D36198];
    v28 = objc_opt_class();
    v24 = v23;
    stringCopy = v22;
    searchStringCopy = v21;
    responderCopy2 = v20;
    responderCopy3 = responder;
    [v24 handleFailedAssertWithCondition:"ICSearchSuggestionsContext.supportsSearchSuggestions" functionName:"-[ICSearchSuggestionsQuery initWithSearchString:additionalLiteralSearchString:searchTokens:filterQueries:rankingQueriesDefinition:modernResultsOnly:suggestionsResponder:]" simulateCrash:1 showAlert:0 format:{@"%@ is only supported to use if search suggestions are supported.", v28}];
  }

  v32.receiver = self;
  v32.super_class = ICSearchSuggestionsQuery;
  v25 = [(ICSearchQuery *)&v32 initWithRankingQueriesDefinition:definitionCopy];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_userSearchString, string);
    objc_storeStrong(&v26->_literalSearchString, searchString);
    objc_storeStrong(&v26->_searchTokens, tokens);
    objc_storeStrong(&v26->_filterQueries, queries);
    v26->_modernResultsOnly = only;
    objc_storeStrong(&v26->_suggestionsResponder, responderCopy3);
  }

  return v26;
}

- (NSMutableArray)foundSuggestions
{
  foundSuggestions = self->_foundSuggestions;
  if (!foundSuggestions)
  {
    array = [MEMORY[0x277CBEB18] array];
    v5 = self->_foundSuggestions;
    self->_foundSuggestions = array;

    foundSuggestions = self->_foundSuggestions;
  }

  return foundSuggestions;
}

- (id)newSearchQueryContext
{
  v19[1] = *MEMORY[0x277D85DE8];
  suggestionsResponder = [(ICSearchSuggestionsQuery *)self suggestionsResponder];
  searchContext = [suggestionsResponder searchContext];
  searchSuggestion = [searchContext searchSuggestion];

  searchTokens = [(ICSearchSuggestionsQuery *)self searchTokens];
  v7 = [searchTokens ic_compactMap:&__block_literal_global_65];

  v8 = MEMORY[0x277CC34D8];
  userSearchString = [(ICSearchSuggestionsQuery *)self userSearchString];
  v10 = [v8 updatedSuggestionWithCurrentSuggestion:searchSuggestion userString:userSearchString tokens:v7];

  v11 = [MEMORY[0x277CC3508] userQueryContextWithCurrentSuggestion:v10];
  literalSearchString = [(ICSearchSuggestionsQuery *)self literalSearchString];
  if (literalSearchString)
  {
    literalSearchString2 = [(ICSearchSuggestionsQuery *)self literalSearchString];
    v19[0] = literalSearchString2;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    [v11 setAdditionalQueries:v14];
  }

  else
  {
    [v11 setAdditionalQueries:0];
  }

  filterQueries = [(ICSearchSuggestionsQuery *)self filterQueries];
  v16 = filterQueries;
  if (filterQueries)
  {
    v17 = filterQueries;
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

- (id)newSearchQueryWithContext:(id)context
{
  contextCopy = context;
  objc_opt_class();
  v5 = ICCheckedDynamicCast();
  v6 = objc_alloc(MEMORY[0x277CC3500]);
  userSearchString = [(ICSearchSuggestionsQuery *)self userSearchString];
  v8 = [v6 initWithUserQueryString:userSearchString userQueryContext:v5];

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

- (id)queryResultsToAddFromBatch:(id)batch
{
  batchCopy = batch;
  topHits = [(ICSearchSuggestionsQuery *)self topHits];

  if (topHits)
  {
    secondObject = batchCopy;
  }

  else if ([batchCopy count] > 2)
  {
    v7 = [batchCopy ic_arrayBySplittingIntoTwoArraysWithMaxPrefixCount:2 prefixMatchingPredicate:&__block_literal_global_20];
    firstObject = [v7 firstObject];
    v9 = [firstObject count];

    if (v9)
    {
      firstObject2 = [v7 firstObject];
      [(ICSearchSuggestionsQuery *)self setTopHits:firstObject2];
    }

    secondObject = [v7 secondObject];
  }

  else
  {
    [(ICSearchSuggestionsQuery *)self setTopHits:batchCopy];
    secondObject = MEMORY[0x277CBEBF8];
  }

  return secondObject;
}

BOOL __55__ICSearchSuggestionsQuery_queryResultsToAddFromBatch___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 attributeSet];
  v3 = [v2 ic_searchResultType] == 0;

  return v3;
}

- (void)queryFinishedRunningWithError:(id)error
{
  if (error)
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  else
  {
    foundSuggestions = [(ICSearchSuggestionsQuery *)self foundSuggestions];
    v3 = [foundSuggestions copy];
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