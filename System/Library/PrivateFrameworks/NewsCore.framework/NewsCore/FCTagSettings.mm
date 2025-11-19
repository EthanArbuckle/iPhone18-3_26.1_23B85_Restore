@interface FCTagSettings
+ (id)commandsToMergeLocalDataToCloud:(id)a3;
- (FCTagSettings)initWithStore:(id)a3 tagSettingsDelegate:(id)a4;
- (id)accessTokenForTagID:(id)a3;
- (id)allTagSettingsRecordNames;
- (id)allTagSettingsRecords;
- (id)authenticatedAccessTokensByTagID;
- (id)contentScaleForTagID:(id)a3;
- (id)fontSizeForTagID:(id)a3;
- (id)webAccessOptedInTagIDs;
- (void)handleSyncWithDeletedTagSettingsRecordName:(id)a3;
- (void)handleSyncWithTagSettingsRecord:(id)a3;
- (void)loadLocalCachesFromStore;
- (void)setContentScaleForTagID:(id)a3 contentScale:(id)a4;
- (void)setFontSizeForTagID:(id)a3 fontSize:(id)a4;
- (void)setWebAccessOptInForTagID:(id)a3 webAccessOptIn:(BOOL)a4;
- (void)syncForTagID:(id)a3;
@end

@implementation FCTagSettings

- (void)loadLocalCachesFromStore
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  if (self)
  {
    objc_storeStrong(&self->_tagSettingsEntriesByTagID, v3);

    localStore = self->_localStore;
  }

  else
  {

    localStore = 0;
  }

  v6 = localStore;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v7 = [(FCKeyValueStore *)v6 allKeys];
  v8 = [v7 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v37;
    v11 = @"tagID";
    v12 = off_1E7C35000;
    do
    {
      v13 = 0;
      v35 = v9;
      do
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v36 + 1) + 8 * v13);
        v15 = v12[164];
        if (([objc_opt_class() isLocalStoreKeyInternal:v14] & 1) == 0)
        {
          objc_opt_class();
          v16 = [(FCKeyValueStore *)v6 objectForKey:v14];
          if (v16)
          {
            if (objc_opt_isKindOfClass())
            {
              v17 = v16;
            }

            else
            {
              v17 = 0;
            }
          }

          else
          {
            v17 = 0;
          }

          v18 = v17;

          if (!v18)
          {
            goto LABEL_27;
          }

          v19 = [v18 objectForKey:v11];
          if (!v19)
          {
            goto LABEL_27;
          }

          v20 = v19;
          v21 = [v18 objectForKey:@"fontMultiplier"];
          if (v21 || ([v18 objectForKey:@"fontMultiplierMacOS"], (v21 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v18, "objectForKey:", @"contentScale"), (v21 = objc_claimAutoreleasedReturnValue()) != 0))
          {
LABEL_21:
          }

          else
          {
            v22 = [v18 objectForKey:@"contentScaleMacOS"];
            if (v22)
            {

              v21 = 0;
              goto LABEL_21;
            }

            v32 = [v18 objectForKey:@"accessToken"];

            if (!v32)
            {
LABEL_27:

              v12 = off_1E7C35000;
              goto LABEL_28;
            }
          }

          v23 = [FCTagSettingsEntry initWithEntryID:v18 dictionaryRepresentation:?];
          if (v23)
          {
            v24 = v10;
            v25 = v11;
            v26 = v7;
            v27 = v6;
            if (self)
            {
              v28 = self;
              tagSettingsEntriesByTagID = self->_tagSettingsEntriesByTagID;
            }

            else
            {
              v28 = 0;
              tagSettingsEntriesByTagID = 0;
            }

            v30 = tagSettingsEntriesByTagID;
            v31 = [v23 tagID];
            [(NSMutableDictionary *)v30 setObject:v23 forKey:v31];

            self = v28;
            v6 = v27;
            v7 = v26;
            v11 = v25;
            v10 = v24;
            v9 = v35;
          }

          goto LABEL_27;
        }

