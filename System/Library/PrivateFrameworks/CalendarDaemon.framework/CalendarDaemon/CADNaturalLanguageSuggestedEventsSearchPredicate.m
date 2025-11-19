@interface CADNaturalLanguageSuggestedEventsSearchPredicate
- (BOOL)matchesIgnoringDate:(void *)a3 database:(CalDatabase *)a4;
- (CADNaturalLanguageSuggestedEventsSearchPredicate)initWithCoder:(id)a3;
- (CADNaturalLanguageSuggestedEventsSearchPredicate)initWithSearchString:(id)a3 allNLEvents:(BOOL)a4 startDate:(id)a5 timeZone:(id)a6;
- (id)copyMatchingItemsWithDatabase:(CalDatabase *)a3;
- (id)defaultPropertiesToLoad;
- (id)description;
- (id)matchingDate:(void *)a3;
- (id)matchingDatesForEvent:(void *)a3 modifiedProperties:(unint64_t)a4 dates:(id)a5 inRange:(id)a6 database:(CalDatabase *)a7 outReset:(BOOL *)a8;
- (id)predicateFormat;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CADNaturalLanguageSuggestedEventsSearchPredicate

- (CADNaturalLanguageSuggestedEventsSearchPredicate)initWithSearchString:(id)a3 allNLEvents:(BOOL)a4 startDate:(id)a5 timeZone:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = CADNaturalLanguageSuggestedEventsSearchPredicate;
  v14 = [(CADNaturalLanguageSuggestedEventsSearchPredicate *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_searchString, a3);
    v15->_allNLEvents = a4;
    objc_storeStrong(&v15->_startDate, a5);
    objc_storeStrong(&v15->super._timeZone, a6);
  }

  return v15;
}

- (CADNaturalLanguageSuggestedEventsSearchPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CADNaturalLanguageSuggestedEventsSearchPredicate;
  v5 = [(EKPredicate *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"searchString"];
    searchString = v5->_searchString;
    v5->_searchString = v6;

    v5->_allNLEvents = [v4 decodeBoolForKey:@"allNLEvents"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
    timeZone = v5->super._timeZone;
    v5->super._timeZone = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CADNaturalLanguageSuggestedEventsSearchPredicate;
  v4 = a3;
  [(EKPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_searchString forKey:{@"searchString", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_allNLEvents forKey:@"allNLEvents"];
  [v4 encodeObject:self->_startDate forKey:@"startDate"];
  [v4 encodeObject:self->super._timeZone forKey:@"timeZone"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CF77B0]);
  v8.receiver = self;
  v8.super_class = CADNaturalLanguageSuggestedEventsSearchPredicate;
  v4 = [(CADNaturalLanguageSuggestedEventsSearchPredicate *)&v8 description];
  v5 = [v3 initWithSuperclassDescription:v4];

  [v5 setKey:@"searchString" withObject:self->_searchString];
  [v5 setKey:@"allNLEvents" withBoolean:self->_allNLEvents];
  [v5 setKey:@"startDate" withObject:self->_startDate];
  v6 = [v5 build];

  return v6;
}

- (id)defaultPropertiesToLoad
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CF72B8];
  v6[0] = *MEMORY[0x277CF72B0];
  v6[1] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)predicateFormat
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)copyMatchingItemsWithDatabase:(CalDatabase *)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = self->super._timeZone;
  searchString = self->_searchString;
  if (self->_allNLEvents)
  {
    v6 = CalDatabaseCopyAllNaturalLanguageSuggestedEventsMatchingSummary();
    if ([v6 count])
    {
      v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v6, "count")}];
      [(NSDate *)self->_startDate timeIntervalSinceReferenceDate];
      v9 = v8;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v10 = v6;
      v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v23;
        do
        {
          v14 = 0;
          do
          {
            if (*v23 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v22 + 1) + 8 * v14);
            v16 = CalEventOccurrenceCreateForInitialOccurrenceWithTimeZone();
            if (!self->_startDate || (CalEventOccurrenceGetDate(), v17 + CalEventGetDuration() > v9))
            {
              [v7 addObject:{v16, v22}];
            }

            CFRelease(v16);
            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v12);
      }
    }

    else
    {
      v7 = v6;
    }
  }

  else
  {
    NaturalLanguageSuggestedEventMatchingSummary = CalDatabaseCopyFirstNaturalLanguageSuggestedEventMatchingSummary();
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    if (NaturalLanguageSuggestedEventMatchingSummary)
    {
      v19 = CalEventOccurrenceCreateForInitialOccurrenceWithTimeZone();
      [v7 addObject:v19];
      CFRelease(v19);
      CFRelease(NaturalLanguageSuggestedEventMatchingSummary);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)matchingDatesForEvent:(void *)a3 modifiedProperties:(unint64_t)a4 dates:(id)a5 inRange:(id)a6 database:(CalDatabase *)a7 outReset:(BOOL *)a8
{
  v16[1] = *MEMORY[0x277D85DE8];
  if ([(CADNaturalLanguageSuggestedEventsSearchPredicate *)self matchesIgnoringDate:a3 database:a7, a5, a6])
  {
    if (self->_allNLEvents)
    {
      v11 = [(CADNaturalLanguageSuggestedEventsSearchPredicate *)self matchingDate:a3];
      v12 = v11;
      if (v11)
      {
        v16[0] = v11;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
      *a8 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)matchesIgnoringDate:(void *)a3 database:(CalDatabase *)a4
{
  v5 = CalDatabaseCopyNaturalLanguageSuggestionsCalendar();
  if (!v5)
  {
    v10 = 0;
    goto LABEL_11;
  }

  v6 = CalCalendarItemCopyCalendar();
  if (!v6)
  {
    goto LABEL_8;
  }

  UID = CalCalendarGetUID();
  if (UID != CalCalendarGetUID())
  {
    goto LABEL_8;
  }

  if (!self->_searchString)
  {
LABEL_13:
    if (!self->_allNLEvents)
    {
      v12 = CalEventCopySuggestedEventInfo();
      if (!v12)
      {
        goto LABEL_8;
      }

      CFRelease(v12);
    }

    v10 = 1;
    goto LABEL_9;
  }

  v8 = CalCalendarItemCopySummary();
  v9 = v8;
  if (v8 && [v8 rangeOfString:self->_searchString] != 0x7FFFFFFFFFFFFFFFLL)
  {

    goto LABEL_13;
  }

LABEL_8:
  v10 = 0;
LABEL_9:

LABEL_11:
  return v10;
}

- (id)matchingDate:(void *)a3
{
  [(NSDate *)self->_startDate timeIntervalSinceReferenceDate];
  v5 = v4;
  timeZone = self->super._timeZone;
  v7 = CalEventOccurrenceCreateForInitialOccurrenceWithTimeZone();
  CalEventOccurrenceGetDate();
  v9 = v8;
  if (self->_startDate)
  {
    v10 = v8 + CalEventGetDuration();
    CFRelease(v7);
    if (v10 <= v5)
    {
      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    CFRelease(v7);
  }

  v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v9];
LABEL_6:

  return v11;
}

@end