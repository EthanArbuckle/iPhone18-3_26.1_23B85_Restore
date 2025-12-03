@interface ASDaemonAccount
+ (int64_t)_convertCalendarAvailabilityType:(char)type;
- (ASDaemonAccount)initWithBackingAccountInfo:(id)info;
- (BOOL)_clearOutInviteWithDeliveryFolderId:(id)id deliveryServerId:(id)serverId wasSoftDelete:(BOOL)delete considerInvitedToInvitations:(BOOL)invitations;
- (BOOL)_handleNameCollisionOnAddedFolder:(id)folder consumer:(id)consumer completionBlock:(id)block;
- (BOOL)_handleSuccessfulFolderChangeForFolders:(id)folders previousSyncKey:(id)key;
- (BOOL)_setLocalDisplayName:(id)name forFolder:(id)folder;
- (BOOL)addStringsToEmailForEventIAmAttending:(id)attending recipient:(id)recipient stringsToEmail:(id)email eventUUIDsToEmail:(id)toEmail externalIDs:(id)ds messageIDsToEmail:(id)dsToEmail eventsDroppedDueToAge:(id)age checkEventForNeedingInvite:(BOOL)self0;
- (BOOL)clearFolderIdsForPersistentPushWithClientID:(id)d;
- (BOOL)isOofSupported;
- (BOOL)monitorFoldersWithIDs:(id)ds;
- (BOOL)sendEmailsForCalEvents:(id)events consumer:(id)consumer;
- (BOOL)setFolderIdsForPersistentPushAdded:(id)added deleted:(id)deleted clientID:(id)d;
- (BOOL)setFolderIdsThatExternalClientsCareAboutAdded:(id)added deleted:(id)deleted foldersTag:(id)tag;
- (BOOL)shouldCancelTaskDueToOnPowerFetchMode;
- (__CFString)_pingPowerAssertionIdentifier;
- (id)_ASSyncTaskAndMeetingResponseCommandsFromDAEventActions:(id)actions meetingResponseActions:(id)responseActions emailEvents:(id)events;
- (id)_copyICSDateFromDate:(id)date timeZone:(id)zone;
- (id)_foldersToSyncGivenResults:(id)results;
- (id)_localizedStringForResponse:(int)response;
- (id)_newPolicyManager;
- (id)_parentIdFromEventId:(id)id;
- (id)_stringWithRFC822DataFromEvent:(id)event icsMethod:(int)method recipients:(id)recipients recipientBareEmails:(id)emails exceptionDate:(id)date outMessageID:(id *)d;
- (id)beginDownloadingAttachmentWithUUID:(id)d consumer:(id)consumer;
- (id)copyMessageStringWithPlainTextString:(id)string vCalMethod:(int)method vCalAttachmentData:(id)data fromAddress:(id)address toAddresses:(id)addresses date:(id)date subject:(id)subject outMessageID:(id *)self0;
- (id)requestCalendarAvailabilityForStartDate:(id)date endDate:(id)endDate ignoredEventID:(id)d addresses:(id)addresses consumer:(id)consumer;
- (id)stateString;
- (int)forwardMeeting:(id)meeting withServerId:(id)id withInstanceId:(id)instanceId withFolderId:(id)folderId toEmailAddresses:(id)addresses withAttendeeUUIDs:(id)ds consumer:(id)consumer;
- (int)performMoveRequests:(id)requests consumer:(id)consumer;
- (void)_cancelPingTask;
- (void)_enqueueNotificationWithName:(id)name sourceRunLoop:(id)loop userInfo:(id)info;
- (void)_handlePolicyUpdate;
- (void)_pollFolders;
- (void)_pruneFoldersToMonitorOfOrphanedFolders;
- (void)_reallyAttemptInvitationLinkageForMetaDatas:(id)datas deliveryIdsToClear:(id)clear deliveryIdsToSoftClear:(id)softClear inFolderWithId:(id)id callback:(id)callback;
- (void)_reallySyncLocallyChangedFolder:(id)folder consumer:(id)consumer dataclasses:(int64_t)dataclasses completionBlock:(id)block;
- (void)_refirePingWithXPCActivityDelay:(int64_t)delay withGrowthAction:(int)action;
- (void)_reissuePingFromXPCActivityWithGrowthAction:(int)action;
- (void)_reissuePingTaskWithGrowthAction:(int)action;
- (void)_reportFolderHierarchySyncSuccessWithCount:(unint64_t)count;
- (void)_reportFolderItemSyncSuccess:(BOOL)success forFolderWithID:(id)d withItemsCount:(unint64_t)count;
- (void)_respondToMeetingsForActions:(id)actions inFolderWithId:(id)id consumer:(id)consumer;
- (void)_setFolderHierarchyNeedsUpdate:(BOOL)update;
- (void)_stopMonitoringFoldersWithIds:(id)ids;
- (void)accountDidUpdateProtocolVersion;
- (void)addFolderIDToPingBlacklist:(id)blacklist;
- (void)addFolderIDToPingHistoryBlacklist:(id)blacklist;
- (void)addStringsToEmailForEventIOriginated:(id)originated deletedExceptionOccurrenceDate:(id)date stringsToEmail:(id)email eventUUIDsToEmail:(id)toEmail externalIDs:(id)ds messageIDsToEmail:(id)dsToEmail eventsDroppedDueToAge:(id)age checkEventForNeedingInvite:(BOOL)self0;
- (void)attemptInvitationLinkageForMetaDatas:(id)datas deliveryIdsToClear:(id)clear deliveryIdsToSoftClear:(id)softClear inFolderWithId:(id)id callback:(id)callback;
- (void)cancelCalendarAvailabilityRequestWithID:(id)d;
- (void)cancelDownloadingInstance:(id)instance error:(id)error;
- (void)connectionManager:(id)manager handleEvent:(int)event;
- (void)consumerFinishedInvitationActionsForEventWithUID:(id)d;
- (void)dealloc;
- (void)fetchAttachmentTask:(id)task completedWithStatus:(int64_t)status dataWasBase64:(BOOL)base64 error:(id)error;
- (void)fetchAttachmentTask:(id)task receivedData:(id)data ofContentType:(id)type;
- (void)folderLocalUpdateTask:(id)task completedWithStatus:(int64_t)status error:(id)error updatedFolder:(id)folder newSyncKey:(id)key completionBlock:(id)block;
- (void)folderSyncTask:(id)task completedWithStatus:(int64_t)status error:(id)error foldersChanged:(id)changed newSyncKey:(id)key;
- (void)meetingResponseTask:(id)task completedWithStatus:(int64_t)status error:(id)error;
- (void)messageWriter:(id)writer willEncodeHeaders:(id)headers forMimePart:(id)part;
- (void)messageWriter:(id)writer willGenerateHeadersForMimePart:(id)part;
- (void)monitorFolder:(id)folder;
- (void)pingTask:(id)task completedWithStatus:(int64_t)status error:(id)error resultFolders:(id)folders resultMaxFolders:(int)maxFolders resultHBInterval:(int)interval;
- (void)reissuePingFromTimer:(id)timer;
- (void)removeFolderIDFromPingBlacklist:(id)blacklist;
- (void)removeFromAllPingHistoryBlacklistForFolderID:(id)d;
- (void)removeFromPingHierarchyAndHistoryBlacklistForFolderID:(id)d;
- (void)resolveRecipientsTask:(id)task completedWithStatus:(int64_t)status error:(id)error queriedEmailAddressToRecpient:(id)recpient;
- (void)resumeMonitoringFolderID:(id)d;
- (void)resumeMonitoringFoldersWithIDs:(id)ds;
- (void)retrieveOofSettingsForConsumer:(id)consumer;
- (void)sendMailTask:(id)task completedWithStatus:(int64_t)status error:(id)error;
- (void)setSafeToPing:(BOOL)ping;
- (void)settingsTask:(id)task completedWithStatus:(int64_t)status error:(id)error response:(id)response;
- (void)stopMonitoringFolderWithID:(id)d;
- (void)stopMonitoringFoldersWithIDs:(id)ds;
- (void)suspendMonitoringFoldersWithIDs:(id)ds;
- (void)syncLocallyChangedFolder:(id)folder consumer:(id)consumer completionBlock:(id)block;
- (void)synchronizeNotesFolder:(id)folder noteContext:(id)context previousTag:(id)tag actions:(id)actions changeSet:(id)set notesToDeleteAfterSync:(id)sync isInitialUberSync:(BOOL)uberSync isResyncAfterConnectionFailed:(BOOL)self0 moreLocalChangesAvailable:(BOOL)self1 consumer:(id)self2;
- (void)tearDown;
- (void)updateOofSettingsWithParams:(id)params consumer:(id)consumer;
@end

@implementation ASDaemonAccount

- (ASDaemonAccount)initWithBackingAccountInfo:(id)info
{
  infoCopy = info;
  v32.receiver = self;
  v32.super_class = ASDaemonAccount;
  v5 = [(ASDaemonAccount *)&v32 initWithBackingAccountInfo:infoCopy];
  if (v5)
  {
    v6 = [PCConnectionManager alloc];
    v7 = dataaccess_get_global_queue();
    scheduleIdentifier = [(ASDaemonAccount *)v5 scheduleIdentifier];
    v9 = [v6 initWithConnectionClass:1 delegate:v5 delegateQueue:v7 serviceIdentifier:scheduleIdentifier];
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
    accountID = [(ASDaemonAccount *)v5 accountID];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1A7C8;
    v30[3] = &unk_6D050;
    objc_copyWeak(&v31, buf);
    v27 = [v25 addObserverForName:ASPolicyKeyChangedNotification object:accountID queue:0 usingBlock:v30];

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_delayedPingTimer);
  [WeakRetained invalidate];

  objc_storeWeak(&selfCopy->_delayedPingTimer, 0);
  allKeys = [(NSMutableDictionary *)selfCopy->_foldersToMonitorById allKeys];
  v6 = [NSArray arrayWithArray:allKeys];

  objc_sync_exit(selfCopy);
  [(ASDaemonAccount *)selfCopy _stopMonitoringFoldersWithIds:v6];
  v7 = DALoggingwithCategory();
  v8 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v7, v8))
  {
    v11 = 138412290;
    _pingPowerAssertionIdentifier = [(ASDaemonAccount *)selfCopy _pingPowerAssertionIdentifier];
    _os_log_impl(&dword_0, v7, v8, "Release power assertion %@", &v11, 0xCu);
  }

  [(ASDaemonAccount *)selfCopy _pingPowerAssertionIdentifier];
  CPSetPowerAssertionWithIdentifier();
  [(ASDaemonAccount *)selfCopy setPingPowerAssertionUUID:0];
  [(ASDaemonAccount *)selfCopy _cancelPingTask];
  v9 = selfCopy;
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
    askedToCancelWhileModal = [v9 askedToCancelWhileModal];

    if ((askedToCancelWhileModal & 1) == 0)
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
  persistentUUID = [(ASDaemonAccount *)self persistentUUID];
  v7 = [v3 initWithAccountPersistentUUID:persistentUUID];

  policyValues = [v7 policyValues];
  v6 = [policyValues objectForKeyedSubscript:RequireManualSyncWhenRoaming];
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
  stateString = [(ASDaemonAccount *)&v10 stateString];
  v4 = [stateString mutableCopy];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [v4 appendFormat:@"Last ping HBI %d\n", selfCopy->_lastPingHeartBeat];
  v6 = sub_1B010(selfCopy->_foldersToMonitorById);
  [v4 appendFormat:@"_foldersToMonitorById: %@\n", v6];

  allObjects = [(NSMutableSet *)selfCopy->_folderIdsWithUnacknowledgedPings allObjects];
  v8 = [allObjects componentsJoinedByString:{@", "}];
  [v4 appendFormat:@"_folderIdsWithUnacknowledgedPings: %@\n", v8];

  [v4 appendFormat:@"_busyFolderIds: %@\n", selfCopy->_busyFolderIds];
  [v4 appendFormat:@"_pingBlacklistFolderIds: %@\n", selfCopy->_pingBlacklistFolderIds];
  [v4 appendFormat:@"_pingHistoryBlacklistFolderIds: %@\n", selfCopy->_pingHistoryBlacklistFolderIds];
  objc_sync_exit(selfCopy);

  return v4;
}

- (void)addFolderIDToPingBlacklist:(id)blacklist
{
  blacklistCopy = blacklist;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    v8 = 138412290;
    v9 = blacklistCopy;
    _os_log_impl(&dword_0, v5, v6, "Folder %@ added to the ping blacklist", &v8, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_pingBlacklistFolderIds addObject:blacklistCopy];
  objc_sync_exit(selfCopy);
}

- (void)addFolderIDToPingHistoryBlacklist:(id)blacklist
{
  blacklistCopy = blacklist;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v5, v6))
  {
    v8 = 138412290;
    v9 = blacklistCopy;
    _os_log_impl(&dword_0, v5, v6, "Folder %@ added to the ping history blacklist", &v8, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_pingHistoryBlacklistFolderIds addObject:blacklistCopy];
  objc_sync_exit(selfCopy);
}

- (void)removeFolderIDFromPingBlacklist:(id)blacklist
{
  blacklistCopy = blacklist;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(NSMutableSet *)selfCopy->_pingBlacklistFolderIds containsObject:blacklistCopy])
  {
    v6 = DALoggingwithCategory();
    v7 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v6, v7))
    {
      v8 = 138412290;
      v9 = blacklistCopy;
      _os_log_impl(&dword_0, v6, v7, "Folder %@ removed from the ping blacklist", &v8, 0xCu);
    }

    [(NSMutableSet *)selfCopy->_pingBlacklistFolderIds removeObject:blacklistCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)removeFromAllPingHistoryBlacklistForFolderID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_isHierarchyChangeBlackListed)
  {
    v6 = DALoggingwithCategory();
    v7 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v6, v7))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_0, v6, v7, "Remove folder hierarchy from ping history blacklist", &v20, 2u);
    }

    selfCopy->_isHierarchyChangeBlackListed = 0;
  }

  if (selfCopy->_hierarchyChangeHistory)
  {
    v8 = DALoggingwithCategory();
    v9 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v8, v9))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_0, v8, v9, "Clearing folder hierarchy ping history, after a successful sync", &v20, 2u);
    }

    hierarchyChangeHistory = selfCopy->_hierarchyChangeHistory;
    selfCopy->_hierarchyChangeHistory = 0;
  }

  if (selfCopy->_isNoChangeBlackListed)
  {
    v11 = DALoggingwithCategory();
    v12 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v11, v12))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_0, v11, v12, "Remove from ping no change blacklist", &v20, 2u);
    }

    selfCopy->_isNoChangeBlackListed = 0;
  }

  if (selfCopy->_noChangeHistory)
  {
    v13 = DALoggingwithCategory();
    v14 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v13, v14))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_0, v13, v14, "Clearing ping no change history, after a successful sync", &v20, 2u);
    }

    noChangeHistory = selfCopy->_noChangeHistory;
    selfCopy->_noChangeHistory = 0;
  }

  if (dCopy)
  {
    if ([(NSMutableSet *)selfCopy->_pingHistoryBlacklistFolderIds containsObject:dCopy])
    {
      v16 = DALoggingwithCategory();
      v17 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v16, v17))
      {
        v20 = 138412290;
        v21 = dCopy;
        _os_log_impl(&dword_0, v16, v17, "Folder %@ removed from the ping history blacklist", &v20, 0xCu);
      }

      [(NSMutableSet *)selfCopy->_pingHistoryBlacklistFolderIds removeObject:dCopy];
    }

    v18 = DALoggingwithCategory();
    v19 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v18, v19))
    {
      v20 = 138412290;
      v21 = dCopy;
      _os_log_impl(&dword_0, v18, v19, "Clearing folder %@ from ping history, after it has a successful sync", &v20, 0xCu);
    }

    [(NSMutableDictionary *)selfCopy->_folderChangeHistory removeObjectForKey:dCopy];
  }

  objc_sync_exit(selfCopy);
}

- (void)removeFromPingHierarchyAndHistoryBlacklistForFolderID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_isHierarchyChangeBlackListed)
  {
    v6 = DALoggingwithCategory();
    v7 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v6, v7))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_0, v6, v7, "Remove folder hierarchy from ping history blacklist", &v15, 2u);
    }

    selfCopy->_isHierarchyChangeBlackListed = 0;
  }

  if (selfCopy->_hierarchyChangeHistory)
  {
    v8 = DALoggingwithCategory();
    v9 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v8, v9))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_0, v8, v9, "Clearing folder hierarchy ping history, after a successful sync", &v15, 2u);
    }

    hierarchyChangeHistory = selfCopy->_hierarchyChangeHistory;
    selfCopy->_hierarchyChangeHistory = 0;
  }

  if (dCopy)
  {
    if ([(NSMutableSet *)selfCopy->_pingHistoryBlacklistFolderIds containsObject:dCopy])
    {
      v11 = DALoggingwithCategory();
      v12 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v11, v12))
      {
        v15 = 138412290;
        v16 = dCopy;
        _os_log_impl(&dword_0, v11, v12, "Folder %@ removed from the ping history blacklist", &v15, 0xCu);
      }

      [(NSMutableSet *)selfCopy->_pingHistoryBlacklistFolderIds removeObject:dCopy];
    }

    v13 = DALoggingwithCategory();
    v14 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v13, v14))
    {
      v15 = 138412290;
      v16 = dCopy;
      _os_log_impl(&dword_0, v13, v14, "Clearing folder %@ from ping history, after it has a successful sync", &v15, 0xCu);
    }

    [(NSMutableDictionary *)selfCopy->_folderChangeHistory removeObjectForKey:dCopy];
  }

  objc_sync_exit(selfCopy);
}

- (id)_foldersToSyncGivenResults:(id)results
{
  resultsCopy = results;
  v5 = [[NSMutableSet alloc] initWithArray:resultsCopy];
  v6 = OBJC_IVAR___DAAccount__taskManager;
  queuedTasks = [*&self->ASAccount_opaque[OBJC_IVAR___DAAccount__taskManager] queuedTasks];
  objectEnumerator = [queuedTasks objectEnumerator];

  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    v10 = nextObject;
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        folderID = [v10 folderID];
        [v5 removeObject:folderID];
      }

      nextObject2 = [objectEnumerator nextObject];

      v10 = nextObject2;
    }

    while (nextObject2);
  }

  activeQueuedTask = [*&self->ASAccount_opaque[v6] activeQueuedTask];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    folderID2 = [activeQueuedTask folderID];
    [v5 removeObject:folderID2];
  }

  allObjects = [v5 allObjects];

  return allObjects;
}

- (void)_setFolderHierarchyNeedsUpdate:(BOOL)update
{
  updateCopy = update;
  v7 = DAAccountFolderHierarchyNeedsUpdateNotification;
  if (updateCopy)
  {
    v5 = DAAccountFolderHierarchyNeedsUpdateRequireChangedFoldersNotification;

    v7 = v5;
  }

  v6 = +[DARunLoopRegistry sharedRunLoop];
  [(ASDaemonAccount *)self _enqueueNotificationWithName:v7 sourceRunLoop:v6 userInfo:0];
}

