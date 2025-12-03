@interface NPKIDVRemoteDeviceProtoGenerateKeyResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKIDVRemoteDeviceProtoGenerateKeyResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKIDVRemoteDeviceProtoGenerateKeyResponse;
  v4 = [(NPKIDVRemoteDeviceProtoGenerateKeyResponse *)&v8 description];
  dictionaryRepresentation = [(NPKIDVRemoteDeviceProtoGenerateKeyResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  signingKeyData = self->_signingKeyData;
  if (signingKeyData)
  {
    [dictionary setObject:signingKeyData forKey:@"signingKeyData"];
  }

  errorData = self->_errorData;
  if (errorData)
  {
    [v4 setObject:errorData forKey:@"errorData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_signingKeyData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_signingKeyData)
  {
    [toCopy setSigningKeyData:?];
    toCopy = v5;
  }

  if (self->_errorData)
  {
    [v5 setErrorData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_signingKeyData copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_errorData copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((signingKeyData = self->_signingKeyData, !(signingKeyData | equalCopy[2])) || -[NSData isEqual:](signingKeyData, "isEqual:")))
  {
    errorData = self->_errorData;
    if (errorData | equalCopy[1])
    {
      v7 = [(NSData *)errorData isEqual:?];
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
    [(NPKIDVRemoteDeviceProtoGenerateKeyResponse *)self setSigningKeyData:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(NPKIDVRemoteDeviceProtoGenerateKeyResponse *)self setErrorData:?];
    fromCopy = v5;
  }
}

@end