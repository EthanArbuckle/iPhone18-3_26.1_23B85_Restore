@interface CADStatsReminders
- (id)reminderDictionaries;
- (void)prepareWithContext:(id)context;
- (void)processReminders:(id)reminders;
@end

@implementation CADStatsReminders

- (void)prepareWithContext:(id)context
{
  v4 = objc_opt_new();
  reminderInfos = self->_reminderInfos;
  self->_reminderInfos = v4;

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = objc_opt_new();
  now = self->_now;
  self->_now = v6;

  v8 = objc_alloc(MEMORY[0x277CF77A0]);
  v9 = [currentCalendar dateByAddingUnit:16 value:-1 toDate:self->_now options:1024];
  v10 = [currentCalendar dateByAddingUnit:16 value:14 toDate:self->_now options:1024];
  v11 = [v8 initWithStartDate:v9 endDate:v10];
  desiredReminderRange = self->_desiredReminderRange;
  self->_desiredReminderRange = v11;
}

- (void)processReminders:(id)reminders
{
  v16 = *MEMORY[0x277D85DE8];
  remindersCopy = reminders;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [remindersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(remindersCopy);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = objc_opt_new();
        v9[8] = CalEventIsAllDay();
        v9[9] = CalCalendarItemHasRecurrenceRules();

        ++v7;
      }

      while (v5 != v7);
      v5 = [remindersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)reminderDictionaries
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_reminderInfos, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = self->_reminderInfos;
  v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v20[0] = &unk_2837C7540;
        v19[0] = @"instance";
        v19[1] = @"isAllDay";
        v9 = [MEMORY[0x277CCABB0] numberWithBool:*(v8 + 8)];
        v20[1] = v9;
        v19[2] = @"hasRecurrenceRules";
        v10 = [MEMORY[0x277CCABB0] numberWithBool:*(v8 + 9)];
        v20[2] = v10;
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
        [v3 addObject:v11];
      }

      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

@end