- (BOOL)_handleSuccessfulFolderChangeForFolders:(id)folders previousSyncKey:(id)key
{
  foldersCopy = folders;
  keyCopy = key;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  obj = foldersCopy;
  v6 = [foldersCopy countByEnumeratingWithState:&v118 objects:v133 count:16];
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
          changeType = [v11 changeType];
          *buf = 138412546;
          v123 = v11;
          v124 = 2048;
          v125 = changeType;
          _os_log_impl(&dword_0, v12, v9, "reacting to changed folder %@ with change type %lu", buf, 0x16u);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v118 objects:v133 count:16];
    }

    while (v7);
  }

  v14 = keyCopy;
  if (keyCopy)
  {
    folderHierarchy = [(ASDaemonAccount *)self folderHierarchy];
    foldersTag = [folderHierarchy foldersTag];
    if (foldersTag)
    {
      v17 = foldersTag;
      folderHierarchy2 = [(ASDaemonAccount *)self folderHierarchy];
      foldersTag2 = [folderHierarchy2 foldersTag];
      v20 = [keyCopy isEqualToString:foldersTag2];

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
        serverID = [v27 serverID];

        if (serverID && ([v27 changeType] == &dword_0 + 2 || objc_msgSend(v27, "changeType") == &dword_4 + 3))
        {
          folderHierarchy3 = [(ASDaemonAccount *)self folderHierarchy];
          serverID2 = [v27 serverID];
          v31 = [folderHierarchy3 foldersUnderFolderWithID:serverID2];
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

              serverID3 = [*(*(&v106 + 1) + 8 * m) serverID];
              serverID4 = [v35 serverID];
              v43 = [serverID3 isEqualToString:serverID4];

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

  folderHierarchy4 = [(ASDaemonAccount *)self folderHierarchy];
  folderCache = [folderHierarchy4 folderCache];
  v46 = [folderCache mutableCopy];

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
        serverID5 = [v57 serverID];
        [v50 setValue:v57 forKey:serverID5];

        serverID6 = [v57 serverID];
        displayName = [v57 displayName];
        [v51 setValue:serverID6 forKey:displayName];
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
        serverID7 = [v65 serverID];
        if (serverID7)
        {
          v67 = serverID7;
          serverID8 = [v65 serverID];
          parentID = [v65 parentID];
          v70 = [serverID8 isEqualToString:parentID];

          if (v70)
          {
            serverID11 = DALoggingwithCategory();
            if (os_log_type_enabled(serverID11, typea))
            {
              displayName2 = [v65 displayName];
              serverID9 = [v65 serverID];
              parentID2 = [v65 parentID];
              *buf = 138412802;
              v123 = displayName2;
              v124 = 2112;
              v125 = serverID9;
              v126 = 2112;
              v127 = parentID2;
              _os_log_impl(&dword_0, serverID11, typea, "Discarding folder [%@] with the same server ID [%@] and parent ID [%@]", buf, 0x20u);
            }

            goto LABEL_78;
          }
        }

        serverID10 = [v65 serverID];

        if (!serverID10)
        {
          continue;
        }

        changeType2 = [v65 changeType];
        if (changeType2 <= 1)
        {
          if (changeType2)
          {
            if (changeType2 != &dword_0 + 1)
            {
              goto LABEL_77;
            }

            serverID11 = [v65 serverID];
            v77 = [v50 objectForKeyedSubscript:serverID11];

            if (!v77)
            {
              displayName3 = [v65 displayName];
              v79 = [v51 objectForKeyedSubscript:displayName3];

              if (v79)
              {
                v80 = v79;

                serverID11 = v80;
              }
            }
          }

          else
          {
            serverID11 = [v65 serverID];
          }

          [v50 setObject:v65 forKeyedSubscript:serverID11];
        }

        else
        {
          if (changeType2 != &dword_0 + 2)
          {
            if (changeType2 == &dword_0 + 3)
            {
              continue;
            }

            if (changeType2 != &dword_4 + 3)
            {
LABEL_77:
              serverID11 = +[NSAssertionHandler currentHandler];
              -[NSObject handleFailureInMethod:object:file:lineNumber:description:](serverID11, "handleFailureInMethod:object:file:lineNumber:description:", a2, self, @"ASDaemonAccount.m", 467, @"Got unexpected change type %ld", [v65 changeType]);
              goto LABEL_78;
            }
          }

          serverID11 = [v65 serverID];
          [v50 removeObjectForKey:serverID11];
        }

LABEL_78:
      }

      v62 = [v97 countByEnumeratingWithState:&v98 objects:v128 count:16];
    }

    while (v62);
  }

  allValues = [v50 allValues];
  v21 = [allValues count] != 0;
  v14 = keyCopy;
  [v87 setValue:keyCopy forKey:@"ASFoldersSyncKey"];
  [v87 setValue:allValues forKey:@"ASFolders"];
  v82 = DALoggingwithCategory();
  if (os_log_type_enabled(v82, v86))
  {
    *buf = 138412290;
    v123 = v87;
    _os_log_impl(&dword_0, v82, v86, "Resulting folderCache %@", buf, 0xCu);
  }

  folderHierarchy5 = [(ASDaemonAccount *)self folderHierarchy];
  [folderHierarchy5 setFolderCache:v87];

LABEL_84:
  return v21;
}

- (BOOL)_setLocalDisplayName:(id)name forFolder:(id)folder
{
  nameCopy = name;
  folderCopy = folder;
  dataclass = [folderCopy dataclass];
  [folderCopy localID];
  if (dataclass == (&dword_0 + 1))
  {
    LOBYTE(v19) = 1;
  }

  else
  {
    if (dataclass == &dword_10 || dataclass == &dword_4)
    {
      v9 = +[ASLocalDBHelper sharedInstance];
      accountID = [(ASDaemonAccount *)self accountID];
      changeTrackingID = [(ASDaemonAccount *)self changeTrackingID];
      [v9 calOpenDatabaseForAccountID:accountID clientID:changeTrackingID];

      accountID2 = [(ASDaemonAccount *)self accountID];
      displayName = [v9 calDatabaseForAccountID:accountID2];

      v14 = CalDatabaseCopyCalendarWithUID();
      if (!v14)
      {
        v19 = 0;
LABEL_18:
        accountID3 = [(ASDaemonAccount *)self accountID];
        [v9 calCloseDatabaseForAccountID:accountID3 save:v19];

        goto LABEL_19;
      }

      v15 = v14;
      v16 = CalCalendarCopyTitle();
      if (!v16)
      {
        displayName = [folderCopy displayName];
        if (!displayName)
        {
          goto LABEL_9;
        }
      }

      displayName2 = [folderCopy displayName];
      v18 = [v16 isEqualToString:displayName2];

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
      v25 = dataclass;
      _os_log_impl(&dword_0, v20, v21, "No support for locally modifying containers of dataclass %lx", &v24, 0xCu);
    }

    LOBYTE(v19) = 0;
  }

LABEL_19:

  return v19;
}

- (void)_pruneFoldersToMonitorOfOrphanedFolders
{
  folderHierarchy = [(ASDaemonAccount *)self folderHierarchy];
  folderCache = [folderHierarchy folderCache];

  v5 = [folderCache objectForKeyedSubscript:@"ASFolders"];
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

        serverID = [*(*(&v24 + 1) + 8 * v10) serverID];
        if (serverID)
        {
          [v6 addObject:serverID];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  allKeys = [(NSMutableDictionary *)selfCopy->_foldersToMonitorById allKeys];
  v14 = [NSArray arrayWithArray:allKeys];

  objc_sync_exit(selfCopy);
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
          [(ASDaemonAccount *)selfCopy stopMonitoringFolderWithID:v19, v20];
        }

        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v16);
  }
}

- (void)folderSyncTask:(id)task completedWithStatus:(int64_t)status error:(id)error foldersChanged:(id)changed newSyncKey:(id)key
{
  taskCopy = task;
  errorCopy = error;
  changedCopy = changed;
  keyCopy = key;
  if ([(ASDaemonAccount *)self isGoogleAccount])
  {
    domain = [errorCopy domain];
    if ([domain isEqualToString:ASHTTPConnectionErrorDomain] && objc_msgSend(errorCopy, "code") == &stru_158.reloff + 3)
    {
      backingAccountInfo = [(ASDaemonAccount *)self backingAccountInfo];
      mcBackingPayload = [backingAccountInfo mcBackingPayload];

      if (!mcBackingPayload)
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

  v22 = [(ASDaemonAccount *)self consumerForTask:taskCopy];
  ADClientAddValueForScalarKey();
  if (status <= 0x21)
  {
    if (((1 << status) & 0x2000002E0) != 0)
    {
LABEL_16:
      [(ASDaemonAccount *)self _pruneFoldersToMonitorOfOrphanedFolders];
      context = [taskCopy context];
      [v22 folderHierarchyFailedToUpdate:context withStatus:status andError:errorCopy];

      goto LABEL_17;
    }

    if (((1 << status) & 0x500) != 0)
    {
      folderHierarchy = [(ASDaemonAccount *)self folderHierarchy];
      [folderHierarchy blowAwayFolderCache];

      context2 = [taskCopy context];
      [(ASDaemonAccount *)self syncFolderHierarchyWithConsumer:v22 requireChangedFolders:0 context:context2];

      v25 = 0;
      goto LABEL_24;
    }

    if (status == 3)
    {
      v26 = +[NSAssertionHandler currentHandler];
      [v26 handleFailureInMethod:a2 object:self file:@"ASDaemonAccount.m" lineNumber:622 description:{@"We should not get an ObjectAlreadyExists error for anything but a FolderCreate task.  Task was %@", taskCopy}];

      [(ASDaemonAccount *)self _pruneFoldersToMonitorOfOrphanedFolders];
      goto LABEL_17;
    }
  }

  if ((status + 1) < 2)
  {
    goto LABEL_16;
  }

  if (status != 2)
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
      statusCopy = status;
      _os_log_impl(&dword_0, v37, v38, "%@ Unrecoverable error %ld", buf, 0x16u);
    }

    exit(-1);
  }

  ADClientAddValueForScalarKey();
  if (![(ASDaemonAccount *)self _handleSuccessfulFolderChangeForFolders:changedCopy previousSyncKey:keyCopy])
  {
    v25 = 1;
LABEL_24:
    [(ASDaemonAccount *)self setSafeToPing:0];
    selfCopy = self;
    objc_sync_enter(selfCopy);
    allKeys = [(NSMutableDictionary *)selfCopy->_foldersToMonitorById allKeys];
    v32 = [NSArray arrayWithArray:allKeys];

    objc_sync_exit(selfCopy);
    [(ASDaemonAccount *)selfCopy _stopMonitoringFoldersWithIds:v32];

    if (!v25)
    {
      goto LABEL_17;
    }

    goto LABEL_25;
  }

  [(ASDaemonAccount *)self _pruneFoldersToMonitorOfOrphanedFolders];
LABEL_25:
  context3 = [taskCopy context];
  [v22 folderHierarchySuccessfullyUpdated:context3 withNumChangedFolders:{objc_msgSend(changedCopy, "count")}];

  v34 = DALoggingwithCategory();
  v35 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v34, v35))
  {
    v36 = [changedCopy count];
    *buf = 134217984;
    v42 = v36;
    _os_log_impl(&dword_0, v34, v35, "Folder change count: %lu", buf, 0xCu);
  }

  -[ASDaemonAccount _reportFolderHierarchySyncSuccessWithCount:](self, "_reportFolderHierarchySyncSuccessWithCount:", [changedCopy count]);
LABEL_17:
  [(ASDaemonAccount *)self removeConsumerForTask:taskCopy];
  dataclasses = [taskCopy dataclasses];
  if (dataclasses)
  {
    v29 = +[DALocalDBGateKeeper sharedGateKeeper];
    [v29 relinquishLocksForWaiter:self dataclasses:dataclasses moreComing:0];
  }
}

- (BOOL)_handleNameCollisionOnAddedFolder:(id)folder consumer:(id)consumer completionBlock:(id)block
{
  folderCopy = folder;
  consumerCopy = consumer;
  blockCopy = block;
  displayName = [folderCopy displayName];
  v12 = [displayName rangeOfString:@" " options:4];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL || (v14 = v12, v15 = &v12[v13], &v12[v13] >= [displayName length]) || (objc_msgSend(displayName, "substringFromIndex:", v15), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "intValue"), v16, !v17))
  {
    v20 = [displayName stringByAppendingFormat:@" 1"];
  }

  else
  {
    v18 = v17;
    v19 = [displayName substringToIndex:v14];
    v20 = [v19 stringByAppendingFormat:@" %lu", v18 + 1];
  }

  v21 = [(ASDaemonAccount *)self _setLocalDisplayName:v20 forFolder:folderCopy];
  if (v21)
  {
    v22 = [ASFolder alloc];
    selfCopy = self;
    v23 = blockCopy;
    v24 = consumerCopy;
    folderType = [folderCopy folderType];
    serverID = [folderCopy serverID];
    parentID = [folderCopy parentID];
    localID = [folderCopy localID];
    v29 = folderType;
    consumerCopy = v24;
    blockCopy = v23;
    v30 = [v22 initWithFolderType:v29 serverID:serverID parentID:parentID displayName:v20 localID:localID];

    [v30 setChangeType:{objc_msgSend(folderCopy, "changeType")}];
    [v30 setRenameOnCollision:{objc_msgSend(v30, "renameOnCollision")}];
    [(ASDaemonAccount *)selfCopy syncLocallyChangedFolder:v30 consumer:consumerCopy completionBlock:v23];
  }

  return v21;
}

- (void)folderLocalUpdateTask:(id)task completedWithStatus:(int64_t)status error:(id)error updatedFolder:(id)folder newSyncKey:(id)key completionBlock:(id)block
{
  taskCopy = task;
  errorCopy = error;
  folderCopy = folder;
  keyCopy = key;
  blockCopy = block;
  v18 = [(ASDaemonAccount *)self consumerForTask:taskCopy];
  if (status <= 0x21)
  {
    if (((1 << status) & 0x200001AD0) != 0)
    {
LABEL_13:
      [(ASDaemonAccount *)self _pruneFoldersToMonitorOfOrphanedFolders];
      goto LABEL_14;
    }

    if (((1 << status) & 0x520) != 0)
    {
      folderHierarchy = [(ASDaemonAccount *)self folderHierarchy];
      [folderHierarchy blowAwayFolderCache];

      [(ASDaemonAccount *)self _setFolderHierarchyNeedsUpdate:0];
      v34 = 0;
      v36 = 1;
      goto LABEL_5;
    }

    if (status == 3)
    {
      if ([folderCopy renameOnCollision] && -[ASDaemonAccount _handleNameCollisionOnAddedFolder:consumer:completionBlock:](self, "_handleNameCollisionOnAddedFolder:consumer:completionBlock:", folderCopy, v18, blockCopy))
      {
        [(ASDaemonAccount *)self _pruneFoldersToMonitorOfOrphanedFolders];
        goto LABEL_15;
      }

      goto LABEL_13;
    }
  }

  if ((status + 1) < 2)
  {
    goto LABEL_13;
  }

  if (status != 2)
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
      statusCopy = status;
      _os_log_impl(&dword_0, v30, v31, "%@ Unrecoverable error %ld", buf, 0x16u);
    }

    exit(-1);
  }

  v42 = folderCopy;
  v25 = [NSArray arrayWithObjects:&v42 count:1];
  v26 = [(ASDaemonAccount *)self _handleSuccessfulFolderChangeForFolders:v25 previousSyncKey:keyCopy];

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allKeys = [(NSMutableDictionary *)selfCopy->_foldersToMonitorById allKeys];
  v22 = [NSArray arrayWithArray:allKeys];

  objc_sync_exit(selfCopy);
  [(ASDaemonAccount *)selfCopy _stopMonitoringFoldersWithIds:v22];

  if (!v34)
  {
    if (!v36)
    {
      goto LABEL_15;
    }

LABEL_14:
    [v18 localChangeForFolder:folderCopy finishedWithStatus:status andError:errorCopy completionBlock:blockCopy];
    goto LABEL_15;
  }

LABEL_21:
  v27 = DALoggingwithCategory();
  v28 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v27, v28))
  {
    folderHierarchy2 = [(ASDaemonAccount *)self folderHierarchy];
    [folderHierarchy2 folderCache];
    v39 = *buf = 138412290;
    v35 = v39;
    _os_log_impl(&dword_0, v27, v28, "New folder cache due to local update: %@", buf, 0xCu);
  }

  [v18 localChangeForFolder:folderCopy finishedWithStatus:2 andError:0 completionBlock:blockCopy];
  if (v36)
  {
    goto LABEL_14;
  }

LABEL_15:
  [(ASDaemonAccount *)self removeConsumerForTask:taskCopy];
  dataclasses = [taskCopy dataclasses];
  if (dataclasses)
  {
    v24 = +[DALocalDBGateKeeper sharedGateKeeper];
    [v24 relinquishLocksForWaiter:self dataclasses:dataclasses moreComing:0];
  }
}

- (void)_reallySyncLocallyChangedFolder:(id)folder consumer:(id)consumer dataclasses:(int64_t)dataclasses completionBlock:(id)block
{
  folderCopy = folder;
  consumerCopy = consumer;
  blockCopy = block;
  folderHierarchy = [(ASDaemonAccount *)self folderHierarchy];
  foldersTag = [folderHierarchy foldersTag];
  v15 = [ASFolderLocalUpdateTask taskWithFolder:folderCopy previousSyncKey:foldersTag completionBlock:blockCopy];

  dataclass = [folderCopy dataclass];
  if (dataclass > 15)
  {
    if (dataclass == &dword_10)
    {
      v17 = @"com.apple.reminder";
      goto LABEL_13;
    }

    if (dataclass == &stru_20)
    {
      v17 = @"com.apple.mobilenotes";
      goto LABEL_13;
    }
  }

  else
  {
    if (dataclass == (&dword_0 + 2))
    {
      v17 = @"com.apple.MobileAddressBook";
      goto LABEL_13;
    }

    if (dataclass == &dword_4)
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
    dataclass2 = [folderCopy dataclass];
    _os_log_impl(&dword_0, v18, v19, "Unrecognized folder dataclass: %ld", &v21, 0xCu);
  }

LABEL_14:
  [v15 setDataclasses:dataclasses];
  [v15 setDelegate:self];
  if (consumerCopy)
  {
    [(ASDaemonAccount *)self setConsumer:consumerCopy forTask:v15];
    taskManager = [(ASDaemonAccount *)self taskManager];
    [taskManager submitExclusiveTask:v15];
  }

  else
  {
    taskManager = [(ASDaemonAccount *)self taskManager];
    [taskManager submitIndependentTask:v15];
  }
}

- (void)syncLocallyChangedFolder:(id)folder consumer:(id)consumer completionBlock:(id)block
{
  folderCopy = folder;
  consumerCopy = consumer;
  blockCopy = block;
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
    v14 = folderCopy;
    v15 = consumerCopy;
    v17 = v11;
    v16 = blockCopy;
    [v12 registerWaiter:self forDataclassLocks:v11 completionHandler:v13];
  }

  else
  {
    [(ASDaemonAccount *)self _reallySyncLocallyChangedFolder:folderCopy consumer:consumerCopy dataclasses:0 completionBlock:blockCopy];
  }
}

