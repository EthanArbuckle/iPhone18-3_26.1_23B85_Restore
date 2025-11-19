@interface DAKeychain
+ (id)sharedKeychain;
- (BOOL)canAccessCredentialsWithAccessibility:(int)a3;
- (BOOL)removePasswordForAccount:(id)a3 withPersistentUUID:(id)a4;
- (__CFDictionary)_DACopyMutableQueryForAccountWithPersistentUUID:(id)a3;
- (id)guessPasswordForURL:(id)a3;
- (id)loadKeychainInformationsForURL:(id)a3;
- (int)_daKeychainAccessibilityForSecAccessibility:(void *)a3;
- (void)_secAccessibilityForDAKeychainAccessibility:(int)a3;
- (void)migratePasswordForAccount:(id)a3;
- (void)removeKeychainInformationsForURL:(id)a3;
@end

@implementation DAKeychain

+ (id)sharedKeychain
{
  v2 = _sharedDAKeychain;
  if (!_sharedDAKeychain)
  {
    v3 = objc_opt_new();
    v4 = _sharedDAKeychain;
    _sharedDAKeychain = v3;

    v2 = _sharedDAKeychain;
  }

  return v2;
}

- (BOOL)canAccessCredentialsWithAccessibility:(int)a3
{
  if (a3 == 1)
  {
    return MKBGetDeviceLockState() != 0;
  }

  if (a3 == 2)
  {
    return MKBDeviceUnlockedSinceBoot() == 1;
  }

  return 1;
}

- (void)_secAccessibilityForDAKeychainAccessibility:(int)a3
{
  switch(a3)
  {
    case 3:
      v3 = MEMORY[0x277CDBEF0];
      return *v3;
    case 2:
      v3 = MEMORY[0x277CDBEE0];
      return *v3;
    case 1:
      v3 = MEMORY[0x277CDBF10];
      return *v3;
  }

  return 0;
}

- (int)_daKeychainAccessibilityForSecAccessibility:(void *)a3
{
  if (!a3)
  {
    return 2;
  }

  if (CFEqual(a3, *MEMORY[0x277CDBEF0]))
  {
    return 3;
  }

  if (!CFEqual(a3, *MEMORY[0x277CDBEE0]) && CFEqual(a3, *MEMORY[0x277CDBF10]))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (__CFDictionary)_DACopyMutableQueryForAccountWithPersistentUUID:(id)a3
{
  v3 = a3;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = *MEMORY[0x277CDBF20];
  v6 = [@"DataAccess-" stringByAppendingString:v3];

  CFDictionaryAddValue(Mutable, v5, v6);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC248]);
  return Mutable;
}

