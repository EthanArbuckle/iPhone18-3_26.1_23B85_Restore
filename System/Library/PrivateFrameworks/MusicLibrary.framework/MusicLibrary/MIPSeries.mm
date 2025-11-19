@interface MIPSeries
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MIPSeries

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[4])
  {
    self->_storeId = v4[1];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (v4[2])
  {
    [(MIPSeries *)self setName:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(MIPSeries *)self setSortName:?];
    v4 = v5;
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_storeId;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_name hash]^ v3;
  return v4 ^ [(NSString *)self->_sortName hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_storeId != *(v4 + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  name = self->_name;
  if (name | *(v4 + 2) && ![(NSString *)name isEqual:?])
  {
    goto LABEL_11;
  }

  sortName = self->_sortName;
  if (sortName | *(v4 + 3))
  {
    v7 = [(NSString *)sortName isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_12:

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_storeId;
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSString *)self->_name copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSString *)self->_sortName copyWithZone:a3];
  v10 = v6[3];
  v6[3] = v9;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_storeId;
    *(v4 + 32) |= 1u;
  }

  v5 = v4;
  if (self->_name)
  {
    [v4 setName:?];
    v4 = v5;
  }

  if (self->_sortName)
  {
    [v5 setSortName:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
    v4 = v5;
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_sortName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_storeId];
    [v3 setObject:v4 forKey:@"storeId"];
  }

  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
  }

  sortName = self->_sortName;
  if (sortName)
  {
    [v3 setObject:sortName forKey:@"sortName"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MIPSeries;
  v4 = [(MIPSeries *)&v8 description];
  v5 = [(MIPSeries *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end