- (void)_refirePingWithXPCActivityDelay:(int64_t)delay withGrowthAction:(int)action
{
  v7 = +[NSThread currentThread];
  isMainThread = [v7 isMainThread];

  if ((isMainThread & 1) == 0)
  {
    sub_4828C();
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v9, XPC_ACTIVITY_DELAY, delay);
  xpc_dictionary_set_BOOL(v9, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_string(v9, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(v9, XPC_ACTIVITY_REPEATING, 0);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_hasScheduledPingXPCActivity)
  {
    selfCopy->_hasScheduledPingXPCActivity = 1;
    objc_initWeak(&location, selfCopy);
    v11 = dataaccess_get_global_queue();
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1E26C;
    v12[3] = &unk_6D130;
    v13 = v9;
    objc_copyWeak(&v14, &location);
    actionCopy = action;
    dispatch_async(v11, v12);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(selfCopy);
}

- (void)setSafeToPing:(BOOL)ping
{
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    *v8 = 0;
    _os_log_impl(&dword_0, v5, v6, "Invoking setSafeToPing", v8, 2u);
  }

  self->_safeToPing = ping;
  [(ASDaemonAccount *)self _cancelPingTask];
  LODWORD(v7) = 2.0;
  [(ASDaemonAccount *)self _refirePingAfterDelay:2 withGrowthAction:v7];
}

- (void)pingTask:(id)task completedWithStatus:(int64_t)status error:(id)error resultFolders:(id)folders resultMaxFolders:(int)maxFolders resultHBInterval:(int)interval
{
  taskCopy = task;
  errorCopy = error;
  foldersCopy = folders;
  v12 = DALoggingwithCategory();
  type = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v12, type))
  {
    WeakRetained = objc_loadWeakRetained(&self->_pingTask);
    *buf = 138412546;
    statusCopy4 = taskCopy;
    v161 = 2112;
    v162 = WeakRetained;
    _os_log_impl(&dword_0, v12, type, "ping task is %@, and _pingTask task is %@. They should be the same.", buf, 0x16u);
  }

  v14 = objc_loadWeakRetained(&self->_pingTask);
  v15 = v14 == taskCopy;

  v16 = DALoggingwithCategory();
  folders2 = v16;
  if (!v15)
  {
    if (os_log_type_enabled(v16, type))
    {
      *buf = 138412290;
      statusCopy4 = taskCopy;
      _os_log_impl(&dword_0, &folders2->super, type, "Ignoring response for old ping task %@", buf, 0xCu);
    }

    goto LABEL_191;
  }

  v18 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v16, v18))
  {
    *buf = 134218240;
    statusCopy4 = status;
    v161 = 1024;
    LODWORD(v162) = interval;
    _os_log_impl(&dword_0, &folders2->super, v18, "Ping task status %ld, resultHBInterval: %d", buf, 0x12u);
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
  if (status <= 11)
  {
    if (status <= 0)
    {
      if (status == -2)
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
        if (status == -1)
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
          if (status)
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

    if (status == 1 || status == 5 || status == 9)
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
      statusCopy4 = status;
      _os_log_impl(&dword_0, v95, v96, "PingTask: unhandled status of %ld", buf, 0xCu);
    }

    goto LABEL_120;
  }

  if (status <= 50)
  {
    if (status == 12)
    {
      v74 = DALoggingwithCategory();
      if (os_log_type_enabled(v74, v128))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v74, v128, "Received Ping response requiring folder hierarchy sync.  Gonna update folder hierarchy now", buf, 2u);
      }

      [(ASDaemonAccount *)self setSafeToPing:0];
      [(ASDaemonAccount *)self _setFolderHierarchyNeedsUpdate:0];
      selfCopy = self;
      objc_sync_enter(selfCopy);
      if (selfCopy->_hierarchyChangeHistory)
      {
        hierarchyChangeHistory = +[NSDate date];
        startTime = [(ASFolderChangedHistory *)selfCopy->_hierarchyChangeHistory startTime];
        [hierarchyChangeHistory timeIntervalSinceDate:startTime];
        v79 = v78 > 600.0;

        if (v79)
        {
          v80 = DALoggingwithCategory();
          if (os_log_type_enabled(v80, type))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v80, type, "Refresh ping history for folder hierarchy. Discard old data.", buf, 2u);
          }

          [(ASFolderChangedHistory *)selfCopy->_hierarchyChangeHistory setCount:1];
          [(ASFolderChangedHistory *)selfCopy->_hierarchyChangeHistory setStartTime:hierarchyChangeHistory];
        }

        else
        {
          [(ASFolderChangedHistory *)selfCopy->_hierarchyChangeHistory setCount:[(ASFolderChangedHistory *)selfCopy->_hierarchyChangeHistory count]+ 1];
          v101 = DALoggingwithCategory();
          if (os_log_type_enabled(v101, type))
          {
            v102 = [(ASFolderChangedHistory *)selfCopy->_hierarchyChangeHistory count];
            *buf = 67109120;
            LODWORD(statusCopy4) = v102;
            _os_log_impl(&dword_0, v101, type, "Update ping history for folder hierarchy to count %d", buf, 8u);
          }

          if ([(ASFolderChangedHistory *)selfCopy->_hierarchyChangeHistory count]>= 11)
          {
            v103 = DALoggingwithCategory();
            v104 = _CPLog_to_os_log_type[3];
            if (os_log_type_enabled(v103, v104))
            {
              startTime2 = [(ASFolderChangedHistory *)selfCopy->_hierarchyChangeHistory startTime];
              *buf = 138412290;
              statusCopy4 = startTime2;
              _os_log_impl(&dword_0, v103, v104, "Folder hierarchy has more than 10 changes since %@ in ping history. Adding it to black list. User must manually refresh to get it to push again.", buf, 0xCu);
            }

            selfCopy->_isHierarchyChangeBlackListed = 1;
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
        hierarchyChangeHistory = selfCopy->_hierarchyChangeHistory;
        selfCopy->_hierarchyChangeHistory = v98;
      }

      objc_sync_exit(selfCopy);
      goto LABEL_139;
    }

    if (status != 49)
    {
      if (status == 50)
      {
        ADClientAddValueForScalarKey();
        v126 = foldersCopy;
        if (!v126 || (v23 = v126, ![v126 count]))
        {
          v23 = objc_opt_new();
          folders = [taskCopy folders];
          allObjects = [folders allObjects];

          v147 = 0u;
          v148 = 0u;
          v145 = 0u;
          v146 = 0u;
          v26 = allObjects;
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

                serverID = [*(*(&v145 + 1) + 8 * i) serverID];
                [v23 addObject:serverID];
              }

              v27 = [v26 countByEnumeratingWithState:&v145 objects:v157 count:16];
            }

            while (v27);
          }
        }

        selfCopy2 = self;
        objc_sync_enter(selfCopy2);
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
              v38 = [(NSMutableDictionary *)selfCopy2->_folderChangeHistory objectForKey:v37];
              v39 = v38;
              if (v38)
              {
                [(ASFolderChangedHistory *)v38 setCount:[(ASFolderChangedHistory *)v38 count]+ 1];
                v40 = DALoggingwithCategory();
                if (os_log_type_enabled(v40, type))
                {
                  v41 = [(ASFolderChangedHistory *)v39 count];
                  *buf = 138412546;
                  statusCopy4 = v37;
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
                    statusCopy4 = v37;
                    _os_log_impl(&dword_0, v42, v35, "Folder %@ has more than 5 changes in ping history, without a successful sync. Adding it to black list. User must manually refresh to get it to push again.", buf, 0xCu);
                  }

                  [(ASDaemonAccount *)selfCopy2 addFolderIDToPingHistoryBlacklist:v37];
                }
              }

              else
              {
                v43 = DALoggingwithCategory();
                if (os_log_type_enabled(v43, type))
                {
                  *buf = 138412290;
                  statusCopy4 = v37;
                  _os_log_impl(&dword_0, v43, type, "Create ping history for folder %@.", buf, 0xCu);
                }

                v39 = [[ASFolderChangedHistory alloc] initWithCount:1];
                [(NSMutableDictionary *)selfCopy2->_folderChangeHistory setObject:v39 forKey:v37];
              }
            }

            v33 = [v32 countByEnumeratingWithState:&v141 objects:v156 count:16];
          }

          while (v33);
        }

        objc_sync_exit(selfCopy2);
        v44 = [(ASDaemonAccount *)selfCopy2 _foldersToSyncGivenResults:v126];
        if ([v44 count])
        {
          [(NSMutableSet *)selfCopy2->_folderIdsWithUnacknowledgedPings addObjectsFromArray:v44];
          [(ASDaemonAccount *)selfCopy2 setShouldUseOpportunisticSockets:0];
          v45 = +[DARunLoopRegistry sharedRunLoop];
          v154 = DAChangedFolderIDs;
          v155 = v44;
          v46 = [NSDictionary dictionaryWithObjects:&v155 forKeys:&v154 count:1];
          [(ASDaemonAccount *)selfCopy2 _enqueueNotificationWithName:DAAccountFolderContentsChangedNotification sourceRunLoop:v45 userInfo:v46];
        }

        v48 = 0;
        v49 = 2;
        goto LABEL_153;
      }

      goto LABEL_117;
    }

    selfCopy3 = self;
    objc_sync_enter(selfCopy3);
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    v152 = 0u;
    v82 = selfCopy3->_lastPingFolders;
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

          [(ASDaemonAccount *)selfCopy3 removeFromPingHierarchyAndHistoryBlacklistForFolderID:*(*(&v149 + 1) + 8 * k)];
        }

        v83 = [(NSSet *)v82 countByEnumeratingWithState:&v149 objects:v158 count:16];
      }

      while (v83);
    }

    objc_sync_exit(selfCopy3);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, DAAccountFolderUpdatedWithNoChangesNotification, 0, 0, 0);
    v87 = selfCopy3;
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
    startTime3 = [(ASFolderChangedHistory *)v87->_noChangeHistory startTime];
    [noChangeHistory timeIntervalSinceDate:startTime3];
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
        LODWORD(statusCopy4) = v107;
        _os_log_impl(&dword_0, v106, type, "Update no change ping count to %d", buf, 8u);
      }

      if ([(ASFolderChangedHistory *)v87->_noChangeHistory count]>= 11)
      {
        v108 = DALoggingwithCategory();
        v109 = _CPLog_to_os_log_type[3];
        if (os_log_type_enabled(v108, v109))
        {
          startTime4 = [(ASFolderChangedHistory *)v87->_noChangeHistory startTime];
          *buf = 138412290;
          statusCopy4 = startTime4;
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

  if (status <= 52)
  {
    if (status != 51)
    {
      heartbeat = [taskCopy heartbeat];
      pcManager = self->_pcManager;
      intervalCopy = interval;
      if (heartbeat >= interval)
      {
        [(PCConnectionManager *)pcManager setMaximumKeepAliveInterval:intervalCopy];
      }

      else
      {
        [(PCConnectionManager *)pcManager setMinimumKeepAliveInterval:intervalCopy];
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

  if (status != 53)
  {
    if (status == 80)
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

  selfCopy4 = self;
  objc_sync_enter(selfCopy4);
  v55 = [(NSMutableDictionary *)selfCopy4->_foldersToMonitorById count];
  objc_sync_exit(selfCopy4);

  v56 = v55 - maxFolders;
  if (((v55 - maxFolders) & 0x80000000) != 0)
  {
    goto LABEL_139;
  }

  inboxFolder = [(ASDaemonAccount *)selfCopy4 inboxFolder];
  folderID = [inboxFolder folderID];

  defaultContactsFolder = [(ASDaemonAccount *)selfCopy4 defaultContactsFolder];
  folderID2 = [defaultContactsFolder folderID];

  defaultEventsFolder = [(ASDaemonAccount *)selfCopy4 defaultEventsFolder];
  folderID3 = [defaultEventsFolder folderID];

  defaultToDosFolder = [(ASDaemonAccount *)selfCopy4 defaultToDosFolder];
  folderID4 = [defaultToDosFolder folderID];

  defaultNotesFolder = [(ASDaemonAccount *)selfCopy4 defaultNotesFolder];
  folderID5 = [defaultNotesFolder folderID];

  obj = selfCopy4;
  objc_sync_enter(obj);
  allValues = [(NSMutableDictionary *)selfCopy4->_foldersToMonitorById allValues];
  v64 = [allValues copy];

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

        serverID2 = [*(*(&v137 + 1) + 8 * m) serverID];
        if (([serverID2 isEqualToString:folderID] & 1) == 0 && (objc_msgSend(serverID2, "isEqualToString:", folderID2) & 1) == 0 && (objc_msgSend(serverID2, "isEqualToString:", folderID3) & 1) == 0 && (objc_msgSend(serverID2, "isEqualToString:", folderID4) & 1) == 0 && (objc_msgSend(serverID2, "isEqualToString:", folderID5) & 1) == 0)
        {
          [(NSMutableDictionary *)selfCopy4->_foldersToMonitorById removeObjectForKey:serverID2];
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
      LODWORD(statusCopy4) = maxFolders;
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
  if (status != 49)
  {
LABEL_159:
    selfCopy5 = self;
    objc_sync_enter(selfCopy5);
    if (selfCopy5->_isNoChangeBlackListed)
    {
      v114 = DALoggingwithCategory();
      if (os_log_type_enabled(v114, v128))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v114, v128, "Remove from ping no change blacklist, after a ping response with status other than DAStatusNoChanges", buf, 2u);
      }

      selfCopy5->_isNoChangeBlackListed = 0;
    }

    if (selfCopy5->_noChangeHistory)
    {
      v115 = DALoggingwithCategory();
      if (os_log_type_enabled(v115, type))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v115, type, "Clearing ping no change history, after a ping response with status other than DAStatusNoChanges", buf, 2u);
      }

      v116 = selfCopy5->_noChangeHistory;
      selfCopy5->_noChangeHistory = 0;
    }

    objc_sync_exit(selfCopy5);

    if (v48)
    {
      goto LABEL_168;
    }

LABEL_157:
    if (v51)
    {
      folders2 = [taskCopy folders];
      heartbeat2 = [taskCopy heartbeat];
    }

    else
    {
      lastPingHeartBeat = self->_lastPingHeartBeat;
      if (lastPingHeartBeat == [taskCopy heartbeat])
      {
        heartbeat2 = [taskCopy heartbeat];
      }

      else
      {
        heartbeat2 = 0;
      }

      if (self->_lastPingFolders && ([taskCopy folders], v118 = objc_claimAutoreleasedReturnValue(), v119 = objc_msgSend(v118, "isEqualToSet:", self->_lastPingFolders), v118, v119))
      {
        folders2 = [taskCopy folders];
      }

      else
      {
        folders2 = 0;
      }
    }

    goto LABEL_176;
  }

  if ((v48 & 1) == 0)
  {
    goto LABEL_157;
  }

LABEL_168:
  folders2 = 0;
  heartbeat2 = 0;
LABEL_176:
  if (self->_lastPingFolders != folders2)
  {
    v120 = [(NSSet *)folders2 copy];
    lastPingFolders = self->_lastPingFolders;
    self->_lastPingFolders = v120;
  }

  self->_lastPingHeartBeat = heartbeat2;
  if (v73)
  {
    if (!status || status == 51 || status == 80)
    {
      v122 = DALoggingwithCategory();
      if (os_log_type_enabled(v122, v128))
      {
        *buf = 134217984;
        statusCopy4 = status;
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

  else if (status != -1 && status != 53)
  {
    v123 = DALoggingwithCategory();
    if (os_log_type_enabled(v123, v128))
    {
      *buf = 134217984;
      statusCopy4 = status;
      _os_log_impl(&dword_0, v123, v128, "Create an XPC activity to fire the Ping task in case PCConnectionManager does not do it. Status %ld", buf, 0xCu);
    }

    [(ASDaemonAccount *)self _refirePingWithXPCActivityDelay:600 withGrowthAction:v49];
  }

LABEL_191:
}

- (void)_reissuePingFromXPCActivityWithGrowthAction:(int)action
{
  v5 = dataaccess_get_global_queue();
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1FD24;
  v6[3] = &unk_6D158;
  v6[4] = self;
  actionCopy = action;
  dispatch_async(v5, v6);
}

- (void)reissuePingFromTimer:(id)timer
{
  timerCopy = timer;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_pingTask);

  if (WeakRetained)
  {
    v12 = +[NSAssertionHandler currentHandler];
    [v12 handleFailureInMethod:a2 object:selfCopy file:@"ASDaemonAccount.m" lineNumber:1362 description:@"this timer shouldn't fire if we've got a ping task."];
  }

  objc_storeWeak(&selfCopy->_delayedPingTimer, 0);
  v8 = DALoggingwithCategory();
  v9 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v8, v9))
  {
    v13 = 138412290;
    _pingPowerAssertionIdentifier = [(ASDaemonAccount *)selfCopy _pingPowerAssertionIdentifier];
    _os_log_impl(&dword_0, v8, v9, "Release power assertion %@", &v13, 0xCu);
  }

  [(ASDaemonAccount *)selfCopy _pingPowerAssertionIdentifier];
  CPSetPowerAssertionWithIdentifier();
  if (selfCopy->_hasScheduledPingXPCActivity)
  {
    selfCopy->_hasScheduledPingXPCActivity = 0;
    v10 = dataaccess_get_global_queue();
    dispatch_async(v10, &stru_6D178);
  }

  userInfo = [timerCopy userInfo];
  -[ASDaemonAccount _reissuePingTaskWithGrowthAction:](selfCopy, "_reissuePingTaskWithGrowthAction:", [userInfo intValue]);

  objc_sync_exit(selfCopy);
}

- (void)_pollFolders
{
  v3 = objc_opt_new();
  if ([(ASDaemonAccount *)self enabledForDADataclass:2])
  {
    contactsFolders = [(ASDaemonAccount *)self contactsFolders];
    if (contactsFolders)
    {
      [v3 addObjectsFromArray:contactsFolders];
    }
  }

  if ([(ASDaemonAccount *)self enabledForDADataclass:4])
  {
    eventsFolders = [(ASDaemonAccount *)self eventsFolders];
    if (eventsFolders)
    {
      [v3 addObjectsFromArray:eventsFolders];
    }
  }

  if ([(ASDaemonAccount *)self enabledForDADataclass:16])
  {
    toDosFolders = [(ASDaemonAccount *)self toDosFolders];
    if (toDosFolders)
    {
      [v3 addObjectsFromArray:toDosFolders];
    }
  }

  if ([(ASDaemonAccount *)self enabledForDADataclass:32])
  {
    notesFolders = [(ASDaemonAccount *)self notesFolders];
    if (notesFolders)
    {
      [v3 addObjectsFromArray:notesFolders];
    }
  }

  if (self->_foldersToMonitorById)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    allValues = [(NSMutableDictionary *)self->_foldersToMonitorById allValues];
    v10 = [NSArray arrayWithArray:allValues];

    objc_sync_exit(selfCopy);
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

  allObjects = [v3 allObjects];
  v17 = [allObjects valueForKey:@"folderID"];

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

- (void)_enqueueNotificationWithName:(id)name sourceRunLoop:(id)loop userInfo:(id)info
{
  nameCopy = name;
  infoCopy = info;
  loopCopy = loop;
  currentMode = [loopCopy currentMode];
  v12 = currentMode;
  v13 = NSDefaultRunLoopMode;
  if (currentMode)
  {
    v13 = currentMode;
  }

  v14 = v13;

  getCFRunLoop = [loopCopy getCFRunLoop];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_20444;
  v19[3] = &unk_6D1A0;
  v20 = nameCopy;
  selfCopy = self;
  v22 = infoCopy;
  v23 = v14;
  v16 = v14;
  v17 = infoCopy;
  v18 = nameCopy;
  CFRunLoopPerformBlock(getCFRunLoop, v16, v19);
}

- (void)connectionManager:(id)manager handleEvent:(int)event
{
  managerCopy = manager;
  v7 = DALoggingwithCategory();
  v8 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v7, v8))
  {
    v37 = 136315650;
    v38 = "[ASDaemonAccount connectionManager:handleEvent:]";
    v39 = 2112;
    v40 = managerCopy;
    v41 = 1024;
    eventCopy = event;
    _os_log_impl(&dword_0, v7, v8, "%s invoked: mgr: %@, reason:%d", &v37, 0x1Cu);
  }

  if (event <= 4)
  {
    if (event != 2)
    {
      if (event != 3)
      {
        if (event == 4)
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
          selfCopy3 = self;
          v13 = 6;
LABEL_47:
          [(ASDaemonAccount *)selfCopy3 _refirePingAfterDelay:v13 withGrowthAction:v11];
          goto LABEL_48;
        }

        goto LABEL_22;
      }

      currentStyle = [managerCopy currentStyle];
      switch(currentStyle)
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
              accountDescription = [(ASDaemonAccount *)self accountDescription];
              v37 = 138412290;
              v38 = accountDescription;
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
    selfCopy3 = self;
    v13 = 1;
    goto LABEL_47;
  }

  if ((event - 7) < 2)
  {
    v14 = DALoggingwithCategory();
    v15 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v14, v15))
    {
      v37 = 136315394;
      v38 = "[ASDaemonAccount connectionManager:handleEvent:]";
      v39 = 1024;
      LODWORD(v40) = event;
      _os_log_impl(&dword_0, v14, v15, "%s cancelling ping task and reissuing with maintain, PC event was %d", &v37, 0x12u);
    }

    [(ASDaemonAccount *)self _cancelPingTask];
    LODWORD(v11) = 0.5;
    selfCopy3 = self;
    v13 = 2;
    goto LABEL_47;
  }

  if (event == 5)
  {
    v16 = DALoggingwithCategory();
    v17 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v16, v17))
    {
      currentStyle2 = [managerCopy currentStyle];
      v37 = 136315394;
      v38 = "[ASDaemonAccount connectionManager:handleEvent:]";
      v39 = 1024;
      LODWORD(v40) = currentStyle2;
      _os_log_impl(&dword_0, v16, v17, "%s style changed to %d.", &v37, 0x12u);
    }

    [(ASDaemonAccount *)self _cancelPingTask];
    LODWORD(v19) = 0.5;
    [(ASDaemonAccount *)self _refirePingAfterDelay:2 withGrowthAction:v19];
    if ([managerCopy currentStyle] == 1)
    {
      v20 = +[NSUserDefaults standardUserDefaults];
      dword_74988 = [v20 integerForKey:@"ForcedHBI"];

      if (dword_74988)
      {
        [(PCConnectionManager *)self->_pcManager setMinimumKeepAliveInterval:dword_74988];
        [(PCConnectionManager *)self->_pcManager setMaximumKeepAliveInterval:dword_74988];
      }
    }

    currentStyle3 = [managerCopy currentStyle];
    v22 = +[ESWifiAssertionManager sharedWifiAssertionManager];
    v23 = v22;
    if (currentStyle3)
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
    LODWORD(v40) = event;
    _os_log_impl(&dword_0, v23, v24, "%s pcManager callback out to lunch, event is: %d", &v37, 0x12u);
  }

