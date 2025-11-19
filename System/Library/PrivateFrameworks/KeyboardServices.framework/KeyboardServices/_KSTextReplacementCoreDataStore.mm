@interface _KSTextReplacementCoreDataStore
+ (id)localCloudEntryFromMocObject:(id)a3;
- (BOOL)deleteTextReplacementsFromLocalStoreWithNames:(id)a3 excludeSavesToCloud:(BOOL)a4;
- (BOOL)deleteTextReplacementsWithPredicate:(id)a3;
- (BOOL)didMakeInitialPull;
- (BOOL)markDeletesForTextReplacementEntries:(id)a3;
- (BOOL)recordTextReplacementEntries:(id)a3;
- (NSManagedObjectContext)managedObjectContext;
- (NSManagedObjectModel)managedObjectModel;
- (NSPersistentStoreCoordinator)persistentStoreCoordinator;
- (_KSTextReplacementCoreDataStore)init;
- (_KSTextReplacementCoreDataStore)initWithDirectoryPath:(id)a3;
- (id)fetchTextReplacementEntry:(id)a3 context:(id)a4;
- (id)fetchTextReplacementWithUniqueName:(id)a3 context:(id)a4;
- (id)getCKFetchToken;
- (id)persistentStore;
- (id)queryEntriesWithPredicate:(id)a3 limit:(unint64_t)a4;
- (id)queryManagedObjectsWithPredicate:(id)a3 limit:(unint64_t)a4;
- (id)syncStateEntryShouldSave:(BOOL)a3 fetchToken:(id)a4;
- (id)textReplacementEntriesWithLimit:(unint64_t)a3;
- (unint64_t)countEntriesWithPredicate:(id)a3;
- (void)cleanup;
- (void)dealloc;
- (void)fetchAndMergeTextReplacementEntry:(id)a3 context:(id)a4;
@end

@implementation _KSTextReplacementCoreDataStore

- (BOOL)didMakeInitialPull
{
  v2 = self;
  v3 = [(_KSTextReplacementCoreDataStore *)self managedObjectContext];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53___KSTextReplacementCoreDataStore_didMakeInitialPull__block_invoke;
  v5[3] = &unk_2797F70F0;
  v5[4] = v2;
  v5[5] = &v6;
  [v3 performBlockAndWait:v5];
  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);

  return v2;
}

- (NSManagedObjectContext)managedObjectContext
{
  dispatch_assert_queue_not_V2(self->_queueMOC);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  queueMOC = self->_queueMOC;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55___KSTextReplacementCoreDataStore_managedObjectContext__block_invoke;
  v6[3] = &unk_2797F70F0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queueMOC, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSPersistentStoreCoordinator)persistentStoreCoordinator
{
  dispatch_assert_queue_not_V2(self->_queuePSC);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  queuePSC = self->_queuePSC;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61___KSTextReplacementCoreDataStore_persistentStoreCoordinator__block_invoke;
  v6[3] = &unk_2797F70F0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queuePSC, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSManagedObjectModel)managedObjectModel
{
  managedObjectModel = self->_managedObjectModel;
  if (managedObjectModel)
  {
    v3 = managedObjectModel;
  }

  else
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 URLForResource:dataModelName withExtension:@"mom"];

    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x277CBE450]) initWithContentsOfURL:v6];
      v8 = self->_managedObjectModel;
      self->_managedObjectModel = v7;
    }

    v3 = self->_managedObjectModel;
  }

  return v3;
}

- (_KSTextReplacementCoreDataStore)init
{
  v3 = +[_KSUtilities unitTestDirectoryPath];
  v4 = [(_KSTextReplacementCoreDataStore *)self initWithDirectoryPath:v3];

  return v4;
}

- (_KSTextReplacementCoreDataStore)initWithDirectoryPath:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = _KSTextReplacementCoreDataStore;
  v6 = [(_KSTextReplacementCoreDataStore *)&v15 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.keyboardServices.cdStore.queueMOC", v7);
    queueMOC = v6->_queueMOC;
    v6->_queueMOC = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.keyboardServices.cdStore.queuePSC", v10);
    queuePSC = v6->_queuePSC;
    v6->_queuePSC = v11;

    objc_storeStrong(&v6->_directoryPath, a3);
    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 addObserver:v6 selector:sel_cleanup name:@"_KSTRShouldCleanupResources" object:0];
  }

  return v6;
}

