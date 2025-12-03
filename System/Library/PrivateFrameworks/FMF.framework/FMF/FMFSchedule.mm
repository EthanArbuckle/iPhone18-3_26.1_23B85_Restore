@interface FMFSchedule
+ (id)_dateFromHour:(unint64_t)hour andMinute:(unint64_t)minute;
+ (id)_dayStringForDayOfWeek:(int64_t)week;
+ (id)_stringForDaysOfWeek:(int64_t)week;
+ (id)firstDateFromDates:(id)dates order:(int64_t)order;
+ (id)localizedTimeStringForHour:(unint64_t)hour andMinute:(unint64_t)minute timeStyle:(unint64_t)style;
+ (void)_enumerateDaysOfWeekInFMFDaysOfWeek:(int64_t)week callback:(id)callback;
- (BOOL)isCurrentAt:(id)at;
- (BOOL)isEqual:(id)equal;
- (FMFSchedule)initWithCoder:(id)coder;
- (FMFSchedule)initWithDictionary:(id)dictionary;
- (NSCalendar)_gregorian;
- (NSDictionary)dictionary;
- (NSString)localizedDaysOfWeekString;
- (NSString)localizedEndTimeString;
- (NSString)localizedStartTimeString;
- (NSString)validityError;
- (id)_daysOfWeek;
- (id)_endDateForStartDate:(id)date;
- (id)_nextStartDateOnDayOfWeek:(int64_t)week from:(id)from options:(unint64_t)options;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)nextStartDateFrom:(id)from options:(unint64_t)options;
- (id)nextStartOrEndDateFrom:(id)from;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMFSchedule

- (FMFSchedule)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v5 = [(FMFSchedule *)self init];
    if (v5)
    {
      v6 = [dictionaryCopy objectForKeyedSubscript:@"startHour"];
      -[FMFSchedule setStartHour:](v5, "setStartHour:", [v6 unsignedIntegerValue]);

      v7 = [dictionaryCopy objectForKeyedSubscript:@"startMin"];
      -[FMFSchedule setStartMin:](v5, "setStartMin:", [v7 unsignedIntegerValue]);

      v8 = [dictionaryCopy objectForKeyedSubscript:@"endHour"];
      -[FMFSchedule setEndHour:](v5, "setEndHour:", [v8 unsignedIntegerValue]);

      v9 = [dictionaryCopy objectForKeyedSubscript:@"endMin"];
      -[FMFSchedule setEndMin:](v5, "setEndMin:", [v9 unsignedIntegerValue]);

      v10 = [dictionaryCopy objectForKeyedSubscript:@"spanDays"];
      -[FMFSchedule setSpanDays:](v5, "setSpanDays:", [v10 unsignedIntegerValue]);

      v11 = [dictionaryCopy objectForKeyedSubscript:@"daysOfWeek"];
      -[FMFSchedule setDaysOfWeek:](v5, "setDaysOfWeek:", [v11 unsignedIntegerValue] & 0x7F);

      v12 = MEMORY[0x277CBEBB0];
      v13 = [dictionaryCopy objectForKeyedSubscript:@"fenceTz"];
      v14 = [v12 timeZoneWithName:v13];
      [(FMFSchedule *)v5 setTimeZone:v14];

      validityError = [(FMFSchedule *)v5 validityError];
      if (validityError)
      {
        v16 = LogCategory_Daemon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          [(FMFSchedule *)validityError initWithDictionary:v16];
        }

        v5 = 0;
      }
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    v18 = LogCategory_Daemon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [FMFSchedule initWithDictionary:v18];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (NSString)validityError
{
  if (![(FMFSchedule *)self daysOfWeek])
  {
    return @"invalid daysOfWeek: FMFDaysOfWeekNone";
  }

  if ([(FMFSchedule *)self startHour]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return @"unspecified startHour";
  }

  if ([(FMFSchedule *)self startMin]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return @"unspecified startMin";
  }

  if ([(FMFSchedule *)self endHour]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return @"unspecified endHour";
  }

  if ([(FMFSchedule *)self endMin]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return @"unspecified endMin";
  }

  if ([(FMFSchedule *)self spanDays]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return @"unspecified spanDays";
  }

  timeZone = [(FMFSchedule *)self timeZone];

  if (timeZone)
  {
    return 0;
  }

  else
  {
    return @"unspecified timeZone";
  }
}

