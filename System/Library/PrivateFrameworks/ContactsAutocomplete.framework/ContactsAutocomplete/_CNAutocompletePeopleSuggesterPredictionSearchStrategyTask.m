@interface _CNAutocompletePeopleSuggesterPredictionSearchStrategyTask
+ (id)_fallbackIdentifierByAssemblingDistinctValuesFromGroupResultSuggestion:(id)a3;
+ (id)_identifierForGroupResultSuggestion:(id)a3;
+ (int64_t)_addressTypeFromHandle:(id)a3;
- (_CNAutocompletePeopleSuggesterPredictionSearchStrategyTask)initWithRequest:(id)a3 contactStore:(id)a4;
- (id)run:(id *)a3;
- (void)convertResults;
- (void)prepareQuery;
- (void)runQuery;
@end

@implementation _CNAutocompletePeopleSuggesterPredictionSearchStrategyTask

- (void)prepareQuery
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(get_PSPredictionContextClass_0());
  context = self->_context;
  self->_context = v3;

  v5 = [MEMORY[0x277CFBE10] currentEnvironment];
  v6 = [v5 mainBundleIdentifier];
  [(_PSPredictionContext *)self->_context setBundleID:v6];

  v7 = [(CNAutocompleteFetchRequest *)self->_request fetchContext];
  v8 = [v7 sendingAddressAccountIdentifier];
  [(_PSPredictionContext *)self->_context setAccountIdentifier:v8];

  v9 = [(CNAutocompleteFetchRequest *)self->_request searchString];
  [(_PSPredictionContext *)self->_context setSearchPrefix:v9];

  v10 = [(CNAutocompleteFetchRequest *)self->_request fetchContext];
  v11 = [v10 otherAddressesAlreadyChosen];
  [(_PSPredictionContext *)self->_context setSeedRecipients:v11];

  v12 = [(CNAutocompleteFetchRequest *)self->_request fetchContext];
  v13 = [v12 locationUUID];

  if (v13)
  {
    v14 = [(CNAutocompleteFetchRequest *)self->_request fetchContext];
    v15 = [v14 locationUUID];
    v20[0] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    [(_PSPredictionContext *)self->_context setLocationUUIDs:v16];
  }

  v17 = [(CNAutocompleteFetchRequest *)self->_request fetchContext];
  v18 = [v17 date];
  [(_PSPredictionContext *)self->_context setSuggestionDate:v18];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)runQuery
{
  v3 = CNALoggingContextTriage();
  v4 = os_signpost_id_generate(v3);

  v5 = CNALoggingContextPerformance();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2155FE000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Searching PeopleSuggester", "", buf, 2u);
  }

  v7 = [MEMORY[0x277CFBE10] currentEnvironment];
  v8 = [v7 peopleSuggester];
  v9 = [v8 autocompleteSearchResultsWithPredictionContext:self->_context];
  psResults = self->_psResults;
  self->_psResults = v9;

  v11 = CNALoggingContextPerformance();
  v12 = v11;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_2155FE000, v12, OS_SIGNPOST_INTERVAL_END, v4, "Searching PeopleSuggester", "", v13, 2u);
  }
}

- (void)convertResults
{
  v3 = [(CNAutocompleteFetchRequest *)self->_request priorityDomainForSorting];
  v4 = [(CNAutocompleteFetchRequest *)self->_request fetchContext];
  v5 = [v4 sendingAddress];
  v6 = [CNAutocompleteResultFactory factoryWithPriorityDomain:v3 sendingAddress:v5];

  v7 = objc_opt_new();
  v8 = [(CNAutocompleteFetchRequest *)self->_request searchString];
  if (v8)
  {
    v9 = [(CNAutocompleteFetchRequest *)self->_request searchString];
    v10 = [v9 length] == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = [(_PSPredictionContext *)self->_context bundleID];
  psResults = self->_psResults;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __76___CNAutocompletePeopleSuggesterPredictionSearchStrategyTask_convertResults__block_invoke;
  v18[3] = &unk_2781C4F78;
  v18[4] = self;
  v19 = v7;
  v22 = v10;
  v20 = v6;
  v21 = v11;
  v13 = v11;
  v14 = v6;
  v15 = v7;
  v16 = [(NSArray *)psResults _cn_compactMap:v18];
  results = self->_results;
  self->_results = v16;
}

- (_CNAutocompletePeopleSuggesterPredictionSearchStrategyTask)initWithRequest:(id)a3 contactStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _CNAutocompletePeopleSuggesterPredictionSearchStrategyTask;
  v9 = [(CNTask *)&v13 initWithName:@"com.apple.contacts.autocomplete.prediction-search.ps"];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, a3);
    objc_storeStrong(&v10->_contactStore, a4);
    v11 = v10;
  }

  return v10;
}

- (id)run:(id *)a3
{
  [(_CNAutocompletePeopleSuggesterPredictionSearchStrategyTask *)self prepareQuery];
  [(_CNAutocompletePeopleSuggesterPredictionSearchStrategyTask *)self runQuery];
  [(_CNAutocompletePeopleSuggesterPredictionSearchStrategyTask *)self convertResults];
  results = self->_results;

  return results;
}

+ (int64_t)_addressTypeFromHandle:(id)a3
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (!v3 || ![v3 length])
  {
    v7 = CNALoggingContextDebug();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_2155FE000, v7, OS_LOG_TYPE_DEFAULT, "Skipping a PeopleSuggester prediction with a nil or empty handle.", &v16, 2u);
    }

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  v5 = MEMORY[0x277CFBE30];
  v18[0] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v7 = [v5 classificationOfHandleStrings:v6];

  v8 = [v7 phoneNumbers];
  v9 = [v8 count];

  if (!v9)
  {
    v13 = [v7 emailAddresses];
    v14 = [v13 count];

    if (v14)
    {
      v10 = 1;
      goto LABEL_8;
    }

    v15 = CNALoggingContextDebug();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v4;
      _os_log_impl(&dword_2155FE000, v15, OS_LOG_TYPE_DEFAULT, "Unrecognized handle from duet: %@", &v16, 0xCu);
    }

    goto LABEL_7;
  }

  v10 = 2;
LABEL_8:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (id)_identifierForGroupResultSuggestion:(id)a3
{
  v4 = a3;
  v5 = [v4 conversationIdentifier];
  if ((*(*MEMORY[0x277CFBD30] + 16))())
  {

    v5 = [a1 _fallbackIdentifierByAssemblingDistinctValuesFromGroupResultSuggestion:v4];
  }

  return v5;
}

+ (id)_fallbackIdentifierByAssemblingDistinctValuesFromGroupResultSuggestion:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [v3 groupName];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [v3 groupName];
    [v4 addObject:v7];
  }

  v8 = [v3 recipients];
  v9 = [v8 _cn_compactMap:&__block_literal_global_26];

  [v4 addObjectsFromArray:v9];
  v10 = [v4 sortedArrayUsingSelector:sel_compare_];
  v11 = [v10 componentsJoinedByString:&stru_282787720];

  return v11;
}

@end