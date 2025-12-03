@interface FCShortcutCategoryList
+ (id)commandsToMergeLocalDataToCloud:(id)cloud privateDataDirectory:(id)directory;
- (FCShortcutCategoryList)initWithContext:(id)context pushNotificationCenter:(id)center storeDirectory:(id)directory;
- (NSArray)blockedShortcutCategories;
- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)d;
- (id)recordsForRestoringZoneName:(id)name;
- (void)addShortcutCategory:(id)category;
- (void)handleSyncWithChangedRecords:(id)records deletedRecordNames:(id)names;
- (void)loadLocalCachesFromStore;
- (void)removeAllShortcutCategories;
- (void)removeShortcutCategoryWithIdentifier:(id)identifier;
@end

@implementation FCShortcutCategoryList

- (FCShortcutCategoryList)initWithContext:(id)context pushNotificationCenter:(id)center storeDirectory:(id)directory
{
  v11.receiver = self;
  v11.super_class = FCShortcutCategoryList;
  v5 = [(FCPrivateDataController *)&v11 initWithContext:context pushNotificationCenter:center storeDirectory:directory];
  if (v5)
  {
    v6 = objc_alloc_init(FCMTWriterLock);
    itemsLock = v5->_itemsLock;
    v5->_itemsLock = v6;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    shortcutCategoriesByID = v5->_shortcutCategoriesByID;
    v5->_shortcutCategoriesByID = dictionary;
  }

  return v5;
}

- (NSArray)blockedShortcutCategories
{
  [MEMORY[0x1E696AF00] isMainThread];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__17;
  v13 = __Block_byref_object_dispose__17;
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v14 = [v3 initWithArray:MEMORY[0x1E695E0F0]];
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v5 = itemsLock;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__FCShortcutCategoryList_blockedShortcutCategories__block_invoke;
  v8[3] = &unk_1E7C3A3A0;
  v8[4] = self;
  v8[5] = &v9;
  [(FCMTWriterLock *)v5 performReadSync:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

uint64_t __51__FCShortcutCategoryList_blockedShortcutCategories__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[11];
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__FCShortcutCategoryList_blockedShortcutCategories__block_invoke_2;
  v3[3] = &unk_1E7C3A378;
  v3[4] = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

void __51__FCShortcutCategoryList_blockedShortcutCategories__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (![v4 status])
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v4];
  }
}

- (void)addShortcutCategory:(id)category
{
  v28 = *MEMORY[0x1E69E9840];
  categoryCopy = category;
  [MEMORY[0x1E696AF00] isMainThread];
  if (categoryCopy)
  {
    v24[0] = @"type";
    v5 = NSStringFromShortcutCategoryType([categoryCopy type]);
    *&buf = v5;
    v24[1] = @"categoryID";
    identifier = [categoryCopy identifier];
    *(&buf + 1) = identifier;
    v24[2] = @"dateAdded";
    dateAdded = [categoryCopy dateAdded];
    v26 = dateAdded;
    v24[3] = @"status";
    v8 = NSStringFromShortcutCategoryStatus([categoryCopy status]);
    v27 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:v24 count:4];

    if (self)
    {
LABEL_3:
      itemsLock = self->_itemsLock;
      goto LABEL_4;
    }
  }

  else
  {
    v9 = 0;
    if (self)
    {
      goto LABEL_3;
    }
  }

  itemsLock = 0;
LABEL_4:
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __46__FCShortcutCategoryList_addShortcutCategory___block_invoke;
  v21[3] = &unk_1E7C36C58;
  v21[4] = self;
  v11 = categoryCopy;
  v22 = v11;
  [(FCMTWriterLock *)itemsLock performWriteSync:v21];
  localStore = [(FCPrivateDataController *)self localStore];
  identifier2 = [v11 identifier];
  [localStore setObject:v9 forKey:identifier2];

  v14 = FCShortcutCategoryListLog;
  if (os_log_type_enabled(FCShortcutCategoryListLog, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v14;
    identifier3 = [v11 identifier];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = identifier3;
    _os_log_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_DEFAULT, "Adding shortcut category, identifier=<%{public}@>", &buf, 0xCu);
  }

  v17 = [FCModifyShortcutCategoryListCommand alloc];
  v23 = v11;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v19 = [(FCModifyShortcutCategoryListCommand *)v17 initWithShortcutCategories:v18 merge:0];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v19];
  v20 = *MEMORY[0x1E69E9840];
}

