@interface FCCGoalProgressConfigurationProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMinimumNumberOfActiveDays:(BOOL)a3;
- (void)setHasUserEndOfDayDate:(BOOL)a3;
- (void)setHasUserStartOfDayDate:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation FCCGoalProgressConfigurationProtobuf

- (void)setHasMinimumNumberOfActiveDays:(BOOL)a3
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

- (void)setHasUserStartOfDayDate:(BOOL)a3
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

- (void)setHasUserEndOfDayDate:(BOOL)a3
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
  v8.super_class = FCCGoalProgressConfigurationProtobuf;
  v4 = [(FCCGoalProgressConfigurationProtobuf *)&v8 description];
  v5 = [(FCCGoalProgressConfigurationProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithInt:self->_minimumNumberOfActiveDays];
    [v3 setObject:v13 forKey:@"minimumNumberOfActiveDays"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_userStartOfDayDate];
  [v3 setObject:v14 forKey:@"userStartOfDayDate"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_17:
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:self->_userEndOfDayDate];
  [v3 setObject:v15 forKey:@"userEndOfDayDate"];

  if (*&self->_has)
  {
LABEL_5:
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_expirationDate];
    [v3 setObject:v5 forKey:@"expirationDate"];
  }

LABEL_6:
  almostThereConfiguration = self->_almostThereConfiguration;
  if (almostThereConfiguration)
  {
    v7 = [(FCCAlmostThereConfigurationProtobuf *)almostThereConfiguration dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"almostThereConfiguration"];
  }

  atypicalDayConfiguration = self->_atypicalDayConfiguration;
  if (atypicalDayConfiguration)
  {
    v9 = [(FCCAtypicalDayConfigurationProtobuf *)atypicalDayConfiguration dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"atypicalDayConfiguration"];
  }

  completionOffTrackConfiguration = self->_completionOffTrackConfiguration;
  if (completionOffTrackConfiguration)
  {
    v11 = [(FCCCompletionOffTrackConfigurationProtobuf *)completionOffTrackConfiguration dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"completionOffTrackConfiguration"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v10 = v4;
  if ((has & 8) != 0)
  {
    minimumNumberOfActiveDays = self->_minimumNumberOfActiveDays;
    PBDataWriterWriteInt32Field();
    v4 = v10;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  userStartOfDayDate = self->_userStartOfDayDate;
  PBDataWriterWriteDoubleField();
  v4 = v10;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_17:
  userEndOfDayDate = self->_userEndOfDayDate;
  PBDataWriterWriteDoubleField();
  v4 = v10;
  if (*&self->_has)
  {
LABEL_5:
    expirationDate = self->_expirationDate;
    PBDataWriterWriteDoubleField();
    v4 = v10;
  }

LABEL_6:
  if (self->_almostThereConfiguration)
  {
    PBDataWriterWriteSubmessage();
    v4 = v10;
  }

  if (self->_atypicalDayConfiguration)
  {
    PBDataWriterWriteSubmessage();
    v4 = v10;
  }

  if (self->_completionOffTrackConfiguration)
  {
    PBDataWriterWriteSubmessage();
    v4 = v10;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 8) != 0)
  {
    v4[14] = self->_minimumNumberOfActiveDays;
    *(v4 + 60) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v4 + 3) = *&self->_userStartOfDayDate;
  *(v4 + 60) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_17:
  *(v4 + 2) = *&self->_userEndOfDayDate;
  *(v4 + 60) |= 2u;
  if (*&self->_has)
  {
LABEL_5:
    *(v4 + 1) = *&self->_expirationDate;
    *(v4 + 60) |= 1u;
  }

LABEL_6:
  v6 = v4;
  if (self->_almostThereConfiguration)
  {
    [v4 setAlmostThereConfiguration:?];
    v4 = v6;
  }

  if (self->_atypicalDayConfiguration)
  {
    [v6 setAtypicalDayConfiguration:?];
    v4 = v6;
  }

  if (self->_completionOffTrackConfiguration)
  {
    [v6 setCompletionOffTrackConfiguration:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 56) = self->_minimumNumberOfActiveDays;
    *(v5 + 60) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 16) = self->_userEndOfDayDate;
      *(v5 + 60) |= 2u;
      if ((*&self->_has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 24) = self->_userStartOfDayDate;
  *(v5 + 60) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (has)
  {
LABEL_5:
    *(v5 + 8) = self->_expirationDate;
    *(v5 + 60) |= 1u;
  }

LABEL_6:
  v8 = [(FCCAlmostThereConfigurationProtobuf *)self->_almostThereConfiguration copyWithZone:a3];
  v9 = v6[4];
  v6[4] = v8;

  v10 = [(FCCAtypicalDayConfigurationProtobuf *)self->_atypicalDayConfiguration copyWithZone:a3];
  v11 = v6[5];
  v6[5] = v10;

  v12 = [(FCCCompletionOffTrackConfigurationProtobuf *)self->_completionOffTrackConfiguration copyWithZone:a3];
  v13 = v6[6];
  v6[6] = v12;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  v5 = *(v4 + 60);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 60) & 8) == 0 || self->_minimumNumberOfActiveDays != *(v4 + 14))
    {
      goto LABEL_28;
    }
  }

  else if ((*(v4 + 60) & 8) != 0)
  {
LABEL_28:
    v9 = 0;
    goto LABEL_29;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 60) & 4) == 0 || self->_userStartOfDayDate != *(v4 + 3))
    {
      goto LABEL_28;
    }
  }

  else if ((*(v4 + 60) & 4) != 0)
  {
    goto LABEL_28;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 60) & 2) == 0 || self->_userEndOfDayDate != *(v4 + 2))
    {
      goto LABEL_28;
    }
  }

  else if ((*(v4 + 60) & 2) != 0)
  {
    goto LABEL_28;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 60) & 1) == 0 || self->_expirationDate != *(v4 + 1))
    {
      goto LABEL_28;
    }
  }

  else if (*(v4 + 60))
  {
    goto LABEL_28;
  }

  almostThereConfiguration = self->_almostThereConfiguration;
  if (almostThereConfiguration | *(v4 + 4) && ![(FCCAlmostThereConfigurationProtobuf *)almostThereConfiguration isEqual:?])
  {
    goto LABEL_28;
  }

  atypicalDayConfiguration = self->_atypicalDayConfiguration;
  if (atypicalDayConfiguration | *(v4 + 5))
  {
    if (![(FCCAtypicalDayConfigurationProtobuf *)atypicalDayConfiguration isEqual:?])
    {
      goto LABEL_28;
    }
  }

  completionOffTrackConfiguration = self->_completionOffTrackConfiguration;
  if (completionOffTrackConfiguration | *(v4 + 6))
  {
    v9 = [(FCCCompletionOffTrackConfigurationProtobuf *)completionOffTrackConfiguration isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_29:

  return v9;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    v5 = 2654435761 * self->_minimumNumberOfActiveDays;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v5 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  userStartOfDayDate = self->_userStartOfDayDate;
  if (userStartOfDayDate < 0.0)
  {
    userStartOfDayDate = -userStartOfDayDate;
  }

  *v2.i64 = floor(userStartOfDayDate + 0.5);
  v7 = (userStartOfDayDate - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v2 = vbslq_s8(vnegq_f64(v8), v3, v2);
  v9 = 2654435761u * *v2.i64;
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

LABEL_9:
  if ((*&self->_has & 2) != 0)
  {
    userEndOfDayDate = self->_userEndOfDayDate;
    if (userEndOfDayDate < 0.0)
    {
      userEndOfDayDate = -userEndOfDayDate;
    }

    *v2.i64 = floor(userEndOfDayDate + 0.5);
    v12 = (userEndOfDayDate - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v2 = vbslq_s8(vnegq_f64(v13), v3, v2);
    v10 = 2654435761u * *v2.i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  if (*&self->_has)
  {
    expirationDate = self->_expirationDate;
    if (expirationDate < 0.0)
    {
      expirationDate = -expirationDate;
    }

    *v2.i64 = floor(expirationDate + 0.5);
    v16 = (expirationDate - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v14 = 2654435761u * *vbslq_s8(vnegq_f64(v17), v3, v2).i64;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v14 += v16;
      }
    }

    else
    {
      v14 -= fabs(v16);
    }
  }

  else
  {
    v14 = 0;
  }

  v18 = v9 ^ v5 ^ v10 ^ v14 ^ [(FCCAlmostThereConfigurationProtobuf *)self->_almostThereConfiguration hash];
  v19 = [(FCCAtypicalDayConfigurationProtobuf *)self->_atypicalDayConfiguration hash];
  return v18 ^ v19 ^ [(FCCCompletionOffTrackConfigurationProtobuf *)self->_completionOffTrackConfiguration hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 60);
  if ((v6 & 8) != 0)
  {
    self->_minimumNumberOfActiveDays = *(v4 + 14);
    *&self->_has |= 8u;
    v6 = *(v4 + 60);
    if ((v6 & 4) == 0)
    {
LABEL_3:
      if ((v6 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(v4 + 60) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_userStartOfDayDate = *(v4 + 3);
  *&self->_has |= 4u;
  v6 = *(v4 + 60);
  if ((v6 & 2) == 0)
  {
LABEL_4:
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  self->_userEndOfDayDate = *(v4 + 2);
  *&self->_has |= 2u;
  if (*(v4 + 60))
  {
LABEL_5:
    self->_expirationDate = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_6:
  almostThereConfiguration = self->_almostThereConfiguration;
  v8 = v5[4];
  v13 = v5;
  if (almostThereConfiguration)
  {
    if (!v8)
    {
      goto LABEL_16;
    }

    [(FCCAlmostThereConfigurationProtobuf *)almostThereConfiguration mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_16;
    }

    [(FCCGoalProgressConfigurationProtobuf *)self setAlmostThereConfiguration:?];
  }

  v5 = v13;
LABEL_16:
  atypicalDayConfiguration = self->_atypicalDayConfiguration;
  v10 = v5[5];
  if (atypicalDayConfiguration)
  {
    if (!v10)
    {
      goto LABEL_22;
    }

    [(FCCAtypicalDayConfigurationProtobuf *)atypicalDayConfiguration mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_22;
    }

    [(FCCGoalProgressConfigurationProtobuf *)self setAtypicalDayConfiguration:?];
  }

  v5 = v13;
LABEL_22:
  completionOffTrackConfiguration = self->_completionOffTrackConfiguration;
  v12 = v5[6];
  if (completionOffTrackConfiguration)
  {
    if (v12)
    {
      [(FCCCompletionOffTrackConfigurationProtobuf *)completionOffTrackConfiguration mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(FCCGoalProgressConfigurationProtobuf *)self setCompletionOffTrackConfiguration:?];
  }

  MEMORY[0x2821F96F8]();
}

@end