@interface HMMTRWeekDaySchedule
+ (id)HMDaysOfTheWeekToString:(unint64_t)string;
+ (id)dateWithHour:(unint64_t)hour andMinute:(unint64_t)minute;
+ (void)appendDayToString:(id)string daysString:(id)daysString;
- (BOOL)isEqual:(id)equal;
- (HMMTRWeekDaySchedule)initWithDaysMask:(id)mask startHour:(id)hour startMinute:(id)minute endHour:(id)endHour endMinute:(id)endMinute status:(id)status;
- (HMMTRWeekDaySchedule)initWithMTRSchedule:(id)schedule;
- (id)convertToMTRScheduleAtScheduleIndex:(int64_t)index forUserAtUserIndex:(int64_t)userIndex;
- (id)copyWithZone:(_NSZone *)zone;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(HMMTRWeekDaySchedule);
  daysMask = [(HMMTRWeekDaySchedule *)self daysMask];
  [(HMMTRWeekDaySchedule *)v4 setDaysMask:daysMask];

  startHour = [(HMMTRWeekDaySchedule *)self startHour];
  [(HMMTRWeekDaySchedule *)v4 setStartHour:startHour];

  startMinute = [(HMMTRWeekDaySchedule *)self startMinute];
  [(HMMTRWeekDaySchedule *)v4 setStartMinute:startMinute];

  endHour = [(HMMTRWeekDaySchedule *)self endHour];
  [(HMMTRWeekDaySchedule *)v4 setEndHour:endHour];

  endMinute = [(HMMTRWeekDaySchedule *)self endMinute];
  [(HMMTRWeekDaySchedule *)v4 setEndMinute:endMinute];

  status = [(HMMTRWeekDaySchedule *)self status];
  [(HMMTRWeekDaySchedule *)v4 setStatus:status];

  return v4;
}

- (unint64_t)hash
{
  daysMask = [(HMMTRWeekDaySchedule *)self daysMask];
  v4 = [daysMask hash];
  startHour = [(HMMTRWeekDaySchedule *)self startHour];
  v6 = [startHour hash] ^ v4;
  startMinute = [(HMMTRWeekDaySchedule *)self startMinute];
  v8 = [startMinute hash];
  endHour = [(HMMTRWeekDaySchedule *)self endHour];
  v10 = v6 ^ v8 ^ [endHour hash];
  endMinute = [(HMMTRWeekDaySchedule *)self endMinute];
  v12 = [endMinute hash];

  return v10 ^ v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
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

  daysMask = [(HMMTRWeekDaySchedule *)self daysMask];
  daysMask2 = [v6 daysMask];
  v9 = HMFEqualObjects();

  if (!v9)
  {
    goto LABEL_10;
  }

  startHour = [(HMMTRWeekDaySchedule *)self startHour];
  startHour2 = [v6 startHour];
  v12 = HMFEqualObjects();

  if (!v12)
  {
    goto LABEL_10;
  }

  endHour = [(HMMTRWeekDaySchedule *)self endHour];
  endHour2 = [v6 endHour];
  v15 = HMFEqualObjects();

  if (!v15)
  {
    goto LABEL_10;
  }

  endMinute = [(HMMTRWeekDaySchedule *)self endMinute];
  endMinute2 = [v6 endMinute];
  v18 = HMFEqualObjects();

  if (v18)
  {
    startMinute = [(HMMTRWeekDaySchedule *)self startMinute];
    startMinute2 = [v6 startMinute];
    v21 = HMFEqualObjects();
  }

  else
  {
LABEL_10:
    v21 = 0;
  }

  return v21;
}

- (id)convertToMTRScheduleAtScheduleIndex:(int64_t)index forUserAtUserIndex:(int64_t)userIndex
{
  v7 = objc_alloc_init(MEMORY[0x277CD53F0]);
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:index];
  [v7 setWeekDayIndex:v8];

  v9 = [MEMORY[0x277CCABB0] numberWithInteger:userIndex];
  [v7 setUserIndex:v9];

  daysMask = [(HMMTRWeekDaySchedule *)self daysMask];
  [v7 setDaysMask:daysMask];

  startHour = [(HMMTRWeekDaySchedule *)self startHour];
  [v7 setStartHour:startHour];

  startMinute = [(HMMTRWeekDaySchedule *)self startMinute];
  [v7 setStartMinute:startMinute];

  endHour = [(HMMTRWeekDaySchedule *)self endHour];
  [v7 setEndHour:endHour];

  endMinute = [(HMMTRWeekDaySchedule *)self endMinute];
  [v7 setEndMinute:endMinute];

  return v7;
}

