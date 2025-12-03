@interface IDSQRProtoSessionParameters
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasServiceId:(BOOL)id;
- (void)setHasWebParticipantCapabilities:(BOOL)capabilities;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoSessionParameters

- (void)setHasWebParticipantCapabilities:(BOOL)capabilities
{
  if (capabilities)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasServiceId:(BOOL)id
{
  if (id)
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
  dictionaryRepresentation = [(IDSQRProtoSessionParameters *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  qrAccessToken = self->_qrAccessToken;
  if (qrAccessToken)
  {
    [dictionary setObject:qrAccessToken forKey:@"qr_access_token"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_qrAccessToken)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (self->_softwareVersion)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint64Field();
    toCopy = v6;
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
  toCopy = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }

LABEL_9:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_qrAccessToken)
  {
    [toCopy setQrAccessToken:?];
    toCopy = v6;
  }

  if (self->_softwareVersion)
  {
    [v6 setSoftwareVersion:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = self->_participantCapabilities;
    *(toCopy + 48) |= 1u;
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

  *(toCopy + 2) = self->_webParticipantCapabilities;
  *(toCopy + 48) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    *(toCopy + 8) = self->_serviceId;
    *(toCopy + 48) |= 4u;
  }

LABEL_9:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_qrAccessToken copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_softwareVersion copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  qrAccessToken = self->_qrAccessToken;
  if (qrAccessToken | *(equalCopy + 3))
  {
    if (![(NSData *)qrAccessToken isEqual:?])
    {
      goto LABEL_20;
    }
  }

  softwareVersion = self->_softwareVersion;
  if (softwareVersion | *(equalCopy + 5))
  {
    if (![(NSString *)softwareVersion isEqual:?])
    {
      goto LABEL_20;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_participantCapabilities != *(equalCopy + 1))
    {
      goto LABEL_20;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_20:
    v7 = 0;
    goto LABEL_21;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_webParticipantCapabilities != *(equalCopy + 2))
    {
      goto LABEL_20;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_20;
  }

  v7 = (*(equalCopy + 48) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 48) & 4) == 0 || self->_serviceId != *(equalCopy + 8))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(IDSQRProtoSessionParameters *)self setQrAccessToken:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 5))
  {
    [(IDSQRProtoSessionParameters *)self setSoftwareVersion:?];
    fromCopy = v6;
  }

  v5 = *(fromCopy + 48);
  if (v5)
  {
    self->_participantCapabilities = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 48);
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

  else if ((*(fromCopy + 48) & 2) == 0)
  {
    goto LABEL_7;
  }

  self->_webParticipantCapabilities = *(fromCopy + 2);
  *&self->_has |= 2u;
  if ((*(fromCopy + 48) & 4) != 0)
  {
LABEL_8:
    self->_serviceId = *(fromCopy + 8);
    *&self->_has |= 4u;
  }

LABEL_9:
}

@end