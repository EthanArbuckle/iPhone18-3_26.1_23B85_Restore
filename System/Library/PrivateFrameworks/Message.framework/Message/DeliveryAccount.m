@interface DeliveryAccount
+ (DeliveryAccount)accountWithHostname:(id)a3 username:(id)a4;
+ (DeliveryAccount)accountWithHostname:(id)a3 username:(id)a4 lookForExistingAccounts:(BOOL)a5;
+ (DeliveryAccount)accountWithIdentifier:(id)a3;
+ (DeliveryAccount)accountWithUniqueId:(id)a3;
+ (id)carrierDeliveryAccount;
+ (id)deliveryAccounts;
+ (id)existingAccountForUniqueID:(id)a3;
+ (id)existingAccountWithHostname:(id)a3 username:(id)a4;
+ (id)existingAccountWithIdentifier:(id)a3;
+ (void)_postDeliveryAccountsHaveChanged;
+ (void)addDeliveryAccount:(id)a3;
+ (void)reloadDeliveryAccounts;
+ (void)removeDeliveryAccount:(id)a3;
- (BOOL)hasEnoughInformationForEasySetup;
- (BOOL)hasNoReferences;
- (BOOL)shouldUseAuthentication;
- (NSString)identifier;
- (id)newDeliveryWithHeaders:(id)a3 HTML:(id)a4 plainTextAlternative:(id)a5 other:(id)a6;
- (id)newDeliveryWithMessage:(id)a3;
- (unint64_t)maximumMessageBytes;
- (void)_setAccountProperties:(id)a3;
- (void)_updateAccountDescriptionWithUsername:(id)a3 hostname:(id)a4;
- (void)setMaximumMessageBytes:(unint64_t)a3;
- (void)setUsername:(id)a3;
@end

@implementation DeliveryAccount

+ (id)deliveryAccounts
{
  +[DeliveryAccount mf_lock];
  v2 = getDeliveryAccounts();
  v3 = [v2 copy];

  +[DeliveryAccount mf_unlock];

  return v3;
}

- (NSString)identifier
{
  v3 = [(MFAccount *)self hostname];
  v4 = [(MFAccount *)self username];
  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [(MFAccount *)self username];
    v7 = [v5 stringWithFormat:@"%@:%@", v3, v6];
  }

  else
  {
    v7 = v3;
  }

  return v7;
}

- (unint64_t)maximumMessageBytes
{
  v2 = [(MFAccount *)self accountPropertyForKey:@"MaxMessageBytes"];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

+ (void)reloadDeliveryAccounts
{
  +[DeliveryAccount mf_lock];
  v3 = sDeliveryAccounts;
  sDeliveryAccounts = 0;

  v4 = getDeliveryAccounts();
  +[DeliveryAccount mf_unlock];

  [a1 _postDeliveryAccountsHaveChanged];
}

+ (void)_postDeliveryAccountsHaveChanged
{
  +[DeliveryAccount mf_lock];
  v2 = objc_alloc(MEMORY[0x1E695DEC8]);
  v5 = [v2 initWithArray:sDeliveryAccounts];
  +[DeliveryAccount mf_unlock];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = [MEMORY[0x1E696AD80] notificationWithName:@"DeliveryAccountsDidChange" object:v5 userInfo:0];
  [v3 postNotification:v4];
}

+ (id)existingAccountForUniqueID:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  +[DeliveryAccount mf_lock];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = sDeliveryAccounts;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 uniqueID];
        v10 = [v9 isEqualToString:v3];

        if (v10)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  +[DeliveryAccount mf_unlock];
  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (void)addDeliveryAccount:(id)a3
{
  v4 = a3;
  if (v4)
  {
    +[DeliveryAccount mf_lock];
    v3 = getDeliveryAccounts();
    [v3 addObject:v4];
    [v4 savePersistentAccount];
    +[DeliveryAccount mf_unlock];
  }
}

+ (void)removeDeliveryAccount:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x1E696AD80] notificationWithName:@"DeliveryAccountWillBeRemoved" object:v3];
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = MEMORY[0x1E69E9820];
    v6 = v5;
    v11 = v6;
    v7 = v4;
    v12 = v7;
    v8 = [MEMORY[0x1E699B978] mainThreadScheduler];
    [v8 performBlock:&v10];

    +[DeliveryAccount mf_lock];
    v9 = getDeliveryAccounts();
    [v9 removeObject:v3];
    [v3 removePersistentAccount];
    +[DeliveryAccount mf_unlock];
  }
}

+ (DeliveryAccount)accountWithUniqueId:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [a1 deliveryAccounts];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v5 = v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 uniqueID];
        v11 = [v4 isEqualToString:v10];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (DeliveryAccount)accountWithIdentifier:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [a1 deliveryAccounts];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v5 = v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)existingAccountWithIdentifier:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  +[DeliveryAccount mf_lock];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = sDeliveryAccounts;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 identifier];
        v10 = [v9 isEqualToString:v3];

        if (v10)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  +[DeliveryAccount mf_unlock];
  v11 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)existingAccountWithHostname:(id)a3 username:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v8;
  if (v7)
  {
    v9 = v8;
    if (([v7 isEqualToString:&stru_1F273A5E0] & 1) == 0)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", v8, v7];

      v9 = v10;
    }
  }

  v11 = [a1 accountWithIdentifier:v9];

  return v11;
}

