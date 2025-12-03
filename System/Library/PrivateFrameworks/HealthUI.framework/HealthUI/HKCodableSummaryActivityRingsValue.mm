@interface HKCodableSummaryActivityRingsValue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasActivityResumeDate:(BOOL)date;
- (void)setHasCreationDate:(BOOL)date;
- (void)setHasDateData:(BOOL)data;
- (void)setHasEndDate:(BOOL)date;
- (void)setHasHasEverHadAWatch:(BOOL)watch;
- (void)setHasPaused:(BOOL)paused;
- (void)setHasStartDate:(BOOL)date;
- (void)writeTo:(id)to;
@end

@implementation HKCodableSummaryActivityRingsValue

- (void)setHasDateData:(BOOL)data
{
  if (data)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasStartDate:(BOOL)date
{
  if (date)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasEndDate:(BOOL)date
{
  if (date)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasCreationDate:(BOOL)date
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

- (void)setHasHasEverHadAWatch:(BOOL)watch
{
  if (watch)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasPaused:(BOOL)paused
{
  if (paused)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasActivityResumeDate:(BOOL)date
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
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableSummaryActivityRingsValue;
  v4 = [(HKCodableSummaryActivityRingsValue *)&v8 description];
  dictionaryRepresentation = [(HKCodableSummaryActivityRingsValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 8) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_dateData];
    [dictionary setObject:v5 forKey:@"dateData"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_activityMoveMode];
    [dictionary setObject:v6 forKey:@"activityMoveMode"];
  }

  activeEnergyBurned = self->_activeEnergyBurned;
  if (activeEnergyBurned)
  {
    dictionaryRepresentation = [(HKCodableQuantity *)activeEnergyBurned dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"activeEnergyBurned"];
  }

  activeEnergyBurnedGoal = self->_activeEnergyBurnedGoal;
  if (activeEnergyBurnedGoal)
  {
    dictionaryRepresentation2 = [(HKCodableQuantity *)activeEnergyBurnedGoal dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"activeEnergyBurnedGoal"];
  }

  appleMoveTime = self->_appleMoveTime;
  if (appleMoveTime)
  {
    dictionaryRepresentation3 = [(HKCodableQuantity *)appleMoveTime dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"appleMoveTime"];
  }

  appleMoveTimeGoal = self->_appleMoveTimeGoal;
  if (appleMoveTimeGoal)
  {
    dictionaryRepresentation4 = [(HKCodableQuantity *)appleMoveTimeGoal dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"appleMoveTimeGoal"];
  }

  appleExerciseTime = self->_appleExerciseTime;
  if (appleExerciseTime)
  {
    dictionaryRepresentation5 = [(HKCodableQuantity *)appleExerciseTime dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"appleExerciseTime"];
  }

  appleExerciseTimeGoal = self->_appleExerciseTimeGoal;
  if (appleExerciseTimeGoal)
  {
    dictionaryRepresentation6 = [(HKCodableQuantity *)appleExerciseTimeGoal dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation6 forKey:@"appleExerciseTimeGoal"];
  }

  appleStandHours = self->_appleStandHours;
  if (appleStandHours)
  {
    dictionaryRepresentation7 = [(HKCodableQuantity *)appleStandHours dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation7 forKey:@"appleStandHours"];
  }

  appleStandHoursGoal = self->_appleStandHoursGoal;
  if (appleStandHoursGoal)
  {
    dictionaryRepresentation8 = [(HKCodableQuantity *)appleStandHoursGoal dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation8 forKey:@"appleStandHoursGoal"];
  }

  v23 = self->_has;
  if ((v23 & 0x20) != 0)
  {
    v26 = [MEMORY[0x1E696AD98] numberWithDouble:self->_startDate];
    [dictionary setObject:v26 forKey:@"startDate"];

    v23 = self->_has;
    if ((v23 & 0x10) == 0)
    {
LABEL_23:
      if ((v23 & 4) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_33;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_23;
  }

  v27 = [MEMORY[0x1E696AD98] numberWithDouble:self->_endDate];
  [dictionary setObject:v27 forKey:@"endDate"];

  v23 = self->_has;
  if ((v23 & 4) == 0)
  {
LABEL_24:
    if ((v23 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

LABEL_33:
  v28 = [MEMORY[0x1E696AD98] numberWithDouble:self->_creationDate];
  [dictionary setObject:v28 forKey:@"creationDate"];

  v23 = self->_has;
  if ((v23 & 0x40) == 0)
  {
LABEL_25:
    if ((v23 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_35;
  }

LABEL_34:
  v29 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasEverHadAWatch];
  [dictionary setObject:v29 forKey:@"hasEverHadAWatch"];

  v23 = self->_has;
  if ((v23 & 0x80) == 0)
  {
LABEL_26:
    if ((v23 & 2) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_35:
  v30 = [MEMORY[0x1E696AD98] numberWithBool:self->_paused];
  [dictionary setObject:v30 forKey:@"paused"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_27:
    v24 = [MEMORY[0x1E696AD98] numberWithDouble:self->_activityResumeDate];
    [dictionary setObject:v24 forKey:@"activityResumeDate"];
  }

LABEL_28:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    PBDataWriterWriteDoubleField();
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteInt64Field();
  }

  if (self->_activeEnergyBurned)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_activeEnergyBurnedGoal)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_appleMoveTime)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_appleMoveTimeGoal)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_appleExerciseTime)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_appleExerciseTimeGoal)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_appleStandHours)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_appleStandHoursGoal)
  {
    PBDataWriterWriteSubmessage();
  }

  v5 = self->_has;
  if ((v5 & 0x20) != 0)
  {
    PBDataWriterWriteDoubleField();
    v5 = self->_has;
    if ((v5 & 0x10) == 0)
    {
LABEL_23:
      if ((v5 & 4) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_33;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_23;
  }

  PBDataWriterWriteDoubleField();
  v5 = self->_has;
  if ((v5 & 4) == 0)
  {
LABEL_24:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

LABEL_33:
  PBDataWriterWriteDoubleField();
  v5 = self->_has;
  if ((v5 & 0x40) == 0)
  {
LABEL_25:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_35;
  }

LABEL_34:
  PBDataWriterWriteBOOLField();
  v5 = self->_has;
  if ((v5 & 0x80) == 0)
  {
LABEL_26:
    if ((v5 & 2) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_35:
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 2) != 0)
  {
LABEL_27:
    PBDataWriterWriteDoubleField();
  }

LABEL_28:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 8) != 0)
  {
    toCopy[4] = *&self->_dateData;
    *(toCopy + 124) |= 8u;
    has = self->_has;
  }

  if (has)
  {
    toCopy[1] = self->_activityMoveMode;
    *(toCopy + 124) |= 1u;
  }

  v7 = toCopy;
  if (self->_activeEnergyBurned)
  {
    [toCopy setActiveEnergyBurned:?];
    toCopy = v7;
  }

  if (self->_activeEnergyBurnedGoal)
  {
    [v7 setActiveEnergyBurnedGoal:?];
    toCopy = v7;
  }

  if (self->_appleMoveTime)
  {
    [v7 setAppleMoveTime:?];
    toCopy = v7;
  }

  if (self->_appleMoveTimeGoal)
  {
    [v7 setAppleMoveTimeGoal:?];
    toCopy = v7;
  }

  if (self->_appleExerciseTime)
  {
    [v7 setAppleExerciseTime:?];
    toCopy = v7;
  }

  if (self->_appleExerciseTimeGoal)
  {
    [v7 setAppleExerciseTimeGoal:?];
    toCopy = v7;
  }

  if (self->_appleStandHours)
  {
    [v7 setAppleStandHours:?];
    toCopy = v7;
  }

  if (self->_appleStandHoursGoal)
  {
    [v7 setAppleStandHoursGoal:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x20) != 0)
  {
    toCopy[6] = *&self->_startDate;
    *(toCopy + 124) |= 0x20u;
    v6 = self->_has;
    if ((v6 & 0x10) == 0)
    {
LABEL_23:
      if ((v6 & 4) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_33;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_23;
  }

  toCopy[5] = *&self->_endDate;
  *(toCopy + 124) |= 0x10u;
  v6 = self->_has;
  if ((v6 & 4) == 0)
  {
LABEL_24:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

LABEL_33:
  toCopy[3] = *&self->_creationDate;
  *(toCopy + 124) |= 4u;
  v6 = self->_has;
  if ((v6 & 0x40) == 0)
  {
LABEL_25:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(toCopy + 120) = self->_hasEverHadAWatch;
  *(toCopy + 124) |= 0x40u;
  v6 = self->_has;
  if ((v6 & 0x80) == 0)
  {
LABEL_26:
    if ((v6 & 2) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_35:
  *(toCopy + 121) = self->_paused;
  *(toCopy + 124) |= 0x80u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_27:
    toCopy[2] = *&self->_activityResumeDate;
    *(toCopy + 124) |= 2u;
  }

LABEL_28:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 32) = self->_dateData;
    *(v5 + 124) |= 8u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_activityMoveMode;
    *(v5 + 124) |= 1u;
  }

  v8 = [(HKCodableQuantity *)self->_activeEnergyBurned copyWithZone:zone];
  v9 = *(v6 + 56);
  *(v6 + 56) = v8;

  v10 = [(HKCodableQuantity *)self->_activeEnergyBurnedGoal copyWithZone:zone];
  v11 = *(v6 + 64);
  *(v6 + 64) = v10;

  v12 = [(HKCodableQuantity *)self->_appleMoveTime copyWithZone:zone];
  v13 = *(v6 + 88);
  *(v6 + 88) = v12;

  v14 = [(HKCodableQuantity *)self->_appleMoveTimeGoal copyWithZone:zone];
  v15 = *(v6 + 96);
  *(v6 + 96) = v14;

  v16 = [(HKCodableQuantity *)self->_appleExerciseTime copyWithZone:zone];
  v17 = *(v6 + 72);
  *(v6 + 72) = v16;

  v18 = [(HKCodableQuantity *)self->_appleExerciseTimeGoal copyWithZone:zone];
  v19 = *(v6 + 80);
  *(v6 + 80) = v18;

  v20 = [(HKCodableQuantity *)self->_appleStandHours copyWithZone:zone];
  v21 = *(v6 + 104);
  *(v6 + 104) = v20;

  v22 = [(HKCodableQuantity *)self->_appleStandHoursGoal copyWithZone:zone];
  v23 = *(v6 + 112);
  *(v6 + 112) = v22;

  v24 = self->_has;
  if ((v24 & 0x20) != 0)
  {
    *(v6 + 48) = self->_startDate;
    *(v6 + 124) |= 0x20u;
    v24 = self->_has;
    if ((v24 & 0x10) == 0)
    {
LABEL_7:
      if ((v24 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_7;
  }

  *(v6 + 40) = self->_endDate;
  *(v6 + 124) |= 0x10u;
  v24 = self->_has;
  if ((v24 & 4) == 0)
  {
LABEL_8:
    if ((v24 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(v6 + 24) = self->_creationDate;
  *(v6 + 124) |= 4u;
  v24 = self->_has;
  if ((v24 & 0x40) == 0)
  {
LABEL_9:
    if ((v24 & 0x80) == 0)
    {
      goto LABEL_10;
    }

LABEL_17:
    *(v6 + 121) = self->_paused;
    *(v6 + 124) |= 0x80u;
    if ((*&self->_has & 2) == 0)
    {
      return v6;
    }

    goto LABEL_11;
  }

LABEL_16:
  *(v6 + 120) = self->_hasEverHadAWatch;
  *(v6 + 124) |= 0x40u;
  v24 = self->_has;
  if (v24 < 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  if ((v24 & 2) != 0)
  {
LABEL_11:
    *(v6 + 16) = self->_activityResumeDate;
    *(v6 + 124) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_63;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 124) & 8) == 0 || self->_dateData != *(equalCopy + 4))
    {
      goto LABEL_63;
    }
  }

  else if ((*(equalCopy + 124) & 8) != 0)
  {
    goto LABEL_63;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 124) & 1) == 0 || self->_activityMoveMode != *(equalCopy + 1))
    {
      goto LABEL_63;
    }
  }

  else if (*(equalCopy + 124))
  {
    goto LABEL_63;
  }

  activeEnergyBurned = self->_activeEnergyBurned;
  if (activeEnergyBurned | *(equalCopy + 7) && ![(HKCodableQuantity *)activeEnergyBurned isEqual:?])
  {
    goto LABEL_63;
  }

  activeEnergyBurnedGoal = self->_activeEnergyBurnedGoal;
  if (activeEnergyBurnedGoal | *(equalCopy + 8))
  {
    if (![(HKCodableQuantity *)activeEnergyBurnedGoal isEqual:?])
    {
      goto LABEL_63;
    }
  }

  appleMoveTime = self->_appleMoveTime;
  if (appleMoveTime | *(equalCopy + 11))
  {
    if (![(HKCodableQuantity *)appleMoveTime isEqual:?])
    {
      goto LABEL_63;
    }
  }

  appleMoveTimeGoal = self->_appleMoveTimeGoal;
  if (appleMoveTimeGoal | *(equalCopy + 12))
  {
    if (![(HKCodableQuantity *)appleMoveTimeGoal isEqual:?])
    {
      goto LABEL_63;
    }
  }

  appleExerciseTime = self->_appleExerciseTime;
  if (appleExerciseTime | *(equalCopy + 9))
  {
    if (![(HKCodableQuantity *)appleExerciseTime isEqual:?])
    {
      goto LABEL_63;
    }
  }

  appleExerciseTimeGoal = self->_appleExerciseTimeGoal;
  if (appleExerciseTimeGoal | *(equalCopy + 10))
  {
    if (![(HKCodableQuantity *)appleExerciseTimeGoal isEqual:?])
    {
      goto LABEL_63;
    }
  }

  appleStandHours = self->_appleStandHours;
  if (appleStandHours | *(equalCopy + 13))
  {
    if (![(HKCodableQuantity *)appleStandHours isEqual:?])
    {
      goto LABEL_63;
    }
  }

  appleStandHoursGoal = self->_appleStandHoursGoal;
  if (appleStandHoursGoal | *(equalCopy + 14))
  {
    if (![(HKCodableQuantity *)appleStandHoursGoal isEqual:?])
    {
      goto LABEL_63;
    }
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 124) & 0x20) == 0 || self->_startDate != *(equalCopy + 6))
    {
      goto LABEL_63;
    }
  }

  else if ((*(equalCopy + 124) & 0x20) != 0)
  {
    goto LABEL_63;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 124) & 0x10) == 0 || self->_endDate != *(equalCopy + 5))
    {
      goto LABEL_63;
    }
  }

  else if ((*(equalCopy + 124) & 0x10) != 0)
  {
    goto LABEL_63;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 124) & 4) == 0 || self->_creationDate != *(equalCopy + 3))
    {
      goto LABEL_63;
    }
  }

  else if ((*(equalCopy + 124) & 4) != 0)
  {
    goto LABEL_63;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(equalCopy + 124) & 0x40) == 0)
    {
      goto LABEL_63;
    }

    if (self->_hasEverHadAWatch)
    {
      if ((*(equalCopy + 120) & 1) == 0)
      {
        goto LABEL_63;
      }
    }

    else if (*(equalCopy + 120))
    {
      goto LABEL_63;
    }
  }

  else if ((*(equalCopy + 124) & 0x40) != 0)
  {
    goto LABEL_63;
  }

  if ((*&self->_has & 0x80) == 0)
  {
    if ((*(equalCopy + 124) & 0x80) == 0)
    {
      goto LABEL_47;
    }

LABEL_63:
    v13 = 0;
    goto LABEL_64;
  }

  if ((*(equalCopy + 124) & 0x80) == 0)
  {
    goto LABEL_63;
  }

  if (self->_paused)
  {
    if ((*(equalCopy + 121) & 1) == 0)
    {
      goto LABEL_63;
    }
  }

  else if (*(equalCopy + 121))
  {
    goto LABEL_63;
  }

