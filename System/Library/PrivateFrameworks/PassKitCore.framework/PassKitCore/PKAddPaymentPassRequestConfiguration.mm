@interface PKAddPaymentPassRequestConfiguration
- (PKAddPaymentPassRequestConfiguration)initWithCoder:(id)a3;
- (PKAddPaymentPassRequestConfiguration)initWithEncryptionScheme:(PKEncryptionScheme)encryptionScheme;
- (id)_effectiveDetails;
- (id)_filterWebServices:(id)a3 primaryAccountIdentifierRequired:(BOOL)a4;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)updateAllowManagedAppleIDWithEntitlements:(id)a3;
@end

@implementation PKAddPaymentPassRequestConfiguration

- (id)_filterWebServices:(id)a3 primaryAccountIdentifierRequired:(BOOL)a4
{
  v4 = a4;
  v52 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 count];
  if (!v7)
  {
    goto LABEL_50;
  }

  v8 = [(PKAddPaymentPassRequestConfiguration *)self primaryAccountIdentifier];
  v9 = [(PKAddPaymentPassRequestConfiguration *)self paymentNetwork];
  v10 = [(PKAddPaymentPassRequestConfiguration *)self requiresFelicaSecureElement];
  v11 = [v9 isEqualToString:@"HID"];
  if (([v9 isEqualToString:@"BMAC"] & 1) == 0)
  {
    v12 = [v9 isEqualToString:@"SPTCC"];
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_6:
    v13 = 0;
    goto LABEL_7;
  }

  v12 = 1;
  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_4:
  v13 = [v8 length] != 0;
LABEL_7:
  if ((((v13 || v10) | v12 | v11) & 1) == 0)
  {
    v6 = v6;
    goto LABEL_49;
  }

  v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v7];
  v15 = v14;
  v41 = v12;
  v39 = v9;
  v37 = v4;
  if (((v10 | v12 | v11) & 1) == 0)
  {
    goto LABEL_34;
  }

  v35 = v13;
  v38 = v14;
  v36 = v8;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v6;
  v16 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (!v16)
  {
    goto LABEL_29;
  }

  v17 = v16;
  v18 = *v47;
  do
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v47 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v46 + 1) + 8 * i);
      v21 = objc_autoreleasePoolPush();
      v22 = [v20 targetDevice];
      if (v10)
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_27;
        }

        v23 = [v22 felicaSecureElementIsAvailable];
      }

      else
      {
        v23 = 1;
      }

      if ((v23 & v11) == 1)
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_27;
        }

        v23 = [v22 supportsExpressForAutomaticSelectionTechnologyType:2];
      }

      if ((v23 & v41) != 1)
      {
        if (!v23)
        {
          goto LABEL_27;
        }

LABEL_26:
        [v38 addObject:v20];
        goto LABEL_27;
      }

      v24 = PKPaymentCredentialTypeForPaymentNetworkName(v39);
      if (objc_opt_respondsToSelector() & 1) != 0 && ([v22 supportsCredentialType:v24])
      {
        goto LABEL_26;
      }

LABEL_27:

      objc_autoreleasePoolPop(v21);
    }

    v17 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
  }

  while (v17);
LABEL_29:

  v15 = v38;
  if ([v38 count])
  {
    v6 = [v38 copy];
  }

  else
  {
    v6 = 0;
  }

  v13 = v35;

  [v38 removeAllObjects];
  v8 = v36;
  v9 = v39;
LABEL_34:
  if (v13)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v6 = v6;
    v25 = [v6 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v43;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v43 != v27)
          {
            objc_enumerationMutation(v6);
          }

          v29 = *(*(&v42 + 1) + 8 * j);
          v30 = objc_autoreleasePoolPush();
          v31 = [v29 targetDevice];
          v32 = [v31 paymentWebService:v29 canProvisionPaymentPassWithPrimaryAccountIdentifier:v8];

          if (v32)
          {
            [v15 addObject:v29];
          }

          objc_autoreleasePoolPop(v30);
        }

        v26 = [v6 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v26);
    }

    if ([v15 count])
    {
      v33 = [v15 copy];

      [v15 removeAllObjects];
      v6 = v33;
      v9 = v39;
    }

    else
    {
      v9 = v39;
      if (v37)
      {

        v6 = 0;
      }
    }
  }

  v6 = v6;

LABEL_49:
  v7 = v6;
LABEL_50:

  return v7;
}

