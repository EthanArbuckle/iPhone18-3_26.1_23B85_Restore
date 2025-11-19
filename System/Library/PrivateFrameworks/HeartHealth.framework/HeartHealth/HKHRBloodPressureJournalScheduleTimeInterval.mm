@interface HKHRBloodPressureJournalScheduleTimeInterval
- (BOOL)isEqual:(id)a3;
- (HKHRBloodPressureJournalScheduleTimeInterval)initWithCoder:(id)a3;
- (HKHRBloodPressureJournalScheduleTimeInterval)initWithDayWindowType:(int64_t)a3 scheduledTime:(id)a4;
- (id)description;
- (id)scheduleTimeString;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKHRBloodPressureJournalScheduleTimeInterval

- (HKHRBloodPressureJournalScheduleTimeInterval)initWithDayWindowType:(int64_t)a3 scheduledTime:(id)a4
{
  v6 = a4;
  v12.receiver = self;
  v12.super_class = HKHRBloodPressureJournalScheduleTimeInterval;
  v7 = [(HKHRBloodPressureJournalScheduleTimeInterval *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_dayWindowType = a3;
    v9 = [v6 copy];
    scheduledTime = v8->_scheduledTime;
    v8->_scheduledTime = v9;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if (self->_dayWindowType != v5->_dayWindowType)
      {
        goto LABEL_9;
      }

      scheduledTime = self->_scheduledTime;
      v7 = v5->_scheduledTime;
      if (scheduledTime == v7)
      {
        v8 = 1;
        goto LABEL_11;
      }

      if (v7)
      {
        v8 = [(NSDateComponents *)scheduledTime isEqual:?];
      }

      else
      {
LABEL_9:
        v8 = 0;
      }

LABEL_11:

      goto LABEL_12;
    }

    v8 = 0;
  }

LABEL_12:

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  dayWindowType = self->_dayWindowType;
  v5 = a3;
  [v5 encodeInteger:dayWindowType forKey:@"dayWindowType"];
  [v5 encodeObject:self->_scheduledTime forKey:@"scheduleTime"];
}

- (HKHRBloodPressureJournalScheduleTimeInterval)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HKHRBloodPressureJournalScheduleTimeInterval;
  v5 = [(HKHRBloodPressureJournalScheduleTimeInterval *)&v9 init];
  if (v5)
  {
    v5->_dayWindowType = [v4 decodeIntegerForKey:@"dayWindowType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"scheduleTime"];
    scheduledTime = v5->_scheduledTime;
    v5->_scheduledTime = v6;
  }

  return v5;
}

- (id)scheduleTimeString
{
  if (a1)
  {
    v1 = [a1 scheduledTime];
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%02d:%02d", objc_msgSend(v1, "hour"), objc_msgSend(v1, "minute")];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  if (self)
  {
    if (self->_dayWindowType)
    {
      v5 = @"Bedtime";
    }

    else
    {
      v5 = @"Wakeup";
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [(HKHRBloodPressureJournalScheduleTimeInterval *)self scheduleTimeString];
  v8 = [v3 stringWithFormat:@"<%@: %p, Window Type: %@, Scheduled Time: %@", v4, self, v6, v7];

  return v8;
}

@end