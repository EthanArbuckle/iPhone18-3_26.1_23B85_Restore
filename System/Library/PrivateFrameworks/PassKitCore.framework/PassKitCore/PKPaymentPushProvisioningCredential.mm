@interface PKPaymentPushProvisioningCredential
- (PKPaymentPushProvisioningCredential)initWithCoder:(id)a3;
- (PKPaymentPushProvisioningCredential)initWithDict:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentPushProvisioningCredential

- (PKPaymentPushProvisioningCredential)initWithDict:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v28.receiver = self;
    v28.super_class = PKPaymentPushProvisioningCredential;
    v5 = [(PKPaymentPushProvisioningCredential *)&v28 init];
    if (!v5)
    {
LABEL_15:
      self = v5;
      v20 = self;
      goto LABEL_16;
    }

    v6 = [v4 PKStringForKey:@"type"];
    v7 = v6;
    if (v6 == @"sharedCredential")
    {
      goto LABEL_6;
    }

    if (!v6)
    {
      goto LABEL_8;
    }

    v8 = [(__CFString *)v6 isEqualToString:@"sharedCredential"];

    if (v8)
    {
LABEL_6:
      v9 = 1;
    }

    else
    {
      v25 = v7;
      if (v25 != @"appleFeature")
      {
        v26 = v25;
        v27 = [(__CFString *)v25 isEqualToString:@"appleFeature"];

        if (!v27)
        {
LABEL_8:
          v5->_securityOptions = [v4 PKIntegerForKey:@"securityOptions"];
          v10 = [v4 PKStringForKey:@"sharingInstanceIdentifier"];
          sharingInstanceIdentifier = v5->_sharingInstanceIdentifier;
          v5->_sharingInstanceIdentifier = v10;

          v12 = [v4 PKStringForKey:@"provisioningCredentialIdentifierHash"];
          provisioningCredentialIdentifierHash = v5->_provisioningCredentialIdentifierHash;
          v5->_provisioningCredentialIdentifierHash = v12;

          v14 = [v4 PKStringForKey:@"credentialAuthorityIdentifier"];
          credentialAuthorityIdentifier = v5->_credentialAuthorityIdentifier;
          v5->_credentialAuthorityIdentifier = v14;

          v16 = [v4 PKNumberForKey:@"source"];
          v17 = v16;
          if (v16)
          {
            v18 = [v16 integerValue];
            v5->_source = v18;
            p_source = &v5->_source;
            if ((v18 - 1) < 0xB)
            {
              goto LABEL_14;
            }
          }

          else
          {
            p_source = &v5->_source;
          }

          *p_source = 1;
LABEL_14:
          v21 = [v4 PKStringForKey:@"accountIdentifier"];
          accountIdentifier = v5->_accountIdentifier;
          v5->_accountIdentifier = v21;

          v23 = [v4 PKStringForKey:@"featureIdentifier"];
          v5->_feature = PKFeatureIdentifierFromString(v23);

          goto LABEL_15;
        }
      }

      v9 = 2;
    }

    v5->_type = v9;
    goto LABEL_8;
  }

  v20 = 0;
LABEL_16:

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  sharingInstanceIdentifier = self->_sharingInstanceIdentifier;
  v5 = a3;
  [v5 encodeObject:sharingInstanceIdentifier forKey:@"sharingInstanceIdentifier"];
  [v5 encodeObject:self->_provisioningCredentialIdentifierHash forKey:@"provisioningCredentialIdentifierHash"];
  [v5 encodeInteger:self->_source forKey:@"source"];
}

- (PKPaymentPushProvisioningCredential)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPaymentPushProvisioningCredential;
  v5 = [(PKPaymentPushProvisioningCredential *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharingInstanceIdentifier"];
    sharingInstanceIdentifier = v5->_sharingInstanceIdentifier;
    v5->_sharingInstanceIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"provisioningCredentialIdentifierHash"];
    provisioningCredentialIdentifierHash = v5->_provisioningCredentialIdentifierHash;
    v5->_provisioningCredentialIdentifierHash = v8;

    v5->_source = [v4 decodeIntegerForKey:@"source"];
  }

  return v5;
}

@end