@interface FKFriendsManager
+ (id)collapseChangeLogsIntoChangeLog:(id)a3;
+ (id)managerForDomain:(id)a3;
+ (void)setFriendGroupTitleChangedExternallyNotificationName:(id)a3 domain:(id)a4;
+ (void)setFriendsChangedExternallyNotificationName:(id)a3 domain:(id)a4;
+ (void)setGroupSize:(unint64_t)a3 domain:(id)a4;
+ (void)setMaxGroupCount:(unint64_t)a3 domain:(id)a4;
- (BOOL)_addressBookSequenceNumberDidChange;
- (BOOL)_changeLogContainsFriendAdditionsOrUpdates;
- (BOOL)_shouldAddEmptyGroup;
- (BOOL)_shouldBypassDestinationStatusCheck;
- (BOOL)addFriend:(id)a3;
- (BOOL)canAddFriend;
- (BOOL)containsFriendWithABRecordGUID:(id)a3;
- (BOOL)isPersonFriend:(id)a3;
- (BOOL)refreshAgainstAddressBook;
- (BOOL)shouldAllowAddingContact:(id)a3 withContactStore:(id)a4 personValueCache:(id)a5;
- (FKFriendsManager)initWithDomain:(id)a3;
- (id)_copyAndResetChangeLog;
- (id)_curatedFriendList;
- (id)_destinations;
- (id)_friendAtPosition:(unint64_t)a3;
- (id)allPeople;
- (id)personLikePerson:(id)a3;
- (id)personWithABRecordGUID:(id)a3;
- (id)personWithDestinations:(id)a3;
- (id)reachableDestinationsForPerson:(id)a3;
- (int)_lastKnownAddressBookSequenceNumber;
- (int64_t)_compareStatus:(int64_t)a3 toStatus:(int64_t)a4;
- (int64_t)_firstEmptyPosition;
- (int64_t)statusForPerson:(id)a3 requery:(BOOL)a4;
- (unint64_t)_changeLogCount;
- (unint64_t)_numberOfFriendsInList:(id)a3;
- (unint64_t)groupIndexContainingFriend:(id)a3;
- (unint64_t)positionOfFriendInGroup:(id)a3;
- (void)_addCuratedFriends:(id)a3;
- (void)_addEmptyGroup;
- (void)_addEntryToChangeLogForPerson:(id)a3 changeType:(id)a4;
- (void)_addPersonToIdentifiersToPersonMap:(id)a3;
- (void)_addressBookChanged:(id)a3;
- (void)_aggdLogFriendCount;
- (void)_aggdLogFriendGroupCount;
- (void)_aggdSetValue:(int64_t)a3 forScalarKey:(__CFString *)a4;
- (void)_cleanUpFriendListIfNecessary;
- (void)_createAddressToPersonDictionary;
- (void)_createEmptyFriendList;
- (void)_deduplicateFriendListIfNecessary;
- (void)_friendsChangedExternally;
- (void)_groupTitleChangedExternally;
- (void)_idsQueryTimeoutTimerFired;
- (void)_initiateIDSDestinationStatusQuery:(id)a3;
- (void)_loadFriendList;
- (void)_loadGroupTitles;
- (void)_personValuesChanged:(id)a3;
- (void)_postChangeNotificationIfNecessary;
- (void)_postGroupListChangedNotification;
- (void)_queryDestinations:(id)a3;
- (void)_removeDestinationlessFriendsIfNecessary;
- (void)_removeFriendsAtIndices:(id)a3;
- (void)_removeGroupAtIndex:(unint64_t)a3;
- (void)_removePersonFromIdentifiersToPersonMap:(id)a3;
- (void)_save;
- (void)_setupQueryController;
- (void)_startIDSQueryTimeoutTimer;
- (void)_stopIDSQueryTimeoutTimer;
- (void)_storeSourcedPerson:(id)a3;
- (void)_updateFriendGroups;
- (void)_updateFriends:(id)a3;
- (void)dealloc;
- (void)friendGroup:(id)a3 didMoveFriends:(id)a4;
- (void)friendGroup:(id)a3 didRemoveFriend:(id)a4 atPosition:(unint64_t)a5;
- (void)friendGroup:(id)a3 didSetFriend:(id)a4 atPosition:(unint64_t)a5;
- (void)idStatusUpdatedForDestinations:(id)a3;
- (void)markFriendListAsNormalized;
- (void)purgeEmptyFriendGroups;
- (void)refreshDestinationStatuses;
- (void)reloadFriendList;
- (void)save;
- (void)saveFriendGroupTitles;
- (void)setRefreshAgainstContactsEnabled:(BOOL)a3;
- (void)setServiceName:(id)a3;
- (void)syncFriendGroup:(id)a3;
@end

@implementation FKFriendsManager

+ (id)managerForDomain:(id)a3
{
  v3 = a3;
  if (managerForDomain__onceToken != -1)
  {
    +[FKFriendsManager managerForDomain:];
  }

  v4 = [managerForDomain___sharedFriendListManagers objectForKey:v3];
  if (!v4)
  {
    v4 = [[FKFriendsManager alloc] initWithDomain:v3];
    [managerForDomain___sharedFriendListManagers setObject:v4 forKey:v3];
  }

  return v4;
}

uint64_t __37__FKFriendsManager_managerForDomain___block_invoke()
{
  managerForDomain___sharedFriendListManagers = [MEMORY[0x277CBEB38] dictionary];

  return MEMORY[0x2821F96F8]();
}

- (FKFriendsManager)initWithDomain:(id)a3
{
  v4 = a3;
  v49.receiver = self;
  v49.super_class = FKFriendsManager;
  v5 = [(FKFriendsManager *)&v49 init];
  v6 = v5;
  if (v5)
  {
    if (v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = @"com.apple.ET";
    }

    objc_storeStrong(&v5->_domain, v7);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cachedStatuses = v6->_cachedStatuses;
    v6->_cachedStatuses = v8;

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    v11 = getCNContactStoreDidChangeNotification();

    if (v11)
    {
      v12 = getCNContactStoreDidChangeNotification();
      [v10 addObserver:v6 selector:sel__addressBookChanged_ name:v12 object:0];
    }

    else
    {
      v12 = _FKGetLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [FKFriendsManager initWithDomain:v12];
      }
    }

    [v10 addObserver:v6 selector:sel__personValuesChanged_ name:@"FKPersonValuesChangedNotification" object:0];
    v13 = [MEMORY[0x277CCAA50] hashTableWithOptions:0];
    sourcedPersons = v6->_sourcedPersons;
    v6->_sourcedPersons = v13;

    v15 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    identifiersToPersonMap = v6->_identifiersToPersonMap;
    v6->_identifiersToPersonMap = v15;

    v17 = objc_opt_new();
    npsManager = v6->_npsManager;
    v6->_npsManager = v17;

    v19 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v20 = dispatch_queue_create("com.apple.FriendKit.FKFriendsManager.Save", v19);
    saveQueue = v6->_saveQueue;
    v6->_saveQueue = v20;

    v22 = dispatch_queue_attr_make_with_qos_class(MEMORY[0x277D85CD8], QOS_CLASS_DEFAULT, 0);
    v23 = dispatch_queue_create("com.apple.FriendKit.FKFriendsManager.ChangeLog", v22);
    changeLogQueue = v6->_changeLogQueue;
    v6->_changeLogQueue = v23;

    keyExistsAndHasValidFormat = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"FKMaxGroupCount", v6->_domain, &keyExistsAndHasValidFormat);
    v26 = 20;
    if (keyExistsAndHasValidFormat)
    {
      v26 = AppIntegerValue;
    }

    v6->_maxFriendGroups = v26;
    v27 = CFPreferencesGetAppIntegerValue(@"FKGroupSize", v6->_domain, &keyExistsAndHasValidFormat);
    v28 = 12;
    if (keyExistsAndHasValidFormat)
    {
      v28 = v27;
    }

    v6->_maxFriendsPerGroup = v28;
    AppBooleanValue = CFPreferencesGetAppBooleanValue(@"FKEmptyTrailingGroupEnabled", v6->_domain, &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v30 = AppBooleanValue == 1;
    }

    else
    {
      v30 = 1;
    }

    v31 = v30;
    v6->_shouldAddEmptyTrailingGroup = v31;
    v32 = CFPreferencesCopyAppValue(@"FKFriendsChangedExternallyNotificationName", v6->_domain);
    v6->_friendsChangedExternallyNotificationName = v32;
    if (v32 && CFStringGetLength(v32) >= 1)
    {
      friendsChangedExternallyNotificationName = v6->_friendsChangedExternallyNotificationName;
    }

    else
    {
      friendsChangedExternallyNotificationName = @"FKFriendsChangedExternallyNotification";
    }

    v6->_friendsChangedExternallyNotificationName = friendsChangedExternallyNotificationName;
    v34 = CFPreferencesCopyAppValue(@"FKFriendGroupTitleChangedExternallyNotificationName", v6->_domain);
    v6->_friendGroupTitleChangedExternallyNotificationName = v34;
    if (v34 && CFStringGetLength(v34) >= 1)
    {
      friendGroupTitleChangedExternallyNotificationName = v6->_friendGroupTitleChangedExternallyNotificationName;
    }

    else
    {
      friendGroupTitleChangedExternallyNotificationName = @"FKFriendGroupTitleChangedExternallyNotification";
    }

    v6->_friendGroupTitleChangedExternallyNotificationName = friendGroupTitleChangedExternallyNotificationName;
    v36 = CFPreferencesGetAppBooleanValue(@"FKDeduplicateFriendListEnabled", v6->_domain, &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v37 = v36 == 1;
    }

    else
    {
      v37 = 1;
    }

    v38 = v37;
    v6->_shouldDeduplicateFriendList = v38;
    v39 = CFPreferencesGetAppBooleanValue(@"FKRemoveDestinationlessFriendsEnabled", v6->_domain, &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v40 = v39 == 1;
    }

    else
    {
      v40 = 0;
    }

    v41 = v40;
    v6->_shouldRemoveDestinationlessFriends = v41;
    v42 = CFPreferencesGetAppBooleanValue(@"FKRefreshAgainstContactsOnInitEnabled", v6->_domain, &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      v43 = v42 == 1;
    }

    else
    {
      v43 = 1;
    }

    v44 = v43;
    v6->_refreshAgainstContactsEnabled = v44;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, _FKFriendsChangedExternallyHandler, v6->_friendsChangedExternallyNotificationName, 0, CFNotificationSuspensionBehaviorDrop);
    v46 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v46, v6, _FKFriendGroupTitleChangedExternallyHandler, v6->_friendGroupTitleChangedExternallyNotificationName, 0, CFNotificationSuspensionBehaviorDrop);
    [(FKFriendsManager *)v6 _createEmptyFriendList];
    [(FKFriendsManager *)v6 _loadFriendList];
    [(FKFriendsManager *)v6 _loadGroupTitles];
  }

  return v6;
}

