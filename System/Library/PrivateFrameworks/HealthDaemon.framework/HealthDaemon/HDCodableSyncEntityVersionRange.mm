@interface HDCodableSyncEntityVersionRange
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableSyncEntityVersionRange

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableSyncEntityVersionRange;
  v4 = [(HDCodableSyncEntityVersionRange *)&v8 description];
  dictionaryRepresentation = [(HDCodableSyncEntityVersionRange *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  entityIdentifier = self->_entityIdentifier;
  if (entityIdentifier)
  {
    dictionaryRepresentation = [(HDCodableEntityIdentifier *)entityIdentifier dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"entityIdentifier"];
  }

  versionRange = self->_versionRange;
  if (versionRange)
  {
    dictionaryRepresentation2 = [(HDCodableSyncVersionRange *)versionRange dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"versionRange"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_entityIdentifier)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_versionRange)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_entityIdentifier)
  {
    [toCopy setEntityIdentifier:?];
    toCopy = v5;
  }

  if (self->_versionRange)
  {
    [v5 setVersionRange:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HDCodableEntityIdentifier *)self->_entityIdentifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(HDCodableSyncVersionRange *)self->_versionRange copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((entityIdentifier = self->_entityIdentifier, !(entityIdentifier | equalCopy[1])) || -[HDCodableEntityIdentifier isEqual:](entityIdentifier, "isEqual:")))
  {
    versionRange = self->_versionRange;
    if (versionRange | equalCopy[2])
    {
      v7 = [(HDCodableSyncVersionRange *)versionRange isEqual:?];
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
  entityIdentifier = self->_entityIdentifier;
  v6 = fromCopy[1];
  v9 = fromCopy;
  if (entityIdentifier)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HDCodableEntityIdentifier *)entityIdentifier mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HDCodableSyncEntityVersionRange *)self setEntityIdentifier:?];
  }

  fromCopy = v9;
LABEL_7:
  versionRange = self->_versionRange;
  v8 = fromCopy[2];
  if (versionRange)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    versionRange = [(HDCodableSyncVersionRange *)versionRange mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    versionRange = [(HDCodableSyncEntityVersionRange *)self setVersionRange:?];
  }

  fromCopy = v9;
LABEL_13:

  MEMORY[0x2821F96F8](versionRange, fromCopy);
}

@end