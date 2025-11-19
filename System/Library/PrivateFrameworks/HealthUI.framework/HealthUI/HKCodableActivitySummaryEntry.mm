@interface HKCodableActivitySummaryEntry
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasPaused:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableActivitySummaryEntry

- (void)setHasPaused:(BOOL)a3
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
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableActivitySummaryEntry;
  v4 = [(HKCodableActivitySummaryEntry *)&v8 description];
  v5 = [(HKCodableActivitySummaryEntry *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  gregorianDateComponents = self->_gregorianDateComponents;
  if (gregorianDateComponents)
  {
    v5 = [(HKCodableDateComponents *)gregorianDateComponents dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"gregorianDateComponents"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_activityMoveMode];
    [v3 setObject:v6 forKey:@"activityMoveMode"];
  }

  activeEnergyBurned = self->_activeEnergyBurned;
  if (activeEnergyBurned)
  {
    v8 = [(HKCodableQuantity *)activeEnergyBurned dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"activeEnergyBurned"];
  }

  appleMoveTime = self->_appleMoveTime;
  if (appleMoveTime)
  {
    v10 = [(HKCodableQuantity *)appleMoveTime dictionaryRepresentation];
    [v3 setObject:v10 forKey:@"appleMoveTime"];
  }

  appleExerciseTime = self->_appleExerciseTime;
  if (appleExerciseTime)
  {
    v12 = [(HKCodableQuantity *)appleExerciseTime dictionaryRepresentation];
    [v3 setObject:v12 forKey:@"appleExerciseTime"];
  }

  appleStandHours = self->_appleStandHours;
  if (appleStandHours)
  {
    v14 = [(HKCodableQuantity *)appleStandHours dictionaryRepresentation];
    [v3 setObject:v14 forKey:@"appleStandHours"];
  }

  activeEnergyBurnedGoal = self->_activeEnergyBurnedGoal;
  if (activeEnergyBurnedGoal)
  {
    v16 = [(HKCodableQuantity *)activeEnergyBurnedGoal dictionaryRepresentation];
    [v3 setObject:v16 forKey:@"activeEnergyBurnedGoal"];
  }

  appleMoveTimeGoal = self->_appleMoveTimeGoal;
  if (appleMoveTimeGoal)
  {
    v18 = [(HKCodableQuantity *)appleMoveTimeGoal dictionaryRepresentation];
    [v3 setObject:v18 forKey:@"appleMoveTimeGoal"];
  }

  appleExerciseTimeGoal = self->_appleExerciseTimeGoal;
  if (appleExerciseTimeGoal)
  {
    v20 = [(HKCodableQuantity *)appleExerciseTimeGoal dictionaryRepresentation];
    [v3 setObject:v20 forKey:@"appleExerciseTimeGoal"];
  }

  appleStandHoursGoal = self->_appleStandHoursGoal;
  if (appleStandHoursGoal)
  {
    v22 = [(HKCodableQuantity *)appleStandHoursGoal dictionaryRepresentation];
    [v3 setObject:v22 forKey:@"appleStandHoursGoal"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithBool:self->_paused];
    [v3 setObject:v23 forKey:@"paused"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_gregorianDateComponents)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
    v4 = v5;
  }

  if (self->_activeEnergyBurned)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_appleMoveTime)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_appleExerciseTime)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_appleStandHours)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_activeEnergyBurnedGoal)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_appleMoveTimeGoal)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_appleExerciseTimeGoal)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_appleStandHoursGoal)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_gregorianDateComponents)
  {
    [v4 setGregorianDateComponents:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_activityMoveMode;
    *(v4 + 92) |= 1u;
  }

  if (self->_activeEnergyBurned)
  {
    [v5 setActiveEnergyBurned:?];
    v4 = v5;
  }

  if (self->_appleMoveTime)
  {
    [v5 setAppleMoveTime:?];
    v4 = v5;
  }

  if (self->_appleExerciseTime)
  {
    [v5 setAppleExerciseTime:?];
    v4 = v5;
  }

  if (self->_appleStandHours)
  {
    [v5 setAppleStandHours:?];
    v4 = v5;
  }

  if (self->_activeEnergyBurnedGoal)
  {
    [v5 setActiveEnergyBurnedGoal:?];
    v4 = v5;
  }

  if (self->_appleMoveTimeGoal)
  {
    [v5 setAppleMoveTimeGoal:?];
    v4 = v5;
  }

  if (self->_appleExerciseTimeGoal)
  {
    [v5 setAppleExerciseTimeGoal:?];
    v4 = v5;
  }

  if (self->_appleStandHoursGoal)
  {
    [v5 setAppleStandHoursGoal:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 88) = self->_paused;
    *(v4 + 92) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HKCodableDateComponents *)self->_gregorianDateComponents copyWithZone:a3];
  v7 = *(v5 + 80);
  *(v5 + 80) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_activityMoveMode;
    *(v5 + 92) |= 1u;
  }

  v8 = [(HKCodableQuantity *)self->_activeEnergyBurned copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(HKCodableQuantity *)self->_appleMoveTime copyWithZone:a3];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  v12 = [(HKCodableQuantity *)self->_appleExerciseTime copyWithZone:a3];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  v14 = [(HKCodableQuantity *)self->_appleStandHours copyWithZone:a3];
  v15 = *(v5 + 64);
  *(v5 + 64) = v14;

  v16 = [(HKCodableQuantity *)self->_activeEnergyBurnedGoal copyWithZone:a3];
  v17 = *(v5 + 24);
  *(v5 + 24) = v16;

  v18 = [(HKCodableQuantity *)self->_appleMoveTimeGoal copyWithZone:a3];
  v19 = *(v5 + 56);
  *(v5 + 56) = v18;

  v20 = [(HKCodableQuantity *)self->_appleExerciseTimeGoal copyWithZone:a3];
  v21 = *(v5 + 40);
  *(v5 + 40) = v20;

  v22 = [(HKCodableQuantity *)self->_appleStandHoursGoal copyWithZone:a3];
  v23 = *(v5 + 72);
  *(v5 + 72) = v22;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 88) = self->_paused;
    *(v5 + 92) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  gregorianDateComponents = self->_gregorianDateComponents;
  if (gregorianDateComponents | *(v4 + 10))
  {
    if (![(HKCodableDateComponents *)gregorianDateComponents isEqual:?])
    {
      goto LABEL_27;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 92) & 1) == 0 || self->_activityMoveMode != *(v4 + 1))
    {
      goto LABEL_27;
    }
  }

  else if (*(v4 + 92))
  {
    goto LABEL_27;
  }

  activeEnergyBurned = self->_activeEnergyBurned;
  if (activeEnergyBurned | *(v4 + 2) && ![(HKCodableQuantity *)activeEnergyBurned isEqual:?])
  {
    goto LABEL_27;
  }

  appleMoveTime = self->_appleMoveTime;
  if (appleMoveTime | *(v4 + 6))
  {
    if (![(HKCodableQuantity *)appleMoveTime isEqual:?])
    {
      goto LABEL_27;
    }
  }

  appleExerciseTime = self->_appleExerciseTime;
  if (appleExerciseTime | *(v4 + 4))
  {
    if (![(HKCodableQuantity *)appleExerciseTime isEqual:?])
    {
      goto LABEL_27;
    }
  }

  appleStandHours = self->_appleStandHours;
  if (appleStandHours | *(v4 + 8))
  {
    if (![(HKCodableQuantity *)appleStandHours isEqual:?])
    {
      goto LABEL_27;
    }
  }

  activeEnergyBurnedGoal = self->_activeEnergyBurnedGoal;
  if (activeEnergyBurnedGoal | *(v4 + 3))
  {
    if (![(HKCodableQuantity *)activeEnergyBurnedGoal isEqual:?])
    {
      goto LABEL_27;
    }
  }

  appleMoveTimeGoal = self->_appleMoveTimeGoal;
  if (appleMoveTimeGoal | *(v4 + 7))
  {
    if (![(HKCodableQuantity *)appleMoveTimeGoal isEqual:?])
    {
      goto LABEL_27;
    }
  }

  appleExerciseTimeGoal = self->_appleExerciseTimeGoal;
  if (appleExerciseTimeGoal | *(v4 + 5))
  {
    if (![(HKCodableQuantity *)appleExerciseTimeGoal isEqual:?])
    {
      goto LABEL_27;
    }
  }

  appleStandHoursGoal = self->_appleStandHoursGoal;
  if (appleStandHoursGoal | *(v4 + 9))
  {
    if (![(HKCodableQuantity *)appleStandHoursGoal isEqual:?])
    {
      goto LABEL_27;
    }
  }

  v14 = (*(v4 + 92) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 92) & 2) == 0)
    {
LABEL_27:
      v14 = 0;
      goto LABEL_28;
    }

    if (self->_paused)
    {
      if ((*(v4 + 88) & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (*(v4 + 88))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  gregorianDateComponents = self->_gregorianDateComponents;
  v6 = *(v4 + 10);
  v23 = v4;
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

  v4 = v23;
LABEL_7:
  if (*(v4 + 92))
  {
    self->_activityMoveMode = *(v4 + 1);
    *&self->_has |= 1u;
  }

  activeEnergyBurned = self->_activeEnergyBurned;
  v8 = *(v4 + 2);
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

  v4 = v23;
LABEL_15:
  appleMoveTime = self->_appleMoveTime;
  v10 = *(v4 + 6);
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

  v4 = v23;
LABEL_21:
  appleExerciseTime = self->_appleExerciseTime;
  v12 = *(v4 + 4);
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

  v4 = v23;
LABEL_27:
  appleStandHours = self->_appleStandHours;
  v14 = *(v4 + 8);
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

  v4 = v23;
LABEL_33:
  activeEnergyBurnedGoal = self->_activeEnergyBurnedGoal;
  v16 = *(v4 + 3);
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

  v4 = v23;
LABEL_39:
  appleMoveTimeGoal = self->_appleMoveTimeGoal;
  v18 = *(v4 + 7);
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

  v4 = v23;
LABEL_45:
  appleExerciseTimeGoal = self->_appleExerciseTimeGoal;
  v20 = *(v4 + 5);
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

  v4 = v23;
LABEL_51:
  appleStandHoursGoal = self->_appleStandHoursGoal;
  v22 = *(v4 + 9);
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

  v4 = v23;
LABEL_57:
  if ((*(v4 + 92) & 2) != 0)
  {
    self->_paused = *(v4 + 88);
    *&self->_has |= 2u;
  }

  MEMORY[0x1EEE66BB8](appleStandHoursGoal, v4);
}

@end