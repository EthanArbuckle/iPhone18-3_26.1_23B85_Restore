@interface HFDataAnalyticsLogItemManager
- (HFDataAnalyticsLogItemManager)initWithMediaProfileContainer:(id)container delegate:(id)delegate;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_buildSectionsWithDisplayedItems:(id)items;
@end

@implementation HFDataAnalyticsLogItemManager

- (HFDataAnalyticsLogItemManager)initWithMediaProfileContainer:(id)container delegate:(id)delegate
{
  containerCopy = container;
  delegateCopy = delegate;
  if (!containerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFDataAnalyticsLogItemManager.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"mediaProfileContainer"}];
  }

  v16.receiver = self;
  v16.super_class = HFDataAnalyticsLogItemManager;
  v10 = [(HFItemManager *)&v16 initWithDelegate:delegateCopy sourceItem:0];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_mediaProfileContainer, container);
    v12 = [[HFDataAnalyticsModule alloc] initWithItemUpdater:v11 mediaProfileContainer:containerCopy];
    dataAnalyticsModule = v11->_dataAnalyticsModule;
    v11->_dataAnalyticsModule = v12;
  }

  return v11;
}

- (id)_buildItemProvidersForHome:(id)home
{
  dataAnalyticsModule = [(HFDataAnalyticsLogItemManager *)self dataAnalyticsModule];
  itemProviders = [dataAnalyticsModule itemProviders];
  allObjects = [itemProviders allObjects];

  return allObjects;
}

- (id)_buildSectionsWithDisplayedItems:(id)items
{
  itemsCopy = items;
  if ([itemsCopy count])
  {
    dataAnalyticsModule = [(HFDataAnalyticsLogItemManager *)self dataAnalyticsModule];
    v6 = [dataAnalyticsModule buildSectionsWithDisplayedItems:itemsCopy];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

@end