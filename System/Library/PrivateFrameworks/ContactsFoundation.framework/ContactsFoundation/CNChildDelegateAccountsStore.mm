@interface CNChildDelegateAccountsStore
+ (id)os_log;
+ (void)configureChildAccount:(id)account withSettingsFromDelegateInfo:(id)info parent:(id)parent;
- (BOOL)updateAccounts:(id)accounts error:(id *)error;
- (CNChildDelegateAccountsStore)initWithParentAccount:(id)account accountStore:(id)store;
- (NSString)description;
- (id)addChildWithDelegateInfo:(id)info;
- (id)delegateAccounts;
- (id)removeAccount:(id)account;
- (id)updateAccount:(id)account;
@end

@implementation CNChildDelegateAccountsStore

+ (id)os_log
{
  if (os_log_cn_once_token_1_10 != -1)
  {
    +[CNChildDelegateAccountsStore os_log];
  }

  v3 = os_log_cn_once_object_1_10;

  return v3;
}

uint64_t __38__CNChildDelegateAccountsStore_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts", "child-delegate-accounts-store");
  v1 = os_log_cn_once_object_1_10;
  os_log_cn_once_object_1_10 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (CNChildDelegateAccountsStore)initWithParentAccount:(id)account accountStore:(id)store
{
  accountCopy = account;
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = CNChildDelegateAccountsStore;
  v9 = [(CNChildDelegateAccountsStore *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_parentAccount, account);
    objc_storeStrong(&v10->_accountStore, store);
    v11 = v10;
  }

  return v10;
}

- (NSString)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"parentAccount" object:self->_parentAccount];
  v5 = [v3 appendName:@"accountStore" object:self->_accountStore];
  build = [v3 build];

  return build;
}

- (id)delegateAccounts
{
  childAccounts = [(ACAccount *)self->_parentAccount childAccounts];
  v3 = [childAccounts _cn_map:CNCoreDelegateInfoFromACAccount];

  return v3;
}

- (BOOL)updateAccounts:(id)accounts error:(id *)error
{
  v70 = *MEMORY[0x1E69E9840];
  accountsCopy = accounts;
  if (accountsCopy)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    parentAccount = [(CNChildDelegateAccountsStore *)self parentAccount];
    childAccounts = [parentAccount childAccounts];
    v10 = [childAccounts _cn_indexBy:&__block_literal_global_11_0];
    v11 = [v10 mutableCopy];

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v47 = accountsCopy;
    obj = accountsCopy;
    v12 = [obj countByEnumeratingWithState:&v59 objects:v69 count:16];
    if (!v12)
    {
      goto LABEL_18;
    }

    v13 = v12;
    v14 = *v60;
    v48 = v7;
    while (1)
    {
      v15 = 0;
      v49 = v13;
      do
      {
        if (*v60 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v59 + 1) + 8 * v15);
        principalPath = [v16 principalPath];
        if (principalPath)
        {
          v18 = [v11 objectForKeyedSubscript:principalPath];
          if (v18)
          {
            os_log = v18;
            accountProperties = [v18 accountProperties];
            v21 = v14;
            v22 = v11;
            v23 = [accountProperties copy];

            v24 = objc_opt_class();
            parentAccount2 = [(CNChildDelegateAccountsStore *)self parentAccount];
            v26 = v24;
            v7 = v48;
            [v26 configureChildAccount:os_log withSettingsFromDelegateInfo:v16 parent:parentAccount2];

            accountProperties2 = [os_log accountProperties];
            LOBYTE(parentAccount2) = [v23 isEqualToDictionary:accountProperties2];

            v11 = v22;
            v14 = v21;
            v13 = v49;
            if (parentAccount2)
            {
              goto LABEL_15;
            }
          }

          else
          {
            os_log = [(CNChildDelegateAccountsStore *)self addChildWithDelegateInfo:v16];
          }

          v29 = [(CNChildDelegateAccountsStore *)self updateAccount:os_log];
          [v7 addObject:v29];

LABEL_15:
          [v11 removeObjectForKey:principalPath];
          goto LABEL_16;
        }

        os_log = [objc_opt_class() os_log];
        if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
        {
          dsid = [v16 dsid];
          *buf = 138543618;
          v66 = dsid;
          v67 = 2112;
          v68 = v16;
          _os_log_error_impl(&dword_1859F0000, os_log, OS_LOG_TYPE_ERROR, "Unexpected condition updating accounts - no principal path for delegateInfo: %{public}@ %@", buf, 0x16u);

          v7 = v48;
        }

LABEL_16:

        ++v15;
      }

      while (v13 != v15);
      v13 = [obj countByEnumeratingWithState:&v59 objects:v69 count:16];
      if (!v13)
      {
LABEL_18:

        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        allValues = [v11 allValues];
        v31 = [allValues countByEnumeratingWithState:&v55 objects:v64 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v56;
          do
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v56 != v33)
              {
                objc_enumerationMutation(allValues);
              }

              v35 = [(CNChildDelegateAccountsStore *)self removeAccount:*(*(&v55 + 1) + 8 * i)];
              [v7 addObject:v35];
            }

            v32 = [allValues countByEnumeratingWithState:&v55 objects:v64 count:16];
          }

          while (v32);
        }

        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v36 = v7;
        v37 = [v36 countByEnumeratingWithState:&v51 objects:v63 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v52;
          do
          {
            for (j = 0; j != v38; ++j)
            {
              if (*v52 != v39)
              {
                objc_enumerationMutation(v36);
              }

              v41 = [*(*(&v51 + 1) + 8 * j) result:0];
            }

            v38 = [v36 countByEnumeratingWithState:&v51 objects:v63 count:16];
          }

          while (v38);
        }

        accountsCopy = v47;
        goto LABEL_37;
      }
    }
  }

  os_log2 = [objc_opt_class() os_log];
  if (os_log_type_enabled(os_log2, OS_LOG_TYPE_ERROR))
  {
    [CNChildDelegateAccountsStore updateAccounts:os_log2 error:?];
  }

  v43 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsFoundationErrorDomain" code:9 userInfo:0];
  v36 = v43;
  if (error)
  {
    v44 = v43;
    *error = v36;
  }