- (PKAddPaymentPassRequestConfiguration)initWithEncryptionScheme:(PKEncryptionScheme)encryptionScheme
{
  v4 = encryptionScheme;
  if ([(NSString *)v4 length])
  {
    v10.receiver = self;
    v10.super_class = PKAddPaymentPassRequestConfiguration;
    v5 = [(PKAddPaymentPassRequestConfiguration *)&v10 init];
    if (v5)
    {
      v6 = [(NSString *)v4 copy];
      v7 = v5->_encryptionScheme;
      v5->_encryptionScheme = v6;

      v5->_style = 0;
      cardDetails = v5->_cardDetails;
      v5->_cardDetails = MEMORY[0x1E695E0F0];
    }
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)updateAllowManagedAppleIDWithEntitlements:(id)a3
{
  v7 = a3;
  if ([v7 secureElementPassProvisioningForMAIDs])
  {
    v4 = 1;
    v5 = v7;
  }

  else
  {
    v6 = [v7 passesAllAccess];
    v5 = v7;
    if (v6)
    {
      goto LABEL_6;
    }

    v4 = 2;
  }

  self->_allowManagedAppleID = v4;
LABEL_6:
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKAddPaymentPassRequestConfiguration;
  [(PKAddPaymentPassRequestConfiguration *)&v2 dealloc];
}

- (PKAddPaymentPassRequestConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = PKAddPaymentPassRequestConfiguration;
  v5 = [(PKAddPaymentPassRequestConfiguration *)&v34 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"encryptionScheme"];
    v7 = [v6 copy];
    encryptionScheme = v5->_encryptionScheme;
    v5->_encryptionScheme = v7;

    v5->_style = [v4 decodeIntegerForKey:@"style"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cardholderName"];
    v10 = [v9 copy];
    cardholderName = v5->_cardholderName;
    v5->_cardholderName = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"primaryAccountSuffix"];
    v13 = [v12 copy];
    primaryAccountSuffix = v5->_primaryAccountSuffix;
    v5->_primaryAccountSuffix = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"cardDetails"];
    v19 = [v18 copy];
    cardDetails = v5->_cardDetails;
    v5->_cardDetails = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedDescription"];
    v22 = [v21 copy];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"primaryAccountIdentifier"];
    v25 = [v24 copy];
    primaryAccountIdentifier = v5->_primaryAccountIdentifier;
    v5->_primaryAccountIdentifier = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"paymentNetwork"];
    v28 = [v27 copy];
    paymentNetwork = v5->_paymentNetwork;
    v5->_paymentNetwork = v28;

    v5->_requiresFelicaSecureElement = [v4 decodeBoolForKey:@"requiresFelicaSecureElement"];
    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"allowManagedAppleID"];
    if ([v30 isEqualToString:@"true"])
    {
      v31 = 1;
    }

    else
    {
      v32 = [v30 isEqualToString:@"false"];
      v31 = 2;
      if (!v32)
      {
        v31 = 0;
      }
    }

    v5->_allowManagedAppleID = v31;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  encryptionScheme = self->_encryptionScheme;
  v8 = a3;
  [v8 encodeObject:encryptionScheme forKey:@"encryptionScheme"];
  [v8 encodeInteger:self->_style forKey:@"style"];
  [v8 encodeObject:self->_cardholderName forKey:@"cardholderName"];
  [v8 encodeObject:self->_primaryAccountSuffix forKey:@"primaryAccountSuffix"];
  [v8 encodeObject:self->_cardDetails forKey:@"cardDetails"];
  [v8 encodeObject:self->_localizedDescription forKey:@"localizedDescription"];
  [v8 encodeObject:self->_primaryAccountIdentifier forKey:@"primaryAccountIdentifier"];
  [v8 encodeObject:self->_paymentNetwork forKey:@"paymentNetwork"];
  [v8 encodeBool:self->_requiresFelicaSecureElement forKey:@"requiresFelicaSecureElement"];
  allowManagedAppleID = self->_allowManagedAppleID;
  v6 = @"true";
  if (allowManagedAppleID != 1)
  {
    v6 = 0;
  }

  if (allowManagedAppleID == 2)
  {
    v7 = @"false";
  }

  else
  {
    v7 = v6;
  }

  [v8 encodeObject:v7 forKey:@"allowManagedAppleID"];
}

- (id)_effectiveDetails
{
  v3 = self->_cardDetails;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v6 = [(NSString *)self->_cardholderName stringByTrimmingCharactersInSet:v5];
  if ([v6 length])
  {
    v7 = [PKLabeledValue alloc];
    v8 = PKLocalizedPaymentString(&cfstr_Name_0.isa, 0);
    v9 = [(PKLabeledValue *)v7 initWithLabel:v8 value:v6];

    [v4 addObject:v9];
  }

  v10 = [(NSString *)self->_primaryAccountSuffix stringByTrimmingCharactersInSet:v5];

  if ([v10 length])
  {
    v11 = [PKLabeledValue alloc];
    v12 = PKLocalizedPaymentString(&cfstr_CardNumber.isa, 0);
    v13 = PKMaskedPaymentPAN(v10);
    v14 = [(PKLabeledValue *)v11 initWithLabel:v12 value:v13];

    [v4 addObject:v14];
  }

  v15 = [(NSArray *)v3 count];
  if (v15)
  {
    v16 = v15;
    for (i = 0; i != v16; ++i)
    {
      v18 = [(NSArray *)v3 objectAtIndexedSubscript:i];
      v19 = [v18 label];
      v20 = [v19 stringByTrimmingCharactersInSet:v5];

      v21 = [v18 value];
      v22 = [v21 stringByTrimmingCharactersInSet:v5];

      if ([v20 length] && objc_msgSend(v22, "length"))
      {
        v23 = [[PKLabeledValue alloc] initWithLabel:v20 value:v22];
        [v4 addObject:v23];
      }
    }
  }

  if ([v4 count] >= 4)
  {
    v24 = 4;
  }

  else
  {
    v24 = [v4 count];
  }

  v25 = [v4 subarrayWithRange:{0, v24}];

  return v25;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"encryptionScheme: '%@'; ", self->_encryptionScheme];
  if (self->_cardholderName)
  {
    v4 = MEMORY[0x1E695E118];
  }

  else
  {
    v4 = MEMORY[0x1E695E110];
  }

  [v3 appendFormat:@"hasCardholderName: '%@'; ", v4];
  if (self->_primaryAccountSuffix)
  {
    [v3 appendFormat:@"primaryAccountSuffix: '%@'; ", self->_primaryAccountSuffix];
  }

  if (self->_localizedDescription)
  {
    [v3 appendFormat:@"localizedDescription: '%@'; ", self->_localizedDescription];
  }

  if (self->_paymentNetwork)
  {
    [v3 appendFormat:@"paymentNetwork: '%@'; ", self->_paymentNetwork];
  }

  [v3 appendFormat:@">"];

  return v3;
}

@end