@interface HDCodableFitnessFriendActivitySnapshot
- (BOOL)applyToObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasActiveHoursGoal:(BOOL)goal;
- (void)setHasAmm:(BOOL)amm;
- (void)setHasBriskMinutes:(BOOL)minutes;
- (void)setHasBriskMinutesGoal:(BOOL)goal;
- (void)setHasDate:(BOOL)date;
- (void)setHasEnergyBurned:(BOOL)burned;
- (void)setHasEnergyBurnedGoal:(BOOL)goal;
- (void)setHasMmg:(BOOL)mmg;
- (void)setHasMmv:(BOOL)mmv;
- (void)setHasPushCount:(BOOL)count;
- (void)setHasSnapshotIndex:(BOOL)index;
- (void)setHasStepCount:(BOOL)count;
- (void)setHasTimeZoneOffsetFromUTCForNoon:(BOOL)noon;
- (void)setHasUploadedDate:(BOOL)date;
- (void)setHasWalkingAndRunningDistance:(BOOL)distance;
- (void)setHasWheelchairUse:(BOOL)use;
- (void)writeTo:(id)to;
@end

@implementation HDCodableFitnessFriendActivitySnapshot

- (BOOL)applyToObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sample = [(HDCodableFitnessFriendActivitySnapshot *)self sample];
    v6 = [sample applyToObject:objectCopy];
    if (v6)
    {
      if ([(HDCodableFitnessFriendActivitySnapshot *)self hasFriendUUID])
      {
        v7 = MEMORY[0x277CCAD78];
        friendUUID = [(HDCodableFitnessFriendActivitySnapshot *)self friendUUID];
        v9 = [v7 hk_UUIDWithData:friendUUID];

        [objectCopy setFriendUUID:v9];
      }

      if ([(HDCodableFitnessFriendActivitySnapshot *)self hasSourceUUID])
      {
        v10 = MEMORY[0x277CCAD78];
        sourceUUID = [(HDCodableFitnessFriendActivitySnapshot *)self sourceUUID];
        v12 = [v10 hk_UUIDWithData:sourceUUID];

        [objectCopy setSourceUUID:v12];
      }

      if ([(HDCodableFitnessFriendActivitySnapshot *)self hasTimeZoneOffsetFromUTCForNoon])
      {
        v13 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HDCodableFitnessFriendActivitySnapshot timeZoneOffsetFromUTCForNoon](self, "timeZoneOffsetFromUTCForNoon")}];
        [objectCopy setTimeZoneOffsetFromUTCForNoon:v13];
      }

      [(HDCodableFitnessFriendActivitySnapshot *)self activeHours];
      [objectCopy setActiveHours:?];
      [(HDCodableFitnessFriendActivitySnapshot *)self activeHoursGoal];
      [objectCopy setActiveHoursGoal:?];
      [(HDCodableFitnessFriendActivitySnapshot *)self briskMinutes];
      [objectCopy setBriskMinutes:?];
      [(HDCodableFitnessFriendActivitySnapshot *)self briskMinutesGoal];
      [objectCopy setBriskMinutesGoal:?];
      [(HDCodableFitnessFriendActivitySnapshot *)self energyBurned];
      [objectCopy setEnergyBurned:?];
      [(HDCodableFitnessFriendActivitySnapshot *)self energyBurnedGoal];
      [objectCopy setEnergyBurnedGoal:?];
      [(HDCodableFitnessFriendActivitySnapshot *)self mmv];
      [objectCopy setMmv:?];
      [(HDCodableFitnessFriendActivitySnapshot *)self mmg];
      [objectCopy setMmg:?];
      [objectCopy setAmm:{-[HDCodableFitnessFriendActivitySnapshot amm](self, "amm")}];
      [(HDCodableFitnessFriendActivitySnapshot *)self walkingAndRunningDistance];
      [objectCopy setWalkingAndRunningDistance:?];
      [(HDCodableFitnessFriendActivitySnapshot *)self stepCount];
      [objectCopy setStepCount:?];
      [objectCopy setSnapshotIndex:{-[HDCodableFitnessFriendActivitySnapshot snapshotIndex](self, "snapshotIndex")}];
      v14 = objc_alloc(MEMORY[0x277CBEAA8]);
      [(HDCodableFitnessFriendActivitySnapshot *)self uploadedDate];
      v15 = [v14 initWithTimeIntervalSinceReferenceDate:?];
      [objectCopy setSnapshotUploadedDate:v15];

      [(HDCodableFitnessFriendActivitySnapshot *)self pushCount];
      [objectCopy setPushCount:?];
      [objectCopy setWheelchairUse:{-[HDCodableFitnessFriendActivitySnapshot wheelchairUse](self, "wheelchairUse")}];
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)setHasSnapshotIndex:(BOOL)index
{
  if (index)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasDate:(BOOL)date
{
  if (date)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasTimeZoneOffsetFromUTCForNoon:(BOOL)noon
{
  if (noon)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasEnergyBurned:(BOOL)burned
{
  if (burned)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (void)setHasEnergyBurnedGoal:(BOOL)goal
{
  if (goal)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasBriskMinutes:(BOOL)minutes
{
  if (minutes)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasBriskMinutesGoal:(BOOL)goal
{
  if (goal)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
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

- (void)setHasWalkingAndRunningDistance:(BOOL)distance
{
  if (distance)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasStepCount:(BOOL)count
{
  if (count)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasPushCount:(BOOL)count
{
  if (count)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasWheelchairUse:(BOOL)use
{
  if (use)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasUploadedDate:(BOOL)date
{
  if (date)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasMmv:(BOOL)mmv
{
  if (mmv)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasMmg:(BOOL)mmg
{
  if (mmg)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasAmm:(BOOL)amm
{
  if (amm)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableFitnessFriendActivitySnapshot;
  v4 = [(HDCodableFitnessFriendActivitySnapshot *)&v8 description];
  dictionaryRepresentation = [(HDCodableFitnessFriendActivitySnapshot *)self dictionaryRepresentation];
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

  sourceUUID = self->_sourceUUID;
  if (sourceUUID)
  {
    [dictionary setObject:sourceUUID forKey:@"sourceUUID"];
  }

  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_snapshotIndex];
    [dictionary setObject:v11 forKey:@"snapshotIndex"];

    has = self->_has;
    if ((*&has & 0x20) == 0)
    {
LABEL_9:
      if ((*&has & 0x2000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_30;
    }
  }

  else if ((*&has & 0x20) == 0)
  {
    goto LABEL_9;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:self->_date];
  [dictionary setObject:v12 forKey:@"date"];

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_10:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  v13 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_timeZoneOffsetFromUTCForNoon];
  [dictionary setObject:v13 forKey:@"timeZoneOffsetFromUTCForNoon"];

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_11:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:self->_energyBurned];
  [dictionary setObject:v14 forKey:@"energyBurned"];

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_12:
    if ((*&has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  v15 = [MEMORY[0x277CCABB0] numberWithDouble:self->_energyBurnedGoal];
  [dictionary setObject:v15 forKey:@"energyBurnedGoal"];

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_13:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:self->_briskMinutes];
  [dictionary setObject:v16 forKey:@"briskMinutes"];

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_14:
    if ((*&has & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  v17 = [MEMORY[0x277CCABB0] numberWithDouble:self->_briskMinutesGoal];
  [dictionary setObject:v17 forKey:@"briskMinutesGoal"];

  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_15:
    if ((*&has & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:self->_activeHours];
  [dictionary setObject:v18 forKey:@"activeHours"];

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_16:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:self->_activeHoursGoal];
  [dictionary setObject:v19 forKey:@"activeHoursGoal"];

  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_17:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  v20 = [MEMORY[0x277CCABB0] numberWithDouble:self->_walkingAndRunningDistance];
  [dictionary setObject:v20 forKey:@"walkingAndRunningDistance"];

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_18:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  v21 = [MEMORY[0x277CCABB0] numberWithDouble:self->_stepCount];
  [dictionary setObject:v21 forKey:@"stepCount"];

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_19:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_39:
  v22 = [MEMORY[0x277CCABB0] numberWithDouble:self->_pushCount];
  [dictionary setObject:v22 forKey:@"pushCount"];

  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_20:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_41;
  }

LABEL_40:
  v23 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_wheelchairUse];
  [dictionary setObject:v23 forKey:@"wheelchairUse"];

  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_21:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_42;
  }

LABEL_41:
  v24 = [MEMORY[0x277CCABB0] numberWithDouble:self->_uploadedDate];
  [dictionary setObject:v24 forKey:@"uploadedDate"];

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_22:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_43;
  }

LABEL_42:
  v25 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mmv];
  [dictionary setObject:v25 forKey:@"mmv"];

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_23:
    if ((*&has & 4) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_43:
  v26 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mmg];
  [dictionary setObject:v26 forKey:@"mmg"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_24:
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_amm];
    [dictionary setObject:v9 forKey:@"amm"];
  }

LABEL_25:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v23 = toCopy;
  if (self->_sample)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v23;
  }

  if (self->_friendUUID)
  {
    PBDataWriterWriteDataField();
    toCopy = v23;
  }

  if (self->_sourceUUID)
  {
    PBDataWriterWriteDataField();
    toCopy = v23;
  }

  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    snapshotIndex = self->_snapshotIndex;
    PBDataWriterWriteInt64Field();
    toCopy = v23;
    has = self->_has;
    if ((*&has & 0x20) == 0)
    {
LABEL_9:
      if ((*&has & 0x2000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_30;
    }
  }

  else if ((*&has & 0x20) == 0)
  {
    goto LABEL_9;
  }

  date = self->_date;
  PBDataWriterWriteDoubleField();
  toCopy = v23;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_10:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  timeZoneOffsetFromUTCForNoon = self->_timeZoneOffsetFromUTCForNoon;
  PBDataWriterWriteInt64Field();
  toCopy = v23;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_11:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  energyBurned = self->_energyBurned;
  PBDataWriterWriteDoubleField();
  toCopy = v23;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_12:
    if ((*&has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  energyBurnedGoal = self->_energyBurnedGoal;
  PBDataWriterWriteDoubleField();
  toCopy = v23;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_13:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  briskMinutes = self->_briskMinutes;
  PBDataWriterWriteDoubleField();
  toCopy = v23;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_14:
    if ((*&has & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  briskMinutesGoal = self->_briskMinutesGoal;
  PBDataWriterWriteDoubleField();
  toCopy = v23;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_15:
    if ((*&has & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  activeHours = self->_activeHours;
  PBDataWriterWriteDoubleField();
  toCopy = v23;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_16:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  activeHoursGoal = self->_activeHoursGoal;
  PBDataWriterWriteDoubleField();
  toCopy = v23;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_17:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  walkingAndRunningDistance = self->_walkingAndRunningDistance;
  PBDataWriterWriteDoubleField();
  toCopy = v23;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_18:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  stepCount = self->_stepCount;
  PBDataWriterWriteDoubleField();
  toCopy = v23;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_19:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_39:
  pushCount = self->_pushCount;
  PBDataWriterWriteDoubleField();
  toCopy = v23;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_20:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_41;
  }

LABEL_40:
  wheelchairUse = self->_wheelchairUse;
  PBDataWriterWriteInt64Field();
  toCopy = v23;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_21:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_42;
  }

LABEL_41:
  uploadedDate = self->_uploadedDate;
  PBDataWriterWriteDoubleField();
  toCopy = v23;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_22:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_43;
  }

LABEL_42:
  mmv = self->_mmv;
  PBDataWriterWriteDoubleField();
  toCopy = v23;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_23:
    if ((*&has & 4) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_43:
  mmg = self->_mmg;
  PBDataWriterWriteDoubleField();
  toCopy = v23;
  if ((*&self->_has & 4) != 0)
  {
LABEL_24:
    amm = self->_amm;
    PBDataWriterWriteInt64Field();
    toCopy = v23;
  }

LABEL_25:
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

  if (self->_friendUUID)
  {
    [v6 setFriendUUID:?];
    toCopy = v6;
  }

  if (self->_sourceUUID)
  {
    [v6 setSourceUUID:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    *(toCopy + 12) = self->_snapshotIndex;
    *(toCopy + 42) |= 0x800u;
    has = self->_has;
    if ((*&has & 0x20) == 0)
    {
LABEL_9:
      if ((*&has & 0x2000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_30;
    }
  }

  else if ((*&has & 0x20) == 0)
  {
    goto LABEL_9;
  }

  *(toCopy + 6) = *&self->_date;
  *(toCopy + 42) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_10:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(toCopy + 14) = self->_timeZoneOffsetFromUTCForNoon;
  *(toCopy + 42) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_11:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(toCopy + 7) = *&self->_energyBurned;
  *(toCopy + 42) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_12:
    if ((*&has & 8) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(toCopy + 8) = *&self->_energyBurnedGoal;
  *(toCopy + 42) |= 0x80u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_13:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(toCopy + 4) = *&self->_briskMinutes;
  *(toCopy + 42) |= 8u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_14:
    if ((*&has & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(toCopy + 5) = *&self->_briskMinutesGoal;
  *(toCopy + 42) |= 0x10u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_15:
    if ((*&has & 2) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(toCopy + 1) = *&self->_activeHours;
  *(toCopy + 42) |= 1u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_16:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(toCopy + 2) = *&self->_activeHoursGoal;
  *(toCopy + 42) |= 2u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_17:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(toCopy + 16) = *&self->_walkingAndRunningDistance;
  *(toCopy + 42) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_18:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(toCopy + 13) = *&self->_stepCount;
  *(toCopy + 42) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_19:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(toCopy + 11) = *&self->_pushCount;
  *(toCopy + 42) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_20:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(toCopy + 17) = self->_wheelchairUse;
  *(toCopy + 42) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_21:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(toCopy + 15) = *&self->_uploadedDate;
  *(toCopy + 42) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_22:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(toCopy + 10) = *&self->_mmv;
  *(toCopy + 42) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_23:
    if ((*&has & 4) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_43:
  *(toCopy + 9) = *&self->_mmg;
  *(toCopy + 42) |= 0x100u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_24:
    *(toCopy + 3) = self->_amm;
    *(toCopy + 42) |= 4u;
  }

LABEL_25:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HDCodableSample *)self->_sample copyWithZone:zone];
  v7 = *(v5 + 152);
  *(v5 + 152) = v6;

  v8 = [(NSData *)self->_friendUUID copyWithZone:zone];
  v9 = *(v5 + 144);
  *(v5 + 144) = v8;

  v10 = [(NSData *)self->_sourceUUID copyWithZone:zone];
  v11 = *(v5 + 160);
  *(v5 + 160) = v10;

  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    *(v5 + 96) = self->_snapshotIndex;
    *(v5 + 168) |= 0x800u;
    has = self->_has;
    if ((*&has & 0x20) == 0)
    {
LABEL_3:
      if ((*&has & 0x2000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((*&has & 0x20) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 48) = self->_date;
  *(v5 + 168) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_4:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v5 + 112) = self->_timeZoneOffsetFromUTCForNoon;
  *(v5 + 168) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_5:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v5 + 56) = self->_energyBurned;
  *(v5 + 168) |= 0x40u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_6:
    if ((*&has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v5 + 64) = self->_energyBurnedGoal;
  *(v5 + 168) |= 0x80u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_7:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v5 + 32) = self->_briskMinutes;
  *(v5 + 168) |= 8u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_8:
    if ((*&has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v5 + 40) = self->_briskMinutesGoal;
  *(v5 + 168) |= 0x10u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_9:
    if ((*&has & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v5 + 8) = self->_activeHours;
  *(v5 + 168) |= 1u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_10:
    if ((*&has & 0x8000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v5 + 16) = self->_activeHoursGoal;
  *(v5 + 168) |= 2u;
  has = self->_has;
  if ((*&has & 0x8000) == 0)
  {
LABEL_11:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v5 + 128) = self->_walkingAndRunningDistance;
  *(v5 + 168) |= 0x8000u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_12:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v5 + 104) = self->_stepCount;
  *(v5 + 168) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_13:
    if ((*&has & 0x10000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v5 + 88) = self->_pushCount;
  *(v5 + 168) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x10000) == 0)
  {
LABEL_14:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v5 + 136) = self->_wheelchairUse;
  *(v5 + 168) |= 0x10000u;
  has = self->_has;
  if ((*&has & 0x4000) == 0)
  {
LABEL_15:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v5 + 120) = self->_uploadedDate;
  *(v5 + 168) |= 0x4000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_16:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_17;
    }

LABEL_35:
    *(v5 + 72) = self->_mmg;
    *(v5 + 168) |= 0x100u;
    if ((*&self->_has & 4) == 0)
    {
      return v5;
    }

    goto LABEL_18;
  }

LABEL_34:
  *(v5 + 80) = self->_mmv;
  *(v5 + 168) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x100) != 0)
  {
    goto LABEL_35;
  }

LABEL_17:
  if ((*&has & 4) != 0)
  {
LABEL_18:
    *(v5 + 24) = self->_amm;
    *(v5 + 168) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_93;
  }

  sample = self->_sample;
  if (sample | *(equalCopy + 19))
  {
    if (![(HDCodableSample *)sample isEqual:?])
    {
      goto LABEL_93;
    }
  }

  friendUUID = self->_friendUUID;
  if (friendUUID | *(equalCopy + 18))
  {
    if (![(NSData *)friendUUID isEqual:?])
    {
      goto LABEL_93;
    }
  }

  sourceUUID = self->_sourceUUID;
  if (sourceUUID | *(equalCopy + 20))
  {
    if (![(NSData *)sourceUUID isEqual:?])
    {
      goto LABEL_93;
    }
  }

  has = self->_has;
  v9 = *(equalCopy + 42);
  if ((*&has & 0x800) != 0)
  {
    if ((v9 & 0x800) == 0 || self->_snapshotIndex != *(equalCopy + 12))
    {
      goto LABEL_93;
    }
  }

  else if ((v9 & 0x800) != 0)
  {
LABEL_93:
    v10 = 0;
    goto LABEL_94;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v9 & 0x20) == 0 || self->_date != *(equalCopy + 6))
    {
      goto LABEL_93;
    }
  }

  else if ((v9 & 0x20) != 0)
  {
    goto LABEL_93;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v9 & 0x2000) == 0 || self->_timeZoneOffsetFromUTCForNoon != *(equalCopy + 14))
    {
      goto LABEL_93;
    }
  }

  else if ((v9 & 0x2000) != 0)
  {
    goto LABEL_93;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v9 & 0x40) == 0 || self->_energyBurned != *(equalCopy + 7))
    {
      goto LABEL_93;
    }
  }

  else if ((v9 & 0x40) != 0)
  {
    goto LABEL_93;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v9 & 0x80) == 0 || self->_energyBurnedGoal != *(equalCopy + 8))
    {
      goto LABEL_93;
    }
  }

  else if ((v9 & 0x80) != 0)
  {
    goto LABEL_93;
  }

  if ((*&has & 8) != 0)
  {
    if ((v9 & 8) == 0 || self->_briskMinutes != *(equalCopy + 4))
    {
      goto LABEL_93;
    }
  }

  else if ((v9 & 8) != 0)
  {
    goto LABEL_93;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v9 & 0x10) == 0 || self->_briskMinutesGoal != *(equalCopy + 5))
    {
      goto LABEL_93;
    }
  }

  else if ((v9 & 0x10) != 0)
  {
    goto LABEL_93;
  }

  if (*&has)
  {
    if ((v9 & 1) == 0 || self->_activeHours != *(equalCopy + 1))
    {
      goto LABEL_93;
    }
  }

  else if (v9)
  {
    goto LABEL_93;
  }

  if ((*&has & 2) != 0)
  {
    if ((v9 & 2) == 0 || self->_activeHoursGoal != *(equalCopy + 2))
    {
      goto LABEL_93;
    }
  }

  else if ((v9 & 2) != 0)
  {
    goto LABEL_93;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v9 & 0x8000) == 0 || self->_walkingAndRunningDistance != *(equalCopy + 16))
    {
      goto LABEL_93;
    }
  }

  else if ((v9 & 0x8000) != 0)
  {
    goto LABEL_93;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v9 & 0x1000) == 0 || self->_stepCount != *(equalCopy + 13))
    {
      goto LABEL_93;
    }
  }

  else if ((v9 & 0x1000) != 0)
  {
    goto LABEL_93;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v9 & 0x400) == 0 || self->_pushCount != *(equalCopy + 11))
    {
      goto LABEL_93;
    }
  }

  else if ((v9 & 0x400) != 0)
  {
    goto LABEL_93;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v9 & 0x10000) == 0 || self->_wheelchairUse != *(equalCopy + 17))
    {
      goto LABEL_93;
    }
  }

  else if ((v9 & 0x10000) != 0)
  {
    goto LABEL_93;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v9 & 0x4000) == 0 || self->_uploadedDate != *(equalCopy + 15))
    {
      goto LABEL_93;
    }
  }

  else if ((v9 & 0x4000) != 0)
  {
    goto LABEL_93;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v9 & 0x200) == 0 || self->_mmv != *(equalCopy + 10))
    {
      goto LABEL_93;
    }
  }

  else if ((v9 & 0x200) != 0)
  {
    goto LABEL_93;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v9 & 0x100) == 0 || self->_mmg != *(equalCopy + 9))
    {
      goto LABEL_93;
    }
  }

  else if ((v9 & 0x100) != 0)
  {
    goto LABEL_93;
  }

  if ((*&has & 4) != 0)
  {
    if ((v9 & 4) == 0 || self->_amm != *(equalCopy + 3))
    {
      goto LABEL_93;
    }

    v10 = 1;
  }

  else
  {
    v10 = (*(equalCopy + 42) & 4) == 0;
  }

