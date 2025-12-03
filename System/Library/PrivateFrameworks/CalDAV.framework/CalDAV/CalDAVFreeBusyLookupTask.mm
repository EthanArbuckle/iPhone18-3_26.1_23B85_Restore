@interface CalDAVFreeBusyLookupTask
+ (id)_freeBusyDocumentWithOrganizer:(id)organizer attendees:(id)attendees start:(id)start end:(id)end maskedUID:(id)d extendedFreeBusy:(BOOL)busy prodID:(id)iD;
+ (id)_icsDate:(id)date calendar:(id)calendar;
- (CalDAVFreeBusyLookupTask)initWithOrganizer:(id)organizer originator:(id)originator attendees:(id)attendees start:(id)start end:(id)end outboxURL:(id)l maskedUID:(id)d extendedFreeBusy:(BOOL)self0 prodID:(id)self1;
@end

@implementation CalDAVFreeBusyLookupTask

- (CalDAVFreeBusyLookupTask)initWithOrganizer:(id)organizer originator:(id)originator attendees:(id)attendees start:(id)start end:(id)end outboxURL:(id)l maskedUID:(id)d extendedFreeBusy:(BOOL)self0 prodID:(id)self1
{
  dCopy = d;
  lCopy = l;
  attendeesCopy = attendees;
  originatorCopy = originator;
  v20 = [CalDAVFreeBusyLookupTask _freeBusyDocumentWithOrganizer:organizer attendees:attendeesCopy start:start end:end maskedUID:dCopy extendedFreeBusy:busy prodID:iD];
  v21 = [v20 ICSDataWithOptions:0];
  v26.receiver = self;
  v26.super_class = CalDAVFreeBusyLookupTask;
  v22 = [(CalDAVScheduleTask *)&v26 initWithOriginator:originatorCopy attendees:attendeesCopy outboxURL:lCopy payload:v21];

  if (v22)
  {
    [(CalDAVFreeBusyLookupTask *)v22 setMaskedUID:dCopy];
  }

  return v22;
}

+ (id)_freeBusyDocumentWithOrganizer:(id)organizer attendees:(id)attendees start:(id)start end:(id)end maskedUID:(id)d extendedFreeBusy:(BOOL)busy prodID:(id)iD
{
  busyCopy = busy;
  v50 = *MEMORY[0x277D85DE8];
  organizerCopy = organizer;
  attendeesCopy = attendees;
  startCopy = start;
  endCopy = end;
  dCopy = d;
  iDCopy = iD;
  v19 = objc_alloc(MEMORY[0x277CBEA80]);
  v20 = [v19 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  date = [MEMORY[0x277CBEAA8] date];
  v38 = [self _icsDate:date calendar:v20];

  v41 = startCopy;
  v44 = [self _icsDate:startCopy calendar:v20];
  v40 = endCopy;
  v43 = [self _icsDate:endCopy calendar:v20];
  v42 = organizerCopy;
  v22 = [objc_alloc(MEMORY[0x277D7F158]) initWithEmailAddress:organizerCopy];
  array = [MEMORY[0x277CBEB18] array];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v24 = attendeesCopy;
  v25 = [v24 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v46;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v46 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [objc_alloc(MEMORY[0x277D7F158]) initWithEmailAddress:*(*(&v45 + 1) + 8 * i)];
        [array addObject:v29];
      }

      v26 = [v24 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v26);
  }

  v30 = objc_alloc_init(MEMORY[0x277D7F120]);
  [v30 setAttendee:array];
  [v30 setDtend:v43];
  [v30 setDtstamp:v38];
  [v30 setDtstart:v44];
  [v30 setOrganizer:v22];
  makeUID = [MEMORY[0x277D7F0E0] makeUID];
  [v30 setUid:makeUID];

  [v30 setX_calendarserver_mask_uid:dCopy];
  if (busyCopy)
  {
    [v30 setX_calendarserver_extended_freebusy:@"T"];
  }

  v32 = objc_alloc_init(MEMORY[0x277D7F0D0]);
  [v32 setMethod:2];
  v33 = [MEMORY[0x277CBEA60] arrayWithObject:v30];
  [v32 setComponents:v33 options:0];

  if (iDCopy && [iDCopy length])
  {
    [v32 setProdid:iDCopy];
  }

  v34 = [objc_alloc(MEMORY[0x277D7F108]) initWithCalendar:v32];

  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

+ (id)_icsDate:(id)date calendar:(id)calendar
{
  v5 = MEMORY[0x277CBEBB0];
  calendarCopy = calendar;
  dateCopy = date;
  v8 = [v5 timeZoneWithName:@"UTC"];
  [calendarCopy setTimeZone:v8];
  v9 = [calendarCopy components:252 fromDate:dateCopy];

  v10 = [objc_alloc(MEMORY[0x277D7F0E8]) initWithYear:objc_msgSend(v9 month:"year") day:objc_msgSend(v9 hour:"month") minute:objc_msgSend(v9 second:"day") timeZone:{objc_msgSend(v9, "hour"), objc_msgSend(v9, "minute"), objc_msgSend(v9, "second"), v8}];

  return v10;
}

@end