LABEL_28:
        ++v13;
      }

      while (v9 != v13);
      v33 = [v7 countByEnumeratingWithState:&v36 objects:v40 count:16];
      v9 = v33;
    }

    while (v33);
  }

  v34 = *MEMORY[0x1E69E9840];
}

- (id)webAccessOptedInTagIDs
{
  v3 = [MEMORY[0x1E695DFA8] set];
  if (self)
  {
    self = self->_tagSettingsEntriesByTagID;
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__FCTagSettings_webAccessOptedInTagIDs__block_invoke;
  v6[3] = &unk_1E7C408B8;
  v4 = v3;
  v7 = v4;
  [(FCTagSettings *)self enumerateKeysAndObjectsUsingBlock:v6];

  return v4;
}

- (FCTagSettings)initWithStore:(id)a3 tagSettingsDelegate:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = FCTagSettings;
  v9 = [(FCTagSettings *)&v13 init];
  if (v9)
  {
    if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "store"];
      *buf = 136315906;
      v15 = "[FCTagSettings initWithStore:tagSettingsDelegate:]";
      v16 = 2080;
      v17 = "FCTagSettings.m";
      v18 = 1024;
      v19 = 43;
      v20 = 2114;
      v21 = v12;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    objc_storeStrong(&v9->_localStore, a3);
    objc_storeWeak(&v9->_delegate, v8);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (id)commandsToMergeLocalDataToCloud:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v23 = [MEMORY[0x1E695DF70] array];
  v24 = [MEMORY[0x1E695DF70] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = [v3 allKeys];
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      v8 = 0;
      do
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v25 + 1) + 8 * v8);
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

          if (!v12)
          {
            goto LABEL_23;
          }

          v13 = [v12 objectForKey:@"tagID"];
          if (!v13)
          {
            goto LABEL_23;
          }

          v14 = v13;
          v15 = [v12 objectForKey:@"fontMultiplier"];
          if (v15 || ([v12 objectForKey:@"fontMultiplierMacOS"], (v15 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v12, "objectForKey:", @"contentScale"), (v15 = objc_claimAutoreleasedReturnValue()) != 0))
          {
LABEL_19:
          }

          else
          {
            v16 = [v12 objectForKey:@"contentScaleMacOS"];
            if (v16)
            {

              v15 = 0;
              goto LABEL_19;
            }

            v18 = [v12 objectForKey:@"accessToken"];

            if (!v18)
            {
LABEL_23:

              goto LABEL_24;
            }
          }

          v17 = [FCTagSettingsEntry initWithEntryID:v12 dictionaryRepresentation:?];
          if (v17)
          {
            [v24 addObject:v17];
          }

          goto LABEL_23;
        }

LABEL_24:
        ++v8;
      }

      while (v6 != v8);
      v19 = [v4 countByEnumeratingWithState:&v25 objects:v29 count:16];
      v6 = v19;
    }

    while (v19);
  }

  v20 = [[FCModifyTagSettingsCommand alloc] initWithTagSettingsEntries:v24 merge:1];
  [v23 addObject:v20];

  v21 = *MEMORY[0x1E69E9840];

  return v23;
}

