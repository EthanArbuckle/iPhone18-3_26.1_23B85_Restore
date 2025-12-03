@interface _CNAutocompleteCoreDuetPredictionSearchStrategyTask
+ (id)constrainMechanismsForSearchType:(unint64_t)type;
+ (int64_t)_addressTypeFromHandle:(id)handle;
+ (void)configureContext:(id)context withFetchRequest:(id)request;
+ (void)configureSettings:(id)settings withFetchRequest:(id)request;
- (_CNAutocompleteCoreDuetPredictionSearchStrategyTask)initWithRequest:(id)request contactStore:(id)store;
- (id)resultValueForCDContact:(id)contact;
- (id)run:(id *)run;
- (id)suggesterContextForFetchRequest:(id)request;
- (id)suggesterSettingsForFetchRequest:(id)request;
- (int64_t)addressTypeForCDContact:(id)contact;
- (void)convertResults;
- (void)prepareQuery;
- (void)runQuery;
@end

@implementation _CNAutocompleteCoreDuetPredictionSearchStrategyTask

- (_CNAutocompleteCoreDuetPredictionSearchStrategyTask)initWithRequest:(id)request contactStore:(id)store
{
  requestCopy = request;
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = _CNAutocompleteCoreDuetPredictionSearchStrategyTask;
  v9 = [(CNTask *)&v13 initWithName:@"com.apple.contacts.autocomplete.prediction-search.cd"];
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
  [(_CNAutocompleteCoreDuetPredictionSearchStrategyTask *)self prepareQuery];
  [(_CNAutocompleteCoreDuetPredictionSearchStrategyTask *)self runQuery];
  [(_CNAutocompleteCoreDuetPredictionSearchStrategyTask *)self convertResults];
  results = self->_results;

  return results;
}

- (void)prepareQuery
{
  v3 = [(_CNAutocompleteCoreDuetPredictionSearchStrategyTask *)self suggesterContextForFetchRequest:self->_request];
  context = self->_context;
  self->_context = v3;

  v5 = [(_CNAutocompleteCoreDuetPredictionSearchStrategyTask *)self suggesterSettingsForFetchRequest:self->_request];
  settings = self->_settings;
  self->_settings = v5;

  MEMORY[0x2821F96F8]();
}

- (id)suggesterContextForFetchRequest:(id)request
{
  v3 = MEMORY[0x277CFE0E8];
  requestCopy = request;
  currentContext = [v3 currentContext];
  [objc_opt_class() configureContext:currentContext withFetchRequest:requestCopy];

  return currentContext;
}

+ (void)configureContext:(id)context withFetchRequest:(id)request
{
  v5 = MEMORY[0x277CBEB98];
  requestCopy = request;
  contextCopy = context;
  fetchContext = [requestCopy fetchContext];
  otherAddressesAlreadyChosen = [fetchContext otherAddressesAlreadyChosen];
  v10 = [v5 setWithArray:otherAddressesAlreadyChosen];
  [contextCopy setSeedContactIdentifiers:v10];

  fetchContext2 = [requestCopy fetchContext];
  title = [fetchContext2 title];
  [contextCopy setTitle:title];

  fetchContext3 = [requestCopy fetchContext];
  locationUUID = [fetchContext3 locationUUID];
  [contextCopy setLocationUUID:locationUUID];

  fetchContext4 = [requestCopy fetchContext];
  date = [fetchContext4 date];
  [contextCopy setDate:date];

  searchString = [requestCopy searchString];

  [contextCopy setContactPrefix:searchString];
}

- (id)suggesterSettingsForFetchRequest:(id)request
{
  v3 = MEMORY[0x277CFE0F0];
  requestCopy = request;
  defaultSettings = [v3 defaultSettings];
  [objc_opt_class() configureSettings:defaultSettings withFetchRequest:requestCopy];

  return defaultSettings;
}