- (void)dealloc
{
  [(IDSBatchIDQueryController *)self->_queryController invalidate];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, self->_friendsChangedExternallyNotificationName, 0);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v5, self, self->_friendGroupTitleChangedExternallyNotificationName, 0);
  friendsChangedExternallyNotificationName = self->_friendsChangedExternallyNotificationName;
  if (friendsChangedExternallyNotificationName != @"FKFriendsChangedExternallyNotification")
  {
    CFRelease(friendsChangedExternallyNotificationName);
  }

  friendGroupTitleChangedExternallyNotificationName = self->_friendGroupTitleChangedExternallyNotificationName;
  if (friendGroupTitleChangedExternallyNotificationName != @"FKFriendGroupTitleChangedExternallyNotification")
  {
    CFRelease(friendGroupTitleChangedExternallyNotificationName);
  }

  v8.receiver = self;
  v8.super_class = FKFriendsManager;
  [(FKFriendsManager *)&v8 dealloc];
}

- (void)_addEmptyGroup
{
  v8 = [[FKFriendGroup alloc] initWithDelegate:self groupSize:self->_maxFriendsPerGroup];
  [(NSMutableArray *)self->_friendGroups addObject:?];
  v3 = self->_maxFriendsPerGroup + [(NSMutableArray *)self->_friendList count];
  v4 = [(NSMutableArray *)self->_friendList count];
  if (v4 < v3)
  {
    v5 = v4;
    do
    {
      friendList = self->_friendList;
      v7 = [MEMORY[0x277CBEB68] null];
      [(NSMutableArray *)friendList setObject:v7 atIndexedSubscript:v5];

      ++v5;
    }

    while (v3 != v5);
  }

  [(FKFriendsManager *)self _postGroupListChangedNotification];
}

- (void)_createEmptyFriendList
{
  v3 = [MEMORY[0x277CBEB18] array];
  friendList = self->_friendList;
  self->_friendList = v3;

  v5 = [MEMORY[0x277CBEB18] array];
  friendGroups = self->_friendGroups;
  self->_friendGroups = v5;

  [(FKFriendsManager *)self _addEmptyGroup];
}

- (void)reloadFriendList
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _FKGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[FKFriendsManager reloadFriendList]";
    v7 = 1024;
    v8 = 312;
    _os_log_impl(&dword_24BC19000, v3, OS_LOG_TYPE_DEFAULT, "%s (%d) a friend list reload was requested", &v5, 0x12u);
  }

  [(FKFriendsManager *)self _loadFriendList];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_loadFriendList
{
  v16 = *MEMORY[0x277D85DE8];
  CFPreferencesAppSynchronize(self->_domain);
  v3 = CFPreferencesCopyAppValue(@"FriendList", self->_domain);
  v4 = _FKGetLogSystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = @" for the first time";
      didCompleteInitialLoading = self->_didCompleteInitialLoading;
      *&v13[4] = "[FKFriendsManager _loadFriendList]";
      *v13 = 136315650;
      if (didCompleteInitialLoading)
      {
        v6 = &stru_285F8D5E0;
      }

      *&v13[12] = 1024;
      *&v13[14] = 321;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_24BC19000, v4, OS_LOG_TYPE_DEFAULT, "%s (%d) loaded friend list%@", v13, 0x1Cu);
    }

    [(FKFriendsManager *)self _updateFriends:v3];
  }

  else
  {
    if (v5)
    {
      *v13 = 136315394;
      *&v13[4] = "[FKFriendsManager _loadFriendList]";
      *&v13[12] = 1024;
      *&v13[14] = 324;
      _os_log_impl(&dword_24BC19000, v4, OS_LOG_TYPE_DEFAULT, "%s (%d) friend list does not yet exist, starting with an empty list", v13, 0x12u);
    }

    [(FKFriendsManager *)self _createEmptyFriendList];
    if ([@"com.apple.ET" isEqualToString:self->_domain])
    {
      [(FKFriendsManager *)self markFriendListAsNormalized];
      v8 = [(FKFriendsManager *)self _curatedFriendList];
      [(FKFriendsManager *)self _addCuratedFriends:v8];
    }

    self->_needsFriendListSync = 1;
    [(FKFriendsManager *)self save];
  }

  [(FKFriendsManager *)self _updateFriendGroups];
  self->_lastLoadHadChanges = [(FKFriendsManager *)self _changeLogCount]!= 0;
  if (self->_didCompleteInitialLoading)
  {
    v9 = _FKGetLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @" no";
      lastLoadHadChanges = self->_lastLoadHadChanges;
      *&v13[4] = "[FKFriendsManager _loadFriendList]";
      *v13 = 136315650;
      if (lastLoadHadChanges)
      {
        v10 = &stru_285F8D5E0;
      }

      *&v13[12] = 1024;
      *&v13[14] = 345;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_24BC19000, v9, OS_LOG_TYPE_DEFAULT, "%s (%d) friend list has%@ changes", v13, 0x1Cu);
    }
  }

  else
  {
    self->_didCompleteInitialLoading = 1;
  }

  if (![(FKFriendsManager *)self refreshAgainstAddressBook:*v13])
  {
    [(FKFriendsManager *)self _cleanUpFriendListIfNecessary];
    [(FKFriendsManager *)self _postChangeNotificationIfNecessary];
  }

  [(FKFriendsManager *)self _createAddressToPersonDictionary];
  [(FKFriendsManager *)self _aggdLogFriendCount];
  [(FKFriendsManager *)self _aggdLogFriendGroupCount];

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_curatedFriendList
{
  v22 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__FKFriendsManager__curatedFriendList__block_invoke;
  v9[3] = &unk_27916A1E0;
  v9[4] = &v10;
  [FKAddressBook performBlock:v9];
  v3 = [v11[5] count];
  if (v3)
  {
    if (v3 > self->_maxFriendGroups * self->_maxFriendsPerGroup)
    {
      [v11[5] removeObjectsInRange:?];
    }

    v4 = _FKGetLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v11[5] count];
      *buf = 136315650;
      v17 = "[FKFriendsManager _curatedFriendList]";
      v18 = 1024;
      v19 = 412;
      v20 = 2048;
      v21 = v5;
      _os_log_impl(&dword_24BC19000, v4, OS_LOG_TYPE_DEFAULT, "%s (%d) phone favorites import complete with %tu Digital Touch friends", buf, 0x1Cu);
    }

    v6 = [v11[5] copy];
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v10, 8);

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

void __38__FKFriendsManager__curatedFriendList__block_invoke(uint64_t a1, uint64_t a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CE9770] sharedInstance];
  v4 = [v3 entries];

  v5 = [v4 count];
  v6 = _FKGetLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 136315650;
      v40 = "[FKFriendsManager _curatedFriendList]_block_invoke";
      v41 = 1024;
      v42 = 372;
      v43 = 2048;
      v44 = [v4 count];
      _os_log_impl(&dword_24BC19000, v6, OS_LOG_TYPE_DEFAULT, "%s (%d) processing %tu phone favorites for Digital Touch friend import", buf, 0x1Cu);
    }

    v8 = [MEMORY[0x277CBEB18] array];
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = [MEMORY[0x277CBEB58] set];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v31 = v4;
    v12 = v4;
    v13 = v11;
    obj = v12;
    v14 = [v12 countByEnumeratingWithState:&v35 objects:v49 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v36;
      v17 = 0x279169000uLL;
      do
      {
        v18 = 0;
        v32 = v15;
        do
        {
          if (*v36 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v35 + 1) + 8 * v18);
          v20 = [objc_alloc(*(v17 + 3976)) initWithFavorite:v19 addressBook:a2];
          v21 = [v20 abRecordGUID];
          if (v21 && [v13 containsObject:v21])
          {
            v22 = _FKGetLogSystem();
            if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_19;
            }

            v23 = [v19 displayName];
            v24 = [v19 value];
            *buf = 136316162;
            v40 = "[FKFriendsManager _curatedFriendList]_block_invoke";
            v41 = 1024;
            v42 = 382;
            v43 = 2112;
            v44 = v23;
            v45 = 2112;
            v46 = v24;
            v47 = 2112;
            v48[0] = v21;
            _os_log_impl(&dword_24BC19000, v22, OS_LOG_TYPE_DEFAULT, "%s (%d) not importing phone favorite [%@ | %@] with record GUID %@; person was already imported", buf, 0x30u);

            goto LABEL_18;
          }

          if (!v20)
          {
            __38__FKFriendsManager__curatedFriendList__block_invoke_cold_1();
          }

          [*(*(*(a1 + 32) + 8) + 40) addObject:v20];
          if (v21)
          {
            [v13 addObject:v21];
          }

          v22 = _FKGetLogSystem();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = [v19 displayName];
            [v19 value];
            v25 = v16;
            v26 = v13;
            v28 = v27 = a2;
            v29 = [v19 _abUid];
            *buf = 136316418;
            v40 = "[FKFriendsManager _curatedFriendList]_block_invoke";
            v41 = 1024;
            v42 = 393;
            v43 = 2112;
            v44 = v23;
            v45 = 2112;
            v46 = v28;
            v47 = 1024;
            LODWORD(v48[0]) = v29;
            WORD2(v48[0]) = 2112;
            *(v48 + 6) = v21;
            _os_log_impl(&dword_24BC19000, v22, OS_LOG_TYPE_DEFAULT, "%s (%d) imported phone favorite [%@ | %@] with record ID %d and GUID %@", buf, 0x36u);

            a2 = v27;
            v13 = v26;
            v16 = v25;
            v17 = 0x279169000;
LABEL_18:

            v15 = v32;
          }

LABEL_19:

          ++v18;
        }

        while (v15 != v18);
        v15 = [obj countByEnumeratingWithState:&v35 objects:v49 count:16];
      }

      while (v15);
    }

    v6 = v13;

    v4 = v31;
  }

  else if (v7)
  {
    *buf = 136315394;
    v40 = "[FKFriendsManager _curatedFriendList]_block_invoke";
    v41 = 1024;
    v42 = 396;
    _os_log_impl(&dword_24BC19000, v6, OS_LOG_TYPE_DEFAULT, "%s (%d) no phone favorites found to import to Digital Touch friends", buf, 0x12u);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)_addCuratedFriends:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __39__FKFriendsManager__addCuratedFriends___block_invoke;
    v18[3] = &unk_27916A208;
    v18[4] = self;
    [v4 enumerateObjectsUsingBlock:v18];
    v5 = [(NSMutableArray *)self->_friendList count];
    maxFriendsPerGroup = self->_maxFriendsPerGroup;
    if (v5 % maxFriendsPerGroup)
    {
      v7 = maxFriendsPerGroup - v5 % maxFriendsPerGroup;
      v8 = [MEMORY[0x277CBEB68] null];
      v9 = 0;
      do
      {
        [(NSMutableArray *)self->_friendList addObject:v8];
        ++v9;
      }

      while (v9 < v7);
    }

    [(FKFriendsManager *)self _updateFriendGroups];
    v10 = [(NSMutableArray *)self->_friendGroups count]- 1;
    v11 = FriendKitBundle();
    v12 = [v11 localizedStringForKey:@"NUMBERED_FAVORITES_FORMAT_STRING" value:&stru_285F8D5E0 table:0];

    friendGroups = self->_friendGroups;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __39__FKFriendsManager__addCuratedFriends___block_invoke_2;
    v15[3] = &unk_27916A230;
    v16 = v12;
    v17 = v10;
    v14 = v12;
    [(NSMutableArray *)friendGroups enumerateObjectsUsingBlock:v15];
    [(FKFriendsManager *)self saveFriendGroupTitles];
  }
}

