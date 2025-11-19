@interface MobileCalDAVCalendar
+ (BOOL)clearCalendarChanges:(__CFArray *)a3 forPrincipal:(id)a4 changeTrackingClient:(id)a5;
+ (BOOL)shouldSkipCalendar:(void *)a3 withChangeType:(int)a4;
+ (__CFArray)gatherCalendarChangesInPrincipal:(id)a3 calendars:(id)a4 adds:(id *)a5 modifies:(id *)a6 deletes:(id *)a7 changeTracker:(id)a8;
+ (id)calURLToUIDCache;
+ (id)calendarWithCalCalendar:(void *)a3 principal:(id)a4;
+ (int)cachedCalendarUIDForURLString:(id)a3;
+ (void)clearCalendarUIDCache;
+ (void)processAddedCalendar:(id)a3;
+ (void)processModifiedCalendar:(id)a3 oldFlags:(unsigned int)a4 newFlags:(unsigned int)a5;
+ (void)removeUIDCacheEntryForCalendarURLString:(id)a3;
- (BOOL)_isDeleted:(id)a3;
- (BOOL)_removeCalendarItemWithURL:(id)a3;
- (BOOL)_shouldRecordError:(id)a3;
- (BOOL)canBePublished;
- (BOOL)canBeShared;
- (BOOL)deleteResourcesAtURLs:(id)a3;
- (BOOL)hasCalendarErrorOfType:(unint64_t)a3;
- (BOOL)hasCalendarUserAddressEquivalentToURL:(id)a3;
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
- (BOOL)setEtag:(id)a3 forItemAtURL:(id)a4;
- (BOOL)setScheduleTag:(id)a3 forItemAtURL:(id)a4;
- (BOOL)setURL:(id)a3 forResourceWithUUID:(id)a4;
- (BOOL)updateResourcesFromServer:(id)a3;
- (CalDAVPrincipal)principal;
- (CalDiagCalendarCollectionSync)calendarCollectionSyncDiagnostics;
- (CalRecordID)recordIDForExternalIdentifier:(id)a3;
- (CalRecordID)recordIDForUniqueIdentifier:(id)a3;
- (MobileCalDAVCalendar)initWithCalendarURL:(id)a3 calendar:(void *)a4 principal:(id)a5 title:(id)a6;
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
- (id)_actionsForJunkItemsInModifiedItems:(id)a3 alreadySentItems:(id)a4;
- (id)_calExternalRep;
- (id)_copyDeletedEventActions;
- (id)_createActionsForItems:(id)a3 withAction:(int)a4 alreadySentItems:(id)a5 createServerIDs:(BOOL)a6 shouldSave:(BOOL *)a7;
- (id)_itemPropertyDictForItemAtIndex:(int64_t)a3 withChangedIDs:(__CFArray *)a4 withChangedRowids:(__CFArray *)a5 withExternalIDs:(__CFArray *)a6 uniqueIdentifiers:(__CFArray *)a7 significantAttributeChanges:(__CFArray *)a8 oldCalendarIDs:(__CFArray *)a9 entityType:(int)a10;
- (id)_preferredAddress;
- (id)_recurrenceSplitActionsForItems:(id)a3 alreadySentItems:(id)a4;
- (id)calendarUserAddresses;
- (id)copyAddedItems;
- (id)copyAllItems;
- (id)copyDeletedItems;
- (id)copyModifiedItems;
- (id)copyRecurrenseSplitItems;
- (id)etagsForItemURLs:(id)a3;
- (id)removeInvitationsForItemWithUniqueIdentifier:(id)a3;
- (int)order;
- (int)sharingStatus;
- (int64_t)maxAttendees;
- (void)_addAddedItemsOfType:(int)a3 toArray:(id)a4;
- (void)_addAddedRecurrenceSplitItemsToArray:(id)a3;
- (void)_addShareeWithRowID:(id)a3 toDictionaryIfNeeded:(id)a4;
- (void)_clearChanges:(id)a3 shouldClearAttachmentChanges:(BOOL)a4;
- (void)_clearChangesAtIndices:(id)a3 forType:(int)a4;
- (void)_clearChangesFromItem:(id)a3;
- (void)_clearExistingHTTPErrorForCalItem:(void *)a3;
- (void)_collectShareeActions;
- (void)_copyCalItemWithExternalID:(id)a3;
- (void)_copyCalItemWithUniqueIdentifier:(id)a3 inCalendar:(void *)a4 orStore:(void *)a5;
- (void)_dropCalStoreContext;
- (void)_gatherDeletedChanges:(void *)a3 inDictionary:(id)a4;
- (void)_gatherModifiedEventsInArray:(id)a3;
- (void)_gatherModifiedItemsFromCalChangesCall:(void *)a3 forType:(id)a4 inArray:(id)a5;
- (void)_gatherModifiedTasksInArray:(id)a3;
- (void)_recordError:(id)a3 forCalItem:(void *)a4;
- (void)_saveChanges:(id)a3;
- (void)_saveChangesForItem:(id)a3;
- (void)_setSupportsEvents:(BOOL)a3 supportsTodos:(BOOL)a4;
- (void)_updateCalendarInfo;
- (void)clearCalendarErrorOfType:(unint64_t)a3;
- (void)clearChangesForEntityType:(int)a3;
- (void)clearEventChanges;
- (void)clearShareeActions;
- (void)correctLocationPredictionStateForRecurrenceSets:(id)a3 calDB:(CalDatabase *)a4;
- (void)createSyncActions;
- (void)dealloc;
- (void)deleteAction:(id)a3 completedWithError:(id)a4;
- (void)deleteCalendar;
- (void)flushCaches;
- (void)generateICSForActions;
- (void)getCalCalendar;
- (void)initCalCalendarWithTitle:(id)a3;
- (void)prepareMergeSyncActionsWithCompletionBlock:(id)a3;
- (void)prepareSyncActionsWithCompletionBlock:(id)a3;
- (void)putAction:(id)a3 completedWithError:(id)a4;
- (void)recordCalendarError:(id)a3 ofType:(unint64_t)a4;
- (void)recordDiagnosticsForAccountSync:(id)a3;
- (void)recurrenceSplitAction:(id)a3 completedWithUpdatedETag:(id)a4 updatedScheduleTag:(id)a5 createdURL:(id)a6 createdETag:(id)a7 createdScheduleTag:(id)a8;
- (void)recurrenceSplitAction:(id)a3 failedWithError:(id)a4;
- (void)recurrenceSplitActionsCompletedWithError:(id)a3;
- (void)reportJunkAction:(id)a3 completedWithError:(id)a4;
- (void)setBulkRequests:(id)a3;
- (void)setCalendarURL:(id)a3;
- (void)setCanBePublished:(BOOL)a3;
- (void)setCanBeShared:(BOOL)a3;
- (void)setColor:(id)a3;
- (void)setCtag:(id)a3;
- (void)setExternalIdentifier:(id)a3 forRecordID:(CalRecordID *)a4;
- (void)setGuid:(id)a3;
- (void)setIsAffectingAvailability:(BOOL)a3;
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
- (void)setMaxAttendees:(int64_t)a3;
- (void)setNewlyAddedItems:(id)a3;
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
- (void)setUniqueIdentifier:(id)a3 forRecordID:(CalRecordID *)a4;
- (void)syncDidFinishWithError:(id)a3;
@end

@implementation MobileCalDAVCalendar

+ (id)calendarWithCalCalendar:(void *)a3 principal:(id)a4
{
  v5 = a4;
  if (a3)
  {
    if (CalCalendarGetSharingStatus() == 3)
    {
      a3 = 0;
      goto LABEL_13;
    }

    v6 = CalCalendarCopyTitle();
    v7 = CalCalendarCopyExternalID();
    v8 = [v5 calendarHomeURL];
    v9 = [v7 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v8];

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
        v11 = [v5 subCalPropertiesByURL];
        v12 = [v9 absoluteString];
        v13 = [v11 objectForKeyedSubscript:v12];

        a3 = [[MobileCalDAVSubscribedCalendar alloc] initWithCalendarURL:v9 calendar:a3 properties:v13 principal:v5];
LABEL_12:

        goto LABEL_13;
      }

      v10 = MobileCalDAVCalendar;
    }

    a3 = [[v10 alloc] initWithCalendarURL:v9 calendar:a3 principal:v5 title:v6];
    goto LABEL_12;
  }

LABEL_13:

  return a3;
}

- (MobileCalDAVCalendar)initWithCalendarURL:(id)a3 calendar:(void *)a4 principal:(id)a5 title:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v30.receiver = self;
  v30.super_class = MobileCalDAVCalendar;
  v13 = [(MobileCalDAVCalendar *)&v30 init];
  v14 = v13;
  if (v13)
  {
    [(MobileCalDAVCalendar *)v13 setPrincipal:v11];
    [(MobileCalDAVCalendar *)v14 setIsEnabled:1];
    [(MobileCalDAVCalendar *)v14 setIsDirty:0];
    v15 = [(MobileCalDAVCalendar *)v14 principal];
    v16 = [v15 calendarHomeURL];
    v17 = [v10 da_leastInfoStringRepresentationRelativeToParentURL:v16];
    calendarURLString = v14->_calendarURLString;
    v14->_calendarURLString = v17;

    if (a4)
    {
      v14->_calCalendar = a4;
      CFRetain(a4);
      v19 = [MEMORY[0x277CCAB98] defaultCenter];
      [v19 addObserver:v14 selector:sel__dropCalStoreContext name:@"CalDBIsClosing" object:0];
    }

    else if (![(MobileCalDAVCalendar *)v14 getCalCalendar])
    {
      v14->_calCalendar = [(MobileCalDAVCalendar *)v14 initCalCalendarWithTitle:v12];
    }

    if ([(MobileCalDAVCalendar *)v14 calCalendar])
    {
      [(MobileCalDAVCalendar *)v14 _updateCalendarInfo];
      calCalendar = v14->_calCalendar;
      v21 = CalCalendarCopyExternalIdentificationTag();
      if (v21)
      {
        v22 = v21;
        objc_storeStrong(&v14->_guid, v21);
      }

      else
      {
        v22 = [MEMORY[0x277CCACA8] da_newGUID];
        [(MobileCalDAVCalendar *)v14 setGuid:v22];
      }
    }

    v23 = [(MobileCalDAVCalendar *)v14 calendarURLString];

    if (v23)
    {
      [(MobileCalDAVCalendar *)v14 calCalendar];
      UID = CalCalendarGetUID();
      v25 = [(MobileCalDAVCalendar *)v14 calendarURLString];
      [MobileCalDAVCalendar cacheCalendarUID:UID forCalendarURLString:v25];
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

+ (void)removeUIDCacheEntryForCalendarURLString:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [a1 calURLToUIDCache];
    [v5 removeObjectForKey:v4];
  }
}

+ (int)cachedCalendarUIDForURLString:(id)a3
{
  v4 = a3;
  if (v4 && ([a1 calURLToUIDCache], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "objectForKeyedSubscript:", v4), v6 = objc_claimAutoreleasedReturnValue(), v5, v6))
  {
    v7 = [v6 intValue];
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

+ (void)clearCalendarUIDCache
{
  v2 = [a1 calURLToUIDCache];
  [v2 removeAllObjects];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = MobileCalDAVCalendar;
  v4 = [(MobileCalDAVCalendar *)&v9 description];
  v5 = [(MobileCalDAVCalendar *)self guid];
  v6 = [(MobileCalDAVCalendar *)self title];
  v7 = [v3 stringWithFormat:@"%@ [%@] %@", v4, v5, v6];

  return v7;
}

- (void)deleteCalendar
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(MobileCalDAVCalendar *)self getCalCalendar];
  v4 = DALoggingwithCategory();
  v5 = v4;
  if (v3)
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
      v9 = [(MobileCalDAVCalendar *)self guid];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_2484B2000, v5, v8, "Couldn't find calendar with guid %@", &v11, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setIsDirty:(BOOL)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = [(MobileCalDAVCalendar *)self title];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_2484B2000, v5, v6, "Marking calendar %@ as dirty.", &v9, 0xCu);
    }
  }

  self->_isDirty = a3;
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setGuid:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
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
          v14 = v5;
          _os_log_impl(&dword_2484B2000, v10, v11, "Couldn't find a calendar with uid %@ to set the new guid on", &v13, 0xCu);
        }
      }

      objc_storeStrong(&self->_guid, a3);
      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
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
  v4 = a3;
  v5 = [(MobileCalDAVCalendar *)self calendarURLString];
  v6 = [(MobileCalDAVCalendar *)self principal];
  v7 = [v6 calendarHomeURL];
  v8 = [v4 da_leastInfoStringRepresentationRelativeToParentURL:v7];

  v9 = [v8 da_appendSlashIfNeeded];

  if (v5 != v9 && ([v5 isEqualToString:v9] & 1) == 0)
  {
    if ([(MobileCalDAVCalendar *)self getCalCalendar])
    {
      v10 = [(MobileCalDAVCalendar *)self calendarURLString];
      [MobileCalDAVCalendar removeUIDCacheEntryForCalendarURLString:v10];

      [(MobileCalDAVCalendar *)self setCalendarURLString:v9];
      UID = CalCalendarGetUID();
      v12 = [(MobileCalDAVCalendar *)self calendarURLString];
      [MobileCalDAVCalendar cacheCalendarUID:UID forCalendarURLString:v12];

      v13 = [(MobileCalDAVCalendar *)self calendarURLString];
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

- (void)_setSupportsEvents:(BOOL)a3 supportsTodos:(BOOL)a4
{
  if ((a4 & ~a3) != 0)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  if (a3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  if (a4)
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
  v2 = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (v2)
  {

    LOBYTE(v2) = CalCalendarCanContainEntityType();
  }

  return v2;
}

- (void)setIsTaskContainer:(BOOL)a3
{
  v3 = a3;
  v5 = [(MobileCalDAVCalendar *)self isEventContainer];
  WeakRetained = objc_loadWeakRetained(&self->_principal);
  v7 = [WeakRetained isEnabledForTodos];

  [(MobileCalDAVCalendar *)self _setSupportsEvents:v5 supportsTodos:v7 & v3];
}

- (BOOL)isEventContainer
{
  v2 = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (v2)
  {

    LOBYTE(v2) = CalCalendarCanContainEntityType();
  }

  return v2;
}

- (void)setIsEventContainer:(BOOL)a3
{
  v3 = a3;
  v5 = [(MobileCalDAVCalendar *)self isTaskContainer];
  WeakRetained = objc_loadWeakRetained(&self->_principal);
  v7 = [WeakRetained isEnabledForEvents];

  [(MobileCalDAVCalendar *)self _setSupportsEvents:v7 & v3 supportsTodos:v5];
}

- (BOOL)isSubscribed
{
  v2 = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (v2)
  {

    LOBYTE(v2) = CalCalendarIsSubscribed();
  }

  return v2;
}

- (void)setIsSubscribed:(BOOL)a3
{
  if ([(MobileCalDAVCalendar *)self isSubscribed]!= a3 && [(MobileCalDAVCalendar *)self getCalCalendar])
  {

    CalCalendarSetSubscribed();
  }
}

- (NSString)title
{
  v2 = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (v2)
  {
    v2 = CalCalendarCopyTitle();
  }

  return v2;
}

- (void)setTitle:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && ![v4 isEqualToString:&stru_285AB0D40])
  {
    v7 = v5;
  }

  else
  {
    v6 = [(MobileCalDAVCalendar *)self principal];
    v7 = [v6 user];

    v8 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = [(MobileCalDAVCalendar *)self calendarURL];
      v16 = 138412546;
      v17 = v7;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_2484B2000, v8, v9, "Empty calendar title received. Setting calendar title to %@. Calendar URL: %@", &v16, 0x16u);
    }
  }

  v11 = [(MobileCalDAVCalendar *)self title];
  v12 = v11;
  if (v7 == v11)
  {
  }

  else
  {
    v13 = [(MobileCalDAVCalendar *)self title];
    v14 = [v7 isEqualToString:v13];

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
  v2 = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (v2)
  {
    v2 = CalCalendarCopyNotes();
  }

  return v2;
}

