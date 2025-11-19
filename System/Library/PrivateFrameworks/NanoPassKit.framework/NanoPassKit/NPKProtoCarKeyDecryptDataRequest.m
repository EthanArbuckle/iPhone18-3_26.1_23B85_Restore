@interface NPKProtoCarKeyDecryptDataRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoCarKeyDecryptDataRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoCarKeyDecryptDataRequest;
  v4 = [(NPKProtoCarKeyDecryptDataRequest *)&v8 description];
  v5 = [(NPKProtoCarKeyDecryptDataRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  encryptedData = self->_encryptedData;
  if (encryptedData)
  {
    [v3 setObject:encryptedData forKey:@"encryptedData"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_encryptedData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_credentialData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_ephemeralPublicKeyData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_encryptedData)
  {
    [v4 setEncryptedData:?];
    v4 = v5;
  }

  if (self->_credentialData)
  {
    [v5 setCredentialData:?];
    v4 = v5;
  }

  if (self->_ephemeralPublicKeyData)
  {
    [v5 setEphemeralPublicKeyData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_encryptedData copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_credentialData copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSData *)self->_ephemeralPublicKeyData copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((encryptedData = self->_encryptedData, !(encryptedData | v4[2])) || -[NSData isEqual:](encryptedData, "isEqual:")) && ((credentialData = self->_credentialData, !(credentialData | v4[1])) || -[NSData isEqual:](credentialData, "isEqual:")))
  {
    ephemeralPublicKeyData = self->_ephemeralPublicKeyData;
    if (ephemeralPublicKeyData | v4[3])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(NPKProtoCarKeyDecryptDataRequest *)self setEncryptedData:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(NPKProtoCarKeyDecryptDataRequest *)self setCredentialData:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(NPKProtoCarKeyDecryptDataRequest *)self setEphemeralPublicKeyData:?];
    v4 = v5;
  }
}

@end