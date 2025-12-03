@interface HFSimpleItemModule
- (HFSimpleItemModule)initWithItemUpdater:(id)updater;
- (HFSimpleItemModule)initWithItemUpdater:(id)updater itemProviders:(id)providers sectionBuilder:(id)builder;
- (id)buildSectionsWithDisplayedItems:(id)items;
@end

@implementation HFSimpleItemModule

- (HFSimpleItemModule)initWithItemUpdater:(id)updater itemProviders:(id)providers sectionBuilder:(id)builder
{
  updaterCopy = updater;
  providersCopy = providers;
  builderCopy = builder;
  v12 = builderCopy;
  if (providersCopy)
  {
    if (builderCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFSimpleItemModule.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"itemProviders"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"HFSimpleItemModule.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"sectionBuilder"}];

LABEL_3:
  v21.receiver = self;
  v21.super_class = HFSimpleItemModule;
  v13 = [(HFItemModule *)&v21 initWithItemUpdater:updaterCopy];
  if (v13)
  {
    v14 = [v12 copy];
    sectionBuilder = v13->_sectionBuilder;
    v13->_sectionBuilder = v14;

    v16 = [providersCopy copy];
    itemProviders = v13->_itemProviders;
    v13->_itemProviders = v16;
  }

  return v13;
}

- (HFSimpleItemModule)initWithItemUpdater:(id)updater
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_itemProviders_sectionBuilder_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFSimpleItemModule.m" lineNumber:37 description:{@"%s is unavailable; use %@ instead", "-[HFSimpleItemModule initWithItemUpdater:]", v6}];

  return 0;
}

- (id)buildSectionsWithDisplayedItems:(id)items
{
  itemsCopy = items;
  allItems = [(HFItemModule *)self allItems];
  v6 = [allItems na_setByIntersectingWithSet:itemsCopy];

  sectionBuilder = [(HFSimpleItemModule *)self sectionBuilder];
  v8 = (sectionBuilder)[2](sectionBuilder, v6);

  return v8;
}

@end