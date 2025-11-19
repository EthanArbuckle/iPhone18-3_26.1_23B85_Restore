@interface MobileCalDAVNotificationCalendar
- (BOOL)_handleInviteNotification:(id)a3 withResource:(id)a4 uid:(id)a5;
- (BOOL)_handleInviteReply:(id)a3 withResource:(id)a4 owningNotification:(id)a5 uid:(id)a6;
- (BOOL)_handleResourceChanged:(id)a3 withResource:(id)a4 uid:(id)a5;
- (BOOL)_removeCalendarItemWithURL:(id)a3;
- (BOOL)setEtag:(id)a3 forItemAtURL:(id)a4;
- (BOOL)setScheduleTag:(id)a3 forItemAtURL:(id)a4;
- (BOOL)setURL:(id)a3 forResourceWithUUID:(id)a4;
- (BOOL)updateResourcesFromServer:(id)a3;
- (MobileCalDAVAccount)daAccount;
- (MobileCalDAVNotificationCalendar)initWithCalendarURL:(id)a3 list:(id)a4 principal:(id)a5 title:(id)a6;
- (id)_accountLoggingDescription;
- (id)_changedAttributesFromCalendarChanges:(id)a3;
- (id)_copyNotificationWithExternalID:(id)a3;
- (id)_copyNotificationWithUniqueIdentifier:(id)a3;
- (id)_notifications;
- (id)allItemURLs;
- (id)etagsForItemURLs:(id)a3;
- (void)clearEventChanges;
- (void)prepareSyncActionsWithCompletionBlock:(id)a3;
@end

@implementation MobileCalDAVNotificationCalendar

- (MobileCalDAVNotificationCalendar)initWithCalendarURL:(id)a3 list:(id)a4 principal:(id)a5 title:(id)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v29.receiver = self;
  v29.super_class = MobileCalDAVNotificationCalendar;
  v13 = [(MobileCalDAVCalendar *)&v29 initWithCalendarURL:v10 list:v11 principal:v12 title:a6];
  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = DALoggingwithCategory();
  v15 = MEMORY[0x277CF3AF0];
  v16 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v14, v16))
  {
    v17 = [v11 objectID];
    v18 = [v12 account];
    v19 = [v18 accountDescription];
    *buf = 138412802;
    v31 = v10;
    v32 = 2114;
    v33 = v17;
    v34 = 2112;
    v35 = v19;
    _os_log_impl(&dword_242490000, v14, v16, "CalDAVNotificationCalendar: Initializing a notif calendar for {url: %@, list: %{public}@, account: %@}.", buf, 0x20u);
  }

  if (([v11 daIsNotificationsCollection] & 1) == 0 && ((v28 = 0, v20 = -[MobileCalDAVCalendar rem_setListPropertiesWithBlock:error:](v13, "rem_setListPropertiesWithBlock:error:", &__block_literal_global_2, &v28), v21 = v28, v22 = v21, !v20) || v21))
  {
    v26 = DALoggingwithCategory();
    v27 = *(v15 + 3);
    if (os_log_type_enabled(v26, v27))
    {
      *buf = 138412546;
      v31 = v10;
      v32 = 2114;
      v33 = v22;
      _os_log_impl(&dword_242490000, v26, v27, "CalDAVNotificationCalendar: Failed to set this notification calendar list as daIsNotificationsCollection=YES, bailing (url: %@, error: %{public}@).", buf, 0x16u);
    }

    v23 = 0;
  }

  else
  {
LABEL_7:
    v23 = v13;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

- (MobileCalDAVAccount)daAccount
{
  v2 = [(MobileCalDAVNotificationCalendar *)self daPrincipal];
  v3 = [v2 account];

  return v3;
}

- (id)_notifications
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 calDAVNotificationContext];
    v6 = [v5 calDAVNotifications];
  }

  else
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
      v12 = 138412546;
      v13 = self;
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_242490000, v7, v8, "CalDAVNotificationCalendar: Could not find an REMList for the notification calendar (%@, account: %@)", &v12, 0x16u);
    }

    v6 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)allItemURLs
{
  v3 = objc_opt_new();
  v4 = [(MobileCalDAVNotificationCalendar *)self _notifications];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__MobileCalDAVNotificationCalendar_allItemURLs__block_invoke;
  v9[3] = &unk_278D4F888;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [v4 enumerateObjectsUsingBlock:v9];

  v6 = v10;
  v7 = v5;

  return v5;
}

void __47__MobileCalDAVNotificationCalendar_allItemURLs__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 externalIdentifier];
  if (v3)
  {
    v6 = v3;
    v4 = [*(a1 + 32) calendarURL];
    v5 = [v6 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v4];

    if (v5)
    {
      [*(a1 + 40) addObject:v5];
    }

    v3 = v6;
  }
}

- (id)etagsForItemURLs:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v21 = a3;
  v4 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v22 = v4;
  if (v4)
  {
    v5 = [v4 calDAVNotificationContext];
    oslog = [v5 calDAVNotifications];

    v6 = objc_opt_new();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v21;
    v7 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v7)
    {
      v8 = *v29;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v28 + 1) + 8 * i);
          v11 = [(MobileCalDAVCalendar *)self calendarURL];
          v12 = [v10 da_leastInfoStringRepresentationRelativeToParentURL:v11];

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v33 = __Block_byref_object_copy__0;
          v34 = __Block_byref_object_dispose__0;
          v35 = 0;
          v13 = [(MobileCalDAVCalendar *)self URLToEtagMap];
          v14 = [v13 objectForKeyedSubscript:v12];
          v15 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = v14;

          v16 = *(*&buf[8] + 40);
          if (v16)
          {
            goto LABEL_9;
          }

          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __53__MobileCalDAVNotificationCalendar_etagsForItemURLs___block_invoke;
          v25[3] = &unk_278D4F8B0;
          v26 = v12;
          v27 = buf;
          [oslog enumerateObjectsUsingBlock:v25];

          v16 = *(*&buf[8] + 40);
          if (v16)
          {
LABEL_9:
            [v6 setObject:v16 forKeyedSubscript:v10];
          }

          _Block_object_dispose(buf, 8);
        }

        v7 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v7);
    }
  }

  else
  {
    oslog = DALoggingwithCategory();
    v17 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(oslog, v17))
    {
      v18 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v18;
      _os_log_impl(&dword_242490000, oslog, v17, "CalDAVNotificationCalendar: Could not find a calendar of this notification calendar to perform -etagsForItemURLs: (%@, account: %@)", buf, 0x16u);
    }

    v6 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v6;
}

void __53__MobileCalDAVNotificationCalendar_etagsForItemURLs___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v6 = [v11 externalIdentifier];
  v7 = [v6 isEqual:*(a1 + 32)];

  if (v7)
  {
    v8 = [v11 externalModificationTag];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    *a4 = 1;
  }
}

