@interface MobileCalDAVInboxCalendar
- (BOOL)_removeInvitationWithURL:(id)a3;
- (BOOL)deleteResourcesAtURLs:(id)a3;
- (BOOL)updateResourcesFromServer:(id)a3;
- (CalDiagInboxCollectionSync)inboxCollectionSyncDiagnostics;
- (MobileCalDAVInboxCalendar)initWithCalendarURL:(id)a3 calendar:(void *)a4 principal:(id)a5 title:(id)a6;
- (id)allItemURLs;
- (id)etagsForItemURLs:(id)a3;
- (void)_copyEventActionWithURL:(id)a3 forCalItemWithUniqueIdentifier:(id)a4;
- (void)recordDiagnosticsForAccountSync:(id)a3;
- (void)setETag:(id)a3 forInvitationAtURL:(id)a4 uniqueIdentifier:(id)a5;
@end

@implementation MobileCalDAVInboxCalendar

- (MobileCalDAVInboxCalendar)initWithCalendarURL:(id)a3 calendar:(void *)a4 principal:(id)a5 title:(id)a6
{
  if (!a6)
  {
    a6 = @"Inbox";
  }

  v7.receiver = self;
  v7.super_class = MobileCalDAVInboxCalendar;
  return [(MobileCalDAVCalendar *)&v7 initWithCalendarURL:a3 calendar:a4 principal:a5 title:a6];
}

- (CalDiagInboxCollectionSync)inboxCollectionSyncDiagnostics
{
  if (!self->_inboxCollectionSyncDiagnostics && RecordCalendarDiagnostics())
  {
    DAWeakLinkClass();
    v3 = objc_opt_new();
    inboxCollectionSyncDiagnostics = self->_inboxCollectionSyncDiagnostics;
    self->_inboxCollectionSyncDiagnostics = v3;
  }

  v5 = self->_inboxCollectionSyncDiagnostics;

  return v5;
}

- (id)allItemURLs
{
  v19.receiver = self;
  v19.super_class = MobileCalDAVInboxCalendar;
  v3 = [(MobileCalDAVCalendar *)&v19 allItemURLs];
  v4 = [v3 mutableCopy];

  v5 = [(MobileCalDAVCalendar *)self principal];
  v6 = [v5 account];
  v7 = [v6 dbHelper];
  v8 = [(MobileCalDAVCalendar *)self accountID];
  [v7 calDatabaseForAccountID:v8];

  v9 = [(MobileCalDAVCalendar *)self accountID];
  v10 = CalDatabaseCopyStoreWithExternalID();

  v11 = CalDatabaseCopyOfAllEventActionsInStore();
  if ([v11 count])
  {
    v12 = 0;
    do
    {
      v13 = [v11 objectAtIndexedSubscript:v12];
      v14 = CalEventActionCopyExternalID();

      if (v14)
      {
        v15 = [(MobileCalDAVCalendar *)self principal];
        v16 = [v15 inboxURL];
        v17 = [v14 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v16];

        if (v17)
        {
          [v4 addObject:v17];
        }
      }

      ++v12;
    }

    while (v12 < [v11 count]);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v4;
}

- (void)_copyEventActionWithURL:(id)a3 forCalItemWithUniqueIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    goto LABEL_15;
  }

  v8 = [(MobileCalDAVCalendar *)self principal];
  v9 = [v8 account];
  v10 = [v9 dbHelper];
  v11 = [(MobileCalDAVCalendar *)self accountID];
  [v10 calDatabaseForAccountID:v11];

  v12 = [(MobileCalDAVCalendar *)self accountID];
  v13 = CalDatabaseCopyStoreWithExternalID();

  if (v13)
  {
    v14 = [(MobileCalDAVCalendar *)self principal];
    v15 = [v14 inboxURL];
    v16 = [v6 da_leastInfoStringRepresentationRelativeToParentURL:v15];

    v17 = CalDatabaseCopyAllEventActionsWithExternalIDInStore();
    if (v17)
    {
      v18 = v17;
      v29 = v16;
      Count = CFArrayGetCount(v17);
      if (Count >= 1)
      {
        v20 = Count;
        for (i = 0; i != v20; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v18, i);
          v23 = CalEventActionCopyOwningEvent();
          if (v23)
          {
            v24 = v23;
            v25 = CalEventCopyUniqueIdentifier();
            if (v25 && (v26 = v25, v27 = [v7 isEqualToString:v25], CFRelease(v26), (v27 & 1) != 0))
            {
              CFRelease(v24);
              if (ValueAtIndex)
              {
                goto LABEL_14;
              }
            }

            else
            {
              CFRelease(v24);
            }
          }
        }
      }

      ValueAtIndex = 0;
LABEL_14:
      CFRelease(v18);
      v16 = v29;
    }

    else
    {
      ValueAtIndex = 0;
    }

    CFRelease(v13);

    if (ValueAtIndex)
    {
      CFRetain(ValueAtIndex);
    }
  }

  else
  {
LABEL_15:
    ValueAtIndex = 0;
  }

  return ValueAtIndex;
}

