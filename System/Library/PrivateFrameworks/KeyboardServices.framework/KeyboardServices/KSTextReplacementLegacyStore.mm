@interface KSTextReplacementLegacyStore
@end

@implementation KSTextReplacementLegacyStore

void __49___KSTextReplacementLegacyStore_initWithBaseURL___block_invoke(uint64_t a1)
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("com.apple.keyboardServices.legacyStore.workQueue", v2);
  v4 = initWithBaseURL__cdWorkQueueShared;
  initWithBaseURL__cdWorkQueueShared = v3;

  v5 = objc_alloc(MEMORY[0x277CBE450]);
  v6 = [*(a1 + 32) managedObjectModelURL];
  v9 = [v5 initWithContentsOfURL:v6];

  v7 = [objc_alloc(MEMORY[0x277CBE4D8]) initWithManagedObjectModel:v9];
  v8 = initWithBaseURL__pscShared;
  initWithBaseURL__pscShared = v7;
}

void __55___KSTextReplacementLegacyStore_minimumUptimeRemaining__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) persistentStoreDidLoadTime];
  [v3 timeIntervalSinceReferenceDate];
  *(*(*(a1 + 40) + 8) + 24) = 180.0 - fabs(v2);
}

void __40___KSTextReplacementLegacyStore_cleanup__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40___KSTextReplacementLegacyStore_cleanup__block_invoke_2;
  v7[3] = &unk_2797F6310;
  v3 = v2;
  v8 = v3;
  [v3 performBlockAndWait:v7];
  [*(a1 + 32) endMinimumUptime];
  [*(a1 + 32) unloadPersistentStore];
  v4 = [*(a1 + 32) persistentStore];

  if (!v4)
  {
    v5 = KSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v10 = "[_KSTextReplacementLegacyStore cleanup]_block_invoke";
      _os_log_impl(&dword_2557E2000, v5, OS_LOG_TYPE_INFO, "%s  Invalidaitng bird connection", buf, 0xCu);
    }

    softLinkBRDaemonConnectionInvalidate();
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __40___KSTextReplacementLegacyStore_cleanup__block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) hasChanges])
  {
    v2 = *(a1 + 32);
    v3 = 0;
    [v2 save:&v3];
  }
}

uint64_t __65___KSTextReplacementLegacyStore_importSampleShortcutsIfNecessary__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = KSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[_KSTextReplacementLegacyStore importSampleShortcutsIfNecessary]_block_invoke";
    _os_log_impl(&dword_2557E2000, v2, OS_LOG_TYPE_INFO, "%s  >>> finished importing sample shortcut", &v8, 0xCu);
  }

  v3 = objc_loadWeakRetained((a1 + 48));
  v4 = [v3 managedObjectContext];
  [v3 detectAndCleanDuplicatesWithContext:v4];

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setPendingSampleShortcutImport:0];

  result = [*(a1 + 32) setValue:*(a1 + 40) forKey:@"kDidInsertSampleShortcutForPeer"];
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

intptr_t __52___KSTextReplacementLegacyStore_prepareForMigration__block_invoke(uint64_t a1)
{
  [*(a1 + 32) loadPersistentStoreIfNecessary];
  [*(a1 + 32) runMaintenanceIncludeLocalVariations:1];
  v2 = *(a1 + 40);

  return dispatch_semaphore_signal(v2);
}

