@interface FCPuzzleTypeSettings
+ (id)commandsToMergeLocalDataToCloud:(id)a3;
- (FCPuzzleTypeSettings)initWithStore:(id)a3 delegate:(id)a4;
- (id)_allEntriesInPuzzleTypeSettings;
- (id)_puzzleTypeSettingsEntryForPuzzleTypeID:(id *)a1;
- (id)allPuzzleTypeSettingsRecordNames;
- (id)allPuzzleTypeSettingsRecords;
- (id)lastSeenPuzzleIDsForPuzzleTypeID:(id)a3;
- (id)settingsDataForPuzzleTypeID:(id)a3;
- (void)handleSyncWithDeletedPuzzleTypeSettingsRecordName:(id)a3;
- (void)handleSyncWithPuzzleTypeSettingsRecord:(id)a3;
- (void)loadLocalCachesFromStore;
- (void)setSettingsData:(void *)a3 lastSeenPuzzleIDs:(void *)a4 puzzleTypeID:;
- (void)syncForPuzzleTypeID:(id)a3;
@end

@implementation FCPuzzleTypeSettings

- (void)loadLocalCachesFromStore
{
  if (self)
  {
    entriesLock = self->_entriesLock;
  }

  else
  {
    entriesLock = 0;
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __48__FCPuzzleTypeSettings_loadLocalCachesFromStore__block_invoke;
  v3[3] = &unk_1E7C36EA0;
  v3[4] = self;
  [(FCMTWriterLock *)entriesLock performWriteSync:v3];
}

void __48__FCPuzzleTypeSettings_loadLocalCachesFromStore__block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v24 = a1;
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_storeStrong((v3 + 16), v2);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[3];
  }

  v5 = v4;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = [v5 allKeys];
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        if (([objc_opt_class() isLocalStoreKeyInternal:v11] & 1) == 0)
        {
          objc_opt_class();
          v12 = [v5 objectForKey:v11];
          if (v12)
          {
            if (objc_opt_isKindOfClass())
            {
              v13 = v12;
            }

            else
            {
              v13 = 0;
            }
          }

          else
          {
            v13 = 0;
          }

          v14 = v13;

          if (v14)
          {
            v15 = [v14 objectForKey:@"puzzleTypeID"];
            if (v15)
            {
              v16 = v15;
              v17 = [v14 objectForKey:@"settingsData"];
              if (v17)
              {

                goto LABEL_21;
              }

              v18 = [v14 objectForKey:@"lastSeenPuzzleIDs"];

              if (v18)
              {
LABEL_21:
                v19 = [[FCPuzzleTypeSettingsEntry alloc] initWithEntryID:v11 dictionaryRepresentation:v14];
                if (v19)
                {
                  v20 = *(v24 + 32);
                  if (v20)
                  {
                    v20 = v20[2];
                  }

                  v21 = v20;
                  v22 = [v19 puzzleTypeID];
                  [v21 setObject:v19 forKey:v22];
                }
              }
            }
          }

          continue;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (FCPuzzleTypeSettings)initWithStore:(id)a3 delegate:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = FCPuzzleTypeSettings;
  v9 = [(FCPuzzleTypeSettings *)&v17 init];
  if (v9)
  {
    if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "store"];
      *buf = 136315906;
      v19 = "[FCPuzzleTypeSettings initWithStore:delegate:]";
      v20 = 2080;
      v21 = "FCPuzzleTypeSettings.m";
      v22 = 1024;
      v23 = 46;
      v24 = 2114;
      v25 = v16;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    objc_storeStrong(&v9->_localStore, a3);
    objc_storeWeak(&v9->_delegate, v8);
    v10 = objc_alloc_init(FCMTWriterLock);
    entriesLock = v9->_entriesLock;
    v9->_entriesLock = v10;

    v12 = [MEMORY[0x1E695DF90] dictionary];
    entriesByPuzzleTypeID = v9->_entriesByPuzzleTypeID;
    v9->_entriesByPuzzleTypeID = v12;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (id)commandsToMergeLocalDataToCloud:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v22 = [MEMORY[0x1E695DF70] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = [v3 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        if (([objc_opt_class() isLocalStoreKeyInternal:v9] & 1) == 0)
        {
          objc_opt_class();
          v10 = [v3 objectForKey:v9];
          if (v10)
          {
            if (objc_opt_isKindOfClass())
            {
              v11 = v10;
            }

            else
            {
              v11 = 0;
            }
          }

          else
          {
            v11 = 0;
          }

          v12 = v11;

          if (v12)
          {
            v13 = [v12 objectForKey:@"puzzleTypeID"];
            if (v13)
            {
              v14 = v13;
              v15 = [v12 objectForKey:@"settingsData"];
              if (v15)
              {

                goto LABEL_17;
              }

              v16 = [v12 objectForKey:@"lastSeenPuzzleIDs"];

              if (v16)
              {
LABEL_17:
                v17 = [[FCPuzzleTypeSettingsEntry alloc] initWithEntryID:v9 dictionaryRepresentation:v12];
                [v22 addObject:v17];
              }
            }
          }

          continue;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }

  v18 = [[FCModifyPuzzleTypeSettingsCommand alloc] initWithPuzzleTypeSettingsEntries:v22 merge:1];
  v27 = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (void)syncForPuzzleTypeID:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    p_isa = &self->super.isa;
    v4 = [(FCPuzzleTypeSettings *)&self->super.isa _puzzleTypeSettingsEntryForPuzzleTypeID:a3];
    if (v4)
    {
      v5 = [FCModifyPuzzleTypeSettingsCommand alloc];
      v9[0] = v4;
      v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
      v7 = [(FCModifyPuzzleTypeSettingsCommand *)v5 initWithPuzzleTypeSettingsEntries:v6 merge:1];

      if (p_isa)
      {
        p_isa = objc_loadWeakRetained(p_isa + 4);
      }

      [p_isa addModifyPuzzleTypeSettingsCommandToCommandQueue:v7];
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)_puzzleTypeSettingsEntryForPuzzleTypeID:(id *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__78;
    v15 = __Block_byref_object_dispose__78;
    v16 = 0;
    if (v3)
    {
      v5 = a1[1];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __64__FCPuzzleTypeSettings__puzzleTypeSettingsEntryForPuzzleTypeID___block_invoke;
      v8[3] = &unk_1E7C37138;
      v10 = &v11;
      v8[4] = a1;
      v9 = v4;
      [v5 performReadSync:v8];

      v6 = v12[5];
    }

    else
    {
      v6 = 0;
    }

    a1 = v6;
    _Block_object_dispose(&v11, 8);
  }

  return a1;
}

- (void)setSettingsData:(void *)a3 lastSeenPuzzleIDs:(void *)a4 puzzleTypeID:
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    [MEMORY[0x1E696AF00] isMainThread];
    if (v9)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ps-%@", v9];
      v11 = [*(a1 + 24) objectForKey:v10];
      v12 = v11;
      if (v11)
      {
        v13 = [v11 mutableCopy];
        v14 = v13;
        if (v7)
        {
          [v13 setObject:v7 forKeyedSubscript:@"settingsData"];
        }

        if (v8)
        {
          [v14 setObject:v8 forKeyedSubscript:@"lastSeenPuzzleIDs"];
        }

        v15 = [[FCPuzzleTypeSettingsEntry alloc] initWithEntryID:v10 dictionaryRepresentation:v14];

        if (v15)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v15 = [[FCPuzzleTypeSettingsEntry alloc] initWithEntryID:v10 puzzleTypeID:v9 settingsData:v7 lastSeenPuzzleIDs:v8];
        if (v15)
        {
LABEL_9:
          v16 = [(FCPuzzleTypeSettingsEntry *)v15 puzzleTypeID];

          if (!v16 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"puzzleTypeSettingsEntry must have a puzzleTypeID"];
            *buf = 136315906;
            v38 = "[FCPuzzleTypeSettingsEntry(FCPuzzleTypeSettings) dictionaryRepresentation]";
            v39 = 2080;
            v40 = "FCPuzzleTypeSettings.m";
            v41 = 1024;
            v42 = 341;
            v43 = 2114;
            v44 = v32;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
          }

          v17 = [MEMORY[0x1E695DF90] dictionary];
          v18 = [(FCPuzzleTypeSettingsEntry *)v15 puzzleTypeID];

          if (v18)
          {
            v19 = [(FCPuzzleTypeSettingsEntry *)v15 puzzleTypeID];
            [v17 setObject:v19 forKey:@"puzzleTypeID"];
          }

          v20 = [(FCPuzzleTypeSettingsEntry *)v15 settingsData];

          if (v20)
          {
            v21 = [(FCPuzzleTypeSettingsEntry *)v15 settingsData];
            [v17 setObject:v21 forKey:@"settingsData"];
          }

          v22 = [(FCPuzzleTypeSettingsEntry *)v15 lastSeenPuzzleIDs];

          if (v22)
          {
            v23 = [(FCPuzzleTypeSettingsEntry *)v15 lastSeenPuzzleIDs];
            [v17 setObject:v23 forKey:@"lastSeenPuzzleIDs"];
          }

          [*(a1 + 24) setObject:v17 forKey:v10];
          v24 = *(a1 + 8);
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __71__FCPuzzleTypeSettings_setSettingsData_lastSeenPuzzleIDs_puzzleTypeID___block_invoke;
          v33[3] = &unk_1E7C376A0;
          v33[4] = a1;
          v25 = v15;
          v34 = v25;
          v35 = v9;
          [v24 performWriteSync:v33];
          v26 = [FCModifyPuzzleTypeSettingsCommand alloc];
          v36 = v25;
          v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
          v28 = [(FCModifyPuzzleTypeSettingsCommand *)v26 initWithPuzzleTypeSettingsEntries:v27 merge:1];

          WeakRetained = objc_loadWeakRetained((a1 + 32));
          [WeakRetained addModifyPuzzleTypeSettingsCommandToCommandQueue:v28];

LABEL_24:
          goto LABEL_25;
        }
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "entry"];
        *buf = 136315906;
        v38 = "[FCPuzzleTypeSettings setSettingsData:lastSeenPuzzleIDs:puzzleTypeID:]";
        v39 = 2080;
        v40 = "FCPuzzleTypeSettings.m";
        v41 = 1024;
        v42 = 171;
        v43 = 2114;
        v44 = v31;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }

      goto LABEL_24;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "puzzleTypeID != nil"];
      *buf = 136315906;
      v38 = "[FCPuzzleTypeSettings setSettingsData:lastSeenPuzzleIDs:puzzleTypeID:]";
      v39 = 2080;
      v40 = "FCPuzzleTypeSettings.m";
      v41 = 1024;
      v42 = 138;
      v43 = 2114;
      v44 = v10;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
