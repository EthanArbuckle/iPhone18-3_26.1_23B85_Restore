@interface CNChildDelegateAccountsStore
+ (id)os_log;
+ (void)configureChildAccount:(id)a3 withSettingsFromDelegateInfo:(id)a4 parent:(id)a5;
- (BOOL)updateAccounts:(id)a3 error:(id *)a4;
- (CNChildDelegateAccountsStore)initWithParentAccount:(id)a3 accountStore:(id)a4;
- (NSString)description;
- (id)addChildWithDelegateInfo:(id)a3;
- (id)delegateAccounts;
- (id)removeAccount:(id)a3;
- (id)updateAccount:(id)a3;
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

- (CNChildDelegateAccountsStore)initWithParentAccount:(id)a3 accountStore:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = CNChildDelegateAccountsStore;
  v9 = [(CNChildDelegateAccountsStore *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_parentAccount, a3);
    objc_storeStrong(&v10->_accountStore, a4);
    v11 = v10;
  }

  return v10;
}

- (NSString)description
{
  v3 = [CNDescriptionBuilder descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"parentAccount" object:self->_parentAccount];
  v5 = [v3 appendName:@"accountStore" object:self->_accountStore];
  v6 = [v3 build];

  return v6;
}

- (id)delegateAccounts
{
  v2 = [(ACAccount *)self->_parentAccount childAccounts];
  v3 = [v2 _cn_map:CNCoreDelegateInfoFromACAccount];

  return v3;
}

- (BOOL)updateAccounts:(id)a3 error:(id *)a4
{
  v70 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = [(CNChildDelegateAccountsStore *)self parentAccount];
    v9 = [v8 childAccounts];
    v10 = [v9 _cn_indexBy:&__block_literal_global_11_0];
    v11 = [v10 mutableCopy];

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v47 = v6;
    obj = v6;
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
        v17 = [v16 principalPath];
        if (v17)
        {
          v18 = [v11 objectForKeyedSubscript:v17];
          if (v18)
          {
            v19 = v18;
            v20 = [v18 accountProperties];
            v21 = v14;
            v22 = v11;
            v23 = [v20 copy];

            v24 = objc_opt_class();
            v25 = [(CNChildDelegateAccountsStore *)self parentAccount];
            v26 = v24;
            v7 = v48;
            [v26 configureChildAccount:v19 withSettingsFromDelegateInfo:v16 parent:v25];

            v27 = [v19 accountProperties];
            LOBYTE(v25) = [v23 isEqualToDictionary:v27];

            v11 = v22;
            v14 = v21;
            v13 = v49;
            if (v25)
            {
              goto LABEL_15;
            }
          }

          else
          {
            v19 = [(CNChildDelegateAccountsStore *)self addChildWithDelegateInfo:v16];
          }

          v29 = [(CNChildDelegateAccountsStore *)self updateAccount:v19];
          [v7 addObject:v29];

LABEL_15:
          [v11 removeObjectForKey:v17];
          goto LABEL_16;
        }

        v19 = [objc_opt_class() os_log];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v28 = [v16 dsid];
          *buf = 138543618;
          v66 = v28;
          v67 = 2112;
          v68 = v16;
          _os_log_error_impl(&dword_1859F0000, v19, OS_LOG_TYPE_ERROR, "Unexpected condition updating accounts - no principal path for delegateInfo: %{public}@ %@", buf, 0x16u);

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
        v30 = [v11 allValues];
        v31 = [v30 countByEnumeratingWithState:&v55 objects:v64 count:16];
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
                objc_enumerationMutation(v30);
              }

              v35 = [(CNChildDelegateAccountsStore *)self removeAccount:*(*(&v55 + 1) + 8 * i)];
              [v7 addObject:v35];
            }

            v32 = [v30 countByEnumeratingWithState:&v55 objects:v64 count:16];
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

        v6 = v47;
        goto LABEL_37;
      }
    }
  }

  v42 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    [CNChildDelegateAccountsStore updateAccounts:v42 error:?];
  }

  v43 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNContactsFoundationErrorDomain" code:9 userInfo:0];
  v36 = v43;
  if (a4)
  {
    v44 = v43;
    *a4 = v36;
  }

LABEL_37:

  v45 = *MEMORY[0x1E69E9840];
  return v6 != 0;
}

- (id)addChildWithDelegateInfo:(id)a3
{
  v4 = a3;
  v5 = [(CNChildDelegateAccountsStore *)self accountStore];
  v6 = [v5 accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E6959820]];

  v7 = [objc_alloc(MEMORY[0x1E6959A28]) initWithAccountType:v6];
  v8 = objc_opt_class();
  v9 = [(CNChildDelegateAccountsStore *)self parentAccount];
  [v8 configureChildAccount:v7 withSettingsFromDelegateInfo:v4 parent:v9];

  v10 = [v7 _cn_principalPath];
  [v7 setObject:v10 forKeyedSubscript:@"serverRootPath"];

  v11 = [(CNChildDelegateAccountsStore *)self parentAccount];
  [v7 setParentAccount:v11];

  [v7 setAuthenticationType:@"parent"];

  return v7;
}

+ (void)configureChildAccount:(id)a3 withSettingsFromDelegateInfo:(id)a4 parent:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  [v7 setPropertiesFromDelegateInfo:a4];
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
        v14 = [v7 objectForKeyedSubscript:v13];

        if (!v14)
        {
          v15 = [v8 objectForKeyedSubscript:v13];
          [v7 setObject:v15 forKeyedSubscript:v13];
        }
      }

      v10 = [&unk_1EF464228 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)updateAccount:(id)a3
{
  v4 = a3;
  v5 = [(CNChildDelegateAccountsStore *)self accountStore];
  v6 = [v5 _cn_canSaveAccount:v4];

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __46__CNChildDelegateAccountsStore_updateAccount___block_invoke;
  v16[3] = &unk_1E6ED59E0;
  v16[4] = self;
  v7 = v4;
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

- (id)removeAccount:(id)a3
{
  v4 = a3;
  v5 = [(CNChildDelegateAccountsStore *)self accountStore];
  v6 = [v5 _cn_removeAccount:v4];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__CNChildDelegateAccountsStore_removeAccount___block_invoke;
  v12[3] = &unk_1E6ED59E0;
  v12[4] = self;
  v7 = v4;
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