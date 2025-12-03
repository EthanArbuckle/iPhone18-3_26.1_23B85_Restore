@interface DRSProtoRapidPayload
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation DRSProtoRapidPayload

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DRSProtoRapidPayload;
  v4 = [(DRSProtoRapidPayload *)&v8 description];
  dictionaryRepresentation = [(DRSProtoRapidPayload *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  deviceMetadata = self->_deviceMetadata;
  if (deviceMetadata)
  {
    dictionaryRepresentation = [(DRSProtoClientDeviceMetadata *)deviceMetadata dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"device_metadata"];
  }

  payloadMetadata = self->_payloadMetadata;
  if (payloadMetadata)
  {
    dictionaryRepresentation2 = [(DRSProtoRequestDescription *)payloadMetadata dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"payload_metadata"];
  }

  payloadDescription = self->_payloadDescription;
  if (payloadDescription)
  {
    dictionaryRepresentation3 = [(DRSProtoFileDescription *)payloadDescription dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"payload_description"];
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_uploadAttempts];
    [dictionary setObject:v10 forKey:@"upload_attempts"];
  }

  payload = self->_payload;
  if (payload)
  {
    [dictionary setObject:payload forKey:@"payload"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_deviceMetadata)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_payloadMetadata)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_payloadDescription)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    uploadAttempts = self->_uploadAttempts;
    PBDataWriterWriteUint32Field();
    toCopy = v6;
  }

  if (self->_payload)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_deviceMetadata)
  {
    [toCopy setDeviceMetadata:?];
    toCopy = v5;
  }

  if (self->_payloadMetadata)
  {
    [v5 setPayloadMetadata:?];
    toCopy = v5;
  }

  if (self->_payloadDescription)
  {
    [v5 setPayloadDescription:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 10) = self->_uploadAttempts;
    *(toCopy + 44) |= 1u;
  }

  if (self->_payload)
  {
    [v5 setPayload:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(DRSProtoClientDeviceMetadata *)self->_deviceMetadata copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(DRSProtoRequestDescription *)self->_payloadMetadata copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(DRSProtoFileDescription *)self->_payloadDescription copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  if (*&self->_has)
  {
    *(v5 + 40) = self->_uploadAttempts;
    *(v5 + 44) |= 1u;
  }

  v12 = [(NSData *)self->_payload copyWithZone:zone];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  deviceMetadata = self->_deviceMetadata;
  if (deviceMetadata | *(equalCopy + 1))
  {
    if (![(DRSProtoClientDeviceMetadata *)deviceMetadata isEqual:?])
    {
      goto LABEL_15;
    }
  }

  payloadMetadata = self->_payloadMetadata;
  if (payloadMetadata | *(equalCopy + 4))
  {
    if (![(DRSProtoRequestDescription *)payloadMetadata isEqual:?])
    {
      goto LABEL_15;
    }
  }

  payloadDescription = self->_payloadDescription;
  if (payloadDescription | *(equalCopy + 3))
  {
    if (![(DRSProtoFileDescription *)payloadDescription isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v8 = *(equalCopy + 44);
  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_uploadAttempts != *(equalCopy + 10))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 44))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  payload = self->_payload;
  if (payload | *(equalCopy + 2))
  {
    v10 = [(NSData *)payload isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_16:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(DRSProtoClientDeviceMetadata *)self->_deviceMetadata hash];
  v4 = [(DRSProtoRequestDescription *)self->_payloadMetadata hash];
  v5 = [(DRSProtoFileDescription *)self->_payloadDescription hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_uploadAttempts;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ [(NSData *)self->_payload hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  deviceMetadata = self->_deviceMetadata;
  v6 = *(fromCopy + 1);
  v11 = fromCopy;
  if (deviceMetadata)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(DRSProtoClientDeviceMetadata *)deviceMetadata mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(DRSProtoRapidPayload *)self setDeviceMetadata:?];
  }

  fromCopy = v11;
LABEL_7:
  payloadMetadata = self->_payloadMetadata;
  v8 = *(fromCopy + 4);
  if (payloadMetadata)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(DRSProtoRequestDescription *)payloadMetadata mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(DRSProtoRapidPayload *)self setPayloadMetadata:?];
  }

  fromCopy = v11;
LABEL_13:
  payloadDescription = self->_payloadDescription;
  v10 = *(fromCopy + 3);
  if (payloadDescription)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(DRSProtoFileDescription *)payloadDescription mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(DRSProtoRapidPayload *)self setPayloadDescription:?];
  }

  fromCopy = v11;
LABEL_19:
  if (*(fromCopy + 44))
  {
    self->_uploadAttempts = *(fromCopy + 10);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    [(DRSProtoRapidPayload *)self setPayload:?];
    fromCopy = v11;
  }
}

@end