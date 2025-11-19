@interface ASDaemonAccount
+ (int64_t)_convertCalendarAvailabilityType:(char)a3;
- (ASDaemonAccount)initWithBackingAccountInfo:(id)a3;
- (BOOL)_clearOutInviteWithDeliveryFolderId:(id)a3 deliveryServerId:(id)a4 wasSoftDelete:(BOOL)a5 considerInvitedToInvitations:(BOOL)a6;
- (BOOL)_handleNameCollisionOnAddedFolder:(id)a3 consumer:(id)a4 completionBlock:(id)a5;
- (BOOL)_handleSuccessfulFolderChangeForFolders:(id)a3 previousSyncKey:(id)a4;
- (BOOL)_setLocalDisplayName:(id)a3 forFolder:(id)a4;
- (BOOL)addStringsToEmailForEventIAmAttending:(id)a3 recipient:(id)a4 stringsToEmail:(id)a5 eventUUIDsToEmail:(id)a6 externalIDs:(id)a7 messageIDsToEmail:(id)a8 eventsDroppedDueToAge:(id)a9 checkEventForNeedingInvite:(BOOL)a10;
- (BOOL)clearFolderIdsForPersistentPushWithClientID:(id)a3;
- (BOOL)isOofSupported;
- (BOOL)monitorFoldersWithIDs:(id)a3;
- (BOOL)sendEmailsForCalEvents:(id)a3 consumer:(id)a4;
- (BOOL)setFolderIdsForPersistentPushAdded:(id)a3 deleted:(id)a4 clientID:(id)a5;
- (BOOL)setFolderIdsThatExternalClientsCareAboutAdded:(id)a3 deleted:(id)a4 foldersTag:(id)a5;
- (BOOL)shouldCancelTaskDueToOnPowerFetchMode;
- (__CFString)_pingPowerAssertionIdentifier;
- (id)_ASSyncTaskAndMeetingResponseCommandsFromDAEventActions:(id)a3 meetingResponseActions:(id)a4 emailEvents:(id)a5;
- (id)_copyICSDateFromDate:(id)a3 timeZone:(id)a4;
- (id)_foldersToSyncGivenResults:(id)a3;
- (id)_localizedStringForResponse:(int)a3;
- (id)_newPolicyManager;
- (id)_parentIdFromEventId:(id)a3;
- (id)_stringWithRFC822DataFromEvent:(id)a3 icsMethod:(int)a4 recipients:(id)a5 recipientBareEmails:(id)a6 exceptionDate:(id)a7 outMessageID:(id *)a8;
- (id)beginDownloadingAttachmentWithUUID:(id)a3 consumer:(id)a4;
- (id)copyMessageStringWithPlainTextString:(id)a3 vCalMethod:(int)a4 vCalAttachmentData:(id)a5 fromAddress:(id)a6 toAddresses:(id)a7 date:(id)a8 subject:(id)a9 outMessageID:(id *)a10;
- (id)requestCalendarAvailabilityForStartDate:(id)a3 endDate:(id)a4 ignoredEventID:(id)a5 addresses:(id)a6 consumer:(id)a7;
- (id)stateString;
- (int)forwardMeeting:(id)a3 withServerId:(id)a4 withInstanceId:(id)a5 withFolderId:(id)a6 toEmailAddresses:(id)a7 withAttendeeUUIDs:(id)a8 consumer:(id)a9;
- (int)performMoveRequests:(id)a3 consumer:(id)a4;
- (void)_cancelPingTask;
- (void)_enqueueNotificationWithName:(id)a3 sourceRunLoop:(id)a4 userInfo:(id)a5;
- (void)_handlePolicyUpdate;
- (void)_pollFolders;
- (void)_pruneFoldersToMonitorOfOrphanedFolders;
- (void)_reallyAttemptInvitationLinkageForMetaDatas:(id)a3 deliveryIdsToClear:(id)a4 deliveryIdsToSoftClear:(id)a5 inFolderWithId:(id)a6 callback:(id)a7;
- (void)_reallySyncLocallyChangedFolder:(id)a3 consumer:(id)a4 dataclasses:(int64_t)a5 completionBlock:(id)a6;
- (void)_refirePingWithXPCActivityDelay:(int64_t)a3 withGrowthAction:(int)a4;
- (void)_reissuePingFromXPCActivityWithGrowthAction:(int)a3;
- (void)_reissuePingTaskWithGrowthAction:(int)a3;
- (void)_reportFolderHierarchySyncSuccessWithCount:(unint64_t)a3;
- (void)_reportFolderItemSyncSuccess:(BOOL)a3 forFolderWithID:(id)a4 withItemsCount:(unint64_t)a5;
- (void)_respondToMeetingsForActions:(id)a3 inFolderWithId:(id)a4 consumer:(id)a5;
- (void)_setFolderHierarchyNeedsUpdate:(BOOL)a3;
- (void)_stopMonitoringFoldersWithIds:(id)a3;
- (void)accountDidUpdateProtocolVersion;
- (void)addFolderIDToPingBlacklist:(id)a3;
- (void)addFolderIDToPingHistoryBlacklist:(id)a3;
- (void)addStringsToEmailForEventIOriginated:(id)a3 deletedExceptionOccurrenceDate:(id)a4 stringsToEmail:(id)a5 eventUUIDsToEmail:(id)a6 externalIDs:(id)a7 messageIDsToEmail:(id)a8 eventsDroppedDueToAge:(id)a9 checkEventForNeedingInvite:(BOOL)a10;
- (void)attemptInvitationLinkageForMetaDatas:(id)a3 deliveryIdsToClear:(id)a4 deliveryIdsToSoftClear:(id)a5 inFolderWithId:(id)a6 callback:(id)a7;
- (void)cancelCalendarAvailabilityRequestWithID:(id)a3;
- (void)cancelDownloadingInstance:(id)a3 error:(id)a4;
- (void)connectionManager:(id)a3 handleEvent:(int)a4;
- (void)consumerFinishedInvitationActionsForEventWithUID:(id)a3;
- (void)dealloc;
- (void)fetchAttachmentTask:(id)a3 completedWithStatus:(int64_t)a4 dataWasBase64:(BOOL)a5 error:(id)a6;
- (void)fetchAttachmentTask:(id)a3 receivedData:(id)a4 ofContentType:(id)a5;
- (void)folderLocalUpdateTask:(id)a3 completedWithStatus:(int64_t)a4 error:(id)a5 updatedFolder:(id)a6 newSyncKey:(id)a7 completionBlock:(id)a8;
- (void)folderSyncTask:(id)a3 completedWithStatus:(int64_t)a4 error:(id)a5 foldersChanged:(id)a6 newSyncKey:(id)a7;
- (void)meetingResponseTask:(id)a3 completedWithStatus:(int64_t)a4 error:(id)a5;
- (void)messageWriter:(id)a3 willEncodeHeaders:(id)a4 forMimePart:(id)a5;
- (void)messageWriter:(id)a3 willGenerateHeadersForMimePart:(id)a4;
- (void)monitorFolder:(id)a3;
- (void)pingTask:(id)a3 completedWithStatus:(int64_t)a4 error:(id)a5 resultFolders:(id)a6 resultMaxFolders:(int)a7 resultHBInterval:(int)a8;
- (void)reissuePingFromTimer:(id)a3;
- (void)removeFolderIDFromPingBlacklist:(id)a3;
- (void)removeFromAllPingHistoryBlacklistForFolderID:(id)a3;
- (void)removeFromPingHierarchyAndHistoryBlacklistForFolderID:(id)a3;
- (void)resolveRecipientsTask:(id)a3 completedWithStatus:(int64_t)a4 error:(id)a5 queriedEmailAddressToRecpient:(id)a6;
- (void)resumeMonitoringFolderID:(id)a3;
- (void)resumeMonitoringFoldersWithIDs:(id)a3;
- (void)retrieveOofSettingsForConsumer:(id)a3;
- (void)sendMailTask:(id)a3 completedWithStatus:(int64_t)a4 error:(id)a5;
- (void)setSafeToPing:(BOOL)a3;
- (void)settingsTask:(id)a3 completedWithStatus:(int64_t)a4 error:(id)a5 response:(id)a6;
- (void)stopMonitoringFolderWithID:(id)a3;
- (void)stopMonitoringFoldersWithIDs:(id)a3;
- (void)suspendMonitoringFoldersWithIDs:(id)a3;
- (void)syncLocallyChangedFolder:(id)a3 consumer:(id)a4 completionBlock:(id)a5;
- (void)synchronizeNotesFolder:(id)a3 noteContext:(id)a4 previousTag:(id)a5 actions:(id)a6 changeSet:(id)a7 notesToDeleteAfterSync:(id)a8 isInitialUberSync:(BOOL)a9 isResyncAfterConnectionFailed:(BOOL)a10 moreLocalChangesAvailable:(BOOL)a11 consumer:(id)a12;
- (void)tearDown;
- (void)updateOofSettingsWithParams:(id)a3 consumer:(id)a4;
@end

@implementation ASDaemonAccount

- (ASDaemonAccount)initWithBackingAccountInfo:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = ASDaemonAccount;
  v5 = [(ASDaemonAccount *)&v32 initWithBackingAccountInfo:v4];
  if (v5)
  {
    v6 = [PCConnectionManager alloc];
    v7 = dataaccess_get_global_queue();
    v8 = [(ASDaemonAccount *)v5 scheduleIdentifier];
    v9 = [v6 initWithConnectionClass:1 delegate:v5 delegateQueue:v7 serviceIdentifier:v8];
    pcManager = v5->_pcManager;
    v5->_pcManager = v9;

    [(PCConnectionManager *)v5->_pcManager setPowerOptimizationsForExpensiveNetworkingDisabled:0];
    if (![(PCConnectionManager *)v5->_pcManager currentStyle])
    {
      v11 = +[ESWifiAssertionManager sharedWifiAssertionManager];
      [v11 retainWifiAssertion];
    }

    if ((+[DABehaviorOptions earlyPingEnabled]& 1) == 0)
    {
      v12 = DALoggingwithCategory();
      v13 = _CPLog_to_os_log_type[4];
      if (os_log_type_enabled(v12, v13))
      {
        *buf = 138412290;
        v34 = v5;
        _os_log_impl(&dword_0, v12, v13, "Disabling early fire for Exchange account %@", buf, 0xCu);
      }

      [(PCConnectionManager *)v5->_pcManager setDisableEarlyFire:1];
    }

    [(PCConnectionManager *)v5->_pcManager setKeepAliveGracePeriod:30.0];
    v14 = +[NSUserDefaults standardUserDefaults];
    dword_74988 = [v14 integerForKey:@"ForcedHBI"];

    if (dword_74988)
    {
      [(PCConnectionManager *)v5->_pcManager setMinimumKeepAliveInterval:dword_74988];
      [(PCConnectionManager *)v5->_pcManager setMaximumKeepAliveInterval:dword_74988];
    }

    v15 = objc_opt_new();
    folderIdsWithUnacknowledgedPings = v5->_folderIdsWithUnacknowledgedPings;
    v5->_folderIdsWithUnacknowledgedPings = v15;

    v17 = objc_opt_new();
    invitationActionsInFlight = v5->_invitationActionsInFlight;
    v5->_invitationActionsInFlight = v17;

    v19 = objc_opt_new();
    pingBlacklistFolderIds = v5->_pingBlacklistFolderIds;
    v5->_pingBlacklistFolderIds = v19;

    v21 = objc_opt_new();
    folderChangeHistory = v5->_folderChangeHistory;
    v5->_folderChangeHistory = v21;

    v23 = objc_opt_new();
    pingHistoryBlacklistFolderIds = v5->_pingHistoryBlacklistFolderIds;
    v5->_pingHistoryBlacklistFolderIds = v23;

    objc_initWeak(buf, v5);
    v25 = +[NSNotificationCenter defaultCenter];
    v26 = [(ASDaemonAccount *)v5 accountID];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1A7C8;
    v30[3] = &unk_6D050;
    objc_copyWeak(&v31, buf);
    v27 = [v25 addObserverForName:ASPolicyKeyChangedNotification object:v26 queue:0 usingBlock:v30];

    noteObserver = v5->_noteObserver;
    v5->_noteObserver = v27;

    objc_destroyWeak(&v31);
    objc_destroyWeak(buf);
  }

  return v5;
}

- (__CFString)_pingPowerAssertionIdentifier
{
  pingPowerAssertionUUID = self->_pingPowerAssertionUUID;
  if (!pingPowerAssertionUUID)
  {
    v4 = +[NSString da_newGUID];
    [(ASDaemonAccount *)self setPingPowerAssertionUUID:v4];

    pingPowerAssertionUUID = self->_pingPowerAssertionUUID;
  }

  return [NSString stringWithFormat:@"exchangesyncd_ping_power_assertion-%@", pingPowerAssertionUUID];
}

- (void)tearDown
{
  self->_isTearingDown = 1;
  [*&self->ASAccount_opaque[OBJC_IVAR___DAAccount__taskManager] shutdown];
  v3 = self;
  objc_sync_enter(v3);
  WeakRetained = objc_loadWeakRetained(&v3->_delayedPingTimer);
  [WeakRetained invalidate];

  objc_storeWeak(&v3->_delayedPingTimer, 0);
  v5 = [(NSMutableDictionary *)v3->_foldersToMonitorById allKeys];
  v6 = [NSArray arrayWithArray:v5];

  objc_sync_exit(v3);
  [(ASDaemonAccount *)v3 _stopMonitoringFoldersWithIds:v6];
  v7 = DALoggingwithCategory();
  v8 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v7, v8))
  {
    v11 = 138412290;
    v12 = [(ASDaemonAccount *)v3 _pingPowerAssertionIdentifier];
    _os_log_impl(&dword_0, v7, v8, "Release power assertion %@", &v11, 0xCu);
  }

  [(ASDaemonAccount *)v3 _pingPowerAssertionIdentifier];
  CPSetPowerAssertionWithIdentifier();
  [(ASDaemonAccount *)v3 setPingPowerAssertionUUID:0];
  [(ASDaemonAccount *)v3 _cancelPingTask];
  v9 = v3;
  objc_sync_enter(v9);
  if (v9->_hasScheduledPingXPCActivity)
  {
    v9->_hasScheduledPingXPCActivity = 0;
    v10 = dataaccess_get_global_queue();
    dispatch_async(v10, &stru_6D090);
  }

  objc_sync_exit(v9);
}

- (void)_cancelPingTask
{
  v3 = DALoggingwithCategory();
  v4 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v3, v4))
  {
    *v11 = 0;
    _os_log_impl(&dword_0, v3, v4, "Invoking _cancelPingTask", v11, 2u);
  }

  [(PCConnectionManager *)self->_pcManager stopManager];
  WeakRetained = objc_loadWeakRetained(&self->_pingTask);

  if (WeakRetained)
  {
    v6 = *&self->ASAccount_opaque[OBJC_IVAR___DAAccount__taskManager];
    v7 = objc_loadWeakRetained(&self->_pingTask);
    [v6 cancelTask:v7];
  }

  v8 = objc_loadWeakRetained(&self->_pingTask);

  if (v8)
  {
    v9 = objc_loadWeakRetained(&self->_pingTask);
    v10 = [v9 askedToCancelWhileModal];

    if ((v10 & 1) == 0)
    {
      sub_481A4();
    }

    objc_storeWeak(&self->_pingTask, 0);
  }
}

- (void)dealloc
{
  if (self->_noteObserver)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self->_noteObserver];
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  if (![(PCConnectionManager *)self->_pcManager currentStyle])
  {
    v5 = +[ESWifiAssertionManager sharedWifiAssertionManager];
    [v5 releaseWifiAssertion];
  }

  [(PCConnectionManager *)self->_pcManager stopManager];
  [(PCConnectionManager *)self->_pcManager setDelegate:0];
  v6 = DALoggingwithCategory();
  v7 = _CPLog_to_os_log_type[5];
  if (os_log_type_enabled(v6, v7))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v6, v7, "[ASDaemonAccount dealloc] - Tearing down PCConnectionManager and shutting down.", buf, 2u);
  }

  [(ASDaemonAccount *)self tearDown];
  v8.receiver = self;
  v8.super_class = ASDaemonAccount;
  [(ASDaemonAccount *)&v8 dealloc];
}

- (void)_handlePolicyUpdate
{
  v3 = [ASPerAccountPolicyData alloc];
  v4 = [(ASDaemonAccount *)self persistentUUID];
  v7 = [v3 initWithAccountPersistentUUID:v4];

  v5 = [v7 policyValues];
  v6 = [v5 objectForKeyedSubscript:RequireManualSyncWhenRoaming];
  [v6 BOOLValue];

  [(ASDaemonAccount *)self scheduleIdentifier];
  PCSettingsSetForceManualWhenRoamingForMCCAccount();
}

- (id)_newPolicyManager
{
  v3 = [ASDaemonPolicyManager alloc];

  return [(ASDaemonPolicyManager *)v3 initWithAccount:self];
}

- (id)stateString
{
  v10.receiver = self;
  v10.super_class = ASDaemonAccount;
  v3 = [(ASDaemonAccount *)&v10 stateString];
  v4 = [v3 mutableCopy];

  v5 = self;
  objc_sync_enter(v5);
  [v4 appendFormat:@"Last ping HBI %d\n", v5->_lastPingHeartBeat];
  v6 = sub_1B010(v5->_foldersToMonitorById);
  [v4 appendFormat:@"_foldersToMonitorById: %@\n", v6];

  v7 = [(NSMutableSet *)v5->_folderIdsWithUnacknowledgedPings allObjects];
  v8 = [v7 componentsJoinedByString:{@", "}];
  [v4 appendFormat:@"_folderIdsWithUnacknowledgedPings: %@\n", v8];

  [v4 appendFormat:@"_busyFolderIds: %@\n", v5->_busyFolderIds];
  [v4 appendFormat:@"_pingBlacklistFolderIds: %@\n", v5->_pingBlacklistFolderIds];
  [v4 appendFormat:@"_pingHistoryBlacklistFolderIds: %@\n", v5->_pingHistoryBlacklistFolderIds];
  objc_sync_exit(v5);

  return v4;
}

- (void)addFolderIDToPingBlacklist:(id)a3
{
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_0, v5, v6, "Folder %@ added to the ping blacklist", &v8, 0xCu);
  }

  v7 = self;
  objc_sync_enter(v7);
  [(NSMutableSet *)v7->_pingBlacklistFolderIds addObject:v4];
  objc_sync_exit(v7);
}

- (void)addFolderIDToPingHistoryBlacklist:(id)a3
{
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v5, v6))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&dword_0, v5, v6, "Folder %@ added to the ping history blacklist", &v8, 0xCu);
  }

  v7 = self;
  objc_sync_enter(v7);
  [(NSMutableSet *)v7->_pingHistoryBlacklistFolderIds addObject:v4];
  objc_sync_exit(v7);
}

- (void)removeFolderIDFromPingBlacklist:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ([(NSMutableSet *)v5->_pingBlacklistFolderIds containsObject:v4])
  {
    v6 = DALoggingwithCategory();
    v7 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v6, v7))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&dword_0, v6, v7, "Folder %@ removed from the ping blacklist", &v8, 0xCu);
    }

    [(NSMutableSet *)v5->_pingBlacklistFolderIds removeObject:v4];
  }

  objc_sync_exit(v5);
}

- (void)removeFromAllPingHistoryBlacklistForFolderID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_isHierarchyChangeBlackListed)
  {
    v6 = DALoggingwithCategory();
    v7 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v6, v7))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_0, v6, v7, "Remove folder hierarchy from ping history blacklist", &v20, 2u);
    }

    v5->_isHierarchyChangeBlackListed = 0;
  }

  if (v5->_hierarchyChangeHistory)
  {
    v8 = DALoggingwithCategory();
    v9 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v8, v9))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_0, v8, v9, "Clearing folder hierarchy ping history, after a successful sync", &v20, 2u);
    }

    hierarchyChangeHistory = v5->_hierarchyChangeHistory;
    v5->_hierarchyChangeHistory = 0;
  }

  if (v5->_isNoChangeBlackListed)
  {
    v11 = DALoggingwithCategory();
    v12 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v11, v12))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_0, v11, v12, "Remove from ping no change blacklist", &v20, 2u);
    }

    v5->_isNoChangeBlackListed = 0;
  }

  if (v5->_noChangeHistory)
  {
    v13 = DALoggingwithCategory();
    v14 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v13, v14))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_0, v13, v14, "Clearing ping no change history, after a successful sync", &v20, 2u);
    }

    noChangeHistory = v5->_noChangeHistory;
    v5->_noChangeHistory = 0;
  }

  if (v4)
  {
    if ([(NSMutableSet *)v5->_pingHistoryBlacklistFolderIds containsObject:v4])
    {
      v16 = DALoggingwithCategory();
      v17 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v16, v17))
      {
        v20 = 138412290;
        v21 = v4;
        _os_log_impl(&dword_0, v16, v17, "Folder %@ removed from the ping history blacklist", &v20, 0xCu);
      }

      [(NSMutableSet *)v5->_pingHistoryBlacklistFolderIds removeObject:v4];
    }

    v18 = DALoggingwithCategory();
    v19 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v18, v19))
    {
      v20 = 138412290;
      v21 = v4;
      _os_log_impl(&dword_0, v18, v19, "Clearing folder %@ from ping history, after it has a successful sync", &v20, 0xCu);
    }

    [(NSMutableDictionary *)v5->_folderChangeHistory removeObjectForKey:v4];
  }

  objc_sync_exit(v5);
}

- (void)removeFromPingHierarchyAndHistoryBlacklistForFolderID:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (v5->_isHierarchyChangeBlackListed)
  {
    v6 = DALoggingwithCategory();
    v7 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v6, v7))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_0, v6, v7, "Remove folder hierarchy from ping history blacklist", &v15, 2u);
    }

    v5->_isHierarchyChangeBlackListed = 0;
  }

  if (v5->_hierarchyChangeHistory)
  {
    v8 = DALoggingwithCategory();
    v9 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v8, v9))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_0, v8, v9, "Clearing folder hierarchy ping history, after a successful sync", &v15, 2u);
    }

    hierarchyChangeHistory = v5->_hierarchyChangeHistory;
    v5->_hierarchyChangeHistory = 0;
  }

  if (v4)
  {
    if ([(NSMutableSet *)v5->_pingHistoryBlacklistFolderIds containsObject:v4])
    {
      v11 = DALoggingwithCategory();
      v12 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v11, v12))
      {
        v15 = 138412290;
        v16 = v4;
        _os_log_impl(&dword_0, v11, v12, "Folder %@ removed from the ping history blacklist", &v15, 0xCu);
      }

      [(NSMutableSet *)v5->_pingHistoryBlacklistFolderIds removeObject:v4];
    }

    v13 = DALoggingwithCategory();
    v14 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v13, v14))
    {
      v15 = 138412290;
      v16 = v4;
      _os_log_impl(&dword_0, v13, v14, "Clearing folder %@ from ping history, after it has a successful sync", &v15, 0xCu);
    }

    [(NSMutableDictionary *)v5->_folderChangeHistory removeObjectForKey:v4];
  }

  objc_sync_exit(v5);
}

- (id)_foldersToSyncGivenResults:(id)a3
{
  v4 = a3;
  v5 = [[NSMutableSet alloc] initWithArray:v4];
  v6 = OBJC_IVAR___DAAccount__taskManager;
  v7 = [*&self->ASAccount_opaque[OBJC_IVAR___DAAccount__taskManager] queuedTasks];
  v8 = [v7 objectEnumerator];

  v9 = [v8 nextObject];
  if (v9)
  {
    v10 = v9;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 folderID];
        [v5 removeObject:v11];
      }

      v12 = [v8 nextObject];

      v10 = v12;
    }

    while (v12);
  }

  v13 = [*&self->ASAccount_opaque[v6] activeQueuedTask];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v13 folderID];
    [v5 removeObject:v14];
  }

  v15 = [v5 allObjects];

  return v15;
}

- (void)_setFolderHierarchyNeedsUpdate:(BOOL)a3
{
  v3 = a3;
  v7 = DAAccountFolderHierarchyNeedsUpdateNotification;
  if (v3)
  {
    v5 = DAAccountFolderHierarchyNeedsUpdateRequireChangedFoldersNotification;

    v7 = v5;
  }

  v6 = +[DARunLoopRegistry sharedRunLoop];
  [(ASDaemonAccount *)self _enqueueNotificationWithName:v7 sourceRunLoop:v6 userInfo:0];
}

