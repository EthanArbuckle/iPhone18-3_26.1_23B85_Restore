@interface PKShareableCredential
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToShareableCredential:(id)credential;
- (PKShareableCredential)initWithCoder:(id)coder;
- (PKShareableCredential)initWithProtoCredential:(id)credential;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)protoCredential;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKShareableCredential

- (PKShareableCredential)initWithProtoCredential:(id)credential
{
  credentialCopy = credential;
  v23.receiver = self;
  v23.super_class = PKShareableCredential;
  v5 = [(PKShareableCredential *)&v23 init];
  if (v5)
  {
    encryptedPushProvisioningTarget = [credentialCopy encryptedPushProvisioningTarget];
    pk_decodeHexadecimal = [encryptedPushProvisioningTarget pk_decodeHexadecimal];

    v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:pk_decodeHexadecimal error:0];
    encryptedPushProvisioningTarget = v5->_encryptedPushProvisioningTarget;
    v5->_encryptedPushProvisioningTarget = v8;

    v5->_status = [credentialCopy status];
    cardConfigurationIdentifier = [credentialCopy cardConfigurationIdentifier];
    cardConfigurationIdentifier = v5->_cardConfigurationIdentifier;
    v5->_cardConfigurationIdentifier = cardConfigurationIdentifier;

    credentialIdentifier = [credentialCopy credentialIdentifier];
    credentialIdentifier = v5->_credentialIdentifier;
    v5->_credentialIdentifier = credentialIdentifier;

    credentialIdentifierHash = [credentialCopy credentialIdentifierHash];
    credentialIdentifierHash = v5->_credentialIdentifierHash;
    v5->_credentialIdentifierHash = credentialIdentifierHash;

    ownerDisplayName = [credentialCopy ownerDisplayName];
    ownerDisplayName = v5->_ownerDisplayName;
    v5->_ownerDisplayName = ownerDisplayName;

    sharingInstanceIdentifier = [credentialCopy sharingInstanceIdentifier];
    sharingInstanceIdentifier = v5->_sharingInstanceIdentifier;
    v5->_sharingInstanceIdentifier = sharingInstanceIdentifier;

    nonce = [credentialCopy nonce];
    nonce = v5->_nonce;
    v5->_nonce = nonce;
  }

  return v5;
}

- (id)protoCredential
{
  v3 = objc_alloc_init(PKProtobufShareableCredential);
  encryptedPushProvisioningTarget = self->_encryptedPushProvisioningTarget;
  if (encryptedPushProvisioningTarget)
  {
    v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:encryptedPushProvisioningTarget requiringSecureCoding:1 error:0];
    hexEncoding = [v5 hexEncoding];
    [(PKProtobufShareableCredential *)v3 setEncryptedPushProvisioningTarget:hexEncoding];
  }

  [(PKProtobufShareableCredential *)v3 setStatus:LODWORD(self->_status)];
  [(PKProtobufShareableCredential *)v3 setCardConfigurationIdentifier:self->_cardConfigurationIdentifier];
  [(PKProtobufShareableCredential *)v3 setCredentialIdentifier:self->_credentialIdentifier];
  [(PKProtobufShareableCredential *)v3 setCredentialIdentifierHash:self->_credentialIdentifierHash];
  [(PKProtobufShareableCredential *)v3 setOwnerDisplayName:self->_ownerDisplayName];
  [(PKProtobufShareableCredential *)v3 setSharingInstanceIdentifier:self->_sharingInstanceIdentifier];
  [(PKProtobufShareableCredential *)v3 setNonce:self->_nonce];

  return v3;
}

- (PKShareableCredential)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = PKShareableCredential;
  v5 = [(PKShareableCredential *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encryptedPushProvisioningTargetKey"];
    encryptedPushProvisioningTarget = v5->_encryptedPushProvisioningTarget;
    v5->_encryptedPushProvisioningTarget = v6;

    v5->_status = [coderCopy decodeIntegerForKey:@"statusKey"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cardConfigurationIdentifierKey"];
    cardConfigurationIdentifier = v5->_cardConfigurationIdentifier;
    v5->_cardConfigurationIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifierKey"];
    credentialIdentifier = v5->_credentialIdentifier;
    v5->_credentialIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifierHashKey"];
    credentialIdentifierHash = v5->_credentialIdentifierHash;
    v5->_credentialIdentifierHash = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ownerDisplayNameKey"];
    ownerDisplayName = v5->_ownerDisplayName;
    v5->_ownerDisplayName = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingInstanceIdentifierKey"];
    sharingInstanceIdentifier = v5->_sharingInstanceIdentifier;
    v5->_sharingInstanceIdentifier = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nonceKey"];
    nonce = v5->_nonce;
    v5->_nonce = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  status = self->_status;
  coderCopy = coder;
  [coderCopy encodeInteger:status forKey:@"statusKey"];
  [coderCopy encodeObject:self->_encryptedPushProvisioningTarget forKey:@"encryptedPushProvisioningTargetKey"];
  [coderCopy encodeObject:self->_cardConfigurationIdentifier forKey:@"cardConfigurationIdentifierKey"];
  [coderCopy encodeObject:self->_credentialIdentifier forKey:@"identifierKey"];
  [coderCopy encodeObject:self->_credentialIdentifierHash forKey:@"identifierHashKey"];
  [coderCopy encodeObject:self->_ownerDisplayName forKey:@"ownerDisplayNameKey"];
  [coderCopy encodeObject:self->_sharingInstanceIdentifier forKey:@"sharingInstanceIdentifierKey"];
  [coderCopy encodeObject:self->_nonce forKey:@"nonceKey"];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKShareableCredential *)self isEqualToShareableCredential:v5];
  }

  return v6;
}

