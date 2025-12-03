@interface HKCodableDateComponents
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasEra:(BOOL)era;
- (void)setHasHour:(BOOL)hour;
- (void)setHasMinute:(BOOL)minute;
- (void)setHasMonth:(BOOL)month;
- (void)setHasNanosecond:(BOOL)nanosecond;
- (void)setHasQuarter:(BOOL)quarter;
- (void)setHasSecond:(BOOL)second;
- (void)setHasWeekOfMonth:(BOOL)month;
- (void)setHasWeekOfYear:(BOOL)year;
- (void)setHasWeekday:(BOOL)weekday;
- (void)setHasWeekdayOrdinal:(BOOL)ordinal;
- (void)setHasYear:(BOOL)year;
- (void)setHasYearForWeekOfYear:(BOOL)year;
- (void)writeTo:(id)to;
@end

@implementation HKCodableDateComponents

- (void)setHasEra:(BOOL)era
{
  if (era)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasYear:(BOOL)year
{
  if (year)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEFFF | v3;
}

- (void)setHasMonth:(BOOL)month
{
  if (month)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasHour:(BOOL)hour
{
  if (hour)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasMinute:(BOOL)minute
{
  if (minute)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasSecond:(BOOL)second
{
  if (second)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasWeekday:(BOOL)weekday
{
  if (weekday)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasWeekdayOrdinal:(BOOL)ordinal
{
  if (ordinal)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7FF | v3;
}

- (void)setHasQuarter:(BOOL)quarter
{
  if (quarter)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasWeekOfMonth:(BOOL)month
{
  if (month)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasWeekOfYear:(BOOL)year
{
  if (year)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasYearForWeekOfYear:(BOOL)year
{
  if (year)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDFFF | v3;
}

- (void)setHasNanosecond:(BOOL)nanosecond
{
  if (nanosecond)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableDateComponents;
  v4 = [(HKCodableDateComponents *)&v8 description];
  dictionaryRepresentation = [(HKCodableDateComponents *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_era];
    [dictionary setObject:v9 forKey:@"era"];

    has = self->_has;
    if ((has & 0x1000) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_year];
  [dictionary setObject:v10 forKey:@"year"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_month];
  [dictionary setObject:v11 forKey:@"month"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  v12 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_day];
  [dictionary setObject:v12 forKey:@"day"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  v13 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_hour];
  [dictionary setObject:v13 forKey:@"hour"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  v14 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_minute];
  [dictionary setObject:v14 forKey:@"minute"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  v15 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_second];
  [dictionary setObject:v15 forKey:@"second"];

  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  v16 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_weekday];
  [dictionary setObject:v16 forKey:@"weekday"];

  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  v17 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_weekdayOrdinal];
  [dictionary setObject:v17 forKey:@"weekdayOrdinal"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  v18 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_quarter];
  [dictionary setObject:v18 forKey:@"quarter"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_12:
    if ((has & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  v19 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_weekOfMonth];
  [dictionary setObject:v19 forKey:@"weekOfMonth"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_13:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  v20 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_weekOfYear];
  [dictionary setObject:v20 forKey:@"weekOfYear"];

  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_14:
    if ((has & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_35:
  v21 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_yearForWeekOfYear];
  [dictionary setObject:v21 forKey:@"yearForWeekOfYear"];

  if ((*&self->_has & 0x20) != 0)
  {
LABEL_15:
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_nanosecond];
    [dictionary setObject:v5 forKey:@"nanosecond"];
  }

LABEL_16:
  calendar = self->_calendar;
  if (calendar)
  {
    [dictionary setObject:calendar forKey:@"calendar"];
  }

  timeZone = self->_timeZone;
  if (timeZone)
  {
    [dictionary setObject:timeZone forKey:@"timeZone"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v6;
    has = self->_has;
    if ((has & 0x1000) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt64Field();
  toCopy = v6;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  PBDataWriterWriteInt64Field();
  toCopy = v6;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  PBDataWriterWriteInt64Field();
  toCopy = v6;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  PBDataWriterWriteInt64Field();
  toCopy = v6;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  PBDataWriterWriteInt64Field();
  toCopy = v6;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  PBDataWriterWriteInt64Field();
  toCopy = v6;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  PBDataWriterWriteInt64Field();
  toCopy = v6;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  PBDataWriterWriteInt64Field();
  toCopy = v6;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  PBDataWriterWriteInt64Field();
  toCopy = v6;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_12:
    if ((has & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  PBDataWriterWriteInt64Field();
  toCopy = v6;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_13:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  PBDataWriterWriteInt64Field();
  toCopy = v6;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_14:
    if ((has & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_35:
  PBDataWriterWriteInt64Field();
  toCopy = v6;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_15:
    PBDataWriterWriteInt64Field();
    toCopy = v6;
  }

LABEL_16:
  if (self->_calendar)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_timeZone)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[2] = self->_era;
    *(toCopy + 68) |= 2u;
    has = self->_has;
    if ((has & 0x1000) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  toCopy[13] = self->_year;
  *(toCopy + 68) |= 0x1000u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  toCopy[5] = self->_month;
  *(toCopy + 68) |= 0x10u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  toCopy[1] = self->_day;
  *(toCopy + 68) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  toCopy[3] = self->_hour;
  *(toCopy + 68) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  toCopy[4] = self->_minute;
  *(toCopy + 68) |= 8u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  toCopy[8] = self->_second;
  *(toCopy + 68) |= 0x80u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  toCopy[11] = self->_weekday;
  *(toCopy + 68) |= 0x400u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  toCopy[12] = self->_weekdayOrdinal;
  *(toCopy + 68) |= 0x800u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  toCopy[7] = self->_quarter;
  *(toCopy + 68) |= 0x40u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_12:
    if ((has & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  toCopy[9] = self->_weekOfMonth;
  *(toCopy + 68) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_13:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  toCopy[10] = self->_weekOfYear;
  *(toCopy + 68) |= 0x200u;
  has = self->_has;
  if ((has & 0x2000) == 0)
  {
LABEL_14:
    if ((has & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_35:
  toCopy[14] = self->_yearForWeekOfYear;
  *(toCopy + 68) |= 0x2000u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_15:
    toCopy[6] = self->_nanosecond;
    *(toCopy + 68) |= 0x20u;
  }

LABEL_16:
  v6 = toCopy;
  if (self->_calendar)
  {
    [toCopy setCalendar:?];
    toCopy = v6;
  }

  if (self->_timeZone)
  {
    [v6 setTimeZone:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_era;
    *(v5 + 136) |= 2u;
    has = self->_has;
    if ((has & 0x1000) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 104) = self->_year;
  *(v5 + 136) |= 0x1000u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v5 + 40) = self->_month;
  *(v5 + 136) |= 0x10u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v5 + 8) = self->_day;
  *(v5 + 136) |= 1u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v5 + 24) = self->_hour;
  *(v5 + 136) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v5 + 32) = self->_minute;
  *(v5 + 136) |= 8u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_8:
    if ((has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v5 + 64) = self->_second;
  *(v5 + 136) |= 0x80u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_9:
    if ((has & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v5 + 88) = self->_weekday;
  *(v5 + 136) |= 0x400u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_10:
    if ((has & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v5 + 96) = self->_weekdayOrdinal;
  *(v5 + 136) |= 0x800u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_11:
    if ((has & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v5 + 56) = self->_quarter;
  *(v5 + 136) |= 0x40u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_12:
    if ((has & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v5 + 72) = self->_weekOfMonth;
  *(v5 + 136) |= 0x100u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_13:
    if ((has & 0x2000) == 0)
    {
      goto LABEL_14;
    }

LABEL_29:
    *(v5 + 112) = self->_yearForWeekOfYear;
    *(v5 + 136) |= 0x2000u;
    if ((*&self->_has & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_28:
  *(v5 + 80) = self->_weekOfYear;
  *(v5 + 136) |= 0x200u;
  has = self->_has;
  if ((has & 0x2000) != 0)
  {
    goto LABEL_29;
  }

LABEL_14:
  if ((has & 0x20) != 0)
  {
LABEL_15:
    *(v5 + 48) = self->_nanosecond;
    *(v5 + 136) |= 0x20u;
  }

LABEL_16:
  v8 = [(NSString *)self->_calendar copyWithZone:zone];
  v9 = v6[15];
  v6[15] = v8;

  v10 = [(NSString *)self->_timeZone copyWithZone:zone];
  v11 = v6[16];
  v6[16] = v10;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_76;
  }

  has = self->_has;
  v6 = *(equalCopy + 68);
  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_era != *(equalCopy + 2))
    {
      goto LABEL_76;
    }
  }

  else if ((v6 & 2) != 0)
  {
LABEL_76:
    v9 = 0;
    goto LABEL_77;
  }

  if ((*&self->_has & 0x1000) != 0)
  {
    if ((*(equalCopy + 68) & 0x1000) == 0 || self->_year != *(equalCopy + 13))
    {
      goto LABEL_76;
    }
  }

  else if ((*(equalCopy + 68) & 0x1000) != 0)
  {
    goto LABEL_76;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_month != *(equalCopy + 5))
    {
      goto LABEL_76;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_76;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_day != *(equalCopy + 1))
    {
      goto LABEL_76;
    }
  }

  else if (v6)
  {
    goto LABEL_76;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_hour != *(equalCopy + 3))
    {
      goto LABEL_76;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_76;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_minute != *(equalCopy + 4))
    {
      goto LABEL_76;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_76;
  }

  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_second != *(equalCopy + 8))
    {
      goto LABEL_76;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
    goto LABEL_76;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(equalCopy + 68) & 0x400) == 0 || self->_weekday != *(equalCopy + 11))
    {
      goto LABEL_76;
    }
  }

  else if ((*(equalCopy + 68) & 0x400) != 0)
  {
    goto LABEL_76;
  }

  if ((*&self->_has & 0x800) != 0)
  {
    if ((*(equalCopy + 68) & 0x800) == 0 || self->_weekdayOrdinal != *(equalCopy + 12))
    {
      goto LABEL_76;
    }
  }

  else if ((*(equalCopy + 68) & 0x800) != 0)
  {
    goto LABEL_76;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_quarter != *(equalCopy + 7))
    {
      goto LABEL_76;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_76;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 68) & 0x100) == 0 || self->_weekOfMonth != *(equalCopy + 9))
    {
      goto LABEL_76;
    }
  }

  else if ((*(equalCopy + 68) & 0x100) != 0)
  {
    goto LABEL_76;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(equalCopy + 68) & 0x200) == 0 || self->_weekOfYear != *(equalCopy + 10))
    {
      goto LABEL_76;
    }
  }

  else if ((*(equalCopy + 68) & 0x200) != 0)
  {
    goto LABEL_76;
  }

  if ((*&self->_has & 0x2000) != 0)
  {
    if ((*(equalCopy + 68) & 0x2000) == 0 || self->_yearForWeekOfYear != *(equalCopy + 14))
    {
      goto LABEL_76;
    }
  }

  else if ((*(equalCopy + 68) & 0x2000) != 0)
  {
    goto LABEL_76;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_nanosecond != *(equalCopy + 6))
    {
      goto LABEL_76;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_76;
  }

  calendar = self->_calendar;
  if (calendar | *(equalCopy + 15) && ![(NSString *)calendar isEqual:?])
  {
    goto LABEL_76;
  }

  timeZone = self->_timeZone;
  if (timeZone | *(equalCopy + 16))
  {
    v9 = [(NSString *)timeZone isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_77:

  return v9;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4 = 2654435761 * self->_era;
    if ((*&self->_has & 0x1000) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_year;
      if ((has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_month;
    if (has)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v6 = 0;
  if (has)
  {
LABEL_5:
    v7 = 2654435761 * self->_day;
    if ((has & 4) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v7 = 0;
  if ((has & 4) != 0)
  {
LABEL_6:
    v8 = 2654435761 * self->_hour;
    if ((has & 8) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v8 = 0;
  if ((has & 8) != 0)
  {
LABEL_7:
    v9 = 2654435761 * self->_minute;
    if ((has & 0x80) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v9 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_8:
    v10 = 2654435761 * self->_second;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_9:
    v11 = 2654435761 * self->_weekday;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v11 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_10:
    v12 = 2654435761 * self->_weekdayOrdinal;
    if ((has & 0x40) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_11:
    v13 = 2654435761 * self->_quarter;
    if ((has & 0x100) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v13 = 0;
  if ((has & 0x100) != 0)
  {
LABEL_12:
    v14 = 2654435761 * self->_weekOfMonth;
    if ((has & 0x200) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v14 = 0;
  if ((has & 0x200) != 0)
  {
LABEL_13:
    v15 = 2654435761 * self->_weekOfYear;
    if ((has & 0x2000) != 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    v16 = 0;
    if ((has & 0x20) != 0)
    {
      goto LABEL_15;
    }

LABEL_29:
    v17 = 0;
    goto LABEL_30;
  }

LABEL_27:
  v15 = 0;
  if ((has & 0x2000) == 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  v16 = 2654435761 * self->_yearForWeekOfYear;
  if ((has & 0x20) == 0)
  {
    goto LABEL_29;
  }

LABEL_15:
  v17 = 2654435761 * self->_nanosecond;
LABEL_30:
  v18 = v5 ^ v4 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ [(NSString *)self->_calendar hash];
  return v18 ^ [(NSString *)self->_timeZone hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 68);
  if ((v5 & 2) != 0)
  {
    self->_era = *(fromCopy + 2);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 68);
    if ((v5 & 0x1000) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }
  }

  else if ((*(fromCopy + 68) & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  self->_year = *(fromCopy + 13);
  *&self->_has |= 0x1000u;
  v5 = *(fromCopy + 68);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_25:
  self->_month = *(fromCopy + 5);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 68);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  self->_day = *(fromCopy + 1);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 68);
  if ((v5 & 4) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_28;
  }

LABEL_27:
  self->_hour = *(fromCopy + 3);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 68);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_29;
  }

LABEL_28:
  self->_minute = *(fromCopy + 4);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 68);
  if ((v5 & 0x80) == 0)
  {
LABEL_8:
    if ((v5 & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_29:
  self->_second = *(fromCopy + 8);
  *&self->_has |= 0x80u;
  v5 = *(fromCopy + 68);
  if ((v5 & 0x400) == 0)
  {
LABEL_9:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  self->_weekday = *(fromCopy + 11);
  *&self->_has |= 0x400u;
  v5 = *(fromCopy + 68);
  if ((v5 & 0x800) == 0)
  {
LABEL_10:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  self->_weekdayOrdinal = *(fromCopy + 12);
  *&self->_has |= 0x800u;
  v5 = *(fromCopy + 68);
  if ((v5 & 0x40) == 0)
  {
LABEL_11:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_quarter = *(fromCopy + 7);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 68);
  if ((v5 & 0x100) == 0)
  {
LABEL_12:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_weekOfMonth = *(fromCopy + 9);
  *&self->_has |= 0x100u;
  v5 = *(fromCopy + 68);
  if ((v5 & 0x200) == 0)
  {
LABEL_13:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_weekOfYear = *(fromCopy + 10);
  *&self->_has |= 0x200u;
  v5 = *(fromCopy + 68);
  if ((v5 & 0x2000) == 0)
  {
LABEL_14:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_35:
  self->_yearForWeekOfYear = *(fromCopy + 14);
  *&self->_has |= 0x2000u;
  if ((*(fromCopy + 68) & 0x20) != 0)
  {
LABEL_15:
    self->_nanosecond = *(fromCopy + 6);
    *&self->_has |= 0x20u;
  }

LABEL_16:
  v6 = fromCopy;
  if (*(fromCopy + 15))
  {
    [(HKCodableDateComponents *)self setCalendar:?];
    fromCopy = v6;
  }

  if (*(fromCopy + 16))
  {
    [(HKCodableDateComponents *)self setTimeZone:?];
    fromCopy = v6;
  }
}

@end