- (void)setNotes:(id)a3
{
  v6 = a3;
  v4 = [(MobileCalDAVCalendar *)self notes];
  if ([v6 length])
  {
    v5 = v6;
  }

  else
  {

    v5 = 0;
  }

  v7 = v5;
  if (v5 != v4 && ([v5 isEqualToString:v4] & 1) == 0 && -[MobileCalDAVCalendar getCalCalendar](self, "getCalCalendar"))
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

- (void)setColor:(id)a3
{
  v5 = a3;
  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    v4 = CalCalendarCopyColorString();
    if ([v5 length] && v4 != v5 && (objc_msgSend(v5, "isEqualToString:", v4) & 1) == 0)
    {
      CalCalendarSetColorString();
      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }
  }
}

- (NSString)symbolicColorName
{
  v2 = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (v2)
  {
    v2 = CalCalendarCopySymbolicColorName();
  }

  return v2;
}

- (void)setSymbolicColorName:(id)a3
{
  v5 = a3;
  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    v4 = CalCalendarCopySymbolicColorName();
    if ([v5 length] && v4 != v5 && (objc_msgSend(v5, "isEqualToString:", v4) & 1) == 0)
    {
      CalCalendarSetSymbolicColorName();
      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }
  }
}

- (NSString)pushKey
{
  v2 = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (v2)
  {
    v2 = CalCalendarCopyPushKey();
  }

  return v2;
}

- (void)setPushKey:(id)a3
{
  v5 = a3;
  v4 = [(MobileCalDAVCalendar *)self pushKey];
  if (v4 != v5 && ([v5 isEqualToString:v4] & 1) == 0 && -[MobileCalDAVCalendar getCalCalendar](self, "getCalCalendar"))
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

- (void)setBulkRequests:(id)a3
{
  v5 = a3;
  v4 = [(MobileCalDAVCalendar *)self bulkRequests];
  if (v4 != v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v5 isEqualToDictionary:v4] & 1) == 0 && -[MobileCalDAVCalendar getCalCalendar](self, "getCalCalendar"))
    {
      CalCalendarSetBulkRequests();
      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }
  }
}

- (BOOL)canBePublished
{
  v2 = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (v2)
  {

    LOBYTE(v2) = MEMORY[0x282147320]();
  }

  return v2;
}

