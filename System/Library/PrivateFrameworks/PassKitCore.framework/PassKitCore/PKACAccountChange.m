@interface PKACAccountChange
- (PKACAccountChange)initWithChangeType:(int)a3 event:(int64_t)a4 newAccount:(id)a5 oldAccount:(id)a6;
- (PKACAccountChange)initWithCoder:(id)a3;
- (id)description;
- (int64_t)_operationTypeForChangeType:(int)a3 newAccount:(id)a4 oldAccount:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKACAccountChange

- (PKACAccountChange)initWithChangeType:(int)a3 event:(int64_t)a4 newAccount:(id)a5 oldAccount:(id)a6
{
  v8 = *&a3;
  v44 = *MEMORY[0x1E69E9840];
  v10 = a5;
  v11 = a6;
  v41.receiver = self;
  v41.super_class = PKACAccountChange;
  v12 = [(PKACAccountChange *)&v41 init];
  if (!v12)
  {
LABEL_25:
    v38 = v12;
    goto LABEL_26;
  }

  if (v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  v14 = v13;
  v15 = [v14 accountType];
  v16 = [v15 identifier];
  v17 = *MEMORY[0x1E69597F8];
  v18 = v16;
  v19 = v18;
  if (v18 == v17)
  {
    v21 = 0;
LABEL_18:

    goto LABEL_19;
  }

  if (v18 && v17)
  {
    v20 = [v18 isEqualToString:v17];

    if (v20)
    {
      v21 = 0;
LABEL_19:
      v12->_type = v21;
      v12->_operation = [(PKACAccountChange *)v12 _operationTypeForChangeType:v8 newAccount:v10 oldAccount:v11];
      v12->_event = a4;
      v26 = *MEMORY[0x1E6959700];
      v27 = [v10 isEnabledForDataclass:*MEMORY[0x1E6959700]];
      v12->_enablementOfWalletDataclassChanged = v27 ^ [v11 isEnabledForDataclass:v26];
      v28 = *MEMORY[0x1E6959718];
      v29 = [v10 isEnabledForDataclass:*MEMORY[0x1E6959718]];
      v12->_enablementOfUbiquityDataclassChanged = v29 ^ [v11 isEnabledForDataclass:v28];
      LOBYTE(v28) = [v10 aa_isManagedAppleID];
      v12->_accountManagedStateChanged = v28 ^ [v11 aa_isManagedAppleID];
      v30 = *MEMORY[0x1E698B760];
      v31 = [v10 aa_isAccountClass:*MEMORY[0x1E698B760]];
      v12->_accountOrderChanged = v31 ^ [v11 aa_isAccountClass:v30];
      v32 = [v10 ams_storefront];
      v33 = [v11 ams_storefront];
      v34 = v32;
      v35 = v33;
      v36 = v35;
      if (v34 == v35)
      {
        v37 = 0;
      }

      else
      {
        v37 = 1;
        if (v34 && v35)
        {
          v37 = [v34 isEqualToString:v35] ^ 1;
        }
      }

      v12->_accountStorefrontChanged = v37;
      goto LABEL_25;
    }
  }

  else
  {
  }

  v15 = [v14 accountType];
  v22 = [v15 identifier];
  v23 = *MEMORY[0x1E6959930];
  v24 = v22;
  v19 = v24;
  if (v24 == v23)
  {
    v21 = 1;
    goto LABEL_18;
  }

  if (v24 && v23)
  {
    v25 = [v24 isEqualToString:v23];

    if (v25)
    {
      v21 = 1;
      goto LABEL_19;
    }
  }

  else
  {
  }

  v40 = PKLogFacilityTypeGetObject(0);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v43 = v14;
    _os_log_impl(&dword_1AD337000, v40, OS_LOG_TYPE_DEFAULT, "Error: attempted to initialize PKACAccountChange for unknown account type %@", buf, 0xCu);
  }

  v38 = 0;
LABEL_26:

  return v38;
}

- (PKACAccountChange)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKACAccountChange;
  v5 = [(PKACAccountChange *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v6 integerValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"operation"];
    v5->_operation = [v7 integerValue];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"event"];
    v5->_event = [v8 integerValue];

    v5->_enablementOfWalletDataclassChanged = [v4 decodeBoolForKey:@"walletDataclassChanged"];
    v5->_enablementOfUbiquityDataclassChanged = [v4 decodeBoolForKey:@"ubiquityDataclassChanged"];
    v5->_accountManagedStateChanged = [v4 decodeBoolForKey:@"managedStateChanged"];
    v5->_accountOrderChanged = [v4 decodeBoolForKey:@"orderChanged"];
    v5->_accountStorefrontChanged = [v4 decodeBoolForKey:@"storefrontChanged"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  type = self->_type;
  v9 = a3;
  v6 = [v4 numberWithInteger:type];
  [v9 encodeObject:v6 forKey:@"type"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_operation];
  [v9 encodeObject:v7 forKey:@"operation"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_event];
  [v9 encodeObject:v8 forKey:@"event"];

  [v9 encodeBool:self->_enablementOfWalletDataclassChanged forKey:@"walletDataclassChanged"];
  [v9 encodeBool:self->_enablementOfUbiquityDataclassChanged forKey:@"ubiquityDataclassChanged"];
  [v9 encodeBool:self->_accountManagedStateChanged forKey:@"managedStateChanged"];
  [v9 encodeBool:self->_accountOrderChanged forKey:@"orderChanged"];
  [v9 encodeBool:self->_accountStorefrontChanged forKey:@"storefrontChanged"];
}

- (id)description
{
  result = MEMORY[0x1E696AEC0];
  type = self->_type;
  if (type)
  {
    if (type != 1)
    {
LABEL_23:
      __break(1u);
      return result;
    }

    v7 = @"itunesstore";
  }

  else
  {
    v7 = @"appleaccount";
  }

  operation = self->_operation;
  if (operation >= 4)
  {
    goto LABEL_23;
  }

  event = self->_event;
  if (event >= 3)
  {
    goto LABEL_23;
  }

  v10 = off_1E79E1348[operation];
  v11 = off_1E79E1368[event];
  if (self->_enablementOfWalletDataclassChanged)
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  if (self->_enablementOfUbiquityDataclassChanged)
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  if (self->_accountManagedStateChanged)
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  if (self->_accountOrderChanged)
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  if (self->_accountStorefrontChanged)
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"type: %@, operation: %@, event: %@, wallet dataclass changed: %@, ubiquity dataclass changed: %@, managed state changed: %@, order changed: %@, storefront changed: %@", v7, v10, v11, v12, v13, v14, v15, v16, v2, v3];
}

- (int64_t)_operationTypeForChangeType:(int)a3 newAccount:(id)a4 oldAccount:(id)a5
{
  LODWORD(v6) = a3;
  v8 = a4;
  v9 = a5;
  type = self->_type;
  if (type == 1)
  {
    if ((v6 - 1) >= 3)
    {
      v6 = 0;
    }

    else
    {
      v6 = v6;
    }
  }

  else if (type)
  {
    v6 = 0;
  }

  else
  {
    v11 = *MEMORY[0x1E698B760];
    v12 = [v8 aa_isAccountClass:*MEMORY[0x1E698B760]];
    v13 = [v9 aa_isAccountClass:v11];
    if (((v12 ^ 1) & 1) != 0 || v13)
    {
      v14 = 3;
      if (((v12 ^ 1) & v13) == 0)
      {
        v14 = 0;
      }

      if ((v12 & v13) != 0)
      {
        v6 = 2;
      }

      else
      {
        v6 = v14;
      }
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

@end