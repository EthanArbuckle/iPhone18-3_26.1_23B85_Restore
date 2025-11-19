@interface TabDocumentManager
+ (TabDocumentManager)sharedManager;
- (TabDocumentManager)init;
- (void)reclaimTabsIfNeeded;
@end

@implementation TabDocumentManager

- (TabDocumentManager)init
{
  v9.receiver = self;
  v9.super_class = TabDocumentManager;
  v2 = [(TabDocumentManager *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D28C70] sharedFeatureManager];
    v4 = [v3 allowsUnlimitedTabs];

    if (v4)
    {
      v5 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      tabs = v2->_tabs;
      v2->_tabs = v5;
    }

    v7 = v2;
  }

  return v2;
}

+ (TabDocumentManager)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[TabDocumentManager sharedManager];
  }

  v3 = sharedManager_sharedInstance;

  return v3;
}

void __35__TabDocumentManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(TabDocumentManager);
  v1 = sharedManager_sharedInstance;
  sharedManager_sharedInstance = v0;
}

- (void)reclaimTabsIfNeeded
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D28C70] sharedFeatureManager];
  v4 = [v3 allowsUnlimitedTabs];

  if (v4 && !self->_suppressTabRecycling)
  {
    v5 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
    [v5 safari_doubleForKey:@"DebugTabDocumentCapacity" defaultValue:1000.0];
    v7 = v6;

    v8 = v7 >= 1 ? v7 : 0x7FFFFFFFLL;
    v9 = [(NSHashTable *)self->_tabs count]- v8;
    if (v9 >= 1)
    {
      v10 = [(NSHashTable *)self->_tabs allObjects];
      v11 = [v10 safari_filterObjectsUsingBlock:&__block_literal_global_7_0];

      v12 = [v11 sortedArrayUsingComparator:&__block_literal_global_10];

      v13 = [v12 safari_prefixWithMaxLength:v9];

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v23;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v23 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v22 + 1) + 8 * i);
            [(NSHashTable *)self->_tabs removeObject:v19, v22];
            v20 = [v19 browserController];
            v21 = [v20 tabController];
            [(TabController *)v21 _hibernateTab:v19];
          }

          v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v16);
      }
    }
  }
}

uint64_t __41__TabDocumentManager_reclaimTabsIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 lastViewedTime];
  if (v3 == -1.0)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v2 canHibernate];
  }

  return v4;
}

uint64_t __41__TabDocumentManager_reclaimTabsIfNeeded__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 lastViewedTime];
  v7 = v6;
  [v5 lastViewedTime];
  if (v7 >= v8)
  {
    [v4 lastViewedTime];
    v11 = v10;
    [v5 lastViewedTime];
    v9 = v11 != v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

@end