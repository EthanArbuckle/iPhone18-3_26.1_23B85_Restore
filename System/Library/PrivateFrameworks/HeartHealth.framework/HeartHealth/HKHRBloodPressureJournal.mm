@interface HKHRBloodPressureJournal
+ (id)hkhr_defaultDate;
+ (id)hkhr_defaultJournal;
+ (id)hkhr_defaultTimeIntervals;
+ (id)hkhr_journalWithStartDate:(id)date timeIntervals:(id)intervals;
+ (id)hkhr_timeIntervalsWithWake:(id)wake bed:(id)bed;
- (BOOL)isEqual:(id)equal;
- (HKHRBloodPressureJournal)initWithCoder:(id)coder;
- (HKHRBloodPressureJournal)initWithUUID:(id)d startDate:(id)date endDate:(id)endDate timestamp:(double)timestamp journalType:(int64_t)type scheduleType:(int64_t)scheduleType journalState:(int64_t)state timeIntervals:(id)self0;
- (HKHRBloodPressureJournal)initWithUUID:(id)d startDate:(id)date journalType:(int64_t)type scheduleType:(int64_t)scheduleType journalState:(int64_t)state timeIntervals:(id)intervals;
- (id)bedtimeTimeInterval;
- (id)closedJournal;
- (id)conciseDescription;
- (id)description;
- (id)notificationEndDateForIncompleteJournal:(id)journal;
- (id)updatedJournalWithTimeIntervals:(id)intervals;
- (id)wakeupTimeInterval;
- (unint64_t)hash;
- (unint64_t)measurementsRequiredToCompleteJournal;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKHRBloodPressureJournal

+ (id)hkhr_defaultDate
{
  if (hkhr_defaultDate_onceToken != -1)
  {
    +[HKHRBloodPressureJournal(HKHRTestingSupport) hkhr_defaultDate];
  }

  v3 = hkhr_defaultDate_defaultDate;

  return v3;
}

uint64_t __64__HKHRBloodPressureJournal_HKHRTestingSupport__hkhr_defaultDate__block_invoke()
{
  hkhr_defaultDate_defaultDate = [MEMORY[0x277CBEAA8] hkhr_dateWithISO8601String:@"2023-12-01T10:00:00-0800"];

  return MEMORY[0x2821F96F8]();
}

+ (id)hkhr_defaultJournal
{
  v2 = +[HKHRBloodPressureJournal hkhr_defaultDate];
  v3 = +[HKHRBloodPressureJournal hkhr_defaultTimeIntervals];
  v4 = [HKHRBloodPressureJournal hkhr_journalWithStartDate:v2 timeIntervals:v3];

  return v4;
}

