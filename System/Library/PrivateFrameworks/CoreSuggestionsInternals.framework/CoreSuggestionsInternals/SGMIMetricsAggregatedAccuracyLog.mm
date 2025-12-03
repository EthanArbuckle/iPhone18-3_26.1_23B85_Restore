@interface SGMIMetricsAggregatedAccuracyLog
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIgnorablePredictedAsNeutral:(BOOL)neutral;
- (void)setHasIgnorablePredictedAsSalient:(BOOL)salient;
- (void)setHasNeutralPredictedAsIgnorable:(BOOL)ignorable;
- (void)setHasNeutralPredictedAsNeutral:(BOOL)neutral;
- (void)setHasNeutralPredictedAsSalient:(BOOL)salient;
- (void)setHasSalientPredictedAsIgnorable:(BOOL)ignorable;
- (void)setHasSalientPredictedAsNeutral:(BOOL)neutral;
- (void)setHasSalientPredictedAsSalient:(BOOL)salient;
- (void)writeTo:(id)to;
@end

@implementation SGMIMetricsAggregatedAccuracyLog

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 22);
  if ((v5 & 0x100) != 0)
  {
    self->_salientPredictedAsSalient = *(fromCopy + 10);
    *&self->_has |= 0x100u;
    v5 = *(fromCopy + 22);
    if ((v5 & 0x80) == 0)
    {
LABEL_3:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_3;
  }

  self->_salientPredictedAsNeutral = *(fromCopy + 9);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 22);
  if ((v5 & 0x40) == 0)
  {
LABEL_4:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_salientPredictedAsIgnorable = *(fromCopy + 8);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 22);
  if ((v5 & 0x20) == 0)
  {
LABEL_5:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_neutralPredictedAsSalient = *(fromCopy + 7);
  *&self->_has |= 0x20u;
  v5 = *(fromCopy + 22);
  if ((v5 & 0x10) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_neutralPredictedAsNeutral = *(fromCopy + 6);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 22);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_neutralPredictedAsIgnorable = *(fromCopy + 5);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 22);
  if ((v5 & 4) == 0)
  {
LABEL_8:
    if ((v5 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_ignorablePredictedAsSalient = *(fromCopy + 4);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 22);
  if ((v5 & 2) == 0)
  {
LABEL_9:
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  self->_ignorablePredictedAsNeutral = *(fromCopy + 3);
  *&self->_has |= 2u;
  if (*(fromCopy + 22))
  {
LABEL_10:
    self->_ignorablePredictedAsIgnorable = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

LABEL_11:
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    v3 = 2654435761 * self->_salientPredictedAsSalient;
    if ((has & 0x80) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_salientPredictedAsNeutral;
      if ((has & 0x40) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v3 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_4:
    v5 = 2654435761 * self->_salientPredictedAsIgnorable;
    if ((has & 0x20) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v5 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_5:
    v6 = 2654435761 * self->_neutralPredictedAsSalient;
    if ((has & 0x10) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v6 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_6:
    v7 = 2654435761 * self->_neutralPredictedAsNeutral;
    if ((has & 8) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  v7 = 0;
  if ((has & 8) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_neutralPredictedAsIgnorable;
    if ((has & 4) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  v8 = 0;
  if ((has & 4) != 0)
  {
LABEL_8:
    v9 = 2654435761 * self->_ignorablePredictedAsSalient;
    if ((has & 2) != 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    v10 = 0;
    if (has)
    {
      goto LABEL_10;
    }

LABEL_19:
    v11 = 0;
    return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
  }

LABEL_17:
  v9 = 0;
  if ((has & 2) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v10 = 2654435761 * self->_ignorablePredictedAsNeutral;
  if ((has & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_10:
  v11 = 2654435761 * self->_ignorablePredictedAsIgnorable;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_47;
  }

  has = self->_has;
  v6 = *(equalCopy + 22);
  if ((has & 0x100) != 0)
  {
    if ((*(equalCopy + 22) & 0x100) == 0 || self->_salientPredictedAsSalient != *(equalCopy + 10))
    {
      goto LABEL_47;
    }
  }

  else if ((*(equalCopy + 22) & 0x100) != 0)
  {
LABEL_47:
    v7 = 0;
    goto LABEL_48;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_salientPredictedAsNeutral != *(equalCopy + 9))
    {
      goto LABEL_47;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_47;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_salientPredictedAsIgnorable != *(equalCopy + 8))
    {
      goto LABEL_47;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_47;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_neutralPredictedAsSalient != *(equalCopy + 7))
    {
      goto LABEL_47;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_47;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_neutralPredictedAsNeutral != *(equalCopy + 6))
    {
      goto LABEL_47;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_47;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_neutralPredictedAsIgnorable != *(equalCopy + 5))
    {
      goto LABEL_47;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_47;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_ignorablePredictedAsSalient != *(equalCopy + 4))
    {
      goto LABEL_47;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_47;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_ignorablePredictedAsNeutral != *(equalCopy + 3))
    {
      goto LABEL_47;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_47;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_ignorablePredictedAsIgnorable != *(equalCopy + 2))
    {
      goto LABEL_47;
    }

    v7 = 1;
  }

  else
  {
    v7 = (v6 & 1) == 0;
  }

LABEL_48:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    *(result + 10) = self->_salientPredictedAsSalient;
    *(result + 22) |= 0x100u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  *(result + 9) = self->_salientPredictedAsNeutral;
  *(result + 22) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 8) = self->_salientPredictedAsIgnorable;
  *(result + 22) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 7) = self->_neutralPredictedAsSalient;
  *(result + 22) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 6) = self->_neutralPredictedAsNeutral;
  *(result + 22) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 5) = self->_neutralPredictedAsIgnorable;
  *(result + 22) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 4) = self->_ignorablePredictedAsSalient;
  *(result + 22) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      return result;
    }

    goto LABEL_10;
  }

LABEL_19:
  *(result + 3) = self->_ignorablePredictedAsNeutral;
  *(result + 22) |= 2u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_10:
  *(result + 2) = self->_ignorablePredictedAsIgnorable;
  *(result + 22) |= 1u;
  return result;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    toCopy[10] = self->_salientPredictedAsSalient;
    *(toCopy + 22) |= 0x100u;
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  toCopy[9] = self->_salientPredictedAsNeutral;
  *(toCopy + 22) |= 0x80u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  toCopy[8] = self->_salientPredictedAsIgnorable;
  *(toCopy + 22) |= 0x40u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  toCopy[7] = self->_neutralPredictedAsSalient;
  *(toCopy + 22) |= 0x20u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  toCopy[6] = self->_neutralPredictedAsNeutral;
  *(toCopy + 22) |= 0x10u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  toCopy[5] = self->_neutralPredictedAsIgnorable;
  *(toCopy + 22) |= 8u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  toCopy[4] = self->_ignorablePredictedAsSalient;
  *(toCopy + 22) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  toCopy[3] = self->_ignorablePredictedAsNeutral;
  *(toCopy + 22) |= 2u;
  if (*&self->_has)
  {
LABEL_10:
    toCopy[2] = self->_ignorablePredictedAsIgnorable;
    *(toCopy + 22) |= 1u;
  }

LABEL_11:
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    salientPredictedAsSalient = self->_salientPredictedAsSalient;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  salientPredictedAsNeutral = self->_salientPredictedAsNeutral;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  salientPredictedAsIgnorable = self->_salientPredictedAsIgnorable;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  neutralPredictedAsSalient = self->_neutralPredictedAsSalient;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  neutralPredictedAsNeutral = self->_neutralPredictedAsNeutral;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  neutralPredictedAsIgnorable = self->_neutralPredictedAsIgnorable;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  ignorablePredictedAsSalient = self->_ignorablePredictedAsSalient;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  ignorablePredictedAsNeutral = self->_ignorablePredictedAsNeutral;
  PBDataWriterWriteUint32Field();
  if (*&self->_has)
  {
LABEL_10:
    ignorablePredictedAsIgnorable = self->_ignorablePredictedAsIgnorable;
    PBDataWriterWriteUint32Field();
  }

LABEL_11:
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_salientPredictedAsSalient];
    [dictionary setObject:v7 forKey:@"salientPredictedAsSalient"];

    has = self->_has;
    if ((has & 0x80) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 0x80) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_salientPredictedAsNeutral];
  [dictionary setObject:v8 forKey:@"salientPredictedAsNeutral"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_salientPredictedAsIgnorable];
  [dictionary setObject:v9 forKey:@"salientPredictedAsIgnorable"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_5:
    if ((has & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_neutralPredictedAsSalient];
  [dictionary setObject:v10 forKey:@"neutralPredictedAsSalient"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_neutralPredictedAsNeutral];
  [dictionary setObject:v11 forKey:@"neutralPredictedAsNeutral"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_neutralPredictedAsIgnorable];
  [dictionary setObject:v12 forKey:@"neutralPredictedAsIgnorable"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_8:
    if ((has & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_ignorablePredictedAsSalient];
  [dictionary setObject:v13 forKey:@"ignorablePredictedAsSalient"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_9:
    if ((has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_ignorablePredictedAsNeutral];
  [dictionary setObject:v14 forKey:@"ignorablePredictedAsNeutral"];

  if (*&self->_has)
  {
LABEL_10:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_ignorablePredictedAsIgnorable];
    [dictionary setObject:v5 forKey:@"ignorablePredictedAsIgnorable"];
  }

LABEL_11:

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SGMIMetricsAggregatedAccuracyLog;
  v4 = [(SGMIMetricsAggregatedAccuracyLog *)&v8 description];
  dictionaryRepresentation = [(SGMIMetricsAggregatedAccuracyLog *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)setHasIgnorablePredictedAsNeutral:(BOOL)neutral
{
  if (neutral)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasIgnorablePredictedAsSalient:(BOOL)salient
{
  if (salient)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasNeutralPredictedAsIgnorable:(BOOL)ignorable
{
  if (ignorable)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasNeutralPredictedAsNeutral:(BOOL)neutral
{
  if (neutral)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasNeutralPredictedAsSalient:(BOOL)salient
{
  if (salient)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasSalientPredictedAsIgnorable:(BOOL)ignorable
{
  if (ignorable)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasSalientPredictedAsNeutral:(BOOL)neutral
{
  if (neutral)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasSalientPredictedAsSalient:(BOOL)salient
{
  if (salient)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

@end