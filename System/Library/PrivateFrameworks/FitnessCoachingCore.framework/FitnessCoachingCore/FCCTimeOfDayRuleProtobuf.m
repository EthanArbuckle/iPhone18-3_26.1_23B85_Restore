@interface FCCTimeOfDayRuleProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSecondsBeforeEndOfDay:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation FCCTimeOfDayRuleProtobuf

- (void)setHasSecondsBeforeEndOfDay:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = FCCTimeOfDayRuleProtobuf;
  v4 = [(FCCTimeOfDayRuleProtobuf *)&v8 description];
  v5 = [(FCCTimeOfDayRuleProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_minimumDayDuration];
    [v3 setObject:v5 forKey:@"minimumDayDuration"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_secondsBeforeEndOfDay];
    [v3 setObject:v6 forKey:@"secondsBeforeEndOfDay"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v8 = v4;
  if (has)
  {
    minimumDayDuration = self->_minimumDayDuration;
    PBDataWriterWriteDoubleField();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    secondsBeforeEndOfDay = self->_secondsBeforeEndOfDay;
    PBDataWriterWriteDoubleField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = *&self->_minimumDayDuration;
    *(v4 + 24) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[2] = *&self->_secondsBeforeEndOfDay;
    *(v4 + 24) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 1) = *&self->_minimumDayDuration;
    *(result + 24) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(result + 2) = *&self->_secondsBeforeEndOfDay;
    *(result + 24) |= 2u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_minimumDayDuration != *(v4 + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 24))
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = (*(v4 + 24) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) == 0 || self->_secondsBeforeEndOfDay != *(v4 + 2))
    {
      goto LABEL_11;
    }

    v5 = 1;
  }

LABEL_12:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    minimumDayDuration = self->_minimumDayDuration;
    if (minimumDayDuration < 0.0)
    {
      minimumDayDuration = -minimumDayDuration;
    }

    *v2.i64 = floor(minimumDayDuration + 0.5);
    v6 = (minimumDayDuration - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v7), v3, v2);
    v4 = 2654435761u * *v2.i64;
    if (v6 >= 0.0)
    {
      if (v6 > 0.0)
      {
        v4 += v6;
      }
    }

    else
    {
      v4 -= fabs(v6);
    }
  }

  else
  {
    v4 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    secondsBeforeEndOfDay = self->_secondsBeforeEndOfDay;
    if (secondsBeforeEndOfDay < 0.0)
    {
      secondsBeforeEndOfDay = -secondsBeforeEndOfDay;
    }

    *v2.i64 = floor(secondsBeforeEndOfDay + 0.5);
    v10 = (secondsBeforeEndOfDay - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v8 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v3, v2).i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabs(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 ^ v4;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 24);
  if (v5)
  {
    self->_minimumDayDuration = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 24);
  }

  if ((v5 & 2) != 0)
  {
    self->_secondsBeforeEndOfDay = *(v4 + 2);
    *&self->_has |= 2u;
  }
}

@end