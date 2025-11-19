@interface KSTextReplacementServer
@end

@implementation KSTextReplacementServer

void __49___KSTextReplacementServer_textReplacementServer__block_invoke()
{
  v0 = objc_alloc_init(_KSTextReplacementServer);
  v1 = textReplacementServer_sharedInstance;
  textReplacementServer_sharedInstance = v0;
}

uint64_t __58___KSTextReplacementServer_initWithDatabaseDirectoryPath___block_invoke(uint64_t a1)
{
  [*(a1 + 32) registerForPushNotifications];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  if (DarwinNotifyCenter)
  {
    v3 = DarwinNotifyCenter;
    v4 = *(a1 + 32);
    v5 = getBYSetupAssistantExitedDarwinNotification();
    CFNotificationCenterAddObserver(v3, v4, bySetupAssistantExited, v5, 0, CFNotificationSuspensionBehaviorDrop);
  }

  v6 = *(a1 + 32);

  return [v6 scheduleSyncTask];
}

void __44___KSTextReplacementServer_scheduleSyncTask__block_invoke(uint64_t a1)
{
  v2 = [_KSSystemTask alloc];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44___KSTextReplacementServer_scheduleSyncTask__block_invoke_2;
  v5[3] = &unk_2797F7510;
  v5[4] = *(a1 + 32);
  v3 = [(_KSSystemTask *)v2 initWithName:@"com.apple.KeyboardServices.TextReplacementCKSyncTask" isPeriodic:1 period:86400 handler:v5];
  [(_KSSystemTask *)v3 setMaxRunTime:60.0];
  v4 = +[_KSTaskScheduler sharedInstance];
  [v4 registerTask:v3];
}

void __44___KSTextReplacementServer_scheduleSyncTask__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44___KSTextReplacementServer_scheduleSyncTask__block_invoke_3;
  v7[3] = &unk_2797F66D8;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __44___KSTextReplacementServer_scheduleSyncTask__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __44___KSTextReplacementServer_scheduleSyncTask__block_invoke_4;
  v2[3] = &unk_2797F74E8;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 requestSync:4 withCompletionBlock:v2];
}

void __44___KSTextReplacementServer_scheduleSyncTask__block_invoke_4(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = KSCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[_KSTextReplacementServer scheduleSyncTask]_block_invoke_4";
    _os_log_impl(&dword_2557E2000, v2, OS_LOG_TYPE_INFO, "%s  completed periodic sync task", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44___KSTextReplacementServer_scheduleSyncTask__block_invoke_43;
  v7[3] = &unk_2797F66D8;
  v7[4] = v4;
  v8 = v3;
  dispatch_async(v5, v7);

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __44___KSTextReplacementServer_scheduleSyncTask__block_invoke_43(uint64_t a1)
{
  v2 = [*(a1 + 32) textReplacementManager];
  [v2 recordSyncStatus];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __35___KSTextReplacementServer_cleanup__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) textReplacementManager];
  [v2 minimumUptimeRemaining];
  v4 = v3;

  if (v4 <= 0.0)
  {
    v11 = *(a1 + 32);
    v12 = *MEMORY[0x277D85DE8];

    [v11 _performCleanup];
  }

  else
  {
    v5 = KSCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
      *buf = 136315394;
      v15 = "[_KSTextReplacementServer cleanup]_block_invoke";
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_2557E2000, v5, OS_LOG_TYPE_INFO, "%s  not cleanin up, waiting remaining minimum uptime: %@", buf, 0x16u);
    }

    v7 = dispatch_time(0, (v4 * 1000000000.0));
    v8 = *(a1 + 32);
    v9 = *(v8 + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35___KSTextReplacementServer_cleanup__block_invoke_49;
    block[3] = &unk_2797F6310;
    block[4] = v8;
    dispatch_after(v7, v9, block);
    v10 = *MEMORY[0x277D85DE8];
  }
}