- (id)_copyNotificationWithUniqueIdentifier:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v5 = [(MobileCalDAVNotificationCalendar *)self _notifications];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__MobileCalDAVNotificationCalendar__copyNotificationWithUniqueIdentifier___block_invoke;
  v9[3] = &unk_278D4F8B0;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __74__MobileCalDAVNotificationCalendar__copyNotificationWithUniqueIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 uuidString];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)_copyNotificationWithExternalID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v5 = [(MobileCalDAVNotificationCalendar *)self _notifications];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__MobileCalDAVNotificationCalendar__copyNotificationWithExternalID___block_invoke;
  v9[3] = &unk_278D4F8B0;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateObjectsUsingBlock:v9];

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __68__MobileCalDAVNotificationCalendar__copyNotificationWithExternalID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 externalIdentifier];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (BOOL)setEtag:(id)a3 forItemAtURL:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v9 = DALoggingwithCategory();
  v10 = v9;
  if (v8)
  {
    v11 = MEMORY[0x277CF3AF0];
    v12 = *(MEMORY[0x277CF3AF0] + 5);
    if (os_log_type_enabled(v9, v12))
    {
      v13 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
      *buf = 138543874;
      v34 = v6;
      v35 = 2112;
      v36 = v7;
      v37 = 2112;
      v38 = v13;
      _os_log_impl(&dword_242490000, v10, v12, "CalDAVNotificationCalendar: Setting etag (%{public}@) for item at {url: %@, account: %@}.", buf, 0x20u);
    }

    v14 = [(MobileCalDAVCalendar *)self calendarURL];
    v10 = [(MobileCalDAVNotificationCalendar *)v7 da_leastInfoStringRepresentationRelativeToParentURL:v14];

    v15 = [(MobileCalDAVNotificationCalendar *)self _copyNotificationWithExternalID:v10];
    v16 = v15;
    if (v15)
    {
      v27 = MEMORY[0x277D85DD0];
      v28 = 3221225472;
      v29 = __57__MobileCalDAVNotificationCalendar_setEtag_forItemAtURL___block_invoke;
      v30 = &unk_278D4F900;
      v31 = v15;
      v17 = v6;
      v32 = v17;
      v18 = [(MobileCalDAVCalendar *)self rem_setListPropertiesWithBlock:&v27 error:0];
      if (v18)
      {
        [(MobileCalDAVCalendar *)self setIsDirty:1, v27, v28, v29, v30, v31];
      }

      if (!v10)
      {
        goto LABEL_18;
      }

      v19 = [(MobileCalDAVCalendar *)self URLToEtagMap];
      v20 = v19;
      if (v17)
      {
        [v19 setObject:v17 forKeyedSubscript:v10];
      }

      else
      {
        [v19 removeObjectForKey:v10];
      }
    }

    else
    {
      v20 = DALoggingwithCategory();
      v23 = *(v11 + 4);
      if (os_log_type_enabled(v20, v23))
      {
        v24 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
        *buf = 138412546;
        v34 = v7;
        v35 = 2112;
        v36 = v24;
        _os_log_impl(&dword_242490000, v20, v23, "CalDAVNotificationCalendar: Couldn't set etag for the item at %@ because it doesn't exist in our database for account %@", buf, 0x16u);
      }

      LOBYTE(v18) = 0;
    }

LABEL_18:
    goto LABEL_19;
  }

  v21 = *(MEMORY[0x277CF3AF0] + 3);
  if (os_log_type_enabled(v9, v21))
  {
    v22 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
    *buf = 138412546;
    v34 = self;
    v35 = 2112;
    v36 = v22;
    _os_log_impl(&dword_242490000, v10, v21, "CalDAVNotificationCalendar: Could not find a calendar of this notification calendar to perform -setEtag:forItemAtURL: (%@, account: %@)", buf, 0x16u);
  }

  LOBYTE(v18) = 0;
LABEL_19:

  v25 = *MEMORY[0x277D85DE8];
  return v18;
}

void __57__MobileCalDAVNotificationCalendar_setEtag_forItemAtURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 calDAVNotificationContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__MobileCalDAVNotificationCalendar_setEtag_forItemAtURL___block_invoke_2;
  v5[3] = &unk_278D4F8D8;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v3 updateCalDAVNotification:v4 withBlock:v5];
}

- (BOOL)setURL:(id)a3 forResourceWithUUID:(id)a4
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
    v9 = DALoggingwithCategory();
    v10 = v9;
    if (v8)
    {
      v11 = MEMORY[0x277CF3AF0];
      v12 = *(MEMORY[0x277CF3AF0] + 5);
      if (os_log_type_enabled(v9, v12))
      {
        v13 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
        *buf = 138412802;
        v31 = v6;
        v32 = 2114;
        v33 = v7;
        v34 = 2112;
        v35 = v13;
        _os_log_impl(&dword_242490000, v10, v12, "CalDAVNotificationCalendar: Setting url (%@) for item with {uuid: %{public}@, account: %@}.", buf, 0x20u);
      }

      v10 = [(MobileCalDAVNotificationCalendar *)self _copyNotificationWithUniqueIdentifier:v7];
      if (v10)
      {
        v14 = [(MobileCalDAVCalendar *)self calendarURL];
        v15 = [(MobileCalDAVNotificationCalendar *)v6 da_leastInfoStringRepresentationRelativeToParentURL:v14];

        v24 = MEMORY[0x277D85DD0];
        v25 = 3221225472;
        v26 = __63__MobileCalDAVNotificationCalendar_setURL_forResourceWithUUID___block_invoke;
        v27 = &unk_278D4F900;
        v28 = v10;
        v29 = v15;
        v16 = v15;
        v17 = [(MobileCalDAVCalendar *)self rem_setListPropertiesWithBlock:&v24 error:0];
        if (v17)
        {
          [(MobileCalDAVCalendar *)self setIsDirty:1, v24, v25, v26, v27, v28, v29];
        }
      }

      else
      {
        v16 = DALoggingwithCategory();
        v20 = *(v11 + 4);
        if (os_log_type_enabled(v16, v20))
        {
          v21 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
          *buf = 138543618;
          v31 = v7;
          v32 = 2112;
          v33 = v21;
          _os_log_impl(&dword_242490000, v16, v20, "CalDAVNotificationCalendar: Couldn't set url for the item %{public}@ because it doesn't exist in our database for account %@", buf, 0x16u);
        }

        LOBYTE(v17) = 0;
      }
    }

    else
    {
      v18 = *(MEMORY[0x277CF3AF0] + 3);
      if (os_log_type_enabled(v9, v18))
      {
        v19 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
        *buf = 138412546;
        v31 = self;
        v32 = 2112;
        v33 = v19;
        _os_log_impl(&dword_242490000, v10, v18, "CalDAVNotificationCalendar: Could not find a calendar of this notification calendar to perform -setURL:forResourceWithUUID: (%@, account: %@)", buf, 0x16u);
      }

      LOBYTE(v17) = 0;
    }
  }

  else
  {
    LOBYTE(v17) = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

void __63__MobileCalDAVNotificationCalendar_setURL_forResourceWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 calDAVNotificationContext];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__MobileCalDAVNotificationCalendar_setURL_forResourceWithUUID___block_invoke_2;
  v5[3] = &unk_278D4F8D8;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v3 updateCalDAVNotification:v4 withBlock:v5];
}

- (BOOL)setScheduleTag:(id)a3 forItemAtURL:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"MobileCalDAVNotificationCalendar.m" lineNumber:361 description:@"Woah buddy- we shouldn't be setting a schedule tag on a notification item!"];

  return 0;
}

