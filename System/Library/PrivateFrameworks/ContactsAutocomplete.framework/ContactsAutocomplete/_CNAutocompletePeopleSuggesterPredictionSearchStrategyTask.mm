@interface _CNAutocompletePeopleSuggesterPredictionSearchStrategyTask
+ (id)_fallbackIdentifierByAssemblingDistinctValuesFromGroupResultSuggestion:(id)suggestion;
+ (id)_identifierForGroupResultSuggestion:(id)suggestion;
+ (int64_t)_addressTypeFromHandle:(id)handle;
- (_CNAutocompletePeopleSuggesterPredictionSearchStrategyTask)initWithRequest:(id)request contactStore:(id)store;
- (id)run:(id *)run;
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

  currentEnvironment = [MEMORY[0x277CFBE10] currentEnvironment];
  mainBundleIdentifier = [currentEnvironment mainBundleIdentifier];
  [(_PSPredictionContext *)self->_context setBundleID:mainBundleIdentifier];

  fetchContext = [(CNAutocompleteFetchRequest *)self->_request fetchContext];
  sendingAddressAccountIdentifier = [fetchContext sendingAddressAccountIdentifier];
  [(_PSPredictionContext *)self->_context setAccountIdentifier:sendingAddressAccountIdentifier];

  searchString = [(CNAutocompleteFetchRequest *)self->_request searchString];
  [(_PSPredictionContext *)self->_context setSearchPrefix:searchString];

  fetchContext2 = [(CNAutocompleteFetchRequest *)self->_request fetchContext];
  otherAddressesAlreadyChosen = [fetchContext2 otherAddressesAlreadyChosen];
  [(_PSPredictionContext *)self->_context setSeedRecipients:otherAddressesAlreadyChosen];

  fetchContext3 = [(CNAutocompleteFetchRequest *)self->_request fetchContext];
  locationUUID = [fetchContext3 locationUUID];

  if (locationUUID)
  {
    fetchContext4 = [(CNAutocompleteFetchRequest *)self->_request fetchContext];
    locationUUID2 = [fetchContext4 locationUUID];
    v20[0] = locationUUID2;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    [(_PSPredictionContext *)self->_context setLocationUUIDs:v16];
  }

  fetchContext5 = [(CNAutocompleteFetchRequest *)self->_request fetchContext];
  date = [fetchContext5 date];
  [(_PSPredictionContext *)self->_context setSuggestionDate:date];

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

  currentEnvironment = [MEMORY[0x277CFBE10] currentEnvironment];
  peopleSuggester = [currentEnvironment peopleSuggester];
  v9 = [peopleSuggester autocompleteSearchResultsWithPredictionContext:self->_context];
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
  priorityDomainForSorting = [(CNAutocompleteFetchRequest *)self->_request priorityDomainForSorting];
  fetchContext = [(CNAutocompleteFetchRequest *)self->_request fetchContext];
  sendingAddress = [fetchContext sendingAddress];
  v6 = [CNAutocompleteResultFactory factoryWithPriorityDomain:priorityDomainForSorting sendingAddress:sendingAddress];

  v7 = objc_opt_new();
  searchString = [(CNAutocompleteFetchRequest *)self->_request searchString];
  if (searchString)
  {
    searchString2 = [(CNAutocompleteFetchRequest *)self->_request searchString];
    v10 = [searchString2 length] == 0;
  }

  else
  {
    v10 = 1;
  }

  bundleID = [(_PSPredictionContext *)self->_context bundleID];
  psResults = self->_psResults;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __76___CNAutocompletePeopleSuggesterPredictionSearchStrategyTask_convertResults__block_invoke;
  v18[3] = &unk_2781C4F78;
  v18[4] = self;
  v19 = v7;
  v22 = v10;
  v20 = v6;
  v21 = bundleID;
  v13 = bundleID;
  v14 = v6;
  v15 = v7;
  v16 = [(NSArray *)psResults _cn_compactMap:v18];
  results = self->_results;
  self->_results = v16;
}

- (_CNAutocompletePeopleSuggesterPredictionSearchStrategyTask)initWithRequest:(id)request contactStore:(id)store
{
  requestCopy = request;
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = _CNAutocompletePeopleSuggesterPredictionSearchStrategyTask;
  v9 = [(CNTask *)&v13 initWithName:@"com.apple.contacts.autocomplete.prediction-search.ps"];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, request);
    objc_storeStrong(&v10->_contactStore, store);
    v11 = v10;
  }

  return v10;
}

- (id)run:(id *)run
{
  [(_CNAutocompletePeopleSuggesterPredictionSearchStrategyTask *)self prepareQuery];
  [(_CNAutocompletePeopleSuggesterPredictionSearchStrategyTask *)self runQuery];
  [(_CNAutocompletePeopleSuggesterPredictionSearchStrategyTask *)self convertResults];
  results = self->_results;

  return results;
}

+ (int64_t)_addressTypeFromHandle:(id)handle
{
  v18[1] = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v4 = handleCopy;
  if (!handleCopy || ![handleCopy length])
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

  phoneNumbers = [v7 phoneNumbers];
  v9 = [phoneNumbers count];

  if (!v9)
  {
    emailAddresses = [v7 emailAddresses];
    v14 = [emailAddresses count];

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

+ (id)_identifierForGroupResultSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  conversationIdentifier = [suggestionCopy conversationIdentifier];
  if ((*(*MEMORY[0x277CFBD30] + 16))())
  {

    conversationIdentifier = [self _fallbackIdentifierByAssemblingDistinctValuesFromGroupResultSuggestion:suggestionCopy];
  }

  return conversationIdentifier;
}

+ (id)_fallbackIdentifierByAssemblingDistinctValuesFromGroupResultSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  array = [MEMORY[0x277CBEB18] array];
  groupName = [suggestionCopy groupName];
  v6 = [groupName length];

  if (v6)
  {
    groupName2 = [suggestionCopy groupName];
    [array addObject:groupName2];
  }

  recipients = [suggestionCopy recipients];
  v9 = [recipients _cn_compactMap:&__block_literal_global_26];

  [array addObjectsFromArray:v9];
  v10 = [array sortedArrayUsingSelector:sel_compare_];
  v11 = [v10 componentsJoinedByString:&stru_282787720];

  return v11;
}

@end