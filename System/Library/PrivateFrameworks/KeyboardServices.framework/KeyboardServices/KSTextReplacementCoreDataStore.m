@interface KSTextReplacementCoreDataStore
@end

@implementation KSTextReplacementCoreDataStore

void __55___KSTextReplacementCoreDataStore_managedObjectContext__block_invoke(uint64_t a1)
{
  v2 = +[_KSDeviceStateMonitor deviceStateMonitor];
  v3 = [v2 isDataAvailableForClassC];

  v4 = *(a1 + 32);
  v5 = v4[4];
  if (v3)
  {
    if (v5)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v5);
    }

    else
    {
      v14 = [v4 persistentStoreCoordinator];
      v10 = [*(a1 + 32) persistentStore];

      if (v10)
      {
        v11 = [objc_alloc(MEMORY[0x277CBE440]) initWithConcurrencyType:1];
        v12 = *(*(a1 + 40) + 8);
        v13 = *(v12 + 40);
        *(v12 + 40) = v11;

        [*(*(*(a1 + 40) + 8) + 40) setPersistentStoreCoordinator:v14];
        [*(*(*(a1 + 40) + 8) + 40) setMergePolicy:*MEMORY[0x277CBE1C8]];
      }

      objc_storeStrong((*(a1 + 32) + 32), *(*(*(a1 + 40) + 8) + 40));
    }
  }

  else
  {
    if (v5)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v5);
      v6 = *(a1 + 40);
      v7 = *(*(v6 + 8) + 40);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __55___KSTextReplacementCoreDataStore_managedObjectContext__block_invoke_2;
      v15[3] = &unk_2797F70C8;
      v15[4] = v6;
      [v7 performBlockAndWait:v15];
    }

    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;
  }
}

void __61___KSTextReplacementCoreDataStore_persistentStoreCoordinator__block_invoke(uint64_t a1)
{
  v60 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = v2[6];
  if (v3)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
    v4 = +[_KSDeviceStateMonitor deviceStateMonitor];
    v5 = [v4 isDataAvailableForClassC];

    if (v5)
    {
      goto LABEL_7;
    }

    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }

  else
  {
    v7 = [v2 managedObjectModel];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x277CBE4D8]) initWithManagedObjectModel:v7];
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }
  }

LABEL_7:
  v11 = [*(*(*(a1 + 40) + 8) + 40) persistentStores];
  v12 = [v11 count];

  if (!v12)
  {
    v13 = [*(a1 + 32) directoryPath];
    v14 = [v13 stringByAppendingPathComponent:@"TextReplacements.db"];

    [_KSUtilities createFileIfDoesNotExist:v14];
    v15 = [MEMORY[0x277CBEBC0] fileURLWithPath:v14 isDirectory:0];
    v16 = MEMORY[0x277CBEAC0];
    v17 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v18 = *MEMORY[0x277CBE1D8];
    v19 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v20 = [v16 dictionaryWithObjectsAndKeys:{v17, v18, v19, *MEMORY[0x277CBE178], 0}];

    v21 = *(*(*(a1 + 40) + 8) + 40);
    v22 = *MEMORY[0x277CBE2E8];
    v58 = 0;
    v23 = [v21 addPersistentStoreWithType:v22 configuration:0 URL:v15 options:v20 error:&v58];
    v24 = v58;
    v25 = v24;
    if (!v23)
    {
      v23 = [v24 domain];
      if (v23 == *MEMORY[0x277CBE2C8])
      {
        v27 = [v25 code];

        if (v27 != 11)
        {
          goto LABEL_11;
        }

        v28 = KSCategory();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          __61___KSTextReplacementCoreDataStore_persistentStoreCoordinator__block_invoke_cold_1();
        }

        v29 = *(*(*(a1 + 40) + 8) + 40);
        v57 = v25;
        v30 = [v29 destroyPersistentStoreAtURL:v15 withType:v22 options:0 error:&v57];
        v31 = v57;

        if (!v30)
        {
          v25 = v31;
          goto LABEL_11;
        }

        v47 = v20;
        v48 = v15;
        v49 = v14;
        v32 = [MEMORY[0x277CCAA00] defaultManager];
        v33 = [*(a1 + 32) directoryPath];
        v56 = v31;
        v34 = [v32 contentsOfDirectoryAtPath:v33 error:&v56];
        v25 = v56;

        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v23 = v34;
        v35 = [v23 countByEnumeratingWithState:&v52 objects:v59 count:16];
        v46 = v22;
        if (v35)
        {
          v36 = v35;
          v37 = *v53;
          do
          {
            v38 = 0;
            v39 = v25;
            do
            {
              if (*v53 != v37)
              {
                objc_enumerationMutation(v23);
              }

              v40 = *(*(&v52 + 1) + 8 * v38);
              v41 = [MEMORY[0x277CCAA00] defaultManager];
              v42 = [*(a1 + 32) directoryPath];
              v43 = [v42 stringByAppendingPathComponent:v40];
              v51 = v39;
              [v41 removeItemAtPath:v43 error:&v51];
              v25 = v51;

              ++v38;
              v39 = v25;
            }

            while (v36 != v38);
            v36 = [v23 countByEnumeratingWithState:&v52 objects:v59 count:16];
          }

          while (v36);
        }

        v14 = v49;
        [_KSUtilities createFileIfDoesNotExist:v49];
        v15 = [MEMORY[0x277CBEBC0] fileURLWithPath:v49 isDirectory:0];

        v44 = *(*(*(a1 + 40) + 8) + 40);
        v50 = 0;
        v20 = v47;
        v45 = [v44 addPersistentStoreWithType:v46 configuration:0 URL:v15 options:v47 error:&v50];
      }
    }

