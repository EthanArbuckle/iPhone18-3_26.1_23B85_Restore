@interface NoteAccountObject(ICLegacyAccount)
- (id)emailAddress;
- (id)localizedAttachmentsNotSupportedReason;
- (id)localizedName;
- (uint64_t)compare:()ICLegacyAccount;
- (uint64_t)hasAnyCustomFolders;
- (uint64_t)isManaged;
- (uint64_t)legacyAccountType;
- (void)emailAddress;
@end

@implementation NoteAccountObject(ICLegacyAccount)

- (id)localizedName
{
  if ([a1 accountType])
  {
    [a1 name];
  }

  else
  {
    +[ICAccount localizedLocalAccountName];
  }
  v2 = ;

  return v2;
}

- (uint64_t)legacyAccountType
{
  result = [a1 accountType];
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

- (id)emailAddress
{
  v2 = [MEMORY[0x277CB8F48] defaultStore];
  v3 = [a1 accountIdentifier];
  v4 = [v2 accountWithIdentifier:v3];

  if (!v4)
  {
    v5 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(NoteAccountObject(ICLegacyAccount) *)a1 emailAddress];
    }
  }

  v6 = [v4 username];

  return v6;
}

- (uint64_t)isManaged
{
  v2 = [a1 accountIdentifier];
  v3 = [v2 length];

  if (!v3)
  {
    return 0;
  }

  v4 = [MEMORY[0x277D36178] sharedInstance];
  v5 = [a1 accountIdentifier];
  v6 = [v4 isManagedACAccountWithIdentifier:v5];

  return v6;
}

- (id)localizedAttachmentsNotSupportedReason
{
  if ([a1 accountType] == 2)
  {
    v1 = __ICLocalizedFrameworkString_impl(@"Exchange accounts don’t support attachments.", @"Exchange accounts don’t support attachments.", 0, 1);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

- (uint64_t)hasAnyCustomFolders
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [a1 folders];
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = *v7;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(v1);
        }

        if ([*(*(&v6 + 1) + 8 * i) isCustomFolder])
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

- (uint64_t)compare:()ICLegacyAccount
{
  v4 = a3;
  v5 = ICProtocolCast();
  if (v5)
  {
    v6 = [a1 name];
    v7 = [v5 name];
    v8 = [v6 localizedCaseInsensitiveCompare:v7];
  }

  else
  {
    v6 = ICProtocolCast();
    if (v6)
    {
      v8 = -1;
    }

    else
    {
      v9 = os_log_create("com.apple.notes", "HTML");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(NoteAccountObject(ICLegacyAccount) *)a1 compare:v4, v9];
      }

      v8 = 0;
    }
  }

  return v8;
}

- (void)emailAddress
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "No apple account found for note account %@", &v2, 0xCu);
}

- (void)compare:()ICLegacyAccount .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = 138412802;
  v11 = v5;
  v12 = 2112;
  v13 = v7;
  v14 = 2112;
  v15 = v9;
  _os_log_error_impl(&dword_214D51000, a3, OS_LOG_TYPE_ERROR, "Trying to compare an %@ with a non-%@: %@", &v10, 0x20u);
}

@end