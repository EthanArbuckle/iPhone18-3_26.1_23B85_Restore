@interface HFTimerBasedTimeTriggerBuilder
- (HFTimerBasedTimeTriggerBuilder)initWithExistingObject:(id)object inHome:(id)home context:(id)context;
- (id)_updateRecurrences;
- (id)_updateTimeZone;
- (id)commitCreateTrigger;
- (id)commitEditTrigger;
- (id)createNewTriggerBuilder;
- (id)updateTriggerBuilder:(id)builder;
- (void)_setupWithExistingTrigger:(id)trigger;
- (void)copyCurrentStateFromTriggerBuilder:(id)builder;
- (void)triggerEnabledStateDidChange:(BOOL)change;
@end

@implementation HFTimerBasedTimeTriggerBuilder

- (HFTimerBasedTimeTriggerBuilder)initWithExistingObject:(id)object inHome:(id)home context:(id)context
{
  objectCopy = object;
  v14.receiver = self;
  v14.super_class = HFTimerBasedTimeTriggerBuilder;
  v10 = [(HFTriggerBuilder *)&v14 initWithExistingObject:objectCopy inHome:home context:context];
  v11 = v10;
  if (objectCopy && v10)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v11 file:@"HFConcreteTimeTriggerBuilder.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"[object isKindOfClass:[HMTimerTrigger class]]"}];
    }

    [(HFTimerBasedTimeTriggerBuilder *)v11 _setupWithExistingTrigger:objectCopy];
  }

  return v11;
}

- (void)_setupWithExistingTrigger:(id)trigger
{
  triggerCopy = trigger;
  timeZone = [triggerCopy timeZone];
  [(HFTimerBasedTimeTriggerBuilder *)self setTimeZone:timeZone];

  recurrences = [triggerCopy recurrences];

  if (recurrences)
  {
    recurrences2 = [triggerCopy recurrences];
    [(HFTimerBasedTimeTriggerBuilder *)self setRecurrences:recurrences2];
  }

  else
  {
    recurrence = [triggerCopy recurrence];

    if (recurrence)
    {
      v8 = MEMORY[0x277CBEA60];
      recurrence2 = [triggerCopy recurrence];
      v10 = [v8 na_arrayWithSafeObject:recurrence2];
      [(HFTimerBasedTimeTriggerBuilder *)self setRecurrences:v10];
    }

    else
    {
      [(HFTimerBasedTimeTriggerBuilder *)self setRecurrences:MEMORY[0x277CBEBF8]];
    }
  }

  fireDate = [triggerCopy fireDate];

  if (fireDate)
  {
    v12 = objc_alloc_init(HFCalendarEventBuilder);
    fireDate2 = [triggerCopy fireDate];
    [(HFCalendarEventBuilder *)v12 setFireDate:fireDate2];
  }

  else
  {
    significantEvent = [triggerCopy significantEvent];

    if (!significantEvent)
    {
      goto LABEL_11;
    }

    v12 = objc_alloc_init(HFSignificantTimeEventBuilder);
    significantEvent2 = [triggerCopy significantEvent];
    [(HFCalendarEventBuilder *)v12 setSignificantEvent:significantEvent2];

    fireDate2 = [triggerCopy significantEventOffset];
    [(HFCalendarEventBuilder *)v12 setSignificantEventOffset:fireDate2];
  }

  [(HFTimerBasedTimeTriggerBuilder *)self setEventBuilder:v12];
LABEL_11:
}

- (id)commitCreateTrigger
{
  trigger = [(HFTriggerBuilder *)self trigger];

  if (trigger)
  {
    NSLog(&cfstr_AttemptingToCr_0.isa);
  }

  eventBuilder = [(HFTimerBasedTimeTriggerBuilder *)self eventBuilder];
  v5 = [HFTimerTriggerTimeEventAdapter adapterWithEventBuilder:eventBuilder];

  recurrences = [(HFTimerBasedTimeTriggerBuilder *)self recurrences];
  if ([recurrences count])
  {
    recurrences2 = [(HFTimerBasedTimeTriggerBuilder *)self recurrences];
  }

  else
  {
    recurrences2 = 0;
  }

  name = [(HFTriggerBuilder *)self name];
  timeZone = [(HFTimerBasedTimeTriggerBuilder *)self timeZone];
  v10 = [v5 createTriggerWithName:name timeZone:timeZone recurrences:recurrences2];
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
  trigger = [(HFTriggerBuilder *)self trigger];

  if (!trigger)
  {
    NSLog(&cfstr_AttemptingToEd.isa);
  }

  eventBuilder = [(HFTimerBasedTimeTriggerBuilder *)self eventBuilder];
  v5 = [HFTimerTriggerTimeEventAdapter adapterWithEventBuilder:eventBuilder];

  trigger2 = [(HFTriggerBuilder *)self trigger];
  v7 = [v5 updateTrigger:trigger2];
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

- (void)copyCurrentStateFromTriggerBuilder:(id)builder
{
  builderCopy = builder;
  name = [builderCopy name];
  [(HFTriggerBuilder *)self setName:name];

  eventBuilder = [builderCopy eventBuilder];
  [(HFTimerBasedTimeTriggerBuilder *)self setEventBuilder:eventBuilder];

  recurrences = [builderCopy recurrences];
  [(HFTimerBasedTimeTriggerBuilder *)self setRecurrences:recurrences];

  timeZone = [builderCopy timeZone];

  [(HFTimerBasedTimeTriggerBuilder *)self setTimeZone:timeZone];
}

- (void)triggerEnabledStateDidChange:(BOOL)change
{
  changeCopy = change;
  objc_opt_class();
  eventBuilder = [(HFTimerBasedTimeTriggerBuilder *)self eventBuilder];
  if (objc_opt_isKindOfClass())
  {
    v6 = eventBuilder;
  }

  else
  {
    v6 = 0;
  }

  v10 = v6;

  v7 = v10;
  if (changeCopy)
  {
    if (v10)
    {
      recurrences = [(HFTimerBasedTimeTriggerBuilder *)self recurrences];
      v9 = [recurrences count];

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
  home = [(HFItemBuilder *)self home];
  newTimerTriggerBuilder = [home newTimerTriggerBuilder];

  return newTimerTriggerBuilder;
}

- (id)updateTriggerBuilder:(id)builder
{
  builderCopy = builder;
  v16.receiver = self;
  v16.super_class = HFTimerBasedTimeTriggerBuilder;
  v6 = [(HFTriggerBuilder *)&v16 updateTriggerBuilder:builderCopy];
  objc_opt_class();
  v7 = builderCopy;
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
    timeZone = [(HFTimerBasedTimeTriggerBuilder *)self timeZone];
    [v9 setTimeZone:timeZone];

    eventBuilder = [(HFTimerBasedTimeTriggerBuilder *)self eventBuilder];
    v12 = [HFTimerTriggerTimeEventAdapter adapterWithEventBuilder:eventBuilder];

    recurrences = [(HFTimerBasedTimeTriggerBuilder *)self recurrences];
    home = [(HFItemBuilder *)self home];
    [v12 updateTriggerBuilder:v9 recurrences:recurrences inHome:home];
  }

  else
  {
    v12 = NSStringFromSelector(a2);
    NSLog(&cfstr_PassedAHmTrigg_0.isa, self, v12, v7);
  }

  return v6;
}

@end