@interface PKFieldProperties
+ (id)fieldPropertiesForFieldNotification:(id)a3;
+ (id)fieldPropertiesForSTSFieldNotification:(id)a3;
- (BOOL)shouldIgnore;
- (PKFieldProperties)initWithCoder:(id)a3;
- (PKFieldProperties)initWithTechnology:(unint64_t)a3 terminalType:(int64_t)a4 accessTerminalSubtype:(int64_t)a5 valueAddedServiceMode:(int64_t)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKFieldProperties

- (PKFieldProperties)initWithTechnology:(unint64_t)a3 terminalType:(int64_t)a4 accessTerminalSubtype:(int64_t)a5 valueAddedServiceMode:(int64_t)a6
{
  v11.receiver = self;
  v11.super_class = PKFieldProperties;
  result = [(PKFieldProperties *)&v11 init];
  if (result)
  {
    result->_technology = a3;
    result->_terminalType = a4;
    result->_valueAddedServiceMode = a6;
    result->_accessTerminalSubtype = a5;
    result->_pairingRequested = 2 * (a5 != 2);
  }

  return result;
}

- (id)description
{
  v3 = [(NSArray *)self->_merchantIdentifiers pk_arrayByApplyingBlock:&__block_literal_global_163];
  pairingRequested = self->_pairingRequested;
  v28 = MEMORY[0x1E696AEC0];
  v30.receiver = self;
  v30.super_class = PKFieldProperties;
  v29 = [(PKFieldProperties *)&v30 description];
  v27 = PKFieldTechnologyDescriptions(self->_technology);
  v26 = [v27 componentsJoinedByString:{@", "}];
  terminalType = self->_terminalType;
  if (terminalType > 2)
  {
    switch(terminalType)
    {
      case 3:
        v7 = self->_accessTerminalSubtype - 1;
        if (v7 >= 3)
        {
          v8 = @"Unknown";
        }

        else
        {
          v8 = off_1E79DC250[v7];
        }

        v25 = v8;
        v6 = @"Access";
        break;
      case 4:
        v25 = @"None";
        v6 = @"Identity";
        break;
      case 5:
        v25 = @"None";
        v6 = @"Connection Handover";
        break;
      default:
        goto LABEL_13;
    }
  }

  else
  {
    if (!terminalType)
    {
      v25 = @"None";
      v6 = @"Unknown";
      goto LABEL_18;
    }

    if (terminalType != 1)
    {
      if (terminalType == 2)
      {
        v25 = @"None";
        v6 = @"Transit";
        goto LABEL_18;
      }

LABEL_13:
      v25 = @"Unknown";
      v6 = @"unknown";
      goto LABEL_18;
    }

    v25 = @"None";
    v6 = @"Payment";
  }

LABEL_18:
  v24 = v6;
  fieldType = self->_fieldType;
  valueAddedServiceMode = self->_valueAddedServiceMode;
  if (valueAddedServiceMode > 4)
  {
    v10 = @"unknown";
  }

  else
  {
    v10 = off_1E79DC268[valueAddedServiceMode];
  }

  v11 = "unknown";
  if (pairingRequested == 1)
  {
    v11 = "yes";
  }

  if (pairingRequested == 2)
  {
    v12 = "no";
  }

  else
  {
    v12 = v11;
  }

  if (self->_authenticationRequired)
  {
    v13 = @"yes";
  }

  else
  {
    v13 = @"no";
  }

  if (self->_backgroundTransaction)
  {
    v14 = @"yes";
  }

  else
  {
    v14 = @"no";
  }

  v15 = [v3 componentsJoinedByString:{@", "}];
  TCIs = self->_TCIs;
  v22 = v3;
  applicationIdentifier = self->_applicationIdentifier;
  credentialIdentifier = self->_credentialIdentifier;
  v19 = [(NSData *)self->_readerIdentifier hexEncoding];
  v20 = [v28 stringWithFormat:@"[%@ Technology: %@, Terminal Type: %@ (%@), Field Type: %lu, VAS Mode: %@, Authentication Required: %@, Pairing Requested: %s, Background Transaction: %@, Merchant Identifiers: %@, TCIs: %@, Credential Identifier: %@, AID: %@, Reader Identifier: %@, Secondary Properties Required: %d, Secondary Properties Acquired: %d]", v29, v26, v24, v25, fieldType, v10, v13, v12, v14, v15, TCIs, credentialIdentifier, applicationIdentifier, v19, self->_secondaryPropertiesRequired, self->_secondaryPropertiesAcquired];

  return v20;
}

