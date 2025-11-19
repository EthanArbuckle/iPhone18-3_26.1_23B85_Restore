@interface DACalDAViCalItem
+ (id)filenameWithUniqueIdentifier:(id)a3;
+ (id)rem_store;
- (BOOL)loadLocalItemWithAccount:(id)a3;
- (BOOL)rem_setReminderPropertiesWithBlock:(id)a3 error:(id *)a4;
- (DACalDAViCalItem)initWithREMReminder:(id)a3 inContainer:(id)a4;
- (DACalDAViCalItem)initWithURL:(id)a3 eTag:(id)a4 dataPayload:(id)a5 inContainerWithURL:(id)a6 withAccountInfoProvider:(id)a7;
- (NSData)dataPayload;
- (NSMutableDictionary)originatingChangeItems;
- (NSString)description;
- (NSString)filename;
- (NSString)scheduleTag;
- (NSString)syncKey;
- (NSString)uniqueIdentifier;
- (id)saveWithLocalObject:(void *)a3 toContainer:(void *)a4 shouldMergeProperties:(BOOL)a5 outMergeDidChooseLocalProperties:(BOOL *)a6 account:(id)a7 calendar:(id)a8 batchSaveRequest:(id)a9;
- (void)_fixUpCalendarForServer:(id)a3;
- (void)populateDataPayloadWithReminder:(id)a3;
- (void)setDataPayload:(id)a3;
- (void)setOriginatingChangeItems:(id)a3;
- (void)setRem_LocalItem:(id)a3;
- (void)setScheduleTag:(id)a3;
- (void)setSyncKey:(id)a3;
@end

@implementation DACalDAViCalItem

- (DACalDAViCalItem)initWithURL:(id)a3 eTag:(id)a4 dataPayload:(id)a5 inContainerWithURL:(id)a6 withAccountInfoProvider:(id)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v16.receiver = self;
  v16.super_class = DACalDAViCalItem;
  v13 = [(DACalDAViCalItem *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(DACalDAViCalItem *)v13 setServerID:v10];
    [(DACalDAViCalItem *)v14 setSyncKey:v11];
    [(DACalDAViCalItem *)v14 setDataPayload:v12];
  }

  return v14;
}

- (DACalDAViCalItem)initWithREMReminder:(id)a3 inContainer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = DACalDAViCalItem;
  v8 = [(DACalDAViCalItem *)&v14 init];
  if (v8)
  {
    v9 = [[DACalDAVREMReminderProxy alloc] initWithReminder:v6];
    [(DACalDAViCalItem *)v8 setRem_LocalItem:v9];
    v10 = [v6 externalIdentifier];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v7];
      [(DACalDAViCalItem *)v8 setServerID:v12];
    }
  }

  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DACalDAViCalItem;
  v4 = [(DACalDAViCalItem *)&v8 description];
  v5 = [(DACalDAViCalItem *)self serverID];
  v6 = [v3 stringWithFormat:@"%@ - (path: %@)", v4, v5];

  return v6;
}

- (NSString)uniqueIdentifier
{
  v20 = *MEMORY[0x277D85DE8];
  rem_reminderItem = self->_rem_reminderItem;
  if (rem_reminderItem)
  {
    v4 = [(DACalDAViCalItemBackingModel *)rem_reminderItem daCalendarItemUniqueIdentifier];
    if (v4)
    {
      goto LABEL_10;
    }

    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(v5, *(MEMORY[0x277CF3AF0] + 4)))
    {
      v7 = [(DACalDAViCalItemBackingModel *)self->_rem_reminderItem objectID];
      v8 = [MEMORY[0x277CCACC8] callStackSymbols];
      *buf = 138543618;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_242490000, v5, v6, "DACalDAViCalItem: LOOKATME: We should have set the reminder GUID upfront to batch with other properties changes in [MobileCalDAVCalendar _createActionsForItems:withActions:...] when we discover it, and not doing this ad-hoc lazily which is bad in performance. Review if we have a missed case. {reminderID: %{public}@, callstack: %@}", buf, 0x16u);
    }

    v9 = [MEMORY[0x277CCACA8] da_newGUID];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __36__DACalDAViCalItem_uniqueIdentifier__block_invoke;
    v14[3] = &unk_278D4F690;
    v4 = v9;
    v15 = v4;
    [(DACalDAViCalItem *)self rem_setReminderPropertiesWithBlock:v14 error:0];
    v10 = v15;
  }

  else
  {
    v10 = DALoggingwithCategory();
    v11 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(v10, v11))
    {
      *buf = 138412546;
      v17 = self;
      v18 = 2112;
      v19 = 0;
      _os_log_impl(&dword_242490000, v10, v11, "DACalDAViCalItem: LOOKATME: Trying to get uniqueIdentifier from a DAViCalItem with neither reminder/cal DB item {iCalItem: %@, stack: %@}", buf, 0x16u);
    }

    v4 = 0;
  }

