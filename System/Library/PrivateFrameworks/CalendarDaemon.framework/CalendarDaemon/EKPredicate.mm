@interface EKPredicate
- (EKPredicate)initWithCalendars:(id)calendars;
- (EKPredicate)initWithCoder:(id)coder;
- (id)databasesToQuery;
- (id)predicateFormat;
- (void)createCalendarMaps;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EKPredicate

- (id)databasesToQuery
{
  [(EKPredicate *)self createCalendarMaps];
  databaseToCalendarRowIDs = self->_databaseToCalendarRowIDs;

  return databaseToCalendarRowIDs;
}

- (void)createCalendarMaps
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = self->_calendars;
  v4 = v3;
  if (!self->_databaseToCalendarRowIDs && [(NSArray *)v3 count])
  {
    selfCopy = self;
    v5 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = v4;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          v12 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "databaseID")}];
          v13 = [(NSDictionary *)v5 objectForKeyedSubscript:v12];
          if (!v13)
          {
            v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
            [(NSDictionary *)v5 setObject:v13 forKeyedSubscript:v12];
          }

          v14 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v11, "entityID")}];
          [v13 addObject:v14];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    databaseToCalendarRowIDs = selfCopy->_databaseToCalendarRowIDs;
    selfCopy->_databaseToCalendarRowIDs = v5;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (EKPredicate)initWithCalendars:(id)calendars
{
  calendarsCopy = calendars;
  v9.receiver = self;
  v9.super_class = EKPredicate;
  v5 = [(EKPredicate *)&v9 init];
  if (v5)
  {
    v6 = [calendarsCopy CalFilter:&__block_literal_global_23];
    calendars = v5->_calendars;
    v5->_calendars = v6;
  }

  return v5;
}

- (EKPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = EKPredicate;
  v5 = [(EKPredicate *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    if (initWithCoder__onceToken_0 != -1)
    {
      [EKPredicate initWithCoder:];
    }

    v6 = [coderCopy decodeObjectOfClasses:initWithCoder____whitelistedClasses_0 forKey:@"calendars"];
    calendars = v5->_calendars;
    v5->_calendars = v6;
  }

  return v5;
}

uint64_t __29__EKPredicate_initWithCoder___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = [v0 initWithObjects:{v1, v2, objc_opt_class(), 0}];
  initWithCoder____whitelistedClasses_0 = v3;

  return MEMORY[0x2821F96F8](v3);
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = EKPredicate;
  coderCopy = coder;
  [(EKPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_calendars forKey:{@"calendars", v5.receiver, v5.super_class}];
}

- (id)predicateFormat
{
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v3 setDateStyle:1];
  [v3 setTimeStyle:1];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v3 stringFromDate:self->_startDate];
  v8 = [v3 stringFromDate:self->_endDate];
  calendars = [(EKPredicate *)self calendars];
  v10 = [CADPredicate conciseCalendarList:calendars];
  v11 = [v4 stringWithFormat:@"%@ start:%@ end:%@; cals:%@", v6, v7, v8, v10];;

  return v11;
}

@end