LABEL_31:

LABEL_48:
}

- (BOOL)shouldCancelTaskDueToOnPowerFetchMode
{
  getFetchingAutomaticallyState = [(ASDaemonAccount *)self getFetchingAutomaticallyState];
  if (getFetchingAutomaticallyState)
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
    isFatPipe = [v4 isFatPipe];

    if (isFatPipe)
    {
      v6 = +[MFPowerController sharedInstance];
      isPluggedIn = [v6 isPluggedIn];

      if (isPluggedIn)
      {
LABEL_5:
        LOBYTE(getFetchingAutomaticallyState) = 0;
        return getFetchingAutomaticallyState;
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

        LOBYTE(getFetchingAutomaticallyState) = 1;
        return getFetchingAutomaticallyState;
      }

      *buf = 0;
      v10 = "Canceling task because conditions for on-power mode no longer exist (wi-fi)";
      v11 = buf;
    }

    _os_log_impl(&dword_0, v8, v9, v10, v11, 2u);
    goto LABEL_14;
  }

  return getFetchingAutomaticallyState;
}

- (void)_reissuePingTaskWithGrowthAction:(int)action
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
    selfCopy = self;
    objc_sync_enter(selfCopy);
    allValues = [(NSMutableDictionary *)selfCopy->_foldersToMonitorById allValues];
    v12 = [NSArray arrayWithArray:allValues];

    objc_sync_exit(selfCopy);
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
          pingBlacklistFolderIds = selfCopy->_pingBlacklistFolderIds;
          serverID = [v17 serverID];
          LODWORD(pingBlacklistFolderIds) = [(NSMutableSet *)pingBlacklistFolderIds containsObject:serverID];

          if (pingBlacklistFolderIds)
          {
            v20 = DALoggingwithCategory();
            if (os_log_type_enabled(v20, v5))
            {
              serverID2 = [v17 serverID];
              *buf = 138412290;
              v54 = serverID2;
              _os_log_impl(&dword_0, v20, v5, "Not including folder %@ to ping task because it is black listed", buf, 0xCu);
            }

LABEL_40:

            continue;
          }

          pingHistoryBlacklistFolderIds = selfCopy->_pingHistoryBlacklistFolderIds;
          serverID3 = [v17 serverID];
          LODWORD(pingHistoryBlacklistFolderIds) = [(NSMutableSet *)pingHistoryBlacklistFolderIds containsObject:serverID3];

          if (pingHistoryBlacklistFolderIds)
          {
            v20 = DALoggingwithCategory();
            if (os_log_type_enabled(v20, v5))
            {
              serverID4 = [v17 serverID];
              *buf = 138412290;
              v54 = serverID4;
              _os_log_impl(&dword_0, v20, v5, "Not including folder %@ to ping task because it is history black listed", buf, 0xCu);
            }

            goto LABEL_40;
          }

          folderIdsWithUnacknowledgedPings = selfCopy->_folderIdsWithUnacknowledgedPings;
          serverID5 = [v17 serverID];
          LODWORD(folderIdsWithUnacknowledgedPings) = [(NSMutableSet *)folderIdsWithUnacknowledgedPings containsObject:serverID5];

          if (folderIdsWithUnacknowledgedPings)
          {
            v20 = DALoggingwithCategory();
            if (os_log_type_enabled(v20, v5))
            {
              serverID6 = [v17 serverID];
              *buf = 138412290;
              v54 = serverID6;
              _os_log_impl(&dword_0, v20, v5, "Not including folder %@ to ping task because it is with unacknowledged ping", buf, 0xCu);
            }

            goto LABEL_40;
          }

          if (-[ASDaemonAccount reminderAccountMissing](selfCopy, "reminderAccountMissing") && ([v17 folderType] == 7 || objc_msgSend(v17, "folderType") == 15))
          {
            v20 = DALoggingwithCategory();
            if (os_log_type_enabled(v20, v5))
            {
              serverID7 = [v17 serverID];
              *buf = 138412290;
              v54 = serverID7;
              _os_log_impl(&dword_0, v20, v5, "Not including Reminder folder %@ to ping task because REMAccount is not ready yet", buf, 0xCu);
            }

            goto LABEL_40;
          }

          v29 = DALoggingwithCategory();
          if (os_log_type_enabled(v29, v5))
          {
            serverID8 = [v17 serverID];
            *buf = 138412290;
            v54 = serverID8;
            _os_log_impl(&dword_0, v29, v5, "Adding folder %@ to ping task", buf, 0xCu);
          }

          [v47 addObject:v17];
        }

        v14 = [v13 countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v14);
    }

    if (![v47 count] || !selfCopy->_safeToPing || -[NSCountedSet count](selfCopy->_busyFolderIds, "count"))
    {
LABEL_64:

      return;
    }

    [(PCConnectionManager *)self->_pcManager resumeManagerWithAction:action];
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

        v39 = [[ASPingTask alloc] initWithHeartbeat:v33 folders:v47 oldHeartbeat:selfCopy->_lastPingHeartBeat oldFolders:selfCopy->_lastPingFolders];
        v40 = objc_storeWeak(&self->_pingTask, v39);
        [v39 setDelegate:selfCopy];

        v41 = DALoggingwithCategory();
        v42 = _CPLog_to_os_log_type[7];
        if (os_log_type_enabled(v41, v42))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v41, v42, "ping issued", buf, 2u);
        }

        [(ASDaemonAccount *)selfCopy setShouldUseOpportunisticSockets:0];
        taskManager = [(ASDaemonAccount *)selfCopy taskManager];
        v44 = objc_loadWeakRetained(&self->_pingTask);
        [taskManager submitIndependentTask:v44];

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

- (void)monitorFolder:(id)folder
{
  folderCopy = folder;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = sub_1B010(selfCopy->_foldersToMonitorById);
  objc_sync_exit(selfCopy);

  v7 = DALoggingwithCategory();
  v8 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v7, v8))
  {
    conciseDescription = [folderCopy conciseDescription];
    busyFolderIds = selfCopy->_busyFolderIds;
    v17 = 138412802;
    v18 = conciseDescription;
    v19 = 2112;
    v20 = v6;
    v21 = 2112;
    v22 = busyFolderIds;
    _os_log_impl(&dword_0, v7, v8, "monitoring folder %@, _foldersToMonitorById = %@, _busyFolderIds = %@", &v17, 0x20u);
  }

  v11 = selfCopy;
  objc_sync_enter(v11);
  foldersToMonitorById = selfCopy->_foldersToMonitorById;
  if (!foldersToMonitorById)
  {
    v13 = objc_opt_new();
    v14 = selfCopy->_foldersToMonitorById;
    selfCopy->_foldersToMonitorById = v13;

    foldersToMonitorById = selfCopy->_foldersToMonitorById;
  }

  serverID = [folderCopy serverID];
  [(NSMutableDictionary *)foldersToMonitorById setObject:folderCopy forKeyedSubscript:serverID];

  objc_sync_exit(v11);
  [(ASDaemonAccount *)v11 _cancelPingTask];
  LODWORD(v16) = 2.0;
  [(ASDaemonAccount *)v11 _refirePingAfterDelay:2 withGrowthAction:v16];
}

- (void)stopMonitoringFolderWithID:(id)d
{
  dCopy = d;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    folderHierarchy = [(ASDaemonAccount *)self folderHierarchy];
    v8 = [folderHierarchy folderForID:dCopy];
    v11 = 138412546;
    v12 = dCopy;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_0, v5, v6, "unmonitoring folder %@ - %@", &v11, 0x16u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableDictionary *)selfCopy->_foldersToMonitorById removeObjectForKey:dCopy];
  [(NSMutableSet *)selfCopy->_folderIdsWithUnacknowledgedPings removeObject:dCopy];
  objc_sync_exit(selfCopy);

  [(ASDaemonAccount *)selfCopy _cancelPingTask];
  if (!selfCopy->_isTearingDown)
  {
    LODWORD(v10) = 0.5;
    [(ASDaemonAccount *)selfCopy _refirePingAfterDelay:2 withGrowthAction:v10];
  }
}

- (BOOL)monitorFoldersWithIDs:(id)ds
{
  dsCopy = ds;
  v5 = +[NSMutableArray array];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = dsCopy;
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
        folderHierarchy = [(ASDaemonAccount *)self folderHierarchy];
        v13 = [folderHierarchy folderForID:v11];

        if (!v13)
        {
          v20 = DALoggingwithCategory();
          v21 = _CPLog_to_os_log_type[3];
          if (os_log_type_enabled(v20, _CPLog_to_os_log_type[3]))
          {
            folderHierarchy2 = [(ASDaemonAccount *)self folderHierarchy];
            *buf = 138412546;
            v34 = v11;
            v35 = 2112;
            v36 = folderHierarchy2;
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

- (void)_stopMonitoringFoldersWithIds:(id)ids
{
  idsCopy = ids;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [idsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(idsCopy);
        }

        [(ASDaemonAccount *)self stopMonitoringFolderWithID:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [idsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)stopMonitoringFoldersWithIDs:(id)ds
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = [dsCopy objectAtIndexedSubscript:v4];
      [(ASDaemonAccount *)self stopMonitoringFolderWithID:v6];

      v4 = v5;
    }

    while ([dsCopy count] > v5++);
  }
}

- (void)suspendMonitoringFoldersWithIDs:(id)ds
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    if (!self->_busyFolderIds)
    {
      v4 = objc_opt_new();
      busyFolderIds = self->_busyFolderIds;
      self->_busyFolderIds = v4;
    }

    selfCopy = self;
    objc_sync_enter(selfCopy);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = dsCopy;
    v7 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v7)
    {
      selfCopy2 = self;
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
          folderHierarchy = [(ASDaemonAccount *)selfCopy folderHierarchy];
          v14 = [folderHierarchy folderForID:v12];

          if (v14)
          {
            v15 = DALoggingwithCategory();
            if (os_log_type_enabled(v15, v10))
            {
              conciseDescription = [v14 conciseDescription];
              *buf = 138412290;
              v28 = conciseDescription;
              _os_log_impl(&dword_0, v15, v10, "marking folder as busy: %@", buf, 0xCu);
            }

            [(NSCountedSet *)selfCopy2->_busyFolderIds addObject:v12];
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

      objc_sync_exit(selfCopy);
      if (v8)
      {
        [(ASDaemonAccount *)selfCopy _cancelPingTask];
        LODWORD(v18) = 2.0;
        [(ASDaemonAccount *)selfCopy _refirePingAfterDelay:2 withGrowthAction:v18];
      }
    }

    else
    {

      objc_sync_exit(selfCopy);
    }
  }
}

- (void)resumeMonitoringFolderID:(id)d
{
  dCopy = d;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  allObjects = [(NSCountedSet *)self->_busyFolderIds allObjects];
  v6 = [allObjects countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (!v6)
  {

    [(NSMutableSet *)self->_folderIdsWithUnacknowledgedPings removeObject:dCopy];
LABEL_15:
    v15 = DALoggingwithCategory();
    v16 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v15, v16))
    {
      busyFolderIds = self->_busyFolderIds;
      *buf = 136315650;
      v25 = "[ASDaemonAccount resumeMonitoringFolderID:]";
      v26 = 2112;
      v27 = dCopy;
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
        objc_enumerationMutation(allObjects);
      }

      if ([*(*(&v20 + 1) + 8 * i) isEqualToString:{dCopy, v19}])
      {
        v13 = DALoggingwithCategory();
        if (os_log_type_enabled(v13, v11))
        {
          v14 = self->_busyFolderIds;
          *buf = v19;
          v25 = dCopy;
          v26 = 2112;
          v27 = v14;
          _os_log_impl(&dword_0, v13, v11, "marking folder with id %@ as not busy, _busyFolderIds (%@)", buf, 0x16u);
        }

        [(NSCountedSet *)self->_busyFolderIds removeObject:dCopy];
        v9 = 1;
      }
    }

    v8 = [allObjects countByEnumeratingWithState:&v20 objects:v30 count:16];
  }

  while (v8);

  [(NSMutableSet *)self->_folderIdsWithUnacknowledgedPings removeObject:dCopy];
  if ((v9 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_18:
  [(ASDaemonAccount *)self _cancelPingTask];
  LODWORD(v18) = 2.0;
  [(ASDaemonAccount *)self _refirePingAfterDelay:2 withGrowthAction:v18];
}

- (void)resumeMonitoringFoldersWithIDs:(id)ds
{
  dsCopy = ds;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [dsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(dsCopy);
        }

        [(ASDaemonAccount *)self resumeMonitoringFolderID:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [dsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)setFolderIdsThatExternalClientsCareAboutAdded:(id)added deleted:(id)deleted foldersTag:(id)tag
{
  addedCopy = added;
  deletedCopy = deleted;
  tagCopy = tag;
  v11 = DALoggingwithCategory();
  v12 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v11, v12))
  {
    *buf = 138412802;
    v39 = addedCopy;
    v40 = 2112;
    v41 = deletedCopy;
    v42 = 2112;
    v43 = tagCopy;
    _os_log_impl(&dword_0, v11, v12, "Daemon setting folder ids to be monitored added:%@\ndeleted:%@\ntag:%@", buf, 0x20u);
  }

  foldersTag = [(ASDaemonAccount *)self foldersTag];
  v14 = [tagCopy isEqualToString:foldersTag];

  if (v14)
  {
    folderHierarchy = [(ASDaemonAccount *)self folderHierarchy];
    folderIdsThatExternalClientsCareAbout = [folderHierarchy folderIdsThatExternalClientsCareAbout];
    v17 = [folderIdsThatExternalClientsCareAbout mutableCopy];

    if (addedCopy && !v17)
    {
      v17 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(addedCopy, "count")}];
    }

    if (deletedCopy)
    {
      [v17 minusSet:deletedCopy];
    }

    if (addedCopy)
    {
      v31 = tagCopy;
      v32 = deletedCopy;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v18 = addedCopy;
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
            v24 = [folderHierarchy folderForID:v23, v31, v32, v33];

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
              tagCopy = v31;
              deletedCopy = v32;
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
      tagCopy = v31;
      deletedCopy = v32;
    }

    v18 = [(ASDaemonAccount *)self folderHierarchy:v31];
    [v18 setFolderIdsThatExternalClientsCareAbout:v17];
    v25 = 1;
LABEL_26:
  }

  else
  {
    folderHierarchy = DALoggingwithCategory();
    v26 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(folderHierarchy, v26))
    {
      foldersTag2 = [(ASDaemonAccount *)self foldersTag];
      *buf = 138412546;
      v39 = tagCopy;
      v40 = 2112;
      v41 = foldersTag2;
      _os_log_impl(&dword_0, folderHierarchy, v26, "Dropping request to add folder that external clients care about.  Client's folder tag (%@) doesn't match daemon's: (%@)", buf, 0x16u);
    }

    v25 = 0;
  }

  return v25;
}

- (BOOL)setFolderIdsForPersistentPushAdded:(id)added deleted:(id)deleted clientID:(id)d
{
  addedCopy = added;
  deletedCopy = deleted;
  dCopy = d;
  v11 = DALoggingwithCategory();
  v12 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v11, v12))
  {
    *buf = 138412546;
    v35 = addedCopy;
    v36 = 2112;
    v37 = deletedCopy;
    _os_log_impl(&dword_0, v11, v12, "Daemon setting folder ids to be persistently monitored added:%@\ndeleted:%@", buf, 0x16u);
  }

  folderHierarchy = [(ASDaemonAccount *)self folderHierarchy];
  v14 = [folderHierarchy folderIdsForPersistentPushForClientID:dCopy];
  v15 = [v14 mutableCopy];

  if (addedCopy && !v15)
  {
    v15 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(addedCopy, "count")}];
  }

  if (deletedCopy)
  {
    [v15 minusSet:deletedCopy];
  }

  if (addedCopy)
  {
    selfCopy = self;
    v28 = dCopy;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    folderHierarchy2 = addedCopy;
    v17 = [folderHierarchy2 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
            objc_enumerationMutation(folderHierarchy2);
          }

          v21 = *(*(&v29 + 1) + 8 * i);
          v22 = [folderHierarchy folderForID:{v21, selfCopy}];

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
            dCopy = v28;
            goto LABEL_22;
          }
        }

        v18 = [folderHierarchy2 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    [v15 unionSet:folderHierarchy2];
    self = selfCopy;
    dCopy = v28;
  }

  folderHierarchy2 = [(ASDaemonAccount *)self folderHierarchy];
  [folderHierarchy2 setFolderIdsForPersistentPush:v15 clientID:dCopy];
  v23 = 1;
LABEL_22:

  return v23;
}

- (BOOL)clearFolderIdsForPersistentPushWithClientID:(id)d
{
  dCopy = d;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    *v12 = 0;
    _os_log_impl(&dword_0, v5, v6, "Daemon clearing folder ids to be persistently monitored", v12, 2u);
  }

  folderHierarchy = [(ASDaemonAccount *)self folderHierarchy];
  v8 = [folderHierarchy folderIdsForPersistentPushForClientID:dCopy];
  v9 = [v8 mutableCopy];

  if (v9)
  {
    folderHierarchy2 = [(ASDaemonAccount *)self folderHierarchy];
    [folderHierarchy2 setFolderIdsForPersistentPush:0 clientID:dCopy];
  }

  return 1;
}

- (void)sendMailTask:(id)task completedWithStatus:(int64_t)status error:(id)error
{
  taskCopy = task;
  errorCopy = error;
  context = [taskCopy context];
  eventUID = [context eventUID];
  isMyInvite = [context isMyInvite];
  v12 = [(ASDaemonAccount *)self consumerForTask:taskCopy];
  v13 = v12;
  if (status == 2)
  {
    [v12 messageDidSendWithContext:context];
  }

  else
  {
    if (!((eventUID == 0) | isMyInvite & 1))
    {
      [(NSMutableSet *)self->_invitationActionsInFlight removeObject:eventUID];
    }

    [v13 actionFailed:status forTask:taskCopy error:errorCopy];
  }

  [(ASDaemonAccount *)self removeConsumerForTask:taskCopy];
}