- (void)setETag:(id)a3 forInvitationAtURL:(id)a4 uniqueIdentifier:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_18:
    [MobileCalDAVInboxCalendar setETag:a2 forInvitationAtURL:self uniqueIdentifier:?];
    if (v9)
    {
      goto LABEL_4;
    }

    goto LABEL_19;
  }

  [MobileCalDAVInboxCalendar setETag:a2 forInvitationAtURL:self uniqueIdentifier:?];
  if (!v10)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v9)
  {
    goto LABEL_4;
  }

LABEL_19:
  [MobileCalDAVInboxCalendar setETag:a2 forInvitationAtURL:self uniqueIdentifier:?];
LABEL_4:
  v12 = [(MobileCalDAVInboxCalendar *)self _copyEventActionWithURL:v10 forCalItemWithUniqueIdentifier:v11];
  if (v12)
  {
    EventAction = v12;
LABEL_6:
    v14 = [(MobileCalDAVCalendar *)self principal];
    v15 = [v14 inboxURL];
    v16 = [v10 da_leastInfoStringRepresentationRelativeToParentURL:v15];

    CalEventActionSetExternalID();
    CalEventActionSetExternalModTag();
    CFRelease(EventAction);

    goto LABEL_16;
  }

  v17 = [(MobileCalDAVCalendar *)self principal];
  v18 = [v17 account];
  v19 = [v18 dbHelper];

  v20 = [(MobileCalDAVCalendar *)self accountID];
  [v19 calDatabaseForAccountID:v20];

  v21 = [(MobileCalDAVCalendar *)self accountID];
  v22 = CalDatabaseCopyStoreWithExternalID();

  v23 = [(MobileCalDAVCalendar *)self _copyCalItemWithUniqueIdentifier:v11 inCalendar:0 orStore:v22];
  if (v22)
  {
    CFRelease(v22);
  }

  if (v23)
  {
    v24 = [(MobileCalDAVCalendar *)self accountID];
    [v19 calDatabaseForAccountID:v24];
    EventAction = CalDatabaseCreateEventAction();

    CalEventAddEventAction();
    CFRelease(v23);

    if (EventAction)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v25 = DALoggingwithCategory();
  v26 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v25, v26))
  {
    v28 = 138412290;
    v29 = v10;
    _os_log_impl(&dword_2484B2000, v25, v26, "Couldn't set an etag for the event action with url %@", &v28, 0xCu);
  }

LABEL_16:
  v27 = *MEMORY[0x277D85DE8];
}