- (PKFieldProperties)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = PKFieldProperties;
  v5 = [(PKFieldProperties *)&v23 init];
  if (v5)
  {
    v5->_technology = [v4 decodeIntegerForKey:@"technology"];
    v5->_terminalType = [v4 decodeIntegerForKey:@"terminalType"];
    v5->_accessTerminalSubtype = [v4 decodeIntegerForKey:@"terminalSubtype"];
    v5->_valueAddedServiceMode = [v4 decodeIntegerForKey:@"valueAddedServiceMode"];
    v5->_authenticationRequired = [v4 decodeBoolForKey:@"authenticationRequired"];
    v5->_backgroundTransaction = [v4 decodeBoolForKey:@"backgroundTransaction"];
    v5->_pairingRequested = [v4 decodeIntegerForKey:@"pairingRequested"];
    v5->_carKeyBrandCode = [v4 decodeIntegerForKey:@"carKeyBrandCode"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"TCIs"];
    TCIs = v5->_TCIs;
    v5->_TCIs = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"merchantIdentifiers"];
    merchantIdentifiers = v5->_merchantIdentifiers;
    v5->_merchantIdentifiers = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credentialIdentifier"];
    credentialIdentifier = v5->_credentialIdentifier;
    v5->_credentialIdentifier = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v18;

    v5->_secondaryPropertiesRequired = [v4 decodeBoolForKey:@"secondaryPropertiesRequired"];
    v5->_secondaryPropertiesAcquired = [v4 decodeBoolForKey:@"secondaryPropertiesAquired"];
    v5->_fieldType = [v4 decodeIntegerForKey:@"ecpTypeKey"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"readerIdentifier"];
    readerIdentifier = v5->_readerIdentifier;
    v5->_readerIdentifier = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  technology = self->_technology;
  v5 = a3;
  [v5 encodeInteger:technology forKey:@"technology"];
  [v5 encodeInteger:self->_terminalType forKey:@"terminalType"];
  [v5 encodeInteger:self->_accessTerminalSubtype forKey:@"terminalSubtype"];
  [v5 encodeInteger:self->_valueAddedServiceMode forKey:@"valueAddedServiceMode"];
  [v5 encodeBool:self->_authenticationRequired forKey:@"authenticationRequired"];
  [v5 encodeBool:self->_backgroundTransaction forKey:@"backgroundTransaction"];
  [v5 encodeInteger:self->_pairingRequested forKey:@"pairingRequested"];
  [v5 encodeInteger:self->_carKeyBrandCode forKey:@"carKeyBrandCode"];
  [v5 encodeObject:self->_TCIs forKey:@"TCIs"];
  [v5 encodeObject:self->_merchantIdentifiers forKey:@"merchantIdentifiers"];
  [v5 encodeObject:self->_credentialIdentifier forKey:@"credentialIdentifier"];
  [v5 encodeObject:self->_applicationIdentifier forKey:@"applicationIdentifier"];
  [v5 encodeBool:self->_secondaryPropertiesRequired forKey:@"secondaryPropertiesRequired"];
  [v5 encodeBool:self->_secondaryPropertiesAcquired forKey:@"secondaryPropertiesAquired"];
  [v5 encodeInteger:self->_fieldType forKey:@"ecpTypeKey"];
  [v5 encodeObject:self->_readerIdentifier forKey:@"readerIdentifier"];
}

- (BOOL)shouldIgnore
{
  if ((self->_technology & 8) == 0)
  {
    return 0;
  }

  terminalType = self->_terminalType;
  if (terminalType > 5 || ((1 << terminalType) & 0x16) != 0)
  {
    return 0;
  }

  if (((1 << terminalType) & 0x21) != 0)
  {
    return 1;
  }

  return self->_accessTerminalSubtype == 2;
}