- (id)_ASSyncTaskAndMeetingResponseCommandsFromDAEventActions:(id)actions meetingResponseActions:(id)responseActions emailEvents:(id)events
{
  actionsCopy = actions;
  responseActionsCopy = responseActions;
  eventsCopy = events;
  v10 = DALoggingwithCategory();
  v11 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v10, v11))
  {
    *buf = 138412290;
    *v131 = actionsCopy;
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

  selfCopy = self;

  v14 = objc_opt_new();
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v15 = actionsCopy;
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
          serverId = [v20 serverId];
          [v14 setObject:v20 forKeyedSubscript:serverId];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v126 objects:v138 count:16];
    }

    while (v17);
  }

  v106 = responseActionsCopy;
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
      itemChangeType = [v25 itemChangeType];
      if (itemChangeType > 5)
      {
        if (itemChangeType == (&dword_4 + 2))
        {
          goto LABEL_64;
        }

        if (itemChangeType != &dword_8)
        {
LABEL_24:
          event = [v25 event];
          calAttendeeStatus = [event calAttendeeStatus];
          calAttendeePendingStatus = [event calAttendeePendingStatus];
          if ([event calEvent])
          {
            Status = CalCalendarItemGetStatus();
            v31 = DALoggingwithCategory();
            if (os_log_type_enabled(v31, type))
            {
              v32 = [event meetingResponseForAccount:selfCopy];
              *buf = 67109632;
              *v131 = calAttendeeStatus;
              *&v131[4] = 1024;
              *&v131[6] = calAttendeePendingStatus;
              LOWORD(v132) = 1024;
              *(&v132 + 2) = v32;
              _os_log_impl(&dword_0, v31, type, "Event has status %d, pending status %d, meeting response %d", buf, 0x14u);
            }

            if ((Status - 1) <= 1 && !calAttendeeStatus && [v25 itemChangeType] != &dword_0 + 1)
            {
              v33 = DALoggingwithCategory();
              if (os_log_type_enabled(v33, type))
              {
                *buf = 138412290;
                *v131 = event;
                _os_log_impl(&dword_0, v33, type, "Dropping request to sync %@, as it's a un-acted-upon invitation and we're trying to do something other than modify it", buf, 0xCu);
              }

              goto LABEL_47;
            }
          }

          else
          {
            Status = 0;
          }

          v34 = calAttendeeStatus;
          if ([v25 itemChangeType] == &dword_0 + 1)
          {
            serverID = [event serverID];
            v36 = [v107 objectForKeyedSubscript:serverID];

            if (v36)
            {
              v37 = DALoggingwithCategory();
              v11 = v113;
              if (os_log_type_enabled(v37, v113))
              {
                serverID2 = [event serverID];
                *buf = 138412290;
                *v131 = serverID2;
                v39 = v37;
                v40 = v113;
                v41 = "Have a modify action nixed by a belay action for server id %@.  Dropping the modify";
                goto LABEL_61;
              }

              goto LABEL_62;
            }
          }

          itemChangeType2 = [v25 itemChangeType];
          if (Status == 3 && itemChangeType2 == &dword_0 + 1 && ([event cachedOrganizerIsSelfWithAccount:selfCopy] & 1) == 0)
          {
            v37 = DALoggingwithCategory();
            v11 = v113;
            if (os_log_type_enabled(v37, v113))
            {
              serverID2 = [event serverID];
              *buf = 138412290;
              *v131 = serverID2;
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

          itemChangeType3 = [v25 itemChangeType];
          if (Status == 3 && !itemChangeType3 && [event cachedOrganizerIsSelfWithAccount:selfCopy])
          {
            v44 = DALoggingwithCategory();
            if (os_log_type_enabled(v44, type))
            {
              *buf = 138412290;
              *v131 = event;
              _os_log_impl(&dword_0, v44, type, "Not syncing add of cancelled event that's not back by an exchange event.  Event %@", buf, 0xCu);
            }

            [eventsCopy addObject:event];
LABEL_47:
            v11 = v113;
            goto LABEL_63;
          }

          v45 = [event meetingResponseForAccount:selfCopy];
          v11 = v113;
          if (v45)
          {
            if (v45 == 4)
            {
              v46 = selfCopy->_invitationActionsInFlight;
              uidForCalFramework = [event uidForCalFramework];
              LODWORD(v46) = [(NSMutableSet *)v46 containsObject:uidForCalFramework];

              if (v46)
              {
                v48 = DALoggingwithCategory();
                if (os_log_type_enabled(v48, v113))
                {
                  *buf = 138412290;
                  *v131 = event;
                  _os_log_impl(&dword_0, v48, v113, "Dropping request to email about %@, as I currently have an invitation action in flight for it", buf, 0xCu);
                }

                goto LABEL_54;
              }

              [eventsCopy addObject:event];
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

              serverID3 = [event serverID];
              if (!serverID3)
              {
                goto LABEL_54;
              }

              v66 = serverID3;
              v56 = [[ASAction alloc] initWithItemChangeType:2 changedItem:0 serverId:serverID3];
            }

            else
            {
              uidForCalFramework2 = [event uidForCalFramework];
              if ([(NSMutableSet *)selfCopy->_invitationActionsInFlight containsObject:uidForCalFramework2])
              {
                v58 = DALoggingwithCategory();
                if (os_log_type_enabled(v58, v113))
                {
                  *buf = 138412290;
                  *v131 = event;
                  _os_log_impl(&dword_0, v58, v113, "Dropping request to do a MeetingResponse for %@, as I currently have an invitation action in flight for it", buf, 0xCu);
                }
              }

              else
              {
                [v106 addObject:v25];
                [(NSMutableSet *)selfCopy->_invitationActionsInFlight addObject:uidForCalFramework2];
              }

              [v24 removeObjectAtIndex:j - 2];

LABEL_76:
              v56 = 0;
            }
          }

          else
          {
LABEL_54:
            calEvent = [event calEvent];
            v50 = CalEventCopyOriginalEvent();
            v51 = v50;
            if (!v50 || v50 == calEvent)
            {
              v56 = [[ASAction alloc] initWithItemChangeType:objc_msgSend(v25 changedItem:"itemChangeType") != 0 serverId:{event, 0}];
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
                protocol = [(ASDaemonAccount *)selfCopy protocol];
                includeExceptionsInParent = [protocol includeExceptionsInParent];

                if (includeExceptionsInParent)
                {
                  v56 = 0;
                }

                else
                {
                  itemChangeType4 = [v25 itemChangeType];
                  v61 = [ASAction alloc];
                  v62 = v61;
                  if (itemChangeType4)
                  {
                    serverId2 = [v25 serverId];
                    instanceId = [v25 instanceId];
                    v56 = [v62 initWithItemChangeType:1 changedItem:event serverId:serverId2 instanceId:instanceId];

                    v11 = v113;
                  }

                  else
                  {
                    v56 = [v61 initWithItemChangeType:0 changedItem:event serverId:0];
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

          event = v56;
          if (!v56)
          {
            goto LABEL_64;
          }

LABEL_23:
          [v108 addObject:event];
          goto LABEL_63;
        }
      }

      else if (itemChangeType != (&dword_0 + 2))
      {
        if (itemChangeType != &dword_4)
        {
          goto LABEL_24;
        }

        goto LABEL_64;
      }

      event = v25;
      if (event)
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

          changedItem = [*(*(&v122 + 1) + 8 * k) changedItem];
          [changedItem calEvent];
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
    typea = [eventsCopy copy];
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
          clientID = [v82 clientID];
          if (clientID && [v68 containsObject:clientID])
          {
            v84 = DALoggingwithCategory();
            if (os_log_type_enabled(v84, v11))
            {
              *buf = 138412290;
              *v131 = v82;
              _os_log_impl(&dword_0, v84, v11, "Not emailing about event %@, as I'm sending a meeting response for someone in their chain", buf, 0xCu);
            }

            [eventsCopy removeObject:v82];
          }

          responseRequested = [v82 responseRequested];
          if (![responseRequested intValue])
          {
            v86 = DALoggingwithCategory();
            if (os_log_type_enabled(v86, v11))
            {
              *buf = 138412290;
              *v131 = v82;
              _os_log_impl(&dword_0, v86, v11, "Not emailing about event %@, as the originator requested no responses", buf, 0xCu);
            }

            [eventsCopy removeObject:v82];
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
            event2 = [v94 event];
            v96 = v92[380];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              clientID2 = [event2 clientID];
              if (clientID2 && [v68 containsObject:clientID2])
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
              clientID2 = DALoggingwithCategory();
              if (os_log_type_enabled(clientID2, v91))
              {
                itemChangeType5 = [v94 itemChangeType];
                v100 = objc_opt_class();
                *buf = 134218498;
                *v131 = itemChangeType5;
                *&v131[8] = 2112;
                v132 = v100;
                v133 = 2112;
                v134 = event2;
                v101 = v100;
                _os_log_impl(&dword_0, clientID2, v91, "Alarm! We have a command of type %lu, but the event isn't an ASEvent, rather it has class %@, and is %@", buf, 0x20u);

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

  allObjects = [v108 allObjects];
  v103 = DALoggingwithCategory();
  if (os_log_type_enabled(v103, v11))
  {
    *buf = 138412802;
    *v131 = allObjects;
    *&v131[8] = 2112;
    v132 = v67;
    v133 = 2112;
    v134 = eventsCopy;
    _os_log_impl(&dword_0, v103, v11, "_ASSyncTaskAndMeetingResponseCommandsFromDAEventActions, commands are %@, meetingResponseActions are %@ emails are %@", buf, 0x20u);
  }

  return allObjects;
}

- (void)consumerFinishedInvitationActionsForEventWithUID:(id)d
{
  if (d)
  {
    [(NSMutableSet *)self->_invitationActionsInFlight removeObject:?];
  }
}

- (void)meetingResponseTask:(id)task completedWithStatus:(int64_t)status error:(id)error
{
  taskCopy = task;
  errorCopy = error;
  v10 = DALoggingwithCategory();
  v11 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v10, v11))
  {
    responseItems = [taskCopy responseItems];
    *buf = 138413058;
    v61 = taskCopy;
    v62 = 2048;
    statusCopy = status;
    v64 = 2112;
    v65 = errorCopy;
    v66 = 2112;
    v67 = responseItems;
    _os_log_impl(&dword_0, v10, v11, "Meeting response task %@ completed with status %ld error %@ results %@", buf, 0x2Au);
  }

  v13 = [(ASDaemonAccount *)self consumerForTask:taskCopy];
  v44 = objc_opt_new();
  v14 = objc_opt_new();
  v43 = v13;
  if (status == 2)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    responseItems2 = [taskCopy responseItems];
    v16 = [responseItems2 countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = errorCopy;
      v19 = taskCopy;
      v20 = *v54;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v54 != v20)
          {
            objc_enumerationMutation(responseItems2);
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

        v17 = [responseItems2 countByEnumeratingWithState:&v53 objects:v59 count:16];
      }

      while (v17);
      taskCopy = v19;
      errorCopy = v18;
      v13 = v43;
    }
  }

  else
  {
    responseItems2 = [taskCopy responseItems];
    [v14 addObjectsFromArray:responseItems2];
  }

  [v13 meetingResponseFinishedWithStatus:status error:errorCopy successfulResponses:v44 failedResponses:v14];
  protocol = [(ASDaemonAccount *)self protocol];
  sendEmailForMeetingInvitationAndResponse = [protocol sendEmailForMeetingInvitationAndResponse];

  if (sendEmailForMeetingInvitationAndResponse)
  {
    v47 = 0uLL;
    v48 = 0uLL;
    v45 = 0uLL;
    v46 = 0uLL;
    responseItems3 = v14;
    v27 = [responseItems3 countByEnumeratingWithState:&v45 objects:v57 count:16];
    if (v27)
    {
      v28 = v27;
      v41 = errorCopy;
      v42 = taskCopy;
      v29 = *v46;
      do
      {
        for (j = 0; j != v28; j = j + 1)
        {
          if (*v46 != v29)
          {
            objc_enumerationMutation(responseItems3);
          }

          invitationActionsInFlight = self->_invitationActionsInFlight;
          eventUID = [*(*(&v45 + 1) + 8 * j) eventUID];
          uidForCalFramework = [eventUID uidForCalFramework];
          [(NSMutableSet *)invitationActionsInFlight removeObject:uidForCalFramework];
        }

        v28 = [responseItems3 countByEnumeratingWithState:&v45 objects:v57 count:16];
      }

      while (v28);
LABEL_32:
      errorCopy = v41;
      taskCopy = v42;
      v13 = v43;
    }
  }

  else
  {
    v51 = 0uLL;
    v52 = 0uLL;
    v49 = 0uLL;
    v50 = 0uLL;
    responseItems3 = [taskCopy responseItems];
    v34 = [responseItems3 countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (v34)
    {
      v35 = v34;
      v41 = errorCopy;
      v42 = taskCopy;
      v36 = *v50;
      do
      {
        for (k = 0; k != v35; k = k + 1)
        {
          if (*v50 != v36)
          {
            objc_enumerationMutation(responseItems3);
          }

          v38 = self->_invitationActionsInFlight;
          eventUID2 = [*(*(&v49 + 1) + 8 * k) eventUID];
          uidForCalFramework2 = [eventUID2 uidForCalFramework];
          [(NSMutableSet *)v38 removeObject:uidForCalFramework2];
        }

        v35 = [responseItems3 countByEnumeratingWithState:&v49 objects:v58 count:16];
      }

      while (v35);
      goto LABEL_32;
    }
  }

  [(ASDaemonAccount *)self removeConsumerForTask:taskCopy];
}

- (id)_parentIdFromEventId:(id)id
{
  idCopy = id;
  v4 = [idCopy rangeOfString:@"<!ExceptionDate!>"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = idCopy;
  }

  else
  {
    v6 = v4;
    v7 = DALoggingwithCategory();
    v8 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v7, v8))
    {
      v11 = 138412290;
      v12 = idCopy;
      _os_log_impl(&dword_0, v7, v8, "Stripping exception id from eventId: %@", &v11, 0xCu);
    }

    v5 = [idCopy substringToIndex:v6];
  }

  v9 = v5;

  return v9;
}

- (void)_respondToMeetingsForActions:(id)actions inFolderWithId:(id)id consumer:(id)consumer
{
  actionsCopy = actions;
  idCopy = id;
  consumerCopy = consumer;
  if ([actionsCopy count])
  {
    v77 = consumerCopy;
    v10 = objc_opt_new();
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v76 = actionsCopy;
    v11 = actionsCopy;
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
          changedItem = [v16 changedItem];
          recurrence = [changedItem recurrence];

          if (recurrence)
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
          changedItem2 = [v24 changedItem];
          recurrence2 = [changedItem2 recurrence];

          if (!recurrence2)
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
          changedItem3 = [v30 changedItem];
          calEvent = [changedItem3 calEvent];
          if (calEvent)
          {
            v33 = calEvent;
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
            v90 = changedItem3;
            if (v36)
            {
              exceptionStartTime = 0;
            }

            else
            {
              v39 = [[ASEvent alloc] initWithCalEvent:v34 serverID:0 account:self];
              v40 = [[ASEventException alloc] initWithCalEvent:v33 originalEvent:v39 account:self];
              exceptionStartTime = [v40 exceptionStartTime];

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

              protocol = [(ASDaemonAccount *)self protocol];
              useInstanceIdForException = [protocol useInstanceIdForException];

              if (useInstanceIdForException)
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

            protocol2 = [(ASDaemonAccount *)self protocol];
            if ([protocol2 useEventIdsInMeetingResponse])
            {

              if (!v42 || !v43)
              {
                v49 = idCopy;

                v50 = v90;
                if (v37)
                {
                  serverID = [v90 serverID];

                  v52 = DALoggingwithCategory();
                  if (os_log_type_enabled(v52, type))
                  {
                    *buf = 138412290;
                    v53 = serverID;
                    v105 = serverID;
                    v54 = v52;
                    v55 = type;
                    v56 = "Retrieved delivery item id from event, id: %@";
                    goto LABEL_66;
                  }

LABEL_67:
                  v53 = serverID;
                }

                else
                {
                  serverID = CalCalendarItemCopyExternalID();

                  v52 = DALoggingwithCategory();
                  if (!os_log_type_enabled(v52, type))
                  {
                    goto LABEL_67;
                  }

                  *buf = 138412290;
                  v53 = serverID;
                  v105 = serverID;
                  v54 = v52;
                  v55 = type;
                  v56 = "Retrieved delivery item id from parent event, id: %@";
LABEL_66:
                  _os_log_impl(&dword_0, v54, v55, v56, buf, 0xCu);
                }

                v59 = v49;

                protocol3 = [(ASDaemonAccount *)self protocol];
                useInstanceIdForException2 = [protocol3 useInstanceIdForException];

                if (useInstanceIdForException2)
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

                responseRequested = [v50 responseRequested];
                intValue = [responseRequested intValue];

                if (v59 && v58)
                {
                  v83 = intValue != 0;
                  v82 = [ASMeetingResponseItem alloc];
                  v62 = [v50 meetingResponseForAccount:self];
                  eventUID = [v50 eventUID];
                  responseComment = [v50 responseComment];
                  [v50 proposedStartTime];
                  v66 = v65 = self;
                  proposedEndTime = [v50 proposedEndTime];
                  LOBYTE(v75) = v83;
                  v68 = v58;
                  v69 = [v82 initWithDeliveryItemFolderId:v59 deliveryItemServerId:v58 instanceDate:exceptionStartTime meetingResponse:v62 eventUID:eventUID responseComment:responseComment responseRequested:v75 proposedStartTime:v66 proposedEndTime:proposedEndTime];

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

                changedItem3 = v90;
                v38 = v59;
                goto LABEL_62;
              }
            }

            else
            {
            }

            v50 = v90;
            v57 = exceptionStartTime;
            exceptionStartTime = 0;
            goto LABEL_52;
          }

          v38 = DALoggingwithCategory();
          if (os_log_type_enabled(v38, v28))
          {
            *buf = 138412290;
            v105 = changedItem3;
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

    actionsCopy = v76;
    if ([v80 count])
    {
      v73 = [[ASMeetingResponseTask alloc] initWithResponseItems:v80];
      [v73 setSourceApplicationBundleIdentifier:@"com.apple.mobilecal"];
      [v73 setDelegate:self];
      [(ASDaemonAccount *)self setConsumer:v77 forTask:v73];
      taskManager = [(ASDaemonAccount *)self taskManager];
      [taskManager submitQueuedTask:v73];
    }

    consumerCopy = v77;
  }
}

- (void)synchronizeNotesFolder:(id)folder noteContext:(id)context previousTag:(id)tag actions:(id)actions changeSet:(id)set notesToDeleteAfterSync:(id)sync isInitialUberSync:(BOOL)uberSync isResyncAfterConnectionFailed:(BOOL)self0 moreLocalChangesAvailable:(BOOL)self1 consumer:(id)self2
{
  folderCopy = folder;
  tagCopy = tag;
  actionsCopy = actions;
  consumerCopy = consumer;
  setCopy = set;
  v21 = DALoggingwithCategory();
  v22 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v21, v22))
  {
    v23 = &stru_6D4A8;
    *buf = 138412802;
    v32 = folderCopy;
    v33 = 2112;
    if (failed)
    {
      v23 = @" resync after connection failure";
    }

    v34 = tagCopy;
    v35 = 2112;
    v36 = v23;
    _os_log_impl(&dword_0, v21, v22, "Syncing Notes folder with id %@, previous key %@%@", buf, 0x20u);
  }

  v24 = [[ASFolderItemsSyncTask alloc] initWithFolderID:folderCopy];
  [v24 setSourceApplicationBundleIdentifier:@"com.apple.mobilenotes"];
  [v24 setPreviousSyncKey:tagCopy];
  [v24 setWillUpdate:1];
  [v24 setDelegate:self];
  [v24 setIsInitialSync:uberSync];
  [v24 setMIMESupport:3];
  [v24 setDataclass:32];
  [v24 setContext:setCopy];

  [v24 setIsResyncAfterConnectionFailed:failed];
  [v24 setMoreLocalChangesAvailable:available];
  v25 = [actionsCopy mutableCopy];
  v26 = _DASyncableActionsFromDAActions(actionsCopy, v25);
  if (v26)
  {
    [v24 setActions:v26];
  }

  [v24 setPushedActions:v25];
  v27 = _ASSyncTaskPreservedActionsFromActions(actionsCopy);
  [v24 setPreservedActions:v27];
  [(ASDaemonAccount *)self setConsumer:consumerCopy forTask:v24];

  v30 = folderCopy;
  v28 = [NSArray arrayWithObjects:&v30 count:1];
  [(ASDaemonAccount *)self suspendMonitoringFoldersWithIDs:v28];

  taskManager = [(ASDaemonAccount *)self taskManager];
  [taskManager submitQueuedTask:v24];
}

- (int)performMoveRequests:(id)requests consumer:(id)consumer
{
  requestsCopy = requests;
  consumerCopy = consumer;
  v6 = objc_opt_new();
  [v6 setPushedMoveRequests:requestsCopy];
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = requestsCopy;
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
      message = [v13 message];
      fromFolder = [v13 fromFolder];
      toFolder = [v13 toFolder];
      [v6 addSourceID:message sourceFolder:fromFolder destinatonFolder:toFolder];

      context = [v13 context];
      changedItem = [context changedItem];
      dataclass = [changedItem dataclass];

      if (dataclass == &dword_4)
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
        context2 = [v13 context];
        changedItem2 = [context2 changedItem];
        dataclass2 = [changedItem2 dataclass];

        if (dataclass2 != &dword_10)
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
  taskID = [v6 taskID];
  if (!v10)
  {
    sub_483FC();
  }

  [v6 setDataclass:v10];
  [(ASDaemonAccount *)self setConsumer:consumerCopy forTask:v6];
  taskManager = [(ASDaemonAccount *)self taskManager];
  [taskManager submitQueuedTask:v6];

  return taskID;
}

- (int)forwardMeeting:(id)meeting withServerId:(id)id withInstanceId:(id)instanceId withFolderId:(id)folderId toEmailAddresses:(id)addresses withAttendeeUUIDs:(id)ds consumer:(id)consumer
{
  meetingCopy = meeting;
  consumerCopy = consumer;
  dsCopy = ds;
  addressesCopy = addresses;
  folderIdCopy = folderId;
  idCopy = id;
  emailAddress = [(ASDaemonAccount *)self emailAddress];
  if (instanceId)
  {
    exceptionDate = [meetingCopy exceptionDate];
    activeSyncString = [exceptionDate activeSyncString];
  }

  else
  {
    activeSyncString = 0;
  }

  v20 = +[NSDate date];
  v21 = +[NSTimeZone systemTimeZone];
  v22 = [v20 dateWithCalendarFormat:@"%a timeZone:%d %b %Y %H:%M:%S %z", v21];
  v36 = [v22 description];

  subject = [meetingCopy subject];
  v23 = objc_opt_new();
  v41 = emailAddress;
  v24 = [NSArray arrayWithObjects:&v41 count:1];
  [v23 setAddressListForSender:v24];

  [v23 setAddressListForTo:addressesCopy];
  [v23 setHeader:v36 forKey:H_DATE];
  [v23 setHeader:subject forKey:H_SUBJECT];
  v25 = objc_opt_new();
  [v25 setDelegate:self];
  v26 = [v25 createMessageWithString:0 headers:v23];
  messageData = [v26 messageData];
  v28 = +[NSString da_newGUID];
  LOBYTE(v33) = 0;
  v34 = emailAddress;
  v29 = [[ASSmartMailTask alloc] initWithMessage:messageData messageID:v28 messageType:2 originalMessageID:idCopy instanceId:activeSyncString originalFolderID:folderIdCopy originalLongID:0 replaceMime:v33];

  [v29 setShouldNotRetry:1];
  [v29 setSourceApplicationBundleIdentifier:@"com.apple.mobilecal"];
  [v29 setDelegate:self];
  v30 = objc_opt_new();
  [v30 setAttendeeUUIDs:dsCopy];

  [v29 setContext:v30];
  [(ASDaemonAccount *)self setConsumer:consumerCopy forTask:v29];

  taskManager = [(ASDaemonAccount *)self taskManager];
  [taskManager submitQueuedTask:v29];

  LODWORD(taskManager) = [v29 taskID];
  return taskManager;
}

- (id)requestCalendarAvailabilityForStartDate:(id)date endDate:(id)endDate ignoredEventID:(id)d addresses:(id)addresses consumer:(id)consumer
{
  dateCopy = date;
  endDateCopy = endDate;
  addressesCopy = addresses;
  consumerCopy = consumer;
  if (d)
  {
    v16 = DALoggingwithCategory();
    v17 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v16, v17))
    {
      *v22 = 0;
      _os_log_impl(&dword_0, v16, v17, "'ignoredEventID' supplied but it will not be used.", v22, 2u);
    }
  }

  v18 = [[ASResolveRecipientsTask alloc] initFreeBusyQueryWithStartDate:dateCopy endDate:endDateCopy emailAddresses:addressesCopy];
  [v18 setSourceApplicationBundleIdentifier:@"com.apple.mobilecal"];
  [v18 setDelegate:self];
  [(ASDaemonAccount *)self setConsumer:consumerCopy forTask:v18];
  taskManager = [(ASDaemonAccount *)self taskManager];
  [taskManager submitQueuedTask:v18];

  v20 = [[NSNumber alloc] initWithInteger:{objc_msgSend(v18, "taskID")}];

  return v20;
}

- (void)cancelCalendarAvailabilityRequestWithID:(id)d
{
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    integerValue = [dCopy integerValue];
    taskManager = [(ASDaemonAccount *)self taskManager];
    [taskManager cancelTaskWithID:integerValue];
  }

  else
  {
    taskManager = DALoggingwithCategory();
    v8 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(taskManager, v8))
    {
      *v9 = 0;
      _os_log_impl(&dword_0, taskManager, v8, "'nil 'requestID' given.  Will not cancel any calendar avilability requests.", v9, 2u);
    }
  }
}

