@interface MobileCalDAVNotificationCalendar
- (BOOL)_removeCalendarItemWithURL:(id)a3;
- (BOOL)setEtag:(id)a3 forItemAtURL:(id)a4;
- (BOOL)setScheduleTag:(id)a3 forItemAtURL:(id)a4;
- (BOOL)setURL:(id)a3 forResourceWithUUID:(id)a4;
- (BOOL)updateResourcesFromServer:(id)a3;
- (CalDiagNotificationCollectionSync)notificationCollectionSyncDiagnostics;
- (MobileCalDAVNotificationCalendar)initWithCalendarURL:(id)a3 calendar:(void *)a4 principal:(id)a5 title:(id)a6;
- (id)allItemURLs;
- (id)etagsForItemURLs:(id)a3;
- (void)_copyNotificationWithExternalID:(id)a3;
- (void)_copyNotificationWithUniqueIdentifier:(id)a3 inCalendar:(void *)a4 orStore:(void *)a5;
- (void)clearEventChanges;
- (void)prepareSyncActionsWithCompletionBlock:(id)a3;
- (void)recordDiagnosticsForAccountSync:(id)a3;
@end

@implementation MobileCalDAVNotificationCalendar

- (MobileCalDAVNotificationCalendar)initWithCalendarURL:(id)a3 calendar:(void *)a4 principal:(id)a5 title:(id)a6
{
  v7.receiver = self;
  v7.super_class = MobileCalDAVNotificationCalendar;
  return [(MobileCalDAVCalendar *)&v7 initWithCalendarURL:a3 calendar:a4 principal:a5 title:a6];
}

- (CalDiagNotificationCollectionSync)notificationCollectionSyncDiagnostics
{
  if (!self->_notificationCollectionSyncDiagnostics && RecordCalendarDiagnostics())
  {
    DAWeakLinkClass();
    v3 = objc_opt_new();
    notificationCollectionSyncDiagnostics = self->_notificationCollectionSyncDiagnostics;
    self->_notificationCollectionSyncDiagnostics = v3;
  }

  v5 = self->_notificationCollectionSyncDiagnostics;

  return v5;
}

- (id)allItemURLs
{
  v3 = objc_opt_new();
  [(MobileCalDAVCalendar *)self getCalCalendar];
  v4 = [(MobileCalDAVCalendar *)self principal];
  v5 = [v4 account];
  v6 = [v5 dbHelper];
  v7 = [(MobileCalDAVCalendar *)self accountID];
  [v6 calDatabaseForAccountID:v7];

  v8 = CalDatabaseCopyNotificationsWithCalendar();
  if ([v8 count])
  {
    v9 = 0;
    do
    {
      v10 = [v8 objectAtIndexedSubscript:v9];
      v11 = CalNotificationCopyExternalID();

      if (v11)
      {
        v12 = [(MobileCalDAVCalendar *)self calendarURL];
        v13 = [v11 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v12];

        if (v13)
        {
          [v3 addObject:v13];
        }
      }

      ++v9;
    }

    while (v9 < [v8 count]);
  }

  return v3;
}

- (id)etagsForItemURLs:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    v5 = objc_opt_new();
    v6 = [(MobileCalDAVCalendar *)self principal];
    v7 = [v6 account];
    v8 = [v7 dbHelper];
    v9 = [(MobileCalDAVCalendar *)self accountID];
    [v8 calDatabaseForAccountID:v9];

    v10 = [(MobileCalDAVCalendar *)self accountID];
    cf = CalDatabaseCopyStoreWithExternalID();

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = v4;
    v11 = v4;
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v31;
      do
      {
        v15 = 0;
        do
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v30 + 1) + 8 * v15);
          v17 = [(MobileCalDAVCalendar *)self calendarURL];
          v18 = [v16 da_leastInfoStringRepresentationRelativeToParentURL:v17];

          v19 = [(MobileCalDAVCalendar *)self URLToEtagMap];
          v20 = [v19 objectForKeyedSubscript:v18];

          if (v20 || (v21 = CalDatabaseCopyNotificationWithExternalIDInCalendarOrStore()) != 0 && (v22 = v21, v20 = CalNotificationCopyExternalModTag(), CFRelease(v22), v20))
          {
            [v5 setObject:v20 forKeyedSubscript:v16];
          }

          ++v15;
        }

        while (v13 != v15);
        v23 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
        v13 = v23;
      }

      while (v23);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    v4 = v29;
  }

  else
  {
    v24 = DALoggingwithCategory();
    v25 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v24, v25))
    {
      *buf = 138412290;
      v36 = self;
      _os_log_impl(&dword_2484B2000, v24, v25, "Could not find a calendar that matched %@", buf, 0xCu);
    }

    v5 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_copyNotificationWithUniqueIdentifier:(id)a3 inCalendar:(void *)a4 orStore:(void *)a5
{
  v6 = a3;
  v7 = [(MobileCalDAVCalendar *)self principal];
  v8 = [v7 account];
  v9 = [v8 dbHelper];
  v10 = [(MobileCalDAVCalendar *)self accountID];
  [v9 calDatabaseForAccountID:v10];

  if (![(MobileCalDAVCalendar *)self recordIDForUniqueIdentifier:v6]|| (v11 = CalDatabaseCopyEntityWithRecordID()) == 0)
  {
    v11 = CalDatabaseCopyNotificationWithUniqueIdentifierInCalendarOrStore();
    if (v11)
    {
      v12 = CalEntityCopyRecordID();
      if (v12)
      {
        v13 = v12;
        [(MobileCalDAVCalendar *)self setUniqueIdentifier:v6 forRecordID:v12];
        CFRelease(v13);
      }
    }
  }

  return v11;
}

