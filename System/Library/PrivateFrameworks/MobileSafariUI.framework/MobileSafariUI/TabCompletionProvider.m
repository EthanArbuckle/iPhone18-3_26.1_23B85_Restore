@interface TabCompletionProvider
- (BOOL)browserTabCompletionProvider:(id)a3 shouldExtensionURLAppearAsSwitchToTabItem:(id)a4;
- (TabCompletionProviderDataSource)tabCompletionProviderDataSource;
- (id)bestTabCompletionMatchForQuery:(id)a3 withTopHitURL:(id)a4;
- (id)browserTabCompletionProvider:(id)a3 alternativeDisplayTextForURLForExtensionURL:(id)a4;
- (id)selectedTabInfoForBrowserTabCompletionProvider:(id)a3;
- (id)tabInfosForBrowserTabCompletionProvider:(id)a3;
- (void)dealloc;
- (void)didFindMatchesForCurrentQueryInBrowserTabCompletionProvider:(id)a3;
- (void)setQueryToComplete:(id)a3;
@end

@implementation TabCompletionProvider

- (void)dealloc
{
  [(WBSBrowserTabCompletionProvider *)self->_browserTabCompletionProvider invalidate];
  v3.receiver = self;
  v3.super_class = TabCompletionProvider;
  [(TabCompletionProvider *)&v3 dealloc];
}

- (id)bestTabCompletionMatchForQuery:(id)a3 withTopHitURL:(id)a4
{
  v6 = a4;
  v7 = [(CompletionProvider *)self completionsForQuery:a3];
  if ([v7 count])
  {
    v8 = [(WBSBrowserTabCompletionProvider *)self->_browserTabCompletionProvider bestTabCompletionMatchFromMatches:v7 withTopHitURL:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setQueryToComplete:(id)a3
{
  v8 = a3;
  v4 = [v8 queryString];
  browserTabCompletionProvider = self->_browserTabCompletionProvider;
  if (!browserTabCompletionProvider)
  {
    v6 = objc_alloc_init(MEMORY[0x277D49E50]);
    v7 = self->_browserTabCompletionProvider;
    self->_browserTabCompletionProvider = v6;

    [(WBSBrowserTabCompletionProvider *)self->_browserTabCompletionProvider setDataSource:self];
    [(WBSBrowserTabCompletionProvider *)self->_browserTabCompletionProvider setDelegate:self];
    browserTabCompletionProvider = self->_browserTabCompletionProvider;
  }

  -[WBSBrowserTabCompletionProvider setCurrentQuery:forQueryID:](browserTabCompletionProvider, "setCurrentQuery:forQueryID:", v4, [v8 queryID]);
}

- (id)tabInfosForBrowserTabCompletionProvider:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_tabCompletionProviderDataSource);
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [WeakRetained windowUUIDsToTabsForTabCompletionProvider:self];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __65__TabCompletionProvider_tabInfosForBrowserTabCompletionProvider___block_invoke;
  v33[3] = &unk_2781D7430;
  v7 = v5;
  v34 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v33];
  v8 = [WeakRetained currentWindowUUIDForTabCompletionProvider:self];
  [WeakRetained tabGroupsForTabCompletionProvider:self];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v32 = 0u;
  v9 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        v14 = objc_alloc(MEMORY[0x277CCAD78]);
        v15 = [v13 uuid];
        v16 = [v14 initWithUUIDString:v15];

        v17 = [v13 displayTitle];
        v18 = [v13 tabs];
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __65__TabCompletionProvider_tabInfosForBrowserTabCompletionProvider___block_invoke_3;
        v24[3] = &unk_2781D7458;
        v25 = v8;
        v26 = v16;
        v27 = v17;
        v28 = v7;
        v19 = v17;
        v20 = v16;
        [v18 enumerateObjectsUsingBlock:v24];
      }

      v10 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v10);
  }

  v21 = v7;

  return v7;
}

void __65__TabCompletionProvider_tabInfosForBrowserTabCompletionProvider___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__TabCompletionProvider_tabInfosForBrowserTabCompletionProvider___block_invoke_2;
  v7[3] = &unk_2781D7408;
  v8 = v5;
  v9 = *(a1 + 32);
  v6 = v5;
  [a3 enumerateObjectsUsingBlock:v7];
}

void __65__TabCompletionProvider_tabInfosForBrowserTabCompletionProvider___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  v5 = [v11 url];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D49E40]);
    v7 = [v11 uuid];
    v8 = *(a1 + 32);
    v9 = [v11 title];
    v10 = [v6 initWithUUID:v7 windowUUID:v8 tabGroupUUID:0 tabGroupTitle:0 tabIndex:a3 url:v5 title:v9 pageStatus:{objc_msgSend(v11, "pageStatus")}];

    [*(a1 + 40) addObject:v10];
  }
}

void __65__TabCompletionProvider_tabInfosForBrowserTabCompletionProvider___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = a2;
  v5 = [v18 url];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D49E40]);
    v7 = objc_alloc(MEMORY[0x277CCAD78]);
    v8 = [v18 uuid];
    v9 = [v7 initWithUUIDString:v8];
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = [v18 url];
    v14 = [v18 title];
    v15 = a3;
    v16 = v14;
    v17 = [v6 initWithUUID:v9 windowUUID:v10 tabGroupUUID:v11 tabGroupTitle:v12 tabIndex:v15 url:v13 title:v14 pageStatus:0];

    [*(a1 + 56) addObject:v17];
  }
}

- (id)selectedTabInfoForBrowserTabCompletionProvider:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_tabCompletionProviderDataSource);
  v5 = [WeakRetained selectedTabDocumentForTabCompletionProvider:self];

  if (v5)
  {
    v6 = [v5 browserController];
    v7 = [v6 tabController];
    v8 = [v7 currentTabs];
    v9 = [v8 indexOfObjectIdenticalTo:v5];

    v10 = objc_alloc(MEMORY[0x277D49E40]);
    v11 = [v5 uuid];
    v12 = [v6 UUID];
    v13 = [v5 URL];
    v14 = [v5 title];
    v15 = [v10 initWithUUID:v11 windowUUID:v12 tabGroupUUID:0 tabGroupTitle:0 tabIndex:v9 url:v13 title:v14 pageStatus:{objc_msgSend(v5, "pageStatus")}];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)didFindMatchesForCurrentQueryInBrowserTabCompletionProvider:(id)a3
{
  v5 = [(WBSBrowserTabCompletionProvider *)self->_browserTabCompletionProvider currentTabCompletionMatches];
  v4 = [(WBSBrowserTabCompletionProvider *)self->_browserTabCompletionProvider currentQuery];
  [(CompletionProvider *)self setCompletions:v5 forString:v4];
}

- (BOOL)browserTabCompletionProvider:(id)a3 shouldExtensionURLAppearAsSwitchToTabItem:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = +[Application sharedApplication];
  v6 = [v5 allWebExtensionsControllers];

  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v4 host];
        v12 = [v10 webExtensionForBaseURIHost:v11];

        if (v12)
        {
          v13 = [v12 newTabOverridePageURL];
          LODWORD(v7) = [v4 isEqual:v13] ^ 1;

          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (id)browserTabCompletionProvider:(id)a3 alternativeDisplayTextForURLForExtensionURL:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = +[Application sharedApplication];
  v6 = [v5 allWebExtensionsControllers];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v4 host];
        v12 = [v10 webExtensionForBaseURIHost:v11];

        if (v12)
        {
          v7 = [v12 displayName];

          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (TabCompletionProviderDataSource)tabCompletionProviderDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_tabCompletionProviderDataSource);

  return WeakRetained;
}

@end