- (BOOL)_handleSuccessfulFolderChangeForFolders:(id)a3 previousSyncKey:(id)a4
{
  v5 = a3;
  v88 = a4;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v118 objects:v133 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v119;
    v9 = _CPLog_to_os_log_type[6];
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v119 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v118 + 1) + 8 * i);
        v12 = DALoggingwithCategory();
        if (os_log_type_enabled(v12, v9))
        {
          v13 = [v11 changeType];
          *buf = 138412546;
          v123 = v11;
          v124 = 2048;
          v125 = v13;
          _os_log_impl(&dword_0, v12, v9, "reacting to changed folder %@ with change type %lu", buf, 0x16u);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v118 objects:v133 count:16];
    }

    while (v7);
  }

  v14 = v88;
  if (v88)
  {
    v15 = [(ASDaemonAccount *)self folderHierarchy];
    v16 = [v15 foldersTag];
    if (v16)
    {
      v17 = v16;
      v18 = [(ASDaemonAccount *)self folderHierarchy];
      v19 = [v18 foldersTag];
      v20 = [v88 isEqualToString:v19];

      if (v20)
      {
        v21 = 1;
        goto LABEL_84;
      }
    }

    else
    {
    }
  }

  v22 = objc_opt_new();
  v91 = [obj mutableCopy];
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v96 = obj;
  v23 = [v96 countByEnumeratingWithState:&v114 objects:v132 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v115;
    do
    {
      for (j = 0; j != v24; j = j + 1)
      {
        if (*v115 != v25)
        {
          objc_enumerationMutation(v96);
        }

        v27 = *(*(&v114 + 1) + 8 * j);
        v28 = [v27 serverID];

        if (v28 && ([v27 changeType] == &dword_0 + 2 || objc_msgSend(v27, "changeType") == &dword_4 + 3))
        {
          v29 = [(ASDaemonAccount *)self folderHierarchy];
          v30 = [v27 serverID];
          v31 = [v29 foldersUnderFolderWithID:v30];
          [v22 addObjectsFromArray:v31];
        }
      }

      v24 = [v96 countByEnumeratingWithState:&v114 objects:v132 count:16];
    }

    while (v24);
  }

  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v92 = v22;
  v32 = [v92 countByEnumeratingWithState:&v110 objects:v131 count:16];
  if (v32)
  {
    v33 = v32;
    *type = *v111;
    do
    {
      for (k = 0; k != v33; k = k + 1)
      {
        if (*v111 != *type)
        {
          objc_enumerationMutation(v92);
        }

        v35 = *(*(&v110 + 1) + 8 * k);
        v106 = 0u;
        v107 = 0u;
        v108 = 0u;
        v109 = 0u;
        v36 = v96;
        v37 = [v36 countByEnumeratingWithState:&v106 objects:v130 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v107;
          while (2)
          {
            for (m = 0; m != v38; m = m + 1)
            {
              if (*v107 != v39)
              {
                objc_enumerationMutation(v36);
              }

              v41 = [*(*(&v106 + 1) + 8 * m) serverID];
              v42 = [v35 serverID];
              v43 = [v41 isEqualToString:v42];

              if (v43)
              {

                goto LABEL_41;
              }
            }

            v38 = [v36 countByEnumeratingWithState:&v106 objects:v130 count:16];
            if (v38)
            {
              continue;
            }

            break;
          }
        }

        [v35 setChangeType:2];
        [v91 addObject:v35];
LABEL_41:
        ;
      }

      v33 = [v92 countByEnumeratingWithState:&v110 objects:v131 count:16];
    }

    while (v33);
  }

  v44 = [(ASDaemonAccount *)self folderHierarchy];
  v45 = [v44 folderCache];
  v46 = [v45 mutableCopy];

  if (!v46)
  {
    v46 = +[NSMutableDictionary dictionary];
  }

  v47 = DALoggingwithCategory();
  v48 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v47, v48))
  {
    *buf = 138412290;
    v123 = v46;
    _os_log_impl(&dword_0, v47, v48, "Original folderCache %@", buf, 0xCu);
  }

  v86 = v48;

  v49 = [v46 valueForKey:@"ASFolders"];
  v50 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v49, "count")}];
  v51 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v49, "count")}];
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v52 = v49;
  v53 = [v52 countByEnumeratingWithState:&v102 objects:v129 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v103;
    do
    {
      for (n = 0; n != v54; n = n + 1)
      {
        if (*v103 != v55)
        {
          objc_enumerationMutation(v52);
        }

        v57 = *(*(&v102 + 1) + 8 * n);
        v58 = [v57 serverID];
        [v50 setValue:v57 forKey:v58];

        v59 = [v57 serverID];
        v60 = [v57 displayName];
        [v51 setValue:v59 forKey:v60];
      }

      v54 = [v52 countByEnumeratingWithState:&v102 objects:v129 count:16];
    }

    while (v54);
  }

  v87 = v46;
  v85 = v52;

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v97 = v91;
  v61 = [v97 countByEnumeratingWithState:&v98 objects:v128 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v99;
    typea = _CPLog_to_os_log_type[3];
    do
    {
      for (ii = 0; ii != v62; ii = ii + 1)
      {
        if (*v99 != v63)
        {
          objc_enumerationMutation(v97);
        }

        v65 = *(*(&v98 + 1) + 8 * ii);
        v66 = [v65 serverID];
        if (v66)
        {
          v67 = v66;
          v68 = [v65 serverID];
          v69 = [v65 parentID];
          v70 = [v68 isEqualToString:v69];

          if (v70)
          {
            v71 = DALoggingwithCategory();
            if (os_log_type_enabled(v71, typea))
            {
              v72 = [v65 displayName];
              v73 = [v65 serverID];
              v74 = [v65 parentID];
              *buf = 138412802;
              v123 = v72;
              v124 = 2112;
              v125 = v73;
              v126 = 2112;
              v127 = v74;
              _os_log_impl(&dword_0, v71, typea, "Discarding folder [%@] with the same server ID [%@] and parent ID [%@]", buf, 0x20u);
            }

            goto LABEL_78;
          }
        }

        v75 = [v65 serverID];

        if (!v75)
        {
          continue;
        }

        v76 = [v65 changeType];
        if (v76 <= 1)
        {
          if (v76)
          {
            if (v76 != &dword_0 + 1)
            {
              goto LABEL_77;
            }

            v71 = [v65 serverID];
            v77 = [v50 objectForKeyedSubscript:v71];

            if (!v77)
            {
              v78 = [v65 displayName];
              v79 = [v51 objectForKeyedSubscript:v78];

              if (v79)
              {
                v80 = v79;

                v71 = v80;
              }
            }
          }

          else
          {
            v71 = [v65 serverID];
          }

          [v50 setObject:v65 forKeyedSubscript:v71];
        }

        else
        {
          if (v76 != &dword_0 + 2)
          {
            if (v76 == &dword_0 + 3)
            {
              continue;
            }

            if (v76 != &dword_4 + 3)
            {
LABEL_77:
              v71 = +[NSAssertionHandler currentHandler];
              -[NSObject handleFailureInMethod:object:file:lineNumber:description:](v71, "handleFailureInMethod:object:file:lineNumber:description:", a2, self, @"ASDaemonAccount.m", 467, @"Got unexpected change type %ld", [v65 changeType]);
              goto LABEL_78;
            }
          }

          v71 = [v65 serverID];
          [v50 removeObjectForKey:v71];
        }

LABEL_78:
      }

      v62 = [v97 countByEnumeratingWithState:&v98 objects:v128 count:16];
    }

    while (v62);
  }

  v81 = [v50 allValues];
  v21 = [v81 count] != 0;
  v14 = v88;
  [v87 setValue:v88 forKey:@"ASFoldersSyncKey"];
  [v87 setValue:v81 forKey:@"ASFolders"];
  v82 = DALoggingwithCategory();
  if (os_log_type_enabled(v82, v86))
  {
    *buf = 138412290;
    v123 = v87;
    _os_log_impl(&dword_0, v82, v86, "Resulting folderCache %@", buf, 0xCu);
  }

  v83 = [(ASDaemonAccount *)self folderHierarchy];
  [v83 setFolderCache:v87];

LABEL_84:
  return v21;
}

- (BOOL)_setLocalDisplayName:(id)a3 forFolder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 dataclass];
  [v7 localID];
  if (v8 == (&dword_0 + 1))
  {
    LOBYTE(v19) = 1;
  }

  else
  {
    if (v8 == &dword_10 || v8 == &dword_4)
    {
      v9 = +[ASLocalDBHelper sharedInstance];
      v10 = [(ASDaemonAccount *)self accountID];
      v11 = [(ASDaemonAccount *)self changeTrackingID];
      [v9 calOpenDatabaseForAccountID:v10 clientID:v11];

      v12 = [(ASDaemonAccount *)self accountID];
      v13 = [v9 calDatabaseForAccountID:v12];

      v14 = CalDatabaseCopyCalendarWithUID();
      if (!v14)
      {
        v19 = 0;
LABEL_18:
        v22 = [(ASDaemonAccount *)self accountID];
        [v9 calCloseDatabaseForAccountID:v22 save:v19];

        goto LABEL_19;
      }

      v15 = v14;
      v16 = CalCalendarCopyTitle();
      if (!v16)
      {
        v13 = [v7 displayName];
        if (!v13)
        {
          goto LABEL_9;
        }
      }

      v17 = [v7 displayName];
      v18 = [v16 isEqualToString:v17];

      if (v16)
      {
        if (v18)
        {
LABEL_9:
          CalCalendarSetTitle();
          v19 = 1;
LABEL_17:
          CFRelease(v15);

          goto LABEL_18;
        }
      }

      else
      {

        if (v18)
        {
          goto LABEL_9;
        }
      }

      v19 = 0;
      goto LABEL_17;
    }

    v20 = DALoggingwithCategory();
    v21 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v20, v21))
    {
      v24 = 134217984;
      v25 = v8;
      _os_log_impl(&dword_0, v20, v21, "No support for locally modifying containers of dataclass %lx", &v24, 0xCu);
    }

    LOBYTE(v19) = 0;
  }

LABEL_19:

  return v19;
}

- (void)_pruneFoldersToMonitorOfOrphanedFolders
{
  v3 = [(ASDaemonAccount *)self folderHierarchy];
  v4 = [v3 folderCache];

  v5 = [v4 objectForKeyedSubscript:@"ASFolders"];
  v6 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = *v25;
    do
    {
      v10 = 0;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [*(*(&v24 + 1) + 8 * v10) serverID];
        if (v11)
        {
          [v6 addObject:v11];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  v12 = self;
  objc_sync_enter(v12);
  v13 = [(NSMutableDictionary *)v12->_foldersToMonitorById allKeys];
  v14 = [NSArray arrayWithArray:v13];

  objc_sync_exit(v12);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v16)
  {
    v17 = *v21;
    do
    {
      v18 = 0;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v20 + 1) + 8 * v18);
        if (!v19 || ([v6 containsObject:{*(*(&v20 + 1) + 8 * v18), v20}] & 1) == 0)
        {
          [(ASDaemonAccount *)v12 stopMonitoringFolderWithID:v19, v20];
        }

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v16);
  }
}

- (void)folderSyncTask:(id)a3 completedWithStatus:(int64_t)a4 error:(id)a5 foldersChanged:(id)a6 newSyncKey:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if ([(ASDaemonAccount *)self isGoogleAccount])
  {
    v17 = [v14 domain];
    if ([v17 isEqualToString:ASHTTPConnectionErrorDomain] && objc_msgSend(v14, "code") == &stru_158.reloff + 3)
    {
      v18 = [(ASDaemonAccount *)self backingAccountInfo];
      v19 = [v18 mcBackingPayload];

      if (!v19)
      {
        v20 = DALoggingwithCategory();
        v21 = _CPLog_to_os_log_type[3];
        if (os_log_type_enabled(v20, v21))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v20, v21, "A gmail-as-activesync account received a 403 for a folder sync.  If this is a new device, please change to using a gmail account instead.", buf, 2u);
        }
      }
    }

    else
    {
    }
  }

  v22 = [(ASDaemonAccount *)self consumerForTask:v13];
  ADClientAddValueForScalarKey();
  if (a4 <= 0x21)
  {
    if (((1 << a4) & 0x2000002E0) != 0)
    {
LABEL_16:
      [(ASDaemonAccount *)self _pruneFoldersToMonitorOfOrphanedFolders];
      v27 = [v13 context];
      [v22 folderHierarchyFailedToUpdate:v27 withStatus:a4 andError:v14];

      goto LABEL_17;
    }

    if (((1 << a4) & 0x500) != 0)
    {
      v23 = [(ASDaemonAccount *)self folderHierarchy];
      [v23 blowAwayFolderCache];

      v24 = [v13 context];
      [(ASDaemonAccount *)self syncFolderHierarchyWithConsumer:v22 requireChangedFolders:0 context:v24];

      v25 = 0;
      goto LABEL_24;
    }

    if (a4 == 3)
    {
      v26 = +[NSAssertionHandler currentHandler];
      [v26 handleFailureInMethod:a2 object:self file:@"ASDaemonAccount.m" lineNumber:622 description:{@"We should not get an ObjectAlreadyExists error for anything but a FolderCreate task.  Task was %@", v13}];

      [(ASDaemonAccount *)self _pruneFoldersToMonitorOfOrphanedFolders];
      goto LABEL_17;
    }
  }

  if ((a4 + 1) < 2)
  {
    goto LABEL_16;
  }

  if (a4 != 2)
  {
    v37 = DALoggingwithCategory();
    v38 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v37, v38))
    {
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      *buf = 138412546;
      v42 = v40;
      v43 = 2048;
      v44 = a4;
      _os_log_impl(&dword_0, v37, v38, "%@ Unrecoverable error %ld", buf, 0x16u);
    }

    exit(-1);
  }

  ADClientAddValueForScalarKey();
  if (![(ASDaemonAccount *)self _handleSuccessfulFolderChangeForFolders:v15 previousSyncKey:v16])
  {
    v25 = 1;
LABEL_24:
    [(ASDaemonAccount *)self setSafeToPing:0];
    v30 = self;
    objc_sync_enter(v30);
    v31 = [(NSMutableDictionary *)v30->_foldersToMonitorById allKeys];
    v32 = [NSArray arrayWithArray:v31];

    objc_sync_exit(v30);
    [(ASDaemonAccount *)v30 _stopMonitoringFoldersWithIds:v32];

    if (!v25)
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

  [(ASDaemonAccount *)self _pruneFoldersToMonitorOfOrphanedFolders];
LABEL_25:
  v33 = [v13 context];
  [v22 folderHierarchySuccessfullyUpdated:v33 withNumChangedFolders:{objc_msgSend(v15, "count")}];

  v34 = DALoggingwithCategory();
  v35 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v34, v35))
  {
    v36 = [v15 count];
    *buf = 134217984;
    v42 = v36;
    _os_log_impl(&dword_0, v34, v35, "Folder change count: %lu", buf, 0xCu);
  }

  -[ASDaemonAccount _reportFolderHierarchySyncSuccessWithCount:](self, "_reportFolderHierarchySyncSuccessWithCount:", [v15 count]);
LABEL_17:
  [(ASDaemonAccount *)self removeConsumerForTask:v13];
  v28 = [v13 dataclasses];
  if (v28)
  {
    v29 = +[DALocalDBGateKeeper sharedGateKeeper];
    [v29 relinquishLocksForWaiter:self dataclasses:v28 moreComing:0];
  }
}

- (BOOL)_handleNameCollisionOnAddedFolder:(id)a3 consumer:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 displayName];
  v12 = [v11 rangeOfString:@" " options:4];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL || (v14 = v12, v15 = &v12[v13], &v12[v13] >= [v11 length]) || (objc_msgSend(v11, "substringFromIndex:", v15), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "intValue"), v16, !v17))
  {
    v20 = [v11 stringByAppendingFormat:@" 1"];
  }

  else
  {
    v18 = v17;
    v19 = [v11 substringToIndex:v14];
    v20 = [v19 stringByAppendingFormat:@" %lu", v18 + 1];
  }

  v21 = [(ASDaemonAccount *)self _setLocalDisplayName:v20 forFolder:v8];
  if (v21)
  {
    v22 = [ASFolder alloc];
    v32 = self;
    v23 = v10;
    v24 = v9;
    v25 = [v8 folderType];
    v26 = [v8 serverID];
    v27 = [v8 parentID];
    v28 = [v8 localID];
    v29 = v25;
    v9 = v24;
    v10 = v23;
    v30 = [v22 initWithFolderType:v29 serverID:v26 parentID:v27 displayName:v20 localID:v28];

    [v30 setChangeType:{objc_msgSend(v8, "changeType")}];
    [v30 setRenameOnCollision:{objc_msgSend(v30, "renameOnCollision")}];
    [(ASDaemonAccount *)v32 syncLocallyChangedFolder:v30 consumer:v9 completionBlock:v23];
  }

  return v21;
}

- (void)folderLocalUpdateTask:(id)a3 completedWithStatus:(int64_t)a4 error:(id)a5 updatedFolder:(id)a6 newSyncKey:(id)a7 completionBlock:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v37 = a7;
  v17 = a8;
  v18 = [(ASDaemonAccount *)self consumerForTask:v14];
  if (a4 <= 0x21)
  {
    if (((1 << a4) & 0x200001AD0) != 0)
    {
LABEL_13:
      [(ASDaemonAccount *)self _pruneFoldersToMonitorOfOrphanedFolders];
      goto LABEL_14;
    }

    if (((1 << a4) & 0x520) != 0)
    {
      v19 = [(ASDaemonAccount *)self folderHierarchy];
      [v19 blowAwayFolderCache];

      [(ASDaemonAccount *)self _setFolderHierarchyNeedsUpdate:0];
      v34 = 0;
      v36 = 1;
      goto LABEL_5;
    }

    if (a4 == 3)
    {
      if ([v16 renameOnCollision] && -[ASDaemonAccount _handleNameCollisionOnAddedFolder:consumer:completionBlock:](self, "_handleNameCollisionOnAddedFolder:consumer:completionBlock:", v16, v18, v17))
      {
        [(ASDaemonAccount *)self _pruneFoldersToMonitorOfOrphanedFolders];
        goto LABEL_15;
      }

      goto LABEL_13;
    }
  }

  if ((a4 + 1) < 2)
  {
    goto LABEL_13;
  }

  if (a4 != 2)
  {
    v30 = DALoggingwithCategory();
    v31 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v30, v31))
    {
      v32 = objc_opt_class();
      v33 = NSStringFromClass(v32);
      *buf = 138412546;
      v39 = v33;
      v40 = 2048;
      v41 = a4;
      _os_log_impl(&dword_0, v30, v31, "%@ Unrecoverable error %ld", buf, 0x16u);
    }

    exit(-1);
  }

  v42 = v16;
  v25 = [NSArray arrayWithObjects:&v42 count:1];
  v26 = [(ASDaemonAccount *)self _handleSuccessfulFolderChangeForFolders:v25 previousSyncKey:v37];

  if (v26)
  {
    [(ASDaemonAccount *)self _pruneFoldersToMonitorOfOrphanedFolders];
    LOBYTE(v36) = 0;
    goto LABEL_21;
  }

  v36 = 0;
  v34 = 1;
LABEL_5:
  [(ASDaemonAccount *)self setSafeToPing:0];
  v20 = self;
  objc_sync_enter(v20);
  v21 = [(NSMutableDictionary *)v20->_foldersToMonitorById allKeys];
  v22 = [NSArray arrayWithArray:v21];

  objc_sync_exit(v20);
  [(ASDaemonAccount *)v20 _stopMonitoringFoldersWithIds:v22];

  if (!v34)
  {
    if (!v36)
    {
      goto LABEL_15;
    }

LABEL_14:
    [v18 localChangeForFolder:v16 finishedWithStatus:a4 andError:v15 completionBlock:v17];
    goto LABEL_15;
  }

LABEL_21:
  v27 = DALoggingwithCategory();
  v28 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v27, v28))
  {
    v29 = [(ASDaemonAccount *)self folderHierarchy];
    [v29 folderCache];
    v39 = *buf = 138412290;
    v35 = v39;
    _os_log_impl(&dword_0, v27, v28, "New folder cache due to local update: %@", buf, 0xCu);
  }

  [v18 localChangeForFolder:v16 finishedWithStatus:2 andError:0 completionBlock:v17];
  if (v36)
  {
    goto LABEL_14;
  }

LABEL_15:
  [(ASDaemonAccount *)self removeConsumerForTask:v14];
  v23 = [v14 dataclasses];
  if (v23)
  {
    v24 = +[DALocalDBGateKeeper sharedGateKeeper];
    [v24 relinquishLocksForWaiter:self dataclasses:v23 moreComing:0];
  }
}

- (void)_reallySyncLocallyChangedFolder:(id)a3 consumer:(id)a4 dataclasses:(int64_t)a5 completionBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(ASDaemonAccount *)self folderHierarchy];
  v14 = [v13 foldersTag];
  v15 = [ASFolderLocalUpdateTask taskWithFolder:v10 previousSyncKey:v14 completionBlock:v12];

  v16 = [v10 dataclass];
  if (v16 > 15)
  {
    if (v16 == &dword_10)
    {
      v17 = @"com.apple.reminder";
      goto LABEL_13;
    }

    if (v16 == &stru_20)
    {
      v17 = @"com.apple.mobilenotes";
      goto LABEL_13;
    }
  }

  else
  {
    if (v16 == (&dword_0 + 2))
    {
      v17 = @"com.apple.MobileAddressBook";
      goto LABEL_13;
    }

    if (v16 == &dword_4)
    {
      v17 = @"com.apple.mobilecal";
LABEL_13:
      [v15 setSourceApplicationBundleIdentifier:v17];
      goto LABEL_14;
    }
  }

  v18 = DALoggingwithCategory();
  v19 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v18, v19))
  {
    v21 = 134217984;
    v22 = [v10 dataclass];
    _os_log_impl(&dword_0, v18, v19, "Unrecognized folder dataclass: %ld", &v21, 0xCu);
  }

LABEL_14:
  [v15 setDataclasses:a5];
  [v15 setDelegate:self];
  if (v11)
  {
    [(ASDaemonAccount *)self setConsumer:v11 forTask:v15];
    v20 = [(ASDaemonAccount *)self taskManager];
    [v20 submitExclusiveTask:v15];
  }

  else
  {
    v20 = [(ASDaemonAccount *)self taskManager];
    [v20 submitIndependentTask:v15];
  }
}

- (void)syncLocallyChangedFolder:(id)a3 consumer:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = 2;
  if (![(ASDaemonAccount *)self enabledForDADataclass:2])
  {
    v11 = 0;
  }

  if ([(ASDaemonAccount *)self enabledForDADataclass:4])
  {
    v11 |= 4uLL;
  }

  if ([(ASDaemonAccount *)self enabledForDADataclass:16])
  {
    v11 |= 0x10uLL;
  }

  if ([(ASDaemonAccount *)self enabledForDADataclass:32])
  {
    v11 |= 0x20uLL;
  }

  if (v11)
  {
    v12 = +[DALocalDBGateKeeper sharedGateKeeper];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1DCC8;
    v13[3] = &unk_6D0E0;
    v13[4] = self;
    v14 = v8;
    v15 = v9;
    v17 = v11;
    v16 = v10;
    [v12 registerWaiter:self forDataclassLocks:v11 completionHandler:v13];
  }

  else
  {
    [(ASDaemonAccount *)self _reallySyncLocallyChangedFolder:v8 consumer:v9 dataclasses:0 completionBlock:v10];
  }
}

- (void)_refirePingWithXPCActivityDelay:(int64_t)a3 withGrowthAction:(int)a4
{
  v7 = +[NSThread currentThread];
  v8 = [v7 isMainThread];

  if ((v8 & 1) == 0)
  {
    sub_4828C();
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v9, XPC_ACTIVITY_DELAY, a3);
  xpc_dictionary_set_BOOL(v9, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_string(v9, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(v9, XPC_ACTIVITY_REPEATING, 0);
  v10 = self;
  objc_sync_enter(v10);
  if (!v10->_hasScheduledPingXPCActivity)
  {
    v10->_hasScheduledPingXPCActivity = 1;
    objc_initWeak(&location, v10);
    v11 = dataaccess_get_global_queue();
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1E26C;
    v12[3] = &unk_6D130;
    v13 = v9;
    objc_copyWeak(&v14, &location);
    v15 = a4;
    dispatch_async(v11, v12);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(v10);
}

- (void)setSafeToPing:(BOOL)a3
{
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    *v8 = 0;
    _os_log_impl(&dword_0, v5, v6, "Invoking setSafeToPing", v8, 2u);
  }

  self->_safeToPing = a3;
  [(ASDaemonAccount *)self _cancelPingTask];
  LODWORD(v7) = 2.0;
  [(ASDaemonAccount *)self _refirePingAfterDelay:2 withGrowthAction:v7];
}

- (void)pingTask:(id)a3 completedWithStatus:(int64_t)a4 error:(id)a5 resultFolders:(id)a6 resultMaxFolders:(int)a7 resultHBInterval:(int)a8
{
  v132 = a3;
  v129 = a5;
  v130 = a6;
  v12 = DALoggingwithCategory();
  type = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v12, type))
  {
    WeakRetained = objc_loadWeakRetained(&self->_pingTask);
    *buf = 138412546;
    v160 = v132;
    v161 = 2112;
    v162 = WeakRetained;
    _os_log_impl(&dword_0, v12, type, "ping task is %@, and _pingTask task is %@. They should be the same.", buf, 0x16u);
  }

  v14 = objc_loadWeakRetained(&self->_pingTask);
  v15 = v14 == v132;

  v16 = DALoggingwithCategory();
  v17 = v16;
  if (!v15)
  {
    if (os_log_type_enabled(v16, type))
    {
      *buf = 138412290;
      v160 = v132;
      _os_log_impl(&dword_0, &v17->super, type, "Ignoring response for old ping task %@", buf, 0xCu);
    }

    goto LABEL_191;
  }

  v18 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v16, v18))
  {
    *buf = 134218240;
    v160 = a4;
    v161 = 1024;
    LODWORD(v162) = a8;
    _os_log_impl(&dword_0, &v17->super, v18, "Ping task status %ld, resultHBInterval: %d", buf, 0x12u);
  }

  v128 = v18;

  [(PCConnectionManager *)self->_pcManager stopManager];
  v19 = DALoggingwithCategory();
  if (os_log_type_enabled(v19, v128))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v19, v128, "Setting _pingTask to nil.", buf, 2u);
  }

  objc_storeWeak(&self->_pingTask, 0);
  ADClientAddValueForScalarKey();
  if (a4 <= 11)
  {
    if (a4 <= 0)
    {
      if (a4 == -2)
      {
        v93 = DALoggingwithCategory();
        if (os_log_type_enabled(v93, v128))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v93, v128, "Refiring Ping request because it was canceled due to task manager modal hold.", buf, 2u);
        }

        v51 = 0;
        v48 = 0;
        v73 = 1;
      }

      else
      {
        if (a4 == -1)
        {
          v94 = DALoggingwithCategory();
          if (os_log_type_enabled(v94, v128))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v94, v128, "Not refiring Ping request because it was canceled.", buf, 2u);
          }
        }

        else
        {
          if (a4)
          {
            goto LABEL_117;
          }

          if (![(PCConnectionManager *)self->_pcManager shouldClientScheduleReconnectDueToFailure])
          {
            v51 = 0;
            v48 = 0;
            v49 = 1;
LABEL_141:
            v73 = 1;
            goto LABEL_159;
          }

          [(PCConnectionManager *)self->_pcManager resumeManagerWithAction:5];
        }

        v51 = 0;
        v48 = 0;
        v73 = 0;
      }

      v49 = 2;
      goto LABEL_159;
    }

    if (a4 == 1 || a4 == 5 || a4 == 9)
    {
LABEL_120:
      [(PCConnectionManager *)self->_pcManager resumeManagerWithAction:5];
      v73 = 0;
      v48 = 0;
      v51 = 0;
      v49 = 2;
      goto LABEL_155;
    }

