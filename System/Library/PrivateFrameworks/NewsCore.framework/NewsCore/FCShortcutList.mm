@interface FCShortcutList
+ (id)backingRecordZoneIDs;
+ (id)commandsToMergeLocalDataToCloud:(id)cloud privateDataDirectory:(id)directory;
- (BOOL)containsShortcut:(id)shortcut;
- (BOOL)moveShortcutWithIdentifier:(id)identifier toIndex:(unint64_t)index;
- (FCShortcutList)initWithContext:(id)context pushNotificationCenter:(id)center storeDirectory:(id)directory;
- (NSOrderedSet)orderedShortcuts;
- (id)_allShortcuts;
- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)d;
- (id)recordsForRestoringZoneName:(id)name;
- (void)_addCommandToCommandQueue:(uint64_t)queue;
- (void)_addedShortcuts:(void *)shortcuts changedShortcuts:(void *)changedShortcuts removedShortcuts:;
- (void)_moveShortcut:(uint64_t)shortcut toIndex:;
- (void)addObserver:(id)observer;
- (void)addShortcut:(id)shortcut;
- (void)handleSyncWithChangedRecords:(id)records deletedRecordNames:(id)names;
- (void)loadLocalCachesFromStore;
- (void)removeObserver:(id)observer;
- (void)removeShortcutWithIdentifier:(id)identifier;
- (void)updateShortcutOrderForOrderedIdentifiers:(id)identifiers;
- (void)validateShortcuts;
@end

@implementation FCShortcutList

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
  v3[2] = __42__FCShortcutList_loadLocalCachesFromStore__block_invoke;
  v3[3] = &unk_1E7C36EA0;
  v3[4] = self;
  [(NFMutexLock *)itemsLock performWithLockSync:v3];
}

void __42__FCShortcutList_loadLocalCachesFromStore__block_invoke(uint64_t a1)
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
            v17 = [[FCShortcut alloc] initWithIdentifier:v11 dictionaryRepresentation:v16];
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

- (NSOrderedSet)orderedShortcuts
{
  if (self)
  {
    v2 = MEMORY[0x1E695DFB8];
    _allShortcuts = [(FCShortcutList *)&self->super.super.isa _allShortcuts];
    v4 = [_allShortcuts sortedArrayUsingComparator:&__block_literal_global_56_0];
    v5 = [v2 orderedSetWithArray:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_allShortcuts
{
  selfCopy = self;
  if (self)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__4;
    v9 = __Block_byref_object_dispose__4;
    v10 = 0;
    v2 = self[12];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __31__FCShortcutList__allShortcuts__block_invoke;
    v4[3] = &unk_1E7C37160;
    v4[4] = selfCopy;
    v4[5] = &v5;
    [v2 performWithLockSync:v4];

    selfCopy = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  return selfCopy;
}

void __31__FCShortcutList__allShortcuts__block_invoke(uint64_t a1)
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

- (FCShortcutList)initWithContext:(id)context pushNotificationCenter:(id)center storeDirectory:(id)directory
{
  v11.receiver = self;
  v11.super_class = FCShortcutList;
  v5 = [(FCPrivateDataController *)&v11 initWithContext:context pushNotificationCenter:center storeDirectory:directory];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69B68E8]);
    itemsLock = v5->_itemsLock;
    v5->_itemsLock = v6;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    shortcutsByID = v5->_shortcutsByID;
    v5->_shortcutsByID = dictionary;
  }

  return v5;
}