+ (void)configureSettings:(id)settings withFetchRequest:(id)request
{
  settingsCopy = settings;
  requestCopy = request;
  v7 = *MEMORY[0x277CFBD30];
  fetchContext = [requestCopy fetchContext];
  sendingAddressAccountIdentifier = [fetchContext sendingAddressAccountIdentifier];
  v10 = (*(v7 + 16))(v7, sendingAddressAccountIdentifier);

  if ((v10 & 1) == 0)
  {
    v11 = MEMORY[0x277CBEB98];
    fetchContext2 = [requestCopy fetchContext];
    sendingAddressAccountIdentifier2 = [fetchContext2 sendingAddressAccountIdentifier];
    v14 = [v11 setWithObject:sendingAddressAccountIdentifier2];
    [settingsCopy setConstrainAccounts:v14];
  }

  fetchContext3 = [requestCopy fetchContext];
  domainIdentifier = [fetchContext3 domainIdentifier];
  v17 = (*(v7 + 16))(v7, domainIdentifier);

  if ((v17 & 1) == 0)
  {
    v18 = MEMORY[0x277CBEB98];
    fetchContext4 = [requestCopy fetchContext];
    domainIdentifier2 = [fetchContext4 domainIdentifier];
    v21 = [v18 setWithObject:domainIdentifier2];
    [settingsCopy setConstrainDomainIdentifiers:v21];
  }

  v22 = [self constrainMechanismsForSearchType:{objc_msgSend(requestCopy, "searchType")}];
  [settingsCopy setConstrainMechanisms:v22];

  fetchContext5 = [requestCopy fetchContext];
  [settingsCopy setRequireOutgoingInteraction:{objc_msgSend(fetchContext5, "predictsBasedOnOutgoingInteraction")}];

  searchString = [requestCopy searchString];
  v25 = (*(v7 + 16))(v7, searchString);

  if (v25)
  {
    v26 = +[CNAutocompletePredictionSearch predictedResultLimit];
    if (v26)
    {
      [settingsCopy setMaxNumberOfPeopleSuggested:v26];
    }
  }

  fetchContext6 = [requestCopy fetchContext];
  bundleIdentifiers = [fetchContext6 bundleIdentifiers];

  if (bundleIdentifiers)
  {
    v29 = MEMORY[0x277CBEB98];
    fetchContext7 = [requestCopy fetchContext];
    bundleIdentifiers2 = [fetchContext7 bundleIdentifiers];
    v32 = [v29 setWithArray:bundleIdentifiers2];
    [settingsCopy setConstrainBundleIds:v32];
  }

  if ([requestCopy searchType] == 3)
  {
    [settingsCopy setUseFuture:1];
  }
}

