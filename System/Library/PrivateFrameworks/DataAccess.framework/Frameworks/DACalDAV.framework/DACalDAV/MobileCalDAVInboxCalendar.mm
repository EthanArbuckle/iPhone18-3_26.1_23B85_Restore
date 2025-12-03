@interface MobileCalDAVInboxCalendar
- (BOOL)_removeInvitationWithURL:(id)l;
- (BOOL)deleteResourcesAtURLs:(id)ls;
- (BOOL)updateResourcesFromServer:(id)server;
- (CalDiagInboxCollectionSync)inboxCollectionSyncDiagnostics;
- (MobileCalDAVInboxCalendar)initWithCalendarURL:(id)l calendar:(void *)calendar principal:(id)principal title:(id)title;
- (id)allItemURLs;
- (id)etagsForItemURLs:(id)ls;
- (void)_copyEventActionWithURL:(id)l forCalItemWithUniqueIdentifier:(id)identifier;
- (void)recordDiagnosticsForAccountSync:(id)sync;
- (void)setETag:(id)tag forInvitationAtURL:(id)l uniqueIdentifier:(id)identifier;
@end

@implementation MobileCalDAVInboxCalendar

- (MobileCalDAVInboxCalendar)initWithCalendarURL:(id)l calendar:(void *)calendar principal:(id)principal title:(id)title
{
  if (!title)
  {
    title = @"Inbox";
  }

  v7.receiver = self;
  v7.super_class = MobileCalDAVInboxCalendar;
  return [(MobileCalDAVCalendar *)&v7 initWithCalendarURL:l calendar:calendar principal:principal title:title];
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
  allItemURLs = [(MobileCalDAVCalendar *)&v19 allItemURLs];
  v4 = [allItemURLs mutableCopy];

  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  accountID = [(MobileCalDAVCalendar *)self accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  accountID2 = [(MobileCalDAVCalendar *)self accountID];
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
        principal2 = [(MobileCalDAVCalendar *)self principal];
        inboxURL = [principal2 inboxURL];
        v17 = [v14 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:inboxURL];

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

- (void)_copyEventActionWithURL:(id)l forCalItemWithUniqueIdentifier:(id)identifier
{
  lCopy = l;
  identifierCopy = identifier;
  if (!lCopy)
  {
    goto LABEL_15;
  }

  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  accountID = [(MobileCalDAVCalendar *)self accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  accountID2 = [(MobileCalDAVCalendar *)self accountID];
  v13 = CalDatabaseCopyStoreWithExternalID();

  if (v13)
  {
    principal2 = [(MobileCalDAVCalendar *)self principal];
    inboxURL = [principal2 inboxURL];
    v16 = [lCopy da_leastInfoStringRepresentationRelativeToParentURL:inboxURL];

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
            if (v25 && (v26 = v25, v27 = [identifierCopy isEqualToString:v25], CFRelease(v26), (v27 & 1) != 0))
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

- (void)setETag:(id)tag forInvitationAtURL:(id)l uniqueIdentifier:(id)identifier
{
  v30 = *MEMORY[0x277D85DE8];
  tagCopy = tag;
  lCopy = l;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    if (lCopy)
    {
      goto LABEL_3;
    }

LABEL_18:
    [MobileCalDAVInboxCalendar setETag:a2 forInvitationAtURL:self uniqueIdentifier:?];
    if (tagCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_19;
  }

  [MobileCalDAVInboxCalendar setETag:a2 forInvitationAtURL:self uniqueIdentifier:?];
  if (!lCopy)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (tagCopy)
  {
    goto LABEL_4;
  }

LABEL_19:
  [MobileCalDAVInboxCalendar setETag:a2 forInvitationAtURL:self uniqueIdentifier:?];
LABEL_4:
  v12 = [(MobileCalDAVInboxCalendar *)self _copyEventActionWithURL:lCopy forCalItemWithUniqueIdentifier:identifierCopy];
  if (v12)
  {
    EventAction = v12;
LABEL_6:
    principal = [(MobileCalDAVCalendar *)self principal];
    inboxURL = [principal inboxURL];
    v16 = [lCopy da_leastInfoStringRepresentationRelativeToParentURL:inboxURL];

    CalEventActionSetExternalID();
    CalEventActionSetExternalModTag();
    CFRelease(EventAction);

    goto LABEL_16;
  }

  principal2 = [(MobileCalDAVCalendar *)self principal];
  account = [principal2 account];
  dbHelper = [account dbHelper];

  accountID = [(MobileCalDAVCalendar *)self accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  accountID2 = [(MobileCalDAVCalendar *)self accountID];
  v22 = CalDatabaseCopyStoreWithExternalID();

  v23 = [(MobileCalDAVCalendar *)self _copyCalItemWithUniqueIdentifier:identifierCopy inCalendar:0 orStore:v22];
  if (v22)
  {
    CFRelease(v22);
  }

  if (v23)
  {
    accountID3 = [(MobileCalDAVCalendar *)self accountID];
    [dbHelper calDatabaseForAccountID:accountID3];
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
    v29 = lCopy;
    _os_log_impl(&dword_2484B2000, v25, v26, "Couldn't set an etag for the event action with url %@", &v28, 0xCu);
  }

LABEL_16:
  v27 = *MEMORY[0x277D85DE8];
}

- (id)etagsForItemURLs:(id)ls
{
  v31 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  v24 = objc_opt_new();
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  accountID = [(MobileCalDAVCalendar *)self accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  accountID2 = [(MobileCalDAVCalendar *)self accountID];
  v10 = CalDatabaseCopyStoreWithExternalID();

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = lsCopy;
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
        principal2 = [(MobileCalDAVCalendar *)self principal];
        inboxURL = [principal2 inboxURL];
        v18 = [v15 da_leastInfoStringRepresentationRelativeToParentURL:inboxURL];

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

- (BOOL)updateResourcesFromServer:(id)server
{
  v83 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  v58 = RecordCalendarDiagnostics();
  selfCopy = self;
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
  v5 = serverCopy;
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
        scheduleChanges = [v10 scheduleChanges];
        v13 = [v11 propertyWithItem:scheduleChanges];

        v14 = objc_alloc(MEMORY[0x277CF7550]);
        dataPayload = [v10 dataPayload];
        filename = [v10 filename];
        v17 = [v14 initWithData:dataPayload filename:filename scheduleChanges:v13];

        event = [v17 event];
        v19 = [event uid];
        v20 = DALoggingwithCategory();
        filename3 = v20;
        if (v19)
        {
          if (os_log_type_enabled(v20, type))
          {
            filename2 = [v10 filename];
            *buf = 138412290;
            v81 = filename2;
            _os_log_impl(&dword_2484B2000, filename3, type, "Handling iTIP message at %@", buf, 0xCu);

            v5 = v59;
          }

          [v62 addObject:v17];
          filename3 = [v10 filename];
          [v61 setObject:v10 forKeyedSubscript:filename3];
        }

        else
        {
          if (os_log_type_enabled(v20, v60))
          {
            filename4 = [v10 filename];
            *buf = 138412290;
            v81 = filename4;
            _os_log_impl(&dword_2484B2000, filename3, v60, "The invite at %@ doesn't have a UID. Ignoring it, but we'll download it again later.", buf, 0xCu);
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
  v71 = selfCopy;
  v74 = v58;
  v73 = v56;
  v25 = v55;
  v72 = v25;
  v26 = MEMORY[0x24C1D0520](v69);
  principal = [(MobileCalDAVCalendar *)selfCopy principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  accountID = [(MobileCalDAVCalendar *)selfCopy accountID];
  v31 = [dbHelper calDatabaseForAccountID:accountID];

  principal2 = [(MobileCalDAVCalendar *)selfCopy principal];
  account2 = [principal2 account];

  [account2 accountID];
  v34 = CalDatabaseCopyStoreWithExternalID();
  if (v34)
  {
    v35 = v34;
    [MEMORY[0x277CF7548] processMessages:v62 withDatabase:v31 calStore:v34 accountInfo:account2 handledEventCallback:v26 cancellationToken:0 options:0];
    CFRelease(v35);
  }

  else
  {
    v36 = DALoggingwithCategory();
    v37 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v36, v37))
    {
      accountID2 = [account2 accountID];
      *buf = 138543362;
      v81 = accountID2;
      _os_log_impl(&dword_2484B2000, v36, v37, "Could not find a store in the database with uid %{public}@", buf, 0xCu);
    }
  }

  v39 = v59;
  if ([v59 count])
  {
    principal3 = [(MobileCalDAVCalendar *)selfCopy principal];
    account3 = [principal3 account];
    dbHelper2 = [account3 dbHelper];
    accountID3 = [(MobileCalDAVCalendar *)selfCopy accountID];
    v44 = [dbHelper2 calSaveDatabaseAndFlushCachesForAccountID:accountID3];

    if (v58 && v44)
    {
      inboxCollectionSyncDiagnostics = [(MobileCalDAVInboxCalendar *)selfCopy inboxCollectionSyncDiagnostics];
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

            [inboxCollectionSyncDiagnostics addCalendarItemSync:*(*(&v65 + 1) + 8 * j)];
          }

          v48 = [v46 countByEnumeratingWithState:&v65 objects:v79 count:16];
        }

        while (v48);
      }
    }

    uniqueIdentifierToRecordIDMap = [(MobileCalDAVCalendar *)selfCopy uniqueIdentifierToRecordIDMap];
    [uniqueIdentifierToRecordIDMap removeAllObjects];

    uRLToRecordIDMap = [(MobileCalDAVCalendar *)selfCopy URLToRecordIDMap];
    [uRLToRecordIDMap removeAllObjects];

    v39 = v59;
    -[MobileCalDAVCalendar setNumDownloadedElements:](selfCopy, "setNumDownloadedElements:", -[MobileCalDAVCalendar numDownloadedElements](selfCopy, "numDownloadedElements") + [v59 count]);
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

- (BOOL)_removeInvitationWithURL:(id)l
{
  v35 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (lCopy)
  {
    principal = [(MobileCalDAVCalendar *)self principal];
    account = [principal account];
    dbHelper = [account dbHelper];
    accountID = [(MobileCalDAVCalendar *)self accountID];
    [dbHelper calDatabaseForAccountID:accountID];

    accountID2 = [(MobileCalDAVCalendar *)self accountID];
    v10 = CalDatabaseCopyStoreWithExternalID();

    if (v10)
    {
      v11 = DALoggingwithCategory();
      v12 = MEMORY[0x277D03988];
      v13 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v11, v13))
      {
        *buf = 138412290;
        v34 = lCopy;
        _os_log_impl(&dword_2484B2000, v11, v13, "Removing item action with url %@", buf, 0xCu);
      }

      principal2 = [(MobileCalDAVCalendar *)self principal];
      inboxURL = [principal2 inboxURL];
      v16 = [lCopy da_leastInfoStringRepresentationRelativeToParentURL:inboxURL];

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
          v34 = lCopy;
          _os_log_impl(&dword_2484B2000, v28, v29, "Couldn't get a calendar action item to remove with url %@", buf, 0xCu);
        }
      }

      CFRelease(v10);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)deleteResourcesAtURLs:(id)ls
{
  v20 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [lsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(lsCopy);
        }

        [(MobileCalDAVInboxCalendar *)self _removeInvitationWithURL:*(*(&v15 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [lsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  if ([lsCopy count])
  {
    principal = [(MobileCalDAVCalendar *)self principal];
    account = [principal account];
    dbHelper = [account dbHelper];
    accountID = [(MobileCalDAVCalendar *)self accountID];
    [dbHelper calSaveDatabaseAndFlushCachesForAccountID:accountID];
  }

  v13 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)recordDiagnosticsForAccountSync:(id)sync
{
  syncCopy = sync;
  inboxCollectionSyncDiagnostics = [(MobileCalDAVInboxCalendar *)self inboxCollectionSyncDiagnostics];
  [syncCopy setInboxCollectionSync:inboxCollectionSyncDiagnostics];
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