LABEL_10:
  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (NSString)filename
{
  v3 = [(DACalDAViCalItem *)self serverID];

  if (v3)
  {
    v4 = [(DACalDAViCalItem *)self serverID];
    v5 = [v4 absoluteString];
    v6 = [v5 lastPathComponent];
  }

  else
  {
    if (!self->_rem_reminderItem)
    {
      [(DACalDAViCalItem *)self loadLocalItemWithAccount:0];
    }

    v4 = [(DACalDAViCalItem *)self uniqueIdentifier];
    v6 = [DACalDAViCalItem filenameWithUniqueIdentifier:v4];
  }

  return v6;
}

+ (id)filenameWithUniqueIdentifier:(id)a3
{
  v3 = REMGetRealUIDFromRecurrenceUID();
  v4 = [v3 stringByAppendingPathExtension:@"ics"];
  v5 = [v4 stringByAddingPercentEscapesUsingEncoding:4];
  v6 = [v5 stringByReplacingOccurrencesOfString:@"/" withString:@"%2F"];

  return v6;
}

- (void)setSyncKey:(id)a3
{
  v5 = a3;
  syncKey = self->_syncKey;
  p_syncKey = &self->_syncKey;
  if (syncKey != v5)
  {
    v8 = v5;
    objc_storeStrong(p_syncKey, a3);
    v5 = v8;
  }
}

- (NSString)syncKey
{
  v3 = self->_syncKey;
  if (self->_rem_reminderItem)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v3 = [(DACalDAViCalItemBackingModel *)self->_rem_reminderItem externalModificationTag];
  }

  return v3;
}

- (NSString)scheduleTag
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 4);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = [(DACalDAViCalItemBackingModel *)self->_rem_reminderItem objectID];
    v10 = 138543618;
    v11 = v5;
    v12 = 2112;
    v13 = 0;
    _os_log_impl(&dword_242490000, v3, v4, "DACalDAViCalItem: Do we really need get -scheduleTag for reminders? {remItem: %{public}@, stack: %@}", &v10, 0x16u);
  }

  scheduleTag = self->_scheduleTag;
  if (scheduleTag)
  {
    v7 = scheduleTag;
  }

  else
  {
    v7 = &stru_2854B8D68;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)setScheduleTag:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = [(DACalDAViCalItemBackingModel *)self->_rem_reminderItem objectID];
    v12 = 138543874;
    v13 = v8;
    v14 = 2112;
    v15 = v5;
    v16 = 2112;
    v17 = 0;
    _os_log_impl(&dword_242490000, v6, v7, "DACalDAViCalItem: Do we really need -setScheduleTag for reminders? {remItem: %{public}@, scheduleTag: %@, stack: %@}", &v12, 0x20u);
  }

  scheduleTag = self->_scheduleTag;
  p_scheduleTag = &self->_scheduleTag;
  if (scheduleTag != v5)
  {
    objc_storeStrong(p_scheduleTag, a3);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setOriginatingChangeItems:(id)a3
{
  if (self->_originatingChangeItems != a3)
  {
    v5 = [a3 mutableCopy];
    originatingChangeItems = self->_originatingChangeItems;
    self->_originatingChangeItems = v5;

    MEMORY[0x2821F96F8]();
  }
}

- (NSMutableDictionary)originatingChangeItems
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_originatingChangeItems)
  {
    v3 = objc_opt_new();
    originatingChangeItems = v2->_originatingChangeItems;
    v2->_originatingChangeItems = v3;
  }

  objc_sync_exit(v2);

  v5 = v2->_originatingChangeItems;

  return v5;
}