LABEL_94:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(HDCodableSample *)self->_sample hash];
  v4 = [(NSData *)self->_friendUUID hash];
  v5 = [(NSData *)self->_sourceUUID hash];
  has = self->_has;
  if ((*&has & 0x800) != 0)
  {
    v9 = 2654435761 * self->_snapshotIndex;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v13 = 0;
    goto LABEL_9;
  }

  v9 = 0;
  if ((*&has & 0x20) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  date = self->_date;
  if (date < 0.0)
  {
    date = -date;
  }

  *v6.i64 = floor(date + 0.5);
  v11 = (date - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v6 = vbslq_s8(vnegq_f64(v12), v7, v6);
  v13 = 2654435761u * *v6.i64;
  if (v11 >= 0.0)
  {
    if (v11 > 0.0)
    {
      v13 += v11;
    }
  }

  else
  {
    v13 -= fabs(v11);
  }

LABEL_9:
  if ((*&has & 0x2000) != 0)
  {
    v14 = 2654435761 * self->_timeZoneOffsetFromUTCForNoon;
    if ((*&has & 0x40) != 0)
    {
      goto LABEL_11;
    }

LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  v14 = 0;
  if ((*&has & 0x40) == 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  energyBurned = self->_energyBurned;
  if (energyBurned < 0.0)
  {
    energyBurned = -energyBurned;
  }

  *v6.i64 = floor(energyBurned + 0.5);
  v16 = (energyBurned - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v17.f64[0] = NAN;
  v17.f64[1] = NAN;
  v6 = vbslq_s8(vnegq_f64(v17), v7, v6);
  v18 = 2654435761u * *v6.i64;
  if (v16 >= 0.0)
  {
    if (v16 > 0.0)
    {
      v18 += v16;
    }
  }

  else
  {
    v18 -= fabs(v16);
  }

LABEL_17:
  if ((*&has & 0x80) != 0)
  {
    energyBurnedGoal = self->_energyBurnedGoal;
    if (energyBurnedGoal < 0.0)
    {
      energyBurnedGoal = -energyBurnedGoal;
    }

    *v6.i64 = floor(energyBurnedGoal + 0.5);
    v21 = (energyBurnedGoal - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v22.f64[0] = NAN;
    v22.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v22), v7, v6);
    v19 = 2654435761u * *v6.i64;
    if (v21 >= 0.0)
    {
      if (v21 > 0.0)
      {
        v19 += v21;
      }
    }

    else
    {
      v19 -= fabs(v21);
    }
  }

  else
  {
    v19 = 0;
  }

  if ((*&has & 8) != 0)
  {
    briskMinutes = self->_briskMinutes;
    if (briskMinutes < 0.0)
    {
      briskMinutes = -briskMinutes;
    }

    *v6.i64 = floor(briskMinutes + 0.5);
    v25 = (briskMinutes - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v26.f64[0] = NAN;
    v26.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v26), v7, v6);
    v23 = 2654435761u * *v6.i64;
    if (v25 >= 0.0)
    {
      if (v25 > 0.0)
      {
        v23 += v25;
      }
    }

    else
    {
      v23 -= fabs(v25);
    }
  }

  else
  {
    v23 = 0;
  }

  if ((*&has & 0x10) != 0)
  {
    briskMinutesGoal = self->_briskMinutesGoal;
    if (briskMinutesGoal < 0.0)
    {
      briskMinutesGoal = -briskMinutesGoal;
    }

    *v6.i64 = floor(briskMinutesGoal + 0.5);
    v29 = (briskMinutesGoal - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v30.f64[0] = NAN;
    v30.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v30), v7, v6);
    v27 = 2654435761u * *v6.i64;
    if (v29 >= 0.0)
    {
      if (v29 > 0.0)
      {
        v27 += v29;
      }
    }

    else
    {
      v27 -= fabs(v29);
    }
  }

  else
  {
    v27 = 0;
  }

  if (*&has)
  {
    activeHours = self->_activeHours;
    if (activeHours < 0.0)
    {
      activeHours = -activeHours;
    }

    *v6.i64 = floor(activeHours + 0.5);
    v33 = (activeHours - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v34.f64[0] = NAN;
    v34.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v34), v7, v6);
    v31 = 2654435761u * *v6.i64;
    if (v33 >= 0.0)
    {
      if (v33 > 0.0)
      {
        v31 += v33;
      }
    }

    else
    {
      v31 -= fabs(v33);
    }
  }

  else
  {
    v31 = 0;
  }

  if ((*&has & 2) != 0)
  {
    activeHoursGoal = self->_activeHoursGoal;
    if (activeHoursGoal < 0.0)
    {
      activeHoursGoal = -activeHoursGoal;
    }

    *v6.i64 = floor(activeHoursGoal + 0.5);
    v37 = (activeHoursGoal - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v38.f64[0] = NAN;
    v38.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v38), v7, v6);
    v35 = 2654435761u * *v6.i64;
    if (v37 >= 0.0)
    {
      if (v37 > 0.0)
      {
        v35 += v37;
      }
    }

    else
    {
      v35 -= fabs(v37);
    }
  }

  else
  {
    v35 = 0;
  }

  if ((*&has & 0x8000) != 0)
  {
    walkingAndRunningDistance = self->_walkingAndRunningDistance;
    if (walkingAndRunningDistance < 0.0)
    {
      walkingAndRunningDistance = -walkingAndRunningDistance;
    }

    *v6.i64 = floor(walkingAndRunningDistance + 0.5);
    v41 = (walkingAndRunningDistance - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v42.f64[0] = NAN;
    v42.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v42), v7, v6);
    v39 = 2654435761u * *v6.i64;
    if (v41 >= 0.0)
    {
      if (v41 > 0.0)
      {
        v39 += v41;
      }
    }

    else
    {
      v39 -= fabs(v41);
    }
  }

  else
  {
    v39 = 0;
  }

  if ((*&has & 0x1000) != 0)
  {
    stepCount = self->_stepCount;
    if (stepCount < 0.0)
    {
      stepCount = -stepCount;
    }

    *v6.i64 = floor(stepCount + 0.5);
    v45 = (stepCount - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v46.f64[0] = NAN;
    v46.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v46), v7, v6);
    v43 = 2654435761u * *v6.i64;
    if (v45 >= 0.0)
    {
      if (v45 > 0.0)
      {
        v43 += v45;
      }
    }

    else
    {
      v43 -= fabs(v45);
    }
  }

  else
  {
    v43 = 0;
  }

  if ((*&has & 0x400) != 0)
  {
    pushCount = self->_pushCount;
    if (pushCount < 0.0)
    {
      pushCount = -pushCount;
    }

    *v6.i64 = floor(pushCount + 0.5);
    v49 = (pushCount - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v50.f64[0] = NAN;
    v50.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v50), v7, v6);
    v47 = 2654435761u * *v6.i64;
    if (v49 >= 0.0)
    {
      if (v49 > 0.0)
      {
        v47 += v49;
      }
    }

    else
    {
      v47 -= fabs(v49);
    }
  }

  else
  {
    v47 = 0;
  }

  if ((*&has & 0x10000) != 0)
  {
    v51 = 2654435761 * self->_wheelchairUse;
    if ((*&has & 0x4000) != 0)
    {
      goto LABEL_87;
    }

LABEL_92:
    v55 = 0;
    goto LABEL_93;
  }

  v51 = 0;
  if ((*&has & 0x4000) == 0)
  {
    goto LABEL_92;
  }