LABEL_117:
    v95 = DALoggingwithCategory();
    v96 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v95, v96))
    {
      *buf = 134217984;
      v160 = a4;
      _os_log_impl(&dword_0, v95, v96, "PingTask: unhandled status of %ld", buf, 0xCu);
    }

    goto LABEL_120;
  }

  if (a4 <= 50)
  {
    if (a4 == 12)
    {
      v74 = DALoggingwithCategory();
      if (os_log_type_enabled(v74, v128))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v74, v128, "Received Ping response requiring folder hierarchy sync.  Gonna update folder hierarchy now", buf, 2u);
      }

      [(ASDaemonAccount *)self setSafeToPing:0];
      [(ASDaemonAccount *)self _setFolderHierarchyNeedsUpdate:0];
      v75 = self;
      objc_sync_enter(v75);
      if (v75->_hierarchyChangeHistory)
      {
        hierarchyChangeHistory = +[NSDate date];
        v77 = [(ASFolderChangedHistory *)v75->_hierarchyChangeHistory startTime];
        [hierarchyChangeHistory timeIntervalSinceDate:v77];
        v79 = v78 > 600.0;

        if (v79)
        {
          v80 = DALoggingwithCategory();
          if (os_log_type_enabled(v80, type))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v80, type, "Refresh ping history for folder hierarchy. Discard old data.", buf, 2u);
          }

          [(ASFolderChangedHistory *)v75->_hierarchyChangeHistory setCount:1];
          [(ASFolderChangedHistory *)v75->_hierarchyChangeHistory setStartTime:hierarchyChangeHistory];
        }

        else
        {
          [(ASFolderChangedHistory *)v75->_hierarchyChangeHistory setCount:[(ASFolderChangedHistory *)v75->_hierarchyChangeHistory count]+ 1];
          v101 = DALoggingwithCategory();
          if (os_log_type_enabled(v101, type))
          {
            v102 = [(ASFolderChangedHistory *)v75->_hierarchyChangeHistory count];
            *buf = 67109120;
            LODWORD(v160) = v102;
            _os_log_impl(&dword_0, v101, type, "Update ping history for folder hierarchy to count %d", buf, 8u);
          }

          if ([(ASFolderChangedHistory *)v75->_hierarchyChangeHistory count]>= 11)
          {
            v103 = DALoggingwithCategory();
            v104 = _CPLog_to_os_log_type[3];
            if (os_log_type_enabled(v103, v104))
            {
              v105 = [(ASFolderChangedHistory *)v75->_hierarchyChangeHistory startTime];
              *buf = 138412290;
              v160 = v105;
              _os_log_impl(&dword_0, v103, v104, "Folder hierarchy has more than 10 changes since %@ in ping history. Adding it to black list. User must manually refresh to get it to push again.", buf, 0xCu);
            }

            v75->_isHierarchyChangeBlackListed = 1;
          }
        }
      }

      else
      {
        v97 = DALoggingwithCategory();
        if (os_log_type_enabled(v97, type))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v97, type, "Create ping history for folder hierarchy.", buf, 2u);
        }

        v98 = [[ASFolderChangedHistory alloc] initWithCount:1];
        hierarchyChangeHistory = v75->_hierarchyChangeHistory;
        v75->_hierarchyChangeHistory = v98;
      }

      objc_sync_exit(v75);
      goto LABEL_139;
    }

    if (a4 != 49)
    {
      if (a4 == 50)
      {
        ADClientAddValueForScalarKey();
        v126 = v130;
        if (!v126 || (v23 = v126, ![v126 count]))
        {
          v23 = objc_opt_new();
          v24 = [v132 folders];
          v25 = [v24 allObjects];

          v147 = 0u;
          v148 = 0u;
          v145 = 0u;
          v146 = 0u;
          v26 = v25;
          v27 = [v26 countByEnumeratingWithState:&v145 objects:v157 count:16];
          if (v27)
          {
            v28 = *v146;
            do
            {
              for (i = 0; i != v27; i = i + 1)
              {
                if (*v146 != v28)
                {
                  objc_enumerationMutation(v26);
                }

                v30 = [*(*(&v145 + 1) + 8 * i) serverID];
                [v23 addObject:v30];
              }

              v27 = [v26 countByEnumeratingWithState:&v145 objects:v157 count:16];
            }

            while (v27);
          }
        }

        v31 = self;
        objc_sync_enter(v31);
        v141 = 0u;
        v142 = 0u;
        v143 = 0u;
        v144 = 0u;
        v32 = v23;
        v33 = [v32 countByEnumeratingWithState:&v141 objects:v156 count:16];
        if (v33)
        {
          v34 = *v142;
          v35 = _CPLog_to_os_log_type[3];
          do
          {
            for (j = 0; j != v33; j = j + 1)
            {
              if (*v142 != v34)
              {
                objc_enumerationMutation(v32);
              }

              v37 = *(*(&v141 + 1) + 8 * j);
              v38 = [(NSMutableDictionary *)v31->_folderChangeHistory objectForKey:v37];
              v39 = v38;
              if (v38)
              {
                [(ASFolderChangedHistory *)v38 setCount:[(ASFolderChangedHistory *)v38 count]+ 1];
                v40 = DALoggingwithCategory();
                if (os_log_type_enabled(v40, type))
                {
                  v41 = [(ASFolderChangedHistory *)v39 count];
                  *buf = 138412546;
                  v160 = v37;
                  v161 = 1024;
                  LODWORD(v162) = v41;
                  _os_log_impl(&dword_0, v40, type, "Update ping history for folder %@. New count is %d.", buf, 0x12u);
                }

                if ([(ASFolderChangedHistory *)v39 count]>= 6)
                {
                  v42 = DALoggingwithCategory();
                  if (os_log_type_enabled(v42, v35))
                  {
                    *buf = 138412290;
                    v160 = v37;
                    _os_log_impl(&dword_0, v42, v35, "Folder %@ has more than 5 changes in ping history, without a successful sync. Adding it to black list. User must manually refresh to get it to push again.", buf, 0xCu);
                  }

                  [(ASDaemonAccount *)v31 addFolderIDToPingHistoryBlacklist:v37];
                }
              }

              else
              {
                v43 = DALoggingwithCategory();
                if (os_log_type_enabled(v43, type))
                {
                  *buf = 138412290;
                  v160 = v37;
                  _os_log_impl(&dword_0, v43, type, "Create ping history for folder %@.", buf, 0xCu);
                }

                v39 = [[ASFolderChangedHistory alloc] initWithCount:1];
                [(NSMutableDictionary *)v31->_folderChangeHistory setObject:v39 forKey:v37];
              }
            }

            v33 = [v32 countByEnumeratingWithState:&v141 objects:v156 count:16];
          }

          while (v33);
        }

        objc_sync_exit(v31);
        v44 = [(ASDaemonAccount *)v31 _foldersToSyncGivenResults:v126];
        if ([v44 count])
        {
          [(NSMutableSet *)v31->_folderIdsWithUnacknowledgedPings addObjectsFromArray:v44];
          [(ASDaemonAccount *)v31 setShouldUseOpportunisticSockets:0];
          v45 = +[DARunLoopRegistry sharedRunLoop];
          v154 = DAChangedFolderIDs;
          v155 = v44;
          v46 = [NSDictionary dictionaryWithObjects:&v155 forKeys:&v154 count:1];
          [(ASDaemonAccount *)v31 _enqueueNotificationWithName:DAAccountFolderContentsChangedNotification sourceRunLoop:v45 userInfo:v46];
        }

        v48 = 0;
        v49 = 2;
        goto LABEL_153;
      }

      goto LABEL_117;
    }

    v81 = self;
    objc_sync_enter(v81);
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    v152 = 0u;
    v82 = v81->_lastPingFolders;
    v83 = [(NSSet *)v82 countByEnumeratingWithState:&v149 objects:v158 count:16];
    if (v83)
    {
      v84 = *v150;
      do
      {
        for (k = 0; k != v83; k = k + 1)
        {
          if (*v150 != v84)
          {
            objc_enumerationMutation(v82);
          }

          [(ASDaemonAccount *)v81 removeFromPingHierarchyAndHistoryBlacklistForFolderID:*(*(&v149 + 1) + 8 * k)];
        }

        v83 = [(NSSet *)v82 countByEnumeratingWithState:&v149 objects:v158 count:16];
      }

      while (v83);
    }

    objc_sync_exit(v81);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, DAAccountFolderUpdatedWithNoChangesNotification, 0, 0, 0);
    v87 = v81;
    objc_sync_enter(v87);
    if (!v87->_noChangeHistory)
    {
      v99 = DALoggingwithCategory();
      if (os_log_type_enabled(v99, type))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v99, type, "Create no change history for no change responses.", buf, 2u);
      }

      v100 = [[ASFolderChangedHistory alloc] initWithCount:1];
      v48 = 0;
      noChangeHistory = v87->_noChangeHistory;
      v87->_noChangeHistory = v100;
      goto LABEL_152;
    }

    noChangeHistory = +[NSDate date];
    v89 = [(ASFolderChangedHistory *)v87->_noChangeHistory startTime];
    [noChangeHistory timeIntervalSinceDate:v89];
    v91 = v90 > 120.0;

    if (v91)
    {
      v92 = DALoggingwithCategory();
      if (os_log_type_enabled(v92, type))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v92, type, "Refresh no change history for no change responses. Discard old data.", buf, 2u);
      }

      [(ASFolderChangedHistory *)v87->_noChangeHistory setCount:1];
      [(ASFolderChangedHistory *)v87->_noChangeHistory setStartTime:noChangeHistory];
    }

    else
    {
      [(ASFolderChangedHistory *)v87->_noChangeHistory setCount:[(ASFolderChangedHistory *)v87->_noChangeHistory count]+ 1];
      v106 = DALoggingwithCategory();
      if (os_log_type_enabled(v106, type))
      {
        v107 = [(ASFolderChangedHistory *)v87->_noChangeHistory count];
        *buf = 67109120;
        LODWORD(v160) = v107;
        _os_log_impl(&dword_0, v106, type, "Update no change ping count to %d", buf, 8u);
      }

      if ([(ASFolderChangedHistory *)v87->_noChangeHistory count]>= 11)
      {
        v108 = DALoggingwithCategory();
        v109 = _CPLog_to_os_log_type[3];
        if (os_log_type_enabled(v108, v109))
        {
          v110 = [(ASFolderChangedHistory *)v87->_noChangeHistory startTime];
          *buf = 138412290;
          v160 = v110;
          _os_log_impl(&dword_0, v108, v109, "Ping request has more than 10 no change responses since %@. Adding it to black list. User must manually refresh to get it to push again.", buf, 0xCu);
        }

        v48 = 0;
        v87->_isNoChangeBlackListed = 1;
        goto LABEL_152;
      }

      if ([(ASFolderChangedHistory *)v87->_noChangeHistory count]>= 6)
      {
        v111 = DALoggingwithCategory();
        if (os_log_type_enabled(v111, v128))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v111, v128, "Force fully specified ping since there were more than 5 ping responses with no changes in last 2 minutes.", buf, 2u);
        }

        v48 = 1;
        goto LABEL_152;
      }
    }

    v48 = 0;
LABEL_152:

    objc_sync_exit(v87);
    v49 = 0;
LABEL_153:
    v73 = 1;
    goto LABEL_154;
  }

  if (a4 <= 52)
  {
    if (a4 != 51)
    {
      v20 = [v132 heartbeat];
      pcManager = self->_pcManager;
      v22 = a8;
      if (v20 >= a8)
      {
        [(PCConnectionManager *)pcManager setMaximumKeepAliveInterval:v22];
      }

      else
      {
        [(PCConnectionManager *)pcManager setMinimumKeepAliveInterval:v22];
      }

LABEL_139:
      v48 = 0;
      v51 = 1;
      goto LABEL_140;
    }

    v50 = DALoggingwithCategory();
    if (os_log_type_enabled(v50, v128))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v50, v128, "Received status 3 (Ping command request omitted required parameters) from server for Ping request.", buf, 2u);
    }

LABEL_66:

    v51 = 0;
    v48 = 1;
LABEL_140:
    v49 = 2;
    goto LABEL_141;
  }

  if (a4 != 53)
  {
    if (a4 == 80)
    {
      v50 = DALoggingwithCategory();
      if (os_log_type_enabled(v50, v128))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v50, v128, "Received status 111 (ServerErrorRetryLater) from server for Ping request.", buf, 2u);
      }

      goto LABEL_66;
    }

    goto LABEL_117;
  }

  v52 = DALoggingwithCategory();
  v53 = _CPLog_to_os_log_type[4];
  if (os_log_type_enabled(v52, v53))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v52, v53, "Trimming folder list for Ping request", buf, 2u);
  }

  v54 = self;
  objc_sync_enter(v54);
  v55 = [(NSMutableDictionary *)v54->_foldersToMonitorById count];
  objc_sync_exit(v54);

  v56 = v55 - a7;
  if (((v55 - a7) & 0x80000000) != 0)
  {
    goto LABEL_139;
  }

  v57 = [(ASDaemonAccount *)v54 inboxFolder];
  v58 = [v57 folderID];

  v59 = [(ASDaemonAccount *)v54 defaultContactsFolder];
  v135 = [v59 folderID];

  v60 = [(ASDaemonAccount *)v54 defaultEventsFolder];
  v133 = [v60 folderID];

  v61 = [(ASDaemonAccount *)v54 defaultToDosFolder];
  v127 = [v61 folderID];

  v62 = [(ASDaemonAccount *)v54 defaultNotesFolder];
  v125 = [v62 folderID];

  obj = v54;
  objc_sync_enter(obj);
  v63 = [(NSMutableDictionary *)v54->_foldersToMonitorById allValues];
  v64 = [v63 copy];

  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  v65 = v64;
  v66 = [v65 countByEnumeratingWithState:&v137 objects:v153 count:16];
  if (v66)
  {
    v67 = *v138;
    while (2)
    {
      for (m = 0; m != v66; m = m + 1)
      {
        if (*v138 != v67)
        {
          objc_enumerationMutation(v65);
        }

        v69 = [*(*(&v137 + 1) + 8 * m) serverID];
        if (([v69 isEqualToString:v58] & 1) == 0 && (objc_msgSend(v69, "isEqualToString:", v135) & 1) == 0 && (objc_msgSend(v69, "isEqualToString:", v133) & 1) == 0 && (objc_msgSend(v69, "isEqualToString:", v127) & 1) == 0 && (objc_msgSend(v69, "isEqualToString:", v125) & 1) == 0)
        {
          [(NSMutableDictionary *)v54->_foldersToMonitorById removeObjectForKey:v69];
          --v56;
        }

        if (!v56)
        {

          v72 = obj;
          objc_sync_exit(obj);
          v73 = 1;
          goto LABEL_124;
        }
      }

      v66 = [v65 countByEnumeratingWithState:&v137 objects:v153 count:16];
      if (v66)
      {
        continue;
      }

      break;
    }

    v56 = 1;
  }

  objc_sync_exit(obj);
  if (v56)
  {
    v70 = DALoggingwithCategory();
    v71 = _CPLog_to_os_log_type[3];
    v72 = v70;
    if (os_log_type_enabled(v70, v71))
    {
      *buf = 67109120;
      LODWORD(v160) = a7;
      _os_log_impl(&dword_0, v72, v71, "Not going to ping because max folder count is %d", buf, 8u);
    }

    v73 = 0;
LABEL_124:
  }

  else
  {
    v73 = 1;
  }

  v48 = 0;
  v49 = 2;
LABEL_154:
  v51 = 1;
LABEL_155:
  if (a4 != 49)
  {
LABEL_159:
    v113 = self;
    objc_sync_enter(v113);
    if (v113->_isNoChangeBlackListed)
    {
      v114 = DALoggingwithCategory();
      if (os_log_type_enabled(v114, v128))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v114, v128, "Remove from ping no change blacklist, after a ping response with status other than DAStatusNoChanges", buf, 2u);
      }

      v113->_isNoChangeBlackListed = 0;
    }

    if (v113->_noChangeHistory)
    {
      v115 = DALoggingwithCategory();
      if (os_log_type_enabled(v115, type))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v115, type, "Clearing ping no change history, after a ping response with status other than DAStatusNoChanges", buf, 2u);
      }

      v116 = v113->_noChangeHistory;
      v113->_noChangeHistory = 0;
    }

    objc_sync_exit(v113);

    if (v48)
    {
      goto LABEL_168;
    }

LABEL_157:
    if (v51)
    {
      v17 = [v132 folders];
      v112 = [v132 heartbeat];
    }

    else
    {
      lastPingHeartBeat = self->_lastPingHeartBeat;
      if (lastPingHeartBeat == [v132 heartbeat])
      {
        v112 = [v132 heartbeat];
      }

      else
      {
        v112 = 0;
      }

      if (self->_lastPingFolders && ([v132 folders], v118 = objc_claimAutoreleasedReturnValue(), v119 = objc_msgSend(v118, "isEqualToSet:", self->_lastPingFolders), v118, v119))
      {
        v17 = [v132 folders];
      }

      else
      {
        v17 = 0;
      }
    }

    goto LABEL_176;
  }

  if ((v48 & 1) == 0)
  {
    goto LABEL_157;
  }

LABEL_168:
  v17 = 0;
  v112 = 0;
LABEL_176:
  if (self->_lastPingFolders != v17)
  {
    v120 = [(NSSet *)v17 copy];
    lastPingFolders = self->_lastPingFolders;
    self->_lastPingFolders = v120;
  }

  self->_lastPingHeartBeat = v112;
  if (v73)
  {
    if (!a4 || a4 == 51 || a4 == 80)
    {
      v122 = DALoggingwithCategory();
      if (os_log_type_enabled(v122, v128))
      {
        *buf = 134217984;
        v160 = a4;
        _os_log_impl(&dword_0, v122, v128, "Reissuing Ping request after 60 second delay with status %ld", buf, 0xCu);
      }

      [(ASDaemonAccount *)self _refirePingWithXPCActivityDelay:60 withGrowthAction:v49];
    }

    else
    {
      LODWORD(v47) = 2.0;
      [(ASDaemonAccount *)self _refirePingAfterDelay:v49 withGrowthAction:v47];
    }
  }

  else if (a4 != -1 && a4 != 53)
  {
    v123 = DALoggingwithCategory();
    if (os_log_type_enabled(v123, v128))
    {
      *buf = 134217984;
      v160 = a4;
      _os_log_impl(&dword_0, v123, v128, "Create an XPC activity to fire the Ping task in case PCConnectionManager does not do it. Status %ld", buf, 0xCu);
    }

    [(ASDaemonAccount *)self _refirePingWithXPCActivityDelay:600 withGrowthAction:v49];
  }

LABEL_191:
}

- (void)_reissuePingFromXPCActivityWithGrowthAction:(int)a3
{
  v5 = dataaccess_get_global_queue();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1FD24;
  v6[3] = &unk_6D158;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

- (void)reissuePingFromTimer:(id)a3
{
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  WeakRetained = objc_loadWeakRetained(&v6->_pingTask);

  if (WeakRetained)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:v6 file:@"ASDaemonAccount.m" lineNumber:1362 description:@"this timer shouldn't fire if we've got a ping task."];
  }

  objc_storeWeak(&v6->_delayedPingTimer, 0);
  v8 = DALoggingwithCategory();
  v9 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v8, v9))
  {
    v13 = 138412290;
    v14 = [(ASDaemonAccount *)v6 _pingPowerAssertionIdentifier];
    _os_log_impl(&dword_0, v8, v9, "Release power assertion %@", &v13, 0xCu);
  }

  [(ASDaemonAccount *)v6 _pingPowerAssertionIdentifier];
  CPSetPowerAssertionWithIdentifier();
  if (v6->_hasScheduledPingXPCActivity)
  {
    v6->_hasScheduledPingXPCActivity = 0;
    v10 = dataaccess_get_global_queue();
    dispatch_async(v10, &stru_6D178);
  }

  v11 = [v5 userInfo];
  -[ASDaemonAccount _reissuePingTaskWithGrowthAction:](v6, "_reissuePingTaskWithGrowthAction:", [v11 intValue]);

  objc_sync_exit(v6);
}

- (void)_pollFolders
{
  v3 = objc_opt_new();
  if ([(ASDaemonAccount *)self enabledForDADataclass:2])
  {
    v4 = [(ASDaemonAccount *)self contactsFolders];
    if (v4)
    {
      [v3 addObjectsFromArray:v4];
    }
  }

  if ([(ASDaemonAccount *)self enabledForDADataclass:4])
  {
    v5 = [(ASDaemonAccount *)self eventsFolders];
    if (v5)
    {
      [v3 addObjectsFromArray:v5];
    }
  }

  if ([(ASDaemonAccount *)self enabledForDADataclass:16])
  {
    v6 = [(ASDaemonAccount *)self toDosFolders];
    if (v6)
    {
      [v3 addObjectsFromArray:v6];
    }
  }

  if ([(ASDaemonAccount *)self enabledForDADataclass:32])
  {
    v7 = [(ASDaemonAccount *)self notesFolders];
    if (v7)
    {
      [v3 addObjectsFromArray:v7];
    }
  }

  if (self->_foldersToMonitorById)
  {
    v8 = self;
    objc_sync_enter(v8);
    v9 = [(NSMutableDictionary *)self->_foldersToMonitorById allValues];
    v10 = [NSArray arrayWithArray:v9];

    objc_sync_exit(v8);
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v12)
    {
      v13 = *v22;
      do
      {
        v14 = 0;
        do
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v11);
          }

          if ([*(*(&v21 + 1) + 8 * v14) dataclass] != &dword_0 + 1)
          {
            v15 = CreateDAFolderForASFolder();
            [v3 addObject:v15];
          }

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v12);
    }
  }

  v16 = [v3 allObjects];
  v17 = [v16 valueForKey:@"folderID"];

  v18 = [(ASDaemonAccount *)self _foldersToSyncGivenResults:v17];
  if ([v18 count])
  {
    [(NSMutableSet *)self->_folderIdsWithUnacknowledgedPings addObjectsFromArray:v18];
    v19 = +[DARunLoopRegistry sharedRunLoop];
    v25 = DAChangedFolderIDs;
    v26 = v18;
    v20 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    [(ASDaemonAccount *)self _enqueueNotificationWithName:DAAccountFolderContentsChangedNotification sourceRunLoop:v19 userInfo:v20];
  }
}

- (void)_enqueueNotificationWithName:(id)a3 sourceRunLoop:(id)a4 userInfo:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [v10 currentMode];
  v12 = v11;
  v13 = NSDefaultRunLoopMode;
  if (v11)
  {
    v13 = v11;
  }

  v14 = v13;

  v15 = [v10 getCFRunLoop];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_20444;
  v19[3] = &unk_6D1A0;
  v20 = v8;
  v21 = self;
  v22 = v9;
  v23 = v14;
  v16 = v14;
  v17 = v9;
  v18 = v8;
  CFRunLoopPerformBlock(v15, v16, v19);
}

