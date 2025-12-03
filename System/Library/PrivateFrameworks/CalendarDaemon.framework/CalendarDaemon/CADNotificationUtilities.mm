@interface CADNotificationUtilities
+ (BOOL)_storeIsDelegate:(void *)delegate;
+ (BOOL)storeIsReadOnlyDelegate:(void *)delegate;
+ (id)_attendeeObjectIDsFromNotifications:(id)notifications;
+ (id)_notificationTypesFromNotifications:(id)notifications;
+ (id)_objectIDsFromNotifications:(id)notifications;
+ (id)_occurrenceDatesFromNotifications:(id)notifications;
+ (id)flattenedNotificationsFromNotifications:(id)notifications expanded:(BOOL)expanded;
+ (int)_gatherEventInvitationsAndRepliesWithContext:(id)context;
+ (int)_gatherSharedCalendarInvitationsWithContext:(id)context;
+ (int)_gatherSharedCalendarResourceChangeNotification:(void *)notification withContext:(id)context database:(CalDatabase *)database databaseID:(int)d;
+ (int)_gatherSharedCalendarResponsesAndResourceChangesWithContext:(id)context;
+ (int)_gatherSuggestionResourceChangeNotification:(void *)notification withContext:(id)context database:(CalDatabase *)database databaseID:(int)d;
+ (void)_logNotificationCountsForNotifications:(id)notifications;
@end

@implementation CADNotificationUtilities

+ (id)_notificationTypesFromNotifications:(id)notifications
{
  if (notifications)
  {
    v3 = MEMORY[0x277CBEB18];
    notificationsCopy = notifications;
    v5 = [v3 arrayWithCapacity:{objc_msgSend(notificationsCopy, "count")}];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__CADNotificationUtilities__notificationTypesFromNotifications___block_invoke;
    v8[3] = &unk_27851B1D8;
    v6 = v5;
    v9 = v6;
    [notificationsCopy enumerateObjectsUsingBlock:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __64__CADNotificationUtilities__notificationTypesFromNotifications___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(a2, "type")}];
  [v2 addObject:v3];
}

+ (id)_objectIDsFromNotifications:(id)notifications
{
  if (notifications)
  {
    v3 = MEMORY[0x277CBEB18];
    notificationsCopy = notifications;
    v5 = [v3 arrayWithCapacity:{objc_msgSend(notificationsCopy, "count")}];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __56__CADNotificationUtilities__objectIDsFromNotifications___block_invoke;
    v8[3] = &unk_27851B1D8;
    v6 = v5;
    v9 = v6;
    [notificationsCopy enumerateObjectsUsingBlock:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __56__CADNotificationUtilities__objectIDsFromNotifications___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectID];
  [v2 addObject:v3];
}

+ (id)_occurrenceDatesFromNotifications:(id)notifications
{
  if (notifications)
  {
    v3 = MEMORY[0x277CBEB18];
    notificationsCopy = notifications;
    v5 = [v3 arrayWithCapacity:{objc_msgSend(notificationsCopy, "count")}];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __62__CADNotificationUtilities__occurrenceDatesFromNotifications___block_invoke;
    v8[3] = &unk_27851B1D8;
    v6 = v5;
    v9 = v6;
    [notificationsCopy enumerateObjectsUsingBlock:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __62__CADNotificationUtilities__occurrenceDatesFromNotifications___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCABB0];
  [a2 occurrenceDate];
  v4 = [v3 numberWithDouble:?];
  [v2 addObject:v4];
}

+ (id)_attendeeObjectIDsFromNotifications:(id)notifications
{
  if (notifications)
  {
    v3 = MEMORY[0x277CBEB18];
    notificationsCopy = notifications;
    v5 = [v3 arrayWithCapacity:{objc_msgSend(notificationsCopy, "count")}];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __64__CADNotificationUtilities__attendeeObjectIDsFromNotifications___block_invoke;
    v8[3] = &unk_27851B1D8;
    v6 = v5;
    v9 = v6;
    [notificationsCopy enumerateObjectsUsingBlock:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __64__CADNotificationUtilities__attendeeObjectIDsFromNotifications___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 expanded])
  {
    v3 = *(a1 + 32);
    v4 = [v6 attendeeObjectID];
    v5 = v3;
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x277CF74C8]) initWithEntityType:7 entityID:0xFFFFFFFFLL databaseID:0xFFFFFFFFLL];
    v5 = *(a1 + 32);
  }

  [v5 addObject:v4];
}

