@interface ICSearchQueryOperation
+ (NSOperationQueue)searchSuggestionsQueue;
+ (id)exactMatchingQueryStringForTitleSearchString:(id)string;
+ (id)fetchModernNoteSearchableItemAttributesFromCoreDataForObjectIDURIs:(id)is context:(id)context;
+ (id)highlightStringForAttributedInputs:(id)inputs;
+ (id)newOperationQueueWithName:(id)name;
+ (id)nlpSerialQueue;
+ (id)prefixMatchingQueryStringTitleForSearchString:(id)string;
+ (id)searchableItemsFromSortableItems:(id)items;
+ (id)tokensQueryStringFromTokens:(id)tokens;
+ (void)initialize;
+ (void)nlSearchQueryWithSearchString:(id)string queryString:(id *)queryString rankingQueries:(id *)queries highlightString:(id *)highlightString;
+ (void)nlpParser;
+ (void)suggestionSearchResultsWithLinkSuggestionQuery:(ICLinkSuggestionQuery *)query completionHandler:(id)handler;
- (BOOL)useSearchSuggestions;
- (ICSearchQuery)defaultQuery;
- (ICSearchQuery)fuzzyQuery;
- (ICSearchQueryOperation)init;
- (ICSearchQueryOperation)initWithLinkSuggestionQuery:(id)query;
- (ICSearchQueryOperation)initWithQueryString:(id)string rankingQueries:(id)queries performTopHitSearch:(BOOL)search modernResultsOnly:(BOOL)only attributes:(id)attributes;
- (ICSearchQueryOperation)initWithSearchSuggestionsResponder:(id)responder searchString:(id)string performNLSearch:(BOOL)search performTopHitSearch:(BOOL)hitSearch tokens:(id)tokens modernResultsOnly:(BOOL)only;
- (id)createPrefixMatchingQuery;
- (id)jointQueryWithSuggestions:(id)suggestions;
- (id)retrieveNotesOfFoundAttachmentsForSearchResults:(id)results;
- (id)runICSearchQuery:(id)query;
- (unint64_t)countOfNonSpaceCharsInSearchString;
- (void)appendSortableSearchableItemsToResults:(id)results;
- (void)cancel;
- (void)main;
- (void)performPrefixAndFuzzyAndSubstringQueries;
- (void)performRelatedWordQueriesIfNeeded;
- (void)performSpellCheckerAPIQueryIfNeeded;
- (void)performTopHitSearchQuery;
- (void)processTopHits:(id)hits;
@end

@implementation ICSearchQueryOperation

- (ICSearchQueryOperation)init
{
  [(ICSearchQueryOperation *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICSearchQueryOperation)initWithSearchSuggestionsResponder:(id)responder searchString:(id)string performNLSearch:(BOOL)search performTopHitSearch:(BOOL)hitSearch tokens:(id)tokens modernResultsOnly:(BOOL)only
{
  responderCopy = responder;
  stringCopy = string;
  tokensCopy = tokens;
  v24.receiver = self;
  v24.super_class = ICSearchQueryOperation;
  v18 = [(ICSearchQueryOperation *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_searchSuggestionsResponder, responder);
    if (stringCopy)
    {
      v20 = stringCopy;
    }

    else
    {
      v20 = &stru_2827172C0;
    }

    objc_storeStrong(&v19->_searchString, v20);
    v19->_performNLSearch = search;
    v19->_performTopHitSearch = hitSearch;
    objc_storeStrong(&v19->_searchTokens, tokens);
    v21 = [ICSearchQueryOperation tokensQueryStringFromTokens:tokensCopy];
    tokensQueryString = v19->_tokensQueryString;
    v19->_tokensQueryString = v21;

    v19->_modernResultsOnly = only;
  }

  return v19;
}

- (ICSearchQueryOperation)initWithQueryString:(id)string rankingQueries:(id)queries performTopHitSearch:(BOOL)search modernResultsOnly:(BOOL)only attributes:(id)attributes
{
  onlyCopy = only;
  stringCopy = string;
  queriesCopy = queries;
  attributesCopy = attributes;
  v22.receiver = self;
  v22.super_class = ICSearchQueryOperation;
  v15 = [(ICSearchQueryOperation *)&v22 init];
  v16 = v15;
  if (v15)
  {
    searchSuggestionsResponder = v15->_searchSuggestionsResponder;
    v15->_searchSuggestionsResponder = 0;

    v18 = [ICSearchResultsQuery alloc];
    if (attributesCopy)
    {
      v19 = [(ICSearchResultsQuery *)v18 initWithQueryString:stringCopy externalRankingQueries:queriesCopy modernResultsOnly:onlyCopy attributes:attributesCopy];
    }

    else
    {
      v19 = [(ICSearchResultsQuery *)v18 initWithQueryString:stringCopy externalRankingQueries:queriesCopy modernResultsOnly:onlyCopy];
    }

    defaultQuery = v16->_defaultQuery;
    v16->_defaultQuery = v19;

    v16->_allowEmptySearchString = 1;
    v16->_performTopHitSearch = search;
  }

  return v16;
}

- (ICSearchQueryOperation)initWithLinkSuggestionQuery:(id)query
{
  queryCopy = query;
  v12.receiver = self;
  v12.super_class = ICSearchQueryOperation;
  v6 = [(ICSearchQueryOperation *)&v12 init];
  v7 = v6;
  if (v6)
  {
    searchSuggestionsResponder = v6->_searchSuggestionsResponder;
    v6->_searchSuggestionsResponder = 0;

    objc_storeStrong(&v7->_defaultQuery, query);
    queryString = [queryCopy queryString];
    searchString = v7->_searchString;
    v7->_searchString = queryString;

    v7->_allowEmptySearchString = 0;
    v7->_performTopHitSearch = 0;
    v7->_modernResultsOnly = 1;
  }

  return v7;
}

+ (void)initialize
{
  v11[1] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___ICSearchQueryOperation;
  objc_msgSendSuper2(&v7, sel_initialize);
  if (objc_opt_class() == self)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v10 = *MEMORY[0x277D36340];
    v11[0] = &unk_282748148;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [standardUserDefaults registerDefaults:v4];

    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v8 = *MEMORY[0x277D36338];
    v9 = &unk_282747C58;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    [standardUserDefaults2 registerDefaults:v6];
  }
}

- (id)jointQueryWithSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  tokensQueryString = [(ICSearchQueryOperation *)self tokensQueryString];
  suggestionsCopy = tokensQueryString;
  if (suggestionsCopy)
  {

    if (suggestionsCopy)
    {
      v7 = objc_alloc(MEMORY[0x277CCACA8]);
      tokensQueryString2 = [(ICSearchQueryOperation *)self tokensQueryString];
      suggestionsCopy = [v7 initWithFormat:@"(%@) && (%@)", tokensQueryString2, suggestionsCopy];
    }

    else
    {
      suggestionsCopy = suggestionsCopy;
    }
  }

  return suggestionsCopy;
}

