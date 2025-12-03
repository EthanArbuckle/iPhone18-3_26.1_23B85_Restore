@interface HDCodableActivityGoalSchedule
- (BOOL)applyToObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasGoalType:(BOOL)type;
- (void)setHasMondayGoal:(BOOL)goal;
- (void)setHasSaturdayGoal:(BOOL)goal;
- (void)setHasSundayGoal:(BOOL)goal;
- (void)setHasThursdayGoal:(BOOL)goal;
- (void)setHasTuesdayGoal:(BOOL)goal;
- (void)setHasWednesdayGoal:(BOOL)goal;
- (void)writeTo:(id)to;
@end

@implementation HDCodableActivityGoalSchedule

- (void)setHasGoalType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasMondayGoal:(BOOL)goal
{
  if (goal)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasTuesdayGoal:(BOOL)goal
{
  if (goal)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasWednesdayGoal:(BOOL)goal
{
  if (goal)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasThursdayGoal:(BOOL)goal
{
  if (goal)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasSaturdayGoal:(BOOL)goal
{
  if (goal)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSundayGoal:(BOOL)goal
{
  if (goal)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableActivityGoalSchedule;
  v4 = [(HDCodableActivityGoalSchedule *)&v8 description];
  dictionaryRepresentation = [(HDCodableActivityGoalSchedule *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  sample = self->_sample;
  if (sample)
  {
    dictionaryRepresentation = [(HDCodableSample *)sample dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"sample"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_goalType];
    [dictionary setObject:v6 forKey:@"goalType"];
  }

  unitString = self->_unitString;
  if (unitString)
  {
    [dictionary setObject:unitString forKey:@"unitString"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mondayGoal];
    [dictionary setObject:v11 forKey:@"mondayGoal"];

    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_9:
      if ((has & 0x80) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_9;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:self->_tuesdayGoal];
  [dictionary setObject:v12 forKey:@"tuesdayGoal"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:self->_wednesdayGoal];
  [dictionary setObject:v13 forKey:@"wednesdayGoal"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_11:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_thursdayGoal];
  [dictionary setObject:v14 forKey:@"thursdayGoal"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_12:
    if ((has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:self->_fridayGoal];
  [dictionary setObject:v15 forKey:@"fridayGoal"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_13:
    if ((has & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_23:
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:self->_saturdayGoal];
  [dictionary setObject:v16 forKey:@"saturdayGoal"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_14:
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_sundayGoal];
    [dictionary setObject:v9 forKey:@"sundayGoal"];
  }

LABEL_15:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v14 = toCopy;
  if (self->_sample)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v14;
  }

  if ((*&self->_has & 2) != 0)
  {
    goalType = self->_goalType;
    PBDataWriterWriteInt64Field();
    toCopy = v14;
  }

  if (self->_unitString)
  {
    PBDataWriterWriteStringField();
    toCopy = v14;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    mondayGoal = self->_mondayGoal;
    PBDataWriterWriteDoubleField();
    toCopy = v14;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_9:
      if ((has & 0x80) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_9;
  }

  tuesdayGoal = self->_tuesdayGoal;
  PBDataWriterWriteDoubleField();
  toCopy = v14;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  wednesdayGoal = self->_wednesdayGoal;
  PBDataWriterWriteDoubleField();
  toCopy = v14;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_11:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  thursdayGoal = self->_thursdayGoal;
  PBDataWriterWriteDoubleField();
  toCopy = v14;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_12:
    if ((has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:
  fridayGoal = self->_fridayGoal;
  PBDataWriterWriteDoubleField();
  toCopy = v14;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_13:
    if ((has & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_23:
  saturdayGoal = self->_saturdayGoal;
  PBDataWriterWriteDoubleField();
  toCopy = v14;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_14:
    sundayGoal = self->_sundayGoal;
    PBDataWriterWriteDoubleField();
    toCopy = v14;
  }

LABEL_15:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_sample)
  {
    [toCopy setSample:?];
    toCopy = v6;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 2) = self->_goalType;
    *(toCopy + 88) |= 2u;
  }

  if (self->_unitString)
  {
    [v6 setUnitString:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 3) = *&self->_mondayGoal;
    *(toCopy + 88) |= 4u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_9:
      if ((has & 0x80) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_9;
  }

  *(toCopy + 7) = *&self->_tuesdayGoal;
  *(toCopy + 88) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(toCopy + 8) = *&self->_wednesdayGoal;
  *(toCopy + 88) |= 0x80u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_11:
    if ((has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(toCopy + 6) = *&self->_thursdayGoal;
  *(toCopy + 88) |= 0x20u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_12:
    if ((has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(toCopy + 1) = *&self->_fridayGoal;
  *(toCopy + 88) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_13:
    if ((has & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_23:
  *(toCopy + 4) = *&self->_saturdayGoal;
  *(toCopy + 88) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_14:
    *(toCopy + 5) = *&self->_sundayGoal;
    *(toCopy + 88) |= 0x10u;
  }

LABEL_15:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HDCodableSample *)self->_sample copyWithZone:zone];
  v7 = *(v5 + 72);
  *(v5 + 72) = v6;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_goalType;
    *(v5 + 88) |= 2u;
  }

  v8 = [(NSString *)self->_unitString copyWithZone:zone];
  v9 = *(v5 + 80);
  *(v5 + 80) = v8;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 24) = self->_mondayGoal;
    *(v5 + 88) |= 4u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_5:
      if ((has & 0x80) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x40) == 0)
  {
    goto LABEL_5;
  }

  *(v5 + 56) = self->_tuesdayGoal;
  *(v5 + 88) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v5 + 64) = self->_wednesdayGoal;
  *(v5 + 88) |= 0x80u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v5 + 48) = self->_thursdayGoal;
  *(v5 + 88) |= 0x20u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

LABEL_17:
    *(v5 + 32) = self->_saturdayGoal;
    *(v5 + 88) |= 8u;
    if ((*&self->_has & 0x10) == 0)
    {
      return v5;
    }

    goto LABEL_10;
  }

LABEL_16:
  *(v5 + 8) = self->_fridayGoal;
  *(v5 + 88) |= 1u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  if ((has & 0x10) != 0)
  {
LABEL_10:
    *(v5 + 40) = self->_sundayGoal;
    *(v5 + 88) |= 0x10u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_46;
  }

  sample = self->_sample;
  if (sample | *(equalCopy + 9))
  {
    if (![(HDCodableSample *)sample isEqual:?])
    {
      goto LABEL_46;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 88);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 88) & 2) == 0 || self->_goalType != *(equalCopy + 2))
    {
      goto LABEL_46;
    }
  }

  else if ((*(equalCopy + 88) & 2) != 0)
  {
    goto LABEL_46;
  }

  unitString = self->_unitString;
  if (unitString | *(equalCopy + 10))
  {
    if (![(NSString *)unitString isEqual:?])
    {
      goto LABEL_46;
    }

    has = self->_has;
    v7 = *(equalCopy + 88);
  }

  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_mondayGoal != *(equalCopy + 3))
    {
      goto LABEL_46;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_46;
  }

  if ((has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_tuesdayGoal != *(equalCopy + 7))
    {
      goto LABEL_46;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_46;
  }

  if ((has & 0x80) == 0)
  {
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_24;
    }

LABEL_46:
    v9 = 0;
    goto LABEL_47;
  }

  if ((v7 & 0x80) == 0 || self->_wednesdayGoal != *(equalCopy + 8))
  {
    goto LABEL_46;
  }

LABEL_24:
  if ((has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_thursdayGoal != *(equalCopy + 6))
    {
      goto LABEL_46;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_46;
  }

  if (has)
  {
    if ((v7 & 1) == 0 || self->_fridayGoal != *(equalCopy + 1))
    {
      goto LABEL_46;
    }
  }

  else if (v7)
  {
    goto LABEL_46;
  }

  if ((has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_saturdayGoal != *(equalCopy + 4))
    {
      goto LABEL_46;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_46;
  }

  v9 = (v7 & 0x10) == 0;
  if ((has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_sundayGoal != *(equalCopy + 5))
    {
      goto LABEL_46;
    }

    v9 = 1;
  }

LABEL_47:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(HDCodableSample *)self->_sample hash];
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_goalType;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(NSString *)self->_unitString hash];
  if ((*&self->_has & 4) != 0)
  {
    mondayGoal = self->_mondayGoal;
    if (mondayGoal < 0.0)
    {
      mondayGoal = -mondayGoal;
    }

    *v6.i64 = floor(mondayGoal + 0.5);
    v10 = (mondayGoal - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v11), v7, v6);
    v8 = 2654435761u * *v6.i64;
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

  if ((*&self->_has & 0x40) != 0)
  {
    tuesdayGoal = self->_tuesdayGoal;
    if (tuesdayGoal < 0.0)
    {
      tuesdayGoal = -tuesdayGoal;
    }

    *v6.i64 = floor(tuesdayGoal + 0.5);
    v14 = (tuesdayGoal - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v15), v7, v6);
    v12 = 2654435761u * *v6.i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v12 += v14;
      }
    }

    else
    {
      v12 -= fabs(v14);
    }
  }

  else
  {
    v12 = 0;
  }

  if ((*&self->_has & 0x80) != 0)
  {
    wednesdayGoal = self->_wednesdayGoal;
    if (wednesdayGoal < 0.0)
    {
      wednesdayGoal = -wednesdayGoal;
    }

    *v6.i64 = floor(wednesdayGoal + 0.5);
    v18 = (wednesdayGoal - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v19), v7, v6);
    v16 = 2654435761u * *v6.i64;
    if (v18 >= 0.0)
    {
      if (v18 > 0.0)
      {
        v16 += v18;
      }
    }

    else
    {
      v16 -= fabs(v18);
    }
  }

  else
  {
    v16 = 0;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    thursdayGoal = self->_thursdayGoal;
    if (thursdayGoal < 0.0)
    {
      thursdayGoal = -thursdayGoal;
    }

    *v6.i64 = floor(thursdayGoal + 0.5);
    v22 = (thursdayGoal - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v23.f64[0] = NAN;
    v23.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v23), v7, v6);
    v20 = 2654435761u * *v6.i64;
    if (v22 >= 0.0)
    {
      if (v22 > 0.0)
      {
        v20 += v22;
      }
    }

    else
    {
      v20 -= fabs(v22);
    }
  }

  else
  {
    v20 = 0;
  }

  if (*&self->_has)
  {
    fridayGoal = self->_fridayGoal;
    if (fridayGoal < 0.0)
    {
      fridayGoal = -fridayGoal;
    }

    *v6.i64 = floor(fridayGoal + 0.5);
    v26 = (fridayGoal - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v27.f64[0] = NAN;
    v27.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v27), v7, v6);
    v24 = 2654435761u * *v6.i64;
    if (v26 >= 0.0)
    {
      if (v26 > 0.0)
      {
        v24 += v26;
      }
    }

    else
    {
      v24 -= fabs(v26);
    }
  }

  else
  {
    v24 = 0;
  }

  if ((*&self->_has & 8) != 0)
  {
    saturdayGoal = self->_saturdayGoal;
    if (saturdayGoal < 0.0)
    {
      saturdayGoal = -saturdayGoal;
    }

    *v6.i64 = floor(saturdayGoal + 0.5);
    v30 = (saturdayGoal - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v31.f64[0] = NAN;
    v31.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v31), v7, v6);
    v28 = 2654435761u * *v6.i64;
    if (v30 >= 0.0)
    {
      if (v30 > 0.0)
      {
        v28 += v30;
      }
    }

    else
    {
      v28 -= fabs(v30);
    }
  }

  else
  {
    v28 = 0;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    sundayGoal = self->_sundayGoal;
    if (sundayGoal < 0.0)
    {
      sundayGoal = -sundayGoal;
    }

    *v6.i64 = floor(sundayGoal + 0.5);
    v34 = (sundayGoal - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v35.f64[0] = NAN;
    v35.f64[1] = NAN;
    v32 = 2654435761u * *vbslq_s8(vnegq_f64(v35), v7, v6).i64;
    if (v34 >= 0.0)
    {
      if (v34 > 0.0)
      {
        v32 += v34;
      }
    }

    else
    {
      v32 -= fabs(v34);
    }
  }

  else
  {
    v32 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v8 ^ v12 ^ v16 ^ v20 ^ v24 ^ v28 ^ v32;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  sample = self->_sample;
  v6 = *(fromCopy + 9);
  v8 = fromCopy;
  if (sample)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HDCodableSample *)sample mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HDCodableActivityGoalSchedule *)self setSample:?];
  }

  fromCopy = v8;
