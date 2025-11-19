@interface CADStatsPreferences
- (CADStatsPreferences)init;
- (id)eventDictionaries;
@end

@implementation CADStatsPreferences

- (CADStatsPreferences)init
{
  v6.receiver = self;
  v6.super_class = CADStatsPreferences;
  v2 = [(CADStatsPreferences *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    payload = v2->payload;
    v2->payload = v3;
  }

  return v2;
}

- (id)eventDictionaries
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CF7818]);
  v4 = [v3 initWithDomain:*MEMORY[0x277CF7A58]];
  v5 = [v4 getValueForPreference:@"overlayCalendarID" expectedClass:objc_opt_class()];
  [(NSMutableDictionary *)self->payload setObject:v5 forKeyedSubscript:@"overlayCalendarID"];

  if ([MEMORY[0x277D218D0] isLunarCalendarDefaultOn])
  {
    v6 = MEMORY[0x277D218D0];
    v7 = [MEMORY[0x277CBEAF8] currentLocale];
    v8 = [v7 localeIdentifier];
    v9 = [v6 preferredLunarCalendarForLocaleID:v8];
    [(NSMutableDictionary *)self->payload setObject:v9 forKeyedSubscript:@"defaultOverlayCalendarID"];
  }

  v10 = MEMORY[0x277CCABB0];
  v11 = [MEMORY[0x277CF74E0] shared];
  v12 = [v10 numberWithBool:{objc_msgSend(v11, "get_enableTravelAdvisoriesForAutomaticBehavior")}];
  [(NSMutableDictionary *)self->payload setObject:v12 forKeyedSubscript:@"travelAdvisoryEnabled"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "getBooleanPreference:defaultValue:", @"ShowWeekNumbers", 0)}];
  [(NSMutableDictionary *)self->payload setObject:v13 forKeyedSubscript:@"weekNumbersEnabled"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v4, "getBooleanPreference:defaultValue:", @"ShowDeclinedEvents", 0)}];
  [(NSMutableDictionary *)self->payload setObject:v14 forKeyedSubscript:@"declinedEventsEnabled"];

  v18[0] = self->payload;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end