LABEL_11:
  }

  objc_storeStrong((*(a1 + 32) + 48), *(*(*(a1 + 40) + 8) + 40));
  v26 = *MEMORY[0x277D85DE8];
}

void __42___KSTextReplacementCoreDataStore_cleanup__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasChanges])
  {
    v2 = *(a1 + 32);
    v4 = 0;
    [v2 save:&v4];
    v3 = v4;
    [*(a1 + 32) reset];
  }
}

uint64_t __64___KSTextReplacementCoreDataStore_recordTextReplacementEntries___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasChanges])
  {
    v2 = *(a1 + 32);
    v3 = *(*(a1 + 40) + 8);
    obj = *(v3 + 40);
    [v2 save:&obj];
    objc_storeStrong((v3 + 40), obj);
    if (*(*(*(a1 + 40) + 8) + 40))
    {
      v4 = KSCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __64___KSTextReplacementCoreDataStore_recordTextReplacementEntries___block_invoke_cold_1(a1 + 40);
      }
    }
  }

  return [*(a1 + 32) reset];
}

void __77___KSTextReplacementCoreDataStore_fetchAndMergeTextReplacementEntry_context___block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained fetchTextReplacementEntry:*(a1 + 32) context:*(a1 + 40)];

  v4 = [v3 count];
  if (!v4)
  {
    v32 = [MEMORY[0x277CBE408] insertNewObjectForEntityForName:@"TextReplacementEntry" inManagedObjectContext:*(a1 + 40)];
    v33 = *(*(a1 + 48) + 8);
    v34 = *(v33 + 40);
    *(v33 + 40) = v32;

    v21 = [*(a1 + 32) cloudID];
    [*(*(*(a1 + 48) + 8) + 40) setUniqueName:v21];
LABEL_18:

    goto LABEL_19;
  }

  v5 = v4;
  v6 = [v3 firstObject];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (v5 != 1)
  {
    for (i = 1; i != v5; ++i)
    {
      v10 = [v3 objectAtIndexedSubscript:i];
      v11 = [v10 uniqueName];
      v12 = [*(a1 + 32) cloudID];
      v13 = [v11 isEqualToString:v12];

      if (v13)
      {
        v14 = *(*(a1 + 48) + 8);
        v15 = *(v14 + 40);
        v16 = v10;
        v17 = *(v14 + 40);
        *(v14 + 40) = v16;
        v18 = v15;

        [v18 setWasDeleted:1];
      }

      [v10 setWasDeleted:1];
    }
  }

  if (([*(a1 + 32) needsSaveToCloud] & 1) == 0 && (objc_msgSend(*(a1 + 32), "wasDeleted") & 1) == 0)
  {
    v19 = [*(a1 + 32) cloudID];
    [*(*(*(a1 + 48) + 8) + 40) setUniqueName:v19];
  }

  v20 = [*(*(*(a1 + 48) + 8) + 40) timestamp];
  if (!v20)
  {
    goto LABEL_19;
  }

  v21 = v20;
  v22 = [*(a1 + 32) timestamp];
  if (!v22)
  {
    goto LABEL_18;
  }

  v23 = v22;
  v24 = [*(a1 + 32) wasDeleted];

  if (v24)
  {
LABEL_19:
    v35 = 1;
    goto LABEL_20;
  }

  v25 = [*(a1 + 32) timestamp];
  v26 = [*(*(*(a1 + 48) + 8) + 40) timestamp];
  [v25 timeIntervalSinceDate:v26];
  v28 = v27;

  if ([*(a1 + 32) needsSaveToCloud] && v28 < 2.0)
  {
    v29 = KSCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = [*(a1 + 32) cloudID];
      v31 = [*(*(*(a1 + 48) + 8) + 40) uniqueName];
      v52 = 136315650;
      v53 = "[_KSTextReplacementCoreDataStore fetchAndMergeTextReplacementEntry:context:]_block_invoke";
      v54 = 2112;
      v55 = v30;
      v56 = 2112;
      v57 = v31;
      _os_log_impl(&dword_2557E2000, v29, OS_LOG_TYPE_INFO, "%s  not saving as the entry is older than or same as existing record, entryToSaveID: %@, existing record: %@", &v52, 0x20u);
    }

    goto LABEL_35;
  }

  v35 = v28 > 2.0;
