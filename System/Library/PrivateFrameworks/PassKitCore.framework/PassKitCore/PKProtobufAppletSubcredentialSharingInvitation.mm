@interface PKProtobufAppletSubcredentialSharingInvitation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)deviceTypeAsString:(int)a3;
- (id)dictionaryRepresentation;
- (int)StringAsDeviceType:(id)a3;
- (int)deviceType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasEntitlement:(BOOL)a3;
- (void)setHasSupportedRadioTechnologies:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufAppletSubcredentialSharingInvitation

- (void)setHasEntitlement:(BOOL)a3
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

- (id)deviceTypeAsString:(int)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = @"WATCH";
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
    }
  }

  else
  {
    v4 = @"PHONE";
  }

  return v4;
}

- (int)StringAsDeviceType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PHONE"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"WATCH"];
  }

  return v4;
}

- (void)setHasSupportedRadioTechnologies:(BOOL)a3
{
  if (a3)
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
  v5 = [(PKProtobufAppletSubcredentialSharingInvitation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
  [v3 setObject:v4 forKey:@"version"];

  invitation = self->_invitation;
  if (invitation)
  {
    [v3 setObject:invitation forKey:@"invitation"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  partnerIdentifier = self->_partnerIdentifier;
  if (partnerIdentifier)
  {
    [v3 setObject:partnerIdentifier forKey:@"partnerIdentifier"];
  }

  pairedReaderIdentifier = self->_pairedReaderIdentifier;
  if (pairedReaderIdentifier)
  {
    [v3 setObject:pairedReaderIdentifier forKey:@"pairedReaderIdentifier"];
  }

  recipientName = self->_recipientName;
  if (recipientName)
  {
    [v3 setObject:recipientName forKey:@"recipientName"];
  }

  sharingSessionIdentifier = self->_sharingSessionIdentifier;
  if (sharingSessionIdentifier)
  {
    [v3 setObject:sharingSessionIdentifier forKey:@"sharingSessionIdentifier"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_entitlement];
    [v3 setObject:v12 forKey:@"entitlement"];

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

    [v3 setObject:v14 forKey:@"deviceType"];
  }

  issuer = self->_issuer;
  if (issuer)
  {
    [v3 setObject:issuer forKey:@"issuer"];
  }

  deviceModel = self->_deviceModel;
  if (deviceModel)
  {
    [v3 setObject:deviceModel forKey:@"deviceModel"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_supportedRadioTechnologies];
    [v3 setObject:v17 forKey:@"supportedRadioTechnologies"];
  }

  brandIdentifier = self->_brandIdentifier;
  if (brandIdentifier)
  {
    [v3 setObject:brandIdentifier forKey:@"brandIdentifier"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  PBDataWriterWriteUint32Field();
  if (self->_invitation)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  v4 = v6;
  if (self->_partnerIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_pairedReaderIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_recipientName)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_sharingSessionIdentifier)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    v4 = v6;
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_issuer)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_deviceModel)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }

  if (self->_brandIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[23] = self->_version;
  v6 = v4;
  if (self->_invitation)
  {
    [v4 setInvitation:?];
    v4 = v6;
  }

  if (self->_identifier)
  {
    [v6 setIdentifier:?];
    v4 = v6;
  }

  if (self->_partnerIdentifier)
  {
    [v6 setPartnerIdentifier:?];
    v4 = v6;
  }

  if (self->_pairedReaderIdentifier)
  {
    [v6 setPairedReaderIdentifier:?];
    v4 = v6;
  }

  if (self->_recipientName)
  {
    [v6 setRecipientName:?];
    v4 = v6;
  }

  if (self->_sharingSessionIdentifier)
  {
    [v6 setSharingSessionIdentifier:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[7] = self->_entitlement;
    *(v4 + 96) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[6] = self->_deviceType;
    *(v4 + 96) |= 1u;
  }

  if (self->_issuer)
  {
    [v6 setIssuer:?];
    v4 = v6;
  }

  if (self->_deviceModel)
  {
    [v6 setDeviceModel:?];
    v4 = v6;
  }

  if ((*&self->_has & 4) != 0)
  {
    v4[22] = self->_supportedRadioTechnologies;
    *(v4 + 96) |= 4u;
  }

  if (self->_brandIdentifier)
  {
    [v6 setBrandIdentifier:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 92) = self->_version;
  v6 = [(NSData *)self->_invitation copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSString *)self->_identifier copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_partnerIdentifier copyWithZone:a3];
  v11 = *(v5 + 64);
  *(v5 + 64) = v10;

  v12 = [(NSString *)self->_pairedReaderIdentifier copyWithZone:a3];
  v13 = *(v5 + 56);
  *(v5 + 56) = v12;

  v14 = [(NSString *)self->_recipientName copyWithZone:a3];
  v15 = *(v5 + 72);
  *(v5 + 72) = v14;

  v16 = [(NSData *)self->_sharingSessionIdentifier copyWithZone:a3];
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

  v19 = [(NSString *)self->_issuer copyWithZone:a3];
  v20 = *(v5 + 48);
  *(v5 + 48) = v19;

  v21 = [(NSString *)self->_deviceModel copyWithZone:a3];
  v22 = *(v5 + 16);
  *(v5 + 16) = v21;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 88) = self->_supportedRadioTechnologies;
    *(v5 + 96) |= 4u;
  }

  v23 = [(NSString *)self->_brandIdentifier copyWithZone:a3];
  v24 = *(v5 + 8);
  *(v5 + 8) = v23;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  if (self->_version != *(v4 + 23))
  {
    goto LABEL_36;
  }

  invitation = self->_invitation;
  if (invitation | *(v4 + 5))
  {
    if (![(NSData *)invitation isEqual:?])
    {
      goto LABEL_36;
    }
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 4))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_36;
    }
  }

  partnerIdentifier = self->_partnerIdentifier;
  if (partnerIdentifier | *(v4 + 8))
  {
    if (![(NSString *)partnerIdentifier isEqual:?])
    {
      goto LABEL_36;
    }
  }

  pairedReaderIdentifier = self->_pairedReaderIdentifier;
  if (pairedReaderIdentifier | *(v4 + 7))
  {
    if (![(NSString *)pairedReaderIdentifier isEqual:?])
    {
      goto LABEL_36;
    }
  }

  recipientName = self->_recipientName;
  if (recipientName | *(v4 + 9))
  {
    if (![(NSString *)recipientName isEqual:?])
    {
      goto LABEL_36;
    }
  }

  sharingSessionIdentifier = self->_sharingSessionIdentifier;
  if (sharingSessionIdentifier | *(v4 + 10))
  {
    if (![(NSData *)sharingSessionIdentifier isEqual:?])
    {
      goto LABEL_36;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 96) & 2) == 0 || self->_entitlement != *(v4 + 7))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 96) & 2) != 0)
  {
LABEL_36:
    v14 = 0;
    goto LABEL_37;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 96) & 1) == 0 || self->_deviceType != *(v4 + 6))
    {
      goto LABEL_36;
    }
  }

  else if (*(v4 + 96))
  {
    goto LABEL_36;
  }

  issuer = self->_issuer;
  if (issuer | *(v4 + 6) && ![(NSString *)issuer isEqual:?])
  {
    goto LABEL_36;
  }

  deviceModel = self->_deviceModel;
  if (deviceModel | *(v4 + 2))
  {
    if (![(NSString *)deviceModel isEqual:?])
    {
      goto LABEL_36;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 96) & 4) == 0 || self->_supportedRadioTechnologies != *(v4 + 22))
    {
      goto LABEL_36;
    }
  }

  else if ((*(v4 + 96) & 4) != 0)
  {
    goto LABEL_36;
  }

  brandIdentifier = self->_brandIdentifier;
  if (brandIdentifier | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_version = v4[23];
  v6 = v4;
  if (*(v4 + 5))
  {
    [(PKProtobufAppletSubcredentialSharingInvitation *)self setInvitation:?];
    v4 = v6;
  }

  if (*(v4 + 4))
  {
    [(PKProtobufAppletSubcredentialSharingInvitation *)self setIdentifier:?];
    v4 = v6;
  }

  if (*(v4 + 8))
  {
    [(PKProtobufAppletSubcredentialSharingInvitation *)self setPartnerIdentifier:?];
    v4 = v6;
  }

  if (*(v4 + 7))
  {
    [(PKProtobufAppletSubcredentialSharingInvitation *)self setPairedReaderIdentifier:?];
    v4 = v6;
  }

  if (*(v4 + 9))
  {
    [(PKProtobufAppletSubcredentialSharingInvitation *)self setRecipientName:?];
    v4 = v6;
  }

  if (*(v4 + 10))
  {
    [(PKProtobufAppletSubcredentialSharingInvitation *)self setSharingSessionIdentifier:?];
    v4 = v6;
  }

  v5 = *(v4 + 96);
  if ((v5 & 2) != 0)
  {
    self->_entitlement = v4[7];
    *&self->_has |= 2u;
    v5 = *(v4 + 96);
  }

  if (v5)
  {
    self->_deviceType = v4[6];
    *&self->_has |= 1u;
  }

  if (*(v4 + 6))
  {
    [(PKProtobufAppletSubcredentialSharingInvitation *)self setIssuer:?];
    v4 = v6;
  }

  if (*(v4 + 2))
  {
    [(PKProtobufAppletSubcredentialSharingInvitation *)self setDeviceModel:?];
    v4 = v6;
  }

  if ((v4[24] & 4) != 0)
  {
    self->_supportedRadioTechnologies = v4[22];
    *&self->_has |= 4u;
  }

  if (*(v4 + 1))
  {
    [(PKProtobufAppletSubcredentialSharingInvitation *)self setBrandIdentifier:?];
    v4 = v6;
  }
}

@end