- (void)syncForTagID:(id)a3
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    p_isa = &self->super.isa;
    if (self)
    {
      tagSettingsEntriesByTagID = self->_tagSettingsEntriesByTagID;
    }

    else
    {
      tagSettingsEntriesByTagID = 0;
    }

    v6 = tagSettingsEntriesByTagID;
    v7 = [(NSMutableDictionary *)v6 objectForKey:a3];

    if (v7)
    {
      v8 = [FCModifyTagSettingsCommand alloc];
      v12[0] = v7;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      v10 = [(FCModifyTagSettingsCommand *)v8 initWithTagSettingsEntries:v9 merge:1];

      if (p_isa)
      {
        p_isa = objc_loadWeakRetained(p_isa + 3);
      }

      [p_isa addModifyTagSettingsCommandToCommandQueue:v10];
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setFontSizeForTagID:(id)a3 fontSize:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [MEMORY[0x1E696AF00] isMainThread];
  if (v6)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ts-%@", v6];
    if (self)
    {
      localStore = self->_localStore;
    }

    else
    {
      localStore = 0;
    }

    v10 = [(FCKeyValueStore *)localStore objectForKey:v8];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 mutableCopy];
      v13 = v12;
      if (v7)
      {
        [v12 setObject:v7 forKeyedSubscript:@"fontMultiplier"];
      }

      else
      {
        [v12 removeObjectForKey:@"fontMultiplier"];
      }

      v15 = [FCTagSettingsEntry initWithEntryID:v13 dictionaryRepresentation:?];
    }

    else
    {
      v14 = [FCTagSettingsEntry alloc];
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ts-%@", v6];
      LOBYTE(v21) = 0;
      v15 = [(FCTagSettingsEntry *)v14 initWithEntryID:v13 tagID:v6 fontMultiplier:v7 fontMultiplierMacOS:0 contentScale:0 contentScaleMacOS:0 accessToken:0 webAccessOptIn:v21];
    }

    v16 = v15;

    if (v16)
    {
      v17 = [(FCTagSettingsEntry *)v16 dictionaryRepresentation];
      if (self)
      {
        [(FCKeyValueStore *)self->_localStore setObject:v17 forKey:v8];
        tagSettingsEntriesByTagID = self->_tagSettingsEntriesByTagID;
      }

      else
      {
        [0 setObject:v17 forKey:v8];
        tagSettingsEntriesByTagID = 0;
      }

      [(NSMutableDictionary *)tagSettingsEntriesByTagID setObject:v16 forKey:v6];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "entry"];
      *buf = 136315906;
      v23 = "[FCTagSettings setFontSizeForTagID:fontSize:]";
      v24 = 2080;
      v25 = "FCTagSettings.m";
      v26 = 1024;
      v27 = 188;
      v28 = 2114;
      v29 = v20;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    goto LABEL_19;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagID != nil"];
    *buf = 136315906;
    v23 = "[FCTagSettings setFontSizeForTagID:fontSize:]";
    v24 = 2080;
    v25 = "FCTagSettings.m";
    v26 = 1024;
    v27 = 135;
    v28 = 2114;
    v29 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
LABEL_19:
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (id)fontSizeForTagID:(id)a3
{
  if (self)
  {
    self = self->_tagSettingsEntriesByTagID;
  }

  v3 = [(FCTagSettings *)self objectForKey:a3];
  v4 = [v3 fontMultiplier];

  return v4;
}

- (void)setContentScaleForTagID:(id)a3 contentScale:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [MEMORY[0x1E696AF00] isMainThread];
  if (v6)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ts-%@", v6];
    if (self)
    {
      localStore = self->_localStore;
    }

    else
    {
      localStore = 0;
    }

    v10 = [(FCKeyValueStore *)localStore objectForKey:v8];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 mutableCopy];
      v13 = v12;
      if (v7)
      {
        [v12 setObject:v7 forKeyedSubscript:@"contentScale"];
      }

      else
      {
        [v12 removeObjectForKey:@"contentScale"];
      }

      v15 = [FCTagSettingsEntry initWithEntryID:v13 dictionaryRepresentation:?];
    }

    else
    {
      v14 = [FCTagSettingsEntry alloc];
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ts-%@", v6];
      LOBYTE(v21) = 0;
      v15 = [(FCTagSettingsEntry *)v14 initWithEntryID:v13 tagID:v6 fontMultiplier:0 fontMultiplierMacOS:0 contentScale:v7 contentScaleMacOS:0 accessToken:0 webAccessOptIn:v21];
    }

    v16 = v15;

    if (v16)
    {
      v17 = [(FCTagSettingsEntry *)v16 dictionaryRepresentation];
      if (self)
      {
        [(FCKeyValueStore *)self->_localStore setObject:v17 forKey:v8];
        tagSettingsEntriesByTagID = self->_tagSettingsEntriesByTagID;
      }

      else
      {
        [0 setObject:v17 forKey:v8];
        tagSettingsEntriesByTagID = 0;
      }

      [(NSMutableDictionary *)tagSettingsEntriesByTagID setObject:v16 forKey:v6];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "entry"];
      *buf = 136315906;
      v23 = "[FCTagSettings setContentScaleForTagID:contentScale:]";
      v24 = 2080;
      v25 = "FCTagSettings.m";
      v26 = 1024;
      v27 = 266;
      v28 = 2114;
      v29 = v20;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    goto LABEL_19;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagID != nil"];
    *buf = 136315906;
    v23 = "[FCTagSettings setContentScaleForTagID:contentScale:]";
    v24 = 2080;
    v25 = "FCTagSettings.m";
    v26 = 1024;
    v27 = 213;
    v28 = 2114;
    v29 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
