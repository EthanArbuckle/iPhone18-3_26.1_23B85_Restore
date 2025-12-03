@interface PKEncryptedPushProvisioningTarget
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEncryptedProvisioningTarget:(id)target;
- (PKEncryptedPushProvisioningTarget)initWithCoder:(id)coder;
- (id)asWebServiceDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKEncryptedPushProvisioningTarget

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  hexEncoding = [(NSData *)self->_publicKeyHash hexEncoding];
  [v3 appendFormat:@"publicKeyHash: '%@'; ", hexEncoding];

  v5 = [(NSData *)self->_ephemeralPublicKey base64EncodedStringWithOptions:0];
  [v3 appendFormat:@"ephemeralPublicKey: '%@'; ", v5];

  v6 = [(NSData *)self->_data description];
  [v3 appendFormat:@"data: '%@'; ", v6];

  [v3 appendFormat:@"source: '%ld'; ", self->_source];
  [v3 appendFormat:@"status: '%ld'; ", self->_status];
  [v3 appendFormat:@"targetDevice: '%ld'; ", self->_targetDevice];
  [v3 appendFormat:@"verificationCode: '%@'; ", self->_verificationCode];
  [v3 appendFormat:@"secondarySource: '%@'; ", self->_secondarySource];
  [v3 appendFormat:@">"];
  v7 = [v3 copy];

  return v7;
}

- (PKEncryptedPushProvisioningTarget)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = PKEncryptedPushProvisioningTarget;
  v5 = [(PKEncryptedPushProvisioningTarget *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publicKeyHash"];
    publicKeyHash = v5->_publicKeyHash;
    v5->_publicKeyHash = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ephemeralPublicKey"];
    ephemeralPublicKey = v5->_ephemeralPublicKey;
    v5->_ephemeralPublicKey = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encryptedProvisioningTarget"];
    data = v5->_data;
    v5->_data = v10;

    v5->_source = [coderCopy decodeIntegerForKey:@"source"];
    v5->_status = [coderCopy decodeIntegerForKey:@"status"];
    v5->_targetDevice = [coderCopy decodeIntegerForKey:@"targetDevice"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"verificationCode"];
    verificationCode = v5->_verificationCode;
    v5->_verificationCode = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secondarySource"];
    secondarySource = v5->_secondarySource;
    v5->_secondarySource = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  publicKeyHash = self->_publicKeyHash;
  coderCopy = coder;
  [coderCopy encodeObject:publicKeyHash forKey:@"publicKeyHash"];
  [coderCopy encodeObject:self->_ephemeralPublicKey forKey:@"ephemeralPublicKey"];
  [coderCopy encodeObject:self->_data forKey:@"encryptedProvisioningTarget"];
  [coderCopy encodeInteger:self->_source forKey:@"source"];
  [coderCopy encodeInteger:self->_status forKey:@"status"];
  [coderCopy encodeInteger:self->_targetDevice forKey:@"targetDevice"];
  [coderCopy encodeObject:self->_verificationCode forKey:@"verificationCode"];
  [coderCopy encodeObject:self->_secondarySource forKey:@"secondarySource"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKEncryptedPushProvisioningTarget *)self isEqualToEncryptedProvisioningTarget:v5];
  }

  return v6;
}

- (BOOL)isEqualToEncryptedProvisioningTarget:(id)target
{
  targetCopy = target;
  if (!targetCopy)
  {
    goto LABEL_28;
  }

  ephemeralPublicKey = self->_ephemeralPublicKey;
  v6 = targetCopy[1];
  if (ephemeralPublicKey)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (ephemeralPublicKey != v6)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v8 = [(NSData *)ephemeralPublicKey isEqual:?];
    if ((v8 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  publicKeyHash = self->_publicKeyHash;
  v10 = targetCopy[2];
  if (publicKeyHash && v10)
  {
    if (([(NSData *)publicKeyHash isEqual:?]& 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (publicKeyHash != v10)
  {
    goto LABEL_28;
  }

  data = self->_data;
  v12 = targetCopy[3];
  if (!data || !v12)
  {
    if (data == v12)
    {
      goto LABEL_20;
    }

LABEL_28:
    LOBYTE(v17) = 0;
    goto LABEL_29;
  }

  if (([(NSData *)data isEqual:?]& 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_20:
  if (self->_status != targetCopy[4] || self->_source != targetCopy[5] || self->_targetDevice != targetCopy[6])
  {
    goto LABEL_28;
  }

  v13 = targetCopy[7];
  v14 = self->_verificationCode;
  v15 = v13;
  v16 = v15;
  if (v14 == v15)
  {

    goto LABEL_31;
  }

  LOBYTE(v17) = 0;
  if (!v14 || !v15)
  {
LABEL_36:

    goto LABEL_29;
  }

  v17 = [(NSString *)v14 isEqualToString:v15];

  if (v17)
  {
LABEL_31:
    secondarySource = self->_secondarySource;
    v20 = targetCopy[8];
    v14 = secondarySource;
    v21 = v20;
    v16 = v21;
    if (v14 == v21)
    {
      LOBYTE(v17) = 1;
    }

    else
    {
      LOBYTE(v17) = 0;
      if (v14 && v21)
      {
        LOBYTE(v17) = [(NSString *)v14 isEqualToString:v21];
      }
    }

    goto LABEL_36;
  }

LABEL_29:

  return v17;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_publicKeyHash];
  [v3 safelyAddObject:self->_ephemeralPublicKey];
  [v3 safelyAddObject:self->_data];
  [v3 safelyAddObject:self->_verificationCode];
  [v3 safelyAddObject:self->_secondarySource];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_source - v4 + 32 * v4;
  v6 = self->_targetDevice - v5 + 32 * v5;
  v7 = self->_status - v6 + 32 * v6;

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_ephemeralPublicKey copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSData *)self->_publicKeyHash copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSData *)self->_data copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  *(v5 + 32) = self->_status;
  *(v5 + 40) = self->_source;
  *(v5 + 48) = self->_targetDevice;
  objc_storeStrong((v5 + 56), self->_verificationCode);
  objc_storeStrong((v5 + 64), self->_secondarySource);
  return v5;
}

- (id)asWebServiceDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  hexEncoding = [(NSData *)self->_publicKeyHash hexEncoding];
  [v3 setObject:hexEncoding forKey:@"publicKeyHash"];

  v5 = [(NSData *)self->_ephemeralPublicKey base64EncodedStringWithOptions:0];
  [v3 setObject:v5 forKey:@"ephemeralPublicKey"];

  [v3 setObject:@"EV_ECC_v3" forKey:@"encryptionVersion"];
  v6 = [(NSData *)self->_data base64EncodedStringWithOptions:0];
  [v3 setObject:v6 forKey:@"encryptedProvisioningTarget"];

  [v3 setObject:self->_verificationCode forKeyedSubscript:@"verificationCode"];
  [v3 setObject:self->_secondarySource forKeyedSubscript:@"secondarySource"];
  v7 = [v3 copy];

  return v7;
}

@end