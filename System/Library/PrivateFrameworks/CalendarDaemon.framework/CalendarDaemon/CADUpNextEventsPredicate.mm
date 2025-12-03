@interface CADUpNextEventsPredicate
+ (BOOL)_occurrencePassesFilter:(CalEventOccurrence *)filter event:(void *)event;
+ (id)_descriptionForOccurrence:(CalEventOccurrence *)occurrence ofEvent:(void *)event;
- (BOOL)isEqual:(id)equal;
- (CADUpNextEventsPredicate)initWithCalendarIDs:(id)ds startDate:(id)date endDate:(id)endDate;
- (CADUpNextEventsPredicate)initWithCoder:(id)coder;
- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database;
- (id)predicateFormat;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CADUpNextEventsPredicate

- (CADUpNextEventsPredicate)initWithCalendarIDs:(id)ds startDate:(id)date endDate:(id)endDate
{
  v30 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  v23.receiver = self;
  v23.super_class = CADUpNextEventsPredicate;
  v10 = [(EKPredicate *)&v23 initWithCalendars:ds];
  if (!v10)
  {
    goto LABEL_12;
  }

  if (dateCopy && endDateCopy)
  {
    if ([dateCopy CalIsAfterDate:endDateCopy])
    {
      v11 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
      {
        v12 = v11;
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138412802;
        v25 = v14;
        v26 = 2112;
        v27 = dateCopy;
        v28 = 2112;
        v29 = endDateCopy;
        v15 = "[%@] must be given a 'startDate' that occurs before the given 'endDate.'  startDate: [%@] endDate: [%@]";
        v16 = v12;
        v17 = 32;
LABEL_9:
        _os_log_impl(&dword_22430B000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);

        goto LABEL_10;
      }

      goto LABEL_10;
    }

    [(EKPredicate *)v10 setStartDate:dateCopy];
    [(EKPredicate *)v10 setEndDate:endDateCopy];
LABEL_12:
    v20 = v10;
    goto LABEL_13;
  }

  v18 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
  {
    v12 = v18;
    v19 = objc_opt_class();
    v14 = NSStringFromClass(v19);
    *buf = 138412290;
    v25 = v14;
    v15 = "[%@] must be given non-nil 'startDate' and 'endDate'";
    v16 = v12;
    v17 = 12;
    goto LABEL_9;
  }

LABEL_10:
  v20 = 0;
LABEL_13:

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (CADUpNextEventsPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CADUpNextEventsPredicate;
  v5 = [(EKPredicate *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    [(EKPredicate *)v5 setStartDate:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    [(EKPredicate *)v5 setEndDate:v7];

    [coderCopy decodeDoubleForKey:@"startDateRestrictionThreshold"];
    [(CADUpNextEventsPredicate *)v5 setStartDateRestrictionThreshold:?];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CADUpNextEventsPredicate;
  coderCopy = coder;
  [(EKPredicate *)&v7 encodeWithCoder:coderCopy];
  v5 = [(EKPredicate *)self startDate:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"startDate"];

  endDate = [(EKPredicate *)self endDate];
  [coderCopy encodeObject:endDate forKey:@"endDate"];

  [(CADUpNextEventsPredicate *)self startDateRestrictionThreshold];
  [coderCopy encodeDouble:@"startDateRestrictionThreshold" forKey:?];
}

- (id)predicateFormat
{
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v3 setDateStyle:1];
  [v3 setTimeStyle:1];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  startDate = [(EKPredicate *)self startDate];
  v8 = [v3 stringFromDate:startDate];
  endDate = [(EKPredicate *)self endDate];
  v10 = [v3 stringFromDate:endDate];
  calendars = [(EKPredicate *)self calendars];
  v12 = [CADPredicate conciseCalendarList:calendars];
  v13 = [v4 stringWithFormat:@"[%@] start:%@ end:%@; cals:%@", v6, v8, v10, v12];;

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v17 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && ([(CADUpNextEventsPredicate *)equalCopy startDateRestrictionThreshold], v7 = v6, [(CADUpNextEventsPredicate *)self startDateRestrictionThreshold], vabdd_f64(v7, v8) < 2.22044605e-16))
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
            v17 = 1;
          }

          else
          {
            calendars3 = [(EKPredicate *)equalCopy calendars];
            calendars4 = [(EKPredicate *)self calendars];
            v17 = [calendars3 isEqual:calendars4];
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  return v17;
}

- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database
{
  v72 = *MEMORY[0x277D85DE8];
  startDate = [(EKPredicate *)self startDate];
  endDate = [(EKPredicate *)self endDate];
  v6 = [startDate CalIsAfterDate:endDate];

  if (v6)
  {
    v7 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      v8 = v7;
      startDate2 = [(EKPredicate *)self startDate];
      endDate2 = [(EKPredicate *)self endDate];
      *buf = 138412802;
      selfCopy2 = startDate2;
      v64 = 2112;
      v65 = endDate2;
      v66 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_22430B000, v8, OS_LOG_TYPE_ERROR, "Start date [%@] is after end date [%@].  Will not query for events for [%@]", buf, 0x20u);
    }

    v11 = MEMORY[0x277CBEBF8];
    goto LABEL_44;
  }

  v12 = CalDatabaseCopyEventOccurrenceCache();
  AuxilliaryDatabaseID = CalDatabaseGetAuxilliaryDatabaseID();
  v14 = [(EKPredicate *)self calendarRowIDsForDatabaseID:AuxilliaryDatabaseID];
  v15 = [(EKPredicate *)self restrictedCalendarRowIDsForDatabaseID:AuxilliaryDatabaseID];
  FilterFromRowIDs = CreateFilterFromRowIDs(v14, v15);
  v17 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v18 = v17;
    startDate3 = [(EKPredicate *)self startDate];
    endDate3 = [(EKPredicate *)self endDate];
    v21 = MEMORY[0x277CCABB0];
    [(CADUpNextEventsPredicate *)self startDateRestrictionThreshold];
    v22 = [v21 numberWithDouble:?];
    *buf = 138413314;
    selfCopy2 = startDate3;
    v64 = 2112;
    v65 = endDate3;
    v66 = 2112;
    selfCopy = v14;
    v68 = 2112;
    v69 = v15;
    v70 = 2112;
    v71 = v22;
    _os_log_impl(&dword_22430B000, v18, OS_LOG_TYPE_DEBUG, "Commencing up next event search with start date: [%@] end date: [%@] calendar object IDs: [%@] restricted calendar row IDs: [%@] startDateRestrictionThreshold: [%@]", buf, 0x34u);
  }

  startDate4 = [(EKPredicate *)self startDate];
  endDate4 = [(EKPredicate *)self endDate];
  defaultTimeZone = [MEMORY[0x277CBEBB0] defaultTimeZone];
  v26 = CalEventOccurrenceCacheCopyEventOccurrencesInDateRange();

  v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = v27;
  if (!v26)
  {
    v49 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_22430B000, v49, OS_LOG_TYPE_DEBUG, "NULL occurrences array returned for [%@].", buf, 0xCu);
    }

    goto LABEL_39;
  }

  v60 = v27;
  v57 = v15;
  Count = CFArrayGetCount(v26);
  v29 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    selfCopy2 = Count;
    _os_log_impl(&dword_22430B000, v29, OS_LOG_TYPE_DEBUG, "Found [%ld] up next event candidates.  Proceeding to sort and filter.", buf, 0xCu);
  }

  cf = v26;
  v56 = FilterFromRowIDs;
  v58 = v14;
  v59 = v12;
  v30 = [(__CFArray *)v26 sortedArrayUsingComparator:&__block_literal_global_4];
  calSimulatedDateForNow = [MEMORY[0x277CBEAA8] CalSimulatedDateForNow];
  if (Count < 1)
  {
    v32 = 0;
    goto LABEL_38;
  }

  v61 = Count;
  v32 = 0;
  v33 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v30, v33);
    Event = CalEventOccurrenceGetEvent();
    v36 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v37 = v36;
      v38 = [objc_opt_class() _descriptionForOccurrence:ValueAtIndex ofEvent:Event];
      *buf = 138412290;
      selfCopy2 = v38;
      _os_log_impl(&dword_22430B000, v37, OS_LOG_TYPE_DEBUG, "Analyzing 'up next' candidate: [%@]", buf, 0xCu);
    }

    CalEventOccurrenceGetDate();
    v39 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
    v40 = [v39 dateByAddingTimeInterval:CalEventGetDuration()];
    if (![v40 CalIsBeforeDate:calSimulatedDateForNow])
    {
      break;
    }

    v41 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v42 = v41;
      v43 = [objc_opt_class() _descriptionForOccurrence:ValueAtIndex ofEvent:Event];
      *buf = 138412802;
      selfCopy2 = calSimulatedDateForNow;
      v64 = 2112;
      v65 = v40;
      v66 = 2112;
      selfCopy = v43;
      v44 = v42;
      v45 = "Rejected 'up next' candidate because it ended before 'now' at [%@].  End date: [%@].  Candidate: [%@]";
      v46 = 32;
