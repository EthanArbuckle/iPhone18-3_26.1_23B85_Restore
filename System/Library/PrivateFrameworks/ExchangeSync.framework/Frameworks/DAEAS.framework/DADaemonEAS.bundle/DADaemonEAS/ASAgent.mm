@interface ASAgent
- (ASAgent)initWithAccount:(id)account;
- (BOOL)_abBestEffortApplyNewFolders:(id)folders oldFolders:(id)oldFolders shouldCreateFoldersMissingInDB:(BOOL)b;
- (BOOL)_calBestEffortApplyNewFolders:(id)folders oldFolders:(id)oldFolders shouldCreateFoldersMissingInDB:(BOOL)b;
- (BOOL)_clearChangeHistoriesWithChangeIdContext:(id)context dataclass:(int64_t)dataclass inFolderWithId:(id)id pushedActions:(id)actions;
- (BOOL)_closeLocalDBConnectionsWithoutSaving;
- (BOOL)_detectDuplicatedEventFromExchangeEvent:(id)event inFolderWithId:(id)id isInitialSync:(BOOL)sync eventServerIDsToDrop:(id)drop eventServerIDSWithDroppedDeletes:(id)deletes resultingChangeActionsForServer:(id)server outEvent:(id *)outEvent outLocalItem:(const void *)self0 outDidTouchDB:(BOOL *)self1;
- (BOOL)_finishWithInvitationEvent:(void *)event eventUID:(id)d expectedResponse:(int)response wasMyInvite:(BOOL)invite isStillInvite:(BOOL)stillInvite;
- (BOOL)_getHierarchyChangeForDataclass:(int64_t)dataclass changedItemId:(int *)id changeType:(unint64_t *)type externalId:(id *)externalId changeTableIndices:(__CFArray *)indices;
- (BOOL)_handleReminderChangedFolder:(id)folder changeType:(unint64_t)type;
- (BOOL)_handleToDoAction:(id)action inFolderWithId:(id)id isInitialSync:(BOOL)sync resultingChangeActionsForServer:(id)server eventServerIDsToDrop:(id)drop eventServerIDSWithDroppedDeletes:(id)deletes;
- (BOOL)_isOrganizerSelfWithEmail:(id)email;
- (BOOL)_isOrganizerSelfWithLocalEvent:(void *)event;
- (BOOL)_markEventWithLocalIDAsNeedingInvitationEmail:(int)email parentId:(int)id;
- (BOOL)_notesBestEffortApplyNewFolders:(id)folders oldFolders:(id)oldFolders shouldCreateFoldersMissingInDB:(BOOL)b;
- (BOOL)_syncResultForToDoFolder:(id)folder newTag:(id)tag previousTag:(id)previousTag actions:(id)actions results:(id)results changeIdContext:(id)context isInitialSync:(BOOL)sync moreAvailable:(BOOL)self0 resultingChangeActionsForServer:(id)self1 pushedActions:(id)self2 rejectedServerIds:(id)self3 eventsWithPendingInvitationEmails:(id)self4;
- (BOOL)predicateShouldContinue:(id)continue afterFindingRecord:(void *)record;
- (id)_copyABActionsInContainer:(void *)container existingActions:(id)actions dataHandler:(id)handler wantPreserveActions:(BOOL)preserveActions changeContext:(id)context;
- (id)_copyCalendarItemMoveActionsInCalendar:(void *)calendar dataHandler:(id)handler deleteActionsByFolderId:(id)id;
- (id)_copyNotesActionsInNoteStore:(id)store existingActions:(id)actions dataHandler:(id)handler wantPreserveActions:(BOOL)preserveActions changeSet:(id)set;
- (id)_exchangeIdForLocalId:(id)id inContainer:(void *)container dataclass:(int64_t)dataclass redirectToParent:(BOOL)parent;
- (id)_instanceIdFromIdWithExceptionDate:(id)date;
- (id)_localIdForExchangeId:(id)id inContainer:(void *)container dataclass:(int64_t)dataclass;
- (id)_newNoteSourceForDAFolder:(id)folder;
- (id)_noteAccountObject:(BOOL)object;
- (id)_parentIdFromEventId:(id)id;
- (id)_powerLogInfoDictionary;
- (id)_syncKeyForFolderWithId:(id)id;
- (id)_syncKeyForFolderWithId:(id)id dataclass:(int64_t)dataclass;
- (id)foldersForFolderIDs:(id)ds andDataclasses:(int64_t)dataclasses;
- (id)waiterID;
- (void)_addChangeForType:(unint64_t)type changedItemId:(id)id changeId:(id)changeId addedIdsToChangeId:(id)toChangeId modifiedIdsToChangeId:(id)idsToChangeId deletedIdsToChangeId:(id)deletedIdsToChangeId pseudoDeletedIdsToChangeId:(id)pseudoDeletedIdsToChangeId changeIdsToClear:(id)self0;
- (void)_addSimpleChangeForType:(unint64_t)type changedItemId:(id)id addedIds:(id)ids modifiedIds:(id)modifiedIds deletedIds:(id)deletedIds collapsedIds:(id)collapsedIds;
- (void)_appendFolderHierarchyChangesForFoldersOfDataclasses:(int64_t)dataclasses;
- (void)_appendSyncRequest:(id)request atBeginning:(BOOL)beginning;
- (void)_attendeeChangesDueToMeetingForwardingInCalendar:(void *)calendar eventIdToAttendeeEmails:(id)emails eventIdToAttendeeUUIDs:(id)ds dataHandler:(id)handler;
- (void)_cacheFoldersForDataclasses:(int64_t)dataclasses;
- (void)_containerForFolderWithId:(id)id dataclass:(int64_t)dataclass;
- (void)_copyExistingABRecordForContact:(id)contact matchOnAttributes:(BOOL)attributes inStore:(void *)store;
- (void)_copyExistingCalRecordForEvent:(id)event matchOnAttributes:(BOOL)attributes inCalendar:(void *)calendar;
- (void)_exceptionDateChangesInCalendar:(void *)calendar exceptionDateToChangeId:(id)id outHighestSequenceNumber:(int *)number dataHandler:(id)handler;
- (void)_faultInCalendarSubentitiesInCalendar:(void *)calendar addedIdsToEventChangeId:(id)id modifiedIdsToEventChangeId:(id)changeId deletedIdsToEventChangeId:(id)eventChangeId pseudoDeletedIdsToEventChangeId:(id)toEventChangeId localToExchangeIdMap:(id)map eventChangeIdsToClear:(id)clear allAddedDetachmentIds:(id)self0 outRecurrenceId:(int *)self1 outAlarmId:(int *)self2 outAttendeeId:(int *)self3 outAttachmentId:(int *)self4 outHighestSequenceNumber:(int *)self5 dataHandler:(id)self6;
- (void)_finishInitialSyncForFolder:(id)folder dataclass:(int64_t)dataclass;
- (void)_finishInitialSyncForToDoFolder:(id)folder;
- (void)_fireWaitingFolderItemSyncRequests;
- (void)_folderItemsSyncTask:(id)task failedWithErrorCode:(int64_t)code;
- (void)_handleChangeOnEventWithExchangeId:(id)id localId:(int)localId changeType:(unint64_t)type eventChangeId:(id)changeId hasSignificantAttributeChanges:(BOOL)changes container:(void *)container dataHandler:(id)handler addedIdsToEventChangeId:(id)self0 modifiedIdsToEventChangeId:(id)self1 deletedIdsToEventChangeId:(id)self2 pseudoDeletedIdsToEventChangeId:(id)self3 eventChangeIdsToClear:(id)self4 allAddedDetachmentIds:(id)self5 localToExchangeIdMap:(id)self6 outShouldSaveDB:(BOOL *)self7;
- (void)_handleDaemonBackedLocalFolderChangeWithDBChangeIndices:(__CFArray *)indices oldFolders:(id)folders status:(int64_t)status error:(id)error;
- (void)_handleLocalReminderFolderChangeWithFolder:(id)folder oldFolders:(id)folders status:(int64_t)status error:(id)error;
- (void)_moveItemsTask:(id)task failedWithErrorCode:(int64_t)code;
- (void)_newABSourceForDAFolder:(id)folder;
- (void)_newCalCalendarForDAFolder:(id)folder;
- (void)_nilOutContainersForDataclasses:(int64_t)dataclasses;
- (void)_noteSyncForFolderWithId:(id)id andTitle:(id)title finishedWithSuccess:(BOOL)success;
- (void)_openLocalDBConnections;
- (void)_reallyApplyMessageDidSendWithContext:(id)context;
- (void)_reallyFinishInvitationBatch:(id)batch;
- (void)_reallyPrepareFetchAttachmentTask:(id)task;
- (void)_reallySendMoves:(id)moves;
- (void)_reallySyncRequest:(id)request;
- (void)_refirePendingCalendarInvitations;
- (void)_removeABSourceForDAFolder:(id)folder;
- (void)_removeCalCalendarForDAFolder:(id)folder;
- (void)_removeNoteSourceForDAFolder:(id)folder;
- (void)_removePostponedRequestForFolderWithId:(id)id;
- (void)_saveAttachmentDataToDatabaseForTask:(id)task;
- (void)_setSyncKey:(id)key forFolderWithId:(id)id;
- (void)_setUpABNotifications;
- (void)_setUpCalNotifications;
- (void)_setUpNotesNotifications;
- (void)_setUpReminderNotifications;
- (void)_smartMailTask:(id)task failedWithErrorCode:(int64_t)code error:(id)error;
- (void)_syncAllContactsEventsToDosAndNotesFolders;
- (void)_syncEndedWithError:(id)error;
- (void)_syncRequest:(id)request;
- (void)_syncResultForFolder:(id)folder newTag:(id)tag previousTag:(id)previousTag actions:(id)actions results:(id)results changeIdContext:(id)context isInitialSync:(BOOL)sync moreAvailable:(BOOL)self0 dataclass:(int64_t)self1 resultingChangeActionsForServer:(id)self2 pushedActions:(id)self3 rejectedServerIds:(id)self4 eventsWithPendingInvitationEmails:(id)self5;
- (void)_syncStarted;
- (void)_tearDownABNotifications;
- (void)_tearDownCalNotifications;
- (void)_tearDownNotesNotifications;
- (void)_tearDownReminderNotifications;
- (void)_updateSyncKey:(id)key forToDoFolderWithId:(id)id;
- (void)_verifySearchStore;
- (void)_wrapperSyncResultForFolder:(id)folder dataclass:(int64_t)dataclass newTag:(id)tag previousTag:(id)previousTag actions:(id)actions results:(id)results changeIdContext:(id)context isInitialSync:(BOOL)self0 moreAvailable:(BOOL)self1 moreLocalChangesAvailable:(BOOL)self2 pushedActions:(id)self3 rejectedServerIds:(id)self4;
- (void)actionFailed:(int64_t)failed forTask:(id)task error:(id)error;
- (void)dealloc;
- (void)fetchAttachmentTask:(id)task completedWithStatus:(int64_t)status dataWasBase64:(BOOL)base64 error:(id)error;
- (void)finishWithInvitationBatch:(id)batch;
- (void)folderContentsUpdate:(id)update;
- (void)folderHierarchyFailedToUpdate:(id)update withStatus:(int64_t)status andError:(id)error;
- (void)folderHierarchySuccessfullyUpdated:(id)updated withNumChangedFolders:(unint64_t)folders;
- (void)localChangeForFolder:(id)folder finishedWithStatus:(int64_t)status andError:(id)error completionBlock:(id)block;
- (void)meetingResponseFinishedWithStatus:(int64_t)status error:(id)error successfulResponses:(id)responses failedResponses:(id)failedResponses;
- (void)messageDidSendWithContext:(id)context;
- (void)preferredDaysToSyncDidChange;
- (void)prepareFetchAttachmentTask:(id)task;
- (void)processDAFolderChange:(id)change withCompletionBlock:(id)block;
- (void)processMeetingRequestDatas:(id)datas deliveryIdsToClear:(id)clear deliveryIdsToSoftClear:(id)softClear inFolderWithId:(id)id callback:(id)callback;
- (void)requestAgentStopMonitoringWithCompletionBlock:(id)block;
- (void)resultsForMessageMove:(id)move;
- (void)setMatchedRecord:(void *)record;
- (void)startMonitoring;
- (void)syncFolderIDs:(id)ds forDataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested;
- (void)syncResultForContactsFolder:(id)folder newTag:(id)tag previousTag:(id)previousTag newSyncToken:(id)token actions:(id)actions results:(id)results changeIdContext:(id)context isInitialSync:(BOOL)self0 moreAvailable:(BOOL)self1 moreLocalChangesAvailable:(BOOL)self2 pushedActions:(id)self3;
- (void)syncResultForEventsFolder:(id)folder newTag:(id)tag previousTag:(id)previousTag actions:(id)actions results:(id)results changeIdContext:(id)context isInitialSync:(BOOL)sync moreAvailable:(BOOL)self0 moreLocalChangesAvailable:(BOOL)self1 pushedActions:(id)self2 rejectedServerIds:(id)self3;
- (void)syncResultForNotesFolder:(id)folder noteContext:(id)context newTag:(id)tag previousTag:(id)previousTag actions:(id)actions results:(id)results changeSet:(id)set notesToDeleteAfterSync:(id)self0 isInitialSync:(BOOL)self1 moreAvailable:(BOOL)self2 moreLocalChangesAvailable:(BOOL)self3;
- (void)syncResultForToDosFolder:(id)folder newTag:(id)tag previousTag:(id)previousTag actions:(id)actions results:(id)results changeIdContext:(id)context isInitialSync:(BOOL)sync moreAvailable:(BOOL)self0 moreLocalChangesAvailable:(BOOL)self1 pushedActions:(id)self2 rejectedServerIds:(id)self3;
@end

@implementation ASAgent

- (ASAgent)initWithAccount:(id)account
{
  v12.receiver = self;
  v12.super_class = ASAgent;
  v3 = [(ASAgent *)&v12 initWithAccount:account];
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
  account = [(ASAgent *)self account];
  existingTaskManager = [account existingTaskManager];
  [existingTaskManager shutdown];

  v6.receiver = self;
  v6.super_class = ASAgent;
  [(ASAgent *)&v6 dealloc];
}

- (void)setMatchedRecord:(void *)record
{
  matchedRecord = self->_matchedRecord;
  if (matchedRecord != record)
  {
    if (matchedRecord)
    {
      CFRelease(matchedRecord);
    }

    self->_matchedRecord = record;
    if (record)
    {

      CFRetain(record);
    }
  }
}

- (void)_containerForFolderWithId:(id)id dataclass:(int64_t)dataclass
{
  idCopy = id;
  switch(dataclass)
  {
    case 2:
      contactStoresByFolderId = [(ASAgent *)self contactStoresByFolderId];

      if (contactStoresByFolderId)
      {
        contactStoresByFolderId2 = [(ASAgent *)self contactStoresByFolderId];
        goto LABEL_10;
      }

      break;
    case 32:
      v9 = [(NSMutableDictionary *)self->_noteStoreObjectIdsByFolderId objectForKeyedSubscript:idCopy];
      if (!v9)
      {
        contactStoresByFolderId = 0;
        goto LABEL_12;
      }

      v10 = +[ASLocalDBHelper sharedInstance];
      noteDB = [v10 noteDB];
      contactStoresByFolderId = [noteDB storeForObjectID:v9];

LABEL_11:
LABEL_12:

      break;
    case 4:
      contactStoresByFolderId = [(ASAgent *)self eventCalendarsByFolderId];

      if (contactStoresByFolderId)
      {
        contactStoresByFolderId2 = [(ASAgent *)self eventCalendarsByFolderId];
LABEL_10:
        v9 = contactStoresByFolderId2;
        v10 = [contactStoresByFolderId2 objectForKeyedSubscript:idCopy];
        contactStoresByFolderId = v10;
        goto LABEL_11;
      }

      break;
    default:
      contactStoresByFolderId = 0;
      break;
  }

  return contactStoresByFolderId;
}

- (void)_newABSourceForDAFolder:(id)folder
{
  folderCopy = folder;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    v14 = 138412290;
    v15 = folderCopy;
    _os_log_impl(&dword_0, v5, v6, "Creating AB store for DAFolder %@", &v14, 0xCu);
  }

  v7 = +[ASLocalDBHelper sharedInstance];
  account = [(ASAgent *)self account];
  v9 = [account _copyABAccount:1];

  v10 = ABSourceCreate();
  ABRecordSetValue(v10, kABSourceTypeProperty, &off_6E438, 0);
  ABRecordSetValue(v10, kABSourceExternalIdentifierProperty, [folderCopy folderID], 0);
  [v7 abDB];
  ABAddressBookSetAccountForSource();
  ABRecordSetValue(v10, kABSourceNameProperty, [folderCopy folderName], 0);
  account2 = [(ASAgent *)self account];
  addressBookConstraintsPath = [account2 addressBookConstraintsPath];

  ABRecordSetValue(v10, kABSourceConstraintsPathProperty, addressBookConstraintsPath, 0);
  ABAddressBookAddRecord([v7 abDB], v10, 0);
  [v7 abProcessAddedRecords];
  [v7 changeTrackingID];
  [v7 abDB];
  ABChangeHistoryRegisterClientForSource();
  CFRelease(v9);

  return v10;
}

- (void)_newCalCalendarForDAFolder:(id)folder
{
  folderCopy = folder;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    LODWORD(buf[0]) = 138412290;
    *(buf + 4) = folderCopy;
    _os_log_impl(&dword_0, v5, v6, "Creating cal calendar for DAFolder %@", buf, 0xCu);
  }

  account = [(ASAgent *)self account];
  v8 = [account _copyExchangeCalendarStore:1];

  folderID = [folderCopy folderID];
  theArray = 0;
  buf[0] = 0;
  v25 = 0;
  v10 = +[ASLocalDBHelper sharedInstance];
  account2 = [(ASAgent *)self account];
  accountID = [account2 accountID];
  [v10 calDatabaseForAccountID:accountID];
  CalDatabaseCopyCalendarChangesWithIndicesInStore();

  if (buf[0])
  {
    CFRelease(buf[0]);
    buf[0] = 0;
  }

  if ([folderCopy dataclass] != &dword_4)
  {
    [folderCopy dataclass];
  }

  v13 = +[ASLocalDBHelper sharedInstance];
  account3 = [(ASAgent *)self account];
  accountID2 = [account3 accountID];
  [v13 calDatabaseForAccountID:accountID2];
  CalendarForEntityType = CalDatabaseCreateCalendarForEntityType();

  [folderCopy folderName];
  CalCalendarSetTitle();
  [folderCopy folderID];
  CalCalendarSetExternalID();
  CalStoreAddCalendar();
  account4 = [(ASAgent *)self account];
  [account4 usernameWithoutDomain];
  CalCalendarSetOwnerIdentityDisplayName();

  account5 = [(ASAgent *)self account];
  emailAddress = [account5 emailAddress];
  v20 = [NSString stringWithFormat:@"mailto:%@", emailAddress];
  v21 = [NSURL URLWithString:v20];

  if (v21)
  {
    CalCalendarSetOwnerIdentityAddress();
  }

  account6 = [(ASAgent *)self account];
  emailAddress2 = [account6 emailAddress];
  CalCalendarSetOwnerIdentityEmail();

  CFRelease(v8);
  return CalendarForEntityType;
}

- (id)_noteAccountObject:(BOOL)object
{
  objectCopy = object;
  v5 = +[ASLocalDBHelper sharedInstance];
  noteDB = [v5 noteDB];

  account = [(ASAgent *)self account];
  syncStoreIdentifier = [account syncStoreIdentifier];
  newlyAddedAccount = [noteDB accountForAccountId:syncStoreIdentifier];

  if (newlyAddedAccount)
  {
    v10 = 1;
  }

  else
  {
    v10 = !objectCopy;
  }

  if (!v10)
  {
    v11 = DALoggingwithCategory();
    v12 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v11, v12))
    {
      account2 = [(ASAgent *)self account];
      syncStoreIdentifier2 = [account2 syncStoreIdentifier];
      v28 = 138412290;
      v29 = syncStoreIdentifier2;
      _os_log_impl(&dword_0, v11, v12, "Creating Exchange Notes account in db for account id %@", &v28, 0xCu);
    }

    newlyAddedAccount = [noteDB newlyAddedAccount];
    account3 = [(ASAgent *)self account];
    syncStoreIdentifier3 = [account3 syncStoreIdentifier];
    [newlyAddedAccount setAccountIdentifier:syncStoreIdentifier3];

    [newlyAddedAccount setAccountType:2];
    account4 = [(ASAgent *)self account];
    backingAccountInfo = [account4 backingAccountInfo];
    displayAccount = [backingAccountInfo displayAccount];
    accountDescription = [displayAccount accountDescription];
    [newlyAddedAccount setName:accountDescription];

    stores = [newlyAddedAccount stores];
    v22 = [stores count];

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
        account5 = [(ASAgent *)self account];
        syncStoreIdentifier4 = [account5 syncStoreIdentifier];
        v28 = 138412290;
        v29 = syncStoreIdentifier4;
        _os_log_impl(&dword_0, v23, v24, "Not saving Exchange Notes account for account id %@, because it doesn't have any stores.", &v28, 0xCu);
      }
    }
  }

  return newlyAddedAccount;
}

- (id)_newNoteSourceForDAFolder:(id)folder
{
  folderCopy = folder;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    v15 = 138412290;
    v16 = folderCopy;
    _os_log_impl(&dword_0, v5, v6, "Creating Exchange Notes store for DAFolder %@", &v15, 0xCu);
  }

  v7 = +[ASLocalDBHelper sharedInstance];
  noteDB = [v7 noteDB];

  v9 = [(ASAgent *)self _noteAccountObject:1];
  newlyAddedStore = [noteDB newlyAddedStore];
  [newlyAddedStore setAccount:v9];
  folderID = [folderCopy folderID];
  [newlyAddedStore setExternalIdentifier:folderID];

  folderName = [folderCopy folderName];
  [newlyAddedStore setName:folderName];

  defaultStore = [v9 defaultStore];

  if (!defaultStore)
  {
    [v9 setDefaultStore:newlyAddedStore];
  }

  return newlyAddedStore;
}

- (void)_removeABSourceForDAFolder:(id)folder
{
  folderCopy = folder;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    v17 = 138412290;
    v18 = folderCopy;
    _os_log_impl(&dword_0, v5, v6, "Deleting AB store for DAFolder %@", &v17, 0xCu);
  }

  v7 = +[ASLocalDBHelper sharedInstance];
  [v7 abDB];
  account = [(ASAgent *)self account];
  syncStoreIdentifier = [account syncStoreIdentifier];
  folderID = [folderCopy folderID];
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
      account2 = [(ASAgent *)self account];
      syncStoreIdentifier2 = [account2 syncStoreIdentifier];
      folderID2 = [folderCopy folderID];
      v17 = 138412546;
      v18 = syncStoreIdentifier2;
      v19 = 2112;
      v20 = folderID2;
      _os_log_impl(&dword_0, v12, v13, "Asked to delete source with syncStoreIdentifier %@ folderId %@.  But that doesn't exist in the db", &v17, 0x16u);
    }
  }
}

- (void)_removeCalCalendarForDAFolder:(id)folder
{
  folderCopy = folder;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    v15 = 138412290;
    v16 = folderCopy;
    _os_log_impl(&dword_0, v5, v6, "Deleting cal calendar for DAFolder %@", &v15, 0xCu);
  }

  account = [(ASAgent *)self account];
  v8 = [account _copyExchangeCalendarStore:0];

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
          folderID = [folderCopy folderID];
          v14 = [folderID isEqualToString:v12];

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

- (void)_removeNoteSourceForDAFolder:(id)folder
{
  folderCopy = folder;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    v17 = 138412290;
    v18 = folderCopy;
    _os_log_impl(&dword_0, v5, v6, "Deleting Note store for DAFolder %@", &v17, 0xCu);
  }

  v7 = +[ASLocalDBHelper sharedInstance];
  noteDB = [v7 noteDB];

  v9 = [(ASAgent *)self _noteAccountObject:0];
  folderID = [folderCopy folderID];
  v11 = [v9 storeForExternalId:folderID];

  if (v11)
  {
    [noteDB deleteStore:v11];
  }

  else
  {
    v12 = DALoggingwithCategory();
    v13 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v12, v13))
    {
      account = [(ASAgent *)self account];
      syncStoreIdentifier = [account syncStoreIdentifier];
      folderID2 = [folderCopy folderID];
      v17 = 138412546;
      v18 = syncStoreIdentifier;
      v19 = 2112;
      v20 = folderID2;
      _os_log_impl(&dword_0, v12, v13, "Asked to delete source with syncStoreIdentifier %@ folderId %@.  But that doesn't exist in the db", &v17, 0x16u);
    }
  }
}

- (void)_cacheFoldersForDataclasses:(int64_t)dataclasses
{
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 134217984;
    dataclassesCopy = dataclasses;
    _os_log_impl(&dword_0, v5, v6, "Caching folders for dataclasses %lx", buf, 0xCu);
  }

  account = [(ASAgent *)self account];
  v8 = [account enabledForDADataclass:2];

  selfCopy = self;
  dataclassesCopy2 = dataclasses;
  if ((dataclasses & 2) != 0 && v8)
  {
    v9 = objc_opt_new();
    [(ASAgent *)self setContactStoresByFolderId:v9];

    v10 = +[ASLocalDBHelper sharedInstance];
    [v10 abDB];

    account2 = [(ASAgent *)self account];
    v12 = [account2 _copyABAccount:1];

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
            dataclassesCopy = v18;
            _os_log_impl(&dword_0, v19, v16, "Found an exchange contact store, with storeId %@", buf, 0xCu);
          }

          account3 = [(ASAgent *)selfCopy account];
          v21 = [account3 folderWithId:v18];

          if (v21)
          {
            folderID = [v21 folderID];
            if (folderID)
            {
              contactStoresByFolderId = [(ASAgent *)selfCopy contactStoresByFolderId];
              [contactStoresByFolderId setObject:v17 forKeyedSubscript:folderID];

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
              account4 = [(ASAgent *)selfCopy account];
              folderHierarchy = [account4 folderHierarchy];
              *buf = 138412546;
              dataclassesCopy = v18;
              v256 = 2112;
              v257 = folderHierarchy;
              _os_log_impl(&dword_0, v25, v16, "No known contact folder with id %@. folderHierarchy is %@", buf, 0x16u);

              v13 = v220;
            }

            folderID = [(ASAgent *)selfCopy account];
            [folderID stopMonitoringFolderWithID:v18];
          }
        }

        ++v14;
      }

      while (v14 < [v13 count]);
    }

    self = selfCopy;
    account5 = [(ASAgent *)selfCopy account];
    contactsFolders = [account5 contactsFolders];

    v246 = 0u;
    v247 = 0u;
    v244 = 0u;
    v245 = 0u;
    v30 = contactsFolders;
    v31 = [v30 countByEnumeratingWithState:&v244 objects:v253 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = 0;
      folderID2 = 0;
      v35 = 0;
      v36 = 0;
      v37 = *v245;
      do
      {
        v38 = 0;
        v39 = folderID2;
        v40 = v35;
        do
        {
          if (*v245 != v37)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v244 + 1) + 8 * v38);

          folderID2 = [v35 folderID];

          contactStoresByFolderId2 = [(ASAgent *)selfCopy contactStoresByFolderId];
          v42 = [contactStoresByFolderId2 objectForKeyedSubscript:folderID2];

          if (!v42)
          {
            v43 = [(ASAgent *)selfCopy _newABSourceForDAFolder:v35];
            contactStoresByFolderId3 = [(ASAgent *)selfCopy contactStoresByFolderId];
            [contactStoresByFolderId3 setObject:v43 forKeyedSubscript:folderID2];

            CFRelease(v43);
            v33 = 1;
            v36 = 1;
          }

          v38 = v38 + 1;
          v39 = folderID2;
          v40 = v35;
        }

        while (v32 != v38);
        v32 = [v30 countByEnumeratingWithState:&v244 objects:v253 count:16];
      }

      while (v32);

      self = selfCopy;
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
      contactStoresByFolderId4 = [(ASAgent *)self contactStoresByFolderId];
      *buf = 138412290;
      dataclassesCopy = contactStoresByFolderId4;
      _os_log_impl(&dword_0, v45, v46, "We ended up with a _contactStoresByFolderId of %@", buf, 0xCu);
    }

    LOBYTE(dataclasses) = dataclassesCopy2;
    if (v33)
    {
      account6 = [(ASAgent *)self account];
      defaultContactsFolder = [account6 defaultContactsFolder];
      folderID3 = [defaultContactsFolder folderID];

      if (folderID3)
      {
        v51 = [(ASAgent *)self _containerForFolderWithId:folderID3 dataclass:2];
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
  account7 = [(ASAgent *)self account];
  v56 = [account7 enabledForDADataclass:4];

  if ((dataclasses & 4) == 0 || !v56)
  {
    goto LABEL_119;
  }

  v57 = objc_opt_new();
  [(ASAgent *)self setEventCalendarsByFolderId:v57];

  v58 = 0;
  v59 = 10;
  while (!v58)
  {
    account8 = [(ASAgent *)self account];
    v58 = [account8 _copyExchangeCalendarStore:1];

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
      dataclassesCopy = v65;
      _os_log_impl(&dword_0, v66, v63, "Found an exchange calendar with externalId %@", buf, 0xCu);
    }

    account9 = [(ASAgent *)selfCopy account];
    v68 = [account9 folderWithId:v65];

    if (v68)
    {
      if ([v68 dataclass] != &dword_4)
      {
LABEL_60:

        self = selfCopy;
        goto LABEL_61;
      }

      folderID4 = [v68 folderID];
      if (folderID4)
      {
        eventCalendarsByFolderId = [(ASAgent *)selfCopy eventCalendarsByFolderId];
        [eventCalendarsByFolderId setObject:v64 forKeyedSubscript:folderID4];
      }
    }

    else
    {
      v71 = DALoggingwithCategory();
      if (os_log_type_enabled(v71, v63))
      {
        account10 = [(ASAgent *)selfCopy account];
        folderHierarchy2 = [account10 folderHierarchy];
        *buf = 138412546;
        dataclassesCopy = v65;
        v256 = 2112;
        v257 = folderHierarchy2;
        _os_log_impl(&dword_0, v71, v63, "No known calendar folder with id %@. folderHierarchy is %@", buf, 0x16u);
      }

      folderID4 = [(ASAgent *)selfCopy account];
      [folderID4 stopMonitoringFolderWithID:v65];
    }

    goto LABEL_60;
  }

LABEL_62:
  CFRelease(v58);
  account11 = [(ASAgent *)self account];
  eventsFolders = [account11 eventsFolders];

  v242 = 0u;
  v243 = 0u;
  v240 = 0u;
  v241 = 0u;
  obj = eventsFolders;
  v76 = [obj countByEnumeratingWithState:&v240 objects:v252 count:16];
  if (v76)
  {
    v77 = v76;
    v221 = 0;
    dataclasses = 0;
    v78 = 0;
    v79 = *v241;
    do
    {
      for (i = 0; i != v77; i = i + 1)
      {
        v81 = v78;
        dataclassesCopy3 = dataclasses;
        if (*v241 != v79)
        {
          objc_enumerationMutation(obj);
        }

        v78 = *(*(&v240 + 1) + 8 * i);

        dataclasses = [v78 folderID];

        eventCalendarsByFolderId2 = [(ASAgent *)selfCopy eventCalendarsByFolderId];
        v84 = [eventCalendarsByFolderId2 objectForKeyedSubscript:dataclasses];

        if (!v84)
        {
          v85 = [(ASAgent *)selfCopy _newCalCalendarForDAFolder:v78];
          if (v85)
          {
            v86 = v85;
            eventCalendarsByFolderId3 = [(ASAgent *)selfCopy eventCalendarsByFolderId];
            [eventCalendarsByFolderId3 setObject:v86 forKeyedSubscript:dataclasses];

            CFRelease(v86);
            v221 = 1;
          }
        }
      }

      v77 = [obj countByEnumeratingWithState:&v240 objects:v252 count:16];
    }

    while (v77);

    self = selfCopy;
  }

  else
  {
    v221 = 0;
    dataclasses = 0;
  }

  v88 = +[ASLocalDBHelper sharedInstance];
  account12 = [(ASAgent *)self account];
  accountID = [account12 accountID];
  [v88 calDatabaseForAccountID:accountID];

  v91 = DALoggingwithCategory();
  v92 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v91, v92))
  {
    eventCalendarsByFolderId4 = [(ASAgent *)self eventCalendarsByFolderId];
    *buf = 138412290;
    dataclassesCopy = eventCalendarsByFolderId4;
    _os_log_impl(&dword_0, v91, v92, "We ended up with a _eventCalendarsByFolderId of %@", buf, 0xCu);
  }

  account13 = [(ASAgent *)self account];
  defaultEventsFolder = [account13 defaultEventsFolder];
  folderID5 = [defaultEventsFolder folderID];

  v209 = folderID5;
  if (!folderID5)
  {
LABEL_108:
    if (v221)
    {
      goto LABEL_116;
    }

    goto LABEL_117;
  }

  v97 = [(ASAgent *)self _containerForFolderWithId:folderID5 dataclass:4];
  eventCalendarsByFolderId5 = [(ASAgent *)self eventCalendarsByFolderId];
  v99 = [eventCalendarsByFolderId5 count];

  if (!v99)
  {
    goto LABEL_102;
  }

  v238 = 0u;
  v239 = 0u;
  v236 = 0u;
  v237 = 0u;
  eventCalendarsByFolderId6 = [(ASAgent *)self eventCalendarsByFolderId];
  allKeys = [eventCalendarsByFolderId6 allKeys];

  v213 = allKeys;
  v217 = [allKeys countByEnumeratingWithState:&v236 objects:v251 count:16];
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
    dataclassesCopy5 = dataclasses;
    do
    {
      if (*v237 != v216)
      {
        objc_enumerationMutation(v213);
      }

      dataclasses = *(*(&v236 + 1) + 8 * v102);

      eventCalendarsByFolderId7 = [(ASAgent *)self eventCalendarsByFolderId];
      v105 = [eventCalendarsByFolderId7 objectForKeyedSubscript:dataclasses];

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
        account14 = [(ASAgent *)self account];
        [account14 usernameWithoutDomain];
        CalCalendarSetOwnerIdentityDisplayName();

        v221 = 1;
      }

      account15 = [(ASAgent *)self account];
      emailAddress = [account15 emailAddress];
      v113 = [v108 isEqualToString:emailAddress];

      if ((v113 & 1) == 0)
      {
        v114 = DALoggingwithCategory();
        if (os_log_type_enabled(v114, type))
        {
          account16 = [(ASAgent *)selfCopy account];
          emailAddress2 = [account16 emailAddress];
          *buf = 138412546;
          dataclassesCopy = v108;
          v256 = 2112;
          v257 = emailAddress2;
          _os_log_impl(&dword_0, v114, type, "Changing email address from %@ to %@", buf, 0x16u);
        }

        account17 = [(ASAgent *)selfCopy account];
        emailAddress3 = [account17 emailAddress];
        CalCalendarSetOwnerIdentityEmail();

        v221 = 1;
      }

      if (v109)
      {
        self = selfCopy;
      }

      else
      {
        account18 = [(ASAgent *)selfCopy account];
        emailAddress4 = [account18 emailAddress];
        v120 = [NSString stringWithFormat:@"mailto:%@", emailAddress4];
        v122 = [NSURL URLWithString:v120];

        if (v122)
        {
          CalCalendarSetOwnerIdentityAddress();
          v221 = 1;
        }

        self = selfCopy;
        v97 = v212;
      }

      v102 = v102 + 1;
      dataclassesCopy5 = dataclasses;
    }

    while (v217 != v102);
    v217 = [v213 countByEnumeratingWithState:&v236 objects:v251 count:16];
  }

  while (v217);
