@interface HDCodableSyncStateVersionedData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableSyncStateVersionedData

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableSyncStateVersionedData;
  v4 = [(HDCodableSyncStateVersionedData *)&v8 description];
  v5 = [(HDCodableSyncStateVersionedData *)self dictionaryRepresentation];
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

  origin = self->_origin;
  if (origin)
  {
    v6 = [(HDCodableSyncStateOrigin *)origin dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"origin"];
  }

  objectData = self->_objectData;
  if (objectData)
  {
    [v3 setObject:objectData forKey:@"objectData"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_origin)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_objectData)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[6] = self->_version;
    *(v4 + 28) |= 1u;
  }

  v5 = v4;
  if (self->_origin)
  {
    [v4 setOrigin:?];
    v4 = v5;
  }

  if (self->_objectData)
  {
    [v5 setObjectData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_version;
    *(v5 + 28) |= 1u;
  }

  v7 = [(HDCodableSyncStateOrigin *)self->_origin copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSData *)self->_objectData copyWithZone:a3];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 28);
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0 || self->_version != *(v4 + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 28))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  origin = self->_origin;
  if (origin | *(v4 + 2) && ![(HDCodableSyncStateOrigin *)origin isEqual:?])
  {
    goto LABEL_11;
  }

  objectData = self->_objectData;
  if (objectData | *(v4 + 1))
  {
    v8 = [(NSData *)objectData isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
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

  v4 = [(HDCodableSyncStateOrigin *)self->_origin hash]^ v3;
  return v4 ^ [(NSData *)self->_objectData hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[7])
  {
    self->_version = v4[6];
    *&self->_has |= 1u;
  }

  origin = self->_origin;
  v7 = *(v5 + 2);
  v8 = v5;
  if (origin)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    origin = [(HDCodableSyncStateOrigin *)origin mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    origin = [(HDCodableSyncStateVersionedData *)self setOrigin:?];
  }

  v5 = v8;
LABEL_9:
  if (*(v5 + 1))
  {
    origin = [(HDCodableSyncStateVersionedData *)self setObjectData:?];
    v5 = v8;
  }

  MEMORY[0x2821F96F8](origin, v5);
}

@end