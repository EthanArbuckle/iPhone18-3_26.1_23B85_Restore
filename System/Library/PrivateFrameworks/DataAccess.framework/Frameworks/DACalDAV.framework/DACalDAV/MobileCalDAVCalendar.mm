@interface MobileCalDAVCalendar
+ (BOOL)clearCalendarChanges:(__CFArray *)changes forPrincipal:(id)principal changeTrackingClient:(id)client;
+ (BOOL)shouldSkipCalendar:(void *)calendar withChangeType:(int)type;
+ (__CFArray)gatherCalendarChangesInPrincipal:(id)principal calendars:(id)calendars adds:(id *)adds modifies:(id *)modifies deletes:(id *)deletes changeTracker:(id)tracker;
+ (id)calURLToUIDCache;
+ (id)calendarWithCalCalendar:(void *)calendar principal:(id)principal;
+ (int)cachedCalendarUIDForURLString:(id)string;
+ (void)clearCalendarUIDCache;
+ (void)processAddedCalendar:(id)calendar;
+ (void)processModifiedCalendar:(id)calendar oldFlags:(unsigned int)flags newFlags:(unsigned int)newFlags;
+ (void)removeUIDCacheEntryForCalendarURLString:(id)string;
- (BOOL)_isDeleted:(id)deleted;
- (BOOL)_removeCalendarItemWithURL:(id)l;
- (BOOL)_shouldRecordError:(id)error;
- (BOOL)canBePublished;
- (BOOL)canBeShared;
- (BOOL)deleteResourcesAtURLs:(id)ls;
- (BOOL)hasCalendarErrorOfType:(unint64_t)type;
- (BOOL)hasCalendarUserAddressEquivalentToURL:(id)l;
- (BOOL)hasEvents;
- (BOOL)isAffectingAvailability;
- (BOOL)isEditable;
- (BOOL)isEventContainer;
- (BOOL)isFamilyCalendar;
- (BOOL)isHidden;
- (BOOL)isMarkedImmutableSharees;
- (BOOL)isMarkedUndeletable;
- (BOOL)isPublished;
- (BOOL)isRenameable;
- (BOOL)isSubscribed;
- (BOOL)isTaskContainer;
- (BOOL)setEtag:(id)etag forItemAtURL:(id)l;
- (BOOL)setScheduleTag:(id)tag forItemAtURL:(id)l;
- (BOOL)setURL:(id)l forResourceWithUUID:(id)d;
- (BOOL)updateResourcesFromServer:(id)server;
- (CalDAVPrincipal)principal;
- (CalDiagCalendarCollectionSync)calendarCollectionSyncDiagnostics;
- (CalRecordID)recordIDForExternalIdentifier:(id)identifier;
- (CalRecordID)recordIDForUniqueIdentifier:(id)identifier;
- (MobileCalDAVCalendar)initWithCalendarURL:(id)l calendar:(void *)calendar principal:(id)principal title:(id)title;
- (NSArray)newlyAddedItems;
- (NSArray)shareeActions;
- (NSDictionary)bulkRequests;
- (NSSet)allItemURLs;
- (NSSet)preferredCalendarUserAddresses;
- (NSSet)sharees;
- (NSString)accountID;
- (NSString)color;
- (NSString)ctag;
- (NSString)description;
- (NSString)displayColor;
- (NSString)lastSyncTitle;
- (NSString)notes;
- (NSString)ownerDisplayName;
- (NSString)ownerEmailAddress;
- (NSString)ownerPhoneNumber;
- (NSString)pushKey;
- (NSString)symbolicColorName;
- (NSString)syncToken;
- (NSString)title;
- (NSURL)calendarURL;
- (NSURL)owner;
- (NSURL)prePublishURL;
- (NSURL)publishURL;
- (id)_actionsForJunkItemsInModifiedItems:(id)items alreadySentItems:(id)sentItems;
- (id)_calExternalRep;
- (id)_copyDeletedEventActions;
- (id)_createActionsForItems:(id)items withAction:(int)action alreadySentItems:(id)sentItems createServerIDs:(BOOL)ds shouldSave:(BOOL *)save;
- (id)_itemPropertyDictForItemAtIndex:(int64_t)index withChangedIDs:(__CFArray *)ds withChangedRowids:(__CFArray *)rowids withExternalIDs:(__CFArray *)iDs uniqueIdentifiers:(__CFArray *)identifiers significantAttributeChanges:(__CFArray *)changes oldCalendarIDs:(__CFArray *)calendarIDs entityType:(int)self0;
- (id)_preferredAddress;
- (id)_recurrenceSplitActionsForItems:(id)items alreadySentItems:(id)sentItems;
- (id)calendarUserAddresses;
- (id)copyAddedItems;
- (id)copyAllItems;
- (id)copyDeletedItems;
- (id)copyModifiedItems;
- (id)copyRecurrenseSplitItems;
- (id)etagsForItemURLs:(id)ls;
- (id)removeInvitationsForItemWithUniqueIdentifier:(id)identifier;
- (int)order;
- (int)sharingStatus;
- (int64_t)maxAttendees;
- (void)_addAddedItemsOfType:(int)type toArray:(id)array;
- (void)_addAddedRecurrenceSplitItemsToArray:(id)array;
- (void)_addShareeWithRowID:(id)d toDictionaryIfNeeded:(id)needed;
- (void)_clearChanges:(id)changes shouldClearAttachmentChanges:(BOOL)attachmentChanges;
- (void)_clearChangesAtIndices:(id)indices forType:(int)type;
- (void)_clearChangesFromItem:(id)item;
- (void)_clearExistingHTTPErrorForCalItem:(void *)item;
- (void)_collectShareeActions;
- (void)_copyCalItemWithExternalID:(id)d;
- (void)_copyCalItemWithUniqueIdentifier:(id)identifier inCalendar:(void *)calendar orStore:(void *)store;
- (void)_dropCalStoreContext;
- (void)_gatherDeletedChanges:(void *)changes inDictionary:(id)dictionary;
- (void)_gatherModifiedEventsInArray:(id)array;
- (void)_gatherModifiedItemsFromCalChangesCall:(void *)call forType:(id)type inArray:(id)array;
- (void)_gatherModifiedTasksInArray:(id)array;
- (void)_recordError:(id)error forCalItem:(void *)item;
- (void)_saveChanges:(id)changes;
- (void)_saveChangesForItem:(id)item;
- (void)_setSupportsEvents:(BOOL)events supportsTodos:(BOOL)todos;
- (void)_updateCalendarInfo;
- (void)clearCalendarErrorOfType:(unint64_t)type;
- (void)clearChangesForEntityType:(int)type;
- (void)clearEventChanges;
- (void)clearShareeActions;
- (void)correctLocationPredictionStateForRecurrenceSets:(id)sets calDB:(CalDatabase *)b;
- (void)createSyncActions;
- (void)dealloc;
- (void)deleteAction:(id)action completedWithError:(id)error;
- (void)deleteCalendar;
- (void)flushCaches;
- (void)generateICSForActions;
- (void)getCalCalendar;
- (void)initCalCalendarWithTitle:(id)title;
- (void)prepareMergeSyncActionsWithCompletionBlock:(id)block;
- (void)prepareSyncActionsWithCompletionBlock:(id)block;
- (void)putAction:(id)action completedWithError:(id)error;
- (void)recordCalendarError:(id)error ofType:(unint64_t)type;
- (void)recordDiagnosticsForAccountSync:(id)sync;
- (void)recurrenceSplitAction:(id)action completedWithUpdatedETag:(id)tag updatedScheduleTag:(id)scheduleTag createdURL:(id)l createdETag:(id)eTag createdScheduleTag:(id)createdScheduleTag;
- (void)recurrenceSplitAction:(id)action failedWithError:(id)error;
- (void)recurrenceSplitActionsCompletedWithError:(id)error;
- (void)reportJunkAction:(id)action completedWithError:(id)error;
- (void)setBulkRequests:(id)requests;
- (void)setCalendarURL:(id)l;
- (void)setCanBePublished:(BOOL)published;
- (void)setCanBeShared:(BOOL)shared;
- (void)setColor:(id)color;
- (void)setCtag:(id)ctag;
- (void)setExternalIdentifier:(id)identifier forRecordID:(CalRecordID *)d;
- (void)setGuid:(id)guid;
- (void)setIsAffectingAvailability:(BOOL)availability;
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
- (void)setMaxAttendees:(int64_t)attendees;
- (void)setNewlyAddedItems:(id)items;
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
- (void)setUniqueIdentifier:(id)identifier forRecordID:(CalRecordID *)d;
- (void)syncDidFinishWithError:(id)error;
@end

@implementation MobileCalDAVCalendar

+ (id)calendarWithCalCalendar:(void *)calendar principal:(id)principal
{
  principalCopy = principal;
  if (calendar)
  {
    if (CalCalendarGetSharingStatus() == 3)
    {
      calendar = 0;
      goto LABEL_13;
    }

    v6 = CalCalendarCopyTitle();
    v7 = CalCalendarCopyExternalID();
    calendarHomeURL = [principalCopy calendarHomeURL];
    v9 = [v7 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:calendarHomeURL];

    if (CalCalendarIsInbox())
    {
      v10 = MobileCalDAVInboxCalendar;
    }

    else if (CalCalendarIsNotificationsCollection())
    {
      v10 = MobileCalDAVNotificationCalendar;
    }

    else
    {
      if (CalCalendarIsSubscribed())
      {
        subCalPropertiesByURL = [principalCopy subCalPropertiesByURL];
        absoluteString = [v9 absoluteString];
        v13 = [subCalPropertiesByURL objectForKeyedSubscript:absoluteString];

        calendar = [[MobileCalDAVSubscribedCalendar alloc] initWithCalendarURL:v9 calendar:calendar properties:v13 principal:principalCopy];
LABEL_12:

        goto LABEL_13;
      }

      v10 = MobileCalDAVCalendar;
    }

    calendar = [[v10 alloc] initWithCalendarURL:v9 calendar:calendar principal:principalCopy title:v6];
    goto LABEL_12;
  }

LABEL_13:

  return calendar;
}

- (MobileCalDAVCalendar)initWithCalendarURL:(id)l calendar:(void *)calendar principal:(id)principal title:(id)title
{
  lCopy = l;
  principalCopy = principal;
  titleCopy = title;
  v30.receiver = self;
  v30.super_class = MobileCalDAVCalendar;
  v13 = [(MobileCalDAVCalendar *)&v30 init];
  v14 = v13;
  if (v13)
  {
    [(MobileCalDAVCalendar *)v13 setPrincipal:principalCopy];
    [(MobileCalDAVCalendar *)v14 setIsEnabled:1];
    [(MobileCalDAVCalendar *)v14 setIsDirty:0];
    principal = [(MobileCalDAVCalendar *)v14 principal];
    calendarHomeURL = [principal calendarHomeURL];
    v17 = [lCopy da_leastInfoStringRepresentationRelativeToParentURL:calendarHomeURL];
    calendarURLString = v14->_calendarURLString;
    v14->_calendarURLString = v17;

    if (calendar)
    {
      v14->_calCalendar = calendar;
      CFRetain(calendar);
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v14 selector:sel__dropCalStoreContext name:@"CalDBIsClosing" object:0];
    }

    else if (![(MobileCalDAVCalendar *)v14 getCalCalendar])
    {
      v14->_calCalendar = [(MobileCalDAVCalendar *)v14 initCalCalendarWithTitle:titleCopy];
    }

    if ([(MobileCalDAVCalendar *)v14 calCalendar])
    {
      [(MobileCalDAVCalendar *)v14 _updateCalendarInfo];
      calCalendar = v14->_calCalendar;
      v21 = CalCalendarCopyExternalIdentificationTag();
      if (v21)
      {
        da_newGUID = v21;
        objc_storeStrong(&v14->_guid, v21);
      }

      else
      {
        da_newGUID = [MEMORY[0x277CCACA8] da_newGUID];
        [(MobileCalDAVCalendar *)v14 setGuid:da_newGUID];
      }
    }

    calendarURLString = [(MobileCalDAVCalendar *)v14 calendarURLString];

    if (calendarURLString)
    {
      [(MobileCalDAVCalendar *)v14 calCalendar];
      UID = CalCalendarGetUID();
      calendarURLString2 = [(MobileCalDAVCalendar *)v14 calendarURLString];
      [MobileCalDAVCalendar cacheCalendarUID:UID forCalendarURLString:calendarURLString2];
    }

    v26 = objc_opt_new();
    [(MobileCalDAVCalendar *)v14 setUniqueIdentifierToRecordIDMap:v26];

    v27 = objc_opt_new();
    [(MobileCalDAVCalendar *)v14 setURLToRecordIDMap:v27];

    v28 = objc_opt_new();
    [(MobileCalDAVCalendar *)v14 setURLToEtagMap:v28];
  }

  return v14;
}

- (void)dealloc
{
  [(MobileCalDAVCalendar *)self _dropCalStoreContext];
  v3.receiver = self;
  v3.super_class = MobileCalDAVCalendar;
  [(MobileCalDAVCalendar *)&v3 dealloc];
}

+ (id)calURLToUIDCache
{
  if (calURLToUIDCache_onceToken != -1)
  {
    +[MobileCalDAVCalendar calURLToUIDCache];
  }

  v3 = calURLToUIDCache_sCalURLToUIDCache;

  return v3;
}

uint64_t __40__MobileCalDAVCalendar_calURLToUIDCache__block_invoke()
{
  calURLToUIDCache_sCalURLToUIDCache = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

+ (void)removeUIDCacheEntryForCalendarURLString:(id)string
{
  if (string)
  {
    stringCopy = string;
    calURLToUIDCache = [self calURLToUIDCache];
    [calURLToUIDCache removeObjectForKey:stringCopy];
  }
}

+ (int)cachedCalendarUIDForURLString:(id)string
{
  stringCopy = string;
  if (stringCopy && ([self calURLToUIDCache], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectForKeyedSubscript:", stringCopy), v6 = objc_claimAutoreleasedReturnValue(), v5, v6))
  {
    intValue = [v6 intValue];
  }

  else
  {
    intValue = -1;
  }

  return intValue;
}

+ (void)clearCalendarUIDCache
{
  calURLToUIDCache = [self calURLToUIDCache];
  [calURLToUIDCache removeAllObjects];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = MobileCalDAVCalendar;
  v4 = [(MobileCalDAVCalendar *)&v9 description];
  guid = [(MobileCalDAVCalendar *)self guid];
  title = [(MobileCalDAVCalendar *)self title];
  v7 = [v3 stringWithFormat:@"%@ [%@] %@", v4, guid, title];

  return v7;
}

- (void)deleteCalendar
{
  v13 = *MEMORY[0x277D85DE8];
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  v4 = DALoggingwithCategory();
  v5 = v4;
  if (getCalCalendar)
  {
    v6 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v4, v6))
    {
      v11 = 67109120;
      LODWORD(v12) = CalCalendarGetUID();
      _os_log_impl(&dword_2484B2000, v5, v6, "Deleting calendar with uid %d", &v11, 8u);
    }

    CalRemoveCalendar();
    calCalendar = self->_calCalendar;
    if (calCalendar)
    {
      CFRelease(calCalendar);
      self->_calCalendar = 0;
    }
  }

  else
  {
    v8 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v4, *(MEMORY[0x277D03988] + 4)))
    {
      guid = [(MobileCalDAVCalendar *)self guid];
      v11 = 138412290;
      v12 = guid;
      _os_log_impl(&dword_2484B2000, v5, v8, "Couldn't find calendar with guid %@", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setIsDirty:(BOOL)dirty
{
  v11 = *MEMORY[0x277D85DE8];
  if (dirty)
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v5, v6))
    {
      title = [(MobileCalDAVCalendar *)self title];
      v9 = 138412290;
      v10 = title;
      _os_log_impl(&dword_2484B2000, v5, v6, "Marking calendar %@ as dirty.", &v9, 0xCu);
    }
  }

  self->_isDirty = dirty;
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setGuid:(id)guid
{
  v15 = *MEMORY[0x277D85DE8];
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
      if ([(MobileCalDAVCalendar *)self getCalCalendar])
      {
        CalCalendarSetExternalIdentificationTag();
      }

      else
      {
        v10 = DALoggingwithCategory();
        v11 = *(MEMORY[0x277D03988] + 4);
        if (os_log_type_enabled(v10, v11))
        {
          v13 = 138412290;
          v14 = guidCopy;
          _os_log_impl(&dword_2484B2000, v10, v11, "Couldn't find a calendar with uid %@ to set the new guid on", &v13, 0xCu);
        }
      }

      objc_storeStrong(&self->_guid, guid);
      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
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
  lCopy = l;
  calendarURLString = [(MobileCalDAVCalendar *)self calendarURLString];
  principal = [(MobileCalDAVCalendar *)self principal];
  calendarHomeURL = [principal calendarHomeURL];
  v8 = [lCopy da_leastInfoStringRepresentationRelativeToParentURL:calendarHomeURL];

  da_appendSlashIfNeeded = [v8 da_appendSlashIfNeeded];

  if (calendarURLString != da_appendSlashIfNeeded && ([calendarURLString isEqualToString:da_appendSlashIfNeeded] & 1) == 0)
  {
    if ([(MobileCalDAVCalendar *)self getCalCalendar])
    {
      calendarURLString2 = [(MobileCalDAVCalendar *)self calendarURLString];
      [MobileCalDAVCalendar removeUIDCacheEntryForCalendarURLString:calendarURLString2];

      [(MobileCalDAVCalendar *)self setCalendarURLString:da_appendSlashIfNeeded];
      UID = CalCalendarGetUID();
      calendarURLString3 = [(MobileCalDAVCalendar *)self calendarURLString];
      [MobileCalDAVCalendar cacheCalendarUID:UID forCalendarURLString:calendarURLString3];

      calendarURLString4 = [(MobileCalDAVCalendar *)self calendarURLString];
      CalCalendarSetExternalID();

      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }

    else
    {
      v14 = DALoggingwithCategory();
      v15 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v14, v15))
      {
        *v16 = 0;
        _os_log_impl(&dword_2484B2000, v14, v15, "Could not find a calendar to set a URL on", v16, 2u);
      }
    }
  }
}

- (void)_setSupportsEvents:(BOOL)events supportsTodos:(BOOL)todos
{
  if ((todos & ~events) != 0)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  if (events)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  if (todos)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    CanContainEntityType = CalCalendarCanContainEntityType();
    v8 = CalCalendarCanContainEntityType();
    if ((CanContainEntityType & (v8 ^ 1)) != 0)
    {
      v9 = 3;
    }

    else
    {
      v9 = 0;
    }

    if (v8)
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }

    if (!CanContainEntityType)
    {
      v9 = v10;
    }

    if (v9 != v6)
    {

      CalCalendarSetCanContainEntityType();
    }
  }
}

- (BOOL)isTaskContainer
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {

    LOBYTE(getCalCalendar) = CalCalendarCanContainEntityType();
  }

  return getCalCalendar;
}

- (void)setIsTaskContainer:(BOOL)container
{
  containerCopy = container;
  isEventContainer = [(MobileCalDAVCalendar *)self isEventContainer];
  WeakRetained = objc_loadWeakRetained(&self->_principal);
  isEnabledForTodos = [WeakRetained isEnabledForTodos];

  [(MobileCalDAVCalendar *)self _setSupportsEvents:isEventContainer supportsTodos:isEnabledForTodos & containerCopy];
}

- (BOOL)isEventContainer
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {

    LOBYTE(getCalCalendar) = CalCalendarCanContainEntityType();
  }

  return getCalCalendar;
}

- (void)setIsEventContainer:(BOOL)container
{
  containerCopy = container;
  isTaskContainer = [(MobileCalDAVCalendar *)self isTaskContainer];
  WeakRetained = objc_loadWeakRetained(&self->_principal);
  isEnabledForEvents = [WeakRetained isEnabledForEvents];

  [(MobileCalDAVCalendar *)self _setSupportsEvents:isEnabledForEvents & containerCopy supportsTodos:isTaskContainer];
}

- (BOOL)isSubscribed
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {

    LOBYTE(getCalCalendar) = CalCalendarIsSubscribed();
  }

  return getCalCalendar;
}

- (void)setIsSubscribed:(BOOL)subscribed
{
  if ([(MobileCalDAVCalendar *)self isSubscribed]!= subscribed && [(MobileCalDAVCalendar *)self getCalCalendar])
  {

    CalCalendarSetSubscribed();
  }
}

- (NSString)title
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {
    getCalCalendar = CalCalendarCopyTitle();
  }

  return getCalCalendar;
}

