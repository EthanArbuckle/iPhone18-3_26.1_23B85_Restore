@interface MTPBAlarmProperties
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAllowsSnooze:(BOOL)snooze;
- (void)setHasBedtimeDismissedAction:(BOOL)action;
- (void)setHasBedtimeFiredDate:(BOOL)date;
- (void)setHasBedtimeHour:(BOOL)hour;
- (void)setHasBedtimeMinute:(BOOL)minute;
- (void)setHasBedtimeReminderMinutes:(BOOL)minutes;
- (void)setHasBedtimeSnoozeFireDate:(BOOL)date;
- (void)setHasDaySetting:(BOOL)setting;
- (void)setHasDismissedAction:(BOOL)action;
- (void)setHasDismissedDate:(BOOL)date;
- (void)setHasFiredDate:(BOOL)date;
- (void)setHasHour:(BOOL)hour;
- (void)setHasIsEnabled:(BOOL)enabled;
- (void)setHasIsSleepAlarm:(BOOL)alarm;
- (void)setHasKeepOffUntilDate:(BOOL)date;
- (void)setHasLastModifiedDate:(BOOL)date;
- (void)setHasMinute:(BOOL)minute;
- (void)setHasOnboardingVersion:(BOOL)version;
- (void)setHasRevision:(BOOL)revision;
- (void)setHasSleepMode:(BOOL)mode;
- (void)setHasSleepModeOptions:(BOOL)options;
- (void)setHasSleepSchedule:(BOOL)schedule;
- (void)setHasSleepTracking:(BOOL)tracking;
- (void)setHasSnoozeFireDate:(BOOL)date;
- (void)setHasTimeInBedTracking:(BOOL)tracking;
- (void)writeTo:(id)to;
@end

@implementation MTPBAlarmProperties