LABEL_101:

  dataclasses = 0;
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
  account19 = [(ASAgent *)self account];
  accountID2 = [account19 accountID];
  [v127 calSaveDatabaseForAccountID:accountID2];

LABEL_117:
  LOBYTE(dataclasses) = dataclassesCopy2;
  v126 = v211;
LABEL_118:

LABEL_119:
  account20 = [(ASAgent *)self account];
  v131 = [account20 enabledForDADataclass:16];

  if ((dataclasses & 0x10) != 0 && v131)
  {
    sharedReminderKitHelper = [(ASAgent *)self sharedReminderKitHelper];
    account21 = [(ASAgent *)self account];
    v134 = [sharedReminderKitHelper getFolderIdsForAccount:account21];

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
            dataclassesCopy = v140;
            _os_log_impl(&dword_0, v141, v138, "Found an exchange reminder list with externalId %@", buf, 0xCu);
          }

          account22 = [(ASAgent *)self account];
          v143 = [account22 folderWithId:v140];

          if (!v143)
          {
            v144 = DALoggingwithCategory();
            if (os_log_type_enabled(v144, v138))
            {
              account23 = [(ASAgent *)self account];
              folderHierarchy3 = [account23 folderHierarchy];
              *buf = 138412546;
              dataclassesCopy = v140;
              v256 = 2112;
              v257 = folderHierarchy3;
              _os_log_impl(&dword_0, v144, v138, "No known reminder folder with id %@. folderHierarchy is %@", buf, 0x16u);

              self = selfCopy;
            }

            account24 = [(ASAgent *)self account];
            [account24 stopMonitoringFolderWithID:v140];
          }
        }

        v136 = [v222 countByEnumeratingWithState:&v232 objects:v250 count:16];
      }

      while (v136);
    }

    account25 = [(ASAgent *)self account];
    toDosFolders = [account25 toDosFolders];

    sharedReminderKitHelper2 = [(ASAgent *)self sharedReminderKitHelper];
    account26 = [(ASAgent *)self account];
    v152 = [sharedReminderKitHelper2 bestEffortApplyNewFolders:toDosFolders oldFolders:0 forAccount:account26 shouldCreateFoldersMissingInDB:1];

    account27 = [(ASAgent *)self account];
    [account27 defaultToDosFolder];
    v155 = v154 = self;
    dataclasses = [v155 folderID];

    if (dataclasses)
    {
      sharedReminderKitHelper3 = [(ASAgent *)v154 sharedReminderKitHelper];
      account28 = [(ASAgent *)v154 account];
      v158 = [sharedReminderKitHelper3 verifyDefaultFolderId:dataclasses forAccount:account28];
    }

    else
    {
      v158 = 0;
    }

    self = selfCopy;
    if ((v152 | v158))
    {
      sharedReminderKitHelper4 = [(ASAgent *)selfCopy sharedReminderKitHelper];
      [sharedReminderKitHelper4 commitChangesToStore];
    }

    LOBYTE(dataclasses) = dataclassesCopy2;
  }

  account29 = [(ASAgent *)self account];
  v161 = [account29 enabledForDADataclass:32];

  if ((dataclasses & 0x20) != 0 && v161)
  {
    noteStoreObjectIdsByFolderId = [(ASAgent *)self noteStoreObjectIdsByFolderId];

    if (!noteStoreObjectIdsByFolderId)
    {
      v163 = objc_opt_new();
      [(ASAgent *)self setNoteStoreObjectIdsByFolderId:v163];
    }

    noteStoreObjectIdsByFolderId2 = [(ASAgent *)self noteStoreObjectIdsByFolderId];
    [noteStoreObjectIdsByFolderId2 removeAllObjects];

    [(ASAgent *)self _noteAccountObject:0];
    v228 = 0u;
    v229 = 0u;
    v230 = 0u;
    v218 = v231 = 0u;
    stores = [v218 stores];
    v166 = [stores countByEnumeratingWithState:&v228 objects:v249 count:16];
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
            objc_enumerationMutation(stores);
          }

          v171 = *(*(&v228 + 1) + 8 * k);
          externalIdentifier = [v171 externalIdentifier];
          if (externalIdentifier)
          {
            v173 = DALoggingwithCategory();
            if (os_log_type_enabled(v173, v169))
            {
              *buf = 138412290;
              dataclassesCopy = externalIdentifier;
              _os_log_impl(&dword_0, v173, v169, "Found an exchange note store with external id %@", buf, 0xCu);
            }

            account30 = [(ASAgent *)self account];
            v175 = [account30 folderWithId:externalIdentifier];

            if (v175)
            {
              if ([v175 dataclass] == &stru_20)
              {
                objectID = [v171 objectID];
                noteStoreObjectIdsByFolderId3 = [(ASAgent *)self noteStoreObjectIdsByFolderId];
                [noteStoreObjectIdsByFolderId3 setObject:objectID forKeyedSubscript:externalIdentifier];

                goto LABEL_158;
              }
            }

            else
            {
              v178 = DALoggingwithCategory();
              if (os_log_type_enabled(v178, v169))
              {
                account31 = [(ASAgent *)self account];
                folderHierarchy4 = [account31 folderHierarchy];
                *buf = 138412546;
                dataclassesCopy = externalIdentifier;
                v256 = 2112;
                v257 = folderHierarchy4;
                _os_log_impl(&dword_0, v178, v169, "No known note folder with id %@. folderHierarchy is %@", buf, 0x16u);

                self = selfCopy;
              }

              objectID = [(ASAgent *)self account];
              [objectID stopMonitoringFolderWithID:externalIdentifier];
LABEL_158:
            }
          }
        }

        v167 = [stores countByEnumeratingWithState:&v228 objects:v249 count:16];
      }

      while (v167);
    }

    account32 = [(ASAgent *)self account];
    notesFolders = [account32 notesFolders];

    v226 = 0u;
    v227 = 0u;
    v224 = 0u;
    v225 = 0u;
    v183 = notesFolders;
    v184 = [v183 countByEnumeratingWithState:&v224 objects:v248 count:16];
    if (v184)
    {
      v185 = v184;
      v186 = 0;
      folderID6 = 0;
      v188 = 0;
      v189 = *v225;
      do
      {
        v190 = 0;
        v191 = v186;
        v192 = folderID6;
        do
        {
          if (*v225 != v189)
          {
            objc_enumerationMutation(v183);
          }

          v186 = *(*(&v224 + 1) + 8 * v190);

          folderID6 = [v186 folderID];

          noteStoreObjectIdsByFolderId4 = [(ASAgent *)selfCopy noteStoreObjectIdsByFolderId];
          v194 = [noteStoreObjectIdsByFolderId4 objectForKeyedSubscript:folderID6];

          if (!v194)
          {
            v195 = [(ASAgent *)selfCopy _newNoteSourceForDAFolder:v186];
            v196 = v195;
            if (v195)
            {
              objectID2 = [v195 objectID];
              noteStoreObjectIdsByFolderId5 = [(ASAgent *)selfCopy noteStoreObjectIdsByFolderId];
              [noteStoreObjectIdsByFolderId5 setObject:objectID2 forKeyedSubscript:folderID6];

              v188 = 1;
            }
          }

          v190 = v190 + 1;
          v191 = v186;
          v192 = folderID6;
        }

        while (v185 != v190);
        v185 = [v183 countByEnumeratingWithState:&v224 objects:v248 count:16];
      }

      while (v185);

      self = selfCopy;
    }

    else
    {
      v188 = 0;
    }

    v199 = DALoggingwithCategory();
    v200 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v199, v200))
    {
      noteStoreObjectIdsByFolderId6 = [(ASAgent *)self noteStoreObjectIdsByFolderId];
      *buf = 138412290;
      dataclassesCopy = noteStoreObjectIdsByFolderId6;
      _os_log_impl(&dword_0, v199, v200, "We ended up with a _noteStoreObjectIdsByFolderId of %@", buf, 0xCu);
    }

    account33 = [(ASAgent *)self account];
    defaultNotesFolder = [account33 defaultNotesFolder];
    folderID7 = [defaultNotesFolder folderID];

    if (folderID7)
    {
      v205 = [(ASAgent *)self _containerForFolderWithId:folderID7 dataclass:32];
      v206 = v218;
      if (v205)
      {
        defaultStore = [v218 defaultStore];

        if (v205 != defaultStore)
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
  account = [(ASAgent *)self account];
  v4 = [account enabledForDADataclass:4];

  if (v4)
  {
    v5 = +[ASLocalDBHelper sharedInstance];
    account2 = [(ASAgent *)self account];
    accountID = [account2 accountID];
    account3 = [(ASAgent *)self account];
    changeTrackingID = [account3 changeTrackingID];
    [v5 calOpenDatabaseForAccountID:accountID clientID:changeTrackingID];
  }

  account4 = [(ASAgent *)self account];
  v11 = [account4 enabledForDADataclass:2];

  if (v11)
  {
    v12 = +[ASLocalDBHelper sharedInstance];
    account5 = [(ASAgent *)self account];
    changeTrackingID2 = [account5 changeTrackingID];
    [v12 abOpenDBWithClientIdentifier:changeTrackingID2];
  }

  account6 = [(ASAgent *)self account];
  v16 = [account6 enabledForDADataclass:32];

  if (v16)
  {
    v17 = +[ASLocalDBHelper sharedInstance];
    [v17 noteOpenDB];
  }
}

- (BOOL)_closeLocalDBConnectionsWithoutSaving
{
  account = [(ASAgent *)self account];
  v4 = [account enabledForDADataclass:4];

  if (v4)
  {
    v5 = +[ASLocalDBHelper sharedInstance];
    account2 = [(ASAgent *)self account];
    accountID = [account2 accountID];
    v8 = [v5 calCloseDatabaseForAccountID:accountID save:0];

    if (!v8)
    {
      return 0;
    }
  }

  account3 = [(ASAgent *)self account];
  v10 = [account3 enabledForDADataclass:2];

  if (v10)
  {
    v11 = +[ASLocalDBHelper sharedInstance];
    v12 = [v11 abCloseDBAndSave:0];

    if (!v12)
    {
      return 0;
    }
  }

  account4 = [(ASAgent *)self account];
  v14 = [account4 enabledForDADataclass:32];

  if (!v14)
  {
    return 1;
  }

  v15 = +[ASLocalDBHelper sharedInstance];
  v16 = [v15 noteCloseDBAndSave:0];

  return v16 != 0;
}

- (BOOL)_abBestEffortApplyNewFolders:(id)folders oldFolders:(id)oldFolders shouldCreateFoldersMissingInDB:(BOOL)b
{
  foldersCopy = folders;
  v8 = DALoggingwithCategory();
  v9 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v8, v9))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v8, v9, "Doing best-effort match of AB folders", buf, 2u);
  }

  v10 = +[ASLocalDBHelper sharedInstance];
  v11 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(foldersCopy, "count")}];
  v12 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(foldersCopy, "count")}];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v13 = foldersCopy;
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
          folderName = [v16 folderName];
          [v11 setObject:v16 forKeyedSubscript:folderName];

          folderID = [v16 folderID];
          [v12 setObject:v16 forKeyedSubscript:folderID];
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

  account = [(ASAgent *)self account];
  v23 = [account _copyABAccount:1];

  [v10 abDB];
  v24 = ABAddressBookCopyArrayOfAllSourcesInAccount();
  if (v24)
  {
    cf = v23;
    bCopy = b;
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
        folderID2 = [v33 folderID];
        v68 = v35;
        v37 = v35;
        v38 = v34;
        v39 = folderID2;
        folderName2 = [v37 folderName];
        [v70 addObject:v39];
        if (![v72 isEqualToString:v39] || (objc_msgSend(v29, "isEqualToString:", folderName2) & 1) == 0)
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
        addressBookConstraintsPath = [v41 addressBookConstraintsPath];

        v25 = v40;
        if (([v67 isEqualToString:addressBookConstraintsPath] & 1) == 0)
        {
          ABRecordSetValue(v27, v63, addressBookConstraintsPath, 0);
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
    if (bCopy)
    {
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      allKeys = [v11 allKeys];
      v44 = [allKeys countByEnumeratingWithState:&v74 objects:v83 count:16];
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
              objc_enumerationMutation(allKeys);
            }

            v46 = [v11 objectForKeyedSubscript:*(*(&v74 + 1) + 8 * v48)];

            CFRelease([(ASAgent *)self _newABSourceForDAFolder:v46]);
            v48 = v48 + 1;
            v49 = v46;
          }

          while (v45 != v48);
          v45 = [allKeys countByEnumeratingWithState:&v74 objects:v83 count:16];
        }

        while (v45);

        v73 = 1;
        v10 = v65;
        v24 = v69;
      }
    }

    account2 = [(ASAgent *)self account];
    v51 = [account2 defaultContainerIdentifierForDADataclass:2];

    v52 = &PLLogRegisteredEvent_ptr;
    if (!v51)
    {
      goto LABEL_48;
    }

    [v10 abDB];
    [(ASAgent *)self account];
    v54 = v53 = v24;
    accountID = [v54 accountID];
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
    sharedInstance = [v52[390] sharedInstance];
    [sharedInstance abSaveDB];

    v59 = 1;
LABEL_53:

    goto LABEL_54;
  }

  CFRelease(v23);
  v59 = 0;
LABEL_54:

  return v59;
}

- (BOOL)_calBestEffortApplyNewFolders:(id)folders oldFolders:(id)oldFolders shouldCreateFoldersMissingInDB:(BOOL)b
{
  bCopy = b;
  foldersCopy = folders;
  oldFoldersCopy = oldFolders;
  v81 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(foldersCopy, "count")}];
  v9 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(foldersCopy, "count")}];
  v75 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(oldFoldersCopy, "count")}];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v10 = foldersCopy;
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
        account = [(ASAgent *)self account];
        if ([account enabledForDADataclass:4])
        {
          dataclass = [v15 dataclass];

          if (dataclass != &dword_4)
          {
            continue;
          }

          if ([v15 dataclass] == &dword_4)
          {
            folderName = [v15 folderName];
            [v81 setObject:v15 forKeyedSubscript:folderName];
          }

          account = [v15 folderID];
          [v9 setObject:v15 forKeyedSubscript:account];
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
  obj = oldFoldersCopy;
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
      account2 = [(ASAgent *)self account];
      if ([account2 enabledForDADataclass:4])
      {
        dataclass2 = [v23 dataclass];

        if (dataclass2 != &dword_4)
        {
          continue;
        }

        account2 = [v23 folderID];
        [v75 setObject:v23 forKeyedSubscript:account2];
      }
    }

    v20 = [obj countByEnumeratingWithState:&v91 objects:v104 count:16];
  }

  while (v20);
LABEL_25:

  account3 = [(ASAgent *)self account];
  v27 = [account3 _copyExchangeCalendarStore:1];

  v79 = CalStoreCopyCalendars();
  v77 = objc_opt_new();
  v76 = objc_opt_new();
  v82 = objc_opt_new();
  theArray = 0;
  v90 = 0;
  v88 = 0;
  v28 = +[ASLocalDBHelper sharedInstance];
  account4 = [(ASAgent *)self account];
  accountID = [account4 accountID];
  [v28 calDatabaseForAccountID:accountID];
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

      folderID = [v42 folderID];
      folderName2 = [v43 folderName];
      [v77 addObject:folderID];
      if (![v36 isEqualToString:folderID])
      {
        goto LABEL_38;
      }

      v73 = [v75 objectForKeyedSubscript:v36];
      folderName3 = [v73 folderName];
      v72 = [folderName3 isEqualToString:folderName2];

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
  if (!bCopy)
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
  allKeys = [v31 allKeys];
  v54 = [allKeys countByEnumeratingWithState:&v84 objects:v99 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v59 = [v31 objectForKeyedSubscript:*(*(&v84 + 1) + 8 * k)];
        folderID2 = [v59 folderID];
        if (folderID2 && [v82 containsObject:folderID2])
        {
          v61 = DALoggingwithCategory();
          if (os_log_type_enabled(v61, v57))
          {
            *buf = 138412290;
            *v101 = folderID2;
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

      v55 = [allKeys countByEnumeratingWithState:&v84 objects:v99 count:16];
    }

    while (v55);
  }

  v63 = v74;
  v52 = v71;
  if (v33)
  {
LABEL_72:
    v65 = +[ASLocalDBHelper sharedInstance];
    account5 = [(ASAgent *)self account];
    accountID2 = [account5 accountID];
    [v65 calSaveDatabaseForAccountID:accountID2];

    v64 = 1;
    goto LABEL_73;
  }

LABEL_70:
  v64 = 0;
LABEL_73:

  return v64;
}

- (BOOL)_notesBestEffortApplyNewFolders:(id)folders oldFolders:(id)oldFolders shouldCreateFoldersMissingInDB:(BOOL)b
{
  bCopy = b;
  foldersCopy = folders;
  v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(foldersCopy, "count")}];
  v8 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(foldersCopy, "count")}];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v9 = foldersCopy;
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
          folderName = [v14 folderName];
          [v7 setObject:v14 forKeyedSubscript:folderName];

          folderID = [v14 folderID];
          [v8 setObject:v14 forKeyedSubscript:folderID];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v67 objects:v73 count:16];
    }

    while (v11);
  }

  v17 = +[ASLocalDBHelper sharedInstance];
  noteDB = [v17 noteDB];

  v18 = -[ASAgent _noteAccountObject:](self, "_noteAccountObject:", [v9 count] != 0);
  stores = [v18 stores];
  v58 = objc_opt_new();
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v52 = stores;
  v20 = [stores copy];
  v21 = [v20 countByEnumeratingWithState:&v63 objects:v72 count:16];
  if (v21)
  {
    v22 = v21;
    selfCopy = self;
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
        name = [v26 name];
        externalIdentifier = [v26 externalIdentifier];
        if (externalIdentifier)
        {
          if ([v58 containsObject:externalIdentifier])
          {
            goto LABEL_25;
          }

          v29 = v54;
          v30 = externalIdentifier;
        }

        else
        {
          if (!name)
          {
            goto LABEL_25;
          }

          v29 = v56;
          v30 = name;
        }

        v31 = [v29 objectForKeyedSubscript:v30];
        v32 = v31;
        if (!v31)
        {
LABEL_25:
          [noteDB deleteStore:v26];
          v23 = 1;
          goto LABEL_26;
        }

        v33 = v24;
        v34 = v20;
        folderID2 = [v31 folderID];
        folderName2 = [v32 folderName];
        [v58 addObject:folderID2];
        if (![externalIdentifier isEqualToString:folderID2] || (objc_msgSend(name, "isEqualToString:", folderName2) & 1) == 0)
        {
          folderName3 = [v32 folderName];
          [v26 setName:folderName3];

          folderID3 = [v32 folderID];
          [v26 setExternalIdentifier:folderID3];

          v23 = 1;
        }

        [v56 removeObjectForKey:name];

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

        if (bCopy)
        {
          v7 = v56;
          v8 = v54;
          v18 = v50;
          v9 = v51;
          self = selfCopy;
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
  if (bCopy)
  {
LABEL_31:
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    allKeys = [v7 allKeys];
    v41 = [allKeys countByEnumeratingWithState:&v59 objects:v71 count:16];
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
            objc_enumerationMutation(allKeys);
          }

          v46 = [v7 objectForKeyedSubscript:*(*(&v59 + 1) + 8 * j)];
        }

        v42 = [allKeys countByEnumeratingWithState:&v59 objects:v71 count:16];
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
  account = [(ASAgent *)self account];
  [account setEventsNumberOfPastDaysToSync:{-[ASAgent preferredEventDaysToSync](self, "preferredEventDaysToSync")}];

  [(ASAgent *)self _syncAllEventsFoldersWithRemoteChanges:1];
}

