@interface CADStatsCalendars
- (BOOL)calendarUsesAuthentication:(void *)authentication;
- (id)eventDictionaries;
- (void)prepareWithContext:(id)context;
- (void)processCalendars:(id)calendars inStore:(void *)store;
@end

@implementation CADStatsCalendars

- (void)prepareWithContext:(id)context
{
  objc_storeStrong(&self->_context, context);
  contextCopy = context;
  v5 = objc_opt_new();
  calendarInfos = self->_calendarInfos;
  self->_calendarInfos = v5;
}

- (void)processCalendars:(id)calendars inStore:(void *)store
{
  v31 = *MEMORY[0x277D85DE8];
  calendarsCopy = calendars;
  CalGetDatabaseForRecord();
  v6 = CalDatabaseGetPreferences();
  preferences = [v6 preferences];

  v8 = objc_alloc(MEMORY[0x277CBEB98]);
  v24 = preferences;
  v9 = [preferences getValueForPreference:@"LastDeselectedCalendars" expectedClass:objc_opt_class()];
  v10 = [v8 initWithArray:v9];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = calendarsCopy;
  v11 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      v14 = 0;
      do
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v26 + 1) + 8 * v14);
        v16 = objc_opt_new();
        [(NSMutableArray *)self->_calendarInfos addObject:v16];
        v17 = CalCalendarCopyUUID();
        *(v16 + 8) = [v10 containsObject:v17] ^ 1;

        *(v16 + 9) = CalCalendarIsHolidaySubscribedCalendar();
        *(v16 + 10) = CalCalendarIsSubscribed();
        *(v16 + 11) = CalStoreGetType() == 2;
        *(v16 + 12) = [(CADStatsCalendars *)self calendarUsesAuthentication:v15];
        *(v16 + 16) = CalCalendarIsBirthdayCalendar();
        *(v16 + 17) = CalCalendarIsFacebookBirthdayCalendar();
        *(v16 + 18) = CalCalendarIsFamilyCalendar();
        *(v16 + 19) = CalCalendarIsFoundInMailCalendar();
        *(v16 + 20) = CalCalendarIsNaturalLanguageSuggestedEventsCalendar();
        *(v16 + 15) = CalCalendarIsHidden();
        *(v16 + 13) = CalCalendarGetSharingStatus() != 0;
        *(v16 + 21) = CalCalendarGetSharingStatus() == 1;
        *(v16 + 22) = CalCalendarIsHolidaySyncedCalendar();
        *(v16 + 14) = CalCalendarCanContainEntityTypeAndStoreAllowsIt();
        *(v16 + 24) = 0;
        v18 = (v16 + 24);
        *(v16 + 32) = 0;
        v19 = CalCalendarCopySharees();
        if (v19)
        {
          v20 = v19;
          Count = CFArrayGetCount(v19);
          *v18 = Count;
          if (Count)
          {
            v22 = 0;
            do
            {
              CFArrayGetValueAtIndex(v20, v22);
              if (CalShareeGetAccessLevel() <= 1)
              {
                ++*(v16 + 32);
              }

              ++v22;
            }

            while (v22 < *v18);
          }

          CFRelease(v20);
        }

        *(v16 + 40) = *(v16 + 24) - *(v16 + 32);

        ++v14;
      }

      while (v14 != v12);
      v12 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)calendarUsesAuthentication:(void *)authentication
{
  v4 = CalCalendarCopySubscriptionURL();
  v5 = [MEMORY[0x277CBEBC0] URLWithString:v4];
  user = [v5 user];
  if ([user length])
  {
    goto LABEL_2;
  }

  password = [v5 password];
  v9 = [password length];

  if (v9)
  {
    v7 = 1;
    goto LABEL_6;
  }

  user = CalCalendarCopySubCalAccountID();
  if (!user)
  {
LABEL_12:
    v7 = 0;
    goto LABEL_3;
  }

  accountStore = [(CADStatCollectionContext *)self->_context accountStore];
  v12 = [accountStore accountWithIdentifier:user];
  if (!v12)
  {

    goto LABEL_12;
  }

  v13 = v12;
  username = [v12 username];
  v15 = [username length];

  if (!v15)
  {
    goto LABEL_12;
  }

LABEL_2:
  v7 = 1;
LABEL_3:

LABEL_6:
  return v7;
}

- (id)eventDictionaries
{
  v37 = *MEMORY[0x277D85DE8];
  v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_calendarInfos, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = self->_calendarInfos;
  v18 = [(NSMutableArray *)obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v18)
  {
    v16 = *v31;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v30 + 1) + 8 * i);
        v35[0] = &unk_2837C7180;
        v34[0] = @"instance";
        v34[1] = @"isSelected";
        v29 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 8)];
        v35[1] = v29;
        v34[2] = @"isHoliday";
        v28 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 9)];
        v35[2] = v28;
        v34[3] = @"isSubscribed";
        v27 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 10)];
        v35[3] = v27;
        v34[4] = @"isCalDAV";
        v26 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 11)];
        v35[4] = v26;
        v34[5] = @"isAuthenticated";
        v25 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 12)];
        v35[5] = v25;
        v34[6] = @"isShared";
        v24 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 13)];
        v35[6] = v24;
        v34[7] = @"allowsEvents";
        v23 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 14)];
        v35[7] = v23;
        v34[8] = @"isHidden";
        v22 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 15)];
        v35[8] = v22;
        v34[9] = @"isBirthday";
        v21 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 16)];
        v35[9] = v21;
        v34[10] = @"isFacebookBirthday";
        v20 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 17)];
        v35[10] = v20;
        v34[11] = @"isFamily";
        v19 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 18)];
        v35[11] = v19;
        v34[12] = @"isFoundInMail";
        v5 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 19)];
        v35[12] = v5;
        v34[13] = @"isNaturalLanguageSuggestedEvents";
        v6 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 20)];
        v35[13] = v6;
        v34[14] = @"isSharedByMe";
        v7 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 21)];
        v35[14] = v7;
        v34[15] = @"isSyncedHolidayCalendar";
        v8 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 22)];
        v35[15] = v8;
        v34[16] = @"numSharees";
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(v4 + 24)];
        v35[16] = v9;
        v34[17] = @"readOnlySharees";
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(v4 + 32)];
        v35[17] = v10;
        v34[18] = @"readWriteSharees";
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(v4 + 40)];
        v35[18] = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:19];
        [v17 addObject:v12];
      }

      v18 = [(NSMutableArray *)obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v18);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v17;
}

@end