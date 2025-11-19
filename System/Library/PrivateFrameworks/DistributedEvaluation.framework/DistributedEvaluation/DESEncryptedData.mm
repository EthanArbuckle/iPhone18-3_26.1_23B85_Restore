@interface DESEncryptedData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation DESEncryptedData

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DESEncryptedData;
  v4 = [(DESEncryptedData *)&v8 description];
  v5 = [(DESEncryptedData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_version];
    [v3 setObject:v4 forKey:@"version"];
  }

  data = self->_data;
  if (data)
  {
    [v3 setObject:data forKey:@"data"];
  }

  encryptedKey = self->_encryptedKey;
  if (encryptedKey)
  {
    [v3 setObject:encryptedKey forKey:@"encryptedKey"];
  }

  algorithm = self->_algorithm;
  if (algorithm)
  {
    [v3 setObject:algorithm forKey:@"algorithm"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[8] = self->_version;
    *(v4 + 36) |= 1u;
  }

  v5 = v4;
  [v4 setData:self->_data];
  if (self->_encryptedKey)
  {
    [v5 setEncryptedKey:?];
  }

  if (self->_algorithm)
  {
    [v5 setAlgorithm:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 32) = self->_version;
    *(v5 + 36) |= 1u;
  }

  v7 = [(NSData *)self->_data copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSData *)self->_encryptedKey copyWithZone:a3];
  v10 = v6[3];
  v6[3] = v9;

  v11 = [(NSString *)self->_algorithm copyWithZone:a3];
  v12 = v6[1];
  v6[1] = v11;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  v5 = *(v4 + 36);
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_version != *(v4 + 8))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 36))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  data = self->_data;
  if (data | *(v4 + 2) && ![(NSData *)data isEqual:?])
  {
    goto LABEL_13;
  }

  encryptedKey = self->_encryptedKey;
  if (encryptedKey | *(v4 + 3))
  {
    if (![(NSData *)encryptedKey isEqual:?])
    {
      goto LABEL_13;
    }
  }

  algorithm = self->_algorithm;
  if (algorithm | *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[9])
  {
    self->_version = v4[8];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 2))
  {
    [(DESEncryptedData *)self setData:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(DESEncryptedData *)self setEncryptedKey:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(DESEncryptedData *)self setAlgorithm:?];
    v4 = v5;
  }
}

@end