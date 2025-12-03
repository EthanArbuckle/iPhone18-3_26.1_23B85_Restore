@interface PKProtobufAppletSubcredentialSharingInvitation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)deviceTypeAsString:(int)string;
- (id)dictionaryRepresentation;
- (int)StringAsDeviceType:(id)type;
- (int)deviceType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasEntitlement:(BOOL)entitlement;
- (void)setHasSupportedRadioTechnologies:(BOOL)technologies;
- (void)writeTo:(id)to;
@end

@implementation PKProtobufAppletSubcredentialSharingInvitation

- (void)setHasEntitlement:(BOOL)entitlement
{
  if (entitlement)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)deviceType
{
  if (*&self->_has)
  {
    return self->_deviceType;
  }

  else
  {
    return 0;
  }
}

- (id)deviceTypeAsString:(int)string
{
  if (string)
  {
    if (string == 1)
    {
      v4 = @"WATCH";
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
    }
  }

  else
  {
    v4 = @"PHONE";
  }

  return v4;
}

- (int)StringAsDeviceType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"PHONE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [typeCopy isEqualToString:@"WATCH"];
  }

  return v4;
}

- (void)setHasSupportedRadioTechnologies:(BOOL)technologies
{
  if (technologies)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufAppletSubcredentialSharingInvitation;
  v4 = [(PKProtobufAppletSubcredentialSharingInvitation *)&v8 description];
  dictionaryRepresentation = [(PKProtobufAppletSubcredentialSharingInvitation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
  [dictionary setObject:v4 forKey:@"version"];

  invitation = self->_invitation;
  if (invitation)
  {
    [dictionary setObject:invitation forKey:@"invitation"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  partnerIdentifier = self->_partnerIdentifier;
  if (partnerIdentifier)
  {
    [dictionary setObject:partnerIdentifier forKey:@"partnerIdentifier"];
  }

  pairedReaderIdentifier = self->_pairedReaderIdentifier;
  if (pairedReaderIdentifier)
  {
    [dictionary setObject:pairedReaderIdentifier forKey:@"pairedReaderIdentifier"];
  }

  recipientName = self->_recipientName;
  if (recipientName)
  {
    [dictionary setObject:recipientName forKey:@"recipientName"];
  }

  sharingSessionIdentifier = self->_sharingSessionIdentifier;
  if (sharingSessionIdentifier)
  {
    [dictionary setObject:sharingSessionIdentifier forKey:@"sharingSessionIdentifier"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_entitlement];
    [dictionary setObject:v12 forKey:@"entitlement"];

    has = self->_has;
  }

  if (has)
  {
    deviceType = self->_deviceType;
    if (deviceType)
    {
      if (deviceType == 1)
      {
        v14 = @"WATCH";
      }

      else
      {
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_deviceType];
      }
    }

    else
    {
      v14 = @"PHONE";
    }

    [dictionary setObject:v14 forKey:@"deviceType"];
  }

  issuer = self->_issuer;
  if (issuer)
  {
    [dictionary setObject:issuer forKey:@"issuer"];
  }

  deviceModel = self->_deviceModel;
  if (deviceModel)
  {
    [dictionary setObject:deviceModel forKey:@"deviceModel"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_supportedRadioTechnologies];
    [dictionary setObject:v17 forKey:@"supportedRadioTechnologies"];
  }

  brandIdentifier = self->_brandIdentifier;
  if (brandIdentifier)
  {
    [dictionary setObject:brandIdentifier forKey:@"brandIdentifier"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteUint32Field();
  if (self->_invitation)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  v4 = toCopy;
  if (self->_partnerIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (self->_pairedReaderIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (self->_recipientName)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (self->_sharingSessionIdentifier)
  {
    PBDataWriterWriteDataField();
    v4 = toCopy;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v4 = toCopy;
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteInt32Field();
    v4 = toCopy;
  }

  if (self->_issuer)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (self->_deviceModel)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteUint32Field();
    v4 = toCopy;
  }

  if (self->_brandIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[23] = self->_version;
  v6 = toCopy;
  if (self->_invitation)
  {
    [toCopy setInvitation:?];
    toCopy = v6;
  }

  if (self->_identifier)
  {
    [v6 setIdentifier:?];
    toCopy = v6;
  }

  if (self->_partnerIdentifier)
  {
    [v6 setPartnerIdentifier:?];
    toCopy = v6;
  }

  if (self->_pairedReaderIdentifier)
  {
    [v6 setPairedReaderIdentifier:?];
    toCopy = v6;
  }

  if (self->_recipientName)
  {
    [v6 setRecipientName:?];
    toCopy = v6;
  }

  if (self->_sharingSessionIdentifier)
  {
    [v6 setSharingSessionIdentifier:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[7] = self->_entitlement;
    *(toCopy + 96) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    toCopy[6] = self->_deviceType;
    *(toCopy + 96) |= 1u;
  }

  if (self->_issuer)
  {
    [v6 setIssuer:?];
    toCopy = v6;
  }

  if (self->_deviceModel)
  {
    [v6 setDeviceModel:?];
    toCopy = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    toCopy[22] = self->_supportedRadioTechnologies;
    *(toCopy + 96) |= 4u;
  }

  if (self->_brandIdentifier)
  {
    [v6 setBrandIdentifier:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 92) = self->_version;
  v6 = [(NSData *)self->_invitation copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSString *)self->_identifier copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_partnerIdentifier copyWithZone:zone];
  v11 = *(v5 + 64);
  *(v5 + 64) = v10;

  v12 = [(NSString *)self->_pairedReaderIdentifier copyWithZone:zone];
  v13 = *(v5 + 56);
  *(v5 + 56) = v12;

  v14 = [(NSString *)self->_recipientName copyWithZone:zone];
  v15 = *(v5 + 72);
  *(v5 + 72) = v14;

  v16 = [(NSData *)self->_sharingSessionIdentifier copyWithZone:zone];
  v17 = *(v5 + 80);
  *(v5 + 80) = v16;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 28) = self->_entitlement;
    *(v5 + 96) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 24) = self->_deviceType;
    *(v5 + 96) |= 1u;
  }

  v19 = [(NSString *)self->_issuer copyWithZone:zone];
  v20 = *(v5 + 48);
  *(v5 + 48) = v19;

  v21 = [(NSString *)self->_deviceModel copyWithZone:zone];
  v22 = *(v5 + 16);
  *(v5 + 16) = v21;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 88) = self->_supportedRadioTechnologies;
    *(v5 + 96) |= 4u;
  }

  v23 = [(NSString *)self->_brandIdentifier copyWithZone:zone];
  v24 = *(v5 + 8);
  *(v5 + 8) = v23;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  if (self->_version != *(equalCopy + 23))
  {
    goto LABEL_36;
  }

  invitation = self->_invitation;
  if (invitation | *(equalCopy + 5))
  {
    if (![(NSData *)invitation isEqual:?])
    {
      goto LABEL_36;
    }
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 4))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_36;
    }
  }

  partnerIdentifier = self->_partnerIdentifier;
  if (partnerIdentifier | *(equalCopy + 8))
  {
    if (![(NSString *)partnerIdentifier isEqual:?])
    {
      goto LABEL_36;
    }
  }

  pairedReaderIdentifier = self->_pairedReaderIdentifier;
  if (pairedReaderIdentifier | *(equalCopy + 7))
  {
    if (![(NSString *)pairedReaderIdentifier isEqual:?])
    {
      goto LABEL_36;
    }
  }

  recipientName = self->_recipientName;
  if (recipientName | *(equalCopy + 9))
  {
    if (![(NSString *)recipientName isEqual:?])
    {
      goto LABEL_36;
    }
  }

  sharingSessionIdentifier = self->_sharingSessionIdentifier;
  if (sharingSessionIdentifier | *(equalCopy + 10))
  {
    if (![(NSData *)sharingSessionIdentifier isEqual:?])
    {
      goto LABEL_36;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 96) & 2) == 0 || self->_entitlement != *(equalCopy + 7))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 96) & 2) != 0)
  {
LABEL_36:
    v14 = 0;
    goto LABEL_37;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 96) & 1) == 0 || self->_deviceType != *(equalCopy + 6))
    {
      goto LABEL_36;
    }
  }

  else if (*(equalCopy + 96))
  {
    goto LABEL_36;
  }

  issuer = self->_issuer;
  if (issuer | *(equalCopy + 6) && ![(NSString *)issuer isEqual:?])
  {
    goto LABEL_36;
  }

  deviceModel = self->_deviceModel;
  if (deviceModel | *(equalCopy + 2))
  {
    if (![(NSString *)deviceModel isEqual:?])
    {
      goto LABEL_36;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 96) & 4) == 0 || self->_supportedRadioTechnologies != *(equalCopy + 22))
    {
      goto LABEL_36;
    }
  }

  else if ((*(equalCopy + 96) & 4) != 0)
  {
    goto LABEL_36;
  }

  brandIdentifier = self->_brandIdentifier;
  if (brandIdentifier | *(equalCopy + 1))
  {
    v14 = [(NSString *)brandIdentifier isEqual:?];
  }

  else
  {
    v14 = 1;
  }

