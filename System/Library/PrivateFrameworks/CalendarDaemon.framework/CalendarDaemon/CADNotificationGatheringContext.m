@interface CADNotificationGatheringContext
- (BOOL)eventHasNewProposedTime:(void *)a3;
- (BOOL)isEventBlocked:(void *)a3;
- (BOOL)isEventTimeSensitiveForFocus:(void *)a3;
- (BOOL)isSharedCalendarOwnerBlocked:(void *)a3;
- (BOOL)shouldSkipNotificationForCalendar:(void *)a3;
- (BOOL)shouldSkipNotificationForStore:(void *)a3;
- (CADNotificationGatheringContext)initWithConnection:(id)a3 afterDate:(id)a4 forSourceWithExternalIdentifier:(id)a5 excludingDelegateSources:(BOOL)a6 excludingUncheckedCalendars:(BOOL)a7 filteredByShowsNotificationsFlag:(BOOL)a8 expanded:(BOOL)a9;
- (double)endDateOfLastOccurrenceInCacheForEvent:(void *)a3 database:(CalDatabase *)a4 cacheRange:(id *)a5;
- (double)expirationTimestampForEvent:(void *)a3 database:(CalDatabase *)a4;
- (double)expirationTimestampForEvent:(void *)a3 withInitialOccurrenceDate:(double)a4 database:(CalDatabase *)a5;
- (double)expirationTimestampForRecurrence:(void *)a3 event:(void *)a4 database:(CalDatabase *)a5;
- (id)nearestProposedTimeForEvent:(void *)a3;
- (void)addNotification:(id)a3;
@end

@implementation CADNotificationGatheringContext

- (CADNotificationGatheringContext)initWithConnection:(id)a3 afterDate:(id)a4 forSourceWithExternalIdentifier:(id)a5 excludingDelegateSources:(BOOL)a6 excludingUncheckedCalendars:(BOOL)a7 filteredByShowsNotificationsFlag:(BOOL)a8 expanded:(BOOL)a9
{
  v10 = a7;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v31.receiver = self;
  v31.super_class = CADNotificationGatheringContext;
  v19 = [(CADNotificationGatheringContext *)&v31 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_connection, a3);
    objc_storeStrong(&v20->_sourceExternalIdentifier, a5);
    v20->_excludingDelegateSources = a6;
    v20->_filteredByShowsNotificationsFlag = a8;
    v20->_expanded = a9;
    if (v10)
    {
      v33 = 0;
      v34 = &v33;
      v35 = 0x2050000000;
      v21 = getEKCalendarVisibilityManagerClass_softClass;
      v36 = getEKCalendarVisibilityManagerClass_softClass;
      if (!getEKCalendarVisibilityManagerClass_softClass)
      {
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __getEKCalendarVisibilityManagerClass_block_invoke;
        v32[3] = &unk_27851B250;
        v32[4] = &v33;
        __getEKCalendarVisibilityManagerClass_block_invoke(v32);
        v21 = v34[3];
      }

      v22 = v21;
      _Block_object_dispose(&v33, 8);
      v23 = MEMORY[0x277CBEB98];
      v24 = [v21 unselectedCalendarIdentifiersForFocusMode];
      v25 = [v23 setWithArray:v24];
      uncheckedCalendarIdentifiers = v20->_uncheckedCalendarIdentifiers;
      v20->_uncheckedCalendarIdentifiers = v25;
    }

    v27 = objc_opt_new();
    notifications = v20->_notifications;
    v20->_notifications = v27;

    if (!v17)
    {
      v17 = [MEMORY[0x277CBEAA8] CalSimulatedDateForNow];
      v20->_deleteOldNotifications = 1;
    }

    [v17 timeIntervalSinceReferenceDate];
    v20->_now = v29;
    v20->_earliestExpirationDate = *MEMORY[0x277CF78E0];
  }

  return v20;
}

- (void)addNotification:(id)a3
{
  v6 = a3;
  [(NSMutableArray *)self->_notifications addObject:v6];
  [v6 expirationDate];
  if (v4 < self->_earliestExpirationDate)
  {
    [v6 expirationDate];
    self->_earliestExpirationDate = v5;
  }
}

