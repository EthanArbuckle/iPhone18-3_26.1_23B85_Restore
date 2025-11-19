@interface CADUpcomingEventsPredicate
- (CADUpcomingEventsPredicate)initWithCoder:(id)a3;
- (CADUpcomingEventsPredicate)initWithLimit:(int)a3;
- (id)copyMatchingItemsWithDatabase:(CalDatabase *)a3;
- (id)predicateFormat;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CADUpcomingEventsPredicate

- (CADUpcomingEventsPredicate)initWithLimit:(int)a3
{
  v5.receiver = self;
  v5.super_class = CADUpcomingEventsPredicate;
  result = [(CADUpcomingEventsPredicate *)&v5 init];
  if (result)
  {
    result->_limit = a3;
  }

  return result;
}

- (CADUpcomingEventsPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CADUpcomingEventsPredicate;
  v5 = [(CADUpcomingEventsPredicate *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_limit = [v4 decodeIntForKey:@"limit"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CADUpcomingEventsPredicate;
  v4 = a3;
  [(CADUpcomingEventsPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeInt:self->_limit forKey:{@"limit", v5.receiver, v5.super_class}];
}

- (id)predicateFormat
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@(limit: %d)", v5, self->_limit];

  return v6;
}

- (id)copyMatchingItemsWithDatabase:(CalDatabase *)a3
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
      v8 = [MEMORY[0x277CBEAA8] CalSimulatedDateForNow];
      [v8 timeIntervalSinceReferenceDate];
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
        v20 = v8;
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