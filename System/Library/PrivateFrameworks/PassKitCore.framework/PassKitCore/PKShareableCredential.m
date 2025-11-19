@interface PKShareableCredential
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToShareableCredential:(id)a3;
- (PKShareableCredential)initWithCoder:(id)a3;
- (PKShareableCredential)initWithProtoCredential:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)protoCredential;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKShareableCredential

- (PKShareableCredential)initWithProtoCredential:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = PKShareableCredential;
  v5 = [(PKShareableCredential *)&v23 init];
  if (v5)
  {
    v6 = [v4 encryptedPushProvisioningTarget];
    v7 = [v6 pk_decodeHexadecimal];

    v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:0];
    encryptedPushProvisioningTarget = v5->_encryptedPushProvisioningTarget;
    v5->_encryptedPushProvisioningTarget = v8;

    v5->_status = [v4 status];
    v10 = [v4 cardConfigurationIdentifier];
    cardConfigurationIdentifier = v5->_cardConfigurationIdentifier;
    v5->_cardConfigurationIdentifier = v10;

    v12 = [v4 credentialIdentifier];
    credentialIdentifier = v5->_credentialIdentifier;
    v5->_credentialIdentifier = v12;

    v14 = [v4 credentialIdentifierHash];
    credentialIdentifierHash = v5->_credentialIdentifierHash;
    v5->_credentialIdentifierHash = v14;

    v16 = [v4 ownerDisplayName];
    ownerDisplayName = v5->_ownerDisplayName;
    v5->_ownerDisplayName = v16;

    v18 = [v4 sharingInstanceIdentifier];
    sharingInstanceIdentifier = v5->_sharingInstanceIdentifier;
    v5->_sharingInstanceIdentifier = v18;

    v20 = [v4 nonce];
    nonce = v5->_nonce;
    v5->_nonce = v20;
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
    v6 = [v5 hexEncoding];
    [(PKProtobufShareableCredential *)v3 setEncryptedPushProvisioningTarget:v6];
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

- (PKShareableCredential)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = PKShareableCredential;
  v5 = [(PKShareableCredential *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"encryptedPushProvisioningTargetKey"];
    encryptedPushProvisioningTarget = v5->_encryptedPushProvisioningTarget;
    v5->_encryptedPushProvisioningTarget = v6;

    v5->_status = [v4 decodeIntegerForKey:@"statusKey"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cardConfigurationIdentifierKey"];
    cardConfigurationIdentifier = v5->_cardConfigurationIdentifier;
    v5->_cardConfigurationIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifierKey"];
    credentialIdentifier = v5->_credentialIdentifier;
    v5->_credentialIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifierHashKey"];
    credentialIdentifierHash = v5->_credentialIdentifierHash;
    v5->_credentialIdentifierHash = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ownerDisplayNameKey"];
    ownerDisplayName = v5->_ownerDisplayName;
    v5->_ownerDisplayName = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharingInstanceIdentifierKey"];
    sharingInstanceIdentifier = v5->_sharingInstanceIdentifier;
    v5->_sharingInstanceIdentifier = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nonceKey"];
    nonce = v5->_nonce;
    v5->_nonce = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  status = self->_status;
  v5 = a3;
  [v5 encodeInteger:status forKey:@"statusKey"];
  [v5 encodeObject:self->_encryptedPushProvisioningTarget forKey:@"encryptedPushProvisioningTargetKey"];
  [v5 encodeObject:self->_cardConfigurationIdentifier forKey:@"cardConfigurationIdentifierKey"];
  [v5 encodeObject:self->_credentialIdentifier forKey:@"identifierKey"];
  [v5 encodeObject:self->_credentialIdentifierHash forKey:@"identifierHashKey"];
  [v5 encodeObject:self->_ownerDisplayName forKey:@"ownerDisplayNameKey"];
  [v5 encodeObject:self->_sharingInstanceIdentifier forKey:@"sharingInstanceIdentifierKey"];
  [v5 encodeObject:self->_nonce forKey:@"nonceKey"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKShareableCredential *)self isEqualToShareableCredential:v5];
  }

  return v6;
}

- (BOOL)isEqualToShareableCredential:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4[4];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PKEncryptedPushProvisioningTarget *)self->_encryptedPushProvisioningTarget copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v5[2] = self->_status;
  v8 = [(NSString *)self->_credentialIdentifier copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NSString *)self->_credentialIdentifierHash copyWithZone:a3];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(NSString *)self->_sharingInstanceIdentifier copyWithZone:a3];
  v13 = v5[6];
  v5[6] = v12;

  v14 = [(NSString *)self->_cardConfigurationIdentifier copyWithZone:a3];
  v15 = v5[7];
  v5[7] = v14;

  v16 = [(NSString *)self->_ownerDisplayName copyWithZone:a3];
  v17 = v5[3];
  v5[3] = v16;

  v18 = [(NSString *)self->_nonce copyWithZone:a3];
  v19 = v5[8];
  v5[8] = v18;

  return v5;
}

@end