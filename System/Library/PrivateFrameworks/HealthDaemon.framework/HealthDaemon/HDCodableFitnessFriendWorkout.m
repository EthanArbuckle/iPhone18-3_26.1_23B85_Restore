@interface HDCodableFitnessFriendWorkout
- (BOOL)applyToObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDuration:(BOOL)a3;
- (void)setHasGoal:(BOOL)a3;
- (void)setHasGoalType:(BOOL)a3;
- (void)setHasIsIndoorWorkout:(BOOL)a3;
- (void)setHasIsWatchWorkout:(BOOL)a3;
- (void)setHasTotalBasalEnergyBurnedInCanonicalUnit:(BOOL)a3;
- (void)setHasTotalDistanceInCanonicalUnit:(BOOL)a3;
- (void)setHasTotalEnergyBurnedInCanonicalUnit:(BOOL)a3;
- (void)setHasType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableFitnessFriendWorkout

- (BOOL)applyToObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(HDCodableFitnessFriendWorkout *)self sample];
    v6 = [v5 applyToObject:v4];
    if (v6)
    {
      if ([(HDCodableFitnessFriendWorkout *)self hasFriendUUID])
      {
        v7 = MEMORY[0x277CCAD78];
        v8 = [(HDCodableFitnessFriendWorkout *)self friendUUID];
        v9 = [v7 hk_UUIDWithData:v8];

        [v4 setFriendUUID:v9];
      }

      [(HDCodableFitnessFriendWorkout *)self duration];
      [v4 setDuration:?];
      if ([(HDCodableFitnessFriendWorkout *)self hasTotalEnergyBurnedInCanonicalUnit])
      {
        v10 = MEMORY[0x277CCD7E8];
        v11 = _HKWorkoutCanonicalEnergyBurnedUnit();
        [(HDCodableFitnessFriendWorkout *)self totalEnergyBurnedInCanonicalUnit];
        v12 = [v10 quantityWithUnit:v11 doubleValue:?];

        [v4 setTotalEnergyBurned:v12];
      }

      if ([(HDCodableFitnessFriendWorkout *)self hasTotalBasalEnergyBurnedInCanonicalUnit])
      {
        v13 = MEMORY[0x277CCD7E8];
        v14 = _HKWorkoutCanonicalEnergyBurnedUnit();
        [(HDCodableFitnessFriendWorkout *)self totalBasalEnergyBurnedInCanonicalUnit];
        v15 = [v13 quantityWithUnit:v14 doubleValue:?];

        [v4 setTotalBasalEnergyBurned:v15];
      }

      if ([(HDCodableFitnessFriendWorkout *)self hasTotalDistanceInCanonicalUnit])
      {
        v16 = MEMORY[0x277CCD7E8];
        v17 = _HKWorkoutCanonicalDistanceUnit();
        [(HDCodableFitnessFriendWorkout *)self totalDistanceInCanonicalUnit];
        v18 = [v16 quantityWithUnit:v17 doubleValue:?];

        [v4 setTotalDistance:v18];
      }

      [v4 setWorkoutActivityType:{-[HDCodableFitnessFriendWorkout type](self, "type")}];
      [v4 setGoalType:{-[HDCodableFitnessFriendWorkout goalType](self, "goalType")}];
      if ([(HDCodableFitnessFriendWorkout *)self hasGoal])
      {
        [v4 goalType];
        if (_HKWorkoutGoalTypeIsValidForGoal())
        {
          v19 = MEMORY[0x277CCD7E8];
          [(HDCodableFitnessFriendWorkout *)self goalType];
          v20 = _HKWorkoutCanonicalUnitForGoalType();
          [(HDCodableFitnessFriendWorkout *)self goal];
          v21 = [v19 quantityWithUnit:v20 doubleValue:?];

          [v4 setGoal:v21];
        }
      }

      v22 = [(HDCodableFitnessFriendWorkout *)self bundleID];
      [v4 setBundleID:v22];

      [v4 setIsWatchWorkout:{-[HDCodableFitnessFriendWorkout isWatchWorkout](self, "isWatchWorkout") != 0}];
      [v4 setIsIndoorWorkout:{-[HDCodableFitnessFriendWorkout isIndoorWorkout](self, "isIndoorWorkout") != 0}];
      [v4 setAmm:{-[HDCodableFitnessFriendWorkout amm](self, "amm")}];
      if ([(HDCodableFitnessFriendWorkout *)self hasDeviceManufacturer])
      {
        v23 = [(HDCodableFitnessFriendWorkout *)self deviceManufacturer];
        [v4 setDeviceManufacturer:v23];
      }

      if ([(HDCodableFitnessFriendWorkout *)self hasDeviceModel])
      {
        v24 = [(HDCodableFitnessFriendWorkout *)self deviceModel];
        [v4 setDeviceModel:v24];
      }

      v25 = [(HDCodableFitnessFriendWorkout *)self seymourCatalogWorkoutIdentifier];

      if (v25)
      {
        v26 = [(HDCodableFitnessFriendWorkout *)self seymourCatalogWorkoutIdentifier];
        [v4 setSeymourCatalogWorkoutIdentifier:v26];
      }

      v27 = [(HDCodableFitnessFriendWorkout *)self seymourMediaType];

      if (v27)
      {
        v28 = [(HDCodableFitnessFriendWorkout *)self seymourMediaType];
        [v4 setSeymourMediaType:v28];
      }
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)setHasType:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasDuration:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasTotalEnergyBurnedInCanonicalUnit:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasTotalBasalEnergyBurnedInCanonicalUnit:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasTotalDistanceInCanonicalUnit:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasGoalType:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasGoal:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasIsWatchWorkout:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasIsIndoorWorkout:(BOOL)a3
{
  if (a3)
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
  v5 = [(HDCodableFitnessFriendWorkout *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  sample = self->_sample;
  if (sample)
  {
    v5 = [(HDCodableSample *)sample dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"sample"];
  }

  friendUUID = self->_friendUUID;
  if (friendUUID)
  {
    [v3 setObject:friendUUID forKey:@"friendUUID"];
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_type];
    [v3 setObject:v19 forKey:@"type"];

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
  [v3 setObject:v20 forKey:@"duration"];

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
  [v3 setObject:v21 forKey:@"totalEnergyBurnedInCanonicalUnit"];

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
  [v3 setObject:v22 forKey:@"totalBasalEnergyBurnedInCanonicalUnit"];

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
  [v3 setObject:v23 forKey:@"totalDistanceInCanonicalUnit"];

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
  [v3 setObject:v24 forKey:@"goalType"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_12:
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_goal];
    [v3 setObject:v8 forKey:@"goal"];
  }

LABEL_13:
  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v3 setObject:bundleID forKey:@"bundleID"];
  }

  v10 = self->_has;
  if ((v10 & 0x20) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_isWatchWorkout];
    [v3 setObject:v11 forKey:@"isWatchWorkout"];

    v10 = self->_has;
  }

  if ((v10 & 0x10) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_isIndoorWorkout];
    [v3 setObject:v12 forKey:@"isIndoorWorkout"];
  }

  deviceManufacturer = self->_deviceManufacturer;
  if (deviceManufacturer)
  {
    [v3 setObject:deviceManufacturer forKey:@"deviceManufacturer"];
  }

  deviceModel = self->_deviceModel;
  if (deviceModel)
  {
    [v3 setObject:deviceModel forKey:@"deviceModel"];
  }

  if (*&self->_has)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_amm];
    [v3 setObject:v15 forKey:@"amm"];
  }

  seymourCatalogWorkoutIdentifier = self->_seymourCatalogWorkoutIdentifier;
  if (seymourCatalogWorkoutIdentifier)
  {
    [v3 setObject:seymourCatalogWorkoutIdentifier forKey:@"seymourCatalogWorkoutIdentifier"];
  }

  seymourMediaType = self->_seymourMediaType;
  if (seymourMediaType)
  {
    [v3 setObject:seymourMediaType forKey:@"seymourMediaType"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v17 = v4;
  if (self->_sample)
  {
    PBDataWriterWriteSubmessage();
    v4 = v17;
  }

  if (self->_friendUUID)
  {
    PBDataWriterWriteDataField();
    v4 = v17;
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    type = self->_type;
    PBDataWriterWriteInt64Field();
    v4 = v17;
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
  v4 = v17;
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
  v4 = v17;
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
  v4 = v17;
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
  v4 = v17;
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
  v4 = v17;
  if ((*&self->_has & 4) != 0)
  {
LABEL_12:
    goal = self->_goal;
    PBDataWriterWriteDoubleField();
    v4 = v17;
  }

LABEL_13:
  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  v7 = self->_has;
  if ((v7 & 0x20) != 0)
  {
    isWatchWorkout = self->_isWatchWorkout;
    PBDataWriterWriteInt64Field();
    v4 = v17;
    v7 = self->_has;
  }

  if ((v7 & 0x10) != 0)
  {
    isIndoorWorkout = self->_isIndoorWorkout;
    PBDataWriterWriteInt64Field();
    v4 = v17;
  }

  if (self->_deviceManufacturer)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  if (self->_deviceModel)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  if (*&self->_has)
  {
    amm = self->_amm;
    PBDataWriterWriteInt64Field();
    v4 = v17;
  }

  if (self->_seymourCatalogWorkoutIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }

  if (self->_seymourMediaType)
  {
    PBDataWriterWriteStringField();
    v4 = v17;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_sample)
  {
    [v4 setSample:?];
    v4 = v7;
  }

  if (self->_friendUUID)
  {
    [v7 setFriendUUID:?];
    v4 = v7;
  }

  has = self->_has;
  if ((has & 0x200) != 0)
  {
    *(v4 + 10) = self->_type;
    *(v4 + 72) |= 0x200u;
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

  *(v4 + 2) = *&self->_duration;
  *(v4 + 72) |= 2u;
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
  *(v4 + 9) = *&self->_totalEnergyBurnedInCanonicalUnit;
  *(v4 + 72) |= 0x100u;
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
  *(v4 + 7) = *&self->_totalBasalEnergyBurnedInCanonicalUnit;
  *(v4 + 72) |= 0x40u;
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
  *(v4 + 8) = *&self->_totalDistanceInCanonicalUnit;
  *(v4 + 72) |= 0x80u;
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
  *(v4 + 4) = self->_goalType;
  *(v4 + 72) |= 8u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_12:
    *(v4 + 3) = *&self->_goal;
    *(v4 + 72) |= 4u;
  }

LABEL_13:
  if (self->_bundleID)
  {
    [v7 setBundleID:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x20) != 0)
  {
    *(v4 + 6) = self->_isWatchWorkout;
    *(v4 + 72) |= 0x20u;
    v6 = self->_has;
  }

  if ((v6 & 0x10) != 0)
  {
    *(v4 + 5) = self->_isIndoorWorkout;
    *(v4 + 72) |= 0x10u;
  }

  if (self->_deviceManufacturer)
  {
    [v7 setDeviceManufacturer:?];
    v4 = v7;
  }

  if (self->_deviceModel)
  {
    [v7 setDeviceModel:?];
    v4 = v7;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_amm;
    *(v4 + 72) |= 1u;
  }

  if (self->_seymourCatalogWorkoutIdentifier)
  {
    [v7 setSeymourCatalogWorkoutIdentifier:?];
    v4 = v7;
  }

  if (self->_seymourMediaType)
  {
    [v7 setSeymourMediaType:?];
    v4 = v7;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HDCodableSample *)self->_sample copyWithZone:a3];
  v7 = *(v5 + 120);
  *(v5 + 120) = v6;

  v8 = [(NSData *)self->_friendUUID copyWithZone:a3];
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
  v11 = [(NSString *)self->_bundleID copyWithZone:a3];
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

  v14 = [(NSString *)self->_deviceManufacturer copyWithZone:a3];
  v15 = *(v5 + 96);
  *(v5 + 96) = v14;

  v16 = [(NSString *)self->_deviceModel copyWithZone:a3];
  v17 = *(v5 + 104);
  *(v5 + 104) = v16;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_amm;
    *(v5 + 144) |= 1u;
  }

  v18 = [(NSString *)self->_seymourCatalogWorkoutIdentifier copyWithZone:a3];
  v19 = *(v5 + 128);
  *(v5 + 128) = v18;

  v20 = [(NSString *)self->_seymourMediaType copyWithZone:a3];
  v21 = *(v5 + 136);
  *(v5 + 136) = v20;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_67;
  }

  sample = self->_sample;
  if (sample | *(v4 + 15))
  {
    if (![(HDCodableSample *)sample isEqual:?])
    {
      goto LABEL_67;
    }
  }

  friendUUID = self->_friendUUID;
  if (friendUUID | *(v4 + 14))
  {
    if (![(NSData *)friendUUID isEqual:?])
    {
      goto LABEL_67;
    }
  }

  has = self->_has;
  v8 = *(v4 + 72);
  if ((has & 0x200) != 0)
  {
    if ((*(v4 + 72) & 0x200) == 0 || self->_type != *(v4 + 10))
    {
      goto LABEL_67;
    }
  }

  else if ((*(v4 + 72) & 0x200) != 0)
  {
    goto LABEL_67;
  }

  if ((has & 2) != 0)
  {
    if ((v8 & 2) == 0 || self->_duration != *(v4 + 2))
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
    if ((*(v4 + 72) & 0x100) == 0 || self->_totalEnergyBurnedInCanonicalUnit != *(v4 + 9))
    {
      goto LABEL_67;
    }
  }

  else if ((*(v4 + 72) & 0x100) != 0)
  {
    goto LABEL_67;
  }

  if ((has & 0x40) != 0)
  {
    if ((v8 & 0x40) == 0 || self->_totalBasalEnergyBurnedInCanonicalUnit != *(v4 + 7))
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
    if ((v8 & 0x80) == 0 || self->_totalDistanceInCanonicalUnit != *(v4 + 8))
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
    if ((v8 & 8) == 0 || self->_goalType != *(v4 + 4))
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
    if ((v8 & 4) == 0 || self->_goal != *(v4 + 3))
    {
      goto LABEL_67;
    }
  }

  else if ((v8 & 4) != 0)
  {
    goto LABEL_67;
  }

  bundleID = self->_bundleID;
  if (bundleID | *(v4 + 11))
  {
    if (![(NSString *)bundleID isEqual:?])
    {
LABEL_67:
      v15 = 0;
      goto LABEL_68;
    }

    has = self->_has;
    v8 = *(v4 + 72);
  }

  if ((has & 0x20) != 0)
  {
    if ((v8 & 0x20) == 0 || self->_isWatchWorkout != *(v4 + 6))
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
    if ((v8 & 0x10) == 0 || self->_isIndoorWorkout != *(v4 + 5))
    {
      goto LABEL_67;
    }
  }

  else if ((v8 & 0x10) != 0)
  {
    goto LABEL_67;
  }

  deviceManufacturer = self->_deviceManufacturer;
  if (deviceManufacturer | *(v4 + 12) && ![(NSString *)deviceManufacturer isEqual:?])
  {
    goto LABEL_67;
  }

  deviceModel = self->_deviceModel;
  if (deviceModel | *(v4 + 13))
  {
    if (![(NSString *)deviceModel isEqual:?])
    {
      goto LABEL_67;
    }
  }

  v12 = *(v4 + 72);
  if (*&self->_has)
  {
    if ((v12 & 1) == 0 || self->_amm != *(v4 + 1))
    {
      goto LABEL_67;
    }
  }

  else if (v12)
  {
    goto LABEL_67;
  }

  seymourCatalogWorkoutIdentifier = self->_seymourCatalogWorkoutIdentifier;
  if (seymourCatalogWorkoutIdentifier | *(v4 + 16) && ![(NSString *)seymourCatalogWorkoutIdentifier isEqual:?])
  {
    goto LABEL_67;
  }

  seymourMediaType = self->_seymourMediaType;
  if (seymourMediaType | *(v4 + 17))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  sample = self->_sample;
  v6 = *(v4 + 15);
  v9 = v4;
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

  v4 = v9;
