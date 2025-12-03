@interface DeliveryAccount
+ (DeliveryAccount)accountWithHostname:(id)hostname username:(id)username;
+ (DeliveryAccount)accountWithHostname:(id)hostname username:(id)username lookForExistingAccounts:(BOOL)accounts;
+ (DeliveryAccount)accountWithIdentifier:(id)identifier;
+ (DeliveryAccount)accountWithUniqueId:(id)id;
+ (id)carrierDeliveryAccount;
+ (id)deliveryAccounts;
+ (id)existingAccountForUniqueID:(id)d;
+ (id)existingAccountWithHostname:(id)hostname username:(id)username;
+ (id)existingAccountWithIdentifier:(id)identifier;
+ (void)_postDeliveryAccountsHaveChanged;
+ (void)addDeliveryAccount:(id)account;
+ (void)reloadDeliveryAccounts;
+ (void)removeDeliveryAccount:(id)account;
- (BOOL)hasEnoughInformationForEasySetup;
- (BOOL)hasNoReferences;
- (BOOL)shouldUseAuthentication;
- (NSString)identifier;
- (id)newDeliveryWithHeaders:(id)headers HTML:(id)l plainTextAlternative:(id)alternative other:(id)other;
- (id)newDeliveryWithMessage:(id)message;
- (unint64_t)maximumMessageBytes;
- (void)_setAccountProperties:(id)properties;
- (void)_updateAccountDescriptionWithUsername:(id)username hostname:(id)hostname;
- (void)setMaximumMessageBytes:(unint64_t)bytes;
- (void)setUsername:(id)username;
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
  hostname = [(MFAccount *)self hostname];
  username = [(MFAccount *)self username];
  if (username)
  {
    v5 = MEMORY[0x1E696AEC0];
    username2 = [(MFAccount *)self username];
    v7 = [v5 stringWithFormat:@"%@:%@", hostname, username2];
  }

  else
  {
    v7 = hostname;
  }

  return v7;
}

- (unint64_t)maximumMessageBytes
{
  v2 = [(MFAccount *)self accountPropertyForKey:@"MaxMessageBytes"];
  unsignedLongLongValue = [v2 unsignedLongLongValue];

  return unsignedLongLongValue;
}

+ (void)reloadDeliveryAccounts
{
  +[DeliveryAccount mf_lock];
  v3 = sDeliveryAccounts;
  sDeliveryAccounts = 0;

  v4 = getDeliveryAccounts();
  +[DeliveryAccount mf_unlock];

  [self _postDeliveryAccountsHaveChanged];
}

+ (void)_postDeliveryAccountsHaveChanged
{
  +[DeliveryAccount mf_lock];
  v2 = objc_alloc(MEMORY[0x1E695DEC8]);
  v5 = [v2 initWithArray:sDeliveryAccounts];
  +[DeliveryAccount mf_unlock];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = [MEMORY[0x1E696AD80] notificationWithName:@"DeliveryAccountsDidChange" object:v5 userInfo:0];
  [defaultCenter postNotification:v4];
}

+ (id)existingAccountForUniqueID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
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
        uniqueID = [v8 uniqueID];
        v10 = [uniqueID isEqualToString:dCopy];

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

+ (void)addDeliveryAccount:(id)account
{
  accountCopy = account;
  if (accountCopy)
  {
    +[DeliveryAccount mf_lock];
    v3 = getDeliveryAccounts();
    [v3 addObject:accountCopy];
    [accountCopy savePersistentAccount];
    +[DeliveryAccount mf_unlock];
  }
}

+ (void)removeDeliveryAccount:(id)account
{
  accountCopy = account;
  if (accountCopy)
  {
    v4 = [MEMORY[0x1E696AD80] notificationWithName:@"DeliveryAccountWillBeRemoved" object:accountCopy];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v10 = MEMORY[0x1E69E9820];
    v6 = defaultCenter;
    v11 = v6;
    v7 = v4;
    v12 = v7;
    mainThreadScheduler = [MEMORY[0x1E699B978] mainThreadScheduler];
    [mainThreadScheduler performBlock:&v10];

    +[DeliveryAccount mf_lock];
    v9 = getDeliveryAccounts();
    [v9 removeObject:accountCopy];
    [accountCopy removePersistentAccount];
    +[DeliveryAccount mf_unlock];
  }
}

