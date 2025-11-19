@interface CADStatsEvents
- (id)eventDictionaries;
- (void)prepareWithContext:(id)a3;
- (void)processEvents:(id)a3;
@end

@implementation CADStatsEvents

- (void)prepareWithContext:(id)a3
{
  v4 = objc_opt_new();
  eventInfos = self->_eventInfos;
  self->_eventInfos = v4;

  MEMORY[0x2821F96F8]();
}

- (void)processEvents:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = objc_opt_new();
        [(NSMutableArray *)self->_eventInfos addObject:v10];
        *(v10 + 8) = CalEventIsDetached();
        *(v10 + 9) = CalCalendarItemHasRecurrenceRules();
        *(v10 + 10) = CalCalendarItemIsAllDay();
        *(v10 + 32) = CalEventGetParticipationStatus();
        v11 = CalCalendarItemCopyPreferredLocation();
        *(v10 + 13) = v11 != 0;
        if (v11)
        {
          v12 = v11;
          *(v10 + 14) = CalLocationHasKnownSpatialData();
          CFRelease(v12);
        }

        *(v10 + 15) = CalCalendarItemHasClientLocation();
        *(v10 + 16) = CalEventPreferredLocationIsAConferenceRoom();
        *(v10 + 24) = CalEventGetTravelAdvisoryBehavior();
        *(v10 + 17) = CalEventIsCandidateForTravelAdvisories();
        *(v10 + 18) = CalEventIsImmediatelyEligibleForTravelAdvisories();
        *(v10 + 19) = CalEventHasPredictedLocation();
        v13 = CalCalendarItemCopyCalendar();
        if (v13)
        {
          v14 = v13;
          *(v10 + 20) = CalCalendarIsIgnoringEventAlerts();
          *(v10 + 21) = CalCalendarGetSharingStatus() != 0;
          *(v10 + 11) = CalCalendarIsBirthdayCalendar();
          *(v10 + 12) = CalCalendarIsHolidaySubscribedCalendar();
          CFRelease(v14);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)eventDictionaries
{
  v35 = *MEMORY[0x277D85DE8];
  v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_eventInfos, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = self->_eventInfos;
  v18 = [(NSMutableArray *)obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v18)
  {
    v16 = *v29;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v28 + 1) + 8 * i);
        v33[0] = &unk_2837C74B0;
        v32[0] = @"instance";
        v32[1] = @"isDetached";
        v27 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 8)];
        v33[1] = v27;
        v32[2] = @"hasRecurrenceRules";
        v26 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 9)];
        v33[2] = v26;
        v32[3] = @"isAllDay";
        v25 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 10)];
        v33[3] = v25;
        v32[4] = @"isBirthday";
        v24 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 11)];
        v33[4] = v24;
        v32[5] = @"isHoliday";
        v23 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 12)];
        v33[5] = v23;
        v32[6] = @"hasLocation";
        v22 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 13)];
        v33[6] = v22;
        v32[7] = @"locationHasKnownSpatialData";
        v21 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 14)];
        v33[7] = v21;
        v32[8] = @"hasClientLocation";
        v20 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 15)];
        v33[8] = v20;
        v32[9] = @"preferredLocationIsAConferenceRoom";
        v19 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 16)];
        v33[9] = v19;
        v32[10] = @"isCandidateForTravelAdvisories";
        v5 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 17)];
        v33[10] = v5;
        v32[11] = @"isImmediatelyEligibleForTravelAdvisories";
        v6 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 18)];
        v33[11] = v6;
        v32[12] = @"travelAdvisoryBehavior";
        v7 = [MEMORY[0x277CCABB0] numberWithInteger:*(v4 + 24)];
        v33[12] = v7;
        v32[13] = @"participationStatus";
        v8 = [MEMORY[0x277CCABB0] numberWithInteger:*(v4 + 32)];
        v33[13] = v8;
        v32[14] = @"hasPredictedLocation";
        v9 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 19)];
        v33[14] = v9;
        v32[15] = @"isOnCalendarIgnoringEventAlerts";
        v10 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 20)];
        v33[15] = v10;
        v32[16] = @"isOnSharedCalendar";
        v11 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 21)];
        v33[16] = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:17];
        [v17 addObject:v12];
      }

      v18 = [(NSMutableArray *)obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v18);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v17;
}

@end