+ (id)rem_store
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CF3AA8] sharedManager];
  v3 = [v2 rem_storeProvider];
  v4 = [v3 rem_storeForDataAccess];

  if (!v4)
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_242490000, v5, v6, "DACalDAViCalItem: Couldn't get an REMStore from %{public}@.", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)saveWithLocalObject:(void *)a3 toContainer:(void *)a4 shouldMergeProperties:(BOOL)a5 outMergeDidChooseLocalProperties:(BOOL *)a6 account:(id)a7 calendar:(id)a8 batchSaveRequest:(id)a9
{
  v56 = a5;
  v79 = *MEMORY[0x277D85DE8];
  v11 = a7;
  v63 = a8;
  v58 = a9;
  v12 = objc_alloc(MEMORY[0x277D7F108]);
  v13 = [(DACalDAViCalItem *)self dataPayload];
  v73 = 0;
  v14 = [v12 initWithData:v13 options:0 error:&v73];
  v15 = v73;

  v62 = self;
  [(DACalDAViCalItem *)self setDocument:v14];
  if (v14)
  {
    v55 = v11;
    v16 = [MEMORY[0x277D447F0] sync];
    v17 = os_signpost_id_generate(v16);
    v18 = v16;
    v19 = v18;
    v52 = v17 - 1;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_242490000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "CalDAV.updateSingleItem", &unk_2424C3675, buf, 2u);
    }

    spid = v17;
    v51 = v19;
    v53 = v15;

    v54 = v14;
    v20 = [v14 calendar];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    obj = [v20 componentKeys];
    v21 = [obj countByEnumeratingWithState:&v69 objects:v74 count:16];
    v60 = v20;
    if (v21)
    {
      v22 = v21;
      v59 = 0;
      v23 = *v70;
      v24 = *(MEMORY[0x277CF3AF0] + 6);
      v61 = *(MEMORY[0x277CF3AF0] + 4);
      v25 = *(MEMORY[0x277CF3AF0] + 3);
      type = *(MEMORY[0x277CF3AF0] + 5);
      v64 = v24;
      while (1)
      {
        v26 = 0;
        v65 = v22;
        do
        {
          if (*v70 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v27 = [v20 componentForKey:*(*(&v69 + 1) + 8 * v26)];
          if (v27)
          {
            v28 = objc_autoreleasePoolPush();
            v29 = DALoggingwithCategory();
            if (os_log_type_enabled(v29, v24))
            {
              v30 = [v27 description];
              *buf = 138412290;
              v76 = v30;
              _os_log_impl(&dword_242490000, v29, v24, "Processing component %@", buf, 0xCu);
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v31 = DALoggingwithCategory();
              if (os_log_type_enabled(v31, v24))
              {
                v32 = [v27 uid];
                *buf = 138543362;
                v76 = v32;
                _os_log_impl(&dword_242490000, v31, v24, "The task %{public}@ will be synced. ICSTodos are synced by default.", buf, 0xCu);
              }

              v33 = v27;
              v34 = a4;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v35 = [(DACalDAViCalItem *)v62 _addOrModifyTask:v33 inICSCalendar:v20 withList:v34 shouldMergeProperties:v56 outMergeDidChooseLocalProperties:a6 inMobileCalendar:v63 batchSaveRequest:v58];
                if (v35)
                {
                  v36 = v35;

                  v37 = [(DACalDAViCalItem *)v62 serverID];
                  v38 = [v33 uid];
                  [v63 setURL:v37 forResourceWithUUID:v38 reminderChangeItem:v36];

                  v20 = v60;
                  v59 = v36;
                  goto LABEL_27;
                }
              }

              else
              {
                v40 = DALoggingwithCategory();
                if (os_log_type_enabled(v40, v61))
                {
                  v41 = [v33 uid];
                  *buf = 138412546;
                  v76 = a4;
                  v77 = 2114;
                  v78 = v41;
                  _os_log_impl(&dword_242490000, v40, v61, "DACalDAViCalItem: LOOKATME: We should no longer support CalDB calendar as container for tasks {container: %@, todo.uid: %{public}@}.", buf, 0x16u);
                }
              }

              v36 = DALoggingwithCategory();
              if (os_log_type_enabled(v36, v25))
              {
                v42 = [v33 uid];
                *buf = 138543362;
                v76 = v42;
                _os_log_impl(&dword_242490000, v36, v25, "Error adding or modifying todo with uid %{public}@", buf, 0xCu);

                v20 = v60;
              }

LABEL_27:

              v22 = v65;
              v24 = v64;
            }

            objc_autoreleasePoolPop(v28);
            goto LABEL_29;
          }

          v39 = DALoggingwithCategory();
          if (os_log_type_enabled(v39, type))
          {
            *buf = 0;
            _os_log_impl(&dword_242490000, v39, type, "NULL component passed to processComponent:", buf, 2u);
          }

LABEL_29:
          ++v26;
        }

        while (v22 != v26);
        v22 = [obj countByEnumeratingWithState:&v69 objects:v74 count:16];
        if (!v22)
        {
          goto LABEL_36;
        }
      }
    }

    v59 = 0;
