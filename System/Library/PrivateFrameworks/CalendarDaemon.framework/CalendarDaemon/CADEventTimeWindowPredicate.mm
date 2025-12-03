@interface CADEventTimeWindowPredicate
- (CADEventTimeWindowPredicate)initWithCoder:(id)coder;
- (CADEventTimeWindowPredicate)initWithPredicate:(id)predicate limitWithStartDate:(id)date endDate:(id)endDate mustStartInInterval:(BOOL)interval;
- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database;
- (id)predicateFormat;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CADEventTimeWindowPredicate

- (CADEventTimeWindowPredicate)initWithPredicate:(id)predicate limitWithStartDate:(id)date endDate:(id)endDate mustStartInInterval:(BOOL)interval
{
  predicateCopy = predicate;
  dateCopy = date;
  endDateCopy = endDate;
  v25.receiver = self;
  v25.super_class = CADEventTimeWindowPredicate;
  v14 = [(CADEventTimeWindowPredicate *)&v25 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_wrappedPredicate, predicate);
    if (dateCopy)
    {
      v16 = MEMORY[0x277CBEAA8];
      [dateCopy timeIntervalSinceReferenceDate];
      v18 = [v16 dateWithTimeIntervalSinceReferenceDate:floor(v17)];
    }

    else
    {
      v18 = 0;
    }

    startDate = v15->_startDate;
    v15->_startDate = v18;

    if (endDateCopy)
    {
      v20 = MEMORY[0x277CBEAA8];
      [endDateCopy timeIntervalSinceReferenceDate];
      v22 = [v20 dateWithTimeIntervalSinceReferenceDate:floor(v21)];
    }

    else
    {
      v22 = 0;
    }

    endDate = v15->_endDate;
    v15->_endDate = v22;

    v15->_mustStartInInterval = interval;
  }

  return v15;
}

- (id)predicateFormat
{
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v3 setDateStyle:1];
  [v3 setTimeStyle:1];
  v4 = MEMORY[0x277CCACA8];
  startDate = [(CADEventTimeWindowPredicate *)self startDate];
  v6 = [v3 stringFromDate:startDate];
  endDate = [(CADEventTimeWindowPredicate *)self endDate];
  v8 = [v3 stringFromDate:endDate];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[CADEventTimeWindowPredicate mustStartInInterval](self, "mustStartInInterval")}];
  v10 = [v4 stringWithFormat:@"CADEventTimeWindowPredicate start:%@ end:%@; mustStartInInterval:%@", v6, v8, v9];;

  return v10;
}

- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = [(CADPredicate *)self->_wrappedPredicate copyMatchingItemsWithDatabase:database];
  v24 = objc_opt_new();
  [(NSDate *)self->_startDate timeIntervalSinceReferenceDate];
  v6 = v5;
  [(NSDate *)self->_endDate timeIntervalSinceReferenceDate];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __61__CADEventTimeWindowPredicate_copyMatchingItemsWithDatabase___block_invoke;
  v29[3] = &unk_27851AD30;
  selfCopy = self;
  v29[4] = self;
  v29[5] = v6;
  v29[6] = v7;
  v8 = MEMORY[0x22AA4DCD0](v29);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    v22 = *v26;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        v15 = CFGetTypeID(v14);
        if (v15 == CalEventOccurrenceGetTypeID())
        {
          Event = CalEventOccurrenceGetEvent();
          CalEventOccurrenceGetDate();
          if (v8[2](v8, Event))
          {
            [v24 addObject:v14];
          }
        }

        else if (CalEntityGetType() == 2)
        {
          v17 = v9;
          v18 = CalCopyTimeZone();
          [(NSDate *)selfCopy->_startDate timeIntervalSinceReferenceDate];
          CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
          [(NSDate *)selfCopy->_endDate timeIntervalSinceReferenceDate];
          CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
          CalEventGetStartDate();
          if (((v8[2])(v8, v14) & 1) != 0 || (mustStartInInterval = selfCopy->_mustStartInInterval, CalEventOccurrencesExistForEventInDateRange()))
          {
            [v24 addObject:{v14, v22}];
          }

          CFRelease(v18);
          v9 = v17;
          v12 = v22;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v11);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v24;
}

- (CADEventTimeWindowPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CADEventTimeWindowPredicate;
  v5 = [(CADEventTimeWindowPredicate *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wrappedPredicate"];
    wrappedPredicate = v5->_wrappedPredicate;
    v5->_wrappedPredicate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v10;

    v5->_mustStartInInterval = [coderCopy decodeBoolForKey:@"mustStartInInterval"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CADEventTimeWindowPredicate;
  coderCopy = coder;
  [(CADEventTimeWindowPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_wrappedPredicate forKey:{@"wrappedPredicate", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_startDate forKey:@"startDate"];
  [coderCopy encodeObject:self->_endDate forKey:@"endDate"];
  [coderCopy encodeBool:self->_mustStartInInterval forKey:@"mustStartInInterval"];
}

@end