@interface ICSearchIndexer(App)
- (id)mainContextObjectForObjectIDURIString:()App;
- (void)reindexIfNecessary;
@end

@implementation ICSearchIndexer(App)

- (id)mainContextObjectForObjectIDURIString:()App
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__9;
  v31 = __Block_byref_object_dispose__9;
  v32 = 0;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  dataSources = [self dataSources];
  v6 = [dataSources countByEnumeratingWithState:&v23 objects:v35 count:16];
  if (v6)
  {
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(dataSources);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v10 = v9;
          mainThreadContext = [v10 mainThreadContext];
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __62__ICSearchIndexer_App__mainContextObjectForObjectIDURIString___block_invoke;
          v18[3] = &unk_2781AC4C0;
          v12 = v10;
          v19 = v12;
          v20 = v4;
          v22 = &v27;
          v13 = mainThreadContext;
          v21 = v13;
          [v13 performBlockAndWait:v18];
          v14 = v28[5] == 0;

          if (!v14)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v15 = os_log_create("com.apple.notes", "SearchIndexer");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v34 = v9;
            _os_log_impl(&dword_2151A1000, v15, OS_LOG_TYPE_INFO, "Indexer data source does not vend main thread context: %@", buf, 0xCu);
          }
        }
      }

      v6 = [dataSources countByEnumeratingWithState:&v23 objects:v35 count:16];
    }

    while (v6);
  }

LABEL_14:

  v16 = v28[5];
  _Block_object_dispose(&v27, 8);

  return v16;
}

- (void)reindexIfNecessary
{
  v0 = [MEMORY[0x277D36260] objectForKey:*MEMORY[0x277D36310]];
  bOOLValue = [v0 BOOLValue];

  if (bOOLValue)
  {
    v2 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_2151A1000, v2, OS_LOG_TYPE_INFO, "App needs to clean up the search index", v4, 2u);
    }

    reindexer = [MEMORY[0x277D35F58] reindexer];
    [reindexer reindexAllSearchableItemsWithCompletionHandler:&__block_literal_global_10];
  }
}

@end