- (BOOL)removePasswordForAccount:(id)a3 withPersistentUUID:(id)a4
{
  *&v18[5] = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [(DAKeychain *)self _DACopyMutableQueryForAccountWithPersistentUUID:v5];
  v7 = DALoggingwithCategory();
  v8 = MEMORY[0x277CF3AF0];
  v9 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v7, v9))
  {
    v17 = 138412290;
    *v18 = v5;
    _os_log_impl(&dword_24244C000, v7, v9, "Removing password for account with UUID %@", &v17, 0xCu);
  }

  v10 = SecItemDelete(v6);
  v11 = 1;
  if (v10 != -25300)
  {
    v12 = v10;
    if (v10)
    {
      v13 = DALoggingwithCategory();
      v14 = *(v8 + 3);
      if (os_log_type_enabled(v13, v14))
      {
        v17 = 67109378;
        v18[0] = v12;
        LOWORD(v18[1]) = 2112;
        *(&v18[1] + 2) = v5;
        _os_log_impl(&dword_24244C000, v13, v14, "Error %d, Couldn't delete password from keychain for account %@", &v17, 0x12u);
      }

      v11 = 0;
    }
  }

  if (v6)
  {
    CFRelease(v6);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)migratePasswordForAccount:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:?];
  v5 = [(DAKeychain *)self passwordForAccountWithPersistentUUID:v4 expectedAccessibility:3 shouldSetAccessibility:0 passwordExpected:0];

  if (![v5 length])
  {
    v6 = [v3 persistentUUID];
    v7 = [(DAKeychain *)self passwordForAccountWithPersistentUUID:v6 expectedAccessibility:3 shouldSetAccessibility:0 passwordExpected:0];

    v5 = v7;
  }

  v8 = [v3 objectForKeyedSubscript:?];

  if (v8)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v9 = [v3 objectForKeyedSubscript:@"DAOldKeychainURLs"];
    v10 = [v9 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v10)
    {
      v11 = *v42;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v42 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = [MEMORY[0x277CBEBC0] URLWithString:*(*(&v41 + 1) + 8 * i)];
          if (!v5)
          {
            v14 = +[DAKeychain sharedKeychain];
            v5 = [v14 guessPasswordForURL:v13];
          }

          v15 = +[DAKeychain sharedKeychain];
          [v15 removeKeychainInformationsForURL:v13];
        }

        v10 = [v9 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v10);
    }
  }

  if (v5)
  {
    v16 = [objc_alloc(MEMORY[0x277CB8F38]) initWithPassword:v5];
    v17 = [v3 backingAccountInfo];
    [v17 setCredential:v16];

    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    v18 = dispatch_semaphore_create(0);
    v19 = DALoggingwithCategory();
    v20 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = v16;
      v22 = [v3 backingAccountInfo];
      v23 = [v22 identifier];
      v24 = [v3 backingAccountInfo];
      v25 = [v24 username];
      *buf = 138412546;
      v46 = v23;
      v47 = 2112;
      v48 = v25;
      _os_log_impl(&dword_24244C000, v19, v20, "During Migration, password present. Setting _backingAccountInfo.authenticated = YES for Account identifier %@ and username %@", buf, 0x16u);

      v16 = v21;
    }

    v26 = [v3 backingAccountInfo];
    [v26 setAuthenticated:1];

    [v3 setObject:0 forKeyedSubscript:@"DAOldKeychainURLs"];
    v27 = sharedDAAccountStore();
    v28 = [v3 backingAccountInfo];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __40__DAKeychain_migratePasswordForAccount___block_invoke;
    v34[3] = &unk_278D4C628;
    v36 = &v37;
    v29 = v18;
    v35 = v29;
    [v27 saveVerifiedAccount:v28 withCompletionHandler:v34];

    dispatch_semaphore_wait(v29, 0xFFFFFFFFFFFFFFFFLL);
    if (*(v38 + 24) == 1)
    {
      v30 = [v3 objectForKeyedSubscript:@"DAAccountPersistentUUID"];
      [(DAKeychain *)self removePasswordForAccount:v3 withPersistentUUID:v30];

      v31 = [v3 persistentUUID];
      [(DAKeychain *)self removePasswordForAccount:v3 withPersistentUUID:v31];
    }

    _Block_object_dispose(&v37, 8);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (id)loadKeychainInformationsForURL:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = DALoggingwithCategory();
  v5 = MEMORY[0x277CF3AF0];
  v6 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v4, v6))
  {
    *buf = 138412290;
    v32 = v3;
    _os_log_impl(&dword_24244C000, v4, v6, "Loading password for %@", buf, 0xCu);
  }

  v7 = [(__CFString *)v3 user];
  v8 = [(__CFString *)v3 host];
  v9 = [(__CFString *)v3 scheme];
  if (!v7 || ([v7 isEqualToString:&stru_2854B2770] & 1) != 0 || !v8 || (objc_msgSend(v8, "isEqualToString:", &stru_2854B2770) & 1) != 0 || !v9 || objc_msgSend(v9, "isEqualToString:", &stru_2854B2770))
  {
    v10 = DALoggingwithCategory();
    v11 = *(v5 + 3);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = @"Login ";
      if (v7 && ![v7 isEqualToString:&stru_2854B2770])
      {
        v12 = &stru_2854B2770;
      }

      v13 = @"Host ";
      if (v8 && ![v8 isEqualToString:&stru_2854B2770])
      {
        v13 = &stru_2854B2770;
      }

      v14 = @"Scheme ";
      if (v9 && ![v9 isEqualToString:&stru_2854B2770])
      {
        v14 = &stru_2854B2770;
      }

      *buf = 138412802;
      v32 = v12;
      v33 = 2112;
      v34 = v13;
      v35 = 2112;
      v36 = v14;
      _os_log_impl(&dword_24244C000, v10, v11, "Refusing to retrieve password from keychain because one or more of the necessary fields are null: %@%@%@", buf, 0x20u);
    }

    goto LABEL_21;
  }

  if ([v7 isEqualToString:@"unit-test"])
  {
LABEL_21:
    v15 = 0;
    goto LABEL_22;
  }

  result = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if ([v9 isEqualToString:@"ftp"])
  {
    v19 = MEMORY[0x277CDC0B0];
  }

  else
  {
    if (![v9 isEqualToString:@"http"])
    {
      if ([v9 isEqualToString:@"https"])
      {
        v20 = *MEMORY[0x277CDC0C0];
      }

      else
      {
        v20 = 0;
      }

      goto LABEL_34;
    }

    v19 = MEMORY[0x277CDC0B8];
  }

  v20 = *v19;