LABEL_19:
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (id)contentScaleForTagID:(id)a3
{
  if (self)
  {
    self = self->_tagSettingsEntriesByTagID;
  }

  v3 = [(FCTagSettings *)self objectForKey:a3];
  v4 = [v3 contentScale];

  return v4;
}

- (id)accessTokenForTagID:(id)a3
{
  if (self)
  {
    self = self->_tagSettingsEntriesByTagID;
  }

  v3 = [(FCTagSettings *)self objectForKey:a3];
  v4 = [v3 accessToken];

  return v4;
}

- (id)authenticatedAccessTokensByTagID
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self)
  {
    self = self->_tagSettingsEntriesByTagID;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__FCTagSettings_authenticatedAccessTokensByTagID__block_invoke;
  v7[3] = &unk_1E7C408B8;
  v8 = v3;
  v4 = v3;
  [(FCTagSettings *)self enumerateKeysAndObjectsUsingBlock:v7];
  v5 = [v4 copy];

  return v5;
}

void __49__FCTagSettings_authenticatedAccessTokensByTagID__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v5 accessToken];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v5 accessToken];
    [v7 setObject:v9 forKey:v8];
  }
}

- (void)setWebAccessOptInForTagID:(id)a3 webAccessOptIn:(BOOL)a4
{
  v4 = a4;
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  if (v6)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ts-%@", v6];
    if (self)
    {
      localStore = self->_localStore;
    }

    else
    {
      localStore = 0;
    }

    v9 = [(FCKeyValueStore *)localStore objectForKey:v7];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 mutableCopy];
      v12 = v11;
      if (v4)
      {
        v13 = [MEMORY[0x1E696AD98] numberWithBool:1];
        [v12 setObject:v13 forKeyedSubscript:@"webAccessOptIn"];
      }

      else
      {
        [v11 removeObjectForKey:@"webAccessOptIn"];
      }

      v15 = [FCTagSettingsEntry initWithEntryID:v12 dictionaryRepresentation:?];
    }

    else
    {
      v14 = [FCTagSettingsEntry alloc];
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ts-%@", v6];
      LOBYTE(v24) = v4;
      v15 = [(FCTagSettingsEntry *)v14 initWithEntryID:v12 tagID:v6 fontMultiplier:0 fontMultiplierMacOS:0 contentScale:0 contentScaleMacOS:0 accessToken:0 webAccessOptIn:v24];
    }

    v16 = v15;

    if (v16)
    {
      v17 = [(FCTagSettingsEntry *)v16 dictionaryRepresentation];
      if (self)
      {
        [(FCKeyValueStore *)self->_localStore setObject:v17 forKey:v7];
        tagSettingsEntriesByTagID = self->_tagSettingsEntriesByTagID;
      }

      else
      {
        [0 setObject:v17 forKey:v7];
        tagSettingsEntriesByTagID = 0;
      }

      [(NSMutableDictionary *)tagSettingsEntriesByTagID setObject:v16 forKey:v6];
      v19 = [FCModifyTagSettingsCommand alloc];
      v25 = v16;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
      v21 = [(FCModifyTagSettingsCommand *)v19 initWithTagSettingsEntries:v20 merge:1];

      if (self)
      {
        self = objc_loadWeakRetained(&self->_delegate);
      }

      [(FCTagSettings *)self addModifyTagSettingsCommandToCommandQueue:v21];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "entry"];
      *buf = 136315906;
      v27 = "[FCTagSettings setWebAccessOptInForTagID:webAccessOptIn:]";
      v28 = 2080;
      v29 = "FCTagSettings.m";
      v30 = 1024;
      v31 = 404;
      v32 = 2114;
      v33 = v23;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    goto LABEL_21;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagID != nil"];
    *buf = 136315906;
    v27 = "[FCTagSettings setWebAccessOptInForTagID:webAccessOptIn:]";
    v28 = 2080;
    v29 = "FCTagSettings.m";
    v30 = 1024;
    v31 = 369;
    v32 = 2114;
    v33 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
