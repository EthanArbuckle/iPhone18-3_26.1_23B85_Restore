@interface ICManagedObjectContextUpdater
+ (id)contextSaveNotificationFromPersistentHistoryResult:(id)a3 ignoringContextName:(id)a4 fromTransactionAuthor:(id)a5 latestToken:(id *)a6 latestTimestamp:(id *)a7;
- (BOOL)mergeWithDictionary:(id)a3;
- (ICManagedObjectContextUpdater)init;
- (ICManagedObjectContextUpdater)initWithStore:(id)a3 context:(id)a4;
- (NSManagedObjectContext)context;
- (NSPersistentStore)store;
- (id)persistentStoreCoordinator;
- (void)dealloc;
- (void)fetchChangeHistory;
- (void)handlePersistentStoreRemoteChangeNotification:(id)a3;
- (void)requestUpdate;
- (void)startListeningForRemoteContextDidChangeNotifications;
- (void)stopListeningForRemoteContextDidChangeNotifications;
@end

@implementation ICManagedObjectContextUpdater

- (void)startListeningForRemoteContextDidChangeNotifications
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_1D4576000, v1, OS_LOG_TYPE_DEBUG, "Starting to listen to %@ for %@", v2, 0x16u);
}

- (NSManagedObjectContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (id)persistentStoreCoordinator
{
  v3 = [(ICManagedObjectContextUpdater *)self context];
  v4 = [v3 persistentStoreCoordinator];

  if (!v4)
  {
    v5 = [(ICManagedObjectContextUpdater *)self store];
    v4 = [v5 persistentStoreCoordinator];
  }

  return v4;
}

- (void)dealloc
{
  if ([(ICManagedObjectContextUpdater *)self isListening])
  {
    [(ICManagedObjectContextUpdater *)self stopListeningForRemoteContextDidChangeNotifications];
  }

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICManagedObjectContextUpdater;
  [(ICManagedObjectContextUpdater *)&v4 dealloc];
}

- (ICManagedObjectContextUpdater)init
{
  [(ICManagedObjectContextUpdater *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (ICManagedObjectContextUpdater)initWithStore:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = ICManagedObjectContextUpdater;
  v8 = [(ICManagedObjectContextUpdater *)&v15 init];
  v9 = v8;
  if (v8)
  {
    [(ICManagedObjectContextUpdater *)v8 setStore:v6];
    [(ICManagedObjectContextUpdater *)v9 setContext:v7];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.notes.contextupdater", v10);
    [(ICManagedObjectContextUpdater *)v9 setQueue:v11];

    v12 = [MEMORY[0x1E695DF00] date];
    [(ICManagedObjectContextUpdater *)v9 setPreviousHistoryDate:v12];

    v13 = [[ICSelectorDelayer alloc] initWithTarget:v9 selector:sel_fetchChangeHistory delay:0 waitToFireUntilRequestsStop:1 callOnMainThread:0.1];
    [(ICManagedObjectContextUpdater *)v9 setDelayer:v13];
  }

  return v9;
}

- (void)stopListeningForRemoteContextDidChangeNotifications
{
  v1 = [a1 context];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_1D4576000, v2, v3, "Stopping listening to store changes for %@", v4, v5, v6, v7, v8);
}

- (void)requestUpdate
{
  v2 = [(ICManagedObjectContextUpdater *)self delayer];
  [v2 requestFire];
}

- (void)handlePersistentStoreRemoteChangeNotification:(id)a3
{
  v4 = a3;
  v5 = [(ICManagedObjectContextUpdater *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__ICManagedObjectContextUpdater_handlePersistentStoreRemoteChangeNotification___block_invoke;
  v7[3] = &unk_1E8484980;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __79__ICManagedObjectContextUpdater_handlePersistentStoreRemoteChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) object];
    v6 = *(a1 + 40);
    v5 = (a1 + 40);
    v7 = [v6 persistentStoreCoordinator];
    v8 = [v4 isEqual:v7];

    if (v8)
    {
      [*v5 setNumberOfCoalescedNotifications:{objc_msgSend(*v5, "numberOfCoalescedNotifications") + 1}];
      v9 = os_log_create("com.apple.notes", "PersistentHistory");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __79__ICManagedObjectContextUpdater_handlePersistentStoreRemoteChangeNotification___block_invoke_cold_1(v5);
      }

      v10 = [*v5 delayer];
      [v10 requestFire];
    }
  }
}