- (unint64_t)countOfNonSpaceCharsInSearchString
{
  v17 = *MEMORY[0x277D85DE8];
  searchString = [(ICSearchQueryOperation *)self searchString];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v4 = [searchString componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v8 += [*(*(&v12 + 1) + 8 * i) length];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)useSearchSuggestions
{
  if (!+[ICSearchSuggestionsContext supportsSearchSuggestions])
  {
    return 0;
  }

  searchSuggestionsResponder = [(ICSearchQueryOperation *)self searchSuggestionsResponder];
  v4 = searchSuggestionsResponder != 0;

  return v4;
}

- (id)createPrefixMatchingQuery
{
  v29[1] = *MEMORY[0x277D85DE8];
  searchString = [(ICSearchQueryOperation *)self searchString];
  keyboardLanguage = [(ICSearchQueryOperation *)self keyboardLanguage];
  v28 = 0;
  v6 = [ICSearchQueryParser prefixMatchingQueryStringForSearchString:searchString enableSpellCheckSPI:1 languageForSpellchecking:keyboardLanguage expandedTokens:&v28];
  v7 = v28;

  v8 = [(ICSearchQueryOperation *)self jointQueryWithSuggestions:v6];

  v9 = [[ICRankingQueriesDefinition alloc] initWithExpandedTokens:v7 rankingQueryType:0 rankingQueryFlags:@"cwd"];
  v10 = objc_opt_class();
  searchString2 = [(ICSearchQueryOperation *)self searchString];
  v12 = [v10 substringMatchingQueryStringForSearchString:searchString2];

  if ([(ICSearchQueryOperation *)self useSearchSuggestions])
  {
    v13 = +[ICCloudConfiguration sharedConfiguration];
    searchSubstringMatchingEnabled = [v13 searchSubstringMatchingEnabled];

    if ((searchSubstringMatchingEnabled & 1) == 0)
    {

      v12 = 0;
    }

    searchString3 = [(ICSearchQueryOperation *)self searchString];
    v16 = [searchString3 length];

    v26 = v8;
    v27 = v7;
    if (!v16)
    {

      v12 = 0;
    }

    v25 = [ICSearchSuggestionsQuery alloc];
    searchString4 = [(ICSearchQueryOperation *)self searchString];
    searchTokens = [(ICSearchQueryOperation *)self searchTokens];
    tokensQueryString = [(ICSearchQueryOperation *)self tokensQueryString];
    if (tokensQueryString)
    {
      tokensQueryString2 = [(ICSearchQueryOperation *)self tokensQueryString];
      v29[0] = tokensQueryString2;
      v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
    }

    else
    {
      v20 = MEMORY[0x277CBEBF8];
    }

    modernResultsOnly = [(ICSearchQueryOperation *)self modernResultsOnly];
    searchSuggestionsResponder = [(ICSearchQueryOperation *)self searchSuggestionsResponder];
    v21 = [(ICSearchSuggestionsQuery *)v25 initWithSearchString:searchString4 additionalLiteralSearchString:v12 searchTokens:searchTokens filterQueries:v20 rankingQueriesDefinition:v9 modernResultsOnly:modernResultsOnly suggestionsResponder:searchSuggestionsResponder];

    if (tokensQueryString)
    {
    }

    v8 = v26;
    v7 = v27;
  }

  else
  {
    v21 = [[ICSearchResultsQuery alloc] initWithQueryString:v8 rankingQueriesDefinition:v9 modernResultsOnly:[(ICSearchQueryOperation *)self modernResultsOnly]];
  }

  return v21;
}

- (ICSearchQuery)defaultQuery
{
  defaultQuery = self->_defaultQuery;
  if (!defaultQuery)
  {
    createPrefixMatchingQuery = [(ICSearchQueryOperation *)self createPrefixMatchingQuery];
    v5 = self->_defaultQuery;
    self->_defaultQuery = createPrefixMatchingQuery;

    defaultQuery = self->_defaultQuery;
  }

  return defaultQuery;
}

- (ICSearchQuery)fuzzyQuery
{
  fuzzyQuery = self->_fuzzyQuery;
  if (!fuzzyQuery)
  {
    v4 = objc_opt_class();
    searchString = [(ICSearchQueryOperation *)self searchString];
    v6 = [v4 fuzzyMatchingQueryStringForSearchString:searchString];

    v7 = [(ICSearchQueryOperation *)self jointQueryWithSuggestions:v6];

    v8 = [ICRankingQueriesDefinition alloc];
    searchString2 = [(ICSearchQueryOperation *)self searchString];
    v10 = [(ICRankingQueriesDefinition *)v8 initWithSearchString:searchString2 rankingQueryType:1 rankingQueryFlags:@"cwdt"];

    v11 = [[ICSearchResultsQuery alloc] initWithQueryString:v7 rankingQueriesDefinition:v10 modernResultsOnly:[(ICSearchQueryOperation *)self modernResultsOnly]];
    v12 = self->_fuzzyQuery;
    self->_fuzzyQuery = &v11->super;

    fuzzyQuery = self->_fuzzyQuery;
  }

  return fuzzyQuery;
}

- (void)performPrefixAndFuzzyAndSubstringQueries
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Prefix query start"];
  [ICSearchProfiler logProfilingWithMessage:v3 searchQueryOperation:self];

  defaultQuery = [(ICSearchQueryOperation *)self defaultQuery];
  v5 = [(ICSearchQueryOperation *)self runICSearchQuery:defaultQuery];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Prefix query end"];
  [ICSearchProfiler logProfilingWithMessage:v6 searchQueryOperation:self];

  defaultQuery2 = [(ICSearchQueryOperation *)self defaultQuery];
  if ([defaultQuery2 wasForceStopped])
  {

    goto LABEL_4;
  }

  isCancelled = [(ICSearchQueryOperation *)self isCancelled];

  if (isCancelled)
  {
LABEL_4:
    v9 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [ICSearchQueryOperation performPrefixAndFuzzyAndSubstringQueries];
    }

LABEL_6:

    return;
  }

  if ([(ICSearchQueryOperation *)self countOfNonSpaceCharsInSearchString]>= 3)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v11 = [standardUserDefaults BOOLForKey:*MEMORY[0x277D36318]];

    if (v11)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fuzzy query start"];
      [ICSearchProfiler logProfilingWithMessage:v12 searchQueryOperation:self];

      fuzzyQuery = [(ICSearchQueryOperation *)self fuzzyQuery];
      v14 = [(ICSearchQueryOperation *)self runICSearchQuery:fuzzyQuery];

      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fuzzy query end"];
      [ICSearchProfiler logProfilingWithMessage:v15 searchQueryOperation:self];

      fuzzyQuery2 = [(ICSearchQueryOperation *)self fuzzyQuery];
      if ([fuzzyQuery2 wasForceStopped])
      {

        goto LABEL_13;
      }

      isCancelled2 = [(ICSearchQueryOperation *)self isCancelled];

      if (isCancelled2)
      {
LABEL_13:
        v9 = os_log_create("com.apple.notes", "SearchIndexer");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [ICSearchQueryOperation performPrefixAndFuzzyAndSubstringQueries];
        }

        goto LABEL_6;
      }

      substringQuery = [(ICSearchQueryOperation *)self substringQuery];

      if (!substringQuery)
      {
        v19 = objc_opt_class();
        searchString = [(ICSearchQueryOperation *)self searchString];
        v21 = [v19 substringMatchingQueryStringForSearchString:searchString];

        v22 = [(ICSearchQueryOperation *)self jointQueryWithSuggestions:v21];

        v23 = [ICRankingQueriesDefinition alloc];
        searchString2 = [(ICSearchQueryOperation *)self searchString];
        v25 = [(ICRankingQueriesDefinition *)v23 initWithSearchString:searchString2 rankingQueryType:2 rankingQueryFlags:@"cwdt"];

        v26 = [[ICSearchResultsQuery alloc] initWithQueryString:v22 rankingQueriesDefinition:v25 modernResultsOnly:[(ICSearchQueryOperation *)self modernResultsOnly]];
        [(ICSearchQueryOperation *)self setSubstringQuery:v26];
      }

      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Substring query start"];
      [ICSearchProfiler logProfilingWithMessage:v27 searchQueryOperation:self];

      substringQuery2 = [(ICSearchQueryOperation *)self substringQuery];
      v29 = [(ICSearchQueryOperation *)self runICSearchQuery:substringQuery2];

      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Substring query end"];
      [ICSearchProfiler logProfilingWithMessage:v30 searchQueryOperation:self];

      substringQuery3 = [(ICSearchQueryOperation *)self substringQuery];
      if ([substringQuery3 wasForceStopped])
      {

        goto LABEL_20;
      }

      isCancelled3 = [(ICSearchQueryOperation *)self isCancelled];

      if (isCancelled3)
      {
LABEL_20:
        v9 = os_log_create("com.apple.notes", "SearchIndexer");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [ICSearchQueryOperation performPrefixAndFuzzyAndSubstringQueries];
        }

        goto LABEL_6;
      }
    }
  }
}