- (void)connectionManager:(id)a3 handleEvent:(int)a4
{
  v6 = a3;
  v7 = DALoggingwithCategory();
  v8 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v7, v8))
  {
    v37 = 136315650;
    v38 = "[ASDaemonAccount connectionManager:handleEvent:]";
    v39 = 2112;
    v40 = v6;
    v41 = 1024;
    v42 = a4;
    _os_log_impl(&dword_0, v7, v8, "%s invoked: mgr: %@, reason:%d", &v37, 0x1Cu);
  }

  if (a4 <= 4)
  {
    if (a4 != 2)
    {
      if (a4 != 3)
      {
        if (a4 == 4)
        {
          v9 = DALoggingwithCategory();
          v10 = _CPLog_to_os_log_type[7];
          if (os_log_type_enabled(v9, v10))
          {
            v37 = 136315394;
            v38 = "[ASDaemonAccount connectionManager:handleEvent:]";
            v39 = 1024;
            LODWORD(v40) = 4;
            _os_log_impl(&dword_0, v9, v10, "%s cancelling ping task and reissuing with maintain, PC event was %d", &v37, 0x12u);
          }

          [(ASDaemonAccount *)self _cancelPingTask];
          LODWORD(v11) = 0.5;
          v12 = self;
          v13 = 6;
LABEL_47:
          [(ASDaemonAccount *)v12 _refirePingAfterDelay:v13 withGrowthAction:v11];
          goto LABEL_48;
        }

        goto LABEL_22;
      }

      v25 = [v6 currentStyle];
      switch(v25)
      {
        case 0u:
          v29 = DALoggingwithCategory();
          v30 = _CPLog_to_os_log_type[7];
          if (os_log_type_enabled(v29, v30))
          {
            v37 = 136315394;
            v38 = "[ASDaemonAccount connectionManager:handleEvent:]";
            v39 = 1024;
            LODWORD(v40) = 3;
            _os_log_impl(&dword_0, v29, v30, "%s cancelling ping task and reissuing with maintain, PC event was %d", &v37, 0x12u);
          }

          [(ASDaemonAccount *)self _cancelPingTask];
          LODWORD(v31) = 0.5;
          [(ASDaemonAccount *)self _refirePingAfterDelay:2 withGrowthAction:v31];
          break;
        case 1u:
          [(ASDaemonAccount *)self scheduleIdentifier];
          if (PCSettingsGetPollInterval())
          {
            v28 = _CPLog_to_os_log_type[7];
          }

          else
          {
            v32 = DALoggingwithCategory();
            v28 = _CPLog_to_os_log_type[7];
            if (os_log_type_enabled(v32, v28))
            {
              v33 = [(ASDaemonAccount *)self accountDescription];
              v37 = 138412290;
              v38 = v33;
              _os_log_impl(&dword_0, v32, v28, "Start fetching in automatically mode for account %@. Set automatic fetching state", &v37, 0xCu);
            }

            [(ASDaemonAccount *)self saveFetchingAutomaticallyState:1];
          }

          v34 = DALoggingwithCategory();
          if (os_log_type_enabled(v34, v28))
          {
            v37 = 136315138;
            v38 = "[ASDaemonAccount connectionManager:handleEvent:]";
            _os_log_impl(&dword_0, v34, v28, "%s cancelling ping task, syncing all folders, and maintaining heartbeat, as I'm polling", &v37, 0xCu);
          }

          [(ASDaemonAccount *)self _cancelPingTask];
          [(ASDaemonAccount *)self _pollFolders];
          goto LABEL_43;
        case 2u:
          v26 = DALoggingwithCategory();
          v27 = _CPLog_to_os_log_type[4];
          if (os_log_type_enabled(v26, v27))
          {
            LOWORD(v37) = 0;
            _os_log_impl(&dword_0, v26, v27, "Told to poll, but we're in manual PC mode.", &v37, 2u);
          }

LABEL_43:
          [(PCConnectionManager *)self->_pcManager resumeManagerWithAction:4];
          break;
      }
    }

    v35 = DALoggingwithCategory();
    v36 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v35, v36))
    {
      v37 = 136315138;
      v38 = "[ASDaemonAccount connectionManager:handleEvent:]";
      _os_log_impl(&dword_0, v35, v36, "%s cancelling ping task and reissuing with shrink", &v37, 0xCu);
    }

    [(ASDaemonAccount *)self _cancelPingTask];
    LODWORD(v11) = 0.5;
    v12 = self;
    v13 = 1;
    goto LABEL_47;
  }

  if ((a4 - 7) < 2)
  {
    v14 = DALoggingwithCategory();
    v15 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v14, v15))
    {
      v37 = 136315394;
      v38 = "[ASDaemonAccount connectionManager:handleEvent:]";
      v39 = 1024;
      LODWORD(v40) = a4;
      _os_log_impl(&dword_0, v14, v15, "%s cancelling ping task and reissuing with maintain, PC event was %d", &v37, 0x12u);
    }

    [(ASDaemonAccount *)self _cancelPingTask];
    LODWORD(v11) = 0.5;
    v12 = self;
    v13 = 2;
    goto LABEL_47;
  }

  if (a4 == 5)
  {
    v16 = DALoggingwithCategory();
    v17 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v16, v17))
    {
      v18 = [v6 currentStyle];
      v37 = 136315394;
      v38 = "[ASDaemonAccount connectionManager:handleEvent:]";
      v39 = 1024;
      LODWORD(v40) = v18;
      _os_log_impl(&dword_0, v16, v17, "%s style changed to %d.", &v37, 0x12u);
    }

    [(ASDaemonAccount *)self _cancelPingTask];
    LODWORD(v19) = 0.5;
    [(ASDaemonAccount *)self _refirePingAfterDelay:2 withGrowthAction:v19];
    if ([v6 currentStyle] == 1)
    {
      v20 = +[NSUserDefaults standardUserDefaults];
      dword_74988 = [v20 integerForKey:@"ForcedHBI"];

      if (dword_74988)
      {
        [(PCConnectionManager *)self->_pcManager setMinimumKeepAliveInterval:dword_74988];
        [(PCConnectionManager *)self->_pcManager setMaximumKeepAliveInterval:dword_74988];
      }
    }

    v21 = [v6 currentStyle];
    v22 = +[ESWifiAssertionManager sharedWifiAssertionManager];
    v23 = v22;
    if (v21)
    {
      [v22 releaseWifiAssertion];
    }

    else
    {
      [v22 retainWifiAssertion];
    }

    goto LABEL_31;
  }

LABEL_22:
  v23 = DALoggingwithCategory();
  v24 = _CPLog_to_os_log_type[4];
  if (os_log_type_enabled(v23, v24))
  {
    v37 = 136315394;
    v38 = "[ASDaemonAccount connectionManager:handleEvent:]";
    v39 = 1024;
    LODWORD(v40) = a4;
    _os_log_impl(&dword_0, v23, v24, "%s pcManager callback out to lunch, event is: %d", &v37, 0x12u);
  }

LABEL_31:

LABEL_48:
}

- (BOOL)shouldCancelTaskDueToOnPowerFetchMode
{
  v3 = [(ASDaemonAccount *)self getFetchingAutomaticallyState];
  if (v3)
  {
    if (([(ASDaemonAccount *)self wasUserInitiated]& 1) != 0)
    {
      goto LABEL_5;
    }

    [(ASDaemonAccount *)self scheduleIdentifier];
    if (PCSettingsGetStyle() != 1)
    {
      goto LABEL_5;
    }

    [(ASDaemonAccount *)self scheduleIdentifier];
    if (PCSettingsGetPollInterval())
    {
      goto LABEL_5;
    }

    v4 = +[MFNetworkController sharedInstance];
    v5 = [v4 isFatPipe];

    if (v5)
    {
      v6 = +[MFPowerController sharedInstance];
      v7 = [v6 isPluggedIn];

      if (v7)
      {
LABEL_5:
        LOBYTE(v3) = 0;
        return v3;
      }

      v8 = DALoggingwithCategory();
      v9 = _CPLog_to_os_log_type[6];
      if (!os_log_type_enabled(v8, v9))
      {
        goto LABEL_14;
      }

      v13 = 0;
      v10 = "Canceling task because conditions for on-power mode no longer exist (charging)";
      v11 = &v13;
    }

    else
    {
      v8 = DALoggingwithCategory();
      v9 = _CPLog_to_os_log_type[6];
      if (!os_log_type_enabled(v8, v9))
      {
LABEL_14:

        LOBYTE(v3) = 1;
        return v3;
      }

      *buf = 0;
      v10 = "Canceling task because conditions for on-power mode no longer exist (wi-fi)";
      v11 = buf;
    }

    _os_log_impl(&dword_0, v8, v9, v10, v11, 2u);
    goto LABEL_14;
  }

  return v3;
}

- (void)_reissuePingTaskWithGrowthAction:(int)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_pingTask);

  if (WeakRetained)
  {
    sub_48328();
  }

  v4 = DALoggingwithCategory();
  v5 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v4, v5))
  {
    v6 = objc_loadWeakRetained(&self->_pingTask);
    *buf = 138412290;
    v54 = v6;
    _os_log_impl(&dword_0, v4, v5, "_pingTask is %@. It should be nil.", buf, 0xCu);
  }

  pcManager = self->_pcManager;
  if (!pcManager || ![(PCConnectionManager *)pcManager currentStyle])
  {
    if (self->_isHierarchyChangeBlackListed)
    {
      v9 = DALoggingwithCategory();
      if (os_log_type_enabled(v9, v5))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v9, v5, "Not going to ping because server couldn't update folder hierarchy", buf, 2u);
      }

LABEL_13:

      return;
    }

    if (self->_isNoChangeBlackListed)
    {
      v9 = DALoggingwithCategory();
      if (os_log_type_enabled(v9, v5))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v9, v5, "Not going to ping because server is rapidly returning no change responses", buf, 2u);
      }

      goto LABEL_13;
    }

    v47 = +[NSMutableSet set];
    v10 = self;
    objc_sync_enter(v10);
    v11 = [(NSMutableDictionary *)v10->_foldersToMonitorById allValues];
    v12 = [NSArray arrayWithArray:v11];

    objc_sync_exit(v10);
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v14)
    {
      v15 = *v49;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v49 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v48 + 1) + 8 * i);
          pingBlacklistFolderIds = v10->_pingBlacklistFolderIds;
          v19 = [v17 serverID];
          LODWORD(pingBlacklistFolderIds) = [(NSMutableSet *)pingBlacklistFolderIds containsObject:v19];

          if (pingBlacklistFolderIds)
          {
            v20 = DALoggingwithCategory();
            if (os_log_type_enabled(v20, v5))
            {
              v21 = [v17 serverID];
              *buf = 138412290;
              v54 = v21;
              _os_log_impl(&dword_0, v20, v5, "Not including folder %@ to ping task because it is black listed", buf, 0xCu);
            }

LABEL_40:

            continue;
          }

          pingHistoryBlacklistFolderIds = v10->_pingHistoryBlacklistFolderIds;
          v23 = [v17 serverID];
          LODWORD(pingHistoryBlacklistFolderIds) = [(NSMutableSet *)pingHistoryBlacklistFolderIds containsObject:v23];

          if (pingHistoryBlacklistFolderIds)
          {
            v20 = DALoggingwithCategory();
            if (os_log_type_enabled(v20, v5))
            {
              v24 = [v17 serverID];
              *buf = 138412290;
              v54 = v24;
              _os_log_impl(&dword_0, v20, v5, "Not including folder %@ to ping task because it is history black listed", buf, 0xCu);
            }

            goto LABEL_40;
          }

          folderIdsWithUnacknowledgedPings = v10->_folderIdsWithUnacknowledgedPings;
          v26 = [v17 serverID];
          LODWORD(folderIdsWithUnacknowledgedPings) = [(NSMutableSet *)folderIdsWithUnacknowledgedPings containsObject:v26];

          if (folderIdsWithUnacknowledgedPings)
          {
            v20 = DALoggingwithCategory();
            if (os_log_type_enabled(v20, v5))
            {
              v27 = [v17 serverID];
              *buf = 138412290;
              v54 = v27;
              _os_log_impl(&dword_0, v20, v5, "Not including folder %@ to ping task because it is with unacknowledged ping", buf, 0xCu);
            }

            goto LABEL_40;
          }

          if (-[ASDaemonAccount reminderAccountMissing](v10, "reminderAccountMissing") && ([v17 folderType] == 7 || objc_msgSend(v17, "folderType") == 15))
          {
            v20 = DALoggingwithCategory();
            if (os_log_type_enabled(v20, v5))
            {
              v28 = [v17 serverID];
              *buf = 138412290;
              v54 = v28;
              _os_log_impl(&dword_0, v20, v5, "Not including Reminder folder %@ to ping task because REMAccount is not ready yet", buf, 0xCu);
            }

            goto LABEL_40;
          }

          v29 = DALoggingwithCategory();
          if (os_log_type_enabled(v29, v5))
          {
            v30 = [v17 serverID];
            *buf = 138412290;
            v54 = v30;
            _os_log_impl(&dword_0, v29, v5, "Adding folder %@ to ping task", buf, 0xCu);
          }

          [v47 addObject:v17];
        }

        v14 = [v13 countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v14);
    }

    if (![v47 count] || !v10->_safeToPing || -[NSCountedSet count](v10->_busyFolderIds, "count"))
    {
LABEL_64:

      return;
    }

    [(PCConnectionManager *)self->_pcManager resumeManagerWithAction:a3];
    v31 = self->_pcManager;
    if (v31)
    {
      [(PCConnectionManager *)v31 currentKeepAliveInterval];
      v33 = v32;
      if (v33 > 119)
      {
LABEL_56:
        v36 = +[NSUserDefaults standardUserDefaults];
        if (v33 != [v36 integerForKey:@"LastGoodPingHeartBeat"])
        {
          [v36 setInteger:v33 forKey:@"LastGoodPingHeartBeat"];
          if (areDADiagnosticsEnabled())
          {
            [v36 synchronize];
          }
        }

        v37 = DALoggingwithCategory();
        if (os_log_type_enabled(v37, v5))
        {
          v38 = [v47 count];
          *buf = 134217984;
          v54 = v38;
          _os_log_impl(&dword_0, v37, v5, "Creating _pingTask with %lu ping folders", buf, 0xCu);
        }

        v39 = [[ASPingTask alloc] initWithHeartbeat:v33 folders:v47 oldHeartbeat:v10->_lastPingHeartBeat oldFolders:v10->_lastPingFolders];
        v40 = objc_storeWeak(&self->_pingTask, v39);
        [v39 setDelegate:v10];

        v41 = DALoggingwithCategory();
        v42 = _CPLog_to_os_log_type[7];
        if (os_log_type_enabled(v41, v42))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v41, v42, "ping issued", buf, 2u);
        }

        [(ASDaemonAccount *)v10 setShouldUseOpportunisticSockets:0];
        v43 = [(ASDaemonAccount *)v10 taskManager];
        v44 = objc_loadWeakRetained(&self->_pingTask);
        [v43 submitIndependentTask:v44];

        goto LABEL_64;
      }
    }

    else
    {
      v33 = 0;
    }

    v34 = DALoggingwithCategory();
    v35 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v34, v35))
    {
      *buf = 67109120;
      LODWORD(v54) = v33;
      _os_log_impl(&dword_0, v34, v35, "PHMGetCurrentHeartbeatInterval returned %d, No Ping for you", buf, 8u);
    }

    goto LABEL_56;
  }

  v8 = DALoggingwithCategory();
  if (os_log_type_enabled(v8, v5))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v8, v5, "Asked to ping, but we're not currently pushing.  Not going to ping", buf, 2u);
  }

  [(PCConnectionManager *)self->_pcManager resumeManagerWithAction:4];
}

- (void)monitorFolder:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = sub_1B010(v5->_foldersToMonitorById);
  objc_sync_exit(v5);

  v7 = DALoggingwithCategory();
  v8 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v7, v8))
  {
    v9 = [v4 conciseDescription];
    busyFolderIds = v5->_busyFolderIds;
    v17 = 138412802;
    v18 = v9;
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = busyFolderIds;
    _os_log_impl(&dword_0, v7, v8, "monitoring folder %@, _foldersToMonitorById = %@, _busyFolderIds = %@", &v17, 0x20u);
  }

  v11 = v5;
  objc_sync_enter(v11);
  foldersToMonitorById = v5->_foldersToMonitorById;
  if (!foldersToMonitorById)
  {
    v13 = objc_opt_new();
    v14 = v5->_foldersToMonitorById;
    v5->_foldersToMonitorById = v13;

    foldersToMonitorById = v5->_foldersToMonitorById;
  }

  v15 = [v4 serverID];
  [(NSMutableDictionary *)foldersToMonitorById setObject:v4 forKeyedSubscript:v15];

  objc_sync_exit(v11);
  [(ASDaemonAccount *)v11 _cancelPingTask];
  LODWORD(v16) = 2.0;
  [(ASDaemonAccount *)v11 _refirePingAfterDelay:2 withGrowthAction:v16];
}

- (void)stopMonitoringFolderWithID:(id)a3
{
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    v7 = [(ASDaemonAccount *)self folderHierarchy];
    v8 = [v7 folderForID:v4];
    v11 = 138412546;
    v12 = v4;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_0, v5, v6, "unmonitoring folder %@ - %@", &v11, 0x16u);
  }

  v9 = self;
  objc_sync_enter(v9);
  [(NSMutableDictionary *)v9->_foldersToMonitorById removeObjectForKey:v4];
  [(NSMutableSet *)v9->_folderIdsWithUnacknowledgedPings removeObject:v4];
  objc_sync_exit(v9);

  [(ASDaemonAccount *)v9 _cancelPingTask];
  if (!v9->_isTearingDown)
  {
    LODWORD(v10) = 0.5;
    [(ASDaemonAccount *)v9 _refirePingAfterDelay:2 withGrowthAction:v10];
  }
}

- (BOOL)monitorFoldersWithIDs:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v12 = [(ASDaemonAccount *)self folderHierarchy];
        v13 = [v12 folderForID:v11];

        if (!v13)
        {
          v20 = DALoggingwithCategory();
          v21 = _CPLog_to_os_log_type[3];
          if (os_log_type_enabled(v20, _CPLog_to_os_log_type[3]))
          {
            v22 = [(ASDaemonAccount *)self folderHierarchy];
            *buf = 138412546;
            v34 = v11;
            v35 = 2112;
            v36 = v22;
            _os_log_impl(&dword_0, v20, v21, "Can't monitor folder with id %@, I don't know about that one.  Folders %@", buf, 0x16u);
          }

          v19 = 0;
          v14 = v6;
          goto LABEL_20;
        }

        [v5 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v28 objects:v37 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v5;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(ASDaemonAccount *)self monitorFolder:*(*(&v24 + 1) + 8 * j), v24];
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v16);
  }

  v19 = 1;
LABEL_20:

  return v19;
}

- (void)_stopMonitoringFoldersWithIds:(id)a3
{
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(ASDaemonAccount *)self stopMonitoringFolderWithID:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)stopMonitoringFoldersWithIDs:(id)a3
{
  v8 = a3;
  if ([v8 count])
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = [v8 objectAtIndexedSubscript:v4];
      [(ASDaemonAccount *)self stopMonitoringFolderWithID:v6];

      v4 = v5;
    }

    while ([v8 count] > v5++);
  }
}

- (void)suspendMonitoringFoldersWithIDs:(id)a3
{
  v19 = a3;
  if ([v19 count])
  {
    if (!self->_busyFolderIds)
    {
      v4 = objc_opt_new();
      busyFolderIds = self->_busyFolderIds;
      self->_busyFolderIds = v4;
    }

    v6 = self;
    objc_sync_enter(v6);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = v19;
    v7 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v7)
    {
      v22 = self;
      v8 = 0;
      v9 = *v24;
      v10 = _CPLog_to_os_log_type[6];
      type = _CPLog_to_os_log_type[4];
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          v13 = [(ASDaemonAccount *)v6 folderHierarchy];
          v14 = [v13 folderForID:v12];

          if (v14)
          {
            v15 = DALoggingwithCategory();
            if (os_log_type_enabled(v15, v10))
            {
              v16 = [v14 conciseDescription];
              *buf = 138412290;
              v28 = v16;
              _os_log_impl(&dword_0, v15, v10, "marking folder as busy: %@", buf, 0xCu);
            }

            [(NSCountedSet *)v22->_busyFolderIds addObject:v12];
            v8 = 1;
          }

          else
          {
            v17 = DALoggingwithCategory();
            if (os_log_type_enabled(v17, type))
            {
              *buf = 136315394;
              v28 = "[ASDaemonAccount suspendMonitoringFoldersWithIDs:]";
              v29 = 2112;
              v30 = v12;
              _os_log_impl(&dword_0, v17, type, "%s: Warning, unable to find folder for id %@", buf, 0x16u);
            }
          }
        }

        v7 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v7);

      objc_sync_exit(v6);
      if (v8)
      {
        [(ASDaemonAccount *)v6 _cancelPingTask];
        LODWORD(v18) = 2.0;
        [(ASDaemonAccount *)v6 _refirePingAfterDelay:2 withGrowthAction:v18];
      }
    }

    else
    {

      objc_sync_exit(v6);
    }
  }
}

- (void)resumeMonitoringFolderID:(id)a3
{
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [(NSCountedSet *)self->_busyFolderIds allObjects];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (!v6)
  {

    [(NSMutableSet *)self->_folderIdsWithUnacknowledgedPings removeObject:v4];
LABEL_15:
    v15 = DALoggingwithCategory();
    v16 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v15, v16))
    {
      busyFolderIds = self->_busyFolderIds;
      *buf = 136315650;
      v25 = "[ASDaemonAccount resumeMonitoringFolderID:]";
      v26 = 2112;
      v27 = v4;
      v28 = 2112;
      v29 = busyFolderIds;
      _os_log_impl(&dword_0, v15, v16, "%s: warning, unable to find busy folder for id %@.  _busyFolderIds is (%@)", buf, 0x20u);
    }

    goto LABEL_18;
  }

  v8 = v6;
  v9 = 0;
  v10 = *v21;
  v11 = _CPLog_to_os_log_type[6];
  *&v7 = 138412546;
  v19 = v7;
  do
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v21 != v10)
      {
        objc_enumerationMutation(v5);
      }

      if ([*(*(&v20 + 1) + 8 * i) isEqualToString:{v4, v19}])
      {
        v13 = DALoggingwithCategory();
        if (os_log_type_enabled(v13, v11))
        {
          v14 = self->_busyFolderIds;
          *buf = v19;
          v25 = v4;
          v26 = 2112;
          v27 = v14;
          _os_log_impl(&dword_0, v13, v11, "marking folder with id %@ as not busy, _busyFolderIds (%@)", buf, 0x16u);
        }

        [(NSCountedSet *)self->_busyFolderIds removeObject:v4];
        v9 = 1;
      }
    }

    v8 = [v5 countByEnumeratingWithState:&v20 objects:v30 count:16];
  }

  while (v8);

  [(NSMutableSet *)self->_folderIdsWithUnacknowledgedPings removeObject:v4];
  if ((v9 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  [(ASDaemonAccount *)self _cancelPingTask];
  LODWORD(v18) = 2.0;
  [(ASDaemonAccount *)self _refirePingAfterDelay:2 withGrowthAction:v18];
}

- (void)resumeMonitoringFoldersWithIDs:(id)a3
{
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(ASDaemonAccount *)self resumeMonitoringFolderID:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)setFolderIdsThatExternalClientsCareAboutAdded:(id)a3 deleted:(id)a4 foldersTag:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = DALoggingwithCategory();
  v12 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v11, v12))
  {
    *buf = 138412802;
    v39 = v8;
    v40 = 2112;
    v41 = v9;
    v42 = 2112;
    v43 = v10;
    _os_log_impl(&dword_0, v11, v12, "Daemon setting folder ids to be monitored added:%@\ndeleted:%@\ntag:%@", buf, 0x20u);
  }

  v13 = [(ASDaemonAccount *)self foldersTag];
  v14 = [v10 isEqualToString:v13];

  if (v14)
  {
    v15 = [(ASDaemonAccount *)self folderHierarchy];
    v16 = [v15 folderIdsThatExternalClientsCareAbout];
    v17 = [v16 mutableCopy];

    if (v8 && !v17)
    {
      v17 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v8, "count")}];
    }

    if (v9)
    {
      [v17 minusSet:v9];
    }

    if (v8)
    {
      v31 = v10;
      v32 = v9;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v18 = v8;
      v19 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v34;
        while (2)
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v34 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v33 + 1) + 8 * i);
            v24 = [v15 folderForID:v23, v31, v32, v33];

            if (!v24)
            {
              v28 = DALoggingwithCategory();
              v29 = _CPLog_to_os_log_type[3];
              if (os_log_type_enabled(v28, v29))
              {
                *buf = 138412290;
                v39 = v23;
                _os_log_impl(&dword_0, v28, v29, "Trying to set folderIdThatExternalClientsCareAbout for folder we don't know about. ID = %@", buf, 0xCu);
              }

              v25 = 0;
              v10 = v31;
              v9 = v32;
              goto LABEL_26;
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v33 objects:v37 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }
      }

      [v17 unionSet:v18];
      v10 = v31;
      v9 = v32;
    }

    v18 = [(ASDaemonAccount *)self folderHierarchy:v31];
    [v18 setFolderIdsThatExternalClientsCareAbout:v17];
    v25 = 1;
LABEL_26:
  }

  else
  {
    v15 = DALoggingwithCategory();
    v26 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v15, v26))
    {
      v27 = [(ASDaemonAccount *)self foldersTag];
      *buf = 138412546;
      v39 = v10;
      v40 = 2112;
      v41 = v27;
      _os_log_impl(&dword_0, v15, v26, "Dropping request to add folder that external clients care about.  Client's folder tag (%@) doesn't match daemon's: (%@)", buf, 0x16u);
    }

    v25 = 0;
  }

  return v25;
}

- (BOOL)setFolderIdsForPersistentPushAdded:(id)a3 deleted:(id)a4 clientID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = DALoggingwithCategory();
  v12 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v11, v12))
  {
    *buf = 138412546;
    v35 = v8;
    v36 = 2112;
    v37 = v9;
    _os_log_impl(&dword_0, v11, v12, "Daemon setting folder ids to be persistently monitored added:%@\ndeleted:%@", buf, 0x16u);
  }

  v13 = [(ASDaemonAccount *)self folderHierarchy];
  v14 = [v13 folderIdsForPersistentPushForClientID:v10];
  v15 = [v14 mutableCopy];

  if (v8 && !v15)
  {
    v15 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v8, "count")}];
  }

  if (v9)
  {
    [v15 minusSet:v9];
  }

  if (v8)
  {
    v27 = self;
    v28 = v10;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v16 = v8;
    v17 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v30;
      while (2)
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v30 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v29 + 1) + 8 * i);
          v22 = [v13 folderForID:{v21, v27}];

          if (!v22)
          {
            v24 = DALoggingwithCategory();
            v25 = _CPLog_to_os_log_type[3];
            if (os_log_type_enabled(v24, v25))
            {
              *buf = 138412290;
              v35 = v21;
              _os_log_impl(&dword_0, v24, v25, "Trying to set folderIdsForPersistentPush for folder we don't know about. ID = %@", buf, 0xCu);
            }

            v23 = 0;
            v10 = v28;
            goto LABEL_22;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    [v15 unionSet:v16];
    self = v27;
    v10 = v28;
  }

  v16 = [(ASDaemonAccount *)self folderHierarchy];
  [v16 setFolderIdsForPersistentPush:v15 clientID:v10];
  v23 = 1;
LABEL_22:

  return v23;
}

- (BOOL)clearFolderIdsForPersistentPushWithClientID:(id)a3
{
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    *v12 = 0;
    _os_log_impl(&dword_0, v5, v6, "Daemon clearing folder ids to be persistently monitored", v12, 2u);
  }

  v7 = [(ASDaemonAccount *)self folderHierarchy];
  v8 = [v7 folderIdsForPersistentPushForClientID:v4];
  v9 = [v8 mutableCopy];

  if (v9)
  {
    v10 = [(ASDaemonAccount *)self folderHierarchy];
    [v10 setFolderIdsForPersistentPush:0 clientID:v4];
  }

  return 1;
}

- (void)sendMailTask:(id)a3 completedWithStatus:(int64_t)a4 error:(id)a5
{
  v14 = a3;
  v8 = a5;
  v9 = [v14 context];
  v10 = [v9 eventUID];
  v11 = [v9 isMyInvite];
  v12 = [(ASDaemonAccount *)self consumerForTask:v14];
  v13 = v12;
  if (a4 == 2)
  {
    [v12 messageDidSendWithContext:v9];
  }

  else
  {
    if (!((v10 == 0) | v11 & 1))
    {
      [(NSMutableSet *)self->_invitationActionsInFlight removeObject:v10];
    }

    [v13 actionFailed:a4 forTask:v14 error:v8];
  }

  [(ASDaemonAccount *)self removeConsumerForTask:v14];
}