- (void)setCanBePublished:(BOOL)a3
{
  if ([(MobileCalDAVCalendar *)self canBePublished]!= a3 && [(MobileCalDAVCalendar *)self getCalCalendar])
  {
    CalCalendarSetCanBePublished();

    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (BOOL)canBeShared
{
  v2 = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (v2)
  {

    LOBYTE(v2) = MEMORY[0x282147328]();
  }

  return v2;
}

- (void)setCanBeShared:(BOOL)a3
{
  if ([(MobileCalDAVCalendar *)self canBeShared]!= a3 && [(MobileCalDAVCalendar *)self getCalCalendar])
  {
    CalCalendarSetCanBeShared();

    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (BOOL)isFamilyCalendar
{
  v2 = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (v2)
  {

    LOBYTE(v2) = MEMORY[0x2821473D8]();
  }

  return v2;
}

- (void)setIsFamilyCalendar:(BOOL)a3
{
  if ([(MobileCalDAVCalendar *)self isFamilyCalendar]!= a3 && [(MobileCalDAVCalendar *)self getCalCalendar])
  {
    CalCalendarSetIsFamilyCalendar();

    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (BOOL)isMarkedUndeletable
{
  v2 = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (v2)
  {

    LOBYTE(v2) = MEMORY[0x282147428]();
  }

  return v2;
}

- (void)setIsMarkedUndeletable:(BOOL)a3
{
  if ([(MobileCalDAVCalendar *)self isMarkedUndeletable]!= a3 && [(MobileCalDAVCalendar *)self getCalCalendar])
  {
    CalCalendarSetIsMarkedUndeletable();

    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (BOOL)isMarkedImmutableSharees
{
  v2 = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (v2)
  {

    LOBYTE(v2) = MEMORY[0x282147420]();
  }

  return v2;
}

- (void)setIsMarkedImmutableSharees:(BOOL)a3
{
  if ([(MobileCalDAVCalendar *)self isMarkedImmutableSharees]!= a3 && [(MobileCalDAVCalendar *)self getCalCalendar])
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

- (void)setMaxAttendees:(int64_t)a3
{
  if ([(MobileCalDAVCalendar *)self maxAttendees]!= a3 && [(MobileCalDAVCalendar *)self getCalCalendar])
  {
    CalCalendarSetMaxAttendees();

    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (BOOL)isPublished
{
  v2 = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (v2)
  {

    LOBYTE(v2) = MEMORY[0x282147340]();
  }

  return v2;
}

- (void)setIsPublished:(BOOL)a3
{
  if ([(MobileCalDAVCalendar *)self isPublished]!= a3 && [(MobileCalDAVCalendar *)self getCalCalendar])
  {
    CalCalendarSetIsPublished();

    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (BOOL)isAffectingAvailability
{
  v2 = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (v2)
  {

    LOBYTE(v2) = MEMORY[0x2821473A8]();
  }

  return v2;
}

- (void)setIsAffectingAvailability:(BOOL)a3
{
  if ([(MobileCalDAVCalendar *)self isAffectingAvailability]!= a3 && [(MobileCalDAVCalendar *)self getCalCalendar])
  {
    CalCalendarSetIsAffectingAvailability();

    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (NSURL)publishURL
{
  v2 = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (v2)
  {
    v2 = CalCalendarCopyPublishedURL();
  }

  return v2;
}

- (void)setPublishURL:(id)a3
{
  v5 = a3;
  v4 = [(MobileCalDAVCalendar *)self publishURL];
  if (v4 != v5 && ([v4 da_isEqualToDAVURL:v5] & 1) == 0 && -[MobileCalDAVCalendar getCalCalendar](self, "getCalCalendar"))
  {
    CalCalendarSetPublishedURL();
    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (NSURL)prePublishURL
{
  v2 = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (v2)
  {
    v2 = CalCalendarCopyPublishedURL();
  }

  return v2;
}

- (NSString)ownerDisplayName
{
  v2 = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (v2)
  {
    v2 = CalCalendarCopySharedOwnerName();
  }

  return v2;
}

- (void)setOwnerDisplayName:(id)a3
{
  v7 = a3;
  v4 = [(MobileCalDAVCalendar *)self ownerDisplayName];
  if (v4 == v7)
  {
  }

  else
  {
    v5 = [(MobileCalDAVCalendar *)self ownerDisplayName];
    v6 = [v7 isEqualToString:v5];

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

- (void)setOwner:(id)a3
{
  v7 = a3;
  v4 = [v7 absoluteString];
  v5 = [(MobileCalDAVCalendar *)self owner];
  v6 = [v5 absoluteString];

  if (v4 != v6 && ([v4 isEqualToString:v6] & 1) == 0 && -[MobileCalDAVCalendar getCalCalendar](self, "getCalCalendar"))
  {
    CalCalendarSetSharedOwnerAddress();
    CalCalendarSetOwnerIdentityAddress();
    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (NSSet)preferredCalendarUserAddresses
{
  v3 = [(MobileCalDAVCalendar *)self principal];
  v4 = [v3 preferredCalendarUserAddressesForCalendar:self];

  return v4;
}

- (void)setPreferredCalendarUserAddresses:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MobileCalDAVCalendar *)self principal];
  [v5 setPreferredCalendarUserAddresses:v4 forCalendar:self];

  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    v6 = [MEMORY[0x277CBEB18] array];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = v4;
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
          v13 = [v12 address];
          v14 = [v13 absoluteString];

          if (v14)
          {
            v15 = [v12 address];
            v16 = [v15 absoluteString];
            [v6 addObject:v16];
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
  v2 = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (v2)
  {
    LODWORD(v2) = CalCalendarGetDisplayOrder();
  }

  return v2 & ~(v2 >> 31);
}

- (void)setOrder:(int)a3
{
  if ([(MobileCalDAVCalendar *)self order]!= a3 && [(MobileCalDAVCalendar *)self getCalCalendar])
  {
    CalCalendarSetDisplayOrder();

    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (int)sharingStatus
{
  v2 = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (v2)
  {
    SharingStatus = CalCalendarGetSharingStatus();
    if (SharingStatus == 1)
    {
      LODWORD(v2) = 1;
    }

    else
    {
      LODWORD(v2) = 2 * (SharingStatus == 2);
    }
  }

  return v2;
}

- (void)setSharingStatus:(int)a3
{
  if ([(MobileCalDAVCalendar *)self sharingStatus]!= a3 && [(MobileCalDAVCalendar *)self getCalCalendar])
  {
    if (a3 == 2)
    {
      CalCalendarSetSharingStatus();
      WeakRetained = objc_loadWeakRetained(&self->_principal);
      v6 = [WeakRetained account];
      v7 = [v6 serverVersion];
      [v7 supportsSharingNoScheduling];
      CalCalendarSetSchedulingProhibited();
    }

    else if (a3 <= 1)
    {
      CalCalendarSetSharingStatus();
    }

    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }

  if (a3 == 2)
  {
    [(MobileCalDAVCalendar *)self getCalCalendar];
    IsSchedulingProhibited = CalCalendarIsSchedulingProhibited();
    v9 = objc_loadWeakRetained(&self->_principal);
    v10 = [v9 account];
    v11 = [v10 serverVersion];
    v12 = [v11 supportsSharingNoScheduling];

    if (IsSchedulingProhibited != v12)
    {
      CalCalendarSetSchedulingProhibited();

      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }
  }
}

- (void)setSharees:(id)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v43 = [a3 mutableCopy];
  v4 = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (v4)
  {
    v45 = v4;
    v5 = CalCalendarCopySharees();
    v48 = self;
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
              v16 = [v15 acceptedURL];
              if (v16)
              {
                v17 = [v15 acceptedURL];
              }

              else
              {
                v18 = [v15 href];
                v17 = [v18 payloadAsFullURL];
              }

              if ([v9 da_isEqualToDAVURL:v17])
              {
                self = v48;
                v5 = v42;
                if ([v15 updateCalSharee:obj])
                {
                  [(MobileCalDAVCalendar *)v48 setIsDirty:1];
                  v21 = DALoggingwithCategory();
                  if (os_log_type_enabled(v21, type))
                  {
                    v22 = [(MobileCalDAVCalendar *)v48 title];
                    *buf = v41;
                    v59 = v9;
                    v60 = 2112;
                    v61 = v22;
                    _os_log_impl(&dword_2484B2000, v21, type, "Updating sharee %@ to calendar %@", buf, 0x16u);
                  }
                }

                [v10 removeObject:v15];

                goto LABEL_23;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v53 objects:v62 count:16];
            self = v48;
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
          v20 = [(MobileCalDAVCalendar *)self title];
          *buf = v41;
          v59 = v9;
          v60 = 2112;
          v61 = v20;
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

    v23 = [(MobileCalDAVCalendar *)self principal];
    v24 = [v23 account];
    v25 = [v24 dbHelper];
    v26 = [(MobileCalDAVCalendar *)self accountID];
    v27 = [v25 calDatabaseForAccountID:v26];

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
            v36 = [v34 commonName];
            v37 = [v36 payloadAsString];
            v38 = [(MobileCalDAVCalendar *)self title];
            *buf = 138412546;
            v59 = v37;
            v60 = 2112;
            v61 = v38;
            _os_log_impl(&dword_2484B2000, v35, v32, "Adding sharee %@ to calendar %@", buf, 0x16u);

            self = v48;
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
  v2 = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (v2)
  {
    LOBYTE(v2) = CalCalendarIsAlwaysReadOnly() ^ 1;
  }

  return v2;
}

- (void)setIsEditable:(BOOL)a3
{
  v3 = a3;
  if ([(MobileCalDAVCalendar *)self isEditable]!= a3)
  {
    v5 = [(MobileCalDAVCalendar *)self getCalCalendar];
    if (v5)
    {
      v6 = v5;
      [(MobileCalDAVCalendar *)self setIsDirty:1];

      MEMORY[0x282147700](v6, !v3);
    }
  }
}

- (BOOL)isRenameable
{
  v2 = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (v2)
  {
    LOBYTE(v2) = CalCalendarIsImmutable() ^ 1;
  }

  return v2;
}

- (void)setIsRenameable:(BOOL)a3
{
  v3 = a3;
  if ([(MobileCalDAVCalendar *)self isRenameable]!= a3)
  {
    v5 = [(MobileCalDAVCalendar *)self getCalCalendar];
    if (v5)
    {
      v6 = v5;
      [(MobileCalDAVCalendar *)self setIsDirty:1];

      MEMORY[0x282147778](v6, !v3);
    }
  }
}

- (NSString)ctag
{
  v3 = [(MobileCalDAVCalendar *)self principal];
  v4 = [v3 refreshContext];
  v5 = [v4 isForced];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(MobileCalDAVCalendar *)self getCalCalendar];
    if (v6)
    {
      [(MobileCalDAVCalendar *)self getCalCalendar];
      v6 = CalCalendarCopyExternalModificationTag();
    }
  }

  return v6;
}

- (void)setCtag:(id)a3
{
  v7 = a3;
  v4 = [(MobileCalDAVCalendar *)self ctag];
  if (v4 == v7)
  {
  }

  else
  {
    v5 = [(MobileCalDAVCalendar *)self ctag];
    v6 = [v7 isEqualToString:v5];

    if ((v6 & 1) == 0 && [(MobileCalDAVCalendar *)self getCalCalendar])
    {
      CalCalendarSetExternalModificationTag();
      [(MobileCalDAVCalendar *)self setIsDirty:1];
    }
  }
}

- (NSString)syncToken
{
  v3 = [(MobileCalDAVCalendar *)self principal];
  v4 = [v3 refreshContext];
  v5 = [v4 isForced];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(MobileCalDAVCalendar *)self getCalCalendar];
    if (v6)
    {
      [(MobileCalDAVCalendar *)self getCalCalendar];
      v6 = CalCalendarCopySyncToken();
    }
  }

  return v6;
}

- (void)setSyncToken:(id)a3
{
  v9 = a3;
  v4 = [(MobileCalDAVCalendar *)self syncToken];
  if (v4 == v9)
  {
    goto LABEL_7;
  }

  v5 = [(MobileCalDAVCalendar *)self syncToken];
  v6 = [v9 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    v7 = [(MobileCalDAVCalendar *)self getCalCalendar];
    v8 = v9;
    if (v7)
    {
      CalCalendarSetSyncToken();
      [(MobileCalDAVCalendar *)self setIsDirty:1];
      v8 = v9;
    }

    if ([v8 length])
    {
      v4 = [(MobileCalDAVCalendar *)self principal];
      [v4 setSupportsSyncToken:1];
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
    v5 = [(MobileCalDAVCalendar *)self principal];
    v6 = [v5 account];
    v7 = [v6 dbHelper];
    v8 = [(MobileCalDAVCalendar *)self accountID];
    [v7 calDatabaseForAccountID:v8];

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
          v13 = [(MobileCalDAVCalendar *)self calendarURL];
          v14 = [v12 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v13];

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
          v19 = [(MobileCalDAVCalendar *)self calendarURL];
          v20 = [v18 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v19];

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
      v23 = [(MobileCalDAVCalendar *)self title];
      LODWORD(v26.version) = 138412290;
      *(&v26.version + 4) = v23;
      _os_log_impl(&dword_2484B2000, v21, v22, "Couldn't get a calendar for %@", &v26, 0xCu);
    }

    v4 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)etagsForItemURLs:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    v5 = *(MEMORY[0x277CBF138] + 16);
    *&keyCallBacks.version = *MEMORY[0x277CBF138];
    *&keyCallBacks.release = v5;
    keyCallBacks.equal = *(MEMORY[0x277CBF138] + 32);
    keyCallBacks.hash = CalDAVURLHashCallback;
    v29 = CFDictionaryCreateMutable(0, 0, &keyCallBacks, MEMORY[0x277CBF150]);
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
    v28 = v4;
    v11 = v4;
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
        v17 = [(MobileCalDAVCalendar *)self calendarURL];
        v18 = [v16 da_leastInfoStringRepresentationRelativeToParentURL:v17];

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

        v4 = v28;
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

- (void)_copyCalItemWithUniqueIdentifier:(id)a3 inCalendar:(void *)a4 orStore:(void *)a5
{
  v6 = a3;
  v7 = [(MobileCalDAVCalendar *)self principal];
  v8 = [v7 account];
  v9 = [v8 dbHelper];
  v10 = [(MobileCalDAVCalendar *)self accountID];
  [v9 calDatabaseForAccountID:v10];

  if (![(MobileCalDAVCalendar *)self recordIDForUniqueIdentifier:v6]|| (v11 = CalDatabaseCopyEntityWithRecordID()) == 0)
  {
    v11 = CalDatabaseCopyCalendarItemWithUniqueIdentifierInCalendarOrStore();
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

- (void)_copyCalItemWithExternalID:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVCalendar *)self principal];
  v6 = [v5 account];
  v7 = [v6 dbHelper];
  v8 = [(MobileCalDAVCalendar *)self accountID];
  [v7 calDatabaseForAccountID:v8];

  v9 = [(NSMutableDictionary *)self->_URLToRecordIDMap objectForKeyedSubscript:v4];

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

- (void)setUniqueIdentifier:(id)a3 forRecordID:(CalRecordID *)a4
{
  v6 = a3;
  if (v6)
  {
    v9 = v6;
    v7 = [(MobileCalDAVCalendar *)self uniqueIdentifierToRecordIDMap];
    v8 = v7;
    if (a4)
    {
      [v7 setObject:a4 forKeyedSubscript:v9];
    }

    else
    {
      [v7 removeObjectForKey:v9];
    }

    v6 = v9;
  }
}

- (CalRecordID)recordIDForUniqueIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVCalendar *)self uniqueIdentifierToRecordIDMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (void)setExternalIdentifier:(id)a3 forRecordID:(CalRecordID *)a4
{
  v6 = a3;
  if (v6)
  {
    v9 = v6;
    v7 = [(MobileCalDAVCalendar *)self URLToRecordIDMap];
    v8 = v7;
    if (a4)
    {
      [v7 setObject:a4 forKeyedSubscript:v9];
    }

    else
    {
      [v7 removeObjectForKey:v9];
    }

    v6 = v9;
  }
}

- (CalRecordID)recordIDForExternalIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVCalendar *)self URLToRecordIDMap];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (BOOL)setURL:(id)a3 forResourceWithUUID:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(MobileCalDAVCalendar *)self getCalCalendar];
    if (v8)
    {
      v9 = [(MobileCalDAVCalendar *)self _copyCalItemWithUniqueIdentifier:v7 inCalendar:v8 orStore:0];
      v10 = v9 != 0;
      if (v9)
      {
        v11 = v9;
        v12 = [(MobileCalDAVCalendar *)self calendarURL];
        v13 = [v6 da_leastInfoStringRepresentationRelativeToParentURL:v12];

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
          v36 = v7;
          _os_log_impl(&dword_2484B2000, v18, v19, "Couldn't set url for the event %@ because it doesn't exist in our database", buf, 0xCu);
        }
      }

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v16 = [(MobileCalDAVCalendar *)self syncActions];
      v20 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
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
              objc_enumerationMutation(v16);
            }

            v24 = *(*(&v30 + 1) + 8 * i);
            if ([v24 action] == 1)
            {
              v25 = [v24 context];
              v26 = [v25 uniqueIdentifier];
              v27 = [v26 isEqualToString:v7];

              if (v27)
              {
                [v25 setServerID:v6];
              }
            }
          }

          v21 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v21);
      }
    }

    else
    {
      v16 = DALoggingwithCategory();
      v17 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v16, v17))
      {
        *buf = 138412290;
        v36 = self;
        _os_log_impl(&dword_2484B2000, v16, v17, "Could not find a calendar that matched %@", buf, 0xCu);
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

- (BOOL)setEtag:(id)a3 forItemAtURL:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MobileCalDAVCalendar *)self calendarURL];
  v9 = [v7 da_leastInfoStringRepresentationRelativeToParentURL:v8];

  v10 = [(MobileCalDAVCalendar *)self _copyCalItemWithExternalID:v9];
  if (v10)
  {
    CalCalendarItemSetExternalModificationTag();
    if (v7)
    {
      URLToEtagMap = self->_URLToEtagMap;
      if (v6)
      {
        [(NSMutableDictionary *)URLToEtagMap setObject:v6 forKeyedSubscript:v9];
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
      v17 = v7;
      _os_log_impl(&dword_2484B2000, v12, v13, "Couldn't set etag for the item at %@ because it doesn't exist in our database", &v16, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v10 != 0;
}

- (BOOL)setScheduleTag:(id)a3 forItemAtURL:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v6 = &stru_285AB0D40;
  }

  v8 = [(MobileCalDAVCalendar *)self calendarURL];
  v9 = [v7 da_leastInfoStringRepresentationRelativeToParentURL:v8];
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
      v16 = v7;
      _os_log_impl(&dword_2484B2000, v11, v12, "Couldn't set schedule tag for the item at %@ because it doesn't exist in our database", &v15, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10 != 0;
}

- (id)removeInvitationsForItemWithUniqueIdentifier:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    goto LABEL_18;
  }

  v5 = [(MobileCalDAVCalendar *)self principal];
  v6 = [v5 account];
  v7 = [v6 dbHelper];
  v8 = [(MobileCalDAVCalendar *)self accountID];
  [v7 calDatabaseForAccountID:v8];

  v9 = [(MobileCalDAVCalendar *)self accountID];
  v10 = CalDatabaseCopyStoreWithExternalID();

  v11 = [(MobileCalDAVCalendar *)self _copyCalItemWithUniqueIdentifier:v4 inCalendar:0 orStore:v10];
  if (v10)
  {
    CFRelease(v10);
  }

  if (v11)
  {
    v29 = v4;
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

            v22 = [(MobileCalDAVCalendar *)self principal];
            v23 = [v22 inboxURL];
            [v18 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v23];
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

    v4 = v29;
  }

  else
  {
LABEL_18:
    v26 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (BOOL)updateResourcesFromServer:(id)a3
{
  v120 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (v5)
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
    v83 = v4;
    v8 = v4;
    v84 = v5;
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
          v12 = [v11 serverID];
          v13 = [(MobileCalDAVCalendar *)self calendarURL];
          v14 = [v12 da_leastInfoStringRepresentationRelativeToParentURL:v13];

          v15 = [(MobileCalDAVCalendar *)self principal];
          v16 = [v15 account];
          v17 = [v16 movedItemURLStrings];
          v18 = [v17 containsObject:v14];

          if (v18)
          {
            v19 = DALoggingwithCategory();
            if (os_log_type_enabled(v19, v9))
            {
              v20 = [v11 serverID];
              *buf = 138412290;
              v115 = v20;
              v21 = v19;
              v22 = v9;
              v23 = "Dropping server change for %@ on the floor because we have a move change for it";
              goto LABEL_14;
            }

            goto LABEL_15;
          }

          v24 = [(MobileCalDAVCalendar *)self principal];
          if ([v24 isMergeSync])
          {
            v25 = [(MobileCalDAVCalendar *)self _isDeleted:v14];

            if (v25)
            {
              v19 = DALoggingwithCategory();
              if (os_log_type_enabled(v19, v9))
              {
                v20 = [v11 serverID];
                *buf = 138412290;
                v115 = v20;
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
          v26 = [(MobileCalDAVCalendar *)self principal];
          v27 = [v26 account];
          v28 = [v27 wasMigrated];
          v29 = [(MobileCalDAVCalendar *)self principal];
          v30 = [v29 account];
          v106 = 0;
          v31 = [v11 saveToContainer:v5 shouldMergeProperties:v28 outMergeDidChooseLocalProperties:&v107 account:v30 mobileCalendar:self outRecurrenceSets:&v106];
          v32 = v106;

          if ([v32 count])
          {
            v33 = [(MobileCalDAVCalendar *)self accountID];
            v34 = [v86 objectForKeyedSubscript:v33];

            if (!v34)
            {
              v34 = objc_opt_new();
              v35 = [(MobileCalDAVCalendar *)self accountID];
              [v86 setObject:v34 forKeyedSubscript:v35];
            }

            [v34 unionSet:v32];
          }

          v9 = v90;
          v14 = v91;
          if ((v88 & v31) == 1)
          {
            v87 = [v11 document];
            v36 = [v87 calendar];
            v102 = 0u;
            v103 = 0u;
            v104 = 0u;
            v105 = 0u;
            v37 = [v36 componentKeys];
            v38 = [v37 countByEnumeratingWithState:&v102 objects:v118 count:16];
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
                    objc_enumerationMutation(v37);
                  }

                  v42 = [v36 componentForKey:*(*(&v102 + 1) + 8 * j)];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
                  {
                    v43 = [v42 summary];

                    goto LABEL_38;
                  }
                }

                v39 = [v37 countByEnumeratingWithState:&v102 objects:v118 count:16];
                v43 = 0;
                if (v39)
                {
                  continue;
                }

                break;
              }
            }

            else
            {
              v43 = 0;
            }

LABEL_38:

            v44 = objc_opt_new();
            v45 = [v11 uniqueIdentifier];
            [v44 setUid:v45];

            [v44 setTitle:v43];
            v46 = [v11 scheduleTag];
            [v44 setScheduleTag:v46];

            v47 = [v11 syncKey];
            [v44 setSyncKey:v47];

            v48 = [v11 dataPayload];
            [v44 setDownloadedData:v48];

            [v85 addObject:v44];
            v5 = v84;
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
              v52 = [v11 serverID];
              *buf = 138412290;
              v115 = v52;
              _os_log_impl(&dword_2484B2000, v50, v9, "The event at %@ was modified locally. Forcing it to the server.", buf, 0xCu);
            }
          }

          else
          {
            if (v51)
            {
              v53 = [v11 serverID];
              v54 = [v11 syncKey];
              *buf = 138412546;
              v115 = v53;
              v116 = 2112;
              v117 = v54;
              _os_log_impl(&dword_2484B2000, v50, v9, "Saved resource from %@ to the database. Etag is %@", buf, 0x16u);
            }

            v55 = [v11 syncKey];
            v56 = [v11 serverID];
            [(MobileCalDAVCalendar *)self setEtag:v55 forItemAtURL:v56];

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
      v57 = [(MobileCalDAVCalendar *)self principal];
      v58 = [v57 account];
      v59 = [v58 dbHelper];
      v60 = [(MobileCalDAVCalendar *)self accountID];
      v61 = [v59 calSaveDatabaseAndFlushCachesForAccountID:v60];

      if ((v88 & v61) == 1)
      {
        v62 = [(MobileCalDAVCalendar *)self calendarCollectionSyncDiagnostics];
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

              [v62 addCalendarItemSync:*(*(&v98 + 1) + 8 * k)];
            }

            v65 = [v63 countByEnumeratingWithState:&v98 objects:v113 count:16];
          }

          while (v65);
        }
      }

      v68 = [(MobileCalDAVCalendar *)self uniqueIdentifierToRecordIDMap];
      [v68 removeAllObjects];

      v69 = [(MobileCalDAVCalendar *)self URLToRecordIDMap];
      [v69 removeAllObjects];
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
          v77 = [(MobileCalDAVCalendar *)self principal];
          v78 = [v77 account];
          v79 = [v78 dbHelper];
          v80 = [v79 calDatabaseForAccountID:v75];

          [(MobileCalDAVCalendar *)self correctLocationPredictionStateForRecurrenceSets:v76 calDB:v80];
        }

        v72 = [v70 countByEnumeratingWithState:&v94 objects:v112 count:16];
      }

      while (v72);
    }

    v4 = v83;
    v5 = v84;
    v6 = v85;
  }

  else
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v6, v7))
    {
      *buf = 138412290;
      v115 = self;
      _os_log_impl(&dword_2484B2000, v6, v7, "Could not find a calendar that matched %@", buf, 0xCu);
    }
  }

  v81 = *MEMORY[0x277D85DE8];
  return v5 != 0;
}

