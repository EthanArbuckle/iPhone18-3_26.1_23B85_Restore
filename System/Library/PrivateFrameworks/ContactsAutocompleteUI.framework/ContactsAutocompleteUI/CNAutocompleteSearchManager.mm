@interface CNAutocompleteSearchManager
- (CNAutocompleteSearchManager)initWithAutocompleteSearchType:(unint64_t)a3;
- (CNAutocompleteSearchManager)initWithAutocompleteStore:(id)a3 searchType:(unint64_t)a4;
- (CNAutocompleteUIFetchDelegate)fetchDelegate;
- (id)searchForCorecipientsWithAutocompleteFetchContext:(id)a3 consumer:(id)a4;
- (id)searchForText:(id)a3 withAutocompleteFetchContext:(id)a4 consumer:(id)a5;
- (void)_handleContactsAutocompleteSearch:(id)a3 returnedResults:(id)a4 taskID:(id)a5;
- (void)_handleContactsAutocompleteSearchFinished:(id)a3 taskID:(id)a4;
- (void)_handleTaskFinished:(id)a3 context:(id)a4;
- (void)cancelTaskWithID:(id)a3;
- (void)dealloc;
- (void)didSelectRecipient:(id)a3 atIndex:(unint64_t)a4;
- (void)removeRecipientResult:(id)a3;
- (void)setShouldIncludeGroupResults:(BOOL)a3;
@end

@implementation CNAutocompleteSearchManager

- (CNAutocompleteSearchManager)initWithAutocompleteSearchType:(unint64_t)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E6996378]);
  v6 = [(CNAutocompleteSearchManager *)self initWithAutocompleteStore:v5 searchType:a3];

  return v6;
}

- (CNAutocompleteSearchManager)initWithAutocompleteStore:(id)a3 searchType:(unint64_t)a4
{
  v7 = a3;
  v19.receiver = self;
  v19.super_class = CNAutocompleteSearchManager;
  v8 = [(CNAutocompleteSearchManager *)&v19 init];
  v9 = v8;
  if (v8)
  {
    v8->_shouldUnifyResults = 1;
    v8->_searchTypes = 31;
    v10 = [MEMORY[0x1E696AAE8] mainBundle];
    v11 = [v10 bundleIdentifier];
    v12 = [v11 copy];
    recentsBundleIdentifier = v9->_recentsBundleIdentifier;
    v9->_recentsBundleIdentifier = v12;

    v9->_autocompleteSearchType = a4;
    objc_storeStrong(&v9->_autocompleteStore, a3);
    if (!v9->_queue)
    {
      v14 = objc_alloc_init(MEMORY[0x1E696ADC8]);
      queue = v9->_queue;
      v9->_queue = v14;

      [(NSOperationQueue *)v9->_queue setMaxConcurrentOperationCount:1];
      [(NSOperationQueue *)v9->_queue setQualityOfService:25];
    }

    if (!v9->_taskContextsByTaskID)
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
      taskContextsByTaskID = v9->_taskContextsByTaskID;
      v9->_taskContextsByTaskID = v16;
    }
  }

  return v9;
}

- (void)setShouldIncludeGroupResults:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  shouldIncludeGroupResultsImpl = self->_shouldIncludeGroupResultsImpl;
  self->_shouldIncludeGroupResultsImpl = v4;

  MEMORY[0x1EEE66BB8](v4, shouldIncludeGroupResultsImpl);
}

- (void)didSelectRecipient:(id)a3 atIndex:(unint64_t)a4
{
  autocompleteStore = self->_autocompleteStore;
  v6 = [a3 autocompleteResult];
  [(CNAutocompleteStore *)autocompleteStore userSelectedResult:v6 atSortedIndex:a4];
}

- (void)removeRecipientResult:(id)a3
{
  v4 = a3;
  if ([v4 isRemovableFromSearchResults])
  {
    v5 = [v4 autocompleteResult];
    if (v5)
    {
      autocompleteStore = self->_autocompleteStore;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __53__CNAutocompleteSearchManager_removeRecipientResult___block_invoke;
      v7[3] = &unk_1E7CD2930;
      v8 = v4;
      [(CNAutocompleteStore *)autocompleteStore ignoreResult:v5 completionHandler:v7];
    }
  }
}

void __53__CNAutocompleteSearchManager_removeRecipientResult___block_invoke(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = contactsSearchManagerLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1B8106000, v6, OS_LOG_TYPE_INFO, "removal of autocomplete recent %@ failed: %@", &v8, 0x16u);
    }
  }
}

