@interface CADTravelEventsPredicate
- (BOOL)isEqual:(id)equal;
- (CADTravelEventsPredicate)initWithCalendarIDs:(id)ds startDate:(id)date endDate:(id)endDate;
- (CADTravelEventsPredicate)initWithCoder:(id)coder;
- (id)_fetchTravelEventsWithDatabase:(CalDatabase *)database;
- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database;
- (id)predicateFormat;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CADTravelEventsPredicate

- (CADTravelEventsPredicate)initWithCalendarIDs:(id)ds startDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v16.receiver = self;
  v16.super_class = CADTravelEventsPredicate;
  v10 = [(EKPredicate *)&v16 initWithCalendars:ds];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_5;
  }

  if (dateCopy && endDateCopy)
  {
    [(EKPredicate *)v10 setStartDate:dateCopy];
    [(EKPredicate *)v11 setEndDate:endDateCopy];
LABEL_5:
    v12 = v11;
    goto LABEL_9;
  }

  v13 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
  {
    *v15 = 0;
    _os_log_impl(&dword_22430B000, v13, OS_LOG_TYPE_ERROR, "CADTravelEventsPredicate must be given non-nil 'startDate' and 'endDate'", v15, 2u);
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (CADTravelEventsPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CADTravelEventsPredicate;
  v5 = [(EKPredicate *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    [(EKPredicate *)v5 setStartDate:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    [(EKPredicate *)v5 setEndDate:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CADTravelEventsPredicate;
  coderCopy = coder;
  [(EKPredicate *)&v7 encodeWithCoder:coderCopy];
  v5 = [(EKPredicate *)self startDate:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"startDate"];

  endDate = [(EKPredicate *)self endDate];
  [coderCopy encodeObject:endDate forKey:@"endDate"];
}

- (id)predicateFormat
{
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v3 setDateStyle:1];
  [v3 setTimeStyle:1];
  v4 = MEMORY[0x277CCACA8];
  startDate = [(EKPredicate *)self startDate];
  v6 = [v3 stringFromDate:startDate];
  endDate = [(EKPredicate *)self endDate];
  v8 = [v3 stringFromDate:endDate];
  calendars = [(EKPredicate *)self calendars];
  v10 = [CADPredicate conciseCalendarList:calendars];
  v11 = [v4 stringWithFormat:@"CADTravelEventsPredicate start:%@ end:%@; cals:%@", v6, v8, v10];;

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      startDate = [(EKPredicate *)equalCopy startDate];
      startDate2 = [(EKPredicate *)self startDate];
      if ([startDate isEqual:startDate2])
      {
        endDate = [(EKPredicate *)equalCopy endDate];
        endDate2 = [(EKPredicate *)self endDate];
        if ([endDate isEqual:endDate2])
        {
          calendars = [(EKPredicate *)equalCopy calendars];
          calendars2 = [(EKPredicate *)self calendars];
          if (calendars == calendars2)
          {
            v6 = 1;
          }

          else
          {
            calendars3 = [(EKPredicate *)equalCopy calendars];
            calendars4 = [(EKPredicate *)self calendars];
            v6 = [calendars3 isEqual:calendars4];
          }
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database
{
  v12 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CF74E0] = [MEMORY[0x277CF74E0] shared];
  get_enableTravelAdvisoriesForAutomaticBehavior = [mEMORY[0x277CF74E0] get_enableTravelAdvisoriesForAutomaticBehavior];

  if (get_enableTravelAdvisoriesForAutomaticBehavior)
  {
    result = [(CADTravelEventsPredicate *)self _fetchTravelEventsWithDatabase:database];
  }

  else
  {
    v8 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v10 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_22430B000, v8, OS_LOG_TYPE_DEBUG, "Will not perform travel event search because travel advisories are not enabled globally.  Predicate: [%@]", &v10, 0xCu);
    }

    result = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)_fetchTravelEventsWithDatabase:(CalDatabase *)database
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = CalDatabaseCopyEventOccurrenceCache();
  AuxilliaryDatabaseID = CalDatabaseGetAuxilliaryDatabaseID();
  v6 = [(EKPredicate *)self calendarRowIDsForDatabaseID:AuxilliaryDatabaseID];
  v7 = [(EKPredicate *)self restrictedCalendarRowIDsForDatabaseID:AuxilliaryDatabaseID];
  FilterFromRowIDs = CreateFilterFromRowIDs(v6, v7);
  v9 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v10 = v9;
    startDate = [(EKPredicate *)self startDate];
    endDate = [(EKPredicate *)self endDate];
    *buf = 138413058;
    selfCopy = startDate;
    v45 = 2112;
    v46 = endDate;
    v47 = 2112;
    v48 = v6;
    v49 = 2112;
    v50 = v7;
    _os_log_impl(&dword_22430B000, v10, OS_LOG_TYPE_DEBUG, "Commencing travel event search with start date: [%@] end date: [%@] calendar object IDs: [%@] restricted calendar row IDs: [%@]", buf, 0x2Au);
  }

  startDate2 = [(EKPredicate *)self startDate];
  endDate2 = [(EKPredicate *)self endDate];
  defaultTimeZone = [MEMORY[0x277CBEBB0] defaultTimeZone];
  v16 = CalEventOccurrenceCacheCopyEventOccurrencesInDateRange();

  if (v16)
  {
    v38 = FilterFromRowIDs;
    v39 = v7;
    v40 = v6;
    v41 = v4;
    Count = CFArrayGetCount(v16);
    v18 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      selfCopy = Count;
      _os_log_impl(&dword_22430B000, v18, OS_LOG_TYPE_DEBUG, "Found [%ld] travel event candidates.", buf, 0xCu);
    }

    v42 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:Count];
    if (Count >= 1)
    {
      for (i = 0; Count != i; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v16, i);
        CalEventOccurrenceGetEvent();
        if (CalEventIsCandidateForTravelAdvisories())
        {
          [v42 addObject:ValueAtIndex];
          v21 = CADLogHandle;
          if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
          {
            v22 = MEMORY[0x277CBEAA8];
            v23 = v21;
            CalEventOccurrenceGetDate();
            v24 = [v22 dateWithTimeIntervalSinceReferenceDate:?];
            v25 = CalCalendarItemCopySummary();
            v26 = MEMORY[0x277CBEAA8];
            v27 = v25;
            CalEventOccurrenceGetDate();
            [v26 dateWithTimeIntervalSinceReferenceDate:?];
            v28 = CalEventCopyURI();
            *buf = 138412802;
            selfCopy = v24;
            v45 = 2112;
            v46 = v25;
            v47 = 2112;
            v48 = v28;
            _os_log_impl(&dword_22430B000, v23, OS_LOG_TYPE_DEBUG, "Accepted travel event candidate.  Start date: [%@] title: [%@] URI: [%@]", buf, 0x20u);

LABEL_13:
          }
        }

        else
        {
          v29 = CADLogHandle;
          if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
          {
            v30 = MEMORY[0x277CBEAA8];
            v23 = v29;
            CalEventOccurrenceGetDate();
            v24 = [v30 dateWithTimeIntervalSinceReferenceDate:?];
            v31 = CalCalendarItemCopySummary();
            v32 = MEMORY[0x277CBEAA8];
            v33 = v31;
            CalEventOccurrenceGetDate();
            [v32 dateWithTimeIntervalSinceReferenceDate:?];
            v34 = CalEventCopyURI();
            *buf = 138412802;
            selfCopy = v24;
            v45 = 2112;
            v46 = v31;
            v47 = 2112;
            v48 = v34;
            _os_log_impl(&dword_22430B000, v23, OS_LOG_TYPE_DEBUG, "Rejected travel event candidate.  Start date: [%@] title: [%@] URI: [%@]", buf, 0x20u);

            goto LABEL_13;
          }
        }
      }
    }

    CFRelease(v16);
    v6 = v40;
    v4 = v41;
    FilterFromRowIDs = v38;
    v7 = v39;
    if (v38)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v37 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_22430B000, v37, OS_LOG_TYPE_DEBUG, "NULL occurrences array returned for [%@].", buf, 0xCu);
    }

    v42 = 0;
    if (FilterFromRowIDs)
    {
LABEL_16:
      CFRelease(FilterFromRowIDs);
    }
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v35 = *MEMORY[0x277D85DE8];

  return v42;
}

@end