@interface _SFBrowserSavedState
+ (_SFBrowserSavedState)sharedBrowserSavedState;
+ (id)defaultBrowserStateDatabase;
+ (id)defaultPPTBrowserStateDatabase;
+ (id)inMemoryDatabase;
+ (void)setSharedBrowserSavedState:(id)a3;
- (BOOL)activeDocumentIsValidForBrowserControllerWithUUID:(id)a3;
- (_SFBrowserSavedState)initWithDatabaseURL:(id)a3;
- (id)readSavedSessionStateDataForTabWithUUID:(id)a3;
- (id)recentlyClosedTabsForProfileWithIdentifier:(id)a3;
- (id)savedTabsStateForBrowserControllerWithUUID:(id)a3;
- (id)tabStateDataForUUID:(id)a3;
- (void)_checkPointWriteAheadLogIfNeeded;
- (void)_notifyThatRecentlyClosedTabsWereRemoved:(id)a3;
- (void)_readBrowserControllersSavedState;
- (void)_readRecentlyClosedTabsStateIfNecessary;
- (void)_removeRecentlyClosedTabStateData:(id)a3;
- (void)addRecentlyClosedTabs:(id)a3 inProfileIdentifier:(id)a4;
- (void)clearRecentlyClosedTabsForProfileWithIdentifier:(id)a3;
- (void)clearSavedTabsForProfileWithIdentifier:(id)a3 closingDatabase:(BOOL)a4;
- (void)dealloc;
- (void)historyItemsWereRemoved:(id)a3;
- (void)loadSessionStateDataAndRemoveRecentlyClosedTab:(id)a3;
- (void)readRecentlyClosedTabsState;
- (void)removeRecentlyClosedTabWithStateData:(id)a3;
- (void)removeTabStateWithTabData:(id)a3;
- (void)removeTabsStateForBrowserControllerWithUUID:(id)a3 andRemoveWindow:(BOOL)a4;
- (void)saveTabsState:(id)a3 forBrowserControllerWithUUID:(id)a4 completion:(id)a5;
- (void)setActiveDocumentIsValid:(BOOL)a3 forBrowserControllerWithUUID:(id)a4;
- (void)setBrowserWindows:(id)a3;
- (void)setSecureDeleteEnabled:(BOOL)a3;
- (void)updateBrowserWindowState:(id)a3 tabs:(id)a4;
- (void)updateSceneID:(id)a3;
@end

@implementation _SFBrowserSavedState

+ (_SFBrowserSavedState)sharedBrowserSavedState
{
  v2 = sharedBrowserSavedStateInstance;
  if (!sharedBrowserSavedStateInstance)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47___SFBrowserSavedState_sharedBrowserSavedState__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    if (+[_SFBrowserSavedState sharedBrowserSavedState]::onceToken != -1)
    {
      dispatch_once(&+[_SFBrowserSavedState sharedBrowserSavedState]::onceToken, block);
    }

    v2 = sharedBrowserSavedStateInstance;
  }

  v3 = v2;

  return v3;
}

+ (id)defaultBrowserStateDatabase
{
  v2 = [a1 alloc];
  if (!safariTabStateDatabaseURL(void)::browserStateDatabaseURL)
  {
    v3 = databaseURLForFileName(&cfstr_BrowserstateDb.isa);
    v4 = safariTabStateDatabaseURL(void)::browserStateDatabaseURL;
    safariTabStateDatabaseURL(void)::browserStateDatabaseURL = v3;
  }

  v5 = [v2 initWithDatabaseURL:?];

  return v5;
}

- (void)_readBrowserControllersSavedState
{
  if ([objc_opt_class() shouldMergeAllWindowsIfNeeded])
  {
    [(SFBrowserStateSQLiteStore *)self->_browserStateSQLiteStore mergeAllWindows];
  }

  v3 = [(SFBrowserStateSQLiteStore *)self->_browserStateSQLiteStore browserWindows];
  browserWindows = self->_browserWindows;
  self->_browserWindows = v3;
}

- (void)_readRecentlyClosedTabsStateIfNecessary
{
  if (!self->_haveLoadedRecentlyClosedTabs)
  {
    self->_haveLoadedRecentlyClosedTabs = 1;
    [(_SFBrowserSavedState *)self readRecentlyClosedTabsState];
  }
}