void __80___KSTextReplacementLegacyStore_addEntries_removeEntries_withCompletionHandler___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained managedObjectContext];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 64));
    [v4 loadPersistentStoreIfNecessary];

    v32 = [MEMORY[0x277CBEB18] array];
    v5 = [MEMORY[0x277CBEB18] array];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v6 = *(a1 + 32);
    v7 = [v6 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v38;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v38 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [_KSTextReplacementHelper transactionFromTextReplacementEntry:*(*(&v37 + 1) + 8 * i) forDelete:0];
          v12 = *(a1 + 48);
          v13 = [v11 valueToInsert];
          [v12 insertEntryWithValue:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v8);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v14 = *(a1 + 40);
    v15 = [v14 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v34;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v33 + 1) + 8 * j);
          v20 = [_KSTextReplacementHelper transactionFromTextReplacementEntry:v19 forDelete:1];
          v21 = [*(a1 + 48) _deleteTransaction:v20];
          if (v21)
          {
            v22 = [_KSTextReplacementHelper errorWithCode:-2 forEntry:v19];
            [v5 addObject:v22];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v16);
    }

    v23 = objc_loadWeakRetained((a1 + 64));
    [v23 setShouldUpdateTheCache:1];

    v24 = objc_loadWeakRetained((a1 + 64));
    v25 = [v24 save];

    if (v25)
    {
      v26 = v32;
      v27 = [_KSTextReplacementHelper multipleAddErrors:v32 removeErrors:v5];
    }

    else
    {
      v27 = [_KSTextReplacementHelper errorWithCode:-2 failedAdds:*(a1 + 32) failedDeletes:*(a1 + 40)];
      v29 = KSCategory();
      v26 = v32;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v44 = "[_KSTextReplacementLegacyStore addEntries:removeEntries:withCompletionHandler:]_block_invoke";
        _os_log_impl(&dword_2557E2000, v29, OS_LOG_TYPE_INFO, "%s  Failed to save to coredata store", buf, 0xCu);
      }
    }
  }

  else
  {
    v28 = KSCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v44 = "[_KSTextReplacementLegacyStore addEntries:removeEntries:withCompletionHandler:]_block_invoke";
      v45 = 1024;
      v46 = -2;
      _os_log_impl(&dword_2557E2000, v28, OS_LOG_TYPE_INFO, "%s  Replying with error = %i", buf, 0x12u);
    }

    v27 = [_KSTextReplacementHelper errorWithCode:-2 failedAdds:*(a1 + 32) failedDeletes:*(a1 + 40)];
  }

  v30 = [MEMORY[0x277CCAB98] defaultCenter];
  [v30 postNotificationName:@"_KSTRLegacyStoreDidImportChangesNotification" object:0];

  (*(*(a1 + 56) + 16))();
  v31 = *MEMORY[0x277D85DE8];
}

uint64_t __65___KSTextReplacementLegacyStore_requestSync_withCompletionBlock___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 48) | 4) == 4)
  {
    v2 = KSCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "[_KSTextReplacementLegacyStore requestSync:withCompletionBlock:]_block_invoke";
      _os_log_impl(&dword_2557E2000, v2, OS_LOG_TYPE_INFO, "%s  sync request due to maintainence / client, loading ubiquity", &v5, 0xCu);
    }

    [*(a1 + 32) loadPersistentStoreIfNecessary];
    if (*(a1 + 48) == 4)
    {
      [*(a1 + 32) runLegacyMigration];
      [*(a1 + 32) runMaintenanceIncludeLocalVariations:0];
      [*(a1 + 32) setShouldUpdateTheCache:1];
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    result = (*(result + 16))(result, 1);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void __49___KSTextReplacementLegacyStore_removeAllEntries__block_invoke(uint64_t a1)
{
  [*(a1 + 32) loadPersistentStoreIfNecessary];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"TRUEPREDICATE"];
  v4 = [v2 removeEntriesWithPredicate:v3];

  v5 = [*(a1 + 32) managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49___KSTextReplacementLegacyStore_removeAllEntries__block_invoke_2;
  v7[3] = &unk_2797F6310;
  v8 = v5;
  v6 = v5;
  [v6 performBlockAndWait:v7];
  [*(a1 + 32) setShouldUpdateTheCache:1];
}

void __60___KSTextReplacementLegacyStore_removeEntriesWithPredicate___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) deleteObject:*(*(&v14 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v8 = *(a1 + 48);
  v7 = a1 + 48;
  v9 = *(v7 - 8);
  v10 = *(v8 + 8);
  obj = *(v10 + 40);
  [v9 save:&obj];
  objc_storeStrong((v10 + 40), obj);
  if (*(*(*v7 + 8) + 40))
  {
    v11 = KSCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __60___KSTextReplacementLegacyStore_removeEntriesWithPredicate___block_invoke_cold_1(v7, v11);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __55___KSTextReplacementLegacyStore_textReplacementEntries__block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:1 selector:sel_compare_];
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v5 = [v2 entriesUsingSortDescriptors:v4];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *MEMORY[0x277D85DE8];
}

void __77___KSTextReplacementLegacyStore_queryTextReplacementsWithPredicate_callback___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) ubiquityStoreLoaded] & 1) != 0 || (objc_msgSend(*(a1 + 32), "shouldUpdateTheCache"))
  {
    goto LABEL_8;
  }

  v2 = [*(a1 + 40) predicateFormat];
  if (([v2 isEqualToString:@"TRUEPREDICATE"] & 1) == 0)
  {
    goto LABEL_7;
  }

  v3 = [*(a1 + 32) shouldDisableCaching];

  if (v3)
  {
LABEL_8:
    [*(a1 + 32) loadPersistentStoreIfNecessary];
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    v9 = [*(a1 + 32) entriesMatchingPredicate:*(a1 + 40) sortDescriptors:*(a1 + 48)];
    v2 = [v8 textReplacementEntriesFromManagedObjects:v9];

    v10 = KSCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v16 = "[_KSTextReplacementLegacyStore queryTextReplacementsWithPredicate:callback:]_block_invoke";
      _os_log_impl(&dword_2557E2000, v10, OS_LOG_TYPE_INFO, "%s  read entries from ubiquity store", buf, 0xCu);
    }

    if ([*(a1 + 32) shouldUpdateTheCache])
    {
      [*(a1 + 32) scheduleCacheUpdate:v2];
    }

    goto LABEL_12;
  }

  v4 = *(a1 + 32);
  v14 = 0;
  v2 = [v4 entriesFromCache:&v14];
  v5 = v14;
  if (v5)
  {
    v6 = v5;
    [*(a1 + 32) setShouldUpdateTheCache:1];

LABEL_7:
    goto LABEL_8;
  }

  v12 = KSCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v2, "count")}];
    *buf = 136315394;
    v16 = "[_KSTextReplacementLegacyStore queryTextReplacementsWithPredicate:callback:]_block_invoke";
    v17 = 2112;
    v18 = v13;
    _os_log_impl(&dword_2557E2000, v12, OS_LOG_TYPE_INFO, "%s  read entries from cache: \n %@", buf, 0x16u);
  }

