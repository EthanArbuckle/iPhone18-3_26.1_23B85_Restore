@interface HFDataAnalyticsModule
- (HFDataAnalyticsModule)initWithItemUpdater:(id)updater mediaProfileContainer:(id)container;
- (id)buildSectionsWithDisplayedItems:(id)items;
- (id)itemProviders;
@end

@implementation HFDataAnalyticsModule

- (HFDataAnalyticsModule)initWithItemUpdater:(id)updater mediaProfileContainer:(id)container
{
  updaterCopy = updater;
  containerCopy = container;
  if (!containerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFDataAnalyticsModule.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"mediaProfileContainer"}];
  }

  v15.receiver = self;
  v15.super_class = HFDataAnalyticsModule;
  v9 = [(HFItemModule *)&v15 initWithItemUpdater:updaterCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mediaProfileContainer, container);
    v11 = [[HFDataAnalyticsLogItemProvider alloc] initWithMediaProfileContainer:containerCopy];
    logItemProvider = v10->_logItemProvider;
    v10->_logItemProvider = v11;
  }

  return v10;
}

- (id)itemProviders
{
  v2 = MEMORY[0x277CBEB98];
  logItemProvider = [(HFDataAnalyticsModule *)self logItemProvider];
  v4 = [v2 setWithObject:logItemProvider];

  return v4;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  v10[1] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v4 = [(HFItemSection *)[HFMutableItemSection alloc] initWithIdentifier:@"DataAnalyticsLogSection"];
  allObjects = [itemsCopy allObjects];

  v6 = [allObjects sortedArrayUsingComparator:&__block_literal_global_5];
  [(HFItemSection *)v4 setItems:v6];

  v10[0] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

uint64_t __57__HFDataAnalyticsModule_buildSectionsWithDisplayedItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

@end