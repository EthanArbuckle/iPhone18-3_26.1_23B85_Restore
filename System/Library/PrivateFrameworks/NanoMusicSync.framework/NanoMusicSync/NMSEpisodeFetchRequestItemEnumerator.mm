@interface NMSEpisodeFetchRequestItemEnumerator
- (NMSEpisodeFetchRequestItemEnumerator)initWithFetchRequest:(id)request ctx:(id)ctx;
- (NSArray)items;
- (id)_getNextItem;
@end

@implementation NMSEpisodeFetchRequestItemEnumerator

- (NMSEpisodeFetchRequestItemEnumerator)initWithFetchRequest:(id)request ctx:(id)ctx
{
  requestCopy = request;
  ctxCopy = ctx;
  v11.receiver = self;
  v11.super_class = NMSEpisodeFetchRequestItemEnumerator;
  v9 = [(NMSEpisodeFetchRequestItemEnumerator *)&v11 init];
  if (v9)
  {
    if (![requestCopy fetchBatchSize])
    {
      [requestCopy setFetchBatchSize:3];
    }

    objc_storeStrong(&v9->_fetchRequest, request);
    objc_storeStrong(&v9->_ctx, ctx);
  }

  return v9;
}

- (id)_getNextItem
{
  itemIndex = self->_itemIndex;
  items = [(NMSEpisodeFetchRequestItemEnumerator *)self items];
  v5 = [items count];

  if (itemIndex >= v5)
  {
    items = self->_items;
    self->_items = 0;

    v10 = 0;
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__9;
    v17 = __Block_byref_object_dispose__9;
    v18 = 0;
    ctx = self->_ctx;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __52__NMSEpisodeFetchRequestItemEnumerator__getNextItem__block_invoke;
    v12[3] = &unk_27993E410;
    v12[4] = self;
    v12[5] = &v13;
    [(NSManagedObjectContext *)ctx performBlockAndWait:v12];
    v7 = v14[5];
    if (v7)
    {
      _getNextItem = v7;
    }

    else
    {
      _getNextItem = [(NMSEpisodeFetchRequestItemEnumerator *)self _getNextItem];
    }

    v10 = _getNextItem;
    _Block_object_dispose(&v13, 8);
  }

  return v10;
}

void __52__NMSEpisodeFetchRequestItemEnumerator__getNextItem__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) items];
  v6 = [v2 objectAtIndex:*(*(a1 + 32) + 24)];

  if ([v6 downloadBehavior] != 2 && objc_msgSend(v6, "downloadBehavior") != 3)
  {
    v3 = [v6 downloadInfo];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  ++*(*(a1 + 32) + 24);
}

- (NSArray)items
{
  items = self->_items;
  if (!items)
  {
    if (self->_itemIndex)
    {
      items = 0;
    }

    else
    {
      ctx = self->_ctx;
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __45__NMSEpisodeFetchRequestItemEnumerator_items__block_invoke;
      v6[3] = &unk_27993DD20;
      v6[4] = self;
      [(NSManagedObjectContext *)ctx performBlockAndWait:v6];
      items = self->_items;
    }
  }

  return items;
}

void __45__NMSEpisodeFetchRequestItemEnumerator_items__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = *(v2 + 8);
  v3 = *(v2 + 16);
  v10 = 0;
  v5 = [v3 executeFetchRequest:v4 error:&v10];
  v6 = v10;
  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  *(v7 + 32) = v5;

  if (v6)
  {
    v9 = NMLogForCategory(5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __45__NMSEpisodeFetchRequestItemEnumerator_items__block_invoke_cold_1(v6, v9);
    }
  }
}

void __45__NMSEpisodeFetchRequestItemEnumerator_items__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_25B27B000, a2, OS_LOG_TYPE_ERROR, "NMSEpisodeFetchRequestItemEnumerator fetch request failed - %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end