LABEL_34:
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], v7);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC558], *MEMORY[0x277CBED28]);
  v21 = *MEMORY[0x277CDC228];
  if (v20)
  {
    CFDictionaryAddValue(Mutable, v21, *MEMORY[0x277CDC248]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC0A8], v20);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC118], v8);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF38], *MEMORY[0x277CDBF40]);
    v22 = [(__CFString *)v3 port];

    v23 = *MEMORY[0x277CDC0A0];
    if (v22)
    {
      v24 = [(__CFString *)v3 port];
    }

    else
    {
      v24 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(MEMORY[0x277CBEBC0], "da_classicPortForScheme:", v9)}];
    }

    CFDictionaryAddValue(Mutable, v23, v24);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC098], [(__CFString *)v3 uri]);
  }

  else
  {
    CFDictionaryAddValue(Mutable, v21, *MEMORY[0x277CDC238]);
    v25 = *MEMORY[0x277CDC120];
    v26 = [(__CFString *)v3 URLWithoutUsername];
    CFDictionaryAddValue(Mutable, v25, [v26 absoluteString]);
  }

  if (SecItemCopyMatching(Mutable, &result))
  {
    v27 = DALoggingwithCategory();
    v28 = *(v5 + 6);
    if (os_log_type_enabled(v27, v28))
    {
      *buf = 138412290;
      v32 = v3;
      _os_log_impl(&dword_24244C000, v27, v28, "Could not find a password in the keychain for %@", buf, 0xCu);
    }

    v15 = 0;
  }

  else
  {
    v29 = objc_alloc(MEMORY[0x277CCACA8]);
    v15 = [v29 initWithData:result encoding:4];
  }

  if (result)
  {
    CFRelease(result);
    result = 0;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_22:

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)removeKeychainInformationsForURL:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = DALoggingwithCategory();
  v5 = MEMORY[0x277CF3AF0];
  v6 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v4, v6))
  {
    v29 = 138412290;
    *v30 = v3;
    _os_log_impl(&dword_24244C000, v4, v6, "Removing password for %@", &v29, 0xCu);
  }

  v7 = [v3 user];
  v8 = [v3 host];
  v9 = [v3 scheme];
  if (!v7 || ([v7 isEqualToString:&stru_2854B2770] & 1) != 0 || !v8 || (objc_msgSend(v8, "isEqualToString:", &stru_2854B2770) & 1) != 0 || !v9 || objc_msgSend(v9, "isEqualToString:", &stru_2854B2770))
  {
    v10 = DALoggingwithCategory();
    v11 = *(v5 + 3);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = @"Login ";
      if (v7 && ![v7 isEqualToString:&stru_2854B2770])
      {
        v12 = &stru_2854B2770;
      }

      v13 = @"Host ";
      if (v8 && ![v8 isEqualToString:&stru_2854B2770])
      {
        v13 = &stru_2854B2770;
      }

      v14 = @"Scheme ";
      if (v9 && ![v9 isEqualToString:&stru_2854B2770])
      {
        v14 = &stru_2854B2770;
      }

      v29 = 138412802;
      *v30 = v12;
      *&v30[8] = 2112;
      *&v30[10] = v13;
      v31 = 2112;
      v32 = v14;
      _os_log_impl(&dword_24244C000, v10, v11, "Refusing to delete password from keychain because one or more of the necessary fields are null: %@%@%@", &v29, 0x20u);
    }

    goto LABEL_21;
  }

  if ([v7 isEqualToString:@"unit-test"])
  {
    goto LABEL_21;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if ([v9 isEqualToString:@"ftp"])
  {
    v17 = MEMORY[0x277CDC0B0];
  }

  else
  {
    if (![v9 isEqualToString:@"http"])
    {
      if ([v9 isEqualToString:@"https"])
      {
        v18 = *MEMORY[0x277CDC0C0];
      }

      else
      {
        v18 = 0;
      }

      goto LABEL_31;
    }

    v17 = MEMORY[0x277CDC0B8];
  }

  v18 = *v17;
LABEL_31:
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], v7);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC558], *MEMORY[0x277CBED28]);
  v19 = *MEMORY[0x277CDC228];
  if (v18)
  {
    CFDictionaryAddValue(Mutable, v19, *MEMORY[0x277CDC248]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC0A8], v18);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC118], v8);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF38], *MEMORY[0x277CDBF40]);
    v20 = [v3 port];

    v21 = *MEMORY[0x277CDC0A0];
    if (v20)
    {
      v22 = [v3 port];
    }

    else
    {
      v22 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(MEMORY[0x277CBEBC0], "da_classicPortForScheme:", v9)}];
    }

    CFDictionaryAddValue(Mutable, v21, v22);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC098], [v3 uri]);
  }

  else
  {
    CFDictionaryAddValue(Mutable, v19, *MEMORY[0x277CDC238]);
    v23 = *MEMORY[0x277CDC120];
    v24 = [v3 URLWithoutUsername];
    CFDictionaryAddValue(Mutable, v23, [v24 absoluteString]);
  }

  v25 = SecItemDelete(Mutable);
  if (v25)
  {
    v26 = v25;
    v27 = DALoggingwithCategory();
    v28 = *(v5 + 3);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = 67109378;
      *v30 = v26;
      *&v30[4] = 2112;
      *&v30[6] = v3;
      _os_log_impl(&dword_24244C000, v27, v28, "error %d: Could not delete password for %@", &v29, 0x12u);
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_21:

  v15 = *MEMORY[0x277D85DE8];
}