LABEL_21:
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __39__FCTagSettings_webAccessOptedInTagIDs__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if ([v6 webAccessOptIn])
  {
    v4 = *(a1 + 32);
    v5 = [v6 tagID];
    [v4 addObject:v5];
  }
}

- (void)handleSyncWithTagSettingsRecord:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 recordID];
  v39 = [v5 recordName];

  v38 = self;
  if (self)
  {
    localStore = self->_localStore;
  }

  else
  {
    localStore = 0;
  }

  v7 = localStore;
  v8 = [v4 objectForKeyedSubscript:@"tagID"];
  v9 = [v4 objectForKeyedSubscript:@"fontMultiplier"];
  v10 = [v4 objectForKeyedSubscript:@"fontMultiplierMacOS"];
  v35 = [v4 objectForKeyedSubscript:@"contentScale"];
  v34 = [v4 objectForKeyedSubscript:@"contentScaleMacOS"];
  v33 = [v4 objectForKeyedSubscript:?];
  v37 = [v4 objectForKeyedSubscript:?];

  v36 = v7;
  v11 = [(FCKeyValueStore *)v7 objectForKey:v39];
  v12 = v11;
  if (v11)
  {
    v32 = v11;
    v13 = [v11 mutableCopy];
    v14 = v13;
    if (v9)
    {
      [v13 setObject:v9 forKeyedSubscript:@"fontMultiplier"];
    }

    else
    {
      [v13 removeObjectForKey:@"fontMultiplier"];
    }

    v15 = v8;
    v26 = v37;
    v17 = v10;
    if (v10)
    {
      [v14 setObject:v10 forKeyedSubscript:@"fontMultiplierMacOS"];
    }

    else
    {
      [v14 removeObjectForKey:@"fontMultiplierMacOS"];
    }

    v18 = v35;
    v20 = v33;
    if (v35)
    {
      [v14 setObject:v35 forKeyedSubscript:@"contentScale"];
    }

    else
    {
      [v14 removeObjectForKey:@"contentScale"];
    }

    v19 = v34;
    if (v34)
    {
      [v14 setObject:v34 forKeyedSubscript:@"contentScaleMacOS"];
    }

    else
    {
      [v14 removeObjectForKey:@"contentScaleMacOS"];
    }

    if (v37)
    {
      [v14 setObject:v37 forKeyedSubscript:@"accessToken"];
    }

    else
    {
      [v14 removeObjectForKey:@"accessToken"];
    }

    if (v33)
    {
      [v14 setObject:v33 forKeyedSubscript:@"webAccessOptIn"];
    }

    else
    {
      [v14 removeObjectForKey:@"webAccessOptIn"];
    }

    v25 = v36;
    [(FCKeyValueStore *)v36 setObject:v14 forKey:v39];
    if (v15)
    {
      v27 = [FCTagSettingsEntry initWithEntryID:v14 dictionaryRepresentation:?];
      if (v38)
      {
        tagSettingsEntriesByTagID = v38->_tagSettingsEntriesByTagID;
      }

      else
      {
        tagSettingsEntriesByTagID = 0;
      }

      [(NSMutableDictionary *)tagSettingsEntriesByTagID setObject:v27 forKey:v15];
    }

    if (v38)
    {
      WeakRetained = objc_loadWeakRetained(&v38->_delegate);
    }

    else
    {
      WeakRetained = 0;
    }

    [WeakRetained accessTokenDidChangeForTagID:v15];

LABEL_45:
    v12 = v32;
    goto LABEL_46;
  }

  v15 = v8;
  if (v8)
  {
    v32 = 0;
    v16 = [MEMORY[0x1E695DF90] dictionary];
    [v16 setObject:v8 forKey:@"tagID"];
    if (v9)
    {
      [v16 setObject:v9 forKey:@"fontMultiplier"];
    }

    v17 = v10;
    if (v10)
    {
      [v16 setObject:v10 forKey:@"fontMultiplierMacOS"];
    }

    v18 = v35;
    if (v35)
    {
      [v16 setObject:v35 forKey:@"contentScale"];
    }

    v20 = v33;
    v19 = v34;
    if (v34)
    {
      [v16 setObject:v34 forKey:@"contentScaleMacOS"];
    }

    if (v37)
    {
      [v16 setObject:v37 forKey:@"accessToken"];
    }

    if (v33)
    {
      [v16 setObject:v33 forKey:@"webAccessOptIn"];
    }

    v21 = [FCTagSettingsEntry alloc];
    v22 = [v16 copy];
    v23 = [FCTagSettingsEntry initWithEntryID:v21 dictionaryRepresentation:v22];

    if (v38)
    {
      [(NSMutableDictionary *)v38->_tagSettingsEntriesByTagID setObject:v23 forKey:v15];
      v24 = objc_loadWeakRetained(&v38->_delegate);
    }

    else
    {
      [0 setObject:v23 forKey:v15];
      v24 = 0;
    }

    v25 = v36;
    [v24 accessTokenDidChangeForTagID:v15];

    [(FCKeyValueStore *)v36 setObject:v16 forKey:v39];
    v26 = v37;
    goto LABEL_45;
  }

  v17 = v10;
  v18 = v35;
  v25 = v36;
  v20 = v33;
  v19 = v34;
  v26 = v37;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"should never have a tag settings entry without a tag ID"];
    *buf = 136315906;
    v41 = "[FCTagSettings handleSyncWithTagSettingsRecord:]";
    v42 = 2080;
    v43 = "FCTagSettings.m";
    v44 = 1024;
    v45 = 448;
    v46 = 2114;
    v47 = v31;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    v12 = 0;
  }

