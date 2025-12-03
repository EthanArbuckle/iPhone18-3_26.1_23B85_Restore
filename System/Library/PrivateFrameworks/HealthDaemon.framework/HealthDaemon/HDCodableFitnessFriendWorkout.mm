@interface HDCodableFitnessFriendWorkout
- (BOOL)applyToObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDuration:(BOOL)duration;
- (void)setHasGoal:(BOOL)goal;
- (void)setHasGoalType:(BOOL)type;
- (void)setHasIsIndoorWorkout:(BOOL)workout;
- (void)setHasIsWatchWorkout:(BOOL)workout;
- (void)setHasTotalBasalEnergyBurnedInCanonicalUnit:(BOOL)unit;
- (void)setHasTotalDistanceInCanonicalUnit:(BOOL)unit;
- (void)setHasTotalEnergyBurnedInCanonicalUnit:(BOOL)unit;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation HDCodableFitnessFriendWorkout

- (BOOL)applyToObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sample = [(HDCodableFitnessFriendWorkout *)self sample];
    v6 = [sample applyToObject:objectCopy];
    if (v6)
    {
      if ([(HDCodableFitnessFriendWorkout *)self hasFriendUUID])
      {
        v7 = MEMORY[0x277CCAD78];
        friendUUID = [(HDCodableFitnessFriendWorkout *)self friendUUID];
        v9 = [v7 hk_UUIDWithData:friendUUID];

        [objectCopy setFriendUUID:v9];
      }

      [(HDCodableFitnessFriendWorkout *)self duration];
      [objectCopy setDuration:?];
      if ([(HDCodableFitnessFriendWorkout *)self hasTotalEnergyBurnedInCanonicalUnit])
      {
        v10 = MEMORY[0x277CCD7E8];
        v11 = _HKWorkoutCanonicalEnergyBurnedUnit();
        [(HDCodableFitnessFriendWorkout *)self totalEnergyBurnedInCanonicalUnit];
        v12 = [v10 quantityWithUnit:v11 doubleValue:?];

        [objectCopy setTotalEnergyBurned:v12];
      }

      if ([(HDCodableFitnessFriendWorkout *)self hasTotalBasalEnergyBurnedInCanonicalUnit])
      {
        v13 = MEMORY[0x277CCD7E8];
        v14 = _HKWorkoutCanonicalEnergyBurnedUnit();
        [(HDCodableFitnessFriendWorkout *)self totalBasalEnergyBurnedInCanonicalUnit];
        v15 = [v13 quantityWithUnit:v14 doubleValue:?];

        [objectCopy setTotalBasalEnergyBurned:v15];
      }

      if ([(HDCodableFitnessFriendWorkout *)self hasTotalDistanceInCanonicalUnit])
      {
        v16 = MEMORY[0x277CCD7E8];
        v17 = _HKWorkoutCanonicalDistanceUnit();
        [(HDCodableFitnessFriendWorkout *)self totalDistanceInCanonicalUnit];
        v18 = [v16 quantityWithUnit:v17 doubleValue:?];

        [objectCopy setTotalDistance:v18];
      }

      [objectCopy setWorkoutActivityType:{-[HDCodableFitnessFriendWorkout type](self, "type")}];
      [objectCopy setGoalType:{-[HDCodableFitnessFriendWorkout goalType](self, "goalType")}];
      if ([(HDCodableFitnessFriendWorkout *)self hasGoal])
      {
        [objectCopy goalType];
        if (_HKWorkoutGoalTypeIsValidForGoal())
        {
          v19 = MEMORY[0x277CCD7E8];
          [(HDCodableFitnessFriendWorkout *)self goalType];
          v20 = _HKWorkoutCanonicalUnitForGoalType();
          [(HDCodableFitnessFriendWorkout *)self goal];
          v21 = [v19 quantityWithUnit:v20 doubleValue:?];

          [objectCopy setGoal:v21];
        }
      }

      bundleID = [(HDCodableFitnessFriendWorkout *)self bundleID];
      [objectCopy setBundleID:bundleID];

      [objectCopy setIsWatchWorkout:{-[HDCodableFitnessFriendWorkout isWatchWorkout](self, "isWatchWorkout") != 0}];
      [objectCopy setIsIndoorWorkout:{-[HDCodableFitnessFriendWorkout isIndoorWorkout](self, "isIndoorWorkout") != 0}];
      [objectCopy setAmm:{-[HDCodableFitnessFriendWorkout amm](self, "amm")}];
      if ([(HDCodableFitnessFriendWorkout *)self hasDeviceManufacturer])
      {
        deviceManufacturer = [(HDCodableFitnessFriendWorkout *)self deviceManufacturer];
        [objectCopy setDeviceManufacturer:deviceManufacturer];
      }

      if ([(HDCodableFitnessFriendWorkout *)self hasDeviceModel])
      {
        deviceModel = [(HDCodableFitnessFriendWorkout *)self deviceModel];
        [objectCopy setDeviceModel:deviceModel];
      }

      seymourCatalogWorkoutIdentifier = [(HDCodableFitnessFriendWorkout *)self seymourCatalogWorkoutIdentifier];

      if (seymourCatalogWorkoutIdentifier)
      {
        seymourCatalogWorkoutIdentifier2 = [(HDCodableFitnessFriendWorkout *)self seymourCatalogWorkoutIdentifier];
        [objectCopy setSeymourCatalogWorkoutIdentifier:seymourCatalogWorkoutIdentifier2];
      }

      seymourMediaType = [(HDCodableFitnessFriendWorkout *)self seymourMediaType];

      if (seymourMediaType)
      {
        seymourMediaType2 = [(HDCodableFitnessFriendWorkout *)self seymourMediaType];
        [objectCopy setSeymourMediaType:seymourMediaType2];
      }
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)setHasType:(BOOL)type
{
  if (type)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasTotalEnergyBurnedInCanonicalUnit:(BOOL)unit
{
  if (unit)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasTotalBasalEnergyBurnedInCanonicalUnit:(BOOL)unit
{
  if (unit)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasTotalDistanceInCanonicalUnit:(BOOL)unit
{
  if (unit)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasGoalType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasGoal:(BOOL)goal
{
  if (goal)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasIsWatchWorkout:(BOOL)workout
{
  if (workout)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasIsIndoorWorkout:(BOOL)workout
{
  if (workout)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableFitnessFriendWorkout;
  v4 = [(HDCodableFitnessFriendWorkout *)&v8 description];
  dictionaryRepresentation = [(HDCodableFitnessFriendWorkout *)self dictionaryRepresentation];
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

  friendUUID = self->_friendUUID;
  if (friendUUID)
  {
    [dictionary setObject:friendUUID forKey:@"friendUUID"];
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_type];
    [dictionary setObject:v19 forKey:@"type"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 0x100) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_34;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_7;
  }

  v20 = [MEMORY[0x277CCABB0] numberWithDouble:self->_duration];
  [dictionary setObject:v20 forKey:@"duration"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  v21 = [MEMORY[0x277CCABB0] numberWithDouble:self->_totalEnergyBurnedInCanonicalUnit];
  [dictionary setObject:v21 forKey:@"totalEnergyBurnedInCanonicalUnit"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  v22 = [MEMORY[0x277CCABB0] numberWithDouble:self->_totalBasalEnergyBurnedInCanonicalUnit];
  [dictionary setObject:v22 forKey:@"totalBasalEnergyBurnedInCanonicalUnit"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  v23 = [MEMORY[0x277CCABB0] numberWithDouble:self->_totalDistanceInCanonicalUnit];
  [dictionary setObject:v23 forKey:@"totalDistanceInCanonicalUnit"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_11:
    if ((has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_37:
  v24 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_goalType];
  [dictionary setObject:v24 forKey:@"goalType"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_12:
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_goal];
    [dictionary setObject:v8 forKey:@"goal"];
  }

LABEL_13:
  bundleID = self->_bundleID;
  if (bundleID)
  {
    [dictionary setObject:bundleID forKey:@"bundleID"];
  }

  v10 = self->_has;
  if ((v10 & 0x20) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_isWatchWorkout];
    [dictionary setObject:v11 forKey:@"isWatchWorkout"];

    v10 = self->_has;
  }

  if ((v10 & 0x10) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_isIndoorWorkout];
    [dictionary setObject:v12 forKey:@"isIndoorWorkout"];
  }

  deviceManufacturer = self->_deviceManufacturer;
  if (deviceManufacturer)
  {
    [dictionary setObject:deviceManufacturer forKey:@"deviceManufacturer"];
  }

  deviceModel = self->_deviceModel;
  if (deviceModel)
  {
    [dictionary setObject:deviceModel forKey:@"deviceModel"];
  }

  if (*&self->_has)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_amm];
    [dictionary setObject:v15 forKey:@"amm"];
  }

  seymourCatalogWorkoutIdentifier = self->_seymourCatalogWorkoutIdentifier;
  if (seymourCatalogWorkoutIdentifier)
  {
    [dictionary setObject:seymourCatalogWorkoutIdentifier forKey:@"seymourCatalogWorkoutIdentifier"];
  }

  seymourMediaType = self->_seymourMediaType;
  if (seymourMediaType)
  {
    [dictionary setObject:seymourMediaType forKey:@"seymourMediaType"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v17 = toCopy;
  if (self->_sample)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v17;
  }

  if (self->_friendUUID)
  {
    PBDataWriterWriteDataField();
    toCopy = v17;
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt64Field();
    toCopy = v17;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 0x100) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_34;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_7;
  }

  duration = self->_duration;
  PBDataWriterWriteDoubleField();
  toCopy = v17;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  totalEnergyBurnedInCanonicalUnit = self->_totalEnergyBurnedInCanonicalUnit;
  PBDataWriterWriteDoubleField();
  toCopy = v17;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  totalBasalEnergyBurnedInCanonicalUnit = self->_totalBasalEnergyBurnedInCanonicalUnit;
  PBDataWriterWriteDoubleField();
  toCopy = v17;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  totalDistanceInCanonicalUnit = self->_totalDistanceInCanonicalUnit;
  PBDataWriterWriteDoubleField();
  toCopy = v17;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_11:
    if ((has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_37:
  goalType = self->_goalType;
  PBDataWriterWriteInt64Field();
  toCopy = v17;
  if ((*&self->_has & 4) != 0)
  {
LABEL_12:
    goal = self->_goal;
    PBDataWriterWriteDoubleField();
    toCopy = v17;
  }

LABEL_13:
  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  v7 = self->_has;
  if ((v7 & 0x20) != 0)
  {
    isWatchWorkout = self->_isWatchWorkout;
    PBDataWriterWriteInt64Field();
    toCopy = v17;
    v7 = self->_has;
  }

  if ((v7 & 0x10) != 0)
  {
    isIndoorWorkout = self->_isIndoorWorkout;
    PBDataWriterWriteInt64Field();
    toCopy = v17;
  }

  if (self->_deviceManufacturer)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  if (self->_deviceModel)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  if (*&self->_has)
  {
    amm = self->_amm;
    PBDataWriterWriteInt64Field();
    toCopy = v17;
  }

  if (self->_seymourCatalogWorkoutIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }

  if (self->_seymourMediaType)
  {
    PBDataWriterWriteStringField();
    toCopy = v17;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_sample)
  {
    [toCopy setSample:?];
    toCopy = v7;
  }

  if (self->_friendUUID)
  {
    [v7 setFriendUUID:?];
    toCopy = v7;
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    *(toCopy + 10) = self->_type;
    *(toCopy + 72) |= 0x200u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 0x100) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_34;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_7;
  }

  *(toCopy + 2) = *&self->_duration;
  *(toCopy + 72) |= 2u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(toCopy + 9) = *&self->_totalEnergyBurnedInCanonicalUnit;
  *(toCopy + 72) |= 0x100u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_9:
    if ((has & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(toCopy + 7) = *&self->_totalBasalEnergyBurnedInCanonicalUnit;
  *(toCopy + 72) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(toCopy + 8) = *&self->_totalDistanceInCanonicalUnit;
  *(toCopy + 72) |= 0x80u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_11:
    if ((has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_37:
  *(toCopy + 4) = self->_goalType;
  *(toCopy + 72) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_12:
    *(toCopy + 3) = *&self->_goal;
    *(toCopy + 72) |= 4u;
  }

LABEL_13:
  if (self->_bundleID)
  {
    [v7 setBundleID:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x20) != 0)
  {
    *(toCopy + 6) = self->_isWatchWorkout;
    *(toCopy + 72) |= 0x20u;
    v6 = self->_has;
  }

  if ((v6 & 0x10) != 0)
  {
    *(toCopy + 5) = self->_isIndoorWorkout;
    *(toCopy + 72) |= 0x10u;
  }

  if (self->_deviceManufacturer)
  {
    [v7 setDeviceManufacturer:?];
    toCopy = v7;
  }

  if (self->_deviceModel)
  {
    [v7 setDeviceModel:?];
    toCopy = v7;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = self->_amm;
    *(toCopy + 72) |= 1u;
  }

  if (self->_seymourCatalogWorkoutIdentifier)
  {
    [v7 setSeymourCatalogWorkoutIdentifier:?];
    toCopy = v7;
  }

  if (self->_seymourMediaType)
  {
    [v7 setSeymourMediaType:?];
    toCopy = v7;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HDCodableSample *)self->_sample copyWithZone:zone];
  v7 = *(v5 + 120);
  *(v5 + 120) = v6;

  v8 = [(NSData *)self->_friendUUID copyWithZone:zone];
  v9 = *(v5 + 112);
  *(v5 + 112) = v8;

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    *(v5 + 80) = self->_type;
    *(v5 + 144) |= 0x200u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 16) = self->_duration;
  *(v5 + 144) |= 2u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_4:
    if ((has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v5 + 72) = self->_totalEnergyBurnedInCanonicalUnit;
  *(v5 + 144) |= 0x100u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_5:
    if ((has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v5 + 56) = self->_totalBasalEnergyBurnedInCanonicalUnit;
  *(v5 + 144) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v5 + 64) = self->_totalDistanceInCanonicalUnit;
  *(v5 + 144) |= 0x80u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_21:
  *(v5 + 32) = self->_goalType;
  *(v5 + 144) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    *(v5 + 24) = self->_goal;
    *(v5 + 144) |= 4u;
  }

LABEL_9:
  v11 = [(NSString *)self->_bundleID copyWithZone:zone];
  v12 = *(v5 + 88);
  *(v5 + 88) = v11;

  v13 = self->_has;
  if ((v13 & 0x20) != 0)
  {
    *(v5 + 48) = self->_isWatchWorkout;
    *(v5 + 144) |= 0x20u;
    v13 = self->_has;
  }

  if ((v13 & 0x10) != 0)
  {
    *(v5 + 40) = self->_isIndoorWorkout;
    *(v5 + 144) |= 0x10u;
  }

  v14 = [(NSString *)self->_deviceManufacturer copyWithZone:zone];
  v15 = *(v5 + 96);
  *(v5 + 96) = v14;

  v16 = [(NSString *)self->_deviceModel copyWithZone:zone];
  v17 = *(v5 + 104);
  *(v5 + 104) = v16;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_amm;
    *(v5 + 144) |= 1u;
  }

  v18 = [(NSString *)self->_seymourCatalogWorkoutIdentifier copyWithZone:zone];
  v19 = *(v5 + 128);
  *(v5 + 128) = v18;

  v20 = [(NSString *)self->_seymourMediaType copyWithZone:zone];
  v21 = *(v5 + 136);
  *(v5 + 136) = v20;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_67;
  }

  sample = self->_sample;
  if (sample | *(equalCopy + 15))
  {
    if (![(HDCodableSample *)sample isEqual:?])
    {
      goto LABEL_67;
    }
  }

  friendUUID = self->_friendUUID;
  if (friendUUID | *(equalCopy + 14))
  {
    if (![(NSData *)friendUUID isEqual:?])
    {
      goto LABEL_67;
    }
  }

  has = self->_has;
  v8 = *(equalCopy + 72);
  if ((has & 0x200) != 0)
  {
    if ((*(equalCopy + 72) & 0x200) == 0 || self->_type != *(equalCopy + 10))
    {
      goto LABEL_67;
    }
  }

  else if ((*(equalCopy + 72) & 0x200) != 0)
  {
    goto LABEL_67;
  }

  if ((has & 2) != 0)
  {
    if ((v8 & 2) == 0 || self->_duration != *(equalCopy + 2))
    {
      goto LABEL_67;
    }
  }

  else if ((v8 & 2) != 0)
  {
    goto LABEL_67;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 72) & 0x100) == 0 || self->_totalEnergyBurnedInCanonicalUnit != *(equalCopy + 9))
    {
      goto LABEL_67;
    }
  }

  else if ((*(equalCopy + 72) & 0x100) != 0)
  {
    goto LABEL_67;
  }

  if ((has & 0x40) != 0)
  {
    if ((v8 & 0x40) == 0 || self->_totalBasalEnergyBurnedInCanonicalUnit != *(equalCopy + 7))
    {
      goto LABEL_67;
    }
  }

  else if ((v8 & 0x40) != 0)
  {
    goto LABEL_67;
  }

  if ((has & 0x80) != 0)
  {
    if ((v8 & 0x80) == 0 || self->_totalDistanceInCanonicalUnit != *(equalCopy + 8))
    {
      goto LABEL_67;
    }
  }

  else if ((v8 & 0x80) != 0)
  {
    goto LABEL_67;
  }

  if ((has & 8) != 0)
  {
    if ((v8 & 8) == 0 || self->_goalType != *(equalCopy + 4))
    {
      goto LABEL_67;
    }
  }

  else if ((v8 & 8) != 0)
  {
    goto LABEL_67;
  }

  if ((has & 4) != 0)
  {
    if ((v8 & 4) == 0 || self->_goal != *(equalCopy + 3))
    {
      goto LABEL_67;
    }
  }

  else if ((v8 & 4) != 0)
  {
    goto LABEL_67;
  }

  bundleID = self->_bundleID;
  if (bundleID | *(equalCopy + 11))
  {
    if (![(NSString *)bundleID isEqual:?])
    {
LABEL_67:
      v15 = 0;
      goto LABEL_68;
    }

    has = self->_has;
    v8 = *(equalCopy + 72);
  }

  if ((has & 0x20) != 0)
  {
    if ((v8 & 0x20) == 0 || self->_isWatchWorkout != *(equalCopy + 6))
    {
      goto LABEL_67;
    }
  }

  else if ((v8 & 0x20) != 0)
  {
    goto LABEL_67;
  }

  if ((has & 0x10) != 0)
  {
    if ((v8 & 0x10) == 0 || self->_isIndoorWorkout != *(equalCopy + 5))
    {
      goto LABEL_67;
    }
  }

  else if ((v8 & 0x10) != 0)
  {
    goto LABEL_67;
  }

  deviceManufacturer = self->_deviceManufacturer;
  if (deviceManufacturer | *(equalCopy + 12) && ![(NSString *)deviceManufacturer isEqual:?])
  {
    goto LABEL_67;
  }

  deviceModel = self->_deviceModel;
  if (deviceModel | *(equalCopy + 13))
  {
    if (![(NSString *)deviceModel isEqual:?])
    {
      goto LABEL_67;
    }
  }

  v12 = *(equalCopy + 72);
  if (*&self->_has)
  {
    if ((v12 & 1) == 0 || self->_amm != *(equalCopy + 1))
    {
      goto LABEL_67;
    }
  }

  else if (v12)
  {
    goto LABEL_67;
  }

  seymourCatalogWorkoutIdentifier = self->_seymourCatalogWorkoutIdentifier;
  if (seymourCatalogWorkoutIdentifier | *(equalCopy + 16) && ![(NSString *)seymourCatalogWorkoutIdentifier isEqual:?])
  {
    goto LABEL_67;
  }

  seymourMediaType = self->_seymourMediaType;
  if (seymourMediaType | *(equalCopy + 17))
  {
    v15 = [(NSString *)seymourMediaType isEqual:?];
  }

  else
  {
    v15 = 1;
  }

LABEL_68:

  return v15;
}

- (unint64_t)hash
{
  v42 = [(HDCodableSample *)self->_sample hash];
  v41 = [(NSData *)self->_friendUUID hash];
  has = self->_has;
  if ((has & 0x200) != 0)
  {
    v40 = 2654435761 * self->_type;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  v40 = 0;
  if ((has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  duration = self->_duration;
  if (duration < 0.0)
  {
    duration = -duration;
  }

  *v3.i64 = floor(duration + 0.5);
  v7 = (duration - *v3.i64) * 1.84467441e19;
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
  if ((*&self->_has & 0x100) != 0)
  {
    totalEnergyBurnedInCanonicalUnit = self->_totalEnergyBurnedInCanonicalUnit;
    if (totalEnergyBurnedInCanonicalUnit < 0.0)
    {
      totalEnergyBurnedInCanonicalUnit = -totalEnergyBurnedInCanonicalUnit;
    }

    *v3.i64 = floor(totalEnergyBurnedInCanonicalUnit + 0.5);
    v12 = (totalEnergyBurnedInCanonicalUnit - *v3.i64) * 1.84467441e19;
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

  if ((has & 0x40) != 0)
  {
    totalBasalEnergyBurnedInCanonicalUnit = self->_totalBasalEnergyBurnedInCanonicalUnit;
    if (totalBasalEnergyBurnedInCanonicalUnit < 0.0)
    {
      totalBasalEnergyBurnedInCanonicalUnit = -totalBasalEnergyBurnedInCanonicalUnit;
    }

    *v3.i64 = floor(totalBasalEnergyBurnedInCanonicalUnit + 0.5);
    v16 = (totalBasalEnergyBurnedInCanonicalUnit - *v3.i64) * 1.84467441e19;
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

  if ((has & 0x80) != 0)
  {
    totalDistanceInCanonicalUnit = self->_totalDistanceInCanonicalUnit;
    if (totalDistanceInCanonicalUnit < 0.0)
    {
      totalDistanceInCanonicalUnit = -totalDistanceInCanonicalUnit;
    }

    *v3.i64 = floor(totalDistanceInCanonicalUnit + 0.5);
    v20 = (totalDistanceInCanonicalUnit - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v21), v4, v3);
    v18 = 2654435761u * *v3.i64;
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

  if ((has & 8) != 0)
  {
    v36 = 2654435761 * self->_goalType;
  }

  else
  {
    v36 = 0;
  }

  v38 = v18;
  v39 = v14;
  if ((has & 4) != 0)
  {
    goal = self->_goal;
    if (goal < 0.0)
    {
      goal = -goal;
    }

    *v3.i64 = floor(goal + 0.5);
    v24 = (goal - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v25.f64[0] = NAN;
    v25.f64[1] = NAN;
    v22 = 2654435761u * *vbslq_s8(vnegq_f64(v25), v4, v3).i64;
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

  v26 = [(NSString *)self->_bundleID hash];
  v27 = self->_has;
  if ((v27 & 0x20) != 0)
  {
    v28 = 2654435761 * self->_isWatchWorkout;
    if ((v27 & 0x10) != 0)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v28 = 0;
    if ((v27 & 0x10) != 0)
    {
LABEL_48:
      v29 = 2654435761 * self->_isIndoorWorkout;
      goto LABEL_51;
    }
  }

  v29 = 0;
LABEL_51:
  v30 = [(NSString *)self->_deviceManufacturer hash];
  v31 = [(NSString *)self->_deviceModel hash];
  if (*&self->_has)
  {
    v32 = 2654435761 * self->_amm;
  }

  else
  {
    v32 = 0;
  }

  v33 = v41 ^ v42 ^ v40 ^ v9 ^ v10 ^ v39 ^ v38 ^ v37 ^ v22 ^ v26 ^ v28 ^ v29 ^ v30 ^ v31;
  v34 = v32 ^ [(NSString *)self->_seymourCatalogWorkoutIdentifier hash];
  return v33 ^ v34 ^ [(NSString *)self->_seymourMediaType hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  sample = self->_sample;
  v6 = *(fromCopy + 15);
  v9 = fromCopy;
  if (sample)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    sample = [(HDCodableSample *)sample mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    sample = [(HDCodableFitnessFriendWorkout *)self setSample:?];
  }

  fromCopy = v9;
LABEL_7:
  if (*(fromCopy + 14))
  {
    sample = [(HDCodableFitnessFriendWorkout *)self setFriendUUID:?];
    fromCopy = v9;
  }

  v7 = *(fromCopy + 72);
  if ((v7 & 0x200) != 0)
  {
    self->_type = *(fromCopy + 10);
    *&self->_has |= 0x200u;
    v7 = *(fromCopy + 72);
    if ((v7 & 2) == 0)
    {
LABEL_11:
      if ((v7 & 0x100) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_38;
    }
  }

  else if ((v7 & 2) == 0)
  {
    goto LABEL_11;
  }

  self->_duration = *(fromCopy + 2);
  *&self->_has |= 2u;
  v7 = *(fromCopy + 72);
  if ((v7 & 0x100) == 0)
  {
LABEL_12:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_totalEnergyBurnedInCanonicalUnit = *(fromCopy + 9);
  *&self->_has |= 0x100u;
  v7 = *(fromCopy + 72);
  if ((v7 & 0x40) == 0)
  {
LABEL_13:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_totalBasalEnergyBurnedInCanonicalUnit = *(fromCopy + 7);
  *&self->_has |= 0x40u;
  v7 = *(fromCopy + 72);
  if ((v7 & 0x80) == 0)
  {
LABEL_14:
    if ((v7 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_totalDistanceInCanonicalUnit = *(fromCopy + 8);
  *&self->_has |= 0x80u;
  v7 = *(fromCopy + 72);
  if ((v7 & 8) == 0)
  {
LABEL_15:
    if ((v7 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_41:
  self->_goalType = *(fromCopy + 4);
  *&self->_has |= 8u;
  if ((*(fromCopy + 72) & 4) != 0)
  {
LABEL_16:
    self->_goal = *(fromCopy + 3);
    *&self->_has |= 4u;
  }

LABEL_17:
  if (*(fromCopy + 11))
  {
    sample = [(HDCodableFitnessFriendWorkout *)self setBundleID:?];
    fromCopy = v9;
  }

  v8 = *(fromCopy + 72);
  if ((v8 & 0x20) != 0)
  {
    self->_isWatchWorkout = *(fromCopy + 6);
    *&self->_has |= 0x20u;
    v8 = *(fromCopy + 72);
  }

  if ((v8 & 0x10) != 0)
  {
    self->_isIndoorWorkout = *(fromCopy + 5);
    *&self->_has |= 0x10u;
  }

  if (*(fromCopy + 12))
  {
    sample = [(HDCodableFitnessFriendWorkout *)self setDeviceManufacturer:?];
    fromCopy = v9;
  }

  if (*(fromCopy + 13))
  {
    sample = [(HDCodableFitnessFriendWorkout *)self setDeviceModel:?];
    fromCopy = v9;
  }

  if (*(fromCopy + 72))
  {
    self->_amm = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 16))
  {
    sample = [(HDCodableFitnessFriendWorkout *)self setSeymourCatalogWorkoutIdentifier:?];
    fromCopy = v9;
  }

  if (*(fromCopy + 17))
  {
    sample = [(HDCodableFitnessFriendWorkout *)self setSeymourMediaType:?];
    fromCopy = v9;
  }

  MEMORY[0x2821F96F8](sample, fromCopy);
}

@end