@interface CADEventEntityWrapper
- (CADEventEntityWrapper)initWithCalEntity:(void *)a3 loadedValues:(id)a4 occurrenceDate:(double)a5;
- (CADEventEntityWrapper)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CADEventEntityWrapper

- (CADEventEntityWrapper)initWithCalEntity:(void *)a3 loadedValues:(id)a4 occurrenceDate:(double)a5
{
  v12.receiver = self;
  v12.super_class = CADEventEntityWrapper;
  v6 = [CADEntityWrapper initWithCalEntity:sel_initWithCalEntity_loadedValues_ loadedValues:?];
  v7 = v6;
  if (v6)
  {
    v6->_occurrenceDate = a5;
    CalEventNextReminderOccurrenceDateIfEventKitIsLikelyToWantIt();
    if (v8 != *MEMORY[0x277CF78F0])
    {
      v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
      nextReminderOccurrenceDate = v7->_nextReminderOccurrenceDate;
      v7->_nextReminderOccurrenceDate = v9;
    }
  }

  return v7;
}

- (CADEventEntityWrapper)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CADEventEntityWrapper;
  v5 = [(CADEntityWrapper *)&v10 initWithCoder:v4];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"occurrenceDate"];
    v5->_occurrenceDate = v6;
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"next"];
    nextReminderOccurrenceDate = v5->_nextReminderOccurrenceDate;
    v5->_nextReminderOccurrenceDate = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = CADEventEntityWrapper;
  [(CADEntityWrapper *)&v6 encodeWithCoder:v4];
  [v4 encodeDouble:@"occurrenceDate" forKey:self->_occurrenceDate];
  nextReminderOccurrenceDate = self->_nextReminderOccurrenceDate;
  if (nextReminderOccurrenceDate)
  {
    [v4 encodeObject:nextReminderOccurrenceDate forKey:@"next"];
  }
}

@end