- (void)readRecentlyClosedTabsState
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  recentlyClosedTabs = self->_recentlyClosedTabs;
  self->_recentlyClosedTabs = v3;

  v5 = [MEMORY[0x1E696AB50] set];
  tabCountByWindowUUID = self->_tabCountByWindowUUID;
  self->_tabCountByWindowUUID = v5;

  [(SFBrowserStateSQLiteStore *)self->_browserStateSQLiteStore recentlyClosedWindows];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  obj = v29 = 0u;
  v7 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v7)
  {
    v20 = *v29;
    do
    {
      v21 = v7;
      for (i = 0; i != v21; ++i)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(obj);
        }

        browserStateSQLiteStore = self->_browserStateSQLiteStore;
        v10 = [*(*(&v28 + 1) + 8 * i) UUIDString];
        v23 = [(SFBrowserStateSQLiteStore *)browserStateSQLiteStore tabStatesWithBrowserWindowUUID:v10];

        v11 = [v23 objectForKeyedSubscript:@"SafariStateDocuments"];
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v22 = v11;
        v12 = [v11 reverseObjectEnumerator];
        v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v13)
        {
          v14 = *v25;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v25 != v14)
              {
                objc_enumerationMutation(v12);
              }

              v16 = [[SFTabStateData alloc] initWithDictionaryRepresentation:*(*(&v24 + 1) + 8 * j)];
              [(NSMutableArray *)self->_recentlyClosedTabs addObject:v16];
              v17 = self->_tabCountByWindowUUID;
              v18 = [(SFTabStateData *)v16 owningBrowserWindowUUIDString];
              [(NSCountedSet *)v17 addObject:v18];
            }

            v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v13);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }
}

+ (void)setSharedBrowserSavedState:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E69DC668] sharedApplication];
  v5 = [v4 launchedToTest];
  if (sharedBrowserSavedStateInstance)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1EFF36230];
    v9 = MEMORY[0x1E696AEC0];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/SafariServices/iOS/MobileSafari/MobileSafariFramework/_SFBrowserSavedState.mm"];
    v11 = [v10 lastPathComponent];
    v12 = [v8 length];
    if (v12)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@", %@", v8];
    }

    else
    {
      v13 = &stru_1EFF36230;
    }

    v14 = [v9 stringWithFormat:@"ASSERTION FAILURE: %s in %s, %@:%d%@", "[[UIApplication sharedApplication] launchedToTest] || !sharedBrowserSavedStateInstance", "+[_SFBrowserSavedState setSharedBrowserSavedState:]", v11, 88, v13];
    if (v12)
    {
    }

    v15 = [MEMORY[0x1E696AF00] callStackSymbols];
    NSLog(&stru_1EFF364B0.isa, v14, v15);

    abort();
  }

  v7 = sharedBrowserSavedStateInstance;
  sharedBrowserSavedStateInstance = v3;
}

+ (id)inMemoryDatabase
{
  v2 = [[a1 alloc] initWithDatabaseURL:0];

  return v2;
}

+ (id)defaultPPTBrowserStateDatabase
{
  v2 = [a1 alloc];
  if (!safariPPTTabStateDatabaseURL(void)::browserStatePPTDatabaseURL)
  {
    v3 = databaseURLForFileName(&cfstr_Browserstatepp.isa);
    v4 = safariPPTTabStateDatabaseURL(void)::browserStatePPTDatabaseURL;
    safariPPTTabStateDatabaseURL(void)::browserStatePPTDatabaseURL = v3;
  }

  v5 = [v2 initWithDatabaseURL:?];

  return v5;
}

- (_SFBrowserSavedState)initWithDatabaseURL:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _SFBrowserSavedState;
  v5 = [(_SFBrowserSavedState *)&v10 init];
  if (v5)
  {
    v6 = [[SFBrowserStateSQLiteStore alloc] initWithDatabaseURL:v4];
    browserStateSQLiteStore = v5->_browserStateSQLiteStore;
    v5->_browserStateSQLiteStore = v6;

    [(_SFBrowserSavedState *)v5 _readBrowserControllersSavedState];
    v8 = v5;
  }

  return v5;
}

- (void)dealloc
{
  [(SFBrowserStateSQLiteStore *)self->_browserStateSQLiteStore closeDatabase];
  v3.receiver = self;
  v3.super_class = _SFBrowserSavedState;
  [(_SFBrowserSavedState *)&v3 dealloc];
}

