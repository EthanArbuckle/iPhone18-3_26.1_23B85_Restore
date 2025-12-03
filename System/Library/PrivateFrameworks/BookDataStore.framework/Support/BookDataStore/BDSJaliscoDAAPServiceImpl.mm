@interface BDSJaliscoDAAPServiceImpl
+ (BDSJaliscoDAAPServiceImpl)sharedClient;
- (BDSJaliscoDAAPServiceImpl)init;
- (BLJaliscoDAAPClientDelegate)daapClientDelegate;
- (void)deleteItemsWithStoreIDs:(id)ds completion:(id)completion;
- (void)fetchAllHiddenItemStoreIDsWithCompletion:(id)completion;
- (void)hideItemsWithStoreIDs:(id)ds completion:(id)completion;
- (void)resetPurchasedTokenForStoreIDs:(id)ds completion:(id)completion;
- (void)resetStaleJaliscoDatabaseWithCompletion:(id)completion;
- (void)setDaapClientDelegate:(id)delegate;
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

    jaliscoClient = [(BDSJaliscoDAAPServiceImpl *)v2 jaliscoClient];

    if (!jaliscoClient)
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
  jaliscoClient = [(BDSJaliscoDAAPServiceImpl *)self jaliscoClient];
  delegate = [jaliscoClient delegate];

  return delegate;
}

- (void)setDaapClientDelegate:(id)delegate
{
  delegateCopy = delegate;
  jaliscoClient = [(BDSJaliscoDAAPServiceImpl *)self jaliscoClient];
  [jaliscoClient setDelegate:delegateCopy];
}

- (void)resetPurchasedTokenForStoreIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  jaliscoClient = [(BDSJaliscoDAAPServiceImpl *)self jaliscoClient];
  [jaliscoClient resetPurchasedTokenForStoreIDs:dsCopy completion:completionCopy];
}

- (void)hideItemsWithStoreIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  jaliscoClient = [(BDSJaliscoDAAPServiceImpl *)self jaliscoClient];
  [jaliscoClient hideItemsWithStoreIDs:dsCopy completion:completionCopy];
}

- (void)fetchAllHiddenItemStoreIDsWithCompletion:(id)completion
{
  completionCopy = completion;
  jaliscoClient = [(BDSJaliscoDAAPServiceImpl *)self jaliscoClient];
  [jaliscoClient fetchAllHiddenItemStoreIDsWithCompletion:completionCopy];
}

- (void)deleteItemsWithStoreIDs:(id)ds completion:(id)completion
{
  completionCopy = completion;
  dsCopy = ds;
  jaliscoClient = [(BDSJaliscoDAAPServiceImpl *)self jaliscoClient];
  [jaliscoClient deleteItemsWithStoreIDs:dsCopy completion:completionCopy];
}

- (void)resetStaleJaliscoDatabaseWithCompletion:(id)completion
{
  completionCopy = completion;
  jaliscoClient = [(BDSJaliscoDAAPServiceImpl *)self jaliscoClient];
  [jaliscoClient resetStaleJaliscoDatabaseWithCompletion:completionCopy];
}

@end