LABEL_37:

  v45 = *MEMORY[0x1E69E9840];
  return accountsCopy != 0;
}

- (id)addChildWithDelegateInfo:(id)info
{
  infoCopy = info;
  accountStore = [(CNChildDelegateAccountsStore *)self accountStore];
  v6 = [accountStore accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E6959820]];

  v7 = [objc_alloc(MEMORY[0x1E6959A28]) initWithAccountType:v6];
  v8 = objc_opt_class();
  parentAccount = [(CNChildDelegateAccountsStore *)self parentAccount];
  [v8 configureChildAccount:v7 withSettingsFromDelegateInfo:infoCopy parent:parentAccount];

  _cn_principalPath = [v7 _cn_principalPath];
  [v7 setObject:_cn_principalPath forKeyedSubscript:@"serverRootPath"];

  parentAccount2 = [(CNChildDelegateAccountsStore *)self parentAccount];
  [v7 setParentAccount:parentAccount2];

  [v7 setAuthenticationType:@"parent"];

  return v7;
}

+ (void)configureChildAccount:(id)account withSettingsFromDelegateInfo:(id)info parent:(id)parent
{
  v22 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  parentCopy = parent;
  [accountCopy setPropertiesFromDelegateInfo:info];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [&unk_1EF464228 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(&unk_1EF464228);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [accountCopy objectForKeyedSubscript:v13];

        if (!v14)
        {
          v15 = [parentCopy objectForKeyedSubscript:v13];
          [accountCopy setObject:v15 forKeyedSubscript:v13];
        }
      }

      v10 = [&unk_1EF464228 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)updateAccount:(id)account
{
  accountCopy = account;
  accountStore = [(CNChildDelegateAccountsStore *)self accountStore];
  v6 = [accountStore _cn_canSaveAccount:accountCopy];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __46__CNChildDelegateAccountsStore_updateAccount___block_invoke;
  v16[3] = &unk_1E6ED59E0;
  v16[4] = self;
  v7 = accountCopy;
  v17 = v7;
  [v6 addFailureBlock:v16];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __46__CNChildDelegateAccountsStore_updateAccount___block_invoke_26;
  v14[3] = &unk_1E6ED63C8;
  v14[4] = self;
  v8 = v7;
  v15 = v8;
  [v6 addSuccessBlock:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__CNChildDelegateAccountsStore_updateAccount___block_invoke_28;
  v12[3] = &unk_1E6ED7860;
  v12[4] = self;
  v13 = v8;
  v9 = v8;
  v10 = [v6 flatMap:v12];

  return v10;
}

void __46__CNChildDelegateAccountsStore_updateAccount___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __46__CNChildDelegateAccountsStore_updateAccount___block_invoke_cold_1(a1);
  }
}

