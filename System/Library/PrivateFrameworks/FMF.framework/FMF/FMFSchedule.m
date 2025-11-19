@interface FMFSchedule
+ (id)_dateFromHour:(unint64_t)a3 andMinute:(unint64_t)a4;
+ (id)_dayStringForDayOfWeek:(int64_t)a3;
+ (id)_stringForDaysOfWeek:(int64_t)a3;
+ (id)firstDateFromDates:(id)a3 order:(int64_t)a4;
+ (id)localizedTimeStringForHour:(unint64_t)a3 andMinute:(unint64_t)a4 timeStyle:(unint64_t)a5;
+ (void)_enumerateDaysOfWeekInFMFDaysOfWeek:(int64_t)a3 callback:(id)a4;
- (BOOL)isCurrentAt:(id)a3;
- (BOOL)isEqual:(id)a3;
- (FMFSchedule)initWithCoder:(id)a3;
- (FMFSchedule)initWithDictionary:(id)a3;
- (NSCalendar)_gregorian;
- (NSDictionary)dictionary;
- (NSString)localizedDaysOfWeekString;
- (NSString)localizedEndTimeString;
- (NSString)localizedStartTimeString;
- (NSString)validityError;
- (id)_daysOfWeek;
- (id)_endDateForStartDate:(id)a3;
- (id)_nextStartDateOnDayOfWeek:(int64_t)a3 from:(id)a4 options:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)nextStartDateFrom:(id)a3 options:(unint64_t)a4;
- (id)nextStartOrEndDateFrom:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMFSchedule

- (FMFSchedule)initWithDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(FMFSchedule *)self init];
    if (v5)
    {
      v6 = [v4 objectForKeyedSubscript:@"startHour"];
      -[FMFSchedule setStartHour:](v5, "setStartHour:", [v6 unsignedIntegerValue]);

      v7 = [v4 objectForKeyedSubscript:@"startMin"];
      -[FMFSchedule setStartMin:](v5, "setStartMin:", [v7 unsignedIntegerValue]);

      v8 = [v4 objectForKeyedSubscript:@"endHour"];
      -[FMFSchedule setEndHour:](v5, "setEndHour:", [v8 unsignedIntegerValue]);

      v9 = [v4 objectForKeyedSubscript:@"endMin"];
      -[FMFSchedule setEndMin:](v5, "setEndMin:", [v9 unsignedIntegerValue]);

      v10 = [v4 objectForKeyedSubscript:@"spanDays"];
      -[FMFSchedule setSpanDays:](v5, "setSpanDays:", [v10 unsignedIntegerValue]);

      v11 = [v4 objectForKeyedSubscript:@"daysOfWeek"];
      -[FMFSchedule setDaysOfWeek:](v5, "setDaysOfWeek:", [v11 unsignedIntegerValue] & 0x7F);

      v12 = MEMORY[0x277CBEBB0];
      v13 = [v4 objectForKeyedSubscript:@"fenceTz"];
      v14 = [v12 timeZoneWithName:v13];
      [(FMFSchedule *)v5 setTimeZone:v14];

      v15 = [(FMFSchedule *)v5 validityError];
      if (v15)
      {
        v16 = LogCategory_Daemon();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          [(FMFSchedule *)v15 initWithDictionary:v16];
        }

        v5 = 0;
      }
    }

    self = v5;
    v17 = self;
  }

  else
  {
    v18 = LogCategory_Daemon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [FMFSchedule initWithDictionary:v18];
    }

    v17 = 0;
  }

  return v17;
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

  v4 = [(FMFSchedule *)self timeZone];

  if (v4)
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

  v10 = [(FMFSchedule *)self timeZone];
  v11 = [v10 name];
  [v3 setObject:v11 forKeyedSubscript:@"fenceTz"];

  v12 = [v3 copy];

  return v12;
}

