@interface DESEncryptedData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation DESEncryptedData

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DESEncryptedData;
  v4 = [(DESEncryptedData *)&v8 description];
  dictionaryRepresentation = [(DESEncryptedData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_version];
    [dictionary setObject:v4 forKey:@"version"];
  }

  data = self->_data;
  if (data)
  {
    [dictionary setObject:data forKey:@"data"];
  }

  encryptedKey = self->_encryptedKey;
  if (encryptedKey)
  {
    [dictionary setObject:encryptedKey forKey:@"encryptedKey"];
  }

  algorithm = self->_algorithm;
  if (algorithm)
  {
    [dictionary setObject:algorithm forKey:@"algorithm"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteInt32Field();
  }

  if (!self->_data)
  {
    [DESEncryptedData writeTo:];
  }

  PBDataWriterWriteDataField();
  if (self->_encryptedKey)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_algorithm)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[8] = self->_version;
    *(toCopy + 36) |= 1u;
  }

  v5 = toCopy;
  [toCopy setData:self->_data];
  if (self->_encryptedKey)
  {
    [v5 setEncryptedKey:?];
  }

  if (self->_algorithm)
  {
    [v5 setAlgorithm:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 32) = self->_version;
    *(v5 + 36) |= 1u;
  }

  v7 = [(NSData *)self->_data copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSData *)self->_encryptedKey copyWithZone:zone];
  v10 = v6[3];
  v6[3] = v9;

  v11 = [(NSString *)self->_algorithm copyWithZone:zone];
  v12 = v6[1];
  v6[1] = v11;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(equalCopy + 36);
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_version != *(equalCopy + 8))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 36))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  data = self->_data;
  if (data | *(equalCopy + 2) && ![(NSData *)data isEqual:?])
  {
    goto LABEL_13;
  }

  encryptedKey = self->_encryptedKey;
  if (encryptedKey | *(equalCopy + 3))
  {
    if (![(NSData *)encryptedKey isEqual:?])
    {
      goto LABEL_13;
    }
  }

  algorithm = self->_algorithm;
  if (algorithm | *(equalCopy + 1))
  {
    v9 = [(NSString *)algorithm isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_version;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_data hash]^ v3;
  v5 = [(NSData *)self->_encryptedKey hash];
  return v4 ^ v5 ^ [(NSString *)self->_algorithm hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[9])
  {
    self->_version = fromCopy[8];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(DESEncryptedData *)self setData:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(DESEncryptedData *)self setEncryptedKey:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(DESEncryptedData *)self setAlgorithm:?];
    fromCopy = v5;
  }
}

@end