LABEL_29:
      _os_log_impl(&dword_22430B000, v44, OS_LOG_TYPE_DEBUG, v45, buf, v46);
    }

LABEL_30:

    if (v61 == ++v33)
    {
      goto LABEL_38;
    }
  }

  if (!v32 || ([(CADUpNextEventsPredicate *)v32 isEqualToDate:v39]& 1) != 0)
  {
    if ([objc_opt_class() _occurrencePassesFilter:ValueAtIndex event:Event])
    {
      [v60 addObject:ValueAtIndex];
      if (!v32)
      {
        if ([v39 CalIsAfterOrSameAsDate:calSimulatedDateForNow])
        {
          v32 = v39;
        }

        else
        {
          v32 = 0;
        }
      }

      v48 = CADLogHandle;
      if (!os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_30;
      }

      v42 = v48;
      v43 = [objc_opt_class() _descriptionForOccurrence:ValueAtIndex ofEvent:Event];
      *buf = 138412290;
      selfCopy2 = v43;
      v44 = v42;
      v45 = "Accepted 'up next' candidate: [%@]";
    }

    else
    {
      v47 = CADLogHandle;
      if (!os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_30;
      }

      v42 = v47;
      v43 = [objc_opt_class() _descriptionForOccurrence:ValueAtIndex ofEvent:Event];
      *buf = 138412290;
      selfCopy2 = v43;
      v44 = v42;
      v45 = "Rejected 'up next' candidate because it didn't pass the filter.  Candidate: [%@]";
    }

    v46 = 12;
    goto LABEL_29;
  }

  v50 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v51 = v50;
    v52 = [objc_opt_class() _descriptionForOccurrence:ValueAtIndex ofEvent:Event];
    *buf = 138412546;
    selfCopy2 = v32;
    v64 = 2112;
    v65 = v52;
    _os_log_impl(&dword_22430B000, v51, OS_LOG_TYPE_DEBUG, "Rejected 'up next' candidate because its start date is not equal to the earliest start date on or after now.  Earliest date: [%@]  Candidate: [%@]", buf, 0x16u);
  }