+ (int)_gatherEventInvitationsAndRepliesWithContext:(id)context
{
  contextCopy = context;
  connection = [contextCopy connection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__CADNotificationUtilities__gatherEventInvitationsAndRepliesWithContext___block_invoke;
  v7[3] = &unk_27851A0C0;
  v8 = contextCopy;
  v5 = contextCopy;
  [connection withAllDatabasesPerform:v7];

  return 0;
}

void __73__CADNotificationUtilities__gatherEventInvitationsAndRepliesWithContext___block_invoke(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v107 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) now];
  v5 = v4;
  v79 = a3;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = CalDatabaseCopyOfAllNotifiableEventsInStore();
  v6 = [obj countByEnumeratingWithState:&v94 objects:v106 count:16];
  if (!v6)
  {

    goto LABEL_107;
  }

  v80 = 0;
  v8 = *v95;
  v9 = *MEMORY[0x277CF78E8];
  v10 = *MEMORY[0x277CF78F0];
  *&v7 = 67109632;
  v78 = v7;
  do
  {
    v11 = 0;
    do
    {
      if (*v95 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v94 + 1) + 8 * v11);
      v13 = CalEventCopyStore();
      v14 = CalCalendarItemCopyCalendar();
      v90 = 0;
      v91 = &v90;
      v92 = 0x2020000000;
      v93 = 0;
      v89[0] = MEMORY[0x277D85DD0];
      v89[1] = 3221225472;
      v89[2] = __73__CADNotificationUtilities__gatherEventInvitationsAndRepliesWithContext___block_invoke_2;
      v89[3] = &unk_27851B200;
      v89[4] = &v90;
      v89[5] = v13;
      v89[6] = v14;
      v15 = MEMORY[0x22AA4DCD0](v89);
      if (CalStoreIsFacebook())
      {
        v16 = CADNotificationLogHandle;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          RowID = CalCalendarItemGetRowID();
          *buf = 67109120;
          v99 = RowID;
          v18 = v16;
          v19 = "Skipping notifiable event %d because it's in a facebook store";
          goto LABEL_15;
        }

        goto LABEL_16;
      }

      if ((CalStoreGetSupportsIncomingInvitations() & 1) == 0)
      {
        v16 = CADNotificationLogHandle;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v21 = CalCalendarItemGetRowID();
          *buf = 67109120;
          v99 = v21;
          v18 = v16;
          v19 = "Skipping notifiable event %d because it's in a store that doesn't support incoming invitations";
          goto LABEL_15;
        }

LABEL_16:

        v15[2](v15);
        goto LABEL_17;
      }

      if (CalEventGetJunkStatus() == 1)
      {
        v16 = CADNotificationLogHandle;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v20 = CalCalendarItemGetRowID();
          *buf = 67109120;
          v99 = v20;
          v18 = v16;
          v19 = "Skipping notifiable event %d because it's marked as junk";
          goto LABEL_15;
        }

        goto LABEL_16;
      }

      if ([*(a1 + 32) isEventBlocked:v12])
      {
        v16 = CADNotificationLogHandle;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v22 = CalCalendarItemGetRowID();
          *buf = 67109120;
          v99 = v22;
          v18 = v16;
          v19 = "Skipping notificable event %d because organizer is blocked";
LABEL_15:
          _os_log_impl(&dword_22430B000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 8u);
        }

        goto LABEL_16;
      }

      v23 = CalStoreCopyUUID();
      if (!v23)
      {
        v16 = CADNotificationLogHandle;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v29 = CalCalendarItemGetRowID();
          *buf = 67109120;
          v99 = v29;
          _os_log_impl(&dword_22430B000, v16, OS_LOG_TYPE_DEFAULT, "Skipping notifiable event %d because we failed to get the store identifier", buf, 8u);
        }

        goto LABEL_16;
      }

      CFRelease(v23);
      v24 = CalEventCopyUniqueIdentifier();
      if (!v24)
      {
        v25 = CADNotificationLogHandle;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v30 = CalCalendarItemGetRowID();
          *buf = 67109120;
          v99 = v30;
          v27 = v25;
          v28 = "Skipping notifiable event %d because we failed to get the event unique identifier";
LABEL_35:
          _os_log_impl(&dword_22430B000, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 8u);
        }

LABEL_36:

LABEL_37:
        v15[2](v15);
        goto LABEL_17;
      }

      CFRelease(v24);
      if (([*(a1 + 32) shouldSkipNotificationForStore:v13] & 1) != 0 || objc_msgSend(*(a1 + 32), "shouldSkipNotificationForCalendar:", v14) && !objc_msgSend(*(a1 + 32), "isEventTimeSensitiveForFocus:", v12))
      {
        goto LABEL_37;
      }

      if (CalEventGetParticipationStatus() == 2)
      {
        v25 = CADNotificationLogHandle;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = CalCalendarItemGetRowID();
          *buf = 67109120;
          v99 = v26;
          v27 = v25;
          v28 = "Skipping notifiable event %d because it's been declined";
          goto LABEL_35;
        }

        goto LABEL_36;
      }

      InvitationChangedProperties = CalEventGetInvitationChangedProperties();
      v32 = InvitationChangedProperties;
      if ((InvitationChangedProperties & 0xF0) != 0)
      {
        if (InvitationChangedProperties == 32 && !CalAlertInviteeDeclines())
        {
          v16 = CADNotificationLogHandle;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v57 = CalCalendarItemGetRowID();
            *buf = 67109120;
            v99 = v57;
            _os_log_impl(&dword_22430B000, v16, OS_LOG_TYPE_DEFAULT, "Skipping notifiable event %d because it's an attendee status change, and the user has disabled those alerts", buf, 8u);
          }

          goto LABEL_16;
        }

        if (CalCalendarItemGetStatus() == 3)
        {
          v33 = CADNotificationLogHandle;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = CalCalendarItemGetRowID();
            *buf = 67109120;
            v99 = v34;
            _os_log_impl(&dword_22430B000, v33, OS_LOG_TYPE_DEFAULT, "Skipping notifiable event %d because it's cancelled", buf, 8u);
          }