- (void)_copyNotificationWithExternalID:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVCalendar *)self principal];
  v6 = [v5 account];
  v7 = [v6 dbHelper];
  v8 = [(MobileCalDAVCalendar *)self accountID];
  [v7 calDatabaseForAccountID:v8];

  v9 = [(MobileCalDAVCalendar *)self URLToRecordIDMap];
  v10 = [v9 objectForKeyedSubscript:v4];

  if (!v10 || (v11 = CalDatabaseCopyEntityWithRecordID()) == 0)
  {
    if ([(MobileCalDAVCalendar *)self getCalCalendar])
    {
      v11 = CalDatabaseCopyNotificationWithExternalIDInCalendarOrStore();
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (BOOL)setEtag:(id)a3 forItemAtURL:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MobileCalDAVCalendar *)self calendarURL];
  v9 = [v7 da_leastInfoStringRepresentationRelativeToParentURL:v8];

  v10 = [(MobileCalDAVNotificationCalendar *)self _copyNotificationWithExternalID:v9];
  if (v10)
  {
    CalNotificationSetExternalModTag();
    if (v9)
    {
      v11 = [(MobileCalDAVCalendar *)self URLToEtagMap];
      v12 = v11;
      if (v6)
      {
        [v11 setObject:v6 forKeyedSubscript:v9];
      }

      else
      {
        [v11 removeObjectForKey:v9];
      }
    }

    [(MobileCalDAVCalendar *)self setIsDirty:1];
    CFRelease(v10);
  }

  else
  {
    v13 = DALoggingwithCategory();
    v14 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v13, v14))
    {
      v17 = 138412290;
      v18 = v7;
      _os_log_impl(&dword_2484B2000, v13, v14, "Couldn't set etag for the item at %@ because it doesn't exist in our database", &v17, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v10 != 0;
}

- (BOOL)setURL:(id)a3 forResourceWithUUID:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

  v8 = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (!v8)
  {
    v17 = DALoggingwithCategory();
    v18 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v17, v18))
    {
      v23 = 138412290;
      v24 = self;
      _os_log_impl(&dword_2484B2000, v17, v18, "Could not find a calendar that matched %@", &v23, 0xCu);
    }

    goto LABEL_13;
  }

  v9 = [(MobileCalDAVNotificationCalendar *)self _copyNotificationWithUniqueIdentifier:v7 inCalendar:v8 orStore:0];
  if (!v9)
  {
    v19 = DALoggingwithCategory();
    v20 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v19, v20))
    {
      v23 = 138412290;
      v24 = v7;
      _os_log_impl(&dword_2484B2000, v19, v20, "Couldn't set url for the event %@ because it doesn't exist in our database", &v23, 0xCu);
    }

    goto LABEL_13;
  }

  v10 = v9;
  v11 = [(MobileCalDAVCalendar *)self calendarURL];
  v12 = [v6 da_leastInfoStringRepresentationRelativeToParentURL:v11];

  CalNotificationSetExternalID();
  [(MobileCalDAVCalendar *)self setIsDirty:1];
  v13 = CalEntityCopyRecordID();
  if (v13)
  {
    v14 = v13;
    v15 = [(MobileCalDAVCalendar *)self URLToRecordIDMap];
    [v15 setObject:v14 forKeyedSubscript:v12];
  }

  CFRelease(v10);

  v16 = 1;
LABEL_14:

  v21 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)setScheduleTag:(id)a3 forItemAtURL:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"MobileCalDAVNotificationCalendar.m" lineNumber:245 description:@"Woah buddy- we shouldn't be setting a schedule tag on a notification item!"];

  return 0;
}

