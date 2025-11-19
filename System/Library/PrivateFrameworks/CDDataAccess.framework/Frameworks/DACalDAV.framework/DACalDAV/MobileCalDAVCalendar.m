@interface MobileCalDAVCalendar
+ (id)_rem_calURLToREMObjectIDCache;
+ (id)_rem_changedListsOfChangeType:(int64_t)a3 withChangeTrackingHelper:(id)a4 inPrincipal:(id)a5;
+ (id)calendarWithREMList:(id)a3 principal:(id)a4;
+ (id)rem_addedCalendarsWithChangeTrackingHelper:(id)a3 inPrincipal:(id)a4;
+ (id)rem_cachedListObjectIDForURLString:(id)a3;
+ (id)rem_deletedCalendarsWithChangeTrackingHelper:(id)a3 inPrincipal:(id)a4;
+ (id)rem_modifiedCalendarsWithChangeTrackingHelper:(id)a3 inPrincipal:(id)a4;
+ (void)rem_cacheListObjectID:(id)a3 forCalendarURLString:(id)a4;
+ (void)rem_clearListObjectIDCache;
+ (void)rem_removeListObjectIDCacheEntryForCalendarURLString:(id)a3;
- (BOOL)_addChangedReminder:(id)a3 toArrayIfNeeded:(id)a4;
- (BOOL)_removeCalendarItemWithURL:(id)a3;
- (BOOL)canBePublished;
- (BOOL)canBeShared;
- (BOOL)deleteResourcesAtURLs:(id)a3;
- (BOOL)hasCalendarUserAddressEquivalentToURL:(id)a3;
- (BOOL)hasEvents;
- (BOOL)isEditable;
- (BOOL)isEventContainer;
- (BOOL)isHidden;
- (BOOL)isRenameable;
- (BOOL)isTaskContainer;
- (BOOL)rem_setListPropertiesWithBlock:(id)a3 error:(id *)a4;
- (BOOL)setEtag:(id)a3 forItemAtURL:(id)a4;
- (BOOL)setEtag:(id)a3 forItemAtURL:(id)a4 reminderChangeItem:(id)a5;
- (BOOL)setScheduleTag:(id)a3 forItemAtURL:(id)a4;
- (BOOL)setURL:(id)a3 forResourceWithUUID:(id)a4;
- (BOOL)setURL:(id)a3 forResourceWithUUID:(id)a4 reminderChangeItem:(id)a5;
- (BOOL)updateResourcesFromServer:(id)a3;
- (MobileCalDAVCalendar)initWithCalendarURL:(id)a3 list:(id)a4 principal:(id)a5 title:(id)a6;
- (NSArray)shareeActions;
- (NSDictionary)bulkRequests;
- (NSSet)allItemURLs;
- (NSSet)preferredCalendarUserAddresses;
- (NSSet)sharees;
- (NSString)accountID;
- (NSString)color;
- (NSString)ctag;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)displayColor;
- (NSString)ownerDisplayName;
- (NSString)ownerEmailAddress;
- (NSString)ownerPhoneNumber;
- (NSString)pushKey;
- (NSString)symbolicColorName;
- (NSString)syncToken;
- (NSString)title;
- (NSURL)calendarURL;
- (NSURL)owner;
- (REMAccount)rem_account;
- (id)_createActionsForItems:(id)a3 withAction:(int)a4 backingReminders:(id)a5 alreadySentItems:(id)a6 createServerIDs:(BOOL)a7 shouldSave:(BOOL *)a8;
- (id)_preferredAddress;
- (id)_rem_copyReminderWithExternalID:(id)a3;
- (id)_rem_copyReminderWithUniqueIdentifier:(id)a3 inList:(id)a4;
- (id)calendarUserAddresses;
- (id)copyDeletedItems;
- (id)etagsForItemURLs:(id)a3;
- (id)rem_getCalCalendar;
- (id)rem_initCalCalendarWithTitle:(id)a3;
- (id)rem_saveRequest;
- (id)rem_store;
- (int)order;
- (int)sharingStatus;
- (void)_addShareeWithObjectID:(id)a3 toDictionaryIfNeeded:(id)a4;
- (void)_collectShareeActions;
- (void)_prepareForcedRefreshSyncActionsForTruncatedHistoryWithTrackingState:(id)a3 completionBlock:(id)a4;
- (void)_setSupportsEvents:(BOOL)a3 supportsTodos:(BOOL)a4;
- (void)clearEventChanges;
- (void)copyAddedItemsWithBatchHandler:(id)a3;
- (void)copyAllItemsWithBatchHandler:(id)a3;
- (void)copyModifiedItemsWithBatchHandler:(id)a3;
- (void)deleteAction:(id)a3 completedWithError:(id)a4;
- (void)deleteCalendar;
- (void)flushCaches;
- (void)prepareMergeSyncActionsWithCompletionBlock:(id)a3;
- (void)prepareSyncActionsWithCompletionBlock:(id)a3;
- (void)putAction:(id)a3 completedWithError:(id)a4;
- (void)rem_invalidateCalCalendarWithReload:(BOOL)a3;
- (void)setBulkRequests:(id)a3;
- (void)setCalendarURL:(id)a3;
- (void)setCanBePublished:(BOOL)a3;
- (void)setCanBeShared:(BOOL)a3;
- (void)setColor:(id)a3;
- (void)setCtag:(id)a3;
- (void)setGuid:(id)a3;
- (void)setIsDirty:(BOOL)a3;
- (void)setIsEditable:(BOOL)a3;
- (void)setIsEventContainer:(BOOL)a3;
- (void)setIsFamilyCalendar:(BOOL)a3;
- (void)setIsMarkedImmutableSharees:(BOOL)a3;
- (void)setIsMarkedUndeletable:(BOOL)a3;
- (void)setIsPublished:(BOOL)a3;
- (void)setIsRenameable:(BOOL)a3;
- (void)setIsSubscribed:(BOOL)a3;
- (void)setIsTaskContainer:(BOOL)a3;
- (void)setNotes:(id)a3;
- (void)setOrder:(int)a3;
- (void)setOwner:(id)a3;
- (void)setOwnerDisplayName:(id)a3;
- (void)setPreferredCalendarUserAddresses:(id)a3;
- (void)setPublishURL:(id)a3;
- (void)setPushKey:(id)a3;
- (void)setSharees:(id)a3;
- (void)setSharingStatus:(int)a3;
- (void)setSymbolicColorName:(id)a3;
- (void)setSyncToken:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation MobileCalDAVCalendar

+ (id)calendarWithREMList:(id)a3 principal:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 && [v5 sharingStatus] != 3)
  {
    v8 = [v5 name];
    v9 = [v5 externalIdentifier];
    v10 = [v6 calendarHomeURL];
    v11 = [v9 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v10];

    v12 = [v5 daIsNotificationsCollection];
    v13 = off_278D4EE18;
    if (!v12)
    {
      v13 = off_278D4EE08;
    }

    v7 = [objc_alloc(*v13) initWithCalendarURL:v11 list:v5 principal:v6 title:v8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (MobileCalDAVCalendar)initWithCalendarURL:(id)a3 list:(id)a4 principal:(id)a5 title:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v32.receiver = self;
  v32.super_class = MobileCalDAVCalendar;
  v14 = [(MobileCalDAVCalendar *)&v32 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_14;
  }

  [(MobileCalDAVCalendar *)v14 setPrincipal:v12];
  [(MobileCalDAVCalendar *)v15 setIsEnabled:1];
  [(MobileCalDAVCalendar *)v15 setIsDirty:0];
  v16 = [(MobileCalDAVCalendar *)v15 principal];
  v17 = [v16 calendarHomeURL];
  v18 = [v10 da_leastInfoStringRepresentationRelativeToParentURL:v17];
  calendarURLString = v15->_calendarURLString;
  v15->_calendarURLString = v18;

  if (v11)
  {
    v20 = v11;
  }

  else
  {
    v22 = [(MobileCalDAVCalendar *)v15 rem_getCalCalendar];

    if (v22)
    {
      goto LABEL_6;
    }

    v20 = [(MobileCalDAVCalendar *)v15 rem_initCalCalendarWithTitle:v13];
  }

  rem_calCalendar = v15->_rem_calCalendar;
  v15->_rem_calCalendar = v20;

LABEL_6:
  v23 = [(MobileCalDAVCalendar *)v15 rem_calCalendar];

  if (v23)
  {
    [(MobileCalDAVCalendar *)v15 _rem_updateCalendarOwnerInfo];
    v24 = [v11 daExternalIdentificationTag];
    if (v24)
    {
      v25 = v24;
      objc_storeStrong(&v15->_guid, v24);
    }

    else
    {
      v25 = [MEMORY[0x277CCACA8] da_newGUID];
      [(MobileCalDAVCalendar *)v15 setGuid:v25];
    }
  }

  v26 = [(MobileCalDAVCalendar *)v15 calendarURLString];

  if (v26)
  {
    v27 = [(MobileCalDAVCalendar *)v15 rem_calCalendar];
    v28 = [v27 objectID];
    v29 = [(MobileCalDAVCalendar *)v15 calendarURLString];
    [MobileCalDAVCalendar rem_cacheListObjectID:v28 forCalendarURLString:v29];
  }

  v30 = objc_opt_new();
  [(MobileCalDAVCalendar *)v15 setURLToEtagMap:v30];

LABEL_14:
  return v15;
}

+ (id)_rem_calURLToREMObjectIDCache
{
  if (_rem_calURLToREMObjectIDCache_onceToken != -1)
  {
    +[MobileCalDAVCalendar _rem_calURLToREMObjectIDCache];
  }

  v3 = _rem_calURLToREMObjectIDCache_sCalURLToREMObjectIDCache;

  return v3;
}

uint64_t __53__MobileCalDAVCalendar__rem_calURLToREMObjectIDCache__block_invoke()
{
  _rem_calURLToREMObjectIDCache_sCalURLToREMObjectIDCache = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (void)rem_cacheListObjectID:(id)a3 forCalendarURLString:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [a1 _rem_calURLToREMObjectIDCache];
    [v8 setObject:v7 forKeyedSubscript:v6];
  }
}

+ (void)rem_removeListObjectIDCacheEntryForCalendarURLString:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [a1 _rem_calURLToREMObjectIDCache];
    [v5 removeObjectForKey:v4];
  }
}

+ (id)rem_cachedListObjectIDForURLString:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [a1 _rem_calURLToREMObjectIDCache];
    v6 = [v5 objectForKeyedSubscript:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)rem_clearListObjectIDCache
{
  v2 = [a1 _rem_calURLToREMObjectIDCache];
  [v2 removeAllObjects];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = MobileCalDAVCalendar;
  v4 = [(MobileCalDAVCalendar *)&v12 description];
  v5 = [(MobileCalDAVCalendar *)self guid];
  v6 = [(MobileCalDAVCalendar *)self rem_calCalendar];
  v7 = [v6 objectID];
  v8 = v7;
  v9 = @"(not loaded)";
  if (v7)
  {
    v9 = v7;
  }

  v10 = [v3 stringWithFormat:@"%@ [%@] remObjectID=%@", v4, v5, v9];

  return v10;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = MobileCalDAVCalendar;
  v4 = [(MobileCalDAVCalendar *)&v11 description];
  v5 = [(MobileCalDAVCalendar *)self guid];
  v6 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v7 = [v6 objectID];
  v8 = [(MobileCalDAVCalendar *)self title];
  v9 = [v3 stringWithFormat:@"%@ [%@] remObjectID=%@ title=%@", v4, v5, v7, v8];

  return v9;
}

- (void)deleteCalendar
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v4 = DALoggingwithCategory();
  v5 = v4;
  if (v3)
  {
    v6 = MEMORY[0x277CF3AF0];
    v7 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v4, v7))
    {
      v8 = [(MobileCalDAVCalendar *)self guid];
      v9 = [(MobileCalDAVCalendar *)self calendarURLString];
      *buf = 138543618;
      v28 = v8;
      v29 = 2112;
      v30 = v9;
      _os_log_impl(&dword_242490000, v5, v7, "Deleting calendar with guid %{public}@ or extID %@", buf, 0x16u);
    }

    v5 = [(MobileCalDAVCalendar *)self rem_saveRequest];
    v10 = [v5 updateList:v3];
    [v10 removeFromParent];
    v26 = 0;
    [v5 saveSynchronouslyWithError:&v26];
    v11 = v26;
    v12 = DALoggingwithCategory();
    v13 = v12;
    if (v11)
    {
      v14 = *(v6 + 3);
      if (os_log_type_enabled(v12, v14))
      {
        v15 = [v3 objectID];
        v16 = [(MobileCalDAVCalendar *)self guid];
        v17 = [(MobileCalDAVCalendar *)self calendarURLString];
        v18 = [v11 localizedDescription];
        *buf = 138544130;
        v28 = v15;
        v29 = 2114;
        v30 = v16;
        v31 = 2112;
        v32 = v17;
        v33 = 2114;
        v34 = v18;
        _os_log_impl(&dword_242490000, v13, v14, "MobileCalDAVCalendar: ERROR: Failed to save delete of list {listID: %{public}@, guid: %{public}@, extID: %@, error: %{public}@}", buf, 0x2Au);
      }
    }

    else
    {
      v22 = *(v6 + 5);
      if (os_log_type_enabled(v12, v22))
      {
        v23 = [(MobileCalDAVCalendar *)self calendarURL];
        v24 = [v3 objectID];
        *buf = 138412546;
        v28 = v23;
        v29 = 2114;
        v30 = v24;
        _os_log_impl(&dword_242490000, v13, v22, "MobileCalDAVCalendar: SUCCESS: Deleted list of calendar URL: %@ {objectID=%{public}@}", buf, 0x16u);
      }

      [(MobileCalDAVCalendar *)self setRem_calCalendar:0];
    }
  }

  else
  {
    v19 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(v4, v19))
    {
      v20 = [(MobileCalDAVCalendar *)self guid];
      v21 = [(MobileCalDAVCalendar *)self calendarURLString];
      *buf = 138543618;
      v28 = v20;
      v29 = 2112;
      v30 = v21;
      _os_log_impl(&dword_242490000, v5, v19, "MobileCalDAVCalendar: Couldn't find the backing list of the calendar to delete {guid %{public}@, extID %@}.", buf, 0x16u);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)setIsDirty:(BOOL)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277CF3AF0] + 7);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = [(MobileCalDAVCalendar *)self title];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_242490000, v5, v6, "Marking calendar %@ as dirty.", &v9, 0xCu);
    }
  }

  self->_isDirty = a3;
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setGuid:(id)a3
{
  v5 = a3;
  v6 = [(MobileCalDAVCalendar *)self guid];
  v7 = v6;
  if (v6 == v5)
  {
  }

  else
  {
    v8 = [(MobileCalDAVCalendar *)self guid];
    v9 = [v8 isEqualToString:v5];

    if ((v9 & 1) == 0)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __32__MobileCalDAVCalendar_setGuid___block_invoke;
      v10[3] = &unk_278D4F5E0;
      v11 = v5;
      [(MobileCalDAVCalendar *)self rem_setListPropertiesWithBlock:v10 error:0];
      objc_storeStrong(&self->_guid, a3);
      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }
  }
}

- (NSURL)calendarURL
{
  v3 = [(MobileCalDAVCalendar *)self calendarURLString];
  v4 = [(MobileCalDAVCalendar *)self principal];
  v5 = [v4 calendarHomeURL];
  v6 = [v3 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v5];

  return v6;
}