LABEL_44:

          CalEventSetNeedsNotification();
          v15[2](v15);
          v80 = 1;
          goto LABEL_17;
        }

        v36 = CalCalendarItemCopyAttendees();
        v84 = v32 & 0x11F;
        if (v36)
        {
          CalEventGetStartDate();
          v38 = v37;
          CalEventGetEndDate();
          v40 = v39;
          Count = CFArrayGetCount(v36);
          Mutable = CFArrayCreateMutable(0, Count, 0);
          theArray = v36;
          v91[3] = Mutable;
          if (Count < 1)
          {
            v86 = 1;
            v35 = v9;
          }

          else
          {
            v81 = Count;
            v43 = 0;
            v44 = v40 - v38;
            v86 = 1;
            v35 = v9;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(theArray, v43);
              if ((v32 & 0x20) != 0 && CalParticipantGetStatusChanged())
              {
                Status = CalAttendeeGetStatus();
                v47 = v84;
                if (Status == 2)
                {
                  v47 = v84 | 0x20;
                }

                v84 = v47;
              }

              v48 = CalCalendarItemCopySelfAttendee();
              if ((v32 & 0x80) != 0)
              {
                v49 = CalAttendeeGetProposedStartDateStatus() == 3;
                v50 = v48 == ValueAtIndex;
                v51 = v84;
                v52 = !v49 || !v50;
                if (v49 && v50)
                {
                  v51 = v84 | 0x80;
                }

                v84 = v51;
                v53 = v86;
                if (!v52)
                {
                  v53 = 0;
                }

                v86 = v53;
              }

              if ((v32 & 0x40) != 0 && CalParticipantGetProposedStartDateChanged())
              {
                CalAttendeeGetProposedStartDate();
                v55 = v54;
                if (v54 == v10)
                {
                  CalParticipantSetProposedStartDateChanged();
                  v80 = 1;
                }

                else
                {
                  v56 = MEMORY[0x22AA4B130](ValueAtIndex);
                  if (v44 + v55 >= v35)
                  {
                    v35 = v44 + v55;
                  }

                  CFArrayAppendValue(v91[3], v56);
                  v84 |= 0x40u;
                }
              }

              ++v43;
            }

            while (v81 != v43);
          }

          CFRelease(theArray);
        }

        else
        {
          v86 = 1;
          v35 = v9;
        }

        if (v84 != v32)
        {
          CalEventSetInvitationChangedProperties();
          v33 = CADNotificationLogHandle;
          v58 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
          if (!v84)
          {
            if (v58)
            {
              v75 = CalCalendarItemGetRowID();
              *buf = 67109120;
              v99 = v75;
              _os_log_impl(&dword_22430B000, v33, OS_LOG_TYPE_DEFAULT, "Skipping notifiable event %d because it was marked as having invitation changes, but they were all false positives", buf, 8u);
            }

            goto LABEL_44;
          }

          if (v58)
          {
            v59 = CalCalendarItemGetRowID();
            *buf = v78;
            v99 = v84;
            v100 = 1024;
            v101 = v32;
            v102 = 1024;
            v103 = v59;
            _os_log_impl(&dword_22430B000, v33, OS_LOG_TYPE_DEFAULT, "actualInvitationChangedProperties 0x%x didn't match invitationChangedProperties 0x%x; updating event %d", buf, 0x14u);
          }

          v80 = 1;
        }
      }

      else
      {
        v86 = 0;
        v35 = v9;
      }

      v60 = CalEventOccurrenceCreateForInitialOccurrence();
      CalEventOccurrenceGetDate();
      v62 = v61;
      CFRelease(v60);
      [*(a1 + 32) expirationTimestampForEvent:v12 withInitialOccurrenceDate:v79 database:v62];
      if (v63 >= v35)
      {
        v35 = v63;
      }

      v16 = CADNotificationLogHandle;
      v64 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (v35 <= v5)
      {
        if (v64)
        {
          v68 = CalCalendarItemGetRowID();
          *buf = 67109120;
          v99 = v68;
          _os_log_impl(&dword_22430B000, v16, OS_LOG_TYPE_DEFAULT, "Skipping notifiable event %d because it takes place in the past", buf, 8u);
        }

        goto LABEL_16;
      }

      if (v64)
      {
        v65 = CalCalendarItemGetRowID();
        *buf = 67109888;
        v99 = v65;
        v100 = 1024;
        v101 = v86;
        v102 = 1024;
        v103 = v32;
        v104 = 2048;
        v105 = v35;
        _os_log_impl(&dword_22430B000, v16, OS_LOG_TYPE_DEFAULT, "Including notifiable event %d with type %d, invitationChangedProperties 0x%x and expiration date %f", buf, 0x1Eu);
      }

      v85 = [objc_alloc(MEMORY[0x277CF74C8]) initWithEntityType:2 entityID:CalCalendarItemGetRowID() databaseID:a2];
      v66 = v91[3];
      if (v66)
      {
        v67 = CFArrayGetCount(v66);
      }

      else
      {
        v67 = 0;
      }

      v69 = [*(a1 + 32) expanded];
      if (v67 > 0)
      {
        v70 = v69;
      }

      else
      {
        v70 = 0;
      }

      if (v70 == 1)
      {
        v71 = [[CADNotification alloc] initWithType:v86 objectID:v85 occurrenceDate:v62 expirationDate:v35];
        v72 = 0;
        do
        {
          v73 = [objc_alloc(MEMORY[0x277CF74C8]) initWithEntityType:7 entityID:CFArrayGetValueAtIndex(v91[3] databaseID:{v72), a2}];
          v74 = [[CADExpandedNotification alloc] initWithType:v86 objectID:v85 occurrenceDate:v73 expirationDate:v62 attendeeObjectID:v35];
          [(CADNotification *)v71 addExpandedNotification:v74];

          ++v72;
        }

        while (v67 != v72);
        [*(a1 + 32) addNotification:v71];
      }

      else
      {
        v71 = [[CADNotification alloc] initWithType:v86 objectID:v85 occurrenceDate:v62 expirationDate:v35];
        [*(a1 + 32) addNotification:v71];
      }

      v15[2](v15);
