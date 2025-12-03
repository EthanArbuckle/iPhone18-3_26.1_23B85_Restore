@interface DAKeychain
+ (id)sharedKeychain;
- (BOOL)canAccessCredentialsWithAccessibility:(int)accessibility;
- (BOOL)removePasswordForAccount:(id)account withPersistentUUID:(id)d;
- (__CFDictionary)_DACopyMutableQueryForAccountWithPersistentUUID:(id)d;
- (id)guessPasswordForURL:(id)l;
- (id)loadKeychainInformationsForURL:(id)l;
- (int)_daKeychainAccessibilityForSecAccessibility:(void *)accessibility;
- (void)_secAccessibilityForDAKeychainAccessibility:(int)accessibility;
- (void)migratePasswordForAccount:(id)account;
- (void)removeKeychainInformationsForURL:(id)l;
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

- (BOOL)canAccessCredentialsWithAccessibility:(int)accessibility
{
  if (accessibility == 1)
  {
    return MKBGetDeviceLockState() != 0;
  }

  if (accessibility == 2)
  {
    return MKBDeviceUnlockedSinceBoot() == 1;
  }

  return 1;
}

- (void)_secAccessibilityForDAKeychainAccessibility:(int)accessibility
{
  switch(accessibility)
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

- (int)_daKeychainAccessibilityForSecAccessibility:(void *)accessibility
{
  if (!accessibility)
  {
    return 2;
  }

  if (CFEqual(accessibility, *MEMORY[0x277CDBEF0]))
  {
    return 3;
  }

  if (!CFEqual(accessibility, *MEMORY[0x277CDBEE0]) && CFEqual(accessibility, *MEMORY[0x277CDBF10]))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (__CFDictionary)_DACopyMutableQueryForAccountWithPersistentUUID:(id)d
{
  dCopy = d;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = *MEMORY[0x277CDBF20];
  v6 = [@"DataAccess-" stringByAppendingString:dCopy];

  CFDictionaryAddValue(Mutable, v5, v6);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC248]);
  return Mutable;
}