- (void)addShortcut:(id)shortcut
{
  v29 = *MEMORY[0x1E69E9840];
  shortcutCopy = shortcut;
  v5 = shortcutCopy;
  if (shortcutCopy)
  {
    v26[0] = @"dateAdded";
    dateAdded = [shortcutCopy dateAdded];
    *&buf = dateAdded;
    v26[1] = @"order";
    order = [v5 order];
    *(&buf + 1) = order;
    v26[2] = @"type";
    v8 = NSStringFromShortcutType([v5 shortcutType]);
    v28 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:v26 count:3];

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
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __30__FCShortcutList_addShortcut___block_invoke;
  v22[3] = &unk_1E7C36C58;
  v22[4] = self;
  v11 = v5;
  v23 = v11;
  [(NFMutexLock *)itemsLock performWithLockSync:v22];
  localStore = [(FCPrivateDataController *)self localStore];
  identifier = [v11 identifier];
  [localStore setObject:v9 forKey:identifier];

  v25 = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  [(FCShortcutList *)self _addedShortcuts:v14 changedShortcuts:MEMORY[0x1E695E0F0] removedShortcuts:MEMORY[0x1E695E0F0]];

  v15 = FCShortcutListLog;
  if (os_log_type_enabled(FCShortcutListLog, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    identifier2 = [v11 identifier];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = identifier2;
    _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEFAULT, "Adding favorites <%{public}@>", &buf, 0xCu);
  }

  v18 = [FCModifyShortcutsCommand alloc];
  v24 = v11;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v20 = [(FCModifyShortcutsCommand *)v18 initWithShortcuts:v19 merge:0];

  [(FCShortcutList *)self _addCommandToCommandQueue:v20];
  v21 = *MEMORY[0x1E69E9840];
}

void __30__FCShortcutList_addShortcut___block_invoke(uint64_t a1)
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

- (void)_addedShortcuts:(void *)shortcuts changedShortcuts:(void *)changedShortcuts removedShortcuts:
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a2;
  shortcutsCopy = shortcuts;
  changedShortcutsCopy = changedShortcuts;
  if (!self)
  {
    goto LABEL_18;
  }

  if (!v7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "shortcutsAdded"];
    *buf = 136315906;
    v26 = "[FCShortcutList _addedShortcuts:changedShortcuts:removedShortcuts:]";
    v27 = 2080;
    v28 = "FCShortcutList.m";
    v29 = 1024;
    v30 = 467;
    v31 = 2114;
    v32 = v17;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (!shortcutsCopy)
    {
LABEL_5:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "shortcutsChanged"];
        *buf = 136315906;
        v26 = "[FCShortcutList _addedShortcuts:changedShortcuts:removedShortcuts:]";
        v27 = 2080;
        v28 = "FCShortcutList.m";
        v29 = 1024;
        v30 = 468;
        v31 = 2114;
        v32 = v18;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }
    }
  }

  else if (!shortcutsCopy)
  {
    goto LABEL_5;
  }

  if (!changedShortcutsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "shortcutsRemoved"];
    *buf = 136315906;
    v26 = "[FCShortcutList _addedShortcuts:changedShortcuts:removedShortcuts:]";
    v27 = 2080;
    v28 = "FCShortcutList.m";
    v29 = 1024;
    v30 = 469;
    v31 = 2114;
    v32 = v19;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  observers = [self observers];
  v11 = [observers copy];

  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [*(*(&v20 + 1) + 8 * v15++) shortcutList:self didAddShortcuts:v7 changedShortcuts:shortcutsCopy removedShortcuts:changedShortcutsCopy];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

LABEL_18:
  v16 = *MEMORY[0x1E69E9840];
}

- (void)_addCommandToCommandQueue:(uint64_t)queue
{
  v3 = a2;
  v4 = v3;
  if (queue)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __44__FCShortcutList__addCommandToCommandQueue___block_invoke;
    v5[3] = &unk_1E7C36C58;
    v5[4] = queue;
    v6 = v3;
    FCPerformBlockOnMainThread(v5);
  }
}