LABEL_12:
  (*(*(a1 + 56) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __53___KSTextReplacementLegacyStore_scheduleCacheUpdate___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) writeEntriesToCache:*(a1 + 40)];
  if (result)
  {
    [*(a1 + 32) setShouldUpdateTheCache:0];
    [*(a1 + 32) setDidScheduleCacheUpdate:0];
    [*(a1 + 32) save];
    v3 = *(a1 + 32);

    return [v3 unloadPersistentStore];
  }

  return result;
}

void __56___KSTextReplacementLegacyStore_iCloudAccountDidChange___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = KSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v14 = "[_KSTextReplacementLegacyStore iCloudAccountDidChange:]_block_invoke";
    _os_log_impl(&dword_2557E2000, v2, OS_LOG_TYPE_INFO, "%s  received icloud account change notif", buf, 0xCu);
  }

  v3 = CFPreferencesCopyAppValue(@"UserDictionaryUbiquityIdentityTokenCurrent", @"com.apple.Preferences");
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 ubiquityIdentityToken];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v3 == 0;
  }

  if (!v6)
  {
    v7 = KSCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v14 = "[_KSTextReplacementLegacyStore iCloudAccountDidChange:]_block_invoke";
      _os_log_impl(&dword_2557E2000, v7, OS_LOG_TYPE_INFO, "%s  detected account change, invalidating cache", buf, 0xCu);
    }

    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = [*(a1 + 32) cacheFilePath];
    v12 = 0;
    [v8 removeItemAtPath:v9 error:&v12];
    v10 = v12;
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __54___KSTextReplacementLegacyStore_insertEntryWithValue___block_invoke(uint64_t a1)
{
  v7 = [MEMORY[0x277CBE408] insertNewObjectForEntityForName:@"UserDictionaryEntry" inManagedObjectContext:*(a1 + 32)];
  v2 = [*(a1 + 40) phrase];
  [v7 setValue:v2 forKey:@"phrase"];

  v3 = [*(a1 + 40) shortcut];
  [v7 setValue:v3 forKey:@"shortcut"];

  v4 = MEMORY[0x277CCABB0];
  v5 = [*(a1 + 40) timestamp];
  [v5 timeIntervalSinceReferenceDate];
  v6 = [v4 numberWithDouble:?];

  [v7 setValue:v6 forKey:@"timestamp"];
}

void __37___KSTextReplacementLegacyStore_save__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasChanges])
  {
    v2 = *(a1 + 32);
    v6 = 0;
    v3 = [v2 save:&v6];
    v4 = v6;
    v5 = v4;
    *(*(*(a1 + 40) + 8) + 24) = v3;
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      [*(a1 + 32) reset];
    }

    else
    {
      NSLog(&cfstr_ErrorWritingTo.isa, v4);
      [*(a1 + 32) rollback];
    }
  }
}

