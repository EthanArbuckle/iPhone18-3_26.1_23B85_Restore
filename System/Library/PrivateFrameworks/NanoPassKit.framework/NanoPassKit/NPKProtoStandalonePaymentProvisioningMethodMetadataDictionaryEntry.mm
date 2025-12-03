@interface NPKProtoStandalonePaymentProvisioningMethodMetadataDictionaryEntry
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandalonePaymentProvisioningMethodMetadataDictionaryEntry

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentProvisioningMethodMetadataDictionaryEntry;
  v4 = [(NPKProtoStandalonePaymentProvisioningMethodMetadataDictionaryEntry *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandalonePaymentProvisioningMethodMetadataDictionaryEntry *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  type = self->_type;
  if (type)
  {
    [dictionary setObject:type forKey:@"type"];
  }

  metadata = self->_metadata;
  if (metadata)
  {
    dictionaryRepresentation = [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)metadata dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"metadata"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_type)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_metadata)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_type)
  {
    [toCopy setType:?];
    toCopy = v5;
  }

  if (self->_metadata)
  {
    [v5 setMetadata:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_type copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)self->_metadata copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((type = self->_type, !(type | equalCopy[2])) || -[NSString isEqual:](type, "isEqual:")))
  {
    metadata = self->_metadata;
    if (metadata | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (fromCopy[2])
  {
    [(NPKProtoStandalonePaymentProvisioningMethodMetadataDictionaryEntry *)self setType:?];
    fromCopy = v7;
  }

  metadata = self->_metadata;
  v6 = fromCopy[1];
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

  fromCopy = v7;
LABEL_9:
}

@end