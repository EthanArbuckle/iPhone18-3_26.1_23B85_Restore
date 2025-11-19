@interface PBBProtoPerformanceResult
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasTimeEnded:(BOOL)a3;
- (void)setHasTimeStarted:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PBBProtoPerformanceResult

+ (void)initialize
{
  InstanceMethod = class_getInstanceMethod(a1, sel_description);
  v4 = class_getInstanceMethod(a1, sel_detailedDescription);

  method_exchangeImplementations(InstanceMethod, v4);
}

- (void)setHasTimeStarted:(BOOL)a3
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

- (void)setHasTimeEnded:(BOOL)a3
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
  v8.super_class = PBBProtoPerformanceResult;
  v4 = [(PBBProtoPerformanceResult *)&v8 description];
  v5 = [(PBBProtoPerformanceResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  activityType = self->_activityType;
  if (activityType)
  {
    [v3 setObject:activityType forKey:@"activityType"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v4 setObject:identifier forKey:@"identifier"];
  }

  has = self->_has;
  if (has)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeDelta];
    [v4 setObject:v10 forKey:@"timeDelta"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeStarted];
  [v4 setObject:v11 forKey:@"timeStarted"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_8:
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timeEnded];
    [v4 setObject:v8 forKey:@"timeEnded"];
  }

LABEL_9:

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_activityType)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  has = self->_has;
  if (has)
  {
    timeDelta = self->_timeDelta;
    PBDataWriterWriteDoubleField();
    v4 = v9;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  timeStarted = self->_timeStarted;
  PBDataWriterWriteDoubleField();
  v4 = v9;
  if ((*&self->_has & 2) != 0)
  {
LABEL_8:
    timeEnded = self->_timeEnded;
    PBDataWriterWriteDoubleField();
    v4 = v9;
  }

LABEL_9:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_activityType)
  {
    [v4 setActivityType:?];
    v4 = v6;
  }

  if (self->_identifier)
  {
    [v6 setIdentifier:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = *&self->_timeDelta;
    *(v4 + 48) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  *(v4 + 3) = *&self->_timeStarted;
  *(v4 + 48) |= 4u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_8:
    *(v4 + 2) = *&self->_timeEnded;
    *(v4 + 48) |= 2u;
  }

LABEL_9:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_activityType copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_identifier copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 24) = self->_timeStarted;
    *(v5 + 48) |= 4u;
    if ((*&self->_has & 2) == 0)
    {
      return v5;
    }

    goto LABEL_4;
  }

  *(v5 + 8) = self->_timeDelta;
  *(v5 + 48) |= 1u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 2) != 0)
  {
LABEL_4:
    *(v5 + 16) = self->_timeEnded;
    *(v5 + 48) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  activityType = self->_activityType;
  if (activityType | *(v4 + 4))
  {
    if (![(NSString *)activityType isEqual:?])
    {
      goto LABEL_20;
    }
  }

  identifier = self->_identifier;
  if (identifier | *(v4 + 5))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_20;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_timeDelta != *(v4 + 1))
    {
      goto LABEL_20;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_20:
    v7 = 0;
    goto LABEL_21;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 48) & 4) == 0 || self->_timeStarted != *(v4 + 3))
    {
      goto LABEL_20;
    }
  }

  else if ((*(v4 + 48) & 4) != 0)
  {
    goto LABEL_20;
  }

  v7 = (*(v4 + 48) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_timeEnded != *(v4 + 2))
    {
      goto LABEL_20;
    }

    v7 = 1;
  }

LABEL_21:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_activityType hash];
  v4 = [(NSString *)self->_identifier hash];
  if (*&self->_has)
  {
    timeDelta = self->_timeDelta;
    if (timeDelta < 0.0)
    {
      timeDelta = -timeDelta;
    }

    *v5.i64 = floor(timeDelta + 0.5);
    v9 = (timeDelta - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v5 = vbslq_s8(vnegq_f64(v10), v6, v5);
    v7 = 2654435761u * *v5.i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    timeStarted = self->_timeStarted;
    if (timeStarted < 0.0)
    {
      timeStarted = -timeStarted;
    }

    *v5.i64 = floor(timeStarted + 0.5);
    v13 = (timeStarted - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v5 = vbslq_s8(vnegq_f64(v14), v6, v5);
    v11 = 2654435761u * *v5.i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v11 += v13;
      }
    }

    else
    {
      v11 -= fabs(v13);
    }
  }

  else
  {
    v11 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    timeEnded = self->_timeEnded;
    if (timeEnded < 0.0)
    {
      timeEnded = -timeEnded;
    }

    *v5.i64 = floor(timeEnded + 0.5);
    v17 = (timeEnded - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v18.f64[0] = NAN;
    v18.f64[1] = NAN;
    v15 = 2654435761u * *vbslq_s8(vnegq_f64(v18), v6, v5).i64;
    if (v17 >= 0.0)
    {
      if (v17 > 0.0)
      {
        v15 += v17;
      }
    }

    else
    {
      v15 -= fabs(v17);
    }
  }

  else
  {
    v15 = 0;
  }

  return v4 ^ v3 ^ v7 ^ v11 ^ v15;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 4))
  {
    [(PBBProtoPerformanceResult *)self setActivityType:?];
    v4 = v6;
  }

  if (*(v4 + 5))
  {
    [(PBBProtoPerformanceResult *)self setIdentifier:?];
    v4 = v6;
  }

  v5 = *(v4 + 48);
  if (v5)
  {
    self->_timeDelta = v4[1];
    *&self->_has |= 1u;
    v5 = *(v4 + 48);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 2) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((v4[6] & 4) == 0)
  {
    goto LABEL_7;
  }

  self->_timeStarted = v4[3];
  *&self->_has |= 4u;
  if ((v4[6] & 2) != 0)
  {
LABEL_8:
    self->_timeEnded = v4[2];
    *&self->_has |= 2u;
  }

LABEL_9:
}

@end