void __46__FCShortcutCategoryList_addShortcutCategory___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[11];
  }

  v2 = *(a1 + 40);
  v3 = v1;
  v4 = [v2 identifier];
  [v3 setObject:v2 forKey:v4];
}

- (void)removeShortcutCategoryWithIdentifier:(id)identifier
{
  v28 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  [MEMORY[0x1E696AF00] isMainThread];
  if (identifierCopy)
  {
    if (self)
    {
      shortcutCategoriesByID = self->_shortcutCategoriesByID;
    }

    else
    {
      shortcutCategoriesByID = 0;
    }

    v6 = shortcutCategoriesByID;
    v7 = [(NSMutableDictionary *)v6 objectForKey:identifierCopy];

    if (v7)
    {
      if (self)
      {
        itemsLock = self->_itemsLock;
      }

      else
      {
        itemsLock = 0;
      }

      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __63__FCShortcutCategoryList_removeShortcutCategoryWithIdentifier___block_invoke;
      v17[3] = &unk_1E7C36C58;
      v17[4] = self;
      v9 = identifierCopy;
      v18 = v9;
      [(FCMTWriterLock *)itemsLock performWriteSync:v17];
      localStore = [(FCPrivateDataController *)self localStore];
      [localStore removeObjectForKey:v9];

      v11 = FCShortcutCategoryListLog;
      if (os_log_type_enabled(FCShortcutCategoryListLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v21 = v9;
        _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, "Removing shortcut category <%{public}@>", buf, 0xCu);
      }

      v12 = [FCRemoveFromShortcutCategoryListCommand alloc];
      v19 = v7;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
      v14 = [(FCRemoveFromShortcutCategoryListCommand *)v12 initWithShortcutCategories:v13];

      [(FCPrivateDataController *)self addCommandToCommandQueue:v14];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "shortcutCategory"];
      *buf = 136315906;
      v21 = "[FCShortcutCategoryList removeShortcutCategoryWithIdentifier:]";
      v22 = 2080;
      v23 = "FCShortcutCategoryList.m";
      v24 = 1024;
      v25 = 106;
      v26 = 2114;
      v27 = v16;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "identifier"];
    *buf = 136315906;
    v21 = "[FCShortcutCategoryList removeShortcutCategoryWithIdentifier:]";
    v22 = 2080;
    v23 = "FCShortcutCategoryList.m";
    v24 = 1024;
    v25 = 102;
    v26 = 2114;
    v27 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
LABEL_14:
  }

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t __63__FCShortcutCategoryList_removeShortcutCategoryWithIdentifier___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[11];
  }

  return [v1 removeObjectForKey:*(a1 + 40)];
}

- (void)removeAllShortcutCategories
{
  v22 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AF00] isMainThread];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__17;
  v18 = __Block_byref_object_dispose__17;
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v19 = [v3 initWithArray:MEMORY[0x1E695E0F0]];
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v5 = itemsLock;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__FCShortcutCategoryList_removeAllShortcutCategories__block_invoke;
  v13[3] = &unk_1E7C3A3A0;
  v13[4] = self;
  v13[5] = &v14;
  [(FCMTWriterLock *)v5 performWriteSync:v13];

  v6 = v15[5];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__FCShortcutCategoryList_removeAllShortcutCategories__block_invoke_3;
  v12[3] = &unk_1E7C393D0;
  v12[4] = self;
  [v6 enumerateObjectsUsingBlock:v12];
  v7 = FCShortcutCategoryListLog;
  if (os_log_type_enabled(FCShortcutCategoryListLog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v15[5];
    *buf = 138543362;
    v21 = v8;
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "Removing shortcut categories <%{public}@>", buf, 0xCu);
  }

  v9 = [FCRemoveFromShortcutCategoryListCommand alloc];
  v10 = [(FCRemoveFromShortcutCategoryListCommand *)v9 initWithShortcutCategories:v15[5]];
  [(FCPrivateDataController *)self addCommandToCommandQueue:v10];

  _Block_object_dispose(&v14, 8);
  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __53__FCShortcutCategoryList_removeAllShortcutCategories__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(v1 + 88);
  }

  else
  {
    v2 = 0;
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__FCShortcutCategoryList_removeAllShortcutCategories__block_invoke_2;
  v5[3] = &unk_1E7C3A3C8;
  v3 = *(a1 + 40);
  v5[4] = v1;
  v5[5] = v3;
  return [v2 enumerateKeysAndObjectsUsingBlock:v5];
}