+ (id)hkhr_journalWithStartDate:(id)date timeIntervals:(id)intervals
{
  intervalsCopy = intervals;
  dateCopy = date;
  v7 = [HKHRBloodPressureJournal alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v9 = [(HKHRBloodPressureJournal *)v7 initWithUUID:uUID startDate:dateCopy journalType:0 scheduleType:0 journalState:0 timeIntervals:intervalsCopy];

  return v9;
}

+ (id)hkhr_defaultTimeIntervals
{
  v15[2] = *MEMORY[0x277D85DE8];
  v2 = [@"8:00" componentsSeparatedByString:@":"];
  v3 = [@"22:00" componentsSeparatedByString:@":"];
  if ([v2 count] != 2)
  {
    +[HKHRBloodPressureJournal(HKHRTestingSupport) hkhr_defaultTimeIntervals];
  }

  if ([v3 count] != 2)
  {
    +[HKHRBloodPressureJournal(HKHRTestingSupport) hkhr_defaultTimeIntervals];
  }

  v4 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v5 = [v2 objectAtIndexedSubscript:0];
  [v4 setHour:{objc_msgSend(v5, "integerValue")}];

  v6 = [v2 objectAtIndexedSubscript:1];
  [v4 setMinute:{objc_msgSend(v6, "integerValue")}];

  [v4 setSecond:0];
  v7 = [[HKHRBloodPressureJournalScheduleTimeInterval alloc] initWithDayWindowType:0 scheduledTime:v4];
  v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v9 = [v3 objectAtIndexedSubscript:0];
  [v8 setHour:{objc_msgSend(v9, "integerValue")}];

  v10 = [v3 objectAtIndexedSubscript:1];
  [v8 setMinute:{objc_msgSend(v10, "integerValue")}];

  [v8 setSecond:0];
  v11 = [[HKHRBloodPressureJournalScheduleTimeInterval alloc] initWithDayWindowType:1 scheduledTime:v8];
  v15[0] = v7;
  v15[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)hkhr_timeIntervalsWithWake:(id)wake bed:(id)bed
{
  v19[2] = *MEMORY[0x277D85DE8];
  bedCopy = bed;
  v6 = [wake componentsSeparatedByString:@":"];
  v7 = [bedCopy componentsSeparatedByString:@":"];

  if ([v6 count] != 2)
  {
    +[HKHRBloodPressureJournal(HKHRTestingSupport) hkhr_timeIntervalsWithWake:bed:];
  }

  if ([v7 count] != 2)
  {
    +[HKHRBloodPressureJournal(HKHRTestingSupport) hkhr_timeIntervalsWithWake:bed:];
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v9 = [v6 objectAtIndexedSubscript:0];
  [v8 setHour:{objc_msgSend(v9, "integerValue")}];

  v10 = [v6 objectAtIndexedSubscript:1];
  [v8 setMinute:{objc_msgSend(v10, "integerValue")}];

  [v8 setSecond:0];
  v11 = [[HKHRBloodPressureJournalScheduleTimeInterval alloc] initWithDayWindowType:0 scheduledTime:v8];
  v12 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  v13 = [v7 objectAtIndexedSubscript:0];
  [v12 setHour:{objc_msgSend(v13, "integerValue")}];

  v14 = [v7 objectAtIndexedSubscript:1];
  [v12 setMinute:{objc_msgSend(v14, "integerValue")}];

  [v12 setSecond:0];
  v15 = [[HKHRBloodPressureJournalScheduleTimeInterval alloc] initWithDayWindowType:1 scheduledTime:v12];
  v19[0] = v11;
  v19[1] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (HKHRBloodPressureJournal)initWithUUID:(id)d startDate:(id)date journalType:(int64_t)type scheduleType:(int64_t)scheduleType journalState:(int64_t)state timeIntervals:(id)intervals
{
  intervalsCopy = intervals;
  dateCopy = date;
  dCopy = d;
  v17 = [(HKHRBloodPressureJournal *)self initWithUUID:dCopy startDate:dateCopy endDate:0 timestamp:type journalType:scheduleType scheduleType:state journalState:CFAbsoluteTimeGetCurrent() timeIntervals:intervalsCopy];

  return v17;
}

- (HKHRBloodPressureJournal)initWithUUID:(id)d startDate:(id)date endDate:(id)endDate timestamp:(double)timestamp journalType:(int64_t)type scheduleType:(int64_t)scheduleType journalState:(int64_t)state timeIntervals:(id)self0
{
  dCopy = d;
  dateCopy = date;
  endDateCopy = endDate;
  intervalsCopy = intervals;
  v31.receiver = self;
  v31.super_class = HKHRBloodPressureJournal;
  v21 = [(HKHRBloodPressureJournal *)&v31 init];
  if (v21)
  {
    v22 = [dCopy copy];
    UUID = v21->_UUID;
    v21->_UUID = v22;

    v24 = [dateCopy copy];
    startDate = v21->_startDate;
    v21->_startDate = v24;

    v26 = [endDateCopy copy];
    endDate = v21->_endDate;
    v21->_endDate = v26;

    v21->_timestamp = timestamp;
    v21->_journalType = type;
    v21->_scheduleType = scheduleType;
    v21->_journalState = state;
    v28 = [intervalsCopy copy];
    timeIntervals = v21->_timeIntervals;
    v21->_timeIntervals = v28;
  }

  return v21;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      UUID = self->_UUID;
      v7 = v5->_UUID;
      if (UUID != v7 && (!v7 || ![(NSUUID *)UUID isEqual:?]))
      {
        goto LABEL_21;
      }

      startDate = self->_startDate;
      v9 = v5->_startDate;
      if (startDate != v9 && (!v9 || ![(NSDate *)startDate isEqual:?]))
      {
        goto LABEL_21;
      }

      endDate = self->_endDate;
      v11 = v5->_endDate;
      if (endDate != v11 && (!v11 || ![(NSDate *)endDate isEqual:?]))
      {
        goto LABEL_21;
      }

      if (self->_journalType != v5->_journalType || self->_scheduleType != v5->_scheduleType || self->_journalState != v5->_journalState || self->_timestamp != v5->_timestamp)
      {
        goto LABEL_21;
      }

      timeIntervals = self->_timeIntervals;
      v13 = v5->_timeIntervals;
      if (timeIntervals == v13)
      {
        v14 = 1;
        goto LABEL_22;
      }

      if (v13)
      {
        v14 = [(NSArray *)timeIntervals isEqual:?];
      }

      else
      {
LABEL_21:
        v14 = 0;
      }

LABEL_22:

      goto LABEL_23;
    }

    v14 = 0;
  }

LABEL_23:

  return v14;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:self->_timestamp];
  v4 = [(NSUUID *)self->_UUID hash];
  v5 = [(NSDate *)self->_startDate hash]^ v4;
  v6 = [(NSDate *)self->_endDate hash];
  v7 = v5 ^ v6 ^ [(NSArray *)self->_timeIntervals hash];
  v8 = v7 ^ [v3 hash];
  v9 = self->_journalType ^ self->_scheduleType ^ self->_journalState;

  return v8 ^ v9;
}

- (void)encodeWithCoder:(id)coder
{
  UUID = self->_UUID;
  coderCopy = coder;
  [coderCopy encodeObject:UUID forKey:@"uuid"];
  [coderCopy encodeObject:self->_startDate forKey:@"startDateTime"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDateTime"];
  [coderCopy encodeDouble:@"timestamp" forKey:self->_timestamp];
  [coderCopy encodeInteger:self->_journalType forKey:@"JournalType"];
  [coderCopy encodeInteger:self->_scheduleType forKey:@"scheduleType"];
  [coderCopy encodeInteger:self->_journalState forKey:@"journalState"];
  [coderCopy encodeObject:self->_timeIntervals forKey:@"timeIntervals"];
}

- (HKHRBloodPressureJournal)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = HKHRBloodPressureJournal;
  v5 = [(HKHRBloodPressureJournal *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDateTime"];
    startDate = v5->_startDate;
    v5->_startDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDateTime"];
    endDate = v5->_endDate;
    v5->_endDate = v10;

    [coderCopy decodeDoubleForKey:@"timestamp"];
    v5->_timestamp = v12;
    v5->_journalType = [coderCopy decodeIntegerForKey:@"JournalType"];
    v5->_scheduleType = [coderCopy decodeIntegerForKey:@"scheduleType"];
    v5->_journalState = [coderCopy decodeIntegerForKey:@"journalState"];
    v13 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"timeIntervals"];
    timeIntervals = v5->_timeIntervals;
    v5->_timeIntervals = v14;
  }

  return v5;
}

- (id)closedJournal
{
  if ([(HKHRBloodPressureJournal *)self journalState]== 1)
  {
    selfCopy = self;
  }

  else
  {
    v4 = [HKHRBloodPressureJournal alloc];
    uUID = [(HKHRBloodPressureJournal *)self UUID];
    startDate = [(HKHRBloodPressureJournal *)self startDate];
    date = [MEMORY[0x277CBEAA8] date];
    Current = CFAbsoluteTimeGetCurrent();
    journalType = [(HKHRBloodPressureJournal *)self journalType];
    scheduleType = [(HKHRBloodPressureJournal *)self scheduleType];
    timeIntervals = [(HKHRBloodPressureJournal *)self timeIntervals];
    selfCopy = [(HKHRBloodPressureJournal *)v4 initWithUUID:uUID startDate:startDate endDate:date timestamp:journalType journalType:scheduleType scheduleType:1 journalState:Current timeIntervals:timeIntervals];
  }

  return selfCopy;
}

- (id)updatedJournalWithTimeIntervals:(id)intervals
{
  intervalsCopy = intervals;
  timeIntervals = [(HKHRBloodPressureJournal *)self timeIntervals];
  v6 = [timeIntervals isEqualToArray:intervalsCopy];

  if (v6)
  {
    selfCopy = self;
  }

  else
  {
    v8 = [HKHRBloodPressureJournal alloc];
    uUID = [(HKHRBloodPressureJournal *)self UUID];
    startDate = [(HKHRBloodPressureJournal *)self startDate];
    endDate = [(HKHRBloodPressureJournal *)self endDate];
    selfCopy = [(HKHRBloodPressureJournal *)v8 initWithUUID:uUID startDate:startDate endDate:endDate timestamp:[(HKHRBloodPressureJournal *)self journalType] journalType:[(HKHRBloodPressureJournal *)self scheduleType] scheduleType:[(HKHRBloodPressureJournal *)self journalState] journalState:CFAbsoluteTimeGetCurrent() timeIntervals:intervalsCopy];
  }

  return selfCopy;
}

- (unint64_t)measurementsRequiredToCompleteJournal
{
  if ([(HKHRBloodPressureJournal *)self journalType]== 1)
  {
    return 28;
  }

  else
  {
    return 7;
  }
}

- (id)notificationEndDateForIncompleteJournal:(id)journal
{
  startDate = self->_startDate;
  journalCopy = journal;
  v6 = [journalCopy startOfDayForDate:startDate];
  if (self->_journalType == 1)
  {
    v7 = 28;
  }

  else
  {
    v7 = 180;
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v8 setDay:v7];
  v9 = [journalCopy dateByAddingComponents:v8 toDate:v6 options:2];

  return v9;
}

- (id)wakeupTimeInterval
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  timeIntervals = [(HKHRBloodPressureJournal *)self timeIntervals];
  v3 = [timeIntervals countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(timeIntervals);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if (![v6 dayWindowType])
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [timeIntervals countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)bedtimeTimeInterval
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  timeIntervals = [(HKHRBloodPressureJournal *)self timeIntervals];
  v3 = [timeIntervals countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(timeIntervals);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 dayWindowType] == 1)
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [timeIntervals countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)conciseDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  uUID = [(HKHRBloodPressureJournal *)self UUID];
  [(HKHRBloodPressureJournal *)self timestamp];
  v7 = [v3 stringWithFormat:@"<%@: %p %@-%f>", v4, self, uUID, v6];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  uUID = [(HKHRBloodPressureJournal *)self UUID];
  [(HKHRBloodPressureJournal *)self timestamp];
  v7 = v6;
  startDate = [(HKHRBloodPressureJournal *)self startDate];
  endDate = [(HKHRBloodPressureJournal *)self endDate];
  if (self)
  {
    if (self->_journalType)
    {
      v10 = @"Monitor Hypertension";
    }

    else
    {
      v10 = @"Learn Hypertension Risk";
    }

    v11 = v10;
    if (self->_scheduleType == 1)
    {
      v12 = @"Typical Day";
    }

    else
    {
      v12 = @"User Defined";
    }

    v13 = v12;
    if (self->_journalState)
    {
      v14 = @"Closed";
    }

    else
    {
      v14 = @"Active";
    }
  }

  else
  {
    v13 = 0;
    v11 = 0;
    v14 = 0;
  }

  v15 = v14;
  timeIntervals = [(HKHRBloodPressureJournal *)self timeIntervals];
  v17 = [v3 stringWithFormat:@"<%@: %p, UUID: %@, timestamp:%f, startDate: %@, endDate: %@, journalType: %@, scheduleType: %@, journalState: %@, timeIntervals: %@", v4, self, uUID, v7, startDate, endDate, v11, v13, v15, timeIntervals];

  return v17;
}

@end