LABEL_7:
  if (*(v4 + 14))
  {
    sample = [(HDCodableFitnessFriendWorkout *)self setFriendUUID:?];
    v4 = v9;
  }

  v7 = *(v4 + 72);
  if ((v7 & 0x200) != 0)
  {
    self->_type = *(v4 + 10);
    *&self->_has |= 0x200u;
    v7 = *(v4 + 72);
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

  self->_duration = *(v4 + 2);
  *&self->_has |= 2u;
  v7 = *(v4 + 72);
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
  self->_totalEnergyBurnedInCanonicalUnit = *(v4 + 9);
  *&self->_has |= 0x100u;
  v7 = *(v4 + 72);
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
  self->_totalBasalEnergyBurnedInCanonicalUnit = *(v4 + 7);
  *&self->_has |= 0x40u;
  v7 = *(v4 + 72);
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
  self->_totalDistanceInCanonicalUnit = *(v4 + 8);
  *&self->_has |= 0x80u;
  v7 = *(v4 + 72);
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
  self->_goalType = *(v4 + 4);
  *&self->_has |= 8u;
  if ((*(v4 + 72) & 4) != 0)
  {
LABEL_16:
    self->_goal = *(v4 + 3);
    *&self->_has |= 4u;
  }

LABEL_17:
  if (*(v4 + 11))
  {
    sample = [(HDCodableFitnessFriendWorkout *)self setBundleID:?];
    v4 = v9;
  }

  v8 = *(v4 + 72);
  if ((v8 & 0x20) != 0)
  {
    self->_isWatchWorkout = *(v4 + 6);
    *&self->_has |= 0x20u;
    v8 = *(v4 + 72);
  }

  if ((v8 & 0x10) != 0)
  {
    self->_isIndoorWorkout = *(v4 + 5);
    *&self->_has |= 0x10u;
  }

  if (*(v4 + 12))
  {
    sample = [(HDCodableFitnessFriendWorkout *)self setDeviceManufacturer:?];
    v4 = v9;
  }

  if (*(v4 + 13))
  {
    sample = [(HDCodableFitnessFriendWorkout *)self setDeviceModel:?];
    v4 = v9;
  }

  if (*(v4 + 72))
  {
    self->_amm = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 16))
  {
    sample = [(HDCodableFitnessFriendWorkout *)self setSeymourCatalogWorkoutIdentifier:?];
    v4 = v9;
  }

  if (*(v4 + 17))
  {
    sample = [(HDCodableFitnessFriendWorkout *)self setSeymourMediaType:?];
    v4 = v9;
  }

  MEMORY[0x2821F96F8](sample, v4);
}

@end