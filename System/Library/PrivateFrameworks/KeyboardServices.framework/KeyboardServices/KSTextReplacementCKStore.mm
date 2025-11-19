@interface KSTextReplacementCKStore
@end

@implementation KSTextReplacementCKStore

void __61___KSTextReplacementCKStore_importSampleShortcutsIfNecessary__block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = +[_KSUtilities userDefaultsSuiteName];
  v4 = [v2 initWithSuiteName:v3];

  if (([v4 BOOLForKey:@"KSSampleShortcutWasImported_CK"] & 1) == 0)
  {
    v5 = +[_KSTextReplacementHelper sampleShortcut];
    v6 = *(a1 + 32);
    v11[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __61___KSTextReplacementCKStore_importSampleShortcutsIfNecessary__block_invoke_2;
    v9[3] = &unk_2797F69A8;
    v10 = v4;
    [v6 addEntries:v7 removeEntries:0 withCompletionHandler:v9];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __67___KSTextReplacementCKStore_queryCloudIfFirstPullOrAccountChanged___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained coreDataStore];
  v4 = [v3 didMakeInitialPull];

  if ((queryCloudIfFirstPullOrAccountChanged__pendingSync & 1) == 0 && !v4 || *(a1 + 48) == 1)
  {
    queryCloudIfFirstPullOrAccountChanged__pendingSync = 1;
    v5 = objc_loadWeakRetained((a1 + 40));
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __67___KSTextReplacementCKStore_queryCloudIfFirstPullOrAccountChanged___block_invoke_2;
    v6[3] = &unk_2797F6498;
    v6[4] = *(a1 + 32);
    [v5 requestSync:4 withCompletionBlock:v6];
  }
}

void __67___KSTextReplacementCKStore_queryCloudIfFirstPullOrAccountChanged___block_invoke_2(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = KSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[_KSTextReplacementCKStore queryCloudIfFirstPullOrAccountChanged:]_block_invoke_2";
    _os_log_impl(&dword_2557E2000, v2, OS_LOG_TYPE_INFO, "%s  >>> Finished pulling remote entries for the first fetch", &v4, 0xCu);
  }

  dispatch_async(*(*(a1 + 32) + 16), &__block_literal_global_2);
  v3 = *MEMORY[0x277D85DE8];
}

void __46___KSTextReplacementCKStore_accountDidChange___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) == 1)
  {
    v2 = KSCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[_KSTextReplacementCKStore accountDidChange:]_block_invoke";
      _os_log_impl(&dword_2557E2000, v2, OS_LOG_TYPE_DEFAULT, "%s  >>> User has logged out of the account, removing local entries", &v9, 0xCu);
    }

    [*(a1 + 32) removeAllEntries];
    v3 = objc_alloc(MEMORY[0x277CBEBD0]);
    v4 = +[_KSUtilities userDefaultsSuiteName];
    v5 = [v3 initWithSuiteName:v4];

    [v5 setBool:0 forKey:@"kDidMigrateToUUIDRecordName"];
    [v5 setBool:0 forKey:@"KSSampleShortcutWasImported_CK"];
    [v5 setBool:0 forKey:@"KSDidMigrateToCloudKitOnCloud"];
    [*(a1 + 32) importSampleShortcutsIfNecessary];
    [*(a1 + 32) setCkMigrationStatusOnCloud:0];

    goto LABEL_9;
  }

  if (*(a1 + 40) != 1)
  {
LABEL_9:
    v8 = *MEMORY[0x277D85DE8];
    return;
  }

  v6 = *(a1 + 32);
  v7 = *MEMORY[0x277D85DE8];

  [v6 queryCloudIfFirstPullOrAccountChanged:0];
}

