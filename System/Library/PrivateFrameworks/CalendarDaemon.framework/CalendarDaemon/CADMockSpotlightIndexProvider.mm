@interface CADMockSpotlightIndexProvider
- (CADMockSpotlightIndexProvider)initWithMinArtificialDelay:(double)a3 maxArtificialDelay:(double)a4 failureMode:(unint64_t)a5;
- (id)itemsInIndex;
- (id)newSpotlightIndexForBundleID:(id)a3;
- (void)deleteAllSearchableItemsForBundleID:(id)a3;
- (void)deleteSearchableItemsWithDomainIdentifiers:(id)a3;
- (void)indexSearchableItems:(id)a3;
@end

@implementation CADMockSpotlightIndexProvider

- (CADMockSpotlightIndexProvider)initWithMinArtificialDelay:(double)a3 maxArtificialDelay:(double)a4 failureMode:(unint64_t)a5
{
  v13.receiver = self;
  v13.super_class = CADMockSpotlightIndexProvider;
  v8 = [(CADMockSpotlightIndexProvider *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_minArtificialDelay = a3;
    v8->_maxArtificialDelay = a4;
    v8->_failureMode = a5;
    v8->_lock._os_unfair_lock_opaque = 0;
    v10 = [MEMORY[0x277CBEB18] array];
    store = v9->_store;
    v9->_store = v10;
  }

  return v9;
}

- (id)newSpotlightIndexForBundleID:(id)a3
{
  v4 = [CADMockSpotlightIndex alloc];

  return [(CADMockSpotlightIndex *)v4 initWithProvider:self];
}

- (void)deleteSearchableItemsWithDomainIdentifiers:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  store = self->_store;
  v6 = MEMORY[0x277CCAC30];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__CADMockSpotlightIndexProvider_deleteSearchableItemsWithDomainIdentifiers___block_invoke;
  v9[3] = &unk_27851ADD0;
  v10 = v4;
  v7 = v4;
  v8 = [v6 predicateWithBlock:v9];
  [(NSMutableArray *)store filterUsingPredicate:v8];

  os_unfair_lock_unlock(&self->_lock);
}

uint64_t __76__CADMockSpotlightIndexProvider_deleteSearchableItemsWithDomainIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        v10 = [v3 domainIdentifier];
        LOBYTE(v9) = [v10 hasPrefix:v9];

        if (v9)
        {
          v11 = 0;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)indexSearchableItems:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        os_unfair_lock_lock(&self->_lock);
        store = self->_store;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __54__CADMockSpotlightIndexProvider_indexSearchableItems___block_invoke;
        v13[3] = &unk_27851ADF8;
        v13[4] = v9;
        v11 = [(NSMutableArray *)store indexOfObjectPassingTest:v13];
        if (v11 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [(NSMutableArray *)self->_store removeObjectAtIndex:v11];
        }

        [(NSMutableArray *)self->_store addObject:v9];
        os_unfair_lock_unlock(&self->_lock);
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __54__CADMockSpotlightIndexProvider_indexSearchableItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [*(a1 + 32) uniqueIdentifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)deleteAllSearchableItemsForBundleID:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v8 count:1];

  [(CADMockSpotlightIndexProvider *)self deleteSearchableItemsWithDomainIdentifiers:v6, v8, v9];
  v7 = *MEMORY[0x277D85DE8];
}

- (id)itemsInIndex
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_store copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

@end