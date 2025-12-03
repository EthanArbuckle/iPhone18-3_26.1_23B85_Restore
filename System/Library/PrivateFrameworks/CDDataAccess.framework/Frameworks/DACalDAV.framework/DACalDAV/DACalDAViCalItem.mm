@interface DACalDAViCalItem
+ (id)filenameWithUniqueIdentifier:(id)identifier;
+ (id)rem_store;
- (BOOL)loadLocalItemWithAccount:(id)account;
- (BOOL)rem_setReminderPropertiesWithBlock:(id)block error:(id *)error;
- (DACalDAViCalItem)initWithREMReminder:(id)reminder inContainer:(id)container;
- (DACalDAViCalItem)initWithURL:(id)l eTag:(id)tag dataPayload:(id)payload inContainerWithURL:(id)rL withAccountInfoProvider:(id)provider;
- (NSData)dataPayload;
- (NSMutableDictionary)originatingChangeItems;
- (NSString)description;
- (NSString)filename;
- (NSString)scheduleTag;
- (NSString)syncKey;
- (NSString)uniqueIdentifier;
- (id)saveWithLocalObject:(void *)object toContainer:(void *)container shouldMergeProperties:(BOOL)properties outMergeDidChooseLocalProperties:(BOOL *)localProperties account:(id)account calendar:(id)calendar batchSaveRequest:(id)request;
- (void)_fixUpCalendarForServer:(id)server;
- (void)populateDataPayloadWithReminder:(id)reminder;
- (void)setDataPayload:(id)payload;
- (void)setOriginatingChangeItems:(id)items;
- (void)setRem_LocalItem:(id)item;
- (void)setScheduleTag:(id)tag;
- (void)setSyncKey:(id)key;
@end

@implementation DACalDAViCalItem

- (DACalDAViCalItem)initWithURL:(id)l eTag:(id)tag dataPayload:(id)payload inContainerWithURL:(id)rL withAccountInfoProvider:(id)provider
{
  lCopy = l;
  tagCopy = tag;
  payloadCopy = payload;
  v16.receiver = self;
  v16.super_class = DACalDAViCalItem;
  v13 = [(DACalDAViCalItem *)&v16 init];
  v14 = v13;
  if (v13)
  {
    [(DACalDAViCalItem *)v13 setServerID:lCopy];
    [(DACalDAViCalItem *)v14 setSyncKey:tagCopy];
    [(DACalDAViCalItem *)v14 setDataPayload:payloadCopy];
  }

  return v14;
}

- (DACalDAViCalItem)initWithREMReminder:(id)reminder inContainer:(id)container
{
  reminderCopy = reminder;
  containerCopy = container;
  v14.receiver = self;
  v14.super_class = DACalDAViCalItem;
  v8 = [(DACalDAViCalItem *)&v14 init];
  if (v8)
  {
    v9 = [[DACalDAVREMReminderProxy alloc] initWithReminder:reminderCopy];
    [(DACalDAViCalItem *)v8 setRem_LocalItem:v9];
    externalIdentifier = [reminderCopy externalIdentifier];
    v11 = externalIdentifier;
    if (externalIdentifier)
    {
      v12 = [externalIdentifier da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:containerCopy];
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
  serverID = [(DACalDAViCalItem *)self serverID];
  v6 = [v3 stringWithFormat:@"%@ - (path: %@)", v4, serverID];

  return v6;
}

- (NSString)uniqueIdentifier
{
  v20 = *MEMORY[0x277D85DE8];
  rem_reminderItem = self->_rem_reminderItem;
  if (rem_reminderItem)
  {
    daCalendarItemUniqueIdentifier = [(DACalDAViCalItemBackingModel *)rem_reminderItem daCalendarItemUniqueIdentifier];
    if (daCalendarItemUniqueIdentifier)
    {
      goto LABEL_10;
    }

    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(v5, *(MEMORY[0x277CF3AF0] + 4)))
    {
      objectID = [(DACalDAViCalItemBackingModel *)self->_rem_reminderItem objectID];
      callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
      *buf = 138543618;
      selfCopy = objectID;
      v18 = 2112;
      v19 = callStackSymbols;
      _os_log_impl(&dword_242490000, v5, v6, "DACalDAViCalItem: LOOKATME: We should have set the reminder GUID upfront to batch with other properties changes in [MobileCalDAVCalendar _createActionsForItems:withActions:...] when we discover it, and not doing this ad-hoc lazily which is bad in performance. Review if we have a missed case. {reminderID: %{public}@, callstack: %@}", buf, 0x16u);
    }

    da_newGUID = [MEMORY[0x277CCACA8] da_newGUID];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __36__DACalDAViCalItem_uniqueIdentifier__block_invoke;
    v14[3] = &unk_278D4F690;
    daCalendarItemUniqueIdentifier = da_newGUID;
    v15 = daCalendarItemUniqueIdentifier;
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
      selfCopy = self;
      v18 = 2112;
      v19 = 0;
      _os_log_impl(&dword_242490000, v10, v11, "DACalDAViCalItem: LOOKATME: Trying to get uniqueIdentifier from a DAViCalItem with neither reminder/cal DB item {iCalItem: %@, stack: %@}", buf, 0x16u);
    }

    daCalendarItemUniqueIdentifier = 0;
  }

LABEL_10:
  v12 = *MEMORY[0x277D85DE8];

  return daCalendarItemUniqueIdentifier;
}