- (void)setCalendarURL:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MobileCalDAVCalendar *)self calendarURLString];
  v6 = [(MobileCalDAVCalendar *)self principal];
  v7 = [v6 calendarHomeURL];
  v8 = [v4 da_leastInfoStringRepresentationRelativeToParentURL:v7];

  v9 = [v8 da_appendSlashIfNeeded];

  if (v5 != v9 && ([v5 isEqualToString:v9] & 1) == 0)
  {
    v10 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
    v11 = DALoggingwithCategory();
    v12 = MEMORY[0x277CF3AF0];
    v13 = *(MEMORY[0x277CF3AF0] + 5);
    if (os_log_type_enabled(v11, v13))
    {
      v14 = [(MobileCalDAVCalendar *)self guid];
      v15 = [v10 objectID];
      *buf = 138543618;
      v24 = v14;
      v25 = 2114;
      v26 = v15;
      _os_log_impl(&dword_242490000, v11, v13, "MobileCalDAVCalendar: Set URL on calendar (guid=%{public}@, listID=%{public}@)", buf, 0x16u);
    }

    if (v10)
    {
      v16 = [(MobileCalDAVCalendar *)self calendarURLString];
      [MobileCalDAVCalendar rem_removeListObjectIDCacheEntryForCalendarURLString:v16];

      [(MobileCalDAVCalendar *)self setCalendarURLString:v9];
      v17 = [v10 objectID];
      v18 = [(MobileCalDAVCalendar *)self calendarURLString];
      [MobileCalDAVCalendar rem_cacheListObjectID:v17 forCalendarURLString:v18];

      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __39__MobileCalDAVCalendar_setCalendarURL___block_invoke;
      v22[3] = &unk_278D4F5E0;
      v22[4] = self;
      [(MobileCalDAVCalendar *)self rem_setListPropertiesWithBlock:v22 error:0];
      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }

    else
    {
      v19 = DALoggingwithCategory();
      v20 = *(v12 + 4);
      if (os_log_type_enabled(v19, v20))
      {
        *buf = 138543362;
        v24 = self;
        _os_log_impl(&dword_242490000, v19, v20, "MobileCalDAVCalendar: Could not find the backing REM list to set a URL on calendar (calendar=%{public}@)", buf, 0xCu);
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __39__MobileCalDAVCalendar_setCalendarURL___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 calendarURLString];
  [v3 setExternalIdentifier:v4];
}

- (void)_setSupportsEvents:(BOOL)a3 supportsTodos:(BOOL)a4
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__MobileCalDAVCalendar__setSupportsEvents_supportsTodos___block_invoke;
  v5[3] = &__block_descriptor_33_e27_v16__0__REMListChangeItem_8l;
  v6 = !a4;
  if ([(MobileCalDAVCalendar *)self rem_setListPropertiesWithBlock:v5 error:0])
  {
    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (BOOL)isTaskContainer
{
  v2 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 daIsEventOnlyContainer] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)setIsTaskContainer:(BOOL)a3
{
  v3 = a3;
  v5 = [(MobileCalDAVCalendar *)self isEventContainer];
  v6 = [(MobileCalDAVPrincipal *)self->_principal isEnabledForTodos]& v3;

  [(MobileCalDAVCalendar *)self _setSupportsEvents:v5 supportsTodos:v6];
}

- (BOOL)isEventContainer
{
  v2 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 daIsEventOnlyContainer];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setIsEventContainer:(BOOL)a3
{
  v3 = a3;
  v5 = [(MobileCalDAVCalendar *)self isTaskContainer];
  v6 = [(MobileCalDAVPrincipal *)self->_principal isEnabledForEvents]& v3;

  [(MobileCalDAVCalendar *)self _setSupportsEvents:v6 supportsTodos:v5];
}

- (void)setIsSubscribed:(BOOL)a3
{
  v36 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
    if (v4)
    {
      v5 = v4;
      if ([v4 daIsEventOnlyContainer])
      {
        v6 = v5;
      }

      else
      {
        v7 = DALoggingwithCategory();
        v8 = MEMORY[0x277CF3AF0];
        v9 = *(MEMORY[0x277CF3AF0] + 3);
        if (os_log_type_enabled(v7, v9))
        {
          v10 = [(MobileCalDAVCalendar *)self guid];
          v11 = [(MobileCalDAVCalendar *)self calendarURLString];
          v12 = [v5 objectID];
          *buf = 138543874;
          v29 = v10;
          v30 = 2112;
          v31 = v11;
          v32 = 2114;
          v33 = v12;
          _os_log_impl(&dword_242490000, v7, v9, "Found a list that should indeed be a subscribed calendar due to 50659315 {guid: %{public}@, url: %@, listID: %{public}@}", buf, 0x20u);
        }

        [(MobileCalDAVCalendar *)self rem_setListPropertiesWithBlock:&__block_literal_global_42 error:0];
        v6 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];

        v13 = [(MobileCalDAVCalendar *)self rem_saveRequest];
        v14 = [v13 updateList:v6];
        [v14 removeFromParent];
        v27 = 0;
        v15 = [v13 saveSynchronouslyWithError:&v27];
        v16 = v27;
        if (v15)
        {
          v17 = DALoggingwithCategory();
          v18 = *(v8 + 5);
          if (os_log_type_enabled(v17, v18))
          {
            v19 = [(MobileCalDAVCalendar *)self calendarURL];
            v20 = [v6 objectID];
            *buf = 138412546;
            v29 = v19;
            v30 = 2114;
            v31 = v20;
            _os_log_impl(&dword_242490000, v17, v18, "The unexpected subscribed calendar list is now deleted and marked as event calendar: {url: %@, objectID: %{public}@}", buf, 0x16u);
          }
        }

        else
        {
          v17 = DALoggingwithCategory();
          if (os_log_type_enabled(v17, v9))
          {
            v26 = [v6 objectID];
            v21 = [(MobileCalDAVCalendar *)self guid];
            v22 = [(MobileCalDAVCalendar *)self calendarURLString];
            v23 = [v16 localizedDescription];
            *buf = 138544130;
            v29 = v26;
            v30 = 2114;
            v31 = v21;
            v32 = 2112;
            v33 = v22;
            v34 = 2114;
            v35 = v23;
            v24 = v23;
            _os_log_impl(&dword_242490000, v17, v9, "ERROR: Failed to save delete of list {listID: %{public}@, guid: %{public}@, extID: %@, error: %{public}@}", buf, 0x2Au);
          }
        }

        [(MobileCalDAVCalendar *)self setRem_calCalendar:0];
        [(MobileCalDAVCalendar *)self setIsDirty:1];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (NSString)title
{
  v2 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v3 = v2;
  if (!v2 || ([v2 name], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = 0;
  }

  return v4;
}

- (void)setTitle:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && ![v4 isEqualToString:&stru_2854B8D68])
  {
    v7 = v5;
  }

  else
  {
    v6 = [(MobileCalDAVCalendar *)self principal];
    v7 = [v6 user];

    v8 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = [(MobileCalDAVCalendar *)self calendarURL];
      *buf = 138412546;
      v18 = v7;
      v19 = 2112;
      v20 = v10;
      _os_log_impl(&dword_242490000, v8, v9, "Empty calendar title receieved. Setting calendar title to %@. Calendar URL: %@", buf, 0x16u);
    }
  }

  v11 = [(MobileCalDAVCalendar *)self title];
  if (v7 == v11)
  {
    goto LABEL_11;
  }

  v12 = [(MobileCalDAVCalendar *)self title];
  v13 = [v7 isEqualToString:v12];

  if ((v13 & 1) == 0)
  {
    v11 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
    if (v11)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __33__MobileCalDAVCalendar_setTitle___block_invoke;
      v15[3] = &unk_278D4F5E0;
      v16 = v7;
      [(MobileCalDAVCalendar *)self rem_setListPropertiesWithBlock:v15 error:0];
      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }

LABEL_11:
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)setNotes:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 4);
  if (os_log_type_enabled(v5, v6))
  {
    v8 = 138412802;
    v9 = v4;
    v10 = 2112;
    v11 = self;
    v12 = 2112;
    v13 = 0;
    _os_log_impl(&dword_242490000, v5, v6, "MobileCalDAVCalendar: LOOKATME: No .notes to set in REMList for now {setvalue=%@, calendar=%@, stack=%@}", &v8, 0x20u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (NSString)color
{
  v2 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 ekColor];
    v5 = [v4 daHexString];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setColor:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 ekColor];
    v8 = [objc_alloc(MEMORY[0x277D445D0]) initWithDASymbolicColorName:0 daHexString:v4];
    if ([v4 length])
    {
      if (v8)
      {
        v9 = [v7 daHexString];
        v10 = [v8 daHexString];
        v11 = [v9 isEqual:v10];

        if ((v11 & 1) == 0)
        {
          v12 = DALoggingwithCategory();
          v13 = *(MEMORY[0x277CF3AF0] + 6);
          if (os_log_type_enabled(v12, v13))
          {
            v14 = [v8 daHexString];
            v15 = [v7 daHexString];
            *buf = 138413058;
            v20 = v14;
            v21 = 2112;
            v22 = v4;
            v23 = 2112;
            v24 = v15;
            v25 = 2112;
            v26 = self;
            _os_log_impl(&dword_242490000, v12, v13, "MobileCalDAVCalendar: LOOKATME: Verifying color format being set to REM: %@, rawValue:%@, remValue: %@, calendar: %@.", buf, 0x2Au);
          }

          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __33__MobileCalDAVCalendar_setColor___block_invoke;
          v17[3] = &unk_278D4F5E0;
          v18 = v8;
          if ([(MobileCalDAVCalendar *)self rem_setListPropertiesWithBlock:v17 error:0])
          {
            [(MobileCalDAVCalendar *)self setIsDirty:1];
          }
        }
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (NSString)symbolicColorName
{
  v2 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 ekColor];
    v5 = [v4 daSymbolicColorName];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setSymbolicColorName:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 ekColor];
    v8 = [objc_alloc(MEMORY[0x277D445D0]) initWithDASymbolicColorName:v4 daHexString:0];
    if ([v4 length])
    {
      if (v8)
      {
        v9 = [v7 daSymbolicColorName];
        v10 = [v8 daSymbolicColorName];
        v11 = [v9 isEqual:v10];

        if ((v11 & 1) == 0)
        {
          v12 = DALoggingwithCategory();
          v13 = *(MEMORY[0x277CF3AF0] + 6);
          if (os_log_type_enabled(v12, v13))
          {
            v14 = [v8 daSymbolicColorName];
            v15 = [v7 daSymbolicColorName];
            *buf = 138413058;
            v20 = v14;
            v21 = 2112;
            v22 = v4;
            v23 = 2112;
            v24 = v15;
            v25 = 2112;
            v26 = self;
            _os_log_impl(&dword_242490000, v12, v13, "MobileCalDAVCalendar: LOOKATME: Verifying symbolic color name being set to REM: %@, rawValue: %@, remValue: %@, calendar: %@.", buf, 0x2Au);
          }

          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __45__MobileCalDAVCalendar_setSymbolicColorName___block_invoke;
          v17[3] = &unk_278D4F5E0;
          v18 = v8;
          if ([(MobileCalDAVCalendar *)self rem_setListPropertiesWithBlock:v17 error:0])
          {
            [(MobileCalDAVCalendar *)self setIsDirty:1];
          }
        }
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (NSString)pushKey
{
  v2 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 daPushKey];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setPushKey:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVCalendar *)self pushKey];
  if (v5 != v4 && ([v4 isEqualToString:v5] & 1) == 0)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __35__MobileCalDAVCalendar_setPushKey___block_invoke;
    v6[3] = &unk_278D4F5E0;
    v7 = v4;
    if ([(MobileCalDAVCalendar *)self rem_setListPropertiesWithBlock:v6 error:0])
    {
      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }
  }
}

- (NSDictionary)bulkRequests
{
  v2 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 daBulkRequests];
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_7:
    v4 = v4;
    v5 = v4;
    goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (void)setBulkRequests:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVCalendar *)self bulkRequests];
  if (v5 != v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v4 isEqualToDictionary:v5] & 1) == 0)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __40__MobileCalDAVCalendar_setBulkRequests___block_invoke;
      v6[3] = &unk_278D4F5E0;
      v7 = v4;
      if ([(MobileCalDAVCalendar *)self rem_setListPropertiesWithBlock:v6 error:0])
      {
        [(MobileCalDAVCalendar *)self setIsDirty:1];
      }
    }
  }
}

- (NSURL)owner
{
  v2 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 sharedOwnerAddress];
    if (v4)
    {
      v5 = [MEMORY[0x277CBEBC0] URLWithString:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setOwner:(id)a3
{
  v4 = [a3 absoluteString];
  v5 = [(MobileCalDAVCalendar *)self owner];
  v6 = [v5 absoluteString];

  if (v4 != v6 && ([v4 isEqualToString:v6] & 1) == 0)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __33__MobileCalDAVCalendar_setOwner___block_invoke;
    v7[3] = &unk_278D4F5E0;
    v8 = v4;
    if ([(MobileCalDAVCalendar *)self rem_setListPropertiesWithBlock:v7 error:0])
    {
      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }
  }
}

- (BOOL)canBePublished
{
  v2 = [(MobileCalDAVCalendar *)self rem_account];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 daSupportsSharedCalendars];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCanBePublished:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x277D85DE8];
  if ([(MobileCalDAVCalendar *)self canBePublished]!= a3)
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277CF3AF0] + 7);
    if (os_log_type_enabled(v4, v5))
    {
      v7[0] = 67109378;
      v7[1] = v3;
      v8 = 2112;
      v9 = 0;
      _os_log_impl(&dword_242490000, v4, v5, "MobileCalDAVCalendar: LOOKATME: REMList has no sharing (calenderFlags::canBePublished) to set yet {setvalue=%d, stack=%@}", v7, 0x12u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)canBeShared
{
  v2 = [(MobileCalDAVCalendar *)self rem_account];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 daSupportsSharedCalendars];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setCanBeShared:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x277D85DE8];
  if ([(MobileCalDAVCalendar *)self canBeShared]!= a3)
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277CF3AF0] + 7);
    if (os_log_type_enabled(v4, v5))
    {
      v7[0] = 67109378;
      v7[1] = v3;
      v8 = 2112;
      v9 = 0;
      _os_log_impl(&dword_242490000, v4, v5, "MobileCalDAVCalendar: LOOKATME: REMList has no sharing (calenderFlags::canBeShared) to set yet {setvalue=%d, stack=%@}", v7, 0x12u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setIsFamilyCalendar:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x277D85DE8];
  if ([(MobileCalDAVCalendar *)self isFamilyCalendar]!= a3)
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(v4, v5))
    {
      v7[0] = 67109378;
      v7[1] = v3;
      v8 = 2112;
      v9 = 0;
      _os_log_impl(&dword_242490000, v4, v5, "MobileCalDAVCalendar: LOOKATME: REMList has no (calenderFlags::isFamilyCalendar) to set yet {setvalue=%d, stack=%@}", v7, 0x12u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setIsMarkedUndeletable:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x277D85DE8];
  if ([(MobileCalDAVCalendar *)self isMarkedUndeletable]!= a3)
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(v4, v5))
    {
      v7[0] = 67109378;
      v7[1] = v3;
      v8 = 2112;
      v9 = 0;
      _os_log_impl(&dword_242490000, v4, v5, "MobileCalDAVCalendar: LOOKATME: REMList has no (calenderFlags::isMarkedUndeletable) to set yet {setvalue=%d, stack=%@}", v7, 0x12u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setIsMarkedImmutableSharees:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x277D85DE8];
  if ([(MobileCalDAVCalendar *)self isMarkedImmutableSharees]!= a3)
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(v4, v5))
    {
      v7[0] = 67109378;
      v7[1] = v3;
      v8 = 2112;
      v9 = 0;
      _os_log_impl(&dword_242490000, v4, v5, "MobileCalDAVCalendar: LOOKATME: REMList has no (calenderFlags::isMarkedImmutableSharees) to set yet {setvalue=%d, stack=%@}", v7, 0x12u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setIsPublished:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x277D85DE8];
  if ([(MobileCalDAVCalendar *)self isPublished]!= a3)
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(v4, v5))
    {
      v7[0] = 67109378;
      v7[1] = v3;
      v8 = 2112;
      v9 = 0;
      _os_log_impl(&dword_242490000, v4, v5, "MobileCalDAVCalendar: LOOKATME: REMList has no (isPublished) to set yet {setvalue=%d, stack=%@}", v7, 0x12u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setPublishURL:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MobileCalDAVCalendar *)self publishURL];
  v6 = v5;
  if (v5 != v4 && ([v5 da_isEqualToDAVURL:v4] & 1) == 0)
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(v7, v8))
    {
      v10 = 138412546;
      v11 = v4;
      v12 = 2112;
      v13 = 0;
      _os_log_impl(&dword_242490000, v7, v8, "MobileCalDAVCalendar: LOOKATME: REMList has no (publishURL) to set yet {setvalue=%@, stack=%@}", &v10, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (NSString)ownerDisplayName
{
  v2 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 sharedOwnerName];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setOwnerDisplayName:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVCalendar *)self ownerDisplayName];
  v6 = v5;
  if (v5 == v4)
  {
  }

  else
  {
    v7 = [(MobileCalDAVCalendar *)self ownerDisplayName];
    v8 = [v4 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __44__MobileCalDAVCalendar_setOwnerDisplayName___block_invoke;
      v9[3] = &unk_278D4F5E0;
      v10 = v4;
      if ([(MobileCalDAVCalendar *)self rem_setListPropertiesWithBlock:v9 error:0])
      {
        [(MobileCalDAVCalendar *)self setIsDirty:1];
      }
    }
  }
}

- (id)_preferredAddress
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = MEMORY[0x277CF6FF8];
  v4 = [(MobileCalDAVCalendar *)self preferredCalendarUserAddresses];
  v5 = [v3 preferredAddress:v4];
  v6 = [v2 URLWithString:v5];

  return v6;
}

- (NSString)ownerEmailAddress
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(MobileCalDAVCalendar *)self _preferredAddress];
  v4 = v3;
  if (v3 && ([v3 scheme], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasPrefix:", @"mailto"), v5, v6))
  {
    v7 = [v4 resourceSpecifier];
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [(MobileCalDAVCalendar *)self calendarUserAddresses];
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [v13 scheme];
          v15 = [v14 hasPrefix:@"mailto"];

          if (v15)
          {
            v7 = [v13 resourceSpecifier];

            goto LABEL_14;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
  }

LABEL_14:

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

- (NSString)ownerPhoneNumber
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(MobileCalDAVCalendar *)self _preferredAddress];
  v4 = v3;
  if (v3 && ([v3 scheme], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasPrefix:", @"tel"), v5, v6))
  {
    v7 = [v4 resourceSpecifier];
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [(MobileCalDAVCalendar *)self calendarUserAddresses];
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [v13 scheme];
          v15 = [v14 hasPrefix:@"tel"];

          if (v15)
          {
            v7 = [v13 resourceSpecifier];

            goto LABEL_14;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
  }

LABEL_14:

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

- (NSSet)preferredCalendarUserAddresses
{
  v3 = [(MobileCalDAVCalendar *)self daPrincipal];
  v4 = [v3 preferredCalendarUserAddressesForCalendar:self];

  return v4;
}

- (void)setPreferredCalendarUserAddresses:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVCalendar *)self daPrincipal];
  [v5 setPreferredCalendarUserAddresses:v4 forCalendar:self];
}

- (id)calendarUserAddresses
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(MobileCalDAVCalendar *)self preferredCalendarUserAddresses];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) address];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)hasCalendarUserAddressEquivalentToURL:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(MobileCalDAVCalendar *)self calendarUserAddresses];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [*(*(&v13 + 1) + 8 * i) absoluteString];
          v10 = [MobileCalDAVPrincipal compareAddressURL:v4 localString:v9];

          if (v10)
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

- (int)order
{
  v2 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v3 = v2;
  if (v2)
  {
    LODWORD(v2) = [v2 daDisplayOrder];
  }

  v4 = v2 & ~(v2 >> 31);

  return v4;
}

- (void)setOrder:(int)a3
{
  if ([(MobileCalDAVCalendar *)self order]!= a3)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __33__MobileCalDAVCalendar_setOrder___block_invoke;
    v5[3] = &__block_descriptor_36_e27_v16__0__REMListChangeItem_8l;
    v6 = a3;
    if ([(MobileCalDAVCalendar *)self rem_setListPropertiesWithBlock:v5 error:0])
    {
      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }
  }
}

- (int)sharingStatus
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v4 = v3;
  if (!v3)
  {
LABEL_10:
    v6 = 0;
    goto LABEL_12;
  }

  v5 = [v3 sharingStatus];
  switch(v5)
  {
    case 1:
      v6 = 1;
      break;
    case 4:
      v7 = DALoggingwithCategory();
      v8 = *(MEMORY[0x277CF3AF0] + 3);
      if (os_log_type_enabled(v7, v8))
      {
        v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "sharingStatus")}];
        v12 = 138543618;
        v13 = v9;
        v14 = 2114;
        v15 = self;
        _os_log_impl(&dword_242490000, v7, v8, "MobileCalDAVCalendar: ERROR: Invalid REMListSharingStatus value: %{public}@ (calendar: %{public}@)", &v12, 0x16u);
      }

      goto LABEL_10;
    case 2:
      v6 = 2;
      break;
    default:
      v6 = 0;
      break;
  }

LABEL_12:

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)setSharingStatus:(int)a3
{
  if ([(MobileCalDAVCalendar *)self sharingStatus]!= a3)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __41__MobileCalDAVCalendar_setSharingStatus___block_invoke;
    v5[3] = &__block_descriptor_36_e27_v16__0__REMListChangeItem_8l;
    v6 = a3;
    if ([(MobileCalDAVCalendar *)self rem_setListPropertiesWithBlock:v5 error:0])
    {
      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }
  }
}

uint64_t __41__MobileCalDAVCalendar_setSharingStatus___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = v2 == 1;
  }

  return [a2 setSharingStatus:v3];
}