LABEL_25:
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

uint64_t __71__FCPuzzleTypeSettings_setSettingsData_lastSeenPuzzleIDs_puzzleTypeID___block_invoke(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v1 = v1[2];
  }

  return [v1 setObject:a1[5] forKey:a1[6]];
}

- (id)settingsDataForPuzzleTypeID:(id)a3
{
  v3 = [(FCPuzzleTypeSettings *)&self->super.isa _puzzleTypeSettingsEntryForPuzzleTypeID:a3];
  v4 = [v3 settingsData];

  return v4;
}

- (id)lastSeenPuzzleIDsForPuzzleTypeID:(id)a3
{
  v3 = [(FCPuzzleTypeSettings *)&self->super.isa _puzzleTypeSettingsEntryForPuzzleTypeID:a3];
  v4 = [v3 lastSeenPuzzleIDs];

  return v4;
}

- (void)handleSyncWithPuzzleTypeSettingsRecord:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"puzzleTypeID"];
  v27 = [v4 objectForKeyedSubscript:@"settingsData"];
  v6 = [v4 objectForKeyedSubscript:@"lastSeenPuzzleIDs"];
  if (self)
  {
    localStore = self->_localStore;
  }

  else
  {
    localStore = 0;
  }

  v8 = localStore;
  v9 = [v4 recordID];

  v10 = [v9 recordName];

  v11 = [(FCKeyValueStore *)v8 objectForKey:v10];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 mutableCopy];
    v14 = v13;
    if (v27)
    {
      [v13 setObject:v27 forKeyedSubscript:@"settingsData"];
    }

    if (v6)
    {
      [v14 setObject:v6 forKeyedSubscript:@"lastSeenPuzzleIDs"];
    }

    [(FCKeyValueStore *)v8 setObject:v14 forKey:v10];
    if (v5)
    {
      v15 = [[FCPuzzleTypeSettingsEntry alloc] initWithEntryID:v10 dictionaryRepresentation:v14];
      v16 = v15;
      if (self)
      {
        entriesLock = self->_entriesLock;
      }

      else
      {
        entriesLock = 0;
      }

      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __63__FCPuzzleTypeSettings_handleSyncWithPuzzleTypeSettingsRecord___block_invoke_2;
      v28[3] = &unk_1E7C376A0;
      v28[4] = self;
      v29 = v15;
      v30 = v5;
      v18 = v16;
      [(FCMTWriterLock *)entriesLock performWriteSync:v28];
    }

    if (self)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
    }

    else
    {
      WeakRetained = 0;
    }

    [WeakRetained settingsDataDidChangeForPuzzleTypeID:v5];