LABEL_17:

      _Block_object_dispose(&v90, 8);
      ++v11;
    }

    while (v11 != v6);
    v76 = [obj countByEnumeratingWithState:&v94 objects:v106 count:16];
    v6 = v76;
  }

  while (v76);

  if (v80)
  {
    CalDatabaseSave();
  }

LABEL_107:

  v77 = *MEMORY[0x277D85DE8];
}

void __73__CADNotificationUtilities__gatherEventInvitationsAndRepliesWithContext___block_invoke_2(void *a1)
{
  v2 = *(*(a1[4] + 8) + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[6];
  if (v4)
  {

    CFRelease(v4);
  }
}

+ (int)_gatherSharedCalendarInvitationsWithContext:(id)context
{
  contextCopy = context;
  connection = [contextCopy connection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__CADNotificationUtilities__gatherSharedCalendarInvitationsWithContext___block_invoke;
  v7[3] = &unk_27851A0C0;
  v8 = contextCopy;
  v5 = contextCopy;
  [connection withAllDatabasesPerform:v7];

  return 0;
}

void __72__CADNotificationUtilities__gatherSharedCalendarInvitationsWithContext___block_invoke(uint64_t a1, unsigned int a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v3 = CalDatabaseCopyOfAllCalendarsInStoreWithOptions();
  v4 = [v3 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v30;
    v7 = *MEMORY[0x277CF78E0];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        v10 = CalCalendarCopyStore();
        if (v10)
        {
          v11 = v10;
          v12 = [*(a1 + 32) shouldSkipNotificationForStore:v10];
          CFRelease(v11);
          if (v12)
          {
            continue;
          }
        }

        if ((CalCalendarCanContainEntityType() & 1) == 0)
        {
          v19 = CADNotificationLogHandle;
          if (!os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            continue;
          }

          v15 = v19;
          UID = CalCalendarGetUID();
          *buf = 67109120;
          v34 = UID;
          v17 = v15;
          v18 = "Skipping shared calendar invitation for calendar %d because it doesn't allow events";
          goto LABEL_17;
        }

        v13 = CalCalendarCopyUUID();
        if (!v13)
        {
          v21 = CADNotificationLogHandle;
          if (!os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            continue;
          }

          v15 = v21;
          v22 = CalCalendarGetUID();
          *buf = 67109120;
          v34 = v22;
          v17 = v15;
          v18 = "Skipping shared calendar invitation for calendar %d because it lacks a UUID";
          goto LABEL_17;
        }

        CFRelease(v13);
        if ([*(a1 + 32) isSharedCalendarOwnerBlocked:v9])
        {
          v14 = CADNotificationLogHandle;
          if (!os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            continue;
          }

          v15 = v14;
          v16 = CalCalendarGetUID();
          *buf = 67109120;
          v34 = v16;
          v17 = v15;
          v18 = "Skipping shared calendar invitation for calendar %d because the owner is blocked";
LABEL_17:
          _os_log_impl(&dword_22430B000, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 8u);

          continue;
        }

        v23 = CalCalendarGetUID();
        v24 = [objc_alloc(MEMORY[0x277CF74C8]) initWithEntityType:1 entityID:v23 databaseID:a2];
        v25 = CADNotificationLogHandle;
        if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v34 = v23;
          _os_log_impl(&dword_22430B000, v25, OS_LOG_TYPE_DEFAULT, "Including shared calendar invitation %d", buf, 8u);
        }

        v26 = [[CADNotification alloc] initWithType:2 objectID:v24 occurrenceDate:0.0 expirationDate:v7];
        [*(a1 + 32) addNotification:v26];
      }

      v5 = [v3 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v5);
  }

  v27 = *MEMORY[0x277D85DE8];
}

+ (int)_gatherSharedCalendarResponsesAndResourceChangesWithContext:(id)context
{
  contextCopy = context;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  connection = [contextCopy connection];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __88__CADNotificationUtilities__gatherSharedCalendarResponsesAndResourceChangesWithContext___block_invoke;
  v8[3] = &unk_27851B228;
  v10 = &v12;
  selfCopy = self;
  v6 = contextCopy;
  v9 = v6;
  [connection withAllDatabasesPerform:v8];

  LODWORD(connection) = *(v13 + 6);
  _Block_object_dispose(&v12, 8);

  return connection;
}