LABEL_20:
  v36 = [*(a1 + 32) phrase];

  if (!v36)
  {
    [*(a1 + 32) setPhrase:&stru_286796E30];
  }

  v37 = [*(a1 + 32) shortcut];
  if (!v37 || (v38 = v37, [*(a1 + 32) shortcut], v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "isEqualToString:", &stru_286796E30), v39, v38, v40))
  {
    v41 = [*(a1 + 32) phrase];
    [*(a1 + 32) setShortcut:v41];
  }

  v42 = [*(a1 + 32) timestamp];

  if (!v42)
  {
    v43 = [MEMORY[0x277CBEAA8] date];
    [*(a1 + 32) setTimestamp:v43];
  }

  v44 = [*(a1 + 32) shortcut];
  [*(*(*(a1 + 48) + 8) + 40) setShortcut:v44];

  v45 = [*(a1 + 32) phrase];
  [*(*(*(a1 + 48) + 8) + 40) setPhrase:v45];

  v46 = [*(a1 + 32) timestamp];
  [*(*(*(a1 + 48) + 8) + 40) setTimestamp:v46];

  [*(*(*(a1 + 48) + 8) + 40) setNeedsSaveToCloud:{objc_msgSend(*(a1 + 32), "needsSaveToCloud")}];
  if (([*(a1 + 32) needsSaveToCloud] & 1) != 0 || v35 | ((objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "wasDeleted") & 1) == 0))
  {
    [*(*(*(a1 + 48) + 8) + 40) setWasDeleted:{objc_msgSend(*(a1 + 32), "wasDeleted")}];
  }

  else
  {
    v47 = KSCategory();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      v52 = 136315138;
      v53 = "[_KSTextReplacementCoreDataStore fetchAndMergeTextReplacementEntry:context:]_block_invoke";
      _os_log_impl(&dword_2557E2000, v47, OS_LOG_TYPE_INFO, "%s  not clearing the deleted flag", &v52, 0xCu);
    }
  }

  v48 = [*(*(*(a1 + 48) + 8) + 40) uniqueName];
  v49 = [*(a1 + 32) cloudID];
  v50 = [v48 isEqualToString:v49];

  if (v50)
  {
    v29 = [*(a1 + 32) cloudData];
    [*(*(*(a1 + 48) + 8) + 40) setRemoteRecordInfo:v29];
LABEL_35:
  }

  v51 = *MEMORY[0x277D85DE8];
}