void __53__FCShortcutCategoryList_removeAllShortcutCategories__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = v5[11];
  }

  v6 = v5;
  v8 = a3;
  v7 = [v8 identifier];
  [v6 removeObjectForKey:v7];

  [*(*(*(a1 + 40) + 8) + 40) addObject:v8];
}

void __53__FCShortcutCategoryList_removeAllShortcutCategories__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 localStore];
  [v4 removeObjectForKey:v3];
}

+ (id)commandsToMergeLocalDataToCloud:(id)cloud privateDataDirectory:(id)directory
{
  v27 = *MEMORY[0x1E69E9840];
  cloudCopy = cloud;
  array = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  allKeys = [cloudCopy allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        if (([self isLocalStoreKeyInternal:v12] & 1) == 0)
        {
          v13 = [cloudCopy objectForKey:v12];
          v14 = [[FCShortcutCategory alloc] initWithIdentifier:v12 dictionaryRepresentation:v13];
          [array addObject:v14];
        }
      }

      v9 = [allKeys countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  v15 = FCShortcutCategoryListLog;
  if (os_log_type_enabled(FCShortcutCategoryListLog, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_DEFAULT, "Merging shortcut category list data to icloud", v20, 2u);
  }

  v16 = [[FCModifyShortcutCategoryListCommand alloc] initWithShortcutCategories:array merge:1];
  v25 = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)handleSyncWithChangedRecords:(id)records deletedRecordNames:(id)names
{
  recordsCopy = records;
  namesCopy = names;
  [MEMORY[0x1E696AF00] isMainThread];
  localStore = [(FCPrivateDataController *)self localStore];
  v9 = objc_opt_new();
  v10 = v9;
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __74__FCShortcutCategoryList_handleSyncWithChangedRecords_deletedRecordNames___block_invoke;
  v16[3] = &unk_1E7C376C8;
  v17 = recordsCopy;
  selfCopy = self;
  v19 = v9;
  v20 = localStore;
  v21 = namesCopy;
  v12 = namesCopy;
  v13 = localStore;
  v14 = v10;
  v15 = recordsCopy;
  [(FCMTWriterLock *)itemsLock performWriteSync:v16];
}

void __74__FCShortcutCategoryList_handleSyncWithChangedRecords_deletedRecordNames___block_invoke(uint64_t a1)
{
  v1 = a1;
  v73[2] = *MEMORY[0x1E69E9840];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = *(a1 + 32);
  v55 = v1;
  v52 = [obj countByEnumeratingWithState:&v63 objects:v68 count:16];
  if (v52)
  {
    v51 = *v64;
    *&v2 = 136315906;
    v49 = v2;
    do
    {
      v3 = 0;
      do
      {
        if (*v64 != v51)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v63 + 1) + 8 * v3);
        v5 = *(v1 + 40);
        v6 = *(v1 + 56);
        v58 = *(v1 + 48);
        v7 = v6;
        if (v5)
        {
          v54 = v5;
          v56 = v3;
          v8 = v4;
          v9 = [v8 recordID];
          v10 = [v9 recordName];

          v11 = [v7 objectForKey:v10];
          v12 = [v8 objectForKeyedSubscript:@"dateAdded"];
          v13 = [v8 objectForKeyedSubscript:@"type"];
          v14 = [v8 objectForKeyedSubscript:@"categoryID"];
          v15 = [v8 objectForKeyedSubscript:@"status"];

          v57 = v15;
          if (v11)
          {
            v53 = v11;
            v16 = [v11 mutableCopy];
            [v16 fc_safelySetObjectAllowingNil:v12 forKey:@"dateAdded"];
            [v16 fc_safelySetObjectAllowingNil:v13 forKey:@"type"];
            [v16 fc_safelySetObjectAllowingNil:v14 forKey:@"categoryID"];
            [v16 fc_safelySetObjectAllowingNil:v15 forKey:@"status"];
            v17 = v7;
            [v7 setObject:v16 forKey:v10];
            v18 = v14;
            v19 = v10;
            v3 = v56;
            if (v19)
            {
              v20 = v14;
              v21 = [[FCShortcutCategory alloc] initWithIdentifier:v19 dictionaryRepresentation:v16];
              [*(v54 + 88) setObject:v21 forKey:v19];
              [v58 addObject:v21];
              v22 = FCShortcutCategoryListLog;
              if (os_log_type_enabled(FCShortcutCategoryListLog, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                *&buf[4] = v19;
                _os_log_impl(&dword_1B63EF000, v22, OS_LOG_TYPE_DEFAULT, "Modifying shortcut category when handling sync <%{public}@>", buf, 0xCu);
              }

              v18 = v20;
            }

            v23 = v12;
            v11 = v53;
            v7 = v17;
            goto LABEL_13;
          }

          v25 = v14;
          v19 = v10;
          if (!v10 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"should never have a shortcut category without an item ID"];
            *buf = v49;
            *&buf[4] = "[FCShortcutCategoryList _syncShortcutCategories:localStore:record:]";
            *&buf[12] = 2080;
            *&buf[14] = "FCShortcutCategoryList.m";
            *&buf[22] = 1024;
            LODWORD(v73[0]) = 317;
            WORD2(v73[0]) = 2114;
            *(v73 + 6) = v31;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
          }

          v23 = v12;
          v3 = v56;
          if (!v12 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"should never have a shortcut category without a date added"];
            *buf = v49;
            *&buf[4] = "[FCShortcutCategoryList _syncShortcutCategories:localStore:record:]";
            *&buf[12] = 2080;
            *&buf[14] = "FCShortcutCategoryList.m";
            *&buf[22] = 1024;
            LODWORD(v73[0]) = 318;
            WORD2(v73[0]) = 2114;
            *(v73 + 6) = v32;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

            if (!v13)
            {
              goto LABEL_23;
            }
          }

          else if (!v13)
          {
LABEL_23:
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"should never have a shortcut category without a category type value"];
              *buf = v49;
              *&buf[4] = "[FCShortcutCategoryList _syncShortcutCategories:localStore:record:]";
              *&buf[12] = 2080;
              *&buf[14] = "FCShortcutCategoryList.m";
              *&buf[22] = 1024;
              LODWORD(v73[0]) = 319;
              WORD2(v73[0]) = 2114;
              *(v73 + 6) = v33;
              _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
            }
          }

          v18 = v25;
          if (!v25 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"should never have a shortcut category without a category id value"];
            *buf = v49;
            *&buf[4] = "[FCShortcutCategoryList _syncShortcutCategories:localStore:record:]";
            *&buf[12] = 2080;
            *&buf[14] = "FCShortcutCategoryList.m";
            *&buf[22] = 1024;
            LODWORD(v73[0]) = 320;
            WORD2(v73[0]) = 2114;
            *(v73 + 6) = v34;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

            v18 = 0;
          }

          v24 = v57;
          if (v57)
          {
            if (v19 && v12 && v13 && v18)
            {
              v71[0] = @"dateAdded";
              v71[1] = @"type";
              *buf = v12;
              *&buf[8] = v13;
              v71[2] = @"categoryID";
              v71[3] = @"status";
              *&buf[16] = v18;
              v73[0] = v57;
              v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:v71 count:4];
              v27 = [[FCShortcutCategory alloc] initWithIdentifier:v19 dictionaryRepresentation:v26];
              [*(v54 + 88) setObject:v27 forKey:v19];
              [v7 setObject:v26 forKey:v19];
              [v58 addObject:v27];
              v28 = FCShortcutCategoryListLog;
              if (os_log_type_enabled(FCShortcutCategoryListLog, OS_LOG_TYPE_DEFAULT))
              {
                *v69 = 138543362;
                v70 = v19;
                _os_log_impl(&dword_1B63EF000, v28, OS_LOG_TYPE_DEFAULT, "Adding shortcut category when handling sync <%{public}@>", v69, 0xCu);
              }

              v18 = v25;
LABEL_13:
              v24 = v57;
            }
          }

          else
          {
            v29 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v24 = 0;
            if (v29)
            {
              v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"should never have a shortcut category without a category status value"];
              *buf = v49;
              *&buf[4] = "[FCShortcutCategoryList _syncShortcutCategories:localStore:record:]";
              *&buf[12] = 2080;
              *&buf[14] = "FCShortcutCategoryList.m";
              *&buf[22] = 1024;
              LODWORD(v73[0]) = 321;
              WORD2(v73[0]) = 2114;
              *(v73 + 6) = v30;
              _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

              v24 = 0;
              v23 = v12;
            }
          }

          v1 = v55;
        }

        ++v3;
      }

      while (v52 != v3);
      v35 = [obj countByEnumeratingWithState:&v63 objects:v68 count:16];
      v52 = v35;
    }

    while (v35);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v36 = *(v1 + 64);
  v37 = [v36 countByEnumeratingWithState:&v59 objects:v67 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v60;
    do
    {
      v40 = 0;
      do
      {
        if (*v60 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v59 + 1) + 8 * v40);
        v42 = [*(v1 + 56) objectForKey:{v41, v49}];
        if (v42)
        {
          v43 = [[FCShortcutCategory alloc] initWithIdentifier:v41 dictionaryRepresentation:v42];
          v44 = *(v1 + 40);
          if (v44)
          {
            v45 = *(v44 + 88);
          }

          else
          {
            v45 = 0;
          }

          [v45 removeObjectForKey:v41];
          [*(v1 + 56) removeObjectForKey:v41];
          [*(v1 + 48) addObject:v43];
          v46 = FCShortcutCategoryListLog;
          if (os_log_type_enabled(FCShortcutCategoryListLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v41;
            _os_log_impl(&dword_1B63EF000, v46, OS_LOG_TYPE_DEFAULT, "Removing shortcut category when handling sync <%{public}@>", buf, 0xCu);
          }

          v1 = v55;
        }

        ++v40;
      }

      while (v38 != v40);
      v47 = [v36 countByEnumeratingWithState:&v59 objects:v67 count:16];
      v38 = v47;
    }

    while (v47);
  }

  v48 = *MEMORY[0x1E69E9840];
}

- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)d
{
  [MEMORY[0x1E696AF00] isMainThread];
  if (self)
  {
    shortcutCategoriesByID = self->_shortcutCategoriesByID;
  }

  else
  {
    shortcutCategoriesByID = 0;
  }

  allValues = [(NSMutableDictionary *)shortcutCategoriesByID allValues];
  v6 = [allValues fc_arrayByTransformingWithBlock:&__block_literal_global_24];

  return v6;
}

- (void)loadLocalCachesFromStore
{
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__FCShortcutCategoryList_loadLocalCachesFromStore__block_invoke;
  v3[3] = &unk_1E7C36EA0;
  v3[4] = self;
  [(FCMTWriterLock *)itemsLock performWriteSync:v3];
}

void __50__FCShortcutCategoryList_loadLocalCachesFromStore__block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_storeStrong((v3 + 88), v2);
  }

  v4 = [*(a1 + 32) localStore];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [v4 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    v9 = 0x1E695D000uLL;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = *(a1 + 32);
        if (([objc_opt_class() isLocalStoreKeyInternal:v11] & 1) == 0)
        {
          v13 = *(v9 + 3872);
          objc_opt_class();
          v14 = [v4 objectForKey:v11];
          if (v14)
          {
            if (objc_opt_isKindOfClass())
            {
              v15 = v14;
            }

            else
            {
              v15 = 0;
            }
          }

          else
          {
            v15 = 0;
          }

          v16 = v15;

          if (v16)
          {
            v17 = [[FCShortcutCategory alloc] initWithIdentifier:v11 dictionaryRepresentation:v16];
            if (v17)
            {
              v18 = *(a1 + 32);
              if (v18)
              {
                v18 = v18[11];
              }

              v19 = v18;
              v20 = [v17 identifier];
              [v19 setObject:v17 forKey:v20];

              v9 = 0x1E695D000;
            }
          }

          else
          {
            v21 = FCDefaultLog;
            if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_ERROR))
            {
              v22 = v21;
              v23 = objc_opt_class();
              v24 = NSStringFromClass(v23);
              *buf = 138412546;
              v31 = v24;
              v32 = 2114;
              v33 = v11;
              _os_log_error_impl(&dword_1B63EF000, v22, OS_LOG_TYPE_ERROR, "ERROR: Object of type %@ is not dictionary for key %{public}@", buf, 0x16u);

              v9 = 0x1E695D000;
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v7);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (id)recordsForRestoringZoneName:(id)name
{
  selfCopy = self;
  if (self)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x3032000000;
    v11 = __Block_byref_object_copy__17;
    v12 = __Block_byref_object_dispose__17;
    v13 = 0;
    v4 = self->_itemsLock;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __48__FCShortcutCategoryList__allShortcutCategories__block_invoke;
    v7[3] = &unk_1E7C37160;
    v7[4] = selfCopy;
    v7[5] = &v8;
    [(FCMTWriterLock *)v4 performReadSync:v7];

    selfCopy = v9[5];
    _Block_object_dispose(&v8, 8);
  }

  v5 = [(FCShortcutCategoryList *)selfCopy fc_arrayByTransformingWithBlock:&__block_literal_global_25];

  return v5;
}

void __48__FCShortcutCategoryList__allShortcutCategories__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[11];
  }

  v3 = v2;
  v7 = [v3 allValues];
  v4 = [v7 copy];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

@end