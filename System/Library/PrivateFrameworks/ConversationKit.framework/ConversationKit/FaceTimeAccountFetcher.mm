@interface FaceTimeAccountFetcher
- (BOOL)_aliasIsDevicePhoneNumber:(id)number;
- (BOOL)_aliasIsTemporaryDeviceAlias:(id)alias;
- (BOOL)_shouldFilterOutAlias:(id)alias onAccount:(id)account;
- (IDSPhoneSubscriptionSelector)phoneSubscriptionSelector;
- (NSArray)accounts;
- (NSArray)validCallerIDs;
- (TUHandle)defaultSelectedCallerID;
- (id)_aliasesForAccount:(id)account;
- (id)_temporaryDeviceAliases;
- (id)useableAliasesForAccounts:(id)accounts;
@end

@implementation FaceTimeAccountFetcher

- (TUHandle)defaultSelectedCallerID
{
  v13 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69A5B50] = [MEMORY[0x1E69A5B50] sharedController];
  [mEMORY[0x1E69A5B50] blockUntilConnected];

  facetimeService = [MEMORY[0x1E69A5C90] facetimeService];
  v5 = IMPreferredAccountForService();

  v6 = ConversationKitLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_1BBC58000, v6, OS_LOG_TYPE_DEFAULT, "[FaceTimeAccountFetcher] Found preferredAccount %@", &v11, 0xCu);
  }

  if (v5)
  {
    v7 = [(FaceTimeAccountFetcher *)self _aliasesForAccount:v5];
    v8 = ConversationKitLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_1BBC58000, v8, OS_LOG_TYPE_DEFAULT, "[FaceTimeAccountFetcher] Pulled out preferred aliases %@", &v11, 0xCu);
    }

    firstObject = [v7 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (NSArray)validCallerIDs
{
  accounts = [(FaceTimeAccountFetcher *)self accounts];
  v4 = [(FaceTimeAccountFetcher *)self useableAliasesForAccounts:accounts];

  return v4;
}

- (NSArray)accounts
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = ConversationKitLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    facetimeService = [MEMORY[0x1E69A5C90] facetimeService];
    *buf = 138412290;
    v23 = facetimeService;
    _os_log_impl(&dword_1BBC58000, v2, OS_LOG_TYPE_DEFAULT, "[FaceTimeAccountFetcher] Reloading the account list for service: %@", buf, 0xCu);
  }

  mEMORY[0x1E69A5A80] = [MEMORY[0x1E69A5A80] sharedInstance];
  facetimeService2 = [MEMORY[0x1E69A5C90] facetimeService];
  v6 = [mEMORY[0x1E69A5A80] accountsForService:facetimeService2];

  if ([v6 count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = ConversationKitLog();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v23 = v12;
            _os_log_impl(&dword_1BBC58000, v13, OS_LOG_TYPE_DEFAULT, "[FaceTimeAccountFetcher] Found account: %@", buf, 0xCu);
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    v14 = [v7 copy];
  }

  else
  {
    v15 = ConversationKitLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1BBC58000, v15, OS_LOG_TYPE_ERROR, "[FaceTimeAccountFetcher] Could not find any accounts to use", buf, 2u);
    }

    v14 = MEMORY[0x1E695E0F0];
  }

  return v14;
}

