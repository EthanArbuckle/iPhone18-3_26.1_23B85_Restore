@interface _DKContactsPrivacyMaintainer
- (_DKContactsPrivacyMaintainer)initWithKnowledgeStore:(id)store spotlightRecorder:(id)recorder;
- (void)_deleteIntentsRelatedToContactIdentifiers:(id)identifiers;
- (void)_unregisterContactDeletionNotifications;
- (void)cleanupPendingDeletedContacts;
- (void)dealloc;
- (void)handleContactDeletionNotification;
- (void)handleRecentlyDeletedContactsWithLimit:(unint64_t)limit;
- (void)registerContactDeletionNotifications;
- (void)scheduleIntentsPruningXPCActivity;
@end

@implementation _DKContactsPrivacyMaintainer

- (_DKContactsPrivacyMaintainer)initWithKnowledgeStore:(id)store spotlightRecorder:(id)recorder
{
  storeCopy = store;
  recorderCopy = recorder;
  v14.receiver = self;
  v14.super_class = _DKContactsPrivacyMaintainer;
  v9 = [(_DKContactsPrivacyMaintainer *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_knowledgeStore, store);
    objc_storeStrong(&v10->_spotlightRecorder, recorder);
    v10->_notifyToken = -1;
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    userDefaults = v10->_userDefaults;
    v10->_userDefaults = standardUserDefaults;
  }

  return v10;
}

- (void)dealloc
{
  [(_DKContactsPrivacyMaintainer *)self _unregisterContactDeletionNotifications];
  v3.receiver = self;
  v3.super_class = _DKContactsPrivacyMaintainer;
  [(_DKContactsPrivacyMaintainer *)&v3 dealloc];
}

- (void)registerContactDeletionNotifications
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v3, 5u, 0);

  v5 = dispatch_queue_create("contactChangeIntentDeletionQueue", v4);
  v6 = objc_alloc(MEMORY[0x1E69C5D80]);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __68___DKContactsPrivacyMaintainer_registerContactDeletionNotifications__block_invoke;
  v18[3] = &unk_1E7367440;
  v18[4] = self;
  v7 = [v6 initWithQueue:v5 operation:v18];
  coalescingContactChangeTimer = self->_coalescingContactChangeTimer;
  self->_coalescingContactChangeTimer = v7;

  objc_initWeak(&location, self);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __68___DKContactsPrivacyMaintainer_registerContactDeletionNotifications__block_invoke_2;
  handler[3] = &unk_1E7368430;
  objc_copyWeak(&v16, &location);
  handler[4] = self;
  notify_register_dispatch("__ABDataBaseChangedByOtherProcessNotification", &self->_notifyToken, v5, handler);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v10 = getCNContactStoreDidChangeNotification();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68___DKContactsPrivacyMaintainer_registerContactDeletionNotifications__block_invoke_517;
  v13[3] = &unk_1E7368458;
  objc_copyWeak(&v14, &location);
  v13[4] = self;
  v11 = [defaultCenter addObserverForName:v10 object:0 queue:0 usingBlock:v13];
  notificationCenterToken = self->_notificationCenterToken;
  self->_notificationCenterToken = v11;

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)_unregisterContactDeletionNotifications
{
  notifyToken = self->_notifyToken;
  if (notifyToken != -1)
  {
    notify_cancel(notifyToken);
  }

  if (self->_notificationCenterToken)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self->_notificationCenterToken];
  }
}

