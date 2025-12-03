@interface CaliTIPHandler
+ (BOOL)diffsAreImportant:(id)important;
+ (BOOL)doScheduleChanges:(id)changes applyToEvent:(id)event inCalendar:(id)calendar;
+ (BOOL)handleEvent:(id)event calEvent:(void *)calEvent eventID:(id)d database:(CalDatabase *)database message:(id)message accountInfo:(id)info;
+ (BOOL)isAddressMe:(id)me withAccountInfo:(id)info;
+ (BOOL)myStatusNeedsActionForEvent:(id)event withAccountInfo:(id)info;
+ (id)_calculateDiffsForCalEvent:(void *)event icsEvent:(id)icsEvent inMessage:(id)message;
+ (id)debugStringForEvent:(id)event;
+ (id)getOccurrenceChange:(id)change forEvent:(id)event inCalendar:(id)calendar;
+ (id)myAddressWithAccountInfo:(id)info forEvent:(id)event;
+ (void)copyEventInStore:(void *)store appropriateForHandlingMessageForEventUID:(id)d inDatabase:(CalDatabase *)database;
+ (void)processMessage:(id)message withDatabase:(CalDatabase *)database calStore:(void *)store accountInfo:(id)info handledEventCallback:(id)callback options:(unint64_t)options;
+ (void)processMessages:(id)messages withDatabase:(CalDatabase *)database calStore:(void *)store accountInfo:(id)info handledEventCallback:(id)callback cancellationToken:(id)token options:(unint64_t)options;
@end

@implementation CaliTIPHandler

+ (void)processMessages:(id)messages withDatabase:(CalDatabase *)database calStore:(void *)store accountInfo:(id)info handledEventCallback:(id)callback cancellationToken:(id)token options:(unint64_t)options
{
  v33 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  callbackCopy = callback;
  tokenCopy = token;
  allObjects = [messages allObjects];
  v16 = [allObjects sortedArrayUsingSelector:sel_compare_];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v29;
LABEL_3:
    v21 = 0;
    while (1)
    {
      if (*v29 != v20)
      {
        objc_enumerationMutation(v17);
      }

      v22 = *(*(&v28 + 1) + 8 * v21);
      if ([tokenCopy isCancelled])
      {
        break;
      }

      event = [v22 event];

      if (event)
      {
        [self processMessage:v22 withDatabase:database calStore:store accountInfo:infoCopy handledEventCallback:callbackCopy options:options];
      }

      if (v19 == ++v21)
      {
        v19 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v19)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

+ (BOOL)diffsAreImportant:(id)important
{
  importantCopy = important;
  if ([importantCopy containsObject:II_LOCATION_KEY] & 1) != 0 || (objc_msgSend(importantCopy, "containsObject:", II_ALL_DAY_KEY) & 1) != 0 || (objc_msgSend(importantCopy, "containsObject:", II_FROM_KEY) & 1) != 0 || (objc_msgSend(importantCopy, "containsObject:", II_VIDEOCONFERENCE_KEY))
  {
    v4 = 1;
  }

  else
  {
    v4 = [importantCopy containsObject:II_RECURRENCE_KEY];
  }

  return v4;
}

+ (id)debugStringForEvent:(id)event
{
  eventCopy = event;
  recurrence_id = [eventCopy recurrence_id];

  if (recurrence_id)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [eventCopy uid];
    recurrence_id2 = [eventCopy recurrence_id];
    value = [recurrence_id2 value];
    v9 = [v5 stringWithFormat:@"%@ (%@)", v6, value];
  }

  else
  {
    v9 = [eventCopy uid];
  }

  return v9;
}

+ (id)getOccurrenceChange:(id)change forEvent:(id)event inCalendar:(id)calendar
{
  v43 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  eventCopy = event;
  calendarCopy = calendar;
  recurrence_id = [eventCopy recurrence_id];

  if (recurrence_id)
  {
    selfCopy = self;
    recurrence_id2 = [eventCopy recurrence_id];
    v13 = [calendarCopy systemDateForDate:recurrence_id2 options:1];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    recurrenceIDs = [changeCopy recurrenceIDs];
    v15 = [recurrenceIDs countByEnumeratingWithState:&v36 objects:v42 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v37;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v37 != v17)
          {
            objc_enumerationMutation(recurrenceIDs);
          }

          v19 = *(*(&v36 + 1) + 8 * i);
          v20 = [calendarCopy systemDateForDate:v19 options:1];
          if ([v13 isEqual:v20])
          {
            v21 = CDBLogHandle;
            if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
            {
              v22 = v21;
              v23 = [selfCopy debugStringForEvent:eventCopy];
              *buf = 138412290;
              v41 = v23;
              _os_log_impl(&dword_1DEBB1000, v22, OS_LOG_TYPE_DEBUG, "event has occurrence change: %@", buf, 0xCu);
            }

            masterChange2 = [changeCopy changeForOccurrence:v19];

            goto LABEL_23;
          }
        }

        v16 = [recurrenceIDs countByEnumeratingWithState:&v36 objects:v42 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    self = selfCopy;
    goto LABEL_16;
  }

  recurrenceIDs2 = [changeCopy recurrenceIDs];
  if ([recurrenceIDs2 count])
  {
    masterChange = [changeCopy masterChange];

    if (!masterChange)
    {
LABEL_16:
      v27 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v28 = v27;
        v29 = [self debugStringForEvent:eventCopy];
        *buf = 138412290;
        v41 = v29;
        _os_log_impl(&dword_1DEBB1000, v28, OS_LOG_TYPE_DEBUG, "event does NOT have occurrence change: %@", buf, 0xCu);
      }

      masterChange2 = 0;
      goto LABEL_23;
    }
  }

  else
  {
  }

  v30 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v31 = v30;
    v32 = [self debugStringForEvent:eventCopy];
    *buf = 138412290;
    v41 = v32;
    _os_log_impl(&dword_1DEBB1000, v31, OS_LOG_TYPE_DEBUG, "event has occurrence change: %@", buf, 0xCu);
  }

  masterChange2 = [changeCopy masterChange];