- (BOOL)updateResourcesFromServer:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
    v6 = v5;
    v7 = v5 != 0;
    if (v5)
    {
      v36 = v5;
      v37 = v5 != 0;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v38 = v4;
      obj = v4;
      v43 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
      if (v43)
      {
        v42 = *v45;
        v41 = *MEMORY[0x277CFDE90];
        v40 = *MEMORY[0x277CF7080];
        do
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v45 != v42)
            {
              objc_enumerationMutation(obj);
            }

            v9 = *(*(&v44 + 1) + 8 * i);
            v10 = [v9 dataPayload];
            v11 = objc_alloc(MEMORY[0x277CFDCA8]);
            v12 = objc_opt_class();
            v13 = [(MobileCalDAVCalendar *)self principal];
            v14 = [v13 calendarHomeURL];
            v15 = [v11 initWithRootElementNameSpace:v41 name:v40 parseClass:v12 baseURL:v14];

            [v15 processData:v10 forTask:0];
            [v15 processData:0 forTask:0];
            v16 = [v15 rootElement];
            v17 = [v9 serverID];
            v18 = [v17 lastPathComponent];

            v19 = [v16 content];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            v21 = [v16 content];
            v22 = v21;
            if (isKindOfClass)
            {
              v23 = [v21 uid];
              v24 = [v23 payloadAsString];

              v25 = [v16 content];
              [(MobileCalDAVNotificationCalendar *)self _handleInviteNotification:v25 withResource:v9 uid:v24];
              v18 = v24;
            }

            else
            {
              objc_opt_class();
              v26 = objc_opt_isKindOfClass();

              v25 = [v16 content];
              if (v26)
              {
                [(MobileCalDAVNotificationCalendar *)self _handleInviteReply:v25 withResource:v9 owningNotification:v16 uid:v18];
              }

              else
              {
                objc_opt_class();
                v27 = objc_opt_isKindOfClass();

                if ((v27 & 1) == 0)
                {
                  goto LABEL_15;
                }

                v25 = [v16 content];
                [(MobileCalDAVNotificationCalendar *)self _handleResourceChanged:v25 withResource:v9 uid:v18];
              }
            }

LABEL_15:
            v28 = [v9 serverID];
            [(MobileCalDAVNotificationCalendar *)self setURL:v28 forResourceWithUUID:v18];

            v29 = [v9 syncKey];
            v30 = [v9 serverID];
            [(MobileCalDAVNotificationCalendar *)self setEtag:v29 forItemAtURL:v30];

            [(MobileCalDAVCalendar *)self setIsDirty:1];
          }

          v43 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
        }

        while (v43);
      }

      v4 = v38;
      v7 = v37;
      v6 = v36;
      if ([obj count])
      {
        [(MobileCalDAVCalendar *)self setNumDownloadedElements:[(MobileCalDAVCalendar *)self numDownloadedElements]+ 1];
      }
    }

    else
    {
      v31 = DALoggingwithCategory();
      v32 = *(MEMORY[0x277CF3AF0] + 3);
      if (os_log_type_enabled(v31, v32))
      {
        v33 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
        *buf = 138412546;
        v50 = self;
        v51 = 2112;
        v52 = v33;
        _os_log_impl(&dword_242490000, v31, v32, "CalDAVNotificationCalendar: Could not find a REMList of this notification calendar to perform -updateResourcesFromServer: (%@, account: %@)", buf, 0x16u);
      }
    }
  }

  else
  {
    v7 = 1;
  }

  v34 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)_removeCalendarItemWithURL:(id)a3
{
  v68 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v7 = DALoggingwithCategory();
  v8 = v7;
  if (v6)
  {
    v9 = MEMORY[0x277CF3AF0];
    v10 = *(MEMORY[0x277CF3AF0] + 5);
    if (os_log_type_enabled(v7, v10))
    {
      v11 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
      *buf = 138412546;
      v61 = v5;
      v62 = 2112;
      v63 = v11;
      _os_log_impl(&dword_242490000, v8, v10, "CalDAVNotificationCalendar: Removing notification item with url %@ {account: %@}", buf, 0x16u);
    }

    v12 = [(MobileCalDAVCalendar *)self calendarURL];
    v8 = [(MobileCalDAVNotificationCalendar *)v5 da_leastInfoStringRepresentationRelativeToParentURL:v12];

    v13 = [(MobileCalDAVNotificationCalendar *)self _copyNotificationWithExternalID:v8];
    v14 = v13 != 0;
    if (!v13)
    {
      v30 = DALoggingwithCategory();
      v31 = *(v9 + 4);
      if (os_log_type_enabled(v30, v31))
      {
        v32 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
        *buf = 138412546;
        v61 = v5;
        v62 = 2112;
        v63 = v32;
        _os_log_impl(&dword_242490000, v30, v31, "CalDAVNotificationCalendar: Couldn't get the calendar notification item to remove with {url: %@, account: %@}", buf, 0x16u);
      }

      goto LABEL_35;
    }

    v51 = a2;
    v15 = [(MobileCalDAVNotificationCalendar *)self daAccount];
    v57 = [v15 rem_saveRequest];

    v16 = [v13 hostURL];
    v56 = v6;
    if (!v16)
    {
LABEL_24:

      v35 = [v57 updateList:v6];
      v36 = [v35 calDAVNotificationContext];
      if (!v36)
      {
        [(MobileCalDAVNotificationCalendar *)v51 _removeCalendarItemWithURL:?];
      }

      [v36 removeCalDAVNotication:v13];
      v58 = 0;
      v37 = [v57 saveSynchronouslyWithError:&v58];
      v38 = v58;
      v39 = v38;
      if (!v37 || v38)
      {
        v43 = DALoggingwithCategory();
        v44 = *(v9 + 3);
        if (os_log_type_enabled(v43, v44))
        {
          [v13 hostURL];
          v45 = v55 = v5;
          v46 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
          *buf = 138412802;
          v61 = v45;
          v62 = 2112;
          v63 = v13;
          v64 = 2112;
          v65 = v46;
          _os_log_impl(&dword_242490000, v43, v44, "CalDAVNotificationCalendar: ERROR: Remove host REMList and notification item failed when trying to -_removeCalendarItemWithURL: {hostURL: %@, notifItem: %@, account: %@}", buf, 0x20u);

          v5 = v55;
        }
      }

      else
      {
        v40 = DALoggingwithCategory();
        if (os_log_type_enabled(v40, v10))
        {
          v41 = [v13 hostURL];
          [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
          v42 = v54 = v5;
          *buf = 138412802;
          v61 = v41;
          v62 = 2112;
          v63 = v13;
          v64 = 2112;
          v65 = v42;
          _os_log_impl(&dword_242490000, v40, v10, "CalDAVNotificationCalendar: Successfully performed -_removeCalendarItemWithURL: to remove invitation REMList and notification item {hostURL: %@, notifItem: %@, account: %@}", buf, 0x20u);

          v5 = v54;
        }

        [(MobileCalDAVCalendar *)self rem_reloadCalCalendar];
      }

      [(MobileCalDAVCalendar *)self setIsDirty:1];
      [(MobileCalDAVCalendar *)self setNumDownloadedElements:[(MobileCalDAVCalendar *)self numDownloadedElements]+ 1];

      v6 = v56;
      v30 = v57;
      v14 = v13 != 0;
LABEL_35:

      goto LABEL_36;
    }

    v17 = [(MobileCalDAVCalendar *)self principal];
    v18 = [v17 calendarHomeURL];
    v19 = [v16 da_leastInfoStringRepresentationRelativeToParentURL:v18];
    v20 = [v19 da_appendSlashIfNeeded];

    v21 = [(MobileCalDAVCalendar *)self rem_account];
    v59 = 0;
    v53 = v20;
    v52 = [v21 fetchListIncludingSpecialContainerWithExternalIdentifier:v20 error:&v59];
    v22 = v59;

    if (v22 && [v22 code] != -3000)
    {
      v24 = DALoggingwithCategory();
      v9 = MEMORY[0x277CF3AF0];
      LOBYTE(v33) = *(MEMORY[0x277CF3AF0] + 3);
      if (os_log_type_enabled(v24, v33))
      {
        v50 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
        *buf = 138412802;
        v61 = v53;
        v62 = 2112;
        v63 = v13;
        v64 = 2112;
        v65 = v50;
        v34 = "CalDAVNotificationCalendar: ERROR: Failed to fetch invitation REMList with url %@ when trying to -_removeCalendarItemWithURL: {notifItem: %@, account: %@}";
LABEL_21:
        _os_log_impl(&dword_242490000, v24, v33, v34, buf, 0x20u);
      }
    }

    else
    {
      v23 = DALoggingwithCategory();
      v24 = v23;
      v9 = MEMORY[0x277CF3AF0];
      v25 = v52;
      if (v52)
      {
        if (os_log_type_enabled(v23, v10))
        {
          v49 = [v52 objectID];
          v26 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
          *buf = 138413058;
          v61 = v53;
          v62 = 2114;
          v63 = v49;
          v64 = 2112;
          v65 = v13;
          v66 = 2112;
          v67 = v26;
          v27 = v26;
          _os_log_impl(&dword_242490000, v24, v10, "CalDAVNotificationCalendar: _removeCalendarItemWithURL: Now removing the invitation REMList with url %@ {listID: %{public}@, notifItem: %@, account: %@}", buf, 0x2Au);

          v25 = v52;
        }

        v24 = [v57 updateList:v25];
        [v24 removeFromParent];
        goto LABEL_23;
      }

      v33 = *(MEMORY[0x277CF3AF0] + 4);
      if (os_log_type_enabled(v23, *(MEMORY[0x277CF3AF0] + 4)))
      {
        v50 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
        *buf = 138412802;
        v61 = v53;
        v62 = 2112;
        v63 = v13;
        v64 = 2112;
        v65 = v50;
        v34 = "CalDAVNotificationCalendar: Could not find the invitation REMList with url %@ when trying to -_removeCalendarItemWithURL: {notifItem: %@, account: %@}";
        goto LABEL_21;
      }
    }

    v25 = v52;
LABEL_23:

    v6 = v56;
    goto LABEL_24;
  }

  v28 = *(MEMORY[0x277CF3AF0] + 3);
  if (os_log_type_enabled(v7, v28))
  {
    v29 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
    *buf = 138412546;
    v61 = self;
    v62 = 2112;
    v63 = v29;
    _os_log_impl(&dword_242490000, v8, v28, "CalDAVNotificationCalendar: Could not find a calendar of this notification calendar to perform -removeCalendarItemWithURL: (%@, account: %@)", buf, 0x16u);
  }

  v14 = 0;
LABEL_36:

  v47 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)clearEventChanges
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 0;
    _os_log_impl(&dword_242490000, v3, v4, "CalDAVNotificationCalendar: Clearing notification changes", buf, 2u);
  }

  v5.receiver = self;
  v5.super_class = MobileCalDAVNotificationCalendar;
  [(MobileCalDAVCalendar *)&v5 clearEventChanges];
}

