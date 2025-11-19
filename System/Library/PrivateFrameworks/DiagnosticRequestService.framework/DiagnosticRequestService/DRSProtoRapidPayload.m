@interface DRSProtoRapidPayload
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation DRSProtoRapidPayload

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DRSProtoRapidPayload;
  v4 = [(DRSProtoRapidPayload *)&v8 description];
  v5 = [(DRSProtoRapidPayload *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  deviceMetadata = self->_deviceMetadata;
  if (deviceMetadata)
  {
    v5 = [(DRSProtoClientDeviceMetadata *)deviceMetadata dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"device_metadata"];
  }

  payloadMetadata = self->_payloadMetadata;
  if (payloadMetadata)
  {
    v7 = [(DRSProtoRequestDescription *)payloadMetadata dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"payload_metadata"];
  }

  payloadDescription = self->_payloadDescription;
  if (payloadDescription)
  {
    v9 = [(DRSProtoFileDescription *)payloadDescription dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"payload_description"];
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_uploadAttempts];
    [v3 setObject:v10 forKey:@"upload_attempts"];
  }

  payload = self->_payload;
  if (payload)
  {
    [v3 setObject:payload forKey:@"payload"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_deviceMetadata)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_payloadMetadata)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_payloadDescription)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    uploadAttempts = self->_uploadAttempts;
    PBDataWriterWriteUint32Field();
    v4 = v6;
  }

  if (self->_payload)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_deviceMetadata)
  {
    [v4 setDeviceMetadata:?];
    v4 = v5;
  }

  if (self->_payloadMetadata)
  {
    [v5 setPayloadMetadata:?];
    v4 = v5;
  }

  if (self->_payloadDescription)
  {
    [v5 setPayloadDescription:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 10) = self->_uploadAttempts;
    *(v4 + 44) |= 1u;
  }

  if (self->_payload)
  {
    [v5 setPayload:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(DRSProtoClientDeviceMetadata *)self->_deviceMetadata copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(DRSProtoRequestDescription *)self->_payloadMetadata copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(DRSProtoFileDescription *)self->_payloadDescription copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  if (*&self->_has)
  {
    *(v5 + 40) = self->_uploadAttempts;
    *(v5 + 44) |= 1u;
  }

  v12 = [(NSData *)self->_payload copyWithZone:a3];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  deviceMetadata = self->_deviceMetadata;
  if (deviceMetadata | *(v4 + 1))
  {
    if (![(DRSProtoClientDeviceMetadata *)deviceMetadata isEqual:?])
    {
      goto LABEL_15;
    }
  }

  payloadMetadata = self->_payloadMetadata;
  if (payloadMetadata | *(v4 + 4))
  {
    if (![(DRSProtoRequestDescription *)payloadMetadata isEqual:?])
    {
      goto LABEL_15;
    }
  }

  payloadDescription = self->_payloadDescription;
  if (payloadDescription | *(v4 + 3))
  {
    if (![(DRSProtoFileDescription *)payloadDescription isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v8 = *(v4 + 44);
  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_uploadAttempts != *(v4 + 10))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 44))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  payload = self->_payload;
  if (payload | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  deviceMetadata = self->_deviceMetadata;
  v6 = *(v4 + 1);
  v11 = v4;
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

  v4 = v11;
LABEL_7:
  payloadMetadata = self->_payloadMetadata;
  v8 = *(v4 + 4);
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

  v4 = v11;
LABEL_13:
  payloadDescription = self->_payloadDescription;
  v10 = *(v4 + 3);
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

  v4 = v11;
LABEL_19:
  if (*(v4 + 44))
  {
    self->_uploadAttempts = *(v4 + 10);
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    [(DRSProtoRapidPayload *)self setPayload:?];
    v4 = v11;
  }
}

@end