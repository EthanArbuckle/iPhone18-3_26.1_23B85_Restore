@interface DRSProtoTaskingSystemMessageReceipt
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation DRSProtoTaskingSystemMessageReceipt

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DRSProtoTaskingSystemMessageReceipt;
  v4 = [(DRSProtoTaskingSystemMessageReceipt *)&v8 description];
  v5 = [(DRSProtoTaskingSystemMessageReceipt *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  taskingDeviceMetadata = self->_taskingDeviceMetadata;
  if (taskingDeviceMetadata)
  {
    v6 = [(DRSProtoTaskingDeviceMetadata *)taskingDeviceMetadata dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"tasking_device_metadata"];
  }

  uuid = self->_uuid;
  if (uuid)
  {
    [v3 setObject:uuid forKey:@"uuid"];
  }

  messageType = self->_messageType;
  if (messageType)
  {
    [v3 setObject:messageType forKey:@"message_type"];
  }

  channelType = self->_channelType;
  if (channelType)
  {
    [v3 setObject:channelType forKey:@"channel_type"];
  }

  channelEnvironment = self->_channelEnvironment;
  if (channelEnvironment)
  {
    [v3 setObject:channelEnvironment forKey:@"channel_environment"];
  }

  if (*&self->_has)
  {
    *&v4 = self->_receiptDelay;
    v11 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
    [v3 setObject:v11 forKey:@"receipt_delay"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_taskingDeviceMetadata)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_messageType)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_channelType)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_channelEnvironment)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    receiptDelay = self->_receiptDelay;
    PBDataWriterWriteFloatField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_taskingDeviceMetadata)
  {
    [v4 setTaskingDeviceMetadata:?];
    v4 = v5;
  }

  if (self->_uuid)
  {
    [v5 setUuid:?];
    v4 = v5;
  }

  if (self->_messageType)
  {
    [v5 setMessageType:?];
    v4 = v5;
  }

  if (self->_channelType)
  {
    [v5 setChannelType:?];
    v4 = v5;
  }

  if (self->_channelEnvironment)
  {
    [v5 setChannelEnvironment:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 8) = LODWORD(self->_receiptDelay);
    *(v4 + 56) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(DRSProtoTaskingDeviceMetadata *)self->_taskingDeviceMetadata copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSString *)self->_uuid copyWithZone:a3];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

  v10 = [(NSString *)self->_messageType copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  v12 = [(NSString *)self->_channelType copyWithZone:a3];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  v14 = [(NSString *)self->_channelEnvironment copyWithZone:a3];
  v15 = *(v5 + 8);
  *(v5 + 8) = v14;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_receiptDelay;
    *(v5 + 56) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  taskingDeviceMetadata = self->_taskingDeviceMetadata;
  if (taskingDeviceMetadata | *(v4 + 5))
  {
    if (![(DRSProtoTaskingDeviceMetadata *)taskingDeviceMetadata isEqual:?])
    {
      goto LABEL_16;
    }
  }

  uuid = self->_uuid;
  if (uuid | *(v4 + 6))
  {
    if (![(NSString *)uuid isEqual:?])
    {
      goto LABEL_16;
    }
  }

  messageType = self->_messageType;
  if (messageType | *(v4 + 3))
  {
    if (![(NSString *)messageType isEqual:?])
    {
      goto LABEL_16;
    }
  }

  channelType = self->_channelType;
  if (channelType | *(v4 + 2))
  {
    if (![(NSString *)channelType isEqual:?])
    {
      goto LABEL_16;
    }
  }

  channelEnvironment = self->_channelEnvironment;
  if (channelEnvironment | *(v4 + 1))
  {
    if (![(NSString *)channelEnvironment isEqual:?])
    {
      goto LABEL_16;
    }
  }

  v10 = (*(v4 + 56) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) != 0 && self->_receiptDelay == *(v4 + 8))
    {
      v10 = 1;
      goto LABEL_17;
    }

LABEL_16:
    v10 = 0;
  }

LABEL_17:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(DRSProtoTaskingDeviceMetadata *)self->_taskingDeviceMetadata hash];
  v4 = [(NSString *)self->_uuid hash];
  v5 = [(NSString *)self->_messageType hash];
  v6 = [(NSString *)self->_channelType hash];
  v7 = [(NSString *)self->_channelEnvironment hash];
  if (*&self->_has)
  {
    receiptDelay = self->_receiptDelay;
    if (receiptDelay < 0.0)
    {
      receiptDelay = -receiptDelay;
    }

    *v8.i32 = floorf(receiptDelay + 0.5);
    v12 = (receiptDelay - *v8.i32) * 1.8447e19;
    *v9.i32 = *v8.i32 - (truncf(*v8.i32 * 5.421e-20) * 1.8447e19);
    v13.i64[0] = 0x8000000080000000;
    v13.i64[1] = 0x8000000080000000;
    v10 = 2654435761u * *vbslq_s8(v13, v9, v8).i32;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabsf(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v10;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  taskingDeviceMetadata = self->_taskingDeviceMetadata;
  v6 = *(v4 + 5);
  v7 = v4;
  if (taskingDeviceMetadata)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(DRSProtoTaskingDeviceMetadata *)taskingDeviceMetadata mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(DRSProtoTaskingSystemMessageReceipt *)self setTaskingDeviceMetadata:?];
  }

  v4 = v7;
LABEL_7:
  if (*(v4 + 6))
  {
    [(DRSProtoTaskingSystemMessageReceipt *)self setUuid:?];
    v4 = v7;
  }

  if (*(v4 + 3))
  {
    [(DRSProtoTaskingSystemMessageReceipt *)self setMessageType:?];
    v4 = v7;
  }

  if (*(v4 + 2))
  {
    [(DRSProtoTaskingSystemMessageReceipt *)self setChannelType:?];
    v4 = v7;
  }

  if (*(v4 + 1))
  {
    [(DRSProtoTaskingSystemMessageReceipt *)self setChannelEnvironment:?];
    v4 = v7;
  }

  if (*(v4 + 56))
  {
    self->_receiptDelay = *(v4 + 8);
    *&self->_has |= 1u;
  }
}

@end