- (void)setHasHour:(BOOL)hour
{
  if (hour)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (void)setHasMinute:(BOOL)minute
{
  if (minute)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasAllowsSnooze:(BOOL)snooze
{
  if (snooze)
  {
    v3 = 0x80000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFF7FFFF | v3);
}

- (void)setHasDaySetting:(BOOL)setting
{
  if (setting)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasIsSleepAlarm:(BOOL)alarm
{
  if (alarm)
  {
    v3 = 0x200000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFDFFFFF | v3);
}

- (void)setHasBedtimeHour:(BOOL)hour
{
  if (hour)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasBedtimeMinute:(BOOL)minute
{
  if (minute)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasBedtimeReminderMinutes:(BOOL)minutes
{
  if (minutes)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasRevision:(BOOL)revision
{
  if (revision)
  {
    v3 = 0x20000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFDFFFF | v3);
}

- (void)setHasLastModifiedDate:(BOOL)date
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

- (void)setHasSnoozeFireDate:(BOOL)date
{
  if (date)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasBedtimeSnoozeFireDate:(BOOL)date
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

- (void)setHasIsEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 0x100000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFEFFFFF | v3);
}

- (void)setHasFiredDate:(BOOL)date
{
  if (date)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasDismissedDate:(BOOL)date
{
  if (date)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasSleepMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 0x400000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFBFFFFF | v3);
}

- (void)setHasSleepTracking:(BOOL)tracking
{
  if (tracking)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFEFFFFFF | v3);
}

- (void)setHasSleepSchedule:(BOOL)schedule
{
  if (schedule)
  {
    v3 = 0x800000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFF7FFFFF | v3);
}

- (void)setHasOnboardingVersion:(BOOL)version
{
  if (version)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasSleepModeOptions:(BOOL)options
{
  if (options)
  {
    v3 = 0x40000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFBFFFF | v3);
}

- (void)setHasTimeInBedTracking:(BOOL)tracking
{
  if (tracking)
  {
    v3 = 0x2000000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFDFFFFFF | v3);
}

- (void)setHasDismissedAction:(BOOL)action
{
  if (action)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasBedtimeFiredDate:(BOOL)date
{
  if (date)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasBedtimeDismissedAction:(BOOL)action
{
  if (action)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasKeepOffUntilDate:(BOOL)date
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MTPBAlarmProperties;
  v4 = [(MTPBAlarmProperties *)&v8 description];
  dictionaryRepresentation = [(MTPBAlarmProperties *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  alarmID = self->_alarmID;
  if (alarmID)
  {
    [dictionary setObject:alarmID forKey:@"alarmID"];
  }

  has = self->_has;
  if ((*&has & 0x4000) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_hour];
    [v4 setObject:v7 forKey:@"hour"];

    has = self->_has;
  }

  if ((*&has & 0x8000) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_minute];
    [v4 setObject:v8 forKey:@"minute"];
  }

  title = self->_title;
  if (title)
  {
    [v4 setObject:title forKey:@"title"];
  }

  v10 = self->_has;
  if ((*&v10 & 0x80000) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowsSnooze];
    [v4 setObject:v11 forKey:@"allowsSnooze"];

    v10 = self->_has;
  }

  if ((*&v10 & 0x1000) != 0)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_daySetting];
    [v4 setObject:v12 forKey:@"daySetting"];
  }

  sound = self->_sound;
  if (sound)
  {
    dictionaryRepresentation = [(MTPBSound *)sound dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"sound"];
  }

  v15 = self->_has;
  if ((*&v15 & 0x200000) != 0)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_isSleepAlarm];
    [v4 setObject:v18 forKey:@"isSleepAlarm"];

    v15 = self->_has;
    if ((*&v15 & 0x200) == 0)
    {
LABEL_17:
      if ((*&v15 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_43;
    }
  }

  else if ((*&v15 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_bedtimeHour];
  [v4 setObject:v19 forKey:@"bedtimeHour"];

  v15 = self->_has;
  if ((*&v15 & 0x400) == 0)
  {
LABEL_18:
    if ((*&v15 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_bedtimeMinute];
  [v4 setObject:v20 forKey:@"bedtimeMinute"];

  v15 = self->_has;
  if ((*&v15 & 0x800) == 0)
  {
LABEL_19:
    if ((*&v15 & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_bedtimeReminderMinutes];
  [v4 setObject:v21 forKey:@"bedtimeReminderMinutes"];

  v15 = self->_has;
  if ((*&v15 & 0x20000) == 0)
  {
LABEL_20:
    if ((*&v15 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_revision];
  [v4 setObject:v22 forKey:@"revision"];

  v15 = self->_has;
  if ((*&v15 & 0x40) == 0)
  {
LABEL_21:
    if ((*&v15 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  v23 = [MEMORY[0x1E696AD98] numberWithDouble:self->_lastModifiedDate];
  [v4 setObject:v23 forKey:@"lastModifiedDate"];

  v15 = self->_has;
  if ((*&v15 & 0x80) == 0)
  {
LABEL_22:
    if ((*&v15 & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_48;
  }

LABEL_47:
  v24 = [MEMORY[0x1E696AD98] numberWithDouble:self->_snoozeFireDate];
  [v4 setObject:v24 forKey:@"snoozeFireDate"];

  v15 = self->_has;
  if ((*&v15 & 4) == 0)
  {
LABEL_23:
    if ((*&v15 & 0x100000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_48:
  v25 = [MEMORY[0x1E696AD98] numberWithDouble:self->_bedtimeSnoozeFireDate];
  [v4 setObject:v25 forKey:@"bedtimeSnoozeFireDate"];

  v15 = self->_has;
  if ((*&v15 & 0x100000) == 0)
  {
LABEL_24:
    if ((*&v15 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_50;
  }

LABEL_49:
  v26 = [MEMORY[0x1E696AD98] numberWithBool:self->_isEnabled];
  [v4 setObject:v26 forKey:@"isEnabled"];

  v15 = self->_has;
  if ((*&v15 & 0x10) == 0)
  {
LABEL_25:
    if ((*&v15 & 8) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_51;
  }

LABEL_50:
  v27 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firedDate];
  [v4 setObject:v27 forKey:@"firedDate"];

  v15 = self->_has;
  if ((*&v15 & 8) == 0)
  {
LABEL_26:
    if ((*&v15 & 0x400000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_52;
  }

LABEL_51:
  v28 = [MEMORY[0x1E696AD98] numberWithDouble:self->_dismissedDate];
  [v4 setObject:v28 forKey:@"dismissedDate"];

  v15 = self->_has;
  if ((*&v15 & 0x400000) == 0)
  {
LABEL_27:
    if ((*&v15 & 0x1000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_53;
  }

LABEL_52:
  v29 = [MEMORY[0x1E696AD98] numberWithBool:self->_sleepMode];
  [v4 setObject:v29 forKey:@"sleepMode"];

  v15 = self->_has;
  if ((*&v15 & 0x1000000) == 0)
  {
LABEL_28:
    if ((*&v15 & 0x800000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_54;
  }

LABEL_53:
  v30 = [MEMORY[0x1E696AD98] numberWithBool:self->_sleepTracking];
  [v4 setObject:v30 forKey:@"sleepTracking"];

  v15 = self->_has;
  if ((*&v15 & 0x800000) == 0)
  {
LABEL_29:
    if ((*&v15 & 0x10000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_55;
  }

LABEL_54:
  v31 = [MEMORY[0x1E696AD98] numberWithBool:self->_sleepSchedule];
  [v4 setObject:v31 forKey:@"sleepSchedule"];

  v15 = self->_has;
  if ((*&v15 & 0x10000) == 0)
  {
LABEL_30:
    if ((*&v15 & 0x40000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_56;
  }

LABEL_55:
  v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_onboardingVersion];
  [v4 setObject:v32 forKey:@"onboardingVersion"];

  v15 = self->_has;
  if ((*&v15 & 0x40000) == 0)
  {
LABEL_31:
    if ((*&v15 & 0x2000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_57;
  }

LABEL_56:
  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_sleepModeOptions];
  [v4 setObject:v33 forKey:@"sleepModeOptions"];

  v15 = self->_has;
  if ((*&v15 & 0x2000000) == 0)
  {
LABEL_32:
    if ((*&v15 & 0x2000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_58;
  }

LABEL_57:
  v34 = [MEMORY[0x1E696AD98] numberWithBool:self->_timeInBedTracking];
  [v4 setObject:v34 forKey:@"timeInBedTracking"];

  v15 = self->_has;
  if ((*&v15 & 0x2000) == 0)
  {
LABEL_33:
    if ((*&v15 & 2) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_59;
  }

LABEL_58:
  v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_dismissedAction];
  [v4 setObject:v35 forKey:@"dismissedAction"];

  v15 = self->_has;
  if ((*&v15 & 2) == 0)
  {
LABEL_34:
    if ((*&v15 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_60;
  }

LABEL_59:
  v36 = [MEMORY[0x1E696AD98] numberWithDouble:self->_bedtimeFiredDate];
  [v4 setObject:v36 forKey:@"bedtimeFiredDate"];

  v15 = self->_has;
  if ((*&v15 & 1) == 0)
  {
LABEL_35:
    if ((*&v15 & 0x100) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_61;
  }

LABEL_60:
  v37 = [MEMORY[0x1E696AD98] numberWithDouble:self->_bedtimeDismissedDate];
  [v4 setObject:v37 forKey:@"bedtimeDismissedDate"];

  v15 = self->_has;
  if ((*&v15 & 0x100) == 0)
  {
LABEL_36:
    if ((*&v15 & 0x20) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_61:
  v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_bedtimeDismissedAction];
  [v4 setObject:v38 forKey:@"bedtimeDismissedAction"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_37:
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:self->_keepOffUntilDate];
    [v4 setObject:v16 forKey:@"keepOffUntilDate"];
  }

LABEL_38:

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v34 = toCopy;
  if (self->_alarmID)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  has = self->_has;
  if ((*&has & 0x4000) != 0)
  {
    hour = self->_hour;
    PBDataWriterWriteUint32Field();
    toCopy = v34;
    has = self->_has;
  }

  if ((*&has & 0x8000) != 0)
  {
    minute = self->_minute;
    PBDataWriterWriteUint32Field();
    toCopy = v34;
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
    toCopy = v34;
  }

  v8 = self->_has;
  if ((*&v8 & 0x80000) != 0)
  {
    allowsSnooze = self->_allowsSnooze;
    PBDataWriterWriteBOOLField();
    toCopy = v34;
    v8 = self->_has;
  }

  if ((*&v8 & 0x1000) != 0)
  {
    daySetting = self->_daySetting;
    PBDataWriterWriteUint32Field();
    toCopy = v34;
  }

  if (self->_sound)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v34;
  }

  v11 = self->_has;
  if ((*&v11 & 0x200000) != 0)
  {
    isSleepAlarm = self->_isSleepAlarm;
    PBDataWriterWriteBOOLField();
    toCopy = v34;
    v11 = self->_has;
    if ((*&v11 & 0x200) == 0)
    {
LABEL_17:
      if ((*&v11 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_43;
    }
  }

  else if ((*&v11 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  bedtimeHour = self->_bedtimeHour;
  PBDataWriterWriteUint32Field();
  toCopy = v34;
  v11 = self->_has;
  if ((*&v11 & 0x400) == 0)
  {
LABEL_18:
    if ((*&v11 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  bedtimeMinute = self->_bedtimeMinute;
  PBDataWriterWriteUint32Field();
  toCopy = v34;
  v11 = self->_has;
  if ((*&v11 & 0x800) == 0)
  {
LABEL_19:
    if ((*&v11 & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  bedtimeReminderMinutes = self->_bedtimeReminderMinutes;
  PBDataWriterWriteUint32Field();
  toCopy = v34;
  v11 = self->_has;
  if ((*&v11 & 0x20000) == 0)
  {
LABEL_20:
    if ((*&v11 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  revision = self->_revision;
  PBDataWriterWriteUint32Field();
  toCopy = v34;
  v11 = self->_has;
  if ((*&v11 & 0x40) == 0)
  {
LABEL_21:
    if ((*&v11 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  lastModifiedDate = self->_lastModifiedDate;
  PBDataWriterWriteDoubleField();
  toCopy = v34;
  v11 = self->_has;
  if ((*&v11 & 0x80) == 0)
  {
LABEL_22:
    if ((*&v11 & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_48;
  }

LABEL_47:
  snoozeFireDate = self->_snoozeFireDate;
  PBDataWriterWriteDoubleField();
  toCopy = v34;
  v11 = self->_has;
  if ((*&v11 & 4) == 0)
  {
LABEL_23:
    if ((*&v11 & 0x100000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_48:
  bedtimeSnoozeFireDate = self->_bedtimeSnoozeFireDate;
  PBDataWriterWriteDoubleField();
  toCopy = v34;
  v11 = self->_has;
  if ((*&v11 & 0x100000) == 0)
  {
LABEL_24:
    if ((*&v11 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_50;
  }

LABEL_49:
  isEnabled = self->_isEnabled;
  PBDataWriterWriteBOOLField();
  toCopy = v34;
  v11 = self->_has;
  if ((*&v11 & 0x10) == 0)
  {
LABEL_25:
    if ((*&v11 & 8) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_51;
  }

LABEL_50:
  firedDate = self->_firedDate;
  PBDataWriterWriteDoubleField();
  toCopy = v34;
  v11 = self->_has;
  if ((*&v11 & 8) == 0)
  {
LABEL_26:
    if ((*&v11 & 0x400000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_52;
  }

LABEL_51:
  dismissedDate = self->_dismissedDate;
  PBDataWriterWriteDoubleField();
  toCopy = v34;
  v11 = self->_has;
  if ((*&v11 & 0x400000) == 0)
  {
LABEL_27:
    if ((*&v11 & 0x1000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_53;
  }

LABEL_52:
  sleepMode = self->_sleepMode;
  PBDataWriterWriteBOOLField();
  toCopy = v34;
  v11 = self->_has;
  if ((*&v11 & 0x1000000) == 0)
  {
LABEL_28:
    if ((*&v11 & 0x800000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_54;
  }

LABEL_53:
  sleepTracking = self->_sleepTracking;
  PBDataWriterWriteBOOLField();
  toCopy = v34;
  v11 = self->_has;
  if ((*&v11 & 0x800000) == 0)
  {
LABEL_29:
    if ((*&v11 & 0x10000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_55;
  }

LABEL_54:
  sleepSchedule = self->_sleepSchedule;
  PBDataWriterWriteBOOLField();
  toCopy = v34;
  v11 = self->_has;
  if ((*&v11 & 0x10000) == 0)
  {
LABEL_30:
    if ((*&v11 & 0x40000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_56;
  }

LABEL_55:
  onboardingVersion = self->_onboardingVersion;
  PBDataWriterWriteUint32Field();
  toCopy = v34;
  v11 = self->_has;
  if ((*&v11 & 0x40000) == 0)
  {
LABEL_31:
    if ((*&v11 & 0x2000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_57;
  }

LABEL_56:
  sleepModeOptions = self->_sleepModeOptions;
  PBDataWriterWriteUint32Field();
  toCopy = v34;
  v11 = self->_has;
  if ((*&v11 & 0x2000000) == 0)
  {
LABEL_32:
    if ((*&v11 & 0x2000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_58;
  }

LABEL_57:
  timeInBedTracking = self->_timeInBedTracking;
  PBDataWriterWriteBOOLField();
  toCopy = v34;
  v11 = self->_has;
  if ((*&v11 & 0x2000) == 0)
  {
LABEL_33:
    if ((*&v11 & 2) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_59;
  }

LABEL_58:
  dismissedAction = self->_dismissedAction;
  PBDataWriterWriteUint32Field();
  toCopy = v34;
  v11 = self->_has;
  if ((*&v11 & 2) == 0)
  {
LABEL_34:
    if ((*&v11 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_60;
  }

LABEL_59:
  bedtimeFiredDate = self->_bedtimeFiredDate;
  PBDataWriterWriteDoubleField();
  toCopy = v34;
  v11 = self->_has;
  if ((*&v11 & 1) == 0)
  {
LABEL_35:
    if ((*&v11 & 0x100) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_61;
  }

LABEL_60:
  bedtimeDismissedDate = self->_bedtimeDismissedDate;
  PBDataWriterWriteDoubleField();
  toCopy = v34;
  v11 = self->_has;
  if ((*&v11 & 0x100) == 0)
  {
LABEL_36:
    if ((*&v11 & 0x20) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_61:
  bedtimeDismissedAction = self->_bedtimeDismissedAction;
  PBDataWriterWriteUint32Field();
  toCopy = v34;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_37:
    keepOffUntilDate = self->_keepOffUntilDate;
    PBDataWriterWriteDoubleField();
    toCopy = v34;
  }

LABEL_38:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_alarmID)
  {
    [toCopy setAlarmID:?];
    toCopy = v8;
  }

  has = self->_has;
  if ((*&has & 0x4000) != 0)
  {
    *(toCopy + 26) = self->_hour;
    *(toCopy + 38) |= 0x4000u;
    has = self->_has;
  }

  if ((*&has & 0x8000) != 0)
  {
    *(toCopy + 27) = self->_minute;
    *(toCopy + 38) |= 0x8000u;
  }

  if (self->_title)
  {
    [v8 setTitle:?];
    toCopy = v8;
  }

  v6 = self->_has;
  if ((*&v6 & 0x80000) != 0)
  {
    *(toCopy + 144) = self->_allowsSnooze;
    *(toCopy + 38) |= 0x80000u;
    v6 = self->_has;
  }

  if ((*&v6 & 0x1000) != 0)
  {
    *(toCopy + 24) = self->_daySetting;
    *(toCopy + 38) |= 0x1000u;
  }

  if (self->_sound)
  {
    [v8 setSound:?];
    toCopy = v8;
  }

  v7 = self->_has;
  if ((*&v7 & 0x200000) != 0)
  {
    *(toCopy + 146) = self->_isSleepAlarm;
    *(toCopy + 38) |= 0x200000u;
    v7 = self->_has;
    if ((*&v7 & 0x200) == 0)
    {
LABEL_17:
      if ((*&v7 & 0x400) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_43;
    }
  }

  else if ((*&v7 & 0x200) == 0)
  {
    goto LABEL_17;
  }

  *(toCopy + 21) = self->_bedtimeHour;
  *(toCopy + 38) |= 0x200u;
  v7 = self->_has;
  if ((*&v7 & 0x400) == 0)
  {
LABEL_18:
    if ((*&v7 & 0x800) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(toCopy + 22) = self->_bedtimeMinute;
  *(toCopy + 38) |= 0x400u;
  v7 = self->_has;
  if ((*&v7 & 0x800) == 0)
  {
LABEL_19:
    if ((*&v7 & 0x20000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(toCopy + 23) = self->_bedtimeReminderMinutes;
  *(toCopy + 38) |= 0x800u;
  v7 = self->_has;
  if ((*&v7 & 0x20000) == 0)
  {
LABEL_20:
    if ((*&v7 & 0x40) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(toCopy + 29) = self->_revision;
  *(toCopy + 38) |= 0x20000u;
  v7 = self->_has;
  if ((*&v7 & 0x40) == 0)
  {
LABEL_21:
    if ((*&v7 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(toCopy + 7) = *&self->_lastModifiedDate;
  *(toCopy + 38) |= 0x40u;
  v7 = self->_has;
  if ((*&v7 & 0x80) == 0)
  {
LABEL_22:
    if ((*&v7 & 4) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(toCopy + 8) = *&self->_snoozeFireDate;
  *(toCopy + 38) |= 0x80u;
  v7 = self->_has;
  if ((*&v7 & 4) == 0)
  {
LABEL_23:
    if ((*&v7 & 0x100000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(toCopy + 3) = *&self->_bedtimeSnoozeFireDate;
  *(toCopy + 38) |= 4u;
  v7 = self->_has;
  if ((*&v7 & 0x100000) == 0)
  {
LABEL_24:
    if ((*&v7 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(toCopy + 145) = self->_isEnabled;
  *(toCopy + 38) |= 0x100000u;
  v7 = self->_has;
  if ((*&v7 & 0x10) == 0)
  {
LABEL_25:
    if ((*&v7 & 8) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(toCopy + 5) = *&self->_firedDate;
  *(toCopy + 38) |= 0x10u;
  v7 = self->_has;
  if ((*&v7 & 8) == 0)
  {
LABEL_26:
    if ((*&v7 & 0x400000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(toCopy + 4) = *&self->_dismissedDate;
  *(toCopy + 38) |= 8u;
  v7 = self->_has;
  if ((*&v7 & 0x400000) == 0)
  {
LABEL_27:
    if ((*&v7 & 0x1000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_53;
  }

LABEL_52:
  *(toCopy + 147) = self->_sleepMode;
  *(toCopy + 38) |= 0x400000u;
  v7 = self->_has;
  if ((*&v7 & 0x1000000) == 0)
  {
LABEL_28:
    if ((*&v7 & 0x800000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_54;
  }

LABEL_53:
  *(toCopy + 149) = self->_sleepTracking;
  *(toCopy + 38) |= 0x1000000u;
  v7 = self->_has;
  if ((*&v7 & 0x800000) == 0)
  {
LABEL_29:
    if ((*&v7 & 0x10000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_55;
  }

LABEL_54:
  *(toCopy + 148) = self->_sleepSchedule;
  *(toCopy + 38) |= 0x800000u;
  v7 = self->_has;
  if ((*&v7 & 0x10000) == 0)
  {
LABEL_30:
    if ((*&v7 & 0x40000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_56;
  }

LABEL_55:
  *(toCopy + 28) = self->_onboardingVersion;
  *(toCopy + 38) |= 0x10000u;
  v7 = self->_has;
  if ((*&v7 & 0x40000) == 0)
  {
LABEL_31:
    if ((*&v7 & 0x2000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_57;
  }

LABEL_56:
  *(toCopy + 30) = self->_sleepModeOptions;
  *(toCopy + 38) |= 0x40000u;
  v7 = self->_has;
  if ((*&v7 & 0x2000000) == 0)
  {
LABEL_32:
    if ((*&v7 & 0x2000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_58;
  }

LABEL_57:
  *(toCopy + 150) = self->_timeInBedTracking;
  *(toCopy + 38) |= 0x2000000u;
  v7 = self->_has;
  if ((*&v7 & 0x2000) == 0)
  {
LABEL_33:
    if ((*&v7 & 2) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_59;
  }

LABEL_58:
  *(toCopy + 25) = self->_dismissedAction;
  *(toCopy + 38) |= 0x2000u;
  v7 = self->_has;
  if ((*&v7 & 2) == 0)
  {
LABEL_34:
    if ((*&v7 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_60;
  }

LABEL_59:
  *(toCopy + 2) = *&self->_bedtimeFiredDate;
  *(toCopy + 38) |= 2u;
  v7 = self->_has;
  if ((*&v7 & 1) == 0)
  {
LABEL_35:
    if ((*&v7 & 0x100) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_61;
  }

LABEL_60:
  *(toCopy + 1) = *&self->_bedtimeDismissedDate;
  *(toCopy + 38) |= 1u;
  v7 = self->_has;
  if ((*&v7 & 0x100) == 0)
  {
LABEL_36:
    if ((*&v7 & 0x20) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_61:
  *(toCopy + 20) = self->_bedtimeDismissedAction;
  *(toCopy + 38) |= 0x100u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_37:
    *(toCopy + 6) = *&self->_keepOffUntilDate;
    *(toCopy + 38) |= 0x20u;
  }

LABEL_38:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_alarmID copyWithZone:zone];
  v7 = *(v5 + 72);
  *(v5 + 72) = v6;

  has = self->_has;
  if ((*&has & 0x4000) != 0)
  {
    *(v5 + 104) = self->_hour;
    *(v5 + 152) |= 0x4000u;
    has = self->_has;
  }

  if ((*&has & 0x8000) != 0)
  {
    *(v5 + 108) = self->_minute;
    *(v5 + 152) |= 0x8000u;
  }

  v9 = [(NSString *)self->_title copyWithZone:zone];
  v10 = *(v5 + 136);
  *(v5 + 136) = v9;

  v11 = self->_has;
  if ((*&v11 & 0x80000) != 0)
  {
    *(v5 + 144) = self->_allowsSnooze;
    *(v5 + 152) |= 0x80000u;
    v11 = self->_has;
  }

  if ((*&v11 & 0x1000) != 0)
  {
    *(v5 + 96) = self->_daySetting;
    *(v5 + 152) |= 0x1000u;
  }

  v12 = [(MTPBSound *)self->_sound copyWithZone:zone];
  v13 = *(v5 + 128);
  *(v5 + 128) = v12;

  v14 = self->_has;
  if ((*&v14 & 0x200000) != 0)
  {
    *(v5 + 146) = self->_isSleepAlarm;
    *(v5 + 152) |= 0x200000u;
    v14 = self->_has;
    if ((*&v14 & 0x200) == 0)
    {
LABEL_11:
      if ((*&v14 & 0x400) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_35;
    }
  }

  else if ((*&v14 & 0x200) == 0)
  {
    goto LABEL_11;
  }

  *(v5 + 84) = self->_bedtimeHour;
  *(v5 + 152) |= 0x200u;
  v14 = self->_has;
  if ((*&v14 & 0x400) == 0)
  {
LABEL_12:
    if ((*&v14 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(v5 + 88) = self->_bedtimeMinute;
  *(v5 + 152) |= 0x400u;
  v14 = self->_has;
  if ((*&v14 & 0x800) == 0)
  {
LABEL_13:
    if ((*&v14 & 0x20000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(v5 + 92) = self->_bedtimeReminderMinutes;
  *(v5 + 152) |= 0x800u;
  v14 = self->_has;
  if ((*&v14 & 0x20000) == 0)
  {
LABEL_14:
    if ((*&v14 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(v5 + 116) = self->_revision;
  *(v5 + 152) |= 0x20000u;
  v14 = self->_has;
  if ((*&v14 & 0x40) == 0)
  {
LABEL_15:
    if ((*&v14 & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(v5 + 56) = self->_lastModifiedDate;
  *(v5 + 152) |= 0x40u;
  v14 = self->_has;
  if ((*&v14 & 0x80) == 0)
  {
LABEL_16:
    if ((*&v14 & 4) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(v5 + 64) = self->_snoozeFireDate;
  *(v5 + 152) |= 0x80u;
  v14 = self->_has;
  if ((*&v14 & 4) == 0)
  {
LABEL_17:
    if ((*&v14 & 0x100000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(v5 + 24) = self->_bedtimeSnoozeFireDate;
  *(v5 + 152) |= 4u;
  v14 = self->_has;
  if ((*&v14 & 0x100000) == 0)
  {
LABEL_18:
    if ((*&v14 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(v5 + 145) = self->_isEnabled;
  *(v5 + 152) |= 0x100000u;
  v14 = self->_has;
  if ((*&v14 & 0x10) == 0)
  {
LABEL_19:
    if ((*&v14 & 8) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(v5 + 40) = self->_firedDate;
  *(v5 + 152) |= 0x10u;
  v14 = self->_has;
  if ((*&v14 & 8) == 0)
  {
LABEL_20:
    if ((*&v14 & 0x400000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(v5 + 32) = self->_dismissedDate;
  *(v5 + 152) |= 8u;
  v14 = self->_has;
  if ((*&v14 & 0x400000) == 0)
  {
LABEL_21:
    if ((*&v14 & 0x1000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(v5 + 147) = self->_sleepMode;
  *(v5 + 152) |= 0x400000u;
  v14 = self->_has;
  if ((*&v14 & 0x1000000) == 0)
  {
LABEL_22:
    if ((*&v14 & 0x800000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_46;
  }

LABEL_45:
  *(v5 + 149) = self->_sleepTracking;
  *(v5 + 152) |= 0x1000000u;
  v14 = self->_has;
  if ((*&v14 & 0x800000) == 0)
  {
LABEL_23:
    if ((*&v14 & 0x10000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_47;
  }

LABEL_46:
  *(v5 + 148) = self->_sleepSchedule;
  *(v5 + 152) |= 0x800000u;
  v14 = self->_has;
  if ((*&v14 & 0x10000) == 0)
  {
LABEL_24:
    if ((*&v14 & 0x40000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_48;
  }

LABEL_47:
  *(v5 + 112) = self->_onboardingVersion;
  *(v5 + 152) |= 0x10000u;
  v14 = self->_has;
  if ((*&v14 & 0x40000) == 0)
  {
LABEL_25:
    if ((*&v14 & 0x2000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_49;
  }

LABEL_48:
  *(v5 + 120) = self->_sleepModeOptions;
  *(v5 + 152) |= 0x40000u;
  v14 = self->_has;
  if ((*&v14 & 0x2000000) == 0)
  {
LABEL_26:
    if ((*&v14 & 0x2000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_50;
  }

LABEL_49:
  *(v5 + 150) = self->_timeInBedTracking;
  *(v5 + 152) |= 0x2000000u;
  v14 = self->_has;
  if ((*&v14 & 0x2000) == 0)
  {
LABEL_27:
    if ((*&v14 & 2) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_51;
  }

LABEL_50:
  *(v5 + 100) = self->_dismissedAction;
  *(v5 + 152) |= 0x2000u;
  v14 = self->_has;
  if ((*&v14 & 2) == 0)
  {
LABEL_28:
    if ((*&v14 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_52;
  }

LABEL_51:
  *(v5 + 16) = self->_bedtimeFiredDate;
  *(v5 + 152) |= 2u;
  v14 = self->_has;
  if ((*&v14 & 1) == 0)
  {
LABEL_29:
    if ((*&v14 & 0x100) == 0)
    {
      goto LABEL_30;
    }

LABEL_53:
    *(v5 + 80) = self->_bedtimeDismissedAction;
    *(v5 + 152) |= 0x100u;
    if ((*&self->_has & 0x20) == 0)
    {
      return v5;
    }

    goto LABEL_31;
  }

LABEL_52:
  *(v5 + 8) = self->_bedtimeDismissedDate;
  *(v5 + 152) |= 1u;
  v14 = self->_has;
  if ((*&v14 & 0x100) != 0)
  {
    goto LABEL_53;
  }

LABEL_30:
  if ((*&v14 & 0x20) != 0)
  {
LABEL_31:
    *(v5 + 48) = self->_keepOffUntilDate;
    *(v5 + 152) |= 0x20u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_161;
  }

  alarmID = self->_alarmID;
  if (alarmID | *(equalCopy + 9))
  {
    if (![(NSString *)alarmID isEqual:?])
    {
      goto LABEL_161;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 38);
  if ((*&has & 0x4000) != 0)
  {
    if ((v7 & 0x4000) == 0 || self->_hour != *(equalCopy + 26))
    {
      goto LABEL_161;
    }
  }

  else if ((v7 & 0x4000) != 0)
  {
    goto LABEL_161;
  }

  if ((*&has & 0x8000) != 0)
  {
    if ((v7 & 0x8000) == 0 || self->_minute != *(equalCopy + 27))
    {
      goto LABEL_161;
    }
  }

  else if ((v7 & 0x8000) != 0)
  {
    goto LABEL_161;
  }

  title = self->_title;
  if (title | *(equalCopy + 17))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_161;
    }

    has = self->_has;
  }

  v9 = *(equalCopy + 38);
  if ((*&has & 0x80000) != 0)
  {
    if ((v9 & 0x80000) == 0)
    {
      goto LABEL_161;
    }

    v10 = *(equalCopy + 144);
    if (self->_allowsSnooze)
    {
      if ((*(equalCopy + 144) & 1) == 0)
      {
        goto LABEL_161;
      }
    }

    else if (*(equalCopy + 144))
    {
      goto LABEL_161;
    }
  }

  else if ((v9 & 0x80000) != 0)
  {
    goto LABEL_161;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v9 & 0x1000) == 0 || self->_daySetting != *(equalCopy + 24))
    {
      goto LABEL_161;
    }
  }

  else if ((v9 & 0x1000) != 0)
  {
    goto LABEL_161;
  }

  sound = self->_sound;
  if (sound | *(equalCopy + 16))
  {
    if (![(MTPBSound *)sound isEqual:?])
    {
      goto LABEL_161;
    }

    has = self->_has;
  }

  v12 = *(equalCopy + 38);
  if ((*&has & 0x200000) != 0)
  {
    if ((v12 & 0x200000) == 0)
    {
      goto LABEL_161;
    }

    v13 = *(equalCopy + 146);
    if (self->_isSleepAlarm)
    {
      if ((*(equalCopy + 146) & 1) == 0)
      {
        goto LABEL_161;
      }
    }

    else if (*(equalCopy + 146))
    {
      goto LABEL_161;
    }
  }

  else if ((v12 & 0x200000) != 0)
  {
    goto LABEL_161;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v12 & 0x200) == 0 || self->_bedtimeHour != *(equalCopy + 21))
    {
      goto LABEL_161;
    }
  }

  else if ((v12 & 0x200) != 0)
  {
    goto LABEL_161;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v12 & 0x400) == 0 || self->_bedtimeMinute != *(equalCopy + 22))
    {
      goto LABEL_161;
    }
  }

  else if ((v12 & 0x400) != 0)
  {
    goto LABEL_161;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v12 & 0x800) == 0 || self->_bedtimeReminderMinutes != *(equalCopy + 23))
    {
      goto LABEL_161;
    }
  }

  else if ((v12 & 0x800) != 0)
  {
    goto LABEL_161;
  }

  if ((*&has & 0x20000) != 0)
  {
    if ((v12 & 0x20000) == 0 || self->_revision != *(equalCopy + 29))
    {
      goto LABEL_161;
    }
  }

  else if ((v12 & 0x20000) != 0)
  {
    goto LABEL_161;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v12 & 0x40) == 0 || self->_lastModifiedDate != *(equalCopy + 7))
    {
      goto LABEL_161;
    }
  }

  else if ((v12 & 0x40) != 0)
  {
    goto LABEL_161;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v12 & 0x80) == 0 || self->_snoozeFireDate != *(equalCopy + 8))
    {
      goto LABEL_161;
    }
  }

  else if ((v12 & 0x80) != 0)
  {
    goto LABEL_161;
  }

  if ((*&has & 4) != 0)
  {
    if ((v12 & 4) == 0 || self->_bedtimeSnoozeFireDate != *(equalCopy + 3))
    {
      goto LABEL_161;
    }
  }

  else if ((v12 & 4) != 0)
  {
    goto LABEL_161;
  }

  if ((*&has & 0x100000) != 0)
  {
    if ((v12 & 0x100000) == 0)
    {
      goto LABEL_161;
    }

    v14 = *(equalCopy + 145);
    if (self->_isEnabled)
    {
      if ((*(equalCopy + 145) & 1) == 0)
      {
        goto LABEL_161;
      }
    }

    else if (*(equalCopy + 145))
    {
      goto LABEL_161;
    }
  }

  else if ((v12 & 0x100000) != 0)
  {
    goto LABEL_161;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v12 & 0x10) == 0 || self->_firedDate != *(equalCopy + 5))
    {
      goto LABEL_161;
    }
  }

  else if ((v12 & 0x10) != 0)
  {
    goto LABEL_161;
  }

  if ((*&has & 8) != 0)
  {
    if ((v12 & 8) == 0 || self->_dismissedDate != *(equalCopy + 4))
    {
      goto LABEL_161;
    }
  }

  else if ((v12 & 8) != 0)
  {
    goto LABEL_161;
  }

  if ((*&has & 0x400000) != 0)
  {
    if ((v12 & 0x400000) == 0)
    {
      goto LABEL_161;
    }

    v15 = *(equalCopy + 147);
    if (self->_sleepMode)
    {
      if ((*(equalCopy + 147) & 1) == 0)
      {
        goto LABEL_161;
      }
    }

    else if (*(equalCopy + 147))
    {
      goto LABEL_161;
    }
  }

  else if ((v12 & 0x400000) != 0)
  {
    goto LABEL_161;
  }

  if ((*&has & 0x1000000) != 0)
  {
    if ((v12 & 0x1000000) == 0)
    {
      goto LABEL_161;
    }

    v16 = *(equalCopy + 149);
    if (self->_sleepTracking)
    {
      if ((*(equalCopy + 149) & 1) == 0)
      {
        goto LABEL_161;
      }
    }

    else if (*(equalCopy + 149))
    {
      goto LABEL_161;
    }
  }

  else if ((v12 & 0x1000000) != 0)
  {
    goto LABEL_161;
  }

  if ((*&has & 0x800000) != 0)
  {
    if ((v12 & 0x800000) == 0)
    {
      goto LABEL_161;
    }

    v17 = *(equalCopy + 148);
    if (self->_sleepSchedule)
    {
      if ((*(equalCopy + 148) & 1) == 0)
      {
        goto LABEL_161;
      }
    }

    else if (*(equalCopy + 148))
    {
      goto LABEL_161;
    }
  }

  else if ((v12 & 0x800000) != 0)
  {
    goto LABEL_161;
  }

  if ((*&has & 0x10000) != 0)
  {
    if ((v12 & 0x10000) == 0 || self->_onboardingVersion != *(equalCopy + 28))
    {
      goto LABEL_161;
    }
  }

  else if ((v12 & 0x10000) != 0)
  {
    goto LABEL_161;
  }

  if ((*&has & 0x40000) != 0)
  {
    if ((v12 & 0x40000) == 0 || self->_sleepModeOptions != *(equalCopy + 30))
    {
      goto LABEL_161;
    }
  }

  else if ((v12 & 0x40000) != 0)
  {
    goto LABEL_161;
  }

  if ((*&has & 0x2000000) == 0)
  {
    if ((v12 & 0x2000000) == 0)
    {
      goto LABEL_130;
    }

LABEL_161:
    v19 = 0;
    goto LABEL_162;
  }

  if ((v12 & 0x2000000) == 0)
  {
    goto LABEL_161;
  }

  v18 = *(equalCopy + 150);
  if (self->_timeInBedTracking)
  {
    if ((*(equalCopy + 150) & 1) == 0)
    {
      goto LABEL_161;
    }
  }

  else if (*(equalCopy + 150))
  {
    goto LABEL_161;
  }

LABEL_130:
  if ((*&has & 0x2000) != 0)
  {
    if ((v12 & 0x2000) == 0 || self->_dismissedAction != *(equalCopy + 25))
    {
      goto LABEL_161;
    }
  }

  else if ((v12 & 0x2000) != 0)
  {
    goto LABEL_161;
  }

  if ((*&has & 2) != 0)
  {
    if ((v12 & 2) == 0 || self->_bedtimeFiredDate != *(equalCopy + 2))
    {
      goto LABEL_161;
    }
  }

  else if ((v12 & 2) != 0)
  {
    goto LABEL_161;
  }

  if (*&has)
  {
    if ((v12 & 1) == 0 || self->_bedtimeDismissedDate != *(equalCopy + 1))
    {
      goto LABEL_161;
    }
  }

  else if (v12)
  {
    goto LABEL_161;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v12 & 0x100) == 0 || self->_bedtimeDismissedAction != *(equalCopy + 20))
    {
      goto LABEL_161;
    }
  }

  else if ((v12 & 0x100) != 0)
  {
    goto LABEL_161;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v12 & 0x20) == 0 || self->_keepOffUntilDate != *(equalCopy + 6))
    {
      goto LABEL_161;
    }

    v19 = 1;
  }

  else
  {
    v19 = (*(equalCopy + 38) & 0x20) == 0;
  }

LABEL_162:

  return v19;
}

- (unint64_t)hash
{
  v62 = [(NSString *)self->_alarmID hash];
  has = self->_has;
  if ((*&has & 0x4000) != 0)
  {
    v60 = 2654435761 * self->_hour;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v60 = 0;
    if ((*&has & 0x8000) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_minute;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSString *)self->_title hash];
  v6 = self->_has;
  if ((*&v6 & 0x80000) != 0)
  {
    v7 = 2654435761 * self->_allowsSnooze;
    if ((*&v6 & 0x1000) != 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = 0;
    if ((*&v6 & 0x1000) != 0)
    {
LABEL_8:
      v8 = 2654435761 * self->_daySetting;
      goto LABEL_11;
    }
  }

  v8 = 0;
LABEL_11:
  v9 = [(MTPBSound *)self->_sound hash];
  v12 = self->_has;
  if ((*&v12 & 0x200000) != 0)
  {
    v13 = 2654435761 * self->_isSleepAlarm;
    if ((*&v12 & 0x200) != 0)
    {
LABEL_13:
      v14 = 2654435761 * self->_bedtimeHour;
      if ((*&v12 & 0x400) != 0)
      {
        goto LABEL_14;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v13 = 0;
    if ((*&v12 & 0x200) != 0)
    {
      goto LABEL_13;
    }
  }

  v14 = 0;
  if ((*&v12 & 0x400) != 0)
  {
LABEL_14:
    v15 = 2654435761 * self->_bedtimeMinute;
    if ((*&v12 & 0x800) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_24;
  }

LABEL_23:
  v15 = 0;
  if ((*&v12 & 0x800) != 0)
  {
LABEL_15:
    v16 = 2654435761 * self->_bedtimeReminderMinutes;
    if ((*&v12 & 0x20000) != 0)
    {
      goto LABEL_16;
    }

LABEL_25:
    v17 = 0;
    if ((*&v12 & 0x40) != 0)
    {
      goto LABEL_17;
    }

LABEL_26:
    v21 = 0;
    goto LABEL_27;
  }

LABEL_24:
  v16 = 0;
  if ((*&v12 & 0x20000) == 0)
  {
    goto LABEL_25;
  }

LABEL_16:
  v17 = 2654435761 * self->_revision;
  if ((*&v12 & 0x40) == 0)
  {
    goto LABEL_26;
  }

LABEL_17:
  lastModifiedDate = self->_lastModifiedDate;
  if (lastModifiedDate < 0.0)
  {
    lastModifiedDate = -lastModifiedDate;
  }

  *v10.i64 = floor(lastModifiedDate + 0.5);
  v19 = (lastModifiedDate - *v10.i64) * 1.84467441e19;
  *v11.i64 = *v10.i64 - trunc(*v10.i64 * 5.42101086e-20) * 1.84467441e19;
  v20.f64[0] = NAN;
  v20.f64[1] = NAN;
  v10 = vbslq_s8(vnegq_f64(v20), v11, v10);
  v21 = 2654435761u * *v10.i64;
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

LABEL_27:
  if ((*&v12 & 0x80) != 0)
  {
    snoozeFireDate = self->_snoozeFireDate;
    if (snoozeFireDate < 0.0)
    {
      snoozeFireDate = -snoozeFireDate;
    }

    *v10.i64 = floor(snoozeFireDate + 0.5);
    v24 = (snoozeFireDate - *v10.i64) * 1.84467441e19;
    *v11.i64 = *v10.i64 - trunc(*v10.i64 * 5.42101086e-20) * 1.84467441e19;
    v25.f64[0] = NAN;
    v25.f64[1] = NAN;
    v10 = vbslq_s8(vnegq_f64(v25), v11, v10);
    v22 = 2654435761u * *v10.i64;
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

  if ((*&v12 & 4) != 0)
  {
    bedtimeSnoozeFireDate = self->_bedtimeSnoozeFireDate;
    if (bedtimeSnoozeFireDate < 0.0)
    {
      bedtimeSnoozeFireDate = -bedtimeSnoozeFireDate;
    }

    *v10.i64 = floor(bedtimeSnoozeFireDate + 0.5);
    v28 = (bedtimeSnoozeFireDate - *v10.i64) * 1.84467441e19;
    *v11.i64 = *v10.i64 - trunc(*v10.i64 * 5.42101086e-20) * 1.84467441e19;
    v29.f64[0] = NAN;
    v29.f64[1] = NAN;
    v10 = vbslq_s8(vnegq_f64(v29), v11, v10);
    v26 = 2654435761u * *v10.i64;
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

  if ((*&v12 & 0x100000) != 0)
  {
    v30 = 2654435761 * self->_isEnabled;
    if ((*&v12 & 0x10) != 0)
    {
      goto LABEL_47;
    }

LABEL_52:
    v34 = 0;
    goto LABEL_53;
  }

  v30 = 0;
  if ((*&v12 & 0x10) == 0)
  {
    goto LABEL_52;
  }

LABEL_47:
  firedDate = self->_firedDate;
  if (firedDate < 0.0)
  {
    firedDate = -firedDate;
  }

  *v10.i64 = floor(firedDate + 0.5);
  v32 = (firedDate - *v10.i64) * 1.84467441e19;
  *v11.i64 = *v10.i64 - trunc(*v10.i64 * 5.42101086e-20) * 1.84467441e19;
  v33.f64[0] = NAN;
  v33.f64[1] = NAN;
  v10 = vbslq_s8(vnegq_f64(v33), v11, v10);
  v34 = 2654435761u * *v10.i64;
  if (v32 >= 0.0)
  {
    if (v32 > 0.0)
    {
      v34 += v32;
    }
  }

  else
  {
    v34 -= fabs(v32);
  }

LABEL_53:
  if ((*&v12 & 8) != 0)
  {
    dismissedDate = self->_dismissedDate;
    if (dismissedDate < 0.0)
    {
      dismissedDate = -dismissedDate;
    }

    *v10.i64 = floor(dismissedDate + 0.5);
    v37 = (dismissedDate - *v10.i64) * 1.84467441e19;
    *v11.i64 = *v10.i64 - trunc(*v10.i64 * 5.42101086e-20) * 1.84467441e19;
    v38.f64[0] = NAN;
    v38.f64[1] = NAN;
    v10 = vbslq_s8(vnegq_f64(v38), v11, v10);
    v35 = 2654435761u * *v10.i64;
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

  if ((*&v12 & 0x400000) != 0)
  {
    v39 = 2654435761 * self->_sleepMode;
    if ((*&v12 & 0x1000000) != 0)
    {
LABEL_65:
      v40 = 2654435761 * self->_sleepTracking;
      if ((*&v12 & 0x800000) != 0)
      {
        goto LABEL_66;
      }

      goto LABEL_77;
    }
  }

  else
  {
    v39 = 0;
    if ((*&v12 & 0x1000000) != 0)
    {
      goto LABEL_65;
    }
  }

  v40 = 0;
  if ((*&v12 & 0x800000) != 0)
  {
LABEL_66:
    v41 = 2654435761 * self->_sleepSchedule;
    if ((*&v12 & 0x10000) != 0)
    {
      goto LABEL_67;
    }

    goto LABEL_78;
  }

LABEL_77:
  v41 = 0;
  if ((*&v12 & 0x10000) != 0)
  {
LABEL_67:
    v42 = 2654435761 * self->_onboardingVersion;
    if ((*&v12 & 0x40000) != 0)
    {
      goto LABEL_68;
    }

    goto LABEL_79;
  }

LABEL_78:
  v42 = 0;
  if ((*&v12 & 0x40000) != 0)
  {
LABEL_68:
    v43 = 2654435761 * self->_sleepModeOptions;
    if ((*&v12 & 0x2000000) != 0)
    {
      goto LABEL_69;
    }

    goto LABEL_80;
  }

LABEL_79:
  v43 = 0;
  if ((*&v12 & 0x2000000) != 0)
  {
LABEL_69:
    v44 = 2654435761 * self->_timeInBedTracking;
    if ((*&v12 & 0x2000) != 0)
    {
      goto LABEL_70;
    }

LABEL_81:
    v45 = 0;
    if ((*&v12 & 2) != 0)
    {
      goto LABEL_71;
    }

LABEL_82:
    v49 = 0;
    goto LABEL_83;
  }

LABEL_80:
  v44 = 0;
  if ((*&v12 & 0x2000) == 0)
  {
    goto LABEL_81;
  }

LABEL_70:
  v45 = 2654435761 * self->_dismissedAction;
  if ((*&v12 & 2) == 0)
  {
    goto LABEL_82;
  }

LABEL_71:
  bedtimeFiredDate = self->_bedtimeFiredDate;
  if (bedtimeFiredDate < 0.0)
  {
    bedtimeFiredDate = -bedtimeFiredDate;
  }

  *v10.i64 = floor(bedtimeFiredDate + 0.5);
  v47 = (bedtimeFiredDate - *v10.i64) * 1.84467441e19;
  *v11.i64 = *v10.i64 - trunc(*v10.i64 * 5.42101086e-20) * 1.84467441e19;
  v48.f64[0] = NAN;
  v48.f64[1] = NAN;
  v10 = vbslq_s8(vnegq_f64(v48), v11, v10);
  v49 = 2654435761u * *v10.i64;
  if (v47 >= 0.0)
  {
    if (v47 > 0.0)
    {
      v49 += v47;
    }
  }

  else
  {
    v49 -= fabs(v47);
  }

LABEL_83:
  if (*&v12)
  {
    bedtimeDismissedDate = self->_bedtimeDismissedDate;
    if (bedtimeDismissedDate < 0.0)
    {
      bedtimeDismissedDate = -bedtimeDismissedDate;
    }

    *v10.i64 = floor(bedtimeDismissedDate + 0.5);
    v52 = (bedtimeDismissedDate - *v10.i64) * 1.84467441e19;
    *v11.i64 = *v10.i64 - trunc(*v10.i64 * 5.42101086e-20) * 1.84467441e19;
    v53.f64[0] = NAN;
    v53.f64[1] = NAN;
    v10 = vbslq_s8(vnegq_f64(v53), v11, v10);
    v50 = 2654435761u * *v10.i64;
    if (v52 >= 0.0)
    {
      if (v52 > 0.0)
      {
        v50 += v52;
      }
    }

    else
    {
      v50 -= fabs(v52);
    }
  }

  else
  {
    v50 = 0;
  }

  if ((*&v12 & 0x100) != 0)
  {
    v54 = 2654435761 * self->_bedtimeDismissedAction;
    if ((*&v12 & 0x20) != 0)
    {
      goto LABEL_95;
    }

LABEL_100:
    v58 = 0;
    return v61 ^ v62 ^ v4 ^ v5 ^ v7 ^ v8 ^ v9 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v21 ^ v22 ^ v26 ^ v30 ^ v34 ^ v35 ^ v39 ^ v40 ^ v41 ^ v42 ^ v43 ^ v44 ^ v45 ^ v49 ^ v50 ^ v54 ^ v58;
  }

  v54 = 0;
  if ((*&v12 & 0x20) == 0)
  {
    goto LABEL_100;
  }

LABEL_95:
  keepOffUntilDate = self->_keepOffUntilDate;
  if (keepOffUntilDate < 0.0)
  {
    keepOffUntilDate = -keepOffUntilDate;
  }

  *v10.i64 = floor(keepOffUntilDate + 0.5);
  v56 = (keepOffUntilDate - *v10.i64) * 1.84467441e19;
  *v11.i64 = *v10.i64 - trunc(*v10.i64 * 5.42101086e-20) * 1.84467441e19;
  v57.f64[0] = NAN;
  v57.f64[1] = NAN;
  v58 = 2654435761u * *vbslq_s8(vnegq_f64(v57), v11, v10).i64;
  if (v56 >= 0.0)
  {
    if (v56 > 0.0)
    {
      v58 += v56;
    }
  }

  else
  {
    v58 -= fabs(v56);
  }

  return v61 ^ v62 ^ v4 ^ v5 ^ v7 ^ v8 ^ v9 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v21 ^ v22 ^ v26 ^ v30 ^ v34 ^ v35 ^ v39 ^ v40 ^ v41 ^ v42 ^ v43 ^ v44 ^ v45 ^ v49 ^ v50 ^ v54 ^ v58;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v10 = fromCopy;
  if (*(fromCopy + 9))
  {
    [(MTPBAlarmProperties *)self setAlarmID:?];
    fromCopy = v10;
  }

  v5 = *(fromCopy + 38);
  if ((v5 & 0x4000) != 0)
  {
    self->_hour = *(fromCopy + 26);
    *&self->_has |= 0x4000u;
    v5 = *(fromCopy + 38);
  }

  if ((v5 & 0x8000) != 0)
  {
    self->_minute = *(fromCopy + 27);
    *&self->_has |= 0x8000u;
  }

  if (*(fromCopy + 17))
  {
    [(MTPBAlarmProperties *)self setTitle:?];
    fromCopy = v10;
  }

  v6 = *(fromCopy + 38);
  if ((v6 & 0x80000) != 0)
  {
    self->_allowsSnooze = *(fromCopy + 144);
    *&self->_has |= 0x80000u;
    v6 = *(fromCopy + 38);
  }

  if ((v6 & 0x1000) != 0)
  {
    self->_daySetting = *(fromCopy + 24);
    *&self->_has |= 0x1000u;
  }

  sound = self->_sound;
  v8 = *(fromCopy + 16);
  if (sound)
  {
    if (!v8)
    {
      goto LABEL_19;
    }

    sound = [(MTPBSound *)sound mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_19;
    }

    sound = [(MTPBAlarmProperties *)self setSound:?];
  }

  fromCopy = v10;
LABEL_19:
  v9 = *(fromCopy + 38);
  if ((v9 & 0x200000) != 0)
  {
    self->_isSleepAlarm = *(fromCopy + 146);
    *&self->_has |= 0x200000u;
    v9 = *(fromCopy + 38);
    if ((v9 & 0x200) == 0)
    {
LABEL_21:
      if ((v9 & 0x400) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_47;
    }
  }

  else if ((v9 & 0x200) == 0)
  {
    goto LABEL_21;
  }

  self->_bedtimeHour = *(fromCopy + 21);
  *&self->_has |= 0x200u;
  v9 = *(fromCopy + 38);
  if ((v9 & 0x400) == 0)
  {
LABEL_22:
    if ((v9 & 0x800) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_bedtimeMinute = *(fromCopy + 22);
  *&self->_has |= 0x400u;
  v9 = *(fromCopy + 38);
  if ((v9 & 0x800) == 0)
  {
LABEL_23:
    if ((v9 & 0x20000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_bedtimeReminderMinutes = *(fromCopy + 23);
  *&self->_has |= 0x800u;
  v9 = *(fromCopy + 38);
  if ((v9 & 0x20000) == 0)
  {
LABEL_24:
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_revision = *(fromCopy + 29);
  *&self->_has |= 0x20000u;
  v9 = *(fromCopy + 38);
  if ((v9 & 0x40) == 0)
  {
LABEL_25:
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_lastModifiedDate = *(fromCopy + 7);
  *&self->_has |= 0x40u;
  v9 = *(fromCopy + 38);
  if ((v9 & 0x80) == 0)
  {
LABEL_26:
    if ((v9 & 4) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_snoozeFireDate = *(fromCopy + 8);
  *&self->_has |= 0x80u;
  v9 = *(fromCopy + 38);
  if ((v9 & 4) == 0)
  {
LABEL_27:
    if ((v9 & 0x100000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_bedtimeSnoozeFireDate = *(fromCopy + 3);
  *&self->_has |= 4u;
  v9 = *(fromCopy + 38);
  if ((v9 & 0x100000) == 0)
  {
LABEL_28:
    if ((v9 & 0x10) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_isEnabled = *(fromCopy + 145);
  *&self->_has |= 0x100000u;
  v9 = *(fromCopy + 38);
  if ((v9 & 0x10) == 0)
  {
LABEL_29:
    if ((v9 & 8) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_firedDate = *(fromCopy + 5);
  *&self->_has |= 0x10u;
  v9 = *(fromCopy + 38);
  if ((v9 & 8) == 0)
  {
LABEL_30:
    if ((v9 & 0x400000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_56;
  }

LABEL_55:
  self->_dismissedDate = *(fromCopy + 4);
  *&self->_has |= 8u;
  v9 = *(fromCopy + 38);
  if ((v9 & 0x400000) == 0)
  {
LABEL_31:
    if ((v9 & 0x1000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_57;
  }

LABEL_56:
  self->_sleepMode = *(fromCopy + 147);
  *&self->_has |= 0x400000u;
  v9 = *(fromCopy + 38);
  if ((v9 & 0x1000000) == 0)
  {
LABEL_32:
    if ((v9 & 0x800000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_58;
  }

LABEL_57:
  self->_sleepTracking = *(fromCopy + 149);
  *&self->_has |= 0x1000000u;
  v9 = *(fromCopy + 38);
  if ((v9 & 0x800000) == 0)
  {
LABEL_33:
    if ((v9 & 0x10000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_59;
  }

LABEL_58:
  self->_sleepSchedule = *(fromCopy + 148);
  *&self->_has |= 0x800000u;
  v9 = *(fromCopy + 38);
  if ((v9 & 0x10000) == 0)
  {
LABEL_34:
    if ((v9 & 0x40000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_60;
  }

LABEL_59:
  self->_onboardingVersion = *(fromCopy + 28);
  *&self->_has |= 0x10000u;
  v9 = *(fromCopy + 38);
  if ((v9 & 0x40000) == 0)
  {
LABEL_35:
    if ((v9 & 0x2000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_61;
  }

LABEL_60:
  self->_sleepModeOptions = *(fromCopy + 30);
  *&self->_has |= 0x40000u;
  v9 = *(fromCopy + 38);
  if ((v9 & 0x2000000) == 0)
  {
LABEL_36:
    if ((v9 & 0x2000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_62;
  }

LABEL_61:
  self->_timeInBedTracking = *(fromCopy + 150);
  *&self->_has |= 0x2000000u;
  v9 = *(fromCopy + 38);
  if ((v9 & 0x2000) == 0)
  {
LABEL_37:
    if ((v9 & 2) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_63;
  }

LABEL_62:
  self->_dismissedAction = *(fromCopy + 25);
  *&self->_has |= 0x2000u;
  v9 = *(fromCopy + 38);
  if ((v9 & 2) == 0)
  {
LABEL_38:
    if ((v9 & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_64;
  }

LABEL_63:
  self->_bedtimeFiredDate = *(fromCopy + 2);
  *&self->_has |= 2u;
  v9 = *(fromCopy + 38);
  if ((v9 & 1) == 0)
  {
LABEL_39:
    if ((v9 & 0x100) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_65;
  }

LABEL_64:
  self->_bedtimeDismissedDate = *(fromCopy + 1);
  *&self->_has |= 1u;
  v9 = *(fromCopy + 38);
  if ((v9 & 0x100) == 0)
  {
LABEL_40:
    if ((v9 & 0x20) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_65:
  self->_bedtimeDismissedAction = *(fromCopy + 20);
  *&self->_has |= 0x100u;
  if ((*(fromCopy + 38) & 0x20) != 0)
  {
LABEL_41:
    self->_keepOffUntilDate = *(fromCopy + 6);
    *&self->_has |= 0x20u;
  }

LABEL_42:

  MEMORY[0x1EEE66BB8](sound, fromCopy);
}

@end