void __101___KSTextReplacementCoreDataStore_deleteTextReplacementsFromLocalStoreWithNames_excludeSavesToCloud___block_invoke(uint64_t a1)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBE428]);
  v3 = MEMORY[0x277CBE408];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained managedObjectContext];
  v6 = [v3 entityForName:@"TextReplacementEntry" inManagedObjectContext:v5];
  [v2 setEntity:v6];

  [v2 setIncludesSubentities:0];
  [v2 setIncludesPendingChanges:1];
  [v2 setIncludesPropertyValues:0];
  if (*(a1 + 48) == 1)
  {
    v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (needsSaveToCloud == TRUE AND wasDeleted == FALSE)"];
    v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"uniqueName == %@", *(a1 + 32)];
    v9 = MEMORY[0x277CCA920];
    v20[0] = v8;
    v20[1] = v7;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    v11 = [v9 andPredicateWithSubpredicates:v10];
    [v2 setPredicate:v11];
  }

  else
  {
    v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"uniqueName == %@", *(a1 + 32)];
    [v2 setPredicate:v7];
  }

  v12 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v2];
  [v12 setResultType:2];
  v13 = objc_loadWeakRetained((a1 + 40));
  v14 = [v13 managedObjectContext];
  v19 = 0;
  v15 = [v14 executeRequest:v12 error:&v19];
  v16 = v19;

  if (v16)
  {
    v17 = KSCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __101___KSTextReplacementCoreDataStore_deleteTextReplacementsFromLocalStoreWithNames_excludeSavesToCloud___block_invoke_cold_1(v16);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __101___KSTextReplacementCoreDataStore_deleteTextReplacementsFromLocalStoreWithNames_excludeSavesToCloud___block_invoke_70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained managedObjectContext];
  [v1 reset];
}

void __71___KSTextReplacementCoreDataStore_deleteTextReplacementsWithPredicate___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBE428]);
  v3 = MEMORY[0x277CBE408];
  v4 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = [WeakRetained managedObjectContext];
  v7 = [v3 entityForName:v4 inManagedObjectContext:v6];
  [v2 setEntity:v7];

  [v2 setIncludesSubentities:1];
  [v2 setIncludesPendingChanges:1];
  [v2 setIncludesPropertyValues:0];
  [v2 setFetchOffset:*(a1 + 56)];
  if (*(a1 + 40))
  {
    [v2 setPredicate:?];
  }

  v8 = [objc_alloc(MEMORY[0x277CBE360]) initWithFetchRequest:v2];
  [v8 setResultType:2];
  v9 = objc_loadWeakRetained((a1 + 48));
  v10 = [v9 managedObjectContext];
  v16 = 0;
  v11 = [v10 executeRequest:v8 error:&v16];
  v12 = v16;

  if (v12)
  {
    v13 = KSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __71___KSTextReplacementCoreDataStore_deleteTextReplacementsWithPredicate___block_invoke_cold_1(v12);
    }
  }

  v14 = objc_loadWeakRetained((a1 + 48));
  v15 = [v14 managedObjectContext];
  [v15 reset];
}

void __67___KSTextReplacementCoreDataStore_textReplacementEntriesWithLimit___block_invoke(uint64_t a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBE428]);
  v3 = MEMORY[0x277CBE408];
  v4 = [*(a1 + 32) managedObjectContext];
  v5 = [v3 entityForName:@"TextReplacementEntry" inManagedObjectContext:v4];
  [v2 setEntity:v5];

  [v2 setFetchLimit:*(a1 + 56)];
  [v2 setReturnsObjectsAsFaults:0];
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:0];
  v25[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  [v2 setSortDescriptors:v7];

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = [WeakRetained managedObjectContext];
  v23 = 0;
  v10 = [v9 executeFetchRequest:v2 error:&v23];
  v11 = v23;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v13)
  {
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(a1 + 40);
        v17 = [_KSTextReplacementCoreDataStore localCloudEntryFromMocObject:*(*(&v19 + 1) + 8 * v15)];
        [v16 addObject:v17];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v13);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __61___KSTextReplacementCoreDataStore_countEntriesWithPredicate___block_invoke(uint64_t a1)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBE428]);
  v3 = MEMORY[0x277CBE408];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained managedObjectContext];
  v6 = [v3 entityForName:@"TextReplacementEntry" inManagedObjectContext:v5];
  [v2 setEntity:v6];

  [v2 setPredicate:*(a1 + 32)];
  v7 = objc_loadWeakRetained((a1 + 48));
  v8 = [v7 managedObjectContext];
  v12[0] = 0;
  v9 = [v8 countForFetchRequest:v2 error:v12];
  v10 = v12[0];
  *(*(*(a1 + 40) + 8) + 24) = v9;

  v11 = *MEMORY[0x277D85DE8];
}