LABEL_47:
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 124) & 2) == 0 || self->_activityResumeDate != *(equalCopy + 2))
    {
      goto LABEL_63;
    }

    v13 = 1;
  }

  else
  {
    v13 = (*(equalCopy + 124) & 2) == 0;
  }

LABEL_64:

  return v13;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    dateData = self->_dateData;
    if (dateData < 0.0)
    {
      dateData = -dateData;
    }

    *v2.i64 = floor(dateData + 0.5);
    v7 = (dateData - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  if (*&self->_has)
  {
    v38 = 2654435761 * self->_activityMoveMode;
  }

  else
  {
    v38 = 0;
  }

  v37 = [(HKCodableQuantity *)self->_activeEnergyBurned hash];
  v9 = [(HKCodableQuantity *)self->_activeEnergyBurnedGoal hash];
  v10 = [(HKCodableQuantity *)self->_appleMoveTime hash];
  v11 = [(HKCodableQuantity *)self->_appleMoveTimeGoal hash];
  v12 = [(HKCodableQuantity *)self->_appleExerciseTime hash];
  v13 = [(HKCodableQuantity *)self->_appleExerciseTimeGoal hash];
  v14 = [(HKCodableQuantity *)self->_appleStandHours hash];
  v15 = [(HKCodableQuantity *)self->_appleStandHoursGoal hash];
  if ((*&self->_has & 0x20) != 0)
  {
    startDate = self->_startDate;
    if (startDate < 0.0)
    {
      startDate = -startDate;
    }

    *v16.i64 = floor(startDate + 0.5);
    v20 = (startDate - *v16.i64) * 1.84467441e19;
    *v17.i64 = *v16.i64 - trunc(*v16.i64 * 5.42101086e-20) * 1.84467441e19;
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v16 = vbslq_s8(vnegq_f64(v21), v17, v16);
    v18 = 2654435761u * *v16.i64;
    if (v20 >= 0.0)
    {
      if (v20 > 0.0)
      {
        v18 += v20;
      }
    }

    else
    {
      v18 -= fabs(v20);
    }
  }

  else
  {
    v18 = 0;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    endDate = self->_endDate;
    if (endDate < 0.0)
    {
      endDate = -endDate;
    }

    *v16.i64 = floor(endDate + 0.5);
    v24 = (endDate - *v16.i64) * 1.84467441e19;
    *v17.i64 = *v16.i64 - trunc(*v16.i64 * 5.42101086e-20) * 1.84467441e19;
    v25.f64[0] = NAN;
    v25.f64[1] = NAN;
    v16 = vbslq_s8(vnegq_f64(v25), v17, v16);
    v22 = 2654435761u * *v16.i64;
    if (v24 >= 0.0)
    {
      if (v24 > 0.0)
      {
        v22 += v24;
      }
    }

    else
    {
      v22 -= fabs(v24);
    }
  }

  else
  {
    v22 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    creationDate = self->_creationDate;
    if (creationDate < 0.0)
    {
      creationDate = -creationDate;
    }

    *v16.i64 = floor(creationDate + 0.5);
    v28 = (creationDate - *v16.i64) * 1.84467441e19;
    *v17.i64 = *v16.i64 - trunc(*v16.i64 * 5.42101086e-20) * 1.84467441e19;
    v29.f64[0] = NAN;
    v29.f64[1] = NAN;
    v16 = vbslq_s8(vnegq_f64(v29), v17, v16);
    v26 = 2654435761u * *v16.i64;
    if (v28 >= 0.0)
    {
      if (v28 > 0.0)
      {
        v26 += v28;
      }
    }

    else
    {
      v26 -= fabs(v28);
    }
  }

  else
  {
    v26 = 0;
  }

  if ((*&self->_has & 0x40) == 0)
  {
    v30 = 0;
    if ((*&self->_has & 0x80) != 0)
    {
      goto LABEL_38;
    }

LABEL_44:
    v31 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_39;
    }

LABEL_45:
    v35 = 0;
    return v38 ^ v5 ^ v37 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v18 ^ v22 ^ v26 ^ v30 ^ v31 ^ v35;
  }

  v30 = 2654435761 * self->_hasEverHadAWatch;
  if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_44;
  }