- (void)removeShortcutWithIdentifier:(id)identifier
{
  v39 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    *v36 = 0;
    *&v36[8] = v36;
    *&v36[16] = 0x3032000000;
    *&v37 = __Block_byref_object_copy__4;
    *(&v37 + 1) = __Block_byref_object_dispose__4;
    v38 = 0;
    if (self)
    {
      itemsLock = self->_itemsLock;
    }

    else
    {
      itemsLock = 0;
    }

    v6 = itemsLock;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __47__FCShortcutList_removeShortcutWithIdentifier___block_invoke;
    v24[3] = &unk_1E7C37138;
    v26 = v36;
    v24[4] = self;
    v7 = identifierCopy;
    v25 = v7;
    [(NFMutexLock *)v6 performWithLockSync:v24];

    if (*(*&v36[8] + 40))
    {
      goto LABEL_8;
    }

    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "shortcut"];
      *buf = 136315906;
      v29 = "[FCShortcutList removeShortcutWithIdentifier:]";
      v30 = 2080;
      v31 = "FCShortcutList.m";
      v32 = 1024;
      v33 = 95;
      v34 = 2114;
      v35 = v20;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    if (*(*&v36[8] + 40))
    {
LABEL_8:
      if (self)
      {
        v10 = self->_itemsLock;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __47__FCShortcutList_removeShortcutWithIdentifier___block_invoke_18;
      v22[3] = &unk_1E7C36C58;
      v22[4] = self;
      v12 = v7;
      v23 = v12;
      [(NFMutexLock *)v11 performWithLockSync:v22];

      localStore = [(FCPrivateDataController *)self localStore];
      [localStore removeObjectForKey:v12];

      orderedShortcuts = [(FCShortcutList *)self orderedShortcuts];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __47__FCShortcutList_removeShortcutWithIdentifier___block_invoke_2;
      v21[3] = &unk_1E7C37D78;
      v21[4] = self;
      [orderedShortcuts enumerateObjectsUsingBlock:v21];

      v27 = *(*&v36[8] + 40);
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
      [(FCShortcutList *)self _addedShortcuts:MEMORY[0x1E695E0F0] changedShortcuts:v15 removedShortcuts:?];

      v16 = FCShortcutListLog;
      if (os_log_type_enabled(FCShortcutListLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v29 = v12;
        _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEFAULT, "Removing favorite <%{public}@>", buf, 0xCu);
      }

      v17 = [[FCRemoveShortcutCommand alloc] initWithShortcutID:v12];
      [(FCShortcutList *)self _addCommandToCommandQueue:v17];
    }

    _Block_object_dispose(v36, 8);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "identifier != nil"];
    *v36 = 136315906;
    *&v36[4] = "[FCShortcutList removeShortcutWithIdentifier:]";
    *&v36[12] = 2080;
    *&v36[14] = "FCShortcutList.m";
    *&v36[22] = 1024;
    LODWORD(v37) = 88;
    WORD2(v37) = 2114;
    *(&v37 + 6) = v19;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v36, 0x26u);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __47__FCShortcutList_removeShortcutWithIdentifier___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[11];
  }

  v3 = a1[5];
  v7 = v2;
  v4 = [v7 objectForKey:v3];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

uint64_t __47__FCShortcutList_removeShortcutWithIdentifier___block_invoke_18(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v1 = v1[11];
  }

  return [v1 removeObjectForKey:*(a1 + 40)];
}