- (BOOL)updateResourcesFromServer:(id)a3
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(MobileCalDAVCalendar *)self getCalCalendar];
    v6 = v5 != 0;
    if (v5)
    {
      v51 = RecordCalendarDiagnostics();
      v45 = v6;
      if (v51)
      {
        DAWeakLinkClass();
      }

      v47 = objc_opt_new();
      v9 = [(MobileCalDAVCalendar *)self principal];
      v10 = [v9 account];
      v11 = [v10 dbHelper];
      v12 = [(MobileCalDAVCalendar *)self accountID];
      v13 = [v11 calDatabaseForAccountID:v12];

      v14 = [(MobileCalDAVCalendar *)self accountID];
      v50 = v13;
      v15 = CalDatabaseCopyStoreWithExternalID();

      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v46 = v4;
      obj = v4;
      v52 = [obj countByEnumeratingWithState:&v60 objects:v65 count:16];
      if (v52)
      {
        v49 = *v61;
        v55 = v15;
        do
        {
          for (i = 0; i != v52; ++i)
          {
            if (*v61 != v49)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v60 + 1) + 8 * i);
            v54 = MEMORY[0x277CF7508];
            v18 = [v17 dataPayload];
            v19 = [v17 serverID];
            v20 = [v17 syncKey];
            v53 = [(MobileCalDAVCalendar *)self getCalCalendar];
            v21 = [(MobileCalDAVCalendar *)self principal];
            v22 = [v21 calendarHomeURL];
            v23 = [(MobileCalDAVCalendar *)self calendarURL];
            v24 = [MEMORY[0x277CF7790] defaultProvider];
            [v54 processNotificationWithData:v18 serverURL:v19 syncKey:v20 database:v50 notificationCalendar:v53 store:v55 calendarHomeURL:v22 notificationCalendarURL:v23 contactsProvider:v24 recordIDMap:self];

            v25 = [v17 syncKey];
            v26 = [v17 serverID];
            [(MobileCalDAVNotificationCalendar *)self setEtag:v25 forItemAtURL:v26];

            [(MobileCalDAVCalendar *)self setIsDirty:1];
            if (v51)
            {
              v27 = objc_opt_new();
              v28 = [v17 serverID];
              [v27 setUrl:v28];

              v29 = [v17 dataPayload];
              [v27 setDownloadedData:v29];

              [v27 setDirection:0];
              [v47 addObject:v27];
            }

            v15 = v55;
          }

          v52 = [obj countByEnumeratingWithState:&v60 objects:v65 count:16];
        }

        while (v52);
      }

      if (v15)
      {
        CFRelease(v15);
      }

      if ([obj count])
      {
        v30 = [(MobileCalDAVCalendar *)self principal];
        v31 = [v30 account];
        v32 = [v31 dbHelper];
        v33 = [(MobileCalDAVCalendar *)self accountID];
        v34 = [v32 calSaveDatabaseAndFlushCachesForAccountID:v33];

        v7 = v47;
        if ((v51 & v34) == 1)
        {
          v35 = [(MobileCalDAVNotificationCalendar *)self notificationCollectionSyncDiagnostics];
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v59 = 0u;
          v36 = v47;
          v37 = [v36 countByEnumeratingWithState:&v56 objects:v64 count:16];
          if (v37)
          {
            v38 = v37;
            v39 = *v57;
            do
            {
              for (j = 0; j != v38; ++j)
              {
                if (*v57 != v39)
                {
                  objc_enumerationMutation(v36);
                }

                [v35 addNotificationSync:*(*(&v56 + 1) + 8 * j)];
              }

              v38 = [v36 countByEnumeratingWithState:&v56 objects:v64 count:16];
            }

            while (v38);
          }
        }

        v41 = [(MobileCalDAVCalendar *)self uniqueIdentifierToRecordIDMap];
        [v41 removeAllObjects];

        v42 = [(MobileCalDAVCalendar *)self URLToRecordIDMap];
        [v42 removeAllObjects];

        [(MobileCalDAVCalendar *)self setNumDownloadedElements:[(MobileCalDAVCalendar *)self numDownloadedElements]+ 1];
        v4 = v46;
        v6 = v45;
      }

      else
      {
        v4 = v46;
        v6 = v45;
        v7 = v47;
      }
    }

    else
    {
      v7 = DALoggingwithCategory();
      v8 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v7, v8))
      {
        *buf = 138412290;
        v67 = self;
        _os_log_impl(&dword_2484B2000, v7, v8, "Could not find a calendar that matched %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v6 = 1;
  }

  v43 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)_removeCalendarItemWithURL:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MobileCalDAVCalendar *)self principal];
  v6 = [v5 account];
  v7 = [v6 dbHelper];
  v8 = [(MobileCalDAVCalendar *)self accountID];
  [v7 calDatabaseForAccountID:v8];

  v9 = [(MobileCalDAVCalendar *)self getCalCalendar];
  v10 = DALoggingwithCategory();
  v11 = v10;
  if (!v9)
  {
    v27 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v10, v27))
    {
      v32 = 138412290;
      v33 = self;
      _os_log_impl(&dword_2484B2000, v11, v27, "Could not find a calendar that matched %@", &v32, 0xCu);
    }

    goto LABEL_19;
  }

  v12 = MEMORY[0x277D03988];
  v13 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v10, v13))
  {
    v32 = 138412290;
    v33 = v4;
    _os_log_impl(&dword_2484B2000, v11, v13, "Removing notification item with url %@", &v32, 0xCu);
  }

  v14 = [(MobileCalDAVCalendar *)self calendarURL];
  v11 = [(MobileCalDAVNotificationCalendar *)v4 da_leastInfoStringRepresentationRelativeToParentURL:v14];

  v15 = CalDatabaseCopyNotificationWithExternalIDInCalendarOrStore();
  if (!v15)
  {
    v28 = DALoggingwithCategory();
    v29 = *(v12 + 4);
    if (os_log_type_enabled(v28, v29))
    {
      v32 = 138412290;
      v33 = v4;
      _os_log_impl(&dword_2484B2000, v28, v29, "Couldn't get a calendar notification to remove with url %@", &v32, 0xCu);
    }

LABEL_19:
    v26 = 0;
    goto LABEL_20;
  }

  v16 = v15;
  if (CalEntityGetType() == 102)
  {
    v17 = CalNotificationCopyHostURL();
    if (v17)
    {
      v18 = [(MobileCalDAVCalendar *)self principal];
      v19 = [v18 calendarHomeURL];
      v20 = [v17 da_leastInfoStringRepresentationRelativeToParentURL:v19];
      v21 = [v20 da_appendSlashIfNeeded];

      v22 = [(MobileCalDAVCalendar *)self accountID];
      v23 = CalDatabaseCopyStoreWithExternalID();

      v24 = CalDatabaseCopyCalendarWithExternalIDInStore();
      if (v24)
      {
        v25 = v24;
        CalRemoveCalendar();
        CFRelease(v25);
      }

      if (v23)
      {
        CFRelease(v23);
      }
    }
  }

  CalRemoveNotification();
  v26 = 1;
  [(MobileCalDAVCalendar *)self setIsDirty:1];
  CFRelease(v16);
  [(MobileCalDAVCalendar *)self setNumDownloadedElements:[(MobileCalDAVCalendar *)self numDownloadedElements]+ 1];