- (void)performSpellCheckerAPIQueryIfNeeded
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  if (([standardUserDefaults BOOLForKey:*MEMORY[0x277D36348]] & 1) == 0)
  {

    return;
  }

  searchString = [(ICSearchQueryOperation *)self searchString];
  v4 = [searchString length];

  if (!v4)
  {
    return;
  }

  searchString2 = [(ICSearchQueryOperation *)self searchString];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    searchString3 = [(ICSearchQueryOperation *)self searchString];
    ic_guessedWords = [searchString3 ic_guessedWords];

    firstObject = [ic_guessedWords firstObject];
    if (firstObject)
    {
      spellingQuery = [(ICSearchQueryOperation *)self spellingQuery];

      if (!spellingQuery)
      {
        v11 = [ICSearchQueryParser queryStringForSearchString:firstObject queryFields:0 matchType:0];
        v12 = [(ICSearchQueryOperation *)self jointQueryWithSuggestions:v11];

        v13 = [[ICRankingQueriesDefinition alloc] initWithSearchString:firstObject rankingQueryType:0 rankingQueryFlags:@"cwdt"];
        v14 = [[ICSearchResultsQuery alloc] initWithQueryString:v12 rankingQueriesDefinition:v13 modernResultsOnly:[(ICSearchQueryOperation *)self modernResultsOnly]];
        [(ICSearchQueryOperation *)self setSpellingQuery:v14];

        spellingQuery2 = [(ICSearchQueryOperation *)self spellingQuery];
        v16 = [(ICSearchQueryOperation *)self runICSearchQuery:spellingQuery2];
      }
    }
  }

  spellingQuery3 = [(ICSearchQueryOperation *)self spellingQuery];

  if (!spellingQuery3)
  {
    v18 = MEMORY[0x277CCAAE8];
    preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
    firstObject2 = [preferredLanguages firstObject];
    v21 = [v18 availableTagSchemesForLanguage:firstObject2];

    v22 = *MEMORY[0x277CCA3E0];
    if (![v21 containsObject:*MEMORY[0x277CCA3E0]])
    {
LABEL_16:

      goto LABEL_17;
    }

    v43 = 0;
    v44 = 0;
    v23 = MEMORY[0x277CCABF8];
    preferredLanguages2 = [MEMORY[0x277CBEAF8] preferredLanguages];
    firstObject3 = [preferredLanguages2 firstObject];
    v26 = [v23 defaultOrthographyForLanguage:firstObject3];

    v27 = MEMORY[0x277CCAAE8];
    searchString4 = [(ICSearchQueryOperation *)self searchString];
    v29 = [v27 tagForString:searchString4 atIndex:0 unit:0 scheme:v22 orthography:v26 tokenRange:&v43];

    if (v29)
    {
      v30 = v44;
      searchString5 = [(ICSearchQueryOperation *)self searchString];
      if (v30 != [searchString5 length])
      {
LABEL_14:

        goto LABEL_15;
      }

      searchString6 = [(ICSearchQueryOperation *)self searchString];
      v33 = [v29 isEqualToString:searchString6];

      if ((v33 & 1) == 0)
      {
        v34 = [ICSearchQueryParser queryStringForSearchString:v29 queryFields:0 matchType:0];
        searchString5 = [(ICSearchQueryOperation *)self jointQueryWithSuggestions:v34];

        v35 = [[ICRankingQueriesDefinition alloc] initWithSearchString:v29 rankingQueryType:0 rankingQueryFlags:@"cwdt"];
        v36 = [[ICSearchResultsQuery alloc] initWithQueryString:searchString5 rankingQueriesDefinition:v35 modernResultsOnly:[(ICSearchQueryOperation *)self modernResultsOnly]];
        [(ICSearchQueryOperation *)self setSpellingQuery:v36];

        spellingQuery4 = [(ICSearchQueryOperation *)self spellingQuery];
        v38 = [(ICSearchQueryOperation *)self runICSearchQuery:spellingQuery4];

        goto LABEL_14;
      }
    }

LABEL_15:

    goto LABEL_16;
  }