+ (id)fieldPropertiesForFieldNotification:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 rfTechnology] & 0xF;
    v6 = [v4 notificationType];
    v28 = v5;
    if (v6 == 3)
    {
      v15 = v4;
      v16 = [v15 terminalType] - 1;
      if (v16 > 4)
      {
        v7 = 0;
      }

      else
      {
        v7 = qword_1ADB9AC60[v16];
      }

      v29 = [v15 odaRequired];
      v13 = [v15 terminalSubType];
      v10 = [v15 tciArray];
      v11 = [v15 readerIdentifier];

      v9 = 0;
      v12 = 1;
      v14 = 2;
      goto LABEL_14;
    }

    if (v6 == 2)
    {
      v7 = PKFieldTerminalTypeForNFTerminalType([v4 terminalType]);
      v8 = [v4 terminalMode];
      if (v8 >= 4)
      {
        v9 = 0;
      }

      else
      {
        v9 = 4 - v8;
      }

      v29 = [v4 odaRequired];
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 1;
      goto LABEL_14;
    }
  }

  else
  {
    v28 = 0;
  }

  v10 = 0;
  v11 = 0;
  v29 = 0;
  v12 = 0;
  v14 = 0;
  v9 = 0;
  v13 = 0;
  v7 = 0;
LABEL_14:
  v17 = PKFieldValueAddedServiceModeOverride();
  v18 = [v17 integerValue];

  if (v18)
  {
    v19 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v31 = v18;
      _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "Field Properties Overriding Mode: %tu", buf, 0xCu);
    }

    v20 = 8;
  }

  else
  {
    v20 = v28;
    v18 = v9;
  }

  if (v7 == 3)
  {
    v21 = v12;
  }

  else
  {
    v21 = 0;
  }

  if (v21 != 1 || v13 > 0xB)
  {
    goto LABEL_33;
  }

  v22 = 1;
  if (((1 << v13) & 0xF22) != 0)
  {
    v23 = [v4 pairingMode];
    if (v23)
    {
      v24 = 2;
    }

    else
    {
      v24 = 0;
    }

    if (v23 == 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = v24;
    }

    v22 = 2;
    goto LABEL_35;
  }

  if (v13)
  {
LABEL_33:
    v22 = 0;
  }

  v25 = 2;
LABEL_35:
  v26 = [[PKFieldProperties alloc] initWithTechnology:v20 terminalType:v7 accessTerminalSubtype:v22 valueAddedServiceMode:v18];
  [(PKFieldProperties *)v26 setTCIs:v10];
  [(PKFieldProperties *)v26 setAuthenticationRequired:v29];
  [(PKFieldProperties *)v26 setFieldType:v14];
  [(PKFieldProperties *)v26 setReaderIdentifier:v11];
  [(PKFieldProperties *)v26 setPairingRequested:v25];

  return v26;
}

+ (id)fieldPropertiesForSTSFieldNotification:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if ([v3 fieldType] == 1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 nfcTechnology];
    v8 = [v3 terminalType] - 1;
    if (v8 > 8)
    {
      v9 = 0;
    }

    else
    {
      v9 = qword_1ADB9AC88[v8];
    }

    v11 = [v3 terminalType] - 3;
    if (v11 > 6)
    {
      v12 = 0;
    }

    else
    {
      v12 = qword_1ADB9ACD0[v11];
    }

    v13 = [v6 terminalMode];
    if (v13 >= 4)
    {
      v14 = 0;
    }

    else
    {
      v14 = 4 - v13;
    }

    [v6 ecpVersion];
    v15 = [v3 odaRequired];
    v16 = [v6 tcis];
    v17 = PKFieldValueAddedServiceModeOverride();
    v18 = [v17 integerValue];

    if (v18)
    {
      v19 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 134217984;
        v23 = v18;
        _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "Field Properties Overriding Mode: %tu", &v22, 0xCu);
      }

      v20 = 8;
    }

    else
    {
      v20 = v7 & 0xF;
      v18 = v14;
    }

    v10 = [[PKFieldProperties alloc] initWithTechnology:v20 terminalType:v9 accessTerminalSubtype:v12 valueAddedServiceMode:v18];
    [(PKFieldProperties *)v10 setTCIs:v16];
    [(PKFieldProperties *)v10 setAuthenticationRequired:v15];
    [(PKFieldProperties *)v10 setFieldType:0];
    if ([v6 terminalType] == 9)
    {
      [(PKFieldProperties *)v10 setPairingRequested:0];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end