- (void)_moveShortcut:(uint64_t)shortcut toIndex:
{
  v33[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (self)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:shortcut];
    order = [v5 order];

    if (v6 != order)
    {
      localStore = [self localStore];
      identifier = [v5 identifier];
      v10 = [localStore objectForKey:identifier];
      v11 = [v10 mutableCopy];

      dateAdded = [v5 dateAdded];
      [v11 fc_safelySetObjectAllowingNil:dateAdded forKey:@"dateAdded"];

      [v11 fc_safelySetObjectAllowingNil:v6 forKey:@"order"];
      v13 = NSStringFromShortcutType([v5 shortcutType]);
      [v11 fc_safelySetObjectAllowingNil:v13 forKey:@"type"];

      identifier2 = [v5 identifier];
      [localStore setObject:v11 forKey:identifier2];

      v15 = [FCShortcut alloc];
      identifier3 = [v5 identifier];
      v17 = [(FCShortcut *)v15 initWithIdentifier:identifier3 dictionaryRepresentation:v11];

      v18 = self[12];
      v25 = MEMORY[0x1E69E9820];
      v26 = 3221225472;
      v27 = __40__FCShortcutList__moveShortcut_toIndex___block_invoke;
      v28 = &unk_1E7C376A0;
      selfCopy = self;
      v30 = v17;
      v31 = v5;
      v19 = v17;
      [v18 performWithLockSync:&v25];
      v20 = [FCModifyShortcutsCommand alloc];
      v33[0] = v19;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:{1, v25, v26, v27, v28, selfCopy}];
      v22 = [(FCModifyShortcutsCommand *)v20 initWithShortcuts:v21 merge:0];

      [(FCShortcutList *)self _addCommandToCommandQueue:v22];
      v32 = v19;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
      [(FCShortcutList *)self _addedShortcuts:v23 changedShortcuts:MEMORY[0x1E695E0F0] removedShortcuts:?];
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (BOOL)moveShortcutWithIdentifier:(id)identifier toIndex:(unint64_t)index
{
  identifierCopy = identifier;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__4;
  v26 = __Block_byref_object_dispose__4;
  v27 = 0;
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v8 = itemsLock;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __53__FCShortcutList_moveShortcutWithIdentifier_toIndex___block_invoke;
  v19[3] = &unk_1E7C37138;
  v21 = &v22;
  v19[4] = self;
  v9 = identifierCopy;
  v20 = v9;
  [(NFMutexLock *)v8 performWithLockSync:v19];

  _allShortcuts = [(FCShortcutList *)&self->super.super.isa _allShortcuts];
  if ([_allShortcuts count] > index && (v11 = v23[5]) != 0)
  {
    order = [v11 order];
    [order floatValue];
    v14 = v13;

    if (v14 == index)
    {
      v16 = 0;
      goto LABEL_9;
    }

    orderedShortcuts = [(FCShortcutList *)self orderedShortcuts];
    _allShortcuts = [orderedShortcuts mutableCopy];

    [_allShortcuts removeObject:v23[5]];
    [_allShortcuts insertObject:v23[5] atIndex:index];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __53__FCShortcutList_moveShortcutWithIdentifier_toIndex___block_invoke_2;
    v18[3] = &unk_1E7C37D78;
    v18[4] = self;
    [_allShortcuts enumerateObjectsUsingBlock:v18];
    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

LABEL_9:
  _Block_object_dispose(&v22, 8);

  return v16;
}

void __53__FCShortcutList_moveShortcutWithIdentifier_toIndex___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[11];
  }

  v3 = a1[5];
  v7 = v2;
  v4 = [v7 objectForKey:v3];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)updateShortcutOrderForOrderedIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__4;
  v40 = __Block_byref_object_dispose__4;
  v41 = 0;
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v6 = itemsLock;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __59__FCShortcutList_updateShortcutOrderForOrderedIdentifiers___block_invoke;
  v32[3] = &unk_1E7C37138;
  v35 = &v36;
  v27 = identifiersCopy;
  v33 = v27;
  selfCopy = self;
  [(NFMutexLock *)v6 performWithLockSync:v32];

  for (i = 0; i < [v37[5] count]; ++i)
  {
    v8 = [v37[5] objectAtIndexedSubscript:i];
    order = [v8 order];
    unsignedIntegerValue = [order unsignedIntegerValue];

    if (i != unsignedIntegerValue)
    {
      localStore = [(FCPrivateDataController *)self localStore];
      identifier = [v8 identifier];
      v13 = [localStore objectForKey:identifier];
      v14 = [v13 mutableCopy];

      dateAdded = [v8 dateAdded];
      [v14 fc_safelySetObjectAllowingNil:dateAdded forKey:@"dateAdded"];

      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
      [v14 fc_safelySetObjectAllowingNil:v16 forKey:@"order"];

      v17 = NSStringFromShortcutType([v8 shortcutType]);
      [v14 fc_safelySetObjectAllowingNil:v17 forKey:@"type"];

      localStore2 = [(FCPrivateDataController *)self localStore];
      identifier2 = [v8 identifier];
      [localStore2 setObject:v14 forKey:identifier2];

      v20 = [FCShortcut alloc];
      identifier3 = [v8 identifier];
      v22 = [(FCShortcut *)v20 initWithIdentifier:identifier3 dictionaryRepresentation:v14];

      [v28 addObject:v22];
    }
  }

  if ([v28 count])
  {
    if (self)
    {
      v23 = self->_itemsLock;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __59__FCShortcutList_updateShortcutOrderForOrderedIdentifiers___block_invoke_3;
    v29[3] = &unk_1E7C36C58;
    v25 = v28;
    v30 = v25;
    selfCopy2 = self;
    [(NFMutexLock *)v24 performWithLockSync:v29];

    v26 = [[FCModifyShortcutsCommand alloc] initWithShortcuts:v25 merge:0];
    [(FCShortcutList *)self _addCommandToCommandQueue:v26];
    [(FCShortcutList *)self _addedShortcuts:v25 changedShortcuts:MEMORY[0x1E695E0F0] removedShortcuts:?];
  }

  _Block_object_dispose(&v36, 8);
}