LABEL_38:
  CFRelease(cf);

  v14 = v58;
  v12 = v59;
  FilterFromRowIDs = v56;
  v15 = v57;
  v11 = v60;
LABEL_39:
  if (FilterFromRowIDs)
  {
    CFRelease(FilterFromRowIDs);
  }

  if (v12)
  {
    CFRelease(v12);
  }

LABEL_44:
  v53 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t __58__CADUpNextEventsPredicate_copyMatchingItemsWithDatabase___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = a3;
  CalEventOccurrenceGetDate();
  v5 = [v3 dateWithTimeIntervalSinceReferenceDate:?];
  v6 = MEMORY[0x277CBEAA8];
  CalEventOccurrenceGetDate();
  v8 = v7;

  v9 = [v6 dateWithTimeIntervalSinceReferenceDate:v8];
  v10 = [v5 compare:v9];

  return v10;
}

+ (BOOL)_occurrencePassesFilter:(CalEventOccurrence *)filter event:(void *)event
{
  v28 = *MEMORY[0x277D85DE8];
  if (event)
  {
    if (CalEventIsAllDay())
    {
      v7 = CADLogHandle;
      v8 = os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG);
      if (v8)
      {
        v9 = v7;
        v10 = [objc_opt_class() _descriptionForOccurrence:filter ofEvent:event];
        v26 = 138412290;
        selfCopy = v10;
        v11 = "Occurrence does not pass filter since it is an all-day event.  Occurrence: [%@]";
LABEL_10:
        _os_log_impl(&dword_22430B000, v9, OS_LOG_TYPE_DEBUG, v11, &v26, 0xCu);

        goto LABEL_11;
      }
    }

    else
    {
      if (CalCalendarItemGetStatus() != 3)
      {
        if (CalCalendarItemHasAttendees())
        {
          v14 = CalCalendarItemCopyOrganizer();
          if (v14)
          {
            v15 = v14;
            if (CalOrganizerIsSelf())
            {
              CFRelease(v15);
            }

            else
            {
              ParticipationStatus = CalEventGetParticipationStatus();
              CFRelease(v15);
              if (ParticipationStatus == 2)
              {
                v17 = CADLogHandle;
                v8 = os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG);
                if (!v8)
                {
                  goto LABEL_27;
                }

                v9 = v17;
                v10 = [objc_opt_class() _descriptionForOccurrence:filter ofEvent:event];
                v26 = 138412290;
                selfCopy = v10;
                v11 = "Occurrence does not pass filter since it is a declined event.  Occurrence: [%@]";
                goto LABEL_10;
              }
            }
          }
        }

        v18 = CalEventCopyStore();
        if (v18)
        {
          v19 = v18;
          if (CalStoreGetType() == 5 && (v20 = CalCalendarItemCopyCalendar()) != 0)
          {
            v21 = v20;
            IsFoundInMailCalendar = CalCalendarIsFoundInMailCalendar();
            CFRelease(v21);
            CFRelease(v19);
            if ((IsFoundInMailCalendar & 1) == 0)
            {
              v23 = CADLogHandle;
              v8 = os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG);
              if (!v8)
              {
                goto LABEL_27;
              }

              v9 = v23;
              v10 = [objc_opt_class() _descriptionForOccurrence:filter ofEvent:event];
              v26 = 138412290;
              selfCopy = v10;
              v11 = "Occurrence does not pass filter since it is a birthday event.  Occurrence: [%@]";
              goto LABEL_10;
            }
          }

          else
          {
            CFRelease(v19);
          }
        }

        LOBYTE(v8) = 1;
        goto LABEL_27;
      }

      v13 = CADLogHandle;
      v8 = os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG);
      if (v8)
      {
        v9 = v13;
        v10 = [objc_opt_class() _descriptionForOccurrence:filter ofEvent:event];
        v26 = 138412290;
        selfCopy = v10;
        v11 = "Occurrence does not pass filter since it is a cancelled event.  Occurrence: [%@]";
        goto LABEL_10;
      }
    }
  }

  else
  {
    v12 = CADLogHandle;
    v8 = os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      v26 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_22430B000, v12, OS_LOG_TYPE_ERROR, "NULL 'event' given.  Will not check to see if the event passes the filter for [%@]", &v26, 0xCu);