void __88__CADNotificationUtilities__gatherSharedCalendarResponsesAndResourceChangesWithContext___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = CalDatabaseCopyOfAllNotifications();
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        EntityType = CalNotificationGetEntityType();
        if (EntityType == 19)
        {
          v15 = [*(a1 + 48) _gatherSuggestionResourceChangeNotification:v12 withContext:*(a1 + 32) database:a3 databaseID:a2];
          goto LABEL_12;
        }

        v14 = EntityType;
        if (EntityType == 17)
        {
          v15 = [*(a1 + 48) _gatherSharedCalendarResourceChangeNotification:v12 withContext:*(a1 + 32) database:a3 databaseID:a2];
          goto LABEL_12;
        }

        if (EntityType == 16)
        {
          v15 = [*(a1 + 48) _gatherSharedCalendarInviteReplyNotification:v12 withContext:*(a1 + 32) database:a3 databaseID:a2];
LABEL_12:
          *(*(*(a1 + 40) + 8) + 24) = v15;
          goto LABEL_13;
        }

        v16 = CADNotificationLogHandle;
        if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v17 = v16;
          UID = CalNotificationGetUID();
          *buf = 67109376;
          v27 = UID;
          v28 = 1024;
          v29 = v14;
          _os_log_impl(&dword_22430B000, v17, OS_LOG_TYPE_DEFAULT, "Skipping notification %d because it's of an unexpected type %d", buf, 0xEu);
        }

LABEL_13:
        if (*(*(*(a1 + 40) + 8) + 24))
        {
          *a4 = 1;
          goto LABEL_21;
        }

        ++v11;
      }

      while (v9 != v11);
      v19 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
      v9 = v19;
    }

    while (v19);
  }

LABEL_21:

  v20 = *MEMORY[0x277D85DE8];
}

+ (int)_gatherSharedCalendarResourceChangeNotification:(void *)notification withContext:(id)context database:(CalDatabase *)database databaseID:(int)d
{
  v82 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = CalResourceChangeNotificationCopyChanges();
  v7 = [obj countByEnumeratingWithState:&v75 objects:v81 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v76;
    v10 = *MEMORY[0x277CF78E0];
    v11 = *MEMORY[0x277CF78F0];
    do
    {
      v12 = 0;
      do
      {
        if (*v76 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v75 + 1) + 8 * v12);
        v14 = CalResourceChangeGetType();
        if (v14 == 5 && CalResourceChangeGetPublicStatus() != 2)
        {
          v27 = CADNotificationLogHandle;
          if (!os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_28;
          }

          v23 = v27;
          v28 = CalResourceChangeGetUID();
          *buf = 67109120;
          v80 = v28;
          v25 = v23;
          v26 = "Skipping resource change notification %d because it is not public";
          goto LABEL_17;
        }

        v15 = CalResourceChangeCopyCalendar();
        if (!v15)
        {
          v22 = CADNotificationLogHandle;
          if (!os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_28;
          }

          v23 = v22;
          v24 = CalResourceChangeGetUID();
          *buf = 67109120;
          v80 = v24;
          v25 = v23;
          v26 = "Skipping resource change notification %d because it has no calendar";
LABEL_17:
          _os_log_impl(&dword_22430B000, v25, OS_LOG_TYPE_DEFAULT, v26, buf, 8u);
          goto LABEL_18;
        }

        v16 = v15;
        if ((CalCalendarCanContainEntityType() & 1) == 0)
        {
          v29 = CADNotificationLogHandle;
          if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v18 = v29;
            v30 = CalResourceChangeGetUID();
            *buf = 67109120;
            v80 = v30;
            v20 = v18;
            v21 = "Skipping resource change notification %d because it is on a calendar that does not allow events";
LABEL_21:
            _os_log_impl(&dword_22430B000, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 8u);
          }

LABEL_22:
          v31 = 1;
          goto LABEL_24;
        }

        if (CalCalendarIsIgnoringSharedCalendarNotifications())
        {
          v17 = CADNotificationLogHandle;
          if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v18 = v17;
            v19 = CalResourceChangeGetUID();
            *buf = 67109120;
            v80 = v19;
            v20 = v18;
            v21 = "Skipping resource change notification %d because it is on a calendar that is ignoring shared calendar notifications";
            goto LABEL_21;
          }

          goto LABEL_22;
        }

        v31 = 0;
LABEL_24:
        v32 = v31 | [contextCopy shouldSkipNotificationForCalendar:v16];
        v33 = CalCalendarCopyStore();
        if (v33)
        {
          v34 = v33;
          LOBYTE(v32) = v32 | [contextCopy shouldSkipNotificationForStore:v33];
          CFRelease(v34);
        }

        if (v32)
        {
          goto LABEL_27;
        }

        if (CalCalendarCanContainEntityType())
        {
          v35 = CADNotificationLogHandle;
          if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_22430B000, v35, OS_LOG_TYPE_INFO, "Calendar has support for both events and reminders", buf, 2u);
          }
        }

        CFRelease(v16);
        v36 = CalResourceChangeCopyCalendarItem();
        if (v36)
        {
          v16 = v36;
          if (CalEntityGetType() == 2)
          {
            [contextCopy expirationTimestampForEvent:v16 database:database];
            v38 = v37;
            [contextCopy now];
            if (v38 < v39)
            {
              v40 = CADNotificationLogHandle;
              if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v41 = v40;
                v42 = CalResourceChangeGetUID();
                *buf = 67109120;
                v80 = v42;
                _os_log_impl(&dword_22430B000, v41, OS_LOG_TYPE_DEFAULT, "Skipping resource change notification %d because it is for an event in the past", buf, 8u);
              }

              if ([contextCopy deleteOldNotifications])
              {
                v43 = CADNotificationLogHandle;
                if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
                {
                  v44 = v43;
                  v45 = CalResourceChangeGetUID();
                  *buf = 67109120;
                  v80 = v45;
                  _os_log_impl(&dword_22430B000, v44, OS_LOG_TYPE_DEFAULT, "Deleting resource change notification %d because it is for an event in the past", buf, 8u);
                }

                CalRemoveResourceChange();
              }

              goto LABEL_27;
            }

            v53 = CalEventCopyStore();
            if (v53)
            {
              v54 = v53;
              v55 = CalStoreCopyUUID();
              if (!v55)
              {
                v64 = CADNotificationLogHandle;
                if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
                {
                  v65 = v64;
                  v66 = CalResourceChangeGetUID();
                  *buf = 67109120;
                  v80 = v66;
                  _os_log_impl(&dword_22430B000, v65, OS_LOG_TYPE_DEFAULT, "Skipping resource change notification %d because it is for an event in a store with no persistent id", buf, 8u);
                }

                CFRelease(v54);
                goto LABEL_27;
              }

              CFRelease(v55);
              CFRelease(v54);
              v56 = CalEventCopyUniqueIdentifier();
              if (v56)
              {
                CFRelease(v56);
                CFRelease(v16);
LABEL_53:
                v57 = CalResourceChangeGetUID();
                v23 = [objc_alloc(MEMORY[0x277CF74C8]) initWithEntityType:18 entityID:v57 databaseID:d];
                v58 = CADNotificationLogHandle;
                if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109120;
                  v80 = v57;
                  _os_log_impl(&dword_22430B000, v58, OS_LOG_TYPE_DEFAULT, "Including resource change notification %d", buf, 8u);
                }

                v59 = [[CADNotification alloc] initWithType:4 objectID:v23 occurrenceDate:v11 expirationDate:v38];
                [contextCopy addNotification:v59];

LABEL_18:
                goto LABEL_28;
              }

              v67 = CADNotificationLogHandle;
              if (!os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_27;
              }

              v49 = v67;
              v68 = CalResourceChangeGetUID();
              *buf = 67109120;
              v80 = v68;
              v51 = v49;
              v52 = "Skipping resource change notification %d because it is for an event with no unique ID";
LABEL_48:
              _os_log_impl(&dword_22430B000, v51, OS_LOG_TYPE_DEFAULT, v52, buf, 8u);
            }

            else
            {
              v62 = CADNotificationLogHandle;
              if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v49 = v62;
                v63 = CalResourceChangeGetUID();
                *buf = 67109120;
                v80 = v63;
                v51 = v49;
                v52 = "Skipping resource change notification %d because it is for an event not in a store";
                goto LABEL_48;
              }
            }
          }

          else
          {
            v48 = CADNotificationLogHandle;
            if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              v49 = v48;
              v50 = CalResourceChangeGetUID();
              *buf = 67109120;
              v80 = v50;
              v51 = v49;
              v52 = "Skipping resource change notification %d because it is a change for a non-event";
              goto LABEL_48;
            }
          }