- (void)setBrowserWindows:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(NSArray *)self->_browserWindows isEqualToArray:v4])
  {
    v5 = [v4 copy];
    browserWindows = self->_browserWindows;
    self->_browserWindows = v5;

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v7);
          }

          browserStateSQLiteStore = self->_browserStateSQLiteStore;
          v12 = [*(*(&v13 + 1) + 8 * v10) dictionaryRepresentation];
          [(SFBrowserStateSQLiteStore *)browserStateSQLiteStore updateBrowserWindowStateWithDictionary:v12 completion:0];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }
  }
}

- (id)savedTabsStateForBrowserControllerWithUUID:(id)a3
{
  browserStateSQLiteStore = self->_browserStateSQLiteStore;
  v4 = [a3 UUIDString];
  v5 = [(SFBrowserStateSQLiteStore *)browserStateSQLiteStore tabStatesWithBrowserWindowUUID:v4];

  return v5;
}

- (void)saveTabsState:(id)a3 forBrowserControllerWithUUID:(id)a4 completion:(id)a5
{
  v8 = a3;
  v7 = a5;
  [(SFBrowserStateSQLiteStore *)self->_browserStateSQLiteStore updateBrowserWindowStateWithDictionary:v8 completion:v7];
  [(_SFBrowserSavedState *)self _checkPointWriteAheadLogIfNeeded];
}

- (void)_checkPointWriteAheadLogIfNeeded
{
  if (self->_checkPointWriteAheadLogOnNextUpdate)
  {
    [(SFBrowserStateSQLiteStore *)self->_browserStateSQLiteStore checkPointWriteAheadLog];
    self->_checkPointWriteAheadLogOnNextUpdate = 0;
  }
}

- (void)setSecureDeleteEnabled:(BOOL)a3
{
  if (self->_secureDeleteEnabled != a3)
  {
    self->_secureDeleteEnabled = a3;
    [(SFBrowserStateSQLiteStore *)self->_browserStateSQLiteStore setSecureDeleteEnabled:?];
  }
}

- (void)removeTabsStateForBrowserControllerWithUUID:(id)a3 andRemoveWindow:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  browserStateSQLiteStore = self->_browserStateSQLiteStore;
  v10 = v6;
  v8 = [v6 UUIDString];
  [(SFBrowserStateSQLiteStore *)browserStateSQLiteStore deleteTabStateWithBrowserWindowUUID:v8 andRemoveWindow:v4];

  if (v4)
  {
    v9 = +[_SFBrowserWindowSettings settings];
    [v9 removeWindowWithUUID:v10];
  }

  [(_SFBrowserSavedState *)self _checkPointWriteAheadLogIfNeeded];
}

- (void)setActiveDocumentIsValid:(BOOL)a3 forBrowserControllerWithUUID:(id)a4
{
  v4 = a3;
  v6 = a4;
  v5 = +[_SFBrowserWindowSettings settings];
  [v5 setActiveDocumentIsValid:v4 forWindowWithUUID:v6];
}

- (BOOL)activeDocumentIsValidForBrowserControllerWithUUID:(id)a3
{
  v3 = a3;
  v4 = +[_SFBrowserWindowSettings settings];
  v5 = [v4 activeDocumentIsValidForWindowWithUUID:v3];

  return v5;
}

- (id)tabStateDataForUUID:(id)a3
{
  v3 = [(SFBrowserStateSQLiteStore *)self->_browserStateSQLiteStore tabStateDataForUUID:a3];

  return v3;
}

- (void)clearSavedTabsForProfileWithIdentifier:(id)a3 closingDatabase:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  [(SFBrowserStateSQLiteStore *)self->_browserStateSQLiteStore deleteSavedTabsForProfileWithIdentifier:?];
  if (v4)
  {
    [(SFBrowserStateSQLiteStore *)self->_browserStateSQLiteStore closeDatabase];
    browserStateSQLiteStore = self->_browserStateSQLiteStore;
    self->_browserStateSQLiteStore = 0;
  }
}

- (void)updateSceneID:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(SFBrowserStateSQLiteStore *)self->_browserStateSQLiteStore updateSceneID:v4])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_browserWindows;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [v9 UUID];
          v11 = [v4 UUID];
          v12 = [v10 isEqual:v11];

          if (v12)
          {
            v13 = [v4 sceneID];
            [v9 setSceneID:v13];

            goto LABEL_12;
          }
        }

        v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

- (void)updateBrowserWindowState:(id)a3 tabs:(id)a4
{
  v7 = a3;
  v6 = a4;
  [(SFBrowserStateSQLiteStore *)self->_browserStateSQLiteStore updateBrowserWindowWithData:v7 tabs:v6];
  [(_SFBrowserSavedState *)self _checkPointWriteAheadLogIfNeeded];
}