+ (int64_t)_convertCalendarAvailabilityType:(char)type
{
  if ((type - 48) > 4)
  {
    return 0;
  }

  else
  {
    return qword_53990[(type - 48)];
  }
}

- (void)resolveRecipientsTask:(id)task completedWithStatus:(int64_t)status error:(id)error queriedEmailAddressToRecpient:(id)recpient
{
  taskCopy = task;
  errorCopy = error;
  recpientCopy = recpient;
  if (([taskCopy retrieveAvailability] & 1) == 0)
  {
    sub_48458();
  }

  errorCopy = [(ASDaemonAccount *)self consumerForTask:taskCopy, errorCopy];
  if (status != 2)
  {
    v40 = [NSError errorWithDomain:DAErrorDomain code:10 userInfo:0];
    v14 = 0;
LABEL_29:
    v39 = v42;
    goto LABEL_30;
  }

  allKeys = [recpientCopy allKeys];
  v13 = [allKeys count];

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
  obj = [recpientCopy allKeys];
  v15 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v55;
    v18 = &PLLogRegisteredEvent_ptr;
    v46 = recpientCopy;
    v47 = taskCopy;
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
        v52 = [recpientCopy objectForKeyedSubscript:?];
        v53 = objc_alloc_init(v18[357]);
        mergedFreeBusy = [v52 mergedFreeBusy];
        v21 = [mergedFreeBusy length];

        if (v21)
        {
          v22 = malloc_type_malloc((v21 + 1), 0xCB7F40B3uLL);
          if (v22)
          {
            v23 = v22;
            mergedFreeBusy2 = [v52 mergedFreeBusy];
            strncpy(v23, [mergedFreeBusy2 UTF8String], (v21 + 1));

            v25 = *v23;
            startTime = [taskCopy startTime];
            v27 = [startTime dateByAddingTimeInterval:1800.0];
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
                  v34 = [[DAECalendarAvailabilitySpan alloc] initWithStartDate:startTime endDate:v27 type:v28];
                  [v53 addObject:v34];
                  selfCopy = self;
                  v36 = v27;

                  v29 = [v36 dateByAddingTimeInterval:1800.0];

                  v27 = v34;
                  v28 = v33;
                  startTime = v36;
                  self = selfCopy;
                }

                v31 = v30;
                v37 = v21 > v30++;
                v27 = v29;
              }

              while (v37);
            }

            v38 = [[DAECalendarAvailabilitySpan alloc] initWithStartDate:startTime endDate:v29 type:v28];
            [v53 addObject:v38];
            free(v23);

            recpientCopy = v46;
            taskCopy = v47;
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
    [errorCopy calendarAvailabilityRequestReturnedResults:v14];
  }

  v40 = 0;
LABEL_30:
  [errorCopy calendarAvailabilityRequestFinishedWithError:v40];
  [(ASDaemonAccount *)self removeConsumerForTask:taskCopy];
}

- (id)_localizedStringForResponse:(int)response
{
  if (response > 2)
  {
    if (response == 3)
    {
      v4 = [NSBundle bundleForClass:objc_opt_class()];
      v5 = v4;
      v6 = @"MEETING_RESPONSE_DECLINED";
      goto LABEL_13;
    }

    if (response == 4)
    {
      v4 = [NSBundle bundleForClass:objc_opt_class()];
      v5 = v4;
      v6 = @"MEETING_RESPONSE_REPLY";
      goto LABEL_13;
    }
  }

  else
  {
    if (response == 1)
    {
      v4 = [NSBundle bundleForClass:objc_opt_class()];
      v5 = v4;
      v6 = @"MEETING_RESPONSE_ACCEPTED";
      goto LABEL_13;
    }

    if (response == 2)
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
    v11[1] = response;
    _os_log_impl(&dword_0, v7, v8, "\n\nWe are sending an email for an invitation with response %d.  That's not right.  Dropping it.\n\n", v11, 8u);
  }

  v9 = 0;
LABEL_14:

  return v9;
}

- (void)messageWriter:(id)writer willGenerateHeadersForMimePart:(id)part
{
  partCopy = part;
  type = [partCopy type];
  if ([type isEqualToString:@"multipart"])
  {
    subtype = [partCopy subtype];
    v7 = [subtype isEqualToString:@"mixed"];

    if (v7)
    {
      [partCopy setSubtype:@"alternative"];
      goto LABEL_11;
    }
  }

  else
  {
  }

  type2 = [partCopy type];
  if ([type2 isEqualToString:@"text"])
  {
    subtype2 = [partCopy subtype];
    v10 = [subtype2 isEqualToString:@"calendar"];

    if (v10)
    {
      [partCopy setBodyParameter:@"utf-8" forKey:@"charset"];
      v11 = [ICSCalendar ICSStringFromMethod:self->_curReplyMethod];
      if (v11)
      {
        [partCopy setBodyParameter:v11 forKey:@"METHOD"];
      }
    }
  }

  else
  {
  }

LABEL_11:
}

- (void)messageWriter:(id)writer willEncodeHeaders:(id)headers forMimePart:(id)part
{
  headersCopy = headers;
  partCopy = part;
  type = [partCopy type];
  if ([type isEqualToString:@"text"])
  {
    subtype = [partCopy subtype];
    v9 = [subtype isEqualToString:@"calendar"];

    if (v9)
    {
      [headersCopy removeHeaderForKey:H_CONTENT_DISPOSITION];
    }
  }

  else
  {
  }
}

- (id)copyMessageStringWithPlainTextString:(id)string vCalMethod:(int)method vCalAttachmentData:(id)data fromAddress:(id)address toAddresses:(id)addresses date:(id)date subject:(id)subject outMessageID:(id *)self0
{
  dataCopy = data;
  addressCopy = address;
  subjectCopy = subject;
  dateCopy = date;
  addressesCopy = addresses;
  stringCopy = string;
  v21 = objc_opt_new();
  v38 = addressCopy;
  v40 = addressCopy;
  v22 = [NSArray arrayWithObjects:&v40 count:1];
  [v21 setAddressListForSender:v22];

  [v21 setAddressListForTo:addressesCopy];
  [v21 setHeader:dateCopy forKey:H_DATE];

  [v21 setHeader:subjectCopy forKey:H_SUBJECT];
  attachmentManager = self->_attachmentManager;
  if (!attachmentManager)
  {
    v24 = objc_alloc_init(MFAttachmentComposeManager);
    v25 = self->_attachmentManager;
    self->_attachmentManager = v24;

    attachmentManager = self->_attachmentManager;
  }

  v26 = dataCopy;
  v27 = [(MFAttachmentComposeManager *)attachmentManager attachmentForData:dataCopy mimeType:@"text/calendar" fileName:@"meeting.ics" contentID:0 context:@"DataAccess"];
  self->_curReplyMethod = method;
  v28 = objc_opt_new();
  [v28 appendString:stringCopy withQuoteLevel:0];

  v29 = objc_opt_new();
  [v29 setDelegate:self];
  v39[0] = v28;
  v39[1] = v27;
  v30 = [NSArray arrayWithObjects:v39 count:2];
  v31 = [v29 createMessageWithPlainTextDocumentsAndAttachments:v30 headers:v21];

  *d = [v31 messageIDHeaderInFortyBytesOrLess];
  messageData = [v31 messageData];
  v33 = [[NSMutableString alloc] initWithData:messageData encoding:4];
  [v33 convertLineEndingsTo:@"\r\n"];
  [v31 setMessageBody:0];
  v34 = self->_attachmentManager;
  v35 = [v27 url];
  [(MFAttachmentComposeManager *)v34 removeAttachmentForURL:v35];

  return v33;
}

- (id)_copyICSDateFromDate:(id)date timeZone:(id)zone
{
  dateCopy = date;
  zoneCopy = zone;
  if (!zoneCopy)
  {
    zoneCopy = +[NSTimeZone gmt];
  }

  v7 = [dateCopy dateWithCalendarFormat:0 timeZone:zoneCopy];
  v8 = [[ICSDate alloc] initWithYear:objc_msgSend(v7 month:"yearOfCommonEra") day:objc_msgSend(v7 hour:"monthOfYear") minute:objc_msgSend(v7 second:"dayOfMonth") timeZone:{objc_msgSend(v7, "hourOfDay"), objc_msgSend(v7, "minuteOfHour"), objc_msgSend(v7, "secondOfMinute"), zoneCopy}];

  return v8;
}

- (id)_stringWithRFC822DataFromEvent:(id)event icsMethod:(int)method recipients:(id)recipients recipientBareEmails:(id)emails exceptionDate:(id)date outMessageID:(id *)d
{
  eventCopy = event;
  recipientsCopy = recipients;
  emailsCopy = emails;
  dateCopy = date;
  selfCopy = self;
  emailAddress = [(ASDaemonAccount *)self emailAddress];
  allDayEvent = [eventCopy allDayEvent];
  LODWORD(recipients) = [allDayEvent BOOLValue];

  [eventCopy calEvent];
  v148 = ICSEventFromCalEventFixUpCalEvent();
  if (recipients)
  {
    startTime = [eventCopy startTime];
    endTime = [eventCopy endTime];
    timeZone = [eventCopy timeZone];
    v20 = [(ASDaemonAccount *)self _copyICSDateFromDate:startTime timeZone:timeZone];

    timeZone2 = [eventCopy timeZone];
    v22 = recipientsCopy;
    v23 = [(ASDaemonAccount *)self _copyICSDateFromDate:endTime timeZone:timeZone2];

    [v148 setDtstart:v20];
    [v148 setDtend:v23];
    [v148 setForcedAllDay:1];
    v24 = [[ICSProperty alloc] initWithValue:&__kCFBooleanTrue type:5012];
    [v148 setProperty:v24 forName:@"X-MICROSOFT-CDO-ALLDAYEVENT"];

    recipientsCopy = v22;
  }

  eventUID = [eventCopy eventUID];
  timeZone3 = [eventCopy timeZone];
  v138 = eventUID;
  v27 = [eventUID uidForResponseEmailWithTimeZone:timeZone3];

  recurrence = [eventCopy recurrence];
  v136 = recurrence;
  if (recurrence)
  {
    until = [recurrence until];
    v141 = [(ASDaemonAccount *)self _copyICSDateFromDate:until timeZone:0];
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
      dTStamp = [eventCopy dTStamp];
      v34 = [ModifiedDate compare:dTStamp];

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

  dTStamp2 = [eventCopy dTStamp];
  ModifiedDate = [(ASDaemonAccount *)self _copyICSDateFromDate:dTStamp2 timeZone:0];

  [v148 setDtstamp:ModifiedDate];
  [v148 setLast_modified:ModifiedDate];
LABEL_12:

  location = [v148 location];

  if (!location)
  {
    [v148 setLocation:&stru_6D4A8];
  }

  rrule = [v148 rrule];
  if ([rrule count] == &dword_0 + 1)
  {
    v38 = [rrule objectAtIndexedSubscript:0];
    until2 = [v38 until];

    if (until2)
    {
      value = [v141 value];
      [v38 setUntil:value];
    }
  }

  v140 = recipientsCopy;
  v143 = dateCopy;
  v137 = v27;
  if (method != 3)
  {
    v41 = [NSMutableSet alloc];
    attendees = [eventCopy attendees];
    v43 = [v41 initWithArray:attendees];

    attendeesPendingDeletion = [eventCopy attendeesPendingDeletion];
    [v43 addObjectsFromArray:attendeesPendingDeletion];

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
          email = [v51 email];
          if (email && [emailsCopy containsObject:email])
          {
            icsUserAddress = [v51 icsUserAddress];
            if (icsUserAddress)
            {
              [v45 addObject:icsUserAddress];
            }
          }
        }

        v48 = [v46 countByEnumeratingWithState:&v157 objects:v168 count:16];
      }

      while (v48);
    }

    [v148 setAttendee:v45];
    recipientsCopy = v140;
    dateCopy = v143;
  }

  if (dateCopy)
  {
    startTime2 = [eventCopy startTime];
    timeZone4 = [eventCopy timeZone];
    v56 = [NSCalendarDate combinedDateWithYMDFrom:dateCopy HMSFrom:startTime2 componentDatesTimezone:timeZone4];

    endTime2 = [eventCopy endTime];
    startTime3 = [eventCopy startTime];
    [endTime2 timeIntervalSinceDate:startTime3];
    v60 = v59;

    v61 = [v56 dateByAddingTimeInterval:v60];
    timeZone5 = [eventCopy timeZone];
    v63 = recipientsCopy;
    v64 = [(ASDaemonAccount *)self _copyICSDateFromDate:v56 timeZone:timeZone5];

    timeZone6 = [eventCopy timeZone];
    v66 = [(ASDaemonAccount *)self _copyICSDateFromDate:v61 timeZone:timeZone6];

    [v148 setDtstart:v64];
    [v148 setDtend:v66];
    [v148 setRecurrence_id:v64];
    [v148 setExdate:0];

    recipientsCopy = v63;
  }

  if (method == 3)
  {
    v67 = -[ASDaemonAccount _localizedStringForResponse:](self, "_localizedStringForResponse:", [eventCopy meetingResponseForEmail]);
    if (v67)
    {
      v68 = v67;
      subject = [eventCopy subject];
      v70 = subject;
      v71 = &stru_6D4A8;
      if (subject)
      {
        v71 = subject;
      }

      v72 = [NSString stringWithFormat:@"%@ %@", v68, v71];

      attendee = [v148 attendee];
      meetingResponseForEmail = [eventCopy meetingResponseForEmail];
      if (meetingResponseForEmail > 2)
      {
        if (meetingResponseForEmail == 3)
        {
          v135 = v72;
          v75 = 3;
          goto LABEL_72;
        }

        if (meetingResponseForEmail == 4)
        {
          v99 = [eventCopy selfAttendeeMeetingResponse] - 1;
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
        if (meetingResponseForEmail == 1)
        {
          v135 = v72;
          v75 = 2;
          goto LABEL_72;
        }

        if (meetingResponseForEmail == 2)
        {
          v135 = v72;
          v75 = 4;
LABEL_72:
          v155 = 0u;
          v156 = 0u;
          v153 = 0u;
          v154 = 0u;
          v80 = attendee;
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
                emailAddress2 = [v108 emailAddress];
                if ([(ASDaemonAccount *)selfCopy accountContainsEmailAddress:emailAddress2])
                {
                  [v108 setPartstat:v75];

                  v166 = v108;
                  v112 = &v166;
                  v87 = v80;
                  v90 = emailAddress2;
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
          emailAddress3 = [(ASDaemonAccount *)selfCopy emailAddress];
          v87 = [v110 initWithEmailAddress:emailAddress3];

          [v87 setPartstat:v75];
          [v87 setCutype:1];
          v165 = v87;
          v112 = &v165;
          v90 = emailAddress;
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
        meetingResponseForEmail2 = [eventCopy meetingResponseForEmail];
        *buf = 67109378;
        *v162 = meetingResponseForEmail2;
        *&v162[4] = 2112;
        *&v162[6] = eventCopy;
        _os_log_impl(&dword_0, v100, v101, "We are sending an email for an invitation with response %d.  That's not right.  Dropping this email on the floor.  Event %@", buf, 0x12u);
      }

      *d = 0;
      v95 = 0;
    }

    else
    {
      v92 = DALoggingwithCategory();
      v93 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v92, v93))
      {
        meetingResponseForEmail3 = [eventCopy meetingResponseForEmail];
        *buf = 67109378;
        *v162 = meetingResponseForEmail3;
        *&v162[4] = 2112;
        *&v162[6] = eventCopy;
        _os_log_impl(&dword_0, v92, v93, "We are sending an email for an invitation with response %d.  That's not right.  Dropping this email on the floor.  Event %@", buf, 0x12u);
      }

      v95 = 0;
      *d = 0;
    }

    v103 = emailAddress;
    goto LABEL_102;
  }

  subject2 = [eventCopy subject];
  v77 = subject2;
  v78 = &stru_6D4A8;
  if (subject2)
  {
    v78 = subject2;
  }

  v135 = v78;

  attendee2 = [v148 attendee];
  v80 = [attendee2 mutableCopy];
  v149 = 0u;
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v68 = attendee2;
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

  organizer = [v148 organizer];
  v87 = organizer;
  if (organizer)
  {
    emailAddress4 = [organizer emailAddress];
    v89 = emailAddress4;
    v90 = emailAddress;
    if (emailAddress4)
    {
      v91 = emailAddress4;

      v90 = v91;
    }
  }

  else
  {
    v90 = emailAddress;
  }

  [v148 setAttendee:v80];
  busyStatus = [eventCopy busyStatus];
  intValue = [busyStatus intValue];

  if (intValue > 3)
  {
    goto LABEL_84;
  }

  v98 = [[ICSProperty alloc] initWithValue:off_6D210[intValue] type:5007];
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
  [v114 setMethod:method];
  v116 = CalCreateiCalendarDataFromICSCalendar();
  v117 = [[NSMutableString alloc] initWithData:v116 encoding:4];
  v118 = DALoggingwithCategory();
  v119 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v118, v119))
  {
    *buf = 138412546;
    *v162 = eventCopy;
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
  v123 = [v122 dateWithCalendarFormat:@"%a timeZone:%d %b %Y %H:%M:%S %z", v123];
  v125 = [v123 description];

  v134 = eventCopy;
  if (method == 3)
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
    v126 = [NSString stringWithFormat:@"%@\n", v126];
  }

  else
  {
    v126 = 0;
  }

  if (v126)
  {
    v130 = v126;
  }

  else
  {
    v130 = @"\n";
  }

  v131 = v128;
  v132 = v128;
  recipientsCopy = v140;
  v95 = [(ASDaemonAccount *)selfCopy copyMessageStringWithPlainTextString:v130 vCalMethod:method vCalAttachmentData:v132 fromAddress:v145 toAddresses:v140 date:v125 subject:v135 outMessageID:d];

  eventCopy = v134;
