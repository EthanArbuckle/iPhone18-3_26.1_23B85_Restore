@interface SGMIMetricsAggregatedAccuracyLog
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIgnorablePredictedAsNeutral:(BOOL)a3;
- (void)setHasIgnorablePredictedAsSalient:(BOOL)a3;
- (void)setHasNeutralPredictedAsIgnorable:(BOOL)a3;
- (void)setHasNeutralPredictedAsNeutral:(BOOL)a3;
- (void)setHasNeutralPredictedAsSalient:(BOOL)a3;
- (void)setHasSalientPredictedAsIgnorable:(BOOL)a3;
- (void)setHasSalientPredictedAsNeutral:(BOOL)a3;
- (void)setHasSalientPredictedAsSalient:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation SGMIMetricsAggregatedAccuracyLog

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 22);
  if ((v5 & 0x100) != 0)
  {
    self->_salientPredictedAsSalient = *(v4 + 10);
    *&self->_has |= 0x100u;
    v5 = *(v4 + 22);
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

  self->_salientPredictedAsNeutral = *(v4 + 9);
  *&self->_has |= 0x80u;
  v5 = *(v4 + 22);
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
  self->_salientPredictedAsIgnorable = *(v4 + 8);
  *&self->_has |= 0x40u;
  v5 = *(v4 + 22);
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
  self->_neutralPredictedAsSalient = *(v4 + 7);
  *&self->_has |= 0x20u;
  v5 = *(v4 + 22);
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
  self->_neutralPredictedAsNeutral = *(v4 + 6);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 22);
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
  self->_neutralPredictedAsIgnorable = *(v4 + 5);
  *&self->_has |= 8u;
  v5 = *(v4 + 22);
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
  self->_ignorablePredictedAsSalient = *(v4 + 4);
  *&self->_has |= 4u;
  v5 = *(v4 + 22);
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
  self->_ignorablePredictedAsNeutral = *(v4 + 3);
  *&self->_has |= 2u;
  if (*(v4 + 22))
  {
LABEL_10:
    self->_ignorablePredictedAsIgnorable = *(v4 + 2);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_47;
  }

  has = self->_has;
  v6 = *(v4 + 22);
  if ((has & 0x100) != 0)
  {
    if ((*(v4 + 22) & 0x100) == 0 || self->_salientPredictedAsSalient != *(v4 + 10))
    {
      goto LABEL_47;
    }
  }

  else if ((*(v4 + 22) & 0x100) != 0)
  {
LABEL_47:
    v7 = 0;
    goto LABEL_48;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_salientPredictedAsNeutral != *(v4 + 9))
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
    if ((v6 & 0x40) == 0 || self->_salientPredictedAsIgnorable != *(v4 + 8))
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
    if ((v6 & 0x20) == 0 || self->_neutralPredictedAsSalient != *(v4 + 7))
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
    if ((v6 & 0x10) == 0 || self->_neutralPredictedAsNeutral != *(v4 + 6))
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
    if ((v6 & 8) == 0 || self->_neutralPredictedAsIgnorable != *(v4 + 5))
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
    if ((v6 & 4) == 0 || self->_ignorablePredictedAsSalient != *(v4 + 4))
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
    if ((v6 & 2) == 0 || self->_ignorablePredictedAsNeutral != *(v4 + 3))
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
    if ((v6 & 1) == 0 || self->_ignorablePredictedAsIgnorable != *(v4 + 2))
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

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    v4[10] = self->_salientPredictedAsSalient;
    *(v4 + 22) |= 0x100u;
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

  v4[9] = self->_salientPredictedAsNeutral;
  *(v4 + 22) |= 0x80u;
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
  v4[8] = self->_salientPredictedAsIgnorable;
  *(v4 + 22) |= 0x40u;
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
  v4[7] = self->_neutralPredictedAsSalient;
  *(v4 + 22) |= 0x20u;
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
  v4[6] = self->_neutralPredictedAsNeutral;
  *(v4 + 22) |= 0x10u;
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
  v4[5] = self->_neutralPredictedAsIgnorable;
  *(v4 + 22) |= 8u;
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
  v4[4] = self->_ignorablePredictedAsSalient;
  *(v4 + 22) |= 4u;
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
  v4[3] = self->_ignorablePredictedAsNeutral;
  *(v4 + 22) |= 2u;
  if (*&self->_has)
  {
LABEL_10:
    v4[2] = self->_ignorablePredictedAsIgnorable;
    *(v4 + 22) |= 1u;
  }

LABEL_11:
}

- (void)writeTo:(id)a3
{
  v14 = a3;
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
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 0x100) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_salientPredictedAsSalient];
    [v3 setObject:v7 forKey:@"salientPredictedAsSalient"];

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
  [v3 setObject:v8 forKey:@"salientPredictedAsNeutral"];

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
  [v3 setObject:v9 forKey:@"salientPredictedAsIgnorable"];

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
  [v3 setObject:v10 forKey:@"neutralPredictedAsSalient"];

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
  [v3 setObject:v11 forKey:@"neutralPredictedAsNeutral"];

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
  [v3 setObject:v12 forKey:@"neutralPredictedAsIgnorable"];

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
  [v3 setObject:v13 forKey:@"ignorablePredictedAsSalient"];

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
  [v3 setObject:v14 forKey:@"ignorablePredictedAsNeutral"];

  if (*&self->_has)
  {
LABEL_10:
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_ignorablePredictedAsIgnorable];
    [v3 setObject:v5 forKey:@"ignorablePredictedAsIgnorable"];
  }

LABEL_11:

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SGMIMetricsAggregatedAccuracyLog;
  v4 = [(SGMIMetricsAggregatedAccuracyLog *)&v8 description];
  v5 = [(SGMIMetricsAggregatedAccuracyLog *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasIgnorablePredictedAsNeutral:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasIgnorablePredictedAsSalient:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasNeutralPredictedAsIgnorable:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasNeutralPredictedAsNeutral:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasNeutralPredictedAsSalient:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasSalientPredictedAsIgnorable:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasSalientPredictedAsNeutral:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasSalientPredictedAsSalient:(BOOL)a3
{
  if (a3)
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