+ (DeliveryAccount)accountWithUniqueId:(id)id
{
  v19 = *MEMORY[0x1E69E9840];
  idCopy = id;
  [self deliveryAccounts];
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
        uniqueID = [v9 uniqueID];
        v11 = [idCopy isEqualToString:uniqueID];

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

+ (DeliveryAccount)accountWithIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  [self deliveryAccounts];
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
        identifier = [v9 identifier];
        v11 = [identifier isEqualToString:identifierCopy];

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

+ (id)existingAccountWithIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
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
        identifier = [v8 identifier];
        v10 = [identifier isEqualToString:identifierCopy];

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

+ (id)existingAccountWithHostname:(id)hostname username:(id)username
{
  hostnameCopy = hostname;
  usernameCopy = username;
  v8 = hostnameCopy;
  v9 = v8;
  if (usernameCopy)
  {
    v9 = v8;
    if (([usernameCopy isEqualToString:&stru_1F273A5E0] & 1) == 0)
    {
      usernameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", v8, usernameCopy];

      v9 = usernameCopy;
    }
  }

  v11 = [self accountWithIdentifier:v9];

  return v11;
}

+ (DeliveryAccount)accountWithHostname:(id)hostname username:(id)username
{
  v4 = [self accountWithHostname:hostname username:username lookForExistingAccounts:1];

  return v4;
}

+ (DeliveryAccount)accountWithHostname:(id)hostname username:(id)username lookForExistingAccounts:(BOOL)accounts
{
  accountsCopy = accounts;
  hostnameCopy = hostname;
  usernameCopy = username;
  if (!accountsCopy || ([self existingAccountWithHostname:hostnameCopy username:usernameCopy], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    dictionary = [MEMORY[0x1E695DF20] dictionary];
    v10 = [self newAccountWithDictionary:dictionary];

    [v10 setHostname:hostnameCopy];
    [v10 setUsername:usernameCopy];
    [v10 _updateAccountDescriptionWithUsername:usernameCopy hostname:hostnameCopy];
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
      intValue = 0xFFFFFFFFLL;
    }

    else
    {
      v10 = [v5 substringToIndex:v6];
      v11 = [v5 substringFromIndex:v6 + 1];
      if ([v11 length])
      {
        intValue = [v11 intValue];
      }

      else
      {
        intValue = 0xFFFFFFFFLL;
      }

      v7 = v10;
    }

    if ([v7 length])
    {
      dictionary = [MEMORY[0x1E695DF20] dictionary];
      v9 = [self newAccountWithDictionary:dictionary];

      [v9 setHostname:v7];
      if (intValue >= 1)
      {
        [v9 setPortNumber:intValue];
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

- (id)newDeliveryWithMessage:(id)message
{
  messageCopy = message;
  v5 = [objc_alloc(-[DeliveryAccount deliveryClass](self "deliveryClass"))];
  [v5 setAccount:self];

  return v5;
}

- (id)newDeliveryWithHeaders:(id)headers HTML:(id)l plainTextAlternative:(id)alternative other:(id)other
{
  headersCopy = headers;
  lCopy = l;
  alternativeCopy = alternative;
  otherCopy = other;
  v14 = [objc_alloc(-[DeliveryAccount deliveryClass](self "deliveryClass"))];
  [v14 setAccount:self];

  return v14;
}

- (BOOL)shouldUseAuthentication
{
  username = [(MFAccount *)self username];
  v4 = [(MFAccount *)self accountPropertyForKey:@"ShouldUseAuthentication"];
  bOOLValue = [v4 BOOLValue];

  if (username)
  {
    v6 = ([username isEqualToString:&stru_1F273A5E0] ^ 1) & bOOLValue;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)setUsername:(id)username
{
  usernameCopy = username;
  -[DeliveryAccount setShouldUseAuthentication:](self, "setShouldUseAuthentication:", [usernameCopy length] != 0);
  v6.receiver = self;
  v6.super_class = DeliveryAccount;
  [(MFAccount *)&v6 setUsername:usernameCopy];
  hostname = [(MFAccount *)self hostname];
  [(DeliveryAccount *)self _updateAccountDescriptionWithUsername:usernameCopy hostname:hostname];
}

- (void)_setAccountProperties:(id)properties
{
  propertiesCopy = properties;
  v7.receiver = self;
  v7.super_class = DeliveryAccount;
  [(MFAccount *)&v7 _setAccountProperties:propertiesCopy];
  v5 = [propertiesCopy objectForKey:@"Username"];
  v6 = [propertiesCopy objectForKey:@"Hostname"];
  if (v5 | v6)
  {
    [(DeliveryAccount *)self _updateAccountDescriptionWithUsername:v5 hostname:v6];
  }
}

- (void)setMaximumMessageBytes:(unint64_t)bytes
{
  if ([(DeliveryAccount *)self maximumMessageBytes]!= bytes)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:bytes];
    [(MFAccount *)self setAccountProperty:v5 forKey:@"MaxMessageBytes"];

    [(MFAccount *)self savePersistentAccount];
  }
}

- (BOOL)hasNoReferences
{
  v17 = *MEMORY[0x1E69E9840];
  identifier = [(DeliveryAccount *)self identifier];
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

        deliveryAccount = [*(*(&v12 + 1) + 8 * i) deliveryAccount];
        identifier2 = [deliveryAccount identifier];

        LOBYTE(deliveryAccount) = [identifier2 isEqualToString:identifier];
        if (deliveryAccount)
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
  hostname = [(MFAccount *)self hostname];
  v4 = [hostname length];

  if (!v4)
  {
    return 0;
  }

  username = [(MFAccount *)self username];
  v6 = [username length] != 0;

  return v6;
}

- (void)_updateAccountDescriptionWithUsername:(id)username hostname:(id)hostname
{
  usernameCopy = username;
  hostnameCopy = hostname;
  persistentAccount = [(MFAccount *)self persistentAccount];
  if (persistentAccount)
  {
    if ([usernameCopy length])
    {
      v8 = [usernameCopy rangeOfString:@"@"];
      v9 = usernameCopy;
      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if ([hostnameCopy length])
        {
          hostnameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@@%@", usernameCopy, hostnameCopy];
LABEL_8:
          v12 = hostnameCopy;
LABEL_10:
          [persistentAccount setAccountDescription:v12];

          goto LABEL_11;
        }

LABEL_9:
        v12 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v11 = [hostnameCopy length];
      v9 = hostnameCopy;
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    hostnameCopy = [v9 copy];
    goto LABEL_8;
  }

LABEL_11:
}

@end