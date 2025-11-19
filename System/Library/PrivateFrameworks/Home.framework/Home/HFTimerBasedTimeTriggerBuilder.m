@interface HFTimerBasedTimeTriggerBuilder
- (HFTimerBasedTimeTriggerBuilder)initWithExistingObject:(id)a3 inHome:(id)a4 context:(id)a5;
- (id)_updateRecurrences;
- (id)_updateTimeZone;
- (id)commitCreateTrigger;
- (id)commitEditTrigger;
- (id)createNewTriggerBuilder;
- (id)updateTriggerBuilder:(id)a3;
- (void)_setupWithExistingTrigger:(id)a3;
- (void)copyCurrentStateFromTriggerBuilder:(id)a3;
- (void)triggerEnabledStateDidChange:(BOOL)a3;
@end

@implementation HFTimerBasedTimeTriggerBuilder

- (HFTimerBasedTimeTriggerBuilder)initWithExistingObject:(id)a3 inHome:(id)a4 context:(id)a5
{
  v9 = a3;
  v14.receiver = self;
  v14.super_class = HFTimerBasedTimeTriggerBuilder;
  v10 = [(HFTriggerBuilder *)&v14 initWithExistingObject:v9 inHome:a4 context:a5];
  v11 = v10;
  if (v9 && v10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = [MEMORY[0x277CCA890] currentHandler];
      [v13 handleFailureInMethod:a2 object:v11 file:@"HFConcreteTimeTriggerBuilder.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"[object isKindOfClass:[HMTimerTrigger class]]"}];
    }

    [(HFTimerBasedTimeTriggerBuilder *)v11 _setupWithExistingTrigger:v9];
  }

  return v11;
}

- (void)_setupWithExistingTrigger:(id)a3
{
  v16 = a3;
  v4 = [v16 timeZone];
  [(HFTimerBasedTimeTriggerBuilder *)self setTimeZone:v4];

  v5 = [v16 recurrences];

  if (v5)
  {
    v6 = [v16 recurrences];
    [(HFTimerBasedTimeTriggerBuilder *)self setRecurrences:v6];
  }

  else
  {
    v7 = [v16 recurrence];

    if (v7)
    {
      v8 = MEMORY[0x277CBEA60];
      v9 = [v16 recurrence];
      v10 = [v8 na_arrayWithSafeObject:v9];
      [(HFTimerBasedTimeTriggerBuilder *)self setRecurrences:v10];
    }

    else
    {
      [(HFTimerBasedTimeTriggerBuilder *)self setRecurrences:MEMORY[0x277CBEBF8]];
    }
  }

  v11 = [v16 fireDate];

  if (v11)
  {
    v12 = objc_alloc_init(HFCalendarEventBuilder);
    v13 = [v16 fireDate];
    [(HFCalendarEventBuilder *)v12 setFireDate:v13];
  }

  else
  {
    v14 = [v16 significantEvent];

    if (!v14)
    {
      goto LABEL_11;
    }

    v12 = objc_alloc_init(HFSignificantTimeEventBuilder);
    v15 = [v16 significantEvent];
    [(HFCalendarEventBuilder *)v12 setSignificantEvent:v15];

    v13 = [v16 significantEventOffset];
    [(HFCalendarEventBuilder *)v12 setSignificantEventOffset:v13];
  }

  [(HFTimerBasedTimeTriggerBuilder *)self setEventBuilder:v12];
LABEL_11:
}

- (id)commitCreateTrigger
{
  v3 = [(HFTriggerBuilder *)self trigger];

  if (v3)
  {
    NSLog(&cfstr_AttemptingToCr_0.isa);
  }

  v4 = [(HFTimerBasedTimeTriggerBuilder *)self eventBuilder];
  v5 = [HFTimerTriggerTimeEventAdapter adapterWithEventBuilder:v4];

  v6 = [(HFTimerBasedTimeTriggerBuilder *)self recurrences];
  if ([v6 count])
  {
    v7 = [(HFTimerBasedTimeTriggerBuilder *)self recurrences];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(HFTriggerBuilder *)self name];
  v9 = [(HFTimerBasedTimeTriggerBuilder *)self timeZone];
  v10 = [v5 createTriggerWithName:v8 timeZone:v9 recurrences:v7];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __53__HFTimerBasedTimeTriggerBuilder_commitCreateTrigger__block_invoke;
  v13[3] = &unk_277DFB740;
  v13[4] = self;
  v11 = [v10 addSuccessBlock:v13];

  return v11;
}

- (id)commitEditTrigger
{
  v3 = [(HFTriggerBuilder *)self trigger];

  if (!v3)
  {
    NSLog(&cfstr_AttemptingToEd.isa);
  }

  v4 = [(HFTimerBasedTimeTriggerBuilder *)self eventBuilder];
  v5 = [HFTimerTriggerTimeEventAdapter adapterWithEventBuilder:v4];

  v6 = [(HFTriggerBuilder *)self trigger];
  v7 = [v5 updateTrigger:v6];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__HFTimerBasedTimeTriggerBuilder_commitEditTrigger__block_invoke;
  v12[3] = &unk_277DF8340;
  v12[4] = self;
  v8 = [v7 flatMap:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__HFTimerBasedTimeTriggerBuilder_commitEditTrigger__block_invoke_2;
  v11[3] = &unk_277DF2CE0;
  v11[4] = self;
  v9 = [v8 flatMap:v11];

  return v9;
}

- (id)_updateRecurrences
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__HFTimerBasedTimeTriggerBuilder__updateRecurrences__block_invoke;
  v9[3] = &unk_277DF2C68;
  v9[4] = self;
  v3 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__HFTimerBasedTimeTriggerBuilder__updateRecurrences__block_invoke_2;
  v8[3] = &unk_277DF2720;
  v8[4] = self;
  v4 = [v3 addSuccessBlock:v8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__HFTimerBasedTimeTriggerBuilder__updateRecurrences__block_invoke_33;
  v7[3] = &unk_277DF2D08;
  v7[4] = self;
  v5 = [v3 addFailureBlock:v7];

  return v3;
}

void __52__HFTimerBasedTimeTriggerBuilder__updateRecurrences__block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [*(a1 + 32) recurrences];
  v4 = [HFTimerTriggerCalendarEventAdapter hasWeekdayRecurrenceInRecurrences:v3];

  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v5 trigger];
    v7 = [*(a1 + 32) recurrences];
    [v6 updateRecurrences:v7 completionHandler:v12];