- (FMFSchedule)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FMFSchedule *)self init];
  if (v5)
  {
    -[FMFSchedule setStartHour:](v5, "setStartHour:", [v4 decodeIntegerForKey:@"startHour"]);
    -[FMFSchedule setStartMin:](v5, "setStartMin:", [v4 decodeIntegerForKey:@"startMin"]);
    -[FMFSchedule setEndHour:](v5, "setEndHour:", [v4 decodeIntegerForKey:@"endHour"]);
    -[FMFSchedule setEndMin:](v5, "setEndMin:", [v4 decodeIntegerForKey:@"endMin"]);
    -[FMFSchedule setSpanDays:](v5, "setSpanDays:", [v4 decodeIntegerForKey:@"spanDays"]);
    -[FMFSchedule setDaysOfWeek:](v5, "setDaysOfWeek:", [v4 decodeIntegerForKey:@"daysOfWeek"]);
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fenceTz"];
    v7 = [MEMORY[0x277CBEBB0] timeZoneWithName:v6];
    [(FMFSchedule *)v5 setTimeZone:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  startHour = self->_startHour;
  v5 = a3;
  [v5 encodeInteger:startHour forKey:@"startHour"];
  [v5 encodeInteger:self->_startMin forKey:@"startMin"];
  [v5 encodeInteger:self->_endHour forKey:@"endHour"];
  [v5 encodeInteger:self->_endMin forKey:@"endMin"];
  [v5 encodeInteger:self->_daysOfWeek forKey:@"daysOfWeek"];
  [v5 encodeInteger:self->_spanDays forKey:@"spanDays"];
  v7 = [(FMFSchedule *)self timeZone];
  v6 = [v7 name];
  [v5 encodeObject:v6 forKey:@"fenceTz"];
}

- (id)copyWithZone:(_NSZone *)a3
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(FMFSchedule *)self startHour];
    if (v6 == [v5 startHour] && (v7 = -[FMFSchedule startMin](self, "startMin"), v7 == objc_msgSend(v5, "startMin")) && (v8 = -[FMFSchedule endMin](self, "endMin"), v8 == objc_msgSend(v5, "endMin")) && (v9 = -[FMFSchedule endHour](self, "endHour"), v9 == objc_msgSend(v5, "endHour")) && (v10 = -[FMFSchedule daysOfWeek](self, "daysOfWeek"), v10 == objc_msgSend(v5, "daysOfWeek")) && (v11 = -[FMFSchedule spanDays](self, "spanDays"), v11 == objc_msgSend(v5, "spanDays")))
    {
      v12 = [(FMFSchedule *)self timeZone];
      v13 = [v5 timeZone];
      v14 = [v12 isEqualToTimeZone:v13];
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
  v3 = [(FMFSchedule *)self startHour];
  v4 = [(FMFSchedule *)self startMin]^ v3;
  v5 = [(FMFSchedule *)self endHour];
  v6 = v4 ^ v5 ^ [(FMFSchedule *)self endMin];
  v7 = [(FMFSchedule *)self daysOfWeek];
  v8 = v7 ^ [(FMFSchedule *)self spanDays];
  v9 = [(FMFSchedule *)self timeZone];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (BOOL)isCurrentAt:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(FMFSchedule *)self nextStartDateFrom:v4 options:4];
  if (v5)
  {
    v6 = [(FMFSchedule *)self _endDateForStartDate:v5];
    v7 = [v5 compare:v4] == -1 && objc_msgSend(v4, "compare:", v6) == -1;
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
    v16 = v4;
    _os_log_impl(&dword_24A33F000, v8, OS_LOG_TYPE_DEFAULT, "%s: %d at: %@", &v11, 0x1Cu);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)nextStartOrEndDateFrom:(id)a3
{
  v4 = a3;
  v5 = [(FMFSchedule *)self nextStartDateFrom:v4 options:4];
  if (v5)
  {
    v6 = [(FMFSchedule *)self _endDateForStartDate:v5];
    if (v6 && [v4 compare:v6] == -1)
    {
      v7 = v6;
    }

    else
    {
      v7 = [(FMFSchedule *)self nextStartDateFrom:v4 options:0];
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
  v5 = [(FMFSchedule *)self startHour];
  v6 = [(FMFSchedule *)self startMin];
  v7 = [(FMFSchedule *)self endHour];
  v8 = [(FMFSchedule *)self endMin];
  v9 = [(FMFSchedule *)self spanDays];
  v10 = [(FMFSchedule *)self _daysOfWeek];
  v11 = [(FMFSchedule *)self timeZone];
  v12 = [v3 stringWithFormat:@"<%@ sH=%ld sM=%ld eH=%ld eM=%ld spanDays=%ld dOW=%@, tZ=%@>", v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (id)_endDateForStartDate:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = [(FMFSchedule *)self timeZone];
  [v5 setTimeZone:v6];

  [v5 setHour:{-[FMFSchedule endHour](self, "endHour")}];
  [v5 setMinute:{-[FMFSchedule endMin](self, "endMin")}];
  v7 = [(FMFSchedule *)self _gregorian];
  v8 = [v7 nextDateAfterDate:v4 matchingComponents:v5 options:1024];

  if (v8)
  {
    v9 = [(FMFSchedule *)self spanDays];
    v10 = [(FMFSchedule *)self _gregorian];
    v11 = v9 - ([v10 isDate:v8 inSameDayAsDate:v4] ^ 1);

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
        v13 = [(FMFSchedule *)self _gregorian];
        v8 = [v13 nextDateAfterDate:v8 matchingComponents:v5 options:1024];

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

  v3 = [_daysOfWeek_daysOfWeekMap allKeys];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __26__FMFSchedule__daysOfWeek__block_invoke_78;
  v6[3] = &unk_278FDDF88;
  v6[4] = self;
  v4 = [v3 fm_filter:v6];

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

- (id)nextStartDateFrom:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = [(FMFSchedule *)self _daysOfWeek];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __41__FMFSchedule_nextStartDateFrom_options___block_invoke;
  v13[3] = &unk_278FDDFB0;
  v13[4] = self;
  v14 = v6;
  v15 = a4;
  v8 = v6;
  v9 = [v7 fm_map:v13];

  if ((a4 & 4) != 0)
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

- (id)_nextStartDateOnDayOfWeek:(int64_t)a3 from:(id)a4 options:(unint64_t)a5
{
  v8 = a4;
  v9 = objc_opt_new();
  v10 = [(FMFSchedule *)self timeZone];
  [v9 setTimeZone:v10];

  [v9 setHour:{-[FMFSchedule startHour](self, "startHour")}];
  [v9 setMinute:{-[FMFSchedule startMin](self, "startMin")}];
  [v9 setWeekday:a3];
  v11 = [(FMFSchedule *)self _gregorian];
  v12 = [v11 nextDateAfterDate:v8 matchingComponents:v9 options:a5 | 0x400];

  return v12;
}

+ (id)firstDateFromDates:(id)a3 order:(int64_t)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (!v8 || [*(*(&v15 + 1) + 8 * i) compare:v8] == a4)
        {
          v12 = v11;

          v8 = v12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
    v5 = [(FMFSchedule *)self timeZone];
    [(NSCalendar *)v4 setTimeZone:v5];

    v6 = self->_gregorian;
    self->_gregorian = v4;

    gregorian = self->_gregorian;
  }

  return gregorian;
}

+ (id)_dateFromHour:(unint64_t)a3 andMinute:(unint64_t)a4
{
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  v7 = [MEMORY[0x277CBEA80] currentCalendar];
  v8 = [v7 components:62 fromDate:v6];
  [v8 setHour:a3];
  [v8 setMinute:a4];
  v9 = [v7 dateFromComponents:v8];

  return v9;
}

+ (void)_enumerateDaysOfWeekInFMFDaysOfWeek:(int64_t)a3 callback:(id)a4
{
  v12 = a4;
  v5 = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = [v5 firstWeekday];
  v7 = 0;
  v8 = ((v6 + 6) * 0x2492492492492493uLL) >> 64;
  v9 = v6 + 6 - 7 * ((v8 + ((v6 + 6 - v8) >> 1)) >> 2);
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

    if ((v11 & a3) != 0)
    {
      v12[2]();
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

+ (id)_dayStringForDayOfWeek:(int64_t)a3
{
  v4 = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = v4;
  v6 = &stru_285D7AA10;
  if (a3 <= 7)
  {
    switch(a3)
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

  else if (a3 > 31)
  {
    if (a3 == 64)
    {
      v7 = 0;
    }

    else
    {
      if (a3 != 32)
      {
        goto LABEL_18;
      }

      v7 = 1;
    }
  }

  else if (a3 == 8)
  {
    v7 = 3;
  }

  else
  {
    if (a3 != 16)
    {
      goto LABEL_18;
    }

    v7 = 2;
  }

  v8 = [v4 weekdaySymbols];
  v6 = [v8 objectAtIndexedSubscript:v7];

LABEL_18:

  return v6;
}

+ (id)_stringForDaysOfWeek:(int64_t)a3
{
  if (!a3)
  {
    v5 = &stru_285D7AA10;
    goto LABEL_39;
  }

  if (a3 == 127)
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
  v33 = a1;
  v8 = v7;
  v29 = v8;
  v30 = v39;
  v31 = v38;
  v32 = &v34;
  [a1 _enumerateDaysOfWeekInFMFDaysOfWeek:a3 callback:&v25];
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
  v2 = [(FMFSchedule *)self daysOfWeek];

  return [FMFSchedule localizedDaysOfWeekStringFor:v2];
}

+ (id)localizedTimeStringForHour:(unint64_t)a3 andMinute:(unint64_t)a4 timeStyle:(unint64_t)a5
{
  v6 = [FMFSchedule _dateFromHour:a3 andMinute:a4];
  if (v6)
  {
    v7 = [MEMORY[0x277CCA968] localizedStringFromDate:v6 dateStyle:0 timeStyle:a5];
  }

  else
  {
    v7 = &stru_285D7AA10;
  }

  return v7;
}

- (NSString)localizedStartTimeString
{
  v3 = [(FMFSchedule *)self startHour];
  v4 = [(FMFSchedule *)self startMin];

  return [FMFSchedule localizedTimeStringForHour:v3 andMinute:v4];
}

- (NSString)localizedEndTimeString
{
  v3 = [(FMFSchedule *)self endHour];
  v4 = [(FMFSchedule *)self endMin];

  return [FMFSchedule localizedTimeStringForHour:v3 andMinute:v4];
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