- (id)readSavedSessionStateDataForTabWithUUID:(id)a3
{
  browserStateSQLiteStore = self->_browserStateSQLiteStore;
  v4 = [a3 UUIDString];
  v5 = [(SFBrowserStateSQLiteStore *)browserStateSQLiteStore readSavedSessionStateDataForTabWithUUIDString:v4];

  return v5;
}

- (void)removeTabStateWithTabData:(id)a3
{
  v4 = a3;
  if ([v4 privateBrowsing])
  {
    self->_checkPointWriteAheadLogOnNextUpdate = 1;
  }

  [(SFBrowserStateSQLiteStore *)self->_browserStateSQLiteStore removeTabWithTabData:v4];
}

- (void)addRecentlyClosedTabs:(id)a3 inProfileIdentifier:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(_SFBrowserSavedState *)self _readRecentlyClosedTabsStateIfNecessary];
  v8 = [MEMORY[0x1E696AFB0] UUID];
  v9 = [v8 UUIDString];

  if (!self->_recentlyClosedTabs)
  {
    v10 = [MEMORY[0x1E695DF70] array];
    recentlyClosedTabs = self->_recentlyClosedTabs;
    self->_recentlyClosedTabs = v10;

    v12 = [MEMORY[0x1E696AB50] set];
    tabCountByWindowUUID = self->_tabCountByWindowUUID;
    self->_tabCountByWindowUUID = v12;
  }

  if ([v6 count] < 0xC9)
  {
    v14 = v6;
  }

  else
  {
    v14 = [v6 subarrayWithRange:{objc_msgSend(v6, "count") - 200, 200}];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v16)
  {
    v17 = *v24;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v23 + 1) + 8 * i);
        [(NSMutableArray *)self->_recentlyClosedTabs insertObject:v19 atIndex:0, v23];
        [v19 setOwningBrowserWindowUUIDString:v9];
        [(NSCountedSet *)self->_tabCountByWindowUUID addObject:v9];
      }

      v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  v20 = [[_SFBrowserWindowStateData alloc] initWithUUIDString:v9 sceneID:0 profileIdentifier:v7];
  [(_SFBrowserWindowStateData *)v20 setDatabaseID:0x7FFFFFFFFFFFFFFFLL];
  [(_SFBrowserWindowStateData *)v20 setType:2];
  [(_SFBrowserWindowStateData *)v20 setNeedsQuickUpdate:1];
  [(_SFBrowserSavedState *)self updateBrowserWindowState:v20 tabs:v15];
  while ([(NSMutableArray *)self->_recentlyClosedTabs count]>= 0xC9)
  {
    v21 = [(NSMutableArray *)self->_recentlyClosedTabs lastObject];
    [(_SFBrowserSavedState *)self _removeRecentlyClosedTabStateData:v21];

    [(NSMutableArray *)self->_recentlyClosedTabs removeLastObject];
  }

  v22 = [MEMORY[0x1E696AD88] defaultCenter];
  [v22 postNotificationName:@"SFRecentlyClosedTabsWereAdded" object:self];
}

- (void)loadSessionStateDataAndRemoveRecentlyClosedTab:(id)a3
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  recentlyClosedTabs = self->_recentlyClosedTabs;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71___SFBrowserSavedState_loadSessionStateDataAndRemoveRecentlyClosedTab___block_invoke;
  v11[3] = &unk_1E721FC70;
  v6 = v4;
  v12 = v6;
  [(NSMutableArray *)recentlyClosedTabs safari_removeObjectsPassingTest:v11];
  browserStateSQLiteStore = self->_browserStateSQLiteStore;
  v8 = [v6 UUIDString];
  v9 = [(SFBrowserStateSQLiteStore *)browserStateSQLiteStore readSavedSessionStateDataForTabWithUUIDString:v8];
  [v6 setSessionStateData:v9];

  [(_SFBrowserSavedState *)self _removeRecentlyClosedTabStateData:v6];
  v13[0] = v6;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  [(_SFBrowserSavedState *)self _notifyThatRecentlyClosedTabsWereRemoved:v10];
}

