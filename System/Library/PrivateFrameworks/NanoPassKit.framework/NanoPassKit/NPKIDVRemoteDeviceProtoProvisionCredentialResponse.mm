@interface NPKIDVRemoteDeviceProtoProvisionCredentialResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKIDVRemoteDeviceProtoProvisionCredentialResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKIDVRemoteDeviceProtoProvisionCredentialResponse;
  v4 = [(NPKIDVRemoteDeviceProtoProvisionCredentialResponse *)&v8 description];
  dictionaryRepresentation = [(NPKIDVRemoteDeviceProtoProvisionCredentialResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  errorData = self->_errorData;
  if (errorData)
  {
    [dictionary setObject:errorData forKey:@"errorData"];
  }

  secureElementPassData = self->_secureElementPassData;
  if (secureElementPassData)
  {
    [v4 setObject:secureElementPassData forKey:@"secureElementPassData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_secureElementPassData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_errorData)
  {
    [toCopy setErrorData:?];
    toCopy = v5;
  }

  if (self->_secureElementPassData)
  {
    [v5 setSecureElementPassData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_errorData copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_secureElementPassData copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((errorData = self->_errorData, !(errorData | equalCopy[1])) || -[NSData isEqual:](errorData, "isEqual:")))
  {
    secureElementPassData = self->_secureElementPassData;
    if (secureElementPassData | equalCopy[2])
    {
      v7 = [(NSData *)secureElementPassData isEqual:?];
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
    [(NPKIDVRemoteDeviceProtoProvisionCredentialResponse *)self setErrorData:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(NPKIDVRemoteDeviceProtoProvisionCredentialResponse *)self setSecureElementPassData:?];
    fromCopy = v5;
  }
}

@end