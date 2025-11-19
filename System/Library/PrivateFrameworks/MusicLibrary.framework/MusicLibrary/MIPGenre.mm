@interface MIPGenre
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasStoreId:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation MIPGenre

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if ((v4[4] & 2) != 0)
  {
    self->_storeId = v4[2];
    *&self->_has |= 2u;
  }

  if (v4[3])
  {
    v5 = v4;
    [(MIPGenre *)self setName:?];
    v4 = v5;
  }

  if (v4[4])
  {
    self->_persistentId = v4[1];
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_storeId;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_name hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_persistentId;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  v6 = *(v4 + 32);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_storeId != *(v4 + 2))
    {
      goto LABEL_14;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
    goto LABEL_14;
  }

  name = self->_name;
  if (name | *(v4 + 3))
  {
    if (![(NSString *)name isEqual:?])
    {
LABEL_14:
      v8 = 0;
      goto LABEL_15;
    }

    has = self->_has;
    v6 = *(v4 + 32);
  }

  v8 = (v6 & 1) == 0;
  if (has)
  {
    if ((v6 & 1) == 0 || self->_persistentId != *(v4 + 1))
    {
      goto LABEL_14;
    }

    v8 = 1;
  }

LABEL_15:

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_storeId;
    *(v5 + 32) |= 2u;
  }

  v7 = [(NSString *)self->_name copyWithZone:a3];
  v8 = *(v6 + 24);
  *(v6 + 24) = v7;

  if (*&self->_has)
  {
    *(v6 + 8) = self->_persistentId;
    *(v6 + 32) |= 1u;
  }

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[2] = self->_storeId;
    *(v4 + 32) |= 2u;
  }

  if (self->_name)
  {
    v5 = v4;
    [v4 setName:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[1] = self->_persistentId;
    *(v4 + 32) |= 1u;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
    v4 = v5;
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_storeId];
    [v3 setObject:v4 forKey:@"storeId"];
  }

  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_persistentId];
    [v3 setObject:v6 forKey:@"persistentId"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MIPGenre;
  v4 = [(MIPGenre *)&v8 description];
  v5 = [(MIPGenre *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasStoreId:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

@end