- (void)setTitle:(id)title
{
  v20 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  v5 = titleCopy;
  if (titleCopy && ![titleCopy isEqualToString:&stru_285AB0D40])
  {
    user = v5;
  }

  else
  {
    principal = [(MobileCalDAVCalendar *)self principal];
    user = [principal user];

    v8 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v8, v9))
    {
      calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
      v16 = 138412546;
      v17 = user;
      v18 = 2112;
      v19 = calendarURL;
      _os_log_impl(&dword_2484B2000, v8, v9, "Empty calendar title received. Setting calendar title to %@. Calendar URL: %@", &v16, 0x16u);
    }
  }

  title = [(MobileCalDAVCalendar *)self title];
  v12 = title;
  if (user == title)
  {
  }

  else
  {
    title2 = [(MobileCalDAVCalendar *)self title];
    v14 = [user isEqualToString:title2];

    if ((v14 & 1) == 0 && [(MobileCalDAVCalendar *)self getCalCalendar])
    {
      CalCalendarSetTitle();
      CalCalendarSetLastSyncTitle();
      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (NSString)lastSyncTitle
{
  SyncTitle = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (SyncTitle)
  {
    SyncTitle = CalCalendarCopyLastSyncTitle();
  }

  return SyncTitle;
}

- (NSString)notes
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {
    getCalCalendar = CalCalendarCopyNotes();
  }

  return getCalCalendar;
}

- (void)setNotes:(id)notes
{
  notesCopy = notes;
  notes = [(MobileCalDAVCalendar *)self notes];
  if ([notesCopy length])
  {
    v5 = notesCopy;
  }

  else
  {

    v5 = 0;
  }

  v7 = v5;
  if (v5 != notes && ([v5 isEqualToString:notes] & 1) == 0 && -[MobileCalDAVCalendar getCalCalendar](self, "getCalCalendar"))
  {
    CalCalendarSetNotes();
    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (NSString)color
{
  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    v3 = CalCalendarCopyColorString();
    if (!v3)
    {
      v3 = CalCalendarCopyColorStringForDisplay();
      if (v3)
      {
        CalCalendarSetColorString();
        [(MobileCalDAVCalendar *)self setIsDirty:1];
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setColor:(id)color
{
  colorCopy = color;
  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    v4 = CalCalendarCopyColorString();
    if ([colorCopy length] && v4 != colorCopy && (objc_msgSend(colorCopy, "isEqualToString:", v4) & 1) == 0)
    {
      CalCalendarSetColorString();
      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }
  }
}

- (NSString)symbolicColorName
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {
    getCalCalendar = CalCalendarCopySymbolicColorName();
  }

  return getCalCalendar;
}

- (void)setSymbolicColorName:(id)name
{
  nameCopy = name;
  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    v4 = CalCalendarCopySymbolicColorName();
    if ([nameCopy length] && v4 != nameCopy && (objc_msgSend(nameCopy, "isEqualToString:", v4) & 1) == 0)
    {
      CalCalendarSetSymbolicColorName();
      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }
  }
}

- (NSString)pushKey
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {
    getCalCalendar = CalCalendarCopyPushKey();
  }

  return getCalCalendar;
}

- (void)setPushKey:(id)key
{
  keyCopy = key;
  pushKey = [(MobileCalDAVCalendar *)self pushKey];
  if (pushKey != keyCopy && ([keyCopy isEqualToString:pushKey] & 1) == 0 && -[MobileCalDAVCalendar getCalCalendar](self, "getCalCalendar"))
  {
    CalCalendarSetPushKey();
    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (NSDictionary)bulkRequests
{
  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    v2 = CalCalendarCopyBulkRequests();
  }

  else
  {
    v2 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setBulkRequests:(id)requests
{
  requestsCopy = requests;
  bulkRequests = [(MobileCalDAVCalendar *)self bulkRequests];
  if (bulkRequests != requestsCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([requestsCopy isEqualToDictionary:bulkRequests] & 1) == 0 && -[MobileCalDAVCalendar getCalCalendar](self, "getCalCalendar"))
    {
      CalCalendarSetBulkRequests();
      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }
  }
}

- (BOOL)canBePublished
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {

    LOBYTE(getCalCalendar) = MEMORY[0x282147320]();
  }

  return getCalCalendar;
}

- (void)setCanBePublished:(BOOL)published
{
  if ([(MobileCalDAVCalendar *)self canBePublished]!= published && [(MobileCalDAVCalendar *)self getCalCalendar])
  {
    CalCalendarSetCanBePublished();

    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (BOOL)canBeShared
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {

    LOBYTE(getCalCalendar) = MEMORY[0x282147328]();
  }

  return getCalCalendar;
}

- (void)setCanBeShared:(BOOL)shared
{
  if ([(MobileCalDAVCalendar *)self canBeShared]!= shared && [(MobileCalDAVCalendar *)self getCalCalendar])
  {
    CalCalendarSetCanBeShared();

    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (BOOL)isFamilyCalendar
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {

    LOBYTE(getCalCalendar) = MEMORY[0x2821473D8]();
  }

  return getCalCalendar;
}

- (void)setIsFamilyCalendar:(BOOL)calendar
{
  if ([(MobileCalDAVCalendar *)self isFamilyCalendar]!= calendar && [(MobileCalDAVCalendar *)self getCalCalendar])
  {
    CalCalendarSetIsFamilyCalendar();

    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (BOOL)isMarkedUndeletable
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {

    LOBYTE(getCalCalendar) = MEMORY[0x282147428]();
  }

  return getCalCalendar;
}

- (void)setIsMarkedUndeletable:(BOOL)undeletable
{
  if ([(MobileCalDAVCalendar *)self isMarkedUndeletable]!= undeletable && [(MobileCalDAVCalendar *)self getCalCalendar])
  {
    CalCalendarSetIsMarkedUndeletable();

    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (BOOL)isMarkedImmutableSharees
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {

    LOBYTE(getCalCalendar) = MEMORY[0x282147420]();
  }

  return getCalCalendar;
}

- (void)setIsMarkedImmutableSharees:(BOOL)sharees
{
  if ([(MobileCalDAVCalendar *)self isMarkedImmutableSharees]!= sharees && [(MobileCalDAVCalendar *)self getCalCalendar])
  {
    CalCalendarSetIsMarkedImmutableSharees();

    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (int64_t)maxAttendees
{
  result = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (result)
  {

    return MEMORY[0x282147348]();
  }

  return result;
}

- (void)setMaxAttendees:(int64_t)attendees
{
  if ([(MobileCalDAVCalendar *)self maxAttendees]!= attendees && [(MobileCalDAVCalendar *)self getCalCalendar])
  {
    CalCalendarSetMaxAttendees();

    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (BOOL)isPublished
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {

    LOBYTE(getCalCalendar) = MEMORY[0x282147340]();
  }

  return getCalCalendar;
}

- (void)setIsPublished:(BOOL)published
{
  if ([(MobileCalDAVCalendar *)self isPublished]!= published && [(MobileCalDAVCalendar *)self getCalCalendar])
  {
    CalCalendarSetIsPublished();

    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (BOOL)isAffectingAvailability
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {

    LOBYTE(getCalCalendar) = MEMORY[0x2821473A8]();
  }

  return getCalCalendar;
}

- (void)setIsAffectingAvailability:(BOOL)availability
{
  if ([(MobileCalDAVCalendar *)self isAffectingAvailability]!= availability && [(MobileCalDAVCalendar *)self getCalCalendar])
  {
    CalCalendarSetIsAffectingAvailability();

    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (NSURL)publishURL
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {
    getCalCalendar = CalCalendarCopyPublishedURL();
  }

  return getCalCalendar;
}

- (void)setPublishURL:(id)l
{
  lCopy = l;
  publishURL = [(MobileCalDAVCalendar *)self publishURL];
  if (publishURL != lCopy && ([publishURL da_isEqualToDAVURL:lCopy] & 1) == 0 && -[MobileCalDAVCalendar getCalCalendar](self, "getCalCalendar"))
  {
    CalCalendarSetPublishedURL();
    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (NSURL)prePublishURL
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {
    getCalCalendar = CalCalendarCopyPublishedURL();
  }

  return getCalCalendar;
}

- (NSString)ownerDisplayName
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {
    getCalCalendar = CalCalendarCopySharedOwnerName();
  }

  return getCalCalendar;
}

- (void)setOwnerDisplayName:(id)name
{
  nameCopy = name;
  ownerDisplayName = [(MobileCalDAVCalendar *)self ownerDisplayName];
  if (ownerDisplayName == nameCopy)
  {
  }

  else
  {
    ownerDisplayName2 = [(MobileCalDAVCalendar *)self ownerDisplayName];
    v6 = [nameCopy isEqualToString:ownerDisplayName2];

    if ((v6 & 1) == 0 && [(MobileCalDAVCalendar *)self getCalCalendar])
    {
      CalCalendarSetSharedOwnerName();
      CalCalendarSetOwnerIdentityDisplayName();
      [(MobileCalDAVCalendar *)self setIsDirty:1];
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

- (NSURL)owner
{
  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    v2 = CalCalendarCopySharedOwnerAddress();
    if (v2)
    {
      v3 = [MEMORY[0x277CBEBC0] URLWithString:v2];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setOwner:(id)owner
{
  ownerCopy = owner;
  absoluteString = [ownerCopy absoluteString];
  owner = [(MobileCalDAVCalendar *)self owner];
  absoluteString2 = [owner absoluteString];

  if (absoluteString != absoluteString2 && ([absoluteString isEqualToString:absoluteString2] & 1) == 0 && -[MobileCalDAVCalendar getCalCalendar](self, "getCalCalendar"))
  {
    CalCalendarSetSharedOwnerAddress();
    CalCalendarSetOwnerIdentityAddress();
    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (NSSet)preferredCalendarUserAddresses
{
  principal = [(MobileCalDAVCalendar *)self principal];
  v4 = [principal preferredCalendarUserAddressesForCalendar:self];

  return v4;
}

- (void)setPreferredCalendarUserAddresses:(id)addresses
{
  v23 = *MEMORY[0x277D85DE8];
  addressesCopy = addresses;
  principal = [(MobileCalDAVCalendar *)self principal];
  [principal setPreferredCalendarUserAddresses:addressesCopy forCalendar:self];

  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    array = [MEMORY[0x277CBEB18] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = addressesCopy;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v19;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          address = [v12 address];
          absoluteString = [address absoluteString];

          if (absoluteString)
          {
            address2 = [v12 address];
            absoluteString2 = [address2 absoluteString];
            [array addObject:absoluteString2];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v9);
    }

    CalCalendarSetSharedOwnerAddresses();
  }

  v17 = *MEMORY[0x277D85DE8];
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
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {
    LODWORD(getCalCalendar) = CalCalendarGetDisplayOrder();
  }

  return getCalCalendar & ~(getCalCalendar >> 31);
}

- (void)setOrder:(int)order
{
  if ([(MobileCalDAVCalendar *)self order]!= order && [(MobileCalDAVCalendar *)self getCalCalendar])
  {
    CalCalendarSetDisplayOrder();

    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (int)sharingStatus
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {
    SharingStatus = CalCalendarGetSharingStatus();
    if (SharingStatus == 1)
    {
      LODWORD(getCalCalendar) = 1;
    }

    else
    {
      LODWORD(getCalCalendar) = 2 * (SharingStatus == 2);
    }
  }

  return getCalCalendar;
}

- (void)setSharingStatus:(int)status
{
  if ([(MobileCalDAVCalendar *)self sharingStatus]!= status && [(MobileCalDAVCalendar *)self getCalCalendar])
  {
    if (status == 2)
    {
      CalCalendarSetSharingStatus();
      WeakRetained = objc_loadWeakRetained(&self->_principal);
      account = [WeakRetained account];
      serverVersion = [account serverVersion];
      [serverVersion supportsSharingNoScheduling];
      CalCalendarSetSchedulingProhibited();
    }

    else if (status <= 1)
    {
      CalCalendarSetSharingStatus();
    }

    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }

  if (status == 2)
  {
    [(MobileCalDAVCalendar *)self getCalCalendar];
    IsSchedulingProhibited = CalCalendarIsSchedulingProhibited();
    v9 = objc_loadWeakRetained(&self->_principal);
    account2 = [v9 account];
    serverVersion2 = [account2 serverVersion];
    supportsSharingNoScheduling = [serverVersion2 supportsSharingNoScheduling];

    if (IsSchedulingProhibited != supportsSharingNoScheduling)
    {
      CalCalendarSetSchedulingProhibited();

      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }
  }
}

- (void)setSharees:(id)sharees
{
  v63 = *MEMORY[0x277D85DE8];
  v43 = [sharees mutableCopy];
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {
    v45 = getCalCalendar;
    v5 = CalCalendarCopySharees();
    selfCopy = self;
    v42 = v5;
    if ([v5 count])
    {
      v7 = 0;
      type = *(MEMORY[0x277D03988] + 6);
      *&v6 = 138412546;
      v41 = v6;
      do
      {
        v8 = [v5 objectAtIndexedSubscript:{v7, v41}];

        obj = v8;
        v9 = CalShareeCopyAddress();
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v10 = v43;
        v11 = [v10 countByEnumeratingWithState:&v53 objects:v62 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v54;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v54 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v53 + 1) + 8 * i);
              acceptedURL = [v15 acceptedURL];
              if (acceptedURL)
              {
                acceptedURL2 = [v15 acceptedURL];
              }

              else
              {
                href = [v15 href];
                acceptedURL2 = [href payloadAsFullURL];
              }

              if ([v9 da_isEqualToDAVURL:acceptedURL2])
              {
                self = selfCopy;
                v5 = v42;
                if ([v15 updateCalSharee:obj])
                {
                  [(MobileCalDAVCalendar *)selfCopy setIsDirty:1];
                  v21 = DALoggingwithCategory();
                  if (os_log_type_enabled(v21, type))
                  {
                    title = [(MobileCalDAVCalendar *)selfCopy title];
                    *buf = v41;
                    v59 = v9;
                    v60 = 2112;
                    v61 = title;
                    _os_log_impl(&dword_2484B2000, v21, type, "Updating sharee %@ to calendar %@", buf, 0x16u);
                  }
                }

                [v10 removeObject:v15];

                goto LABEL_23;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v53 objects:v62 count:16];
            self = selfCopy;
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v19 = DALoggingwithCategory();
        if (os_log_type_enabled(v19, type))
        {
          title2 = [(MobileCalDAVCalendar *)self title];
          *buf = v41;
          v59 = v9;
          v60 = 2112;
          v61 = title2;
          _os_log_impl(&dword_2484B2000, v19, type, "Removing sharee %@ from calendar %@ ", buf, 0x16u);
        }

        CalRemoveSharee();
        [(MobileCalDAVCalendar *)self setIsDirty:1];
        v5 = v42;
LABEL_23:

        ++v7;
      }

      while (v7 < [v5 count]);
    }

    principal = [(MobileCalDAVCalendar *)self principal];
    account = [principal account];
    dbHelper = [account dbHelper];
    accountID = [(MobileCalDAVCalendar *)self accountID];
    v27 = [dbHelper calDatabaseForAccountID:accountID];

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obja = v43;
    v28 = [obja countByEnumeratingWithState:&v49 objects:v57 count:16];
    v29 = v45;
    if (v28)
    {
      v30 = v28;
      v31 = *v50;
      v32 = *(MEMORY[0x277D03988] + 6);
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v50 != v31)
          {
            objc_enumerationMutation(obja);
          }

          v34 = *(*(&v49 + 1) + 8 * j);
          v35 = DALoggingwithCategory();
          if (os_log_type_enabled(v35, v32))
          {
            commonName = [v34 commonName];
            payloadAsString = [commonName payloadAsString];
            title3 = [(MobileCalDAVCalendar *)self title];
            *buf = 138412546;
            v59 = payloadAsString;
            v60 = 2112;
            v61 = title3;
            _os_log_impl(&dword_2484B2000, v35, v32, "Adding sharee %@ to calendar %@", buf, 0x16u);

            self = selfCopy;
            v29 = v45;
          }

          v39 = [v34 createCalShareeInDatabase:v27 andCalendar:v29];
          [(MobileCalDAVCalendar *)self setIsDirty:1];
          if (v39)
          {
            CFRelease(v39);
          }
        }

        v30 = [obja countByEnumeratingWithState:&v49 objects:v57 count:16];
      }

      while (v30);
    }
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (NSSet)sharees
{
  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    v2 = CalCalendarCopySharees();
    if ([v2 count])
    {
      v3 = objc_opt_new();
      if ([v2 count])
      {
        v4 = 0;
        do
        {
          v5 = [v2 objectAtIndexedSubscript:v4];

          v6 = [objc_alloc(MEMORY[0x277CF6FE0]) initWithCalSharee:v5];
          if (v6)
          {
            [v3 addObject:v6];
          }

          ++v4;
        }

        while (v4 < [v2 count]);
      }
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isEditable
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {
    LOBYTE(getCalCalendar) = CalCalendarIsAlwaysReadOnly() ^ 1;
  }

  return getCalCalendar;
}

- (void)setIsEditable:(BOOL)editable
{
  editableCopy = editable;
  if ([(MobileCalDAVCalendar *)self isEditable]!= editable)
  {
    getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
    if (getCalCalendar)
    {
      v6 = getCalCalendar;
      [(MobileCalDAVCalendar *)self setIsDirty:1];

      MEMORY[0x282147700](v6, !editableCopy);
    }
  }
}

- (BOOL)isRenameable
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {
    LOBYTE(getCalCalendar) = CalCalendarIsImmutable() ^ 1;
  }

  return getCalCalendar;
}

- (void)setIsRenameable:(BOOL)renameable
{
  renameableCopy = renameable;
  if ([(MobileCalDAVCalendar *)self isRenameable]!= renameable)
  {
    getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
    if (getCalCalendar)
    {
      v6 = getCalCalendar;
      [(MobileCalDAVCalendar *)self setIsDirty:1];

      MEMORY[0x282147778](v6, !renameableCopy);
    }
  }
}

- (NSString)ctag
{
  principal = [(MobileCalDAVCalendar *)self principal];
  refreshContext = [principal refreshContext];
  isForced = [refreshContext isForced];

  if (isForced)
  {
    getCalCalendar = 0;
  }

  else
  {
    getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
    if (getCalCalendar)
    {
      [(MobileCalDAVCalendar *)self getCalCalendar];
      getCalCalendar = CalCalendarCopyExternalModificationTag();
    }
  }

  return getCalCalendar;
}

- (void)setCtag:(id)ctag
{
  ctagCopy = ctag;
  ctag = [(MobileCalDAVCalendar *)self ctag];
  if (ctag == ctagCopy)
  {
  }

  else
  {
    ctag2 = [(MobileCalDAVCalendar *)self ctag];
    v6 = [ctagCopy isEqualToString:ctag2];

    if ((v6 & 1) == 0 && [(MobileCalDAVCalendar *)self getCalCalendar])
    {
      CalCalendarSetExternalModificationTag();
      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }
  }
}

- (NSString)syncToken
{
  principal = [(MobileCalDAVCalendar *)self principal];
  refreshContext = [principal refreshContext];
  isForced = [refreshContext isForced];

  if (isForced)
  {
    getCalCalendar = 0;
  }

  else
  {
    getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
    if (getCalCalendar)
    {
      [(MobileCalDAVCalendar *)self getCalCalendar];
      getCalCalendar = CalCalendarCopySyncToken();
    }
  }

  return getCalCalendar;
}

- (void)setSyncToken:(id)token
{
  tokenCopy = token;
  syncToken = [(MobileCalDAVCalendar *)self syncToken];
  if (syncToken == tokenCopy)
  {
    goto LABEL_7;
  }

  syncToken2 = [(MobileCalDAVCalendar *)self syncToken];
  v6 = [tokenCopy isEqualToString:syncToken2];

  if ((v6 & 1) == 0)
  {
    getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
    v8 = tokenCopy;
    if (getCalCalendar)
    {
      CalCalendarSetSyncToken();
      [(MobileCalDAVCalendar *)self setIsDirty:1];
      v8 = tokenCopy;
    }

    if ([v8 length])
    {
      syncToken = [(MobileCalDAVCalendar *)self principal];
      [syncToken setSupportsSyncToken:1];
LABEL_7:
    }
  }
}

- (CalDiagCalendarCollectionSync)calendarCollectionSyncDiagnostics
{
  if (!self->_calendarCollectionSyncDiagnostics && RecordCalendarDiagnostics())
  {
    DAWeakLinkClass();
    v3 = objc_opt_new();
    calendarCollectionSyncDiagnostics = self->_calendarCollectionSyncDiagnostics;
    self->_calendarCollectionSyncDiagnostics = v3;
  }

  v5 = self->_calendarCollectionSyncDiagnostics;

  return v5;
}

- (NSSet)allItemURLs
{
  v27 = *MEMORY[0x277D85DE8];
  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    v3 = *(MEMORY[0x277CBF158] + 16);
    *&v26.version = *MEMORY[0x277CBF158];
    *&v26.release = v3;
    v26.equal = *(MEMORY[0x277CBF158] + 32);
    v26.hash = CalDAVURLHashCallback;
    v4 = CFSetCreateMutable(0, 0, &v26);
    principal = [(MobileCalDAVCalendar *)self principal];
    account = [principal account];
    dbHelper = [account dbHelper];
    accountID = [(MobileCalDAVCalendar *)self accountID];
    [dbHelper calDatabaseForAccountID:accountID];

    v9 = CalDatabaseCopyCalendarItemsWithCalendar();
    if ([v9 count])
    {
      v10 = 0;
      do
      {
        v11 = [v9 objectAtIndexedSubscript:v10];
        v12 = CalCalendarItemCopyExternalID();

        if (v12)
        {
          calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
          v14 = [v12 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:calendarURL];

          if (v14)
          {
            [(__CFSet *)v4 addObject:v14];
          }
        }

        ++v10;
      }

      while (v10 < [v9 count]);
    }

    v15 = CalDatabaseCopyCalendarItemsWithCalendar();

    if ([v15 count])
    {
      v16 = 0;
      do
      {
        v17 = [v15 objectAtIndexedSubscript:v16];
        v18 = CalCalendarItemCopyExternalID();

        if (v18)
        {
          calendarURL2 = [(MobileCalDAVCalendar *)self calendarURL];
          v20 = [v18 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:calendarURL2];

          if (v20)
          {
            [(__CFSet *)v4 addObject:v20];
          }
        }

        ++v16;
      }

      while (v16 < [v15 count]);
    }
  }

  else
  {
    v21 = DALoggingwithCategory();
    v22 = *(MEMORY[0x277D03988] + 5);
    if (os_log_type_enabled(v21, v22))
    {
      title = [(MobileCalDAVCalendar *)self title];
      LODWORD(v26.version) = 138412290;
      *(&v26.version + 4) = title;
      _os_log_impl(&dword_2484B2000, v21, v22, "Couldn't get a calendar for %@", &v26, 0xCu);
    }

    v4 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)etagsForItemURLs:(id)ls
{
  v36 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    v5 = *(MEMORY[0x277CBF138] + 16);
    *&keyCallBacks.version = *MEMORY[0x277CBF138];
    *&keyCallBacks.release = v5;
    keyCallBacks.equal = *(MEMORY[0x277CBF138] + 32);
    keyCallBacks.hash = CalDAVURLHashCallback;
    v29 = CFDictionaryCreateMutable(0, 0, &keyCallBacks, MEMORY[0x277CBF150]);
    principal = [(MobileCalDAVCalendar *)self principal];
    account = [principal account];
    dbHelper = [account dbHelper];
    accountID = [(MobileCalDAVCalendar *)self accountID];
    [dbHelper calDatabaseForAccountID:accountID];

    accountID2 = [(MobileCalDAVCalendar *)self accountID];
    cf = CalDatabaseCopyStoreWithExternalID();

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = lsCopy;
    v11 = lsCopy;
    v12 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (!v12)
    {
      goto LABEL_15;
    }

    v13 = v12;
    v14 = *v31;
    while (1)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v31 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v30 + 1) + 8 * i);
        calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
        v18 = [v16 da_leastInfoStringRepresentationRelativeToParentURL:calendarURL];

        v19 = [(NSMutableDictionary *)self->_URLToEtagMap objectForKeyedSubscript:v18];
        if (v19)
        {
          v20 = v19;
LABEL_12:
          [(__CFDictionary *)v29 setObject:v20 forKeyedSubscript:v16];

          goto LABEL_13;
        }

        v21 = CalDatabaseCopyCalendarItemWithExternalIDInCalendarOrStore();
        if (v21 || (v21 = CalDatabaseCopyCalendarItemWithExternalIDInCalendarOrStore()) != 0)
        {
          v22 = v21;
          v20 = CalCalendarItemCopyExternalModificationTag();
          CFRelease(v22);
          if (v20)
          {
            goto LABEL_12;
          }
        }

LABEL_13:
      }

      v13 = [v11 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (!v13)
      {
LABEL_15:

        if (cf)
        {
          CFRelease(cf);
        }

        lsCopy = v28;
        goto LABEL_21;
      }
    }
  }

  v23 = DALoggingwithCategory();
  v24 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v23, v24))
  {
    LODWORD(keyCallBacks.version) = 138412290;
    *(&keyCallBacks.version + 4) = self;
    _os_log_impl(&dword_2484B2000, v23, v24, "Could not find a calendar that matched %@", &keyCallBacks, 0xCu);
  }

  v29 = 0;
LABEL_21:

  v25 = *MEMORY[0x277D85DE8];

  return v29;
}

- (void)_copyCalItemWithUniqueIdentifier:(id)identifier inCalendar:(void *)calendar orStore:(void *)store
{
  identifierCopy = identifier;
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  accountID = [(MobileCalDAVCalendar *)self accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  if (![(MobileCalDAVCalendar *)self recordIDForUniqueIdentifier:identifierCopy]|| (v11 = CalDatabaseCopyEntityWithRecordID()) == 0)
  {
    v11 = CalDatabaseCopyCalendarItemWithUniqueIdentifierInCalendarOrStore();
    if (v11)
    {
      v12 = CalEntityCopyRecordID();
      if (v12)
      {
        v13 = v12;
        [(MobileCalDAVCalendar *)self setUniqueIdentifier:identifierCopy forRecordID:v12];
        CFRelease(v13);
      }
    }
  }

  return v11;
}

- (void)_copyCalItemWithExternalID:(id)d
{
  dCopy = d;
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  accountID = [(MobileCalDAVCalendar *)self accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  v9 = [(NSMutableDictionary *)self->_URLToRecordIDMap objectForKeyedSubscript:dCopy];

  if (!v9 || (v10 = CalDatabaseCopyEntityWithRecordID()) == 0)
  {
    if (![(MobileCalDAVCalendar *)self getCalCalendar])
    {
      v11 = 0;
      goto LABEL_8;
    }

    v10 = CalDatabaseCopyCalendarItemWithExternalIDInCalendarOrStore();
    if (!v10)
    {
      v10 = CalDatabaseCopyCalendarItemWithExternalIDInCalendarOrStore();
    }
  }

  v11 = v10;
LABEL_8:

  return v11;
}

- (void)setUniqueIdentifier:(id)identifier forRecordID:(CalRecordID *)d
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v9 = identifierCopy;
    uniqueIdentifierToRecordIDMap = [(MobileCalDAVCalendar *)self uniqueIdentifierToRecordIDMap];
    v8 = uniqueIdentifierToRecordIDMap;
    if (d)
    {
      [uniqueIdentifierToRecordIDMap setObject:d forKeyedSubscript:v9];
    }

    else
    {
      [uniqueIdentifierToRecordIDMap removeObjectForKey:v9];
    }

    identifierCopy = v9;
  }
}

- (CalRecordID)recordIDForUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  uniqueIdentifierToRecordIDMap = [(MobileCalDAVCalendar *)self uniqueIdentifierToRecordIDMap];
  v6 = [uniqueIdentifierToRecordIDMap objectForKeyedSubscript:identifierCopy];

  return v6;
}

- (void)setExternalIdentifier:(id)identifier forRecordID:(CalRecordID *)d
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v9 = identifierCopy;
    uRLToRecordIDMap = [(MobileCalDAVCalendar *)self URLToRecordIDMap];
    v8 = uRLToRecordIDMap;
    if (d)
    {
      [uRLToRecordIDMap setObject:d forKeyedSubscript:v9];
    }

    else
    {
      [uRLToRecordIDMap removeObjectForKey:v9];
    }

    identifierCopy = v9;
  }
}

- (CalRecordID)recordIDForExternalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  uRLToRecordIDMap = [(MobileCalDAVCalendar *)self URLToRecordIDMap];
  v6 = [uRLToRecordIDMap objectForKeyedSubscript:identifierCopy];

  return v6;
}

- (BOOL)setURL:(id)l forResourceWithUUID:(id)d
{
  v37 = *MEMORY[0x277D85DE8];
  lCopy = l;
  dCopy = d;
  if (lCopy)
  {
    getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
    if (getCalCalendar)
    {
      v9 = [(MobileCalDAVCalendar *)self _copyCalItemWithUniqueIdentifier:dCopy inCalendar:getCalCalendar orStore:0];
      v10 = v9 != 0;
      if (v9)
      {
        v11 = v9;
        calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
        v13 = [lCopy da_leastInfoStringRepresentationRelativeToParentURL:calendarURL];

        CalCalendarItemSetExternalID();
        [(MobileCalDAVCalendar *)self setIsDirty:1];
        v14 = CalEntityCopyRecordID();
        if (v14)
        {
          v15 = v14;
          [(NSMutableDictionary *)self->_URLToRecordIDMap setObject:v14 forKeyedSubscript:v13];
        }

        CFRelease(v11);
      }

      else
      {
        v18 = DALoggingwithCategory();
        v19 = *(MEMORY[0x277D03988] + 4);
        if (os_log_type_enabled(v18, v19))
        {
          *buf = 138412290;
          selfCopy = dCopy;
          _os_log_impl(&dword_2484B2000, v18, v19, "Couldn't set url for the event %@ because it doesn't exist in our database", buf, 0xCu);
        }
      }

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      syncActions = [(MobileCalDAVCalendar *)self syncActions];
      v20 = [syncActions countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v31;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v31 != v22)
            {
              objc_enumerationMutation(syncActions);
            }

            v24 = *(*(&v30 + 1) + 8 * i);
            if ([v24 action] == 1)
            {
              context = [v24 context];
              uniqueIdentifier = [context uniqueIdentifier];
              v27 = [uniqueIdentifier isEqualToString:dCopy];

              if (v27)
              {
                [context setServerID:lCopy];
              }
            }
          }

          v21 = [syncActions countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v21);
      }
    }

    else
    {
      syncActions = DALoggingwithCategory();
      v17 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(syncActions, v17))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_2484B2000, syncActions, v17, "Could not find a calendar that matched %@", buf, 0xCu);
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)setEtag:(id)etag forItemAtURL:(id)l
{
  v18 = *MEMORY[0x277D85DE8];
  etagCopy = etag;
  lCopy = l;
  calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
  v9 = [lCopy da_leastInfoStringRepresentationRelativeToParentURL:calendarURL];

  v10 = [(MobileCalDAVCalendar *)self _copyCalItemWithExternalID:v9];
  if (v10)
  {
    CalCalendarItemSetExternalModificationTag();
    if (lCopy)
    {
      URLToEtagMap = self->_URLToEtagMap;
      if (etagCopy)
      {
        [(NSMutableDictionary *)URLToEtagMap setObject:etagCopy forKeyedSubscript:v9];
      }

      else
      {
        [(NSMutableDictionary *)URLToEtagMap removeObjectForKey:v9];
      }
    }

    [(MobileCalDAVCalendar *)self setIsDirty:1];
    CFRelease(v10);
  }

  else
  {
    v12 = DALoggingwithCategory();
    v13 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v12, v13))
    {
      v16 = 138412290;
      v17 = lCopy;
      _os_log_impl(&dword_2484B2000, v12, v13, "Couldn't set etag for the item at %@ because it doesn't exist in our database", &v16, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v10 != 0;
}

- (BOOL)setScheduleTag:(id)tag forItemAtURL:(id)l
{
  v17 = *MEMORY[0x277D85DE8];
  tagCopy = tag;
  lCopy = l;
  if (!tagCopy)
  {
    tagCopy = &stru_285AB0D40;
  }

  calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
  v9 = [lCopy da_leastInfoStringRepresentationRelativeToParentURL:calendarURL];
  v10 = [(MobileCalDAVCalendar *)self _copyCalItemWithExternalID:v9];

  if (v10)
  {
    CalCalendarItemSetExternalScheduleID();
    [(MobileCalDAVCalendar *)self setIsDirty:1];
    CFRelease(v10);
  }

  else
  {
    v11 = DALoggingwithCategory();
    v12 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v11, v12))
    {
      v15 = 138412290;
      v16 = lCopy;
      _os_log_impl(&dword_2484B2000, v11, v12, "Couldn't set schedule tag for the item at %@ because it doesn't exist in our database", &v15, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10 != 0;
}

- (id)removeInvitationsForItemWithUniqueIdentifier:(id)identifier
{
  v37 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    goto LABEL_18;
  }

  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  accountID = [(MobileCalDAVCalendar *)self accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  accountID2 = [(MobileCalDAVCalendar *)self accountID];
  v10 = CalDatabaseCopyStoreWithExternalID();

  v11 = [(MobileCalDAVCalendar *)self _copyCalItemWithUniqueIdentifier:identifierCopy inCalendar:0 orStore:v10];
  if (v10)
  {
    CFRelease(v10);
  }

  if (v11)
  {
    v29 = identifierCopy;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = CalEventCopyEventActions();
    v12 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v33;
      do
      {
        v16 = 0;
        v30 = v13;
        do
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v32 + 1) + 8 * v16);
          v18 = CalEventActionCopyExternalID();
          v19 = CalDatabaseCopyAllEventActionsWithExternalIDInStore();
          CalEventRemoveEventAction();
          [(MobileCalDAVCalendar *)self setIsDirty:1];
          if (v18 && [v19 count] <= 1)
          {
            v20 = v15;
            v21 = v11;
            if (!v14)
            {
              v14 = objc_opt_new();
            }

            principal2 = [(MobileCalDAVCalendar *)self principal];
            inboxURL = [principal2 inboxURL];
            [v18 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:inboxURL];
            v25 = v24 = v14;
            [v24 addObject:v25];

            v14 = v24;
            v11 = v21;
            v15 = v20;
            v13 = v30;
          }

          ++v16;
        }

        while (v13 != v16);
        v13 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v13);
    }

    else
    {
      v14 = 0;
    }

    CFRelease(v11);
    v26 = v14;

    identifierCopy = v29;
  }

  else
  {
LABEL_18:
    v26 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (BOOL)updateResourcesFromServer:(id)server
{
  v120 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {
    v88 = RecordCalendarDiagnostics();
    if (v88)
    {
      DAWeakLinkClass();
    }

    v85 = objc_opt_new();
    v86 = objc_opt_new();
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v83 = serverCopy;
    v8 = serverCopy;
    v84 = getCalCalendar;
    v93 = [v8 countByEnumeratingWithState:&v108 objects:v119 count:16];
    if (v93)
    {
      v92 = *v109;
      v9 = *(MEMORY[0x277D03988] + 6);
      obj = v8;
      v90 = v9;
      do
      {
        for (i = 0; i != v93; ++i)
        {
          if (*v109 != v92)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v108 + 1) + 8 * i);
          serverID = [v11 serverID];
          calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
          v14 = [serverID da_leastInfoStringRepresentationRelativeToParentURL:calendarURL];

          principal = [(MobileCalDAVCalendar *)self principal];
          account = [principal account];
          movedItemURLStrings = [account movedItemURLStrings];
          v18 = [movedItemURLStrings containsObject:v14];

          if (v18)
          {
            v19 = DALoggingwithCategory();
            if (os_log_type_enabled(v19, v9))
            {
              serverID2 = [v11 serverID];
              *buf = 138412290;
              selfCopy = serverID2;
              v21 = v19;
              v22 = v9;
              v23 = "Dropping server change for %@ on the floor because we have a move change for it";
              goto LABEL_14;
            }

            goto LABEL_15;
          }

          principal2 = [(MobileCalDAVCalendar *)self principal];
          if ([principal2 isMergeSync])
          {
            v25 = [(MobileCalDAVCalendar *)self _isDeleted:v14];

            if (v25)
            {
              v19 = DALoggingwithCategory();
              if (os_log_type_enabled(v19, v9))
              {
                serverID2 = [v11 serverID];
                *buf = 138412290;
                selfCopy = serverID2;
                v21 = v19;
                v22 = v9;
                v23 = "Dropping server change for %@ on the floor because we have a delete change for it";
LABEL_14:
                _os_log_impl(&dword_2484B2000, v21, v22, v23, buf, 0xCu);
              }

LABEL_15:

              goto LABEL_47;
            }
          }

          else
          {
          }

          v91 = v14;
          v107 = 0;
          principal3 = [(MobileCalDAVCalendar *)self principal];
          account2 = [principal3 account];
          wasMigrated = [account2 wasMigrated];
          principal4 = [(MobileCalDAVCalendar *)self principal];
          account3 = [principal4 account];
          v106 = 0;
          v31 = [v11 saveToContainer:getCalCalendar shouldMergeProperties:wasMigrated outMergeDidChooseLocalProperties:&v107 account:account3 mobileCalendar:self outRecurrenceSets:&v106];
          v32 = v106;

          if ([v32 count])
          {
            accountID = [(MobileCalDAVCalendar *)self accountID];
            v34 = [v86 objectForKeyedSubscript:accountID];

            if (!v34)
            {
              v34 = objc_opt_new();
              accountID2 = [(MobileCalDAVCalendar *)self accountID];
              [v86 setObject:v34 forKeyedSubscript:accountID2];
            }

            [v34 unionSet:v32];
          }

          v9 = v90;
          v14 = v91;
          if ((v88 & v31) == 1)
          {
            document = [v11 document];
            calendar = [document calendar];
            v102 = 0u;
            v103 = 0u;
            v104 = 0u;
            v105 = 0u;
            componentKeys = [calendar componentKeys];
            v38 = [componentKeys countByEnumeratingWithState:&v102 objects:v118 count:16];
            if (v38)
            {
              v39 = v38;
              v40 = *v103;
              while (2)
              {
                for (j = 0; j != v39; ++j)
                {
                  if (*v103 != v40)
                  {
                    objc_enumerationMutation(componentKeys);
                  }

                  v42 = [calendar componentForKey:*(*(&v102 + 1) + 8 * j)];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
                  {
                    summary = [v42 summary];

                    goto LABEL_38;
                  }
                }

                v39 = [componentKeys countByEnumeratingWithState:&v102 objects:v118 count:16];
                summary = 0;
                if (v39)
                {
                  continue;
                }

                break;
              }
            }

            else
            {
              summary = 0;
            }

LABEL_38:

            v44 = objc_opt_new();
            uniqueIdentifier = [v11 uniqueIdentifier];
            [v44 setUid:uniqueIdentifier];

            [v44 setTitle:summary];
            scheduleTag = [v11 scheduleTag];
            [v44 setScheduleTag:scheduleTag];

            syncKey = [v11 syncKey];
            [v44 setSyncKey:syncKey];

            dataPayload = [v11 dataPayload];
            [v44 setDownloadedData:dataPayload];

            [v85 addObject:v44];
            getCalCalendar = v84;
            v9 = v90;
            v14 = v91;
          }

          v49 = v107;
          v50 = DALoggingwithCategory();
          v51 = os_log_type_enabled(v50, v9);
          if (v49 == 1)
          {
            if (v51)
            {
              serverID3 = [v11 serverID];
              *buf = 138412290;
              selfCopy = serverID3;
              _os_log_impl(&dword_2484B2000, v50, v9, "The event at %@ was modified locally. Forcing it to the server.", buf, 0xCu);
            }
          }

          else
          {
            if (v51)
            {
              serverID4 = [v11 serverID];
              syncKey2 = [v11 syncKey];
              *buf = 138412546;
              selfCopy = serverID4;
              v116 = 2112;
              v117 = syncKey2;
              _os_log_impl(&dword_2484B2000, v50, v9, "Saved resource from %@ to the database. Etag is %@", buf, 0x16u);
            }

            syncKey3 = [v11 syncKey];
            serverID5 = [v11 serverID];
            [(MobileCalDAVCalendar *)self setEtag:syncKey3 forItemAtURL:serverID5];

            [(MobileCalDAVCalendar *)self setIsDirty:1];
          }

LABEL_47:
        }

        v8 = obj;
        v93 = [obj countByEnumeratingWithState:&v108 objects:v119 count:16];
      }

      while (v93);
    }

    if ([v8 count])
    {
      -[MobileCalDAVCalendar setNumDownloadedElements:](self, "setNumDownloadedElements:", -[MobileCalDAVCalendar numDownloadedElements](self, "numDownloadedElements") + [v8 count]);
      principal5 = [(MobileCalDAVCalendar *)self principal];
      account4 = [principal5 account];
      dbHelper = [account4 dbHelper];
      accountID3 = [(MobileCalDAVCalendar *)self accountID];
      v61 = [dbHelper calSaveDatabaseAndFlushCachesForAccountID:accountID3];

      if ((v88 & v61) == 1)
      {
        calendarCollectionSyncDiagnostics = [(MobileCalDAVCalendar *)self calendarCollectionSyncDiagnostics];
        v98 = 0u;
        v99 = 0u;
        v100 = 0u;
        v101 = 0u;
        v63 = v85;
        v64 = [v63 countByEnumeratingWithState:&v98 objects:v113 count:16];
        if (v64)
        {
          v65 = v64;
          v66 = *v99;
          do
          {
            for (k = 0; k != v65; ++k)
            {
              if (*v99 != v66)
              {
                objc_enumerationMutation(v63);
              }

              [calendarCollectionSyncDiagnostics addCalendarItemSync:*(*(&v98 + 1) + 8 * k)];
            }

            v65 = [v63 countByEnumeratingWithState:&v98 objects:v113 count:16];
          }

          while (v65);
        }
      }

      uniqueIdentifierToRecordIDMap = [(MobileCalDAVCalendar *)self uniqueIdentifierToRecordIDMap];
      [uniqueIdentifierToRecordIDMap removeAllObjects];

      uRLToRecordIDMap = [(MobileCalDAVCalendar *)self URLToRecordIDMap];
      [uRLToRecordIDMap removeAllObjects];
    }

    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v70 = v86;
    v71 = [v70 countByEnumeratingWithState:&v94 objects:v112 count:16];
    if (v71)
    {
      v72 = v71;
      v73 = *v95;
      do
      {
        for (m = 0; m != v72; ++m)
        {
          if (*v95 != v73)
          {
            objc_enumerationMutation(v70);
          }

          v75 = *(*(&v94 + 1) + 8 * m);
          v76 = [v70 objectForKeyedSubscript:v75];
          principal6 = [(MobileCalDAVCalendar *)self principal];
          account5 = [principal6 account];
          dbHelper2 = [account5 dbHelper];
          v80 = [dbHelper2 calDatabaseForAccountID:v75];

          [(MobileCalDAVCalendar *)self correctLocationPredictionStateForRecurrenceSets:v76 calDB:v80];
        }

        v72 = [v70 countByEnumeratingWithState:&v94 objects:v112 count:16];
      }

      while (v72);
    }

    serverCopy = v83;
    getCalCalendar = v84;
    v6 = v85;
  }

  else
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v6, v7))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_2484B2000, v6, v7, "Could not find a calendar that matched %@", buf, 0xCu);
    }
  }

  v81 = *MEMORY[0x277D85DE8];
  return getCalCalendar != 0;
}