- (void)prepareSyncActionsWithCompletionBlock:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v33 = a3;
  v35 = objc_opt_new();
  v4 = objc_opt_new();
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
    *buf = 138412546;
    v46 = self;
    v47 = 2112;
    v48 = v7;
    _os_log_impl(&dword_242490000, v5, v6, "CalDAVNotificationCalendar: Preparing sync actions for notification calendar {calendar: %@, account: %@}.", buf, 0x16u);
  }

  v8 = [(MobileCalDAVNotificationCalendar *)self daPrincipal];
  v9 = [v8 rem_changeTracking];

  v32 = v9;
  [v9 changedIdentifiersOfModelClass:objc_opt_class() ofChangeType:2];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v43 = 0u;
  v10 = [obj countByEnumeratingWithState:&v40 objects:v51 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v41;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v41 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v40 + 1) + 8 * i);
        objc_opt_class();
        v15 = REMCheckedDynamicCast();
        if (v15)
        {
          v16 = [(MobileCalDAVCalendar *)self calendarURLString];
          v17 = [v15 hasPrefix:v16];

          if (v17)
          {
            [v4 addObject:v15];
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v40 objects:v51 count:16];
    }

    while (v11);
  }

  v18 = DALoggingwithCategory();
  if (os_log_type_enabled(v18, v6))
  {
    v19 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
    *buf = 138412802;
    v46 = self;
    v47 = 2112;
    v48 = v19;
    v49 = 2112;
    v50 = v4;
    _os_log_impl(&dword_242490000, v18, v6, "CalDAVNotificationCalendar: Collected DELETED notification items for for this notification calendar {calendar: %@, account: %@, extIDs: %@}.", buf, 0x20u);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v20 = v4;
  v21 = [v20 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v37;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v37 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v36 + 1) + 8 * j);
        v26 = DALoggingwithCategory();
        if (os_log_type_enabled(v26, v6))
        {
          *buf = 138412290;
          v46 = v25;
          _os_log_impl(&dword_242490000, v26, v6, "CalDAVNotificationCalendar: Sending up a delete for the notification at URL %@", buf, 0xCu);
        }

        v27 = objc_alloc(MEMORY[0x277CFDB90]);
        v28 = [(MobileCalDAVCalendar *)self calendarURL];
        v29 = [(MobileCalDAVNotificationCalendar *)v25 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v28];
        v30 = [v27 initWithAction:2 context:v29];

        [v35 addObject:v30];
      }

      v22 = [v20 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v22);
  }

  [(MobileCalDAVCalendar *)self setSyncActions:v35];
  v33[2](v33, self);

  v31 = *MEMORY[0x277D85DE8];
}