void __67___KSTextReplacementCoreDataStore_queryEntriesWithPredicate_limit___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [_KSTextReplacementCoreDataStore localCloudEntryFromMocObject:*(*(&v10 + 1) + 8 * v6), v10];
        [v7 addObject:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __74___KSTextReplacementCoreDataStore_queryManagedObjectsWithPredicate_limit___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBE428]);
  v3 = MEMORY[0x277CBE408];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained managedObjectContext];
  v6 = [v3 entityForName:@"TextReplacementEntry" inManagedObjectContext:v5];
  [v2 setEntity:v6];

  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:0];
  v17[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [v2 setSortDescriptors:v8];

  [v2 setPredicate:*(a1 + 32)];
  [v2 setFetchLimit:*(a1 + 56)];
  [v2 setFetchBatchSize:500];
  v9 = objc_loadWeakRetained((a1 + 48));
  v10 = [v9 managedObjectContext];
  v16[0] = 0;
  v11 = [v10 executeFetchRequest:v2 error:v16];
  v12 = v16[0];
  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v11;

  v15 = *MEMORY[0x277D85DE8];
}

void __50___KSTextReplacementCoreDataStore_getCKFetchToken__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) syncStateEntryShouldSave:0 fetchToken:0];
  v2 = [v5 fetchChangeToken];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __53___KSTextReplacementCoreDataStore_didMakeInitialPull__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) syncStateEntryShouldSave:0 fetchToken:0];
  v2 = [v3 fetchChangeToken];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

void __71___KSTextReplacementCoreDataStore_syncStateEntryShouldSave_fetchToken___block_invoke(uint64_t a1)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBE428]);
  v3 = MEMORY[0x277CBE408];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained managedObjectContext];
  v6 = [v3 entityForName:@"TRCloudKitSyncState" inManagedObjectContext:v5];
  [v2 setEntity:v6];

  v7 = objc_loadWeakRetained((a1 + 48));
  v8 = [v7 managedObjectContext];
  v21[0] = 0;
  v9 = [v8 executeFetchRequest:v2 error:v21];
  v10 = v21[0];
  v11 = [v9 firstObject];
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v14 = MEMORY[0x277CBE408];
    v15 = objc_loadWeakRetained((a1 + 48));
    v16 = [v15 managedObjectContext];
    v17 = [v14 insertNewObjectForEntityForName:@"TRCloudKitSyncState" inManagedObjectContext:v16];
    v18 = *(*(a1 + 40) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;
  }

  if (*(a1 + 56) == 1)
  {
    [*(*(*(a1 + 40) + 8) + 40) setFetchChangeToken:*(a1 + 32)];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __61___KSTextReplacementCoreDataStore_persistentStoreCoordinator__block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(&dword_2557E2000, v0, OS_LOG_TYPE_ERROR, "%s  ERROR! Could not access coredata store, %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __64___KSTextReplacementCoreDataStore_recordTextReplacementEntries___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [*(*(*a1 + 8) + 40) userInfo];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_2557E2000, v2, v3, "%s  >>> !!!ERROR: failed to save records with error: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __101___KSTextReplacementCoreDataStore_deleteTextReplacementsFromLocalStoreWithNames_excludeSavesToCloud___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 userInfo];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_2557E2000, v2, v3, "%s  ERROR! Failed to delete: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __71___KSTextReplacementCoreDataStore_deleteTextReplacementsWithPredicate___block_invoke_cold_1(void *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = [a1 userInfo];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5(&dword_2557E2000, v2, v3, "%s  ERROR! Failed to delete: %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

void __74___KSTextReplacementCoreDataStore_queryManagedObjectsWithPredicate_limit___block_invoke_cold_1(void *a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 136315650;
  OUTLINED_FUNCTION_0(a1, a2, a3);
  _os_log_error_impl(&dword_2557E2000, v5, OS_LOG_TYPE_ERROR, "%s  Querying records failed with error : %@, exception %@", v4, 0x20u);
}

void __71___KSTextReplacementCoreDataStore_syncStateEntryShouldSave_fetchToken___block_invoke_cold_1(void *a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 136315650;
  OUTLINED_FUNCTION_0(a1, a2, a3);
  _os_log_error_impl(&dword_2557E2000, v5, OS_LOG_TYPE_ERROR, "%s  Querying records failed with error : %@, exception %@", v4, 0x20u);
}

@end