void __45___KSTextReplacementCKStore_pushAllLocalData__block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = KSCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v2 = 136315138;
    v3 = "[_KSTextReplacementCKStore pushAllLocalData]_block_invoke";
    _os_log_impl(&dword_2557E2000, v0, OS_LOG_TYPE_INFO, "%s  marked all local entries to be saved to cloud", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void __76___KSTextReplacementCKStore_addEntries_removeEntries_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) coreDataStore];
  v3 = [v2 markDeletesForTextReplacementEntries:*(a1 + 40)];

  v4 = [*(a1 + 32) coreDataStore];
  v5 = [v4 recordTextReplacementEntries:*(a1 + 48)];

  if (v3)
  {
    v6 = 0;
    if ((v5 & 1) == 0)
    {
LABEL_3:
      v7 = *(a1 + 48);
      goto LABEL_6;
    }
  }

  else
  {
    v6 = *(a1 + 40);
    if ((v5 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v10 = v7;
  v8 = [_KSTextReplacementHelper errorWithCode:-2 failedAdds:v7 failedDeletes:v6];
  (*(*(a1 + 56) + 16))();
  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 postNotificationName:@"_KSTRCKStoreDidReceiveChangesNotification" object:0];
}

void __45___KSTextReplacementCKStore_removeAllEntries__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) coreDataStore];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"TRUEPREDICATE"];
  [v2 deleteTextReplacementsWithPredicate:v3];

  v4 = [*(a1 + 32) coreDataStore];
  [v4 saveCKFetchToken:0];
}

uint64_t __67___KSTextReplacementCKStore_removeAllEntriesWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) coreDataStore];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"TRUEPREDICATE"];
  [v2 deleteTextReplacementsWithPredicate:v3];

  v4 = [*(a1 + 32) coreDataStore];
  [v4 saveCKFetchToken:0];

  v5 = *(*(a1 + 40) + 16);

  return v5();
}

void __51___KSTextReplacementCKStore_textReplacementEntries__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) coreDataStore];
  v2 = [v5 queryEntriesWithPredicate:*(a1 + 40) limit:10000];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __63___KSTextReplacementCKStore_queryTextReplacementsWithCallback___block_invoke(uint64_t a1)
{
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"wasDeleted == %@ || wasDeleted == nil", MEMORY[0x277CBEC28]];
  v2 = [*(a1 + 32) coreDataStore];
  v3 = [v2 queryEntriesWithPredicate:v7 limit:10000];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(*(a1 + 48) + 8) + 40);
  (*(*(a1 + 40) + 16))();
}

void __73___KSTextReplacementCKStore_queryTextReplacementsWithPredicate_callback___block_invoke(uint64_t a1)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCA920];
  v3 = *(a1 + 40);
  v12[0] = *(a1 + 32);
  v12[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v5 = [v2 andPredicateWithSubpredicates:v4];

  v6 = [*(a1 + 48) coreDataStore];
  v7 = [v6 queryEntriesWithPredicate:v5 limit:10000];
  v8 = *(*(a1 + 64) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *(*(*(a1 + 64) + 8) + 40);
  (*(*(a1 + 56) + 16))();

  v11 = *MEMORY[0x277D85DE8];
}

void __56___KSTextReplacementCKStore_pushMigrationStatusToCloud___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  if ([a3 count])
  {
    v5 = [v6 userInfo];
    NSLog(&cfstr_ErrorFailedToW.isa, v5);
  }
}

