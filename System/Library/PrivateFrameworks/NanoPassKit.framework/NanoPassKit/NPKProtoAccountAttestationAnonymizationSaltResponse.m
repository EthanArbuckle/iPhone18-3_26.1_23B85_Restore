@interface NPKProtoAccountAttestationAnonymizationSaltResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoAccountAttestationAnonymizationSaltResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoAccountAttestationAnonymizationSaltResponse;
  v4 = [(NPKProtoAccountAttestationAnonymizationSaltResponse *)&v8 description];
  v5 = [(NPKProtoAccountAttestationAnonymizationSaltResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  anonymizationSalt = self->_anonymizationSalt;
  if (anonymizationSalt)
  {
    [v3 setObject:anonymizationSalt forKey:@"anonymizationSalt"];
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
  v5 = v4;
  if (self->_anonymizationSalt)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_anonymizationSalt)
  {
    [v4 setAnonymizationSalt:?];
    v4 = v5;
  }

  if (self->_errorData)
  {
    [v5 setErrorData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_anonymizationSalt copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_errorData copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((anonymizationSalt = self->_anonymizationSalt, !(anonymizationSalt | v4[1])) || -[NSString isEqual:](anonymizationSalt, "isEqual:")))
  {
    errorData = self->_errorData;
    if (errorData | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(NPKProtoAccountAttestationAnonymizationSaltResponse *)self setAnonymizationSalt:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(NPKProtoAccountAttestationAnonymizationSaltResponse *)self setErrorData:?];
    v4 = v5;
  }
}

@end