LABEL_37:

  return v14;
}

- (unint64_t)hash
{
  version = self->_version;
  v14 = [(NSData *)self->_invitation hash];
  v13 = [(NSString *)self->_identifier hash];
  v3 = [(NSString *)self->_partnerIdentifier hash];
  v4 = [(NSString *)self->_pairedReaderIdentifier hash];
  v5 = [(NSString *)self->_recipientName hash];
  v6 = [(NSData *)self->_sharingSessionIdentifier hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_entitlement;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = 0;
    if (*&self->_has)
    {
LABEL_3:
      v8 = 2654435761 * self->_deviceType;
      goto LABEL_6;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = [(NSString *)self->_issuer hash];
  v10 = [(NSString *)self->_deviceModel hash];
  if ((*&self->_has & 4) != 0)
  {
    v11 = 2654435761 * self->_supportedRadioTechnologies;
  }

  else
  {
    v11 = 0;
  }

  return v14 ^ v13 ^ v3 ^ v4 ^ (2654435761 * version) ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(NSString *)self->_brandIdentifier hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_version = fromCopy[23];
  v6 = fromCopy;
  if (*(fromCopy + 5))
  {
    [(PKProtobufAppletSubcredentialSharingInvitation *)self setInvitation:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 4))
  {
    [(PKProtobufAppletSubcredentialSharingInvitation *)self setIdentifier:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 8))
  {
    [(PKProtobufAppletSubcredentialSharingInvitation *)self setPartnerIdentifier:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 7))
  {
    [(PKProtobufAppletSubcredentialSharingInvitation *)self setPairedReaderIdentifier:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 9))
  {
    [(PKProtobufAppletSubcredentialSharingInvitation *)self setRecipientName:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 10))
  {
    [(PKProtobufAppletSubcredentialSharingInvitation *)self setSharingSessionIdentifier:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 96);
  if ((v5 & 2) != 0)
  {
    self->_entitlement = fromCopy[7];
    *&self->_has |= 2u;
    v5 = *(fromCopy + 96);
  }

  if (v5)
  {
    self->_deviceType = fromCopy[6];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 6))
  {
    [(PKProtobufAppletSubcredentialSharingInvitation *)self setIssuer:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 2))
  {
    [(PKProtobufAppletSubcredentialSharingInvitation *)self setDeviceModel:?];
    fromCopy = v6;
  }

  if ((fromCopy[24] & 4) != 0)
  {
    self->_supportedRadioTechnologies = fromCopy[22];
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 1))
  {
    [(PKProtobufAppletSubcredentialSharingInvitation *)self setBrandIdentifier:?];
    fromCopy = v6;
  }
}

@end