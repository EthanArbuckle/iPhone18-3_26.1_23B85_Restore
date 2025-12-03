@interface FCTagSettings
+ (id)commandsToMergeLocalDataToCloud:(id)cloud;
- (FCTagSettings)initWithStore:(id)store tagSettingsDelegate:(id)delegate;
- (id)accessTokenForTagID:(id)d;
- (id)allTagSettingsRecordNames;
- (id)allTagSettingsRecords;
- (id)authenticatedAccessTokensByTagID;
- (id)contentScaleForTagID:(id)d;
- (id)fontSizeForTagID:(id)d;
- (id)webAccessOptedInTagIDs;
- (void)handleSyncWithDeletedTagSettingsRecordName:(id)name;
- (void)handleSyncWithTagSettingsRecord:(id)record;
- (void)loadLocalCachesFromStore;
- (void)setContentScaleForTagID:(id)d contentScale:(id)scale;
- (void)setFontSizeForTagID:(id)d fontSize:(id)size;
- (void)setWebAccessOptInForTagID:(id)d webAccessOptIn:(BOOL)in;
- (void)syncForTagID:(id)d;
@end

@implementation FCTagSettings

- (void)loadLocalCachesFromStore
{
  v41 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  if (self)
  {
    objc_storeStrong(&self->_tagSettingsEntriesByTagID, dictionary);

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
  allKeys = [(FCKeyValueStore *)v6 allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v36 objects:v40 count:16];
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
          objc_enumerationMutation(allKeys);
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
            v26 = allKeys;
            v27 = v6;
            if (self)
            {
              selfCopy = self;
              tagSettingsEntriesByTagID = self->_tagSettingsEntriesByTagID;
            }

            else
            {
              selfCopy = 0;
              tagSettingsEntriesByTagID = 0;
            }

            v30 = tagSettingsEntriesByTagID;
            tagID = [v23 tagID];
            [(NSMutableDictionary *)v30 setObject:v23 forKey:tagID];

            self = selfCopy;
            v6 = v27;
            allKeys = v26;
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
      v33 = [allKeys countByEnumeratingWithState:&v36 objects:v40 count:16];
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

- (FCTagSettings)initWithStore:(id)store tagSettingsDelegate:(id)delegate
{
  v22 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  delegateCopy = delegate;
  v13.receiver = self;
  v13.super_class = FCTagSettings;
  v9 = [(FCTagSettings *)&v13 init];
  if (v9)
  {
    if (!storeCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
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

    objc_storeStrong(&v9->_localStore, store);
    objc_storeWeak(&v9->_delegate, delegateCopy);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (id)commandsToMergeLocalDataToCloud:(id)cloud
{
  v30 = *MEMORY[0x1E69E9840];
  cloudCopy = cloud;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  allKeys = [cloudCopy allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v25 objects:v29 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v25 + 1) + 8 * v8);
        if (([objc_opt_class() isLocalStoreKeyInternal:v9] & 1) == 0)
        {
          objc_opt_class();
          v10 = [cloudCopy objectForKey:v9];
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
            [array2 addObject:v17];
          }

          goto LABEL_23;
        }

LABEL_24:
        ++v8;
      }

      while (v6 != v8);
      v19 = [allKeys countByEnumeratingWithState:&v25 objects:v29 count:16];
      v6 = v19;
    }

    while (v19);
  }

  v20 = [[FCModifyTagSettingsCommand alloc] initWithTagSettingsEntries:array2 merge:1];
  [array addObject:v20];

  v21 = *MEMORY[0x1E69E9840];

  return array;
}

- (void)syncForTagID:(id)d
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (d)
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
    v7 = [(NSMutableDictionary *)v6 objectForKey:d];

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

