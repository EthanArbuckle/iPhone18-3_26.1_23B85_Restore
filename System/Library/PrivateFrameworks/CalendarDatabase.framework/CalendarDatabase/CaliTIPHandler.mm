@interface CaliTIPHandler
+ (BOOL)diffsAreImportant:(id)a3;
+ (BOOL)doScheduleChanges:(id)a3 applyToEvent:(id)a4 inCalendar:(id)a5;
+ (BOOL)handleEvent:(id)a3 calEvent:(void *)a4 eventID:(id)a5 database:(CalDatabase *)a6 message:(id)a7 accountInfo:(id)a8;
+ (BOOL)isAddressMe:(id)a3 withAccountInfo:(id)a4;
+ (BOOL)myStatusNeedsActionForEvent:(id)a3 withAccountInfo:(id)a4;
+ (id)_calculateDiffsForCalEvent:(void *)a3 icsEvent:(id)a4 inMessage:(id)a5;
+ (id)debugStringForEvent:(id)a3;
+ (id)getOccurrenceChange:(id)a3 forEvent:(id)a4 inCalendar:(id)a5;
+ (id)myAddressWithAccountInfo:(id)a3 forEvent:(id)a4;
+ (void)copyEventInStore:(void *)a3 appropriateForHandlingMessageForEventUID:(id)a4 inDatabase:(CalDatabase *)a5;
+ (void)processMessage:(id)a3 withDatabase:(CalDatabase *)a4 calStore:(void *)a5 accountInfo:(id)a6 handledEventCallback:(id)a7 options:(unint64_t)a8;
+ (void)processMessages:(id)a3 withDatabase:(CalDatabase *)a4 calStore:(void *)a5 accountInfo:(id)a6 handledEventCallback:(id)a7 cancellationToken:(id)a8 options:(unint64_t)a9;
@end

@implementation CaliTIPHandler

+ (void)processMessages:(id)a3 withDatabase:(CalDatabase *)a4 calStore:(void *)a5 accountInfo:(id)a6 handledEventCallback:(id)a7 cancellationToken:(id)a8 options:(unint64_t)a9
{
  v33 = *MEMORY[0x1E69E9840];
  v12 = a6;
  v13 = a7;
  v14 = a8;
  v15 = [a3 allObjects];
  v16 = [v15 sortedArrayUsingSelector:sel_compare_];

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
      if ([v14 isCancelled])
      {
        break;
      }

      v23 = [v22 event];

      if (v23)
      {
        [a1 processMessage:v22 withDatabase:a4 calStore:a5 accountInfo:v12 handledEventCallback:v13 options:a9];
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

+ (BOOL)diffsAreImportant:(id)a3
{
  v3 = a3;
  if ([v3 containsObject:II_LOCATION_KEY] & 1) != 0 || (objc_msgSend(v3, "containsObject:", II_ALL_DAY_KEY) & 1) != 0 || (objc_msgSend(v3, "containsObject:", II_FROM_KEY) & 1) != 0 || (objc_msgSend(v3, "containsObject:", II_VIDEOCONFERENCE_KEY))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 containsObject:II_RECURRENCE_KEY];
  }

  return v4;
}

+ (id)debugStringForEvent:(id)a3
{
  v3 = a3;
  v4 = [v3 recurrence_id];

  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [v3 uid];
    v7 = [v3 recurrence_id];
    v8 = [v7 value];
    v9 = [v5 stringWithFormat:@"%@ (%@)", v6, v8];
  }

  else
  {
    v9 = [v3 uid];
  }

  return v9;
}

+ (id)getOccurrenceChange:(id)a3 forEvent:(id)a4 inCalendar:(id)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 recurrence_id];

  if (v11)
  {
    v35 = a1;
    v12 = [v9 recurrence_id];
    v13 = [v10 systemDateForDate:v12 options:1];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v14 = [v8 recurrenceIDs];
    v15 = [v14 countByEnumeratingWithState:&v36 objects:v42 count:16];
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
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v36 + 1) + 8 * i);
          v20 = [v10 systemDateForDate:v19 options:1];
          if ([v13 isEqual:v20])
          {
            v21 = CDBLogHandle;
            if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
            {
              v22 = v21;
              v23 = [v35 debugStringForEvent:v9];
              *buf = 138412290;
              v41 = v23;
              _os_log_impl(&dword_1DEBB1000, v22, OS_LOG_TYPE_DEBUG, "event has occurrence change: %@", buf, 0xCu);
            }

            v24 = [v8 changeForOccurrence:v19];

            goto LABEL_23;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v36 objects:v42 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    a1 = v35;
    goto LABEL_16;
  }

  v25 = [v8 recurrenceIDs];
  if ([v25 count])
  {
    v26 = [v8 masterChange];

    if (!v26)
    {
LABEL_16:
      v27 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v28 = v27;
        v29 = [a1 debugStringForEvent:v9];
        *buf = 138412290;
        v41 = v29;
        _os_log_impl(&dword_1DEBB1000, v28, OS_LOG_TYPE_DEBUG, "event does NOT have occurrence change: %@", buf, 0xCu);
      }

      v24 = 0;
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
    v32 = [a1 debugStringForEvent:v9];
    *buf = 138412290;
    v41 = v32;
    _os_log_impl(&dword_1DEBB1000, v31, OS_LOG_TYPE_DEBUG, "event has occurrence change: %@", buf, 0xCu);
  }

  v24 = [v8 masterChange];