LABEL_25:

    goto LABEL_26;
  }

  if (v5)
  {
    v14 = [MEMORY[0x1E695DF90] dictionary];
    [v14 setObject:v5 forKey:@"puzzleTypeID"];
    if (v27)
    {
      [v14 setObject:v27 forKey:@"settingsData"];
    }

    if (v6)
    {
      [v14 setObject:v6 forKey:@"lastSeenPuzzleIDs"];
    }

    v20 = [FCPuzzleTypeSettingsEntry alloc];
    v21 = [v14 copy];
    v22 = [(FCPuzzleTypeSettingsEntry *)v20 initWithEntryID:v10 dictionaryRepresentation:v21];

    if (self)
    {
      v23 = self->_entriesLock;
    }

    else
    {
      v23 = 0;
    }

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __63__FCPuzzleTypeSettings_handleSyncWithPuzzleTypeSettingsRecord___block_invoke;
    v31[3] = &unk_1E7C376A0;
    v31[4] = self;
    WeakRetained = v22;
    v32 = WeakRetained;
    v24 = v5;
    v33 = v24;
    [(FCMTWriterLock *)v23 performWriteSync:v31];
    if (self)
    {
      self = objc_loadWeakRetained(&self->_delegate);
    }

    [(FCPuzzleTypeSettings *)self settingsDataDidChangeForPuzzleTypeID:v24];

    [(FCKeyValueStore *)v8 setObject:v14 forKey:v10];
    goto LABEL_25;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"should never have a puzzleTypeSettings entry without a puzzleTypeID"];
    *buf = 136315906;
    v35 = "[FCPuzzleTypeSettings handleSyncWithPuzzleTypeSettingsRecord:]";
    v36 = 2080;
    v37 = "FCPuzzleTypeSettings.m";
    v38 = 1024;
    v39 = 211;
    v40 = 2114;
    v41 = v26;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_26:

  v25 = *MEMORY[0x1E69E9840];
}