- (id)foldersForFolderIDs:(id)ds andDataclasses:(int64_t)dataclasses
{
  dsCopy = ds;
  v20 = +[NSMutableArray array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = dsCopy;
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
        account = [(ASAgent *)self account];
        v16 = [account folderWithId:v14];

        if (v16)
        {
          if (([v16 dataclass] & dataclasses) != 0)
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

- (void)syncFolderIDs:(id)ds forDataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested
{
  requestedCopy = requested;
  dsCopy = ds;
  if (requestedCopy)
  {
    account = [(ASAgent *)self account];
    [account setShouldUseOpportunisticSockets:0];

    account2 = [(ASAgent *)self account];
    [account2 setWasUserInitiated:1];
  }

  if (dataclasses)
  {
    v11 = DALoggingwithCategory();
    v12 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v11, v12))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_0, v11, v12, "syncing email accounts isn't supported via DataAccess framework", &v21, 2u);
    }

    dataclasses &= ~1uLL;
    if ((dataclasses & 4) == 0)
    {
LABEL_5:
      if ((dataclasses & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_18;
    }
  }

  else if ((dataclasses & 4) == 0)
  {
    goto LABEL_5;
  }

  if (dsCopy)
  {
    v13 = [(ASAgent *)self foldersForFolderIDs:dsCopy andDataclasses:4];
    [(ASAgent *)self _appendSyncRequestForFolders:v13 remoteChanges:1];
  }

  else
  {
    [(ASAgent *)self _appendSyncRequestForFoldersOfDataclasses:4 remoteChanges:1];
  }

  dataclasses &= ~4uLL;
  if ((dataclasses & 2) == 0)
  {
LABEL_6:
    if ((dataclasses & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_18:
  if (dsCopy)
  {
    v14 = [(ASAgent *)self foldersForFolderIDs:dsCopy andDataclasses:2];
    [(ASAgent *)self _appendSyncRequestForFolders:v14 remoteChanges:1];
  }

  else
  {
    [(ASAgent *)self _appendSyncRequestForFoldersOfDataclasses:2 remoteChanges:1];
  }

  dataclasses &= ~2uLL;
  if ((dataclasses & 0x10) == 0)
  {
LABEL_7:
    if ((dataclasses & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_22:
  if (dsCopy)
  {
    v15 = [(ASAgent *)self foldersForFolderIDs:dsCopy andDataclasses:16];
    [(ASAgent *)self _appendSyncRequestForFolders:v15 remoteChanges:1];
  }

  else
  {
    [(ASAgent *)self _appendSyncRequestForFoldersOfDataclasses:16 remoteChanges:1];
  }

  dataclasses &= ~0x10uLL;
  if ((dataclasses & 0x20) == 0)
  {
LABEL_8:
    if ((dataclasses & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_30;
  }

LABEL_26:
  if (dsCopy)
  {
    v16 = [(ASAgent *)self foldersForFolderIDs:dsCopy andDataclasses:32];
    [(ASAgent *)self _appendSyncRequestForFolders:v16 remoteChanges:1];
  }

  else
  {
    [(ASAgent *)self _appendSyncRequestForFoldersOfDataclasses:32 remoteChanges:1];
  }

  dataclasses &= ~0x20uLL;
  if ((dataclasses & 8) == 0)
  {
LABEL_9:
    if (!dataclasses)
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

  dataclasses &= ~8uLL;
  if (dataclasses)
  {
LABEL_33:
    v19 = DALoggingwithCategory();
    v20 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v19, v20))
    {
      v21 = 134217984;
      dataclassesCopy = dataclasses;
      _os_log_impl(&dword_0, v19, v20, "discarding unknown bits set in sync request: %lx", &v21, 0xCu);
    }
  }

LABEL_36:
}

- (void)folderHierarchyFailedToUpdate:(id)update withStatus:(int64_t)status andError:(id)error
{
  errorCopy = error;
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
    account = [(ASAgent *)self account];
    [account setSafeToPing:1];
  }

  [(ASAgent *)self _syncEndedWithError:errorCopy];
}

- (void)folderHierarchySuccessfullyUpdated:(id)updated withNumChangedFolders:(unint64_t)folders
{
  updatedCopy = updated;
  [(ASAgent *)self _openLocalDBConnections];
  [(ASAgent *)self setSyncWhenReachable:0];
  if (updatedCopy)
  {
    isFirstSync = [updatedCopy isFirstSync];
    oldFolders = [updatedCopy oldFolders];
  }

  else
  {
    oldFolders = 0;
    isFirstSync = 1;
  }

  account = [(ASAgent *)self account];
  visibleFolders = [account visibleFolders];

  v10 = DALoggingwithCategory();
  type = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v10, type))
  {
    *buf = 138412802;
    v121 = oldFolders;
    v122 = 2112;
    v123 = visibleFolders;
    v124 = 1024;
    LODWORD(v125) = isFirstSync;
    _os_log_impl(&dword_0, v10, type, "ASAgent folderHierarchySuccessfullyUpdated: oldFolders is %@, currentFolders is %@ isFirstSync %d", buf, 0x1Cu);
  }

  if (isFirstSync)
  {
    account2 = [(ASAgent *)self account];
    v12 = [account2 enabledForDADataclass:2];

    if (v12)
    {
      [(ASAgent *)self _abBestEffortApplyNewFolders:visibleFolders oldFolders:oldFolders shouldCreateFoldersMissingInDB:1];
    }

    account3 = [(ASAgent *)self account];
    v14 = [account3 enabledForDADataclass:4];

    if (v14)
    {
      [(ASAgent *)self _calBestEffortApplyNewFolders:visibleFolders oldFolders:oldFolders shouldCreateFoldersMissingInDB:1];
    }

    account4 = [(ASAgent *)self account];
    v16 = [account4 enabledForDADataclass:16];

    if (v16)
    {
      [(ASAgent *)self _reminderBestEffortApplyNewFolders:visibleFolders oldFolders:oldFolders shouldCreateFoldersMissingInDB:1];
    }

    account5 = [(ASAgent *)self account];
    v18 = [account5 enabledForDADataclass:32];

    if (v18)
    {
      [(ASAgent *)self _notesBestEffortApplyNewFolders:visibleFolders oldFolders:oldFolders shouldCreateFoldersMissingInDB:1];
    }

    goto LABEL_103;
  }

  v96 = updatedCopy;
  v19 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(oldFolders, "count")}];
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  obj = oldFolders;
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

        folderID = [v22 folderID];
        [v19 setObject:v22 forKeyedSubscript:folderID];

        v24 = v24 + 1;
        v25 = v22;
      }

      while (v21 != v24);
      v21 = [obj countByEnumeratingWithState:&v116 objects:v129 count:16];
    }

    while (v21);
  }

  v95 = oldFolders;

  v27 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(visibleFolders, "count")}];
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v93 = visibleFolders;
  v28 = visibleFolders;
  v29 = [v28 countByEnumeratingWithState:&v112 objects:v128 count:16];
  if (v29)
  {
    v30 = v29;
    selfCopy = self;
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

        folderID2 = [v32 folderID];
        [v27 setObject:v32 forKeyedSubscript:folderID2];

        v34 = v34 + 1;
        v35 = v32;
      }

      while (v30 != v34);
      v30 = [v28 countByEnumeratingWithState:&v112 objects:v128 count:16];
    }

    while (v30);

    self = selfCopy;
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
    folderID3 = 0;
    v40 = 0;
    v99 = 0;
    v41 = *v109;
    selfCopy2 = self;
    while (1)
    {
      v42 = 0;
      do
      {
        v43 = v40;
        v44 = folderID3;
        if (*v109 != v41)
        {
          objc_enumerationMutation(v102);
        }

        v40 = *(*(&v108 + 1) + 8 * v42);

        folderID3 = [v40 folderID];

        v45 = [v19 objectForKeyedSubscript:folderID3];

        if (!v45)
        {
          dataclass = [v40 dataclass];
          if (dataclass > 15)
          {
            if (dataclass == &dword_10)
            {
              account6 = [(ASAgent *)self account];
              if (([account6 enabledForDADataclass:16] & 1) == 0)
              {
                goto LABEL_58;
              }

              sharedReminderKitHelper = [(ASAgent *)self sharedReminderKitHelper];
              account7 = [(ASAgent *)self account];
              v55 = [sharedReminderKitHelper isFolderExistsWithId:folderID3 forAccount:account7];

              if (v55)
              {
                self = selfCopy2;
                v19 = v98;
              }

              else
              {
                sharedReminderKitHelper2 = [(ASAgent *)selfCopy2 sharedReminderKitHelper];
                account8 = [(ASAgent *)selfCopy2 account];
                v58 = [sharedReminderKitHelper2 addFolder:v40 forAccount:account8];

                if (v58)
                {
                  sharedReminderKitHelper3 = [(ASAgent *)selfCopy2 sharedReminderKitHelper];
                  [sharedReminderKitHelper3 commitChangesToStore];
                }

                self = selfCopy2;
                v19 = v98;
              }
            }

            else
            {
              if (dataclass != &stru_20)
              {
                goto LABEL_37;
              }

              account6 = [(ASAgent *)self account];
              if (![account6 enabledForDADataclass:32])
              {
                goto LABEL_58;
              }

              v50 = [(ASAgent *)self _containerForFolderWithId:folderID3 dataclass:32];

              if (!v50)
              {
                v51 = [(ASAgent *)self _newNoteSourceForDAFolder:v40];
                v99 |= v51 != 0;
              }
            }
          }

          else
          {
            if (dataclass == (&dword_0 + 2))
            {
              account6 = [(ASAgent *)self account];
              if ([account6 enabledForDADataclass:2])
              {
                v52 = [(ASAgent *)self _containerForFolderWithId:folderID3 dataclass:2];

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

            if (dataclass != &dword_4)
            {
              goto LABEL_37;
            }

            account6 = [(ASAgent *)self account];
            if (![account6 enabledForDADataclass:4])
            {
              goto LABEL_58;
            }

            v48 = [(ASAgent *)self _containerForFolderWithId:folderID3 dataclass:4];

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

  folderID3 = 0;
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
      v67 = folderID3;
      if (*v105 != v64)
      {
        objc_enumerationMutation(obja);
      }

      v63 = *(*(&v104 + 1) + 8 * v65);

      folderID3 = [v63 folderID];

      v68 = [v27 objectForKeyedSubscript:folderID3];

      if (!v68)
      {
        v69 = DALoggingwithCategory();
        if (os_log_type_enabled(v69, type))
        {
          *buf = 138412802;
          v121 = v63;
          v122 = 2112;
          v123 = folderID3;
          v124 = 2112;
          v125 = v27;
          _os_log_impl(&dword_0, v69, type, "ASAgent folderHierarchySuccessfullyUpdated: deleting folder %@, because its id %@ wasn't in my map of %@", buf, 0x20u);
        }

        dataclass2 = [v63 dataclass];
        if (dataclass2 > 15)
        {
          if (dataclass2 == &dword_10)
          {
            sharedReminderKitHelper4 = [(ASAgent *)self sharedReminderKitHelper];
            account9 = [(ASAgent *)self account];
            selfCopy3 = self;
            v80 = [sharedReminderKitHelper4 deleteFolder:v63 forAccount:account9];

            if (v80)
            {
              sharedReminderKitHelper5 = [(ASAgent *)selfCopy3 sharedReminderKitHelper];
              [sharedReminderKitHelper5 commitChangesToStore];
            }

            self = selfCopy3;
            v19 = v98;
          }

          else if (dataclass2 == &stru_20)
          {
            account10 = [(ASAgent *)self account];
            v74 = [account10 enabledForDADataclass:32];

            if (v74)
            {
              [(ASAgent *)self _removeNoteSourceForDAFolder:v63];
              goto LABEL_86;
            }
          }
        }

        else
        {
          if (dataclass2 == (&dword_0 + 2))
          {
            account11 = [(ASAgent *)self account];
            v76 = [account11 enabledForDADataclass:2];

            if (!v76)
            {
              goto LABEL_71;
            }

            [(ASAgent *)self _removeABSourceForDAFolder:v63];
            goto LABEL_86;
          }

          if (dataclass2 == &dword_4)
          {
            account12 = [(ASAgent *)self account];
            v72 = [account12 enabledForDADataclass:4];

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
  account13 = [(ASAgent *)self account];
  v84 = [account13 enabledForDADataclass:2];

  updatedCopy = v96;
  if (v84)
  {
    [(ASAgent *)self _abBestEffortApplyNewFolders:v102 oldFolders:obja shouldCreateFoldersMissingInDB:0];
  }

  account14 = [(ASAgent *)self account];
  v86 = [account14 enabledForDADataclass:4];

  if (v86)
  {
    [(ASAgent *)self _calBestEffortApplyNewFolders:v102 oldFolders:obja shouldCreateFoldersMissingInDB:0];
  }

  account15 = [(ASAgent *)self account];
  v88 = [account15 enabledForDADataclass:16];

  if (v88)
  {
    [(ASAgent *)self _reminderBestEffortApplyNewFolders:v102 oldFolders:obja shouldCreateFoldersMissingInDB:0];
  }

  account16 = [(ASAgent *)self account];
  v90 = [account16 enabledForDADataclass:32];

  if (v90)
  {
    [(ASAgent *)self _notesBestEffortApplyNewFolders:v102 oldFolders:obja shouldCreateFoldersMissingInDB:0];
  }

  if (v99)
  {
    [(ASAgent *)self _updateFolderHierarchyRequireChangedFolders:0];
  }

  visibleFolders = v94;
  oldFolders = v95;
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
    account17 = [(ASAgent *)self account];
    [account17 setSafeToPing:1];
  }

  [(ASAgent *)self _syncEndedWithError:0];
}

- (void)_handleDaemonBackedLocalFolderChangeWithDBChangeIndices:(__CFArray *)indices oldFolders:(id)folders status:(int64_t)status error:(id)error
{
  foldersCopy = folders;
  errorCopy = error;
  if ((status + 1) <= 0xB && ((1 << (status + 1)) & 0xBC3) != 0)
  {
    visibleFolders = DALoggingwithCategory();
    v13 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(visibleFolders, v13))
    {
      v30 = 134218242;
      statusCopy = status;
      v32 = 2112;
      v33 = errorCopy;
      _os_log_impl(&dword_0, visibleFolders, v13, "Failed to send folder change to server with status %ld error %@", &v30, 0x16u);
    }
  }

  else
  {
    [(ASAgent *)self _openLocalDBConnections];
    if (indices && CFArrayGetCount(indices))
    {
      v14 = +[ASLocalDBHelper sharedInstance];
      account = [(ASAgent *)self account];
      accountID = [account accountID];
      [v14 calDatabaseForAccountID:accountID];

      account2 = [(ASAgent *)self account];
      v18 = [account2 _copyExchangeCalendarStore:1];

      account3 = [(ASAgent *)self account];
      changeTrackingID = [account3 changeTrackingID];
      CalDatabaseClearIndividualChangeRowIDsForClient();

      CFRelease(v18);
      account4 = [(ASAgent *)self account];
      accountID2 = [account4 accountID];
      [v14 calSaveDatabaseForAccountID:accountID2];
    }

    account5 = [(ASAgent *)self account];
    visibleFolders = [account5 visibleFolders];

    account6 = [(ASAgent *)self account];
    v25 = [account6 enabledForDADataclass:2];

    if (v25)
    {
      [(ASAgent *)self _abBestEffortApplyNewFolders:visibleFolders oldFolders:foldersCopy shouldCreateFoldersMissingInDB:0];
    }

    account7 = [(ASAgent *)self account];
    v27 = [account7 enabledForDADataclass:4];

    if (v27)
    {
      [(ASAgent *)self _calBestEffortApplyNewFolders:visibleFolders oldFolders:foldersCopy shouldCreateFoldersMissingInDB:0];
    }

    account8 = [(ASAgent *)self account];
    v29 = [account8 enabledForDADataclass:32];

    if (v29)
    {
      [(ASAgent *)self _notesBestEffortApplyNewFolders:visibleFolders oldFolders:foldersCopy shouldCreateFoldersMissingInDB:0];
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

- (void)_handleLocalReminderFolderChangeWithFolder:(id)folder oldFolders:(id)folders status:(int64_t)status error:(id)error
{
  folderCopy = folder;
  foldersCopy = folders;
  errorCopy = error;
  if ((status + 1) <= 0xB && ((1 << (status + 1)) & 0xBC3) != 0)
  {
    v13 = DALoggingwithCategory();
    v14 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v13, v14))
    {
      v24 = 134218242;
      statusCopy = status;
      v26 = 2112;
      v27 = errorCopy;
      _os_log_impl(&dword_0, v13, v14, "Failed to send folder change to server with status %ld error %@", &v24, 0x16u);
    }
  }

  else
  {
    changeType = [folderCopy changeType];
    sharedReminderKitHelper = [(ASAgent *)self sharedReminderKitHelper];
    if (changeType)
    {
      serverID = [folderCopy serverID];
      account = [(ASAgent *)self account];
      [sharedReminderKitHelper clearFolderChangeForFolderID:serverID forAccount:account];
    }

    else
    {
      serverID = [folderCopy localUUID];
      account = [folderCopy serverID];
      account2 = [(ASAgent *)self account];
      [sharedReminderKitHelper clearFolderAdditionForFolderUUID:serverID folderID:account forAccount:account2];
    }

    account3 = [(ASAgent *)self account];
    visibleFolders = [account3 visibleFolders];

    account4 = [(ASAgent *)self account];
    v23 = [account4 enabledForDADataclass:16];

    if (v23)
    {
      [(ASAgent *)self _reminderBestEffortApplyNewFolders:visibleFolders oldFolders:foldersCopy shouldCreateFoldersMissingInDB:0];
    }
  }

  if (!self->_numLocalFolderUpdatesInFlight)
  {
    [(ASAgent *)self _syncAllContactsEventsToDosAndNotesFolders];
  }
}

- (void)localChangeForFolder:(id)folder finishedWithStatus:(int64_t)status andError:(id)error completionBlock:(id)block
{
  folderCopy = folder;
  errorCopy = error;
  blockCopy = block;
  if (status == 2)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"ASAccountFolderHierarchyExternallyChangedNotification", 0, 0, 1u);
  }

  --self->_numLocalFolderUpdatesInFlight;
  if (blockCopy)
  {
    serverID = [folderCopy serverID];
    displayName = [folderCopy displayName];
    blockCopy[2](blockCopy, serverID, displayName, status, errorCopy);
  }

  else
  {
    serverID = DALoggingwithCategory();
    v16 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(serverID, v16))
    {
      v18 = 138412802;
      v19 = folderCopy;
      v20 = 2048;
      statusCopy = status;
      v22 = 2112;
      v23 = errorCopy;
      _os_log_impl(&dword_0, serverID, v16, "changed folder %@ finished with status %ld and error %@, but I can't find the completion block for it!", &v18, 0x20u);
    }
  }

  if (!self->_numLocalFolderUpdatesInFlight)
  {
    account = [(ASAgent *)self account];
    [account setSafeToPing:1];
  }
}

- (void)processDAFolderChange:(id)change withCompletionBlock:(id)block
{
  blockCopy = block;
  changeCopy = change;
  v8 = [ASFolder alloc];
  [changeCopy dataclass];
  v9 = _UserASFolderTypeForDataclass();
  folderId = [changeCopy folderId];
  parentFolderId = [changeCopy parentFolderId];
  displayName = [changeCopy displayName];
  v15 = [v8 initWithFolderType:v9 serverID:folderId parentID:parentFolderId displayName:displayName localID:0];

  [v15 setChangeType:{objc_msgSend(changeCopy, "changeType")}];
  renameOnCollision = [changeCopy renameOnCollision];

  [v15 setRenameOnCollision:renameOnCollision];
  ++self->_numLocalFolderUpdatesInFlight;
  account = [(ASAgent *)self account];
  [account syncLocallyChangedFolder:v15 consumer:self completionBlock:blockCopy];
}

- (void)processMeetingRequestDatas:(id)datas deliveryIdsToClear:(id)clear deliveryIdsToSoftClear:(id)softClear inFolderWithId:(id)id callback:(id)callback
{
  datasCopy = datas;
  clearCopy = clear;
  softClearCopy = softClear;
  idCopy = id;
  callbackCopy = callback;
  account = [(ASAgent *)self account];
  v18 = [account enabledForDADataclass:4];

  if (v18)
  {
    account2 = [(ASAgent *)self account];
    [account2 attemptInvitationLinkageForMetaDatas:datasCopy deliveryIdsToClear:clearCopy deliveryIdsToSoftClear:softClearCopy inFolderWithId:idCopy callback:callbackCopy];
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

    (*(callbackCopy + 2))(callbackCopy, 0);
  }
}

- (void)_setUpCalNotifications
{
  v3 = +[ESLocalDBWatcher sharedDBWatcher];
  account = [(ASAgent *)self account];
  accountID = [account accountID];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_7F00;
  v7[3] = &unk_6CE80;
  v7[4] = self;
  [v3 registerConcernedCalParty:self forAccountID:accountID withChangedBlock:v7];

  account2 = [(ASAgent *)self account];
  [account2 setEventsNumberOfPastDaysToSync:{-[ASAgent preferredEventDaysToSync](self, "preferredEventDaysToSync")}];
}

- (void)_tearDownCalNotifications
{
  v5 = +[ESLocalDBWatcher sharedDBWatcher];
  account = [(ASAgent *)self account];
  accountID = [account accountID];
  [v5 removeConcernedCalParty:self forAccountID:accountID];
}

- (void)_setUpReminderNotifications
{
  sharedReminderKitHelper = [(ASAgent *)self sharedReminderKitHelper];
  account = [(ASAgent *)self account];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_8114;
  v5[3] = &unk_6CE80;
  v5[4] = self;
  [sharedReminderKitHelper registerReminderChangeNotificationsForAccount:account withChangedBlock:v5];
}

- (void)_tearDownReminderNotifications
{
  sharedReminderKitHelper = [(ASAgent *)self sharedReminderKitHelper];
  account = [(ASAgent *)self account];
  [sharedReminderKitHelper removeReminderChangeNotificationsForAccount:account];
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
  account = [(ASAgent *)self account];
  v4 = [account enabledForDADataclass:8];

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

    account2 = [(ASAgent *)self account];
    v9 = [account2 enabledForDADataclass:2];

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
  account3 = [(ASAgent *)self account];
  changeTrackingID = [account3 changeTrackingID];
  [v13 abOpenDBWithClientIdentifier:changeTrackingID];

  v16 = +[ASLocalDBHelper sharedInstance];
  abDB = [v16 abDB];

  account4 = [(ASAgent *)self account];
  v19 = 1;
  v20 = [account4 _copyABAccount:1];

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

          ABAddressBookRemoveRecord(abDB, v25, 0);
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
      ABAddressBookRemoveRecord(abDB, v23, 0);
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
    ABAddressBookAddRecord(abDB, v23, 0);
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
  sharedInstance = [v12[390] sharedInstance];
  [sharedInstance abCloseDBAndSave:v22 & 1];
}

- (void)startMonitoring
{
  [(ASAgent *)self setIsMonitoring:1];
  selfCopy = self;
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
  account = [(ASAgent *)self account];
  [v3 addObserver:self selector:"folderHierarchyUpdateNotification:" name:DAAccountFolderHierarchyNeedsUpdateNotification object:account];

  v5 = +[NSNotificationCenter defaultCenter];
  account2 = [(ASAgent *)self account];
  [v5 addObserver:self selector:"folderHierarchyUpdateRequireChangedFoldersNotification:" name:DAAccountFolderHierarchyNeedsUpdateRequireChangedFoldersNotification object:account2];

  v7 = +[NSNotificationCenter defaultCenter];
  account3 = [(ASAgent *)self account];
  [v7 addObserver:self selector:"folderContentsUpdate:" name:DAAccountFolderContentsChangedNotification object:account3];

  account4 = [(ASAgent *)self account];
  LODWORD(account3) = [account4 enabledForDADataclass:2];

  if (account3)
  {
    [(ASAgent *)self _setUpABNotifications];
  }

  account5 = [(ASAgent *)self account];
  v11 = [account5 enabledForDADataclass:4];

  if (v11)
  {
    [(ASAgent *)self _setUpCalNotifications];
  }

  account6 = [(ASAgent *)self account];
  v13 = [account6 enabledForDADataclass:16];

  if (v13)
  {
    [(ASAgent *)self _setUpReminderNotifications];
  }

  account7 = [(ASAgent *)self account];
  v15 = [account7 enabledForDADataclass:32];

  if (v15)
  {
    [(ASAgent *)self _setUpNotesNotifications];
  }

  account8 = [(ASAgent *)self account];
  folderIdsForPersistentPush = [account8 folderIdsForPersistentPush];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  allKeys = [folderIdsForPersistentPush allKeys];
  v18 = [allKeys countByEnumeratingWithState:&v37 objects:v48 count:16];
  if (v18)
  {
    v19 = *v38;
    v20 = _CPLog_to_os_log_type[6];
    obj = allKeys;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v37 + 1) + 8 * i);
        account9 = [(ASAgent *)selfCopy account];
        v24 = [account9 folderIdsForPersistentPushForDataclasses:1 clientID:v22];

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

        account10 = [(ASAgent *)selfCopy account];
        allObjects = [v24 allObjects];
        v29 = [account10 monitorFoldersWithIDs:allObjects];

        if (v29)
        {
          v30 = +[ESDAccessManager sharedManager];
          account11 = [(ASAgent *)selfCopy account];
          accountID = [account11 accountID];
          allObjects2 = [v24 allObjects];
          [v30 addPersistentClientWithAccountID:accountID clientID:v22 watchedIDs:allObjects2];

LABEL_21:
        }
      }

      allKeys = obj;
      v18 = [obj countByEnumeratingWithState:&v37 objects:v48 count:16];
    }

    while (v18);
  }

  objc_destroyWeak(&v42);
  objc_destroyWeak(&location);
}

- (void)requestAgentStopMonitoringWithCompletionBlock:(id)block
{
  self->_isShuttingDown = 1;
  blockCopy = block;
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
  account = [(ASAgent *)self account];
  existingTaskManager = [account existingTaskManager];
  [existingTaskManager shutdown];

  v7 = +[DALocalDBGateKeeper sharedGateKeeper];
  account2 = [(ASAgent *)self account];
  [v7 unregisterWaiterForDataclassLocks:account2];

  v9 = +[DALocalDBGateKeeper sharedGateKeeper];
  [v9 unregisterWaiterForDataclassLocks:self];

  blockCopy[2](blockCopy, self);
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
    v5 = [idCopy substringToIndex:v4];
  }

  v6 = v5;

  return v6;
}

- (id)_exchangeIdForLocalId:(id)id inContainer:(void *)container dataclass:(int64_t)dataclass redirectToParent:(BOOL)parent
{
  parentCopy = parent;
  idCopy = id;
  serverId = 0;
  if (dataclass > 15)
  {
    if (dataclass == 16)
    {
      v25 = +[ASLocalDBHelper sharedInstance];
      account = [(ASAgent *)self account];
      accountID = [account accountID];
      [v25 calDatabaseForAccountID:accountID];
      [idCopy intValue];
      v28 = CalDatabaseCopyCalendarItemWithRowID();

      if (v28)
      {
        serverId = CalCalendarItemCopyExternalID();
        CFRelease(v28);
        goto LABEL_19;
      }
    }

    else
    {
      if (dataclass != 32)
      {
        goto LABEL_19;
      }

      v16 = [NSSet alloc];
      v17 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [idCopy intValue]);
      v18 = [v16 initWithObjects:{v17, 0}];

      v19 = +[ASLocalDBHelper sharedInstance];
      noteDB = [v19 noteDB];
      v21 = [noteDB notesForIntegerIds:v18];

      if ([v21 count])
      {
        v22 = [v21 objectAtIndexedSubscript:0];
        serverId = [v22 serverId];

        goto LABEL_19;
      }
    }

    goto LABEL_16;
  }

  if (dataclass == 2)
  {
    v23 = +[ASLocalDBHelper sharedInstance];
    PersonWithRecordID = ABAddressBookGetPersonWithRecordID([v23 abDB], objc_msgSend(idCopy, "intValue"));

    if (PersonWithRecordID)
    {
      serverId = ABRecordCopyValue(PersonWithRecordID, kABPersonExternalIdentifierProperty);
      goto LABEL_19;
    }

LABEL_16:
    serverId = 0;
    goto LABEL_19;
  }

  if (dataclass == 4)
  {
    v11 = +[ASLocalDBHelper sharedInstance];
    account2 = [(ASAgent *)self account];
    accountID2 = [account2 accountID];
    [v11 calDatabaseForAccountID:accountID2];
    [idCopy intValue];
    serverId = CalDatabaseCopyCalendarItemWithRowID();

    if (serverId)
    {
      v14 = CalCalendarItemCopyExternalID();
      CFRelease(serverId);
      if (parentCopy)
      {
        v15 = [(ASAgent *)self _parentIdFromEventId:v14];
      }

      else
      {
        v15 = v14;
      }

      serverId = v15;
    }
  }

LABEL_19:

  return serverId;
}

