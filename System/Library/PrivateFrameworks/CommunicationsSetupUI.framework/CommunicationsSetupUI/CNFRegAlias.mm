@interface CNFRegAlias
- (BOOL)isDeviceAlias;
- (BOOL)isEqual:(id)a3;
- (BOOL)isLocalPhoneNumberAlias;
- (BOOL)isPhoneNumberAliasOnPhoneNumberAccount;
- (BOOL)isTemporaryPhoneNumberAlias;
- (BOOL)validate;
- (CNFRegAlias)initWithAccount:(id)a3 alias:(id)a4;
- (NSDate)expirationDate;
- (NSString)displayName;
- (NSString)identifier;
- (id)description;
- (int64_t)localizedCaseInsensitiveCompare:(id)a3;
- (int64_t)type;
- (int64_t)validationErrorReason;
- (int64_t)validationStatus;
- (unint64_t)hash;
- (void)setDisplayName:(id)a3;
@end

@implementation CNFRegAlias

- (CNFRegAlias)initWithAccount:(id)a3 alias:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CNFRegAlias;
  v8 = [(CNFRegAlias *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CNFRegAlias *)v8 setAlias:v7];
    [(CNFRegAlias *)v9 setAccount:v6];
  }

  return v9;
}

- (NSString)identifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(IMAccount *)self->_account uniqueID];
  v5 = [v3 stringWithFormat:@"%@:%@", v4, self->_alias];

  return v5;
}

- (int64_t)type
{
  v3 = [(CNFRegAlias *)self account];
  if (v3)
  {
    v4 = [(CNFRegAlias *)self account];
    v5 = [(CNFRegAlias *)self alias];
    v6 = [v4 typeForAlias:v5];
  }

  else
  {
    v6 = [(CNFRegAlias *)self givenAliasType];
  }

  return v6;
}

- (BOOL)isPhoneNumberAliasOnPhoneNumberAccount
{
  v3 = [(CNFRegAlias *)self account];
  v4 = [v3 accountType] == 2 && -[CNFRegAlias type](self, "type") == 2;

  return v4;
}

- (BOOL)isTemporaryPhoneNumberAlias
{
  if (self->_isTemporary)
  {
    return 1;
  }

  v4 = [(CNFRegAlias *)self account];
  v5 = [v4 objectForKey:*MEMORY[0x277D18AA8]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(CNFRegAlias *)self account];
  v2 = ([v7 accountType] == 2) & v6;

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
      v5 = [(CNFRegAlias *)self account];
      v6 = [v5 objectForKey:*MEMORY[0x277D18AA0]];

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
  v2 = [(CNFRegAlias *)self account];
  v3 = v2 == 0;

  return v3;
}

- (BOOL)validate
{
  v3 = [(CNFRegAlias *)self account];
  v4 = [(CNFRegAlias *)self alias];
  v5 = [v3 validateAlias:v4];

  return v5;
}

