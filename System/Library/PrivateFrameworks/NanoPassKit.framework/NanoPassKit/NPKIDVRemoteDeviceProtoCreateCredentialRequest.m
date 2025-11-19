@interface NPKIDVRemoteDeviceProtoCreateCredentialRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKIDVRemoteDeviceProtoCreateCredentialRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKIDVRemoteDeviceProtoCreateCredentialRequest;
  v4 = [(NPKIDVRemoteDeviceProtoCreateCredentialRequest *)&v8 description];
  v5 = [(NPKIDVRemoteDeviceProtoCreateCredentialRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  partitionIdentifier = self->_partitionIdentifier;
  if (partitionIdentifier)
  {
    [v3 setObject:partitionIdentifier forKey:@"partitionIdentifier"];
  }

  credentialOptionsData = self->_credentialOptionsData;
  if (credentialOptionsData)
  {
    [v4 setObject:credentialOptionsData forKey:@"credentialOptionsData"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_partitionIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_credentialOptionsData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_partitionIdentifier)
  {
    [v4 setPartitionIdentifier:?];
    v4 = v5;
  }

  if (self->_credentialOptionsData)
  {
    [v5 setCredentialOptionsData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_partitionIdentifier copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_credentialOptionsData copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((partitionIdentifier = self->_partitionIdentifier, !(partitionIdentifier | v4[2])) || -[NSString isEqual:](partitionIdentifier, "isEqual:")))
  {
    credentialOptionsData = self->_credentialOptionsData;
    if (credentialOptionsData | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(NPKIDVRemoteDeviceProtoCreateCredentialRequest *)self setPartitionIdentifier:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(NPKIDVRemoteDeviceProtoCreateCredentialRequest *)self setCredentialOptionsData:?];
    v4 = v5;
  }
}

@end