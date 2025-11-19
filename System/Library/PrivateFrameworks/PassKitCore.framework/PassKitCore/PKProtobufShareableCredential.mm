@interface PKProtobufShareableCredential
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)statusAsString:(int)a3;
- (int)StringAsStatus:(id)a3;
- (int)status;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufShareableCredential

- (int)status
{
  if (*&self->_has)
  {
    return self->_status;
  }

  else
  {
    return 0;
  }
}

- (id)statusAsString:(int)a3
{
  if (a3 >= 5)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E79D2510[a3];
  }

  return v4;
}

- (int)StringAsStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"AVAILABLE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CONSUMED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"REVOKED"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"EXPIRED"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufShareableCredential;
  v4 = [(PKProtobufShareableCredential *)&v8 description];
  v5 = [(PKProtobufShareableCredential *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  encryptedPushProvisioningTarget = self->_encryptedPushProvisioningTarget;
  if (encryptedPushProvisioningTarget)
  {
    [v3 setObject:encryptedPushProvisioningTarget forKey:@"encryptedPushProvisioningTarget"];
  }

  if (*&self->_has)
  {
    status = self->_status;
    if (status >= 5)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_status];
    }

    else
    {
      v7 = off_1E79D2510[status];
    }

    [v4 setObject:v7 forKey:@"status"];
  }

  credentialIdentifierHash = self->_credentialIdentifierHash;
  if (credentialIdentifierHash)
  {
    [v4 setObject:credentialIdentifierHash forKey:@"credentialIdentifierHash"];
  }

  ownerDisplayName = self->_ownerDisplayName;
  if (ownerDisplayName)
  {
    [v4 setObject:ownerDisplayName forKey:@"ownerDisplayName"];
  }

  credentialIdentifier = self->_credentialIdentifier;
  if (credentialIdentifier)
  {
    [v4 setObject:credentialIdentifier forKey:@"credentialIdentifier"];
  }

  cardConfigurationIdentifier = self->_cardConfigurationIdentifier;
  if (cardConfigurationIdentifier)
  {
    [v4 setObject:cardConfigurationIdentifier forKey:@"cardConfigurationIdentifier"];
  }

  sharingInstanceIdentifier = self->_sharingInstanceIdentifier;
  if (sharingInstanceIdentifier)
  {
    [v4 setObject:sharingInstanceIdentifier forKey:@"sharingInstanceIdentifier"];
  }

  nonce = self->_nonce;
  if (nonce)
  {
    [v4 setObject:nonce forKey:@"nonce"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_encryptedPushProvisioningTarget)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v5;
  }

  if (self->_credentialIdentifierHash)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_ownerDisplayName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_credentialIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_cardConfigurationIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_sharingInstanceIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_nonce)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_encryptedPushProvisioningTarget)
  {
    [v4 setEncryptedPushProvisioningTarget:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 16) = self->_status;
    *(v4 + 68) |= 1u;
  }

  if (self->_credentialIdentifierHash)
  {
    [v5 setCredentialIdentifierHash:?];
    v4 = v5;
  }

  if (self->_ownerDisplayName)
  {
    [v5 setOwnerDisplayName:?];
    v4 = v5;
  }

  if (self->_credentialIdentifier)
  {
    [v5 setCredentialIdentifier:?];
    v4 = v5;
  }

  if (self->_cardConfigurationIdentifier)
  {
    [v5 setCardConfigurationIdentifier:?];
    v4 = v5;
  }

  if (self->_sharingInstanceIdentifier)
  {
    [v5 setSharingInstanceIdentifier:?];
    v4 = v5;
  }

  if (self->_nonce)
  {
    [v5 setNonce:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_encryptedPushProvisioningTarget copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  if (*&self->_has)
  {
    *(v5 + 64) = self->_status;
    *(v5 + 68) |= 1u;
  }

  v8 = [(NSString *)self->_credentialIdentifierHash copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_ownerDisplayName copyWithZone:a3];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  v12 = [(NSString *)self->_credentialIdentifier copyWithZone:a3];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  v14 = [(NSString *)self->_cardConfigurationIdentifier copyWithZone:a3];
  v15 = *(v5 + 8);
  *(v5 + 8) = v14;

  v16 = [(NSString *)self->_sharingInstanceIdentifier copyWithZone:a3];
  v17 = *(v5 + 56);
  *(v5 + 56) = v16;

  v18 = [(NSString *)self->_nonce copyWithZone:a3];
  v19 = *(v5 + 40);
  *(v5 + 40) = v18;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  encryptedPushProvisioningTarget = self->_encryptedPushProvisioningTarget;
  if (encryptedPushProvisioningTarget | *(v4 + 4))
  {
    if (![(NSString *)encryptedPushProvisioningTarget isEqual:?])
    {
      goto LABEL_21;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 68) & 1) == 0 || self->_status != *(v4 + 16))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 68))
  {
LABEL_21:
    v12 = 0;
    goto LABEL_22;
  }

  credentialIdentifierHash = self->_credentialIdentifierHash;
  if (credentialIdentifierHash | *(v4 + 3) && ![(NSString *)credentialIdentifierHash isEqual:?])
  {
    goto LABEL_21;
  }

  ownerDisplayName = self->_ownerDisplayName;
  if (ownerDisplayName | *(v4 + 6))
  {
    if (![(NSString *)ownerDisplayName isEqual:?])
    {
      goto LABEL_21;
    }
  }

  credentialIdentifier = self->_credentialIdentifier;
  if (credentialIdentifier | *(v4 + 2))
  {
    if (![(NSString *)credentialIdentifier isEqual:?])
    {
      goto LABEL_21;
    }
  }

  cardConfigurationIdentifier = self->_cardConfigurationIdentifier;
  if (cardConfigurationIdentifier | *(v4 + 1))
  {
    if (![(NSString *)cardConfigurationIdentifier isEqual:?])
    {
      goto LABEL_21;
    }
  }

  sharingInstanceIdentifier = self->_sharingInstanceIdentifier;
  if (sharingInstanceIdentifier | *(v4 + 7))
  {
    if (![(NSString *)sharingInstanceIdentifier isEqual:?])
    {
      goto LABEL_21;
    }
  }

  nonce = self->_nonce;
  if (nonce | *(v4 + 5))
  {
    v12 = [(NSString *)nonce isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_22:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_encryptedPushProvisioningTarget hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_status;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(NSString *)self->_credentialIdentifierHash hash];
  v7 = v5 ^ v6 ^ [(NSString *)self->_ownerDisplayName hash];
  v8 = [(NSString *)self->_credentialIdentifier hash];
  v9 = v8 ^ [(NSString *)self->_cardConfigurationIdentifier hash];
  v10 = v7 ^ v9 ^ [(NSString *)self->_sharingInstanceIdentifier hash];
  return v10 ^ [(NSString *)self->_nonce hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 4))
  {
    [(PKProtobufShareableCredential *)self setEncryptedPushProvisioningTarget:?];
    v4 = v5;
  }

  if (v4[17])
  {
    self->_status = v4[16];
    *&self->_has |= 1u;
  }

  if (*(v4 + 3))
  {
    [(PKProtobufShareableCredential *)self setCredentialIdentifierHash:?];
    v4 = v5;
  }

  if (*(v4 + 6))
  {
    [(PKProtobufShareableCredential *)self setOwnerDisplayName:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(PKProtobufShareableCredential *)self setCredentialIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(PKProtobufShareableCredential *)self setCardConfigurationIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 7))
  {
    [(PKProtobufShareableCredential *)self setSharingInstanceIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 5))
  {
    [(PKProtobufShareableCredential *)self setNonce:?];
    v4 = v5;
  }
}

@end