- (void)setSharees:(id)a3
{
  v92 = *MEMORY[0x277D85DE8];
  v63 = [a3 mutableCopy];
  v4 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v5 = v4;
  if (v4)
  {
    v61 = self;
    v57 = v4;
    v6 = [v4 shareeContext];
    v7 = [v6 sharees];

    v66 = [MEMORY[0x277CBEB18] array];
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    obj = v7;
    v64 = [obj countByEnumeratingWithState:&v80 objects:v91 count:16];
    if (v64)
    {
      v60 = 0;
      v62 = *v81;
      *&v8 = 138412546;
      v56 = v8;
      type = *(MEMORY[0x277CF3AF0] + 5);
      do
      {
        for (i = 0; i != v64; ++i)
        {
          if (*v81 != v62)
          {
            objc_enumerationMutation(obj);
          }

          v10 = MEMORY[0x277CBEBC0];
          v65 = *(*(&v80 + 1) + 8 * i);
          v11 = [v65 address];
          v12 = [v10 URLWithString:v11];

          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v13 = v63;
          v14 = [v13 countByEnumeratingWithState:&v76 objects:v90 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v77;
            while (2)
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v77 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v76 + 1) + 8 * j);
                v19 = [v18 acceptedURL];
                if (v19)
                {
                  v20 = [v18 acceptedURL];
                }

                else
                {
                  v21 = [v18 href];
                  v20 = [v21 payloadAsFullURL];
                }

                if ([(MobileCalDAVCalendar *)v12 da_isEqualToDAVURL:v20])
                {
                  v23 = [v18 rem_updatedREMShareeFromREMSharee:v65];
                  if (v23)
                  {
                    [v66 addObject:v23];
                    v24 = DALoggingwithCategory();
                    if (os_log_type_enabled(v24, type))
                    {
                      v25 = [(MobileCalDAVCalendar *)v61 title];
                      *buf = v56;
                      v87 = v12;
                      v88 = 2112;
                      v89 = v25;
                      _os_log_impl(&dword_242490000, v24, type, "MobileCalDAVCalendar: Updating sharee %@ to calendar %@", buf, 0x16u);
                    }

                    v60 = 1;
                  }

                  else
                  {
                    [v66 addObject:v65];
                  }

                  [v13 removeObject:v18];

                  goto LABEL_27;
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v76 objects:v90 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

          v13 = DALoggingwithCategory();
          if (os_log_type_enabled(v13, type))
          {
            v22 = [(MobileCalDAVCalendar *)v61 title];
            *buf = v56;
            v87 = v12;
            v88 = 2112;
            v89 = v22;
            _os_log_impl(&dword_242490000, v13, type, "MobileCalDAVCalendar: Removing sharee %@ from calendar %@ ", buf, 0x16u);
          }

          v60 = 1;
LABEL_27:
        }

        v64 = [obj countByEnumeratingWithState:&v80 objects:v91 count:16];
      }

      while (v64);
    }

    else
    {
      v60 = 0;
    }

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v26 = v63;
    v27 = [v26 countByEnumeratingWithState:&v72 objects:v85 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v73;
      v30 = *(MEMORY[0x277CF3AF0] + 5);
      v5 = v57;
      do
      {
        for (k = 0; k != v28; ++k)
        {
          if (*v73 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v32 = *(*(&v72 + 1) + 8 * k);
          v33 = DALoggingwithCategory();
          if (os_log_type_enabled(v33, v30))
          {
            v34 = [v32 commonName];
            v35 = [v34 payloadAsString];
            v36 = [(MobileCalDAVCalendar *)v61 title];
            *buf = 138412546;
            v87 = v35;
            v88 = 2112;
            v89 = v36;
            _os_log_impl(&dword_242490000, v33, v30, "MobileCalDAVCalendar: Adding sharee %@ to calendar %@", buf, 0x16u);

            v5 = v57;
          }

          v37 = [v32 rem_shareeForREMList:v5];
          [v66 addObject:v37];
        }

        v28 = [v26 countByEnumeratingWithState:&v72 objects:v85 count:16];
      }

      while (v28);
    }

    else
    {

      v5 = v57;
      if ((v60 & 1) == 0)
      {
LABEL_58:

        goto LABEL_59;
      }
    }

    v38 = [(MobileCalDAVCalendar *)v61 rem_saveRequest];
    v39 = [v38 updateList:v5];
    v40 = [v39 shareeContext];
    [v40 removeAllSharees];
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v41 = v66;
    v42 = [v41 countByEnumeratingWithState:&v68 objects:v84 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v69;
      do
      {
        for (m = 0; m != v43; ++m)
        {
          if (*v69 != v44)
          {
            objc_enumerationMutation(v41);
          }

          [v40 addSharee:*(*(&v68 + 1) + 8 * m)];
        }

        v43 = [v41 countByEnumeratingWithState:&v68 objects:v84 count:16];
      }

      while (v43);
    }

    v46 = DALoggingwithCategory();
    v47 = *(MEMORY[0x277CF3AF0] + 5);
    if (os_log_type_enabled(v46, v47))
    {
      v48 = [v40 sharees];
      *buf = 138412546;
      v87 = v48;
      v88 = 2114;
      v89 = v61;
      _os_log_impl(&dword_242490000, v46, v47, "MobileCalDAVCalendar: Setting new .sharees to REMList (%@, calendar=%{public}@).", buf, 0x16u);
    }

    v67 = 0;
    v49 = [v38 saveSynchronouslyWithError:&v67];
    v50 = v67;
    v51 = v50;
    if (!v49 || v50)
    {
      v52 = DALoggingwithCategory();
      v53 = *(MEMORY[0x277CF3AF0] + 3);
      if (os_log_type_enabled(v52, v53))
      {
        v54 = [v51 localizedDescription];
        *buf = 138543618;
        v87 = v61;
        v88 = 2114;
        v89 = v54;
        _os_log_impl(&dword_242490000, v52, v53, "MobileCalDAVCalendar: Failed to save changes to sharees to calendar {calendar=%{public}@, error=%{public}@}.", buf, 0x16u);
      }
    }

    else
    {
      [(MobileCalDAVCalendar *)v61 rem_reloadCalCalendar];
    }

    [(MobileCalDAVCalendar *)v61 setIsDirty:1];

    goto LABEL_58;
  }

LABEL_59:

  v55 = *MEMORY[0x277D85DE8];
}

- (NSSet)sharees
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 shareeContext];
    v5 = [v4 sharees];

    if (v5 && [v5 count])
    {
      v6 = objc_opt_new();
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v18;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v17 + 1) + 8 * i);
            v13 = objc_alloc(MEMORY[0x277CF6FE0]);
            v14 = [v13 initWithREMSharee:{v12, v17}];
            if (v14)
            {
              [v6 addObject:v14];
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v9);
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)isEditable
{
  v2 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 daIsReadOnly] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)setIsEditable:(BOOL)a3
{
  if ([(MobileCalDAVCalendar *)self isEditable]!= a3)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __38__MobileCalDAVCalendar_setIsEditable___block_invoke;
    v5[3] = &__block_descriptor_33_e27_v16__0__REMListChangeItem_8l;
    v6 = !a3;
    if ([(MobileCalDAVCalendar *)self rem_setListPropertiesWithBlock:v5 error:0])
    {
      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }
  }
}

- (BOOL)isRenameable
{
  v2 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 daIsImmutable] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)setIsRenameable:(BOOL)a3
{
  if ([(MobileCalDAVCalendar *)self isRenameable]!= a3)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __40__MobileCalDAVCalendar_setIsRenameable___block_invoke;
    v5[3] = &__block_descriptor_33_e27_v16__0__REMListChangeItem_8l;
    v6 = !a3;
    if ([(MobileCalDAVCalendar *)self rem_setListPropertiesWithBlock:v5 error:0])
    {
      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }
  }
}

- (NSString)ctag
{
  v3 = [(MobileCalDAVCalendar *)self daPrincipal];
  v4 = [v3 refreshContext];
  v5 = [v4 isForced];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
    v8 = v7;
    if (v7)
    {
      v6 = [v7 externalModificationTag];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)setCtag:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVCalendar *)self ctag];
  v6 = v5;
  if (v5 == v4)
  {
  }

  else
  {
    v7 = [(MobileCalDAVCalendar *)self ctag];
    v8 = [v4 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __32__MobileCalDAVCalendar_setCtag___block_invoke;
      v9[3] = &unk_278D4F5E0;
      v10 = v4;
      if ([(MobileCalDAVCalendar *)self rem_setListPropertiesWithBlock:v9 error:0])
      {
        [(MobileCalDAVCalendar *)self setIsDirty:1];
      }
    }
  }
}

- (NSString)syncToken
{
  v3 = [(MobileCalDAVCalendar *)self daPrincipal];
  v4 = [v3 refreshContext];
  v5 = [v4 isForced];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
    v8 = v7;
    if (v7)
    {
      v6 = [v7 daSyncToken];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)setSyncToken:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVCalendar *)self syncToken];
  v6 = v5;
  if (v5 == v4)
  {
  }

  else
  {
    v7 = [(MobileCalDAVCalendar *)self syncToken];
    v8 = [v4 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __37__MobileCalDAVCalendar_setSyncToken___block_invoke;
      v11[3] = &unk_278D4F5E0;
      v9 = v4;
      v12 = v9;
      if ([(MobileCalDAVCalendar *)self rem_setListPropertiesWithBlock:v11 error:0])
      {
        [(MobileCalDAVCalendar *)self setIsDirty:1];
      }

      if ([v9 length])
      {
        v10 = [(MobileCalDAVCalendar *)self daPrincipal];
        [v10 setSupportsSyncToken:1];
      }
    }
  }
}

- (NSSet)allItemURLs
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v5 = v4;
  if (v4)
  {
    v38 = 0;
    v6 = [v4 fetchRemindersWithError:&v38];
    v7 = v38;
    v8 = MEMORY[0x277CF3AF0];
    v33 = v7;
    if (v7)
    {
      v9 = DALoggingwithCategory();
      v10 = *(v8 + 3);
      if (os_log_type_enabled(v9, v10))
      {
        v11 = [v5 objectID];
        *buf = 138543618;
        v40 = self;
        v41 = 2114;
        v42 = v11;
        _os_log_impl(&dword_242490000, v9, v10, "MobileCalDAVCalendar: ERROR: Couldn't fetch all reminders for calendar %{public}@, listID: %{public}@", buf, 0x16u);
      }
    }

    v12 = [v5 account];
    v13 = [v12 daWasMigrated];

    if (v13)
    {
      [(MobileCalDAVCalendar *)self setRem_cachedFetchedRemindersForMergeSync:v6];
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v14 = v6;
    v15 = [v14 countByEnumeratingWithState:&v34 objects:v45 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v35;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v34 + 1) + 8 * i) externalIdentifier];
          if (v19)
          {
            v20 = [(MobileCalDAVCalendar *)self calendarURL];
            v21 = [v19 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v20];

            if (v21)
            {
              [v3 addObject:v21];
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v34 objects:v45 count:16];
      }

      while (v16);
    }

    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = MEMORY[0x277CCABB0];
      v25 = [v5 account];
      v26 = [v24 numberWithBool:{objc_msgSend(v25, "daWasMigrated")}];
      v27 = [(MobileCalDAVCalendar *)self guid];
      *buf = 138543874;
      v40 = v26;
      v41 = 2114;
      v42 = v27;
      v43 = 2112;
      v44 = v3;
      _os_log_impl(&dword_242490000, v22, v23, "allItemURLs: Probably in merge-sync {wasMigrated=%{public}@, cal=%{public}@, urls=%@}", buf, 0x20u);
    }

    v28 = v3;
  }

  else
  {
    v29 = DALoggingwithCategory();
    v30 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(v29, v30))
    {
      *buf = 138543362;
      v40 = self;
      _os_log_impl(&dword_242490000, v29, v30, "MobileCalDAVCalendar: Couldn't get a REM list for calendar %{public}@", buf, 0xCu);
    }

    v28 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)etagsForItemURLs:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v6 = v5;
  if (v5)
  {
    v39 = v5;
    v7 = objc_opt_new();
    v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v37 = v4;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v43;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v43 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v42 + 1) + 8 * i);
          v15 = [(MobileCalDAVCalendar *)self calendarURL];
          v16 = [v14 da_leastInfoStringRepresentationRelativeToParentURL:v15];

          v17 = [(NSMutableDictionary *)self->_URLToEtagMap objectForKeyedSubscript:v16];
          if (v17)
          {
            [v7 setObject:v17 forKeyedSubscript:v14];
          }

          else
          {
            [v40 addObject:v14];
            [v8 addObject:v16];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v11);
    }

    v18 = v8;
    v6 = v39;
    v19 = v40;
    if ([v8 count])
    {
      v41 = 0;
      v20 = [v39 fetchRemindersWithExternalIdentifiers:v8 error:&v41];
      v36 = v41;
      if (v20)
      {
        if ([v8 count])
        {
          v21 = 0;
          type = *(MEMORY[0x277CF3AF0] + 4);
          while (1)
          {
            v22 = [v18 objectAtIndexedSubscript:v21];
            v23 = [v19 objectAtIndexedSubscript:v21];
            v24 = [v20 objectForKeyedSubscript:v22];
            v25 = v24;
            if (!v24)
            {
              break;
            }

            v26 = [v24 externalModificationTag];

            if (v26)
            {
              v27 = [v25 externalModificationTag];
              [v7 setObject:v27 forKeyedSubscript:v23];
LABEL_21:
            }

            ++v21;
            v18 = v8;
            if (v21 >= [v8 count])
            {
              goto LABEL_30;
            }
          }

          v27 = DALoggingwithCategory();
          if (os_log_type_enabled(v27, type))
          {
            v28 = [v39 objectID];
            *buf = 138412546;
            v47 = v23;
            v48 = 2114;
            v49 = v28;
            _os_log_impl(&dword_242490000, v27, type, "MobileCalDAVCalendar: Reminder does not exist when trying to set externalModificationTag {url: %@, list: %{public}@}.", buf, 0x16u);

            v19 = v40;
          }

          goto LABEL_21;
        }
      }

      else
      {
        v30 = DALoggingwithCategory();
        v31 = *(MEMORY[0x277CF3AF0] + 3);
        if (os_log_type_enabled(v30, v31))
        {
          v32 = [v39 objectID];
          v33 = [v36 localizedDescription];
          *buf = 138543618;
          v47 = v32;
          v48 = 2114;
          v49 = v33;
          _os_log_impl(&dword_242490000, v30, v31, "MobileCalDAVCalendar: ERROR: Could not fetch reminders in lists to get externalModificationTag {list: %{public}@, error: %{public}@}.", buf, 0x16u);
        }
      }

LABEL_30:

      v6 = v39;
    }

    v4 = v37;
  }

  else
  {
    v19 = DALoggingwithCategory();
    v29 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(v19, v29))
    {
      *buf = 138543362;
      v47 = self;
      _os_log_impl(&dword_242490000, v19, v29, "MobileCalDAVCalendar: ERROR: Could not find a REM list that matched %{public}@", buf, 0xCu);
    }

    v7 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_rem_copyReminderWithUniqueIdentifier:(id)a3 inList:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(MobileCalDAVCalendar *)self rem_store];
    v21 = 0;
    v9 = [v8 fetchReminderWithDACalendarItemUniqueIdentifier:v6 inList:v7 error:&v21];
    v10 = v21;
    v11 = v10;
    if (!v9)
    {
      if (v10 && [v10 code] != -3000)
      {
        v12 = DALoggingwithCategory();
        v16 = *(MEMORY[0x277CF3AF0] + 3);
        if (os_log_type_enabled(v12, v16))
        {
          v17 = [v7 objectID];
          v18 = [v11 localizedDescription];
          *buf = 138543874;
          v23 = v6;
          v24 = 2114;
          v25 = v17;
          v26 = 2114;
          v27 = v18;
          _os_log_impl(&dword_242490000, v12, v16, "MobileCalDAVCalendar: ERROR: Failed to fetch reminder with UUID: %{public}@, list: %{public}@, error: %{public}@", buf, 0x20u);
        }
      }

      else
      {
        v12 = DALoggingwithCategory();
        v13 = *(MEMORY[0x277CF3AF0] + 4);
        if (os_log_type_enabled(v12, v13))
        {
          v14 = [v7 objectID];
          *buf = 138543618;
          v23 = v6;
          v24 = 2114;
          v25 = v14;
          _os_log_impl(&dword_242490000, v12, v13, "MobileCalDAVCalendar: Could not find a reminder with UUID: %{public}@, list: %{public}@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v8 = DALoggingwithCategory();
    v15 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v8, v15))
    {
      *buf = 138543618;
      v23 = self;
      v24 = 2112;
      v25 = 0;
      _os_log_impl(&dword_242490000, v8, v15, "MobileCalDAVCalendar: ERROR: Try to get reminder with nil uniqueIdentifier {calendar: %{public}@, stack: %@}.", buf, 0x16u);
    }

    v9 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_rem_copyReminderWithExternalID:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
    v6 = v5;
    if (!v5)
    {
      v9 = DALoggingwithCategory();
      v13 = *(MEMORY[0x277CF3AF0] + 4);
      if (os_log_type_enabled(v9, v13))
      {
        *buf = 138543618;
        v23 = self;
        v24 = 2112;
        v25 = v4;
        _os_log_impl(&dword_242490000, v9, v13, "MobileCalDAVCalendar: Calendar has no backing REM list when trying to fetch reminder with externalID {calendar: %{public}@, reminder.externalID: %@}.", buf, 0x16u);
      }

      v7 = 0;
      goto LABEL_19;
    }

    v21 = 0;
    v7 = [v5 fetchReminderWithExternalIdentifier:v4 error:&v21];
    v8 = v21;
    v9 = v8;
    if (v7)
    {
LABEL_19:

      goto LABEL_20;
    }

    if (v8)
    {
      v10 = [v8 domain];
      v11 = v10;
      if (v10 == *MEMORY[0x277D44920])
      {
        v14 = [v9 code];

        if (v14 == -3000)
        {
          v15 = DALoggingwithCategory();
          v16 = *(MEMORY[0x277CF3AF0] + 4);
          if (os_log_type_enabled(v15, v16))
          {
            *buf = 138543618;
            v23 = self;
            v24 = 2112;
            v25 = v4;
            _os_log_impl(&dword_242490000, v15, v16, "MobileCalDAVCalendar: Could not find a reminder with externalID {calendar: %{public}@, reminder.externalID: %@}.", buf, 0x16u);
          }

          goto LABEL_18;
        }
      }

      else
      {
      }
    }

    v15 = DALoggingwithCategory();
    v17 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v15, v17))
    {
      v18 = [v9 localizedDescription];
      *buf = 138543874;
      v23 = self;
      v24 = 2112;
      v25 = v4;
      v26 = 2114;
      v27 = v18;
      _os_log_impl(&dword_242490000, v15, v17, "MobileCalDAVCalendar: ERROR: Could not fetch reminder with externalID {calendar: %{public}@, reminder.externalID: %@, error: %{public}@}.", buf, 0x20u);
    }

LABEL_18:

    goto LABEL_19;
  }

  v6 = DALoggingwithCategory();
  v12 = *(MEMORY[0x277CF3AF0] + 3);
  if (os_log_type_enabled(v6, v12))
  {
    *buf = 138543618;
    v23 = self;
    v24 = 2112;
    v25 = 0;
    _os_log_impl(&dword_242490000, v6, v12, "MobileCalDAVCalendar: ERROR: Try to get reminder with nil externalID {calendar: %{public}@, stack: %@}.", buf, 0x16u);
  }

  v7 = 0;
LABEL_20:

  v19 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)setURL:(id)a3 forResourceWithUUID:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v8 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  if (v8)
  {
    v9 = [(MobileCalDAVCalendar *)self _rem_copyReminderWithUniqueIdentifier:v7 inList:v8];
    if (v9)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __51__MobileCalDAVCalendar_setURL_forResourceWithUUID___block_invoke;
      v26[3] = &unk_278D4F668;
      v29 = &v30;
      v26[4] = self;
      v10 = v6;
      v27 = v10;
      v28 = v7;
      v25 = 0;
      v11 = rem_ReminderSetPropertiesWithBlock(v9, v26, &v25);
      v12 = v25;
      if (v12)
      {
        v13 = 0;
      }

      else
      {
        v13 = v11;
      }

      if ((v13 & 1) == 0)
      {
        v14 = [(MobileCalDAVCalendar *)self calendarURL];
        v15 = [v10 da_leastInfoStringRepresentationRelativeToParentURL:v14];

        v16 = DALoggingwithCategory();
        v17 = *(MEMORY[0x277CF3AF0] + 3);
        if (os_log_type_enabled(v16, v17))
        {
          v18 = [v8 objectID];
          *buf = 138543618;
          v35 = v18;
          v36 = 2112;
          v37 = v15;
          _os_log_impl(&dword_242490000, v16, v17, "MobileCalDAVCalendar: ERROR: Could not set url to reminder: %{public}@ %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v12 = DALoggingwithCategory();
      v22 = *(MEMORY[0x277CF3AF0] + 4);
      if (os_log_type_enabled(v12, v22))
      {
        *buf = 138543618;
        v35 = v7;
        v36 = 2114;
        v37 = self;
        _os_log_impl(&dword_242490000, v12, v22, "MobileCalDAVCalendar: Couldn't set url for reminder %{public}@ because it doesn't exist in our ReminderKit database {calendar: %{public}@}.", buf, 0x16u);
      }
    }

    v21 = *(v31 + 24);
  }

  else
  {
    v19 = DALoggingwithCategory();
    v20 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v19, v20))
    {
      *buf = 138543362;
      v35 = self;
      _os_log_impl(&dword_242490000, v19, v20, "MobileCalDAVCalendar: ERROR: Could not find a calendar that matched %{public}@", buf, 0xCu);
    }

    v21 = 0;
  }

  _Block_object_dispose(&v30, 8);
  v23 = *MEMORY[0x277D85DE8];
  return v21 & 1;
}

uint64_t __51__MobileCalDAVCalendar_setURL_forResourceWithUUID___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) setURL:*(a1 + 40) forResourceWithUUID:*(a1 + 48) reminderChangeItem:a2];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (BOOL)setURL:(id)a3 forResourceWithUUID:(id)a4 reminderChangeItem:(id)a5
{
  if (a3)
  {
    v7 = a5;
    v8 = a3;
    v9 = [(MobileCalDAVCalendar *)self calendarURL];
    v10 = [v8 da_leastInfoStringRepresentationRelativeToParentURL:v9];

    [v7 setExternalIdentifier:v10];
    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }

  return a3 != 0;
}

