@interface CADStateDumpModule
- (id)_storeTypeStringFromType:(int)a3;
- (void)activate;
- (void)registerForStateCapture;
@end

@implementation CADStateDumpModule

- (void)activate
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__CADStateDumpModule_activate__block_invoke;
  block[3] = &unk_27851AAD8;
  block[4] = self;
  if (activate_onceToken != -1)
  {
    dispatch_once(&activate_onceToken, block);
  }
}

- (void)registerForStateCapture
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("com.apple.calendar.eventstore.stateCaptureQ", v2);

  CalAddStateCaptureBlock();
  CalAddStateCaptureBlock();
}

id __45__CADStateDumpModule_registerForStateCapture__block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v22 = objc_opt_new();
  cf = CalDatabaseCreateWithOptions();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = CalDatabaseCopyOfAllCalendarsInStoreWithOptions();
  v1 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v1)
  {
    v2 = v1;
    v23 = *v26;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v25 + 1) + 8 * i);
        v5 = CalCalendarCopyUUID();
        v6 = CalCalendarCopyType();
        v7 = CalCalendarCopyColorString();
        v8 = CalCalendarCopyStore();
        v9 = CalStoreCopyUUID();
        v10 = [*(a1 + 32) _storeTypeStringFromType:CalStoreGetType()];
        IsIgnoringEventAlerts = CalCalendarIsIgnoringEventAlerts();
        if (v5)
        {
          v29[0] = @"calendarUUID";
          v29[1] = @"calendarType";
          if (v6)
          {
            v12 = v6;
          }

          else
          {
            v12 = &stru_2837B4630;
          }

          v30[0] = v5;
          v30[1] = v12;
          if (v7)
          {
            v13 = v7;
          }

          else
          {
            v13 = &stru_2837B4630;
          }

          v29[2] = @"colorString";
          v29[3] = @"storeUUID";
          if (v9)
          {
            v14 = v9;
          }

          else
          {
            v14 = &stru_2837B4630;
          }

          v30[2] = v13;
          v30[3] = v14;
          if (v10)
          {
            v15 = v10;
          }

          else
          {
            v15 = &stru_2837B4630;
          }

          v29[4] = @"storeType";
          v29[5] = @"ignoreAlerts";
          v16 = @"No";
          if (IsIgnoringEventAlerts)
          {
            v16 = @"Yes";
          }

          v30[4] = v15;
          v30[5] = v16;
          v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:6];
          [v22 setObject:v17 forKeyedSubscript:v5];
        }

        if (v8)
        {
          CFRelease(v8);
        }
      }

      v2 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v2);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v22;
}

id __45__CADStateDumpModule_registerForStateCapture__block_invoke_2()
{
  v0 = objc_opt_new();
  v1 = CalAlarmCopyDefaultTimedAlarmOffset();
  v2 = CalAlarmCopyDefaultAllDayAlarmOffset();
  v3 = CalDatabaseCreateWithOptions();
  v4 = CalDatabaseCopyStoreForBirthdayCalendar();
  v5 = CalStoreCopyDefaultAlarmOffset();
  v6 = [MEMORY[0x277CF74E0] shared];
  v7 = [v6 get_enableTravelAdvisoriesForAutomaticBehavior];

  v8 = [MEMORY[0x277CF77F0] ttlLocationStatus];
  if (v1)
  {
    v9 = v1;
  }

  else
  {
    v9 = @"None";
  }

  [v0 setObject:v9 forKeyedSubscript:@"defaultTimedAlarm"];
  if (v2)
  {
    v10 = v2;
  }

  else
  {
    v10 = @"None";
  }

  [v0 setObject:v10 forKeyedSubscript:@"defaultAllDayAlarm"];
  if (v5)
  {
    v11 = v5;
  }

  else
  {
    v11 = @"None";
  }

  [v0 setObject:v11 forKeyedSubscript:@"defaultBirthdayAlarm"];
  if (v7)
  {
    v12 = @"Yes";
  }

  else
  {
    v12 = @"No";
  }

  [v0 setObject:v12 forKeyedSubscript:@"timeToLeave"];
  if ((v8 & 0xFFFFFFFFFFFFFFFBLL) != 0)
  {
    v13 = @"Yes";
  }

  else
  {
    v13 = @"No";
  }

  [v0 setObject:v13 forKeyedSubscript:@"ttlLocationDisabled"];
  if (v4)
  {
    CFRelease(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v0;
}

- (id)_storeTypeStringFromType:(int)a3
{
  if ((a3 - 1) > 5)
  {
    return @"Local";
  }

  else
  {
    return off_27851BDC8[a3 - 1];
  }
}

@end