- (void)correctLocationPredictionStateForRecurrenceSets:(id)sets calDB:(CalDatabase *)b
{
  v39 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  allObjects = [sets allObjects];
  v5 = [allObjects countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v33;
    do
    {
      v8 = 0;
      do
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(allObjects);
        }

        v9 = *(*(&v32 + 1) + 8 * v8);
        v10 = CalDatabaseCopyEventsWithRecurrenceSet();
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v29;
LABEL_8:
          v15 = 0;
          while (1)
          {
            if (*v29 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v28 + 1) + 8 * v15);
            if ((CalEventGetLocationPredictionState() & 0xFFFFFFFE) == 2)
            {
              break;
            }

            if (v13 == ++v15)
            {
              v13 = [v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
              if (v13)
              {
                goto LABEL_8;
              }

              break;
            }
          }
        }

        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v17 = v11;
        v18 = [v17 countByEnumeratingWithState:&v24 objects:v36 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v25;
          do
          {
            v21 = 0;
            do
            {
              if (*v25 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v24 + 1) + 8 * v21);
              CalEventSetLocationPredictionState();
              ++v21;
            }

            while (v19 != v21);
            v19 = [v17 countByEnumeratingWithState:&v24 objects:v36 count:16];
          }

          while (v19);
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [allObjects countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v6);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isDeleted:(id)deleted
{
  deletedCopy = deleted;
  deletedExternalIDs = self->_deletedExternalIDs;
  if (!deletedExternalIDs)
  {
    copyDeletedItems = [(MobileCalDAVCalendar *)self copyDeletedItems];
    v7 = MEMORY[0x277CBEB98];
    allKeys = [copyDeletedItems allKeys];
    v9 = [v7 setWithArray:allKeys];
    v10 = self->_deletedExternalIDs;
    self->_deletedExternalIDs = v9;

    deletedExternalIDs = self->_deletedExternalIDs;
  }

  v11 = [(NSSet *)deletedExternalIDs containsObject:deletedCopy];

  return v11;
}

- (BOOL)_removeCalendarItemWithURL:(id)l
{
  v25 = *MEMORY[0x277D85DE8];
  lCopy = l;
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  accountID = [(MobileCalDAVCalendar *)self accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  v10 = DALoggingwithCategory();
  v11 = v10;
  if (getCalCalendar)
  {
    v12 = MEMORY[0x277D03988];
    v13 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v10, v13))
    {
      v23 = 138412290;
      selfCopy = lCopy;
      _os_log_impl(&dword_2484B2000, v11, v13, "Removing event with url %@", &v23, 0xCu);
    }

    calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
    [(MobileCalDAVCalendar *)lCopy da_leastInfoStringRepresentationRelativeToParentURL:calendarURL];
    v15 = CalDatabaseCopyCalendarItemWithExternalIDInCalendarOrStore();

    if (v15)
    {
      Type = CalEntityGetType();
      if (Type == 3)
      {
        CalRemoveTask();
      }

      else
      {
        if (Type != 2)
        {
          v20 = 0;
          goto LABEL_18;
        }

        CalRemoveEventAndDetachedEvents();
      }

      v20 = 1;
      [(MobileCalDAVCalendar *)self setIsDirty:1];
LABEL_18:
      CFRelease(v15);
      [(MobileCalDAVCalendar *)self setNumDownloadedElements:[(MobileCalDAVCalendar *)self numDownloadedElements]+ 1];
      goto LABEL_19;
    }

    v18 = DALoggingwithCategory();
    v19 = *(v12 + 4);
    if (os_log_type_enabled(v18, *(v12 + 4)))
    {
      v23 = 138412290;
      selfCopy = lCopy;
      _os_log_impl(&dword_2484B2000, v18, v19, "Couldn't get a calendar item to remove with url %@", &v23, 0xCu);
    }
  }

  else
  {
    v17 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v10, v17))
    {
      v23 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_2484B2000, v11, v17, "Could not find a calendar that matched %@", &v23, 0xCu);
    }
  }

  v20 = 0;
