@interface CalDAVFreeBusyLookupTask
+ (id)_freeBusyDocumentWithOrganizer:(id)a3 attendees:(id)a4 start:(id)a5 end:(id)a6 maskedUID:(id)a7 extendedFreeBusy:(BOOL)a8 prodID:(id)a9;
+ (id)_icsDate:(id)a3 calendar:(id)a4;
- (CalDAVFreeBusyLookupTask)initWithOrganizer:(id)a3 originator:(id)a4 attendees:(id)a5 start:(id)a6 end:(id)a7 outboxURL:(id)a8 maskedUID:(id)a9 extendedFreeBusy:(BOOL)a10 prodID:(id)a11;
@end

@implementation CalDAVFreeBusyLookupTask

- (CalDAVFreeBusyLookupTask)initWithOrganizer:(id)a3 originator:(id)a4 attendees:(id)a5 start:(id)a6 end:(id)a7 outboxURL:(id)a8 maskedUID:(id)a9 extendedFreeBusy:(BOOL)a10 prodID:(id)a11
{
  v16 = a9;
  v17 = a8;
  v18 = a5;
  v19 = a4;
  v20 = [CalDAVFreeBusyLookupTask _freeBusyDocumentWithOrganizer:a3 attendees:v18 start:a6 end:a7 maskedUID:v16 extendedFreeBusy:a10 prodID:a11];
  v21 = [v20 ICSDataWithOptions:0];
  v26.receiver = self;
  v26.super_class = CalDAVFreeBusyLookupTask;
  v22 = [(CalDAVScheduleTask *)&v26 initWithOriginator:v19 attendees:v18 outboxURL:v17 payload:v21];

  if (v22)
  {
    [(CalDAVFreeBusyLookupTask *)v22 setMaskedUID:v16];
  }

  return v22;
}

+ (id)_freeBusyDocumentWithOrganizer:(id)a3 attendees:(id)a4 start:(id)a5 end:(id)a6 maskedUID:(id)a7 extendedFreeBusy:(BOOL)a8 prodID:(id)a9
{
  v37 = a8;
  v50 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v39 = a7;
  v18 = a9;
  v19 = objc_alloc(MEMORY[0x277CBEA80]);
  v20 = [v19 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v21 = [MEMORY[0x277CBEAA8] date];
  v38 = [a1 _icsDate:v21 calendar:v20];

  v41 = v16;
  v44 = [a1 _icsDate:v16 calendar:v20];
  v40 = v17;
  v43 = [a1 _icsDate:v17 calendar:v20];
  v42 = v14;
  v22 = [objc_alloc(MEMORY[0x277D7F158]) initWithEmailAddress:v14];
  v23 = [MEMORY[0x277CBEB18] array];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v24 = v15;
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
        [v23 addObject:v29];
      }

      v26 = [v24 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v26);
  }

  v30 = objc_alloc_init(MEMORY[0x277D7F120]);
  [v30 setAttendee:v23];
  [v30 setDtend:v43];
  [v30 setDtstamp:v38];
  [v30 setDtstart:v44];
  [v30 setOrganizer:v22];
  v31 = [MEMORY[0x277D7F0E0] makeUID];
  [v30 setUid:v31];

  [v30 setX_calendarserver_mask_uid:v39];
  if (v37)
  {
    [v30 setX_calendarserver_extended_freebusy:@"T"];
  }

  v32 = objc_alloc_init(MEMORY[0x277D7F0D0]);
  [v32 setMethod:2];
  v33 = [MEMORY[0x277CBEA60] arrayWithObject:v30];
  [v32 setComponents:v33 options:0];

  if (v18 && [v18 length])
  {
    [v32 setProdid:v18];
  }

  v34 = [objc_alloc(MEMORY[0x277D7F108]) initWithCalendar:v32];

  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

+ (id)_icsDate:(id)a3 calendar:(id)a4
{
  v5 = MEMORY[0x277CBEBB0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 timeZoneWithName:@"UTC"];
  [v6 setTimeZone:v8];
  v9 = [v6 components:252 fromDate:v7];

  v10 = [objc_alloc(MEMORY[0x277D7F0E8]) initWithYear:objc_msgSend(v9 month:"year") day:objc_msgSend(v9 hour:"month") minute:objc_msgSend(v9 second:"day") timeZone:{objc_msgSend(v9, "hour"), objc_msgSend(v9, "minute"), objc_msgSend(v9, "second"), v8}];

  return v10;
}

@end