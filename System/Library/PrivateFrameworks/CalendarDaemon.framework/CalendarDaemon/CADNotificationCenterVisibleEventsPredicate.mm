@interface CADNotificationCenterVisibleEventsPredicate
+ (id)predicate;
- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database;
- (id)predicateFormat;
@end

@implementation CADNotificationCenterVisibleEventsPredicate

+ (id)predicate
{
  objc_opt_class();
  v2 = objc_opt_new();

  return v2;
}

- (id)predicateFormat
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = CalDatabaseCopyOfAllNotifiableEventsInStore();
  if ([v3 count])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v3, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * v9);
          v11 = CalEventOccurrenceCreateForInitialOccurrence();
          [v4 addObject:{v11, v14}];
          CFRelease(v11);
          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = v3;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

@end