LABEL_7:
  if ((*(fromCopy + 88) & 2) != 0)
  {
    self->_goalType = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 10))
  {
    [(HDCodableActivityGoalSchedule *)self setUnitString:?];
    fromCopy = v8;
  }

  v7 = *(fromCopy + 88);
  if ((v7 & 4) != 0)
  {
    self->_mondayGoal = *(fromCopy + 3);
    *&self->_has |= 4u;
    v7 = *(fromCopy + 88);
    if ((v7 & 0x40) == 0)
    {
LABEL_13:
      if ((v7 & 0x80) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_24;
    }
  }

  else if ((*(fromCopy + 88) & 0x40) == 0)
  {
    goto LABEL_13;
  }

  self->_tuesdayGoal = *(fromCopy + 7);
  *&self->_has |= 0x40u;
  v7 = *(fromCopy + 88);
  if ((v7 & 0x80) == 0)
  {
LABEL_14:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_25;
  }

LABEL_24:
  self->_wednesdayGoal = *(fromCopy + 8);
  *&self->_has |= 0x80u;
  v7 = *(fromCopy + 88);
  if ((v7 & 0x20) == 0)
  {
LABEL_15:
    if ((v7 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_thursdayGoal = *(fromCopy + 6);
  *&self->_has |= 0x20u;
  v7 = *(fromCopy + 88);
  if ((v7 & 1) == 0)
  {
LABEL_16:
    if ((v7 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_fridayGoal = *(fromCopy + 1);
  *&self->_has |= 1u;
  v7 = *(fromCopy + 88);
  if ((v7 & 8) == 0)
  {
LABEL_17:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_27:
  self->_saturdayGoal = *(fromCopy + 4);
  *&self->_has |= 8u;
  if ((*(fromCopy + 88) & 0x10) != 0)
  {
LABEL_18:
    self->_sundayGoal = *(fromCopy + 5);
    *&self->_has |= 0x10u;
  }

LABEL_19:

  MEMORY[0x2821F96F8]();
}

- (BOOL)applyToObject:(id)object
{
  v34 = *MEMORY[0x277D85DE8];
  v31 = 0;
  objectCopy = object;
  if (self)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sample = [(HDCodableActivityGoalSchedule *)self sample];
      v6 = [sample applyToObject:objectCopy];

      if (v6)
      {
        [objectCopy setGoalType:{-[HDCodableActivityGoalSchedule goalType](self, "goalType")}];
        unitString = [(HDCodableActivityGoalSchedule *)self unitString];
        v8 = [MEMORY[0x277CCDAB0] unitFromString:unitString];
        v9 = MEMORY[0x277CCD7E8];
        [(HDCodableActivityGoalSchedule *)self mondayGoal];
        v10 = [v9 quantityWithUnit:v8 doubleValue:?];
        [objectCopy setMondayGoal:v10];

        v11 = MEMORY[0x277CCD7E8];
        [(HDCodableActivityGoalSchedule *)self tuesdayGoal];
        v12 = [v11 quantityWithUnit:v8 doubleValue:?];
        [objectCopy setTuesdayGoal:v12];

        v13 = MEMORY[0x277CCD7E8];
        [(HDCodableActivityGoalSchedule *)self wednesdayGoal];
        v14 = [v13 quantityWithUnit:v8 doubleValue:?];
        [objectCopy setWednesdayGoal:v14];

        v15 = MEMORY[0x277CCD7E8];
        [(HDCodableActivityGoalSchedule *)self thursdayGoal];
        v16 = [v15 quantityWithUnit:v8 doubleValue:?];
        [objectCopy setThursdayGoal:v16];

        v17 = MEMORY[0x277CCD7E8];
        [(HDCodableActivityGoalSchedule *)self fridayGoal];
        v18 = [v17 quantityWithUnit:v8 doubleValue:?];
        [objectCopy setFridayGoal:v18];

        v19 = MEMORY[0x277CCD7E8];
        [(HDCodableActivityGoalSchedule *)self saturdayGoal];
        v20 = [v19 quantityWithUnit:v8 doubleValue:?];
        [objectCopy setSaturdayGoal:v20];

        v21 = MEMORY[0x277CCD7E8];
        [(HDCodableActivityGoalSchedule *)self sundayGoal];
        v22 = [v21 quantityWithUnit:v8 doubleValue:?];
        [objectCopy setSundayGoal:v22];

        v23 = 0;
        v24 = 1;
        goto LABEL_10;
      }

      [MEMORY[0x277CCA9B8] hk_assignError:&v31 code:3 format:@"Failed to decode superclass message"];
    }

    else
    {
      v25 = MEMORY[0x277CCA9B8];
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      [v25 hk_assignError:&v31 code:3 format:{@"Unexpected class %@", v27}];
    }
  }

  v23 = v31;
  _HKInitializeLogging();
  v28 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v33 = v23;
    _os_log_error_impl(&dword_228986000, v28, OS_LOG_TYPE_ERROR, "Failed to decode object of type HKActivityGoalSchedule with error %@", buf, 0xCu);
  }

  v24 = 0;
LABEL_10:

  v29 = *MEMORY[0x277D85DE8];
  return v24;
}

@end