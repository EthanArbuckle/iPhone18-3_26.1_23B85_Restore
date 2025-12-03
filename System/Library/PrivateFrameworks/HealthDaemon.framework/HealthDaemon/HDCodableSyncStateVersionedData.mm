@interface HDCodableSyncStateVersionedData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableSyncStateVersionedData

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableSyncStateVersionedData;
  v4 = [(HDCodableSyncStateVersionedData *)&v8 description];
  dictionaryRepresentation = [(HDCodableSyncStateVersionedData *)self dictionaryRepresentation];
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

  origin = self->_origin;
  if (origin)
  {
    dictionaryRepresentation = [(HDCodableSyncStateOrigin *)origin dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"origin"];
  }

  objectData = self->_objectData;
  if (objectData)
  {
    [dictionary setObject:objectData forKey:@"objectData"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    version = self->_version;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_origin)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_objectData)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[6] = self->_version;
    *(toCopy + 28) |= 1u;
  }

  v5 = toCopy;
  if (self->_origin)
  {
    [toCopy setOrigin:?];
    toCopy = v5;
  }

  if (self->_objectData)
  {
    [v5 setObjectData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_version;
    *(v5 + 28) |= 1u;
  }

  v7 = [(HDCodableSyncStateOrigin *)self->_origin copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSData *)self->_objectData copyWithZone:zone];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 28);
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_version != *(equalCopy + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 28))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  origin = self->_origin;
  if (origin | *(equalCopy + 2) && ![(HDCodableSyncStateOrigin *)origin isEqual:?])
  {
    goto LABEL_11;
  }

  objectData = self->_objectData;
  if (objectData | *(equalCopy + 1))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[7])
  {
    self->_version = fromCopy[6];
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