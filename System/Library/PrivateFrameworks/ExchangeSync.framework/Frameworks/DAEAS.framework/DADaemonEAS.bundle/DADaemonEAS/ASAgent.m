@interface ASAgent
- (ASAgent)initWithAccount:(id)a3;
- (BOOL)_abBestEffortApplyNewFolders:(id)a3 oldFolders:(id)a4 shouldCreateFoldersMissingInDB:(BOOL)a5;
- (BOOL)_calBestEffortApplyNewFolders:(id)a3 oldFolders:(id)a4 shouldCreateFoldersMissingInDB:(BOOL)a5;
- (BOOL)_clearChangeHistoriesWithChangeIdContext:(id)a3 dataclass:(int64_t)a4 inFolderWithId:(id)a5 pushedActions:(id)a6;
- (BOOL)_closeLocalDBConnectionsWithoutSaving;
- (BOOL)_detectDuplicatedEventFromExchangeEvent:(id)a3 inFolderWithId:(id)a4 isInitialSync:(BOOL)a5 eventServerIDsToDrop:(id)a6 eventServerIDSWithDroppedDeletes:(id)a7 resultingChangeActionsForServer:(id)a8 outEvent:(id *)a9 outLocalItem:(const void *)a10 outDidTouchDB:(BOOL *)a11;
- (BOOL)_finishWithInvitationEvent:(void *)a3 eventUID:(id)a4 expectedResponse:(int)a5 wasMyInvite:(BOOL)a6 isStillInvite:(BOOL)a7;
- (BOOL)_getHierarchyChangeForDataclass:(int64_t)a3 changedItemId:(int *)a4 changeType:(unint64_t *)a5 externalId:(id *)a6 changeTableIndices:(__CFArray *)a7;
- (BOOL)_handleReminderChangedFolder:(id)a3 changeType:(unint64_t)a4;
- (BOOL)_handleToDoAction:(id)a3 inFolderWithId:(id)a4 isInitialSync:(BOOL)a5 resultingChangeActionsForServer:(id)a6 eventServerIDsToDrop:(id)a7 eventServerIDSWithDroppedDeletes:(id)a8;
- (BOOL)_isOrganizerSelfWithEmail:(id)a3;
- (BOOL)_isOrganizerSelfWithLocalEvent:(void *)a3;
- (BOOL)_markEventWithLocalIDAsNeedingInvitationEmail:(int)a3 parentId:(int)a4;
- (BOOL)_notesBestEffortApplyNewFolders:(id)a3 oldFolders:(id)a4 shouldCreateFoldersMissingInDB:(BOOL)a5;
- (BOOL)_syncResultForToDoFolder:(id)a3 newTag:(id)a4 previousTag:(id)a5 actions:(id)a6 results:(id)a7 changeIdContext:(id)a8 isInitialSync:(BOOL)a9 moreAvailable:(BOOL)a10 resultingChangeActionsForServer:(id)a11 pushedActions:(id)a12 rejectedServerIds:(id)a13 eventsWithPendingInvitationEmails:(id)a14;
- (BOOL)predicateShouldContinue:(id)a3 afterFindingRecord:(void *)a4;
- (id)_copyABActionsInContainer:(void *)a3 existingActions:(id)a4 dataHandler:(id)a5 wantPreserveActions:(BOOL)a6 changeContext:(id)a7;
- (id)_copyCalendarItemMoveActionsInCalendar:(void *)a3 dataHandler:(id)a4 deleteActionsByFolderId:(id)a5;
- (id)_copyNotesActionsInNoteStore:(id)a3 existingActions:(id)a4 dataHandler:(id)a5 wantPreserveActions:(BOOL)a6 changeSet:(id)a7;
- (id)_exchangeIdForLocalId:(id)a3 inContainer:(void *)a4 dataclass:(int64_t)a5 redirectToParent:(BOOL)a6;
- (id)_instanceIdFromIdWithExceptionDate:(id)a3;
- (id)_localIdForExchangeId:(id)a3 inContainer:(void *)a4 dataclass:(int64_t)a5;
- (id)_newNoteSourceForDAFolder:(id)a3;
- (id)_noteAccountObject:(BOOL)a3;
- (id)_parentIdFromEventId:(id)a3;
- (id)_powerLogInfoDictionary;
- (id)_syncKeyForFolderWithId:(id)a3;
- (id)_syncKeyForFolderWithId:(id)a3 dataclass:(int64_t)a4;
- (id)foldersForFolderIDs:(id)a3 andDataclasses:(int64_t)a4;
- (id)waiterID;
- (void)_addChangeForType:(unint64_t)a3 changedItemId:(id)a4 changeId:(id)a5 addedIdsToChangeId:(id)a6 modifiedIdsToChangeId:(id)a7 deletedIdsToChangeId:(id)a8 pseudoDeletedIdsToChangeId:(id)a9 changeIdsToClear:(id)a10;
- (void)_addSimpleChangeForType:(unint64_t)a3 changedItemId:(id)a4 addedIds:(id)a5 modifiedIds:(id)a6 deletedIds:(id)a7 collapsedIds:(id)a8;
- (void)_appendFolderHierarchyChangesForFoldersOfDataclasses:(int64_t)a3;
- (void)_appendSyncRequest:(id)a3 atBeginning:(BOOL)a4;
- (void)_attendeeChangesDueToMeetingForwardingInCalendar:(void *)a3 eventIdToAttendeeEmails:(id)a4 eventIdToAttendeeUUIDs:(id)a5 dataHandler:(id)a6;
- (void)_cacheFoldersForDataclasses:(int64_t)a3;
- (void)_containerForFolderWithId:(id)a3 dataclass:(int64_t)a4;
- (void)_copyExistingABRecordForContact:(id)a3 matchOnAttributes:(BOOL)a4 inStore:(void *)a5;
- (void)_copyExistingCalRecordForEvent:(id)a3 matchOnAttributes:(BOOL)a4 inCalendar:(void *)a5;
- (void)_exceptionDateChangesInCalendar:(void *)a3 exceptionDateToChangeId:(id)a4 outHighestSequenceNumber:(int *)a5 dataHandler:(id)a6;
- (void)_faultInCalendarSubentitiesInCalendar:(void *)a3 addedIdsToEventChangeId:(id)a4 modifiedIdsToEventChangeId:(id)a5 deletedIdsToEventChangeId:(id)a6 pseudoDeletedIdsToEventChangeId:(id)a7 localToExchangeIdMap:(id)a8 eventChangeIdsToClear:(id)a9 allAddedDetachmentIds:(id)a10 outRecurrenceId:(int *)a11 outAlarmId:(int *)a12 outAttendeeId:(int *)a13 outAttachmentId:(int *)a14 outHighestSequenceNumber:(int *)a15 dataHandler:(id)a16;
- (void)_finishInitialSyncForFolder:(id)a3 dataclass:(int64_t)a4;
- (void)_finishInitialSyncForToDoFolder:(id)a3;
- (void)_fireWaitingFolderItemSyncRequests;
- (void)_folderItemsSyncTask:(id)a3 failedWithErrorCode:(int64_t)a4;
- (void)_handleChangeOnEventWithExchangeId:(id)a3 localId:(int)a4 changeType:(unint64_t)a5 eventChangeId:(id)a6 hasSignificantAttributeChanges:(BOOL)a7 container:(void *)a8 dataHandler:(id)a9 addedIdsToEventChangeId:(id)a10 modifiedIdsToEventChangeId:(id)a11 deletedIdsToEventChangeId:(id)a12 pseudoDeletedIdsToEventChangeId:(id)a13 eventChangeIdsToClear:(id)a14 allAddedDetachmentIds:(id)a15 localToExchangeIdMap:(id)a16 outShouldSaveDB:(BOOL *)a17;
- (void)_handleDaemonBackedLocalFolderChangeWithDBChangeIndices:(__CFArray *)a3 oldFolders:(id)a4 status:(int64_t)a5 error:(id)a6;
- (void)_handleLocalReminderFolderChangeWithFolder:(id)a3 oldFolders:(id)a4 status:(int64_t)a5 error:(id)a6;
- (void)_moveItemsTask:(id)a3 failedWithErrorCode:(int64_t)a4;
- (void)_newABSourceForDAFolder:(id)a3;
- (void)_newCalCalendarForDAFolder:(id)a3;
- (void)_nilOutContainersForDataclasses:(int64_t)a3;
- (void)_noteSyncForFolderWithId:(id)a3 andTitle:(id)a4 finishedWithSuccess:(BOOL)a5;
- (void)_openLocalDBConnections;
- (void)_reallyApplyMessageDidSendWithContext:(id)a3;
- (void)_reallyFinishInvitationBatch:(id)a3;
- (void)_reallyPrepareFetchAttachmentTask:(id)a3;
- (void)_reallySendMoves:(id)a3;
- (void)_reallySyncRequest:(id)a3;
- (void)_refirePendingCalendarInvitations;
- (void)_removeABSourceForDAFolder:(id)a3;
- (void)_removeCalCalendarForDAFolder:(id)a3;
- (void)_removeNoteSourceForDAFolder:(id)a3;
- (void)_removePostponedRequestForFolderWithId:(id)a3;
- (void)_saveAttachmentDataToDatabaseForTask:(id)a3;
- (void)_setSyncKey:(id)a3 forFolderWithId:(id)a4;
- (void)_setUpABNotifications;
- (void)_setUpCalNotifications;
- (void)_setUpNotesNotifications;
- (void)_setUpReminderNotifications;
- (void)_smartMailTask:(id)a3 failedWithErrorCode:(int64_t)a4 error:(id)a5;
- (void)_syncAllContactsEventsToDosAndNotesFolders;
- (void)_syncEndedWithError:(id)a3;
- (void)_syncRequest:(id)a3;
- (void)_syncResultForFolder:(id)a3 newTag:(id)a4 previousTag:(id)a5 actions:(id)a6 results:(id)a7 changeIdContext:(id)a8 isInitialSync:(BOOL)a9 moreAvailable:(BOOL)a10 dataclass:(int64_t)a11 resultingChangeActionsForServer:(id)a12 pushedActions:(id)a13 rejectedServerIds:(id)a14 eventsWithPendingInvitationEmails:(id)a15;
- (void)_syncStarted;
- (void)_tearDownABNotifications;
- (void)_tearDownCalNotifications;
- (void)_tearDownNotesNotifications;
- (void)_tearDownReminderNotifications;
- (void)_updateSyncKey:(id)a3 forToDoFolderWithId:(id)a4;
- (void)_verifySearchStore;
- (void)_wrapperSyncResultForFolder:(id)a3 dataclass:(int64_t)a4 newTag:(id)a5 previousTag:(id)a6 actions:(id)a7 results:(id)a8 changeIdContext:(id)a9 isInitialSync:(BOOL)a10 moreAvailable:(BOOL)a11 moreLocalChangesAvailable:(BOOL)a12 pushedActions:(id)a13 rejectedServerIds:(id)a14;
- (void)actionFailed:(int64_t)a3 forTask:(id)a4 error:(id)a5;
- (void)dealloc;
- (void)fetchAttachmentTask:(id)a3 completedWithStatus:(int64_t)a4 dataWasBase64:(BOOL)a5 error:(id)a6;
- (void)finishWithInvitationBatch:(id)a3;
- (void)folderContentsUpdate:(id)a3;
- (void)folderHierarchyFailedToUpdate:(id)a3 withStatus:(int64_t)a4 andError:(id)a5;
- (void)folderHierarchySuccessfullyUpdated:(id)a3 withNumChangedFolders:(unint64_t)a4;
- (void)localChangeForFolder:(id)a3 finishedWithStatus:(int64_t)a4 andError:(id)a5 completionBlock:(id)a6;
- (void)meetingResponseFinishedWithStatus:(int64_t)a3 error:(id)a4 successfulResponses:(id)a5 failedResponses:(id)a6;
- (void)messageDidSendWithContext:(id)a3;
- (void)preferredDaysToSyncDidChange;
- (void)prepareFetchAttachmentTask:(id)a3;
- (void)processDAFolderChange:(id)a3 withCompletionBlock:(id)a4;
- (void)processMeetingRequestDatas:(id)a3 deliveryIdsToClear:(id)a4 deliveryIdsToSoftClear:(id)a5 inFolderWithId:(id)a6 callback:(id)a7;
- (void)requestAgentStopMonitoringWithCompletionBlock:(id)a3;
- (void)resultsForMessageMove:(id)a3;
- (void)setMatchedRecord:(void *)a3;
- (void)startMonitoring;
- (void)syncFolderIDs:(id)a3 forDataclasses:(int64_t)a4 isUserRequested:(BOOL)a5;
- (void)syncResultForContactsFolder:(id)a3 newTag:(id)a4 previousTag:(id)a5 newSyncToken:(id)a6 actions:(id)a7 results:(id)a8 changeIdContext:(id)a9 isInitialSync:(BOOL)a10 moreAvailable:(BOOL)a11 moreLocalChangesAvailable:(BOOL)a12 pushedActions:(id)a13;
- (void)syncResultForEventsFolder:(id)a3 newTag:(id)a4 previousTag:(id)a5 actions:(id)a6 results:(id)a7 changeIdContext:(id)a8 isInitialSync:(BOOL)a9 moreAvailable:(BOOL)a10 moreLocalChangesAvailable:(BOOL)a11 pushedActions:(id)a12 rejectedServerIds:(id)a13;
- (void)syncResultForNotesFolder:(id)a3 noteContext:(id)a4 newTag:(id)a5 previousTag:(id)a6 actions:(id)a7 results:(id)a8 changeSet:(id)a9 notesToDeleteAfterSync:(id)a10 isInitialSync:(BOOL)a11 moreAvailable:(BOOL)a12 moreLocalChangesAvailable:(BOOL)a13;
- (void)syncResultForToDosFolder:(id)a3 newTag:(id)a4 previousTag:(id)a5 actions:(id)a6 results:(id)a7 changeIdContext:(id)a8 isInitialSync:(BOOL)a9 moreAvailable:(BOOL)a10 moreLocalChangesAvailable:(BOOL)a11 pushedActions:(id)a12 rejectedServerIds:(id)a13;
@end

@implementation ASAgent

- (ASAgent)initWithAccount:(id)a3
{
  v12.receiver = self;
  v12.super_class = ASAgent;
  v3 = [(ASAgent *)&v12 initWithAccount:a3];
  if (v3)
  {
    v4 = objc_opt_new();
    folderItemSyncRequestLock = v3->_folderItemSyncRequestLock;
    v3->_folderItemSyncRequestLock = v4;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, sub_16EC, @"SignificantTimeChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v7 = objc_opt_new();
    folderIdToSequentialFailureCount = v3->_folderIdToSequentialFailureCount;
    v3->_folderIdToSequentialFailureCount = v7;

    v9 = objc_opt_new();
    folderIdToSequentialServerErrorCount = v3->_folderIdToSequentialServerErrorCount;
    v3->_folderIdToSequentialServerErrorCount = v9;
  }

  return v3;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"SignificantTimeChangeNotification", 0);
  [(ASAgent *)self _tearDownABNotifications];
  [(ASAgent *)self _tearDownCalNotifications];
  [(ASAgent *)self _tearDownNotesNotifications];
  v4 = [(ASAgent *)self account];
  v5 = [v4 existingTaskManager];
  [v5 shutdown];

  v6.receiver = self;
  v6.super_class = ASAgent;
  [(ASAgent *)&v6 dealloc];
}

- (void)setMatchedRecord:(void *)a3
{
  matchedRecord = self->_matchedRecord;
  if (matchedRecord != a3)
  {
    if (matchedRecord)
    {
      CFRelease(matchedRecord);
    }

    self->_matchedRecord = a3;
    if (a3)
    {

      CFRetain(a3);
    }
  }
}

- (void)_containerForFolderWithId:(id)a3 dataclass:(int64_t)a4
{
  v6 = a3;
  switch(a4)
  {
    case 2:
      v7 = [(ASAgent *)self contactStoresByFolderId];

      if (v7)
      {
        v8 = [(ASAgent *)self contactStoresByFolderId];
        goto LABEL_10;
      }

      break;
    case 32:
      v9 = [(NSMutableDictionary *)self->_noteStoreObjectIdsByFolderId objectForKeyedSubscript:v6];
      if (!v9)
      {
        v7 = 0;
        goto LABEL_12;
      }

      v10 = +[ASLocalDBHelper sharedInstance];
      v11 = [v10 noteDB];
      v7 = [v11 storeForObjectID:v9];

LABEL_11:
LABEL_12:

      break;
    case 4:
      v7 = [(ASAgent *)self eventCalendarsByFolderId];

      if (v7)
      {
        v8 = [(ASAgent *)self eventCalendarsByFolderId];
LABEL_10:
        v9 = v8;
        v10 = [v8 objectForKeyedSubscript:v6];
        v7 = v10;
        goto LABEL_11;
      }

      break;
    default:
      v7 = 0;
      break;
  }

  return v7;
}

- (void)_newABSourceForDAFolder:(id)a3
{
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    v14 = 138412290;
    v15 = v4;
    _os_log_impl(&dword_0, v5, v6, "Creating AB store for DAFolder %@", &v14, 0xCu);
  }

  v7 = +[ASLocalDBHelper sharedInstance];
  v8 = [(ASAgent *)self account];
  v9 = [v8 _copyABAccount:1];

  v10 = ABSourceCreate();
  ABRecordSetValue(v10, kABSourceTypeProperty, &off_6E438, 0);
  ABRecordSetValue(v10, kABSourceExternalIdentifierProperty, [v4 folderID], 0);
  [v7 abDB];
  ABAddressBookSetAccountForSource();
  ABRecordSetValue(v10, kABSourceNameProperty, [v4 folderName], 0);
  v11 = [(ASAgent *)self account];
  v12 = [v11 addressBookConstraintsPath];

  ABRecordSetValue(v10, kABSourceConstraintsPathProperty, v12, 0);
  ABAddressBookAddRecord([v7 abDB], v10, 0);
  [v7 abProcessAddedRecords];
  [v7 changeTrackingID];
  [v7 abDB];
  ABChangeHistoryRegisterClientForSource();
  CFRelease(v9);

  return v10;
}

- (void)_newCalCalendarForDAFolder:(id)a3
{
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    LODWORD(buf[0]) = 138412290;
    *(buf + 4) = v4;
    _os_log_impl(&dword_0, v5, v6, "Creating cal calendar for DAFolder %@", buf, 0xCu);
  }

  v7 = [(ASAgent *)self account];
  v8 = [v7 _copyExchangeCalendarStore:1];

  v9 = [v4 folderID];
  theArray = 0;
  buf[0] = 0;
  v25 = 0;
  v10 = +[ASLocalDBHelper sharedInstance];
  v11 = [(ASAgent *)self account];
  v12 = [v11 accountID];
  [v10 calDatabaseForAccountID:v12];
  CalDatabaseCopyCalendarChangesWithIndicesInStore();

  if (buf[0])
  {
    CFRelease(buf[0]);
    buf[0] = 0;
  }

  if ([v4 dataclass] != &dword_4)
  {
    [v4 dataclass];
  }

  v13 = +[ASLocalDBHelper sharedInstance];
  v14 = [(ASAgent *)self account];
  v15 = [v14 accountID];
  [v13 calDatabaseForAccountID:v15];
  CalendarForEntityType = CalDatabaseCreateCalendarForEntityType();

  [v4 folderName];
  CalCalendarSetTitle();
  [v4 folderID];
  CalCalendarSetExternalID();
  CalStoreAddCalendar();
  v17 = [(ASAgent *)self account];
  [v17 usernameWithoutDomain];
  CalCalendarSetOwnerIdentityDisplayName();

  v18 = [(ASAgent *)self account];
  v19 = [v18 emailAddress];
  v20 = [NSString stringWithFormat:@"mailto:%@", v19];
  v21 = [NSURL URLWithString:v20];

  if (v21)
  {
    CalCalendarSetOwnerIdentityAddress();
  }

  v22 = [(ASAgent *)self account];
  v23 = [v22 emailAddress];
  CalCalendarSetOwnerIdentityEmail();

  CFRelease(v8);
  return CalendarForEntityType;
}

- (id)_noteAccountObject:(BOOL)a3
{
  v3 = a3;
  v5 = +[ASLocalDBHelper sharedInstance];
  v6 = [v5 noteDB];

  v7 = [(ASAgent *)self account];
  v8 = [v7 syncStoreIdentifier];
  v9 = [v6 accountForAccountId:v8];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = !v3;
  }

  if (!v10)
  {
    v11 = DALoggingwithCategory();
    v12 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v11, v12))
    {
      v13 = [(ASAgent *)self account];
      v14 = [v13 syncStoreIdentifier];
      v28 = 138412290;
      v29 = v14;
      _os_log_impl(&dword_0, v11, v12, "Creating Exchange Notes account in db for account id %@", &v28, 0xCu);
    }

    v9 = [v6 newlyAddedAccount];
    v15 = [(ASAgent *)self account];
    v16 = [v15 syncStoreIdentifier];
    [v9 setAccountIdentifier:v16];

    [v9 setAccountType:2];
    v17 = [(ASAgent *)self account];
    v18 = [v17 backingAccountInfo];
    v19 = [v18 displayAccount];
    v20 = [v19 accountDescription];
    [v9 setName:v20];

    v21 = [v9 stores];
    v22 = [v21 count];

    if (v22)
    {
      v23 = +[ASLocalDBHelper sharedInstance];
      [v23 noteSaveDB];
    }

    else
    {
      v23 = DALoggingwithCategory();
      v24 = _CPLog_to_os_log_type[4];
      if (os_log_type_enabled(v23, _CPLog_to_os_log_type[4]))
      {
        v25 = [(ASAgent *)self account];
        v26 = [v25 syncStoreIdentifier];
        v28 = 138412290;
        v29 = v26;
        _os_log_impl(&dword_0, v23, v24, "Not saving Exchange Notes account for account id %@, because it doesn't have any stores.", &v28, 0xCu);
      }
    }
  }

  return v9;
}

- (id)_newNoteSourceForDAFolder:(id)a3
{
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    v15 = 138412290;
    v16 = v4;
    _os_log_impl(&dword_0, v5, v6, "Creating Exchange Notes store for DAFolder %@", &v15, 0xCu);
  }

  v7 = +[ASLocalDBHelper sharedInstance];
  v8 = [v7 noteDB];

  v9 = [(ASAgent *)self _noteAccountObject:1];
  v10 = [v8 newlyAddedStore];
  [v10 setAccount:v9];
  v11 = [v4 folderID];
  [v10 setExternalIdentifier:v11];

  v12 = [v4 folderName];
  [v10 setName:v12];

  v13 = [v9 defaultStore];

  if (!v13)
  {
    [v9 setDefaultStore:v10];
  }

  return v10;
}

- (void)_removeABSourceForDAFolder:(id)a3
{
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    v17 = 138412290;
    v18 = v4;
    _os_log_impl(&dword_0, v5, v6, "Deleting AB store for DAFolder %@", &v17, 0xCu);
  }

  v7 = +[ASLocalDBHelper sharedInstance];
  [v7 abDB];
  v8 = [(ASAgent *)self account];
  v9 = [v8 syncStoreIdentifier];
  v10 = [v4 folderID];
  v11 = ABAddressBookCopySourceWithAccountAndExternalIdentifiers();

  if (v11)
  {
    [v7 changeTrackingID];
    [v7 abDB];
    ABChangeHistoryUnregisterClientForSource();
    ABAddressBookRemoveRecord([v7 abDB], v11, 0);
    CFRelease(v11);
  }

  else
  {
    v12 = DALoggingwithCategory();
    v13 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v12, v13))
    {
      v14 = [(ASAgent *)self account];
      v15 = [v14 syncStoreIdentifier];
      v16 = [v4 folderID];
      v17 = 138412546;
      v18 = v15;
      v19 = 2112;
      v20 = v16;
      _os_log_impl(&dword_0, v12, v13, "Asked to delete source with syncStoreIdentifier %@ folderId %@.  But that doesn't exist in the db", &v17, 0x16u);
    }
  }
}

- (void)_removeCalCalendarForDAFolder:(id)a3
{
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    v15 = 138412290;
    v16 = v4;
    _os_log_impl(&dword_0, v5, v6, "Deleting cal calendar for DAFolder %@", &v15, 0xCu);
  }

  v7 = [(ASAgent *)self account];
  v8 = [v7 _copyExchangeCalendarStore:0];

  if (v8)
  {
    v9 = CalStoreCopyCalendars();
    if ([v9 count])
    {
      v10 = 0;
      while (1)
      {
        v11 = [v9 objectAtIndexedSubscript:v10];

        v12 = CalCalendarCopyExternalID();
        if (v12)
        {
          v13 = [v4 folderID];
          v14 = [v13 isEqualToString:v12];

          if (v14)
          {
            break;
          }
        }

        if (++v10 >= [v9 count])
        {
          goto LABEL_12;
        }
      }

      if (v11)
      {
        CalRemoveCalendar();
      }
    }

LABEL_12:
    CFRelease(v8);
  }
}

- (void)_removeNoteSourceForDAFolder:(id)a3
{
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    v17 = 138412290;
    v18 = v4;
    _os_log_impl(&dword_0, v5, v6, "Deleting Note store for DAFolder %@", &v17, 0xCu);
  }

  v7 = +[ASLocalDBHelper sharedInstance];
  v8 = [v7 noteDB];

  v9 = [(ASAgent *)self _noteAccountObject:0];
  v10 = [v4 folderID];
  v11 = [v9 storeForExternalId:v10];

  if (v11)
  {
    [v8 deleteStore:v11];
  }

  else
  {
    v12 = DALoggingwithCategory();
    v13 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v12, v13))
    {
      v14 = [(ASAgent *)self account];
      v15 = [v14 syncStoreIdentifier];
      v16 = [v4 folderID];
      v17 = 138412546;
      v18 = v15;
      v19 = 2112;
      v20 = v16;
      _os_log_impl(&dword_0, v12, v13, "Asked to delete source with syncStoreIdentifier %@ folderId %@.  But that doesn't exist in the db", &v17, 0x16u);
    }
  }
}

- (void)_cacheFoldersForDataclasses:(int64_t)a3
{
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 134217984;
    v255 = a3;
    _os_log_impl(&dword_0, v5, v6, "Caching folders for dataclasses %lx", buf, 0xCu);
  }

  v7 = [(ASAgent *)self account];
  v8 = [v7 enabledForDADataclass:2];

  v223 = self;
  v210 = a3;
  if ((a3 & 2) != 0 && v8)
  {
    v9 = objc_opt_new();
    [(ASAgent *)self setContactStoresByFolderId:v9];

    v10 = +[ASLocalDBHelper sharedInstance];
    [v10 abDB];

    v11 = [(ASAgent *)self account];
    v12 = [v11 _copyABAccount:1];

    v215 = v12;
    v13 = ABAddressBookCopyArrayOfAllSourcesInAccount();
    v220 = v13;
    if ([v13 count])
    {
      v14 = 0;
      v15 = kABSourceExternalIdentifierProperty;
      v16 = _CPLog_to_os_log_type[7];
      do
      {
        v17 = [v13 objectAtIndexedSubscript:v14];

        v18 = ABRecordCopyValue(v17, v15);
        if (v18)
        {
          v19 = DALoggingwithCategory();
          if (os_log_type_enabled(v19, v16))
          {
            *buf = 138412290;
            v255 = v18;
            _os_log_impl(&dword_0, v19, v16, "Found an exchange contact store, with storeId %@", buf, 0xCu);
          }

          v20 = [(ASAgent *)v223 account];
          v21 = [v20 folderWithId:v18];

          if (v21)
          {
            v22 = [v21 folderID];
            if (v22)
            {
              v23 = [(ASAgent *)v223 contactStoresByFolderId];
              [v23 setObject:v17 forKeyedSubscript:v22];

              v24 = +[ASLocalDBHelper sharedInstance];
              [v24 changeTrackingID];
              [v24 abDB];
              ABChangeHistoryRegisterClientForSource();

              v13 = v220;
            }
          }

          else
          {
            v25 = DALoggingwithCategory();
            if (os_log_type_enabled(v25, v16))
            {
              v26 = [(ASAgent *)v223 account];
              v27 = [v26 folderHierarchy];
              *buf = 138412546;
              v255 = v18;
              v256 = 2112;
              v257 = v27;
              _os_log_impl(&dword_0, v25, v16, "No known contact folder with id %@. folderHierarchy is %@", buf, 0x16u);

              v13 = v220;
            }

            v22 = [(ASAgent *)v223 account];
            [v22 stopMonitoringFolderWithID:v18];
          }
        }

        ++v14;
      }

      while (v14 < [v13 count]);
    }

    self = v223;
    v28 = [(ASAgent *)v223 account];
    v29 = [v28 contactsFolders];

    v246 = 0u;
    v247 = 0u;
    v244 = 0u;
    v245 = 0u;
    v30 = v29;
    v31 = [v30 countByEnumeratingWithState:&v244 objects:v253 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = *v245;
      do
      {
        v38 = 0;
        v39 = v34;
        v40 = v35;
        do
        {
          if (*v245 != v37)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v244 + 1) + 8 * v38);

          v34 = [v35 folderID];

          v41 = [(ASAgent *)v223 contactStoresByFolderId];
          v42 = [v41 objectForKeyedSubscript:v34];

          if (!v42)
          {
            v43 = [(ASAgent *)v223 _newABSourceForDAFolder:v35];
            v44 = [(ASAgent *)v223 contactStoresByFolderId];
            [v44 setObject:v43 forKeyedSubscript:v34];

            CFRelease(v43);
            v33 = 1;
            v36 = 1;
          }

          v38 = v38 + 1;
          v39 = v34;
          v40 = v35;
        }

        while (v32 != v38);
        v32 = [v30 countByEnumeratingWithState:&v244 objects:v253 count:16];
      }

      while (v32);

      self = v223;
    }

    else
    {
      v33 = 0;
      v36 = 0;
    }

    v45 = DALoggingwithCategory();
    v46 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v45, v46))
    {
      v47 = [(ASAgent *)self contactStoresByFolderId];
      *buf = 138412290;
      v255 = v47;
      _os_log_impl(&dword_0, v45, v46, "We ended up with a _contactStoresByFolderId of %@", buf, 0xCu);
    }

    LOBYTE(a3) = v210;
    if (v33)
    {
      v48 = [(ASAgent *)self account];
      v49 = [v48 defaultContactsFolder];
      v50 = [v49 folderID];

      if (v50)
      {
        v51 = [(ASAgent *)self _containerForFolderWithId:v50 dataclass:2];
        if (v51)
        {
          if (v51 != ABAddressBookGetDefaultSourceForAccount())
          {
            ABAddressBookSetDefaultSourceForAccount();
            ABAddressBookSetDefaultSource();

            CFRelease(v215);
            v52 = v220;
            goto LABEL_39;
          }
        }
      }

      v53 = v215;
    }

    else
    {
      v53 = v215;
    }

    CFRelease(v53);
    v52 = v220;
    if ((v36 & 1) == 0)
    {
LABEL_40:

      goto LABEL_41;
    }

LABEL_39:
    v54 = +[ASLocalDBHelper sharedInstance];
    [v54 abSaveDB];

    goto LABEL_40;
  }

LABEL_41:
  v55 = [(ASAgent *)self account];
  v56 = [v55 enabledForDADataclass:4];

  if ((a3 & 4) == 0 || !v56)
  {
    goto LABEL_119;
  }

  v57 = objc_opt_new();
  [(ASAgent *)self setEventCalendarsByFolderId:v57];

  v58 = 0;
  v59 = 10;
  while (!v58)
  {
    v60 = [(ASAgent *)self account];
    v58 = [v60 _copyExchangeCalendarStore:1];

    if (!--v59)
    {
      if (!v58)
      {
        v124 = DALoggingwithCategory();
        v125 = _CPLog_to_os_log_type[3];
        if (os_log_type_enabled(v124, v125))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v124, v125, "DADataclassEvents: Could not retreive / create an exchange store in the calendar store", buf, 2u);
        }

        v126 = DALoggingwithCategory();
        if (os_log_type_enabled(v126, OS_LOG_TYPE_FAULT))
        {
          sub_47CC4(v126);
        }

        goto LABEL_118;
      }

      break;
    }
  }

  v61 = CalStoreCopyCalendars();
  v211 = v61;
  if ([v61 count])
  {
    v62 = 0;
    v63 = _CPLog_to_os_log_type[7];
    while (1)
    {
      v64 = [v61 objectAtIndexedSubscript:v62];

      v65 = CalCalendarCopyExternalID();
      if (v65)
      {
        break;
      }

LABEL_61:

      ++v62;
      v61 = v211;
      if (v62 >= [v211 count])
      {
        goto LABEL_62;
      }
    }

    v66 = DALoggingwithCategory();
    if (os_log_type_enabled(v66, v63))
    {
      *buf = 138412290;
      v255 = v65;
      _os_log_impl(&dword_0, v66, v63, "Found an exchange calendar with externalId %@", buf, 0xCu);
    }

    v67 = [(ASAgent *)v223 account];
    v68 = [v67 folderWithId:v65];

    if (v68)
    {
      if ([v68 dataclass] != &dword_4)
      {
LABEL_60:

        self = v223;
        goto LABEL_61;
      }

      v69 = [v68 folderID];
      if (v69)
      {
        v70 = [(ASAgent *)v223 eventCalendarsByFolderId];
        [v70 setObject:v64 forKeyedSubscript:v69];
      }
    }

    else
    {
      v71 = DALoggingwithCategory();
      if (os_log_type_enabled(v71, v63))
      {
        v72 = [(ASAgent *)v223 account];
        v73 = [v72 folderHierarchy];
        *buf = 138412546;
        v255 = v65;
        v256 = 2112;
        v257 = v73;
        _os_log_impl(&dword_0, v71, v63, "No known calendar folder with id %@. folderHierarchy is %@", buf, 0x16u);
      }

      v69 = [(ASAgent *)v223 account];
      [v69 stopMonitoringFolderWithID:v65];
    }

    goto LABEL_60;
  }

LABEL_62:
  CFRelease(v58);
  v74 = [(ASAgent *)self account];
  v75 = [v74 eventsFolders];

  v242 = 0u;
  v243 = 0u;
  v240 = 0u;
  v241 = 0u;
  obj = v75;
  v76 = [obj countByEnumeratingWithState:&v240 objects:v252 count:16];
  if (v76)
  {
    v77 = v76;
    v221 = 0;
    a3 = 0;
    v78 = 0;
    v79 = *v241;
    do
    {
      for (i = 0; i != v77; i = i + 1)
      {
        v81 = v78;
        v82 = a3;
        if (*v241 != v79)
        {
          objc_enumerationMutation(obj);
        }

        v78 = *(*(&v240 + 1) + 8 * i);

        a3 = [v78 folderID];

        v83 = [(ASAgent *)v223 eventCalendarsByFolderId];
        v84 = [v83 objectForKeyedSubscript:a3];

        if (!v84)
        {
          v85 = [(ASAgent *)v223 _newCalCalendarForDAFolder:v78];
          if (v85)
          {
            v86 = v85;
            v87 = [(ASAgent *)v223 eventCalendarsByFolderId];
            [v87 setObject:v86 forKeyedSubscript:a3];

            CFRelease(v86);
            v221 = 1;
          }
        }
      }

      v77 = [obj countByEnumeratingWithState:&v240 objects:v252 count:16];
    }

    while (v77);

    self = v223;
  }

  else
  {
    v221 = 0;
    a3 = 0;
  }

  v88 = +[ASLocalDBHelper sharedInstance];
  v89 = [(ASAgent *)self account];
  v90 = [v89 accountID];
  [v88 calDatabaseForAccountID:v90];

  v91 = DALoggingwithCategory();
  v92 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v91, v92))
  {
    v93 = [(ASAgent *)self eventCalendarsByFolderId];
    *buf = 138412290;
    v255 = v93;
    _os_log_impl(&dword_0, v91, v92, "We ended up with a _eventCalendarsByFolderId of %@", buf, 0xCu);
  }

  v94 = [(ASAgent *)self account];
  v95 = [v94 defaultEventsFolder];
  v96 = [v95 folderID];

  v209 = v96;
  if (!v96)
  {
LABEL_108:
    if (v221)
    {
      goto LABEL_116;
    }

    goto LABEL_117;
  }

  v97 = [(ASAgent *)self _containerForFolderWithId:v96 dataclass:4];
  v98 = [(ASAgent *)self eventCalendarsByFolderId];
  v99 = [v98 count];

  if (!v99)
  {
    goto LABEL_102;
  }

  v238 = 0u;
  v239 = 0u;
  v236 = 0u;
  v237 = 0u;
  v100 = [(ASAgent *)self eventCalendarsByFolderId];
  v101 = [v100 allKeys];

  v213 = v101;
  v217 = [v101 countByEnumeratingWithState:&v236 objects:v251 count:16];
  if (!v217)
  {
    goto LABEL_101;
  }

  v216 = *v237;
  type = _CPLog_to_os_log_type[3];
  v212 = v97;
  do
  {
    v102 = 0;
    v103 = a3;
    do
    {
      if (*v237 != v216)
      {
        objc_enumerationMutation(v213);
      }

      a3 = *(*(&v236 + 1) + 8 * v102);

      v104 = [(ASAgent *)self eventCalendarsByFolderId];
      v105 = [v104 objectForKeyedSubscript:a3];

      IsDefaultCalendarForStore = CalCalendarIsDefaultCalendarForStore();
      if (v105 != v97)
      {
        if (!IsDefaultCalendarForStore)
        {
          goto LABEL_86;
        }

LABEL_85:
        CalCalendarSetDefaultCalendarForStore();
        v221 = 1;
        goto LABEL_86;
      }

      if ((IsDefaultCalendarForStore & 1) == 0)
      {
        goto LABEL_85;
      }

LABEL_86:
      v107 = CalCalendarCopyOwnerIdentityDisplayName();
      v108 = CalCalendarCopyOwnerIdentityEmail();
      v109 = CalCalendarCopyOwnerIdentityAddress();
      if (!v107)
      {
        v110 = [(ASAgent *)self account];
        [v110 usernameWithoutDomain];
        CalCalendarSetOwnerIdentityDisplayName();

        v221 = 1;
      }

      v111 = [(ASAgent *)self account];
      v112 = [v111 emailAddress];
      v113 = [v108 isEqualToString:v112];

      if ((v113 & 1) == 0)
      {
        v114 = DALoggingwithCategory();
        if (os_log_type_enabled(v114, type))
        {
          v115 = [(ASAgent *)v223 account];
          v116 = [v115 emailAddress];
          *buf = 138412546;
          v255 = v108;
          v256 = 2112;
          v257 = v116;
          _os_log_impl(&dword_0, v114, type, "Changing email address from %@ to %@", buf, 0x16u);
        }

        v117 = [(ASAgent *)v223 account];
        v118 = [v117 emailAddress];
        CalCalendarSetOwnerIdentityEmail();

        v221 = 1;
      }

      if (v109)
      {
        self = v223;
      }

      else
      {
        v119 = [(ASAgent *)v223 account];
        v120 = [v119 emailAddress];
        v121 = [NSString stringWithFormat:@"mailto:%@", v120];
        v122 = [NSURL URLWithString:v121];

        if (v122)
        {
          CalCalendarSetOwnerIdentityAddress();
          v221 = 1;
        }

        self = v223;
        v97 = v212;
      }

      v102 = v102 + 1;
      v103 = a3;
    }

    while (v217 != v102);
    v217 = [v213 countByEnumeratingWithState:&v236 objects:v251 count:16];
  }

  while (v217);
LABEL_101:

  a3 = 0;
LABEL_102:
  if (!v97)
  {
    goto LABEL_108;
  }

  v123 = CalDatabaseCopyDefaultCalendarForNewEvents();
  if (v97 != v123)
  {
    CalDatabaseSetDefaultCalendarForNewEvents();
  }

  if (CalCalendarIsImmutable())
  {
    if (v123)
    {
      CFRelease(v123);
    }

    goto LABEL_108;
  }

  CalCalendarSetImmutable();
  if (v123)
  {
    CFRelease(v123);
  }

LABEL_116:
  v127 = +[ASLocalDBHelper sharedInstance];
  v128 = [(ASAgent *)self account];
  v129 = [v128 accountID];
  [v127 calSaveDatabaseForAccountID:v129];

LABEL_117:
  LOBYTE(a3) = v210;
  v126 = v211;
LABEL_118:

LABEL_119:
  v130 = [(ASAgent *)self account];
  v131 = [v130 enabledForDADataclass:16];

  if ((a3 & 0x10) != 0 && v131)
  {
    v132 = [(ASAgent *)self sharedReminderKitHelper];
    v133 = [(ASAgent *)self account];
    v134 = [v132 getFolderIdsForAccount:v133];

    v234 = 0u;
    v235 = 0u;
    v232 = 0u;
    v233 = 0u;
    v222 = v134;
    v135 = [v222 countByEnumeratingWithState:&v232 objects:v250 count:16];
    if (v135)
    {
      v136 = v135;
      v137 = *v233;
      v138 = _CPLog_to_os_log_type[7];
      do
      {
        for (j = 0; j != v136; j = j + 1)
        {
          if (*v233 != v137)
          {
            objc_enumerationMutation(v222);
          }

          v140 = *(*(&v232 + 1) + 8 * j);
          v141 = DALoggingwithCategory();
          if (os_log_type_enabled(v141, v138))
          {
            *buf = 138412290;
            v255 = v140;
            _os_log_impl(&dword_0, v141, v138, "Found an exchange reminder list with externalId %@", buf, 0xCu);
          }

          v142 = [(ASAgent *)self account];
          v143 = [v142 folderWithId:v140];

          if (!v143)
          {
            v144 = DALoggingwithCategory();
            if (os_log_type_enabled(v144, v138))
            {
              v145 = [(ASAgent *)self account];
              v146 = [v145 folderHierarchy];
              *buf = 138412546;
              v255 = v140;
              v256 = 2112;
              v257 = v146;
              _os_log_impl(&dword_0, v144, v138, "No known reminder folder with id %@. folderHierarchy is %@", buf, 0x16u);

              self = v223;
            }

            v147 = [(ASAgent *)self account];
            [v147 stopMonitoringFolderWithID:v140];
          }
        }

        v136 = [v222 countByEnumeratingWithState:&v232 objects:v250 count:16];
      }

      while (v136);
    }

    v148 = [(ASAgent *)self account];
    v149 = [v148 toDosFolders];

    v150 = [(ASAgent *)self sharedReminderKitHelper];
    v151 = [(ASAgent *)self account];
    v152 = [v150 bestEffortApplyNewFolders:v149 oldFolders:0 forAccount:v151 shouldCreateFoldersMissingInDB:1];

    v153 = [(ASAgent *)self account];
    [v153 defaultToDosFolder];
    v155 = v154 = self;
    a3 = [v155 folderID];

    if (a3)
    {
      v156 = [(ASAgent *)v154 sharedReminderKitHelper];
      v157 = [(ASAgent *)v154 account];
      v158 = [v156 verifyDefaultFolderId:a3 forAccount:v157];
    }

    else
    {
      v158 = 0;
    }

    self = v223;
    if ((v152 | v158))
    {
      v159 = [(ASAgent *)v223 sharedReminderKitHelper];
      [v159 commitChangesToStore];
    }

    LOBYTE(a3) = v210;
  }

  v160 = [(ASAgent *)self account];
  v161 = [v160 enabledForDADataclass:32];

  if ((a3 & 0x20) != 0 && v161)
  {
    v162 = [(ASAgent *)self noteStoreObjectIdsByFolderId];

    if (!v162)
    {
      v163 = objc_opt_new();
      [(ASAgent *)self setNoteStoreObjectIdsByFolderId:v163];
    }

    v164 = [(ASAgent *)self noteStoreObjectIdsByFolderId];
    [v164 removeAllObjects];

    [(ASAgent *)self _noteAccountObject:0];
    v228 = 0u;
    v229 = 0u;
    v230 = 0u;
    v218 = v231 = 0u;
    v165 = [v218 stores];
    v166 = [v165 countByEnumeratingWithState:&v228 objects:v249 count:16];
    if (v166)
    {
      v167 = v166;
      v168 = *v229;
      v169 = _CPLog_to_os_log_type[7];
      do
      {
        for (k = 0; k != v167; k = k + 1)
        {
          if (*v229 != v168)
          {
            objc_enumerationMutation(v165);
          }

          v171 = *(*(&v228 + 1) + 8 * k);
          v172 = [v171 externalIdentifier];
          if (v172)
          {
            v173 = DALoggingwithCategory();
            if (os_log_type_enabled(v173, v169))
            {
              *buf = 138412290;
              v255 = v172;
              _os_log_impl(&dword_0, v173, v169, "Found an exchange note store with external id %@", buf, 0xCu);
            }

            v174 = [(ASAgent *)self account];
            v175 = [v174 folderWithId:v172];

            if (v175)
            {
              if ([v175 dataclass] == &stru_20)
              {
                v176 = [v171 objectID];
                v177 = [(ASAgent *)self noteStoreObjectIdsByFolderId];
                [v177 setObject:v176 forKeyedSubscript:v172];

                goto LABEL_158;
              }
            }

            else
            {
              v178 = DALoggingwithCategory();
              if (os_log_type_enabled(v178, v169))
              {
                v179 = [(ASAgent *)self account];
                v180 = [v179 folderHierarchy];
                *buf = 138412546;
                v255 = v172;
                v256 = 2112;
                v257 = v180;
                _os_log_impl(&dword_0, v178, v169, "No known note folder with id %@. folderHierarchy is %@", buf, 0x16u);

                self = v223;
              }

              v176 = [(ASAgent *)self account];
              [v176 stopMonitoringFolderWithID:v172];
LABEL_158:
            }
          }
        }

        v167 = [v165 countByEnumeratingWithState:&v228 objects:v249 count:16];
      }

      while (v167);
    }

    v181 = [(ASAgent *)self account];
    v182 = [v181 notesFolders];

    v226 = 0u;
    v227 = 0u;
    v224 = 0u;
    v225 = 0u;
    v183 = v182;
    v184 = [v183 countByEnumeratingWithState:&v224 objects:v248 count:16];
    if (v184)
    {
      v185 = v184;
      v186 = 0;
      v187 = 0;
      v188 = 0;
      v189 = *v225;
      do
      {
        v190 = 0;
        v191 = v186;
        v192 = v187;
        do
        {
          if (*v225 != v189)
          {
            objc_enumerationMutation(v183);
          }

          v186 = *(*(&v224 + 1) + 8 * v190);

          v187 = [v186 folderID];

          v193 = [(ASAgent *)v223 noteStoreObjectIdsByFolderId];
          v194 = [v193 objectForKeyedSubscript:v187];

          if (!v194)
          {
            v195 = [(ASAgent *)v223 _newNoteSourceForDAFolder:v186];
            v196 = v195;
            if (v195)
            {
              v197 = [v195 objectID];
              v198 = [(ASAgent *)v223 noteStoreObjectIdsByFolderId];
              [v198 setObject:v197 forKeyedSubscript:v187];

              v188 = 1;
            }
          }

          v190 = v190 + 1;
          v191 = v186;
          v192 = v187;
        }

        while (v185 != v190);
        v185 = [v183 countByEnumeratingWithState:&v224 objects:v248 count:16];
      }

      while (v185);

      self = v223;
    }

    else
    {
      v188 = 0;
    }

    v199 = DALoggingwithCategory();
    v200 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v199, v200))
    {
      v201 = [(ASAgent *)self noteStoreObjectIdsByFolderId];
      *buf = 138412290;
      v255 = v201;
      _os_log_impl(&dword_0, v199, v200, "We ended up with a _noteStoreObjectIdsByFolderId of %@", buf, 0xCu);
    }

    v202 = [(ASAgent *)self account];
    v203 = [v202 defaultNotesFolder];
    v204 = [v203 folderID];

    if (v204)
    {
      v205 = [(ASAgent *)self _containerForFolderWithId:v204 dataclass:32];
      v206 = v218;
      if (v205)
      {
        v207 = [v218 defaultStore];

        if (v205 != v207)
        {
          [v218 setDefaultStore:v205];

          goto LABEL_182;
        }
      }

      if (v188)
      {
LABEL_182:
        v208 = +[ASLocalDBHelper sharedInstance];
        [v208 noteSaveDB];
      }
    }

    else
    {
      v206 = v218;
      if (v188)
      {
        goto LABEL_182;
      }
    }
  }
}

- (void)_openLocalDBConnections
{
  v3 = [(ASAgent *)self account];
  v4 = [v3 enabledForDADataclass:4];

  if (v4)
  {
    v5 = +[ASLocalDBHelper sharedInstance];
    v6 = [(ASAgent *)self account];
    v7 = [v6 accountID];
    v8 = [(ASAgent *)self account];
    v9 = [v8 changeTrackingID];
    [v5 calOpenDatabaseForAccountID:v7 clientID:v9];
  }

  v10 = [(ASAgent *)self account];
  v11 = [v10 enabledForDADataclass:2];

  if (v11)
  {
    v12 = +[ASLocalDBHelper sharedInstance];
    v13 = [(ASAgent *)self account];
    v14 = [v13 changeTrackingID];
    [v12 abOpenDBWithClientIdentifier:v14];
  }

  v15 = [(ASAgent *)self account];
  v16 = [v15 enabledForDADataclass:32];

  if (v16)
  {
    v17 = +[ASLocalDBHelper sharedInstance];
    [v17 noteOpenDB];
  }
}

- (BOOL)_closeLocalDBConnectionsWithoutSaving
{
  v3 = [(ASAgent *)self account];
  v4 = [v3 enabledForDADataclass:4];

  if (v4)
  {
    v5 = +[ASLocalDBHelper sharedInstance];
    v6 = [(ASAgent *)self account];
    v7 = [v6 accountID];
    v8 = [v5 calCloseDatabaseForAccountID:v7 save:0];

    if (!v8)
    {
      return 0;
    }
  }

  v9 = [(ASAgent *)self account];
  v10 = [v9 enabledForDADataclass:2];

  if (v10)
  {
    v11 = +[ASLocalDBHelper sharedInstance];
    v12 = [v11 abCloseDBAndSave:0];

    if (!v12)
    {
      return 0;
    }
  }

  v13 = [(ASAgent *)self account];
  v14 = [v13 enabledForDADataclass:32];

  if (!v14)
  {
    return 1;
  }

  v15 = +[ASLocalDBHelper sharedInstance];
  v16 = [v15 noteCloseDBAndSave:0];

  return v16 != 0;
}

- (BOOL)_abBestEffortApplyNewFolders:(id)a3 oldFolders:(id)a4 shouldCreateFoldersMissingInDB:(BOOL)a5
{
  v7 = a3;
  v8 = DALoggingwithCategory();
  v9 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v8, v9))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v8, v9, "Doing best-effort match of AB folders", buf, 2u);
  }

  v10 = +[ASLocalDBHelper sharedInstance];
  v11 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
  v12 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v78 objects:v84 count:16];
  v65 = v10;
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v79;
    do
    {
      v18 = 0;
      v19 = v16;
      do
      {
        if (*v79 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v16 = *(*(&v78 + 1) + 8 * v18);

        if ([v16 dataclass] == &dword_0 + 2)
        {
          v20 = [v16 folderName];
          [v11 setObject:v16 forKeyedSubscript:v20];

          v21 = [v16 folderID];
          [v12 setObject:v16 forKeyedSubscript:v21];
        }

        v18 = v18 + 1;
        v19 = v16;
      }

      while (v15 != v18);
      v15 = [v13 countByEnumeratingWithState:&v78 objects:v84 count:16];
    }

    while (v15);

    v10 = v65;
  }

  v22 = [(ASAgent *)self account];
  v23 = [v22 _copyABAccount:1];

  [v10 abDB];
  v24 = ABAddressBookCopyArrayOfAllSourcesInAccount();
  if (v24)
  {
    cf = v23;
    v62 = a5;
    v70 = objc_opt_new();
    v69 = v24;
    v25 = 0;
    if ([v24 count])
    {
      v26 = 0;
      v71 = kABSourceExternalIdentifierProperty;
      v63 = kABSourceConstraintsPathProperty;
      while (1)
      {
        v27 = [v24 objectAtIndexedSubscript:v26];

        if (v27)
        {
          break;
        }

LABEL_33:
        if (++v26 >= [v24 count])
        {
          goto LABEL_34;
        }
      }

      v28 = ABRecordCopyValue(v27, kABSourceTypeProperty);
      if ([v28 intValue] == 16777217)
      {
LABEL_32:

        goto LABEL_33;
      }

      v29 = ABRecordCopyValue(v27, kABSourceNameProperty);
      v30 = ABRecordCopyValue(v27, v71);
      v72 = v30;
      if (v30)
      {
        if ([v70 containsObject:v30])
        {
          goto LABEL_30;
        }

        v31 = v12;
        v32 = v72;
      }

      else
      {
        if (!v29)
        {
          goto LABEL_30;
        }

        v31 = v11;
        v32 = v29;
      }

      v33 = [v31 objectForKeyedSubscript:v32];
      if (v33)
      {
        v34 = v25;
        v35 = v33;
        v36 = [v33 folderID];
        v68 = v35;
        v37 = v35;
        v38 = v34;
        v39 = v36;
        v66 = [v37 folderName];
        [v70 addObject:v39];
        if (![v72 isEqualToString:v39] || (objc_msgSend(v29, "isEqualToString:", v66) & 1) == 0)
        {
          ABRecordSetValue(v27, v71, [v68 folderID], 0);
          ABRecordSetValue(v27, kABSourceNameProperty, [v68 folderName], 0);
          v38 = 1;
        }

        v64 = v29;
        [v11 removeObjectForKey:v29];

        v67 = ABRecordCopyValue(v27, v63);
        [(ASAgent *)self account];
        v41 = v40 = v38;
        v42 = [v41 addressBookConstraintsPath];

        v25 = v40;
        if (([v67 isEqualToString:v42] & 1) == 0)
        {
          ABRecordSetValue(v27, v63, v42, 0);
          v25 = 1;
        }

        v29 = v64;
        v10 = v65;
        goto LABEL_31;
      }

LABEL_30:
      [v10 changeTrackingID];
      [v10 abDB];
      ABChangeHistoryUnregisterClientForSource();
      ABAddressBookRemoveRecord([v10 abDB], v27, 0);
      v25 = 1;
LABEL_31:

      v24 = v69;
      goto LABEL_32;
    }

LABEL_34:
    v73 = v25;
    if (v62)
    {
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v43 = [v11 allKeys];
      v44 = [v43 countByEnumeratingWithState:&v74 objects:v83 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = 0;
        v47 = *v75;
        do
        {
          v48 = 0;
          v49 = v46;
          do
          {
            if (*v75 != v47)
            {
              objc_enumerationMutation(v43);
            }

            v46 = [v11 objectForKeyedSubscript:*(*(&v74 + 1) + 8 * v48)];

            CFRelease([(ASAgent *)self _newABSourceForDAFolder:v46]);
            v48 = v48 + 1;
            v49 = v46;
          }

          while (v45 != v48);
          v45 = [v43 countByEnumeratingWithState:&v74 objects:v83 count:16];
        }

        while (v45);

        v73 = 1;
        v10 = v65;
        v24 = v69;
      }
    }

    v50 = [(ASAgent *)self account];
    v51 = [v50 defaultContainerIdentifierForDADataclass:2];

    v52 = &PLLogRegisteredEvent_ptr;
    if (!v51)
    {
      goto LABEL_48;
    }

    [v10 abDB];
    [(ASAgent *)self account];
    v54 = v53 = v24;
    v55 = [v54 accountID];
    v56 = ABAddressBookCopySourceWithAccountAndExternalIdentifiers();

    v52 = &PLLogRegisteredEvent_ptr;
    v24 = v53;
    if (v56)
    {
      [v10 abDB];
      if (v56 != ABAddressBookGetDefaultSourceForAccount())
      {
        [v10 abDB];
        ABAddressBookSetDefaultSourceForAccount();
        [v10 abDB];
        ABAddressBookSetDefaultSource();
        CFRelease(v56);
        CFRelease(cf);
        goto LABEL_50;
      }

      CFRelease(v56);
      v57 = cf;
    }

    else
    {
LABEL_48:
      v57 = cf;
    }

    CFRelease(v57);
    if ((v73 & 1) == 0)
    {
      v59 = 0;
      goto LABEL_53;
    }

LABEL_50:
    v58 = [v52[390] sharedInstance];
    [v58 abSaveDB];

    v59 = 1;
LABEL_53:

    goto LABEL_54;
  }

  CFRelease(v23);
  v59 = 0;
LABEL_54:

  return v59;
}

- (BOOL)_calBestEffortApplyNewFolders:(id)a3 oldFolders:(id)a4 shouldCreateFoldersMissingInDB:(BOOL)a5
{
  v70 = a5;
  v7 = a3;
  v8 = a4;
  v81 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
  v9 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
  v75 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v8, "count")}];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v95 objects:v105 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v96;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v96 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v95 + 1) + 8 * i);
        v16 = [(ASAgent *)self account];
        if ([v16 enabledForDADataclass:4])
        {
          v17 = [v15 dataclass];

          if (v17 != &dword_4)
          {
            continue;
          }

          if ([v15 dataclass] == &dword_4)
          {
            v18 = [v15 folderName];
            [v81 setObject:v15 forKeyedSubscript:v18];
          }

          v16 = [v15 folderID];
          [v9 setObject:v15 forKeyedSubscript:v16];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v95 objects:v105 count:16];
    }

    while (v12);
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  obj = v8;
  v19 = [obj countByEnumeratingWithState:&v91 objects:v104 count:16];
  if (!v19)
  {
    goto LABEL_25;
  }

  v20 = v19;
  v21 = *v92;
  do
  {
    for (j = 0; j != v20; j = j + 1)
    {
      if (*v92 != v21)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v91 + 1) + 8 * j);
      v24 = [(ASAgent *)self account];
      if ([v24 enabledForDADataclass:4])
      {
        v25 = [v23 dataclass];

        if (v25 != &dword_4)
        {
          continue;
        }

        v24 = [v23 folderID];
        [v75 setObject:v23 forKeyedSubscript:v24];
      }
    }

    v20 = [obj countByEnumeratingWithState:&v91 objects:v104 count:16];
  }

  while (v20);
LABEL_25:

  v26 = [(ASAgent *)self account];
  v27 = [v26 _copyExchangeCalendarStore:1];

  v79 = CalStoreCopyCalendars();
  v77 = objc_opt_new();
  v76 = objc_opt_new();
  v82 = objc_opt_new();
  theArray = 0;
  v90 = 0;
  v88 = 0;
  v28 = +[ASLocalDBHelper sharedInstance];
  v29 = [(ASAgent *)self account];
  v30 = [v29 accountID];
  [v28 calDatabaseForAccountID:v30];
  cf = v27;
  CalDatabaseCopyCalendarChangesWithIndicesInStore();

  v31 = v81;
  v32 = v79;
  v71 = v10;
  v74 = v9;
  v33 = 0;
  if ([v79 count])
  {
    v34 = 0;
    type = _CPLog_to_os_log_type[6];
    do
    {
      [v32 objectAtIndexedSubscript:v34];

      v35 = CalCalendarCopyTitle();
      v36 = CalCalendarCopyExternalID();
      CanContainEntityType = CalCalendarCanContainEntityType();
      v38 = CanContainEntityType;
      v80 = v35;
      if (v36)
      {
        if ([v77 containsObject:v36])
        {
          goto LABEL_42;
        }

        v39 = v74;
        v40 = v36;
      }

      else
      {
        if (v35)
        {
          v41 = CanContainEntityType;
        }

        else
        {
          v41 = 1;
        }

        if (v41)
        {
LABEL_42:
          UID = CalCalendarGetUID();
          v48 = [NSNumber numberWithInt:UID];
          v49 = [v76 containsObject:v48];

          v50 = DALoggingwithCategory();
          v51 = os_log_type_enabled(v50, type);
          if (v49)
          {
            if (v51)
            {
              *buf = 67109120;
              *v101 = UID;
              _os_log_impl(&dword_0, v50, type, "Not deleting calendar with id %d, as it has a pending add", buf, 8u);
            }
          }

          else
          {
            if (v51)
            {
              *buf = 67109634;
              *v101 = UID;
              *&v101[4] = 2112;
              *&v101[6] = v36;
              v102 = 2112;
              v103 = v80;
              _os_log_impl(&dword_0, v50, type, "Deleting calendar with local id %d, external id %@, calTitle %@, as we couldn't find an exchange folder for it", buf, 0x1Cu);
            }

            CalRemoveCalendar();
            v33 = 1;
          }

          v31 = v81;
          goto LABEL_50;
        }

        v39 = v31;
        v40 = v35;
      }

      v42 = [v39 objectForKeyedSubscript:v40];
      v43 = v42;
      if (!v42)
      {
        goto LABEL_42;
      }

      v44 = [v42 folderID];
      v45 = [v43 folderName];
      [v77 addObject:v44];
      if (![v36 isEqualToString:v44])
      {
        goto LABEL_38;
      }

      v73 = [v75 objectForKeyedSubscript:v36];
      v46 = [v73 folderName];
      v72 = [v46 isEqualToString:v45];

      v31 = v81;
      if ((v72 & 1) == 0)
      {
LABEL_38:
        [v43 folderID];
        CalCalendarSetExternalID();
        [v43 folderName];
        CalCalendarSetTitle();
        v33 = 1;
      }

      if ((v38 & 1) == 0)
      {
        [v31 removeObjectForKey:v80];
      }

LABEL_50:
      ++v34;
      v32 = v79;
    }

    while (v34 < [v79 count]);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v52 = v71;
  if (!v70)
  {
    v63 = v74;
    if ((v33 & 1) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_72;
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v53 = [v31 allKeys];
  v54 = [v53 countByEnumeratingWithState:&v84 objects:v99 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v85;
    v57 = _CPLog_to_os_log_type[6];
    do
    {
      for (k = 0; k != v55; k = k + 1)
      {
        if (*v85 != v56)
        {
          objc_enumerationMutation(v53);
        }

        v59 = [v31 objectForKeyedSubscript:*(*(&v84 + 1) + 8 * k)];
        v60 = [v59 folderID];
        if (v60 && [v82 containsObject:v60])
        {
          v61 = DALoggingwithCategory();
          if (os_log_type_enabled(v61, v57))
          {
            *buf = 138412290;
            *v101 = v60;
            _os_log_impl(&dword_0, v61, v57, "Not adding event calendar with external id %@, as it has a pending delete", buf, 0xCu);
          }

          v31 = v81;
        }

        else
        {
          v62 = [(ASAgent *)self _newCalCalendarForDAFolder:v59];
          if (v62)
          {
            CFRelease(v62);
          }

          v33 = 1;
        }
      }

      v55 = [v53 countByEnumeratingWithState:&v84 objects:v99 count:16];
    }

    while (v55);
  }

  v63 = v74;
  v52 = v71;
  if (v33)
  {
LABEL_72:
    v65 = +[ASLocalDBHelper sharedInstance];
    v66 = [(ASAgent *)self account];
    v67 = [v66 accountID];
    [v65 calSaveDatabaseForAccountID:v67];

    v64 = 1;
    goto LABEL_73;
  }

LABEL_70:
  v64 = 0;
LABEL_73:

  return v64;
}

- (BOOL)_notesBestEffortApplyNewFolders:(id)a3 oldFolders:(id)a4 shouldCreateFoldersMissingInDB:(BOOL)a5
{
  v53 = a5;
  v6 = a3;
  v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v8 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v67 objects:v73 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v68;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v68 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v67 + 1) + 8 * i);
        if ([v14 dataclass] == &stru_20)
        {
          v15 = [v14 folderName];
          [v7 setObject:v14 forKeyedSubscript:v15];

          v16 = [v14 folderID];
          [v8 setObject:v14 forKeyedSubscript:v16];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v67 objects:v73 count:16];
    }

    while (v11);
  }

  v17 = +[ASLocalDBHelper sharedInstance];
  v57 = [v17 noteDB];

  v18 = -[ASAgent _noteAccountObject:](self, "_noteAccountObject:", [v9 count] != 0);
  v19 = [v18 stores];
  v58 = objc_opt_new();
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v52 = v19;
  v20 = [v19 copy];
  v21 = [v20 countByEnumeratingWithState:&v63 objects:v72 count:16];
  if (v21)
  {
    v22 = v21;
    v49 = self;
    v50 = v18;
    v51 = v9;
    v54 = v8;
    v56 = v7;
    v23 = 0;
    v24 = *v64;
    while (1)
    {
      v25 = 0;
      v55 = v22;
      do
      {
        if (*v64 != v24)
        {
          objc_enumerationMutation(v20);
        }

        v26 = *(*(&v63 + 1) + 8 * v25);
        v27 = [v26 name];
        v28 = [v26 externalIdentifier];
        if (v28)
        {
          if ([v58 containsObject:v28])
          {
            goto LABEL_25;
          }

          v29 = v54;
          v30 = v28;
        }

        else
        {
          if (!v27)
          {
            goto LABEL_25;
          }

          v29 = v56;
          v30 = v27;
        }

        v31 = [v29 objectForKeyedSubscript:v30];
        v32 = v31;
        if (!v31)
        {
LABEL_25:
          [v57 deleteStore:v26];
          v23 = 1;
          goto LABEL_26;
        }

        v33 = v24;
        v34 = v20;
        v35 = [v31 folderID];
        v36 = [v32 folderName];
        [v58 addObject:v35];
        if (![v28 isEqualToString:v35] || (objc_msgSend(v27, "isEqualToString:", v36) & 1) == 0)
        {
          v37 = [v32 folderName];
          [v26 setName:v37];

          v38 = [v32 folderID];
          [v26 setExternalIdentifier:v38];

          v23 = 1;
        }

        [v56 removeObjectForKey:v27];

        v20 = v34;
        v24 = v33;
        v22 = v55;
LABEL_26:

        v25 = v25 + 1;
      }

      while (v22 != v25);
      v22 = [v20 countByEnumeratingWithState:&v63 objects:v72 count:16];
      if (!v22)
      {

        if (v53)
        {
          v7 = v56;
          v8 = v54;
          v18 = v50;
          v9 = v51;
          self = v49;
          goto LABEL_31;
        }

        v7 = v56;
        v8 = v54;
        v18 = v50;
        v9 = v51;
        if (v23)
        {
LABEL_40:
          v47 = +[ASLocalDBHelper sharedInstance];
          [v47 noteSaveDB];

          v39 = 1;
          goto LABEL_43;
        }

LABEL_42:
        v39 = 0;
        goto LABEL_43;
      }
    }
  }

  v23 = 0;
  v39 = 0;
  if (v53)
  {
LABEL_31:
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v40 = [v7 allKeys];
    v41 = [v40 countByEnumeratingWithState:&v59 objects:v71 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = v18;
      v44 = *v60;
      do
      {
        for (j = 0; j != v42; j = j + 1)
        {
          if (*v60 != v44)
          {
            objc_enumerationMutation(v40);
          }

          v46 = [v7 objectForKeyedSubscript:*(*(&v59 + 1) + 8 * j)];
        }

        v42 = [v40 countByEnumeratingWithState:&v59 objects:v71 count:16];
      }

      while (v42);

      v18 = v43;
      goto LABEL_40;
    }

    if (v23)
    {
      goto LABEL_40;
    }

    goto LABEL_42;
  }

LABEL_43:

  return v39;
}

- (void)_syncAllContactsEventsToDosAndNotesFolders
{
  [(ASAgent *)self _syncAllContactFoldersWithRemoteChanges:0];
  [(ASAgent *)self _syncAllEventsFoldersWithRemoteChanges:0];
  [(ASAgent *)self _syncAllToDosFoldersWithRemoteChanges:0];
  [(ASAgent *)self _syncAllNotesFoldersWithRemoteChanges:0];

  [(ASAgent *)self _refirePendingCalendarInvitations];
}

- (void)preferredDaysToSyncDidChange
{
  v3 = [(ASAgent *)self account];
  [v3 setEventsNumberOfPastDaysToSync:{-[ASAgent preferredEventDaysToSync](self, "preferredEventDaysToSync")}];

  [(ASAgent *)self _syncAllEventsFoldersWithRemoteChanges:1];
}

- (id)foldersForFolderIDs:(id)a3 andDataclasses:(int64_t)a4
{
  v6 = a3;
  v20 = +[NSMutableArray array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v22;
    v12 = _CPLog_to_os_log_type[4];
    *&v9 = 138412290;
    v19 = v9;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [(ASAgent *)self account];
        v16 = [v15 folderWithId:v14];

        if (v16)
        {
          if (([v16 dataclass] & a4) != 0)
          {
            [v20 addObject:v16];
          }
        }

        else
        {
          v17 = DALoggingwithCategory();
          if (os_log_type_enabled(v17, v12))
          {
            *buf = v19;
            v26 = v14;
            _os_log_impl(&dword_0, v17, v12, "Unknown folder id: %@", buf, 0xCu);
          }
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v10);
  }

  return v20;
}

- (void)syncFolderIDs:(id)a3 forDataclasses:(int64_t)a4 isUserRequested:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  if (v5)
  {
    v9 = [(ASAgent *)self account];
    [v9 setShouldUseOpportunisticSockets:0];

    v10 = [(ASAgent *)self account];
    [v10 setWasUserInitiated:1];
  }

  if (a4)
  {
    v11 = DALoggingwithCategory();
    v12 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v11, v12))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_0, v11, v12, "syncing email accounts isn't supported via DataAccess framework", &v21, 2u);
    }

    a4 &= ~1uLL;
    if ((a4 & 4) == 0)
    {
LABEL_5:
      if ((a4 & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }
  }

  else if ((a4 & 4) == 0)
  {
    goto LABEL_5;
  }

  if (v8)
  {
    v13 = [(ASAgent *)self foldersForFolderIDs:v8 andDataclasses:4];
    [(ASAgent *)self _appendSyncRequestForFolders:v13 remoteChanges:1];
  }

  else
  {
    [(ASAgent *)self _appendSyncRequestForFoldersOfDataclasses:4 remoteChanges:1];
  }

  a4 &= ~4uLL;
  if ((a4 & 2) == 0)
  {
LABEL_6:
    if ((a4 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_18:
  if (v8)
  {
    v14 = [(ASAgent *)self foldersForFolderIDs:v8 andDataclasses:2];
    [(ASAgent *)self _appendSyncRequestForFolders:v14 remoteChanges:1];
  }

  else
  {
    [(ASAgent *)self _appendSyncRequestForFoldersOfDataclasses:2 remoteChanges:1];
  }

  a4 &= ~2uLL;
  if ((a4 & 0x10) == 0)
  {
LABEL_7:
    if ((a4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_22:
  if (v8)
  {
    v15 = [(ASAgent *)self foldersForFolderIDs:v8 andDataclasses:16];
    [(ASAgent *)self _appendSyncRequestForFolders:v15 remoteChanges:1];
  }

  else
  {
    [(ASAgent *)self _appendSyncRequestForFoldersOfDataclasses:16 remoteChanges:1];
  }

  a4 &= ~0x10uLL;
  if ((a4 & 0x20) == 0)
  {
LABEL_8:
    if ((a4 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_26:
  if (v8)
  {
    v16 = [(ASAgent *)self foldersForFolderIDs:v8 andDataclasses:32];
    [(ASAgent *)self _appendSyncRequestForFolders:v16 remoteChanges:1];
  }

  else
  {
    [(ASAgent *)self _appendSyncRequestForFoldersOfDataclasses:32 remoteChanges:1];
  }

  a4 &= ~0x20uLL;
  if ((a4 & 8) == 0)
  {
LABEL_9:
    if (!a4)
    {
      goto LABEL_36;
    }

    goto LABEL_33;
  }

LABEL_30:
  v17 = DALoggingwithCategory();
  v18 = _CPLog_to_os_log_type[4];
  if (os_log_type_enabled(v17, v18))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&dword_0, v17, v18, "GAL searching has no folders to sync", &v21, 2u);
  }

  a4 &= ~8uLL;
  if (a4)
  {
LABEL_33:
    v19 = DALoggingwithCategory();
    v20 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v19, v20))
    {
      v21 = 134217984;
      v22 = a4;
      _os_log_impl(&dword_0, v19, v20, "discarding unknown bits set in sync request: %lx", &v21, 0xCu);
    }
  }

LABEL_36:
}

- (void)folderHierarchyFailedToUpdate:(id)a3 withStatus:(int64_t)a4 andError:(id)a5
{
  v6 = a5;
  if (statusAndErrorIndicateWeShouldTurnOnReachability())
  {
    v7 = DALoggingwithCategory();
    v8 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v7, v8))
    {
      *v11 = 0;
      _os_log_impl(&dword_0, v7, v8, "network unreachable during folder sync. Waiting for reachability to signal a retry.", v11, 2u);
    }

    [(ASAgent *)self setSyncWhenReachable:1];
  }

  if (!self->_isShuttingDown)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"ASAccountFolderHierarchyExternallyChangedNotification", 0, 0, 1u);
    [(ASAgent *)self _syncAllContactsEventsToDosAndNotesFolders];
    v10 = [(ASAgent *)self account];
    [v10 setSafeToPing:1];
  }

  [(ASAgent *)self _syncEndedWithError:v6];
}

- (void)folderHierarchySuccessfullyUpdated:(id)a3 withNumChangedFolders:(unint64_t)a4
{
  v5 = a3;
  [(ASAgent *)self _openLocalDBConnections];
  [(ASAgent *)self setSyncWhenReachable:0];
  if (v5)
  {
    v6 = [v5 isFirstSync];
    v7 = [v5 oldFolders];
  }

  else
  {
    v7 = 0;
    v6 = 1;
  }

  v8 = [(ASAgent *)self account];
  v9 = [v8 visibleFolders];

  v10 = DALoggingwithCategory();
  type = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v10, type))
  {
    *buf = 138412802;
    v121 = v7;
    v122 = 2112;
    v123 = v9;
    v124 = 1024;
    LODWORD(v125) = v6;
    _os_log_impl(&dword_0, v10, type, "ASAgent folderHierarchySuccessfullyUpdated: oldFolders is %@, currentFolders is %@ isFirstSync %d", buf, 0x1Cu);
  }

  if (v6)
  {
    v11 = [(ASAgent *)self account];
    v12 = [v11 enabledForDADataclass:2];

    if (v12)
    {
      [(ASAgent *)self _abBestEffortApplyNewFolders:v9 oldFolders:v7 shouldCreateFoldersMissingInDB:1];
    }

    v13 = [(ASAgent *)self account];
    v14 = [v13 enabledForDADataclass:4];

    if (v14)
    {
      [(ASAgent *)self _calBestEffortApplyNewFolders:v9 oldFolders:v7 shouldCreateFoldersMissingInDB:1];
    }

    v15 = [(ASAgent *)self account];
    v16 = [v15 enabledForDADataclass:16];

    if (v16)
    {
      [(ASAgent *)self _reminderBestEffortApplyNewFolders:v9 oldFolders:v7 shouldCreateFoldersMissingInDB:1];
    }

    v17 = [(ASAgent *)self account];
    v18 = [v17 enabledForDADataclass:32];

    if (v18)
    {
      [(ASAgent *)self _notesBestEffortApplyNewFolders:v9 oldFolders:v7 shouldCreateFoldersMissingInDB:1];
    }

    goto LABEL_103;
  }

  v96 = v5;
  v19 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v7, "count")}];
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  obj = v7;
  v20 = [obj countByEnumeratingWithState:&v116 objects:v129 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    v23 = *v117;
    do
    {
      v24 = 0;
      v25 = v22;
      do
      {
        if (*v117 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v116 + 1) + 8 * v24);

        v26 = [v22 folderID];
        [v19 setObject:v22 forKeyedSubscript:v26];

        v24 = v24 + 1;
        v25 = v22;
      }

      while (v21 != v24);
      v21 = [obj countByEnumeratingWithState:&v116 objects:v129 count:16];
    }

    while (v21);
  }

  v95 = v7;

  v27 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v9, "count")}];
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v93 = v9;
  v28 = v9;
  v29 = [v28 countByEnumeratingWithState:&v112 objects:v128 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = self;
    v32 = 0;
    v33 = *v113;
    do
    {
      v34 = 0;
      v35 = v32;
      do
      {
        if (*v113 != v33)
        {
          objc_enumerationMutation(v28);
        }

        v32 = *(*(&v112 + 1) + 8 * v34);

        v36 = [v32 folderID];
        [v27 setObject:v32 forKeyedSubscript:v36];

        v34 = v34 + 1;
        v35 = v32;
      }

      while (v30 != v34);
      v30 = [v28 countByEnumeratingWithState:&v112 objects:v128 count:16];
    }

    while (v30);

    self = v31;
  }

  [(ASAgent *)self _cacheFoldersForDataclasses:127];
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v102 = v28;
  v37 = [v102 countByEnumeratingWithState:&v108 objects:v127 count:16];
  v98 = v19;
  if (v37)
  {
    v38 = v37;
    v39 = 0;
    v40 = 0;
    v99 = 0;
    v41 = *v109;
    v97 = self;
    while (1)
    {
      v42 = 0;
      do
      {
        v43 = v40;
        v44 = v39;
        if (*v109 != v41)
        {
          objc_enumerationMutation(v102);
        }

        v40 = *(*(&v108 + 1) + 8 * v42);

        v39 = [v40 folderID];

        v45 = [v19 objectForKeyedSubscript:v39];

        if (!v45)
        {
          v46 = [v40 dataclass];
          if (v46 > 15)
          {
            if (v46 == &dword_10)
            {
              v47 = [(ASAgent *)self account];
              if (([v47 enabledForDADataclass:16] & 1) == 0)
              {
                goto LABEL_58;
              }

              v53 = [(ASAgent *)self sharedReminderKitHelper];
              v54 = [(ASAgent *)self account];
              v55 = [v53 isFolderExistsWithId:v39 forAccount:v54];

              if (v55)
              {
                self = v97;
                v19 = v98;
              }

              else
              {
                v56 = [(ASAgent *)v97 sharedReminderKitHelper];
                v57 = [(ASAgent *)v97 account];
                v58 = [v56 addFolder:v40 forAccount:v57];

                if (v58)
                {
                  v59 = [(ASAgent *)v97 sharedReminderKitHelper];
                  [v59 commitChangesToStore];
                }

                self = v97;
                v19 = v98;
              }
            }

            else
            {
              if (v46 != &stru_20)
              {
                goto LABEL_37;
              }

              v47 = [(ASAgent *)self account];
              if (![v47 enabledForDADataclass:32])
              {
                goto LABEL_58;
              }

              v50 = [(ASAgent *)self _containerForFolderWithId:v39 dataclass:32];

              if (!v50)
              {
                v51 = [(ASAgent *)self _newNoteSourceForDAFolder:v40];
                v99 |= v51 != 0;
              }
            }
          }

          else
          {
            if (v46 == (&dword_0 + 2))
            {
              v47 = [(ASAgent *)self account];
              if ([v47 enabledForDADataclass:2])
              {
                v52 = [(ASAgent *)self _containerForFolderWithId:v39 dataclass:2];

                if (v52)
                {
                  goto LABEL_37;
                }

                v49 = [(ASAgent *)self _newABSourceForDAFolder:v40];
LABEL_54:
                CFRelease(v49);
                v99 = 1;
                goto LABEL_37;
              }

LABEL_58:

              goto LABEL_37;
            }

            if (v46 != &dword_4)
            {
              goto LABEL_37;
            }

            v47 = [(ASAgent *)self account];
            if (![v47 enabledForDADataclass:4])
            {
              goto LABEL_58;
            }

            v48 = [(ASAgent *)self _containerForFolderWithId:v39 dataclass:4];

            if (!v48)
            {
              v49 = [(ASAgent *)self _newCalCalendarForDAFolder:v40];
              if (v49)
              {
                goto LABEL_54;
              }
            }
          }
        }

LABEL_37:
        v42 = v42 + 1;
      }

      while (v38 != v42);
      v60 = [v102 countByEnumeratingWithState:&v108 objects:v127 count:16];
      v38 = v60;
      if (!v60)
      {

        goto LABEL_65;
      }
    }
  }

  v39 = 0;
  v99 = 0;
LABEL_65:

  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  obja = obj;
  v61 = [obja countByEnumeratingWithState:&v104 objects:v126 count:16];
  if (!v61)
  {
    goto LABEL_92;
  }

  v62 = v61;
  v63 = 0;
  v64 = *v105;
  do
  {
    v65 = 0;
    do
    {
      v66 = v63;
      v67 = v39;
      if (*v105 != v64)
      {
        objc_enumerationMutation(obja);
      }

      v63 = *(*(&v104 + 1) + 8 * v65);

      v39 = [v63 folderID];

      v68 = [v27 objectForKeyedSubscript:v39];

      if (!v68)
      {
        v69 = DALoggingwithCategory();
        if (os_log_type_enabled(v69, type))
        {
          *buf = 138412802;
          v121 = v63;
          v122 = 2112;
          v123 = v39;
          v124 = 2112;
          v125 = v27;
          _os_log_impl(&dword_0, v69, type, "ASAgent folderHierarchySuccessfullyUpdated: deleting folder %@, because its id %@ wasn't in my map of %@", buf, 0x20u);
        }

        v70 = [v63 dataclass];
        if (v70 > 15)
        {
          if (v70 == &dword_10)
          {
            v77 = [(ASAgent *)self sharedReminderKitHelper];
            v78 = [(ASAgent *)self account];
            v79 = self;
            v80 = [v77 deleteFolder:v63 forAccount:v78];

            if (v80)
            {
              v81 = [(ASAgent *)v79 sharedReminderKitHelper];
              [v81 commitChangesToStore];
            }

            self = v79;
            v19 = v98;
          }

          else if (v70 == &stru_20)
          {
            v73 = [(ASAgent *)self account];
            v74 = [v73 enabledForDADataclass:32];

            if (v74)
            {
              [(ASAgent *)self _removeNoteSourceForDAFolder:v63];
              goto LABEL_86;
            }
          }
        }

        else
        {
          if (v70 == (&dword_0 + 2))
          {
            v75 = [(ASAgent *)self account];
            v76 = [v75 enabledForDADataclass:2];

            if (!v76)
            {
              goto LABEL_71;
            }

            [(ASAgent *)self _removeABSourceForDAFolder:v63];
            goto LABEL_86;
          }

          if (v70 == &dword_4)
          {
            v71 = [(ASAgent *)self account];
            v72 = [v71 enabledForDADataclass:4];

            if (v72)
            {
              [(ASAgent *)self _removeCalCalendarForDAFolder:v63];
LABEL_86:
              v99 = 1;
            }
          }
        }
      }

LABEL_71:
      v65 = v65 + 1;
    }

    while (v62 != v65);
    v82 = [obja countByEnumeratingWithState:&v104 objects:v126 count:16];
    v62 = v82;
  }

  while (v82);

LABEL_92:
  v83 = [(ASAgent *)self account];
  v84 = [v83 enabledForDADataclass:2];

  v5 = v96;
  if (v84)
  {
    [(ASAgent *)self _abBestEffortApplyNewFolders:v102 oldFolders:obja shouldCreateFoldersMissingInDB:0];
  }

  v85 = [(ASAgent *)self account];
  v86 = [v85 enabledForDADataclass:4];

  if (v86)
  {
    [(ASAgent *)self _calBestEffortApplyNewFolders:v102 oldFolders:obja shouldCreateFoldersMissingInDB:0];
  }

  v87 = [(ASAgent *)self account];
  v88 = [v87 enabledForDADataclass:16];

  if (v88)
  {
    [(ASAgent *)self _reminderBestEffortApplyNewFolders:v102 oldFolders:obja shouldCreateFoldersMissingInDB:0];
  }

  v89 = [(ASAgent *)self account];
  v90 = [v89 enabledForDADataclass:32];

  if (v90)
  {
    [(ASAgent *)self _notesBestEffortApplyNewFolders:v102 oldFolders:obja shouldCreateFoldersMissingInDB:0];
  }

  if (v99)
  {
    [(ASAgent *)self _updateFolderHierarchyRequireChangedFolders:0];
  }

  v9 = v94;
  v7 = v95;
LABEL_103:
  [(ASAgent *)self _cacheFoldersForDataclasses:127];
  [(ASAgent *)self _nilOutContainersForDataclasses:127];
  [(ASAgent *)self _closeLocalDBConnectionsWithoutSaving];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"ASAccountFolderHierarchyExternallyChangedNotification", 0, 0, 1u);
  [(ASAgent *)self _appendFolderHierarchyChangesForFoldersOfDataclasses:4];
  [(ASAgent *)self _appendFolderHierarchyChangesForFoldersOfDataclasses:2];
  [(ASAgent *)self _appendFolderHierarchyChangesForFoldersOfDataclasses:32];
  if (!self->_numLocalFolderUpdatesInFlight)
  {
    [(ASAgent *)self _syncAllContactsEventsToDosAndNotesFolders];
    v92 = [(ASAgent *)self account];
    [v92 setSafeToPing:1];
  }

  [(ASAgent *)self _syncEndedWithError:0];
}

- (void)_handleDaemonBackedLocalFolderChangeWithDBChangeIndices:(__CFArray *)a3 oldFolders:(id)a4 status:(int64_t)a5 error:(id)a6
{
  v10 = a4;
  v11 = a6;
  if ((a5 + 1) <= 0xB && ((1 << (a5 + 1)) & 0xBC3) != 0)
  {
    v12 = DALoggingwithCategory();
    v13 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v12, v13))
    {
      v30 = 134218242;
      v31 = a5;
      v32 = 2112;
      v33 = v11;
      _os_log_impl(&dword_0, v12, v13, "Failed to send folder change to server with status %ld error %@", &v30, 0x16u);
    }
  }

  else
  {
    [(ASAgent *)self _openLocalDBConnections];
    if (a3 && CFArrayGetCount(a3))
    {
      v14 = +[ASLocalDBHelper sharedInstance];
      v15 = [(ASAgent *)self account];
      v16 = [v15 accountID];
      [v14 calDatabaseForAccountID:v16];

      v17 = [(ASAgent *)self account];
      v18 = [v17 _copyExchangeCalendarStore:1];

      v19 = [(ASAgent *)self account];
      v20 = [v19 changeTrackingID];
      CalDatabaseClearIndividualChangeRowIDsForClient();

      CFRelease(v18);
      v21 = [(ASAgent *)self account];
      v22 = [v21 accountID];
      [v14 calSaveDatabaseForAccountID:v22];
    }

    v23 = [(ASAgent *)self account];
    v12 = [v23 visibleFolders];

    v24 = [(ASAgent *)self account];
    v25 = [v24 enabledForDADataclass:2];

    if (v25)
    {
      [(ASAgent *)self _abBestEffortApplyNewFolders:v12 oldFolders:v10 shouldCreateFoldersMissingInDB:0];
    }

    v26 = [(ASAgent *)self account];
    v27 = [v26 enabledForDADataclass:4];

    if (v27)
    {
      [(ASAgent *)self _calBestEffortApplyNewFolders:v12 oldFolders:v10 shouldCreateFoldersMissingInDB:0];
    }

    v28 = [(ASAgent *)self account];
    v29 = [v28 enabledForDADataclass:32];

    if (v29)
    {
      [(ASAgent *)self _notesBestEffortApplyNewFolders:v12 oldFolders:v10 shouldCreateFoldersMissingInDB:0];
    }

    [(ASAgent *)self _closeLocalDBConnectionsWithoutSaving];
    [(ASAgent *)self _appendFolderHierarchyChangesForFoldersOfDataclasses:4];
    [(ASAgent *)self _appendFolderHierarchyChangesForFoldersOfDataclasses:2];
    [(ASAgent *)self _appendFolderHierarchyChangesForFoldersOfDataclasses:32];
  }

  if (!self->_numLocalFolderUpdatesInFlight)
  {
    [(ASAgent *)self _syncAllContactsEventsToDosAndNotesFolders];
  }
}

- (void)_handleLocalReminderFolderChangeWithFolder:(id)a3 oldFolders:(id)a4 status:(int64_t)a5 error:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ((a5 + 1) <= 0xB && ((1 << (a5 + 1)) & 0xBC3) != 0)
  {
    v13 = DALoggingwithCategory();
    v14 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v13, v14))
    {
      v24 = 134218242;
      v25 = a5;
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&dword_0, v13, v14, "Failed to send folder change to server with status %ld error %@", &v24, 0x16u);
    }
  }

  else
  {
    v15 = [v10 changeType];
    v16 = [(ASAgent *)self sharedReminderKitHelper];
    if (v15)
    {
      v17 = [v10 serverID];
      v18 = [(ASAgent *)self account];
      [v16 clearFolderChangeForFolderID:v17 forAccount:v18];
    }

    else
    {
      v17 = [v10 localUUID];
      v18 = [v10 serverID];
      v19 = [(ASAgent *)self account];
      [v16 clearFolderAdditionForFolderUUID:v17 folderID:v18 forAccount:v19];
    }

    v20 = [(ASAgent *)self account];
    v21 = [v20 visibleFolders];

    v22 = [(ASAgent *)self account];
    v23 = [v22 enabledForDADataclass:16];

    if (v23)
    {
      [(ASAgent *)self _reminderBestEffortApplyNewFolders:v21 oldFolders:v11 shouldCreateFoldersMissingInDB:0];
    }
  }

  if (!self->_numLocalFolderUpdatesInFlight)
  {
    [(ASAgent *)self _syncAllContactsEventsToDosAndNotesFolders];
  }
}

- (void)localChangeForFolder:(id)a3 finishedWithStatus:(int64_t)a4 andError:(id)a5 completionBlock:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (a4 == 2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"ASAccountFolderHierarchyExternallyChangedNotification", 0, 0, 1u);
  }

  --self->_numLocalFolderUpdatesInFlight;
  if (v12)
  {
    v14 = [v10 serverID];
    v15 = [v10 displayName];
    v12[2](v12, v14, v15, a4, v11);
  }

  else
  {
    v14 = DALoggingwithCategory();
    v16 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v14, v16))
    {
      v18 = 138412802;
      v19 = v10;
      v20 = 2048;
      v21 = a4;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_0, v14, v16, "changed folder %@ finished with status %ld and error %@, but I can't find the completion block for it!", &v18, 0x20u);
    }
  }

  if (!self->_numLocalFolderUpdatesInFlight)
  {
    v17 = [(ASAgent *)self account];
    [v17 setSafeToPing:1];
  }
}

- (void)processDAFolderChange:(id)a3 withCompletionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [ASFolder alloc];
  [v7 dataclass];
  v9 = _UserASFolderTypeForDataclass();
  v10 = [v7 folderId];
  v11 = [v7 parentFolderId];
  v12 = [v7 displayName];
  v15 = [v8 initWithFolderType:v9 serverID:v10 parentID:v11 displayName:v12 localID:0];

  [v15 setChangeType:{objc_msgSend(v7, "changeType")}];
  v13 = [v7 renameOnCollision];

  [v15 setRenameOnCollision:v13];
  ++self->_numLocalFolderUpdatesInFlight;
  v14 = [(ASAgent *)self account];
  [v14 syncLocallyChangedFolder:v15 consumer:self completionBlock:v6];
}

- (void)processMeetingRequestDatas:(id)a3 deliveryIdsToClear:(id)a4 deliveryIdsToSoftClear:(id)a5 inFolderWithId:(id)a6 callback:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(ASAgent *)self account];
  v18 = [v17 enabledForDADataclass:4];

  if (v18)
  {
    v19 = [(ASAgent *)self account];
    [v19 attemptInvitationLinkageForMetaDatas:v12 deliveryIdsToClear:v13 deliveryIdsToSoftClear:v14 inFolderWithId:v15 callback:v16];
  }

  else
  {
    v20 = DALoggingwithCategory();
    v21 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v20, v21))
    {
      *v22 = 0;
      _os_log_impl(&dword_0, v20, v21, "ProcessMeetingRequests: account not enabled for event class", v22, 2u);
    }

    (*(v16 + 2))(v16, 0);
  }
}

- (void)_setUpCalNotifications
{
  v3 = +[ESLocalDBWatcher sharedDBWatcher];
  v4 = [(ASAgent *)self account];
  v5 = [v4 accountID];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_7F00;
  v7[3] = &unk_6CE80;
  v7[4] = self;
  [v3 registerConcernedCalParty:self forAccountID:v5 withChangedBlock:v7];

  v6 = [(ASAgent *)self account];
  [v6 setEventsNumberOfPastDaysToSync:{-[ASAgent preferredEventDaysToSync](self, "preferredEventDaysToSync")}];
}

- (void)_tearDownCalNotifications
{
  v5 = +[ESLocalDBWatcher sharedDBWatcher];
  v3 = [(ASAgent *)self account];
  v4 = [v3 accountID];
  [v5 removeConcernedCalParty:self forAccountID:v4];
}

- (void)_setUpReminderNotifications
{
  v3 = [(ASAgent *)self sharedReminderKitHelper];
  v4 = [(ASAgent *)self account];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_8114;
  v5[3] = &unk_6CE80;
  v5[4] = self;
  [v3 registerReminderChangeNotificationsForAccount:v4 withChangedBlock:v5];
}

- (void)_tearDownReminderNotifications
{
  v4 = [(ASAgent *)self sharedReminderKitHelper];
  v3 = [(ASAgent *)self account];
  [v4 removeReminderChangeNotificationsForAccount:v3];
}

- (void)_setUpABNotifications
{
  v3 = +[ESLocalDBWatcher sharedDBWatcher];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_82EC;
  v4[3] = &unk_6CE80;
  v4[4] = self;
  [v3 registerConcernedABParty:self withChangedBlock:v4];
}

- (void)_tearDownABNotifications
{
  v3 = +[ESLocalDBWatcher sharedDBWatcher];
  [v3 removeConcernedABParty:self];
}

- (void)_setUpNotesNotifications
{
  v3 = +[ESLocalDBWatcher sharedDBWatcher];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_8460;
  v4[3] = &unk_6CE80;
  v4[4] = self;
  [v3 registerConcernedNoteParty:self withChangedBlock:v4];
}

- (void)_tearDownNotesNotifications
{
  v3 = +[ESLocalDBWatcher sharedDBWatcher];
  [v3 removeConcernedNoteParty:self];
}

- (void)_verifySearchStore
{
  v3 = [(ASAgent *)self account];
  v4 = [v3 enabledForDADataclass:8];

  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  v7 = os_log_type_enabled(v5, v6);
  if (v4)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, v6, "Verifying search store is present", buf, 2u);
    }

    v8 = [(ASAgent *)self account];
    v9 = [v8 enabledForDADataclass:2];

    if (v9)
    {
      v34 = 1;
      goto LABEL_12;
    }

    v5 = DALoggingwithCategory();
    if (os_log_type_enabled(v5, v6))
    {
      *v37 = 0;
      v10 = "Account not enabled for contacts, marking search store as disabled";
      v11 = v37;
      goto LABEL_10;
    }
  }

  else if (v7)
  {
    v36 = 0;
    v10 = "Account not enabled for contacts search, so whacking the search store";
    v11 = &v36;
LABEL_10:
    _os_log_impl(&dword_0, v5, v6, v10, v11, 2u);
  }

  v34 = v4 ^ 1;

LABEL_12:
  v12 = &PLLogRegisteredEvent_ptr;
  v13 = +[ASLocalDBHelper sharedInstance];
  v14 = [(ASAgent *)self account];
  v15 = [v14 changeTrackingID];
  [v13 abOpenDBWithClientIdentifier:v15];

  v16 = +[ASLocalDBHelper sharedInstance];
  v17 = [v16 abDB];

  v18 = [(ASAgent *)self account];
  v19 = 1;
  v20 = [v18 _copyABAccount:1];

  v21 = ABAddressBookCopyArrayOfAllSourcesInAccount();
  if ([v21 count])
  {
    v33 = v20;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    do
    {
      v25 = [v21 objectAtIndexedSubscript:{v24, v33}];

      v26 = ABRecordCopyValue(v25, kABSourceTypeProperty);
      if ([v26 intValue] == 16777217)
      {
        if (v23)
        {
          v27 = DALoggingwithCategory();
          if (os_log_type_enabled(v27, v6))
          {
            *v35 = 0;
            _os_log_impl(&dword_0, v27, v6, "Found an extra search store.  Toss it", v35, 2u);
          }

          ABAddressBookRemoveRecord(v17, v25, 0);
          v22 = 1;
        }

        else
        {
          v23 = CFRetain(v25);
        }
      }

      ++v24;
    }

    while (v24 < [v21 count]);
    v19 = v23 == 0;
    if (v23)
    {
      v28 = v4;
    }

    else
    {
      v28 = 1;
    }

    if ((v28 & 1) == 0)
    {
      ABAddressBookRemoveRecord(v17, v23, 0);
      v22 = 1;
      v12 = &PLLogRegisteredEvent_ptr;
      v20 = v33;
      goto LABEL_39;
    }

    v12 = &PLLogRegisteredEvent_ptr;
    v20 = v33;
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  if ((v4 & v19) == 1)
  {
    v23 = ABSourceCreate();
    ABRecordSetValue(v23, kABSourceTypeProperty, &off_6E450, 0);
    ABAddressBookSetAccountForSource();
    ABRecordSetValue(v23, kABSourceEnabledProperty, [NSNumber numberWithBool:v34], 0);
    ABAddressBookAddRecord(v17, v23, 0);
    v22 = 1;
    goto LABEL_30;
  }

  if (((v19 | v4 ^ 1) & 1) == 0)
  {
    v30 = kABSourceEnabledProperty;
    v31 = ABRecordCopyValue(v23, kABSourceEnabledProperty);
    v32 = v31;
    if (v31)
    {
      if (v34 == [v31 BOOLValue])
      {
LABEL_38:

LABEL_39:
        CFRelease(v23);
        if (!v20)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }
    }

    else if (v34)
    {
      goto LABEL_38;
    }

    ABRecordSetValue(v23, v30, [NSNumber numberWithBool:?], 0);
    v22 = 1;
    goto LABEL_38;
  }

LABEL_30:
  if (v23)
  {
    goto LABEL_39;
  }

  if (v20)
  {
LABEL_32:
    CFRelease(v20);
  }

LABEL_33:
  v29 = [v12[390] sharedInstance];
  [v29 abCloseDBAndSave:v22 & 1];
}

- (void)startMonitoring
{
  [(ASAgent *)self setIsMonitoring:1];
  v36 = self;
  objc_initWeak(&location, self);
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_8FD0;
  v41[3] = &unk_6CEA8;
  objc_copyWeak(&v42, &location);
  [(ASAgent *)self observeReachabilityWithBlock:v41];
  [(ASAgent *)self _verifySearchStore];
  [(ASAgent *)self refreshFolderListRequireChangedFolders:0 isUserRequested:0];
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = [(ASAgent *)self account];
  [v3 addObserver:self selector:"folderHierarchyUpdateNotification:" name:DAAccountFolderHierarchyNeedsUpdateNotification object:v4];

  v5 = +[NSNotificationCenter defaultCenter];
  v6 = [(ASAgent *)self account];
  [v5 addObserver:self selector:"folderHierarchyUpdateRequireChangedFoldersNotification:" name:DAAccountFolderHierarchyNeedsUpdateRequireChangedFoldersNotification object:v6];

  v7 = +[NSNotificationCenter defaultCenter];
  v8 = [(ASAgent *)self account];
  [v7 addObserver:self selector:"folderContentsUpdate:" name:DAAccountFolderContentsChangedNotification object:v8];

  v9 = [(ASAgent *)self account];
  LODWORD(v8) = [v9 enabledForDADataclass:2];

  if (v8)
  {
    [(ASAgent *)self _setUpABNotifications];
  }

  v10 = [(ASAgent *)self account];
  v11 = [v10 enabledForDADataclass:4];

  if (v11)
  {
    [(ASAgent *)self _setUpCalNotifications];
  }

  v12 = [(ASAgent *)self account];
  v13 = [v12 enabledForDADataclass:16];

  if (v13)
  {
    [(ASAgent *)self _setUpReminderNotifications];
  }

  v14 = [(ASAgent *)self account];
  v15 = [v14 enabledForDADataclass:32];

  if (v15)
  {
    [(ASAgent *)self _setUpNotesNotifications];
  }

  v16 = [(ASAgent *)self account];
  v34 = [v16 folderIdsForPersistentPush];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v17 = [v34 allKeys];
  v18 = [v17 countByEnumeratingWithState:&v37 objects:v48 count:16];
  if (v18)
  {
    v19 = *v38;
    v20 = _CPLog_to_os_log_type[6];
    obj = v17;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v37 + 1) + 8 * i);
        v23 = [(ASAgent *)v36 account];
        v24 = [v23 folderIdsForPersistentPushForDataclasses:1 clientID:v22];

        if (![v24 count])
        {
          v30 = DALoggingwithCategory();
          if (os_log_type_enabled(v30, v20))
          {
            *buf = 138412290;
            v45 = v22;
            _os_log_impl(&dword_0, v30, v20, "No mail folders to monitor for client: %@", buf, 0xCu);
          }

          goto LABEL_21;
        }

        v25 = DALoggingwithCategory();
        if (os_log_type_enabled(v25, v20))
        {
          v26 = [v24 count];
          *buf = 134218242;
          v45 = v26;
          v46 = 2112;
          v47 = v22;
          _os_log_impl(&dword_0, v25, v20, "Start monitoring %lu mail folders for client: %@", buf, 0x16u);
        }

        v27 = [(ASAgent *)v36 account];
        v28 = [v24 allObjects];
        v29 = [v27 monitorFoldersWithIDs:v28];

        if (v29)
        {
          v30 = +[ESDAccessManager sharedManager];
          v31 = [(ASAgent *)v36 account];
          v32 = [v31 accountID];
          v33 = [v24 allObjects];
          [v30 addPersistentClientWithAccountID:v32 clientID:v22 watchedIDs:v33];

LABEL_21:
        }
      }

      v17 = obj;
      v18 = [obj countByEnumeratingWithState:&v37 objects:v48 count:16];
    }

    while (v18);
  }

  objc_destroyWeak(&v42);
  objc_destroyWeak(&location);
}

- (void)requestAgentStopMonitoringWithCompletionBlock:(id)a3
{
  self->_isShuttingDown = 1;
  v10 = a3;
  [(ASAgent *)self setIsMonitoring:0];
  [(ASAgent *)self stopObservingReachability];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  [(ASAgent *)self _tearDownABNotifications];
  [(ASAgent *)self _tearDownCalNotifications];
  [(ASAgent *)self _tearDownReminderNotifications];
  [(ASAgent *)self _tearDownNotesNotifications];
  [(NSLock *)self->_folderItemSyncRequestLock lock];
  [(NSMutableArray *)self->_outstandingFolderRequests removeAllObjects];
  [(NSLock *)self->_folderItemSyncRequestLock unlock];
  v5 = [(ASAgent *)self account];
  v6 = [v5 existingTaskManager];
  [v6 shutdown];

  v7 = +[DALocalDBGateKeeper sharedGateKeeper];
  v8 = [(ASAgent *)self account];
  [v7 unregisterWaiterForDataclassLocks:v8];

  v9 = +[DALocalDBGateKeeper sharedGateKeeper];
  [v9 unregisterWaiterForDataclassLocks:self];

  v10[2](v10, self);
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
    v5 = [v3 substringToIndex:v4];
  }

  v6 = v5;

  return v6;
}

- (id)_exchangeIdForLocalId:(id)a3 inContainer:(void *)a4 dataclass:(int64_t)a5 redirectToParent:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = 0;
  if (a5 > 15)
  {
    if (a5 == 16)
    {
      v25 = +[ASLocalDBHelper sharedInstance];
      v26 = [(ASAgent *)self account];
      v27 = [v26 accountID];
      [v25 calDatabaseForAccountID:v27];
      [v9 intValue];
      v28 = CalDatabaseCopyCalendarItemWithRowID();

      if (v28)
      {
        v10 = CalCalendarItemCopyExternalID();
        CFRelease(v28);
        goto LABEL_19;
      }
    }

    else
    {
      if (a5 != 32)
      {
        goto LABEL_19;
      }

      v16 = [NSSet alloc];
      v17 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v9 intValue]);
      v18 = [v16 initWithObjects:{v17, 0}];

      v19 = +[ASLocalDBHelper sharedInstance];
      v20 = [v19 noteDB];
      v21 = [v20 notesForIntegerIds:v18];

      if ([v21 count])
      {
        v22 = [v21 objectAtIndexedSubscript:0];
        v10 = [v22 serverId];

        goto LABEL_19;
      }
    }

    goto LABEL_16;
  }

  if (a5 == 2)
  {
    v23 = +[ASLocalDBHelper sharedInstance];
    PersonWithRecordID = ABAddressBookGetPersonWithRecordID([v23 abDB], objc_msgSend(v9, "intValue"));

    if (PersonWithRecordID)
    {
      v10 = ABRecordCopyValue(PersonWithRecordID, kABPersonExternalIdentifierProperty);
      goto LABEL_19;
    }

LABEL_16:
    v10 = 0;
    goto LABEL_19;
  }

  if (a5 == 4)
  {
    v11 = +[ASLocalDBHelper sharedInstance];
    v12 = [(ASAgent *)self account];
    v13 = [v12 accountID];
    [v11 calDatabaseForAccountID:v13];
    [v9 intValue];
    v10 = CalDatabaseCopyCalendarItemWithRowID();

    if (v10)
    {
      v14 = CalCalendarItemCopyExternalID();
      CFRelease(v10);
      if (v6)
      {
        v15 = [(ASAgent *)self _parentIdFromEventId:v14];
      }

      else
      {
        v15 = v14;
      }

      v10 = v15;
    }
  }

LABEL_19:

  return v10;
}

- (id)_localIdForExchangeId:(id)a3 inContainer:(void *)a4 dataclass:(int64_t)a5
{
  v8 = a3;
  switch(a5)
  {
    case 32:
      v17 = [[NSSet alloc] initWithObjects:{v8, 0}];
      v18 = [a4 notesForServerIds:v17];
      if ([v18 count])
      {
        v19 = [v18 objectAtIndexedSubscript:0];
        v20 = [v19 integerId];
        v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d", [v20 intValue]);
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_15;
    case 4:
      v13 = +[ASLocalDBHelper sharedInstance];
      v14 = [(ASAgent *)self account];
      v15 = [v14 accountID];
      [v13 calDatabaseForAccountID:v15];
      v16 = CalDatabaseCopyEventWithExternalIDInCalendar();

      if (v16)
      {
        v12 = [NSString stringWithFormat:@"%d", CalCalendarItemGetRowID()];
        CFRelease(v16);
        goto LABEL_15;
      }

      break;
    case 2:
      v9 = +[ASLocalDBHelper sharedInstance];
      [v9 abDB];
      v10 = ABAddressBookCopyArrayOfAllPeopleWithExternalIdentifierInSource();

      if ([v10 count])
      {
        v11 = [v10 objectAtIndexedSubscript:0];

        v12 = [NSString stringWithFormat:@"%d", ABRecordGetRecordID(v11)];
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_15;
  }

  v12 = 0;
LABEL_15:

  return v12;
}

- (id)_syncKeyForFolderWithId:(id)a3
{
  v4 = a3;
  v5 = [(ASAgent *)self account];
  v6 = [v5 folderWithId:v4];

  if (v6)
  {
    v7 = -[ASAgent _syncKeyForFolderWithId:dataclass:](self, "_syncKeyForFolderWithId:dataclass:", v4, [v6 dataclass]);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_syncKeyForFolderWithId:(id)a3 dataclass:(int64_t)a4
{
  v6 = a3;
  v7 = 0;
  if (a4 > 15)
  {
    if (a4 == 16)
    {
      v12 = [(ASAgent *)self sharedReminderKitHelper];
      v13 = [(ASAgent *)self account];
      v7 = [v12 syncKeyForFolderWithId:v6 forAccount:v13];

      goto LABEL_20;
    }

    if (a4 != 32)
    {
      goto LABEL_20;
    }

    v10 = [(ASAgent *)self _containerForFolderWithId:v6 dataclass:32];
    v8 = v10;
    if (v10)
    {
      v7 = [v10 syncAnchor];
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_19;
  }

  if (a4 == 2)
  {
    v11 = [(ASAgent *)self _containerForFolderWithId:v6 dataclass:2];
    if (v11)
    {
      v7 = ABRecordCopyValue(v11, kABSourceExternalModificationTagProperty);
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (a4 != 4)
  {
    goto LABEL_20;
  }

  if (![(ASAgent *)self _containerForFolderWithId:v6 dataclass:4])
  {
    v14 = DALoggingwithCategory();
    v15 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v14, v15))
    {
      v17 = 138412290;
      v18 = v6;
      _os_log_impl(&dword_0, v14, v15, "_syncKeyForFolderWithId Calendar containing folder with folder ID %@ not found", &v17, 0xCu);
    }

LABEL_17:
    v7 = 0;
    goto LABEL_20;
  }

  v7 = CalCalendarCopyExternalModificationTag();
  v8 = DALoggingwithCategory();
  v9 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v8, v9))
  {
    v17 = 138412546;
    v18 = v7;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_0, v8, v9, "_syncKeyForFolderWithId Calendar external tag %@ for folder ID %@", &v17, 0x16u);
  }

LABEL_19:

LABEL_20:

  return v7;
}

- (void)_setSyncKey:(id)a3 forFolderWithId:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(ASAgent *)self account];
  v10 = [v9 folderWithId:v8];

  if (v10)
  {
    if ([v10 dataclass] == &dword_10)
    {
      sub_47D08(a2, self);
    }

    if ([v10 dataclass] == &dword_4)
    {
      if ([(ASAgent *)self _containerForFolderWithId:v8 dataclass:4])
      {
        CalCalendarSetExternalModificationTag();
        v11 = DALoggingwithCategory();
        v12 = _CPLog_to_os_log_type[7];
        if (os_log_type_enabled(v11, v12))
        {
          v18 = 138412546;
          v19 = v7;
          v20 = 2112;
          v21 = v8;
          v13 = "_setSyncKey Calendar external tag %@ for folder ID %@";
LABEL_18:
          _os_log_impl(&dword_0, v11, v12, v13, &v18, 0x16u);
        }
      }

      else
      {
        v11 = DALoggingwithCategory();
        v12 = _CPLog_to_os_log_type[3];
        if (os_log_type_enabled(v11, v12))
        {
          v18 = 138412546;
          v19 = v7;
          v20 = 2112;
          v21 = v8;
          v13 = "Attempted to set sync key %@ for folder with id %@.  But that events folder doesn't have a corresponding calendar";
          goto LABEL_18;
        }
      }

LABEL_19:

      goto LABEL_20;
    }

    if ([v10 dataclass] == &dword_0 + 2)
    {
      v14 = [(ASAgent *)self _containerForFolderWithId:v8 dataclass:2];
      if (!v14)
      {
        v11 = DALoggingwithCategory();
        v12 = _CPLog_to_os_log_type[3];
        if (os_log_type_enabled(v11, v12))
        {
          v18 = 138412546;
          v19 = v7;
          v20 = 2112;
          v21 = v8;
          v13 = "Attempted to set sync key %@ for folder with id %@.  But that contacts folder doesn't have a corresponding store";
          goto LABEL_18;
        }

        goto LABEL_19;
      }

      ABRecordSetValue(v14, kABSourceExternalModificationTagProperty, v7, 0);
    }

    else if ([v10 dataclass] == &stru_20)
    {
      v15 = [(ASAgent *)self _containerForFolderWithId:v8 dataclass:32];
      v11 = v15;
      if (v15)
      {
        [v15 setSyncAnchor:v7];
      }

      else
      {
        v16 = DALoggingwithCategory();
        v17 = _CPLog_to_os_log_type[3];
        if (os_log_type_enabled(v16, v17))
        {
          v18 = 138412546;
          v19 = v7;
          v20 = 2112;
          v21 = v8;
          _os_log_impl(&dword_0, v16, v17, "Attempted to set sync key %@ for folder with id %@.  But that notes folder doesn't have a corresponding store", &v18, 0x16u);
        }
      }

      goto LABEL_19;
    }
  }

LABEL_20:
}

- (void)_updateSyncKey:(id)a3 forToDoFolderWithId:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ASAgent *)self sharedReminderKitHelper];
  v9 = [(ASAgent *)self account];
  v10 = [v8 updateSyncKey:v7 forFolderWithId:v6 forAccount:v9];

  if (v10)
  {
    v11 = [(ASAgent *)self sharedReminderKitHelper];
    [v11 commitChangesToStore];
  }
}

- (void)_syncStarted
{
  v3 = [(ASAgent *)self account];
  v2 = [v3 accountID];
  [DAStoreSyncStatusUpdater syncStartedForStoreWithExternalID:v2];
}

- (void)_syncEndedWithError:(id)a3
{
  v4 = a3;
  v6 = [(ASAgent *)self account];
  v5 = [v6 accountID];
  [DAStoreSyncStatusUpdater syncEndedForStoreWithExternalID:v5 withError:v4];
}

- (BOOL)predicateShouldContinue:(id)a3 afterFindingRecord:(void *)a4
{
  if (a4)
  {
    [(ASAgent *)self setMatchedRecord:a4];
  }

  return a4 == 0;
}

- (void)_copyExistingABRecordForContact:(id)a3 matchOnAttributes:(BOOL)a4 inStore:(void *)a5
{
  v6 = a4;
  v8 = a3;
  if (v6)
  {
    v9 = +[ASLocalDBHelper sharedInstance];
    v10 = [v9 abDB];

    v11 = objc_opt_new();
    v12 = [ABPredicate personPredicateWithGroup:0 source:a5 account:0];
    [v11 addObject:v12];
    v13 = [v8 firstName];

    if (v13)
    {
      v14 = [v8 firstName];
      v15 = [ABPredicate personPredicateWithValue:v14 comparison:0 forProperty:kABPersonFirstNameProperty];

      [v11 addObject:v15];
    }

    v16 = [v8 lastName];

    if (v16)
    {
      v17 = [v8 lastName];
      v18 = [ABPredicate personPredicateWithValue:v17 comparison:0 forProperty:kABPersonLastNameProperty];

      [v11 addObject:v18];
    }

    v19 = [v8 middleName];

    if (v19)
    {
      v20 = [v8 middleName];
      v21 = [ABPredicate personPredicateWithValue:v20 comparison:0 forProperty:kABPersonMiddleNameProperty];

      [v11 addObject:v21];
    }

    v22 = [v8 companyName];

    if (v22)
    {
      v23 = [v8 companyName];
      v24 = [ABPredicate personPredicateWithValue:v23 comparison:0 forProperty:kABPersonOrganizationProperty];

      [v11 addObject:v24];
    }

    if ([v11 count] >= 2 && (+[NSCompoundPredicate andPredicateWithSubpredicates:](NSCompoundPredicate, "andPredicateWithSubpredicates:", v11), (v25 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v26 = v25;
      [ABPredicate searchPeopleWithPredicate:v25 sortOrder:1 inAddressBook:v10 withDelegate:self];
      v27 = [(ASAgent *)self matchedRecord];
      v28 = v27;
      if (v27)
      {
        CFRetain(v27);
      }

      [(ASAgent *)self setMatchedRecord:0];
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (void)_copyExistingCalRecordForEvent:(id)a3 matchOnAttributes:(BOOL)a4 inCalendar:(void *)a5
{
  v5 = a4;
  v7 = a3;
  v8 = +[ASLocalDBHelper sharedInstance];
  v9 = [(ASAgent *)self account];
  v10 = [v9 accountID];
  [v8 calDatabaseForAccountID:v10];

  v11 = [v7 serverID];
  v12 = DALoggingwithCategory();
  v13 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v12, v13))
  {
    *buf = 138412290;
    v41 = v11;
    _os_log_impl(&dword_0, v12, v13, "Invoking CalDatabaseCopyEventWithExternalIDInCalendar with serverID: %@, instead of using UID", buf, 0xCu);
  }

  started = CalDatabaseCopyEventWithExternalIDInCalendar();
  v15 = [v7 uidForCalFramework];
  v16 = v15;
  if (!started && v15)
  {
    started = CalDatabaseCopyEventWithExternalIDInCalendar();
  }

  if (started)
  {
    goto LABEL_40;
  }

  v39 = v5;
  v17 = DALoggingwithCategory();
  if (os_log_type_enabled(v17, v13))
  {
    *buf = 138412546;
    v41 = v11;
    v42 = 2112;
    v43 = v16;
    _os_log_impl(&dword_0, v17, v13, "Did not find an event with serverID %@. Try searching with UID %@", buf, 0x16u);
  }

  v18 = CalDatabaseCopyAllEventsWithUniqueIdentifierInCalendar();
  if (!v18)
  {
    started = 0;
    goto LABEL_29;
  }

  v19 = v18;
  Count = CFArrayGetCount(v18);
  v21 = DALoggingwithCategory();
  v22 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v21, v22))
  {
    *buf = 134218242;
    v41 = Count;
    v42 = 2112;
    v43 = v16;
    _os_log_impl(&dword_0, v21, v22, "Found %ld events with the same UID %@. ", buf, 0x16u);
  }

  if (Count < 1)
  {
    goto LABEL_27;
  }

  started = 0;
  v23 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v19, v23);
    v25 = CalEventCopyExternalID();
    if (v25)
    {
      CFRelease(v25);
      v26 = DALoggingwithCategory();
      if (os_log_type_enabled(v26, v13))
      {
        *buf = 138412290;
        v41 = v16;
        v27 = v26;
        v28 = v13;
        v29 = "Found one event with UID %@. This event already has an external id. Not what we are looking for.";
LABEL_20:
        _os_log_impl(&dword_0, v27, v28, v29, buf, 0xCu);
        goto LABEL_21;
      }

      goto LABEL_21;
    }

    if (started)
    {
      break;
    }

    started = CFRetain(ValueAtIndex);
    v26 = DALoggingwithCategory();
    if (os_log_type_enabled(v26, v13))
    {
      *buf = 138412290;
      v41 = v16;
      v27 = v26;
      v28 = v13;
      v29 = "Found one event with the same UID %@ and empty server ID. Keeping it.";
      goto LABEL_20;
    }

LABEL_21:

    if (Count == ++v23)
    {
      goto LABEL_28;
    }
  }

  v30 = DALoggingwithCategory();
  if (os_log_type_enabled(v30, v13))
  {
    *buf = 138412290;
    v41 = v16;
    _os_log_impl(&dword_0, v30, v13, "Found more than one event with the same UID %@ and empty server ID. Not touching them. Creating duplicate events.", buf, 0xCu);
  }

  CFRelease(started);
LABEL_27:
  started = 0;
LABEL_28:
  CFRelease(v19);
LABEL_29:
  if (!started && v39)
  {
    v31 = [v7 subject];
    v32 = [v7 startDateForCalFramework];
    [v32 timeIntervalSinceReferenceDate];

    if (!v31)
    {
      v31 = &stru_6D4A8;
    }

    started = CalDatabaseCopyEventWithSummaryAndStartDateInCalendar();
    if (started)
    {
      v33 = CalCalendarItemCopyExternalID();
      if (v33)
      {
        v34 = [v7 serverID];
        if (v34)
        {
          v35 = v34;
          v36 = [v7 serverID];
          v37 = [v33 isEqualToString:v36];

          if ((v37 & 1) == 0)
          {
            CFRelease(started);
            started = 0;
          }
        }
      }
    }
  }

LABEL_40:

  return started;
}

- (void)_noteSyncForFolderWithId:(id)a3 andTitle:(id)a4 finishedWithSuccess:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [(ASAgent *)self folderIdToSequentialFailureCount];
    v11 = v10;
    if (v5)
    {
      [v10 removeObjectForKey:v8];

      v12 = [(ASAgent *)self folderIdToSequentialServerErrorCount];
      [v12 removeObjectForKey:v8];
    }

    else
    {
      v13 = [v10 objectForKeyedSubscript:v8];
      v14 = [v13 intValue] + 1;

      v15 = [NSNumber numberWithInt:v14];
      v16 = [(ASAgent *)self folderIdToSequentialFailureCount];
      [v16 setObject:v15 forKeyedSubscript:v8];

      v12 = DALoggingwithCategory();
      v17 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v12, v17))
      {
        v18 = 138412802;
        v19 = v8;
        v20 = 2112;
        v21 = v9;
        v22 = 1024;
        v23 = v14;
        _os_log_impl(&dword_0, v12, v17, "Folder with id %@ and title %@ has failed to sync %d time(s) in a row", &v18, 0x1Cu);
      }
    }
  }
}

- (void)_removePostponedRequestForFolderWithId:(id)a3
{
  v4 = a3;
  v5 = [(ASAgent *)self folderItemSyncRequestLock];
  [v5 lock];

  v6 = [(ASAgent *)self outstandingFolderRequests];

  if (v6)
  {
    v23 = self;
    v7 = [(ASAgent *)self outstandingFolderRequests];
    v8 = [v7 copy];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (!v10)
    {
      goto LABEL_16;
    }

    v12 = v10;
    v13 = *v25;
    v14 = _CPLog_to_os_log_type[7];
    *&v11 = 138412290;
    v22 = v11;
    while (1)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        v17 = [v16 folder];
        v18 = [v17 folderID];
        if ([v18 isEqual:v4])
        {
          v19 = [v16 containsPostponedActions];

          if (!v19)
          {
            continue;
          }

          v20 = DALoggingwithCategory();
          if (os_log_type_enabled(v20, v14))
          {
            *buf = v22;
            v29 = v16;
            _os_log_impl(&dword_0, v20, v14, "Remove a pending request since it contains postponded actions for a failed request. Removing request %@", buf, 0xCu);
          }

          v17 = [(ASAgent *)v23 outstandingFolderRequests];
          [v17 removeObject:v16];
        }

        else
        {
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
      if (!v12)
      {
LABEL_16:

        self = v23;
        break;
      }
    }
  }

  v21 = [(ASAgent *)self folderItemSyncRequestLock];
  [v21 unlock];
}

- (void)_folderItemsSyncTask:(id)a3 failedWithErrorCode:(int64_t)a4
{
  v6 = a3;
  v7 = [v6 dataclass];
  v8 = [v6 folderID];
  if (!v8)
  {
    sub_47DE8();
  }

  v9 = [(ASAgent *)self account];
  v10 = [v9 folderWithId:v8];

  v11 = [v10 folderName];
  [(ASAgent *)self _noteSyncForFolderWithId:v8 andTitle:v11 finishedWithSuccess:0];

  v12 = [(ASAgent *)self currentlySyncingFolderIds];
  [v12 removeObject:v8];

  [(ASAgent *)self _removePostponedRequestForFolderWithId:v8];
  if (a4 > 11)
  {
    if (a4 > 32)
    {
      switch(a4)
      {
        case '!':
          v18 = DALoggingwithCategory();
          v37 = _CPLog_to_os_log_type[3];
          if (!os_log_type_enabled(v18, v37))
          {
            goto LABEL_41;
          }

          *v45 = 0;
          v22 = "User is out of disk space on the Exchange server.  We should probably put up a warning for this case";
          v23 = v18;
          v24 = v37;
          v25 = 2;
LABEL_36:
          _os_log_impl(&dword_0, v23, v24, v22, v45, v25);
          goto LABEL_41;
        case '""':
          goto LABEL_22;
        case 'C':
          [(ASAgent *)self refreshFolderListRequireChangedFolders:1 isUserRequested:1];
LABEL_33:
          -[ASAgent _queueServerFailureResyncForFolderWithId:isInitialSync:](self, "_queueServerFailureResyncForFolderWithId:isInitialSync:", v8, [v6 isInitialSync]);
          goto LABEL_45;
      }
    }

    else
    {
      if (a4 == 12)
      {
        v30 = DALoggingwithCategory();
        v31 = _CPLog_to_os_log_type[6];
        if (os_log_type_enabled(v30, v31))
        {
          *v45 = 0;
          _os_log_impl(&dword_0, v30, v31, "We synced a folder that no longer exists.  Gonna update my hierarchy now", v45, 2u);
        }

        [(ASAgent *)self _updateFolderHierarchyRequireChangedFolders:1];
        goto LABEL_45;
      }

      if (a4 == 21 || a4 == 30)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_42;
  }

  if (a4 > 7)
  {
    if ((a4 - 8) < 2)
    {
      if (v7 == &dword_10)
      {
        [(ASAgent *)self _cacheFoldersForDataclasses:16];
        [(ASAgent *)self _updateSyncKey:@"0" forToDoFolderWithId:v8];
        [(ASAgent *)self _nilOutContainersForDataclasses:16];
      }

      else
      {
        v32 = [(ASAgent *)self account];
        v33 = [v32 changeTrackingID];
        v34 = [(ASAgent *)self account];
        v35 = [v34 accountID];
        v36 = [ASDataHandler newDataHandlerForDataclass:v7 container:0 changeTrackingID:v33 accountID:v35];

        [v36 openDB];
        [(ASAgent *)self _cacheFoldersForDataclasses:v7];
        [(ASAgent *)self _setSyncKey:@"0" forFolderWithId:v8];
        [(ASAgent *)self _nilOutContainersForDataclasses:v7];
        [v36 closeDBAndSave:1];
      }

      goto LABEL_33;
    }

    if (a4 == 10)
    {
LABEL_27:
      v26 = DALoggingwithCategory();
      v27 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v26, v27))
      {
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        *v45 = 138412546;
        *&v45[4] = v29;
        *&v45[12] = 2048;
        *&v45[14] = a4;
        _os_log_impl(&dword_0, v26, v27, "%@ Unrecoverable error %ld", v45, 0x16u);
      }

      goto LABEL_44;
    }

LABEL_42:
    v26 = DALoggingwithCategory();
    v41 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v26, v41))
    {
      *v45 = 134217984;
      *&v45[4] = a4;
      _os_log_impl(&dword_0, v26, v41, "Unhandled error (%ld) from Folder Items Sync Task", v45, 0xCu);
    }

LABEL_44:

    goto LABEL_45;
  }

  if (a4 != -1)
  {
    if (a4)
    {
      if (a4 == 5)
      {
        v13 = [(ASAgent *)self folderIdToSequentialServerErrorCount];
        v14 = [v13 objectForKeyedSubscript:v8];
        v15 = [v14 intValue];

        v16 = [NSNumber numberWithInt:(v15 + 1)];
        v17 = [(ASAgent *)self folderIdToSequentialServerErrorCount];
        [v17 setObject:v16 forKeyedSubscript:v8];

        if (v15 > 0)
        {
          v18 = [(ASAgent *)self folderIdToSequentialServerErrorCount];
          [v18 setObject:&off_6E468 forKeyedSubscript:v8];
LABEL_41:

          goto LABEL_45;
        }

        v43 = DALoggingwithCategory();
        v44 = _CPLog_to_os_log_type[6];
        if (os_log_type_enabled(v43, v44))
        {
          *v45 = 0;
          _os_log_impl(&dword_0, v43, v44, "Server error, retry with sync key 0", v45, 2u);
        }

        if (v10)
        {
          v18 = [[ESFolderSyncRequest alloc] initWithFolder:v10 hasRemoteChanges:0 isInitialUberSync:{objc_msgSend(v6, "isInitialSync")}];
          [v18 setIsResyncAfterServerError:1];
LABEL_40:
          [(ASAgent *)self _appendSyncRequest:v18];
          goto LABEL_41;
        }

        v18 = DALoggingwithCategory();
        v20 = _CPLog_to_os_log_type[3];
        if (!os_log_type_enabled(v18, v20))
        {
          goto LABEL_41;
        }

        *v45 = 138412290;
        *&v45[4] = v8;
        v22 = "Can't queue a retry sync, as we no longer have a folder with id %@";
LABEL_25:
        v23 = v18;
        v24 = v20;
        v25 = 12;
        goto LABEL_36;
      }

      goto LABEL_42;
    }

LABEL_22:
    v19 = [v6 isResyncAfterConnectionFailed];
    v18 = DALoggingwithCategory();
    v20 = _CPLog_to_os_log_type[6];
    v21 = os_log_type_enabled(v18, v20);
    if (!v19)
    {
      if (v21)
      {
        *v45 = 138412290;
        *&v45[4] = v6;
        _os_log_impl(&dword_0, v18, v20, "Connection error, but this is the first failure for this task, so trying again.  Task = %@", v45, 0xCu);
      }

      v38 = [ESFolderSyncRequest alloc];
      v39 = [(ASAgent *)self account];
      v40 = [v39 folderWithId:v8];
      v18 = [v38 initWithFolder:v40 hasRemoteChanges:0 isInitialUberSync:{objc_msgSend(v6, "isInitialSync")}];

      [v18 setIsResyncAfterConnectionFailed:1];
      goto LABEL_40;
    }

    if (!v21)
    {
      goto LABEL_41;
    }

    *v45 = 138412290;
    *&v45[4] = v6;
    v22 = "Well, we tried twice, but couldn't connect to the server for this request.  Dropping this on the floor.  Task = %@";
    goto LABEL_25;
  }

LABEL_45:
  [(ASAgent *)self _fireWaitingFolderItemSyncRequests];
  v42 = +[DALocalDBGateKeeper sharedGateKeeper];
  [v42 relinquishLocksForWaiter:self dataclasses:v7 moreComing:0];
}

- (void)actionFailed:(int64_t)a3 forTask:(id)a4 error:(id)a5
{
  v8 = a4;
  v9 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ASAgent *)self _folderItemsSyncTask:v8 failedWithErrorCode:a3];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ASAgent *)self _moveItemsTask:v8 failedWithErrorCode:a3];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(ASAgent *)self _smartMailTask:v8 failedWithErrorCode:a3 error:v9];
      }
    }
  }

  v10 = DALoggingwithCategory();
  v11 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v10, v11))
  {
    v12 = 134218242;
    v13 = a3;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_0, v10, v11, "Failed: %ld, %@", &v12, 0x16u);
  }
}

- (BOOL)_detectDuplicatedEventFromExchangeEvent:(id)a3 inFolderWithId:(id)a4 isInitialSync:(BOOL)a5 eventServerIDsToDrop:(id)a6 eventServerIDSWithDroppedDeletes:(id)a7 resultingChangeActionsForServer:(id)a8 outEvent:(id *)a9 outLocalItem:(const void *)a10 outDidTouchDB:(BOOL *)a11
{
  v14 = a5;
  v17 = a3;
  v18 = a4;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = [v17 serverID];
  if (v22 && ([v20 containsObject:v22] & 1) != 0)
  {
    v23 = DALoggingwithCategory();
    v24 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v23, v24))
    {
      *buf = 138412290;
      v66 = v17;
      _os_log_impl(&dword_0, v23, v24, "Not considering event %@ for duplicates, since it's paired with a delete for an event with an identical serverid", buf, 0xCu);
    }

    v25 = 0;
LABEL_32:

    goto LABEL_33;
  }

  v61 = v22;
  v62 = v20;
  v63 = v19;
  v64 = v18;
  v26 = [(ASAgent *)self _copyExistingLocalItemForExchangeItem:v17 matchOnAttributes:0 inContainer:[(ASAgent *)self _containerForFolderWithId:v18 dataclass:4]];
  *a10 = v26;
  if (v26)
  {
    v27 = v26;
    v23 = CalCalendarItemCopyExternalID();
    if (v23)
    {
      v59 = v14;
      v28 = [v17 serverID];
      v60 = v23;
      v29 = [v23 isEqualToString:v28];

      if (v29)
      {
        v25 = 0;
      }

      else
      {
        v30 = DALoggingwithCategory();
        v31 = _CPLog_to_os_log_type[3];
        if (os_log_type_enabled(v30, v31))
        {
          *buf = 138412290;
          v66 = v17;
          _os_log_impl(&dword_0, v30, v31, "Received an add from Exchange for an event that we already knew about!  We're going to merge these events, and ignore the incoming event %@", buf, 0xCu);
        }

        v32 = [ASEvent alloc];
        v33 = [(ASAgent *)self account];
        v34 = [v32 initWithCalEvent:v27 serverID:v23 account:v33];

        v35 = [(ASAgent *)self account];
        v36 = [v34 eventByMergingInEvent:v17 account:v35];

        v37 = [v36 serverID];
        v38 = [v34 serverID];
        v39 = [v37 isEqualToString:v38];

        if (v39)
        {
          v40 = v34;
        }

        else
        {
          v40 = v17;
        }

        v58 = v40;
        if (([v58 isEqualToEvent:v36] & 1) == 0)
        {
          v41 = [[ASAction alloc] initWithItemChangeType:1 changedItem:v36 serverId:0];
          [v21 addObject:v41];
        }

        v42 = [v36 serverID];
        v43 = [v34 serverID];
        v44 = [v42 isEqualToString:v43];

        if (v44)
        {
          v45 = [v21 count];
          v46 = v36;
          if (v45 >= 1)
          {
            v47 = (v45 & 0x7FFFFFFF) + 1;
            do
            {
              v48 = [v21 objectAtIndexedSubscript:v47 - 2];
              if (![v48 itemChangeType] || objc_msgSend(v48, "itemChangeType") == &dword_0 + 1)
              {
                v49 = [v48 changedItem];
                v50 = [v49 uidForCalFramework];
                v51 = [v46 uidForCalFramework];
                v52 = [v50 isEqualToString:v51];

                if (v52)
                {
                  [v21 removeObjectAtIndex:v47 - 2];
                }
              }

              --v47;
            }

            while (v47 > 1);
          }
        }

        else
        {
          v53 = [ASAction alloc];
          v54 = [v34 serverID];
          v55 = [v53 initWithItemChangeType:2 changedItem:0 serverId:v54];

          *a11 |= [(ASAgent *)self _handleAction:v55 inFolderWithId:v64 dataclass:4 isInitialSync:v59 resultingChangeActionsForServer:v21 eventServerIDsToDrop:v63 eventServerIDSWithDroppedDeletes:v20];
          v46 = v36;
        }

        v56 = v46;
        *a9 = v46;

        v25 = 1;
      }

      v19 = v63;
      v18 = v64;
      v22 = v61;
      v20 = v62;
      v23 = v60;
    }

    else
    {
      v25 = 0;
      v22 = v61;
    }

    goto LABEL_32;
  }

  v25 = 0;
LABEL_33:

  return v25;
}

- (BOOL)_handleToDoAction:(id)a3 inFolderWithId:(id)a4 isInitialSync:(BOOL)a5 resultingChangeActionsForServer:(id)a6 eventServerIDsToDrop:(id)a7 eventServerIDSWithDroppedDeletes:(id)a8
{
  v9 = a5;
  v12 = a4;
  v13 = a6;
  v14 = a3;
  v15 = [v14 changedItem];
  v16 = [v14 itemChangeType];

  if (v16 >= 2)
  {
    if (v16 != &dword_0 + 2)
    {
      v19 = 0;
      goto LABEL_11;
    }

    v17 = [(ASAgent *)self sharedReminderKitHelper];
    v21 = [(ASAgent *)self account];
    v19 = [v17 deleteReminder:v15 forFolderWithId:v12 forAccount:v21];

LABEL_10:
    goto LABEL_11;
  }

  v17 = [(ASAgent *)self sharedReminderKitHelper];
  v18 = [(ASAgent *)self account];
  if (!v9)
  {
    v19 = [v17 addOrModifyReminder:v15 forFolderWithId:v12 forAccount:v18];

    goto LABEL_10;
  }

  v23 = 0;
  v19 = [v17 initialSyncReminder:v15 forFolderWithId:v12 forAccount:v18 resultingAction:&v23];
  v20 = v23;

  if (v20)
  {
    [v13 addObject:v20];
  }

LABEL_11:
  return v19;
}

- (BOOL)_clearChangeHistoriesWithChangeIdContext:(id)a3 dataclass:(int64_t)a4 inFolderWithId:(id)a5 pushedActions:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (v11)
  {
    v13 = [(ASAgent *)self _containerForFolderWithId:v11 dataclass:a4];
  }

  else
  {
    v13 = 0;
  }

  v14 = 0;
  if (a4 > 15)
  {
    if (a4 == 16)
    {
      v49 = [(ASAgent *)self sharedReminderKitHelper];
      v50 = [(ASAgent *)self account];
      [v49 clearReminderChangesForFolderID:v11 forAccount:v50];

      v14 = 0;
    }

    else if (a4 == 32)
    {
      v106 = v12;
      v108 = v11;
      v110 = v10;
      v25 = v10;
      v26 = +[ASLocalDBHelper sharedInstance];
      v116 = [v26 noteDB];

      v27 = v13;
      v28 = [v27 changes];
      v29 = [v28 copy];

      v30 = objc_opt_new();
      v117 = 0u;
      v118 = 0u;
      v119 = 0u;
      v120 = 0u;
      v31 = v29;
      v32 = [v31 countByEnumeratingWithState:&v117 objects:v129 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v118;
        do
        {
          for (i = 0; i != v33; i = i + 1)
          {
            if (*v118 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v117 + 1) + 8 * i);
            v37 = [v36 objectID];
            v38 = [v37 URIRepresentation];

            if (v38 && [v25 containsObject:v38])
            {
              [v30 addObject:v36];
            }
          }

          v33 = [v31 countByEnumeratingWithState:&v117 objects:v129 count:16];
        }

        while (v33);
      }

      v39 = DALoggingwithCategory();
      v40 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v39, v40))
      {
        *buf = 138412546;
        *&buf[4] = v25;
        *&buf[12] = 2112;
        *&buf[14] = v30;
        _os_log_impl(&dword_0, v39, v40, "Clearing note changes: had change URIs %@, clearing changes %@", buf, 0x16u);
      }

      v41 = [v30 count];
      v14 = v41 != 0;
      if (v41)
      {
        [v116 deleteChanges:v30];
      }

      v11 = v108;
      v10 = v110;
      v12 = v106;
    }
  }

  else if (a4 == 2)
  {
    v42 = +[ASLocalDBHelper sharedInstance];
    v105 = [v42 abDB];

    v43 = v10;
    v44 = v43;
    v14 = 0;
    v101 = v43;
    if (v43 && v13)
    {
      v45 = [v43 abPersonChangeId];
      if (v45 == -1)
      {
        v14 = 0;
      }

      else
      {
        v46 = v45;
        v47 = [(ASAgent *)self account];
        v48 = [v47 changeTrackingID];
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_19E5C;
        v133 = &unk_6CF68;
        v134 = v105;
        v135 = v48;
        v136 = v13;
        LOBYTE(v46) = sub_19BD0(v105, v13, v46, 0, v48, buf);

        v44 = v101;
        v14 = v46;
      }

      v82 = [v44 abGroupChangeId];
      if (v82 != -1)
      {
        v83 = v82;
        v84 = [(ASAgent *)self account];
        [v84 changeTrackingID];
        v86 = v85 = v44;
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_19F24;
        v133 = &unk_6CF68;
        v134 = v105;
        v135 = v86;
        v136 = v13;
        LOBYTE(v83) = sub_19BD0(v105, v13, v83, 1, v86, buf);

        v44 = v85;
        v14 = v83;
      }
    }

    if ([v12 count])
    {
      v115 = v14;
      v100 = v13;
      v104 = self;
      v112 = v10;
      Mutable = CFArrayCreateMutable(0, 0, 0);
      v125 = 0u;
      v126 = 0u;
      v127 = 0u;
      v128 = 0u;
      v107 = v12;
      v88 = v12;
      v89 = [v88 countByEnumeratingWithState:&v125 objects:v131 count:16];
      if (v89)
      {
        v90 = v89;
        v91 = *v126;
        v92 = _CPLog_to_os_log_type[7];
        do
        {
          for (j = 0; j != v90; j = j + 1)
          {
            if (*v126 != v91)
            {
              objc_enumerationMutation(v88);
            }

            v94 = *(*(&v125 + 1) + 8 * j);
            if ([v94 changeId] != -1)
            {
              v95 = DALoggingwithCategory();
              if (os_log_type_enabled(v95, v92))
              {
                v96 = [v94 changeId];
                *buf = 67109120;
                *&buf[4] = v96;
                _os_log_impl(&dword_0, v95, v92, "Clearing change index %d", buf, 8u);
              }

              CFArrayAppendValue(Mutable, [v94 changeId]);
            }
          }

          v90 = [v88 countByEnumeratingWithState:&v125 objects:v131 count:16];
        }

        while (v90);
      }

      v14 = v115;
      if (CFArrayGetCount(Mutable))
      {
        v97 = [(ASAgent *)v104 account];
        v98 = [v97 changeTrackingID];
        ABChangeHistoryClearEntityChangeTableRowIDsForClient();

        v14 = 1;
      }

      CFRelease(Mutable);
      v10 = v112;
      v12 = v107;
      v44 = v101;
    }
  }

  else if (a4 == 4)
  {
    v15 = +[ASLocalDBHelper sharedInstance];
    v16 = [(ASAgent *)self account];
    v17 = [v16 accountID];
    v18 = [v15 calDatabaseForAccountID:v17];

    v19 = v10;
    v20 = v19;
    v14 = 0;
    if (v19 && v13)
    {
      v21 = [v19 calEventChangeId];
      if (v21 == -1)
      {
        v113 = 0;
      }

      else
      {
        v22 = v21;
        v23 = [(ASAgent *)self account];
        v24 = [v23 changeTrackingID];
        v113 = sub_19FEC(v18, v13, v22, 2, v24, &stru_6CFA8);
      }

      v51 = [v20 calRecurrenceChangeId];
      if (v51 != -1)
      {
        v52 = v51;
        v53 = [(ASAgent *)self account];
        v54 = [v53 changeTrackingID];
        v113 = sub_19FEC(v18, v13, v52, 5, v54, &stru_6CFC8);
      }

      v55 = [v20 calAlarmChangeId];
      if (v55 != -1)
      {
        v56 = v55;
        v57 = [(ASAgent *)self account];
        v58 = [v57 changeTrackingID];
        v113 = sub_19FEC(v18, v13, v56, 5, v58, &stru_6CFE8);
      }

      v59 = [v20 calAttendeeChangeId];
      if (v59 != -1)
      {
        v60 = v59;
        v61 = [(ASAgent *)self account];
        v62 = [v61 changeTrackingID];
        v113 = sub_19FEC(v18, v13, v60, 5, v62, &stru_6D008);
      }

      v63 = [v20 calAttachmentChangeId];
      if (v63 != -1)
      {
        v64 = v63;
        v65 = [(ASAgent *)self account];
        v66 = [v65 changeTrackingID];
        v113 = sub_19FEC(v18, v13, v64, 11, v66, &stru_6D028);
      }

      v67 = CalCalendarCopyStore();
      v68 = [(ASAgent *)self account];
      v69 = [v68 changeTrackingID];
      [v20 highestSequenceNumber];
      CalDatabaseClearChangedObjectIDsUpToSequenceNumberForClient();

      if (v67)
      {
        CFRelease(v67);
      }

      v14 = v113;
    }

    if ([v12 count])
    {
      v102 = v20;
      v103 = self;
      v114 = v14;
      v109 = v11;
      v111 = v10;
      v70 = CFArrayCreateMutable(0, 0, 0);
      v121 = 0u;
      v122 = 0u;
      v123 = 0u;
      v124 = 0u;
      v71 = v12;
      v72 = [v71 countByEnumeratingWithState:&v121 objects:v130 count:16];
      if (v72)
      {
        v73 = v72;
        v74 = *v122;
        v75 = _CPLog_to_os_log_type[7];
        do
        {
          for (k = 0; k != v73; k = k + 1)
          {
            if (*v122 != v74)
            {
              objc_enumerationMutation(v71);
            }

            v77 = *(*(&v121 + 1) + 8 * k);
            if ([v77 changeId] != -1)
            {
              v78 = DALoggingwithCategory();
              if (os_log_type_enabled(v78, v75))
              {
                v79 = [v77 changeId];
                *buf = 67109120;
                *&buf[4] = v79;
                _os_log_impl(&dword_0, v78, v75, "Clearing change index %d", buf, 8u);
              }

              CFArrayAppendValue(v70, [v77 changeId]);
            }
          }

          v73 = [v71 countByEnumeratingWithState:&v121 objects:v130 count:16];
        }

        while (v73);
      }

      v14 = v114;
      if (CFArrayGetCount(v70))
      {
        v80 = [(ASAgent *)v103 account];
        v81 = [v80 changeTrackingID];
        CalDatabaseClearIndividualChangeRowIDsForClient();

        v14 = 1;
      }

      CFRelease(v70);
      v11 = v109;
      v10 = v111;
      v20 = v102;
    }
  }

  return v14;
}

- (id)_powerLogInfoDictionary
{
  v3 = objc_opt_new();
  v4 = [(ASAgent *)self account];
  v5 = [v4 accountID];

  if (v5)
  {
    v6 = [(ASAgent *)self account];
    v7 = [v6 accountID];
    [v3 setObject:v7 forKeyedSubscript:kDAPowerLogSyncAccountID];
  }

  v8 = [(ASAgent *)self account];
  v9 = [v8 accountDescription];

  if (v9)
  {
    v10 = [(ASAgent *)self account];
    v11 = [v10 accountDescription];
    [v3 setObject:v11 forKeyedSubscript:kDAPowerLogSyncAccountName];
  }

  v12 = [(ASAgent *)self account];
  v13 = objc_opt_class();

  if (v13)
  {
    v14 = [(ASAgent *)self account];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v3 setObject:v16 forKeyedSubscript:kDAPowerLogSyncAccountClass];
  }

  return v3;
}

- (void)_syncResultForFolder:(id)a3 newTag:(id)a4 previousTag:(id)a5 actions:(id)a6 results:(id)a7 changeIdContext:(id)a8 isInitialSync:(BOOL)a9 moreAvailable:(BOOL)a10 dataclass:(int64_t)a11 resultingChangeActionsForServer:(id)a12 pushedActions:(id)a13 rejectedServerIds:(id)a14 eventsWithPendingInvitationEmails:(id)a15
{
  v198 = a3;
  v196 = a4;
  v194 = a5;
  v203 = a6;
  v21 = a7;
  v195 = a8;
  v214 = a12;
  v22 = self;
  v197 = a13;
  v193 = a14;
  v206 = a15;
  if (a11 == 16)
  {
    sub_47EC0();
  }

  v23 = [(ASAgent *)self account];
  v24 = [v23 changeTrackingID];
  v25 = [(ASAgent *)self account];
  v26 = [v25 accountID];
  v27 = [ASDataHandler newDataHandlerForDataclass:a11 container:0 changeTrackingID:v24 accountID:v26];

  [v27 openDB];
  [(ASAgent *)self _cacheFoldersForDataclasses:a11];
  v28 = v198;
  [v27 setContainer:{-[ASAgent _containerForFolderWithId:dataclass:](self, "_containerForFolderWithId:dataclass:", v198, a11)}];
  v210 = self;
  v213 = v27;
  if (a9 && (!v194 || [v194 isEqualToString:@"0"]))
  {
    [v27 drainContainer];
    [(ASAgent *)self _nilOutContainersForDataclasses:a11];
    [(ASAgent *)self _cacheFoldersForDataclasses:a11];
    v29 = [(ASAgent *)self _containerForFolderWithId:v198 dataclass:a11];
    if (v29)
    {
      [v27 setContainer:v29];
    }

    else
    {
      v31 = DALoggingwithCategory();
      v32 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v31, v32))
      {
        *buf = 138412546;
        v278 = v198;
        v279 = 2048;
        v280 = a11;
        _os_log_impl(&dword_0, v31, v32, "After draining the container with id %@ and dataclass %lx, that container disappeared", buf, 0x16u);
      }
    }

    v261 = 0u;
    v262 = 0u;
    v259 = 0u;
    v260 = 0u;
    v33 = v203;
    v34 = [v33 countByEnumeratingWithState:&v259 objects:v276 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = 0;
      v37 = *v260;
      do
      {
        for (i = 0; i != v35; i = i + 1)
        {
          if (*v260 != v37)
          {
            objc_enumerationMutation(v33);
          }

          v39 = *(*(&v259 + 1) + 8 * i);
          if ([v39 itemChangeType] == &dword_4)
          {
            v40 = [v39 changedItem];
            v41 = [(ASAgent *)v210 account];
            v36 = 1;
            [v40 saveWithLocalObject:0 toContainer:v29 shouldMergeProperties:1 outMergeDidChooseLocalProperties:0 account:v41];
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v259 objects:v276 count:16];
      }

      while (v35);

      if (v36)
      {
        [v213 saveContainer];
      }

      v30 = 1;
      v22 = v210;
    }

    else
    {

      v30 = 1;
    }
  }

  else
  {
    v30 = 0;
  }

  v257 = 0u;
  v258 = 0u;
  v255 = 0u;
  v256 = 0u;
  obj = v21;
  v42 = [obj countByEnumeratingWithState:&v255 objects:v275 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v256;
    do
    {
      for (j = 0; j != v43; j = j + 1)
      {
        if (*v256 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v46 = *(*(&v255 + 1) + 8 * j);
        v47 = [v46 changedItem];
        v48 = [v46 itemChangeType];
        if (v48 == &dword_0 + 1)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v51 = [(ASAgent *)v22 account];
            v52 = [v51 accountID];
            [v47 updateAttachmentsForAccountID:v52];
          }
        }

        else if (!v48)
        {
          v49 = [v47 clientID];
          v50 = [v213 copyLocalObjectFromId:{objc_msgSend(v49, "intValue")}];

          if (v50)
          {
            [v47 setLocalItem:v50];
            [v47 saveServerIDToExistingItem];
            CFRelease(v50);
            v30 = 1;
          }
        }
      }

      v43 = [obj countByEnumeratingWithState:&v255 objects:v275 count:16];
    }

    while (v43);
  }

  if (v30)
  {
    [v213 saveContainer];
  }

  v53 = &PLLogRegisteredEvent_ptr;
  v54 = a11;
  v55 = a9;
  if (a11 == 4)
  {
    v56 = [(ASAgent *)v22 account];
    v57 = [v56 protocol];
    v58 = [v57 sendEmailForMeetingInvitationAndResponse];

    if (!v58)
    {
      goto LABEL_59;
    }

    v253 = 0u;
    v254 = 0u;
    v251 = 0u;
    v252 = 0u;
    v59 = v197;
    v60 = [v59 countByEnumeratingWithState:&v251 objects:v274 count:16];
    if (!v60)
    {
      goto LABEL_58;
    }

    v61 = v60;
    v62 = *v252;
    while (1)
    {
      for (k = 0; k != v61; k = k + 1)
      {
        if (*v252 != v62)
        {
          objc_enumerationMutation(v59);
        }

        v64 = *(*(&v251 + 1) + 8 * k);
        v65 = [v64 itemChangeType];
        if (v65 >= 2)
        {
          if (v65 != &dword_8)
          {
            continue;
          }

          v66 = [v64 changedItem];
        }

        else
        {
          v66 = [v64 changedItem];
          v67 = [(ASAgent *)v22 account];
          if (([v66 cachedOrganizerIsSelfWithAccount:v67] & 1) == 0)
          {

            goto LABEL_55;
          }

          v68 = [v66 attendees];
          v69 = [v68 count];

          if (!v69)
          {
            goto LABEL_55;
          }
        }

        [v206 addObject:v66];
LABEL_55:
      }

      v61 = [v59 countByEnumeratingWithState:&v251 objects:v274 count:16];
      if (!v61)
      {
LABEL_58:

LABEL_59:
        v70 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v203, "count")}];
        v71 = objc_opt_new();
        v199 = objc_opt_new();
        v247 = 0u;
        v248 = 0u;
        v249 = 0u;
        v250 = 0u;
        v72 = v71;
        v73 = v203;
        v74 = [v73 countByEnumeratingWithState:&v247 objects:v273 count:16];
        v211 = v70;
        v200 = v71;
        if (!v74)
        {
          goto LABEL_89;
        }

        v75 = v74;
        v76 = *v248;
        v204 = v73;
        v201 = *v248;
LABEL_61:
        v77 = 0;
        v208 = v75;
LABEL_62:
        if (*v248 != v76)
        {
          objc_enumerationMutation(v73);
        }

        v78 = *(*(&v247 + 1) + 8 * v77);
        if ([v78 itemChangeType] && objc_msgSend(v78, "itemChangeType") != &dword_0 + 1)
        {
          [v72 addObject:v78];
        }

        else
        {
          v79 = [v78 changedItem];
          v80 = [v79 serverID];
          if (v80)
          {
            v81 = [v70 objectForKeyedSubscript:v80];
            v82 = v81;
            if (v81)
            {
              v83 = [v81 changedItem];
              if (![v82 itemChangeType] && objc_msgSend(v78, "itemChangeType") == &dword_0 + 1)
              {
                v84 = v79;
                v85 = [(ASAgent *)v210 account];
                v86 = v84;
                v87 = v83;
                goto LABEL_81;
              }

              if ([v82 itemChangeType] == &dword_0 + 1 && !objc_msgSend(v78, "itemChangeType"))
              {
                v84 = v83;
                v85 = [(ASAgent *)v210 account];
                v86 = v84;
                v87 = v79;
LABEL_81:
                v89 = [v86 eventByMergingInLosingEvent:v87 account:v85];

                v94 = &dword_0 + 1;
              }

              else
              {
                v88 = [(ASAgent *)v210 account];
                v89 = [v83 eventByMergingInEvent:v79 account:v88];

                v90 = [v89 serverID];
                v91 = [v83 serverID];
                v92 = [v90 isEqualToString:v91];

                if (v92)
                {
                  v84 = v83;
                  v93 = v82;
                }

                else
                {
                  v84 = v79;
                  v93 = v78;
                }

                v94 = [v93 itemChangeType];
                v70 = v211;
                v72 = v200;
              }

              v95 = [[ASAction alloc] initWithItemChangeType:v94 changedItem:v89 serverId:0];
              [v70 setObject:v95 forKeyedSubscript:v80];
              if (([v84 isEqualToEvent:v89] & 1) == 0)
              {
                [v199 addObject:v80];
              }

              v22 = v210;
              v73 = v204;
              v76 = v201;
            }

            else
            {
              [v70 setObject:v78 forKeyedSubscript:v80];
            }

            v75 = v208;
          }

          else
          {
            [v72 addObject:v78];
          }
        }

        if (v75 == ++v77)
        {
          v75 = [v73 countByEnumeratingWithState:&v247 objects:v273 count:16];
          if (!v75)
          {
LABEL_89:

            v96 = DALoggingwithCategory();
            v97 = _CPLog_to_os_log_type[7];
            if (os_log_type_enabled(v96, v97))
            {
              v98 = [v70 allValues];
              *buf = 138412546;
              v278 = v73;
              v279 = 2112;
              v280 = v98;
              _os_log_impl(&dword_0, v96, v97, "Actions were %@, are now %@", buf, 0x16u);

              v72 = v200;
            }

            v99 = [v70 allValues];

            v203 = [v99 arrayByAddingObjectsFromArray:v72];

            v245 = 0u;
            v246 = 0u;
            v243 = 0u;
            v244 = 0u;
            v100 = v199;
            v101 = [v100 countByEnumeratingWithState:&v243 objects:v272 count:16];
            v28 = v198;
            if (v101)
            {
              v102 = v101;
              v103 = *v244;
              do
              {
                for (m = 0; m != v102; m = m + 1)
                {
                  if (*v244 != v103)
                  {
                    objc_enumerationMutation(v100);
                  }

                  v105 = *(*(&v243 + 1) + 8 * m);
                  v106 = [ASAction alloc];
                  v107 = [v70 objectForKeyedSubscript:v105];
                  v108 = [v107 changedItem];
                  v109 = [v106 initWithItemChangeType:1 changedItem:v108 serverId:v105];

                  v70 = v211;
                  [v214 addObject:v109];
                }

                v102 = [v100 countByEnumeratingWithState:&v243 objects:v272 count:16];
              }

              while (v102);
            }

            v54 = 4;
            v55 = a9;
            v53 = &PLLogRegisteredEvent_ptr;
            break;
          }

          goto LABEL_61;
        }

        goto LABEL_62;
      }
    }
  }

  v110 = v53[359];
  v212 = objc_opt_new();
  v111 = v53[359];
  v209 = objc_opt_new();
  if (v54 == 4)
  {
    v241 = 0u;
    v242 = 0u;
    v239 = 0u;
    v240 = 0u;
    v112 = v203;
    v113 = [v112 countByEnumeratingWithState:&v239 objects:v271 count:16];
    if (v113)
    {
      v114 = v113;
      v115 = *v240;
      do
      {
        for (n = 0; n != v114; n = n + 1)
        {
          if (*v240 != v115)
          {
            objc_enumerationMutation(v112);
          }

          v117 = *(*(&v239 + 1) + 8 * n);
          if (![v117 itemChangeType] || objc_msgSend(v117, "itemChangeType") == &dword_0 + 1)
          {
            v118 = [v117 changedItem];
            v119 = [v118 serverID];
            if (v119)
            {
              [v212 addObject:v119];
            }
          }
        }

        v114 = [v112 countByEnumeratingWithState:&v239 objects:v271 count:16];
      }

      while (v114);
    }
  }

  v237 = 0u;
  v238 = 0u;
  v235 = 0u;
  v236 = 0u;
  v120 = v203;
  v121 = [v120 countByEnumeratingWithState:&v235 objects:v270 count:16];
  if (v121)
  {
    v122 = v121;
    v123 = 0;
    v124 = *v236;
    do
    {
      for (ii = 0; ii != v122; ii = ii + 1)
      {
        if (*v236 != v124)
        {
          objc_enumerationMutation(v120);
        }

        v126 = *(*(&v235 + 1) + 8 * ii);
        if ([v126 itemChangeType] == &dword_0 + 2)
        {
          v123 |= [(ASAgent *)v22 _handleAction:v126 inFolderWithId:v28 dataclass:v54 isInitialSync:v55 resultingChangeActionsForServer:v214 eventServerIDsToDrop:v212 eventServerIDSWithDroppedDeletes:v209, v193];
        }
      }

      v122 = [v120 countByEnumeratingWithState:&v235 objects:v270 count:16];
    }

    while (v122);
  }

  else
  {
    v123 = 0;
  }

  v233 = 0u;
  v234 = 0u;
  v231 = 0u;
  v232 = 0u;
  v127 = v120;
  v128 = [v127 countByEnumeratingWithState:&v231 objects:v269 count:16];
  if (v128)
  {
    v129 = v128;
    v130 = 0;
    v131 = *v232;
    do
    {
      for (jj = 0; jj != v129; jj = jj + 1)
      {
        if (*v232 != v131)
        {
          objc_enumerationMutation(v127);
        }

        v133 = *(*(&v231 + 1) + 8 * jj);
        if ([v133 itemChangeType] == &dword_0 + 1)
        {
          if (v123)
          {
            [v213 saveContainer];
          }

          v123 = 0;
          v130 |= [(ASAgent *)v22 _handleAction:v133 inFolderWithId:v28 dataclass:v54 isInitialSync:a9 resultingChangeActionsForServer:v214 eventServerIDsToDrop:v212 eventServerIDSWithDroppedDeletes:v209];
        }
      }

      v129 = [v127 countByEnumeratingWithState:&v231 objects:v269 count:16];
    }

    while (v129);
  }

  else
  {
    v130 = 0;
  }

  v229 = 0u;
  v230 = 0u;
  v227 = 0u;
  v228 = 0u;
  v205 = v127;
  v134 = [v205 countByEnumeratingWithState:&v227 objects:v268 count:16];
  if (v134)
  {
    v135 = v134;
    v136 = 0;
    v137 = *v228;
    do
    {
      for (kk = 0; kk != v135; kk = kk + 1)
      {
        if (*v228 != v137)
        {
          objc_enumerationMutation(v205);
        }

        v139 = *(*(&v227 + 1) + 8 * kk);
        if ([v139 itemChangeType] != &dword_0 + 2 && objc_msgSend(v139, "itemChangeType") != &dword_0 + 1)
        {
          if ((v123 | v130))
          {
            [v213 saveContainer];
          }

          v130 = 0;
          v123 = 0;
          v136 |= [(ASAgent *)v22 _handleAction:v139 inFolderWithId:v28 dataclass:v54 isInitialSync:a9 resultingChangeActionsForServer:v214 eventServerIDsToDrop:v212 eventServerIDSWithDroppedDeletes:v209];
        }
      }

      v135 = [v205 countByEnumeratingWithState:&v227 objects:v268 count:16];
    }

    while (v135);
  }

  else
  {
    LOBYTE(v136) = 0;
  }

  v140 = v54;
  v141 = v123 | v130 | v136;
  if (v140 == 4)
  {
    v225 = 0u;
    v226 = 0u;
    v223 = 0u;
    v224 = 0u;
    v142 = v197;
    v143 = [v142 countByEnumeratingWithState:&v223 objects:v267 count:16];
    v144 = v213;
    if (v143)
    {
      v145 = v143;
      v146 = *v224;
      do
      {
        for (mm = 0; mm != v145; mm = mm + 1)
        {
          if (*v224 != v146)
          {
            objc_enumerationMutation(v142);
          }

          v148 = *(*(&v223 + 1) + 8 * mm);
          if (![v148 itemChangeType] || objc_msgSend(v148, "itemChangeType") == &dword_0 + 1)
          {
            v149 = [v148 changedItem];
            v150 = [(ASAgent *)v210 account];
            v151 = [v150 accountID];
            v152 = [v149 fillOutMissingExternalIdsForAccountID:v151];

            v144 = v213;
            v141 |= v152;
          }
        }

        v145 = [v142 countByEnumeratingWithState:&v223 objects:v267 count:16];
      }

      while (v145);
    }

    v22 = v210;
  }

  else
  {
    v144 = v213;
  }

  v153 = v206;
  if ([v206 count])
  {
    v219 = 0u;
    v220 = 0u;
    v221 = 0u;
    v222 = 0u;
    v154 = [v206 copy];
    v155 = [v154 countByEnumeratingWithState:&v219 objects:v266 count:16];
    if (!v155)
    {
      goto LABEL_188;
    }

    v156 = v155;
    v157 = *v220;
    type = _CPLog_to_os_log_type[3];
    v158 = _CPLog_to_os_log_type[7];
    while (1)
    {
      v159 = 0;
      do
      {
        if (*v220 != v157)
        {
          objc_enumerationMutation(v154);
        }

        v160 = *(*(&v219 + 1) + 8 * v159);
        v161 = [(ASAgent *)v22 account];
        if (([v160 cachedOrganizerIsSelfWithAccount:v161] & 1) == 0)
        {

LABEL_177:
          v165 = DALoggingwithCategory();
          if (os_log_type_enabled(v165, v158))
          {
            *buf = 0;
            v169 = v165;
            v170 = v158;
            v171 = "Do not send invitation email because event is not invitation from me";
            v172 = 2;
            goto LABEL_179;
          }

LABEL_180:
          v22 = v210;

          [v206 removeObject:v160];
          goto LABEL_181;
        }

        v162 = [v160 attendees];
        v163 = [v162 count];

        v144 = v213;
        if (!v163)
        {
          goto LABEL_177;
        }

        v164 = [v160 clientID];
        if (!v164)
        {
          v165 = DALoggingwithCategory();
          if (os_log_type_enabled(v165, type))
          {
            *buf = 138412290;
            v278 = v160;
            v169 = v165;
            v170 = type;
            v171 = "Do not send invitation email because event no longer exist in local DB %@";
            v172 = 12;
LABEL_179:
            _os_log_impl(&dword_0, v169, v170, v171, buf, v172);
          }

          goto LABEL_180;
        }

        v165 = v164;
        v166 = [v213 copyLocalObjectFromId:{-[NSObject intValue](v164, "intValue")}];
        if (v166)
        {
          v167 = v166;
          v168 = CalEventCopyOriginalEvent();
          if (v168)
          {
            CFRelease(v168);
            CFRelease(v167);
            goto LABEL_180;
          }

          CFRelease(v167);
        }

        v22 = v210;
LABEL_181:
        v159 = v159 + 1;
      }

      while (v156 != v159);
      v173 = [v154 countByEnumeratingWithState:&v219 objects:v266 count:16];
      v156 = v173;
      if (!v173)
      {
LABEL_188:

        v28 = v198;
        v153 = v206;
        break;
      }
    }
  }

  if ([v153 count])
  {
    v217 = 0u;
    v218 = 0u;
    v215 = 0u;
    v216 = 0u;
    v174 = v206;
    v175 = [v174 countByEnumeratingWithState:&v215 objects:v265 count:16];
    if (v175)
    {
      v176 = v175;
      v177 = *v216;
      do
      {
        for (nn = 0; nn != v176; nn = nn + 1)
        {
          if (*v216 != v177)
          {
            objc_enumerationMutation(v174);
          }

          v179 = *(*(&v215 + 1) + 8 * nn);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v180 = v144;
            v181 = [v180 getTombstoneEndTimeForEvent:v179];
            [v179 setTombstoneEndTime:v181];

            v144 = v213;
          }
        }

        v176 = [v174 countByEnumeratingWithState:&v215 objects:v265 count:16];
      }

      while (v176);
    }

    v22 = v210;
  }

  v182 = [(ASAgent *)v22 _syncKeyForFolderWithId:v28 dataclass:a11];
  if (([v182 isEqualToString:v196] & 1) == 0)
  {
    [(ASAgent *)v22 _setSyncKey:v196 forFolderWithId:v28];
    v141 = 1;
  }

  v183 = [(ASAgent *)v22 _clearChangeHistoriesWithChangeIdContext:v195 dataclass:a11 inFolderWithId:v28 pushedActions:v197];
  v184 = [(ASAgent *)v22 currentlySyncingFolderIds];
  [v184 removeObject:v28];

  if (v183 & 1) != 0 || (v141)
  {
    if ([v144 saveContainer])
    {
      [v144 drainSuperfluousChanges];
    }

    else
    {
      v185 = DALoggingwithCategory();
      v186 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v185, v186))
      {
        *buf = 134217984;
        v278 = a11;
        _os_log_impl(&dword_0, v185, v186, "Could not save local container, dataclass is %lx", buf, 0xCu);
      }
    }
  }

  if (a11 == 16 || a11 == 4)
  {
    if (PLShouldLogRegisteredEvent())
    {
      v187 = [(ASAgent *)v210 _powerLogInfoDictionary];
      v188 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v205 count]);
      v189 = kDAPowerLogNumberOfItemsChanged;
      [v187 setObject:v188 forKeyedSubscript:kDAPowerLogNumberOfItemsChanged];

      if (v198)
      {
        [v187 setObject:v198 forKeyedSubscript:kDAPowerLogContainerID];
      }

      v264[0] = kDAPowerLogSyncAccountName;
      v264[1] = kDAPowerLogSyncAccountClass;
      v264[2] = kDAPowerLogSyncAccountID;
      v264[3] = v189;
      [NSArray arrayWithObjects:v264 count:4];
      PLLogRegisteredEvent();

      v144 = v213;
    }

    if (PLShouldLogRegisteredEvent())
    {
      v190 = [(ASAgent *)v210 _powerLogInfoDictionary];
      v191 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v197 count]);
      v192 = kDAPowerLogNumberOfItemsChanged;
      [v190 setObject:v191 forKeyedSubscript:kDAPowerLogNumberOfItemsChanged];

      if (v198)
      {
        [v190 setObject:v198 forKeyedSubscript:kDAPowerLogContainerID];
      }

      v263[0] = kDAPowerLogSyncAccountName;
      v263[1] = kDAPowerLogSyncAccountClass;
      v263[2] = kDAPowerLogSyncAccountID;
      v263[3] = v192;
      [NSArray arrayWithObjects:v263 count:4];
      PLLogRegisteredEvent();

      v144 = v213;
    }
  }

  [(ASAgent *)v210 _nilOutContainersForDataclasses:a11];
  [v144 closeDBAndSave:0];
}

- (BOOL)_syncResultForToDoFolder:(id)a3 newTag:(id)a4 previousTag:(id)a5 actions:(id)a6 results:(id)a7 changeIdContext:(id)a8 isInitialSync:(BOOL)a9 moreAvailable:(BOOL)a10 resultingChangeActionsForServer:(id)a11 pushedActions:(id)a12 rejectedServerIds:(id)a13 eventsWithPendingInvitationEmails:(id)a14
{
  v83 = a3;
  v80 = a4;
  v77 = a5;
  obj = a6;
  v20 = a7;
  v79 = a8;
  v89 = a11;
  v82 = a12;
  [(ASAgent *)self _cacheFoldersForDataclasses:16];
  if (a9 && (!v77 || [v77 isEqualToString:@"0"]))
  {
    [(ASAgent *)self _nilOutContainersForDataclasses:16, v77];
    [(ASAgent *)self _cacheFoldersForDataclasses:16];
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v21 = v20;
  v22 = [v21 countByEnumeratingWithState:&v103 objects:v114 count:16];
  if (v22)
  {
    v23 = v22;
    v86 = 0;
    v24 = *v104;
    v25 = v83;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v104 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v27 = *(*(&v103 + 1) + 8 * i);
        v28 = [v27 changedItem];
        if (![v27 itemChangeType])
        {
          v29 = [(ASAgent *)self sharedReminderKitHelper];
          v30 = [(ASAgent *)self account];
          v31 = [v29 updateExtenalIDForReminder:v28 forFolderWithId:v83 forAccount:v30];

          v86 |= v31;
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v103 objects:v114 count:16];
    }

    while (v23);
  }

  else
  {
    v86 = 0;
    v25 = v83;
  }

  v81 = v21;

  v88 = objc_opt_new();
  v87 = objc_opt_new();
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v32 = obj;
  v33 = [v32 countByEnumeratingWithState:&v99 objects:v113 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = 0;
    v36 = *v100;
    do
    {
      for (j = 0; j != v34; j = j + 1)
      {
        if (*v100 != v36)
        {
          objc_enumerationMutation(v32);
        }

        v38 = *(*(&v99 + 1) + 8 * j);
        if ([v38 itemChangeType] == &dword_0 + 2)
        {
          v35 |= [(ASAgent *)self _handleToDoAction:v38 inFolderWithId:v25 isInitialSync:a9 resultingChangeActionsForServer:v89 eventServerIDsToDrop:v88 eventServerIDSWithDroppedDeletes:v87];
        }
      }

      v34 = [v32 countByEnumeratingWithState:&v99 objects:v113 count:16];
    }

    while (v34);
  }

  else
  {
    v35 = 0;
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v39 = v32;
  v40 = [v39 countByEnumeratingWithState:&v95 objects:v112 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = 0;
    v43 = *v96;
    v44 = 1;
    do
    {
      for (k = 0; k != v41; k = k + 1)
      {
        if (*v96 != v43)
        {
          objc_enumerationMutation(v39);
        }

        v46 = *(*(&v95 + 1) + 8 * k);
        if ([v46 itemChangeType] == &dword_0 + 1)
        {
          if (v35)
          {
            v47 = [(ASAgent *)self sharedReminderKitHelper];
            [v47 commitChangesToStore];
          }

          v48 = [(ASAgent *)self _handleToDoAction:v46 inFolderWithId:v83 isInitialSync:a9 resultingChangeActionsForServer:v89 eventServerIDsToDrop:v88 eventServerIDSWithDroppedDeletes:v87];
          v35 = 0;
          v44 &= v48 | !a9;
          v42 |= v48;
        }
      }

      v41 = [v39 countByEnumeratingWithState:&v95 objects:v112 count:16];
    }

    while (v41);
  }

  else
  {
    v42 = 0;
    v44 = 1;
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  obja = v39;
  v49 = [obja countByEnumeratingWithState:&v91 objects:v111 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v92;
    v52 = v83;
    do
    {
      for (m = 0; m != v50; m = m + 1)
      {
        if (*v92 != v51)
        {
          objc_enumerationMutation(obja);
        }

        v54 = *(*(&v91 + 1) + 8 * m);
        if ([v54 itemChangeType] != &dword_0 + 2 && objc_msgSend(v54, "itemChangeType") != &dword_0 + 1)
        {
          if ((v35 | v42))
          {
            v55 = [(ASAgent *)self sharedReminderKitHelper];
            [v55 commitChangesToStore];
          }

          v56 = [(ASAgent *)self _handleToDoAction:v54 inFolderWithId:v83 isInitialSync:a9 resultingChangeActionsForServer:v89 eventServerIDsToDrop:v88 eventServerIDSWithDroppedDeletes:v87];
          v42 = 0;
          v35 = 0;
          v44 &= v56 | !a9;
          v86 |= v56;
        }
      }

      v50 = [obja countByEnumeratingWithState:&v91 objects:v111 count:16];
    }

    while (v50);
  }

  else
  {
    v52 = v83;
  }

  v57 = v35 | v42 | v86;
  v58 = v52;
  v90 = [(ASAgent *)self _syncKeyForFolderWithId:v52 dataclass:16];
  if ([v90 isEqualToString:v80])
  {
    v59 = 1;
  }

  else
  {
    v60 = [(ASAgent *)self sharedReminderKitHelper];
    v61 = [(ASAgent *)self account];
    v59 = [v60 updateSyncKey:v80 forFolderWithId:v52 forAccount:v61];

    v57 |= v59;
  }

  v62 = v81;
  v63 = [(ASAgent *)self _clearChangeHistoriesWithChangeIdContext:v79 dataclass:16 inFolderWithId:v52 pushedActions:v82, v77];
  v64 = [(ASAgent *)self currentlySyncingFolderIds];
  [v64 removeObject:v52];

  if (v63 & 1) != 0 || (v57)
  {
    v66 = [(ASAgent *)self sharedReminderKitHelper];
    v65 = [v66 commitChangesToStore];
  }

  else
  {
    v65 = 0;
  }

  if ((v44 & v59 & 1) == 0)
  {
    v67 = DALoggingwithCategory();
    v68 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v67, v68))
    {
      *buf = 138412290;
      v110 = v58;
      _os_log_impl(&dword_0, v67, v68, "Fail to save initial sync results or save sync key. Stop monitoring Reminder folder %@.", buf, 0xCu);
    }

    v69 = [(ASAgent *)self account];
    [v69 stopMonitoringFolderWithID:v58];
  }

  if (PLShouldLogRegisteredEvent())
  {
    v70 = [(ASAgent *)self _powerLogInfoDictionary];
    v71 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [obja count]);
    v72 = kDAPowerLogNumberOfItemsChanged;
    [v70 setObject:v71 forKeyedSubscript:kDAPowerLogNumberOfItemsChanged];

    if (v83)
    {
      [v70 setObject:v83 forKeyedSubscript:kDAPowerLogContainerID];
    }

    v108[0] = kDAPowerLogSyncAccountName;
    v108[1] = kDAPowerLogSyncAccountClass;
    v108[2] = kDAPowerLogSyncAccountID;
    v108[3] = v72;
    [NSArray arrayWithObjects:v108 count:4];
    PLLogRegisteredEvent();

    v62 = v81;
  }

  if (PLShouldLogRegisteredEvent())
  {
    v73 = [(ASAgent *)self _powerLogInfoDictionary];
    v74 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v82 count]);
    v75 = kDAPowerLogNumberOfItemsChanged;
    [v73 setObject:v74 forKeyedSubscript:kDAPowerLogNumberOfItemsChanged];

    if (v83)
    {
      [v73 setObject:v83 forKeyedSubscript:kDAPowerLogContainerID];
    }

    v107[0] = kDAPowerLogSyncAccountName;
    v107[1] = kDAPowerLogSyncAccountClass;
    v107[2] = kDAPowerLogSyncAccountID;
    v107[3] = v75;
    [NSArray arrayWithObjects:v107 count:4];
    PLLogRegisteredEvent();

    v62 = v81;
  }

  [(ASAgent *)self _nilOutContainersForDataclasses:16];

  return v65;
}

- (void)_finishInitialSyncForFolder:(id)a3 dataclass:(int64_t)a4
{
  v32 = a3;
  if (a4 == 16)
  {
    sub_47F2C();
  }

  v6 = [(ASAgent *)self account];
  v7 = [v6 changeTrackingID];
  v8 = [(ASAgent *)self account];
  v9 = [v8 accountID];
  v10 = [ASDataHandler newDataHandlerForDataclass:a4 container:0 changeTrackingID:v7 accountID:v9];

  [v10 openDB];
  [(ASAgent *)self _cacheFoldersForDataclasses:a4];
  v11 = [(ASAgent *)self _containerForFolderWithId:v32 dataclass:a4];
  [v10 setContainer:v11];
  v34 = v10;
  v12 = [v10 copyOfAllLocalObjectsInContainer];
  v33 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v12, "count")}];
  v31 = v12;
  v13 = [v12 objectEnumerator];
  v14 = [v13 nextObject];
  if (v14)
  {
    v15 = v14;
    v16 = &PLLogRegisteredEvent_ptr;
    v17 = @"%d";
    do
    {
      v18 = [objc_alloc(v16[423]) initWithFormat:v17, objc_msgSend(v34, "getIdFromLocalObject:", v15)];
      v19 = [(ASAgent *)self _exchangeIdForLocalId:v18 inContainer:v11 dataclass:a4 redirectToParent:1];
      if (!v19)
      {
        [(ASAgent *)self account];
        v20 = self;
        v21 = v13;
        v22 = a4;
        v23 = v17;
        v25 = v24 = v16;
        v26 = [v34 getDAObjectWithLocalItem:v15 serverId:0 account:v25];

        [v26 setLocalItem:0];
        v27 = [[ASAction alloc] initWithItemChangeType:0 changedItem:v26 serverId:0];
        [v33 addObject:v27];

        v16 = v24;
        v17 = v23;
        a4 = v22;
        v13 = v21;
        self = v20;
      }

      v15 = [v13 nextObject];
    }

    while (v15);
  }

  if ([v33 count])
  {
    v28 = [(ASAgent *)self account];
    v29 = [v28 folderWithId:v32];

    v30 = [[ESFolderSyncRequest alloc] initWithFolder:v29 hasRemoteChanges:1 isInitialUberSync:0];
    [v30 setActions:v33];
    [(ASAgent *)self _appendSyncRequest:v30];
  }

  [(ASAgent *)self _nilOutContainersForDataclasses:a4];
  [v34 closeDBAndSave:0];
}

- (void)_finishInitialSyncForToDoFolder:(id)a3
{
  v10 = a3;
  [(ASAgent *)self _cacheFoldersForDataclasses:16];
  v4 = [(ASAgent *)self sharedReminderKitHelper];
  v5 = [(ASAgent *)self account];
  v6 = [v4 localUnsyncedReminderActionsForFolderId:v10 forAccount:v5];

  if ([v6 count])
  {
    v7 = [(ASAgent *)self account];
    v8 = [v7 folderWithId:v10];

    v9 = [[ESFolderSyncRequest alloc] initWithFolder:v8 hasRemoteChanges:1 isInitialUberSync:0];
    [v9 setActions:v6];
    [(ASAgent *)self _appendSyncRequest:v9];
  }

  [(ASAgent *)self _nilOutContainersForDataclasses:16];
}

- (void)_wrapperSyncResultForFolder:(id)a3 dataclass:(int64_t)a4 newTag:(id)a5 previousTag:(id)a6 actions:(id)a7 results:(id)a8 changeIdContext:(id)a9 isInitialSync:(BOOL)a10 moreAvailable:(BOOL)a11 moreLocalChangesAvailable:(BOOL)a12 pushedActions:(id)a13 rejectedServerIds:(id)a14
{
  v18 = a3;
  v97 = a5;
  v19 = a6;
  v20 = a7;
  v21 = v18;
  v22 = v20;
  v96 = a8;
  v95 = a9;
  v23 = a13;
  v94 = a14;
  if (v19 && ([v19 isEqualToString:@"0"] & 1) == 0 && !a11)
  {
    [(ASAgent *)self _noteSyncForFolderWithId:v18 andTitle:0 finishedWithSuccess:1];
  }

  v92 = v19;
  v93 = v18;
  v98 = v23;
  if (v23)
  {
    v24 = objc_opt_new();
    v101 = objc_opt_new();
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    obj = v22;
    v25 = [obj countByEnumeratingWithState:&v119 objects:v128 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v120;
      v28 = _CPLog_to_os_log_type[3];
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v120 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v30 = *(*(&v119 + 1) + 8 * i);
          if ([v30 itemChangeType] && objc_msgSend(v30, "itemChangeType") != &dword_0 + 1)
          {
            [v101 addObject:v30];
          }

          else
          {
            v31 = [v30 changedItem];
            v32 = [v31 serverID];

            if (v32)
            {
              v33 = [v31 serverID];
              [v24 setObject:v30 forKeyedSubscript:v33];
            }

            else
            {
              v33 = DALoggingwithCategory();
              if (os_log_type_enabled(v33, v28))
              {
                *buf = 138412290;
                v127 = v30;
                _os_log_impl(&dword_0, v33, v28, "Dropping a server action without server ID %@", buf, 0xCu);
              }
            }
          }
        }

        v26 = [obj countByEnumeratingWithState:&v119 objects:v128 count:16];
      }

      while (v26);
    }

    v117 = 0u;
    v118 = 0u;
    v115 = 0u;
    v116 = 0u;
    v34 = v23;
    v35 = [v34 countByEnumeratingWithState:&v115 objects:v125 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = 0;
      v38 = *v116;
      v39 = _CPLog_to_os_log_type[6];
      v40 = _CPLog_to_os_log_type[3];
      v99 = *v116;
      do
      {
        for (j = 0; j != v36; j = j + 1)
        {
          if (*v116 != v38)
          {
            objc_enumerationMutation(v34);
          }

          v42 = *(*(&v115 + 1) + 8 * j);
          if ([v42 itemChangeType] == &dword_4 + 2)
          {
            v43 = [v42 serverId];
            v44 = [v24 objectForKeyedSubscript:v43];

            v45 = DALoggingwithCategory();
            v46 = v45;
            if (v44)
            {
              if (os_log_type_enabled(v45, v39))
              {
                *buf = 138412290;
                v127 = v44;
                _os_log_impl(&dword_0, v46, v39, "Dropping server action, because it had a belay-that-modify action associated with it.  Server action %@", buf, 0xCu);
              }

              v46 = [v42 serverId];
              [v24 removeObjectForKey:v46];
            }

            else
            {
              if (os_log_type_enabled(v45, v40))
              {
                v47 = [v42 serverId];
                *buf = 138412290;
                v127 = v47;
                _os_log_impl(&dword_0, v46, v40, "Had a belay-that-action daaction, but no corresponding server action for id %@", buf, 0xCu);
              }

              v38 = v99;
            }

            v37 = 1;
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v115 objects:v125 count:16];
      }

      while (v36);
    }

    else
    {
      v37 = 0;
    }

    v100 = v37;

    v48 = [v24 allValues];
    [v101 addObjectsFromArray:v48];

    v22 = [v101 allObjects];

    v19 = v92;
    v21 = v93;
    v23 = v98;
  }

  else
  {
    v100 = 0;
  }

  v49 = objc_opt_new();
  v50 = objc_opt_new();
  LOWORD(v91) = __PAIR16__(a11, a10);
  obja = v22;
  [(ASAgent *)self _syncResultForFolder:v21 newTag:v97 previousTag:v19 actions:v22 results:v96 changeIdContext:v95 isInitialSync:v91 moreAvailable:a4 dataclass:v49 resultingChangeActionsForServer:v23 pushedActions:v94 rejectedServerIds:v50 eventsWithPendingInvitationEmails:?];
  v51 = [(ASAgent *)self account];
  v52 = [v51 changeTrackingID];
  v53 = [(ASAgent *)self account];
  v54 = [v53 accountID];
  v55 = [ASDataHandler newDataHandlerForDataclass:a4 container:0 changeTrackingID:v52 accountID:v54];

  [v55 openDB];
  [(ASAgent *)self _cacheFoldersForDataclasses:a4];
  v56 = [(ASAgent *)self _containerForFolderWithId:v21 dataclass:a4];
  v102 = v55;
  [v55 setContainer:v56];
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v57 = v49;
  v58 = [v57 countByEnumeratingWithState:&v111 objects:v124 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v112;
    do
    {
      for (k = 0; k != v59; k = k + 1)
      {
        if (*v112 != v60)
        {
          objc_enumerationMutation(v57);
        }

        v62 = *(*(&v111 + 1) + 8 * k);
        if ([v62 itemChangeType] != &dword_0 + 2)
        {
          v63 = [v62 changedItem];
          v64 = [v63 clientID];
          if (v64)
          {
            goto LABEL_50;
          }

          v65 = [v63 serverID];

          if (v65)
          {
            v66 = [v63 serverID];
            v64 = [(ASAgent *)self _localIdForExchangeId:v66 inContainer:v56 dataclass:a4];

            [v63 setClientID:v64];
LABEL_50:
          }

          continue;
        }
      }

      v59 = [v57 countByEnumeratingWithState:&v111 objects:v124 count:16];
    }

    while (v59);
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v67 = v50;
  v68 = [v67 countByEnumeratingWithState:&v107 objects:v123 count:16];
  if (v68)
  {
    v69 = v68;
    v70 = *v108;
    do
    {
      for (m = 0; m != v69; m = m + 1)
      {
        if (*v108 != v70)
        {
          objc_enumerationMutation(v67);
        }

        v72 = *(*(&v107 + 1) + 8 * m);
        v73 = [v72 clientID];
        if (!v73)
        {
          v74 = [v72 serverID];

          if (!v74)
          {
            goto LABEL_63;
          }

          v75 = [v72 serverID];
          v73 = [(ASAgent *)self _localIdForExchangeId:v75 inContainer:v56 dataclass:a4];

          [v72 setClientID:v73];
        }

LABEL_63:
        [v72 setLocalItem:0];
        v76 = [(ASAgent *)self account];
        [v72 loadLocalItemWithAccount:v76];
      }

      v69 = [v67 countByEnumeratingWithState:&v107 objects:v123 count:16];
    }

    while (v69);
  }

  v77 = [(ASAgent *)self account];
  v78 = [v77 sendEmailsForCalEvents:v67 consumer:self];

  [(ASAgent *)self _nilOutContainersForDataclasses:a4];
  [v102 closeDBAndSave:v78];
  if (a11 || ([v57 count] != 0) | v100 & 1)
  {
    v79 = [(ASAgent *)self account];
    v80 = [v79 folderWithId:v93];

    v81 = 1;
    v82 = [[ESFolderSyncRequest alloc] initWithFolder:v80 hasRemoteChanges:1 isInitialUberSync:a10];
    [v82 setActions:v57];
    [(ASAgent *)self _appendSyncRequest:v82];

    v83 = v98;
    v84 = obja;
  }

  else
  {
    v83 = v98;
    v84 = obja;
    if (a12)
    {
      v86 = DALoggingwithCategory();
      v87 = _CPLog_to_os_log_type[7];
      if (os_log_type_enabled(v86, v87))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v86, v87, "More local changes are available. Will issue another sync request.", buf, 2u);
      }

      v88 = [(ASAgent *)self account];
      v89 = [v88 folderWithId:v93];

      v90 = [[ESFolderSyncRequest alloc] initWithFolder:v89 hasRemoteChanges:0 isInitialUberSync:a10];
      [(ASAgent *)self _appendSyncRequest:v90];

      v81 = 1;
    }

    else
    {
      if (a10)
      {
        [(ASAgent *)self _finishInitialSyncForFolder:v93 dataclass:a4];
      }

      v81 = 0;
    }
  }

  v85 = +[DALocalDBGateKeeper sharedGateKeeper];
  [v85 relinquishLocksForWaiter:self dataclasses:a4 moreComing:v81];

  [(ASAgent *)self _fireWaitingFolderItemSyncRequests];
}

- (void)syncResultForContactsFolder:(id)a3 newTag:(id)a4 previousTag:(id)a5 newSyncToken:(id)a6 actions:(id)a7 results:(id)a8 changeIdContext:(id)a9 isInitialSync:(BOOL)a10 moreAvailable:(BOOL)a11 moreLocalChangesAvailable:(BOOL)a12 pushedActions:(id)a13
{
  *(&v13 + 1) = __PAIR16__(a12, a11);
  LOBYTE(v13) = a10;
  [ASAgent _wrapperSyncResultForFolder:"_wrapperSyncResultForFolder:dataclass:newTag:previousTag:actions:results:changeIdContext:isInitialSync:moreAvailable:moreLocalChangesAvailable:pushedActions:rejectedServerIds:" dataclass:a3 newTag:2 previousTag:a4 actions:a5 results:a7 changeIdContext:a8 isInitialSync:a9 moreAvailable:v13 moreLocalChangesAvailable:a13 pushedActions:0 rejectedServerIds:?];
}

- (void)syncResultForEventsFolder:(id)a3 newTag:(id)a4 previousTag:(id)a5 actions:(id)a6 results:(id)a7 changeIdContext:(id)a8 isInitialSync:(BOOL)a9 moreAvailable:(BOOL)a10 moreLocalChangesAvailable:(BOOL)a11 pushedActions:(id)a12 rejectedServerIds:(id)a13
{
  *(&v13 + 1) = __PAIR16__(a11, a10);
  LOBYTE(v13) = a9;
  [ASAgent _wrapperSyncResultForFolder:"_wrapperSyncResultForFolder:dataclass:newTag:previousTag:actions:results:changeIdContext:isInitialSync:moreAvailable:moreLocalChangesAvailable:pushedActions:rejectedServerIds:" dataclass:a3 newTag:4 previousTag:a4 actions:a5 results:a6 changeIdContext:a7 isInitialSync:a8 moreAvailable:v13 moreLocalChangesAvailable:a12 pushedActions:a13 rejectedServerIds:?];
}

- (void)syncResultForToDosFolder:(id)a3 newTag:(id)a4 previousTag:(id)a5 actions:(id)a6 results:(id)a7 changeIdContext:(id)a8 isInitialSync:(BOOL)a9 moreAvailable:(BOOL)a10 moreLocalChangesAvailable:(BOOL)a11 pushedActions:(id)a12 rejectedServerIds:(id)a13
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v72 = a7;
  v71 = a8;
  v22 = a12;
  v23 = v20;
  v70 = a13;
  if (v20 && ([v20 isEqualToString:@"0"] & 1) == 0 && !a10)
  {
    [(ASAgent *)self _noteSyncForFolderWithId:v18 andTitle:0 finishedWithSuccess:1];
  }

  v73 = v22;
  if (v22)
  {
    v67 = v20;
    v69 = v18;
    v24 = objc_opt_new();
    v25 = objc_opt_new();
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v26 = v21;
    v27 = v25;
    obj = v26;
    v28 = [v26 countByEnumeratingWithState:&v81 objects:v88 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v82;
      do
      {
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v82 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v81 + 1) + 8 * i);
          if ([v32 itemChangeType] && objc_msgSend(v32, "itemChangeType") != &dword_0 + 1)
          {
            [v27 addObject:v32];
          }

          else
          {
            v33 = [v32 changedItem];
            v34 = [v33 serverID];
            [v24 setObject:v32 forKeyedSubscript:v34];
          }
        }

        v29 = [obj countByEnumeratingWithState:&v81 objects:v88 count:16];
      }

      while (v29);
    }

    v66 = v27;
    v68 = v19;

    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v35 = v73;
    v36 = [v35 countByEnumeratingWithState:&v77 objects:v87 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = 0;
      v39 = *v78;
      v40 = _CPLog_to_os_log_type[6];
      v41 = _CPLog_to_os_log_type[3];
      v75 = *v78;
      do
      {
        for (j = 0; j != v37; j = j + 1)
        {
          if (*v78 != v39)
          {
            objc_enumerationMutation(v35);
          }

          v43 = *(*(&v77 + 1) + 8 * j);
          if ([v43 itemChangeType] == &dword_4 + 2)
          {
            v44 = [v43 serverId];
            v45 = [v24 objectForKeyedSubscript:v44];

            v46 = DALoggingwithCategory();
            v47 = v46;
            if (v45)
            {
              if (os_log_type_enabled(v46, v40))
              {
                *buf = 138412290;
                v86 = v45;
                _os_log_impl(&dword_0, v47, v40, "Dropping server action, because it had a belay-that-modify action associated with it.  Server action %@", buf, 0xCu);
              }

              v47 = [v43 serverId];
              [v24 removeObjectForKey:v47];
            }

            else
            {
              if (os_log_type_enabled(v46, v41))
              {
                v48 = [v43 serverId];
                *buf = 138412290;
                v86 = v48;
                _os_log_impl(&dword_0, v47, v41, "Had a belay-that-action daaction, but no corresponding server action for id %@", buf, 0xCu);
              }

              v39 = v75;
            }

            v38 = 1;
          }
        }

        v37 = [v35 countByEnumeratingWithState:&v77 objects:v87 count:16];
      }

      while (v37);
    }

    else
    {
      v38 = 0;
    }

    v49 = [v24 allValues];
    [v66 addObjectsFromArray:v49];

    v21 = [v66 allObjects];

    v19 = v68;
    v18 = v69;
    v23 = v67;
    v22 = v73;
  }

  else
  {
    v38 = 0;
  }

  v50 = objc_opt_new();
  v51 = objc_opt_new();
  LOWORD(v65) = __PAIR16__(a10, a9);
  if ([(ASAgent *)self _syncResultForToDoFolder:v18 newTag:v19 previousTag:v23 actions:v21 results:v72 changeIdContext:v71 isInitialSync:v65 moreAvailable:v50 resultingChangeActionsForServer:v22 pushedActions:v70 rejectedServerIds:v51 eventsWithPendingInvitationEmails:?])
  {
    if (a10 || ([v50 count] != 0) | v38 & 1)
    {
      v52 = self;
      v53 = [(ASAgent *)self account];
      v54 = [v53 folderWithId:v18];

      v55 = 1;
      v56 = [[ESFolderSyncRequest alloc] initWithFolder:v54 hasRemoteChanges:1 isInitialUberSync:a9];
      [v56 setActions:v50];
      [(ASAgent *)self _appendSyncRequest:v56];
    }

    else if (a11)
    {
      v60 = DALoggingwithCategory();
      v61 = _CPLog_to_os_log_type[7];
      v52 = self;
      if (os_log_type_enabled(v60, v61))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v60, v61, "More local changes are available. Will issue another sync request.", buf, 2u);
      }

      v62 = [(ASAgent *)self account];
      v63 = [v62 folderWithId:v18];

      v64 = [[ESFolderSyncRequest alloc] initWithFolder:v63 hasRemoteChanges:0 isInitialUberSync:a9];
      [(ASAgent *)self _appendSyncRequest:v64];

      v55 = 1;
    }

    else
    {
      v52 = self;
      if (a9)
      {
        [(ASAgent *)self _finishInitialSyncForToDoFolder:v18];
      }

      v55 = 0;
    }
  }

  else
  {
    v57 = DALoggingwithCategory();
    v58 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v57, v58))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v57, v58, "Do not issue subsequent sync request due to error.", buf, 2u);
    }

    v55 = 0;
    v52 = self;
  }

  v59 = +[DALocalDBGateKeeper sharedGateKeeper];
  [v59 relinquishLocksForWaiter:v52 dataclasses:16 moreComing:v55];

  [(ASAgent *)v52 _fireWaitingFolderItemSyncRequests];
}

- (void)syncResultForNotesFolder:(id)a3 noteContext:(id)a4 newTag:(id)a5 previousTag:(id)a6 actions:(id)a7 results:(id)a8 changeSet:(id)a9 notesToDeleteAfterSync:(id)a10 isInitialSync:(BOOL)a11 moreAvailable:(BOOL)a12 moreLocalChangesAvailable:(BOOL)a13
{
  *(&v13 + 1) = __PAIR16__(a13, a12);
  LOBYTE(v13) = a11;
  [ASAgent _wrapperSyncResultForFolder:"_wrapperSyncResultForFolder:dataclass:newTag:previousTag:actions:results:changeIdContext:isInitialSync:moreAvailable:moreLocalChangesAvailable:pushedActions:rejectedServerIds:" dataclass:a3 newTag:32 previousTag:a5 actions:a6 results:a7 changeIdContext:a8 isInitialSync:a9 moreAvailable:v13 moreLocalChangesAvailable:0 pushedActions:0 rejectedServerIds:?];
}

- (BOOL)_finishWithInvitationEvent:(void *)a3 eventUID:(id)a4 expectedResponse:(int)a5 wasMyInvite:(BOOL)a6 isStillInvite:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v12 = a4;
  v13 = DALoggingwithCategory();
  v14 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v13, v14))
  {
    *buf = 138413058;
    v47 = v12;
    v48 = 1024;
    v49 = a5;
    v50 = 1024;
    v51 = v8;
    v52 = 1024;
    v53 = v7;
    _os_log_impl(&dword_0, v13, v14, "_finishWithInvitationEvent, for event with UID %@ expectedResponse of %d, was my invite %d is still invite %d", buf, 0x1Eu);
  }

  if (!v7)
  {
    if ((CalEventGetExternalTrackingStatus() & 7) == 0)
    {
      v15 = 0;
      goto LABEL_45;
    }

    CalEventSetExternalTrackingStatus();
    goto LABEL_9;
  }

  if (!v8)
  {
    v16 = 7;
    if (a5 > 1)
    {
      if (a5 == 2)
      {
        v16 = 3;
      }

      else if (a5 == 3)
      {
        v16 = 2;
      }
    }

    else
    {
      if (a5 == -1)
      {
        goto LABEL_36;
      }

      if (a5 == 1)
      {
        v16 = 1;
      }
    }

    v25 = CalCalendarItemCopySelfAttendee();
    if (v25)
    {
      v26 = v25;
      PendingStatus = CalAttendeeGetPendingStatus();
      v28 = v16 == PendingStatus || PendingStatus == 7;
      v15 = v28;
      if (v28)
      {
        CalAttendeeSetPendingStatus();
        v29 = CalEventCopyResponseComment();
        CalEventSetLastSyncedResponseComment();
        if (v29)
        {
          CFRelease(v29);
        }
      }

      else
      {
        v30 = CalCalendarItemCopyCalendar();
        if (v30)
        {
          v31 = v30;
          v32 = CalCalendarCopyExternalID();
          if (v32)
          {
            v33 = [(ASAgent *)self account];
            v34 = [v33 folderWithId:v32];

            if (v34)
            {
              v43 = [[ESFolderSyncRequest alloc] initWithFolder:v34 hasRemoteChanges:0 isInitialUberSync:0];
              v44 = v32;
              v35 = CalCalendarItemCopyExternalID();
              v36 = [ASEvent alloc];
              v37 = [(ASAgent *)self account];
              v38 = [v36 initWithCalEvent:a3 serverID:v35 account:v37];

              [v38 setCalEvent:0];
              v39 = [[ASAction alloc] initWithItemChangeType:1 changedItem:v38 serverId:0];
              v45 = v39;
              v40 = [NSArray arrayWithObjects:&v45 count:1];
              [v43 setActions:v40];
              [(ASAgent *)self _appendSyncRequest:v43];

              v32 = v44;
            }
          }

          CFRelease(v31);
        }
      }

      CFRelease(v26);
      goto LABEL_44;
    }

LABEL_36:
    v15 = 0;
LABEL_44:
    v41 = [(ASAgent *)self account];
    [v41 consumerFinishedInvitationActionsForEventWithUID:v12];

    goto LABEL_45;
  }

  if (CalCalendarItemGetStatus() == 3)
  {
    CalRemoveEventAndDetachedEvents();
LABEL_9:
    v15 = 1;
    goto LABEL_45;
  }

  v17 = CalEventGetExternalTrackingStatus() & 7;
  if (v17)
  {
    CalEventSetExternalTrackingStatus();
  }

  v18 = CalCalendarItemCopyExternalID();
  v19 = [ASEvent alloc];
  v20 = [(ASAgent *)self account];
  v21 = [v19 initWithCalEvent:a3 serverID:v18 account:v20];

  v22 = [(ASAgent *)self account];
  v23 = [v22 accountID];
  v24 = [v21 purgeAttendeesPendingDeletionForAccountID:v23];

  if (v17)
  {
    v15 = 1;
  }

  else
  {
    v15 = v24;
  }

LABEL_45:
  return v15;
}

- (void)_smartMailTask:(id)a3 failedWithErrorCode:(int64_t)a4 error:(id)a5
{
  v8 = a3;
  if ([a5 code] == &stru_68.size + 6)
  {
    v7 = [v8 context];
    [(ASAgent *)self messageDidSendWithContext:v7];
  }
}

- (void)_reallyApplyMessageDidSendWithContext:(id)a3
{
  v4 = a3;
  v5 = +[ASLocalDBHelper sharedInstance];
  v6 = [(ASAgent *)self account];
  v7 = [v6 accountID];
  v8 = [(ASAgent *)self account];
  v9 = [v8 changeTrackingID];
  [v5 calOpenDatabaseForAccountID:v7 clientID:v9];

  v10 = +[ASLocalDBHelper sharedInstance];
  v11 = [(ASAgent *)self account];
  v12 = [v11 accountID];
  [v10 calDatabaseForAccountID:v12];

  v13 = [(ASAgent *)self account];
  v14 = [v13 _copyExchangeCalendarStore:0];

  v15 = v4;
  v16 = [v15 eventUID];
  v17 = [v15 serverID];
  v18 = [v15 isMyInvite];
  v19 = [v15 emailResponse];
  if (v16)
  {
    v52 = v19;
    v20 = v14;
    v21 = CalDatabaseCopyAllEventsWithUniqueIdentifierInStore();
    Count = CFArrayGetCount(v21);
    if (v21)
    {
      CFRelease(v21);
    }

    v23 = &PLLogRegisteredEvent_ptr;
    if (Count == 1)
    {
      v24 = DALoggingwithCategory();
      v25 = _CPLog_to_os_log_type[7];
      if (os_log_type_enabled(v24, v25))
      {
        *buf = 138412290;
        v60 = v16;
        _os_log_impl(&dword_0, v24, v25, "Found one event with UID %@.", buf, 0xCu);
      }

      v26 = DALoggingwithCategory();
      v27 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v26, v27))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v26, v27, "Invoking CalDatabaseCopyEventWithUniqueIdentifierInStore for localEvent since there is only one event with this UID", buf, 2u);
      }

      v28 = v20;
      v29 = CalDatabaseCopyEventWithUniqueIdentifierInStore();
      v23 = &PLLogRegisteredEvent_ptr;
      if (!v29)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v28 = v20;
      if (Count < 2)
      {
        goto LABEL_41;
      }

      v39 = DALoggingwithCategory();
      type = _CPLog_to_os_log_type[7];
      if (os_log_type_enabled(v39, type))
      {
        *buf = 134218242;
        v60 = Count;
        v61 = 2112;
        v62 = v16;
        _os_log_impl(&dword_0, v39, type, "Found %ld events with the same UID %@. Pick one using server ID.", buf, 0x16u);
      }

      if (v17 && (v28 = v20, (v40 = CalDatabaseCopyEventWithExternalIDInStore()) != 0))
      {
        v29 = v40;
        v41 = DALoggingwithCategory();
        if (os_log_type_enabled(v41, type))
        {
          *buf = 138412290;
          v60 = v17;
          _os_log_impl(&dword_0, v41, type, "Found local event using server ID %@.", buf, 0xCu);
        }

        v18 = v18;
      }

      else
      {
        v42 = DALoggingwithCategory();
        v43 = _CPLog_to_os_log_type[3];
        if (os_log_type_enabled(v42, v43))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v42, v43, "Invoking CalDatabaseCopyEventWithUniqueIdentifierInStore", buf, 2u);
        }

        v28 = v20;
        v44 = CalDatabaseCopyEventWithUniqueIdentifierInStore();
        v18 = v18;
        if (!v44)
        {
LABEL_41:
          v49 = [(ASAgent *)self account];
          [v49 consumerFinishedInvitationActionsForEventWithUID:v16];

          v33 = 0;
          if (!v28)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        }

        v29 = v44;
        v41 = DALoggingwithCategory();
        if (os_log_type_enabled(v41, type))
        {
          *buf = 138412290;
          v60 = v16;
          _os_log_impl(&dword_0, v41, type, "Found local event using event UID %@.", buf, 0xCu);
        }
      }
    }

    v33 = [(ASAgent *)self _finishWithInvitationEvent:v29 eventUID:v16 expectedResponse:v52 wasMyInvite:v18 isStillInvite:1];
    CFRelease(v29);
    if (v28)
    {
LABEL_39:
      CFRelease(v28);
    }
  }

  else
  {
    v53 = v14;
    v30 = [v15 attendeeUUIDs];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v31 = [v30 countByEnumeratingWithState:&v54 objects:v58 count:16];
    v51 = v17;
    if (v31)
    {
      v32 = v31;
      v33 = 0;
      v34 = *v55;
      do
      {
        for (i = 0; i != v32; i = i + 1)
        {
          if (*v55 != v34)
          {
            objc_enumerationMutation(v30);
          }

          v36 = *(*(&v54 + 1) + 8 * i);
          v37 = CalDatabaseCopyAttendeeWithUUID();
          if (v37)
          {
            v38 = v37;
            CalParticipantSetAddedByForwarding();
            CFRelease(v38);
            v33 = 1;
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v54 objects:v58 count:16];
      }

      while (v32);
    }

    else
    {
      v33 = 0;
    }

    v23 = &PLLogRegisteredEvent_ptr;
    v17 = v51;
    v28 = v53;
    if (v53)
    {
      goto LABEL_39;
    }
  }

LABEL_40:
  v45 = [v23[390] sharedInstance];
  v46 = [(ASAgent *)self account];
  v47 = [v46 accountID];
  [v45 calCloseDatabaseForAccountID:v47 save:v33 & 1];

  v48 = +[DALocalDBGateKeeper sharedGateKeeper];
  [v48 relinquishLocksForWaiter:self dataclasses:4 moreComing:0];
}

- (void)messageDidSendWithContext:(id)a3
{
  v4 = a3;
  v5 = +[DALocalDBGateKeeper sharedGateKeeper];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_11680;
  v7[3] = &unk_6CED0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 registerWaiter:self forDataclassLocks:4 completionHandler:v7];
}

- (void)_reallyFinishInvitationBatch:(id)a3
{
  v4 = a3;
  v5 = +[ASLocalDBHelper sharedInstance];
  v6 = [(ASAgent *)self account];
  v7 = [v6 accountID];
  v8 = [(ASAgent *)self account];
  v9 = [v8 changeTrackingID];
  [v5 calOpenDatabaseForAccountID:v7 clientID:v9];

  v10 = +[ASLocalDBHelper sharedInstance];
  v11 = [(ASAgent *)self account];
  v12 = [v11 accountID];
  [v10 calDatabaseForAccountID:v12];

  v13 = self;
  v14 = [(ASAgent *)self account];
  v15 = [v14 _copyExchangeCalendarStore:0];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v4;
  v16 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v16)
  {
    v17 = v16;
    v40 = 0;
    v18 = *v46;
    type = _CPLog_to_os_log_type[3];
    do
    {
      v19 = 0;
      v39 = v17;
      do
      {
        if (*v46 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v45 + 1) + 8 * v19);
        v21 = [v20 eventUID];
        v22 = [v21 uidForCalFramework];

        if (v22)
        {
          v23 = DALoggingwithCategory();
          if (os_log_type_enabled(v23, type))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v23, type, "Invoking CalDatabaseCopyEventWithUniqueIdentifierInStore for localEvent when finishing invatation batch.", buf, 2u);
          }

          v24 = CalDatabaseCopyEventWithUniqueIdentifierInStore();
          [v20 setLocalItem:v24];
          v25 = [v20 organizerEmail];
          if ([v25 length])
          {
            v43 = 1;
          }

          else
          {
            v26 = [v20 attendees];
            v43 = [v26 count] != 0;
          }

          v27 = [(ASAgent *)v13 account];
          if ([v20 cachedOrganizerIsSelfWithAccount:v27])
          {
            [v20 attendees];
            v28 = v18;
            v29 = v15;
            v31 = v30 = v13;
            v32 = [v31 count] != 0;

            v13 = v30;
            v15 = v29;
            v18 = v28;
            v17 = v39;
          }

          else
          {
            v32 = 0;
          }

          if (v24)
          {
            v40 = -[ASAgent _finishWithInvitationEvent:eventUID:expectedResponse:wasMyInvite:isStillInvite:](v13, "_finishWithInvitationEvent:eventUID:expectedResponse:wasMyInvite:isStillInvite:", v24, v22, [v20 meetingResponseForEmail], v32, v43);
            CFRelease(v24);
          }

          else
          {
            v33 = [(ASAgent *)v13 account];
            [v33 consumerFinishedInvitationActionsForEventWithUID:v22];
          }
        }

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v17);
  }

  else
  {
    v40 = 0;
  }

  if (v15)
  {
    CFRelease(v15);
  }

  v34 = +[ASLocalDBHelper sharedInstance];
  v35 = [(ASAgent *)v13 account];
  [v35 accountID];
  v37 = v36 = v13;
  [v34 calCloseDatabaseForAccountID:v37 save:v40 & 1];

  v38 = +[DALocalDBGateKeeper sharedGateKeeper];
  [v38 relinquishLocksForWaiter:v36 dataclasses:4 moreComing:0];
}

- (void)finishWithInvitationBatch:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v13 + 1) + 8 * v8) setLocalItem:0];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v9 = +[DALocalDBGateKeeper sharedGateKeeper];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_11C30;
  v11[3] = &unk_6CED0;
  v11[4] = self;
  v12 = v4;
  v10 = v4;
  [v9 registerWaiter:self forDataclassLocks:4 completionHandler:v11];
}

- (void)meetingResponseFinishedWithStatus:(int64_t)a3 error:(id)a4 successfulResponses:(id)a5 failedResponses:(id)a6
{
  v125 = a4;
  v9 = a5;
  v10 = a6;
  v148 = self;
  v11 = [(ASAgent *)self account];
  v12 = [v11 changeTrackingID];
  v13 = [(ASAgent *)v148 account];
  v14 = [v13 accountID];
  v15 = [ASDataHandler newDataHandlerForDataclass:4 container:0 changeTrackingID:v12 accountID:v14];

  v132 = v15;
  [v15 openDB];
  [(ASAgent *)v148 _cacheFoldersForDataclasses:4];
  v16 = +[ASLocalDBHelper sharedInstance];
  v17 = [(ASAgent *)v148 account];
  v18 = [v17 accountID];
  [v16 calDatabaseForAccountID:v18];

  v19 = [(ASAgent *)v148 account];
  cf = [v19 _copyExchangeCalendarStore:0];

  v152 = objc_opt_new();
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  obj = v10;
  v20 = [obj countByEnumeratingWithState:&v168 objects:v181 count:16];
  if (v20)
  {
    v21 = *v169;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v169 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = [*(*(&v168 + 1) + 8 * i) context];
        [v152 addObject:v23];
      }

      v20 = [obj countByEnumeratingWithState:&v168 objects:v181 count:16];
    }

    while (v20);
  }

  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  v137 = v9;
  v24 = [v137 countByEnumeratingWithState:&v164 objects:v180 count:16];
  if (v24)
  {
    v25 = *v165;
    do
    {
      for (j = 0; j != v24; j = j + 1)
      {
        if (*v165 != v25)
        {
          objc_enumerationMutation(v137);
        }

        v27 = [*(*(&v164 + 1) + 8 * j) context];
        [v152 addObject:v27];
      }

      v24 = [v137 countByEnumeratingWithState:&v164 objects:v180 count:16];
    }

    while (v24);
  }

  v28 = a3;
  if (a3 == 9 || a3 == 2)
  {
    [(ASAgent *)v148 _clearChangeHistoriesWithChangeIdContext:0 dataclass:4 inFolderWithId:0 pushedActions:v152, v125];
    v149 = 1;
    v28 = a3;
  }

  else
  {
    v149 = 0;
  }

  if (v28 == 9)
  {
    v29 = cf;
    goto LABEL_68;
  }

  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  v140 = obj;
  v144 = [v140 countByEnumeratingWithState:&v160 objects:v179 count:16];
  if (!v144)
  {
    v127 = v132;
    goto LABEL_72;
  }

  v30 = 0;
  v142 = *v161;
  v31 = _CPLog_to_os_log_type[3];
  type = _CPLog_to_os_log_type[6];
  do
  {
    for (k = 0; k != v144; k = k + 1)
    {
      if (*v161 != v142)
      {
        objc_enumerationMutation(v140);
      }

      v33 = *(*(&v160 + 1) + 8 * k);
      v34 = DALoggingwithCategory();
      if (os_log_type_enabled(v34, v31))
      {
        v35 = [v33 eventUID];
        v36 = [v35 uidForCalFramework];
        v37 = [v33 deliveryItemServerId];
        v38 = [v33 status];
        *buf = 138412802;
        v174 = v36;
        v175 = 2112;
        v176 = v37;
        v177 = 2048;
        v178 = v38;
        _os_log_impl(&dword_0, v34, v31, "Meeting response for event %@ with UID %@ failed with error %ld", buf, 0x20u);
      }

      if ([v33 status] == &dword_8 + 1 || objc_msgSend(v33, "status") == &dword_C)
      {
        v39 = [v33 eventUID];
        v40 = [v39 uidForCalFramework];

        if (v40)
        {
          v41 = DALoggingwithCategory();
          if (os_log_type_enabled(v41, type))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v41, type, "Invoking CalDatabaseCopyEventWithUniqueIdentifierInStore in finishing meeting response", buf, 2u);
          }

          v42 = CalDatabaseCopyEventWithUniqueIdentifierInStore();
          if (v42)
          {
            v43 = CalCalendarItemCopySelfAttendee();
            if (v43)
            {
              CalAttendeeSetStatus();
              CalAttendeeSetPendingStatus();
              CFRelease(v43);
            }

            else
            {
              v45 = DALoggingwithCategory();
              if (os_log_type_enabled(v45, type))
              {
                *buf = 0;
                _os_log_impl(&dword_0, v45, type, "Self attendee not found", buf, 2u);
              }
            }

            if ([v33 status] == &dword_C)
            {
              v46 = CalCalendarItemCopyExternalRepresentation();
              if (!v46)
              {
                goto LABEL_55;
              }

              v47 = +[ASEvent calendarItemExternalRepClasses];
              v159 = 0;
              v150 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v47 fromData:v46 error:&v159];
              v48 = v159;

              if (v150)
              {
                v49 = [v150 objectForKeyedSubscript:@"eventNotFound"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v50 = v49;
                  if ([v50 BOOLValue])
                  {
                    v51 = DALoggingwithCategory();
                    if (os_log_type_enabled(v51, type))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_0, v51, type, "Meeting response was previously not found. Not going to tell user about the failure", buf, 2u);
                    }

                    v30 = 0;
                    goto LABEL_62;
                  }
                }

                else
                {
                }

                v52 = 0;
              }

              else
              {
LABEL_55:
                v150 = 0;
                v52 = 1;
              }

              v53 = DALoggingwithCategory();
              if (os_log_type_enabled(v53, type))
              {
                v54 = [v33 eventUID];
                v55 = [v54 uidForCalFramework];
                v56 = [v33 deliveryItemServerId];
                *buf = 138412546;
                v174 = v55;
                v175 = 2112;
                v176 = v56;
                _os_log_impl(&dword_0, v53, type, "Setting kEventNotFound for the event %@ with UID %@", buf, 0x16u);
              }

              if (v52)
              {
                v57 = objc_opt_new();
              }

              else
              {
                v57 = [v150 mutableCopy];
              }

              v50 = v57;
              [v57 setObject:&__kCFBooleanTrue forKeyedSubscript:@"eventNotFound"];
              v58 = [NSKeyedArchiver archivedDataWithRootObject:v50];

              CalCalendarItemSetExternalRepresentation();
              v30 = 1;
              v46 = v58;
LABEL_62:
            }

            else
            {
              v30 = 1;
            }

            CalEventSetNeedsNotification();
            CFRelease(v42);
            v149 = 1;
LABEL_64:

            continue;
          }

          v44 = DALoggingwithCategory();
          if (os_log_type_enabled(v44, v31))
          {
            *buf = 138412290;
            v174 = v40;
            _os_log_impl(&dword_0, v44, v31, "localEvent for responseItem with UID %@ not found.", buf, 0xCu);
          }
        }

        v30 = 1;
        goto LABEL_64;
      }
    }

    v144 = [v140 countByEnumeratingWithState:&v160 objects:v179 count:16];
  }

  while (v144);

  v29 = cf;
  if (v30)
  {
LABEL_68:
    if (v29)
    {
      CFRelease(v29);
    }

    [(ASAgent *)v148 _nilOutContainersForDataclasses:4, v125];
    [v132 closeDBAndSave:v149 & 1];
    v59 = [NSBundle bundleForClass:objc_opt_class()];
    v60 = [v59 localizedStringForKey:@"MEETING_RESPONSE_FAILURE_TITLE" value:&stru_6D4A8 table:@"DataAccess"];
    v61 = [NSBundle bundleForClass:objc_opt_class()];
    v62 = [v61 localizedStringForKey:@"MEETING_RESPONSE_FAILURE_BODY" value:&stru_6D4A8 table:@"DataAccess"];
    v63 = [NSBundle bundleForClass:objc_opt_class()];
    CFUserNotificationDisplayNotice(0.0, 3uLL, 0, 0, 0, v60, v62, [v63 localizedStringForKey:@"OK" value:&stru_6D4A8 table:@"DataAccess"]);

    v64 = [(ASAgent *)v148 account];
    v65 = [v64 changeTrackingID];
    v66 = [(ASAgent *)v148 account];
    v67 = [v66 accountID];
    v127 = [ASDataHandler newDataHandlerForDataclass:4 container:0 changeTrackingID:v65 accountID:v67];

    [v127 openDB];
    [(ASAgent *)v148 _cacheFoldersForDataclasses:4];
    v68 = +[ASLocalDBHelper sharedInstance];
    v69 = [(ASAgent *)v148 account];
    v70 = [v69 accountID];
    [v68 calDatabaseForAccountID:v70];

    v140 = [(ASAgent *)v148 account];
    cf = [v140 _copyExchangeCalendarStore:0];
    v149 = 0;
LABEL_72:

    v29 = cf;
  }

  else
  {
    v127 = v132;
  }

  if (a3 != 2)
  {
    goto LABEL_157;
  }

  cfa = v29;
  v128 = objc_opt_new();
  v157 = 0u;
  v158 = 0u;
  v155 = 0u;
  v156 = 0u;
  v131 = v137;
  v135 = [v131 countByEnumeratingWithState:&v155 objects:v172 count:16];
  if (!v135)
  {
    goto LABEL_154;
  }

  v133 = *v156;
  v145 = _CPLog_to_os_log_type[6];
  v141 = _CPLog_to_os_log_type[7];
  v136 = _CPLog_to_os_log_type[3];
  v130 = _CPLog_to_os_log_type[5];
  while (2)
  {
    v71 = 0;
    while (2)
    {
      if (*v156 != v133)
      {
        v72 = v71;
        objc_enumerationMutation(v131);
        v71 = v72;
      }

      v143 = v71;
      v73 = *(*(&v155 + 1) + 8 * v71);
      v74 = [v73 eventUID];
      v75 = [v74 uidForCalFramework];

      v76 = DALoggingwithCategory();
      if (os_log_type_enabled(v76, v145))
      {
        *buf = 138412290;
        v174 = v75;
        _os_log_impl(&dword_0, v76, v145, "Meeting response was successful for event with UID %@", buf, 0xCu);
      }

      typea = CalDatabaseCopyAllEventsWithUniqueIdentifierInStore();
      Count = CFArrayGetCount(typea);
      v78 = Count;
      if (Count == 1)
      {
        v79 = DALoggingwithCategory();
        if (os_log_type_enabled(v79, v141))
        {
          *buf = 138412290;
          v174 = v75;
          _os_log_impl(&dword_0, v79, v141, "Found one event with UID %@.", buf, 0xCu);
        }

        v80 = DALoggingwithCategory();
        if (os_log_type_enabled(v80, v136))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v80, v136, "Invoking CalDatabaseCopyEventWithUniqueIdentifierInStore", buf, 2u);
        }

        v81 = CalDatabaseCopyEventWithUniqueIdentifierInStore();
        if (!v81)
        {
          goto LABEL_130;
        }

LABEL_100:
        v92 = [(ASAgent *)v148 account];
        v93 = [v92 deletedItemsFolder];
        v94 = [v93 folderID];

        v95 = [v73 deliveryItemFolderId];
        v96 = [v94 isEqualToString:v95];

        v139 = [v73 calEventServerId];

        if (v139)
        {
          if ((v96 & 1) == 0)
          {
            v97 = CalEventCopyEventActions();
            if ([v97 count])
            {
              v98 = 0;
              do
              {
                [v97 objectAtIndexedSubscript:v98];

                CalEventRemoveEventAction();
                ++v98;
              }

              while (v98 < [v97 count]);
              v149 = 1;
            }
          }
        }

        else
        {
          v99 = CalCalendarItemCopySelfAttendee();
          if (v99)
          {
            CalAttendeeSetStatus();
            CalAttendeeSetPendingStatus();
            CFRelease(v99);
            v149 = 1;
          }
        }

        if ([v75 rangeOfString:@"<!ExceptionDate!>"] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v100 = [v73 calEventServerId];
          if (v100)
          {
            [v73 calEventServerId];
          }

          else
          {
            [v73 deliveryItemServerId];
          }
          v110 = ;

          v101 = [(ASAgent *)v148 account];
          v109 = [ASEvent eventWithCalEvent:v81 serverID:v110 account:v101];
        }

        else
        {
          v101 = [[ASEventUID alloc] initWithCalFrameworkString:v75];
          v102 = [v101 uidWithoutExceptionDate];
          if (v102)
          {
            v103 = DALoggingwithCategory();
            if (os_log_type_enabled(v103, v136))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v103, v136, "Invoking CalDatabaseCopyEventWithUniqueIdentifierInStore for parentLocalEvent", buf, 2u);
            }

            v129 = CalDatabaseCopyEventWithUniqueIdentifierInStore();
            v104 = [v73 calEventServerId];
            v105 = [(ASAgent *)v148 account];
            v106 = [ASEvent eventWithCalEvent:v129 serverID:v104 account:v105];

            v107 = [ASEventException alloc];
            v108 = [(ASAgent *)v148 account];
            v109 = [v107 initWithCalEvent:v81 originalEvent:v106 account:v108];

            v110 = [v109 serverIdForCalFrameworkWithParentEvent:v106];
            v111 = DALoggingwithCategory();
            if (os_log_type_enabled(v111, v141))
            {
              *buf = 138412546;
              v174 = v106;
              v175 = 2112;
              v176 = v109;
              _os_log_impl(&dword_0, v111, v141, "parent ASEvent is %@, exception event is %@", buf, 0x16u);
            }

            if (v129)
            {
              CFRelease(v129);
            }
          }

          else
          {
            v110 = 0;
            v109 = 0;
          }
        }

        v116 = [v109 responseRequested];
        if ([v116 intValue])
        {
          v117 = [(ASAgent *)v148 account];
          v118 = [v117 protocol];
          v119 = [v118 sendEmailForMeetingInvitationAndResponse];

          if (v119)
          {
            [v109 setMeetingResponseForEmail:{objc_msgSend(v73, "meetingResponse")}];
            [v128 addObject:v109];
LABEL_145:
            if (v139 && v110)
            {
              CalCalendarItemSetExternalID();
              v149 = 1;
            }

            CFRelease(v81);

LABEL_149:
            goto LABEL_150;
          }

          v120 = DALoggingwithCategory();
          if (os_log_type_enabled(v120, v145))
          {
            v151 = [(ASAgent *)v148 account];
            v121 = [v151 protocol];
            v122 = [v121 protocolVersion];
            *buf = 138412546;
            v174 = v109;
            v175 = 2112;
            v176 = v122;
            _os_log_impl(&dword_0, v120, v145, "Not sending meeting response email about event %@. Protocol version %@", buf, 0x16u);
          }
        }

        else
        {
          v120 = DALoggingwithCategory();
          if (os_log_type_enabled(v120, v145))
          {
            *buf = 138412290;
            v174 = v109;
            _os_log_impl(&dword_0, v120, v145, "Heard back from MeetingResponse: Not emailing about event %@, as the originator requested no responses", buf, 0xCu);
          }
        }

        v149 = -[ASAgent _finishWithInvitationEvent:eventUID:expectedResponse:wasMyInvite:isStillInvite:](v148, "_finishWithInvitationEvent:eventUID:expectedResponse:wasMyInvite:isStillInvite:", v81, v75, [v73 meetingResponse], 0, 1);
        goto LABEL_145;
      }

      if (Count < 2)
      {
        goto LABEL_130;
      }

      v82 = DALoggingwithCategory();
      if (os_log_type_enabled(v82, v141))
      {
        *buf = 134218242;
        v174 = v78;
        v175 = 2112;
        v176 = v75;
        _os_log_impl(&dword_0, v82, v141, "Found %ld events with the same UID %@. Pick one using server ID.", buf, 0x16u);
      }

      v83 = [v73 calEventServerId];
      v84 = v83 == 0;

      if (!v84)
      {
        v85 = [v73 calEventServerId];
        v81 = CalDatabaseCopyEventWithExternalIDInStore();

        if (v81)
        {
          v86 = DALoggingwithCategory();
          if (os_log_type_enabled(v86, v141))
          {
            v87 = [v73 calEventServerId];
            *buf = 138412290;
            v174 = v87;
            _os_log_impl(&dword_0, v86, v141, "Found local event using cal event ID %@.", buf, 0xCu);
          }

LABEL_99:

          goto LABEL_100;
        }
      }

      v88 = [v73 deliveryItemServerId];
      v89 = v88 == 0;

      if (!v89)
      {
        v90 = [v73 deliveryItemServerId];
        v81 = CalDatabaseCopyEventWithExternalIDInStore();

        if (v81)
        {
          v86 = DALoggingwithCategory();
          if (os_log_type_enabled(v86, v141))
          {
            v91 = [v73 deliveryItemServerId];
            *buf = 138412290;
            v174 = v91;
            _os_log_impl(&dword_0, v86, v141, "Found local event using delivery item server ID %@.", buf, 0xCu);
          }

          goto LABEL_99;
        }
      }

      v112 = DALoggingwithCategory();
      if (os_log_type_enabled(v112, v136))
      {
        *buf = 134218242;
        v174 = v78;
        v175 = 2112;
        v176 = v75;
        _os_log_impl(&dword_0, v112, v136, "Found %ld events with the same UID, unable to distinguish them. UID %@.", buf, 0x16u);
      }

      if (!typea)
      {
LABEL_130:
        v94 = DALoggingwithCategory();
        if (os_log_type_enabled(v94, v130))
        {
          *buf = 138412290;
          v174 = v75;
          _os_log_impl(&dword_0, v94, v130, "MeetingResponse was successful, but I can no longer find an event with uid %@", buf, 0xCu);
        }

        goto LABEL_149;
      }

      v113 = DALoggingwithCategory();
      if (os_log_type_enabled(v113, v145))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v113, v145, "Not sending meeting response email. Walk through all events with matching UID to clear the pending status.", buf, 2u);
      }

      v114 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(typea, v114);
        if (ValueAtIndex)
        {
          v149 |= -[ASAgent _finishWithInvitationEvent:eventUID:expectedResponse:wasMyInvite:isStillInvite:](v148, "_finishWithInvitationEvent:eventUID:expectedResponse:wasMyInvite:isStillInvite:", ValueAtIndex, v75, [v73 meetingResponse], 0, 1);
        }

        ++v114;
      }

      while (v78 != v114);
LABEL_150:
      if (typea)
      {
        CFRelease(typea);
      }

      v71 = v143 + 1;
      if ((v143 + 1) != v135)
      {
        continue;
      }

      break;
    }

    v135 = [v131 countByEnumeratingWithState:&v155 objects:v172 count:16];
    if (v135)
    {
      continue;
    }

    break;
  }

LABEL_154:

  if ([v128 count])
  {
    v123 = [(ASAgent *)v148 account];
    v124 = [v123 sendEmailsForCalEvents:v128 consumer:v148];

    LOBYTE(v149) = v149 | v124;
  }

  v29 = cfa;
LABEL_157:
  if (v29)
  {
    CFRelease(v29);
  }

  [(ASAgent *)v148 _nilOutContainersForDataclasses:4, v125];
  [v127 closeDBAndSave:v149 & 1];
}

- (BOOL)_markEventWithLocalIDAsNeedingInvitationEmail:(int)a3 parentId:(int)a4
{
  v5 = +[ASLocalDBHelper sharedInstance];
  v6 = [(ASAgent *)self account];
  v7 = [v6 accountID];
  [v5 calDatabaseForAccountID:v7];
  v8 = CalDatabaseCopyCalendarItemWithRowID();

  if (v8)
  {
    v9 = [ASEvent alloc];
    v10 = [(ASAgent *)self account];
    v11 = [v9 initWithCalEvent:v8 serverID:0 account:v10];

    v12 = [(ASAgent *)self account];
    if ([v11 cachedOrganizerIsSelfWithAccount:v12])
    {
      v13 = [v11 attendees];
      v14 = [v13 count];

      if (v14)
      {
        v15 = +[ASLocalDBHelper sharedInstance];
        v16 = [(ASAgent *)self account];
        v17 = [v16 accountID];
        [v15 calDatabaseForAccountID:v17];
        v18 = CalDatabaseCopyCalendarItemWithRowID();

        ExternalTrackingStatus = CalEventGetExternalTrackingStatus();
        ModifiedProperties = CalEventGetModifiedProperties();
        if ((ModifiedProperties & 0x280) != 0)
        {
          v21 = ExternalTrackingStatus & 0xFE;
          if ((((ExternalTrackingStatus & 2) == 0) & (ModifiedProperties >> 7)) != 0)
          {
            v21 = ExternalTrackingStatus & 0xFC | 2;
          }

          if (((v21 & 4) == 0) & (ModifiedProperties >> 9)) != 0 || (((ExternalTrackingStatus & 2) == 0) & (ModifiedProperties >> 7)) != 0 || (ExternalTrackingStatus)
          {
            goto LABEL_16;
          }
        }

        else if ((ExternalTrackingStatus & 7) != 1)
        {
LABEL_16:
          CalEventSetExternalTrackingStatus();
          v22 = 1;
          goto LABEL_17;
        }

        v22 = 0;
LABEL_17:
        CFRelease(v18);
        goto LABEL_18;
      }
    }

    else
    {
    }

    v22 = 0;
LABEL_18:
    CFRelease(v8);

    return v22;
  }

  return 0;
}

- (void)_moveItemsTask:(id)a3 failedWithErrorCode:(int64_t)a4
{
  v6 = a3;
  if (a4 > 0x22)
  {
    goto LABEL_6;
  }

  if (((1 << a4) & 0x440240421) != 0)
  {
    v7 = 1;
    goto LABEL_13;
  }

  if (((1 << a4) & 0x18000) != 0)
  {
LABEL_8:
    [(ASAgent *)self refreshFolderListRequireChangedFolders:1 isUserRequested:1];
    goto LABEL_30;
  }

  if (((1 << a4) & 0x20008) == 0)
  {
LABEL_6:
    if (a4 == -1)
    {
LABEL_27:
      v27 = DALoggingwithCategory();
      v28 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v27, v28))
      {
        *buf = 134218242;
        v38 = a4;
        v39 = 2112;
        v40 = v6;
        _os_log_impl(&dword_0, v27, v28, "Draining pending sync requests because move items task had error %ld.  task %@", buf, 0x16u);
      }

      v29 = [(ASAgent *)self folderItemSyncRequestLock];
      [v29 lock];

      v30 = [(ASAgent *)self outstandingFolderRequests];
      [v30 removeAllObjects];

      v31 = [(ASAgent *)self folderItemSyncRequestLock];
      [v31 unlock];

      goto LABEL_30;
    }

    if (a4 == 67)
    {
      goto LABEL_8;
    }

    v8 = DALoggingwithCategory();
    v9 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v8, v9))
    {
      *buf = 134217984;
      v38 = a4;
      _os_log_impl(&dword_0, v8, v9, "Unhandled error (%ld) from Move Items Task", buf, 0xCu);
    }
  }

  v7 = 0;
LABEL_13:
  v10 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v11 = [v6 pushedMoveRequests];
  v12 = [v11 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v34;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v33 + 1) + 8 * i) context];
        if (v16)
        {
          [v10 addObject:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v13);
  }

  if ([v10 count])
  {
    v17 = DALoggingwithCategory();
    v18 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v17, v18))
    {
      *buf = 134218242;
      v38 = a4;
      v39 = 2112;
      v40 = v6;
      _os_log_impl(&dword_0, v17, v18, "Draining changes because move items task had error %ld.  task %@", buf, 0x16u);
    }

    v19 = +[ASLocalDBHelper sharedInstance];
    v20 = [(ASAgent *)self account];
    v21 = [v20 accountID];
    v22 = [(ASAgent *)self account];
    v23 = [v22 changeTrackingID];
    [v19 calOpenDatabaseForAccountID:v21 clientID:v23];

    [(ASAgent *)self _clearChangeHistoriesWithChangeIdContext:0 dataclass:4 inFolderWithId:0 pushedActions:v10];
    v24 = +[ASLocalDBHelper sharedInstance];
    v25 = [(ASAgent *)self account];
    v26 = [v25 accountID];
    [v24 calCloseDatabaseForAccountID:v26 save:1];
  }

  if (v7)
  {
    goto LABEL_27;
  }

LABEL_30:
  v32 = +[DALocalDBGateKeeper sharedGateKeeper];
  [v32 relinquishLocksForWaiter:self dataclasses:objc_msgSend(v6 moreComing:{"dataclass"), 0}];
}

- (void)resultsForMessageMove:(id)a3
{
  v4 = a3;
  v5 = +[ASLocalDBHelper sharedInstance];
  v6 = [(ASAgent *)self account];
  v7 = [v6 accountID];
  v8 = [(ASAgent *)self account];
  v9 = [v8 changeTrackingID];
  [v5 calOpenDatabaseForAccountID:v7 clientID:v9];

  v10 = [(ASAgent *)self account];
  v11 = [v10 _copyExchangeCalendarStore:0];

  v76 = objc_opt_new();
  cf = v11;
  v63 = v4;
  if (v11)
  {
    Mutable = CFArrayCreateMutable(0, 0, 0);
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    obj = v4;
    v73 = [obj countByEnumeratingWithState:&v81 objects:v88 count:16];
    if (v73)
    {
      v70 = 0;
      v64 = 0;
      v13 = *v82;
      type = _CPLog_to_os_log_type[7];
      v68 = _CPLog_to_os_log_type[3];
      v65 = *v82;
      v66 = Mutable;
      do
      {
        for (i = 0; i != v73; i = i + 1)
        {
          if (*v82 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v81 + 1) + 8 * i);
          v16 = [v15 origRequest];
          v17 = [v16 context];
          if ([v17 changeId] != -1)
          {
            v18 = DALoggingwithCategory();
            if (os_log_type_enabled(v18, type))
            {
              v19 = [v17 changeId];
              *buf = 67109120;
              v87 = v19;
              _os_log_impl(&dword_0, v18, type, "Clearing change index %d", buf, 8u);
            }

            CFArrayAppendValue(Mutable, [v17 changeId]);
          }

          v20 = [v15 destID];

          if (v20)
          {
            v75 = v16;
            v21 = [v17 destinationContainerId];
            v22 = [v76 objectForKeyedSubscript:v21];

            if (!v22)
            {
              v22 = objc_opt_new();
              v23 = [v17 destinationContainerId];
              [v76 setObject:v22 forKeyedSubscript:v23];
            }

            v24 = [ASAction alloc];
            v25 = [v15 destID];
            v26 = [v24 initWithItemChangeType:6 changedItem:0 serverId:v25];

            v74 = v26;
            [v22 addObject:v26];
            v27 = [v17 changedItem];
            v28 = [v27 dataclass];

            v29 = [v17 changedItem];
            v30 = v29;
            if (v28 == &dword_4)
            {
              v71 = [v29 uidForCalFramework];
              v31 = DALoggingwithCategory();
              if (os_log_type_enabled(v31, v68))
              {
                *buf = 0;
                _os_log_impl(&dword_0, v31, v68, "Invoking CalDatabaseCopyEventWithUniqueIdentifierInStore", buf, 2u);
              }

              v32 = +[ASLocalDBHelper sharedInstance];
              v33 = [(ASAgent *)self account];
              v34 = [v33 accountID];
              [v32 calDatabaseForAccountID:v34];
              v35 = CalDatabaseCopyEventWithUniqueIdentifierInStore();

              if (v35)
              {
                [v30 setLocalItem:v35];
                CFRelease(v35);
                v36 = [v15 destID];
                [v30 setServerID:v36];

                v37 = [(ASAgent *)self account];
                v38 = [v37 accountID];
                [v30 verifyExternalIdsForAccountID:v38];

                v64 = 1;
              }

              Mutable = v66;

              v70 = 4;
              v13 = v65;
            }

            else
            {
              [v29 dataclass];
            }

            v16 = v75;
          }
        }

        v73 = [obj countByEnumeratingWithState:&v81 objects:v88 count:16];
      }

      while (v73);
    }

    else
    {
      v70 = 0;
      v64 = 0;
    }

    v39 = v64;
    if (CFArrayGetCount(Mutable))
    {
      v40 = +[ASLocalDBHelper sharedInstance];
      v41 = [(ASAgent *)self account];
      v42 = [v41 accountID];
      [v40 calDatabaseForAccountID:v42];
      v43 = [(ASAgent *)self account];
      v44 = [v43 changeTrackingID];
      CalDatabaseClearIndividualChangeRowIDsForClient();

      v39 = 1;
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    CFRelease(cf);
  }

  else
  {
    v70 = 0;
    v39 = 0;
  }

  v45 = +[ASLocalDBHelper sharedInstance];
  v46 = [(ASAgent *)self account];
  v47 = [v46 accountID];
  [v45 calCloseDatabaseForAccountID:v47 save:v39 & 1];

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v48 = [v76 allKeys];
  v49 = [v48 countByEnumeratingWithState:&v77 objects:v85 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v78;
    do
    {
      for (j = 0; j != v50; j = j + 1)
      {
        if (*v78 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = *(*(&v77 + 1) + 8 * j);
        v54 = [(ASAgent *)self account];
        v55 = [v54 folderWithId:v53];

        if (v55)
        {
          v56 = [[ESFolderSyncRequest alloc] initWithFolder:v55 hasRemoteChanges:0 isInitialUberSync:0];
          v57 = [v76 objectForKeyedSubscript:v53];
          v58 = [v57 allObjects];
          [v56 setActions:v58];

          [(ASAgent *)self _appendSyncRequest:v56];
        }
      }

      v50 = [v48 countByEnumeratingWithState:&v77 objects:v85 count:16];
    }

    while (v50);
  }

  v59 = v70;
  if (!v70)
  {
    v60 = DALoggingwithCategory();
    v61 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v60, _CPLog_to_os_log_type[3]))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v60, v61, "Our exchange store went missing, so releasing locks for EVENTS, as a guess", buf, 2u);
    }

    v59 = 4;
  }

  v62 = +[DALocalDBGateKeeper sharedGateKeeper];
  [v62 relinquishLocksForWaiter:self dataclasses:v59 moreComing:1];
}

- (void)_reallySendMoves:(id)a3
{
  v3 = a3;
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v3, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        v10 = [DAMessageMoveRequest alloc];
        v11 = [v9 sourceServerId];
        v12 = [v9 sourceContainerId];
        v13 = [v9 destinationContainerId];
        v14 = [v10 initMoveRequestWithMessage:v11 fromFolder:v12 toFolder:v13];

        [v14 setContext:v9];
        [v4 addObject:v14];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v15 = [(ASAgent *)self account];
  [v15 performMoveRequests:v4 consumer:self];
}

- (void)_reallySyncRequest:(id)a3
{
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138412290;
    v253 = v4;
    _os_log_impl(&dword_0, v5, v6, "really syncing request %@", buf, 0xCu);
  }

  type = v6;

  v7 = [(ASAgent *)self folderItemSyncRequestLock];
  [v7 lock];

  v244 = 0u;
  v245 = 0u;
  v242 = 0u;
  v243 = 0u;
  v209 = self;
  v8 = [(ASAgent *)self outstandingFolderRequests];
  v9 = [v8 copy];

  v10 = [v9 countByEnumeratingWithState:&v242 objects:v258 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v243;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v243 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v242 + 1) + 8 * i);
        v15 = [v14 folder];
        v16 = [v4 folder];
        v17 = [v15 isEqual:v16];

        if (v17)
        {
          v18 = DALoggingwithCategory();
          if (os_log_type_enabled(v18, type))
          {
            *buf = 138412290;
            v253 = v14;
            _os_log_impl(&dword_0, v18, type, "Found a sync request for the same folder.  Merging in %@", buf, 0xCu);
          }

          v19 = [(ASAgent *)v209 calUnitTestMergedRequestsBlock];

          if (v19)
          {
            v20 = [(ASAgent *)v209 calUnitTestMergedRequestsBlock];
            v20[2]();
          }

          if ([v14 hasRemoteChanges])
          {
            [v4 setHasRemoteChanges:1];
          }

          if ([v14 isResyncAfterServerError])
          {
            [v4 setIsResyncAfterServerError:1];
          }

          v21 = objc_opt_new();
          v22 = [v14 actions];
          [v21 addObjectsFromArray:v22];

          v23 = [v4 actions];
          [v21 addObjectsFromArray:v23];

          v24 = [v21 allObjects];
          [v4 setActions:v24];

          v25 = [(ASAgent *)v209 outstandingFolderRequests];
          [v25 removeObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v242 objects:v258 count:16];
    }

    while (v11);
  }

  v26 = v209;
  v27 = [(ASAgent *)v209 folderItemSyncRequestLock];
  [v27 unlock];

  v207 = [v4 folder];
  v28 = [v207 dataclass];
  v29 = 0;
  if (v28 > 0x20)
  {
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    if (((1 << v28) & 0x100010014) != 0)
    {
      v32 = [v207 dataclass];
      if (v32)
      {
        if (v32 == &dword_10)
        {
          v33 = [v207 folderID];
          if ([v4 isResyncAfterServerError])
          {
            v204 = @"0";
          }

          else
          {
            v204 = [(ASAgent *)v209 _syncKeyForFolderWithId:v33 dataclass:16];
          }

          v40 = [(ASAgent *)v209 sharedReminderKitHelper];
          v41 = [(ASAgent *)v209 account];
          v42 = [v40 localMovedReminderActionsForFolderWithId:v33 forAccount:v41];

          v43 = v42;
          if ([(__CFString *)v42 count])
          {
            v30 = 1;
            [(ASAgent *)v209 _appendSyncRequest:v4 atBeginning:1];
            [(ASAgent *)v209 _reallySendMoves:v43];
            v44 = [(ASAgent *)v209 currentlySyncingFolderIds];
            [v44 removeObject:v33];
            v29 = 0;
            v31 = 0;
            v38 = v204;
          }

          else
          {
            v192 = v42;
            v44 = objc_opt_new();
            v70 = objc_opt_new();
            v71 = [(ASAgent *)v209 sharedReminderKitHelper];
            v72 = [v207 folderID];
            v73 = [(ASAgent *)v209 account];
            v74 = [v71 localChangedReminderActionsForFolderId:v72 forAccount:v73];

            v75 = [v74 count];
            v76 = [v4 actions];
            v77 = [v76 count];

            if (!v204 || (-[__CFString isEqualToString:](v204, "isEqualToString:", @"0") & 1) != 0 || v75 != -v77 || ([v4 hasRemoteChanges] & 1) != 0 || (objc_msgSend(v4, "isInitialUberSync") & 1) != 0)
            {
              v195 = v33;
              v240 = 0u;
              v241 = 0u;
              v238 = 0u;
              v239 = 0u;
              v78 = [v4 actions];
              v79 = [v78 countByEnumeratingWithState:&v238 objects:v257 count:16];
              if (v79)
              {
                v80 = v79;
                v81 = 0;
                v82 = *v239;
                v83 = 25;
                do
                {
                  for (j = 0; j != v80; j = j + 1)
                  {
                    if (*v239 != v82)
                    {
                      objc_enumerationMutation(v78);
                    }

                    v85 = v83 < 1;
                    if (v83 <= 0)
                    {
                      v86 = v70;
                    }

                    else
                    {
                      v86 = v44;
                    }

                    v83 -= v83 > 0;
                    v81 |= v85;
                    [v86 addObject:*(*(&v238 + 1) + 8 * j)];
                  }

                  v80 = [v78 countByEnumeratingWithState:&v238 objects:v257 count:16];
                }

                while (v80);
              }

              else
              {
                v81 = 0;
                v83 = 25;
              }

              v236 = 0u;
              v237 = 0u;
              v234 = 0u;
              v235 = 0u;
              v89 = v74;
              v90 = [v89 countByEnumeratingWithState:&v234 objects:v256 count:16];
              if (v90)
              {
                v91 = v90;
                v92 = *v235;
                v33 = v195;
                do
                {
                  for (k = 0; k != v91; k = k + 1)
                  {
                    if (*v235 != v92)
                    {
                      objc_enumerationMutation(v89);
                    }

                    v94 = v83 < 1;
                    if (v83 <= 0)
                    {
                      v95 = v70;
                    }

                    else
                    {
                      v95 = v44;
                    }

                    v83 -= v83 > 0;
                    v81 |= v94;
                    [v95 addObject:*(*(&v234 + 1) + 8 * k)];
                  }

                  v91 = [v89 countByEnumeratingWithState:&v234 objects:v256 count:16];
                }

                while (v91);
              }

              else
              {
                v33 = v195;
              }

              if ((v81 & 1) != 0 && [v70 count])
              {
                v96 = DALoggingwithCategory();
                if (os_log_type_enabled(v96, type))
                {
                  *buf = 0;
                  _os_log_impl(&dword_0, v96, type, "Couldn't fit all db actions in one request, will batch", buf, 2u);
                }

                v97 = [[ESFolderSyncRequest alloc] initWithFolder:v207 hasRemoteChanges:0 isInitialUberSync:{objc_msgSend(v4, "isInitialUberSync")}];
                [v97 setActions:v70];
                [v97 setContainsPostponedActions:1];
                [(ASAgent *)v209 _appendSyncRequest:v97];
              }

              DAGreenTeaLog();
              v98 = [(ASAgent *)v209 account];
              LOBYTE(v186) = v81 & 1;
              [v98 synchronizeToDosFolder:v33 previousTag:v204 actions:v44 highestIdContext:0 isInitialUberSync:objc_msgSend(v4 isResyncAfterConnectionFailed:"isInitialUberSync") moreLocalChangesAvailable:objc_msgSend(v4 consumer:{"isResyncAfterConnectionFailed"), v186, v209}];

              v38 = v204;
              v29 = 0;
              v30 = 0;
              v31 = 1;
            }

            else
            {
              v125 = DALoggingwithCategory();
              v126 = _CPLog_to_os_log_type[7];
              if (os_log_type_enabled(v125, v126))
              {
                *buf = 0;
                _os_log_impl(&dword_0, v125, v126, "Returning early, no reminder changes to sync to server", buf, 2u);
              }

              v127 = [(ASAgent *)v209 currentlySyncingFolderIds];
              [v127 removeObject:v33];

              v44 = +[DALocalDBGateKeeper sharedGateKeeper];
              [v44 relinquishLocksForWaiter:v209 dataclasses:16 moreComing:0];
              v29 = 0;
              v30 = 0;
              v31 = 0;
              v38 = v204;
            }

            v43 = v192;
          }

          goto LABEL_218;
        }

        v193 = v32;
        v34 = [(ASAgent *)v209 account];
        v35 = [v34 changeTrackingID];
        v36 = [(ASAgent *)v209 account];
        v37 = [v36 accountID];
        v33 = [ASDataHandler newDataHandlerForDataclass:v193 container:0 changeTrackingID:v35 accountID:v37];

        [v33 openDB];
        [(ASAgent *)v209 _cacheFoldersForDataclasses:v193];
        v38 = [v207 folderID];
        if ([v4 isResyncAfterServerError])
        {
          v39 = @"0";
        }

        else
        {
          v39 = [(ASAgent *)v209 _syncKeyForFolderWithId:v38 dataclass:v193];
        }

        v45 = [(ASAgent *)v209 _containerForFolderWithId:v38 dataclass:v193];
        v191 = v39;
        if (!v45)
        {
          v87 = DALoggingwithCategory();
          v88 = _CPLog_to_os_log_type[3];
          v206 = v87;
          if (os_log_type_enabled(v87, v88))
          {
            *buf = 138412546;
            v253 = v38;
            v254 = 2048;
            v255 = v193;
            _os_log_impl(&dword_0, v87, v88, "Asked to sync folder with id %@ and dataclass %lx, but I have no matching container", buf, 0x16u);
          }

          v29 = 0;
          v30 = 0;
          v31 = 0;
          goto LABEL_74;
        }

        v46 = v45;
        [v33 setContainer:v45];
        v194 = v33;
        v205 = v38;
        if (v193 == &dword_4)
        {
          v47 = objc_opt_new();
          v196 = v46;
          v199 = [(ASAgent *)v209 _copyCalendarItemMoveActionsInCalendar:v46 dataHandler:v33 deleteActionsByFolderId:v47];
          v230 = 0u;
          v231 = 0u;
          v232 = 0u;
          v233 = 0u;
          v48 = v47;
          v49 = [v48 countByEnumeratingWithState:&v230 objects:v251 count:16];
          v206 = v48;
          if (v49)
          {
            v50 = v49;
            v51 = *v231;
            v52 = _CPLog_to_os_log_type[3];
            do
            {
              for (m = 0; m != v50; m = m + 1)
              {
                if (*v231 != v51)
                {
                  objc_enumerationMutation(v48);
                }

                v54 = *(*(&v230 + 1) + 8 * m);
                v55 = [v207 folderID];
                v56 = [v55 isEqualToString:v54];

                if (v56)
                {
                  v57 = [v4 actions];
                  v58 = [v48 objectForKeyedSubscript:v54];
                  v59 = [v58 mutableCopy];

                  if (v57)
                  {
                    [v59 addObjectsFromArray:v57];
                  }

                  v60 = [v59 allObjects];
                  [v4 setActions:v60];
                }

                else
                {
                  v61 = [(ASAgent *)v209 account];
                  v57 = [v61 folderWithId:v54];

                  if (v57)
                  {
                    v62 = [[ESFolderSyncRequest alloc] initWithFolder:v57 hasRemoteChanges:0 isInitialUberSync:0];
                    v63 = [v48 objectForKeyedSubscript:v54];
                    v64 = [v63 allObjects];
                    [v62 setActions:v64];

                    v48 = v206;
                    [(ASAgent *)v209 _appendSyncRequest:v62];
                  }

                  else
                  {
                    v65 = DALoggingwithCategory();
                    if (os_log_type_enabled(v65, v52))
                    {
                      *buf = 138412290;
                      v253 = v54;
                      _os_log_impl(&dword_0, v65, v52, "Was told to inject changes for folder with id %@, but that doesn't exist.  Clearing those changes", buf, 0xCu);
                    }

                    v66 = [v48 objectForKeyedSubscript:v54];
                    v67 = [v66 allObjects];
                    v68 = [(ASAgent *)v209 _clearChangeHistoriesWithChangeIdContext:0 dataclass:4 inFolderWithId:v54 pushedActions:v67];

                    if (v68)
                    {
                      [v194 saveContainer];
                    }

                    v48 = v206;
                  }
                }
              }

              v50 = [v48 countByEnumeratingWithState:&v230 objects:v251 count:16];
            }

            while (v50);
          }

          if ([v199 count])
          {
            v30 = 1;
            v26 = v209;
            [(ASAgent *)v209 _appendSyncRequest:v4 atBeginning:1];
            v69 = [v199 allObjects];
            [(ASAgent *)v209 _reallySendMoves:v69];

            v29 = 0;
            v31 = 0;
            v33 = v194;
            v38 = v205;
LABEL_74:
            v43 = v191;
LABEL_215:

            [(ASAgent *)v26 _nilOutContainersForDataclasses:v193];
            [v33 closeDBAndSave:0];
            if (v31)
            {
              goto LABEL_219;
            }

            v174 = [(ASAgent *)v26 currentlySyncingFolderIds];
            [v174 removeObject:v38];

            if (v30)
            {
              goto LABEL_219;
            }

            v175 = +[DALocalDBGateKeeper sharedGateKeeper];
            v176 = v26;
            v44 = v175;
            [v175 relinquishLocksForWaiter:v176 dataclasses:v193 moreComing:0];
LABEL_218:

            v26 = v209;
LABEL_219:

            goto LABEL_220;
          }

          v26 = v209;
          v33 = v194;
          v46 = v196;
          v38 = v205;
        }

        v99 = objc_opt_new();
        if (v39 && ![(__CFString *)v39 isEqualToString:@"0"])
        {
LABEL_111:
          v104 = DALoggingwithCategory();
          v105 = _CPLog_to_os_log_type[7];
          if (os_log_type_enabled(v104, v105))
          {
            *buf = 138412546;
            v253 = v207;
            v254 = 2048;
            v255 = v193;
            _os_log_impl(&dword_0, v104, v105, "external change, folder %@, dataclass %lx", buf, 0x16u);
          }

          v206 = v99;
          v188 = v105;
          if (v193 == (&dword_0 + 2))
          {
            v106 = objc_opt_new();
            v189 = objc_opt_new();
            v107 = [v4 actions];
            v108 = [NSSet setWithArray:v107];
            v190 = v106;
            v109 = [(ASAgent *)v26 _copyABActionsInContainer:v46 existingActions:v108 dataHandler:v33 wantPreserveActions:0 changeContext:v106];
          }

          else
          {
            if (v193 == &dword_4)
            {
              v190 = objc_opt_new();
              v110 = objc_opt_new();
              v111 = [v4 actions];
              [v4 setActions:0];
              if (!v111 || ![v111 count])
              {
                v112 = [v4 skippedActions];

                [v4 setSkippedActions:0];
                v111 = v112;
              }

              v187 = v111;
              v109 = [(ASAgent *)v26 _copyCalendarItemActionsInContainer:v46 existingActions:v111 dataHandler:v33 wantPreserveActions:0 skippedDetachments:v110 changeContext:v190];
              v189 = v110;
              if ([v109 count])
              {
                v197 = objc_opt_new();
                v226 = 0u;
                v227 = 0u;
                v228 = 0u;
                v229 = 0u;
                obj = v109;
                v113 = [obj countByEnumeratingWithState:&v226 objects:v250 count:16];
                if (v113)
                {
                  v114 = v113;
                  v29 = 0;
                  v115 = *v227;
                  do
                  {
                    v116 = 0;
                    v200 = v114;
                    do
                    {
                      if (*v227 != v115)
                      {
                        objc_enumerationMutation(obj);
                      }

                      v117 = *(*(&v226 + 1) + 8 * v116);
                      if ([v117 itemChangeType] == &dword_8 + 1)
                      {
                        v118 = [v117 changedItem];
                        v119 = [(ASAgent *)v209 account];
                        v120 = [v117 serverId];
                        v121 = [v117 instanceId];
                        v122 = [v117 forwardedAttendees];
                        v123 = [v117 forwardedAttendeeUUIDs];
                        [v119 forwardMeeting:v118 withServerId:v120 withInstanceId:v121 withFolderId:v205 toEmailAddresses:v122 withAttendeeUUIDs:v123 consumer:v209];

                        v114 = v200;
                        v29 = 1;
                      }

                      else
                      {
                        [v197 addObject:v117];
                      }

                      v116 = v116 + 1;
                    }

                    while (v114 != v116);
                    v114 = [obj countByEnumeratingWithState:&v226 objects:v250 count:16];
                  }

                  while (v114);
                }

                else
                {
                  v29 = 0;
                }

                v109 = v197;
                v26 = v209;
              }

              else
              {
                v29 = 0;
              }

LABEL_143:
              v128 = [v109 count];
              v129 = DALoggingwithCategory();
              if (os_log_type_enabled(v129, type))
              {
                *buf = 134217984;
                v253 = v128;
                _os_log_impl(&dword_0, v129, type, "Collected %lu changes from local DB", buf, 0xCu);
              }

              v201 = v109;
              if (v191 && (-[__CFString isEqualToString:](v191, "isEqualToString:", @"0") & 1) == 0 && !v128 && ([v4 hasRemoteChanges] & 1) == 0 && (objc_msgSend(v4, "isInitialUberSync") & 1) == 0)
              {
                v130 = DALoggingwithCategory();
                v38 = v205;
                if (os_log_type_enabled(v130, v188))
                {
                  *buf = 0;
                  _os_log_impl(&dword_0, v130, v188, "returning early, as we have a folder change with no remote changes, and no local changes", buf, 2u);
                }

                v31 = 0;
                v43 = v191;
                goto LABEL_205;
              }

              [v207 setHasRemoteChanges:0];
              v130 = objc_opt_new();
              v131 = objc_opt_new();
              v132 = [v4 skippedActions];

              v133 = v132 != 0;
              v38 = v205;
              if (v132)
              {
                v134 = [v4 skippedActions];
                [v131 addObjectsFromArray:v134];
              }

              obja = v131;
              v43 = v191;
              if ([v189 count])
              {
                [v131 addObjectsFromArray:v189];
                v133 = 1;
              }

              if (!v191 || ([(__CFString *)v191 isEqualToString:@"0"]& 1) != 0)
              {
                if (v133)
                {
LABEL_157:
                  v135 = obja;
                  if (-[NSObject count](v130, "count") || [obja count])
                  {
                    v136 = DALoggingwithCategory();
                    if (os_log_type_enabled(v136, type))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_0, v136, type, "Couldn't fit all db actions in one request, will batch", buf, 2u);
                    }

                    v137 = [[ESFolderSyncRequest alloc] initWithFolder:v207 hasRemoteChanges:0 isInitialUberSync:{objc_msgSend(v4, "isInitialUberSync")}];
                    if (v130 && [v130 count])
                    {
                      [v137 setActions:v130];
                    }

                    if (obja && [obja count])
                    {
                      [v137 setSkippedActions:obja];
                    }

                    v138 = 1;
                    [v137 setContainsPostponedActions:1];
                    [(ASAgent *)v26 _appendSyncRequest:v137];

                    v43 = v191;
                  }

                  else
                  {
                    v138 = 1;
                  }

                  goto LABEL_197;
                }

LABEL_196:
                v138 = 0;
                v135 = obja;
LABEL_197:
                if (v193 == (&dword_0 + 2))
                {
                  DAGreenTeaLog();
                  [(ASAgent *)v26 account];
                  v160 = v159 = v43;
                  v161 = [v4 isInitialUberSync];
                  BYTE2(v186) = v138;
                  LOWORD(v186) = [v4 isResyncAfterConnectionFailed];
                  [v160 synchronizeContactsFolder:v38 previousTag:v159 previousSyncToken:0 actions:v206 highestIdContext:v190 isInitialUberSync:v161 isResyncAfterConnectionFailed:v186 previousTagIsSuspect:v26 moreLocalChangesAvailable:? consumer:?];
LABEL_203:

                  v43 = v191;
                  goto LABEL_204;
                }

                if (v193 == &dword_4)
                {
                  DAGreenTeaLog();
                  [(ASAgent *)v26 account];
                  v160 = v162 = v43;
                  LOBYTE(v186) = v138;
                  [v160 synchronizeEventsFolder:v38 previousTag:v162 actions:v206 highestIdContext:v190 isInitialUberSync:objc_msgSend(v4 isResyncAfterConnectionFailed:"isInitialUberSync") moreLocalChangesAvailable:objc_msgSend(v4 consumer:{"isResyncAfterConnectionFailed"), v186, v26}];
                  goto LABEL_203;
                }

                if (v193 != &stru_20)
                {
LABEL_204:

                  v31 = 1;
LABEL_205:

                  v33 = v194;
                  if (v193 == &dword_4)
                  {
                    v212 = 0u;
                    v213 = 0u;
                    v210 = 0u;
                    v211 = 0u;
                    v168 = v206;
                    v169 = [v168 countByEnumeratingWithState:&v210 objects:v246 count:16];
                    if (v169)
                    {
                      v170 = v169;
                      v171 = *v211;
                      do
                      {
                        for (n = 0; n != v170; n = n + 1)
                        {
                          if (*v211 != v171)
                          {
                            objc_enumerationMutation(v168);
                          }

                          v173 = [*(*(&v210 + 1) + 8 * n) event];
                          [v173 setCalEvent:0];
                        }

                        v170 = [v168 countByEnumeratingWithState:&v210 objects:v246 count:16];
                      }

                      while (v170);
                    }

                    v38 = v205;
                    v43 = v191;
                  }

                  v30 = 0;
                  goto LABEL_215;
                }

LABEL_202:
                [(ASAgent *)v26 account];
                v160 = v163 = v43;
                v164 = +[ASLocalDBHelper sharedInstance];
                v165 = [v164 noteDB];
                v166 = [v4 isInitialUberSync];
                BYTE2(v186) = v138;
                BYTE1(v186) = [v4 isResyncAfterConnectionFailed];
                LOBYTE(v186) = v166;
                v167 = v163;
                v135 = obja;
                [v160 synchronizeNotesFolder:v205 noteContext:v165 previousTag:v167 actions:v206 changeSet:v190 notesToDeleteAfterSync:0 isInitialUberSync:v186 isResyncAfterConnectionFailed:v26 moreLocalChangesAvailable:? consumer:?];

                v38 = v205;
                goto LABEL_203;
              }

              if (v193 == &stru_20)
              {
                v139 = [v109 allObjects];
                [v206 addObjectsFromArray:v139];

                if ((v133 & 1) == 0)
                {
                  v138 = 0;
                  goto LABEL_202;
                }

                goto LABEL_157;
              }

              if (v193 == &dword_4)
              {
                v224 = 0u;
                v225 = 0u;
                v222 = 0u;
                v223 = 0u;
                v140 = v109;
                v141 = [v140 countByEnumeratingWithState:&v222 objects:v249 count:16];
                if (v141)
                {
                  v142 = v141;
                  v143 = *v223;
LABEL_174:
                  v144 = 0;
                  while (1)
                  {
                    if (*v223 != v143)
                    {
                      objc_enumerationMutation(v140);
                    }

                    v145 = *(*(&v222 + 1) + 8 * v144);
                    if ([v145 isOrganizerUpdate] & 1) != 0 || (objc_msgSend(v145, "isSkippedDetachment"))
                    {
                      break;
                    }

                    if (v142 == ++v144)
                    {
                      v142 = [v140 countByEnumeratingWithState:&v222 objects:v249 count:16];
                      v109 = v201;
                      if (v142)
                      {
                        goto LABEL_174;
                      }

                      goto LABEL_181;
                    }
                  }

                  if ([v206 count])
                  {
                    v177 = [v140 allObjects];
                    [v130 addObjectsFromArray:v177];

                    v38 = v205;
                    v43 = v191;
                    goto LABEL_157;
                  }

                  v216 = 0u;
                  v217 = 0u;
                  v214 = 0u;
                  v215 = 0u;
                  v149 = v140;
                  v178 = [v149 countByEnumeratingWithState:&v214 objects:v247 count:16];
                  if (v178)
                  {
                    v179 = v178;
                    v180 = *v215;
                    v181 = 25;
                    do
                    {
                      v182 = 0;
                      v198 = v181;
                      do
                      {
                        if (*v215 != v180)
                        {
                          objc_enumerationMutation(v149);
                        }

                        v183 = *(*(&v214 + 1) + 8 * v182);
                        v156 = __OFSUB__(v181--, 1);
                        if (v181 < 0 != v156)
                        {
                          LOBYTE(v133) = 1;
                          v184 = v130;
                        }

                        else if ([*(*(&v214 + 1) + 8 * v182) isOrganizerUpdate])
                        {
                          v184 = v206;
                        }

                        else
                        {
                          v185 = [v183 isSkippedDetachment];
                          if (v185)
                          {
                            v184 = v206;
                          }

                          else
                          {
                            v184 = v130;
                          }

                          LOBYTE(v133) = v185 ^ 1 | v133;
                        }

                        [v184 addObject:v183];
                        v182 = v182 + 1;
                      }

                      while (v179 != v182);
                      v181 = v198 - v179;
                      v179 = [v149 countByEnumeratingWithState:&v214 objects:v247 count:16];
                    }

                    while (v179);
                  }

LABEL_195:

                  v26 = v209;
                  v38 = v205;
                  v43 = v191;
                  if (v133)
                  {
                    goto LABEL_157;
                  }

                  goto LABEL_196;
                }

LABEL_181:
              }

              v146 = [v206 count];
              v147 = v109;
              v148 = v146;
              v218 = 0u;
              v219 = 0u;
              v220 = 0u;
              v221 = 0u;
              v149 = v147;
              v150 = [v149 countByEnumeratingWithState:&v218 objects:v248 count:16];
              if (v150)
              {
                v151 = v150;
                v152 = 25 - v148;
                v153 = *v219;
                do
                {
                  v154 = 0;
                  v155 = v152;
                  do
                  {
                    if (*v219 != v153)
                    {
                      objc_enumerationMutation(v149);
                    }

                    v156 = __OFSUB__(v155--, 1);
                    v157 = v155 < 0 != v156;
                    if (v155 < 0 != v156)
                    {
                      v158 = v130;
                    }

                    else
                    {
                      v158 = v206;
                    }

                    LOBYTE(v133) = v157 | v133;
                    [v158 addObject:*(*(&v218 + 1) + 8 * v154)];
                    v154 = v154 + 1;
                  }

                  while (v151 != v154);
                  v152 -= v151;
                  v151 = [v149 countByEnumeratingWithState:&v218 objects:v248 count:16];
                }

                while (v151);
              }

              goto LABEL_195;
            }

            if (v193 == &stru_20)
            {
              v124 = objc_opt_new();
              v189 = objc_opt_new();
              v190 = v124;
              v109 = [(ASAgent *)v26 _copyNotesActionsInNoteStore:v46 existingActions:0 dataHandler:v33 wantPreserveActions:0 changeSet:v124];
            }

            else
            {
              v189 = objc_opt_new();
              v190 = 0;
              v109 = 0;
            }
          }

          v29 = 0;
          goto LABEL_143;
        }

        if ([v33 wipeServerIds])
        {
          [v33 saveContainer];
        }

        if (v193 == (&dword_0 + 2))
        {
          v100 = objc_opt_new();
          v101 = [(ASAgent *)v26 _copyABActionsInContainer:v46 existingActions:0 dataHandler:v33 wantPreserveActions:1 changeContext:v100];
        }

        else if (v193 == &dword_4)
        {
          v100 = objc_opt_new();
          v101 = [(ASAgent *)v26 _copyCalendarItemActionsInContainer:v46 existingActions:0 dataHandler:v33 wantPreserveActions:1 skippedDetachments:0 changeContext:v100];
        }

        else
        {
          if (v193 != &stru_20)
          {
            v100 = 0;
LABEL_110:
            [(ASAgent *)v26 _clearChangeHistoriesWithChangeIdContext:v100 dataclass:v193 inFolderWithId:v38 pushedActions:0];

            goto LABEL_111;
          }

          v100 = objc_opt_new();
          v101 = [(ASAgent *)v26 _copyNotesActionsInNoteStore:v46 existingActions:0 dataHandler:v33 wantPreserveActions:1 changeSet:v100];
        }

        v102 = v101;
        if (v101)
        {
          v103 = [v101 allObjects];
          [v99 addObjectsFromArray:v103];
        }

        v38 = v205;
        goto LABEL_110;
      }

      v29 = 0;
      v30 = 0;
      v31 = 0;
    }
  }

LABEL_220:
  if ((v30 & 1) == 0 && (v31 & 1) == 0 && (v29 & 1) == 0)
  {
    [(ASAgent *)v26 _fireWaitingFolderItemSyncRequests];
  }
}

- (void)_syncRequest:(id)a3
{
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138412290;
    v14 = v4;
    _os_log_impl(&dword_0, v5, v6, "putting request %@ in for the gate", buf, 0xCu);
  }

  v7 = [v4 folder];
  v8 = [v7 dataclass];
  if (v8 <= 0x20 && ((1 << v8) & 0x100010014) != 0)
  {
    v9 = +[DALocalDBGateKeeper sharedGateKeeper];
    v10 = [v7 dataclass];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_15FFC;
    v11[3] = &unk_6CED0;
    v11[4] = self;
    v12 = v4;
    [v9 registerWaiter:self forDataclassLocks:v10 completionHandler:v11];
  }
}

- (void)folderContentsUpdate:(id)a3
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:DAChangedFolderIDs];

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        v11 = [ESFolderSyncRequest alloc];
        v12 = [(ASAgent *)self account];
        v13 = [v12 folderWithId:v10];
        v14 = [v11 initWithFolder:v13 hasRemoteChanges:1 isInitialUberSync:0];

        [(ASAgent *)self _appendSyncRequest:v14];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }
}

- (void)_fireWaitingFolderItemSyncRequests
{
  v3 = [(ASAgent *)self folderItemSyncRequestLock];
  [v3 lock];

  v4 = [(ASAgent *)self currentlySyncingFolderIds];

  if (!v4)
  {
    v5 = [[NSMutableSet alloc] initWithCapacity:1];
    [(ASAgent *)self setCurrentlySyncingFolderIds:v5];
  }

  v6 = [[NSMutableArray alloc] initWithCapacity:1];
  if ([(ASAgent *)self numLocalFolderUpdatesInFlight])
  {
    goto LABEL_24;
  }

  v7 = [(ASAgent *)self outstandingFolderRequests];
  v8 = [v7 copy];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (!v10)
  {
    goto LABEL_23;
  }

  v12 = v10;
  v35 = v6;
  v13 = 0;
  v14 = *v41;
  type = _CPLog_to_os_log_type[7];
  v15 = _CPLog_to_os_log_type[3];
  *&v11 = 138412290;
  v33 = v11;
  do
  {
    v16 = 0;
    v17 = v13;
    do
    {
      if (*v41 != v14)
      {
        objc_enumerationMutation(v9);
      }

      v13 = *(*(&v40 + 1) + 8 * v16);

      v18 = [v13 folder];
      v19 = [v18 folderID];

      if (v19)
      {
        v20 = [(ASAgent *)self currentlySyncingFolderIds];
        v21 = [v20 containsObject:v19];

        if (v21)
        {
          goto LABEL_20;
        }

        if ([v13 containsPostponedActions])
        {
          v22 = DALoggingwithCategory();
          if (os_log_type_enabled(v22, type))
          {
            *buf = v33;
            v46 = v13;
            _os_log_impl(&dword_0, v22, type, "A request containing postponed actions will not be synced. Request: %@", buf, 0xCu);
          }

          goto LABEL_19;
        }

        v24 = [(ASAgent *)self currentlySyncingFolderIds];
        [v24 addObject:v19];

        [v35 addObject:v13];
      }

      else
      {
        v23 = DALoggingwithCategory();
        if (os_log_type_enabled(v23, v15))
        {
          *buf = 136315394;
          v46 = "[ASAgent(FolderContentsSync) _fireWaitingFolderItemSyncRequests]";
          v47 = 2112;
          v48 = v13;
          _os_log_impl(&dword_0, v23, v15, "%s: asked to sync folder request %@, but that has no server id.  Dropping this sync on the floor", buf, 0x16u);
        }
      }

      v22 = [(ASAgent *)self outstandingFolderRequests];
      [v22 removeObject:v13];
LABEL_19:

LABEL_20:
      v16 = v16 + 1;
      v17 = v13;
    }

    while (v12 != v16);
    v12 = [v9 countByEnumeratingWithState:&v40 objects:v49 count:16];
  }

  while (v12);

  v6 = v35;
LABEL_23:

LABEL_24:
  v25 = [(ASAgent *)self folderItemSyncRequestLock];
  [v25 unlock];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v26 = v6;
  v27 = [v26 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = 0;
    v30 = *v37;
    do
    {
      v31 = 0;
      v32 = v29;
      do
      {
        if (*v37 != v30)
        {
          objc_enumerationMutation(v26);
        }

        v29 = *(*(&v36 + 1) + 8 * v31);

        [(ASAgent *)self _syncRequest:v29];
        v31 = v31 + 1;
        v32 = v29;
      }

      while (v28 != v31);
      v28 = [v26 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v28);
  }
}

- (void)_appendSyncRequest:(id)a3 atBeginning:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = DALoggingwithCategory();
  v8 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v7, v8))
  {
    *buf = 138412290;
    v38 = v6;
    _os_log_impl(&dword_0, v7, v8, "Appending sync request %@", buf, 0xCu);
  }

  v9 = [(ASAgent *)self folderItemSyncRequestLock];
  [v9 lock];

  v10 = [(ASAgent *)self outstandingFolderRequests];

  if (!v10)
  {
    v11 = [[NSMutableArray alloc] initWithCapacity:1];
    [(ASAgent *)self setOutstandingFolderRequests:v11];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = [(ASAgent *)self outstandingFolderRequests];
  v13 = [v12 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v13)
  {
    v14 = v13;
    v31 = v4;
    v32 = v8;
    v15 = 0;
    v16 = *v34;
    while (2)
    {
      v17 = 0;
      v18 = v15;
      do
      {
        if (*v34 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v15 = *(*(&v33 + 1) + 8 * v17);

        v19 = [v15 folder];
        v20 = [v6 folder];
        v21 = [v19 isEqual:v20];

        if (v21)
        {
          if ([v6 hasRemoteChanges])
          {
            [v15 setHasRemoteChanges:1];
          }

          if ([v6 isResyncAfterConnectionFailed])
          {
            [v15 setIsResyncAfterConnectionFailed:1];
          }

          if ([v6 isResyncAfterServerError])
          {
            [v15 setIsResyncAfterServerError:1];
          }

          if (([v6 containsPostponedActions] & 1) == 0)
          {
            [v15 setContainsPostponedActions:0];
          }

          v23 = objc_opt_new();
          v24 = [v15 actions];
          [v23 addObjectsFromArray:v24];

          v25 = [v6 actions];
          [v23 addObjectsFromArray:v25];

          v26 = DALoggingwithCategory();
          if (os_log_type_enabled(v26, v32))
          {
            v27 = [v6 actions];
            v28 = [v15 actions];
            *buf = 138413058;
            v38 = v15;
            v39 = 2112;
            v40 = v27;
            v41 = 2112;
            v42 = v28;
            v43 = 2112;
            v44 = v23;
            _os_log_impl(&dword_0, v26, v32, "sync request %@ had old actions %@, new actions %@, combined actions %@", buf, 0x2Au);
          }

          v29 = [v23 allObjects];
          [v15 setActions:v29];

          goto LABEL_28;
        }

        v17 = v17 + 1;
        v18 = v15;
      }

      while (v14 != v17);
      v14 = [v12 countByEnumeratingWithState:&v33 objects:v45 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }

    v4 = v31;
  }

  v22 = [(ASAgent *)self outstandingFolderRequests];
  v15 = v22;
  if (v4)
  {
    [v22 insertObject:v6 atIndex:0];
  }

  else
  {
    [v22 addObject:v6];
  }

LABEL_28:

  v30 = [(ASAgent *)self folderItemSyncRequestLock];
  [v30 unlock];

  [(ASAgent *)self _fireWaitingFolderItemSyncRequests];
}

- (BOOL)_getHierarchyChangeForDataclass:(int64_t)a3 changedItemId:(int *)a4 changeType:(unint64_t *)a5 externalId:(id *)a6 changeTableIndices:(__CFArray *)a7
{
  if (a3 == 4)
  {
    v117 = 0;
    theArray = 0;
    v115 = 0;
    v116 = 0;
    theDict = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
    v84 = objc_opt_new();
    v85 = objc_opt_new();
    v89 = objc_opt_new();
    v92 = objc_opt_new();
    v100 = objc_opt_new();
    v9 = [(ASAgent *)self account];
    v10 = [v9 _copyExchangeCalendarStore:0];

    v11 = &PLLogRegisteredEvent_ptr;
    v97 = self;
    if (v10)
    {
      v12 = +[ASLocalDBHelper sharedInstance];
      v13 = [(ASAgent *)self account];
      v7 = [v13 accountID];
      [v12 calDatabaseForAccountID:v7];
      CalDatabaseCopyCalendarChangesWithIndicesInStore();

      CFRelease(v10);
    }

    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    obj = [v85 copy];
    v95 = [obj countByEnumeratingWithState:&v111 objects:v127 count:16];
    if (v95)
    {
      allocator = *v112;
      type = _CPLog_to_os_log_type[6];
      do
      {
        v14 = 0;
        do
        {
          v101 = v7;
          if (*v112 != allocator)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v111 + 1) + 8 * v14);
          v16 = [v100 objectForKeyedSubscript:v15];
          v17 = [(ASAgent *)self account];
          v98 = v16;
          v18 = [v17 folderWithId:v16];

          v19 = [v11[390] sharedInstance];
          v20 = [(ASAgent *)self account];
          v21 = [v20 accountID];
          [v19 calDatabaseForAccountID:v21];
          [v15 intValue];
          v22 = CalDatabaseCopyCalendarWithUID();

          if (v22)
          {
            v23 = CalCalendarCopyTitle();
            v24 = CalCalendarCopyExternalID();
            v25 = [v23 length];
            if (!v25)
            {
              v90 = [v18 folderName];
              if (![v90 length])
              {
                v26 = 0;
                goto LABEL_18;
              }
            }

            v7 = [v18 folderName];
            if ([v23 isEqualToString:v7])
            {
              v101 = v7;
              v26 = 1;
LABEL_18:
              v27 = [v24 length];
              v93 = v24;
              if (v27 || ([v18 folderID], v88 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v88, "length")))
              {
                v28 = v24;
                v29 = v26;
                v30 = [v18 folderID];
                v31 = [v28 isEqualToString:v30];

                if (v27)
                {
                  v11 = &PLLogRegisteredEvent_ptr;
                  if (v29)
                  {
                    goto LABEL_22;
                  }

                  goto LABEL_23;
                }

                LOBYTE(v26) = v29;
              }

              else
              {
                v31 = 1;
              }

              v11 = &PLLogRegisteredEvent_ptr;
              if (v26)
              {
LABEL_22:
              }

LABEL_23:
              if (v25)
              {
                v24 = v93;
                if (!v31)
                {
                  goto LABEL_30;
                }
              }

              else
              {

                v24 = v93;
                if ((v31 & 1) == 0)
                {
                  goto LABEL_30;
                }
              }

              v32 = DALoggingwithCategory();
              if (os_log_type_enabled(v32, type))
              {
                *buf = 138412546;
                v120 = v18;
                v121 = 2112;
                *v122 = v15;
                _os_log_impl(&dword_0, v32, type, "Will drop non-interesting folder change for %@ %@", buf, 0x16u);
              }

              [v92 addObject:v15];
              [v85 removeObject:v15];
LABEL_30:
              self = v97;
              v7 = v101;
            }

            else
            {

              if (!v25)
              {
              }
            }

            CFRelease(v22);
          }

          v14 = v14 + 1;
        }

        while (v95 != v14);
        v33 = [obj countByEnumeratingWithState:&v111 objects:v127 count:16];
        v95 = v33;
      }

      while (v33);
    }

    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v102 = [v89 copy];
    v34 = [v102 countByEnumeratingWithState:&v107 objects:v126 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v108;
      v37 = _CPLog_to_os_log_type[6];
      do
      {
        for (i = 0; i != v35; i = i + 1)
        {
          if (*v108 != v36)
          {
            objc_enumerationMutation(v102);
          }

          v39 = *(*(&v107 + 1) + 8 * i);
          v40 = [v100 objectForKeyedSubscript:v39];
          v41 = [(ASAgent *)v97 account];
          v42 = [v41 folderWithId:v40];

          if (!v42)
          {
            v43 = DALoggingwithCategory();
            if (os_log_type_enabled(v43, v37))
            {
              *buf = 138412546;
              v120 = v39;
              v121 = 2112;
              *v122 = v40;
              _os_log_impl(&dword_0, v43, v37, "Have a delete for a non-existent folder.  Will drop delete request. %@ %@", buf, 0x16u);
            }

            [v92 addObject:v39];
            [v89 removeObject:v39];
          }
        }

        v35 = [v102 countByEnumeratingWithState:&v107 objects:v126 count:16];
      }

      while (v35);
    }

    v44 = v84;
    v45 = v85;
    v46 = theDict;
    v47 = v97;
    if ([v92 count])
    {
      v48 = DALoggingwithCategory();
      v49 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v48, v49))
      {
        *buf = 138412290;
        v120 = v92;
        _os_log_impl(&dword_0, v48, v49, "Dropping collapsed changes with ids %@", buf, 0xCu);
      }

      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v50 = v92;
      v51 = [v50 countByEnumeratingWithState:&v103 objects:v125 count:16];
      if (!v51)
      {
        goto LABEL_65;
      }

      v52 = v51;
      v96 = 0;
      v53 = *v104;
      do
      {
        v54 = 0;
        v99 = v52;
        do
        {
          if (*v104 != v53)
          {
            objc_enumerationMutation(v50);
          }

          Value = CFDictionaryGetValue(v46, [*(*(&v103 + 1) + 8 * v54) intValue]);
          if (Value && CFArrayGetCount(Value))
          {
            +[ASLocalDBHelper sharedInstance];
            v57 = v56 = v53;
            v58 = [(ASAgent *)v47 account];
            v59 = [v58 accountID];
            [v57 calDatabaseForAccountID:v59];
            v60 = [(ASAgent *)v47 account];
            v61 = [v60 changeTrackingID];
            v96 = 1;
            CalDatabaseClearIndividualChangeRowIDsForClient();

            v47 = v97;
            v46 = theDict;

            v53 = v56;
            v52 = v99;
          }

          v54 = v54 + 1;
        }

        while (v52 != v54);
        v52 = [v50 countByEnumeratingWithState:&v103 objects:v125 count:16];
      }

      while (v52);

      v44 = v84;
      v45 = v85;
      if (v96)
      {
        v50 = +[ASLocalDBHelper sharedInstance];
        v62 = [(ASAgent *)v47 account];
        v63 = [v62 accountID];
        [v50 calSaveDatabaseForAccountID:v63];

LABEL_65:
      }
    }

    v64 = v89;
    if ([v44 count] || objc_msgSend(v45, "count") || objc_msgSend(v89, "count"))
    {
      if ([v44 count])
      {
        v65 = 0;
        v66 = v44;
        goto LABEL_76;
      }

      if ([v45 count])
      {
        v65 = 1;
        v66 = v45;
        goto LABEL_76;
      }

      if ([v89 count])
      {
        v65 = 2;
        v66 = v89;
LABEL_76:
        v68 = [v66 anyObject];
        v67 = v68;
        if (v68)
        {
          v69 = [v68 intValue];
          *a4 = v69;
          *a5 = v65;
          v70 = [v100 objectForKeyedSubscript:v67];
          *a6 = v70;
          v71 = CFDictionaryGetValue(v46, v69);
          if (v71)
          {
            v72 = v71;
            if (CFArrayGetCount(v71))
            {
              v128.length = CFArrayGetCount(v72);
              v128.location = 0;
              CFArrayAppendArray(a7, v72, v128);
            }
          }

          if (shouldDALogAtLevel())
          {
            v73 = CFCopyDescription(a7);
            v74 = DALoggingwithCategory();
            v75 = _CPLog_to_os_log_type[6];
            if (os_log_type_enabled(v74, v75))
            {
              v76 = *a5;
              v77 = *a4;
              v78 = *a6;
              *buf = 134218754;
              v120 = v76;
              v121 = 1024;
              *v122 = v77;
              *&v122[4] = 2112;
              *&v122[6] = v78;
              v123 = 2112;
              v124 = v73;
              _os_log_impl(&dword_0, v74, v75, "Acting on folder change with type %ld item id %d external id %@, change indices %@", buf, 0x26u);
            }

            CFRelease(v73);
            v45 = v85;
            v46 = theDict;
          }

          LOBYTE(v67) = 1;
          v64 = v89;
        }

        goto LABEL_85;
      }
    }

    LOBYTE(v67) = 0;
LABEL_85:
    CFRelease(v46);

    return v67;
  }

  LOBYTE(v67) = 0;
  return v67;
}

- (BOOL)_handleReminderChangedFolder:(id)a3 changeType:(unint64_t)a4
{
  v5 = a3;
  v6 = [(ASAgent *)self account];
  v7 = [v6 visibleFolders];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_18320;
  v13[3] = &unk_6CF20;
  v13[4] = self;
  v14 = v5;
  v15 = v7;
  v8 = v7;
  v9 = v5;
  v10 = objc_retainBlock(v13);
  [(ASAgent *)self setNumLocalFolderUpdatesInFlight:[(ASAgent *)self numLocalFolderUpdatesInFlight]+ 1];
  v11 = [(ASAgent *)self account];
  [v11 syncLocallyChangedFolder:v9 consumer:self completionBlock:v10];

  return 1;
}

- (void)_appendFolderHierarchyChangesForFoldersOfDataclasses:(int64_t)a3
{
  v3 = a3;
  if (![(ASAgent *)self numLocalFolderUpdatesInFlight])
  {
    v5 = [(ASAgent *)self account];
    v6 = [v5 enabledDataclassesBitmask] & v3;

    if ((v6 & 4) != 0)
    {
      v10 = +[ASLocalDBHelper sharedInstance];
      v31 = [(ASAgent *)self account];
      v32 = [v31 accountID];
      v33 = [(ASAgent *)self account];
      v34 = [v33 changeTrackingID];
      [v10 calOpenDatabaseForAccountID:v32 clientID:v34];

      v52 = 0;
      v51 = 0;
      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, 0);
      v50 = 0;
      LODWORD(v33) = [(ASAgent *)self _getHierarchyChangeForDataclass:4 changedItemId:&v52 changeType:&v51 externalId:&v50 changeTableIndices:Mutable];
      v18 = v50;
      if (v33)
      {
        [(ASAgent *)self _handleLocallyChangedFolderWithChangedItemId:v52 changeType:v51 externalId:v18 changeTableIndices:Mutable dataclass:4];
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      v36 = [(ASAgent *)self account];
      v37 = [v36 accountID];
      [v10 calCloseDatabaseForAccountID:v37 save:0];
    }

    else
    {
      if ((v6 & 0x10) == 0)
      {
        return;
      }

      v7 = [(ASAgent *)self sharedReminderKitHelper];
      v8 = [(ASAgent *)self account];
      v9 = [v7 localAddedFoldersForAccount:v8];

      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v46 objects:v55 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v47;
        do
        {
          v14 = 0;
          do
          {
            if (*v47 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [(ASAgent *)self _handleReminderChangedFolder:*(*(&v46 + 1) + 8 * v14) changeType:0];
            v14 = v14 + 1;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v46 objects:v55 count:16];
        }

        while (v12);
      }

      v15 = [(ASAgent *)self sharedReminderKitHelper];
      v16 = [(ASAgent *)self account];
      v17 = [v15 localModifiedFoldersForAccount:v16];

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v42 objects:v54 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v43;
        do
        {
          v22 = 0;
          do
          {
            if (*v43 != v21)
            {
              objc_enumerationMutation(v18);
            }

            [(ASAgent *)self _handleReminderChangedFolder:*(*(&v42 + 1) + 8 * v22) changeType:1];
            v22 = v22 + 1;
          }

          while (v20 != v22);
          v20 = [v18 countByEnumeratingWithState:&v42 objects:v54 count:16];
        }

        while (v20);
      }

      v23 = [(ASAgent *)self sharedReminderKitHelper];
      v24 = [(ASAgent *)self account];
      v25 = [v23 localDeletedFoldersForAccount:v24];

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v26 = v25;
      v27 = [v26 countByEnumeratingWithState:&v38 objects:v53 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v39;
        do
        {
          v30 = 0;
          do
          {
            if (*v39 != v29)
            {
              objc_enumerationMutation(v26);
            }

            [(ASAgent *)self _handleReminderChangedFolder:*(*(&v38 + 1) + 8 * v30) changeType:2, v38];
            v30 = v30 + 1;
          }

          while (v28 != v30);
          v28 = [v26 countByEnumeratingWithState:&v38 objects:v53 count:16];
        }

        while (v28);
      }
    }
  }
}

- (void)_nilOutContainersForDataclasses:(int64_t)a3
{
  v3 = a3;
  if ((a3 & 2) == 0)
  {
    if ((a3 & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    [(ASAgent *)self setEventCalendarsByFolderId:0];
    if ((v3 & 0x20) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  [(ASAgent *)self setContactStoresByFolderId:0];
  if ((v3 & 4) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v3 & 0x20) == 0)
  {
    return;
  }

LABEL_7:
  v5 = [(ASAgent *)self noteStoreObjectIdsByFolderId];
  [v5 removeAllObjects];
}

- (void)_refirePendingCalendarInvitations
{
  v3 = [(ASAgent *)self account];
  v4 = [v3 enabledForDADataclass:4];

  if (v4)
  {
    v5 = [(ASAgent *)self account];
    v6 = [v5 changeTrackingID];
    v7 = [(ASAgent *)self account];
    v8 = [v7 accountID];
    v9 = [ASDataHandler newDataHandlerForDataclass:4 container:0 changeTrackingID:v6 accountID:v8];

    v50 = v9;
    [v9 openDB];
    [(ASAgent *)self _cacheFoldersForDataclasses:4];
    v10 = [(ASAgent *)self account];
    v11 = [v10 eventsFolders];

    if (v11)
    {
      v51 = objc_opt_new();
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      obj = v11;
      v56 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
      if (v56)
      {
        v54 = 0;
        v55 = *v63;
        v12 = &PLLogRegisteredEvent_ptr;
        v53 = v11;
        do
        {
          for (i = 0; i != v56; i = i + 1)
          {
            if (*v63 != v55)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v62 + 1) + 8 * i);
            v15 = [v14 folderID];

            if (!v15)
            {
              sub_480CC();
            }

            v16 = [v14 folderID];
            v17 = [(ASAgent *)self _containerForFolderWithId:v16 dataclass:4];

            if (v17)
            {
              v57 = i;
              v18 = CalCalendarCopyEventsWithRespondedExternalStatus();
              if ([v18 count])
              {
                v19 = objc_opt_new();
                if ([v18 count])
                {
                  v20 = 0;
                  do
                  {
                    v21 = [v18 objectAtIndexedSubscript:v20];

                    v22 = CalCalendarItemCopyExternalID();
                    v23 = objc_alloc(v12[380]);
                    v24 = [(ASAgent *)self account];
                    v25 = [v23 initWithCalEvent:v21 serverID:v22 account:v24];

                    v12 = &PLLogRegisteredEvent_ptr;
                    [v25 setCalEvent:0];
                    v26 = [[ASAction alloc] initWithItemChangeType:1 changedItem:v25 serverId:0];
                    [v19 addObject:v26];

                    ++v20;
                  }

                  while (v20 < [v18 count]);
                }

                if ([v19 count])
                {
                  v27 = [[ESFolderSyncRequest alloc] initWithFolder:v14 hasRemoteChanges:0 isInitialUberSync:0];
                  [v27 setActions:v19];
                  [v51 addObject:v27];
                }
              }

              v28 = CalCalendarCopyEventsWithExternalTrackingStatus();
              if ([v28 count])
              {
                v29 = objc_opt_new();
                v30 = objc_opt_new();
                if ([v28 count])
                {
                  v31 = 0;
                  do
                  {
                    v32 = [v28 objectAtIndexedSubscript:v31];

                    v33 = CalEventCopyOriginalEvent();
                    if (v33)
                    {
                      v34 = v33;
                      v35 = CalCalendarItemCopyExternalID();
                      v36 = objc_alloc(v12[380]);
                      v37 = [(ASAgent *)self account];
                      v38 = [v36 initWithCalEvent:v34 serverID:v35 account:v37];

                      CFRelease(v34);
                    }

                    else
                    {
                      v35 = CalCalendarItemCopyExternalID();
                      v39 = objc_alloc(v12[380]);
                      v40 = [(ASAgent *)self account];
                      v38 = [v39 initWithCalEvent:v32 serverID:v35 account:v40];
                    }

                    v41 = [v38 serverID];
                    if (v41 && ([v29 containsObject:v41] & 1) == 0)
                    {
                      [v30 addObject:v38];
                      [v29 addObject:v41];
                    }

                    ++v31;
                    v12 = &PLLogRegisteredEvent_ptr;
                  }

                  while (v31 < [v28 count]);
                }

                v42 = v54;
                if ([v30 count])
                {
                  v43 = [(ASAgent *)self account];
                  v42 = v54 | [v43 sendEmailsForCalEvents:v30 consumer:self];
                }

                v54 = v42;
              }

              v11 = v53;
              i = v57;
            }
          }

          v56 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
        }

        while (v56);
      }

      else
      {
        LOBYTE(v54) = 0;
      }

      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v45 = v51;
      v46 = [v45 countByEnumeratingWithState:&v58 objects:v66 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v59;
        do
        {
          for (j = 0; j != v47; j = j + 1)
          {
            if (*v59 != v48)
            {
              objc_enumerationMutation(v45);
            }

            [(ASAgent *)self _appendSyncRequest:*(*(&v58 + 1) + 8 * j)];
          }

          v47 = [v45 countByEnumeratingWithState:&v58 objects:v66 count:16];
        }

        while (v47);
      }

      v44 = v54;
    }

    else
    {
      v44 = 0;
    }

    [(ASAgent *)self _nilOutContainersForDataclasses:4];
    [v50 closeDBAndSave:v44 & 1];
  }
}

- (id)waiterID
{
  v2 = [(ASAgent *)self account];
  v3 = [v2 accountID];

  return v3;
}

- (void)fetchAttachmentTask:(id)a3 completedWithStatus:(int64_t)a4 dataWasBase64:(BOOL)a5 error:(id)a6
{
  v9 = a3;
  v10 = a6;
  if (v10)
  {
    v11 = DALoggingwithCategory();
    v12 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v11, v12))
    {
      v13 = [v10 userInfo];
      v14 = [v9 attachmentUUID];
      *buf = 138412546;
      v23 = v13;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_0, v11, v12, "An error (%@) occurred while downloading the attachment. %@ is not saved.", buf, 0x16u);
    }

    v15 = [(ASAgent *)self account];
    v16 = [v15 consumerForTask:v9];

    [v16 downloadFinishedError:v10];
  }

  else
  {
    v17 = +[DALocalDBGateKeeper sharedGateKeeper];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_19024;
    v18[3] = &unk_6CF48;
    v21 = a5;
    v19 = v9;
    v20 = self;
    [v17 registerWaiter:self forDataclassLocks:20 completionHandler:v18];

    v16 = v19;
  }
}

- (void)_saveAttachmentDataToDatabaseForTask:(id)a3
{
  v4 = a3;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    v7 = [v4 attachmentUUID];
    *buf = 138412290;
    v33 = v7;
    _os_log_impl(&dword_0, v5, v6, "The gatekeeper lock has been granted. Beginning save of attachment %@", buf, 0xCu);
  }

  v8 = +[ASLocalDBHelper sharedInstance];
  v9 = [(ASAgent *)self account];
  v10 = [v9 accountID];
  v11 = [(ASAgent *)self account];
  v12 = [v11 changeTrackingID];
  [v8 calOpenDatabaseForAccountID:v10 clientID:v12];

  v13 = +[ASLocalDBHelper sharedInstance];
  v14 = [(ASAgent *)self account];
  v15 = [v14 accountID];
  [v13 calDatabaseForAccountID:v15];

  [v4 attachmentUUID];
  v16 = CalDatabaseCopyAttachmentWithUUID();
  if (v16)
  {
    v17 = v16;
    [v4 localFileName];
    v18 = CalAttachmentSetFileData();
    if ((v18 & 1) == 0)
    {
      v19 = DALoggingwithCategory();
      v20 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v19, v20))
      {
        v21 = [v4 attachmentUUID];
        *buf = 138412290;
        v33 = v21;
        _os_log_impl(&dword_0, v19, v20, "Couldn't save attachment file in the database for attachment %@", buf, 0xCu);
      }
    }

    [v4 attachmentContentType];
    CalAttachmentSetFormat();
    CalAttachmentSetURL();
    +[NSDate timeIntervalSinceReferenceDate];
    v23 = [NSString stringWithFormat:@"%f", v22];
    CalAttachmentSetExternalModTag();
    CFRelease(v17);
    v24 = +[ASLocalDBHelper sharedInstance];
    v25 = [(ASAgent *)self account];
    v26 = [v25 accountID];
    [v24 calCloseDatabaseForAccountID:v26 save:v18];

    v27 = DALoggingwithCategory();
    v28 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v27, v28))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v27, v28, "Attachment has been saved. Releasing gatekeeper lock", buf, 2u);
    }
  }

  else
  {
    v29 = DALoggingwithCategory();
    v30 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v29, v30))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v29, v30, "Couldn't get an attachment to set our downloaded file on", buf, 2u);
    }

    v23 = +[ASLocalDBHelper sharedInstance];
    v27 = [(ASAgent *)self account];
    v31 = [v27 accountID];
    [v23 calCloseDatabaseForAccountID:v31 save:0];
  }
}

- (void)prepareFetchAttachmentTask:(id)a3
{
  v4 = a3;
  v5 = +[DALocalDBGateKeeper sharedGateKeeper];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1989C;
  v7[3] = &unk_6CED0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 registerWaiter:self forDataclassLocks:20 completionHandler:v7];
}

- (void)_reallyPrepareFetchAttachmentTask:(id)a3
{
  v23 = a3;
  v4 = [v23 attachmentUUID];

  if (!v4)
  {
    sub_48138();
  }

  v5 = +[ASLocalDBHelper sharedInstance];
  v6 = [(ASAgent *)self account];
  v7 = [v6 accountID];
  v8 = [(ASAgent *)self account];
  v9 = [v8 changeTrackingID];
  [v5 calOpenDatabaseForAccountID:v7 clientID:v9];

  v10 = +[ASLocalDBHelper sharedInstance];
  v11 = [(ASAgent *)self account];
  v12 = [v11 accountID];
  v13 = [v10 calDatabaseForAccountID:v12];

  if (v13)
  {
    [v23 attachmentUUID];
    v14 = CalDatabaseCopyAttachmentWithUUID();
    if (v14)
    {
      v15 = v14;
      v16 = CalAttachmentCopyOwner();
      if (v16)
      {
        v17 = v16;
        v18 = CalCalendarItemCopyExternalID();
        v19 = CalAttachmentCopyExternalID();
        [v23 setAttachmentName:v19];
        [v23 setMessageID:v18];
        CFRelease(v17);
      }

      CFRelease(v15);
    }

    v20 = +[ASLocalDBHelper sharedInstance];
    v21 = [(ASAgent *)self account];
    v22 = [v21 accountID];
    [v20 calCloseDatabaseForAccountID:v22 save:0];
  }
}

- (void)_addChangeForType:(unint64_t)a3 changedItemId:(id)a4 changeId:(id)a5 addedIdsToChangeId:(id)a6 modifiedIdsToChangeId:(id)a7 deletedIdsToChangeId:(id)a8 pseudoDeletedIdsToChangeId:(id)a9 changeIdsToClear:(id)a10
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = DALoggingwithCategory();
  v23 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v22, v23))
  {
    v38 = 134219778;
    v39 = a3;
    v40 = 2112;
    v41 = v15;
    v42 = 2112;
    v43 = v16;
    v44 = 2112;
    v45 = v17;
    v46 = 2112;
    v47 = v18;
    v48 = 2112;
    v49 = v19;
    v50 = 2112;
    v51 = v20;
    v52 = 2112;
    v53 = v21;
    _os_log_impl(&dword_0, v22, v23, "_addChange for type %lu, changedItemId %@ changeId %@ addedIds %@ modifiedIds %@ deletedIds %@ pseudoDeletedIds %@, changeIdsToClear %@", &v38, 0x52u);
  }

  if (!v16)
  {
    v16 = &off_6E600;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v34 = [v17 objectForKeyedSubscript:v15];

      if (!v34)
      {
        v36 = [v18 objectForKeyedSubscript:v15];

        if (v36)
        {
          v37 = [v18 objectForKeyedSubscript:v15];
          [v21 addObject:v37];

          [v18 removeObjectForKey:v15];
        }

        v32 = v19;
        goto LABEL_31;
      }
    }

    else
    {
      if (a3 != 8)
      {
        goto LABEL_35;
      }

      v29 = [v17 objectForKeyedSubscript:v15];

      if (!v29)
      {
        v30 = [v18 objectForKeyedSubscript:v15];

        if (v30)
        {
          v31 = [v18 objectForKeyedSubscript:v15];
          [v21 addObject:v31];

          [v18 removeObjectForKey:v15];
        }

        v32 = v20;
LABEL_31:
        [v32 setObject:v16 forKeyedSubscript:v15];
        goto LABEL_35;
      }
    }

    v35 = [v17 objectForKeyedSubscript:v15];
    [v21 addObject:v35];

    [v17 removeObjectForKey:v15];
LABEL_25:
    [v21 addObject:v16];
    goto LABEL_35;
  }

  if (!a3)
  {
    v26 = [v18 objectForKeyedSubscript:v15];
    if (v26)
    {
      [v21 addObject:v26];
      [v18 removeObjectForKey:v15];
    }

    v33 = [v17 objectForKeyedSubscript:v15];
    if (v33)
    {
      [v21 addObject:v16];
    }

    else
    {
      [v17 setObject:v16 forKeyedSubscript:v15];
    }

    goto LABEL_34;
  }

  if (a3 == 1)
  {
    v24 = [v17 objectForKeyedSubscript:v15];

    if (!v24)
    {
      v25 = [v18 objectForKeyedSubscript:v15];
      v26 = v25;
      if (v25)
      {
        v27 = [v25 intValue];
        v28 = [v16 intValue];
        if (v27 == -1 || v28 == -1)
        {
          if (v28 == -1)
          {
LABEL_34:

            goto LABEL_35;
          }
        }

        else
        {
          [v21 addObject:v26];
        }
      }

      [v18 setObject:v16 forKeyedSubscript:v15];
      goto LABEL_34;
    }

    goto LABEL_25;
  }

LABEL_35:
}

- (id)_copyABActionsInContainer:(void *)a3 existingActions:(id)a4 dataHandler:(id)a5 wantPreserveActions:(BOOL)a6 changeContext:(id)a7
{
  v140 = a6;
  v142 = a4;
  v9 = a5;
  v144 = a7;
  v159 = objc_opt_new();
  v10 = +[ASLocalDBHelper sharedInstance];
  v11 = kABChangeHistoryRecordIDsKey;
  v12 = kABChangeHistoryEventTypesKey;
  v197[0] = kABChangeHistoryRecordIDsKey;
  v197[1] = kABChangeHistoryEventTypesKey;
  v13 = kABChangeHistoryExternalIDsKey;
  v14 = kABChangeHistoryChangeTableRowIDsKey;
  v197[2] = kABChangeHistoryExternalIDsKey;
  v197[3] = kABChangeHistoryChangeTableRowIDsKey;
  v197[4] = kABChangeHistoryRecordGUIDsKey;
  [NSArray arrayWithObjects:v197 count:5];
  [v10 changeTrackingID];
  v143 = v10;
  [v10 abDB];
  EntityChangesSinceSequenceNumberForClient = ABChangeHistoryGetEntityChangesSinceSequenceNumberForClient();
  v157 = v9;
  if (!EntityChangesSinceSequenceNumberForClient || (v16 = EntityChangesSinceSequenceNumberForClient, CFDictionaryGetCount(EntityChangesSinceSequenceNumberForClient) < 1))
  {
    v24 = objc_opt_new();
    v21 = v144;
    goto LABEL_136;
  }

  Value = CFDictionaryGetValue(v16, v11);
  cf = CFDictionaryGetValue(v16, v12);
  v18 = CFDictionaryGetValue(v16, v13);
  v19 = CFDictionaryGetValue(v16, v14);
  if (Value)
  {
    CFRetain(Value);
  }

  theArray = Value;
  v20 = cf;
  v21 = v144;
  if (cf)
  {
    CFRetain(cf);
  }

  if (v18)
  {
    CFRetain(v18);
  }

  if (v19 && (CFRetain(v19), CFArrayGetCount(v19) >= 1))
  {
    Count = CFArrayGetCount(v19);
    ValueAtIndex = CFArrayGetValueAtIndex(v19, Count - 1);
  }

  else
  {
    ValueAtIndex = 0xFFFFFFFFLL;
  }

  v25 = objc_opt_new();
  v24 = v25;
  if (!theArray)
  {
    goto LABEL_130;
  }

  v139 = ValueAtIndex;
  v145 = v19;
  v146 = v18;
  v154 = v25;
  v151 = [[NSMutableDictionary alloc] initWithCapacity:CFArrayGetCount(theArray) / 3];
  v150 = [[NSMutableDictionary alloc] initWithCapacity:CFArrayGetCount(theArray) / 3];
  v149 = [[NSMutableDictionary alloc] initWithCapacity:CFArrayGetCount(theArray) / 3];
  v156 = [[NSMutableDictionary alloc] initWithCapacity:CFArrayGetCount(theArray)];
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  obj = v142;
  v26 = [obj countByEnumeratingWithState:&v184 objects:v196 count:16];
  if (!v26)
  {
    goto LABEL_46;
  }

  v27 = v26;
  v28 = *v185;
  v29 = _CPLog_to_os_log_type[3];
  do
  {
    for (i = 0; i != v27; i = i + 1)
    {
      if (*v185 != v28)
      {
        objc_enumerationMutation(obj);
      }

      v31 = *(*(&v184 + 1) + 8 * i);
      v32 = [v31 itemChangeType];
      v33 = v32;
      if (v32 <= 1)
      {
        v34 = [v31 changedItem];
        [v34 loadClientIDs];
        [v34 setLocalItem:0];
        v35 = [v34 clientID];
        v36 = [v35 intValue];

        if (v36)
        {
          v37 = [(ASAgent *)self account];
          v38 = [v34 loadLocalItemWithAccount:v37];

          if (v38)
          {
            v39 = [v34 serverID];
            v40 = v39;
            if (v33 != 1 || v39)
            {
              v42 = [NSNumber numberWithInt:v36];
              v49 = [v31 itemChangeType];
              v50 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v31 changeId]);
              [(ASAgent *)self _addChangeForType:v49 changedItemId:v42 changeId:v50 addedIdsToChangeId:v151 modifiedIdsToChangeId:v150 deletedIdsToChangeId:v149 pseudoDeletedIdsToChangeId:0 changeIdsToClear:v154];

              if (v40)
              {
                [v156 setObject:v40 forKeyedSubscript:v42];
              }

              v9 = v157;
            }

            else
            {
              v41 = DALoggingwithCategory();
              v9 = v157;
              if (os_log_type_enabled(v41, v29))
              {
                *buf = 138412290;
                *v195 = v31;
                _os_log_impl(&dword_0, v41, v29, "A preset action for a sync request wanted a modify, but we have no server id.  Dropping the modify of %@", buf, 0xCu);
              }

              v42 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v31 changeId]);
              [v154 addObject:v42];
            }

            goto LABEL_43;
          }

          v45 = DALoggingwithCategory();
          v9 = v157;
          if (os_log_type_enabled(v45, v29))
          {
            *buf = 138412290;
            *v195 = v31;
            v46 = v45;
            v47 = v29;
            v48 = "A preset action for a sync request couldn't load the associated local event in the db action %@";
LABEL_37:
            _os_log_impl(&dword_0, v46, v47, v48, buf, 0xCu);
          }
        }

        else
        {
          v45 = DALoggingwithCategory();
          if (os_log_type_enabled(v45, v29))
          {
            *buf = 138412290;
            *v195 = v31;
            v46 = v45;
            v47 = v29;
            v48 = "A preset action for a sync request didn't have an associated local event in the db action %@";
            goto LABEL_37;
          }
        }

        v40 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v31 changeId]);
        [v154 addObject:v40];
LABEL_43:

        continue;
      }

      if ((v32 & 0xFFFFFFFFFFFFFFFBLL) == 2)
      {
        [v159 addObject:v31];
      }

      else
      {
        v43 = DALoggingwithCategory();
        if (os_log_type_enabled(v43, v29))
        {
          *buf = 134217984;
          *v195 = v33;
          _os_log_impl(&dword_0, v43, v29, "A preset action for a sync request had change type %lu, which is unsupported.  Dropping that action", buf, 0xCu);
        }

        v44 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v31 changeId]);
        [v154 addObject:v44];
      }
    }

    v27 = [obj countByEnumeratingWithState:&v184 objects:v196 count:16];
  }

  while (v27);
LABEL_46:

  v51 = theArray;
  v52 = CFArrayGetCount(theArray);
  if (v52 < 1)
  {
    v55 = 0;
  }

  else
  {
    v53 = v52;
    v54 = 0;
    v55 = 0;
    v56 = 0;
    type = _CPLog_to_os_log_type[6];
    obja = _CPLog_to_os_log_type[7];
    do
    {
      v57 = v56;
      v58 = v55;
      v59 = CFArrayGetValueAtIndex(v51, v54);
      v60 = CFArrayGetValueAtIndex(cf, v54);
      v55 = [NSNumber numberWithInt:v59];

      v56 = [NSNumber numberWithInt:CFArrayGetValueAtIndex(v145, v54)];

      v61 = CFArrayGetValueAtIndex(v146, v54);
      v62 = v61;
      if (v61 == kCFNull)
      {

        v62 = 0;
      }

      if (v60 << 32 != 0x200000000)
      {
        v63 = [(ASAgent *)self _dbExternalIdForLocalId:v59 dataclass:2];
        if (v63 && ([(__CFNull *)v62 isEqualToString:v63]& 1) == 0)
        {
          v64 = DALoggingwithCategory();
          if (os_log_type_enabled(v64, type))
          {
            *buf = 67109634;
            *v195 = v59;
            *&v195[4] = 2112;
            *&v195[6] = v62;
            *&v195[14] = 2112;
            *&v195[16] = v63;
            _os_log_impl(&dword_0, v64, type, "For a change with local id %d, found server id %@ in the change table, and server id %@ in the db.  Using the db-based id", buf, 0x1Cu);
          }

          v65 = v63;
          v62 = v65;
        }
      }

      v66 = DALoggingwithCategory();
      if (os_log_type_enabled(v66, obja))
      {
        *buf = 67109634;
        *v195 = v59;
        *&v195[4] = 1024;
        *&v195[6] = v60;
        *&v195[10] = 2112;
        *&v195[12] = v62;
        _os_log_impl(&dword_0, v66, obja, "Looking at change with id %d type %d exchangeId %@", buf, 0x18u);
      }

      if (v62)
      {
        v67 = 0;
      }

      else
      {
        v67 = v60 << 32 == 0x100000000;
      }

      if (v67)
      {
        v68 = 0;
      }

      else
      {
        v68 = v60;
      }

      if (v68)
      {
        v69 = 0;
      }

      else
      {
        v69 = v62 != 0;
      }

      if (v62 && v59)
      {
        [v156 setObject:v62 forKeyedSubscript:v55];
      }

      if (v69)
      {
        v70 = 1;
      }

      else
      {
        v70 = v68;
      }

      [(ASAgent *)self _addChangeForType:v70 changedItemId:v55 changeId:v56 addedIdsToChangeId:v151 modifiedIdsToChangeId:v150 deletedIdsToChangeId:v149 pseudoDeletedIdsToChangeId:0 changeIdsToClear:v154];

      ++v54;
      v51 = theArray;
    }

    while (v53 != v54);

    v9 = v157;
  }

  v21 = v144;
  if (v140)
  {
    [v144 setAbPersonChangeId:v139];
    v182 = 0u;
    v183 = 0u;
    v180 = 0u;
    v181 = 0u;
    v71 = [v151 allKeys];
    v72 = [v71 countByEnumeratingWithState:&v180 objects:v193 count:16];
    if (v72)
    {
      v73 = v72;
      v74 = *v181;
      do
      {
        v75 = 0;
        v76 = v55;
        do
        {
          if (*v181 != v74)
          {
            objc_enumerationMutation(v71);
          }

          v55 = *(*(&v180 + 1) + 8 * v75);

          v77 = [v9 copyLocalObjectFromId:{objc_msgSend(v55, "intValue")}];
          if (v77)
          {
            v78 = v77;
            v79 = [(ASAgent *)self account];
            v80 = [v9 getDAObjectWithLocalItem:v78 serverId:0 account:v79];

            [v80 setServerID:0];
            v81 = [[ASAction alloc] initWithItemChangeType:4 changedItem:v80 serverId:0];
            [v159 addObject:v81];
            CFRelease(v78);

            v9 = v157;
          }

          v75 = v75 + 1;
          v76 = v55;
        }

        while (v73 != v75);
        v73 = [v71 countByEnumeratingWithState:&v180 objects:v193 count:16];
      }

      while (v73);
    }

    v178 = 0u;
    v179 = 0u;
    v176 = 0u;
    v177 = 0u;
    v82 = [v150 allKeys];
    v83 = [v82 countByEnumeratingWithState:&v176 objects:v192 count:16];
    if (v83)
    {
      v84 = v83;
      v85 = 0;
      v86 = *v177;
      do
      {
        v87 = 0;
        v88 = v85;
        do
        {
          if (*v177 != v86)
          {
            objc_enumerationMutation(v82);
          }

          v85 = *(*(&v176 + 1) + 8 * v87);

          v89 = [v9 copyLocalObjectFromId:{objc_msgSend(v85, "intValue")}];
          if (v89)
          {
            v90 = v89;
            v91 = [(ASAgent *)self account];
            v92 = [v9 getDAObjectWithLocalItem:v90 serverId:0 account:v91];

            [v92 setServerID:0];
            v93 = [[ASAction alloc] initWithItemChangeType:4 changedItem:v92 serverId:0];
            [v159 addObject:v93];
            CFRelease(v90);

            v9 = v157;
          }

          v87 = v87 + 1;
          v88 = v85;
        }

        while (v84 != v87);
        v84 = [v82 countByEnumeratingWithState:&v176 objects:v192 count:16];
      }

      while (v84);
      goto LABEL_126;
    }

LABEL_128:
    v24 = v154;
  }

  else
  {
    [v144 setAbPersonChangeId:0xFFFFFFFFLL];
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v94 = [v151 allKeys];
    v95 = [v94 countByEnumeratingWithState:&v172 objects:v191 count:16];
    if (v95)
    {
      v96 = v95;
      v97 = *v173;
      do
      {
        v98 = 0;
        v99 = v55;
        do
        {
          if (*v173 != v97)
          {
            objc_enumerationMutation(v94);
          }

          v55 = *(*(&v172 + 1) + 8 * v98);

          v100 = [v9 copyLocalObjectFromId:{objc_msgSend(v55, "intValue")}];
          if (v100)
          {
            v101 = v100;
            v102 = [(ASAgent *)self account];
            v103 = [v9 getDAObjectWithLocalItem:v101 serverId:0 account:v102];

            v104 = [[ASAction alloc] initWithItemChangeType:0 changedItem:v103 serverId:0];
            v105 = [v151 objectForKeyedSubscript:v55];
            [v104 setChangeId:{objc_msgSend(v105, "intValue")}];

            v9 = v157;
            [v159 addObject:v104];
            CFRelease(v101);
          }

          v98 = v98 + 1;
          v99 = v55;
        }

        while (v96 != v98);
        v96 = [v94 countByEnumeratingWithState:&v172 objects:v191 count:16];
      }

      while (v96);
    }

    v170 = 0u;
    v171 = 0u;
    v168 = 0u;
    v169 = 0u;
    v106 = [v150 allKeys];
    v107 = [v106 countByEnumeratingWithState:&v168 objects:v190 count:16];
    if (v107)
    {
      v108 = v107;
      v109 = 0;
      v110 = *v169;
      do
      {
        v111 = 0;
        v112 = v109;
        do
        {
          if (*v169 != v110)
          {
            objc_enumerationMutation(v106);
          }

          v109 = *(*(&v168 + 1) + 8 * v111);

          v113 = [v9 copyLocalObjectFromId:{objc_msgSend(v109, "intValue")}];
          if (v113)
          {
            v114 = v113;
            v115 = [v156 objectForKeyedSubscript:v109];
            v116 = [(ASAgent *)self account];
            v117 = [v9 getDAObjectWithLocalItem:v114 serverId:v115 account:v116];

            v118 = [[ASAction alloc] initWithItemChangeType:1 changedItem:v117 serverId:0];
            v119 = [v150 objectForKeyedSubscript:v109];
            [v118 setChangeId:{objc_msgSend(v119, "intValue")}];

            v9 = v157;
            [v159 addObject:v118];
            CFRelease(v114);
          }

          v111 = v111 + 1;
          v112 = v109;
        }

        while (v108 != v111);
        v108 = [v106 countByEnumeratingWithState:&v168 objects:v190 count:16];
      }

      while (v108);

      v21 = v144;
    }

    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    v82 = [v149 allKeys];
    v120 = [v82 countByEnumeratingWithState:&v164 objects:v189 count:16];
    if (!v120)
    {
      v9 = v157;
      goto LABEL_128;
    }

    v121 = v120;
    v85 = 0;
    v122 = *v165;
    do
    {
      v123 = 0;
      v124 = v85;
      do
      {
        if (*v165 != v122)
        {
          objc_enumerationMutation(v82);
        }

        v85 = *(*(&v164 + 1) + 8 * v123);

        v125 = [v156 objectForKeyedSubscript:v85];
        if (v125)
        {
          v126 = [[ASAction alloc] initWithItemChangeType:2 changedItem:0 serverId:v125];
          v127 = [v149 objectForKeyedSubscript:v85];
          [v126 setChangeId:{objc_msgSend(v127, "intValue")}];

          [v159 addObject:v126];
        }

        v123 = v123 + 1;
        v124 = v85;
      }

      while (v121 != v123);
      v121 = [v82 countByEnumeratingWithState:&v164 objects:v189 count:16];
    }

    while (v121);
    v9 = v157;
LABEL_126:
    v24 = v154;
  }

  v19 = v145;

  CFRelease(theArray);
  v18 = v146;
  v20 = cf;
LABEL_130:
  if (v20)
  {
    CFRelease(v20);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v18)
  {
    CFRelease(v18);
  }

LABEL_136:
  if ([v24 count])
  {
    Mutable = CFArrayCreateMutable(0, 0, 0);
    v160 = 0u;
    v161 = 0u;
    v162 = 0u;
    v163 = 0u;
    v155 = v24;
    v129 = v24;
    v130 = [v129 countByEnumeratingWithState:&v160 objects:v188 count:16];
    if (v130)
    {
      v131 = v130;
      v132 = *v161;
      v133 = _CPLog_to_os_log_type[7];
      do
      {
        for (j = 0; j != v131; j = j + 1)
        {
          if (*v161 != v132)
          {
            objc_enumerationMutation(v129);
          }

          v135 = [*(*(&v160 + 1) + 8 * j) intValue];
          if (v135 != -1)
          {
            v136 = v135;
            v137 = DALoggingwithCategory();
            if (os_log_type_enabled(v137, v133))
            {
              *buf = 67109120;
              *v195 = v136;
              _os_log_impl(&dword_0, v137, v133, "Clearing change index %d", buf, 8u);
            }

            CFArrayAppendValue(Mutable, v136);
          }
        }

        v131 = [v129 countByEnumeratingWithState:&v160 objects:v188 count:16];
      }

      while (v131);
    }

    v9 = v157;
    if (CFArrayGetCount(Mutable))
    {
      [v143 abDB];
      ABChangeHistoryClearEntityChangeTableRowIDsForClient();
      [v157 saveContainer];
    }

    CFRelease(Mutable);
    v21 = v144;
    v24 = v155;
  }

  return v159;
}

- (void)_handleChangeOnEventWithExchangeId:(id)a3 localId:(int)a4 changeType:(unint64_t)a5 eventChangeId:(id)a6 hasSignificantAttributeChanges:(BOOL)a7 container:(void *)a8 dataHandler:(id)a9 addedIdsToEventChangeId:(id)a10 modifiedIdsToEventChangeId:(id)a11 deletedIdsToEventChangeId:(id)a12 pseudoDeletedIdsToEventChangeId:(id)a13 eventChangeIdsToClear:(id)a14 allAddedDetachmentIds:(id)a15 localToExchangeIdMap:(id)a16 outShouldSaveDB:(BOOL *)a17
{
  v82 = a7;
  v18 = a3;
  v19 = a6;
  v86 = a10;
  v83 = a11;
  v20 = a12;
  v21 = a13;
  v22 = a14;
  v23 = a15;
  v85 = a16;
  v88 = v18;
  v89 = v21;
  v90 = v20;
  if ([a9 dataclass] != &dword_4)
  {
    v27 = v86;
    v28 = v83;
    v24 = self;
    v29 = v22;
    v30 = v23;
    v31 = v19;
    goto LABEL_50;
  }

  v80 = v19;
  if (v18)
  {
    v24 = self;
    v25 = [(ASAgent *)self _parentIdFromEventId:v18];
LABEL_4:
    RowID = 0xFFFFFFFFLL;
    goto LABEL_18;
  }

  v32 = +[ASLocalDBHelper sharedInstance];
  v33 = [(ASAgent *)self account];
  v34 = [v33 accountID];
  [v32 calDatabaseForAccountID:v34];
  v35 = CalDatabaseCopyCalendarItemWithRowID();

  if (!v35)
  {
    v39 = DALoggingwithCategory();
    v40 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v39, v40))
    {
      *buf = 134218242;
      *v94 = a5;
      *&v94[8] = 2112;
      *&v94[10] = v80;
      _os_log_impl(&dword_0, v39, v40, "Had a change of type %lu for an event that no longer exists.  Clearing that change (change id %@)", buf, 0x16u);
    }

    v24 = self;
    if (v80)
    {
      [v22 addObject:?];
    }

    v25 = 0;
    goto LABEL_4;
  }

  v36 = CalEventCopyOriginalEvent();
  v37 = v36;
  if (v36 && v36 != v35)
  {
    RowID = CalCalendarItemGetRowID();
    v38 = CalCalendarItemCopyExternalID();
LABEL_16:
    CFRelease(v37);
    v25 = v38;
    goto LABEL_17;
  }

  v38 = 0;
  v25 = 0;
  RowID = 0xFFFFFFFFLL;
  if (v36)
  {
    goto LABEL_16;
  }

LABEL_17:
  CFRelease(v35);
  v24 = self;
LABEL_18:
  if (v82)
  {
    *a17 |= [(ASAgent *)v24 _markEventWithLocalIDAsNeedingInvitationEmail:a4 parentId:RowID];
    v41 = 1;
    v27 = v86;
    v28 = v83;
    v29 = v22;
    v30 = v23;
    v31 = v80;
    goto LABEL_34;
  }

  v42 = [(ASAgent *)v24 account];
  v27 = v86;
  if (!v25)
  {
    v41 = 1;
    v28 = v83;
    goto LABEL_26;
  }

  v43 = [v88 isEqualToString:v25];
  v41 = 1;
  v28 = v83;
  if (a5 != 1)
  {
LABEL_26:
    v29 = v22;
    v30 = v23;
    v31 = v80;
    goto LABEL_33;
  }

  v29 = v22;
  v30 = v23;
  v31 = v80;
  if (v43)
  {
    v44 = [v42 protocol];
    v45 = [v44 includeExceptionsInParent];

    if (v45)
    {
      v41 = 1;
    }

    else
    {
      if (v80)
      {
        [v29 addObject:v80];
      }

      v46 = DALoggingwithCategory();
      v47 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v46, v47))
      {
        *buf = 67109378;
        *v94 = a4;
        *&v94[4] = 2112;
        *&v94[6] = v88;
        _os_log_impl(&dword_0, v46, v47, "Discarding non-significant modifications to event with local ID: %d, Exchange ID:%@", buf, 0x12u);
      }

      v41 = 0;
      v24 = self;
    }

    v27 = v86;
  }

LABEL_33:

  if (!v41)
  {
    goto LABEL_36;
  }

LABEL_34:
  if (!v25 || ([v88 isEqualToString:v25] & 1) != 0)
  {
LABEL_36:

    if (!v41)
    {
      goto LABEL_95;
    }

    goto LABEL_50;
  }

  v48 = [(ASAgent *)v24 _localIdForExchangeId:v25 inContainer:a8 dataclass:4];
  if (!v48)
  {
    v27 = v86;
    if (v31)
    {
      [v29 addObject:v31];
    }

    goto LABEL_94;
  }

  v49 = v48;
  if (!a5)
  {
    v50 = [NSNumber numberWithInt:a4];
    [v30 addObject:v50];
  }

  v51 = [(ASAgent *)v24 account];
  v52 = [v51 protocol];
  v53 = [v52 includeExceptionsInParent];

  if (v53)
  {
    if (a5 == 2)
    {
      v24 = self;
    }

    else
    {
      v54 = [NSNumber numberWithInt:a4];
      v24 = self;
      [(ASAgent *)self _addChangeForType:a5 changedItemId:v54 changeId:v31 addedIdsToChangeId:v86 modifiedIdsToChangeId:v28 deletedIdsToChangeId:v90 pseudoDeletedIdsToChangeId:v89 changeIdsToClear:v29];

      v31 = 0;
    }

    a4 = [v49 intValue];
    v55 = [NSNumber numberWithInt:?];
    [v85 setObject:v25 forKeyedSubscript:v55];

    a5 = 1;
  }

  else
  {
    v24 = self;
  }

  v27 = v86;
LABEL_50:
  v56 = v30;
  v57 = v27;
  v58 = +[ASLocalDBHelper sharedInstance];
  v59 = [(ASAgent *)v24 account];
  v60 = [v59 accountID];
  [v58 calDatabaseForAccountID:v60];
  v61 = CalDatabaseCopyCalendarItemWithRowID();

  if (!v61)
  {
    v66 = a5;
    goto LABEL_93;
  }

  Status = CalCalendarItemGetStatus();
  v63 = CalCalendarItemCopyExternalID();
  v64 = CalCalendarItemCopySelfAttendee();
  if (v64)
  {
    v65 = v64;
    v84 = CalAttendeeGetStatus();
    CFRelease(v65);
  }

  else
  {
    v84 = 7;
  }

  ModifiedProperties = CalEventGetModifiedProperties();
  CFRelease(v61);
  if (!v63 && (Status - 1) <= 1 && !v84)
  {
    if (v31)
    {
      [v29 addObject:v31];
    }

    v75 = DALoggingwithCategory();
    v76 = _CPLog_to_os_log_type[7];
    if (!os_log_type_enabled(v75, v76))
    {
      goto LABEL_81;
    }

    *buf = 67109120;
    *v94 = a4;
    v77 = "No syncing changes with event id %d because the self attendee status is pending";
    goto LABEL_80;
  }

  if (a5 != 1)
  {
    v72 = v63 != 0;
    v71 = 1;
    v66 = a5;
    if (a5 || !v63)
    {
LABEL_74:
      if (!v72)
      {
        goto LABEL_89;
      }

      goto LABEL_83;
    }

    v73 = DALoggingwithCategory();
    v74 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v73, v74))
    {
      *buf = 67109120;
      *v94 = a4;
      _os_log_impl(&dword_0, v73, v74, "Resetting change with id %d and type add to type modify", buf, 8u);
    }

    v72 = 1;
    v71 = 1;
LABEL_73:
    v66 = 1;
    goto LABEL_74;
  }

  if (ModifiedProperties != 512 || ![(ASAgent *)v24 _isOrganizerSelfWithLocalEvent:v61])
  {
    v72 = v63 != 0;
    v71 = 1;
    goto LABEL_73;
  }

  v68 = [(ASAgent *)v24 account];
  v69 = [v68 protocol];
  v70 = [v69 includeExceptionsInParent];

  if (v70)
  {
    v71 = 1;
    goto LABEL_82;
  }

  if (v31)
  {
    [v29 addObject:v31];
  }

  v75 = DALoggingwithCategory();
  v76 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v75, v76))
  {
    *buf = 67109120;
    *v94 = a4;
    v77 = "No syncing changes with event id %d because the changes are by changing invitation status only";
LABEL_80:
    _os_log_impl(&dword_0, v75, v76, v77, buf, 8u);
  }

LABEL_81:

  v71 = 0;
LABEL_82:
  v66 = a5;
  v72 = v63 != 0;
  if (!v63)
  {
    goto LABEL_89;
  }

LABEL_83:
  if (Status == 3)
  {
    v78 = DALoggingwithCategory();
    v79 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v78, v79))
    {
      *buf = 67109120;
      *v94 = a4;
      _os_log_impl(&dword_0, v78, v79, "Resetting modify invitation change on event with id %d to EAS delete", buf, 8u);
    }

    if (v84 == 7)
    {
      v66 = 8;
    }

    else
    {
      v66 = 2;
    }
  }

LABEL_89:
  if (!v72)
  {
    v24 = self;
    if (!v71)
    {
      goto LABEL_91;
    }

    goto LABEL_93;
  }

  CFRelease(v63);
  v24 = self;
  if (v71)
  {
LABEL_93:
    v25 = [NSNumber numberWithInt:a4];
    v27 = v57;
    [(ASAgent *)v24 _addChangeForType:v66 changedItemId:v25 changeId:v31 addedIdsToChangeId:v57 modifiedIdsToChangeId:v28 deletedIdsToChangeId:v90 pseudoDeletedIdsToChangeId:v89 changeIdsToClear:v29];
    v30 = v56;
LABEL_94:

    goto LABEL_95;
  }

LABEL_91:
  v27 = v57;
  v30 = v56;
LABEL_95:
}

- (void)_faultInCalendarSubentitiesInCalendar:(void *)a3 addedIdsToEventChangeId:(id)a4 modifiedIdsToEventChangeId:(id)a5 deletedIdsToEventChangeId:(id)a6 pseudoDeletedIdsToEventChangeId:(id)a7 localToExchangeIdMap:(id)a8 eventChangeIdsToClear:(id)a9 allAddedDetachmentIds:(id)a10 outRecurrenceId:(int *)a11 outAlarmId:(int *)a12 outAttendeeId:(int *)a13 outAttachmentId:(int *)a14 outHighestSequenceNumber:(int *)a15 dataHandler:(id)a16
{
  v20 = a4;
  v40 = a5;
  v42 = a6;
  v45 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a16;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  v25 = +[ASLocalDBHelper sharedInstance];
  v26 = [(ASAgent *)self account];
  v27 = [v26 accountID];
  v28 = [v25 calDatabaseForAccountID:v27];

  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = -1;
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_3ACB4;
  v48[3] = &unk_6D3A8;
  v60 = v28;
  v38 = v21;
  v49 = v38;
  v50 = self;
  v61 = a3;
  v44 = v24;
  v51 = v44;
  v39 = v20;
  v52 = v39;
  v41 = v40;
  v53 = v41;
  v43 = v42;
  v54 = v43;
  v37 = v45;
  v55 = v37;
  v36 = v22;
  v56 = v36;
  v34 = v23;
  v57 = v34;
  v58 = &v66;
  v59 = &v62;
  v29 = objc_retainBlock(v48);
  v30 = CalDatabaseCopyAlarmChangesInCalendar();
  if (a12)
  {
    *a12 = v30;
  }

  v31 = CalDatabaseCopyRecurrenceChangesInCalendar();
  if (a11)
  {
    *a11 = v31;
  }

  if ([v44 dataclass] == &dword_4)
  {
    v32 = CalDatabaseCopyAttendeeChangesInCalendar();
    if (a13)
    {
      *a13 = v32;
    }
  }

  v33 = CalDatabaseCopyAttachmentChangesInCalendar();
  if (a14)
  {
    *a14 = v33;
  }

  if (a15)
  {
    *a15 = *(v63 + 6);
  }

  if (*(v67 + 24) == 1)
  {
    [v44 saveContainer];
  }

  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v66, 8);
}

- (BOOL)_isOrganizerSelfWithEmail:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    v6 = [(ASAgent *)self account];
    v7 = [v6 accountContainsEmailAddress:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_exceptionDateChangesInCalendar:(void *)a3 exceptionDateToChangeId:(id)a4 outHighestSequenceNumber:(int *)a5 dataHandler:(id)a6
{
  v9 = a4;
  v10 = a6;
  v11 = +[ASLocalDBHelper sharedInstance];
  v12 = [(ASAgent *)self account];
  v13 = [v12 accountID];
  [v11 calDatabaseForAccountID:v13];

  if ([v10 dataclass] == &dword_4)
  {
    CalDatabaseCopyExceptionDateChangesInCalendar();
  }

  *a5 = -1;
}

- (void)_attendeeChangesDueToMeetingForwardingInCalendar:(void *)a3 eventIdToAttendeeEmails:(id)a4 eventIdToAttendeeUUIDs:(id)a5 dataHandler:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = +[ASLocalDBHelper sharedInstance];
  v13 = [(ASAgent *)self account];
  v14 = [v13 accountID];
  [v12 calDatabaseForAccountID:v14];

  if ([v11 dataclass] == &dword_4)
  {
    CalDatabaseCopyAttendeeChangesInCalendar();
  }
}

- (id)_instanceIdFromIdWithExceptionDate:(id)a3
{
  v3 = a3;
  v4 = [v3 rangeOfString:@"<!ExceptionDate!>"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v3 substringFromIndex:&v4[v5]];
  }

  return v6;
}

- (BOOL)_isOrganizerSelfWithLocalEvent:(void *)a3
{
  v4 = CalCalendarItemCopyOrganizer();
  if (!v4)
  {
    return 1;
  }

  v5 = v4;
  v6 = CalOrganizerCopyEmailAddress();
  if ([v6 length])
  {
    v7 = [(ASAgent *)self account];
    v8 = [v7 accountContainsEmailAddress:v6];
  }

  else
  {
    v8 = 1;
  }

  CFRelease(v5);

  return v8;
}

- (id)_copyCalendarItemMoveActionsInCalendar:(void *)a3 dataHandler:(id)a4 deleteActionsByFolderId:(id)a5
{
  v114 = a4;
  v111 = a5;
  v7 = CalCalendarCopyStore();
  v8 = objc_opt_new();
  v125 = objc_opt_new();
  v9 = [v114 dataclass];
  v10 = +[ASLocalDBHelper sharedInstance];
  v126 = self;
  v11 = [(ASAgent *)self account];
  v12 = [v11 accountID];
  [v10 calDatabaseForAccountID:v12];
  v108 = v7;
  if (v9 == &dword_4)
  {
    v13 = CalDatabaseCopyEventMovesInStore();
  }

  else
  {
    v13 = CalDatabaseCopyTaskMovesInStore();
  }

  v118 = v8;
  theDict = v13;
  if (!v13)
  {
    goto LABEL_36;
  }

  Value = CFDictionaryGetValue(v13, kCalCalendarItemChangesIDKey);
  v121 = CFDictionaryGetValue(v13, kCalCalendarItemChangesChangeIDKey);
  v119 = CFDictionaryGetValue(v13, kCalCalendarItemChangesOldCalendarIDKey);
  v15 = CFDictionaryGetValue(v13, kCalCalendarItemChangesOldExternalIDKey);
  theArray = Value;
  if (Value)
  {
    if (v121)
    {
      if (v119)
      {
        v16 = v15;
        if (v15)
        {
          Count = CFArrayGetCount(Value);
          if (Count != CFArrayGetCount(v121) || (v18 = CFArrayGetCount(v119), v18 != CFArrayGetCount(v16)))
          {
            v19 = DALoggingwithCategory();
            v20 = _CPLog_to_os_log_type[3];
            if (os_log_type_enabled(v19, v20))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v19, v20, "EventMove dictionary components have different lengths in [ASAgent _copyCalendarItemMoveActionsInCalendar].", buf, 2u);
            }
          }

          v21 = CFArrayGetCount(theArray);
          if (v21 >= 1)
          {
            v22 = v21;
            v23 = 0;
            type = _CPLog_to_os_log_type[7];
            v112 = v21;
            while (1)
            {
              v129 = [NSNumber numberWithInt:CFArrayGetValueAtIndex(theArray, v23)];
              v127 = [NSNumber numberWithInt:CFArrayGetValueAtIndex(v121, v23)];
              v24 = [NSNumber numberWithInt:CFArrayGetValueAtIndex(v119, v23)];
              v25 = CFArrayGetValueAtIndex(v16, v23);
              v26 = v25;
              if (v25 == kCFNull)
              {

                v26 = 0;
              }

              if ([v114 dataclass] != &dword_4)
              {
                goto LABEL_26;
              }

              +[ASLocalDBHelper sharedInstance];
              v28 = v27 = v24;
              [(ASAgent *)v126 account];
              v30 = v29 = v16;
              v31 = [v30 accountID];
              [v28 calDatabaseForAccountID:v31];
              v32 = CalDatabaseCopyCalendarItemWithRowID();

              v8 = v118;
              v16 = v29;
              v22 = v112;

              v24 = v27;
              if (!v32)
              {
                goto LABEL_26;
              }

              v33 = CalEventCopyOriginalEvent();
              v34 = v33;
              if (!v33 || v33 == v32)
              {
                break;
              }

              [v125 addObject:v127];
              CFRelease(v34);
              CFRelease(v32);
LABEL_35:

              if (v22 == ++v23)
              {
                goto LABEL_36;
              }
            }

            if (v33)
            {
              CFRelease(v33);
            }

            CFRelease(v32);
LABEL_26:
            v35 = DALoggingwithCategory();
            if (os_log_type_enabled(v35, type))
            {
              *buf = 138413058;
              v146 = v129;
              v147 = 2112;
              v148 = v127;
              v149 = 2112;
              v150 = v8;
              v151 = 2112;
              v152 = v125;
              _os_log_impl(&dword_0, v35, type, "_addChange for move of calendarItem id %@, changeId %@ calendarItemIdsToMoveActions %@, calendarItemChangeIdsToClear %@", buf, 0x2Au);
            }

            v36 = [v8 objectForKeyedSubscript:v129];
            if (v36)
            {
              [v125 addObject:v127];
            }

            else
            {
              v37 = objc_opt_new();
              if (v26)
              {
                v143[0] = @"changeIdNumber";
                v144[0] = v127;
                v144[1] = v24;
                v38 = v24;
                v143[1] = @"oldContainerIdNumber";
                v143[2] = @"oldExternalId";
                v144[2] = v26;
                v39 = v144;
                v40 = v143;
                v41 = 3;
              }

              else
              {
                v141[0] = @"changeIdNumber";
                v141[1] = @"oldContainerIdNumber";
                v142[0] = v127;
                v38 = v24;
                v142[1] = v24;
                v39 = v142;
                v40 = v141;
                v41 = 2;
              }

              v42 = [NSDictionary dictionaryWithObjects:v39 forKeys:v40 count:v41];
              [v37 addEntriesFromDictionary:v42];

              [v8 setObject:v37 forKeyedSubscript:v129];
              v24 = v38;
            }

            goto LABEL_35;
          }

LABEL_36:
          v110 = objc_opt_new();
          v135 = 0u;
          v136 = 0u;
          v137 = 0u;
          v138 = 0u;
          v122 = [v8 allKeys];
          v43 = [(__CFArray *)v122 countByEnumeratingWithState:&v135 objects:v140 count:16];
          if (v43)
          {
            v44 = v43;
            v113 = 0;
            v128 = *v136;
            typea = _CPLog_to_os_log_type[3];
            v45 = v114;
            v46 = v125;
            do
            {
              v47 = 0;
              v120 = v44;
              do
              {
                if (*v136 != v128)
                {
                  objc_enumerationMutation(v122);
                }

                v48 = *(*(&v135 + 1) + 8 * v47);
                v49 = [v8 objectForKeyedSubscript:v48];
                v130 = [v49 objectForKeyedSubscript:@"changeIdNumber"];
                v50 = [v49 objectForKeyedSubscript:@"oldContainerIdNumber"];
                v51 = [v49 objectForKeyedSubscript:@"oldExternalId"];
                v52 = [v45 copyLocalObjectFromId:{objc_msgSend(v48, "intValue")}];
                if (v52)
                {
                  v53 = v52;
                  if (v51 || (v51 = CalCalendarItemCopyExternalID()) != 0)
                  {
                    v54 = CalCalendarItemCopyCalendar();
                    if (v54)
                    {
                      v55 = v54;
                      UID = CalCalendarGetUID();
                      CFRelease(v55);
                    }

                    else
                    {
                      UID = -1;
                    }

                    v65 = v130;
                    if ([v50 intValue] == UID)
                    {
                      CalCalendarItemSetExternalID();
                      v46 = v125;
                      [v125 addObject:v130];
                      v113 = 1;
                    }

                    else
                    {
                      v66 = +[ASLocalDBHelper sharedInstance];
                      v67 = [(ASAgent *)v126 account];
                      v68 = [v67 accountID];
                      [v66 calDatabaseForAccountID:v68];
                      [v50 intValue];
                      v69 = CalDatabaseCopyCalendarWithUID();

                      if (v69)
                      {
                        cf = v69;
                        theArraya = CalCalendarCopyExternalID();
                        if (theArraya)
                        {
                          v70 = +[ASLocalDBHelper sharedInstance];
                          v71 = [(ASAgent *)v126 account];
                          v72 = [v71 accountID];
                          [v70 calDatabaseForAccountID:v72];
                          v73 = CalDatabaseCopyCalendarWithUID();

                          if (v73 && (v74 = CalCalendarCopyExternalID(), CFRelease(v73), v74))
                          {
                            v75 = [(ASAgent *)v126 account];
                            v45 = v114;
                            v76 = [v114 getDAObjectWithLocalItem:v53 serverId:0 account:v75];

                            [v76 setLocalItem:0];
                            v77 = [[DAMoveAction alloc] initWithItemChangeType:5 changedItem:v76 sourceContainerId:theArraya sourceServerId:v51 destinationContainerId:v74];
                            v44 = v120;
                            if (v130)
                            {
                              v78 = [v130 intValue];
                            }

                            else
                            {
                              v78 = 0xFFFFFFFFLL;
                            }

                            [v77 setChangeId:v78];
                            [v110 addObject:v77];

                            v8 = v118;
                            v46 = v125;
                            v65 = v130;
                          }

                          else
                          {
                            v83 = DALoggingwithCategory();
                            v45 = v114;
                            v44 = v120;
                            if (os_log_type_enabled(v83, typea))
                            {
                              *buf = 67109120;
                              LODWORD(v146) = UID;
                              _os_log_impl(&dword_0, v83, typea, "Looking at a move command, I couldn't come up with the new calendar external id.  new calendar id %d", buf, 8u);
                            }

                            v46 = v125;
                            v65 = v130;
                            [v125 addObject:v130];
                            v8 = v118;
                          }
                        }

                        else
                        {
                          v84 = DALoggingwithCategory();
                          if (os_log_type_enabled(v84, typea))
                          {
                            v85 = [v50 intValue];
                            *buf = 67109120;
                            LODWORD(v146) = v85;
                            _os_log_impl(&dword_0, v84, typea, "Looking at a move command, I couldn't come up with the old calendar external id.  old calendar id %d", buf, 8u);
                          }

                          v46 = v125;
                          v65 = v130;
                          [v125 addObject:v130];
                          v45 = v114;
                          v8 = v118;
                          v44 = v120;
                        }

                        CFRelease(cf);
                      }

                      else
                      {
                        v79 = DALoggingwithCategory();
                        v45 = v114;
                        v8 = v118;
                        v44 = v120;
                        if (os_log_type_enabled(v79, typea))
                        {
                          v80 = [v50 intValue];
                          *buf = 67109120;
                          LODWORD(v146) = v80;
                          _os_log_impl(&dword_0, v79, typea, "Looking at a move command, I couldn't come up with the old calendar.  old calendar id %d", buf, 8u);
                        }

                        v46 = v125;
                        v65 = v130;
                        [v125 addObject:v130];
                      }
                    }
                  }

                  else
                  {
                    v65 = v130;
                  }

                  CFRelease(v53);
                }

                else if (v51)
                {
                  v57 = +[ASLocalDBHelper sharedInstance];
                  v58 = [(ASAgent *)v126 account];
                  v59 = [v58 accountID];
                  [v57 calDatabaseForAccountID:v59];
                  [v50 intValue];
                  v60 = CalDatabaseCopyCalendarWithUID();

                  if (v60)
                  {
                    v61 = CalCalendarCopyExternalID();
                    if (v61)
                    {
                      v62 = [v111 objectForKeyedSubscript:v61];
                      if (!v62)
                      {
                        v62 = objc_opt_new();
                        [v111 setObject:v62 forKeyedSubscript:v61];
                      }

                      v63 = [[ASAction alloc] initWithItemChangeType:2 changedItem:0 serverId:v51];
                      if (v130)
                      {
                        v64 = [v130 intValue];
                      }

                      else
                      {
                        v64 = 0xFFFFFFFFLL;
                      }

                      [v63 setChangeId:v64];
                      [v62 addObject:v63];

                      v8 = v118;
                      v65 = v130;
                    }

                    else
                    {
                      v86 = DALoggingwithCategory();
                      v8 = v118;
                      if (os_log_type_enabled(v86, typea))
                      {
                        v87 = [v50 intValue];
                        *buf = 67109120;
                        LODWORD(v146) = v87;
                        _os_log_impl(&dword_0, v86, typea, "Looking at a move command, I couldn't come up with the old calendar external id.  old calendar id %d", buf, 8u);
                      }

                      v65 = v130;
                      [v46 addObject:v130];
                    }

                    CFRelease(v60);

                    v44 = v120;
                  }

                  else
                  {
                    v81 = DALoggingwithCategory();
                    v44 = v120;
                    if (os_log_type_enabled(v81, typea))
                    {
                      v82 = [v50 intValue];
                      *buf = 67109120;
                      LODWORD(v146) = v82;
                      _os_log_impl(&dword_0, v81, typea, "Looking at a move command, I couldn't come up with the old calendar.  old calendar id %d", buf, 8u);
                    }

                    v65 = v130;
                    [v46 addObject:v130];

                    v8 = v118;
                  }
                }

                else
                {
                  v65 = v130;
                  [v46 addObject:v130];
                }

                v47 = (v47 + 1);
              }

              while (v44 != v47);
              v44 = [(__CFArray *)v122 countByEnumeratingWithState:&v135 objects:v140 count:16];
            }

            while (v44);
          }

          else
          {
            v113 = 0;
            v45 = v114;
            v46 = v125;
          }

          if (theDict)
          {
            CFRelease(theDict);
          }

          if ([v46 count])
          {
            Mutable = CFArrayCreateMutable(0, 0, 0);
            v131 = 0u;
            v132 = 0u;
            v133 = 0u;
            v134 = 0u;
            v91 = v46;
            v92 = [v91 countByEnumeratingWithState:&v131 objects:v139 count:16];
            if (v92)
            {
              v93 = v92;
              v94 = *v132;
              v95 = _CPLog_to_os_log_type[7];
              do
              {
                for (i = 0; i != v93; i = i + 1)
                {
                  if (*v132 != v94)
                  {
                    objc_enumerationMutation(v91);
                  }

                  v97 = [*(*(&v131 + 1) + 8 * i) intValue];
                  if (v97 != -1)
                  {
                    v98 = v97;
                    v99 = DALoggingwithCategory();
                    if (os_log_type_enabled(v99, v95))
                    {
                      *buf = 67109120;
                      LODWORD(v146) = v98;
                      _os_log_impl(&dword_0, v99, v95, "Clearing change index %d", buf, 8u);
                    }

                    CFArrayAppendValue(Mutable, v98);
                  }
                }

                v93 = [v91 countByEnumeratingWithState:&v131 objects:v139 count:16];
              }

              while (v93);
            }

            if (CFArrayGetCount(Mutable))
            {
              v100 = +[ASLocalDBHelper sharedInstance];
              v101 = [(ASAgent *)v126 account];
              v102 = [v101 accountID];
              [v100 calDatabaseForAccountID:v102];
              v103 = [(ASAgent *)v126 account];
              v104 = [v103 changeTrackingID];
              CalDatabaseClearIndividualChangeRowIDsForClient();

              CFRelease(Mutable);
              v45 = v114;
              v8 = v118;
              v46 = v125;
              goto LABEL_114;
            }

            CFRelease(Mutable);
            v45 = v114;
            v8 = v118;
            v46 = v125;
          }

          if ((v113 & 1) == 0)
          {
LABEL_115:
            CFRelease(v108);
            v105 = DALoggingwithCategory();
            v106 = _CPLog_to_os_log_type[6];
            if (os_log_type_enabled(v105, v106))
            {
              *buf = 138412290;
              v146 = v111;
              _os_log_impl(&dword_0, v105, v106, "consed deletes are %@", buf, 0xCu);
            }

            goto LABEL_118;
          }

LABEL_114:
          [v45 saveContainer];
          goto LABEL_115;
        }
      }
    }
  }

  v88 = DALoggingwithCategory();
  v89 = _CPLog_to_os_log_type[3];
  if (os_log_type_enabled(v88, v89))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v88, v89, "[ASAgent _copyCalendarItemMoveActionsInCalendar] encountered NULL array in CalDatabaseCopyEventMovesInStore dictionary, bailing out.", buf, 2u);
  }

  CFRelease(v13);
  v45 = v114;
  v46 = v125;
  if (v108)
  {
    CFRelease(v108);
  }

  v110 = objc_opt_new();
LABEL_118:

  return v110;
}

- (void)_addSimpleChangeForType:(unint64_t)a3 changedItemId:(id)a4 addedIds:(id)a5 modifiedIds:(id)a6 deletedIds:(id)a7 collapsedIds:(id)a8
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = DALoggingwithCategory();
  v19 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v18, v19))
  {
    v21 = 134219010;
    v22 = a3;
    v23 = 2112;
    v24 = v13;
    v25 = 2112;
    v26 = v14;
    v27 = 2112;
    v28 = v15;
    v29 = 2112;
    v30 = v16;
    _os_log_impl(&dword_0, v18, v19, "_addChange for type %lu, changeId %@ addedIds %@ modifiedIds %@ deletedIds %@", &v21, 0x34u);
  }

  switch(a3)
  {
    case 2uLL:
      if ([v14 containsObject:v13])
      {
        [v17 addObject:v13];
        [v14 removeObject:v13];
        goto LABEL_12;
      }

      v20 = [v15 containsObject:v13];
      [v16 addObject:v13];
      if (v20)
      {
        goto LABEL_12;
      }

      break;
    case 1uLL:
      if (([v14 containsObject:v13] & 1) == 0)
      {
        [v15 addObject:v13];
      }

      break;
    case 0uLL:
      [v14 addObject:v13];
LABEL_12:
      [v15 removeObject:v13];
      break;
  }
}

- (id)_copyNotesActionsInNoteStore:(id)a3 existingActions:(id)a4 dataHandler:(id)a5 wantPreserveActions:(BOOL)a6 changeSet:(id)a7
{
  v120 = a6;
  v121 = a3;
  v10 = a4;
  v11 = a5;
  v128 = a7;
  v12 = objc_opt_new();
  v137 = objc_opt_new();
  v136 = objc_opt_new();
  v135 = objc_opt_new();
  v131 = objc_opt_new();
  v175 = 0u;
  v176 = 0u;
  v177 = 0u;
  v178 = 0u;
  obj = v10;
  v13 = [obj countByEnumeratingWithState:&v175 objects:v190 count:16];
  v130 = v11;
  if (v13)
  {
    v14 = v13;
    v15 = *v176;
    type = _CPLog_to_os_log_type[3];
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v176 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v175 + 1) + 8 * i);
        v18 = [v17 itemChangeType];
        v19 = v18;
        if (v18 > 1)
        {
          if ((v18 & 0xFFFFFFFFFFFFFFFBLL) == 2)
          {
            [v12 addObject:v17];
          }

          else
          {
            v31 = DALoggingwithCategory();
            if (os_log_type_enabled(v31, type))
            {
              *buf = 134217984;
              *v187 = v19;
              _os_log_impl(&dword_0, v31, type, "A preset action for a sync request had change type %lu, which is unsupported.  Dropping that action", buf, 0xCu);
            }
          }
        }

        else
        {
          v20 = v12;
          v21 = v14;
          v22 = v15;
          v23 = [v17 changedItem];
          [v23 loadClientIDs];
          [v23 setLocalItem:0];
          v24 = [v23 clientID];
          v25 = [v24 intValue];

          if (v25)
          {
            v26 = [(ASAgent *)self account];
            v27 = [v23 loadLocalItemWithAccount:v26];

            if (v27)
            {
              v28 = [v23 serverID];
              v29 = v28;
              v15 = v22;
              if (v19 != 1 || v28)
              {
                v30 = [NSNumber numberWithInt:v25];
                -[ASAgent _addSimpleChangeForType:changedItemId:addedIds:modifiedIds:deletedIds:collapsedIds:](self, "_addSimpleChangeForType:changedItemId:addedIds:modifiedIds:deletedIds:collapsedIds:", [v17 itemChangeType], v30, v137, v136, v135, 0);
                if (v29)
                {
                  [v131 setObject:v29 forKeyedSubscript:v30];
                }

                v11 = v130;
              }

              else
              {
                v30 = DALoggingwithCategory();
                v11 = v130;
                if (os_log_type_enabled(v30, type))
                {
                  *buf = 138412290;
                  *v187 = v17;
                  _os_log_impl(&dword_0, v30, type, "A preset action for a sync request wanted a modify, but we have no server id.  Dropping the modify of %@", buf, 0xCu);
                }
              }
            }

            else
            {
              v29 = DALoggingwithCategory();
              v15 = v22;
              if (os_log_type_enabled(v29, type))
              {
                *buf = 138412290;
                *v187 = v17;
                _os_log_impl(&dword_0, v29, type, "A preset action for a sync request couldn't load the associated local event in the db action %@", buf, 0xCu);
              }

              v11 = v130;
            }
          }

          else
          {
            v29 = DALoggingwithCategory();
            if (os_log_type_enabled(v29, type))
            {
              *buf = 138412290;
              *v187 = v17;
              _os_log_impl(&dword_0, v29, type, "A preset action for a sync request didn't have an associated local event in the db action %@", buf, 0xCu);
            }

            v11 = v130;
            v15 = v22;
          }

          v14 = v21;
          v12 = v20;
        }
      }

      v14 = [obj countByEnumeratingWithState:&v175 objects:v190 count:16];
    }

    while (v14);
  }

  v32 = [v121 changes];
  v33 = [v32 copy];

  v173 = 0u;
  v174 = 0u;
  v171 = 0u;
  v172 = 0u;
  v126 = v33;
  v34 = [v126 countByEnumeratingWithState:&v171 objects:v189 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v172;
    v37 = _CPLog_to_os_log_type[7];
    v38 = _CPLog_to_os_log_type[3];
    v124 = v12;
    v123 = v38;
    v122 = *v172;
    do
    {
      v39 = 0;
      v125 = v35;
      do
      {
        if (*v172 != v36)
        {
          objc_enumerationMutation(v126);
        }

        v40 = *(*(&v171 + 1) + 8 * v39);
        v41 = [v40 changeType];
        v42 = [v41 intValue];

        switch(v42)
        {
          case 0u:
            v129 = v39;
            v43 = 0;
            v44 = 0;
            goto LABEL_49;
          case 2u:
            v165 = 0u;
            v166 = 0u;
            v163 = 0u;
            v164 = 0u;
            v45 = [v40 noteServerIds];
            v46 = [v45 countByEnumeratingWithState:&v163 objects:v185 count:16];
            if (v46)
            {
              v47 = v46;
              v48 = *v164;
              do
              {
                for (j = 0; j != v47; j = j + 1)
                {
                  if (*v164 != v48)
                  {
                    objc_enumerationMutation(v45);
                  }

                  [(ASAgent *)self _addSimpleChangeForType:2 changedItemId:*(*(&v163 + 1) + 8 * j) addedIds:v137 modifiedIds:v136 deletedIds:v135 collapsedIds:0];
                }

                v47 = [v45 countByEnumeratingWithState:&v163 objects:v185 count:16];
              }

              while (v47);
              v38 = v123;
            }

            break;
          case 1u:
            v129 = v39;
            v43 = 1;
            v44 = 1;
LABEL_49:
            v169 = 0u;
            v170 = 0u;
            v167 = 0u;
            v168 = 0u;
            typea = [v40 noteIntegerIds];
            v50 = [typea countByEnumeratingWithState:&v167 objects:v188 count:16];
            if (v50)
            {
              v51 = v50;
              v52 = *v168;
              do
              {
                for (k = 0; k != v51; k = k + 1)
                {
                  if (*v168 != v52)
                  {
                    objc_enumerationMutation(typea);
                  }

                  v54 = *(*(&v167 + 1) + 8 * k);
                  v55 = [v54 intValue];
                  v56 = [(ASAgent *)self _dbExternalIdForLocalId:v55 dataclass:32];
                  v57 = DALoggingwithCategory();
                  if (os_log_type_enabled(v57, v37))
                  {
                    *buf = 67109634;
                    *v187 = v55;
                    *&v187[4] = 2048;
                    *&v187[6] = v44;
                    *&v187[14] = 2112;
                    *&v187[16] = v56;
                    _os_log_impl(&dword_0, v57, v37, "Looking at change with id %d type %lu exchangeId %@", buf, 0x1Cu);
                  }

                  if ((v43 & (v56 == 0)) != 0)
                  {
                    v58 = 0;
                  }

                  else
                  {
                    v58 = v44;
                  }

                  if (v58)
                  {
                    v59 = 1;
                  }

                  else
                  {
                    v59 = v56 == 0;
                  }

                  if (v59)
                  {
                    v60 = v58;
                  }

                  else
                  {
                    v60 = 1;
                  }

                  if (v55)
                  {
                    v61 = v56 == 0;
                  }

                  else
                  {
                    v61 = 1;
                  }

                  if (!v61)
                  {
                    [v131 setObject:v56 forKeyedSubscript:v54];
                  }

                  [(ASAgent *)self _addSimpleChangeForType:v60 changedItemId:v54 addedIds:v137 modifiedIds:v136 deletedIds:v135 collapsedIds:0];
                }

                v51 = [typea countByEnumeratingWithState:&v167 objects:v188 count:16];
              }

              while (v51);
              v12 = v124;
              v11 = v130;
              v36 = v122;
              v38 = v123;
            }

            else
            {
              v12 = v124;
            }

            v35 = v125;
            v39 = v129;
            v45 = typea;
            break;
          default:
            v62 = DALoggingwithCategory();
            if (os_log_type_enabled(v62, v38))
            {
              v63 = [v40 changeType];
              *buf = 138412546;
              *v187 = v63;
              *&v187[8] = 2112;
              *&v187[10] = v40;
              _os_log_impl(&dword_0, v62, v38, "Unknown change type %@ from change object %@", buf, 0x16u);
            }

            v45 = v62;
            break;
        }

        v39 = v39 + 1;
      }

      while (v39 != v35);
      v35 = [v126 countByEnumeratingWithState:&v171 objects:v189 count:16];
    }

    while (v35);
  }

  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  v64 = v126;
  v65 = [v64 countByEnumeratingWithState:&v159 objects:v184 count:16];
  if (v65)
  {
    v66 = v65;
    v67 = *v160;
    do
    {
      for (m = 0; m != v66; m = m + 1)
      {
        if (*v160 != v67)
        {
          objc_enumerationMutation(v64);
        }

        v69 = [*(*(&v159 + 1) + 8 * m) objectID];
        v70 = [v69 URIRepresentation];

        if (v70)
        {
          [v128 addObject:v70];
        }
      }

      v66 = [v64 countByEnumeratingWithState:&v159 objects:v184 count:16];
    }

    while (v66);
  }

  *typeb = v64;

  if (v120)
  {
    v157 = 0u;
    v158 = 0u;
    v155 = 0u;
    v156 = 0u;
    v71 = v137;
    v72 = [v71 countByEnumeratingWithState:&v155 objects:v183 count:16];
    if (v72)
    {
      v73 = v72;
      v74 = *v156;
      do
      {
        for (n = 0; n != v73; n = n + 1)
        {
          if (*v156 != v74)
          {
            objc_enumerationMutation(v71);
          }

          v76 = [v11 copyLocalObjectFromId:{objc_msgSend(*(*(&v155 + 1) + 8 * n), "intValue")}];
          if (v76)
          {
            v77 = v76;
            v78 = [(ASAgent *)self account];
            v79 = [v11 getDAObjectWithLocalItem:v77 serverId:0 account:v78];

            [v79 setServerID:0];
            v80 = [[ASAction alloc] initWithItemChangeType:4 changedItem:v79 serverId:0];
            [v12 addObject:v80];
            CFRelease(v77);
          }
        }

        v73 = [v71 countByEnumeratingWithState:&v155 objects:v183 count:16];
      }

      while (v73);
    }

    v153 = 0u;
    v154 = 0u;
    v151 = 0u;
    v152 = 0u;
    v81 = v136;
    v82 = [v81 countByEnumeratingWithState:&v151 objects:v182 count:16];
    if (v82)
    {
      v83 = v82;
      v84 = *v152;
      do
      {
        for (ii = 0; ii != v83; ii = ii + 1)
        {
          if (*v152 != v84)
          {
            objc_enumerationMutation(v81);
          }

          v86 = [v11 copyLocalObjectFromId:{objc_msgSend(*(*(&v151 + 1) + 8 * ii), "intValue")}];
          if (v86)
          {
            v87 = v86;
            v88 = [(ASAgent *)self account];
            v89 = [v11 getDAObjectWithLocalItem:v87 serverId:0 account:v88];

            [v89 setServerID:0];
            v90 = [[ASAction alloc] initWithItemChangeType:4 changedItem:v89 serverId:0];
            [v12 addObject:v90];
            CFRelease(v87);
          }
        }

        v83 = [v81 countByEnumeratingWithState:&v151 objects:v182 count:16];
      }

      while (v83);
    }

    v91 = v64;
  }

  else
  {
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v92 = v137;
    v93 = [v92 countByEnumeratingWithState:&v147 objects:v181 count:16];
    if (v93)
    {
      v94 = v93;
      v95 = *v148;
      do
      {
        for (jj = 0; jj != v94; jj = jj + 1)
        {
          if (*v148 != v95)
          {
            objc_enumerationMutation(v92);
          }

          v97 = [v11 copyLocalObjectFromId:{objc_msgSend(*(*(&v147 + 1) + 8 * jj), "intValue")}];
          if (v97)
          {
            v98 = v97;
            v99 = [(ASAgent *)self account];
            v100 = [v11 getDAObjectWithLocalItem:v98 serverId:0 account:v99];

            v101 = [[ASAction alloc] initWithItemChangeType:0 changedItem:v100 serverId:0];
            [v12 addObject:v101];
            CFRelease(v98);
          }
        }

        v94 = [v92 countByEnumeratingWithState:&v147 objects:v181 count:16];
      }

      while (v94);
    }

    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v102 = v136;
    v103 = [v102 countByEnumeratingWithState:&v143 objects:v180 count:16];
    if (v103)
    {
      v104 = v103;
      v105 = *v144;
      do
      {
        for (kk = 0; kk != v104; kk = kk + 1)
        {
          if (*v144 != v105)
          {
            objc_enumerationMutation(v102);
          }

          v107 = *(*(&v143 + 1) + 8 * kk);
          v108 = [v11 copyLocalObjectFromId:{objc_msgSend(v107, "intValue")}];
          if (v108)
          {
            v109 = v108;
            v110 = [v131 objectForKeyedSubscript:v107];
            v111 = [(ASAgent *)self account];
            v112 = [v11 getDAObjectWithLocalItem:v109 serverId:v110 account:v111];

            v113 = [[ASAction alloc] initWithItemChangeType:1 changedItem:v112 serverId:0];
            [v12 addObject:v113];
            CFRelease(v109);

            v11 = v130;
          }
        }

        v104 = [v102 countByEnumeratingWithState:&v143 objects:v180 count:16];
      }

      while (v104);
    }

    v141 = 0u;
    v142 = 0u;
    v139 = 0u;
    v140 = 0u;
    v81 = v135;
    v114 = [v81 countByEnumeratingWithState:&v139 objects:v179 count:16];
    v91 = *typeb;
    if (v114)
    {
      v115 = v114;
      v116 = *v140;
      do
      {
        for (mm = 0; mm != v115; mm = mm + 1)
        {
          if (*v140 != v116)
          {
            objc_enumerationMutation(v81);
          }

          v118 = [[ASAction alloc] initWithItemChangeType:2 changedItem:0 serverId:*(*(&v139 + 1) + 8 * mm)];
          [v12 addObject:v118];
        }

        v115 = [v81 countByEnumeratingWithState:&v139 objects:v179 count:16];
      }

      while (v115);
    }
  }

  return v12;
}

@end