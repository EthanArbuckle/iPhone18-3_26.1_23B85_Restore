@interface HFSimpleItemManager
- (BOOL)_shouldDisableOptionalDataDuringFastInitialUpdate;
- (HFSimpleItemManager)initWithDelegate:(id)delegate sourceItem:(id)item itemProvidersCreator:(id)creator;
- (id)_buildItemModulesForHome:(id)home;
- (id)_buildItemProvidersForHome:(id)home;
- (id)_comparatorForSectionIdentifier:(id)identifier;
- (id)_homeFuture;
@end

@implementation HFSimpleItemManager

- (HFSimpleItemManager)initWithDelegate:(id)delegate sourceItem:(id)item itemProvidersCreator:(id)creator
{
  creatorCopy = creator;
  v13.receiver = self;
  v13.super_class = HFSimpleItemManager;
  v9 = [(HFItemManager *)&v13 initWithDelegate:delegate sourceItem:item];
  if (v9)
  {
    v10 = _Block_copy(creatorCopy);
    itemProviderCreator = v9->_itemProviderCreator;
    v9->_itemProviderCreator = v10;

    [(HFSimpleItemManager *)v9 setShouldDisableOptionalDataDuringFastInitialUpdate:1];
  }

  return v9;
}

- (BOOL)_shouldDisableOptionalDataDuringFastInitialUpdate
{
  shouldDisableOptionalDataDuringFastInitialUpdate = [(HFSimpleItemManager *)self shouldDisableOptionalDataDuringFastInitialUpdate];
  if (shouldDisableOptionalDataDuringFastInitialUpdate)
  {
    v5.receiver = self;
    v5.super_class = HFSimpleItemManager;
    LOBYTE(shouldDisableOptionalDataDuringFastInitialUpdate) = [(HFItemManager *)&v5 _shouldDisableOptionalDataDuringFastInitialUpdate];
  }

  return shouldDisableOptionalDataDuringFastInitialUpdate;
}

- (id)_buildItemModulesForHome:(id)home
{
  homeCopy = home;
  itemModuleCreator = [(HFSimpleItemManager *)self itemModuleCreator];
  if (itemModuleCreator)
  {
    itemModuleCreator2 = [(HFSimpleItemManager *)self itemModuleCreator];
    v7 = (itemModuleCreator2)[2](itemModuleCreator2, homeCopy, self);
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

- (id)_buildItemProvidersForHome:(id)home
{
  homeCopy = home;
  itemProviderCreator = [(HFSimpleItemManager *)self itemProviderCreator];
  if (itemProviderCreator)
  {
    itemProviderCreator2 = [(HFSimpleItemManager *)self itemProviderCreator];
    v7 = (itemProviderCreator2)[2](itemProviderCreator2, homeCopy);
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

- (id)_comparatorForSectionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  itemComparator = [(HFSimpleItemManager *)self itemComparator];
  v6 = itemComparator;
  if (itemComparator)
  {
    v7 = _Block_copy(itemComparator);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = HFSimpleItemManager;
    v8 = [(HFItemManager *)&v10 _comparatorForSectionIdentifier:identifierCopy];
    v7 = _Block_copy(v8);
  }

  return v7;
}

- (id)_homeFuture
{
  homeCreator = [(HFSimpleItemManager *)self homeCreator];
  if (homeCreator)
  {
    homeCreator2 = [(HFSimpleItemManager *)self homeCreator];
    _homeFuture = homeCreator2[2]();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = HFSimpleItemManager;
    _homeFuture = [(HFItemManager *)&v7 _homeFuture];
  }

  return _homeFuture;
}

@end