- (BOOL)setEtag:(id)a3 forItemAtURL:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v8 = [(MobileCalDAVCalendar *)self calendarURL];
  v9 = [v7 da_leastInfoStringRepresentationRelativeToParentURL:v8];

  v10 = [(MobileCalDAVCalendar *)self _rem_copyReminderWithExternalID:v9];
  if (v10)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __45__MobileCalDAVCalendar_setEtag_forItemAtURL___block_invoke;
    v22[3] = &unk_278D4F668;
    v25 = &v26;
    v22[4] = self;
    v23 = v6;
    v24 = v7;
    v21 = 0;
    v11 = rem_ReminderSetPropertiesWithBlock(v10, v22, &v21);
    v12 = v21;
    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11;
    }

    if ((v13 & 1) == 0)
    {
      v14 = DALoggingwithCategory();
      v15 = *(MEMORY[0x277CF3AF0] + 3);
      if (os_log_type_enabled(v14, v15))
      {
        v16 = [v10 objectID];
        *buf = 138543618;
        v31 = v16;
        v32 = 2112;
        v33 = v9;
        _os_log_impl(&dword_242490000, v14, v15, "MobileCalDAVCalendar: ERROR: Could not set etag to reminder: %{public}@ %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v12 = DALoggingwithCategory();
    v17 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(v12, v17))
    {
      *buf = 138412546;
      v31 = v7;
      v32 = 2114;
      v33 = self;
      _os_log_impl(&dword_242490000, v12, v17, "MobileCalDAVCalendar: Couldn't set etag for the reminder at %@ because it doesn't exist in our ReminderKit database {calendar: %{public}@}.", buf, 0x16u);
    }
  }

  v18 = *(v27 + 24);
  _Block_object_dispose(&v26, 8);

  v19 = *MEMORY[0x277D85DE8];
  return v18 & 1;
}

uint64_t __45__MobileCalDAVCalendar_setEtag_forItemAtURL___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) setEtag:*(a1 + 40) forItemAtURL:*(a1 + 48) reminderChangeItem:a2];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (BOOL)setEtag:(id)a3 forItemAtURL:(id)a4 reminderChangeItem:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [(MobileCalDAVCalendar *)self calendarURL];
  v12 = [v10 da_leastInfoStringRepresentationRelativeToParentURL:v11];

  [v9 setExternalModificationTag:v8];
  if (v10)
  {
    URLToEtagMap = self->_URLToEtagMap;
    if (v8)
    {
      [(NSMutableDictionary *)URLToEtagMap setObject:v8 forKeyedSubscript:v12];
    }

    else
    {
      [(NSMutableDictionary *)URLToEtagMap removeObjectForKey:v12];
    }
  }

  [(MobileCalDAVCalendar *)self setIsDirty:1];

  return 1;
}

- (BOOL)setScheduleTag:(id)a3 forItemAtURL:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v7, v8))
  {
    v11 = 138412802;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = 0;
    _os_log_impl(&dword_242490000, v7, v8, "XXXXXXXXXX: Do we really need setScheduleTag for reminders? {tag: %@, url: %@, stack: %@}", &v11, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)updateResourcesFromServer:(id)a3
{
  v70 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [MEMORY[0x277D447F0] sync];
    v7 = os_signpost_id_generate(v6);
    v8 = v6;
    v9 = v8;
    v10 = v7 - 1;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 134349056;
      v66 = [v5 count];
      _os_signpost_emit_with_name_impl(&dword_242490000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "CalDav.updateBatch", "resourceCount=%{public, signpost.telemetry:number1, Name=Count}ld", buf, 0xCu);
    }

    spid = v7;

    v11 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
    v12 = v11 != 0;
    v54 = v11;
    if (v11)
    {
      v49 = v10;
      v50 = v11 != 0;
      v51 = v9;
      v53 = [(MobileCalDAVCalendar *)self rem_saveRequest];
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v52 = v5;
      v13 = v5;
      v57 = [v13 countByEnumeratingWithState:&v61 objects:v69 count:16];
      if (v57)
      {
        v56 = *v62;
        type = *(MEMORY[0x277CF3AF0] + 6);
        obj = v13;
        do
        {
          for (i = 0; i != v57; ++i)
          {
            if (*v62 != v56)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v61 + 1) + 8 * i);
            v16 = [(MobileCalDAVCalendar *)self principal];
            v17 = [v16 account];
            v18 = [v17 movedItemURLStrings];
            v19 = [v15 serverID];
            v20 = [(MobileCalDAVCalendar *)self calendarURL];
            v21 = [v19 da_leastInfoStringRepresentationRelativeToParentURL:v20];
            v22 = [v18 containsObject:v21];

            if (v22)
            {
              v23 = DALoggingwithCategory();
              if (os_log_type_enabled(v23, type))
              {
                v24 = [v15 serverID];
                *buf = 138412290;
                v66 = v24;
                _os_log_impl(&dword_242490000, v23, type, "Dropping server change for %@ on the floor because we have a move change for it", buf, 0xCu);
              }
            }

            else
            {
              v60 = 0;
              v25 = [(MobileCalDAVCalendar *)self daPrincipal];
              v26 = [v25 account];
              v27 = [v26 wasMigrated];
              v28 = [(MobileCalDAVCalendar *)self daPrincipal];
              v29 = [v28 account];
              v23 = [v15 saveWithLocalObject:0 toContainer:v54 shouldMergeProperties:v27 outMergeDidChooseLocalProperties:&v60 account:v29 calendar:self batchSaveRequest:{v53, spid}];

              LODWORD(v26) = v60;
              v30 = DALoggingwithCategory();
              v31 = os_log_type_enabled(v30, type);
              if (v26 == 1)
              {
                if (v31)
                {
                  v32 = [v15 serverID];
                  *buf = 138412290;
                  v66 = v32;
                  _os_log_impl(&dword_242490000, v30, type, "The event at %@ was modified locally. Forcing it to the server.", buf, 0xCu);
                }
              }

              else
              {
                if (v31)
                {
                  v33 = [v15 serverID];
                  v34 = [v15 syncKey];
                  *buf = 138412546;
                  v66 = v33;
                  v67 = 2114;
                  v68 = v34;
                  _os_log_impl(&dword_242490000, v30, type, "Saved resource from %@ to the database. Etag is %{public}@", buf, 0x16u);
                }

                v35 = [v15 syncKey];
                v36 = [v15 serverID];
                [(MobileCalDAVCalendar *)self setEtag:v35 forItemAtURL:v36 reminderChangeItem:v23];

                [(MobileCalDAVCalendar *)self setIsDirty:1];
              }
            }
          }

          v13 = obj;
          v57 = [obj countByEnumeratingWithState:&v61 objects:v69 count:16];
        }

        while (v57);
      }

      v59 = 0;
      v37 = v53;
      v38 = [v53 saveSynchronouslyWithError:&v59];
      v39 = v59;
      v9 = v51;
      if ((v38 & 1) == 0)
      {
        v40 = DALoggingwithCategory();
        v41 = *(MEMORY[0x277CF3AF0] + 3);
        if (os_log_type_enabled(v40, v41))
        {
          *buf = 138543362;
          v66 = v39;
          _os_log_impl(&dword_242490000, v40, v41, "Failed to save batchSaveRequest {error: %{public}@}", buf, 0xCu);
        }
      }

      [(MobileCalDAVCalendar *)self rem_invalidateCalCalendarWithReload:0];
      if ([v13 count])
      {
        -[MobileCalDAVCalendar setNumDownloadedElements:](self, "setNumDownloadedElements:", -[MobileCalDAVCalendar numDownloadedElements](self, "numDownloadedElements") + [v13 count]);
      }

      v42 = v51;
      v43 = v42;
      v12 = v50;
      if (v49 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_242490000, v43, OS_SIGNPOST_INTERVAL_END, spid, "CalDav.updateBatch", &unk_2424C3675, buf, 2u);
      }

      v5 = v52;
    }

    else
    {
      v37 = DALoggingwithCategory();
      v45 = *(MEMORY[0x277CF3AF0] + 4);
      if (os_log_type_enabled(v37, v45))
      {
        *buf = 138543362;
        v66 = self;
        _os_log_impl(&dword_242490000, v37, v45, "MobileCalDAVCalendar: Could not find a list that matched to updateResourcesFromServer %{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
    v9 = DALoggingwithCategory();
    v44 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v9, v44))
    {
      *buf = 138543362;
      v66 = self;
      _os_log_impl(&dword_242490000, v9, v44, "MobileCalDAVCalendar: Nil or empty resources param for updateResourcesFromServer %{public}@", buf, 0xCu);
    }

    v12 = 1;
  }

  v46 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)_removeCalendarItemWithURL:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  if (v5)
  {
    v6 = [(MobileCalDAVCalendar *)self calendarURL];
    v7 = [(MobileCalDAVCalendar *)v4 da_leastInfoStringRepresentationRelativeToParentURL:v6];

    v8 = [(MobileCalDAVCalendar *)self _rem_copyReminderWithExternalID:v7];
    if (v8)
    {
      v9 = [(MobileCalDAVCalendar *)self rem_saveRequest];
      v10 = [v9 updateReminder:v8];
      [v10 removeFromList];
      v23 = 0;
      v11 = [v9 saveSynchronouslyWithError:&v23];
      v12 = v23;
      if ((v11 & 1) == 0)
      {
        v13 = DALoggingwithCategory();
        v14 = *(MEMORY[0x277CF3AF0] + 3);
        if (os_log_type_enabled(v13, v14))
        {
          [v8 objectID];
          v21 = type = v14;
          v15 = [v12 localizedDescription];
          *buf = 138543874;
          v25 = v21;
          v26 = 2114;
          v27 = self;
          v28 = 2114;
          v29 = v15;
          v16 = v15;
          _os_log_impl(&dword_242490000, v13, type, "MobileCalDAVCalendar: ERROR: Failed to save delete of reminder {reminder: %{public}@, calendar: %{public}@, error: %{public}@}.", buf, 0x20u);
        }
      }

      [(MobileCalDAVCalendar *)self setIsDirty:1];
      [(MobileCalDAVCalendar *)self setNumDownloadedElements:[(MobileCalDAVCalendar *)self numDownloadedElements]+ 1];
    }

    else
    {
      v9 = DALoggingwithCategory();
      v18 = *(MEMORY[0x277CF3AF0] + 4);
      if (os_log_type_enabled(v9, v18))
      {
        *buf = 138412546;
        v25 = v4;
        v26 = 2114;
        v27 = self;
        _os_log_impl(&dword_242490000, v9, v18, "MobileCalDAVCalendar: Couldn't remove reminder at %@ because it doesn't exist in our ReminderKit database {calendar: %{public}@}.", buf, 0x16u);
      }
    }
  }

  else
  {
    v7 = DALoggingwithCategory();
    v17 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v7, v17))
    {
      *buf = 138543362;
      v25 = self;
      _os_log_impl(&dword_242490000, v7, v17, "MobileCalDAVCalendar: ERROR: Could not find a calendar that matched %{public}@", buf, 0xCu);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)deleteResourcesAtURLs:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(MobileCalDAVCalendar *)self _removeCalendarItemWithURL:*(*(&v11 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)hasEvents
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277CF3AF0] + 3);
  if (os_log_type_enabled(v2, v3))
  {
    v6 = 138412290;
    v7 = 0;
    _os_log_impl(&dword_242490000, v2, v3, "MobileCalDAVCalendar: ERROR: LOOKATME: Unexpected call -hasEvents {stack=%@}.", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)isHidden
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277CF3AF0] + 3);
  if (os_log_type_enabled(v2, v3))
  {
    v6 = 138412290;
    v7 = 0;
    _os_log_impl(&dword_242490000, v2, v3, "MobileCalDAVCalendar: ERROR: LOOKATME: Unexpected call -isHidden {stack=%@}.", &v6, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
  return 0;
}

- (NSString)displayColor
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 3);
  if (os_log_type_enabled(v3, v4))
  {
    v8 = 138412290;
    v9 = 0;
    _os_log_impl(&dword_242490000, v3, v4, "MobileCalDAVCalendar: ERROR: LOOKATME: Unexpected call -displayColor {stack=%@}.", &v8, 0xCu);
  }

  v5 = [(MobileCalDAVCalendar *)self color];
  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSString)accountID
{
  v2 = [(MobileCalDAVCalendar *)self principal];
  v3 = [v2 account];
  v4 = [v3 accountID];

  return v4;
}

- (id)rem_initCalCalendarWithTitle:(id)a3
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MobileCalDAVCalendar *)self rem_calCalendar];

  if (v5)
  {
    v6 = [(MobileCalDAVCalendar *)self rem_calCalendar];
    goto LABEL_49;
  }

  v7 = [(MobileCalDAVCalendar *)self rem_store];
  if (!v7)
  {
    v10 = DALoggingwithCategory();
    v19 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v10, v19))
    {
      *buf = 0;
      _os_log_impl(&dword_242490000, v10, v19, "Couldn't get an REMStore ref. This isn't the time to create a calendar", buf, 2u);
    }

    goto LABEL_48;
  }

  v8 = [(MobileCalDAVCalendar *)self accountID];
  v69 = 0;
  v9 = [v7 fetchAccountWithExternalIdentifier:v8 error:&v69];
  v10 = v69;

  if (v9)
  {
    v11 = [(MobileCalDAVCalendar *)self principal];
    v12 = [v11 account];
    v13 = [v12 wasMigrated];

    if (v13)
    {
      v68 = v10;
      v14 = [v9 fetchListsIncludingSpecialContainersWithError:&v68];
      v15 = v68;

      if ([v14 count])
      {
        v16 = 0;
        while (1)
        {
          v17 = [v14 objectAtIndexedSubscript:v16];
          v18 = [v17 name];
          if ([v4 isEqualToString:v18])
          {
            break;
          }

          if (++v16 >= [v14 count])
          {
            goto LABEL_16;
          }
        }

        rem_calCalendar = self->_rem_calCalendar;
        self->_rem_calCalendar = v17;
      }

LABEL_16:

      v10 = v15;
    }

    v24 = [(MobileCalDAVCalendar *)self rem_calCalendar];

    if (v24)
    {
      v25 = 0;
    }

    else
    {
      v26 = [(MobileCalDAVCalendar *)self rem_saveRequest];
      v27 = [v26 updateAccount:v9];
      v28 = v4;
      if (v28)
      {
        v29 = v28;
      }

      else
      {
        v29 = @"__untitled__";
      }

      v63 = v29;
      v64 = v27;
      v30 = [v26 addListWithName:? toAccountChangeItem:?];
      v31 = [(MobileCalDAVCalendar *)self calendarURLString];
      [v30 setExternalIdentifier:v31];

      v32 = [(MobileCalDAVCalendar *)self guid];
      [v30 setDaExternalIdentificationTag:v32];

      v67 = v10;
      v33 = [v26 saveSynchronouslyWithError:&v67];
      v34 = v67;

      v35 = DALoggingwithCategory();
      v36 = v35;
      v65 = v33;
      if (v33)
      {
        v37 = *(MEMORY[0x277CF3AF0] + 5);
        if (os_log_type_enabled(v35, v37))
        {
          v38 = [v30 objectID];
          v62 = [(MobileCalDAVCalendar *)self calendarURLString];
          *buf = 138543618;
          v71 = v38;
          v72 = 2112;
          v73 = v62;
          _os_log_impl(&dword_242490000, v36, v37, "MobileCalDAVCalendar: SUCCESS: Created list %{public}@ for %@.", buf, 0x16u);
        }

        v36 = [v30 objectID];
        v66 = v34;
        v39 = [v7 fetchListIncludingSpecialContainerWithObjectID:v36 error:&v66];
        v40 = v66;

        v41 = self->_rem_calCalendar;
        self->_rem_calCalendar = v39;

        v34 = v40;
      }

      else
      {
        v42 = *(MEMORY[0x277CF3AF0] + 3);
        if (os_log_type_enabled(v35, v42))
        {
          v43 = [(MobileCalDAVCalendar *)self calendarURLString];
          *buf = 138412290;
          v71 = v43;
          _os_log_impl(&dword_242490000, v36, v42, "MobileCalDAVCalendar: ERROR: Failed to create list for calendar: %@.", buf, 0xCu);
        }
      }

      v10 = v34;
      v25 = v65;
    }

    v44 = [(MobileCalDAVCalendar *)self rem_calCalendar];

    if (v44)
    {
      [(MobileCalDAVCalendar *)self _rem_updateCalendarOwnerInfo];
      v45 = [(MobileCalDAVCalendar *)self principal];
      v46 = [v45 isWritable];

      v47 = MEMORY[0x277CF3AF0];
      if ((v46 & 1) == 0)
      {
        v48 = DALoggingwithCategory();
        v49 = *(v47 + 3);
        if (os_log_type_enabled(v48, v49))
        {
          v50 = [(MobileCalDAVCalendar *)self calendarURLString];
          *buf = 138412546;
          v71 = v50;
          v72 = 2112;
          v73 = 0;
          _os_log_impl(&dword_242490000, v48, v49, "MobileCalDAVCalendar: ERROR: LOOKATME: Readonly calendars is not supported by DA in remindd. Check why principal is not writable. {url: %@, stack: %@}", buf, 0x16u);
        }
      }

      v51 = DALoggingwithCategory();
      v52 = *(v47 + 5);
      v53 = os_log_type_enabled(v51, v52);
      if (v25)
      {
        if (v53)
        {
          v54 = [(MobileCalDAVCalendar *)self calendarURLString];
          *buf = 138412546;
          v71 = v54;
          v72 = 2112;
          v73 = 0;
          _os_log_impl(&dword_242490000, v51, v52, "MobileCalDAVCalendar: ******Creating calendar with url %@ %@", buf, 0x16u);
        }
      }

      else if (v53)
      {
        *buf = 138412290;
        v71 = v4;
        _os_log_impl(&dword_242490000, v51, v52, "MobileCalDAVCalendar: Merged calendar titled %@ with calDAV", buf, 0xCu);
      }

      v57 = [(MobileCalDAVCalendar *)self rem_calCalendar];
      if (!v57)
      {
        goto LABEL_47;
      }

      v58 = v57;
      v59 = [(MobileCalDAVCalendar *)self calendarURLString];

      if (!v59)
      {
        goto LABEL_47;
      }

      v20 = [(MobileCalDAVCalendar *)self rem_calCalendar];
      v22 = [v20 objectID];
      v56 = [(MobileCalDAVCalendar *)self calendarURLString];
      [MobileCalDAVCalendar rem_cacheListObjectID:v22 forCalendarURLString:v56];
      goto LABEL_44;
    }

    v20 = DALoggingwithCategory();
    v55 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v20, v55))
    {
      v22 = [(MobileCalDAVCalendar *)self guid];
      v56 = [(MobileCalDAVCalendar *)self calendarURLString];
      *buf = 138543618;
      v71 = v22;
      v72 = 2112;
      v73 = v56;
      _os_log_impl(&dword_242490000, v20, v55, "Could not obtain a calendar ref for {guid: %{public}@, url: %@}.", buf, 0x16u);
LABEL_44:

      goto LABEL_45;
    }
  }

  else
  {
    v20 = DALoggingwithCategory();
    v21 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = [(MobileCalDAVCalendar *)self guid];
      *buf = 138543618;
      v71 = v22;
      v72 = 2114;
      v73 = v10;
      _os_log_impl(&dword_242490000, v20, v21, "MobileCalDAVCalendar: ERROR: Could not get an account. Cowardly refusing to create a calendar with UID %{public}@. Error: %{public}@.", buf, 0x16u);
LABEL_45:
    }
  }

LABEL_47:
LABEL_48:

  v6 = [(MobileCalDAVCalendar *)self rem_calCalendar];

LABEL_49:
  v60 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)rem_store
{
  v2 = [(MobileCalDAVCalendar *)self daPrincipal];
  v3 = [v2 account];

  v4 = [v3 rem_store];

  return v4;
}

- (id)rem_saveRequest
{
  v2 = [(MobileCalDAVCalendar *)self daPrincipal];
  v3 = [v2 account];

  v4 = [v3 rem_saveRequest];

  return v4;
}

