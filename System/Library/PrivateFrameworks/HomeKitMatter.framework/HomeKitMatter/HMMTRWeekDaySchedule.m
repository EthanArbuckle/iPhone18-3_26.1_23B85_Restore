@interface HMMTRWeekDaySchedule
+ (id)HMDaysOfTheWeekToString:(unint64_t)a3;
+ (id)dateWithHour:(unint64_t)a3 andMinute:(unint64_t)a4;
+ (void)appendDayToString:(id)a3 daysString:(id)a4;
- (BOOL)isEqual:(id)a3;
- (HMMTRWeekDaySchedule)initWithDaysMask:(id)a3 startHour:(id)a4 startMinute:(id)a5 endHour:(id)a6 endMinute:(id)a7 status:(id)a8;
- (HMMTRWeekDaySchedule)initWithMTRSchedule:(id)a3;
- (id)convertToMTRScheduleAtScheduleIndex:(int64_t)a3 forUserAtUserIndex:(int64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation HMMTRWeekDaySchedule

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v3 setDateFormat:@"hh:mm a"];
  v4 = [objc_opt_class() dateWithHour:-[NSNumber unsignedIntegerValue](self->_startHour andMinute:{"unsignedIntegerValue"), -[NSNumber unsignedIntegerValue](self->_startMinute, "unsignedIntegerValue")}];
  v5 = [v3 stringFromDate:v4];

  v6 = [objc_opt_class() dateWithHour:-[NSNumber unsignedIntegerValue](self->_endHour andMinute:{"unsignedIntegerValue"), -[NSNumber unsignedIntegerValue](self->_endMinute, "unsignedIntegerValue")}];
  v7 = [v3 stringFromDate:v6];

  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [objc_opt_class() HMDaysOfTheWeekToString:{-[NSNumber unsignedIntegerValue](self->_daysMask, "unsignedIntegerValue")}];
  v12 = [v8 stringWithFormat:@"<%@: DaysOfWeek:%@ From %@ to %@>", v10, v11, v5, v7];;

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(HMMTRWeekDaySchedule);
  v5 = [(HMMTRWeekDaySchedule *)self daysMask];
  [(HMMTRWeekDaySchedule *)v4 setDaysMask:v5];

  v6 = [(HMMTRWeekDaySchedule *)self startHour];
  [(HMMTRWeekDaySchedule *)v4 setStartHour:v6];

  v7 = [(HMMTRWeekDaySchedule *)self startMinute];
  [(HMMTRWeekDaySchedule *)v4 setStartMinute:v7];

  v8 = [(HMMTRWeekDaySchedule *)self endHour];
  [(HMMTRWeekDaySchedule *)v4 setEndHour:v8];

  v9 = [(HMMTRWeekDaySchedule *)self endMinute];
  [(HMMTRWeekDaySchedule *)v4 setEndMinute:v9];

  v10 = [(HMMTRWeekDaySchedule *)self status];
  [(HMMTRWeekDaySchedule *)v4 setStatus:v10];

  return v4;
}

- (unint64_t)hash
{
  v3 = [(HMMTRWeekDaySchedule *)self daysMask];
  v4 = [v3 hash];
  v5 = [(HMMTRWeekDaySchedule *)self startHour];
  v6 = [v5 hash] ^ v4;
  v7 = [(HMMTRWeekDaySchedule *)self startMinute];
  v8 = [v7 hash];
  v9 = [(HMMTRWeekDaySchedule *)self endHour];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(HMMTRWeekDaySchedule *)self endMinute];
  v12 = [v11 hash];

  return v10 ^ v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = [(HMMTRWeekDaySchedule *)self daysMask];
  v8 = [v6 daysMask];
  v9 = HMFEqualObjects();

  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = [(HMMTRWeekDaySchedule *)self startHour];
  v11 = [v6 startHour];
  v12 = HMFEqualObjects();

  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = [(HMMTRWeekDaySchedule *)self endHour];
  v14 = [v6 endHour];
  v15 = HMFEqualObjects();

  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = [(HMMTRWeekDaySchedule *)self endMinute];
  v17 = [v6 endMinute];
  v18 = HMFEqualObjects();

  if (v18)
  {
    v19 = [(HMMTRWeekDaySchedule *)self startMinute];
    v20 = [v6 startMinute];
    v21 = HMFEqualObjects();
  }

  else
  {
LABEL_10:
    v21 = 0;
  }

  return v21;
}