LABEL_36:

    v47 = v51;
    v43 = v47;
    if (v52 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_242490000, v43, OS_SIGNPOST_INTERVAL_END, spid, "CalDAV.updateSingleItem", &unk_2424C3675, buf, 2u);
    }

    v46 = v59;
    v14 = v54;
    v11 = v55;
    v15 = v53;
  }

  else
  {
    v43 = DALoggingwithCategory();
    v44 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v43, v44))
    {
      v45 = [(DACalDAViCalItem *)self dataPayload];
      *buf = 138543618;
      v76 = v15;
      v77 = 2112;
      v78 = v45;
      _os_log_impl(&dword_242490000, v43, v44, "Could not create an ICSDocument from the data from the server: %{public}@. Data: %@", buf, 0x16u);
    }

    v46 = 0;
  }

  v48 = *MEMORY[0x277D85DE8];

  return v46;
}

- (void)_fixUpCalendarForServer:(id)a3
{
  v53 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = mobileCalDAVProdID();
  [v4 setProdid:v5];

  if ([(DACalDAViCalItem *)self isMigrate])
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = [v4 componentKeys];
    v31 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
    if (v31)
    {
      v29 = *v46;
      v30 = v4;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v46 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v45 + 1) + 8 * i);
          v8 = [v4 componentForKey:v7];
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v9 = [v8 attendee];
          v10 = [v9 countByEnumeratingWithState:&v41 objects:v51 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v42;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v42 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                [*(*(&v41 + 1) + 8 * j) setScheduleagent:1];
              }

              v11 = [v9 countByEnumeratingWithState:&v41 objects:v51 count:16];
            }

            while (v11);
          }

          v32 = v8;
          v14 = [v8 organizer];
          [v14 setScheduleagent:1];

          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v15 = [v4 componentOccurrencesForKey:v7];
          v16 = [v15 countByEnumeratingWithState:&v37 objects:v50 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v38;
            do
            {
              for (k = 0; k != v17; ++k)
              {
                if (*v38 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v37 + 1) + 8 * k);
                v33 = 0u;
                v34 = 0u;
                v35 = 0u;
                v36 = 0u;
                v21 = [v20 attendee];
                v22 = [v21 countByEnumeratingWithState:&v33 objects:v49 count:16];
                if (v22)
                {
                  v23 = v22;
                  v24 = *v34;
                  do
                  {
                    for (m = 0; m != v23; ++m)
                    {
                      if (*v34 != v24)
                      {
                        objc_enumerationMutation(v21);
                      }

                      [*(*(&v33 + 1) + 8 * m) setScheduleagent:1];
                    }

                    v23 = [v21 countByEnumeratingWithState:&v33 objects:v49 count:16];
                  }

                  while (v23);
                }

                v26 = [v20 organizer];
                [v26 setScheduleagent:1];
              }

              v17 = [v15 countByEnumeratingWithState:&v37 objects:v50 count:16];
            }

            while (v17);
          }

          v4 = v30;
        }

        v31 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
      }

      while (v31);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)populateDataPayloadWithReminder:(id)a3
{
  v24[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  if (!v5)
  {
    [(DACalDAViCalItem *)a2 populateDataPayloadWithReminder:?];
  }

  rem_reminderItem = self->_rem_reminderItem;
  if (!rem_reminderItem)
  {
    [DACalDAViCalItem populateDataPayloadWithReminder:];
    rem_reminderItem = *v23;
  }

  v8 = [(DACalDAViCalItemBackingModel *)rem_reminderItem objectID];

  if (!v8)
  {
    [(DACalDAViCalItem *)a2 populateDataPayloadWithReminder:?];
  }

  v9 = [(DACalDAViCalItemBackingModel *)self->_rem_reminderItem objectID];
  v10 = [v5 objectID];
  v11 = [v9 isEqual:v10];

  if ((v11 & 1) == 0)
  {
    [DACalDAViCalItem populateDataPayloadWithReminder:];
  }

  v12 = MEMORY[0x277D44620];
  v24[0] = v5;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v14 = [v12 exportICSCalendarFromReminders:v13];

  v15 = DALoggingwithCategory();
  v16 = v15;
  if (v14)
  {
    v17 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v15, v17))
    {
      v18 = [v5 objectID];
      *v23 = 138543362;
      *&v23[4] = v18;
      _os_log_impl(&dword_242490000, v16, v17, "DACalDAViCalItem: Exported ICS -dataPayload for the reminder {reminderID: %{public}@}", v23, 0xCu);
    }

    [(DACalDAViCalItem *)self _fixUpCalendarForServer:v14];
    v16 = [objc_alloc(MEMORY[0x277D7F108]) initWithCalendar:v14];
    v19 = [v16 ICSDataWithOptions:4];
  }

  else
  {
    v20 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v15, v20))
    {
      v21 = [v5 objectID];
      *v23 = 138543362;
      *&v23[4] = v21;
      _os_log_impl(&dword_242490000, v16, v20, "DACalDAViCalItem: ERROR: Couldn't create an ICS calendar for the reminder {reminderID: %{public}@}", v23, 0xCu);
    }

    v19 = 0;
  }

  [(DACalDAViCalItem *)self setDataPayload:v19];
  objc_autoreleasePoolPop(v6);

  v22 = *MEMORY[0x277D85DE8];
}