- (id)_localIdForExchangeId:(id)id inContainer:(void *)container dataclass:(int64_t)dataclass
{
  idCopy = id;
  switch(dataclass)
  {
    case 32:
      v17 = [[NSSet alloc] initWithObjects:{idCopy, 0}];
      v18 = [container notesForServerIds:v17];
      if ([v18 count])
      {
        v19 = [v18 objectAtIndexedSubscript:0];
        integerId = [v19 integerId];
        v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d", [integerId intValue]);
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_15;
    case 4:
      v13 = +[ASLocalDBHelper sharedInstance];
      account = [(ASAgent *)self account];
      accountID = [account accountID];
      [v13 calDatabaseForAccountID:accountID];
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

- (id)_syncKeyForFolderWithId:(id)id
{
  idCopy = id;
  account = [(ASAgent *)self account];
  v6 = [account folderWithId:idCopy];

  if (v6)
  {
    v7 = -[ASAgent _syncKeyForFolderWithId:dataclass:](self, "_syncKeyForFolderWithId:dataclass:", idCopy, [v6 dataclass]);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_syncKeyForFolderWithId:(id)id dataclass:(int64_t)dataclass
{
  idCopy = id;
  syncAnchor = 0;
  if (dataclass > 15)
  {
    if (dataclass == 16)
    {
      sharedReminderKitHelper = [(ASAgent *)self sharedReminderKitHelper];
      account = [(ASAgent *)self account];
      syncAnchor = [sharedReminderKitHelper syncKeyForFolderWithId:idCopy forAccount:account];

      goto LABEL_20;
    }

    if (dataclass != 32)
    {
      goto LABEL_20;
    }

    v10 = [(ASAgent *)self _containerForFolderWithId:idCopy dataclass:32];
    v8 = v10;
    if (v10)
    {
      syncAnchor = [v10 syncAnchor];
    }

    else
    {
      syncAnchor = 0;
    }

    goto LABEL_19;
  }

  if (dataclass == 2)
  {
    v11 = [(ASAgent *)self _containerForFolderWithId:idCopy dataclass:2];
    if (v11)
    {
      syncAnchor = ABRecordCopyValue(v11, kABSourceExternalModificationTagProperty);
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (dataclass != 4)
  {
    goto LABEL_20;
  }

  if (![(ASAgent *)self _containerForFolderWithId:idCopy dataclass:4])
  {
    v14 = DALoggingwithCategory();
    v15 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v14, v15))
    {
      v17 = 138412290;
      v18 = idCopy;
      _os_log_impl(&dword_0, v14, v15, "_syncKeyForFolderWithId Calendar containing folder with folder ID %@ not found", &v17, 0xCu);
    }

LABEL_17:
    syncAnchor = 0;
    goto LABEL_20;
  }

  syncAnchor = CalCalendarCopyExternalModificationTag();
  v8 = DALoggingwithCategory();
  v9 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v8, v9))
  {
    v17 = 138412546;
    v18 = syncAnchor;
    v19 = 2112;
    v20 = idCopy;
    _os_log_impl(&dword_0, v8, v9, "_syncKeyForFolderWithId Calendar external tag %@ for folder ID %@", &v17, 0x16u);
  }

LABEL_19:

LABEL_20:

  return syncAnchor;
}

- (void)_setSyncKey:(id)key forFolderWithId:(id)id
{
  keyCopy = key;
  idCopy = id;
  account = [(ASAgent *)self account];
  v10 = [account folderWithId:idCopy];

  if (v10)
  {
    if ([v10 dataclass] == &dword_10)
    {
      sub_47D08(a2, self);
    }

    if ([v10 dataclass] == &dword_4)
    {
      if ([(ASAgent *)self _containerForFolderWithId:idCopy dataclass:4])
      {
        CalCalendarSetExternalModificationTag();
        v11 = DALoggingwithCategory();
        v12 = _CPLog_to_os_log_type[7];
        if (os_log_type_enabled(v11, v12))
        {
          v18 = 138412546;
          v19 = keyCopy;
          v20 = 2112;
          v21 = idCopy;
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
          v19 = keyCopy;
          v20 = 2112;
          v21 = idCopy;
          v13 = "Attempted to set sync key %@ for folder with id %@.  But that events folder doesn't have a corresponding calendar";
          goto LABEL_18;
        }
      }

LABEL_19:

      goto LABEL_20;
    }

    if ([v10 dataclass] == &dword_0 + 2)
    {
      v14 = [(ASAgent *)self _containerForFolderWithId:idCopy dataclass:2];
      if (!v14)
      {
        v11 = DALoggingwithCategory();
        v12 = _CPLog_to_os_log_type[3];
        if (os_log_type_enabled(v11, v12))
        {
          v18 = 138412546;
          v19 = keyCopy;
          v20 = 2112;
          v21 = idCopy;
          v13 = "Attempted to set sync key %@ for folder with id %@.  But that contacts folder doesn't have a corresponding store";
          goto LABEL_18;
        }

        goto LABEL_19;
      }

      ABRecordSetValue(v14, kABSourceExternalModificationTagProperty, keyCopy, 0);
    }

    else if ([v10 dataclass] == &stru_20)
    {
      v15 = [(ASAgent *)self _containerForFolderWithId:idCopy dataclass:32];
      v11 = v15;
      if (v15)
      {
        [v15 setSyncAnchor:keyCopy];
      }

      else
      {
        v16 = DALoggingwithCategory();
        v17 = _CPLog_to_os_log_type[3];
        if (os_log_type_enabled(v16, v17))
        {
          v18 = 138412546;
          v19 = keyCopy;
          v20 = 2112;
          v21 = idCopy;
          _os_log_impl(&dword_0, v16, v17, "Attempted to set sync key %@ for folder with id %@.  But that notes folder doesn't have a corresponding store", &v18, 0x16u);
        }
      }

      goto LABEL_19;
    }
  }

LABEL_20:
}

- (void)_updateSyncKey:(id)key forToDoFolderWithId:(id)id
{
  idCopy = id;
  keyCopy = key;
  sharedReminderKitHelper = [(ASAgent *)self sharedReminderKitHelper];
  account = [(ASAgent *)self account];
  v10 = [sharedReminderKitHelper updateSyncKey:keyCopy forFolderWithId:idCopy forAccount:account];

  if (v10)
  {
    sharedReminderKitHelper2 = [(ASAgent *)self sharedReminderKitHelper];
    [sharedReminderKitHelper2 commitChangesToStore];
  }
}

- (void)_syncStarted
{
  account = [(ASAgent *)self account];
  accountID = [account accountID];
  [DAStoreSyncStatusUpdater syncStartedForStoreWithExternalID:accountID];
}

- (void)_syncEndedWithError:(id)error
{
  errorCopy = error;
  account = [(ASAgent *)self account];
  accountID = [account accountID];
  [DAStoreSyncStatusUpdater syncEndedForStoreWithExternalID:accountID withError:errorCopy];
}

- (BOOL)predicateShouldContinue:(id)continue afterFindingRecord:(void *)record
{
  if (record)
  {
    [(ASAgent *)self setMatchedRecord:record];
  }

  return record == 0;
}

- (void)_copyExistingABRecordForContact:(id)contact matchOnAttributes:(BOOL)attributes inStore:(void *)store
{
  attributesCopy = attributes;
  contactCopy = contact;
  if (attributesCopy)
  {
    v9 = +[ASLocalDBHelper sharedInstance];
    abDB = [v9 abDB];

    v11 = objc_opt_new();
    v12 = [ABPredicate personPredicateWithGroup:0 source:store account:0];
    [v11 addObject:v12];
    firstName = [contactCopy firstName];

    if (firstName)
    {
      firstName2 = [contactCopy firstName];
      v15 = [ABPredicate personPredicateWithValue:firstName2 comparison:0 forProperty:kABPersonFirstNameProperty];

      [v11 addObject:v15];
    }

    lastName = [contactCopy lastName];

    if (lastName)
    {
      lastName2 = [contactCopy lastName];
      v18 = [ABPredicate personPredicateWithValue:lastName2 comparison:0 forProperty:kABPersonLastNameProperty];

      [v11 addObject:v18];
    }

    middleName = [contactCopy middleName];

    if (middleName)
    {
      middleName2 = [contactCopy middleName];
      v21 = [ABPredicate personPredicateWithValue:middleName2 comparison:0 forProperty:kABPersonMiddleNameProperty];

      [v11 addObject:v21];
    }

    companyName = [contactCopy companyName];

    if (companyName)
    {
      companyName2 = [contactCopy companyName];
      v24 = [ABPredicate personPredicateWithValue:companyName2 comparison:0 forProperty:kABPersonOrganizationProperty];

      [v11 addObject:v24];
    }

    if ([v11 count] >= 2 && (+[NSCompoundPredicate andPredicateWithSubpredicates:](NSCompoundPredicate, "andPredicateWithSubpredicates:", v11), (v25 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v26 = v25;
      [ABPredicate searchPeopleWithPredicate:v25 sortOrder:1 inAddressBook:abDB withDelegate:self];
      matchedRecord = [(ASAgent *)self matchedRecord];
      v28 = matchedRecord;
      if (matchedRecord)
      {
        CFRetain(matchedRecord);
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

- (void)_copyExistingCalRecordForEvent:(id)event matchOnAttributes:(BOOL)attributes inCalendar:(void *)calendar
{
  attributesCopy = attributes;
  eventCopy = event;
  v8 = +[ASLocalDBHelper sharedInstance];
  account = [(ASAgent *)self account];
  accountID = [account accountID];
  [v8 calDatabaseForAccountID:accountID];

  serverID = [eventCopy serverID];
  v12 = DALoggingwithCategory();
  v13 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v12, v13))
  {
    *buf = 138412290;
    v41 = serverID;
    _os_log_impl(&dword_0, v12, v13, "Invoking CalDatabaseCopyEventWithExternalIDInCalendar with serverID: %@, instead of using UID", buf, 0xCu);
  }

  started = CalDatabaseCopyEventWithExternalIDInCalendar();
  uidForCalFramework = [eventCopy uidForCalFramework];
  v16 = uidForCalFramework;
  if (!started && uidForCalFramework)
  {
    started = CalDatabaseCopyEventWithExternalIDInCalendar();
  }

  if (started)
  {
    goto LABEL_40;
  }

  v39 = attributesCopy;
  v17 = DALoggingwithCategory();
  if (os_log_type_enabled(v17, v13))
  {
    *buf = 138412546;
    v41 = serverID;
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
    subject = [eventCopy subject];
    startDateForCalFramework = [eventCopy startDateForCalFramework];
    [startDateForCalFramework timeIntervalSinceReferenceDate];

    if (!subject)
    {
      subject = &stru_6D4A8;
    }

    started = CalDatabaseCopyEventWithSummaryAndStartDateInCalendar();
    if (started)
    {
      v33 = CalCalendarItemCopyExternalID();
      if (v33)
      {
        serverID2 = [eventCopy serverID];
        if (serverID2)
        {
          v35 = serverID2;
          serverID3 = [eventCopy serverID];
          v37 = [v33 isEqualToString:serverID3];

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

- (void)_noteSyncForFolderWithId:(id)id andTitle:(id)title finishedWithSuccess:(BOOL)success
{
  successCopy = success;
  idCopy = id;
  titleCopy = title;
  if (idCopy)
  {
    folderIdToSequentialFailureCount = [(ASAgent *)self folderIdToSequentialFailureCount];
    v11 = folderIdToSequentialFailureCount;
    if (successCopy)
    {
      [folderIdToSequentialFailureCount removeObjectForKey:idCopy];

      folderIdToSequentialServerErrorCount = [(ASAgent *)self folderIdToSequentialServerErrorCount];
      [folderIdToSequentialServerErrorCount removeObjectForKey:idCopy];
    }

    else
    {
      v13 = [folderIdToSequentialFailureCount objectForKeyedSubscript:idCopy];
      v14 = [v13 intValue] + 1;

      v15 = [NSNumber numberWithInt:v14];
      folderIdToSequentialFailureCount2 = [(ASAgent *)self folderIdToSequentialFailureCount];
      [folderIdToSequentialFailureCount2 setObject:v15 forKeyedSubscript:idCopy];

      folderIdToSequentialServerErrorCount = DALoggingwithCategory();
      v17 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(folderIdToSequentialServerErrorCount, v17))
      {
        v18 = 138412802;
        v19 = idCopy;
        v20 = 2112;
        v21 = titleCopy;
        v22 = 1024;
        v23 = v14;
        _os_log_impl(&dword_0, folderIdToSequentialServerErrorCount, v17, "Folder with id %@ and title %@ has failed to sync %d time(s) in a row", &v18, 0x1Cu);
      }
    }
  }
}

- (void)_removePostponedRequestForFolderWithId:(id)id
{
  idCopy = id;
  folderItemSyncRequestLock = [(ASAgent *)self folderItemSyncRequestLock];
  [folderItemSyncRequestLock lock];

  outstandingFolderRequests = [(ASAgent *)self outstandingFolderRequests];

  if (outstandingFolderRequests)
  {
    selfCopy = self;
    outstandingFolderRequests2 = [(ASAgent *)self outstandingFolderRequests];
    v8 = [outstandingFolderRequests2 copy];

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
        folder = [v16 folder];
        folderID = [folder folderID];
        if ([folderID isEqual:idCopy])
        {
          containsPostponedActions = [v16 containsPostponedActions];

          if (!containsPostponedActions)
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

          folder = [(ASAgent *)selfCopy outstandingFolderRequests];
          [folder removeObject:v16];
        }

        else
        {
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
      if (!v12)
      {
LABEL_16:

        self = selfCopy;
        break;
      }
    }
  }

  folderItemSyncRequestLock2 = [(ASAgent *)self folderItemSyncRequestLock];
  [folderItemSyncRequestLock2 unlock];
}

- (void)_folderItemsSyncTask:(id)task failedWithErrorCode:(int64_t)code
{
  taskCopy = task;
  dataclass = [taskCopy dataclass];
  folderID = [taskCopy folderID];
  if (!folderID)
  {
    sub_47DE8();
  }

  account = [(ASAgent *)self account];
  v10 = [account folderWithId:folderID];

  folderName = [v10 folderName];
  [(ASAgent *)self _noteSyncForFolderWithId:folderID andTitle:folderName finishedWithSuccess:0];

  currentlySyncingFolderIds = [(ASAgent *)self currentlySyncingFolderIds];
  [currentlySyncingFolderIds removeObject:folderID];

  [(ASAgent *)self _removePostponedRequestForFolderWithId:folderID];
  if (code > 11)
  {
    if (code > 32)
    {
      switch(code)
      {
        case '!':
          folderIdToSequentialServerErrorCount3 = DALoggingwithCategory();
          v37 = _CPLog_to_os_log_type[3];
          if (!os_log_type_enabled(folderIdToSequentialServerErrorCount3, v37))
          {
            goto LABEL_41;
          }

          *v45 = 0;
          v22 = "User is out of disk space on the Exchange server.  We should probably put up a warning for this case";
          v23 = folderIdToSequentialServerErrorCount3;
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
          -[ASAgent _queueServerFailureResyncForFolderWithId:isInitialSync:](self, "_queueServerFailureResyncForFolderWithId:isInitialSync:", folderID, [taskCopy isInitialSync]);
          goto LABEL_45;
      }
    }

    else
    {
      if (code == 12)
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

      if (code == 21 || code == 30)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_42;
  }

  if (code > 7)
  {
    if ((code - 8) < 2)
    {
      if (dataclass == &dword_10)
      {
        [(ASAgent *)self _cacheFoldersForDataclasses:16];
        [(ASAgent *)self _updateSyncKey:@"0" forToDoFolderWithId:folderID];
        [(ASAgent *)self _nilOutContainersForDataclasses:16];
      }

      else
      {
        account2 = [(ASAgent *)self account];
        changeTrackingID = [account2 changeTrackingID];
        account3 = [(ASAgent *)self account];
        accountID = [account3 accountID];
        v36 = [ASDataHandler newDataHandlerForDataclass:dataclass container:0 changeTrackingID:changeTrackingID accountID:accountID];

        [v36 openDB];
        [(ASAgent *)self _cacheFoldersForDataclasses:dataclass];
        [(ASAgent *)self _setSyncKey:@"0" forFolderWithId:folderID];
        [(ASAgent *)self _nilOutContainersForDataclasses:dataclass];
        [v36 closeDBAndSave:1];
      }

      goto LABEL_33;
    }

    if (code == 10)
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
        *&v45[14] = code;
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
      *&v45[4] = code;
      _os_log_impl(&dword_0, v26, v41, "Unhandled error (%ld) from Folder Items Sync Task", v45, 0xCu);
    }

LABEL_44:

    goto LABEL_45;
  }

  if (code != -1)
  {
    if (code)
    {
      if (code == 5)
      {
        folderIdToSequentialServerErrorCount = [(ASAgent *)self folderIdToSequentialServerErrorCount];
        v14 = [folderIdToSequentialServerErrorCount objectForKeyedSubscript:folderID];
        intValue = [v14 intValue];

        v16 = [NSNumber numberWithInt:(intValue + 1)];
        folderIdToSequentialServerErrorCount2 = [(ASAgent *)self folderIdToSequentialServerErrorCount];
        [folderIdToSequentialServerErrorCount2 setObject:v16 forKeyedSubscript:folderID];

        if (intValue > 0)
        {
          folderIdToSequentialServerErrorCount3 = [(ASAgent *)self folderIdToSequentialServerErrorCount];
          [folderIdToSequentialServerErrorCount3 setObject:&off_6E468 forKeyedSubscript:folderID];
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
          folderIdToSequentialServerErrorCount3 = [[ESFolderSyncRequest alloc] initWithFolder:v10 hasRemoteChanges:0 isInitialUberSync:{objc_msgSend(taskCopy, "isInitialSync")}];
          [folderIdToSequentialServerErrorCount3 setIsResyncAfterServerError:1];
LABEL_40:
          [(ASAgent *)self _appendSyncRequest:folderIdToSequentialServerErrorCount3];
          goto LABEL_41;
        }

        folderIdToSequentialServerErrorCount3 = DALoggingwithCategory();
        v20 = _CPLog_to_os_log_type[3];
        if (!os_log_type_enabled(folderIdToSequentialServerErrorCount3, v20))
        {
          goto LABEL_41;
        }

        *v45 = 138412290;
        *&v45[4] = folderID;
        v22 = "Can't queue a retry sync, as we no longer have a folder with id %@";
LABEL_25:
        v23 = folderIdToSequentialServerErrorCount3;
        v24 = v20;
        v25 = 12;
        goto LABEL_36;
      }

      goto LABEL_42;
    }

LABEL_22:
    isResyncAfterConnectionFailed = [taskCopy isResyncAfterConnectionFailed];
    folderIdToSequentialServerErrorCount3 = DALoggingwithCategory();
    v20 = _CPLog_to_os_log_type[6];
    v21 = os_log_type_enabled(folderIdToSequentialServerErrorCount3, v20);
    if (!isResyncAfterConnectionFailed)
    {
      if (v21)
      {
        *v45 = 138412290;
        *&v45[4] = taskCopy;
        _os_log_impl(&dword_0, folderIdToSequentialServerErrorCount3, v20, "Connection error, but this is the first failure for this task, so trying again.  Task = %@", v45, 0xCu);
      }

      v38 = [ESFolderSyncRequest alloc];
      account4 = [(ASAgent *)self account];
      v40 = [account4 folderWithId:folderID];
      folderIdToSequentialServerErrorCount3 = [v38 initWithFolder:v40 hasRemoteChanges:0 isInitialUberSync:{objc_msgSend(taskCopy, "isInitialSync")}];

      [folderIdToSequentialServerErrorCount3 setIsResyncAfterConnectionFailed:1];
      goto LABEL_40;
    }

    if (!v21)
    {
      goto LABEL_41;
    }

    *v45 = 138412290;
    *&v45[4] = taskCopy;
    v22 = "Well, we tried twice, but couldn't connect to the server for this request.  Dropping this on the floor.  Task = %@";
    goto LABEL_25;
  }

LABEL_45:
  [(ASAgent *)self _fireWaitingFolderItemSyncRequests];
  v42 = +[DALocalDBGateKeeper sharedGateKeeper];
  [v42 relinquishLocksForWaiter:self dataclasses:dataclass moreComing:0];
}

- (void)actionFailed:(int64_t)failed forTask:(id)task error:(id)error
{
  taskCopy = task;
  errorCopy = error;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ASAgent *)self _folderItemsSyncTask:taskCopy failedWithErrorCode:failed];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ASAgent *)self _moveItemsTask:taskCopy failedWithErrorCode:failed];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(ASAgent *)self _smartMailTask:taskCopy failedWithErrorCode:failed error:errorCopy];
      }
    }
  }

  v10 = DALoggingwithCategory();
  v11 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v10, v11))
  {
    v12 = 134218242;
    failedCopy = failed;
    v14 = 2112;
    v15 = errorCopy;
    _os_log_impl(&dword_0, v10, v11, "Failed: %ld, %@", &v12, 0x16u);
  }
}

- (BOOL)_detectDuplicatedEventFromExchangeEvent:(id)event inFolderWithId:(id)id isInitialSync:(BOOL)sync eventServerIDsToDrop:(id)drop eventServerIDSWithDroppedDeletes:(id)deletes resultingChangeActionsForServer:(id)server outEvent:(id *)outEvent outLocalItem:(const void *)self0 outDidTouchDB:(BOOL *)self1
{
  syncCopy = sync;
  eventCopy = event;
  idCopy = id;
  dropCopy = drop;
  deletesCopy = deletes;
  serverCopy = server;
  serverID = [eventCopy serverID];
  if (serverID && ([deletesCopy containsObject:serverID] & 1) != 0)
  {
    v23 = DALoggingwithCategory();
    v24 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v23, v24))
    {
      *buf = 138412290;
      v66 = eventCopy;
      _os_log_impl(&dword_0, v23, v24, "Not considering event %@ for duplicates, since it's paired with a delete for an event with an identical serverid", buf, 0xCu);
    }

    v25 = 0;
LABEL_32:

    goto LABEL_33;
  }

  v61 = serverID;
  v62 = deletesCopy;
  v63 = dropCopy;
  v64 = idCopy;
  v26 = [(ASAgent *)self _copyExistingLocalItemForExchangeItem:eventCopy matchOnAttributes:0 inContainer:[(ASAgent *)self _containerForFolderWithId:idCopy dataclass:4]];
  *item = v26;
  if (v26)
  {
    v27 = v26;
    v23 = CalCalendarItemCopyExternalID();
    if (v23)
    {
      v59 = syncCopy;
      serverID2 = [eventCopy serverID];
      v60 = v23;
      v29 = [v23 isEqualToString:serverID2];

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
          v66 = eventCopy;
          _os_log_impl(&dword_0, v30, v31, "Received an add from Exchange for an event that we already knew about!  We're going to merge these events, and ignore the incoming event %@", buf, 0xCu);
        }

        v32 = [ASEvent alloc];
        account = [(ASAgent *)self account];
        v34 = [v32 initWithCalEvent:v27 serverID:v23 account:account];

        account2 = [(ASAgent *)self account];
        v36 = [v34 eventByMergingInEvent:eventCopy account:account2];

        serverID3 = [v36 serverID];
        serverID4 = [v34 serverID];
        v39 = [serverID3 isEqualToString:serverID4];

        if (v39)
        {
          v40 = v34;
        }

        else
        {
          v40 = eventCopy;
        }

        v58 = v40;
        if (([v58 isEqualToEvent:v36] & 1) == 0)
        {
          v41 = [[ASAction alloc] initWithItemChangeType:1 changedItem:v36 serverId:0];
          [serverCopy addObject:v41];
        }

        serverID5 = [v36 serverID];
        serverID6 = [v34 serverID];
        v44 = [serverID5 isEqualToString:serverID6];

        if (v44)
        {
          v45 = [serverCopy count];
          v46 = v36;
          if (v45 >= 1)
          {
            v47 = (v45 & 0x7FFFFFFF) + 1;
            do
            {
              v48 = [serverCopy objectAtIndexedSubscript:v47 - 2];
              if (![v48 itemChangeType] || objc_msgSend(v48, "itemChangeType") == &dword_0 + 1)
              {
                changedItem = [v48 changedItem];
                uidForCalFramework = [changedItem uidForCalFramework];
                uidForCalFramework2 = [v46 uidForCalFramework];
                v52 = [uidForCalFramework isEqualToString:uidForCalFramework2];

                if (v52)
                {
                  [serverCopy removeObjectAtIndex:v47 - 2];
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
          serverID7 = [v34 serverID];
          v55 = [v53 initWithItemChangeType:2 changedItem:0 serverId:serverID7];

          *b |= [(ASAgent *)self _handleAction:v55 inFolderWithId:v64 dataclass:4 isInitialSync:v59 resultingChangeActionsForServer:serverCopy eventServerIDsToDrop:v63 eventServerIDSWithDroppedDeletes:deletesCopy];
          v46 = v36;
        }

        v56 = v46;
        *outEvent = v46;

        v25 = 1;
      }

      dropCopy = v63;
      idCopy = v64;
      serverID = v61;
      deletesCopy = v62;
      v23 = v60;
    }

    else
    {
      v25 = 0;
      serverID = v61;
    }

    goto LABEL_32;
  }

  v25 = 0;
LABEL_33:

  return v25;
}

- (BOOL)_handleToDoAction:(id)action inFolderWithId:(id)id isInitialSync:(BOOL)sync resultingChangeActionsForServer:(id)server eventServerIDsToDrop:(id)drop eventServerIDSWithDroppedDeletes:(id)deletes
{
  syncCopy = sync;
  idCopy = id;
  serverCopy = server;
  actionCopy = action;
  changedItem = [actionCopy changedItem];
  itemChangeType = [actionCopy itemChangeType];

  if (itemChangeType >= 2)
  {
    if (itemChangeType != &dword_0 + 2)
    {
      v19 = 0;
      goto LABEL_11;
    }

    sharedReminderKitHelper = [(ASAgent *)self sharedReminderKitHelper];
    account = [(ASAgent *)self account];
    v19 = [sharedReminderKitHelper deleteReminder:changedItem forFolderWithId:idCopy forAccount:account];

LABEL_10:
    goto LABEL_11;
  }

  sharedReminderKitHelper = [(ASAgent *)self sharedReminderKitHelper];
  account2 = [(ASAgent *)self account];
  if (!syncCopy)
  {
    v19 = [sharedReminderKitHelper addOrModifyReminder:changedItem forFolderWithId:idCopy forAccount:account2];

    goto LABEL_10;
  }

  v23 = 0;
  v19 = [sharedReminderKitHelper initialSyncReminder:changedItem forFolderWithId:idCopy forAccount:account2 resultingAction:&v23];
  v20 = v23;

  if (v20)
  {
    [serverCopy addObject:v20];
  }

LABEL_11:
  return v19;
}

- (BOOL)_clearChangeHistoriesWithChangeIdContext:(id)context dataclass:(int64_t)dataclass inFolderWithId:(id)id pushedActions:(id)actions
{
  contextCopy = context;
  idCopy = id;
  actionsCopy = actions;
  if (idCopy)
  {
    v13 = [(ASAgent *)self _containerForFolderWithId:idCopy dataclass:dataclass];
  }

  else
  {
    v13 = 0;
  }

  v14 = 0;
  if (dataclass > 15)
  {
    if (dataclass == 16)
    {
      sharedReminderKitHelper = [(ASAgent *)self sharedReminderKitHelper];
      account = [(ASAgent *)self account];
      [sharedReminderKitHelper clearReminderChangesForFolderID:idCopy forAccount:account];

      v14 = 0;
    }

    else if (dataclass == 32)
    {
      v106 = actionsCopy;
      v108 = idCopy;
      v110 = contextCopy;
      v25 = contextCopy;
      v26 = +[ASLocalDBHelper sharedInstance];
      noteDB = [v26 noteDB];

      v27 = v13;
      changes = [v27 changes];
      v29 = [changes copy];

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
            objectID = [v36 objectID];
            uRIRepresentation = [objectID URIRepresentation];

            if (uRIRepresentation && [v25 containsObject:uRIRepresentation])
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
        [noteDB deleteChanges:v30];
      }

      idCopy = v108;
      contextCopy = v110;
      actionsCopy = v106;
    }
  }

  else if (dataclass == 2)
  {
    v42 = +[ASLocalDBHelper sharedInstance];
    abDB = [v42 abDB];

    v43 = contextCopy;
    v44 = v43;
    v14 = 0;
    v101 = v43;
    if (v43 && v13)
    {
      abPersonChangeId = [v43 abPersonChangeId];
      if (abPersonChangeId == -1)
      {
        v14 = 0;
      }

      else
      {
        v46 = abPersonChangeId;
        account2 = [(ASAgent *)self account];
        changeTrackingID = [account2 changeTrackingID];
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_19E5C;
        v133 = &unk_6CF68;
        v134 = abDB;
        v135 = changeTrackingID;
        v136 = v13;
        LOBYTE(v46) = sub_19BD0(abDB, v13, v46, 0, changeTrackingID, buf);

        v44 = v101;
        v14 = v46;
      }

      abGroupChangeId = [v44 abGroupChangeId];
      if (abGroupChangeId != -1)
      {
        v83 = abGroupChangeId;
        account3 = [(ASAgent *)self account];
        [account3 changeTrackingID];
        v86 = v85 = v44;
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_19F24;
        v133 = &unk_6CF68;
        v134 = abDB;
        v135 = v86;
        v136 = v13;
        LOBYTE(v83) = sub_19BD0(abDB, v13, v83, 1, v86, buf);

        v44 = v85;
        v14 = v83;
      }
    }

    if ([actionsCopy count])
    {
      v115 = v14;
      v100 = v13;
      selfCopy = self;
      v112 = contextCopy;
      Mutable = CFArrayCreateMutable(0, 0, 0);
      v125 = 0u;
      v126 = 0u;
      v127 = 0u;
      v128 = 0u;
      v107 = actionsCopy;
      v88 = actionsCopy;
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
                changeId = [v94 changeId];
                *buf = 67109120;
                *&buf[4] = changeId;
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
        account4 = [(ASAgent *)selfCopy account];
        changeTrackingID2 = [account4 changeTrackingID];
        ABChangeHistoryClearEntityChangeTableRowIDsForClient();

        v14 = 1;
      }

      CFRelease(Mutable);
      contextCopy = v112;
      actionsCopy = v107;
      v44 = v101;
    }
  }

  else if (dataclass == 4)
  {
    v15 = +[ASLocalDBHelper sharedInstance];
    account5 = [(ASAgent *)self account];
    accountID = [account5 accountID];
    v18 = [v15 calDatabaseForAccountID:accountID];

    v19 = contextCopy;
    v20 = v19;
    v14 = 0;
    if (v19 && v13)
    {
      calEventChangeId = [v19 calEventChangeId];
      if (calEventChangeId == -1)
      {
        v113 = 0;
      }

      else
      {
        v22 = calEventChangeId;
        account6 = [(ASAgent *)self account];
        changeTrackingID3 = [account6 changeTrackingID];
        v113 = sub_19FEC(v18, v13, v22, 2, changeTrackingID3, &stru_6CFA8);
      }

      calRecurrenceChangeId = [v20 calRecurrenceChangeId];
      if (calRecurrenceChangeId != -1)
      {
        v52 = calRecurrenceChangeId;
        account7 = [(ASAgent *)self account];
        changeTrackingID4 = [account7 changeTrackingID];
        v113 = sub_19FEC(v18, v13, v52, 5, changeTrackingID4, &stru_6CFC8);
      }

      calAlarmChangeId = [v20 calAlarmChangeId];
      if (calAlarmChangeId != -1)
      {
        v56 = calAlarmChangeId;
        account8 = [(ASAgent *)self account];
        changeTrackingID5 = [account8 changeTrackingID];
        v113 = sub_19FEC(v18, v13, v56, 5, changeTrackingID5, &stru_6CFE8);
      }

      calAttendeeChangeId = [v20 calAttendeeChangeId];
      if (calAttendeeChangeId != -1)
      {
        v60 = calAttendeeChangeId;
        account9 = [(ASAgent *)self account];
        changeTrackingID6 = [account9 changeTrackingID];
        v113 = sub_19FEC(v18, v13, v60, 5, changeTrackingID6, &stru_6D008);
      }

      calAttachmentChangeId = [v20 calAttachmentChangeId];
      if (calAttachmentChangeId != -1)
      {
        v64 = calAttachmentChangeId;
        account10 = [(ASAgent *)self account];
        changeTrackingID7 = [account10 changeTrackingID];
        v113 = sub_19FEC(v18, v13, v64, 11, changeTrackingID7, &stru_6D028);
      }

      v67 = CalCalendarCopyStore();
      account11 = [(ASAgent *)self account];
      changeTrackingID8 = [account11 changeTrackingID];
      [v20 highestSequenceNumber];
      CalDatabaseClearChangedObjectIDsUpToSequenceNumberForClient();

      if (v67)
      {
        CFRelease(v67);
      }

      v14 = v113;
    }

    if ([actionsCopy count])
    {
      v102 = v20;
      selfCopy2 = self;
      v114 = v14;
      v109 = idCopy;
      v111 = contextCopy;
      v70 = CFArrayCreateMutable(0, 0, 0);
      v121 = 0u;
      v122 = 0u;
      v123 = 0u;
      v124 = 0u;
      v71 = actionsCopy;
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
                changeId2 = [v77 changeId];
                *buf = 67109120;
                *&buf[4] = changeId2;
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
        account12 = [(ASAgent *)selfCopy2 account];
        changeTrackingID9 = [account12 changeTrackingID];
        CalDatabaseClearIndividualChangeRowIDsForClient();

        v14 = 1;
      }

      CFRelease(v70);
      idCopy = v109;
      contextCopy = v111;
      v20 = v102;
    }
  }

  return v14;
}

- (id)_powerLogInfoDictionary
{
  v3 = objc_opt_new();
  account = [(ASAgent *)self account];
  accountID = [account accountID];

  if (accountID)
  {
    account2 = [(ASAgent *)self account];
    accountID2 = [account2 accountID];
    [v3 setObject:accountID2 forKeyedSubscript:kDAPowerLogSyncAccountID];
  }

  account3 = [(ASAgent *)self account];
  accountDescription = [account3 accountDescription];

  if (accountDescription)
  {
    account4 = [(ASAgent *)self account];
    accountDescription2 = [account4 accountDescription];
    [v3 setObject:accountDescription2 forKeyedSubscript:kDAPowerLogSyncAccountName];
  }

  account5 = [(ASAgent *)self account];
  v13 = objc_opt_class();

  if (v13)
  {
    account6 = [(ASAgent *)self account];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v3 setObject:v16 forKeyedSubscript:kDAPowerLogSyncAccountClass];
  }

  return v3;
}

- (void)_syncResultForFolder:(id)folder newTag:(id)tag previousTag:(id)previousTag actions:(id)actions results:(id)results changeIdContext:(id)context isInitialSync:(BOOL)sync moreAvailable:(BOOL)self0 dataclass:(int64_t)self1 resultingChangeActionsForServer:(id)self2 pushedActions:(id)self3 rejectedServerIds:(id)self4 eventsWithPendingInvitationEmails:(id)self5
{
  folderCopy = folder;
  tagCopy = tag;
  previousTagCopy = previousTag;
  actionsCopy = actions;
  resultsCopy = results;
  contextCopy = context;
  serverCopy = server;
  selfCopy = self;
  pushedActionsCopy = pushedActions;
  idsCopy = ids;
  emailsCopy = emails;
  if (dataclass == 16)
  {
    sub_47EC0();
  }

  account = [(ASAgent *)self account];
  changeTrackingID = [account changeTrackingID];
  account2 = [(ASAgent *)self account];
  accountID = [account2 accountID];
  v27 = [ASDataHandler newDataHandlerForDataclass:dataclass container:0 changeTrackingID:changeTrackingID accountID:accountID];

  [v27 openDB];
  [(ASAgent *)self _cacheFoldersForDataclasses:dataclass];
  v28 = folderCopy;
  [v27 setContainer:{-[ASAgent _containerForFolderWithId:dataclass:](self, "_containerForFolderWithId:dataclass:", folderCopy, dataclass)}];
  selfCopy2 = self;
  v213 = v27;
  if (sync && (!previousTagCopy || [previousTagCopy isEqualToString:@"0"]))
  {
    [v27 drainContainer];
    [(ASAgent *)self _nilOutContainersForDataclasses:dataclass];
    [(ASAgent *)self _cacheFoldersForDataclasses:dataclass];
    v29 = [(ASAgent *)self _containerForFolderWithId:folderCopy dataclass:dataclass];
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
        dataclassCopy3 = folderCopy;
        v279 = 2048;
        dataclassCopy = dataclass;
        _os_log_impl(&dword_0, v31, v32, "After draining the container with id %@ and dataclass %lx, that container disappeared", buf, 0x16u);
      }
    }

    v261 = 0u;
    v262 = 0u;
    v259 = 0u;
    v260 = 0u;
    v33 = actionsCopy;
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
            changedItem = [v39 changedItem];
            account3 = [(ASAgent *)selfCopy2 account];
            v36 = 1;
            [changedItem saveWithLocalObject:0 toContainer:v29 shouldMergeProperties:1 outMergeDidChooseLocalProperties:0 account:account3];
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
      selfCopy = selfCopy2;
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
  obj = resultsCopy;
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
        changedItem2 = [v46 changedItem];
        itemChangeType = [v46 itemChangeType];
        if (itemChangeType == &dword_0 + 1)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            account4 = [(ASAgent *)selfCopy account];
            accountID2 = [account4 accountID];
            [changedItem2 updateAttachmentsForAccountID:accountID2];
          }
        }

        else if (!itemChangeType)
        {
          clientID = [changedItem2 clientID];
          v50 = [v213 copyLocalObjectFromId:{objc_msgSend(clientID, "intValue")}];

          if (v50)
          {
            [changedItem2 setLocalItem:v50];
            [changedItem2 saveServerIDToExistingItem];
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
  dataclassCopy2 = dataclass;
  syncCopy2 = sync;
  if (dataclass == 4)
  {
    account5 = [(ASAgent *)selfCopy account];
    protocol = [account5 protocol];
    sendEmailForMeetingInvitationAndResponse = [protocol sendEmailForMeetingInvitationAndResponse];

    if (!sendEmailForMeetingInvitationAndResponse)
    {
      goto LABEL_59;
    }

    v253 = 0u;
    v254 = 0u;
    v251 = 0u;
    v252 = 0u;
    v59 = pushedActionsCopy;
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
        itemChangeType2 = [v64 itemChangeType];
        if (itemChangeType2 >= 2)
        {
          if (itemChangeType2 != &dword_8)
          {
            continue;
          }

          changedItem3 = [v64 changedItem];
        }

        else
        {
          changedItem3 = [v64 changedItem];
          account6 = [(ASAgent *)selfCopy account];
          if (([changedItem3 cachedOrganizerIsSelfWithAccount:account6] & 1) == 0)
          {

            goto LABEL_55;
          }

          attendees = [changedItem3 attendees];
          v69 = [attendees count];

          if (!v69)
          {
            goto LABEL_55;
          }
        }

        [emailsCopy addObject:changedItem3];
LABEL_55:
      }

      v61 = [v59 countByEnumeratingWithState:&v251 objects:v274 count:16];
      if (!v61)
      {
LABEL_58:

LABEL_59:
        v70 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(actionsCopy, "count")}];
        v71 = objc_opt_new();
        v199 = objc_opt_new();
        v247 = 0u;
        v248 = 0u;
        v249 = 0u;
        v250 = 0u;
        v72 = v71;
        v73 = actionsCopy;
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
          changedItem4 = [v78 changedItem];
          serverID = [changedItem4 serverID];
          if (serverID)
          {
            v81 = [v70 objectForKeyedSubscript:serverID];
            v82 = v81;
            if (v81)
            {
              changedItem5 = [v81 changedItem];
              if (![v82 itemChangeType] && objc_msgSend(v78, "itemChangeType") == &dword_0 + 1)
              {
                v84 = changedItem4;
                account7 = [(ASAgent *)selfCopy2 account];
                v86 = v84;
                v87 = changedItem5;
                goto LABEL_81;
              }

              if ([v82 itemChangeType] == &dword_0 + 1 && !objc_msgSend(v78, "itemChangeType"))
              {
                v84 = changedItem5;
                account7 = [(ASAgent *)selfCopy2 account];
                v86 = v84;
                v87 = changedItem4;
LABEL_81:
                v89 = [v86 eventByMergingInLosingEvent:v87 account:account7];

                itemChangeType3 = &dword_0 + 1;
              }

              else
              {
                account8 = [(ASAgent *)selfCopy2 account];
                v89 = [changedItem5 eventByMergingInEvent:changedItem4 account:account8];

                serverID2 = [v89 serverID];
                serverID3 = [changedItem5 serverID];
                v92 = [serverID2 isEqualToString:serverID3];

                if (v92)
                {
                  v84 = changedItem5;
                  v93 = v82;
                }

                else
                {
                  v84 = changedItem4;
                  v93 = v78;
                }

                itemChangeType3 = [v93 itemChangeType];
                v70 = v211;
                v72 = v200;
              }

              v95 = [[ASAction alloc] initWithItemChangeType:itemChangeType3 changedItem:v89 serverId:0];
              [v70 setObject:v95 forKeyedSubscript:serverID];
              if (([v84 isEqualToEvent:v89] & 1) == 0)
              {
                [v199 addObject:serverID];
              }

              selfCopy = selfCopy2;
              v73 = v204;
              v76 = v201;
            }

            else
            {
              [v70 setObject:v78 forKeyedSubscript:serverID];
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
              allValues = [v70 allValues];
              *buf = 138412546;
              dataclassCopy3 = v73;
              v279 = 2112;
              dataclassCopy = allValues;
              _os_log_impl(&dword_0, v96, v97, "Actions were %@, are now %@", buf, 0x16u);

              v72 = v200;
            }

            allValues2 = [v70 allValues];

            actionsCopy = [allValues2 arrayByAddingObjectsFromArray:v72];

            v245 = 0u;
            v246 = 0u;
            v243 = 0u;
            v244 = 0u;
            v100 = v199;
            v101 = [v100 countByEnumeratingWithState:&v243 objects:v272 count:16];
            v28 = folderCopy;
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
                  changedItem6 = [v107 changedItem];
                  v109 = [v106 initWithItemChangeType:1 changedItem:changedItem6 serverId:v105];

                  v70 = v211;
                  [serverCopy addObject:v109];
                }

                v102 = [v100 countByEnumeratingWithState:&v243 objects:v272 count:16];
              }

              while (v102);
            }

            dataclassCopy2 = 4;
            syncCopy2 = sync;
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
  if (dataclassCopy2 == 4)
  {
    v241 = 0u;
    v242 = 0u;
    v239 = 0u;
    v240 = 0u;
    v112 = actionsCopy;
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
            changedItem7 = [v117 changedItem];
            serverID4 = [changedItem7 serverID];
            if (serverID4)
            {
              [v212 addObject:serverID4];
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
  v120 = actionsCopy;
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
          v123 |= [(ASAgent *)selfCopy _handleAction:v126 inFolderWithId:v28 dataclass:dataclassCopy2 isInitialSync:syncCopy2 resultingChangeActionsForServer:serverCopy eventServerIDsToDrop:v212 eventServerIDSWithDroppedDeletes:v209, idsCopy];
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
          v130 |= [(ASAgent *)selfCopy _handleAction:v133 inFolderWithId:v28 dataclass:dataclassCopy2 isInitialSync:sync resultingChangeActionsForServer:serverCopy eventServerIDsToDrop:v212 eventServerIDSWithDroppedDeletes:v209];
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
          v136 |= [(ASAgent *)selfCopy _handleAction:v139 inFolderWithId:v28 dataclass:dataclassCopy2 isInitialSync:sync resultingChangeActionsForServer:serverCopy eventServerIDsToDrop:v212 eventServerIDSWithDroppedDeletes:v209];
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

  v140 = dataclassCopy2;
  v141 = v123 | v130 | v136;
  if (v140 == 4)
  {
    v225 = 0u;
    v226 = 0u;
    v223 = 0u;
    v224 = 0u;
    v142 = pushedActionsCopy;
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
            changedItem8 = [v148 changedItem];
            account9 = [(ASAgent *)selfCopy2 account];
            accountID3 = [account9 accountID];
            v152 = [changedItem8 fillOutMissingExternalIdsForAccountID:accountID3];

            v144 = v213;
            v141 |= v152;
          }
        }

        v145 = [v142 countByEnumeratingWithState:&v223 objects:v267 count:16];
      }

      while (v145);
    }

    selfCopy = selfCopy2;
  }

  else
  {
    v144 = v213;
  }

  v153 = emailsCopy;
  if ([emailsCopy count])
  {
    v219 = 0u;
    v220 = 0u;
    v221 = 0u;
    v222 = 0u;
    v154 = [emailsCopy copy];
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
        account10 = [(ASAgent *)selfCopy account];
        if (([v160 cachedOrganizerIsSelfWithAccount:account10] & 1) == 0)
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
          selfCopy = selfCopy2;

          [emailsCopy removeObject:v160];
          goto LABEL_181;
        }

        attendees2 = [v160 attendees];
        v163 = [attendees2 count];

        v144 = v213;
        if (!v163)
        {
          goto LABEL_177;
        }

        clientID2 = [v160 clientID];
        if (!clientID2)
        {
          v165 = DALoggingwithCategory();
          if (os_log_type_enabled(v165, type))
          {
            *buf = 138412290;
            dataclassCopy3 = v160;
            v169 = v165;
            v170 = type;
            v171 = "Do not send invitation email because event no longer exist in local DB %@";
            v172 = 12;
LABEL_179:
            _os_log_impl(&dword_0, v169, v170, v171, buf, v172);
          }

          goto LABEL_180;
        }

        v165 = clientID2;
        v166 = [v213 copyLocalObjectFromId:{-[NSObject intValue](clientID2, "intValue")}];
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

        selfCopy = selfCopy2;
LABEL_181:
        v159 = v159 + 1;
      }

      while (v156 != v159);
      v173 = [v154 countByEnumeratingWithState:&v219 objects:v266 count:16];
      v156 = v173;
      if (!v173)
      {
LABEL_188:

        v28 = folderCopy;
        v153 = emailsCopy;
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
    v174 = emailsCopy;
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

    selfCopy = selfCopy2;
  }

  v182 = [(ASAgent *)selfCopy _syncKeyForFolderWithId:v28 dataclass:dataclass];
  if (([v182 isEqualToString:tagCopy] & 1) == 0)
  {
    [(ASAgent *)selfCopy _setSyncKey:tagCopy forFolderWithId:v28];
    v141 = 1;
  }

  v183 = [(ASAgent *)selfCopy _clearChangeHistoriesWithChangeIdContext:contextCopy dataclass:dataclass inFolderWithId:v28 pushedActions:pushedActionsCopy];
  currentlySyncingFolderIds = [(ASAgent *)selfCopy currentlySyncingFolderIds];
  [currentlySyncingFolderIds removeObject:v28];

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
        dataclassCopy3 = dataclass;
        _os_log_impl(&dword_0, v185, v186, "Could not save local container, dataclass is %lx", buf, 0xCu);
      }
    }
  }

  if (dataclass == 16 || dataclass == 4)
  {
    if (PLShouldLogRegisteredEvent())
    {
      _powerLogInfoDictionary = [(ASAgent *)selfCopy2 _powerLogInfoDictionary];
      v188 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v205 count]);
      v189 = kDAPowerLogNumberOfItemsChanged;
      [_powerLogInfoDictionary setObject:v188 forKeyedSubscript:kDAPowerLogNumberOfItemsChanged];

      if (folderCopy)
      {
        [_powerLogInfoDictionary setObject:folderCopy forKeyedSubscript:kDAPowerLogContainerID];
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
      _powerLogInfoDictionary2 = [(ASAgent *)selfCopy2 _powerLogInfoDictionary];
      v191 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [pushedActionsCopy count]);
      v192 = kDAPowerLogNumberOfItemsChanged;
      [_powerLogInfoDictionary2 setObject:v191 forKeyedSubscript:kDAPowerLogNumberOfItemsChanged];

      if (folderCopy)
      {
        [_powerLogInfoDictionary2 setObject:folderCopy forKeyedSubscript:kDAPowerLogContainerID];
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

  [(ASAgent *)selfCopy2 _nilOutContainersForDataclasses:dataclass];
  [v144 closeDBAndSave:0];
}