- (void)cleanup
{
  v3 = [(_KSTextReplacementCoreDataStore *)self managedObjectContext];
  v4 = [(_KSTextReplacementCoreDataStore *)self managedObjectContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42___KSTextReplacementCoreDataStore_cleanup__block_invoke;
  v6[3] = &unk_2797F6310;
  v7 = v3;
  v5 = v3;
  [v4 performBlockAndWait:v6];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = _KSTextReplacementCoreDataStore;
  [(_KSTextReplacementCoreDataStore *)&v4 dealloc];
}

- (id)persistentStore
{
  v2 = [(_KSTextReplacementCoreDataStore *)self persistentStoreCoordinator];
  v3 = [v2 persistentStores];
  v4 = [v3 firstObject];

  return v4;
}

- (BOOL)recordTextReplacementEntries:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        v11 = [(_KSTextReplacementCoreDataStore *)self managedObjectContext];
        [(_KSTextReplacementCoreDataStore *)self fetchAndMergeTextReplacementEntry:v10 context:v11];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  v12 = [(_KSTextReplacementCoreDataStore *)self persistentStore];

  if (v12)
  {
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x3032000000;
    v20[3] = __Block_byref_object_copy__2;
    v20[4] = __Block_byref_object_dispose__2;
    v21 = 0;
    v13 = [(_KSTextReplacementCoreDataStore *)self managedObjectContext];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __64___KSTextReplacementCoreDataStore_recordTextReplacementEntries___block_invoke;
    v17[3] = &unk_2797F70F0;
    v14 = v13;
    v18 = v14;
    v19 = v20;
    [v14 performBlockAndWait:v17];

    _Block_object_dispose(v20, 8);
  }

  objc_autoreleasePoolPop(v5);

  v15 = *MEMORY[0x277D85DE8];
  return v12 != 0;
}

- (void)fetchAndMergeTextReplacementEntry:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__2;
  v13[4] = __Block_byref_object_dispose__2;
  v14 = 0;
  if (v6)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __77___KSTextReplacementCoreDataStore_fetchAndMergeTextReplacementEntry_context___block_invoke;
    v8[3] = &unk_2797F7118;
    objc_copyWeak(&v12, &location);
    v9 = v6;
    v10 = v7;
    v11 = v13;
    [v10 performWithOptions:4 andBlock:v8];

    objc_destroyWeak(&v12);
  }

  _Block_object_dispose(v13, 8);

  objc_destroyWeak(&location);
}

- (id)fetchTextReplacementEntry:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x277CCAC30];
    v8 = [v5 shortcut];
    v9 = [v6 phrase];
    v10 = [v7 predicateWithFormat:@"shortcut == %@ AND phrase == %@ ", v8, v9];

    v11 = [(_KSTextReplacementCoreDataStore *)self queryManagedObjectsWithPredicate:v10 limit:0x7FFFFFFFLL];
  }

  else
  {
    v12 = KSCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_KSTextReplacementCoreDataStore fetchTextReplacementEntry:v12 context:?];
    }

    v11 = 0;
  }

  return v11;
}

- (id)fetchTextReplacementWithUniqueName:(id)a3 context:(id)a4
{
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"uniqueName == %@", a4, a3];
  v6 = [(_KSTextReplacementCoreDataStore *)self queryManagedObjectsWithPredicate:v5 limit:0x7FFFFFFFLL];

  return v6;
}

- (BOOL)markDeletesForTextReplacementEntries:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(_KSTextReplacementCoreDataStore *)self persistentStore];

  if (v6)
  {
    v7 = [v4 count];
    if (v7)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        v10 = [v4 objectAtIndexedSubscript:i];
        [v10 setWasDeleted:1];
        v11 = [v10 timestamp];

        if (!v11)
        {
          v12 = [MEMORY[0x277CBEAA8] date];
          [v10 setTimestamp:v12];
        }
      }
    }

    [(_KSTextReplacementCoreDataStore *)self recordTextReplacementEntries:v4];
  }

  objc_autoreleasePoolPop(v5);

  return v6 != 0;
}

