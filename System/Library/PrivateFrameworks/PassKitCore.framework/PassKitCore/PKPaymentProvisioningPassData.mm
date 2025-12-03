@interface PKPaymentProvisioningPassData
- (BOOL)isEqual:(id)equal;
- (PKPaymentProvisioningPassData)initWithCoder:(id)coder;
- (PKPaymentProvisioningPassData)initWithDictionary:(id)dictionary;
- (PKPaymentProvisioningPassData)initWithPassURL:(id)l;
- (PKPaymentProvisioningPassData)initWithSecureElementPass:(id)pass;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentProvisioningPassData

- (PKPaymentProvisioningPassData)initWithSecureElementPass:(id)pass
{
  v11 = *MEMORY[0x1E69E9840];
  passCopy = pass;
  if (!passCopy)
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
    v5 = passCopy;
    p_super = &self->_secureElementPass->super.super.super;
    self->_secureElementPass = v5;
LABEL_6:
  }

  return self;
}

- (PKPaymentProvisioningPassData)initWithDictionary:(id)dictionary
{
  v21 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = PKPaymentProvisioningPassData;
  v5 = [(PKPaymentProvisioningPassData *)&v18 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"passURL"];
    if (v6)
    {
      v7 = v6;
      v8 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v6];
      passURL = v5->_passURL;
      v5->_passURL = v8;

      v5->_willProvisionWithAuthenticationDisabled = [dictionaryCopy PKBoolForKey:@"willProvisionWithAuthenticationDisabled"];
      v10 = [dictionaryCopy PKStringForKey:@"ownershipToken"];
      ownershipToken = v5->_ownershipToken;
      v5->_ownershipToken = v10;

      v12 = [dictionaryCopy PKStringForKey:@"ownershipTokenIdentifier"];
      ownershipTokenIdentifier = v5->_ownershipTokenIdentifier;
      v5->_ownershipTokenIdentifier = v12;

      v5->_suppressMakeDefaultPaymentPassOffer = [dictionaryCopy PKBoolForKey:@"suppressMakeDefaultPaymentPassOffer"];
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

- (PKPaymentProvisioningPassData)initWithPassURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = PKPaymentProvisioningPassData;
  v6 = [(PKPaymentProvisioningPassData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_passURL, l);
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  uniqueID = [(PKObject *)self->_secureElementPass uniqueID];
  [v6 appendFormat:@"pass identifier: '%@'; ", uniqueID];

  absoluteString = [(NSURL *)self->_passURL absoluteString];
  [v6 appendFormat:@"pass url: '%@'; ", absoluteString];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uniqueID = [(PKObject *)self->_secureElementPass uniqueID];
      uniqueID2 = [(PKObject *)equalCopy->_secureElementPass uniqueID];
      v7 = uniqueID;
      v8 = uniqueID2;
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
    uniqueID = [(PKObject *)self->_secureElementPass uniqueID];
    v6 = uniqueID;
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1];
  }

  v4 = PKCombinedHash(17, v2);

  return v4;
}

- (PKPaymentProvisioningPassData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = PKPaymentProvisioningPassData;
  v5 = [(PKPaymentProvisioningPassData *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passURL"];
    passURL = v5->_passURL;
    v5->_passURL = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secureElementPass"];
    secureElementPass = v5->_secureElementPass;
    v5->_secureElementPass = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceCredential"];
    deviceCredential = v5->_deviceCredential;
    v5->_deviceCredential = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ownershipToken"];
    ownershipToken = v5->_ownershipToken;
    v5->_ownershipToken = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ownershipTokenIdentifier"];
    ownershipTokenIdentifier = v5->_ownershipTokenIdentifier;
    v5->_ownershipTokenIdentifier = v14;

    v5->_willProvisionWithAuthenticationDisabled = [coderCopy decodeBoolForKey:@"willProvisionWithAuthenticationDisabled"];
    v5->_suppressMakeDefaultPaymentPassOffer = [coderCopy decodeBoolForKey:@"suppressMakeDefaultPaymentPassOffer"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  passURL = self->_passURL;
  coderCopy = coder;
  [coderCopy encodeObject:passURL forKey:@"passURL"];
  [coderCopy encodeObject:self->_secureElementPass forKey:@"secureElementPass"];
  [coderCopy encodeObject:self->_deviceCredential forKey:@"deviceCredential"];
  [coderCopy encodeObject:self->_ownershipToken forKey:@"ownershipToken"];
  [coderCopy encodeObject:self->_ownershipTokenIdentifier forKey:@"ownershipTokenIdentifier"];
  [coderCopy encodeBool:self->_willProvisionWithAuthenticationDisabled forKey:@"willProvisionWithAuthenticationDisabled"];
  [coderCopy encodeBool:self->_suppressMakeDefaultPaymentPassOffer forKey:@"suppressMakeDefaultPaymentPassOffer"];
}

@end