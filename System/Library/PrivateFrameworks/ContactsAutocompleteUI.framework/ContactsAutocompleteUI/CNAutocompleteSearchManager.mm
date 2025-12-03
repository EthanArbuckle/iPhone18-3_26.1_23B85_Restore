@interface CNAutocompleteSearchManager
- (CNAutocompleteSearchManager)initWithAutocompleteSearchType:(unint64_t)type;
- (CNAutocompleteSearchManager)initWithAutocompleteStore:(id)store searchType:(unint64_t)type;
- (CNAutocompleteUIFetchDelegate)fetchDelegate;
- (id)searchForCorecipientsWithAutocompleteFetchContext:(id)context consumer:(id)consumer;
- (id)searchForText:(id)text withAutocompleteFetchContext:(id)context consumer:(id)consumer;
- (void)_handleContactsAutocompleteSearch:(id)search returnedResults:(id)results taskID:(id)d;
- (void)_handleContactsAutocompleteSearchFinished:(id)finished taskID:(id)d;
- (void)_handleTaskFinished:(id)finished context:(id)context;
- (void)cancelTaskWithID:(id)d;
- (void)dealloc;
- (void)didSelectRecipient:(id)recipient atIndex:(unint64_t)index;
- (void)removeRecipientResult:(id)result;
- (void)setShouldIncludeGroupResults:(BOOL)results;
@end

@implementation CNAutocompleteSearchManager

- (CNAutocompleteSearchManager)initWithAutocompleteSearchType:(unint64_t)type
{
  v5 = objc_alloc_init(MEMORY[0x1E6996378]);
  v6 = [(CNAutocompleteSearchManager *)self initWithAutocompleteStore:v5 searchType:type];

  return v6;
}

- (CNAutocompleteSearchManager)initWithAutocompleteStore:(id)store searchType:(unint64_t)type
{
  storeCopy = store;
  v19.receiver = self;
  v19.super_class = CNAutocompleteSearchManager;
  v8 = [(CNAutocompleteSearchManager *)&v19 init];
  v9 = v8;
  if (v8)
  {
    v8->_shouldUnifyResults = 1;
    v8->_searchTypes = 31;
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v12 = [bundleIdentifier copy];
    recentsBundleIdentifier = v9->_recentsBundleIdentifier;
    v9->_recentsBundleIdentifier = v12;

    v9->_autocompleteSearchType = type;
    objc_storeStrong(&v9->_autocompleteStore, store);
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

- (void)setShouldIncludeGroupResults:(BOOL)results
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:results];
  shouldIncludeGroupResultsImpl = self->_shouldIncludeGroupResultsImpl;
  self->_shouldIncludeGroupResultsImpl = v4;

  MEMORY[0x1EEE66BB8](v4, shouldIncludeGroupResultsImpl);
}

- (void)didSelectRecipient:(id)recipient atIndex:(unint64_t)index
{
  autocompleteStore = self->_autocompleteStore;
  autocompleteResult = [recipient autocompleteResult];
  [(CNAutocompleteStore *)autocompleteStore userSelectedResult:autocompleteResult atSortedIndex:index];
}

