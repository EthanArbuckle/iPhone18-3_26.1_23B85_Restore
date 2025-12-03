@interface EKScheduleAgentClientEventsPredicate
+ (id)predicateWithCalendarIDs:(id)ds;
- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database;
- (id)predicateFormat;
@end

@implementation EKScheduleAgentClientEventsPredicate

+ (id)predicateWithCalendarIDs:(id)ds
{
  dsCopy = ds;
  v5 = [[self alloc] initWithCalendars:dsCopy];

  return v5;
}

- (id)predicateFormat
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database
{
  AuxilliaryDatabaseID = CalDatabaseGetAuxilliaryDatabaseID();
  v5 = [(EKPredicate *)self calendarRowIDsForDatabaseID:AuxilliaryDatabaseID];
  v6 = v5;
  if (v5 && [v5 count])
  {
    v7 = [(EKPredicate *)self restrictedCalendarRowIDsForDatabaseID:AuxilliaryDatabaseID];
    FilterFromRowIDs = CreateFilterFromRowIDs(v6, v7);
  }

  else
  {
    FilterFromRowIDs = 0;
  }

  v9 = CalDatabaseCopyOfAllEventsWithScheduleAgentClientAndCalendarUID();
  if (!v9)
  {
    v12 = 0;
    if (!FilterFromRowIDs)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v10 = v9;
  Count = CFArrayGetCount(v9);
  v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:Count];
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      CFArrayGetValueAtIndex(v10, i);
      v14 = CalEventOccurrenceCreateForInitialOccurrence();
      if (v14)
      {
        v15 = v14;
        [v12 addObject:v14];
        CFRelease(v15);
      }
    }
  }

  CFRelease(v10);
  if (FilterFromRowIDs)
  {
LABEL_12:
    CFRelease(FilterFromRowIDs);
  }

LABEL_13:

  return v12;
}

@end