LABEL_38:
  v31 = 2654435761 * self->_paused;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_45;
  }

LABEL_39:
  activityResumeDate = self->_activityResumeDate;
  if (activityResumeDate < 0.0)
  {
    activityResumeDate = -activityResumeDate;
  }

  *v16.i64 = floor(activityResumeDate + 0.5);
  v33 = (activityResumeDate - *v16.i64) * 1.84467441e19;
  *v17.i64 = *v16.i64 - trunc(*v16.i64 * 5.42101086e-20) * 1.84467441e19;
  v34.f64[0] = NAN;
  v34.f64[1] = NAN;
  v35 = 2654435761u * *vbslq_s8(vnegq_f64(v34), v17, v16).i64;
  if (v33 >= 0.0)
  {
    if (v33 > 0.0)
    {
      v35 += v33;
    }
  }

  else
  {
    v35 -= fabs(v33);
  }

  return v38 ^ v5 ^ v37 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v18 ^ v22 ^ v26 ^ v30 ^ v31 ^ v35;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 124);
  if ((v6 & 8) != 0)
  {
    self->_dateData = *(fromCopy + 4);
    *&self->_has |= 8u;
    v6 = *(fromCopy + 124);
  }

  if (v6)
  {
    self->_activityMoveMode = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  activeEnergyBurned = self->_activeEnergyBurned;
  v8 = *(v5 + 7);
  v24 = v5;
  if (activeEnergyBurned)
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    [(HKCodableQuantity *)activeEnergyBurned mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_11;
    }

    [(HKCodableSummaryActivityRingsValue *)self setActiveEnergyBurned:?];
  }

  v5 = v24;
