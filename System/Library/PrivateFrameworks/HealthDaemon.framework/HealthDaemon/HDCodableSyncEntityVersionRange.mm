@interface HDCodableSyncEntityVersionRange
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableSyncEntityVersionRange

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableSyncEntityVersionRange;
  v4 = [(HDCodableSyncEntityVersionRange *)&v8 description];
  v5 = [(HDCodableSyncEntityVersionRange *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  entityIdentifier = self->_entityIdentifier;
  if (entityIdentifier)
  {
    v5 = [(HDCodableEntityIdentifier *)entityIdentifier dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"entityIdentifier"];
  }

  versionRange = self->_versionRange;
  if (versionRange)
  {
    v7 = [(HDCodableSyncVersionRange *)versionRange dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"versionRange"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_entityIdentifier)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_versionRange)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_entityIdentifier)
  {
    [v4 setEntityIdentifier:?];
    v4 = v5;
  }

  if (self->_versionRange)
  {
    [v5 setVersionRange:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HDCodableEntityIdentifier *)self->_entityIdentifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(HDCodableSyncVersionRange *)self->_versionRange copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((entityIdentifier = self->_entityIdentifier, !(entityIdentifier | v4[1])) || -[HDCodableEntityIdentifier isEqual:](entityIdentifier, "isEqual:")))
  {
    versionRange = self->_versionRange;
    if (versionRange | v4[2])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  entityIdentifier = self->_entityIdentifier;
  v6 = v4[1];
  v9 = v4;
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

  v4 = v9;
LABEL_7:
  versionRange = self->_versionRange;
  v8 = v4[2];
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

  v4 = v9;
LABEL_13:

  MEMORY[0x2821F96F8](versionRange, v4);
}

@end