- (NSDictionary)dictionary
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[FMFSchedule startHour](self, "startHour")}];
  [v3 setObject:v4 forKeyedSubscript:@"startHour"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[FMFSchedule startMin](self, "startMin")}];
  [v3 setObject:v5 forKeyedSubscript:@"startMin"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[FMFSchedule endHour](self, "endHour")}];
  [v3 setObject:v6 forKeyedSubscript:@"endHour"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[FMFSchedule endMin](self, "endMin")}];
  [v3 setObject:v7 forKeyedSubscript:@"endMin"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[FMFSchedule spanDays](self, "spanDays")}];
  [v3 setObject:v8 forKeyedSubscript:@"spanDays"];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[FMFSchedule daysOfWeek](self, "daysOfWeek")}];
  [v3 setObject:v9 forKeyedSubscript:@"daysOfWeek"];

  timeZone = [(FMFSchedule *)self timeZone];
  name = [timeZone name];
  [v3 setObject:name forKeyedSubscript:@"fenceTz"];

  v12 = [v3 copy];

  return v12;
}

- (FMFSchedule)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(FMFSchedule *)self init];
  if (v5)
  {
    -[FMFSchedule setStartHour:](v5, "setStartHour:", [coderCopy decodeIntegerForKey:@"startHour"]);
    -[FMFSchedule setStartMin:](v5, "setStartMin:", [coderCopy decodeIntegerForKey:@"startMin"]);
    -[FMFSchedule setEndHour:](v5, "setEndHour:", [coderCopy decodeIntegerForKey:@"endHour"]);
    -[FMFSchedule setEndMin:](v5, "setEndMin:", [coderCopy decodeIntegerForKey:@"endMin"]);
    -[FMFSchedule setSpanDays:](v5, "setSpanDays:", [coderCopy decodeIntegerForKey:@"spanDays"]);
    -[FMFSchedule setDaysOfWeek:](v5, "setDaysOfWeek:", [coderCopy decodeIntegerForKey:@"daysOfWeek"]);
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fenceTz"];
    v7 = [MEMORY[0x277CBEBB0] timeZoneWithName:v6];
    [(FMFSchedule *)v5 setTimeZone:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  startHour = self->_startHour;
  coderCopy = coder;
  [coderCopy encodeInteger:startHour forKey:@"startHour"];
  [coderCopy encodeInteger:self->_startMin forKey:@"startMin"];
  [coderCopy encodeInteger:self->_endHour forKey:@"endHour"];
  [coderCopy encodeInteger:self->_endMin forKey:@"endMin"];
  [coderCopy encodeInteger:self->_daysOfWeek forKey:@"daysOfWeek"];
  [coderCopy encodeInteger:self->_spanDays forKey:@"spanDays"];
  timeZone = [(FMFSchedule *)self timeZone];
  name = [timeZone name];
  [coderCopy encodeObject:name forKey:@"fenceTz"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setStartHour:self->_startHour];
  [v4 setStartMin:self->_startMin];
  [v4 setEndHour:self->_endHour];
  [v4 setEndMin:self->_endMin];
  [v4 setDaysOfWeek:self->_daysOfWeek];
  [v4 setSpanDays:self->_spanDays];
  v5 = [(NSTimeZone *)self->_timeZone copy];
  [v4 setTimeZone:v5];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    startHour = [(FMFSchedule *)self startHour];
    if (startHour == [v5 startHour] && (v7 = -[FMFSchedule startMin](self, "startMin"), v7 == objc_msgSend(v5, "startMin")) && (v8 = -[FMFSchedule endMin](self, "endMin"), v8 == objc_msgSend(v5, "endMin")) && (v9 = -[FMFSchedule endHour](self, "endHour"), v9 == objc_msgSend(v5, "endHour")) && (v10 = -[FMFSchedule daysOfWeek](self, "daysOfWeek"), v10 == objc_msgSend(v5, "daysOfWeek")) && (v11 = -[FMFSchedule spanDays](self, "spanDays"), v11 == objc_msgSend(v5, "spanDays")))
    {
      timeZone = [(FMFSchedule *)self timeZone];
      timeZone2 = [v5 timeZone];
      v14 = [timeZone isEqualToTimeZone:timeZone2];
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (unint64_t)hash
{
  startHour = [(FMFSchedule *)self startHour];
  v4 = [(FMFSchedule *)self startMin]^ startHour;
  endHour = [(FMFSchedule *)self endHour];
  v6 = v4 ^ endHour ^ [(FMFSchedule *)self endMin];
  daysOfWeek = [(FMFSchedule *)self daysOfWeek];
  v8 = daysOfWeek ^ [(FMFSchedule *)self spanDays];
  timeZone = [(FMFSchedule *)self timeZone];
  v10 = v8 ^ [timeZone hash];

  return v6 ^ v10;
}

- (BOOL)isCurrentAt:(id)at
{
  v17 = *MEMORY[0x277D85DE8];
  atCopy = at;
  v5 = [(FMFSchedule *)self nextStartDateFrom:atCopy options:4];
  if (v5)
  {
    v6 = [(FMFSchedule *)self _endDateForStartDate:v5];
    v7 = [v5 compare:atCopy] == -1 && objc_msgSend(atCopy, "compare:", v6) == -1;
  }

  else
  {
    v7 = 0;
  }

  v8 = LogCategory_Daemon();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "[FMFSchedule isCurrentAt:]";
    v13 = 1024;
    v14 = v7;
    v15 = 2112;
    v16 = atCopy;
    _os_log_impl(&dword_24A33F000, v8, OS_LOG_TYPE_DEFAULT, "%s: %d at: %@", &v11, 0x1Cu);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)nextStartOrEndDateFrom:(id)from
{
  fromCopy = from;
  v5 = [(FMFSchedule *)self nextStartDateFrom:fromCopy options:4];
  if (v5)
  {
    v6 = [(FMFSchedule *)self _endDateForStartDate:v5];
    if (v6 && [fromCopy compare:v6] == -1)
    {
      v7 = v6;
    }

    else
    {
      v7 = [(FMFSchedule *)self nextStartDateFrom:fromCopy options:0];
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  startHour = [(FMFSchedule *)self startHour];
  startMin = [(FMFSchedule *)self startMin];
  endHour = [(FMFSchedule *)self endHour];
  endMin = [(FMFSchedule *)self endMin];
  spanDays = [(FMFSchedule *)self spanDays];
  _daysOfWeek = [(FMFSchedule *)self _daysOfWeek];
  timeZone = [(FMFSchedule *)self timeZone];
  v12 = [v3 stringWithFormat:@"<%@ sH=%ld sM=%ld eH=%ld eM=%ld spanDays=%ld dOW=%@, tZ=%@>", v4, startHour, startMin, endHour, endMin, spanDays, _daysOfWeek, timeZone];

  return v12;
}

- (id)_endDateForStartDate:(id)date
{
  dateCopy = date;
  v5 = objc_opt_new();
  timeZone = [(FMFSchedule *)self timeZone];
  [v5 setTimeZone:timeZone];

  [v5 setHour:{-[FMFSchedule endHour](self, "endHour")}];
  [v5 setMinute:{-[FMFSchedule endMin](self, "endMin")}];
  _gregorian = [(FMFSchedule *)self _gregorian];
  v8 = [_gregorian nextDateAfterDate:dateCopy matchingComponents:v5 options:1024];

  if (v8)
  {
    spanDays = [(FMFSchedule *)self spanDays];
    _gregorian2 = [(FMFSchedule *)self _gregorian];
    v11 = spanDays - ([_gregorian2 isDate:v8 inSameDayAsDate:dateCopy] ^ 1);

    if ((v11 & 0x8000000000000000) != 0)
    {
      v14 = LogCategory_Daemon();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        [(FMFSchedule *)self _endDateForStartDate:v14];
      }
    }

    else if (v11)
    {
      do
      {
        v12 = v8;
        _gregorian3 = [(FMFSchedule *)self _gregorian];
        v8 = [_gregorian3 nextDateAfterDate:v8 matchingComponents:v5 options:1024];

        if (v11 < 2)
        {
          break;
        }

        --v11;
      }

      while (v8);
    }
  }

  return v8;
}

- (id)_daysOfWeek
{
  if (_daysOfWeek_onceToken != -1)
  {
    [FMFSchedule _daysOfWeek];
  }

  allKeys = [_daysOfWeek_daysOfWeekMap allKeys];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __26__FMFSchedule__daysOfWeek__block_invoke_78;
  v6[3] = &unk_278FDDF88;
  v6[4] = self;
  v4 = [allKeys fm_filter:v6];

  return v4;
}

void __26__FMFSchedule__daysOfWeek__block_invoke()
{
  v4[7] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_285D80658;
  v3[1] = &unk_285D80688;
  v4[0] = &unk_285D80670;
  v4[1] = &unk_285D806A0;
  v3[2] = &unk_285D806B8;
  v3[3] = &unk_285D806E8;
  v4[2] = &unk_285D806D0;
  v4[3] = &unk_285D80700;
  v3[4] = &unk_285D80718;
  v3[5] = &unk_285D80748;
  v4[4] = &unk_285D80730;
  v4[5] = &unk_285D80760;
  v3[6] = &unk_285D80778;
  v4[6] = &unk_285D80790;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:7];
  v1 = _daysOfWeek_daysOfWeekMap;
  _daysOfWeek_daysOfWeekMap = v0;

  v2 = *MEMORY[0x277D85DE8];
}

BOOL __26__FMFSchedule__daysOfWeek__block_invoke_78(uint64_t a1, uint64_t a2)
{
  v3 = [_daysOfWeek_daysOfWeekMap objectForKeyedSubscript:a2];
  v4 = [v3 integerValue];

  return ([*(a1 + 32) daysOfWeek] & v4) != 0;
}

- (id)nextStartDateFrom:(id)from options:(unint64_t)options
{
  fromCopy = from;
  _daysOfWeek = [(FMFSchedule *)self _daysOfWeek];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __41__FMFSchedule_nextStartDateFrom_options___block_invoke;
  v13[3] = &unk_278FDDFB0;
  v13[4] = self;
  v14 = fromCopy;
  optionsCopy = options;
  v8 = fromCopy;
  v9 = [_daysOfWeek fm_map:v13];

  if ((options & 4) != 0)
  {
    v10 = 1;
  }

  else
  {
    v10 = -1;
  }

  v11 = [objc_opt_class() firstDateFromDates:v9 order:v10];

  return v11;
}

uint64_t __41__FMFSchedule_nextStartDateFrom_options___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = [a2 integerValue];
  v5 = a1[5];
  v6 = a1[6];

  return [v3 _nextStartDateOnDayOfWeek:v4 from:v5 options:v6];
}

- (id)_nextStartDateOnDayOfWeek:(int64_t)week from:(id)from options:(unint64_t)options
{
  fromCopy = from;
  v9 = objc_opt_new();
  timeZone = [(FMFSchedule *)self timeZone];
  [v9 setTimeZone:timeZone];

  [v9 setHour:{-[FMFSchedule startHour](self, "startHour")}];
  [v9 setMinute:{-[FMFSchedule startMin](self, "startMin")}];
  [v9 setWeekday:week];
  _gregorian = [(FMFSchedule *)self _gregorian];
  0x400 = [_gregorian nextDateAfterDate:fromCopy matchingComponents:v9 options:options | 0x400];

  return 0x400;
}

+ (id)firstDateFromDates:(id)dates order:(int64_t)order
{
  v20 = *MEMORY[0x277D85DE8];
  datesCopy = dates;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [datesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(datesCopy);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (!v8 || [*(*(&v15 + 1) + 8 * i) compare:v8] == order)
        {
          v12 = v11;

          v8 = v12;
        }
      }

      v7 = [datesCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (NSCalendar)_gregorian
{
  gregorian = self->_gregorian;
  if (!gregorian)
  {
    v4 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
    timeZone = [(FMFSchedule *)self timeZone];
    [(NSCalendar *)v4 setTimeZone:timeZone];

    v6 = self->_gregorian;
    self->_gregorian = v4;

    gregorian = self->_gregorian;
  }

  return gregorian;
}

+ (id)_dateFromHour:(unint64_t)hour andMinute:(unint64_t)minute
{
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v8 = [currentCalendar components:62 fromDate:v6];
  [v8 setHour:hour];
  [v8 setMinute:minute];
  v9 = [currentCalendar dateFromComponents:v8];

  return v9;
}

+ (void)_enumerateDaysOfWeekInFMFDaysOfWeek:(int64_t)week callback:(id)callback
{
  callbackCopy = callback;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  firstWeekday = [currentCalendar firstWeekday];
  v7 = 0;
  v8 = ((firstWeekday + 6) * 0x2492492492492493uLL) >> 64;
  v9 = firstWeekday + 6 - 7 * ((v8 + ((firstWeekday + 6 - v8) >> 1)) >> 2);
  v10 = v9;
  do
  {
    if (v10 > 6)
    {
      v11 = 0;
    }

    else
    {
      v11 = qword_24A3647E8[v10];
    }

    if ((v11 & week) != 0)
    {
      callbackCopy[2]();
    }

    if (v10 < 6)
    {
      ++v10;
    }

    else
    {
      v10 = 0;
    }

    ++v7;
  }

  while (v10 != v9);
}

+ (id)_dayStringForDayOfWeek:(int64_t)week
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = currentCalendar;
  v6 = &stru_285D7AA10;
  if (week <= 7)
  {
    switch(week)
    {
      case 1:
        v7 = 6;
        break;
      case 2:
        v7 = 5;
        break;
      case 4:
        v7 = 4;
        break;
      default:
        goto LABEL_18;
    }
  }

  else if (week > 31)
  {
    if (week == 64)
    {
      v7 = 0;
    }

    else
    {
      if (week != 32)
      {
        goto LABEL_18;
      }

      v7 = 1;
    }
  }

  else if (week == 8)
  {
    v7 = 3;
  }

  else
  {
    if (week != 16)
    {
      goto LABEL_18;
    }

    v7 = 2;
  }

  weekdaySymbols = [currentCalendar weekdaySymbols];
  v6 = [weekdaySymbols objectAtIndexedSubscript:v7];

LABEL_18:

  return v6;
}

+ (id)_stringForDaysOfWeek:(int64_t)week
{
  if (!week)
  {
    v5 = &stru_285D7AA10;
    goto LABEL_39;
  }

  if (week == 127)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"DAYSLIST_EVERY_DAY" value:&stru_285D7AA10 table:@"Localizable-TINKER"];

    goto LABEL_39;
  }

  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v39[3] = 0x7FFFFFFFFFFFFFFFLL;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v38[3] = 0x7FFFFFFFFFFFFFFFLL;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 1;
  v7 = objc_opt_new();
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __46__FMFSchedule_NSString___stringForDaysOfWeek___block_invoke;
  v28 = &unk_278FDE750;
  selfCopy = self;
  v8 = v7;
  v29 = v8;
  v30 = v39;
  v31 = v38;
  v32 = &v34;
  [self _enumerateDaysOfWeekInFMFDaysOfWeek:week callback:&v25];
  v9 = [v8 count];
  v5 = &stru_285D7AA10;
  if (v9 > 3)
  {
    if (v9 == 4)
    {
      v21 = MEMORY[0x277CCACA8];
      if (*(v35 + 24) == 1)
      {
        v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v12 = [v11 localizedStringForKey:@"DAYSLIST_CONTIGUOUS_4" value:&stru_285D7AA10 table:@"Localizable-TINKER"];
        v13 = [v8 objectAtIndexedSubscript:0];
        v14 = [v8 objectAtIndexedSubscript:3];
        v16 = [v8 objectAtIndexedSubscript:1];
        [v8 objectAtIndexedSubscript:2];
      }

      else
      {
        v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v12 = [v11 localizedStringForKey:@"DAYSLIST_4" value:&stru_285D7AA10 table:@"Localizable-TINKER"];
        v13 = [v8 objectAtIndexedSubscript:0];
        v14 = [v8 objectAtIndexedSubscript:1];
        v16 = [v8 objectAtIndexedSubscript:2];
        [v8 objectAtIndexedSubscript:3];
      }
      v17 = ;
      v5 = [v21 stringWithFormat:v12, v13, v14, v16, v17];
    }

    else
    {
      if (v9 == 5)
      {
        v23 = MEMORY[0x277CCACA8];
        if (*(v35 + 24) == 1)
        {
          v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v12 = [v11 localizedStringForKey:@"DAYSLIST_CONTIGUOUS_5" value:&stru_285D7AA10 table:@"Localizable-TINKER"];
          v13 = [v8 objectAtIndexedSubscript:0];
          v14 = [v8 objectAtIndexedSubscript:4];
          v16 = [v8 objectAtIndexedSubscript:1];
          v17 = [v8 objectAtIndexedSubscript:2];
          [v8 objectAtIndexedSubscript:3];
        }

        else
        {
          v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v12 = [v11 localizedStringForKey:@"DAYSLIST_5" value:&stru_285D7AA10 table:@"Localizable-TINKER"];
          v13 = [v8 objectAtIndexedSubscript:0];
          v14 = [v8 objectAtIndexedSubscript:1];
          v16 = [v8 objectAtIndexedSubscript:2];
          v17 = [v8 objectAtIndexedSubscript:3];
          [v8 objectAtIndexedSubscript:4];
        }
        v18 = ;
        v5 = [v23 stringWithFormat:v12, v13, v14, v16, v17, v18];
      }

      else
      {
        if (v9 != 6)
        {
          goto LABEL_38;
        }

        v15 = MEMORY[0x277CCACA8];
        if (*(v35 + 24) == 1)
        {
          v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v12 = [v11 localizedStringForKey:@"DAYSLIST_CONTIGUOUS_6" value:&stru_285D7AA10 table:@"Localizable-TINKER"];
          v13 = [v8 objectAtIndexedSubscript:0];
          v14 = [v8 objectAtIndexedSubscript:5];
          v16 = [v8 objectAtIndexedSubscript:1];
          v17 = [v8 objectAtIndexedSubscript:2];
          v18 = [v8 objectAtIndexedSubscript:3];
          [v8 objectAtIndexedSubscript:4];
        }

        else
        {
          v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v12 = [v11 localizedStringForKey:@"DAYSLIST_6" value:&stru_285D7AA10 table:@"Localizable-TINKER"];
          v13 = [v8 objectAtIndexedSubscript:0];
          v14 = [v8 objectAtIndexedSubscript:1];
          v16 = [v8 objectAtIndexedSubscript:2];
          v17 = [v8 objectAtIndexedSubscript:3];
          v18 = [v8 objectAtIndexedSubscript:4];
          [v8 objectAtIndexedSubscript:5];
        }
        v19 = ;
        v5 = [v15 stringWithFormat:v12, v13, v14, v16, v17, v18, v19, v25, v26, v27, v28];
      }
    }

LABEL_35:
LABEL_36:

    goto LABEL_37;
  }

  switch(v9)
  {
    case 1:
      v20 = MEMORY[0x277CCACA8];
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = [v11 localizedStringForKey:@"DAYSLIST_1" value:&stru_285D7AA10 table:@"Localizable-TINKER"];
      v13 = [v8 objectAtIndexedSubscript:0];
      v5 = [v20 stringWithFormat:v12, v13];
LABEL_37:

      break;
    case 2:
      v22 = MEMORY[0x277CCACA8];
      if (*(v35 + 24) == 1)
      {
        v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        [v11 localizedStringForKey:@"DAYSLIST_CONTIGUOUS_2" value:&stru_285D7AA10 table:@"Localizable-TINKER"];
      }

      else
      {
        v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        [v11 localizedStringForKey:@"DAYSLIST_2" value:&stru_285D7AA10 table:@"Localizable-TINKER"];
      }
      v12 = ;
      v13 = [v8 objectAtIndexedSubscript:0];
      v14 = [v8 objectAtIndexedSubscript:1];
      v5 = [v22 stringWithFormat:v12, v13, v14];
      goto LABEL_36;
    case 3:
      v10 = MEMORY[0x277CCACA8];
      if (*(v35 + 24) == 1)
      {
        v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v12 = [v11 localizedStringForKey:@"DAYSLIST_CONTIGUOUS_3" value:&stru_285D7AA10 table:@"Localizable-TINKER"];
        v13 = [v8 objectAtIndexedSubscript:0];
        v14 = [v8 objectAtIndexedSubscript:2];
        [v8 objectAtIndexedSubscript:1];
      }

      else
      {
        v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v12 = [v11 localizedStringForKey:@"DAYSLIST_3" value:&stru_285D7AA10 table:@"Localizable-TINKER"];
        v13 = [v8 objectAtIndexedSubscript:0];
        v14 = [v8 objectAtIndexedSubscript:1];
        [v8 objectAtIndexedSubscript:2];
      }
      v16 = ;
      v5 = [v10 stringWithFormat:v12, v13, v14, v16];
      goto LABEL_35;
  }

LABEL_38:

  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(v38, 8);
  _Block_object_dispose(v39, 8);
LABEL_39:

  return v5;
}

void __46__FMFSchedule_NSString___stringForDaysOfWeek___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 64) _dayStringForDayOfWeek:a2];
  [*(a1 + 32) addObject:?];
  v5 = *(*(a1 + 40) + 8);
  if (*(v5 + 24) == 0x7FFFFFFFFFFFFFFFLL)
  {
    *(v5 + 24) = a3;
  }

  else if (*(*(*(a1 + 48) + 8) + 24) + 1 != a3)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = a3;
}

