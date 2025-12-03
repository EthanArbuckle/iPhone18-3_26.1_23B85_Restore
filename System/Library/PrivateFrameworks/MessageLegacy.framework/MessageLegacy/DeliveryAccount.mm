@interface DeliveryAccount
+ (id)accountWithHostname:(id)hostname username:(id)username lookForExistingAccounts:(BOOL)accounts;
+ (id)accountWithIdentifier:(id)identifier;
+ (id)accountWithUniqueId:(id)id;
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
- (id)identifier;
- (id)newDeliveryWithHeaders:(id)headers HTML:(id)l plainTextAlternative:(id)alternative other:(id)other charsets:(id)charsets;
- (id)newDeliveryWithMessage:(id)message;
- (unint64_t)maximumMessageBytes;
- (void)_setAccountProperties:(id)properties;
- (void)_updateAccountDescriptionWithUsername:(id)username hostname:(id)hostname;
- (void)setMaximumMessageBytes:(unint64_t)bytes;
- (void)setUsername:(id)username;
@end

@implementation DeliveryAccount

+ (void)_postDeliveryAccountsHaveChanged
{
  +[DeliveryAccount mf_lock];
  v2 = objc_alloc(MEMORY[0x277CBEA60]);
  v4 = [v2 initWithArray:_deliveryAccounts];
  +[DeliveryAccount mf_unlock];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotification:{objc_msgSend(MEMORY[0x277CCAB88], "notificationWithName:object:userInfo:", @"DeliveryAccountsDidChange", v4, 0)}];
}

+ (void)reloadDeliveryAccounts
{
  +[DeliveryAccount mf_lock];

  _deliveryAccounts = 0;
  getDeliveryAccounts();
  +[DeliveryAccount mf_unlock];

  [self _postDeliveryAccountsHaveChanged];
}

+ (id)existingAccountForUniqueID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  +[DeliveryAccount mf_lock];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = _deliveryAccounts;
  v5 = [_deliveryAccounts countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v12 + 1) + 8 * v8);
      if ([objc_msgSend(v9 "uniqueId")])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  +[DeliveryAccount mf_unlock];
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (id)deliveryAccounts
{
  +[DeliveryAccount mf_lock];
  v2 = [getDeliveryAccounts() copy];
  +[DeliveryAccount mf_unlock];
  return v2;
}

+ (void)addDeliveryAccount:(id)account
{
  if (account)
  {
    +[DeliveryAccount mf_lock];
    [getDeliveryAccounts() addObject:account];
    [account savePersistentAccount];

    +[DeliveryAccount mf_unlock];
  }
}

+ (void)removeDeliveryAccount:(id)account
{
  if (account)
  {
    v3 = [MEMORY[0x277CCAB88] notificationWithName:@"DeliveryAccountWillBeRemoved" object:account];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      [defaultCenter postNotification:v3];
    }

    else
    {
      [defaultCenter performSelectorOnMainThread:sel_postNotification_ withObject:v3 waitUntilDone:0];
    }

    accountCopy = account;
    +[DeliveryAccount mf_lock];
    [getDeliveryAccounts() removeObject:account];
    [account removePersistentAccount];
    +[DeliveryAccount mf_unlock];
  }
}