- (id)guessPasswordForURL:(id)a3
{
  v4 = a3;
  v5 = [(DAKeychain *)self loadKeychainInformationsForURL:v4];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = v4;
  }

  else
  {
    v10 = [v4 port];
    v11 = [v10 intValue];

    v8 = v4;
    if (!v11)
    {
      goto LABEL_9;
    }

    v12 = MEMORY[0x277CBEBC0];
    v13 = [v4 scheme];
    v14 = [v4 host];
    v15 = [v4 path];
    v16 = [v12 da_URLWithScheme:v13 host:v14 port:0 uri:v15];

    v17 = [v4 user];
    v18 = [v4 password];
    v8 = [v16 URLWithUsername:v17 withPassword:v18];

    v6 = [(DAKeychain *)self loadKeychainInformationsForURL:v8];

    if (v6)
    {
      v7 = 0;
    }

    else
    {
LABEL_9:
      v7 = 0;
      if (v8)
      {
        while (1)
        {
          v6 = [v7 absoluteString];
          if (!v6)
          {
            break;
          }

          v19 = [v8 absoluteString];
          v20 = [v7 absoluteString];
          v21 = [v19 isEqualToString:v20];

          if (v21)
          {
            goto LABEL_15;
          }

          v22 = [(DAKeychain *)self loadKeychainInformationsForURL:v8];
          if (v22)
          {
            v6 = v22;
            break;
          }

          v23 = v8;

          v8 = [v23 URLByRemovingLastPathComponent];

          v7 = v23;
          if (!v8)
          {
            v6 = 0;
            v7 = v23;
            break;
          }
        }
      }

      else
      {
LABEL_15:
        v6 = 0;
      }
    }
  }

  return v6;
}

@end