- (id)searchForText:(id)a3 withAutocompleteFetchContext:(id)a4 consumer:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CNAutocompleteSearchManager *)self _nextTaskID];
  v12 = [CNContactsAutocompleteSearchOperation operationWithOwner:self text:v8 taskID:v11 autocompleteStore:self->_autocompleteStore];

  if (v12)
  {
    v13 = contactsSearchManagerLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v12 taskID];
      *buf = 138478083;
      v29 = v8;
      v30 = 2114;
      v31 = v14;
      _os_log_impl(&dword_1B8106000, v13, OS_LOG_TYPE_DEFAULT, "Beginning CNContactsAutocompleteSearchOperation for %{private}@ (task %{public}@)", buf, 0x16u);
    }

    v15 = contactsSearchManagerLog();
    v16 = [v12 taskID];
    v17 = [v16 unsignedIntegerValue];

    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B8106000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v17, "autocompleteTextSearch", "autocompleteSearch started", buf, 2u);
    }

    [v12 setShouldUnifyResults:{-[CNAutocompleteSearchManager shouldUnifyResults](self, "shouldUnifyResults")}];
    [v12 setShouldIncludeGroupResults:self->_shouldIncludeGroupResultsImpl];
    searchControllerOptions = self->_searchControllerOptions;
    if (searchControllerOptions)
    {
      [v12 setAddressableGroupResultStyle:{-[CNAutocompleteSearchControllerOptions addressableGroupResultStyle](searchControllerOptions, "addressableGroupResultStyle")}];
    }

    [v12 configureForSearchTypes:self->_searchTypes];
    [v12 setFetchContext:v9];
    [v12 setSimulateResults:{-[CNAutocompleteSearchManager isSimulatedResultsEnabled](self, "isSimulatedResultsEnabled")}];
    queue = self->_queue;
    v27 = v12;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
    [(NSOperationQueue *)queue addOperations:v20 waitUntilFinished:0];

    v21 = [MEMORY[0x1E695DFA8] setWithObject:v12];
    v22 = [CNAutocompleteContactsSearchTaskContext contextWithConsumer:v10 text:v8 operations:v21 searchQueries:0];

    if (v22)
    {
      taskContextsByTaskID = self->_taskContextsByTaskID;
      v24 = [v12 taskID];
      [(NSMutableDictionary *)taskContextsByTaskID setObject:v22 forKey:v24];
    }
  }

  v25 = [v12 taskID];

  return v25;
}

- (id)searchForCorecipientsWithAutocompleteFetchContext:(id)a3 consumer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CNAutocompleteSearchManager *)self _nextTaskID];
  v9 = [CNContactsAutocompleteSearchOperation operationWithOwner:self text:0 taskID:v8 autocompleteStore:self->_autocompleteStore];
  v10 = contactsSearchManagerLog();
  v11 = [v9 taskID];
  v12 = [v11 unsignedIntegerValue];

  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v22 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8106000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v12, "autocompleteCorecipientsSearch", "autocompleteSearch (corecipients) started", v22, 2u);
  }

  [v9 setShouldIncludeGroupResults:self->_shouldIncludeGroupResultsImpl];
  [v9 configureForSearchTypes:self->_searchTypes];
  [v9 setFetchContext:v6];
  [v9 setSimulateResults:{-[CNAutocompleteSearchManager isSimulatedResultsEnabled](self, "isSimulatedResultsEnabled")}];
  searchControllerOptions = self->_searchControllerOptions;
  if (searchControllerOptions)
  {
    [v9 setAddressableGroupResultStyle:{-[CNAutocompleteSearchControllerOptions addressableGroupResultStyle](searchControllerOptions, "addressableGroupResultStyle")}];
  }

  corecipientSearchTaskIDs = self->_corecipientSearchTaskIDs;
  if (!corecipientSearchTaskIDs)
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = self->_corecipientSearchTaskIDs;
    self->_corecipientSearchTaskIDs = v15;

    corecipientSearchTaskIDs = self->_corecipientSearchTaskIDs;
  }

  [(NSMutableArray *)corecipientSearchTaskIDs addObject:v8];
  [(NSOperationQueue *)self->_queue addOperation:v9];
  v17 = [MEMORY[0x1E695DFA8] setWithObject:v9];
  v18 = [v6 otherAddressesAlreadyChosen];
  v19 = [v18 componentsJoinedByString:{@", "}];
  v20 = [CNAutocompleteContactsSearchTaskContext contextWithConsumer:v7 text:v19 operations:v17 searchQueries:0];

  if (v20)
  {
    [(NSMutableDictionary *)self->_taskContextsByTaskID setObject:v20 forKey:v8];
  }

  return v8;
}

- (void)_handleTaskFinished:(id)a3 context:(id)a4
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = contactsSearchManagerLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = v6;
    _os_log_impl(&dword_1B8106000, v8, OS_LOG_TYPE_DEFAULT, "task %{public}@ finished", &v12, 0xCu);
  }

  v9 = [v7 consumer];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [v7 consumer];
    [v11 finishedTaskWithID:v6];
  }

  [(NSMutableDictionary *)self->_taskContextsByTaskID removeObjectForKey:v6];
}

