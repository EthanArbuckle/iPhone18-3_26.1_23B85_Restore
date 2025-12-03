@interface HDCodableActivityCache
- (BOOL)applyToObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_decodeCodableActivityStatisticsQuantityInfos:(uint64_t)infos;
- (id)copyWithZone:(_NSZone *)zone;
- (id)decodedEnergyBurnedGoalQuantity;
- (id)decodedEnergyBurnedQuantity;
- (id)decodedWalkingAndRunningDistanceQuantity;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDailyBriskMinutesStatistics:(id)statistics;
- (void)addDailyEnergyBurnedStatistics:(id)statistics;
- (void)addDailyMoveMinutesStatistics:(id)statistics;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasActiveHoursGoal:(BOOL)goal;
- (void)setHasActiveHoursGoalDate:(BOOL)date;
- (void)setHasActivityMoveMode:(BOOL)mode;
- (void)setHasBriskMinutes:(BOOL)minutes;
- (void)setHasBriskMinutesGoal:(BOOL)goal;
- (void)setHasBriskMinutesGoalDate:(BOOL)date;
- (void)setHasCacheIndex:(BOOL)index;
- (void)setHasDeepBreathingDuration:(BOOL)duration;
- (void)setHasEnergyBurned:(BOOL)burned;
- (void)setHasEnergyBurnedGoal:(BOOL)goal;
- (void)setHasEnergyBurnedGoalDate:(BOOL)date;
- (void)setHasFlightsClimbed:(BOOL)climbed;
- (void)setHasMoveMinutes:(BOOL)minutes;
- (void)setHasMoveMinutesGoal:(BOOL)goal;
- (void)setHasMoveMinutesGoalDate:(BOOL)date;
- (void)setHasPaused:(BOOL)paused;
- (void)setHasPushCount:(BOOL)count;
- (void)setHasSequence:(BOOL)sequence;
- (void)setHasStepCount:(BOOL)count;
- (void)setHasVersion:(BOOL)version;
- (void)setHasWalkingAndRunningDistance:(BOOL)distance;
- (void)setHasWheelchairUse:(BOOL)use;
- (void)writeTo:(id)to;
@end

@implementation HDCodableActivityCache

