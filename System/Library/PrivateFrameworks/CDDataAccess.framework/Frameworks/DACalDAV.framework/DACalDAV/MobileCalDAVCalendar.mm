@interface MobileCalDAVCalendar
+ (id)_rem_calURLToREMObjectIDCache;
+ (id)_rem_changedListsOfChangeType:(int64_t)type withChangeTrackingHelper:(id)helper inPrincipal:(id)principal;
+ (id)calendarWithREMList:(id)list principal:(id)principal;
+ (id)rem_addedCalendarsWithChangeTrackingHelper:(id)helper inPrincipal:(id)principal;
+ (id)rem_cachedListObjectIDForURLString:(id)string;
+ (id)rem_deletedCalendarsWithChangeTrackingHelper:(id)helper inPrincipal:(id)principal;
+ (id)rem_modifiedCalendarsWithChangeTrackingHelper:(id)helper inPrincipal:(id)principal;
+ (void)rem_cacheListObjectID:(id)d forCalendarURLString:(id)string;
+ (void)rem_clearListObjectIDCache;
+ (void)rem_removeListObjectIDCacheEntryForCalendarURLString:(id)string;
- (BOOL)_addChangedReminder:(id)reminder toArrayIfNeeded:(id)needed;
- (BOOL)_removeCalendarItemWithURL:(id)l;
- (BOOL)canBePublished;
- (BOOL)canBeShared;
- (BOOL)deleteResourcesAtURLs:(id)ls;
- (BOOL)hasCalendarUserAddressEquivalentToURL:(id)l;
- (BOOL)hasEvents;
- (BOOL)isEditable;
- (BOOL)isEventContainer;
- (BOOL)isHidden;
- (BOOL)isRenameable;
- (BOOL)isTaskContainer;
- (BOOL)rem_setListPropertiesWithBlock:(id)block error:(id *)error;
- (BOOL)setEtag:(id)etag forItemAtURL:(id)l;
- (BOOL)setEtag:(id)etag forItemAtURL:(id)l reminderChangeItem:(id)item;
- (BOOL)setScheduleTag:(id)tag forItemAtURL:(id)l;
- (BOOL)setURL:(id)l forResourceWithUUID:(id)d;
- (BOOL)setURL:(id)l forResourceWithUUID:(id)d reminderChangeItem:(id)item;
- (BOOL)updateResourcesFromServer:(id)server;
- (MobileCalDAVCalendar)initWithCalendarURL:(id)l list:(id)list principal:(id)principal title:(id)title;
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
- (id)_createActionsForItems:(id)items withAction:(int)action backingReminders:(id)reminders alreadySentItems:(id)sentItems createServerIDs:(BOOL)ds shouldSave:(BOOL *)save;
- (id)_preferredAddress;
- (id)_rem_copyReminderWithExternalID:(id)d;
- (id)_rem_copyReminderWithUniqueIdentifier:(id)identifier inList:(id)list;
- (id)calendarUserAddresses;
- (id)copyDeletedItems;
- (id)etagsForItemURLs:(id)ls;
- (id)rem_getCalCalendar;
- (id)rem_initCalCalendarWithTitle:(id)title;
- (id)rem_saveRequest;
- (id)rem_store;
- (int)order;
- (int)sharingStatus;
- (void)_addShareeWithObjectID:(id)d toDictionaryIfNeeded:(id)needed;
- (void)_collectShareeActions;
- (void)_prepareForcedRefreshSyncActionsForTruncatedHistoryWithTrackingState:(id)state completionBlock:(id)block;
- (void)_setSupportsEvents:(BOOL)events supportsTodos:(BOOL)todos;
- (void)clearEventChanges;
- (void)copyAddedItemsWithBatchHandler:(id)handler;
- (void)copyAllItemsWithBatchHandler:(id)handler;
- (void)copyModifiedItemsWithBatchHandler:(id)handler;
- (void)deleteAction:(id)action completedWithError:(id)error;
- (void)deleteCalendar;
- (void)flushCaches;
- (void)prepareMergeSyncActionsWithCompletionBlock:(id)block;
- (void)prepareSyncActionsWithCompletionBlock:(id)block;
- (void)putAction:(id)action completedWithError:(id)error;
- (void)rem_invalidateCalCalendarWithReload:(BOOL)reload;
- (void)setBulkRequests:(id)requests;
- (void)setCalendarURL:(id)l;
- (void)setCanBePublished:(BOOL)published;
- (void)setCanBeShared:(BOOL)shared;
- (void)setColor:(id)color;
- (void)setCtag:(id)ctag;
- (void)setGuid:(id)guid;
- (void)setIsDirty:(BOOL)dirty;
- (void)setIsEditable:(BOOL)editable;
- (void)setIsEventContainer:(BOOL)container;
- (void)setIsFamilyCalendar:(BOOL)calendar;
- (void)setIsMarkedImmutableSharees:(BOOL)sharees;
- (void)setIsMarkedUndeletable:(BOOL)undeletable;
- (void)setIsPublished:(BOOL)published;
- (void)setIsRenameable:(BOOL)renameable;
- (void)setIsSubscribed:(BOOL)subscribed;
- (void)setIsTaskContainer:(BOOL)container;
- (void)setNotes:(id)notes;
- (void)setOrder:(int)order;
- (void)setOwner:(id)owner;
- (void)setOwnerDisplayName:(id)name;
- (void)setPreferredCalendarUserAddresses:(id)addresses;
- (void)setPublishURL:(id)l;
- (void)setPushKey:(id)key;
- (void)setSharees:(id)sharees;
- (void)setSharingStatus:(int)status;
- (void)setSymbolicColorName:(id)name;
- (void)setSyncToken:(id)token;
- (void)setTitle:(id)title;
@end

@implementation MobileCalDAVCalendar