LABEL_87:
  uploadedDate = self->_uploadedDate;
  if (uploadedDate < 0.0)
  {
    uploadedDate = -uploadedDate;
  }

  *v6.i64 = floor(uploadedDate + 0.5);
  v53 = (uploadedDate - *v6.i64) * 1.84467441e19;
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v54.f64[0] = NAN;
  v54.f64[1] = NAN;
  v6 = vbslq_s8(vnegq_f64(v54), v7, v6);
  v55 = 2654435761u * *v6.i64;
  if (v53 >= 0.0)
  {
    if (v53 > 0.0)
    {
      v55 += v53;
    }
  }

  else
  {
    v55 -= fabs(v53);
  }

LABEL_93:
  if ((*&has & 0x200) != 0)
  {
    mmv = self->_mmv;
    if (mmv < 0.0)
    {
      mmv = -mmv;
    }

    *v6.i64 = floor(mmv + 0.5);
    v58 = (mmv - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v59.f64[0] = NAN;
    v59.f64[1] = NAN;
    v6 = vbslq_s8(vnegq_f64(v59), v7, v6);
    v56 = 2654435761u * *v6.i64;
    if (v58 >= 0.0)
    {
      if (v58 > 0.0)
      {
        v56 += v58;
      }
    }

    else
    {
      v56 -= fabs(v58);
    }
  }

  else
  {
    v56 = 0;
  }

  if ((*&has & 0x100) != 0)
  {
    mmg = self->_mmg;
    if (mmg < 0.0)
    {
      mmg = -mmg;
    }

    *v6.i64 = floor(mmg + 0.5);
    v62 = (mmg - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v63.f64[0] = NAN;
    v63.f64[1] = NAN;
    v60 = 2654435761u * *vbslq_s8(vnegq_f64(v63), v7, v6).i64;
    if (v62 >= 0.0)
    {
      if (v62 > 0.0)
      {
        v60 += v62;
      }
    }

    else
    {
      v60 -= fabs(v62);
    }
  }

  else
  {
    v60 = 0;
  }

  if ((*&has & 4) != 0)
  {
    v64 = 2654435761 * self->_amm;
  }

  else
  {
    v64 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v9 ^ v13 ^ v14 ^ v18 ^ v19 ^ v23 ^ v27 ^ v31 ^ v35 ^ v39 ^ v43 ^ v47 ^ v51 ^ v55 ^ v56 ^ v60 ^ v64;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  sample = self->_sample;
  v6 = *(fromCopy + 19);
  v8 = fromCopy;
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

    sample = [(HDCodableFitnessFriendActivitySnapshot *)self setSample:?];
  }

  fromCopy = v8;
LABEL_7:
  if (*(fromCopy + 18))
  {
    sample = [(HDCodableFitnessFriendActivitySnapshot *)self setFriendUUID:?];
    fromCopy = v8;
  }

  if (*(fromCopy + 20))
  {
    sample = [(HDCodableFitnessFriendActivitySnapshot *)self setSourceUUID:?];
    fromCopy = v8;
  }

  v7 = *(fromCopy + 42);
  if ((v7 & 0x800) != 0)
  {
    self->_snapshotIndex = *(fromCopy + 12);
    *&self->_has |= 0x800u;
    v7 = *(fromCopy + 42);
    if ((v7 & 0x20) == 0)
    {
LABEL_13:
      if ((v7 & 0x2000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_34;
    }
  }

  else if ((v7 & 0x20) == 0)
  {
    goto LABEL_13;
  }

  self->_date = *(fromCopy + 6);
  *&self->_has |= 0x20u;
  v7 = *(fromCopy + 42);
  if ((v7 & 0x2000) == 0)
  {
LABEL_14:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_timeZoneOffsetFromUTCForNoon = *(fromCopy + 14);
  *&self->_has |= 0x2000u;
  v7 = *(fromCopy + 42);
  if ((v7 & 0x40) == 0)
  {
LABEL_15:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  self->_energyBurned = *(fromCopy + 7);
  *&self->_has |= 0x40u;
  v7 = *(fromCopy + 42);
  if ((v7 & 0x80) == 0)
  {
LABEL_16:
    if ((v7 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  self->_energyBurnedGoal = *(fromCopy + 8);
  *&self->_has |= 0x80u;
  v7 = *(fromCopy + 42);
  if ((v7 & 8) == 0)
  {
LABEL_17:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  self->_briskMinutes = *(fromCopy + 4);
  *&self->_has |= 8u;
  v7 = *(fromCopy + 42);
  if ((v7 & 0x10) == 0)
  {
LABEL_18:
    if ((v7 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  self->_briskMinutesGoal = *(fromCopy + 5);
  *&self->_has |= 0x10u;
  v7 = *(fromCopy + 42);
  if ((v7 & 1) == 0)
  {
LABEL_19:
    if ((v7 & 2) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_39:
  self->_activeHours = *(fromCopy + 1);
  *&self->_has |= 1u;
  v7 = *(fromCopy + 42);
  if ((v7 & 2) == 0)
  {
LABEL_20:
    if ((v7 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_41;
  }

LABEL_40:
  self->_activeHoursGoal = *(fromCopy + 2);
  *&self->_has |= 2u;
  v7 = *(fromCopy + 42);
  if ((v7 & 0x8000) == 0)
  {
LABEL_21:
    if ((v7 & 0x1000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_42;
  }

LABEL_41:
  self->_walkingAndRunningDistance = *(fromCopy + 16);
  *&self->_has |= 0x8000u;
  v7 = *(fromCopy + 42);
  if ((v7 & 0x1000) == 0)
  {
LABEL_22:
    if ((v7 & 0x400) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_stepCount = *(fromCopy + 13);
  *&self->_has |= 0x1000u;
  v7 = *(fromCopy + 42);
  if ((v7 & 0x400) == 0)
  {
LABEL_23:
    if ((v7 & 0x10000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_pushCount = *(fromCopy + 11);
  *&self->_has |= 0x400u;
  v7 = *(fromCopy + 42);
  if ((v7 & 0x10000) == 0)
  {
LABEL_24:
    if ((v7 & 0x4000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_wheelchairUse = *(fromCopy + 17);
  *&self->_has |= 0x10000u;
  v7 = *(fromCopy + 42);
  if ((v7 & 0x4000) == 0)
  {
LABEL_25:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_uploadedDate = *(fromCopy + 15);
  *&self->_has |= 0x4000u;
  v7 = *(fromCopy + 42);
  if ((v7 & 0x200) == 0)
  {
LABEL_26:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_mmv = *(fromCopy + 10);
  *&self->_has |= 0x200u;
  v7 = *(fromCopy + 42);
  if ((v7 & 0x100) == 0)
  {
LABEL_27:
    if ((v7 & 4) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_47:
  self->_mmg = *(fromCopy + 9);
  *&self->_has |= 0x100u;
  if ((*(fromCopy + 42) & 4) != 0)
  {
LABEL_28:
    self->_amm = *(fromCopy + 3);
    *&self->_has |= 4u;
  }

LABEL_29:

  MEMORY[0x2821F96F8](sample, fromCopy);
}

@end