LABEL_23:

  v33 = *MEMORY[0x1E69E9840];

  return masterChange2;
}

+ (BOOL)doScheduleChanges:(id)changes applyToEvent:(id)event inCalendar:(id)calendar
{
  v30 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  eventCopy = event;
  calendarCopy = calendar;
  if ([changesCopy isCreate])
  {
    v10 = 1;
  }

  else
  {
    recurrence_id = [eventCopy recurrence_id];

    if (recurrence_id)
    {
      recurrence_id2 = [eventCopy recurrence_id];
      recurrenceIDs2 = [calendarCopy systemDateForDate:recurrence_id2 options:1];

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      recurrenceIDs = [changesCopy recurrenceIDs];
      v15 = [recurrenceIDs countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v15)
      {
        v16 = v15;
        v24 = eventCopy;
        v17 = *v26;
LABEL_6:
        v18 = 0;
        while (1)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(recurrenceIDs);
          }

          v10 = 1;
          v19 = [calendarCopy systemDateForDate:*(*(&v25 + 1) + 8 * v18) options:1];
          v20 = [recurrenceIDs2 isEqual:v19];

          if (v20)
          {
            break;
          }

          if (v16 == ++v18)
          {
            v16 = [recurrenceIDs countByEnumeratingWithState:&v25 objects:v29 count:16];
            if (v16)
            {
              goto LABEL_6;
            }

            v10 = 0;
            break;
          }
        }

        eventCopy = v24;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      recurrenceIDs2 = [changesCopy recurrenceIDs];
      if ([recurrenceIDs2 count])
      {
        masterChange = [changesCopy masterChange];
        v10 = masterChange != 0;
      }

      else
      {
        v10 = 1;
      }
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (BOOL)isAddressMe:(id)me withAccountInfo:(id)info
{
  infoCopy = info;
  absoluteString = [me absoluteString];
  v7 = [infoCopy addressIsAccountOwner:absoluteString];

  return v7;
}

+ (id)myAddressWithAccountInfo:(id)info forEvent:(id)event
{
  v23 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  attendee = [event attendee];
  v8 = [attendee countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(attendee);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        value = [v12 value];
        v14 = [self isAddressMe:value withAccountInfo:infoCopy];

        if (v14)
        {
          v15 = v12;
          goto LABEL_11;
        }
      }

      v9 = [attendee countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (BOOL)myStatusNeedsActionForEvent:(id)event withAccountInfo:(id)info
{
  v23 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  attendee = [event attendee];
  v8 = [attendee countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(attendee);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if ([v12 partstat] < 2 || objc_msgSend(v12, "rsvp"))
        {
          value = [v12 value];
          v14 = [self isAddressMe:value withAccountInfo:infoCopy];

          if (v14)
          {
            v15 = 1;
            goto LABEL_13;
          }
        }
      }

      v9 = [attendee countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_13:

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (void)copyEventInStore:(void *)store appropriateForHandlingMessageForEventUID:(id)d inDatabase:(CalDatabase *)database
{
  v20 = *MEMORY[0x1E69E9840];
  if (store)
  {
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = CalDatabaseCopyAllEventsWithUniqueIdentifierInStore(database, d, store);
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          if (CalEventIsOnCalendarThatAllowsScheduling(v9))
          {
            v6 = CFRetain(v9);
            goto LABEL_14;
          }

          v10 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v18 = v9;
            _os_log_impl(&dword_1DEBB1000, v10, OS_LOG_TYPE_INFO, "Rejecting candidate event for iTIP message because it is on a calendar that does not allow scheduling %@", buf, 0xCu);
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v13 objects:v19 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    v6 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (void)processMessage:(id)message withDatabase:(CalDatabase *)database calStore:(void *)store accountInfo:(id)info handledEventCallback:(id)callback options:(unint64_t)options
{
  optionsCopy = options;
  v85 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  infoCopy = info;
  callbackCopy = callback;
  v71 = messageCopy;
  calendar = [messageCopy calendar];
  allOccurrences = [messageCopy allOccurrences];
  v13 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v14 = v13;
    filename = [messageCopy filename];
    *buf = 138412546;
    v82 = filename;
    v83 = 2048;
    v84 = [allOccurrences count];
    _os_log_impl(&dword_1DEBB1000, v14, OS_LOG_TYPE_DEBUG, "process: ++++ %@ (contains %lu occurrences)", buf, 0x16u);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = allOccurrences;
  v16 = [obj countByEnumeratingWithState:&v76 objects:v80 count:16];
  if (v16)
  {
    v70 = 0;
    v73 = *v77;
    v18 = *MEMORY[0x1E6993100];
    *&v17 = 138412546;
    v65 = v17;
    do
    {
      v19 = 0;
      do
      {
        if (*v77 != v73)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v76 + 1) + 8 * v19);
        v21 = [v20 uid];
        v22 = v20;
        v23 = calendar;
        recurrence_id = [v22 recurrence_id];

        *&v25 = v18;
        if (recurrence_id)
        {
          recurrence_id2 = [v22 recurrence_id];
          DateTimeFromICSDate = CalCreateDateTimeFromICSDate(recurrence_id2, v23);

          CalDateTimeRelease();
          v25 = DateTimeFromICSDate;
        }

        v28 = *&v25 != 0.0 && *&v25 != v18;
        if (v28)
        {
          v29 = [v22 uid];
          v30 = CalGetRecurrenceUIDFromRealUID(v29, *&v25);

          v21 = v30;
        }

        method = [v23 method];
        v32 = method;
        Copy = 0;
        v34 = 1;
        if (method <= 5 && ((1 << method) & 0x2C) != 0)
        {
          Copy = [self copyEventInStore:store appropriateForHandlingMessageForEventUID:v21 inDatabase:database];
          if (Copy)
          {
            goto LABEL_18;
          }

          if (v32 == 3 && (v28 & [v71 iMIPImported]) == 1)
          {
            v42 = [v22 uid];
            v43 = [self copyEventInStore:store appropriateForHandlingMessageForEventUID:v42 inDatabase:database];

            v44 = CDBLogHandle;
            if (v43)
            {
              if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v82 = v21;
                _os_log_impl(&dword_1DEBB1000, v44, OS_LOG_TYPE_INFO, "Making a new detachment with UID %@ for iTIP REPLY.", buf, 0xCu);
              }

              Copy = CalCalendarItemCreateCopy(v43, 0);
              CalEventRemoveAllRecurrences();
              CalEventAddDetachedEvent(v43, Copy);
              CalEventSetOriginalStartDate(Copy, *&v25);
              started = CalEventCopyStartTimeZone(Copy);
              v46 = CalCFTimeZoneCopyCalTimeZone();
              CalEventSetStartDate(Copy, v25, v46);
              Duration = CalEventGetDuration(v43);
              CalEventSetEndDate(Copy, *&v25 + Duration);
              if (v46)
              {
                CFRelease(v46);
              }

              if (Copy)
              {
LABEL_18:
                if ((v70 & 1) != 0 && CalEventIsDetached(Copy) && (CalEventIsSignificantlyDetachedIgnoringParticipation(Copy) & 1) == 0 && ((v35 = [v71 iMIPImported], v32 == 3) ? (v36 = v35) : (v36 = 0), (v36 & 1) == 0))
                {
                  v57 = CDBLogHandle;
                  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v82 = v21;
                    _os_log_impl(&dword_1DEBB1000, v57, OS_LOG_TYPE_INFO, "Ignoring inbox item %@ because it's detached but not significantly", buf, 0xCu);
                  }
                }

                else
                {
                  if ((optionsCopy & 1) == 0)
                  {
                    goto LABEL_28;
                  }

                  v37 = v22;
                  sequence = [v37 sequence];
                  SequenceNumber = CalEventGetSequenceNumber(Copy);
                  if (sequence > SequenceNumber)
                  {

                    goto LABEL_28;
                  }

                  if (v32 == 3 || sequence < SequenceNumber)
                  {
                    v55 = sequence < SequenceNumber;

                    if (v55)
                    {
                      goto LABEL_56;
                    }
                  }

                  else
                  {
                    ModifiedDate = CalCalendarItemCopyLastModifiedDate(Copy);
                    v50 = ModifiedDate;
                    v51 = v18;
                    if (ModifiedDate)
                    {
                      v51 = MEMORY[0x1E12C5EF0](ModifiedDate);
                      CFRelease(v50);
                    }

                    last_modified = [v37 last_modified];
                    v53 = CalDateFromICSDateAsUTC(last_modified);

                    if (v53 == v18)
                    {
                      dtstamp = [v37 dtstamp];
                      v53 = CalDateFromICSDateAsUTC(dtstamp);
                    }

                    if (v51 > v53)
                    {
LABEL_56:
                      v56 = CDBLogHandle;
                      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412290;
                        v82 = v21;
                        _os_log_impl(&dword_1DEBB1000, v56, OS_LOG_TYPE_INFO, "Ignoring message %@ because it's older than what's already in the database.", buf, 0xCu);
                      }

                      iMIPImported = [v71 iMIPImported];
                      goto LABEL_29;
                    }
                  }

LABEL_28:
                  iMIPImported = [self handleEvent:v22 calEvent:Copy eventID:v21 database:database message:v71 accountInfo:infoCopy];
LABEL_29:
                  if (iMIPImported)
                  {
                    v41 = CDBLogHandle;
                    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v82 = v21;
                      _os_log_impl(&dword_1DEBB1000, v41, OS_LOG_TYPE_DEBUG, "Event with identifier %@ handled message.", buf, 0xCu);
                    }

                    if (callbackCopy)
                    {
                      callbackCopy[2]();
                    }

                    v70 = 1;
LABEL_65:
                    CFRelease(Copy);
                    goto LABEL_66;
                  }
                }

                v34 = 0;
                goto LABEL_62;
              }
            }

            else
            {
              v59 = CDBLogHandle;
              if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
              {
                v60 = [v22 uid];
                *buf = v65;
                v82 = v21;
                v83 = 2112;
                v84 = v60;
                _os_log_impl(&dword_1DEBB1000, v59, OS_LOG_TYPE_INFO, "Could not find a valid event in the calendar database with uid %@. Also couldn't find the original event with uid %@.", buf, 0x16u);
              }

              Copy = 0;
            }

            v34 = 1;
          }

          else
          {
            v48 = CDBLogHandle;
            if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v82 = v21;
              _os_log_impl(&dword_1DEBB1000, v48, OS_LOG_TYPE_INFO, "Could not find a valid event in the calendar database with uid %@", buf, 0xCu);
            }

            Copy = 0;
          }
        }

LABEL_62:
        v58 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v82 = v21;
          _os_log_impl(&dword_1DEBB1000, v58, OS_LOG_TYPE_DEBUG, "Event with identifier %@ didn't handle the message; looking at the next event.", buf, 0xCu);
        }

        if ((v34 & 1) == 0)
        {
          goto LABEL_65;
        }

LABEL_66:

        ++v19;
      }

      while (v16 != v19);
      v61 = [obj countByEnumeratingWithState:&v76 objects:v80 count:16];
      v16 = v61;
    }

    while (v61);
  }

  v62 = CDBLogHandle;
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
  {
    filename2 = [v71 filename];
    *buf = 138412290;
    v82 = filename2;
    _os_log_impl(&dword_1DEBB1000, v62, OS_LOG_TYPE_DEBUG, "process: ~~~~ leaving message: %@", buf, 0xCu);
  }

  v64 = *MEMORY[0x1E69E9840];
}

