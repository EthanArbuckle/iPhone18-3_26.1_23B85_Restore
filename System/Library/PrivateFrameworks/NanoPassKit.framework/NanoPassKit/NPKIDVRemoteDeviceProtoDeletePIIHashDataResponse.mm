@interface NPKIDVRemoteDeviceProtoDeletePIIHashDataResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKIDVRemoteDeviceProtoDeletePIIHashDataResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKIDVRemoteDeviceProtoDeletePIIHashDataResponse;
  v4 = [(NPKIDVRemoteDeviceProtoDeletePIIHashDataResponse *)&v8 description];
  dictionaryRepresentation = [(NPKIDVRemoteDeviceProtoDeletePIIHashDataResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  credentialIdentifier = self->_credentialIdentifier;
  if (credentialIdentifier)
  {
    [dictionary setObject:credentialIdentifier forKey:@"credentialIdentifier"];
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
  if (!self->_credentialIdentifier)
  {
    [NPKIDVRemoteDeviceProtoDeletePIIHashDataResponse writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setCredentialIdentifier:self->_credentialIdentifier];
  if (self->_errorData)
  {
    [toCopy setErrorData:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_credentialIdentifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_errorData copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((credentialIdentifier = self->_credentialIdentifier, !(credentialIdentifier | equalCopy[1])) || -[NSString isEqual:](credentialIdentifier, "isEqual:")))
  {
    errorData = self->_errorData;
    if (errorData | equalCopy[2])
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
  if (fromCopy[1])
  {
    [(NPKIDVRemoteDeviceProtoDeletePIIHashDataResponse *)self setCredentialIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(NPKIDVRemoteDeviceProtoDeletePIIHashDataResponse *)self setErrorData:?];
    fromCopy = v5;
  }
}

@end