- (void)removeRecipientResult:(id)result
{
  resultCopy = result;
  if ([resultCopy isRemovableFromSearchResults])
  {
    autocompleteResult = [resultCopy autocompleteResult];
    if (autocompleteResult)
    {
      autocompleteStore = self->_autocompleteStore;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __53__CNAutocompleteSearchManager_removeRecipientResult___block_invoke;
      v7[3] = &unk_1E7CD2930;
      v8 = resultCopy;
      [(CNAutocompleteStore *)autocompleteStore ignoreResult:autocompleteResult completionHandler:v7];
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

- (id)searchForText:(id)text withAutocompleteFetchContext:(id)context consumer:(id)consumer
{
  v32 = *MEMORY[0x1E69E9840];
  textCopy = text;
  contextCopy = context;
  consumerCopy = consumer;
  _nextTaskID = [(CNAutocompleteSearchManager *)self _nextTaskID];
  v12 = [CNContactsAutocompleteSearchOperation operationWithOwner:self text:textCopy taskID:_nextTaskID autocompleteStore:self->_autocompleteStore];

  if (v12)
  {
    v13 = contactsSearchManagerLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      taskID = [v12 taskID];
      *buf = 138478083;
      v29 = textCopy;
      v30 = 2114;
      v31 = taskID;
      _os_log_impl(&dword_1B8106000, v13, OS_LOG_TYPE_DEFAULT, "Beginning CNContactsAutocompleteSearchOperation for %{private}@ (task %{public}@)", buf, 0x16u);
    }

    v15 = contactsSearchManagerLog();
    taskID2 = [v12 taskID];
    unsignedIntegerValue = [taskID2 unsignedIntegerValue];

    if (unsignedIntegerValue - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1B8106000, v15, OS_SIGNPOST_INTERVAL_BEGIN, unsignedIntegerValue, "autocompleteTextSearch", "autocompleteSearch started", buf, 2u);
    }

    [v12 setShouldUnifyResults:{-[CNAutocompleteSearchManager shouldUnifyResults](self, "shouldUnifyResults")}];
    [v12 setShouldIncludeGroupResults:self->_shouldIncludeGroupResultsImpl];
    searchControllerOptions = self->_searchControllerOptions;
    if (searchControllerOptions)
    {
      [v12 setAddressableGroupResultStyle:{-[CNAutocompleteSearchControllerOptions addressableGroupResultStyle](searchControllerOptions, "addressableGroupResultStyle")}];
    }

    [v12 configureForSearchTypes:self->_searchTypes];
    [v12 setFetchContext:contextCopy];
    [v12 setSimulateResults:{-[CNAutocompleteSearchManager isSimulatedResultsEnabled](self, "isSimulatedResultsEnabled")}];
    queue = self->_queue;
    v27 = v12;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
    [(NSOperationQueue *)queue addOperations:v20 waitUntilFinished:0];

    v21 = [MEMORY[0x1E695DFA8] setWithObject:v12];
    v22 = [CNAutocompleteContactsSearchTaskContext contextWithConsumer:consumerCopy text:textCopy operations:v21 searchQueries:0];

    if (v22)
    {
      taskContextsByTaskID = self->_taskContextsByTaskID;
      taskID3 = [v12 taskID];
      [(NSMutableDictionary *)taskContextsByTaskID setObject:v22 forKey:taskID3];
    }
  }

  taskID4 = [v12 taskID];

  return taskID4;
}

- (id)searchForCorecipientsWithAutocompleteFetchContext:(id)context consumer:(id)consumer
{
  contextCopy = context;
  consumerCopy = consumer;
  _nextTaskID = [(CNAutocompleteSearchManager *)self _nextTaskID];
  v9 = [CNContactsAutocompleteSearchOperation operationWithOwner:self text:0 taskID:_nextTaskID autocompleteStore:self->_autocompleteStore];
  v10 = contactsSearchManagerLog();
  taskID = [v9 taskID];
  unsignedIntegerValue = [taskID unsignedIntegerValue];

  if (unsignedIntegerValue - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v22 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B8106000, v10, OS_SIGNPOST_INTERVAL_BEGIN, unsignedIntegerValue, "autocompleteCorecipientsSearch", "autocompleteSearch (corecipients) started", v22, 2u);
  }

  [v9 setShouldIncludeGroupResults:self->_shouldIncludeGroupResultsImpl];
  [v9 configureForSearchTypes:self->_searchTypes];
  [v9 setFetchContext:contextCopy];
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

  [(NSMutableArray *)corecipientSearchTaskIDs addObject:_nextTaskID];
  [(NSOperationQueue *)self->_queue addOperation:v9];
  v17 = [MEMORY[0x1E695DFA8] setWithObject:v9];
  otherAddressesAlreadyChosen = [contextCopy otherAddressesAlreadyChosen];
  v19 = [otherAddressesAlreadyChosen componentsJoinedByString:{@", "}];
  v20 = [CNAutocompleteContactsSearchTaskContext contextWithConsumer:consumerCopy text:v19 operations:v17 searchQueries:0];

  if (v20)
  {
    [(NSMutableDictionary *)self->_taskContextsByTaskID setObject:v20 forKey:_nextTaskID];
  }

  return _nextTaskID;
}

- (void)_handleTaskFinished:(id)finished context:(id)context
{
  v14 = *MEMORY[0x1E69E9840];
  finishedCopy = finished;
  contextCopy = context;
  v8 = contactsSearchManagerLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = finishedCopy;
    _os_log_impl(&dword_1B8106000, v8, OS_LOG_TYPE_DEFAULT, "task %{public}@ finished", &v12, 0xCu);
  }

  consumer = [contextCopy consumer];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    consumer2 = [contextCopy consumer];
    [consumer2 finishedTaskWithID:finishedCopy];
  }

  [(NSMutableDictionary *)self->_taskContextsByTaskID removeObjectForKey:finishedCopy];
}

