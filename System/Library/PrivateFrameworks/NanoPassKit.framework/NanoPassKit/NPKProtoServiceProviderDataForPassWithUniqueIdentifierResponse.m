@interface NPKProtoServiceProviderDataForPassWithUniqueIdentifierResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoServiceProviderDataForPassWithUniqueIdentifierResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoServiceProviderDataForPassWithUniqueIdentifierResponse;
  v4 = [(NPKProtoServiceProviderDataForPassWithUniqueIdentifierResponse *)&v8 description];
  v5 = [(NPKProtoServiceProviderDataForPassWithUniqueIdentifierResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  serviceProviderData = self->_serviceProviderData;
  if (serviceProviderData)
  {
    [v3 setObject:serviceProviderData forKey:@"serviceProviderData"];
  }

  errorData = self->_errorData;
  if (errorData)
  {
    [v4 setObject:errorData forKey:@"errorData"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_encrypted];
    [v4 setObject:v7 forKey:@"encrypted"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_serviceProviderData)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    encrypted = self->_encrypted;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_serviceProviderData)
  {
    [v4 setServiceProviderData:?];
    v4 = v5;
  }

  if (self->_errorData)
  {
    [v5 setErrorData:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[24] = self->_encrypted;
    v4[28] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_serviceProviderData copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSData *)self->_errorData copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_encrypted;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  serviceProviderData = self->_serviceProviderData;
  if (serviceProviderData | *(v4 + 2))
  {
    if (![(NSData *)serviceProviderData isEqual:?])
    {
      goto LABEL_8;
    }
  }

  errorData = self->_errorData;
  if (errorData | *(v4 + 1))
  {
    if (![(NSData *)errorData isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v7 = (*(v4 + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0)
    {
LABEL_8:
      v7 = 0;
      goto LABEL_9;
    }

    if (self->_encrypted)
    {
      if ((*(v4 + 24) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (*(v4 + 24))
    {
      goto LABEL_8;
    }

    v7 = 1;
  }

LABEL_9:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_serviceProviderData hash];
  v4 = [(NSData *)self->_errorData hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_encrypted;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 2))
  {
    [(NPKProtoServiceProviderDataForPassWithUniqueIdentifierResponse *)self setServiceProviderData:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(NPKProtoServiceProviderDataForPassWithUniqueIdentifierResponse *)self setErrorData:?];
    v4 = v5;
  }

  if (v4[28])
  {
    self->_encrypted = v4[24];
    *&self->_has |= 1u;
  }
}

@end