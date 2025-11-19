@interface HFSimpleItemModule
- (HFSimpleItemModule)initWithItemUpdater:(id)a3;
- (HFSimpleItemModule)initWithItemUpdater:(id)a3 itemProviders:(id)a4 sectionBuilder:(id)a5;
- (id)buildSectionsWithDisplayedItems:(id)a3;
@end

@implementation HFSimpleItemModule

- (HFSimpleItemModule)initWithItemUpdater:(id)a3 itemProviders:(id)a4 sectionBuilder:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"HFSimpleItemModule.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"itemProviders"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v20 = [MEMORY[0x277CCA890] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"HFSimpleItemModule.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"sectionBuilder"}];

LABEL_3:
  v21.receiver = self;
  v21.super_class = HFSimpleItemModule;
  v13 = [(HFItemModule *)&v21 initWithItemUpdater:v9];
  if (v13)
  {
    v14 = [v12 copy];
    sectionBuilder = v13->_sectionBuilder;
    v13->_sectionBuilder = v14;

    v16 = [v10 copy];
    itemProviders = v13->_itemProviders;
    v13->_itemProviders = v16;
  }

  return v13;
}

- (HFSimpleItemModule)initWithItemUpdater:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithItemUpdater_itemProviders_sectionBuilder_);
  [v5 handleFailureInMethod:a2 object:self file:@"HFSimpleItemModule.m" lineNumber:37 description:{@"%s is unavailable; use %@ instead", "-[HFSimpleItemModule initWithItemUpdater:]", v6}];

  return 0;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  v4 = a3;
  v5 = [(HFItemModule *)self allItems];
  v6 = [v5 na_setByIntersectingWithSet:v4];

  v7 = [(HFSimpleItemModule *)self sectionBuilder];
  v8 = (v7)[2](v7, v6);

  return v8;
}

@end