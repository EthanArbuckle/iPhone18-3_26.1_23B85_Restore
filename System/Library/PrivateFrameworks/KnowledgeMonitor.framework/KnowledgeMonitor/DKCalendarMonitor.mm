@interface DKCalendarMonitor
@end

@implementation DKCalendarMonitor

void __26___DKCalendarMonitor_init__block_invoke(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v5 = [MEMORY[0x277CFE0C8] knowledgeChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __26___DKCalendarMonitor_init__block_invoke_cold_1(a3, a2, v5);
  }
}

void __28___DKCalendarMonitor_update__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) lastUpdate];
  if (!v2)
  {
    v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-21600.0];
  }

  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = objc_alloc_init(MEMORY[0x277CC5A40]);
  v5 = [v4 predicateForEventsWithStartDate:v2 endDate:v3 calendars:0];
  v6 = [v4 eventsMatchingPredicate:v5];

  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v17 + 1) + 8 * v12) startDate];
        [v13 compare:v2];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [*(a1 + 32) historicalHandler];

  if (v14)
  {
    v15 = [*(a1 + 32) historicalHandler];
    (v15)[2](v15, v7);
  }

  [*(a1 + 32) setLastUpdate:{v3, v17}];

  v16 = *MEMORY[0x277D85DE8];
}

void __26___DKCalendarMonitor_init__block_invoke_cold_1(uint64_t a1, unsigned __int8 a2, os_log_t log)
{
  v5 = *MEMORY[0x277D85DE8];
  v4[0] = 67109120;
  v4[1] = (a1 == 0) & a2;
  _os_log_debug_impl(&dword_22595A000, log, OS_LOG_TYPE_DEBUG, "Calendar access granted? %d.", v4, 8u);
  v3 = *MEMORY[0x277D85DE8];
}

@end