LABEL_27:
          CFRelease(v16);
          goto LABEL_28;
        }

        if (v14 == 2)
        {
          v60 = CADNotificationLogHandle;
          if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v23 = v60;
            v61 = CalResourceChangeGetUID();
            *buf = 67109120;
            v80 = v61;
            v25 = v23;
            v26 = "Skipping resource change notification %d because it is an update without an event";
            goto LABEL_17;
          }
        }

        else
        {
          v38 = v10;
          if (v14 != 1)
          {
            goto LABEL_53;
          }

          v46 = CADNotificationLogHandle;
          if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v23 = v46;
            v47 = CalResourceChangeGetUID();
            *buf = 67109120;
            v80 = v47;
            v25 = v23;
            v26 = "Skipping resource change notification %d because it is an add without an event";
            goto LABEL_17;
          }
        }

LABEL_28:
        ++v12;
      }

      while (v8 != v12);
      v69 = [obj countByEnumeratingWithState:&v75 objects:v81 count:16];
      v8 = v69;
    }

    while (v69);
  }

  v70 = *MEMORY[0x277D85DE8];
  return 0;
}

+ (int)_gatherSuggestionResourceChangeNotification:(void *)notification withContext:(id)context database:(CalDatabase *)database databaseID:(int)d
{
  v85 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v7 = CalResourceChangeNotificationCopyChanges();
  v73 = objc_opt_new();
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v78 objects:v84 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v79;
    v11 = *MEMORY[0x277CF78E0];
    v12 = *MEMORY[0x277CF78F0];
    do
    {
      v13 = 0;
      do
      {
        if (*v79 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v78 + 1) + 8 * v13);
        v15 = CalResourceChangeGetType();
        v16 = CalResourceChangeCopyCalendarItem();
        if (v16)
        {
          v17 = v16;
          if (CalEntityGetType() != 2)
          {
            v33 = CADNotificationLogHandle;
            if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              v27 = v33;
              v34 = CalResourceChangeGetUID();
              *buf = 67109120;
              v83 = v34;
              v35 = v27;
              v36 = "Skipping suggestion resource change notification %d because it is for a non-event";
              goto LABEL_22;
            }

            goto LABEL_24;
          }

          [contextCopy expirationTimestampForEvent:v17 database:database];
          v19 = v18;
          [contextCopy now];
          if (v19 < v20)
          {
            v21 = CADNotificationLogHandle;
            if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              v22 = v21;
              v23 = CalResourceChangeGetUID();
              *buf = 67109120;
              v83 = v23;
              _os_log_impl(&dword_22430B000, v22, OS_LOG_TYPE_DEFAULT, "Skipping suggestion resource change notification %d because it is for an event in the past", buf, 8u);
            }

            if ([contextCopy deleteOldNotifications])
            {
              v24 = CADNotificationLogHandle;
              if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v25 = v24;
                v26 = CalResourceChangeGetUID();
                *buf = 67109120;
                v83 = v26;
                _os_log_impl(&dword_22430B000, v25, OS_LOG_TYPE_DEFAULT, "Deleting suggestion resource change notification %d because it is for an event in the past", buf, 8u);
              }

              v27 = [MEMORY[0x277CCABB0] numberWithInt:CPRecordGetID()];
              [v73 addObject:v27];
              goto LABEL_23;
            }

            goto LABEL_24;
          }

          v37 = CalEventCopyStore();
          if (!v37)
          {
            v54 = CADNotificationLogHandle;
            if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              v27 = v54;
              v55 = CalResourceChangeGetUID();
              *buf = 67109120;
              v83 = v55;
              v35 = v27;
              v36 = "Skipping suggestion resource change notification %d because it is for an event not in a store";
              goto LABEL_22;
            }

            goto LABEL_24;
          }

          v38 = v37;
          v39 = CalStoreCopyUUID();
          v40 = v39;
          if (v39)
          {
            CFRelease(v39);
          }

          else
          {
            v56 = CADNotificationLogHandle;
            if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              v57 = v56;
              v58 = CalResourceChangeGetUID();
              *buf = 67109120;
              v83 = v58;
              _os_log_impl(&dword_22430B000, v57, OS_LOG_TYPE_DEFAULT, "Skipping suggestion resource change notification %d because it is for an event in a store with no persistent id", buf, 8u);
            }
          }

          v59 = [contextCopy shouldSkipNotificationForStore:v38];
          CFRelease(v38);
          if (!v40 || (v59 & 1) != 0)
          {
            goto LABEL_24;
          }

          v60 = CalEventCopyUniqueIdentifier();
          if (!v60)
          {
            v66 = CADNotificationLogHandle;
            if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              v27 = v66;
              v67 = CalResourceChangeGetUID();
              *buf = 67109120;
              v83 = v67;
              v35 = v27;
              v36 = "Skipping suggestion resource change notification %d because it is for an event with no unique ID";
LABEL_22:
              _os_log_impl(&dword_22430B000, v35, OS_LOG_TYPE_DEFAULT, v36, buf, 8u);
LABEL_23:
            }

