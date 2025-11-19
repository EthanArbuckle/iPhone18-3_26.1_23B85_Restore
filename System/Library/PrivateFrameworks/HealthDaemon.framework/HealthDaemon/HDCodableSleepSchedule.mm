@interface HDCodableSleepSchedule
- (BOOL)applyToObject:(id)a3;
- (BOOL)applyToObject:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasBedMinute:(BOOL)a3;
- (void)setHasFriday:(BOOL)a3;
- (void)setHasMonday:(BOOL)a3;
- (void)setHasOverrideDayIndex:(BOOL)a3;
- (void)setHasSaturday:(BOOL)a3;
- (void)setHasSunday:(BOOL)a3;
- (void)setHasThursday:(BOOL)a3;
- (void)setHasTuesday:(BOOL)a3;
- (void)setHasWakeHour:(BOOL)a3;
- (void)setHasWakeMinute:(BOOL)a3;
- (void)setHasWednesday:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableSleepSchedule

- (BOOL)applyToObject:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v3 = [(HDCodableSleepSchedule *)self applyToObject:a3 error:&v8];
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

- (BOOL)applyToObject:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    [v13 hk_assignError:a4 code:3 format:{@"Unexpected class %@", v15}];

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  v7 = [(HDCodableSleepSchedule *)self sample];
  v8 = [v7 applyToObject:v6];

  if ((v8 & 1) == 0)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Failed to decode superclass message"];
    goto LABEL_14;
  }

  [(HDCodableSleepSchedule *)self monday];
  [(HDCodableSleepSchedule *)self tuesday];
  [(HDCodableSleepSchedule *)self wednesday];
  [(HDCodableSleepSchedule *)self thursday];
  [(HDCodableSleepSchedule *)self friday];
  [(HDCodableSleepSchedule *)self saturday];
  [(HDCodableSleepSchedule *)self sunday];
  [v6 _setWeekdays:HKSleepScheduleWeekdaysMake()];
  if ([(HDCodableSleepSchedule *)self hasWakeHour]&& [(HDCodableSleepSchedule *)self hasWakeMinute])
  {
    v9 = [MEMORY[0x277CBEAB8] hk_componentsWithHour:-[HDCodableSleepSchedule wakeHour](self minute:{"wakeHour"), -[HDCodableSleepSchedule wakeMinute](self, "wakeMinute")}];
    [v6 _setWakeTimeComponents:v9];
  }

  if ([(HDCodableSleepSchedule *)self hasBedHour]&& [(HDCodableSleepSchedule *)self hasBedMinute])
  {
    v10 = [MEMORY[0x277CBEAB8] hk_componentsWithHour:-[HDCodableSleepSchedule bedHour](self minute:{"bedHour"), -[HDCodableSleepSchedule bedMinute](self, "bedMinute")}];
    [v6 _setBedTimeComponents:v10];
  }

  if ([(HDCodableSleepSchedule *)self hasOverrideDayIndex])
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HDCodableSleepSchedule overrideDayIndex](self, "overrideDayIndex")}];
    [v6 _setOverrideDayIndex:v11];
  }

  v12 = 1;
LABEL_15:

  return v12;
}

- (void)setHasMonday:(BOOL)a3
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

- (void)setHasTuesday:(BOOL)a3
{
  if (a3)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasWednesday:(BOOL)a3
{
  if (a3)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasThursday:(BOOL)a3
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

- (void)setHasFriday:(BOOL)a3
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

- (void)setHasSaturday:(BOOL)a3
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

- (void)setHasSunday:(BOOL)a3
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

- (void)setHasWakeHour:(BOOL)a3
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

- (void)setHasWakeMinute:(BOOL)a3
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

- (void)setHasBedMinute:(BOOL)a3
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

- (void)setHasOverrideDayIndex:(BOOL)a3
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

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableSleepSchedule;
  v4 = [(HDCodableSleepSchedule *)&v8 description];
  v5 = [(HDCodableSleepSchedule *)self dictionaryRepresentation];
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

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_monday];
    [v3 setObject:v9 forKey:@"monday"];

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
  [v3 setObject:v10 forKey:@"tuesday"];

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
  [v3 setObject:v11 forKey:@"wednesday"];

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
  [v3 setObject:v12 forKey:@"thursday"];

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
  [v3 setObject:v13 forKey:@"friday"];

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
  [v3 setObject:v14 forKey:@"saturday"];

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
  [v3 setObject:v15 forKey:@"sunday"];

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
  [v3 setObject:v16 forKey:@"wakeHour"];

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
  [v3 setObject:v17 forKey:@"wakeMinute"];

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
  [v3 setObject:v18 forKey:@"bedHour"];

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
  [v3 setObject:v19 forKey:@"bedMinute"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_15:
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_overrideDayIndex];
    [v3 setObject:v7 forKey:@"overrideDayIndex"];
  }