- (REMAccount)rem_account
{
  v2 = [(MobileCalDAVCalendar *)self daPrincipal];
  v3 = [v2 account];

  v4 = [v3 rem_account];

  return v4;
}

- (id)rem_getCalCalendar
{
  v64 = *MEMORY[0x277D85DE8];
  v3 = [(MobileCalDAVCalendar *)self rem_calCalendar];

  if (v3)
  {
    v4 = [(MobileCalDAVCalendar *)self rem_calCalendar];
    goto LABEL_43;
  }

  v5 = [(MobileCalDAVCalendar *)self calendarURLString];

  if (!v5)
  {
    v4 = 0;
    goto LABEL_43;
  }

  v6 = 0x278D4E000uLL;
  v7 = [(MobileCalDAVCalendar *)self calendarURLString];
  v8 = [MobileCalDAVCalendar rem_cachedListObjectIDForURLString:v7];

  v9 = MEMORY[0x277CF3AF0];
  if (v8)
  {
    v10 = DALoggingwithCategory();
    v11 = v9[5];
    if (os_log_type_enabled(v10, v11))
    {
      v12 = [(MobileCalDAVCalendar *)self calendarURLString];
      *buf = 138543618;
      v57 = v8;
      v58 = 2112;
      v59 = v12;
      _os_log_impl(&dword_242490000, v10, v11, "MobileCalDAVCalendar: Found a cached list object ID (%{public}@) for url %@", buf, 0x16u);
    }

    v13 = [(MobileCalDAVCalendar *)self rem_store];
    v55 = 0;
    v14 = [v13 fetchListIncludingSpecialContainerWithObjectID:v8 error:&v55];
    v15 = v55;
    rem_calCalendar = self->_rem_calCalendar;
    self->_rem_calCalendar = v14;

    if (v15 && [v15 code] != -3000)
    {
      v17 = DALoggingwithCategory();
      v23 = v9[3];
      if (os_log_type_enabled(v17, v23))
      {
        v18 = [(MobileCalDAVCalendar *)self calendarURLString];
        *buf = 138544130;
        v57 = v8;
        v58 = 2112;
        v59 = v18;
        v60 = 2114;
        v61 = v15;
        v62 = 2112;
        v63 = 0;
        v19 = "ERROR: MobileCalDAVCalendar: Could not fetch list with object ID %{public}@. Url: %@. Error: %{public}@, Stack Trace: %@.";
        v20 = v17;
        v21 = v23;
        v22 = 42;
        goto LABEL_16;
      }
    }

    else
    {
      if (self->_rem_calCalendar && [v15 code] != -3000)
      {
        goto LABEL_18;
      }

      v17 = DALoggingwithCategory();
      if (os_log_type_enabled(v17, v11))
      {
        v18 = [(MobileCalDAVCalendar *)self calendarURLString];
        *buf = 138543874;
        v57 = v8;
        v58 = 2112;
        v59 = v18;
        v60 = 2112;
        v61 = 0;
        v19 = "MobileCalDAVCalendar: Could not find a list with object ID %{public}@. Url: %@, Stack Trace: %@.";
        v20 = v17;
        v21 = v11;
        v22 = 32;
LABEL_16:
        _os_log_impl(&dword_242490000, v20, v21, v19, buf, v22);
      }
    }

LABEL_18:
    v24 = [(MobileCalDAVCalendar *)self rem_calCalendar];

    if (!v24)
    {
      v25 = [(MobileCalDAVCalendar *)self calendarURLString];
      [MobileCalDAVCalendar rem_removeListObjectIDCacheEntryForCalendarURLString:v25];
    }
  }

  v26 = [(MobileCalDAVCalendar *)self rem_calCalendar];

  if (v26)
  {
    goto LABEL_35;
  }

  v27 = [(MobileCalDAVCalendar *)self rem_store];
  if (v27)
  {
    v28 = [(MobileCalDAVCalendar *)self accountID];
    v54 = 0;
    v29 = [v27 fetchAccountWithExternalIdentifier:v28 error:&v54];
    v30 = v54;

    if (!v29)
    {
      v36 = DALoggingwithCategory();
      v42 = v9[3];
      if (os_log_type_enabled(v36, v42))
      {
        v43 = [(MobileCalDAVCalendar *)self accountID];
        *buf = 138543874;
        v57 = v43;
        v58 = 2114;
        v59 = v30;
        v60 = 2112;
        v61 = 0;
        _os_log_impl(&dword_242490000, v36, v42, "ERROR: MobileCalDAVCalendar: Could not get account %{public}@. Error: %{public}@, Stack Trace: %@.", buf, 0x20u);
      }

      goto LABEL_33;
    }

    v31 = [(MobileCalDAVCalendar *)self calendarURLString];
    v53 = v30;
    v32 = [v29 fetchListIncludingSpecialContainerWithExternalIdentifier:v31 error:&v53];
    v33 = v53;

    v34 = self->_rem_calCalendar;
    self->_rem_calCalendar = v32;

    v35 = [(MobileCalDAVCalendar *)self rem_calCalendar];

    v36 = DALoggingwithCategory();
    v37 = v9[5];
    v38 = os_log_type_enabled(v36, v37);
    if (v35)
    {
      if (v38)
      {
        v39 = [(MobileCalDAVCalendar *)self calendarURLString];
        v40 = [(MobileCalDAVCalendar *)self rem_calCalendar];
        v41 = [v40 objectID];
        *buf = 138412546;
        v57 = v39;
        v58 = 2114;
        v59 = v41;
        _os_log_impl(&dword_242490000, v36, v37, "MobileCalDAVCalendar: SUCCESS: Got the backing REM list of calendar with url %@ {objectID=%{public}@}.", buf, 0x16u);

        v9 = MEMORY[0x277CF3AF0];
        v6 = 0x278D4E000;
LABEL_31:
      }
    }

    else if (v38)
    {
      v39 = [(MobileCalDAVCalendar *)self calendarURLString];
      *buf = 138412546;
      v57 = v39;
      v58 = 2112;
      v59 = 0;
      _os_log_impl(&dword_242490000, v36, v37, "MobileCalDAVCalendar: Couldn't find the backing REM list of calendar with url %@, Stack Trace: %@.", buf, 0x16u);
      goto LABEL_31;
    }

    v30 = v33;
LABEL_33:
  }

LABEL_35:
  v44 = [(MobileCalDAVCalendar *)self rem_calCalendar];

  if (!v44)
  {
    v47 = DALoggingwithCategory();
    v50 = v9[7];
    if (!os_log_type_enabled(v47, v50))
    {
LABEL_41:

      goto LABEL_42;
    }

    v48 = [(MobileCalDAVCalendar *)self calendarURLString];
    *buf = 138412290;
    v57 = v48;
    _os_log_impl(&dword_242490000, v47, v50, "Couldn't find calendar with url %@.", buf, 0xCu);
LABEL_40:

    goto LABEL_41;
  }

  v45 = [(MobileCalDAVCalendar *)self calendarURLString];

  if (v45)
  {
    v46 = *(v6 + 3592);
    v47 = [(MobileCalDAVCalendar *)self rem_calCalendar];
    v48 = [v47 objectID];
    v49 = [(MobileCalDAVCalendar *)self calendarURLString];
    [v46 rem_cacheListObjectID:v48 forCalendarURLString:v49];

    goto LABEL_40;
  }

LABEL_42:
  v4 = [(MobileCalDAVCalendar *)self rem_calCalendar];

LABEL_43:
  v51 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)_rem_changedListsOfChangeType:(int64_t)a3 withChangeTrackingHelper:(id)a4 inPrincipal:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  if ([MEMORY[0x277CF3AC8] rem_changeTrackingBehaviors])
  {
    v19 = MEMORY[0x277CBEBF8];
    goto LABEL_23;
  }

  v9 = [v8 account];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v11 = DALoggingwithCategory();
    v20 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v11, v20))
    {
      v21 = [v8 account];
      *buf = 138412290;
      v30 = v21;
      _os_log_impl(&dword_242490000, v11, v20, "MobileCalDAVCalendar: CalDAV principal.account is not a MobileCalDAVAccount: %@", buf, 0xCu);
    }

    v19 = 0;
    goto LABEL_22;
  }

  v11 = [v8 account];
  v12 = [v11 rem_account];
  if (!v12)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = [v11 accountDescription];
      *buf = 138412290;
      v30 = v24;
      _os_log_impl(&dword_242490000, v22, v23, "MobileCalDAVCalendar: Cannot get ReminderKit account from principle.account: %@", buf, 0xCu);
    }

    v19 = 0;
    goto LABEL_21;
  }

  if (a3 == 2)
  {
    v25 = [v7 changedIdentifiersOfModelClass:objc_opt_class() ofChangeType:2];
  }

  else
  {
    if (!a3 && [v11 wasMigrated])
    {
      v28 = 0;
      v13 = [v12 fetchListsWithError:&v28];
      v14 = v28;
      if (v14)
      {
        v15 = DALoggingwithCategory();
        v16 = *(MEMORY[0x277CF3AF0] + 3);
        if (os_log_type_enabled(v15, v16))
        {
          v17 = [v12 objectID];
          v18 = [v11 accountDescription];
          *buf = 138543618;
          v30 = v17;
          v31 = 2112;
          v32 = v18;
          _os_log_impl(&dword_242490000, v15, v16, "MobileCalDAVCalendar: Failed to fetch all lists for migrated account: {remAccount: %{public}@, daAccount: %@}", buf, 0x16u);
        }

        v19 = 0;
      }

      else
      {
        v19 = [MEMORY[0x277CBEB18] arrayWithArray:v13];
      }

      goto LABEL_21;
    }

    v25 = [v7 changedModelObjectsOfModelClass:objc_opt_class() ofChangeType:a3];
  }

  v19 = v25;
LABEL_21:

LABEL_22:
LABEL_23:

  v26 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)rem_addedCalendarsWithChangeTrackingHelper:(id)a3 inPrincipal:(id)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a1 _rem_changedListsOfChangeType:0 withChangeTrackingHelper:a3 inPrincipal:v6];
  v8 = [MEMORY[0x277CBEB18] array];
  v40 = v6;
  v9 = [v6 calendars];
  v10 = objc_opt_new();
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v50;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v50 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v49 + 1) + 8 * i);
        v17 = [v16 guid];
        [v10 setObject:v16 forKeyedSubscript:v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v13);
  }

  v38 = v11;

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v7;
  v18 = [obj countByEnumeratingWithState:&v45 objects:v56 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v46;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v46 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v45 + 1) + 8 * j);
        objc_opt_class();
        v23 = REMCheckedDynamicCast();
        v24 = [v23 daExternalIdentificationTag];

        if (!v24 || ([v23 daExternalIdentificationTag], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKey:", v25), v26 = objc_claimAutoreleasedReturnValue(), v25, !v26))
        {
          v27 = [MobileCalDAVCalendar calendarWithREMList:v23 principal:v40];
          if (!v27)
          {
            goto LABEL_18;
          }

          v26 = v27;
        }

        [v8 addObject:v26];

LABEL_18:
      }

      v19 = [obj countByEnumeratingWithState:&v45 objects:v56 count:16];
    }

    while (v19);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v28 = v8;
  v29 = [v28 countByEnumeratingWithState:&v41 objects:v55 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v42;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v42 != v31)
        {
          objc_enumerationMutation(v28);
        }

        [*(*(&v41 + 1) + 8 * k) setWasModifiedLocally:1];
      }

      v30 = [v28 countByEnumeratingWithState:&v41 objects:v55 count:16];
    }

    while (v30);
  }

  v33 = DALoggingwithCategory();
  v34 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v33, v34))
  {
    v35 = [v28 count];
    *buf = 134217984;
    v54 = v35;
    _os_log_impl(&dword_242490000, v33, v34, "%lu added calendars found", buf, 0xCu);
  }

  v36 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (id)rem_modifiedCalendarsWithChangeTrackingHelper:(id)a3 inPrincipal:(id)a4
{
  v58 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [a1 _rem_changedListsOfChangeType:1 withChangeTrackingHelper:a3 inPrincipal:v6];
  v8 = [MEMORY[0x277CBEB18] array];
  v40 = v6;
  v9 = [v6 calendars];
  v10 = objc_opt_new();
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v50;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v50 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v49 + 1) + 8 * i);
        v17 = [v16 guid];
        [v10 setObject:v16 forKeyedSubscript:v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v13);
  }

  v38 = v11;

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v7;
  v18 = [obj countByEnumeratingWithState:&v45 objects:v56 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v46;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v46 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v45 + 1) + 8 * j);
        objc_opt_class();
        v23 = REMCheckedDynamicCast();
        v24 = [v23 daExternalIdentificationTag];

        if (!v24 || ([v23 daExternalIdentificationTag], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKey:", v25), v26 = objc_claimAutoreleasedReturnValue(), v25, !v26))
        {
          v27 = [MobileCalDAVCalendar calendarWithREMList:v23 principal:v40];
          if (!v27)
          {
            goto LABEL_18;
          }

          v26 = v27;
        }

        [v8 addObject:v26];

LABEL_18:
      }

      v19 = [obj countByEnumeratingWithState:&v45 objects:v56 count:16];
    }

    while (v19);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v28 = v8;
  v29 = [v28 countByEnumeratingWithState:&v41 objects:v55 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v42;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v42 != v31)
        {
          objc_enumerationMutation(v28);
        }

        [*(*(&v41 + 1) + 8 * k) setWasModifiedLocally:1];
      }

      v30 = [v28 countByEnumeratingWithState:&v41 objects:v55 count:16];
    }

    while (v30);
  }

  v33 = DALoggingwithCategory();
  v34 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v33, v34))
  {
    v35 = [v28 count];
    *buf = 134217984;
    v54 = v35;
    _os_log_impl(&dword_242490000, v33, v34, "%lu modified calendars found", buf, 0xCu);
  }

  v36 = *MEMORY[0x277D85DE8];

  return v28;
}

+ (id)rem_deletedCalendarsWithChangeTrackingHelper:(id)a3 inPrincipal:(id)a4
{
  v4 = [a1 _rem_changedListsOfChangeType:2 withChangeTrackingHelper:a3 inPrincipal:a4];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [MEMORY[0x277CBEA60] array];
  }

  v7 = v6;

  return v7;
}

- (void)copyAllItemsWithBatchHandler:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v6 = v5;
  if (v5)
  {
    v36 = 0;
    v7 = [v5 fetchRemindersWithError:&v36];
    v8 = v36;
    if (v8)
    {
      v9 = DALoggingwithCategory();
      v10 = *(MEMORY[0x277CF3AF0] + 3);
      if (os_log_type_enabled(v9, v10))
      {
        v11 = [v6 objectID];
        v12 = [v8 localizedDescription];
        *buf = 138543874;
        v39 = v11;
        v40 = 2114;
        v41 = self;
        v42 = 2114;
        v43 = v12;
        _os_log_impl(&dword_242490000, v9, v10, "MobileCalDAVCalendar: ERROR: Could not fetch reminders from list %{public}@ with that matched %{public}@, error: %{public}@.", buf, 0x20u);
      }

      (*(v4 + 2))(v4, MEMORY[0x277CBEBF8], MEMORY[0x277CBEBF8]);
    }

    else
    {
      v29 = v6;
      v15 = [MEMORY[0x277CBEB18] array];
      v16 = [MEMORY[0x277CBEB18] array];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v28 = v7;
      obj = v7;
      v17 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      v30 = v4;
      if (v17)
      {
        v18 = v17;
        v19 = *v33;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v33 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v32 + 1) + 8 * i);
            v22 = [DACalDAViCalItem alloc];
            v23 = [(MobileCalDAVCalendar *)self calendarURL];
            v24 = [(DACalDAViCalItem *)v22 initWithREMReminder:v21 inContainer:v23];

            [v15 addObject:v24];
            [v16 addObject:v21];
            if ([v15 count] >= 0x64)
            {
              v30[2](v30, v15, v16);
              v25 = [MEMORY[0x277CBEB18] array];

              v26 = [MEMORY[0x277CBEB18] array];

              v15 = v25;
              v16 = v26;
            }
          }

          v18 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
        }

        while (v18);
      }

      v4 = v30;
      if ([v15 count])
      {
        v30[2](v30, v15, v16);
      }

      v7 = v28;
      v6 = v29;
      v8 = 0;
    }
  }

  else
  {
    v13 = DALoggingwithCategory();
    v14 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v13, v14))
    {
      *buf = 138543362;
      v39 = self;
      _os_log_impl(&dword_242490000, v13, v14, "MobileCalDAVCalendar: ERROR: Could not find a REM list with that matched %{public}@", buf, 0xCu);
    }

    (*(v4 + 2))(v4, MEMORY[0x277CBEBF8], MEMORY[0x277CBEBF8]);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)copyAddedItemsWithBatchHandler:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([MEMORY[0x277CF3AC8] rem_changeTrackingBehaviors])
  {
    (*(v4 + 2))(v4, MEMORY[0x277CBEBF8], MEMORY[0x277CBEBF8]);
  }

  else
  {
    v5 = [(MobileCalDAVCalendar *)self daPrincipal];
    v6 = [v5 rem_changeTracking];

    v7 = 0x277D44000uLL;
    v23 = v6;
    v8 = [v6 changedModelObjectsOfModelClass:objc_opt_class() ofChangeType:0];
    v9 = [MEMORY[0x277CBEB18] array];
    v10 = [MEMORY[0x277CBEB18] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v8;
    v11 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        v14 = 0;
        do
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v25 + 1) + 8 * v14);
          v16 = *(v7 + 1872);
          objc_opt_class();
          v17 = REMCheckedDynamicCast();
          if ([(MobileCalDAVCalendar *)self _addChangedReminder:v17 toArrayIfNeeded:v9])
          {
            [v10 addObject:v17];
          }

          if ([v9 count] >= 0x64)
          {
            (*(v4 + 2))(v4, v9, v10);
            [MEMORY[0x277CBEB18] array];
            v18 = v13;
            v20 = v19 = v7;

            v21 = [MEMORY[0x277CBEB18] array];

            v10 = v21;
            v9 = v20;
            v7 = v19;
            v13 = v18;
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v12);
    }

    if ([v9 count])
    {
      (*(v4 + 2))(v4, v9, v10);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)copyModifiedItemsWithBatchHandler:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([MEMORY[0x277CF3AC8] rem_changeTrackingBehaviors])
  {
    (*(v4 + 2))(v4, MEMORY[0x277CBEBF8], MEMORY[0x277CBEBF8]);
  }

  else
  {
    v5 = [(MobileCalDAVCalendar *)self daPrincipal];
    v6 = [v5 rem_changeTracking];

    v7 = 0x277D44000uLL;
    v23 = v6;
    v8 = [v6 changedModelObjectsOfModelClass:objc_opt_class() ofChangeType:1];
    v9 = [MEMORY[0x277CBEB18] array];
    v10 = [MEMORY[0x277CBEB18] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    obj = v8;
    v11 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        v14 = 0;
        do
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v25 + 1) + 8 * v14);
          v16 = *(v7 + 1872);
          objc_opt_class();
          v17 = REMCheckedDynamicCast();
          if ([(MobileCalDAVCalendar *)self _addChangedReminder:v17 toArrayIfNeeded:v9])
          {
            [v10 addObject:v17];
          }

          if ([v9 count] >= 0x64)
          {
            (*(v4 + 2))(v4, v9, v10);
            [MEMORY[0x277CBEB18] array];
            v18 = v13;
            v20 = v19 = v7;

            v21 = [MEMORY[0x277CBEB18] array];

            v10 = v21;
            v9 = v20;
            v7 = v19;
            v13 = v18;
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v12);
    }

    if ([v9 count])
    {
      (*(v4 + 2))(v4, v9, v10);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)copyDeletedItems
{
  v31 = *MEMORY[0x277D85DE8];
  v20 = objc_opt_new();
  v3 = [(MobileCalDAVCalendar *)self daPrincipal];
  v4 = [v3 rem_changeTracking];

  v5 = [v4 changedIdentifiersOfModelClass:objc_opt_class() ofChangeType:2];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    type = *(MEMORY[0x277CF3AF0] + 5);
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        objc_opt_class();
        v11 = REMCheckedDynamicCast();
        objc_opt_class();
        v12 = [(MobileCalDAVCalendar *)self calendarURLString];
        v13 = REMCheckedDynamicCast();

        if (v11)
        {
          v14 = v13 == 0;
        }

        else
        {
          v14 = 1;
        }

        if (!v14 && [v11 hasPrefix:v13])
        {
          v15 = v11;
          v16 = [MEMORY[0x277CBEB68] null];
          [v20 setObject:v16 forKeyedSubscript:v15];

          v17 = DALoggingwithCategory();
          if (os_log_type_enabled(v17, type))
          {
            *buf = 138412546;
            v27 = v15;
            v28 = 2114;
            v29 = self;
            _os_log_impl(&dword_242490000, v17, type, "MobileCalDAVCalendar: Collected a DELETED ReminderKit reminder change in calendar {externalID: %@, calendar: %{public}@}", buf, 0x16u);
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v7);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)clearEventChanges
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    *v5 = 0;
    _os_log_impl(&dword_242490000, v3, v4, "Clearing event changes", v5, 2u);
  }

  [(MobileCalDAVCalendar *)self setDeletedCalendarItems:0];
}