- (void)setFontSizeForTagID:(id)d fontSize:(id)size
{
  v30 = *MEMORY[0x1E69E9840];
  dCopy = d;
  sizeCopy = size;
  [MEMORY[0x1E696AF00] isMainThread];
  if (dCopy)
  {
    dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"ts-%@", dCopy];
    if (self)
    {
      localStore = self->_localStore;
    }

    else
    {
      localStore = 0;
    }

    v10 = [(FCKeyValueStore *)localStore objectForKey:dCopy];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 mutableCopy];
      dCopy2 = v12;
      if (sizeCopy)
      {
        [v12 setObject:sizeCopy forKeyedSubscript:@"fontMultiplier"];
      }

      else
      {
        [v12 removeObjectForKey:@"fontMultiplier"];
      }

      v15 = [FCTagSettingsEntry initWithEntryID:dCopy2 dictionaryRepresentation:?];
    }

    else
    {
      v14 = [FCTagSettingsEntry alloc];
      dCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ts-%@", dCopy];
      LOBYTE(v21) = 0;
      v15 = [(FCTagSettingsEntry *)v14 initWithEntryID:dCopy2 tagID:dCopy fontMultiplier:sizeCopy fontMultiplierMacOS:0 contentScale:0 contentScaleMacOS:0 accessToken:0 webAccessOptIn:v21];
    }

    v16 = v15;

    if (v16)
    {
      dictionaryRepresentation = [(FCTagSettingsEntry *)v16 dictionaryRepresentation];
      if (self)
      {
        [(FCKeyValueStore *)self->_localStore setObject:dictionaryRepresentation forKey:dCopy];
        tagSettingsEntriesByTagID = self->_tagSettingsEntriesByTagID;
      }

      else
      {
        [0 setObject:dictionaryRepresentation forKey:dCopy];
        tagSettingsEntriesByTagID = 0;
      }

      [(NSMutableDictionary *)tagSettingsEntriesByTagID setObject:v16 forKey:dCopy];
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
    dCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagID != nil"];
    *buf = 136315906;
    v23 = "[FCTagSettings setFontSizeForTagID:fontSize:]";
    v24 = 2080;
    v25 = "FCTagSettings.m";
    v26 = 1024;
    v27 = 135;
    v28 = 2114;
    v29 = dCopy;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
LABEL_19:
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (id)fontSizeForTagID:(id)d
{
  if (self)
  {
    self = self->_tagSettingsEntriesByTagID;
  }

  v3 = [(FCTagSettings *)self objectForKey:d];
  fontMultiplier = [v3 fontMultiplier];

  return fontMultiplier;
}

- (void)setContentScaleForTagID:(id)d contentScale:(id)scale
{
  v30 = *MEMORY[0x1E69E9840];
  dCopy = d;
  scaleCopy = scale;
  [MEMORY[0x1E696AF00] isMainThread];
  if (dCopy)
  {
    dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"ts-%@", dCopy];
    if (self)
    {
      localStore = self->_localStore;
    }

    else
    {
      localStore = 0;
    }

    v10 = [(FCKeyValueStore *)localStore objectForKey:dCopy];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 mutableCopy];
      dCopy2 = v12;
      if (scaleCopy)
      {
        [v12 setObject:scaleCopy forKeyedSubscript:@"contentScale"];
      }

      else
      {
        [v12 removeObjectForKey:@"contentScale"];
      }

      v15 = [FCTagSettingsEntry initWithEntryID:dCopy2 dictionaryRepresentation:?];
    }

    else
    {
      v14 = [FCTagSettingsEntry alloc];
      dCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ts-%@", dCopy];
      LOBYTE(v21) = 0;
      v15 = [(FCTagSettingsEntry *)v14 initWithEntryID:dCopy2 tagID:dCopy fontMultiplier:0 fontMultiplierMacOS:0 contentScale:scaleCopy contentScaleMacOS:0 accessToken:0 webAccessOptIn:v21];
    }

    v16 = v15;

    if (v16)
    {
      dictionaryRepresentation = [(FCTagSettingsEntry *)v16 dictionaryRepresentation];
      if (self)
      {
        [(FCKeyValueStore *)self->_localStore setObject:dictionaryRepresentation forKey:dCopy];
        tagSettingsEntriesByTagID = self->_tagSettingsEntriesByTagID;
      }

      else
      {
        [0 setObject:dictionaryRepresentation forKey:dCopy];
        tagSettingsEntriesByTagID = 0;
      }

      [(NSMutableDictionary *)tagSettingsEntriesByTagID setObject:v16 forKey:dCopy];
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
    dCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagID != nil"];
    *buf = 136315906;
    v23 = "[FCTagSettings setContentScaleForTagID:contentScale:]";
    v24 = 2080;
    v25 = "FCTagSettings.m";
    v26 = 1024;
    v27 = 213;
    v28 = 2114;
    v29 = dCopy;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
LABEL_19:
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (id)contentScaleForTagID:(id)d
{
  if (self)
  {
    self = self->_tagSettingsEntriesByTagID;
  }

  v3 = [(FCTagSettings *)self objectForKey:d];
  contentScale = [v3 contentScale];

  return contentScale;
}

- (id)accessTokenForTagID:(id)d
{
  if (self)
  {
    self = self->_tagSettingsEntriesByTagID;
  }

  v3 = [(FCTagSettings *)self objectForKey:d];
  accessToken = [v3 accessToken];

  return accessToken;
}

- (id)authenticatedAccessTokensByTagID
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self)
  {
    self = self->_tagSettingsEntriesByTagID;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__FCTagSettings_authenticatedAccessTokensByTagID__block_invoke;
  v7[3] = &unk_1E7C408B8;
  v8 = dictionary;
  v4 = dictionary;
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

- (void)setWebAccessOptInForTagID:(id)d webAccessOptIn:(BOOL)in
{
  inCopy = in;
  v34 = *MEMORY[0x1E69E9840];
  dCopy = d;
  [MEMORY[0x1E696AF00] isMainThread];
  if (dCopy)
  {
    dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"ts-%@", dCopy];
    if (self)
    {
      localStore = self->_localStore;
    }

    else
    {
      localStore = 0;
    }

    v9 = [(FCKeyValueStore *)localStore objectForKey:dCopy];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 mutableCopy];
      dCopy2 = v11;
      if (inCopy)
      {
        v13 = [MEMORY[0x1E696AD98] numberWithBool:1];
        [dCopy2 setObject:v13 forKeyedSubscript:@"webAccessOptIn"];
      }

      else
      {
        [v11 removeObjectForKey:@"webAccessOptIn"];
      }

      v15 = [FCTagSettingsEntry initWithEntryID:dCopy2 dictionaryRepresentation:?];
    }

    else
    {
      v14 = [FCTagSettingsEntry alloc];
      dCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ts-%@", dCopy];
      LOBYTE(v24) = inCopy;
      v15 = [(FCTagSettingsEntry *)v14 initWithEntryID:dCopy2 tagID:dCopy fontMultiplier:0 fontMultiplierMacOS:0 contentScale:0 contentScaleMacOS:0 accessToken:0 webAccessOptIn:v24];
    }

    v16 = v15;

    if (v16)
    {
      dictionaryRepresentation = [(FCTagSettingsEntry *)v16 dictionaryRepresentation];
      if (self)
      {
        [(FCKeyValueStore *)self->_localStore setObject:dictionaryRepresentation forKey:dCopy];
        tagSettingsEntriesByTagID = self->_tagSettingsEntriesByTagID;
      }

      else
      {
        [0 setObject:dictionaryRepresentation forKey:dCopy];
        tagSettingsEntriesByTagID = 0;
      }

      [(NSMutableDictionary *)tagSettingsEntriesByTagID setObject:v16 forKey:dCopy];
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
    dCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagID != nil"];
    *buf = 136315906;
    v27 = "[FCTagSettings setWebAccessOptInForTagID:webAccessOptIn:]";
    v28 = 2080;
    v29 = "FCTagSettings.m";
    v30 = 1024;
    v31 = 369;
    v32 = 2114;
    v33 = dCopy;
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

- (void)handleSyncWithTagSettingsRecord:(id)record
{
  v48 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];

  selfCopy = self;
  if (self)
  {
    localStore = self->_localStore;
  }

  else
  {
    localStore = 0;
  }

  v7 = localStore;
  v8 = [recordCopy objectForKeyedSubscript:@"tagID"];
  v9 = [recordCopy objectForKeyedSubscript:@"fontMultiplier"];
  v10 = [recordCopy objectForKeyedSubscript:@"fontMultiplierMacOS"];
  v35 = [recordCopy objectForKeyedSubscript:@"contentScale"];
  v34 = [recordCopy objectForKeyedSubscript:@"contentScaleMacOS"];
  v33 = [recordCopy objectForKeyedSubscript:?];
  v37 = [recordCopy objectForKeyedSubscript:?];

  v36 = v7;
  v11 = [(FCKeyValueStore *)v7 objectForKey:recordName];
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
    [(FCKeyValueStore *)v36 setObject:v14 forKey:recordName];
    if (v15)
    {
      v27 = [FCTagSettingsEntry initWithEntryID:v14 dictionaryRepresentation:?];
      if (selfCopy)
      {
        tagSettingsEntriesByTagID = selfCopy->_tagSettingsEntriesByTagID;
      }

      else
      {
        tagSettingsEntriesByTagID = 0;
      }

      [(NSMutableDictionary *)tagSettingsEntriesByTagID setObject:v27 forKey:v15];
    }

    if (selfCopy)
    {
      WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
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
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:v8 forKey:@"tagID"];
    if (v9)
    {
      [dictionary setObject:v9 forKey:@"fontMultiplier"];
    }

    v17 = v10;
    if (v10)
    {
      [dictionary setObject:v10 forKey:@"fontMultiplierMacOS"];
    }

    v18 = v35;
    if (v35)
    {
      [dictionary setObject:v35 forKey:@"contentScale"];
    }

    v20 = v33;
    v19 = v34;
    if (v34)
    {
      [dictionary setObject:v34 forKey:@"contentScaleMacOS"];
    }

    if (v37)
    {
      [dictionary setObject:v37 forKey:@"accessToken"];
    }

    if (v33)
    {
      [dictionary setObject:v33 forKey:@"webAccessOptIn"];
    }

    v21 = [FCTagSettingsEntry alloc];
    v22 = [dictionary copy];
    v23 = [FCTagSettingsEntry initWithEntryID:v21 dictionaryRepresentation:v22];

    if (selfCopy)
    {
      [(NSMutableDictionary *)selfCopy->_tagSettingsEntriesByTagID setObject:v23 forKey:v15];
      v24 = objc_loadWeakRetained(&selfCopy->_delegate);
    }

    else
    {
      [0 setObject:v23 forKey:v15];
      v24 = 0;
    }

    v25 = v36;
    [v24 accessTokenDidChangeForTagID:v15];

    [(FCKeyValueStore *)v36 setObject:dictionary forKey:recordName];
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

- (void)handleSyncWithDeletedTagSettingsRecordName:(id)name
{
  nameCopy = name;
  if (self)
  {
    localStore = self->_localStore;
  }

  else
  {
    localStore = 0;
  }

  v9 = nameCopy;
  v6 = [(FCKeyValueStore *)localStore objectForKey:nameCopy];
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

  allValues = [(FCTagSettings *)self allValues];
  v3 = [allValues fc_arrayByTransformingWithBlock:&__block_literal_global_71];

  return v3;
}

- (id)allTagSettingsRecords
{
  if (self)
  {
    self = self->_tagSettingsEntriesByTagID;
  }

  allValues = [(FCTagSettings *)self allValues];
  v3 = [allValues fc_arrayByTransformingWithBlock:&__block_literal_global_25_0];

  return v3;
}

@end