uint64_t __61___KSTextReplacementCKStore_requestSync_withCompletionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _updateSyncCount:*(*(*(a1 + 48) + 8) + 24) success:a2];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __61___KSTextReplacementCKStore_requestSync_withCompletionBlock___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) countLocalEntriesToBeSynced])
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 56);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __61___KSTextReplacementCKStore_requestSync_withCompletionBlock___block_invoke_3;
    v9[3] = &unk_2797F6E08;
    v9[4] = v2;
    v8 = *(a1 + 40);
    v4 = v8;
    v10 = v8;
    [v2 _requestSync:v3 completionBlock:v9];
  }

  else
  {
    v5 = KSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v12 = "[_KSTextReplacementCKStore requestSync:withCompletionBlock:]_block_invoke_2";
      _os_log_impl(&dword_2557E2000, v5, OS_LOG_TYPE_INFO, "%s  Nothing to sync", buf, 0xCu);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, 0);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __61___KSTextReplacementCKStore_requestSync_withCompletionBlock___block_invoke_3(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _updateSyncCount:*(*(*(a1 + 48) + 8) + 24) success:a2];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t __61___KSTextReplacementCKStore_requestSync_withCompletionBlock___block_invoke_93(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _updateSyncCount:*(*(*(a1 + 48) + 8) + 24) success:a2];
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __58___KSTextReplacementCKStore__requestSync_completionBlock___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 48) != 0;
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58___KSTextReplacementCKStore__requestSync_completionBlock___block_invoke_2;
  v5[3] = &unk_2797F6E80;
  v5[4] = v4;
  v7 = v3;
  v6 = *(a1 + 40);
  [v4 pullRemoteDataWithPriority:v3 completionHandler:v5];

  objc_autoreleasePoolPop(v2);
}

void __58___KSTextReplacementCKStore__requestSync_completionBlock___block_invoke_2(uint64_t a1, char a2)
{
  v3 = *(a1 + 48);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58___KSTextReplacementCKStore__requestSync_completionBlock___block_invoke_3;
  v5[3] = &unk_2797F6E58;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a2;
  [v4 pushLocalChangesWithPriority:v3 completionHandler:v5];
}

uint64_t __58___KSTextReplacementCKStore__requestSync_completionBlock___block_invoke_3(uint64_t a1, char a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, (*(a1 + 40) & a2));
  }

  return result;
}

void __76___KSTextReplacementCKStore_pushLocalChangesWithPriority_completionHandler___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v2 = KSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[_KSTextReplacementCKStore pushLocalChangesWithPriority:completionHandler:]_block_invoke";
    _os_log_impl(&dword_2557E2000, v2, OS_LOG_TYPE_INFO, "%s  pushing local changes", &buf, 0xCu);
  }

  v17 = [*(a1 + 32) queryUpdatedLocalEntries];
  v16 = [*(a1 + 32) queryDeletedEntries];
  if ([v17 count] || objc_msgSend(v16, "count", context))
  {
    v19 = [[ArraySlicer alloc] initWithArray:v17 sliceSize:400];
    v18 = [[ArraySlicer alloc] initWithArray:v16 sliceSize:400];
    v3 = dispatch_group_create();
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x2020000000;
    v31 = 1;
    v4 = [(ArraySlicer *)v19 nextSlice];
    v5 = [(ArraySlicer *)v18 nextSlice];
    while (v4 | v5)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v33 = 0x3032000000;
      v34 = __Block_byref_object_copy__0;
      v35 = __Block_byref_object_dispose__0;
      v36 = os_transaction_create();
      dispatch_group_enter(v3);
      v6 = [*(a1 + 32) cloudKitManager];
      v7 = *(a1 + 48);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __76___KSTextReplacementCKStore_pushLocalChangesWithPriority_completionHandler___block_invoke_96;
      v23[3] = &unk_2797F6EA8;
      v8 = v4;
      v24 = v8;
      v9 = v5;
      v10 = *(a1 + 32);
      v25 = v9;
      v26 = v10;
      v28 = v30;
      v27 = v3;
      p_buf = &buf;
      [v6 updateRecords:v8 deleteRecordIDs:v9 withPriority:v7 completionHandler:v23];

      _Block_object_dispose(&buf, 8);
      v4 = [(ArraySlicer *)v19 nextSlice];

      v5 = [(ArraySlicer *)v18 nextSlice];
    }

    v11 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76___KSTextReplacementCKStore_pushLocalChangesWithPriority_completionHandler___block_invoke_3;
    block[3] = &unk_2797F6ED0;
    v21 = *(a1 + 40);
    v22 = v30;
    dispatch_group_notify(v3, v11, block);

    _Block_object_dispose(v30, 8);
  }

  else
  {
    v13 = KSCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[_KSTextReplacementCKStore pushLocalChangesWithPriority:completionHandler:]_block_invoke";
      _os_log_impl(&dword_2557E2000, v13, OS_LOG_TYPE_INFO, "%s  no entries to push", &buf, 0xCu);
    }

    v14 = *(a1 + 40);
    if (v14)
    {
      (*(v14 + 16))(v14, 1);
    }
  }

  objc_autoreleasePoolPop(context);
  v12 = *MEMORY[0x277D85DE8];
}