LABEL_23:

  v33 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (BOOL)doScheduleChanges:(id)a3 applyToEvent:(id)a4 inCalendar:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 isCreate])
  {
    v10 = 1;
  }

  else
  {
    v11 = [v8 recurrence_id];

    if (v11)
    {
      v12 = [v8 recurrence_id];
      v13 = [v9 systemDateForDate:v12 options:1];

      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v14 = [v7 recurrenceIDs];
      v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v15)
      {
        v16 = v15;
        v24 = v8;
        v17 = *v26;
LABEL_6:
        v18 = 0;
        while (1)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v10 = 1;
          v19 = [v9 systemDateForDate:*(*(&v25 + 1) + 8 * v18) options:1];
          v20 = [v13 isEqual:v19];

          if (v20)
          {
            break;
          }

          if (v16 == ++v18)
          {
            v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
            if (v16)
            {
              goto LABEL_6;
            }

            v10 = 0;
            break;
          }
        }

        v8 = v24;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v13 = [v7 recurrenceIDs];
      if ([v13 count])
      {
        v21 = [v7 masterChange];
        v10 = v21 != 0;
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

+ (BOOL)isAddressMe:(id)a3 withAccountInfo:(id)a4
{
  v5 = a4;
  v6 = [a3 absoluteString];
  v7 = [v5 addressIsAccountOwner:v6];

  return v7;
}

+ (id)myAddressWithAccountInfo:(id)a3 forEvent:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [a4 attendee];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 value];
        v14 = [a1 isAddressMe:v13 withAccountInfo:v6];

        if (v14)
        {
          v15 = v12;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

+ (BOOL)myStatusNeedsActionForEvent:(id)a3 withAccountInfo:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [a3 attendee];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        if ([v12 partstat] < 2 || objc_msgSend(v12, "rsvp"))
        {
          v13 = [v12 value];
          v14 = [a1 isAddressMe:v13 withAccountInfo:v6];

          if (v14)
          {
            v15 = 1;
            goto LABEL_13;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
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

+ (void)copyEventInStore:(void *)a3 appropriateForHandlingMessageForEventUID:(id)a4 inDatabase:(CalDatabase *)a5
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = CalDatabaseCopyAllEventsWithUniqueIdentifierInStore(a5, a4, a3);
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

+ (void)processMessage:(id)a3 withDatabase:(CalDatabase *)a4 calStore:(void *)a5 accountInfo:(id)a6 handledEventCallback:(id)a7 options:(unint64_t)a8
{
  v68 = a8;
  v85 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v67 = a6;
  v66 = a7;
  v71 = v11;
  v74 = [v11 calendar];
  v12 = [v11 allOccurrences];
  v13 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v14 = v13;
    v15 = [v11 filename];
    *buf = 138412546;
    v82 = v15;
    v83 = 2048;
    v84 = [v12 count];
    _os_log_impl(&dword_1DEBB1000, v14, OS_LOG_TYPE_DEBUG, "process: ++++ %@ (contains %lu occurrences)", buf, 0x16u);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = v12;
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
        v23 = v74;
        v24 = [v22 recurrence_id];

        *&v25 = v18;
        if (v24)
        {
          v26 = [v22 recurrence_id];
          DateTimeFromICSDate = CalCreateDateTimeFromICSDate(v26, v23);

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

        v31 = [v23 method];
        v32 = v31;
        Copy = 0;
        v34 = 1;
        if (v31 <= 5 && ((1 << v31) & 0x2C) != 0)
        {
          Copy = [a1 copyEventInStore:a5 appropriateForHandlingMessageForEventUID:v21 inDatabase:a4];
          if (Copy)
          {
            goto LABEL_18;
          }

          if (v32 == 3 && (v28 & [v71 iMIPImported]) == 1)
          {
            v42 = [v22 uid];
            v43 = [a1 copyEventInStore:a5 appropriateForHandlingMessageForEventUID:v42 inDatabase:a4];

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
                  if ((v68 & 1) == 0)
                  {
                    goto LABEL_28;
                  }

                  v37 = v22;
                  v38 = [v37 sequence];
                  SequenceNumber = CalEventGetSequenceNumber(Copy);
                  if (v38 > SequenceNumber)
                  {

                    goto LABEL_28;
                  }

                  if (v32 == 3 || v38 < SequenceNumber)
                  {
                    v55 = v38 < SequenceNumber;

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

                    v52 = [v37 last_modified];
                    v53 = CalDateFromICSDateAsUTC(v52);

                    if (v53 == v18)
                    {
                      v54 = [v37 dtstamp];
                      v53 = CalDateFromICSDateAsUTC(v54);
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

                      v40 = [v71 iMIPImported];
                      goto LABEL_29;
                    }
                  }

LABEL_28:
                  v40 = [a1 handleEvent:v22 calEvent:Copy eventID:v21 database:a4 message:v71 accountInfo:v67];
LABEL_29:
                  if (v40)
                  {
                    v41 = CDBLogHandle;
                    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v82 = v21;
                      _os_log_impl(&dword_1DEBB1000, v41, OS_LOG_TYPE_DEBUG, "Event with identifier %@ handled message.", buf, 0xCu);
                    }

                    if (v66)
                    {
                      v66[2]();
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
    v63 = [v71 filename];
    *buf = 138412290;
    v82 = v63;
    _os_log_impl(&dword_1DEBB1000, v62, OS_LOG_TYPE_DEBUG, "process: ~~~~ leaving message: %@", buf, 0xCu);
  }

  v64 = *MEMORY[0x1E69E9840];
}

+ (BOOL)handleEvent:(id)a3 calEvent:(void *)a4 eventID:(id)a5 database:(CalDatabase *)a6 message:(id)a7 accountInfo:(id)a8
{
  v82 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a5;
  v16 = a7;
  v17 = a8;
  v18 = [v16 calendar];
  v19 = [v18 method];
  switch(v19)
  {
    case 5:
      v31 = [a1 myStatusNeedsActionForEvent:v14 withAccountInfo:v17];
      LODWORD(a1) = [v16 iMIPImported];
      if (a1)
      {
        CalEventSetStatus(a4, 3);
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

        v35 = a4;
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

        LOBYTE(a1) = 1;
        v35 = a4;
        v36 = 1;
      }

      CalEventSetNeedsNotification(v35, v36);
      break;
    case 3:
      v69 = v15;
      v22 = [v14 attendee];
      v23 = [v22 lastObject];

      v24 = [v23 value];
      v25 = [v24 absoluteString];

      v68 = v25;
      v26 = CalDatabaseCopyAttendeeForEventWithAddress(a6, a4, v25);
      if (v26)
      {
        v27 = v26;
        v66 = v23;
        v28 = [v23 partstat];
        v67 = [v16 iMIPImported];
        if (v67)
        {
          Status = CalAttendeeGetStatus(v27);
          if (Status == CalAttendeeStatusFromICSParticipationStatus(v28))
          {
            v30 = 0;
          }

          else
          {
            v30 = [MEMORY[0x1E695DFA8] setWithObject:II_ATTENDEES_KEY];
            CalAttendeeUpdateFromICSUserAddress(v23, v27, v18, 0);
          }
        }

        else
        {
          v30 = [a1 _calculateDiffsForCalEvent:a4 icsEvent:v14 inMessage:v16];
        }

        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        a1 = v30;
        v51 = [a1 countByEnumeratingWithState:&v70 objects:v78 count:16];
        if (v51)
        {
          v52 = v51;
          v60 = a4;
          v62 = v18;
          v65 = v16;
          v53 = 0;
          v54 = *v71;
          do
          {
            for (i = 0; i != v52; ++i)
            {
              if (*v71 != v54)
              {
                objc_enumerationMutation(a1);
              }

              v56 = *(*(&v70 + 1) + 8 * i);
              if ([v56 isEqualToString:II_ATTENDEES_KEY])
              {
                v57 = v28 == 3;
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

            v52 = [a1 countByEnumeratingWithState:&v70 objects:v78 count:16];
          }

          while (v52);

          v16 = v65;
          v18 = v62;
          if (v53)
          {
            CalEventAddInvitationChangedProperties(v60, v53);
            LOBYTE(v67) = 1;
            CalEventSetNeedsNotification(v60, 1);
          }
        }

        else
        {
        }

        CFRelease(v27);

        LOBYTE(a1) = v67;
        v23 = v66;
      }

      else
      {
        LOBYTE(a1) = 0;
      }

      v15 = v69;
      break;
    case 2:
      if (!CalEventHasOccurrenceInTheFuture(a4))
      {
        v20 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v81 = v15;
          v21 = "Ignoring inbox update for %@ because it is in the past";
          goto LABEL_25;
        }

LABEL_26:
        LOBYTE(a1) = 0;
        break;
      }

      if (CalCalendarItemGetStatus(a4) == 3 && [a1 myStatusNeedsActionForEvent:v14 withAccountInfo:v17])
      {
        v20 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v81 = v15;
          v21 = "Ignoring cancellation for event we never responded to (%@)";
LABEL_25:
          _os_log_impl(&dword_1DEBB1000, v20, OS_LOG_TYPE_INFO, v21, buf, 0xCu);
          goto LABEL_26;
        }

        goto LABEL_26;
      }

      if ([v16 iMIPImported])
      {
        v38 = objc_opt_new();
      }

      else
      {
        v38 = [a1 _calculateDiffsForCalEvent:a4 icsEvent:v14 inMessage:v16];
      }

      v39 = v38;
      if (([a1 diffsAreImportant:v38] & 1) != 0 || objc_msgSend(a1, "myStatusNeedsActionForEvent:withAccountInfo:", v14, v17) && !CalEventHasBeenAlerted(a4))
      {
        if (!CalEventIsDetached(a4) || (CalEventIsSignificantlyDetachedIgnoringParticipation(a4) & 1) != 0)
        {
          v40 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v81 = v15;
            _os_log_impl(&dword_1DEBB1000, v40, OS_LOG_TYPE_INFO, "Setting needs notification for event %@ because an iTIP request was found in the inbox", buf, 0xCu);
          }

          v61 = v18;
          v63 = v17;
          v64 = v16;
          CalEventSetNeedsNotification(a4, 1);
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

          CalEventSetInvitationChangedProperties(a4);
          LOBYTE(a1) = 1;
          v16 = v64;
          v18 = v61;
          v17 = v63;
          goto LABEL_92;
        }

        v49 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v81 = v15;
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
          v81 = v15;
          v50 = "Ignoring inbox item %@ because it doesn't look important";
LABEL_90:
          _os_log_impl(&dword_1DEBB1000, v49, OS_LOG_TYPE_INFO, v50, buf, 0xCu);
        }
      }

      LOBYTE(a1) = 0;
LABEL_92:

      break;
    default:
      goto LABEL_26;
  }

  v58 = *MEMORY[0x1E69E9840];
  return a1;
}

+ (id)_calculateDiffsForCalEvent:(void *)a3 icsEvent:(id)a4 inMessage:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v10 = [v9 scheduleChanges];
  v11 = [MEMORY[0x1E695DFA8] set];
  v12 = [v9 calendar];
  v13 = [a1 getOccurrenceChange:v10 forEvent:v8 inCalendar:v12];

  if (([v13 attendeesChanged] & 1) != 0 || objc_msgSend(v13, "participationChanged"))
  {
    [v11 addObject:II_ATTENDEES_KEY];
    v14 = [v10 attendeeAddress];

    if (v14)
    {
      v15 = MEMORY[0x1E696AEC0];
      v16 = II_ATTENDEE_PREFIX;
      v17 = [v10 attendeeAddress];
      v18 = [v15 stringWithFormat:@"%@%@", v16, v17];
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
    if ((CalEventGetInvitationChangedProperties(a3) & 0x100) != 0)
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
    v32 = v10;
    v33 = v9;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = v8;
    v19 = [v8 relatedTo];
    v20 = [v19 countByEnumeratingWithState:&v35 objects:v39 count:16];
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
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v35 + 1) + 8 * v24);
        v26 = [v25 parameterValueForName:v23];
        v27 = v26;
        if (v26)
        {
          if ([v26 longValue] == 1)
          {
            v28 = [v25 value];

            if (v28)
            {
              break;
            }
          }
        }

        if (v21 == ++v24)
        {
          v21 = [v19 countByEnumeratingWithState:&v35 objects:v39 count:16];
          if (v21)
          {
            goto LABEL_31;
          }

          goto LABEL_39;
        }
      }

      v29 = [v25 value];

      if (v29)
      {
        goto LABEL_42;
      }
    }

    else
    {
LABEL_39:
    }

    [v11 addObject:II_RECURRENCE_KEY];
    v29 = 0;
LABEL_42:

    v9 = v33;
    v8 = v34;
    v10 = v32;
  }

  v30 = *MEMORY[0x1E69E9840];

  return v11;
}

@end