@interface HKCodableActivitySummaryEntry
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasPaused:(BOOL)paused;
- (void)writeTo:(id)to;
@end

@implementation HKCodableActivitySummaryEntry

- (void)setHasPaused:(BOOL)paused
{
  if (paused)
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
  v8.super_class = HKCodableActivitySummaryEntry;
  v4 = [(HKCodableActivitySummaryEntry *)&v8 description];
  dictionaryRepresentation = [(HKCodableActivitySummaryEntry *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  gregorianDateComponents = self->_gregorianDateComponents;
  if (gregorianDateComponents)
  {
    dictionaryRepresentation = [(HKCodableDateComponents *)gregorianDateComponents dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"gregorianDateComponents"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_activityMoveMode];
    [dictionary setObject:v6 forKey:@"activityMoveMode"];
  }

  activeEnergyBurned = self->_activeEnergyBurned;
  if (activeEnergyBurned)
  {
    dictionaryRepresentation2 = [(HKCodableQuantity *)activeEnergyBurned dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"activeEnergyBurned"];
  }

  appleMoveTime = self->_appleMoveTime;
  if (appleMoveTime)
  {
    dictionaryRepresentation3 = [(HKCodableQuantity *)appleMoveTime dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"appleMoveTime"];
  }

  appleExerciseTime = self->_appleExerciseTime;
  if (appleExerciseTime)
  {
    dictionaryRepresentation4 = [(HKCodableQuantity *)appleExerciseTime dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"appleExerciseTime"];
  }

  appleStandHours = self->_appleStandHours;
  if (appleStandHours)
  {
    dictionaryRepresentation5 = [(HKCodableQuantity *)appleStandHours dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation5 forKey:@"appleStandHours"];
  }

  activeEnergyBurnedGoal = self->_activeEnergyBurnedGoal;
  if (activeEnergyBurnedGoal)
  {
    dictionaryRepresentation6 = [(HKCodableQuantity *)activeEnergyBurnedGoal dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation6 forKey:@"activeEnergyBurnedGoal"];
  }

  appleMoveTimeGoal = self->_appleMoveTimeGoal;
  if (appleMoveTimeGoal)
  {
    dictionaryRepresentation7 = [(HKCodableQuantity *)appleMoveTimeGoal dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation7 forKey:@"appleMoveTimeGoal"];
  }

  appleExerciseTimeGoal = self->_appleExerciseTimeGoal;
  if (appleExerciseTimeGoal)
  {
    dictionaryRepresentation8 = [(HKCodableQuantity *)appleExerciseTimeGoal dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation8 forKey:@"appleExerciseTimeGoal"];
  }

  appleStandHoursGoal = self->_appleStandHoursGoal;
  if (appleStandHoursGoal)
  {
    dictionaryRepresentation9 = [(HKCodableQuantity *)appleStandHoursGoal dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation9 forKey:@"appleStandHoursGoal"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithBool:self->_paused];
    [dictionary setObject:v23 forKey:@"paused"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_gregorianDateComponents)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v5;
  }

  if (self->_activeEnergyBurned)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_appleMoveTime)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_appleExerciseTime)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_appleStandHours)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_activeEnergyBurnedGoal)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_appleMoveTimeGoal)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_appleExerciseTimeGoal)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_appleStandHoursGoal)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_gregorianDateComponents)
  {
    [toCopy setGregorianDateComponents:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_activityMoveMode;
    *(toCopy + 92) |= 1u;
  }

  if (self->_activeEnergyBurned)
  {
    [v5 setActiveEnergyBurned:?];
    toCopy = v5;
  }

  if (self->_appleMoveTime)
  {
    [v5 setAppleMoveTime:?];
    toCopy = v5;
  }

  if (self->_appleExerciseTime)
  {
    [v5 setAppleExerciseTime:?];
    toCopy = v5;
  }

  if (self->_appleStandHours)
  {
    [v5 setAppleStandHours:?];
    toCopy = v5;
  }

  if (self->_activeEnergyBurnedGoal)
  {
    [v5 setActiveEnergyBurnedGoal:?];
    toCopy = v5;
  }

  if (self->_appleMoveTimeGoal)
  {
    [v5 setAppleMoveTimeGoal:?];
    toCopy = v5;
  }

  if (self->_appleExerciseTimeGoal)
  {
    [v5 setAppleExerciseTimeGoal:?];
    toCopy = v5;
  }

  if (self->_appleStandHoursGoal)
  {
    [v5 setAppleStandHoursGoal:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 88) = self->_paused;
    *(toCopy + 92) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HKCodableDateComponents *)self->_gregorianDateComponents copyWithZone:zone];
  v7 = *(v5 + 80);
  *(v5 + 80) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_activityMoveMode;
    *(v5 + 92) |= 1u;
  }

  v8 = [(HKCodableQuantity *)self->_activeEnergyBurned copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(HKCodableQuantity *)self->_appleMoveTime copyWithZone:zone];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  v12 = [(HKCodableQuantity *)self->_appleExerciseTime copyWithZone:zone];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  v14 = [(HKCodableQuantity *)self->_appleStandHours copyWithZone:zone];
  v15 = *(v5 + 64);
  *(v5 + 64) = v14;

  v16 = [(HKCodableQuantity *)self->_activeEnergyBurnedGoal copyWithZone:zone];
  v17 = *(v5 + 24);
  *(v5 + 24) = v16;

  v18 = [(HKCodableQuantity *)self->_appleMoveTimeGoal copyWithZone:zone];
  v19 = *(v5 + 56);
  *(v5 + 56) = v18;

  v20 = [(HKCodableQuantity *)self->_appleExerciseTimeGoal copyWithZone:zone];
  v21 = *(v5 + 40);
  *(v5 + 40) = v20;

  v22 = [(HKCodableQuantity *)self->_appleStandHoursGoal copyWithZone:zone];
  v23 = *(v5 + 72);
  *(v5 + 72) = v22;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 88) = self->_paused;
    *(v5 + 92) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  gregorianDateComponents = self->_gregorianDateComponents;
  if (gregorianDateComponents | *(equalCopy + 10))
  {
    if (![(HKCodableDateComponents *)gregorianDateComponents isEqual:?])
    {
      goto LABEL_27;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 92) & 1) == 0 || self->_activityMoveMode != *(equalCopy + 1))
    {
      goto LABEL_27;
    }
  }

  else if (*(equalCopy + 92))
  {
    goto LABEL_27;
  }

  activeEnergyBurned = self->_activeEnergyBurned;
  if (activeEnergyBurned | *(equalCopy + 2) && ![(HKCodableQuantity *)activeEnergyBurned isEqual:?])
  {
    goto LABEL_27;
  }

  appleMoveTime = self->_appleMoveTime;
  if (appleMoveTime | *(equalCopy + 6))
  {
    if (![(HKCodableQuantity *)appleMoveTime isEqual:?])
    {
      goto LABEL_27;
    }
  }

  appleExerciseTime = self->_appleExerciseTime;
  if (appleExerciseTime | *(equalCopy + 4))
  {
    if (![(HKCodableQuantity *)appleExerciseTime isEqual:?])
    {
      goto LABEL_27;
    }
  }

  appleStandHours = self->_appleStandHours;
  if (appleStandHours | *(equalCopy + 8))
  {
    if (![(HKCodableQuantity *)appleStandHours isEqual:?])
    {
      goto LABEL_27;
    }
  }

  activeEnergyBurnedGoal = self->_activeEnergyBurnedGoal;
  if (activeEnergyBurnedGoal | *(equalCopy + 3))
  {
    if (![(HKCodableQuantity *)activeEnergyBurnedGoal isEqual:?])
    {
      goto LABEL_27;
    }
  }

  appleMoveTimeGoal = self->_appleMoveTimeGoal;
  if (appleMoveTimeGoal | *(equalCopy + 7))
  {
    if (![(HKCodableQuantity *)appleMoveTimeGoal isEqual:?])
    {
      goto LABEL_27;
    }
  }

  appleExerciseTimeGoal = self->_appleExerciseTimeGoal;
  if (appleExerciseTimeGoal | *(equalCopy + 5))
  {
    if (![(HKCodableQuantity *)appleExerciseTimeGoal isEqual:?])
    {
      goto LABEL_27;
    }
  }

  appleStandHoursGoal = self->_appleStandHoursGoal;
  if (appleStandHoursGoal | *(equalCopy + 9))
  {
    if (![(HKCodableQuantity *)appleStandHoursGoal isEqual:?])
    {
      goto LABEL_27;
    }
  }

  v14 = (*(equalCopy + 92) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 92) & 2) == 0)
    {
LABEL_27:
      v14 = 0;
      goto LABEL_28;
    }

    if (self->_paused)
    {
      if ((*(equalCopy + 88) & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (*(equalCopy + 88))
    {
      goto LABEL_27;
    }

    v14 = 1;
  }

LABEL_28:

  return v14;
}

- (unint64_t)hash
{
  v14 = [(HKCodableDateComponents *)self->_gregorianDateComponents hash];
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_activityMoveMode;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(HKCodableQuantity *)self->_activeEnergyBurned hash];
  v5 = [(HKCodableQuantity *)self->_appleMoveTime hash];
  v6 = [(HKCodableQuantity *)self->_appleExerciseTime hash];
  v7 = [(HKCodableQuantity *)self->_appleStandHours hash];
  v8 = [(HKCodableQuantity *)self->_activeEnergyBurnedGoal hash];
  v9 = [(HKCodableQuantity *)self->_appleMoveTimeGoal hash];
  v10 = [(HKCodableQuantity *)self->_appleExerciseTimeGoal hash];
  v11 = [(HKCodableQuantity *)self->_appleStandHoursGoal hash];
  if ((*&self->_has & 2) != 0)
  {
    v12 = 2654435761 * self->_paused;
  }

  else
  {
    v12 = 0;
  }

  return v3 ^ v14 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  gregorianDateComponents = self->_gregorianDateComponents;
  v6 = *(fromCopy + 10);
  v23 = fromCopy;
  if (gregorianDateComponents)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HKCodableDateComponents *)gregorianDateComponents mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(HKCodableActivitySummaryEntry *)self setGregorianDateComponents:?];
  }

  fromCopy = v23;
