@interface NPKIDVRemoteDeviceProtoCasdCertificateResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKIDVRemoteDeviceProtoCasdCertificateResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKIDVRemoteDeviceProtoCasdCertificateResponse;
  v4 = [(NPKIDVRemoteDeviceProtoCasdCertificateResponse *)&v8 description];
  v5 = [(NPKIDVRemoteDeviceProtoCasdCertificateResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  errorData = self->_errorData;
  if (errorData)
  {
    [v3 setObject:errorData forKey:@"errorData"];
  }

  casdCertificate = self->_casdCertificate;
  if (casdCertificate)
  {
    [v4 setObject:casdCertificate forKey:@"casdCertificate"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_casdCertificate)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_errorData)
  {
    [v4 setErrorData:?];
    v4 = v5;
  }

  if (self->_casdCertificate)
  {
    [v5 setCasdCertificate:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_errorData copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_casdCertificate copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((errorData = self->_errorData, !(errorData | v4[2])) || -[NSData isEqual:](errorData, "isEqual:")))
  {
    casdCertificate = self->_casdCertificate;
    if (casdCertificate | v4[1])
    {
      v7 = [(NSData *)casdCertificate isEqual:?];
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
    [(NPKIDVRemoteDeviceProtoCasdCertificateResponse *)self setErrorData:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(NPKIDVRemoteDeviceProtoCasdCertificateResponse *)self setCasdCertificate:?];
    v4 = v5;
  }
}

@end