+ (id)calendarWithREMList:(id)list principal:(id)principal
{
  listCopy = list;
  principalCopy = principal;
  if (listCopy && [listCopy sharingStatus] != 3)
  {
    name = [listCopy name];
    externalIdentifier = [listCopy externalIdentifier];
    calendarHomeURL = [principalCopy calendarHomeURL];
    v11 = [externalIdentifier da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:calendarHomeURL];

    daIsNotificationsCollection = [listCopy daIsNotificationsCollection];
    v13 = off_278D4EE18;
    if (!daIsNotificationsCollection)
    {
      v13 = off_278D4EE08;
    }

    v7 = [objc_alloc(*v13) initWithCalendarURL:v11 list:listCopy principal:principalCopy title:name];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (MobileCalDAVCalendar)initWithCalendarURL:(id)l list:(id)list principal:(id)principal title:(id)title
{
  lCopy = l;
  listCopy = list;
  principalCopy = principal;
  titleCopy = title;
  v32.receiver = self;
  v32.super_class = MobileCalDAVCalendar;
  v14 = [(MobileCalDAVCalendar *)&v32 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_14;
  }

  [(MobileCalDAVCalendar *)v14 setPrincipal:principalCopy];
  [(MobileCalDAVCalendar *)v15 setIsEnabled:1];
  [(MobileCalDAVCalendar *)v15 setIsDirty:0];
  principal = [(MobileCalDAVCalendar *)v15 principal];
  calendarHomeURL = [principal calendarHomeURL];
  v18 = [lCopy da_leastInfoStringRepresentationRelativeToParentURL:calendarHomeURL];
  calendarURLString = v15->_calendarURLString;
  v15->_calendarURLString = v18;

  if (listCopy)
  {
    v20 = listCopy;
  }

  else
  {
    rem_getCalCalendar = [(MobileCalDAVCalendar *)v15 rem_getCalCalendar];

    if (rem_getCalCalendar)
    {
      goto LABEL_6;
    }

    v20 = [(MobileCalDAVCalendar *)v15 rem_initCalCalendarWithTitle:titleCopy];
  }

  rem_calCalendar = v15->_rem_calCalendar;
  v15->_rem_calCalendar = v20;

LABEL_6:
  rem_calCalendar = [(MobileCalDAVCalendar *)v15 rem_calCalendar];

  if (rem_calCalendar)
  {
    [(MobileCalDAVCalendar *)v15 _rem_updateCalendarOwnerInfo];
    daExternalIdentificationTag = [listCopy daExternalIdentificationTag];
    if (daExternalIdentificationTag)
    {
      da_newGUID = daExternalIdentificationTag;
      objc_storeStrong(&v15->_guid, daExternalIdentificationTag);
    }

    else
    {
      da_newGUID = [MEMORY[0x277CCACA8] da_newGUID];
      [(MobileCalDAVCalendar *)v15 setGuid:da_newGUID];
    }
  }

  calendarURLString = [(MobileCalDAVCalendar *)v15 calendarURLString];

  if (calendarURLString)
  {
    rem_calCalendar2 = [(MobileCalDAVCalendar *)v15 rem_calCalendar];
    objectID = [rem_calCalendar2 objectID];
    calendarURLString2 = [(MobileCalDAVCalendar *)v15 calendarURLString];
    [MobileCalDAVCalendar rem_cacheListObjectID:objectID forCalendarURLString:calendarURLString2];
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

+ (void)rem_cacheListObjectID:(id)d forCalendarURLString:(id)string
{
  if (string)
  {
    stringCopy = string;
    dCopy = d;
    _rem_calURLToREMObjectIDCache = [self _rem_calURLToREMObjectIDCache];
    [_rem_calURLToREMObjectIDCache setObject:dCopy forKeyedSubscript:stringCopy];
  }
}

+ (void)rem_removeListObjectIDCacheEntryForCalendarURLString:(id)string
{
  if (string)
  {
    stringCopy = string;
    _rem_calURLToREMObjectIDCache = [self _rem_calURLToREMObjectIDCache];
    [_rem_calURLToREMObjectIDCache removeObjectForKey:stringCopy];
  }
}

+ (id)rem_cachedListObjectIDForURLString:(id)string
{
  if (string)
  {
    stringCopy = string;
    _rem_calURLToREMObjectIDCache = [self _rem_calURLToREMObjectIDCache];
    v6 = [_rem_calURLToREMObjectIDCache objectForKeyedSubscript:stringCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)rem_clearListObjectIDCache
{
  _rem_calURLToREMObjectIDCache = [self _rem_calURLToREMObjectIDCache];
  [_rem_calURLToREMObjectIDCache removeAllObjects];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v12.receiver = self;
  v12.super_class = MobileCalDAVCalendar;
  v4 = [(MobileCalDAVCalendar *)&v12 description];
  guid = [(MobileCalDAVCalendar *)self guid];
  rem_calCalendar = [(MobileCalDAVCalendar *)self rem_calCalendar];
  objectID = [rem_calCalendar objectID];
  v8 = objectID;
  v9 = @"(not loaded)";
  if (objectID)
  {
    v9 = objectID;
  }

  v10 = [v3 stringWithFormat:@"%@ [%@] remObjectID=%@", v4, guid, v9];

  return v10;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = MobileCalDAVCalendar;
  v4 = [(MobileCalDAVCalendar *)&v11 description];
  guid = [(MobileCalDAVCalendar *)self guid];
  rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  objectID = [rem_getCalCalendar objectID];
  title = [(MobileCalDAVCalendar *)self title];
  v9 = [v3 stringWithFormat:@"%@ [%@] remObjectID=%@ title=%@", v4, guid, objectID, title];

  return v9;
}

- (void)deleteCalendar
{
  v35 = *MEMORY[0x277D85DE8];
  rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v4 = DALoggingwithCategory();
  rem_saveRequest = v4;
  if (rem_getCalCalendar)
  {
    v6 = MEMORY[0x277CF3AF0];
    v7 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v4, v7))
    {
      guid = [(MobileCalDAVCalendar *)self guid];
      calendarURLString = [(MobileCalDAVCalendar *)self calendarURLString];
      *buf = 138543618;
      v28 = guid;
      v29 = 2112;
      v30 = calendarURLString;
      _os_log_impl(&dword_242490000, rem_saveRequest, v7, "Deleting calendar with guid %{public}@ or extID %@", buf, 0x16u);
    }

    rem_saveRequest = [(MobileCalDAVCalendar *)self rem_saveRequest];
    v10 = [rem_saveRequest updateList:rem_getCalCalendar];
    [v10 removeFromParent];
    v26 = 0;
    [rem_saveRequest saveSynchronouslyWithError:&v26];
    v11 = v26;
    v12 = DALoggingwithCategory();
    v13 = v12;
    if (v11)
    {
      v14 = *(v6 + 3);
      if (os_log_type_enabled(v12, v14))
      {
        objectID = [rem_getCalCalendar objectID];
        guid2 = [(MobileCalDAVCalendar *)self guid];
        calendarURLString2 = [(MobileCalDAVCalendar *)self calendarURLString];
        localizedDescription = [v11 localizedDescription];
        *buf = 138544130;
        v28 = objectID;
        v29 = 2114;
        v30 = guid2;
        v31 = 2112;
        v32 = calendarURLString2;
        v33 = 2114;
        v34 = localizedDescription;
        _os_log_impl(&dword_242490000, v13, v14, "MobileCalDAVCalendar: ERROR: Failed to save delete of list {listID: %{public}@, guid: %{public}@, extID: %@, error: %{public}@}", buf, 0x2Au);
      }
    }

    else
    {
      v22 = *(v6 + 5);
      if (os_log_type_enabled(v12, v22))
      {
        calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
        objectID2 = [rem_getCalCalendar objectID];
        *buf = 138412546;
        v28 = calendarURL;
        v29 = 2114;
        v30 = objectID2;
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
      guid3 = [(MobileCalDAVCalendar *)self guid];
      calendarURLString3 = [(MobileCalDAVCalendar *)self calendarURLString];
      *buf = 138543618;
      v28 = guid3;
      v29 = 2112;
      v30 = calendarURLString3;
      _os_log_impl(&dword_242490000, rem_saveRequest, v19, "MobileCalDAVCalendar: Couldn't find the backing list of the calendar to delete {guid %{public}@, extID %@}.", buf, 0x16u);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)setIsDirty:(BOOL)dirty
{
  v11 = *MEMORY[0x277D85DE8];
  if (dirty)
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277CF3AF0] + 7);
    if (os_log_type_enabled(v5, v6))
    {
      title = [(MobileCalDAVCalendar *)self title];
      v9 = 138412290;
      v10 = title;
      _os_log_impl(&dword_242490000, v5, v6, "Marking calendar %@ as dirty.", &v9, 0xCu);
    }
  }

  self->_isDirty = dirty;
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setGuid:(id)guid
{
  guidCopy = guid;
  guid = [(MobileCalDAVCalendar *)self guid];
  v7 = guid;
  if (guid == guidCopy)
  {
  }

  else
  {
    guid2 = [(MobileCalDAVCalendar *)self guid];
    v9 = [guid2 isEqualToString:guidCopy];

    if ((v9 & 1) == 0)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __32__MobileCalDAVCalendar_setGuid___block_invoke;
      v10[3] = &unk_278D4F5E0;
      v11 = guidCopy;
      [(MobileCalDAVCalendar *)self rem_setListPropertiesWithBlock:v10 error:0];
      objc_storeStrong(&self->_guid, guid);
      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }
  }
}

- (NSURL)calendarURL
{
  calendarURLString = [(MobileCalDAVCalendar *)self calendarURLString];
  principal = [(MobileCalDAVCalendar *)self principal];
  calendarHomeURL = [principal calendarHomeURL];
  v6 = [calendarURLString da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:calendarHomeURL];

  return v6;
}

- (void)setCalendarURL:(id)l
{
  v27 = *MEMORY[0x277D85DE8];
  lCopy = l;
  calendarURLString = [(MobileCalDAVCalendar *)self calendarURLString];
  principal = [(MobileCalDAVCalendar *)self principal];
  calendarHomeURL = [principal calendarHomeURL];
  v8 = [lCopy da_leastInfoStringRepresentationRelativeToParentURL:calendarHomeURL];

  da_appendSlashIfNeeded = [v8 da_appendSlashIfNeeded];

  if (calendarURLString != da_appendSlashIfNeeded && ([calendarURLString isEqualToString:da_appendSlashIfNeeded] & 1) == 0)
  {
    rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
    v11 = DALoggingwithCategory();
    v12 = MEMORY[0x277CF3AF0];
    v13 = *(MEMORY[0x277CF3AF0] + 5);
    if (os_log_type_enabled(v11, v13))
    {
      guid = [(MobileCalDAVCalendar *)self guid];
      objectID = [rem_getCalCalendar objectID];
      *buf = 138543618;
      selfCopy = guid;
      v25 = 2114;
      v26 = objectID;
      _os_log_impl(&dword_242490000, v11, v13, "MobileCalDAVCalendar: Set URL on calendar (guid=%{public}@, listID=%{public}@)", buf, 0x16u);
    }

    if (rem_getCalCalendar)
    {
      calendarURLString2 = [(MobileCalDAVCalendar *)self calendarURLString];
      [MobileCalDAVCalendar rem_removeListObjectIDCacheEntryForCalendarURLString:calendarURLString2];

      [(MobileCalDAVCalendar *)self setCalendarURLString:da_appendSlashIfNeeded];
      objectID2 = [rem_getCalCalendar objectID];
      calendarURLString3 = [(MobileCalDAVCalendar *)self calendarURLString];
      [MobileCalDAVCalendar rem_cacheListObjectID:objectID2 forCalendarURLString:calendarURLString3];

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
        selfCopy = self;
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

- (void)_setSupportsEvents:(BOOL)events supportsTodos:(BOOL)todos
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__MobileCalDAVCalendar__setSupportsEvents_supportsTodos___block_invoke;
  v5[3] = &__block_descriptor_33_e27_v16__0__REMListChangeItem_8l;
  v6 = !todos;
  if ([(MobileCalDAVCalendar *)self rem_setListPropertiesWithBlock:v5 error:0])
  {
    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (BOOL)isTaskContainer
{
  rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v3 = rem_getCalCalendar;
  if (rem_getCalCalendar)
  {
    v4 = [rem_getCalCalendar daIsEventOnlyContainer] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)setIsTaskContainer:(BOOL)container
{
  containerCopy = container;
  isEventContainer = [(MobileCalDAVCalendar *)self isEventContainer];
  v6 = [(MobileCalDAVPrincipal *)self->_principal isEnabledForTodos]& containerCopy;

  [(MobileCalDAVCalendar *)self _setSupportsEvents:isEventContainer supportsTodos:v6];
}

- (BOOL)isEventContainer
{
  rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v3 = rem_getCalCalendar;
  if (rem_getCalCalendar)
  {
    daIsEventOnlyContainer = [rem_getCalCalendar daIsEventOnlyContainer];
  }

  else
  {
    daIsEventOnlyContainer = 0;
  }

  return daIsEventOnlyContainer;
}

- (void)setIsEventContainer:(BOOL)container
{
  containerCopy = container;
  isTaskContainer = [(MobileCalDAVCalendar *)self isTaskContainer];
  v6 = [(MobileCalDAVPrincipal *)self->_principal isEnabledForEvents]& containerCopy;

  [(MobileCalDAVCalendar *)self _setSupportsEvents:v6 supportsTodos:isTaskContainer];
}

- (void)setIsSubscribed:(BOOL)subscribed
{
  v36 = *MEMORY[0x277D85DE8];
  if (subscribed)
  {
    rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
    if (rem_getCalCalendar)
    {
      v5 = rem_getCalCalendar;
      if ([rem_getCalCalendar daIsEventOnlyContainer])
      {
        rem_getCalCalendar2 = v5;
      }

      else
      {
        v7 = DALoggingwithCategory();
        v8 = MEMORY[0x277CF3AF0];
        v9 = *(MEMORY[0x277CF3AF0] + 3);
        if (os_log_type_enabled(v7, v9))
        {
          guid = [(MobileCalDAVCalendar *)self guid];
          calendarURLString = [(MobileCalDAVCalendar *)self calendarURLString];
          objectID = [v5 objectID];
          *buf = 138543874;
          v29 = guid;
          v30 = 2112;
          v31 = calendarURLString;
          v32 = 2114;
          v33 = objectID;
          _os_log_impl(&dword_242490000, v7, v9, "Found a list that should indeed be a subscribed calendar due to 50659315 {guid: %{public}@, url: %@, listID: %{public}@}", buf, 0x20u);
        }

        [(MobileCalDAVCalendar *)self rem_setListPropertiesWithBlock:&__block_literal_global_42 error:0];
        rem_getCalCalendar2 = [(MobileCalDAVCalendar *)self rem_getCalCalendar];

        rem_saveRequest = [(MobileCalDAVCalendar *)self rem_saveRequest];
        v14 = [rem_saveRequest updateList:rem_getCalCalendar2];
        [v14 removeFromParent];
        v27 = 0;
        v15 = [rem_saveRequest saveSynchronouslyWithError:&v27];
        v16 = v27;
        if (v15)
        {
          v17 = DALoggingwithCategory();
          v18 = *(v8 + 5);
          if (os_log_type_enabled(v17, v18))
          {
            calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
            objectID2 = [rem_getCalCalendar2 objectID];
            *buf = 138412546;
            v29 = calendarURL;
            v30 = 2114;
            v31 = objectID2;
            _os_log_impl(&dword_242490000, v17, v18, "The unexpected subscribed calendar list is now deleted and marked as event calendar: {url: %@, objectID: %{public}@}", buf, 0x16u);
          }
        }

        else
        {
          v17 = DALoggingwithCategory();
          if (os_log_type_enabled(v17, v9))
          {
            objectID3 = [rem_getCalCalendar2 objectID];
            guid2 = [(MobileCalDAVCalendar *)self guid];
            calendarURLString2 = [(MobileCalDAVCalendar *)self calendarURLString];
            localizedDescription = [v16 localizedDescription];
            *buf = 138544130;
            v29 = objectID3;
            v30 = 2114;
            v31 = guid2;
            v32 = 2112;
            v33 = calendarURLString2;
            v34 = 2114;
            v35 = localizedDescription;
            v24 = localizedDescription;
            _os_log_impl(&dword_242490000, v17, v9, "ERROR: Failed to save delete of list {listID: %{public}@, guid: %{public}@, extID: %@, error: %{public}@}", buf, 0x2Au);
          }
        }

        [(MobileCalDAVCalendar *)self setRem_calCalendar:0];
        [(MobileCalDAVCalendar *)self setIsDirty:1];
      }
    }

    else
    {
      rem_getCalCalendar2 = 0;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (NSString)title
{
  rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v3 = rem_getCalCalendar;
  if (!rem_getCalCalendar || ([rem_getCalCalendar name], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = 0;
  }

  return v4;
}

- (void)setTitle:(id)title
{
  v21 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  v5 = titleCopy;
  if (titleCopy && ![titleCopy isEqualToString:&stru_2854B8D68])
  {
    user = v5;
  }

  else
  {
    principal = [(MobileCalDAVCalendar *)self principal];
    user = [principal user];

    v8 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v8, v9))
    {
      calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
      *buf = 138412546;
      v18 = user;
      v19 = 2112;
      v20 = calendarURL;
      _os_log_impl(&dword_242490000, v8, v9, "Empty calendar title receieved. Setting calendar title to %@. Calendar URL: %@", buf, 0x16u);
    }
  }

  title = [(MobileCalDAVCalendar *)self title];
  if (user == title)
  {
    goto LABEL_11;
  }

  title2 = [(MobileCalDAVCalendar *)self title];
  v13 = [user isEqualToString:title2];

  if ((v13 & 1) == 0)
  {
    title = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
    if (title)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __33__MobileCalDAVCalendar_setTitle___block_invoke;
      v15[3] = &unk_278D4F5E0;
      v16 = user;
      [(MobileCalDAVCalendar *)self rem_setListPropertiesWithBlock:v15 error:0];
      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }

LABEL_11:
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)setNotes:(id)notes
{
  v14 = *MEMORY[0x277D85DE8];
  notesCopy = notes;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 4);
  if (os_log_type_enabled(v5, v6))
  {
    v8 = 138412802;
    v9 = notesCopy;
    v10 = 2112;
    selfCopy = self;
    v12 = 2112;
    v13 = 0;
    _os_log_impl(&dword_242490000, v5, v6, "MobileCalDAVCalendar: LOOKATME: No .notes to set in REMList for now {setvalue=%@, calendar=%@, stack=%@}", &v8, 0x20u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (NSString)color
{
  rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v3 = rem_getCalCalendar;
  if (rem_getCalCalendar)
  {
    ekColor = [rem_getCalCalendar ekColor];
    daHexString = [ekColor daHexString];
  }

  else
  {
    daHexString = 0;
  }

  return daHexString;
}

- (void)setColor:(id)color
{
  v27 = *MEMORY[0x277D85DE8];
  colorCopy = color;
  rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v6 = rem_getCalCalendar;
  if (rem_getCalCalendar)
  {
    ekColor = [rem_getCalCalendar ekColor];
    v8 = [objc_alloc(MEMORY[0x277D445D0]) initWithDASymbolicColorName:0 daHexString:colorCopy];
    if ([colorCopy length])
    {
      if (v8)
      {
        daHexString = [ekColor daHexString];
        daHexString2 = [v8 daHexString];
        v11 = [daHexString isEqual:daHexString2];

        if ((v11 & 1) == 0)
        {
          v12 = DALoggingwithCategory();
          v13 = *(MEMORY[0x277CF3AF0] + 6);
          if (os_log_type_enabled(v12, v13))
          {
            daHexString3 = [v8 daHexString];
            daHexString4 = [ekColor daHexString];
            *buf = 138413058;
            v20 = daHexString3;
            v21 = 2112;
            v22 = colorCopy;
            v23 = 2112;
            v24 = daHexString4;
            v25 = 2112;
            selfCopy = self;
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
  rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v3 = rem_getCalCalendar;
  if (rem_getCalCalendar)
  {
    ekColor = [rem_getCalCalendar ekColor];
    daSymbolicColorName = [ekColor daSymbolicColorName];
  }

  else
  {
    daSymbolicColorName = 0;
  }

  return daSymbolicColorName;
}

- (void)setSymbolicColorName:(id)name
{
  v27 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v6 = rem_getCalCalendar;
  if (rem_getCalCalendar)
  {
    ekColor = [rem_getCalCalendar ekColor];
    v8 = [objc_alloc(MEMORY[0x277D445D0]) initWithDASymbolicColorName:nameCopy daHexString:0];
    if ([nameCopy length])
    {
      if (v8)
      {
        daSymbolicColorName = [ekColor daSymbolicColorName];
        daSymbolicColorName2 = [v8 daSymbolicColorName];
        v11 = [daSymbolicColorName isEqual:daSymbolicColorName2];

        if ((v11 & 1) == 0)
        {
          v12 = DALoggingwithCategory();
          v13 = *(MEMORY[0x277CF3AF0] + 6);
          if (os_log_type_enabled(v12, v13))
          {
            daSymbolicColorName3 = [v8 daSymbolicColorName];
            daSymbolicColorName4 = [ekColor daSymbolicColorName];
            *buf = 138413058;
            v20 = daSymbolicColorName3;
            v21 = 2112;
            v22 = nameCopy;
            v23 = 2112;
            v24 = daSymbolicColorName4;
            v25 = 2112;
            selfCopy = self;
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
  rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v3 = rem_getCalCalendar;
  if (rem_getCalCalendar)
  {
    daPushKey = [rem_getCalCalendar daPushKey];
  }

  else
  {
    daPushKey = 0;
  }

  return daPushKey;
}

- (void)setPushKey:(id)key
{
  keyCopy = key;
  pushKey = [(MobileCalDAVCalendar *)self pushKey];
  if (pushKey != keyCopy && ([keyCopy isEqualToString:pushKey] & 1) == 0)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __35__MobileCalDAVCalendar_setPushKey___block_invoke;
    v6[3] = &unk_278D4F5E0;
    v7 = keyCopy;
    if ([(MobileCalDAVCalendar *)self rem_setListPropertiesWithBlock:v6 error:0])
    {
      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }
  }
}

- (NSDictionary)bulkRequests
{
  rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v3 = rem_getCalCalendar;
  if (rem_getCalCalendar)
  {
    daBulkRequests = [rem_getCalCalendar daBulkRequests];
    if (daBulkRequests)
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
    daBulkRequests = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
LABEL_7:
    daBulkRequests = daBulkRequests;
    v5 = daBulkRequests;
    goto LABEL_9;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (void)setBulkRequests:(id)requests
{
  requestsCopy = requests;
  bulkRequests = [(MobileCalDAVCalendar *)self bulkRequests];
  if (bulkRequests != requestsCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([requestsCopy isEqualToDictionary:bulkRequests] & 1) == 0)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __40__MobileCalDAVCalendar_setBulkRequests___block_invoke;
      v6[3] = &unk_278D4F5E0;
      v7 = requestsCopy;
      if ([(MobileCalDAVCalendar *)self rem_setListPropertiesWithBlock:v6 error:0])
      {
        [(MobileCalDAVCalendar *)self setIsDirty:1];
      }
    }
  }
}

- (NSURL)owner
{
  rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v3 = rem_getCalCalendar;
  if (rem_getCalCalendar)
  {
    sharedOwnerAddress = [rem_getCalCalendar sharedOwnerAddress];
    if (sharedOwnerAddress)
    {
      v5 = [MEMORY[0x277CBEBC0] URLWithString:sharedOwnerAddress];
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

- (void)setOwner:(id)owner
{
  absoluteString = [owner absoluteString];
  owner = [(MobileCalDAVCalendar *)self owner];
  absoluteString2 = [owner absoluteString];

  if (absoluteString != absoluteString2 && ([absoluteString isEqualToString:absoluteString2] & 1) == 0)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __33__MobileCalDAVCalendar_setOwner___block_invoke;
    v7[3] = &unk_278D4F5E0;
    v8 = absoluteString;
    if ([(MobileCalDAVCalendar *)self rem_setListPropertiesWithBlock:v7 error:0])
    {
      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }
  }
}

- (BOOL)canBePublished
{
  rem_account = [(MobileCalDAVCalendar *)self rem_account];
  v3 = rem_account;
  if (rem_account)
  {
    daSupportsSharedCalendars = [rem_account daSupportsSharedCalendars];
  }

  else
  {
    daSupportsSharedCalendars = 0;
  }

  return daSupportsSharedCalendars;
}

- (void)setCanBePublished:(BOOL)published
{
  publishedCopy = published;
  v10 = *MEMORY[0x277D85DE8];
  if ([(MobileCalDAVCalendar *)self canBePublished]!= published)
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277CF3AF0] + 7);
    if (os_log_type_enabled(v4, v5))
    {
      v7[0] = 67109378;
      v7[1] = publishedCopy;
      v8 = 2112;
      v9 = 0;
      _os_log_impl(&dword_242490000, v4, v5, "MobileCalDAVCalendar: LOOKATME: REMList has no sharing (calenderFlags::canBePublished) to set yet {setvalue=%d, stack=%@}", v7, 0x12u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)canBeShared
{
  rem_account = [(MobileCalDAVCalendar *)self rem_account];
  v3 = rem_account;
  if (rem_account)
  {
    daSupportsSharedCalendars = [rem_account daSupportsSharedCalendars];
  }

  else
  {
    daSupportsSharedCalendars = 0;
  }

  return daSupportsSharedCalendars;
}

- (void)setCanBeShared:(BOOL)shared
{
  sharedCopy = shared;
  v10 = *MEMORY[0x277D85DE8];
  if ([(MobileCalDAVCalendar *)self canBeShared]!= shared)
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277CF3AF0] + 7);
    if (os_log_type_enabled(v4, v5))
    {
      v7[0] = 67109378;
      v7[1] = sharedCopy;
      v8 = 2112;
      v9 = 0;
      _os_log_impl(&dword_242490000, v4, v5, "MobileCalDAVCalendar: LOOKATME: REMList has no sharing (calenderFlags::canBeShared) to set yet {setvalue=%d, stack=%@}", v7, 0x12u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setIsFamilyCalendar:(BOOL)calendar
{
  calendarCopy = calendar;
  v10 = *MEMORY[0x277D85DE8];
  if ([(MobileCalDAVCalendar *)self isFamilyCalendar]!= calendar)
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(v4, v5))
    {
      v7[0] = 67109378;
      v7[1] = calendarCopy;
      v8 = 2112;
      v9 = 0;
      _os_log_impl(&dword_242490000, v4, v5, "MobileCalDAVCalendar: LOOKATME: REMList has no (calenderFlags::isFamilyCalendar) to set yet {setvalue=%d, stack=%@}", v7, 0x12u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setIsMarkedUndeletable:(BOOL)undeletable
{
  undeletableCopy = undeletable;
  v10 = *MEMORY[0x277D85DE8];
  if ([(MobileCalDAVCalendar *)self isMarkedUndeletable]!= undeletable)
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(v4, v5))
    {
      v7[0] = 67109378;
      v7[1] = undeletableCopy;
      v8 = 2112;
      v9 = 0;
      _os_log_impl(&dword_242490000, v4, v5, "MobileCalDAVCalendar: LOOKATME: REMList has no (calenderFlags::isMarkedUndeletable) to set yet {setvalue=%d, stack=%@}", v7, 0x12u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setIsMarkedImmutableSharees:(BOOL)sharees
{
  shareesCopy = sharees;
  v10 = *MEMORY[0x277D85DE8];
  if ([(MobileCalDAVCalendar *)self isMarkedImmutableSharees]!= sharees)
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(v4, v5))
    {
      v7[0] = 67109378;
      v7[1] = shareesCopy;
      v8 = 2112;
      v9 = 0;
      _os_log_impl(&dword_242490000, v4, v5, "MobileCalDAVCalendar: LOOKATME: REMList has no (calenderFlags::isMarkedImmutableSharees) to set yet {setvalue=%d, stack=%@}", v7, 0x12u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setIsPublished:(BOOL)published
{
  publishedCopy = published;
  v10 = *MEMORY[0x277D85DE8];
  if ([(MobileCalDAVCalendar *)self isPublished]!= published)
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(v4, v5))
    {
      v7[0] = 67109378;
      v7[1] = publishedCopy;
      v8 = 2112;
      v9 = 0;
      _os_log_impl(&dword_242490000, v4, v5, "MobileCalDAVCalendar: LOOKATME: REMList has no (isPublished) to set yet {setvalue=%d, stack=%@}", v7, 0x12u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setPublishURL:(id)l
{
  v14 = *MEMORY[0x277D85DE8];
  lCopy = l;
  publishURL = [(MobileCalDAVCalendar *)self publishURL];
  v6 = publishURL;
  if (publishURL != lCopy && ([publishURL da_isEqualToDAVURL:lCopy] & 1) == 0)
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(v7, v8))
    {
      v10 = 138412546;
      v11 = lCopy;
      v12 = 2112;
      v13 = 0;
      _os_log_impl(&dword_242490000, v7, v8, "MobileCalDAVCalendar: LOOKATME: REMList has no (publishURL) to set yet {setvalue=%@, stack=%@}", &v10, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (NSString)ownerDisplayName
{
  rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v3 = rem_getCalCalendar;
  if (rem_getCalCalendar)
  {
    sharedOwnerName = [rem_getCalCalendar sharedOwnerName];
  }

  else
  {
    sharedOwnerName = 0;
  }

  return sharedOwnerName;
}

- (void)setOwnerDisplayName:(id)name
{
  nameCopy = name;
  ownerDisplayName = [(MobileCalDAVCalendar *)self ownerDisplayName];
  v6 = ownerDisplayName;
  if (ownerDisplayName == nameCopy)
  {
  }

  else
  {
    ownerDisplayName2 = [(MobileCalDAVCalendar *)self ownerDisplayName];
    v8 = [nameCopy isEqualToString:ownerDisplayName2];

    if ((v8 & 1) == 0)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __44__MobileCalDAVCalendar_setOwnerDisplayName___block_invoke;
      v9[3] = &unk_278D4F5E0;
      v10 = nameCopy;
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
  preferredCalendarUserAddresses = [(MobileCalDAVCalendar *)self preferredCalendarUserAddresses];
  v5 = [v3 preferredAddress:preferredCalendarUserAddresses];
  v6 = [v2 URLWithString:v5];

  return v6;
}

- (NSString)ownerEmailAddress
{
  v23 = *MEMORY[0x277D85DE8];
  _preferredAddress = [(MobileCalDAVCalendar *)self _preferredAddress];
  v4 = _preferredAddress;
  if (_preferredAddress && ([_preferredAddress scheme], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasPrefix:", @"mailto"), v5, v6))
  {
    resourceSpecifier = [v4 resourceSpecifier];
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    calendarUserAddresses = [(MobileCalDAVCalendar *)self calendarUserAddresses];
    v9 = [calendarUserAddresses countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(calendarUserAddresses);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          scheme = [v13 scheme];
          v15 = [scheme hasPrefix:@"mailto"];

          if (v15)
          {
            resourceSpecifier = [v13 resourceSpecifier];

            goto LABEL_14;
          }
        }

        v10 = [calendarUserAddresses countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    resourceSpecifier = 0;
  }

LABEL_14:

  v16 = *MEMORY[0x277D85DE8];

  return resourceSpecifier;
}

- (NSString)ownerPhoneNumber
{
  v23 = *MEMORY[0x277D85DE8];
  _preferredAddress = [(MobileCalDAVCalendar *)self _preferredAddress];
  v4 = _preferredAddress;
  if (_preferredAddress && ([_preferredAddress scheme], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasPrefix:", @"tel"), v5, v6))
  {
    resourceSpecifier = [v4 resourceSpecifier];
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    calendarUserAddresses = [(MobileCalDAVCalendar *)self calendarUserAddresses];
    v9 = [calendarUserAddresses countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(calendarUserAddresses);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          scheme = [v13 scheme];
          v15 = [scheme hasPrefix:@"tel"];

          if (v15)
          {
            resourceSpecifier = [v13 resourceSpecifier];

            goto LABEL_14;
          }
        }

        v10 = [calendarUserAddresses countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    resourceSpecifier = 0;
  }

LABEL_14:

  v16 = *MEMORY[0x277D85DE8];

  return resourceSpecifier;
}

- (NSSet)preferredCalendarUserAddresses
{
  daPrincipal = [(MobileCalDAVCalendar *)self daPrincipal];
  v4 = [daPrincipal preferredCalendarUserAddressesForCalendar:self];

  return v4;
}

- (void)setPreferredCalendarUserAddresses:(id)addresses
{
  addressesCopy = addresses;
  daPrincipal = [(MobileCalDAVCalendar *)self daPrincipal];
  [daPrincipal setPreferredCalendarUserAddresses:addressesCopy forCalendar:self];
}

- (id)calendarUserAddresses
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  preferredCalendarUserAddresses = [(MobileCalDAVCalendar *)self preferredCalendarUserAddresses];
  v5 = [preferredCalendarUserAddresses countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(preferredCalendarUserAddresses);
        }

        address = [*(*(&v12 + 1) + 8 * i) address];
        [v3 addObject:address];
      }

      v6 = [preferredCalendarUserAddresses countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)hasCalendarUserAddressEquivalentToURL:(id)l
{
  v18 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (lCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    calendarUserAddresses = [(MobileCalDAVCalendar *)self calendarUserAddresses];
    v6 = [calendarUserAddresses countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(calendarUserAddresses);
          }

          absoluteString = [*(*(&v13 + 1) + 8 * i) absoluteString];
          v10 = [MobileCalDAVPrincipal compareAddressURL:lCopy localString:absoluteString];

          if (v10)
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }

        v6 = [calendarUserAddresses countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v3 = rem_getCalCalendar;
  if (rem_getCalCalendar)
  {
    LODWORD(rem_getCalCalendar) = [rem_getCalCalendar daDisplayOrder];
  }

  v4 = rem_getCalCalendar & ~(rem_getCalCalendar >> 31);

  return v4;
}

- (void)setOrder:(int)order
{
  if ([(MobileCalDAVCalendar *)self order]!= order)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __33__MobileCalDAVCalendar_setOrder___block_invoke;
    v5[3] = &__block_descriptor_36_e27_v16__0__REMListChangeItem_8l;
    orderCopy = order;
    if ([(MobileCalDAVCalendar *)self rem_setListPropertiesWithBlock:v5 error:0])
    {
      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }
  }
}

- (int)sharingStatus
{
  v16 = *MEMORY[0x277D85DE8];
  rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v4 = rem_getCalCalendar;
  if (!rem_getCalCalendar)
  {
LABEL_10:
    v6 = 0;
    goto LABEL_12;
  }

  sharingStatus = [rem_getCalCalendar sharingStatus];
  switch(sharingStatus)
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
        selfCopy = self;
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

- (void)setSharingStatus:(int)status
{
  if ([(MobileCalDAVCalendar *)self sharingStatus]!= status)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __41__MobileCalDAVCalendar_setSharingStatus___block_invoke;
    v5[3] = &__block_descriptor_36_e27_v16__0__REMListChangeItem_8l;
    statusCopy = status;
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

- (void)setSharees:(id)sharees
{
  v92 = *MEMORY[0x277D85DE8];
  v63 = [sharees mutableCopy];
  rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v5 = rem_getCalCalendar;
  if (rem_getCalCalendar)
  {
    selfCopy = self;
    v57 = rem_getCalCalendar;
    shareeContext = [rem_getCalCalendar shareeContext];
    sharees = [shareeContext sharees];

    array = [MEMORY[0x277CBEB18] array];
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    obj = sharees;
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
          address = [v65 address];
          v12 = [v10 URLWithString:address];

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
                acceptedURL = [v18 acceptedURL];
                if (acceptedURL)
                {
                  acceptedURL2 = [v18 acceptedURL];
                }

                else
                {
                  href = [v18 href];
                  acceptedURL2 = [href payloadAsFullURL];
                }

                if ([(MobileCalDAVCalendar *)v12 da_isEqualToDAVURL:acceptedURL2])
                {
                  v23 = [v18 rem_updatedREMShareeFromREMSharee:v65];
                  if (v23)
                  {
                    [array addObject:v23];
                    v24 = DALoggingwithCategory();
                    if (os_log_type_enabled(v24, type))
                    {
                      title = [(MobileCalDAVCalendar *)selfCopy title];
                      *buf = v56;
                      v87 = v12;
                      v88 = 2112;
                      v89 = title;
                      _os_log_impl(&dword_242490000, v24, type, "MobileCalDAVCalendar: Updating sharee %@ to calendar %@", buf, 0x16u);
                    }

                    v60 = 1;
                  }

                  else
                  {
                    [array addObject:v65];
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
            title2 = [(MobileCalDAVCalendar *)selfCopy title];
            *buf = v56;
            v87 = v12;
            v88 = 2112;
            v89 = title2;
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
            commonName = [v32 commonName];
            payloadAsString = [commonName payloadAsString];
            title3 = [(MobileCalDAVCalendar *)selfCopy title];
            *buf = 138412546;
            v87 = payloadAsString;
            v88 = 2112;
            v89 = title3;
            _os_log_impl(&dword_242490000, v33, v30, "MobileCalDAVCalendar: Adding sharee %@ to calendar %@", buf, 0x16u);

            v5 = v57;
          }

          v37 = [v32 rem_shareeForREMList:v5];
          [array addObject:v37];
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

    rem_saveRequest = [(MobileCalDAVCalendar *)selfCopy rem_saveRequest];
    v39 = [rem_saveRequest updateList:v5];
    shareeContext2 = [v39 shareeContext];
    [shareeContext2 removeAllSharees];
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v41 = array;
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

          [shareeContext2 addSharee:*(*(&v68 + 1) + 8 * m)];
        }

        v43 = [v41 countByEnumeratingWithState:&v68 objects:v84 count:16];
      }

      while (v43);
    }

    v46 = DALoggingwithCategory();
    v47 = *(MEMORY[0x277CF3AF0] + 5);
    if (os_log_type_enabled(v46, v47))
    {
      sharees2 = [shareeContext2 sharees];
      *buf = 138412546;
      v87 = sharees2;
      v88 = 2114;
      v89 = selfCopy;
      _os_log_impl(&dword_242490000, v46, v47, "MobileCalDAVCalendar: Setting new .sharees to REMList (%@, calendar=%{public}@).", buf, 0x16u);
    }

    v67 = 0;
    v49 = [rem_saveRequest saveSynchronouslyWithError:&v67];
    v50 = v67;
    v51 = v50;
    if (!v49 || v50)
    {
      v52 = DALoggingwithCategory();
      v53 = *(MEMORY[0x277CF3AF0] + 3);
      if (os_log_type_enabled(v52, v53))
      {
        localizedDescription = [v51 localizedDescription];
        *buf = 138543618;
        v87 = selfCopy;
        v88 = 2114;
        v89 = localizedDescription;
        _os_log_impl(&dword_242490000, v52, v53, "MobileCalDAVCalendar: Failed to save changes to sharees to calendar {calendar=%{public}@, error=%{public}@}.", buf, 0x16u);
      }
    }

    else
    {
      [(MobileCalDAVCalendar *)selfCopy rem_reloadCalCalendar];
    }

    [(MobileCalDAVCalendar *)selfCopy setIsDirty:1];

    goto LABEL_58;
  }

LABEL_59:

  v55 = *MEMORY[0x277D85DE8];
}

- (NSSet)sharees
{
  v22 = *MEMORY[0x277D85DE8];
  rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v3 = rem_getCalCalendar;
  if (rem_getCalCalendar)
  {
    shareeContext = [rem_getCalCalendar shareeContext];
    sharees = [shareeContext sharees];

    if (sharees && [sharees count])
    {
      v6 = objc_opt_new();
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = sharees;
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
  rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v3 = rem_getCalCalendar;
  if (rem_getCalCalendar)
  {
    v4 = [rem_getCalCalendar daIsReadOnly] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)setIsEditable:(BOOL)editable
{
  if ([(MobileCalDAVCalendar *)self isEditable]!= editable)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __38__MobileCalDAVCalendar_setIsEditable___block_invoke;
    v5[3] = &__block_descriptor_33_e27_v16__0__REMListChangeItem_8l;
    v6 = !editable;
    if ([(MobileCalDAVCalendar *)self rem_setListPropertiesWithBlock:v5 error:0])
    {
      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }
  }
}

- (BOOL)isRenameable
{
  rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v3 = rem_getCalCalendar;
  if (rem_getCalCalendar)
  {
    v4 = [rem_getCalCalendar daIsImmutable] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)setIsRenameable:(BOOL)renameable
{
  if ([(MobileCalDAVCalendar *)self isRenameable]!= renameable)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __40__MobileCalDAVCalendar_setIsRenameable___block_invoke;
    v5[3] = &__block_descriptor_33_e27_v16__0__REMListChangeItem_8l;
    v6 = !renameable;
    if ([(MobileCalDAVCalendar *)self rem_setListPropertiesWithBlock:v5 error:0])
    {
      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }
  }
}

- (NSString)ctag
{
  daPrincipal = [(MobileCalDAVCalendar *)self daPrincipal];
  refreshContext = [daPrincipal refreshContext];
  isForced = [refreshContext isForced];

  if (isForced)
  {
    externalModificationTag = 0;
  }

  else
  {
    rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
    v8 = rem_getCalCalendar;
    if (rem_getCalCalendar)
    {
      externalModificationTag = [rem_getCalCalendar externalModificationTag];
    }

    else
    {
      externalModificationTag = 0;
    }
  }

  return externalModificationTag;
}

- (void)setCtag:(id)ctag
{
  ctagCopy = ctag;
  ctag = [(MobileCalDAVCalendar *)self ctag];
  v6 = ctag;
  if (ctag == ctagCopy)
  {
  }

  else
  {
    ctag2 = [(MobileCalDAVCalendar *)self ctag];
    v8 = [ctagCopy isEqualToString:ctag2];

    if ((v8 & 1) == 0)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __32__MobileCalDAVCalendar_setCtag___block_invoke;
      v9[3] = &unk_278D4F5E0;
      v10 = ctagCopy;
      if ([(MobileCalDAVCalendar *)self rem_setListPropertiesWithBlock:v9 error:0])
      {
        [(MobileCalDAVCalendar *)self setIsDirty:1];
      }
    }
  }
}

- (NSString)syncToken
{
  daPrincipal = [(MobileCalDAVCalendar *)self daPrincipal];
  refreshContext = [daPrincipal refreshContext];
  isForced = [refreshContext isForced];

  if (isForced)
  {
    daSyncToken = 0;
  }

  else
  {
    rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
    v8 = rem_getCalCalendar;
    if (rem_getCalCalendar)
    {
      daSyncToken = [rem_getCalCalendar daSyncToken];
    }

    else
    {
      daSyncToken = 0;
    }
  }

  return daSyncToken;
}

- (void)setSyncToken:(id)token
{
  tokenCopy = token;
  syncToken = [(MobileCalDAVCalendar *)self syncToken];
  v6 = syncToken;
  if (syncToken == tokenCopy)
  {
  }

  else
  {
    syncToken2 = [(MobileCalDAVCalendar *)self syncToken];
    v8 = [tokenCopy isEqualToString:syncToken2];

    if ((v8 & 1) == 0)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __37__MobileCalDAVCalendar_setSyncToken___block_invoke;
      v11[3] = &unk_278D4F5E0;
      v9 = tokenCopy;
      v12 = v9;
      if ([(MobileCalDAVCalendar *)self rem_setListPropertiesWithBlock:v11 error:0])
      {
        [(MobileCalDAVCalendar *)self setIsDirty:1];
      }

      if ([v9 length])
      {
        daPrincipal = [(MobileCalDAVCalendar *)self daPrincipal];
        [daPrincipal setSupportsSyncToken:1];
      }
    }
  }
}

- (NSSet)allItemURLs
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v5 = rem_getCalCalendar;
  if (rem_getCalCalendar)
  {
    v38 = 0;
    v6 = [rem_getCalCalendar fetchRemindersWithError:&v38];
    v7 = v38;
    v8 = MEMORY[0x277CF3AF0];
    v33 = v7;
    if (v7)
    {
      v9 = DALoggingwithCategory();
      v10 = *(v8 + 3);
      if (os_log_type_enabled(v9, v10))
      {
        objectID = [v5 objectID];
        *buf = 138543618;
        selfCopy2 = self;
        v41 = 2114;
        v42 = objectID;
        _os_log_impl(&dword_242490000, v9, v10, "MobileCalDAVCalendar: ERROR: Couldn't fetch all reminders for calendar %{public}@, listID: %{public}@", buf, 0x16u);
      }
    }

    account = [v5 account];
    daWasMigrated = [account daWasMigrated];

    if (daWasMigrated)
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

          externalIdentifier = [*(*(&v34 + 1) + 8 * i) externalIdentifier];
          if (externalIdentifier)
          {
            calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
            v21 = [externalIdentifier da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:calendarURL];

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
      account2 = [v5 account];
      v26 = [v24 numberWithBool:{objc_msgSend(account2, "daWasMigrated")}];
      guid = [(MobileCalDAVCalendar *)self guid];
      *buf = 138543874;
      selfCopy2 = v26;
      v41 = 2114;
      v42 = guid;
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
      selfCopy2 = self;
      _os_log_impl(&dword_242490000, v29, v30, "MobileCalDAVCalendar: Couldn't get a REM list for calendar %{public}@", buf, 0xCu);
    }

    v28 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)etagsForItemURLs:(id)ls
{
  v51 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v6 = rem_getCalCalendar;
  if (rem_getCalCalendar)
  {
    v39 = rem_getCalCalendar;
    v7 = objc_opt_new();
    v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v37 = lsCopy;
    v9 = lsCopy;
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
          calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
          v16 = [v14 da_leastInfoStringRepresentationRelativeToParentURL:calendarURL];

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

            externalModificationTag = [v24 externalModificationTag];

            if (externalModificationTag)
            {
              externalModificationTag2 = [v25 externalModificationTag];
              [v7 setObject:externalModificationTag2 forKeyedSubscript:v23];
LABEL_21:
            }

            ++v21;
            v18 = v8;
            if (v21 >= [v8 count])
            {
              goto LABEL_30;
            }
          }

          externalModificationTag2 = DALoggingwithCategory();
          if (os_log_type_enabled(externalModificationTag2, type))
          {
            objectID = [v39 objectID];
            *buf = 138412546;
            selfCopy = v23;
            v48 = 2114;
            v49 = objectID;
            _os_log_impl(&dword_242490000, externalModificationTag2, type, "MobileCalDAVCalendar: Reminder does not exist when trying to set externalModificationTag {url: %@, list: %{public}@}.", buf, 0x16u);

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
          objectID2 = [v39 objectID];
          localizedDescription = [v36 localizedDescription];
          *buf = 138543618;
          selfCopy = objectID2;
          v48 = 2114;
          v49 = localizedDescription;
          _os_log_impl(&dword_242490000, v30, v31, "MobileCalDAVCalendar: ERROR: Could not fetch reminders in lists to get externalModificationTag {list: %{public}@, error: %{public}@}.", buf, 0x16u);
        }
      }

LABEL_30:

      v6 = v39;
    }

    lsCopy = v37;
  }

  else
  {
    v19 = DALoggingwithCategory();
    v29 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(v19, v29))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_242490000, v19, v29, "MobileCalDAVCalendar: ERROR: Could not find a REM list that matched %{public}@", buf, 0xCu);
    }

    v7 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_rem_copyReminderWithUniqueIdentifier:(id)identifier inList:(id)list
{
  v28 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  listCopy = list;
  if (identifierCopy)
  {
    rem_store = [(MobileCalDAVCalendar *)self rem_store];
    v21 = 0;
    v9 = [rem_store fetchReminderWithDACalendarItemUniqueIdentifier:identifierCopy inList:listCopy error:&v21];
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
          objectID = [listCopy objectID];
          localizedDescription = [v11 localizedDescription];
          *buf = 138543874;
          selfCopy = identifierCopy;
          v24 = 2114;
          v25 = objectID;
          v26 = 2114;
          v27 = localizedDescription;
          _os_log_impl(&dword_242490000, v12, v16, "MobileCalDAVCalendar: ERROR: Failed to fetch reminder with UUID: %{public}@, list: %{public}@, error: %{public}@", buf, 0x20u);
        }
      }

      else
      {
        v12 = DALoggingwithCategory();
        v13 = *(MEMORY[0x277CF3AF0] + 4);
        if (os_log_type_enabled(v12, v13))
        {
          objectID2 = [listCopy objectID];
          *buf = 138543618;
          selfCopy = identifierCopy;
          v24 = 2114;
          v25 = objectID2;
          _os_log_impl(&dword_242490000, v12, v13, "MobileCalDAVCalendar: Could not find a reminder with UUID: %{public}@, list: %{public}@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    rem_store = DALoggingwithCategory();
    v15 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(rem_store, v15))
    {
      *buf = 138543618;
      selfCopy = self;
      v24 = 2112;
      v25 = 0;
      _os_log_impl(&dword_242490000, rem_store, v15, "MobileCalDAVCalendar: ERROR: Try to get reminder with nil uniqueIdentifier {calendar: %{public}@, stack: %@}.", buf, 0x16u);
    }

    v9 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_rem_copyReminderWithExternalID:(id)d
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
    v6 = rem_getCalCalendar;
    if (!rem_getCalCalendar)
    {
      v9 = DALoggingwithCategory();
      v13 = *(MEMORY[0x277CF3AF0] + 4);
      if (os_log_type_enabled(v9, v13))
      {
        *buf = 138543618;
        selfCopy4 = self;
        v24 = 2112;
        v25 = dCopy;
        _os_log_impl(&dword_242490000, v9, v13, "MobileCalDAVCalendar: Calendar has no backing REM list when trying to fetch reminder with externalID {calendar: %{public}@, reminder.externalID: %@}.", buf, 0x16u);
      }

      v7 = 0;
      goto LABEL_19;
    }

    v21 = 0;
    v7 = [rem_getCalCalendar fetchReminderWithExternalIdentifier:dCopy error:&v21];
    v8 = v21;
    v9 = v8;
    if (v7)
    {
LABEL_19:

      goto LABEL_20;
    }

    if (v8)
    {
      domain = [v8 domain];
      v11 = domain;
      if (domain == *MEMORY[0x277D44920])
      {
        code = [v9 code];

        if (code == -3000)
        {
          v15 = DALoggingwithCategory();
          v16 = *(MEMORY[0x277CF3AF0] + 4);
          if (os_log_type_enabled(v15, v16))
          {
            *buf = 138543618;
            selfCopy4 = self;
            v24 = 2112;
            v25 = dCopy;
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
      localizedDescription = [v9 localizedDescription];
      *buf = 138543874;
      selfCopy4 = self;
      v24 = 2112;
      v25 = dCopy;
      v26 = 2114;
      v27 = localizedDescription;
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
    selfCopy4 = self;
    v24 = 2112;
    v25 = 0;
    _os_log_impl(&dword_242490000, v6, v12, "MobileCalDAVCalendar: ERROR: Try to get reminder with nil externalID {calendar: %{public}@, stack: %@}.", buf, 0x16u);
  }

  v7 = 0;
LABEL_20:

  v19 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)setURL:(id)l forResourceWithUUID:(id)d
{
  v38 = *MEMORY[0x277D85DE8];
  lCopy = l;
  dCopy = d;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  if (rem_getCalCalendar)
  {
    v9 = [(MobileCalDAVCalendar *)self _rem_copyReminderWithUniqueIdentifier:dCopy inList:rem_getCalCalendar];
    if (v9)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __51__MobileCalDAVCalendar_setURL_forResourceWithUUID___block_invoke;
      v26[3] = &unk_278D4F668;
      v29 = &v30;
      v26[4] = self;
      v10 = lCopy;
      v27 = v10;
      v28 = dCopy;
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
        calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
        v15 = [v10 da_leastInfoStringRepresentationRelativeToParentURL:calendarURL];

        v16 = DALoggingwithCategory();
        v17 = *(MEMORY[0x277CF3AF0] + 3);
        if (os_log_type_enabled(v16, v17))
        {
          objectID = [rem_getCalCalendar objectID];
          *buf = 138543618;
          selfCopy2 = objectID;
          v36 = 2112;
          selfCopy = v15;
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
        selfCopy2 = dCopy;
        v36 = 2114;
        selfCopy = self;
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
      selfCopy2 = self;
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

- (BOOL)setURL:(id)l forResourceWithUUID:(id)d reminderChangeItem:(id)item
{
  if (l)
  {
    itemCopy = item;
    lCopy = l;
    calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
    v10 = [lCopy da_leastInfoStringRepresentationRelativeToParentURL:calendarURL];

    [itemCopy setExternalIdentifier:v10];
    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }

  return l != 0;
}

- (BOOL)setEtag:(id)etag forItemAtURL:(id)l
{
  v34 = *MEMORY[0x277D85DE8];
  etagCopy = etag;
  lCopy = l;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
  v9 = [lCopy da_leastInfoStringRepresentationRelativeToParentURL:calendarURL];

  v10 = [(MobileCalDAVCalendar *)self _rem_copyReminderWithExternalID:v9];
  if (v10)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __45__MobileCalDAVCalendar_setEtag_forItemAtURL___block_invoke;
    v22[3] = &unk_278D4F668;
    v25 = &v26;
    v22[4] = self;
    v23 = etagCopy;
    v24 = lCopy;
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
        objectID = [v10 objectID];
        *buf = 138543618;
        v31 = objectID;
        v32 = 2112;
        selfCopy = v9;
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
      v31 = lCopy;
      v32 = 2114;
      selfCopy = self;
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

- (BOOL)setEtag:(id)etag forItemAtURL:(id)l reminderChangeItem:(id)item
{
  etagCopy = etag;
  itemCopy = item;
  lCopy = l;
  calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
  v12 = [lCopy da_leastInfoStringRepresentationRelativeToParentURL:calendarURL];

  [itemCopy setExternalModificationTag:etagCopy];
  if (lCopy)
  {
    URLToEtagMap = self->_URLToEtagMap;
    if (etagCopy)
    {
      [(NSMutableDictionary *)URLToEtagMap setObject:etagCopy forKeyedSubscript:v12];
    }

    else
    {
      [(NSMutableDictionary *)URLToEtagMap removeObjectForKey:v12];
    }
  }

  [(MobileCalDAVCalendar *)self setIsDirty:1];

  return 1;
}

- (BOOL)setScheduleTag:(id)tag forItemAtURL:(id)l
{
  v17 = *MEMORY[0x277D85DE8];
  tagCopy = tag;
  lCopy = l;
  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v7, v8))
  {
    v11 = 138412802;
    v12 = tagCopy;
    v13 = 2112;
    v14 = lCopy;
    v15 = 2112;
    v16 = 0;
    _os_log_impl(&dword_242490000, v7, v8, "XXXXXXXXXX: Do we really need setScheduleTag for reminders? {tag: %@, url: %@, stack: %@}", &v11, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)updateResourcesFromServer:(id)server
{
  v70 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  v5 = serverCopy;
  if (serverCopy && [serverCopy count])
  {
    sync = [MEMORY[0x277D447F0] sync];
    v7 = os_signpost_id_generate(sync);
    v8 = sync;
    v9 = v8;
    v10 = v7 - 1;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      *buf = 134349056;
      selfCopy2 = [v5 count];
      _os_signpost_emit_with_name_impl(&dword_242490000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "CalDav.updateBatch", "resourceCount=%{public, signpost.telemetry:number1, Name=Count}ld", buf, 0xCu);
    }

    spid = v7;

    rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
    v12 = rem_getCalCalendar != 0;
    v54 = rem_getCalCalendar;
    if (rem_getCalCalendar)
    {
      v49 = v10;
      v50 = rem_getCalCalendar != 0;
      v51 = v9;
      rem_saveRequest = [(MobileCalDAVCalendar *)self rem_saveRequest];
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
            principal = [(MobileCalDAVCalendar *)self principal];
            account = [principal account];
            movedItemURLStrings = [account movedItemURLStrings];
            serverID = [v15 serverID];
            calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
            v21 = [serverID da_leastInfoStringRepresentationRelativeToParentURL:calendarURL];
            v22 = [movedItemURLStrings containsObject:v21];

            if (v22)
            {
              v23 = DALoggingwithCategory();
              if (os_log_type_enabled(v23, type))
              {
                serverID2 = [v15 serverID];
                *buf = 138412290;
                selfCopy2 = serverID2;
                _os_log_impl(&dword_242490000, v23, type, "Dropping server change for %@ on the floor because we have a move change for it", buf, 0xCu);
              }
            }

            else
            {
              v60 = 0;
              daPrincipal = [(MobileCalDAVCalendar *)self daPrincipal];
              account2 = [daPrincipal account];
              wasMigrated = [account2 wasMigrated];
              daPrincipal2 = [(MobileCalDAVCalendar *)self daPrincipal];
              account3 = [daPrincipal2 account];
              v23 = [v15 saveWithLocalObject:0 toContainer:v54 shouldMergeProperties:wasMigrated outMergeDidChooseLocalProperties:&v60 account:account3 calendar:self batchSaveRequest:{rem_saveRequest, spid}];

              LODWORD(account2) = v60;
              v30 = DALoggingwithCategory();
              v31 = os_log_type_enabled(v30, type);
              if (account2 == 1)
              {
                if (v31)
                {
                  serverID3 = [v15 serverID];
                  *buf = 138412290;
                  selfCopy2 = serverID3;
                  _os_log_impl(&dword_242490000, v30, type, "The event at %@ was modified locally. Forcing it to the server.", buf, 0xCu);
                }
              }

              else
              {
                if (v31)
                {
                  serverID4 = [v15 serverID];
                  syncKey = [v15 syncKey];
                  *buf = 138412546;
                  selfCopy2 = serverID4;
                  v67 = 2114;
                  v68 = syncKey;
                  _os_log_impl(&dword_242490000, v30, type, "Saved resource from %@ to the database. Etag is %{public}@", buf, 0x16u);
                }

                syncKey2 = [v15 syncKey];
                serverID5 = [v15 serverID];
                [(MobileCalDAVCalendar *)self setEtag:syncKey2 forItemAtURL:serverID5 reminderChangeItem:v23];

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
      v37 = rem_saveRequest;
      v38 = [rem_saveRequest saveSynchronouslyWithError:&v59];
      v39 = v59;
      v9 = v51;
      if ((v38 & 1) == 0)
      {
        v40 = DALoggingwithCategory();
        v41 = *(MEMORY[0x277CF3AF0] + 3);
        if (os_log_type_enabled(v40, v41))
        {
          *buf = 138543362;
          selfCopy2 = v39;
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
        selfCopy2 = self;
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
      selfCopy2 = self;
      _os_log_impl(&dword_242490000, v9, v44, "MobileCalDAVCalendar: Nil or empty resources param for updateResourcesFromServer %{public}@", buf, 0xCu);
    }

    v12 = 1;
  }

  v46 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)_removeCalendarItemWithURL:(id)l
{
  v30 = *MEMORY[0x277D85DE8];
  lCopy = l;
  rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  if (rem_getCalCalendar)
  {
    calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
    v7 = [(MobileCalDAVCalendar *)lCopy da_leastInfoStringRepresentationRelativeToParentURL:calendarURL];

    v8 = [(MobileCalDAVCalendar *)self _rem_copyReminderWithExternalID:v7];
    if (v8)
    {
      rem_saveRequest = [(MobileCalDAVCalendar *)self rem_saveRequest];
      v10 = [rem_saveRequest updateReminder:v8];
      [v10 removeFromList];
      v23 = 0;
      v11 = [rem_saveRequest saveSynchronouslyWithError:&v23];
      v12 = v23;
      if ((v11 & 1) == 0)
      {
        v13 = DALoggingwithCategory();
        v14 = *(MEMORY[0x277CF3AF0] + 3);
        if (os_log_type_enabled(v13, v14))
        {
          [v8 objectID];
          v21 = type = v14;
          localizedDescription = [v12 localizedDescription];
          *buf = 138543874;
          selfCopy3 = v21;
          v26 = 2114;
          selfCopy2 = self;
          v28 = 2114;
          v29 = localizedDescription;
          v16 = localizedDescription;
          _os_log_impl(&dword_242490000, v13, type, "MobileCalDAVCalendar: ERROR: Failed to save delete of reminder {reminder: %{public}@, calendar: %{public}@, error: %{public}@}.", buf, 0x20u);
        }
      }

      [(MobileCalDAVCalendar *)self setIsDirty:1];
      [(MobileCalDAVCalendar *)self setNumDownloadedElements:[(MobileCalDAVCalendar *)self numDownloadedElements]+ 1];
    }

    else
    {
      rem_saveRequest = DALoggingwithCategory();
      v18 = *(MEMORY[0x277CF3AF0] + 4);
      if (os_log_type_enabled(rem_saveRequest, v18))
      {
        *buf = 138412546;
        selfCopy3 = lCopy;
        v26 = 2114;
        selfCopy2 = self;
        _os_log_impl(&dword_242490000, rem_saveRequest, v18, "MobileCalDAVCalendar: Couldn't remove reminder at %@ because it doesn't exist in our ReminderKit database {calendar: %{public}@}.", buf, 0x16u);
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
      selfCopy3 = self;
      _os_log_impl(&dword_242490000, v7, v17, "MobileCalDAVCalendar: ERROR: Could not find a calendar that matched %{public}@", buf, 0xCu);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)deleteResourcesAtURLs:(id)ls
{
  v16 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [lsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(lsCopy);
        }

        [(MobileCalDAVCalendar *)self _removeCalendarItemWithURL:*(*(&v11 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [lsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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

  color = [(MobileCalDAVCalendar *)self color];
  v6 = *MEMORY[0x277D85DE8];

  return color;
}

- (NSString)accountID
{
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  accountID = [account accountID];

  return accountID;
}

- (id)rem_initCalCalendarWithTitle:(id)title
{
  v74 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  rem_calCalendar = [(MobileCalDAVCalendar *)self rem_calCalendar];

  if (rem_calCalendar)
  {
    rem_calCalendar2 = [(MobileCalDAVCalendar *)self rem_calCalendar];
    goto LABEL_49;
  }

  rem_store = [(MobileCalDAVCalendar *)self rem_store];
  if (!rem_store)
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

  accountID = [(MobileCalDAVCalendar *)self accountID];
  v69 = 0;
  v9 = [rem_store fetchAccountWithExternalIdentifier:accountID error:&v69];
  v10 = v69;

  if (v9)
  {
    principal = [(MobileCalDAVCalendar *)self principal];
    account = [principal account];
    wasMigrated = [account wasMigrated];

    if (wasMigrated)
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
          name = [v17 name];
          if ([titleCopy isEqualToString:name])
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

    rem_calCalendar3 = [(MobileCalDAVCalendar *)self rem_calCalendar];

    if (rem_calCalendar3)
    {
      v25 = 0;
    }

    else
    {
      rem_saveRequest = [(MobileCalDAVCalendar *)self rem_saveRequest];
      v27 = [rem_saveRequest updateAccount:v9];
      v28 = titleCopy;
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
      v30 = [rem_saveRequest addListWithName:? toAccountChangeItem:?];
      calendarURLString = [(MobileCalDAVCalendar *)self calendarURLString];
      [v30 setExternalIdentifier:calendarURLString];

      guid = [(MobileCalDAVCalendar *)self guid];
      [v30 setDaExternalIdentificationTag:guid];

      v67 = v10;
      v33 = [rem_saveRequest saveSynchronouslyWithError:&v67];
      v34 = v67;

      v35 = DALoggingwithCategory();
      objectID2 = v35;
      v65 = v33;
      if (v33)
      {
        v37 = *(MEMORY[0x277CF3AF0] + 5);
        if (os_log_type_enabled(v35, v37))
        {
          objectID = [v30 objectID];
          calendarURLString2 = [(MobileCalDAVCalendar *)self calendarURLString];
          *buf = 138543618;
          v71 = objectID;
          v72 = 2112;
          v73 = calendarURLString2;
          _os_log_impl(&dword_242490000, objectID2, v37, "MobileCalDAVCalendar: SUCCESS: Created list %{public}@ for %@.", buf, 0x16u);
        }

        objectID2 = [v30 objectID];
        v66 = v34;
        v39 = [rem_store fetchListIncludingSpecialContainerWithObjectID:objectID2 error:&v66];
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
          calendarURLString3 = [(MobileCalDAVCalendar *)self calendarURLString];
          *buf = 138412290;
          v71 = calendarURLString3;
          _os_log_impl(&dword_242490000, objectID2, v42, "MobileCalDAVCalendar: ERROR: Failed to create list for calendar: %@.", buf, 0xCu);
        }
      }

      v10 = v34;
      v25 = v65;
    }

    rem_calCalendar4 = [(MobileCalDAVCalendar *)self rem_calCalendar];

    if (rem_calCalendar4)
    {
      [(MobileCalDAVCalendar *)self _rem_updateCalendarOwnerInfo];
      principal2 = [(MobileCalDAVCalendar *)self principal];
      isWritable = [principal2 isWritable];

      v47 = MEMORY[0x277CF3AF0];
      if ((isWritable & 1) == 0)
      {
        v48 = DALoggingwithCategory();
        v49 = *(v47 + 3);
        if (os_log_type_enabled(v48, v49))
        {
          calendarURLString4 = [(MobileCalDAVCalendar *)self calendarURLString];
          *buf = 138412546;
          v71 = calendarURLString4;
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
          calendarURLString5 = [(MobileCalDAVCalendar *)self calendarURLString];
          *buf = 138412546;
          v71 = calendarURLString5;
          v72 = 2112;
          v73 = 0;
          _os_log_impl(&dword_242490000, v51, v52, "MobileCalDAVCalendar: ******Creating calendar with url %@ %@", buf, 0x16u);
        }
      }

      else if (v53)
      {
        *buf = 138412290;
        v71 = titleCopy;
        _os_log_impl(&dword_242490000, v51, v52, "MobileCalDAVCalendar: Merged calendar titled %@ with calDAV", buf, 0xCu);
      }

      rem_calCalendar5 = [(MobileCalDAVCalendar *)self rem_calCalendar];
      if (!rem_calCalendar5)
      {
        goto LABEL_47;
      }

      v58 = rem_calCalendar5;
      calendarURLString6 = [(MobileCalDAVCalendar *)self calendarURLString];

      if (!calendarURLString6)
      {
        goto LABEL_47;
      }

      rem_calCalendar6 = [(MobileCalDAVCalendar *)self rem_calCalendar];
      objectID3 = [rem_calCalendar6 objectID];
      calendarURLString7 = [(MobileCalDAVCalendar *)self calendarURLString];
      [MobileCalDAVCalendar rem_cacheListObjectID:objectID3 forCalendarURLString:calendarURLString7];
      goto LABEL_44;
    }

    rem_calCalendar6 = DALoggingwithCategory();
    v55 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(rem_calCalendar6, v55))
    {
      objectID3 = [(MobileCalDAVCalendar *)self guid];
      calendarURLString7 = [(MobileCalDAVCalendar *)self calendarURLString];
      *buf = 138543618;
      v71 = objectID3;
      v72 = 2112;
      v73 = calendarURLString7;
      _os_log_impl(&dword_242490000, rem_calCalendar6, v55, "Could not obtain a calendar ref for {guid: %{public}@, url: %@}.", buf, 0x16u);
LABEL_44:

      goto LABEL_45;
    }
  }

  else
  {
    rem_calCalendar6 = DALoggingwithCategory();
    v21 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(rem_calCalendar6, v21))
    {
      objectID3 = [(MobileCalDAVCalendar *)self guid];
      *buf = 138543618;
      v71 = objectID3;
      v72 = 2114;
      v73 = v10;
      _os_log_impl(&dword_242490000, rem_calCalendar6, v21, "MobileCalDAVCalendar: ERROR: Could not get an account. Cowardly refusing to create a calendar with UID %{public}@. Error: %{public}@.", buf, 0x16u);
LABEL_45:
    }
  }

LABEL_47:
LABEL_48:

  rem_calCalendar2 = [(MobileCalDAVCalendar *)self rem_calCalendar];

LABEL_49:
  v60 = *MEMORY[0x277D85DE8];

  return rem_calCalendar2;
}

- (id)rem_store
{
  daPrincipal = [(MobileCalDAVCalendar *)self daPrincipal];
  account = [daPrincipal account];

  rem_store = [account rem_store];

  return rem_store;
}

- (id)rem_saveRequest
{
  daPrincipal = [(MobileCalDAVCalendar *)self daPrincipal];
  account = [daPrincipal account];

  rem_saveRequest = [account rem_saveRequest];

  return rem_saveRequest;
}

- (REMAccount)rem_account
{
  daPrincipal = [(MobileCalDAVCalendar *)self daPrincipal];
  account = [daPrincipal account];

  rem_account = [account rem_account];

  return rem_account;
}

- (id)rem_getCalCalendar
{
  v64 = *MEMORY[0x277D85DE8];
  rem_calCalendar = [(MobileCalDAVCalendar *)self rem_calCalendar];

  if (rem_calCalendar)
  {
    rem_calCalendar2 = [(MobileCalDAVCalendar *)self rem_calCalendar];
    goto LABEL_43;
  }

  calendarURLString = [(MobileCalDAVCalendar *)self calendarURLString];

  if (!calendarURLString)
  {
    rem_calCalendar2 = 0;
    goto LABEL_43;
  }

  v6 = 0x278D4E000uLL;
  calendarURLString2 = [(MobileCalDAVCalendar *)self calendarURLString];
  v8 = [MobileCalDAVCalendar rem_cachedListObjectIDForURLString:calendarURLString2];

  v9 = MEMORY[0x277CF3AF0];
  if (v8)
  {
    v10 = DALoggingwithCategory();
    v11 = v9[5];
    if (os_log_type_enabled(v10, v11))
    {
      calendarURLString3 = [(MobileCalDAVCalendar *)self calendarURLString];
      *buf = 138543618;
      v57 = v8;
      v58 = 2112;
      v59 = calendarURLString3;
      _os_log_impl(&dword_242490000, v10, v11, "MobileCalDAVCalendar: Found a cached list object ID (%{public}@) for url %@", buf, 0x16u);
    }

    rem_store = [(MobileCalDAVCalendar *)self rem_store];
    v55 = 0;
    v14 = [rem_store fetchListIncludingSpecialContainerWithObjectID:v8 error:&v55];
    v15 = v55;
    rem_calCalendar = self->_rem_calCalendar;
    self->_rem_calCalendar = v14;

    if (v15 && [v15 code] != -3000)
    {
      v17 = DALoggingwithCategory();
      v23 = v9[3];
      if (os_log_type_enabled(v17, v23))
      {
        calendarURLString4 = [(MobileCalDAVCalendar *)self calendarURLString];
        *buf = 138544130;
        v57 = v8;
        v58 = 2112;
        v59 = calendarURLString4;
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
        calendarURLString4 = [(MobileCalDAVCalendar *)self calendarURLString];
        *buf = 138543874;
        v57 = v8;
        v58 = 2112;
        v59 = calendarURLString4;
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
    rem_calCalendar3 = [(MobileCalDAVCalendar *)self rem_calCalendar];

    if (!rem_calCalendar3)
    {
      calendarURLString5 = [(MobileCalDAVCalendar *)self calendarURLString];
      [MobileCalDAVCalendar rem_removeListObjectIDCacheEntryForCalendarURLString:calendarURLString5];
    }
  }

  rem_calCalendar4 = [(MobileCalDAVCalendar *)self rem_calCalendar];

  if (rem_calCalendar4)
  {
    goto LABEL_35;
  }

  rem_store2 = [(MobileCalDAVCalendar *)self rem_store];
  if (rem_store2)
  {
    accountID = [(MobileCalDAVCalendar *)self accountID];
    v54 = 0;
    v29 = [rem_store2 fetchAccountWithExternalIdentifier:accountID error:&v54];
    v30 = v54;

    if (!v29)
    {
      v36 = DALoggingwithCategory();
      v42 = v9[3];
      if (os_log_type_enabled(v36, v42))
      {
        accountID2 = [(MobileCalDAVCalendar *)self accountID];
        *buf = 138543874;
        v57 = accountID2;
        v58 = 2114;
        v59 = v30;
        v60 = 2112;
        v61 = 0;
        _os_log_impl(&dword_242490000, v36, v42, "ERROR: MobileCalDAVCalendar: Could not get account %{public}@. Error: %{public}@, Stack Trace: %@.", buf, 0x20u);
      }

      goto LABEL_33;
    }

    calendarURLString6 = [(MobileCalDAVCalendar *)self calendarURLString];
    v53 = v30;
    v32 = [v29 fetchListIncludingSpecialContainerWithExternalIdentifier:calendarURLString6 error:&v53];
    v33 = v53;

    v34 = self->_rem_calCalendar;
    self->_rem_calCalendar = v32;

    rem_calCalendar5 = [(MobileCalDAVCalendar *)self rem_calCalendar];

    v36 = DALoggingwithCategory();
    v37 = v9[5];
    v38 = os_log_type_enabled(v36, v37);
    if (rem_calCalendar5)
    {
      if (v38)
      {
        calendarURLString7 = [(MobileCalDAVCalendar *)self calendarURLString];
        rem_calCalendar6 = [(MobileCalDAVCalendar *)self rem_calCalendar];
        objectID = [rem_calCalendar6 objectID];
        *buf = 138412546;
        v57 = calendarURLString7;
        v58 = 2114;
        v59 = objectID;
        _os_log_impl(&dword_242490000, v36, v37, "MobileCalDAVCalendar: SUCCESS: Got the backing REM list of calendar with url %@ {objectID=%{public}@}.", buf, 0x16u);

        v9 = MEMORY[0x277CF3AF0];
        v6 = 0x278D4E000;
LABEL_31:
      }
    }

    else if (v38)
    {
      calendarURLString7 = [(MobileCalDAVCalendar *)self calendarURLString];
      *buf = 138412546;
      v57 = calendarURLString7;
      v58 = 2112;
      v59 = 0;
      _os_log_impl(&dword_242490000, v36, v37, "MobileCalDAVCalendar: Couldn't find the backing REM list of calendar with url %@, Stack Trace: %@.", buf, 0x16u);
      goto LABEL_31;
    }

    v30 = v33;
LABEL_33:
  }

LABEL_35:
  rem_calCalendar7 = [(MobileCalDAVCalendar *)self rem_calCalendar];

  if (!rem_calCalendar7)
  {
    rem_calCalendar8 = DALoggingwithCategory();
    v50 = v9[7];
    if (!os_log_type_enabled(rem_calCalendar8, v50))
    {
LABEL_41:

      goto LABEL_42;
    }

    calendarURLString8 = [(MobileCalDAVCalendar *)self calendarURLString];
    *buf = 138412290;
    v57 = calendarURLString8;
    _os_log_impl(&dword_242490000, rem_calCalendar8, v50, "Couldn't find calendar with url %@.", buf, 0xCu);
LABEL_40:

    goto LABEL_41;
  }

  calendarURLString9 = [(MobileCalDAVCalendar *)self calendarURLString];

  if (calendarURLString9)
  {
    v46 = *(v6 + 3592);
    rem_calCalendar8 = [(MobileCalDAVCalendar *)self rem_calCalendar];
    calendarURLString8 = [rem_calCalendar8 objectID];
    calendarURLString10 = [(MobileCalDAVCalendar *)self calendarURLString];
    [v46 rem_cacheListObjectID:calendarURLString8 forCalendarURLString:calendarURLString10];

    goto LABEL_40;
  }

LABEL_42:
  rem_calCalendar2 = [(MobileCalDAVCalendar *)self rem_calCalendar];

LABEL_43:
  v51 = *MEMORY[0x277D85DE8];

  return rem_calCalendar2;
}

+ (id)_rem_changedListsOfChangeType:(int64_t)type withChangeTrackingHelper:(id)helper inPrincipal:(id)principal
{
  v33 = *MEMORY[0x277D85DE8];
  helperCopy = helper;
  principalCopy = principal;
  if ([MEMORY[0x277CF3AC8] rem_changeTrackingBehaviors])
  {
    v19 = MEMORY[0x277CBEBF8];
    goto LABEL_23;
  }

  account = [principalCopy account];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    account3 = DALoggingwithCategory();
    v20 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(account3, v20))
    {
      account2 = [principalCopy account];
      *buf = 138412290;
      v30 = account2;
      _os_log_impl(&dword_242490000, account3, v20, "MobileCalDAVCalendar: CalDAV principal.account is not a MobileCalDAVAccount: %@", buf, 0xCu);
    }

    v19 = 0;
    goto LABEL_22;
  }

  account3 = [principalCopy account];
  rem_account = [account3 rem_account];
  if (!rem_account)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v22, v23))
    {
      accountDescription = [account3 accountDescription];
      *buf = 138412290;
      v30 = accountDescription;
      _os_log_impl(&dword_242490000, v22, v23, "MobileCalDAVCalendar: Cannot get ReminderKit account from principle.account: %@", buf, 0xCu);
    }

    v19 = 0;
    goto LABEL_21;
  }

  if (type == 2)
  {
    v25 = [helperCopy changedIdentifiersOfModelClass:objc_opt_class() ofChangeType:2];
  }

  else
  {
    if (!type && [account3 wasMigrated])
    {
      v28 = 0;
      v13 = [rem_account fetchListsWithError:&v28];
      v14 = v28;
      if (v14)
      {
        v15 = DALoggingwithCategory();
        v16 = *(MEMORY[0x277CF3AF0] + 3);
        if (os_log_type_enabled(v15, v16))
        {
          objectID = [rem_account objectID];
          accountDescription2 = [account3 accountDescription];
          *buf = 138543618;
          v30 = objectID;
          v31 = 2112;
          v32 = accountDescription2;
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

    v25 = [helperCopy changedModelObjectsOfModelClass:objc_opt_class() ofChangeType:type];
  }

  v19 = v25;
LABEL_21:

LABEL_22:
LABEL_23:

  v26 = *MEMORY[0x277D85DE8];

  return v19;
}

+ (id)rem_addedCalendarsWithChangeTrackingHelper:(id)helper inPrincipal:(id)principal
{
  v58 = *MEMORY[0x277D85DE8];
  principalCopy = principal;
  v7 = [self _rem_changedListsOfChangeType:0 withChangeTrackingHelper:helper inPrincipal:principalCopy];
  array = [MEMORY[0x277CBEB18] array];
  v40 = principalCopy;
  calendars = [principalCopy calendars];
  v10 = objc_opt_new();
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v11 = calendars;
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
        guid = [v16 guid];
        [v10 setObject:v16 forKeyedSubscript:guid];
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
        daExternalIdentificationTag = [v23 daExternalIdentificationTag];

        if (!daExternalIdentificationTag || ([v23 daExternalIdentificationTag], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKey:", v25), v26 = objc_claimAutoreleasedReturnValue(), v25, !v26))
        {
          v27 = [MobileCalDAVCalendar calendarWithREMList:v23 principal:v40];
          if (!v27)
          {
            goto LABEL_18;
          }

          v26 = v27;
        }

        [array addObject:v26];

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
  v28 = array;
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

+ (id)rem_modifiedCalendarsWithChangeTrackingHelper:(id)helper inPrincipal:(id)principal
{
  v58 = *MEMORY[0x277D85DE8];
  principalCopy = principal;
  v7 = [self _rem_changedListsOfChangeType:1 withChangeTrackingHelper:helper inPrincipal:principalCopy];
  array = [MEMORY[0x277CBEB18] array];
  v40 = principalCopy;
  calendars = [principalCopy calendars];
  v10 = objc_opt_new();
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v11 = calendars;
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
        guid = [v16 guid];
        [v10 setObject:v16 forKeyedSubscript:guid];
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
        daExternalIdentificationTag = [v23 daExternalIdentificationTag];

        if (!daExternalIdentificationTag || ([v23 daExternalIdentificationTag], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKey:", v25), v26 = objc_claimAutoreleasedReturnValue(), v25, !v26))
        {
          v27 = [MobileCalDAVCalendar calendarWithREMList:v23 principal:v40];
          if (!v27)
          {
            goto LABEL_18;
          }

          v26 = v27;
        }

        [array addObject:v26];

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
  v28 = array;
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

+ (id)rem_deletedCalendarsWithChangeTrackingHelper:(id)helper inPrincipal:(id)principal
{
  v4 = [self _rem_changedListsOfChangeType:2 withChangeTrackingHelper:helper inPrincipal:principal];
  v5 = v4;
  if (v4)
  {
    array = v4;
  }

  else
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  v7 = array;

  return v7;
}

- (void)copyAllItemsWithBatchHandler:(id)handler
{
  v44 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v6 = rem_getCalCalendar;
  if (rem_getCalCalendar)
  {
    v36 = 0;
    v7 = [rem_getCalCalendar fetchRemindersWithError:&v36];
    v8 = v36;
    if (v8)
    {
      v9 = DALoggingwithCategory();
      v10 = *(MEMORY[0x277CF3AF0] + 3);
      if (os_log_type_enabled(v9, v10))
      {
        objectID = [v6 objectID];
        localizedDescription = [v8 localizedDescription];
        *buf = 138543874;
        selfCopy2 = objectID;
        v40 = 2114;
        selfCopy = self;
        v42 = 2114;
        v43 = localizedDescription;
        _os_log_impl(&dword_242490000, v9, v10, "MobileCalDAVCalendar: ERROR: Could not fetch reminders from list %{public}@ with that matched %{public}@, error: %{public}@.", buf, 0x20u);
      }

      (*(handlerCopy + 2))(handlerCopy, MEMORY[0x277CBEBF8], MEMORY[0x277CBEBF8]);
    }

    else
    {
      v29 = v6;
      array = [MEMORY[0x277CBEB18] array];
      array2 = [MEMORY[0x277CBEB18] array];
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v28 = v7;
      obj = v7;
      v17 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      v30 = handlerCopy;
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
            calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
            v24 = [(DACalDAViCalItem *)v22 initWithREMReminder:v21 inContainer:calendarURL];

            [array addObject:v24];
            [array2 addObject:v21];
            if ([array count] >= 0x64)
            {
              v30[2](v30, array, array2);
              array3 = [MEMORY[0x277CBEB18] array];

              array4 = [MEMORY[0x277CBEB18] array];

              array = array3;
              array2 = array4;
            }
          }

          v18 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
        }

        while (v18);
      }

      handlerCopy = v30;
      if ([array count])
      {
        v30[2](v30, array, array2);
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
      selfCopy2 = self;
      _os_log_impl(&dword_242490000, v13, v14, "MobileCalDAVCalendar: ERROR: Could not find a REM list with that matched %{public}@", buf, 0xCu);
    }

    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x277CBEBF8], MEMORY[0x277CBEBF8]);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)copyAddedItemsWithBatchHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if ([MEMORY[0x277CF3AC8] rem_changeTrackingBehaviors])
  {
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x277CBEBF8], MEMORY[0x277CBEBF8]);
  }

  else
  {
    daPrincipal = [(MobileCalDAVCalendar *)self daPrincipal];
    rem_changeTracking = [daPrincipal rem_changeTracking];

    v7 = 0x277D44000uLL;
    v23 = rem_changeTracking;
    v8 = [rem_changeTracking changedModelObjectsOfModelClass:objc_opt_class() ofChangeType:0];
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
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
          if ([(MobileCalDAVCalendar *)self _addChangedReminder:v17 toArrayIfNeeded:array])
          {
            [array2 addObject:v17];
          }

          if ([array count] >= 0x64)
          {
            (*(handlerCopy + 2))(handlerCopy, array, array2);
            [MEMORY[0x277CBEB18] array];
            v18 = v13;
            v20 = v19 = v7;

            array3 = [MEMORY[0x277CBEB18] array];

            array2 = array3;
            array = v20;
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

    if ([array count])
    {
      (*(handlerCopy + 2))(handlerCopy, array, array2);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)copyModifiedItemsWithBatchHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if ([MEMORY[0x277CF3AC8] rem_changeTrackingBehaviors])
  {
    (*(handlerCopy + 2))(handlerCopy, MEMORY[0x277CBEBF8], MEMORY[0x277CBEBF8]);
  }

  else
  {
    daPrincipal = [(MobileCalDAVCalendar *)self daPrincipal];
    rem_changeTracking = [daPrincipal rem_changeTracking];

    v7 = 0x277D44000uLL;
    v23 = rem_changeTracking;
    v8 = [rem_changeTracking changedModelObjectsOfModelClass:objc_opt_class() ofChangeType:1];
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
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
          if ([(MobileCalDAVCalendar *)self _addChangedReminder:v17 toArrayIfNeeded:array])
          {
            [array2 addObject:v17];
          }

          if ([array count] >= 0x64)
          {
            (*(handlerCopy + 2))(handlerCopy, array, array2);
            [MEMORY[0x277CBEB18] array];
            v18 = v13;
            v20 = v19 = v7;

            array3 = [MEMORY[0x277CBEB18] array];

            array2 = array3;
            array = v20;
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

    if ([array count])
    {
      (*(handlerCopy + 2))(handlerCopy, array, array2);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)copyDeletedItems
{
  v31 = *MEMORY[0x277D85DE8];
  v20 = objc_opt_new();
  daPrincipal = [(MobileCalDAVCalendar *)self daPrincipal];
  rem_changeTracking = [daPrincipal rem_changeTracking];

  v5 = [rem_changeTracking changedIdentifiersOfModelClass:objc_opt_class() ofChangeType:2];
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
        calendarURLString = [(MobileCalDAVCalendar *)self calendarURLString];
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
          null = [MEMORY[0x277CBEB68] null];
          [v20 setObject:null forKeyedSubscript:v15];

          v17 = DALoggingwithCategory();
          if (os_log_type_enabled(v17, type))
          {
            *buf = 138412546;
            v27 = v15;
            v28 = 2114;
            selfCopy = self;
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

- (BOOL)_addChangedReminder:(id)reminder toArrayIfNeeded:(id)needed
{
  v51 = *MEMORY[0x277D85DE8];
  reminderCopy = reminder;
  neededCopy = needed;
  v8 = reminderCopy;
  objectID = [v8 objectID];
  if (!v8)
  {
    v11 = DALoggingwithCategory();
    v24 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v11, v24))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_242490000, v11, v24, "MobileCalDAVCalendar: ERROR: Got a nil changed reminder in calendar %{public}@.", buf, 0xCu);
    }

    goto LABEL_18;
  }

  rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  v11 = rem_getCalCalendar;
  if (!rem_getCalCalendar)
  {
    v25 = DALoggingwithCategory();
    v26 = *(MEMORY[0x277CF3AF0] + 5);
    if (os_log_type_enabled(v25, v26))
    {
      objectID2 = [v8 objectID];
      *buf = 138543618;
      selfCopy2 = self;
      v49 = 2114;
      v50 = objectID2;
      _os_log_impl(&dword_242490000, v25, v26, "MobileCalDAVCalendar: Couldn't find the REM list of this calendar when adding changed reminder {calendar: %{public}@, reminder: %{public}@}.", buf, 0x16u);
    }

    goto LABEL_18;
  }

  objectID3 = [rem_getCalCalendar objectID];
  list = [v8 list];
  objectID4 = [list objectID];
  v15 = [objectID3 isEqual:objectID4];

  if (!v15)
  {
LABEL_18:
    v28 = 0;
    goto LABEL_19;
  }

  selfCopy3 = self;
  v41 = neededCopy;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v16 = neededCopy;
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
      rem_clientID = [v21 rem_clientID];
      v23 = [objectID isEqual:rem_clientID];

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
    v32 = selfCopy3;
  }

  else
  {
LABEL_12:

LABEL_22:
    v33 = [DACalDAViCalItem alloc];
    v32 = selfCopy3;
    calendarURL = [(MobileCalDAVCalendar *)selfCopy3 calendarURL];
    v31 = [(DACalDAViCalItem *)v33 initWithREMReminder:v8 inContainer:calendarURL];

    [v16 addObject:v31];
    v28 = 1;
  }

  v35 = DALoggingwithCategory();
  v36 = *(MEMORY[0x277CF3AF0] + 5);
  neededCopy = v41;
  if (os_log_type_enabled(v35, v36))
  {
    objectID5 = [v8 objectID];
    v38 = v32;
    v39 = objectID5;
    *buf = 138543618;
    selfCopy2 = objectID5;
    v49 = 2114;
    v50 = v38;
    _os_log_impl(&dword_242490000, v35, v36, "MobileCalDAVCalendar: Collected an INSERTED or MODIFIED ReminderKit reminder change in calendar: {reminder: %{public}@, calendar: %{public}@}.", buf, 0x16u);
  }

LABEL_19:
  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

- (id)_createActionsForItems:(id)items withAction:(int)action backingReminders:(id)reminders alreadySentItems:(id)sentItems createServerIDs:(BOOL)ds shouldSave:(BOOL *)save
{
  dsCopy = ds;
  v95 = a2;
  v136 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  remindersCopy = reminders;
  sentItemsCopy = sentItems;
  v14 = [itemsCopy count];
  v104 = remindersCopy;
  v15 = remindersCopy;
  selfCopy = self;
  if (v14 != [v15 count])
  {
    [MobileCalDAVCalendar _createActionsForItems:withAction:backingReminders:alreadySentItems:createServerIDs:shouldSave:];
  }

  v103 = objc_opt_new();
  context = objc_autoreleasePoolPush();
  rem_saveRequest = [(MobileCalDAVCalendar *)self rem_saveRequest];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v17 = itemsCopy;
  v18 = [v17 countByEnumeratingWithState:&v122 objects:v135 count:16];
  obj = v17;
  selfCopy2 = self;
  v102 = sentItemsCopy;
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
        rem_reminderItem = [v25 rem_reminderItem];

        if (rem_reminderItem)
        {
          rem_reminderItem2 = [v25 rem_reminderItem];
          objectID = [rem_reminderItem2 objectID];

          if (objectID && ([sentItemsCopy containsObject:objectID] & 1) == 0)
          {
            v29 = [v104 objectAtIndexedSubscript:v22];
            objectID2 = [v29 objectID];
            v31 = [objectID isEqual:objectID2];

            if ((v31 & 1) == 0)
            {
              [MobileCalDAVCalendar _createActionsForItems:withAction:backingReminders:alreadySentItems:createServerIDs:shouldSave:];
            }

            serverID = [v25 serverID];
            calendarURL = [(MobileCalDAVCalendar *)selfCopy calendarURL];
            v34 = [serverID da_leastInfoStringRepresentationRelativeToParentURL:calendarURL];

            serverID2 = [v25 serverID];

            v113 = v29;
            if (serverID2 || !dsCopy)
            {
              [v25 populateDataPayloadWithReminder:v29];
              v45 = v34;
            }

            else
            {
              v100 = v34;
              rem_reminderItem3 = [v25 rem_reminderItem];
              daCalendarItemUniqueIdentifier = [rem_reminderItem3 daCalendarItemUniqueIdentifier];

              da_newGUID = daCalendarItemUniqueIdentifier;
              if (!daCalendarItemUniqueIdentifier)
              {
                da_newGUID = [MEMORY[0x277CCACA8] da_newGUID];
              }

              calendarURL2 = [(MobileCalDAVCalendar *)selfCopy calendarURL];
              v106 = da_newGUID;
              [DACalDAViCalItem filenameWithUniqueIdentifier:da_newGUID];
              v41 = v40 = selfCopy;
              v42 = [calendarURL2 URLByAppendingPathComponent:v41];
              [v25 setServerID:v42];

              serverID3 = [v25 serverID];
              calendarURL3 = [(MobileCalDAVCalendar *)v40 calendarURL];
              v45 = [serverID3 da_leastInfoStringRepresentationRelativeToParentURL:calendarURL3];

              v46 = [rem_saveRequest updateReminder:v113];
              v47 = v46;
              if (!daCalendarItemUniqueIdentifier)
              {
                [v46 setDaCalendarItemUniqueIdentifier:v106];
              }

              [v47 setExternalIdentifier:v45];
              [dictionary setObject:v25 forKeyedSubscript:objectID];
              v48 = DALoggingwithCategory();
              if (os_log_type_enabled(v48, type))
              {
                serverID4 = [v25 serverID];
                *buf = 138543874;
                v128 = objectID;
                v129 = 2112;
                v130 = serverID4;
                v131 = 2114;
                v132 = selfCopy2;
                _os_log_impl(&dword_242490000, v48, type, "MobileCalDAVCalendar: Created server ID for {reminderID: %{public}@, url: %@, calendar: %{public}@}", buf, 0x20u);
              }
            }

            v51 = [objc_alloc(MEMORY[0x277CFDB90]) initWithAction:action context:v25];
            [v103 addObject:v51];
            v52 = DALoggingwithCategory();
            if (os_log_type_enabled(v52, v107))
            {
              v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:action];
              serverID5 = [v25 serverID];
              *buf = 138544130;
              v128 = v53;
              v129 = 2114;
              v130 = objectID;
              v131 = 2112;
              v132 = serverID5;
              v133 = 2114;
              v134 = selfCopy2;
              _os_log_impl(&dword_242490000, v52, v107, "MobileCalDAVCalendar: Added actions for item {actionType: %{public}@, reminderID: %{public}@, url: %@, calendar: %{public}@}", buf, 0x2Au);
            }

            sentItemsCopy = v102;
            [v102 addObject:objectID];

            selfCopy = selfCopy2;
            v20 = v101;
            v19 = v105;
          }
        }

        else
        {
          objectID = DALoggingwithCategory();
          v21 = v24;
          if (!os_log_type_enabled(objectID, v24))
          {
            goto LABEL_29;
          }

          serverID6 = [v25 serverID];
          *buf = 138412290;
          v128 = serverID6;
          _os_log_impl(&dword_242490000, objectID, v24, "Couldn't find a reminder for an added reminder: %@", buf, 0xCu);
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

  if ([dictionary count])
  {
    v121 = 0;
    v55 = [rem_saveRequest saveSynchronouslyWithError:&v121];
    v56 = v121;
    v57 = DALoggingwithCategory();
    v58 = v57;
    if (v55)
    {
      v59 = *(MEMORY[0x277CF3AF0] + 5);
      if (os_log_type_enabled(v57, v59))
      {
        allKeys = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(dictionary, "count")}];
        *buf = 138543362;
        v128 = allKeys;
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
        allKeys = [dictionary allKeys];
        *buf = 138543618;
        v128 = v56;
        v129 = 2112;
        v130 = allKeys;
        v61 = "MobileCalDAVCalendar: ERROR: Batch save pending send reminders failed: (error: %{public}@, batch: %@)";
        v62 = v58;
        v63 = v65;
        v64 = 22;
        goto LABEL_37;
      }
    }

    selfCopy = selfCopy2;
  }

  allKeys2 = [dictionary allKeys];
  rem_store = [(MobileCalDAVCalendar *)selfCopy rem_store];
  v120 = 0;
  v68 = [rem_store fetchRemindersWithObjectIDs:allKeys2 error:&v120];
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
      v130 = allKeys2;
      _os_log_impl(&dword_242490000, v91, v92, "MobileCalDAVCalendar: ERROR: Refetch updated pending send reminders failed: (error: %{public}@, batch: %@)", buf, 0x16u);
    }

    v76 = v91;
  }

  else
  {
    v71 = [dictionary count];
    if (v71 != [v68 count])
    {
      v72 = DALoggingwithCategory();
      v73 = *(MEMORY[0x277CF3AF0] + 3);
      if (os_log_type_enabled(v72, v73))
      {
        allKeys3 = [dictionary allKeys];
        allKeys4 = [v68 allKeys];
        *buf = 138412546;
        v128 = allKeys3;
        v129 = 2112;
        v130 = allKeys4;
        _os_log_impl(&dword_242490000, v72, v73, "MobileCalDAVCalendar: ERROR: Refetched reminders count doesn't match with reminders count updated: (updated: %@, refetched: %@)", buf, 0x16u);
      }
    }

    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v76 = allKeys2;
    v77 = [v76 countByEnumeratingWithState:&v116 objects:v126 count:16];
    if (v77)
    {
      v78 = v77;
      *v108 = rem_store;
      v110 = allKeys2;
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
            v83 = [dictionary objectForKeyedSubscript:v81];
            rem_reminderItem4 = [v83 rem_reminderItem];
            updatableBackingModel = [rem_reminderItem4 updatableBackingModel];
            [updatableBackingModel updatePropertiesWithReminder:v82];

            v86 = DALoggingwithCategory();
            if (os_log_type_enabled(v86, v114))
            {
              objectID3 = [v82 objectID];
              [v83 serverID];
              v88 = v68;
              v90 = v89 = v76;
              *buf = 138543618;
              v128 = objectID3;
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
      sentItemsCopy = v102;
      rem_store = *v108;
      allKeys2 = v110;
      v70 = 0;
    }

    else
    {
      sentItemsCopy = v102;
    }
  }

  objc_autoreleasePoolPop(context);
  v93 = *MEMORY[0x277D85DE8];

  return v103;
}

- (void)putAction:(id)action completedWithError:(id)error
{
  v35 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  actionCopy = action;
  [(MobileCalDAVCalendar *)self setNumUploadedElements:[(MobileCalDAVCalendar *)self numUploadedElements]+ 1];
  context = [actionCopy context];

  v9 = DALoggingwithCategory();
  v10 = MEMORY[0x277CF3AF0];
  v11 = *(MEMORY[0x277CF3AF0] + 6);
  v12 = os_log_type_enabled(v9, v11);
  if (errorCopy)
  {
    if (v12)
    {
      serverID = [context serverID];
      *buf = 138543618;
      selfCopy = errorCopy;
      v33 = 2112;
      v34 = serverID;
      _os_log_impl(&dword_242490000, v9, v11, "Encountered error %{public}@ when putting item to %@", buf, 0x16u);
    }

    domain = [(MobileCalDAVCalendar *)errorCopy domain];
    v15 = [domain isEqualToString:*MEMORY[0x277CFDB80]];

    if (v15)
    {
      code = [(MobileCalDAVCalendar *)errorCopy code];
      switch(code)
      {
        case 412:
LABEL_8:
          serverID2 = [context serverID];
          [(MobileCalDAVCalendar *)self setEtag:0 forItemAtURL:serverID2];

          [(MobileCalDAVCalendar *)self _forceRefreshNextSync];
          break;
        case 409:
          v20 = DALoggingwithCategory();
          if (os_log_type_enabled(v20, v11))
          {
            serverID3 = [context serverID];
            *buf = 138412290;
            selfCopy = serverID3;
            _os_log_impl(&dword_242490000, v20, v11, "Received a 409 conflict for the event at %@. Creating a new UUID and trying again.", buf, 0xCu);
          }

          da_newGUID = [MEMORY[0x277CCACA8] da_newGUID];
          rem_reminderItem = [context rem_reminderItem];

          if (rem_reminderItem)
          {
            v29[0] = MEMORY[0x277D85DD0];
            v29[1] = 3221225472;
            v29[2] = __53__MobileCalDAVCalendar_putAction_completedWithError___block_invoke;
            v29[3] = &unk_278D4F690;
            v30 = da_newGUID;
            [context rem_setReminderPropertiesWithBlock:v29 error:0];
            v24 = v30;
          }

          else
          {
            v24 = DALoggingwithCategory();
            v25 = *(v10 + 4);
            if (os_log_type_enabled(v24, v25))
            {
              calendarURLString = [(MobileCalDAVCalendar *)self calendarURLString];
              *buf = 138412546;
              selfCopy = self;
              v33 = 2112;
              v34 = calendarURLString;
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
      serverID4 = [context serverID];
      *buf = 138412290;
      selfCopy = serverID4;
      _os_log_impl(&dword_242490000, v9, v11, "Put of item at %@ succeeded without error", buf, 0xCu);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)deleteAction:(id)action completedWithError:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  actionCopy = action;
  [(MobileCalDAVCalendar *)self setNumUploadedElements:[(MobileCalDAVCalendar *)self numUploadedElements]+ 1];
  context = [actionCopy context];

  v9 = DALoggingwithCategory();
  v10 = *(MEMORY[0x277CF3AF0] + 6);
  v11 = os_log_type_enabled(v9, v10);
  if (errorCopy)
  {
    if (v11)
    {
      v16 = 138543618;
      v17 = errorCopy;
      v18 = 2112;
      v19 = context;
      _os_log_impl(&dword_242490000, v9, v10, "Encountered error %{public}@ when deleting item from %@", &v16, 0x16u);
    }

    domain = [errorCopy domain];
    v13 = [domain isEqualToString:*MEMORY[0x277CFDB80]];

    if (v13)
    {
      code = [errorCopy code];
      if ((code - 403) <= 9 && ((1 << (code + 109)) & 0x203) != 0)
      {
        [(MobileCalDAVCalendar *)self setEtag:0 forItemAtURL:context];
        [(MobileCalDAVCalendar *)self _forceRefreshNextSync];
      }
    }
  }

  else
  {
    if (v11)
    {
      v16 = 138412290;
      v17 = context;
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

- (void)_addShareeWithObjectID:(id)d toDictionaryIfNeeded:(id)needed
{
  v37 = *MEMORY[0x277D85DE8];
  dCopy = d;
  neededCopy = needed;
  v8 = [neededCopy objectForKeyedSubscript:dCopy];

  if (!v8)
  {
    rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy_;
    v31 = __Block_byref_object_dispose_;
    v32 = 0;
    shareeContext = [rem_getCalCalendar shareeContext];
    sharees = [shareeContext sharees];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __68__MobileCalDAVCalendar__addShareeWithObjectID_toDictionaryIfNeeded___block_invoke;
    v24 = &unk_278D4F6B8;
    v12 = dCopy;
    v25 = v12;
    v26 = &v27;
    [sharees enumerateObjectsUsingBlock:&v21];

    if (v28[5])
    {
      v13 = DALoggingwithCategory();
      v14 = *(MEMORY[0x277CF3AF0] + 5);
      if (os_log_type_enabled(v13, v14))
      {
        objectID = [rem_getCalCalendar objectID];
        *buf = 138543618;
        v34 = objectID;
        v35 = 2114;
        v36 = v12;
        _os_log_impl(&dword_242490000, v13, v14, "_collectShareeActions > _addShareeWithObjectID: Collected ADDed/UPDATEd sharee and found record to add {list: %{public}@, shareeID: %{public}@}", buf, 0x16u);
      }

      v16 = objc_alloc(MEMORY[0x277CF6FE0]);
      v17 = [v16 initWithREMSharee:v28[5]];
      if (v17)
      {
        [neededCopy setObject:v17 forKeyedSubscript:v12];
      }
    }

    else
    {
      v17 = DALoggingwithCategory();
      v18 = *(MEMORY[0x277CF3AF0] + 5);
      if (os_log_type_enabled(v17, v18))
      {
        objectID2 = [rem_getCalCalendar objectID];
        *buf = 138543618;
        v34 = objectID2;
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
  daPrincipal = [(MobileCalDAVCalendar *)self daPrincipal];
  account = [daPrincipal account];
  wasMigrated = [account wasMigrated];

  if (wasMigrated)
  {
    v96 = objc_opt_new();
    [(MobileCalDAVCalendar *)self setShareeActions:?];
    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
    v9 = MEMORY[0x277CF3AF0];
    if (rem_getCalCalendar)
    {
      daPrincipal2 = [(MobileCalDAVCalendar *)self daPrincipal];
      rem_changeTracking = [daPrincipal2 rem_changeTracking];

      v12 = [rem_changeTracking changedIdentifiersOfModelClass:objc_opt_class() ofChangeType:0];
      v13 = [rem_changeTracking changedIdentifiersOfModelClass:objc_opt_class() ofChangeType:1];
      v14 = [rem_changeTracking changedIdentifiersOfModelClass:objc_opt_class() ofChangeType:2];
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

      v87 = rem_changeTracking;
      v17 = DALoggingwithCategory();
      v18 = *(MEMORY[0x277CF3AF0] + 6);
      if (os_log_type_enabled(v17, v18))
      {
        objectID = [rem_getCalCalendar objectID];
        *buf = 138544130;
        v119 = objectID;
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
            [(MobileCalDAVCalendar *)self _addShareeWithObjectID:v27 toDictionaryIfNeeded:dictionary];
          }

          v23 = [obj countByEnumeratingWithState:&v110 objects:v117 count:16];
        }

        while (v23);
      }

      v88 = dictionary;
      selfCopy = self;

      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v93 = v14;
      v28 = [v93 countByEnumeratingWithState:&v106 objects:v116 count:16];
      v91 = rem_getCalCalendar;
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
            objectID2 = [rem_getCalCalendar objectID];
            uuid = [objectID2 uuid];
            owningListIdentifier = [v34 owningListIdentifier];
            v38 = [uuid isEqual:owningListIdentifier];

            v39 = DALoggingwithCategory();
            address = v39;
            if (v38)
            {
              if (os_log_type_enabled(v39, type))
              {
                objectID3 = [rem_getCalCalendar objectID];
                objectIdentifier = [v34 objectIdentifier];
                *buf = 138543618;
                v119 = objectID3;
                v120 = 2114;
                v121 = objectIdentifier;
                _os_log_impl(&dword_242490000, address, type, "_collectShareeActions: Collected DELETEd sharee for this list {list: %{public}@, shareeID: %{public}@}.", buf, 0x16u);
              }

              address = [v34 address];
              v30 = v32;
              if (!address)
              {
                goto LABEL_40;
              }

              v43 = [MEMORY[0x277CBEBC0] URLWithString:address];
              scheme = [v43 scheme];
              v45 = [scheme length];

              if (!v45 && [address resemblesEmailAddress])
              {
                v46 = MEMORY[0x277CBEBC0];
                stringAddingMailto = [address stringAddingMailto];
                v48 = [v46 URLWithString:stringAddingMailto];

                v43 = v48;
              }

              if (v43)
              {
                displayName = [v34 displayName];
                v50 = [objc_alloc(MEMORY[0x277CF6FE0]) initWithHREF:v43 commonName:displayName inviteStatus:3 access:0];
                objectIdentifier2 = [v34 objectIdentifier];
                if (!objectIdentifier2)
                {
                  v52 = DALoggingwithCategory();
                  if (os_log_type_enabled(v52, v32))
                  {
                    objectID4 = [v91 objectID];
                    *buf = 138543618;
                    v119 = objectID4;
                    v120 = 2114;
                    v121 = v34;
                    _os_log_impl(&dword_242490000, v52, v32, "_collectShareeActions: ERROR: The sharee tombstone has no object identifier, faking a uuid for it {list: %{public}@, shareeTombstone: %{public}@}", buf, 0x16u);
                  }

                  objectIdentifier2 = [MEMORY[0x277CCAD78] UUID];
                }

                v54 = [MEMORY[0x277D447E8] objectIDWithUUID:objectIdentifier2];
                [dictionary2 setObject:v50 forKeyedSubscript:v54];

                rem_getCalCalendar = v91;
                v30 = v32;
              }

              else
              {
LABEL_40:
                v43 = DALoggingwithCategory();
                if (os_log_type_enabled(v43, v32))
                {
                  objectID5 = [rem_getCalCalendar objectID];
                  *buf = 138543618;
                  v119 = objectID5;
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
                objectID6 = [rem_getCalCalendar objectID];
                owningListIdentifier2 = [v34 owningListIdentifier];
                objectIdentifier3 = [v34 objectIdentifier];
                *buf = 138543874;
                v119 = objectID6;
                v120 = 2114;
                v121 = owningListIdentifier2;
                v122 = 2114;
                v123 = objectIdentifier3;
                _os_log_impl(&dword_242490000, address, v92, "_collectShareeActions: deletionKey is not for this list {list: %{public}@, sharee.owningListIdentifier: %{public}@, shareeID: %{public}@}", buf, 0x20u);
              }

              v30 = v32;
            }
          }

          v29 = [v93 countByEnumeratingWithState:&v106 objects:v116 count:16];
        }

        while (v29);
      }

      v59 = MEMORY[0x277CBEB58];
      dictionary = v88;
      allKeys = [v88 allKeys];
      v61 = [v59 setWithArray:allKeys];

      v62 = MEMORY[0x277CBEB98];
      allKeys2 = [dictionary2 allKeys];
      v64 = [v62 setWithArray:allKeys2];
      [v61 intersectSet:v64];

      if ([v61 count])
      {
        v65 = DALoggingwithCategory();
        v66 = *(MEMORY[0x277CF3AF0] + 4);
        if (os_log_type_enabled(v65, v66))
        {
          *buf = 138543618;
          v119 = selfCopy;
          v120 = 2114;
          v121 = v61;
          _os_log_impl(&dword_242490000, v65, v66, "MobileCalDAVCalendar: _collectShareeActions: LOOKATME: Found duplicated objectIDs in deletes vs addsAndMods, this is unexpected as the change tracking should have consolidated them {calendar: %{public}@, duplicates: %{public}@}", buf, 0x16u);
        }
      }

      array = [MEMORY[0x277CBEB18] array];
      v102 = 0u;
      v103 = 0u;
      v104 = 0u;
      v105 = 0u;
      allValues = [dictionary2 allValues];
      v69 = [allValues countByEnumeratingWithState:&v102 objects:v115 count:16];
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
              objc_enumerationMutation(allValues);
            }

            v73 = [objc_alloc(MEMORY[0x277CFDB90]) initWithAction:2 context:*(*(&v102 + 1) + 8 * k)];
            [(NSArray *)array addObject:v73];
          }

          v70 = [allValues countByEnumeratingWithState:&v102 objects:v115 count:16];
        }

        while (v70);
      }

      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      allValues2 = [v88 allValues];
      v75 = [allValues2 countByEnumeratingWithState:&v98 objects:v114 count:16];
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
              objc_enumerationMutation(allValues2);
            }

            v79 = [objc_alloc(MEMORY[0x277CFDB90]) initWithAction:1 context:*(*(&v98 + 1) + 8 * m)];
            [(NSArray *)array addObject:v79];
          }

          v76 = [allValues2 countByEnumeratingWithState:&v98 objects:v114 count:16];
        }

        while (v76);
      }

      shareeActions = selfCopy->_shareeActions;
      selfCopy->_shareeActions = array;

      rem_getCalCalendar = v91;
      v81 = v87;
    }

    else
    {
      v81 = DALoggingwithCategory();
      v82 = *(v9 + 4);
      if (os_log_type_enabled(v81, v82))
      {
        objectID7 = [0 objectID];
        *buf = 138543362;
        v119 = objectID7;
        _os_log_impl(&dword_242490000, v81, v82, "MobileCalDAVCalendar: _collectShareeActions: Calendar has no backing REM list when trying to collect sharee actions {list: %{public}@}.", buf, 0xCu);
      }
    }

    v84 = *MEMORY[0x277D85DE8];
  }
}

- (void)prepareSyncActionsWithCompletionBlock:(id)block
{
  v61 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  selfCopy = self;
  daPrincipal = [(MobileCalDAVCalendar *)self daPrincipal];
  account = [daPrincipal account];
  wasMigrated = [account wasMigrated];

  if (!wasMigrated)
  {
    daPrincipal2 = [(MobileCalDAVCalendar *)selfCopy daPrincipal];
    rem_changeTracking = [daPrincipal2 rem_changeTracking];

    changeSet = [rem_changeTracking changeSet];
    if ([changeSet isTruncated])
    {
    }

    else
    {
      changeSet2 = [rem_changeTracking changeSet];
      error = [changeSet2 error];

      if (!error)
      {
        obj = objc_opt_new();
        v54[0] = 0;
        v54[1] = v54;
        v54[2] = 0x2020000000;
        v55 = 0;
        copyDeletedItems = [(MobileCalDAVCalendar *)selfCopy copyDeletedItems];
        if ([copyDeletedItems count])
        {
          v14 = DALoggingwithCategory();
          v15 = *(MEMORY[0x277CF3AF0] + 5);
          if (os_log_type_enabled(v14, v15))
          {
            v16 = [copyDeletedItems count];
            *buf = 134218242;
            v58 = v16;
            v59 = 2112;
            v60 = copyDeletedItems;
            _os_log_impl(&dword_242490000, v14, v15, "MobileCalDAVCalendar: Collected %lu deleted reminders from REM change tracking {modified: %@}.", buf, 0x16u);
          }
        }

        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        allKeys = [copyDeletedItems allKeys];
        v18 = [allKeys countByEnumeratingWithState:&v50 objects:v56 count:16];
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
                objc_enumerationMutation(allKeys);
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

                  calendarURL = [(MobileCalDAVCalendar *)selfCopy calendarURL];
                  v26 = [v23 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:calendarURL];

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

            v18 = [allKeys countByEnumeratingWithState:&v50 objects:v56 count:16];
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
        v46[4] = selfCopy;
        v32 = v31;
        v47 = v32;
        v49 = v54;
        v33 = obj;
        v48 = v33;
        [(MobileCalDAVCalendar *)selfCopy copyAddedItemsWithBatchHandler:v46];
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __62__MobileCalDAVCalendar_prepareSyncActionsWithCompletionBlock___block_invoke_93;
        v42[3] = &unk_278D4F6E0;
        v42[4] = selfCopy;
        v34 = v32;
        v43 = v34;
        v45 = v54;
        v35 = v33;
        v44 = v35;
        [(MobileCalDAVCalendar *)selfCopy copyModifiedItemsWithBatchHandler:v42];
        objc_storeStrong(&selfCopy->_syncActions, obj);
        blockCopy[2](blockCopy, selfCopy);

        _Block_object_dispose(v54, 8);
        goto LABEL_7;
      }
    }

    fetchAndInitializeChangeTrackingStateIfNeeded = [rem_changeTracking fetchAndInitializeChangeTrackingStateIfNeeded];
    [(MobileCalDAVCalendar *)selfCopy _prepareForcedRefreshSyncActionsForTruncatedHistoryWithTrackingState:fetchAndInitializeChangeTrackingStateIfNeeded completionBlock:blockCopy];

LABEL_7:
    v7 = blockCopy;
    goto LABEL_8;
  }

  v7 = blockCopy;
  blockCopy[2](blockCopy, selfCopy);
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

- (void)_prepareForcedRefreshSyncActionsForTruncatedHistoryWithTrackingState:(id)state completionBlock:(id)block
{
  v40 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  blockCopy = block;
  daPrincipal = [(MobileCalDAVCalendar *)self daPrincipal];
  account = [daPrincipal account];

  v11 = DALoggingwithCategory();
  v12 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v11, v12))
  {
    accountDescription = [account accountDescription];
    *buf = 138412546;
    *&buf[4] = accountDescription;
    *&buf[12] = 2112;
    *&buf[14] = self;
    _os_log_impl(&dword_242490000, v11, v12, "MobileCalDAVCalendar: [ForcedRefreshSyncForTruncatedHistory]: Force a 'refresh sync' as change history was truncated or error, let's try hard to upload local reminders changes... {account: %@, calendar: %@}", buf, 0x16u);
  }

  lastConsumedDate = [stateCopy lastConsumedDate];
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
  selfCopy = self;
  v18 = account;
  v31 = v18;
  v19 = lastConsumedDate;
  v32 = v19;
  v20 = v15;
  v33 = v20;
  v36 = buf;
  v21 = v16;
  v34 = v21;
  v22 = v17;
  v35 = v22;
  [(MobileCalDAVCalendar *)self copyAllItemsWithBatchHandler:&v26];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:{v21, v26, v27, v28, v29, selfCopy}];
  v24 = [v23 arrayByAddingObjectsFromArray:v22];

  objc_storeStrong(&self->_syncActions, v24);
  blockCopy[2](blockCopy, self);

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

- (void)prepareMergeSyncActionsWithCompletionBlock:(id)block
{
  blockCopy = block;
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
  daPrincipal = [(MobileCalDAVCalendar *)self daPrincipal];
  account = [daPrincipal account];
  wasMigrated = [account wasMigrated];

  if (wasMigrated)
  {
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __67__MobileCalDAVCalendar_prepareMergeSyncActionsWithCompletionBlock___block_invoke;
    v17 = &unk_278D4F730;
    v25 = a2;
    selfCopy = self;
    v19 = v10;
    v22 = v31;
    v20 = v8;
    v21 = v9;
    v23 = buf;
    v24 = v26;
    [(MobileCalDAVCalendar *)self copyAllItemsWithBatchHandler:&v14];
  }

  [(MobileCalDAVCalendar *)self setUuidsToAddActions:v8, v14, v15, v16, v17, selfCopy];
  [(MobileCalDAVCalendar *)self setHrefsToModDeleteActions:v9];
  blockCopy[2](blockCopy, self);
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
  uRLToEtagMap = [(MobileCalDAVCalendar *)self URLToEtagMap];
  [uRLToEtagMap removeAllObjects];

  [(MobileCalDAVCalendar *)self setSyncActions:0];
  [(MobileCalDAVCalendar *)self setShareeActions:0];
  [(MobileCalDAVCalendar *)self setUuidsToAddActions:0];
  [(MobileCalDAVCalendar *)self setHrefsToModDeleteActions:0];

  +[MobileCalDAVCalendar rem_clearListObjectIDCache];
}

- (BOOL)rem_setListPropertiesWithBlock:(id)block error:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
  if (rem_getCalCalendar)
  {
    rem_saveRequest = [(MobileCalDAVCalendar *)self rem_saveRequest];
    v9 = [rem_saveRequest updateList:rem_getCalCalendar];
    blockCopy[2](blockCopy, v9);
    changedKeys = [v9 changedKeys];
    v11 = [changedKeys count];

    if (v11)
    {
      v32 = 0;
      v12 = [rem_saveRequest saveSynchronouslyWithError:&v32];
      v13 = v32;
      v14 = v13;
      if (!v12 || v13)
      {
        v20 = DALoggingwithCategory();
        v21 = *(MEMORY[0x277CF3AF0] + 3);
        if (os_log_type_enabled(v20, v21))
        {
          changedKeys2 = [v9 changedKeys];
          guid = self->_guid;
          objectID = [rem_getCalCalendar objectID];
          calendarURLString = [(MobileCalDAVCalendar *)self calendarURLString];
          localizedDescription = [v14 localizedDescription];
          callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
          *buf = 138544642;
          selfCopy = changedKeys2;
          v35 = 2114;
          v36 = guid;
          v37 = 2114;
          v38 = objectID;
          v39 = 2112;
          v40 = calendarURLString;
          v41 = 2114;
          v42 = localizedDescription;
          v43 = 2112;
          v44 = callStackSymbols;
          v23 = callStackSymbols;
          _os_log_impl(&dword_242490000, v20, v21, "MobileCalDAVCalendar: ERROR: Failed to set REMList properties {changedKeys=%{public}@, GUID=%{public}@, listID=%{public}@, url=%@, error=%{public}@, stack=%@}", buf, 0x3Eu);
        }

        if (!error)
        {
          goto LABEL_17;
        }
      }

      else
      {
        [(MobileCalDAVCalendar *)self rem_reloadCalCalendar];
        if (!error)
        {
          goto LABEL_17;
        }
      }

      v24 = v14;
      *error = v14;
LABEL_17:

      goto LABEL_18;
    }

    v17 = DALoggingwithCategory();
    v18 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v17, v18))
    {
      objectID2 = [rem_getCalCalendar objectID];
      *buf = 138543362;
      selfCopy = objectID2;
      _os_log_impl(&dword_242490000, v17, v18, "MobileCalDAVCalendar: ChangedKeys is empty, no effective changes to this list change item, skipping -save {listOD: %{public}@}.", buf, 0xCu);
    }

    LOBYTE(v12) = 1;
  }

  else
  {
    rem_saveRequest = DALoggingwithCategory();
    v15 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(rem_saveRequest, v15))
    {
      callStackSymbols2 = [MEMORY[0x277CCACC8] callStackSymbols];
      *buf = 138543618;
      selfCopy = self;
      v35 = 2112;
      v36 = callStackSymbols2;
      _os_log_impl(&dword_242490000, rem_saveRequest, v15, "MobileCalDAVCalendar: Couldn't find an REMList to set property {calendar: %{public}@, stack: %@}.", buf, 0x16u);
    }

    LOBYTE(v12) = 0;
  }

LABEL_18:

  v25 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)rem_invalidateCalCalendarWithReload:(BOOL)reload
{
  reloadCopy = reload;
  [(MobileCalDAVCalendar *)self setRem_cachedFetchedRemindersForMergeSync:0];
  rem_calCalendar = self->_rem_calCalendar;
  if (rem_calCalendar && ([(MobileCalDAVCalendar *)self calendarURLString], v6 = objc_claimAutoreleasedReturnValue(), v6, rem_calCalendar = self->_rem_calCalendar, !v6))
  {
    v8 = rem_calCalendar;
    rem_store = [(MobileCalDAVCalendar *)self rem_store];
    objectID = [(REMList *)v8 objectID];
    v10 = [rem_store fetchListWithObjectID:objectID error:0];
    v11 = self->_rem_calCalendar;
    self->_rem_calCalendar = v10;
  }

  else
  {
    self->_rem_calCalendar = 0;

    if (reloadCopy)
    {
      rem_getCalCalendar = [(MobileCalDAVCalendar *)self rem_getCalCalendar];
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