- (BOOL)_addChangedReminder:(id)a3 toArrayIfNeeded:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = [v8 objectID];
  if (!v8)
  {
    v11 = DALoggingwithCategory();
    v24 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v11, v24))
    {
      *buf = 138543362;
      v48 = self;
      _os_log_impl(&dword_242490000, v11, v24, "MobileCalDAVCalendar: ERROR: Got a nil changed reminder in calendar %{public}@.", buf, 0xCu);
    }

    goto LABEL_18;
  }

  v10 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v11 = v10;
  if (!v10)
  {
    v25 = DALoggingwithCategory();
    v26 = *(MEMORY[0x277CF3AF0] + 5);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = [v8 objectID];
      *buf = 138543618;
      v48 = self;
      v49 = 2114;
      v50 = v27;
      _os_log_impl(&dword_242490000, v25, v26, "MobileCalDAVCalendar: Couldn't find the REM list of this calendar when adding changed reminder {calendar: %{public}@, reminder: %{public}@}.", buf, 0x16u);
    }

    goto LABEL_18;
  }

  v12 = [v10 objectID];
  v13 = [v8 list];
  v14 = [v13 objectID];
  v15 = [v12 isEqual:v14];

  if (!v15)
  {
LABEL_18:
    v28 = 0;
    goto LABEL_19;
  }

  v40 = self;
  v41 = v7;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v16 = v7;
  v17 = [v16 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v43;
LABEL_6:
    v20 = 0;
    while (1)
    {
      if (*v43 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v21 = *(*(&v42 + 1) + 8 * v20);
      v22 = [v21 rem_clientID];
      v23 = [v9 isEqual:v22];

      if (v23)
      {
        break;
      }

      if (v18 == ++v20)
      {
        v18 = [v16 countByEnumeratingWithState:&v42 objects:v46 count:16];
        if (v18)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }
    }

    v31 = v21;

    if (!v31)
    {
      goto LABEL_22;
    }

    v28 = 0;
    v32 = v40;
  }

  else
  {
LABEL_12:

LABEL_22:
    v33 = [DACalDAViCalItem alloc];
    v32 = v40;
    v34 = [(MobileCalDAVCalendar *)v40 calendarURL];
    v31 = [(DACalDAViCalItem *)v33 initWithREMReminder:v8 inContainer:v34];

    [v16 addObject:v31];
    v28 = 1;
  }

  v35 = DALoggingwithCategory();
  v36 = *(MEMORY[0x277CF3AF0] + 5);
  v7 = v41;
  if (os_log_type_enabled(v35, v36))
  {
    v37 = [v8 objectID];
    v38 = v32;
    v39 = v37;
    *buf = 138543618;
    v48 = v37;
    v49 = 2114;
    v50 = v38;
    _os_log_impl(&dword_242490000, v35, v36, "MobileCalDAVCalendar: Collected an INSERTED or MODIFIED ReminderKit reminder change in calendar: {reminder: %{public}@, calendar: %{public}@}.", buf, 0x16u);
  }

LABEL_19:
  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

- (id)_createActionsForItems:(id)a3 withAction:(int)a4 backingReminders:(id)a5 alreadySentItems:(id)a6 createServerIDs:(BOOL)a7 shouldSave:(BOOL *)a8
{
  v99 = a7;
  v95 = a2;
  v136 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = [v11 count];
  v104 = v12;
  v15 = v12;
  v16 = self;
  if (v14 != [v15 count])
  {
    [MobileCalDAVCalendar _createActionsForItems:withAction:backingReminders:alreadySentItems:createServerIDs:shouldSave:];
  }

  v103 = objc_opt_new();
  context = objc_autoreleasePoolPush();
  v97 = [(MobileCalDAVCalendar *)self rem_saveRequest];
  v112 = [MEMORY[0x277CBEB38] dictionary];
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v17 = v11;
  v18 = [v17 countByEnumeratingWithState:&v122 objects:v135 count:16];
  obj = v17;
  v111 = self;
  v102 = v13;
  if (v18)
  {
    v19 = v18;
    v20 = *v123;
    type = *(MEMORY[0x277CF3AF0] + 6);
    v107 = *(MEMORY[0x277CF3AF0] + 5);
    v21 = *(MEMORY[0x277CF3AF0] + 3);
    v22 = -1;
    v101 = *v123;
    do
    {
      v23 = 0;
      v105 = v19;
      do
      {
        v24 = v21;
        if (*v123 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v122 + 1) + 8 * v23);
        ++v22;
        v26 = [v25 rem_reminderItem];

        if (v26)
        {
          v27 = [v25 rem_reminderItem];
          v28 = [v27 objectID];

          if (v28 && ([v13 containsObject:v28] & 1) == 0)
          {
            v29 = [v104 objectAtIndexedSubscript:v22];
            v30 = [v29 objectID];
            v31 = [v28 isEqual:v30];

            if ((v31 & 1) == 0)
            {
              [MobileCalDAVCalendar _createActionsForItems:withAction:backingReminders:alreadySentItems:createServerIDs:shouldSave:];
            }

            v32 = [v25 serverID];
            v33 = [(MobileCalDAVCalendar *)v16 calendarURL];
            v34 = [v32 da_leastInfoStringRepresentationRelativeToParentURL:v33];

            v35 = [v25 serverID];

            v113 = v29;
            if (v35 || !v99)
            {
              [v25 populateDataPayloadWithReminder:v29];
              v45 = v34;
            }

            else
            {
              v100 = v34;
              v36 = [v25 rem_reminderItem];
              v37 = [v36 daCalendarItemUniqueIdentifier];

              v38 = v37;
              if (!v37)
              {
                v38 = [MEMORY[0x277CCACA8] da_newGUID];
              }

              v39 = [(MobileCalDAVCalendar *)v16 calendarURL];
              v106 = v38;
              [DACalDAViCalItem filenameWithUniqueIdentifier:v38];
              v41 = v40 = v16;
              v42 = [v39 URLByAppendingPathComponent:v41];
              [v25 setServerID:v42];

              v43 = [v25 serverID];
              v44 = [(MobileCalDAVCalendar *)v40 calendarURL];
              v45 = [v43 da_leastInfoStringRepresentationRelativeToParentURL:v44];

              v46 = [v97 updateReminder:v113];
              v47 = v46;
              if (!v37)
              {
                [v46 setDaCalendarItemUniqueIdentifier:v106];
              }

              [v47 setExternalIdentifier:v45];
              [v112 setObject:v25 forKeyedSubscript:v28];
              v48 = DALoggingwithCategory();
              if (os_log_type_enabled(v48, type))
              {
                v49 = [v25 serverID];
                *buf = 138543874;
                v128 = v28;
                v129 = 2112;
                v130 = v49;
                v131 = 2114;
                v132 = v111;
                _os_log_impl(&dword_242490000, v48, type, "MobileCalDAVCalendar: Created server ID for {reminderID: %{public}@, url: %@, calendar: %{public}@}", buf, 0x20u);
              }
            }

            v51 = [objc_alloc(MEMORY[0x277CFDB90]) initWithAction:a4 context:v25];
            [v103 addObject:v51];
            v52 = DALoggingwithCategory();
            if (os_log_type_enabled(v52, v107))
            {
              v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a4];
              v54 = [v25 serverID];
              *buf = 138544130;
              v128 = v53;
              v129 = 2114;
              v130 = v28;
              v131 = 2112;
              v132 = v54;
              v133 = 2114;
              v134 = v111;
              _os_log_impl(&dword_242490000, v52, v107, "MobileCalDAVCalendar: Added actions for item {actionType: %{public}@, reminderID: %{public}@, url: %@, calendar: %{public}@}", buf, 0x2Au);
            }

            v13 = v102;
            [v102 addObject:v28];

            v16 = v111;
            v20 = v101;
            v19 = v105;
          }
        }

        else
        {
          v28 = DALoggingwithCategory();
          v21 = v24;
          if (!os_log_type_enabled(v28, v24))
          {
            goto LABEL_29;
          }

          v50 = [v25 serverID];
          *buf = 138412290;
          v128 = v50;
          _os_log_impl(&dword_242490000, v28, v24, "Couldn't find a reminder for an added reminder: %@", buf, 0xCu);
        }

        v21 = v24;
LABEL_29:

        ++v23;
      }

      while (v19 != v23);
      v19 = [obj countByEnumeratingWithState:&v122 objects:v135 count:16];
    }

    while (v19);
  }

  if ([v112 count])
  {
    v121 = 0;
    v55 = [v97 saveSynchronouslyWithError:&v121];
    v56 = v121;
    v57 = DALoggingwithCategory();
    v58 = v57;
    if (v55)
    {
      v59 = *(MEMORY[0x277CF3AF0] + 5);
      if (os_log_type_enabled(v57, v59))
      {
        v60 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v112, "count")}];
        *buf = 138543362;
        v128 = v60;
        v61 = "MobileCalDAVCalendar: Batch saved pending send reminders successfully: (batchSize: %{public}@)";
        v62 = v58;
        v63 = v59;
        v64 = 12;
LABEL_37:
        _os_log_impl(&dword_242490000, v62, v63, v61, buf, v64);
      }
    }

    else
    {
      v65 = *(MEMORY[0x277CF3AF0] + 3);
      if (os_log_type_enabled(v57, v65))
      {
        v60 = [v112 allKeys];
        *buf = 138543618;
        v128 = v56;
        v129 = 2112;
        v130 = v60;
        v61 = "MobileCalDAVCalendar: ERROR: Batch save pending send reminders failed: (error: %{public}@, batch: %@)";
        v62 = v58;
        v63 = v65;
        v64 = 22;
        goto LABEL_37;
      }
    }

    v16 = v111;
  }

  v66 = [v112 allKeys];
  v67 = [(MobileCalDAVCalendar *)v16 rem_store];
  v120 = 0;
  v68 = [v67 fetchRemindersWithObjectIDs:v66 error:&v120];
  v69 = v120;
  v70 = v69;
  if (!v68 || v69)
  {
    v91 = DALoggingwithCategory();
    v92 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v91, v92))
    {
      *buf = 138543618;
      v128 = v70;
      v129 = 2112;
      v130 = v66;
      _os_log_impl(&dword_242490000, v91, v92, "MobileCalDAVCalendar: ERROR: Refetch updated pending send reminders failed: (error: %{public}@, batch: %@)", buf, 0x16u);
    }

    v76 = v91;
  }

  else
  {
    v71 = [v112 count];
    if (v71 != [v68 count])
    {
      v72 = DALoggingwithCategory();
      v73 = *(MEMORY[0x277CF3AF0] + 3);
      if (os_log_type_enabled(v72, v73))
      {
        v74 = [v112 allKeys];
        v75 = [v68 allKeys];
        *buf = 138412546;
        v128 = v74;
        v129 = 2112;
        v130 = v75;
        _os_log_impl(&dword_242490000, v72, v73, "MobileCalDAVCalendar: ERROR: Refetched reminders count doesn't match with reminders count updated: (updated: %@, refetched: %@)", buf, 0x16u);
      }
    }

    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v76 = v66;
    v77 = [v76 countByEnumeratingWithState:&v116 objects:v126 count:16];
    if (v77)
    {
      v78 = v77;
      *v108 = v67;
      v110 = v66;
      v79 = *v117;
      v114 = *(MEMORY[0x277CF3AF0] + 6);
      do
      {
        for (i = 0; i != v78; ++i)
        {
          if (*v117 != v79)
          {
            objc_enumerationMutation(v76);
          }

          v81 = *(*(&v116 + 1) + 8 * i);
          v82 = [v68 objectForKeyedSubscript:v81];
          if (v82)
          {
            v83 = [v112 objectForKeyedSubscript:v81];
            v84 = [v83 rem_reminderItem];
            v85 = [v84 updatableBackingModel];
            [v85 updatePropertiesWithReminder:v82];

            v86 = DALoggingwithCategory();
            if (os_log_type_enabled(v86, v114))
            {
              v87 = [v82 objectID];
              [v83 serverID];
              v88 = v68;
              v90 = v89 = v76;
              *buf = 138543618;
              v128 = v87;
              v129 = 2112;
              v130 = v90;
              _os_log_impl(&dword_242490000, v86, v114, "MobileCalDAVCalendar: Updated reminder reference in DACalDAViCalItem: (reminderID: %{public}@, serverID: %@)", buf, 0x16u);

              v76 = v89;
              v68 = v88;
            }

            [v83 populateDataPayloadWithReminder:v82];
          }
        }

        v78 = [v76 countByEnumeratingWithState:&v116 objects:v126 count:16];
      }

      while (v78);
      v13 = v102;
      v67 = *v108;
      v66 = v110;
      v70 = 0;
    }

    else
    {
      v13 = v102;
    }
  }

  objc_autoreleasePoolPop(context);
  v93 = *MEMORY[0x277D85DE8];

  return v103;
}

