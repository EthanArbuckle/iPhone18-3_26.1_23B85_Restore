@interface ICSearchIndexer
@end

@implementation ICSearchIndexer

void __62__ICSearchIndexer_App__mainContextObjectForObjectIDURIString___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) persistentStoreCoordinator];
  v3 = [v2 ic_managedObjectIDForURIString:*(a1 + 40)];

  if (v3)
  {
    v4 = *(a1 + 48);
    v11 = 0;
    v5 = [v4 existingObjectWithID:v3 error:&v11];
    v6 = v11;
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v5;

    if (v6)
    {
      v9 = os_log_create("com.apple.notes", "SearchIndexer");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v13 = v3;
        v14 = 2112;
        v15 = v6;
        _os_log_impl(&dword_2151A1000, v9, OS_LOG_TYPE_INFO, "Error fetching object with ID %@: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v6 = os_log_create("com.apple.notes", "SearchIndexer");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 40);
      *buf = 138412290;
      v13 = v10;
      _os_log_impl(&dword_2151A1000, v6, OS_LOG_TYPE_INFO, "No objectID corresponding to objectIDURI: %@", buf, 0xCu);
    }
  }
}

void __42__ICSearchIndexer_App__reindexIfNecessary__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = os_log_create("com.apple.notes", "SearchIndexer");
  v4 = v3;
  if (a2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __42__ICSearchIndexer_App__reindexIfNecessary__block_invoke_cold_1(v4);
    }

    [MEMORY[0x277D36260] setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D36310]];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_2151A1000, v4, OS_LOG_TYPE_INFO, "App completed reindexing", v5, 2u);
    }
  }
}

@end