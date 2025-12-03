@interface EDMessageRepositoryQueryHandler
- (BOOL)keyPathsAffectSorting:(id)sorting;
- (EDMessageRepositoryQueryHandler)initWithQuery:(id)query messagePersistence:(id)persistence hookRegistry:(id)registry remindMeNotificationController:(id)controller observer:(id)observer observationIdentifier:(id)identifier;
- (NSSet)mailboxes;
- (id)_distinctObjectIDs:(id)ds queryHandlerLog:(id)log;
- (id)messageReconciliationQueries;
- (void)cancel;
- (void)dealloc;
- (void)requestSummaryForMessageObjectID:(id)d;
- (void)test_tearDown;
@end

@implementation EDMessageRepositoryQueryHandler

- (void)cancel
{
  v20 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__30;
  v17 = __Block_byref_object_dispose__30;
  v18 = 0;
  summaryLoadersMapTable = self->_summaryLoadersMapTable;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __41__EDMessageRepositoryQueryHandler_cancel__block_invoke;
  v12[3] = &unk_1E82559B0;
  v12[4] = &v13;
  [(EFLocked *)summaryLoadersMapTable performWhileLocked:v12];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = v14[5];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v19 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v6++) cancel];
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v8 objects:v19 count:16];
    }

    while (v4);
  }

  _Block_object_dispose(&v13, 8);
  v7 = *MEMORY[0x1E69E9840];
}

void __41__EDMessageRepositoryQueryHandler_cancel__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 objectEnumerator];
  v4 = [v3 allObjects];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)dealloc
{
  [(EDMessageRepositoryQueryHandler *)self cancel];
  v3.receiver = self;
  v3.super_class = EDMessageRepositoryQueryHandler;
  [(EDMessageRepositoryQueryHandler *)&v3 dealloc];
}

- (EDMessageRepositoryQueryHandler)initWithQuery:(id)query messagePersistence:(id)persistence hookRegistry:(id)registry remindMeNotificationController:(id)controller observer:(id)observer observationIdentifier:(id)identifier
{
  queryCopy = query;
  persistenceCopy = persistence;
  registryCopy = registry;
  controllerCopy = controller;
  observerCopy = observer;
  identifierCopy = identifier;
  v31.receiver = self;
  v31.super_class = EDMessageRepositoryQueryHandler;
  v17 = [(EDMessageRepositoryQueryHandler *)&v31 init];
  if (v17)
  {
    v18 = [queryCopy copy];
    query = v17->_query;
    v17->_query = v18;

    objc_storeStrong(&v17->_messagePersistence, persistence);
    objc_storeStrong(&v17->_hookRegistry, registry);
    objc_storeStrong(&v17->_remindMeNotificationController, controller);
    objc_storeStrong(&v17->_resultsObserver, observer);
    objc_storeStrong(&v17->_observationIdentifier, identifier);
    v20 = objc_alloc(MEMORY[0x1E699B7F0]);
    strongToWeakObjectsMapTable = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    v22 = [v20 initWithObject:strongToWeakObjectsMapTable];
    summaryLoadersMapTable = v17->_summaryLoadersMapTable;
    v17->_summaryLoadersMapTable = v22;

    mailboxes = v17->_mailboxes;
    v17->_mailboxes = 0;

    v25 = MEMORY[0x1E699ADA0];
    sortDescriptors = [(EMQuery *)v17->_query sortDescriptors];
    v17->_dateSortOrder = [v25 dateSortOrderFromSortDescriptors:sortDescriptors];
  }

  return v17;
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDMessageRepositoryQueryHandler.m" lineNumber:48 description:{@"%s can only be called from unit tests", "-[EDMessageRepositoryQueryHandler test_tearDown]"}];
  }

  [(EDMessageRepositoryQueryHandler *)self tearDown];
}