LABEL_11:
  activeEnergyBurnedGoal = self->_activeEnergyBurnedGoal;
  v10 = *(v5 + 8);
  if (activeEnergyBurnedGoal)
  {
    if (!v10)
    {
      goto LABEL_17;
    }

    [(HKCodableQuantity *)activeEnergyBurnedGoal mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_17;
    }

    [(HKCodableSummaryActivityRingsValue *)self setActiveEnergyBurnedGoal:?];
  }

  v5 = v24;
LABEL_17:
  appleMoveTime = self->_appleMoveTime;
  v12 = *(v5 + 11);
  if (appleMoveTime)
  {
    if (!v12)
    {
      goto LABEL_23;
    }

    [(HKCodableQuantity *)appleMoveTime mergeFrom:?];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_23;
    }

    [(HKCodableSummaryActivityRingsValue *)self setAppleMoveTime:?];
  }

  v5 = v24;
LABEL_23:
  appleMoveTimeGoal = self->_appleMoveTimeGoal;
  v14 = *(v5 + 12);
  if (appleMoveTimeGoal)
  {
    if (!v14)
    {
      goto LABEL_29;
    }

    [(HKCodableQuantity *)appleMoveTimeGoal mergeFrom:?];
  }

  else
  {
    if (!v14)
    {
      goto LABEL_29;
    }

    [(HKCodableSummaryActivityRingsValue *)self setAppleMoveTimeGoal:?];
  }

  v5 = v24;