- (void)correctLocationPredictionStateForRecurrenceSets:(id)a3 calDB:(CalDatabase *)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v4 = [a3 allObjects];
  v5 = [v4 countByEnumeratingWithState:&v32 objects:v38 count:16];
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
          objc_enumerationMutation(v4);
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
      v6 = [v4 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v6);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isDeleted:(id)a3
{
  v4 = a3;
  deletedExternalIDs = self->_deletedExternalIDs;
  if (!deletedExternalIDs)
  {
    v6 = [(MobileCalDAVCalendar *)self copyDeletedItems];
    v7 = MEMORY[0x277CBEB98];
    v8 = [v6 allKeys];
    v9 = [v7 setWithArray:v8];
    v10 = self->_deletedExternalIDs;
    self->_deletedExternalIDs = v9;

    deletedExternalIDs = self->_deletedExternalIDs;
  }

  v11 = [(NSSet *)deletedExternalIDs containsObject:v4];

  return v11;
}

- (BOOL)_removeCalendarItemWithURL:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MobileCalDAVCalendar *)self principal];
  v6 = [v5 account];
  v7 = [v6 dbHelper];
  v8 = [(MobileCalDAVCalendar *)self accountID];
  [v7 calDatabaseForAccountID:v8];

  v9 = [(MobileCalDAVCalendar *)self getCalCalendar];
  v10 = DALoggingwithCategory();
  v11 = v10;
  if (v9)
  {
    v12 = MEMORY[0x277D03988];
    v13 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v10, v13))
    {
      v23 = 138412290;
      v24 = v4;
      _os_log_impl(&dword_2484B2000, v11, v13, "Removing event with url %@", &v23, 0xCu);
    }

    v14 = [(MobileCalDAVCalendar *)self calendarURL];
    [(MobileCalDAVCalendar *)v4 da_leastInfoStringRepresentationRelativeToParentURL:v14];
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
      v24 = v4;
      _os_log_impl(&dword_2484B2000, v18, v19, "Couldn't get a calendar item to remove with url %@", &v23, 0xCu);
    }
  }

  else
  {
    v17 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v10, v17))
    {
      v23 = 138412290;
      v24 = self;
      _os_log_impl(&dword_2484B2000, v11, v17, "Could not find a calendar that matched %@", &v23, 0xCu);
    }
  }

  v20 = 0;
LABEL_19:

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (BOOL)deleteResourcesAtURLs:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v4);
        }

        v7 |= [(MobileCalDAVCalendar *)self _removeCalendarItemWithURL:*(*(&v16 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
    if (v7)
    {
      v10 = [(MobileCalDAVCalendar *)self principal];
      v11 = [v10 account];
      v12 = [v11 dbHelper];
      v13 = [(MobileCalDAVCalendar *)self accountID];
      [v12 calSaveDatabaseAndFlushCachesForAccountID:v13];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)hasEvents
{
  v2 = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (v2)
  {
    v3 = v2;
    if (CalCalendarHasEvents())
    {
      LOBYTE(v2) = 1;
    }

    else
    {

      LOBYTE(v2) = MEMORY[0x282147398](v3);
    }
  }

  return v2;
}

- (BOOL)isHidden
{
  v2 = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (v2)
  {

    LOBYTE(v2) = CalCalendarIsHidden();
  }

  return v2;
}

- (NSString)displayColor
{
  v2 = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (v2)
  {
    v2 = CalCalendarCopyColorStringForDisplay();
  }

  return v2;
}

- (NSString)accountID
{
  v2 = [(MobileCalDAVCalendar *)self principal];
  v3 = [v2 account];
  v4 = [v3 accountID];

  return v4;
}

- (NSArray)newlyAddedItems
{
  v2 = [(NSMutableArray *)self->_newlyAddedItems copy];

  return v2;
}

- (void)setNewlyAddedItems:(id)a3
{
  v4 = [a3 mutableCopy];
  newlyAddedItems = self->_newlyAddedItems;
  self->_newlyAddedItems = v4;

  MEMORY[0x2821F96F8]();
}

- (void)_updateCalendarInfo
{
  v3 = [(MobileCalDAVCalendar *)self principal];
  v4 = [v3 fullName];

  v5 = [(MobileCalDAVCalendar *)self principal];
  v6 = [v5 preferredCalendarEmailAddress];

  v7 = [(MobileCalDAVCalendar *)self principal];
  v8 = [v7 preferredCalendarPhoneNumber];

  v9 = [(MobileCalDAVCalendar *)self principal];
  v10 = [v9 preferredCalendarUserAddress];

  v11 = [(MobileCalDAVCalendar *)self shouldCalendarBeHidden];
  v12 = [(MobileCalDAVCalendar *)self isSubscribed];
  v30 = [(MobileCalDAVCalendar *)self isScheduleInbox];
  v33 = [(MobileCalDAVCalendar *)self isNotification];
  if (![v4 length])
  {

    v4 = 0;
  }

  if (![v6 length])
  {

    v6 = 0;
  }

  if (![v8 length])
  {

    v8 = 0;
  }

  [(MobileCalDAVCalendar *)self calCalendar];
  v13 = CalCalendarCopySelfIdentityDisplayName();
  v14 = v13;
  if (v4 == v13 || v4 && ([v13 isEqualToString:v4] & 1) != 0)
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
  if (v16 != v6 && (!v6 || ([v16 isEqualToString:v6] & 1) == 0))
  {
    [(MobileCalDAVCalendar *)self calCalendar];
    CalCalendarSetSelfIdentityEmail();
    v15 = 1;
  }

  [(MobileCalDAVCalendar *)self calCalendar];
  v18 = CalCalendarCopySelfIdentityPhoneNumber();
  v19 = v18;
  if (v18 != v8 && (!v8 || ([v18 isEqualToString:v8] & 1) == 0))
  {
    [(MobileCalDAVCalendar *)self calCalendar];
    CalCalendarSetSelfIdentityPhoneNumber();
    v15 = 1;
  }

  v32 = v19;
  [(MobileCalDAVCalendar *)self calCalendar];
  v20 = CalCalendarCopySelfIdentityAddress();
  v21 = v20;
  if (v20 != v10 && ([v20 da_isEqualToDAVURL:v10] & 1) == 0)
  {
    [(MobileCalDAVCalendar *)self calCalendar];
    CalCalendarSetSelfIdentityAddress();
    v15 = 1;
  }

  [(MobileCalDAVCalendar *)self calCalendar];
  if (v11 != CalCalendarIsHidden())
  {
    [(MobileCalDAVCalendar *)self calCalendar];
    CalCalendarSetHidden();
    v15 = 1;
  }

  [(MobileCalDAVCalendar *)self calCalendar];
  if (v12 != CalCalendarIsSubscribed())
  {
    [(MobileCalDAVCalendar *)self calCalendar];
    CalCalendarSetSubscribed();
    v15 = 1;
  }

  [(MobileCalDAVCalendar *)self calCalendar];
  if (v30 != CalCalendarIsInbox())
  {
    [(MobileCalDAVCalendar *)self calCalendar];
    CalCalendarSetIsInbox();
    v15 = 1;
  }

  [(MobileCalDAVCalendar *)self calCalendar];
  if (v33 != CalCalendarIsNotificationsCollection())
  {
    [(MobileCalDAVCalendar *)self calCalendar];
    CalCalendarSetIsNotificationsCollection();
    v15 = 1;
  }

  [(MobileCalDAVCalendar *)self calCalendar];
  if (CalCalendarGetSharingStatus() == 2 && ([(MobileCalDAVCalendar *)self owner], v22 = objc_claimAutoreleasedReturnValue(), v22, v22))
  {
    v34 = [(MobileCalDAVCalendar *)self ownerDisplayName];

    v23 = [(MobileCalDAVCalendar *)self ownerEmailAddress];

    v24 = [(MobileCalDAVCalendar *)self ownerPhoneNumber];

    v25 = [(MobileCalDAVCalendar *)self owner];

    if (![v34 length])
    {

      v34 = 0;
    }

    if (![v23 length])
    {

      v23 = 0;
    }

    if ([v24 length])
    {
      v8 = v24;
    }

    else
    {

      v8 = 0;
    }
  }

  else
  {
    v25 = v10;
    v23 = v6;
    v34 = v4;
  }

  [(MobileCalDAVCalendar *)self calCalendar];
  v26 = CalCalendarCopyOwnerIdentityDisplayName();

  if (v34 != v26 && (!v34 || ([v26 isEqualToString:v34] & 1) == 0))
  {
    [(MobileCalDAVCalendar *)self calCalendar];
    CalCalendarSetOwnerIdentityDisplayName();
    v15 = 1;
  }

  [(MobileCalDAVCalendar *)self calCalendar];
  v27 = CalCalendarCopyOwnerIdentityEmail();

  if (v27 != v23 && (!v23 || ([v27 isEqualToString:v23] & 1) == 0))
  {
    [(MobileCalDAVCalendar *)self calCalendar];
    CalCalendarSetOwnerIdentityEmail();
    v15 = 1;
  }

  [(MobileCalDAVCalendar *)self calCalendar];
  v28 = CalCalendarCopyOwnerIdentityPhoneNumber();

  if (v28 != v8 && (!v8 || ([v28 isEqualToString:v8] & 1) == 0))
  {
    [(MobileCalDAVCalendar *)self calCalendar];
    CalCalendarSetOwnerIdentityPhoneNumber();
    v15 = 1;
  }

  [(MobileCalDAVCalendar *)self calCalendar];
  v29 = CalCalendarCopyOwnerIdentityAddress();

  if (v29 != v25 && ([v29 da_isEqualToDAVURL:v25] & 1) == 0)
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

- (void)initCalCalendarWithTitle:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(MobileCalDAVCalendar *)self calCalendar])
  {
    v5 = [(MobileCalDAVCalendar *)self principal];
    v6 = [v5 account];
    v7 = [v6 dbHelper];
    v8 = [(MobileCalDAVCalendar *)self accountID];
    v9 = [v7 calDatabaseForAccountID:v8];

    if (v9)
    {
      v10 = [(MobileCalDAVCalendar *)self accountID];
      v11 = CalDatabaseCopyStoreWithExternalID();

      v12 = [(MobileCalDAVCalendar *)self principal];
      v13 = [v12 account];
      v14 = [v13 wasMigrated];
      v15 = v11 != 0;

      if (v14 && v11)
      {
        v16 = CalStoreCopyCalendars();
        if ([v16 count])
        {
          v17 = 0;
          while (1)
          {
            v18 = [v16 objectAtIndexedSubscript:v17];

            v19 = CalCalendarCopyTitle();
            if ([v4 isEqualToString:v19])
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

      v22 = [(MobileCalDAVCalendar *)self calCalendar];
      if (v22)
      {
        v15 = 0;
      }

      else
      {
        self->_calCalendar = CalDatabaseCreateCalendar();
      }

      [(MobileCalDAVCalendar *)self calCalendar];
      v23 = [(MobileCalDAVCalendar *)self calendarURLString];
      CalCalendarSetExternalID();

      [(MobileCalDAVCalendar *)self calCalendar];
      v24 = [(MobileCalDAVCalendar *)self guid];
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
          v28 = [(MobileCalDAVCalendar *)self calendarURLString];
          v29 = [MEMORY[0x277CCACC8] callStackSymbols];
          v40 = 138412546;
          v41 = v28;
          v42 = 2114;
          v43 = v29;
          _os_log_impl(&dword_2484B2000, v26, v27, "******Creating calendar with url %@ %{public}@", &v40, 0x16u);
        }

        [(MobileCalDAVCalendar *)self calCalendar];
        CalStoreAddCalendar();
      }

      else
      {
        if (v22)
        {
          v30 = *(MEMORY[0x277D03988] + 6);
          if (os_log_type_enabled(v25, v30))
          {
            v40 = 138412290;
            v41 = v4;
            _os_log_impl(&dword_2484B2000, v26, v30, "Merged calendar titled %@ with calDAV", &v40, 0xCu);
          }
        }

        else
        {
          v31 = *(MEMORY[0x277D03988] + 3);
          if (os_log_type_enabled(v25, *(MEMORY[0x277D03988] + 3)))
          {
            v32 = [(MobileCalDAVCalendar *)self guid];
            v40 = 138412290;
            v41 = v32;
            _os_log_impl(&dword_2484B2000, v26, v31, "Could not get a calendar store. Cowardly refusing to create a calendar with UID %@", &v40, 0xCu);
          }
        }
      }

      if ([(MobileCalDAVCalendar *)self calCalendar])
      {
        v33 = [(MobileCalDAVCalendar *)self calendarURLString];

        if (v33)
        {
          [(MobileCalDAVCalendar *)self calCalendar];
          UID = CalCalendarGetUID();
          v35 = [(MobileCalDAVCalendar *)self calendarURLString];
          [MobileCalDAVCalendar cacheCalendarUID:UID forCalendarURLString:v35];
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

    v36 = [MEMORY[0x277CCAB98] defaultCenter];
    [v36 addObserver:self selector:sel__dropCalStoreContext name:@"CalDBIsClosing" object:0];
  }

  v37 = [(MobileCalDAVCalendar *)self calCalendar];

  v38 = *MEMORY[0x277D85DE8];
  return v37;
}

- (void)getCalCalendar
{
  v32 = *MEMORY[0x277D85DE8];
  if (![(MobileCalDAVCalendar *)self calCalendar])
  {
    v5 = [(MobileCalDAVCalendar *)self calendarURLString];

    if (!v5)
    {
      result = 0;
LABEL_22:
      v27 = *MEMORY[0x277D85DE8];
      return result;
    }

    v6 = [(MobileCalDAVCalendar *)self principal];
    v7 = [v6 account];
    v8 = [v7 dbHelper];
    v9 = [(MobileCalDAVCalendar *)self accountID];
    [v8 calDatabaseForAccountID:v9];

    v10 = [(MobileCalDAVCalendar *)self calendarURLString];
    v11 = [MobileCalDAVCalendar cachedCalendarUIDForURLString:v10];

    v12 = MEMORY[0x277D03988];
    if ((v11 & 0x80000000) == 0)
    {
      v13 = DALoggingwithCategory();
      v14 = *(v12 + 6);
      if (os_log_type_enabled(v13, v14))
      {
        v15 = [(MobileCalDAVCalendar *)self calendarURLString];
        v16 = [MEMORY[0x277CCACC8] callStackSymbols];
        v28 = 67109634;
        *v29 = v11;
        *&v29[4] = 2112;
        *&v29[6] = v15;
        v30 = 2112;
        v31 = v16;
        _os_log_impl(&dword_2484B2000, v13, v14, "Found a cached calendar uid (%d) for url %@ %@", &v28, 0x1Cu);
      }

      self->_calCalendar = CalDatabaseCopyCalendarWithUID();
      if (![(MobileCalDAVCalendar *)self calCalendar])
      {
        v17 = [(MobileCalDAVCalendar *)self calendarURLString];
        [MobileCalDAVCalendar removeUIDCacheEntryForCalendarURLString:v17];
      }
    }

    if (![(MobileCalDAVCalendar *)self calCalendar])
    {
      v18 = [(MobileCalDAVCalendar *)self accountID];
      v19 = CalDatabaseCopyStoreWithExternalID();

      v20 = [(MobileCalDAVCalendar *)self calendarURLString];
      self->_calCalendar = CalDatabaseCopyCalendarWithExternalIDInStore();

      if (v19)
      {
        CFRelease(v19);
      }
    }

    v21 = [MEMORY[0x277CCAB98] defaultCenter];
    [v21 addObserver:self selector:sel__dropCalStoreContext name:@"CalDBIsClosing" object:0];

    if ([(MobileCalDAVCalendar *)self calCalendar])
    {
      v22 = [(MobileCalDAVCalendar *)self calendarURLString];

      if (!v22)
      {
LABEL_21:
        result = [(MobileCalDAVCalendar *)self calCalendar];
        goto LABEL_22;
      }

      [(MobileCalDAVCalendar *)self calCalendar];
      UID = CalCalendarGetUID();
      v24 = [(MobileCalDAVCalendar *)self calendarURLString];
      [MobileCalDAVCalendar cacheCalendarUID:UID forCalendarURLString:v24];
    }

    else
    {
      v24 = DALoggingwithCategory();
      v25 = *(v12 + 7);
      if (os_log_type_enabled(v24, v25))
      {
        v26 = [(MobileCalDAVCalendar *)self calendarURLString];
        v28 = 138412290;
        *v29 = v26;
        _os_log_impl(&dword_2484B2000, v24, v25, "Couldn't find calendar with url %@.", &v28, 0xCu);
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

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:@"CalDBIsClosing" object:0];
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

+ (__CFArray)gatherCalendarChangesInPrincipal:(id)a3 calendars:(id)a4 adds:(id *)a5 modifies:(id *)a6 deletes:(id *)a7 changeTracker:(id)a8
{
  v101 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v84 = a4;
  v83 = a8;
  v12 = objc_opt_new();
  v13 = objc_opt_new();
  v85 = objc_opt_new();
  v14 = [v11 account];
  v15 = [v14 dbHelper];
  v16 = [v11 accountID];
  [v15 calDatabaseForAccountID:v16];

  v17 = [v11 account];
  v18 = [v17 accountID];
  v19 = CalDatabaseCopyStoreWithExternalID();

  v20 = MEMORY[0x277D03988];
  if (v19)
  {
    theDict = 0;
    CalDatabaseCopyCalendarChangesInStore();
    v26 = 0;
    cf = v19;
    v80 = v13;
    v27 = [v11 account];
    v28 = [v27 wasMigrated];

    if (v28)
    {
      v29 = [v84 allValues];
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v30 = [v29 countByEnumeratingWithState:&v87 objects:v100 count:16];
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
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v87 + 1) + 8 * i);
            if (([a1 shouldSkipAddedCalendar:{objc_msgSend(v34, "getCalCalendar")}] & 1) == 0)
            {
              [a1 processAddedCalendar:v34];
              [v12 addObject:v34];
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v87 objects:v100 count:16];
        }

        while (v31);
      }

      v61 = DALoggingwithCategory();
      v60 = MEMORY[0x277D03988];
      v62 = *(MEMORY[0x277D03988] + 3);
      v58 = a6;
      v57 = a7;
      v59 = a5;
      if (os_log_type_enabled(v61, v62))
      {
        *buf = 0;
        _os_log_impl(&dword_2484B2000, v61, v62, "CalDatabaseCopyCalendarChangesInStore returned no changeTableIDs.", buf, 2u);
      }

      v25 = 0;
      v13 = v80;

      goto LABEL_47;
    }

    v73 = v11;
    Count = CFArrayGetCount(0);
    Mutable = CFArrayCreateMutable(0, Count, 0);
    if (Count < 1)
    {
LABEL_43:
      v25 = CFAutorelease(Mutable);
      v11 = v73;
      v57 = a7;
      v13 = v80;
      v59 = a5;
      v58 = a6;
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
        v93 = v11;
        v94 = 2048;
        v95 = v65;
        v96 = 2048;
        v97 = v66;
        v13 = v80;
        v98 = 2048;
        v99 = v67;
        _os_log_impl(&dword_2484B2000, v63, v64, "+gatherCalendarChangesInPrincipal %@: found %lu added calendars, %lu modified calendars, and %lu deleted calendars", buf, 0x2Au);
      }

      if (v59)
      {
        v68 = v12;
        *v59 = v12;
      }

      if (v58)
      {
        v69 = v13;
        *v58 = v13;
      }

      if (v57)
      {
        *v57 = v85;
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
          if (([a1 shouldSkipCalendar:v48 withChangeType:ValueAtIndex] & 1) == 0)
          {
            v81 = CalCalendarCopyExternalIdentificationTag();
            v50 = [v84 objectForKeyedSubscript:?];
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
              [v83 saveChange:v41 forEntityType:1];
              v26 = v47;
              Mutable = v46;
              Count = v45;
              goto LABEL_42;
            }

            v51 = v50;
            if (v75 == ValueAtIndex)
            {
              [a1 processAddedCalendar:v50];
              v52 = v12;
            }

            else
            {
              v56 = CFArrayGetValueAtIndex(0, v38);
              [a1 processModifiedCalendar:v51 oldFlags:v56 newFlags:{CFArrayGetValueAtIndex(0, v38)}];
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
    v23 = [v11 account];
    v24 = [v23 accountID];
    *buf = 138543362;
    v93 = v24;
    _os_log_impl(&dword_2484B2000, v21, v22, "Could not find a calendar store with id %{public}@", buf, 0xCu);
  }

  v25 = 0;
LABEL_57:

  v70 = *MEMORY[0x277D85DE8];
  return v25;
}

+ (BOOL)shouldSkipCalendar:(void *)a3 withChangeType:(int)a4
{
  v14 = *MEMORY[0x277D85DE8];
  if ((CalCalendarCanContainEntityType() & 1) == 0 && !CalShouldSyncReminders())
  {
LABEL_14:
    v12 = *MEMORY[0x277D85DE8];
    return 1;
  }

  if (*MEMORY[0x277CF7640] == a4)
  {
    v7 = *MEMORY[0x277D85DE8];

    return [a1 shouldSkipAddedCalendar:a3];
  }

  if (*MEMORY[0x277CF7650] != a4)
  {
    v10 = DALoggingwithCategory();
    v11 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v10, v11))
    {
      v13[0] = 67109120;
      v13[1] = a4;
      _os_log_impl(&dword_2484B2000, v10, v11, "+shouldSkipCalendar:withChangeType: Unexpected change type: %i", v13, 8u);
    }

    goto LABEL_14;
  }

  v9 = *MEMORY[0x277D85DE8];

  return [a1 shouldSkipModifiedCalendar:a3];
}

+ (void)processAddedCalendar:(id)a3
{
  v3 = a3;
  if ([v3 isPublished])
  {
    [v3 setNeedsPublishUpdate:1];
  }

  [v3 setWasModifiedLocally:1];
}

+ (void)processModifiedCalendar:(id)a3 oldFlags:(unsigned int)a4 newFlags:(unsigned int)a5
{
  v11 = a3;
  v7 = [v11 isPublished];
  v8 = [v11 publishURL];
  if (((v7 ^ (v8 == 0)) & 1) == 0)
  {
    [v11 setNeedsPublishUpdate:1];
  }

  v9 = CalCalendarFlagsAreValid();
  if (a4 != a5 && v9)
  {
    v10 = a5 ^ a4;
    if ((v10 & 0x100000) != 0)
    {
      [v11 setNeedsIsAffectingAvailabilityUpdate:1];
    }

    if ((a5 & v10 & 0x400) != 0)
    {
      [v11 setBecameDefaultSchedulingCalendar:1];
    }
  }

  [v11 setWasModifiedLocally:1];
}

+ (BOOL)clearCalendarChanges:(__CFArray *)a3 forPrincipal:(id)a4 changeTrackingClient:(id)a5
{
  v6 = a5;
  v7 = a4;
  v8 = [v7 account];
  v9 = [v8 dbHelper];
  v10 = [v7 accountID];

  [v9 calDatabaseForAccountID:v10];
  CalDatabaseClearIndividualChangeRowIDsForClient();

  return 1;
}

- (id)_itemPropertyDictForItemAtIndex:(int64_t)a3 withChangedIDs:(__CFArray *)a4 withChangedRowids:(__CFArray *)a5 withExternalIDs:(__CFArray *)a6 uniqueIdentifiers:(__CFArray *)a7 significantAttributeChanges:(__CFArray *)a8 oldCalendarIDs:(__CFArray *)a9 entityType:(int)a10
{
  v16 = objc_opt_new();
  if (a4 && CFArrayGetValueAtIndex(a4, a3) != -1)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInt:?];
    [v16 setObject:v17 forKeyedSubscript:@"ChangeID"];
  }

  if (a5 && CFArrayGetValueAtIndex(a5, a3) != -1)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithInt:?];
    [v16 setObject:v18 forKeyedSubscript:@"ChangeRowid"];
  }

  if (a6)
  {
    a6 = CFArrayGetValueAtIndex(a6, a3);
    if (a6)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [v16 setObject:a6 forKeyedSubscript:@"ExternalID"];
      }
    }
  }

  if (a7)
  {
    a7 = CFArrayGetValueAtIndex(a7, a3);
    if (a7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [v16 setObject:a7 forKeyedSubscript:@"UniqueIdentifier"];
      }
    }
  }

  if (a8)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a8, a3);
  }

  else
  {
    ValueAtIndex = 0;
  }

  v20 = [MEMORY[0x277CCABB0] numberWithInt:ValueAtIndex];
  [v16 setObject:v20 forKeyedSubscript:@"SignificantAttributeChange"];

  if (a9)
  {
    v21 = CFArrayGetValueAtIndex(a9, a3);
  }

  else
  {
    v21 = 0xFFFFFFFFLL;
  }

  v22 = [MEMORY[0x277CCABB0] numberWithInt:v21];
  [v16 setObject:v22 forKeyedSubscript:@"OldCalendarID"];

  v23 = [MEMORY[0x277CCABB0] numberWithInt:a10];
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
        v9 = [(MobileCalDAVCalendar *)self calendarURL];
        v10 = [(MobileCalDAVCalendar *)self principal];
        v11 = [v10 accountID];
        v12 = v8;
        v5 = 0x278F16000uLL;
        v13 = [(DACalDAViCalItem *)v12 initWithCalRecord:v7 inContainer:v9 accountID:v11];

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
        v18 = [(MobileCalDAVCalendar *)self calendarURL];
        v19 = [(MobileCalDAVCalendar *)self principal];
        v20 = [v19 accountID];
        v21 = v17;
        v5 = 0x278F16000;
        v22 = [v21 initWithCalRecord:v16 inContainer:v18 accountID:v20];

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
      v29 = self;
      _os_log_impl(&dword_2484B2000, v24, v25, "Could not find a calendar with that matched %@", &v28, 0xCu);
    }

    v23 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v23;
}