LABEL_19:

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)deleteResourcesAtURLs:(id)ls
{
  v21 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [lsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(lsCopy);
        }

        v7 |= [(MobileCalDAVCalendar *)self _removeCalendarItemWithURL:*(*(&v16 + 1) + 8 * i)];
      }

      v6 = [lsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
    if (v7)
    {
      principal = [(MobileCalDAVCalendar *)self principal];
      account = [principal account];
      dbHelper = [account dbHelper];
      accountID = [(MobileCalDAVCalendar *)self accountID];
      [dbHelper calSaveDatabaseAndFlushCachesForAccountID:accountID];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)hasEvents
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {
    v3 = getCalCalendar;
    if (CalCalendarHasEvents())
    {
      LOBYTE(getCalCalendar) = 1;
    }

    else
    {

      LOBYTE(getCalCalendar) = MEMORY[0x282147398](v3);
    }
  }

  return getCalCalendar;
}

- (BOOL)isHidden
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {

    LOBYTE(getCalCalendar) = CalCalendarIsHidden();
  }

  return getCalCalendar;
}

- (NSString)displayColor
{
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {
    getCalCalendar = CalCalendarCopyColorStringForDisplay();
  }

  return getCalCalendar;
}

- (NSString)accountID
{
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  accountID = [account accountID];

  return accountID;
}

- (NSArray)newlyAddedItems
{
  v2 = [(NSMutableArray *)self->_newlyAddedItems copy];

  return v2;
}

- (void)setNewlyAddedItems:(id)items
{
  v4 = [items mutableCopy];
  newlyAddedItems = self->_newlyAddedItems;
  self->_newlyAddedItems = v4;

  MEMORY[0x2821F96F8]();
}

- (void)_updateCalendarInfo
{
  principal = [(MobileCalDAVCalendar *)self principal];
  fullName = [principal fullName];

  principal2 = [(MobileCalDAVCalendar *)self principal];
  preferredCalendarEmailAddress = [principal2 preferredCalendarEmailAddress];

  principal3 = [(MobileCalDAVCalendar *)self principal];
  preferredCalendarPhoneNumber = [principal3 preferredCalendarPhoneNumber];

  principal4 = [(MobileCalDAVCalendar *)self principal];
  preferredCalendarUserAddress = [principal4 preferredCalendarUserAddress];

  shouldCalendarBeHidden = [(MobileCalDAVCalendar *)self shouldCalendarBeHidden];
  isSubscribed = [(MobileCalDAVCalendar *)self isSubscribed];
  isScheduleInbox = [(MobileCalDAVCalendar *)self isScheduleInbox];
  isNotification = [(MobileCalDAVCalendar *)self isNotification];
  if (![fullName length])
  {

    fullName = 0;
  }

  if (![preferredCalendarEmailAddress length])
  {

    preferredCalendarEmailAddress = 0;
  }

  if (![preferredCalendarPhoneNumber length])
  {

    preferredCalendarPhoneNumber = 0;
  }

  [(MobileCalDAVCalendar *)self calCalendar];
  v13 = CalCalendarCopySelfIdentityDisplayName();
  v14 = v13;
  if (fullName == v13 || fullName && ([v13 isEqualToString:fullName] & 1) != 0)
  {
    v15 = 0;
  }

  else
  {
    [(MobileCalDAVCalendar *)self calCalendar];
    CalCalendarSetSelfIdentityDisplayName();
    v15 = 1;
  }

  [(MobileCalDAVCalendar *)self calCalendar];
  v16 = CalCalendarCopySelfIdentityEmail();
  v17 = v16;
  v31 = v14;
  if (v16 != preferredCalendarEmailAddress && (!preferredCalendarEmailAddress || ([v16 isEqualToString:preferredCalendarEmailAddress] & 1) == 0))
  {
    [(MobileCalDAVCalendar *)self calCalendar];
    CalCalendarSetSelfIdentityEmail();
    v15 = 1;
  }

  [(MobileCalDAVCalendar *)self calCalendar];
  v18 = CalCalendarCopySelfIdentityPhoneNumber();
  v19 = v18;
  if (v18 != preferredCalendarPhoneNumber && (!preferredCalendarPhoneNumber || ([v18 isEqualToString:preferredCalendarPhoneNumber] & 1) == 0))
  {
    [(MobileCalDAVCalendar *)self calCalendar];
    CalCalendarSetSelfIdentityPhoneNumber();
    v15 = 1;
  }

  v32 = v19;
  [(MobileCalDAVCalendar *)self calCalendar];
  v20 = CalCalendarCopySelfIdentityAddress();
  v21 = v20;
  if (v20 != preferredCalendarUserAddress && ([v20 da_isEqualToDAVURL:preferredCalendarUserAddress] & 1) == 0)
  {
    [(MobileCalDAVCalendar *)self calCalendar];
    CalCalendarSetSelfIdentityAddress();
    v15 = 1;
  }

  [(MobileCalDAVCalendar *)self calCalendar];
  if (shouldCalendarBeHidden != CalCalendarIsHidden())
  {
    [(MobileCalDAVCalendar *)self calCalendar];
    CalCalendarSetHidden();
    v15 = 1;
  }

  [(MobileCalDAVCalendar *)self calCalendar];
  if (isSubscribed != CalCalendarIsSubscribed())
  {
    [(MobileCalDAVCalendar *)self calCalendar];
    CalCalendarSetSubscribed();
    v15 = 1;
  }

  [(MobileCalDAVCalendar *)self calCalendar];
  if (isScheduleInbox != CalCalendarIsInbox())
  {
    [(MobileCalDAVCalendar *)self calCalendar];
    CalCalendarSetIsInbox();
    v15 = 1;
  }

  [(MobileCalDAVCalendar *)self calCalendar];
  if (isNotification != CalCalendarIsNotificationsCollection())
  {
    [(MobileCalDAVCalendar *)self calCalendar];
    CalCalendarSetIsNotificationsCollection();
    v15 = 1;
  }

  [(MobileCalDAVCalendar *)self calCalendar];
  if (CalCalendarGetSharingStatus() == 2 && ([(MobileCalDAVCalendar *)self owner], v22 = objc_claimAutoreleasedReturnValue(), v22, v22))
  {
    ownerDisplayName = [(MobileCalDAVCalendar *)self ownerDisplayName];

    ownerEmailAddress = [(MobileCalDAVCalendar *)self ownerEmailAddress];

    ownerPhoneNumber = [(MobileCalDAVCalendar *)self ownerPhoneNumber];

    owner = [(MobileCalDAVCalendar *)self owner];

    if (![ownerDisplayName length])
    {

      ownerDisplayName = 0;
    }

    if (![ownerEmailAddress length])
    {

      ownerEmailAddress = 0;
    }

    if ([ownerPhoneNumber length])
    {
      preferredCalendarPhoneNumber = ownerPhoneNumber;
    }

    else
    {

      preferredCalendarPhoneNumber = 0;
    }
  }

  else
  {
    owner = preferredCalendarUserAddress;
    ownerEmailAddress = preferredCalendarEmailAddress;
    ownerDisplayName = fullName;
  }

  [(MobileCalDAVCalendar *)self calCalendar];
  v26 = CalCalendarCopyOwnerIdentityDisplayName();

  if (ownerDisplayName != v26 && (!ownerDisplayName || ([v26 isEqualToString:ownerDisplayName] & 1) == 0))
  {
    [(MobileCalDAVCalendar *)self calCalendar];
    CalCalendarSetOwnerIdentityDisplayName();
    v15 = 1;
  }

  [(MobileCalDAVCalendar *)self calCalendar];
  v27 = CalCalendarCopyOwnerIdentityEmail();

  if (v27 != ownerEmailAddress && (!ownerEmailAddress || ([v27 isEqualToString:ownerEmailAddress] & 1) == 0))
  {
    [(MobileCalDAVCalendar *)self calCalendar];
    CalCalendarSetOwnerIdentityEmail();
    v15 = 1;
  }

  [(MobileCalDAVCalendar *)self calCalendar];
  v28 = CalCalendarCopyOwnerIdentityPhoneNumber();

  if (v28 != preferredCalendarPhoneNumber && (!preferredCalendarPhoneNumber || ([v28 isEqualToString:preferredCalendarPhoneNumber] & 1) == 0))
  {
    [(MobileCalDAVCalendar *)self calCalendar];
    CalCalendarSetOwnerIdentityPhoneNumber();
    v15 = 1;
  }

  [(MobileCalDAVCalendar *)self calCalendar];
  v29 = CalCalendarCopyOwnerIdentityAddress();

  if (v29 != owner && ([v29 da_isEqualToDAVURL:owner] & 1) == 0)
  {
    [(MobileCalDAVCalendar *)self calCalendar];
    CalCalendarSetOwnerIdentityAddress();
    goto LABEL_57;
  }

  if (v15)
  {
LABEL_57:
    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (void)initCalCalendarWithTitle:(id)title
{
  v44 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  if (![(MobileCalDAVCalendar *)self calCalendar])
  {
    principal = [(MobileCalDAVCalendar *)self principal];
    account = [principal account];
    dbHelper = [account dbHelper];
    accountID = [(MobileCalDAVCalendar *)self accountID];
    v9 = [dbHelper calDatabaseForAccountID:accountID];

    if (v9)
    {
      accountID2 = [(MobileCalDAVCalendar *)self accountID];
      v11 = CalDatabaseCopyStoreWithExternalID();

      principal2 = [(MobileCalDAVCalendar *)self principal];
      account2 = [principal2 account];
      wasMigrated = [account2 wasMigrated];
      v15 = v11 != 0;

      if (wasMigrated && v11)
      {
        v16 = CalStoreCopyCalendars();
        if ([v16 count])
        {
          v17 = 0;
          while (1)
          {
            v18 = [v16 objectAtIndexedSubscript:v17];

            v19 = CalCalendarCopyTitle();
            if ([titleCopy isEqualToString:v19])
            {
              break;
            }

            if (++v17 >= [v16 count])
            {
              goto LABEL_16;
            }
          }

          self->_calCalendar = v18;
          if (v18)
          {
            CFRetain(v18);
          }
        }

LABEL_16:
      }

      calCalendar = [(MobileCalDAVCalendar *)self calCalendar];
      if (calCalendar)
      {
        v15 = 0;
      }

      else
      {
        self->_calCalendar = CalDatabaseCreateCalendar();
      }

      [(MobileCalDAVCalendar *)self calCalendar];
      calendarURLString = [(MobileCalDAVCalendar *)self calendarURLString];
      CalCalendarSetExternalID();

      [(MobileCalDAVCalendar *)self calCalendar];
      guid = [(MobileCalDAVCalendar *)self guid];
      CalCalendarSetExternalIdentificationTag();

      [(MobileCalDAVCalendar *)self calCalendar];
      CalCalendarSetTitle();
      [(MobileCalDAVCalendar *)self calCalendar];
      CalCalendarSetLastSyncTitle();
      [(MobileCalDAVCalendar *)self _updateCalendarInfo];
      [(MobileCalDAVCalendar *)self setIsDirty:1];
      v25 = DALoggingwithCategory();
      v26 = v25;
      if (v15)
      {
        v27 = *(MEMORY[0x277D03988] + 5);
        if (os_log_type_enabled(v25, v27))
        {
          calendarURLString2 = [(MobileCalDAVCalendar *)self calendarURLString];
          callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
          v40 = 138412546;
          v41 = calendarURLString2;
          v42 = 2114;
          v43 = callStackSymbols;
          _os_log_impl(&dword_2484B2000, v26, v27, "******Creating calendar with url %@ %{public}@", &v40, 0x16u);
        }

        [(MobileCalDAVCalendar *)self calCalendar];
        CalStoreAddCalendar();
      }

      else
      {
        if (calCalendar)
        {
          v30 = *(MEMORY[0x277D03988] + 6);
          if (os_log_type_enabled(v25, v30))
          {
            v40 = 138412290;
            v41 = titleCopy;
            _os_log_impl(&dword_2484B2000, v26, v30, "Merged calendar titled %@ with calDAV", &v40, 0xCu);
          }
        }

        else
        {
          v31 = *(MEMORY[0x277D03988] + 3);
          if (os_log_type_enabled(v25, *(MEMORY[0x277D03988] + 3)))
          {
            guid2 = [(MobileCalDAVCalendar *)self guid];
            v40 = 138412290;
            v41 = guid2;
            _os_log_impl(&dword_2484B2000, v26, v31, "Could not get a calendar store. Cowardly refusing to create a calendar with UID %@", &v40, 0xCu);
          }
        }
      }

      if ([(MobileCalDAVCalendar *)self calCalendar])
      {
        calendarURLString3 = [(MobileCalDAVCalendar *)self calendarURLString];

        if (calendarURLString3)
        {
          [(MobileCalDAVCalendar *)self calCalendar];
          UID = CalCalendarGetUID();
          calendarURLString4 = [(MobileCalDAVCalendar *)self calendarURLString];
          [MobileCalDAVCalendar cacheCalendarUID:UID forCalendarURLString:calendarURLString4];
        }
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }

    else
    {
      v20 = DALoggingwithCategory();
      v21 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v20, *(MEMORY[0x277D03988] + 6)))
      {
        LOWORD(v40) = 0;
        _os_log_impl(&dword_2484B2000, v20, v21, "Couldn't get a database ref. This isn't the time to create a calendar", &v40, 2u);
      }
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__dropCalStoreContext name:@"CalDBIsClosing" object:0];
  }

  calCalendar2 = [(MobileCalDAVCalendar *)self calCalendar];

  v38 = *MEMORY[0x277D85DE8];
  return calCalendar2;
}

- (void)getCalCalendar
{
  v32 = *MEMORY[0x277D85DE8];
  if (![(MobileCalDAVCalendar *)self calCalendar])
  {
    calendarURLString = [(MobileCalDAVCalendar *)self calendarURLString];

    if (!calendarURLString)
    {
      result = 0;
LABEL_22:
      v27 = *MEMORY[0x277D85DE8];
      return result;
    }

    principal = [(MobileCalDAVCalendar *)self principal];
    account = [principal account];
    dbHelper = [account dbHelper];
    accountID = [(MobileCalDAVCalendar *)self accountID];
    [dbHelper calDatabaseForAccountID:accountID];

    calendarURLString2 = [(MobileCalDAVCalendar *)self calendarURLString];
    v11 = [MobileCalDAVCalendar cachedCalendarUIDForURLString:calendarURLString2];

    v12 = MEMORY[0x277D03988];
    if ((v11 & 0x80000000) == 0)
    {
      v13 = DALoggingwithCategory();
      v14 = *(v12 + 6);
      if (os_log_type_enabled(v13, v14))
      {
        calendarURLString3 = [(MobileCalDAVCalendar *)self calendarURLString];
        callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
        v28 = 67109634;
        *v29 = v11;
        *&v29[4] = 2112;
        *&v29[6] = calendarURLString3;
        v30 = 2112;
        v31 = callStackSymbols;
        _os_log_impl(&dword_2484B2000, v13, v14, "Found a cached calendar uid (%d) for url %@ %@", &v28, 0x1Cu);
      }

      self->_calCalendar = CalDatabaseCopyCalendarWithUID();
      if (![(MobileCalDAVCalendar *)self calCalendar])
      {
        calendarURLString4 = [(MobileCalDAVCalendar *)self calendarURLString];
        [MobileCalDAVCalendar removeUIDCacheEntryForCalendarURLString:calendarURLString4];
      }
    }

    if (![(MobileCalDAVCalendar *)self calCalendar])
    {
      accountID2 = [(MobileCalDAVCalendar *)self accountID];
      v19 = CalDatabaseCopyStoreWithExternalID();

      calendarURLString5 = [(MobileCalDAVCalendar *)self calendarURLString];
      self->_calCalendar = CalDatabaseCopyCalendarWithExternalIDInStore();

      if (v19)
      {
        CFRelease(v19);
      }
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__dropCalStoreContext name:@"CalDBIsClosing" object:0];

    if ([(MobileCalDAVCalendar *)self calCalendar])
    {
      calendarURLString6 = [(MobileCalDAVCalendar *)self calendarURLString];

      if (!calendarURLString6)
      {
LABEL_21:
        result = [(MobileCalDAVCalendar *)self calCalendar];
        goto LABEL_22;
      }

      [(MobileCalDAVCalendar *)self calCalendar];
      UID = CalCalendarGetUID();
      calendarURLString7 = [(MobileCalDAVCalendar *)self calendarURLString];
      [MobileCalDAVCalendar cacheCalendarUID:UID forCalendarURLString:calendarURLString7];
    }

    else
    {
      calendarURLString7 = DALoggingwithCategory();
      v25 = *(v12 + 7);
      if (os_log_type_enabled(calendarURLString7, v25))
      {
        calendarURLString8 = [(MobileCalDAVCalendar *)self calendarURLString];
        v28 = 138412290;
        *v29 = calendarURLString8;
        _os_log_impl(&dword_2484B2000, calendarURLString7, v25, "Couldn't find calendar with url %@.", &v28, 0xCu);
      }
    }

    goto LABEL_21;
  }

  v3 = *MEMORY[0x277D85DE8];

  return [(MobileCalDAVCalendar *)self calCalendar];
}

- (void)_dropCalStoreContext
{
  calCalendar = self->_calCalendar;
  if (calCalendar)
  {
    CFRelease(calCalendar);
    self->_calCalendar = 0;
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"CalDBIsClosing" object:0];
}

- (id)_calExternalRep
{
  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    v2 = CalCalendarCopyExternalRepresentation();
    if (v2)
    {
      v3 = [MEMORY[0x277CCAC58] propertyListFromData:v2 mutabilityOption:2 format:0 errorDescription:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_6:

        goto LABEL_8;
      }
    }

    v3 = 0;
    goto LABEL_6;
  }

  v3 = 0;
LABEL_8:

  return v3;
}

