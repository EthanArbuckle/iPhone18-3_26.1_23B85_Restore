@interface HDCloudSyncCodableChange
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasChangeSize:(BOOL)size;
- (void)setHasFinalForSequence:(BOOL)sequence;
- (void)setHasProtocolVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation HDCloudSyncCodableChange

- (void)setHasProtocolVersion:(BOOL)version
{
  if (version)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasChangeSize:(BOOL)size
{
  if (size)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasFinalForSequence:(BOOL)sequence
{
  if (sequence)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCloudSyncCodableChange;
  v4 = [(HDCloudSyncCodableChange *)&v8 description];
  dictionaryRepresentation = [(HDCloudSyncCodableChange *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  anchorRangeMap = self->_anchorRangeMap;
  if (anchorRangeMap)
  {
    dictionaryRepresentation = [(HDCodableSyncAnchorRangeMap *)anchorRangeMap dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"anchorRangeMap"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_protocolVersion];
    [dictionary setObject:v9 forKey:@"protocolVersion"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_changeSize];
  [dictionary setObject:v10 forKey:@"changeSize"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_changeIndex];
  [dictionary setObject:v11 forKey:@"changeIndex"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_finalForSequence];
    [dictionary setObject:v7 forKey:@"finalForSequence"];
  }

LABEL_8:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_anchorRangeMap)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    protocolVersion = self->_protocolVersion;
    PBDataWriterWriteInt64Field();
    toCopy = v10;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  changeSize = self->_changeSize;
  PBDataWriterWriteInt64Field();
  toCopy = v10;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  changeIndex = self->_changeIndex;
  PBDataWriterWriteInt64Field();
  toCopy = v10;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    finalForSequence = self->_finalForSequence;
    PBDataWriterWriteBOOLField();
    toCopy = v10;
  }

LABEL_8:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_anchorRangeMap)
  {
    v6 = toCopy;
    [toCopy setAnchorRangeMap:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 3) = self->_protocolVersion;
    *(toCopy + 44) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 2) = self->_changeSize;
  *(toCopy + 44) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(toCopy + 1) = self->_changeIndex;
  *(toCopy + 44) |= 1u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    *(toCopy + 40) = self->_finalForSequence;
    *(toCopy + 44) |= 8u;
  }

LABEL_8:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HDCodableSyncAnchorRangeMap *)self->_anchorRangeMap copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_protocolVersion;
    *(v5 + 44) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 8) = self->_changeIndex;
      *(v5 + 44) |= 1u;
      if ((*&self->_has & 8) == 0)
      {
        return v5;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 16) = self->_changeSize;
  *(v5 + 44) |= 2u;
  has = self->_has;
  if (has)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 8) != 0)
  {
LABEL_5:
    *(v5 + 40) = self->_finalForSequence;
    *(v5 + 44) |= 8u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  anchorRangeMap = self->_anchorRangeMap;
  if (anchorRangeMap | *(equalCopy + 4))
  {
    if (![(HDCodableSyncAnchorRangeMap *)anchorRangeMap isEqual:?])
    {
      goto LABEL_21;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 44) & 4) == 0 || self->_protocolVersion != *(equalCopy + 3))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 44) & 4) != 0)
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) == 0 || self->_changeSize != *(equalCopy + 2))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 44) & 2) != 0)
  {
    goto LABEL_21;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_changeIndex != *(equalCopy + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_21;
  }

  v6 = (*(equalCopy + 44) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 44) & 8) == 0)
    {
LABEL_21:
      v6 = 0;
      goto LABEL_22;
    }

    if (self->_finalForSequence)
    {
      if ((*(equalCopy + 40) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else if (*(equalCopy + 40))
    {
      goto LABEL_21;
    }

    v6 = 1;
  }

LABEL_22:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(HDCodableSyncAnchorRangeMap *)self->_anchorRangeMap hash];
  if ((*&self->_has & 4) != 0)
  {
    v4 = 2654435761 * self->_protocolVersion;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_changeSize;
      if (*&self->_has)
      {
        goto LABEL_4;
      }

LABEL_8:
      v6 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v7 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = 2654435761 * self->_changeIndex;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = 2654435761 * self->_finalForSequence;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  anchorRangeMap = self->_anchorRangeMap;
  v6 = *(fromCopy + 4);
  if (anchorRangeMap)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = fromCopy;
    anchorRangeMap = [(HDCodableSyncAnchorRangeMap *)anchorRangeMap mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = fromCopy;
    anchorRangeMap = [(HDCloudSyncCodableChange *)self setAnchorRangeMap:?];
  }

  fromCopy = v8;
LABEL_7:
  v7 = *(fromCopy + 44);
  if ((v7 & 4) != 0)
  {
    self->_protocolVersion = *(fromCopy + 3);
    *&self->_has |= 4u;
    v7 = *(fromCopy + 44);
    if ((v7 & 2) == 0)
    {
LABEL_9:
      if ((v7 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }
  }

  else if ((*(fromCopy + 44) & 2) == 0)
  {
    goto LABEL_9;
  }

  self->_changeSize = *(fromCopy + 2);
  *&self->_has |= 2u;
  v7 = *(fromCopy + 44);
  if ((v7 & 1) == 0)
  {
LABEL_10:
    if ((v7 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_17:
  self->_changeIndex = *(fromCopy + 1);
  *&self->_has |= 1u;
  if ((*(fromCopy + 44) & 8) != 0)
  {
LABEL_11:
    self->_finalForSequence = *(fromCopy + 40);
    *&self->_has |= 8u;
  }

LABEL_12:

  MEMORY[0x2821F96F8](anchorRangeMap, fromCopy);
}

@end