LABEL_17:
  spellingQuery5 = [(ICSearchQueryOperation *)self spellingQuery];
  if ([spellingQuery5 wasForceStopped])
  {
  }

  else
  {
    isCancelled = [(ICSearchQueryOperation *)self isCancelled];

    if ((isCancelled & 1) == 0)
    {
      return;
    }
  }

  v41 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    [ICSearchQueryOperation performSpellCheckerAPIQueryIfNeeded];
  }
}

- (void)performRelatedWordQueriesIfNeeded
{
  v39 = *MEMORY[0x277D85DE8];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults BOOLForKey:*MEMORY[0x277D36330]];

  if (v4)
  {
    preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
    firstObject = [preferredLanguages firstObject];

    Helper_x8__OBJC_CLASS___NLEmbedding = gotLoadHelper_x8__OBJC_CLASS___NLEmbedding(v7);
    v10 = [*(v9 + 2480) wordEmbeddingForLanguage:{firstObject, Helper_x8__OBJC_CLASS___NLEmbedding}];
    searchString = [(ICSearchQueryOperation *)self searchString];
    lowercaseString = [searchString lowercaseString];

    if ([v10 containsString:lowercaseString])
    {
      v32 = firstObject;
      standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [standardUserDefaults2 doubleForKey:*MEMORY[0x277D36340]];
      v15 = v14;

      standardUserDefaults3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v17 = [standardUserDefaults3 integerForKey:*MEMORY[0x277D36338]];

      v31 = v10;
      v18 = [v10 neighborsForString:lowercaseString maximumCount:v17 maximumDistance:0 distanceType:v15];
      v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:v17];
      [(ICSearchQueryOperation *)self setRelatedWordQueries:v19];

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      obj = v18;
      v20 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v35;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v35 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v34 + 1) + 8 * i);
            v25 = [ICSearchQueryParser queryStringForSearchString:v24 queryFields:0 matchType:0];
            v26 = [(ICSearchQueryOperation *)self jointQueryWithSuggestions:v25];

            v27 = [[ICRankingQueriesDefinition alloc] initWithSearchString:v24 rankingQueryType:0 rankingQueryFlags:@"cwdt"];
            v28 = [[ICSearchResultsQuery alloc] initWithQueryString:v26 rankingQueriesDefinition:v27 modernResultsOnly:[(ICSearchQueryOperation *)self modernResultsOnly]];
            relatedWordQueries = [(ICSearchQueryOperation *)self relatedWordQueries];
            [relatedWordQueries addObject:v28];

            v30 = [(ICSearchQueryOperation *)self runICSearchQuery:v28];
          }

          v21 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v21);
      }

      v10 = v31;
      firstObject = v32;
    }
  }
}

- (void)performTopHitSearchQuery
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_214D51000, v0, OS_LOG_TYPE_ERROR, "Top Hit Search Query error: %@", v1, 0xCu);
}

- (void)processTopHits:(id)hits
{
  v29 = *MEMORY[0x277D85DE8];
  hitsCopy = hits;
  if (hitsCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v21 = hitsCopy;
    v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = hitsCopy;
    v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      do
      {
        v9 = 0;
        do
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v24 + 1) + 8 * v9);
          v11 = MEMORY[0x277CBEAC0];
          searchString = [(ICSearchQueryOperation *)self searchString];
          keyboardLanguage = [(ICSearchQueryOperation *)self keyboardLanguage];
          v14 = [v11 highlightInfoForSearchStringWithPrefixMatchInAllFields:searchString language:keyboardLanguage];

          v15 = [[ICSortableSearchableItem alloc] initWithSearchableItem:v10 highlightInfo:v14 rankingScore:0 attachmentUniqueIdentifiers:0.0];
          [v5 addObject:v15];
          if ([(ICSortableSearchableItem *)v15 searchResultType]== 1)
          {
            [v22 addObject:v15];
          }

          else
          {
            resultsDictionary = [(ICSearchQueryOperation *)self resultsDictionary];
            uniqueIdentifier = [v10 uniqueIdentifier];
            [resultsDictionary setObject:v15 forKeyedSubscript:uniqueIdentifier];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v7);
    }

    v18 = [(ICSearchQueryOperation *)self retrieveNotesOfFoundAttachmentsForSearchResults:v22];
    if (v18)
    {
      [v5 addObjectsFromArray:v18];
    }

    [(ICSearchQueryOperation *)self appendSortableSearchableItemsToResults:v5];
    foundItemsHandler = [(ICSearchQueryOperation *)self foundItemsHandler];

    if (foundItemsHandler)
    {
      foundItemsHandler2 = [(ICSearchQueryOperation *)self foundItemsHandler];
      (foundItemsHandler2)[2](foundItemsHandler2, v5, 1);
    }

    hitsCopy = v21;
  }
}