+ (__CFArray)gatherCalendarChangesInPrincipal:(id)principal calendars:(id)calendars adds:(id *)adds modifies:(id *)modifies deletes:(id *)deletes changeTracker:(id)tracker
{
  v101 = *MEMORY[0x277D85DE8];
  principalCopy = principal;
  calendarsCopy = calendars;
  trackerCopy = tracker;
  v12 = objc_opt_new();
  v13 = objc_opt_new();
  v85 = objc_opt_new();
  account = [principalCopy account];
  dbHelper = [account dbHelper];
  accountID = [principalCopy accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  account2 = [principalCopy account];
  accountID2 = [account2 accountID];
  v19 = CalDatabaseCopyStoreWithExternalID();

  v20 = MEMORY[0x277D03988];
  if (v19)
  {
    theDict = 0;
    CalDatabaseCopyCalendarChangesInStore();
    v26 = 0;
    cf = v19;
    v80 = v13;
    account3 = [principalCopy account];
    wasMigrated = [account3 wasMigrated];

    if (wasMigrated)
    {
      allValues = [calendarsCopy allValues];
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v30 = [allValues countByEnumeratingWithState:&v87 objects:v100 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v88;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v88 != v32)
            {
              objc_enumerationMutation(allValues);
            }

            v34 = *(*(&v87 + 1) + 8 * i);
            if (([self shouldSkipAddedCalendar:{objc_msgSend(v34, "getCalCalendar")}] & 1) == 0)
            {
              [self processAddedCalendar:v34];
              [v12 addObject:v34];
            }
          }

          v31 = [allValues countByEnumeratingWithState:&v87 objects:v100 count:16];
        }

        while (v31);
      }

      v61 = DALoggingwithCategory();
      v60 = MEMORY[0x277D03988];
      v62 = *(MEMORY[0x277D03988] + 3);
      modifiesCopy2 = modifies;
      deletesCopy2 = deletes;
      addsCopy2 = adds;
      if (os_log_type_enabled(v61, v62))
      {
        *buf = 0;
        _os_log_impl(&dword_2484B2000, v61, v62, "CalDatabaseCopyCalendarChangesInStore returned no changeTableIDs.", buf, 2u);
      }

      v25 = 0;
      v13 = v80;

      goto LABEL_47;
    }

    v73 = principalCopy;
    Count = CFArrayGetCount(0);
    Mutable = CFArrayCreateMutable(0, Count, 0);
    if (Count < 1)
    {
LABEL_43:
      v25 = CFAutorelease(Mutable);
      principalCopy = v73;
      deletesCopy2 = deletes;
      v13 = v80;
      addsCopy2 = adds;
      modifiesCopy2 = modifies;
      v60 = MEMORY[0x277D03988];
LABEL_47:
      CFRelease(cf);
      if (theDict)
      {
        CFRelease(theDict);
        theDict = 0;
      }

      v63 = DALoggingwithCategory();
      v64 = *(v60 + 6);
      if (os_log_type_enabled(v63, v64))
      {
        v65 = [v12 count];
        v66 = [v13 count];
        v67 = [v85 count];
        *buf = 138413058;
        v93 = principalCopy;
        v94 = 2048;
        v95 = v65;
        v96 = 2048;
        v97 = v66;
        v13 = v80;
        v98 = 2048;
        v99 = v67;
        _os_log_impl(&dword_2484B2000, v63, v64, "+gatherCalendarChangesInPrincipal %@: found %lu added calendars, %lu modified calendars, and %lu deleted calendars", buf, 0x2Au);
      }

      if (addsCopy2)
      {
        v68 = v12;
        *addsCopy2 = v12;
      }

      if (modifiesCopy2)
      {
        v69 = v13;
        *modifiesCopy2 = v13;
      }

      if (deletesCopy2)
      {
        *deletesCopy2 = v85;
      }

      goto LABEL_57;
    }

    v38 = 0;
    v86 = *MEMORY[0x277CF7648];
    v75 = *MEMORY[0x277CF7640];
    v74 = *(MEMORY[0x277D03988] + 5);
    type = *(MEMORY[0x277D03988] + 3);
    *&v37 = 138412546;
    v72 = v37;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(0, v38);
      v40 = CFArrayGetValueAtIndex(0, v38);
      v41 = CFArrayGetValueAtIndex(v26, v38);
      if (v86 == ValueAtIndex)
      {
        v42 = CFArrayGetValueAtIndex(0, v38);
        if (v42)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v43 = v42;
            if ((CFArrayGetValueAtIndex(0, v38) & 0x800000) != 0)
            {
              v44 = [v43 stringByAppendingString:@"?isJunk=true"];

              v43 = v44;
            }

            [v85 addObject:{v43, v72}];
          }
        }
      }

      else
      {
        v45 = Count;
        v46 = Mutable;
        v47 = v26;
        v48 = CalDatabaseCopyCalendarWithUID();
        if (v48)
        {
          v49 = v48;
          if (([self shouldSkipCalendar:v48 withChangeType:ValueAtIndex] & 1) == 0)
          {
            v81 = CalCalendarCopyExternalIdentificationTag();
            v50 = [calendarsCopy objectForKeyedSubscript:?];
            if (!v50)
            {
              v54 = DALoggingwithCategory();
              if (os_log_type_enabled(v54, v74))
              {
                UID = CalCalendarGetUID();
                *buf = v72;
                v93 = v81;
                v94 = 1024;
                LODWORD(v95) = UID;
                _os_log_impl(&dword_2484B2000, v54, v74, "There's an change for calendar with guid %@ (UID %d) but it isn't in the cached calendars. Keeping the change for it until next time.", buf, 0x12u);
              }

              CFRelease(v49);
              [trackerCopy saveChange:v41 forEntityType:1];
              v26 = v47;
              Mutable = v46;
              Count = v45;
              goto LABEL_42;
            }

            v51 = v50;
            if (v75 == ValueAtIndex)
            {
              [self processAddedCalendar:v50];
              v52 = v12;
            }

            else
            {
              v56 = CFArrayGetValueAtIndex(0, v38);
              [self processModifiedCalendar:v51 oldFlags:v56 newFlags:{CFArrayGetValueAtIndex(0, v38)}];
              v52 = v80;
            }

            [v52 addObject:{v51, v72}];
          }

          CFRelease(v49);
        }

        else
        {
          v53 = DALoggingwithCategory();
          if (os_log_type_enabled(v53, type))
          {
            *buf = 67109120;
            LODWORD(v93) = v40;
            _os_log_impl(&dword_2484B2000, v53, type, "Got a change for calendar with UID %d, but couldn't find that calendar. Most likely it no longer exists. Ignoring change.", buf, 8u);
          }
        }

        v26 = v47;
        Mutable = v46;
        Count = v45;
      }

      CFArrayAppendValue(Mutable, v41);
LABEL_42:
      if (Count == ++v38)
      {
        goto LABEL_43;
      }
    }
  }

  v21 = DALoggingwithCategory();
  v22 = *(v20 + 3);
  if (os_log_type_enabled(v21, v22))
  {
    account4 = [principalCopy account];
    accountID3 = [account4 accountID];
    *buf = 138543362;
    v93 = accountID3;
    _os_log_impl(&dword_2484B2000, v21, v22, "Could not find a calendar store with id %{public}@", buf, 0xCu);
  }

  v25 = 0;
LABEL_57:

  v70 = *MEMORY[0x277D85DE8];
  return v25;
}

+ (BOOL)shouldSkipCalendar:(void *)calendar withChangeType:(int)type
{
  v14 = *MEMORY[0x277D85DE8];
  if ((CalCalendarCanContainEntityType() & 1) == 0 && !CalShouldSyncReminders())
  {
LABEL_14:
    v12 = *MEMORY[0x277D85DE8];
    return 1;
  }

  if (*MEMORY[0x277CF7640] == type)
  {
    v7 = *MEMORY[0x277D85DE8];

    return [self shouldSkipAddedCalendar:calendar];
  }

  if (*MEMORY[0x277CF7650] != type)
  {
    v10 = DALoggingwithCategory();
    v11 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v10, v11))
    {
      v13[0] = 67109120;
      v13[1] = type;
      _os_log_impl(&dword_2484B2000, v10, v11, "+shouldSkipCalendar:withChangeType: Unexpected change type: %i", v13, 8u);
    }

    goto LABEL_14;
  }

  v9 = *MEMORY[0x277D85DE8];

  return [self shouldSkipModifiedCalendar:calendar];
}

+ (void)processAddedCalendar:(id)calendar
{
  calendarCopy = calendar;
  if ([calendarCopy isPublished])
  {
    [calendarCopy setNeedsPublishUpdate:1];
  }

  [calendarCopy setWasModifiedLocally:1];
}

+ (void)processModifiedCalendar:(id)calendar oldFlags:(unsigned int)flags newFlags:(unsigned int)newFlags
{
  calendarCopy = calendar;
  isPublished = [calendarCopy isPublished];
  publishURL = [calendarCopy publishURL];
  if (((isPublished ^ (publishURL == 0)) & 1) == 0)
  {
    [calendarCopy setNeedsPublishUpdate:1];
  }

  v9 = CalCalendarFlagsAreValid();
  if (flags != newFlags && v9)
  {
    v10 = newFlags ^ flags;
    if ((v10 & 0x100000) != 0)
    {
      [calendarCopy setNeedsIsAffectingAvailabilityUpdate:1];
    }

    if ((newFlags & v10 & 0x400) != 0)
    {
      [calendarCopy setBecameDefaultSchedulingCalendar:1];
    }
  }

  [calendarCopy setWasModifiedLocally:1];
}

+ (BOOL)clearCalendarChanges:(__CFArray *)changes forPrincipal:(id)principal changeTrackingClient:(id)client
{
  clientCopy = client;
  principalCopy = principal;
  account = [principalCopy account];
  dbHelper = [account dbHelper];
  accountID = [principalCopy accountID];

  [dbHelper calDatabaseForAccountID:accountID];
  CalDatabaseClearIndividualChangeRowIDsForClient();

  return 1;
}

- (id)_itemPropertyDictForItemAtIndex:(int64_t)index withChangedIDs:(__CFArray *)ds withChangedRowids:(__CFArray *)rowids withExternalIDs:(__CFArray *)iDs uniqueIdentifiers:(__CFArray *)identifiers significantAttributeChanges:(__CFArray *)changes oldCalendarIDs:(__CFArray *)calendarIDs entityType:(int)self0
{
  v16 = objc_opt_new();
  if (ds && CFArrayGetValueAtIndex(ds, index) != -1)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInt:?];
    [v16 setObject:v17 forKeyedSubscript:@"ChangeID"];
  }

  if (rowids && CFArrayGetValueAtIndex(rowids, index) != -1)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithInt:?];
    [v16 setObject:v18 forKeyedSubscript:@"ChangeRowid"];
  }

  if (iDs)
  {
    iDs = CFArrayGetValueAtIndex(iDs, index);
    if (iDs)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [v16 setObject:iDs forKeyedSubscript:@"ExternalID"];
      }
    }
  }

  if (identifiers)
  {
    identifiers = CFArrayGetValueAtIndex(identifiers, index);
    if (identifiers)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [v16 setObject:identifiers forKeyedSubscript:@"UniqueIdentifier"];
      }
    }
  }

  if (changes)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(changes, index);
  }

  else
  {
    ValueAtIndex = 0;
  }

  v20 = [MEMORY[0x277CCABB0] numberWithInt:ValueAtIndex];
  [v16 setObject:v20 forKeyedSubscript:@"SignificantAttributeChange"];

  if (calendarIDs)
  {
    v21 = CFArrayGetValueAtIndex(calendarIDs, index);
  }

  else
  {
    v21 = 0xFFFFFFFFLL;
  }

  v22 = [MEMORY[0x277CCABB0] numberWithInt:v21];
  [v16 setObject:v22 forKeyedSubscript:@"OldCalendarID"];

  v23 = [MEMORY[0x277CCABB0] numberWithInt:type];
  [v16 setObject:v23 forKeyedSubscript:@"EntityType"];

  return v16;
}

- (id)copyAllItems
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    v4 = CalCalendarCopyEvents();
    v5 = 0x278F16000uLL;
    if ([v4 count])
    {
      v6 = 0;
      do
      {
        v7 = [v4 objectAtIndexedSubscript:v6];

        v8 = [DACalDAViCalItem alloc];
        calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
        principal = [(MobileCalDAVCalendar *)self principal];
        accountID = [principal accountID];
        v12 = v8;
        v5 = 0x278F16000uLL;
        v13 = [(DACalDAViCalItem *)v12 initWithCalRecord:v7 inContainer:calendarURL accountID:accountID];

        [v3 addObject:v13];
        ++v6;
      }

      while (v6 < [v4 count]);
    }

    v14 = CalCalendarCopyTasks();
    if ([v14 count])
    {
      v15 = 0;
      do
      {
        v16 = [v14 objectAtIndexedSubscript:v15];

        v17 = objc_alloc(*(v5 + 3360));
        calendarURL2 = [(MobileCalDAVCalendar *)self calendarURL];
        principal2 = [(MobileCalDAVCalendar *)self principal];
        accountID2 = [principal2 accountID];
        v21 = v17;
        v5 = 0x278F16000;
        v22 = [v21 initWithCalRecord:v16 inContainer:calendarURL2 accountID:accountID2];

        [v3 addObject:v22];
        ++v15;
      }

      while (v15 < [v14 count]);
    }

    v23 = v3;
  }

  else
  {
    v24 = DALoggingwithCategory();
    v25 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v24, v25))
    {
      v28 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_2484B2000, v24, v25, "Could not find a calendar with that matched %@", &v28, 0xCu);
    }

    v23 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v23;
}

- (void)_addAddedItemsOfType:(int)type toArray:(id)array
{
  v22 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  accountID = [(MobileCalDAVCalendar *)self accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    v11 = CalDatabaseCopyCalendarItemChangesInCalendar();
    v14 = DALoggingwithCategory();
    v15 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = @"tasks";
      if (type == 2)
      {
        v16 = @"events";
      }

      *buf = 138412546;
      selfCopy = v16;
      v20 = 1024;
      v21 = v11;
      _os_log_impl(&dword_2484B2000, v14, v15, "Gathering added %@. Change index is %d", buf, 0x12u);
    }
  }

  else
  {
    v12 = DALoggingwithCategory();
    v13 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v12, v13))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_2484B2000, v12, v13, "Could not find a calendar with that matched %@", buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)copyAddedItems
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [(MobileCalDAVCalendar *)self _addAddedItemsOfType:2 toArray:v3];
  v4 = [v3 count];
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    v11 = 134217984;
    v12 = v4;
    _os_log_impl(&dword_2484B2000, v5, v6, "%ld added events found", &v11, 0xCu);
  }

  if (CalShouldSyncReminders())
  {
    [(MobileCalDAVCalendar *)self _addAddedItemsOfType:3 toArray:v3];
    v7 = DALoggingwithCategory();
    if (os_log_type_enabled(v7, v6))
    {
      v8 = [v3 count];
      v11 = 134217984;
      v12 = v8 - v4;
      _os_log_impl(&dword_2484B2000, v7, v6, "%ld added tasks found", &v11, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)_gatherModifiedItemsFromCalChangesCall:(void *)call forType:(id)type inArray:(id)array
{
  v28 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  arrayCopy = array;
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  accountID = [(MobileCalDAVCalendar *)self accountID];
  v14 = [dbHelper calDatabaseForAccountID:accountID];

  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (getCalCalendar)
  {
    *theDict = 0;
    (call)(v14, getCalCalendar, theDict);
    if (*theDict)
    {
      Value = CFDictionaryGetValue(*theDict, *MEMORY[0x277CF75F0]);
      v17 = CFDictionaryGetValue(*theDict, *MEMORY[0x277CF7608]);
      v18 = CFDictionaryGetValue(*theDict, *MEMORY[0x277CF75E0]);
      if (Value)
      {
        v19 = v18;
        Count = CFArrayGetCount(Value);
        if (Count >= 1)
        {
          v21 = Count;
          for (i = 0; i != v21; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v17, i);
            [(MobileCalDAVCalendar *)self _addCalendarItemWithRowID:ValueAtIndex toArrayIfNeeded:arrayCopy withChangeRowid:CFArrayGetValueAtIndex(v19 changeType:i), typeCopy];
          }
        }
      }

      if (*theDict)
      {
        CFRelease(*theDict);
      }
    }
  }

  else
  {
    v24 = DALoggingwithCategory();
    v25 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v24, v25))
    {
      *theDict = 138412290;
      *&theDict[4] = self;
      _os_log_impl(&dword_2484B2000, v24, v25, "Could not find a calendar with that matched %@", theDict, 0xCu);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)_gatherModifiedEventsInArray:(id)array
{
  theDict[3] = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  accountID = [(MobileCalDAVCalendar *)self accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    theDict[0] = 0;
    v9 = CalDatabaseCopyEventChangesInCalendar();
    v12 = DALoggingwithCategory();
    v13 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v12, v13))
    {
      *buf = 67109120;
      v16 = v9;
      _os_log_impl(&dword_2484B2000, v12, v13, "Gathering modified events. Change index is %d", buf, 8u);
    }

    if (theDict[0])
    {
      CFRelease(theDict[0]);
    }
  }

  else
  {
    v10 = DALoggingwithCategory();
    v11 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v10, v11))
    {
      LODWORD(theDict[0]) = 138412290;
      *(theDict + 4) = self;
      _os_log_impl(&dword_2484B2000, v10, v11, "Could not find a calendar with that matched %@", theDict, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_gatherModifiedTasksInArray:(id)array
{
  theDict[3] = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  accountID = [(MobileCalDAVCalendar *)self accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    theDict[0] = 0;
    v9 = CalDatabaseCopyTaskChangesInCalendar();
    v12 = DALoggingwithCategory();
    v13 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v12, v13))
    {
      v15[0] = 67109120;
      v15[1] = v9;
      _os_log_impl(&dword_2484B2000, v12, v13, "Gathering modified tasks. Change index is %d", v15, 8u);
    }

    if (theDict[0])
    {
      CFRelease(theDict[0]);
    }
  }

  else
  {
    v10 = DALoggingwithCategory();
    v11 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v10, v11))
    {
      LODWORD(theDict[0]) = 138412290;
      *(theDict + 4) = self;
      _os_log_impl(&dword_2484B2000, v10, v11, "Could not find a calendar with that matched %@", theDict, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)copyModifiedItems
{
  v3 = objc_opt_new();
  [(MobileCalDAVCalendar *)self _gatherModifiedItemsFromCalChangesCall:MEMORY[0x277CF7140] forType:@"CalDAVChangeAlarm" inArray:v3];
  [(MobileCalDAVCalendar *)self _gatherModifiedItemsFromCalChangesCall:MEMORY[0x277CF7160] forType:@"CalDAVChangeAttendee" inArray:v3];
  [(MobileCalDAVCalendar *)self _gatherModifiedItemsFromCalChangesCall:MEMORY[0x277CF7178] forType:@"CalDAVChangeOrganizer" inArray:v3];
  [(MobileCalDAVCalendar *)self _gatherModifiedItemsFromCalChangesCall:MEMORY[0x277CF7150] forType:@"CalDAVChangeAttachment" inArray:v3];
  [(MobileCalDAVCalendar *)self _gatherModifiedItemsFromCalChangesCall:MEMORY[0x277CF7180] forType:@"CalDAVChangeRecurrence" inArray:v3];
  if (CalShouldSyncReminders())
  {
    [(MobileCalDAVCalendar *)self _gatherModifiedTasksInArray:v3];
  }

  [(MobileCalDAVCalendar *)self _gatherModifiedEventsInArray:v3];
  return v3;
}

- (void)_addAddedRecurrenceSplitItemsToArray:(id)array
{
  theDict[3] = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  accountID = [(MobileCalDAVCalendar *)self accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    theDict[0] = 0;
    v9 = CalDatabaseCopyCalendarItemChangesInCalendar();
    v13 = DALoggingwithCategory();
    v14 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v13, v14))
    {
      *buf = 67109120;
      v17 = v9;
      _os_log_impl(&dword_2484B2000, v13, v14, "Gathering added recurrence split events. Change index is %d", buf, 8u);
    }

    if (theDict[0])
    {
      CFRelease(theDict[0]);
    }
  }

  else
  {
    v10 = arrayCopy;
    v11 = DALoggingwithCategory();
    v12 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v11, v12))
    {
      LODWORD(theDict[0]) = 138412290;
      *(theDict + 4) = self;
      _os_log_impl(&dword_2484B2000, v11, v12, "Could not find a calendar with that matched %@", theDict, 0xCu);
    }

    arrayCopy = v10;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)copyRecurrenseSplitItems
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [(MobileCalDAVCalendar *)self _addAddedRecurrenceSplitItemsToArray:v3];
  v4 = [v3 count];
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    v9 = 134217984;
    v10 = v4;
    _os_log_impl(&dword_2484B2000, v5, v6, "%ld added recurrence split items found", &v9, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)_gatherDeletedChanges:(void *)changes inDictionary:(id)dictionary
{
  v71 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  accountID = [(MobileCalDAVCalendar *)self accountID];
  v11 = [dbHelper calDatabaseForAccountID:accountID];

  selfCopy = self;
  getCalCalendar = [(MobileCalDAVCalendar *)self getCalCalendar];
  v13 = MEMORY[0x277D03988];
  if (getCalCalendar)
  {
    v66 = 0;
    v14 = (changes)(v11, getCalCalendar, &v66);
    if (v66)
    {
      Value = CFDictionaryGetValue(v66, *MEMORY[0x277CF75E0]);
      theArray = CFDictionaryGetValue(v66, *MEMORY[0x277CF75F0]);
      v15 = CFDictionaryGetValue(v66, *MEMORY[0x277CF7618]);
      v56 = CFDictionaryGetValue(v66, *MEMORY[0x277CF75E8]);
      v63 = CFDictionaryGetValue(v66, *MEMORY[0x277CF7628]);
      v55 = CFDictionaryGetValue(v66, *MEMORY[0x277CF7610]);
      v54 = CFDictionaryGetValue(v66, *MEMORY[0x277CF75F8]);
    }

    else
    {
      v54 = 0;
      v55 = 0;
      v63 = 0;
      v56 = 0;
      v15 = 0;
      theArray = 0;
      Value = 0;
    }

    changesCopy = changes;
    v18 = DALoggingwithCategory();
    v65 = *(v13 + 6);
    if (os_log_type_enabled(v18, v65))
    {
      *buf = 67109120;
      *v68 = v14;
      _os_log_impl(&dword_2484B2000, v18, v65, "Gathering deleted items. Change index is %d", buf, 8u);
    }

    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        v20 = Count;
        v21 = 0;
        v22 = *MEMORY[0x277CF7648];
        v23 = *(v13 + 3);
        v58 = *MEMORY[0x277CF7648];
        v61 = v23;
        v60 = v15;
        while (v22 != CFArrayGetValueAtIndex(v15, v21))
        {
LABEL_40:
          if (v20 == ++v21)
          {
            goto LABEL_47;
          }
        }

        v24 = CFArrayGetValueAtIndex(v63, v21);
        if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          if (changesCopy == MEMORY[0x277CF7170])
          {
            v48 = CalGetRealUIDFromRecurrenceUID();
            Mutable = CalDatabaseCopyEventWithExternalIDInCalendar();

            if (Mutable)
            {
              v49 = DALoggingwithCategory();
              if (os_log_type_enabled(v49, v65))
              {
                RowID = CalCalendarItemGetRowID();
                *buf = 67109120;
                *v68 = RowID;
                _os_log_impl(&dword_2484B2000, v49, v65, "Found an owning event: %d", buf, 8u);
              }

LABEL_38:
              CFRelease(Mutable);
LABEL_39:

              v15 = v60;
              goto LABEL_40;
            }

            v27 = 2;
          }

          else
          {
            v27 = 3;
          }

          v25 = CFArrayGetValueAtIndex(v56, v21);
          if (v25)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_52;
            }
          }

          principal2 = [(MobileCalDAVCalendar *)selfCopy principal];
          account2 = [principal2 account];
          itemIDsToMoveActions = [account2 itemIDsToMoveActions];
          v31 = [itemIDsToMoveActions mutableCopy];

          v32 = [MEMORY[0x277CCABB0] numberWithInt:{CFArrayGetValueAtIndex(theArray, v21)}];
          v33 = [v31 objectForKeyedSubscript:v32];
          if (v33)
          {
            v34 = DALoggingwithCategory();
            if (os_log_type_enabled(v34, v65))
            {
              [v33 oldExternalID];
              v35 = v53 = dictionaryCopy;
              *buf = 138412290;
              *v68 = v35;
              _os_log_impl(&dword_2484B2000, v34, v65, "Found a really interesting move. We're going to steal the filename from the move action: %@", buf, 0xCu);

              dictionaryCopy = v53;
            }

            oldExternalID = [v33 oldExternalID];

            v25 = oldExternalID;
          }

          v23 = v61;

          if (v25)
          {
LABEL_52:
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if ([v25 length])
              {
                v37 = DALoggingwithCategory();
                if (os_log_type_enabled(v37, v65))
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(theArray, v21);
                  v39 = CFArrayGetValueAtIndex(Value, v21);
                  *buf = 67109634;
                  *v68 = ValueAtIndex;
                  *&v68[4] = 1024;
                  *&v68[6] = v39;
                  v69 = 2112;
                  v70 = v25;
                  _os_log_impl(&dword_2484B2000, v37, v65, "Found a delete of the item at row %d (change row is %d) for filename %@", buf, 0x18u);
                }

                LODWORD(v52) = v27;
                v40 = [(MobileCalDAVCalendar *)selfCopy _itemPropertyDictForItemAtIndex:v21 withChangedIDs:theArray withChangedRowids:Value withExternalIDs:v56 uniqueIdentifiers:v63 significantAttributeChanges:v55 oldCalendarIDs:v54 entityType:v52];
                [dictionaryCopy setObject:v40 forKeyedSubscript:v25];

                v22 = v58;
                goto LABEL_39;
              }
            }
          }

          v41 = DALoggingwithCategory();
          if (os_log_type_enabled(v41, v23))
          {
            *buf = 138412290;
            *v68 = v24;
            _os_log_impl(&dword_2484B2000, v41, v23, "No filename exists for the deleted item with guid %@", buf, 0xCu);
          }
        }

        else
        {
          v25 = DALoggingwithCategory();
          if (os_log_type_enabled(v25, v23))
          {
            v26 = CFArrayGetValueAtIndex(theArray, v21);
            *buf = 67109120;
            *v68 = v26;
            _os_log_impl(&dword_2484B2000, v25, v23, "The calendar store had a delete we don't have a mapping for: %d", buf, 8u);
          }
        }

        v42 = DALoggingwithCategory();
        if (os_log_type_enabled(v42, v65))
        {
          *buf = 67109120;
          *v68 = v21;
          _os_log_impl(&dword_2484B2000, v42, v65, "Clearing change at index %d", buf, 8u);
        }

        Mutable = CFArrayCreateMutable(0, 1, 0);
        v44 = CFArrayGetValueAtIndex(Value, v21);
        CFArrayAppendValue(Mutable, v44);
        principal3 = [(MobileCalDAVCalendar *)selfCopy principal];
        account3 = [principal3 account];
        changeTrackingID = [account3 changeTrackingID];
        CalDatabaseClearIndividualChangeRowIDsForClient();

        v22 = v58;
        v23 = v61;
        if (!Mutable)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }
    }

