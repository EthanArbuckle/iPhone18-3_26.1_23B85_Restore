@interface CADStatsOccurrences
- (id)eventDictionaries;
- (void)prepareWithContext:(id)a3;
- (void)processOccurrences:(id)a3;
@end

@implementation CADStatsOccurrences

- (void)prepareWithContext:(id)a3
{
  v4 = objc_opt_new();
  occurrenceInfos = self->_occurrenceInfos;
  self->_occurrenceInfos = v4;

  v13 = [MEMORY[0x277CBEA80] currentCalendar];
  v6 = objc_opt_new();
  now = self->_now;
  self->_now = v6;

  v8 = objc_alloc(MEMORY[0x277CF77A0]);
  v9 = [v13 dateByAddingUnit:16 value:-1 toDate:self->_now options:1024];
  v10 = [v13 dateByAddingUnit:16 value:365 toDate:self->_now options:1024];
  v11 = [v8 initWithStartDate:v9 endDate:v10];
  desiredOccurrenceRange = self->_desiredOccurrenceRange;
  self->_desiredOccurrenceRange = v11;
}

- (void)processOccurrences:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v37;
    do
    {
      v8 = 0;
      do
      {
        if (*v37 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v36 + 1) + 8 * v8);
        v10 = objc_opt_new();
        [(NSMutableArray *)self->_occurrenceInfos addObject:v10];
        Event = CalEventOccurrenceGetEvent();
        CalEventOccurrenceGetDate();
        v13 = v12;
        [(NSDate *)self->_now timeIntervalSinceReferenceDate];
        v15 = (v13 - v14) / 60.0;
        *(v10 + 72) = v15;
        *(v10 + 80) = v15 + CalEventGetDuration() / 60.0;
        *(v10 + 64) = CalEventGetDuration() / 60.0;
        *(v10 + 8) = CalEventIsAllDay();
        *(v10 + 11) = CalEventIsCandidateForTravelAdvisories();
        *(v10 + 12) = CalEventIsImmediatelyEligibleForTravelAdvisories();
        v16 = CalCalendarItemCopyAttendees();
        if (v16)
        {
          v17 = v16;
          Count = CFArrayGetCount(v16);
          *(v10 + 32) = Count;
          if (Count >= 1)
          {
            v19 = Count;
            v20 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v17, v20);
              v22 = MEMORY[0x22AA4B0E0](ValueAtIndex);
              if (v22)
              {
                break;
              }

              if (v19 == ++v20)
              {
                goto LABEL_13;
              }
            }

            *(v10 + 13) = 1;
            CFRelease(v22);
          }