- (HMMTRWeekDaySchedule)initWithMTRSchedule:(id)schedule
{
  scheduleCopy = schedule;
  daysMask = [scheduleCopy daysMask];
  startHour = [scheduleCopy startHour];
  startMinute = [scheduleCopy startMinute];
  endHour = [scheduleCopy endHour];
  endMinute = [scheduleCopy endMinute];
  status = [scheduleCopy status];

  v11 = [(HMMTRWeekDaySchedule *)self initWithDaysMask:daysMask startHour:startHour startMinute:startMinute endHour:endHour endMinute:endMinute status:status];
  return v11;
}

- (HMMTRWeekDaySchedule)initWithDaysMask:(id)mask startHour:(id)hour startMinute:(id)minute endHour:(id)endHour endMinute:(id)endMinute status:(id)status
{
  maskCopy = mask;
  hourCopy = hour;
  minuteCopy = minute;
  endHourCopy = endHour;
  endMinuteCopy = endMinute;
  statusCopy = status;
  v24.receiver = self;
  v24.super_class = HMMTRWeekDaySchedule;
  v18 = [(HMMTRWeekDaySchedule *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_daysMask, mask);
    objc_storeStrong(&v19->_startHour, hour);
    objc_storeStrong(&v19->_startMinute, minute);
    objc_storeStrong(&v19->_endHour, endHour);
    objc_storeStrong(&v19->_endMinute, endMinute);
    objc_storeStrong(&v19->_status, status);
  }

  return v19;
}

+ (id)HMDaysOfTheWeekToString:(unint64_t)string
{
  stringCopy = string;
  v4 = [@"<" mutableCopy];
  if (stringCopy)
  {
    [objc_opt_class() appendDayToString:@"Sun" daysString:v4];
    if ((stringCopy & 2) == 0)
    {
LABEL_3:
      if ((stringCopy & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((stringCopy & 2) == 0)
  {
    goto LABEL_3;
  }

  [objc_opt_class() appendDayToString:@"Mon" daysString:v4];
  if ((stringCopy & 4) == 0)
  {
LABEL_4:
    if ((stringCopy & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  [objc_opt_class() appendDayToString:@"Tue" daysString:v4];
  if ((stringCopy & 8) == 0)
  {
LABEL_5:
    if ((stringCopy & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  [objc_opt_class() appendDayToString:@"Wed" daysString:v4];
  if ((stringCopy & 0x10) == 0)
  {
LABEL_6:
    if ((stringCopy & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  [objc_opt_class() appendDayToString:@"Thu" daysString:v4];
  if ((stringCopy & 0x20) == 0)
  {
LABEL_7:
    if ((stringCopy & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  [objc_opt_class() appendDayToString:@"Fri" daysString:v4];
  if ((stringCopy & 0x40) != 0)
  {
LABEL_8:
    [objc_opt_class() appendDayToString:@"Sat" daysString:v4];
  }

LABEL_9:
  [v4 appendString:@">"];
  v5 = [v4 copy];

  return v5;
}

+ (void)appendDayToString:(id)string daysString:(id)daysString
{
  stringCopy = string;
  daysStringCopy = daysString;
  if ([daysStringCopy length] >= 2)
  {
    [daysStringCopy appendString:{@", "}];
  }

  [daysStringCopy appendString:stringCopy];
}

+ (id)dateWithHour:(unint64_t)hour andMinute:(unint64_t)minute
{
  v6 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
  date = [MEMORY[0x277CBEAA8] date];
  v8 = [v6 components:28 fromDate:date];

  [v8 setHour:hour];
  [v8 setMinute:minute];
  [v8 setSecond:0];
  v9 = [v6 dateFromComponents:v8];

  return v9;
}

@end