- (int64_t)validationStatus
{
  v3 = [(CNFRegAlias *)self account];
  v4 = [(CNFRegAlias *)self alias];
  if ([v3 hasAlias:v4])
  {
    v5 = [v3 validationStatusForAlias:v4];
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (int64_t)validationErrorReason
{
  v3 = [(CNFRegAlias *)self account];
  v4 = [(CNFRegAlias *)self alias];
  if ([v3 hasAlias:v4] && objc_msgSend(v3, "validationStatusForAlias:", v4) == -1)
  {
    v5 = [v3 validationErrorReasonForAlias:v4];
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
    v4 = [(CNFRegAlias *)self alias];
    v5 = CNFRegFormattedPhoneNumberForString(v4);
    v6 = [v5 copy];
    v7 = self->_displayName;
    self->_displayName = v6;

    displayName = self->_displayName;
  }

  return displayName;
}

- (void)setDisplayName:(id)a3
{
  if (self->_displayName != a3)
  {
    v7 = CNFRegFormattedPhoneNumberForString(a3);
    v5 = [v7 copy];
    displayName = self->_displayName;
    self->_displayName = v5;
  }
}

- (id)description
{
  v3 = [(CNFRegAlias *)self isDeviceAlias];
  v4 = MEMORY[0x277CCACA8];
  v5 = [(CNFRegAlias *)self type];
  v6 = [(CNFRegAlias *)self alias];
  v7 = v6;
  if (v3)
  {
    if ([(CNFRegAlias *)self isSelectedDeviceAlias])
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v9 = [(CNFRegAlias *)self deviceAliasIdentifier];
    v10 = [v4 stringWithFormat:@"<CNFRegAlias:%p> {Type:%ld, Alias:%@, Selected: %@, DeviceId: %@}", self, v5, v7, v8, v9];
  }

  else
  {
    v10 = [v4 stringWithFormat:@"<CNFRegAlias:%p> {Type:%ld, Alias:%@}", self, v5, v6];
  }

  return v10;
}

- (int64_t)localizedCaseInsensitiveCompare:(id)a3
{
  v4 = a3;
  v5 = [(CNFRegAlias *)self alias];
  v6 = [v5 _appearsToBePhoneNumber];

  v7 = [v4 alias];
  v8 = [v7 _appearsToBePhoneNumber];

  if (v6 == v8)
  {
    v10 = [(CNFRegAlias *)self alias];
    v11 = [v4 alias];
    v9 = [v10 localizedCaseInsensitiveCompare:v11];
  }

  else if (v6)
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
  v2 = [(CNFRegAlias *)self alias];
  v3 = CNFRegLocalPhoneNumberDisplayString();
  v4 = [v2 isEqualToIgnoringCase:v3];

  if (v4)
  {
    goto LABEL_4;
  }

  v5 = CNFRegFormattedPhoneNumberForString(v2);
  v6 = CNFRegLocalPhoneNumberDisplayString();
  v7 = [v5 isEqualToIgnoringCase:v6];

  if (v7)
  {
    goto LABEL_4;
  }

  v8 = CommunicationsSetupUIBundle();
  v9 = CNFRegStringTableName();
  v10 = [v8 localizedStringForKey:@"YOUR_NUMBER_STRING" value:&stru_2856D3978 table:v9];
  v11 = [v2 isEqualToIgnoringCase:v10];

  if (v11)
  {
LABEL_4:
    v12 = 1;
  }

  else
  {
    v12 = [v2 isEqualToIgnoringCase:*MEMORY[0x277D19478]];
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CNFRegAlias;
  if (![(CNFRegAlias *)&v19 isEqual:v4])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = 0;
      goto LABEL_14;
    }

    v6 = v4;
    v7 = [(CNFRegAlias *)self alias];
    if (v7)
    {
    }

    else
    {
      v8 = [v6 alias];

      if (!v8)
      {
        v11 = 1;
LABEL_9:
        v12 = [(CNFRegAlias *)self account];
        if (v12)
        {
        }

        else
        {
          v13 = [v6 account];

          if (!v13)
          {
LABEL_13:
            v17 = [(CNFRegAlias *)self type];
            v5 = (v17 == [v6 type]) & v11;

            goto LABEL_14;
          }
        }

        v14 = [(CNFRegAlias *)self account];
        v15 = [v6 account];
        v16 = [v14 isEqual:v15];

        v11 &= v16;
        goto LABEL_13;
      }
    }

    v9 = [(CNFRegAlias *)self alias];
    v10 = [v6 alias];
    v11 = [v9 isEqual:v10];

    goto LABEL_9;
  }

  v5 = 1;
LABEL_14:

  return v5;
}

- (unint64_t)hash
{
  v3 = [(CNFRegAlias *)self type];
  v4 = [(CNFRegAlias *)self alias];
  v5 = [v4 hash] + 961 * v3;

  v6 = [(CNFRegAlias *)self account];
  v7 = [v6 hash] - v5 + 32 * v5;

  return v7;
}

@end