@interface IDSQRProtoSessionParameters
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasServiceId:(BOOL)a3;
- (void)setHasWebParticipantCapabilities:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSQRProtoSessionParameters

- (void)setHasWebParticipantCapabilities:(BOOL)a3
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

- (void)setHasServiceId:(BOOL)a3
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
  v8.super_class = IDSQRProtoSessionParameters;
  v4 = [(IDSQRProtoSessionParameters *)&v8 description];
  v5 = [(IDSQRProtoSessionParameters *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  qrAccessToken = self->_qrAccessToken;
  if (qrAccessToken)
  {
    [v3 setObject:qrAccessToken forKey:@"qr_access_token"];
  }

  softwareVersion = self->_softwareVersion;
  if (softwareVersion)
  {
    [v4 setObject:softwareVersion forKey:@"software_version"];
  }

  has = self->_has;
  if (has)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_participantCapabilities];
    [v4 setObject:v10 forKey:@"participant_capabilities"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_webParticipantCapabilities];
  [v4 setObject:v11 forKey:@"web_participant_capabilities"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_serviceId];
    [v4 setObject:v8 forKey:@"service_id"];
  }

LABEL_9:

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_qrAccessToken)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_softwareVersion)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint64Field();
    v4 = v6;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteUint64Field();
  v4 = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }

LABEL_9:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_qrAccessToken)
  {
    [v4 setQrAccessToken:?];
    v4 = v6;
  }

  if (self->_softwareVersion)
  {
    [v6 setSoftwareVersion:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = self->_participantCapabilities;
    *(v4 + 48) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  *(v4 + 2) = self->_webParticipantCapabilities;
  *(v4 + 48) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    *(v4 + 8) = self->_serviceId;
    *(v4 + 48) |= 4u;
  }

LABEL_9:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_qrAccessToken copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_softwareVersion copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 16) = self->_webParticipantCapabilities;
    *(v5 + 48) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      return v5;
    }

    goto LABEL_4;
  }

  *(v5 + 8) = self->_participantCapabilities;
  *(v5 + 48) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v5 + 32) = self->_serviceId;
    *(v5 + 48) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  qrAccessToken = self->_qrAccessToken;
  if (qrAccessToken | *(v4 + 3))
  {
    if (![(NSData *)qrAccessToken isEqual:?])
    {
      goto LABEL_20;
    }
  }

  softwareVersion = self->_softwareVersion;
  if (softwareVersion | *(v4 + 5))
  {
    if (![(NSString *)softwareVersion isEqual:?])
    {
      goto LABEL_20;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_participantCapabilities != *(v4 + 1))
    {
      goto LABEL_20;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_20:
    v7 = 0;
    goto LABEL_21;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_webParticipantCapabilities != *(v4 + 2))
    {
      goto LABEL_20;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
    goto LABEL_20;
  }

  v7 = (*(v4 + 48) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 48) & 4) == 0 || self->_serviceId != *(v4 + 8))
    {
      goto LABEL_20;
    }

    v7 = 1;
  }

LABEL_21:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_qrAccessToken hash];
  v4 = [(NSString *)self->_softwareVersion hash];
  if ((*&self->_has & 1) == 0)
  {
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v7 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7;
  }

  v5 = 2654435761u * self->_participantCapabilities;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = 2654435761u * self->_webParticipantCapabilities;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v7 = 2654435761 * self->_serviceId;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 3))
  {
    [(IDSQRProtoSessionParameters *)self setQrAccessToken:?];
    v4 = v6;
  }

  if (*(v4 + 5))
  {
    [(IDSQRProtoSessionParameters *)self setSoftwareVersion:?];
    v4 = v6;
  }

  v5 = *(v4 + 48);
  if (v5)
  {
    self->_participantCapabilities = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 48);
    if ((v5 & 2) == 0)
    {
LABEL_7:
      if ((v5 & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*(v4 + 48) & 2) == 0)
  {
    goto LABEL_7;
  }

  self->_webParticipantCapabilities = *(v4 + 2);
  *&self->_has |= 2u;
  if ((*(v4 + 48) & 4) != 0)
  {
LABEL_8:
    self->_serviceId = *(v4 + 8);
    *&self->_has |= 4u;
  }

LABEL_9:
}

@end