- (BOOL)deleteTextReplacementsFromLocalStoreWithNames:(id)a3 excludeSavesToCloud:(BOOL)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v15 = a3;
  context = objc_autoreleasePoolPush();
  v16 = [(_KSTextReplacementCoreDataStore *)self persistentStore];

  if (v16)
  {
    objc_initWeak(&location, self);
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = v15;
    v6 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v6)
    {
      v7 = *v24;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v23 + 1) + 8 * i);
          v10 = [(_KSTextReplacementCoreDataStore *)self managedObjectContext];
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __101___KSTextReplacementCoreDataStore_deleteTextReplacementsFromLocalStoreWithNames_excludeSavesToCloud___block_invoke;
          v20[3] = &unk_2797F6CD8;
          objc_copyWeak(&v21, &location);
          v22 = a4;
          v20[4] = v9;
          [v10 performWithOptions:4 andBlock:v20];

          objc_destroyWeak(&v21);
        }

        v6 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v6);
    }

    v11 = [(_KSTextReplacementCoreDataStore *)self managedObjectContext];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __101___KSTextReplacementCoreDataStore_deleteTextReplacementsFromLocalStoreWithNames_excludeSavesToCloud___block_invoke_70;
    v18[3] = &unk_2797F7140;
    objc_copyWeak(&v19, &location);
    [v11 performBlockAndWait:v18];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
    objc_autoreleasePoolPop(context);
  }

  else
  {
    objc_autoreleasePoolPop(context);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v16 != 0;
}

- (BOOL)deleteTextReplacementsWithPredicate:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(_KSTextReplacementCoreDataStore *)self persistentStore];

  if (v6)
  {
    objc_initWeak(&location, self);
    v7 = [(_KSTextReplacementCoreDataStore *)self managedObjectContext];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __71___KSTextReplacementCoreDataStore_deleteTextReplacementsWithPredicate___block_invoke;
    v9[3] = &unk_2797F7168;
    v10 = @"TextReplacementEntry";
    objc_copyWeak(v12, &location);
    v12[1] = 0;
    v11 = v4;
    [v7 performWithOptions:4 andBlock:v9];

    objc_destroyWeak(v12);
    objc_destroyWeak(&location);
  }

  objc_autoreleasePoolPop(v5);

  return v6 != 0;
}

- (id)textReplacementEntriesWithLimit:(unint64_t)a3
{
  objc_initWeak(&location, self);
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [(_KSTextReplacementCoreDataStore *)self managedObjectContext];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67___KSTextReplacementCoreDataStore_textReplacementEntriesWithLimit___block_invoke;
  v11[3] = &unk_2797F7168;
  v11[4] = self;
  v13[1] = a3;
  objc_copyWeak(v13, &location);
  v7 = v5;
  v12 = v7;
  [v6 performWithOptions:4 andBlock:v11];

  v8 = v12;
  v9 = v7;

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);

  return v9;
}

- (unint64_t)countEntriesWithPredicate:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v5 = [(_KSTextReplacementCoreDataStore *)self managedObjectContext];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61___KSTextReplacementCoreDataStore_countEntriesWithPredicate___block_invoke;
  v9[3] = &unk_2797F7190;
  objc_copyWeak(&v12, &location);
  v6 = v4;
  v10 = v6;
  v11 = &v13;
  [v5 performWithOptions:4 andBlock:v9];

  v7 = v14[3];
  objc_destroyWeak(&v12);
  _Block_object_dispose(&v13, 8);
  objc_destroyWeak(&location);

  return v7;
}

