@interface EKMasterEventsPredicate
+ (id)predicateWithCalendarIDs:(id)ds;
- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database;
- (id)predicateFormat;
@end

@implementation EKMasterEventsPredicate

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
  v6 = [(EKPredicate *)self restrictedCalendarRowIDsForDatabaseID:AuxilliaryDatabaseID];
  if ([v5 count] || objc_msgSend(v6, "count"))
  {
    FilterFromRowIDs = CreateFilterFromRowIDs(v5, v6);
  }

  else
  {
    FilterFromRowIDs = 0;
  }

  v8 = CalDatabaseCopyCalendarItemsWithCalendarFilter();
  if (!v8)
  {
    v11 = 0;
    if (!FilterFromRowIDs)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v9 = v8;
  Count = CFArrayGetCount(v8);
  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:Count];
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      CFArrayGetValueAtIndex(v9, i);
      v13 = CalEventOccurrenceCreateForInitialOccurrence();
      if (v13)
      {
        v14 = v13;
        [v11 addObject:v13];
        CFRelease(v14);
      }
    }
  }

  CFRelease(v9);
  if (FilterFromRowIDs)
  {
LABEL_11:
    CFRelease(FilterFromRowIDs);
  }

LABEL_12:

  return v11;
}

@end