- (void)setDataPayload:(id)a3
{
  v5 = a3;
  dataPayload = self->_dataPayload;
  p_dataPayload = &self->_dataPayload;
  if (dataPayload != v5)
  {
    v8 = v5;
    objc_storeStrong(p_dataPayload, a3);
    v5 = v8;
  }
}

- (NSData)dataPayload
{
  v23 = *MEMORY[0x277D85DE8];
  dataPayload = self->_dataPayload;
  if (dataPayload)
  {
    v3 = dataPayload;
  }

  else if (self->_rem_reminderItem)
  {
    v5 = DALoggingwithCategory();
    v6 = MEMORY[0x277CF3AF0];
    v7 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(v5, v7))
    {
      v8 = [(DACalDAViCalItemBackingModel *)self->_rem_reminderItem objectID];
      *buf = 138543618;
      v20 = v8;
      v21 = 2112;
      v22 = 0;
      _os_log_impl(&dword_242490000, v5, v7, "DACalDAViCalItem: LOOKATME: We should avoid lazy populating dataPayload because that means we are probably fetching reminders one-by-one in a loop while they could have been fetching them in a batch instead for better performance {reminder: %{public}@, stack: %@}", buf, 0x16u);
    }

    v9 = [objc_opt_class() rem_store];
    v10 = [(DACalDAViCalItemBackingModel *)self->_rem_reminderItem objectID];
    v18 = 0;
    v11 = [v9 fetchReminderWithObjectID:v10 error:&v18];
    v12 = v18;

    if (!v11 || v12)
    {
      v13 = DALoggingwithCategory();
      v14 = *(v6 + 3);
      if (os_log_type_enabled(v13, v14))
      {
        v15 = [(DACalDAViCalItemBackingModel *)self->_rem_reminderItem objectID];
        *buf = 138543362;
        v20 = v15;
        _os_log_impl(&dword_242490000, v13, v14, "DACalDAViCalItem: ERROR: Couldn't the reminder for this DA item to export payload {reminder: %{public}@}", buf, 0xCu);
      }

      v3 = 0;
    }

    else
    {
      [(DACalDAViCalItem *)self populateDataPayloadWithReminder:v11];
      v3 = self->_dataPayload;
    }
  }

  else
  {
    v3 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)setRem_LocalItem:(id)a3
{
  v5 = a3;
  p_rem_reminderItem = &self->_rem_reminderItem;
  if (self->_rem_reminderItem != v5)
  {
    v8 = v5;
    objc_storeStrong(p_rem_reminderItem, a3);
    v7 = [(DACalDAViCalItemBackingModel *)self->_rem_reminderItem objectID];
    [(DACalDAViCalItem *)self setRem_clientID:v7];

    v5 = v8;
  }

  MEMORY[0x2821F96F8](p_rem_reminderItem, v5);
}

