@interface NNMKAccount
+ (BOOL)isiCloudEmailAddress:(id)a3;
+ (id)inboxesFromAccounts:(id)a3;
- (BOOL)_isGmail;
- (BOOL)_isHotmail;
- (BOOL)_isiCloud;
- (BOOL)areStandaloneNotificationsEnabledWithCloudNotificationsEnabled:(BOOL)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)maySupportStandaloneMode;
- (BOOL)supportsCloudNotifications;
- (NNMKAccount)initWithCoder:(id)a3;
- (NSString)accountId;
- (NSString)localId;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NNMKAccount

- (NSString)localId
{
  localId = self->_localId;
  if (localId)
  {
    v4 = localId;
  }

  else
  {
    v4 = &stru_286C69F68;
  }

  return v4;
}

- (NSString)accountId
{
  accountId = self->_accountId;
  if (accountId)
  {
    v3 = accountId;
  }

  else
  {
    v3 = [objc_opt_class() generateAccountIdForAccount:self];
  }

  return v3;
}

- (NNMKAccount)initWithCoder:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v33.receiver = self;
  v33.super_class = NNMKAccount;
  v5 = [(NNMKAccount *)&v33 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyAccountId"];
    accountId = v5->_accountId;
    v5->_accountId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyLocalId"];
    localId = v5->_localId;
    v5->_localId = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyDisplayName"];
    displayName = v5->_displayName;
    v5->_displayName = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyShouldArchive"];
    v5->_shouldArchive = [v12 BOOLValue];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeySourceType"];
    v5->_sourceType = [v13 unsignedIntegerValue];

    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"kNSCodingKeyEmailAddresses"];
    emailAddresses = v5->_emailAddresses;
    v5->_emailAddresses = v17;

    v19 = MEMORY[0x277CBEB98];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"kNSCodingKeyMailboxes"];
    mailboxes = v5->_mailboxes;
    v5->_mailboxes = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyUsername"];
    username = v5->_username;
    v5->_username = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyStandaloneState"];
    v5->_standaloneState = [v26 unsignedIntegerValue];

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyDefaultEmailAddress"];
    defaultEmailAddress = v5->_defaultEmailAddress;
    v5->_defaultEmailAddress = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyTypeIdentifier"];
    typeIdentifier = v5->_typeIdentifier;
    v5->_typeIdentifier = v29;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(NNMKAccount *)self accountId];
  [v8 encodeObject:v4 forKey:@"kNSCodingKeyAccountId"];

  [v8 encodeObject:self->_localId forKey:@"kNSCodingKeyLocalId"];
  [v8 encodeObject:self->_displayName forKey:@"kNSCodingKeyDisplayName"];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldArchive];
  [v8 encodeObject:v5 forKey:@"kNSCodingKeyShouldArchive"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_sourceType];
  [v8 encodeObject:v6 forKey:@"kNSCodingKeySourceType"];

  [v8 encodeObject:self->_emailAddresses forKey:@"kNSCodingKeyEmailAddresses"];
  [v8 encodeObject:self->_mailboxes forKey:@"kNSCodingKeyMailboxes"];
  [v8 encodeObject:self->_username forKey:@"kNSCodingKeyUsername"];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_standaloneState];
  [v8 encodeObject:v7 forKey:@"kNSCodingKeyStandaloneState"];

  [v8 encodeObject:self->_defaultEmailAddress forKey:@"kNSCodingKeyDefaultEmailAddress"];
  [v8 encodeObject:self->_typeIdentifier forKey:@"kNSCodingKeyTypeIdentifier"];
}