- (void)fetchChangeHistory
{
  v3 = [(ICManagedObjectContextUpdater *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__ICManagedObjectContextUpdater_fetchChangeHistory__block_invoke;
  block[3] = &unk_1E84848B8;
  block[4] = self;
  dispatch_async(v3, block);
}

void __51__ICManagedObjectContextUpdater_fetchChangeHistory__block_invoke(uint64_t a1)
{
  v62 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.notes", "PersistentHistory");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __51__ICManagedObjectContextUpdater_fetchChangeHistory__block_invoke_cold_1(a1, v2);
  }

  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  [v4 setNumberOfCoalescedNotifications:0];
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [v5 BOOLForKey:@"UsePersistentHistoryTokens"];

  if (v6)
  {
    v7 = os_log_create("com.apple.notes", "PersistentHistory");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __51__ICManagedObjectContextUpdater_fetchChangeHistory__block_invoke_cold_2(v3);
    }

    v8 = MEMORY[0x1E695D698];
    v9 = [*v3 previousHistoryToken];
    v10 = [v8 fetchHistoryAfterToken:v9];
  }

  else
  {
    v11 = MEMORY[0x1E695D698];
    v9 = [*v3 previousHistoryDate];
    v10 = [v11 fetchHistoryAfterDate:v9];
  }

  v12 = v10;

  [v12 setResultType:5];
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__2;
  v54 = __Block_byref_object_dispose__2;
  v55 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__2;
  v48 = __Block_byref_object_dispose__2;
  v49 = 0;
  v13 = [objc_alloc(MEMORY[0x1E695D628]) initWithConcurrencyType:1];
  v14 = [*v3 context];
  v15 = [v14 persistentStoreCoordinator];
  [v13 setPersistentStoreCoordinator:v15];

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __51__ICManagedObjectContextUpdater_fetchChangeHistory__block_invoke_22;
  v39[3] = &unk_1E8484EB0;
  v42 = &v44;
  v16 = v13;
  v40 = v16;
  v36 = v12;
  v41 = v36;
  v43 = &v50;
  [v16 performBlockAndWait:v39];
  if (v51[5])
  {
    v17 = os_log_create("com.apple.notes", "PersistentHistory");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = [*v3 context];
      v34 = v51[5];
      *buf = 138412802;
      v57 = v32;
      v58 = 2112;
      v59 = v33;
      v60 = 2112;
      v61 = v34;
      _os_log_error_impl(&dword_1D4576000, v17, OS_LOG_TYPE_ERROR, "Error executing %@ for %@: %@", buf, 0x20u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    context = objc_autoreleasePoolPush();
    v18 = v45[5];
    v19 = objc_opt_class();
    v20 = [*v3 context];
    v21 = [v20 name];
    v22 = [*v3 context];
    v23 = [v22 transactionAuthor];
    v37 = 0;
    v38 = 0;
    v24 = [v19 contextSaveNotificationFromPersistentHistoryResult:v18 ignoringContextName:v21 fromTransactionAuthor:v23 latestToken:&v38 latestTimestamp:&v37];
    v25 = v38;
    v26 = v37;

    if (v25)
    {
      [*v3 setPreviousHistoryToken:{v25, context}];
    }

    if (v26)
    {
      [*v3 setPreviousHistoryDate:v26];
    }

    if (v24)
    {
      [*v3 mergeWithDictionary:v24];
    }

    objc_autoreleasePoolPop(context);
  }

  else if (v45[5])
  {
    v27 = os_log_create("com.apple.notes", "PersistentHistory");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = objc_opt_class();
      v29 = v45[5];
      *buf = 138412546;
      v57 = v28;
      v58 = 2112;
      v59 = v29;
      v30 = v28;
      _os_log_impl(&dword_1D4576000, v27, OS_LOG_TYPE_INFO, "Result from persistent history request was an unknown type %@: %@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v50, 8);
}

void __51__ICManagedObjectContextUpdater_fetchChangeHistory__block_invoke_22(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)mergeWithDictionary:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [(ICManagedObjectContextUpdater *)self context];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__ICManagedObjectContextUpdater_mergeWithDictionary___block_invoke;
  v8[3] = &unk_1E8484870;
  v6 = v4;
  v9 = v6;
  v10 = self;
  v11 = &v12;
  [v5 performBlockAndWait:v8];

  LOBYTE(self) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);

  return self;
}

void __53__ICManagedObjectContextUpdater_mergeWithDictionary___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D628];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) context];
  v17[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  [v2 mergeChangesFromRemoteContextSave:v3 intoContexts:v5];

  v6 = [*(a1 + 40) store];
  if (v6)
  {
    v7 = v6;
    v8 = [*(a1 + 40) store];
    v9 = [v8 isReadOnly];

    if ((v9 & 1) == 0)
    {
      v10 = [*(a1 + 40) context];
      *(*(*(a1 + 48) + 8) + 24) = [v10 ic_save];
    }
  }

  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v15 = @"ICManagedObjectContextUpdaterChangeDictionaryKey";
  v16 = v12;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  [v11 postNotificationName:@"ICManagedObjectContextUpdaterDidMergeNotification" object:v13 userInfo:v14];
}