- (void)putAction:(id)a3 completedWithError:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  [(MobileCalDAVCalendar *)self setNumUploadedElements:[(MobileCalDAVCalendar *)self numUploadedElements]+ 1];
  v8 = [v7 context];

  v9 = DALoggingwithCategory();
  v10 = MEMORY[0x277CF3AF0];
  v11 = *(MEMORY[0x277CF3AF0] + 6);
  v12 = os_log_type_enabled(v9, v11);
  if (v6)
  {
    if (v12)
    {
      v13 = [v8 serverID];
      *buf = 138543618;
      v32 = v6;
      v33 = 2112;
      v34 = v13;
      _os_log_impl(&dword_242490000, v9, v11, "Encountered error %{public}@ when putting item to %@", buf, 0x16u);
    }

    v14 = [(MobileCalDAVCalendar *)v6 domain];
    v15 = [v14 isEqualToString:*MEMORY[0x277CFDB80]];

    if (v15)
    {
      v16 = [(MobileCalDAVCalendar *)v6 code];
      switch(v16)
      {
        case 412:
LABEL_8:
          v17 = [v8 serverID];
          [(MobileCalDAVCalendar *)self setEtag:0 forItemAtURL:v17];

          [(MobileCalDAVCalendar *)self _forceRefreshNextSync];
          break;
        case 409:
          v20 = DALoggingwithCategory();
          if (os_log_type_enabled(v20, v11))
          {
            v21 = [v8 serverID];
            *buf = 138412290;
            v32 = v21;
            _os_log_impl(&dword_242490000, v20, v11, "Received a 409 conflict for the event at %@. Creating a new UUID and trying again.", buf, 0xCu);
          }

          v22 = [MEMORY[0x277CCACA8] da_newGUID];
          v23 = [v8 rem_reminderItem];

          if (v23)
          {
            v29[0] = MEMORY[0x277D85DD0];
            v29[1] = 3221225472;
            v29[2] = __53__MobileCalDAVCalendar_putAction_completedWithError___block_invoke;
            v29[3] = &unk_278D4F690;
            v30 = v22;
            [v8 rem_setReminderPropertiesWithBlock:v29 error:0];
            v24 = v30;
          }

          else
          {
            v24 = DALoggingwithCategory();
            v25 = *(v10 + 4);
            if (os_log_type_enabled(v24, v25))
            {
              v26 = [(MobileCalDAVCalendar *)self calendarURLString];
              *buf = 138412546;
              v32 = self;
              v33 = 2112;
              v34 = v26;
              _os_log_impl(&dword_242490000, v24, v25, "MobileCalDAVCalendar: LOOKATME: Couldn't get a REM reminder item to set UUID in this case of CoreDAVHTTPStatusCode_Conflict {iCalItem: %@, calendar: %@}.", buf, 0x16u);
            }
          }

          v27 = DALoggingwithCategory();
          v28 = *(v10 + 7);
          if (os_log_type_enabled(v27, v28))
          {
            *buf = 0;
            _os_log_impl(&dword_242490000, v27, v28, "Marking calendar as dirty because we just received a 409 conflict error", buf, 2u);
          }

          self->_isDirty = 1;
          break;
        case 403:
          goto LABEL_8;
      }
    }
  }

  else
  {
    if (v12)
    {
      v18 = [v8 serverID];
      *buf = 138412290;
      v32 = v18;
      _os_log_impl(&dword_242490000, v9, v11, "Put of item at %@ succeeded without error", buf, 0xCu);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)deleteAction:(id)a3 completedWithError:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  [(MobileCalDAVCalendar *)self setNumUploadedElements:[(MobileCalDAVCalendar *)self numUploadedElements]+ 1];
  v8 = [v7 context];

  v9 = DALoggingwithCategory();
  v10 = *(MEMORY[0x277CF3AF0] + 6);
  v11 = os_log_type_enabled(v9, v10);
  if (v6)
  {
    if (v11)
    {
      v16 = 138543618;
      v17 = v6;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_242490000, v9, v10, "Encountered error %{public}@ when deleting item from %@", &v16, 0x16u);
    }

    v12 = [v6 domain];
    v13 = [v12 isEqualToString:*MEMORY[0x277CFDB80]];

    if (v13)
    {
      v14 = [v6 code];
      if ((v14 - 403) <= 9 && ((1 << (v14 + 109)) & 0x203) != 0)
      {
        [(MobileCalDAVCalendar *)self setEtag:0 forItemAtURL:v8];
        [(MobileCalDAVCalendar *)self _forceRefreshNextSync];
      }
    }
  }

  else
  {
    if (v11)
    {
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&dword_242490000, v9, v10, "Delete of item at %@ succeeded without error", &v16, 0xCu);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (NSArray)shareeActions
{
  shareeActions = self->_shareeActions;
  if (!shareeActions)
  {
    [(MobileCalDAVCalendar *)self _collectShareeActions];
    shareeActions = self->_shareeActions;
  }

  return shareeActions;
}

- (void)_addShareeWithObjectID:(id)a3 toDictionaryIfNeeded:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:v6];

  if (!v8)
  {
    v9 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy_;
    v31 = __Block_byref_object_dispose_;
    v32 = 0;
    v10 = [v9 shareeContext];
    v11 = [v10 sharees];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __68__MobileCalDAVCalendar__addShareeWithObjectID_toDictionaryIfNeeded___block_invoke;
    v24 = &unk_278D4F6B8;
    v12 = v6;
    v25 = v12;
    v26 = &v27;
    [v11 enumerateObjectsUsingBlock:&v21];

    if (v28[5])
    {
      v13 = DALoggingwithCategory();
      v14 = *(MEMORY[0x277CF3AF0] + 5);
      if (os_log_type_enabled(v13, v14))
      {
        v15 = [v9 objectID];
        *buf = 138543618;
        v34 = v15;
        v35 = 2114;
        v36 = v12;
        _os_log_impl(&dword_242490000, v13, v14, "_collectShareeActions > _addShareeWithObjectID: Collected ADDed/UPDATEd sharee and found record to add {list: %{public}@, shareeID: %{public}@}", buf, 0x16u);
      }

      v16 = objc_alloc(MEMORY[0x277CF6FE0]);
      v17 = [v16 initWithREMSharee:v28[5]];
      if (v17)
      {
        [v7 setObject:v17 forKeyedSubscript:v12];
      }
    }

    else
    {
      v17 = DALoggingwithCategory();
      v18 = *(MEMORY[0x277CF3AF0] + 5);
      if (os_log_type_enabled(v17, v18))
      {
        v19 = [v9 objectID];
        *buf = 138543618;
        v34 = v19;
        v35 = 2114;
        v36 = v12;
        _os_log_impl(&dword_242490000, v17, v18, "_collectShareeActions > _addShareeWithObjectID: Sharee not found in {list: %{public}@, shareeID: %{public}@}", buf, 0x16u);
      }
    }

    _Block_object_dispose(&v27, 8);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __68__MobileCalDAVCalendar__addShareeWithObjectID_toDictionaryIfNeeded___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v10 = v7;
  v9 = [v7 objectID];
  LODWORD(v8) = [v8 isEqual:v9];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)_collectShareeActions
{
  v126 = *MEMORY[0x277D85DE8];
  v3 = [(MobileCalDAVCalendar *)self daPrincipal];
  v4 = [v3 account];
  v5 = [v4 wasMigrated];

  if (v5)
  {
    v96 = objc_opt_new();
    [(MobileCalDAVCalendar *)self setShareeActions:?];
    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    v90 = [MEMORY[0x277CBEB38] dictionary];
    v8 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
    v9 = MEMORY[0x277CF3AF0];
    if (v8)
    {
      v10 = [(MobileCalDAVCalendar *)self daPrincipal];
      v11 = [v10 rem_changeTracking];

      v12 = [v11 changedIdentifiersOfModelClass:objc_opt_class() ofChangeType:0];
      v13 = [v11 changedIdentifiersOfModelClass:objc_opt_class() ofChangeType:1];
      v14 = [v11 changedIdentifiersOfModelClass:objc_opt_class() ofChangeType:2];
      if ([v13 count])
      {
        v15 = DALoggingwithCategory();
        v16 = *(MEMORY[0x277CF3AF0] + 4);
        if (os_log_type_enabled(v15, v16))
        {
          *buf = 0;
          _os_log_impl(&dword_242490000, v15, v16, "MobileCalDAVCalendar: _collectShareeActions: LOOKATME: Unexpectedly got UPDATEs on REMSharee, sharees are supposed to be immutable value types in REM!", buf, 2u);
        }
      }

      v87 = v11;
      v17 = DALoggingwithCategory();
      v18 = *(MEMORY[0x277CF3AF0] + 6);
      if (os_log_type_enabled(v17, v18))
      {
        v19 = [v8 objectID];
        *buf = 138544130;
        v119 = v19;
        v120 = 2114;
        v121 = v12;
        v122 = 2114;
        v123 = v13;
        v124 = 2114;
        v125 = v14;
        _os_log_impl(&dword_242490000, v17, v18, "MobileCalDAVCalendar: _collectShareeActions: Collecting added and modified sharees {list: %{public}@, addedIds: %{public}@, modifiedIds: %{public}@, deletedKeys: %{public}@}.", buf, 0x2Au);
      }

      v92 = v18;

      v86 = v12;
      v20 = [MEMORY[0x277CBEB98] setWithArray:v12];
      v85 = v13;
      v21 = [v20 setByAddingObjectsFromArray:v13];

      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      obj = v21;
      v22 = [obj countByEnumeratingWithState:&v110 objects:v117 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v111;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v111 != v24)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v110 + 1) + 8 * i);
            objc_opt_class();
            v27 = REMCheckedDynamicCast();
            [(MobileCalDAVCalendar *)self _addShareeWithObjectID:v27 toDictionaryIfNeeded:v7];
          }

          v23 = [obj countByEnumeratingWithState:&v110 objects:v117 count:16];
        }

        while (v23);
      }

      v88 = v7;
      v89 = self;

      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v93 = v14;
      v28 = [v93 countByEnumeratingWithState:&v106 objects:v116 count:16];
      v91 = v8;
      if (v28)
      {
        v29 = v28;
        v97 = *v107;
        type = *(MEMORY[0x277CF3AF0] + 5);
        v30 = *(MEMORY[0x277CF3AF0] + 3);
        do
        {
          for (j = 0; j != v29; ++j)
          {
            v32 = v30;
            if (*v107 != v97)
            {
              objc_enumerationMutation(v93);
            }

            v33 = *(*(&v106 + 1) + 8 * j);
            objc_opt_class();
            v34 = REMCheckedDynamicCast();
            v35 = [v8 objectID];
            v36 = [v35 uuid];
            v37 = [v34 owningListIdentifier];
            v38 = [v36 isEqual:v37];

            v39 = DALoggingwithCategory();
            v40 = v39;
            if (v38)
            {
              if (os_log_type_enabled(v39, type))
              {
                v41 = [v8 objectID];
                v42 = [v34 objectIdentifier];
                *buf = 138543618;
                v119 = v41;
                v120 = 2114;
                v121 = v42;
                _os_log_impl(&dword_242490000, v40, type, "_collectShareeActions: Collected DELETEd sharee for this list {list: %{public}@, shareeID: %{public}@}.", buf, 0x16u);
              }

              v40 = [v34 address];
              v30 = v32;
              if (!v40)
              {
                goto LABEL_40;
              }

              v43 = [MEMORY[0x277CBEBC0] URLWithString:v40];
              v44 = [v43 scheme];
              v45 = [v44 length];

              if (!v45 && [v40 resemblesEmailAddress])
              {
                v46 = MEMORY[0x277CBEBC0];
                v47 = [v40 stringAddingMailto];
                v48 = [v46 URLWithString:v47];

                v43 = v48;
              }

              if (v43)
              {
                v49 = [v34 displayName];
                v50 = [objc_alloc(MEMORY[0x277CF6FE0]) initWithHREF:v43 commonName:v49 inviteStatus:3 access:0];
                v51 = [v34 objectIdentifier];
                if (!v51)
                {
                  v52 = DALoggingwithCategory();
                  if (os_log_type_enabled(v52, v32))
                  {
                    v53 = [v91 objectID];
                    *buf = 138543618;
                    v119 = v53;
                    v120 = 2114;
                    v121 = v34;
                    _os_log_impl(&dword_242490000, v52, v32, "_collectShareeActions: ERROR: The sharee tombstone has no object identifier, faking a uuid for it {list: %{public}@, shareeTombstone: %{public}@}", buf, 0x16u);
                  }

                  v51 = [MEMORY[0x277CCAD78] UUID];
                }

                v54 = [MEMORY[0x277D447E8] objectIDWithUUID:v51];
                [v90 setObject:v50 forKeyedSubscript:v54];

                v8 = v91;
                v30 = v32;
              }

              else
              {
LABEL_40:
                v43 = DALoggingwithCategory();
                if (os_log_type_enabled(v43, v32))
                {
                  v58 = [v8 objectID];
                  *buf = 138543618;
                  v119 = v58;
                  v120 = 2114;
                  v121 = v34;
                  _os_log_impl(&dword_242490000, v43, v32, "_collectShareeActions: ERROR: Couldn't get a URL for the deleted sharee, so we're going to skip it {list: %{public}@, shareeTombstone: %{public}@}", buf, 0x16u);
                }
              }
            }

            else
            {
              if (os_log_type_enabled(v39, v92))
              {
                v55 = [v8 objectID];
                v56 = [v34 owningListIdentifier];
                v57 = [v34 objectIdentifier];
                *buf = 138543874;
                v119 = v55;
                v120 = 2114;
                v121 = v56;
                v122 = 2114;
                v123 = v57;
                _os_log_impl(&dword_242490000, v40, v92, "_collectShareeActions: deletionKey is not for this list {list: %{public}@, sharee.owningListIdentifier: %{public}@, shareeID: %{public}@}", buf, 0x20u);
              }

              v30 = v32;
            }
          }

          v29 = [v93 countByEnumeratingWithState:&v106 objects:v116 count:16];
        }

        while (v29);
      }

      v59 = MEMORY[0x277CBEB58];
      v7 = v88;
      v60 = [v88 allKeys];
      v61 = [v59 setWithArray:v60];

      v62 = MEMORY[0x277CBEB98];
      v63 = [v90 allKeys];
      v64 = [v62 setWithArray:v63];
      [v61 intersectSet:v64];

      if ([v61 count])
      {
        v65 = DALoggingwithCategory();
        v66 = *(MEMORY[0x277CF3AF0] + 4);
        if (os_log_type_enabled(v65, v66))
        {
          *buf = 138543618;
          v119 = v89;
          v120 = 2114;
          v121 = v61;
          _os_log_impl(&dword_242490000, v65, v66, "MobileCalDAVCalendar: _collectShareeActions: LOOKATME: Found duplicated objectIDs in deletes vs addsAndMods, this is unexpected as the change tracking should have consolidated them {calendar: %{public}@, duplicates: %{public}@}", buf, 0x16u);
        }
      }

      v67 = [MEMORY[0x277CBEB18] array];
      v102 = 0u;
      v103 = 0u;
      v104 = 0u;
      v105 = 0u;
      v68 = [v90 allValues];
      v69 = [v68 countByEnumeratingWithState:&v102 objects:v115 count:16];
      if (v69)
      {
        v70 = v69;
        v71 = *v103;
        do
        {
          for (k = 0; k != v70; ++k)
          {
            if (*v103 != v71)
            {
              objc_enumerationMutation(v68);
            }

            v73 = [objc_alloc(MEMORY[0x277CFDB90]) initWithAction:2 context:*(*(&v102 + 1) + 8 * k)];
            [(NSArray *)v67 addObject:v73];
          }

          v70 = [v68 countByEnumeratingWithState:&v102 objects:v115 count:16];
        }

        while (v70);
      }

      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v74 = [v88 allValues];
      v75 = [v74 countByEnumeratingWithState:&v98 objects:v114 count:16];
      if (v75)
      {
        v76 = v75;
        v77 = *v99;
        do
        {
          for (m = 0; m != v76; ++m)
          {
            if (*v99 != v77)
            {
              objc_enumerationMutation(v74);
            }

            v79 = [objc_alloc(MEMORY[0x277CFDB90]) initWithAction:1 context:*(*(&v98 + 1) + 8 * m)];
            [(NSArray *)v67 addObject:v79];
          }

          v76 = [v74 countByEnumeratingWithState:&v98 objects:v114 count:16];
        }

        while (v76);
      }

      shareeActions = v89->_shareeActions;
      v89->_shareeActions = v67;

      v8 = v91;
      v81 = v87;
    }

    else
    {
      v81 = DALoggingwithCategory();
      v82 = *(v9 + 4);
      if (os_log_type_enabled(v81, v82))
      {
        v83 = [0 objectID];
        *buf = 138543362;
        v119 = v83;
        _os_log_impl(&dword_242490000, v81, v82, "MobileCalDAVCalendar: _collectShareeActions: Calendar has no backing REM list when trying to collect sharee actions {list: %{public}@}.", buf, 0xCu);
      }
    }

    v84 = *MEMORY[0x277D85DE8];
  }
}

- (void)prepareSyncActionsWithCompletionBlock:(id)a3
{
  v61 = *MEMORY[0x277D85DE8];
  v39 = a3;
  v41 = self;
  v4 = [(MobileCalDAVCalendar *)self daPrincipal];
  v5 = [v4 account];
  v6 = [v5 wasMigrated];

  if (!v6)
  {
    v8 = [(MobileCalDAVCalendar *)v41 daPrincipal];
    v38 = [v8 rem_changeTracking];

    v9 = [v38 changeSet];
    if ([v9 isTruncated])
    {
    }

    else
    {
      v10 = [v38 changeSet];
      v11 = [v10 error];

      if (!v11)
      {
        obj = objc_opt_new();
        v54[0] = 0;
        v54[1] = v54;
        v54[2] = 0x2020000000;
        v55 = 0;
        v36 = [(MobileCalDAVCalendar *)v41 copyDeletedItems];
        if ([v36 count])
        {
          v14 = DALoggingwithCategory();
          v15 = *(MEMORY[0x277CF3AF0] + 5);
          if (os_log_type_enabled(v14, v15))
          {
            v16 = [v36 count];
            *buf = 134218242;
            v58 = v16;
            v59 = 2112;
            v60 = v36;
            _os_log_impl(&dword_242490000, v14, v15, "MobileCalDAVCalendar: Collected %lu deleted reminders from REM change tracking {modified: %@}.", buf, 0x16u);
          }
        }

        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v17 = [v36 allKeys];
        v18 = [v17 countByEnumeratingWithState:&v50 objects:v56 count:16];
        if (v18)
        {
          v19 = *v51;
          v20 = *(MEMORY[0x277CF3AF0] + 6);
          v21 = *(MEMORY[0x277CF3AF0] + 4);
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v51 != v19)
              {
                objc_enumerationMutation(v17);
              }

              v23 = *(*(&v50 + 1) + 8 * i);
              if (v23)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v24 = DALoggingwithCategory();
                  if (os_log_type_enabled(v24, v20))
                  {
                    *buf = 138412290;
                    v58 = v23;
                    _os_log_impl(&dword_242490000, v24, v20, "Sending up a delete for the item at URL %@", buf, 0xCu);
                  }

                  v25 = [(MobileCalDAVCalendar *)v41 calendarURL];
                  v26 = [v23 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v25];

                  if (v26)
                  {
                    v27 = [objc_alloc(MEMORY[0x277CFDB90]) initWithAction:2 context:v26];
                    [obj addObject:v27];
                  }

                  else
                  {
                    v27 = DALoggingwithCategory();
                    if (os_log_type_enabled(v27, v21))
                    {
                      *buf = 138412290;
                      v58 = v23;
                      _os_log_impl(&dword_242490000, v27, v21, "Couldn't get a URL for the delete of %@", buf, 0xCu);
                    }
                  }
                }
              }
            }

            v18 = [v17 countByEnumeratingWithState:&v50 objects:v56 count:16];
          }

          while (v18);
        }

        v28 = DALoggingwithCategory();
        v29 = *(MEMORY[0x277CF3AF0] + 6);
        if (os_log_type_enabled(v28, v29))
        {
          v30 = [v37 count];
          *buf = 134217984;
          v58 = v30;
          _os_log_impl(&dword_242490000, v28, v29, "Found %lu deleted items", buf, 0xCu);
        }

        v31 = objc_opt_new();
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __62__MobileCalDAVCalendar_prepareSyncActionsWithCompletionBlock___block_invoke;
        v46[3] = &unk_278D4F6E0;
        v46[4] = v41;
        v32 = v31;
        v47 = v32;
        v49 = v54;
        v33 = obj;
        v48 = v33;
        [(MobileCalDAVCalendar *)v41 copyAddedItemsWithBatchHandler:v46];
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __62__MobileCalDAVCalendar_prepareSyncActionsWithCompletionBlock___block_invoke_93;
        v42[3] = &unk_278D4F6E0;
        v42[4] = v41;
        v34 = v32;
        v43 = v34;
        v45 = v54;
        v35 = v33;
        v44 = v35;
        [(MobileCalDAVCalendar *)v41 copyModifiedItemsWithBatchHandler:v42];
        objc_storeStrong(&v41->_syncActions, obj);
        v39[2](v39, v41);

        _Block_object_dispose(v54, 8);
        goto LABEL_7;
      }
    }

    v12 = [v38 fetchAndInitializeChangeTrackingStateIfNeeded];
    [(MobileCalDAVCalendar *)v41 _prepareForcedRefreshSyncActionsForTruncatedHistoryWithTrackingState:v12 completionBlock:v39];

LABEL_7:
    v7 = v39;
    goto LABEL_8;
  }

  v7 = v39;
  v39[2](v39, v41);
LABEL_8:

  v13 = *MEMORY[0x277D85DE8];
}

void __62__MobileCalDAVCalendar_prepareSyncActionsWithCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 count];
  v8 = MEMORY[0x277CF3AF0];
  if (v7)
  {
    v9 = DALoggingwithCategory();
    v10 = *(v8 + 5);
    if (os_log_type_enabled(v9, v10))
    {
      v16 = 134218242;
      v17 = [v5 count];
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_242490000, v9, v10, "MobileCalDAVCalendar: Collected %lu added reminders from REM change tracking {added: %@}.", &v16, 0x16u);
    }
  }

  v11 = [*(a1 + 32) _createActionsForItems:v5 withAction:0 backingReminders:v6 alreadySentItems:*(a1 + 40) createServerIDs:1 shouldSave:*(*(a1 + 56) + 8) + 24];
  v12 = DALoggingwithCategory();
  v13 = *(v8 + 6);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = [v11 count];
    v16 = 134217984;
    v17 = v14;
    _os_log_impl(&dword_242490000, v12, v13, "Found %lu added items", &v16, 0xCu);
  }

  [*(a1 + 48) addObjectsFromArray:v11];
  v15 = *MEMORY[0x277D85DE8];
}

void __62__MobileCalDAVCalendar_prepareSyncActionsWithCompletionBlock___block_invoke_93(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 count];
  v8 = MEMORY[0x277CF3AF0];
  if (v7)
  {
    v9 = DALoggingwithCategory();
    v10 = *(v8 + 5);
    if (os_log_type_enabled(v9, v10))
    {
      v21 = 134218242;
      v22 = [v5 count];
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_242490000, v9, v10, "MobileCalDAVCalendar: Collected %lu modified reminders from REM change tracking {modified: %@}.", &v21, 0x16u);
    }
  }

  v11 = [*(a1 + 32) principal];
  v12 = [v11 account];
  v13 = [v12 serverVersion];
  [v13 supportsCalendarAudit];

  v14 = *(a1 + 32);
  v15 = *(v14 + 80);
  *(v14 + 80) = 0;

  v16 = [*(a1 + 32) _createActionsForItems:v5 withAction:1 backingReminders:v6 alreadySentItems:*(a1 + 40) createServerIDs:1 shouldSave:*(*(a1 + 56) + 8) + 24];

  v17 = DALoggingwithCategory();
  v18 = *(v8 + 6);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = [v16 count];
    v21 = 134217984;
    v22 = v19;
    _os_log_impl(&dword_242490000, v17, v18, "Found %lu modified items", &v21, 0xCu);
  }

  [*(a1 + 48) addObjectsFromArray:v16];
  v20 = *MEMORY[0x277D85DE8];
}

- (void)_prepareForcedRefreshSyncActionsForTruncatedHistoryWithTrackingState:(id)a3 completionBlock:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(MobileCalDAVCalendar *)self daPrincipal];
  v10 = [v9 account];

  v11 = DALoggingwithCategory();
  v12 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = [v10 accountDescription];
    *buf = 138412546;
    *&buf[4] = v13;
    *&buf[12] = 2112;
    *&buf[14] = self;
    _os_log_impl(&dword_242490000, v11, v12, "MobileCalDAVCalendar: [ForcedRefreshSyncForTruncatedHistory]: Force a 'refresh sync' as change history was truncated or error, let's try hard to upload local reminders changes... {account: %@, calendar: %@}", buf, 0x16u);
  }

  v14 = [v7 lastConsumedDate];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v39 = 0;
  v15 = objc_opt_new();
  v16 = objc_opt_new();
  v17 = objc_opt_new();
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __109__MobileCalDAVCalendar__prepareForcedRefreshSyncActionsForTruncatedHistoryWithTrackingState_completionBlock___block_invoke;
  v29 = &unk_278D4F708;
  v37 = a2;
  v30 = self;
  v18 = v10;
  v31 = v18;
  v19 = v14;
  v32 = v19;
  v20 = v15;
  v33 = v20;
  v36 = buf;
  v21 = v16;
  v34 = v21;
  v22 = v17;
  v35 = v22;
  [(MobileCalDAVCalendar *)self copyAllItemsWithBatchHandler:&v26];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:{v21, v26, v27, v28, v29, v30}];
  v24 = [v23 arrayByAddingObjectsFromArray:v22];

  objc_storeStrong(&self->_syncActions, v24);
  v8[2](v8, self);

  _Block_object_dispose(buf, 8);
  v25 = *MEMORY[0x277D85DE8];
}

