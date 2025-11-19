@interface BMPBSleepModeEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSleepModeChangeReason:(id)a3;
- (int)StringAsSleepModeState:(id)a3;
- (int)sleepModeChangeReason;
- (int)sleepModeState;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSleepModeChangeReason:(BOOL)a3;
- (void)setHasSleepModeState:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBSleepModeEvent

- (int)sleepModeState
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_sleepModeState;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSleepModeState:(BOOL)a3
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

- (int)StringAsSleepModeState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Off"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"WindDown"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Bedtime"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)sleepModeChangeReason
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_sleepModeChangeReason;
  }

  else
  {
    return 0;
  }
}

- (void)setHasSleepModeChangeReason:(BOOL)a3
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

- (int)StringAsSleepModeChangeReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"UserRequested"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Expected"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CloudSynced"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"CloudSyncedUserRequested"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"NanoSynced"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"TurnedOffDND"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"Other"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"Automation"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"CloudSyncedAutomation"])
  {
    v4 = 9;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBSleepModeEvent;
  v4 = [(BMPBSleepModeEvent *)&v8 description];
  v5 = [(BMPBSleepModeEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    sleepModeState = self->_sleepModeState;
    if (sleepModeState >= 3)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_sleepModeState];
    }

    else
    {
      v8 = *(&off_1E6E53670 + sleepModeState);
    }

    [v3 setObject:v8 forKey:@"sleepModeState"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  sleepModeChangeReason = self->_sleepModeChangeReason;
  if (sleepModeChangeReason >= 0xA)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_sleepModeChangeReason];
  }

  else
  {
    v10 = *(&off_1E6E53688 + sleepModeChangeReason);
  }

  [v3 setObject:v10 forKey:@"sleepModeChangeReason"];

  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_4:
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_expectedEndDate];
  [v3 setObject:v5 forKey:@"expectedEndDate"];

LABEL_5:

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v9 = v4;
  if ((has & 4) != 0)
  {
    sleepModeState = self->_sleepModeState;
    PBDataWriterWriteInt32Field();
    v4 = v9;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  sleepModeChangeReason = self->_sleepModeChangeReason;
  PBDataWriterWriteInt32Field();
  v4 = v9;
  if (*&self->_has)
  {
LABEL_4:
    expectedEndDate = self->_expectedEndDate;
    PBDataWriterWriteDoubleField();
    v4 = v9;
  }

LABEL_5:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v4[5] = self->_sleepModeState;
    *(v4 + 24) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  v4[4] = self->_sleepModeChangeReason;
  *(v4 + 24) |= 2u;
  if (*&self->_has)
  {
LABEL_4:
    *(v4 + 1) = *&self->_expectedEndDate;
    *(v4 + 24) |= 1u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(result + 5) = self->_sleepModeState;
    *(result + 24) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_sleepModeChangeReason;
  *(result + 24) |= 2u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 1) = *&self->_expectedEndDate;
  *(result + 24) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 24) & 4) == 0 || self->_sleepModeState != *(v4 + 5))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 24) & 4) != 0)
  {
LABEL_16:
    v5 = 0;
    goto LABEL_17;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) == 0 || self->_sleepModeChangeReason != *(v4 + 4))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 24) & 2) != 0)
  {
    goto LABEL_16;
  }

  v5 = (*(v4 + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_expectedEndDate != *(v4 + 1))
    {
      goto LABEL_16;
    }

    v5 = 1;
  }

LABEL_17:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) == 0)
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v5 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_10:
    v9 = 0;
    return v5 ^ v4 ^ v9;
  }

  v4 = 2654435761 * self->_sleepModeState;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v5 = 2654435761 * self->_sleepModeChangeReason;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  expectedEndDate = self->_expectedEndDate;
  if (expectedEndDate < 0.0)
  {
    expectedEndDate = -expectedEndDate;
  }

  *v2.i64 = floor(expectedEndDate + 0.5);
  v7 = (expectedEndDate - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v9 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v9 += v7;
    }
  }

  else
  {
    v9 -= fabs(v7);
  }

  return v5 ^ v4 ^ v9;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 24);
  if ((v5 & 4) != 0)
  {
    self->_sleepModeState = *(v4 + 5);
    *&self->_has |= 4u;
    v5 = *(v4 + 24);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(v4 + 24) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_sleepModeChangeReason = *(v4 + 4);
  *&self->_has |= 2u;
  if (*(v4 + 24))
  {
LABEL_4:
    self->_expectedEndDate = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_5:
}

@end