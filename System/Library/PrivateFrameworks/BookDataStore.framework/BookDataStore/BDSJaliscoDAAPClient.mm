@interface BDSJaliscoDAAPClient
+ (BDSJaliscoDAAPClient)sharedClient;
- (BDSJaliscoDAAPClient)init;
- (void)deleteItemsWithStoreIDs:(id)a3 completion:(id)a4;
- (void)fetchAllHiddenItemStoreIDsWithCompletion:(id)a3;
- (void)hideItemsWithStoreIDs:(id)a3 completion:(id)a4;
- (void)resetPurchasedTokenForStoreIDs:(id)a3 completion:(id)a4;
- (void)resetStaleJaliscoDatabaseWithCompletion:(id)a3;
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

- (void)fetchAllHiddenItemStoreIDsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BDSJaliscoDAAPClient *)self serviceProxy];
  [v5 fetchAllHiddenItemStoreIDsWithCompletion:v4];
}

- (void)resetPurchasedTokenForStoreIDs:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BDSJaliscoDAAPClient *)self serviceProxy];
  [v8 resetPurchasedTokenForStoreIDs:v7 completion:v6];
}

- (void)hideItemsWithStoreIDs:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BDSJaliscoDAAPClient *)self serviceProxy];
  [v8 hideItemsWithStoreIDs:v7 completion:v6];
}

- (void)deleteItemsWithStoreIDs:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BDSJaliscoDAAPClient *)self serviceProxy];
  [v8 deleteItemsWithStoreIDs:v7 completion:v6];
}

- (void)resetStaleJaliscoDatabaseWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BDSJaliscoDAAPClient *)self serviceProxy];
  [v5 resetStaleJaliscoDatabaseWithCompletion:v4];
}

@end