- (id)_ASSyncTaskAndMeetingResponseCommandsFromDAEventActions:(id)a3 meetingResponseActions:(id)a4 emailEvents:(id)a5
{
  v8 = a3;
  v9 = a4;
  v112 = a5;
  v10 = DALoggingwithCategory();
  v11 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v10, v11))
  {
    *buf = 138412290;
    *v131 = v8;
    _os_log_impl(&dword_0, v10, v11, "_ASSyncTaskAndMeetingResponseCommandsFromDAEventActions, actions is %@", buf, 0xCu);
  }

  v12 = DALoggingwithCategory();
  type = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v12, type))
  {
    invitationActionsInFlight = self->_invitationActionsInFlight;
    *buf = 138412290;
    *v131 = invitationActionsInFlight;
    _os_log_impl(&dword_0, v12, type, "_invitationActionsInFlight is currently %@", buf, 0xCu);
  }

  v109 = self;

  v14 = objc_opt_new();
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v15 = v8;
  v16 = [v15 countByEnumeratingWithState:&v126 objects:v138 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v127;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v127 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v126 + 1) + 8 * i);
        if ([v20 itemChangeType] == &dword_4 + 2)
        {
          v21 = [v20 serverId];
          [v14 setObject:v20 forKeyedSubscript:v21];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v126 objects:v138 count:16];
    }

    while (v17);
  }

  v106 = v9;
  v107 = v14;

  v108 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v15, "count")}];
  v22 = [v15 count];
  v113 = v11;
  if (v22 >= 1)
  {
    for (j = (v22 & 0x7FFFFFFF) + 1; j > 1; --j)
    {
      v24 = v15;
      v25 = [v15 objectAtIndexedSubscript:j - 2];
      v26 = [v25 itemChangeType];
      if (v26 > 5)
      {
        if (v26 == (&dword_4 + 2))
        {
          goto LABEL_64;
        }

        if (v26 != &dword_8)
        {
LABEL_24:
          v27 = [v25 event];
          v28 = [v27 calAttendeeStatus];
          v29 = [v27 calAttendeePendingStatus];
          if ([v27 calEvent])
          {
            Status = CalCalendarItemGetStatus();
            v31 = DALoggingwithCategory();
            if (os_log_type_enabled(v31, type))
            {
              v32 = [v27 meetingResponseForAccount:v109];
              *buf = 67109632;
              *v131 = v28;
              *&v131[4] = 1024;
              *&v131[6] = v29;
              LOWORD(v132) = 1024;
              *(&v132 + 2) = v32;
              _os_log_impl(&dword_0, v31, type, "Event has status %d, pending status %d, meeting response %d", buf, 0x14u);
            }

            if ((Status - 1) <= 1 && !v28 && [v25 itemChangeType] != &dword_0 + 1)
            {
              v33 = DALoggingwithCategory();
              if (os_log_type_enabled(v33, type))
              {
                *buf = 138412290;
                *v131 = v27;
                _os_log_impl(&dword_0, v33, type, "Dropping request to sync %@, as it's a un-acted-upon invitation and we're trying to do something other than modify it", buf, 0xCu);
              }

              goto LABEL_47;
            }
          }

          else
          {
            Status = 0;
          }

          v34 = v28;
          if ([v25 itemChangeType] == &dword_0 + 1)
          {
            v35 = [v27 serverID];
            v36 = [v107 objectForKeyedSubscript:v35];

            if (v36)
            {
              v37 = DALoggingwithCategory();
              v11 = v113;
              if (os_log_type_enabled(v37, v113))
              {
                v38 = [v27 serverID];
                *buf = 138412290;
                *v131 = v38;
                v39 = v37;
                v40 = v113;
                v41 = "Have a modify action nixed by a belay action for server id %@.  Dropping the modify";
                goto LABEL_61;
              }

              goto LABEL_62;
            }
          }

          v42 = [v25 itemChangeType];
          if (Status == 3 && v42 == &dword_0 + 1 && ([v27 cachedOrganizerIsSelfWithAccount:v109] & 1) == 0)
          {
            v37 = DALoggingwithCategory();
            v11 = v113;
            if (os_log_type_enabled(v37, v113))
            {
              v38 = [v27 serverID];
              *buf = 138412290;
              *v131 = v38;
              v39 = v37;
              v40 = v113;
              v41 = "Do not respond to a canceled meeting for server id %@. Dropping the modify";
LABEL_61:
              _os_log_impl(&dword_0, v39, v40, v41, buf, 0xCu);
            }

LABEL_62:

            [v24 removeObjectAtIndex:j - 2];
LABEL_63:

            goto LABEL_64;
          }

          v43 = [v25 itemChangeType];
          if (Status == 3 && !v43 && [v27 cachedOrganizerIsSelfWithAccount:v109])
          {
            v44 = DALoggingwithCategory();
            if (os_log_type_enabled(v44, type))
            {
              *buf = 138412290;
              *v131 = v27;
              _os_log_impl(&dword_0, v44, type, "Not syncing add of cancelled event that's not back by an exchange event.  Event %@", buf, 0xCu);
            }

            [v112 addObject:v27];
LABEL_47:
            v11 = v113;
            goto LABEL_63;
          }

          v45 = [v27 meetingResponseForAccount:v109];
          v11 = v113;
          if (v45)
          {
            if (v45 == 4)
            {
              v46 = v109->_invitationActionsInFlight;
              v47 = [v27 uidForCalFramework];
              LODWORD(v46) = [(NSMutableSet *)v46 containsObject:v47];

              if (v46)
              {
                v48 = DALoggingwithCategory();
                if (os_log_type_enabled(v48, v113))
                {
                  *buf = 138412290;
                  *v131 = v27;
                  _os_log_impl(&dword_0, v48, v113, "Dropping request to email about %@, as I currently have an invitation action in flight for it", buf, 0xCu);
                }

                goto LABEL_54;
              }

              [v112 addObject:v27];
              v59 = CalEventCopyOriginalEvent();
              if (v59)
              {
                CFRelease(v59);
                goto LABEL_76;
              }

              if (v34 != 2)
              {
                goto LABEL_54;
              }

              v65 = [v27 serverID];
              if (!v65)
              {
                goto LABEL_54;
              }

              v66 = v65;
              v56 = [[ASAction alloc] initWithItemChangeType:2 changedItem:0 serverId:v65];
            }

            else
            {
              v57 = [v27 uidForCalFramework];
              if ([(NSMutableSet *)v109->_invitationActionsInFlight containsObject:v57])
              {
                v58 = DALoggingwithCategory();
                if (os_log_type_enabled(v58, v113))
                {
                  *buf = 138412290;
                  *v131 = v27;
                  _os_log_impl(&dword_0, v58, v113, "Dropping request to do a MeetingResponse for %@, as I currently have an invitation action in flight for it", buf, 0xCu);
                }
              }

              else
              {
                [v106 addObject:v25];
                [(NSMutableSet *)v109->_invitationActionsInFlight addObject:v57];
              }

              [v24 removeObjectAtIndex:j - 2];

LABEL_76:
              v56 = 0;
            }
          }

          else
          {
LABEL_54:
            v49 = [v27 calEvent];
            v50 = CalEventCopyOriginalEvent();
            v51 = v50;
            if (!v50 || v50 == v49)
            {
              v56 = [[ASAction alloc] initWithItemChangeType:objc_msgSend(v25 changedItem:"itemChangeType") != 0 serverId:{v27, 0}];
              if (!v51)
              {
                goto LABEL_86;
              }
            }

            else
            {
              v52 = CalEventCopyExternalID();
              if (v52)
              {
                v53 = v52;
                v54 = [(ASDaemonAccount *)v109 protocol];
                v55 = [v54 includeExceptionsInParent];

                if (v55)
                {
                  v56 = 0;
                }

                else
                {
                  v60 = [v25 itemChangeType];
                  v61 = [ASAction alloc];
                  v62 = v61;
                  if (v60)
                  {
                    v63 = [v25 serverId];
                    v64 = [v25 instanceId];
                    v56 = [v62 initWithItemChangeType:1 changedItem:v27 serverId:v63 instanceId:v64];

                    v11 = v113;
                  }

                  else
                  {
                    v56 = [v61 initWithItemChangeType:0 changedItem:v27 serverId:0];
                  }
                }

                CFRelease(v53);
              }

              else
              {
                v56 = 0;
              }
            }

            CFRelease(v51);
          }

LABEL_86:

          v27 = v56;
          if (!v56)
          {
            goto LABEL_64;
          }

LABEL_23:
          [v108 addObject:v27];
          goto LABEL_63;
        }
      }

      else if (v26 != (&dword_0 + 2))
      {
        if (v26 != &dword_4)
        {
          goto LABEL_24;
        }

        goto LABEL_64;
      }

      v27 = v25;
      if (v27)
      {
        goto LABEL_23;
      }

LABEL_64:

      v15 = v24;
    }
  }

  v67 = v106;
  if ([v106 count])
  {
    v105 = v15;
    v68 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v106, "count")}];
    v122 = 0u;
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v69 = v106;
    v70 = [v69 countByEnumeratingWithState:&v122 objects:v137 count:16];
    if (v70)
    {
      v71 = v70;
      v72 = *v123;
      do
      {
        for (k = 0; k != v71; k = k + 1)
        {
          if (*v123 != v72)
          {
            objc_enumerationMutation(v69);
          }

          v74 = [*(*(&v122 + 1) + 8 * k) changedItem];
          [v74 calEvent];
          v75 = CalEventCopyOriginalEvent();
          if (v75)
          {
            v76 = v75;
            v77 = [NSString stringWithFormat:@"%d", CalCalendarItemGetRowID()];
            CFRelease(v76);
            [v68 addObject:v77];

            v11 = v113;
          }
        }

        v71 = [v69 countByEnumeratingWithState:&v122 objects:v137 count:16];
      }

      while (v71);
    }

    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    typea = [v112 copy];
    v78 = [typea countByEnumeratingWithState:&v118 objects:v136 count:16];
    if (v78)
    {
      v79 = v78;
      v80 = *v119;
      do
      {
        for (m = 0; m != v79; m = m + 1)
        {
          if (*v119 != v80)
          {
            objc_enumerationMutation(typea);
          }

          v82 = *(*(&v118 + 1) + 8 * m);
          v83 = [v82 clientID];
          if (v83 && [v68 containsObject:v83])
          {
            v84 = DALoggingwithCategory();
            if (os_log_type_enabled(v84, v11))
            {
              *buf = 138412290;
              *v131 = v82;
              _os_log_impl(&dword_0, v84, v11, "Not emailing about event %@, as I'm sending a meeting response for someone in their chain", buf, 0xCu);
            }

            [v112 removeObject:v82];
          }

          v85 = [v82 responseRequested];
          if (![v85 intValue])
          {
            v86 = DALoggingwithCategory();
            if (os_log_type_enabled(v86, v11))
            {
              *buf = 138412290;
              *v131 = v82;
              _os_log_impl(&dword_0, v86, v11, "Not emailing about event %@, as the originator requested no responses", buf, 0xCu);
            }

            [v112 removeObject:v82];
          }
        }

        v79 = [typea countByEnumeratingWithState:&v118 objects:v136 count:16];
      }

      while (v79);
    }

    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v87 = [v108 copy];
    v88 = [v87 countByEnumeratingWithState:&v114 objects:v135 count:16];
    if (v88)
    {
      v89 = v88;
      v90 = *v115;
      v91 = _CPLog_to_os_log_type[3];
      v92 = &PLLogRegisteredEvent_ptr;
      do
      {
        for (n = 0; n != v89; n = n + 1)
        {
          if (*v115 != v90)
          {
            objc_enumerationMutation(v87);
          }

          v94 = *(*(&v114 + 1) + 8 * n);
          if ([v94 itemChangeType] != &dword_0 + 2)
          {
            v95 = [v94 event];
            v96 = v92[380];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v97 = [v95 clientID];
              if (v97 && [v68 containsObject:v97])
              {
                v98 = DALoggingwithCategory();
                if (os_log_type_enabled(v98, v113))
                {
                  *buf = 138412290;
                  *v131 = v94;
                  _os_log_impl(&dword_0, v98, v113, "Not syncing command %@, as I'm sending a meeting response for someone in their chain", buf, 0xCu);
                }

                [v108 removeObject:v94];
LABEL_128:
                v92 = &PLLogRegisteredEvent_ptr;
              }
            }

            else
            {
              v97 = DALoggingwithCategory();
              if (os_log_type_enabled(v97, v91))
              {
                v99 = [v94 itemChangeType];
                v100 = objc_opt_class();
                *buf = 134218498;
                *v131 = v99;
                *&v131[8] = 2112;
                v132 = v100;
                v133 = 2112;
                v134 = v95;
                v101 = v100;
                _os_log_impl(&dword_0, v97, v91, "Alarm! We have a command of type %lu, but the event isn't an ASEvent, rather it has class %@, and is %@", buf, 0x20u);

                goto LABEL_128;
              }
            }

            continue;
          }
        }

        v89 = [v87 countByEnumeratingWithState:&v114 objects:v135 count:16];
      }

      while (v89);
    }

    v67 = v106;
    v11 = v113;
    v15 = v105;
  }

  v102 = [v108 allObjects];
  v103 = DALoggingwithCategory();
  if (os_log_type_enabled(v103, v11))
  {
    *buf = 138412802;
    *v131 = v102;
    *&v131[8] = 2112;
    v132 = v67;
    v133 = 2112;
    v134 = v112;
    _os_log_impl(&dword_0, v103, v11, "_ASSyncTaskAndMeetingResponseCommandsFromDAEventActions, commands are %@, meetingResponseActions are %@ emails are %@", buf, 0x20u);
  }

  return v102;
}

- (void)consumerFinishedInvitationActionsForEventWithUID:(id)a3
{
  if (a3)
  {
    [(NSMutableSet *)self->_invitationActionsInFlight removeObject:?];
  }
}

- (void)meetingResponseTask:(id)a3 completedWithStatus:(int64_t)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = DALoggingwithCategory();
  v11 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v10, v11))
  {
    v12 = [v8 responseItems];
    *buf = 138413058;
    v61 = v8;
    v62 = 2048;
    v63 = a4;
    v64 = 2112;
    v65 = v9;
    v66 = 2112;
    v67 = v12;
    _os_log_impl(&dword_0, v10, v11, "Meeting response task %@ completed with status %ld error %@ results %@", buf, 0x2Au);
  }

  v13 = [(ASDaemonAccount *)self consumerForTask:v8];
  v44 = objc_opt_new();
  v14 = objc_opt_new();
  v43 = v13;
  if (a4 == 2)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v15 = [v8 responseItems];
    v16 = [v15 countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = v9;
      v19 = v8;
      v20 = *v54;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v54 != v20)
          {
            objc_enumerationMutation(v15);
          }

          v22 = *(*(&v53 + 1) + 8 * i);
          if ([v22 status] == &dword_0 + 2)
          {
            v23 = v44;
          }

          else
          {
            v23 = v14;
          }

          [v23 addObject:v22];
        }

        v17 = [v15 countByEnumeratingWithState:&v53 objects:v59 count:16];
      }

      while (v17);
      v8 = v19;
      v9 = v18;
      v13 = v43;
    }
  }

  else
  {
    v15 = [v8 responseItems];
    [v14 addObjectsFromArray:v15];
  }

  [v13 meetingResponseFinishedWithStatus:a4 error:v9 successfulResponses:v44 failedResponses:v14];
  v24 = [(ASDaemonAccount *)self protocol];
  v25 = [v24 sendEmailForMeetingInvitationAndResponse];

  if (v25)
  {
    v47 = 0uLL;
    v48 = 0uLL;
    v45 = 0uLL;
    v46 = 0uLL;
    v26 = v14;
    v27 = [v26 countByEnumeratingWithState:&v45 objects:v57 count:16];
    if (v27)
    {
      v28 = v27;
      v41 = v9;
      v42 = v8;
      v29 = *v46;
      do
      {
        for (j = 0; j != v28; j = j + 1)
        {
          if (*v46 != v29)
          {
            objc_enumerationMutation(v26);
          }

          invitationActionsInFlight = self->_invitationActionsInFlight;
          v32 = [*(*(&v45 + 1) + 8 * j) eventUID];
          v33 = [v32 uidForCalFramework];
          [(NSMutableSet *)invitationActionsInFlight removeObject:v33];
        }

        v28 = [v26 countByEnumeratingWithState:&v45 objects:v57 count:16];
      }

      while (v28);
LABEL_32:
      v9 = v41;
      v8 = v42;
      v13 = v43;
    }
  }

  else
  {
    v51 = 0uLL;
    v52 = 0uLL;
    v49 = 0uLL;
    v50 = 0uLL;
    v26 = [v8 responseItems];
    v34 = [v26 countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (v34)
    {
      v35 = v34;
      v41 = v9;
      v42 = v8;
      v36 = *v50;
      do
      {
        for (k = 0; k != v35; k = k + 1)
        {
          if (*v50 != v36)
          {
            objc_enumerationMutation(v26);
          }

          v38 = self->_invitationActionsInFlight;
          v39 = [*(*(&v49 + 1) + 8 * k) eventUID];
          v40 = [v39 uidForCalFramework];
          [(NSMutableSet *)v38 removeObject:v40];
        }

        v35 = [v26 countByEnumeratingWithState:&v49 objects:v58 count:16];
      }

      while (v35);
      goto LABEL_32;
    }
  }

  [(ASDaemonAccount *)self removeConsumerForTask:v8];
}

- (id)_parentIdFromEventId:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@"<!ExceptionDate!>"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v3;
  }

  else
  {
    v6 = v4;
    v7 = DALoggingwithCategory();
    v8 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v7, v8))
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&dword_0, v7, v8, "Stripping exception id from eventId: %@", &v11, 0xCu);
    }

    v5 = [v3 substringToIndex:v6];
  }

  v9 = v5;

  return v9;
}

- (void)_respondToMeetingsForActions:(id)a3 inFolderWithId:(id)a4 consumer:(id)a5
{
  v8 = a3;
  v78 = a4;
  v9 = a5;
  if ([v8 count])
  {
    v77 = v9;
    v10 = objc_opt_new();
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v76 = v8;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v100 objects:v110 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v101;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v101 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v100 + 1) + 8 * i);
          v17 = [v16 changedItem];
          v18 = [v17 recurrence];

          if (v18)
          {
            [v10 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v100 objects:v110 count:16];
      }

      while (v13);
    }

    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v19 = v11;
    v20 = [v19 countByEnumeratingWithState:&v96 objects:v109 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v97;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v97 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v96 + 1) + 8 * j);
          v25 = [v24 changedItem];
          v26 = [v25 recurrence];

          if (!v26)
          {
            [v10 addObject:v24];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v96 objects:v109 count:16];
      }

      while (v21);
    }

    v80 = objc_opt_new();
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    obj = v10;
    v87 = [obj countByEnumeratingWithState:&v92 objects:v108 count:16];
    if (v87)
    {
      v27 = *v93;
      type = _CPLog_to_os_log_type[7];
      v28 = _CPLog_to_os_log_type[3];
      v84 = v28;
      v79 = *v93;
      do
      {
        v29 = 0;
        do
        {
          if (*v93 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v92 + 1) + 8 * v29);
          v31 = [v30 changedItem];
          v32 = [v31 calEvent];
          if (v32)
          {
            v33 = v32;
            v86 = v30;
            v34 = CalEventCopyOriginalEvent();
            v35 = v34;
            if (v34)
            {
              v36 = v34 == v33;
            }

            else
            {
              v36 = 1;
            }

            v37 = v36;
            v89 = v34;
            v90 = v31;
            if (v36)
            {
              v91 = 0;
            }

            else
            {
              v39 = [[ASEvent alloc] initWithCalEvent:v34 serverID:0 account:self];
              v40 = [[ASEventException alloc] initWithCalEvent:v33 originalEvent:v39 account:self];
              v91 = [v40 exceptionStartTime];

              v35 = v89;
            }

            v41 = CalEventCopyEventActions();
            v88 = v41;
            if ([v41 count])
            {
              [v41 objectAtIndexedSubscript:0];

              v42 = CalEventActionCopyExternalFolderID();
              v43 = CalEventActionCopyExternalID();
              v44 = DALoggingwithCategory();
              if (os_log_type_enabled(v44, type))
              {
                *buf = 138412290;
                v105 = v43;
                _os_log_impl(&dword_0, v44, type, "Retrieved delivery item id from eventAction, id: %@", buf, 0xCu);
              }

              v45 = [(ASDaemonAccount *)self protocol];
              v46 = [v45 useInstanceIdForException];

              if (v46)
              {
                v47 = [(ASDaemonAccount *)self _parentIdFromEventId:v43];

                v43 = v47;
              }

              v35 = v89;
            }

            else
            {
              v43 = 0;
              v42 = 0;
            }

            v48 = [(ASDaemonAccount *)self protocol];
            if ([v48 useEventIdsInMeetingResponse])
            {

              if (!v42 || !v43)
              {
                v49 = v78;

                v50 = v90;
                if (v37)
                {
                  v51 = [v90 serverID];

                  v52 = DALoggingwithCategory();
                  if (os_log_type_enabled(v52, type))
                  {
                    *buf = 138412290;
                    v53 = v51;
                    v105 = v51;
                    v54 = v52;
                    v55 = type;
                    v56 = "Retrieved delivery item id from event, id: %@";
                    goto LABEL_66;
                  }

LABEL_67:
                  v53 = v51;
                }

                else
                {
                  v51 = CalCalendarItemCopyExternalID();

                  v52 = DALoggingwithCategory();
                  if (!os_log_type_enabled(v52, type))
                  {
                    goto LABEL_67;
                  }

                  *buf = 138412290;
                  v53 = v51;
                  v105 = v51;
                  v54 = v52;
                  v55 = type;
                  v56 = "Retrieved delivery item id from parent event, id: %@";
LABEL_66:
                  _os_log_impl(&dword_0, v54, v55, v56, buf, 0xCu);
                }

                v59 = v49;

                v70 = [(ASDaemonAccount *)self protocol];
                v71 = [v70 useInstanceIdForException];

                if (v71)
                {
                  v57 = v53;
                  v43 = [(ASDaemonAccount *)self _parentIdFromEventId:v53];
                  v42 = v59;
LABEL_52:

                  v58 = v43;
                  v59 = v42;
                }

                else
                {
                  v58 = v53;
                }

                v60 = [v50 responseRequested];
                v61 = [v60 intValue];

                if (v59 && v58)
                {
                  v83 = v61 != 0;
                  v82 = [ASMeetingResponseItem alloc];
                  v62 = [v50 meetingResponseForAccount:self];
                  v63 = [v50 eventUID];
                  v64 = [v50 responseComment];
                  [v50 proposedStartTime];
                  v66 = v65 = self;
                  v67 = [v50 proposedEndTime];
                  LOBYTE(v75) = v83;
                  v68 = v58;
                  v69 = [v82 initWithDeliveryItemFolderId:v59 deliveryItemServerId:v58 instanceDate:v91 meetingResponse:v62 eventUID:v63 responseComment:v64 responseRequested:v75 proposedStartTime:v66 proposedEndTime:v67];

                  self = v65;
                  v27 = v79;
                  v35 = v89;

                  [v69 setContext:v86];
                  [v80 addObject:v69];
                  v28 = v84;
                }

                else
                {
                  v69 = DALoggingwithCategory();
                  v28 = v84;
                  if (os_log_type_enabled(v69, v84))
                  {
                    *buf = 138412546;
                    v105 = v59;
                    v106 = 2112;
                    v68 = v58;
                    v107 = v58;
                    _os_log_impl(&dword_0, v69, v84, "Asked to respond to a meeting request, but the local cal event is missing one or both of folder id %@ or item id %@", buf, 0x16u);
                  }

                  else
                  {
                    v68 = v58;
                  }
                }

                if (v35)
                {
                  CFRelease(v35);
                }

                v31 = v90;
                v38 = v59;
                goto LABEL_62;
              }
            }

            else
            {
            }

            v50 = v90;
            v57 = v91;
            v91 = 0;
            goto LABEL_52;
          }

          v38 = DALoggingwithCategory();
          if (os_log_type_enabled(v38, v28))
          {
            *buf = 138412290;
            v105 = v31;
            _os_log_impl(&dword_0, v38, v28, "Asked to respond to a meeting request.  But the DAEvent has no local event? DAEvent: %@", buf, 0xCu);
          }

LABEL_62:

          v29 = v29 + 1;
        }

        while (v87 != v29);
        v72 = [obj countByEnumeratingWithState:&v92 objects:v108 count:16];
        v87 = v72;
      }

      while (v72);
    }

    v8 = v76;
    if ([v80 count])
    {
      v73 = [[ASMeetingResponseTask alloc] initWithResponseItems:v80];
      [v73 setSourceApplicationBundleIdentifier:@"com.apple.mobilecal"];
      [v73 setDelegate:self];
      [(ASDaemonAccount *)self setConsumer:v77 forTask:v73];
      v74 = [(ASDaemonAccount *)self taskManager];
      [v74 submitQueuedTask:v73];
    }

    v9 = v77;
  }
}