LABEL_29:
  appleExerciseTime = self->_appleExerciseTime;
  v16 = *(v5 + 9);
  if (appleExerciseTime)
  {
    if (!v16)
    {
      goto LABEL_35;
    }

    [(HKCodableQuantity *)appleExerciseTime mergeFrom:?];
  }

  else
  {
    if (!v16)
    {
      goto LABEL_35;
    }

    [(HKCodableSummaryActivityRingsValue *)self setAppleExerciseTime:?];
  }

  v5 = v24;
LABEL_35:
  appleExerciseTimeGoal = self->_appleExerciseTimeGoal;
  v18 = *(v5 + 10);
  if (appleExerciseTimeGoal)
  {
    if (!v18)
    {
      goto LABEL_41;
    }

    [(HKCodableQuantity *)appleExerciseTimeGoal mergeFrom:?];
  }

  else
  {
    if (!v18)
    {
      goto LABEL_41;
    }

    [(HKCodableSummaryActivityRingsValue *)self setAppleExerciseTimeGoal:?];
  }

  v5 = v24;
LABEL_41:
  appleStandHours = self->_appleStandHours;
  v20 = *(v5 + 13);
  if (appleStandHours)
  {
    if (!v20)
    {
      goto LABEL_47;
    }

    [(HKCodableQuantity *)appleStandHours mergeFrom:?];
  }

  else
  {
    if (!v20)
    {
      goto LABEL_47;
    }

    [(HKCodableSummaryActivityRingsValue *)self setAppleStandHours:?];
  }

  v5 = v24;
