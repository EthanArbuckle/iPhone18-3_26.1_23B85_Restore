@interface CADUpcomingEventsPredicate
- (CADUpcomingEventsPredicate)initWithCoder:(id)coder;
- (CADUpcomingEventsPredicate)initWithLimit:(int)limit;
- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database;
- (id)predicateFormat;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CADUpcomingEventsPredicate

- (CADUpcomingEventsPredicate)initWithLimit:(int)limit
{
  v5.receiver = self;
  v5.super_class = CADUpcomingEventsPredicate;
  result = [(CADUpcomingEventsPredicate *)&v5 init];
  if (result)
  {
    result->_limit = limit;
  }

  return result;
}

- (CADUpcomingEventsPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = CADUpcomingEventsPredicate;
  v5 = [(CADUpcomingEventsPredicate *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_limit = [coderCopy decodeIntForKey:@"limit"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CADUpcomingEventsPredicate;
  coderCopy = coder;
  [(CADUpcomingEventsPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt:self->_limit forKey:{@"limit", v5.receiver, v5.super_class}];
}

- (id)predicateFormat
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@(limit: %d)", v5, self->_limit];

  return v6;
}

- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = CalFilterCreateWithDatabaseShowingAll();
  if (v4)
  {
    v5 = v4;
    v6 = CalDatabaseCopyEventOccurrenceCache();
    if (v6)
    {
      v7 = v6;
      calSimulatedDateForNow = [MEMORY[0x277CBEAA8] CalSimulatedDateForNow];
      [calSimulatedDateForNow timeIntervalSinceReferenceDate];
      [(CADUpcomingEventsPredicate *)self limit];
      v9 = CalEventOccurrenceCacheCopyEventOccurrencesAfterDate();
      v10 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v11 = MEMORY[0x277CCABB0];
        v12 = v10;
        v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
        v14 = [MEMORY[0x277CCABB0] numberWithInt:{-[CADUpcomingEventsPredicate limit](self, "limit")}];
        v17 = 138412802;
        v18 = v13;
        v19 = 2112;
        v20 = calSimulatedDateForNow;
        v21 = 2112;
        v22 = v14;
        _os_log_impl(&dword_22430B000, v12, OS_LOG_TYPE_DEBUG, "Gathered [%@] upcoming event occurrences after date [%@] and up to limit [%@]", &v17, 0x20u);
      }

      CFRelease(v7);
    }

    else
    {
      v9 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v9 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v9;
}

@end