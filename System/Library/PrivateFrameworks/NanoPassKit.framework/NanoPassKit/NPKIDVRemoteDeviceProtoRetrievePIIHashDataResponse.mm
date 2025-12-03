@interface NPKIDVRemoteDeviceProtoRetrievePIIHashDataResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKIDVRemoteDeviceProtoRetrievePIIHashDataResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKIDVRemoteDeviceProtoRetrievePIIHashDataResponse;
  v4 = [(NPKIDVRemoteDeviceProtoRetrievePIIHashDataResponse *)&v8 description];
  dictionaryRepresentation = [(NPKIDVRemoteDeviceProtoRetrievePIIHashDataResponse *)self dictionaryRepresentation];
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

  piiHashData = self->_piiHashData;
  if (piiHashData)
  {
    [v4 setObject:piiHashData forKey:@"piiHashData"];
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
    [NPKIDVRemoteDeviceProtoRetrievePIIHashDataResponse writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
  if (self->_piiHashData)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setCredentialIdentifier:self->_credentialIdentifier];
  if (self->_piiHashData)
  {
    [toCopy setPiiHashData:?];
  }

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

  v8 = [(NSString *)self->_piiHashData copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSData *)self->_errorData copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((credentialIdentifier = self->_credentialIdentifier, !(credentialIdentifier | equalCopy[1])) || -[NSString isEqual:](credentialIdentifier, "isEqual:")) && ((piiHashData = self->_piiHashData, !(piiHashData | equalCopy[3])) || -[NSString isEqual:](piiHashData, "isEqual:")))
  {
    errorData = self->_errorData;
    if (errorData | equalCopy[2])
    {
      v8 = [(NSData *)errorData isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_credentialIdentifier hash];
  v4 = [(NSString *)self->_piiHashData hash]^ v3;
  return v4 ^ [(NSData *)self->_errorData hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(NPKIDVRemoteDeviceProtoRetrievePIIHashDataResponse *)self setCredentialIdentifier:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(NPKIDVRemoteDeviceProtoRetrievePIIHashDataResponse *)self setPiiHashData:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(NPKIDVRemoteDeviceProtoRetrievePIIHashDataResponse *)self setErrorData:?];
    fromCopy = v5;
  }
}

@end