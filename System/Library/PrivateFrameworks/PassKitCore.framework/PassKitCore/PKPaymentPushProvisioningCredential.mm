@interface PKPaymentPushProvisioningCredential
- (PKPaymentPushProvisioningCredential)initWithCoder:(id)coder;
- (PKPaymentPushProvisioningCredential)initWithDict:(id)dict;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentPushProvisioningCredential

- (PKPaymentPushProvisioningCredential)initWithDict:(id)dict
{
  dictCopy = dict;
  if (dictCopy)
  {
    v28.receiver = self;
    v28.super_class = PKPaymentPushProvisioningCredential;
    v5 = [(PKPaymentPushProvisioningCredential *)&v28 init];
    if (!v5)
    {
LABEL_15:
      self = v5;
      selfCopy = self;
      goto LABEL_16;
    }

    v6 = [dictCopy PKStringForKey:@"type"];
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
          v5->_securityOptions = [dictCopy PKIntegerForKey:@"securityOptions"];
          v10 = [dictCopy PKStringForKey:@"sharingInstanceIdentifier"];
          sharingInstanceIdentifier = v5->_sharingInstanceIdentifier;
          v5->_sharingInstanceIdentifier = v10;

          v12 = [dictCopy PKStringForKey:@"provisioningCredentialIdentifierHash"];
          provisioningCredentialIdentifierHash = v5->_provisioningCredentialIdentifierHash;
          v5->_provisioningCredentialIdentifierHash = v12;

          v14 = [dictCopy PKStringForKey:@"credentialAuthorityIdentifier"];
          credentialAuthorityIdentifier = v5->_credentialAuthorityIdentifier;
          v5->_credentialAuthorityIdentifier = v14;

          v16 = [dictCopy PKNumberForKey:@"source"];
          v17 = v16;
          if (v16)
          {
            integerValue = [v16 integerValue];
            v5->_source = integerValue;
            p_source = &v5->_source;
            if ((integerValue - 1) < 0xB)
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
          v21 = [dictCopy PKStringForKey:@"accountIdentifier"];
          accountIdentifier = v5->_accountIdentifier;
          v5->_accountIdentifier = v21;

          v23 = [dictCopy PKStringForKey:@"featureIdentifier"];
          v5->_feature = PKFeatureIdentifierFromString(v23);

          goto LABEL_15;
        }
      }

      v9 = 2;
    }

    v5->_type = v9;
    goto LABEL_8;
  }

  selfCopy = 0;
LABEL_16:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  sharingInstanceIdentifier = self->_sharingInstanceIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:sharingInstanceIdentifier forKey:@"sharingInstanceIdentifier"];
  [coderCopy encodeObject:self->_provisioningCredentialIdentifierHash forKey:@"provisioningCredentialIdentifierHash"];
  [coderCopy encodeInteger:self->_source forKey:@"source"];
}

- (PKPaymentPushProvisioningCredential)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKPaymentPushProvisioningCredential;
  v5 = [(PKPaymentPushProvisioningCredential *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingInstanceIdentifier"];
    sharingInstanceIdentifier = v5->_sharingInstanceIdentifier;
    v5->_sharingInstanceIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"provisioningCredentialIdentifierHash"];
    provisioningCredentialIdentifierHash = v5->_provisioningCredentialIdentifierHash;
    v5->_provisioningCredentialIdentifierHash = v8;

    v5->_source = [coderCopy decodeIntegerForKey:@"source"];
  }

  return v5;
}

@end