void __74___KSTextReplacementLegacyStore_entriesMatchingPredicate_sortDescriptors___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBE428]);
  v3 = [*(a1 + 32) entityDescription];
  v4 = [v3 name];
  v5 = [v2 initWithEntityName:v4];

  [v5 setFetchLimit:10000];
  [v5 setFetchBatchSize:1000];
  if (*(a1 + 40))
  {
    [v5 setPredicate:?];
  }

  if (*(a1 + 48))
  {
    [v5 setSortDescriptors:?];
  }

  v6 = *(a1 + 56);
  v11 = 0;
  v7 = [v6 executeFetchRequest:v5 error:&v11];
  v8 = v11;
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
}

void __82___KSTextReplacementLegacyStore_persistentStoreDidImportUbiquitousContentChanges___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) persistentStore];

  if (v2)
  {
    NSLog(&cfstr_PersistentStor.isa);
    v3 = [*(a1 + 40) userInfo];
    v4 = [v3 objectForKey:*MEMORY[0x277CBE188]];

    if ([v4 count])
    {
      [*(a1 + 32) setImportedSinceMaintenance:{objc_msgSend(*(a1 + 32), "importedSinceMaintenance") + objc_msgSend(v4, "count")}];
      v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "importedSinceMaintenance")}];
      CFPreferencesSetAppValue(@"UserDictionaryImportedSinceMaintenance", v5, @"com.apple.Preferences");

      CFPreferencesAppSynchronize(@"com.apple.Preferences");
    }

    v6 = [*(a1 + 32) managedObjectContext];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __82___KSTextReplacementLegacyStore_persistentStoreDidImportUbiquitousContentChanges___block_invoke_2;
    v16[3] = &unk_2797F6310;
    v7 = v6;
    v17 = v7;
    [v7 performBlockAndWait:v16];
    [*(a1 + 32) performMaintenanceIfNecessary];
    [*(a1 + 32) setShouldUpdateTheCache:1];
    v8 = KSCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = MEMORY[0x277CCABB0];
      v10 = [*(a1 + 32) ubiquityStoreLoadStartTime];
      [v10 timeIntervalSinceNow];
      v12 = [v9 numberWithDouble:-v11];
      *buf = 136315394;
      v19 = "[_KSTextReplacementLegacyStore persistentStoreDidImportUbiquitousContentChanges:]_block_invoke";
      v20 = 2112;
      v21 = v12;
      _os_log_impl(&dword_2557E2000, v8, OS_LOG_TYPE_INFO, "%s  time to import changes since PS load request: %@", buf, 0x16u);
    }

    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 postNotificationName:@"_KSTRLegacyStoreDidImportChangesNotification" object:0];

    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 postNotificationName:@"_KSTRLegacyStoreDidImportUbiquitousChanges" object:0];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __59___KSTextReplacementLegacyStore_mergeShortcutsFromContext___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeFetchRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __59___KSTextReplacementLegacyStore_mergeShortcutsFromContext___block_invoke_2(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = *(*(*(a1 + 48) + 8) + 40);
  v2 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v2)
  {
    v3 = *v23;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v23 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v22 + 1) + 8 * i);
        v6 = [v5 objectForKey:@"shortcut"];
        v7 = [v5 objectForKey:@"phrase"];
        v8 = *(a1 + 32);
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __59___KSTextReplacementLegacyStore_mergeShortcutsFromContext___block_invoke_3;
        v15[3] = &unk_2797F7440;
        objc_copyWeak(&v21, (a1 + 64));
        v9 = v6;
        v16 = v9;
        v10 = v7;
        v17 = v10;
        v18 = *(a1 + 32);
        v11 = *(a1 + 40);
        v12 = *(a1 + 56);
        v19 = v11;
        v20 = v12;
        [v8 performBlockAndWait:v15];

        objc_destroyWeak(&v21);
      }

      v2 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v2);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __59___KSTextReplacementLegacyStore_mergeShortcutsFromContext___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = [WeakRetained _shouldMergeShortcut:*(a1 + 32) phrase:*(a1 + 40) intoContext:*(a1 + 48)];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 72));
    v5 = [v4 _mergeShortcut:*(a1 + 32) phrase:*(a1 + 40) fromContext:*(a1 + 56)];

    if (v5)
    {
      ++*(*(*(a1 + 64) + 8) + 24);
    }
  }
}

uint64_t __59___KSTextReplacementLegacyStore_mergeShortcutsFromContext___block_invoke_4(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v2 = *(a1 + 32);
    v3 = *(*(a1 + 56) + 8);
    obj = *(v3 + 40);
    v4 = [v2 save:&obj];
    objc_storeStrong((v3 + 40), obj);
  }

  else
  {
    v4 = 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v4;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    return [*(a1 + 32) reset];
  }

  NSLog(&cfstr_ErrorSavingAft.isa, *(*(*(a1 + 56) + 8) + 40));
  return [*(a1 + 32) rollback];
}