- (void)_addAddedItemsOfType:(int)a3 toArray:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(MobileCalDAVCalendar *)self principal];
  v8 = [v7 account];
  v9 = [v8 dbHelper];
  v10 = [(MobileCalDAVCalendar *)self accountID];
  [v9 calDatabaseForAccountID:v10];

  if ([(MobileCalDAVCalendar *)self getCalCalendar])
  {
    v11 = CalDatabaseCopyCalendarItemChangesInCalendar();
    v14 = DALoggingwithCategory();
    v15 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = @"tasks";
      if (a3 == 2)
      {
        v16 = @"events";
      }

      *buf = 138412546;
      v19 = v16;
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
      v19 = self;
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

- (void)_gatherModifiedItemsFromCalChangesCall:(void *)a3 forType:(id)a4 inArray:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(MobileCalDAVCalendar *)self principal];
  v11 = [v10 account];
  v12 = [v11 dbHelper];
  v13 = [(MobileCalDAVCalendar *)self accountID];
  v14 = [v12 calDatabaseForAccountID:v13];

  v15 = [(MobileCalDAVCalendar *)self getCalCalendar];
  if (v15)
  {
    *theDict = 0;
    (a3)(v14, v15, theDict);
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
            [(MobileCalDAVCalendar *)self _addCalendarItemWithRowID:ValueAtIndex toArrayIfNeeded:v9 withChangeRowid:CFArrayGetValueAtIndex(v19 changeType:i), v8];
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

- (void)_gatherModifiedEventsInArray:(id)a3
{
  theDict[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MobileCalDAVCalendar *)self principal];
  v6 = [v5 account];
  v7 = [v6 dbHelper];
  v8 = [(MobileCalDAVCalendar *)self accountID];
  [v7 calDatabaseForAccountID:v8];

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

- (void)_gatherModifiedTasksInArray:(id)a3
{
  theDict[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MobileCalDAVCalendar *)self principal];
  v6 = [v5 account];
  v7 = [v6 dbHelper];
  v8 = [(MobileCalDAVCalendar *)self accountID];
  [v7 calDatabaseForAccountID:v8];

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

- (void)_addAddedRecurrenceSplitItemsToArray:(id)a3
{
  theDict[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MobileCalDAVCalendar *)self principal];
  v6 = [v5 account];
  v7 = [v6 dbHelper];
  v8 = [(MobileCalDAVCalendar *)self accountID];
  [v7 calDatabaseForAccountID:v8];

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
    v10 = v4;
    v11 = DALoggingwithCategory();
    v12 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v11, v12))
    {
      LODWORD(theDict[0]) = 138412290;
      *(theDict + 4) = self;
      _os_log_impl(&dword_2484B2000, v11, v12, "Could not find a calendar with that matched %@", theDict, 0xCu);
    }

    v4 = v10;
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

