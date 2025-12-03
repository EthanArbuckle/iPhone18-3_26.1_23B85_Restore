@interface PKAddPaymentPassRequestConfiguration
- (PKAddPaymentPassRequestConfiguration)initWithCoder:(id)coder;
- (PKAddPaymentPassRequestConfiguration)initWithEncryptionScheme:(PKEncryptionScheme)encryptionScheme;
- (id)_effectiveDetails;
- (id)_filterWebServices:(id)services primaryAccountIdentifierRequired:(BOOL)required;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)updateAllowManagedAppleIDWithEntitlements:(id)entitlements;
@end

@implementation PKAddPaymentPassRequestConfiguration

- (id)_filterWebServices:(id)services primaryAccountIdentifierRequired:(BOOL)required
{
  requiredCopy = required;
  v52 = *MEMORY[0x1E69E9840];
  servicesCopy = services;
  v7 = [servicesCopy count];
  if (!v7)
  {
    goto LABEL_50;
  }

  primaryAccountIdentifier = [(PKAddPaymentPassRequestConfiguration *)self primaryAccountIdentifier];
  paymentNetwork = [(PKAddPaymentPassRequestConfiguration *)self paymentNetwork];
  requiresFelicaSecureElement = [(PKAddPaymentPassRequestConfiguration *)self requiresFelicaSecureElement];
  v11 = [paymentNetwork isEqualToString:@"HID"];
  if (([paymentNetwork isEqualToString:@"BMAC"] & 1) == 0)
  {
    v12 = [paymentNetwork isEqualToString:@"SPTCC"];
    if (primaryAccountIdentifier)
    {
      goto LABEL_4;
    }

LABEL_6:
    v13 = 0;
    goto LABEL_7;
  }

  v12 = 1;
  if (!primaryAccountIdentifier)
  {
    goto LABEL_6;
  }

LABEL_4:
  v13 = [primaryAccountIdentifier length] != 0;
LABEL_7:
  if ((((v13 || requiresFelicaSecureElement) | v12 | v11) & 1) == 0)
  {
    servicesCopy = servicesCopy;
    goto LABEL_49;
  }

  v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v7];
  v15 = v14;
  v41 = v12;
  v39 = paymentNetwork;
  v37 = requiredCopy;
  if (((requiresFelicaSecureElement | v12 | v11) & 1) == 0)
  {
    goto LABEL_34;
  }

  v35 = v13;
  v38 = v14;
  v36 = primaryAccountIdentifier;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = servicesCopy;
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
      targetDevice = [v20 targetDevice];
      if (requiresFelicaSecureElement)
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_27;
        }

        felicaSecureElementIsAvailable = [targetDevice felicaSecureElementIsAvailable];
      }

      else
      {
        felicaSecureElementIsAvailable = 1;
      }

      if ((felicaSecureElementIsAvailable & v11) == 1)
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_27;
        }

        felicaSecureElementIsAvailable = [targetDevice supportsExpressForAutomaticSelectionTechnologyType:2];
      }

      if ((felicaSecureElementIsAvailable & v41) != 1)
      {
        if (!felicaSecureElementIsAvailable)
        {
          goto LABEL_27;
        }

LABEL_26:
        [v38 addObject:v20];
        goto LABEL_27;
      }

      v24 = PKPaymentCredentialTypeForPaymentNetworkName(v39);
      if (objc_opt_respondsToSelector() & 1) != 0 && ([targetDevice supportsCredentialType:v24])
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
    servicesCopy = [v38 copy];
  }

  else
  {
    servicesCopy = 0;
  }

  v13 = v35;

  [v38 removeAllObjects];
  primaryAccountIdentifier = v36;
  paymentNetwork = v39;
LABEL_34:
  if (v13)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    servicesCopy = servicesCopy;
    v25 = [servicesCopy countByEnumeratingWithState:&v42 objects:v50 count:16];
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
            objc_enumerationMutation(servicesCopy);
          }

          v29 = *(*(&v42 + 1) + 8 * j);
          v30 = objc_autoreleasePoolPush();
          targetDevice2 = [v29 targetDevice];
          v32 = [targetDevice2 paymentWebService:v29 canProvisionPaymentPassWithPrimaryAccountIdentifier:primaryAccountIdentifier];

          if (v32)
          {
            [v15 addObject:v29];
          }

          objc_autoreleasePoolPop(v30);
        }

        v26 = [servicesCopy countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v26);
    }

    if ([v15 count])
    {
      v33 = [v15 copy];

      [v15 removeAllObjects];
      servicesCopy = v33;
      paymentNetwork = v39;
    }

    else
    {
      paymentNetwork = v39;
      if (v37)
      {

        servicesCopy = 0;
      }
    }
  }

  servicesCopy = servicesCopy;