void __69___KSTextReplacementLegacyStore_detectAndCleanDuplicatesWithContext___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeFetchRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = *(*(*(a1 + 48) + 8) + 40);
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v13 objectForKey:@"count"];
        v15 = [v14 integerValue];

        if (v15 >= 2)
        {
          *(*(*(a1 + 64) + 8) + 24) = 1;
          v16 = [v13 objectForKey:@"shortcut"];
          v17 = [v13 objectForKey:@"phrase"];
          WeakRetained = objc_loadWeakRetained((a1 + 80));
          [WeakRetained _deleteDuplicatesOfShortcut:v16 phrase:v17 count:v15 withContext:*(a1 + 32)];

          ++*(*(*(a1 + 72) + 8) + 24);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v10);
  }

  NSLog(&cfstr_DeduplicationC.isa, *(*(*(a1 + 72) + 8) + 24));
  v19 = *MEMORY[0x277D85DE8];
}

void __55___KSTextReplacementLegacyStore_basePersistentStoreURL__block_invoke()
{
  v0 = MEMORY[0x277CBEBC0];
  v4 = +[_KSUtilities keyboardDirectory];
  v1 = [v4 stringByAppendingPathComponent:@"CloudUserDictionary.sqlite"];
  v2 = [v0 fileURLWithPath:v1];
  v3 = basePersistentStoreURL_baseURL;
  basePersistentStoreURL_baseURL = v2;
}

void __76___KSTextReplacementLegacyStore_persistentStoreCoordinatorStoresWillChange___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = KSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[_KSTextReplacementLegacyStore persistentStoreCoordinatorStoresWillChange:]_block_invoke";
    _os_log_impl(&dword_2557E2000, v2, OS_LOG_TYPE_INFO, "%s  Suspending user dictionary due to impending account change.", buf, 0xCu);
  }

  v3 = [*(a1 + 32) managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76___KSTextReplacementLegacyStore_persistentStoreCoordinatorStoresWillChange___block_invoke_371;
  v7[3] = &unk_2797F6310;
  v8 = v3;
  v4 = v3;
  [v4 performBlockAndWait:v7];
  v5 = [*(a1 + 32) workQueue];
  dispatch_suspend(v5);

  v6 = *MEMORY[0x277D85DE8];
}

void __75___KSTextReplacementLegacyStore_persistentStoreCoordinatorStoresDidChange___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setForceMaintenance:1];
  v2 = [*(a1 + 32) persistentStore];
  v3 = [v2 URL];
  v4 = [v3 absoluteString];

  v5 = [*(a1 + 32) persistentStore];

  v6 = *(a1 + 32);
  if (v5)
  {
    [v6 runMaintenanceIncludeLocalVariations:0];
  }

  else
  {
    [v6 loadPersistentStoreIfNecessary];
  }

  v7 = KSCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v15 = 136315394;
    v16 = "[_KSTextReplacementLegacyStore persistentStoreCoordinatorStoresDidChange:]_block_invoke";
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_2557E2000, v7, OS_LOG_TYPE_INFO, "%s  >>> current legacy store: %@", &v15, 0x16u);
  }

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 postNotificationName:@"_KSTRLegacyStoreDidImportChangesNotification" object:0];

  v9 = KSCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = [*(a1 + 32) ubiquityStoreLoadStartTime];
    [v11 timeIntervalSinceNow];
    v13 = [v10 numberWithDouble:-v12];
    v15 = 136315394;
    v16 = "[_KSTextReplacementLegacyStore persistentStoreCoordinatorStoresDidChange:]_block_invoke";
    v17 = 2112;
    v18 = v13;
    _os_log_impl(&dword_2557E2000, v9, OS_LOG_TYPE_INFO, "%s  time since PS load request: %@", &v15, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __60___KSTextReplacementLegacyStore_removeEntriesWithPredicate___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(*(*a1 + 8) + 40);
  v4 = 136315394;
  v5 = "[_KSTextReplacementLegacyStore removeEntriesWithPredicate:]_block_invoke";
  v6 = 2112;
  v7 = v2;
  _os_log_error_impl(&dword_2557E2000, a2, OS_LOG_TYPE_ERROR, "%s  ERROR!!! Failed to remove entrtries with error: %@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end