void __59__FCShortcutList_updateShortcutOrderForOrderedIdentifiers___block_invoke(void *a1)
{
  v2 = a1[4];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__FCShortcutList_updateShortcutOrderForOrderedIdentifiers___block_invoke_2;
  v6[3] = &unk_1E7C37DA0;
  v6[4] = a1[5];
  v3 = [v2 fc_arrayByTransformingWithBlock:v6];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

uint64_t __59__FCShortcutList_updateShortcutOrderForOrderedIdentifiers___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 88);
  }

  else
  {
    v3 = 0;
  }

  return [v3 objectForKey:a2];
}

void __59__FCShortcutList_updateShortcutOrderForOrderedIdentifiers___block_invoke_3(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v8 = *(a1 + 40);
        if (v8)
        {
          v8 = v8[11];
        }

        v9 = v8;
        v10 = [v7 identifier];
        [v9 setObject:v7 forKey:v10];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (BOOL)containsShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__4;
  v17 = __Block_byref_object_dispose__4;
  v18 = 0;
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v6 = itemsLock;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __35__FCShortcutList_containsShortcut___block_invoke;
  v10[3] = &unk_1E7C37138;
  v12 = &v13;
  v10[4] = self;
  v7 = shortcutCopy;
  v11 = v7;
  [(NFMutexLock *)v6 performWithLockSync:v10];

  v8 = v14[5] != 0;
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __35__FCShortcutList_containsShortcut___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[11];
  }

  v3 = a1[5];
  v7 = v2;
  v4 = [v7 objectForKey:v3];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)validateShortcuts
{
  _allShortcuts = [(FCShortcutList *)&self->super.super.isa _allShortcuts];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __35__FCShortcutList_validateShortcuts__block_invoke;
  v14[3] = &unk_1E7C37D78;
  v14[4] = self;
  [_allShortcuts enumerateObjectsUsingBlock:v14];

  context = [(FCPrivateDataController *)self context];
  configurationManager = [context configurationManager];
  configuration = [configurationManager configuration];
  shortcutsMaxCount = [configuration shortcutsMaxCount];

  _allShortcuts2 = [(FCShortcutList *)&self->super.super.isa _allShortcuts];
  v9 = [_allShortcuts2 count];

  if (v9 > shortcutsMaxCount)
  {
    _allShortcuts3 = [(FCShortcutList *)&self->super.super.isa _allShortcuts];
    v11 = [_allShortcuts3 sortedArrayUsingComparator:&__block_literal_global_8];

    v12 = [v11 subarrayWithRange:{shortcutsMaxCount, objc_msgSend(v11, "count") - shortcutsMaxCount}];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __35__FCShortcutList_validateShortcuts__block_invoke_2;
    v13[3] = &unk_1E7C37D78;
    v13[4] = self;
    [v12 enumerateObjectsUsingBlock:v13];
  }
}