LABEL_49:
  v7 = servicesCopy;
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

- (void)updateAllowManagedAppleIDWithEntitlements:(id)entitlements
{
  entitlementsCopy = entitlements;
  if ([entitlementsCopy secureElementPassProvisioningForMAIDs])
  {
    v4 = 1;
    v5 = entitlementsCopy;
  }

  else
  {
    passesAllAccess = [entitlementsCopy passesAllAccess];
    v5 = entitlementsCopy;
    if (passesAllAccess)
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

- (PKAddPaymentPassRequestConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v34.receiver = self;
  v34.super_class = PKAddPaymentPassRequestConfiguration;
  v5 = [(PKAddPaymentPassRequestConfiguration *)&v34 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encryptionScheme"];
    v7 = [v6 copy];
    encryptionScheme = v5->_encryptionScheme;
    v5->_encryptionScheme = v7;

    v5->_style = [coderCopy decodeIntegerForKey:@"style"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cardholderName"];
    v10 = [v9 copy];
    cardholderName = v5->_cardholderName;
    v5->_cardholderName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryAccountSuffix"];
    v13 = [v12 copy];
    primaryAccountSuffix = v5->_primaryAccountSuffix;
    v5->_primaryAccountSuffix = v13;

    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"cardDetails"];
    v19 = [v18 copy];
    cardDetails = v5->_cardDetails;
    v5->_cardDetails = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedDescription"];
    v22 = [v21 copy];
    localizedDescription = v5->_localizedDescription;
    v5->_localizedDescription = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryAccountIdentifier"];
    v25 = [v24 copy];
    primaryAccountIdentifier = v5->_primaryAccountIdentifier;
    v5->_primaryAccountIdentifier = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"paymentNetwork"];
    v28 = [v27 copy];
    paymentNetwork = v5->_paymentNetwork;
    v5->_paymentNetwork = v28;

    v5->_requiresFelicaSecureElement = [coderCopy decodeBoolForKey:@"requiresFelicaSecureElement"];
    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"allowManagedAppleID"];
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

- (void)encodeWithCoder:(id)coder
{
  encryptionScheme = self->_encryptionScheme;
  coderCopy = coder;
  [coderCopy encodeObject:encryptionScheme forKey:@"encryptionScheme"];
  [coderCopy encodeInteger:self->_style forKey:@"style"];
  [coderCopy encodeObject:self->_cardholderName forKey:@"cardholderName"];
  [coderCopy encodeObject:self->_primaryAccountSuffix forKey:@"primaryAccountSuffix"];
  [coderCopy encodeObject:self->_cardDetails forKey:@"cardDetails"];
  [coderCopy encodeObject:self->_localizedDescription forKey:@"localizedDescription"];
  [coderCopy encodeObject:self->_primaryAccountIdentifier forKey:@"primaryAccountIdentifier"];
  [coderCopy encodeObject:self->_paymentNetwork forKey:@"paymentNetwork"];
  [coderCopy encodeBool:self->_requiresFelicaSecureElement forKey:@"requiresFelicaSecureElement"];
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

  [coderCopy encodeObject:v7 forKey:@"allowManagedAppleID"];
}

- (id)_effectiveDetails
{
  v3 = self->_cardDetails;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v6 = [(NSString *)self->_cardholderName stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  if ([v6 length])
  {
    v7 = [PKLabeledValue alloc];
    v8 = PKLocalizedPaymentString(&cfstr_Name_0.isa, 0);
    v9 = [(PKLabeledValue *)v7 initWithLabel:v8 value:v6];

    [v4 addObject:v9];
  }

  v10 = [(NSString *)self->_primaryAccountSuffix stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

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
      label = [v18 label];
      v20 = [label stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

      value = [v18 value];
      v22 = [value stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

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