- (BOOL)loadLocalItemWithAccount:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277CF3AF0];
  if (!self->_rem_clientID)
  {
    v6 = DALoggingwithCategory();
    v7 = *(v5 + 4);
    if (os_log_type_enabled(v6, v7))
    {
      rem_clientID = self->_rem_clientID;
      v9 = [v4 accountID];
      *buf = 138413058;
      v26 = self;
      v27 = 2114;
      v28 = rem_clientID;
      v29 = 2112;
      v30 = v9;
      v31 = 2112;
      v32 = 0;
      _os_log_impl(&dword_242490000, v6, v7, "DACalDAViCalItem: LOOKATME: We have a DACalDAViCalItem without either a backing REM or CalDB item: {iCalItem: %@, rem_clientID: %{public}@, account: %@} call stack: %@", buf, 0x2Au);
    }
  }

  v10 = [objc_opt_class() rem_store];
  v11 = v10;
  v12 = self->_rem_clientID;
  if (v12)
  {
    v24 = 0;
    v13 = [v10 fetchReminderWithObjectID:v12 error:&v24];
    v14 = v24;
    v15 = DALoggingwithCategory();
    v16 = *(v5 + 6);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = MEMORY[0x277CCABB0];
      v18 = [(DACalDAViCalItem *)self debugReminderFetchCount];
      [(DACalDAViCalItem *)self setDebugReminderFetchCount:v18 + 1];
      v19 = [v17 numberWithUnsignedInteger:v18 + 1];
      *buf = 138543618;
      v26 = v19;
      v27 = 2048;
      v28 = self;
      _os_log_impl(&dword_242490000, v15, v16, "DACalDAViCalItem: loadLocalItemWithAccount: Fetched reminder (%{public}@) times for DACalDAViCalItem instance (%p).", buf, 0x16u);
    }

    v20 = [[DACalDAVREMReminderProxy alloc] initWithReminder:v13];
    [(DACalDAViCalItem *)self setRem_LocalItem:v20];
    v21 = v13 != 0;
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)rem_setReminderPropertiesWithBlock:(id)a3 error:(id *)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [objc_opt_class() rem_store];
  rem_reminderItem = self->_rem_reminderItem;
  if (rem_reminderItem)
  {
    v9 = [(DACalDAViCalItemBackingModel *)rem_reminderItem objectID];
    v43 = 0;
    v10 = [v7 fetchReminderWithObjectID:v9 error:&v43];
    v11 = v43;

    if (v10)
    {
      v37 = 0;
      v38 = &v37;
      v39 = 0x3032000000;
      v40 = __Block_byref_object_copy__1;
      v41 = __Block_byref_object_dispose__1;
      v42 = 0;
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __61__DACalDAViCalItem_rem_setReminderPropertiesWithBlock_error___block_invoke;
      v34[3] = &unk_278D4FE18;
      v36 = &v37;
      v35 = v6;
      v33 = v11;
      v12 = rem_ReminderSetPropertiesWithBlock(v10, v34, &v33);
      v13 = v33;

      if (v13)
      {
        v14 = 0;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        v15 = [(DACalDAViCalItemBackingModel *)self->_rem_reminderItem objectID];
        rem_clientID = self->_rem_clientID;
        self->_rem_clientID = v15;

        v17 = self->_rem_reminderItem;
        self->_rem_reminderItem = 0;

        [(DACalDAViCalItem *)self loadLocalItemWithAccount:0];
      }

      else
      {
        v21 = DALoggingwithCategory();
        v22 = *(MEMORY[0x277CF3AF0] + 3);
        if (os_log_type_enabled(v21, v22))
        {
          v32 = [v38[5] changedKeys];
          v30 = [(DACalDAViCalItemBackingModel *)self->_rem_reminderItem daCalendarItemUniqueIdentifier];
          v31 = [(DACalDAViCalItemBackingModel *)self->_rem_reminderItem objectID];
          v23 = [(DACalDAViCalItem *)self serverID];
          v24 = [v13 localizedDescription];
          v25 = [MEMORY[0x277CCACC8] callStackSymbols];
          *buf = 138544642;
          v45 = v32;
          v46 = 2114;
          v47 = v30;
          v48 = 2114;
          v49 = v31;
          v50 = 2112;
          v51 = v23;
          v52 = 2114;
          v53 = v24;
          v54 = 2112;
          v29 = v25;
          v55 = v25;
          _os_log_impl(&dword_242490000, v21, v22, "DACalDAViCalItem: ERROR: Failed to set REMReminder properties {changedKeys=%{public}@, UID=%{public}@, reminderID=%{public}@, serverID=%@, error=%{public}@, stack=%@}", buf, 0x3Eu);
        }
      }

      if (a4)
      {
        v26 = v13;
        *a4 = v13;
      }

      _Block_object_dispose(&v37, 8);
      goto LABEL_19;
    }

    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  v10 = DALoggingwithCategory();
  v18 = *(MEMORY[0x277CF3AF0] + 4);
  if (os_log_type_enabled(v10, v18))
  {
    v19 = [(DACalDAViCalItem *)self serverID];
    v20 = [MEMORY[0x277CCACC8] callStackSymbols];
    *buf = 138413058;
    v45 = v19;
    v46 = 2112;
    v47 = self;
    v48 = 2114;
    v49 = v13;
    v50 = 2112;
    v51 = v20;
    _os_log_impl(&dword_242490000, v10, v18, "DACalDAViCalItem: Couldn't find an REMReminder to set property {serverID=%@, iCalItem=%@, error=%{public}@, stack=%@}.", buf, 0x2Au);
  }

  v12 = 0;
LABEL_19:

  v27 = *MEMORY[0x277D85DE8];
  return v12;
}