void __35__FCShortcutList_validateShortcuts__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 isDeprecated])
  {
    v4 = FCShortcutListLog;
    if (!os_log_type_enabled(FCShortcutListLog, OS_LOG_TYPE_DEFAULT))
    {
LABEL_5:
      v8 = *(a1 + 32);
      v9 = [v3 identifier];
      [v8 removeShortcutWithIdentifier:v9];
      goto LABEL_6;
    }

    v5 = v4;
    v6 = [v3 identifier];
    *v14 = 138543362;
    *&v14[4] = v6;
    v7 = "Removing deprecated favorite: <%{public}@>";
LABEL_4:
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, v7, v14, 0xCu);

    goto LABEL_5;
  }

  if ([v3 shortcutType])
  {
    goto LABEL_8;
  }

  v9 = [v3 identifier];
  if (![v9 fc_isValidTagID])
  {
    v11 = [v3 identifier];
    v12 = [v11 fc_isValidPuzzleTypeID];

    if (v12)
    {
      goto LABEL_8;
    }

    v13 = FCShortcutListLog;
    if (!os_log_type_enabled(FCShortcutListLog, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    v5 = v13;
    v6 = [v3 identifier];
    *v14 = 138543362;
    *&v14[4] = v6;
    v7 = "Removing favorite of type FCShortcutTypeTag with invalid tagID: <%{public}@>";
    goto LABEL_4;
  }

LABEL_6:

LABEL_8:
  v10 = *MEMORY[0x1E69E9840];
}

BOOL __35__FCShortcutList_validateShortcuts__block_invoke_25(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 dateAdded];
  v6 = [v4 dateAdded];

  v7 = [v5 compare:v6] == -1;
  return v7;
}

void __35__FCShortcutList_validateShortcuts__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  [v2 removeShortcutWithIdentifier:v3];
}

- (void)addObserver:(id)observer
{
  v3.receiver = self;
  v3.super_class = FCShortcutList;
  [(FCPrivateDataController *)&v3 addObserver:observer];
}

- (void)removeObserver:(id)observer
{
  v3.receiver = self;
  v3.super_class = FCShortcutList;
  [(FCPrivateDataController *)&v3 removeObserver:observer];
}

- (id)recordsForRestoringZoneName:(id)name
{
  _allShortcuts = [(FCShortcutList *)&self->super.super.isa _allShortcuts];
  v4 = [_allShortcuts fc_arrayByTransformingWithBlock:&__block_literal_global_33_0];

  return v4;
}