- (BOOL)removePasswordForAccount:(id)account withPersistentUUID:(id)d
{
  *&v18[5] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v6 = [(DAKeychain *)self _DACopyMutableQueryForAccountWithPersistentUUID:dCopy];
  v7 = DALoggingwithCategory();
  v8 = MEMORY[0x277CF3AF0];
  v9 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v7, v9))
  {
    v17 = 138412290;
    *v18 = dCopy;
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
        *(&v18[1] + 2) = dCopy;
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

- (void)migratePasswordForAccount:(id)account
{
  v50 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v4 = [accountCopy objectForKeyedSubscript:?];
  v5 = [(DAKeychain *)self passwordForAccountWithPersistentUUID:v4 expectedAccessibility:3 shouldSetAccessibility:0 passwordExpected:0];

  if (![v5 length])
  {
    persistentUUID = [accountCopy persistentUUID];
    v7 = [(DAKeychain *)self passwordForAccountWithPersistentUUID:persistentUUID expectedAccessibility:3 shouldSetAccessibility:0 passwordExpected:0];

    v5 = v7;
  }

  v8 = [accountCopy objectForKeyedSubscript:?];

  if (v8)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v9 = [accountCopy objectForKeyedSubscript:@"DAOldKeychainURLs"];
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
    backingAccountInfo = [accountCopy backingAccountInfo];
    [backingAccountInfo setCredential:v16];

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
      backingAccountInfo2 = [accountCopy backingAccountInfo];
      identifier = [backingAccountInfo2 identifier];
      backingAccountInfo3 = [accountCopy backingAccountInfo];
      username = [backingAccountInfo3 username];
      *buf = 138412546;
      v46 = identifier;
      v47 = 2112;
      v48 = username;
      _os_log_impl(&dword_24244C000, v19, v20, "During Migration, password present. Setting _backingAccountInfo.authenticated = YES for Account identifier %@ and username %@", buf, 0x16u);

      v16 = v21;
    }

    backingAccountInfo4 = [accountCopy backingAccountInfo];
    [backingAccountInfo4 setAuthenticated:1];

    [accountCopy setObject:0 forKeyedSubscript:@"DAOldKeychainURLs"];
    v27 = sharedDAAccountStore();
    backingAccountInfo5 = [accountCopy backingAccountInfo];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __40__DAKeychain_migratePasswordForAccount___block_invoke;
    v34[3] = &unk_278D4C628;
    v36 = &v37;
    v29 = v18;
    v35 = v29;
    [v27 saveVerifiedAccount:backingAccountInfo5 withCompletionHandler:v34];

    dispatch_semaphore_wait(v29, 0xFFFFFFFFFFFFFFFFLL);
    if (*(v38 + 24) == 1)
    {
      v30 = [accountCopy objectForKeyedSubscript:@"DAAccountPersistentUUID"];
      [(DAKeychain *)self removePasswordForAccount:accountCopy withPersistentUUID:v30];

      persistentUUID2 = [accountCopy persistentUUID];
      [(DAKeychain *)self removePasswordForAccount:accountCopy withPersistentUUID:persistentUUID2];
    }

    _Block_object_dispose(&v37, 8);
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (id)loadKeychainInformationsForURL:(id)l
{
  v37 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v4 = DALoggingwithCategory();
  v5 = MEMORY[0x277CF3AF0];
  v6 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v4, v6))
  {
    *buf = 138412290;
    v32 = lCopy;
    _os_log_impl(&dword_24244C000, v4, v6, "Loading password for %@", buf, 0xCu);
  }

  user = [(__CFString *)lCopy user];
  host = [(__CFString *)lCopy host];
  scheme = [(__CFString *)lCopy scheme];
  if (!user || ([user isEqualToString:&stru_2854B2770] & 1) != 0 || !host || (objc_msgSend(host, "isEqualToString:", &stru_2854B2770) & 1) != 0 || !scheme || objc_msgSend(scheme, "isEqualToString:", &stru_2854B2770))
  {
    v10 = DALoggingwithCategory();
    v11 = *(v5 + 3);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = @"Login ";
      if (user && ![user isEqualToString:&stru_2854B2770])
      {
        v12 = &stru_2854B2770;
      }

      v13 = @"Host ";
      if (host && ![host isEqualToString:&stru_2854B2770])
      {
        v13 = &stru_2854B2770;
      }

      v14 = @"Scheme ";
      if (scheme && ![scheme isEqualToString:&stru_2854B2770])
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

  if ([user isEqualToString:@"unit-test"])
  {
LABEL_21:
    v15 = 0;
    goto LABEL_22;
  }

  result = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if ([scheme isEqualToString:@"ftp"])
  {
    v19 = MEMORY[0x277CDC0B0];
  }

  else
  {
    if (![scheme isEqualToString:@"http"])
    {
      if ([scheme isEqualToString:@"https"])
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
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], user);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC558], *MEMORY[0x277CBED28]);
  v21 = *MEMORY[0x277CDC228];
  if (v20)
  {
    CFDictionaryAddValue(Mutable, v21, *MEMORY[0x277CDC248]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC0A8], v20);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC118], host);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF38], *MEMORY[0x277CDBF40]);
    port = [(__CFString *)lCopy port];

    v23 = *MEMORY[0x277CDC0A0];
    if (port)
    {
      port2 = [(__CFString *)lCopy port];
    }

    else
    {
      port2 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(MEMORY[0x277CBEBC0], "da_classicPortForScheme:", scheme)}];
    }

    CFDictionaryAddValue(Mutable, v23, port2);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC098], [(__CFString *)lCopy uri]);
  }

  else
  {
    CFDictionaryAddValue(Mutable, v21, *MEMORY[0x277CDC238]);
    v25 = *MEMORY[0x277CDC120];
    uRLWithoutUsername = [(__CFString *)lCopy URLWithoutUsername];
    CFDictionaryAddValue(Mutable, v25, [uRLWithoutUsername absoluteString]);
  }

  if (SecItemCopyMatching(Mutable, &result))
  {
    v27 = DALoggingwithCategory();
    v28 = *(v5 + 6);
    if (os_log_type_enabled(v27, v28))
    {
      *buf = 138412290;
      v32 = lCopy;
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

- (void)removeKeychainInformationsForURL:(id)l
{
  v33 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v4 = DALoggingwithCategory();
  v5 = MEMORY[0x277CF3AF0];
  v6 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v4, v6))
  {
    v29 = 138412290;
    *v30 = lCopy;
    _os_log_impl(&dword_24244C000, v4, v6, "Removing password for %@", &v29, 0xCu);
  }

  user = [lCopy user];
  host = [lCopy host];
  scheme = [lCopy scheme];
  if (!user || ([user isEqualToString:&stru_2854B2770] & 1) != 0 || !host || (objc_msgSend(host, "isEqualToString:", &stru_2854B2770) & 1) != 0 || !scheme || objc_msgSend(scheme, "isEqualToString:", &stru_2854B2770))
  {
    v10 = DALoggingwithCategory();
    v11 = *(v5 + 3);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = @"Login ";
      if (user && ![user isEqualToString:&stru_2854B2770])
      {
        v12 = &stru_2854B2770;
      }

      v13 = @"Host ";
      if (host && ![host isEqualToString:&stru_2854B2770])
      {
        v13 = &stru_2854B2770;
      }

      v14 = @"Scheme ";
      if (scheme && ![scheme isEqualToString:&stru_2854B2770])
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

  if ([user isEqualToString:@"unit-test"])
  {
    goto LABEL_21;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if ([scheme isEqualToString:@"ftp"])
  {
    v17 = MEMORY[0x277CDC0B0];
  }

  else
  {
    if (![scheme isEqualToString:@"http"])
    {
      if ([scheme isEqualToString:@"https"])
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
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], user);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC558], *MEMORY[0x277CBED28]);
  v19 = *MEMORY[0x277CDC228];
  if (v18)
  {
    CFDictionaryAddValue(Mutable, v19, *MEMORY[0x277CDC248]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC0A8], v18);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC118], host);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF38], *MEMORY[0x277CDBF40]);
    port = [lCopy port];

    v21 = *MEMORY[0x277CDC0A0];
    if (port)
    {
      port2 = [lCopy port];
    }

    else
    {
      port2 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(MEMORY[0x277CBEBC0], "da_classicPortForScheme:", scheme)}];
    }

    CFDictionaryAddValue(Mutable, v21, port2);
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC098], [lCopy uri]);
  }

  else
  {
    CFDictionaryAddValue(Mutable, v19, *MEMORY[0x277CDC238]);
    v23 = *MEMORY[0x277CDC120];
    uRLWithoutUsername = [lCopy URLWithoutUsername];
    CFDictionaryAddValue(Mutable, v23, [uRLWithoutUsername absoluteString]);
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
      *&v30[6] = lCopy;
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

- (id)guessPasswordForURL:(id)l
{
  lCopy = l;
  v5 = [(DAKeychain *)self loadKeychainInformationsForURL:lCopy];
  if (v5)
  {
    absoluteString = v5;
    v7 = 0;
    uRLByRemovingLastPathComponent = lCopy;
  }

  else
  {
    port = [lCopy port];
    intValue = [port intValue];

    uRLByRemovingLastPathComponent = lCopy;
    if (!intValue)
    {
      goto LABEL_9;
    }

    v12 = MEMORY[0x277CBEBC0];
    scheme = [lCopy scheme];
    host = [lCopy host];
    path = [lCopy path];
    v16 = [v12 da_URLWithScheme:scheme host:host port:0 uri:path];

    user = [lCopy user];
    password = [lCopy password];
    uRLByRemovingLastPathComponent = [v16 URLWithUsername:user withPassword:password];

    absoluteString = [(DAKeychain *)self loadKeychainInformationsForURL:uRLByRemovingLastPathComponent];

    if (absoluteString)
    {
      v7 = 0;
    }

    else
    {
LABEL_9:
      v7 = 0;
      if (uRLByRemovingLastPathComponent)
      {
        while (1)
        {
          absoluteString = [v7 absoluteString];
          if (!absoluteString)
          {
            break;
          }

          absoluteString2 = [uRLByRemovingLastPathComponent absoluteString];
          absoluteString3 = [v7 absoluteString];
          v21 = [absoluteString2 isEqualToString:absoluteString3];

          if (v21)
          {
            goto LABEL_15;
          }

          v22 = [(DAKeychain *)self loadKeychainInformationsForURL:uRLByRemovingLastPathComponent];
          if (v22)
          {
            absoluteString = v22;
            break;
          }

          v23 = uRLByRemovingLastPathComponent;

          uRLByRemovingLastPathComponent = [v23 URLByRemovingLastPathComponent];

          v7 = v23;
          if (!uRLByRemovingLastPathComponent)
          {
            absoluteString = 0;
            v7 = v23;
            break;
          }
        }
      }

      else
      {
LABEL_15:
        absoluteString = 0;
      }
    }
  }

  return absoluteString;
}

@end