- (NSString)filename
{
  serverID = [(DACalDAViCalItem *)self serverID];

  if (serverID)
  {
    serverID2 = [(DACalDAViCalItem *)self serverID];
    absoluteString = [serverID2 absoluteString];
    lastPathComponent = [absoluteString lastPathComponent];
  }

  else
  {
    if (!self->_rem_reminderItem)
    {
      [(DACalDAViCalItem *)self loadLocalItemWithAccount:0];
    }

    serverID2 = [(DACalDAViCalItem *)self uniqueIdentifier];
    lastPathComponent = [DACalDAViCalItem filenameWithUniqueIdentifier:serverID2];
  }

  return lastPathComponent;
}

+ (id)filenameWithUniqueIdentifier:(id)identifier
{
  v3 = REMGetRealUIDFromRecurrenceUID();
  v4 = [v3 stringByAppendingPathExtension:@"ics"];
  v5 = [v4 stringByAddingPercentEscapesUsingEncoding:4];
  v6 = [v5 stringByReplacingOccurrencesOfString:@"/" withString:@"%2F"];

  return v6;
}

- (void)setSyncKey:(id)key
{
  keyCopy = key;
  syncKey = self->_syncKey;
  p_syncKey = &self->_syncKey;
  if (syncKey != keyCopy)
  {
    v8 = keyCopy;
    objc_storeStrong(p_syncKey, key);
    keyCopy = v8;
  }
}

- (NSString)syncKey
{
  externalModificationTag = self->_syncKey;
  if (self->_rem_reminderItem)
  {
    v4 = externalModificationTag == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    externalModificationTag = [(DACalDAViCalItemBackingModel *)self->_rem_reminderItem externalModificationTag];
  }

  return externalModificationTag;
}

- (NSString)scheduleTag
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 4);
  if (os_log_type_enabled(v3, v4))
  {
    objectID = [(DACalDAViCalItemBackingModel *)self->_rem_reminderItem objectID];
    v10 = 138543618;
    v11 = objectID;
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

- (void)setScheduleTag:(id)tag
{
  v18 = *MEMORY[0x277D85DE8];
  tagCopy = tag;
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v6, v7))
  {
    objectID = [(DACalDAViCalItemBackingModel *)self->_rem_reminderItem objectID];
    v12 = 138543874;
    v13 = objectID;
    v14 = 2112;
    v15 = tagCopy;
    v16 = 2112;
    v17 = 0;
    _os_log_impl(&dword_242490000, v6, v7, "DACalDAViCalItem: Do we really need -setScheduleTag for reminders? {remItem: %{public}@, scheduleTag: %@, stack: %@}", &v12, 0x20u);
  }

  scheduleTag = self->_scheduleTag;
  p_scheduleTag = &self->_scheduleTag;
  if (scheduleTag != tagCopy)
  {
    objc_storeStrong(p_scheduleTag, tag);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setOriginatingChangeItems:(id)items
{
  if (self->_originatingChangeItems != items)
  {
    v5 = [items mutableCopy];
    originatingChangeItems = self->_originatingChangeItems;
    self->_originatingChangeItems = v5;

    MEMORY[0x2821F96F8]();
  }
}

- (NSMutableDictionary)originatingChangeItems
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_originatingChangeItems)
  {
    v3 = objc_opt_new();
    originatingChangeItems = selfCopy->_originatingChangeItems;
    selfCopy->_originatingChangeItems = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = selfCopy->_originatingChangeItems;

  return v5;
}