LABEL_47:
    if (v66)
    {
      CFRelease(v66);
    }
  }

  else
  {
    v16 = DALoggingwithCategory();
    v17 = *(v13 + 3);
    if (os_log_type_enabled(v16, v17))
    {
      *buf = 138412290;
      *v68 = self;
      _os_log_impl(&dword_2484B2000, v16, v17, "Could not find a calendar that matched %@", buf, 0xCu);
    }
  }

  v51 = *MEMORY[0x277D85DE8];
}

- (id)copyDeletedItems
{
  v3 = objc_opt_new();
  [(MobileCalDAVCalendar *)self _gatherDeletedChanges:MEMORY[0x277CF7170] inDictionary:v3];
  if (CalShouldSyncReminders())
  {
    [(MobileCalDAVCalendar *)self _gatherDeletedChanges:MEMORY[0x277CF7190] inDictionary:v3];
  }

  return v3;
}

- (id)_copyDeletedEventActions
{
  theDict[3] = *MEMORY[0x277D85DE8];
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  accountID = [(MobileCalDAVCalendar *)self accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    theDict[0] = 0;
    CalDatabaseCopyEventActionChangesInCalendar();
  }

  else
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v7, v8))
    {
      LODWORD(theDict[0]) = 138412290;
      *(theDict + 4) = self;
      _os_log_impl(&dword_2484B2000, v7, v8, "Could not find a calendar that matched %@", theDict, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)clearEventChanges
{
  [(MobileCalDAVCalendar *)self clearChangesForEntityType:9];

  [(MobileCalDAVCalendar *)self setDeletedCalendarItems:0];
}

- (void)clearChangesForEntityType:(int)type
{
  v32 = *MEMORY[0x277D85DE8];
  changesToClear = self->_changesToClear;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:?];
  v7 = [(NSMutableDictionary *)changesToClear objectForKeyedSubscript:v6];

  title = [(MobileCalDAVCalendar *)self title];
  v9 = CalEntityTypeGetName();
  v10 = DALoggingwithCategory();
  v11 = *(MEMORY[0x277D03988] + 6);
  v12 = os_log_type_enabled(v10, v11);
  if (v7)
  {
    typeCopy = type;
    if (v12)
    {
      *buf = 134218498;
      Count = CFArrayGetCount(v7);
      v28 = 2114;
      v29 = v9;
      v30 = 2112;
      v31 = title;
      _os_log_impl(&dword_2484B2000, v10, v11, "Clearing %lu %{public}@ in %@", buf, 0x20u);
    }

    principal = [(MobileCalDAVCalendar *)self principal];
    account = [principal account];
    dbHelper = [account dbHelper];
    accountID = [(MobileCalDAVCalendar *)self accountID];
    [dbHelper calDatabaseForAccountID:accountID];
    [(MobileCalDAVCalendar *)self principal];
    v16 = v25 = title;
    [v16 account];
    v18 = v17 = v9;
    changeTrackingID = [v18 changeTrackingID];
    CalDatabaseClearIndividualChangeRowIDsForClient();

    v9 = v17;
    v20 = self->_changesToClear;
    v10 = [MEMORY[0x277CCABB0] numberWithInt:typeCopy];
    v21 = v20;
    title = v25;
    [(NSMutableDictionary *)v21 removeObjectForKey:v10];
  }

  else if (v12)
  {
    *buf = 138543618;
    Count = v9;
    v28 = 2112;
    v29 = title;
    _os_log_impl(&dword_2484B2000, v10, v11, "No %{public}@ to clear in %@", buf, 0x16u);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_clearChangesAtIndices:(id)indices forType:(int)type
{
  v33 = *MEMORY[0x277D85DE8];
  indicesCopy = indices;
  if ([indicesCopy count])
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = DAStringFromCalEntityType();
      dACompactDescription = [indicesCopy DACompactDescription];
      *buf = 138412546;
      v30 = v8;
      v31 = 2112;
      v32 = dACompactDescription;
      _os_log_impl(&dword_2484B2000, v6, v7, "Clearing %@ changes at indices %@", buf, 0x16u);
    }

    Mutable = CFArrayCreateMutable(0, [indicesCopy count], 0);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = indicesCopy;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          CFArrayAppendValue(Mutable, [*(*(&v24 + 1) + 8 * i) longValue]);
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v13);
    }

    principal = [(MobileCalDAVCalendar *)self principal];
    account = [principal account];
    dbHelper = [account dbHelper];
    accountID = [(MobileCalDAVCalendar *)self accountID];
    [dbHelper calDatabaseForAccountID:accountID];
    principal2 = [(MobileCalDAVCalendar *)self principal];
    account2 = [principal2 account];
    changeTrackingID = [account2 changeTrackingID];
    CalDatabaseClearIndividualChangeRowIDsForClient();

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_clearChangesFromItem:(id)item
{
  originatingChangeItems = [item originatingChangeItems];
  [(MobileCalDAVCalendar *)self _clearChanges:originatingChangeItems shouldClearAttachmentChanges:1];
}

- (void)_clearChanges:(id)changes shouldClearAttachmentChanges:(BOOL)attachmentChanges
{
  attachmentChangesCopy = attachmentChanges;
  changesCopy = changes;
  v6 = [changesCopy objectForKeyedSubscript:@"CalDAVChangeEvent"];
  [(MobileCalDAVCalendar *)self _clearChangesAtIndices:v6 forType:2];

  v7 = [changesCopy objectForKeyedSubscript:@"CalDAVChangeTask"];
  [(MobileCalDAVCalendar *)self _clearChangesAtIndices:v7 forType:3];

  v8 = [changesCopy objectForKeyedSubscript:@"CalDAVChangeAlarm"];
  [(MobileCalDAVCalendar *)self _clearChangesAtIndices:v8 forType:4];

  v9 = [changesCopy objectForKeyedSubscript:@"CalDAVChangeAttendee"];
  [(MobileCalDAVCalendar *)self _clearChangesAtIndices:v9 forType:7];

  v10 = [changesCopy objectForKeyedSubscript:@"CalDAVChangeOrganizer"];
  [(MobileCalDAVCalendar *)self _clearChangesAtIndices:v10 forType:8];

  v11 = [changesCopy objectForKeyedSubscript:@"CalDAVChangeEventAction"];
  [(MobileCalDAVCalendar *)self _clearChangesAtIndices:v11 forType:9];

  if (attachmentChangesCopy)
  {
    v12 = [changesCopy objectForKeyedSubscript:@"CalDAVChangeAttachment"];
    [(MobileCalDAVCalendar *)self _clearChangesAtIndices:v12 forType:11];
  }

  v13 = [changesCopy objectForKeyedSubscript:@"CalDAVChangeRecurrence"];
  [(MobileCalDAVCalendar *)self _clearChangesAtIndices:v13 forType:5];
}

- (void)_saveChangesForItem:(id)item
{
  originatingChangeItems = [item originatingChangeItems];
  [(MobileCalDAVCalendar *)self _saveChanges:originatingChangeItems];
}

- (void)_saveChanges:(id)changes
{
  changesCopy = changes;
  v5 = [changesCopy objectForKeyedSubscript:@"CalDAVChangeEvent"];
  [(MobileCalDAVCalendar *)self _saveChangesAtIndices:v5 forType:2];

  v6 = [changesCopy objectForKeyedSubscript:@"CalDAVChangeTask"];
  [(MobileCalDAVCalendar *)self _saveChangesAtIndices:v6 forType:3];

  v7 = [changesCopy objectForKeyedSubscript:@"CalDAVChangeAlarm"];
  [(MobileCalDAVCalendar *)self _saveChangesAtIndices:v7 forType:4];

  v8 = [changesCopy objectForKeyedSubscript:@"CalDAVChangeAttendee"];
  [(MobileCalDAVCalendar *)self _saveChangesAtIndices:v8 forType:7];

  v9 = [changesCopy objectForKeyedSubscript:@"CalDAVChangeOrganizer"];
  [(MobileCalDAVCalendar *)self _saveChangesAtIndices:v9 forType:8];

  v10 = [changesCopy objectForKeyedSubscript:@"CalDAVChangeAttachment"];
  [(MobileCalDAVCalendar *)self _saveChangesAtIndices:v10 forType:11];

  v11 = [changesCopy objectForKeyedSubscript:@"CalDAVChangeRecurrence"];
  [(MobileCalDAVCalendar *)self _saveChangesAtIndices:v11 forType:5];

  v12 = [changesCopy objectForKeyedSubscript:@"CalDAVChangeEventAction"];

  [(MobileCalDAVCalendar *)self _saveChangesAtIndices:v12 forType:9];
}

- (id)_actionsForJunkItemsInModifiedItems:(id)items alreadySentItems:(id)sentItems
{
  v42 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  sentItemsCopy = sentItems;
  v30 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = itemsCopy;
  v9 = [v8 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v36;
    type = *(MEMORY[0x277D03988] + 3);
    v32 = v8;
    v33 = sentItemsCopy;
    v31 = *v36;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v35 + 1) + 8 * i);
        calItem = [v13 calItem];
        if (calItem)
        {
          v15 = calItem;
          if ([(MobileCalDAVCalendar *)self _isItemJunk:calItem])
          {
            v16 = CalEntityCopyRecordID();
            if (v16)
            {
              v17 = v16;
              if (([sentItemsCopy containsObject:v16] & 1) == 0)
              {
                v18 = [DACalDAViCalItem alloc];
                calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
                principal = [(MobileCalDAVCalendar *)self principal];
                accountID = [principal accountID];
                v22 = [(DACalDAViCalItem *)v18 initWithCalRecord:v15 inContainer:calendarURL accountID:accountID];

                sentItemsCopy = v33;
                serverID = [(DACalDAViCalItem *)v22 serverID];
                if (serverID)
                {
                  v24 = [objc_alloc(MEMORY[0x277CF7030]) initWithResourceURL:serverID];
                  originatingChangeItems = [v13 originatingChangeItems];
                  [v24 setChangeContext:originatingChangeItems];

                  [v30 addObject:v24];
                  [v33 addObject:v17];
                }

                v11 = v31;
                v8 = v32;
              }

              CFRelease(v17);
            }
          }
        }

        else
        {
          v26 = DALoggingwithCategory();
          if (os_log_type_enabled(v26, type))
          {
            serverID2 = [v13 serverID];
            *buf = 138412290;
            v40 = serverID2;
            _os_log_impl(&dword_2484B2000, v26, type, "Couldn't find an event ref for a modified event: %@", buf, 0xCu);
          }

          [(MobileCalDAVCalendar *)self _clearChangesFromItem:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v10);
  }

  v28 = *MEMORY[0x277D85DE8];

  return v30;
}

- (id)_recurrenceSplitActionsForItems:(id)items alreadySentItems:(id)sentItems
{
  v52 = *MEMORY[0x277D85DE8];
  sentItemsCopy = sentItems;
  itemsCopy = items;
  v38 = objc_opt_new();
  v6 = [itemsCopy sortedArrayUsingComparator:&__block_literal_global_110];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v46;
    type = *(MEMORY[0x277D03988] + 3);
    *&v8 = 138412290;
    v37 = v8;
    v40 = *v46;
    do
    {
      v11 = 0;
      v42 = v9;
      do
      {
        if (*v46 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v45 + 1) + 8 * v11);
        [v12 calItem];
        RecurrenceInSetForEvent = CalEventCopyNextRecurrenceInSetForEvent();
        [v12 calItem];
        v14 = CalEventCopyNextRecurrenceInSetForEvent();
        [v12 calItem];
        v15 = CalEntityCopyRecordID();
        v16 = v15;
        if (RecurrenceInSetForEvent)
        {
          v17 = v14 == 0;
        }

        else
        {
          v17 = 1;
        }

        if (v17 || v15 == 0)
        {
          v19 = DALoggingwithCategory();
          if (os_log_type_enabled(v19, type))
          {
            serverID = [v12 serverID];
            *buf = v37;
            v50 = serverID;
            _os_log_impl(&dword_2484B2000, v19, type, "Couldn't find split origin for event: %@", buf, 0xCu);
          }

          if (!RecurrenceInSetForEvent)
          {
            if (!v14)
            {
              goto LABEL_19;
            }

LABEL_18:
            CFRelease(v14);
            goto LABEL_19;
          }
        }

        else
        {
          v21 = [DACalDAViCalItem alloc];
          calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
          principal = [(MobileCalDAVCalendar *)self principal];
          accountID = [principal accountID];
          v25 = [(DACalDAViCalItem *)v21 initWithCalRecord:RecurrenceInSetForEvent inContainer:calendarURL accountID:accountID];
          serverID2 = [(DACalDAViCalItem *)v25 serverID];

          v27 = objc_alloc(MEMORY[0x277CBEAA8]);
          CalEventGetStartDate();
          v28 = [v27 initWithTimeIntervalSinceReferenceDate:?];
          [v12 calItem];
          v29 = CalEventCopyUniqueIdentifier();
          IsFloating = CalEventIsFloating();
          IsAllDay = CalEventIsAllDay();
          if (serverID2 && v28 && v29)
          {
            v32 = [objc_alloc(MEMORY[0x277CF7028]) initWithResourceURL:serverID2 recurrenceDate:v28 uidForCreatedSeries:v29 floating:IsFloating allday:IsAllDay];
            [v38 addObject:v32];
            [sentItemsCopy addObject:v16];
            originatingChangeItems = [v12 originatingChangeItems];
            [v32 setChangeContext:originatingChangeItems];
          }

          v10 = v40;
          v9 = v42;
        }

        CFRelease(RecurrenceInSetForEvent);
        if (v14)
        {
          goto LABEL_18;
        }

LABEL_19:
        if (v16)
        {
          CFRelease(v16);
        }

        ++v11;
      }

      while (v9 != v11);
      v34 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
      v9 = v34;
    }

    while (v34);
  }

  v35 = *MEMORY[0x277D85DE8];

  return v38;
}

uint64_t __73__MobileCalDAVCalendar__recurrenceSplitActionsForItems_alreadySentItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 calItem];
  CalEventGetStartDate();
  v6 = v5;
  [v4 calItem];

  CalEventGetStartDate();
  if (v6 < v7)
  {
    return -1;
  }

  else
  {
    return v6 > v7;
  }
}

- (id)_createActionsForItems:(id)items withAction:(int)action alreadySentItems:(id)sentItems createServerIDs:(BOOL)ds shouldSave:(BOOL *)save
{
  dsCopy = ds;
  v62 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  sentItemsCopy = sentItems;
  v51 = objc_opt_new();
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v11 = itemsCopy;
  v12 = [v11 countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v56;
    v15 = *(MEMORY[0x277D03988] + 3);
    v49 = *v56;
    v50 = v11;
    v48 = v15;
    do
    {
      v16 = 0;
      v53 = v13;
      do
      {
        if (*v56 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v55 + 1) + 8 * v16);
        calItem = [v17 calItem];
        if (calItem)
        {
          v19 = calItem;
          if ((CalEntityGetType() == 2 || CalEntityGetType() == 5) && (v20 = CalEventCopyOriginalEvent()) != 0)
          {
            action = 1;
            v19 = v20;
          }

          else
          {
            CFRetain(v19);
          }

          v23 = CalEntityCopyRecordID();
          if (v23 && ([sentItemsCopy containsObject:v23] & 1) == 0)
          {
            actionCopy = action;
            v24 = [DACalDAViCalItem alloc];
            calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
            principal = [(MobileCalDAVCalendar *)self principal];
            accountID = [principal accountID];
            v28 = [(DACalDAViCalItem *)v24 initWithCalRecord:v19 inContainer:calendarURL accountID:accountID];

            originatingChangeItems = [v17 originatingChangeItems];
            [(DACalDAViCalItem *)v28 setOriginatingChangeItems:originatingChangeItems];

            serverID = [(DACalDAViCalItem *)v28 serverID];
            calendarURL2 = [(MobileCalDAVCalendar *)self calendarURL];
            v32 = [serverID da_leastInfoStringRepresentationRelativeToParentURL:calendarURL2];

            serverID2 = [(DACalDAViCalItem *)v28 serverID];
            if (serverID2 || !dsCopy)
            {
            }

            else if (![(DACalDAViCalItem *)v28 prohibitLocalCreationOfServerID])
            {
              calendarURL3 = [(MobileCalDAVCalendar *)self calendarURL];
              filename = [(DACalDAViCalItem *)v28 filename];
              v36 = [calendarURL3 URLByAppendingPathComponent:filename];
              [(DACalDAViCalItem *)v28 setServerID:v36];

              serverID3 = [(DACalDAViCalItem *)v28 serverID];
              calendarURL4 = [(MobileCalDAVCalendar *)self calendarURL];
              v39 = [serverID3 da_leastInfoStringRepresentationRelativeToParentURL:calendarURL4];

              CalCalendarItemSetExternalID();
              v32 = v39;
            }

            action = actionCopy;
            if (v32)
            {
              [(NSMutableDictionary *)self->_URLToRecordIDMap setObject:v23 forKeyedSubscript:v32];
            }

            v40 = [objc_alloc(MEMORY[0x277CFDB90]) initWithAction:actionCopy context:v28];
            originatingChangeItems2 = [v17 originatingChangeItems];
            [v40 setChangeContext:originatingChangeItems2];

            [v51 addObject:v40];
            v13 = v53;
            if (!actionCopy)
            {
              newlyAddedItems = self->_newlyAddedItems;
              if (!newlyAddedItems)
              {
                v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
                v44 = self->_newlyAddedItems;
                self->_newlyAddedItems = v43;

                newlyAddedItems = self->_newlyAddedItems;
              }

              [(NSMutableArray *)newlyAddedItems addObject:v28];
            }

            [sentItemsCopy addObject:v23];

            v14 = v49;
            v11 = v50;
            v15 = v48;
          }

          else
          {
            if (action == 1)
            {
              [(MobileCalDAVCalendar *)self _clearChangesFromItem:v17 shouldClearAttachmentChanges:0];
            }

            if (!v23)
            {
              goto LABEL_34;
            }
          }

          CFRelease(v23);
LABEL_34:
          CFRelease(v19);
          goto LABEL_35;
        }

        v21 = DALoggingwithCategory();
        if (os_log_type_enabled(v21, v15))
        {
          serverID4 = [v17 serverID];
          *buf = 138412290;
          v60 = serverID4;
          _os_log_impl(&dword_2484B2000, v21, v15, "Couldn't find an event ref for an added event: %@", buf, 0xCu);

          v13 = v53;
        }

        [(MobileCalDAVCalendar *)self _clearChangesFromItem:v17];
LABEL_35:
        ++v16;
      }

      while (v13 != v16);
      v13 = [v11 countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v13);
  }

  v45 = *MEMORY[0x277D85DE8];

  return v51;
}