+ (id)contextSaveNotificationFromPersistentHistoryResult:(id)a3 ignoringContextName:(id)a4 fromTransactionAuthor:(id)a5 latestToken:(id *)a6 latestTimestamp:(id *)a7
{
  v95 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v71 = a4;
  v70 = a5;
  v12 = [v11 result];
  objc_opt_class();
  LOBYTE(a4) = objc_opt_isKindOfClass();

  if (a4)
  {
    v13 = [MEMORY[0x1E695DFA8] set];
    v14 = [MEMORY[0x1E695DFA8] set];
    v15 = [MEMORY[0x1E695DFA8] set];
    v69 = v11;
    v16 = [v11 result];
    v17 = os_log_create("com.apple.notes", "PersistentHistory");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [ICManagedObjectContextUpdater contextSaveNotificationFromPersistentHistoryResult:v16 ignoringContextName:? fromTransactionAuthor:? latestToken:? latestTimestamp:?];
    }

    v72 = v15;
    v73 = v13;
    v74 = v14;
    v67 = a6;
    v68 = a7;

    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    obj = v16;
    v18 = [obj countByEnumeratingWithState:&v84 objects:v94 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v82 = 0;
      v21 = *v85;
      if (v71)
      {
        v22 = v70 == 0;
      }

      else
      {
        v22 = 1;
      }

      v23 = !v22;
      v80 = v23;
      v77 = *MEMORY[0x1E695D320];
      v75 = *MEMORY[0x1E695D4C8];
      v76 = *MEMORY[0x1E695D2F0];
      v24 = 0x1E695D000uLL;
      v78 = *v85;
      do
      {
        v25 = 0;
        v79 = v19;
        do
        {
          if (*v85 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v84 + 1) + 8 * v25);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27 = objc_autoreleasePoolPush();
            v28 = v26;
            v29 = v28;
            if (!v20 || ([v28 timestamp], v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "timeIntervalSinceReferenceDate"), v32 = v31, objc_msgSend(v20, "timeIntervalSinceReferenceDate"), v34 = v33, v30, v32 > v34))
            {
              v35 = [v29 token];

              v36 = [v29 timestamp];
              v37 = v20;
              v20 = v36;

              v82 = v35;
            }

            v38 = [v29 contextName];
            v39 = [v29 author];
            v40 = v39;
            if (v38)
            {
              v41 = v80;
            }

            else
            {
              v41 = 0;
            }

            v42 = v41 != 1 || v39 == 0;
            if (v42 || ![v71 isEqualToString:v38] || (objc_msgSend(v70, "isEqualToString:", v40) & 1) == 0)
            {
              v83 = v27;
              v43 = v20;
              v44 = [v29 objectIDNotification];
              v45 = [v44 userInfo];

              v46 = [v45 objectForKeyedSubscript:v77];
              if ([v46 count])
              {
                [v73 unionSet:v46];
              }

              v47 = v24;
              v48 = [v45 objectForKeyedSubscript:v76];
              if ([v48 count])
              {
                [v74 unionSet:v48];
              }

              v49 = [v45 objectForKeyedSubscript:v75];
              if (v49)
              {
                [v72 unionSet:v49];
              }

              v20 = v43;
              v21 = v78;
              v19 = v79;
              v24 = v47;
              v27 = v83;
            }

            objc_autoreleasePoolPop(v27);
          }

          else
          {
            v50 = os_log_create("com.apple.notes", "PersistentHistory");
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              v51 = objc_opt_class();
              *buf = 138412546;
              v91 = v51;
              v92 = 2112;
              v93 = v26;
              v52 = v51;
              _os_log_impl(&dword_1D4576000, v50, OS_LOG_TYPE_DEFAULT, "Found unknown type %@ in persistent history sub-result array: %@", buf, 0x16u);
            }
          }

          ++v25;
        }

        while (v19 != v25);
        v19 = [obj countByEnumeratingWithState:&v84 objects:v94 count:16];
      }

      while (v19);
    }

    else
    {
      v20 = 0;
      v82 = 0;
    }

    v58 = v20;

    v61 = v73;
    v53 = v74;
    if (-[NSObject count](v73, "count") || -[NSObject count](v74, "count") || [v72 count])
    {
      v62 = *MEMORY[0x1E695D2F0];
      v88[0] = *MEMORY[0x1E695D320];
      v88[1] = v62;
      v89[0] = v73;
      v89[1] = v74;
      v88[2] = *MEMORY[0x1E695D4C8];
      v89[2] = v72;
      v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:v88 count:{3, v67, v68}];
    }

    else
    {
      v60 = 0;
    }

    a7 = v68;
    v11 = v69;
    a6 = v67;

    v59 = v82;
  }

  else
  {
    v53 = os_log_create("com.apple.notes", "PersistentHistory");
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      v54 = [v11 result];
      v55 = objc_opt_class();
      v56 = v55;
      v57 = [v11 result];
      *buf = 138412546;
      v91 = v55;
      v92 = 2112;
      v93 = v57;
      _os_log_impl(&dword_1D4576000, v53, OS_LOG_TYPE_DEFAULT, "Subresult in persistent history result was an unknown type %@: %@", buf, 0x16u);
    }

    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = v53;
  }

  if (a6)
  {
    v63 = v59;
    *a6 = v59;
  }

  if (a7)
  {
    v64 = v58;
    *a7 = v58;
  }

  v65 = v60;

  return v60;
}