- (id)decodedEnergyBurnedQuantity
{
  if ((*(&self->_has + 1) & 2) != 0)
  {
    v4 = MEMORY[0x277CCD7E8];
    v5 = _HKWorkoutCanonicalEnergyBurnedUnit();
    v2 = [v4 quantityWithUnit:v5 doubleValue:self->_energyBurned];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)decodedWalkingAndRunningDistanceQuantity
{
  if ((*(&self->_has + 2) & 0x10) != 0)
  {
    v4 = MEMORY[0x277CCD7E8];
    meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
    v2 = [v4 quantityWithUnit:meterUnit doubleValue:self->_walkingAndRunningDistance];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)decodedEnergyBurnedGoalQuantity
{
  if ((*(&self->_has + 1) & 4) != 0)
  {
    v4 = MEMORY[0x277CCD7E8];
    v5 = _HKWorkoutCanonicalEnergyBurnedUnit();
    v2 = [v4 quantityWithUnit:v5 doubleValue:self->_energyBurnedGoal];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)applyToObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (-[HDCodableActivityCache sample](self, "sample"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 applyToObject:objectCopy], v5, v6))
  {
    activityCacheType = [MEMORY[0x277CCD8D8] activityCacheType];
    [objectCopy _setSampleType:activityCacheType];

    [objectCopy _setCacheIndex:{-[HDCodableActivityCache cacheIndex](self, "cacheIndex")}];
    if ([(HDCodableActivityCache *)self hasSequence])
    {
      [objectCopy _setSequence:{-[HDCodableActivityCache sequence](self, "sequence")}];
    }

    decodedEnergyBurnedQuantity = [(HDCodableActivityCache *)self decodedEnergyBurnedQuantity];
    [objectCopy _setEnergyBurned:decodedEnergyBurnedQuantity];

    decodedWalkingAndRunningDistanceQuantity = [(HDCodableActivityCache *)self decodedWalkingAndRunningDistanceQuantity];
    [objectCopy _setWalkingAndRunningDistance:decodedWalkingAndRunningDistanceQuantity];

    decodedEnergyBurnedGoalQuantity = [(HDCodableActivityCache *)self decodedEnergyBurnedGoalQuantity];
    [objectCopy _setEnergyBurnedGoal:decodedEnergyBurnedGoalQuantity];

    if ([(HDCodableActivityCache *)self hasMoveMinutes])
    {
      [(HDCodableActivityCache *)self moveMinutes];
      [objectCopy _setMoveMinutes:?];
    }

    if ([(HDCodableActivityCache *)self hasMoveMinutesGoal])
    {
      if (self && (*(&self->_has + 1) & 0x40) != 0)
      {
        v13 = MEMORY[0x277CCD7E8];
        v14 = _HKWorkoutCanonicalMoveMinutesUnit();
        v11 = [v13 quantityWithUnit:v14 doubleValue:self->_moveMinutesGoal];
      }

      else
      {
        v11 = 0;
      }

      [objectCopy _setMoveMinutesGoalOnly:v11];
    }

    if ([(HDCodableActivityCache *)self hasMoveMinutesGoalDate])
    {
      [(HDCodableActivityCache *)self moveMinutesGoalDate];
      v15 = HDDecodeDateForValue();
      [objectCopy _setMoveMinutesGoalDateOnly:v15];
    }

    if ([(HDCodableActivityCache *)self hasBriskMinutes])
    {
      [(HDCodableActivityCache *)self briskMinutes];
      [objectCopy _setBriskMinutes:?];
    }

    if ([(HDCodableActivityCache *)self hasBriskMinutesGoal])
    {
      if (self && (*&self->_has & 0x20) != 0)
      {
        v17 = MEMORY[0x277CCD7E8];
        v18 = _HKWorkoutCanonicalBriskMinutesUnit();
        v16 = [v17 quantityWithUnit:v18 doubleValue:self->_briskMinutesGoal];
      }

      else
      {
        v16 = 0;
      }

      [objectCopy _setBriskMinutesGoalOnly:v16];
    }

    if ([(HDCodableActivityCache *)self hasBriskMinutesGoalDate])
    {
      [(HDCodableActivityCache *)self briskMinutesGoalDate];
      v19 = HDDecodeDateForValue();
      [objectCopy _setBriskMinutesGoalDateOnly:v19];
    }

    if ([(HDCodableActivityCache *)self hasActiveHours])
    {
      [(HDCodableActivityCache *)self activeHours];
      [objectCopy _setActiveHours:?];
    }

    if ([(HDCodableActivityCache *)self hasActiveHoursGoal])
    {
      if (self && (*&self->_has & 2) != 0)
      {
        v21 = MEMORY[0x277CCD7E8];
        v22 = _HKWorkoutCanonicalActiveHoursUnit();
        v20 = [v21 quantityWithUnit:v22 doubleValue:self->_activeHoursGoal];
      }

      else
      {
        v20 = 0;
      }

      [objectCopy _setActiveHoursGoalOnly:v20];
    }

    if ([(HDCodableActivityCache *)self hasActiveHoursGoalDate])
    {
      [(HDCodableActivityCache *)self activeHoursGoalDate];
      v23 = HDDecodeDateForValue();
      [objectCopy _setActiveHoursGoalDateOnly:v23];
    }

    if ([(HDCodableActivityCache *)self hasStepCount])
    {
      [objectCopy _setStepCount:{-[HDCodableActivityCache stepCount](self, "stepCount")}];
    }

    if ([(HDCodableActivityCache *)self hasPushCount])
    {
      [objectCopy _setPushCount:{-[HDCodableActivityCache pushCount](self, "pushCount")}];
    }

    if ([(HDCodableActivityCache *)self hasWheelchairUse])
    {
      [objectCopy _setWheelchairUse:{-[HDCodableActivityCache wheelchairUse](self, "wheelchairUse")}];
    }

    if ([(HDCodableActivityCache *)self hasEnergyBurnedGoalDate])
    {
      decodedEnergyBurnedGoalQuantity2 = [(HDCodableActivityCache *)self decodedEnergyBurnedGoalQuantity];
      [(HDCodableActivityCache *)self energyBurnedGoalDate];
      v25 = HDDecodeDateForValue();
      [objectCopy _setEnergyBurnedGoal:decodedEnergyBurnedGoalQuantity2 date:v25];
    }

    if ([(HDCodableActivityCache *)self hasFlightsClimbed])
    {
      [objectCopy _setFlightsClimbed:{-[HDCodableActivityCache flightsClimbed](self, "flightsClimbed")}];
    }

    if ([(HDCodableActivityCache *)self hasDeepBreathingDuration])
    {
      [(HDCodableActivityCache *)self deepBreathingDuration];
      [objectCopy _setDeepBreathingDuration:?];
    }

    if ([(HDCodableActivityCache *)self activityMoveMode])
    {
      activityMoveMode = [(HDCodableActivityCache *)self activityMoveMode];
    }

    else
    {
      activityMoveMode = 1;
    }

    [objectCopy _setActivityMoveMode:activityMoveMode];
    [objectCopy _setVersion:{-[HDCodableActivityCache version](self, "version")}];
    dailyEnergyBurnedStatistics = [(HDCodableActivityCache *)self dailyEnergyBurnedStatistics];
    v28 = [dailyEnergyBurnedStatistics count];

    if (v28)
    {
      dailyEnergyBurnedStatistics2 = [(HDCodableActivityCache *)self dailyEnergyBurnedStatistics];
      v30 = [(HDCodableActivityCache *)self _decodeCodableActivityStatisticsQuantityInfos:dailyEnergyBurnedStatistics2];

      [objectCopy _setDailyEnergyBurnedStatistics:v30];
    }

    dailyMoveMinutesStatistics = [(HDCodableActivityCache *)self dailyMoveMinutesStatistics];
    v32 = [dailyMoveMinutesStatistics count];

    if (v32)
    {
      dailyMoveMinutesStatistics2 = [(HDCodableActivityCache *)self dailyMoveMinutesStatistics];
      v34 = [(HDCodableActivityCache *)self _decodeCodableActivityStatisticsQuantityInfos:dailyMoveMinutesStatistics2];

      [objectCopy _setDailyMoveMinutesStatistics:v34];
    }

    dailyBriskMinutesStatistics = [(HDCodableActivityCache *)self dailyBriskMinutesStatistics];
    v36 = [dailyBriskMinutesStatistics count];

    if (v36)
    {
      dailyBriskMinutesStatistics2 = [(HDCodableActivityCache *)self dailyBriskMinutesStatistics];
      v38 = [(HDCodableActivityCache *)self _decodeCodableActivityStatisticsQuantityInfos:dailyBriskMinutesStatistics2];

      [objectCopy _setDailyBriskMinutesStatistics:v38];
    }

    [objectCopy _setPaused:{-[HDCodableActivityCache paused](self, "paused")}];
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_decodeCodableActivityStatisticsQuantityInfos:(uint64_t)infos
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (infos)
  {
    array = [MEMORY[0x277CBEB18] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [MEMORY[0x277CCDD10] createWithCodable:{*(*(&v14 + 1) + 8 * i), v14}];
          if (v10)
          {
            [array addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    v11 = [array copy];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)setHasCacheIndex:(BOOL)index
{
  if (index)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasEnergyBurned:(BOOL)burned
{
  if (burned)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasBriskMinutes:(BOOL)minutes
{
  if (minutes)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasStepCount:(BOOL)count
{
  if (count)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasEnergyBurnedGoal:(BOOL)goal
{
  if (goal)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasWalkingAndRunningDistance:(BOOL)distance
{
  if (distance)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasEnergyBurnedGoalDate:(BOOL)date
{
  if (date)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasDeepBreathingDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasPushCount:(BOOL)count
{
  if (count)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasFlightsClimbed:(BOOL)climbed
{
  if (climbed)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasWheelchairUse:(BOOL)use
{
  if (use)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)addDailyEnergyBurnedStatistics:(id)statistics
{
  statisticsCopy = statistics;
  dailyEnergyBurnedStatistics = self->_dailyEnergyBurnedStatistics;
  v8 = statisticsCopy;
  if (!dailyEnergyBurnedStatistics)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_dailyEnergyBurnedStatistics;
    self->_dailyEnergyBurnedStatistics = v6;

    statisticsCopy = v8;
    dailyEnergyBurnedStatistics = self->_dailyEnergyBurnedStatistics;
  }

  [(NSMutableArray *)dailyEnergyBurnedStatistics addObject:statisticsCopy];
}

- (void)addDailyBriskMinutesStatistics:(id)statistics
{
  statisticsCopy = statistics;
  dailyBriskMinutesStatistics = self->_dailyBriskMinutesStatistics;
  v8 = statisticsCopy;
  if (!dailyBriskMinutesStatistics)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_dailyBriskMinutesStatistics;
    self->_dailyBriskMinutesStatistics = v6;

    statisticsCopy = v8;
    dailyBriskMinutesStatistics = self->_dailyBriskMinutesStatistics;
  }

  [(NSMutableArray *)dailyBriskMinutesStatistics addObject:statisticsCopy];
}

- (void)setHasSequence:(BOOL)sequence
{
  if (sequence)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasBriskMinutesGoal:(BOOL)goal
{
  if (goal)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasActiveHoursGoal:(BOOL)goal
{
  if (goal)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasMoveMinutes:(BOOL)minutes
{
  if (minutes)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasMoveMinutesGoal:(BOOL)goal
{
  if (goal)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasMoveMinutesGoalDate:(BOOL)date
{
  if (date)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)addDailyMoveMinutesStatistics:(id)statistics
{
  statisticsCopy = statistics;
  dailyMoveMinutesStatistics = self->_dailyMoveMinutesStatistics;
  v8 = statisticsCopy;
  if (!dailyMoveMinutesStatistics)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_dailyMoveMinutesStatistics;
    self->_dailyMoveMinutesStatistics = v6;

    statisticsCopy = v8;
    dailyMoveMinutesStatistics = self->_dailyMoveMinutesStatistics;
  }

  [(NSMutableArray *)dailyMoveMinutesStatistics addObject:statisticsCopy];
}

- (void)setHasBriskMinutesGoalDate:(BOOL)date
{
  if (date)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasActiveHoursGoalDate:(BOOL)date
{
  if (date)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasActivityMoveMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasPaused:(BOOL)paused
{
  if (paused)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableActivityCache;
  v4 = [(HDCodableActivityCache *)&v8 description];
  dictionaryRepresentation = [(HDCodableActivityCache *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v70 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  sample = self->_sample;
  if (sample)
  {
    dictionaryRepresentation = [(HDCodableSample *)sample dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"sample"];
  }

  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    v35 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_cacheIndex];
    [dictionary setObject:v35 forKey:@"cacheIndex"];

    has = self->_has;
    if ((*&has & 0x200) == 0)
    {
LABEL_5:
      if ((*&has & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_61;
    }
  }

  else if ((*&has & 0x200) == 0)
  {
    goto LABEL_5;
  }

  v36 = [MEMORY[0x277CCABB0] numberWithDouble:self->_energyBurned];
  [dictionary setObject:v36 forKey:@"energyBurned"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_6:
    if ((*&has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_62;
  }

LABEL_61:
  v37 = [MEMORY[0x277CCABB0] numberWithDouble:self->_briskMinutes];
  [dictionary setObject:v37 forKey:@"briskMinutes"];

  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_7:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_63;
  }

LABEL_62:
  v38 = [MEMORY[0x277CCABB0] numberWithDouble:self->_activeHours];
  [dictionary setObject:v38 forKey:@"activeHours"];

  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_8:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_64;
  }

LABEL_63:
  v39 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_stepCount];
  [dictionary setObject:v39 forKey:@"stepCount"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_9:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_65;
  }

LABEL_64:
  v40 = [MEMORY[0x277CCABB0] numberWithDouble:self->_energyBurnedGoal];
  [dictionary setObject:v40 forKey:@"energyBurnedGoal"];

  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_10:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_66;
  }

LABEL_65:
  v41 = [MEMORY[0x277CCABB0] numberWithDouble:self->_walkingAndRunningDistance];
  [dictionary setObject:v41 forKey:@"walkingAndRunningDistance"];

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_11:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_67;
  }

LABEL_66:
  v42 = [MEMORY[0x277CCABB0] numberWithDouble:self->_energyBurnedGoalDate];
  [dictionary setObject:v42 forKey:@"energyBurnedGoalDate"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_12:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_68;
  }

LABEL_67:
  v43 = [MEMORY[0x277CCABB0] numberWithDouble:self->_deepBreathingDuration];
  [dictionary setObject:v43 forKey:@"deepBreathingDuration"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_13:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_69;
  }

LABEL_68:
  v44 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_pushCount];
  [dictionary setObject:v44 forKey:@"pushCount"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_14:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_69:
  v45 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_flightsClimbed];
  [dictionary setObject:v45 forKey:@"flightsClimbed"];

  if ((*&self->_has & 0x200000) != 0)
  {
LABEL_15:
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_wheelchairUse];
    [dictionary setObject:v7 forKey:@"wheelchairUse"];
  }

LABEL_16:
  if ([(NSMutableArray *)self->_dailyEnergyBurnedStatistics count])
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_dailyEnergyBurnedStatistics, "count")}];
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v9 = self->_dailyEnergyBurnedStatistics;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v63 objects:v69 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v64;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v64 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation2 = [*(*(&v63 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:dictionaryRepresentation2];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v63 objects:v69 count:16];
      }

      while (v11);
    }

    [dictionary setObject:v8 forKey:@"dailyEnergyBurnedStatistics"];
  }

  if ([(NSMutableArray *)self->_dailyBriskMinutesStatistics count])
  {
    v15 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_dailyBriskMinutesStatistics, "count")}];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v16 = self->_dailyBriskMinutesStatistics;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v59 objects:v68 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v60;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v60 != v19)
          {
            objc_enumerationMutation(v16);
          }

          dictionaryRepresentation3 = [*(*(&v59 + 1) + 8 * j) dictionaryRepresentation];
          [v15 addObject:dictionaryRepresentation3];
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v59 objects:v68 count:16];
      }

      while (v18);
    }

    [dictionary setObject:v15 forKey:@"dailyBriskMinutesStatistics"];
  }

  v22 = self->_has;
  if ((*&v22 & 0x20000) != 0)
  {
    v46 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_sequence];
    [dictionary setObject:v46 forKey:@"sequence"];

    v22 = self->_has;
    if ((*&v22 & 0x20) == 0)
    {
LABEL_36:
      if ((*&v22 & 2) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_73;
    }
  }

  else if ((*&v22 & 0x20) == 0)
  {
    goto LABEL_36;
  }

  v47 = [MEMORY[0x277CCABB0] numberWithDouble:self->_briskMinutesGoal];
  [dictionary setObject:v47 forKey:@"briskMinutesGoal"];

  v22 = self->_has;
  if ((*&v22 & 2) == 0)
  {
LABEL_37:
    if ((*&v22 & 0x2000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_74;
  }

LABEL_73:
  v48 = [MEMORY[0x277CCABB0] numberWithDouble:self->_activeHoursGoal];
  [dictionary setObject:v48 forKey:@"activeHoursGoal"];

  v22 = self->_has;
  if ((*&v22 & 0x2000) == 0)
  {
LABEL_38:
    if ((*&v22 & 0x4000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_75;
  }

LABEL_74:
  v49 = [MEMORY[0x277CCABB0] numberWithDouble:self->_moveMinutes];
  [dictionary setObject:v49 forKey:@"moveMinutes"];

  v22 = self->_has;
  if ((*&v22 & 0x4000) == 0)
  {
LABEL_39:
    if ((*&v22 & 0x8000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_75:
  v50 = [MEMORY[0x277CCABB0] numberWithDouble:self->_moveMinutesGoal];
  [dictionary setObject:v50 forKey:@"moveMinutesGoal"];

  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_40:
    v23 = [MEMORY[0x277CCABB0] numberWithDouble:self->_moveMinutesGoalDate];
    [dictionary setObject:v23 forKey:@"moveMinutesGoalDate"];
  }

LABEL_41:
  if ([(NSMutableArray *)self->_dailyMoveMinutesStatistics count])
  {
    v24 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_dailyMoveMinutesStatistics, "count")}];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v25 = self->_dailyMoveMinutesStatistics;
    v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v55 objects:v67 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v56;
      do
      {
        for (k = 0; k != v27; ++k)
        {
          if (*v56 != v28)
          {
            objc_enumerationMutation(v25);
          }

          dictionaryRepresentation4 = [*(*(&v55 + 1) + 8 * k) dictionaryRepresentation];
          [v24 addObject:dictionaryRepresentation4];
        }

        v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v55 objects:v67 count:16];
      }

      while (v27);
    }

    [dictionary setObject:v24 forKey:@"dailyMoveMinutesStatistics"];
  }

  v31 = self->_has;
  if ((*&v31 & 0x40) != 0)
  {
    v51 = [MEMORY[0x277CCABB0] numberWithDouble:self->_briskMinutesGoalDate];
    [dictionary setObject:v51 forKey:@"briskMinutesGoalDate"];

    v31 = self->_has;
    if ((*&v31 & 4) == 0)
    {
LABEL_52:
      if ((*&v31 & 8) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_79;
    }
  }

  else if ((*&v31 & 4) == 0)
  {
    goto LABEL_52;
  }

  v52 = [MEMORY[0x277CCABB0] numberWithDouble:{self->_activeHoursGoalDate, v55}];
  [dictionary setObject:v52 forKey:@"activeHoursGoalDate"];

  v31 = self->_has;
  if ((*&v31 & 8) == 0)
  {
LABEL_53:
    if ((*&v31 & 0x80000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_80;
  }

LABEL_79:
  v53 = [MEMORY[0x277CCABB0] numberWithLongLong:{self->_activityMoveMode, v55}];
  [dictionary setObject:v53 forKey:@"activityMoveMode"];

  v31 = self->_has;
  if ((*&v31 & 0x80000) == 0)
  {
LABEL_54:
    if ((*&v31 & 0x400000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_80:
  v54 = [MEMORY[0x277CCABB0] numberWithLongLong:{self->_version, v55}];
  [dictionary setObject:v54 forKey:@"version"];

  if ((*&self->_has & 0x400000) != 0)
  {
LABEL_55:
    v32 = [MEMORY[0x277CCABB0] numberWithBool:{self->_paused, v55}];
    [dictionary setObject:v32 forKey:@"paused"];
  }

LABEL_56:
  v33 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v65 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_sample)
  {
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    cacheIndex = self->_cacheIndex;
    PBDataWriterWriteInt64Field();
    has = self->_has;
    if ((*&has & 0x200) == 0)
    {
LABEL_5:
      if ((*&has & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_53;
    }
  }

  else if ((*&has & 0x200) == 0)
  {
    goto LABEL_5;
  }

  energyBurned = self->_energyBurned;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_6:
    if ((*&has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_54;
  }

LABEL_53:
  briskMinutes = self->_briskMinutes;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_7:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_55;
  }

LABEL_54:
  activeHours = self->_activeHours;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_8:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_56;
  }

LABEL_55:
  stepCount = self->_stepCount;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_9:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_57;
  }

LABEL_56:
  energyBurnedGoal = self->_energyBurnedGoal;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_10:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_58;
  }

LABEL_57:
  walkingAndRunningDistance = self->_walkingAndRunningDistance;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_11:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_59;
  }

LABEL_58:
  energyBurnedGoalDate = self->_energyBurnedGoalDate;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_12:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_60;
  }

LABEL_59:
  deepBreathingDuration = self->_deepBreathingDuration;
  PBDataWriterWriteDoubleField();
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_13:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_61;
  }

LABEL_60:
  pushCount = self->_pushCount;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_14:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_61:
  flightsClimbed = self->_flightsClimbed;
  PBDataWriterWriteInt64Field();
  if ((*&self->_has & 0x200000) != 0)
  {
LABEL_15:
    wheelchairUse = self->_wheelchairUse;
    PBDataWriterWriteInt64Field();
  }

LABEL_16:
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v7 = self->_dailyEnergyBurnedStatistics;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v58 objects:v64 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v59;
    do
    {
      v11 = 0;
      do
      {
        if (*v59 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v58 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v58 objects:v64 count:16];
    }

    while (v9);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v13 = self->_dailyBriskMinutesStatistics;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v54 objects:v63 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v55;
    do
    {
      v17 = 0;
      do
      {
        if (*v55 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v54 + 1) + 8 * v17);
        PBDataWriterWriteSubmessage();
        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v54 objects:v63 count:16];
    }

    while (v15);
  }

  v19 = self->_has;
  if ((*&v19 & 0x20000) != 0)
  {
    sequence = self->_sequence;
    PBDataWriterWriteInt64Field();
    v19 = self->_has;
    if ((*&v19 & 0x20) == 0)
    {
LABEL_32:
      if ((*&v19 & 2) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_65;
    }
  }

  else if ((*&v19 & 0x20) == 0)
  {
    goto LABEL_32;
  }

  briskMinutesGoal = self->_briskMinutesGoal;
  PBDataWriterWriteDoubleField();
  v19 = self->_has;
  if ((*&v19 & 2) == 0)
  {
LABEL_33:
    if ((*&v19 & 0x2000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_66;
  }

LABEL_65:
  activeHoursGoal = self->_activeHoursGoal;
  PBDataWriterWriteDoubleField();
  v19 = self->_has;
  if ((*&v19 & 0x2000) == 0)
  {
LABEL_34:
    if ((*&v19 & 0x4000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_67;
  }

LABEL_66:
  moveMinutes = self->_moveMinutes;
  PBDataWriterWriteDoubleField();
  v19 = self->_has;
  if ((*&v19 & 0x4000) == 0)
  {
LABEL_35:
    if ((*&v19 & 0x8000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_67:
  moveMinutesGoal = self->_moveMinutesGoal;
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_36:
    moveMinutesGoalDate = self->_moveMinutesGoalDate;
    PBDataWriterWriteDoubleField();
  }

LABEL_37:
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v21 = self->_dailyMoveMinutesStatistics;
  v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v50 objects:v62 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v51;
    do
    {
      v25 = 0;
      do
      {
        if (*v51 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v50 + 1) + 8 * v25);
        PBDataWriterWriteSubmessage();
        ++v25;
      }

      while (v23 != v25);
      v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v50 objects:v62 count:16];
    }

    while (v23);
  }

  v27 = self->_has;
  if ((*&v27 & 0x40) != 0)
  {
    briskMinutesGoalDate = self->_briskMinutesGoalDate;
    PBDataWriterWriteDoubleField();
    v27 = self->_has;
    if ((*&v27 & 4) == 0)
    {
LABEL_46:
      if ((*&v27 & 8) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_71;
    }
  }

  else if ((*&v27 & 4) == 0)
  {
    goto LABEL_46;
  }

  activeHoursGoalDate = self->_activeHoursGoalDate;
  PBDataWriterWriteDoubleField();
  v27 = self->_has;
  if ((*&v27 & 8) == 0)
  {
LABEL_47:
    if ((*&v27 & 0x80000) == 0)
    {
      goto LABEL_48;
    }

LABEL_72:
    version = self->_version;
    PBDataWriterWriteInt64Field();
    if ((*&self->_has & 0x400000) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_71:
  activityMoveMode = self->_activityMoveMode;
  PBDataWriterWriteInt64Field();
  v27 = self->_has;
  if ((*&v27 & 0x80000) != 0)
  {
    goto LABEL_72;
  }

LABEL_48:
  if ((*&v27 & 0x400000) != 0)
  {
LABEL_49:
    paused = self->_paused;
    PBDataWriterWriteBOOLField();
  }

LABEL_50:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v20 = toCopy;
  if (self->_sample)
  {
    [toCopy setSample:?];
    toCopy = v20;
  }

  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    *(toCopy + 8) = self->_cacheIndex;
    *(toCopy + 55) |= 0x80u;
    has = self->_has;
    if ((*&has & 0x200) == 0)
    {
LABEL_5:
      if ((*&has & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_46;
    }
  }

  else if ((*&has & 0x200) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 10) = *&self->_energyBurned;
  *(toCopy + 55) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_6:
    if ((*&has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(toCopy + 5) = *&self->_briskMinutes;
  *(toCopy + 55) |= 0x10u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_7:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(toCopy + 1) = *&self->_activeHours;
  *(toCopy + 55) |= 1u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_8:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(toCopy + 19) = self->_stepCount;
  *(toCopy + 55) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_9:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(toCopy + 11) = *&self->_energyBurnedGoal;
  *(toCopy + 55) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_10:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(toCopy + 21) = *&self->_walkingAndRunningDistance;
  *(toCopy + 55) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_11:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(toCopy + 12) = *&self->_energyBurnedGoalDate;
  *(toCopy + 55) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_12:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(toCopy + 9) = *&self->_deepBreathingDuration;
  *(toCopy + 55) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_13:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_14;
    }

LABEL_54:
    *(toCopy + 13) = self->_flightsClimbed;
    *(toCopy + 55) |= 0x1000u;
    if ((*&self->_has & 0x200000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_53:
  *(toCopy + 17) = self->_pushCount;
  *(toCopy + 55) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x1000) != 0)
  {
    goto LABEL_54;
  }

LABEL_14:
  if ((*&has & 0x200000) != 0)
  {
LABEL_15:
    *(toCopy + 22) = self->_wheelchairUse;
    *(toCopy + 55) |= 0x200000u;
  }

LABEL_16:
  if ([(HDCodableActivityCache *)self dailyEnergyBurnedStatisticsCount])
  {
    [v20 clearDailyEnergyBurnedStatistics];
    dailyEnergyBurnedStatisticsCount = [(HDCodableActivityCache *)self dailyEnergyBurnedStatisticsCount];
    if (dailyEnergyBurnedStatisticsCount)
    {
      v7 = dailyEnergyBurnedStatisticsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(HDCodableActivityCache *)self dailyEnergyBurnedStatisticsAtIndex:i];
        [v20 addDailyEnergyBurnedStatistics:v9];
      }
    }
  }

  if ([(HDCodableActivityCache *)self dailyBriskMinutesStatisticsCount])
  {
    [v20 clearDailyBriskMinutesStatistics];
    dailyBriskMinutesStatisticsCount = [(HDCodableActivityCache *)self dailyBriskMinutesStatisticsCount];
    if (dailyBriskMinutesStatisticsCount)
    {
      v11 = dailyBriskMinutesStatisticsCount;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(HDCodableActivityCache *)self dailyBriskMinutesStatisticsAtIndex:j];
        [v20 addDailyBriskMinutesStatistics:v13];
      }
    }
  }

  v14 = self->_has;
  if ((*&v14 & 0x20000) != 0)
  {
    *(v20 + 18) = self->_sequence;
    *(v20 + 55) |= 0x20000u;
    v14 = self->_has;
    if ((*&v14 & 0x20) == 0)
    {
LABEL_26:
      if ((*&v14 & 2) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_58;
    }
  }

  else if ((*&v14 & 0x20) == 0)
  {
    goto LABEL_26;
  }

  *(v20 + 6) = *&self->_briskMinutesGoal;
  *(v20 + 55) |= 0x20u;
  v14 = self->_has;
  if ((*&v14 & 2) == 0)
  {
LABEL_27:
    if ((*&v14 & 0x2000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v20 + 2) = *&self->_activeHoursGoal;
  *(v20 + 55) |= 2u;
  v14 = self->_has;
  if ((*&v14 & 0x2000) == 0)
  {
LABEL_28:
    if ((*&v14 & 0x4000) == 0)
    {
      goto LABEL_29;
    }

LABEL_60:
    *(v20 + 15) = *&self->_moveMinutesGoal;
    *(v20 + 55) |= 0x4000u;
    if ((*&self->_has & 0x8000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_59:
  *(v20 + 14) = *&self->_moveMinutes;
  *(v20 + 55) |= 0x2000u;
  v14 = self->_has;
  if ((*&v14 & 0x4000) != 0)
  {
    goto LABEL_60;
  }

LABEL_29:
  if ((*&v14 & 0x8000) != 0)
  {
LABEL_30:
    *(v20 + 16) = *&self->_moveMinutesGoalDate;
    *(v20 + 55) |= 0x8000u;
  }

LABEL_31:
  if ([(HDCodableActivityCache *)self dailyMoveMinutesStatisticsCount])
  {
    [v20 clearDailyMoveMinutesStatistics];
    dailyMoveMinutesStatisticsCount = [(HDCodableActivityCache *)self dailyMoveMinutesStatisticsCount];
    if (dailyMoveMinutesStatisticsCount)
    {
      v16 = dailyMoveMinutesStatisticsCount;
      for (k = 0; k != v16; ++k)
      {
        v18 = [(HDCodableActivityCache *)self dailyMoveMinutesStatisticsAtIndex:k];
        [v20 addDailyMoveMinutesStatistics:v18];
      }
    }
  }

  v19 = self->_has;
  if ((*&v19 & 0x40) != 0)
  {
    *(v20 + 7) = *&self->_briskMinutesGoalDate;
    *(v20 + 55) |= 0x40u;
    v19 = self->_has;
    if ((*&v19 & 4) == 0)
    {
LABEL_37:
      if ((*&v19 & 8) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_64;
    }
  }

  else if ((*&v19 & 4) == 0)
  {
    goto LABEL_37;
  }

  *(v20 + 3) = *&self->_activeHoursGoalDate;
  *(v20 + 55) |= 4u;
  v19 = self->_has;
  if ((*&v19 & 8) == 0)
  {
LABEL_38:
    if ((*&v19 & 0x80000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v20 + 4) = self->_activityMoveMode;
  *(v20 + 55) |= 8u;
  v19 = self->_has;
  if ((*&v19 & 0x80000) == 0)
  {
LABEL_39:
    if ((*&v19 & 0x400000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

LABEL_65:
  *(v20 + 20) = self->_version;
  *(v20 + 55) |= 0x80000u;
  if ((*&self->_has & 0x400000) != 0)
  {
LABEL_40:
    *(v20 + 216) = self->_paused;
    *(v20 + 55) |= 0x400000u;
  }

LABEL_41:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HDCodableSample *)self->_sample copyWithZone:zone];
  v7 = *(v5 + 208);
  *(v5 + 208) = v6;

  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    *(v5 + 64) = self->_cacheIndex;
    *(v5 + 220) |= 0x80u;
    has = self->_has;
    if ((*&has & 0x200) == 0)
    {
LABEL_3:
      if ((*&has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_51;
    }
  }

  else if ((*&has & 0x200) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 80) = self->_energyBurned;
  *(v5 + 220) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_4:
    if ((*&has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v5 + 40) = self->_briskMinutes;
  *(v5 + 220) |= 0x10u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_5:
    if ((*&has & 0x40000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(v5 + 8) = self->_activeHours;
  *(v5 + 220) |= 1u;
  has = self->_has;
  if ((*&has & 0x40000) == 0)
  {
LABEL_6:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(v5 + 152) = self->_stepCount;
  *(v5 + 220) |= 0x40000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_7:
    if ((*&has & 0x100000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(v5 + 88) = self->_energyBurnedGoal;
  *(v5 + 220) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x100000) == 0)
  {
LABEL_8:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(v5 + 168) = self->_walkingAndRunningDistance;
  *(v5 + 220) |= 0x100000u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_9:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(v5 + 96) = self->_energyBurnedGoalDate;
  *(v5 + 220) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_10:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(v5 + 72) = self->_deepBreathingDuration;
  *(v5 + 220) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_11:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(v5 + 136) = self->_pushCount;
  *(v5 + 220) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_12:
    if ((*&has & 0x200000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_59:
  *(v5 + 104) = self->_flightsClimbed;
  *(v5 + 220) |= 0x1000u;
  if ((*&self->_has & 0x200000) != 0)
  {
LABEL_13:
    *(v5 + 176) = self->_wheelchairUse;
    *(v5 + 220) |= 0x200000u;
  }

LABEL_14:
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v9 = self->_dailyEnergyBurnedStatistics;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v40;
    do
    {
      v13 = 0;
      do
      {
        if (*v40 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v39 + 1) + 8 * v13) copyWithZone:zone];
        [v5 addDailyEnergyBurnedStatistics:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v11);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v15 = self->_dailyBriskMinutesStatistics;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v36;
    do
    {
      v19 = 0;
      do
      {
        if (*v36 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v35 + 1) + 8 * v19) copyWithZone:zone];
        [v5 addDailyBriskMinutesStatistics:v20];

        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v17);
  }

  v21 = self->_has;
  if ((*&v21 & 0x20000) != 0)
  {
    *(v5 + 144) = self->_sequence;
    *(v5 + 220) |= 0x20000u;
    v21 = self->_has;
    if ((*&v21 & 0x20) == 0)
    {
LABEL_30:
      if ((*&v21 & 2) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_63;
    }
  }

  else if ((*&v21 & 0x20) == 0)
  {
    goto LABEL_30;
  }

  *(v5 + 48) = self->_briskMinutesGoal;
  *(v5 + 220) |= 0x20u;
  v21 = self->_has;
  if ((*&v21 & 2) == 0)
  {
LABEL_31:
    if ((*&v21 & 0x2000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_64;
  }

LABEL_63:
  *(v5 + 16) = self->_activeHoursGoal;
  *(v5 + 220) |= 2u;
  v21 = self->_has;
  if ((*&v21 & 0x2000) == 0)
  {
LABEL_32:
    if ((*&v21 & 0x4000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_65;
  }

LABEL_64:
  *(v5 + 112) = self->_moveMinutes;
  *(v5 + 220) |= 0x2000u;
  v21 = self->_has;
  if ((*&v21 & 0x4000) == 0)
  {
LABEL_33:
    if ((*&v21 & 0x8000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

LABEL_65:
  *(v5 + 120) = self->_moveMinutesGoal;
  *(v5 + 220) |= 0x4000u;
  if ((*&self->_has & 0x8000) != 0)
  {
LABEL_34:
    *(v5 + 128) = self->_moveMinutesGoalDate;
    *(v5 + 220) |= 0x8000u;
  }

LABEL_35:
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v22 = self->_dailyMoveMinutesStatistics;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v31 objects:v43 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v32;
    do
    {
      v26 = 0;
      do
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v31 + 1) + 8 * v26) copyWithZone:{zone, v31}];
        [v5 addDailyMoveMinutesStatistics:v27];

        ++v26;
      }

      while (v24 != v26);
      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v31 objects:v43 count:16];
    }

    while (v24);
  }

  v28 = self->_has;
  if ((*&v28 & 0x40) != 0)
  {
    *(v5 + 56) = self->_briskMinutesGoalDate;
    *(v5 + 220) |= 0x40u;
    v28 = self->_has;
    if ((*&v28 & 4) == 0)
    {
LABEL_44:
      if ((*&v28 & 8) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_69;
    }
  }

  else if ((*&v28 & 4) == 0)
  {
    goto LABEL_44;
  }

  *(v5 + 24) = self->_activeHoursGoalDate;
  *(v5 + 220) |= 4u;
  v28 = self->_has;
  if ((*&v28 & 8) == 0)
  {
LABEL_45:
    if ((*&v28 & 0x80000) == 0)
    {
      goto LABEL_46;
    }

LABEL_70:
    *(v5 + 160) = self->_version;
    *(v5 + 220) |= 0x80000u;
    if ((*&self->_has & 0x400000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

LABEL_69:
  *(v5 + 32) = self->_activityMoveMode;
  *(v5 + 220) |= 8u;
  v28 = self->_has;
  if ((*&v28 & 0x80000) != 0)
  {
    goto LABEL_70;
  }

LABEL_46:
  if ((*&v28 & 0x400000) != 0)
  {
LABEL_47:
    *(v5 + 216) = self->_paused;
    *(v5 + 220) |= 0x400000u;
  }

LABEL_48:
  v29 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_128;
  }

  sample = self->_sample;
  if (sample | *(equalCopy + 26))
  {
    if (![(HDCodableSample *)sample isEqual:?])
    {
      goto LABEL_128;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 55);
  if ((*&has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_cacheIndex != *(equalCopy + 8))
    {
      goto LABEL_128;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_128;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v7 & 0x200) == 0 || self->_energyBurned != *(equalCopy + 10))
    {
      goto LABEL_128;
    }
  }

  else if ((v7 & 0x200) != 0)
  {
    goto LABEL_128;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_briskMinutes != *(equalCopy + 5))
    {
      goto LABEL_128;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_128;
  }

  if (*&has)
  {
    if ((v7 & 1) == 0 || self->_activeHours != *(equalCopy + 1))
    {
      goto LABEL_128;
    }
  }

  else if (v7)
  {
    goto LABEL_128;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v7 & 0x40000) == 0 || self->_stepCount != *(equalCopy + 19))
    {
      goto LABEL_128;
    }
  }

  else if ((v7 & 0x40000) != 0)
  {
    goto LABEL_128;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v7 & 0x400) == 0 || self->_energyBurnedGoal != *(equalCopy + 11))
    {
      goto LABEL_128;
    }
  }

  else if ((v7 & 0x400) != 0)
  {
    goto LABEL_128;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v7 & 0x100000) == 0 || self->_walkingAndRunningDistance != *(equalCopy + 21))
    {
      goto LABEL_128;
    }
  }

  else if ((v7 & 0x100000) != 0)
  {
    goto LABEL_128;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v7 & 0x800) == 0 || self->_energyBurnedGoalDate != *(equalCopy + 12))
    {
      goto LABEL_128;
    }
  }

  else if ((v7 & 0x800) != 0)
  {
    goto LABEL_128;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v7 & 0x100) == 0 || self->_deepBreathingDuration != *(equalCopy + 9))
    {
      goto LABEL_128;
    }
  }

  else if ((v7 & 0x100) != 0)
  {
    goto LABEL_128;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v7 & 0x10000) == 0 || self->_pushCount != *(equalCopy + 17))
    {
      goto LABEL_128;
    }
  }

  else if ((v7 & 0x10000) != 0)
  {
    goto LABEL_128;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v7 & 0x1000) == 0 || self->_flightsClimbed != *(equalCopy + 13))
    {
      goto LABEL_128;
    }
  }

  else if ((v7 & 0x1000) != 0)
  {
    goto LABEL_128;
  }

  if ((*&has & 0x200000) != 0)
  {
    if ((v7 & 0x200000) == 0 || self->_wheelchairUse != *(equalCopy + 22))
    {
      goto LABEL_128;
    }
  }

  else if ((v7 & 0x200000) != 0)
  {
    goto LABEL_128;
  }

  dailyEnergyBurnedStatistics = self->_dailyEnergyBurnedStatistics;
  if (dailyEnergyBurnedStatistics | *(equalCopy + 24) && ![(NSMutableArray *)dailyEnergyBurnedStatistics isEqual:?])
  {
    goto LABEL_128;
  }

  dailyBriskMinutesStatistics = self->_dailyBriskMinutesStatistics;
  if (dailyBriskMinutesStatistics | *(equalCopy + 23))
  {
    if (![(NSMutableArray *)dailyBriskMinutesStatistics isEqual:?])
    {
      goto LABEL_128;
    }
  }

  v10 = self->_has;
  v11 = *(equalCopy + 55);
  if ((*&v10 & 0x20000) != 0)
  {
    if ((v11 & 0x20000) == 0 || self->_sequence != *(equalCopy + 18))
    {
      goto LABEL_128;
    }
  }

  else if ((v11 & 0x20000) != 0)
  {
    goto LABEL_128;
  }

  if ((*&v10 & 0x20) != 0)
  {
    if ((v11 & 0x20) == 0 || self->_briskMinutesGoal != *(equalCopy + 6))
    {
      goto LABEL_128;
    }
  }

  else if ((v11 & 0x20) != 0)
  {
    goto LABEL_128;
  }

  if ((*&v10 & 2) != 0)
  {
    if ((v11 & 2) == 0 || self->_activeHoursGoal != *(equalCopy + 2))
    {
      goto LABEL_128;
    }
  }

  else if ((v11 & 2) != 0)
  {
    goto LABEL_128;
  }

  if ((*&v10 & 0x2000) != 0)
  {
    if ((v11 & 0x2000) == 0 || self->_moveMinutes != *(equalCopy + 14))
    {
      goto LABEL_128;
    }
  }

  else if ((v11 & 0x2000) != 0)
  {
    goto LABEL_128;
  }

  if ((*&v10 & 0x4000) != 0)
  {
    if ((v11 & 0x4000) == 0 || self->_moveMinutesGoal != *(equalCopy + 15))
    {
      goto LABEL_128;
    }
  }

  else if ((v11 & 0x4000) != 0)
  {
    goto LABEL_128;
  }

  if ((*&v10 & 0x8000) != 0)
  {
    if ((v11 & 0x8000) == 0 || self->_moveMinutesGoalDate != *(equalCopy + 16))
    {
      goto LABEL_128;
    }
  }

  else if ((v11 & 0x8000) != 0)
  {
    goto LABEL_128;
  }

  dailyMoveMinutesStatistics = self->_dailyMoveMinutesStatistics;
  if (dailyMoveMinutesStatistics | *(equalCopy + 25))
  {
    if (![(NSMutableArray *)dailyMoveMinutesStatistics isEqual:?])
    {
      goto LABEL_128;
    }

    v10 = self->_has;
    v11 = *(equalCopy + 55);
  }

  if ((*&v10 & 0x40) != 0)
  {
    if ((v11 & 0x40) == 0 || self->_briskMinutesGoalDate != *(equalCopy + 7))
    {
      goto LABEL_128;
    }
  }

  else if ((v11 & 0x40) != 0)
  {
    goto LABEL_128;
  }

  if ((*&v10 & 4) != 0)
  {
    if ((v11 & 4) == 0 || self->_activeHoursGoalDate != *(equalCopy + 3))
    {
      goto LABEL_128;
    }
  }

  else if ((v11 & 4) != 0)
  {
    goto LABEL_128;
  }

  if ((*&v10 & 8) != 0)
  {
    if ((v11 & 8) == 0 || self->_activityMoveMode != *(equalCopy + 4))
    {
      goto LABEL_128;
    }
  }

  else if ((v11 & 8) != 0)
  {
    goto LABEL_128;
  }

  if ((*&v10 & 0x80000) != 0)
  {
    if ((v11 & 0x80000) == 0 || self->_version != *(equalCopy + 20))
    {
      goto LABEL_128;
    }
  }

  else if ((v11 & 0x80000) != 0)
  {
    goto LABEL_128;
  }

  if ((*&v10 & 0x400000) != 0)
  {
    if ((v11 & 0x400000) != 0)
    {
      if (self->_paused)
      {
        if (*(equalCopy + 216))
        {
LABEL_126:
          v13 = 1;
          goto LABEL_129;
        }
      }

      else if (!*(equalCopy + 216))
      {
        goto LABEL_126;
      }
    }

LABEL_128:
    v13 = 0;
    goto LABEL_129;
  }

  v13 = (v11 & 0x400000) == 0;
LABEL_129:

  return v13;
}

- (unint64_t)hash
{
  v87 = [(HDCodableSample *)self->_sample hash];
  has = self->_has;
  if ((*&has & 0x80) != 0)
  {
    v86 = 2654435761 * self->_cacheIndex;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v86 = 0;
  if ((*&has & 0x200) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  energyBurned = self->_energyBurned;
  if (energyBurned < 0.0)
  {
    energyBurned = -energyBurned;
  }

  *v3.i64 = floor(energyBurned + 0.5);
  v7 = (energyBurned - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v3 = vbslq_s8(vnegq_f64(v8), v4, v3);
  v9 = 2654435761u * *v3.i64;
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
  if ((*&has & 0x10) != 0)
  {
    briskMinutes = self->_briskMinutes;
    if (briskMinutes < 0.0)
    {
      briskMinutes = -briskMinutes;
    }

    *v3.i64 = floor(briskMinutes + 0.5);
    v12 = (briskMinutes - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v13), v4, v3);
    v10 = 2654435761u * *v3.i64;
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

  if (*&has)
  {
    activeHours = self->_activeHours;
    if (activeHours < 0.0)
    {
      activeHours = -activeHours;
    }

    *v3.i64 = floor(activeHours + 0.5);
    v16 = (activeHours - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v17), v4, v3);
    v14 = 2654435761u * *v3.i64;
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

  if ((*&has & 0x40000) != 0)
  {
    v82 = 2654435761 * self->_stepCount;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_29;
    }

LABEL_34:
    v21 = 0;
    goto LABEL_35;
  }

  v82 = 0;
  if ((*&has & 0x400) == 0)
  {
    goto LABEL_34;
  }

LABEL_29:
  energyBurnedGoal = self->_energyBurnedGoal;
  if (energyBurnedGoal < 0.0)
  {
    energyBurnedGoal = -energyBurnedGoal;
  }

  *v3.i64 = floor(energyBurnedGoal + 0.5);
  v19 = (energyBurnedGoal - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v20.f64[0] = NAN;
  v20.f64[1] = NAN;
  v3 = vbslq_s8(vnegq_f64(v20), v4, v3);
  v21 = 2654435761u * *v3.i64;
  if (v19 >= 0.0)
  {
    if (v19 > 0.0)
    {
      v21 += v19;
    }
  }

  else
  {
    v21 -= fabs(v19);
  }

LABEL_35:
  if ((*&has & 0x100000) != 0)
  {
    walkingAndRunningDistance = self->_walkingAndRunningDistance;
    if (walkingAndRunningDistance < 0.0)
    {
      walkingAndRunningDistance = -walkingAndRunningDistance;
    }

    *v3.i64 = floor(walkingAndRunningDistance + 0.5);
    v24 = (walkingAndRunningDistance - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v25.f64[0] = NAN;
    v25.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v25), v4, v3);
    v22 = 2654435761u * *v3.i64;
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

  if ((*&has & 0x800) != 0)
  {
    energyBurnedGoalDate = self->_energyBurnedGoalDate;
    if (energyBurnedGoalDate < 0.0)
    {
      energyBurnedGoalDate = -energyBurnedGoalDate;
    }

    *v3.i64 = floor(energyBurnedGoalDate + 0.5);
    v28 = (energyBurnedGoalDate - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v29.f64[0] = NAN;
    v29.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v29), v4, v3);
    v26 = 2654435761u * *v3.i64;
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

  if ((*&has & 0x100) != 0)
  {
    deepBreathingDuration = self->_deepBreathingDuration;
    if (deepBreathingDuration < 0.0)
    {
      deepBreathingDuration = -deepBreathingDuration;
    }

    *v3.i64 = floor(deepBreathingDuration + 0.5);
    v32 = (deepBreathingDuration - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v33.f64[0] = NAN;
    v33.f64[1] = NAN;
    v30 = 2654435761u * *vbslq_s8(vnegq_f64(v33), v4, v3).i64;
    if (v32 >= 0.0)
    {
      if (v32 > 0.0)
      {
        v30 += v32;
      }
    }

    else
    {
      v30 -= fabs(v32);
    }
  }

  else
  {
    v30 = 0;
  }

  if ((*&has & 0x10000) != 0)
  {
    v79 = 2654435761 * self->_pushCount;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_63;
    }
  }

  else
  {
    v79 = 0;
    if ((*&has & 0x1000) != 0)
    {
LABEL_63:
      v78 = 2654435761 * self->_flightsClimbed;
      goto LABEL_66;
    }
  }

  v78 = 0;
LABEL_66:
  v84 = v10;
  v85 = v9;
  v83 = v14;
  v80 = v22;
  v81 = v21;
  if ((*&has & 0x200000) != 0)
  {
    v77 = 2654435761 * self->_wheelchairUse;
  }

  else
  {
    v77 = 0;
  }

  v76 = [(NSMutableArray *)self->_dailyEnergyBurnedStatistics hash];
  v75 = [(NSMutableArray *)self->_dailyBriskMinutesStatistics hash];
  v36 = self->_has;
  if ((*&v36 & 0x20000) != 0)
  {
    v73 = 2654435761 * self->_sequence;
    if ((*&v36 & 0x20) != 0)
    {
      goto LABEL_71;
    }

LABEL_76:
    v40 = 0;
    goto LABEL_77;
  }

  v73 = 0;
  if ((*&v36 & 0x20) == 0)
  {
    goto LABEL_76;
  }

LABEL_71:
  briskMinutesGoal = self->_briskMinutesGoal;
  if (briskMinutesGoal < 0.0)
  {
    briskMinutesGoal = -briskMinutesGoal;
  }

  *v34.i64 = floor(briskMinutesGoal + 0.5);
  v38 = (briskMinutesGoal - *v34.i64) * 1.84467441e19;
  *v35.i64 = *v34.i64 - trunc(*v34.i64 * 5.42101086e-20) * 1.84467441e19;
  v39.f64[0] = NAN;
  v39.f64[1] = NAN;
  v34 = vbslq_s8(vnegq_f64(v39), v35, v34);
  v40 = 2654435761u * *v34.i64;
  if (v38 >= 0.0)
  {
    if (v38 > 0.0)
    {
      v40 += v38;
    }
  }

  else
  {
    v40 -= fabs(v38);
  }

LABEL_77:
  if ((*&v36 & 2) != 0)
  {
    activeHoursGoal = self->_activeHoursGoal;
    if (activeHoursGoal < 0.0)
    {
      activeHoursGoal = -activeHoursGoal;
    }

    *v34.i64 = floor(activeHoursGoal + 0.5);
    v43 = (activeHoursGoal - *v34.i64) * 1.84467441e19;
    *v35.i64 = *v34.i64 - trunc(*v34.i64 * 5.42101086e-20) * 1.84467441e19;
    v44.f64[0] = NAN;
    v44.f64[1] = NAN;
    v34 = vbslq_s8(vnegq_f64(v44), v35, v34);
    v41 = 2654435761u * *v34.i64;
    if (v43 >= 0.0)
    {
      if (v43 > 0.0)
      {
        v41 += v43;
      }
    }

    else
    {
      v41 -= fabs(v43);
    }
  }

  else
  {
    v41 = 0;
  }

  if ((*&v36 & 0x2000) != 0)
  {
    moveMinutes = self->_moveMinutes;
    if (moveMinutes < 0.0)
    {
      moveMinutes = -moveMinutes;
    }

    *v34.i64 = floor(moveMinutes + 0.5);
    v47 = (moveMinutes - *v34.i64) * 1.84467441e19;
    *v35.i64 = *v34.i64 - trunc(*v34.i64 * 5.42101086e-20) * 1.84467441e19;
    v48.f64[0] = NAN;
    v48.f64[1] = NAN;
    v34 = vbslq_s8(vnegq_f64(v48), v35, v34);
    v45 = 2654435761u * *v34.i64;
    if (v47 >= 0.0)
    {
      if (v47 > 0.0)
      {
        v45 += v47;
      }
    }

    else
    {
      v45 -= fabs(v47);
    }
  }

  else
  {
    v45 = 0;
  }

  if ((*&v36 & 0x4000) != 0)
  {
    moveMinutesGoal = self->_moveMinutesGoal;
    if (moveMinutesGoal < 0.0)
    {
      moveMinutesGoal = -moveMinutesGoal;
    }

    *v34.i64 = floor(moveMinutesGoal + 0.5);
    v51 = (moveMinutesGoal - *v34.i64) * 1.84467441e19;
    *v35.i64 = *v34.i64 - trunc(*v34.i64 * 5.42101086e-20) * 1.84467441e19;
    v52.f64[0] = NAN;
    v52.f64[1] = NAN;
    v34 = vbslq_s8(vnegq_f64(v52), v35, v34);
    v49 = 2654435761u * *v34.i64;
    if (v51 >= 0.0)
    {
      if (v51 > 0.0)
      {
        v49 += v51;
      }
    }

    else
    {
      v49 -= fabs(v51);
    }
  }

  else
  {
    v49 = 0;
  }

  if ((*&v36 & 0x8000) != 0)
  {
    moveMinutesGoalDate = self->_moveMinutesGoalDate;
    if (moveMinutesGoalDate < 0.0)
    {
      moveMinutesGoalDate = -moveMinutesGoalDate;
    }

    *v34.i64 = floor(moveMinutesGoalDate + 0.5);
    v55 = (moveMinutesGoalDate - *v34.i64) * 1.84467441e19;
    *v35.i64 = *v34.i64 - trunc(*v34.i64 * 5.42101086e-20) * 1.84467441e19;
    v56.f64[0] = NAN;
    v56.f64[1] = NAN;
    v53 = 2654435761u * *vbslq_s8(vnegq_f64(v56), v35, v34).i64;
    if (v55 >= 0.0)
    {
      if (v55 > 0.0)
      {
        v53 += v55;
      }
    }

    else
    {
      v53 -= fabs(v55);
    }
  }

  else
  {
    v53 = 0;
  }

  v57 = [(NSMutableArray *)self->_dailyMoveMinutesStatistics hash];
  v60 = self->_has;
  if ((*&v60 & 0x40) != 0)
  {
    briskMinutesGoalDate = self->_briskMinutesGoalDate;
    if (briskMinutesGoalDate < 0.0)
    {
      briskMinutesGoalDate = -briskMinutesGoalDate;
    }

    *v58.i64 = floor(briskMinutesGoalDate + 0.5);
    v63 = (briskMinutesGoalDate - *v58.i64) * 1.84467441e19;
    *v59.i64 = *v58.i64 - trunc(*v58.i64 * 5.42101086e-20) * 1.84467441e19;
    v64.f64[0] = NAN;
    v64.f64[1] = NAN;
    v58 = vbslq_s8(vnegq_f64(v64), v59, v58);
    v61 = 2654435761u * *v58.i64;
    if (v63 >= 0.0)
    {
      if (v63 > 0.0)
      {
        v61 += v63;
      }
    }

    else
    {
      v61 -= fabs(v63);
    }
  }

  else
  {
    v61 = 0;
  }

  if ((*&v60 & 4) != 0)
  {
    activeHoursGoalDate = self->_activeHoursGoalDate;
    if (activeHoursGoalDate < 0.0)
    {
      activeHoursGoalDate = -activeHoursGoalDate;
    }

    *v58.i64 = floor(activeHoursGoalDate + 0.5);
    v67 = (activeHoursGoalDate - *v58.i64) * 1.84467441e19;
    *v59.i64 = *v58.i64 - trunc(*v58.i64 * 5.42101086e-20) * 1.84467441e19;
    v68.f64[0] = NAN;
    v68.f64[1] = NAN;
    v65 = 2654435761u * *vbslq_s8(vnegq_f64(v68), v59, v58).i64;
    if (v67 >= 0.0)
    {
      if (v67 > 0.0)
      {
        v65 += v67;
      }
    }

    else
    {
      v65 -= fabs(v67);
    }
  }

  else
  {
    v65 = 0;
  }

  if ((*&v60 & 8) == 0)
  {
    v69 = 0;
    if ((*&v60 & 0x80000) != 0)
    {
      goto LABEL_129;
    }

LABEL_132:
    v70 = 0;
    if ((*&v60 & 0x400000) != 0)
    {
      goto LABEL_130;
    }

LABEL_133:
    v71 = 0;
    return v86 ^ v87 ^ v85 ^ v84 ^ v83 ^ v82 ^ v81 ^ v80 ^ v26 ^ v30 ^ v79 ^ v78 ^ v77 ^ v76 ^ v75 ^ v74 ^ v40 ^ v41 ^ v45 ^ v49 ^ v53 ^ v57 ^ v61 ^ v65 ^ v69 ^ v70 ^ v71;
  }

  v69 = 2654435761 * self->_activityMoveMode;
  if ((*&v60 & 0x80000) == 0)
  {
    goto LABEL_132;
  }

LABEL_129:
  v70 = 2654435761 * self->_version;
  if ((*&v60 & 0x400000) == 0)
  {
    goto LABEL_133;
  }

LABEL_130:
  v71 = 2654435761 * self->_paused;
  return v86 ^ v87 ^ v85 ^ v84 ^ v83 ^ v82 ^ v81 ^ v80 ^ v26 ^ v30 ^ v79 ^ v78 ^ v77 ^ v76 ^ v75 ^ v74 ^ v40 ^ v41 ^ v45 ^ v49 ^ v53 ^ v57 ^ v61 ^ v65 ^ v69 ^ v70 ^ v71;
}

- (void)mergeFrom:(id)from
{
  v41 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  sample = self->_sample;
  v6 = *(fromCopy + 26);
  if (sample)
  {
    if (v6)
    {
      [(HDCodableSample *)sample mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(HDCodableActivityCache *)self setSample:?];
  }

  v7 = *(fromCopy + 55);
  if ((v7 & 0x80) != 0)
  {
    self->_cacheIndex = *(fromCopy + 8);
    *&self->_has |= 0x80u;
    v7 = *(fromCopy + 55);
    if ((v7 & 0x200) == 0)
    {
LABEL_8:
      if ((v7 & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_56;
    }
  }

  else if ((v7 & 0x200) == 0)
  {
    goto LABEL_8;
  }

  self->_energyBurned = *(fromCopy + 10);
  *&self->_has |= 0x200u;
  v7 = *(fromCopy + 55);
  if ((v7 & 0x10) == 0)
  {
LABEL_9:
    if ((v7 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_briskMinutes = *(fromCopy + 5);
  *&self->_has |= 0x10u;
  v7 = *(fromCopy + 55);
  if ((v7 & 1) == 0)
  {
LABEL_10:
    if ((v7 & 0x40000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_activeHours = *(fromCopy + 1);
  *&self->_has |= 1u;
  v7 = *(fromCopy + 55);
  if ((v7 & 0x40000) == 0)
  {
LABEL_11:
    if ((v7 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_stepCount = *(fromCopy + 19);
  *&self->_has |= 0x40000u;
  v7 = *(fromCopy + 55);
  if ((v7 & 0x400) == 0)
  {
LABEL_12:
    if ((v7 & 0x100000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_energyBurnedGoal = *(fromCopy + 11);
  *&self->_has |= 0x400u;
  v7 = *(fromCopy + 55);
  if ((v7 & 0x100000) == 0)
  {
LABEL_13:
    if ((v7 & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_walkingAndRunningDistance = *(fromCopy + 21);
  *&self->_has |= 0x100000u;
  v7 = *(fromCopy + 55);
  if ((v7 & 0x800) == 0)
  {
LABEL_14:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_energyBurnedGoalDate = *(fromCopy + 12);
  *&self->_has |= 0x800u;
  v7 = *(fromCopy + 55);
  if ((v7 & 0x100) == 0)
  {
LABEL_15:
    if ((v7 & 0x10000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_deepBreathingDuration = *(fromCopy + 9);
  *&self->_has |= 0x100u;
  v7 = *(fromCopy + 55);
  if ((v7 & 0x10000) == 0)
  {
LABEL_16:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_pushCount = *(fromCopy + 17);
  *&self->_has |= 0x10000u;
  v7 = *(fromCopy + 55);
  if ((v7 & 0x1000) == 0)
  {
LABEL_17:
    if ((v7 & 0x200000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_64:
  self->_flightsClimbed = *(fromCopy + 13);
  *&self->_has |= 0x1000u;
  if ((*(fromCopy + 55) & 0x200000) != 0)
  {
LABEL_18:
    self->_wheelchairUse = *(fromCopy + 22);
    *&self->_has |= 0x200000u;
  }

LABEL_19:
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v8 = *(fromCopy + 24);
  v9 = [v8 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(HDCodableActivityCache *)self addDailyEnergyBurnedStatistics:*(*(&v34 + 1) + 8 * i)];
      }

      v10 = [v8 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v10);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v13 = *(fromCopy + 23);
  v14 = [v13 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v31;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(HDCodableActivityCache *)self addDailyBriskMinutesStatistics:*(*(&v30 + 1) + 8 * j)];
      }

      v15 = [v13 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v15);
  }

  v18 = *(fromCopy + 55);
  if ((v18 & 0x20000) != 0)
  {
    self->_sequence = *(fromCopy + 18);
    *&self->_has |= 0x20000u;
    v18 = *(fromCopy + 55);
    if ((v18 & 0x20) == 0)
    {
LABEL_35:
      if ((v18 & 2) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_68;
    }
  }

  else if ((v18 & 0x20) == 0)
  {
    goto LABEL_35;
  }

  self->_briskMinutesGoal = *(fromCopy + 6);
  *&self->_has |= 0x20u;
  v18 = *(fromCopy + 55);
  if ((v18 & 2) == 0)
  {
LABEL_36:
    if ((v18 & 0x2000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_69;
  }

LABEL_68:
  self->_activeHoursGoal = *(fromCopy + 2);
  *&self->_has |= 2u;
  v18 = *(fromCopy + 55);
  if ((v18 & 0x2000) == 0)
  {
LABEL_37:
    if ((v18 & 0x4000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_70;
  }

LABEL_69:
  self->_moveMinutes = *(fromCopy + 14);
  *&self->_has |= 0x2000u;
  v18 = *(fromCopy + 55);
  if ((v18 & 0x4000) == 0)
  {
LABEL_38:
    if ((v18 & 0x8000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

LABEL_70:
  self->_moveMinutesGoal = *(fromCopy + 15);
  *&self->_has |= 0x4000u;
  if ((*(fromCopy + 55) & 0x8000) != 0)
  {
LABEL_39:
    self->_moveMinutesGoalDate = *(fromCopy + 16);
    *&self->_has |= 0x8000u;
  }

LABEL_40:
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = *(fromCopy + 25);
  v20 = [v19 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v27;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(HDCodableActivityCache *)self addDailyMoveMinutesStatistics:*(*(&v26 + 1) + 8 * k), v26];
      }

      v21 = [v19 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v21);
  }

  v24 = *(fromCopy + 55);
  if ((v24 & 0x40) != 0)
  {
    self->_briskMinutesGoalDate = *(fromCopy + 7);
    *&self->_has |= 0x40u;
    v24 = *(fromCopy + 55);
    if ((v24 & 4) == 0)
    {
LABEL_49:
      if ((v24 & 8) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_74;
    }
  }

  else if ((v24 & 4) == 0)
  {
    goto LABEL_49;
  }

  self->_activeHoursGoalDate = *(fromCopy + 3);
  *&self->_has |= 4u;
  v24 = *(fromCopy + 55);
  if ((v24 & 8) == 0)
  {
LABEL_50:
    if ((v24 & 0x80000) == 0)
    {
      goto LABEL_51;
    }

LABEL_75:
    self->_version = *(fromCopy + 20);
    *&self->_has |= 0x80000u;
    if ((*(fromCopy + 55) & 0x400000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

LABEL_74:
  self->_activityMoveMode = *(fromCopy + 4);
  *&self->_has |= 8u;
  v24 = *(fromCopy + 55);
  if ((v24 & 0x80000) != 0)
  {
    goto LABEL_75;
  }

LABEL_51:
  if ((v24 & 0x400000) != 0)
  {
LABEL_52:
    self->_paused = *(fromCopy + 216);
    *&self->_has |= 0x400000u;
  }

LABEL_53:

  v25 = *MEMORY[0x277D85DE8];
}

@end