uint64_t __39__FKFriendsManager__addCuratedFriends___block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v11 = v5;
  if (!a3)
  {
    v8 = FriendKitBundle();
    v9 = [v8 localizedStringForKey:@"FAVORITES" value:&stru_285F8D5E0 table:0];
    [v11 setTitle:v9];

    goto LABEL_7;
  }

  v6 = *(a1 + 40);
  if (v6 > a3 || (v7 = v5, v6 == a3) && (v5 = [v5 count], v7 = v11, v5))
  {
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:*(a1 + 32), (a3 + 1)];
    [v11 setTitle:v8];
LABEL_7:

    v7 = v11;
  }

  return MEMORY[0x2821F96F8](v5, v7);
}

- (BOOL)_shouldAddEmptyGroup
{
  v3 = [(NSMutableArray *)self->_friendGroups lastObject];
  if (v3)
  {
    v4 = -[FKFriendsManager _canAddFriendGroup](self, "_canAddFriendGroup") && [v3 count] && self->_shouldAddEmptyTrailingGroup;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)_updateFriendGroups
{
  v3 = [(NSMutableArray *)self->_friendGroups count];
  v4 = [(NSMutableArray *)self->_friendList count];
  if (v4 / self->_maxFriendsPerGroup >= self->_maxFriendGroups)
  {
    maxFriendGroups = self->_maxFriendGroups;
  }

  else
  {
    maxFriendGroups = v4 / self->_maxFriendsPerGroup;
  }

  if (v3 <= maxFriendGroups)
  {
    v6 = maxFriendGroups - v3;
    if (maxFriendGroups > v3)
    {
      do
      {
        friendGroups = self->_friendGroups;
        v8 = [[FKFriendGroup alloc] initWithDelegate:self groupSize:self->_maxFriendsPerGroup];
        [(NSMutableArray *)friendGroups addObject:v8];

        --v6;
      }

      while (v6);
    }
  }

  else
  {
    [(NSMutableArray *)self->_friendGroups removeObjectsInRange:maxFriendGroups, v3 - maxFriendGroups];
  }

  if (maxFriendGroups)
  {
    for (i = 0; i < maxFriendGroups; ++i)
    {
      v10 = [(NSMutableArray *)self->_friendList subarrayWithRange:self->_maxFriendsPerGroup * i];
      v11 = [(NSMutableArray *)self->_friendGroups objectAtIndexedSubscript:i];
      [v11 setFriends:v10];
    }
  }

  if ([(FKFriendsManager *)self _shouldAddEmptyGroup])
  {

    [(FKFriendsManager *)self _addEmptyGroup];
  }

  else if (v3 > maxFriendGroups)
  {

    [(FKFriendsManager *)self _postGroupListChangedNotification];
  }
}

- (BOOL)canAddFriend
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(FKFriendsManager *)self _canAddFriendGroup])
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v4 = self->_friendGroups;
    v3 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v5 = *v10;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v4);
          }

          if (![*(*(&v9 + 1) + 8 * i) isFull])
          {
            LOBYTE(v3) = 1;
            goto LABEL_13;
          }
        }

        v3 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

- (unint64_t)groupIndexContainingFriend:(id)a3
{
  v4 = [(NSMutableArray *)self->_friendList indexOfObject:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  else
  {
    return vcvtms_u32_f32(v4 / self->_maxFriendsPerGroup);
  }
}

- (void)_removeGroupAtIndex:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_friendGroups count]> a3)
  {
    [(NSMutableArray *)self->_friendGroups removeObjectAtIndex:a3];
    [(NSMutableArray *)self->_friendList removeObjectsInRange:self->_maxFriendsPerGroup * a3];

    [(FKFriendsManager *)self _postGroupListChangedNotification];
  }
}

- (void)syncFriendGroup:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = [(NSMutableArray *)self->_friendGroups indexOfObject:v4];
  maxFriendsPerGroup = self->_maxFriendsPerGroup;
  v13 = v4;
  v6 = [v4 friends];
  if (self->_maxFriendsPerGroup)
  {
    v7 = 0;
    v8 = maxFriendsPerGroup * v14;
    do
    {
      v9 = [(NSMutableArray *)self->_friendList objectAtIndexedSubscript:v8];
      v10 = [v6 objectAtIndexedSubscript:v7];
      if (v9 != v10)
      {
        [(NSMutableArray *)self->_friendList setObject:v10 atIndexedSubscript:v8];
        self->_needsFriendListSync = 1;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = _FKGetLogSystem();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v16 = "[FKFriendsManager syncFriendGroup:]";
            v17 = 1024;
            v18 = 549;
            v19 = 2112;
            v20 = v10;
            v21 = 1024;
            v22 = v7;
            v23 = 1024;
            v24 = v14;
            _os_log_impl(&dword_24BC19000, v11, OS_LOG_TYPE_DEFAULT, "%s (%d) @%@ was moved to position %u in group %u", buf, 0x28u);
          }
        }
      }

      ++v7;
      ++v8;
    }

    while (v7 < self->_maxFriendsPerGroup);
  }

  if (self->_needsFriendListSync)
  {
    [(FKFriendsManager *)self save];
  }

  if ([(FKFriendsManager *)self _shouldAddEmptyGroup])
  {
    [(FKFriendsManager *)self _addEmptyGroup];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)purgeEmptyFriendGroups
{
  v3 = [(NSMutableArray *)self->_friendGroups count]- 2;
  if (v3 >= 0)
  {
    v4 = 0;
LABEL_3:
    v5 = v3;
    do
    {
      v6 = [(NSMutableArray *)self->_friendGroups objectAtIndexedSubscript:v5];
      if (![v6 count])
      {
        [(FKFriendsManager *)self _removeGroupAtIndex:v5];

        v3 = v5 - 1;
        v4 = 1;
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    while (v5-- > 0);
    if ((v4 & 1) == 0)
    {
      return;
    }

LABEL_11:
    self->_needsFriendListSync = 1;

    [(FKFriendsManager *)self save];
  }
}

- (void)_aggdSetValue:(int64_t)a3 forScalarKey:(__CFString *)a4
{
  if ([@"com.apple.ET" isEqualToString:self->_domain])
  {

    MEMORY[0x28213B6D0](a4, a3);
  }
}

- (void)_aggdLogFriendCount
{
  v3 = [(FKFriendsManager *)self _numberOfFriendsInList:self->_friendList];

  [(FKFriendsManager *)self _aggdSetValue:v3 forScalarKey:@"com.apple.et.friendList.size"];
}

- (void)_aggdLogFriendGroupCount
{
  v3 = [(NSMutableArray *)self->_friendGroups count]- 1;

  [(FKFriendsManager *)self _aggdSetValue:v3 forScalarKey:@"com.apple.et.friendGroups.count"];
}

- (void)_postGroupListChangedNotification
{
  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_119);

  [(FKFriendsManager *)self _aggdLogFriendGroupCount];
}

void __53__FKFriendsManager__postGroupListChangedNotification__block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"FKFriendsManagerGroupListChanged" object:0];
}

+ (void)setMaxGroupCount:(unint64_t)a3 domain:(id)a4
{
  v5 = MEMORY[0x277CCABB0];
  applicationID = a4;
  CFPreferencesSetAppValue(@"FKMaxGroupCount", [v5 numberWithUnsignedInteger:a3], applicationID);
  CFPreferencesAppSynchronize(applicationID);
}

+ (void)setGroupSize:(unint64_t)a3 domain:(id)a4
{
  v5 = MEMORY[0x277CCABB0];
  applicationID = a4;
  CFPreferencesSetAppValue(@"FKGroupSize", [v5 numberWithUnsignedInteger:a3], applicationID);
  CFPreferencesAppSynchronize(applicationID);
}

+ (void)setFriendsChangedExternallyNotificationName:(id)a3 domain:(id)a4
{
  applicationID = a4;
  CFPreferencesSetAppValue(@"FKFriendsChangedExternallyNotificationName", a3, applicationID);
  CFPreferencesAppSynchronize(applicationID);
}

+ (void)setFriendGroupTitleChangedExternallyNotificationName:(id)a3 domain:(id)a4
{
  applicationID = a4;
  CFPreferencesSetAppValue(@"FKFriendGroupTitleChangedExternallyNotificationName", a3, applicationID);
  CFPreferencesAppSynchronize(applicationID);
}

- (BOOL)shouldAllowAddingContact:(id)a3 withContactStore:(id)a4 personValueCache:(id)a5
{
  v8 = a5;
  v9 = [a4 personFromContact:a3];
  RecordID = ABRecordGetRecordID(v9);
  v11 = ABRecordCopyValue(v9, *MEMORY[0x277CE9950]);
  if ([(FKFriendsManager *)self containsFriendWithABRecordGUID:v11])
  {
    v12 = 0;
  }

  else
  {
    v13 = [MEMORY[0x277CCABB0] numberWithInt:RecordID];
    v14 = [v8 objectForKey:v13];
    if (!v14)
    {
      v15 = MEMORY[0x277CCABB0];
      v16 = [FKPerson allValuesForPerson:v9];
      v14 = [v15 numberWithUnsignedInteger:{objc_msgSend(v16, "count")}];

      [v8 setObject:v14 forKey:v13];
    }

    v12 = [v14 unsignedIntegerValue] != 0;
  }

  return v12;
}

- (void)friendGroup:(id)a3 didSetFriend:(id)a4 atPosition:(unint64_t)a5
{
  v11 = a4;
  v8 = [(FKFriendsManager *)self _indexForPosition:a5 inGroup:a3];
  v9 = [(NSMutableArray *)self->_friendList count];
  v10 = v11;
  if (v8 < v9)
  {
    [(NSMutableArray *)self->_friendList setObject:v11 atIndexedSubscript:v8];
    [(NSHashTable *)self->_sourcedPersons removeObject:v11];
    self->_needsFriendListSync = 1;
    [(FKFriendsManager *)self _addEntryToChangeLogForPerson:v11 changeType:@"FKFriendsManagerPersonAdded"];
    if ([(FKFriendsManager *)self _shouldAddEmptyGroup])
    {
      [(FKFriendsManager *)self _addEmptyGroup];
    }

    [(FKFriendsManager *)self _postChangeNotificationIfNecessary];
    v9 = [(FKFriendsManager *)self save];
    v10 = v11;
  }

  MEMORY[0x2821F96F8](v9, v10);
}

- (void)friendGroup:(id)a3 didRemoveFriend:(id)a4 atPosition:(unint64_t)a5
{
  v13 = a3;
  v8 = a4;
  v9 = [(FKFriendsManager *)self _indexForPosition:a5 inGroup:v13];
  if (v9 < [(NSMutableArray *)self->_friendList count])
  {
    v10 = [(FKFriendsManager *)self groupIndexContainingFriend:v8];
    friendList = self->_friendList;
    v12 = [MEMORY[0x277CBEB68] null];
    [(NSMutableArray *)friendList setObject:v12 atIndexedSubscript:v9];

    self->_needsFriendListSync = 1;
    if (v8)
    {
      [(FKFriendsManager *)self _addEntryToChangeLogForPerson:v8 changeType:@"FKFriendsManagerPersonDeleted"];
      [(FKFriendsManager *)self _removePersonFromIdentifiersToPersonMap:v8];
      if (![v13 count] && self->_maxFriendGroups >= 2)
      {
        [(FKFriendsManager *)self _removeGroupAtIndex:v10];
      }

      [(FKFriendsManager *)self _postChangeNotificationIfNecessary];
    }

    [(FKFriendsManager *)self save];
  }
}