LABEL_16:

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v18 = v4;
  if (self->_sample)
  {
    PBDataWriterWriteSubmessage();
    v4 = v18;
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    monday = self->_monday;
    PBDataWriterWriteBOOLField();
    v4 = v18;
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
  v4 = v18;
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
  v4 = v18;
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
  v4 = v18;
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
  v4 = v18;
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
  v4 = v18;
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
  v4 = v18;
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
  v4 = v18;
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
  v4 = v18;
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
  v4 = v18;
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
  v4 = v18;
  if ((*&self->_has & 4) != 0)
  {
LABEL_15:
    overrideDayIndex = self->_overrideDayIndex;
    PBDataWriterWriteInt64Field();
    v4 = v18;
  }

LABEL_16:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_sample)
  {
    v6 = v4;
    [v4 setSample:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(v4 + 57) = self->_monday;
    *(v4 + 32) |= 0x40u;
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

  *(v4 + 61) = self->_tuesday;
  *(v4 + 32) |= 0x400u;
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
  *(v4 + 62) = self->_wednesday;
  *(v4 + 32) |= 0x800u;
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
  *(v4 + 60) = self->_thursday;
  *(v4 + 32) |= 0x200u;
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
  *(v4 + 56) = self->_friday;
  *(v4 + 32) |= 0x20u;
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
  *(v4 + 58) = self->_saturday;
  *(v4 + 32) |= 0x80u;
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
  *(v4 + 59) = self->_sunday;
  *(v4 + 32) |= 0x100u;
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
  *(v4 + 4) = self->_wakeHour;
  *(v4 + 32) |= 8u;
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
  *(v4 + 5) = self->_wakeMinute;
  *(v4 + 32) |= 0x10u;
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
  *(v4 + 1) = self->_bedHour;
  *(v4 + 32) |= 1u;
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
  *(v4 + 2) = self->_bedMinute;
  *(v4 + 32) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_15:
    *(v4 + 3) = self->_overrideDayIndex;
    *(v4 + 32) |= 4u;
  }

LABEL_16:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HDCodableSample *)self->_sample copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_85;
  }

  sample = self->_sample;
  if (sample | *(v4 + 6))
  {
    if (![(HDCodableSample *)sample isEqual:?])
    {
      goto LABEL_85;
    }
  }

  has = self->_has;
  v7 = *(v4 + 32);
  if ((has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_85;
    }

    v8 = *(v4 + 57);
    if (self->_monday)
    {
      if ((*(v4 + 57) & 1) == 0)
      {
        goto LABEL_85;
      }
    }

    else if (*(v4 + 57))
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
    if ((*(v4 + 32) & 0x400) == 0)
    {
      goto LABEL_85;
    }

    v9 = *(v4 + 61);
    if (self->_tuesday)
    {
      if ((*(v4 + 61) & 1) == 0)
      {
        goto LABEL_85;
      }
    }

    else if (*(v4 + 61))
    {
      goto LABEL_85;
    }
  }

  else if ((*(v4 + 32) & 0x400) != 0)
  {
    goto LABEL_85;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(v4 + 32) & 0x800) == 0)
    {
      goto LABEL_85;
    }

    v10 = *(v4 + 62);
    if (self->_wednesday)
    {
      if ((*(v4 + 62) & 1) == 0)
      {
        goto LABEL_85;
      }
    }

    else if (*(v4 + 62))
    {
      goto LABEL_85;
    }
  }

  else if ((*(v4 + 32) & 0x800) != 0)
  {
    goto LABEL_85;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(v4 + 32) & 0x200) == 0)
    {
      goto LABEL_85;
    }

    v11 = *(v4 + 60);
    if (self->_thursday)
    {
      if ((*(v4 + 60) & 1) == 0)
      {
        goto LABEL_85;
      }
    }

    else if (*(v4 + 60))
    {
      goto LABEL_85;
    }
  }

  else if ((*(v4 + 32) & 0x200) != 0)
  {
    goto LABEL_85;
  }

  if ((has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_85;
    }

    v12 = *(v4 + 56);
    if (self->_friday)
    {
      if ((*(v4 + 56) & 1) == 0)
      {
        goto LABEL_85;
      }
    }

    else if (*(v4 + 56))
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

    v13 = *(v4 + 58);
    if (self->_saturday)
    {
      if ((*(v4 + 58) & 1) == 0)
      {
        goto LABEL_85;
      }
    }

    else if (*(v4 + 58))
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
    if ((*(v4 + 32) & 0x100) == 0)
    {
      goto LABEL_18;
    }

LABEL_85:
    v15 = 0;
    goto LABEL_86;
  }

  if ((*(v4 + 32) & 0x100) == 0)
  {
    goto LABEL_85;
  }

  v14 = *(v4 + 59);
  if (self->_sunday)
  {
    if ((*(v4 + 59) & 1) == 0)
    {
      goto LABEL_85;
    }
  }

  else if (*(v4 + 59))
  {
    goto LABEL_85;
  }