- (id)useableAliasesForAccounts:(id)accounts
{
  v18 = *MEMORY[0x1E69E9840];
  accountsCopy = accounts;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = accountsCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(FaceTimeAccountFetcher *)self _aliasesForAccount:*(*(&v13 + 1) + 8 * i), v13];
        [v5 addObjectsFromArray:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_aliasesForAccount:(id)account
{
  v24 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v5 = accountCopy;
  if (!accountCopy)
  {
    goto LABEL_19;
  }

  aliases = [accountCopy aliases];
  v7 = _IDSCopyOrderedAliasStrings();

  if (!v7 || ![v7 count])
  {

LABEL_19:
    v8 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    goto LABEL_20;
  }

  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        if (![(FaceTimeAccountFetcher *)self _shouldFilterOutAlias:v14 onAccount:v5, v19])
        {
          v15 = objc_alloc(MEMORY[0x1E69D8C00]);
          if ([(FaceTimeAccountFetcher *)self _aliasIsDevicePhoneNumber:v14])
          {
            v16 = 2;
          }

          else
          {
            v16 = 3;
          }

          v17 = [v15 initWithType:v16 value:v14];
          [v8 addObject:v17];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  if (!v8)
  {
    goto LABEL_19;
  }

LABEL_20:

  return v8;
}

- (BOOL)_shouldFilterOutAlias:(id)alias onAccount:(id)account
{
  aliasCopy = alias;
  v10 = [v7 typeForAlias:aliasCopy] == 2 && objc_msgSend(v7, "accountType") != 2 && (objc_msgSend(MEMORY[0x1E699BE70], "sharedInstance"), v8 = v7 = account;

  return v10;
}

- (BOOL)_aliasIsDevicePhoneNumber:(id)number
{
  v27 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  v4 = numberCopy;
  if (numberCopy && [numberCopy _appearsToBePhoneNumber])
  {
    v5 = v4;
    v6 = _IDSCopyMyPhoneNumbers();
    if ([v6 count])
    {
      active = CPPhoneNumberCopyActiveCountryCode();
      v21 = v5;
      v8 = CFPhoneNumberCreate();
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v20 = v6;
      v9 = v6;
      v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v23;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v23 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = CFPhoneNumberCreate();
            v15 = v14;
            if (v8 && v14)
            {
              v16 = CFEqual(v8, v14);
              CFRelease(v15);
              if (v16)
              {

                v18 = 1;
                goto LABEL_21;
              }
            }

            else if (v14)
            {
              CFRelease(v14);
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v11);
      }

      v18 = 0;
      v17 = 0;
      if (v8)
      {
LABEL_21:
        CFRelease(v8);
        v17 = v18;
      }

      if (active)
      {
        CFRelease(active);
      }

      v6 = v20;
      v5 = v21;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)_aliasIsTemporaryDeviceAlias:(id)alias
{
  v28 = *MEMORY[0x1E69E9840];
  aliasCopy = alias;
  v5 = aliasCopy;
  if (aliasCopy && [aliasCopy _appearsToBePhoneNumber])
  {
    v6 = v5;
    _temporaryDeviceAliases = [(FaceTimeAccountFetcher *)self _temporaryDeviceAliases];
    if ([_temporaryDeviceAliases count])
    {
      active = CPPhoneNumberCopyActiveCountryCode();
      v22 = v6;
      v9 = CFPhoneNumberCreate();
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v21 = _temporaryDeviceAliases;
      v10 = _temporaryDeviceAliases;
      v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v24;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v24 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [*(*(&v23 + 1) + 8 * i) URI];
            [v15 unprefixedURI];
            v16 = CFPhoneNumberCreate();

            if (v9 && v16)
            {
              v17 = CFEqual(v9, v16);
              CFRelease(v16);
              if (v17)
              {

                v19 = 1;
                goto LABEL_21;
              }
            }

            else if (v16)
            {
              CFRelease(v16);
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v12);
      }

      v19 = 0;
      v18 = 0;
      if (v9)
      {
LABEL_21:
        CFRelease(v9);
        v18 = v19;
      }

      if (active)
      {
        CFRelease(active);
      }

      _temporaryDeviceAliases = v21;
      v6 = v22;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)_temporaryDeviceAliases
{
  v10 = *MEMORY[0x1E69E9840];
  phoneSubscriptionSelector = [(FaceTimeAccountFetcher *)self phoneSubscriptionSelector];
  v7 = 0;
  v3 = [phoneSubscriptionSelector unselectedTemporaryPhoneAliasesWithError:&v7];
  v4 = v7;

  if (v4)
  {
    v5 = ConversationKitLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v4;
      _os_log_impl(&dword_1BBC58000, v5, OS_LOG_TYPE_DEFAULT, "[FaceTimeAccountFetcher] Error fetching temporary aliases %@", buf, 0xCu);
    }
  }

  return v3;
}

- (IDSPhoneSubscriptionSelector)phoneSubscriptionSelector
{
  phoneSubscriptionSelector = self->_phoneSubscriptionSelector;
  if (!phoneSubscriptionSelector)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69A4898]);
    v5 = self->_phoneSubscriptionSelector;
    self->_phoneSubscriptionSelector = v4;

    phoneSubscriptionSelector = self->_phoneSubscriptionSelector;
  }

  return phoneSubscriptionSelector;
}

@end