LABEL_5:

    goto LABEL_6;
  }

  v8 = [v5 recurrences];
  v9 = [v8 count];

  v10 = [*(a1 + 32) trigger];
  v6 = v10;
  if (v9)
  {
    v7 = [*(a1 + 32) recurrences];
    v11 = [v7 firstObject];
    [v6 updateRecurrence:v11 completionHandler:v12];

    goto LABEL_5;
  }

  [v10 updateRecurrences:0 completionHandler:v12];
LABEL_6:
}

void __52__HFTimerBasedTimeTriggerBuilder__updateRecurrences__block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) recurrences];
    v4 = [*(a1 + 32) name];
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "Updated recurrences: %@ for trigger with name: %@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __52__HFTimerBasedTimeTriggerBuilder__updateRecurrences__block_invoke_33(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 32) recurrences];
    v7 = [*(a1 + 32) name];
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Failed to update recurrences: %@ for trigger with name: %@. Error: %@", &v8, 0x20u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)_updateTimeZone
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__HFTimerBasedTimeTriggerBuilder__updateTimeZone__block_invoke;
  v9[3] = &unk_277DF2C68;
  v9[4] = self;
  v3 = [MEMORY[0x277D2C900] futureWithErrorOnlyHandlerAdapterBlock:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__HFTimerBasedTimeTriggerBuilder__updateTimeZone__block_invoke_2;
  v8[3] = &unk_277DF2720;
  v8[4] = self;
  v4 = [v3 addSuccessBlock:v8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__HFTimerBasedTimeTriggerBuilder__updateTimeZone__block_invoke_35;
  v7[3] = &unk_277DF2D08;
  v7[4] = self;
  v5 = [v3 addFailureBlock:v7];

  return v3;
}

void __49__HFTimerBasedTimeTriggerBuilder__updateTimeZone__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 trigger];
  v5 = [*(a1 + 32) timeZone];
  [v6 updateTimeZone:v5 completionHandler:v4];
}

void __49__HFTimerBasedTimeTriggerBuilder__updateTimeZone__block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) timeZone];
    v4 = [*(a1 + 32) name];
    v6 = 138412546;
    v7 = v3;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEFAULT, "Updated time zone: %@ for trigger with name: %@", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __49__HFTimerBasedTimeTriggerBuilder__updateTimeZone__block_invoke_35(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x2BuLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = [*(a1 + 32) timeZone];
    v7 = [*(a1 + 32) name];
    v8 = 138412802;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Failed to update time zone: %@ for trigger with name: %@. Error: %@", &v8, 0x20u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)copyCurrentStateFromTriggerBuilder:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  [(HFTriggerBuilder *)self setName:v5];

  v6 = [v4 eventBuilder];
  [(HFTimerBasedTimeTriggerBuilder *)self setEventBuilder:v6];

  v7 = [v4 recurrences];
  [(HFTimerBasedTimeTriggerBuilder *)self setRecurrences:v7];

  v8 = [v4 timeZone];

  [(HFTimerBasedTimeTriggerBuilder *)self setTimeZone:v8];
}

- (void)triggerEnabledStateDidChange:(BOOL)a3
{
  v3 = a3;
  objc_opt_class();
  v5 = [(HFTimerBasedTimeTriggerBuilder *)self eventBuilder];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v10 = v6;

  v7 = v10;
  if (v3)
  {
    if (v10)
    {
      v8 = [(HFTimerBasedTimeTriggerBuilder *)self recurrences];
      v9 = [v8 count];

      v7 = v10;
      if (!v9)
      {
        [v10 updateBaseFireDateForTrigger];
        v7 = v10;
      }
    }
  }
}

- (id)createNewTriggerBuilder
{
  v2 = [(HFItemBuilder *)self home];
  v3 = [v2 newTimerTriggerBuilder];

  return v3;
}

- (id)updateTriggerBuilder:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = HFTimerBasedTimeTriggerBuilder;
  v6 = [(HFTriggerBuilder *)&v16 updateTriggerBuilder:v5];
  objc_opt_class();
  v7 = v5;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = [(HFTimerBasedTimeTriggerBuilder *)self timeZone];
    [v9 setTimeZone:v10];

    v11 = [(HFTimerBasedTimeTriggerBuilder *)self eventBuilder];
    v12 = [HFTimerTriggerTimeEventAdapter adapterWithEventBuilder:v11];

    v13 = [(HFTimerBasedTimeTriggerBuilder *)self recurrences];
    v14 = [(HFItemBuilder *)self home];
    [v12 updateTriggerBuilder:v9 recurrences:v13 inHome:v14];
  }

  else
  {
    v12 = NSStringFromSelector(a2);
    NSLog(&cfstr_PassedAHmTrigg_0.isa, self, v12, v7);
  }

  return v6;
}

@end