- (NSString)localizedDaysOfWeekString
{
  daysOfWeek = [(FMFSchedule *)self daysOfWeek];

  return [FMFSchedule localizedDaysOfWeekStringFor:daysOfWeek];
}

+ (id)localizedTimeStringForHour:(unint64_t)hour andMinute:(unint64_t)minute timeStyle:(unint64_t)style
{
  v6 = [FMFSchedule _dateFromHour:hour andMinute:minute];
  if (v6)
  {
    v7 = [MEMORY[0x277CCA968] localizedStringFromDate:v6 dateStyle:0 timeStyle:style];
  }

  else
  {
    v7 = &stru_285D7AA10;
  }

  return v7;
}

- (NSString)localizedStartTimeString
{
  startHour = [(FMFSchedule *)self startHour];
  startMin = [(FMFSchedule *)self startMin];

  return [FMFSchedule localizedTimeStringForHour:startHour andMinute:startMin];
}

- (NSString)localizedEndTimeString
{
  endHour = [(FMFSchedule *)self endHour];
  endMin = [(FMFSchedule *)self endMin];

  return [FMFSchedule localizedTimeStringForHour:endHour andMinute:endMin];
}

- (void)initWithDictionary:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_24A33F000, a2, OS_LOG_TYPE_FAULT, "validityError: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_endDateForStartDate:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_24A33F000, a2, OS_LOG_TYPE_FAULT, "%@: spanDays should have been >= 0", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end