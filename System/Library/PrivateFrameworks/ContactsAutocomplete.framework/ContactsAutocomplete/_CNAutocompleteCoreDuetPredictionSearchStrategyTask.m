@interface _CNAutocompleteCoreDuetPredictionSearchStrategyTask
+ (id)constrainMechanismsForSearchType:(unint64_t)a3;
+ (int64_t)_addressTypeFromHandle:(id)a3;
+ (void)configureContext:(id)a3 withFetchRequest:(id)a4;
+ (void)configureSettings:(id)a3 withFetchRequest:(id)a4;
- (_CNAutocompleteCoreDuetPredictionSearchStrategyTask)initWithRequest:(id)a3 contactStore:(id)a4;
- (id)resultValueForCDContact:(id)a3;
- (id)run:(id *)a3;
- (id)suggesterContextForFetchRequest:(id)a3;
- (id)suggesterSettingsForFetchRequest:(id)a3;
- (int64_t)addressTypeForCDContact:(id)a3;
- (void)convertResults;
- (void)prepareQuery;
- (void)runQuery;
@end

@implementation _CNAutocompleteCoreDuetPredictionSearchStrategyTask

- (_CNAutocompleteCoreDuetPredictionSearchStrategyTask)initWithRequest:(id)a3 contactStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = _CNAutocompleteCoreDuetPredictionSearchStrategyTask;
  v9 = [(CNTask *)&v13 initWithName:@"com.apple.contacts.autocomplete.prediction-search.cd"];
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

- (id)suggesterContextForFetchRequest:(id)a3
{
  v3 = MEMORY[0x277CFE0E8];
  v4 = a3;
  v5 = [v3 currentContext];
  [objc_opt_class() configureContext:v5 withFetchRequest:v4];

  return v5;
}

+ (void)configureContext:(id)a3 withFetchRequest:(id)a4
{
  v5 = MEMORY[0x277CBEB98];
  v6 = a4;
  v7 = a3;
  v8 = [v6 fetchContext];
  v9 = [v8 otherAddressesAlreadyChosen];
  v10 = [v5 setWithArray:v9];
  [v7 setSeedContactIdentifiers:v10];

  v11 = [v6 fetchContext];
  v12 = [v11 title];
  [v7 setTitle:v12];

  v13 = [v6 fetchContext];
  v14 = [v13 locationUUID];
  [v7 setLocationUUID:v14];

  v15 = [v6 fetchContext];
  v16 = [v15 date];
  [v7 setDate:v16];

  v17 = [v6 searchString];

  [v7 setContactPrefix:v17];
}

- (id)suggesterSettingsForFetchRequest:(id)a3
{
  v3 = MEMORY[0x277CFE0F0];
  v4 = a3;
  v5 = [v3 defaultSettings];
  [objc_opt_class() configureSettings:v5 withFetchRequest:v4];

  return v5;
}

+ (void)configureSettings:(id)a3 withFetchRequest:(id)a4
{
  v33 = a3;
  v6 = a4;
  v7 = *MEMORY[0x277CFBD30];
  v8 = [v6 fetchContext];
  v9 = [v8 sendingAddressAccountIdentifier];
  v10 = (*(v7 + 16))(v7, v9);

  if ((v10 & 1) == 0)
  {
    v11 = MEMORY[0x277CBEB98];
    v12 = [v6 fetchContext];
    v13 = [v12 sendingAddressAccountIdentifier];
    v14 = [v11 setWithObject:v13];
    [v33 setConstrainAccounts:v14];
  }

  v15 = [v6 fetchContext];
  v16 = [v15 domainIdentifier];
  v17 = (*(v7 + 16))(v7, v16);

  if ((v17 & 1) == 0)
  {
    v18 = MEMORY[0x277CBEB98];
    v19 = [v6 fetchContext];
    v20 = [v19 domainIdentifier];
    v21 = [v18 setWithObject:v20];
    [v33 setConstrainDomainIdentifiers:v21];
  }

  v22 = [a1 constrainMechanismsForSearchType:{objc_msgSend(v6, "searchType")}];
  [v33 setConstrainMechanisms:v22];

  v23 = [v6 fetchContext];
  [v33 setRequireOutgoingInteraction:{objc_msgSend(v23, "predictsBasedOnOutgoingInteraction")}];

  v24 = [v6 searchString];
  v25 = (*(v7 + 16))(v7, v24);

  if (v25)
  {
    v26 = +[CNAutocompletePredictionSearch predictedResultLimit];
    if (v26)
    {
      [v33 setMaxNumberOfPeopleSuggested:v26];
    }
  }

  v27 = [v6 fetchContext];
  v28 = [v27 bundleIdentifiers];

  if (v28)
  {
    v29 = MEMORY[0x277CBEB98];
    v30 = [v6 fetchContext];
    v31 = [v30 bundleIdentifiers];
    v32 = [v29 setWithArray:v31];
    [v33 setConstrainBundleIds:v32];
  }

  if ([v6 searchType] == 3)
  {
    [v33 setUseFuture:1];
  }
}