+ (id)inboxesFromAccounts:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v11 = [v10 mailboxes];
        v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v20;
          do
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v19 + 1) + 8 * j);
              if ([v16 type] == 1)
              {
                [v4 addObject:v16];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v13);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)maySupportStandaloneMode
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(NNMKAccount *)self emailAddresses];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v12 + 1) + 8 * i) lowercaseString];
        v8 = [v7 containsString:@"@gmail.com"];

        if (v8)
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)supportsCloudNotifications
{
  if ([(NNMKAccount *)self _isHotmail])
  {
    return 1;
  }

  return [(NNMKAccount *)self _isGmail];
}

- (BOOL)areStandaloneNotificationsEnabledWithCloudNotificationsEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(NNMKAccount *)self typeIdentifier];

  if (v5)
  {
    if ([(NNMKAccount *)self _isiCloud])
    {
      return 1;
    }

    else if ([(NNMKAccount *)self _isHotmail])
    {
      return v3;
    }

    else
    {
      v6 = 0;
      if ([(NNMKAccount *)self _isGmail]&& v3)
      {
        v8 = [(NNMKAccount *)self emailAddressToken];
        v6 = v8 != 0;
      }
    }
  }

  else
  {
    v7 = __logCategories;
    if (os_log_type_enabled(__logCategories, OS_LOG_TYPE_ERROR))
    {
      [(NNMKAccount *)v7 areStandaloneNotificationsEnabledWithCloudNotificationsEnabled:?];
    }

    return 0;
  }

  return v6;
}

- (BOOL)_isiCloud
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(NNMKAccount *)self typeIdentifier];
  v4 = [v3 isEqualToString:*MEMORY[0x277CB8C68]];

  if (v4)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(NNMKAccount *)self emailAddresses];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if ([NNMKAccount isiCloudEmailAddress:*(*(&v11 + 1) + 8 * i)])
          {
            LOBYTE(v6) = 1;
            goto LABEL_13;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (BOOL)isiCloudEmailAddress:(id)a3
{
  v3 = a3;
  v4 = [v3 lowercaseString];
  if ([v4 containsString:@"@me.com"])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 lowercaseString];
    if ([v6 containsString:@"@icloud.com"])
    {
      v5 = 1;
    }

    else
    {
      v7 = [v3 lowercaseString];
      v5 = [v7 containsString:@"@mac.com"];
    }
  }

  return v5;
}

- (BOOL)_isGmail
{
  v2 = [(NNMKAccount *)self typeIdentifier];
  v3 = [v2 isEqualToString:*MEMORY[0x277CB8C40]];

  return v3;
}

- (BOOL)_isHotmail
{
  v2 = [(NNMKAccount *)self typeIdentifier];
  v3 = [v2 isEqualToString:*MEMORY[0x277CB8C50]];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  v7 = [(NNMKAccount *)self accountId];
  v8 = [v6 accountId];
  if (v7 != v8)
  {
    v3 = [(NNMKAccount *)self accountId];
    v4 = [v6 accountId];
    if (![v3 isEqualToString:v4])
    {
      v9 = 0;
LABEL_5:

      goto LABEL_6;
    }
  }

  v10 = [(NNMKAccount *)self sourceType];
  v9 = v10 == [v6 sourceType];
  if (v7 != v8)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NNMKAccount *)self accountId];
  parentAccountIdentifier = self->_parentAccountIdentifier;
  v6 = [v3 stringWithFormat:@"[Id: %@, Display Name: %@, Should Archive: %d, Email Addresses: %@, Parent Id: %@, Standalone state: %lu]", v4, self->_displayName, self->_shouldArchive, self->_emailAddresses, parentAccountIdentifier, self->_standaloneState];

  return v6;
}

- (void)initWithCoder:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_25B19F000, log, OS_LOG_TYPE_ERROR, "NNMKAccount entity is unable to decode some of the fields (possible Message.framework API changes): %{public}@", buf, 0xCu);
}

- (void)areStandaloneNotificationsEnabledWithCloudNotificationsEnabled:(void *)a1 .cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 localId];
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_25B19F000, v3, OS_LOG_TYPE_ERROR, "Missing typeIdentifier for accountId: %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end