@interface NGMPBP256Key
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsKeystore:(id)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NGMPBP256Key

- (int)StringAsKeystore:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Software"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SEP"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SecKey"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"CTKTokenOID"])
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
  v5 = [(NGMPBP256Key *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  keychainTag = self->_keychainTag;
  if (keychainTag)
  {
    [v3 setObject:keychainTag forKey:@"keychainTag"];
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

- (void)writeTo:(id)a3
{
  v5 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_keychainTag)
  {
    [v4 setKeychainTag:?];
    v4 = v5;
  }

  v4[6] = self->_keystore;
  if (self->_keyData)
  {
    [v5 setKeyData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_keychainTag copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 24) = self->_keystore;
  v8 = [(NSData *)self->_keyData copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((keychainTag = self->_keychainTag, !(keychainTag | v4[2])) || -[NSString isEqual:](keychainTag, "isEqual:")) && self->_keystore == *(v4 + 6))
  {
    keyData = self->_keyData;
    if (keyData | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 2))
  {
    [(NGMPBP256Key *)self setKeychainTag:?];
    v4 = v5;
  }

  self->_keystore = v4[6];
  if (*(v4 + 1))
  {
    [(NGMPBP256Key *)self setKeyData:?];
    v4 = v5;
  }
}

@end