LABEL_7:
  if (*(fromCopy + 92))
  {
    self->_activityMoveMode = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  activeEnergyBurned = self->_activeEnergyBurned;
  v8 = *(fromCopy + 2);
  if (activeEnergyBurned)
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    [(HKCodableQuantity *)activeEnergyBurned mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    [(HKCodableActivitySummaryEntry *)self setActiveEnergyBurned:?];
  }

  fromCopy = v23;
LABEL_15:
  appleMoveTime = self->_appleMoveTime;
  v10 = *(fromCopy + 6);
  if (appleMoveTime)
  {
    if (!v10)
    {
      goto LABEL_21;
    }

    [(HKCodableQuantity *)appleMoveTime mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_21;
    }

    [(HKCodableActivitySummaryEntry *)self setAppleMoveTime:?];
  }

  fromCopy = v23;
LABEL_21:
  appleExerciseTime = self->_appleExerciseTime;
  v12 = *(fromCopy + 4);
  if (appleExerciseTime)
  {
    if (!v12)
    {
      goto LABEL_27;
    }

    [(HKCodableQuantity *)appleExerciseTime mergeFrom:?];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_27;
    }

    [(HKCodableActivitySummaryEntry *)self setAppleExerciseTime:?];
  }

  fromCopy = v23;