void __85___KSTextReplacementServer_addEntries_removeEntries_forClient_withCompletionHandler___block_invoke(uint64_t a1)
{
  v84 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [[ArraySlicer alloc] initWithArray:*(a1 + 32) sliceSize:100];
  v4 = [[ArraySlicer alloc] initWithArray:*(a1 + 40) sliceSize:100];
  v5 = [MEMORY[0x277CBEB18] array];
  v58 = [MEMORY[0x277CBEB18] array];
  v57 = [MEMORY[0x277CBEB38] dictionary];
  v61 = v3;
  v6 = [(ArraySlicer *)v3 nextSlice];
  v60 = v4;
  v7 = [(ArraySlicer *)v4 nextSlice];
  if (v6 | v7)
  {
    v8 = v7;
    v56 = v2;
    v59 = a1;
    while (1)
    {
      v63 = [MEMORY[0x277CBEB18] array];
      v9 = [MEMORY[0x277CBEB38] dictionary];
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v72 objects:v83 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v73;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v73 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v72 + 1) + 8 * i);
            v16 = [v15 cloudID];
            [v9 setObject:v15 forKeyedSubscript:v16];
          }

          v12 = [v10 countByEnumeratingWithState:&v72 objects:v83 count:16];
        }

        while (v12);
      }

      v62 = v10;

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      obj = v6;
      v17 = [obj countByEnumeratingWithState:&v68 objects:v82 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v69;
        v65 = v9;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v69 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v68 + 1) + 8 * j);
            v22 = [v21 priorValue];
            v23 = [v22 isEquivalentTo:v21];

            if (v23)
            {
              v24 = [v21 priorValue];
              v25 = [v24 cloudID];
              [v9 removeObjectForKey:v25];
            }

            else
            {
              v26 = [_KSTextReplacementHelper validateTextReplacement:v21];
              if (v26)
              {
                v27 = v26;
                v28 = [v21 priorValue];

                if (v28)
                {
                  v29 = KSCategory();
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
                  {
                    [v21 priorValue];
                    v31 = v30 = v5;
                    v32 = [v31 cloudID];
                    v33 = [v65 objectForKeyedSubscript:v32];
                    *buf = 136315394;
                    v77 = "[_KSTextReplacementServer addEntries:removeEntries:forClient:withCompletionHandler:]_block_invoke";
                    v78 = 2112;
                    v79 = v33;
                    _os_log_impl(&dword_2557E2000, v29, OS_LOG_TYPE_INFO, "%s  >>> Not removing entry: %@, as the replacement entry is not valid", buf, 0x16u);

                    v9 = v65;
                    v5 = v30;
                  }

                  v34 = [v21 priorValue];
                  v35 = [v34 cloudID];
                  [v9 removeObjectForKey:v35];
                }

                v36 = [_KSTextReplacementHelper errorWithCode:v27 forEntry:v21];
                [v5 addObject:v36];
              }

              else
              {
                [v63 addObject:v21];
              }

              v37 = [v21 cloudID];
              v38 = [v21 priorValue];
              v39 = [v38 cloudID];
              v40 = [v37 isEqualToString:v39];

              if (v40)
              {
                v41 = KSCategory();
                if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315138;
                  v77 = "[_KSTextReplacementServer addEntries:removeEntries:forClient:withCompletionHandler:]_block_invoke";
                  _os_log_impl(&dword_2557E2000, v41, OS_LOG_TYPE_INFO, "%s  >>> the modified entry's unique ID should not be the same as prior, changing", buf, 0xCu);
                }

                v42 = [v21 uniqueID];
                [v21 setCloudID:v42];
              }

              [_KSTextReplacementHelper extractAggdMetricsForTextReplacement:v21];
              v9 = v65;
            }
          }

          v18 = [obj countByEnumeratingWithState:&v68 objects:v82 count:16];
        }

        while (v18);
      }

      a1 = v59;
      if ([*(v59 + 48) generation] != *(v59 + 72))
      {
        break;
      }

      v43 = [*(v59 + 56) textReplacementManager];

      if (!v43)
      {
        break;
      }

      v44 = KSCategory();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v45 = [v9 allValues];
        *buf = 136315650;
        v77 = "[_KSTextReplacementServer addEntries:removeEntries:forClient:withCompletionHandler:]_block_invoke";
        v78 = 2112;
        v79 = v63;
        v80 = 2112;
        v81 = v45;
        _os_log_impl(&dword_2557E2000, v44, OS_LOG_TYPE_INFO, "%s  >>> adding entries: %@, removing entries %@", buf, 0x20u);
      }

      v46 = [*(v59 + 56) textReplacementManager];
      v47 = [v9 allValues];
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = __85___KSTextReplacementServer_addEntries_removeEntries_forClient_withCompletionHandler___block_invoke_54;
      v66[3] = &unk_2797F69A8;
      v67 = v5;
      [v46 addEntries:v63 removeEntries:v47 withCompletionHandler:v66];

      v6 = [(ArraySlicer *)v61 nextSlice];

      v8 = [(ArraySlicer *)v60 nextSlice];

      if (!(v6 | v8))
      {
        v48 = 0;
        v2 = v56;
        goto LABEL_38;
      }
    }

    v50 = [(ArraySlicer *)v61 unconsumed];
    v51 = [(ArraySlicer *)v60 unconsumed];
    v49 = v57;
    if ([v50 count])
    {
      [v57 setObject:v50 forKeyedSubscript:@"_KSTextReplacementUpdateDidFailEntriesKey"];
    }

    if ([v51 count])
    {
      [v57 setObject:v51 forKeyedSubscript:@"_KSTextReplacementDeleteDidFailEntriesKey"];
    }

    v48 = 11;
    v2 = v56;
  }

  else
  {
    v48 = 0;
LABEL_38:
    v49 = v57;
  }

  if ([v5 count] || objc_msgSend(v58, "count"))
  {
    [v49 setObject:v5 forKeyedSubscript:@"_KSTextReplacementUpdateDidFailErrorsKey"];
    [v49 setObject:v58 forKeyedSubscript:@"_KSTextReplacementDeleteDidFailErrorsKey"];
    v48 = 11;
  }

  v52 = [MEMORY[0x277CCA9B8] errorWithDomain:@"KSTextReplacementErrorDomain" code:v48 userInfo:v49];
  (*(*(a1 + 64) + 16))();
  [*(a1 + 56) textReplacementManager];
  v54 = v53 = v49;
  [v54 requestSync:0 withCompletionBlock:&__block_literal_global_58];

  objc_autoreleasePoolPop(v2);
  v55 = *MEMORY[0x277D85DE8];
}