+ (id)constrainMechanismsForSearchType:(unint64_t)a3
{
  if (a3 <= 2)
  {
    if (!a3)
    {
      [MEMORY[0x277CBEB98] setWithObjects:{&unk_282793598, 0, v4, v5}];
      goto LABEL_11;
    }

    if (a3 != 1)
    {
      if (a3 != 2)
      {
        goto LABEL_12;
      }

      [MEMORY[0x277CBEB98] setWithObjects:{&unk_2827935F8, &unk_282793610, &unk_282793628, 0}];
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (a3 - 4 < 2)
  {
LABEL_7:
    [MEMORY[0x277CBEB98] setWithObjects:{&unk_2827935B0, &unk_2827935C8, &unk_2827935E0, 0}];
    goto LABEL_11;
  }

  if (a3 != 3)
  {
    goto LABEL_12;
  }

  [MEMORY[0x277CBEB98] setWithObjects:{&unk_282793580, 0, v4, v5}];
  a1 = LABEL_11:;
LABEL_12:

  return a1;
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

  v7 = [MEMORY[0x277CFBE10] currentEnvironment];
  v8 = [v7 cdPeopleSuggester];
  context = self->_context;
  settings = self->_settings;
  v20 = 0;
  v11 = [v8 suggestPeopleWithContext:context settings:settings error:&v20];
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
      v18 = [(CNAutocompleteFetchRequest *)self->_request triageIdentifier];
      *buf = 138543618;
      v22 = v18;
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
  v3 = [(CNAutocompleteFetchRequest *)self->_request priorityDomainForSorting];
  v4 = [(CNAutocompleteFetchRequest *)self->_request fetchContext];
  v5 = [v4 sendingAddress];
  v6 = [CNAutocompleteResultFactory factoryWithPriorityDomain:v3 sendingAddress:v5];

  v7 = objc_alloc(MEMORY[0x277CBEB58]);
  v8 = [(CNAutocompleteFetchRequest *)self->_request fetchContext];
  v9 = [v8 otherAddressesAlreadyChosen];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
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
  v20 = self;
  v21 = v6;
  v14 = v6;
  v15 = v12;
  v16 = [(NSArray *)suggestions _cn_compactMap:v18];
  results = self->_results;
  self->_results = v16;
}

- (id)resultValueForCDContact:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CNAutocompleteResultValue);
  v6 = [v4 identifier];
  [(CNAutocompleteResultValue *)v5 setAddress:v6];

  v7 = [(_CNAutocompleteCoreDuetPredictionSearchStrategyTask *)self addressTypeForCDContact:v4];
  [(CNAutocompleteResultValue *)v5 setAddressType:v7];

  return v5;
}

- (int64_t)addressTypeForCDContact:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 type];
  if ((v4 - 1) >= 3)
  {
    v6 = v4;
    v7 = CNALoggingContextDebug();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&dword_2155FE000, v7, OS_LOG_TYPE_DEFAULT, "Unrecognized identifier type from duet: %@", &v16, 0xCu);
    }

    v9 = [MEMORY[0x277CFBEE8] standardPreferences];
    v10 = [v9 userHasOptedInToPreference:@"CNGuessDuetIdentifierEnabledInAutocomplete"];

    if (v10)
    {
      v11 = [v3 identifier];
      v12 = CNALoggingContextDebug();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v11;
        _os_log_impl(&dword_2155FE000, v12, OS_LOG_TYPE_DEFAULT, "No luck with the type, let's infer it from the handle (%@)", &v16, 0xCu);
      }

      v5 = [objc_opt_class() _addressTypeFromHandle:v11];
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
    v5 = qword_21565C260[v4 - 1];
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

+ (int64_t)_addressTypeFromHandle:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MEMORY[0x277CFBE30];
  v17[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v6 = [v4 classificationOfHandleStrings:v5];

  v7 = [v6 phoneNumbers];
  v8 = [v7 count];

  if (v8)
  {
    v9 = 2;
  }

  else
  {
    v10 = [v6 emailAddresses];
    v11 = [v10 count];

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
        v16 = v3;
        _os_log_impl(&dword_2155FE000, v12, OS_LOG_TYPE_DEFAULT, "Unrecognized handle from duet: %@", &v15, 0xCu);
      }

      v9 = 0;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

@end