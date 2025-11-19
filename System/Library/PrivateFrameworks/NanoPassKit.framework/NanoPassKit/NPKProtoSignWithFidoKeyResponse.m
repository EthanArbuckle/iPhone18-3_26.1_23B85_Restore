@interface NPKProtoSignWithFidoKeyResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoSignWithFidoKeyResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoSignWithFidoKeyResponse;
  v4 = [(NPKProtoSignWithFidoKeyResponse *)&v8 description];
  v5 = [(NPKProtoSignWithFidoKeyResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  fidoAttestation = self->_fidoAttestation;
  if (fidoAttestation)
  {
    [v3 setObject:fidoAttestation forKey:@"fidoAttestation"];
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
  if (self->_fidoAttestation)
  {
    PBDataWriterWriteDataField();
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
  if (self->_fidoAttestation)
  {
    [v4 setFidoAttestation:?];
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
  v6 = [(NSData *)self->_fidoAttestation copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_errorData copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((fidoAttestation = self->_fidoAttestation, !(fidoAttestation | v4[2])) || -[NSData isEqual:](fidoAttestation, "isEqual:")))
  {
    errorData = self->_errorData;
    if (errorData | v4[1])
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
  if (v4[2])
  {
    [(NPKProtoSignWithFidoKeyResponse *)self setFidoAttestation:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(NPKProtoSignWithFidoKeyResponse *)self setErrorData:?];
    v4 = v5;
  }
}

@end