LABEL_18:
  if ((has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_wakeHour != *(v4 + 4))
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
    if ((v7 & 0x10) == 0 || self->_wakeMinute != *(v4 + 5))
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
    if ((v7 & 1) == 0 || self->_bedHour != *(v4 + 1))
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
    if ((v7 & 2) == 0 || self->_bedMinute != *(v4 + 2))
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
    if ((v7 & 4) == 0 || self->_overrideDayIndex != *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  sample = self->_sample;
  v6 = *(v4 + 6);
  if (sample)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v4;
    sample = [(HDCodableSample *)sample mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v4;
    sample = [(HDCodableSleepSchedule *)self setSample:?];
  }

  v4 = v8;
LABEL_7:
  v7 = *(v4 + 32);
  if ((v7 & 0x40) != 0)
  {
    self->_monday = *(v4 + 57);
    *&self->_has |= 0x40u;
    v7 = *(v4 + 32);
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

  else if ((*(v4 + 32) & 0x400) == 0)
  {
    goto LABEL_9;
  }

  self->_tuesday = *(v4 + 61);
  *&self->_has |= 0x400u;
  v7 = *(v4 + 32);
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
  self->_wednesday = *(v4 + 62);
  *&self->_has |= 0x800u;
  v7 = *(v4 + 32);
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
  self->_thursday = *(v4 + 60);
  *&self->_has |= 0x200u;
  v7 = *(v4 + 32);
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
  self->_friday = *(v4 + 56);
  *&self->_has |= 0x20u;
  v7 = *(v4 + 32);
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
  self->_saturday = *(v4 + 58);
  *&self->_has |= 0x80u;
  v7 = *(v4 + 32);
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
  self->_sunday = *(v4 + 59);
  *&self->_has |= 0x100u;
  v7 = *(v4 + 32);
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
  self->_wakeHour = *(v4 + 4);
  *&self->_has |= 8u;
  v7 = *(v4 + 32);
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
  self->_wakeMinute = *(v4 + 5);
  *&self->_has |= 0x10u;
  v7 = *(v4 + 32);
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
  self->_bedHour = *(v4 + 1);
  *&self->_has |= 1u;
  v7 = *(v4 + 32);
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
  self->_bedMinute = *(v4 + 2);
  *&self->_has |= 2u;
  if ((*(v4 + 32) & 4) != 0)
  {
LABEL_19:
    self->_overrideDayIndex = *(v4 + 3);
    *&self->_has |= 4u;
  }

LABEL_20:

  MEMORY[0x2821F96F8](sample, v4);
}

@end