+ (id)constrainMechanismsForSearchType:(unint64_t)type
{
  if (type <= 2)
  {
    if (!type)
    {
      [MEMORY[0x277CBEB98] setWithObjects:{&unk_282793598, 0, v4, v5}];
      goto LABEL_11;
    }

    if (type != 1)
    {
      if (type != 2)
      {
        goto LABEL_12;
      }

      [MEMORY[0x277CBEB98] setWithObjects:{&unk_2827935F8, &unk_282793610, &unk_282793628, 0}];
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (type - 4 < 2)
  {
LABEL_7:
    [MEMORY[0x277CBEB98] setWithObjects:{&unk_2827935B0, &unk_2827935C8, &unk_2827935E0, 0}];
    goto LABEL_11;
  }

  if (type != 3)
  {
    goto LABEL_12;
  }

  [MEMORY[0x277CBEB98] setWithObjects:{&unk_282793580, 0, v4, v5}];
  self = LABEL_11:;
LABEL_12:

  return self;
}

- (void)runQuery
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = CNALoggingContextTriage();
  v4 = os_signpost_id_generate(v3);

  v5 = CNALoggingContextPerformance();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2155FE000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "Searching CoreDuet", "", buf, 2u);
  }

  currentEnvironment = [MEMORY[0x277CFBE10] currentEnvironment];
  cdPeopleSuggester = [currentEnvironment cdPeopleSuggester];
  context = self->_context;
  settings = self->_settings;
  v20 = 0;
  v11 = [cdPeopleSuggester suggestPeopleWithContext:context settings:settings error:&v20];
  v12 = v20;

  v13 = CNALoggingContextPerformance();
  v14 = v13;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2155FE000, v14, OS_SIGNPOST_INTERVAL_END, v4, "Searching CoreDuet", "", buf, 2u);
  }

  if (v11)
  {
    v15 = v11;
    suggestions = self->_suggestions;
    self->_suggestions = v15;
  }

  else
  {
    v17 = CNALoggingContextTriage();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      triageIdentifier = [(CNAutocompleteFetchRequest *)self->_request triageIdentifier];
      *buf = 138543618;
      v22 = triageIdentifier;
      v23 = 2114;
      v24 = v12;
      _os_log_impl(&dword_2155FE000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Error searching CoreDuet: %{public}@", buf, 0x16u);
    }

    suggestions = self->_suggestions;
    self->_suggestions = MEMORY[0x277CBEBF8];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)convertResults
{
  priorityDomainForSorting = [(CNAutocompleteFetchRequest *)self->_request priorityDomainForSorting];
  fetchContext = [(CNAutocompleteFetchRequest *)self->_request fetchContext];
  sendingAddress = [fetchContext sendingAddress];
  v6 = [CNAutocompleteResultFactory factoryWithPriorityDomain:priorityDomainForSorting sendingAddress:sendingAddress];

  v7 = objc_alloc(MEMORY[0x277CBEB58]);
  fetchContext2 = [(CNAutocompleteFetchRequest *)self->_request fetchContext];
  otherAddressesAlreadyChosen = [fetchContext2 otherAddressesAlreadyChosen];
  v10 = otherAddressesAlreadyChosen;
  if (otherAddressesAlreadyChosen)
  {
    v11 = otherAddressesAlreadyChosen;
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  v12 = [v7 initWithArray:v11];

  suggestions = self->_suggestions;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __69___CNAutocompleteCoreDuetPredictionSearchStrategyTask_convertResults__block_invoke;
  v18[3] = &unk_2781C4DC8;
  v19 = v12;
  selfCopy = self;
  v21 = v6;
  v14 = v6;
  v15 = v12;
  v16 = [(NSArray *)suggestions _cn_compactMap:v18];
  results = self->_results;
  self->_results = v16;
}

- (id)resultValueForCDContact:(id)contact
{
  contactCopy = contact;
  v5 = objc_alloc_init(CNAutocompleteResultValue);
  identifier = [contactCopy identifier];
  [(CNAutocompleteResultValue *)v5 setAddress:identifier];

  v7 = [(_CNAutocompleteCoreDuetPredictionSearchStrategyTask *)self addressTypeForCDContact:contactCopy];
  [(CNAutocompleteResultValue *)v5 setAddressType:v7];

  return v5;
}

- (int64_t)addressTypeForCDContact:(id)contact
{
  v18 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  type = [contactCopy type];
  if ((type - 1) >= 3)
  {
    v6 = type;
    v7 = CNALoggingContextDebug();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&dword_2155FE000, v7, OS_LOG_TYPE_DEFAULT, "Unrecognized identifier type from duet: %@", &v16, 0xCu);
    }

    standardPreferences = [MEMORY[0x277CFBEE8] standardPreferences];
    v10 = [standardPreferences userHasOptedInToPreference:@"CNGuessDuetIdentifierEnabledInAutocomplete"];

    if (v10)
    {
      identifier = [contactCopy identifier];
      v12 = CNALoggingContextDebug();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = identifier;
        _os_log_impl(&dword_2155FE000, v12, OS_LOG_TYPE_DEFAULT, "No luck with the type, let's infer it from the handle (%@)", &v16, 0xCu);
      }

      v5 = [objc_opt_class() _addressTypeFromHandle:identifier];
    }

    else
    {
      v13 = CNALoggingContextDebug();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_2155FE000, v13, OS_LOG_TYPE_DEFAULT, "Returning none address type", &v16, 2u);
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = qword_21565C260[type - 1];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (int64_t)_addressTypeFromHandle:(id)handle
{
  v17[1] = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v4 = MEMORY[0x277CFBE30];
  v17[0] = handleCopy;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v6 = [v4 classificationOfHandleStrings:v5];

  phoneNumbers = [v6 phoneNumbers];
  v8 = [phoneNumbers count];

  if (v8)
  {
    v9 = 2;
  }

  else
  {
    emailAddresses = [v6 emailAddresses];
    v11 = [emailAddresses count];

    if (v11)
    {
      v9 = 1;
    }

    else
    {
      v12 = CNALoggingContextDebug();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = handleCopy;
        _os_log_impl(&dword_2155FE000, v12, OS_LOG_TYPE_DEFAULT, "Unrecognized handle from duet: %@", &v15, 0xCu);
      }

      v9 = 0;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

@end