void __76___KSTextReplacementCKStore_pushLocalChangesWithPriority_completionHandler___block_invoke_96(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v70 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  v10 = v9;
  if (a2)
  {
    v47 = v9;
    v48 = v8;
    v11 = [MEMORY[0x277CBEB58] set];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v50 = v7;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v63 objects:v69 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v64;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v64 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v63 + 1) + 8 * i) recordID];
          v18 = [v17 recordName];
          [v11 addObject:v18];
        }

        v14 = [v12 countByEnumeratingWithState:&v63 objects:v69 count:16];
      }

      while (v14);
    }

    v49 = a2;

    v19 = [MEMORY[0x277CBEB18] array];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v51 = a1;
    v20 = *(a1 + 32);
    v21 = [v20 countByEnumeratingWithState:&v59 objects:v68 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v60;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v60 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v59 + 1) + 8 * j);
          v26 = [v25 recordID];
          v27 = [v26 recordName];
          v28 = [v11 containsObject:v27];

          if ((v28 & 1) == 0)
          {
            [v19 addObject:v25];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v59 objects:v68 count:16];
      }

      while (v22);
    }

    v29 = [MEMORY[0x277CBEB18] array];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v30 = *(v51 + 40);
    v31 = [v30 countByEnumeratingWithState:&v55 objects:v67 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v56;
      do
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v56 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v55 + 1) + 8 * k);
          v36 = [v35 recordName];
          v37 = [v11 containsObject:v36];

          if ((v37 & 1) == 0)
          {
            v38 = [v35 recordName];
            [v29 addObject:v38];
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v55 objects:v67 count:16];
      }

      while (v32);
    }

    a1 = v51;
    v39 = [*(v51 + 48) localEntriesFromCloudEntries:v19];
    v40 = *(v51 + 48);
    v41 = *(v40 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76___KSTextReplacementCKStore_pushLocalChangesWithPriority_completionHandler___block_invoke_2;
    block[3] = &unk_2797F6930;
    block[4] = v40;
    v53 = v39;
    v54 = v29;
    v42 = v29;
    v43 = v39;
    dispatch_async(v41, block);
    a2 = v49;
    *(*(*(v51 + 64) + 8) + 24) = v49;

    v7 = v50;
    v10 = v47;
    v8 = v48;
  }

  dispatch_group_leave(*(a1 + 56));
  v44 = *(*(a1 + 72) + 8);
  v45 = *(v44 + 40);
  *(v44 + 40) = 0;

  [_KSTextReplacementHelper logAggdValueForSyncIsPull:0 success:a2];
  objc_autoreleasePoolPop(v10);

  v46 = *MEMORY[0x277D85DE8];
}

void __76___KSTextReplacementCKStore_pushLocalChangesWithPriority_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) coreDataStore];
  [v2 recordTextReplacementEntries:*(a1 + 40)];

  v3 = [*(a1 + 32) coreDataStore];
  [v3 deleteTextReplacementsFromLocalStoreWithNames:*(a1 + 48) excludeSavesToCloud:0];
}

