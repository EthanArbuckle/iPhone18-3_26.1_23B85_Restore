@interface CalDAVScheduleChangesProperty
+ (id)debugStringForType:(int)a3;
+ (id)propertyWithItem:(id)a3;
- (CalDAVScheduleChangesProperty)init;
- (NSArray)recurrenceIDs;
- (id)changeForOccurrence:(id)a3;
- (void)addOccurrenceChange:(id)a3;
@end

@implementation CalDAVScheduleChangesProperty

- (CalDAVScheduleChangesProperty)init
{
  v6.receiver = self;
  v6.super_class = CalDAVScheduleChangesProperty;
  v2 = [(CalDAVScheduleChangesProperty *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(CalDAVScheduleChangesProperty *)v2 setActionType:0];
    [(CalDAVScheduleChangesProperty *)v3 setDateStamp:0];
    [(CalDAVScheduleChangesProperty *)v3 setAttendeeAddress:0];
    [(CalDAVScheduleChangesProperty *)v3 setMasterChange:0];
    v4 = [MEMORY[0x277CBEB38] dictionary];
    [(CalDAVScheduleChangesProperty *)v3 setOccurrenceChanges:v4];
  }

  return v3;
}

+ (id)debugStringForType:(int)a3
{
  if ((a3 - 1) > 3)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_278D66DB0[a3 - 1];
  }
}

+ (id)propertyWithItem:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (!v3)
  {
    v4 = 0;
    goto LABEL_23;
  }

  v4 = objc_opt_new();
  v5 = [v3 dtstamp];
  v6 = [v5 payloadAsString];

  if ([v6 length])
  {
    [v4 setDateStamp:v6];
  }

  v7 = [v3 action];
  v8 = [v7 create];

  if (!v8)
  {
    v9 = [v7 cancel];

    if (v9)
    {
      [v4 setActionType:3];
      v10 = [v7 cancel];
    }

    else
    {
      v11 = [v7 reply];

      if (v11)
      {
        [v4 setActionType:4];
        v12 = [v7 reply];
        v13 = [v12 attendee];
        v14 = [v13 payloadAsString];
        v15 = [v14 trimWhiteSpace];
        [v4 setAttendeeAddress:v15];

        v10 = [v7 reply];
      }

      else
      {
        v16 = [v7 update];

        if (!v16)
        {
          goto LABEL_22;
        }

        [v4 setActionType:2];
        v10 = [v7 update];
      }
    }

    v17 = v10;
    v18 = [v10 recurrences];

    if (v18)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v28;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v28 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = [CalDAVOccurrenceChange changeWithItem:*(*(&v27 + 1) + 8 * i), v27];
            [v4 addOccurrenceChange:v24];
          }

          v21 = [v19 countByEnumeratingWithState:&v27 objects:v31 count:16];
        }

        while (v21);
      }
    }

    goto LABEL_22;
  }

  [v4 setActionType:1];
LABEL_22:

LABEL_23:
  v25 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)addOccurrenceChange:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 isMaster])
    {
      v6 = [(CalDAVScheduleChangesProperty *)self masterChange];

      if (v6)
      {
        v7 = scheduleChangesLogHandle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          [CalDAVScheduleChangesProperty addOccurrenceChange:v7];
        }
      }

      [(CalDAVScheduleChangesProperty *)self setMasterChange:v5];
    }

    else
    {
      v8 = [v5 recurrenceID];
      v9 = [v8 ICSStringWithOptions:0];

      v10 = [(CalDAVScheduleChangesProperty *)self occurrenceChanges];
      [v10 setObject:v5 forKeyedSubscript:v9];
    }
  }
}

- (NSArray)recurrenceIDs
{
  v2 = [(CalDAVScheduleChangesProperty *)self occurrenceChanges];
  v3 = [v2 allValues];
  v4 = [v3 arrayByApplyingSelector:sel_recurrenceID];

  return v4;
}

- (id)changeForOccurrence:(id)a3
{
  if (a3)
  {
    v4 = [a3 ICSStringWithOptions:0];
    v5 = [(CalDAVScheduleChangesProperty *)self occurrenceChanges];
    v6 = [v5 objectForKeyedSubscript:v4];
  }

  else
  {
    v6 = [(CalDAVScheduleChangesProperty *)self masterChange];
  }

  return v6;
}

@end