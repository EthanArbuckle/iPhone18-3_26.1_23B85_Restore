@interface FCCGoalProgressConfigurationProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasMinimumNumberOfActiveDays:(BOOL)days;
- (void)setHasUserEndOfDayDate:(BOOL)date;
- (void)setHasUserStartOfDayDate:(BOOL)date;
- (void)writeTo:(id)to;
@end

@implementation FCCGoalProgressConfigurationProtobuf

- (void)setHasMinimumNumberOfActiveDays:(BOOL)days
{
  if (days)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasUserStartOfDayDate:(BOOL)date
{
  if (date)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasUserEndOfDayDate:(BOOL)date
{
  if (date)
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
  dictionaryRepresentation = [(FCCGoalProgressConfigurationProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithInt:self->_minimumNumberOfActiveDays];
    [dictionary setObject:v13 forKey:@"minimumNumberOfActiveDays"];

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
  [dictionary setObject:v14 forKey:@"userStartOfDayDate"];

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
  [dictionary setObject:v15 forKey:@"userEndOfDayDate"];

  if (*&self->_has)
  {
LABEL_5:
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_expirationDate];
    [dictionary setObject:v5 forKey:@"expirationDate"];
  }

LABEL_6:
  almostThereConfiguration = self->_almostThereConfiguration;
  if (almostThereConfiguration)
  {
    dictionaryRepresentation = [(FCCAlmostThereConfigurationProtobuf *)almostThereConfiguration dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"almostThereConfiguration"];
  }

  atypicalDayConfiguration = self->_atypicalDayConfiguration;
  if (atypicalDayConfiguration)
  {
    dictionaryRepresentation2 = [(FCCAtypicalDayConfigurationProtobuf *)atypicalDayConfiguration dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"atypicalDayConfiguration"];
  }

  completionOffTrackConfiguration = self->_completionOffTrackConfiguration;
  if (completionOffTrackConfiguration)
  {
    dictionaryRepresentation3 = [(FCCCompletionOffTrackConfigurationProtobuf *)completionOffTrackConfiguration dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"completionOffTrackConfiguration"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v10 = toCopy;
  if ((has & 8) != 0)
  {
    minimumNumberOfActiveDays = self->_minimumNumberOfActiveDays;
    PBDataWriterWriteInt32Field();
    toCopy = v10;
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
  toCopy = v10;
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
  toCopy = v10;
  if (*&self->_has)
  {
LABEL_5:
    expirationDate = self->_expirationDate;
    PBDataWriterWriteDoubleField();
    toCopy = v10;
  }

LABEL_6:
  if (self->_almostThereConfiguration)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  if (self->_atypicalDayConfiguration)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }

  if (self->_completionOffTrackConfiguration)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v10;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    toCopy[14] = self->_minimumNumberOfActiveDays;
    *(toCopy + 60) |= 8u;
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

  *(toCopy + 3) = *&self->_userStartOfDayDate;
  *(toCopy + 60) |= 4u;
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
  *(toCopy + 2) = *&self->_userEndOfDayDate;
  *(toCopy + 60) |= 2u;
  if (*&self->_has)
  {
LABEL_5:
    *(toCopy + 1) = *&self->_expirationDate;
    *(toCopy + 60) |= 1u;
  }

LABEL_6:
  v6 = toCopy;
  if (self->_almostThereConfiguration)
  {
    [toCopy setAlmostThereConfiguration:?];
    toCopy = v6;
  }

  if (self->_atypicalDayConfiguration)
  {
    [v6 setAtypicalDayConfiguration:?];
    toCopy = v6;
  }

  if (self->_completionOffTrackConfiguration)
  {
    [v6 setCompletionOffTrackConfiguration:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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
  v8 = [(FCCAlmostThereConfigurationProtobuf *)self->_almostThereConfiguration copyWithZone:zone];
  v9 = v6[4];
  v6[4] = v8;

  v10 = [(FCCAtypicalDayConfigurationProtobuf *)self->_atypicalDayConfiguration copyWithZone:zone];
  v11 = v6[5];
  v6[5] = v10;

  v12 = [(FCCCompletionOffTrackConfigurationProtobuf *)self->_completionOffTrackConfiguration copyWithZone:zone];
  v13 = v6[6];
  v6[6] = v12;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_28;
  }

  v5 = *(equalCopy + 60);
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 60) & 8) == 0 || self->_minimumNumberOfActiveDays != *(equalCopy + 14))
    {
      goto LABEL_28;
    }
  }

  else if ((*(equalCopy + 60) & 8) != 0)
  {
LABEL_28:
    v9 = 0;
    goto LABEL_29;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 60) & 4) == 0 || self->_userStartOfDayDate != *(equalCopy + 3))
    {
      goto LABEL_28;
    }
  }

  else if ((*(equalCopy + 60) & 4) != 0)
  {
    goto LABEL_28;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 60) & 2) == 0 || self->_userEndOfDayDate != *(equalCopy + 2))
    {
      goto LABEL_28;
    }
  }

  else if ((*(equalCopy + 60) & 2) != 0)
  {
    goto LABEL_28;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 60) & 1) == 0 || self->_expirationDate != *(equalCopy + 1))
    {
      goto LABEL_28;
    }
  }

  else if (*(equalCopy + 60))
  {
    goto LABEL_28;
  }

  almostThereConfiguration = self->_almostThereConfiguration;
  if (almostThereConfiguration | *(equalCopy + 4) && ![(FCCAlmostThereConfigurationProtobuf *)almostThereConfiguration isEqual:?])
  {
    goto LABEL_28;
  }

  atypicalDayConfiguration = self->_atypicalDayConfiguration;
  if (atypicalDayConfiguration | *(equalCopy + 5))
  {
    if (![(FCCAtypicalDayConfigurationProtobuf *)atypicalDayConfiguration isEqual:?])
    {
      goto LABEL_28;
    }
  }

  completionOffTrackConfiguration = self->_completionOffTrackConfiguration;
  if (completionOffTrackConfiguration | *(equalCopy + 6))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 60);
  if ((v6 & 8) != 0)
  {
    self->_minimumNumberOfActiveDays = *(fromCopy + 14);
    *&self->_has |= 8u;
    v6 = *(fromCopy + 60);
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

  else if ((*(fromCopy + 60) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_userStartOfDayDate = *(fromCopy + 3);
  *&self->_has |= 4u;
  v6 = *(fromCopy + 60);
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
  self->_userEndOfDayDate = *(fromCopy + 2);
  *&self->_has |= 2u;
  if (*(fromCopy + 60))
  {
LABEL_5:
    self->_expirationDate = *(fromCopy + 1);
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