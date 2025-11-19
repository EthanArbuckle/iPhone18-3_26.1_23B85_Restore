@interface EKEvent(CalendarUIKit)
- (BOOL)CUIK_deleteActionShouldDeclineEvent;
- (__CFString)CUIK_attendeesIconSymbolWithAttendeesIconState:()CalendarUIKit myParticipantStatus:;
- (__CFString)CUIK_symbolName:()CalendarUIKit;
- (id)CUIK_currentReminder;
- (id)CUIK_disabledSymbolColor;
- (id)CUIK_symbolColor;
- (uint64_t)CUIK_attendeesIconState;
- (uint64_t)_isFirstFutureOccurrenceReminder;
@end

@implementation EKEvent(CalendarUIKit)

- (uint64_t)CUIK_attendeesIconState
{
  v36 = *MEMORY[0x1E69E9840];
  if (![a1 hasAttendees])
  {
    return 0;
  }

  if (![a1 isSelfOrganized])
  {
    if ([a1 status] == 3)
    {
      return 10;
    }

    v21 = [a1 selfAttendee];
    v22 = [v21 participantStatus];

    if (v22)
    {
      v23 = [a1 selfAttendee];
      v24 = [v23 participantStatus];

      if (v24 == 3)
      {
        return 10;
      }

      else
      {
        return 8 * (v24 == 4);
      }
    }

    return 0;
  }

  [a1 attendeesNotIncludingOrganizer];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v2 = v33 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v31;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v31 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v30 + 1) + 8 * i);
        if ([v7 isLocationRoom] && objc_msgSend(v7, "participantStatus") == 3)
        {

          v20 = 5;
          goto LABEL_40;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v30 objects:v35 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = [a1 roomAttendees];
  v9 = [v8 count];
  v10 = [v2 count];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v2;
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = 0;
    v16 = *v27;
    while (2)
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v26 + 1) + 8 * j);
        if (v9 == v10 || ![*(*(&v26 + 1) + 8 * j) isLocationRoom] || objc_msgSend(v18, "participantStatus") != 2)
        {
          v19 = [v18 participantStatus];
          if (v14)
          {
            if (v15 != v19)
            {
              v20 = 6;
              goto LABEL_39;
            }

            v14 = 1;
          }

          else
          {
            v14 = 1;
            v15 = v19;
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }

    if (v14)
    {
      if (v15 >= 8)
      {
        v20 = 1;
      }

      else
      {
        v20 = qword_1CAD58000[v15];
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
LABEL_39:
  }

LABEL_40:

  return v20;
}

- (BOOL)CUIK_deleteActionShouldDeclineEvent
{
  v2 = [a1 calendar];
  v3 = [v2 source];
  if ([v3 sourceType] == 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = [a1 calendar];
    v6 = [v5 source];
    v4 = [v6 sourceType] != 2;
  }

  v7 = [a1 selfAttendee];
  v8 = [v7 participantStatus];

  v9 = [a1 status];
  v10 = [a1 currentUserGeneralizedParticipantRole];
  v11 = [a1 organizer];
  v12 = [v11 scheduleAgent];

  result = 0;
  if (!v4 && v10 == 1)
  {
    v15 = v9 != 3 && v12 == 2;
    return v8 != 3 && v15;
  }

  return result;
}

- (__CFString)CUIK_symbolName:()CalendarUIKit
{
  if ([a1 isIntegrationEvent])
  {
    v5 = [a1 completed];
    v6 = @"circle";
    v7 = @"circle.inset.filled";
    v8 = v5 == 0;
  }

  else
  {
    if ([a1 isBirthday])
    {
      return @"gift.circle.fill";
    }

    v10 = [a1 calendar];
    v11 = [v10 isHolidayCalendar];

    v6 = @"calendar.circle.fill";
    if (!a3)
    {
      v6 = 0;
    }

    v7 = @"star.circle.fill";
    v8 = v11 == 0;
  }

  if (v8)
  {
    return v6;
  }

  else
  {
    return v7;
  }
}

- (id)CUIK_symbolColor
{
  if ([a1 isIntegrationEvent])
  {
    v2 = [a1 color];
    v3 = v2;
    if (v2)
    {
      [v2 CUIK_color];
    }

    else
    {
      [MEMORY[0x1E69DC888] systemBlueColor];
    }
    v4 = ;
  }

  else
  {
    if ([a1 isBirthday])
    {
      [MEMORY[0x1E69DC888] systemRedColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] blackColor];
    }
    v4 = ;
  }

  return v4;
}

- (id)CUIK_disabledSymbolColor
{
  v1 = [a1 CUIK_symbolColor];
  v2 = [v1 cuik_colorWithAlphaScaled:0.4];

  return v2;
}

- (uint64_t)_isFirstFutureOccurrenceReminder
{
  if (![a1 isReminderIntegrationEvent])
  {
    return 0;
  }

  if (![a1 hasRecurrenceRules])
  {
    return 1;
  }

  v2 = [MEMORY[0x1E695DF00] CalSimulatedDateForNow];
  [v2 timeIntervalSinceReferenceDate];
  v4 = v3;
  v5 = [a1 startDate];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;

  v15 = 0;
  if (v4 < v7)
  {
    v8 = [a1 previousOccurrence];
    if (!v8 || (v9 = v8, [v8 startDate], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "timeIntervalSinceReferenceDate"), v12 = v11, objc_msgSend(v2, "timeIntervalSinceReferenceDate"), v14 = v13, v10, v9, v12 < v14))
    {
      v15 = 1;
    }
  }

  return v15;
}

- (id)CUIK_currentReminder
{
  v2 = [MEMORY[0x1E695DF00] CalSimulatedDateForNow];
  v3 = [MEMORY[0x1E695DFE8] defaultTimeZone];
  v4 = [v2 dateForEndOfDayInTimeZone:v3];
  v5 = [a1 masterEvent];
  v6 = objc_alloc_init(MEMORY[0x1E6966AC0]);
  v7 = [v5 timeZone];
  if (!v7)
  {
    v7 = v3;
  }

  v8 = [v5 startDate];
  v9 = [v6 copyOccurrenceDatesWithEKEvent:v5 startDate:v8 endDate:v4 timeZone:v7 limit:0];

  v10 = v5;
  if ([v9 count])
  {
    v11 = objc_alloc(MEMORY[0x1E6966A08]);
    v12 = [v5 persistentObject];
    v13 = [v9 lastObject];
    v10 = [v11 initWithPersistentObject:v12 occurrenceDate:v13];
  }

  return v10;
}

- (__CFString)CUIK_attendeesIconSymbolWithAttendeesIconState:()CalendarUIKit myParticipantStatus:
{
  v6 = [a1 currentUserGeneralizedParticipantRole];
  if (a4 == 3)
  {
    return @"person.fill.xmark";
  }

  if (v6 == 2 && (a3 - 1) <= 9)
  {
    return off_1E8399AB8[a3 - 1];
  }

  return 0;
}

@end