@interface NPKProtoStandalonePaymentProvisioningMethodMetadataDictionaryEntry
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoStandalonePaymentProvisioningMethodMetadataDictionaryEntry

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentProvisioningMethodMetadataDictionaryEntry;
  v4 = [(NPKProtoStandalonePaymentProvisioningMethodMetadataDictionaryEntry *)&v8 description];
  v5 = [(NPKProtoStandalonePaymentProvisioningMethodMetadataDictionaryEntry *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  type = self->_type;
  if (type)
  {
    [v3 setObject:type forKey:@"type"];
  }

  metadata = self->_metadata;
  if (metadata)
  {
    v7 = [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)metadata dictionaryRepresentation];
    [v4 setObject:v7 forKey:@"metadata"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_type)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_metadata)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_type)
  {
    [v4 setType:?];
    v4 = v5;
  }

  if (self->_metadata)
  {
    [v5 setMetadata:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_type copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)self->_metadata copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((type = self->_type, !(type | v4[2])) || -[NSString isEqual:](type, "isEqual:")))
  {
    metadata = self->_metadata;
    if (metadata | v4[1])
    {
      v7 = [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)metadata isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4[2])
  {
    [(NPKProtoStandalonePaymentProvisioningMethodMetadataDictionaryEntry *)self setType:?];
    v4 = v7;
  }

  metadata = self->_metadata;
  v6 = v4[1];
  if (metadata)
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)metadata mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    [(NPKProtoStandalonePaymentProvisioningMethodMetadataDictionaryEntry *)self setMetadata:?];
  }

  v4 = v7;
LABEL_9:
}

@end