+ (BOOL)handleEvent:(id)event calEvent:(void *)calEvent eventID:(id)d database:(CalDatabase *)database message:(id)message accountInfo:(id)info
{
  v82 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  dCopy = d;
  messageCopy = message;
  infoCopy = info;
  calendar = [messageCopy calendar];
  method = [calendar method];
  switch(method)
  {
    case 5:
      v31 = [self myStatusNeedsActionForEvent:eventCopy withAccountInfo:infoCopy];
      LODWORD(self) = [messageCopy iMIPImported];
      if (self)
      {
        CalEventSetStatus(calEvent, 3);
      }

      v32 = CDBLogHandle;
      v33 = os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO);
      if (v31)
      {
        if (v33)
        {
          v34 = v32;
          *buf = 67109120;
          LODWORD(v81) = CalCalendarItemGetRowID();
          _os_log_impl(&dword_1DEBB1000, v34, OS_LOG_TYPE_INFO, "Found a cancellation for an event (%d) that was proposed or invitee not yet accepted. Hiding alert for this change.", buf, 8u);
        }

        calEventCopy2 = calEvent;
        v36 = 0;
      }

      else
      {
        if (v33)
        {
          v37 = v32;
          *buf = 67109120;
          LODWORD(v81) = CalCalendarItemGetRowID();
          _os_log_impl(&dword_1DEBB1000, v37, OS_LOG_TYPE_INFO, "Marking cancelled event %d as needing a notification", buf, 8u);
        }

        LOBYTE(self) = 1;
        calEventCopy2 = calEvent;
        v36 = 1;
      }

      CalEventSetNeedsNotification(calEventCopy2, v36);
      break;
    case 3:
      v69 = dCopy;
      attendee = [eventCopy attendee];
      lastObject = [attendee lastObject];

      value = [lastObject value];
      absoluteString = [value absoluteString];

      v68 = absoluteString;
      v26 = CalDatabaseCopyAttendeeForEventWithAddress(database, calEvent, absoluteString);
      if (v26)
      {
        v27 = v26;
        v66 = lastObject;
        partstat = [lastObject partstat];
        iMIPImported = [messageCopy iMIPImported];
        if (iMIPImported)
        {
          Status = CalAttendeeGetStatus(v27);
          if (Status == CalAttendeeStatusFromICSParticipationStatus(partstat))
          {
            v30 = 0;
          }

          else
          {
            v30 = [MEMORY[0x1E695DFA8] setWithObject:II_ATTENDEES_KEY];
            CalAttendeeUpdateFromICSUserAddress(lastObject, v27, calendar, 0);
          }
        }

        else
        {
          v30 = [self _calculateDiffsForCalEvent:calEvent icsEvent:eventCopy inMessage:messageCopy];
        }

        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        self = v30;
        v51 = [self countByEnumeratingWithState:&v70 objects:v78 count:16];
        if (v51)
        {
          v52 = v51;
          calEventCopy3 = calEvent;
          v62 = calendar;
          v65 = messageCopy;
          v53 = 0;
          v54 = *v71;
          do
          {
            for (i = 0; i != v52; ++i)
            {
              if (*v71 != v54)
              {
                objc_enumerationMutation(self);
              }

              v56 = *(*(&v70 + 1) + 8 * i);
              if ([v56 isEqualToString:II_ATTENDEES_KEY])
              {
                v57 = partstat == 3;
              }

              else
              {
                v57 = 0;
              }

              if (v57)
              {
                CalParticipantSetStatusChanged(v27, 1);
                v53 |= 0x20u;
              }

              else if ([v56 isEqualToString:II_COMMENTS_KEY])
              {
                if (CalParticipantGetCommentChanged(v27))
                {
                  v53 |= 0x10u;
                }
              }

              else
              {
                [v56 isEqualToString:II_PROPOSEDTIME_KEY];
              }
            }

            v52 = [self countByEnumeratingWithState:&v70 objects:v78 count:16];
          }

          while (v52);

          messageCopy = v65;
          calendar = v62;
          if (v53)
          {
            CalEventAddInvitationChangedProperties(calEventCopy3, v53);
            LOBYTE(iMIPImported) = 1;
            CalEventSetNeedsNotification(calEventCopy3, 1);
          }
        }

        else
        {
        }

        CFRelease(v27);

        LOBYTE(self) = iMIPImported;
        lastObject = v66;
      }

      else
      {
        LOBYTE(self) = 0;
      }

      dCopy = v69;
      break;
    case 2:
      if (!CalEventHasOccurrenceInTheFuture(calEvent))
      {
        v20 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v81 = dCopy;
          v21 = "Ignoring inbox update for %@ because it is in the past";
          goto LABEL_25;
        }

LABEL_26:
        LOBYTE(self) = 0;
        break;
      }

      if (CalCalendarItemGetStatus(calEvent) == 3 && [self myStatusNeedsActionForEvent:eventCopy withAccountInfo:infoCopy])
      {
        v20 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v81 = dCopy;
          v21 = "Ignoring cancellation for event we never responded to (%@)";
LABEL_25:
          _os_log_impl(&dword_1DEBB1000, v20, OS_LOG_TYPE_INFO, v21, buf, 0xCu);
          goto LABEL_26;
        }

        goto LABEL_26;
      }

      if ([messageCopy iMIPImported])
      {
        v38 = objc_opt_new();
      }

      else
      {
        v38 = [self _calculateDiffsForCalEvent:calEvent icsEvent:eventCopy inMessage:messageCopy];
      }

      v39 = v38;
      if (([self diffsAreImportant:v38] & 1) != 0 || objc_msgSend(self, "myStatusNeedsActionForEvent:withAccountInfo:", eventCopy, infoCopy) && !CalEventHasBeenAlerted(calEvent))
      {
        if (!CalEventIsDetached(calEvent) || (CalEventIsSignificantlyDetachedIgnoringParticipation(calEvent) & 1) != 0)
        {
          v40 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v81 = dCopy;
            _os_log_impl(&dword_1DEBB1000, v40, OS_LOG_TYPE_INFO, "Setting needs notification for event %@ because an iTIP request was found in the inbox", buf, 0xCu);
          }

          v61 = calendar;
          v63 = infoCopy;
          v64 = messageCopy;
          CalEventSetNeedsNotification(calEvent, 1);
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v41 = v39;
          v42 = [v41 countByEnumeratingWithState:&v74 objects:v79 count:16];
          if (v42)
          {
            v43 = v42;
            v44 = 0;
            v45 = *v75;
            do
            {
              v46 = 0;
              do
              {
                if (*v75 != v45)
                {
                  objc_enumerationMutation(v41);
                }

                v47 = *(*(&v74 + 1) + 8 * v46);
                if (([v47 isEqualToString:II_FROM_KEY] & 1) != 0 || objc_msgSend(v47, "isEqualToString:", II_TO_KEY))
                {
                  v44 |= 2u;
                }

                else if ([v47 isEqualToString:II_ALL_DAY_KEY])
                {
                  v44 |= 1u;
                }

                else if ([v47 isEqualToString:II_EVENT_TITLE_KEY])
                {
                  v44 |= 4u;
                }

                else if ([v47 isEqualToString:II_LOCATION_KEY])
                {
                  v44 |= 8u;
                }

                else if ([v47 isEqualToString:II_VIDEOCONFERENCE_KEY])
                {
                  v44 |= 0x100u;
                }

                else if ([v47 isEqualToString:II_RECURRENCE_KEY])
                {
                  v44 |= 0x200u;
                }

                ++v46;
              }

              while (v43 != v46);
              v48 = [v41 countByEnumeratingWithState:&v74 objects:v79 count:16];
              v43 = v48;
            }

            while (v48);
          }

          CalEventSetInvitationChangedProperties(calEvent);
          LOBYTE(self) = 1;
          messageCopy = v64;
          calendar = v61;
          infoCopy = v63;
          goto LABEL_92;
        }

        v49 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v81 = dCopy;
          v50 = "Ignoring inbox item %@ because it's for an event that is not significantly detached";
          goto LABEL_90;
        }
      }

      else
      {
        v49 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v81 = dCopy;
          v50 = "Ignoring inbox item %@ because it doesn't look important";
LABEL_90:
          _os_log_impl(&dword_1DEBB1000, v49, OS_LOG_TYPE_INFO, v50, buf, 0xCu);
        }
      }

      LOBYTE(self) = 0;
