@interface HDCodableSleepSchedule
- (BOOL)applyToObject:(id)object;
- (BOOL)applyToObject:(id)object error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasBedMinute:(BOOL)minute;
- (void)setHasFriday:(BOOL)friday;
- (void)setHasMonday:(BOOL)monday;
- (void)setHasOverrideDayIndex:(BOOL)index;
- (void)setHasSaturday:(BOOL)saturday;
- (void)setHasSunday:(BOOL)sunday;
- (void)setHasThursday:(BOOL)thursday;
- (void)setHasTuesday:(BOOL)tuesday;
- (void)setHasWakeHour:(BOOL)hour;
- (void)setHasWakeMinute:(BOOL)minute;
- (void)setHasWednesday:(BOOL)wednesday;
- (void)writeTo:(id)to;
@end

@implementation HDCodableSleepSchedule

- (BOOL)applyToObject:(id)object
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v3 = [(HDCodableSleepSchedule *)self applyToObject:object error:&v8];
  v4 = v8;
  if (!v3)
  {
    _HKInitializeLogging();
    v5 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v4;
      _os_log_error_impl(&dword_228986000, v5, OS_LOG_TYPE_ERROR, "Failed to decode object of type HKSleepSchedule with error %@", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)applyToObject:(id)object error:(id *)error
{
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [v13 hk_assignError:error code:3 format:{@"Unexpected class %@", v15}];

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  sample = [(HDCodableSleepSchedule *)self sample];
  v8 = [sample applyToObject:objectCopy];

  if ((v8 & 1) == 0)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"Failed to decode superclass message"];
    goto LABEL_14;
  }

  [(HDCodableSleepSchedule *)self monday];
  [(HDCodableSleepSchedule *)self tuesday];
  [(HDCodableSleepSchedule *)self wednesday];
  [(HDCodableSleepSchedule *)self thursday];
  [(HDCodableSleepSchedule *)self friday];
  [(HDCodableSleepSchedule *)self saturday];
  [(HDCodableSleepSchedule *)self sunday];
  [objectCopy _setWeekdays:HKSleepScheduleWeekdaysMake()];
  if ([(HDCodableSleepSchedule *)self hasWakeHour]&& [(HDCodableSleepSchedule *)self hasWakeMinute])
  {
    v9 = [MEMORY[0x277CBEAB8] hk_componentsWithHour:-[HDCodableSleepSchedule wakeHour](self minute:{"wakeHour"), -[HDCodableSleepSchedule wakeMinute](self, "wakeMinute")}];
    [objectCopy _setWakeTimeComponents:v9];
  }

  if ([(HDCodableSleepSchedule *)self hasBedHour]&& [(HDCodableSleepSchedule *)self hasBedMinute])
  {
    v10 = [MEMORY[0x277CBEAB8] hk_componentsWithHour:-[HDCodableSleepSchedule bedHour](self minute:{"bedHour"), -[HDCodableSleepSchedule bedMinute](self, "bedMinute")}];
    [objectCopy _setBedTimeComponents:v10];
  }

  if ([(HDCodableSleepSchedule *)self hasOverrideDayIndex])
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDCodableSleepSchedule overrideDayIndex](self, "overrideDayIndex")}];
    [objectCopy _setOverrideDayIndex:v11];
  }

  v12 = 1;
LABEL_15:

  return v12;
}