- (BOOL)_handleInviteNotification:(id)a3 withResource:(id)a4 uid:(id)a5
{
  v147 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v125 = a5;
  v10 = [(MobileCalDAVCalendar *)self rem_account];
  v11 = [v10 store];
  if (v11)
  {
    v12 = [v9 serverID];
    v13 = [(MobileCalDAVCalendar *)self calendarURL];
    v123 = [v12 da_leastInfoStringRepresentationRelativeToParentURL:v13];

    v122 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
    if (!v122)
    {
      oslog = DALoggingwithCategory();
      v16 = *(MEMORY[0x277CF3AF0] + 3);
      if (os_log_type_enabled(oslog, v16))
      {
        v17 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
        *buf = 138412546;
        *&buf[4] = self;
        *&buf[12] = 2112;
        *&buf[14] = v17;
        _os_log_impl(&dword_242490000, oslog, v16, "CalDAVNotificationCalendar: _handleInviteNotification: Could not get an REMList of this notification calendar to perform -_handleInviteNotification:withResource:uid: (cal: %@, account: %@)", buf, 0x16u);
      }

      v15 = 0;
      goto LABEL_85;
    }

    v14 = [v8 inviteStatus];
    oslog = [v14 name];

    v114 = [oslog isEqualToString:*MEMORY[0x277CF7078]];
    if (v114)
    {
      v108 = 0;
      v112 = 0;
    }

    else
    {
      if (([oslog isEqualToString:*MEMORY[0x277CF7068]]& 1) != 0)
      {
        v18 = 1;
        v108 = 1;
      }

      else if (([oslog isEqualToString:*MEMORY[0x277CF7058]]& 1) != 0)
      {
        v108 = 0;
        v18 = 2;
      }

      else
      {
        [oslog isEqualToString:*MEMORY[0x277CF7060]];
        v108 = 0;
        v18 = 3;
      }

      v112 = v18;
    }

    v19 = [v8 hostURL];
    v20 = [v19 href];
    v121 = [v20 payloadAsFullURL];

    v21 = [(MobileCalDAVCalendar *)self principal];
    v22 = [v21 calendarHomeURL];
    v23 = [v121 da_leastInfoStringRepresentationRelativeToParentURL:v22];
    v119 = [v23 da_appendSlashIfNeeded];

    v24 = DALoggingwithCategory();
    type = *(MEMORY[0x277CF3AF0] + 5);
    if (os_log_type_enabled(v24, type))
    {
      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v112];
      v26 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
      *buf = 138544386;
      *&buf[4] = v25;
      *&buf[12] = 2112;
      *&buf[14] = v123;
      *&buf[22] = 2114;
      v145 = v125;
      *v146 = 2112;
      *&v146[2] = v119;
      *&v146[10] = 2112;
      *&v146[12] = v26;
      _os_log_impl(&dword_242490000, v24, type, "CalDAVNotificationCalendar: _handleInviteNotification: Handling CalDAVCalendarServerInviteNotificationItem for {inviteStatus: %{public}@, extID: %@, uid: %{public}@, url: %@, account: %@}.", buf, 0x34u);
    }

    if (v121)
    {
      v135 = 0;
      v120 = [v10 fetchListIncludingSpecialContainerWithExternalIdentifier:v119 error:&v135];
      v27 = v135;
      v28 = v27;
      if (v27 && [v27 code] != -3000)
      {
        v29 = DALoggingwithCategory();
        v30 = *(MEMORY[0x277CF3AF0] + 3);
        if (os_log_type_enabled(v29, v30))
        {
          v31 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
          v32 = [v28 localizedDescription];
          *buf = 138412802;
          *&buf[4] = v119;
          *&buf[12] = 2112;
          *&buf[14] = v31;
          *&buf[22] = 2114;
          v145 = v32;
          _os_log_impl(&dword_242490000, v29, v30, "CalDAVNotificationCalendar: ERROR: _handleInviteNotification: Could not fetch list with url {url: %@, account: %@, error: %{public}@}.", buf, 0x20u);
        }
      }

      v116 = [v120 objectID];

      if ((v114 & 1) == 0)
      {
        if (!v120)
        {
          v120 = 0;
          goto LABEL_55;
        }

        v33 = [(MobileCalDAVNotificationCalendar *)self daAccount];
        v34 = [v33 rem_saveRequest];

        v110 = [v34 updateList:v120];
        [v110 removeFromParent];
        v133 = 0;
        v35 = [v34 saveSynchronouslyWithError:&v133];
        v106 = v133;
        if (v106)
        {
          v35 = 0;
        }

        v36 = DALoggingwithCategory();
        v37 = v36;
        if (v35)
        {
          if (os_log_type_enabled(v36, type))
          {
            v38 = [v120 objectID];
            v39 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
            *buf = 138412802;
            *&buf[4] = v121;
            *&buf[12] = 2114;
            *&buf[14] = v38;
            *&buf[22] = 2112;
            v145 = v39;
            _os_log_impl(&dword_242490000, v37, type, "CalDAVNotificationCalendar: SUCCESS:_handleInviteNotification: Deleted shared invite-pending calendar of {hostURL: %@, objectID: %{public}@, account: %@}", buf, 0x20u);
          }
        }

        else
        {
          v52 = *(MEMORY[0x277CF3AF0] + 3);
          if (os_log_type_enabled(v36, v52))
          {
            v53 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
            v54 = [v106 localizedDescription];
            *buf = 138412802;
            *&buf[4] = v121;
            *&buf[12] = 2112;
            *&buf[14] = v53;
            *&buf[22] = 2112;
            v145 = v54;
            _os_log_impl(&dword_242490000, v37, v52, "CalDAVNotificationCalendar: ERROR: _handleInviteNotification: Failed to save delete of the shared invite-pending calendar {hostURL: %@, account: %@, error: %@}", buf, 0x20u);
          }
        }

        goto LABEL_54;
      }
    }

    else
    {
      v40 = DALoggingwithCategory();
      v41 = *(MEMORY[0x277CF3AF0] + 4);
      if (os_log_type_enabled(v40, v41))
      {
        v42 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
        *buf = 138543874;
        *&buf[4] = v125;
        *&buf[12] = 2112;
        *&buf[14] = v123;
        *&buf[22] = 2112;
        v145 = v42;
        _os_log_impl(&dword_242490000, v40, v41, "CalDAVNotificationCalendar: LOOKATME: _handleInviteNotification: We don't have a hostURL for this invitation {uid: %{public}@, extID: %@, account: %@}", buf, 0x20u);
      }

      v120 = 0;
      v116 = 0;
      if (!v114)
      {
LABEL_55:
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v145 = __Block_byref_object_copy__0;
        *v146 = __Block_byref_object_dispose__0;
        *&v146[8] = [(MobileCalDAVNotificationCalendar *)self _copyNotificationWithExternalID:v123];
        v70 = *(*&buf[8] + 40);
        v15 = v70 == 0;
        if (v70)
        {
LABEL_83:
          _Block_object_dispose(buf, 8);

LABEL_84:
LABEL_85:

          goto LABEL_86;
        }

        v127[0] = MEMORY[0x277D85DD0];
        v127[1] = 3221225472;
        v127[2] = __79__MobileCalDAVNotificationCalendar__handleInviteNotification_withResource_uid___block_invoke;
        v127[3] = &unk_278D4F928;
        v132 = buf;
        v71 = v125;
        v128 = v71;
        v129 = v121;
        v111 = v123;
        v130 = v111;
        v131 = v9;
        v126 = 0;
        v72 = [(MobileCalDAVCalendar *)self rem_setListPropertiesWithBlock:v127 error:&v126];
        v107 = v126;
        if (v107)
        {
          v73 = 0;
        }

        else
        {
          v73 = v72;
        }

        if (v73)
        {
          v74 = DALoggingwithCategory();
          if (os_log_type_enabled(v74, type))
          {
            v104 = [*(*&buf[8] + 40) objectID];
            v75 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v112];
            v76 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
            *v136 = 138544130;
            v137 = v104;
            v138 = 2114;
            v139 = v75;
            v140 = 2114;
            v141 = v71;
            v142 = 2112;
            v143 = v76;
            _os_log_impl(&dword_242490000, v74, type, "CalDAVNotificationCalendar: _handleInviteNotification: Successfully added an REMCalDAVNotification (%{public}@) (inviteStatus: %{public}@, uid: %{public}@, account: %@).", v136, 0x2Au);
          }
        }

        else
        {
          v74 = DALoggingwithCategory();
          v77 = *(MEMORY[0x277CF3AF0] + 3);
          if (os_log_type_enabled(v74, v77))
          {
            v78 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
            *v136 = 138544130;
            v137 = v71;
            v138 = 2112;
            v139 = v111;
            v140 = 2112;
            v141 = self;
            v142 = 2112;
            v143 = v78;
            _os_log_impl(&dword_242490000, v74, v77, "CalDAVNotificationCalendar: _handleInviteNotification: Failed to create and save notification object when -_handleInviteNotification:withResource:uid: {uid: %{public}@, extID: %@, cal: %@, account: %@}", v136, 0x2Au);
          }
        }

        v113 = [MEMORY[0x277CF3AA8] sharedManager];
        v79 = [v113 rem_userNotificationPresentingProvider];
        typea = [v79 rem_notificationPresentingForDataAccess];

        if (v116)
        {
          v80 = [v11 fetchListIncludingSpecialContainerWithObjectID:v116 error:0];

          v81 = v80;
        }

        else
        {
          v81 = v120;
        }

        v120 = v81;
        if (v81)
        {
          v82 = [typea calDAVSharedListNotificationContentWithList:?];
        }

        else
        {
          v83 = DALoggingwithCategory();
          v84 = *(MEMORY[0x277CF3AF0] + 3);
          if (os_log_type_enabled(v83, v84))
          {
            v85 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
            *v136 = 138543874;
            v137 = v116;
            v138 = 2112;
            v139 = v111;
            v140 = 2112;
            v141 = v85;
            _os_log_impl(&dword_242490000, v83, v84, "CalDAVNotificationCalendar: _handleInviteNotification: Failed to fetch the invitation REMList object: {listID: %{public}@, extID: %@, account: %@}", v136, 0x20u);
          }

          v82 = 0;
        }

        if (v114)
        {
          v86 = [v8 summary];
          v115 = [v86 payloadAsString];

          v109 = _REMGetLocalizedString();
          v87 = [v8 organizer];
          v88 = [v87 commonName];
          v89 = [v88 payloadAsString];

          if (v89)
          {
            v90 = v89;
          }

          else
          {
            v105 = [v8 organizer];
            v92 = [v105 href];
            v93 = [v92 payloadAsFullURL];
            v90 = [v93 resourceSpecifier];
          }

          v94 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v109, v90];
          [v82 setTitle:v115];
          [v82 setBody:v94];
        }

        else
        {
          if (!v108)
          {
LABEL_80:
            if (v82)
            {
              [typea showNotificationWithIdentifier:v111 content:v82 completion:0];
            }

            goto LABEL_83;
          }

          v91 = [v8 summary];
          v115 = [v91 payloadAsString];

          v109 = _REMGetLocalizedString();
          v89 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v115];
          [v82 setTitle:v115];
          [v82 setBody:v89];
        }

        goto LABEL_80;
      }
    }

    v43 = [v8 supportedCalendarComponentSet];
    v34 = [v43 componentsAsString];

    if (![v34 length])
    {
      goto LABEL_41;
    }

    v44 = [MEMORY[0x277CF7048] allowedCalendars:v34 contains:@"VEVENT"];
    v45 = [MEMORY[0x277CF7048] allowedCalendars:v34 contains:@"VTODO"];
    v46 = v45;
    if (v44 == v45)
    {
      v47 = DALoggingwithCategory();
      v48 = *(MEMORY[0x277CF3AF0] + 4);
      if (os_log_type_enabled(v47, v48))
      {
        *buf = 138543618;
        *&buf[4] = v34;
        *&buf[12] = 2114;
        *&buf[14] = v125;
        _os_log_impl(&dword_242490000, v47, v48, "CalDAVNotificationCalendar: LOOKATME: _handleInviteNotification: The shared calendar should only be either VTODO or VEVENT {supportedComponentString: %{public}@, uid: %{public}@}.", buf, 0x16u);
      }
    }

    if ((v46 & 1) == 0)
    {
LABEL_41:
      v50 = DALoggingwithCategory();
      if (os_log_type_enabled(v50, type))
      {
        v51 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
        *buf = 138544130;
        *&buf[4] = v125;
        *&buf[12] = 2112;
        *&buf[14] = v123;
        *&buf[22] = 2112;
        v145 = v121;
        *v146 = 2112;
        *&v146[2] = v51;
        _os_log_impl(&dword_242490000, v50, type, "CalDAVNotificationCalendar: _handleInviteNotification: Does not seems to be an invitation for VTODO/Reminders, so we stop handling this {uid: %{public}@, extID: %@, hostURL: %@, account: %@}.", buf, 0x2Au);
      }

      v15 = 0;
      goto LABEL_84;
    }

    v49 = [(MobileCalDAVNotificationCalendar *)self daAccount];
    v110 = [v49 rem_saveRequest];

    v106 = [v110 updateAccount:v10];
    if (v120)
    {
      v37 = [v110 updateList:?];
    }

    else
    {
      v37 = [v110 addListWithName:@"__untitled_shared__" toAccountChangeItem:v106];
      [v37 setExternalIdentifier:v119];
      v55 = [v37 objectID];

      v116 = v55;
    }

    [v37 setSharingStatus:3];
    [v37 setDaIsImmutable:1];
    [v37 setDaIsReadOnly:1];
    v56 = [v8 organizer];
    v57 = [v56 commonName];
    v103 = [v57 payloadAsString];

    v58 = [v8 organizer];
    v59 = [v58 href];
    v102 = [v59 payloadAsFullURL];

    [v37 setSharedOwnerName:v103];
    v60 = [v102 absoluteString];
    [v37 setSharedOwnerAddress:v60];

    v61 = [v8 summary];
    v62 = [v61 payloadAsString];
    [v37 setName:v62];

    v63 = [v8 uid];
    v64 = [v63 payloadAsString];
    [v37 setDaExternalIdentificationTag:v64];

    [v37 setDaIsEventOnlyContainer:0];
    v134 = 0;
    LODWORD(v63) = [v110 saveSynchronouslyWithError:&v134];
    v101 = v134;
    v65 = DALoggingwithCategory();
    v66 = v65;
    if (v63)
    {
      if (os_log_type_enabled(v65, type))
      {
        v67 = [MEMORY[0x277CCABB0] numberWithBool:v120 == 0];
        v68 = [v37 objectID];
        v99 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
        *buf = 138544130;
        *&buf[4] = v67;
        *&buf[12] = 2112;
        *&buf[14] = v121;
        *&buf[22] = 2114;
        v145 = v68;
        *v146 = 2112;
        *&v146[2] = v99;
        _os_log_impl(&dword_242490000, v66, type, "CalDAVNotificationCalendar: SUCCESS: _handleInviteNotification: Created or updated shared invite-pending list {isCreate: %{public}@, hostURL: %@, objectID: %{public}@, account: %@}.", buf, 0x2Au);
      }
    }

    else
    {
      v69 = *(MEMORY[0x277CF3AF0] + 3);
      if (os_log_type_enabled(v65, *(MEMORY[0x277CF3AF0] + 3)))
      {
        v97 = [MEMORY[0x277CCABB0] numberWithBool:v120 == 0];
        v100 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
        v98 = [v101 localizedDescription];
        *buf = 138544130;
        *&buf[4] = v97;
        *&buf[12] = 2112;
        *&buf[14] = v121;
        *&buf[22] = 2112;
        v145 = v100;
        *v146 = 2114;
        *&v146[2] = v98;
        _os_log_impl(&dword_242490000, v66, v69, "CalDAVNotificationCalendar: ERROR: _handleInviteNotification: Failed to create or updated shared list for {isCreate: %{public}@, hostURL: %@, account: %@, error: %{public}@}", buf, 0x2Au);
      }
    }