void __61__DACalDAViCalItem_rem_setReminderPropertiesWithBlock_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  (*(*(a1 + 32) + 16))();
}

- (void)populateDataPayloadWithReminder:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DACalDAViCalItem.m" lineNumber:1159 description:{@"Invalid parameter not satisfying: %@", @"reminder"}];
}

- (void)populateDataPayloadWithReminder:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"DACalDAViCalItem.m" lineNumber:1160 description:{@"Invalid parameter not satisfying: %@", @"_rem_reminderItem"}];

  *v0 = *v1;
}

- (void)populateDataPayloadWithReminder:(uint64_t)a1 .cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DACalDAViCalItem.m" lineNumber:1161 description:@"_rem_reminderItem.objectID should not be nil when trying to populate dataPayload"];
}

- (void)populateDataPayloadWithReminder:.cold.4()
{
  OUTLINED_FUNCTION_0();
  v6 = [MEMORY[0x277CCA890] currentHandler];
  v4 = [*v3 objectID];
  v5 = [v2 objectID];
  [v6 handleFailureInMethod:v1 object:v0 file:@"DACalDAViCalItem.m" lineNumber:1162 description:{@"Given reminder does not match with this item's _rem_reminderItem.objectID (itemID: %@, reminderID: %@)", v4, v5}];
}

@end