+ (id)rem_store
{
  v13 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CF3AA8] = [MEMORY[0x277CF3AA8] sharedManager];
  rem_storeProvider = [mEMORY[0x277CF3AA8] rem_storeProvider];
  rem_storeForDataAccess = [rem_storeProvider rem_storeForDataAccess];

  if (!rem_storeForDataAccess)
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

  return rem_storeForDataAccess;
}

- (id)saveWithLocalObject:(void *)object toContainer:(void *)container shouldMergeProperties:(BOOL)properties outMergeDidChooseLocalProperties:(BOOL *)localProperties account:(id)account calendar:(id)calendar batchSaveRequest:(id)request
{
  propertiesCopy = properties;
  v79 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  calendarCopy = calendar;
  requestCopy = request;
  v12 = objc_alloc(MEMORY[0x277D7F108]);
  dataPayload = [(DACalDAViCalItem *)self dataPayload];
  v73 = 0;
  v14 = [v12 initWithData:dataPayload options:0 error:&v73];
  v15 = v73;

  selfCopy = self;
  [(DACalDAViCalItem *)self setDocument:v14];
  if (v14)
  {
    v55 = accountCopy;
    sync = [MEMORY[0x277D447F0] sync];
    v17 = os_signpost_id_generate(sync);
    v18 = sync;
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
    calendar = [v14 calendar];
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    obj = [calendar componentKeys];
    v21 = [obj countByEnumeratingWithState:&v69 objects:v74 count:16];
    v60 = calendar;
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

          v27 = [calendar componentForKey:*(*(&v69 + 1) + 8 * v26)];
          if (v27)
          {
            v28 = objc_autoreleasePoolPush();
            v29 = DALoggingwithCategory();
            if (os_log_type_enabled(v29, v24))
            {
              v30 = [v27 description];
              *buf = 138412290;
              containerCopy2 = v30;
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
                containerCopy2 = v32;
                _os_log_impl(&dword_242490000, v31, v24, "The task %{public}@ will be synced. ICSTodos are synced by default.", buf, 0xCu);
              }

              v33 = v27;
              containerCopy = container;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v35 = [(DACalDAViCalItem *)selfCopy _addOrModifyTask:v33 inICSCalendar:calendar withList:containerCopy shouldMergeProperties:propertiesCopy outMergeDidChooseLocalProperties:localProperties inMobileCalendar:calendarCopy batchSaveRequest:requestCopy];
                if (v35)
                {
                  v36 = v35;

                  serverID = [(DACalDAViCalItem *)selfCopy serverID];
                  v38 = [v33 uid];
                  [calendarCopy setURL:serverID forResourceWithUUID:v38 reminderChangeItem:v36];

                  calendar = v60;
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
                  containerCopy2 = container;
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
                containerCopy2 = v42;
                _os_log_impl(&dword_242490000, v36, v25, "Error adding or modifying todo with uid %{public}@", buf, 0xCu);

                calendar = v60;
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
    accountCopy = v55;
    v15 = v53;
  }

  else
  {
    v43 = DALoggingwithCategory();
    v44 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v43, v44))
    {
      dataPayload2 = [(DACalDAViCalItem *)self dataPayload];
      *buf = 138543618;
      containerCopy2 = v15;
      v77 = 2112;
      v78 = dataPayload2;
      _os_log_impl(&dword_242490000, v43, v44, "Could not create an ICSDocument from the data from the server: %{public}@. Data: %@", buf, 0x16u);
    }

    v46 = 0;
  }

  v48 = *MEMORY[0x277D85DE8];

  return v46;
}