LABEL_54:
    goto LABEL_55;
  }

  v15 = 0;
LABEL_86:

  v95 = *MEMORY[0x277D85DE8];
  return v15;
}

void __79__MobileCalDAVNotificationCalendar__handleInviteNotification_withResource_uid___block_invoke(uint64_t a1, void *a2)
{
  v10 = [a2 calDAVNotificationContext];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = [*(a1 + 56) syncKey];
  v7 = [v10 addCalDAVNotificationWithUUIDString:v3 hostURL:v4 externalIdentifier:v5 externalModificationTag:v6];
  v8 = *(*(a1 + 64) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (BOOL)_handleInviteReply:(id)a3 withResource:(id)a4 owningNotification:(id)a5 uid:(id)a6
{
  v72 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a6;
  v11 = [a4 serverID];
  v12 = [(MobileCalDAVCalendar *)self calendarURL];
  v13 = [v11 da_leastInfoStringRepresentationRelativeToParentURL:v12];

  v14 = DALoggingwithCategory();
  v15 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = [v9 inviteStatus];
    v17 = [v16 name];
    v18 = [v9 debugDescription];
    *buf = 138413314;
    v63 = v17;
    v64 = 2112;
    v65 = v13;
    v66 = 2114;
    v67 = v10;
    v68 = 2112;
    v69 = self;
    v70 = 2112;
    v71 = v18;
    _os_log_impl(&dword_242490000, v14, v15, "CalDAVNotificationCalendar: _handleInviteReply: Received CalDAVCalendarServerInviteReplyItem for {replyString: %@, extID: %@, uid: %{public}@, calendar: %@, replyItem: %@}.", buf, 0x34u);
  }

  v19 = [v9 inviteStatus];
  v20 = [v19 name];

  v61 = v13;
  if ([v20 isEqualToString:*MEMORY[0x277CF7058]] & 1) != 0 || (objc_msgSend(v20, "isEqualToString:", *MEMORY[0x277CF7060]))
  {
    v21 = _REMGetLocalizedString();
  }

  else
  {
    [v20 isEqualToString:*MEMORY[0x277CF7068]];
    v21 = 0;
  }

  v22 = [v9 hostURL];
  v23 = [v22 href];
  v24 = [v23 payloadAsFullURL];

  v25 = [(MobileCalDAVNotificationCalendar *)self daPrincipal];
  v26 = [v25 calendarHomeURL];

  v27 = [v24 da_leastInfoStringRepresentationRelativeToParentURL:v26];
  v28 = [v27 da_appendSlashIfNeeded];

  v29 = [(MobileCalDAVCalendar *)self rem_account];
  v60 = v28;
  v30 = [v29 fetchListIncludingSpecialContainerWithExternalIdentifier:v28 error:0];
  v31 = v30;
  if (v21 && v30)
  {
    v54 = v30;
    v55 = v26;
    v58 = v10;
    v59 = v29;
    v56 = v21;
    v57 = v20;
    v32 = DALoggingwithCategory();
    if (os_log_type_enabled(v32, v15))
    {
      v33 = [v9 acceptedURL];
      v34 = [v33 resourceSpecifier];
      v35 = [v9 href];
      v36 = [v35 payloadAsFullURL];
      v37 = [v36 resourceSpecifier];
      *buf = 138412802;
      v63 = v60;
      v64 = 2112;
      v65 = v34;
      v66 = 2112;
      v67 = v37;
      _os_log_impl(&dword_242490000, v32, v15, "CalDAVNotificationCalendar: _handleInviteReply: Showing user notification for {extID: %@, acceptedURL: %@, address: %@}", buf, 0x20u);
    }

    v38 = [MEMORY[0x277CF3AA8] sharedManager];
    v39 = [v38 rem_userNotificationPresentingProvider];
    v40 = [v39 rem_notificationPresentingForDataAccess];

    v41 = [v9 summary];
    v42 = [v41 payloadAsString];

    v43 = _REMGetLocalizedString();
    v44 = MEMORY[0x277CCACA8];
    v45 = [v9 href];
    v46 = [v45 payloadAsFullURL];
    v47 = [v46 resourceSpecifier];
    v48 = [v44 localizedStringWithFormat:v43, v47, v56];

    v31 = v54;
    v49 = [v40 calDAVSharedListNotificationContentWithList:v54];
    [v49 setTitle:v42];
    [v49 setBody:v48];
    [v40 showNotificationWithIdentifier:v61 content:v49 completion:0];

    v21 = v56;
    v20 = v57;
    v10 = v58;
    v26 = v55;
LABEL_12:

    v29 = v59;
    goto LABEL_13;
  }

  if (v21 && !v30)
  {
    v59 = v29;
    v38 = DALoggingwithCategory();
    v52 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v38, v52))
    {
      v53 = [(MobileCalDAVNotificationCalendar *)self _accountLoggingDescription];
      *buf = 138412546;
      v63 = v60;
      v64 = 2112;
      v65 = v53;
      _os_log_impl(&dword_242490000, v38, v52, "CalDAVNotificationCalendar: _handleInviteReply: Failed to fetch the host REMList object: {extID: %@, account: %@}", buf, 0x16u);
    }

    goto LABEL_12;
  }