- (void)appendSortableSearchableItemsToResults:(id)results
{
  v17 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [resultsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(resultsCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        results = [(ICSearchQueryOperation *)self results];
        searchableItem = [v9 searchableItem];
        [results addObject:searchableItem];

        ++v8;
      }

      while (v6 != v8);
      v6 = [resultsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)main
{
  if (+[ICSearchSuggestionsContext supportsSearchSuggestions])
  {
    searchSuggestionsResponder = [(ICSearchQueryOperation *)self searchSuggestionsResponder];
    searchContext = [searchSuggestionsResponder searchContext];
    searchSuggestion = [searchContext searchSuggestion];
    currentTokens = [searchSuggestion currentTokens];
    v7 = [currentTokens count] == 0;
  }

  else
  {
    v7 = 1;
  }

  if (![(ICSearchQueryOperation *)self allowEmptySearchString]&& ![(ICSearchQueryOperation *)self countOfNonSpaceCharsInSearchString])
  {
    tokensQueryString = [(ICSearchQueryOperation *)self tokensQueryString];
    v9 = tokensQueryString == 0 && v7;

    if (v9 == 1)
    {
      v10 = os_log_create("com.apple.notes", "SearchIndexer");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [ICSearchQueryOperation main];
      }

LABEL_27:

      return;
    }
  }

  if ([(ICSearchQueryOperation *)self isCancelled])
  {
    v10 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ICSearchQueryOperation main];
    }

    goto LABEL_27;
  }

  [(ICSearchQueryOperation *)self setRankingStrategy:+[ICSearchRankingStrategySwitch currentStrategy]];
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(ICSearchQueryOperation *)self setResultsDictionary:v11];

  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(ICSearchQueryOperation *)self setResults:v12];

  v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(ICSearchQueryOperation *)self setUniqueIdentifiersOfAttachmentsFoundInNotes:v13];

  if (![(ICSearchQueryOperation *)self performTopHitSearch])
  {
    if (![(ICSearchQueryOperation *)self isCancelled])
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  v14 = +[ICCloudConfiguration sharedConfiguration];
  if (![v14 shouldPerformTopHitSearch])
  {

    if (([(ICSearchQueryOperation *)self isCancelled]& 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_18:
    v10 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ICSearchQueryOperation main];
    }

    goto LABEL_27;
  }

  tokensQueryString2 = [(ICSearchQueryOperation *)self tokensQueryString];

  if (([(ICSearchQueryOperation *)self isCancelled]& 1) != 0)
  {
    goto LABEL_18;
  }

  if (!tokensQueryString2)
  {
    [(ICSearchQueryOperation *)self performTopHitSearchQuery];
  }

LABEL_21:
  if ([(ICSearchQueryOperation *)self isCancelled])
  {
    v10 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ICSearchQueryOperation main];
    }

    goto LABEL_27;
  }

  [(ICSearchQueryOperation *)self performPrefixAndFuzzyAndSubstringQueries];
  if ([(ICSearchQueryOperation *)self isCancelled])
  {
    v10 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ICSearchQueryOperation main];
    }

    goto LABEL_27;
  }

  if ([(ICSearchQueryOperation *)self performNLSearch])
  {
    v16 = objc_opt_class();
    searchString = [(ICSearchQueryOperation *)self searchString];
    v31 = 0;
    v32 = 0;
    v30 = 0;
    [v16 nlSearchQueryWithSearchString:searchString queryString:&v32 rankingQueries:&v31 highlightString:&v30];
    v18 = v32;
    v19 = v31;
    v20 = v30;

    if (v18)
    {
      v21 = [(ICSearchQueryOperation *)self jointQueryWithSuggestions:v18];
    }

    else
    {
      v21 = 0;
    }

    v22 = [[ICSearchResultsQuery alloc] initWithQueryString:v21 externalRankingQueries:v19 modernResultsOnly:[(ICSearchQueryOperation *)self modernResultsOnly]];
    [(ICSearchQueryOperation *)self setNlQuery:v22];

    if ([(ICSearchQueryOperation *)self isCancelled])
    {
      v23 = os_log_create("com.apple.notes", "SearchIndexer");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        [ICSearchQueryOperation main];
      }

LABEL_41:

      return;
    }

    if (v21)
    {
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"NL query start"];
      [ICSearchProfiler logProfilingWithMessage:v24 searchQueryOperation:self];

      nlQuery = [(ICSearchQueryOperation *)self nlQuery];
      v26 = [(ICSearchQueryOperation *)self runICSearchQuery:nlQuery];

      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"NL query end"];
      [ICSearchProfiler logProfilingWithMessage:v27 searchQueryOperation:self];

      nlQuery2 = [(ICSearchQueryOperation *)self nlQuery];
      if ([nlQuery2 wasForceStopped])
      {

        goto LABEL_39;
      }

      isCancelled = [(ICSearchQueryOperation *)self isCancelled];

      if (isCancelled)
      {
LABEL_39:
        v23 = os_log_create("com.apple.notes", "SearchIndexer");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          [ICSearchQueryOperation main];
        }

        goto LABEL_41;
      }
    }
  }

  [(ICSearchQueryOperation *)self performSpellCheckerAPIQueryIfNeeded];
  [(ICSearchQueryOperation *)self performRelatedWordQueriesIfNeeded];
}