- (BOOL)_shouldRecordError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277CFDB18]])
  {
    code = [errorCopy code];

    if (code == 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  domain2 = [errorCopy domain];
  if (![domain2 isEqualToString:*MEMORY[0x277CFDB80]])
  {

    goto LABEL_9;
  }

  code2 = [errorCopy code];

  if (code2 != 412)
  {
LABEL_9:
    v8 = 1;
    goto LABEL_10;
  }

LABEL_7:
  v8 = 0;
LABEL_10:

  return v8;
}

- (void)_clearExistingHTTPErrorForCalItem:(void *)item
{
  if (CalCalendarItemHasErrorCode())
  {
    CalCalendarItemSetError();

    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (void)_recordError:(id)error forCalItem:(void *)item
{
  v14[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = errorCopy;
  if (item)
  {
    if (errorCopy)
    {
      if ([(MobileCalDAVCalendar *)self _shouldRecordError:errorCopy])
      {
        v8 = MEMORY[0x24C1CF2F0](item);
        Error = CalDatabaseCreateError();
        v13 = *MEMORY[0x277CCA7E8];
        cal_serializableError = [v7 cal_serializableError];
        v14[0] = cal_serializableError;
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

        CalErrorSetCalendarItemErrorCode();
        CalCalendarItemSetError();
        CFRelease(Error);
        CFRelease(v8);
        [(MobileCalDAVCalendar *)self setIsDirty:1];
      }
    }

    else
    {
      [(MobileCalDAVCalendar *)self _clearExistingHTTPErrorForCalItem:item];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasCalendarErrorOfType:(unint64_t)type
{
  calCalendar = [(MobileCalDAVCalendar *)self calCalendar];
  if (calCalendar)
  {

    LOBYTE(calCalendar) = MEMORY[0x282147380]();
  }

  return calCalendar;
}

- (void)clearCalendarErrorOfType:(unint64_t)type
{
  if ([(MobileCalDAVCalendar *)self hasCalendarErrorOfType:type])
  {
    [(MobileCalDAVCalendar *)self calCalendar];
    CalCalendarSetError();

    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (void)recordCalendarError:(id)error ofType:(unint64_t)type
{
  v14[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  calCalendar = [(MobileCalDAVCalendar *)self calCalendar];
  if (errorCopy)
  {
    v7 = calCalendar;
    if (calCalendar)
    {
      if ([(MobileCalDAVCalendar *)self _shouldRecordError:errorCopy])
      {
        v8 = MEMORY[0x24C1CF2F0](v7);
        Error = CalDatabaseCreateError();
        v13 = *MEMORY[0x277CCA7E8];
        cal_serializableError = [errorCopy cal_serializableError];
        v14[0] = cal_serializableError;
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];

        CalErrorSetCalendarErrorCode();
        CalCalendarSetError();
        CFRelease(Error);
        CFRelease(v8);
        [(MobileCalDAVCalendar *)self setIsDirty:1];
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)putAction:(id)action completedWithError:(id)error
{
  v34 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  itemsPendingSync = self->_itemsPendingSync;
  actionCopy = action;
  [(NSMutableSet *)itemsPendingSync removeObject:actionCopy];
  [(MobileCalDAVCalendar *)self setNumUploadedElements:[(MobileCalDAVCalendar *)self numUploadedElements]+ 1];
  context = [actionCopy context];

  -[MobileCalDAVCalendar _recordError:forCalItem:](self, "_recordError:forCalItem:", errorCopy, [context calItem]);
  v10 = DALoggingwithCategory();
  v11 = MEMORY[0x277D03988];
  v12 = *(MEMORY[0x277D03988] + 6);
  v13 = os_log_type_enabled(v10, v12);
  if (!errorCopy)
  {
    if (v13)
    {
      serverID = [context serverID];
      v30 = 138412290;
      v31 = serverID;
      _os_log_impl(&dword_2484B2000, v10, v12, "Put of item at %@ succeeded without error", &v30, 0xCu);
    }

    goto LABEL_12;
  }

  if (v13)
  {
    serverID2 = [context serverID];
    v30 = 138412546;
    v31 = errorCopy;
    v32 = 2112;
    v33 = serverID2;
    _os_log_impl(&dword_2484B2000, v10, v12, "Encountered error %@ when putting item to %@", &v30, 0x16u);
  }

  domain = [errorCopy domain];
  v16 = [domain isEqualToString:*MEMORY[0x277CFDB80]];

  if (v16)
  {
    code = [errorCopy code];
    switch(code)
    {
      case 412:
LABEL_8:
        serverID3 = [context serverID];
        [(MobileCalDAVCalendar *)self setEtag:0 forItemAtURL:serverID3];

        [(MobileCalDAVCalendar *)self _forceRefreshNextSync];
LABEL_12:
        v20 = DALoggingwithCategory();
        if (os_log_type_enabled(v20, v12))
        {
          serverID4 = [context serverID];
          v30 = 138412290;
          v31 = serverID4;
          _os_log_impl(&dword_2484B2000, v20, v12, "Clearing local changes for the item at %@", &v30, 0xCu);
        }

        [(MobileCalDAVCalendar *)self _clearChangesFromItem:context];
        goto LABEL_23;
      case 409:
        v22 = DALoggingwithCategory();
        if (os_log_type_enabled(v22, v12))
        {
          serverID5 = [context serverID];
          v30 = 138412290;
          v31 = serverID5;
          _os_log_impl(&dword_2484B2000, v22, v12, "Received a 409 conflict for the event at %@. Creating a new UUID and trying again.", &v30, 0xCu);
        }

        da_newGUID = [MEMORY[0x277CCACA8] da_newGUID];
        [context calItem];
        CalCalendarItemSetUniqueIdentifier();
        v25 = DALoggingwithCategory();
        v26 = *(v11 + 7);
        if (os_log_type_enabled(v25, v26))
        {
          LOWORD(v30) = 0;
          _os_log_impl(&dword_2484B2000, v25, v26, "Marking calendar as dirty because we just received a 409 conflict error", &v30, 2u);
        }

        self->_isDirty = 1;
        break;
      case 403:
        goto LABEL_8;
    }
  }

  v27 = DALoggingwithCategory();
  if (os_log_type_enabled(v27, v12))
  {
    serverID6 = [context serverID];
    v30 = 138412290;
    v31 = serverID6;
    _os_log_impl(&dword_2484B2000, v27, v12, "Saving local changes to try again later for the item at %@", &v30, 0xCu);
  }

  [(MobileCalDAVCalendar *)self _saveChangesForItem:context];
LABEL_23:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)deleteAction:(id)action completedWithError:(id)error
{
  v28 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  itemsPendingSync = self->_itemsPendingSync;
  actionCopy = action;
  [(NSMutableSet *)itemsPendingSync removeObject:actionCopy];
  [(MobileCalDAVCalendar *)self setNumUploadedElements:[(MobileCalDAVCalendar *)self numUploadedElements]+ 1];
  context = [actionCopy context];

  v10 = DALoggingwithCategory();
  v11 = *(MEMORY[0x277D03988] + 6);
  v12 = os_log_type_enabled(v10, v11);
  if (!errorCopy)
  {
    if (v12)
    {
      v24 = 138412290;
      v25 = context;
      _os_log_impl(&dword_2484B2000, v10, v11, "Delete of item at %@ succeeded without error", &v24, 0xCu);
    }

    goto LABEL_11;
  }

  if (v12)
  {
    v24 = 138412546;
    v25 = errorCopy;
    v26 = 2112;
    v27 = context;
    _os_log_impl(&dword_2484B2000, v10, v11, "Encountered error %@ when deleting item from %@", &v24, 0x16u);
  }

  domain = [errorCopy domain];
  v14 = [domain isEqualToString:*MEMORY[0x277CFDB80]];

  if (v14)
  {
    v15 = 0;
    v16 = [errorCopy code] - 403;
    if (v16 <= 9 && ((1 << v16) & 0x203) != 0)
    {
      [(MobileCalDAVCalendar *)self setEtag:0 forItemAtURL:context];
      [(MobileCalDAVCalendar *)self _forceRefreshNextSync];
LABEL_11:
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  v17 = [(NSMutableDictionary *)self->_deletedCalendarItems objectForKeyedSubscript:context];
  if (v17)
  {
    v18 = DALoggingwithCategory();
    v19 = os_log_type_enabled(v18, v11);
    if (v15)
    {
      if (v19)
      {
        v24 = 138412290;
        v25 = context;
        _os_log_impl(&dword_2484B2000, v18, v11, "Clearing local delete change for item at %@", &v24, 0xCu);
      }

      v20 = MEMORY[0x277CBEB98];
      rowid = [v17 rowid];
      rowid2 = [v20 setWithObject:rowid];
      -[MobileCalDAVCalendar _clearChangesAtIndices:forType:](self, "_clearChangesAtIndices:forType:", rowid2, [v17 entityType]);
    }

    else
    {
      if (v19)
      {
        v24 = 138412290;
        v25 = context;
        _os_log_impl(&dword_2484B2000, v18, v11, "Keeping delete change to try again later for item at %@", &v24, 0xCu);
      }

      rowid = [(MobileCalDAVCalendar *)self changeTracker];
      rowid2 = [v17 rowid];
      [rowid saveChange:objc_msgSend(rowid2 forEntityType:{"intValue"), objc_msgSend(v17, "entityType")}];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)recurrenceSplitAction:(id)action completedWithUpdatedETag:(id)tag updatedScheduleTag:(id)scheduleTag createdURL:(id)l createdETag:(id)eTag createdScheduleTag:(id)createdScheduleTag
{
  itemsPendingSync = self->_itemsPendingSync;
  createdScheduleTagCopy = createdScheduleTag;
  eTagCopy = eTag;
  lCopy = l;
  scheduleTagCopy = scheduleTag;
  tagCopy = tag;
  actionCopy = action;
  [(NSMutableSet *)itemsPendingSync removeObject:actionCopy];
  resourceURL = [actionCopy resourceURL];
  [(MobileCalDAVCalendar *)self setEtag:tagCopy forItemAtURL:resourceURL];

  resourceURL2 = [actionCopy resourceURL];
  [(MobileCalDAVCalendar *)self setScheduleTag:scheduleTagCopy forItemAtURL:resourceURL2];

  uidForCreatedSeries = [actionCopy uidForCreatedSeries];

  [(MobileCalDAVCalendar *)self setURL:lCopy forResourceWithUUID:uidForCreatedSeries];
  [(MobileCalDAVCalendar *)self setEtag:eTagCopy forItemAtURL:lCopy];

  [(MobileCalDAVCalendar *)self setScheduleTag:createdScheduleTagCopy forItemAtURL:lCopy];
}

- (void)recurrenceSplitAction:(id)action failedWithError:(id)error
{
  v28 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  errorCopy = error;
  [(NSMutableSet *)self->_itemsPendingSync removeObject:actionCopy];
  domain = [errorCopy domain];
  v9 = [domain isEqualToString:*MEMORY[0x277CFDB80]];

  if (v9)
  {
    code = [errorCopy code];
    if (code != 401 && (code - 500) > 0xFFFFFFFFFFFFFF9BLL)
    {
      v11 = DALoggingwithCategory();
      v12 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v11, v12))
      {
        resourceURL = [actionCopy resourceURL];
        v24 = 138412546;
        v25 = resourceURL;
        v26 = 2112;
        v27 = errorCopy;
        _os_log_impl(&dword_2484B2000, v11, v12, "Split action for item at URL %@ failed with error %@. Clearing recurrence-set.", &v24, 0x16u);
      }

      resourceURL2 = [actionCopy resourceURL];
      calendarURL = [(MobileCalDAVCalendar *)self calendarURL];
      v16 = [resourceURL2 da_leastInfoStringRepresentationRelativeToParentURL:calendarURL];

      v17 = [(MobileCalDAVCalendar *)self _copyCalItemWithExternalID:v16];
      if (v17)
      {
        v18 = v17;
        v19 = CalEventCopyRecurrenceSet();
        if (v19)
        {
          changeContext = v19;
          CalEventSetRecurrenceSet();
          [(MobileCalDAVCalendar *)self setIsDirty:1];
          CFRelease(v18);
LABEL_16:

          goto LABEL_17;
        }

        CFRelease(v18);
      }

      else
      {
        v22 = DALoggingwithCategory();
        if (os_log_type_enabled(v22, v12))
        {
          v24 = 138412290;
          v25 = v16;
          _os_log_impl(&dword_2484B2000, v22, v12, "Unable to find the item we were trying to split with URL %@.", &v24, 0xCu);
        }
      }

      changeContext = [actionCopy changeContext];
      [(MobileCalDAVCalendar *)self _clearChanges:changeContext];
      goto LABEL_16;
    }
  }

  v16 = DALoggingwithCategory();
  v21 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v16, v21))
  {
    changeContext = [actionCopy resourceURL];
    v24 = 138412546;
    v25 = changeContext;
    v26 = 2112;
    v27 = errorCopy;
    _os_log_impl(&dword_2484B2000, v16, v21, "Split action for item at URL %@ failed with error %@. Error appears to be transient; we will try again next time.", &v24, 0x16u);
    goto LABEL_16;
  }

LABEL_17:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)recurrenceSplitActionsCompletedWithError:(id)error
{
  if ([(MobileCalDAVCalendar *)self isDirty])
  {
    principal = [(MobileCalDAVCalendar *)self principal];
    account = [principal account];
    dbHelper = [account dbHelper];
    accountID = [(MobileCalDAVCalendar *)self accountID];
    [dbHelper calSaveDatabaseAndFlushCachesForAccountID:accountID];
  }
}

- (void)reportJunkAction:(id)action completedWithError:(id)error
{
  v27 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  errorCopy = error;
  [(NSMutableSet *)self->_itemsPendingSync removeObject:actionCopy];
  if (!errorCopy)
  {
    v14 = DALoggingwithCategory();
    v15 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v14, v15))
    {
      resourceURL = [actionCopy resourceURL];
      v23 = 138412290;
      v24 = resourceURL;
      v17 = "Successfully reported URL %@ as junk.";
      v18 = v14;
      v19 = v15;
      v20 = 12;
LABEL_11:
      _os_log_impl(&dword_2484B2000, v18, v19, v17, &v23, v20);
    }

LABEL_12:

    changeContext = [actionCopy changeContext];
    [(MobileCalDAVCalendar *)self _clearChanges:changeContext];
    goto LABEL_13;
  }

  domain = [errorCopy domain];
  v9 = [domain isEqualToString:*MEMORY[0x277CFDB80]];

  if (v9 && ([errorCopy code] - 500) > 0xFFFFFFFFFFFFFF9BLL)
  {
    v14 = DALoggingwithCategory();
    v21 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v14, v21))
    {
      resourceURL = [actionCopy resourceURL];
      v23 = 138412546;
      v24 = resourceURL;
      v25 = 2112;
      v26 = errorCopy;
      v17 = "Reporting junk for URL %@ failed with error %@. Will not try again.";
      v18 = v14;
      v19 = v21;
      v20 = 22;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v10 = DALoggingwithCategory();
  v11 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v10, v11))
  {
    resourceURL2 = [actionCopy resourceURL];
    v23 = 138412546;
    v24 = resourceURL2;
    v25 = 2112;
    v26 = errorCopy;
    _os_log_impl(&dword_2484B2000, v10, v11, "Reporting junk for URL %@ failed with error %@. Trying again later.", &v23, 0x16u);
  }

  changeContext = [actionCopy changeContext];
  [(MobileCalDAVCalendar *)self _saveChanges:changeContext];
LABEL_13:

  v22 = *MEMORY[0x277D85DE8];
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

- (void)clearShareeActions
{
  [(MobileCalDAVCalendar *)self clearChangesForEntityType:15];

  [(MobileCalDAVCalendar *)self setShareeActions:0];
}

- (void)_addShareeWithRowID:(id)d toDictionaryIfNeeded:(id)needed
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  neededCopy = needed;
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  dbHelper = [account dbHelper];
  accountID = [(MobileCalDAVCalendar *)self accountID];
  [dbHelper calDatabaseForAccountID:accountID];

  v12 = [neededCopy objectForKeyedSubscript:dCopy];

  if (!v12)
  {
    [dCopy intValue];
    v13 = CalDatabaseCopyShareeWithUID();
    if (v13)
    {
      v14 = v13;
      v15 = [objc_alloc(MEMORY[0x277CF6FE0]) initWithCalSharee:v13];
      if (v15)
      {
        [neededCopy setObject:v15 forKeyedSubscript:dCopy];
      }

      CFRelease(v14);
    }

    else
    {
      v16 = DALoggingwithCategory();
      v17 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v16, v17))
      {
        v19[0] = 67109120;
        v19[1] = [dCopy intValue];
        _os_log_impl(&dword_2484B2000, v16, v17, "Could not get an owning sharee with uid %d", v19, 8u);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_collectShareeActions
{
  v56 = *MEMORY[0x277D85DE8];
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  wasMigrated = [account wasMigrated];

  if (!wasMigrated)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    principal2 = [(MobileCalDAVCalendar *)self principal];
    account2 = [principal2 account];
    dbHelper = [account2 dbHelper];
    accountID = [(MobileCalDAVCalendar *)self accountID];
    [dbHelper calDatabaseForAccountID:accountID];

    if ([(MobileCalDAVCalendar *)self getCalCalendar])
    {
      theDict = 0;
      if (CalDatabaseCopyShareeChangesInCalendar() == -1)
      {
        v13 = dictionary2;
LABEL_30:

        v35 = *MEMORY[0x277D85DE8];
        return;
      }

      v14 = DALoggingwithCategory();
      v15 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v14, v15))
      {
        *buf = 134217984;
        selfCopy2 = 0;
        _os_log_impl(&dword_2484B2000, v14, v15, "Gathering modified sharees; found %li modified sharees", buf, 0xCu);
      }

      selfCopy = self;
      array = [MEMORY[0x277CBEB18] array];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      allValues = [dictionary2 allValues];
      v17 = [(__CFArray *)allValues countByEnumeratingWithState:&v45 objects:v53 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v46;
        v20 = *MEMORY[0x277CF6F90];
        v21 = *MEMORY[0x277CF6F98];
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v46 != v19)
            {
              objc_enumerationMutation(allValues);
            }

            v23 = *(*(&v45 + 1) + 8 * i);
            v24 = objc_alloc(MEMORY[0x277CFDB90]);
            v51[1] = v21;
            v52[0] = v23;
            v51[0] = v20;
            v25 = [MEMORY[0x277CCABB0] numberWithBool:0];
            v52[1] = v25;
            v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];
            v27 = [v24 initWithAction:2 context:v26];

            [(NSArray *)array addObject:v27];
          }

          v18 = [(__CFArray *)allValues countByEnumeratingWithState:&v45 objects:v53 count:16];
        }

        while (v18);
      }

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      allValues2 = [dictionary allValues];
      v29 = [allValues2 countByEnumeratingWithState:&v41 objects:v50 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v42;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v42 != v31)
            {
              objc_enumerationMutation(allValues2);
            }

            v33 = [objc_alloc(MEMORY[0x277CFDB90]) initWithAction:1 context:*(*(&v41 + 1) + 8 * j)];
            [(NSArray *)array addObject:v33];
          }

          v30 = [allValues2 countByEnumeratingWithState:&v41 objects:v50 count:16];
        }

        while (v30);
      }

      shareeActions = selfCopy->_shareeActions;
      selfCopy->_shareeActions = array;
    }

    else
    {
      v11 = DALoggingwithCategory();
      v12 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v11, v12))
      {
        *buf = 138412290;
        selfCopy2 = self;
        _os_log_impl(&dword_2484B2000, v11, v12, "Could not find a calendar with that matched %@", buf, 0xCu);
      }
    }

    v13 = dictionary2;
    goto LABEL_30;
  }

  v40 = objc_opt_new();
  [(MobileCalDAVCalendar *)self setShareeActions:?];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)prepareSyncActionsWithCompletionBlock:(id)block
{
  blockCopy = block;
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];

  if (![account wasMigrated])
  {
    v33 = account;
    v34 = blockCopy;
    principal2 = [(MobileCalDAVCalendar *)self principal];
    account2 = [principal2 account];
    dbHelper = [account2 dbHelper];
    accountID = [(MobileCalDAVCalendar *)self accountID];
    [dbHelper calDatabaseForAccountID:accountID];

    LODWORD(principal2) = CalDatabaseGetSequenceNumber();
    [(MobileCalDAVCalendar *)self createSyncActions];
    [(MobileCalDAVCalendar *)self generateICSForActions];
    if (principal2 != CalDatabaseGetSequenceNumber())
    {
      selfCopy = self;
      do
      {
        principal3 = [(MobileCalDAVCalendar *)self principal];
        account3 = [principal3 account];
        serverVersion = [account3 serverVersion];
        supportsCalendarRecurrenceSplit = [serverVersion supportsCalendarRecurrenceSplit];

        if (!supportsCalendarRecurrenceSplit)
        {
          break;
        }

        copyRecurrenseSplitItems = [(MobileCalDAVCalendar *)self copyRecurrenseSplitItems];
        v16 = [(MobileCalDAVCalendar *)self _recurrenceSplitActionsForItems:copyRecurrenseSplitItems alreadySentItems:0];
        v17 = [v16 count];
        if (v17 == [(NSArray *)self->_recurrenceSplitActions count])
        {
          if (!v17)
          {

            break;
          }

          v35 = copyRecurrenseSplitItems;
          v18 = 0;
          v19 = 0;
          v37 = v17;
          do
          {
            v20 = [v16 objectAtIndexedSubscript:v19];
            v21 = [(NSArray *)self->_recurrenceSplitActions objectAtIndexedSubscript:v19];
            resourceURL = [v20 resourceURL];
            resourceURL2 = [v21 resourceURL];
            if ([resourceURL isEqual:resourceURL2])
            {
              recurrenceDate = [v20 recurrenceDate];
              [v21 recurrenceDate];
              v26 = v25 = v16;
              v27 = [recurrenceDate isEqual:v26] ^ 1;

              v16 = v25;
              v17 = v37;

              self = selfCopy;
              v18 |= v27;
            }

            else
            {
              v18 = 1;
            }

            ++v19;
          }

          while (v17 != v19);

          if ((v18 & 1) == 0)
          {
            break;
          }
        }

        else
        {
        }

        CalDatabaseRevert();
        SequenceNumber = CalDatabaseGetSequenceNumber();
        [(MobileCalDAVCalendar *)self createSyncActions];
        [(MobileCalDAVCalendar *)self generateICSForActions];
      }

      while (SequenceNumber != CalDatabaseGetSequenceNumber());
    }

    account = v33;
    blockCopy = v34;
    if ([(NSArray *)self->_syncActions count]&& ct_green_tea_logging_enabled())
    {
      backingAccount = [v33 backingAccount];
      isICloudAccount = [backingAccount isICloudAccount];

      if (isICloudAccount)
      {
        v31 = DALoggingwithCategory();
        v32 = *(MEMORY[0x277D03988] + 7);
        if (os_log_type_enabled(v31, v32))
        {
          *buf = 0;
          _os_log_impl(&dword_2484B2000, v31, v32, "Skipping greentea log for iCloud account", buf, 2u);
        }
      }

      else
      {
        DAGreenTeaLog();
      }
    }
  }

  blockCopy[2](blockCopy, self);
}

