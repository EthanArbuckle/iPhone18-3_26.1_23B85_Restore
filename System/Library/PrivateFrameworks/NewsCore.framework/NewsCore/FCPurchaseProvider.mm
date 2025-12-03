@interface FCPurchaseProvider
- (FCPurchaseProvider)init;
- (NSSet)purchasedTagIDs;
- (id)initWithPurchaseController:(void *)controller privateChannelMembershipController:;
@end

@implementation FCPurchaseProvider

- (FCPurchaseProvider)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCPurchaseProvider init]";
    v10 = 2080;
    v11 = "FCPurchaseProvider.m";
    v12 = 1024;
    v13 = 27;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPurchaseProvider init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (id)initWithPurchaseController:(void *)controller privateChannelMembershipController:
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a2;
  controllerCopy = controller;
  if (!self)
  {
    goto LABEL_9;
  }

  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "purchaseController"];
    *buf = 136315906;
    v15 = "[FCPurchaseProvider initWithPurchaseController:privateChannelMembershipController:]";
    v16 = 2080;
    v17 = "FCPurchaseProvider.m";
    v18 = 1024;
    v19 = 32;
    v20 = 2114;
    v21 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (!controllerCopy)
    {
LABEL_5:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "privateChannelMembershipController"];
        *buf = 136315906;
        v15 = "[FCPurchaseProvider initWithPurchaseController:privateChannelMembershipController:]";
        v16 = 2080;
        v17 = "FCPurchaseProvider.m";
        v18 = 1024;
        v19 = 33;
        v20 = 2114;
        v21 = v12;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }
    }
  }

  else if (!controllerCopy)
  {
    goto LABEL_5;
  }

  v13.receiver = self;
  v13.super_class = FCPurchaseProvider;
  v8 = objc_msgSendSuper2(&v13, sel_init);
  self = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 1, a2);
    objc_storeStrong(self + 2, controller);
  }

LABEL_9:

  v9 = *MEMORY[0x1E69E9840];
  return self;
}

- (NSSet)purchasedTagIDs
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  if (self)
  {
    purchaseController = self->_purchaseController;
  }

  else
  {
    purchaseController = 0;
  }

  v5 = purchaseController;
  purchasedTagIDs = [(FCPurchaseController *)v5 purchasedTagIDs];
  v14[0] = purchasedTagIDs;
  if (self)
  {
    privateChannelMembershipController = self->_privateChannelMembershipController;
  }

  else
  {
    privateChannelMembershipController = 0;
  }

  v8 = privateChannelMembershipController;
  membershipChannelIDs = [(FCPrivateChannelMembershipController *)v8 membershipChannelIDs];
  v14[1] = membershipChannelIDs;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v11 = [v3 fc_unionOfSetsInArray:v10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end