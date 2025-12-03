@interface NGMPBLegacyKey
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NGMPBLegacyKey

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NGMPBLegacyKey;
  v4 = [(NGMPBLegacyKey *)&v8 description];
  dictionaryRepresentation = [(NGMPBLegacyKey *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  encryptionKey = self->_encryptionKey;
  if (encryptionKey)
  {
    [dictionary setObject:encryptionKey forKey:@"encryptionKey"];
  }

  signingKey = self->_signingKey;
  if (signingKey)
  {
    [v4 setObject:signingKey forKey:@"signingKey"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_encryptionKey)
  {
    [NGMPBLegacyKey writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteDataField();
  if (!self->_signingKey)
  {
    [NGMPBLegacyKey writeTo:];
  }

  PBDataWriterWriteDataField();
}

- (void)copyTo:(id)to
{
  encryptionKey = self->_encryptionKey;
  toCopy = to;
  [toCopy setEncryptionKey:encryptionKey];
  [toCopy setSigningKey:self->_signingKey];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_encryptionKey copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_signingKey copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((encryptionKey = self->_encryptionKey, !(encryptionKey | equalCopy[1])) || -[NSData isEqual:](encryptionKey, "isEqual:")))
  {
    signingKey = self->_signingKey;
    if (signingKey | equalCopy[2])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(NGMPBLegacyKey *)self setEncryptionKey:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(NGMPBLegacyKey *)self setSigningKey:?];
    fromCopy = v5;
  }
}

@end