LABEL_47:
  appleStandHoursGoal = self->_appleStandHoursGoal;
  v22 = *(v5 + 14);
  if (appleStandHoursGoal)
  {
    if (!v22)
    {
      goto LABEL_53;
    }

    appleStandHoursGoal = [(HKCodableQuantity *)appleStandHoursGoal mergeFrom:?];
  }

  else
  {
    if (!v22)
    {
      goto LABEL_53;
    }

    appleStandHoursGoal = [(HKCodableSummaryActivityRingsValue *)self setAppleStandHoursGoal:?];
  }

  v5 = v24;
LABEL_53:
  v23 = *(v5 + 124);
  if ((v23 & 0x20) != 0)
  {
    self->_startDate = *(v5 + 6);
    *&self->_has |= 0x20u;
    v23 = *(v5 + 124);
    if ((v23 & 0x10) == 0)
    {
LABEL_55:
      if ((v23 & 4) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_65;
    }
  }

  else if ((*(v5 + 124) & 0x10) == 0)
  {
    goto LABEL_55;
  }

  self->_endDate = *(v5 + 5);
  *&self->_has |= 0x10u;
  v23 = *(v5 + 124);
  if ((v23 & 4) == 0)
  {
LABEL_56:
    if ((v23 & 0x40) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_66;
  }

LABEL_65:
  self->_creationDate = *(v5 + 3);
  *&self->_has |= 4u;
  v23 = *(v5 + 124);
  if ((v23 & 0x40) == 0)
  {
LABEL_57:
    if ((v23 & 0x80) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_67;
  }

LABEL_66:
  self->_hasEverHadAWatch = *(v5 + 120);
  *&self->_has |= 0x40u;
  v23 = *(v5 + 124);
  if ((v23 & 0x80) == 0)
  {
LABEL_58:
    if ((v23 & 2) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_67:
  self->_paused = *(v5 + 121);
  *&self->_has |= 0x80u;
  if ((*(v5 + 124) & 2) != 0)
  {
LABEL_59:
    self->_activityResumeDate = *(v5 + 2);
    *&self->_has |= 2u;
  }

LABEL_60:

  MEMORY[0x1EEE66BB8](appleStandHoursGoal, v5);
}

@end