LABEL_46:

  v30 = *MEMORY[0x1E69E9840];
}

- (void)handleSyncWithDeletedTagSettingsRecordName:(id)a3
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

  v9 = v4;
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

    [(FCKeyValueStore *)v7 removeObjectForKey:v9];
    v8 = [v6 objectForKeyedSubscript:@"tagID"];
    if (v8)
    {
      if (self)
      {
        [(NSMutableDictionary *)self->_tagSettingsEntriesByTagID fc_safelySetObject:0 forKey:v8];
        self = objc_loadWeakRetained(&self->_delegate);
      }

      else
      {
        [0 fc_safelySetObject:0 forKey:v8];
      }

      [(FCTagSettings *)self accessTokenDidChangeForTagID:v8];
    }
  }
}

- (id)allTagSettingsRecordNames
{
  if (self)
  {
    self = self->_tagSettingsEntriesByTagID;
  }

  v2 = [(FCTagSettings *)self allValues];
  v3 = [v2 fc_arrayByTransformingWithBlock:&__block_literal_global_71];

  return v3;
}

- (id)allTagSettingsRecords
{
  if (self)
  {
    self = self->_tagSettingsEntriesByTagID;
  }

  v2 = [(FCTagSettings *)self allValues];
  v3 = [v2 fc_arrayByTransformingWithBlock:&__block_literal_global_25_0];

  return v3;
}

@end