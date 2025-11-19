@interface BDSJaliscoDAAPServiceImpl
+ (BDSJaliscoDAAPServiceImpl)sharedClient;
- (BDSJaliscoDAAPServiceImpl)init;
- (BLJaliscoDAAPClientDelegate)daapClientDelegate;
- (void)deleteItemsWithStoreIDs:(id)a3 completion:(id)a4;
- (void)fetchAllHiddenItemStoreIDsWithCompletion:(id)a3;
- (void)hideItemsWithStoreIDs:(id)a3 completion:(id)a4;
- (void)resetPurchasedTokenForStoreIDs:(id)a3 completion:(id)a4;
- (void)resetStaleJaliscoDatabaseWithCompletion:(id)a3;
- (void)setDaapClientDelegate:(id)a3;
@end

@implementation BDSJaliscoDAAPServiceImpl

- (BDSJaliscoDAAPServiceImpl)init
{
  v8.receiver = self;
  v8.super_class = BDSJaliscoDAAPServiceImpl;
  v2 = [(BDSJaliscoDAAPServiceImpl *)&v8 init];
  if (v2)
  {
    v3 = +[BLJaliscoDAAPClient sharedClient];
    jaliscoClient = v2->_jaliscoClient;
    v2->_jaliscoClient = v3;

    v5 = [(BDSJaliscoDAAPServiceImpl *)v2 jaliscoClient];

    if (!v5)
    {
      v6 = sub_1000023E8();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1001C00D8(v6);
      }

      return 0;
    }
  }

  return v2;
}

+ (BDSJaliscoDAAPServiceImpl)sharedClient
{
  os_unfair_lock_lock(&unk_100274A60);
  if (!qword_100274A58)
  {
    v2 = objc_alloc_init(BDSJaliscoDAAPServiceImpl);
    v3 = qword_100274A58;
    qword_100274A58 = v2;
  }

  os_unfair_lock_unlock(&unk_100274A60);
  v4 = qword_100274A58;

  return v4;
}

- (BLJaliscoDAAPClientDelegate)daapClientDelegate
{
  v2 = [(BDSJaliscoDAAPServiceImpl *)self jaliscoClient];
  v3 = [v2 delegate];

  return v3;
}

- (void)setDaapClientDelegate:(id)a3
{
  v4 = a3;
  v5 = [(BDSJaliscoDAAPServiceImpl *)self jaliscoClient];
  [v5 setDelegate:v4];
}

- (void)resetPurchasedTokenForStoreIDs:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BDSJaliscoDAAPServiceImpl *)self jaliscoClient];
  [v8 resetPurchasedTokenForStoreIDs:v7 completion:v6];
}

- (void)hideItemsWithStoreIDs:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BDSJaliscoDAAPServiceImpl *)self jaliscoClient];
  [v8 hideItemsWithStoreIDs:v7 completion:v6];
}

- (void)fetchAllHiddenItemStoreIDsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BDSJaliscoDAAPServiceImpl *)self jaliscoClient];
  [v5 fetchAllHiddenItemStoreIDsWithCompletion:v4];
}

- (void)deleteItemsWithStoreIDs:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(BDSJaliscoDAAPServiceImpl *)self jaliscoClient];
  [v8 deleteItemsWithStoreIDs:v7 completion:v6];
}

- (void)resetStaleJaliscoDatabaseWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BDSJaliscoDAAPServiceImpl *)self jaliscoClient];
  [v5 resetStaleJaliscoDatabaseWithCompletion:v4];
}

@end