- (id)convertToMTRScheduleAtScheduleIndex:(int64_t)a3 forUserAtUserIndex:(int64_t)a4
{
  v7 = objc_alloc_init(MEMORY[0x277CD53F0]);
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v7 setWeekDayIndex:v8];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  [v7 setUserIndex:v9];

  v10 = [(HMMTRWeekDaySchedule *)self daysMask];
  [v7 setDaysMask:v10];

  v11 = [(HMMTRWeekDaySchedule *)self startHour];
  [v7 setStartHour:v11];

  v12 = [(HMMTRWeekDaySchedule *)self startMinute];
  [v7 setStartMinute:v12];

  v13 = [(HMMTRWeekDaySchedule *)self endHour];
  [v7 setEndHour:v13];

  v14 = [(HMMTRWeekDaySchedule *)self endMinute];
  [v7 setEndMinute:v14];

  return v7;
}

- (HMMTRWeekDaySchedule)initWithMTRSchedule:(id)a3
{
  v4 = a3;
  v5 = [v4 daysMask];
  v6 = [v4 startHour];
  v7 = [v4 startMinute];
  v8 = [v4 endHour];
  v9 = [v4 endMinute];
  v10 = [v4 status];

  v11 = [(HMMTRWeekDaySchedule *)self initWithDaysMask:v5 startHour:v6 startMinute:v7 endHour:v8 endMinute:v9 status:v10];
  return v11;
}

- (HMMTRWeekDaySchedule)initWithDaysMask:(id)a3 startHour:(id)a4 startMinute:(id)a5 endHour:(id)a6 endMinute:(id)a7 status:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = HMMTRWeekDaySchedule;
  v18 = [(HMMTRWeekDaySchedule *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_daysMask, a3);
    objc_storeStrong(&v19->_startHour, a4);
    objc_storeStrong(&v19->_startMinute, a5);
    objc_storeStrong(&v19->_endHour, a6);
    objc_storeStrong(&v19->_endMinute, a7);
    objc_storeStrong(&v19->_status, a8);
  }

  return v19;
}

+ (id)HMDaysOfTheWeekToString:(unint64_t)a3
{
  v3 = a3;
  v4 = [@"<" mutableCopy];
  if (v3)
  {
    [objc_opt_class() appendDayToString:@"Sun" daysString:v4];
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v3 & 2) == 0)
  {
    goto LABEL_3;
  }

  [objc_opt_class() appendDayToString:@"Mon" daysString:v4];
  if ((v3 & 4) == 0)
  {
LABEL_4:
    if ((v3 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  [objc_opt_class() appendDayToString:@"Tue" daysString:v4];
  if ((v3 & 8) == 0)
  {
LABEL_5:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  [objc_opt_class() appendDayToString:@"Wed" daysString:v4];
  if ((v3 & 0x10) == 0)
  {
LABEL_6:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  [objc_opt_class() appendDayToString:@"Thu" daysString:v4];
  if ((v3 & 0x20) == 0)
  {
LABEL_7:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  [objc_opt_class() appendDayToString:@"Fri" daysString:v4];
  if ((v3 & 0x40) != 0)
  {
LABEL_8:
    [objc_opt_class() appendDayToString:@"Sat" daysString:v4];
  }

LABEL_9:
  [v4 appendString:@">"];
  v5 = [v4 copy];

  return v5;
}

+ (void)appendDayToString:(id)a3 daysString:(id)a4
{
  v6 = a3;
  v5 = a4;
  if ([v5 length] >= 2)
  {
    [v5 appendString:{@", "}];
  }

  [v5 appendString:v6];
}

+ (id)dateWithHour:(unint64_t)a3 andMinute:(unint64_t)a4
{
  v6 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  v7 = [MEMORY[0x277CBEAA8] date];
  v8 = [v6 components:28 fromDate:v7];

  [v8 setHour:a3];
  [v8 setMinute:a4];
  [v8 setSecond:0];
  v9 = [v6 dateFromComponents:v8];

  return v9;
}

@end