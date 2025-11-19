@interface DeliveryAccount
+ (id)accountWithHostname:(id)a3 username:(id)a4 lookForExistingAccounts:(BOOL)a5;
+ (id)accountWithIdentifier:(id)a3;
+ (id)accountWithUniqueId:(id)a3;
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
- (id)identifier;
- (id)newDeliveryWithHeaders:(id)a3 HTML:(id)a4 plainTextAlternative:(id)a5 other:(id)a6 charsets:(id)a7;
- (id)newDeliveryWithMessage:(id)a3;
- (unint64_t)maximumMessageBytes;
- (void)_setAccountProperties:(id)a3;
- (void)_updateAccountDescriptionWithUsername:(id)a3 hostname:(id)a4;
- (void)setMaximumMessageBytes:(unint64_t)a3;
- (void)setUsername:(id)a3;
@end

@implementation DeliveryAccount

+ (void)_postDeliveryAccountsHaveChanged
{
  +[DeliveryAccount mf_lock];
  v2 = objc_alloc(MEMORY[0x277CBEA60]);
  v4 = [v2 initWithArray:_deliveryAccounts];
  +[DeliveryAccount mf_unlock];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotification:{objc_msgSend(MEMORY[0x277CCAB88], "notificationWithName:object:userInfo:", @"DeliveryAccountsDidChange", v4, 0)}];
}

+ (void)reloadDeliveryAccounts
{
  +[DeliveryAccount mf_lock];

  _deliveryAccounts = 0;
  getDeliveryAccounts();
  +[DeliveryAccount mf_unlock];

  [a1 _postDeliveryAccountsHaveChanged];
}

+ (id)existingAccountForUniqueID:(id)a3
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

+ (void)addDeliveryAccount:(id)a3
{
  if (a3)
  {
    +[DeliveryAccount mf_lock];
    [getDeliveryAccounts() addObject:a3];
    [a3 savePersistentAccount];

    +[DeliveryAccount mf_unlock];
  }
}

+ (void)removeDeliveryAccount:(id)a3
{
  if (a3)
  {
    v3 = [MEMORY[0x277CCAB88] notificationWithName:@"DeliveryAccountWillBeRemoved" object:a3];
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      [v4 postNotification:v3];
    }

    else
    {
      [v4 performSelectorOnMainThread:sel_postNotification_ withObject:v3 waitUntilDone:0];
    }

    v5 = a3;
    +[DeliveryAccount mf_lock];
    [getDeliveryAccounts() removeObject:a3];
    [a3 removePersistentAccount];
    +[DeliveryAccount mf_unlock];
  }
}

+ (id)accountWithUniqueId:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [a1 deliveryAccounts];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
      if ([a3 isEqualToString:{objc_msgSend(v9, "uniqueId")}])
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

  result = v9;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)accountWithIdentifier:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = [a1 deliveryAccounts];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

  result = v9;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

+ (id)existingAccountWithIdentifier:(id)a3
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

+ (id)existingAccountWithHostname:(id)a3 username:(id)a4
{
  if (a4 && ([a4 isEqualToString:&stru_2869ED3E0] & 1) == 0)
  {
    a3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", a3, a4];
  }

  return [a1 accountWithIdentifier:a3];
}

+ (id)accountWithHostname:(id)a3 username:(id)a4 lookForExistingAccounts:(BOOL)a5
{
  if (!a5 || (v8 = [a1 existingAccountWithHostname:a3 username:a4]) == 0)
  {
    v8 = [a1 newAccountWithDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionary")}];
    [v8 setHostname:a3];
    [v8 setUsername:a4];
    [v8 _updateAccountDescriptionWithUsername:a4 hostname:a3];
    [DeliveryAccount addDeliveryAccount:v8];
  }

  return v8;
}

- (id)newDeliveryWithMessage:(id)a3
{
  v4 = [objc_alloc(-[DeliveryAccount deliveryClass](self "deliveryClass"))];
  [v4 setAccount:self];
  return v4;
}

- (id)newDeliveryWithHeaders:(id)a3 HTML:(id)a4 plainTextAlternative:(id)a5 other:(id)a6 charsets:(id)a7
{
  v8 = [objc_alloc(-[DeliveryAccount deliveryClass](self "deliveryClass"))];
  [v8 setAccount:self];
  return v8;
}

- (id)identifier
{
  v3 = [(MFAccount *)self hostname];
  if ([(MFAccount *)self username])
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v3, -[MFAccount username](self, "username")];
  }

  else
  {
    return v3;
  }
}

- (BOOL)shouldUseAuthentication
{
  v3 = [(MFAccount *)self username];
  v4 = [-[MFAccount accountPropertyForKey:](self accountPropertyForKey:{@"ShouldUseAuthentication", "BOOLValue"}];
  if (v3)
  {
    return ![(NSString *)v3 isEqualToString:&stru_2869ED3E0]& v4;
  }

  else
  {
    return 0;
  }
}

- (void)setUsername:(id)a3
{
  -[DeliveryAccount setShouldUseAuthentication:](self, "setShouldUseAuthentication:", [a3 length] != 0);
  v5.receiver = self;
  v5.super_class = DeliveryAccount;
  [(MFAccount *)&v5 setUsername:a3];
  [(DeliveryAccount *)self _updateAccountDescriptionWithUsername:a3 hostname:[(MFAccount *)self hostname]];
}

- (void)_setAccountProperties:(id)a3
{
  v7.receiver = self;
  v7.super_class = DeliveryAccount;
  [(MFAccount *)&v7 _setAccountProperties:?];
  v5 = [a3 objectForKey:@"Username"];
  v6 = [a3 objectForKey:@"Hostname"];
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

- (void)setMaximumMessageBytes:(unint64_t)a3
{
  if ([(DeliveryAccount *)self maximumMessageBytes]!= a3)
  {
    -[MFAccount setAccountProperty:forKey:](self, "setAccountProperty:forKey:", [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3], @"MaxMessageBytes");

    [(MFAccount *)self savePersistentAccount];
  }
}

- (BOOL)hasNoReferences
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [(DeliveryAccount *)self identifier];
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

- (void)_updateAccountDescriptionWithUsername:(id)a3 hostname:(id)a4
{
  v6 = [(MFAccount *)self persistentAccount];
  if (!v6)
  {
    return;
  }

  v7 = v6;
  if (![a3 length])
  {
    if (![a4 length])
    {
      goto LABEL_12;
    }

    v9 = a4;
LABEL_10:
    v8 = [v9 copy];
    goto LABEL_11;
  }

  if ([a3 rangeOfString:@"@"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = a3;
    goto LABEL_10;
  }

  if (![a4 length])
  {
LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@@%@", a3, a4];
LABEL_11:
  v10 = v8;
LABEL_13:

  [(ACAccount *)v7 setAccountDescription:v10];
}

@end