@interface NPKProtoAutomaticProvisioningRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCardType:(id)a3;
- (int)cardType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCardType:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (void)setHasCardType:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsCardType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Payment"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Transit"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Access"])
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
  v5 = [(NPKProtoAutomaticProvisioningRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  passTypeIdentifier = self->_passTypeIdentifier;
  if (passTypeIdentifier)
  {
    [v3 setObject:passTypeIdentifier forKey:@"passTypeIdentifier"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_passTypeIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_serialNumber)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (*&self->_has)
  {
    credentialType = self->_credentialType;
    PBDataWriterWriteUint64Field();
    v4 = v7;
  }

  if (self->_primaryAccountNumberSuffix)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_localizedName)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    cardType = self->_cardType;
    PBDataWriterWriteInt32Field();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_passTypeIdentifier)
  {
    [v4 setPassTypeIdentifier:?];
    v4 = v5;
  }

  if (self->_serialNumber)
  {
    [v5 setSerialNumber:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_credentialType;
    *(v4 + 56) |= 1u;
  }

  if (self->_primaryAccountNumberSuffix)
  {
    [v5 setPrimaryAccountNumberSuffix:?];
    v4 = v5;
  }

  if (self->_localizedName)
  {
    [v5 setLocalizedName:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 4) = self->_cardType;
    *(v4 + 56) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_passTypeIdentifier copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_serialNumber copyWithZone:a3];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_credentialType;
    *(v5 + 56) |= 1u;
  }

  v10 = [(NSString *)self->_primaryAccountNumberSuffix copyWithZone:a3];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v12 = [(NSString *)self->_localizedName copyWithZone:a3];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_cardType;
    *(v5 + 56) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  passTypeIdentifier = self->_passTypeIdentifier;
  if (passTypeIdentifier | *(v4 + 4))
  {
    if (![(NSString *)passTypeIdentifier isEqual:?])
    {
      goto LABEL_19;
    }
  }

  serialNumber = self->_serialNumber;
  if (serialNumber | *(v4 + 6))
  {
    if (![(NSString *)serialNumber isEqual:?])
    {
      goto LABEL_19;
    }
  }

  v7 = *(v4 + 56);
  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_credentialType != *(v4 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 56))
  {
LABEL_19:
    v10 = 0;
    goto LABEL_20;
  }

  primaryAccountNumberSuffix = self->_primaryAccountNumberSuffix;
  if (primaryAccountNumberSuffix | *(v4 + 5) && ![(NSString *)primaryAccountNumberSuffix isEqual:?])
  {
    goto LABEL_19;
  }

  localizedName = self->_localizedName;
  if (localizedName | *(v4 + 3))
  {
    if (![(NSString *)localizedName isEqual:?])
    {
      goto LABEL_19;
    }
  }

  v10 = (*(v4 + 56) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 56) & 2) == 0 || self->_cardType != *(v4 + 4))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 4))
  {
    [(NPKProtoAutomaticProvisioningRequest *)self setPassTypeIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 6))
  {
    [(NPKProtoAutomaticProvisioningRequest *)self setSerialNumber:?];
    v4 = v5;
  }

  if (*(v4 + 56))
  {
    self->_credentialType = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 5))
  {
    [(NPKProtoAutomaticProvisioningRequest *)self setPrimaryAccountNumberSuffix:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(NPKProtoAutomaticProvisioningRequest *)self setLocalizedName:?];
    v4 = v5;
  }

  if ((*(v4 + 56) & 2) != 0)
  {
    self->_cardType = *(v4 + 4);
    *&self->_has |= 2u;
  }
}

@end