- (BOOL)_syncResultForToDoFolder:(id)folder newTag:(id)tag previousTag:(id)previousTag actions:(id)actions results:(id)results changeIdContext:(id)context isInitialSync:(BOOL)sync moreAvailable:(BOOL)self0 resultingChangeActionsForServer:(id)self1 pushedActions:(id)self2 rejectedServerIds:(id)self3 eventsWithPendingInvitationEmails:(id)self4
{
  folderCopy = folder;
  tagCopy = tag;
  previousTagCopy = previousTag;
  obj = actions;
  resultsCopy = results;
  contextCopy = context;
  serverCopy = server;
  pushedActionsCopy = pushedActions;
  [(ASAgent *)self _cacheFoldersForDataclasses:16];
  if (sync && (!previousTagCopy || [previousTagCopy isEqualToString:@"0"]))
  {
    [(ASAgent *)self _nilOutContainersForDataclasses:16, previousTagCopy];
    [(ASAgent *)self _cacheFoldersForDataclasses:16];
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v21 = resultsCopy;
  v22 = [v21 countByEnumeratingWithState:&v103 objects:v114 count:16];
  if (v22)
  {
    v23 = v22;
    v86 = 0;
    v24 = *v104;
    v25 = folderCopy;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v104 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v27 = *(*(&v103 + 1) + 8 * i);
        changedItem = [v27 changedItem];
        if (![v27 itemChangeType])
        {
          sharedReminderKitHelper = [(ASAgent *)self sharedReminderKitHelper];
          account = [(ASAgent *)self account];
          v31 = [sharedReminderKitHelper updateExtenalIDForReminder:changedItem forFolderWithId:folderCopy forAccount:account];

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
    v25 = folderCopy;
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
          v35 |= [(ASAgent *)self _handleToDoAction:v38 inFolderWithId:v25 isInitialSync:sync resultingChangeActionsForServer:serverCopy eventServerIDsToDrop:v88 eventServerIDSWithDroppedDeletes:v87];
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
            sharedReminderKitHelper2 = [(ASAgent *)self sharedReminderKitHelper];
            [sharedReminderKitHelper2 commitChangesToStore];
          }

          v48 = [(ASAgent *)self _handleToDoAction:v46 inFolderWithId:folderCopy isInitialSync:sync resultingChangeActionsForServer:serverCopy eventServerIDsToDrop:v88 eventServerIDSWithDroppedDeletes:v87];
          v35 = 0;
          v44 &= v48 | !sync;
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
    v52 = folderCopy;
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
            sharedReminderKitHelper3 = [(ASAgent *)self sharedReminderKitHelper];
            [sharedReminderKitHelper3 commitChangesToStore];
          }

          v56 = [(ASAgent *)self _handleToDoAction:v54 inFolderWithId:folderCopy isInitialSync:sync resultingChangeActionsForServer:serverCopy eventServerIDsToDrop:v88 eventServerIDSWithDroppedDeletes:v87];
          v42 = 0;
          v35 = 0;
          v44 &= v56 | !sync;
          v86 |= v56;
        }
      }

      v50 = [obja countByEnumeratingWithState:&v91 objects:v111 count:16];
    }

    while (v50);
  }

  else
  {
    v52 = folderCopy;
  }

  v57 = v35 | v42 | v86;
  v58 = v52;
  v90 = [(ASAgent *)self _syncKeyForFolderWithId:v52 dataclass:16];
  if ([v90 isEqualToString:tagCopy])
  {
    v59 = 1;
  }

  else
  {
    sharedReminderKitHelper4 = [(ASAgent *)self sharedReminderKitHelper];
    account2 = [(ASAgent *)self account];
    v59 = [sharedReminderKitHelper4 updateSyncKey:tagCopy forFolderWithId:v52 forAccount:account2];

    v57 |= v59;
  }

  v62 = v81;
  previousTagCopy = [(ASAgent *)self _clearChangeHistoriesWithChangeIdContext:contextCopy dataclass:16 inFolderWithId:v52 pushedActions:pushedActionsCopy, previousTagCopy];
  currentlySyncingFolderIds = [(ASAgent *)self currentlySyncingFolderIds];
  [currentlySyncingFolderIds removeObject:v52];

  if (previousTagCopy & 1) != 0 || (v57)
  {
    sharedReminderKitHelper5 = [(ASAgent *)self sharedReminderKitHelper];
    commitChangesToStore = [sharedReminderKitHelper5 commitChangesToStore];
  }

  else
  {
    commitChangesToStore = 0;
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

    account3 = [(ASAgent *)self account];
    [account3 stopMonitoringFolderWithID:v58];
  }

  if (PLShouldLogRegisteredEvent())
  {
    _powerLogInfoDictionary = [(ASAgent *)self _powerLogInfoDictionary];
    v71 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [obja count]);
    v72 = kDAPowerLogNumberOfItemsChanged;
    [_powerLogInfoDictionary setObject:v71 forKeyedSubscript:kDAPowerLogNumberOfItemsChanged];

    if (folderCopy)
    {
      [_powerLogInfoDictionary setObject:folderCopy forKeyedSubscript:kDAPowerLogContainerID];
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
    _powerLogInfoDictionary2 = [(ASAgent *)self _powerLogInfoDictionary];
    v74 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [pushedActionsCopy count]);
    v75 = kDAPowerLogNumberOfItemsChanged;
    [_powerLogInfoDictionary2 setObject:v74 forKeyedSubscript:kDAPowerLogNumberOfItemsChanged];

    if (folderCopy)
    {
      [_powerLogInfoDictionary2 setObject:folderCopy forKeyedSubscript:kDAPowerLogContainerID];
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

  return commitChangesToStore;
}

- (void)_finishInitialSyncForFolder:(id)folder dataclass:(int64_t)dataclass
{
  folderCopy = folder;
  if (dataclass == 16)
  {
    sub_47F2C();
  }

  account = [(ASAgent *)self account];
  changeTrackingID = [account changeTrackingID];
  account2 = [(ASAgent *)self account];
  accountID = [account2 accountID];
  v10 = [ASDataHandler newDataHandlerForDataclass:dataclass container:0 changeTrackingID:changeTrackingID accountID:accountID];

  [v10 openDB];
  [(ASAgent *)self _cacheFoldersForDataclasses:dataclass];
  v11 = [(ASAgent *)self _containerForFolderWithId:folderCopy dataclass:dataclass];
  [v10 setContainer:v11];
  v34 = v10;
  copyOfAllLocalObjectsInContainer = [v10 copyOfAllLocalObjectsInContainer];
  v33 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(copyOfAllLocalObjectsInContainer, "count")}];
  v31 = copyOfAllLocalObjectsInContainer;
  objectEnumerator = [copyOfAllLocalObjectsInContainer objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    v16 = &PLLogRegisteredEvent_ptr;
    v17 = @"%d";
    do
    {
      v18 = [objc_alloc(v16[423]) initWithFormat:v17, objc_msgSend(v34, "getIdFromLocalObject:", nextObject2)];
      v19 = [(ASAgent *)self _exchangeIdForLocalId:v18 inContainer:v11 dataclass:dataclass redirectToParent:1];
      if (!v19)
      {
        [(ASAgent *)self account];
        selfCopy = self;
        v21 = objectEnumerator;
        dataclassCopy = dataclass;
        v23 = v17;
        v25 = v24 = v16;
        v26 = [v34 getDAObjectWithLocalItem:nextObject2 serverId:0 account:v25];

        [v26 setLocalItem:0];
        v27 = [[ASAction alloc] initWithItemChangeType:0 changedItem:v26 serverId:0];
        [v33 addObject:v27];

        v16 = v24;
        v17 = v23;
        dataclass = dataclassCopy;
        objectEnumerator = v21;
        self = selfCopy;
      }

      nextObject2 = [objectEnumerator nextObject];
    }

    while (nextObject2);
  }

  if ([v33 count])
  {
    account3 = [(ASAgent *)self account];
    v29 = [account3 folderWithId:folderCopy];

    v30 = [[ESFolderSyncRequest alloc] initWithFolder:v29 hasRemoteChanges:1 isInitialUberSync:0];
    [v30 setActions:v33];
    [(ASAgent *)self _appendSyncRequest:v30];
  }

  [(ASAgent *)self _nilOutContainersForDataclasses:dataclass];
  [v34 closeDBAndSave:0];
}

- (void)_finishInitialSyncForToDoFolder:(id)folder
{
  folderCopy = folder;
  [(ASAgent *)self _cacheFoldersForDataclasses:16];
  sharedReminderKitHelper = [(ASAgent *)self sharedReminderKitHelper];
  account = [(ASAgent *)self account];
  v6 = [sharedReminderKitHelper localUnsyncedReminderActionsForFolderId:folderCopy forAccount:account];

  if ([v6 count])
  {
    account2 = [(ASAgent *)self account];
    v8 = [account2 folderWithId:folderCopy];

    v9 = [[ESFolderSyncRequest alloc] initWithFolder:v8 hasRemoteChanges:1 isInitialUberSync:0];
    [v9 setActions:v6];
    [(ASAgent *)self _appendSyncRequest:v9];
  }

  [(ASAgent *)self _nilOutContainersForDataclasses:16];
}

- (void)_wrapperSyncResultForFolder:(id)folder dataclass:(int64_t)dataclass newTag:(id)tag previousTag:(id)previousTag actions:(id)actions results:(id)results changeIdContext:(id)context isInitialSync:(BOOL)self0 moreAvailable:(BOOL)self1 moreLocalChangesAvailable:(BOOL)self2 pushedActions:(id)self3 rejectedServerIds:(id)self4
{
  folderCopy = folder;
  tagCopy = tag;
  previousTagCopy = previousTag;
  actionsCopy = actions;
  v21 = folderCopy;
  allObjects = actionsCopy;
  resultsCopy = results;
  contextCopy = context;
  pushedActionsCopy = pushedActions;
  idsCopy = ids;
  if (previousTagCopy && ([previousTagCopy isEqualToString:@"0"] & 1) == 0 && !available)
  {
    [(ASAgent *)self _noteSyncForFolderWithId:folderCopy andTitle:0 finishedWithSuccess:1];
  }

  v92 = previousTagCopy;
  v93 = folderCopy;
  v98 = pushedActionsCopy;
  if (pushedActionsCopy)
  {
    v24 = objc_opt_new();
    v101 = objc_opt_new();
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    v122 = 0u;
    obj = allObjects;
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
            changedItem = [v30 changedItem];
            serverID = [changedItem serverID];

            if (serverID)
            {
              serverID2 = [changedItem serverID];
              [v24 setObject:v30 forKeyedSubscript:serverID2];
            }

            else
            {
              serverID2 = DALoggingwithCategory();
              if (os_log_type_enabled(serverID2, v28))
              {
                *buf = 138412290;
                v127 = v30;
                _os_log_impl(&dword_0, serverID2, v28, "Dropping a server action without server ID %@", buf, 0xCu);
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
    v34 = pushedActionsCopy;
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
            serverId = [v42 serverId];
            v44 = [v24 objectForKeyedSubscript:serverId];

            v45 = DALoggingwithCategory();
            serverId2 = v45;
            if (v44)
            {
              if (os_log_type_enabled(v45, v39))
              {
                *buf = 138412290;
                v127 = v44;
                _os_log_impl(&dword_0, serverId2, v39, "Dropping server action, because it had a belay-that-modify action associated with it.  Server action %@", buf, 0xCu);
              }

              serverId2 = [v42 serverId];
              [v24 removeObjectForKey:serverId2];
            }

            else
            {
              if (os_log_type_enabled(v45, v40))
              {
                serverId3 = [v42 serverId];
                *buf = 138412290;
                v127 = serverId3;
                _os_log_impl(&dword_0, serverId2, v40, "Had a belay-that-action daaction, but no corresponding server action for id %@", buf, 0xCu);
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

    allValues = [v24 allValues];
    [v101 addObjectsFromArray:allValues];

    allObjects = [v101 allObjects];

    previousTagCopy = v92;
    v21 = v93;
    pushedActionsCopy = v98;
  }

  else
  {
    v100 = 0;
  }

  v49 = objc_opt_new();
  v50 = objc_opt_new();
  LOWORD(v91) = __PAIR16__(available, sync);
  obja = allObjects;
  [(ASAgent *)self _syncResultForFolder:v21 newTag:tagCopy previousTag:previousTagCopy actions:allObjects results:resultsCopy changeIdContext:contextCopy isInitialSync:v91 moreAvailable:dataclass dataclass:v49 resultingChangeActionsForServer:pushedActionsCopy pushedActions:idsCopy rejectedServerIds:v50 eventsWithPendingInvitationEmails:?];
  account = [(ASAgent *)self account];
  changeTrackingID = [account changeTrackingID];
  account2 = [(ASAgent *)self account];
  accountID = [account2 accountID];
  v55 = [ASDataHandler newDataHandlerForDataclass:dataclass container:0 changeTrackingID:changeTrackingID accountID:accountID];

  [v55 openDB];
  [(ASAgent *)self _cacheFoldersForDataclasses:dataclass];
  v56 = [(ASAgent *)self _containerForFolderWithId:v21 dataclass:dataclass];
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
          changedItem2 = [v62 changedItem];
          clientID = [changedItem2 clientID];
          if (clientID)
          {
            goto LABEL_50;
          }

          serverID3 = [changedItem2 serverID];

          if (serverID3)
          {
            serverID4 = [changedItem2 serverID];
            clientID = [(ASAgent *)self _localIdForExchangeId:serverID4 inContainer:v56 dataclass:dataclass];

            [changedItem2 setClientID:clientID];
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
        clientID2 = [v72 clientID];
        if (!clientID2)
        {
          serverID5 = [v72 serverID];

          if (!serverID5)
          {
            goto LABEL_63;
          }

          serverID6 = [v72 serverID];
          clientID2 = [(ASAgent *)self _localIdForExchangeId:serverID6 inContainer:v56 dataclass:dataclass];

          [v72 setClientID:clientID2];
        }

LABEL_63:
        [v72 setLocalItem:0];
        account3 = [(ASAgent *)self account];
        [v72 loadLocalItemWithAccount:account3];
      }

      v69 = [v67 countByEnumeratingWithState:&v107 objects:v123 count:16];
    }

    while (v69);
  }

  account4 = [(ASAgent *)self account];
  v78 = [account4 sendEmailsForCalEvents:v67 consumer:self];

  [(ASAgent *)self _nilOutContainersForDataclasses:dataclass];
  [v102 closeDBAndSave:v78];
  if (available || ([v57 count] != 0) | v100 & 1)
  {
    account5 = [(ASAgent *)self account];
    v80 = [account5 folderWithId:v93];

    v81 = 1;
    v82 = [[ESFolderSyncRequest alloc] initWithFolder:v80 hasRemoteChanges:1 isInitialUberSync:sync];
    [v82 setActions:v57];
    [(ASAgent *)self _appendSyncRequest:v82];

    v83 = v98;
    v84 = obja;
  }

  else
  {
    v83 = v98;
    v84 = obja;
    if (changesAvailable)
    {
      v86 = DALoggingwithCategory();
      v87 = _CPLog_to_os_log_type[7];
      if (os_log_type_enabled(v86, v87))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v86, v87, "More local changes are available. Will issue another sync request.", buf, 2u);
      }

      account6 = [(ASAgent *)self account];
      v89 = [account6 folderWithId:v93];

      v90 = [[ESFolderSyncRequest alloc] initWithFolder:v89 hasRemoteChanges:0 isInitialUberSync:sync];
      [(ASAgent *)self _appendSyncRequest:v90];

      v81 = 1;
    }

    else
    {
      if (sync)
      {
        [(ASAgent *)self _finishInitialSyncForFolder:v93 dataclass:dataclass];
      }

      v81 = 0;
    }
  }

  v85 = +[DALocalDBGateKeeper sharedGateKeeper];
  [v85 relinquishLocksForWaiter:self dataclasses:dataclass moreComing:v81];

  [(ASAgent *)self _fireWaitingFolderItemSyncRequests];
}

- (void)syncResultForContactsFolder:(id)folder newTag:(id)tag previousTag:(id)previousTag newSyncToken:(id)token actions:(id)actions results:(id)results changeIdContext:(id)context isInitialSync:(BOOL)self0 moreAvailable:(BOOL)self1 moreLocalChangesAvailable:(BOOL)self2 pushedActions:(id)self3
{
  *(&v13 + 1) = __PAIR16__(changesAvailable, available);
  LOBYTE(v13) = sync;
  [ASAgent _wrapperSyncResultForFolder:"_wrapperSyncResultForFolder:dataclass:newTag:previousTag:actions:results:changeIdContext:isInitialSync:moreAvailable:moreLocalChangesAvailable:pushedActions:rejectedServerIds:" dataclass:folder newTag:2 previousTag:tag actions:previousTag results:actions changeIdContext:results isInitialSync:context moreAvailable:v13 moreLocalChangesAvailable:pushedActions pushedActions:0 rejectedServerIds:?];
}

- (void)syncResultForEventsFolder:(id)folder newTag:(id)tag previousTag:(id)previousTag actions:(id)actions results:(id)results changeIdContext:(id)context isInitialSync:(BOOL)sync moreAvailable:(BOOL)self0 moreLocalChangesAvailable:(BOOL)self1 pushedActions:(id)self2 rejectedServerIds:(id)self3
{
  *(&v13 + 1) = __PAIR16__(changesAvailable, available);
  LOBYTE(v13) = sync;
  [ASAgent _wrapperSyncResultForFolder:"_wrapperSyncResultForFolder:dataclass:newTag:previousTag:actions:results:changeIdContext:isInitialSync:moreAvailable:moreLocalChangesAvailable:pushedActions:rejectedServerIds:" dataclass:folder newTag:4 previousTag:tag actions:previousTag results:actions changeIdContext:results isInitialSync:context moreAvailable:v13 moreLocalChangesAvailable:pushedActions pushedActions:ids rejectedServerIds:?];
}

- (void)syncResultForToDosFolder:(id)folder newTag:(id)tag previousTag:(id)previousTag actions:(id)actions results:(id)results changeIdContext:(id)context isInitialSync:(BOOL)sync moreAvailable:(BOOL)self0 moreLocalChangesAvailable:(BOOL)self1 pushedActions:(id)self2 rejectedServerIds:(id)self3
{
  folderCopy = folder;
  tagCopy = tag;
  previousTagCopy = previousTag;
  actionsCopy = actions;
  resultsCopy = results;
  contextCopy = context;
  pushedActionsCopy = pushedActions;
  v23 = previousTagCopy;
  idsCopy = ids;
  if (previousTagCopy && ([previousTagCopy isEqualToString:@"0"] & 1) == 0 && !available)
  {
    [(ASAgent *)self _noteSyncForFolderWithId:folderCopy andTitle:0 finishedWithSuccess:1];
  }

  v73 = pushedActionsCopy;
  if (pushedActionsCopy)
  {
    v67 = previousTagCopy;
    v69 = folderCopy;
    v24 = objc_opt_new();
    v25 = objc_opt_new();
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v26 = actionsCopy;
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
            changedItem = [v32 changedItem];
            serverID = [changedItem serverID];
            [v24 setObject:v32 forKeyedSubscript:serverID];
          }
        }

        v29 = [obj countByEnumeratingWithState:&v81 objects:v88 count:16];
      }

      while (v29);
    }

    v66 = v27;
    v68 = tagCopy;

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
            serverId = [v43 serverId];
            v45 = [v24 objectForKeyedSubscript:serverId];

            v46 = DALoggingwithCategory();
            serverId2 = v46;
            if (v45)
            {
              if (os_log_type_enabled(v46, v40))
              {
                *buf = 138412290;
                v86 = v45;
                _os_log_impl(&dword_0, serverId2, v40, "Dropping server action, because it had a belay-that-modify action associated with it.  Server action %@", buf, 0xCu);
              }

              serverId2 = [v43 serverId];
              [v24 removeObjectForKey:serverId2];
            }

            else
            {
              if (os_log_type_enabled(v46, v41))
              {
                serverId3 = [v43 serverId];
                *buf = 138412290;
                v86 = serverId3;
                _os_log_impl(&dword_0, serverId2, v41, "Had a belay-that-action daaction, but no corresponding server action for id %@", buf, 0xCu);
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

    allValues = [v24 allValues];
    [v66 addObjectsFromArray:allValues];

    actionsCopy = [v66 allObjects];

    tagCopy = v68;
    folderCopy = v69;
    v23 = v67;
    pushedActionsCopy = v73;
  }

  else
  {
    v38 = 0;
  }

  v50 = objc_opt_new();
  v51 = objc_opt_new();
  LOWORD(v65) = __PAIR16__(available, sync);
  if ([(ASAgent *)self _syncResultForToDoFolder:folderCopy newTag:tagCopy previousTag:v23 actions:actionsCopy results:resultsCopy changeIdContext:contextCopy isInitialSync:v65 moreAvailable:v50 resultingChangeActionsForServer:pushedActionsCopy pushedActions:idsCopy rejectedServerIds:v51 eventsWithPendingInvitationEmails:?])
  {
    if (available || ([v50 count] != 0) | v38 & 1)
    {
      selfCopy4 = self;
      account = [(ASAgent *)self account];
      v54 = [account folderWithId:folderCopy];

      v55 = 1;
      v56 = [[ESFolderSyncRequest alloc] initWithFolder:v54 hasRemoteChanges:1 isInitialUberSync:sync];
      [v56 setActions:v50];
      [(ASAgent *)self _appendSyncRequest:v56];
    }

    else if (changesAvailable)
    {
      v60 = DALoggingwithCategory();
      v61 = _CPLog_to_os_log_type[7];
      selfCopy4 = self;
      if (os_log_type_enabled(v60, v61))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v60, v61, "More local changes are available. Will issue another sync request.", buf, 2u);
      }

      account2 = [(ASAgent *)self account];
      v63 = [account2 folderWithId:folderCopy];

      v64 = [[ESFolderSyncRequest alloc] initWithFolder:v63 hasRemoteChanges:0 isInitialUberSync:sync];
      [(ASAgent *)self _appendSyncRequest:v64];

      v55 = 1;
    }

    else
    {
      selfCopy4 = self;
      if (sync)
      {
        [(ASAgent *)self _finishInitialSyncForToDoFolder:folderCopy];
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
    selfCopy4 = self;
  }

  v59 = +[DALocalDBGateKeeper sharedGateKeeper];
  [v59 relinquishLocksForWaiter:selfCopy4 dataclasses:16 moreComing:v55];

  [(ASAgent *)selfCopy4 _fireWaitingFolderItemSyncRequests];
}

- (void)syncResultForNotesFolder:(id)folder noteContext:(id)context newTag:(id)tag previousTag:(id)previousTag actions:(id)actions results:(id)results changeSet:(id)set notesToDeleteAfterSync:(id)self0 isInitialSync:(BOOL)self1 moreAvailable:(BOOL)self2 moreLocalChangesAvailable:(BOOL)self3
{
  *(&v13 + 1) = __PAIR16__(changesAvailable, available);
  LOBYTE(v13) = initialSync;
  [ASAgent _wrapperSyncResultForFolder:"_wrapperSyncResultForFolder:dataclass:newTag:previousTag:actions:results:changeIdContext:isInitialSync:moreAvailable:moreLocalChangesAvailable:pushedActions:rejectedServerIds:" dataclass:folder newTag:32 previousTag:tag actions:previousTag results:actions changeIdContext:results isInitialSync:set moreAvailable:v13 moreLocalChangesAvailable:0 pushedActions:0 rejectedServerIds:?];
}

- (BOOL)_finishWithInvitationEvent:(void *)event eventUID:(id)d expectedResponse:(int)response wasMyInvite:(BOOL)invite isStillInvite:(BOOL)stillInvite
{
  stillInviteCopy = stillInvite;
  inviteCopy = invite;
  dCopy = d;
  v13 = DALoggingwithCategory();
  v14 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v13, v14))
  {
    *buf = 138413058;
    v47 = dCopy;
    v48 = 1024;
    responseCopy = response;
    v50 = 1024;
    v51 = inviteCopy;
    v52 = 1024;
    v53 = stillInviteCopy;
    _os_log_impl(&dword_0, v13, v14, "_finishWithInvitationEvent, for event with UID %@ expectedResponse of %d, was my invite %d is still invite %d", buf, 0x1Eu);
  }

  if (!stillInviteCopy)
  {
    if ((CalEventGetExternalTrackingStatus() & 7) == 0)
    {
      v15 = 0;
      goto LABEL_45;
    }

    CalEventSetExternalTrackingStatus();
    goto LABEL_9;
  }

  if (!inviteCopy)
  {
    v16 = 7;
    if (response > 1)
    {
      if (response == 2)
      {
        v16 = 3;
      }

      else if (response == 3)
      {
        v16 = 2;
      }
    }

    else
    {
      if (response == -1)
      {
        goto LABEL_36;
      }

      if (response == 1)
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
            account = [(ASAgent *)self account];
            v34 = [account folderWithId:v32];

            if (v34)
            {
              v43 = [[ESFolderSyncRequest alloc] initWithFolder:v34 hasRemoteChanges:0 isInitialUberSync:0];
              v44 = v32;
              v35 = CalCalendarItemCopyExternalID();
              v36 = [ASEvent alloc];
              account2 = [(ASAgent *)self account];
              v38 = [v36 initWithCalEvent:event serverID:v35 account:account2];

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
    account3 = [(ASAgent *)self account];
    [account3 consumerFinishedInvitationActionsForEventWithUID:dCopy];

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
  account4 = [(ASAgent *)self account];
  v21 = [v19 initWithCalEvent:event serverID:v18 account:account4];

  account5 = [(ASAgent *)self account];
  accountID = [account5 accountID];
  v24 = [v21 purgeAttendeesPendingDeletionForAccountID:accountID];

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

- (void)_smartMailTask:(id)task failedWithErrorCode:(int64_t)code error:(id)error
{
  taskCopy = task;
  if ([error code] == &stru_68.size + 6)
  {
    context = [taskCopy context];
    [(ASAgent *)self messageDidSendWithContext:context];
  }
}

- (void)_reallyApplyMessageDidSendWithContext:(id)context
{
  contextCopy = context;
  v5 = +[ASLocalDBHelper sharedInstance];
  account = [(ASAgent *)self account];
  accountID = [account accountID];
  account2 = [(ASAgent *)self account];
  changeTrackingID = [account2 changeTrackingID];
  [v5 calOpenDatabaseForAccountID:accountID clientID:changeTrackingID];

  v10 = +[ASLocalDBHelper sharedInstance];
  account3 = [(ASAgent *)self account];
  accountID2 = [account3 accountID];
  [v10 calDatabaseForAccountID:accountID2];

  account4 = [(ASAgent *)self account];
  v14 = [account4 _copyExchangeCalendarStore:0];

  v15 = contextCopy;
  eventUID = [v15 eventUID];
  serverID = [v15 serverID];
  isMyInvite = [v15 isMyInvite];
  emailResponse = [v15 emailResponse];
  if (eventUID)
  {
    v52 = emailResponse;
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
        v60 = eventUID;
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
        v62 = eventUID;
        _os_log_impl(&dword_0, v39, type, "Found %ld events with the same UID %@. Pick one using server ID.", buf, 0x16u);
      }

      if (serverID && (v28 = v20, (v40 = CalDatabaseCopyEventWithExternalIDInStore()) != 0))
      {
        v29 = v40;
        v41 = DALoggingwithCategory();
        if (os_log_type_enabled(v41, type))
        {
          *buf = 138412290;
          v60 = serverID;
          _os_log_impl(&dword_0, v41, type, "Found local event using server ID %@.", buf, 0xCu);
        }

        isMyInvite = isMyInvite;
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
        isMyInvite = isMyInvite;
        if (!v44)
        {
LABEL_41:
          account5 = [(ASAgent *)self account];
          [account5 consumerFinishedInvitationActionsForEventWithUID:eventUID];

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
          v60 = eventUID;
          _os_log_impl(&dword_0, v41, type, "Found local event using event UID %@.", buf, 0xCu);
        }
      }
    }

    v33 = [(ASAgent *)self _finishWithInvitationEvent:v29 eventUID:eventUID expectedResponse:v52 wasMyInvite:isMyInvite isStillInvite:1];
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
    attendeeUUIDs = [v15 attendeeUUIDs];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v31 = [attendeeUUIDs countByEnumeratingWithState:&v54 objects:v58 count:16];
    v51 = serverID;
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
            objc_enumerationMutation(attendeeUUIDs);
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

        v32 = [attendeeUUIDs countByEnumeratingWithState:&v54 objects:v58 count:16];
      }

      while (v32);
    }

    else
    {
      v33 = 0;
    }

    v23 = &PLLogRegisteredEvent_ptr;
    serverID = v51;
    v28 = v53;
    if (v53)
    {
      goto LABEL_39;
    }
  }

LABEL_40:
  sharedInstance = [v23[390] sharedInstance];
  account6 = [(ASAgent *)self account];
  accountID3 = [account6 accountID];
  [sharedInstance calCloseDatabaseForAccountID:accountID3 save:v33 & 1];

  v48 = +[DALocalDBGateKeeper sharedGateKeeper];
  [v48 relinquishLocksForWaiter:self dataclasses:4 moreComing:0];
}

- (void)messageDidSendWithContext:(id)context
{
  contextCopy = context;
  v5 = +[DALocalDBGateKeeper sharedGateKeeper];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_11680;
  v7[3] = &unk_6CED0;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  [v5 registerWaiter:self forDataclassLocks:4 completionHandler:v7];
}

- (void)_reallyFinishInvitationBatch:(id)batch
{
  batchCopy = batch;
  v5 = +[ASLocalDBHelper sharedInstance];
  account = [(ASAgent *)self account];
  accountID = [account accountID];
  account2 = [(ASAgent *)self account];
  changeTrackingID = [account2 changeTrackingID];
  [v5 calOpenDatabaseForAccountID:accountID clientID:changeTrackingID];

  v10 = +[ASLocalDBHelper sharedInstance];
  account3 = [(ASAgent *)self account];
  accountID2 = [account3 accountID];
  [v10 calDatabaseForAccountID:accountID2];

  selfCopy = self;
  account4 = [(ASAgent *)self account];
  v15 = [account4 _copyExchangeCalendarStore:0];

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = batchCopy;
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
        eventUID = [v20 eventUID];
        uidForCalFramework = [eventUID uidForCalFramework];

        if (uidForCalFramework)
        {
          v23 = DALoggingwithCategory();
          if (os_log_type_enabled(v23, type))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v23, type, "Invoking CalDatabaseCopyEventWithUniqueIdentifierInStore for localEvent when finishing invatation batch.", buf, 2u);
          }

          v24 = CalDatabaseCopyEventWithUniqueIdentifierInStore();
          [v20 setLocalItem:v24];
          organizerEmail = [v20 organizerEmail];
          if ([organizerEmail length])
          {
            v43 = 1;
          }

          else
          {
            attendees = [v20 attendees];
            v43 = [attendees count] != 0;
          }

          account5 = [(ASAgent *)selfCopy account];
          if ([v20 cachedOrganizerIsSelfWithAccount:account5])
          {
            [v20 attendees];
            v28 = v18;
            v29 = v15;
            v31 = v30 = selfCopy;
            v32 = [v31 count] != 0;

            selfCopy = v30;
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
            v40 = -[ASAgent _finishWithInvitationEvent:eventUID:expectedResponse:wasMyInvite:isStillInvite:](selfCopy, "_finishWithInvitationEvent:eventUID:expectedResponse:wasMyInvite:isStillInvite:", v24, uidForCalFramework, [v20 meetingResponseForEmail], v32, v43);
            CFRelease(v24);
          }

          else
          {
            account6 = [(ASAgent *)selfCopy account];
            [account6 consumerFinishedInvitationActionsForEventWithUID:uidForCalFramework];
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
  account7 = [(ASAgent *)selfCopy account];
  [account7 accountID];
  v37 = v36 = selfCopy;
  [v34 calCloseDatabaseForAccountID:v37 save:v40 & 1];

  v38 = +[DALocalDBGateKeeper sharedGateKeeper];
  [v38 relinquishLocksForWaiter:v36 dataclasses:4 moreComing:0];
}

