@interface NPKProtoCarKeyDecryptDataRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoCarKeyDecryptDataRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoCarKeyDecryptDataRequest;
  v4 = [(NPKProtoCarKeyDecryptDataRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoCarKeyDecryptDataRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  encryptedData = self->_encryptedData;
  if (encryptedData)
  {
    [dictionary setObject:encryptedData forKey:@"encryptedData"];
  }

  credentialData = self->_credentialData;
  if (credentialData)
  {
    [v4 setObject:credentialData forKey:@"credentialData"];
  }

  ephemeralPublicKeyData = self->_ephemeralPublicKeyData;
  if (ephemeralPublicKeyData)
  {
    [v4 setObject:ephemeralPublicKeyData forKey:@"ephemeralPublicKeyData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_encryptedData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_credentialData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_ephemeralPublicKeyData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_encryptedData)
  {
    [toCopy setEncryptedData:?];
    toCopy = v5;
  }

  if (self->_credentialData)
  {
    [v5 setCredentialData:?];
    toCopy = v5;
  }

  if (self->_ephemeralPublicKeyData)
  {
    [v5 setEphemeralPublicKeyData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_encryptedData copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_credentialData copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSData *)self->_ephemeralPublicKeyData copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((encryptedData = self->_encryptedData, !(encryptedData | equalCopy[2])) || -[NSData isEqual:](encryptedData, "isEqual:")) && ((credentialData = self->_credentialData, !(credentialData | equalCopy[1])) || -[NSData isEqual:](credentialData, "isEqual:")))
  {
    ephemeralPublicKeyData = self->_ephemeralPublicKeyData;
    if (ephemeralPublicKeyData | equalCopy[3])
    {
      v8 = [(NSData *)ephemeralPublicKeyData isEqual:?];
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
  v3 = [(NSData *)self->_encryptedData hash];
  v4 = [(NSData *)self->_credentialData hash]^ v3;
  return v4 ^ [(NSData *)self->_ephemeralPublicKeyData hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(NPKProtoCarKeyDecryptDataRequest *)self setEncryptedData:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(NPKProtoCarKeyDecryptDataRequest *)self setCredentialData:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(NPKProtoCarKeyDecryptDataRequest *)self setEphemeralPublicKeyData:?];
    fromCopy = v5;
  }
}

@end