- (void)synchronizeNotesFolder:(id)a3 noteContext:(id)a4 previousTag:(id)a5 actions:(id)a6 changeSet:(id)a7 notesToDeleteAfterSync:(id)a8 isInitialUberSync:(BOOL)a9 isResyncAfterConnectionFailed:(BOOL)a10 moreLocalChangesAvailable:(BOOL)a11 consumer:(id)a12
{
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a12;
  v20 = a7;
  v21 = DALoggingwithCategory();
  v22 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v21, v22))
  {
    v23 = &stru_6D4A8;
    *buf = 138412802;
    v32 = v16;
    v33 = 2112;
    if (a10)
    {
      v23 = @" resync after connection failure";
    }

    v34 = v17;
    v35 = 2112;
    v36 = v23;
    _os_log_impl(&dword_0, v21, v22, "Syncing Notes folder with id %@, previous key %@%@", buf, 0x20u);
  }

  v24 = [[ASFolderItemsSyncTask alloc] initWithFolderID:v16];
  [v24 setSourceApplicationBundleIdentifier:@"com.apple.mobilenotes"];
  [v24 setPreviousSyncKey:v17];
  [v24 setWillUpdate:1];
  [v24 setDelegate:self];
  [v24 setIsInitialSync:a9];
  [v24 setMIMESupport:3];
  [v24 setDataclass:32];
  [v24 setContext:v20];

  [v24 setIsResyncAfterConnectionFailed:a10];
  [v24 setMoreLocalChangesAvailable:a11];
  v25 = [v18 mutableCopy];
  v26 = _DASyncableActionsFromDAActions(v18, v25);
  if (v26)
  {
    [v24 setActions:v26];
  }

  [v24 setPushedActions:v25];
  v27 = _ASSyncTaskPreservedActionsFromActions(v18);
  [v24 setPreservedActions:v27];
  [(ASDaemonAccount *)self setConsumer:v19 forTask:v24];

  v30 = v16;
  v28 = [NSArray arrayWithObjects:&v30 count:1];
  [(ASDaemonAccount *)self suspendMonitoringFoldersWithIDs:v28];

  v29 = [(ASDaemonAccount *)self taskManager];
  [v29 submitQueuedTask:v24];
}

- (int)performMoveRequests:(id)a3 consumer:(id)a4
{
  v5 = a3;
  v29 = a4;
  v6 = objc_opt_new();
  [v6 setPushedMoveRequests:v5];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (!v8)
  {
    v10 = 0;
    goto LABEL_20;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v32;
  do
  {
    v12 = 0;
    do
    {
      if (*v32 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v31 + 1) + 8 * v12);
      v14 = [v13 message];
      v15 = [v13 fromFolder];
      v16 = [v13 toFolder];
      [v6 addSourceID:v14 sourceFolder:v15 destinatonFolder:v16];

      v17 = [v13 context];
      v18 = [v17 changedItem];
      v19 = [v18 dataclass];

      if (v19 == &dword_4)
      {
        if ((v10 & 0xFFFFFFFFFFFFFFFBLL) == 0)
        {
          v10 = 4;
          goto LABEL_12;
        }

        v23 = 2541;
        v10 = 4;
      }

      else
      {
        v20 = [v13 context];
        v21 = [v20 changedItem];
        v22 = [v21 dataclass];

        if (v22 != &dword_10)
        {
          goto LABEL_12;
        }

        if ((v10 & 0xFFFFFFFFFFFFFFEFLL) == 0)
        {
          v10 = 16;
          goto LABEL_12;
        }

        v23 = 2545;
        v10 = 16;
      }

      sub_48394(a2, self, v23);
LABEL_12:
      v12 = v12 + 1;
    }

    while (v9 != v12);
    v24 = [v7 countByEnumeratingWithState:&v31 objects:v35 count:16];
    v9 = v24;
  }

  while (v24);
LABEL_20:

  [v6 setDelegate:self];
  v25 = [v6 taskID];
  if (!v10)
  {
    sub_483FC();
  }

  [v6 setDataclass:v10];
  [(ASDaemonAccount *)self setConsumer:v29 forTask:v6];
  v26 = [(ASDaemonAccount *)self taskManager];
  [v26 submitQueuedTask:v6];

  return v25;
}

- (int)forwardMeeting:(id)a3 withServerId:(id)a4 withInstanceId:(id)a5 withFolderId:(id)a6 toEmailAddresses:(id)a7 withAttendeeUUIDs:(id)a8 consumer:(id)a9
{
  v15 = a3;
  v39 = a9;
  v38 = a8;
  v16 = a7;
  v37 = a6;
  v17 = a4;
  v18 = [(ASDaemonAccount *)self emailAddress];
  if (a5)
  {
    v19 = [v15 exceptionDate];
    v40 = [v19 activeSyncString];
  }

  else
  {
    v40 = 0;
  }

  v20 = +[NSDate date];
  v21 = +[NSTimeZone systemTimeZone];
  v22 = [v20 dateWithCalendarFormat:@"%a timeZone:%d %b %Y %H:%M:%S %z", v21];
  v36 = [v22 description];

  v35 = [v15 subject];
  v23 = objc_opt_new();
  v41 = v18;
  v24 = [NSArray arrayWithObjects:&v41 count:1];
  [v23 setAddressListForSender:v24];

  [v23 setAddressListForTo:v16];
  [v23 setHeader:v36 forKey:H_DATE];
  [v23 setHeader:v35 forKey:H_SUBJECT];
  v25 = objc_opt_new();
  [v25 setDelegate:self];
  v26 = [v25 createMessageWithString:0 headers:v23];
  v27 = [v26 messageData];
  v28 = +[NSString da_newGUID];
  LOBYTE(v33) = 0;
  v34 = v18;
  v29 = [[ASSmartMailTask alloc] initWithMessage:v27 messageID:v28 messageType:2 originalMessageID:v17 instanceId:v40 originalFolderID:v37 originalLongID:0 replaceMime:v33];

  [v29 setShouldNotRetry:1];
  [v29 setSourceApplicationBundleIdentifier:@"com.apple.mobilecal"];
  [v29 setDelegate:self];
  v30 = objc_opt_new();
  [v30 setAttendeeUUIDs:v38];

  [v29 setContext:v30];
  [(ASDaemonAccount *)self setConsumer:v39 forTask:v29];

  v31 = [(ASDaemonAccount *)self taskManager];
  [v31 submitQueuedTask:v29];

  LODWORD(v31) = [v29 taskID];
  return v31;
}

- (id)requestCalendarAvailabilityForStartDate:(id)a3 endDate:(id)a4 ignoredEventID:(id)a5 addresses:(id)a6 consumer:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if (a5)
  {
    v16 = DALoggingwithCategory();
    v17 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v16, v17))
    {
      *v22 = 0;
      _os_log_impl(&dword_0, v16, v17, "'ignoredEventID' supplied but it will not be used.", v22, 2u);
    }
  }

  v18 = [[ASResolveRecipientsTask alloc] initFreeBusyQueryWithStartDate:v12 endDate:v13 emailAddresses:v14];
  [v18 setSourceApplicationBundleIdentifier:@"com.apple.mobilecal"];
  [v18 setDelegate:self];
  [(ASDaemonAccount *)self setConsumer:v15 forTask:v18];
  v19 = [(ASDaemonAccount *)self taskManager];
  [v19 submitQueuedTask:v18];

  v20 = [[NSNumber alloc] initWithInteger:{objc_msgSend(v18, "taskID")}];

  return v20;
}

- (void)cancelCalendarAvailabilityRequestWithID:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
    v7 = [(ASDaemonAccount *)self taskManager];
    [v7 cancelTaskWithID:v6];
  }

  else
  {
    v7 = DALoggingwithCategory();
    v8 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v7, v8))
    {
      *v9 = 0;
      _os_log_impl(&dword_0, v7, v8, "'nil 'requestID' given.  Will not cancel any calendar avilability requests.", v9, 2u);
    }
  }
}

+ (int64_t)_convertCalendarAvailabilityType:(char)a3
{
  if ((a3 - 48) > 4)
  {
    return 0;
  }

  else
  {
    return qword_53990[(a3 - 48)];
  }
}

- (void)resolveRecipientsTask:(id)a3 completedWithStatus:(int64_t)a4 error:(id)a5 queriedEmailAddressToRecpient:(id)a6
{
  v10 = a3;
  v41 = a5;
  v11 = a6;
  if (([v10 retrieveAvailability] & 1) == 0)
  {
    sub_48458();
  }

  v43 = [(ASDaemonAccount *)self consumerForTask:v10, v41];
  if (a4 != 2)
  {
    v40 = [NSError errorWithDomain:DAErrorDomain code:10 userInfo:0];
    v14 = 0;
LABEL_29:
    v39 = v42;
    goto LABEL_30;
  }

  v12 = [v11 allKeys];
  v13 = [v12 count];

  if (!v13)
  {
    v14 = 0;
    v40 = 0;
    goto LABEL_29;
  }

  v14 = objc_opt_new();
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = [v11 allKeys];
  v15 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v55;
    v18 = &PLLogRegisteredEvent_ptr;
    v46 = v11;
    v47 = v10;
    v44 = *v55;
    v45 = v14;
    do
    {
      v19 = 0;
      v48 = v16;
      do
      {
        if (*v55 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v50 = *(*(&v54 + 1) + 8 * v19);
        v51 = v19;
        v52 = [v11 objectForKeyedSubscript:?];
        v53 = objc_alloc_init(v18[357]);
        v20 = [v52 mergedFreeBusy];
        v21 = [v20 length];

        if (v21)
        {
          v22 = malloc_type_malloc((v21 + 1), 0xCB7F40B3uLL);
          if (v22)
          {
            v23 = v22;
            v24 = [v52 mergedFreeBusy];
            strncpy(v23, [v24 UTF8String], (v21 + 1));

            v25 = *v23;
            v26 = [v10 startTime];
            v27 = [v26 dateByAddingTimeInterval:1800.0];
            v28 = [objc_opt_class() _convertCalendarAvailabilityType:v25];
            if (v21 == &dword_0 + 1)
            {
              v29 = v27;
            }

            else
            {
              v30 = 2;
              v31 = 1;
              do
              {
                v32 = [objc_opt_class() _convertCalendarAvailabilityType:v23[v31]];
                if (v28 == v32)
                {
                  v29 = [v27 dateByAddingTimeInterval:1800.0];
                }

                else
                {
                  v33 = v32;
                  v34 = [[DAECalendarAvailabilitySpan alloc] initWithStartDate:v26 endDate:v27 type:v28];
                  [v53 addObject:v34];
                  v35 = self;
                  v36 = v27;

                  v29 = [v36 dateByAddingTimeInterval:1800.0];

                  v27 = v34;
                  v28 = v33;
                  v26 = v36;
                  self = v35;
                }

                v31 = v30;
                v37 = v21 > v30++;
                v27 = v29;
              }

              while (v37);
            }

            v38 = [[DAECalendarAvailabilitySpan alloc] initWithStartDate:v26 endDate:v29 type:v28];
            [v53 addObject:v38];
            free(v23);

            v11 = v46;
            v10 = v47;
            v17 = v44;
            v14 = v45;
            v18 = &PLLogRegisteredEvent_ptr;
            v16 = v48;
          }
        }

        if ([v53 count])
        {
          [v14 setObject:v53 forKeyedSubscript:v50];
        }

        v19 = v51 + 1;
      }

      while ((v51 + 1) != v16);
      v16 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v16);
  }

  v39 = v42;
  if (v14)
  {
    [v43 calendarAvailabilityRequestReturnedResults:v14];
  }

  v40 = 0;
LABEL_30:
  [v43 calendarAvailabilityRequestFinishedWithError:v40];
  [(ASDaemonAccount *)self removeConsumerForTask:v10];
}

- (id)_localizedStringForResponse:(int)a3
{
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v4 = [NSBundle bundleForClass:objc_opt_class()];
      v5 = v4;
      v6 = @"MEETING_RESPONSE_DECLINED";
      goto LABEL_13;
    }

    if (a3 == 4)
    {
      v4 = [NSBundle bundleForClass:objc_opt_class()];
      v5 = v4;
      v6 = @"MEETING_RESPONSE_REPLY";
      goto LABEL_13;
    }
  }

  else
  {
    if (a3 == 1)
    {
      v4 = [NSBundle bundleForClass:objc_opt_class()];
      v5 = v4;
      v6 = @"MEETING_RESPONSE_ACCEPTED";
      goto LABEL_13;
    }

    if (a3 == 2)
    {
      v4 = [NSBundle bundleForClass:objc_opt_class()];
      v5 = v4;
      v6 = @"MEETING_RESPONSE_TENTATIVE";
LABEL_13:
      v9 = [v4 localizedStringForKey:v6 value:&stru_6D4A8 table:@"DataAccess"];

      goto LABEL_14;
    }
  }

  v7 = DALoggingwithCategory();
  v8 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v7, v8))
  {
    v11[0] = 67109120;
    v11[1] = a3;
    _os_log_impl(&dword_0, v7, v8, "\n\nWe are sending an email for an invitation with response %d.  That's not right.  Dropping it.\n\n", v11, 8u);
  }

  v9 = 0;
LABEL_14:

  return v9;
}

- (void)messageWriter:(id)a3 willGenerateHeadersForMimePart:(id)a4
{
  v12 = a4;
  v5 = [v12 type];
  if ([v5 isEqualToString:@"multipart"])
  {
    v6 = [v12 subtype];
    v7 = [v6 isEqualToString:@"mixed"];

    if (v7)
    {
      [v12 setSubtype:@"alternative"];
      goto LABEL_11;
    }
  }

  else
  {
  }

  v8 = [v12 type];
  if ([v8 isEqualToString:@"text"])
  {
    v9 = [v12 subtype];
    v10 = [v9 isEqualToString:@"calendar"];

    if (v10)
    {
      [v12 setBodyParameter:@"utf-8" forKey:@"charset"];
      v11 = [ICSCalendar ICSStringFromMethod:self->_curReplyMethod];
      if (v11)
      {
        [v12 setBodyParameter:v11 forKey:@"METHOD"];
      }
    }
  }

  else
  {
  }

LABEL_11:
}

- (void)messageWriter:(id)a3 willEncodeHeaders:(id)a4 forMimePart:(id)a5
{
  v10 = a4;
  v6 = a5;
  v7 = [v6 type];
  if ([v7 isEqualToString:@"text"])
  {
    v8 = [v6 subtype];
    v9 = [v8 isEqualToString:@"calendar"];

    if (v9)
    {
      [v10 removeHeaderForKey:H_CONTENT_DISPOSITION];
    }
  }

  else
  {
  }
}

- (id)copyMessageStringWithPlainTextString:(id)a3 vCalMethod:(int)a4 vCalAttachmentData:(id)a5 fromAddress:(id)a6 toAddresses:(id)a7 date:(id)a8 subject:(id)a9 outMessageID:(id *)a10
{
  v15 = a5;
  v16 = a6;
  v17 = a9;
  v18 = a8;
  v19 = a7;
  v20 = a3;
  v21 = objc_opt_new();
  v38 = v16;
  v40 = v16;
  v22 = [NSArray arrayWithObjects:&v40 count:1];
  [v21 setAddressListForSender:v22];

  [v21 setAddressListForTo:v19];
  [v21 setHeader:v18 forKey:H_DATE];

  [v21 setHeader:v17 forKey:H_SUBJECT];
  attachmentManager = self->_attachmentManager;
  if (!attachmentManager)
  {
    v24 = objc_alloc_init(MFAttachmentComposeManager);
    v25 = self->_attachmentManager;
    self->_attachmentManager = v24;

    attachmentManager = self->_attachmentManager;
  }

  v26 = v15;
  v27 = [(MFAttachmentComposeManager *)attachmentManager attachmentForData:v15 mimeType:@"text/calendar" fileName:@"meeting.ics" contentID:0 context:@"DataAccess"];
  self->_curReplyMethod = a4;
  v28 = objc_opt_new();
  [v28 appendString:v20 withQuoteLevel:0];

  v29 = objc_opt_new();
  [v29 setDelegate:self];
  v39[0] = v28;
  v39[1] = v27;
  v30 = [NSArray arrayWithObjects:v39 count:2];
  v31 = [v29 createMessageWithPlainTextDocumentsAndAttachments:v30 headers:v21];

  *a10 = [v31 messageIDHeaderInFortyBytesOrLess];
  v32 = [v31 messageData];
  v33 = [[NSMutableString alloc] initWithData:v32 encoding:4];
  [v33 convertLineEndingsTo:@"\r\n"];
  [v31 setMessageBody:0];
  v34 = self->_attachmentManager;
  v35 = [v27 url];
  [(MFAttachmentComposeManager *)v34 removeAttachmentForURL:v35];

  return v33;
}

- (id)_copyICSDateFromDate:(id)a3 timeZone:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v6 = +[NSTimeZone gmt];
  }

  v7 = [v5 dateWithCalendarFormat:0 timeZone:v6];
  v8 = [[ICSDate alloc] initWithYear:objc_msgSend(v7 month:"yearOfCommonEra") day:objc_msgSend(v7 hour:"monthOfYear") minute:objc_msgSend(v7 second:"dayOfMonth") timeZone:{objc_msgSend(v7, "hourOfDay"), objc_msgSend(v7, "minuteOfHour"), objc_msgSend(v7, "secondOfMinute"), v6}];

  return v8;
}

- (id)_stringWithRFC822DataFromEvent:(id)a3 icsMethod:(int)a4 recipients:(id)a5 recipientBareEmails:(id)a6 exceptionDate:(id)a7 outMessageID:(id *)a8
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v147 = self;
  v144 = [(ASDaemonAccount *)self emailAddress];
  v16 = [v12 allDayEvent];
  LODWORD(a5) = [v16 BOOLValue];

  [v12 calEvent];
  v148 = ICSEventFromCalEventFixUpCalEvent();
  if (a5)
  {
    v17 = [v12 startTime];
    v18 = [v12 endTime];
    v19 = [v12 timeZone];
    v20 = [(ASDaemonAccount *)self _copyICSDateFromDate:v17 timeZone:v19];

    v21 = [v12 timeZone];
    v22 = v13;
    v23 = [(ASDaemonAccount *)self _copyICSDateFromDate:v18 timeZone:v21];

    [v148 setDtstart:v20];
    [v148 setDtend:v23];
    [v148 setForcedAllDay:1];
    v24 = [[ICSProperty alloc] initWithValue:&__kCFBooleanTrue type:5012];
    [v148 setProperty:v24 forName:@"X-MICROSOFT-CDO-ALLDAYEVENT"];

    v13 = v22;
  }

  v25 = [v12 eventUID];
  v26 = [v12 timeZone];
  v138 = v25;
  v27 = [v25 uidForResponseEmailWithTimeZone:v26];

  v28 = [v12 recurrence];
  v136 = v28;
  if (v28)
  {
    v29 = [v28 until];
    v141 = [(ASDaemonAccount *)self _copyICSDateFromDate:v29 timeZone:0];
  }

  else
  {
    v141 = 0;
  }

  [v148 setUid:v27];
  v30 = CalEventCopyOriginalEvent();
  if (v30)
  {
    v31 = v30;
    ModifiedDate = CalCalendarItemCopyLastModifiedDate();
    if (ModifiedDate)
    {
      v33 = [v12 dTStamp];
      v34 = [ModifiedDate compare:v33];

      if (v34 == &dword_0 + 1)
      {
        v35 = [(ASDaemonAccount *)self _copyICSDateFromDate:ModifiedDate timeZone:0];
        [v148 setDtstamp:v35];
        [v148 setLast_modified:v35];

        CFRelease(v31);
        goto LABEL_12;
      }
    }

    CFRelease(v31);
  }

  v36 = [v12 dTStamp];
  ModifiedDate = [(ASDaemonAccount *)self _copyICSDateFromDate:v36 timeZone:0];

  [v148 setDtstamp:ModifiedDate];
  [v148 setLast_modified:ModifiedDate];
LABEL_12:

  v37 = [v148 location];

  if (!v37)
  {
    [v148 setLocation:&stru_6D4A8];
  }

  v142 = [v148 rrule];
  if ([v142 count] == &dword_0 + 1)
  {
    v38 = [v142 objectAtIndexedSubscript:0];
    v39 = [v38 until];

    if (v39)
    {
      v40 = [v141 value];
      [v38 setUntil:v40];
    }
  }

  v140 = v13;
  v143 = v15;
  v137 = v27;
  if (a4 != 3)
  {
    v41 = [NSMutableSet alloc];
    v42 = [v12 attendees];
    v43 = [v41 initWithArray:v42];

    v44 = [v12 attendeesPendingDeletion];
    [v43 addObjectsFromArray:v44];

    v45 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v43, "count")}];
    v157 = 0u;
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    v46 = v43;
    v47 = [v46 countByEnumeratingWithState:&v157 objects:v168 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v158;
      do
      {
        for (i = 0; i != v48; i = i + 1)
        {
          if (*v158 != v49)
          {
            objc_enumerationMutation(v46);
          }

          v51 = *(*(&v157 + 1) + 8 * i);
          v52 = [v51 email];
          if (v52 && [v14 containsObject:v52])
          {
            v53 = [v51 icsUserAddress];
            if (v53)
            {
              [v45 addObject:v53];
            }
          }
        }

        v48 = [v46 countByEnumeratingWithState:&v157 objects:v168 count:16];
      }

      while (v48);
    }

    [v148 setAttendee:v45];
    v13 = v140;
    v15 = v143;
  }

  if (v15)
  {
    v54 = [v12 startTime];
    v55 = [v12 timeZone];
    v56 = [NSCalendarDate combinedDateWithYMDFrom:v15 HMSFrom:v54 componentDatesTimezone:v55];

    v57 = [v12 endTime];
    v58 = [v12 startTime];
    [v57 timeIntervalSinceDate:v58];
    v60 = v59;

    v61 = [v56 dateByAddingTimeInterval:v60];
    v62 = [v12 timeZone];
    v63 = v13;
    v64 = [(ASDaemonAccount *)self _copyICSDateFromDate:v56 timeZone:v62];

    v65 = [v12 timeZone];
    v66 = [(ASDaemonAccount *)self _copyICSDateFromDate:v61 timeZone:v65];

    [v148 setDtstart:v64];
    [v148 setDtend:v66];
    [v148 setRecurrence_id:v64];
    [v148 setExdate:0];

    v13 = v63;
  }

  if (a4 == 3)
  {
    v67 = -[ASDaemonAccount _localizedStringForResponse:](self, "_localizedStringForResponse:", [v12 meetingResponseForEmail]);
    if (v67)
    {
      v68 = v67;
      v69 = [v12 subject];
      v70 = v69;
      v71 = &stru_6D4A8;
      if (v69)
      {
        v71 = v69;
      }

      v72 = [NSString stringWithFormat:@"%@ %@", v68, v71];

      v73 = [v148 attendee];
      v74 = [v12 meetingResponseForEmail];
      if (v74 > 2)
      {
        if (v74 == 3)
        {
          v135 = v72;
          v75 = 3;
          goto LABEL_72;
        }

        if (v74 == 4)
        {
          v99 = [v12 selfAttendeeMeetingResponse] - 1;
          v135 = v72;
          if (v99 >= 3)
          {
            v75 = 1;
          }

          else
          {
            v75 = dword_539B8[v99];
          }

          goto LABEL_72;
        }
      }

      else
      {
        if (v74 == 1)
        {
          v135 = v72;
          v75 = 2;
          goto LABEL_72;
        }

        if (v74 == 2)
        {
          v135 = v72;
          v75 = 4;
LABEL_72:
          v155 = 0u;
          v156 = 0u;
          v153 = 0u;
          v154 = 0u;
          v80 = v73;
          v104 = [v80 countByEnumeratingWithState:&v153 objects:v167 count:16];
          if (v104)
          {
            v105 = v104;
            v106 = *v154;
            while (2)
            {
              for (j = 0; j != v105; j = j + 1)
              {
                if (*v154 != v106)
                {
                  objc_enumerationMutation(v80);
                }

                v108 = *(*(&v153 + 1) + 8 * j);
                v109 = [v108 emailAddress];
                if ([(ASDaemonAccount *)v147 accountContainsEmailAddress:v109])
                {
                  [v108 setPartstat:v75];

                  v166 = v108;
                  v112 = &v166;
                  v87 = v80;
                  v90 = v109;
                  goto LABEL_82;
                }
              }

              v105 = [v80 countByEnumeratingWithState:&v153 objects:v167 count:16];
              if (v105)
              {
                continue;
              }

              break;
            }
          }

          v110 = [ICSUserAddress alloc];
          v111 = [(ASDaemonAccount *)v147 emailAddress];
          v87 = [v110 initWithEmailAddress:v111];

          [v87 setPartstat:v75];
          [v87 setCutype:1];
          v165 = v87;
          v112 = &v165;
          v90 = v144;
LABEL_82:
          v98 = [NSArray arrayWithObjects:v112 count:1];
          [v148 setAttendee:v98];
          goto LABEL_83;
        }
      }

      v100 = DALoggingwithCategory();
      v101 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v100, v101))
      {
        v102 = [v12 meetingResponseForEmail];
        *buf = 67109378;
        *v162 = v102;
        *&v162[4] = 2112;
        *&v162[6] = v12;
        _os_log_impl(&dword_0, v100, v101, "We are sending an email for an invitation with response %d.  That's not right.  Dropping this email on the floor.  Event %@", buf, 0x12u);
      }

      *a8 = 0;
      v95 = 0;
    }

    else
    {
      v92 = DALoggingwithCategory();
      v93 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v92, v93))
      {
        v94 = [v12 meetingResponseForEmail];
        *buf = 67109378;
        *v162 = v94;
        *&v162[4] = 2112;
        *&v162[6] = v12;
        _os_log_impl(&dword_0, v92, v93, "We are sending an email for an invitation with response %d.  That's not right.  Dropping this email on the floor.  Event %@", buf, 0x12u);
      }

      v95 = 0;
      *a8 = 0;
    }

    v103 = v144;
    goto LABEL_102;
  }

  v76 = [v12 subject];
  v77 = v76;
  v78 = &stru_6D4A8;
  if (v76)
  {
    v78 = v76;
  }

  v135 = v78;

  v79 = [v148 attendee];
  v80 = [v79 mutableCopy];
  v149 = 0u;
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v68 = v79;
  v81 = [v68 countByEnumeratingWithState:&v149 objects:v164 count:16];
  if (v81)
  {
    v82 = v81;
    v83 = *v150;
    do
    {
      for (k = 0; k != v82; k = k + 1)
      {
        if (*v150 != v83)
        {
          objc_enumerationMutation(v68);
        }

        v85 = *(*(&v149 + 1) + 8 * k);
        [v85 setRsvp:1];
        [v85 setPartstat:1];
      }

      v82 = [v68 countByEnumeratingWithState:&v149 objects:v164 count:16];
    }

    while (v82);
  }

  v86 = [v148 organizer];
  v87 = v86;
  if (v86)
  {
    v88 = [v86 emailAddress];
    v89 = v88;
    v90 = v144;
    if (v88)
    {
      v91 = v88;

      v90 = v91;
    }
  }

  else
  {
    v90 = v144;
  }

  [v148 setAttendee:v80];
  v96 = [v12 busyStatus];
  v97 = [v96 intValue];

  if (v97 > 3)
  {
    goto LABEL_84;
  }

  v98 = [[ICSProperty alloc] initWithValue:off_6D210[v97] type:5007];
  [v148 setProperty:v98 forName:@"X-MICROSOFT-CDO-INTENDEDSTATUS"];