- (BOOL)shouldSkipNotificationForStore:(void *)a3
{
  if ([CADNotificationUtilities storeIsReadOnlyDelegate:?])
  {
    v5 = CADNotificationLogHandle;
    if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 0;
      v6 = "Filtering notification because it is in a read-only delegate";
      v7 = &v17;
LABEL_17:
      _os_log_impl(&dword_22430B000, v5, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
    }
  }

  else
  {
    v8 = [CADNotificationUtilities _storeIsDelegate:a3];
    if (self->_excludingDelegateSources && v8)
    {
      v5 = CADNotificationLogHandle;
      if (!os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      *buf = 0;
      v6 = "Filtering notification because it's in a delegate source and we're excluding delegate sources";
      v7 = buf;
      goto LABEL_17;
    }

    if (!self->_filteredByShowsNotificationsFlag || ((CalStoreShowsNotifications() | !v8) & 1) != 0)
    {
      if (self->_sourceExternalIdentifier)
      {
        v10 = CalStoreCopyExternalID();
        if (![(NSString *)self->_sourceExternalIdentifier isEqualToString:v10])
        {
          v13 = CADNotificationLogHandle;
          if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *v14 = 0;
            _os_log_impl(&dword_22430B000, v13, OS_LOG_TYPE_DEFAULT, "Filtering notification because it's not in the source we're interested in", v14, 2u);
          }

          return 1;
        }
      }

      return 0;
    }

    v5 = CADNotificationLogHandle;
    if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 0;
      v6 = "Filtering notification because we're filtering by showNotificationsFlag and it's not set";
      v7 = &v15;
      goto LABEL_17;
    }
  }

  return 1;
}

