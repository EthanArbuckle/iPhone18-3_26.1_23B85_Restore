@interface CADEventsForAssistantSearchPredicate
- (CADEventsForAssistantSearchPredicate)initWithCoder:(id)coder;
- (CADEventsForAssistantSearchPredicate)initWithTimeZone:(id)zone startDate:(id)date endDate:(id)endDate title:(id)title location:(id)location notes:(id)notes participants:(id)participants limit:(int64_t)self0;
- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CADEventsForAssistantSearchPredicate

- (CADEventsForAssistantSearchPredicate)initWithTimeZone:(id)zone startDate:(id)date endDate:(id)endDate title:(id)title location:(id)location notes:(id)notes participants:(id)participants limit:(int64_t)self0
{
  zoneCopy = zone;
  dateCopy = date;
  endDateCopy = endDate;
  titleCopy = title;
  locationCopy = location;
  notesCopy = notes;
  participantsCopy = participants;
  v27.receiver = self;
  v27.super_class = CADEventsForAssistantSearchPredicate;
  v24 = [(EKPredicate *)&v27 initWithCalendars:0];
  v25 = v24;
  if (v24)
  {
    [(EKPredicate *)v24 setStartDate:dateCopy];
    [(EKPredicate *)v25 setEndDate:endDateCopy];
    objc_storeStrong(&v25->super._timeZone, zone);
    [(EKPredicate *)v25 setTitle:titleCopy];
    [(CADEventsForAssistantSearchPredicate *)v25 setLocation:locationCopy];
    [(CADEventsForAssistantSearchPredicate *)v25 setNotes:notesCopy];
    [(CADEventsForAssistantSearchPredicate *)v25 setParticipants:participantsCopy];
    [(CADEventsForAssistantSearchPredicate *)v25 setLimit:limit];
  }

  return v25;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CF77B0]);
  v14.receiver = self;
  v14.super_class = CADEventsForAssistantSearchPredicate;
  v4 = [(CADEventsForAssistantSearchPredicate *)&v14 description];
  v5 = [v3 initWithSuperclassDescription:v4];

  [v5 setKey:@"timeZone" withObject:self->super._timeZone];
  startDate = [(EKPredicate *)self startDate];
  [v5 setKey:@"startDate" withDate:startDate];

  endDate = [(EKPredicate *)self endDate];
  [v5 setKey:@"endDate" withDate:endDate];

  title = [(EKPredicate *)self title];
  [v5 setKey:@"title" withString:title];

  location = [(CADEventsForAssistantSearchPredicate *)self location];
  [v5 setKey:@"location" withString:location];

  notes = [(CADEventsForAssistantSearchPredicate *)self notes];
  [v5 setKey:@"notes" withString:notes];

  participants = [(CADEventsForAssistantSearchPredicate *)self participants];
  [v5 setKey:@"participants" withArray:participants];

  [v5 setKey:@"limit" withInteger:{-[CADEventsForAssistantSearchPredicate limit](self, "limit")}];
  build = [v5 build];

  return build;
}

- (CADEventsForAssistantSearchPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = CADEventsForAssistantSearchPredicate;
  v5 = [(EKPredicate *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    [(EKPredicate *)v5 setStartDate:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    [(EKPredicate *)v5 setEndDate:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
    timeZone = v5->super._timeZone;
    v5->super._timeZone = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    [(EKPredicate *)v5 setTitle:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    [(CADEventsForAssistantSearchPredicate *)v5 setLocation:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"notes"];
    [(CADEventsForAssistantSearchPredicate *)v5 setNotes:v12];

    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"participants"];
    [(CADEventsForAssistantSearchPredicate *)v5 setParticipants:v16];

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"limit"];
    -[CADEventsForAssistantSearchPredicate setLimit:](v5, "setLimit:", [v17 integerValue]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = CADEventsForAssistantSearchPredicate;
  coderCopy = coder;
  [(EKPredicate *)&v12 encodeWithCoder:coderCopy];
  v5 = [(EKPredicate *)self startDate:v12.receiver];
  [coderCopy encodeObject:v5 forKey:@"startDate"];

  endDate = [(EKPredicate *)self endDate];
  [coderCopy encodeObject:endDate forKey:@"endDate"];

  [coderCopy encodeObject:self->super._timeZone forKey:@"timeZone"];
  title = [(EKPredicate *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  location = [(CADEventsForAssistantSearchPredicate *)self location];
  [coderCopy encodeObject:location forKey:@"location"];

  notes = [(CADEventsForAssistantSearchPredicate *)self notes];
  [coderCopy encodeObject:notes forKey:@"notes"];

  participants = [(CADEventsForAssistantSearchPredicate *)self participants];
  [coderCopy encodeObject:participants forKey:@"participants"];

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CADEventsForAssistantSearchPredicate limit](self, "limit")}];
  [coderCopy encodeObject:v11 forKey:@"limit"];
}

- (id)copyMatchingItemsWithDatabase:(CalDatabase *)database
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_22430B000, v5, OS_LOG_TYPE_DEBUG, "Preparing to fetch matching events for predicate: [%@]", buf, 0xCu);
  }

  v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
  startDate = [(EKPredicate *)self startDate];
  endDate = [(EKPredicate *)self endDate];
  title = [(EKPredicate *)self title];
  location = [(CADEventsForAssistantSearchPredicate *)self location];
  notes = [(CADEventsForAssistantSearchPredicate *)self notes];
  participants = [(CADEventsForAssistantSearchPredicate *)self participants];
  limit = [(CADEventsForAssistantSearchPredicate *)self limit];
  AuxilliaryDatabaseID = CalDatabaseGetAuxilliaryDatabaseID();
  v11 = [(EKPredicate *)self calendarRowIDsForDatabaseID:AuxilliaryDatabaseID];
  v12 = [(EKPredicate *)self restrictedCalendarRowIDsForDatabaseID:AuxilliaryDatabaseID];
  FilterFromRowIDs = CreateFilterFromRowIDs(v11, v12);
  if (startDate | endDate)
  {
    if (startDate && endDate)
    {
      v17 = [endDate dateByAddingTimeInterval:-1.0];
      timeZone = self->super._timeZone;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __70__CADEventsForAssistantSearchPredicate_copyMatchingItemsWithDatabase___block_invoke;
      v28[3] = &unk_27851B2C0;
      v29 = title;
      v30 = location;
      v31 = notes;
      v32 = participants;
      v19 = MEMORY[0x22AA4B930](database, FilterFromRowIDs, startDate, v17, timeZone, limit, v28);

      if (v19)
      {
        [v25 addObjectsFromArray:v19];
        CFRelease(v19);
      }
    }
  }

  else
  {
    v14 = CalDatabaseCopyEventOccurrenceCache();
    if (v14)
    {
      v15 = v14;
      if (title || location || notes || participants)
      {
        if (participants)
        {
          [participants objectAtIndex:0];
        }

        v20 = CalDatabaseCopyEventIDsOfEventsMatching();
        if (!v20)
        {
          goto LABEL_21;
        }

        v21 = v20;
        CFAbsoluteTimeGetCurrent();
        v16 = CalEventOccurrenceCacheCopyEventOccurrencesWithIDsAfterDate();
        CFRelease(v21);
        if (!v16)
        {
          goto LABEL_21;
        }
      }

      else
      {
        CFAbsoluteTimeGetCurrent();
        v16 = CalEventOccurrenceCacheCopyEventOccurrencesAfterDate();
        if (!v16)
        {
          goto LABEL_21;
        }
      }

      [v25 addObjectsFromArray:{v16, limit}];
      CFRelease(v16);
LABEL_21:
      CFRelease(v15);
    }
  }

  CFRelease(FilterFromRowIDs);

  v22 = *MEMORY[0x277D85DE8];
  return v25;
}