LABEL_83:

LABEL_84:
  v145 = v90;

  if (CalCalendarItemGetPrivacyLevel() - 1 >= 3)
  {
    v113 = 1;
  }

  else
  {
    v113 = 2;
  }

  [v148 setClassification:v113];
  v114 = objc_opt_new();
  v163 = v148;
  v115 = [NSArray arrayWithObjects:&v163 count:1];
  [v114 setComponents:v115 options:1];

  [v114 setProdid:@"-//Apple Inc.//iPhone 3.0//EN"];
  [v114 setMethod:a4];
  v116 = CalCreateiCalendarDataFromICSCalendar();
  v117 = [[NSMutableString alloc] initWithData:v116 encoding:4];
  v118 = DALoggingwithCategory();
  v119 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v118, v119))
  {
    *buf = 138412546;
    *v162 = v12;
    *&v162[8] = 2112;
    *&v162[10] = v117;
    _os_log_impl(&dword_0, v118, v119, "Sending .ics attachment for event %@.  Attachment body\n%@", buf, 0x16u);
  }

  if (byte_7498C)
  {
    v120 = @"\n";
  }

  else
  {
    v120 = @"\r\n";
  }

  [v117 convertLineEndingsTo:v120];
  v121 = [v117 dataUsingEncoding:4];

  v122 = +[NSDate date];
  v123 = +[NSTimeZone systemTimeZone];
  v124 = [v122 dateWithCalendarFormat:@"%a timeZone:%d %b %Y %H:%M:%S %z", v123];
  v125 = [v124 description];

  v134 = v12;
  if (a4 == 3)
  {
    v126 = CalEventCopyResponseComment();
  }

  else
  {
    v126 = CalCalendarItemCopyDescription();
  }

  v127 = v126;
  v103 = v145;
  v128 = v121;
  if (v126)
  {
    v129 = [NSString stringWithFormat:@"%@\n", v126];
  }

  else
  {
    v129 = 0;
  }

  if (v129)
  {
    v130 = v129;
  }

  else
  {
    v130 = @"\n";
  }

  v131 = v128;
  v132 = v128;
  v13 = v140;
  v95 = [(ASDaemonAccount *)v147 copyMessageStringWithPlainTextString:v130 vCalMethod:a4 vCalAttachmentData:v132 fromAddress:v145 toAddresses:v140 date:v125 subject:v135 outMessageID:a8];

  v12 = v134;
LABEL_102:

  return v95;
}

- (void)addStringsToEmailForEventIOriginated:(id)a3 deletedExceptionOccurrenceDate:(id)a4 stringsToEmail:(id)a5 eventUUIDsToEmail:(id)a6 externalIDs:(id)a7 messageIDsToEmail:(id)a8 eventsDroppedDueToAge:(id)a9 checkEventForNeedingInvite:(BOOL)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = v16;
  v144 = v17;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v145 = a9;
  v22 = [v15 hasOccurrenceInTheFuture];
  v23 = [v15 isTombstoneEndTimeInFuture];
  if (v18 && v22)
  {
    if ([v15 calEvent])
    {
      Duration = CalEventGetDuration();
    }

    else
    {
      Duration = 0.0;
    }

    v25 = [v18 dateByAddingTimeInterval:Duration];
    [v25 timeIntervalSinceNow];
    v22 = v26 >= 0.0;
  }

  v136 = v18;
  if (((v22 | v23) & 1) == 0)
  {
    if (!v18)
    {
      [v145 addObject:v15];
    }

    goto LABEL_123;
  }

  if ([v15 calEvent])
  {
    ExternalTrackingStatus = CalEventGetExternalTrackingStatus();
    v28 = (ExternalTrackingStatus & 6) == 0;
    if (a10)
    {
      v28 = ExternalTrackingStatus;
    }

    if (v28)
    {
      v29 = [v15 CalCalendarItemStatus];
      if (v18 || v29 == 3 || (v30 = CalEventCopyOriginalEvent()) != 0 && (v31 = v30, Status = CalCalendarItemGetStatus(), CFRelease(v31), Status == 3))
      {
        v33 = [v15 attendees];
        if (![v33 count])
        {
          v49 = 1;
          v141 = 1;
          goto LABEL_108;
        }

        v134 = v20;
        v137 = v21;
        v34 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v33, "count")}];
        v35 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v33, "count")}];
        v157 = 0u;
        v158 = 0u;
        v159 = 0u;
        v160 = 0u;
        v36 = v33;
        v37 = [v36 countByEnumeratingWithState:&v157 objects:v165 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v158;
          do
          {
            for (i = 0; i != v38; i = i + 1)
            {
              if (*v158 != v39)
              {
                objc_enumerationMutation(v36);
              }

              v41 = *(*(&v157 + 1) + 8 * i);
              v42 = [v41 fullEmailString];
              v43 = [v41 email];
              v44 = v43;
              if (v42)
              {
                v45 = v43 == 0;
              }

              else
              {
                v45 = 1;
              }

              if (!v45)
              {
                [v34 addObject:v42];
                [v35 addObject:v44];
              }
            }

            v38 = [v36 countByEnumeratingWithState:&v157 objects:v165 count:16];
          }

          while (v38);
        }

        v33 = v36;

        if (![v34 count])
        {
          v49 = 1;
          v141 = 1;
          v21 = v137;
          v20 = v134;
LABEL_107:
          v18 = v136;

LABEL_108:
          if (v18)
          {
            goto LABEL_123;
          }

          goto LABEL_109;
        }

        v140 = v36;
        v156 = 0;
        [(ASDaemonAccount *)self _stringWithRFC822DataFromEvent:v15 icsMethod:5 recipients:v34 recipientBareEmails:v35 exceptionDate:v136 outMessageID:&v156];
        v47 = v46 = v15;
        v48 = v156;
        v49 = v47 == 0;
        v20 = v134;
        v131 = v47;
        v133 = v46;
        if (v47)
        {
          v50 = [v46 eventUID];
          v51 = [v50 copy];

          if (v136)
          {
            [v51 setExceptionDate:v136];
          }

          else
          {
            v74 = [v46 exceptionDate];
            [v51 setExceptionDate:v74];
          }

          v75 = v46;
          v76 = v51;
          v73 = v131;
          [v144 addObject:v131];
          v129 = v76;
          v77 = [v76 uidForCalFramework];
          [v19 addObject:v77];

          v78 = [v75 serverID];

          v33 = v140;
          if (v78)
          {
            [v75 serverID];
          }

          else
          {
            +[NSNull null];
          }
          v79 = ;
          [v134 addObject:v79];

          if (!v48)
          {
            v48 = +[NSString da_newGUID];
          }

          v21 = v137;
          [v137 addObject:v48];
        }

        else
        {
          v71 = DALoggingwithCategory();
          v72 = _CPLog_to_os_log_type[3];
          v129 = v71;
          if (os_log_type_enabled(v71, v72))
          {
            *buf = 138412290;
            v164 = v46;
            _os_log_impl(&dword_0, v71, v72, "Couldn't cons up a cancel-all email for event %@", buf, 0xCu);
          }

          v21 = v137;
          v33 = v140;
          v73 = 0;
        }

        v70 = v73 != 0;
      }

      else
      {
        v52 = [v15 attendeesPendingDeletion];
        v34 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v52, "count")}];
        v35 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v52, "count")}];
        v135 = v20;
        v138 = v21;
        v142 = v52;
        if ([v52 count])
        {
          v155 = 0u;
          v153 = 0u;
          v154 = 0u;
          v152 = 0u;
          v53 = v52;
          v54 = [v53 countByEnumeratingWithState:&v152 objects:v162 count:16];
          if (v54)
          {
            v55 = v54;
            v56 = *v153;
            do
            {
              for (j = 0; j != v55; j = j + 1)
              {
                if (*v153 != v56)
                {
                  objc_enumerationMutation(v53);
                }

                v58 = *(*(&v152 + 1) + 8 * j);
                v59 = [v58 fullEmailString];
                v60 = [v58 email];
                v61 = v60;
                if (v59)
                {
                  v62 = v60 == 0;
                }

                else
                {
                  v62 = 1;
                }

                if (!v62)
                {
                  [v34 addObject:v59];
                  [v35 addObject:v61];
                }
              }

              v55 = [v53 countByEnumeratingWithState:&v152 objects:v162 count:16];
            }

            while (v55);
          }

          if ([v34 count])
          {
            v151 = 0;
            v63 = [(ASDaemonAccount *)self _stringWithRFC822DataFromEvent:v15 icsMethod:5 recipients:v34 recipientBareEmails:v35 exceptionDate:0 outMessageID:&v151];
            v64 = v151;
            v20 = v135;
            if (v63)
            {
              v65 = [v15 eventUID];
              v66 = [v65 copy];

              v67 = [v15 exceptionDate];
              [v66 setExceptionDate:v67];

              [v144 addObject:v63];
              v68 = [v66 uidForCalFramework];
              [v19 addObject:v68];

              v69 = [v15 serverID];

              if (v69)
              {
                [v15 serverID];
              }

              else
              {
                +[NSNull null];
              }
              v81 = ;
              [v135 addObject:v81];

              if (!v64)
              {
                v64 = +[NSString da_newGUID];
              }

              v21 = v138;
              [v138 addObject:v64];
            }

            else
            {
              v66 = DALoggingwithCategory();
              v80 = _CPLog_to_os_log_type[3];
              if (os_log_type_enabled(v66, v80))
              {
                *buf = 138412290;
                v164 = v15;
                _os_log_impl(&dword_0, v66, v80, "Couldn't cons up a cancel-some email for event %@", buf, 0xCu);
              }

              v21 = v138;
            }

            v70 = v63 != 0;
          }

          else
          {
            v70 = 0;
            v20 = v135;
            v21 = v138;
          }
        }

        else
        {
          v70 = 0;
        }

        v82 = [v15 attendees];
        v48 = [v82 mutableCopy];

        v33 = v142;
        [v48 removeObjectsInArray:v142];
        if (![v48 count])
        {
          v49 = 1;
LABEL_106:

          v141 = !v70;
          goto LABEL_107;
        }

        v132 = v70;
        v133 = v15;
        v127 = v19;
        v73 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v48, "count")}];
        v83 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v48, "count")}];
        v147 = 0u;
        v148 = 0u;
        v149 = 0u;
        v150 = 0u;
        v48 = v48;
        v84 = [v48 countByEnumeratingWithState:&v147 objects:v161 count:16];
        if (v84)
        {
          v85 = v84;
          v86 = *v148;
          do
          {
            for (k = 0; k != v85; k = k + 1)
            {
              if (*v148 != v86)
              {
                objc_enumerationMutation(v48);
              }

              v88 = *(*(&v147 + 1) + 8 * k);
              v89 = [v88 fullEmailString];
              v90 = [v88 email];
              v91 = v90;
              if (v89)
              {
                v92 = v90 == 0;
              }

              else
              {
                v92 = 1;
              }

              if (!v92)
              {
                [v73 addObject:v89];
                [v83 addObject:v91];
              }
            }

            v85 = [v48 countByEnumeratingWithState:&v147 objects:v161 count:16];
          }

          while (v85);
        }

        if ([v73 count])
        {
          v146 = 0;
          v93 = [(ASDaemonAccount *)self _stringWithRFC822DataFromEvent:v133 icsMethod:2 recipients:v73 recipientBareEmails:v83 exceptionDate:0 outMessageID:&v146];
          v130 = v146;
          v19 = v127;
          v20 = v135;
          v33 = v142;
          v126 = v93;
          if (v93)
          {
            v94 = [v133 eventUID];
            v128 = [v94 copy];

            v95 = [v133 exceptionDate];
            [v128 setExceptionDate:v95];

            [v144 addObject:v93];
            v96 = [v128 uidForCalFramework];
            [v127 addObject:v96];

            v97 = [v133 serverID];

            if (v97)
            {
              [v133 serverID];
            }

            else
            {
              +[NSNull null];
            }
            v100 = ;
            [v135 addObject:v100];

            v101 = v130;
            if (!v130)
            {
              v101 = +[NSString da_newGUID];
            }

            v21 = v138;
            v130 = v101;
            [v138 addObject:v101];
            v132 = 1;
          }

          else
          {
            v98 = DALoggingwithCategory();
            v99 = _CPLog_to_os_log_type[3];
            v128 = v98;
            if (os_log_type_enabled(v98, v99))
            {
              *buf = 138412290;
              v164 = v133;
              _os_log_impl(&dword_0, v98, v99, "Couldn't cons up a request email for event %@", buf, 0xCu);
            }

            v21 = v138;
          }
        }

        else
        {
          v19 = v127;
          v20 = v135;
          v21 = v138;
          v33 = v142;
        }

        v49 = 1;
        v70 = v132;
      }

      v15 = v133;
      goto LABEL_106;
    }
  }

  v49 = 1;
  v141 = 1;
  if (v18)
  {
    goto LABEL_123;
  }

LABEL_109:
  if (v49)
  {
    v102 = [v15 exceptions];
    v103 = [v102 count];

    if (v103)
    {
      v104 = 0;
      v139 = v21;
      do
      {
        v105 = [v15 exceptions];
        v106 = [v105 objectAtIndexedSubscript:v104];

        v107 = [v106 isDeleted];
        v108 = [v107 BOOLValue];

        if (v108)
        {
          v109 = v20;
          v110 = v19;
          v111 = [v106 eventUID];
          v112 = [v111 uidForCalFramework];

          if (v104)
          {
            v113 = 0;
            while (1)
            {
              v114 = [v15 exceptions];
              v115 = [v114 objectAtIndexedSubscript:v113];

              v116 = [v115 isDeleted];
              v117 = [v116 BOOLValue];

              if (v117)
              {
                v118 = [v115 eventUID];
                v119 = [v118 uidForCalFramework];

                v120 = [v112 compare:v119];
                if (!v120)
                {
                  break;
                }
              }

              if (v104 == ++v113)
              {
                goto LABEL_118;
              }
            }

            v19 = v110;
            v20 = v109;
            v21 = v139;
          }

          else
          {
LABEL_118:
            v121 = [v106 exceptionDate];
            LOBYTE(v125) = v141;
            v19 = v110;
            v122 = v110;
            v20 = v109;
            v21 = v139;
            [(ASDaemonAccount *)self addStringsToEmailForEventIOriginated:v15 deletedExceptionOccurrenceDate:v121 stringsToEmail:v144 eventUUIDsToEmail:v122 externalIDs:v109 messageIDsToEmail:v139 eventsDroppedDueToAge:v145 checkEventForNeedingInvite:v125];
          }
        }

        else
        {
          LOBYTE(v125) = v141;
          [(ASDaemonAccount *)self addStringsToEmailForEventIOriginated:v106 deletedExceptionOccurrenceDate:0 stringsToEmail:v144 eventUUIDsToEmail:v19 externalIDs:v20 messageIDsToEmail:v21 eventsDroppedDueToAge:v145 checkEventForNeedingInvite:v125];
        }

        ++v104;
        v123 = [v15 exceptions];
        v124 = [v123 count];
      }

      while (v104 < v124);
    }
  }

LABEL_123:
}

- (BOOL)addStringsToEmailForEventIAmAttending:(id)a3 recipient:(id)a4 stringsToEmail:(id)a5 eventUUIDsToEmail:(id)a6 externalIDs:(id)a7 messageIDsToEmail:(id)a8 eventsDroppedDueToAge:(id)a9 checkEventForNeedingInvite:(BOOL)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  if (([v16 hasOccurrenceInTheFuture] & 1) == 0)
  {
    [v22 addObject:v16];
    goto LABEL_7;
  }

  if (![v16 calEvent])
  {
LABEL_7:
    v25 = 0;
    goto LABEL_18;
  }

  v37 = v18;
  v41 = v17;
  v23 = [NSArray arrayWithObjects:&v41 count:1];
  v38 = 0;
  v24 = [(ASDaemonAccount *)self _stringWithRFC822DataFromEvent:v16 icsMethod:3 recipients:v23 recipientBareEmails:0 exceptionDate:0 outMessageID:&v38];
  v36 = v38;

  v25 = v24 == 0;
  if (v24)
  {
    [v37 addObject:v24];
    v26 = [v16 eventUID];
    v27 = [v26 uidForCalFramework];
    [v19 addObject:v27];

    v28 = [v16 serverID];

    if (v28)
    {
      [v16 serverID];
    }

    else
    {
      +[NSNull null];
    }
    v33 = ;
    [v20 addObject:v33];

    v32 = v36;
    if (!v36)
    {
      v32 = +[NSString da_newGUID];
    }

    [v21 addObject:v32];
  }

  else
  {
    v29 = DALoggingwithCategory();
    type = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v29, type))
    {
      *buf = 138412290;
      v40 = v16;
      _os_log_impl(&dword_0, v29, type, "Couldn't cons up a response email for event %@, not going to reply", buf, 0xCu);
    }

    v30 = CalCalendarItemCopySelfAttendee();
    if (v30)
    {
      v31 = v30;
      CalAttendeeSetStatus();
      CalAttendeeSetPendingStatus();
      CFRelease(v31);
    }

    CalEventSetNeedsNotification();
    v32 = v36;
  }

  v18 = v37;
LABEL_18:

  return v25;
}

- (BOOL)sendEmailsForCalEvents:(id)a3 consumer:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v90 objects:v99 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v91;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v91 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v90 + 1) + 8 * i);
        v14 = [v13 recurrence];

        if (v14)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v90 objects:v99 count:16];
    }

    while (v10);
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = v8;
  v15 = [obj countByEnumeratingWithState:&v86 objects:v98 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v87;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v87 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v86 + 1) + 8 * j);
        v20 = [v19 recurrence];

        if (!v20)
        {
          [v7 addObject:v19];
        }
      }

      v16 = [obj countByEnumeratingWithState:&v86 objects:v98 count:16];
    }

    while (v16);
  }

  v63 = v7;
  v73 = v6;

  v76 = objc_opt_new();
  v21 = objc_opt_new();
  v22 = objc_opt_new();
  v75 = objc_opt_new();
  v23 = objc_opt_new();
  v24 = [(ASDaemonAccount *)self protocol];
  v25 = [v24 sendEmailForMeetingInvitationAndResponse];

  if (v25)
  {
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v67 = v63;
    v70 = [v67 countByEnumeratingWithState:&v82 objects:v97 count:16];
    if (!v70)
    {
      LOBYTE(v66) = 0;
      goto LABEL_72;
    }

    v66 = 0;
    v69 = *v83;
    type = _CPLog_to_os_log_type[3];
    v68 = _CPLog_to_os_log_type[6];
    v72 = v21;
    v74 = v22;
    while (1)
    {
      v26 = 0;
      do
      {
        if (*v83 != v69)
        {
          objc_enumerationMutation(v67);
        }

        v27 = *(*(&v82 + 1) + 8 * v26);
        [v76 removeAllObjects];
        [v21 removeAllObjects];
        [v22 removeAllObjects];
        [v75 removeAllObjects];
        if ([v27 cachedOrganizerIsSelfWithAccount:self])
        {
          v28 = [v27 attendees];
          v29 = [v28 count] != 0;
        }

        else
        {
          v29 = 0;
        }

        if ([v27 calEvent] && (CalEventGetExternalTrackingStatus() & 1) != 0 && !v29)
        {
          v31 = DALoggingwithCategory();
          if (os_log_type_enabled(v31, type))
          {
            *buf = 138412290;
            v96 = v27;
            _os_log_impl(&dword_0, v31, type, "Detected an event that had the attendees ripped out from under it.  Not going to email about event %@", buf, 0xCu);
          }

          CalEventSetExternalTrackingStatus();
          v30 = 0;
          v66 = 1;
        }

        else
        {
          v30 = 1;
        }

        v32 = [v27 hasOccurrenceInTheFuture];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v33 = [v27 isTombstoneEndTimeInFuture];
        }

        else
        {
          v33 = 0;
        }

        if ((v32 | v33))
        {
          if (v30)
          {
            if (v29)
            {
              LOBYTE(v62) = 1;
              [(ASDaemonAccount *)self addStringsToEmailForEventIOriginated:v27 deletedExceptionOccurrenceDate:0 stringsToEmail:v76 eventUUIDsToEmail:v21 externalIDs:v22 messageIDsToEmail:v75 eventsDroppedDueToAge:v23 checkEventForNeedingInvite:v62];
            }

            else
            {
              v44 = [v27 fullOrganizerString];
              if (v44)
              {
                LOBYTE(v62) = 1;
                v66 |= [(ASDaemonAccount *)self addStringsToEmailForEventIAmAttending:v27 recipient:v44 stringsToEmail:v76 eventUUIDsToEmail:v21 externalIDs:v22 messageIDsToEmail:v75 eventsDroppedDueToAge:v23 checkEventForNeedingInvite:v62];
              }
            }

            if ([v21 count])
            {
              v64 = v26;
              v45 = 0;
              v46 = 1;
              do
              {
                v47 = [v21 objectAtIndexedSubscript:v45];
                v48 = [v22 objectAtIndexedSubscript:v45];
                v49 = +[NSNull null];

                if (v48 == v49)
                {
                  v50 = 0;
                }

                else
                {
                  v50 = [v22 objectAtIndexedSubscript:v45];
                }

                v51 = [v76 objectAtIndexedSubscript:v45];
                v52 = [v51 dataUsingEncoding:4];
                v53 = objc_opt_new();
                [v53 setEventUID:v47];
                [v53 setServerID:v50];
                [v53 setEmailResponse:{objc_msgSend(v27, "meetingResponseForEmail")}];
                [v53 setIsMyInvite:v29];
                v54 = [v75 objectAtIndexedSubscript:v45];
                LOBYTE(v62) = 0;
                [(ASDaemonAccount *)self sendMessageWithRFC822Data:v52 messageID:v54 outgoingMessageType:0 originalMessageFolderID:0 originalMessageItemID:0 originalMessageLongID:0 originalAccountID:0 useSmartTasksIfPossible:v62 sourceApplicationBundleIdentifier:@"com.apple.mobilecal" consumer:v73 context:v53];

                v45 = v46;
                v21 = v72;
                v55 = [v72 count] > v46++;
                v22 = v74;
              }

              while (v55);
              v26 = v64;
            }

            goto LABEL_54;
          }
        }

        else
        {
          v34 = DALoggingwithCategory();
          if (os_log_type_enabled(v34, v68))
          {
            *buf = 138412290;
            v96 = v27;
            _os_log_impl(&dword_0, v34, v68, "Not sending an email for the following invitation, because it only occurs in the past.  Invite %@", buf, 0xCu);
          }
        }

        v35 = v26;
        [v23 addObject:v27];
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v36 = [v27 exceptions];
        v37 = [v36 countByEnumeratingWithState:&v78 objects:v94 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v79;
          do
          {
            for (k = 0; k != v38; k = k + 1)
            {
              if (*v79 != v39)
              {
                objc_enumerationMutation(v36);
              }

              v41 = *(*(&v78 + 1) + 8 * k);
              v42 = [v41 isDeleted];
              v43 = [v42 BOOLValue];

              if ((v43 & 1) == 0)
              {
                [v23 addObject:v41];
              }
            }

            v38 = [v36 countByEnumeratingWithState:&v78 objects:v94 count:16];
          }

          while (v38);
        }

        v22 = v74;
        v26 = v35;
LABEL_54:
        v26 = v26 + 1;
      }

      while (v26 != v70);
      v56 = [v67 countByEnumeratingWithState:&v82 objects:v97 count:16];
      v70 = v56;
      if (!v56)
      {
LABEL_72:

        goto LABEL_73;
      }
    }
  }

  v57 = DALoggingwithCategory();
  v58 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v57, _CPLog_to_os_log_type[6]))
  {
    v59 = [(ASDaemonAccount *)self protocol];
    v60 = [v59 protocolVersion];
    *buf = 138412290;
    v96 = v60;
    _os_log_impl(&dword_0, v57, v58, "Not sending emails about events. Protocol version %@", buf, 0xCu);
  }

  [v23 addObjectsFromArray:v63];
  LOBYTE(v66) = 0;
LABEL_73:
  if ([v23 count])
  {
    [v73 finishWithInvitationBatch:v23];
  }

  return v66 & 1;
}