- (id)etagsForItemURLs:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24 = objc_opt_new();
  v5 = [(MobileCalDAVCalendar *)self principal];
  v6 = [v5 account];
  v7 = [v6 dbHelper];
  v8 = [(MobileCalDAVCalendar *)self accountID];
  [v7 calDatabaseForAccountID:v8];

  v9 = [(MobileCalDAVCalendar *)self accountID];
  v10 = CalDatabaseCopyStoreWithExternalID();

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v4;
  v11 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        v16 = [(MobileCalDAVCalendar *)self principal];
        v17 = [v16 inboxURL];
        v18 = [v15 da_leastInfoStringRepresentationRelativeToParentURL:v17];

        v19 = CalDatabaseCopyEventActionWithExternalIDInStore();
        if (v19)
        {
          v20 = v19;
          v21 = CalEventActionCopyExternalModTag();
          CFRelease(v20);
          if (v21)
          {
            [v24 setObject:v21 forKeyedSubscript:v15];
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v24;
}

- (BOOL)updateResourcesFromServer:(id)a3
{
  v83 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v58 = RecordCalendarDiagnostics();
  v57 = self;
  if (v58)
  {
    v56 = DAWeakLinkClass();
  }

  else
  {
    v56 = 0;
  }

  v55 = objc_opt_new();
  v62 = [MEMORY[0x277CBEB58] set];
  v61 = objc_opt_new();
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v75 objects:v82 count:16];
  v59 = v5;
  if (v6)
  {
    v7 = v6;
    v64 = *v76;
    type = *(MEMORY[0x277D03988] + 6);
    v8 = 0x277CF7000uLL;
    v60 = *(MEMORY[0x277D03988] + 5);
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v76 != v64)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v75 + 1) + 8 * i);
        v11 = *(v8 + 56);
        v12 = [v10 scheduleChanges];
        v13 = [v11 propertyWithItem:v12];

        v14 = objc_alloc(MEMORY[0x277CF7550]);
        v15 = [v10 dataPayload];
        v16 = [v10 filename];
        v17 = [v14 initWithData:v15 filename:v16 scheduleChanges:v13];

        v18 = [v17 event];
        v19 = [v18 uid];
        v20 = DALoggingwithCategory();
        v21 = v20;
        if (v19)
        {
          if (os_log_type_enabled(v20, type))
          {
            v22 = [v10 filename];
            *buf = 138412290;
            v81 = v22;
            _os_log_impl(&dword_2484B2000, v21, type, "Handling iTIP message at %@", buf, 0xCu);

            v5 = v59;
          }

          [v62 addObject:v17];
          v21 = [v10 filename];
          [v61 setObject:v10 forKeyedSubscript:v21];
        }

        else
        {
          if (os_log_type_enabled(v20, v60))
          {
            v23 = [v10 filename];
            *buf = 138412290;
            v81 = v23;
            _os_log_impl(&dword_2484B2000, v21, v60, "The invite at %@ doesn't have a UID. Ignoring it, but we'll download it again later.", buf, 0xCu);
          }

          v8 = 0x277CF7000;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v75 objects:v82 count:16];
    }

    while (v7);
  }

  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __55__MobileCalDAVInboxCalendar_updateResourcesFromServer___block_invoke;
  v69[3] = &unk_278F17E58;
  v24 = v61;
  v70 = v24;
  v71 = v57;
  v74 = v58;
  v73 = v56;
  v25 = v55;
  v72 = v25;
  v26 = MEMORY[0x24C1D0520](v69);
  v27 = [(MobileCalDAVCalendar *)v57 principal];
  v28 = [v27 account];
  v29 = [v28 dbHelper];
  v30 = [(MobileCalDAVCalendar *)v57 accountID];
  v31 = [v29 calDatabaseForAccountID:v30];

  v32 = [(MobileCalDAVCalendar *)v57 principal];
  v33 = [v32 account];

  [v33 accountID];
  v34 = CalDatabaseCopyStoreWithExternalID();
  if (v34)
  {
    v35 = v34;
    [MEMORY[0x277CF7548] processMessages:v62 withDatabase:v31 calStore:v34 accountInfo:v33 handledEventCallback:v26 cancellationToken:0 options:0];
    CFRelease(v35);
  }

  else
  {
    v36 = DALoggingwithCategory();
    v37 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v36, v37))
    {
      v38 = [v33 accountID];
      *buf = 138543362;
      v81 = v38;
      _os_log_impl(&dword_2484B2000, v36, v37, "Could not find a store in the database with uid %{public}@", buf, 0xCu);
    }
  }

  v39 = v59;
  if ([v59 count])
  {
    v40 = [(MobileCalDAVCalendar *)v57 principal];
    v41 = [v40 account];
    v42 = [v41 dbHelper];
    v43 = [(MobileCalDAVCalendar *)v57 accountID];
    v44 = [v42 calSaveDatabaseAndFlushCachesForAccountID:v43];

    if (v58 && v44)
    {
      v45 = [(MobileCalDAVInboxCalendar *)v57 inboxCollectionSyncDiagnostics];
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v46 = v25;
      v47 = [v46 countByEnumeratingWithState:&v65 objects:v79 count:16];
      if (v47)
      {
        v48 = v47;
        v49 = *v66;
        do
        {
          for (j = 0; j != v48; ++j)
          {
            if (*v66 != v49)
            {
              objc_enumerationMutation(v46);
            }

            [v45 addCalendarItemSync:*(*(&v65 + 1) + 8 * j)];
          }

          v48 = [v46 countByEnumeratingWithState:&v65 objects:v79 count:16];
        }

        while (v48);
      }
    }

    v51 = [(MobileCalDAVCalendar *)v57 uniqueIdentifierToRecordIDMap];
    [v51 removeAllObjects];

    v52 = [(MobileCalDAVCalendar *)v57 URLToRecordIDMap];
    [v52 removeAllObjects];

    v39 = v59;
    -[MobileCalDAVCalendar setNumDownloadedElements:](v57, "setNumDownloadedElements:", -[MobileCalDAVCalendar numDownloadedElements](v57, "numDownloadedElements") + [v59 count]);
  }

  v53 = *MEMORY[0x277D85DE8];
  return 1;
}

