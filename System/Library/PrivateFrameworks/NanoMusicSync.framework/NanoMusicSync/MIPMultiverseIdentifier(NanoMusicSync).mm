@interface MIPMultiverseIdentifier(NanoMusicSync)
+ (id)_multiverseIdentifiersWithPIDs:()NanoMusicSync groupingType:;
+ (id)_pidsFromSyncIDs:()NanoMusicSync containerClass:;
+ (id)midDataArrayFromAlbumSyncIDs:()NanoMusicSync;
+ (id)midDataArrayFromPlaylistSyncIDs:()NanoMusicSync;
+ (id)midDataFromAlbumPID:()NanoMusicSync;
+ (id)midDataFromPlaylistPID:()NanoMusicSync;
+ (id)midDataFromPlaylistSyncID:()NanoMusicSync;
+ (id)pidFromMIDData:()NanoMusicSync;
+ (id)pidsFromMIDDataArray:()NanoMusicSync;
@end

@implementation MIPMultiverseIdentifier(NanoMusicSync)

+ (id)midDataArrayFromAlbumSyncIDs:()NanoMusicSync
{
  v4 = a3;
  v5 = [self _pidsFromSyncIDs:v4 containerClass:objc_opt_class()];

  v6 = [self _multiverseIdentifiersWithPIDs:v5 groupingType:1];

  return v6;
}

+ (id)midDataArrayFromPlaylistSyncIDs:()NanoMusicSync
{
  v4 = a3;
  v5 = [self _pidsFromSyncIDs:v4 containerClass:objc_opt_class()];

  v6 = [self _multiverseIdentifiersWithPIDs:v5 groupingType:6];

  return v6;
}

+ (id)midDataFromPlaylistSyncID:()NanoMusicSync
{
  v12 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v11 = a3;
    v4 = MEMORY[0x277CBEA60];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v11 count:1];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = [self midDataArrayFromPlaylistSyncIDs:{v6, v11, v12}];
  firstObject = [v7 firstObject];

  v9 = *MEMORY[0x277D85DE8];

  return firstObject;
}

+ (id)midDataFromAlbumPID:()NanoMusicSync
{
  v12 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v11 = a3;
    v4 = MEMORY[0x277CBEA60];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v11 count:1];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = [self _multiverseIdentifiersWithPIDs:v6 groupingType:{1, v11, v12}];
  firstObject = [v7 firstObject];

  v9 = *MEMORY[0x277D85DE8];

  return firstObject;
}

+ (id)midDataFromPlaylistPID:()NanoMusicSync
{
  v12 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v11 = a3;
    v4 = MEMORY[0x277CBEA60];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v11 count:1];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = [self _multiverseIdentifiersWithPIDs:v6 groupingType:{6, v11, v12}];
  firstObject = [v7 firstObject];

  v9 = *MEMORY[0x277D85DE8];

  return firstObject;
}

+ (id)pidFromMIDData:()NanoMusicSync
{
  v12 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v11 = a3;
    v4 = MEMORY[0x277CBEA60];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v11 count:1];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = [self pidsFromMIDDataArray:{v6, v11, v12}];
  firstObject = [v7 firstObject];

  v9 = *MEMORY[0x277D85DE8];

  return firstObject;
}

+ (id)pidsFromMIDDataArray:()NanoMusicSync
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [objc_alloc(MEMORY[0x277D2B598]) initWithData:*(*(&v19 + 1) + 8 * v9)];
        defaultMediaLibrary = [MEMORY[0x277CD5E10] defaultMediaLibrary];
        v12 = [defaultMediaLibrary entityWithMultiverseIdentifier:v10];

        if (v12)
        {
          persistentID = [v12 persistentID];
          v14 = [MEMORY[0x277CCABB0] numberWithLongLong:persistentID];
          [v4 addObject:v14];

          v15 = NMLogForCategory(5);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 134218242;
            v24 = persistentID;
            v25 = 2114;
            v26 = v10;
            _os_log_impl(&dword_25B27B000, v15, OS_LOG_TYPE_INFO, "[NMSyncDefaults] Found PID %lld which matches MID %{public}@", buf, 0x16u);
          }
        }

        else
        {
          v15 = NMLogForCategory(5);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v24 = v10;
            _os_log_error_impl(&dword_25B27B000, v15, OS_LOG_TYPE_ERROR, "[NMSyncDefaults] Failed to create entity->PID for MID: %{public}@", buf, 0xCu);
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v7);
  }

  v16 = [v4 copy];
  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)_multiverseIdentifiersWithPIDs:()NanoMusicSync groupingType:
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v23;
    *&v9 = 138543618;
    v21 = v9;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v22 + 1) + 8 * v12);
        defaultMediaLibrary = [MEMORY[0x277CD5E10] defaultMediaLibrary];
        v15 = [defaultMediaLibrary multiverseIdentifierForCollectionWithPersistentID:objc_msgSend(v13 groupingType:{"longLongValue"), a4}];

        if (v15)
        {
          data = [v15 data];
          [v6 addObject:data];

          v17 = NMLogForCategory(5);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            *buf = v21;
            v27 = v15;
            v28 = 2114;
            v29 = v13;
            _os_log_impl(&dword_25B27B000, v17, OS_LOG_TYPE_INFO, "[NMSyncDefaults] Created MID %{public}@ for PID %{public}@", buf, 0x16u);
          }
        }

        else
        {
          v17 = NMLogForCategory(5);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            *buf = v21;
            v27 = v13;
            v28 = 2048;
            v29 = a4;
            _os_log_error_impl(&dword_25B27B000, v17, OS_LOG_TYPE_ERROR, "[NMSyncDefaults] Failed to create multiverse id for pid: %{public}@, type: %ld", buf, 0x16u);
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v10);
  }

  v18 = [v6 copy];
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (id)_pidsFromSyncIDs:()NanoMusicSync containerClass:
{
  v33[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (objc_opt_class() == a4)
  {
    v8 = MEMORY[0x277D2B4F8];
  }

  else
  {
    if (objc_opt_class() != a4)
    {
      v6 = 0;
      v7 = 0;
      goto LABEL_7;
    }

    v8 = MEMORY[0x277D2B488];
  }

  v6 = *v8;
  v7 = 1;
LABEL_7:
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  if (v7)
  {
    v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
    v11 = [MEMORY[0x277D2B5D8] predicateWithProperty:v6 values:v5];
    autoupdatingSharedLibrary = [MEMORY[0x277D2B5F8] autoupdatingSharedLibrary];
    v25 = v11;
    v13 = [a4 unrestrictedQueryWithLibrary:autoupdatingSharedLibrary predicate:v11 orderingTerms:0];

    v33[0] = v6;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __74__MIPMultiverseIdentifier_NanoMusicSync___pidsFromSyncIDs_containerClass___block_invoke;
    v30[3] = &unk_27993EA40;
    v15 = v10;
    v31 = v15;
    [v13 enumeratePersistentIDsAndProperties:v14 usingBlock:v30];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = v5;
    v17 = [v16 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v27;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [v15 objectForKeyedSubscript:*(*(&v26 + 1) + 8 * i)];
          if (v21)
          {
            [v9 addObject:v21];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v18);
    }
  }

  v22 = [v9 copy];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

@end