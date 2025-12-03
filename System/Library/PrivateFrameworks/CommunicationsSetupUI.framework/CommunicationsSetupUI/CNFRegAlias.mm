@interface CNFRegAlias
- (BOOL)isDeviceAlias;
- (BOOL)isEqual:(id)equal;
- (BOOL)isLocalPhoneNumberAlias;
- (BOOL)isPhoneNumberAliasOnPhoneNumberAccount;
- (BOOL)isTemporaryPhoneNumberAlias;
- (BOOL)validate;
- (CNFRegAlias)initWithAccount:(id)account alias:(id)alias;
- (NSDate)expirationDate;
- (NSString)displayName;
- (NSString)identifier;
- (id)description;
- (int64_t)localizedCaseInsensitiveCompare:(id)compare;
- (int64_t)type;
- (int64_t)validationErrorReason;
- (int64_t)validationStatus;
- (unint64_t)hash;
- (void)setDisplayName:(id)name;
@end

@implementation CNFRegAlias

- (CNFRegAlias)initWithAccount:(id)account alias:(id)alias
{
  accountCopy = account;
  aliasCopy = alias;
  v11.receiver = self;
  v11.super_class = CNFRegAlias;
  v8 = [(CNFRegAlias *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CNFRegAlias *)v8 setAlias:aliasCopy];
    [(CNFRegAlias *)v9 setAccount:accountCopy];
  }

  return v9;
}

- (NSString)identifier
{
  v3 = MEMORY[0x277CCACA8];
  uniqueID = [(IMAccount *)self->_account uniqueID];
  v5 = [v3 stringWithFormat:@"%@:%@", uniqueID, self->_alias];

  return v5;
}

- (int64_t)type
{
  account = [(CNFRegAlias *)self account];
  if (account)
  {
    account2 = [(CNFRegAlias *)self account];
    alias = [(CNFRegAlias *)self alias];
    givenAliasType = [account2 typeForAlias:alias];
  }

  else
  {
    givenAliasType = [(CNFRegAlias *)self givenAliasType];
  }

  return givenAliasType;
}

- (BOOL)isPhoneNumberAliasOnPhoneNumberAccount
{
  account = [(CNFRegAlias *)self account];
  v4 = [account accountType] == 2 && -[CNFRegAlias type](self, "type") == 2;

  return v4;
}