LABEL_24:
            CFRelease(v17);
            goto LABEL_55;
          }

          CFRelease(v60);
          CFRelease(v17);
LABEL_48:
          v61 = CalResourceChangeGetUID();
          v29 = [objc_alloc(MEMORY[0x277CF74C8]) initWithEntityType:18 entityID:v61 databaseID:d];
          v62 = CADNotificationLogHandle;
          if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v83 = v61;
            _os_log_impl(&dword_22430B000, v62, OS_LOG_TYPE_DEFAULT, "Including suggestion resource change notification %d", buf, 8u);
          }

          v63 = [[CADNotification alloc] initWithType:5 objectID:v29 occurrenceDate:v12 expirationDate:v19];
          [contextCopy addNotification:v63];

LABEL_54:
          goto LABEL_55;
        }

        switch(v15)
        {
          case 3:
            v43 = CADNotificationLogHandle;
            if (!os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_55;
            }

            v29 = v43;
            v44 = CalResourceChangeGetUID();
            *buf = 67109120;
            v83 = v44;
            v31 = v29;
            v32 = "Skipping suggestion resource change notification %d because it is a delete (i.e., cancel) without an event";
            goto LABEL_53;
          case 2:
            v41 = CADNotificationLogHandle;
            if (!os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_55;
            }

            v29 = v41;
            v42 = CalResourceChangeGetUID();
            *buf = 67109120;
            v83 = v42;
            v31 = v29;
            v32 = "Skipping suggestion resource change notification %d because it is an update without an event";
            goto LABEL_53;
          case 1:
            v28 = CADNotificationLogHandle;
            if (!os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_55;
            }

            v29 = v28;
            v30 = CalResourceChangeGetUID();
            *buf = 67109120;
            v83 = v30;
            v31 = v29;
            v32 = "Skipping suggestion resource change notification %d because it is an add without an event";
LABEL_53:
            _os_log_impl(&dword_22430B000, v31, OS_LOG_TYPE_DEFAULT, v32, buf, 8u);
            goto LABEL_54;
        }

        v45 = CalResourceChangeCopyCalendar();
        if (!v45)
        {
          v64 = CADNotificationLogHandle;
          if (!os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_55;
          }

          v29 = v64;
          v65 = CalResourceChangeGetUID();
          *buf = 67109120;
          v83 = v65;
          v31 = v29;
          v32 = "Skipping suggestion resource change notification %d because it has no calendar";
          goto LABEL_53;
        }

        v46 = v45;
        CanContainEntityType = CalCalendarCanContainEntityType();
        if ((CanContainEntityType & 1) == 0)
        {
          v48 = CADNotificationLogHandle;
          if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v49 = v48;
            v50 = CalResourceChangeGetUID();
            *buf = 67109120;
            v83 = v50;
            _os_log_impl(&dword_22430B000, v49, OS_LOG_TYPE_DEFAULT, "Skipping suggestion resource change notification %d because it is on a calendar that does not allow events", buf, 8u);
          }
        }

        v51 = [contextCopy shouldSkipNotificationForCalendar:v46] | CanContainEntityType ^ 1;
        v52 = CalCalendarCopyStore();
        if (v52)
        {
          v53 = v52;
          LOBYTE(v51) = v51 | [contextCopy shouldSkipNotificationForStore:v52];
          CFRelease(v53);
        }

        CFRelease(v46);
        v19 = v11;
        if ((v51 & 1) == 0)
        {
          goto LABEL_48;
        }