- (void)_fixUpCalendarForServer:(id)server
{
  v53 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  v5 = mobileCalDAVProdID();
  [serverCopy setProdid:v5];

  if ([(DACalDAViCalItem *)self isMigrate])
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = [serverCopy componentKeys];
    v31 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
    if (v31)
    {
      v29 = *v46;
      v30 = serverCopy;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v46 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v45 + 1) + 8 * i);
          v8 = [serverCopy componentForKey:v7];
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          attendee = [v8 attendee];
          v10 = [attendee countByEnumeratingWithState:&v41 objects:v51 count:16];
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
                  objc_enumerationMutation(attendee);
                }

                [*(*(&v41 + 1) + 8 * j) setScheduleagent:1];
              }

              v11 = [attendee countByEnumeratingWithState:&v41 objects:v51 count:16];
            }

            while (v11);
          }

          v32 = v8;
          organizer = [v8 organizer];
          [organizer setScheduleagent:1];

          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v15 = [serverCopy componentOccurrencesForKey:v7];
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
                attendee2 = [v20 attendee];
                v22 = [attendee2 countByEnumeratingWithState:&v33 objects:v49 count:16];
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
                        objc_enumerationMutation(attendee2);
                      }

                      [*(*(&v33 + 1) + 8 * m) setScheduleagent:1];
                    }

                    v23 = [attendee2 countByEnumeratingWithState:&v33 objects:v49 count:16];
                  }

                  while (v23);
                }

                organizer2 = [v20 organizer];
                [organizer2 setScheduleagent:1];
              }

              v17 = [v15 countByEnumeratingWithState:&v37 objects:v50 count:16];
            }

            while (v17);
          }

          serverCopy = v30;
        }

        v31 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
      }

      while (v31);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)populateDataPayloadWithReminder:(id)reminder
{
  v24[1] = *MEMORY[0x277D85DE8];
  reminderCopy = reminder;
  v6 = objc_autoreleasePoolPush();
  if (!reminderCopy)
  {
    [(DACalDAViCalItem *)a2 populateDataPayloadWithReminder:?];
  }

  rem_reminderItem = self->_rem_reminderItem;
  if (!rem_reminderItem)
  {
    [DACalDAViCalItem populateDataPayloadWithReminder:];
    rem_reminderItem = *v23;
  }

  objectID = [(DACalDAViCalItemBackingModel *)rem_reminderItem objectID];

  if (!objectID)
  {
    [(DACalDAViCalItem *)a2 populateDataPayloadWithReminder:?];
  }

  objectID2 = [(DACalDAViCalItemBackingModel *)self->_rem_reminderItem objectID];
  objectID3 = [reminderCopy objectID];
  v11 = [objectID2 isEqual:objectID3];

  if ((v11 & 1) == 0)
  {
    [DACalDAViCalItem populateDataPayloadWithReminder:];
  }

  v12 = MEMORY[0x277D44620];
  v24[0] = reminderCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v14 = [v12 exportICSCalendarFromReminders:v13];

  v15 = DALoggingwithCategory();
  v16 = v15;
  if (v14)
  {
    v17 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v15, v17))
    {
      objectID4 = [reminderCopy objectID];
      *v23 = 138543362;
      *&v23[4] = objectID4;
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
      objectID5 = [reminderCopy objectID];
      *v23 = 138543362;
      *&v23[4] = objectID5;
      _os_log_impl(&dword_242490000, v16, v20, "DACalDAViCalItem: ERROR: Couldn't create an ICS calendar for the reminder {reminderID: %{public}@}", v23, 0xCu);
    }

    v19 = 0;
  }

  [(DACalDAViCalItem *)self setDataPayload:v19];
  objc_autoreleasePoolPop(v6);

  v22 = *MEMORY[0x277D85DE8];
}