- (void)friendGroup:(id)a3 didMoveFriends:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  self->_needsFriendListSync = 1;
  v8 = [(NSMutableArray *)self->_friendGroups indexOfObject:v6];
  maxFriendsPerGroup = self->_maxFriendsPerGroup;
  v10 = maxFriendsPerGroup * v8;
  friendList = self->_friendList;
  v12 = [v6 friends];
  [(NSMutableArray *)friendList replaceObjectsInRange:v10 withObjectsFromArray:maxFriendsPerGroup, v12];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(FKFriendsManager *)self _addEntryToChangeLogForPerson:*(*(&v19 + 1) + 8 * v17++) changeType:@"FKFriendsManagerPersonMoved", v19];
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v15);
  }

  [(FKFriendsManager *)self _postChangeNotificationIfNecessary];
  v18 = *MEMORY[0x277D85DE8];
}

- (id)allPeople
{
  v2 = [(NSMapTable *)self->_identifiersToPersonMap objectEnumerator];
  v3 = [v2 allObjects];

  return v3;
}

- (BOOL)addFriend:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_friendGroups;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

        v9 = *(*(&v13 + 1) + 8 * i);
        if (![v9 isFull])
        {
          v12 = 0;
          [v9 addFriend:v4 error:&v12];
          LOBYTE(v6) = v12 == 0;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isPersonFriend:(id)a3
{
  if (a3)
  {
    return [(NSMutableArray *)self->_friendList containsObject:?];
  }

  else
  {
    return 0;
  }
}

- (unint64_t)positionOfFriendInGroup:(id)a3
{
  v4 = [(NSMutableArray *)self->_friendList indexOfObject:a3];
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    return v4 % self->_maxFriendsPerGroup;
  }

  return result;
}

- (BOOL)containsFriendWithABRecordGUID:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(NSMapTable *)self->_identifiersToPersonMap objectForKey:v4];
    if (v5)
    {
      v6 = [(NSMutableArray *)self->_friendList containsObject:v5];
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

  return v6;
}

- (id)personLikePerson:(id)a3
{
  v4 = a3;
  if (v4 && [(NSMutableArray *)self->_friendList count])
  {
    v5 = 0;
    while (1)
    {
      v6 = [(FKFriendsManager *)self _friendAtPosition:v5];
      v7 = v6;
      if (v6)
      {
        if ([v6 isLikePerson:v4])
        {
          break;
        }
      }

      if (++v5 >= [(NSMutableArray *)self->_friendList count])
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v7 = 0;
  }

  return v7;
}

- (id)_friendAtPosition:(unint64_t)a3
{
  if ([(NSMutableArray *)self->_friendList count]<= a3)
  {
    v7 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_friendList objectAtIndex:a3];
    v6 = [MEMORY[0x277CBEB68] null];

    if (v5 == v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = v5;
    }
  }

  return v7;
}

- (void)save
{
  objc_initWeak(&location, self);
  saveQueue = self->_saveQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __24__FKFriendsManager_save__block_invoke;
  block[3] = &unk_27916A280;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(saveQueue, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __24__FKFriendsManager_save__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained saveOperation];
  [v3 invalidate];

  v4 = [FKDelayedOperation alloc];
  v5 = *(*(a1 + 32) + 96);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __24__FKFriendsManager_save__block_invoke_2;
  v10[3] = &unk_27916A258;
  objc_copyWeak(&v11, (a1 + 40));
  v6 = [(FKDelayedOperation *)v4 initWithQueue:v5 delay:v10 block:0.1];
  v7 = objc_loadWeakRetained((a1 + 40));
  [v7 setSaveOperation:v6];

  v8 = objc_loadWeakRetained((a1 + 40));
  v9 = [v8 saveOperation];
  [v9 execute];

  objc_destroyWeak(&v11);
}

void __24__FKFriendsManager_save__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _save];
}

- (void)_save
{
  v33 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_saveQueue);
  v3 = [MEMORY[0x277CBEA60] arrayWithArray:self->_friendList];
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [v3 count];
  v7 = [MEMORY[0x277CBEB68] null];
  v8 = [MEMORY[0x277CBEAC0] dictionary];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v10 = [v3 objectAtIndex:i];
      v11 = v10;
      if (v10 == v7)
      {
        v12 = v8;
      }

      else
      {
        v12 = [v10 dictionaryRepresentation];
        if ([v11 needsSave])
        {
          [v5 addObject:v11];
        }
      }

      [v4 addObject:v12];
    }
  }

  if (self->_needsFriendListSync || [v5 count])
  {
    CFPreferencesSetAppValue(@"FriendList", v4, self->_domain);
    CFPreferencesAppSynchronize(self->_domain);
    if (self->_needsFriendListSync && NPSHasCompletedInitialSync())
    {
      npsManager = self->_npsManager;
      domain = self->_domain;
      v15 = [MEMORY[0x277CBEB98] setWithObject:@"FriendList"];
      [(NPSManager *)npsManager synchronizeUserDefaultsDomain:domain keys:v15];
    }

    v16 = _FKGetLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v30 = "[FKFriendsManager _save]";
      v31 = 1024;
      v32 = 849;
      _os_log_impl(&dword_24BC19000, v16, OS_LOG_TYPE_DEFAULT, "%s (%d) friend list saved", buf, 0x12u);
    }

    objc_initWeak(buf, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __25__FKFriendsManager__save__block_invoke;
    block[3] = &unk_27916A258;
    objc_copyWeak(&v27, buf);
    dispatch_async(MEMORY[0x277D85CD0], block);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v17 = v5;
    v18 = [v17 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v18)
    {
      v19 = *v23;
      do
      {
        v20 = 0;
        do
        {
          if (*v23 != v19)
          {
            objc_enumerationMutation(v17);
          }

          [*(*(&v22 + 1) + 8 * v20++) setNeedsSave:{0, v22}];
        }

        while (v18 != v20);
        v18 = [v17 countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v18);
    }

    objc_destroyWeak(&v27);
    objc_destroyWeak(buf);
  }

  self->_needsFriendListSync = 0;

  v21 = *MEMORY[0x277D85DE8];
}

void __25__FKFriendsManager__save__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _incrementExternalChangePostCount];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v4 = objc_loadWeakRetained((a1 + 32));
  CFNotificationCenterPostNotification(DarwinNotifyCenter, [v4 _notificationForExternalListChange], 0, 0, 1u);
}

- (id)personWithDestinations:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB98] setWithArray:v4];
  v6 = [v5 fkSanitizedDestinationSet];
  v7 = [v6 allObjects];

  v8 = [(NSMapTable *)self->_identifiersToPersonMap keyEnumerator];
  v9 = [v8 allObjects];

  v10 = [v9 firstObjectCommonWithArray:v7];
  if (v10)
  {
    v11 = [(NSMapTable *)self->_identifiersToPersonMap objectForKey:v10];
  }

  else
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy_;
    v24 = __Block_byref_object_dispose_;
    v25 = 0;
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __43__FKFriendsManager_personWithDestinations___block_invoke;
    v17 = &unk_27916A2A8;
    v19 = &v20;
    v18 = v7;
    [FKAddressBook performBlock:&v14];
    [(FKFriendsManager *)self _storeSourcedPerson:v21[5], v14, v15, v16, v17];
    v11 = v21[5];

    _Block_object_dispose(&v20, 8);
  }

  v12 = v11;

  return v11;
}