- (void)_handleContactsAutocompleteSearchFinished:(id)finished taskID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  finishedCopy = finished;
  v8 = contactsSearchManagerLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543362;
    v18 = dCopy;
    _os_log_impl(&dword_1B8106000, v8, OS_LOG_TYPE_DEFAULT, "task %{public}@ finished", &v17, 0xCu);
  }

  v9 = [(NSMutableDictionary *)self->_taskContextsByTaskID objectForKey:dCopy];
  v10 = [(NSMutableArray *)self->_corecipientSearchTaskIDs containsObject:dCopy];
  v11 = contactsSearchManagerLog();
  unsignedIntegerValue = [dCopy unsignedIntegerValue];
  v13 = unsignedIntegerValue;
  if (v10)
  {
    if ((unsignedIntegerValue - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      LOWORD(v17) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B8106000, v11, OS_SIGNPOST_INTERVAL_END, v13, "autocompleteCorecipientsSearch", "autocompleteSearchFinished (corecipients)", &v17, 2u);
    }

    if ([v9 consumerRespondsToCallbacks])
    {
      consumer = [v9 consumer];
      [consumer finishedSearchingForCorecipients];
    }

    [(NSMutableArray *)self->_corecipientSearchTaskIDs removeObject:dCopy];
  }

  else
  {
    if ((unsignedIntegerValue - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      LOWORD(v17) = 0;
      _os_signpost_emit_with_name_impl(&dword_1B8106000, v11, OS_SIGNPOST_INTERVAL_END, v13, "autocompleteTextSearch", "autocompleteSearchFinished", &v17, 2u);
    }

    if ([v9 consumerRespondsToCallbacks])
    {
      consumer2 = [v9 consumer];
      [consumer2 finishedSearchingForAutocompleteResults];
    }
  }

  operations = [v9 operations];
  [operations removeObject:finishedCopy];

  if ([v9 done])
  {
    [(CNAutocompleteSearchManager *)self _handleTaskFinished:dCopy context:v9];
  }
}

- (void)_handleContactsAutocompleteSearch:(id)search returnedResults:(id)results taskID:(id)d
{
  v22 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  dCopy = d;
  v9 = contactsSearchManagerLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138543618;
    v19 = dCopy;
    v20 = 2048;
    v21 = [resultsCopy count];
    _os_log_impl(&dword_1B8106000, v9, OS_LOG_TYPE_DEFAULT, "task %{public}@ found %ld autocomplete results", &v18, 0x16u);
  }

  v10 = contactsSearchManagerLog();
  unsignedIntegerValue = [dCopy unsignedIntegerValue];
  if ((unsignedIntegerValue - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = unsignedIntegerValue;
    if (os_signpost_enabled(v10))
    {
      v13 = [resultsCopy count];
      v18 = 134217984;
      v19 = v13;
      _os_signpost_emit_with_name_impl(&dword_1B8106000, v10, OS_SIGNPOST_EVENT, v12, "autocompleteSearchReturnedResults", "found %ld autocomplete results", &v18, 0xCu);
    }
  }

  v14 = [(NSMutableDictionary *)self->_taskContextsByTaskID objectForKey:dCopy];
  v15 = [(NSMutableArray *)self->_corecipientSearchTaskIDs containsObject:dCopy];
  consumerRespondsToCallbacks = [v14 consumerRespondsToCallbacks];
  if (v15)
  {
    if (consumerRespondsToCallbacks)
    {
      consumer = [v14 consumer];
      [consumer consumeCorecipientSearchResults:resultsCopy taskID:dCopy];
LABEL_11:
    }
  }

  else if (consumerRespondsToCallbacks)
  {
    consumer = [v14 consumer];
    [consumer consumeAutocompleteSearchResults:resultsCopy taskID:dCopy];
    goto LABEL_11;
  }
}

- (void)cancelTaskWithID:(id)d
{
  v16 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = contactsSearchManagerLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = dCopy;
    _os_log_impl(&dword_1B8106000, v5, OS_LOG_TYPE_DEFAULT, "task %{public}@ cancelled", &v14, 0xCu);
  }

  v6 = [(NSMutableArray *)self->_corecipientSearchTaskIDs containsObject:dCopy];
  v7 = contactsSearchManagerLog();
  unsignedIntegerValue = [dCopy unsignedIntegerValue];
  v9 = unsignedIntegerValue;
  if (v6)
  {
    if ((unsignedIntegerValue - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
    {
      LOWORD(v14) = 0;
      v10 = "autocompleteCorecipientsSearch";
      v11 = "autocompleteSearch (corecipients) was cancelled";
LABEL_10:
      _os_signpost_emit_with_name_impl(&dword_1B8106000, v7, OS_SIGNPOST_INTERVAL_END, v9, v10, v11, &v14, 2u);
    }
  }

  else if ((unsignedIntegerValue - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v14) = 0;
    v10 = "autocompleteTextSearch";
    v11 = "autocompleteSearch was cancelled";
    goto LABEL_10;
  }

  v12 = [(NSMutableDictionary *)self->_taskContextsByTaskID objectForKey:dCopy];
  operations = [v12 operations];
  [operations makeObjectsPerformSelector:sel_cancel];

  [(NSMutableDictionary *)self->_taskContextsByTaskID removeObjectForKey:dCopy];
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