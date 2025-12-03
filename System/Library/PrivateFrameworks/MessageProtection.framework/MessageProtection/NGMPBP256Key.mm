@interface NGMPBP256Key
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsKeystore:(id)keystore;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NGMPBP256Key

- (int)StringAsKeystore:(id)keystore
{
  keystoreCopy = keystore;
  if ([keystoreCopy isEqualToString:@"Software"])
  {
    v4 = 1;
  }

  else if ([keystoreCopy isEqualToString:@"SEP"])
  {
    v4 = 2;
  }

  else if ([keystoreCopy isEqualToString:@"SecKey"])
  {
    v4 = 3;
  }

  else if ([keystoreCopy isEqualToString:@"CTKTokenOID"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NGMPBP256Key;
  v4 = [(NGMPBP256Key *)&v8 description];
  dictionaryRepresentation = [(NGMPBP256Key *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  keychainTag = self->_keychainTag;
  if (keychainTag)
  {
    [dictionary setObject:keychainTag forKey:@"keychainTag"];
  }

  v6 = self->_keystore - 1;
  if (v6 >= 4)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_keystore];
  }

  else
  {
    v7 = off_2786FDF48[v6];
  }

  [v4 setObject:v7 forKey:@"keystore"];

  keyData = self->_keyData;
  if (keyData)
  {
    [v4 setObject:keyData forKey:@"keyData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_keychainTag)
  {
    PBDataWriterWriteStringField();
  }

  keystore = self->_keystore;
  PBDataWriterWriteInt32Field();
  if (self->_keyData)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_keychainTag)
  {
    [toCopy setKeychainTag:?];
    toCopy = v5;
  }

  toCopy[6] = self->_keystore;
  if (self->_keyData)
  {
    [v5 setKeyData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_keychainTag copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 24) = self->_keystore;
  v8 = [(NSData *)self->_keyData copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((keychainTag = self->_keychainTag, !(keychainTag | equalCopy[2])) || -[NSString isEqual:](keychainTag, "isEqual:")) && self->_keystore == *(equalCopy + 6))
  {
    keyData = self->_keyData;
    if (keyData | equalCopy[1])
    {
      v7 = [(NSData *)keyData isEqual:?];
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

- (unint64_t)hash
{
  v3 = [(NSString *)self->_keychainTag hash];
  v4 = 2654435761 * self->_keystore;
  return v4 ^ v3 ^ [(NSData *)self->_keyData hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(NGMPBP256Key *)self setKeychainTag:?];
    fromCopy = v5;
  }

  self->_keystore = fromCopy[6];
  if (*(fromCopy + 1))
  {
    [(NGMPBP256Key *)self setKeyData:?];
    fromCopy = v5;
  }
}

@end