uint64_t __43__FKFriendsManager_personWithDestinations___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [[FKPerson alloc] initWithDestinations:*(a1 + 32) addressBook:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

- (id)personWithABRecordGUID:(id)a3
{
  v4 = a3;
  v5 = [(NSMapTable *)self->_identifiersToPersonMap objectForKey:v4];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  if (!v5)
  {
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __43__FKFriendsManager_personWithABRecordGUID___block_invoke;
    v11 = &unk_27916A2A8;
    v13 = &v14;
    v12 = v4;
    [FKAddressBook performBlock:&v8];
    [(FKFriendsManager *)self _storeSourcedPerson:v15[5], v8, v9, v10, v11];
    v5 = v15[5];
  }

  v6 = v5;
  _Block_object_dispose(&v14, 8);

  return v6;
}

uint64_t __43__FKFriendsManager_personWithABRecordGUID___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [[FKPerson alloc] initWithABRecordGUID:*(a1 + 32) addressBook:a2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

- (void)_storeSourcedPerson:(id)a3
{
  sourcedPersons = self->_sourcedPersons;
  v5 = a3;
  [(NSHashTable *)sourcedPersons addObject:v5];
  [(FKFriendsManager *)self _addPersonToIdentifiersToPersonMap:v5];
}

- (void)_addPersonToIdentifiersToPersonMap:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 allValues];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v16 + 1) + 8 * v9) fkMessageCanonicalRawAddress];
        [(NSMapTable *)self->_identifiersToPersonMap setObject:v4 forKey:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v11 = [v4 abRecordGUID];
  v12 = [v11 length];

  if (v12)
  {
    identifiersToPersonMap = self->_identifiersToPersonMap;
    v14 = [v4 abRecordGUID];
    [(NSMapTable *)identifiersToPersonMap setObject:v4 forKey:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_removePersonFromIdentifiersToPersonMap:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 allValues];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v16 + 1) + 8 * v9) fkMessageCanonicalRawAddress];
        [(NSMapTable *)self->_identifiersToPersonMap removeObjectForKey:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v11 = [v4 abRecordGUID];
  v12 = [v11 length];

  if (v12)
  {
    identifiersToPersonMap = self->_identifiersToPersonMap;
    v14 = [v4 abRecordGUID];
    [(NSMapTable *)identifiersToPersonMap removeObjectForKey:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_createAddressToPersonDictionary
{
  v19 = *MEMORY[0x277D85DE8];
  [(NSMapTable *)self->_identifiersToPersonMap removeAllObjects];
  if ([(NSMutableArray *)self->_friendList count])
  {
    v3 = 0;
    do
    {
      v4 = [(NSMutableArray *)self->_friendList objectAtIndexedSubscript:v3];
      v5 = [MEMORY[0x277CBEB68] null];
      if (v4 == v5)
      {
        v6 = 0;
      }

      else
      {
        v6 = v4;
      }

      v7 = v6;

      if (v7)
      {
        [(FKFriendsManager *)self _addPersonToIdentifiersToPersonMap:v7];
      }

      ++v3;
    }

    while (v3 < [(NSMutableArray *)self->_friendList count]);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = self->_sourcedPersons;
  v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(FKFriendsManager *)self _addPersonToIdentifiersToPersonMap:*(*(&v14 + 1) + 8 * v12++), v14];
      }

      while (v10 != v12);
      v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)setServiceName:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  serviceName = self->_serviceName;
  p_serviceName = &self->_serviceName;
  v6 = serviceName;
  if (!v5 && v6 || ![(NSString *)v6 isEqualToString:v5])
  {
    objc_storeStrong(p_serviceName, a3);
    v9 = _FKGetLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *p_serviceName;
      v12 = 136315650;
      v13 = "[FKFriendsManager setServiceName:]";
      v14 = 1024;
      v15 = 975;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_24BC19000, v9, OS_LOG_TYPE_DEFAULT, "%s (%d) setting service name for reachability queries to %@", &v12, 0x1Cu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_destinations
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  if ([(NSMutableArray *)self->_friendList count])
  {
    v4 = 0;
    do
    {
      v5 = [(FKFriendsManager *)self _friendAtPosition:v4];
      v6 = v5;
      if (v5)
      {
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v7 = [v5 allValues];
        v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v17;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v17 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = [*(*(&v16 + 1) + 8 * i) fkMessageIDSIdentifier];
              if (v12)
              {
                [v3 addObject:v12];
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
          }

          while (v9);
        }
      }

      ++v4;
    }

    while (v4 < [(NSMutableArray *)self->_friendList count]);
  }

  v13 = [v3 allObjects];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)_setupQueryController
{
  [(IDSBatchIDQueryController *)self->_queryController invalidate];
  if (self->_serviceName)
  {
    v3 = objc_alloc(MEMORY[0x277D186D8]);
    v4 = [v3 initWithService:self->_serviceName delegate:self queue:MEMORY[0x277D85CD0]];
  }

  else
  {
    v4 = 0;
  }

  queryController = self->_queryController;
  self->_queryController = v4;

  MEMORY[0x2821F96F8](v4, queryController);
}

- (void)refreshDestinationStatuses
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(NSMutableSet *)self->_highPriorityDestinations count])
  {
    v3 = _FKGetLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(NSMutableSet *)self->_highPriorityDestinations allObjects];
      v5 = [v4 componentsJoinedByString:{@", "}];
      v11 = 136315650;
      v12 = "[FKFriendsManager refreshDestinationStatuses]";
      v13 = 1024;
      v14 = 1030;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_24BC19000, v3, OS_LOG_TYPE_DEFAULT, "%s (%d) not starting batch query because high priority query is in progress for [ %@ ]", &v11, 0x1Cu);
    }

    v6 = [(FKFriendsManager *)self _destinations];
    pendingDestinations = self->_pendingDestinations;
    self->_pendingDestinations = v6;
  }

  else
  {
    pendingDestinations = [(FKFriendsManager *)self _destinations];
    v8 = _FKGetLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [pendingDestinations componentsJoinedByString:{@", "}];
      v11 = 136315650;
      v12 = "[FKFriendsManager refreshDestinationStatuses]";
      v13 = 1024;
      v14 = 1012;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_24BC19000, v8, OS_LOG_TYPE_DEFAULT, "%s (%d) setting destinations to [ %@ ]", &v11, 0x1Cu);
    }

    [(FKFriendsManager *)self _initiateIDSDestinationStatusQuery:pendingDestinations];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (int64_t)_compareStatus:(int64_t)a3 toStatus:(int64_t)a4
{
  result = 1;
  if (a3 != 1 && a4 != 1)
  {
    if (a3 || a4 != 2)
    {
      if (a4 <= a3)
      {
        v5 = a3;
      }

      else
      {
        v5 = a4;
      }

      if (a4)
      {
        v6 = 0;
      }

      else
      {
        v6 = a3 == 2;
      }

      if (v6)
      {
        return 0;
      }

      else
      {
        return v5;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)idStatusUpdatedForDestinations:(id)a3
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v37 = v4;
    val = self;
    [(FKFriendsManager *)self _stopIDSQueryTimeoutTimer];
    v5 = [MEMORY[0x277CBEB38] dictionary];
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v6 = v37;
    v7 = [v6 countByEnumeratingWithState:&v54 objects:v66 count:16];
    if (v7)
    {
      v8 = *v55;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v55 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v54 + 1) + 8 * i);
          v11 = [v6 objectForKey:v10];
          v12 = [v10 fkMessageCanonicalRawAddress];
          [v5 setObject:v11 forKey:v12];
        }

        v7 = [v6 countByEnumeratingWithState:&v54 objects:v66 count:16];
      }

      while (v7);
    }

    v13 = _FKGetLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v61 = "[FKFriendsManager idStatusUpdatedForDestinations:]";
      v62 = 1024;
      v63 = 1061;
      v64 = 2112;
      v65 = v6;
      _os_log_impl(&dword_24BC19000, v13, OS_LOG_TYPE_DEFAULT, "%s (%d) IDS statusues updated: %@", buf, 0x1Cu);
    }

    [(NSMutableDictionary *)val->_cachedStatuses addEntriesFromDictionary:v5];
    objc_initWeak(&location, val);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__FKFriendsManager_idStatusUpdatedForDestinations___block_invoke;
    block[3] = &unk_27916A280;
    objc_copyWeak(&v52, &location);
    v36 = v5;
    v51 = v36;
    dispatch_async(MEMORY[0x277D85CD0], block);
    highPriorityDestinations = val->_highPriorityDestinations;
    if (!highPriorityDestinations || ![(NSMutableSet *)highPriorityDestinations count])
    {
      v15 = [MEMORY[0x277CBEB58] set];
      cachedStatuses = val->_cachedStatuses;
      v48[0] = MEMORY[0x277D85DD0];
      v48[1] = 3221225472;
      v48[2] = __51__FKFriendsManager_idStatusUpdatedForDestinations___block_invoke_2;
      v48[3] = &unk_27916A2D0;
      v17 = v15;
      v49 = v17;
      [(NSMutableDictionary *)cachedStatuses enumerateKeysAndObjectsUsingBlock:v48];
      v38 = v17;
      if ([v17 count])
      {
        v18 = [MEMORY[0x277CBEB68] null];
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v19 = val->_friendList;
        v20 = 0;
        v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v44 objects:v59 count:16];
        if (v21)
        {
          v22 = *v45;
          do
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v45 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v44 + 1) + 8 * j);
              if (v24 != v18)
              {
                v25 = v24;
                v26 = [v25 allValues];
                v27 = [v26 intersectsSet:v38];

                v20 += v27 ^ 1u;
              }
            }

            v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v44 objects:v59 count:16];
          }

          while (v21);
        }
      }

      else
      {
        v20 = 0;
      }

      [(FKFriendsManager *)val _aggdSetValue:v20 forScalarKey:@"com.apple.et.unreachableFriends.count"];
    }

    [v6 allKeys];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v28 = v41 = 0u;
    v29 = [v28 countByEnumeratingWithState:&v40 objects:v58 count:16];
    if (v29)
    {
      v30 = *v41;
      do
      {
        for (k = 0; k != v29; ++k)
        {
          if (*v41 != v30)
          {
            objc_enumerationMutation(v28);
          }

          [(NSMutableSet *)val->_highPriorityDestinations removeObject:*(*(&v40 + 1) + 8 * k)];
        }

        v29 = [v28 countByEnumeratingWithState:&v40 objects:v58 count:16];
      }

      while (v29);
    }

    if (![(NSMutableSet *)val->_highPriorityDestinations count]&& [(NSArray *)val->_pendingDestinations count])
    {
      v32 = _FKGetLogSystem();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [(NSArray *)val->_pendingDestinations componentsJoinedByString:@", "];
        *buf = 136315650;
        v61 = "[FKFriendsManager idStatusUpdatedForDestinations:]";
        v62 = 1024;
        v63 = 1107;
        v64 = 2112;
        v65 = v33;
        _os_log_impl(&dword_24BC19000, v32, OS_LOG_TYPE_DEFAULT, "%s (%d) High priority status request completed, starting query for pending destinations: [ %@ ]", buf, 0x1Cu);
      }

      [(FKFriendsManager *)val _initiateIDSDestinationStatusQuery:val->_pendingDestinations];
      pendingDestinations = val->_pendingDestinations;
      val->_pendingDestinations = 0;
    }

    objc_destroyWeak(&v52);
    objc_destroyWeak(&location);

    v4 = v37;
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __51__FKFriendsManager_idStatusUpdatedForDestinations___block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = *(a1 + 32);
  v7 = @"FKFriendsManagerDestinationStatusUpdatedDestinationsKey";
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v2 postNotificationName:@"FKFriendsManagerDestinationStatusUpdatedNotification" object:WeakRetained userInfo:v5];

  v6 = *MEMORY[0x277D85DE8];
}

void __51__FKFriendsManager_idStatusUpdatedForDestinations___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 integerValue] == 1)
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (int64_t)statusForPerson:(id)a3 requery:(BOOL)a4
{
  v4 = a4;
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(FKFriendsManager *)self _shouldBypassDestinationStatusCheck])
  {
    v7 = 1;
  }

  else
  {
    v8 = [v6 allValues];
    if ([v8 count])
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v21 objects:v33 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v22;
        v7 = -1;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = [(NSMutableDictionary *)self->_cachedStatuses objectForKey:*(*(&v21 + 1) + 8 * i), v21];
            v15 = v14;
            if (v14)
            {
              v16 = [v14 integerValue];
            }

            else
            {
              v16 = -1;
            }

            v7 = [(FKFriendsManager *)self _compareStatus:v7 toStatus:v16];
          }

          v11 = [v9 countByEnumeratingWithState:&v21 objects:v33 count:16];
        }

        while (v11);
      }

      else
      {
        v7 = -1;
      }

      if (v4)
      {
        [(FKFriendsManager *)self _queryDestinations:v9];
        if (v7 == -1)
        {
          v7 = 0;
        }
      }

      v17 = _FKGetLogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        if (v7 > 2)
        {
          v18 = @"unspecified";
        }

        else
        {
          v18 = off_27916A5C8[v7];
        }

        *buf = 136315906;
        v26 = "[FKFriendsManager statusForPerson:requery:]";
        v27 = 1024;
        v28 = 1142;
        v29 = 2112;
        v30 = v6;
        v31 = 2112;
        v32 = v18;
        _os_log_impl(&dword_24BC19000, v17, OS_LOG_TYPE_DEFAULT, "%s (%d) %@ has cached best status of: %@", buf, 0x26u);
      }
    }

    else
    {
      v7 = 2;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)reachableDestinationsForPerson:(id)a3
{
  v4 = MEMORY[0x277CBEB58];
  v5 = a3;
  v6 = [v4 set];
  cachedStatuses = self->_cachedStatuses;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __51__FKFriendsManager_reachableDestinationsForPerson___block_invoke;
  v13[3] = &unk_27916A2D0;
  v14 = v6;
  v8 = v6;
  [(NSMutableDictionary *)cachedStatuses enumerateKeysAndObjectsUsingBlock:v13];
  v9 = MEMORY[0x277CBEB58];
  v10 = [v5 allValues];

  v11 = [v9 setWithSet:v10];

  [v11 intersectSet:v8];

  return v11;
}