LABEL_13:

  v50 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)_changedAttributesFromCalendarChanges:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v38 = [MEMORY[0x277CBEB38] dictionary];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v3;
  v33 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v33)
  {
    v32 = *v50;
    do
    {
      v4 = 0;
      do
      {
        if (*v50 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v34 = v4;
        v5 = *(*(&v49 + 1) + 8 * v4);
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v35 = [v5 recurrences];
        v37 = [v35 countByEnumeratingWithState:&v45 objects:v54 count:16];
        if (v37)
        {
          v36 = *v46;
          do
          {
            v6 = 0;
            do
            {
              if (*v46 != v36)
              {
                objc_enumerationMutation(v35);
              }

              v40 = v6;
              v7 = *(*(&v45 + 1) + 8 * v6);
              v8 = [v7 recurrenceID];
              if (v8)
              {
                v9 = [v7 recurrenceID];
                v10 = [v9 payloadAsString];
              }

              else
              {
                v10 = @"master";
              }

              v11 = [v38 objectForKeyedSubscript:v10];
              if (!v11)
              {
                v11 = objc_opt_new();
                [v38 setObject:v11 forKeyedSubscript:v10];
              }

              v39 = v10;
              v43 = 0u;
              v44 = 0u;
              v41 = 0u;
              v42 = 0u;
              v12 = [v7 changes];
              v13 = [v12 changedProperties];

              v14 = [v13 countByEnumeratingWithState:&v41 objects:v53 count:16];
              if (v14)
              {
                v15 = v14;
                v16 = *v42;
                do
                {
                  for (i = 0; i != v15; ++i)
                  {
                    if (*v42 != v16)
                    {
                      objc_enumerationMutation(v13);
                    }

                    v18 = *(*(&v41 + 1) + 8 * i);
                    v19 = [v18 nameAttribute];

                    if (v19)
                    {
                      v20 = [v18 nameAttribute];
                      v21 = [v20 caseInsensitiveCompare:@"dtstart"];

                      if (v21)
                      {
                        goto LABEL_23;
                      }

                      v23 = [v18 typeAttribute];
                      v24 = [v23 caseInsensitiveCompare:@"time"];

                      if (v24)
                      {
                        v25 = [v18 typeAttribute];
                        v26 = [v25 caseInsensitiveCompare:@"date"];

                        if (v26)
                        {
LABEL_23:
                          v22 = [v18 nameAttribute];
                          [v11 addObject:v22];

                          continue;
                        }

                        v27 = v11;
                        v28 = @"DateChanged";
                      }

                      else
                      {
                        v27 = v11;
                        v28 = @"TimeChanged";
                      }

                      [v27 addObject:v28];
                    }
                  }

                  v15 = [v13 countByEnumeratingWithState:&v41 objects:v53 count:16];
                }

                while (v15);
              }

              v6 = v40 + 1;
            }

            while (v40 + 1 != v37);
            v37 = [v35 countByEnumeratingWithState:&v45 objects:v54 count:16];
          }

          while (v37);
        }

        v4 = v34 + 1;
      }

      while (v34 + 1 != v33);
      v33 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v33);
  }

  v29 = *MEMORY[0x277D85DE8];

  return v38;
}