uint64_t __76___KSTextReplacementCKStore_pushLocalChangesWithPriority_completionHandler___block_invoke_3(uint64_t result)
{
  v7 = *MEMORY[0x277D85DE8];
  if (*(result + 32))
  {
    v1 = result;
    v2 = KSCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "[_KSTextReplacementCKStore pushLocalChangesWithPriority:completionHandler:]_block_invoke_3";
      _os_log_impl(&dword_2557E2000, v2, OS_LOG_TYPE_INFO, "%s  completed uploading local changes", &v5, 0xCu);
    }

    v3 = *(*(*(v1 + 40) + 8) + 24);
    result = (*(*(v1 + 32) + 16))();
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void __74___KSTextReplacementCKStore_pullRemoteDataWithPriority_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setNumPullRequests:{objc_msgSend(*(a1 + 32), "numPullRequests") + 1}];
  v2 = [*(a1 + 32) coreDataStore];
  v3 = [v2 getCKFetchToken];

  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74___KSTextReplacementCKStore_pullRemoteDataWithPriority_completionHandler___block_invoke_2;
  v8[3] = &unk_2797F68B8;
  v6 = *(a1 + 40);
  v11 = *(a1 + 48);
  v8[4] = v4;
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_async(v5, v8);
}

void __74___KSTextReplacementCKStore_pullRemoteDataWithPriority_completionHandler___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = KSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[_KSTextReplacementCKStore pullRemoteDataWithPriority:completionHandler:]_block_invoke_2";
    _os_log_impl(&dword_2557E2000, v2, OS_LOG_TYPE_INFO, "%s  Pulling remote data", buf, 0xCu);
  }

  v3 = objc_autoreleasePoolPush();
  v4 = [*(a1 + 32) cloudKitManager];
  v5 = *(a1 + 56);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74___KSTextReplacementCKStore_pullRemoteDataWithPriority_completionHandler___block_invoke_99;
  v8[3] = &unk_2797F6F48;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v10 = v5;
  v9 = *(a1 + 48);
  [v4 fetchRecordsWithPriority:v5 changeToken:v6 completionHandler:v8];

  objc_autoreleasePoolPop(v3);
  v7 = *MEMORY[0x277D85DE8];
}

void __74___KSTextReplacementCKStore_pullRemoteDataWithPriority_completionHandler___block_invoke_99(uint64_t a1, void *a2, void *a3, void *a4, char a5, char a6, char a7)
{
  v49 = *MEMORY[0x277D85DE8];
  v28 = a2;
  v27 = a3;
  v13 = a4;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = __Block_byref_object_copy__0;
  v41[4] = __Block_byref_object_dispose__0;
  v42 = os_transaction_create();
  v14 = [v28 copy];
  v15 = [v27 copy];
  v16 = [*(a1 + 32) localEntriesFromCloudEntries:v14];
  v17 = KSCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v44 = "[_KSTextReplacementCKStore pullRemoteDataWithPriority:completionHandler:]_block_invoke";
    v45 = 2112;
    v46 = v16;
    v47 = 2112;
    v48 = v15;
    _os_log_impl(&dword_2557E2000, v17, OS_LOG_TYPE_INFO, "%s  >>> storing pulled records locally; added entries: %@, deleted: %@", buf, 0x20u);
  }

  v18 = *(a1 + 32);
  v19 = *(v18 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74___KSTextReplacementCKStore_pullRemoteDataWithPriority_completionHandler___block_invoke_101;
  block[3] = &unk_2797F6F20;
  v30 = v16;
  v31 = v18;
  v32 = v15;
  v33 = v13;
  v38 = a6;
  v39 = a5;
  v21 = *(a1 + 40);
  v20 = *(a1 + 48);
  v34 = v14;
  v37 = v20;
  v40 = a7;
  v35 = v21;
  v36 = v41;
  v22 = v14;
  v23 = v13;
  v24 = v15;
  v25 = v16;
  dispatch_async(v19, block);

  _Block_object_dispose(v41, 8);
  v26 = *MEMORY[0x277D85DE8];
}