+ (id)accountWithUniqueId:(id)id
{
  v17 = *MEMORY[0x277D85DE8];
  deliveryAccounts = [self deliveryAccounts];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [deliveryAccounts countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(deliveryAccounts);
      }

      v9 = *(*(&v12 + 1) + 8 * v8);
      if ([id isEqualToString:{objc_msgSend(v9, "uniqueId")}])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [deliveryAccounts countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  result = v9;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)accountWithIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  deliveryAccounts = [self deliveryAccounts];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [deliveryAccounts countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(deliveryAccounts);
      }

      v9 = *(*(&v12 + 1) + 8 * v8);
      if ([objc_msgSend(v9 "identifier")])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [deliveryAccounts countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  result = v9;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)existingAccountWithIdentifier:(id)identifier
{
  v17 = *MEMORY[0x277D85DE8];
  +[DeliveryAccount mf_lock];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = _deliveryAccounts;
  v5 = [_deliveryAccounts countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v12 + 1) + 8 * v8);
      if ([objc_msgSend(v9 "identifier")])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

  +[DeliveryAccount mf_unlock];
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (id)existingAccountWithHostname:(id)hostname username:(id)username
{
  if (username && ([username isEqualToString:&stru_2869ED3E0] & 1) == 0)
  {
    hostname = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", hostname, username];
  }

  return [self accountWithIdentifier:hostname];
}

+ (id)accountWithHostname:(id)hostname username:(id)username lookForExistingAccounts:(BOOL)accounts
{
  if (!accounts || (v8 = [self existingAccountWithHostname:hostname username:username]) == 0)
  {
    v8 = [self newAccountWithDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionary")}];
    [v8 setHostname:hostname];
    [v8 setUsername:username];
    [v8 _updateAccountDescriptionWithUsername:username hostname:hostname];
    [DeliveryAccount addDeliveryAccount:v8];
  }

  return v8;
}

- (id)newDeliveryWithMessage:(id)message
{
  v4 = [objc_alloc(-[DeliveryAccount deliveryClass](self "deliveryClass"))];
  [v4 setAccount:self];
  return v4;
}

- (id)newDeliveryWithHeaders:(id)headers HTML:(id)l plainTextAlternative:(id)alternative other:(id)other charsets:(id)charsets
{
  v8 = [objc_alloc(-[DeliveryAccount deliveryClass](self "deliveryClass"))];
  [v8 setAccount:self];
  return v8;
}

- (id)identifier
{
  hostname = [(MFAccount *)self hostname];
  if ([(MFAccount *)self username])
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", hostname, -[MFAccount username](self, "username")];
  }

  else
  {
    return hostname;
  }
}

- (BOOL)shouldUseAuthentication
{
  username = [(MFAccount *)self username];
  v4 = [-[MFAccount accountPropertyForKey:](self accountPropertyForKey:{@"ShouldUseAuthentication", "BOOLValue"}];
  if (username)
  {
    return ![(NSString *)username isEqualToString:&stru_2869ED3E0]& v4;
  }

  else
  {
    return 0;
  }
}

- (void)setUsername:(id)username
{
  -[DeliveryAccount setShouldUseAuthentication:](self, "setShouldUseAuthentication:", [username length] != 0);
  v5.receiver = self;
  v5.super_class = DeliveryAccount;
  [(MFAccount *)&v5 setUsername:username];
  [(DeliveryAccount *)self _updateAccountDescriptionWithUsername:username hostname:[(MFAccount *)self hostname]];
}

- (void)_setAccountProperties:(id)properties
{
  v7.receiver = self;
  v7.super_class = DeliveryAccount;
  [(MFAccount *)&v7 _setAccountProperties:?];
  v5 = [properties objectForKey:@"Username"];
  v6 = [properties objectForKey:@"Hostname"];
  if (v5 | v6)
  {
    [(DeliveryAccount *)self _updateAccountDescriptionWithUsername:v5 hostname:v6];
  }
}

- (unint64_t)maximumMessageBytes
{
  v2 = [(MFAccount *)self accountPropertyForKey:@"MaxMessageBytes"];

  return [v2 unsignedLongLongValue];
}

- (void)setMaximumMessageBytes:(unint64_t)bytes
{
  if ([(DeliveryAccount *)self maximumMessageBytes]!= bytes)
  {
    -[MFAccount setAccountProperty:forKey:](self, "setAccountProperty:forKey:", [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:bytes], @"MaxMessageBytes");

    [(MFAccount *)self savePersistentAccount];
  }
}

- (BOOL)hasNoReferences
{
  v15 = *MEMORY[0x277D85DE8];
  identifier = [(DeliveryAccount *)self identifier];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = +[MailAccount mailAccounts];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([objc_msgSend(objc_msgSend(*(*(&v10 + 1) + 8 * v7) "deliveryAccount")])
        {
          result = 0;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  result = 1;
LABEL_11:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)hasEnoughInformationForEasySetup
{
  v3 = [(NSString *)[(MFAccount *)self hostname] length];
  if (v3)
  {
    LOBYTE(v3) = [(NSString *)[(MFAccount *)self username] length]!= 0;
  }

  return v3;
}

- (void)_updateAccountDescriptionWithUsername:(id)username hostname:(id)hostname
{
  persistentAccount = [(MFAccount *)self persistentAccount];
  if (!persistentAccount)
  {
    return;
  }

  v7 = persistentAccount;
  if (![username length])
  {
    if (![hostname length])
    {
      goto LABEL_12;
    }

    usernameCopy = hostname;
LABEL_10:
    hostname = [usernameCopy copy];
    goto LABEL_11;
  }

  if ([username rangeOfString:@"@"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    usernameCopy = username;
    goto LABEL_10;
  }

  if (![hostname length])
  {
LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  hostname = [MEMORY[0x277CCACA8] stringWithFormat:@"%@@%@", username, hostname];
LABEL_11:
  v10 = hostname;
LABEL_13:

  [(ACAccount *)v7 setAccountDescription:v10];
}

@end