+ (DeliveryAccount)accountWithHostname:(id)a3 username:(id)a4
{
  v4 = [a1 accountWithHostname:a3 username:a4 lookForExistingAccounts:1];

  return v4;
}

+ (DeliveryAccount)accountWithHostname:(id)a3 username:(id)a4 lookForExistingAccounts:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (!v5 || ([a1 existingAccountWithHostname:v8 username:v9], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v11 = [MEMORY[0x1E695DF20] dictionary];
    v10 = [a1 newAccountWithDictionary:v11];

    [v10 setHostname:v8];
    [v10 setUsername:v9];
    [v10 _updateAccountDescriptionWithUsername:v9 hostname:v8];
    [DeliveryAccount addDeliveryAccount:v10];
  }

  return v10;
}

+ (id)carrierDeliveryAccount
{
  v3 = +[MFNetworkController sharedInstance];
  v4 = [v3 copyCarrierBundleValue:@"SMTPServers"];

  if ([v4 count])
  {
    v5 = [v4 objectAtIndex:0];
    v6 = [v5 rangeOfString:@":"];
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = v5;
      v8 = 0xFFFFFFFFLL;
    }

    else
    {
      v10 = [v5 substringToIndex:v6];
      v11 = [v5 substringFromIndex:v6 + 1];
      if ([v11 length])
      {
        v8 = [v11 intValue];
      }

      else
      {
        v8 = 0xFFFFFFFFLL;
      }

      v7 = v10;
    }

    if ([v7 length])
    {
      v12 = [MEMORY[0x1E695DF20] dictionary];
      v9 = [a1 newAccountWithDictionary:v12];

      [v9 setHostname:v7];
      if (v8 >= 1)
      {
        [v9 setPortNumber:v8];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)newDeliveryWithMessage:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(-[DeliveryAccount deliveryClass](self "deliveryClass"))];
  [v5 setAccount:self];

  return v5;
}

- (id)newDeliveryWithHeaders:(id)a3 HTML:(id)a4 plainTextAlternative:(id)a5 other:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [objc_alloc(-[DeliveryAccount deliveryClass](self "deliveryClass"))];
  [v14 setAccount:self];

  return v14;
}

- (BOOL)shouldUseAuthentication
{
  v3 = [(MFAccount *)self username];
  v4 = [(MFAccount *)self accountPropertyForKey:@"ShouldUseAuthentication"];
  v5 = [v4 BOOLValue];

  if (v3)
  {
    v6 = ([v3 isEqualToString:&stru_1F273A5E0] ^ 1) & v5;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)setUsername:(id)a3
{
  v4 = a3;
  -[DeliveryAccount setShouldUseAuthentication:](self, "setShouldUseAuthentication:", [v4 length] != 0);
  v6.receiver = self;
  v6.super_class = DeliveryAccount;
  [(MFAccount *)&v6 setUsername:v4];
  v5 = [(MFAccount *)self hostname];
  [(DeliveryAccount *)self _updateAccountDescriptionWithUsername:v4 hostname:v5];
}

- (void)_setAccountProperties:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = DeliveryAccount;
  [(MFAccount *)&v7 _setAccountProperties:v4];
  v5 = [v4 objectForKey:@"Username"];
  v6 = [v4 objectForKey:@"Hostname"];
  if (v5 | v6)
  {
    [(DeliveryAccount *)self _updateAccountDescriptionWithUsername:v5 hostname:v6];
  }
}

- (void)setMaximumMessageBytes:(unint64_t)a3
{
  if ([(DeliveryAccount *)self maximumMessageBytes]!= a3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
    [(MFAccount *)self setAccountProperty:v5 forKey:@"MaxMessageBytes"];

    [(MFAccount *)self savePersistentAccount];
  }
}

- (BOOL)hasNoReferences
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [(DeliveryAccount *)self identifier];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = +[MailAccount mailAccounts];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(*(&v12 + 1) + 8 * i) deliveryAccount];
        v8 = [v7 identifier];

        LOBYTE(v7) = [v8 isEqualToString:v2];
        if (v7)
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)hasEnoughInformationForEasySetup
{
  v3 = [(MFAccount *)self hostname];
  v4 = [v3 length];

  if (!v4)
  {
    return 0;
  }

  v5 = [(MFAccount *)self username];
  v6 = [v5 length] != 0;

  return v6;
}

- (void)_updateAccountDescriptionWithUsername:(id)a3 hostname:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [(MFAccount *)self persistentAccount];
  if (v7)
  {
    if ([v13 length])
    {
      v8 = [v13 rangeOfString:@"@"];
      v9 = v13;
      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([v6 length])
        {
          v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@@%@", v13, v6];
LABEL_8:
          v12 = v10;
LABEL_10:
          [v7 setAccountDescription:v12];

          goto LABEL_11;
        }

LABEL_9:
        v12 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v11 = [v6 length];
      v9 = v6;
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v10 = [v9 copy];
    goto LABEL_8;
  }

LABEL_11:
}

@end