- (NSPersistentStore)store
{
  WeakRetained = objc_loadWeakRetained(&self->_store);

  return WeakRetained;
}

void __79__ICManagedObjectContextUpdater_handlePersistentStoreRemoteChangeNotification___block_invoke_cold_1(id *a1)
{
  [*a1 numberOfCoalescedNotifications];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_1D4576000, v1, v2, "Received distributed save notification. numberOfCoalescedNotifications=%ld", v3, v4, v5, v6, v7);
}

void __51__ICManagedObjectContextUpdater_fetchChangeHistory__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 32);
  v4 = [*(a1 + 32) context];
  v5 = [*v3 numberOfCoalescedNotifications];
  v6 = [*v3 previousHistoryDate];
  [v6 timeIntervalSinceReferenceDate];
  v8 = 138412802;
  v9 = v4;
  v10 = 2048;
  v11 = v5;
  v12 = 2048;
  v13 = v7;
  _os_log_debug_impl(&dword_1D4576000, a2, OS_LOG_TYPE_DEBUG, "Fetching change history for %@ with %ld coalesced notifications since date (%f)", &v8, 0x20u);
}

void __51__ICManagedObjectContextUpdater_fetchChangeHistory__block_invoke_cold_2(id *a1)
{
  v1 = [*a1 previousHistoryToken];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_1D4576000, v2, v3, "Previous persistent history token: %@", v4, v5, v6, v7, v8);
}

+ (void)contextSaveNotificationFromPersistentHistoryResult:(void *)a1 ignoringContextName:fromTransactionAuthor:latestToken:latestTimestamp:.cold.1(void *a1)
{
  [a1 count];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_1D4576000, v1, v2, "Received a persistent history result with %ld subresults", v3, v4, v5, v6, v7);
}

@end