- (id)queryEntriesWithPredicate:(id)a3 limit:(unint64_t)a4
{
  v5 = [(_KSTextReplacementCoreDataStore *)self queryManagedObjectsWithPredicate:a3 limit:a4];
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [(_KSTextReplacementCoreDataStore *)self managedObjectContext];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67___KSTextReplacementCoreDataStore_queryEntriesWithPredicate_limit___block_invoke;
  v13[3] = &unk_2797F71B8;
  v14 = v5;
  v8 = v6;
  v15 = v8;
  v9 = v5;
  [v7 performBlockAndWait:v13];

  v10 = v15;
  v11 = v8;

  return v8;
}

- (id)queryManagedObjectsWithPredicate:(id)a3 limit:(unint64_t)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__2;
  v20 = __Block_byref_object_dispose__2;
  v21 = [MEMORY[0x277CBEA60] array];
  objc_initWeak(&location, self);
  v7 = [(_KSTextReplacementCoreDataStore *)self managedObjectContext];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74___KSTextReplacementCoreDataStore_queryManagedObjectsWithPredicate_limit___block_invoke;
  v11[3] = &unk_2797F71E0;
  objc_copyWeak(v14, &location);
  v8 = v6;
  v14[1] = a4;
  v12 = v8;
  v13 = &v16;
  [v7 performWithOptions:4 andBlock:v11];

  v9 = v17[5];
  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v16, 8);

  return v9;
}

+ (id)localCloudEntryFromMocObject:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_KSTextReplacementEntry);
  v5 = [v3 phrase];
  [(_KSTextReplacementEntry *)v4 setPhrase:v5];

  v6 = [v3 shortcut];
  [(_KSTextReplacementEntry *)v4 setShortcut:v6];

  v7 = [(_KSTextReplacementEntry *)v4 phrase];

  if (!v7)
  {
    [(_KSTextReplacementEntry *)v4 setPhrase:&stru_286796E30];
  }

  v8 = [(_KSTextReplacementEntry *)v4 shortcut];

  if (!v8)
  {
    v9 = [(_KSTextReplacementEntry *)v4 phrase];
    [(_KSTextReplacementEntry *)v4 setShortcut:v9];
  }

  v10 = [v3 timestamp];
  [(_KSTextReplacementEntry *)v4 setTimestamp:v10];

  v11 = [v3 remoteRecordInfo];
  [(_KSTextReplacementEntry *)v4 setCloudData:v11];

  -[_KSTextReplacementEntry setNeedsSaveToCloud:](v4, "setNeedsSaveToCloud:", [v3 needsSaveToCloud]);
  -[_KSTextReplacementEntry setWasDeleted:](v4, "setWasDeleted:", [v3 wasDeleted]);
  v12 = [v3 uniqueName];
  v13 = [v12 length];

  if (v13)
  {
    v14 = [v3 uniqueName];
    [(_KSTextReplacementEntry *)v4 setCloudID:v14];
  }

  return v4;
}

- (id)getCKFetchToken
{
  v3 = [(_KSTextReplacementCoreDataStore *)self managedObjectContext];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50___KSTextReplacementCoreDataStore_getCKFetchToken__block_invoke;
  v6[3] = &unk_2797F70F0;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performBlockAndWait:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)syncStateEntryShouldSave:(BOOL)a3 fetchToken:(id)a4
{
  v6 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__2;
  v21 = __Block_byref_object_dispose__2;
  v22 = 0;
  objc_initWeak(&location, self);
  v7 = [(_KSTextReplacementCoreDataStore *)self managedObjectContext];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71___KSTextReplacementCoreDataStore_syncStateEntryShouldSave_fetchToken___block_invoke;
  v11[3] = &unk_2797F7208;
  objc_copyWeak(&v14, &location);
  v13 = &v17;
  v15 = a3;
  v8 = v6;
  v12 = v8;
  [v7 performBlockAndWait:v11];

  v9 = v18[5];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v17, 8);

  return v9;
}

- (void)fetchTextReplacementEntry:(os_log_t)log context:.cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[_KSTextReplacementCoreDataStore fetchTextReplacementEntry:context:]";
  _os_log_error_impl(&dword_2557E2000, log, OS_LOG_TYPE_ERROR, "%s  >>> entry is nil, returning", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end