LABEL_20:

  v30 = *MEMORY[0x277D85DE8];
  return v26;
}

- (void)clearEventChanges
{
  [(MobileCalDAVCalendar *)self clearChangesForEntityType:17];
  v3.receiver = self;
  v3.super_class = MobileCalDAVNotificationCalendar;
  [(MobileCalDAVCalendar *)&v3 clearEventChanges];
}

- (void)prepareSyncActionsWithCompletionBlock:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MobileCalDAVCalendar *)self principal];
  v6 = [v5 account];
  v7 = [v6 dbHelper];
  v8 = [(MobileCalDAVCalendar *)self accountID];
  [v7 calDatabaseForAccountID:v8];

  v28 = self;
  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    v9 = objc_opt_new();
    v10 = objc_opt_new();
    theDict = 0;
    CalDatabaseCopyNotificationChangesInCalendar();
    v13 = DALoggingwithCategory();
    v14 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v13, v14))
    {
      *buf = 134217984;
      v36 = 0;
      _os_log_impl(&dword_2484B2000, v13, v14, "Gathering deleted notifications. Found %lu", buf, 0xCu);
    }

    v27 = v4;

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v15 = v10;
    v16 = [v15 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v30;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v30 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v29 + 1) + 8 * i);
          v21 = DALoggingwithCategory();
          if (os_log_type_enabled(v21, v14))
          {
            *buf = 138412290;
            v36 = v20;
            _os_log_impl(&dword_2484B2000, v21, v14, "Sending up a delete for the notification at URL %@", buf, 0xCu);
          }

          v22 = objc_alloc(MEMORY[0x277CFDB90]);
          v23 = [(MobileCalDAVCalendar *)v28 calendarURL];
          v24 = [(MobileCalDAVNotificationCalendar *)v20 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v23];
          v25 = [v22 initWithAction:2 context:v24];

          [v9 addObject:v25];
        }

        v17 = [v15 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v17);
    }

    [(MobileCalDAVCalendar *)v28 setSyncActions:v9];
    v4 = v27;
    v27[2](v27, v28);
  }

  else
  {
    v11 = DALoggingwithCategory();
    v12 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v11, v12))
    {
      *buf = 138412290;
      v36 = self;
      _os_log_impl(&dword_2484B2000, v11, v12, "Could not find a calendar that matched %@", buf, 0xCu);
    }

    v4[2](v4, self);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)recordDiagnosticsForAccountSync:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVNotificationCalendar *)self notificationCollectionSyncDiagnostics];
  [v4 setNotificationCollectionSync:v5];
}

@end