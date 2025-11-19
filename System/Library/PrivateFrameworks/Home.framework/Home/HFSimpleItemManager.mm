@interface HFSimpleItemManager
- (BOOL)_shouldDisableOptionalDataDuringFastInitialUpdate;
- (HFSimpleItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4 itemProvidersCreator:(id)a5;
- (id)_buildItemModulesForHome:(id)a3;
- (id)_buildItemProvidersForHome:(id)a3;
- (id)_comparatorForSectionIdentifier:(id)a3;
- (id)_homeFuture;
@end

@implementation HFSimpleItemManager

- (HFSimpleItemManager)initWithDelegate:(id)a3 sourceItem:(id)a4 itemProvidersCreator:(id)a5
{
  v8 = a5;
  v13.receiver = self;
  v13.super_class = HFSimpleItemManager;
  v9 = [(HFItemManager *)&v13 initWithDelegate:a3 sourceItem:a4];
  if (v9)
  {
    v10 = _Block_copy(v8);
    itemProviderCreator = v9->_itemProviderCreator;
    v9->_itemProviderCreator = v10;

    [(HFSimpleItemManager *)v9 setShouldDisableOptionalDataDuringFastInitialUpdate:1];
  }

  return v9;
}

- (BOOL)_shouldDisableOptionalDataDuringFastInitialUpdate
{
  v3 = [(HFSimpleItemManager *)self shouldDisableOptionalDataDuringFastInitialUpdate];
  if (v3)
  {
    v5.receiver = self;
    v5.super_class = HFSimpleItemManager;
    LOBYTE(v3) = [(HFItemManager *)&v5 _shouldDisableOptionalDataDuringFastInitialUpdate];
  }

  return v3;
}

- (id)_buildItemModulesForHome:(id)a3
{
  v4 = a3;
  v5 = [(HFSimpleItemManager *)self itemModuleCreator];
  if (v5)
  {
    v6 = [(HFSimpleItemManager *)self itemModuleCreator];
    v7 = (v6)[2](v6, v4, self);
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

- (id)_buildItemProvidersForHome:(id)a3
{
  v4 = a3;
  v5 = [(HFSimpleItemManager *)self itemProviderCreator];
  if (v5)
  {
    v6 = [(HFSimpleItemManager *)self itemProviderCreator];
    v7 = (v6)[2](v6, v4);
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

- (id)_comparatorForSectionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HFSimpleItemManager *)self itemComparator];
  v6 = v5;
  if (v5)
  {
    v7 = _Block_copy(v5);
  }

  else
  {
    v10.receiver = self;
    v10.super_class = HFSimpleItemManager;
    v8 = [(HFItemManager *)&v10 _comparatorForSectionIdentifier:v4];
    v7 = _Block_copy(v8);
  }

  return v7;
}

- (id)_homeFuture
{
  v3 = [(HFSimpleItemManager *)self homeCreator];
  if (v3)
  {
    v4 = [(HFSimpleItemManager *)self homeCreator];
    v5 = v4[2]();
  }

  else
  {
    v7.receiver = self;
    v7.super_class = HFSimpleItemManager;
    v5 = [(HFItemManager *)&v7 _homeFuture];
  }

  return v5;
}

@end