- (void)_reallyAttemptInvitationLinkageForMetaDatas:(id)a3 deliveryIdsToClear:(id)a4 deliveryIdsToSoftClear:(id)a5 inFolderWithId:(id)a6 callback:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = DALoggingwithCategory();
  v18 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v17, v18))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v17, v18, "ProcessMeetingRequests: attempting invitation linkage", buf, 2u);
  }

  v19 = [(ASDaemonAccount *)self folderWithId:v15];
  if (v19)
  {
    v89 = [(ASDaemonAccount *)self sniffableTypeForFolder:v19];
    if (v89)
    {
      v85 = v19;
      v87 = v16;
      type = v18;
      v90 = v14;
      v91 = v13;
      v95 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v12, "count")}];
      v121 = 0u;
      v122 = 0u;
      v123 = 0u;
      v124 = 0u;
      v88 = v12;
      obj = v12;
      v20 = [obj countByEnumeratingWithState:&v121 objects:v133 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v122;
        v23 = _CPLog_to_os_log_type[4];
        do
        {
          for (i = 0; i != v21; i = i + 1)
          {
            if (*v122 != v22)
            {
              objc_enumerationMutation(obj);
            }

            v25 = *(*(&v121 + 1) + 8 * i);
            v26 = objc_opt_class();
            v120 = 0;
            v27 = [NSKeyedUnarchiver unarchivedObjectOfClass:v26 fromData:v25 error:&v120];
            v28 = v120;
            if (v27)
            {
              [v95 addObject:v27];
            }

            else
            {
              v29 = DALoggingwithCategory();
              if (os_log_type_enabled(v29, v23))
              {
                *buf = 138412290;
                v132 = v28;
                _os_log_impl(&dword_0, v29, v23, "Unable to decode meeting request: %@", buf, 0xCu);
              }
            }
          }

          v21 = [obj countByEnumeratingWithState:&v121 objects:v133 count:16];
        }

        while (v21);
      }

      [v95 sortUsingFunction:sub_29E54 context:0];
      v30 = objc_opt_new();
      v31 = objc_opt_new();
      v116 = 0u;
      v117 = 0u;
      v118 = 0u;
      v119 = 0u;
      v32 = [v95 reverseObjectEnumerator];
      v33 = [v32 countByEnumeratingWithState:&v116 objects:v130 count:16];
      obja = v30;
      if (v33)
      {
        v34 = v33;
        v35 = *v117;
        do
        {
          for (j = 0; j != v34; j = j + 1)
          {
            if (*v117 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v116 + 1) + 8 * j);
            v38 = [v37 uidForCalFramework];
            if (v38)
            {
              if ([v30 containsObject:v38])
              {
                v39 = DALoggingwithCategory();
                if (os_log_type_enabled(v39, type))
                {
                  *buf = 138412290;
                  v132 = v37;
                  _os_log_impl(&dword_0, v39, type, "Ignoring meeting request %@ because I have a more recent one", buf, 0xCu);
                }

                v30 = obja;
              }

              else
              {
                [v30 addObject:v38];
                [v31 addObject:v37];
              }
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v116 objects:v130 count:16];
        }

        while (v34);
      }

      v40 = +[ASLocalDBHelper sharedInstance];
      v41 = [(ASDaemonAccount *)self accountID];
      v42 = [(ASDaemonAccount *)self changeTrackingID];
      [v40 calOpenDatabaseForAccountID:v41 clientID:v42];

      v43 = [(ASDaemonAccount *)self _copyDefaultExchangeEventsCalendar:1];
      v112 = 0u;
      v113 = 0u;
      v114 = 0u;
      v115 = 0u;
      v44 = v31;
      v45 = [v44 countByEnumeratingWithState:&v112 objects:v129 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = 0;
        v48 = *v113;
        do
        {
          for (k = 0; k != v46; k = k + 1)
          {
            if (*v113 != v48)
            {
              objc_enumerationMutation(v44);
            }

            v47 |= [*(*(&v112 + 1) + 8 * k) writeInviteToCalDBCreateAsRejected:v89 == 2 defaultCalendar:v43 account:self];
          }

          v46 = [v44 countByEnumeratingWithState:&v112 objects:v129 count:16];
        }

        while (v46);
      }

      else
      {
        LOBYTE(v47) = 0;
      }

      if (v43)
      {
        CFRelease(v43);
      }

      v50 = +[ASLocalDBHelper sharedInstance];
      v51 = [(ASDaemonAccount *)self accountID];
      [v50 calCloseDatabaseForAccountID:v51 save:v47 & 1];

      v52 = +[ASLocalDBHelper sharedInstance];
      v53 = [(ASDaemonAccount *)self accountID];
      [v52 calOpenDatabaseAsGenericClientForAccountID:v53];

      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v54 = v91;
      v55 = [v54 countByEnumeratingWithState:&v108 objects:v128 count:16];
      if (v55)
      {
        v56 = v55;
        v57 = 0;
        v58 = *v109;
        do
        {
          for (m = 0; m != v56; m = m + 1)
          {
            if (*v109 != v58)
            {
              objc_enumerationMutation(v54);
            }

            v57 |= [(ASDaemonAccount *)self _clearOutInviteWithDeliveryFolderId:v15 deliveryServerId:*(*(&v108 + 1) + 8 * m) wasSoftDelete:0 considerInvitedToInvitations:1];
          }

          v56 = [v54 countByEnumeratingWithState:&v108 objects:v128 count:16];
        }

        while (v56);
      }

      else
      {
        v57 = 0;
      }

      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v60 = v90;
      v61 = [v60 countByEnumeratingWithState:&v104 objects:v127 count:16];
      if (v61)
      {
        v62 = v61;
        v63 = *v105;
        do
        {
          for (n = 0; n != v62; n = n + 1)
          {
            if (*v105 != v63)
            {
              objc_enumerationMutation(v60);
            }

            v57 |= [(ASDaemonAccount *)self _clearOutInviteWithDeliveryFolderId:v15 deliveryServerId:*(*(&v104 + 1) + 8 * n) wasSoftDelete:1 considerInvitedToInvitations:1];
          }

          v62 = [v60 countByEnumeratingWithState:&v104 objects:v127 count:16];
        }

        while (v62);
      }

      v65 = +[ASLocalDBHelper sharedInstance];
      v66 = [(ASDaemonAccount *)self accountID];
      [v65 calCloseDatabaseForAccountID:v66 save:v57 & 1];

      v67 = +[ASLocalDBHelper sharedInstance];
      v68 = [(ASDaemonAccount *)self accountID];
      v69 = [(ASDaemonAccount *)self changeTrackingID];
      [v67 calOpenDatabaseForAccountID:v68 clientID:v69];

      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v70 = v54;
      v71 = [v70 countByEnumeratingWithState:&v100 objects:v126 count:16];
      if (v71)
      {
        v72 = v71;
        v73 = 0;
        v74 = *v101;
        do
        {
          for (ii = 0; ii != v72; ii = ii + 1)
          {
            if (*v101 != v74)
            {
              objc_enumerationMutation(v70);
            }

            v73 |= [(ASDaemonAccount *)self _clearOutInviteWithDeliveryFolderId:v15 deliveryServerId:*(*(&v100 + 1) + 8 * ii) wasSoftDelete:0 considerInvitedToInvitations:0];
          }

          v72 = [v70 countByEnumeratingWithState:&v100 objects:v126 count:16];
        }

        while (v72);
      }

      else
      {
        v73 = 0;
      }

      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v76 = v60;
      v77 = [v76 countByEnumeratingWithState:&v96 objects:v125 count:16];
      if (v77)
      {
        v78 = v77;
        v79 = *v97;
        v19 = v86;
        do
        {
          for (jj = 0; jj != v78; jj = jj + 1)
          {
            if (*v97 != v79)
            {
              objc_enumerationMutation(v76);
            }

            v73 |= [(ASDaemonAccount *)self _clearOutInviteWithDeliveryFolderId:v15 deliveryServerId:*(*(&v96 + 1) + 8 * jj) wasSoftDelete:1 considerInvitedToInvitations:0];
          }

          v78 = [v76 countByEnumeratingWithState:&v96 objects:v125 count:16];
        }

        while (v78);
      }

      else
      {
        v19 = v86;
      }

      v81 = +[ASLocalDBHelper sharedInstance];
      v82 = [(ASDaemonAccount *)self accountID];
      [v81 calCloseDatabaseForAccountID:v82 save:v73 & 1];

      v16 = v87;
      v12 = v88;
      v14 = v90;
      v13 = v91;
      v18 = type;
    }
  }

  v83 = DALoggingwithCategory();
  if (os_log_type_enabled(v83, v18))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v83, v18, "ProcessMeetingRequests: calling back with invitation linkage success", buf, 2u);
  }

  v16[2](v16, 1);
  v84 = +[DALocalDBGateKeeper sharedGateKeeper];
  [v84 relinquishLocksForWaiter:self dataclasses:4 moreComing:0];
}

- (void)attemptInvitationLinkageForMetaDatas:(id)a3 deliveryIdsToClear:(id)a4 deliveryIdsToSoftClear:(id)a5 inFolderWithId:(id)a6 callback:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = DALoggingwithCategory();
  v18 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v17, v18))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v17, v18, "ProcessMeetingRequests: waiting for gate keeper", buf, 2u);
  }

  v19 = +[DALocalDBGateKeeper sharedGateKeeper];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_2A070;
  v25[3] = &unk_6D1C8;
  v25[4] = self;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v20 = v15;
  v21 = v14;
  v22 = v13;
  v23 = v12;
  v24 = v16;
  [v19 registerPreemptiveWaiter:self forDataclassLocks:4 completionHandler:v25];
}

- (BOOL)_clearOutInviteWithDeliveryFolderId:(id)a3 deliveryServerId:(id)a4 wasSoftDelete:(BOOL)a5 considerInvitedToInvitations:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v11 = a3;
  v12 = a4;
  v13 = DALoggingwithCategory();
  v14 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v13, v14))
  {
    *buf = 138412802;
    *v33 = v11;
    *&v33[8] = 2112;
    v34 = v12;
    v35 = 1024;
    v36 = v7;
    _os_log_impl(&dword_0, v13, v14, "Clearing out invite with folder id %@ server id %@, wasSoftDelete = %d", buf, 0x1Cu);
  }

  if (!v11 || !v12)
  {
    sub_484C4(a2, self, v11, v12);
  }

  v15 = +[ASLocalDBHelper sharedInstance];
  v16 = [(ASDaemonAccount *)self accountID];
  [v15 calDatabaseForAccountID:v16];
  v17 = CalDatabaseCopyEventActionWithFolderIDAndExternalID();

  if (v17)
  {
    v18 = CalEventActionCopyOwningEvent();
    if (v18)
    {
      v19 = v18;
      v20 = [[ASEvent alloc] initWithCalEvent:v18 serverID:v12 account:self];
      v21 = [v20 cachedOrganizerIsSelfWithAccount:self] ^ v6;
      if (v21 == 1)
      {
        v22 = CalCalendarItemCopyExternalID();
        if (v22)
        {
          cf = v22;
          Status = CalCalendarItemGetStatus();
          v30 = [v20 calAttendeeStatus];
          v23 = DALoggingwithCategory();
          if (os_log_type_enabled(v23, v14))
          {
            *buf = 67109376;
            *v33 = Status;
            *&v33[4] = 1024;
            *&v33[6] = v30;
            _os_log_impl(&dword_0, v23, v14, "While clearing out invite, I found an invite with event status %d, attendee status %d", buf, 0xEu);
          }

          if (Status == 3 && v30 == 2)
          {
            CalRemoveEvent();
          }

          else
          {
            CalEventRemoveEventAction();
            if (!v7 && Status == 1)
            {
              v24 = [(ASDaemonAccount *)self protocol];
              v25 = [v24 serverUpdatesAttendeeStatusOnEvents];

              if ((v25 & 1) == 0)
              {
                [v20 calAttendeePendingStatus];
                v26 = [v20 copySelfAttendeeGeneratedIfNecessaryWithLocalEvent:v19 forAccount:self];
                if (v26)
                {
                  v27 = v26;
                  CalAttendeeSetStatus();
                  CalAttendeeSetPendingStatus();
                  CFRelease(v27);
                }
              }

              CalEventSetNeedsNotification();
            }
          }

          CFRelease(cf);
        }

        else if ([v20 calAttendeeStatus] != 2 || CalCalendarItemGetStatus() == 3)
        {
          CalRemoveEvent();
        }
      }

      CFRelease(v19);
    }

    else
    {
      LOBYTE(v21) = 0;
    }

    CFRelease(v17);
  }

  else
  {
    LOBYTE(v21) = 0;
  }

  return v21;
}

- (void)accountDidUpdateProtocolVersion
{
  v3 = [(ASDaemonAccount *)self protocol];
  v4 = [v3 supportsSettingsCommand];

  if (v4)
  {
    v5 = objc_opt_new();
    if (([(ASDaemonAccount *)self isGoogleAccount]& 1) == 0 && ([(ASDaemonAccount *)self isHotmailAccount]& 1) == 0)
    {
      v13 = &off_6E480;
      v6 = ASDeviceInfo();
      v14 = v6;
      v7 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      [v5 setSetters:v7];
    }

    [v5 setDelegate:self];
    [v5 setGetters:&off_6E620];
    v8 = [(ASDaemonAccount *)self taskManager];
    [v8 submitIndependentTask:v5];

    v9 = DALoggingwithCategory();
    v10 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v9, v10))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v9, v10, "Settings task submitted", buf, 2u);
    }
  }

  v11.receiver = self;
  v11.super_class = ASDaemonAccount;
  [(ASDaemonAccount *)&v11 accountDidUpdateProtocolVersion];
}

- (void)settingsTask:(id)a3 completedWithStatus:(int64_t)a4 error:(id)a5 response:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = DALoggingwithCategory();
  v14 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v13, v14))
  {
    *buf = 138413314;
    v54 = self;
    v55 = 2112;
    *v56 = v10;
    *&v56[8] = 2048;
    *&v56[10] = a4;
    v57 = 2112;
    v58 = v11;
    v59 = 2112;
    v60 = v12;
    _os_log_impl(&dword_0, v13, v14, "%@:Settings task %@ completed with status %ld, error %@, response: %@", buf, 0x34u);
  }

  v15 = [(ASDaemonAccount *)self consumerForTask:v10];
  v16 = v15;
  if (v15)
  {
    [v15 settingsRequestFinishedWithResults:v12 status:a4 error:v11];
LABEL_31:
    [(ASDaemonAccount *)self removeConsumerForTask:v10, v43];
    goto LABEL_32;
  }

  if (a4 == 2)
  {
    v17 = objc_opt_new();
    v18 = [v12 userInformation];
    v19 = v18;
    v47 = self;
    v43 = 0;
    if (v18)
    {
      v20 = [v18 status];
      v21 = [v10 taskStatusForExchangeStatus:{objc_msgSend(v20, "intValue")}];

      if (v21 == &dword_0 + 2)
      {
        v22 = [v19 getResponse];
        if (v22)
        {
          v23 = [[ASSettingsTaskGetterResult alloc] initWithKey:3 status:2 result:v22];
          [v17 addObject:v23];
        }
      }

      else
      {
        v24 = DALoggingwithCategory();
        v25 = _CPLog_to_os_log_type[3];
        if (os_log_type_enabled(v24, v25))
        {
          *buf = 138412546;
          v54 = v47;
          v55 = 2048;
          *v56 = v21;
          _os_log_impl(&dword_0, v24, v25, "Settings task %@ UserInformation Get returned failure status %ld", buf, 0x16u);
        }

        v22 = [[ASSettingsTaskGetterResult alloc] initWithKey:3 status:v21 result:0];
        [v17 addObject:v22];
      }

      self = v47;
    }

    v44 = v12;
    v45 = v11;
    v46 = v10;

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v26 = v17;
    v27 = [v26 countByEnumeratingWithState:&v48 objects:v52 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v49;
      v30 = _CPLog_to_os_log_type[3];
      do
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v49 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v32 = *(*(&v48 + 1) + 8 * i);
          if ([(ASDaemonAccount *)v32 status]== &dword_0 + 2)
          {
            if ([(ASDaemonAccount *)v32 key]== 3)
            {
              v33 = [(ASDaemonAccount *)v32 result];
              v34 = DALoggingwithCategory();
              if (os_log_type_enabled(v34, v14))
              {
                v35 = [v33 primarySMTPAddress];
                v36 = [v33 emailAddresses];
                *buf = 138412546;
                v54 = v35;
                v55 = 2112;
                *v56 = v36;
                _os_log_impl(&dword_0, v34, v14, "User's email address set to primary SMTP address %@, or collection %@", buf, 0x16u);

                self = v47;
              }

              v37 = [v33 primarySMTPAddress];
              v38 = [v33 emailAddresses];
              [(ASDaemonAccount *)self setPrimarySMTPAddress:v37 emailAddresses:v38];
            }

            else
            {
              v33 = DALoggingwithCategory();
              if (os_log_type_enabled(v33, v14))
              {
                v41 = [(ASDaemonAccount *)v32 key];
                v42 = [(ASDaemonAccount *)v32 result];
                *buf = 138412802;
                v54 = v32;
                v55 = 1024;
                *v56 = v41;
                *&v56[4] = 2112;
                *&v56[6] = v42;
                _os_log_impl(&dword_0, v33, v14, "Ignored getter item: %@, key: %d, result: %@", buf, 0x1Cu);

                self = v47;
              }
            }
          }

          else
          {
            v33 = DALoggingwithCategory();
            if (os_log_type_enabled(v33, v30))
            {
              v39 = [(ASDaemonAccount *)v32 key];
              v40 = [(ASDaemonAccount *)v32 status];
              *buf = 138412802;
              v54 = v32;
              v55 = 1024;
              *v56 = v39;
              *&v56[4] = 2048;
              *&v56[6] = v40;
              _os_log_impl(&dword_0, v33, v30, "Getter item %@, key %d, returned unsuccessful status %ld", buf, 0x1Cu);
            }
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v28);
    }

    v11 = v45;
    v10 = v46;
    v16 = v43;
    v12 = v44;
    goto LABEL_31;
  }

LABEL_32:
}

- (void)updateOofSettingsWithParams:(id)a3 consumer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ASDaemonAccount *)self protocol];
  v9 = [v8 supportsSettingsCommand];

  if (v9)
  {
    v10 = objc_opt_new();
    [v10 setSourceApplicationBundleIdentifier:@"com.apple.mobilemail"];
    v11 = objc_opt_new();
    v12 = [v6 dictionaryRepresentationForASSettingTask];
    [v11 setObject:v12 forKeyedSubscript:kDASettingsOofKey];

    [v10 setSetters:v11];
    [v10 setDelegate:self];
    [(ASDaemonAccount *)self setConsumer:v7 forTask:v10];

    v13 = [(ASDaemonAccount *)self taskManager];
    [v13 submitQueuedTask:v10];
  }

  else
  {
    v14 = DALoggingwithCategory();
    v15 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v14, _CPLog_to_os_log_type[6]))
    {
      v16 = [(ASDaemonAccount *)self protocol];
      v17 = [v16 protocolVersion];
      v19 = 138412290;
      v20 = v17;
      _os_log_impl(&dword_0, v14, v15, "Exchange server does not support updating OOF settings. Protocol version %@", &v19, 0xCu);
    }

    v18 = [NSError errorWithDomain:DAErrorDomain code:10 userInfo:0];
    [v7 settingsRequestFinishedWithResults:0 status:10 error:v18];
  }
}

- (void)retrieveOofSettingsForConsumer:(id)a3
{
  v4 = a3;
  v5 = [(ASDaemonAccount *)self protocol];
  v6 = [v5 supportsSettingsCommand];

  if (v6)
  {
    v14 = objc_opt_new();
    [v14 setSourceApplicationBundleIdentifier:@"com.apple.mobilemail"];
    v7 = objc_opt_new();
    [v7 addObject:&off_6E4B0];
    [v14 setGetters:v7];
    [v14 setDelegate:self];
    [(ASDaemonAccount *)self setConsumer:v4 forTask:v14];

    v8 = [(ASDaemonAccount *)self taskManager];
    [v8 submitQueuedTask:v14];
  }

  else
  {
    v9 = DALoggingwithCategory();
    v10 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v9, _CPLog_to_os_log_type[6]))
    {
      v11 = [(ASDaemonAccount *)self protocol];
      v12 = [v11 protocolVersion];
      *buf = 138412290;
      v16 = v12;
      _os_log_impl(&dword_0, v9, v10, "Exchange server does not support retrieving OOF settings. Protocol version %@", buf, 0xCu);
    }

    v13 = [NSError errorWithDomain:DAErrorDomain code:10 userInfo:0];
    [v4 settingsRequestFinishedWithResults:0 status:10 error:v13];
  }
}

- (BOOL)isOofSupported
{
  if ([(ASDaemonAccount *)self isHotmailAccount])
  {
    v3 = DALoggingwithCategory();
    v4 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v3, v4))
    {
      v10 = 138412290;
      v11 = self;
      _os_log_impl(&dword_0, v3, v4, "Account %@ is a hotmail account and does not support OOF", &v10, 0xCu);
    }

    LOBYTE(v5) = 0;
  }

  else
  {
    v6 = [(ASDaemonAccount *)self protocol];
    v5 = [v6 supportsSettingsCommand];

    v3 = DALoggingwithCategory();
    v7 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v3, v7))
    {
      v8 = @"NO";
      if (v5)
      {
        v8 = @"YES";
      }

      v10 = 138412546;
      v11 = self;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_0, v3, v7, "Account %@ supports OOF: %@", &v10, 0x16u);
    }
  }

  return v5;
}

- (void)_reportFolderItemSyncSuccess:(BOOL)a3 forFolderWithID:(id)a4 withItemsCount:(unint64_t)a5
{
  v6 = a3;
  v8 = a4;
  v9 = v8;
  if (v6)
  {
    [(ASDaemonAccount *)self removeFolderIDFromPingBlacklist:v8];
    if (a5)
    {
      [(ASDaemonAccount *)self removeFromAllPingHistoryBlacklistForFolderID:v9];
    }
  }

  else
  {
    [(ASDaemonAccount *)self addFolderIDToPingBlacklist:v8];
  }
}

- (void)_reportFolderHierarchySyncSuccessWithCount:(unint64_t)a3
{
  if (a3)
  {
    if (self->_isHierarchyChangeBlackListed)
    {
      v4 = DALoggingwithCategory();
      v5 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v4, v5))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v4, v5, "Remove folder hierarchy from ping history blacklist afetr a successful folder sync", buf, 2u);
      }

      self->_isHierarchyChangeBlackListed = 0;
    }

    if (self->_hierarchyChangeHistory)
    {
      v6 = DALoggingwithCategory();
      v7 = _CPLog_to_os_log_type[7];
      if (os_log_type_enabled(v6, v7))
      {
        *v9 = 0;
        _os_log_impl(&dword_0, v6, v7, "Clearing folder hierarchy ping history after a successful folder sync", v9, 2u);
      }

      hierarchyChangeHistory = self->_hierarchyChangeHistory;
      self->_hierarchyChangeHistory = 0;
    }
  }
}

- (id)beginDownloadingAttachmentWithUUID:(id)a3 consumer:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    sub_48544();
  }

  v8 = [(ASDaemonAccount *)self protocol];
  v9 = [v8 fetchAttachmentsWithItemOperations];

  v10 = ASItemOperationsFetchAttachmentTask_ptr;
  if (!v9)
  {
    v10 = ASFetchAttachmentTask_ptr;
  }

  v11 = [objc_alloc(*v10) initForMessageUUID:v6];
  [v11 setSourceApplicationBundleIdentifier:@"com.apple.mobilecal"];
  v12 = NSTemporaryDirectory();
  v13 = [v12 stringByAppendingPathComponent:@"DAAttachmentXXXXXX"];

  v14 = strlen([v13 UTF8String]);
  v15 = malloc_type_malloc(v14 + 1, 0x100004077774924uLL);
  if (v15)
  {
    v16 = v15;
    v17 = strncpy(v15, [v13 UTF8String], v14 + 1);
    v18 = mkstemp(v17);
    v19 = [NSString stringWithUTF8String:v16];
    free(v16);
    if ((v18 & 0x80000000) == 0)
    {
      [v11 setLocalFileName:v19];
      v20 = DALoggingwithCategory();
      v21 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v20, v21))
      {
        v31 = 138412290;
        v32 = v19;
        _os_log_impl(&dword_0, v20, v21, "Downloading attachment to %@", &v31, 0xCu);
      }

      v22 = [[NSFileHandle alloc] initWithFileDescriptor:v18 closeOnDealloc:1];
      [v11 setLocalFileHandle:v22];
      v23 = +[ESDAgentManager sharedManager];
      v24 = [(ASDaemonAccount *)self accountID];
      v25 = [v23 agentWithAccountID:v24];

      [v25 prepareFetchAttachmentTask:v11];
      [v11 setDelegate:self];
      [(ASDaemonAccount *)self setConsumer:v7 forTask:v11];
      v26 = [(ASDaemonAccount *)self taskManager];
      [v26 submitQueuedTask:v11];

      v27 = [[NSNumber alloc] initWithInteger:{objc_msgSend(v11, "taskID")}];
      goto LABEL_14;
    }
  }

  else
  {
    v19 = 0;
  }

  v28 = DALoggingwithCategory();
  v29 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v28, v29))
  {
    v31 = 138412290;
    v32 = v19;
    _os_log_impl(&dword_0, v28, v29, "Couldn't create a temporary file with the format %@", &v31, 0xCu);
  }

  v22 = [NSError errorWithDomain:DAErrorDomain code:10 userInfo:0];
  [v7 downloadFinishedError:v22];
  v27 = 0;
LABEL_14:

  return v27;
}

- (void)cancelDownloadingInstance:(id)a3 error:(id)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 integerValue];
    v8 = [(ASDaemonAccount *)self taskManager];
    [v8 cancelTaskWithID:v7];
  }

  else
  {
    v8 = DALoggingwithCategory();
    v9 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v8, v9))
    {
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "'nil 'requestID' given.  Will not cancel any attachment downloading requests.", v10, 2u);
    }
  }
}

- (void)fetchAttachmentTask:(id)a3 receivedData:(id)a4 ofContentType:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 localFileHandle];
  [v11 seekToEndOfFile];
  [v11 writeData:v9];

  [v8 setLocalFileLength:{objc_msgSend(v9, "length") + objc_msgSend(v8, "localFileLength")}];
  [v8 setAttachmentContentType:v10];
  v12 = [(ASDaemonAccount *)self consumerForTask:v8];
  [v12 downloadProgressDownloadedByteCount:objc_msgSend(v9 totalByteCount:{"length"), objc_msgSend(v8, "localFileLength")}];
}

- (void)fetchAttachmentTask:(id)a3 completedWithStatus:(int64_t)a4 dataWasBase64:(BOOL)a5 error:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = +[ESDAgentManager sharedManager];
  v13 = [(ASDaemonAccount *)self accountID];
  v14 = [v12 agentWithAccountID:v13];

  v15 = dataaccess_get_global_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2BB4C;
  block[3] = &unk_6D1F0;
  v20 = v14;
  v21 = v10;
  v24 = a5;
  v22 = v11;
  v23 = a4;
  v16 = v11;
  v17 = v10;
  v18 = v14;
  dispatch_async(v15, block);
}

@end