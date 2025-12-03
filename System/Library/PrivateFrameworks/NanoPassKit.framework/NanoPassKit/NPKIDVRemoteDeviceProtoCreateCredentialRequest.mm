@interface NPKIDVRemoteDeviceProtoCreateCredentialRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKIDVRemoteDeviceProtoCreateCredentialRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKIDVRemoteDeviceProtoCreateCredentialRequest;
  v4 = [(NPKIDVRemoteDeviceProtoCreateCredentialRequest *)&v8 description];
  dictionaryRepresentation = [(NPKIDVRemoteDeviceProtoCreateCredentialRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  partitionIdentifier = self->_partitionIdentifier;
  if (partitionIdentifier)
  {
    [dictionary setObject:partitionIdentifier forKey:@"partitionIdentifier"];
  }

  credentialOptionsData = self->_credentialOptionsData;
  if (credentialOptionsData)
  {
    [v4 setObject:credentialOptionsData forKey:@"credentialOptionsData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_partitionIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_credentialOptionsData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_partitionIdentifier)
  {
    [toCopy setPartitionIdentifier:?];
    toCopy = v5;
  }

  if (self->_credentialOptionsData)
  {
    [v5 setCredentialOptionsData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_partitionIdentifier copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_credentialOptionsData copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((partitionIdentifier = self->_partitionIdentifier, !(partitionIdentifier | equalCopy[2])) || -[NSString isEqual:](partitionIdentifier, "isEqual:")))
  {
    credentialOptionsData = self->_credentialOptionsData;
    if (credentialOptionsData | equalCopy[1])
    {
      v7 = [(NSData *)credentialOptionsData isEqual:?];
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
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(NPKIDVRemoteDeviceProtoCreateCredentialRequest *)self setPartitionIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(NPKIDVRemoteDeviceProtoCreateCredentialRequest *)self setCredentialOptionsData:?];
    fromCopy = v5;
  }
}

@end