@interface CADEventsForConferenceURLPredicate
- (CADEventsForConferenceURLPredicate)initWithCoder:(id)a3;
- (CADEventsForConferenceURLPredicate)initWithURL:(id)a3 limit:(int64_t)a4;
- (id)copyMatchingItemsWithDatabase:(CalDatabase *)a3;
- (id)defaultPropertiesToLoad;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CADEventsForConferenceURLPredicate

- (CADEventsForConferenceURLPredicate)initWithURL:(id)a3 limit:(int64_t)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = CADEventsForConferenceURLPredicate;
  v7 = [(EKPredicate *)&v10 initWithCalendars:0];
  if (v7)
  {
    v8 = [v6 absoluteString];
    [(CADEventsForConferenceURLPredicate *)v7 setUrlString:v8];

    [(CADEventsForConferenceURLPredicate *)v7 setLimit:a4];
  }

  return v7;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CF77B0]);
  v9.receiver = self;
  v9.super_class = CADEventsForConferenceURLPredicate;
  v4 = [(CADEventsForConferenceURLPredicate *)&v9 description];
  v5 = [v3 initWithSuperclassDescription:v4];

  v6 = [(CADEventsForConferenceURLPredicate *)self urlString];
  [v5 setKey:@"URL" withObject:v6];

  [v5 setKey:@"limit" withInteger:{-[CADEventsForConferenceURLPredicate limit](self, "limit")}];
  v7 = [v5 build];

  return v7;
}

- (CADEventsForConferenceURLPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CADEventsForConferenceURLPredicate;
  v5 = [(EKPredicate *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"urlString"];
    [(CADEventsForConferenceURLPredicate *)v5 setUrlString:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"limit"];
    -[CADEventsForConferenceURLPredicate setLimit:](v5, "setLimit:", [v7 integerValue]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CADEventsForConferenceURLPredicate;
  v4 = a3;
  [(EKPredicate *)&v7 encodeWithCoder:v4];
  v5 = [(CADEventsForConferenceURLPredicate *)self urlString:v7.receiver];
  [v4 encodeObject:v5 forKey:@"urlString"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CADEventsForConferenceURLPredicate limit](self, "limit")}];
  [v4 encodeObject:v6 forKey:@"limit"];
}

- (id)defaultPropertiesToLoad
{
  v2 = MEMORY[0x277CBEB18];
  v3 = CADEKPersistentEventMinimumDefaultPropertiesToLoad();
  v4 = [v2 arrayWithArray:v3];

  [v4 addObject:*MEMORY[0x277CF7260]];

  return v4;
}

- (id)copyMatchingItemsWithDatabase:(CalDatabase *)a3
{
  AuxilliaryDatabaseID = CalDatabaseGetAuxilliaryDatabaseID();
  v5 = [(EKPredicate *)self calendarRowIDsForDatabaseID:AuxilliaryDatabaseID];
  v6 = [(EKPredicate *)self restrictedCalendarRowIDsForDatabaseID:AuxilliaryDatabaseID];
  FilterFromRowIDs = CreateFilterFromRowIDs(v5, v6);
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = [(CADEventsForConferenceURLPredicate *)self urlString];
  [(CADEventsForConferenceURLPredicate *)self limit];
  v10 = CalDatabaseCopyEventOccurrenceCache();
  if (v10)
  {
    v11 = v10;
    if (v9)
    {
      v12 = CalDatabaseCopyEventIDsOfEventsMatching();
      if (v12)
      {
        v13 = v12;
        CFAbsoluteTimeGetCurrent();
        v14 = CalEventOccurrenceCacheCopyEventOccurrencesWithIDsAfterDate();
        CFRelease(v13);
        if (v14)
        {
          [v8 addObjectsFromArray:v14];
          CFRelease(v14);
        }
      }
    }

    CFRelease(v11);
  }

  CFRelease(FilterFromRowIDs);

  return v8;
}

@end