void __51__FKFriendsManager_reachableDestinationsForPerson___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 integerValue] == 1)
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (void)_queryDestinations:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_highPriorityDestinations)
  {
    v5 = [MEMORY[0x277CBEB58] set];
    highPriorityDestinations = self->_highPriorityDestinations;
    self->_highPriorityDestinations = v5;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v29 count:16];
  v9 = v7;
  if (!v8)
  {
    goto LABEL_16;
  }

  v10 = v8;
  v11 = 0;
  v12 = *v20;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v20 != v12)
      {
        objc_enumerationMutation(v7);
      }

      v14 = [*(*(&v19 + 1) + 8 * i) fkMessageIDSIdentifier];
      if (v14 && ([(NSMutableSet *)self->_highPriorityDestinations containsObject:v14]& 1) == 0)
      {
        [(NSMutableSet *)self->_highPriorityDestinations addObject:v14];
        v11 = 1;
      }
    }

    v10 = [v7 countByEnumeratingWithState:&v19 objects:v29 count:16];
  }

  while (v10);

  if (v11)
  {
    v15 = [(NSMutableSet *)self->_highPriorityDestinations allObjects];
    [(FKFriendsManager *)self _initiateIDSDestinationStatusQuery:v15];

    v9 = _FKGetLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(NSMutableSet *)self->_highPriorityDestinations allObjects];
      v17 = [v16 componentsJoinedByString:{@", "}];
      *buf = 136315650;
      v24 = "[FKFriendsManager _queryDestinations:]";
      v25 = 1024;
      v26 = 1182;
      v27 = 2112;
      v28 = v17;
      _os_log_impl(&dword_24BC19000, v9, OS_LOG_TYPE_DEFAULT, "%s (%d) started high-priority query for [ %@ ]", buf, 0x1Cu);
    }

LABEL_16:
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_initiateIDSDestinationStatusQuery:(id)a3
{
  v4 = a3;
  [(FKFriendsManager *)self _setupQueryController];
  [(IDSBatchIDQueryController *)self->_queryController setDestinations:v4];

  [(FKFriendsManager *)self _startIDSQueryTimeoutTimer];
}

- (void)_startIDSQueryTimeoutTimer
{
  if (!self->_idsQueryTimeoutTimer)
  {
    v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__idsQueryTimeoutTimerFired selector:0 userInfo:0 repeats:30.0];
    idsQueryTimeoutTimer = self->_idsQueryTimeoutTimer;
    self->_idsQueryTimeoutTimer = v4;

    MEMORY[0x2821F96F8](v4, idsQueryTimeoutTimer);
  }
}

- (void)_stopIDSQueryTimeoutTimer
{
  [(NSTimer *)self->_idsQueryTimeoutTimer invalidate];
  idsQueryTimeoutTimer = self->_idsQueryTimeoutTimer;
  self->_idsQueryTimeoutTimer = 0;
}

- (void)_idsQueryTimeoutTimerFired
{
  v15 = *MEMORY[0x277D85DE8];
  idsQueryTimeoutTimer = self->_idsQueryTimeoutTimer;
  self->_idsQueryTimeoutTimer = 0;

  v4 = _FKGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[FKFriendsManager _idsQueryTimeoutTimerFired]";
    v11 = 1024;
    v12 = 1223;
    _os_log_impl(&dword_24BC19000, v4, OS_LOG_TYPE_DEFAULT, "%s (%d) IDS Query took too long to respond, clearing request queues", &v9, 0x12u);
  }

  if ([(NSMutableSet *)self->_highPriorityDestinations count])
  {
    [(NSMutableSet *)self->_highPriorityDestinations removeAllObjects];
    if ([(NSArray *)self->_pendingDestinations count])
    {
      v5 = _FKGetLogSystem();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [(NSArray *)self->_pendingDestinations componentsJoinedByString:@", "];
        v9 = 136315650;
        v10 = "[FKFriendsManager _idsQueryTimeoutTimerFired]";
        v11 = 1024;
        v12 = 1233;
        v13 = 2112;
        v14 = v6;
        _os_log_impl(&dword_24BC19000, v5, OS_LOG_TYPE_DEFAULT, "%s (%d) IDS Query timed out on high priority queue, starting query for pending destinations: [ %@ ]", &v9, 0x1Cu);
      }

      [(FKFriendsManager *)self _initiateIDSDestinationStatusQuery:self->_pendingDestinations];
      pendingDestinations = self->_pendingDestinations;
      self->_pendingDestinations = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldBypassDestinationStatusCheck
{
  if (self->_serviceName)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__FKFriendsManager__shouldBypassDestinationStatusCheck__block_invoke;
    block[3] = &unk_27916A108;
    block[4] = self;
    if (_shouldBypassDestinationStatusCheck_once != -1)
    {
      dispatch_once(&_shouldBypassDestinationStatusCheck_once, block);
    }

    v2 = _shouldBypassDestinationStatusCheck___shouldBypassDestinationStatusCheck;
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

void __55__FKFriendsManager__shouldBypassDestinationStatusCheck__block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = [v4 persistentDomainForName:*(*(a1 + 32) + 8)];
  v3 = [v2 objectForKey:@"ETSkipHasGizmoCheck"];
  _shouldBypassDestinationStatusCheck___shouldBypassDestinationStatusCheck = [v3 BOOLValue];
}

- (int64_t)_firstEmptyPosition
{
  if (![(NSMutableArray *)self->_friendList count])
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v3 = 0;
  while (1)
  {
    v4 = [(NSMutableArray *)self->_friendList objectAtIndex:v3];
    v5 = [MEMORY[0x277CBEB68] null];

    if (v4 == v5)
    {
      break;
    }

    if (++v3 >= [(NSMutableArray *)self->_friendList count])
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v3;
}

- (unint64_t)_numberOfFriendsInList:(id)a3
{
  v3 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v4 = [MEMORY[0x277CBEB68] null];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__FKFriendsManager__numberOfFriendsInList___block_invoke;
  v8[3] = &unk_27916A2F8;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [v3 enumerateObjectsUsingBlock:v8];
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t __43__FKFriendsManager__numberOfFriendsInList___block_invoke(uint64_t result, uint64_t a2)
{
  if (*(result + 32) != a2)
  {
    ++*(*(*(result + 40) + 8) + 24);
  }

  return result;
}

- (void)_postChangeNotificationIfNecessary
{
  v2 = self;
  objc_initWeak(&location, self);
  LOBYTE(v2) = v2->_didCompleteInitialLoading;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__FKFriendsManager__postChangeNotificationIfNecessary__block_invoke;
  block[3] = &unk_27916A320;
  objc_copyWeak(&v4, &location);
  v5 = v2;
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __54__FKFriendsManager__postChangeNotificationIfNecessary__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _copyAndResetChangeLog];

  v4 = [v3 count];
  if (v4)
  {
    if (*(a1 + 40) == 1)
    {
      v5 = v4;
      v6 = _FKGetLogSystem();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 136316162;
        *&v12[4] = "[FKFriendsManager _postChangeNotificationIfNecessary]_block_invoke";
        v7 = @"entries";
        *&v12[12] = 1024;
        *&v12[14] = 1299;
        *&v12[20] = @"FKFriendsManagerChangedNotification";
        *&v12[18] = 2112;
        if (v5 == 1)
        {
          v7 = @"entry";
        }

        *&v12[28] = 1024;
        *&v12[30] = v5;
        v13 = 2112;
        v14 = v7;
        _os_log_impl(&dword_24BC19000, v6, OS_LOG_TYPE_DEFAULT, "%s (%d) posting %@ with %u changelog %@", v12, 0x2Cu);
      }
    }

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = objc_loadWeakRetained((a1 + 32));
    [v8 postNotificationName:@"FKFriendsManagerChangedNotification" object:v9 userInfo:v3];

    v10 = objc_loadWeakRetained((a1 + 32));
    [v10 _aggdLogFriendCount];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_personValuesChanged:(id)a3
{
  v4 = [a3 object];
  [(FKFriendsManager *)self _addEntryToChangeLogForPerson:v4 changeType:@"FKFriendsManagerPersonUpdated"];
  [(FKFriendsManager *)self _postChangeNotificationIfNecessary];
  if ([(NSMutableArray *)self->_friendList containsObject:v4])
  {
    [(FKFriendsManager *)self save];
  }
}

- (void)_friendsChangedExternally
{
  v10 = *MEMORY[0x277D85DE8];
  postCount = self->_postCount;
  if (postCount)
  {
    self->_postCount = postCount - 1;
  }

  else
  {
    v4 = _FKGetLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "[FKFriendsManager _friendsChangedExternally]";
      v8 = 1024;
      v9 = 1319;
      _os_log_impl(&dword_24BC19000, v4, OS_LOG_TYPE_DEFAULT, "%s (%d) Handling external friends-changed event.", &v6, 0x12u);
    }

    [(FKFriendsManager *)self _loadFriendList];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_loadGroupTitles
{
  CFPreferencesAppSynchronize(self->_domain);
  v9 = CFPreferencesCopyAppValue(@"ETFriendGroupTitles", self->_domain);
  v3 = [(NSMutableArray *)self->_friendGroups count];
  v4 = [v9 count];
  if (v3 >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v7 = [v9 objectAtIndexedSubscript:i];
      v8 = [(NSMutableArray *)self->_friendGroups objectAtIndexedSubscript:i];
      [v8 setTitle:v7];
    }
  }
}

- (void)_groupTitleChangedExternally
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = _FKGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[FKFriendsManager _groupTitleChangedExternally]";
    v7 = 1024;
    v8 = 1338;
    _os_log_impl(&dword_24BC19000, v3, OS_LOG_TYPE_DEFAULT, "%s (%d) Handling external group-title-changed event.", &v5, 0x12u);
  }

  [(FKFriendsManager *)self _loadGroupTitles];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_addressBookChanged:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _FKGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    *buf = 136315650;
    v10 = "[FKFriendsManager _addressBookChanged:]";
    v11 = 1024;
    v12 = 1343;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_24BC19000, v5, OS_LOG_TYPE_DEFAULT, "%s (%d) received %@", buf, 0x1Cu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__FKFriendsManager__addressBookChanged___block_invoke;
  block[3] = &unk_27916A108;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t __40__FKFriendsManager__addressBookChanged___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 88) isValid];
  if ((result & 1) == 0)
  {
    *(*(a1 + 32) + 137) = 1;
    v3 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:*(a1 + 32) target:sel_refreshAgainstAddressBook selector:0 userInfo:0 repeats:0.2];
    v4 = *(a1 + 32);
    v5 = *(v4 + 88);
    *(v4 + 88) = v3;

    return MEMORY[0x2821F96F8](v3, v5);
  }

  return result;
}

- (void)_updateFriends:(id)a3
{
  v4 = a3;
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __35__FKFriendsManager__updateFriends___block_invoke;
  v9 = &unk_27916A398;
  v10 = v4;
  v11 = self;
  v5 = v4;
  [FKAddressBook performBlock:&v6];
  self->_needsAddressBookRefresh = [(FKFriendsManager *)self _changeLogContainsFriendAdditionsOrUpdates:v6];
}