void __109__MobileCalDAVCalendar__prepareForcedRefreshSyncActionsForTruncatedHistoryWithTrackingState_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v63 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 count];
  if (v7 != [v6 count])
  {
    __109__MobileCalDAVCalendar__prepareForcedRefreshSyncActionsForTruncatedHistoryWithTrackingState_completionBlock___block_invoke_cold_1(a1, v5, v6);
  }

  context = objc_autoreleasePoolPush();
  v45 = objc_opt_new();
  v47 = objc_opt_new();
  v44 = objc_opt_new();
  v46 = objc_opt_new();
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v5;
  v53 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
  if (v53)
  {
    v52 = *v55;
    type = *(MEMORY[0x277CF3AF0] + 4);
    v49 = *(MEMORY[0x277CF3AF0] + 6);
    v8 = -1;
    v48 = a1;
    do
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v55 != v52)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v54 + 1) + 8 * i);
        v11 = [v10 rem_reminderItem];

        if (!v11)
        {
          v12 = DALoggingwithCategory();
          if (os_log_type_enabled(v12, type))
          {
            v13 = [v10 rem_clientID];
            v14 = [v10 serverID];
            *buf = 138543618;
            v59 = v13;
            v60 = 2112;
            v61 = v14;
            _os_log_impl(&dword_242490000, v12, type, "MobileCalDAVCalendar: [ForcedRefreshSyncForTruncatedHistory]: Gathered DA item with nil REMReminder is not quite expected (remID: %{public}@, serverID: %@)", buf, 0x16u);
          }

          [v10 loadLocalItemWithAccount:*(a1 + 40)];
        }

        ++v8;
        v15 = [v10 rem_reminderItem];

        if (v15)
        {
          v16 = [v6 objectAtIndexedSubscript:v8];
          v17 = [v10 rem_reminderItem];
          v18 = [v17 objectID];
          v19 = [v16 objectID];
          v20 = [v18 isEqual:v19];

          if ((v20 & 1) == 0)
          {
            __109__MobileCalDAVCalendar__prepareForcedRefreshSyncActionsForTruncatedHistoryWithTrackingState_completionBlock___block_invoke_cold_2();
          }

          v21 = [v10 rem_reminderItem];
          if (*(a1 + 48))
          {
            v22 = [v16 lastModifiedDate];
            v23 = [v22 earlierDate:*(a1 + 48)];
            v24 = [v23 isEqualToDate:*(a1 + 48)];
          }

          else
          {
            v24 = 0;
          }

          v25 = [v21 externalModificationTag];
          if (!v25 || v24)
          {
            v26 = v6;
            v27 = [v10 serverID];

            v28 = DALoggingwithCategory();
            v29 = os_log_type_enabled(v28, v49);
            if (v27)
            {
              v30 = v46;
              v31 = v47;
              if (v29)
              {
                v32 = [v21 objectID];
                v33 = [v10 serverID];
                *buf = 138543618;
                v59 = v32;
                v60 = 2112;
                v61 = v33;
                _os_log_impl(&dword_242490000, v28, v49, "MobileCalDAVCalendar: [ForcedRefreshSyncForTruncatedHistory]: Found (%{public}@) in this batch which exists on the server at %@", buf, 0x16u);

                v30 = v46;
                v31 = v47;
              }
            }

            else
            {
              v30 = v44;
              v31 = v45;
              if (v29)
              {
                v34 = [v21 objectID];
                *buf = 138543362;
                v59 = v34;
                _os_log_impl(&dword_242490000, v28, v49, "MobileCalDAVCalendar: [ForcedRefreshSyncForTruncatedHistory]: Found (%{public}@) in this batch which does not exist on the server", buf, 0xCu);

                v30 = v44;
                v31 = v45;
              }
            }

            [v31 addObject:v10];
            [v30 addObject:v16];
            v6 = v26;
            a1 = v48;
          }
        }
      }

      v53 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
    }

    while (v53);
  }

  v35 = [*(a1 + 32) _createActionsForItems:v45 withAction:0 backingReminders:v44 alreadySentItems:*(a1 + 56) createServerIDs:1 shouldSave:*(*(a1 + 80) + 8) + 24];
  v36 = DALoggingwithCategory();
  v37 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v36, v37))
  {
    v38 = [v35 count];
    *buf = 134217984;
    v59 = v38;
    _os_log_impl(&dword_242490000, v36, v37, "MobileCalDAVCalendar: [ForcedRefreshSyncForTruncatedHistory]: Found %lu ADDs reminders in this batch for our force refresh sync", buf, 0xCu);
  }

  v39 = [*(a1 + 32) _createActionsForItems:v47 withAction:1 backingReminders:v46 alreadySentItems:*(a1 + 56) createServerIDs:1 shouldSave:*(*(a1 + 80) + 8) + 24];
  v40 = DALoggingwithCategory();
  if (os_log_type_enabled(v40, v37))
  {
    v41 = [v39 count];
    *buf = 134217984;
    v59 = v41;
    _os_log_impl(&dword_242490000, v40, v37, "MobileCalDAVCalendar: [ForcedRefreshSyncForTruncatedHistory]: Found %lu MODs reminders in this batch for our force refresh sync", buf, 0xCu);
  }

  [*(a1 + 64) addObjectsFromArray:v35];
  [*(a1 + 72) addObjectsFromArray:v39];

  objc_autoreleasePoolPop(context);
  v42 = *MEMORY[0x277D85DE8];
}

- (void)prepareMergeSyncActionsWithCompletionBlock:(id)a3
{
  v5 = a3;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 0;
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    *buf = 0;
    _os_log_impl(&dword_242490000, v6, v7, "Preparing merge sync actions...", buf, 2u);
  }

  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  *buf = 0;
  v28 = buf;
  v29 = 0x2020000000;
  v30 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v26[3] = 0;
  v11 = [(MobileCalDAVCalendar *)self daPrincipal];
  v12 = [v11 account];
  v13 = [v12 wasMigrated];

  if (v13)
  {
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __67__MobileCalDAVCalendar_prepareMergeSyncActionsWithCompletionBlock___block_invoke;
    v17 = &unk_278D4F730;
    v25 = a2;
    v18 = self;
    v19 = v10;
    v22 = v31;
    v20 = v8;
    v21 = v9;
    v23 = buf;
    v24 = v26;
    [(MobileCalDAVCalendar *)self copyAllItemsWithBatchHandler:&v14];
  }

  [(MobileCalDAVCalendar *)self setUuidsToAddActions:v8, v14, v15, v16, v17, v18];
  [(MobileCalDAVCalendar *)self setHrefsToModDeleteActions:v9];
  v5[2](v5, self);
  _Block_object_dispose(v26, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(v31, 8);
}

void __67__MobileCalDAVCalendar_prepareMergeSyncActionsWithCompletionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v94 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 count];
  if (v7 != [v6 count])
  {
    __67__MobileCalDAVCalendar_prepareMergeSyncActionsWithCompletionBlock___block_invoke_cold_1(a1, v5, v6);
  }

  v74 = a1;
  context = objc_autoreleasePoolPush();
  v66 = objc_opt_new();
  v68 = objc_opt_new();
  v65 = objc_opt_new();
  v67 = objc_opt_new();
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v83 objects:v93 count:16];
  v69 = v6;
  if (v8)
  {
    v9 = v8;
    v73 = *v84;
    type = *(MEMORY[0x277CF3AF0] + 4);
    v70 = *(MEMORY[0x277CF3AF0] + 6);
    v10 = -1;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v84 != v73)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v83 + 1) + 8 * i);
        v13 = [v12 rem_reminderItem];

        if (!v13)
        {
          v14 = DALoggingwithCategory();
          if (os_log_type_enabled(v14, type))
          {
            v15 = [v12 rem_clientID];
            v16 = [v12 serverID];
            *buf = 138543618;
            v90 = v15;
            v91 = 2112;
            v92 = v16;
            _os_log_impl(&dword_242490000, v14, type, "prepareMergeSyncActions: Gathered DA item with nil REMReminder is not quite expected (remID: %{public}@, serverID: %@)", buf, 0x16u);
          }

          v17 = [*(v74 + 32) daPrincipal];
          v18 = [v17 account];
          [v12 loadLocalItemWithAccount:v18];
        }

        ++v10;
        v19 = [v12 rem_reminderItem];

        if (v19)
        {
          v20 = [v6 objectAtIndexedSubscript:v10];
          v21 = [v12 rem_reminderItem];
          v22 = [v21 objectID];
          v23 = [v20 objectID];
          v24 = [v22 isEqual:v23];

          if ((v24 & 1) == 0)
          {
            __67__MobileCalDAVCalendar_prepareMergeSyncActionsWithCompletionBlock___block_invoke_cold_2();
          }

          v25 = [v12 rem_reminderItem];
          v26 = [v25 externalModificationTag];
          if (!v26)
          {
            [v12 setIsMigrate:1];
            v27 = [v12 serverID];

            v28 = DALoggingwithCategory();
            v29 = os_log_type_enabled(v28, v70);
            if (v27)
            {
              v30 = v67;
              v31 = v68;
              if (v29)
              {
                v32 = [v25 objectID];
                v33 = [v12 serverID];
                *buf = 138543618;
                v90 = v32;
                v91 = 2112;
                v92 = v33;
                _os_log_impl(&dword_242490000, v28, v70, "prepareMergeSyncActions: Found %{public}@ in this batch which exists on the server at %@", buf, 0x16u);

                v30 = v67;
                v31 = v68;
              }
            }

            else
            {
              v30 = v65;
              v31 = v66;
              if (v29)
              {
                v34 = [v25 objectID];
                *buf = 138543362;
                v90 = v34;
                _os_log_impl(&dword_242490000, v28, v70, "prepareMergeSyncActions: Found %{public}@ in this batch which does not exist on the server", buf, 0xCu);

                v30 = v65;
                v31 = v66;
              }
            }

            [v31 addObject:v12];
            [v30 addObject:v20];
            v6 = v69;
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v83 objects:v93 count:16];
    }

    while (v9);
  }

  v35 = [*(v74 + 32) bulkRequests];
  v36 = [v35 objectForKeyedSubscript:*MEMORY[0x277CFDF70]];
  if (v36)
  {
    v37 = [*(v74 + 32) daPrincipal];
    v38 = [v37 account];
    v39 = [v38 wasMigrated] ^ 1;
  }

  else
  {
    v39 = 1;
  }

  v40 = [*(v74 + 32) _createActionsForItems:v66 withAction:0 backingReminders:v65 alreadySentItems:*(v74 + 40) createServerIDs:v39 shouldSave:*(*(v74 + 64) + 8) + 24];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v41 = [v40 countByEnumeratingWithState:&v79 objects:v88 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v80;
    do
    {
      for (j = 0; j != v42; ++j)
      {
        if (*v80 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = *(*(&v79 + 1) + 8 * j);
        v46 = [v45 context];
        v47 = *(v74 + 48);
        v48 = [v46 uniqueIdentifier];
        [v47 setObject:v45 forKeyedSubscript:v48];
      }

      v42 = [v40 countByEnumeratingWithState:&v79 objects:v88 count:16];
    }

    while (v42);
  }

  v49 = DALoggingwithCategory();
  v50 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v49, v50))
  {
    v51 = [v40 count];
    *buf = 134217984;
    v90 = v51;
    _os_log_impl(&dword_242490000, v49, v50, "prepareMergeSyncActions: Found %lu adds in this batch for our merge sync", buf, 0xCu);
  }

  v52 = [*(v74 + 32) _createActionsForItems:v68 withAction:1 backingReminders:v67 alreadySentItems:*(v74 + 40) createServerIDs:v39 shouldSave:*(*(v74 + 64) + 8) + 24];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v53 = [v52 countByEnumeratingWithState:&v75 objects:v87 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v76;
    do
    {
      for (k = 0; k != v54; ++k)
      {
        if (*v76 != v55)
        {
          objc_enumerationMutation(v52);
        }

        v57 = *(*(&v75 + 1) + 8 * k);
        v58 = [v57 context];
        v59 = *(v74 + 56);
        v60 = [v58 serverID];
        [v59 setObject:v57 forKeyedSubscript:v60];
      }

      v54 = [v52 countByEnumeratingWithState:&v75 objects:v87 count:16];
    }

    while (v54);
  }

  v61 = DALoggingwithCategory();
  if (os_log_type_enabled(v61, v50))
  {
    v62 = [v52 count];
    *buf = 134217984;
    v90 = v62;
    _os_log_impl(&dword_242490000, v61, v50, "prepareMergeSyncActions: Found %lu mods in this batch for our merge sync", buf, 0xCu);
  }

  *(*(*(v74 + 72) + 8) + 24) += [v40 count];
  *(*(*(v74 + 80) + 8) + 24) += [v52 count];

  objc_autoreleasePoolPop(context);
  v63 = *MEMORY[0x277D85DE8];
}

- (void)flushCaches
{
  v3 = [(MobileCalDAVCalendar *)self URLToEtagMap];
  [v3 removeAllObjects];

  [(MobileCalDAVCalendar *)self setSyncActions:0];
  [(MobileCalDAVCalendar *)self setShareeActions:0];
  [(MobileCalDAVCalendar *)self setUuidsToAddActions:0];
  [(MobileCalDAVCalendar *)self setHrefsToModDeleteActions:0];

  +[MobileCalDAVCalendar rem_clearListObjectIDCache];
}

- (BOOL)rem_setListPropertiesWithBlock:(id)a3 error:(id *)a4
{
  v45 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  if (v7)
  {
    v8 = [(MobileCalDAVCalendar *)self rem_saveRequest];
    v9 = [v8 updateList:v7];
    v6[2](v6, v9);
    v10 = [v9 changedKeys];
    v11 = [v10 count];

    if (v11)
    {
      v32 = 0;
      v12 = [v8 saveSynchronouslyWithError:&v32];
      v13 = v32;
      v14 = v13;
      if (!v12 || v13)
      {
        v20 = DALoggingwithCategory();
        v21 = *(MEMORY[0x277CF3AF0] + 3);
        if (os_log_type_enabled(v20, v21))
        {
          v31 = [v9 changedKeys];
          guid = self->_guid;
          v28 = [v7 objectID];
          v27 = [(MobileCalDAVCalendar *)self calendarURLString];
          v30 = [v14 localizedDescription];
          v22 = [MEMORY[0x277CCACC8] callStackSymbols];
          *buf = 138544642;
          v34 = v31;
          v35 = 2114;
          v36 = guid;
          v37 = 2114;
          v38 = v28;
          v39 = 2112;
          v40 = v27;
          v41 = 2114;
          v42 = v30;
          v43 = 2112;
          v44 = v22;
          v23 = v22;
          _os_log_impl(&dword_242490000, v20, v21, "MobileCalDAVCalendar: ERROR: Failed to set REMList properties {changedKeys=%{public}@, GUID=%{public}@, listID=%{public}@, url=%@, error=%{public}@, stack=%@}", buf, 0x3Eu);
        }

        if (!a4)
        {
          goto LABEL_17;
        }
      }

      else
      {
        [(MobileCalDAVCalendar *)self rem_reloadCalCalendar];
        if (!a4)
        {
          goto LABEL_17;
        }
      }

      v24 = v14;
      *a4 = v14;
LABEL_17:

      goto LABEL_18;
    }

    v17 = DALoggingwithCategory();
    v18 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = [v7 objectID];
      *buf = 138543362;
      v34 = v19;
      _os_log_impl(&dword_242490000, v17, v18, "MobileCalDAVCalendar: ChangedKeys is empty, no effective changes to this list change item, skipping -save {listOD: %{public}@}.", buf, 0xCu);
    }

    LOBYTE(v12) = 1;
  }

  else
  {
    v8 = DALoggingwithCategory();
    v15 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(v8, v15))
    {
      v16 = [MEMORY[0x277CCACC8] callStackSymbols];
      *buf = 138543618;
      v34 = self;
      v35 = 2112;
      v36 = v16;
      _os_log_impl(&dword_242490000, v8, v15, "MobileCalDAVCalendar: Couldn't find an REMList to set property {calendar: %{public}@, stack: %@}.", buf, 0x16u);
    }

    LOBYTE(v12) = 0;
  }

LABEL_18:

  v25 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)rem_invalidateCalCalendarWithReload:(BOOL)a3
{
  v3 = a3;
  [(MobileCalDAVCalendar *)self setRem_cachedFetchedRemindersForMergeSync:0];
  rem_calCalendar = self->_rem_calCalendar;
  if (rem_calCalendar && ([(MobileCalDAVCalendar *)self calendarURLString], v6 = objc_claimAutoreleasedReturnValue(), v6, rem_calCalendar = self->_rem_calCalendar, !v6))
  {
    v8 = rem_calCalendar;
    v12 = [(MobileCalDAVCalendar *)self rem_store];
    v9 = [(REMList *)v8 objectID];
    v10 = [v12 fetchListWithObjectID:v9 error:0];
    v11 = self->_rem_calCalendar;
    self->_rem_calCalendar = v10;
  }

  else
  {
    self->_rem_calCalendar = 0;

    if (v3)
    {
      v7 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
    }
  }
}

- (void)_createActionsForItems:withAction:backingReminders:alreadySentItems:createServerIDs:shouldSave:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v3 count];
  v4 = [OUTLINED_FUNCTION_1() numberWithUnsignedInteger:?];
  [v2 count];
  v5 = [OUTLINED_FUNCTION_1() numberWithUnsignedInteger:?];
  [v6 handleFailureInMethod:v1 object:v0 file:@"MobileCalDAVCalendar.m" lineNumber:4122 description:{@"ERROR: LOOKATME: _createActionsForItems: items.count (%@) does not equal reminders.count (%@).", v4, v5}];
}

- (void)_createActionsForItems:withAction:backingReminders:alreadySentItems:createServerIDs:shouldSave:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = [v3 objectID];
  [v4 handleFailureInMethod:v2 object:v1 file:@"MobileCalDAVCalendar.m" lineNumber:4142 description:{@"ERROR: LOOKATME: _createActionsForItems: has ill-paired DA-items and backing reminders (item.objectID: %@, backing.objectID)", v0, v5}];
}

void __109__MobileCalDAVCalendar__prepareForcedRefreshSyncActionsForTruncatedHistoryWithTrackingState_completionBlock___block_invoke_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v5 = [OUTLINED_FUNCTION_1() numberWithUnsignedInteger:?];
  v6 = *(v3 + 2992);
  [a3 count];
  v7 = [OUTLINED_FUNCTION_1() numberWithUnsignedInteger:?];
  OUTLINED_FUNCTION_4();
  [v8 handleFailureInMethod:v5 object:v7 file:? lineNumber:? description:?];
}

void __109__MobileCalDAVCalendar__prepareForcedRefreshSyncActionsForTruncatedHistoryWithTrackingState_completionBlock___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_3() rem_reminderItem];
  v3 = [v2 objectID];
  v4 = [v0 objectID];
  OUTLINED_FUNCTION_4();
  [v5 handleFailureInMethod:v3 object:v4 file:? lineNumber:? description:?];
}

void __67__MobileCalDAVCalendar_prepareMergeSyncActionsWithCompletionBlock___block_invoke_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v5 = [OUTLINED_FUNCTION_1() numberWithUnsignedInteger:?];
  v6 = *(v3 + 2992);
  [a3 count];
  v7 = [OUTLINED_FUNCTION_1() numberWithUnsignedInteger:?];
  OUTLINED_FUNCTION_4();
  [v8 handleFailureInMethod:v5 object:v7 file:? lineNumber:? description:?];
}

void __67__MobileCalDAVCalendar_prepareMergeSyncActionsWithCompletionBlock___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_3() rem_reminderItem];
  v3 = [v2 objectID];
  v4 = [v0 objectID];
  OUTLINED_FUNCTION_4();
  [v5 handleFailureInMethod:v3 object:v4 file:? lineNumber:? description:?];
}

@end