@interface PKAppletSubcredentialSharingRequest
- (PKAppletSubcredentialSharingRequest)initWithCoder:(id)coder;
- (PKAppletSubcredentialSharingRequest)initWithPaymentPass:(id)pass entitlements:(id)entitlements;
- (id)copyWithZone:(_NSZone *)zone;
- (id)credentialForPass:(id)pass;
- (id)credentialWithIdentifier:(id)identifier;
- (id)invitations;
- (void)encodeWithCoder:(id)coder;
- (void)setPass:(id)pass;
@end

@implementation PKAppletSubcredentialSharingRequest

- (PKAppletSubcredentialSharingRequest)initWithPaymentPass:(id)pass entitlements:(id)entitlements
{
  v31 = *MEMORY[0x1E69E9840];
  passCopy = pass;
  entitlementsCopy = entitlements;
  v8 = [(PKAppletSubcredentialSharingRequest *)self init];
  v9 = v8;
  if (v8)
  {
    [(PKAppletSubcredentialSharingRequest *)v8 setPass:passCopy];
    if (v9->_credential)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v10 = entitlementsCopy;
      v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v25;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v25 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v24 + 1) + 8 * i);
            if (![v15 carKeyEntitlementType])
            {
              objc_storeStrong(&v9->_entitlement, v15);
              goto LABEL_13;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:

      if (v9->_entitlement)
      {
        goto LABEL_15;
      }

      firstObject = [v10 firstObject];
      entitlement = v9->_entitlement;
      v9->_entitlement = firstObject;

      if (v9->_entitlement)
      {
        goto LABEL_15;
      }

      v19 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        passIdentifier = v9->_passIdentifier;
        *buf = 138412290;
        v30 = passIdentifier;
        v21 = "Unable to create sharing request for pass %@ - no entitlements found";
        goto LABEL_18;
      }
    }

    else
    {
      v19 = PKLogFacilityTypeGetObject(0x17uLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = v9->_passIdentifier;
        *buf = 138412290;
        v30 = v20;
        v21 = "Unable to create sharing request for pass %@ - no credential found";
LABEL_18:
        _os_log_impl(&dword_1AD337000, v19, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
      }
    }

    v18 = 0;
    goto LABEL_20;
  }

LABEL_15:
  v18 = v9;
LABEL_20:

  return v18;
}

- (id)credentialForPass:(id)pass
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  devicePaymentApplications = [pass devicePaymentApplications];
  v4 = [devicePaymentApplications countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(devicePaymentApplications);
      }

      subcredentials = [*(*(&v11 + 1) + 8 * v7) subcredentials];
      anyObject = [subcredentials anyObject];

      if (anyObject)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [devicePaymentApplications countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
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
    anyObject = 0;
  }

  return anyObject;
}

- (id)credentialWithIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  devicePaymentApplications = [(PKSecureElementPass *)self->_pass devicePaymentApplications];
  v6 = [devicePaymentApplications countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(devicePaymentApplications);
      }

      subcredentials = [*(*(&v15 + 1) + 8 * v9) subcredentials];
      anyObject = [subcredentials anyObject];

      identifier = [anyObject identifier];
      v13 = [identifier isEqualToString:identifierCopy];

      if (v13)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [devicePaymentApplications countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
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
    anyObject = 0;
  }

  return anyObject;
}

- (void)setPass:(id)pass
{
  passCopy = pass;
  if (self->_pass != passCopy)
  {
    v13 = passCopy;
    objc_storeStrong(&self->_pass, pass);
    uniqueID = [(PKObject *)v13 uniqueID];
    passIdentifier = self->_passIdentifier;
    self->_passIdentifier = uniqueID;

    if (self->_credentialIdentifier)
    {
      v8 = [(PKAppletSubcredentialSharingRequest *)self credentialWithIdentifier:?];
      credential = self->_credential;
      self->_credential = v8;
    }

    else
    {
      v10 = [(PKAppletSubcredentialSharingRequest *)self credentialForPass:self->_pass];
      v11 = self->_credential;
      self->_credential = v10;

      identifier = [(PKAppletSubcredential *)self->_credential identifier];
      credential = self->_credentialIdentifier;
      self->_credentialIdentifier = identifier;
    }

    passCopy = v13;
  }
}