- (void)setHasMonday:(BOOL)monday
{
  if (monday)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasTuesday:(BOOL)tuesday
{
  if (tuesday)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasWednesday:(BOOL)wednesday
{
  if (wednesday)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasThursday:(BOOL)thursday
{
  if (thursday)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasFriday:(BOOL)friday
{
  if (friday)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasSaturday:(BOOL)saturday
{
  if (saturday)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasSunday:(BOOL)sunday
{
  if (sunday)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasWakeHour:(BOOL)hour
{
  if (hour)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasWakeMinute:(BOOL)minute
{
  if (minute)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasBedMinute:(BOOL)minute
{
  if (minute)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasOverrideDayIndex:(BOOL)index
{
  if (index)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableSleepSchedule;
  v4 = [(HDCodableSleepSchedule *)&v8 description];
  dictionaryRepresentation = [(HDCodableSleepSchedule *)self dictionaryRepresentation];
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

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_monday];
    [dictionary setObject:v9 forKey:@"monday"];

    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_5:
      if ((has & 0x800) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_5;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithBool:self->_tuesday];
  [dictionary setObject:v10 forKey:@"tuesday"];

  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_wednesday];
  [dictionary setObject:v11 forKey:@"wednesday"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_thursday];
  [dictionary setObject:v12 forKey:@"thursday"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_friday];
  [dictionary setObject:v13 forKey:@"friday"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_saturday];
  [dictionary setObject:v14 forKey:@"saturday"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v15 = [MEMORY[0x277CCABB0] numberWithBool:self->_sunday];
  [dictionary setObject:v15 forKey:@"sunday"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_11:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  v16 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_wakeHour];
  [dictionary setObject:v16 forKey:@"wakeHour"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_12:
    if ((has & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  v17 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_wakeMinute];
  [dictionary setObject:v17 forKey:@"wakeMinute"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_13:
    if ((has & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  v18 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_bedHour];
  [dictionary setObject:v18 forKey:@"bedHour"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_14:
    if ((has & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_29:
  v19 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_bedMinute];
  [dictionary setObject:v19 forKey:@"bedMinute"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_15:
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_overrideDayIndex];
    [dictionary setObject:v7 forKey:@"overrideDayIndex"];
  }

LABEL_16:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v18 = toCopy;
  if (self->_sample)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v18;
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    monday = self->_monday;
    PBDataWriterWriteBOOLField();
    toCopy = v18;
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_5:
      if ((has & 0x800) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_5;
  }

  tuesday = self->_tuesday;
  PBDataWriterWriteBOOLField();
  toCopy = v18;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  wednesday = self->_wednesday;
  PBDataWriterWriteBOOLField();
  toCopy = v18;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  thursday = self->_thursday;
  PBDataWriterWriteBOOLField();
  toCopy = v18;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  friday = self->_friday;
  PBDataWriterWriteBOOLField();
  toCopy = v18;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  saturday = self->_saturday;
  PBDataWriterWriteBOOLField();
  toCopy = v18;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  sunday = self->_sunday;
  PBDataWriterWriteBOOLField();
  toCopy = v18;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_11:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  wakeHour = self->_wakeHour;
  PBDataWriterWriteInt64Field();
  toCopy = v18;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_12:
    if ((has & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  wakeMinute = self->_wakeMinute;
  PBDataWriterWriteInt64Field();
  toCopy = v18;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_13:
    if ((has & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  bedHour = self->_bedHour;
  PBDataWriterWriteInt64Field();
  toCopy = v18;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_14:
    if ((has & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_29:
  bedMinute = self->_bedMinute;
  PBDataWriterWriteInt64Field();
  toCopy = v18;
  if ((*&self->_has & 4) != 0)
  {
LABEL_15:
    overrideDayIndex = self->_overrideDayIndex;
    PBDataWriterWriteInt64Field();
    toCopy = v18;
  }

LABEL_16:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_sample)
  {
    v6 = toCopy;
    [toCopy setSample:?];
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(toCopy + 57) = self->_monday;
    *(toCopy + 32) |= 0x40u;
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_5:
      if ((has & 0x800) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_5;
  }

  *(toCopy + 61) = self->_tuesday;
  *(toCopy + 32) |= 0x400u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_6:
    if ((has & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(toCopy + 62) = self->_wednesday;
  *(toCopy + 32) |= 0x800u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_7:
    if ((has & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(toCopy + 60) = self->_thursday;
  *(toCopy + 32) |= 0x200u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_8:
    if ((has & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(toCopy + 56) = self->_friday;
  *(toCopy + 32) |= 0x20u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_9:
    if ((has & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(toCopy + 58) = self->_saturday;
  *(toCopy + 32) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_10:
    if ((has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(toCopy + 59) = self->_sunday;
  *(toCopy + 32) |= 0x100u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_11:
    if ((has & 0x10) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(toCopy + 4) = self->_wakeHour;
  *(toCopy + 32) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_12:
    if ((has & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(toCopy + 5) = self->_wakeMinute;
  *(toCopy + 32) |= 0x10u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_13:
    if ((has & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(toCopy + 1) = self->_bedHour;
  *(toCopy + 32) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_14:
    if ((has & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_29:
  *(toCopy + 2) = self->_bedMinute;
  *(toCopy + 32) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_15:
    *(toCopy + 3) = self->_overrideDayIndex;
    *(toCopy + 32) |= 4u;
  }

LABEL_16:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HDCodableSample *)self->_sample copyWithZone:zone];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(v5 + 57) = self->_monday;
    *(v5 + 64) |= 0x40u;
    has = self->_has;
    if ((has & 0x400) == 0)
    {
LABEL_3:
      if ((has & 0x800) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 61) = self->_tuesday;
  *(v5 + 64) |= 0x400u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_4:
    if ((has & 0x200) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v5 + 62) = self->_wednesday;
  *(v5 + 64) |= 0x800u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v5 + 60) = self->_thursday;
  *(v5 + 64) |= 0x200u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x80) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v5 + 56) = self->_friday;
  *(v5 + 64) |= 0x20u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_7:
    if ((has & 0x100) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v5 + 58) = self->_saturday;
  *(v5 + 64) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v5 + 59) = self->_sunday;
  *(v5 + 64) |= 0x100u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_9:
    if ((has & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v5 + 32) = self->_wakeHour;
  *(v5 + 64) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_10:
    if ((has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v5 + 40) = self->_wakeMinute;
  *(v5 + 64) |= 0x10u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_11:
    if ((has & 2) == 0)
    {
      goto LABEL_12;
    }

LABEL_25:
    *(v5 + 16) = self->_bedMinute;
    *(v5 + 64) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      return v5;
    }

    goto LABEL_13;
  }

LABEL_24:
  *(v5 + 8) = self->_bedHour;
  *(v5 + 64) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_25;
  }

LABEL_12:
  if ((has & 4) != 0)
  {
LABEL_13:
    *(v5 + 24) = self->_overrideDayIndex;
    *(v5 + 64) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_85;
  }

  sample = self->_sample;
  if (sample | *(equalCopy + 6))
  {
    if (![(HDCodableSample *)sample isEqual:?])
    {
      goto LABEL_85;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 32);
  if ((has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_85;
    }

    v8 = *(equalCopy + 57);
    if (self->_monday)
    {
      if ((*(equalCopy + 57) & 1) == 0)
      {
        goto LABEL_85;
      }
    }

    else if (*(equalCopy + 57))
    {
      goto LABEL_85;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_85;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(equalCopy + 32) & 0x400) == 0)
    {
      goto LABEL_85;
    }

    v9 = *(equalCopy + 61);
    if (self->_tuesday)
    {
      if ((*(equalCopy + 61) & 1) == 0)
      {
        goto LABEL_85;
      }
    }

    else if (*(equalCopy + 61))
    {
      goto LABEL_85;
    }
  }

  else if ((*(equalCopy + 32) & 0x400) != 0)
  {
    goto LABEL_85;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(equalCopy + 32) & 0x800) == 0)
    {
      goto LABEL_85;
    }

    v10 = *(equalCopy + 62);
    if (self->_wednesday)
    {
      if ((*(equalCopy + 62) & 1) == 0)
      {
        goto LABEL_85;
      }
    }

    else if (*(equalCopy + 62))
    {
      goto LABEL_85;
    }
  }

  else if ((*(equalCopy + 32) & 0x800) != 0)
  {
    goto LABEL_85;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(equalCopy + 32) & 0x200) == 0)
    {
      goto LABEL_85;
    }

    v11 = *(equalCopy + 60);
    if (self->_thursday)
    {
      if ((*(equalCopy + 60) & 1) == 0)
      {
        goto LABEL_85;
      }
    }

    else if (*(equalCopy + 60))
    {
      goto LABEL_85;
    }
  }

  else if ((*(equalCopy + 32) & 0x200) != 0)
  {
    goto LABEL_85;
  }

  if ((has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_85;
    }

    v12 = *(equalCopy + 56);
    if (self->_friday)
    {
      if ((*(equalCopy + 56) & 1) == 0)
      {
        goto LABEL_85;
      }
    }

    else if (*(equalCopy + 56))
    {
      goto LABEL_85;
    }
  }

  else if ((v7 & 0x20) != 0)
  {
    goto LABEL_85;
  }

  if ((has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_85;
    }

    v13 = *(equalCopy + 58);
    if (self->_saturday)
    {
      if ((*(equalCopy + 58) & 1) == 0)
      {
        goto LABEL_85;
      }
    }

    else if (*(equalCopy + 58))
    {
      goto LABEL_85;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_85;
  }

  if ((*&self->_has & 0x100) == 0)
  {
    if ((*(equalCopy + 32) & 0x100) == 0)
    {
      goto LABEL_18;
    }

LABEL_85:
    v15 = 0;
    goto LABEL_86;
  }

  if ((*(equalCopy + 32) & 0x100) == 0)
  {
    goto LABEL_85;
  }

  v14 = *(equalCopy + 59);
  if (self->_sunday)
  {
    if ((*(equalCopy + 59) & 1) == 0)
    {
      goto LABEL_85;
    }
  }

  else if (*(equalCopy + 59))
  {
    goto LABEL_85;
  }

LABEL_18:
  if ((has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_wakeHour != *(equalCopy + 4))
    {
      goto LABEL_85;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_85;
  }

  if ((has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_wakeMinute != *(equalCopy + 5))
    {
      goto LABEL_85;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_85;
  }

  if (has)
  {
    if ((v7 & 1) == 0 || self->_bedHour != *(equalCopy + 1))
    {
      goto LABEL_85;
    }
  }

  else if (v7)
  {
    goto LABEL_85;
  }

  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_bedMinute != *(equalCopy + 2))
    {
      goto LABEL_85;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_85;
  }

  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_overrideDayIndex != *(equalCopy + 3))
    {
      goto LABEL_85;
    }

    v15 = 1;
  }

  else
  {
    v15 = (v7 & 4) == 0;
  }

LABEL_86:

  return v15;
}

- (unint64_t)hash
{
  v3 = [(HDCodableSample *)self->_sample hash];
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v5 = 2654435761 * self->_monday;
    if ((*&self->_has & 0x400) != 0)
    {
LABEL_3:
      v6 = 2654435761 * self->_tuesday;
      if ((*&self->_has & 0x800) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_4:
    v7 = 2654435761 * self->_wednesday;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  v7 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_5:
    v8 = 2654435761 * self->_thursday;
    if ((has & 0x20) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  v8 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_6:
    v9 = 2654435761 * self->_friday;
    if ((has & 0x80) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_7:
    v10 = 2654435761 * self->_saturday;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  v10 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_8:
    v11 = 2654435761 * self->_sunday;
    if ((has & 8) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  v11 = 0;
  if ((has & 8) != 0)
  {
LABEL_9:
    v12 = 2654435761 * self->_wakeHour;
    if ((has & 0x10) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_21:
  v12 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_10:
    v13 = 2654435761 * self->_wakeMinute;
    if (has)
    {
      goto LABEL_11;
    }

    goto LABEL_23;
  }

LABEL_22:
  v13 = 0;
  if (has)
  {
LABEL_11:
    v14 = 2654435761 * self->_bedHour;
    if ((has & 2) != 0)
    {
      goto LABEL_12;
    }

LABEL_24:
    v15 = 0;
    if ((has & 4) != 0)
    {
      goto LABEL_13;
    }

LABEL_25:
    v16 = 0;
    return v5 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
  }

LABEL_23:
  v14 = 0;
  if ((has & 2) == 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  v15 = 2654435761 * self->_bedMinute;
  if ((has & 4) == 0)
  {
    goto LABEL_25;
  }

LABEL_13:
  v16 = 2654435761 * self->_overrideDayIndex;
  return v5 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  sample = self->_sample;
  v6 = *(fromCopy + 6);
  if (sample)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = fromCopy;
    sample = [(HDCodableSample *)sample mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = fromCopy;
    sample = [(HDCodableSleepSchedule *)self setSample:?];
  }

  fromCopy = v8;
LABEL_7:
  v7 = *(fromCopy + 32);
  if ((v7 & 0x40) != 0)
  {
    self->_monday = *(fromCopy + 57);
    *&self->_has |= 0x40u;
    v7 = *(fromCopy + 32);
    if ((v7 & 0x400) == 0)
    {
LABEL_9:
      if ((v7 & 0x800) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_25;
    }
  }

  else if ((*(fromCopy + 32) & 0x400) == 0)
  {
    goto LABEL_9;
  }

  self->_tuesday = *(fromCopy + 61);
  *&self->_has |= 0x400u;
  v7 = *(fromCopy + 32);
  if ((v7 & 0x800) == 0)
  {
LABEL_10:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_wednesday = *(fromCopy + 62);
  *&self->_has |= 0x800u;
  v7 = *(fromCopy + 32);
  if ((v7 & 0x200) == 0)
  {
LABEL_11:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_thursday = *(fromCopy + 60);
  *&self->_has |= 0x200u;
  v7 = *(fromCopy + 32);
  if ((v7 & 0x20) == 0)
  {
LABEL_12:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_friday = *(fromCopy + 56);
  *&self->_has |= 0x20u;
  v7 = *(fromCopy + 32);
  if ((v7 & 0x80) == 0)
  {
LABEL_13:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_saturday = *(fromCopy + 58);
  *&self->_has |= 0x80u;
  v7 = *(fromCopy + 32);
  if ((v7 & 0x100) == 0)
  {
LABEL_14:
    if ((v7 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_sunday = *(fromCopy + 59);
  *&self->_has |= 0x100u;
  v7 = *(fromCopy + 32);
  if ((v7 & 8) == 0)
  {
LABEL_15:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_wakeHour = *(fromCopy + 4);
  *&self->_has |= 8u;
  v7 = *(fromCopy + 32);
  if ((v7 & 0x10) == 0)
  {
LABEL_16:
    if ((v7 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_wakeMinute = *(fromCopy + 5);
  *&self->_has |= 0x10u;
  v7 = *(fromCopy + 32);
  if ((v7 & 1) == 0)
  {
LABEL_17:
    if ((v7 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_bedHour = *(fromCopy + 1);
  *&self->_has |= 1u;
  v7 = *(fromCopy + 32);
  if ((v7 & 2) == 0)
  {
LABEL_18:
    if ((v7 & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_33:
  self->_bedMinute = *(fromCopy + 2);
  *&self->_has |= 2u;
  if ((*(fromCopy + 32) & 4) != 0)
  {
LABEL_19:
    self->_overrideDayIndex = *(fromCopy + 3);
    *&self->_has |= 4u;
  }

LABEL_20:

  MEMORY[0x2821F96F8](sample, fromCopy);
}

@end