LABEL_27:
  appleStandHours = self->_appleStandHours;
  v14 = *(fromCopy + 8);
  if (appleStandHours)
  {
    if (!v14)
    {
      goto LABEL_33;
    }

    [(HKCodableQuantity *)appleStandHours mergeFrom:?];
  }

  else
  {
    if (!v14)
    {
      goto LABEL_33;
    }

    [(HKCodableActivitySummaryEntry *)self setAppleStandHours:?];
  }

  fromCopy = v23;
LABEL_33:
  activeEnergyBurnedGoal = self->_activeEnergyBurnedGoal;
  v16 = *(fromCopy + 3);
  if (activeEnergyBurnedGoal)
  {
    if (!v16)
    {
      goto LABEL_39;
    }

    [(HKCodableQuantity *)activeEnergyBurnedGoal mergeFrom:?];
  }

  else
  {
    if (!v16)
    {
      goto LABEL_39;
    }

    [(HKCodableActivitySummaryEntry *)self setActiveEnergyBurnedGoal:?];
  }

  fromCopy = v23;
LABEL_39:
  appleMoveTimeGoal = self->_appleMoveTimeGoal;
  v18 = *(fromCopy + 7);
  if (appleMoveTimeGoal)
  {
    if (!v18)
    {
      goto LABEL_45;
    }

    [(HKCodableQuantity *)appleMoveTimeGoal mergeFrom:?];
  }

  else
  {
    if (!v18)
    {
      goto LABEL_45;
    }

    [(HKCodableActivitySummaryEntry *)self setAppleMoveTimeGoal:?];
  }

  fromCopy = v23;
LABEL_45:
  appleExerciseTimeGoal = self->_appleExerciseTimeGoal;
  v20 = *(fromCopy + 5);
  if (appleExerciseTimeGoal)
  {
    if (!v20)
    {
      goto LABEL_51;
    }

    [(HKCodableQuantity *)appleExerciseTimeGoal mergeFrom:?];
  }

  else
  {
    if (!v20)
    {
      goto LABEL_51;
    }

    [(HKCodableActivitySummaryEntry *)self setAppleExerciseTimeGoal:?];
  }

  fromCopy = v23;
LABEL_51:
  appleStandHoursGoal = self->_appleStandHoursGoal;
  v22 = *(fromCopy + 9);
  if (appleStandHoursGoal)
  {
    if (!v22)
    {
      goto LABEL_57;
    }

    appleStandHoursGoal = [(HKCodableQuantity *)appleStandHoursGoal mergeFrom:?];
  }

  else
  {
    if (!v22)
    {
      goto LABEL_57;
    }

    appleStandHoursGoal = [(HKCodableActivitySummaryEntry *)self setAppleStandHoursGoal:?];
  }

  fromCopy = v23;
LABEL_57:
  if ((*(fromCopy + 92) & 2) != 0)
  {
    self->_paused = *(fromCopy + 88);
    *&self->_has |= 2u;
  }

  MEMORY[0x1EEE66BB8](appleStandHoursGoal, fromCopy);
}

@end