LABEL_11:
      LOBYTE(v8) = 0;
    }
  }

LABEL_27:
  v24 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (id)_descriptionForOccurrence:(CalEventOccurrence *)occurrence ofEvent:(void *)event
{
  if (occurrence)
  {
    if (event)
    {
      v4 = CalCalendarItemCopySummary();
      v5 = MEMORY[0x277CBEAA8];
      CalEventOccurrenceGetDate();
      v6 = [v5 dateWithTimeIntervalSinceReferenceDate:?];
      v7 = MEMORY[0x277CBEAA8];
      CalEventOccurrenceGetDate();
      [v7 dateWithTimeIntervalSinceReferenceDate:?];
      v8 = CalEventCopyURI();
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"summary: [%@], occurrence start date: [%@], URI: [%@]", v4, v6, v8];

      goto LABEL_10;
    }

    v10 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v11 = "NULL 'event' given.  Will not find a description for the occurrence.";
      v12 = buf;
      goto LABEL_8;
    }
  }

  else
  {
    v10 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      v15 = 0;
      v11 = "NULL 'occurrence' given.  Will not find a description for the occurrence.";
      v12 = &v15;
LABEL_8:
      _os_log_impl(&dword_22430B000, v10, OS_LOG_TYPE_ERROR, v11, v12, 2u);
    }
  }

  v9 = &stru_2837B4630;
LABEL_10:

  return v9;
}

@end