uint64_t __85___KSTextReplacementServer_addEntries_removeEntries_forClient_withCompletionHandler___block_invoke_54(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

void __44___KSTextReplacementServer_removeAllEntries__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) textReplacementManager];
  [v3 removeAllEntries];

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = [*(a1 + 32) textReplacementManager];
  [v6 requestSync:0 withCompletionBlock:&__block_literal_global_61];

  objc_autoreleasePoolPop(v2);
}

void __44___KSTextReplacementServer_removeAllEntries__block_invoke_2()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = KSCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v2 = 136315138;
    v3 = "[_KSTextReplacementServer removeAllEntries]_block_invoke_2";
    _os_log_impl(&dword_2557E2000, v0, OS_LOG_TYPE_INFO, "%s  >>> completed remove all TR entries", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

void __60___KSTextReplacementServer_requestSync_withCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) textReplacementManager];
  [v2 requestSync:*(a1 + 48) withCompletionBlock:*(a1 + 40)];
}

void __60___KSTextReplacementServer_textReplacementEntriesForClient___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) textReplacementManager];
  v3 = [v2 textReplacementEntries];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (![_KSTextReplacementHelper validateTextReplacement:v9, v11])
        {
          [*(a1 + 40) addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __62___KSTextReplacementServer_queryTextReplacementsWithCallback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) textReplacementManager];

  if (v2)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    v4 = [*(a1 + 32) textReplacementManager];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62___KSTextReplacementServer_queryTextReplacementsWithCallback___block_invoke_2;
    v7[3] = &unk_2797F6470;
    v8 = v3;
    v9 = *(a1 + 40);
    v5 = v3;
    [v4 queryTextReplacementsWithCallback:v7];
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);

    v6();
  }
}

void __62___KSTextReplacementServer_queryTextReplacementsWithCallback___block_invoke_2(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if (![_KSTextReplacementHelper validateTextReplacement:v10, v17])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v7);
  }

  [*(a1 + 32) timeIntervalSinceNow];
  v12 = v11;
  v13 = KSCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
    v15 = [MEMORY[0x277CCABB0] numberWithDouble:-v12];
    *buf = 136315650;
    v22 = "[_KSTextReplacementServer queryTextReplacementsWithCallback:]_block_invoke_2";
    v23 = 2112;
    v24 = v14;
    v25 = 2112;
    v26 = v15;
    _os_log_impl(&dword_2557E2000, v13, OS_LOG_TYPE_INFO, "%s  time spent reading %@ entries is %@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  v16 = *MEMORY[0x277D85DE8];
}

void __72___KSTextReplacementServer_queryTextReplacementsWithPredicate_callback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) textReplacementManager];

  if (v2)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    v4 = [*(a1 + 32) textReplacementManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __72___KSTextReplacementServer_queryTextReplacementsWithPredicate_callback___block_invoke_2;
    v8[3] = &unk_2797F6470;
    v9 = v3;
    v5 = *(a1 + 40);
    v10 = *(a1 + 48);
    v6 = v3;
    [v4 queryTextReplacementsWithPredicate:v5 callback:v8];
  }

  else
  {
    v7 = *(*(a1 + 48) + 16);

    v7();
  }
}

void __72___KSTextReplacementServer_queryTextReplacementsWithPredicate_callback___block_invoke_2(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if (![_KSTextReplacementHelper validateTextReplacement:v10, v17])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v7);
  }

  [*(a1 + 32) timeIntervalSinceNow];
  v12 = v11;
  v13 = KSCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
    v15 = [MEMORY[0x277CCABB0] numberWithDouble:-v12];
    *buf = 136315650;
    v22 = "[_KSTextReplacementServer queryTextReplacementsWithPredicate:callback:]_block_invoke_2";
    v23 = 2112;
    v24 = v14;
    v25 = 2112;
    v26 = v15;
    _os_log_impl(&dword_2557E2000, v13, OS_LOG_TYPE_INFO, "%s  time spent reading %@ entries is %@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
  v16 = *MEMORY[0x277D85DE8];
}

void __63___KSTextReplacementServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setExportedObject:0];
}

void __65___KSTextReplacementServer_connection_didReceiveIncomingMessage___block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = KSCategory();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v2 = 136315138;
    v3 = "[_KSTextReplacementServer connection:didReceiveIncomingMessage:]_block_invoke";
    _os_log_impl(&dword_2557E2000, v0, OS_LOG_TYPE_INFO, "%s  >>> PUSH notif received, completed pulling TR entries", &v2, 0xCu);
  }

  v1 = *MEMORY[0x277D85DE8];
}

@end