+ (id)backingRecordZoneIDs
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695BA90]);
  v3 = [v2 initWithZoneName:@"Shortcuts" ownerName:*MEMORY[0x1E695B728]];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
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
          v14 = [[FCShortcut alloc] initWithIdentifier:v12 dictionaryRepresentation:v13];
          [array addObject:v14];
        }
      }

      v9 = [allKeys countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  v15 = FCShortcutListLog;
  if (os_log_type_enabled(FCShortcutListLog, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_DEFAULT, "Merging favorite data to icloud", v20, 2u);
  }

  v16 = [[FCModifyShortcutsCommand alloc] initWithShortcuts:array merge:1];
  v25 = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)handleSyncWithChangedRecords:(id)records deletedRecordNames:(id)names
{
  recordsCopy = records;
  namesCopy = names;
  localStore = [(FCPrivateDataController *)self localStore];
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  if (self)
  {
    itemsLock = self->_itemsLock;
  }

  else
  {
    itemsLock = 0;
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __66__FCShortcutList_handleSyncWithChangedRecords_deletedRecordNames___block_invoke;
  v19[3] = &unk_1E7C37E08;
  v20 = recordsCopy;
  v21 = localStore;
  selfCopy = self;
  v23 = v9;
  v24 = v10;
  v25 = namesCopy;
  v26 = v11;
  v13 = v11;
  v14 = namesCopy;
  v15 = v10;
  v16 = v9;
  v17 = localStore;
  v18 = recordsCopy;
  [(NFMutexLock *)itemsLock performWithLockSync:v19];
  [(FCShortcutList *)self _addedShortcuts:v16 changedShortcuts:v15 removedShortcuts:v13];
  [(FCShortcutList *)self validateShortcuts];
}

void __66__FCShortcutList_handleSyncWithChangedRecords_deletedRecordNames___block_invoke(uint64_t a1)
{
  v1 = a1;
  v80 = *MEMORY[0x1E69E9840];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v64 objects:v79 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = @"dateAdded";
    v56 = *v65;
    *&v3 = 136315906;
    v54 = v3;
    v59 = v1;
    do
    {
      v6 = 0;
      v58 = v4;
      do
      {
        if (*v65 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v64 + 1) + 8 * v6);
        v8 = [v7 recordID];
        v9 = [v8 recordName];

        v10 = [*(v1 + 40) objectForKey:v9];
        v11 = [v7 objectForKeyedSubscript:v5];
        v12 = [v7 objectForKeyedSubscript:@"order"];
        v13 = v7;
        v14 = v10;
        [v13 objectForKeyedSubscript:@"type"];
        v16 = v15 = v5;
        if (v10)
        {
          v17 = [v10 mutableCopy];
          v18 = v11;
          v19 = v17;
          v57 = v18;
          [v17 fc_safelySetObjectAllowingNil:? forKey:?];
          [v19 fc_safelySetObjectAllowingNil:v12 forKey:@"order"];
          [v19 fc_safelySetObjectAllowingNil:v16 forKey:@"type"];
          [*(v1 + 40) setObject:v19 forKey:v9];
          v20 = v16;
          v21 = v58;
          v5 = v15;
          if (v9)
          {
            v22 = [[FCShortcut alloc] initWithIdentifier:v9 dictionaryRepresentation:v19];
            v23 = *(v59 + 48);
            if (v23)
            {
              v24 = *(v23 + 88);
            }

            else
            {
              v24 = 0;
            }

            [v24 setObject:v22 forKey:v9];
            [*(v59 + 64) addObject:v22];
            v25 = FCShortcutListLog;
            if (os_log_type_enabled(FCShortcutListLog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v72 = v9;
              _os_log_impl(&dword_1B63EF000, v25, OS_LOG_TYPE_DEFAULT, "Modifying favorite when handling sync <%{public}@>", buf, 0xCu);
            }

            v21 = v58;
            v5 = @"dateAdded";
          }

          v26 = v12;
          v11 = v57;
          goto LABEL_14;
        }

        if (!v9 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v33 = v11;
          v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"should never have a shortcut list shortcut without an item ID"];
          *buf = v54;
          v72 = "[FCShortcutList handleSyncWithChangedRecords:deletedRecordNames:]_block_invoke";
          v73 = 2080;
          v74 = "FCShortcutList.m";
          v75 = 1024;
          v76 = 356;
          v77 = 2114;
          v78 = v34;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

          v11 = v33;
        }

        v20 = v16;
        v21 = v58;
        v5 = v15;
        if (!v11 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"should never have a shortcut list shortcut without a date added"];
          *buf = v54;
          v72 = "[FCShortcutList handleSyncWithChangedRecords:deletedRecordNames:]_block_invoke";
          v73 = 2080;
          v74 = "FCShortcutList.m";
          v75 = 1024;
          v76 = 357;
          v77 = 2114;
          v78 = v35;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

          v11 = 0;
        }

        v26 = v12;
        if (!v12 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v36 = v11;
          v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"should never have a shortcut list shortcut without an order value"];
          *buf = v54;
          v72 = "[FCShortcutList handleSyncWithChangedRecords:deletedRecordNames:]_block_invoke";
          v73 = 2080;
          v74 = "FCShortcutList.m";
          v75 = 1024;
          v76 = 358;
          v77 = 2114;
          v78 = v37;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

          v11 = v36;
          if (v20)
          {
LABEL_25:
            if (v9 && v11 && v12)
            {
              v69[0] = v5;
              v69[1] = @"order";
              v27 = v11;
              v70[0] = v11;
              v70[1] = v12;
              v69[2] = @"type";
              v70[2] = v20;
              v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:v69 count:3];
              v29 = [[FCShortcut alloc] initWithIdentifier:v9 dictionaryRepresentation:v28];
              v30 = *(v59 + 48);
              if (v30)
              {
                v31 = *(v30 + 88);
              }

              else
              {
                v31 = 0;
              }

              [v31 setObject:v29 forKey:v9];
              [*(v59 + 40) setObject:v28 forKey:v9];
              [*(v59 + 56) addObject:v29];
              v32 = FCShortcutListLog;
              if (os_log_type_enabled(FCShortcutListLog, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v72 = v9;
                _os_log_impl(&dword_1B63EF000, v32, OS_LOG_TYPE_DEFAULT, "Adding favorite when handling sync <%{public}@>", buf, 0xCu);
              }

              v21 = v58;
              v5 = @"dateAdded";
              v11 = v27;
              v14 = 0;
            }

            goto LABEL_14;
          }
        }

        else if (v20)
        {
          goto LABEL_25;
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v38 = v11;
          v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"should never have a shortcut list shortcut without a type"];
          *buf = v54;
          v72 = "[FCShortcutList handleSyncWithChangedRecords:deletedRecordNames:]_block_invoke";
          v73 = 2080;
          v74 = "FCShortcutList.m";
          v75 = 1024;
          v76 = 359;
          v77 = 2114;
          v78 = v39;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

          v11 = v38;
        }