- (id)retrieveNotesOfFoundAttachmentsForSearchResults:(id)results
{
  v90 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  v64 = resultsCopy;
  selfCopy = self;
  if ([resultsCopy count])
  {
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    obj = resultsCopy;
    v6 = [obj countByEnumeratingWithState:&v83 objects:v89 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v84;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v84 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v83 + 1) + 8 * i);
          searchableItem = [v10 searchableItem];
          attributeSet = [searchableItem attributeSet];

          if ([attributeSet ic_searchResultType] == 1)
          {
            ic_relatedModernNoteUniqueIdentifier = [attributeSet ic_relatedModernNoteUniqueIdentifier];
            [orderedSet ic_addNonNilObject:ic_relatedModernNoteUniqueIdentifier];
            searchableItem2 = [v10 searchableItem];
            uniqueIdentifier = [searchableItem2 uniqueIdentifier];

            if (ic_relatedModernNoteUniqueIdentifier)
            {
              [(ICSearchQueryOperation *)self uniqueIdentifiersOfAttachmentsFoundInNotes];
              v17 = v16 = self;
              array = [v17 objectForKeyedSubscript:ic_relatedModernNoteUniqueIdentifier];

              if (array)
              {
                [array ic_addNonNilObject:uniqueIdentifier];
              }

              else
              {
                array = [MEMORY[0x277CBEB18] array];
                [array ic_addNonNilObject:uniqueIdentifier];
                uniqueIdentifiersOfAttachmentsFoundInNotes = [(ICSearchQueryOperation *)v16 uniqueIdentifiersOfAttachmentsFoundInNotes];
                [uniqueIdentifiersOfAttachmentsFoundInNotes ic_setNonNilObject:array forNonNilKey:ic_relatedModernNoteUniqueIdentifier];
              }

              self = selfCopy;
            }
          }
        }

        v7 = [obj countByEnumeratingWithState:&v83 objects:v89 count:16];
      }

      while (v7);
    }
  }

  v65 = orderedSet;
  v20 = MEMORY[0x277CBEB98];
  resultsDictionary = [(ICSearchQueryOperation *)self resultsDictionary];
  allKeys = [resultsDictionary allKeys];
  v23 = [v20 setWithArray:allKeys];
  [v65 minusSet:v23];

  v24 = v65;
  if ([v65 count])
  {
    v25 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [ICSearchQueryOperation retrieveNotesOfFoundAttachmentsForSearchResults:];
    }

    v26 = +[ICNoteContext sharedContext];
    workerManagedObjectContext = [v26 workerManagedObjectContext];

    array2 = [v65 array];
    v63 = workerManagedObjectContext;
    v29 = [ICSearchQueryOperation fetchModernNoteSearchableItemAttributesFromCoreDataForObjectIDURIs:array2 context:workerManagedObjectContext];

    v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if ([v29 count])
    {
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v62 = v29;
      v68 = v29;
      v70 = [v68 countByEnumeratingWithState:&v79 objects:v88 count:16];
      if (!v70)
      {
        goto LABEL_42;
      }

      v31 = *v80;
      v32 = 0x278192000uLL;
      v66 = *v80;
      v67 = v30;
      while (1)
      {
        for (j = 0; j != v70; ++j)
        {
          if (*v80 != v31)
          {
            objc_enumerationMutation(v68);
          }

          v34 = *(*(&v79 + 1) + 8 * j);
          uniqueIdentifiersOfAttachmentsFoundInNotes2 = [(ICSearchQueryOperation *)self uniqueIdentifiersOfAttachmentsFoundInNotes];
          uniqueIdentifier2 = [v34 uniqueIdentifier];
          v37 = [uniqueIdentifiersOfAttachmentsFoundInNotes2 objectForKeyedSubscript:uniqueIdentifier2];

          v38 = 0.0;
          obja = v37;
          if (!v37)
          {
            goto LABEL_39;
          }

          v71 = j;
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v39 = v37;
          v40 = [v39 countByEnumeratingWithState:&v75 objects:v87 count:16];
          if (!v40)
          {

LABEL_39:
            v55 = MEMORY[0x277CBEAC0];
            searchString = [(ICSearchQueryOperation *)self searchString];
            keyboardLanguage = [(ICSearchQueryOperation *)self keyboardLanguage];
            v42 = [v55 highlightInfoForSearchStringWithPrefixMatchInAllFields:searchString language:keyboardLanguage];

            goto LABEL_40;
          }

          v41 = v40;
          v69 = v34;
          v42 = 0;
          v43 = *v76;
          do
          {
            v44 = 0;
            v45 = v42;
            do
            {
              if (*v76 != v43)
              {
                objc_enumerationMutation(v39);
              }

              v46 = *(*(&v75 + 1) + 8 * v44);
              resultsDictionary2 = [(ICSearchQueryOperation *)self resultsDictionary];
              v48 = [resultsDictionary2 objectForKeyedSubscript:v46];
              [v48 rankingScore];
              v50 = v49;

              if (v38 < v50)
              {
                v38 = v50;
              }

              v51 = MEMORY[0x277CBEAC0];
              resultsDictionary3 = [(ICSearchQueryOperation *)self resultsDictionary];
              v53 = [resultsDictionary3 objectForKeyedSubscript:v46];
              highlightInfo = [v53 highlightInfo];
              v42 = [v51 mergeHighlightInfo:v45 withHighlighInfo:highlightInfo];

              self = selfCopy;
              ++v44;
              v45 = v42;
            }

            while (v41 != v44);
            v41 = [v39 countByEnumeratingWithState:&v75 objects:v87 count:16];
          }

          while (v41);

          v31 = v66;
          v30 = v67;
          v32 = 0x278192000;
          j = v71;
          v34 = v69;
          if (!v42)
          {
            goto LABEL_39;
          }

LABEL_40:
          v58 = [objc_alloc(*(v32 + 3936)) initWithSearchableItem:v34 highlightInfo:v42 rankingScore:obja attachmentUniqueIdentifiers:v38];
          resultsDictionary4 = [(ICSearchQueryOperation *)self resultsDictionary];
          uniqueIdentifier3 = [v34 uniqueIdentifier];
          [resultsDictionary4 setObject:v58 forKeyedSubscript:uniqueIdentifier3];

          [v30 addObject:v58];
        }

        v70 = [v68 countByEnumeratingWithState:&v79 objects:v88 count:16];
        if (!v70)
        {
LABEL_42:

          v29 = v62;
          break;
        }
      }
    }

    v24 = v65;
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (id)runICSearchQuery:(id)query
{
  queryCopy = query;
  if (!queryCopy)
  {
    v5 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [ICSearchQueryOperation runICSearchQuery:];
    }

    goto LABEL_11;
  }

  if ([(ICSearchQueryOperation *)self isCancelled])
  {
    v5 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [ICSearchQueryOperation runICSearchQuery:];
    }

LABEL_11:
    v6 = 0;
    goto LABEL_12;
  }

  [queryCopy run:0];
  if (([queryCopy wasForceStopped] & 1) != 0 || -[ICSearchQueryOperation isCancelled](self, "isCancelled"))
  {
    v5 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [ICSearchQueryOperation runICSearchQuery:];
    }

    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v8 = ICDynamicCast();
    topHits = [v8 topHits];
    [(ICSearchQueryOperation *)self processTopHits:topHits];
  }

  queryResults = [queryCopy queryResults];
  v11 = MEMORY[0x277CBEB58];
  allKeys = [queryResults allKeys];
  v13 = [v11 setWithArray:allKeys];

  v14 = MEMORY[0x277CBEB98];
  resultsDictionary = [(ICSearchQueryOperation *)self resultsDictionary];
  allKeys2 = [resultsDictionary allKeys];
  v17 = [v14 setWithArray:allKeys2];

  [v13 minusSet:v17];
  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __43__ICSearchQueryOperation_runICSearchQuery___block_invoke;
  v29 = &unk_278197B00;
  v5 = queryResults;
  v30 = v5;
  v31 = queryCopy;
  selfCopy = self;
  v19 = v18;
  v33 = v19;
  [v13 enumerateObjectsUsingBlock:&v26];
  if ([v19 count])
  {
    v20 = [(ICSearchQueryOperation *)self retrieveNotesOfFoundAttachmentsForSearchResults:v19];
    [v19 addObjectsFromArray:v20];
  }

  v21 = [ICSortableSearchableItem sortDescriptorsForRankingStrategy:[(ICSearchQueryOperation *)self rankingStrategy]];
  v22 = [v19 sortedArrayUsingDescriptors:v21];

  [(ICSearchQueryOperation *)self appendSortableSearchableItemsToResults:v22];
  if ([(ICSearchQueryOperation *)self isCancelled])
  {
    v23 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [ICSearchQueryOperation runICSearchQuery:];
    }

    v6 = 0;
  }

  else
  {
    foundItemsHandler = [(ICSearchQueryOperation *)self foundItemsHandler];

    if (foundItemsHandler)
    {
      foundItemsHandler2 = [(ICSearchQueryOperation *)self foundItemsHandler];
      (foundItemsHandler2)[2](foundItemsHandler2, v22, 0);
    }

    v6 = [v19 copy];
  }

LABEL_12:

  return v6;
}

void __43__ICSearchQueryOperation_runICSearchQuery___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v14 = [v3 objectForKeyedSubscript:v4];
  v5 = [*(a1 + 40) rankingQueriesDefinition];
  [v5 rankingScoreForSearchableItem:v14];
  v7 = v6;

  v8 = [ICSortableSearchableItem alloc];
  v9 = [*(a1 + 48) searchString];
  v10 = [*(a1 + 40) rankingQueriesDefinition];
  v11 = [*(a1 + 48) keyboardLanguage];
  v12 = [(ICSortableSearchableItem *)v8 initWithSearchableItem:v14 searchString:v9 rankingQueriesDefinition:v10 rankingScore:0 attachmentUniqueIdentifiers:v11 language:v7];

  v13 = [*(a1 + 48) resultsDictionary];
  [v13 setValue:v12 forKey:v4];

  [*(a1 + 56) addObject:v12];
}