LABEL_55:
        ++v13;
      }

      while (v9 != v13);
      v68 = [obj countByEnumeratingWithState:&v78 objects:v84 count:16];
      v9 = v68;
    }

    while (v68);
  }

  if ([v73 count])
  {
    v69 = _resourceChangeDeletionQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __104__CADNotificationUtilities__gatherSuggestionResourceChangeNotification_withContext_database_databaseID___block_invoke;
    block[3] = &unk_27851AAD8;
    v77 = v73;
    dispatch_async(v69, block);
  }

  v70 = *MEMORY[0x277D85DE8];
  return 0;
}

void __104__CADNotificationUtilities__gatherSuggestionResourceChangeNotification_withContext_database_databaseID___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = CalDatabaseCreateWithOptions();
  if (v2)
  {
    v3 = v2;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = *(a1 + 32);
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v15 + 1) + 8 * i) intValue];
          v10 = CalDatabaseCopyResourceChangeWithUID();
          if (v10)
          {
            v11 = v10;
            v12 = CADNotificationLogHandle;
            if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              *v14 = 0;
              _os_log_impl(&dword_22430B000, v12, OS_LOG_TYPE_DEFAULT, "Removing a resource change due to a pseudo event expiring", v14, 2u);
            }

            CalRemoveResourceChange();
            v7 = (v7 + 1);
            CFRelease(v11);
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);

      if (v7)
      {
        CalDatabaseSave();
        [MEMORY[0x277CF7868] trackPseudoEventsExpired:v7];
      }
    }

    else
    {
    }

    CFRelease(v3);
  }

  v13 = *MEMORY[0x277D85DE8];
}

+ (BOOL)storeIsReadOnlyDelegate:(void *)delegate
{
  v3 = [self _storeIsDelegate:?];
  if (v3)
  {
    LOBYTE(v3) = CalStoreIsWritable() ^ 1;
  }

  return v3;
}

+ (id)flattenedNotificationsFromNotifications:(id)notifications expanded:(BOOL)expanded
{
  expandedCopy = expanded;
  v24 = *MEMORY[0x277D85DE8];
  notificationsCopy = notifications;
  v6 = notificationsCopy;
  if (notificationsCopy)
  {
    if (expandedCopy)
    {
      v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(notificationsCopy, "count")}];
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v20;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v20 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v19 + 1) + 8 * i);
            expandedNotifications = [v13 expandedNotifications];
            v15 = [expandedNotifications count];

            if (v15)
            {
              expandedNotifications2 = [v13 expandedNotifications];
              [v7 addObjectsFromArray:expandedNotifications2];
            }

            else
            {
              [v7 addObject:v13];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v10);
      }
    }

    else
    {
      v7 = notificationsCopy;
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (void)_logNotificationCountsForNotifications:(id)notifications
{
  v39 = *MEMORY[0x277D85DE8];
  notificationsCopy = notifications;
  v5 = [MEMORY[0x277CCA940] set];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = notificationsCopy;
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        type = [*(*(&v29 + 1) + 8 * i) type];
        v12 = [MEMORY[0x277CCABB0] numberWithInt:type];
        [v5 addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v8);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = v5;
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v14)
  {
    v16 = v14;
    v17 = *v26;
    *&v15 = 67240450;
    v24 = v15;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v25 + 1) + 8 * j);
        v20 = [v13 countForObject:{v19, v24, v25}];
        v21 = [self _stringForNotificationType:{objc_msgSend(v19, "intValue")}];
        v22 = CADLogHandle;
        if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = v24;
          v34 = v20;
          v35 = 2114;
          v36 = v21;
          _os_log_impl(&dword_22430B000, v22, OS_LOG_TYPE_ERROR, "Found %{public}d notifications of type %{public}@", buf, 0x12u);
        }
      }

      v16 = [v13 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v16);
  }

  v23 = *MEMORY[0x277D85DE8];
}

+ (BOOL)_storeIsDelegate:(void *)delegate
{
  v3 = CalStoreCopyDelegatedAccountOwnerStoreID();
  v4 = v3;
  if (v3)
  {
    CFRelease(v3);
  }

  return v4 != 0;
}

@end