uint64_t __63__FCPuzzleTypeSettings_handleSyncWithPuzzleTypeSettingsRecord___block_invoke(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v1 = v1[2];
  }

  return [v1 setObject:a1[5] forKey:a1[6]];
}

uint64_t __63__FCPuzzleTypeSettings_handleSyncWithPuzzleTypeSettingsRecord___block_invoke_2(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v1 = v1[2];
  }

  return [v1 setObject:a1[5] forKey:a1[6]];
}

- (void)handleSyncWithDeletedPuzzleTypeSettingsRecordName:(id)a3
{
  v4 = a3;
  if (self)
  {
    localStore = self->_localStore;
  }

  else
  {
    localStore = 0;
  }

  v6 = [(FCKeyValueStore *)localStore objectForKey:v4];
  if (v6)
  {
    if (self)
    {
      v7 = self->_localStore;
    }

    else
    {
      v7 = 0;
    }

    [(FCKeyValueStore *)v7 removeObjectForKey:v4];
    v8 = [v6 objectForKeyedSubscript:@"puzzleTypeID"];
    v9 = v8;
    if (v8)
    {
      if (self)
      {
        entriesLock = self->_entriesLock;
      }

      else
      {
        entriesLock = 0;
      }

      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __74__FCPuzzleTypeSettings_handleSyncWithDeletedPuzzleTypeSettingsRecordName___block_invoke;
      v15 = &unk_1E7C36C58;
      v16 = self;
      v11 = v8;
      v17 = v11;
      [(FCMTWriterLock *)entriesLock performWriteSync:&v12];
      if (self)
      {
        self = objc_loadWeakRetained(&self->_delegate);
      }

      [(FCPuzzleTypeSettings *)self settingsDataDidChangeForPuzzleTypeID:v11, v12, v13, v14, v15, v16];
    }
  }
}

uint64_t __74__FCPuzzleTypeSettings_handleSyncWithDeletedPuzzleTypeSettingsRecordName___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[2];
  }

  return [v1 fc_safelySetObject:0 forKey:*(a1 + 40)];
}

- (id)allPuzzleTypeSettingsRecordNames
{
  v2 = [(FCPuzzleTypeSettings *)&self->super.isa _allEntriesInPuzzleTypeSettings];
  v3 = [v2 fc_arrayByTransformingWithBlock:&__block_literal_global_161];

  return v3;
}

- (id)_allEntriesInPuzzleTypeSettings
{
  v1 = a1;
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__78;
    v9 = __Block_byref_object_dispose__78;
    v10 = 0;
    v2 = a1[1];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __55__FCPuzzleTypeSettings__allEntriesInPuzzleTypeSettings__block_invoke;
    v4[3] = &unk_1E7C37160;
    v4[4] = v1;
    v4[5] = &v5;
    [v2 performReadSync:v4];

    v1 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  return v1;
}

- (id)allPuzzleTypeSettingsRecords
{
  v2 = [(FCPuzzleTypeSettings *)&self->super.isa _allEntriesInPuzzleTypeSettings];
  v3 = [v2 fc_arrayByTransformingWithBlock:&__block_literal_global_24];

  return v3;
}

void __64__FCPuzzleTypeSettings__puzzleTypeSettingsEntryForPuzzleTypeID___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[2];
  }

  v3 = a1[5];
  v7 = v2;
  v4 = [v7 objectForKey:v3];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __55__FCPuzzleTypeSettings__allEntriesInPuzzleTypeSettings__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[2];
  }

  v3 = v2;
  v7 = [v3 allValues];
  v4 = [v7 copy];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

@end