- (void)cancel
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = os_log_create("com.apple.notes", "SearchIndexer");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [ICSearchQueryOperation cancel];
  }

  v13.receiver = self;
  v13.super_class = ICSearchQueryOperation;
  [(ICSearchQueryOperation *)&v13 cancel];
  [(ICSearchQuery *)self->_topHitQuery cancel];
  [(ICSearchQuery *)self->_defaultQuery cancel];
  [(ICSearchQuery *)self->_fuzzyQuery cancel];
  [(ICSearchQuery *)self->_substringQuery cancel];
  [(ICSearchQuery *)self->_nlQuery cancel];
  [(ICSearchQuery *)self->_spellingQuery cancel];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  relatedWordQueries = [(ICSearchQueryOperation *)self relatedWordQueries];
  v5 = [relatedWordQueries countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(relatedWordQueries);
        }

        [*(*(&v9 + 1) + 8 * v8++) cancel];
      }

      while (v6 != v8);
      v6 = [relatedWordQueries countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }
}

+ (id)exactMatchingQueryStringForTitleSearchString:(id)string
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = @"_ICItemDisplayName";
  v3 = MEMORY[0x277CBEA60];
  stringCopy = string;
  v5 = [v3 arrayWithObjects:&v8 count:1];
  v6 = [ICSearchQueryParser queryStringForSearchString:stringCopy queryFields:v5 matchType:0, v8, v9];

  return v6;
}

+ (id)prefixMatchingQueryStringTitleForSearchString:(id)string
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = @"_ICItemDisplayName";
  v3 = MEMORY[0x277CBEA60];
  stringCopy = string;
  v5 = [v3 arrayWithObjects:&v8 count:1];
  v6 = [ICSearchQueryParser queryStringForSearchString:stringCopy queryFields:v5 matchType:1, v8, v9];

  return v6;
}

+ (id)nlpSerialQueue
{
  if (nlpSerialQueue_createSerialQueueToken != -1)
  {
    +[ICSearchQueryOperation nlpSerialQueue];
  }

  v3 = nlpSerialQueue_nlpQueue;

  return v3;
}

void __40__ICSearchQueryOperation_nlpSerialQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.notes.nlpParser", v2);
  v1 = nlpSerialQueue_nlpQueue;
  nlpSerialQueue_nlpQueue = v0;
}

+ (void)nlpParser
{
  if (nlpParser_createParserToken != -1)
  {
    +[ICSearchQueryOperation nlpParser];
  }

  return nlpParser_nlpParser;
}

void __35__ICSearchQueryOperation_nlpParser__block_invoke(double a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  Helper_x8__kNLSearchParserContextIdentifierKey = gotLoadHelper_x8__kNLSearchParserContextIdentifierKey(a1);
  v5 = **(v2 + 2120);
  v6[0] = @"com.apple.Notes";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:{1, Helper_x8__kNLSearchParserContextIdentifierKey}];
  nlpParser_nlpParser = NLSearchParserCreate_delayInitStub(v4);
}

+ (void)nlSearchQueryWithSearchString:(id)string queryString:(id *)queryString rankingQueries:(id *)queries highlightString:(id *)highlightString
{
  v50 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (!queryString)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"queryStringResult != ((void*)0)" functionName:"+[ICSearchQueryOperation nlSearchQueryWithSearchString:queryString:rankingQueries:highlightString:]" simulateCrash:1 showAlert:0 format:@"queryStringResult is NULL. It cannot be NULL otherwise we don't have the result returned."];
  }

  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__35;
  v47 = __Block_byref_object_dispose__35;
  v48 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__35;
  v41 = __Block_byref_object_dispose__35;
  v42 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__35;
  v35 = __Block_byref_object_dispose__35;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v10 = +[ICSearchQueryOperation nlpSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__ICSearchQueryOperation_nlSearchQueryWithSearchString_queryString_rankingQueries_highlightString___block_invoke;
  block[3] = &unk_278197B28;
  v11 = stringCopy;
  v26 = queries != 0;
  v21 = v11;
  v22 = &v43;
  v23 = &v37;
  v24 = &v31;
  v25 = &v27;
  dispatch_sync(v10, block);

  if (*(v28 + 6))
  {
    v12 = v44[5];
    if (queries)
    {
      v13 = [v38[5] keysSortedByValueUsingComparator:&__block_literal_global_96];
      v14 = [v13 mutableCopy];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
    v12 = 0;
  }

  v15 = v12;
  *queryString = v12;
  *highlightString = [self highlightStringForAttributedInputs:v32[5]];
  if (queries)
  {
    v16 = v14;
    *queries = v14;
  }

  v17 = os_log_create("com.apple.notes", "NLP");
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
  if (v12)
  {
    if (v18)
    {
      +[ICSearchQueryOperation nlSearchQueryWithSearchString:queryString:rankingQueries:highlightString:].cold.1(v49, [v11 hash], objc_msgSend(v11, "length"));
    }
  }

  else if (v18)
  {
    +[ICSearchQueryOperation nlSearchQueryWithSearchString:queryString:rankingQueries:highlightString:].cold.2(v49, [v11 hash], objc_msgSend(v11, "length"));
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);
}

void __99__ICSearchQueryOperation_nlSearchQueryWithSearchString_queryString_rankingQueries_highlightString___block_invoke(void *a1)
{
  if (+[ICSearchQueryOperation nlpParser])
  {
    NLSearchParserSetString_delayInitStub(v2);
    inited = NLSearchParserCopyParseWithOptions_delayInitStub(v3);
    if (inited)
    {
      v6 = inited;
      v7 = NLSearchParseCandidateCopyDescription_delayInitStub(v5);
      v8 = *(a1[5] + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v11 = NLSearchParseCandidateCopyRankTerms_delayInitStub(v10);
      v12 = *(a1[6] + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      v15 = NLSearchParseCandidateCopyAttributedInput_delayInitStub(v14);
      v16 = *(a1[7] + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      *(*(a1[8] + 8) + 24) = NLSearchParseGetConfidence_delayInitStub(v18);

      CFRelease(v6);
    }
  }
}

uint64_t __99__ICSearchQueryOperation_nlSearchQueryWithSearchString_queryString_rankingQueries_highlightString___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 intValue];
  if (v6 == [v5 intValue])
  {
    v7 = 0;
  }

  else
  {
    v8 = [v4 intValue];
    if (v8 < [v5 intValue])
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

+ (id)highlightStringForAttributedInputs:(id)inputs
{
  v3 = MEMORY[0x277CBEB58];
  inputsCopy = inputs;
  v5 = objc_alloc_init(v3);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__ICSearchQueryOperation_highlightStringForAttributedInputs___block_invoke;
  v10[3] = &unk_278197B98;
  v6 = v5;
  v11 = v6;
  [inputsCopy enumerateObjectsUsingBlock:v10];

  if ([v6 count])
  {
    allObjects = [v6 allObjects];
    v8 = [allObjects componentsJoinedByString:@" "];
  }

  else
  {
    v8 = &stru_2827172C0;
  }

  return v8;
}

void __61__ICSearchQueryOperation_highlightStringForAttributedInputs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = ICCheckedDynamicCast();

  v5 = [v4 length];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__ICSearchQueryOperation_highlightStringForAttributedInputs___block_invoke_2;
  v9[3] = &unk_278197B70;
  v10 = *(a1 + 32);
  [v4 enumerateAttribute:@"kMDUserQueryTopicKey" inRange:0 options:v5 usingBlock:{0, v9}];
  v6 = [v4 length];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__ICSearchQueryOperation_highlightStringForAttributedInputs___block_invoke_3;
  v7[3] = &unk_278197B70;
  v8 = *(a1 + 32);
  [v4 enumerateAttribute:@"kMDUserQueryTitleKey" inRange:0 options:v6 usingBlock:{0, v7}];
}

void __61__ICSearchQueryOperation_highlightStringForAttributedInputs___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v5 = ICCheckedDynamicCast();

  v4 = v5;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
    v4 = v5;
  }
}

void __61__ICSearchQueryOperation_highlightStringForAttributedInputs___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v5 = ICCheckedDynamicCast();

  v4 = v5;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
    v4 = v5;
  }
}

