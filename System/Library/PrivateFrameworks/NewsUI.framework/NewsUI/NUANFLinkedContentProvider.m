@interface NUANFLinkedContentProvider
- (NUANFLinkedContentProvider)initWithContentContext:(id)a3;
- (id)headlineForIdentifier:(id)a3;
- (id)issueForIdentifier:(id)a3;
- (id)loadLinkedArticlesWithIDs:(id)a3 priority:(int64_t)a4 completion:(id)a5;
- (id)loadLinkedContentForHeadline:(id)a3 withContext:(id)a4 priority:(int64_t)a5 completion:(id)a6;
- (id)loadLinkedIssuesWithIDs:(id)a3 priority:(int64_t)a4 completion:(id)a5;
- (id)loadLinkedTagsWithIDs:(id)a3 priority:(int64_t)a4 completion:(id)a5;
- (id)tagForIdentifier:(id)a3;
@end

@implementation NUANFLinkedContentProvider

- (NUANFLinkedContentProvider)initWithContentContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NUANFLinkedContentProvider;
  v6 = [(NUANFLinkedContentProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentContext, a3);
  }

  return v7;
}

- (id)loadLinkedContentForHeadline:(id)a3 withContext:(id)a4 priority:(int64_t)a5 completion:(id)a6
{
  v59 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  block = a6;
  v11 = [v9 linkedArticleIDs];
  v12 = [v11 mutableCopy];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [MEMORY[0x277CBEB18] array];
  }

  v15 = v14;

  v16 = [v9 identifier];
  [v15 addObject:v16];

  v17 = [v9 linkedIssueIDs];
  v18 = [v17 mutableCopy];
  v19 = v18;
  v46 = v9;
  v43 = a5;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = [MEMORY[0x277CBEB18] array];
  }

  v21 = v20;

  v22 = [MEMORY[0x277CBEB18] array];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v45 = v10;
  v23 = [v10 documentController];
  v24 = [v23 additions];

  v25 = [v24 countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v55;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v55 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v54 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = [v29 URL];
          v31 = [v30 fc_NewsArticleID];
          [v15 fc_safelyAddObject:v31];

          v32 = [v30 fc_NewsIssueID];
          [v21 fc_safelyAddObject:v32];

          v33 = [v30 fc_feldsparTagID];
          [v22 fc_safelyAddObject:v33];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v26);
  }

  v34 = [MEMORY[0x277CBEB18] array];
  v35 = dispatch_group_create();
  v36 = v43;
  if ([v15 count])
  {
    dispatch_group_enter(v35);
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __91__NUANFLinkedContentProvider_loadLinkedContentForHeadline_withContext_priority_completion___block_invoke;
    v52[3] = &unk_2799A3498;
    v53 = v35;
    v37 = [(NUANFLinkedContentProvider *)self loadLinkedArticlesWithIDs:v15 priority:v43 completion:v52];
    [v34 addObject:v37];
  }

  if ([v21 count])
  {
    dispatch_group_enter(v35);
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __91__NUANFLinkedContentProvider_loadLinkedContentForHeadline_withContext_priority_completion___block_invoke_2;
    v50[3] = &unk_2799A3498;
    v51 = v35;
    v38 = [(NUANFLinkedContentProvider *)self loadLinkedIssuesWithIDs:v21 priority:v36 completion:v50];
    [v34 addObject:v38];
  }

  if ([v22 count])
  {
    dispatch_group_enter(v35);
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __91__NUANFLinkedContentProvider_loadLinkedContentForHeadline_withContext_priority_completion___block_invoke_3;
    v48[3] = &unk_2799A3498;
    v49 = v35;
    v39 = [(NUANFLinkedContentProvider *)self loadLinkedTagsWithIDs:v22 priority:v36 completion:v48];
    [v34 addObject:v39];
  }

  dispatch_group_notify(v35, MEMORY[0x277D85CD0], block);
  v40 = [MEMORY[0x277D31088] groupCancelHandlerWithCancelHandlers:v34];

  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

- (id)headlineForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NUANFLinkedContentProvider *)self linkedHeadlines];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)issueForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NUANFLinkedContentProvider *)self linkedIssues];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)tagForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(NUANFLinkedContentProvider *)self linkedTags];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)loadLinkedArticlesWithIDs:(id)a3 priority:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 count])
  {
    v10 = objc_alloc(MEMORY[0x277D30DE8]);
    v11 = [(NUANFLinkedContentProvider *)self contentContext];
    v12 = [v10 initWithContext:v11 articleIDs:v8 ignoreCacheForArticleIDs:0];

    [v12 setQualityOfService:FCInferQualityOfServiceFromRelativePriority()];
    [v12 setRelativePriority:a4];
    [v12 setFetchCompletionQueue:MEMORY[0x277D85CD0]];
    objc_initWeak(location, self);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __76__NUANFLinkedContentProvider_loadLinkedArticlesWithIDs_priority_completion___block_invoke_2;
    v18 = &unk_2799A4860;
    objc_copyWeak(&v20, location);
    v19 = v9;
    [v12 setFetchCompletionBlock:&v15];
    v13 = [MEMORY[0x277CCABD8] fc_sharedConcurrentQueue];
    [v13 addOperation:v12];

    objc_destroyWeak(&v20);
    objc_destroyWeak(location);
  }

  else
  {
    location[1] = MEMORY[0x277D85DD0];
    location[2] = 3221225472;
    location[3] = __76__NUANFLinkedContentProvider_loadLinkedArticlesWithIDs_priority_completion___block_invoke;
    location[4] = &unk_2799A4838;
    v22 = v9;
    v22[2]();

    v12 = 0;
  }

  return v12;
}

