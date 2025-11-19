@interface NGMPBLegacyKey
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NGMPBLegacyKey

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NGMPBLegacyKey;
  v4 = [(NGMPBLegacyKey *)&v8 description];
  v5 = [(NGMPBLegacyKey *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  encryptionKey = self->_encryptionKey;
  if (encryptionKey)
  {
    [v3 setObject:encryptionKey forKey:@"encryptionKey"];
  }

  signingKey = self->_signingKey;
  if (signingKey)
  {
    [v4 setObject:signingKey forKey:@"signingKey"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_encryptionKey)
  {
    [NGMPBLegacyKey writeTo:];
  }

  v5 = v4;
  PBDataWriterWriteDataField();
  if (!self->_signingKey)
  {
    [NGMPBLegacyKey writeTo:];
  }

  PBDataWriterWriteDataField();
}

- (void)copyTo:(id)a3
{
  encryptionKey = self->_encryptionKey;
  v5 = a3;
  [v5 setEncryptionKey:encryptionKey];
  [v5 setSigningKey:self->_signingKey];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_encryptionKey copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_signingKey copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((encryptionKey = self->_encryptionKey, !(encryptionKey | v4[1])) || -[NSData isEqual:](encryptionKey, "isEqual:")))
  {
    signingKey = self->_signingKey;
    if (signingKey | v4[2])
    {
      v7 = [(NSData *)signingKey isEqual:?];
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
    [(NGMPBLegacyKey *)self setEncryptionKey:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(NGMPBLegacyKey *)self setSigningKey:?];
    v4 = v5;
  }
}

@end