void __55__MobileCalDAVInboxCalendar_updateResourcesFromServer___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  v10 = [a2 filename];
  v11 = [v9 objectForKeyedSubscript:v10];

  v12 = DALoggingwithCategory();
  v13 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = [v11 syncKey];
    v15 = [v11 serverID];
    v26 = 138412802;
    v27 = v14;
    v28 = 2112;
    v29 = v15;
    v30 = 2112;
    v31 = v7;
    _os_log_impl(&dword_2484B2000, v12, v13, "Setting Etag %@ for ServerID %@ and inviteUID %@", &v26, 0x20u);
  }

  v16 = *(a1 + 40);
  v17 = [v11 syncKey];
  v18 = [v11 serverID];
  [v16 setETag:v17 forInvitationAtURL:v18 uniqueIdentifier:v7];

  if (*(a1 + 64) == 1)
  {
    v19 = *(a1 + 56);
    v20 = objc_opt_new();
    [v20 setUid:v7];
    v21 = [v8 summary];
    [v20 setTitle:v21];

    v22 = [v11 scheduleTag];
    [v20 setScheduleTag:v22];

    v23 = [v11 syncKey];
    [v20 setSyncKey:v23];

    [v20 setDirection:0];
    v24 = [v11 dataPayload];
    [v20 setDownloadedData:v24];

    [*(a1 + 48) addObject:v20];
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (BOOL)_removeInvitationWithURL:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(MobileCalDAVCalendar *)self principal];
    v6 = [v5 account];
    v7 = [v6 dbHelper];
    v8 = [(MobileCalDAVCalendar *)self accountID];
    [v7 calDatabaseForAccountID:v8];

    v9 = [(MobileCalDAVCalendar *)self accountID];
    v10 = CalDatabaseCopyStoreWithExternalID();

    if (v10)
    {
      v11 = DALoggingwithCategory();
      v12 = MEMORY[0x277D03988];
      v13 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v11, v13))
      {
        *buf = 138412290;
        v34 = v4;
        _os_log_impl(&dword_2484B2000, v11, v13, "Removing item action with url %@", buf, 0xCu);
      }

      v14 = [(MobileCalDAVCalendar *)self principal];
      v15 = [v14 inboxURL];
      v16 = [v4 da_leastInfoStringRepresentationRelativeToParentURL:v15];

      v17 = CalDatabaseCopyAllEventActionsWithExternalIDInStore();
      if (v17)
      {
        v18 = v17;
        v32 = v16;
        Count = CFArrayGetCount(v17);
        if (Count >= 1)
        {
          v20 = Count;
          for (i = 0; i != v20; ++i)
          {
            CFArrayGetValueAtIndex(v18, i);
            v22 = CalEventActionCopyOwningEvent();
            if (v22)
            {
              v23 = v22;
              CalEventRemoveEventAction();
              v24 = CalEventCopyEventActions();
              v25 = [v24 count];
              v26 = CalEventNeedsResponse();
              if (!v25)
              {
                v27 = v26;
                CalEventSetInvitationChangedProperties();
                if ((v27 & 1) == 0)
                {
                  CalEventSetNeedsNotification();
                }
              }

              CFRelease(v23);
            }

            else
            {
              CalEventActionRemove();
            }
          }
        }

        [(MobileCalDAVCalendar *)self setNumDownloadedElements:[(MobileCalDAVCalendar *)self numDownloadedElements]+ 1];
        CFRelease(v18);
        v16 = v32;
      }

      else
      {
        v28 = DALoggingwithCategory();
        v29 = *(v12 + 4);
        if (os_log_type_enabled(v28, v29))
        {
          *buf = 138412290;
          v34 = v4;
          _os_log_impl(&dword_2484B2000, v28, v29, "Couldn't get a calendar action item to remove with url %@", buf, 0xCu);
        }
      }

      CFRelease(v10);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)deleteResourcesAtURLs:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(MobileCalDAVInboxCalendar *)self _removeInvitationWithURL:*(*(&v15 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  if ([v4 count])
  {
    v9 = [(MobileCalDAVCalendar *)self principal];
    v10 = [v9 account];
    v11 = [v10 dbHelper];
    v12 = [(MobileCalDAVCalendar *)self accountID];
    [v11 calSaveDatabaseAndFlushCachesForAccountID:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)recordDiagnosticsForAccountSync:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVInboxCalendar *)self inboxCollectionSyncDiagnostics];
  [v4 setInboxCollectionSync:v5];
}

- (void)setETag:(uint64_t)a1 forInvitationAtURL:(uint64_t)a2 uniqueIdentifier:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MobileCalDAVInboxCalendar.m" lineNumber:127 description:@"Cannot set etag for an invitation without a unique identifier"];
}

- (void)setETag:(uint64_t)a1 forInvitationAtURL:(uint64_t)a2 uniqueIdentifier:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MobileCalDAVInboxCalendar.m" lineNumber:128 description:@"Cannot insert a nil url to the invitation etag cache"];
}

- (void)setETag:(uint64_t)a1 forInvitationAtURL:(uint64_t)a2 uniqueIdentifier:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MobileCalDAVInboxCalendar.m" lineNumber:129 description:@"Cannot insert a nil etag to the invitation etag cache"];
}

@end