- (id)invitations
{
  v38 = *MEMORY[0x1E69E9840];
  if (!self->_recipientIdentifier || !self->_recipientName)
  {
    organizationName = PKLogFacilityTypeGetObject(0x17uLL);
    if (!os_log_type_enabled(organizationName, OS_LOG_TYPE_DEFAULT))
    {
LABEL_21:
      v26 = 0;
      goto LABEL_33;
    }

    passIdentifier = self->_passIdentifier;
    *buf = 138412290;
    v37 = passIdentifier;
    v28 = "Unable to create invitations for pass %@ - no recipient set";
LABEL_20:
    _os_log_impl(&dword_1AD337000, organizationName, OS_LOG_TYPE_DEFAULT, v28, buf, 0xCu);
    goto LABEL_21;
  }

  if (!self->_entitlement)
  {
    organizationName = PKLogFacilityTypeGetObject(0x17uLL);
    if (!os_log_type_enabled(organizationName, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    v29 = self->_passIdentifier;
    *buf = 138412290;
    v37 = v29;
    v28 = "Unable to create invitations for pass %@ - no entitlement set";
    goto LABEL_20;
  }

  organizationName = [(PKPass *)self->_pass organizationName];
  if (organizationName)
  {
    localizedDescription = [(PKPass *)self->_pass localizedDescription];
    if (localizedDescription)
    {
      v5 = localizedDescription;
      v6 = [localizedDescription length];
      v7 = [organizationName length];
      v8 = v7 + 1;
      if (v6 > v7 + 1)
      {
        v9 = v7;
        if ([v5 hasPrefix:organizationName])
        {
          whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
          v11 = [whitespaceCharacterSet characterIsMember:{-[NSObject characterAtIndex:](v5, "characterAtIndex:", v9)}];

          if (v11)
          {
            v12 = [v5 substringFromIndex:v8];

            v5 = v12;
          }
        }
      }

      v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (!self->_forLocalDevice)
      {
        v34 = [PKAppletSubcredentialSharingInvitation alloc];
        partnerIdentifier = [(PKAppletSubcredential *)self->_credential partnerIdentifier];
        brandIdentifier = [(PKAppletSubcredential *)self->_credential brandIdentifier];
        pairedReaderIdentifier = [(PKAppletSubcredential *)self->_credential pairedReaderIdentifier];
        recipientName = self->_recipientName;
        value = [(PKPassEntitlement *)self->_entitlement value];
        v18 = -[PKAppletSubcredentialSharingInvitation initWithPartnerIdentifier:brandIdentifier:pairedReaderIdentifier:recipientName:entitlement:supportedRadioTechnologies:](v34, "initWithPartnerIdentifier:brandIdentifier:pairedReaderIdentifier:recipientName:entitlement:supportedRadioTechnologies:", partnerIdentifier, brandIdentifier, pairedReaderIdentifier, recipientName, [value unsignedIntegerValue], -[PKAppletSubcredential supportedRadioTechnologies](self->_credential, "supportedRadioTechnologies"));

        if (v18)
        {
          [(PKAppletSubcredentialSharingInvitation *)v18 setIssuer:organizationName];
          [(PKAppletSubcredentialSharingInvitation *)v18 setDeviceModel:v5];
          [v35 addObject:v18];
        }
      }

      v19 = [PKAppletSubcredentialSharingInvitation alloc];
      partnerIdentifier2 = [(PKAppletSubcredential *)self->_credential partnerIdentifier];
      brandIdentifier2 = [(PKAppletSubcredential *)self->_credential brandIdentifier];
      pairedReaderIdentifier2 = [(PKAppletSubcredential *)self->_credential pairedReaderIdentifier];
      v23 = self->_recipientName;
      value2 = [(PKPassEntitlement *)self->_entitlement value];
      v25 = -[PKAppletSubcredentialSharingInvitation initWithPartnerIdentifier:brandIdentifier:pairedReaderIdentifier:recipientName:entitlement:supportedRadioTechnologies:](v19, "initWithPartnerIdentifier:brandIdentifier:pairedReaderIdentifier:recipientName:entitlement:supportedRadioTechnologies:", partnerIdentifier2, brandIdentifier2, pairedReaderIdentifier2, v23, [value2 unsignedIntegerValue], -[PKAppletSubcredential supportedRadioTechnologies](self->_credential, "supportedRadioTechnologies"));

      if (v25)
      {
        [(PKAppletSubcredentialSharingInvitation *)v25 setForWatch:1];
        [(PKAppletSubcredentialSharingInvitation *)v25 setIssuer:organizationName];
        [(PKAppletSubcredentialSharingInvitation *)v25 setDeviceModel:v5];
        [v35 addObject:v25];
      }

      if ([v35 count])
      {
        v26 = [v35 copy];
      }

      else
      {
        v26 = 0;
      }

      goto LABEL_32;
    }

    v5 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v32 = self->_passIdentifier;
      *buf = 138412290;
      v37 = v32;
      v31 = "Unable to create invitations for pass %@ - no device model";
      goto LABEL_28;
    }
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject(0x17uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v30 = self->_passIdentifier;
      *buf = 138412290;
      v37 = v30;
      v31 = "Unable to create invitations for pass %@ - no issuer";
LABEL_28:
      _os_log_impl(&dword_1AD337000, v5, OS_LOG_TYPE_DEFAULT, v31, buf, 0xCu);
    }
  }

  v26 = 0;
LABEL_32:

LABEL_33:

  return v26;
}

- (void)encodeWithCoder:(id)coder
{
  passIdentifier = self->_passIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:passIdentifier forKey:@"passIdentifier"];
  [coderCopy encodeObject:self->_credentialIdentifier forKey:@"credentialIdentifier"];
  [coderCopy encodeObject:self->_entitlement forKey:@"entitlement"];
  [coderCopy encodeObject:self->_recipientIdentifier forKey:@"recipientIdentifier"];
  [coderCopy encodeObject:self->_recipientName forKey:@"recipientName"];
  [coderCopy encodeBool:self->_forLocalDevice forKey:@"forLocalDevice"];
}

- (PKAppletSubcredentialSharingRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PKAppletSubcredentialSharingRequest *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passIdentifier"];
    passIdentifier = v5->_passIdentifier;
    v5->_passIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialIdentifier"];
    credentialIdentifier = v5->_credentialIdentifier;
    v5->_credentialIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entitlement"];
    entitlement = v5->_entitlement;
    v5->_entitlement = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recipientIdentifier"];
    recipientIdentifier = v5->_recipientIdentifier;
    v5->_recipientIdentifier = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recipientName"];
    recipientName = v5->_recipientName;
    v5->_recipientName = v14;

    v5->_forLocalDevice = [coderCopy decodeBoolForKey:@"forLocalDevice"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  objc_storeStrong((v4 + 48), self->_entitlement);
  objc_storeStrong((v4 + 56), self->_recipientIdentifier);
  objc_storeStrong((v4 + 64), self->_recipientName);
  *(v4 + 8) = self->_forLocalDevice;
  return v4;
}

@end