- (BOOL)_handleResourceChanged:(id)a3 withResource:(id)a4 uid:(id)a5
{
  v89 = *MEMORY[0x277D85DE8];
  v57 = a3;
  v8 = a5;
  v9 = [a4 serverID];
  v10 = [(MobileCalDAVCalendar *)self calendarURL];
  v11 = [v9 da_leastInfoStringRepresentationRelativeToParentURL:v10];

  v12 = DALoggingwithCategory();
  v13 = *(MEMORY[0x277CF3AF0] + 4);
  if (os_log_type_enabled(v12, v13))
  {
    *buf = 138412802;
    v84 = v11;
    v85 = 2114;
    v86 = v8;
    v87 = 2112;
    v88 = self;
    _os_log_impl(&dword_242490000, v12, v13, "CalDAVNotificationCalendar: LOOKATME! (Should this be Events only?!)LOOKATME! (Should this be Events only?!) Handling CalDAVCalendarServerResourceChangedItem for {extID: %@, uid: %{public}@, calendar: %@}.", buf, 0x20u);
  }

  v56 = v11;

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v14 = [v57 created];
  v15 = [v14 countByEnumeratingWithState:&v74 objects:v82 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v75;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v75 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v74 + 1) + 8 * i);
        v20 = DALoggingwithCategory();
        if (os_log_type_enabled(v20, v13))
        {
          v21 = [v19 debugDescription];
          *buf = 138543618;
          v84 = v8;
          v85 = 2112;
          v86 = v21;
          _os_log_impl(&dword_242490000, v20, v13, "CalDAVNotificationCalendar: LOOKATME! CalDAVCalendarServerResourceChangedItem {uid: %{public}@, createdItem: %@}.", buf, 0x16u);
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v74 objects:v82 count:16];
    }

    while (v16);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v22 = [v57 updated];
  v23 = [v22 countByEnumeratingWithState:&v70 objects:v81 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v71;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v71 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v70 + 1) + 8 * j);
        v28 = DALoggingwithCategory();
        if (os_log_type_enabled(v28, v13))
        {
          v29 = [v27 debugDescription];
          *buf = 138543618;
          v84 = v8;
          v85 = 2112;
          v86 = v29;
          _os_log_impl(&dword_242490000, v28, v13, "CalDAVNotificationCalendar: LOOKATME! CalDAVCalendarServerResourceChangedItem {uid: %{public}@, updatedItem: %@}.", buf, 0x16u);
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v70 objects:v81 count:16];
    }

    while (v24);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v30 = [v57 deleted];
  v31 = [v30 countByEnumeratingWithState:&v66 objects:v80 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v67;
    do
    {
      for (k = 0; k != v32; ++k)
      {
        if (*v67 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v66 + 1) + 8 * k);
        v36 = DALoggingwithCategory();
        if (os_log_type_enabled(v36, v13))
        {
          v37 = [v35 debugDescription];
          *buf = 138543618;
          v84 = v8;
          v85 = 2112;
          v86 = v37;
          _os_log_impl(&dword_242490000, v36, v13, "CalDAVNotificationCalendar: LOOKATME! CalDAVCalendarServerResourceChangedItem {uid: %{public}@, deletedItem: %@}.", buf, 0x16u);
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v66 objects:v80 count:16];
    }

    while (v32);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v38 = [v57 collectionChanges];
  v39 = [v38 countByEnumeratingWithState:&v62 objects:v79 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v63;
    do
    {
      for (m = 0; m != v40; ++m)
      {
        if (*v63 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = *(*(&v62 + 1) + 8 * m);
        v44 = DALoggingwithCategory();
        if (os_log_type_enabled(v44, v13))
        {
          v45 = [v43 debugDescription];
          *buf = 138543618;
          v84 = v8;
          v85 = 2112;
          v86 = v45;
          _os_log_impl(&dword_242490000, v44, v13, "CalDAVNotificationCalendar: LOOKATME! CalDAVCalendarServerResourceChangedItem {uid: %{public}@, collectionChanges: %@}.", buf, 0x16u);
        }
      }

      v40 = [v38 countByEnumeratingWithState:&v62 objects:v79 count:16];
    }

    while (v40);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v46 = [v57 collectionUpdates];
  v47 = [v46 countByEnumeratingWithState:&v58 objects:v78 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v59;
    do
    {
      for (n = 0; n != v48; ++n)
      {
        if (*v59 != v49)
        {
          objc_enumerationMutation(v46);
        }

        v51 = *(*(&v58 + 1) + 8 * n);
        v52 = DALoggingwithCategory();
        if (os_log_type_enabled(v52, v13))
        {
          v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v51, "state")}];
          *buf = 138543618;
          v84 = v8;
          v85 = 2112;
          v86 = v53;
          _os_log_impl(&dword_242490000, v52, v13, "CalDAVNotificationCalendar: LOOKATME! CalDAVCalendarServerResourceChangedItem {uid: %{public}@, collectionUpdates: %@}.", buf, 0x16u);
        }
      }

      v48 = [v46 countByEnumeratingWithState:&v58 objects:v78 count:16];
    }

    while (v48);
  }

  v54 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)_accountLoggingDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MobileCalDAVNotificationCalendar *)self daAccount];
  v5 = [v4 accountDescription];
  v6 = [(MobileCalDAVNotificationCalendar *)self daAccount];
  v7 = [v6 accountID];
  v8 = [v3 stringWithFormat:@"%@:<%@>", v5, v7];

  return v8;
}

- (void)_removeCalendarItemWithURL:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MobileCalDAVNotificationCalendar.m" lineNumber:523 description:{@"Invalid parameter not satisfying: %@", @"notificationContext"}];
}

@end