LABEL_14:

        ++v6;
        v1 = v59;
      }

      while (v21 != v6);
      v40 = [obj countByEnumeratingWithState:&v64 objects:v79 count:16];
      v4 = v40;
    }

    while (v40);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v41 = *(v1 + 72);
  v42 = [v41 countByEnumeratingWithState:&v60 objects:v68 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v61;
    do
    {
      v45 = 0;
      do
      {
        if (*v61 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v60 + 1) + 8 * v45);
        v47 = [*(v1 + 40) objectForKey:v46];
        if (v47)
        {
          v48 = [[FCShortcut alloc] initWithIdentifier:v46 dictionaryRepresentation:v47];
          v49 = *(v1 + 48);
          if (v49)
          {
            v50 = *(v49 + 88);
          }

          else
          {
            v50 = 0;
          }

          [v50 removeObjectForKey:v46];
          [*(v1 + 40) removeObjectForKey:v46];
          [*(v1 + 80) addObject:v48];
          v51 = FCShortcutListLog;
          if (os_log_type_enabled(FCShortcutListLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v72 = v46;
            _os_log_impl(&dword_1B63EF000, v51, OS_LOG_TYPE_DEFAULT, "Removing favorite when handling sync <%{public}@>", buf, 0xCu);
          }
        }

        ++v45;
      }

      while (v43 != v45);
      v52 = [v41 countByEnumeratingWithState:&v60 objects:v68 count:16];
      v43 = v52;
    }

    while (v52);
  }

  v53 = *MEMORY[0x1E69E9840];
}

- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)d
{
  _allShortcuts = [(FCShortcutList *)&self->super.super.isa _allShortcuts];
  v4 = [_allShortcuts fc_arrayByTransformingWithBlock:&__block_literal_global_50];

  return v4;
}

void __40__FCShortcutList__moveShortcut_toIndex___block_invoke(void *a1)
{
  v1 = a1[4];
  if (v1)
  {
    v1 = v1[11];
  }

  v2 = a1[5];
  v3 = a1[6];
  v4 = v1;
  v5 = [v3 identifier];
  [v4 setObject:v2 forKey:v5];
}

uint64_t __35__FCShortcutList__orderedShortcuts__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 order];
  v6 = [v4 order];

  v7 = [v5 compare:v6];
  return v7;
}

@end