LABEL_102:

  return v95;
}

- (void)addStringsToEmailForEventIOriginated:(id)originated deletedExceptionOccurrenceDate:(id)date stringsToEmail:(id)email eventUUIDsToEmail:(id)toEmail externalIDs:(id)ds messageIDsToEmail:(id)dsToEmail eventsDroppedDueToAge:(id)age checkEventForNeedingInvite:(BOOL)self0
{
  originatedCopy = originated;
  dateCopy = date;
  emailCopy = email;
  v18 = dateCopy;
  v144 = emailCopy;
  toEmailCopy = toEmail;
  dsCopy = ds;
  dsToEmailCopy = dsToEmail;
  ageCopy = age;
  hasOccurrenceInTheFuture = [originatedCopy hasOccurrenceInTheFuture];
  isTombstoneEndTimeInFuture = [originatedCopy isTombstoneEndTimeInFuture];
  if (v18 && hasOccurrenceInTheFuture)
  {
    if ([originatedCopy calEvent])
    {
      Duration = CalEventGetDuration();
    }

    else
    {
      Duration = 0.0;
    }

    v25 = [v18 dateByAddingTimeInterval:Duration];
    [v25 timeIntervalSinceNow];
    hasOccurrenceInTheFuture = v26 >= 0.0;
  }

  v136 = v18;
  if (((hasOccurrenceInTheFuture | isTombstoneEndTimeInFuture) & 1) == 0)
  {
    if (!v18)
    {
      [ageCopy addObject:originatedCopy];
    }

    goto LABEL_123;
  }

  if ([originatedCopy calEvent])
  {
    ExternalTrackingStatus = CalEventGetExternalTrackingStatus();
    v28 = (ExternalTrackingStatus & 6) == 0;
    if (invite)
    {
      v28 = ExternalTrackingStatus;
    }

    if (v28)
    {
      calCalendarItemStatus = [originatedCopy CalCalendarItemStatus];
      if (v18 || calCalendarItemStatus == 3 || (v30 = CalEventCopyOriginalEvent()) != 0 && (v31 = v30, Status = CalCalendarItemGetStatus(), CFRelease(v31), Status == 3))
      {
        attendees = [originatedCopy attendees];
        if (![attendees count])
        {
          v49 = 1;
          v141 = 1;
          goto LABEL_108;
        }

        v134 = dsCopy;
        v137 = dsToEmailCopy;
        v34 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(attendees, "count")}];
        v35 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(attendees, "count")}];
        v157 = 0u;
        v158 = 0u;
        v159 = 0u;
        v160 = 0u;
        v36 = attendees;
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
              fullEmailString = [v41 fullEmailString];
              email = [v41 email];
              v44 = email;
              if (fullEmailString)
              {
                v45 = email == 0;
              }

              else
              {
                v45 = 1;
              }

              if (!v45)
              {
                [v34 addObject:fullEmailString];
                [v35 addObject:v44];
              }
            }

            v38 = [v36 countByEnumeratingWithState:&v157 objects:v165 count:16];
          }

          while (v38);
        }

        attendees = v36;

        if (![v34 count])
        {
          v49 = 1;
          v141 = 1;
          dsToEmailCopy = v137;
          dsCopy = v134;
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
        [(ASDaemonAccount *)self _stringWithRFC822DataFromEvent:originatedCopy icsMethod:5 recipients:v34 recipientBareEmails:v35 exceptionDate:v136 outMessageID:&v156];
        v47 = v46 = originatedCopy;
        v48 = v156;
        v49 = v47 == 0;
        dsCopy = v134;
        v131 = v47;
        v133 = v46;
        if (v47)
        {
          eventUID = [v46 eventUID];
          v51 = [eventUID copy];

          if (v136)
          {
            [v51 setExceptionDate:v136];
          }

          else
          {
            exceptionDate = [v46 exceptionDate];
            [v51 setExceptionDate:exceptionDate];
          }

          v75 = v46;
          v76 = v51;
          v73 = v131;
          [v144 addObject:v131];
          v129 = v76;
          uidForCalFramework = [v76 uidForCalFramework];
          [toEmailCopy addObject:uidForCalFramework];

          serverID = [v75 serverID];

          attendees = v140;
          if (serverID)
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

          dsToEmailCopy = v137;
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

          dsToEmailCopy = v137;
          attendees = v140;
          v73 = 0;
        }

        v70 = v73 != 0;
      }

      else
      {
        attendeesPendingDeletion = [originatedCopy attendeesPendingDeletion];
        v34 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(attendeesPendingDeletion, "count")}];
        v35 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(attendeesPendingDeletion, "count")}];
        v135 = dsCopy;
        v138 = dsToEmailCopy;
        v142 = attendeesPendingDeletion;
        if ([attendeesPendingDeletion count])
        {
          v155 = 0u;
          v153 = 0u;
          v154 = 0u;
          v152 = 0u;
          v53 = attendeesPendingDeletion;
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
                fullEmailString2 = [v58 fullEmailString];
                email2 = [v58 email];
                v61 = email2;
                if (fullEmailString2)
                {
                  v62 = email2 == 0;
                }

                else
                {
                  v62 = 1;
                }

                if (!v62)
                {
                  [v34 addObject:fullEmailString2];
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
            v63 = [(ASDaemonAccount *)self _stringWithRFC822DataFromEvent:originatedCopy icsMethod:5 recipients:v34 recipientBareEmails:v35 exceptionDate:0 outMessageID:&v151];
            v64 = v151;
            dsCopy = v135;
            if (v63)
            {
              eventUID2 = [originatedCopy eventUID];
              v66 = [eventUID2 copy];

              exceptionDate2 = [originatedCopy exceptionDate];
              [v66 setExceptionDate:exceptionDate2];

              [v144 addObject:v63];
              uidForCalFramework2 = [v66 uidForCalFramework];
              [toEmailCopy addObject:uidForCalFramework2];

              serverID2 = [originatedCopy serverID];

              if (serverID2)
              {
                [originatedCopy serverID];
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

              dsToEmailCopy = v138;
              [v138 addObject:v64];
            }

            else
            {
              v66 = DALoggingwithCategory();
              v80 = _CPLog_to_os_log_type[3];
              if (os_log_type_enabled(v66, v80))
              {
                *buf = 138412290;
                v164 = originatedCopy;
                _os_log_impl(&dword_0, v66, v80, "Couldn't cons up a cancel-some email for event %@", buf, 0xCu);
              }

              dsToEmailCopy = v138;
            }

            v70 = v63 != 0;
          }

          else
          {
            v70 = 0;
            dsCopy = v135;
            dsToEmailCopy = v138;
          }
        }

        else
        {
          v70 = 0;
        }

        attendees2 = [originatedCopy attendees];
        v48 = [attendees2 mutableCopy];

        attendees = v142;
        [v48 removeObjectsInArray:v142];
        if (![v48 count])
        {
          v49 = 1;
LABEL_106:

          v141 = !v70;
          goto LABEL_107;
        }

        v132 = v70;
        v133 = originatedCopy;
        v127 = toEmailCopy;
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
              fullEmailString3 = [v88 fullEmailString];
              email3 = [v88 email];
              v91 = email3;
              if (fullEmailString3)
              {
                v92 = email3 == 0;
              }

              else
              {
                v92 = 1;
              }

              if (!v92)
              {
                [v73 addObject:fullEmailString3];
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
          toEmailCopy = v127;
          dsCopy = v135;
          attendees = v142;
          v126 = v93;
          if (v93)
          {
            eventUID3 = [v133 eventUID];
            v128 = [eventUID3 copy];

            exceptionDate3 = [v133 exceptionDate];
            [v128 setExceptionDate:exceptionDate3];

            [v144 addObject:v93];
            uidForCalFramework3 = [v128 uidForCalFramework];
            [v127 addObject:uidForCalFramework3];

            serverID3 = [v133 serverID];

            if (serverID3)
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

            dsToEmailCopy = v138;
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

            dsToEmailCopy = v138;
          }
        }

        else
        {
          toEmailCopy = v127;
          dsCopy = v135;
          dsToEmailCopy = v138;
          attendees = v142;
        }

        v49 = 1;
        v70 = v132;
      }

      originatedCopy = v133;
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
    exceptions = [originatedCopy exceptions];
    v103 = [exceptions count];

    if (v103)
    {
      v104 = 0;
      v139 = dsToEmailCopy;
      do
      {
        exceptions2 = [originatedCopy exceptions];
        v106 = [exceptions2 objectAtIndexedSubscript:v104];

        isDeleted = [v106 isDeleted];
        bOOLValue = [isDeleted BOOLValue];

        if (bOOLValue)
        {
          v109 = dsCopy;
          v110 = toEmailCopy;
          eventUID4 = [v106 eventUID];
          uidForCalFramework4 = [eventUID4 uidForCalFramework];

          if (v104)
          {
            v113 = 0;
            while (1)
            {
              exceptions3 = [originatedCopy exceptions];
              v115 = [exceptions3 objectAtIndexedSubscript:v113];

              isDeleted2 = [v115 isDeleted];
              bOOLValue2 = [isDeleted2 BOOLValue];

              if (bOOLValue2)
              {
                eventUID5 = [v115 eventUID];
                uidForCalFramework5 = [eventUID5 uidForCalFramework];

                v120 = [uidForCalFramework4 compare:uidForCalFramework5];
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

            toEmailCopy = v110;
            dsCopy = v109;
            dsToEmailCopy = v139;
          }

          else
          {
LABEL_118:
            exceptionDate4 = [v106 exceptionDate];
            LOBYTE(v125) = v141;
            toEmailCopy = v110;
            v122 = v110;
            dsCopy = v109;
            dsToEmailCopy = v139;
            [(ASDaemonAccount *)self addStringsToEmailForEventIOriginated:originatedCopy deletedExceptionOccurrenceDate:exceptionDate4 stringsToEmail:v144 eventUUIDsToEmail:v122 externalIDs:v109 messageIDsToEmail:v139 eventsDroppedDueToAge:ageCopy checkEventForNeedingInvite:v125];
          }
        }

        else
        {
          LOBYTE(v125) = v141;
          [(ASDaemonAccount *)self addStringsToEmailForEventIOriginated:v106 deletedExceptionOccurrenceDate:0 stringsToEmail:v144 eventUUIDsToEmail:toEmailCopy externalIDs:dsCopy messageIDsToEmail:dsToEmailCopy eventsDroppedDueToAge:ageCopy checkEventForNeedingInvite:v125];
        }

        ++v104;
        exceptions4 = [originatedCopy exceptions];
        v124 = [exceptions4 count];
      }

      while (v104 < v124);
    }
  }

LABEL_123:
}

- (BOOL)addStringsToEmailForEventIAmAttending:(id)attending recipient:(id)recipient stringsToEmail:(id)email eventUUIDsToEmail:(id)toEmail externalIDs:(id)ds messageIDsToEmail:(id)dsToEmail eventsDroppedDueToAge:(id)age checkEventForNeedingInvite:(BOOL)self0
{
  attendingCopy = attending;
  recipientCopy = recipient;
  emailCopy = email;
  toEmailCopy = toEmail;
  dsCopy = ds;
  dsToEmailCopy = dsToEmail;
  ageCopy = age;
  if (([attendingCopy hasOccurrenceInTheFuture] & 1) == 0)
  {
    [ageCopy addObject:attendingCopy];
    goto LABEL_7;
  }

  if (![attendingCopy calEvent])
  {
LABEL_7:
    v25 = 0;
    goto LABEL_18;
  }

  v37 = emailCopy;
  v41 = recipientCopy;
  v23 = [NSArray arrayWithObjects:&v41 count:1];
  v38 = 0;
  v24 = [(ASDaemonAccount *)self _stringWithRFC822DataFromEvent:attendingCopy icsMethod:3 recipients:v23 recipientBareEmails:0 exceptionDate:0 outMessageID:&v38];
  v36 = v38;

  v25 = v24 == 0;
  if (v24)
  {
    [v37 addObject:v24];
    eventUID = [attendingCopy eventUID];
    uidForCalFramework = [eventUID uidForCalFramework];
    [toEmailCopy addObject:uidForCalFramework];

    serverID = [attendingCopy serverID];

    if (serverID)
    {
      [attendingCopy serverID];
    }

    else
    {
      +[NSNull null];
    }
    v33 = ;
    [dsCopy addObject:v33];

    v32 = v36;
    if (!v36)
    {
      v32 = +[NSString da_newGUID];
    }

    [dsToEmailCopy addObject:v32];
  }

  else
  {
    v29 = DALoggingwithCategory();
    type = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v29, type))
    {
      *buf = 138412290;
      v40 = attendingCopy;
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

  emailCopy = v37;
LABEL_18:

  return v25;
}

- (BOOL)sendEmailsForCalEvents:(id)events consumer:(id)consumer
{
  eventsCopy = events;
  consumerCopy = consumer;
  v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(eventsCopy, "count")}];
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v8 = eventsCopy;
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
        recurrence = [v13 recurrence];

        if (recurrence)
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
        recurrence2 = [v19 recurrence];

        if (!recurrence2)
        {
          [v7 addObject:v19];
        }
      }

      v16 = [obj countByEnumeratingWithState:&v86 objects:v98 count:16];
    }

    while (v16);
  }

  v63 = v7;
  v73 = consumerCopy;

  v76 = objc_opt_new();
  v21 = objc_opt_new();
  v22 = objc_opt_new();
  v75 = objc_opt_new();
  v23 = objc_opt_new();
  protocol = [(ASDaemonAccount *)self protocol];
  sendEmailForMeetingInvitationAndResponse = [protocol sendEmailForMeetingInvitationAndResponse];

  if (sendEmailForMeetingInvitationAndResponse)
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
          attendees = [v27 attendees];
          v29 = [attendees count] != 0;
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

        hasOccurrenceInTheFuture = [v27 hasOccurrenceInTheFuture];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          isTombstoneEndTimeInFuture = [v27 isTombstoneEndTimeInFuture];
        }

        else
        {
          isTombstoneEndTimeInFuture = 0;
        }

        if ((hasOccurrenceInTheFuture | isTombstoneEndTimeInFuture))
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
              fullOrganizerString = [v27 fullOrganizerString];
              if (fullOrganizerString)
              {
                LOBYTE(v62) = 1;
                v66 |= [(ASDaemonAccount *)self addStringsToEmailForEventIAmAttending:v27 recipient:fullOrganizerString stringsToEmail:v76 eventUUIDsToEmail:v21 externalIDs:v22 messageIDsToEmail:v75 eventsDroppedDueToAge:v23 checkEventForNeedingInvite:v62];
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
        exceptions = [v27 exceptions];
        v37 = [exceptions countByEnumeratingWithState:&v78 objects:v94 count:16];
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
                objc_enumerationMutation(exceptions);
              }

              v41 = *(*(&v78 + 1) + 8 * k);
              isDeleted = [v41 isDeleted];
              bOOLValue = [isDeleted BOOLValue];

              if ((bOOLValue & 1) == 0)
              {
                [v23 addObject:v41];
              }
            }

            v38 = [exceptions countByEnumeratingWithState:&v78 objects:v94 count:16];
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
    protocol2 = [(ASDaemonAccount *)self protocol];
    protocolVersion = [protocol2 protocolVersion];
    *buf = 138412290;
    v96 = protocolVersion;
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