LABEL_92:

      break;
    default:
      goto LABEL_26;
  }

  v58 = *MEMORY[0x1E69E9840];
  return self;
}

+ (id)_calculateDiffsForCalEvent:(void *)event icsEvent:(id)icsEvent inMessage:(id)message
{
  v40 = *MEMORY[0x1E69E9840];
  icsEventCopy = icsEvent;
  messageCopy = message;
  scheduleChanges = [messageCopy scheduleChanges];
  v11 = [MEMORY[0x1E695DFA8] set];
  calendar = [messageCopy calendar];
  v13 = [self getOccurrenceChange:scheduleChanges forEvent:icsEventCopy inCalendar:calendar];

  if (([v13 attendeesChanged] & 1) != 0 || objc_msgSend(v13, "participationChanged"))
  {
    [v11 addObject:II_ATTENDEES_KEY];
    attendeeAddress = [scheduleChanges attendeeAddress];

    if (attendeeAddress)
    {
      v15 = MEMORY[0x1E696AEC0];
      v16 = II_ATTENDEE_PREFIX;
      attendeeAddress2 = [scheduleChanges attendeeAddress];
      v18 = [v15 stringWithFormat:@"%@%@", v16, attendeeAddress2];
      [v11 addObject:v18];
    }
  }

  if ([v13 attachmentsChanged])
  {
    [v11 addObject:II_ATTACHMENT_KEY];
  }

  if ([v13 locationChanged])
  {
    [v11 addObject:II_LOCATION_KEY];
  }

  if ([v13 summaryChanged])
  {
    [v11 addObject:II_EVENT_TITLE_KEY];
  }

  if ([v13 descriptionChanged])
  {
    [v11 addObject:II_NOTE_KEY];
    if ((CalEventGetInvitationChangedProperties(event) & 0x100) != 0)
    {
      [v11 addObject:II_VIDEOCONFERENCE_KEY];
    }
  }

  if ([v13 urlChanged])
  {
    [v11 addObject:II_URL_KEY];
  }

  if ([v13 privateCommentChanged])
  {
    [v11 addObject:II_COMMENTS_KEY];
  }

  if ([v13 proposedStartDateChanged])
  {
    [v11 addObject:II_PROPOSEDTIME_KEY];
  }

  if ([v13 startTimeChanged])
  {
    [v11 addObject:II_FROM_KEY];
  }

  if ([v13 endTimeChanged])
  {
    [v11 addObject:II_TO_KEY];
  }

  if ([v13 dateTimeChanged])
  {
    [v11 addObject:II_ALL_DAY_KEY];
  }

  if ([v13 timeZoneChanged])
  {
    [v11 addObject:II_TIME_ZONE_KEY];
  }

  if ([v13 recurrenceChanged])
  {
    v32 = scheduleChanges;
    v33 = messageCopy;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = icsEventCopy;
    relatedTo = [icsEventCopy relatedTo];
    v20 = [relatedTo countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v36;
      v23 = *MEMORY[0x1E69E3FB0];
LABEL_31:
      v24 = 0;
      while (1)
      {
        if (*v36 != v22)
        {
          objc_enumerationMutation(relatedTo);
        }

        v25 = *(*(&v35 + 1) + 8 * v24);
        v26 = [v25 parameterValueForName:v23];
        v27 = v26;
        if (v26)
        {
          if ([v26 longValue] == 1)
          {
            value = [v25 value];

            if (value)
            {
              break;
            }
          }
        }

        if (v21 == ++v24)
        {
          v21 = [relatedTo countByEnumeratingWithState:&v35 objects:v39 count:16];
          if (v21)
          {
            goto LABEL_31;
          }

          goto LABEL_39;
        }
      }

      value2 = [v25 value];

      if (value2)
      {
        goto LABEL_42;
      }
    }

    else
    {
LABEL_39:
    }

    [v11 addObject:II_RECURRENCE_KEY];
    value2 = 0;
LABEL_42:

    messageCopy = v33;
    icsEventCopy = v34;
    scheduleChanges = v32;
  }

  v30 = *MEMORY[0x1E69E9840];

  return v11;
}

@end