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
  if (![self hasAttendees])
  {
    return 0;
  }

  if (![self isSelfOrganized])
  {
    if ([self status] == 3)
    {
      return 10;
    }

    selfAttendee = [self selfAttendee];
    participantStatus = [selfAttendee participantStatus];

    if (participantStatus)
    {
      selfAttendee2 = [self selfAttendee];
      participantStatus2 = [selfAttendee2 participantStatus];

      if (participantStatus2 == 3)
      {
        return 10;
      }

      else
      {
        return 8 * (participantStatus2 == 4);
      }
    }

    return 0;
  }

  [self attendeesNotIncludingOrganizer];
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

  roomAttendees = [self roomAttendees];
  v9 = [roomAttendees count];
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
          participantStatus3 = [v18 participantStatus];
          if (v14)
          {
            if (v15 != participantStatus3)
            {
              v20 = 6;
              goto LABEL_39;
            }

            v14 = 1;
          }

          else
          {
            v14 = 1;
            v15 = participantStatus3;
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
  calendar = [self calendar];
  source = [calendar source];
  if ([source sourceType] == 1)
  {
    v4 = 0;
  }

  else
  {
    calendar2 = [self calendar];
    source2 = [calendar2 source];
    v4 = [source2 sourceType] != 2;
  }

  selfAttendee = [self selfAttendee];
  participantStatus = [selfAttendee participantStatus];

  status = [self status];
  currentUserGeneralizedParticipantRole = [self currentUserGeneralizedParticipantRole];
  organizer = [self organizer];
  scheduleAgent = [organizer scheduleAgent];

  result = 0;
  if (!v4 && currentUserGeneralizedParticipantRole == 1)
  {
    v15 = status != 3 && scheduleAgent == 2;
    return participantStatus != 3 && v15;
  }

  return result;
}

- (__CFString)CUIK_symbolName:()CalendarUIKit
{
  if ([self isIntegrationEvent])
  {
    completed = [self completed];
    v6 = @"circle";
    v7 = @"circle.inset.filled";
    v8 = completed == 0;
  }

  else
  {
    if ([self isBirthday])
    {
      return @"gift.circle.fill";
    }

    calendar = [self calendar];
    isHolidayCalendar = [calendar isHolidayCalendar];

    v6 = @"calendar.circle.fill";
    if (!a3)
    {
      v6 = 0;
    }

    v7 = @"star.circle.fill";
    v8 = isHolidayCalendar == 0;
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
  if ([self isIntegrationEvent])
  {
    color = [self color];
    v3 = color;
    if (color)
    {
      [color CUIK_color];
    }

    else
    {
      [MEMORY[0x1E69DC888] systemBlueColor];
    }
    v4 = ;
  }

  else
  {
    if ([self isBirthday])
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
  cUIK_symbolColor = [self CUIK_symbolColor];
  v2 = [cUIK_symbolColor cuik_colorWithAlphaScaled:0.4];

  return v2;
}

- (uint64_t)_isFirstFutureOccurrenceReminder
{
  if (![self isReminderIntegrationEvent])
  {
    return 0;
  }

  if (![self hasRecurrenceRules])
  {
    return 1;
  }

  calSimulatedDateForNow = [MEMORY[0x1E695DF00] CalSimulatedDateForNow];
  [calSimulatedDateForNow timeIntervalSinceReferenceDate];
  v4 = v3;
  startDate = [self startDate];
  [startDate timeIntervalSinceReferenceDate];
  v7 = v6;

  v15 = 0;
  if (v4 < v7)
  {
    previousOccurrence = [self previousOccurrence];
    if (!previousOccurrence || (v9 = previousOccurrence, [previousOccurrence startDate], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "timeIntervalSinceReferenceDate"), v12 = v11, objc_msgSend(calSimulatedDateForNow, "timeIntervalSinceReferenceDate"), v14 = v13, v10, v9, v12 < v14))
    {
      v15 = 1;
    }
  }

  return v15;
}

- (id)CUIK_currentReminder
{
  calSimulatedDateForNow = [MEMORY[0x1E695DF00] CalSimulatedDateForNow];
  defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
  v4 = [calSimulatedDateForNow dateForEndOfDayInTimeZone:defaultTimeZone];
  masterEvent = [self masterEvent];
  v6 = objc_alloc_init(MEMORY[0x1E6966AC0]);
  timeZone = [masterEvent timeZone];
  if (!timeZone)
  {
    timeZone = defaultTimeZone;
  }

  startDate = [masterEvent startDate];
  v9 = [v6 copyOccurrenceDatesWithEKEvent:masterEvent startDate:startDate endDate:v4 timeZone:timeZone limit:0];

  v10 = masterEvent;
  if ([v9 count])
  {
    v11 = objc_alloc(MEMORY[0x1E6966A08]);
    persistentObject = [masterEvent persistentObject];
    lastObject = [v9 lastObject];
    v10 = [v11 initWithPersistentObject:persistentObject occurrenceDate:lastObject];
  }

  return v10;
}

- (__CFString)CUIK_attendeesIconSymbolWithAttendeesIconState:()CalendarUIKit myParticipantStatus:
{
  currentUserGeneralizedParticipantRole = [self currentUserGeneralizedParticipantRole];
  if (a4 == 3)
  {
    return @"person.fill.xmark";
  }

  if (currentUserGeneralizedParticipantRole == 2 && (a3 - 1) <= 9)
  {
    return off_1E8399AB8[a3 - 1];
  }

  return 0;
}

@end