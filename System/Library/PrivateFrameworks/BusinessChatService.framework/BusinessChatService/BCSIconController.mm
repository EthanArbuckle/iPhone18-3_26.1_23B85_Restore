@interface BCSIconController
- (BCSIconController)init;
- (void)fetchSquareIconDataForBusinessItem:(id)item forClientBundleID:(id)d completion:(id)completion;
@end

@implementation BCSIconController

- (BCSIconController)init
{
  v7.receiver = self;
  v7.super_class = BCSIconController;
  v2 = [(BCSIconController *)&v7 init];
  if (v2)
  {
    v3 = [[BCSCoalesceHelper alloc] initWithQOSClass:25];
    v4 = [[BCSIconRemoteFetch alloc] initWithCoalesceHelper:v3];
    iconRemoteFetch = v2->_iconRemoteFetch;
    v2->_iconRemoteFetch = v4;
  }

  return v2;
}

- (void)fetchSquareIconDataForBusinessItem:(id)item forClientBundleID:(id)d completion:(id)completion
{
  itemCopy = item;
  dCopy = d;
  completionCopy = completion;
  if (completionCopy)
  {
    v11 = +[BCSBusinessItemMemoryCache sharedCache];
    v12 = [(BCSBusinessItemMemoryCache *)v11 lastFetchedBusinessItemIconDataForBizItem:itemCopy];

    if (v12)
    {
      completionCopy[2](completionCopy, v12, 0);
    }

    else
    {
      iconRemoteFetch = [(BCSIconController *)self iconRemoteFetch];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __85__BCSIconController_fetchSquareIconDataForBusinessItem_forClientBundleID_completion___block_invoke;
      v14[3] = &unk_278D3A398;
      v15 = itemCopy;
      v16 = completionCopy;
      [(BCSIconRemoteFetch *)iconRemoteFetch fetchSquareIconDataForBusinessItem:v15 forClientBundleID:dCopy completion:v14];
    }
  }
}

void __85__BCSIconController_fetchSquareIconDataForBusinessItem_forClientBundleID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7 && !v5)
  {
    v6 = +[BCSBusinessItemMemoryCache sharedCache];
    [(BCSBusinessItemMemoryCache *)v6 setLastFetchedBusinesIconData:v7 withMatchingBusinessItem:*(a1 + 32)];
  }

  (*(*(a1 + 40) + 16))();
}

@end