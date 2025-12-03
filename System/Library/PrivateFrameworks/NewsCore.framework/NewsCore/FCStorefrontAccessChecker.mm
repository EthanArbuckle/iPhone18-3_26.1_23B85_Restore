@interface FCStorefrontAccessChecker
- (BOOL)canSynchronouslyCheckAccessToItem:(id)item;
- (BOOL)hasAccessToItem:(id)item blockedReason:(unint64_t *)reason error:(id *)error;
- (FCStorefrontAccessChecker)init;
- (FCStorefrontAccessChecker)initWithPrivateChannelMembershipController:(id)controller;
@end

@implementation FCStorefrontAccessChecker

- (FCStorefrontAccessChecker)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCStorefrontAccessChecker init]";
    v10 = 2080;
    v11 = "FCStorefrontAccessChecker.m";
    v12 = 1024;
    v13 = 24;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCStorefrontAccessChecker init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCStorefrontAccessChecker)initWithPrivateChannelMembershipController:(id)controller
{
  v20 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  if (!controllerCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "privateChannelMembershipController != nil"];
    *buf = 136315906;
    v13 = "[FCStorefrontAccessChecker initWithPrivateChannelMembershipController:]";
    v14 = 2080;
    v15 = "FCStorefrontAccessChecker.m";
    v16 = 1024;
    v17 = 29;
    v18 = 2114;
    v19 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v11.receiver = self;
  v11.super_class = FCStorefrontAccessChecker;
  v6 = [(FCAccessChecker *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_privateChannelMembershipController, controller);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)canSynchronouslyCheckAccessToItem:(id)item
{
  v15 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (!itemCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "item != nil"];
    *buf = 136315906;
    v8 = "[FCStorefrontAccessChecker canSynchronouslyCheckAccessToItem:]";
    v9 = 2080;
    v10 = "FCStorefrontAccessChecker.m";
    v11 = 1024;
    v12 = 42;
    v13 = 2114;
    v14 = v6;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 1;
}

- (BOOL)hasAccessToItem:(id)item blockedReason:(unint64_t *)reason error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (!itemCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "item != nil"];
    *buf = 136315906;
    v24 = "[FCStorefrontAccessChecker hasAccessToItem:blockedReason:error:]";
    v25 = 2080;
    v26 = "FCStorefrontAccessChecker.m";
    v27 = 1024;
    v28 = 50;
    v29 = 2114;
    v30 = v22;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  privateChannelMembershipController = [(FCStorefrontAccessChecker *)self privateChannelMembershipController];
  sourceChannelID = [itemCopy sourceChannelID];
  v10 = [privateChannelMembershipController isMemberOfChannelID:sourceChannelID];

  if ((v10 & 1) == 0)
  {
    v12 = +[FCAppleAccount sharedAccount];
    contentStoreFrontID = [v12 contentStoreFrontID];

    blockedStorefrontIDs = [itemCopy blockedStorefrontIDs];
    allowedStorefrontIDs = [itemCopy allowedStorefrontIDs];
    if ([blockedStorefrontIDs containsObject:contentStoreFrontID])
    {
      v16 = 1;
    }

    else
    {
      if (![allowedStorefrontIDs count])
      {
        v11 = 1;
LABEL_15:

        goto LABEL_16;
      }

      v16 = [allowedStorefrontIDs containsObject:contentStoreFrontID] ^ 1;
    }

    v11 = v16 ^ 1;
    if (reason)
    {
      if (v16)
      {
        *reason = 2;
        v17 = FCDefaultLog;
        if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_DEFAULT))
        {
          v18 = v17;
          identifier = [itemCopy identifier];
          *buf = 138543362;
          v24 = identifier;
          _os_log_impl(&dword_1B63EF000, v18, OS_LOG_TYPE_DEFAULT, "item %{public}@ is not accessible because it's not allowed in the current storefront", buf, 0xCu);
        }
      }
    }

    goto LABEL_15;
  }

  v11 = 1;
LABEL_16:

  v20 = *MEMORY[0x1E69E9840];
  return v11;
}

@end