- (void)_reallyAttemptInvitationLinkageForMetaDatas:(id)datas deliveryIdsToClear:(id)clear deliveryIdsToSoftClear:(id)softClear inFolderWithId:(id)id callback:(id)callback
{
  datasCopy = datas;
  clearCopy = clear;
  softClearCopy = softClear;
  idCopy = id;
  callbackCopy = callback;
  v17 = DALoggingwithCategory();
  v18 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v17, v18))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v17, v18, "ProcessMeetingRequests: attempting invitation linkage", buf, 2u);
  }

  v19 = [(ASDaemonAccount *)self folderWithId:idCopy];
  if (v19)
  {
    v89 = [(ASDaemonAccount *)self sniffableTypeForFolder:v19];
    if (v89)
    {
      v85 = v19;
      v87 = callbackCopy;
      type = v18;
      v90 = softClearCopy;
      v91 = clearCopy;
      v95 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(datasCopy, "count")}];
      v121 = 0u;
      v122 = 0u;
      v123 = 0u;
      v124 = 0u;
      v88 = datasCopy;
      obj = datasCopy;
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
      reverseObjectEnumerator = [v95 reverseObjectEnumerator];
      v33 = [reverseObjectEnumerator countByEnumeratingWithState:&v116 objects:v130 count:16];
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
              objc_enumerationMutation(reverseObjectEnumerator);
            }

            v37 = *(*(&v116 + 1) + 8 * j);
            uidForCalFramework = [v37 uidForCalFramework];
            if (uidForCalFramework)
            {
              if ([v30 containsObject:uidForCalFramework])
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
                [v30 addObject:uidForCalFramework];
                [v31 addObject:v37];
              }
            }
          }

          v34 = [reverseObjectEnumerator countByEnumeratingWithState:&v116 objects:v130 count:16];
        }

        while (v34);
      }

      v40 = +[ASLocalDBHelper sharedInstance];
      accountID = [(ASDaemonAccount *)self accountID];
      changeTrackingID = [(ASDaemonAccount *)self changeTrackingID];
      [v40 calOpenDatabaseForAccountID:accountID clientID:changeTrackingID];

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
      accountID2 = [(ASDaemonAccount *)self accountID];
      [v50 calCloseDatabaseForAccountID:accountID2 save:v47 & 1];

      v52 = +[ASLocalDBHelper sharedInstance];
      accountID3 = [(ASDaemonAccount *)self accountID];
      [v52 calOpenDatabaseAsGenericClientForAccountID:accountID3];

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

            v57 |= [(ASDaemonAccount *)self _clearOutInviteWithDeliveryFolderId:idCopy deliveryServerId:*(*(&v108 + 1) + 8 * m) wasSoftDelete:0 considerInvitedToInvitations:1];
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

            v57 |= [(ASDaemonAccount *)self _clearOutInviteWithDeliveryFolderId:idCopy deliveryServerId:*(*(&v104 + 1) + 8 * n) wasSoftDelete:1 considerInvitedToInvitations:1];
          }

          v62 = [v60 countByEnumeratingWithState:&v104 objects:v127 count:16];
        }

        while (v62);
      }

      v65 = +[ASLocalDBHelper sharedInstance];
      accountID4 = [(ASDaemonAccount *)self accountID];
      [v65 calCloseDatabaseForAccountID:accountID4 save:v57 & 1];

      v67 = +[ASLocalDBHelper sharedInstance];
      accountID5 = [(ASDaemonAccount *)self accountID];
      changeTrackingID2 = [(ASDaemonAccount *)self changeTrackingID];
      [v67 calOpenDatabaseForAccountID:accountID5 clientID:changeTrackingID2];

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

            v73 |= [(ASDaemonAccount *)self _clearOutInviteWithDeliveryFolderId:idCopy deliveryServerId:*(*(&v100 + 1) + 8 * ii) wasSoftDelete:0 considerInvitedToInvitations:0];
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

            v73 |= [(ASDaemonAccount *)self _clearOutInviteWithDeliveryFolderId:idCopy deliveryServerId:*(*(&v96 + 1) + 8 * jj) wasSoftDelete:1 considerInvitedToInvitations:0];
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
      accountID6 = [(ASDaemonAccount *)self accountID];
      [v81 calCloseDatabaseForAccountID:accountID6 save:v73 & 1];

      callbackCopy = v87;
      datasCopy = v88;
      softClearCopy = v90;
      clearCopy = v91;
      v18 = type;
    }
  }

  v83 = DALoggingwithCategory();
  if (os_log_type_enabled(v83, v18))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v83, v18, "ProcessMeetingRequests: calling back with invitation linkage success", buf, 2u);
  }

  callbackCopy[2](callbackCopy, 1);
  v84 = +[DALocalDBGateKeeper sharedGateKeeper];
  [v84 relinquishLocksForWaiter:self dataclasses:4 moreComing:0];
}

- (void)attemptInvitationLinkageForMetaDatas:(id)datas deliveryIdsToClear:(id)clear deliveryIdsToSoftClear:(id)softClear inFolderWithId:(id)id callback:(id)callback
{
  datasCopy = datas;
  clearCopy = clear;
  softClearCopy = softClear;
  idCopy = id;
  callbackCopy = callback;
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
  v26 = datasCopy;
  v27 = clearCopy;
  v28 = softClearCopy;
  v29 = idCopy;
  v30 = callbackCopy;
  v20 = idCopy;
  v21 = softClearCopy;
  v22 = clearCopy;
  v23 = datasCopy;
  v24 = callbackCopy;
  [v19 registerPreemptiveWaiter:self forDataclassLocks:4 completionHandler:v25];
}

- (BOOL)_clearOutInviteWithDeliveryFolderId:(id)id deliveryServerId:(id)serverId wasSoftDelete:(BOOL)delete considerInvitedToInvitations:(BOOL)invitations
{
  invitationsCopy = invitations;
  deleteCopy = delete;
  idCopy = id;
  serverIdCopy = serverId;
  v13 = DALoggingwithCategory();
  v14 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v13, v14))
  {
    *buf = 138412802;
    *v33 = idCopy;
    *&v33[8] = 2112;
    v34 = serverIdCopy;
    v35 = 1024;
    v36 = deleteCopy;
    _os_log_impl(&dword_0, v13, v14, "Clearing out invite with folder id %@ server id %@, wasSoftDelete = %d", buf, 0x1Cu);
  }

  if (!idCopy || !serverIdCopy)
  {
    sub_484C4(a2, self, idCopy, serverIdCopy);
  }

  v15 = +[ASLocalDBHelper sharedInstance];
  accountID = [(ASDaemonAccount *)self accountID];
  [v15 calDatabaseForAccountID:accountID];
  v17 = CalDatabaseCopyEventActionWithFolderIDAndExternalID();

  if (v17)
  {
    v18 = CalEventActionCopyOwningEvent();
    if (v18)
    {
      v19 = v18;
      v20 = [[ASEvent alloc] initWithCalEvent:v18 serverID:serverIdCopy account:self];
      v21 = [v20 cachedOrganizerIsSelfWithAccount:self] ^ invitationsCopy;
      if (v21 == 1)
      {
        v22 = CalCalendarItemCopyExternalID();
        if (v22)
        {
          cf = v22;
          Status = CalCalendarItemGetStatus();
          calAttendeeStatus = [v20 calAttendeeStatus];
          v23 = DALoggingwithCategory();
          if (os_log_type_enabled(v23, v14))
          {
            *buf = 67109376;
            *v33 = Status;
            *&v33[4] = 1024;
            *&v33[6] = calAttendeeStatus;
            _os_log_impl(&dword_0, v23, v14, "While clearing out invite, I found an invite with event status %d, attendee status %d", buf, 0xEu);
          }

          if (Status == 3 && calAttendeeStatus == 2)
          {
            CalRemoveEvent();
          }

          else
          {
            CalEventRemoveEventAction();
            if (!deleteCopy && Status == 1)
            {
              protocol = [(ASDaemonAccount *)self protocol];
              serverUpdatesAttendeeStatusOnEvents = [protocol serverUpdatesAttendeeStatusOnEvents];

              if ((serverUpdatesAttendeeStatusOnEvents & 1) == 0)
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
  protocol = [(ASDaemonAccount *)self protocol];
  supportsSettingsCommand = [protocol supportsSettingsCommand];

  if (supportsSettingsCommand)
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
    taskManager = [(ASDaemonAccount *)self taskManager];
    [taskManager submitIndependentTask:v5];

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

- (void)settingsTask:(id)task completedWithStatus:(int64_t)status error:(id)error response:(id)response
{
  taskCopy = task;
  errorCopy = error;
  responseCopy = response;
  v13 = DALoggingwithCategory();
  v14 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v13, v14))
  {
    *buf = 138413314;
    selfCopy = self;
    v55 = 2112;
    *v56 = taskCopy;
    *&v56[8] = 2048;
    *&v56[10] = status;
    v57 = 2112;
    v58 = errorCopy;
    v59 = 2112;
    v60 = responseCopy;
    _os_log_impl(&dword_0, v13, v14, "%@:Settings task %@ completed with status %ld, error %@, response: %@", buf, 0x34u);
  }

  v15 = [(ASDaemonAccount *)self consumerForTask:taskCopy];
  v16 = v15;
  if (v15)
  {
    [v15 settingsRequestFinishedWithResults:responseCopy status:status error:errorCopy];
LABEL_31:
    [(ASDaemonAccount *)self removeConsumerForTask:taskCopy, v43];
    goto LABEL_32;
  }

  if (status == 2)
  {
    v17 = objc_opt_new();
    userInformation = [responseCopy userInformation];
    v19 = userInformation;
    selfCopy2 = self;
    v43 = 0;
    if (userInformation)
    {
      status = [userInformation status];
      v21 = [taskCopy taskStatusForExchangeStatus:{objc_msgSend(status, "intValue")}];

      if (v21 == &dword_0 + 2)
      {
        getResponse = [v19 getResponse];
        if (getResponse)
        {
          v23 = [[ASSettingsTaskGetterResult alloc] initWithKey:3 status:2 result:getResponse];
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
          selfCopy = selfCopy2;
          v55 = 2048;
          *v56 = v21;
          _os_log_impl(&dword_0, v24, v25, "Settings task %@ UserInformation Get returned failure status %ld", buf, 0x16u);
        }

        getResponse = [[ASSettingsTaskGetterResult alloc] initWithKey:3 status:v21 result:0];
        [v17 addObject:getResponse];
      }

      self = selfCopy2;
    }

    v44 = responseCopy;
    v45 = errorCopy;
    v46 = taskCopy;

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
              result = [(ASDaemonAccount *)v32 result];
              v34 = DALoggingwithCategory();
              if (os_log_type_enabled(v34, v14))
              {
                primarySMTPAddress = [result primarySMTPAddress];
                emailAddresses = [result emailAddresses];
                *buf = 138412546;
                selfCopy = primarySMTPAddress;
                v55 = 2112;
                *v56 = emailAddresses;
                _os_log_impl(&dword_0, v34, v14, "User's email address set to primary SMTP address %@, or collection %@", buf, 0x16u);

                self = selfCopy2;
              }

              primarySMTPAddress2 = [result primarySMTPAddress];
              emailAddresses2 = [result emailAddresses];
              [(ASDaemonAccount *)self setPrimarySMTPAddress:primarySMTPAddress2 emailAddresses:emailAddresses2];
            }

            else
            {
              result = DALoggingwithCategory();
              if (os_log_type_enabled(result, v14))
              {
                v41 = [(ASDaemonAccount *)v32 key];
                result2 = [(ASDaemonAccount *)v32 result];
                *buf = 138412802;
                selfCopy = v32;
                v55 = 1024;
                *v56 = v41;
                *&v56[4] = 2112;
                *&v56[6] = result2;
                _os_log_impl(&dword_0, result, v14, "Ignored getter item: %@, key: %d, result: %@", buf, 0x1Cu);

                self = selfCopy2;
              }
            }
          }

          else
          {
            result = DALoggingwithCategory();
            if (os_log_type_enabled(result, v30))
            {
              v39 = [(ASDaemonAccount *)v32 key];
              status2 = [(ASDaemonAccount *)v32 status];
              *buf = 138412802;
              selfCopy = v32;
              v55 = 1024;
              *v56 = v39;
              *&v56[4] = 2048;
              *&v56[6] = status2;
              _os_log_impl(&dword_0, result, v30, "Getter item %@, key %d, returned unsuccessful status %ld", buf, 0x1Cu);
            }
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v48 objects:v52 count:16];
      }

      while (v28);
    }

    errorCopy = v45;
    taskCopy = v46;
    v16 = v43;
    responseCopy = v44;
    goto LABEL_31;
  }

LABEL_32:
}

- (void)updateOofSettingsWithParams:(id)params consumer:(id)consumer
{
  paramsCopy = params;
  consumerCopy = consumer;
  protocol = [(ASDaemonAccount *)self protocol];
  supportsSettingsCommand = [protocol supportsSettingsCommand];

  if (supportsSettingsCommand)
  {
    v10 = objc_opt_new();
    [v10 setSourceApplicationBundleIdentifier:@"com.apple.mobilemail"];
    v11 = objc_opt_new();
    dictionaryRepresentationForASSettingTask = [paramsCopy dictionaryRepresentationForASSettingTask];
    [v11 setObject:dictionaryRepresentationForASSettingTask forKeyedSubscript:kDASettingsOofKey];

    [v10 setSetters:v11];
    [v10 setDelegate:self];
    [(ASDaemonAccount *)self setConsumer:consumerCopy forTask:v10];

    taskManager = [(ASDaemonAccount *)self taskManager];
    [taskManager submitQueuedTask:v10];
  }

  else
  {
    v14 = DALoggingwithCategory();
    v15 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v14, _CPLog_to_os_log_type[6]))
    {
      protocol2 = [(ASDaemonAccount *)self protocol];
      protocolVersion = [protocol2 protocolVersion];
      v19 = 138412290;
      v20 = protocolVersion;
      _os_log_impl(&dword_0, v14, v15, "Exchange server does not support updating OOF settings. Protocol version %@", &v19, 0xCu);
    }

    v18 = [NSError errorWithDomain:DAErrorDomain code:10 userInfo:0];
    [consumerCopy settingsRequestFinishedWithResults:0 status:10 error:v18];
  }
}

- (void)retrieveOofSettingsForConsumer:(id)consumer
{
  consumerCopy = consumer;
  protocol = [(ASDaemonAccount *)self protocol];
  supportsSettingsCommand = [protocol supportsSettingsCommand];

  if (supportsSettingsCommand)
  {
    v14 = objc_opt_new();
    [v14 setSourceApplicationBundleIdentifier:@"com.apple.mobilemail"];
    v7 = objc_opt_new();
    [v7 addObject:&off_6E4B0];
    [v14 setGetters:v7];
    [v14 setDelegate:self];
    [(ASDaemonAccount *)self setConsumer:consumerCopy forTask:v14];

    taskManager = [(ASDaemonAccount *)self taskManager];
    [taskManager submitQueuedTask:v14];
  }

  else
  {
    v9 = DALoggingwithCategory();
    v10 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v9, _CPLog_to_os_log_type[6]))
    {
      protocol2 = [(ASDaemonAccount *)self protocol];
      protocolVersion = [protocol2 protocolVersion];
      *buf = 138412290;
      v16 = protocolVersion;
      _os_log_impl(&dword_0, v9, v10, "Exchange server does not support retrieving OOF settings. Protocol version %@", buf, 0xCu);
    }

    v13 = [NSError errorWithDomain:DAErrorDomain code:10 userInfo:0];
    [consumerCopy settingsRequestFinishedWithResults:0 status:10 error:v13];
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
      selfCopy2 = self;
      _os_log_impl(&dword_0, v3, v4, "Account %@ is a hotmail account and does not support OOF", &v10, 0xCu);
    }

    LOBYTE(supportsSettingsCommand) = 0;
  }

  else
  {
    protocol = [(ASDaemonAccount *)self protocol];
    supportsSettingsCommand = [protocol supportsSettingsCommand];

    v3 = DALoggingwithCategory();
    v7 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v3, v7))
    {
      v8 = @"NO";
      if (supportsSettingsCommand)
      {
        v8 = @"YES";
      }

      v10 = 138412546;
      selfCopy2 = self;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_0, v3, v7, "Account %@ supports OOF: %@", &v10, 0x16u);
    }
  }

  return supportsSettingsCommand;
}

- (void)_reportFolderItemSyncSuccess:(BOOL)success forFolderWithID:(id)d withItemsCount:(unint64_t)count
{
  successCopy = success;
  dCopy = d;
  v9 = dCopy;
  if (successCopy)
  {
    [(ASDaemonAccount *)self removeFolderIDFromPingBlacklist:dCopy];
    if (count)
    {
      [(ASDaemonAccount *)self removeFromAllPingHistoryBlacklistForFolderID:v9];
    }
  }

  else
  {
    [(ASDaemonAccount *)self addFolderIDToPingBlacklist:dCopy];
  }
}

- (void)_reportFolderHierarchySyncSuccessWithCount:(unint64_t)count
{
  if (count)
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

- (id)beginDownloadingAttachmentWithUUID:(id)d consumer:(id)consumer
{
  dCopy = d;
  consumerCopy = consumer;
  if (!dCopy)
  {
    sub_48544();
  }

  protocol = [(ASDaemonAccount *)self protocol];
  fetchAttachmentsWithItemOperations = [protocol fetchAttachmentsWithItemOperations];

  v10 = ASItemOperationsFetchAttachmentTask_ptr;
  if (!fetchAttachmentsWithItemOperations)
  {
    v10 = ASFetchAttachmentTask_ptr;
  }

  v11 = [objc_alloc(*v10) initForMessageUUID:dCopy];
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
      accountID = [(ASDaemonAccount *)self accountID];
      v25 = [v23 agentWithAccountID:accountID];

      [v25 prepareFetchAttachmentTask:v11];
      [v11 setDelegate:self];
      [(ASDaemonAccount *)self setConsumer:consumerCopy forTask:v11];
      taskManager = [(ASDaemonAccount *)self taskManager];
      [taskManager submitQueuedTask:v11];

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
  [consumerCopy downloadFinishedError:v22];
  v27 = 0;
LABEL_14:

  return v27;
}

- (void)cancelDownloadingInstance:(id)instance error:(id)error
{
  instanceCopy = instance;
  v6 = instanceCopy;
  if (instanceCopy)
  {
    integerValue = [instanceCopy integerValue];
    taskManager = [(ASDaemonAccount *)self taskManager];
    [taskManager cancelTaskWithID:integerValue];
  }

  else
  {
    taskManager = DALoggingwithCategory();
    v9 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(taskManager, v9))
    {
      *v10 = 0;
      _os_log_impl(&dword_0, taskManager, v9, "'nil 'requestID' given.  Will not cancel any attachment downloading requests.", v10, 2u);
    }
  }
}

- (void)fetchAttachmentTask:(id)task receivedData:(id)data ofContentType:(id)type
{
  taskCopy = task;
  dataCopy = data;
  typeCopy = type;
  localFileHandle = [taskCopy localFileHandle];
  [localFileHandle seekToEndOfFile];
  [localFileHandle writeData:dataCopy];

  [taskCopy setLocalFileLength:{objc_msgSend(dataCopy, "length") + objc_msgSend(taskCopy, "localFileLength")}];
  [taskCopy setAttachmentContentType:typeCopy];
  v12 = [(ASDaemonAccount *)self consumerForTask:taskCopy];
  [v12 downloadProgressDownloadedByteCount:objc_msgSend(dataCopy totalByteCount:{"length"), objc_msgSend(taskCopy, "localFileLength")}];
}

- (void)fetchAttachmentTask:(id)task completedWithStatus:(int64_t)status dataWasBase64:(BOOL)base64 error:(id)error
{
  taskCopy = task;
  errorCopy = error;
  v12 = +[ESDAgentManager sharedManager];
  accountID = [(ASDaemonAccount *)self accountID];
  v14 = [v12 agentWithAccountID:accountID];

  v15 = dataaccess_get_global_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2BB4C;
  block[3] = &unk_6D1F0;
  v20 = v14;
  v21 = taskCopy;
  base64Copy = base64;
  v22 = errorCopy;
  statusCopy = status;
  v16 = errorCopy;
  v17 = taskCopy;
  v18 = v14;
  dispatch_async(v15, block);
}

@end