@interface NPKIDVRemoteDeviceProtoRetrievePIIHashDataResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKIDVRemoteDeviceProtoRetrievePIIHashDataResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKIDVRemoteDeviceProtoRetrievePIIHashDataResponse;
  v4 = [(NPKIDVRemoteDeviceProtoRetrievePIIHashDataResponse *)&v8 description];
  v5 = [(NPKIDVRemoteDeviceProtoRetrievePIIHashDataResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  credentialIdentifier = self->_credentialIdentifier;
  if (credentialIdentifier)
  {
    [v3 setObject:credentialIdentifier forKey:@"credentialIdentifier"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_credentialIdentifier)
  {
    [NPKIDVRemoteDeviceProtoRetrievePIIHashDataResponse writeTo:];
  }

  v5 = v4;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  [v4 setCredentialIdentifier:self->_credentialIdentifier];
  if (self->_piiHashData)
  {
    [v4 setPiiHashData:?];
  }

  if (self->_errorData)
  {
    [v4 setErrorData:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_credentialIdentifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_piiHashData copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSData *)self->_errorData copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((credentialIdentifier = self->_credentialIdentifier, !(credentialIdentifier | v4[1])) || -[NSString isEqual:](credentialIdentifier, "isEqual:")) && ((piiHashData = self->_piiHashData, !(piiHashData | v4[3])) || -[NSString isEqual:](piiHashData, "isEqual:")))
  {
    errorData = self->_errorData;
    if (errorData | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(NPKIDVRemoteDeviceProtoRetrievePIIHashDataResponse *)self setCredentialIdentifier:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(NPKIDVRemoteDeviceProtoRetrievePIIHashDataResponse *)self setPiiHashData:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(NPKIDVRemoteDeviceProtoRetrievePIIHashDataResponse *)self setErrorData:?];
    v4 = v5;
  }
}

@end