- (BOOL)isEqualToShareableCredential:(id)credential
{
  credentialCopy = credential;
  v5 = credentialCopy;
  if (credentialCopy)
  {
    v6 = credentialCopy[4];
    v7 = self->_credentialIdentifier;
    v8 = v6;
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      LOBYTE(v10) = 0;
      if (!v7 || !v8)
      {
        goto LABEL_30;
      }

      v10 = [(NSString *)v7 isEqualToString:v8];

      if (!v10)
      {
        goto LABEL_31;
      }
    }

    v11 = v5[5];
    v7 = self->_credentialIdentifierHash;
    v12 = v11;
    v9 = v12;
    if (v7 == v12)
    {
    }

    else
    {
      LOBYTE(v10) = 0;
      if (!v7 || !v12)
      {
        goto LABEL_30;
      }

      v10 = [(NSString *)v7 isEqualToString:v12];

      if (!v10)
      {
        goto LABEL_31;
      }
    }

    encryptedPushProvisioningTarget = self->_encryptedPushProvisioningTarget;
    v14 = v5[1];
    if (encryptedPushProvisioningTarget && v14)
    {
      if ([(PKEncryptedPushProvisioningTarget *)encryptedPushProvisioningTarget isEqual:?])
      {
LABEL_17:
        v15 = v5[6];
        v7 = self->_sharingInstanceIdentifier;
        v16 = v15;
        v9 = v16;
        if (v7 == v16)
        {

LABEL_25:
          cardConfigurationIdentifier = self->_cardConfigurationIdentifier;
          v18 = v5[7];
          v7 = cardConfigurationIdentifier;
          v19 = v18;
          v9 = v19;
          if (v7 == v19)
          {
            LOBYTE(v10) = 1;
          }

          else
          {
            LOBYTE(v10) = 0;
            if (v7 && v19)
            {
              LOBYTE(v10) = [(NSString *)v7 isEqualToString:v19];
            }
          }

          goto LABEL_30;
        }

        LOBYTE(v10) = 0;
        if (v7 && v16)
        {
          v10 = [(NSString *)v7 isEqualToString:v16];

          if (!v10)
          {
            goto LABEL_31;
          }

          goto LABEL_25;
        }

LABEL_30:

        goto LABEL_31;
      }
    }

    else if (encryptedPushProvisioningTarget == v14)
    {
      goto LABEL_17;
    }
  }

  LOBYTE(v10) = 0;
LABEL_31:

  return v10;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_credentialIdentifier];
  [v3 safelyAddObject:self->_credentialIdentifierHash];
  [v3 safelyAddObject:self->_encryptedPushProvisioningTarget];
  [v3 safelyAddObject:self->_sharingInstanceIdentifier];
  [v3 safelyAddObject:self->_cardConfigurationIdentifier];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = PKPushProvisioningSharingStatusToString(self->_status);
  [v3 appendFormat:@"status: '%@'; ", v4];

  [v3 appendFormat:@"credential identifier hash: '%@'; ", self->_credentialIdentifierHash];
  [v3 appendFormat:@"sharing instance identifier: '%@'; ", self->_sharingInstanceIdentifier];
  [v3 appendFormat:@"display name: '%@'; ", self->_ownerDisplayName];
  [v3 appendFormat:@"encrypted target: '%@'; ", self->_encryptedPushProvisioningTarget];
  [v3 appendFormat:@">"];
  v5 = [v3 copy];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PKEncryptedPushProvisioningTarget *)self->_encryptedPushProvisioningTarget copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v5[2] = self->_status;
  v8 = [(NSString *)self->_credentialIdentifier copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_credentialIdentifierHash copyWithZone:zone];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(NSString *)self->_sharingInstanceIdentifier copyWithZone:zone];
  v13 = v5[6];
  v5[6] = v12;

  v14 = [(NSString *)self->_cardConfigurationIdentifier copyWithZone:zone];
  v15 = v5[7];
  v5[7] = v14;

  v16 = [(NSString *)self->_ownerDisplayName copyWithZone:zone];
  v17 = v5[3];
  v5[3] = v16;

  v18 = [(NSString *)self->_nonce copyWithZone:zone];
  v19 = v5[8];
  v5[8] = v18;

  return v5;
}

@end