void __35__FKFriendsManager__updateFriends___block_invoke(uint64_t a1, ABAddressBookRef a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = ABAddressBookCopyUniqueIdentifier();

  if (v4)
  {
    cf = 0;
  }

  else
  {
    *error = 0;
    v5 = ABAddressBookCreateWithOptions(0, error);
    v6 = v5;
    if (*error)
    {
      if (v5)
      {
        CFRelease(v5);
      }

      v5 = a2;
    }

    cf = v6;
    a2 = v5;
  }

  v7 = [MEMORY[0x277CBEB18] array];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __35__FKFriendsManager__updateFriends___block_invoke_2;
  v32[3] = &unk_27916A348;
  v8 = *(a1 + 32);
  v32[4] = *(a1 + 40);
  v34 = a2;
  v9 = v7;
  v33 = v9;
  [v8 enumerateObjectsUsingBlock:v32];
  v10 = [*(*(a1 + 40) + 64) count];
  v11 = (*(*(a1 + 40) + 24) * ceilf([*(a1 + 32) count] / *(*(a1 + 40) + 24)));
  if (v10 > v11)
  {
    v12 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{v11, v10 - v11}];
    v13 = *(*(a1 + 40) + 64);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __35__FKFriendsManager__updateFriends___block_invoke_3;
    v30[3] = &unk_27916A370;
    v31 = v9;
    [v13 enumerateObjectsAtIndexes:v12 options:1 usingBlock:v30];
    [*(*(a1 + 40) + 64) removeObjectsAtIndexes:v12];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v9;
  v14 = [obj countByEnumeratingWithState:&v26 objects:v42 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        v19 = _FKGetLogSystem();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          [v18 displayName];
          v21 = v20 = a1;
          v22 = [v18 abRecordGUID];
          *error = 136315906;
          *&error[4] = "[FKFriendsManager _updateFriends:]_block_invoke";
          v36 = 1024;
          v37 = 1489;
          v38 = 2112;
          v39 = v21;
          v40 = 2112;
          v41 = v22;
          _os_log_impl(&dword_24BC19000, v19, OS_LOG_TYPE_DEFAULT, "%s (%d) [%@] [ABGUID=%@] was displaced and removed", error, 0x26u);

          a1 = v20;
        }

        [*(a1 + 40) _addEntryToChangeLogForPerson:v18 changeType:@"FKFriendsManagerPersonDeleted"];
      }

      v15 = [obj countByEnumeratingWithState:&v26 objects:v42 count:16];
    }

    while (v15);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  [*(a1 + 40) save];

  v23 = *MEMORY[0x277D85DE8];
}

void __35__FKFriendsManager__updateFriends___block_invoke_2(uint64_t a1, void *a2, unint64_t a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([*(*(a1 + 32) + 64) count] <= a3)
  {
    v6 = [v5 objectForKey:@"AllValues"];
    if (![v6 count])
    {
      goto LABEL_55;
    }

    v18 = [[FKPerson alloc] initWithDictionaryRepresentation:v5 addressBook:*(a1 + 48)];
    while ([*(*(a1 + 32) + 64) count] <= a3)
    {
      [*(a1 + 32) _addEmptyGroup];
    }

    [*(*(a1 + 32) + 64) setObject:v18 atIndexedSubscript:a3];
    [*(*(a1 + 32) + 120) removeObject:v18];
    [*(a1 + 32) _addEntryToChangeLogForPerson:v18 changeType:@"FKFriendsManagerPersonAdded"];
LABEL_30:

    goto LABEL_55;
  }

  v6 = [*(*(a1 + 32) + 64) objectAtIndexedSubscript:a3];
  v7 = [MEMORY[0x277CBEB68] null];

  v8 = [v5 allKeys];
  v9 = [v8 count];

  if (!v9)
  {
    if (v6 != v7)
    {
      [*(a1 + 40) addObject:v6];
    }

    v18 = [MEMORY[0x277CBEB68] null];
    [*(*(a1 + 32) + 64) setObject:v18 atIndexedSubscript:a3];
    goto LABEL_30;
  }

  if (v6 == v7 || ([v6 isEqualToDictionaryRepresentation:v5] & 1) == 0)
  {
    v33 = v7;
    for (i = a3 + 1; i < [*(*(a1 + 32) + 64) count]; ++i)
    {
      v20 = [*(*(a1 + 32) + 64) objectAtIndexedSubscript:i];
      v21 = [MEMORY[0x277CBEB68] null];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [*(*(a1 + 32) + 64) objectAtIndexedSubscript:i];
        v24 = [v23 isEqualToDictionaryRepresentation:v5];

        if (v24)
        {
          v10 = [*(*(a1 + 32) + 64) objectAtIndexedSubscript:i];
          [*(a1 + 32) _addEntryToChangeLogForPerson:v10 changeType:@"FKFriendsManagerPersonMoved"];
          v27 = [MEMORY[0x277CBEB68] null];
          [*(*(a1 + 32) + 64) setObject:v27 atIndexedSubscript:i];

          if (v10)
          {
            goto LABEL_47;
          }

          break;
        }
      }
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v28 = *(a1 + 40);
    v10 = [v28 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v10)
    {
      v29 = *v39;
      while (2)
      {
        for (j = 0; j != v10; j = j + 1)
        {
          if (*v39 != v29)
          {
            objc_enumerationMutation(v28);
          }

          v31 = *(*(&v38 + 1) + 8 * j);
          if ([v31 isEqualToDictionaryRepresentation:v5])
          {
            v10 = v31;
            [*(a1 + 40) removeObject:v10];
            [*(a1 + 32) _addEntryToChangeLogForPerson:v10 changeType:@"FKFriendsManagerPersonMoved"];
            goto LABEL_46;
          }
        }

        v10 = [v28 countByEnumeratingWithState:&v38 objects:v43 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_46:

LABEL_47:
    if (v6 != v33)
    {
      [*(a1 + 40) addObject:v6];
    }

    if (v10)
    {
      [*(*(a1 + 32) + 64) setObject:v10 atIndexedSubscript:a3];
    }

    if (!v10)
    {
      goto LABEL_6;
    }

LABEL_52:
    if ([v10 updateFromDictionaryRepresentation:v5])
    {
      [*(a1 + 32) _addEntryToChangeLogForPerson:v10 changeType:@"FKFriendsManagerPersonUpdated"];
    }

    v6 = v10;
    goto LABEL_55;
  }

  v10 = v6;
  if (v6)
  {
    goto LABEL_52;
  }

LABEL_6:
  v11 = [[FKPerson alloc] initWithDictionaryRepresentation:v5 addressBook:*(a1 + 48)];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v12 = *(*(a1 + 32) + 120);
  v13 = [v12 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v35;
LABEL_8:
    v16 = 0;
    while (1)
    {
      if (*v35 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v34 + 1) + 8 * v16);
      if ([(FKPerson *)v11 isLikePerson:v17])
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [v12 countByEnumeratingWithState:&v34 objects:v42 count:16];
        if (v14)
        {
          goto LABEL_8;
        }

        goto LABEL_14;
      }
    }

    v25 = v17;

    if (!v25)
    {
      goto LABEL_33;
    }

    v26 = v25;

    [*(*(a1 + 32) + 120) removeObject:v26];
    v11 = v26;
  }

  else
  {
LABEL_14:

LABEL_33:
    v26 = 0;
  }

  [*(*(a1 + 32) + 64) setObject:v11 atIndexedSubscript:a3];
  [*(a1 + 32) _addEntryToChangeLogForPerson:v11 changeType:@"FKFriendsManagerPersonAdded"];

  v6 = 0;
LABEL_55:

  v32 = *MEMORY[0x277D85DE8];
}

void __35__FKFriendsManager__updateFriends___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [MEMORY[0x277CBEB68] null];

  v4 = v5;
  if (v3 != v5)
  {
    [*(a1 + 32) addObject:v5];
    v4 = v5;
  }
}

- (void)_cleanUpFriendListIfNecessary
{
  [(FKFriendsManager *)self _deduplicateFriendListIfNecessary];
  [(FKFriendsManager *)self _removeDestinationlessFriendsIfNecessary];

  [(FKFriendsManager *)self save];
}

- (void)_deduplicateFriendListIfNecessary
{
  if (self->_shouldDeduplicateFriendList)
  {
    v16 = v2;
    v17 = v3;
    v5 = [MEMORY[0x277CCAB58] indexSet];
    v6 = [MEMORY[0x277CBEB58] set];
    friendList = self->_friendList;
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __53__FKFriendsManager__deduplicateFriendListIfNecessary__block_invoke;
    v13 = &unk_27916A3C0;
    v14 = v6;
    v15 = v5;
    v8 = v5;
    v9 = v6;
    [(NSMutableArray *)friendList enumerateObjectsUsingBlock:&v10];
    [(FKFriendsManager *)self _removeFriendsAtIndices:v8, v10, v11, v12, v13];
  }
}

void __53__FKFriendsManager__deduplicateFriendListIfNecessary__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [v6 abRecordGUID];
    v8 = [*(a1 + 32) containsObject:v7];
    if (v7 && v8)
    {
      [*(a1 + 40) addIndex:a3];
      v9 = _FKGetLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [v6 displayName];
        v11 = *(a1 + 32);
        v13 = 136316418;
        v14 = "[FKFriendsManager _deduplicateFriendListIfNecessary]_block_invoke";
        v15 = 1024;
        v16 = 1529;
        v17 = 2112;
        v18 = v10;
        v19 = 2112;
        v20 = v7;
        v21 = 2048;
        v22 = a3;
        v23 = 2112;
        v24 = v11;
        _os_log_impl(&dword_24BC19000, v9, OS_LOG_TYPE_DEFAULT, "%s (%d) deduplicating friend [%@] [ABGUID=%@] at index %lu as it is already present in the set of friend ABGUIDs analyzed so far: %@", &v13, 0x3Au);
      }
    }

    else if (!((v7 == 0) | v8 & 1))
    {
      [*(a1 + 32) addObject:v7];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_removeDestinationlessFriendsIfNecessary
{
  if (self->_shouldRemoveDestinationlessFriends)
  {
    v10 = v2;
    v11 = v3;
    v5 = [MEMORY[0x277CCAB58] indexSet];
    friendList = self->_friendList;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__FKFriendsManager__removeDestinationlessFriendsIfNecessary__block_invoke;
    v8[3] = &unk_27916A370;
    v9 = v5;
    v7 = v5;
    [(NSMutableArray *)friendList enumerateObjectsUsingBlock:v8];
    [(FKFriendsManager *)self _removeFriendsAtIndices:v7];
  }
}

void __60__FKFriendsManager__removeDestinationlessFriendsIfNecessary__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    if (![v6 allValuesCount])
    {
      [*(a1 + 32) addIndex:a3];
      v7 = _FKGetLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v6 displayName];
        v9 = [v6 abRecordGUID];
        v11 = 136315906;
        v12 = "[FKFriendsManager _removeDestinationlessFriendsIfNecessary]_block_invoke";
        v13 = 1024;
        v14 = 1555;
        v15 = 2112;
        v16 = v8;
        v17 = 2112;
        v18 = v9;
        _os_log_impl(&dword_24BC19000, v7, OS_LOG_TYPE_DEFAULT, "%s (%d) culling friend [%@] [ABGUID=%@] since its destination set has become empty", &v11, 0x26u);
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_removeFriendsAtIndices:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __44__FKFriendsManager__removeFriendsAtIndices___block_invoke;
    v5[3] = &unk_27916A3E8;
    v5[4] = self;
    [v4 enumerateIndexesUsingBlock:v5];
    self->_needsFriendListSync = 1;
  }
}