- (void)setDataPayload:(id)payload
{
  payloadCopy = payload;
  dataPayload = self->_dataPayload;
  p_dataPayload = &self->_dataPayload;
  if (dataPayload != payloadCopy)
  {
    v8 = payloadCopy;
    objc_storeStrong(p_dataPayload, payload);
    payloadCopy = v8;
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
      objectID = [(DACalDAViCalItemBackingModel *)self->_rem_reminderItem objectID];
      *buf = 138543618;
      v20 = objectID;
      v21 = 2112;
      v22 = 0;
      _os_log_impl(&dword_242490000, v5, v7, "DACalDAViCalItem: LOOKATME: We should avoid lazy populating dataPayload because that means we are probably fetching reminders one-by-one in a loop while they could have been fetching them in a batch instead for better performance {reminder: %{public}@, stack: %@}", buf, 0x16u);
    }

    rem_store = [objc_opt_class() rem_store];
    objectID2 = [(DACalDAViCalItemBackingModel *)self->_rem_reminderItem objectID];
    v18 = 0;
    v11 = [rem_store fetchReminderWithObjectID:objectID2 error:&v18];
    v12 = v18;

    if (!v11 || v12)
    {
      v13 = DALoggingwithCategory();
      v14 = *(v6 + 3);
      if (os_log_type_enabled(v13, v14))
      {
        objectID3 = [(DACalDAViCalItemBackingModel *)self->_rem_reminderItem objectID];
        *buf = 138543362;
        v20 = objectID3;
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

- (void)setRem_LocalItem:(id)item
{
  itemCopy = item;
  p_rem_reminderItem = &self->_rem_reminderItem;
  if (self->_rem_reminderItem != itemCopy)
  {
    v8 = itemCopy;
    objc_storeStrong(p_rem_reminderItem, item);
    objectID = [(DACalDAViCalItemBackingModel *)self->_rem_reminderItem objectID];
    [(DACalDAViCalItem *)self setRem_clientID:objectID];

    itemCopy = v8;
  }

  MEMORY[0x2821F96F8](p_rem_reminderItem, itemCopy);
}

- (BOOL)loadLocalItemWithAccount:(id)account
{
  v33 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v5 = MEMORY[0x277CF3AF0];
  if (!self->_rem_clientID)
  {
    v6 = DALoggingwithCategory();
    v7 = *(v5 + 4);
    if (os_log_type_enabled(v6, v7))
    {
      rem_clientID = self->_rem_clientID;
      accountID = [accountCopy accountID];
      *buf = 138413058;
      selfCopy = self;
      v27 = 2114;
      selfCopy2 = rem_clientID;
      v29 = 2112;
      v30 = accountID;
      v31 = 2112;
      v32 = 0;
      _os_log_impl(&dword_242490000, v6, v7, "DACalDAViCalItem: LOOKATME: We have a DACalDAViCalItem without either a backing REM or CalDB item: {iCalItem: %@, rem_clientID: %{public}@, account: %@} call stack: %@", buf, 0x2Au);
    }
  }

  rem_store = [objc_opt_class() rem_store];
  v11 = rem_store;
  v12 = self->_rem_clientID;
  if (v12)
  {
    v24 = 0;
    v13 = [rem_store fetchReminderWithObjectID:v12 error:&v24];
    v14 = v24;
    v15 = DALoggingwithCategory();
    v16 = *(v5 + 6);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = MEMORY[0x277CCABB0];
      debugReminderFetchCount = [(DACalDAViCalItem *)self debugReminderFetchCount];
      [(DACalDAViCalItem *)self setDebugReminderFetchCount:debugReminderFetchCount + 1];
      v19 = [v17 numberWithUnsignedInteger:debugReminderFetchCount + 1];
      *buf = 138543618;
      selfCopy = v19;
      v27 = 2048;
      selfCopy2 = self;
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

- (BOOL)rem_setReminderPropertiesWithBlock:(id)block error:(id *)error
{
  v56 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  rem_store = [objc_opt_class() rem_store];
  rem_reminderItem = self->_rem_reminderItem;
  if (rem_reminderItem)
  {
    objectID = [(DACalDAViCalItemBackingModel *)rem_reminderItem objectID];
    v43 = 0;
    v10 = [rem_store fetchReminderWithObjectID:objectID error:&v43];
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
      v35 = blockCopy;
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
        objectID2 = [(DACalDAViCalItemBackingModel *)self->_rem_reminderItem objectID];
        rem_clientID = self->_rem_clientID;
        self->_rem_clientID = objectID2;

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
          changedKeys = [v38[5] changedKeys];
          daCalendarItemUniqueIdentifier = [(DACalDAViCalItemBackingModel *)self->_rem_reminderItem daCalendarItemUniqueIdentifier];
          objectID3 = [(DACalDAViCalItemBackingModel *)self->_rem_reminderItem objectID];
          serverID = [(DACalDAViCalItem *)self serverID];
          localizedDescription = [v13 localizedDescription];
          callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
          *buf = 138544642;
          v45 = changedKeys;
          v46 = 2114;
          selfCopy = daCalendarItemUniqueIdentifier;
          v48 = 2114;
          v49 = objectID3;
          v50 = 2112;
          v51 = serverID;
          v52 = 2114;
          v53 = localizedDescription;
          v54 = 2112;
          v29 = callStackSymbols;
          v55 = callStackSymbols;
          _os_log_impl(&dword_242490000, v21, v22, "DACalDAViCalItem: ERROR: Failed to set REMReminder properties {changedKeys=%{public}@, UID=%{public}@, reminderID=%{public}@, serverID=%@, error=%{public}@, stack=%@}", buf, 0x3Eu);
        }
      }

      if (error)
      {
        v26 = v13;
        *error = v13;
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
    serverID2 = [(DACalDAViCalItem *)self serverID];
    callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
    *buf = 138413058;
    v45 = serverID2;
    v46 = 2112;
    selfCopy = self;
    v48 = 2114;
    v49 = v13;
    v50 = 2112;
    v51 = callStackSymbols2;
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