- (void)_gatherDeletedChanges:(void *)a3 inDictionary:(id)a4
{
  v71 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [(MobileCalDAVCalendar *)self principal];
  v8 = [v7 account];
  v9 = [v8 dbHelper];
  v10 = [(MobileCalDAVCalendar *)self accountID];
  v11 = [v9 calDatabaseForAccountID:v10];

  v64 = self;
  v12 = [(MobileCalDAVCalendar *)self getCalCalendar];
  v13 = MEMORY[0x277D03988];
  if (v12)
  {
    v66 = 0;
    v14 = (a3)(v11, v12, &v66);
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

    v57 = a3;
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
          if (v57 == MEMORY[0x277CF7170])
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

          v28 = [(MobileCalDAVCalendar *)v64 principal];
          v29 = [v28 account];
          v30 = [v29 itemIDsToMoveActions];
          v31 = [v30 mutableCopy];

          v32 = [MEMORY[0x277CCABB0] numberWithInt:{CFArrayGetValueAtIndex(theArray, v21)}];
          v33 = [v31 objectForKeyedSubscript:v32];
          if (v33)
          {
            v34 = DALoggingwithCategory();
            if (os_log_type_enabled(v34, v65))
            {
              [v33 oldExternalID];
              v35 = v53 = v6;
              *buf = 138412290;
              *v68 = v35;
              _os_log_impl(&dword_2484B2000, v34, v65, "Found a really interesting move. We're going to steal the filename from the move action: %@", buf, 0xCu);

              v6 = v53;
            }

            v36 = [v33 oldExternalID];

            v25 = v36;
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
                v40 = [(MobileCalDAVCalendar *)v64 _itemPropertyDictForItemAtIndex:v21 withChangedIDs:theArray withChangedRowids:Value withExternalIDs:v56 uniqueIdentifiers:v63 significantAttributeChanges:v55 oldCalendarIDs:v54 entityType:v52];
                [v6 setObject:v40 forKeyedSubscript:v25];

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
        v45 = [(MobileCalDAVCalendar *)v64 principal];
        v46 = [v45 account];
        v47 = [v46 changeTrackingID];
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
  v3 = [(MobileCalDAVCalendar *)self principal];
  v4 = [v3 account];
  v5 = [v4 dbHelper];
  v6 = [(MobileCalDAVCalendar *)self accountID];
  [v5 calDatabaseForAccountID:v6];

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

- (void)clearChangesForEntityType:(int)a3
{
  v32 = *MEMORY[0x277D85DE8];
  changesToClear = self->_changesToClear;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:?];
  v7 = [(NSMutableDictionary *)changesToClear objectForKeyedSubscript:v6];

  v8 = [(MobileCalDAVCalendar *)self title];
  v9 = CalEntityTypeGetName();
  v10 = DALoggingwithCategory();
  v11 = *(MEMORY[0x277D03988] + 6);
  v12 = os_log_type_enabled(v10, v11);
  if (v7)
  {
    v24 = a3;
    if (v12)
    {
      *buf = 134218498;
      Count = CFArrayGetCount(v7);
      v28 = 2114;
      v29 = v9;
      v30 = 2112;
      v31 = v8;
      _os_log_impl(&dword_2484B2000, v10, v11, "Clearing %lu %{public}@ in %@", buf, 0x20u);
    }

    v23 = [(MobileCalDAVCalendar *)self principal];
    v13 = [v23 account];
    v14 = [v13 dbHelper];
    v15 = [(MobileCalDAVCalendar *)self accountID];
    [v14 calDatabaseForAccountID:v15];
    [(MobileCalDAVCalendar *)self principal];
    v16 = v25 = v8;
    [v16 account];
    v18 = v17 = v9;
    v19 = [v18 changeTrackingID];
    CalDatabaseClearIndividualChangeRowIDsForClient();

    v9 = v17;
    v20 = self->_changesToClear;
    v10 = [MEMORY[0x277CCABB0] numberWithInt:v24];
    v21 = v20;
    v8 = v25;
    [(NSMutableDictionary *)v21 removeObjectForKey:v10];
  }

  else if (v12)
  {
    *buf = 138543618;
    Count = v9;
    v28 = 2112;
    v29 = v8;
    _os_log_impl(&dword_2484B2000, v10, v11, "No %{public}@ to clear in %@", buf, 0x16u);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_clearChangesAtIndices:(id)a3 forType:(int)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([v5 count])
  {
    v6 = DALoggingwithCategory();
    v7 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = DAStringFromCalEntityType();
      v9 = [v5 DACompactDescription];
      *buf = 138412546;
      v30 = v8;
      v31 = 2112;
      v32 = v9;
      _os_log_impl(&dword_2484B2000, v6, v7, "Clearing %@ changes at indices %@", buf, 0x16u);
    }

    Mutable = CFArrayCreateMutable(0, [v5 count], 0);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = v5;
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

    v16 = [(MobileCalDAVCalendar *)self principal];
    v17 = [v16 account];
    v18 = [v17 dbHelper];
    v19 = [(MobileCalDAVCalendar *)self accountID];
    [v18 calDatabaseForAccountID:v19];
    v20 = [(MobileCalDAVCalendar *)self principal];
    v21 = [v20 account];
    v22 = [v21 changeTrackingID];
    CalDatabaseClearIndividualChangeRowIDsForClient();

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_clearChangesFromItem:(id)a3
{
  v4 = [a3 originatingChangeItems];
  [(MobileCalDAVCalendar *)self _clearChanges:v4 shouldClearAttachmentChanges:1];
}

- (void)_clearChanges:(id)a3 shouldClearAttachmentChanges:(BOOL)a4
{
  v4 = a4;
  v14 = a3;
  v6 = [v14 objectForKeyedSubscript:@"CalDAVChangeEvent"];
  [(MobileCalDAVCalendar *)self _clearChangesAtIndices:v6 forType:2];

  v7 = [v14 objectForKeyedSubscript:@"CalDAVChangeTask"];
  [(MobileCalDAVCalendar *)self _clearChangesAtIndices:v7 forType:3];

  v8 = [v14 objectForKeyedSubscript:@"CalDAVChangeAlarm"];
  [(MobileCalDAVCalendar *)self _clearChangesAtIndices:v8 forType:4];

  v9 = [v14 objectForKeyedSubscript:@"CalDAVChangeAttendee"];
  [(MobileCalDAVCalendar *)self _clearChangesAtIndices:v9 forType:7];

  v10 = [v14 objectForKeyedSubscript:@"CalDAVChangeOrganizer"];
  [(MobileCalDAVCalendar *)self _clearChangesAtIndices:v10 forType:8];

  v11 = [v14 objectForKeyedSubscript:@"CalDAVChangeEventAction"];
  [(MobileCalDAVCalendar *)self _clearChangesAtIndices:v11 forType:9];

  if (v4)
  {
    v12 = [v14 objectForKeyedSubscript:@"CalDAVChangeAttachment"];
    [(MobileCalDAVCalendar *)self _clearChangesAtIndices:v12 forType:11];
  }

  v13 = [v14 objectForKeyedSubscript:@"CalDAVChangeRecurrence"];
  [(MobileCalDAVCalendar *)self _clearChangesAtIndices:v13 forType:5];
}

- (void)_saveChangesForItem:(id)a3
{
  v4 = [a3 originatingChangeItems];
  [(MobileCalDAVCalendar *)self _saveChanges:v4];
}

- (void)_saveChanges:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"CalDAVChangeEvent"];
  [(MobileCalDAVCalendar *)self _saveChangesAtIndices:v5 forType:2];

  v6 = [v4 objectForKeyedSubscript:@"CalDAVChangeTask"];
  [(MobileCalDAVCalendar *)self _saveChangesAtIndices:v6 forType:3];

  v7 = [v4 objectForKeyedSubscript:@"CalDAVChangeAlarm"];
  [(MobileCalDAVCalendar *)self _saveChangesAtIndices:v7 forType:4];

  v8 = [v4 objectForKeyedSubscript:@"CalDAVChangeAttendee"];
  [(MobileCalDAVCalendar *)self _saveChangesAtIndices:v8 forType:7];

  v9 = [v4 objectForKeyedSubscript:@"CalDAVChangeOrganizer"];
  [(MobileCalDAVCalendar *)self _saveChangesAtIndices:v9 forType:8];

  v10 = [v4 objectForKeyedSubscript:@"CalDAVChangeAttachment"];
  [(MobileCalDAVCalendar *)self _saveChangesAtIndices:v10 forType:11];

  v11 = [v4 objectForKeyedSubscript:@"CalDAVChangeRecurrence"];
  [(MobileCalDAVCalendar *)self _saveChangesAtIndices:v11 forType:5];

  v12 = [v4 objectForKeyedSubscript:@"CalDAVChangeEventAction"];

  [(MobileCalDAVCalendar *)self _saveChangesAtIndices:v12 forType:9];
}

- (id)_actionsForJunkItemsInModifiedItems:(id)a3 alreadySentItems:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v30 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v36;
    type = *(MEMORY[0x277D03988] + 3);
    v32 = v8;
    v33 = v7;
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
        v14 = [v13 calItem];
        if (v14)
        {
          v15 = v14;
          if ([(MobileCalDAVCalendar *)self _isItemJunk:v14])
          {
            v16 = CalEntityCopyRecordID();
            if (v16)
            {
              v17 = v16;
              if (([v7 containsObject:v16] & 1) == 0)
              {
                v18 = [DACalDAViCalItem alloc];
                v19 = [(MobileCalDAVCalendar *)self calendarURL];
                v20 = [(MobileCalDAVCalendar *)self principal];
                v21 = [v20 accountID];
                v22 = [(DACalDAViCalItem *)v18 initWithCalRecord:v15 inContainer:v19 accountID:v21];

                v7 = v33;
                v23 = [(DACalDAViCalItem *)v22 serverID];
                if (v23)
                {
                  v24 = [objc_alloc(MEMORY[0x277CF7030]) initWithResourceURL:v23];
                  v25 = [v13 originatingChangeItems];
                  [v24 setChangeContext:v25];

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
            v27 = [v13 serverID];
            *buf = 138412290;
            v40 = v27;
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

- (id)_recurrenceSplitActionsForItems:(id)a3 alreadySentItems:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v39 = a4;
  v5 = a3;
  v38 = objc_opt_new();
  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_110];

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
            v20 = [v12 serverID];
            *buf = v37;
            v50 = v20;
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
          v22 = [(MobileCalDAVCalendar *)self calendarURL];
          v23 = [(MobileCalDAVCalendar *)self principal];
          v24 = [v23 accountID];
          v25 = [(DACalDAViCalItem *)v21 initWithCalRecord:RecurrenceInSetForEvent inContainer:v22 accountID:v24];
          v26 = [(DACalDAViCalItem *)v25 serverID];

          v27 = objc_alloc(MEMORY[0x277CBEAA8]);
          CalEventGetStartDate();
          v28 = [v27 initWithTimeIntervalSinceReferenceDate:?];
          [v12 calItem];
          v29 = CalEventCopyUniqueIdentifier();
          IsFloating = CalEventIsFloating();
          IsAllDay = CalEventIsAllDay();
          if (v26 && v28 && v29)
          {
            v32 = [objc_alloc(MEMORY[0x277CF7028]) initWithResourceURL:v26 recurrenceDate:v28 uidForCreatedSeries:v29 floating:IsFloating allday:IsAllDay];
            [v38 addObject:v32];
            [v39 addObject:v16];
            v33 = [v12 originatingChangeItems];
            [v32 setChangeContext:v33];
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

- (id)_createActionsForItems:(id)a3 withAction:(int)a4 alreadySentItems:(id)a5 createServerIDs:(BOOL)a6 shouldSave:(BOOL *)a7
{
  v47 = a6;
  v62 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v54 = a5;
  v51 = objc_opt_new();
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v11 = v10;
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
        v18 = [v17 calItem];
        if (v18)
        {
          v19 = v18;
          if ((CalEntityGetType() == 2 || CalEntityGetType() == 5) && (v20 = CalEventCopyOriginalEvent()) != 0)
          {
            a4 = 1;
            v19 = v20;
          }

          else
          {
            CFRetain(v19);
          }

          v23 = CalEntityCopyRecordID();
          if (v23 && ([v54 containsObject:v23] & 1) == 0)
          {
            v52 = a4;
            v24 = [DACalDAViCalItem alloc];
            v25 = [(MobileCalDAVCalendar *)self calendarURL];
            v26 = [(MobileCalDAVCalendar *)self principal];
            v27 = [v26 accountID];
            v28 = [(DACalDAViCalItem *)v24 initWithCalRecord:v19 inContainer:v25 accountID:v27];

            v29 = [v17 originatingChangeItems];
            [(DACalDAViCalItem *)v28 setOriginatingChangeItems:v29];

            v30 = [(DACalDAViCalItem *)v28 serverID];
            v31 = [(MobileCalDAVCalendar *)self calendarURL];
            v32 = [v30 da_leastInfoStringRepresentationRelativeToParentURL:v31];

            v33 = [(DACalDAViCalItem *)v28 serverID];
            if (v33 || !v47)
            {
            }

            else if (![(DACalDAViCalItem *)v28 prohibitLocalCreationOfServerID])
            {
              v34 = [(MobileCalDAVCalendar *)self calendarURL];
              v35 = [(DACalDAViCalItem *)v28 filename];
              v36 = [v34 URLByAppendingPathComponent:v35];
              [(DACalDAViCalItem *)v28 setServerID:v36];

              v37 = [(DACalDAViCalItem *)v28 serverID];
              v38 = [(MobileCalDAVCalendar *)self calendarURL];
              v39 = [v37 da_leastInfoStringRepresentationRelativeToParentURL:v38];

              CalCalendarItemSetExternalID();
              v32 = v39;
            }

            a4 = v52;
            if (v32)
            {
              [(NSMutableDictionary *)self->_URLToRecordIDMap setObject:v23 forKeyedSubscript:v32];
            }

            v40 = [objc_alloc(MEMORY[0x277CFDB90]) initWithAction:v52 context:v28];
            v41 = [v17 originatingChangeItems];
            [v40 setChangeContext:v41];

            [v51 addObject:v40];
            v13 = v53;
            if (!v52)
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

            [v54 addObject:v23];

            v14 = v49;
            v11 = v50;
            v15 = v48;
          }

          else
          {
            if (a4 == 1)
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
          v22 = [v17 serverID];
          *buf = 138412290;
          v60 = v22;
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

- (BOOL)_shouldRecordError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:*MEMORY[0x277CFDB18]])
  {
    v5 = [v3 code];

    if (v5 == 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v6 = [v3 domain];
  if (![v6 isEqualToString:*MEMORY[0x277CFDB80]])
  {

    goto LABEL_9;
  }

  v7 = [v3 code];

  if (v7 != 412)
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

- (void)_clearExistingHTTPErrorForCalItem:(void *)a3
{
  if (CalCalendarItemHasErrorCode())
  {
    CalCalendarItemSetError();

    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (void)_recordError:(id)a3 forCalItem:(void *)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    if (v6)
    {
      if ([(MobileCalDAVCalendar *)self _shouldRecordError:v6])
      {
        v8 = MEMORY[0x24C1CF2F0](a4);
        Error = CalDatabaseCreateError();
        v13 = *MEMORY[0x277CCA7E8];
        v10 = [v7 cal_serializableError];
        v14[0] = v10;
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
      [(MobileCalDAVCalendar *)self _clearExistingHTTPErrorForCalItem:a4];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasCalendarErrorOfType:(unint64_t)a3
{
  v3 = [(MobileCalDAVCalendar *)self calCalendar];
  if (v3)
  {

    LOBYTE(v3) = MEMORY[0x282147380]();
  }

  return v3;
}

- (void)clearCalendarErrorOfType:(unint64_t)a3
{
  if ([(MobileCalDAVCalendar *)self hasCalendarErrorOfType:a3])
  {
    [(MobileCalDAVCalendar *)self calCalendar];
    CalCalendarSetError();

    [(MobileCalDAVCalendar *)self setIsDirty:1];
  }
}

- (void)recordCalendarError:(id)a3 ofType:(unint64_t)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(MobileCalDAVCalendar *)self calCalendar];
  if (v5)
  {
    v7 = v6;
    if (v6)
    {
      if ([(MobileCalDAVCalendar *)self _shouldRecordError:v5])
      {
        v8 = MEMORY[0x24C1CF2F0](v7);
        Error = CalDatabaseCreateError();
        v13 = *MEMORY[0x277CCA7E8];
        v10 = [v5 cal_serializableError];
        v14[0] = v10;
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

- (void)putAction:(id)a3 completedWithError:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a4;
  itemsPendingSync = self->_itemsPendingSync;
  v8 = a3;
  [(NSMutableSet *)itemsPendingSync removeObject:v8];
  [(MobileCalDAVCalendar *)self setNumUploadedElements:[(MobileCalDAVCalendar *)self numUploadedElements]+ 1];
  v9 = [v8 context];

  -[MobileCalDAVCalendar _recordError:forCalItem:](self, "_recordError:forCalItem:", v6, [v9 calItem]);
  v10 = DALoggingwithCategory();
  v11 = MEMORY[0x277D03988];
  v12 = *(MEMORY[0x277D03988] + 6);
  v13 = os_log_type_enabled(v10, v12);
  if (!v6)
  {
    if (v13)
    {
      v19 = [v9 serverID];
      v30 = 138412290;
      v31 = v19;
      _os_log_impl(&dword_2484B2000, v10, v12, "Put of item at %@ succeeded without error", &v30, 0xCu);
    }

    goto LABEL_12;
  }

  if (v13)
  {
    v14 = [v9 serverID];
    v30 = 138412546;
    v31 = v6;
    v32 = 2112;
    v33 = v14;
    _os_log_impl(&dword_2484B2000, v10, v12, "Encountered error %@ when putting item to %@", &v30, 0x16u);
  }

  v15 = [v6 domain];
  v16 = [v15 isEqualToString:*MEMORY[0x277CFDB80]];

  if (v16)
  {
    v17 = [v6 code];
    switch(v17)
    {
      case 412:
LABEL_8:
        v18 = [v9 serverID];
        [(MobileCalDAVCalendar *)self setEtag:0 forItemAtURL:v18];

        [(MobileCalDAVCalendar *)self _forceRefreshNextSync];
LABEL_12:
        v20 = DALoggingwithCategory();
        if (os_log_type_enabled(v20, v12))
        {
          v21 = [v9 serverID];
          v30 = 138412290;
          v31 = v21;
          _os_log_impl(&dword_2484B2000, v20, v12, "Clearing local changes for the item at %@", &v30, 0xCu);
        }

        [(MobileCalDAVCalendar *)self _clearChangesFromItem:v9];
        goto LABEL_23;
      case 409:
        v22 = DALoggingwithCategory();
        if (os_log_type_enabled(v22, v12))
        {
          v23 = [v9 serverID];
          v30 = 138412290;
          v31 = v23;
          _os_log_impl(&dword_2484B2000, v22, v12, "Received a 409 conflict for the event at %@. Creating a new UUID and trying again.", &v30, 0xCu);
        }

        v24 = [MEMORY[0x277CCACA8] da_newGUID];
        [v9 calItem];
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
    v28 = [v9 serverID];
    v30 = 138412290;
    v31 = v28;
    _os_log_impl(&dword_2484B2000, v27, v12, "Saving local changes to try again later for the item at %@", &v30, 0xCu);
  }

  [(MobileCalDAVCalendar *)self _saveChangesForItem:v9];
LABEL_23:

  v29 = *MEMORY[0x277D85DE8];
}

- (void)deleteAction:(id)a3 completedWithError:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a4;
  itemsPendingSync = self->_itemsPendingSync;
  v8 = a3;
  [(NSMutableSet *)itemsPendingSync removeObject:v8];
  [(MobileCalDAVCalendar *)self setNumUploadedElements:[(MobileCalDAVCalendar *)self numUploadedElements]+ 1];
  v9 = [v8 context];

  v10 = DALoggingwithCategory();
  v11 = *(MEMORY[0x277D03988] + 6);
  v12 = os_log_type_enabled(v10, v11);
  if (!v6)
  {
    if (v12)
    {
      v24 = 138412290;
      v25 = v9;
      _os_log_impl(&dword_2484B2000, v10, v11, "Delete of item at %@ succeeded without error", &v24, 0xCu);
    }

    goto LABEL_11;
  }

  if (v12)
  {
    v24 = 138412546;
    v25 = v6;
    v26 = 2112;
    v27 = v9;
    _os_log_impl(&dword_2484B2000, v10, v11, "Encountered error %@ when deleting item from %@", &v24, 0x16u);
  }

  v13 = [v6 domain];
  v14 = [v13 isEqualToString:*MEMORY[0x277CFDB80]];

  if (v14)
  {
    v15 = 0;
    v16 = [v6 code] - 403;
    if (v16 <= 9 && ((1 << v16) & 0x203) != 0)
    {
      [(MobileCalDAVCalendar *)self setEtag:0 forItemAtURL:v9];
      [(MobileCalDAVCalendar *)self _forceRefreshNextSync];
LABEL_11:
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  v17 = [(NSMutableDictionary *)self->_deletedCalendarItems objectForKeyedSubscript:v9];
  if (v17)
  {
    v18 = DALoggingwithCategory();
    v19 = os_log_type_enabled(v18, v11);
    if (v15)
    {
      if (v19)
      {
        v24 = 138412290;
        v25 = v9;
        _os_log_impl(&dword_2484B2000, v18, v11, "Clearing local delete change for item at %@", &v24, 0xCu);
      }

      v20 = MEMORY[0x277CBEB98];
      v21 = [v17 rowid];
      v22 = [v20 setWithObject:v21];
      -[MobileCalDAVCalendar _clearChangesAtIndices:forType:](self, "_clearChangesAtIndices:forType:", v22, [v17 entityType]);
    }

    else
    {
      if (v19)
      {
        v24 = 138412290;
        v25 = v9;
        _os_log_impl(&dword_2484B2000, v18, v11, "Keeping delete change to try again later for item at %@", &v24, 0xCu);
      }

      v21 = [(MobileCalDAVCalendar *)self changeTracker];
      v22 = [v17 rowid];
      [v21 saveChange:objc_msgSend(v22 forEntityType:{"intValue"), objc_msgSend(v17, "entityType")}];
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)recurrenceSplitAction:(id)a3 completedWithUpdatedETag:(id)a4 updatedScheduleTag:(id)a5 createdURL:(id)a6 createdETag:(id)a7 createdScheduleTag:(id)a8
{
  itemsPendingSync = self->_itemsPendingSync;
  v15 = a8;
  v16 = a7;
  v23 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  [(NSMutableSet *)itemsPendingSync removeObject:v19];
  v20 = [v19 resourceURL];
  [(MobileCalDAVCalendar *)self setEtag:v18 forItemAtURL:v20];

  v21 = [v19 resourceURL];
  [(MobileCalDAVCalendar *)self setScheduleTag:v17 forItemAtURL:v21];

  v22 = [v19 uidForCreatedSeries];

  [(MobileCalDAVCalendar *)self setURL:v23 forResourceWithUUID:v22];
  [(MobileCalDAVCalendar *)self setEtag:v16 forItemAtURL:v23];

  [(MobileCalDAVCalendar *)self setScheduleTag:v15 forItemAtURL:v23];
}

- (void)recurrenceSplitAction:(id)a3 failedWithError:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(NSMutableSet *)self->_itemsPendingSync removeObject:v6];
  v8 = [v7 domain];
  v9 = [v8 isEqualToString:*MEMORY[0x277CFDB80]];

  if (v9)
  {
    v10 = [v7 code];
    if (v10 != 401 && (v10 - 500) > 0xFFFFFFFFFFFFFF9BLL)
    {
      v11 = DALoggingwithCategory();
      v12 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v11, v12))
      {
        v13 = [v6 resourceURL];
        v24 = 138412546;
        v25 = v13;
        v26 = 2112;
        v27 = v7;
        _os_log_impl(&dword_2484B2000, v11, v12, "Split action for item at URL %@ failed with error %@. Clearing recurrence-set.", &v24, 0x16u);
      }

      v14 = [v6 resourceURL];
      v15 = [(MobileCalDAVCalendar *)self calendarURL];
      v16 = [v14 da_leastInfoStringRepresentationRelativeToParentURL:v15];

      v17 = [(MobileCalDAVCalendar *)self _copyCalItemWithExternalID:v16];
      if (v17)
      {
        v18 = v17;
        v19 = CalEventCopyRecurrenceSet();
        if (v19)
        {
          v20 = v19;
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

      v20 = [v6 changeContext];
      [(MobileCalDAVCalendar *)self _clearChanges:v20];
      goto LABEL_16;
    }
  }

  v16 = DALoggingwithCategory();
  v21 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v16, v21))
  {
    v20 = [v6 resourceURL];
    v24 = 138412546;
    v25 = v20;
    v26 = 2112;
    v27 = v7;
    _os_log_impl(&dword_2484B2000, v16, v21, "Split action for item at URL %@ failed with error %@. Error appears to be transient; we will try again next time.", &v24, 0x16u);
    goto LABEL_16;
  }

LABEL_17:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)recurrenceSplitActionsCompletedWithError:(id)a3
{
  if ([(MobileCalDAVCalendar *)self isDirty])
  {
    v7 = [(MobileCalDAVCalendar *)self principal];
    v4 = [v7 account];
    v5 = [v4 dbHelper];
    v6 = [(MobileCalDAVCalendar *)self accountID];
    [v5 calSaveDatabaseAndFlushCachesForAccountID:v6];
  }
}

- (void)reportJunkAction:(id)a3 completedWithError:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(NSMutableSet *)self->_itemsPendingSync removeObject:v6];
  if (!v7)
  {
    v14 = DALoggingwithCategory();
    v15 = *(MEMORY[0x277D03988] + 7);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = [v6 resourceURL];
      v23 = 138412290;
      v24 = v16;
      v17 = "Successfully reported URL %@ as junk.";
      v18 = v14;
      v19 = v15;
      v20 = 12;
LABEL_11:
      _os_log_impl(&dword_2484B2000, v18, v19, v17, &v23, v20);
    }

LABEL_12:

    v13 = [v6 changeContext];
    [(MobileCalDAVCalendar *)self _clearChanges:v13];
    goto LABEL_13;
  }

  v8 = [v7 domain];
  v9 = [v8 isEqualToString:*MEMORY[0x277CFDB80]];

  if (v9 && ([v7 code] - 500) > 0xFFFFFFFFFFFFFF9BLL)
  {
    v14 = DALoggingwithCategory();
    v21 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v14, v21))
    {
      v16 = [v6 resourceURL];
      v23 = 138412546;
      v24 = v16;
      v25 = 2112;
      v26 = v7;
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
    v12 = [v6 resourceURL];
    v23 = 138412546;
    v24 = v12;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_2484B2000, v10, v11, "Reporting junk for URL %@ failed with error %@. Trying again later.", &v23, 0x16u);
  }

  v13 = [v6 changeContext];
  [(MobileCalDAVCalendar *)self _saveChanges:v13];
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

- (void)_addShareeWithRowID:(id)a3 toDictionaryIfNeeded:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MobileCalDAVCalendar *)self principal];
  v9 = [v8 account];
  v10 = [v9 dbHelper];
  v11 = [(MobileCalDAVCalendar *)self accountID];
  [v10 calDatabaseForAccountID:v11];

  v12 = [v7 objectForKeyedSubscript:v6];

  if (!v12)
  {
    [v6 intValue];
    v13 = CalDatabaseCopyShareeWithUID();
    if (v13)
    {
      v14 = v13;
      v15 = [objc_alloc(MEMORY[0x277CF6FE0]) initWithCalSharee:v13];
      if (v15)
      {
        [v7 setObject:v15 forKeyedSubscript:v6];
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
        v19[1] = [v6 intValue];
        _os_log_impl(&dword_2484B2000, v16, v17, "Could not get an owning sharee with uid %d", v19, 8u);
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_collectShareeActions
{
  v56 = *MEMORY[0x277D85DE8];
  v3 = [(MobileCalDAVCalendar *)self principal];
  v4 = [v3 account];
  v5 = [v4 wasMigrated];

  if (!v5)
  {
    v37 = [MEMORY[0x277CBEB38] dictionary];
    v36 = [MEMORY[0x277CBEB38] dictionary];
    v7 = [(MobileCalDAVCalendar *)self principal];
    v8 = [v7 account];
    v9 = [v8 dbHelper];
    v10 = [(MobileCalDAVCalendar *)self accountID];
    [v9 calDatabaseForAccountID:v10];

    if ([(MobileCalDAVCalendar *)self getCalCalendar])
    {
      theDict = 0;
      if (CalDatabaseCopyShareeChangesInCalendar() == -1)
      {
        v13 = v36;
LABEL_30:

        v35 = *MEMORY[0x277D85DE8];
        return;
      }

      v14 = DALoggingwithCategory();
      v15 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v14, v15))
      {
        *buf = 134217984;
        v55 = 0;
        _os_log_impl(&dword_2484B2000, v14, v15, "Gathering modified sharees; found %li modified sharees", buf, 0xCu);
      }

      v38 = self;
      v16 = [MEMORY[0x277CBEB18] array];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v39 = [v36 allValues];
      v17 = [(__CFArray *)v39 countByEnumeratingWithState:&v45 objects:v53 count:16];
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
              objc_enumerationMutation(v39);
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

            [(NSArray *)v16 addObject:v27];
          }

          v18 = [(__CFArray *)v39 countByEnumeratingWithState:&v45 objects:v53 count:16];
        }

        while (v18);
      }

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v28 = [v37 allValues];
      v29 = [v28 countByEnumeratingWithState:&v41 objects:v50 count:16];
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
              objc_enumerationMutation(v28);
            }

            v33 = [objc_alloc(MEMORY[0x277CFDB90]) initWithAction:1 context:*(*(&v41 + 1) + 8 * j)];
            [(NSArray *)v16 addObject:v33];
          }

          v30 = [v28 countByEnumeratingWithState:&v41 objects:v50 count:16];
        }

        while (v30);
      }

      shareeActions = v38->_shareeActions;
      v38->_shareeActions = v16;
    }

    else
    {
      v11 = DALoggingwithCategory();
      v12 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v11, v12))
      {
        *buf = 138412290;
        v55 = self;
        _os_log_impl(&dword_2484B2000, v11, v12, "Could not find a calendar with that matched %@", buf, 0xCu);
      }
    }

    v13 = v36;
    goto LABEL_30;
  }

  v40 = objc_opt_new();
  [(MobileCalDAVCalendar *)self setShareeActions:?];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)prepareSyncActionsWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVCalendar *)self principal];
  v6 = [v5 account];

  if (![v6 wasMigrated])
  {
    v33 = v6;
    v34 = v4;
    v7 = [(MobileCalDAVCalendar *)self principal];
    v8 = [v7 account];
    v9 = [v8 dbHelper];
    v10 = [(MobileCalDAVCalendar *)self accountID];
    [v9 calDatabaseForAccountID:v10];

    LODWORD(v7) = CalDatabaseGetSequenceNumber();
    [(MobileCalDAVCalendar *)self createSyncActions];
    [(MobileCalDAVCalendar *)self generateICSForActions];
    if (v7 != CalDatabaseGetSequenceNumber())
    {
      v36 = self;
      do
      {
        v11 = [(MobileCalDAVCalendar *)self principal];
        v12 = [v11 account];
        v13 = [v12 serverVersion];
        v14 = [v13 supportsCalendarRecurrenceSplit];

        if (!v14)
        {
          break;
        }

        v15 = [(MobileCalDAVCalendar *)self copyRecurrenseSplitItems];
        v16 = [(MobileCalDAVCalendar *)self _recurrenceSplitActionsForItems:v15 alreadySentItems:0];
        v17 = [v16 count];
        if (v17 == [(NSArray *)self->_recurrenceSplitActions count])
        {
          if (!v17)
          {

            break;
          }

          v35 = v15;
          v18 = 0;
          v19 = 0;
          v37 = v17;
          do
          {
            v20 = [v16 objectAtIndexedSubscript:v19];
            v21 = [(NSArray *)self->_recurrenceSplitActions objectAtIndexedSubscript:v19];
            v22 = [v20 resourceURL];
            v23 = [v21 resourceURL];
            if ([v22 isEqual:v23])
            {
              v24 = [v20 recurrenceDate];
              [v21 recurrenceDate];
              v26 = v25 = v16;
              v27 = [v24 isEqual:v26] ^ 1;

              v16 = v25;
              v17 = v37;

              self = v36;
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

    v6 = v33;
    v4 = v34;
    if ([(NSArray *)self->_syncActions count]&& ct_green_tea_logging_enabled())
    {
      v29 = [v33 backingAccount];
      v30 = [v29 isICloudAccount];

      if (v30)
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

  v4[2](v4, self);
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
  v98 = [(MobileCalDAVCalendar *)self copyDeletedItems];
  obj = [v98 allKeys];
  v5 = [obj countByEnumeratingWithState:&v121 objects:v133 count:16];
  v6 = *(MEMORY[0x277D03988] + 6);
  v103 = self;
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

            v16 = [v98 objectForKeyedSubscript:v11];
            v17 = [v16 objectForKeyedSubscript:@"ChangeRowid"];

            v18 = [v98 objectForKeyedSubscript:v11];
            v19 = [v18 objectForKeyedSubscript:@"EntityType"];
            v20 = self;
            v21 = [v19 intValue];

            if (v21)
            {
              v22 = v21;
            }

            else
            {
              v22 = 2;
            }

            v23 = [(MobileCalDAVCalendar *)v20 calendarURL];
            v24 = [v11 da_absoluteURLForChildLeastInfoRepresentationRelativeToParentURL:v23];

            if (v24)
            {
              if (v17)
              {
                v25 = objc_opt_new();
                [v25 setRowid:v17];
                [v25 setEntityType:v22];
                [(NSMutableDictionary *)v103->_deletedCalendarItems setObject:v25 forKeyedSubscript:v24];
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
              self = v103;
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
              self = v103;
              [(MobileCalDAVCalendar *)v103 _clearChangesAtIndices:v26 forType:v22];
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
    v31 = [v98 count];
    *buf = 134217984;
    v132 = v31;
    _os_log_impl(&dword_2484B2000, v30, v6, "Found %lu deleted items", buf, 0xCu);
  }

  v32 = objc_opt_new();
  v33 = [(MobileCalDAVCalendar *)self principal];
  v34 = [v33 account];
  v35 = [v34 serverVersion];
  v36 = [v35 supportsCalendarRecurrenceSplit];

  if (v36)
  {
    v37 = [(MobileCalDAVCalendar *)self copyRecurrenseSplitItems];
    v38 = [(MobileCalDAVCalendar *)self _recurrenceSplitActionsForItems:v37 alreadySentItems:v32];
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
  v96 = [(MobileCalDAVCalendar *)self copyAddedItems];
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
  v47 = [(MobileCalDAVCalendar *)self copyModifiedItems];
  v48 = [(MobileCalDAVCalendar *)self principal];
  v49 = [v48 account];
  v50 = [v49 serverVersion];
  v51 = [v50 supportsCalendarRecurrenceSplit];

  if (v51)
  {
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v52 = v47;
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

  v59 = [(MobileCalDAVCalendar *)self principal];
  v60 = [v59 account];
  v61 = [v60 serverVersion];
  v62 = [v61 supportsCalendarAudit];

  if (v62)
  {
    v63 = v97;
    v64 = [(MobileCalDAVCalendar *)self _actionsForJunkItemsInModifiedItems:v47 alreadySentItems:v97];
  }

  else
  {
    v64 = 0;
    v63 = v97;
  }

  reportJunkActions = self->_reportJunkActions;
  self->_reportJunkActions = v64;

  v66 = [(MobileCalDAVCalendar *)self _createActionsForItems:v47 withAction:1 alreadySentItems:v63 createServerIDs:1 shouldSave:&v125];
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
  v100 = v47;
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
          v73 = [v72 uniqueIdentifier];
          [v72 calItem];
          CalEventGetOriginalStartDate();
          v75 = v74 == 0.0 || v74 == v70;
          v106 = k;
          if (!v75)
          {
            v76 = CalGetRecurrenceUIDFromRealUID();

            v73 = v76;
          }

          typea = v73;
          v77 = [(MobileCalDAVCalendar *)self removeInvitationsForItemWithUniqueIdentifier:v73];
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
                    v85 = [v83 absoluteString];
                    *buf = 138412290;
                    v132 = v85;
                    _os_log_impl(&dword_2484B2000, v84, v6, "Creating a delete for the invitation at %@", buf, 0xCu);
                  }

                  v86 = [objc_alloc(MEMORY[0x277CFDB90]) initWithAction:2 context:v83];
                  v87 = [v72 originatingChangeItems];
                  [v86 setChangeContext:v87];

                  [(NSArray *)v108 addObject:v86];
                  [v69 addObject:v83];
                }
              }

              v80 = [v78 countByEnumeratingWithState:&v109 objects:v126 count:16];
            }

            while (v80);
          }

          self = v103;
          k = v106;
        }
      }

      v102 = [v100 countByEnumeratingWithState:&v113 objects:v127 count:16];
    }

    while (v102);
  }

  v88 = [(MobileCalDAVCalendar *)self _copyDeletedEventActions];
  v89 = DALoggingwithCategory();
  if (os_log_type_enabled(v89, v6))
  {
    v90 = [v88 count];
    *buf = 134217984;
    v132 = v90;
    _os_log_impl(&dword_2484B2000, v89, v6, "Found %lu deleted event actions", buf, 0xCu);
  }

  [(NSArray *)v108 addObjectsFromArray:v88];
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
          v8 = [v7 context];
          [v8 cacheDataPayload];
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)prepareMergeSyncActionsWithCompletionBlock:(id)a3
{
  v89 = *MEMORY[0x277D85DE8];
  v60 = a3;
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

  v6 = self;
  itemsPendingSync = self->_itemsPendingSync;
  self->_itemsPendingSync = 0;

  v62 = objc_opt_new();
  v64 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v10 = [(MobileCalDAVCalendar *)self principal];
  v11 = [v10 account];
  v12 = [v11 wasMigrated];

  if (v12)
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
        v17 = self;
        do
        {
          if (*v78 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v77 + 1) + 8 * v16);
          if (![v18 calItem])
          {
            v19 = [(MobileCalDAVCalendar *)v17 principal];
            v20 = [v19 account];
            v21 = [v20 backingAccount];
            [v18 loadLocalItemWithAccount:v21];
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
                v23 = [v18 serverID];

                v24 = DALoggingwithCategory();
                v25 = os_log_type_enabled(v24, type);
                if (v23)
                {
                  if (v25)
                  {
                    v26 = [v18 uniqueIdentifier];
                    v27 = [v18 serverID];
                    *buf = 138412546;
                    v85 = v26;
                    v86 = 2112;
                    v87 = v27;
                    _os_log_impl(&dword_2484B2000, v24, type, "Found %@ which exists on the server at %@", buf, 0x16u);

                    v17 = self;
                  }

                  [v64 addObject:v18];
                }

                else
                {
                  if (v25)
                  {
                    v28 = [v18 uniqueIdentifier];
                    *buf = 138412290;
                    v85 = v28;
                    _os_log_impl(&dword_2484B2000, v24, type, "Found %@ which does not exist on the server", buf, 0xCu);
                  }

                  [v18 calItem];
                  v29 = [(MobileCalDAVCalendar *)v17 principal];
                  v30 = [v29 account];
                  IsSelfOrganizedWithScheduleAgentClient = CalCalendarItemIsSelfOrganizedWithScheduleAgentClient();

                  if (IsSelfOrganizedWithScheduleAgentClient)
                  {
                    v32 = DALoggingwithCategory();
                    if (os_log_type_enabled(v32, v63))
                    {
                      v33 = [v18 uniqueIdentifier];
                      *buf = 138412290;
                      v85 = v33;
                      _os_log_impl(&dword_2484B2000, v32, v63, "Skipping add for item %@ because it is self organized with a client schedule agent", buf, 0xCu);
                    }
                  }

                  else
                  {
                    [v62 addObject:v18];
                  }

                  v17 = self;
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

    v6 = self;
  }

  obja = objc_opt_new();
  v34 = [(MobileCalDAVCalendar *)v6 bulkRequests];
  v35 = [v34 objectForKeyedSubscript:*MEMORY[0x277CFDF70]];
  if (v35)
  {
    v36 = [(MobileCalDAVCalendar *)v6 principal];
    v37 = [v36 account];
    v38 = [v37 wasMigrated] ^ 1;

    v6 = self;
  }

  else
  {
    v38 = 1;
  }

  v39 = [(MobileCalDAVCalendar *)v6 _createActionsForItems:v62 withAction:0 alreadySentItems:obja createServerIDs:v38 shouldSave:&v81];
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
        v45 = [v44 context];
        v46 = [v45 uniqueIdentifier];
        [v8 setObject:v44 forKeyedSubscript:v46];
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
        v55 = [v54 context];
        v56 = [v55 serverID];
        [v9 setObject:v54 forKeyedSubscript:v56];
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

  [(MobileCalDAVCalendar *)self setUuidsToAddActions:v8, v60];
  [(MobileCalDAVCalendar *)self setHrefsToModDeleteActions:v9];
  (v61)[2](v61, self);

  v59 = *MEMORY[0x277D85DE8];
}

- (void)recordDiagnosticsForAccountSync:(id)a3
{
  v4 = a3;
  v5 = [(MobileCalDAVCalendar *)self calendarCollectionSyncDiagnostics];
  [v4 addCalendarCollectionSync:v5];
}

- (void)flushCaches
{
  v3 = [(MobileCalDAVCalendar *)self uniqueIdentifierToRecordIDMap];
  [v3 removeAllObjects];

  v4 = [(MobileCalDAVCalendar *)self URLToRecordIDMap];
  [v4 removeAllObjects];

  v5 = [(MobileCalDAVCalendar *)self URLToEtagMap];
  [v5 removeAllObjects];

  [(MobileCalDAVCalendar *)self setSyncActions:0];
  [(MobileCalDAVCalendar *)self setShareeActions:0];
  [(MobileCalDAVCalendar *)self setUuidsToAddActions:0];
  [(MobileCalDAVCalendar *)self setHrefsToModDeleteActions:0];
  +[MobileCalDAVCalendar clearCalendarUIDCache];
  deletedExternalIDs = self->_deletedExternalIDs;
  self->_deletedExternalIDs = 0;
}

- (void)syncDidFinishWithError:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    [(MobileCalDAVCalendar *)self recordCalendarError:v4 ofType:4];
  }

  else
  {
    [(MobileCalDAVCalendar *)self clearCalendarErrorOfType:4];
  }

  if (RecordCalendarDiagnostics())
  {
    v5 = [(MobileCalDAVCalendar *)self calendarCollectionSyncDiagnostics];
    v6 = [(MobileCalDAVCalendar *)self title];
    [v5 setCalendarTitle:v6];

    [(MobileCalDAVCalendar *)self getCalCalendar];
    v7 = CalCalendarCopyExternalID();
    [v5 setCalendarExternalIdentifier:v7];
  }

  [(MobileCalDAVCalendar *)self flushCaches];
  if (v4)
  {
    v8 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = [(NSMutableSet *)self->_itemsPendingSync count];
      *buf = 138412546;
      v27 = self;
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

          v16 = [*(*(&v21 + 1) + 8 * i) changeContext];
          [(MobileCalDAVCalendar *)self _saveChanges:v16];
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
      v27 = self;
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