- (NSSet)mailboxes
{
  mailboxes = self->_mailboxes;
  if (!mailboxes)
  {
    v4 = MEMORY[0x1E699ADA0];
    predicate = [(EMQuery *)self->_query predicate];
    messagePersistence = [(EDMessageRepositoryQueryHandler *)self messagePersistence];
    mailboxPersistence = [messagePersistence mailboxPersistence];
    v8 = [v4 mailboxScopeForPredicate:predicate withMailboxTypeResolver:mailboxPersistence];

    v14 = 0;
    messagePersistence2 = [(EDMessageRepositoryQueryHandler *)self messagePersistence];
    mailboxPersistence2 = [messagePersistence2 mailboxPersistence];
    v11 = [v8 allMailboxObjectIDsWithMailboxTypeResolver:mailboxPersistence2 forExclusion:&v14];
    v12 = self->_mailboxes;
    self->_mailboxes = v11;

    mailboxes = self->_mailboxes;
  }

  return mailboxes;
}

- (BOOL)keyPathsAffectSorting:(id)sorting
{
  v19 = *MEMORY[0x1E69E9840];
  sortingCopy = sorting;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  query = [(EDMessageRepositoryQueryHandler *)self query];
  sortDescriptors = [query sortDescriptors];

  v7 = [sortDescriptors countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(sortDescriptors);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) key];
        v11 = [sortingCopy containsObject:v10];

        if (v11)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [sortDescriptors countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)requestSummaryForMessageObjectID:(id)d
{
  dCopy = d;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__30;
  v23 = __Block_byref_object_dispose__30;
  v24 = 0;
  summaryLoadersMapTable = self->_summaryLoadersMapTable;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __68__EDMessageRepositoryQueryHandler_requestSummaryForMessageObjectID___block_invoke;
  v16[3] = &unk_1E82559D8;
  v18 = &v19;
  v6 = dCopy;
  v17 = v6;
  [(EFLocked *)summaryLoadersMapTable performWhileLocked:v16];
  v7 = v20[5];
  if (v7)
  {
    [v7 cancel];
  }

  messagePersistence = [(EDMessageRepositoryQueryHandler *)self messagePersistence];
  v9 = [messagePersistence requestSummaryForMessageObjectID:v6];

  v10 = self->_summaryLoadersMapTable;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__EDMessageRepositoryQueryHandler_requestSummaryForMessageObjectID___block_invoke_2;
  v13[3] = &unk_1E8255A00;
  v14 = v9;
  v11 = v6;
  v15 = v11;
  v12 = v9;
  [(EFLocked *)v10 performWhileLocked:v13];

  _Block_object_dispose(&v19, 8);
}

void __68__EDMessageRepositoryQueryHandler_requestSummaryForMessageObjectID___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 objectForKey:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)_distinctObjectIDs:(id)ds queryHandlerLog:(id)log
{
  v23 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  logCopy = log;
  v7 = dsCopy;
  currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
  isInternal = [currentDevice isInternal];

  if (isInternal)
  {
    v10 = [MEMORY[0x1E695DFA0] orderedSetWithArray:v7];
    v11 = [v10 count];
    if (v11 != [v7 count])
    {
      v12 = logCopy;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        array = [v10 array];
        v16 = [v7 differenceFromArray:array];
        v17 = [v16 debugDescription];
        __b[0] = 138412290;
        *&__b[1] = v17;
        _os_log_fault_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_FAULT, "Adding objectIDs but duplicate found %@", __b, 0xCu);
      }

      memset(__b, 170, sizeof(__b));
      __b[8] = 0;
      *v20 = 0xE00000001;
      v21 = 1;
      v22 = getpid();
      v18 = 648;
      if (!sysctl(v20, 4u, __b, &v18, 0, 0) && (__b[8] & 0x800) != 0)
      {
        __debugbreak();
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)messageReconciliationQueries
{
  v9[1] = *MEMORY[0x1E69E9840];
  query = [(EDMessageRepositoryQueryHandler *)self query];
  queryOptions = [query queryOptions];

  if ((queryOptions & 8) != 0)
  {
    query2 = [(EDMessageRepositoryQueryHandler *)self query];
    v9[0] = query2;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  }

  else
  {
    v5 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

@end