@interface ACAccountStore(ContactsFoundation)
- (id)_cn_canSaveAccount:()ContactsFoundation;
- (id)_cn_removeAccount:()ContactsFoundation;
- (id)_cn_saveVerifiedAccount:()ContactsFoundation;
- (id)cardDAVAccountForPrimaryAppleAccountWithAppleID:()ContactsFoundation logger:;
@end

@implementation ACAccountStore(ContactsFoundation)

- (id)_cn_canSaveAccount:()ContactsFoundation
{
  v4 = a3;
  v5 = objc_alloc_init(CNPromise);
  v6 = [(CNPromise *)v5 BOOLErrorCompletionHandlerAdapter];
  [a1 canSaveAccount:v4 withCompletionHandler:v6];

  v7 = [(CNPromise *)v5 future];

  return v7;
}

- (id)_cn_saveVerifiedAccount:()ContactsFoundation
{
  v4 = a3;
  v5 = objc_alloc_init(CNPromise);
  v6 = [(CNPromise *)v5 BOOLErrorCompletionHandlerAdapter];
  [a1 saveVerifiedAccount:v4 withCompletionHandler:v6];

  v7 = [(CNPromise *)v5 future];

  return v7;
}

- (id)_cn_removeAccount:()ContactsFoundation
{
  v4 = a3;
  v5 = objc_alloc_init(CNPromise);
  v6 = [(CNPromise *)v5 BOOLErrorCompletionHandlerAdapter];
  [a1 removeAccount:v4 withCompletionHandler:v6];

  v7 = [(CNPromise *)v5 future];

  return v7;
}

- (id)cardDAVAccountForPrimaryAppleAccountWithAppleID:()ContactsFoundation logger:
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 accountTypeWithAccountTypeIdentifier:*MEMORY[0x1E6959820]];
  v9 = [a1 accountsWithAccountType:v8];
  if ([v9 count])
  {
    v10 = [v9 _cn_firstObjectPassingTest:&__block_literal_global_0];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 parentAccount];
      v13 = [v12 _cn_appleAccountAppleID];
      v14 = [v13 isEqualToString:v6];

      if (v14)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          [ACAccountStore(ContactsFoundation) cardDAVAccountForPrimaryAppleAccountWithAppleID:v6 logger:v7];
        }

LABEL_14:
        v15 = v11;
LABEL_16:

        goto LABEL_17;
      }

      v16 = [v11 parentAccount];
      v17 = [v16 _cn_appleAccountAppleIDAliases];
      v18 = [v17 containsObject:v6];

      if (v18)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          [ACAccountStore(ContactsFoundation) cardDAVAccountForPrimaryAppleAccountWithAppleID:v6 logger:v7];
        }

        goto LABEL_14;
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ACAccountStore(ContactsFoundation) cardDAVAccountForPrimaryAppleAccountWithAppleID:v7 logger:?];
    }

    v15 = 0;
    goto LABEL_16;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [ACAccountStore(ContactsFoundation) cardDAVAccountForPrimaryAppleAccountWithAppleID:v7 logger:?];
  }

  v15 = 0;
LABEL_17:

  return v15;
}

- (void)cardDAVAccountForPrimaryAppleAccountWithAppleID:()ContactsFoundation logger:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1859F0000, a2, OS_LOG_TYPE_DEBUG, "Found primary iCloud ACAccount with alias appleID: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)cardDAVAccountForPrimaryAppleAccountWithAppleID:()ContactsFoundation logger:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1859F0000, a2, OS_LOG_TYPE_DEBUG, "Found primary iCloud ACAccount with appleID: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end