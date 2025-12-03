@interface PKFieldProperties
+ (id)fieldPropertiesForFieldNotification:(id)notification;
+ (id)fieldPropertiesForSTSFieldNotification:(id)notification;
- (BOOL)shouldIgnore;
- (PKFieldProperties)initWithCoder:(id)coder;
- (PKFieldProperties)initWithTechnology:(unint64_t)technology terminalType:(int64_t)type accessTerminalSubtype:(int64_t)subtype valueAddedServiceMode:(int64_t)mode;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKFieldProperties

- (PKFieldProperties)initWithTechnology:(unint64_t)technology terminalType:(int64_t)type accessTerminalSubtype:(int64_t)subtype valueAddedServiceMode:(int64_t)mode
{
  v11.receiver = self;
  v11.super_class = PKFieldProperties;
  result = [(PKFieldProperties *)&v11 init];
  if (result)
  {
    result->_technology = technology;
    result->_terminalType = type;
    result->_valueAddedServiceMode = mode;
    result->_accessTerminalSubtype = subtype;
    result->_pairingRequested = 2 * (subtype != 2);
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
  hexEncoding = [(NSData *)self->_readerIdentifier hexEncoding];
  v20 = [v28 stringWithFormat:@"[%@ Technology: %@, Terminal Type: %@ (%@), Field Type: %lu, VAS Mode: %@, Authentication Required: %@, Pairing Requested: %s, Background Transaction: %@, Merchant Identifiers: %@, TCIs: %@, Credential Identifier: %@, AID: %@, Reader Identifier: %@, Secondary Properties Required: %d, Secondary Properties Acquired: %d]", v29, v26, v24, v25, fieldType, v10, v13, v12, v14, v15, TCIs, credentialIdentifier, applicationIdentifier, hexEncoding, self->_secondaryPropertiesRequired, self->_secondaryPropertiesAcquired];

  return v20;
}

- (PKFieldProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = PKFieldProperties;
  v5 = [(PKFieldProperties *)&v23 init];
  if (v5)
  {
    v5->_technology = [coderCopy decodeIntegerForKey:@"technology"];
    v5->_terminalType = [coderCopy decodeIntegerForKey:@"terminalType"];
    v5->_accessTerminalSubtype = [coderCopy decodeIntegerForKey:@"terminalSubtype"];
    v5->_valueAddedServiceMode = [coderCopy decodeIntegerForKey:@"valueAddedServiceMode"];
    v5->_authenticationRequired = [coderCopy decodeBoolForKey:@"authenticationRequired"];
    v5->_backgroundTransaction = [coderCopy decodeBoolForKey:@"backgroundTransaction"];
    v5->_pairingRequested = [coderCopy decodeIntegerForKey:@"pairingRequested"];
    v5->_carKeyBrandCode = [coderCopy decodeIntegerForKey:@"carKeyBrandCode"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"TCIs"];
    TCIs = v5->_TCIs;
    v5->_TCIs = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"merchantIdentifiers"];
    merchantIdentifiers = v5->_merchantIdentifiers;
    v5->_merchantIdentifiers = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialIdentifier"];
    credentialIdentifier = v5->_credentialIdentifier;
    v5->_credentialIdentifier = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationIdentifier"];
    applicationIdentifier = v5->_applicationIdentifier;
    v5->_applicationIdentifier = v18;

    v5->_secondaryPropertiesRequired = [coderCopy decodeBoolForKey:@"secondaryPropertiesRequired"];
    v5->_secondaryPropertiesAcquired = [coderCopy decodeBoolForKey:@"secondaryPropertiesAquired"];
    v5->_fieldType = [coderCopy decodeIntegerForKey:@"ecpTypeKey"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readerIdentifier"];
    readerIdentifier = v5->_readerIdentifier;
    v5->_readerIdentifier = v20;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  technology = self->_technology;
  coderCopy = coder;
  [coderCopy encodeInteger:technology forKey:@"technology"];
  [coderCopy encodeInteger:self->_terminalType forKey:@"terminalType"];
  [coderCopy encodeInteger:self->_accessTerminalSubtype forKey:@"terminalSubtype"];
  [coderCopy encodeInteger:self->_valueAddedServiceMode forKey:@"valueAddedServiceMode"];
  [coderCopy encodeBool:self->_authenticationRequired forKey:@"authenticationRequired"];
  [coderCopy encodeBool:self->_backgroundTransaction forKey:@"backgroundTransaction"];
  [coderCopy encodeInteger:self->_pairingRequested forKey:@"pairingRequested"];
  [coderCopy encodeInteger:self->_carKeyBrandCode forKey:@"carKeyBrandCode"];
  [coderCopy encodeObject:self->_TCIs forKey:@"TCIs"];
  [coderCopy encodeObject:self->_merchantIdentifiers forKey:@"merchantIdentifiers"];
  [coderCopy encodeObject:self->_credentialIdentifier forKey:@"credentialIdentifier"];
  [coderCopy encodeObject:self->_applicationIdentifier forKey:@"applicationIdentifier"];
  [coderCopy encodeBool:self->_secondaryPropertiesRequired forKey:@"secondaryPropertiesRequired"];
  [coderCopy encodeBool:self->_secondaryPropertiesAcquired forKey:@"secondaryPropertiesAquired"];
  [coderCopy encodeInteger:self->_fieldType forKey:@"ecpTypeKey"];
  [coderCopy encodeObject:self->_readerIdentifier forKey:@"readerIdentifier"];
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

+ (id)fieldPropertiesForFieldNotification:(id)notification
{
  v32 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v4 = notificationCopy;
  if (notificationCopy)
  {
    v5 = [notificationCopy rfTechnology] & 0xF;
    notificationType = [v4 notificationType];
    v28 = v5;
    if (notificationType == 3)
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

      odaRequired = [v15 odaRequired];
      terminalSubType = [v15 terminalSubType];
      tciArray = [v15 tciArray];
      readerIdentifier = [v15 readerIdentifier];

      v9 = 0;
      v12 = 1;
      v14 = 2;
      goto LABEL_14;
    }

    if (notificationType == 2)
    {
      v7 = PKFieldTerminalTypeForNFTerminalType([v4 terminalType]);
      terminalMode = [v4 terminalMode];
      if (terminalMode >= 4)
      {
        v9 = 0;
      }

      else
      {
        v9 = 4 - terminalMode;
      }

      odaRequired = [v4 odaRequired];
      tciArray = 0;
      readerIdentifier = 0;
      v12 = 0;
      terminalSubType = 0;
      v14 = 1;
      goto LABEL_14;
    }
  }

  else
  {
    v28 = 0;
  }

  tciArray = 0;
  readerIdentifier = 0;
  odaRequired = 0;
  v12 = 0;
  v14 = 0;
  v9 = 0;
  terminalSubType = 0;
  v7 = 0;
LABEL_14:
  v17 = PKFieldValueAddedServiceModeOverride();
  integerValue = [v17 integerValue];

  if (integerValue)
  {
    v19 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v31 = integerValue;
      _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "Field Properties Overriding Mode: %tu", buf, 0xCu);
    }

    v20 = 8;
  }

  else
  {
    v20 = v28;
    integerValue = v9;
  }

  if (v7 == 3)
  {
    v21 = v12;
  }

  else
  {
    v21 = 0;
  }

  if (v21 != 1 || terminalSubType > 0xB)
  {
    goto LABEL_33;
  }

  v22 = 1;
  if (((1 << terminalSubType) & 0xF22) != 0)
  {
    pairingMode = [v4 pairingMode];
    if (pairingMode)
    {
      v24 = 2;
    }

    else
    {
      v24 = 0;
    }

    if (pairingMode == 1)
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

  if (terminalSubType)
  {
LABEL_33:
    v22 = 0;
  }

  v25 = 2;
LABEL_35:
  v26 = [[PKFieldProperties alloc] initWithTechnology:v20 terminalType:v7 accessTerminalSubtype:v22 valueAddedServiceMode:integerValue];
  [(PKFieldProperties *)v26 setTCIs:tciArray];
  [(PKFieldProperties *)v26 setAuthenticationRequired:odaRequired];
  [(PKFieldProperties *)v26 setFieldType:v14];
  [(PKFieldProperties *)v26 setReaderIdentifier:readerIdentifier];
  [(PKFieldProperties *)v26 setPairingRequested:v25];

  return v26;
}

+ (id)fieldPropertiesForSTSFieldNotification:(id)notification
{
  v24 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  if ([notificationCopy fieldType] == 1)
  {
    v4 = notificationCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v5;
  if (v5)
  {
    nfcTechnology = [v5 nfcTechnology];
    v8 = [notificationCopy terminalType] - 1;
    if (v8 > 8)
    {
      v9 = 0;
    }

    else
    {
      v9 = qword_1ADB9AC88[v8];
    }

    v11 = [notificationCopy terminalType] - 3;
    if (v11 > 6)
    {
      v12 = 0;
    }

    else
    {
      v12 = qword_1ADB9ACD0[v11];
    }

    terminalMode = [v6 terminalMode];
    if (terminalMode >= 4)
    {
      v14 = 0;
    }

    else
    {
      v14 = 4 - terminalMode;
    }

    [v6 ecpVersion];
    odaRequired = [notificationCopy odaRequired];
    tcis = [v6 tcis];
    v17 = PKFieldValueAddedServiceModeOverride();
    integerValue = [v17 integerValue];

    if (integerValue)
    {
      v19 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 134217984;
        v23 = integerValue;
        _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, "Field Properties Overriding Mode: %tu", &v22, 0xCu);
      }

      v20 = 8;
    }

    else
    {
      v20 = nfcTechnology & 0xF;
      integerValue = v14;
    }

    v10 = [[PKFieldProperties alloc] initWithTechnology:v20 terminalType:v9 accessTerminalSubtype:v12 valueAddedServiceMode:integerValue];
    [(PKFieldProperties *)v10 setTCIs:tcis];
    [(PKFieldProperties *)v10 setAuthenticationRequired:odaRequired];
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