@interface CADEventEntityWrapper
- (CADEventEntityWrapper)initWithCalEntity:(void *)entity loadedValues:(id)values occurrenceDate:(double)date;
- (CADEventEntityWrapper)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CADEventEntityWrapper

- (CADEventEntityWrapper)initWithCalEntity:(void *)entity loadedValues:(id)values occurrenceDate:(double)date
{
  v12.receiver = self;
  v12.super_class = CADEventEntityWrapper;
  v6 = [CADEntityWrapper initWithCalEntity:sel_initWithCalEntity_loadedValues_ loadedValues:?];
  v7 = v6;
  if (v6)
  {
    v6->_occurrenceDate = date;
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

- (CADEventEntityWrapper)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CADEventEntityWrapper;
  v5 = [(CADEntityWrapper *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"occurrenceDate"];
    v5->_occurrenceDate = v6;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"next"];
    nextReminderOccurrenceDate = v5->_nextReminderOccurrenceDate;
    v5->_nextReminderOccurrenceDate = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = CADEventEntityWrapper;
  [(CADEntityWrapper *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeDouble:@"occurrenceDate" forKey:self->_occurrenceDate];
  nextReminderOccurrenceDate = self->_nextReminderOccurrenceDate;
  if (nextReminderOccurrenceDate)
  {
    [coderCopy encodeObject:nextReminderOccurrenceDate forKey:@"next"];
  }
}

@end