- (void)finishWithInvitationBatch:(id)batch
{
  batchCopy = batch;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [batchCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(batchCopy);
        }

        [*(*(&v13 + 1) + 8 * v8) setLocalItem:0];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [batchCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v9 = +[DALocalDBGateKeeper sharedGateKeeper];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_11C30;
  v11[3] = &unk_6CED0;
  v11[4] = self;
  v12 = batchCopy;
  v10 = batchCopy;
  [v9 registerWaiter:self forDataclassLocks:4 completionHandler:v11];
}

- (void)meetingResponseFinishedWithStatus:(int64_t)status error:(id)error successfulResponses:(id)responses failedResponses:(id)failedResponses
{
  errorCopy = error;
  responsesCopy = responses;
  failedResponsesCopy = failedResponses;
  selfCopy = self;
  account = [(ASAgent *)self account];
  changeTrackingID = [account changeTrackingID];
  account2 = [(ASAgent *)selfCopy account];
  accountID = [account2 accountID];
  v15 = [ASDataHandler newDataHandlerForDataclass:4 container:0 changeTrackingID:changeTrackingID accountID:accountID];

  v132 = v15;
  [v15 openDB];
  [(ASAgent *)selfCopy _cacheFoldersForDataclasses:4];
  v16 = +[ASLocalDBHelper sharedInstance];
  account3 = [(ASAgent *)selfCopy account];
  accountID2 = [account3 accountID];
  [v16 calDatabaseForAccountID:accountID2];

  account4 = [(ASAgent *)selfCopy account];
  cf = [account4 _copyExchangeCalendarStore:0];

  v152 = objc_opt_new();
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  obj = failedResponsesCopy;
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

        context = [*(*(&v168 + 1) + 8 * i) context];
        [v152 addObject:context];
      }

      v20 = [obj countByEnumeratingWithState:&v168 objects:v181 count:16];
    }

    while (v20);
  }

  v166 = 0u;
  v167 = 0u;
  v164 = 0u;
  v165 = 0u;
  v137 = responsesCopy;
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

        context2 = [*(*(&v164 + 1) + 8 * j) context];
        [v152 addObject:context2];
      }

      v24 = [v137 countByEnumeratingWithState:&v164 objects:v180 count:16];
    }

    while (v24);
  }

  statusCopy2 = status;
  if (status == 9 || status == 2)
  {
    [(ASAgent *)selfCopy _clearChangeHistoriesWithChangeIdContext:0 dataclass:4 inFolderWithId:0 pushedActions:v152, errorCopy];
    v149 = 1;
    statusCopy2 = status;
  }

  else
  {
    v149 = 0;
  }

  if (statusCopy2 == 9)
  {
    v29 = cf;
    goto LABEL_68;
  }

  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  account8 = obj;
  v144 = [account8 countByEnumeratingWithState:&v160 objects:v179 count:16];
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
        objc_enumerationMutation(account8);
      }

      v33 = *(*(&v160 + 1) + 8 * k);
      v34 = DALoggingwithCategory();
      if (os_log_type_enabled(v34, v31))
      {
        eventUID = [v33 eventUID];
        uidForCalFramework = [eventUID uidForCalFramework];
        deliveryItemServerId = [v33 deliveryItemServerId];
        status = [v33 status];
        *buf = 138412802;
        v174 = uidForCalFramework;
        v175 = 2112;
        v176 = deliveryItemServerId;
        v177 = 2048;
        v178 = status;
        _os_log_impl(&dword_0, v34, v31, "Meeting response for event %@ with UID %@ failed with error %ld", buf, 0x20u);
      }

      if ([v33 status] == &dword_8 + 1 || objc_msgSend(v33, "status") == &dword_C)
      {
        eventUID2 = [v33 eventUID];
        uidForCalFramework2 = [eventUID2 uidForCalFramework];

        if (uidForCalFramework2)
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
                eventUID3 = [v33 eventUID];
                uidForCalFramework3 = [eventUID3 uidForCalFramework];
                deliveryItemServerId2 = [v33 deliveryItemServerId];
                *buf = 138412546;
                v174 = uidForCalFramework3;
                v175 = 2112;
                v176 = deliveryItemServerId2;
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
            v174 = uidForCalFramework2;
            _os_log_impl(&dword_0, v44, v31, "localEvent for responseItem with UID %@ not found.", buf, 0xCu);
          }
        }

        v30 = 1;
        goto LABEL_64;
      }
    }

    v144 = [account8 countByEnumeratingWithState:&v160 objects:v179 count:16];
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

    [(ASAgent *)selfCopy _nilOutContainersForDataclasses:4, errorCopy];
    [v132 closeDBAndSave:v149 & 1];
    v59 = [NSBundle bundleForClass:objc_opt_class()];
    v60 = [v59 localizedStringForKey:@"MEETING_RESPONSE_FAILURE_TITLE" value:&stru_6D4A8 table:@"DataAccess"];
    v61 = [NSBundle bundleForClass:objc_opt_class()];
    v62 = [v61 localizedStringForKey:@"MEETING_RESPONSE_FAILURE_BODY" value:&stru_6D4A8 table:@"DataAccess"];
    v63 = [NSBundle bundleForClass:objc_opt_class()];
    CFUserNotificationDisplayNotice(0.0, 3uLL, 0, 0, 0, v60, v62, [v63 localizedStringForKey:@"OK" value:&stru_6D4A8 table:@"DataAccess"]);

    account5 = [(ASAgent *)selfCopy account];
    changeTrackingID2 = [account5 changeTrackingID];
    account6 = [(ASAgent *)selfCopy account];
    accountID3 = [account6 accountID];
    v127 = [ASDataHandler newDataHandlerForDataclass:4 container:0 changeTrackingID:changeTrackingID2 accountID:accountID3];

    [v127 openDB];
    [(ASAgent *)selfCopy _cacheFoldersForDataclasses:4];
    v68 = +[ASLocalDBHelper sharedInstance];
    account7 = [(ASAgent *)selfCopy account];
    accountID4 = [account7 accountID];
    [v68 calDatabaseForAccountID:accountID4];

    account8 = [(ASAgent *)selfCopy account];
    cf = [account8 _copyExchangeCalendarStore:0];
    v149 = 0;
