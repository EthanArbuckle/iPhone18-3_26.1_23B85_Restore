@interface QuickWebsiteSearchCompletionProvider
- (void)setQueryToComplete:(id)complete;
@end

@implementation QuickWebsiteSearchCompletionProvider

- (void)setQueryToComplete:(id)complete
{
  completeCopy = complete;
  queryString = [completeCopy queryString];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v7 = [standardUserDefaults BOOLForKey:@"DisableWebsiteSpecificSearch"];

  if (v7)
  {
    [(CompletionProvider *)self setCompletions:MEMORY[0x277CBEBF8] forString:queryString];
  }

  else
  {
    objc_initWeak(&location, self);
    v8 = [[QuickWebsiteSearchQuery alloc] initWithUserEnteredQuery:completeCopy];
    mEMORY[0x277D4A028] = [MEMORY[0x277D4A028] sharedController];
    searchTerms = [(QuickWebsiteSearchQuery *)v8 searchTerms];

    if (searchTerms)
    {
      v11 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __59__QuickWebsiteSearchCompletionProvider_setQueryToComplete___block_invoke;
      block[3] = &unk_2781D9330;
      v13 = mEMORY[0x277D4A028];
      v14 = queryString;
      selfCopy = self;
      v16 = v8;
      v17 = completeCopy;
      objc_copyWeak(&v18, &location);
      dispatch_async(v11, block);

      objc_destroyWeak(&v18);
    }

    else
    {
      [(CompletionProvider *)self setCompletions:MEMORY[0x277CBEBF8] forString:queryString];
    }

    objc_destroyWeak(&location);
  }
}

void __59__QuickWebsiteSearchCompletionProvider_setQueryToComplete___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) delegate];
  v5 = [v4 currentSearchEngineHostSuffixes];
  v6 = [v2 providersMatchingQueryString:v3 excludingSearchEngineHostSuffixes:v5];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__QuickWebsiteSearchCompletionProvider_setQueryToComplete___block_invoke_2;
  v13[3] = &unk_2781D9308;
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  v7 = [v6 safari_mapObjectsUsingBlock:v13];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__QuickWebsiteSearchCompletionProvider_setQueryToComplete___block_invoke_3;
  block[3] = &unk_2781D6060;
  objc_copyWeak(&v12, (a1 + 72));
  v10 = v7;
  v11 = *(a1 + 40);
  v8 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v12);
}

QuickWebsiteSearchCompletionItem *__59__QuickWebsiteSearchCompletionProvider_setQueryToComplete___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = -[QuickWebsiteSearchCompletionItem initWithProvider:query:forQueryID:]([QuickWebsiteSearchCompletionItem alloc], "initWithProvider:query:forQueryID:", v3, *(a1 + 32), [*(a1 + 40) queryID]);

  return v4;
}

void __59__QuickWebsiteSearchCompletionProvider_setQueryToComplete___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained setCompletions:*(a1 + 32) forString:*(a1 + 40)];
    WeakRetained = v3;
  }
}

@end