void __46__CNChildDelegateAccountsStore_updateAccount___block_invoke_26(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __46__CNChildDelegateAccountsStore_updateAccount___block_invoke_26_cold_1(a1);
  }
}

id __46__CNChildDelegateAccountsStore_updateAccount___block_invoke_28(uint64_t a1)
{
  v2 = [*(a1 + 32) accountStore];
  v3 = [v2 _cn_saveVerifiedAccount:*(a1 + 40)];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__CNChildDelegateAccountsStore_updateAccount___block_invoke_2;
  v9[3] = &unk_1E6ED59E0;
  v4 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v4;
  [v3 addFailureBlock:v9];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__CNChildDelegateAccountsStore_updateAccount___block_invoke_29;
  v7[3] = &unk_1E6ED63C8;
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v5;
  [v3 addSuccessBlock:v7];

  return v3;
}

void __46__CNChildDelegateAccountsStore_updateAccount___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __46__CNChildDelegateAccountsStore_updateAccount___block_invoke_2_cold_1(a1);
  }
}

void __46__CNChildDelegateAccountsStore_updateAccount___block_invoke_29(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __46__CNChildDelegateAccountsStore_updateAccount___block_invoke_29_cold_1(a1);
  }
}

- (id)removeAccount:(id)account
{
  accountCopy = account;
  accountStore = [(CNChildDelegateAccountsStore *)self accountStore];
  v6 = [accountStore _cn_removeAccount:accountCopy];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__CNChildDelegateAccountsStore_removeAccount___block_invoke;
  v12[3] = &unk_1E6ED59E0;
  v12[4] = self;
  v7 = accountCopy;
  v13 = v7;
  [v6 addFailureBlock:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__CNChildDelegateAccountsStore_removeAccount___block_invoke_31;
  v10[3] = &unk_1E6ED63C8;
  v10[4] = self;
  v11 = v7;
  v8 = v7;
  [v6 addSuccessBlock:v10];

  return v6;
}

void __46__CNChildDelegateAccountsStore_removeAccount___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __46__CNChildDelegateAccountsStore_removeAccount___block_invoke_cold_1(a1);
  }
}

void __46__CNChildDelegateAccountsStore_removeAccount___block_invoke_31(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __46__CNChildDelegateAccountsStore_removeAccount___block_invoke_31_cold_1(a1);
  }
}

void __46__CNChildDelegateAccountsStore_updateAccount___block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_3_3(a1) identifier];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1(&dword_1859F0000, v3, v4, "Delegate with account ID %@ cannot be saved, error %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __46__CNChildDelegateAccountsStore_updateAccount___block_invoke_26_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_3_3(a1) identifier];
  OUTLINED_FUNCTION_2_3(&dword_1859F0000, v3, v4, "Delegate with account ID %@ can be saved", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

void __46__CNChildDelegateAccountsStore_updateAccount___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_3_3(a1) identifier];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1(&dword_1859F0000, v3, v4, "Delegate with account ID %@ save failed, error %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __46__CNChildDelegateAccountsStore_updateAccount___block_invoke_29_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_3_3(a1) identifier];
  OUTLINED_FUNCTION_2_3(&dword_1859F0000, v3, v4, "Delegate with account ID %@ saved", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

void __46__CNChildDelegateAccountsStore_removeAccount___block_invoke_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_3_3(a1) identifier];
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1(&dword_1859F0000, v3, v4, "Delegate with account ID %@ failed to be removed, error %{public}@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x1E69E9840];
}

void __46__CNChildDelegateAccountsStore_removeAccount___block_invoke_31_cold_1(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  v2 = [OUTLINED_FUNCTION_3_3(a1) identifier];
  OUTLINED_FUNCTION_2_3(&dword_1859F0000, v3, v4, "Delegate with account ID %@ was successfully removed", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

@end