- (void)_handleContactsAutocompleteSearchFinished:(id)a3 taskID:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = contactsSearchManagerLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    v18 = v6;
    _os_log_impl(&dword_1B8106000, v8, OS_LOG_TYPE_DEFAULT, "task %{public}@ finished", &v17, 0xCu);
  }

  v9 = [(NSMutableDictionary *)self->_taskContextsByTaskID objectForKey:v6];
  v10 = [(NSMutableArray *)self->_corecipientSearchTaskIDs containsObject:v6];
  v11 = contactsSearchManagerLog();
  v12 = [v6 unsignedIntegerValue];
  v13 = v12;
  if (v10)
  {
    if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      LOWORD(v17) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B8106000, v11, OS_SIGNPOST_INTERVAL_END, v13, "autocompleteCorecipientsSearch", "autocompleteSearchFinished (corecipients)", &v17, 2u);
    }

    if ([v9 consumerRespondsToCallbacks])
    {
      v14 = [v9 consumer];
      [v14 finishedSearchingForCorecipients];
    }

    [(NSMutableArray *)self->_corecipientSearchTaskIDs removeObject:v6];
  }

  else
  {
    if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      LOWORD(v17) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B8106000, v11, OS_SIGNPOST_INTERVAL_END, v13, "autocompleteTextSearch", "autocompleteSearchFinished", &v17, 2u);
    }

    if ([v9 consumerRespondsToCallbacks])
    {
      v15 = [v9 consumer];
      [v15 finishedSearchingForAutocompleteResults];
    }
  }

  v16 = [v9 operations];
  [v16 removeObject:v7];

  if ([v9 done])
  {
    [(CNAutocompleteSearchManager *)self _handleTaskFinished:v6 context:v9];
  }
}

- (void)_handleContactsAutocompleteSearch:(id)a3 returnedResults:(id)a4 taskID:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = contactsSearchManagerLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138543618;
    v19 = v8;
    v20 = 2048;
    v21 = [v7 count];
    _os_log_impl(&dword_1B8106000, v9, OS_LOG_TYPE_DEFAULT, "task %{public}@ found %ld autocomplete results", &v18, 0x16u);
  }

  v10 = contactsSearchManagerLog();
  v11 = [v8 unsignedIntegerValue];
  if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v11;
    if (os_signpost_enabled(v10))
    {
      v13 = [v7 count];
      v18 = 134217984;
      v19 = v13;
      _os_signpost_emit_with_name_impl(&dword_1B8106000, v10, OS_SIGNPOST_EVENT, v12, "autocompleteSearchReturnedResults", "found %ld autocomplete results", &v18, 0xCu);
    }
  }

  v14 = [(NSMutableDictionary *)self->_taskContextsByTaskID objectForKey:v8];
  v15 = [(NSMutableArray *)self->_corecipientSearchTaskIDs containsObject:v8];
  v16 = [v14 consumerRespondsToCallbacks];
  if (v15)
  {
    if (v16)
    {
      v17 = [v14 consumer];
      [v17 consumeCorecipientSearchResults:v7 taskID:v8];
LABEL_11:
    }
  }

  else if (v16)
  {
    v17 = [v14 consumer];
    [v17 consumeAutocompleteSearchResults:v7 taskID:v8];
    goto LABEL_11;
  }
}

- (void)cancelTaskWithID:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = contactsSearchManagerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = v4;
    _os_log_impl(&dword_1B8106000, v5, OS_LOG_TYPE_DEFAULT, "task %{public}@ cancelled", &v14, 0xCu);
  }

  v6 = [(NSMutableArray *)self->_corecipientSearchTaskIDs containsObject:v4];
  v7 = contactsSearchManagerLog();
  v8 = [v4 unsignedIntegerValue];
  v9 = v8;
  if (v6)
  {
    if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      LOWORD(v14) = 0;
      v10 = "autocompleteCorecipientsSearch";
      v11 = "autocompleteSearch (corecipients) was cancelled";
LABEL_10:
      _os_signpost_emit_with_name_impl(&dword_1B8106000, v7, OS_SIGNPOST_INTERVAL_END, v9, v10, v11, &v14, 2u);
    }
  }

  else if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v14) = 0;
    v10 = "autocompleteTextSearch";
    v11 = "autocompleteSearch was cancelled";
    goto LABEL_10;
  }

  v12 = [(NSMutableDictionary *)self->_taskContextsByTaskID objectForKey:v4];
  v13 = [v12 operations];
  [v13 makeObjectsPerformSelector:sel_cancel];

  [(NSMutableDictionary *)self->_taskContextsByTaskID removeObjectForKey:v4];
}

- (void)dealloc
{
  contactSearchAccountChangedToken = self->_contactSearchAccountChangedToken;
  if (contactSearchAccountChangedToken)
  {
    notify_cancel(contactSearchAccountChangedToken);
  }

  v4.receiver = self;
  v4.super_class = CNAutocompleteSearchManager;
  [(CNAutocompleteSearchManager *)&v4 dealloc];
}

- (CNAutocompleteUIFetchDelegate)fetchDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_fetchDelegate);

  return WeakRetained;
}

@end