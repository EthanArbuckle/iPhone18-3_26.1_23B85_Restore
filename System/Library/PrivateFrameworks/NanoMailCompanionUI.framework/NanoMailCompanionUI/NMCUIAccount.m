@interface NMCUIAccount
- (BOOL)_isIcloud;
- (BOOL)directPushNotificationsSupported;
- (BOOL)enabled;
- (NMCUIAccount)initWithACAccount:(id)a3;
- (NMCUIAccount)initWithNNMKAccount:(id)a3;
- (NSString)accountTypeIdentifier;
- (NSString)displayName;
- (NSString)emailAddress;
- (NSString)identifier;
- (NSString)username;
- (id)rootAccount:(id)a3;
@end

@implementation NMCUIAccount

- (NMCUIAccount)initWithACAccount:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NMCUIAccount;
  v5 = [(NMCUIAccount *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(NMCUIAccount *)v5 setAcAccount:v4];
  }

  return v6;
}

- (NMCUIAccount)initWithNNMKAccount:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = NMCUIAccount;
  v5 = [(NMCUIAccount *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(NMCUIAccount *)v5 setNnmkAccount:v4];
  }

  return v6;
}

- (NSString)displayName
{
  if (self->_acAccount)
  {
    v2 = [(NMCUIAccount *)self rootAccount:?];
    v3 = [v2 accountDescription];
  }

  else
  {
    nnmkAccount = self->_nnmkAccount;
    if (nnmkAccount)
    {
      v3 = [(NNMKAccount *)nnmkAccount displayName];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (NSString)identifier
{
  acAccount = self->_acAccount;
  if (acAccount)
  {
    nnmkAccount = [(ACAccount *)acAccount identifier];
  }

  else
  {
    nnmkAccount = self->_nnmkAccount;
    if (nnmkAccount)
    {
      nnmkAccount = [nnmkAccount accountId];
    }
  }

  return nnmkAccount;
}

- (NSString)accountTypeIdentifier
{
  acAccount = self->_acAccount;
  if (acAccount)
  {
    v4 = [(ACAccount *)acAccount accountType];
    v5 = [v4 identifier];
  }

  else
  {
    nnmkAccount = self->_nnmkAccount;
    if (nnmkAccount)
    {
      v5 = [(NNMKAccount *)nnmkAccount typeIdentifier];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (NSString)emailAddress
{
  acAccount = self->_acAccount;
  if (acAccount)
  {
    v4 = [(ACAccount *)acAccount username];
  }

  else
  {
    nnmkAccount = self->_nnmkAccount;
    if (nnmkAccount)
    {
      v6 = [(NNMKAccount *)nnmkAccount defaultEmailAddress];
      v7 = v6;
      if (v6)
      {
        v4 = v6;
      }

      else
      {
        v8 = [(NNMKAccount *)self->_nnmkAccount emailAddresses];
        v4 = [v8 firstObject];
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (NSString)username
{
  acAccount = self->_acAccount;
  if (acAccount || (acAccount = self->_nnmkAccount) != 0)
  {
    acAccount = [acAccount username];
    v2 = vars8;
  }

  return acAccount;
}

- (BOOL)enabled
{
  acAccount = self->_acAccount;
  if (acAccount)
  {
    v4 = *MEMORY[0x277CB89C8];

    LOBYTE(nnmkAccount) = [(ACAccount *)acAccount isEnabledForDataclass:v4];
  }

  else
  {
    nnmkAccount = self->_nnmkAccount;
    if (nnmkAccount)
    {
      nnmkAccount = [(NNMKAccount *)nnmkAccount standaloneState];
      if (nnmkAccount != 1)
      {
        LOBYTE(nnmkAccount) = [(NNMKAccount *)self->_nnmkAccount standaloneState]== 2;
      }
    }
  }

  return nnmkAccount;
}

- (BOOL)directPushNotificationsSupported
{
  if (self->_acAccount)
  {
    LOBYTE(nnmkAccount) = [(NMCUIAccount *)self _isIcloud];
  }

  else
  {
    nnmkAccount = self->_nnmkAccount;
    if (nnmkAccount)
    {
      LOBYTE(nnmkAccount) = [(NNMKAccount *)nnmkAccount directPushNotificationsSupported];
    }
  }

  return nnmkAccount;
}

- (BOOL)_isIcloud
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = [(NMCUIAccount *)self accountTypeIdentifier];
  v4 = [v3 isEqualToString:*MEMORY[0x277CB8C68]];

  if (!v4)
  {
    goto LABEL_22;
  }

  acAccount = self->_acAccount;
  if (acAccount)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v6 = getMailAccountEmailAddressesSymbolLoc_ptr;
    v33 = getMailAccountEmailAddressesSymbolLoc_ptr;
    if (!getMailAccountEmailAddressesSymbolLoc_ptr)
    {
      v25 = MEMORY[0x277D85DD0];
      v26 = 3221225472;
      v27 = __getMailAccountEmailAddressesSymbolLoc_block_invoke;
      v28 = &unk_279934660;
      v29 = &v30;
      __getMailAccountEmailAddressesSymbolLoc_block_invoke(&v25);
      v6 = v31[3];
    }

    _Block_object_dispose(&v30, 8);
    if (!v6)
    {
      soft_BPSCellHightlightColor_cold_1();
      __break(1u);
    }

    v7 = [(ACAccount *)acAccount accountPropertyForKey:*v6];
    v8 = v7;
    v9 = MEMORY[0x277CBEBF8];
    if (v7)
    {
      v9 = v7;
    }

    v10 = v9;

    goto LABEL_11;
  }

  nnmkAccount = self->_nnmkAccount;
  if (!nnmkAccount)
  {
LABEL_22:
    LOBYTE(v13) = 0;
    goto LABEL_25;
  }

  v10 = [(NNMKAccount *)nnmkAccount emailAddresses];
LABEL_11:
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v34 count:16];
  if (v13)
  {
    v14 = *v22;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v21 + 1) + 8 * i);
        v30 = 0;
        v31 = &v30;
        v32 = 0x2050000000;
        v17 = getNNMKAccountClass_softClass;
        v33 = getNNMKAccountClass_softClass;
        if (!getNNMKAccountClass_softClass)
        {
          v25 = MEMORY[0x277D85DD0];
          v26 = 3221225472;
          v27 = __getNNMKAccountClass_block_invoke;
          v28 = &unk_279934660;
          v29 = &v30;
          __getNNMKAccountClass_block_invoke(&v25);
          v17 = v31[3];
        }

        v18 = v17;
        _Block_object_dispose(&v30, 8);
        if ([v17 isiCloudEmailAddress:{v16, v21}])
        {
          LOBYTE(v13) = 1;
          goto LABEL_24;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v21 objects:v34 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_24:

LABEL_25:
  v19 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)rootAccount:(id)a3
{
  v4 = a3;
  v5 = [v4 parentAccount];
  if (v5)
  {
    v6 = [(NMCUIAccount *)self rootAccount:v5];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

@end