- (void)clearRecentlyClosedTabsForProfileWithIdentifier:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v14 = a3;
  [(_SFBrowserSavedState *)self _readRecentlyClosedTabsStateIfNecessary];
  recentlyClosedTabs = self->_recentlyClosedTabs;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __72___SFBrowserSavedState_clearRecentlyClosedTabsForProfileWithIdentifier___block_invoke;
  v19[3] = &unk_1E721FC98;
  v5 = v14;
  v20 = v5;
  v6 = [(NSMutableArray *)recentlyClosedTabs safari_filterObjectsUsingBlock:v19];
  [(NSMutableArray *)self->_recentlyClosedTabs removeObjectsInArray:v6];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_browserWindows;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v8)
  {
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        tabCountByWindowUUID = self->_tabCountByWindowUUID;
        v12 = [*(*(&v15 + 1) + 8 * v10) UUID];
        v13 = [v12 UUIDString];
        [(NSCountedSet *)tabCountByWindowUUID removeObject:v13];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v8);
  }

  [(SFBrowserStateSQLiteStore *)self->_browserStateSQLiteStore deleteRecentlyClosedWindowsWithProfileIdentifier:v5];
  [(_SFBrowserSavedState *)self _notifyThatRecentlyClosedTabsWereRemoved:v6];
}

- (id)recentlyClosedTabsForProfileWithIdentifier:(id)a3
{
  v4 = a3;
  [(_SFBrowserSavedState *)self _readRecentlyClosedTabsStateIfNecessary];
  recentlyClosedTabs = self->_recentlyClosedTabs;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67___SFBrowserSavedState_recentlyClosedTabsForProfileWithIdentifier___block_invoke;
  v9[3] = &unk_1E721FC98;
  v6 = v4;
  v10 = v6;
  v7 = [(NSMutableArray *)recentlyClosedTabs safari_filterObjectsUsingBlock:v9];

  return v7;
}

- (void)_notifyThatRecentlyClosedTabsWereRemoved:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 count])
  {
    v7 = @"SFRemovedTabStateDataKey";
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 postNotificationName:@"SFRecentlyClosedTabsWereRemoved" object:self userInfo:v5];
  }
}

- (void)historyItemsWereRemoved:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  MEMORY[0x18CFFE120](v22, @"com.apple.SafariServices._SFBrowserSavedState.HistoryItemsWereRemoved");
  [(_SFBrowserSavedState *)self _readRecentlyClosedTabsStateIfNecessary];
  v5 = [v4 safari_setByApplyingBlock:&__block_literal_global_71];
  if ([v5 count])
  {
    v6 = [MEMORY[0x1E695DF70] array];
    recentlyClosedTabs = self->_recentlyClosedTabs;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __48___SFBrowserSavedState_historyItemsWereRemoved___block_invoke_2;
    v19[3] = &unk_1E721FCE0;
    v8 = v6;
    v20 = v8;
    v21 = v5;
    v9 = [(NSMutableArray *)recentlyClosedTabs safari_filterObjectsUsingBlock:v19];
    [(SFBrowserStateSQLiteStore *)self->_browserStateSQLiteStore removeSavedSessionStateDataForTabsWithUUIDStrings:v8];
    if ([v9 count])
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
      if (v11)
      {
        v12 = *v16;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v16 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v15 + 1) + 8 * i);
            [(_SFBrowserSavedState *)self _removeRecentlyClosedTabStateData:v14, v15];
            [(NSMutableArray *)self->_recentlyClosedTabs removeObject:v14];
          }

          v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
        }

        while (v11);
      }

      [(_SFBrowserSavedState *)self _notifyThatRecentlyClosedTabsWereRemoved:v10];
    }
  }

  SafariShared::SuddenTerminationDisabler::~SuddenTerminationDisabler(v22);
}

- (void)_removeRecentlyClosedTabStateData:(id)a3
{
  v6 = a3;
  v4 = [v6 owningBrowserWindowUUIDString];
  [(NSCountedSet *)self->_tabCountByWindowUUID removeObject:v4];
  if (([(NSCountedSet *)self->_tabCountByWindowUUID containsObject:v4]& 1) != 0)
  {
    [(_SFBrowserSavedState *)self removeTabStateWithTabData:v6];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v4];
    [(_SFBrowserSavedState *)self removeTabsStateForBrowserControllerWithUUID:v5 andRemoveWindow:1];
  }
}

- (void)removeRecentlyClosedTabWithStateData:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSMutableArray *)self->_recentlyClosedTabs count];
  [(_SFBrowserSavedState *)self _removeRecentlyClosedTabStateData:v4];
  [(NSMutableArray *)self->_recentlyClosedTabs removeObject:v4];
  if ([(NSMutableArray *)self->_recentlyClosedTabs count]< v5)
  {
    v7[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [(_SFBrowserSavedState *)self _notifyThatRecentlyClosedTabsWereRemoved:v6];
  }
}

@end