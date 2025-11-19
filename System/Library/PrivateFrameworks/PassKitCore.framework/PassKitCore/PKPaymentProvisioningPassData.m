@interface PKPaymentProvisioningPassData
- (BOOL)isEqual:(id)a3;
- (PKPaymentProvisioningPassData)initWithCoder:(id)a3;
- (PKPaymentProvisioningPassData)initWithDictionary:(id)a3;
- (PKPaymentProvisioningPassData)initWithPassURL:(id)a3;
- (PKPaymentProvisioningPassData)initWithSecureElementPass:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentProvisioningPassData

- (PKPaymentProvisioningPassData)initWithSecureElementPass:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    p_super = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "[PKPaymentProvisioningPassData initWithSecureElementPass:]";
      _os_log_impl(&dword_1AD337000, p_super, OS_LOG_TYPE_DEFAULT, "%s called with nil pass. Returning self as nil.", buf, 0xCu);
    }

    goto LABEL_6;
  }

  v8.receiver = self;
  v8.super_class = PKPaymentProvisioningPassData;
  self = [(PKPaymentProvisioningPassData *)&v8 init];
  if (self)
  {
    v5 = v4;
    p_super = &self->_secureElementPass->super.super.super;
    self->_secureElementPass = v5;
LABEL_6:
  }

  return self;
}

- (PKPaymentProvisioningPassData)initWithDictionary:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PKPaymentProvisioningPassData;
  v5 = [(PKPaymentProvisioningPassData *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"passURL"];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v6];
      passURL = v5->_passURL;
      v5->_passURL = v8;

      v5->_willProvisionWithAuthenticationDisabled = [v4 PKBoolForKey:@"willProvisionWithAuthenticationDisabled"];
      v10 = [v4 PKStringForKey:@"ownershipToken"];
      ownershipToken = v5->_ownershipToken;
      v5->_ownershipToken = v10;

      v12 = [v4 PKStringForKey:@"ownershipTokenIdentifier"];
      ownershipTokenIdentifier = v5->_ownershipTokenIdentifier;
      v5->_ownershipTokenIdentifier = v12;

      v5->_suppressMakeDefaultPaymentPassOffer = [v4 PKBoolForKey:@"suppressMakeDefaultPaymentPassOffer"];
    }

    else
    {
      v14 = PKLogFacilityTypeGetObject(7uLL);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_opt_class();
        *buf = 138412290;
        v20 = v15;
        v16 = v15;
        _os_log_impl(&dword_1AD337000, v14, OS_LOG_TYPE_DEFAULT, "Malformed response: Missing passURL when creating %@", buf, 0xCu);
      }

      v7 = v5;
      v5 = 0;
    }
  }

  return v5;
}

- (PKPaymentProvisioningPassData)initWithPassURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKPaymentProvisioningPassData;
  v6 = [(PKPaymentProvisioningPassData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_passURL, a3);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  v7 = [(PKObject *)self->_secureElementPass uniqueID];
  [v6 appendFormat:@"pass identifier: '%@'; ", v7];

  v8 = [(NSURL *)self->_passURL absoluteString];
  [v6 appendFormat:@"pass url: '%@'; ", v8];

  [v6 appendFormat:@"deviceCredential: %@; ", self->_deviceCredential];
  if (self->_willProvisionWithAuthenticationDisabled)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v6 appendFormat:@"willProvisionWithAuthenticationDisabled: '%@'; ", v9];
  if (self->_suppressMakeDefaultPaymentPassOffer)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  [v6 appendFormat:@"suppressMakeDefaultPaymentPassOffer: '%@'; ", v10];
  [v6 appendFormat:@"ownershipToken: '%@'; ", self->_ownershipToken];
  [v6 appendFormat:@"ownershipTokenIdentifier: '%@'; ", self->_ownershipTokenIdentifier];
  [v6 appendFormat:@">"];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(PKObject *)self->_secureElementPass uniqueID];
      v6 = [(PKObject *)v4->_secureElementPass uniqueID];
      v7 = v5;
      v8 = v6;
      v9 = v8;
      if (v7 == v8)
      {
        v10 = 1;
      }

      else
      {
        v10 = 0;
        if (v7 && v8)
        {
          v10 = [v7 isEqualToString:v8];
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (self->_passURL)
  {
    v7[0] = self->_passURL;
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  else
  {
    v3 = [(PKObject *)self->_secureElementPass uniqueID];
    v6 = v3;
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1];
  }

  v4 = PKCombinedHash(17, v2);

  return v4;
}

- (PKPaymentProvisioningPassData)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PKPaymentProvisioningPassData;
  v5 = [(PKPaymentProvisioningPassData *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"passURL"];
    passURL = v5->_passURL;
    v5->_passURL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secureElementPass"];
    secureElementPass = v5->_secureElementPass;
    v5->_secureElementPass = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceCredential"];
    deviceCredential = v5->_deviceCredential;
    v5->_deviceCredential = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ownershipToken"];
    ownershipToken = v5->_ownershipToken;
    v5->_ownershipToken = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ownershipTokenIdentifier"];
    ownershipTokenIdentifier = v5->_ownershipTokenIdentifier;
    v5->_ownershipTokenIdentifier = v14;

    v5->_willProvisionWithAuthenticationDisabled = [v4 decodeBoolForKey:@"willProvisionWithAuthenticationDisabled"];
    v5->_suppressMakeDefaultPaymentPassOffer = [v4 decodeBoolForKey:@"suppressMakeDefaultPaymentPassOffer"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  passURL = self->_passURL;
  v5 = a3;
  [v5 encodeObject:passURL forKey:@"passURL"];
  [v5 encodeObject:self->_secureElementPass forKey:@"secureElementPass"];
  [v5 encodeObject:self->_deviceCredential forKey:@"deviceCredential"];
  [v5 encodeObject:self->_ownershipToken forKey:@"ownershipToken"];
  [v5 encodeObject:self->_ownershipTokenIdentifier forKey:@"ownershipTokenIdentifier"];
  [v5 encodeBool:self->_willProvisionWithAuthenticationDisabled forKey:@"willProvisionWithAuthenticationDisabled"];
  [v5 encodeBool:self->_suppressMakeDefaultPaymentPassOffer forKey:@"suppressMakeDefaultPaymentPassOffer"];
}

@end