+ (id)newOperationQueueWithName:(id)name
{
  v3 = MEMORY[0x277CCABD8];
  nameCopy = name;
  v5 = objc_alloc_init(v3);
  [v5 setName:nameCopy];

  [v5 setMaxConcurrentOperationCount:1];
  [v5 setQualityOfService:25];
  return v5;
}

+ (id)searchableItemsFromSortableItems:(id)items
{
  v18 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = itemsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        searchableItem = [*(*(&v13 + 1) + 8 * i) searchableItem];
        [v4 addObject:searchableItem];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

+ (id)tokensQueryStringFromTokens:(id)tokens
{
  v3 = [tokens ic_compactMap:&__block_literal_global_113];
  if ([v3 count])
  {
    v4 = [v3 componentsJoinedByString:@" && "];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id __54__ICSearchQueryOperation_tokensQueryStringFromTokens___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 subQueryString];

  if (v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [v2 subQueryString];
    v3 = [v4 stringWithFormat:@"(%@)", v5];
  }

  return v3;
}

+ (id)fetchModernNoteSearchableItemAttributesFromCoreDataForObjectIDURIs:(id)is context:(id)context
{
  isCopy = is;
  contextCopy = context;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __101__ICSearchQueryOperation_fetchModernNoteSearchableItemAttributesFromCoreDataForObjectIDURIs_context___block_invoke;
  v18[3] = &unk_278197BE0;
  v8 = contextCopy;
  v19 = v8;
  v9 = [isCopy ic_compactMap:v18];
  if ([v9 count])
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __101__ICSearchQueryOperation_fetchModernNoteSearchableItemAttributesFromCoreDataForObjectIDURIs_context___block_invoke_2;
    v13[3] = &unk_278195AC8;
    v14 = v9;
    v15 = v8;
    v16 = isCopy;
    v10 = v7;
    v17 = v10;
    [v15 performBlockAndWait:v13];
    v11 = [v10 copy];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

id __101__ICSearchQueryOperation_fetchModernNoteSearchableItemAttributesFromCoreDataForObjectIDURIs_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 persistentStoreCoordinator];
  v5 = [v4 ic_managedObjectIDForURIString:v3];

  return v5;
}

void __101__ICSearchQueryOperation_fetchModernNoteSearchableItemAttributesFromCoreDataForObjectIDURIs_context___block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"ICNote"];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self IN %@", *(a1 + 32)];
  [v2 setPredicate:v3];

  [v2 setResultType:2];
  [v2 setPropertiesToFetch:&unk_282748018];
  v25 = a1;
  v4 = *(a1 + 40);
  v31 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v31];
  v6 = v31;
  if (v6)
  {
    obj = os_log_create("com.apple.notes", "Media");
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      __101__ICSearchQueryOperation_fetchModernNoteSearchableItemAttributesFromCoreDataForObjectIDURIs_context___block_invoke_2_cold_1(v25, obj);
    }
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v7)
    {
      v8 = v7;
      v23 = v5;
      v24 = v2;
      v9 = *v28;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v28 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v27 + 1) + 8 * i);
          objc_opt_class();
          v12 = [v11 objectForKeyedSubscript:@"objectID"];
          v13 = ICCheckedDynamicCast();
          v14 = [v13 URIRepresentation];
          v15 = [v14 absoluteString];

          objc_opt_class();
          v16 = [v11 objectForKeyedSubscript:@"modificationDate"];
          v17 = ICCheckedDynamicCast();

          if (v15)
          {
            v18 = v17 == 0;
          }

          else
          {
            v18 = 1;
          }

          if (!v18)
          {
            v19 = [objc_alloc(MEMORY[0x277CC34B8]) initWithItemContentType:@"com.apple.notes.spotlightrecord"];
            [v19 setIc_dataSourceIdentifier:@"Modern"];
            [v19 setIc_searchResultType:0];
            [v19 setContentModificationDate:v17];
            objc_opt_class();
            v20 = [v11 objectForKeyedSubscript:@"folder.account.identifier"];
            v21 = ICDynamicCast();
            [v19 setDomainIdentifier:v21];

            v22 = objc_alloc_init(MEMORY[0x277CC34B0]);
            [v22 setAttributeSet:v19];
            [v22 setUniqueIdentifier:v15];
            [*(v25 + 56) addObject:v22];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v8);
      v5 = v23;
      v2 = v24;
      v6 = 0;
    }
  }
}

+ (NSOperationQueue)searchSuggestionsQueue
{
  if (qword_27CA416A8 != -1)
  {
    swift_once();
  }

  v3 = qword_27CA43C40;

  return v3;
}

+ (void)suggestionSearchResultsWithLinkSuggestionQuery:(ICLinkSuggestionQuery *)query completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = query;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_2150A5120();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_2150C8ED0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2150C8AD0;
  v14[5] = v13;
  queryCopy = query;
  sub_21501779C(0, 0, v9, &unk_2150C8AD8, v14);
}

void __101__ICSearchQueryOperation_fetchModernNoteSearchableItemAttributesFromCoreDataForObjectIDURIs_context___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "error fetching attributes for identifiers:%@", &v3, 0xCu);
}

@end