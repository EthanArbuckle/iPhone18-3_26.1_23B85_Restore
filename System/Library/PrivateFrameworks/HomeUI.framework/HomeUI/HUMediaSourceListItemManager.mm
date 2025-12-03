@interface HUMediaSourceListItemManager
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
- (id)initForMediaProfileContainers:(id)containers delegate:(id)delegate forTarget:(unint64_t)target;
@end

@implementation HUMediaSourceListItemManager

- (id)initForMediaProfileContainers:(id)containers delegate:(id)delegate forTarget:(unint64_t)target
{
  v34[2] = *MEMORY[0x277D85DE8];
  containersCopy = containers;
  v32.receiver = self;
  v32.super_class = HUMediaSourceListItemManager;
  delegateCopy = delegate;
  val = [(HFItemManager *)&v32 initWithDelegate:?];
  if (val)
  {
    objc_storeStrong(&val->_containers, containers);
    v9 = +[HUMediaSourceItem appleMusicSource];
    v34[0] = v9;
    v10 = +[HUMediaSourceItem soundScapesSource];
    v34[1] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
    sources = val->_sources;
    val->_sources = v11;

    objc_initWeak(&location, val);
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    sources = [(HUMediaSourceListItemManager *)val sources];
    v14 = [sources countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v14)
    {
      v15 = *v28;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(sources);
          }

          v17 = *(*(&v27 + 1) + 8 * i);
          v18 = [v17 resolveForMediaProfiles:containersCopy forTarget:target];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __81__HUMediaSourceListItemManager_initForMediaProfileContainers_delegate_forTarget___block_invoke;
          v25[3] = &unk_277DBA0F8;
          objc_copyWeak(v26, &location);
          v25[4] = v17;
          v26[1] = a2;
          v19 = [v18 addCompletionBlock:v25];
          objc_destroyWeak(v26);
        }

        v14 = [sources countByEnumeratingWithState:&v27 objects:v33 count:16];
      }

      while (v14);
    }

    objc_destroyWeak(&location);
  }

  return val;
}

void __81__HUMediaSourceListItemManager_initForMediaProfileContainers_delegate_forTarget___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 32)];
  v3 = [WeakRetained updateResultsForItems:v2 senderSelector:*(a1 + 48)];
}

- (id)_buildItemProvidersForHome:(id)home
{
  v11[1] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc(MEMORY[0x277D14B40]);
  v5 = MEMORY[0x277CBEB98];
  sources = [(HUMediaSourceListItemManager *)self sources];
  v7 = [v5 setWithArray:sources];
  v8 = [v4 initWithItems:v7];
  v11[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  return v9;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D14850];
  itemsCopy = items;
  v5 = [[v3 alloc] initWithIdentifier:@"HUMediaSourceListItemManager"];
  allObjects = [itemsCopy allObjects];

  v7 = [allObjects sortedArrayUsingComparator:&__block_literal_global_227];
  [v5 setItems:v7];

  [v5 setHeaderTitle:0];
  [v5 setFooterTitle:0];
  v10[0] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  return v8;
}

uint64_t __65__HUMediaSourceListItemManager__buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 bundleIdentifier];
  v6 = [v4 bundleIdentifier];

  v7 = [v5 compare:v6 options:1];
  return v7;
}

@end