void __74___KSTextReplacementCKStore_pullRemoteDataWithPriority_completionHandler___block_invoke_101(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) count])
  {
    v2 = [*(a1 + 40) coreDataStore];
    [v2 recordTextReplacementEntries:*(a1 + 32)];
  }

  if ([*(a1 + 48) count])
  {
    v3 = [*(a1 + 40) coreDataStore];
    [v3 deleteTextReplacementsFromLocalStoreWithNames:*(a1 + 48) excludeSavesToCloud:1];
  }

  v4 = [*(a1 + 40) coreDataStore];
  [v4 saveCKFetchToken:*(a1 + 56)];

  if ([*(a1 + 64) count] || objc_msgSend(*(a1 + 48), "count"))
  {
    dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_104);
  }

  v5 = KSCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v18 = "[_KSTextReplacementCKStore pullRemoteDataWithPriority:completionHandler:]_block_invoke";
    _os_log_impl(&dword_2557E2000, v5, OS_LOG_TYPE_INFO, "%s  completed saving pulled records", buf, 0xCu);
  }

  v6 = *(a1 + 40);
  v7 = *(v6 + 8);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74___KSTextReplacementCKStore_pullRemoteDataWithPriority_completionHandler___block_invoke_105;
  v12[3] = &unk_2797F6EF8;
  v15 = *(a1 + 96);
  v8 = *(a1 + 88);
  v12[4] = v6;
  v14 = v8;
  v13 = *(a1 + 72);
  v16 = *(a1 + 98);
  dispatch_async(v7, v12);
  v9 = *(*(a1 + 80) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;

  v11 = *MEMORY[0x277D85DE8];
}

void __74___KSTextReplacementCKStore_pullRemoteDataWithPriority_completionHandler___block_invoke_2_102()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"_KSTRCKStoreDidReceiveChangesNotification" object:0];
}

uint64_t __74___KSTextReplacementCKStore_pullRemoteDataWithPriority_completionHandler___block_invoke_105(uint64_t result)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(result + 56))
  {
    goto LABEL_10;
  }

  v1 = result;
  if (*(result + 57) == 1)
  {
    v2 = KSCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "[_KSTextReplacementCKStore pullRemoteDataWithPriority:completionHandler:]_block_invoke";
      _os_log_impl(&dword_2557E2000, v2, OS_LOG_TYPE_INFO, "%s  morecoming from cloudkit, pulling again", &v7, 0xCu);
    }

    result = [*(v1 + 32) pullRemoteDataWithPriority:*(v1 + 48) completionHandler:*(v1 + 40)];
    goto LABEL_10;
  }

  [_KSTextReplacementHelper logAggdValueForSyncIsPull:1 success:*(result + 58)];
  result = *(v1 + 40);
  if (!result)
  {
LABEL_10:
    v6 = *MEMORY[0x277D85DE8];
    return result;
  }

  v3 = *(v1 + 58);
  v4 = *(result + 16);
  v5 = *MEMORY[0x277D85DE8];

  return v4();
}

void __45___KSTextReplacementCKStore_recordSyncStatus__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) countLocalEntriesToBeSynced];
  v2 = MEMORY[0x277CCACA8];
  v5 = +[_KSTextReplacementHelper aggdPrefix];
  v6 = v5;
  if (v1)
  {
    v3 = @"%@.failedSyncDailyStatus";
  }

  else
  {
    v3 = @"%@.successfulSyncDailyStatus";
  }

  v4 = [v2 stringWithFormat:v3, v5];
  [_KSAggdLogger addValue:1 forScalarKey:v4];
}

void __53___KSTextReplacementCKStore_queryUpdatedLocalEntries__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) coreDataStore];
  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"needsSaveToCloud == TRUE AND (wasDeleted == %@ || wasDeleted == nil)", MEMORY[0x277CBEC28]];
  v3 = [v6 queryEntriesWithPredicate:v2 limit:10000];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __48___KSTextReplacementCKStore_queryDeletedEntries__block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) coreDataStore];
  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"wasDeleted == TRUE"];
  v3 = [v6 queryEntriesWithPredicate:v2 limit:10000];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

@end