@interface NPKProtoAutomaticProvisioningRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCardType:(id)type;
- (int)cardType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCardType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoAutomaticProvisioningRequest

- (int)cardType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_cardType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCardType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsCardType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Payment"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Transit"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Access"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoAutomaticProvisioningRequest;
  v4 = [(NPKProtoAutomaticProvisioningRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoAutomaticProvisioningRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  passTypeIdentifier = self->_passTypeIdentifier;
  if (passTypeIdentifier)
  {
    [dictionary setObject:passTypeIdentifier forKey:@"passTypeIdentifier"];
  }

  serialNumber = self->_serialNumber;
  if (serialNumber)
  {
    [v4 setObject:serialNumber forKey:@"serialNumber"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_credentialType];
    [v4 setObject:v7 forKey:@"credentialType"];
  }

  primaryAccountNumberSuffix = self->_primaryAccountNumberSuffix;
  if (primaryAccountNumberSuffix)
  {
    [v4 setObject:primaryAccountNumberSuffix forKey:@"primaryAccountNumberSuffix"];
  }

  localizedName = self->_localizedName;
  if (localizedName)
  {
    [v4 setObject:localizedName forKey:@"localizedName"];
  }

  if ((*&self->_has & 2) != 0)
  {
    cardType = self->_cardType;
    if (cardType >= 4)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_cardType];
    }

    else
    {
      v11 = off_279945EA0[cardType];
    }

    [v4 setObject:v11 forKey:@"cardType"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_passTypeIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_serialNumber)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    credentialType = self->_credentialType;
    PBDataWriterWriteUint64Field();
    toCopy = v7;
  }

  if (self->_primaryAccountNumberSuffix)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_localizedName)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    cardType = self->_cardType;
    PBDataWriterWriteInt32Field();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_passTypeIdentifier)
  {
    [toCopy setPassTypeIdentifier:?];
    toCopy = v5;
  }

  if (self->_serialNumber)
  {
    [v5 setSerialNumber:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_credentialType;
    *(toCopy + 56) |= 1u;
  }

  if (self->_primaryAccountNumberSuffix)
  {
    [v5 setPrimaryAccountNumberSuffix:?];
    toCopy = v5;
  }

  if (self->_localizedName)
  {
    [v5 setLocalizedName:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 4) = self->_cardType;
    *(toCopy + 56) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_passTypeIdentifier copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_serialNumber copyWithZone:zone];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_credentialType;
    *(v5 + 56) |= 1u;
  }

  v10 = [(NSString *)self->_primaryAccountNumberSuffix copyWithZone:zone];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v12 = [(NSString *)self->_localizedName copyWithZone:zone];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_cardType;
    *(v5 + 56) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  passTypeIdentifier = self->_passTypeIdentifier;
  if (passTypeIdentifier | *(equalCopy + 4))
  {
    if (![(NSString *)passTypeIdentifier isEqual:?])
    {
      goto LABEL_19;
    }
  }

  serialNumber = self->_serialNumber;
  if (serialNumber | *(equalCopy + 6))
  {
    if (![(NSString *)serialNumber isEqual:?])
    {
      goto LABEL_19;
    }
  }

  v7 = *(equalCopy + 56);
  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_credentialType != *(equalCopy + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 56))
  {
LABEL_19:
    v10 = 0;
    goto LABEL_20;
  }

  primaryAccountNumberSuffix = self->_primaryAccountNumberSuffix;
  if (primaryAccountNumberSuffix | *(equalCopy + 5) && ![(NSString *)primaryAccountNumberSuffix isEqual:?])
  {
    goto LABEL_19;
  }

  localizedName = self->_localizedName;
  if (localizedName | *(equalCopy + 3))
  {
    if (![(NSString *)localizedName isEqual:?])
    {
      goto LABEL_19;
    }
  }

  v10 = (*(equalCopy + 56) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 56) & 2) == 0 || self->_cardType != *(equalCopy + 4))
    {
      goto LABEL_19;
    }

    v10 = 1;
  }

LABEL_20:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_passTypeIdentifier hash];
  v4 = [(NSString *)self->_serialNumber hash];
  if (*&self->_has)
  {
    v5 = 2654435761u * self->_credentialType;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSString *)self->_primaryAccountNumberSuffix hash];
  v7 = [(NSString *)self->_localizedName hash];
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_cardType;
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(NPKProtoAutomaticProvisioningRequest *)self setPassTypeIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 6))
  {
    [(NPKProtoAutomaticProvisioningRequest *)self setSerialNumber:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 56))
  {
    self->_credentialType = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 5))
  {
    [(NPKProtoAutomaticProvisioningRequest *)self setPrimaryAccountNumberSuffix:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(NPKProtoAutomaticProvisioningRequest *)self setLocalizedName:?];
    fromCopy = v5;
  }

  if ((*(fromCopy + 56) & 2) != 0)
  {
    self->_cardType = *(fromCopy + 4);
    *&self->_has |= 2u;
  }
}

@end