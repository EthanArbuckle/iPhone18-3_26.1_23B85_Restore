@interface HFTimerTriggerCalendarEventAdapter
- (id)createTriggerWithName:(id)a3 timeZone:(id)a4 recurrences:(id)a5;
- (id)updateTrigger:(id)a3;
- (void)updateTriggerBuilder:(id)a3 recurrences:(id)a4 inHome:(id)a5;
@end

@implementation HFTimerTriggerCalendarEventAdapter

BOOL __72__HFTimerTriggerCalendarEventAdapter_hasWeekdayRecurrenceInRecurrences___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 weekday] >= 1 && objc_msgSend(v2, "weekday") != 0x7FFFFFFFFFFFFFFFLL;

  return v3;
}

- (id)createTriggerWithName:(id)a3 timeZone:(id)a4 recurrences:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HFTimerTriggerTimeEventAdapter *)self eventBuilder];
  v12 = [v11 performValidation];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __81__HFTimerTriggerCalendarEventAdapter_createTriggerWithName_timeZone_recurrences___block_invoke;
  v32[3] = &unk_277DFA5E8;
  v32[4] = self;
  v13 = v10;
  v33 = v13;
  v14 = v8;
  v34 = v14;
  v35 = v9;
  v15 = v9;
  v16 = [v12 flatMap:v32];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __81__HFTimerTriggerCalendarEventAdapter_createTriggerWithName_timeZone_recurrences___block_invoke_2;
  v28[3] = &unk_277DF7010;
  v17 = v14;
  v29 = v17;
  v30 = self;
  v18 = v13;
  v31 = v18;
  v19 = [v16 addSuccessBlock:v28];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __81__HFTimerTriggerCalendarEventAdapter_createTriggerWithName_timeZone_recurrences___block_invoke_44;
  v24[3] = &unk_277DF6FE8;
  v25 = v17;
  v26 = self;
  v27 = v18;
  v20 = v18;
  v21 = v17;
  v22 = [v16 addFailureBlock:v24];

  return v16;
}

id __81__HFTimerTriggerCalendarEventAdapter_createTriggerWithName_timeZone_recurrences___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() hasWeekdayRecurrenceInRecurrences:*(a1 + 40)];
  v4 = objc_alloc(MEMORY[0x277CD1EB0]);
  v5 = *(a1 + 48);
  v6 = [*(a1 + 32) eventBuilder];
  v7 = [v6 effectiveFireDate];
  v8 = *(a1 + 56);
  if (v3)
  {
    v9 = [v4 initWithName:v5 fireDate:v7 timeZone:*(a1 + 56) recurrences:*(a1 + 40)];
  }

  else
  {
    v10 = [*(a1 + 40) firstObject];
    v9 = [v4 initWithName:v5 fireDate:v7 timeZone:v8 recurrence:v10 recurrenceCalendar:0];
  }

  v11 = [MEMORY[0x277D2C900] futureWithResult:v9];

  return v11;
}

void __81__HFTimerTriggerCalendarEventAdapter_createTriggerWithName_timeZone_recurrences___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) eventBuilder];
    v5 = [v4 fireDate];
    v6 = *(a1 + 48);
    v8 = 138412802;
    v9 = v3;
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "Created timer trigger with name:%@ fireDate:%@ recurrence:%@", &v8, 0x20u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __81__HFTimerTriggerCalendarEventAdapter_createTriggerWithName_timeZone_recurrences___block_invoke_44(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = [*(a1 + 40) eventBuilder];
    v8 = [v7 fireDate];
    v9 = *(a1 + 48);
    v10 = 138413058;
    v11 = v6;
    v12 = 2112;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v3;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Failed to create timer trigger with name:%@ fireDate:%@ recurrence:%@. Error: %@", &v10, 0x2Au);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateTriggerBuilder:(id)a3 recurrences:(id)a4 inHome:(id)a5
{
  v11 = a3;
  v7 = a4;
  v8 = [(HFTimerTriggerTimeEventAdapter *)self eventBuilder];
  v9 = [v8 effectiveFireDate];
  [v11 setFireDate:v9];

  if ([objc_opt_class() hasWeekdayRecurrenceInRecurrences:v7])
  {
    [v11 setRecurrences:v7];
  }

  else
  {
    v10 = [v7 firstObject];

    [v11 setRecurrence:v10];
    v7 = v10;
  }
}

- (id)updateTrigger:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277D2C900];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __52__HFTimerTriggerCalendarEventAdapter_updateTrigger___block_invoke;
  v21[3] = &unk_277DF4150;
  v21[4] = self;
  v6 = v4;
  v22 = v6;
  v7 = [v5 futureWithErrorOnlyHandlerAdapterBlock:v21];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __52__HFTimerTriggerCalendarEventAdapter_updateTrigger___block_invoke_2;
  v19[3] = &unk_277DFA610;
  v19[4] = self;
  v8 = v6;
  v20 = v8;
  v9 = [v7 flatMap:v19];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __52__HFTimerTriggerCalendarEventAdapter_updateTrigger___block_invoke_3;
  v17[3] = &unk_277DF7060;
  v17[4] = self;
  v10 = v8;
  v18 = v10;
  v11 = [v9 addSuccessBlock:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__HFTimerTriggerCalendarEventAdapter_updateTrigger___block_invoke_46;
  v15[3] = &unk_277DF2748;
  v15[4] = self;
  v16 = v10;
  v12 = v10;
  v13 = [v9 addFailureBlock:v15];

  return v9;
}

void __52__HFTimerTriggerCalendarEventAdapter_updateTrigger___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 eventBuilder];
  [v5 updateBaseFireDateForTrigger];

  v6 = [*(a1 + 32) eventBuilder];
  v7 = [v6 effectiveFireDate];

  [*(a1 + 40) updateFireDate:v7 completionHandler:v4];
}

id __52__HFTimerTriggerCalendarEventAdapter_updateTrigger___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 fireDate];
  v6 = [*(a1 + 32) eventBuilder];
  [v6 setFireDate:v5];

  v7 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v7;
}

void __52__HFTimerTriggerCalendarEventAdapter_updateTrigger___block_invoke_3(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) eventBuilder];
    v4 = [v3 effectiveFireDate];
    v5 = [*(a1 + 40) name];
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "Updated execution time: %@ for trigger with name: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __52__HFTimerTriggerCalendarEventAdapter_updateTrigger___block_invoke_46(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 32) eventBuilder];
    v7 = [v6 effectiveFireDate];
    v8 = [*(a1 + 40) name];
    v9 = 138412802;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Failed to update execution time: %@ for trigger with name: %@. Error: %@", &v9, 0x20u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

@end