uint64_t __70__CADEventsForAssistantSearchPredicate_copyMatchingItemsWithDatabase___block_invoke(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32))
  {
    goto LABEL_5;
  }

  v2 = CalCalendarItemCopySummary();
  if (!v2)
  {
LABEL_50:
    v23 = 0;
    goto LABEL_51;
  }

  v3 = v2;
  if (CFStringFind(v2, *(a1 + 32), 0x81uLL).location != -1)
  {
    CFRelease(v3);
    goto LABEL_5;
  }

  v24 = v3;
  [(__CFString *)v24 rangeOfString:@"’"];
  if (!v25)
  {

    CFRelease(v24);
    goto LABEL_50;
  }

  v26 = [(__CFString *)v24 stringByReplacingOccurrencesOfString:@"’" withString:@"'"];

  location = CFStringFind(v26, *(a1 + 32), 0x81uLL).location;
  CFRelease(v24);
  if (location == -1)
  {
    goto LABEL_50;
  }

LABEL_5:
  if (*(a1 + 40))
  {
    v4 = CalEventCopyLocation_Deprecated();
    if (!v4)
    {
      goto LABEL_50;
    }

    v5 = v4;
    v6 = CFStringFind(v4, *(a1 + 40), 0x81uLL).location;
    CFRelease(v5);
    if (v6 == -1)
    {
      goto LABEL_50;
    }
  }

  if (*(a1 + 48))
  {
    v7 = CalCalendarItemCopyDescription();
    if (!v7)
    {
      goto LABEL_50;
    }

    v8 = v7;
    v9 = CFStringFind(v7, *(a1 + 48), 0x81uLL).location;
    CFRelease(v8);
    if (v9 == -1)
    {
      goto LABEL_50;
    }
  }

  if (![*(a1 + 56) count])
  {
    v23 = 1;
    goto LABEL_51;
  }

  v10 = CalCalendarItemCopyAttendees();
  v11 = v10;
  if (v10 && CFArrayGetCount(v10) >= 1)
  {
    Count = CFArrayGetCount(v11);
    v13 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:0];
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v11, i);
        v16 = MEMORY[0x22AA4B080](ValueAtIndex);
        if (v16)
        {
          v17 = v16;
          if ([v13 length])
          {
            [v13 appendFormat:@" %@", v17];
          }

          else
          {
            [v13 appendString:v17];
          }

          CFRelease(v17);
        }
      }
    }

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v18 = *(a1 + 56);
    v19 = [v18 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v43;
LABEL_24:
      v22 = 0;
      while (1)
      {
        if (*v43 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = 1;
        if ([v13 rangeOfString:*(*(&v42 + 1) + 8 * v22) options:1] != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_47;
        }

        if (v20 == ++v22)
        {
          v20 = [v18 countByEnumeratingWithState:&v42 objects:v47 count:16];
          if (v20)
          {
            goto LABEL_24;
          }

          break;
        }
      }
    }
  }

  else
  {
    v13 = CalCalendarItemCopySummary();
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v18 = *(a1 + 56);
    v28 = [v18 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v28)
    {
      v29 = v28;
      v37 = v11;
      v30 = *v39;
      while (2)
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v39 != v30)
          {
            objc_enumerationMutation(v18);
          }

          v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"\\b%@\\b", *(*(&v38 + 1) + 8 * j)];
          v33 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:v32 options:0 error:0];
          v34 = [v33 numberOfMatchesInString:v13 options:8 range:{0, objc_msgSend(v13, "length")}];

          if (v34)
          {
            v23 = 1;
            goto LABEL_46;
          }
        }

        v29 = [v18 countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v29)
        {
          continue;
        }

        break;
      }

      v23 = 0;
LABEL_46:
      v11 = v37;
      goto LABEL_47;
    }
  }

  v23 = 0;
LABEL_47:

  if (v11)
  {
    CFRelease(v11);
  }

LABEL_51:
  v35 = *MEMORY[0x277D85DE8];
  return v23;
}

@end