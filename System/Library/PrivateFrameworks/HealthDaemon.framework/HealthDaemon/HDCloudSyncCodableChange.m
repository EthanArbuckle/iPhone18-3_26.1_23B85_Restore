@interface HDCloudSyncCodableChange
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasChangeSize:(BOOL)a3;
- (void)setHasFinalForSequence:(BOOL)a3;
- (void)setHasProtocolVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCloudSyncCodableChange

- (void)setHasProtocolVersion:(BOOL)a3
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

- (void)setHasChangeSize:(BOOL)a3
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

- (void)setHasFinalForSequence:(BOOL)a3
{
  if (a3)
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
  v5 = [(HDCloudSyncCodableChange *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  anchorRangeMap = self->_anchorRangeMap;
  if (anchorRangeMap)
  {
    v5 = [(HDCodableSyncAnchorRangeMap *)anchorRangeMap dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"anchorRangeMap"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_protocolVersion];
    [v3 setObject:v9 forKey:@"protocolVersion"];

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
  [v3 setObject:v10 forKey:@"changeSize"];

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
  [v3 setObject:v11 forKey:@"changeIndex"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_finalForSequence];
    [v3 setObject:v7 forKey:@"finalForSequence"];
  }

LABEL_8:

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_anchorRangeMap)
  {
    PBDataWriterWriteSubmessage();
    v4 = v10;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    protocolVersion = self->_protocolVersion;
    PBDataWriterWriteInt64Field();
    v4 = v10;
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
  v4 = v10;
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
  v4 = v10;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    finalForSequence = self->_finalForSequence;
    PBDataWriterWriteBOOLField();
    v4 = v10;
  }

LABEL_8:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_anchorRangeMap)
  {
    v6 = v4;
    [v4 setAnchorRangeMap:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 3) = self->_protocolVersion;
    *(v4 + 44) |= 4u;
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

  *(v4 + 2) = self->_changeSize;
  *(v4 + 44) |= 2u;
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
  *(v4 + 1) = self->_changeIndex;
  *(v4 + 44) |= 1u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    *(v4 + 40) = self->_finalForSequence;
    *(v4 + 44) |= 8u;
  }

LABEL_8:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HDCodableSyncAnchorRangeMap *)self->_anchorRangeMap copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  anchorRangeMap = self->_anchorRangeMap;
  if (anchorRangeMap | *(v4 + 4))
  {
    if (![(HDCodableSyncAnchorRangeMap *)anchorRangeMap isEqual:?])
    {
      goto LABEL_21;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 44) & 4) == 0 || self->_protocolVersion != *(v4 + 3))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 44) & 4) != 0)
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) == 0 || self->_changeSize != *(v4 + 2))
    {
      goto LABEL_21;
    }
  }

  else if ((*(v4 + 44) & 2) != 0)
  {
    goto LABEL_21;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_changeIndex != *(v4 + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_21;
  }

  v6 = (*(v4 + 44) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 44) & 8) == 0)
    {
LABEL_21:
      v6 = 0;
      goto LABEL_22;
    }

    if (self->_finalForSequence)
    {
      if ((*(v4 + 40) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else if (*(v4 + 40))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  anchorRangeMap = self->_anchorRangeMap;
  v6 = *(v4 + 4);
  if (anchorRangeMap)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v4;
    anchorRangeMap = [(HDCodableSyncAnchorRangeMap *)anchorRangeMap mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v4;
    anchorRangeMap = [(HDCloudSyncCodableChange *)self setAnchorRangeMap:?];
  }

  v4 = v8;
LABEL_7:
  v7 = *(v4 + 44);
  if ((v7 & 4) != 0)
  {
    self->_protocolVersion = *(v4 + 3);
    *&self->_has |= 4u;
    v7 = *(v4 + 44);
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

  else if ((*(v4 + 44) & 2) == 0)
  {
    goto LABEL_9;
  }

  self->_changeSize = *(v4 + 2);
  *&self->_has |= 2u;
  v7 = *(v4 + 44);
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
  self->_changeIndex = *(v4 + 1);
  *&self->_has |= 1u;
  if ((*(v4 + 44) & 8) != 0)
  {
LABEL_11:
    self->_finalForSequence = *(v4 + 40);
    *&self->_has |= 8u;
  }

LABEL_12:

  MEMORY[0x2821F96F8](anchorRangeMap, v4);
}

@end