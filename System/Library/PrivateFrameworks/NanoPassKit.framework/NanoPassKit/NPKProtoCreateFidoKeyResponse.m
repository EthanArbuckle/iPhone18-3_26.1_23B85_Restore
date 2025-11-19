@interface NPKProtoCreateFidoKeyResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoCreateFidoKeyResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoCreateFidoKeyResponse;
  v4 = [(NPKProtoCreateFidoKeyResponse *)&v8 description];
  v5 = [(NPKProtoCreateFidoKeyResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  fidoKey = self->_fidoKey;
  if (fidoKey)
  {
    [v3 setObject:fidoKey forKey:@"fidoKey"];
  }

  fidoAttestation = self->_fidoAttestation;
  if (fidoAttestation)
  {
    [v4 setObject:fidoAttestation forKey:@"fidoAttestation"];
  }

  errorData = self->_errorData;
  if (errorData)
  {
    [v4 setObject:errorData forKey:@"errorData"];
  }

  keyHash = self->_keyHash;
  if (keyHash)
  {
    [v4 setObject:keyHash forKey:@"keyHash"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_fidoKey)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

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

  if (self->_keyHash)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_fidoKey)
  {
    [v4 setFidoKey:?];
    v4 = v5;
  }

  if (self->_fidoAttestation)
  {
    [v5 setFidoAttestation:?];
    v4 = v5;
  }

  if (self->_errorData)
  {
    [v5 setErrorData:?];
    v4 = v5;
  }

  if (self->_keyHash)
  {
    [v5 setKeyHash:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_fidoKey copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSData *)self->_fidoAttestation copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSData *)self->_errorData copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(NSData *)self->_keyHash copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((fidoKey = self->_fidoKey, !(fidoKey | v4[3])) || -[NSData isEqual:](fidoKey, "isEqual:")) && ((fidoAttestation = self->_fidoAttestation, !(fidoAttestation | v4[2])) || -[NSData isEqual:](fidoAttestation, "isEqual:")) && ((errorData = self->_errorData, !(errorData | v4[1])) || -[NSData isEqual:](errorData, "isEqual:")))
  {
    keyHash = self->_keyHash;
    if (keyHash | v4[4])
    {
      v9 = [(NSData *)keyHash isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_fidoKey hash];
  v4 = [(NSData *)self->_fidoAttestation hash]^ v3;
  v5 = [(NSData *)self->_errorData hash];
  return v4 ^ v5 ^ [(NSData *)self->_keyHash hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[3])
  {
    [(NPKProtoCreateFidoKeyResponse *)self setFidoKey:?];
  }

  if (v4[2])
  {
    [(NPKProtoCreateFidoKeyResponse *)self setFidoAttestation:?];
  }

  if (v4[1])
  {
    [(NPKProtoCreateFidoKeyResponse *)self setErrorData:?];
  }

  if (v4[4])
  {
    [(NPKProtoCreateFidoKeyResponse *)self setKeyHash:?];
  }
}

@end