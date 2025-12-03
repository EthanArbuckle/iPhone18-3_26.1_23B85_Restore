@interface NPKProtoCreateFidoKeyResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoCreateFidoKeyResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoCreateFidoKeyResponse;
  v4 = [(NPKProtoCreateFidoKeyResponse *)&v8 description];
  dictionaryRepresentation = [(NPKProtoCreateFidoKeyResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  fidoKey = self->_fidoKey;
  if (fidoKey)
  {
    [dictionary setObject:fidoKey forKey:@"fidoKey"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_fidoKey)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_fidoAttestation)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_keyHash)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_fidoKey)
  {
    [toCopy setFidoKey:?];
    toCopy = v5;
  }

  if (self->_fidoAttestation)
  {
    [v5 setFidoAttestation:?];
    toCopy = v5;
  }

  if (self->_errorData)
  {
    [v5 setErrorData:?];
    toCopy = v5;
  }

  if (self->_keyHash)
  {
    [v5 setKeyHash:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_fidoKey copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSData *)self->_fidoAttestation copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSData *)self->_errorData copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  v12 = [(NSData *)self->_keyHash copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((fidoKey = self->_fidoKey, !(fidoKey | equalCopy[3])) || -[NSData isEqual:](fidoKey, "isEqual:")) && ((fidoAttestation = self->_fidoAttestation, !(fidoAttestation | equalCopy[2])) || -[NSData isEqual:](fidoAttestation, "isEqual:")) && ((errorData = self->_errorData, !(errorData | equalCopy[1])) || -[NSData isEqual:](errorData, "isEqual:")))
  {
    keyHash = self->_keyHash;
    if (keyHash | equalCopy[4])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[3])
  {
    [(NPKProtoCreateFidoKeyResponse *)self setFidoKey:?];
  }

  if (fromCopy[2])
  {
    [(NPKProtoCreateFidoKeyResponse *)self setFidoAttestation:?];
  }

  if (fromCopy[1])
  {
    [(NPKProtoCreateFidoKeyResponse *)self setErrorData:?];
  }

  if (fromCopy[4])
  {
    [(NPKProtoCreateFidoKeyResponse *)self setKeyHash:?];
  }
}

@end