- (BOOL)shouldSkipNotificationForCalendar:(void *)a3
{
  if ([(CADNotificationGatheringContext *)self isSharedCalendarOwnerBlocked:?])
  {
    LOBYTE(v4) = 1;
  }

  else if (self->_uncheckedCalendarIdentifiers)
  {
    v5 = CalCalendarCopyUUID();
    v4 = [(NSSet *)self->_uncheckedCalendarIdentifiers containsObject:v5];
    if (v4)
    {
      v6 = CADNotificationLogHandle;
      if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_22430B000, v6, OS_LOG_TYPE_DEFAULT, "Filtering notification because its calendar is unchecked in the calendar app", v8, 2u);
      }
    }
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)eventHasNewProposedTime:(void *)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = CalCalendarItemCopyAttendees();
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (CalParticipantGetProposedStartDateChanged())
        {
          CalAttendeeGetProposedStartDate();
          if (v10 != 0.0)
          {
            if (CalEventAttendeeIsSelf() && CalAttendeeGetProposedStartDateStatus() == 3)
            {
              goto LABEL_14;
            }

            v6 = 1;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
LABEL_14:
    v6 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6 & 1;
}

- (id)nearestProposedTimeForEvent:(void *)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] CalSimulatedDateForNow];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = CalCalendarItemCopyAttendees();
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if (CalParticipantGetProposedStartDateChanged())
        {
          CalAttendeeGetProposedStartDate();
          if (v11 != 0.0)
          {
            v12 = v11;
            if (CalAttendeeGetProposedStartDateStatus() != 3)
            {
              v13 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:{v12, v17}];
              if ([v13 isAfterDate:v3] && (!v7 || objc_msgSend(v13, "isBeforeDate:", v7)))
              {
                v14 = v13;

                v7 = v14;
              }
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)isEventTimeSensitiveForFocus:(void *)a3
{
  v29 = *MEMORY[0x277D85DE8];
  if (CalEventGetJunkStatus() != 3)
  {
    v6 = CalEventGetInvitationChangedProperties() & 0xF0;
    v7 = [(CADNotificationGatheringContext *)self eventHasNewProposedTime:a3];
    v8 = v7;
    if (v6 && !v7)
    {
      v9 = CADNotificationLogHandle;
      if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_INFO))
      {
        v10 = v9;
        v27 = 67109120;
        RowID = CalCalendarItemGetRowID();
        _os_log_impl(&dword_22430B000, v10, OS_LOG_TYPE_INFO, "Notification for event (rowID = %d) is not time-sensitive because it is an attendee reply that is not a proposed time", &v27, 8u);
      }

      goto LABEL_2;
    }

    CalCalendarItemGetStatus();
    v11 = [MEMORY[0x277CBEAA8] CalSimulatedDateForNow];
    v12 = CalCopyDefaultTimeZone();
    v13 = CalEventGetStartDateOfEarliestOccurrenceEndingAfterDateWithExclusions();
    v14 = v13;
    if (v13)
    {
      [v13 timeIntervalSinceDate:v11];
      v15 = *MEMORY[0x277CF7910];
      if (v16 <= *MEMORY[0x277CF7910])
      {
        v25 = CADNotificationLogHandle;
        v5 = 1;
        if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_INFO))
        {
          v26 = v25;
          v27 = 67109120;
          RowID = CalCalendarItemGetRowID();
          _os_log_impl(&dword_22430B000, v26, OS_LOG_TYPE_INFO, "Notification for event (rowID = %d) is time-sensitive because it starts within the time-sensitive window", &v27, 8u);
        }

        goto LABEL_19;
      }

      if (!v8)
      {
        goto LABEL_18;
      }

      v17 = [(CADNotificationGatheringContext *)self nearestProposedTimeForEvent:a3];
      v18 = v17;
      if (v17)
      {
        [v17 timeIntervalSinceDate:v11];
        if (v19 <= v15)
        {
          v20 = CADNotificationLogHandle;
          if (os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_INFO))
          {
            v21 = v20;
            v27 = 67109120;
            RowID = CalCalendarItemGetRowID();
            _os_log_impl(&dword_22430B000, v21, OS_LOG_TYPE_INFO, "Notification for event (rowID = %d) is time-sensitive because it is an attendee proposed time within the time-sensitive window", &v27, 8u);
          }

          v5 = 1;
          goto LABEL_19;
        }
      }
    }

    else
    {
      v22 = CADNotificationLogHandle;
      if (!os_log_type_enabled(CADNotificationLogHandle, OS_LOG_TYPE_INFO))
      {
LABEL_18:
        v5 = 0;
LABEL_19:

        goto LABEL_20;
      }

      v18 = v22;
      v27 = 67109120;
      RowID = CalCalendarItemGetRowID();
      _os_log_impl(&dword_22430B000, v18, OS_LOG_TYPE_INFO, "Notification for event (rowID = %d) is not time-sensitive because there is no occurrence ending after now", &v27, 8u);
    }

    goto LABEL_18;
  }

LABEL_2:
  v5 = 0;
LABEL_20:
  v23 = *MEMORY[0x277D85DE8];
  return v5;
}

- (double)expirationTimestampForEvent:(void *)a3 database:(CalDatabase *)a4
{
  v7 = CalEventOccurrenceCreateForInitialOccurrence();
  CalEventOccurrenceGetDate();
  v9 = v8;
  CFRelease(v7);

  [(CADNotificationGatheringContext *)self expirationTimestampForEvent:a3 withInitialOccurrenceDate:a4 database:v9];
  return result;
}

