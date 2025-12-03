@interface PKProtobufShareableCredential
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)statusAsString:(int)string;
- (int)StringAsStatus:(id)status;
- (int)status;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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

- (id)statusAsString:(int)string
{
  if (string >= 5)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E79D2510[string];
  }

  return v4;
}

- (int)StringAsStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([statusCopy isEqualToString:@"AVAILABLE"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"CONSUMED"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"REVOKED"])
  {
    v4 = 3;
  }

  else if ([statusCopy isEqualToString:@"EXPIRED"])
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
  dictionaryRepresentation = [(PKProtobufShareableCredential *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  encryptedPushProvisioningTarget = self->_encryptedPushProvisioningTarget;
  if (encryptedPushProvisioningTarget)
  {
    [dictionary setObject:encryptedPushProvisioningTarget forKey:@"encryptedPushProvisioningTarget"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_encryptedPushProvisioningTarget)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_credentialIdentifierHash)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_ownerDisplayName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_credentialIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_cardConfigurationIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_sharingInstanceIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_nonce)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_encryptedPushProvisioningTarget)
  {
    [toCopy setEncryptedPushProvisioningTarget:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 16) = self->_status;
    *(toCopy + 68) |= 1u;
  }

  if (self->_credentialIdentifierHash)
  {
    [v5 setCredentialIdentifierHash:?];
    toCopy = v5;
  }

  if (self->_ownerDisplayName)
  {
    [v5 setOwnerDisplayName:?];
    toCopy = v5;
  }

  if (self->_credentialIdentifier)
  {
    [v5 setCredentialIdentifier:?];
    toCopy = v5;
  }

  if (self->_cardConfigurationIdentifier)
  {
    [v5 setCardConfigurationIdentifier:?];
    toCopy = v5;
  }

  if (self->_sharingInstanceIdentifier)
  {
    [v5 setSharingInstanceIdentifier:?];
    toCopy = v5;
  }

  if (self->_nonce)
  {
    [v5 setNonce:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_encryptedPushProvisioningTarget copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  if (*&self->_has)
  {
    *(v5 + 64) = self->_status;
    *(v5 + 68) |= 1u;
  }

  v8 = [(NSString *)self->_credentialIdentifierHash copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_ownerDisplayName copyWithZone:zone];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  v12 = [(NSString *)self->_credentialIdentifier copyWithZone:zone];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  v14 = [(NSString *)self->_cardConfigurationIdentifier copyWithZone:zone];
  v15 = *(v5 + 8);
  *(v5 + 8) = v14;

  v16 = [(NSString *)self->_sharingInstanceIdentifier copyWithZone:zone];
  v17 = *(v5 + 56);
  *(v5 + 56) = v16;

  v18 = [(NSString *)self->_nonce copyWithZone:zone];
  v19 = *(v5 + 40);
  *(v5 + 40) = v18;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  encryptedPushProvisioningTarget = self->_encryptedPushProvisioningTarget;
  if (encryptedPushProvisioningTarget | *(equalCopy + 4))
  {
    if (![(NSString *)encryptedPushProvisioningTarget isEqual:?])
    {
      goto LABEL_21;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 68) & 1) == 0 || self->_status != *(equalCopy + 16))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 68))
  {
LABEL_21:
    v12 = 0;
    goto LABEL_22;
  }

  credentialIdentifierHash = self->_credentialIdentifierHash;
  if (credentialIdentifierHash | *(equalCopy + 3) && ![(NSString *)credentialIdentifierHash isEqual:?])
  {
    goto LABEL_21;
  }

  ownerDisplayName = self->_ownerDisplayName;
  if (ownerDisplayName | *(equalCopy + 6))
  {
    if (![(NSString *)ownerDisplayName isEqual:?])
    {
      goto LABEL_21;
    }
  }

  credentialIdentifier = self->_credentialIdentifier;
  if (credentialIdentifier | *(equalCopy + 2))
  {
    if (![(NSString *)credentialIdentifier isEqual:?])
    {
      goto LABEL_21;
    }
  }

  cardConfigurationIdentifier = self->_cardConfigurationIdentifier;
  if (cardConfigurationIdentifier | *(equalCopy + 1))
  {
    if (![(NSString *)cardConfigurationIdentifier isEqual:?])
    {
      goto LABEL_21;
    }
  }

  sharingInstanceIdentifier = self->_sharingInstanceIdentifier;
  if (sharingInstanceIdentifier | *(equalCopy + 7))
  {
    if (![(NSString *)sharingInstanceIdentifier isEqual:?])
    {
      goto LABEL_21;
    }
  }

  nonce = self->_nonce;
  if (nonce | *(equalCopy + 5))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(PKProtobufShareableCredential *)self setEncryptedPushProvisioningTarget:?];
    fromCopy = v5;
  }

  if (fromCopy[17])
  {
    self->_status = fromCopy[16];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 3))
  {
    [(PKProtobufShareableCredential *)self setCredentialIdentifierHash:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 6))
  {
    [(PKProtobufShareableCredential *)self setOwnerDisplayName:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(PKProtobufShareableCredential *)self setCredentialIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(PKProtobufShareableCredential *)self setCardConfigurationIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 7))
  {
    [(PKProtobufShareableCredential *)self setSharingInstanceIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 5))
  {
    [(PKProtobufShareableCredential *)self setNonce:?];
    fromCopy = v5;
  }
}

@end