@interface HDCodableSyncAnchorRange
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasEntityType:(BOOL)a3;
- (void)setHasStartAnchor:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableSyncAnchorRange

- (void)setHasEntityType:(BOOL)a3
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

- (void)setHasStartAnchor:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableSyncAnchorRange;
  v4 = [(HDCodableSyncAnchorRange *)&v8 description];
  v5 = [(HDCodableSyncAnchorRange *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_entityType];
    [v3 setObject:v9 forKey:@"entityType"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_startAnchor];
  [v3 setObject:v10 forKey:@"startAnchor"];

  if (*&self->_has)
  {
LABEL_4:
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_endAnchor];
    [v3 setObject:v5 forKey:@"endAnchor"];
  }

LABEL_5:
  entityIdentifier = self->_entityIdentifier;
  if (entityIdentifier)
  {
    v7 = [(HDCodableEntityIdentifier *)entityIdentifier dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"entityIdentifier"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if ((has & 2) != 0)
  {
    entityType = self->_entityType;
    PBDataWriterWriteInt64Field();
    v4 = v9;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  startAnchor = self->_startAnchor;
  PBDataWriterWriteInt64Field();
  v4 = v9;
  if (*&self->_has)
  {
LABEL_4:
    endAnchor = self->_endAnchor;
    PBDataWriterWriteInt64Field();
    v4 = v9;
  }

LABEL_5:
  if (self->_entityIdentifier)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[2] = self->_entityType;
    *(v4 + 40) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v4[3] = self->_startAnchor;
  *(v4 + 40) |= 4u;
  if (*&self->_has)
  {
LABEL_4:
    v4[1] = self->_endAnchor;
    *(v4 + 40) |= 1u;
  }

LABEL_5:
  if (self->_entityIdentifier)
  {
    v6 = v4;
    [v4 setEntityIdentifier:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 24) = self->_startAnchor;
    *(v5 + 40) |= 4u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 16) = self->_entityType;
  *(v5 + 40) |= 2u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    *(v5 + 8) = self->_endAnchor;
    *(v5 + 40) |= 1u;
  }

LABEL_5:
  v8 = [(HDCodableEntityIdentifier *)self->_entityIdentifier copyWithZone:a3];
  v9 = v6[4];
  v6[4] = v8;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  v5 = *(v4 + 40);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_entityType != *(v4 + 2))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
LABEL_19:
    v7 = 0;
    goto LABEL_20;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 40) & 4) == 0 || self->_startAnchor != *(v4 + 3))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 40) & 4) != 0)
  {
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_endAnchor != *(v4 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_19;
  }

  entityIdentifier = self->_entityIdentifier;
  if (entityIdentifier | *(v4 + 4))
  {
    v7 = [(HDCodableEntityIdentifier *)entityIdentifier isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_20:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 0;
    return v7 ^ v6 ^ v8 ^ [(HDCodableEntityIdentifier *)self->_entityIdentifier hash:v3];
  }

  v6 = 2654435761 * self->_entityType;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = 2654435761 * self->_startAnchor;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = 2654435761 * self->_endAnchor;
  return v7 ^ v6 ^ v8 ^ [(HDCodableEntityIdentifier *)self->_entityIdentifier hash:v3];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 40);
  if ((v6 & 2) != 0)
  {
    self->_entityType = v4[2];
    *&self->_has |= 2u;
    v6 = *(v4 + 40);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((v4[5] & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_startAnchor = v4[3];
  *&self->_has |= 4u;
  if (v4[5])
  {
LABEL_4:
    self->_endAnchor = v4[1];
    *&self->_has |= 1u;
  }

LABEL_5:
  entityIdentifier = self->_entityIdentifier;
  v8 = v5[4];
  if (entityIdentifier)
  {
    if (!v8)
    {
      goto LABEL_14;
    }

    v9 = v5;
    entityIdentifier = [(HDCodableEntityIdentifier *)entityIdentifier mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_14;
    }

    v9 = v5;
    entityIdentifier = [(HDCodableSyncAnchorRange *)self setEntityIdentifier:?];
  }

  v5 = v9;
LABEL_14:

  MEMORY[0x2821F96F8](entityIdentifier, v5);
}

@end