LABEL_13:
          CFRelease(v17);
          if (*(v10 + 32))
          {
            v23 = CalCalendarItemCopyOrganizer();
            if (v23)
            {
              v24 = v23;
              *(v10 + 14) = CalOrganizerIsSelf();
              CFRelease(v24);
            }
          }
        }

        *(v10 + 56) = CalEventGetParticipationStatus();
        *(v10 + 48) = CalCalendarItemGetStatus();
        v25 = MEMORY[0x22AA4BFE0](Event);
        if (v25)
        {
          v26 = v25;
          v27 = CFArrayGetCount(v25);
          if (v27 >= 1)
          {
            v28 = v27;
            v29 = 0;
            while (1)
            {
              CFArrayGetValueAtIndex(v26, v29);
              if ((CalAlarmIsDefaultAlarm() & 1) == 0)
              {
                break;
              }

              if (v28 == ++v29)
              {
                goto LABEL_23;
              }
            }

            *(v10 + 15) = 1;
          }

LABEL_23:
          CFRelease(v26);
        }

        v30 = CalCalendarItemCopyPreferredLocation();
        *(v10 + 16) = v30 != 0;
        *(v10 + 17) = CalCalendarItemHasClientLocation();
        if (v30)
        {
          *(v10 + 18) = CalLocationHasKnownSpatialData();
          *(v10 + 19) = CalEventPreferredLocationIsAConferenceRoom();
          CFRelease(v30);
        }

        *(v10 + 20) = CalEventHasPredictedLocation();
        *(v10 + 40) = CalEventGetTravelAdvisoryBehavior();
        v31 = CalCalendarItemCopyCalendar();
        if (v31)
        {
          v32 = v31;
          *(v10 + 21) = CalCalendarIsIgnoringEventAlerts();
          *(v10 + 22) = CalCalendarGetSharingStatus() != 0;
          *(v10 + 9) = CalCalendarIsBirthdayCalendar();
          *(v10 + 10) = CalCalendarIsHolidaySubscribedCalendar();
          CFRelease(v32);
        }

        v33 = CalCalendarItemCopyURL();
        *(v10 + 23) = v33 != 0;
        if (v33)
        {
          CFRelease(v33);
        }

        v34 = CalCalendarItemCopyDescription();
        *(v10 + 24) = v34 != 0;
        if (v34)
        {
          CFRelease(v34);
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [v4 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v6);
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (id)eventDictionaries
{
  v44 = *MEMORY[0x277D85DE8];
  v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_occurrenceInfos, "count")}];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = self->_occurrenceInfos;
  v19 = [(NSMutableArray *)obj countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v19)
  {
    v17 = *v38;
    do
    {
      v3 = 0;
      do
      {
        if (*v38 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v37 + 1) + 8 * v3);
        v42[0] = &unk_2837C74C8;
        v41[0] = @"instance";
        v41[1] = @"minutesUntilStart";
        v35 = [MEMORY[0x277CCABB0] numberWithDouble:*(v4 + 72)];
        v42[1] = v35;
        v41[2] = @"minutesUntilEnd";
        v34 = [MEMORY[0x277CCABB0] numberWithDouble:*(v4 + 80)];
        v42[2] = v34;
        v41[3] = @"isAllDay";
        v33 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 8)];
        v42[3] = v33;
        v41[4] = @"isBirthday";
        v32 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 9)];
        v42[4] = v32;
        v41[5] = @"isHoliday";
        v31 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 10)];
        v42[5] = v31;
        v41[6] = @"isCandidateForTravelAdvisories";
        v30 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 11)];
        v42[6] = v30;
        v41[7] = @"isImmediatelyEligibleForTravelAdvisories";
        v29 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 12)];
        v42[7] = v29;
        v41[8] = @"hasResponseComment";
        v28 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 13)];
        v42[8] = v28;
        v41[9] = @"organizerIsSelf";
        v27 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 14)];
        v42[9] = v27;
        v41[10] = @"hasNonDefaultAlarm";
        v26 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 15)];
        v42[10] = v26;
        v41[11] = @"hasLocation";
        v25 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 16)];
        v42[11] = v25;
        v41[12] = @"hasClientLocation";
        v24 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 17)];
        v42[12] = v24;
        v41[13] = @"hasLocationWithKnownSpatialData";
        v23 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 18)];
        v42[13] = v23;
        v41[14] = @"hasConferenceRoomLocation";
        v22 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 19)];
        v42[14] = v22;
        v41[15] = @"hasPredictedLocation";
        v21 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 20)];
        v42[15] = v21;
        v41[16] = @"isOnCalendarThatSuppressesAlerts";
        v20 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 21)];
        v42[16] = v20;
        v41[17] = @"isOnSharedCalendar";
        v5 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 22)];
        v42[17] = v5;
        v41[18] = @"hasURL";
        v6 = [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 23)];
        v42[18] = v6;
        v41[19] = @"hasNotes";
        [MEMORY[0x277CCABB0] numberWithBool:*(v4 + 24)];
        v7 = v36 = v3;
        v42[19] = v7;
        v41[20] = @"numAttendees";
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(v4 + 32)];
        v42[20] = v8;
        v41[21] = @"travelAdvisoryBehavior";
        v9 = [MEMORY[0x277CCABB0] numberWithInteger:*(v4 + 40)];
        v42[21] = v9;
        v41[22] = @"status";
        v10 = [MEMORY[0x277CCABB0] numberWithInteger:*(v4 + 48)];
        v42[22] = v10;
        v41[23] = @"participationStatus";
        v11 = [MEMORY[0x277CCABB0] numberWithInteger:*(v4 + 56)];
        v42[23] = v11;
        v41[24] = @"durationInMinutes";
        v12 = [MEMORY[0x277CCABB0] numberWithDouble:*(v4 + 64)];
        v42[24] = v12;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:25];
        [v18 addObject:v13];

        v3 = v36 + 1;
      }

      while (v19 != v36 + 1);
      v19 = [(NSMutableArray *)obj countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v19);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v18;
}

@end