LABEL_72:

    v29 = cf;
  }

  else
  {
    v127 = v132;
  }

  if (status != 2)
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
      eventUID4 = [v73 eventUID];
      uidForCalFramework4 = [eventUID4 uidForCalFramework];

      v76 = DALoggingwithCategory();
      if (os_log_type_enabled(v76, v145))
      {
        *buf = 138412290;
        v174 = uidForCalFramework4;
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
          v174 = uidForCalFramework4;
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
        account9 = [(ASAgent *)selfCopy account];
        deletedItemsFolder = [account9 deletedItemsFolder];
        folderID = [deletedItemsFolder folderID];

        deliveryItemFolderId = [v73 deliveryItemFolderId];
        v96 = [folderID isEqualToString:deliveryItemFolderId];

        calEventServerId = [v73 calEventServerId];

        if (calEventServerId)
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

        if ([uidForCalFramework4 rangeOfString:@"<!ExceptionDate!>"] == 0x7FFFFFFFFFFFFFFFLL)
        {
          calEventServerId2 = [v73 calEventServerId];
          if (calEventServerId2)
          {
            [v73 calEventServerId];
          }

          else
          {
            [v73 deliveryItemServerId];
          }
          v110 = ;

          account10 = [(ASAgent *)selfCopy account];
          v109 = [ASEvent eventWithCalEvent:v81 serverID:v110 account:account10];
        }

        else
        {
          account10 = [[ASEventUID alloc] initWithCalFrameworkString:uidForCalFramework4];
          uidWithoutExceptionDate = [account10 uidWithoutExceptionDate];
          if (uidWithoutExceptionDate)
          {
            v103 = DALoggingwithCategory();
            if (os_log_type_enabled(v103, v136))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v103, v136, "Invoking CalDatabaseCopyEventWithUniqueIdentifierInStore for parentLocalEvent", buf, 2u);
            }

            v129 = CalDatabaseCopyEventWithUniqueIdentifierInStore();
            calEventServerId3 = [v73 calEventServerId];
            account11 = [(ASAgent *)selfCopy account];
            v106 = [ASEvent eventWithCalEvent:v129 serverID:calEventServerId3 account:account11];

            v107 = [ASEventException alloc];
            account12 = [(ASAgent *)selfCopy account];
            v109 = [v107 initWithCalEvent:v81 originalEvent:v106 account:account12];

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

        responseRequested = [v109 responseRequested];
        if ([responseRequested intValue])
        {
          account13 = [(ASAgent *)selfCopy account];
          protocol = [account13 protocol];
          sendEmailForMeetingInvitationAndResponse = [protocol sendEmailForMeetingInvitationAndResponse];

          if (sendEmailForMeetingInvitationAndResponse)
          {
            [v109 setMeetingResponseForEmail:{objc_msgSend(v73, "meetingResponse")}];
            [v128 addObject:v109];
LABEL_145:
            if (calEventServerId && v110)
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
            account14 = [(ASAgent *)selfCopy account];
            protocol2 = [account14 protocol];
            protocolVersion = [protocol2 protocolVersion];
            *buf = 138412546;
            v174 = v109;
            v175 = 2112;
            v176 = protocolVersion;
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

        v149 = -[ASAgent _finishWithInvitationEvent:eventUID:expectedResponse:wasMyInvite:isStillInvite:](selfCopy, "_finishWithInvitationEvent:eventUID:expectedResponse:wasMyInvite:isStillInvite:", v81, uidForCalFramework4, [v73 meetingResponse], 0, 1);
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
        v176 = uidForCalFramework4;
        _os_log_impl(&dword_0, v82, v141, "Found %ld events with the same UID %@. Pick one using server ID.", buf, 0x16u);
      }

      calEventServerId4 = [v73 calEventServerId];
      v84 = calEventServerId4 == 0;

      if (!v84)
      {
        calEventServerId5 = [v73 calEventServerId];
        v81 = CalDatabaseCopyEventWithExternalIDInStore();

        if (v81)
        {
          v86 = DALoggingwithCategory();
          if (os_log_type_enabled(v86, v141))
          {
            calEventServerId6 = [v73 calEventServerId];
            *buf = 138412290;
            v174 = calEventServerId6;
            _os_log_impl(&dword_0, v86, v141, "Found local event using cal event ID %@.", buf, 0xCu);
          }

LABEL_99:

          goto LABEL_100;
        }
      }

      deliveryItemServerId3 = [v73 deliveryItemServerId];
      v89 = deliveryItemServerId3 == 0;

      if (!v89)
      {
        deliveryItemServerId4 = [v73 deliveryItemServerId];
        v81 = CalDatabaseCopyEventWithExternalIDInStore();

        if (v81)
        {
          v86 = DALoggingwithCategory();
          if (os_log_type_enabled(v86, v141))
          {
            deliveryItemServerId5 = [v73 deliveryItemServerId];
            *buf = 138412290;
            v174 = deliveryItemServerId5;
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
        v176 = uidForCalFramework4;
        _os_log_impl(&dword_0, v112, v136, "Found %ld events with the same UID, unable to distinguish them. UID %@.", buf, 0x16u);
      }

      if (!typea)
      {
LABEL_130:
        folderID = DALoggingwithCategory();
        if (os_log_type_enabled(folderID, v130))
        {
          *buf = 138412290;
          v174 = uidForCalFramework4;
          _os_log_impl(&dword_0, folderID, v130, "MeetingResponse was successful, but I can no longer find an event with uid %@", buf, 0xCu);
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
          v149 |= -[ASAgent _finishWithInvitationEvent:eventUID:expectedResponse:wasMyInvite:isStillInvite:](selfCopy, "_finishWithInvitationEvent:eventUID:expectedResponse:wasMyInvite:isStillInvite:", ValueAtIndex, uidForCalFramework4, [v73 meetingResponse], 0, 1);
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
    account15 = [(ASAgent *)selfCopy account];
    v124 = [account15 sendEmailsForCalEvents:v128 consumer:selfCopy];

    LOBYTE(v149) = v149 | v124;
  }

  v29 = cfa;
LABEL_157:
  if (v29)
  {
    CFRelease(v29);
  }

  [(ASAgent *)selfCopy _nilOutContainersForDataclasses:4, errorCopy];
  [v127 closeDBAndSave:v149 & 1];
}

- (BOOL)_markEventWithLocalIDAsNeedingInvitationEmail:(int)email parentId:(int)id
{
  v5 = +[ASLocalDBHelper sharedInstance];
  account = [(ASAgent *)self account];
  accountID = [account accountID];
  [v5 calDatabaseForAccountID:accountID];
  v8 = CalDatabaseCopyCalendarItemWithRowID();

  if (v8)
  {
    v9 = [ASEvent alloc];
    account2 = [(ASAgent *)self account];
    v11 = [v9 initWithCalEvent:v8 serverID:0 account:account2];

    account3 = [(ASAgent *)self account];
    if ([v11 cachedOrganizerIsSelfWithAccount:account3])
    {
      attendees = [v11 attendees];
      v14 = [attendees count];

      if (v14)
      {
        v15 = +[ASLocalDBHelper sharedInstance];
        account4 = [(ASAgent *)self account];
        accountID2 = [account4 accountID];
        [v15 calDatabaseForAccountID:accountID2];
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

- (void)_moveItemsTask:(id)task failedWithErrorCode:(int64_t)code
{
  taskCopy = task;
  if (code > 0x22)
  {
    goto LABEL_6;
  }

  if (((1 << code) & 0x440240421) != 0)
  {
    v7 = 1;
    goto LABEL_13;
  }

  if (((1 << code) & 0x18000) != 0)
  {
LABEL_8:
    [(ASAgent *)self refreshFolderListRequireChangedFolders:1 isUserRequested:1];
    goto LABEL_30;
  }

  if (((1 << code) & 0x20008) == 0)
  {
LABEL_6:
    if (code == -1)
    {
LABEL_27:
      v27 = DALoggingwithCategory();
      v28 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v27, v28))
      {
        *buf = 134218242;
        codeCopy3 = code;
        v39 = 2112;
        v40 = taskCopy;
        _os_log_impl(&dword_0, v27, v28, "Draining pending sync requests because move items task had error %ld.  task %@", buf, 0x16u);
      }

      folderItemSyncRequestLock = [(ASAgent *)self folderItemSyncRequestLock];
      [folderItemSyncRequestLock lock];

      outstandingFolderRequests = [(ASAgent *)self outstandingFolderRequests];
      [outstandingFolderRequests removeAllObjects];

      folderItemSyncRequestLock2 = [(ASAgent *)self folderItemSyncRequestLock];
      [folderItemSyncRequestLock2 unlock];

      goto LABEL_30;
    }

    if (code == 67)
    {
      goto LABEL_8;
    }

    v8 = DALoggingwithCategory();
    v9 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v8, v9))
    {
      *buf = 134217984;
      codeCopy3 = code;
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
  pushedMoveRequests = [taskCopy pushedMoveRequests];
  v12 = [pushedMoveRequests countByEnumeratingWithState:&v33 objects:v41 count:16];
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
          objc_enumerationMutation(pushedMoveRequests);
        }

        context = [*(*(&v33 + 1) + 8 * i) context];
        if (context)
        {
          [v10 addObject:context];
        }
      }

      v13 = [pushedMoveRequests countByEnumeratingWithState:&v33 objects:v41 count:16];
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
      codeCopy3 = code;
      v39 = 2112;
      v40 = taskCopy;
      _os_log_impl(&dword_0, v17, v18, "Draining changes because move items task had error %ld.  task %@", buf, 0x16u);
    }

    v19 = +[ASLocalDBHelper sharedInstance];
    account = [(ASAgent *)self account];
    accountID = [account accountID];
    account2 = [(ASAgent *)self account];
    changeTrackingID = [account2 changeTrackingID];
    [v19 calOpenDatabaseForAccountID:accountID clientID:changeTrackingID];

    [(ASAgent *)self _clearChangeHistoriesWithChangeIdContext:0 dataclass:4 inFolderWithId:0 pushedActions:v10];
    v24 = +[ASLocalDBHelper sharedInstance];
    account3 = [(ASAgent *)self account];
    accountID2 = [account3 accountID];
    [v24 calCloseDatabaseForAccountID:accountID2 save:1];
  }

  if (v7)
  {
    goto LABEL_27;
  }

LABEL_30:
  v32 = +[DALocalDBGateKeeper sharedGateKeeper];
  [v32 relinquishLocksForWaiter:self dataclasses:objc_msgSend(taskCopy moreComing:{"dataclass"), 0}];
}

- (void)resultsForMessageMove:(id)move
{
  moveCopy = move;
  v5 = +[ASLocalDBHelper sharedInstance];
  account = [(ASAgent *)self account];
  accountID = [account accountID];
  account2 = [(ASAgent *)self account];
  changeTrackingID = [account2 changeTrackingID];
  [v5 calOpenDatabaseForAccountID:accountID clientID:changeTrackingID];

  account3 = [(ASAgent *)self account];
  v11 = [account3 _copyExchangeCalendarStore:0];

  v76 = objc_opt_new();
  cf = v11;
  v63 = moveCopy;
  if (v11)
  {
    Mutable = CFArrayCreateMutable(0, 0, 0);
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    obj = moveCopy;
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
          origRequest = [v15 origRequest];
          context = [origRequest context];
          if ([context changeId] != -1)
          {
            v18 = DALoggingwithCategory();
            if (os_log_type_enabled(v18, type))
            {
              changeId = [context changeId];
              *buf = 67109120;
              v87 = changeId;
              _os_log_impl(&dword_0, v18, type, "Clearing change index %d", buf, 8u);
            }

            CFArrayAppendValue(Mutable, [context changeId]);
          }

          destID = [v15 destID];

          if (destID)
          {
            v75 = origRequest;
            destinationContainerId = [context destinationContainerId];
            v22 = [v76 objectForKeyedSubscript:destinationContainerId];

            if (!v22)
            {
              v22 = objc_opt_new();
              destinationContainerId2 = [context destinationContainerId];
              [v76 setObject:v22 forKeyedSubscript:destinationContainerId2];
            }

            v24 = [ASAction alloc];
            destID2 = [v15 destID];
            v26 = [v24 initWithItemChangeType:6 changedItem:0 serverId:destID2];

            v74 = v26;
            [v22 addObject:v26];
            changedItem = [context changedItem];
            dataclass = [changedItem dataclass];

            changedItem2 = [context changedItem];
            v30 = changedItem2;
            if (dataclass == &dword_4)
            {
              uidForCalFramework = [changedItem2 uidForCalFramework];
              v31 = DALoggingwithCategory();
              if (os_log_type_enabled(v31, v68))
              {
                *buf = 0;
                _os_log_impl(&dword_0, v31, v68, "Invoking CalDatabaseCopyEventWithUniqueIdentifierInStore", buf, 2u);
              }

              v32 = +[ASLocalDBHelper sharedInstance];
              account4 = [(ASAgent *)self account];
              accountID2 = [account4 accountID];
              [v32 calDatabaseForAccountID:accountID2];
              v35 = CalDatabaseCopyEventWithUniqueIdentifierInStore();

              if (v35)
              {
                [v30 setLocalItem:v35];
                CFRelease(v35);
                destID3 = [v15 destID];
                [v30 setServerID:destID3];

                account5 = [(ASAgent *)self account];
                accountID3 = [account5 accountID];
                [v30 verifyExternalIdsForAccountID:accountID3];

                v64 = 1;
              }

              Mutable = v66;

              v70 = 4;
              v13 = v65;
            }

            else
            {
              [changedItem2 dataclass];
            }

            origRequest = v75;
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
      account6 = [(ASAgent *)self account];
      accountID4 = [account6 accountID];
      [v40 calDatabaseForAccountID:accountID4];
      account7 = [(ASAgent *)self account];
      changeTrackingID2 = [account7 changeTrackingID];
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
  account8 = [(ASAgent *)self account];
  accountID5 = [account8 accountID];
  [v45 calCloseDatabaseForAccountID:accountID5 save:v39 & 1];

  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  allKeys = [v76 allKeys];
  v49 = [allKeys countByEnumeratingWithState:&v77 objects:v85 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v53 = *(*(&v77 + 1) + 8 * j);
        account9 = [(ASAgent *)self account];
        v55 = [account9 folderWithId:v53];

        if (v55)
        {
          v56 = [[ESFolderSyncRequest alloc] initWithFolder:v55 hasRemoteChanges:0 isInitialUberSync:0];
          v57 = [v76 objectForKeyedSubscript:v53];
          allObjects = [v57 allObjects];
          [v56 setActions:allObjects];

          [(ASAgent *)self _appendSyncRequest:v56];
        }
      }

      v50 = [allKeys countByEnumeratingWithState:&v77 objects:v85 count:16];
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

- (void)_reallySendMoves:(id)moves
{
  movesCopy = moves;
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(movesCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = movesCopy;
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
        sourceServerId = [v9 sourceServerId];
        sourceContainerId = [v9 sourceContainerId];
        destinationContainerId = [v9 destinationContainerId];
        v14 = [v10 initMoveRequestWithMessage:sourceServerId fromFolder:sourceContainerId toFolder:destinationContainerId];

        [v14 setContext:v9];
        [v4 addObject:v14];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  account = [(ASAgent *)self account];
  [account performMoveRequests:v4 consumer:self];
}

- (void)_reallySyncRequest:(id)request
{
  requestCopy = request;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138412290;
    v253 = requestCopy;
    _os_log_impl(&dword_0, v5, v6, "really syncing request %@", buf, 0xCu);
  }

  type = v6;

  folderItemSyncRequestLock = [(ASAgent *)self folderItemSyncRequestLock];
  [folderItemSyncRequestLock lock];

  v244 = 0u;
  v245 = 0u;
  v242 = 0u;
  v243 = 0u;
  selfCopy = self;
  outstandingFolderRequests = [(ASAgent *)self outstandingFolderRequests];
  v9 = [outstandingFolderRequests copy];

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
        folder = [v14 folder];
        folder2 = [requestCopy folder];
        v17 = [folder isEqual:folder2];

        if (v17)
        {
          v18 = DALoggingwithCategory();
          if (os_log_type_enabled(v18, type))
          {
            *buf = 138412290;
            v253 = v14;
            _os_log_impl(&dword_0, v18, type, "Found a sync request for the same folder.  Merging in %@", buf, 0xCu);
          }

          calUnitTestMergedRequestsBlock = [(ASAgent *)selfCopy calUnitTestMergedRequestsBlock];

          if (calUnitTestMergedRequestsBlock)
          {
            calUnitTestMergedRequestsBlock2 = [(ASAgent *)selfCopy calUnitTestMergedRequestsBlock];
            calUnitTestMergedRequestsBlock2[2]();
          }

          if ([v14 hasRemoteChanges])
          {
            [requestCopy setHasRemoteChanges:1];
          }

          if ([v14 isResyncAfterServerError])
          {
            [requestCopy setIsResyncAfterServerError:1];
          }

          v21 = objc_opt_new();
          actions = [v14 actions];
          [v21 addObjectsFromArray:actions];

          actions2 = [requestCopy actions];
          [v21 addObjectsFromArray:actions2];

          allObjects = [v21 allObjects];
          [requestCopy setActions:allObjects];

          outstandingFolderRequests2 = [(ASAgent *)selfCopy outstandingFolderRequests];
          [outstandingFolderRequests2 removeObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v242 objects:v258 count:16];
    }

    while (v11);
  }

  v26 = selfCopy;
  folderItemSyncRequestLock2 = [(ASAgent *)selfCopy folderItemSyncRequestLock];
  [folderItemSyncRequestLock2 unlock];

  folder3 = [requestCopy folder];
  dataclass = [folder3 dataclass];
  v29 = 0;
  if (dataclass > 0x20)
  {
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v30 = 0;
    v31 = 0;
    if (((1 << dataclass) & 0x100010014) != 0)
    {
      dataclass2 = [folder3 dataclass];
      if (dataclass2)
      {
        if (dataclass2 == &dword_10)
        {
          folderID = [folder3 folderID];
          if ([requestCopy isResyncAfterServerError])
          {
            v204 = @"0";
          }

          else
          {
            v204 = [(ASAgent *)selfCopy _syncKeyForFolderWithId:folderID dataclass:16];
          }

          sharedReminderKitHelper = [(ASAgent *)selfCopy sharedReminderKitHelper];
          account = [(ASAgent *)selfCopy account];
          v42 = [sharedReminderKitHelper localMovedReminderActionsForFolderWithId:folderID forAccount:account];

          v43 = v42;
          if ([(__CFString *)v42 count])
          {
            v30 = 1;
            [(ASAgent *)selfCopy _appendSyncRequest:requestCopy atBeginning:1];
            [(ASAgent *)selfCopy _reallySendMoves:v43];
            currentlySyncingFolderIds = [(ASAgent *)selfCopy currentlySyncingFolderIds];
            [currentlySyncingFolderIds removeObject:folderID];
            v29 = 0;
            v31 = 0;
            folderID3 = v204;
          }

          else
          {
            v192 = v42;
            currentlySyncingFolderIds = objc_opt_new();
            v70 = objc_opt_new();
            sharedReminderKitHelper2 = [(ASAgent *)selfCopy sharedReminderKitHelper];
            folderID2 = [folder3 folderID];
            account2 = [(ASAgent *)selfCopy account];
            v74 = [sharedReminderKitHelper2 localChangedReminderActionsForFolderId:folderID2 forAccount:account2];

            v75 = [v74 count];
            actions3 = [requestCopy actions];
            v77 = [actions3 count];

            if (!v204 || (-[__CFString isEqualToString:](v204, "isEqualToString:", @"0") & 1) != 0 || v75 != -v77 || ([requestCopy hasRemoteChanges] & 1) != 0 || (objc_msgSend(requestCopy, "isInitialUberSync") & 1) != 0)
            {
              v195 = folderID;
              v240 = 0u;
              v241 = 0u;
              v238 = 0u;
              v239 = 0u;
              actions4 = [requestCopy actions];
              v79 = [actions4 countByEnumeratingWithState:&v238 objects:v257 count:16];
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
                      objc_enumerationMutation(actions4);
                    }

                    v85 = v83 < 1;
                    if (v83 <= 0)
                    {
                      v86 = v70;
                    }

                    else
                    {
                      v86 = currentlySyncingFolderIds;
                    }

                    v83 -= v83 > 0;
                    v81 |= v85;
                    [v86 addObject:*(*(&v238 + 1) + 8 * j)];
                  }

                  v80 = [actions4 countByEnumeratingWithState:&v238 objects:v257 count:16];
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
                folderID = v195;
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
                      v95 = currentlySyncingFolderIds;
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
                folderID = v195;
              }

              if ((v81 & 1) != 0 && [v70 count])
              {
                v96 = DALoggingwithCategory();
                if (os_log_type_enabled(v96, type))
                {
                  *buf = 0;
                  _os_log_impl(&dword_0, v96, type, "Couldn't fit all db actions in one request, will batch", buf, 2u);
                }

                v97 = [[ESFolderSyncRequest alloc] initWithFolder:folder3 hasRemoteChanges:0 isInitialUberSync:{objc_msgSend(requestCopy, "isInitialUberSync")}];
                [v97 setActions:v70];
                [v97 setContainsPostponedActions:1];
                [(ASAgent *)selfCopy _appendSyncRequest:v97];
              }

              DAGreenTeaLog();
              account3 = [(ASAgent *)selfCopy account];
              LOBYTE(v186) = v81 & 1;
              [account3 synchronizeToDosFolder:folderID previousTag:v204 actions:currentlySyncingFolderIds highestIdContext:0 isInitialUberSync:objc_msgSend(requestCopy isResyncAfterConnectionFailed:"isInitialUberSync") moreLocalChangesAvailable:objc_msgSend(requestCopy consumer:{"isResyncAfterConnectionFailed"), v186, selfCopy}];

              folderID3 = v204;
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

              currentlySyncingFolderIds2 = [(ASAgent *)selfCopy currentlySyncingFolderIds];
              [currentlySyncingFolderIds2 removeObject:folderID];

              currentlySyncingFolderIds = +[DALocalDBGateKeeper sharedGateKeeper];
              [currentlySyncingFolderIds relinquishLocksForWaiter:selfCopy dataclasses:16 moreComing:0];
              v29 = 0;
              v30 = 0;
              v31 = 0;
              folderID3 = v204;
            }

            v43 = v192;
          }

          goto LABEL_218;
        }

        v193 = dataclass2;
        account4 = [(ASAgent *)selfCopy account];
        changeTrackingID = [account4 changeTrackingID];
        account5 = [(ASAgent *)selfCopy account];
        accountID = [account5 accountID];
        folderID = [ASDataHandler newDataHandlerForDataclass:v193 container:0 changeTrackingID:changeTrackingID accountID:accountID];

        [folderID openDB];
        [(ASAgent *)selfCopy _cacheFoldersForDataclasses:v193];
        folderID3 = [folder3 folderID];
        if ([requestCopy isResyncAfterServerError])
        {
          v39 = @"0";
        }

        else
        {
          v39 = [(ASAgent *)selfCopy _syncKeyForFolderWithId:folderID3 dataclass:v193];
        }

        v45 = [(ASAgent *)selfCopy _containerForFolderWithId:folderID3 dataclass:v193];
        v191 = v39;
        if (!v45)
        {
          v87 = DALoggingwithCategory();
          v88 = _CPLog_to_os_log_type[3];
          v206 = v87;
          if (os_log_type_enabled(v87, v88))
          {
            *buf = 138412546;
            v253 = folderID3;
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
        [folderID setContainer:v45];
        v194 = folderID;
        v205 = folderID3;
        if (v193 == &dword_4)
        {
          v47 = objc_opt_new();
          v196 = v46;
          v199 = [(ASAgent *)selfCopy _copyCalendarItemMoveActionsInCalendar:v46 dataHandler:folderID deleteActionsByFolderId:v47];
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
                folderID4 = [folder3 folderID];
                v56 = [folderID4 isEqualToString:v54];

                if (v56)
                {
                  actions5 = [requestCopy actions];
                  v58 = [v48 objectForKeyedSubscript:v54];
                  v59 = [v58 mutableCopy];

                  if (actions5)
                  {
                    [v59 addObjectsFromArray:actions5];
                  }

                  allObjects2 = [v59 allObjects];
                  [requestCopy setActions:allObjects2];
                }

                else
                {
                  account6 = [(ASAgent *)selfCopy account];
                  actions5 = [account6 folderWithId:v54];

                  if (actions5)
                  {
                    v62 = [[ESFolderSyncRequest alloc] initWithFolder:actions5 hasRemoteChanges:0 isInitialUberSync:0];
                    v63 = [v48 objectForKeyedSubscript:v54];
                    allObjects3 = [v63 allObjects];
                    [v62 setActions:allObjects3];

                    v48 = v206;
                    [(ASAgent *)selfCopy _appendSyncRequest:v62];
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
                    allObjects4 = [v66 allObjects];
                    v68 = [(ASAgent *)selfCopy _clearChangeHistoriesWithChangeIdContext:0 dataclass:4 inFolderWithId:v54 pushedActions:allObjects4];

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
            v26 = selfCopy;
            [(ASAgent *)selfCopy _appendSyncRequest:requestCopy atBeginning:1];
            allObjects5 = [v199 allObjects];
            [(ASAgent *)selfCopy _reallySendMoves:allObjects5];

            v29 = 0;
            v31 = 0;
            folderID = v194;
            folderID3 = v205;
LABEL_74:
            v43 = v191;
LABEL_215:

            [(ASAgent *)v26 _nilOutContainersForDataclasses:v193];
            [folderID closeDBAndSave:0];
            if (v31)
            {
              goto LABEL_219;
            }

            currentlySyncingFolderIds3 = [(ASAgent *)v26 currentlySyncingFolderIds];
            [currentlySyncingFolderIds3 removeObject:folderID3];

            if (v30)
            {
              goto LABEL_219;
            }

            v175 = +[DALocalDBGateKeeper sharedGateKeeper];
            v176 = v26;
            currentlySyncingFolderIds = v175;
            [v175 relinquishLocksForWaiter:v176 dataclasses:v193 moreComing:0];
LABEL_218:

            v26 = selfCopy;
LABEL_219:

            goto LABEL_220;
          }

          v26 = selfCopy;
          folderID = v194;
          v46 = v196;
          folderID3 = v205;
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
            v253 = folder3;
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
            actions6 = [requestCopy actions];
            v108 = [NSSet setWithArray:actions6];
            v190 = v106;
            v109 = [(ASAgent *)v26 _copyABActionsInContainer:v46 existingActions:v108 dataHandler:folderID wantPreserveActions:0 changeContext:v106];
          }

          else
          {
            if (v193 == &dword_4)
            {
              v190 = objc_opt_new();
              v110 = objc_opt_new();
              actions7 = [requestCopy actions];
              [requestCopy setActions:0];
              if (!actions7 || ![actions7 count])
              {
                skippedActions = [requestCopy skippedActions];

                [requestCopy setSkippedActions:0];
                actions7 = skippedActions;
              }

              v187 = actions7;
              v109 = [(ASAgent *)v26 _copyCalendarItemActionsInContainer:v46 existingActions:actions7 dataHandler:folderID wantPreserveActions:0 skippedDetachments:v110 changeContext:v190];
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
                        changedItem = [v117 changedItem];
                        account7 = [(ASAgent *)selfCopy account];
                        serverId = [v117 serverId];
                        instanceId = [v117 instanceId];
                        forwardedAttendees = [v117 forwardedAttendees];
                        forwardedAttendeeUUIDs = [v117 forwardedAttendeeUUIDs];
                        [account7 forwardMeeting:changedItem withServerId:serverId withInstanceId:instanceId withFolderId:v205 toEmailAddresses:forwardedAttendees withAttendeeUUIDs:forwardedAttendeeUUIDs consumer:selfCopy];

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
                v26 = selfCopy;
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
              if (v191 && (-[__CFString isEqualToString:](v191, "isEqualToString:", @"0") & 1) == 0 && !v128 && ([requestCopy hasRemoteChanges] & 1) == 0 && (objc_msgSend(requestCopy, "isInitialUberSync") & 1) == 0)
              {
                v130 = DALoggingwithCategory();
                folderID3 = v205;
                if (os_log_type_enabled(v130, v188))
                {
                  *buf = 0;
                  _os_log_impl(&dword_0, v130, v188, "returning early, as we have a folder change with no remote changes, and no local changes", buf, 2u);
                }

                v31 = 0;
                v43 = v191;
                goto LABEL_205;
              }

              [folder3 setHasRemoteChanges:0];
              v130 = objc_opt_new();
              v131 = objc_opt_new();
              skippedActions2 = [requestCopy skippedActions];

              v133 = skippedActions2 != 0;
              folderID3 = v205;
              if (skippedActions2)
              {
                skippedActions3 = [requestCopy skippedActions];
                [v131 addObjectsFromArray:skippedActions3];
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

                    v137 = [[ESFolderSyncRequest alloc] initWithFolder:folder3 hasRemoteChanges:0 isInitialUberSync:{objc_msgSend(requestCopy, "isInitialUberSync")}];
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
                  isInitialUberSync = [requestCopy isInitialUberSync];
                  BYTE2(v186) = v138;
                  LOWORD(v186) = [requestCopy isResyncAfterConnectionFailed];
                  [v160 synchronizeContactsFolder:folderID3 previousTag:v159 previousSyncToken:0 actions:v206 highestIdContext:v190 isInitialUberSync:isInitialUberSync isResyncAfterConnectionFailed:v186 previousTagIsSuspect:v26 moreLocalChangesAvailable:? consumer:?];
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
                  [v160 synchronizeEventsFolder:folderID3 previousTag:v162 actions:v206 highestIdContext:v190 isInitialUberSync:objc_msgSend(requestCopy isResyncAfterConnectionFailed:"isInitialUberSync") moreLocalChangesAvailable:objc_msgSend(requestCopy consumer:{"isResyncAfterConnectionFailed"), v186, v26}];
                  goto LABEL_203;
                }

                if (v193 != &stru_20)
                {
LABEL_204:

                  v31 = 1;
LABEL_205:

                  folderID = v194;
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

                          event = [*(*(&v210 + 1) + 8 * n) event];
                          [event setCalEvent:0];
                        }

                        v170 = [v168 countByEnumeratingWithState:&v210 objects:v246 count:16];
                      }

                      while (v170);
                    }

                    folderID3 = v205;
                    v43 = v191;
                  }

                  v30 = 0;
                  goto LABEL_215;
                }

LABEL_202:
                [(ASAgent *)v26 account];
                v160 = v163 = v43;
                v164 = +[ASLocalDBHelper sharedInstance];
                noteDB = [v164 noteDB];
                isInitialUberSync2 = [requestCopy isInitialUberSync];
                BYTE2(v186) = v138;
                BYTE1(v186) = [requestCopy isResyncAfterConnectionFailed];
                LOBYTE(v186) = isInitialUberSync2;
                v167 = v163;
                v135 = obja;
                [v160 synchronizeNotesFolder:v205 noteContext:noteDB previousTag:v167 actions:v206 changeSet:v190 notesToDeleteAfterSync:0 isInitialUberSync:v186 isResyncAfterConnectionFailed:v26 moreLocalChangesAvailable:? consumer:?];

                folderID3 = v205;
                goto LABEL_203;
              }

              if (v193 == &stru_20)
              {
                allObjects6 = [v109 allObjects];
                [v206 addObjectsFromArray:allObjects6];

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
                    allObjects7 = [v140 allObjects];
                    [v130 addObjectsFromArray:allObjects7];

                    folderID3 = v205;
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
                          isSkippedDetachment = [v183 isSkippedDetachment];
                          if (isSkippedDetachment)
                          {
                            v184 = v206;
                          }

                          else
                          {
                            v184 = v130;
                          }

                          LOBYTE(v133) = isSkippedDetachment ^ 1 | v133;
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

                  v26 = selfCopy;
                  folderID3 = v205;
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
              v109 = [(ASAgent *)v26 _copyNotesActionsInNoteStore:v46 existingActions:0 dataHandler:folderID wantPreserveActions:0 changeSet:v124];
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

        if ([folderID wipeServerIds])
        {
          [folderID saveContainer];
        }

        if (v193 == (&dword_0 + 2))
        {
          v100 = objc_opt_new();
          v101 = [(ASAgent *)v26 _copyABActionsInContainer:v46 existingActions:0 dataHandler:folderID wantPreserveActions:1 changeContext:v100];
        }

        else if (v193 == &dword_4)
        {
          v100 = objc_opt_new();
          v101 = [(ASAgent *)v26 _copyCalendarItemActionsInContainer:v46 existingActions:0 dataHandler:folderID wantPreserveActions:1 skippedDetachments:0 changeContext:v100];
        }

        else
        {
          if (v193 != &stru_20)
          {
            v100 = 0;
LABEL_110:
            [(ASAgent *)v26 _clearChangeHistoriesWithChangeIdContext:v100 dataclass:v193 inFolderWithId:folderID3 pushedActions:0];

            goto LABEL_111;
          }

          v100 = objc_opt_new();
          v101 = [(ASAgent *)v26 _copyNotesActionsInNoteStore:v46 existingActions:0 dataHandler:folderID wantPreserveActions:1 changeSet:v100];
        }

        v102 = v101;
        if (v101)
        {
          allObjects8 = [v101 allObjects];
          [v99 addObjectsFromArray:allObjects8];
        }

        folderID3 = v205;
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

- (void)_syncRequest:(id)request
{
  requestCopy = request;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138412290;
    v14 = requestCopy;
    _os_log_impl(&dword_0, v5, v6, "putting request %@ in for the gate", buf, 0xCu);
  }

  folder = [requestCopy folder];
  dataclass = [folder dataclass];
  if (dataclass <= 0x20 && ((1 << dataclass) & 0x100010014) != 0)
  {
    v9 = +[DALocalDBGateKeeper sharedGateKeeper];
    dataclass2 = [folder dataclass];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_15FFC;
    v11[3] = &unk_6CED0;
    v11[4] = self;
    v12 = requestCopy;
    [v9 registerWaiter:self forDataclassLocks:dataclass2 completionHandler:v11];
  }
}

- (void)folderContentsUpdate:(id)update
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  userInfo = [update userInfo];
  v5 = [userInfo objectForKeyedSubscript:DAChangedFolderIDs];

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
        account = [(ASAgent *)self account];
        v13 = [account folderWithId:v10];
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
  folderItemSyncRequestLock = [(ASAgent *)self folderItemSyncRequestLock];
  [folderItemSyncRequestLock lock];

  currentlySyncingFolderIds = [(ASAgent *)self currentlySyncingFolderIds];

  if (!currentlySyncingFolderIds)
  {
    v5 = [[NSMutableSet alloc] initWithCapacity:1];
    [(ASAgent *)self setCurrentlySyncingFolderIds:v5];
  }

  v6 = [[NSMutableArray alloc] initWithCapacity:1];
  if ([(ASAgent *)self numLocalFolderUpdatesInFlight])
  {
    goto LABEL_24;
  }

  outstandingFolderRequests = [(ASAgent *)self outstandingFolderRequests];
  v8 = [outstandingFolderRequests copy];

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

      folder = [v13 folder];
      folderID = [folder folderID];

      if (folderID)
      {
        currentlySyncingFolderIds2 = [(ASAgent *)self currentlySyncingFolderIds];
        v21 = [currentlySyncingFolderIds2 containsObject:folderID];

        if (v21)
        {
          goto LABEL_20;
        }

        if ([v13 containsPostponedActions])
        {
          outstandingFolderRequests2 = DALoggingwithCategory();
          if (os_log_type_enabled(outstandingFolderRequests2, type))
          {
            *buf = v33;
            v46 = v13;
            _os_log_impl(&dword_0, outstandingFolderRequests2, type, "A request containing postponed actions will not be synced. Request: %@", buf, 0xCu);
          }

          goto LABEL_19;
        }

        currentlySyncingFolderIds3 = [(ASAgent *)self currentlySyncingFolderIds];
        [currentlySyncingFolderIds3 addObject:folderID];

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

      outstandingFolderRequests2 = [(ASAgent *)self outstandingFolderRequests];
      [outstandingFolderRequests2 removeObject:v13];
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
  folderItemSyncRequestLock2 = [(ASAgent *)self folderItemSyncRequestLock];
  [folderItemSyncRequestLock2 unlock];

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

- (void)_appendSyncRequest:(id)request atBeginning:(BOOL)beginning
{
  beginningCopy = beginning;
  requestCopy = request;
  v7 = DALoggingwithCategory();
  v8 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v7, v8))
  {
    *buf = 138412290;
    v38 = requestCopy;
    _os_log_impl(&dword_0, v7, v8, "Appending sync request %@", buf, 0xCu);
  }

  folderItemSyncRequestLock = [(ASAgent *)self folderItemSyncRequestLock];
  [folderItemSyncRequestLock lock];

  outstandingFolderRequests = [(ASAgent *)self outstandingFolderRequests];

  if (!outstandingFolderRequests)
  {
    v11 = [[NSMutableArray alloc] initWithCapacity:1];
    [(ASAgent *)self setOutstandingFolderRequests:v11];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  outstandingFolderRequests2 = [(ASAgent *)self outstandingFolderRequests];
  v13 = [outstandingFolderRequests2 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v13)
  {
    v14 = v13;
    v31 = beginningCopy;
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
          objc_enumerationMutation(outstandingFolderRequests2);
        }

        v15 = *(*(&v33 + 1) + 8 * v17);

        folder = [v15 folder];
        folder2 = [requestCopy folder];
        v21 = [folder isEqual:folder2];

        if (v21)
        {
          if ([requestCopy hasRemoteChanges])
          {
            [v15 setHasRemoteChanges:1];
          }

          if ([requestCopy isResyncAfterConnectionFailed])
          {
            [v15 setIsResyncAfterConnectionFailed:1];
          }

          if ([requestCopy isResyncAfterServerError])
          {
            [v15 setIsResyncAfterServerError:1];
          }

          if (([requestCopy containsPostponedActions] & 1) == 0)
          {
            [v15 setContainsPostponedActions:0];
          }

          v23 = objc_opt_new();
          actions = [v15 actions];
          [v23 addObjectsFromArray:actions];

          actions2 = [requestCopy actions];
          [v23 addObjectsFromArray:actions2];

          v26 = DALoggingwithCategory();
          if (os_log_type_enabled(v26, v32))
          {
            actions3 = [requestCopy actions];
            actions4 = [v15 actions];
            *buf = 138413058;
            v38 = v15;
            v39 = 2112;
            v40 = actions3;
            v41 = 2112;
            v42 = actions4;
            v43 = 2112;
            v44 = v23;
            _os_log_impl(&dword_0, v26, v32, "sync request %@ had old actions %@, new actions %@, combined actions %@", buf, 0x2Au);
          }

          allObjects = [v23 allObjects];
          [v15 setActions:allObjects];

          goto LABEL_28;
        }

        v17 = v17 + 1;
        v18 = v15;
      }

      while (v14 != v17);
      v14 = [outstandingFolderRequests2 countByEnumeratingWithState:&v33 objects:v45 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }

    beginningCopy = v31;
  }

  outstandingFolderRequests3 = [(ASAgent *)self outstandingFolderRequests];
  v15 = outstandingFolderRequests3;
  if (beginningCopy)
  {
    [outstandingFolderRequests3 insertObject:requestCopy atIndex:0];
  }

  else
  {
    [outstandingFolderRequests3 addObject:requestCopy];
  }

LABEL_28:

  folderItemSyncRequestLock2 = [(ASAgent *)self folderItemSyncRequestLock];
  [folderItemSyncRequestLock2 unlock];

  [(ASAgent *)self _fireWaitingFolderItemSyncRequests];
}

- (BOOL)_getHierarchyChangeForDataclass:(int64_t)dataclass changedItemId:(int *)id changeType:(unint64_t *)type externalId:(id *)externalId changeTableIndices:(__CFArray *)indices
{
  if (dataclass == 4)
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
    account = [(ASAgent *)self account];
    v10 = [account _copyExchangeCalendarStore:0];

    v11 = &PLLogRegisteredEvent_ptr;
    selfCopy = self;
    if (v10)
    {
      v12 = +[ASLocalDBHelper sharedInstance];
      account2 = [(ASAgent *)self account];
      accountID = [account2 accountID];
      [v12 calDatabaseForAccountID:accountID];
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
          v101 = accountID;
          if (*v112 != allocator)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v111 + 1) + 8 * v14);
          v16 = [v100 objectForKeyedSubscript:v15];
          account3 = [(ASAgent *)self account];
          v98 = v16;
          v18 = [account3 folderWithId:v16];

          sharedInstance = [v11[390] sharedInstance];
          account4 = [(ASAgent *)self account];
          accountID2 = [account4 accountID];
          [sharedInstance calDatabaseForAccountID:accountID2];
          [v15 intValue];
          v22 = CalDatabaseCopyCalendarWithUID();

          if (v22)
          {
            v23 = CalCalendarCopyTitle();
            v24 = CalCalendarCopyExternalID();
            v25 = [v23 length];
            if (!v25)
            {
              folderName = [v18 folderName];
              if (![folderName length])
              {
                v26 = 0;
                goto LABEL_18;
              }
            }

            accountID = [v18 folderName];
            if ([v23 isEqualToString:accountID])
            {
              v101 = accountID;
              v26 = 1;
LABEL_18:
              v27 = [v24 length];
              v93 = v24;
              if (v27 || ([v18 folderID], v88 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v88, "length")))
              {
                v28 = v24;
                v29 = v26;
                folderID = [v18 folderID];
                v31 = [v28 isEqualToString:folderID];

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
              self = selfCopy;
              accountID = v101;
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
          account5 = [(ASAgent *)selfCopy account];
          v42 = [account5 folderWithId:v40];

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
    v47 = selfCopy;
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
            account6 = [(ASAgent *)v47 account];
            accountID3 = [account6 accountID];
            [v57 calDatabaseForAccountID:accountID3];
            account7 = [(ASAgent *)v47 account];
            changeTrackingID = [account7 changeTrackingID];
            v96 = 1;
            CalDatabaseClearIndividualChangeRowIDsForClient();

            v47 = selfCopy;
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
        account8 = [(ASAgent *)v47 account];
        accountID4 = [account8 accountID];
        [v50 calSaveDatabaseForAccountID:accountID4];

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
        anyObject = [v66 anyObject];
        v67 = anyObject;
        if (anyObject)
        {
          intValue = [anyObject intValue];
          *id = intValue;
          *type = v65;
          v70 = [v100 objectForKeyedSubscript:v67];
          *externalId = v70;
          v71 = CFDictionaryGetValue(v46, intValue);
          if (v71)
          {
            v72 = v71;
            if (CFArrayGetCount(v71))
            {
              v128.length = CFArrayGetCount(v72);
              v128.location = 0;
              CFArrayAppendArray(indices, v72, v128);
            }
          }

          if (shouldDALogAtLevel())
          {
            v73 = CFCopyDescription(indices);
            v74 = DALoggingwithCategory();
            v75 = _CPLog_to_os_log_type[6];
            if (os_log_type_enabled(v74, v75))
            {
              v76 = *type;
              v77 = *id;
              v78 = *externalId;
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

- (BOOL)_handleReminderChangedFolder:(id)folder changeType:(unint64_t)type
{
  folderCopy = folder;
  account = [(ASAgent *)self account];
  visibleFolders = [account visibleFolders];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_18320;
  v13[3] = &unk_6CF20;
  v13[4] = self;
  v14 = folderCopy;
  v15 = visibleFolders;
  v8 = visibleFolders;
  v9 = folderCopy;
  v10 = objc_retainBlock(v13);
  [(ASAgent *)self setNumLocalFolderUpdatesInFlight:[(ASAgent *)self numLocalFolderUpdatesInFlight]+ 1];
  account2 = [(ASAgent *)self account];
  [account2 syncLocallyChangedFolder:v9 consumer:self completionBlock:v10];

  return 1;
}

- (void)_appendFolderHierarchyChangesForFoldersOfDataclasses:(int64_t)dataclasses
{
  dataclassesCopy = dataclasses;
  if (![(ASAgent *)self numLocalFolderUpdatesInFlight])
  {
    account = [(ASAgent *)self account];
    v6 = [account enabledDataclassesBitmask] & dataclassesCopy;

    if ((v6 & 4) != 0)
    {
      v10 = +[ASLocalDBHelper sharedInstance];
      account2 = [(ASAgent *)self account];
      accountID = [account2 accountID];
      account3 = [(ASAgent *)self account];
      changeTrackingID = [account3 changeTrackingID];
      [v10 calOpenDatabaseForAccountID:accountID clientID:changeTrackingID];

      v52 = 0;
      v51 = 0;
      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, 0);
      v50 = 0;
      LODWORD(account3) = [(ASAgent *)self _getHierarchyChangeForDataclass:4 changedItemId:&v52 changeType:&v51 externalId:&v50 changeTableIndices:Mutable];
      v18 = v50;
      if (account3)
      {
        [(ASAgent *)self _handleLocallyChangedFolderWithChangedItemId:v52 changeType:v51 externalId:v18 changeTableIndices:Mutable dataclass:4];
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      account4 = [(ASAgent *)self account];
      accountID2 = [account4 accountID];
      [v10 calCloseDatabaseForAccountID:accountID2 save:0];
    }

    else
    {
      if ((v6 & 0x10) == 0)
      {
        return;
      }

      sharedReminderKitHelper = [(ASAgent *)self sharedReminderKitHelper];
      account5 = [(ASAgent *)self account];
      v9 = [sharedReminderKitHelper localAddedFoldersForAccount:account5];

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

      sharedReminderKitHelper2 = [(ASAgent *)self sharedReminderKitHelper];
      account6 = [(ASAgent *)self account];
      v17 = [sharedReminderKitHelper2 localModifiedFoldersForAccount:account6];

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

      sharedReminderKitHelper3 = [(ASAgent *)self sharedReminderKitHelper];
      account7 = [(ASAgent *)self account];
      v25 = [sharedReminderKitHelper3 localDeletedFoldersForAccount:account7];

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

- (void)_nilOutContainersForDataclasses:(int64_t)dataclasses
{
  dataclassesCopy = dataclasses;
  if ((dataclasses & 2) == 0)
  {
    if ((dataclasses & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    [(ASAgent *)self setEventCalendarsByFolderId:0];
    if ((dataclassesCopy & 0x20) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  [(ASAgent *)self setContactStoresByFolderId:0];
  if ((dataclassesCopy & 4) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((dataclassesCopy & 0x20) == 0)
  {
    return;
  }

LABEL_7:
  noteStoreObjectIdsByFolderId = [(ASAgent *)self noteStoreObjectIdsByFolderId];
  [noteStoreObjectIdsByFolderId removeAllObjects];
}

- (void)_refirePendingCalendarInvitations
{
  account = [(ASAgent *)self account];
  v4 = [account enabledForDADataclass:4];

  if (v4)
  {
    account2 = [(ASAgent *)self account];
    changeTrackingID = [account2 changeTrackingID];
    account3 = [(ASAgent *)self account];
    accountID = [account3 accountID];
    v9 = [ASDataHandler newDataHandlerForDataclass:4 container:0 changeTrackingID:changeTrackingID accountID:accountID];

    v50 = v9;
    [v9 openDB];
    [(ASAgent *)self _cacheFoldersForDataclasses:4];
    account4 = [(ASAgent *)self account];
    eventsFolders = [account4 eventsFolders];

    if (eventsFolders)
    {
      v51 = objc_opt_new();
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      obj = eventsFolders;
      v56 = [obj countByEnumeratingWithState:&v62 objects:v67 count:16];
      if (v56)
      {
        v54 = 0;
        v55 = *v63;
        v12 = &PLLogRegisteredEvent_ptr;
        v53 = eventsFolders;
        do
        {
          for (i = 0; i != v56; i = i + 1)
          {
            if (*v63 != v55)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v62 + 1) + 8 * i);
            folderID = [v14 folderID];

            if (!folderID)
            {
              sub_480CC();
            }

            folderID2 = [v14 folderID];
            v17 = [(ASAgent *)self _containerForFolderWithId:folderID2 dataclass:4];

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
                    account5 = [(ASAgent *)self account];
                    v25 = [v23 initWithCalEvent:v21 serverID:v22 account:account5];

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
                      account6 = [(ASAgent *)self account];
                      v38 = [v36 initWithCalEvent:v34 serverID:v35 account:account6];

                      CFRelease(v34);
                    }

                    else
                    {
                      v35 = CalCalendarItemCopyExternalID();
                      v39 = objc_alloc(v12[380]);
                      account7 = [(ASAgent *)self account];
                      v38 = [v39 initWithCalEvent:v32 serverID:v35 account:account7];
                    }

                    serverID = [v38 serverID];
                    if (serverID && ([v29 containsObject:serverID] & 1) == 0)
                    {
                      [v30 addObject:v38];
                      [v29 addObject:serverID];
                    }

                    ++v31;
                    v12 = &PLLogRegisteredEvent_ptr;
                  }

                  while (v31 < [v28 count]);
                }

                v42 = v54;
                if ([v30 count])
                {
                  account8 = [(ASAgent *)self account];
                  v42 = v54 | [account8 sendEmailsForCalEvents:v30 consumer:self];
                }

                v54 = v42;
              }

              eventsFolders = v53;
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
  account = [(ASAgent *)self account];
  accountID = [account accountID];

  return accountID;
}

- (void)fetchAttachmentTask:(id)task completedWithStatus:(int64_t)status dataWasBase64:(BOOL)base64 error:(id)error
{
  taskCopy = task;
  errorCopy = error;
  if (errorCopy)
  {
    v11 = DALoggingwithCategory();
    v12 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v11, v12))
    {
      userInfo = [errorCopy userInfo];
      attachmentUUID = [taskCopy attachmentUUID];
      *buf = 138412546;
      v23 = userInfo;
      v24 = 2112;
      v25 = attachmentUUID;
      _os_log_impl(&dword_0, v11, v12, "An error (%@) occurred while downloading the attachment. %@ is not saved.", buf, 0x16u);
    }

    account = [(ASAgent *)self account];
    v16 = [account consumerForTask:taskCopy];

    [v16 downloadFinishedError:errorCopy];
  }

  else
  {
    v17 = +[DALocalDBGateKeeper sharedGateKeeper];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_19024;
    v18[3] = &unk_6CF48;
    base64Copy = base64;
    v19 = taskCopy;
    selfCopy = self;
    [v17 registerWaiter:self forDataclassLocks:20 completionHandler:v18];

    v16 = v19;
  }
}

- (void)_saveAttachmentDataToDatabaseForTask:(id)task
{
  taskCopy = task;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    attachmentUUID = [taskCopy attachmentUUID];
    *buf = 138412290;
    v33 = attachmentUUID;
    _os_log_impl(&dword_0, v5, v6, "The gatekeeper lock has been granted. Beginning save of attachment %@", buf, 0xCu);
  }

  v8 = +[ASLocalDBHelper sharedInstance];
  account = [(ASAgent *)self account];
  accountID = [account accountID];
  account2 = [(ASAgent *)self account];
  changeTrackingID = [account2 changeTrackingID];
  [v8 calOpenDatabaseForAccountID:accountID clientID:changeTrackingID];

  v13 = +[ASLocalDBHelper sharedInstance];
  account3 = [(ASAgent *)self account];
  accountID2 = [account3 accountID];
  [v13 calDatabaseForAccountID:accountID2];

  [taskCopy attachmentUUID];
  v16 = CalDatabaseCopyAttachmentWithUUID();
  if (v16)
  {
    v17 = v16;
    [taskCopy localFileName];
    v18 = CalAttachmentSetFileData();
    if ((v18 & 1) == 0)
    {
      v19 = DALoggingwithCategory();
      v20 = _CPLog_to_os_log_type[3];
      if (os_log_type_enabled(v19, v20))
      {
        attachmentUUID2 = [taskCopy attachmentUUID];
        *buf = 138412290;
        v33 = attachmentUUID2;
        _os_log_impl(&dword_0, v19, v20, "Couldn't save attachment file in the database for attachment %@", buf, 0xCu);
      }
    }

    [taskCopy attachmentContentType];
    CalAttachmentSetFormat();
    CalAttachmentSetURL();
    +[NSDate timeIntervalSinceReferenceDate];
    v23 = [NSString stringWithFormat:@"%f", v22];
    CalAttachmentSetExternalModTag();
    CFRelease(v17);
    v24 = +[ASLocalDBHelper sharedInstance];
    account4 = [(ASAgent *)self account];
    accountID3 = [account4 accountID];
    [v24 calCloseDatabaseForAccountID:accountID3 save:v18];

    account5 = DALoggingwithCategory();
    v28 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(account5, v28))
    {
      *buf = 0;
      _os_log_impl(&dword_0, account5, v28, "Attachment has been saved. Releasing gatekeeper lock", buf, 2u);
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
    account5 = [(ASAgent *)self account];
    accountID4 = [account5 accountID];
    [v23 calCloseDatabaseForAccountID:accountID4 save:0];
  }
}

- (void)prepareFetchAttachmentTask:(id)task
{
  taskCopy = task;
  v5 = +[DALocalDBGateKeeper sharedGateKeeper];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1989C;
  v7[3] = &unk_6CED0;
  v7[4] = self;
  v8 = taskCopy;
  v6 = taskCopy;
  [v5 registerWaiter:self forDataclassLocks:20 completionHandler:v7];
}

- (void)_reallyPrepareFetchAttachmentTask:(id)task
{
  taskCopy = task;
  attachmentUUID = [taskCopy attachmentUUID];

  if (!attachmentUUID)
  {
    sub_48138();
  }

  v5 = +[ASLocalDBHelper sharedInstance];
  account = [(ASAgent *)self account];
  accountID = [account accountID];
  account2 = [(ASAgent *)self account];
  changeTrackingID = [account2 changeTrackingID];
  [v5 calOpenDatabaseForAccountID:accountID clientID:changeTrackingID];

  v10 = +[ASLocalDBHelper sharedInstance];
  account3 = [(ASAgent *)self account];
  accountID2 = [account3 accountID];
  v13 = [v10 calDatabaseForAccountID:accountID2];

  if (v13)
  {
    [taskCopy attachmentUUID];
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
        [taskCopy setAttachmentName:v19];
        [taskCopy setMessageID:v18];
        CFRelease(v17);
      }

      CFRelease(v15);
    }

    v20 = +[ASLocalDBHelper sharedInstance];
    account4 = [(ASAgent *)self account];
    accountID3 = [account4 accountID];
    [v20 calCloseDatabaseForAccountID:accountID3 save:0];
  }
}

- (void)_addChangeForType:(unint64_t)type changedItemId:(id)id changeId:(id)changeId addedIdsToChangeId:(id)toChangeId modifiedIdsToChangeId:(id)idsToChangeId deletedIdsToChangeId:(id)deletedIdsToChangeId pseudoDeletedIdsToChangeId:(id)pseudoDeletedIdsToChangeId changeIdsToClear:(id)self0
{
  idCopy = id;
  changeIdCopy = changeId;
  toChangeIdCopy = toChangeId;
  idsToChangeIdCopy = idsToChangeId;
  deletedIdsToChangeIdCopy = deletedIdsToChangeId;
  pseudoDeletedIdsToChangeIdCopy = pseudoDeletedIdsToChangeId;
  clearCopy = clear;
  v22 = DALoggingwithCategory();
  v23 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v22, v23))
  {
    v38 = 134219778;
    typeCopy = type;
    v40 = 2112;
    v41 = idCopy;
    v42 = 2112;
    v43 = changeIdCopy;
    v44 = 2112;
    v45 = toChangeIdCopy;
    v46 = 2112;
    v47 = idsToChangeIdCopy;
    v48 = 2112;
    v49 = deletedIdsToChangeIdCopy;
    v50 = 2112;
    v51 = pseudoDeletedIdsToChangeIdCopy;
    v52 = 2112;
    v53 = clearCopy;
    _os_log_impl(&dword_0, v22, v23, "_addChange for type %lu, changedItemId %@ changeId %@ addedIds %@ modifiedIds %@ deletedIds %@ pseudoDeletedIds %@, changeIdsToClear %@", &v38, 0x52u);
  }

  if (!changeIdCopy)
  {
    changeIdCopy = &off_6E600;
  }

  if (type > 1)
  {
    if (type == 2)
    {
      v34 = [toChangeIdCopy objectForKeyedSubscript:idCopy];

      if (!v34)
      {
        v36 = [idsToChangeIdCopy objectForKeyedSubscript:idCopy];

        if (v36)
        {
          v37 = [idsToChangeIdCopy objectForKeyedSubscript:idCopy];
          [clearCopy addObject:v37];

          [idsToChangeIdCopy removeObjectForKey:idCopy];
        }

        v32 = deletedIdsToChangeIdCopy;
        goto LABEL_31;
      }
    }

    else
    {
      if (type != 8)
      {
        goto LABEL_35;
      }

      v29 = [toChangeIdCopy objectForKeyedSubscript:idCopy];

      if (!v29)
      {
        v30 = [idsToChangeIdCopy objectForKeyedSubscript:idCopy];

        if (v30)
        {
          v31 = [idsToChangeIdCopy objectForKeyedSubscript:idCopy];
          [clearCopy addObject:v31];

          [idsToChangeIdCopy removeObjectForKey:idCopy];
        }

        v32 = pseudoDeletedIdsToChangeIdCopy;
LABEL_31:
        [v32 setObject:changeIdCopy forKeyedSubscript:idCopy];
        goto LABEL_35;
      }
    }

    v35 = [toChangeIdCopy objectForKeyedSubscript:idCopy];
    [clearCopy addObject:v35];

    [toChangeIdCopy removeObjectForKey:idCopy];
LABEL_25:
    [clearCopy addObject:changeIdCopy];
    goto LABEL_35;
  }

  if (!type)
  {
    v26 = [idsToChangeIdCopy objectForKeyedSubscript:idCopy];
    if (v26)
    {
      [clearCopy addObject:v26];
      [idsToChangeIdCopy removeObjectForKey:idCopy];
    }

    v33 = [toChangeIdCopy objectForKeyedSubscript:idCopy];
    if (v33)
    {
      [clearCopy addObject:changeIdCopy];
    }

    else
    {
      [toChangeIdCopy setObject:changeIdCopy forKeyedSubscript:idCopy];
    }

    goto LABEL_34;
  }

  if (type == 1)
  {
    v24 = [toChangeIdCopy objectForKeyedSubscript:idCopy];

    if (!v24)
    {
      v25 = [idsToChangeIdCopy objectForKeyedSubscript:idCopy];
      v26 = v25;
      if (v25)
      {
        intValue = [v25 intValue];
        intValue2 = [changeIdCopy intValue];
        if (intValue == -1 || intValue2 == -1)
        {
          if (intValue2 == -1)
          {
LABEL_34:

            goto LABEL_35;
          }
        }

        else
        {
          [clearCopy addObject:v26];
        }
      }

      [idsToChangeIdCopy setObject:changeIdCopy forKeyedSubscript:idCopy];
      goto LABEL_34;
    }

    goto LABEL_25;
  }

LABEL_35:
}

- (id)_copyABActionsInContainer:(void *)container existingActions:(id)actions dataHandler:(id)handler wantPreserveActions:(BOOL)preserveActions changeContext:(id)context
{
  preserveActionsCopy = preserveActions;
  actionsCopy = actions;
  handlerCopy = handler;
  contextCopy = context;
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
  v157 = handlerCopy;
  if (!EntityChangesSinceSequenceNumberForClient || (v16 = EntityChangesSinceSequenceNumberForClient, CFDictionaryGetCount(EntityChangesSinceSequenceNumberForClient) < 1))
  {
    v24 = objc_opt_new();
    v21 = contextCopy;
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
  v21 = contextCopy;
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
  obj = actionsCopy;
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
      itemChangeType = [v31 itemChangeType];
      v33 = itemChangeType;
      if (itemChangeType <= 1)
      {
        changedItem = [v31 changedItem];
        [changedItem loadClientIDs];
        [changedItem setLocalItem:0];
        clientID = [changedItem clientID];
        intValue = [clientID intValue];

        if (intValue)
        {
          account = [(ASAgent *)self account];
          v38 = [changedItem loadLocalItemWithAccount:account];

          if (v38)
          {
            serverID = [changedItem serverID];
            v40 = serverID;
            if (v33 != 1 || serverID)
            {
              v42 = [NSNumber numberWithInt:intValue];
              itemChangeType2 = [v31 itemChangeType];
              v50 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v31 changeId]);
              [(ASAgent *)self _addChangeForType:itemChangeType2 changedItemId:v42 changeId:v50 addedIdsToChangeId:v151 modifiedIdsToChangeId:v150 deletedIdsToChangeId:v149 pseudoDeletedIdsToChangeId:0 changeIdsToClear:v154];

              if (v40)
              {
                [v156 setObject:v40 forKeyedSubscript:v42];
              }

              handlerCopy = v157;
            }

            else
            {
              v41 = DALoggingwithCategory();
              handlerCopy = v157;
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
          handlerCopy = v157;
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

      if ((itemChangeType & 0xFFFFFFFFFFFFFFFBLL) == 2)
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

    handlerCopy = v157;
  }

  v21 = contextCopy;
  if (preserveActionsCopy)
  {
    [contextCopy setAbPersonChangeId:v139];
    v182 = 0u;
    v183 = 0u;
    v180 = 0u;
    v181 = 0u;
    allKeys = [v151 allKeys];
    v72 = [allKeys countByEnumeratingWithState:&v180 objects:v193 count:16];
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
            objc_enumerationMutation(allKeys);
          }

          v55 = *(*(&v180 + 1) + 8 * v75);

          v77 = [handlerCopy copyLocalObjectFromId:{objc_msgSend(v55, "intValue")}];
          if (v77)
          {
            v78 = v77;
            account2 = [(ASAgent *)self account];
            v80 = [handlerCopy getDAObjectWithLocalItem:v78 serverId:0 account:account2];

            [v80 setServerID:0];
            v81 = [[ASAction alloc] initWithItemChangeType:4 changedItem:v80 serverId:0];
            [v159 addObject:v81];
            CFRelease(v78);

            handlerCopy = v157;
          }

          v75 = v75 + 1;
          v76 = v55;
        }

        while (v73 != v75);
        v73 = [allKeys countByEnumeratingWithState:&v180 objects:v193 count:16];
      }

      while (v73);
    }

    v178 = 0u;
    v179 = 0u;
    v176 = 0u;
    v177 = 0u;
    allKeys2 = [v150 allKeys];
    v83 = [allKeys2 countByEnumeratingWithState:&v176 objects:v192 count:16];
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
            objc_enumerationMutation(allKeys2);
          }

          v85 = *(*(&v176 + 1) + 8 * v87);

          v89 = [handlerCopy copyLocalObjectFromId:{objc_msgSend(v85, "intValue")}];
          if (v89)
          {
            v90 = v89;
            account3 = [(ASAgent *)self account];
            v92 = [handlerCopy getDAObjectWithLocalItem:v90 serverId:0 account:account3];

            [v92 setServerID:0];
            v93 = [[ASAction alloc] initWithItemChangeType:4 changedItem:v92 serverId:0];
            [v159 addObject:v93];
            CFRelease(v90);

            handlerCopy = v157;
          }

          v87 = v87 + 1;
          v88 = v85;
        }

        while (v84 != v87);
        v84 = [allKeys2 countByEnumeratingWithState:&v176 objects:v192 count:16];
      }

      while (v84);
      goto LABEL_126;
    }

LABEL_128:
    v24 = v154;
  }

  else
  {
    [contextCopy setAbPersonChangeId:0xFFFFFFFFLL];
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    allKeys3 = [v151 allKeys];
    v95 = [allKeys3 countByEnumeratingWithState:&v172 objects:v191 count:16];
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
            objc_enumerationMutation(allKeys3);
          }

          v55 = *(*(&v172 + 1) + 8 * v98);

          v100 = [handlerCopy copyLocalObjectFromId:{objc_msgSend(v55, "intValue")}];
          if (v100)
          {
            v101 = v100;
            account4 = [(ASAgent *)self account];
            v103 = [handlerCopy getDAObjectWithLocalItem:v101 serverId:0 account:account4];

            v104 = [[ASAction alloc] initWithItemChangeType:0 changedItem:v103 serverId:0];
            v105 = [v151 objectForKeyedSubscript:v55];
            [v104 setChangeId:{objc_msgSend(v105, "intValue")}];

            handlerCopy = v157;
            [v159 addObject:v104];
            CFRelease(v101);
          }

          v98 = v98 + 1;
          v99 = v55;
        }

        while (v96 != v98);
        v96 = [allKeys3 countByEnumeratingWithState:&v172 objects:v191 count:16];
      }

      while (v96);
    }

    v170 = 0u;
    v171 = 0u;
    v168 = 0u;
    v169 = 0u;
    allKeys4 = [v150 allKeys];
    v107 = [allKeys4 countByEnumeratingWithState:&v168 objects:v190 count:16];
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
            objc_enumerationMutation(allKeys4);
          }

          v109 = *(*(&v168 + 1) + 8 * v111);

          v113 = [handlerCopy copyLocalObjectFromId:{objc_msgSend(v109, "intValue")}];
          if (v113)
          {
            v114 = v113;
            v115 = [v156 objectForKeyedSubscript:v109];
            account5 = [(ASAgent *)self account];
            v117 = [handlerCopy getDAObjectWithLocalItem:v114 serverId:v115 account:account5];

            v118 = [[ASAction alloc] initWithItemChangeType:1 changedItem:v117 serverId:0];
            v119 = [v150 objectForKeyedSubscript:v109];
            [v118 setChangeId:{objc_msgSend(v119, "intValue")}];

            handlerCopy = v157;
            [v159 addObject:v118];
            CFRelease(v114);
          }

          v111 = v111 + 1;
          v112 = v109;
        }

        while (v108 != v111);
        v108 = [allKeys4 countByEnumeratingWithState:&v168 objects:v190 count:16];
      }

      while (v108);

      v21 = contextCopy;
    }

    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    allKeys2 = [v149 allKeys];
    v120 = [allKeys2 countByEnumeratingWithState:&v164 objects:v189 count:16];
    if (!v120)
    {
      handlerCopy = v157;
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
          objc_enumerationMutation(allKeys2);
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
      v121 = [allKeys2 countByEnumeratingWithState:&v164 objects:v189 count:16];
    }

    while (v121);
    handlerCopy = v157;
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

          intValue2 = [*(*(&v160 + 1) + 8 * j) intValue];
          if (intValue2 != -1)
          {
            v136 = intValue2;
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

    handlerCopy = v157;
    if (CFArrayGetCount(Mutable))
    {
      [v143 abDB];
      ABChangeHistoryClearEntityChangeTableRowIDsForClient();
      [v157 saveContainer];
    }

    CFRelease(Mutable);
    v21 = contextCopy;
    v24 = v155;
  }

  return v159;
}