void __44__FKFriendsManager__removeFriendsAtIndices___block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = [*(*(a1 + 32) + 64) objectAtIndex:a2];
  [*(a1 + 32) _addEntryToChangeLogForPerson:v7 changeType:@"FKFriendsManagerPersonDeleted"];
  v3 = [*(a1 + 32) groupIndexContainingFriend:v7];
  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = v3;
    v5 = [*(a1 + 32) friendGroups];
    v6 = [v5 objectAtIndex:v4];

    [v6 removeFriendAtPosition:{objc_msgSend(*(a1 + 32), "positionOfFriendInGroup:", v7)}];
  }
}

- (unint64_t)_changeLogCount
{
  objc_initWeak(&location, self);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  changeLogQueue = self->_changeLogQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__FKFriendsManager__changeLogCount__block_invoke;
  block[3] = &unk_27916A410;
  block[4] = &v8;
  objc_copyWeak(&v7, &location);
  dispatch_sync(changeLogQueue, block);
  v4 = v9[3];
  objc_destroyWeak(&v7);
  _Block_object_dispose(&v8, 8);
  objc_destroyWeak(&location);
  return v4;
}

void __35__FKFriendsManager__changeLogCount__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained changeLog];
  *(*(*(a1 + 32) + 8) + 24) = [v2 count];
}

- (id)_copyAndResetChangeLog
{
  objc_initWeak(&location, self);
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  changeLogQueue = self->_changeLogQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__FKFriendsManager__copyAndResetChangeLog__block_invoke;
  v6[3] = &unk_27916A438;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  v6[5] = &v8;
  dispatch_sync(changeLogQueue, v6);
  v4 = v9[5];
  objc_destroyWeak(&v7);
  _Block_object_dispose(&v8, 8);

  objc_destroyWeak(&location);
  return v4;
}

void __42__FKFriendsManager__copyAndResetChangeLog__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained changeLog];
  v4 = [v3 count];

  if (v4)
  {
    v5 = MEMORY[0x277CBEAC0];
    v6 = objc_loadWeakRetained((a1 + 48));
    v7 = [v6 changeLog];
    v8 = [v5 dictionaryWithDictionary:v7];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = *(*(a1 + 32) + 104);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__FKFriendsManager__copyAndResetChangeLog__block_invoke_2;
    block[3] = &unk_27916A258;
    objc_copyWeak(&v13, (a1 + 48));
    dispatch_barrier_async(v11, block);
    objc_destroyWeak(&v13);
  }
}

void __42__FKFriendsManager__copyAndResetChangeLog__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setChangeLog:0];
}

- (void)_addEntryToChangeLogForPerson:(id)a3 changeType:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    objc_initWeak(&location, self);
    changeLogQueue = self->_changeLogQueue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __61__FKFriendsManager__addEntryToChangeLogForPerson_changeType___block_invoke;
    v9[3] = &unk_27916A460;
    objc_copyWeak(&v12, &location);
    v10 = v6;
    v11 = v7;
    dispatch_barrier_async(changeLogQueue, v9);

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __61__FKFriendsManager__addEntryToChangeLogForPerson_changeType___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained changeLog];

  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    v5 = objc_loadWeakRetained((a1 + 48));
    [v5 setChangeLog:v4];
  }

  v6 = objc_loadWeakRetained((a1 + 48));
  v7 = [v6 changeLog];
  v11 = [v7 objectForKey:*(a1 + 32)];

  v8 = v11;
  if (!v11)
  {
    v8 = [MEMORY[0x277CBEB58] set];
  }

  v12 = v8;
  [v8 addObject:*(a1 + 40)];
  v9 = objc_loadWeakRetained((a1 + 48));
  v10 = [v9 changeLog];
  [v10 setObject:v12 forKey:*(a1 + 32)];
}

- (BOOL)_changeLogContainsFriendAdditionsOrUpdates
{
  objc_initWeak(&location, self);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  changeLogQueue = self->_changeLogQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__FKFriendsManager__changeLogContainsFriendAdditionsOrUpdates__block_invoke;
  block[3] = &unk_27916A4B0;
  objc_copyWeak(&v6, &location);
  block[4] = &v7;
  dispatch_sync(changeLogQueue, block);
  LOBYTE(changeLogQueue) = *(v8 + 24);
  objc_destroyWeak(&v6);
  _Block_object_dispose(&v7, 8);
  objc_destroyWeak(&location);
  return changeLogQueue;
}

void __62__FKFriendsManager__changeLogContainsFriendAdditionsOrUpdates__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained changeLog];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __62__FKFriendsManager__changeLogContainsFriendAdditionsOrUpdates__block_invoke_2;
  v4[3] = &unk_27916A488;
  v4[4] = *(a1 + 32);
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

void __62__FKFriendsManager__changeLogContainsFriendAdditionsOrUpdates__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  if (([v6 containsObject:@"FKFriendsManagerPersonAdded"] & 1) != 0 || objc_msgSend(v6, "containsObject:", @"FKFriendsManagerPersonUpdated"))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

+ (id)collapseChangeLogsIntoChangeLog:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __52__FKFriendsManager_collapseChangeLogsIntoChangeLog___block_invoke;
        v13[3] = &unk_27916A4D8;
        v14 = v4;
        [v10 enumerateKeysAndObjectsUsingBlock:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

void __52__FKFriendsManager_collapseChangeLogsIntoChangeLog___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKey:v10];
  v7 = v6;
  if (!v6 || ([v6 containsObject:@"FKFriendsManagerPersonDeleted"] & 1) == 0 && (objc_msgSend(v5, "containsObject:", @"FKFriendsManagerPersonDeleted") & 1) != 0 || objc_msgSend(v7, "containsObject:", @"FKFriendsManagerPersonDeleted") && objc_msgSend(v5, "containsObject:", @"FKFriendsManagerPersonAdded"))
  {
    v8 = v5;
  }

  else
  {
    v8 = [v7 setByAddingObjectsFromSet:v5];
  }

  v9 = v8;
  [*(a1 + 32) setObject:v8 forKey:v10];
}

- (int)_lastKnownAddressBookSequenceNumber
{
  CFPreferencesAppSynchronize(self->_domain);
  v3 = CFPreferencesCopyAppValue(@"ABSequenceNumber", self->_domain);
  v4 = [v3 intValue];

  return v4;
}

- (BOOL)_addressBookSequenceNumberDidChange
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__FKFriendsManager__addressBookSequenceNumberDidChange__block_invoke;
  v4[3] = &unk_27916A2A8;
  v4[4] = self;
  v4[5] = &v5;
  [FKAddressBook performBlock:v4];
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __55__FKFriendsManager__addressBookSequenceNumberDidChange__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _lastKnownAddressBookSequenceNumber];
  result = ABAddressBookGetSequenceNumber();
  *(*(*(a1 + 40) + 8) + 24) = v2 != result;
  return result;
}

- (void)setRefreshAgainstContactsEnabled:(BOOL)a3
{
  if (self->_refreshAgainstContactsEnabled != a3)
  {
    self->_refreshAgainstContactsEnabled = a3;
    if (a3)
    {
      [(FKFriendsManager *)self refreshAgainstAddressBook];
    }
  }
}

- (BOOL)refreshAgainstAddressBook
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = self->_needsAddressBookRefresh || [(FKFriendsManager *)self _addressBookSequenceNumberDidChange];
  v4 = self->_refreshAgainstContactsEnabled && v3;
  if (v4)
  {
    v5 = _FKGetLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v10 = "[FKFriendsManager refreshAgainstAddressBook]";
      v11 = 1024;
      v12 = 1709;
      _os_log_impl(&dword_24BC19000, v5, OS_LOG_TYPE_DEFAULT, "%s (%d) refreshing friends against address book", buf, 0x12u);
    }

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __45__FKFriendsManager_refreshAgainstAddressBook__block_invoke;
    v8[3] = &unk_27916A520;
    v8[4] = self;
    [FKAddressBook performBlock:v8];
    [(FKFriendsManager *)self _cleanUpFriendListIfNecessary];
    [(FKFriendsManager *)self _postChangeNotificationIfNecessary];
    self->_needsAddressBookRefresh = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t __45__FKFriendsManager_refreshAgainstAddressBook__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 64);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __45__FKFriendsManager_refreshAgainstAddressBook__block_invoke_2;
  v5[3] = &__block_descriptor_40_e25_v32__0__FKPerson_8Q16_B24l;
  v5[4] = a2;
  [v3 enumerateObjectsUsingBlock:v5];
  return [*(a1 + 32) _updateLastKnownAddressBookSequenceNumber:ABAddressBookGetSequenceNumber()];
}

void __45__FKFriendsManager_refreshAgainstAddressBook__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 refreshWithAddressBook:*(a1 + 32)];
  }
}

- (void)saveFriendGroupTitles
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = self->_friendGroups;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v18 + 1) + 8 * i) title];
        v10 = v9;
        if (v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = &stru_285F8D5E0;
        }

        [v3 addObject:v11];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  saveQueue = self->_saveQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __41__FKFriendsManager_saveFriendGroupTitles__block_invoke;
  v15[3] = &unk_27916A548;
  v16 = v3;
  v17 = self;
  v13 = v3;
  dispatch_async(saveQueue, v15);

  v14 = *MEMORY[0x277D85DE8];
}

void __41__FKFriendsManager_saveFriendGroupTitles__block_invoke(uint64_t a1)
{
  CFPreferencesSetAppValue(@"ETFriendGroupTitles", *(a1 + 32), *(*(a1 + 40) + 8));
  CFPreferencesAppSynchronize(*(*(a1 + 40) + 8));
  if (NPSHasCompletedInitialSync())
  {
    v2 = *(a1 + 40);
    v3 = *(v2 + 80);
    v4 = *(v2 + 8);
    v5 = [MEMORY[0x277CBEB98] setWithObject:@"ETFriendGroupTitles"];
    [v3 synchronizeUserDefaultsDomain:v4 keys:v5];
  }
}

- (void)markFriendListAsNormalized
{
  saveQueue = self->_saveQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__FKFriendsManager_markFriendListAsNormalized__block_invoke;
  block[3] = &unk_27916A108;
  block[4] = self;
  dispatch_async(saveQueue, block);
}

void __46__FKFriendsManager_markFriendListAsNormalized__block_invoke(uint64_t a1)
{
  CFPreferencesSetAppValue(@"DidNormalizeFriendListDestinations", *MEMORY[0x277CBED28], *(*(a1 + 32) + 8));
  CFPreferencesAppSynchronize(*(*(a1 + 32) + 8));
  if (NPSHasCompletedInitialSync())
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 80);
    v4 = *(v2 + 8);
    v5 = [MEMORY[0x277CBEB98] setWithObject:@"DidNormalizeFriendListDestinations"];
    [v3 synchronizeUserDefaultsDomain:v4 keys:v5];
  }
}

- (void)initWithDomain:(os_log_t)log .cold.1(os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[FKFriendsManager initWithDomain:]";
  v4 = 1024;
  v5 = 193;
  _os_log_error_impl(&dword_24BC19000, log, OS_LOG_TYPE_ERROR, "%s (%d) Softlinking failure for CNContactStoreDidChangeNotification; we won't be able to listen for contact database changes.", &v2, 0x12u);
  v1 = *MEMORY[0x277D85DE8];
}

@end