void __76__NUANFLinkedContentProvider_loadLinkedArticlesWithIDs_priority_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    if ([v3 status])
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __76__NUANFLinkedContentProvider_loadLinkedArticlesWithIDs_priority_completion___block_invoke_4;
      v21[3] = &unk_2799A3148;
      v22 = *(a1 + 32);
      __76__NUANFLinkedContentProvider_loadLinkedArticlesWithIDs_priority_completion___block_invoke_4(v21);
      v7 = v22;
    }

    else
    {
      v16 = v6;
      v7 = [MEMORY[0x277CBEB38] dictionary];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v8 = [v3 fetchedObject];
      v9 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v18;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v18 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v17 + 1) + 8 * i);
            v14 = [v13 identifier];
            [v7 setObject:v13 forKey:v14];
          }

          v10 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
        }

        while (v10);
      }

      v6 = v16;
      [v16 setLinkedHeadlines:v7];
      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __76__NUANFLinkedContentProvider_loadLinkedArticlesWithIDs_priority_completion___block_invoke_3;
    v23[3] = &unk_2799A3148;
    v24 = *(a1 + 32);
    __76__NUANFLinkedContentProvider_loadLinkedArticlesWithIDs_priority_completion___block_invoke_3(v23);
    v6 = v24;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)loadLinkedIssuesWithIDs:(id)a3 priority:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 count])
  {
    v10 = objc_alloc(MEMORY[0x277D310C0]);
    v11 = [(NUANFLinkedContentProvider *)self contentContext];
    v12 = [v10 initWithContext:v11 issueIDs:v8];

    [v12 setQualityOfService:FCInferQualityOfServiceFromRelativePriority()];
    [v12 setRelativePriority:a4];
    objc_initWeak(location, self);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __74__NUANFLinkedContentProvider_loadLinkedIssuesWithIDs_priority_completion___block_invoke_2;
    v18 = &unk_2799A4888;
    objc_copyWeak(&v20, location);
    v19 = v9;
    [v12 setFetchCompletionHandler:&v15];
    v13 = [MEMORY[0x277CCABD8] fc_sharedConcurrentQueue];
    [v13 addOperation:v12];

    objc_destroyWeak(&v20);
    objc_destroyWeak(location);
  }

  else
  {
    location[1] = MEMORY[0x277D85DD0];
    location[2] = 3221225472;
    location[3] = __74__NUANFLinkedContentProvider_loadLinkedIssuesWithIDs_priority_completion___block_invoke;
    location[4] = &unk_2799A4838;
    v22 = v9;
    v22[2]();

    v12 = 0;
  }

  return v12;
}

void __74__NUANFLinkedContentProvider_loadLinkedIssuesWithIDs_priority_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = [MEMORY[0x277CBEB38] dictionary];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v3;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v15 + 1) + 8 * i) identifier];
          [v7 setObject:v8 forKey:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v10);
    }

    [v6 setLinkedIssues:v7];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __74__NUANFLinkedContentProvider_loadLinkedIssuesWithIDs_priority_completion___block_invoke_3;
    v19[3] = &unk_2799A3148;
    v20 = *(a1 + 32);
    __74__NUANFLinkedContentProvider_loadLinkedIssuesWithIDs_priority_completion___block_invoke_3(v19);
    v6 = v20;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)loadLinkedTagsWithIDs:(id)a3 priority:(int64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 count])
  {
    v10 = [(NUANFLinkedContentProvider *)self contentContext];
    v11 = [v10 tagController];
    v12 = [v11 fetchOperationForTagsWithIDs:v8];

    [v12 setQualityOfService:FCInferQualityOfServiceFromRelativePriority()];
    [v12 setRelativePriority:a4];
    objc_initWeak(location, self);
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __72__NUANFLinkedContentProvider_loadLinkedTagsWithIDs_priority_completion___block_invoke_2;
    v18 = &unk_2799A4860;
    objc_copyWeak(&v20, location);
    v19 = v9;
    [v12 setFetchCompletionBlock:&v15];
    v13 = [MEMORY[0x277CCABD8] fc_sharedConcurrentQueue];
    [v13 addOperation:v12];

    objc_destroyWeak(&v20);
    objc_destroyWeak(location);
  }

  else
  {
    location[1] = MEMORY[0x277D85DD0];
    location[2] = 3221225472;
    location[3] = __72__NUANFLinkedContentProvider_loadLinkedTagsWithIDs_priority_completion___block_invoke;
    location[4] = &unk_2799A4838;
    v22 = v9;
    v22[2]();

    v12 = 0;
  }

  return v12;
}

void __72__NUANFLinkedContentProvider_loadLinkedTagsWithIDs_priority_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    if ([v3 status])
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __72__NUANFLinkedContentProvider_loadLinkedTagsWithIDs_priority_completion___block_invoke_4;
      v8[3] = &unk_2799A3148;
      v9 = *(a1 + 32);
      __72__NUANFLinkedContentProvider_loadLinkedTagsWithIDs_priority_completion___block_invoke_4(v8);
    }

    else
    {
      v7 = [v3 fetchedObject];
      [v6 setLinkedTags:v7];

      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __72__NUANFLinkedContentProvider_loadLinkedTagsWithIDs_priority_completion___block_invoke_3;
    v10[3] = &unk_2799A3148;
    v11 = *(a1 + 32);
    __72__NUANFLinkedContentProvider_loadLinkedTagsWithIDs_priority_completion___block_invoke_3(v10);
    v6 = v11;
  }
}

@end