- (void)_handleChangeOnEventWithExchangeId:(id)id localId:(int)localId changeType:(unint64_t)type eventChangeId:(id)changeId hasSignificantAttributeChanges:(BOOL)changes container:(void *)container dataHandler:(id)handler addedIdsToEventChangeId:(id)self0 modifiedIdsToEventChangeId:(id)self1 deletedIdsToEventChangeId:(id)self2 pseudoDeletedIdsToEventChangeId:(id)self3 eventChangeIdsToClear:(id)self4 allAddedDetachmentIds:(id)self5 localToExchangeIdMap:(id)self6 outShouldSaveDB:(BOOL *)self7
{
  changesCopy = changes;
  idCopy = id;
  changeIdCopy = changeId;
  eventChangeIdCopy = eventChangeId;
  toEventChangeIdCopy = toEventChangeId;
  idsToEventChangeIdCopy = idsToEventChangeId;
  deletedIdsToEventChangeIdCopy = deletedIdsToEventChangeId;
  clearCopy = clear;
  idsCopy = ids;
  mapCopy = map;
  v88 = idCopy;
  v89 = deletedIdsToEventChangeIdCopy;
  v90 = idsToEventChangeIdCopy;
  if ([handler dataclass] != &dword_4)
  {
    v27 = eventChangeIdCopy;
    v28 = toEventChangeIdCopy;
    selfCopy10 = self;
    v29 = clearCopy;
    v30 = idsCopy;
    v31 = changeIdCopy;
    goto LABEL_50;
  }

  v80 = changeIdCopy;
  if (idCopy)
  {
    selfCopy10 = self;
    v25 = [(ASAgent *)self _parentIdFromEventId:idCopy];
LABEL_4:
    RowID = 0xFFFFFFFFLL;
    goto LABEL_18;
  }

  v32 = +[ASLocalDBHelper sharedInstance];
  account = [(ASAgent *)self account];
  accountID = [account accountID];
  [v32 calDatabaseForAccountID:accountID];
  v35 = CalDatabaseCopyCalendarItemWithRowID();

  if (!v35)
  {
    v39 = DALoggingwithCategory();
    v40 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v39, v40))
    {
      *buf = 134218242;
      *v94 = type;
      *&v94[8] = 2112;
      *&v94[10] = v80;
      _os_log_impl(&dword_0, v39, v40, "Had a change of type %lu for an event that no longer exists.  Clearing that change (change id %@)", buf, 0x16u);
    }

    selfCopy10 = self;
    if (v80)
    {
      [clearCopy addObject:?];
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
  selfCopy10 = self;
LABEL_18:
  if (changesCopy)
  {
    *b |= [(ASAgent *)selfCopy10 _markEventWithLocalIDAsNeedingInvitationEmail:localId parentId:RowID];
    v41 = 1;
    v27 = eventChangeIdCopy;
    v28 = toEventChangeIdCopy;
    v29 = clearCopy;
    v30 = idsCopy;
    v31 = v80;
    goto LABEL_34;
  }

  account2 = [(ASAgent *)selfCopy10 account];
  v27 = eventChangeIdCopy;
  if (!v25)
  {
    v41 = 1;
    v28 = toEventChangeIdCopy;
    goto LABEL_26;
  }

  v43 = [v88 isEqualToString:v25];
  v41 = 1;
  v28 = toEventChangeIdCopy;
  if (type != 1)
  {
LABEL_26:
    v29 = clearCopy;
    v30 = idsCopy;
    v31 = v80;
    goto LABEL_33;
  }

  v29 = clearCopy;
  v30 = idsCopy;
  v31 = v80;
  if (v43)
  {
    protocol = [account2 protocol];
    includeExceptionsInParent = [protocol includeExceptionsInParent];

    if (includeExceptionsInParent)
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
        *v94 = localId;
        *&v94[4] = 2112;
        *&v94[6] = v88;
        _os_log_impl(&dword_0, v46, v47, "Discarding non-significant modifications to event with local ID: %d, Exchange ID:%@", buf, 0x12u);
      }

      v41 = 0;
      selfCopy10 = self;
    }

    v27 = eventChangeIdCopy;
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

  v48 = [(ASAgent *)selfCopy10 _localIdForExchangeId:v25 inContainer:container dataclass:4];
  if (!v48)
  {
    v27 = eventChangeIdCopy;
    if (v31)
    {
      [v29 addObject:v31];
    }

    goto LABEL_94;
  }

  v49 = v48;
  if (!type)
  {
    v50 = [NSNumber numberWithInt:localId];
    [v30 addObject:v50];
  }

  account3 = [(ASAgent *)selfCopy10 account];
  protocol2 = [account3 protocol];
  includeExceptionsInParent2 = [protocol2 includeExceptionsInParent];

  if (includeExceptionsInParent2)
  {
    if (type == 2)
    {
      selfCopy10 = self;
    }

    else
    {
      v54 = [NSNumber numberWithInt:localId];
      selfCopy10 = self;
      [(ASAgent *)self _addChangeForType:type changedItemId:v54 changeId:v31 addedIdsToChangeId:eventChangeIdCopy modifiedIdsToChangeId:v28 deletedIdsToChangeId:v90 pseudoDeletedIdsToChangeId:v89 changeIdsToClear:v29];

      v31 = 0;
    }

    localId = [v49 intValue];
    v55 = [NSNumber numberWithInt:?];
    [mapCopy setObject:v25 forKeyedSubscript:v55];

    type = 1;
  }

  else
  {
    selfCopy10 = self;
  }

  v27 = eventChangeIdCopy;
LABEL_50:
  v56 = v30;
  v57 = v27;
  v58 = +[ASLocalDBHelper sharedInstance];
  account4 = [(ASAgent *)selfCopy10 account];
  accountID2 = [account4 accountID];
  [v58 calDatabaseForAccountID:accountID2];
  v61 = CalDatabaseCopyCalendarItemWithRowID();

  if (!v61)
  {
    typeCopy3 = type;
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
    *v94 = localId;
    v77 = "No syncing changes with event id %d because the self attendee status is pending";
    goto LABEL_80;
  }

  if (type != 1)
  {
    v72 = v63 != 0;
    v71 = 1;
    typeCopy3 = type;
    if (type || !v63)
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
      *v94 = localId;
      _os_log_impl(&dword_0, v73, v74, "Resetting change with id %d and type add to type modify", buf, 8u);
    }

    v72 = 1;
    v71 = 1;
LABEL_73:
    typeCopy3 = 1;
    goto LABEL_74;
  }

  if (ModifiedProperties != 512 || ![(ASAgent *)selfCopy10 _isOrganizerSelfWithLocalEvent:v61])
  {
    v72 = v63 != 0;
    v71 = 1;
    goto LABEL_73;
  }

  account5 = [(ASAgent *)selfCopy10 account];
  protocol3 = [account5 protocol];
  includeExceptionsInParent3 = [protocol3 includeExceptionsInParent];

  if (includeExceptionsInParent3)
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
    *v94 = localId;
    v77 = "No syncing changes with event id %d because the changes are by changing invitation status only";
LABEL_80:
    _os_log_impl(&dword_0, v75, v76, v77, buf, 8u);
  }

LABEL_81:

  v71 = 0;
LABEL_82:
  typeCopy3 = type;
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
      *v94 = localId;
      _os_log_impl(&dword_0, v78, v79, "Resetting modify invitation change on event with id %d to EAS delete", buf, 8u);
    }

    if (v84 == 7)
    {
      typeCopy3 = 8;
    }

    else
    {
      typeCopy3 = 2;
    }
  }

LABEL_89:
  if (!v72)
  {
    selfCopy10 = self;
    if (!v71)
    {
      goto LABEL_91;
    }

    goto LABEL_93;
  }

  CFRelease(v63);
  selfCopy10 = self;
  if (v71)
  {
LABEL_93:
    v25 = [NSNumber numberWithInt:localId];
    v27 = v57;
    [(ASAgent *)selfCopy10 _addChangeForType:typeCopy3 changedItemId:v25 changeId:v31 addedIdsToChangeId:v57 modifiedIdsToChangeId:v28 deletedIdsToChangeId:v90 pseudoDeletedIdsToChangeId:v89 changeIdsToClear:v29];
    v30 = v56;
LABEL_94:

    goto LABEL_95;
  }

LABEL_91:
  v27 = v57;
  v30 = v56;
LABEL_95:
}

- (void)_faultInCalendarSubentitiesInCalendar:(void *)calendar addedIdsToEventChangeId:(id)id modifiedIdsToEventChangeId:(id)changeId deletedIdsToEventChangeId:(id)eventChangeId pseudoDeletedIdsToEventChangeId:(id)toEventChangeId localToExchangeIdMap:(id)map eventChangeIdsToClear:(id)clear allAddedDetachmentIds:(id)self0 outRecurrenceId:(int *)self1 outAlarmId:(int *)self2 outAttendeeId:(int *)self3 outAttachmentId:(int *)self4 outHighestSequenceNumber:(int *)self5 dataHandler:(id)self6
{
  idCopy = id;
  changeIdCopy = changeId;
  eventChangeIdCopy = eventChangeId;
  toEventChangeIdCopy = toEventChangeId;
  mapCopy = map;
  clearCopy = clear;
  idsCopy = ids;
  handlerCopy = handler;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 0;
  v25 = +[ASLocalDBHelper sharedInstance];
  account = [(ASAgent *)self account];
  accountID = [account accountID];
  v28 = [v25 calDatabaseForAccountID:accountID];

  v62 = 0;
  v63 = &v62;
  v64 = 0x2020000000;
  v65 = -1;
  v48[0] = _NSConcreteStackBlock;
  v48[1] = 3221225472;
  v48[2] = sub_3ACB4;
  v48[3] = &unk_6D3A8;
  v60 = v28;
  v38 = mapCopy;
  v49 = v38;
  selfCopy = self;
  calendarCopy = calendar;
  v44 = handlerCopy;
  v51 = v44;
  v39 = idCopy;
  v52 = v39;
  v41 = changeIdCopy;
  v53 = v41;
  v43 = eventChangeIdCopy;
  v54 = v43;
  v37 = toEventChangeIdCopy;
  v55 = v37;
  v36 = clearCopy;
  v56 = v36;
  v34 = idsCopy;
  v57 = v34;
  v58 = &v66;
  v59 = &v62;
  v29 = objc_retainBlock(v48);
  v30 = CalDatabaseCopyAlarmChangesInCalendar();
  if (alarmId)
  {
    *alarmId = v30;
  }

  v31 = CalDatabaseCopyRecurrenceChangesInCalendar();
  if (recurrenceId)
  {
    *recurrenceId = v31;
  }

  if ([v44 dataclass] == &dword_4)
  {
    v32 = CalDatabaseCopyAttendeeChangesInCalendar();
    if (attendeeId)
    {
      *attendeeId = v32;
    }
  }

  v33 = CalDatabaseCopyAttachmentChangesInCalendar();
  if (attachmentId)
  {
    *attachmentId = v33;
  }

  if (number)
  {
    *number = *(v63 + 6);
  }

  if (*(v67 + 24) == 1)
  {
    [v44 saveContainer];
  }

  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v66, 8);
}

- (BOOL)_isOrganizerSelfWithEmail:(id)email
{
  emailCopy = email;
  v5 = emailCopy;
  if (emailCopy && [emailCopy length])
  {
    account = [(ASAgent *)self account];
    v7 = [account accountContainsEmailAddress:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_exceptionDateChangesInCalendar:(void *)calendar exceptionDateToChangeId:(id)id outHighestSequenceNumber:(int *)number dataHandler:(id)handler
{
  idCopy = id;
  handlerCopy = handler;
  v11 = +[ASLocalDBHelper sharedInstance];
  account = [(ASAgent *)self account];
  accountID = [account accountID];
  [v11 calDatabaseForAccountID:accountID];

  if ([handlerCopy dataclass] == &dword_4)
  {
    CalDatabaseCopyExceptionDateChangesInCalendar();
  }

  *number = -1;
}

- (void)_attendeeChangesDueToMeetingForwardingInCalendar:(void *)calendar eventIdToAttendeeEmails:(id)emails eventIdToAttendeeUUIDs:(id)ds dataHandler:(id)handler
{
  emailsCopy = emails;
  dsCopy = ds;
  handlerCopy = handler;
  v12 = +[ASLocalDBHelper sharedInstance];
  account = [(ASAgent *)self account];
  accountID = [account accountID];
  [v12 calDatabaseForAccountID:accountID];

  if ([handlerCopy dataclass] == &dword_4)
  {
    CalDatabaseCopyAttendeeChangesInCalendar();
  }
}

- (id)_instanceIdFromIdWithExceptionDate:(id)date
{
  dateCopy = date;
  v4 = [dateCopy rangeOfString:@"<!ExceptionDate!>"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [dateCopy substringFromIndex:&v4[v5]];
  }

  return v6;
}

- (BOOL)_isOrganizerSelfWithLocalEvent:(void *)event
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
    account = [(ASAgent *)self account];
    v8 = [account accountContainsEmailAddress:v6];
  }

  else
  {
    v8 = 1;
  }

  CFRelease(v5);

  return v8;
}

- (id)_copyCalendarItemMoveActionsInCalendar:(void *)calendar dataHandler:(id)handler deleteActionsByFolderId:(id)id
{
  handlerCopy = handler;
  idCopy = id;
  v7 = CalCalendarCopyStore();
  v8 = objc_opt_new();
  v125 = objc_opt_new();
  dataclass = [handlerCopy dataclass];
  v10 = +[ASLocalDBHelper sharedInstance];
  selfCopy = self;
  account = [(ASAgent *)self account];
  accountID = [account accountID];
  [v10 calDatabaseForAccountID:accountID];
  v108 = v7;
  if (dataclass == &dword_4)
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

              if ([handlerCopy dataclass] != &dword_4)
              {
                goto LABEL_26;
              }

              +[ASLocalDBHelper sharedInstance];
              v28 = v27 = v24;
              [(ASAgent *)selfCopy account];
              v30 = v29 = v16;
              accountID2 = [v30 accountID];
              [v28 calDatabaseForAccountID:accountID2];
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
          allKeys = [v8 allKeys];
          v43 = [(__CFArray *)allKeys countByEnumeratingWithState:&v135 objects:v140 count:16];
          if (v43)
          {
            v44 = v43;
            v113 = 0;
            v128 = *v136;
            typea = _CPLog_to_os_log_type[3];
            v45 = handlerCopy;
            v46 = v125;
            do
            {
              v47 = 0;
              v120 = v44;
              do
              {
                if (*v136 != v128)
                {
                  objc_enumerationMutation(allKeys);
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
                      account2 = [(ASAgent *)selfCopy account];
                      accountID3 = [account2 accountID];
                      [v66 calDatabaseForAccountID:accountID3];
                      [v50 intValue];
                      v69 = CalDatabaseCopyCalendarWithUID();

                      if (v69)
                      {
                        cf = v69;
                        theArraya = CalCalendarCopyExternalID();
                        if (theArraya)
                        {
                          v70 = +[ASLocalDBHelper sharedInstance];
                          account3 = [(ASAgent *)selfCopy account];
                          accountID4 = [account3 accountID];
                          [v70 calDatabaseForAccountID:accountID4];
                          v73 = CalDatabaseCopyCalendarWithUID();

                          if (v73 && (v74 = CalCalendarCopyExternalID(), CFRelease(v73), v74))
                          {
                            account4 = [(ASAgent *)selfCopy account];
                            v45 = handlerCopy;
                            v76 = [handlerCopy getDAObjectWithLocalItem:v53 serverId:0 account:account4];

                            [v76 setLocalItem:0];
                            v77 = [[DAMoveAction alloc] initWithItemChangeType:5 changedItem:v76 sourceContainerId:theArraya sourceServerId:v51 destinationContainerId:v74];
                            v44 = v120;
                            if (v130)
                            {
                              intValue = [v130 intValue];
                            }

                            else
                            {
                              intValue = 0xFFFFFFFFLL;
                            }

                            [v77 setChangeId:intValue];
                            [v110 addObject:v77];

                            v8 = v118;
                            v46 = v125;
                            v65 = v130;
                          }

                          else
                          {
                            v83 = DALoggingwithCategory();
                            v45 = handlerCopy;
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
                            intValue2 = [v50 intValue];
                            *buf = 67109120;
                            LODWORD(v146) = intValue2;
                            _os_log_impl(&dword_0, v84, typea, "Looking at a move command, I couldn't come up with the old calendar external id.  old calendar id %d", buf, 8u);
                          }

                          v46 = v125;
                          v65 = v130;
                          [v125 addObject:v130];
                          v45 = handlerCopy;
                          v8 = v118;
                          v44 = v120;
                        }

                        CFRelease(cf);
                      }

                      else
                      {
                        v79 = DALoggingwithCategory();
                        v45 = handlerCopy;
                        v8 = v118;
                        v44 = v120;
                        if (os_log_type_enabled(v79, typea))
                        {
                          intValue3 = [v50 intValue];
                          *buf = 67109120;
                          LODWORD(v146) = intValue3;
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
                  account5 = [(ASAgent *)selfCopy account];
                  accountID5 = [account5 accountID];
                  [v57 calDatabaseForAccountID:accountID5];
                  [v50 intValue];
                  v60 = CalDatabaseCopyCalendarWithUID();

                  if (v60)
                  {
                    v61 = CalCalendarCopyExternalID();
                    if (v61)
                    {
                      v62 = [idCopy objectForKeyedSubscript:v61];
                      if (!v62)
                      {
                        v62 = objc_opt_new();
                        [idCopy setObject:v62 forKeyedSubscript:v61];
                      }

                      v63 = [[ASAction alloc] initWithItemChangeType:2 changedItem:0 serverId:v51];
                      if (v130)
                      {
                        intValue4 = [v130 intValue];
                      }

                      else
                      {
                        intValue4 = 0xFFFFFFFFLL;
                      }

                      [v63 setChangeId:intValue4];
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
                        intValue5 = [v50 intValue];
                        *buf = 67109120;
                        LODWORD(v146) = intValue5;
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
                      intValue6 = [v50 intValue];
                      *buf = 67109120;
                      LODWORD(v146) = intValue6;
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
              v44 = [(__CFArray *)allKeys countByEnumeratingWithState:&v135 objects:v140 count:16];
            }

            while (v44);
          }

          else
          {
            v113 = 0;
            v45 = handlerCopy;
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

                  intValue7 = [*(*(&v131 + 1) + 8 * i) intValue];
                  if (intValue7 != -1)
                  {
                    v98 = intValue7;
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
              account6 = [(ASAgent *)selfCopy account];
              accountID6 = [account6 accountID];
              [v100 calDatabaseForAccountID:accountID6];
              account7 = [(ASAgent *)selfCopy account];
              changeTrackingID = [account7 changeTrackingID];
              CalDatabaseClearIndividualChangeRowIDsForClient();

              CFRelease(Mutable);
              v45 = handlerCopy;
              v8 = v118;
              v46 = v125;
              goto LABEL_114;
            }

            CFRelease(Mutable);
            v45 = handlerCopy;
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
              v146 = idCopy;
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
  v45 = handlerCopy;
  v46 = v125;
  if (v108)
  {
    CFRelease(v108);
  }

  v110 = objc_opt_new();
LABEL_118:

  return v110;
}

- (void)_addSimpleChangeForType:(unint64_t)type changedItemId:(id)id addedIds:(id)ids modifiedIds:(id)modifiedIds deletedIds:(id)deletedIds collapsedIds:(id)collapsedIds
{
  idCopy = id;
  idsCopy = ids;
  modifiedIdsCopy = modifiedIds;
  deletedIdsCopy = deletedIds;
  collapsedIdsCopy = collapsedIds;
  v18 = DALoggingwithCategory();
  v19 = _CPLog_to_os_log_type[7];
  if (os_log_type_enabled(v18, v19))
  {
    v21 = 134219010;
    typeCopy = type;
    v23 = 2112;
    v24 = idCopy;
    v25 = 2112;
    v26 = idsCopy;
    v27 = 2112;
    v28 = modifiedIdsCopy;
    v29 = 2112;
    v30 = deletedIdsCopy;
    _os_log_impl(&dword_0, v18, v19, "_addChange for type %lu, changeId %@ addedIds %@ modifiedIds %@ deletedIds %@", &v21, 0x34u);
  }

  switch(type)
  {
    case 2uLL:
      if ([idsCopy containsObject:idCopy])
      {
        [collapsedIdsCopy addObject:idCopy];
        [idsCopy removeObject:idCopy];
        goto LABEL_12;
      }

      v20 = [modifiedIdsCopy containsObject:idCopy];
      [deletedIdsCopy addObject:idCopy];
      if (v20)
      {
        goto LABEL_12;
      }

      break;
    case 1uLL:
      if (([idsCopy containsObject:idCopy] & 1) == 0)
      {
        [modifiedIdsCopy addObject:idCopy];
      }

      break;
    case 0uLL:
      [idsCopy addObject:idCopy];
LABEL_12:
      [modifiedIdsCopy removeObject:idCopy];
      break;
  }
}

- (id)_copyNotesActionsInNoteStore:(id)store existingActions:(id)actions dataHandler:(id)handler wantPreserveActions:(BOOL)preserveActions changeSet:(id)set
{
  preserveActionsCopy = preserveActions;
  storeCopy = store;
  actionsCopy = actions;
  handlerCopy = handler;
  setCopy = set;
  v12 = objc_opt_new();
  v137 = objc_opt_new();
  v136 = objc_opt_new();
  v135 = objc_opt_new();
  v131 = objc_opt_new();
  v175 = 0u;
  v176 = 0u;
  v177 = 0u;
  v178 = 0u;
  obj = actionsCopy;
  v13 = [obj countByEnumeratingWithState:&v175 objects:v190 count:16];
  v130 = handlerCopy;
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
        itemChangeType = [v17 itemChangeType];
        v19 = itemChangeType;
        if (itemChangeType > 1)
        {
          if ((itemChangeType & 0xFFFFFFFFFFFFFFFBLL) == 2)
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
          changedItem = [v17 changedItem];
          [changedItem loadClientIDs];
          [changedItem setLocalItem:0];
          clientID = [changedItem clientID];
          intValue = [clientID intValue];

          if (intValue)
          {
            account = [(ASAgent *)self account];
            v27 = [changedItem loadLocalItemWithAccount:account];

            if (v27)
            {
              serverID = [changedItem serverID];
              v29 = serverID;
              v15 = v22;
              if (v19 != 1 || serverID)
              {
                v30 = [NSNumber numberWithInt:intValue];
                -[ASAgent _addSimpleChangeForType:changedItemId:addedIds:modifiedIds:deletedIds:collapsedIds:](self, "_addSimpleChangeForType:changedItemId:addedIds:modifiedIds:deletedIds:collapsedIds:", [v17 itemChangeType], v30, v137, v136, v135, 0);
                if (v29)
                {
                  [v131 setObject:v29 forKeyedSubscript:v30];
                }

                handlerCopy = v130;
              }

              else
              {
                v30 = DALoggingwithCategory();
                handlerCopy = v130;
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

              handlerCopy = v130;
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

            handlerCopy = v130;
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

  changes = [storeCopy changes];
  v33 = [changes copy];

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
        changeType = [v40 changeType];
        intValue2 = [changeType intValue];

        switch(intValue2)
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
            noteServerIds = [v40 noteServerIds];
            v46 = [noteServerIds countByEnumeratingWithState:&v163 objects:v185 count:16];
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
                    objc_enumerationMutation(noteServerIds);
                  }

                  [(ASAgent *)self _addSimpleChangeForType:2 changedItemId:*(*(&v163 + 1) + 8 * j) addedIds:v137 modifiedIds:v136 deletedIds:v135 collapsedIds:0];
                }

                v47 = [noteServerIds countByEnumeratingWithState:&v163 objects:v185 count:16];
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
                  intValue3 = [v54 intValue];
                  v56 = [(ASAgent *)self _dbExternalIdForLocalId:intValue3 dataclass:32];
                  v57 = DALoggingwithCategory();
                  if (os_log_type_enabled(v57, v37))
                  {
                    *buf = 67109634;
                    *v187 = intValue3;
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

                  if (intValue3)
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
              handlerCopy = v130;
              v36 = v122;
              v38 = v123;
            }

            else
            {
              v12 = v124;
            }

            v35 = v125;
            v39 = v129;
            noteServerIds = typea;
            break;
          default:
            v62 = DALoggingwithCategory();
            if (os_log_type_enabled(v62, v38))
            {
              changeType2 = [v40 changeType];
              *buf = 138412546;
              *v187 = changeType2;
              *&v187[8] = 2112;
              *&v187[10] = v40;
              _os_log_impl(&dword_0, v62, v38, "Unknown change type %@ from change object %@", buf, 0x16u);
            }

            noteServerIds = v62;
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

        objectID = [*(*(&v159 + 1) + 8 * m) objectID];
        uRIRepresentation = [objectID URIRepresentation];

        if (uRIRepresentation)
        {
          [setCopy addObject:uRIRepresentation];
        }
      }

      v66 = [v64 countByEnumeratingWithState:&v159 objects:v184 count:16];
    }

    while (v66);
  }

  *typeb = v64;

  if (preserveActionsCopy)
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

          v76 = [handlerCopy copyLocalObjectFromId:{objc_msgSend(*(*(&v155 + 1) + 8 * n), "intValue")}];
          if (v76)
          {
            v77 = v76;
            account2 = [(ASAgent *)self account];
            v79 = [handlerCopy getDAObjectWithLocalItem:v77 serverId:0 account:account2];

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

          v86 = [handlerCopy copyLocalObjectFromId:{objc_msgSend(*(*(&v151 + 1) + 8 * ii), "intValue")}];
          if (v86)
          {
            v87 = v86;
            account3 = [(ASAgent *)self account];
            v89 = [handlerCopy getDAObjectWithLocalItem:v87 serverId:0 account:account3];

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

          v97 = [handlerCopy copyLocalObjectFromId:{objc_msgSend(*(*(&v147 + 1) + 8 * jj), "intValue")}];
          if (v97)
          {
            v98 = v97;
            account4 = [(ASAgent *)self account];
            v100 = [handlerCopy getDAObjectWithLocalItem:v98 serverId:0 account:account4];

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
          v108 = [handlerCopy copyLocalObjectFromId:{objc_msgSend(v107, "intValue")}];
          if (v108)
          {
            v109 = v108;
            v110 = [v131 objectForKeyedSubscript:v107];
            account5 = [(ASAgent *)self account];
            v112 = [handlerCopy getDAObjectWithLocalItem:v109 serverId:v110 account:account5];

            v113 = [[ASAction alloc] initWithItemChangeType:1 changedItem:v112 serverId:0];
            [v12 addObject:v113];
            CFRelease(v109);

            handlerCopy = v130;
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