- (double)expirationTimestampForEvent:(void *)a3 withInitialOccurrenceDate:(double)a4 database:(CalDatabase *)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = CalCalendarItemCopyRecurrences();
  if ([v9 count])
  {
    v10 = *MEMORY[0x277CF78E8];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        v15 = 0;
        do
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [(CADNotificationGatheringContext *)self expirationTimestampForRecurrence:*(*(&v19 + 1) + 8 * v15) event:a3 database:a5, v19];
          if (v10 < v16)
          {
            v10 = v16;
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v10 = CalEventGetDuration() + a4;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v10;
}

- (double)expirationTimestampForRecurrence:(void *)a3 event:(void *)a4 database:(CalDatabase *)a5
{
  CalRecurrenceGetEffectiveEndDate();
  v9 = v8;
  if (vabdd_f64(v8, *MEMORY[0x277CF78F0]) < 2.22044605e-16)
  {
    return *MEMORY[0x277CF78E0];
  }

  v28 = 0;
  [(CADNotificationGatheringContext *)self endDateOfLastOccurrenceInCacheForEvent:a4 database:a5 cacheRange:&v28];
  v10 = v11;
  v12 = v28;
  v13 = v12;
  if (v10 <= self->_now)
  {
    v14 = [v12 endDate];
    [v14 timeIntervalSinceReferenceDate];
    v16 = v15;

    if (v9 < v16)
    {
      goto LABEL_7;
    }

    v17 = [v13 endDate];
    [v17 timeIntervalSinceReferenceDate];
    v19 = v18;
    v20 = [v13 timeZone];
    MEMORY[0x22AA4AEF0](v19);

    v21 = *MEMORY[0x277CF78E0];
    v22 = [v13 timeZone];
    MEMORY[0x22AA4AEF0](v21);

    v23 = [v13 timeZone];
    v24 = CalEventOccurrencesExistForEventInDateRange();

    if (v24)
    {
      v25 = [v13 endDate];
      [v25 timeIntervalSinceReferenceDate];
      v10 = v26;
    }

    else
    {
LABEL_7:
      v10 = *MEMORY[0x277CF78E8];
    }
  }

  return v10;
}

- (double)endDateOfLastOccurrenceInCacheForEvent:(void *)a3 database:(CalDatabase *)a4 cacheRange:(id *)a5
{
  v6 = CalFilterCreateWithDatabaseShowingAll();
  RowID = CalCalendarItemGetRowID();
  Mutable = CFArrayCreateMutable(0, 0, 0);
  CFArrayAppendValue(Mutable, RowID);
  Duration = CalEventGetDuration();
  v10 = self->_now - Duration;
  v11 = CalDatabaseCopyEventOccurrenceCache();
  v12 = CalEventOccurrenceCacheCopyEventOccurrencesWithIDsAfterDate();
  CFRelease(v11);
  v13 = *MEMORY[0x277CF78E8];
  if (v12)
  {
    if (CFArrayGetCount(v12))
    {
      CFArrayGetValueAtIndex(v12, 0);
      CalEventOccurrenceGetDate();
      v13 = v14 + Duration;
    }

    CFRelease(v12);
  }

  CFRelease(Mutable);
  CFRelease(v6);
  return v13;
}

- (BOOL)isSharedCalendarOwnerBlocked:(void *)a3
{
  v3 = [(ClientConnection *)self->_connection blockList];
  if (CalCalendarGetSharingStatus() >= 2)
  {
    v5 = CalCalendarCopySharedOwnerAddress();
    v6 = v5;
    if (v5)
    {
      if ([v5 hasMailto])
      {
        v7 = [v6 stringRemovingMailto];
        v8 = [v3 isBlockedWithEmail:v7];
LABEL_8:
        v4 = v8;

LABEL_10:
        goto LABEL_11;
      }

      if ([v6 hasTel])
      {
        v7 = [v6 stringRemovingTel];
        v8 = [v3 isBlockedWithPhoneNumber:v7];
        goto LABEL_8;
      }
    }

    v4 = 0;
    goto LABEL_10;
  }

  v4 = 0;
LABEL_11:

  return v4;
}

- (BOOL)isEventBlocked:(void *)a3
{
  v4 = CalCalendarItemCopyOrganizer();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [(ClientConnection *)self->_connection blockList];
  v7 = MEMORY[0x22AA4B090](v5);
  if (v7 && ([v6 isBlockedWithEmail:v7] & 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    v9 = MEMORY[0x22AA4C750](v5);
    if (v9)
    {
      v8 = [v6 isBlockedWithPhoneNumber:v9];
    }

    else
    {
      v8 = 0;
    }
  }

  CFRelease(v5);

  return v8;
}

@end