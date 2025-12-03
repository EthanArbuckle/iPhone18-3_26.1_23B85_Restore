@interface BDSJaliscoDAAPClient
+ (BDSJaliscoDAAPClient)sharedClient;
- (BDSJaliscoDAAPClient)init;
- (void)deleteItemsWithStoreIDs:(id)ds completion:(id)completion;
- (void)fetchAllHiddenItemStoreIDsWithCompletion:(id)completion;
- (void)hideItemsWithStoreIDs:(id)ds completion:(id)completion;
- (void)resetPurchasedTokenForStoreIDs:(id)ds completion:(id)completion;
- (void)resetStaleJaliscoDatabaseWithCompletion:(id)completion;
@end

@implementation BDSJaliscoDAAPClient

+ (BDSJaliscoDAAPClient)sharedClient
{
  if (qword_1EE2AEC08 != -1)
  {
    sub_1E47048B8();
  }

  v3 = qword_1EE2AEC00;

  return v3;
}

- (BDSJaliscoDAAPClient)init
{
  v6.receiver = self;
  v6.super_class = BDSJaliscoDAAPClient;
  v2 = [(BDSJaliscoDAAPClient *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(BDSServiceProxy);
    serviceProxy = v2->_serviceProxy;
    v2->_serviceProxy = v3;

    v2->_familyUpdateInProgress = 0;
  }

  return v2;
}

- (void)fetchAllHiddenItemStoreIDsWithCompletion:(id)completion
{
  completionCopy = completion;
  serviceProxy = [(BDSJaliscoDAAPClient *)self serviceProxy];
  [serviceProxy fetchAllHiddenItemStoreIDsWithCompletion:completionCopy];
}

- (void)resetPurchasedTokenForStoreIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  serviceProxy = [(BDSJaliscoDAAPClient *)self serviceProxy];
  [serviceProxy resetPurchasedTokenForStoreIDs:dsCopy completion:completionCopy];
}

- (void)hideItemsWithStoreIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  serviceProxy = [(BDSJaliscoDAAPClient *)self serviceProxy];
  [serviceProxy hideItemsWithStoreIDs:dsCopy completion:completionCopy];
}

- (void)deleteItemsWithStoreIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  serviceProxy = [(BDSJaliscoDAAPClient *)self serviceProxy];
  [serviceProxy deleteItemsWithStoreIDs:dsCopy completion:completionCopy];
}

- (void)resetStaleJaliscoDatabaseWithCompletion:(id)completion
{
  completionCopy = completion;
  serviceProxy = [(BDSJaliscoDAAPClient *)self serviceProxy];
  [serviceProxy resetStaleJaliscoDatabaseWithCompletion:completionCopy];
}

@end