- (void)createSyncActions
{
  v134 = *MEMORY[0x277D85DE8];
  v108 = objc_opt_new();
  v3 = objc_opt_new();
  itemsPendingSync = self->_itemsPendingSync;
  self->_itemsPendingSync = v3;

  v125 = 0;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  copyDeletedItems = [(MobileCalDAVCalendar *)self copyDeletedItems];
  obj = [copyDeletedItems allKeys];
  v5 = [obj countByEnumeratingWithState:&v121 objects:v133 count:16];
  v6 = *(MEMORY[0x277D03988] + 6);
  selfCopy = self;
  if (v5)
  {
    v7 = v5;
    v8 = *v122;
    type = *(MEMORY[0x277D03988] + 4);
    v9 = 0x277CBE000uLL;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v122 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v121 + 1) + 8 * i);
        if (v11)
        {
          v12 = *(v9 + 2920);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v13 = DALoggingwithCategory();
            if (os_log_type_enabled(v13, v6))
            {
              *buf = 138412290;
              v132 = v11;
              _os_log_impl(&dword_2484B2000, v13, v6, "Sending up a delete for the item at URL %@", buf, 0xCu);
            }

            if (!self->_deletedCalendarItems)
            {
              v14 = objc_opt_new();
              deletedCalendarItems = self->_deletedCalendarItems;
              self->_deletedCalendarItems = v14;
            }

            v16 = [copyDeletedItems objectForKeyedSubscript:v11];
            v17 = [v16 objectForKeyedSubscript:@"ChangeRowid"];

            v18 = [copyDeletedItems objectForKeyedSubscript:v11];
            v19 = [v18 objectForKeyedSubscript:@"EntityType"];
            selfCopy2 = self;
            intValue = [v19 intValue];

            if (intValue)
            {
              v22 = intValue;
            }

            else
            {
              v22 = 2;
            }

            calendarURL = [(MobileCalDAVCalendar *)selfCopy2 calendarURL];
            v24 = [v11 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:calendarURL];

            if (v24)
            {
              if (v17)
              {
                v25 = objc_opt_new();
                [v25 setRowid:v17];
                [v25 setEntityType:v22];
                [(NSMutableDictionary *)selfCopy->_deletedCalendarItems setObject:v25 forKeyedSubscript:v24];
              }

              v26 = [objc_alloc(MEMORY[0x277CFDB90]) initWithAction:2 context:v24];
              if (v22 == 2)
              {
                v129 = @"CalDAVChangeEvent";
                v27 = [MEMORY[0x277CBEB98] setWithObject:v17];
                v130 = v27;
                v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
                [v26 setChangeContext:v28];
              }

              [(NSArray *)v108 addObject:v26];
              self = selfCopy;
            }

            else
            {
              v29 = DALoggingwithCategory();
              if (os_log_type_enabled(v29, type))
              {
                *buf = 138412290;
                v132 = v11;
                _os_log_impl(&dword_2484B2000, v29, type, "Couldn't get a URL for the delete of %@", buf, 0xCu);
              }

              v26 = [MEMORY[0x277CBEB98] setWithObject:v17];
              self = selfCopy;
              [(MobileCalDAVCalendar *)selfCopy _clearChangesAtIndices:v26 forType:v22];
            }

            v9 = 0x277CBE000;
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v121 objects:v133 count:16];
    }

    while (v7);
  }

  v30 = DALoggingwithCategory();
  if (os_log_type_enabled(v30, v6))
  {
    v31 = [copyDeletedItems count];
    *buf = 134217984;
    v132 = v31;
    _os_log_impl(&dword_2484B2000, v30, v6, "Found %lu deleted items", buf, 0xCu);
  }

  v32 = objc_opt_new();
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  serverVersion = [account serverVersion];
  supportsCalendarRecurrenceSplit = [serverVersion supportsCalendarRecurrenceSplit];

  if (supportsCalendarRecurrenceSplit)
  {
    copyRecurrenseSplitItems = [(MobileCalDAVCalendar *)self copyRecurrenseSplitItems];
    v38 = [(MobileCalDAVCalendar *)self _recurrenceSplitActionsForItems:copyRecurrenseSplitItems alreadySentItems:v32];
    v39 = DALoggingwithCategory();
    if (os_log_type_enabled(v39, v6))
    {
      v40 = [(NSArray *)v38 count];
      *buf = 134217984;
      v132 = v40;
      _os_log_impl(&dword_2484B2000, v39, v6, "Found %lu split items", buf, 0xCu);
    }

    recurrenceSplitActions = self->_recurrenceSplitActions;
    self->_recurrenceSplitActions = v38;
    v42 = v38;

    [(NSMutableSet *)self->_itemsPendingSync addObjectsFromArray:v42];
  }

  v43 = [v32 mutableCopy];
  copyAddedItems = [(MobileCalDAVCalendar *)self copyAddedItems];
  v97 = v43;
  v44 = [MobileCalDAVCalendar _createActionsForItems:"_createActionsForItems:withAction:alreadySentItems:createServerIDs:shouldSave:" withAction:? alreadySentItems:? createServerIDs:? shouldSave:?];
  v45 = DALoggingwithCategory();
  if (os_log_type_enabled(v45, v6))
  {
    v46 = [v44 count];
    *buf = 134217984;
    v132 = v46;
    _os_log_impl(&dword_2484B2000, v45, v6, "Found %lu added items", buf, 0xCu);
  }

  v95 = v44;
  [(NSArray *)v108 addObjectsFromArray:v44];
  v99 = v32;
  [v97 minusSet:v32];
  copyModifiedItems = [(MobileCalDAVCalendar *)self copyModifiedItems];
  principal2 = [(MobileCalDAVCalendar *)self principal];
  account2 = [principal2 account];
  serverVersion2 = [account2 serverVersion];
  supportsCalendarRecurrenceSplit2 = [serverVersion2 supportsCalendarRecurrenceSplit];

  if (supportsCalendarRecurrenceSplit2)
  {
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v52 = copyModifiedItems;
    v53 = [v52 countByEnumeratingWithState:&v117 objects:v128 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v118;
      do
      {
        for (j = 0; j != v54; ++j)
        {
          if (*v118 != v55)
          {
            objc_enumerationMutation(v52);
          }

          v57 = *(*(&v117 + 1) + 8 * j);
          [v57 calItem];
          v58 = CalEntityCopyRecordID();
          if ([v99 containsObject:v58])
          {
            [v57 setProhibitLocalCreationOfServerID:1];
          }

          if (v58)
          {
            CFRelease(v58);
          }
        }

        v54 = [v52 countByEnumeratingWithState:&v117 objects:v128 count:16];
      }

      while (v54);
    }
  }

  principal3 = [(MobileCalDAVCalendar *)self principal];
  account3 = [principal3 account];
  serverVersion3 = [account3 serverVersion];
  supportsCalendarAudit = [serverVersion3 supportsCalendarAudit];

  if (supportsCalendarAudit)
  {
    v63 = v97;
    v64 = [(MobileCalDAVCalendar *)self _actionsForJunkItemsInModifiedItems:copyModifiedItems alreadySentItems:v97];
  }

  else
  {
    v64 = 0;
    v63 = v97;
  }

  reportJunkActions = self->_reportJunkActions;
  self->_reportJunkActions = v64;

  v66 = [(MobileCalDAVCalendar *)self _createActionsForItems:copyModifiedItems withAction:1 alreadySentItems:v63 createServerIDs:1 shouldSave:&v125];
  v67 = DALoggingwithCategory();
  if (os_log_type_enabled(v67, v6))
  {
    v68 = [v66 count];
    *buf = 134217984;
    v132 = v68;
    _os_log_impl(&dword_2484B2000, v67, v6, "Found %lu modified items", buf, 0xCu);
  }

  v94 = v66;
  [(NSArray *)v108 addObjectsFromArray:v66];
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v100 = copyModifiedItems;
  v102 = [v100 countByEnumeratingWithState:&v113 objects:v127 count:16];
  v69 = 0;
  if (v102)
  {
    v101 = *v114;
    v70 = *MEMORY[0x277CF78F0];
    do
    {
      for (k = 0; k != v102; ++k)
      {
        if (*v114 != v101)
        {
          objc_enumerationMutation(v100);
        }

        v72 = *(*(&v113 + 1) + 8 * k);
        if (([v72 statusChanged] & 1) != 0 || objc_msgSend(v72, "invitationStatusCleared"))
        {
          uniqueIdentifier = [v72 uniqueIdentifier];
          [v72 calItem];
          CalEventGetOriginalStartDate();
          v75 = v74 == 0.0 || v74 == v70;
          v106 = k;
          if (!v75)
          {
            v76 = CalGetRecurrenceUIDFromRealUID();

            uniqueIdentifier = v76;
          }

          typea = uniqueIdentifier;
          v77 = [(MobileCalDAVCalendar *)self removeInvitationsForItemWithUniqueIdentifier:uniqueIdentifier];
          if (!v69)
          {
            v69 = objc_opt_new();
          }

          v111 = 0u;
          v112 = 0u;
          v109 = 0u;
          v110 = 0u;
          v78 = v77;
          v79 = [v78 countByEnumeratingWithState:&v109 objects:v126 count:16];
          if (v79)
          {
            v80 = v79;
            v81 = *v110;
            do
            {
              for (m = 0; m != v80; ++m)
              {
                if (*v110 != v81)
                {
                  objc_enumerationMutation(v78);
                }

                v83 = *(*(&v109 + 1) + 8 * m);
                if (([v69 containsObject:v83] & 1) == 0)
                {
                  v84 = DALoggingwithCategory();
                  if (os_log_type_enabled(v84, v6))
                  {
                    absoluteString = [v83 absoluteString];
                    *buf = 138412290;
                    v132 = absoluteString;
                    _os_log_impl(&dword_2484B2000, v84, v6, "Creating a delete for the invitation at %@", buf, 0xCu);
                  }

                  v86 = [objc_alloc(MEMORY[0x277CFDB90]) initWithAction:2 context:v83];
                  originatingChangeItems = [v72 originatingChangeItems];
                  [v86 setChangeContext:originatingChangeItems];

                  [(NSArray *)v108 addObject:v86];
                  [v69 addObject:v83];
                }
              }

              v80 = [v78 countByEnumeratingWithState:&v109 objects:v126 count:16];
            }

            while (v80);
          }

          self = selfCopy;
          k = v106;
        }
      }

      v102 = [v100 countByEnumeratingWithState:&v113 objects:v127 count:16];
    }

    while (v102);
  }

  _copyDeletedEventActions = [(MobileCalDAVCalendar *)self _copyDeletedEventActions];
  v89 = DALoggingwithCategory();
  if (os_log_type_enabled(v89, v6))
  {
    v90 = [_copyDeletedEventActions count];
    *buf = 134217984;
    v132 = v90;
    _os_log_impl(&dword_2484B2000, v89, v6, "Found %lu deleted event actions", buf, 0xCu);
  }

  [(NSArray *)v108 addObjectsFromArray:_copyDeletedEventActions];
  [(NSMutableSet *)self->_itemsPendingSync addObjectsFromArray:v108];
  syncActions = self->_syncActions;
  self->_syncActions = v108;
  v92 = v108;

  v93 = *MEMORY[0x277D85DE8];
}

- (void)generateICSForActions
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_syncActions;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 action] == 1)
        {
          context = [v7 context];
          [context cacheDataPayload];
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)prepareMergeSyncActionsWithCompletionBlock:(id)block
{
  v89 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v81 = 0;
  v3 = DALoggingwithCategory();
  v4 = MEMORY[0x277D03988];
  v5 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v5))
  {
    *buf = 0;
    _os_log_impl(&dword_2484B2000, v3, v5, "Preparing merge sync actions...", buf, 2u);
  }

  type = v5;

  selfCopy6 = self;
  itemsPendingSync = self->_itemsPendingSync;
  self->_itemsPendingSync = 0;

  v62 = objc_opt_new();
  v64 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  principal = [(MobileCalDAVCalendar *)self principal];
  account = [principal account];
  wasMigrated = [account wasMigrated];

  if (wasMigrated)
  {
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    obj = [(MobileCalDAVCalendar *)self copyAllItems];
    v13 = [obj countByEnumeratingWithState:&v77 objects:v88 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v78;
      v63 = *(v4 + 5);
      do
      {
        v16 = 0;
        selfCopy4 = self;
        do
        {
          if (*v78 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v77 + 1) + 8 * v16);
          if (![v18 calItem])
          {
            principal2 = [(MobileCalDAVCalendar *)selfCopy4 principal];
            account2 = [principal2 account];
            backingAccount = [account2 backingAccount];
            [v18 loadLocalItemWithAccount:backingAccount];
          }

          if ([v18 calItem])
          {
            [v18 calItem];
            v22 = CalCalendarItemCopyExternalModificationTag();
            if (!v22)
            {
              [v18 setIsMigrate:1];
              [v18 calItem];
              if ((CalEventIsDetached() & 1) == 0)
              {
                serverID = [v18 serverID];

                v24 = DALoggingwithCategory();
                v25 = os_log_type_enabled(v24, type);
                if (serverID)
                {
                  if (v25)
                  {
                    uniqueIdentifier = [v18 uniqueIdentifier];
                    serverID2 = [v18 serverID];
                    *buf = 138412546;
                    v85 = uniqueIdentifier;
                    v86 = 2112;
                    v87 = serverID2;
                    _os_log_impl(&dword_2484B2000, v24, type, "Found %@ which exists on the server at %@", buf, 0x16u);

                    selfCopy4 = self;
                  }

                  [v64 addObject:v18];
                }

                else
                {
                  if (v25)
                  {
                    uniqueIdentifier2 = [v18 uniqueIdentifier];
                    *buf = 138412290;
                    v85 = uniqueIdentifier2;
                    _os_log_impl(&dword_2484B2000, v24, type, "Found %@ which does not exist on the server", buf, 0xCu);
                  }

                  [v18 calItem];
                  principal3 = [(MobileCalDAVCalendar *)selfCopy4 principal];
                  account3 = [principal3 account];
                  IsSelfOrganizedWithScheduleAgentClient = CalCalendarItemIsSelfOrganizedWithScheduleAgentClient();

                  if (IsSelfOrganizedWithScheduleAgentClient)
                  {
                    v32 = DALoggingwithCategory();
                    if (os_log_type_enabled(v32, v63))
                    {
                      uniqueIdentifier3 = [v18 uniqueIdentifier];
                      *buf = 138412290;
                      v85 = uniqueIdentifier3;
                      _os_log_impl(&dword_2484B2000, v32, v63, "Skipping add for item %@ because it is self organized with a client schedule agent", buf, 0xCu);
                    }
                  }

                  else
                  {
                    [v62 addObject:v18];
                  }

                  selfCopy4 = self;
                }
              }
            }
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [obj countByEnumeratingWithState:&v77 objects:v88 count:16];
      }

      while (v14);
    }

    selfCopy6 = self;
  }

  obja = objc_opt_new();
  bulkRequests = [(MobileCalDAVCalendar *)selfCopy6 bulkRequests];
  v35 = [bulkRequests objectForKeyedSubscript:*MEMORY[0x277CFDF70]];
  if (v35)
  {
    principal4 = [(MobileCalDAVCalendar *)selfCopy6 principal];
    account4 = [principal4 account];
    v38 = [account4 wasMigrated] ^ 1;

    selfCopy6 = self;
  }

  else
  {
    v38 = 1;
  }

  v39 = [(MobileCalDAVCalendar *)selfCopy6 _createActionsForItems:v62 withAction:0 alreadySentItems:obja createServerIDs:v38 shouldSave:&v81];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v40 = [v39 countByEnumeratingWithState:&v73 objects:v83 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v74;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v74 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v73 + 1) + 8 * i);
        context = [v44 context];
        uniqueIdentifier4 = [context uniqueIdentifier];
        [v8 setObject:v44 forKeyedSubscript:uniqueIdentifier4];
      }

      v41 = [v39 countByEnumeratingWithState:&v73 objects:v83 count:16];
    }

    while (v41);
  }

  v47 = DALoggingwithCategory();
  if (os_log_type_enabled(v47, type))
  {
    v48 = [v39 count];
    *buf = 134217984;
    v85 = v48;
    _os_log_impl(&dword_2484B2000, v47, type, "Found %lu adds for our merge sync", buf, 0xCu);
  }

  v49 = [(MobileCalDAVCalendar *)self _createActionsForItems:v64 withAction:1 alreadySentItems:obja createServerIDs:v38 shouldSave:&v81];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v50 = [v49 countByEnumeratingWithState:&v69 objects:v82 count:16];
  if (v50)
  {
    v51 = v50;
    v52 = *v70;
    do
    {
      for (j = 0; j != v51; ++j)
      {
        if (*v70 != v52)
        {
          objc_enumerationMutation(v49);
        }

        v54 = *(*(&v69 + 1) + 8 * j);
        context2 = [v54 context];
        serverID3 = [context2 serverID];
        [v9 setObject:v54 forKeyedSubscript:serverID3];
      }

      v51 = [v49 countByEnumeratingWithState:&v69 objects:v82 count:16];
    }

    while (v51);
  }

  v57 = DALoggingwithCategory();
  if (os_log_type_enabled(v57, type))
  {
    v58 = [v49 count];
    *buf = 134217984;
    v85 = v58;
    _os_log_impl(&dword_2484B2000, v57, type, "Found %lu mods for our merge sync", buf, 0xCu);
  }

  if ([v39 count] || objc_msgSend(v49, "count"))
  {
    DAGreenTeaLog();
  }

  [(MobileCalDAVCalendar *)self setUuidsToAddActions:v8, blockCopy];
  [(MobileCalDAVCalendar *)self setHrefsToModDeleteActions:v9];
  (v61)[2](v61, self);

  v59 = *MEMORY[0x277D85DE8];
}

- (void)recordDiagnosticsForAccountSync:(id)sync
{
  syncCopy = sync;
  calendarCollectionSyncDiagnostics = [(MobileCalDAVCalendar *)self calendarCollectionSyncDiagnostics];
  [syncCopy addCalendarCollectionSync:calendarCollectionSyncDiagnostics];
}

- (void)flushCaches
{
  uniqueIdentifierToRecordIDMap = [(MobileCalDAVCalendar *)self uniqueIdentifierToRecordIDMap];
  [uniqueIdentifierToRecordIDMap removeAllObjects];

  uRLToRecordIDMap = [(MobileCalDAVCalendar *)self URLToRecordIDMap];
  [uRLToRecordIDMap removeAllObjects];

  uRLToEtagMap = [(MobileCalDAVCalendar *)self URLToEtagMap];
  [uRLToEtagMap removeAllObjects];

  [(MobileCalDAVCalendar *)self setSyncActions:0];
  [(MobileCalDAVCalendar *)self setShareeActions:0];
  [(MobileCalDAVCalendar *)self setUuidsToAddActions:0];
  [(MobileCalDAVCalendar *)self setHrefsToModDeleteActions:0];
  +[MobileCalDAVCalendar clearCalendarUIDCache];
  deletedExternalIDs = self->_deletedExternalIDs;
  self->_deletedExternalIDs = 0;
}

- (void)syncDidFinishWithError:(id)error
{
  v30 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (errorCopy)
  {
    [(MobileCalDAVCalendar *)self recordCalendarError:errorCopy ofType:4];
  }

  else
  {
    [(MobileCalDAVCalendar *)self clearCalendarErrorOfType:4];
  }

  if (RecordCalendarDiagnostics())
  {
    calendarCollectionSyncDiagnostics = [(MobileCalDAVCalendar *)self calendarCollectionSyncDiagnostics];
    title = [(MobileCalDAVCalendar *)self title];
    [calendarCollectionSyncDiagnostics setCalendarTitle:title];

    [(MobileCalDAVCalendar *)self getCalCalendar];
    v7 = CalCalendarCopyExternalID();
    [calendarCollectionSyncDiagnostics setCalendarExternalIdentifier:v7];
  }

  [(MobileCalDAVCalendar *)self flushCaches];
  if (errorCopy)
  {
    v8 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = [(NSMutableSet *)self->_itemsPendingSync count];
      *buf = 138412546;
      selfCopy2 = self;
      v28 = 2048;
      v29 = v10;
      _os_log_impl(&dword_2484B2000, v8, v9, "Sync of calendar %@ failed. Saving changes for %lu items that we did not attempt to sync.", buf, 0x16u);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = self->_itemsPendingSync;
    v12 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          changeContext = [*(*(&v21 + 1) + 8 * i) changeContext];
          [(MobileCalDAVCalendar *)self _saveChanges:changeContext];
        }

        v13 = [(NSMutableSet *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

LABEL_20:

    goto LABEL_21;
  }

  if ([(NSMutableSet *)self->_itemsPendingSync count])
  {
    v11 = DALoggingwithCategory();
    v17 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(&v11->super.super, v17))
    {
      v18 = [(NSMutableSet *)self->_itemsPendingSync count];
      *buf = 138412546;
      selfCopy2 = self;
      v28 = 2048;
      v29 = v18;
      _os_log_impl(&dword_2484B2000, &v11->super.super, v17, "The sync of calendar %@ claims to have finished without error, but there are still %lu items pending sync!", buf, 0x16u);
    }

    goto LABEL_20;
  }

LABEL_21:
  itemsPendingSync = self->_itemsPendingSync;
  self->_itemsPendingSync = 0;

  v20 = *MEMORY[0x277D85DE8];
}

- (CalDAVPrincipal)principal
{
  WeakRetained = objc_loadWeakRetained(&self->_principal);

  return WeakRetained;
}

@end