- (void)handleContactDeletionNotification
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(NSUserDefaults *)self->_userDefaults BOOLForKey:@"kCDIntentDeletionPendingDeletesQueued"];
  v4 = +[_CDLogging spotlightReceiverChannel];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_191750000, v4, OS_LOG_TYPE_DEFAULT, "%@ - handleContactDeletionNotification pendingDeletesQueued = YES, skipping", &v11, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_191750000, v4, OS_LOG_TYPE_DEFAULT, "%@ - handleContactDeletionNotification pendingDeletesQueued = NO, proceeding", &v11, 0xCu);
    }

    [(_DKContactsPrivacyMaintainer *)self handleRecentlyDeletedContactsWithLimit:300];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)handleRecentlyDeletedContactsWithLimit:(unint64_t)limit
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = [(NSUserDefaults *)self->_userDefaults dataForKey:@"kCDIntentDeletionContactStoreChangeHistoryToken"];
  v6 = +[_CDLogging spotlightReceiverChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    *buf = 138412546;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = v5;
    _os_log_impl(&dword_191750000, v6, OS_LOG_TYPE_DEFAULT, "%@ - handleContactDeletionNotification using startingToken: %@", buf, 0x16u);
  }

  getCNChangeHistoryFetchRequestClass();
  v9 = objc_opt_new();
  [v9 setStartingToken:v5];
  getCNContactStoreClass();
  v10 = objc_opt_new();
  v28 = 0;
  v11 = [v10 enumeratorForChangeHistoryFetchRequest:v9 error:&v28];
  v12 = v28;
  v13 = v12;
  if (!v11 || v12)
  {
    v16 = +[_CDLogging spotlightReceiverChannel];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(_DKContactsPrivacyMaintainer *)self handleRecentlyDeletedContactsWithLimit:v13, v16];
    }
  }

  else
  {
    v14 = [_CDContactChangeHistoryEventVisitor alloc];
    value = [v11 value];
    v16 = [(_CDContactChangeHistoryEventVisitor *)v14 initWithChangeEnumerator:value];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v34 = 1;
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x2020000000;
    v27[3] = 0;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __71___DKContactsPrivacyMaintainer_handleRecentlyDeletedContactsWithLimit___block_invoke;
    v26[3] = &unk_1E7368480;
    v26[4] = self;
    v26[5] = v27;
    v26[6] = buf;
    v26[7] = limit;
    [v16 visitEventsWithBatchSize:100 batchCallback:v26];
    userDefaults = self->_userDefaults;
    if (*(*&buf[8] + 24) == 1)
    {
      currentHistoryToken = [v11 currentHistoryToken];
      [(NSUserDefaults *)userDefaults setValue:currentHistoryToken forKey:@"kCDIntentDeletionContactStoreChangeHistoryToken"];

      v19 = +[_CDLogging spotlightReceiverChannel];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        currentHistoryToken2 = [v11 currentHistoryToken];
        *v29 = 138412546;
        v30 = v21;
        v31 = 2112;
        v32 = currentHistoryToken2;
        _os_log_impl(&dword_191750000, v19, OS_LOG_TYPE_DEFAULT, "%@ - handleContactDeletionNotification saved new currentHistoryToken: %@", v29, 0x16u);
      }
    }

    else
    {
      [(NSUserDefaults *)self->_userDefaults setBool:1 forKey:@"kCDIntentDeletionPendingDeletesQueued"];
      v19 = +[_CDLogging spotlightReceiverChannel];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        *v29 = 138412290;
        v30 = v24;
        _os_log_impl(&dword_191750000, v19, OS_LOG_TYPE_DEFAULT, "%@ - handleContactDeletionNotification NOT saving currentHistoryToken, set pendingDeletesQueued = YES", v29, 0xCu);
      }
    }

    _Block_object_dispose(v27, 8);
    _Block_object_dispose(buf, 8);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)_deleteIntentsRelatedToContactIdentifiers:(id)identifiers
{
  v107 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v74 = objc_opt_new();
  BMLibraryStreamsPrunerClass = getBMLibraryStreamsPrunerClass();
  v5 = [MEMORY[0x1E695DFD8] setWithArray:identifiersCopy];
  [BMLibraryStreamsPrunerClass pruneWithDeletedContactIdentifiers:v5];

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v6 = identifiersCopy;
  v71 = [v6 countByEnumeratingWithState:&v91 objects:v106 count:16];
  if (v71)
  {
    v7 = *v92;
    v80 = *MEMORY[0x1E696A380];
    v8 = 0x1E696A000uLL;
    v73 = v6;
    v70 = *v92;
    do
    {
      v9 = 0;
      while (2)
      {
        if (*v92 != v7)
        {
          objc_enumerationMutation(v6);
        }

        v72 = v9;
        v10 = *(*(&v91 + 1) + 8 * v9);
        v11 = +[_DKIntentMetadataKey relatedContactIdentifiers];
        v12 = [_DKQuery structuredMetadataKeyPathForMetadataKey:v11];

        v13 = *(v8 + 2856);
        v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil", v12];
        v105[0] = v14;
        v75 = v12;
        v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K CONTAINS[n] %@", v12, v10];
        v105[1] = v15;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v105 count:2];
        v76 = [v13 andPredicateWithSubpredicates:v16];

        v17 = 0;
        v18 = 0;
        v19 = 0;
        do
        {
          v20 = objc_autoreleasePoolPush();
          v21 = +[_DKSystemEventStreams appIntentsStream];
          v104 = v21;
          v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v104 count:1];
          v23 = [_DKQuery startDateSortDescriptorAscending:1];
          v103 = v23;
          v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v103 count:1];
          v25 = [_DKEventQuery eventQueryWithPredicate:v76 eventStreams:v22 offset:v19 limit:100 sortDescriptors:v24];

          knowledgeStore = self->_knowledgeStore;
          v90 = 0;
          v27 = [(_DKKnowledgeQuerying *)knowledgeStore executeQuery:v25 error:&v90];
          v28 = v90;

          v29 = +[_CDLogging spotlightReceiverChannel];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            v59 = objc_opt_class();
            v60 = NSStringFromClass(v59);
            v61 = [v27 count];
            *buf = 138412802;
            v98 = v60;
            v99 = 2048;
            v100 = v61;
            v101 = 2112;
            v102 = v28;
            _os_log_debug_impl(&dword_191750000, v29, OS_LOG_TYPE_DEBUG, "%@ _deleteIntentsRelatedToContactIdentifiers fetched %lu intent events, with err: %@", buf, 0x20u);
          }

          if (v28)
          {

            objc_autoreleasePoolPop(v20);
            v6 = v73;
            v67 = v74;
            v62 = v73;
            v63 = v75;
            goto LABEL_40;
          }

          v77 = v25;
          context = v20;
          v79 = v19;
          v30 = objc_opt_new();
          v86 = 0u;
          v87 = 0u;
          v88 = 0u;
          v89 = 0u;
          v31 = v27;
          v32 = [v31 countByEnumeratingWithState:&v86 objects:v96 count:16];
          v17 = v31;
          if (v32)
          {
            v33 = v32;
            v34 = *v87;
            do
            {
              for (i = 0; i != v33; ++i)
              {
                if (*v87 != v34)
                {
                  objc_enumerationMutation(v17);
                }

                v36 = *(*(&v86 + 1) + 8 * i);
                v37 = objc_autoreleasePoolPush();
                metadata = [v36 metadata];
                v39 = +[_DKIntentMetadataKey interactionIdentifier];
                v40 = [metadata objectForKeyedSubscript:v39];

                source = [v36 source];
                bundleID = [source bundleID];

                if (v40)
                {
                  v43 = bundleID == 0;
                }

                else
                {
                  v43 = 1;
                }

                if (!v43)
                {
                  v44 = [v30 objectForKeyedSubscript:bundleID];

                  if (!v44)
                  {
                    v45 = objc_opt_new();
                    [v30 setObject:v45 forKeyedSubscript:bundleID];
                  }

                  v46 = [v30 objectForKeyedSubscript:bundleID];
                  [v46 addObject:v40];
                }

                objc_autoreleasePoolPop(v37);
              }

              v31 = v17;
              v33 = [v17 countByEnumeratingWithState:&v86 objects:v96 count:16];
            }

            while (v33);
          }

          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          allKeys = [v30 allKeys];
          v48 = [allKeys countByEnumeratingWithState:&v82 objects:v95 count:16];
          if (v48)
          {
            v49 = v48;
            v50 = *v83;
            do
            {
              for (j = 0; j != v49; ++j)
              {
                if (*v83 != v50)
                {
                  objc_enumerationMutation(allKeys);
                }

                v52 = *(*(&v82 + 1) + 8 * j);
                v53 = [v30 objectForKeyedSubscript:v52];
                v54 = +[_CDLogging spotlightReceiverChannel];
                if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
                {
                  v57 = objc_opt_class();
                  v58 = NSStringFromClass(v57);
                  *buf = 138412802;
                  v98 = v58;
                  v99 = 2112;
                  v100 = v52;
                  v101 = 2112;
                  v102 = v53;
                  _os_log_debug_impl(&dword_191750000, v54, OS_LOG_TYPE_DEBUG, "%@ _deleteIntentsRelatedToContactIdentifiers deleting for bundleId: %@ following identifiers: %@", buf, 0x20u);
                }

                spotlightRecorder = self->_spotlightRecorder;
                allObjects = [v53 allObjects];
                [(_CDSpotlightItemRecorder *)spotlightRecorder deleteInteractionsWithIdentifiers:allObjects bundleID:v52 protectionClass:v80];
              }

              v49 = [allKeys countByEnumeratingWithState:&v82 objects:v95 count:16];
            }

            while (v49);
          }

          objc_autoreleasePoolPop(context);
          v19 = v79 + 100;
          v18 = v77;
        }

        while ([v17 count] == 100);

        v9 = v72 + 1;
        v6 = v73;
        v7 = v70;
        v8 = 0x1E696A000;
        if (v72 + 1 != v71)
        {
          continue;
        }

        break;
      }

      v71 = [v73 countByEnumeratingWithState:&v91 objects:v106 count:16];
    }

    while (v71);
  }

  v62 = objc_opt_new();
  v63 = +[_CDLogging spotlightReceiverChannel];
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    v64 = objc_opt_class();
    v65 = NSStringFromClass(v64);
    v66 = [v6 count];
    v67 = v74;
    [v62 timeIntervalSinceDate:v74];
    *buf = 138412802;
    v98 = v65;
    v99 = 2048;
    v100 = v66;
    v101 = 2048;
    v102 = v68;
    _os_log_impl(&dword_191750000, v63, OS_LOG_TYPE_DEFAULT, "%@ _deleteIntentsRelatedToContactIdentifiers for %lu contact identifiers took %f seconds", buf, 0x20u);
  }

  else
  {
    v67 = v74;
  }

LABEL_40:

  v69 = *MEMORY[0x1E69E9840];
}

- (void)scheduleIntentsPruningXPCActivity
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_11(&dword_191750000, v2, v3, "%@ scheduleIntentsPruningXPCActivity scheduled XPC activity", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)cleanupPendingDeletedContacts
{
  v9 = *MEMORY[0x1E69E9840];
  [(_DKContactsPrivacyMaintainer *)self handleRecentlyDeletedContactsWithLimit:-1];
  [(NSUserDefaults *)self->_userDefaults setBool:0 forKey:@"kCDIntentDeletionPendingDeletesQueued"];
  v3 = +[_CDLogging spotlightReceiverChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_191750000, v3, OS_LOG_TYPE_DEFAULT, "%@ - cleanupPendingDeletedContacts setting pendingDeletesQueued = NO", &v7, 0xCu);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)handleRecentlyDeletedContactsWithLimit:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  OUTLINED_FUNCTION_1();
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_191750000, a3, OS_LOG_TYPE_ERROR, "%@ - handleContactDeletionNotification failed to fetch contacts enumerator with error: %@", v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end