- (BOOL)isTemporaryPhoneNumberAlias
{
  if (self->_isTemporary)
  {
    return 1;
  }

  account = [(CNFRegAlias *)self account];
  v5 = [account objectForKey:*MEMORY[0x277D18AA8]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  account2 = [(CNFRegAlias *)self account];
  v2 = ([account2 accountType] == 2) & bOOLValue;

  return v2;
}

- (NSDate)expirationDate
{
  if ([(CNFRegAlias *)self isTemporaryPhoneNumberAlias])
  {
    expirationDate = self->__expirationDate;
    if (expirationDate)
    {
      v4 = expirationDate;
    }

    else
    {
      account = [(CNFRegAlias *)self account];
      v6 = [account objectForKey:*MEMORY[0x277D18AA0]];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      v4 = v7;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isDeviceAlias
{
  account = [(CNFRegAlias *)self account];
  v3 = account == 0;

  return v3;
}

- (BOOL)validate
{
  account = [(CNFRegAlias *)self account];
  alias = [(CNFRegAlias *)self alias];
  v5 = [account validateAlias:alias];

  return v5;
}

- (int64_t)validationStatus
{
  account = [(CNFRegAlias *)self account];
  alias = [(CNFRegAlias *)self alias];
  if ([account hasAlias:alias])
  {
    v5 = [account validationStatusForAlias:alias];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (int64_t)validationErrorReason
{
  account = [(CNFRegAlias *)self account];
  alias = [(CNFRegAlias *)self alias];
  if ([account hasAlias:alias] && objc_msgSend(account, "validationStatusForAlias:", alias) == -1)
  {
    v5 = [account validationErrorReasonForAlias:alias];
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

- (NSString)displayName
{
  displayName = self->_displayName;
  if (!displayName)
  {
    alias = [(CNFRegAlias *)self alias];
    v5 = CNFRegFormattedPhoneNumberForString(alias);
    v6 = [v5 copy];
    v7 = self->_displayName;
    self->_displayName = v6;

    displayName = self->_displayName;
  }

  return displayName;
}

- (void)setDisplayName:(id)name
{
  if (self->_displayName != name)
  {
    v7 = CNFRegFormattedPhoneNumberForString(name);
    v5 = [v7 copy];
    displayName = self->_displayName;
    self->_displayName = v5;
  }
}

- (id)description
{
  isDeviceAlias = [(CNFRegAlias *)self isDeviceAlias];
  v4 = MEMORY[0x277CCACA8];
  type = [(CNFRegAlias *)self type];
  alias = [(CNFRegAlias *)self alias];
  v7 = alias;
  if (isDeviceAlias)
  {
    if ([(CNFRegAlias *)self isSelectedDeviceAlias])
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    deviceAliasIdentifier = [(CNFRegAlias *)self deviceAliasIdentifier];
    v10 = [v4 stringWithFormat:@"<CNFRegAlias:%p> {Type:%ld, Alias:%@, Selected: %@, DeviceId: %@}", self, type, v7, v8, deviceAliasIdentifier];
  }

  else
  {
    v10 = [v4 stringWithFormat:@"<CNFRegAlias:%p> {Type:%ld, Alias:%@}", self, type, alias];
  }

  return v10;
}

- (int64_t)localizedCaseInsensitiveCompare:(id)compare
{
  compareCopy = compare;
  alias = [(CNFRegAlias *)self alias];
  _appearsToBePhoneNumber = [alias _appearsToBePhoneNumber];

  alias2 = [compareCopy alias];
  _appearsToBePhoneNumber2 = [alias2 _appearsToBePhoneNumber];

  if (_appearsToBePhoneNumber == _appearsToBePhoneNumber2)
  {
    alias3 = [(CNFRegAlias *)self alias];
    alias4 = [compareCopy alias];
    v9 = [alias3 localizedCaseInsensitiveCompare:alias4];
  }

  else if (_appearsToBePhoneNumber)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)isLocalPhoneNumberAlias
{
  alias = [(CNFRegAlias *)self alias];
  v3 = CNFRegLocalPhoneNumberDisplayString();
  v4 = [alias isEqualToIgnoringCase:v3];

  if (v4)
  {
    goto LABEL_4;
  }

  v5 = CNFRegFormattedPhoneNumberForString(alias);
  v6 = CNFRegLocalPhoneNumberDisplayString();
  v7 = [v5 isEqualToIgnoringCase:v6];

  if (v7)
  {
    goto LABEL_4;
  }

  v8 = CommunicationsSetupUIBundle();
  v9 = CNFRegStringTableName();
  v10 = [v8 localizedStringForKey:@"YOUR_NUMBER_STRING" value:&stru_2856D3978 table:v9];
  v11 = [alias isEqualToIgnoringCase:v10];

  if (v11)
  {
LABEL_4:
    v12 = 1;
  }

  else
  {
    v12 = [alias isEqualToIgnoringCase:*MEMORY[0x277D19478]];
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v19.receiver = self;
  v19.super_class = CNFRegAlias;
  if (![(CNFRegAlias *)&v19 isEqual:equalCopy])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
      goto LABEL_14;
    }

    v6 = equalCopy;
    alias = [(CNFRegAlias *)self alias];
    if (alias)
    {
    }

    else
    {
      alias2 = [v6 alias];

      if (!alias2)
      {
        v11 = 1;
LABEL_9:
        account = [(CNFRegAlias *)self account];
        if (account)
        {
        }

        else
        {
          account2 = [v6 account];

          if (!account2)
          {
LABEL_13:
            type = [(CNFRegAlias *)self type];
            v5 = (type == [v6 type]) & v11;

            goto LABEL_14;
          }
        }

        account3 = [(CNFRegAlias *)self account];
        account4 = [v6 account];
        v16 = [account3 isEqual:account4];

        v11 &= v16;
        goto LABEL_13;
      }
    }

    alias3 = [(CNFRegAlias *)self alias];
    alias4 = [v6 alias];
    v11 = [alias3 isEqual:alias4];

    goto LABEL_9;
  }

  v5 = 1;
LABEL_14:

  return v5;
}

- (unint64_t)hash
{
  type = [(CNFRegAlias *)self type];
  alias = [(CNFRegAlias *)self alias];
  v5 = [alias hash] + 961 * type;

  account = [(CNFRegAlias *)self account];
  v7 = [account hash] - v5 + 32 * v5;

  return v7;
}

@end