@interface ACAccountStore(SyncPrivate)
- (id)mailAccountsForSync;
- (uint64_t)_mailAccountTypeIdentifiers;
- (uint64_t)hasMailAccountsForSync;
@end

@implementation ACAccountStore(SyncPrivate)

- (uint64_t)_mailAccountTypeIdentifiers
{
  if (_mailAccountTypeIdentifiers_onceToken != -1)
  {
    [ACAccountStore(SyncPrivate) _mailAccountTypeIdentifiers];
  }

  return _mailAccountTypeIdentifiers_mailAccountTypes;
}

- (uint64_t)hasMailAccountsForSync
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 _mailAccountTypeIdentifiers];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [a1 accounts];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([v3 containsObject:{objc_msgSend(objc_msgSend(*(*(&v12 + 1) + 8 * v8), "accountType"), "identifier")}])
        {
          v9 = 1;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:
  objc_autoreleasePoolPop(v2);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)mailAccountsForSync
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = objc_autoreleasePoolPush();
  v4 = [a1 _mailAccountTypeIdentifiers];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a1 accounts];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v4 containsObject:{objc_msgSend(objc_msgSend(v10, "accountType"), "identifier")}])
        {
          [v2 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  objc_autoreleasePoolPop(v3);
  result = v2;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

@end