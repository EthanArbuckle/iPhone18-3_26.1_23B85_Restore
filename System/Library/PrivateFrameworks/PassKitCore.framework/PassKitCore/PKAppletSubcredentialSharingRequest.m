@interface PKAppletSubcredentialSharingRequest
- (PKAppletSubcredentialSharingRequest)initWithCoder:(id)a3;
- (PKAppletSubcredentialSharingRequest)initWithPaymentPass:(id)a3 entitlements:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)credentialForPass:(id)a3;
- (id)credentialWithIdentifier:(id)a3;
- (id)invitations;
- (void)encodeWithCoder:(id)a3;
- (void)setPass:(id)a3;
@end

@implementation PKAppletSubcredentialSharingRequest

- (PKAppletSubcredentialSharingRequest)initWithPaymentPass:(id)a3 entitlements:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(PKAppletSubcredentialSharingRequest *)self init];
  v9 = v8;
  if (v8)
  {
    [(PKAppletSubcredentialSharingRequest *)v8 setPass:v6];
    if (v9->_credential)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v10 = v7;
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

      v16 = [v10 firstObject];
      entitlement = v9->_entitlement;
      v9->_entitlement = v16;

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

- (id)credentialForPass:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a3 devicePaymentApplications];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
        objc_enumerationMutation(v3);
      }

      v8 = [*(*(&v11 + 1) + 8 * v7) subcredentials];
      v9 = [v8 anyObject];

      if (v9)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
    v9 = 0;
  }

  return v9;
}

- (id)credentialWithIdentifier:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(PKSecureElementPass *)self->_pass devicePaymentApplications];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
        objc_enumerationMutation(v5);
      }

      v10 = [*(*(&v15 + 1) + 8 * v9) subcredentials];
      v11 = [v10 anyObject];

      v12 = [v11 identifier];
      v13 = [v12 isEqualToString:v4];

      if (v13)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
    v11 = 0;
  }

  return v11;
}

- (void)setPass:(id)a3
{
  v5 = a3;
  if (self->_pass != v5)
  {
    v13 = v5;
    objc_storeStrong(&self->_pass, a3);
    v6 = [(PKObject *)v13 uniqueID];
    passIdentifier = self->_passIdentifier;
    self->_passIdentifier = v6;

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

      v12 = [(PKAppletSubcredential *)self->_credential identifier];
      credential = self->_credentialIdentifier;
      self->_credentialIdentifier = v12;
    }

    v5 = v13;
  }
}

- (id)invitations
{
  v38 = *MEMORY[0x1E69E9840];
  if (!self->_recipientIdentifier || !self->_recipientName)
  {
    v3 = PKLogFacilityTypeGetObject(0x17uLL);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
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
    _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, v28, buf, 0xCu);
    goto LABEL_21;
  }

  if (!self->_entitlement)
  {
    v3 = PKLogFacilityTypeGetObject(0x17uLL);
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    v29 = self->_passIdentifier;
    *buf = 138412290;
    v37 = v29;
    v28 = "Unable to create invitations for pass %@ - no entitlement set";
    goto LABEL_20;
  }

  v3 = [(PKPass *)self->_pass organizationName];
  if (v3)
  {
    v4 = [(PKPass *)self->_pass localizedDescription];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 length];
      v7 = [v3 length];
      v8 = v7 + 1;
      if (v6 > v7 + 1)
      {
        v9 = v7;
        if ([v5 hasPrefix:v3])
        {
          v10 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
          v11 = [v10 characterIsMember:{-[NSObject characterAtIndex:](v5, "characterAtIndex:", v9)}];

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
        v13 = [(PKAppletSubcredential *)self->_credential partnerIdentifier];
        v14 = [(PKAppletSubcredential *)self->_credential brandIdentifier];
        v15 = [(PKAppletSubcredential *)self->_credential pairedReaderIdentifier];
        recipientName = self->_recipientName;
        v17 = [(PKPassEntitlement *)self->_entitlement value];
        v18 = -[PKAppletSubcredentialSharingInvitation initWithPartnerIdentifier:brandIdentifier:pairedReaderIdentifier:recipientName:entitlement:supportedRadioTechnologies:](v34, "initWithPartnerIdentifier:brandIdentifier:pairedReaderIdentifier:recipientName:entitlement:supportedRadioTechnologies:", v13, v14, v15, recipientName, [v17 unsignedIntegerValue], -[PKAppletSubcredential supportedRadioTechnologies](self->_credential, "supportedRadioTechnologies"));

        if (v18)
        {
          [(PKAppletSubcredentialSharingInvitation *)v18 setIssuer:v3];
          [(PKAppletSubcredentialSharingInvitation *)v18 setDeviceModel:v5];
          [v35 addObject:v18];
        }
      }

      v19 = [PKAppletSubcredentialSharingInvitation alloc];
      v20 = [(PKAppletSubcredential *)self->_credential partnerIdentifier];
      v21 = [(PKAppletSubcredential *)self->_credential brandIdentifier];
      v22 = [(PKAppletSubcredential *)self->_credential pairedReaderIdentifier];
      v23 = self->_recipientName;
      v24 = [(PKPassEntitlement *)self->_entitlement value];
      v25 = -[PKAppletSubcredentialSharingInvitation initWithPartnerIdentifier:brandIdentifier:pairedReaderIdentifier:recipientName:entitlement:supportedRadioTechnologies:](v19, "initWithPartnerIdentifier:brandIdentifier:pairedReaderIdentifier:recipientName:entitlement:supportedRadioTechnologies:", v20, v21, v22, v23, [v24 unsignedIntegerValue], -[PKAppletSubcredential supportedRadioTechnologies](self->_credential, "supportedRadioTechnologies"));

      if (v25)
      {
        [(PKAppletSubcredentialSharingInvitation *)v25 setForWatch:1];
        [(PKAppletSubcredentialSharingInvitation *)v25 setIssuer:v3];
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

- (void)encodeWithCoder:(id)a3
{
  passIdentifier = self->_passIdentifier;
  v5 = a3;
  [v5 encodeObject:passIdentifier forKey:@"passIdentifier"];
  [v5 encodeObject:self->_credentialIdentifier forKey:@"credentialIdentifier"];
  [v5 encodeObject:self->_entitlement forKey:@"entitlement"];
  [v5 encodeObject:self->_recipientIdentifier forKey:@"recipientIdentifier"];
  [v5 encodeObject:self->_recipientName forKey:@"recipientName"];
  [v5 encodeBool:self->_forLocalDevice forKey:@"forLocalDevice"];
}

- (PKAppletSubcredentialSharingRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKAppletSubcredentialSharingRequest *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passIdentifier"];
    passIdentifier = v5->_passIdentifier;
    v5->_passIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credentialIdentifier"];
    credentialIdentifier = v5->_credentialIdentifier;
    v5->_credentialIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"entitlement"];
    entitlement = v5->_entitlement;
    v5->_entitlement = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recipientIdentifier"];
    recipientIdentifier = v5->_recipientIdentifier;
    v5->_recipientIdentifier = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recipientName"];
    recipientName = v5->_recipientName;
    v5->_recipientName = v14;

    v5->_forLocalDevice = [v4 decodeBoolForKey:@"forLocalDevice"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  objc_storeStrong((v4 + 48), self->_entitlement);
  objc_storeStrong((v4 + 56), self->_recipientIdentifier);
  objc_storeStrong((v4 + 64), self->_recipientName);
  *(v4 + 8) = self->_forLocalDevice;
  return v4;
}

@end