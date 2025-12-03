@interface SUUIProductPageActivityViewController
- (SUUIProductPageActivityViewController)initWithProductPageItem:(id)item clientContext:(id)context;
- (id)_activityItemsForProductPageItem:(id)item clientContext:(id)context;
- (id)_activityItemsForProductPageItemProvider:(id)provider clientContext:(id)context;
- (id)_applicationActivitiesForProductPageItem:(id)item clientContext:(id)context;
- (id)_titleForActivity:(id)activity;
@end

@implementation SUUIProductPageActivityViewController

- (SUUIProductPageActivityViewController)initWithProductPageItem:(id)item clientContext:(id)context
{
  v17[5] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  itemCopy = item;
  v9 = [(SUUIProductPageActivityViewController *)self _activityItemsForProductPageItem:itemCopy clientContext:contextCopy];
  v10 = [(SUUIProductPageActivityViewController *)self _applicationActivitiesForProductPageItem:itemCopy clientContext:contextCopy];

  v16.receiver = self;
  v16.super_class = SUUIProductPageActivityViewController;
  v11 = [(SUUIProductPageActivityViewController *)&v16 initWithActivityItems:v9 applicationActivities:v10];
  if (v11)
  {
    v12 = *MEMORY[0x277D54718];
    v17[0] = *MEMORY[0x277D54708];
    v17[1] = v12;
    v13 = *MEMORY[0x277D54778];
    v17[2] = *MEMORY[0x277D54750];
    v17[3] = v13;
    v17[4] = *MEMORY[0x277D54780];
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:5];
    [(SUUIProductPageActivityViewController *)v11 setExcludedActivityTypes:v14];

    objc_storeStrong(&v11->_clientContext, context);
  }

  return v11;
}

- (id)_titleForActivity:(id)activity
{
  activityCopy = activity;
  if (*MEMORY[0x277D54720] == activityCopy)
  {
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SUUIClientContext *)clientContext localizedStringForKey:@"ACTIVITY_COPY_LINK"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"ACTIVITY_COPY_LINK" inBundles:0];
    }
    v5 = ;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_activityItemsForProductPageItem:(id)item clientContext:(id)context
{
  v12[3] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  itemCopy = item;
  v7 = [[SUUIURLActivityItemProvider alloc] initWithProductPageItem:itemCopy clientContext:contextCopy];
  v8 = [(SUUIDeferredActivityItemProvider *)[SUUITextActivityItemProvider alloc] initWithProductPageItem:itemCopy clientContext:contextCopy];
  v9 = [(SUUIDeferredActivityItemProvider *)[SUUIImageActivityItemProvider alloc] initWithProductPageItem:itemCopy clientContext:contextCopy];

  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];

  return v10;
}

- (id)_activityItemsForProductPageItemProvider:(id)provider clientContext:(id)context
{
  v12[3] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  providerCopy = provider;
  v7 = [[SUUIURLActivityItemProvider alloc] initWithProductPageItemProvider:providerCopy clientContext:contextCopy];
  v8 = [(SUUIDeferredActivityItemProvider *)[SUUITextActivityItemProvider alloc] initWithProductPageItemProvider:providerCopy clientContext:contextCopy];
  v9 = [(SUUIDeferredActivityItemProvider *)[SUUIImageActivityItemProvider alloc] initWithProductPageItemProvider:providerCopy clientContext:contextCopy];

  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];

  return v10;
}

- (id)_applicationActivitiesForProductPageItem:(id)item clientContext:(id)context
{
  itemCopy = item;
  contextCopy = context;
  array = [MEMORY[0x277CBEB18] array];
  primaryItemOffer = [itemCopy primaryItemOffer];
  [primaryItemOffer price];
  if (v9 > 0.0)
  {
    itemIdentifier = [itemCopy itemIdentifier];
    v11 = +[SUUIWishlist activeWishlist];
    v12 = v11;
    if (v11 && ([v11 containsItemWithIdentifier:itemIdentifier] & 1) == 0)
    {
      v13 = +[SUUIItemStateCenter defaultCenter];
      v14 = [v13 stateForItemWithIdentifier:itemIdentifier];

      if (([v14 state] & 0xF) == 0)
      {
        v15 = [[SUUIAddToWishlistActivity alloc] initWithItem:itemCopy clientContext:contextCopy];
        [array addObject:v15];
      }
    }

    v16 = +[SUUIItemStateCenter defaultCenter];
    v17 = [v16 isItemRestrictedWithParentalControlsRank:{objc_msgSend(itemCopy, "parentalControlsRank")}];

    if ((v17 & 1) == 0)
    {
      v18 = [[SUUIGiftActivity alloc] initWithItem:itemCopy clientContext:contextCopy];
      [array addObject:v18];
    }
  }

  return array;
}

@end