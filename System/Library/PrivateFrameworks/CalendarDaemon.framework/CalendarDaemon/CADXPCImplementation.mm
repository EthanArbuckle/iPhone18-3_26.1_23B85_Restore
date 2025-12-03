@interface CADXPCImplementation
+ (void)monitorLocationAuthorizationStatusChanges:(unint64_t)changes;
- (BOOL)_CADDatabaseCanModifyCalendarDatabase;
- (BOOL)_CADDatabaseCanModifySuggestedEventCalendar;
- (BOOL)_checkAccess:(unint64_t)access;
- (BOOL)_hasAccess:(unint64_t)access;
- (BOOL)_performRestoreOperation:(id)operation;
- (BOOL)_requiresSpecialEntitlementToReadSecurityScopedURLWrapperForProperty:(id)property;
- (BOOL)_verifyClientAllowedToWriteValue:(id)value forKey:(id)key;
- (BOOL)accessGrantedToPerformSelector:(SEL)selector;
- (BOOL)hasAccess:(unint64_t)access;
- (BOOL)isDuplicateEvent:(id)event updates:(id)updates;
- (BOOL)location:(void *)location matchesProperties:(id)properties;
- (BOOL)object:(void *)object matchesProperties:(id)properties forKeys:(id)keys;
- (BOOL)recurrenceRule:(void *)rule matchesProperties:(id)properties;
- (BOOL)shouldBlockSaveOfEvent:(id)event updates:(id)updates becauseOfExistingEvent:(void *)existingEvent;
- (CADXPCImplementation)initWithClientConnection:(id)connection;
- (__CFArray)_copyToIntCFArrayRef:(id)ref;
- (__CFSet)_copyToIntCFSetRef:(id)ref;
- (id)_TCCPromptReasonStringForReason:(int64_t)reason;
- (id)_accountStoreForBackupRestore;
- (id)_getAlarmOccurrencesFromAlarmCacheForDatabase:(CalDatabase *)database databaseID:(int)d accessLogger:(id)logger;
- (id)_hangAssertionForBlockingTCCCall;
- (id)_importEvents:(id)events data:(id)data intoCalendarWithID:(id)d inDatabase:(CalDatabase *)database optionsMask:(unint64_t)mask batchSize:(int)size outCalendarObjectID:(id *)iD outError:(int *)self0;
- (id)_insert:(id)_insert delete:(id)delete update:(id)update database:(CalDatabase *)database error:(int *)error;
- (id)_insertObjectsWithTemporaryObjectIDs:(id)ds updates:(id)updates database:(CalDatabase *)database error:(int *)error;
- (id)constraintsData:(id)data error:(int *)error;
- (id)owningEventForObject:(id)object withUpdates:(id)updates;
- (id)owningObjectForObject:(id)object withProperties:(id)properties;
- (id)removeDuplicateEvents:(id)events;
- (id)updatedOrInsertedObjectIDs:(id)ds relatedToEvent:(id)event;
- (int)_deleteObjects:(id)objects database:(CalDatabase *)database;
- (int)_tryPerformBlockWithCalendarID:(id)d forAction:(unint64_t)action withBlock:(id)block;
- (int)_tryPerformBlockWithSourceID:(id)d forAction:(unint64_t)action entityType:(int)type withBlock:(id)block;
- (int)_tryPerformBlockWithSourceID:(id)d forAction:(unint64_t)action withBlock:(id)block;
- (int)_updatePropertiesAndRelations:(id)relations database:(CalDatabase *)database insertedObjectMap:(id)map;
- (int)findDatabaseForObject:(id)object withUpdates:(id)updates personas:(id *)personas accounts:(id *)accounts nextTempDBID:(int *)d;
- (int)insert:(id)insert deletes:(id)deletes updates:(id)updates insertedObjectIDMap:(id)map inDatabase:(CalDatabase *)database;
- (int)preflightAccessForDeletes:(id)deletes updates:(id)updates inDatabase:(CalDatabase *)database;
- (int)preflightObjectID:(id)d inDatabase:(CalDatabase *)database;
- (unint64_t)sizeAttachmentsForDatabase:(CalDatabase *)database;
- (unint64_t)sizeCalendarDirectoryForDatabase:(CalDatabase *)database;
- (unint64_t)sizeDirectoryAtPath:(id)path excludingDirectory:(id)directory;
- (void)CADAnalyticsSendEvent:(id)event appendingClientBundleIDToPayload:(id)payload;
- (void)CADBackupDatabaseToFileNamed:(id)named inDirectory:(id)directory includeAttachments:(BOOL)attachments reply:(id)reply;
- (void)CADBackupToICBU:(id)u reply:(id)reply;
- (void)CADCalendar:(id)calendar hasEvents:(id)events;
- (void)CADCalendar:(id)calendar hasEventsWithRoomAsAttendee:(id)attendee;
- (void)CADCalendarSetClearedFromNotificationCenter:(id)center error:(id)error;
- (void)CADCatchUpIntegrationSyncingIfBehind:(id)behind;
- (void)CADCountOriginalCalendarItemsBySource:(id)source reply:(id)reply;
- (void)CADDatabaseCanModifyCalendarDatabase:(id)database;
- (void)CADDatabaseCanModifySuggestedEventCalendar:(id)calendar;
- (void)CADDatabaseCommitDeletes:(id)deletes updatesAndInserts:(id)inserts options:(int64_t)options andFetchChangesSinceTimestamp:(id)timestamp withReply:(id)reply;
- (void)CADDatabaseConsumeAllChangesUpToToken:(id)token except:(id)except reply:(id)reply;
- (void)CADDatabaseExportICSDataForCalendar:(id)calendar options:(unint64_t)options reply:(id)reply;
- (void)CADDatabaseExportICSDataForCalendarItems:(id)items options:(unint64_t)options reply:(id)reply;
- (void)CADDatabaseExportICSForCalendarItemWithID:(id)d occurrenceDate:(id)date options:(unint64_t)options reply:(id)reply;
- (void)CADDatabaseFetchChangedObjectIDs:(id)ds;
- (void)CADDatabaseFetchObjectChangesForEntityTypes:(id)types insideObject:(id)object reply:(id)reply;
- (void)CADDatabaseGetAccess:(id)access;
- (void)CADDatabaseGetAlarmOccurrencesFromAlarmCacheWithReply:(id)reply;
- (void)CADDatabaseGetAlarmWithExternalID:(id)d reply:(id)reply;
- (void)CADDatabaseGetAlarmWithUUID:(id)d reply:(id)reply;
- (void)CADDatabaseGetAllEventsWithUniqueID:(id)d reply:(id)reply;
- (void)CADDatabaseGetAttachmentWithUUID:(id)d reply:(id)reply;
- (void)CADDatabaseGetBirthdayCalendarEnabledWithReply:(id)reply;
- (void)CADDatabaseGetBirthdayCalendarVersionWithReply:(id)reply;
- (void)CADDatabaseGetCalendarItemWithUUID:(id)d reply:(id)reply;
- (void)CADDatabaseGetCalendarItemsWithRecurrenceSet:(id)set inCalendar:(id)calendar reply:(id)reply;
- (void)CADDatabaseGetCalendarItemsWithUUIDs:(id)ds inCalendars:(id)calendars propertiesToLoad:(id)load reply:(id)reply;
- (void)CADDatabaseGetCalendarItemsWithUniqueIdentifier:(id)identifier inCalendar:(id)calendar reply:(id)reply;
- (void)CADDatabaseGetCalendarsWithFaultedProperties:(id)properties reply:(id)reply;
- (void)CADDatabaseGetChangedEntityIDsSinceTimestamp:(id)timestamp reply:(id)reply;
- (void)CADDatabaseGetChangesSinceSequenceToken:(id)token reply:(id)reply;
- (void)CADDatabaseGetColorWithProviderIdentifier:(id)identifier externalID:(id)d reply:(id)reply;
- (void)CADDatabaseGetCreatorTeamIdentifierForEventWithObjectID:(id)d reply:(id)reply;
- (void)CADDatabaseGetDefaultAlarmOffsetForAllDay:(BOOL)day reply:(id)reply;
- (void)CADDatabaseGetDefaultCalendarForNewEventsInDelegateSource:(id)source withReply:(id)reply;
- (void)CADDatabaseGetDefaultLocalCalendarWithReply:(id)reply;
- (void)CADDatabaseGetDeletableCalendars:(id)calendars;
- (void)CADDatabaseGetDeletableSources:(id)sources;
- (void)CADDatabaseGetErrorCount:(id)count;
- (void)CADDatabaseGetEventWithEventIdentifier:(id)identifier reply:(id)reply;
- (void)CADDatabaseGetEventWithUniqueID:(id)d reply:(id)reply;
- (void)CADDatabaseGetEventsWithErrorsPerSource:(id)source;
- (void)CADDatabaseGetInboxRepliedSectionItems:(id)items;
- (void)CADDatabaseGetInviteReplyNotifications:(id)notifications;
- (void)CADDatabaseGetLocalBirthdaySource:(id)source;
- (void)CADDatabaseGetLocalSourceWithEnableIfNeeded:(BOOL)needed reply:(id)reply;
- (void)CADDatabaseGetNaturalLanguageSuggestedEventCalendarWithReply:(id)reply;
- (void)CADDatabaseGetOrCreateBirthdayCalendar:(id)calendar;
- (void)CADDatabaseGetOrCreateSubscribedCalendarsSource:(id)source;
- (void)CADDatabaseGetResourceChanges:(id)changes;
- (void)CADDatabaseGetSequenceToken:(id)token;
- (void)CADDatabaseGetSharedCalendarInvitationsWithReply:(id)reply;
- (void)CADDatabaseGetSourceIdentifierForEventWithObjectID:(id)d reply:(id)reply;
- (void)CADDatabaseGetSourcesWithFaultedProperties:(id)properties reply:(id)reply;
- (void)CADDatabaseGetStorageUsage:(id)usage;
- (void)CADDatabaseGetSuggestedEventCalendarWithReply:(id)reply;
- (void)CADDatabaseGetTTLLocationAuthorizationStatus:(id)status;
- (void)CADDatabaseGetUUID:(id)d;
- (void)CADDatabaseImportEvents:(id)events fromICSData:(id)data intoCalendarsWithIDs:(id)ds optionsMask:(unint64_t)mask batchSize:(int)size reply:(id)reply;
- (void)CADDatabaseInsertSuggestedEventCalendarWithReply:(id)reply;
- (void)CADDatabaseIsCurrentProcessCreatorOfEventWithObjectID:(id)d reply:(id)reply;
- (void)CADDatabaseLastConfirmedSplashScreenVersion:(id)version;
- (void)CADDatabaseLoadEventsInCalendar:(id)calendar reply:(id)reply;
- (void)CADDatabaseMarkChangedObjectIDsConsumedUpToSequenceToken:(id)token reply:(id)reply;
- (void)CADDatabaseMarkIndividualChangesConsumed:(id)consumed reply:(id)reply;
- (void)CADDatabaseMigrateSubscribedCalendar:(id)calendar toSource:(id)source reply:(id)reply;
- (void)CADDatabaseRebuildOccurrenceCacheWithReply:(id)reply;
- (void)CADDatabaseRegisterForDetailedChangeTrackingInSource:(id)source reply:(id)reply;
- (void)CADDatabaseRemoveSuggestedEventCalendarWithReply:(id)reply;
- (void)CADDatabaseRequestAccessForEntityType:(unint64_t)type desiredFullAccess:(BOOL)access isBlockingUIThread:(BOOL)thread reason:(int64_t)reason reply:(id)reply;
- (void)CADDatabaseResetWithReply:(id)reply;
- (void)CADDatabaseSetBirthdayCalendarVersion:(int)version withReply:(id)reply;
- (void)CADDatabaseSetDefaultCalendarForNewEvents:(id)events delegateSource:(id)source reply:(id)reply;
- (void)CADDatabaseSetInitializationOptions:(id)options reply:(id)reply;
- (void)CADDatabaseSetShowsCompletedReminders:(BOOL)reminders reply:(id)reply;
- (void)CADDatabaseSetShowsDeclinedEvents:(BOOL)events reply:(id)reply;
- (void)CADDatabaseShouldPermitOrganizerEmailFromJunkChecks:(id)checks reply:(id)reply;
- (void)CADDatabaseShouldPermitOrganizerPhoneNumberFromJunkChecks:(id)checks reply:(id)reply;
- (void)CADDatabaseShowsDeclinedEventsWithReply:(id)reply;
- (void)CADDatabaseStatsBySource:(id)source;
- (void)CADDatabaseUnregisterForDetailedChangeTracking:(id)tracking;
- (void)CADEventSetInvitationStatus:(int)status forEvents:(id)events error:(id)error;
- (void)CADInternalForceStatCollection:(id)collection;
- (void)CADInternalRemoveConferenceLinkRenewalDate:(id)date;
- (void)CADInternalSetNextConferenceLinkRenewalToNow:(id)now;
- (void)CADMigrateDatabaseIfNeeded:(id)needed;
- (void)CADObject:(id)object getDataPropertyWithName:(id)name reply:(id)reply;
- (void)CADObject:(id)object getDatePropertyWithName:(id)name reply:(id)reply;
- (void)CADObject:(id)object getNumberPropertyWithName:(id)name reply:(id)reply;
- (void)CADObject:(id)object getPropertiesWithNames:(id)names reply:(id)reply;
- (void)CADObject:(id)object getPropertyWithName:(id)name reply:(id)reply;
- (void)CADObject:(id)object getRelatedObjectWithRelationName:(id)name reply:(id)reply;
- (void)CADObject:(id)object getRelatedObjectsWithRelationName:(id)name reply:(id)reply;
- (void)CADObject:(id)object getSecurityScopedURLWrapperPropertyWithName:(id)name reply:(id)reply;
- (void)CADObject:(id)object getStringPropertyWithName:(id)name reply:(id)reply;
- (void)CADObjectExists:(id)exists reply:(id)reply;
- (void)CADObjectGetConstraints:(id)constraints reply:(id)reply;
- (void)CADObjectIsManaged:(id)managed reply:(id)reply;
- (void)CADObjects:(id)objects getPropertiesWithNames:(id)names reply:(id)reply;
- (void)CADObjectsExist:(id)exist reply:(id)reply;
- (void)CADOccurrenceCacheDoEvents:(id)events haveOccurrencesAfterDate:(id)date reply:(id)reply;
- (void)CADOccurrenceCacheGetOccurrenceCountOrSumDurationWithStartDate:(id)date endDate:(id)endDate calendarIDs:(id)ds sumDuration:(BOOL)duration reply:(id)reply;
- (void)CADOccurrenceCacheGetOccurrenceCountWithStartDate:(id)date endDate:(id)endDate reply:(id)reply;
- (void)CADOccurrenceCacheGetOccurrenceCountsForCalendars:(id)calendars reply:(id)reply;
- (void)CADOccurrenceCacheGetOccurrenceDateOfEventWithObjectID:(id)d nearestDate:(id)date prefersForwardSearch:(BOOL)search reply:(id)reply;
- (void)CADOccurrenceCacheGetOccurrencesForCalendars:(id)calendars onDay:(id)day reply:(id)reply;
- (void)CADOccurrencesExistInRangeForEvent:(id)event startDate:(id)date endDate:(id)endDate mustStartInInterval:(BOOL)interval timezone:(id)timezone reply:(id)reply;
- (void)CADPersonaIdentifierForDatabaseID:(int)d reply:(id)reply;
- (void)CADPostSyntheticRouteHypothesis:(id)hypothesis forEventWithExternalURL:(id)l reply:(id)reply;
- (void)CADPurgeChangeTrackingReply:(id)reply;
- (void)CADResourceChange:(id)change setAlertedWithError:(id)error;
- (void)CADRestoreFromDatabaseBackupFileNamed:(id)named inDirectory:(id)directory includeAttachments:(BOOL)attachments reply:(id)reply;
- (void)CADRestoreFromICBU:(id)u reply:(id)reply;
- (void)CADSourceAddExchangeDelegateWithName:(id)name emailAddress:(id)address toSourceWithID:(id)d reply:(id)reply;
- (void)CADSourceGetGrantedDelegatesList:(id)list reply:(id)reply;
- (void)CADSourceGetNotificationCollection:(id)collection reply:(id)reply;
- (void)CADSourceRefresh:(id)refresh isUserRequested:(BOOL)requested reply:(id)reply;
- (void)CADSourceRemoveExchangeDelegateWithID:(id)d reply:(id)reply;
- (void)CADSourceUpdateGrantedDelegate:(id)delegate action:(int64_t)action sourceID:(id)d reply:(id)reply;
- (void)CADTestingCloseDatabase:(id)database;
- (void)_handleiTIPMesssageAndCopyEventFromDocument:(id)document data:(id)data database:(CalDatabase *)database store:(void *)store accountInfo:(id)info options:(unint64_t)options;
- (void)clearCachedAuthorizationStatus;
@end

@implementation CADXPCImplementation

- (BOOL)_CADDatabaseCanModifySuggestedEventCalendar
{
  permissionValidator = [(ClientConnection *)self->_conn permissionValidator];
  canModifySuggestedEventCalendar = [permissionValidator canModifySuggestedEventCalendar];

  return canModifySuggestedEventCalendar;
}

- (void)clearCachedAuthorizationStatus
{
  os_unfair_lock_lock(&self->_accessLock);
  self->_allowedAccess = 0;
  self->_checkedAccess = 0;

  os_unfair_lock_unlock(&self->_accessLock);
}

- (id)_accountStoreForBackupRestore
{
  mEMORY[0x277CF74F0] = [MEMORY[0x277CF74F0] sharedInstance];
  databaseInitializationOptions = [(ClientConnection *)self->_conn databaseInitializationOptions];
  unitTesting = [databaseInitializationOptions unitTesting];

  if (unitTesting)
  {
    v6 = [MEMORY[0x277CF7500] storeFilteringAllChangesInBackingAccountStore:mEMORY[0x277CF74F0]];

    mEMORY[0x277CF74F0] = v6;
  }

  return mEMORY[0x277CF74F0];
}

- (void)CADBackupToICBU:(id)u reply:(id)reply
{
  v23 = *MEMORY[0x277D85DE8];
  uCopy = u;
  replyCopy = reply;
  v8 = [uCopy url];
  v9 = v8;
  if (!v8)
  {
    v13 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_22430B000, v13, OS_LOG_TYPE_ERROR, "nil icbu URL given for backup", &buf, 2u);
    }

    goto LABEL_11;
  }

  if (([v8 startAccessingSecurityScopedResource] & 1) == 0)
  {
    v14 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_22430B000, v14, OS_LOG_TYPE_ERROR, "Failed to get access to security-scoped URL for backup icbu destination: %@", &buf, 0xCu);
    }

LABEL_11:
    replyCopy[2](replyCopy, 1001);
    goto LABEL_12;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v21 = 0x2020000000;
  conn = self->_conn;
  v22 = 1015;
  v11 = *MEMORY[0x277CF7570];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __78__CADXPCImplementation_CADBackupRestoreOperationGroup__CADBackupToICBU_reply___block_invoke;
  v16[3] = &unk_278519DF0;
  v12 = v9;
  v17 = v12;
  selfCopy = self;
  p_buf = &buf;
  if (![(ClientConnection *)conn withDatabaseID:v11 perform:v16])
  {
    *(*(&buf + 1) + 24) = 1007;
  }

  [v12 stopAccessingSecurityScopedResource];
  replyCopy[2](replyCopy, *(*(&buf + 1) + 24));
  _Block_object_dispose(&buf, 8);
LABEL_12:

  v15 = *MEMORY[0x277D85DE8];
}

void __78__CADXPCImplementation_CADBackupRestoreOperationGroup__CADBackupToICBU_reply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) _accountStoreForBackupRestore];
  v4 = CalDatabaseBackupToICBU();

  if (v4)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

- (void)CADBackupDatabaseToFileNamed:(id)named inDirectory:(id)directory includeAttachments:(BOOL)attachments reply:(id)reply
{
  v30 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  directoryCopy = directory;
  replyCopy = reply;
  if ([namedCopy length])
  {
    v13 = [directoryCopy url];
    v14 = v13;
    if (v13)
    {
      if ([v13 startAccessingSecurityScopedResource])
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v28 = 0x2020000000;
        v29 = 1015;
        v15 = [v14 URLByAppendingPathComponent:namedCopy];
        conn = self->_conn;
        v17 = *MEMORY[0x277CF7570];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __122__CADXPCImplementation_CADBackupRestoreOperationGroup__CADBackupDatabaseToFileNamed_inDirectory_includeAttachments_reply___block_invoke;
        v23[3] = &unk_278519E18;
        attachmentsCopy = attachments;
        v18 = v15;
        v24 = v18;
        p_buf = &buf;
        if (![(ClientConnection *)conn withDatabaseID:v17 perform:v23])
        {
          *(*(&buf + 1) + 24) = 1007;
        }

        [v14 stopAccessingSecurityScopedResource];
        replyCopy[2](replyCopy, *(*(&buf + 1) + 24));
        _Block_object_dispose(&buf, 8);
        goto LABEL_16;
      }

      v21 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v14;
        _os_log_impl(&dword_22430B000, v21, OS_LOG_TYPE_ERROR, "Failed to get access to security-scoped URL for backup destination directory: %@", &buf, 0xCu);
      }
    }

    else
    {
      v20 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_22430B000, v20, OS_LOG_TYPE_ERROR, "nil destination directory URL given for backup", &buf, 2u);
      }
    }

    replyCopy[2](replyCopy, 1001);
LABEL_16:

    goto LABEL_17;
  }

  v19 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_22430B000, v19, OS_LOG_TYPE_ERROR, "No file name given for backup", &buf, 2u);
  }

  replyCopy[2](replyCopy, 1001);
LABEL_17:

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t __122__CADXPCImplementation_CADBackupRestoreOperationGroup__CADBackupDatabaseToFileNamed_inDirectory_includeAttachments_reply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 48) != 1)
  {
    result = CalDatabaseBackupDatabaseFile();
    if (!result)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = CalDatabaseBackupDatabaseFileAndAttachments();
  if (result)
  {
LABEL_5:
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  return result;
}

- (BOOL)_performRestoreOperation:(id)operation
{
  operationCopy = operation;
  v11 = -1;
  databaseInitializationOptions = [(ClientConnection *)self->_conn databaseInitializationOptions];
  unitTesting = [databaseInitializationOptions unitTesting];

  if (unitTesting)
  {
    LOBYTE(v7) = operationCopy[2](operationCopy, &v11);
  }

  else
  {
    mEMORY[0x277D03928] = [MEMORY[0x277D03928] sharedConnection];
    requestDaemonStopMonitoringAgents = [mEMORY[0x277D03928] requestDaemonStopMonitoringAgents];
    v7 = operationCopy[2](operationCopy, &v11);
    [mEMORY[0x277D03928] requestDaemonStartMonitoringAgentsWithToken:requestDaemonStopMonitoringAgents];
  }

  return v7;
}

- (void)CADRestoreFromDatabaseBackupFileNamed:(id)named inDirectory:(id)directory includeAttachments:(BOOL)attachments reply:(id)reply
{
  v35 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  directoryCopy = directory;
  replyCopy = reply;
  if ([namedCopy length])
  {
    v13 = [directoryCopy url];
    v14 = v13;
    if (v13)
    {
      if ([v13 startAccessingSecurityScopedResource])
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v33 = 0x2020000000;
        v34 = 1015;
        v28 = 0;
        v29 = &v28;
        v30 = 0x2020000000;
        v31 = -1;
        v15 = [v14 URLByAppendingPathComponent:namedCopy];
        conn = self->_conn;
        v17 = *MEMORY[0x277CF7570];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __131__CADXPCImplementation_CADBackupRestoreOperationGroup__CADRestoreFromDatabaseBackupFileNamed_inDirectory_includeAttachments_reply___block_invoke;
        v23[3] = &unk_278519E68;
        v23[4] = self;
        attachmentsCopy = attachments;
        v18 = v15;
        v24 = v18;
        v25 = &v28;
        p_buf = &buf;
        if (![(ClientConnection *)conn withDatabaseID:v17 perform:v23])
        {
          *(*(&buf + 1) + 24) = 1007;
        }

        [v14 stopAccessingSecurityScopedResource];
        (*(replyCopy + 2))(replyCopy, *(*(&buf + 1) + 24), *(v29 + 6));
        _Block_object_dispose(&v28, 8);
        _Block_object_dispose(&buf, 8);
        goto LABEL_16;
      }

      v21 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v14;
        _os_log_impl(&dword_22430B000, v21, OS_LOG_TYPE_ERROR, "Failed to get access to security-scoped URL for backup directory to be restored: %@", &buf, 0xCu);
      }
    }

    else
    {
      v20 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_22430B000, v20, OS_LOG_TYPE_ERROR, "nil backup directory URL given for restore", &buf, 2u);
      }
    }

    (*(replyCopy + 2))(replyCopy, 1001, 0xFFFFFFFFLL);
LABEL_16:

    goto LABEL_17;
  }

  v19 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_22430B000, v19, OS_LOG_TYPE_ERROR, "No backup database file name given for restore", &buf, 2u);
  }

  (*(replyCopy + 2))(replyCopy, 1001, 0xFFFFFFFFLL);
LABEL_17:

  v22 = *MEMORY[0x277D85DE8];
}

void __131__CADXPCImplementation_CADBackupRestoreOperationGroup__CADRestoreFromDatabaseBackupFileNamed_inDirectory_includeAttachments_reply___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __131__CADXPCImplementation_CADBackupRestoreOperationGroup__CADRestoreFromDatabaseBackupFileNamed_inDirectory_includeAttachments_reply___block_invoke_2;
  v7[3] = &unk_278519E40;
  v11 = *(a1 + 64);
  v10 = a3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = v5;
  v9 = v6;
  if ([v4 _performRestoreOperation:v7])
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}

uint64_t __131__CADXPCImplementation_CADBackupRestoreOperationGroup__CADRestoreFromDatabaseBackupFileNamed_inDirectory_includeAttachments_reply___block_invoke_2(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(*(a1 + 40) + 8) + 24;
  if (v4 == 1)
  {
    result = CalDatabaseRestoreFromBackupDatabaseFileAndAttachments();
  }

  else
  {
    result = CalDatabaseRestoreFromBackupDatabaseFile();
  }

  *a2 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

- (void)CADRestoreFromICBU:(id)u reply:(id)reply
{
  v31 = *MEMORY[0x277D85DE8];
  uCopy = u;
  replyCopy = reply;
  v8 = [uCopy url];
  v9 = v8;
  if (!v8)
  {
    v13 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_22430B000, v13, OS_LOG_TYPE_ERROR, "nil icbu URL given for restore", &buf, 2u);
    }

    goto LABEL_11;
  }

  if (([v8 startAccessingSecurityScopedResource] & 1) == 0)
  {
    v14 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_22430B000, v14, OS_LOG_TYPE_ERROR, "Failed to get access to security-scoped URL for icbu to be restored: %@", &buf, 0xCu);
    }

LABEL_11:
    replyCopy[2](replyCopy, 1001, 0xFFFFFFFFLL);
    goto LABEL_12;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x2020000000;
  v30 = 1015;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = -1;
  conn = self->_conn;
  v11 = *MEMORY[0x277CF7570];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __81__CADXPCImplementation_CADBackupRestoreOperationGroup__CADRestoreFromICBU_reply___block_invoke;
  v19 = &unk_278519EB8;
  selfCopy = self;
  v12 = v9;
  v21 = v12;
  v22 = &v24;
  p_buf = &buf;
  if (![(ClientConnection *)conn withDatabaseID:v11 perform:&v16])
  {
    *(*(&buf + 1) + 24) = 1007;
  }

  [v12 stopAccessingSecurityScopedResource];
  replyCopy[2](replyCopy, *(*(&buf + 1) + 24), *(v25 + 6));
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&buf, 8);
LABEL_12:

  v15 = *MEMORY[0x277D85DE8];
}

void __81__CADXPCImplementation_CADBackupRestoreOperationGroup__CADRestoreFromICBU_reply___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) _accountStoreForBackupRestore];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__CADXPCImplementation_CADBackupRestoreOperationGroup__CADRestoreFromICBU_reply___block_invoke_2;
  v9[3] = &unk_278519E90;
  v13 = a3;
  v6 = *(a1 + 32);
  v10 = *(a1 + 40);
  v7 = v5;
  v8 = *(a1 + 48);
  v11 = v7;
  v12 = v8;
  if ([v6 _performRestoreOperation:v9])
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}

uint64_t __81__CADXPCImplementation_CADBackupRestoreOperationGroup__CADRestoreFromICBU_reply___block_invoke_2(void *a1, _DWORD *a2)
{
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v7 = *(a1[6] + 8);
  result = CalDatabaseRestoreFromICBU();
  *a2 = *(*(a1[6] + 8) + 24);
  return result;
}

- (void)CADDatabaseGetAlarmWithUUID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  v8 = replyCopy;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  if (dCopy)
  {
    conn = self->_conn;
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __88__CADXPCImplementation_CADAlarmEngineOperationGroup__CADDatabaseGetAlarmWithUUID_reply___block_invoke;
    v14 = &unk_278519F08;
    v15 = dCopy;
    v16 = &v17;
    [(ClientConnection *)conn withAllDatabasesPerform:&v11];
    if (v18[5])
    {
      v10 = 0;
    }

    else
    {
      v10 = 1010;
    }

    v8[2](v8, v10);
    [(ClientConnection *)self->_conn logAccessToObject:v18[5], v11, v12, v13, v14];
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 1001, 0);
  }

  _Block_object_dispose(&v17, 8);
}

void __88__CADXPCImplementation_CADAlarmEngineOperationGroup__CADDatabaseGetAlarmWithUUID_reply___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = CalDatabaseCopyAlarmWithUUID();
  if (v7)
  {
    v8 = v7;
    v9 = CADEntityCopyObjectID();
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    CFRelease(v8);
    *a4 = 1;
  }
}

- (void)CADDatabaseGetAlarmOccurrencesFromAlarmCacheWithReply:(id)reply
{
  v4 = MEMORY[0x277CBEB18];
  replyCopy = reply;
  array = [v4 array];
  v7 = objc_opt_new();
  conn = self->_conn;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __108__CADXPCImplementation_CADAlarmEngineOperationGroup__CADDatabaseGetAlarmOccurrencesFromAlarmCacheWithReply___block_invoke;
  v11[3] = &unk_278519F58;
  v11[4] = self;
  v12 = v7;
  v13 = array;
  v9 = array;
  v10 = v7;
  [(ClientConnection *)conn withAllDatabasesPerform:v11];
  replyCopy[2](replyCopy, 0, v9);

  [(ClientConnection *)self->_conn logAccessToObjects:v10];
}

void __108__CADXPCImplementation_CADAlarmEngineOperationGroup__CADDatabaseGetAlarmOccurrencesFromAlarmCacheWithReply___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __108__CADXPCImplementation_CADAlarmEngineOperationGroup__CADDatabaseGetAlarmOccurrencesFromAlarmCacheWithReply___block_invoke_2;
  v8[3] = &unk_278519F30;
  v6 = *(a1 + 32);
  v9 = *(a1 + 40);
  v7 = [v6 _getAlarmOccurrencesFromAlarmCacheForDatabase:a3 databaseID:a2 accessLogger:v8];
  [*(a1 + 48) addObjectsFromArray:v7];
}

- (id)_getAlarmOccurrencesFromAlarmCacheForDatabase:(CalDatabase *)database databaseID:(int)d accessLogger:(id)logger
{
  loggerCopy = logger;
  array = [MEMORY[0x277CBEB18] array];
  theArray = CalDatabaseCopyAlarmOccurrencesFromAlarmCache();
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    cf = CFTimeZoneCreateWithName(0, @"UTC", 1u);
    v38 = CalCopyTimeZone();
    v44 = Count;
    if (Count >= 1)
    {
      v6 = 0;
      v7 = 0x277CBE000uLL;
      while (1)
      {
        CFArrayGetValueAtIndex(theArray, v6);
        CalAlarmOccurrenceGetAlarm();
        v8 = CalAlarmCopyOwningEntity();
        if (v8)
        {
          break;
        }

LABEL_29:
        if (v44 == ++v6)
        {
          goto LABEL_30;
        }
      }

      v9 = v8;
      Type = CalEntityGetType();
      if (Type == 1)
      {
        if ([(ClientConnection *)self->_conn reminderAccessGranted])
        {
          v18 = CalCalendarCopyURI();
          started = 0;
          v17 = 0;
LABEL_26:
          v23 = *(v7 + 2728);
          CalAlarmOccurrenceGetFireDate();
          v25 = [v23 dateWithTimeIntervalSinceReferenceDate:floor(v24)];
          v47 = CalAlarmCopyUUID();
          v26 = *(v7 + 2728);
          CalAlarmGetAcknowledgedDate();
          v46 = [v26 dateWithTimeIntervalSinceReferenceDate:floor(v27)];
          v28 = [objc_alloc(MEMORY[0x277CF74C8]) initWithEntityType:4 entityID:CalAlarmGetUID() databaseID:d];
          v29 = CADEntityCopyObjectID();
          v30 = started;
          if (v29)
          {
            v43 = v18;
            v31 = [[EKAlarmOccurrence alloc] initWithAlarmID:v28 ownerID:v29 ownerDate:v17 ownerTimeZone:started ownerURI:v18 fireDate:v25 externalID:v47 acknowledgedDate:v46];
            [(EKAlarmOccurrence *)v31 dictionaryRepresentation];
            v32 = v25;
            v33 = v9;
            v35 = v34 = v7;
            [array addObject:v35];
            loggerCopy[2](loggerCopy, v29);

            v7 = v34;
            v9 = v33;
            v25 = v32;

            v18 = v43;
          }

          CFRelease(v9);

          goto LABEL_29;
        }
      }

      else if (Type == 3)
      {
        if ([(ClientConnection *)self->_conn reminderAccessGranted])
        {
          v12 = CalTaskCopyDueDate();
          if (v12)
          {
            v13 = v12;
            v14 = MEMORY[0x22AA4AC00]();
            started = CalTaskCopyDueDateTimeZone();
            if (!started)
            {
              CalAbsoluteTimeGetAbsoluteTimeInTimeZone();
              v14 = v16;
            }

            v17 = [*(v7 + 2728) dateWithTimeIntervalSinceReferenceDate:floor(v14)];
            CFRelease(v13);
          }

          else
          {
            started = 0;
            v17 = 0;
          }

          v22 = CalTaskCopyURI();
          goto LABEL_25;
        }
      }

      else if (Type == 2 && [(ClientConnection *)self->_conn eventAccessLevel])
      {
        if (CalAlarmOccurrenceGetEventOccurrence())
        {
          CalEventOccurrenceGetDate();
        }

        else
        {
          CalEventGetStartDate();
          v20 = v19;
          if (!CalCalendarItemIsFloating())
          {
LABEL_22:
            v21 = [*(v7 + 2728) dateWithTimeIntervalSinceReferenceDate:floor(v20)];
            started = CalEventCopyStartTimeZone();
            v17 = v21;
            v22 = CalEventCopyURI();
LABEL_25:
            v18 = v22;
            goto LABEL_26;
          }

          CalAbsoluteTimeGetAbsoluteTimeInTimeZone();
        }

        v20 = v11;
        goto LABEL_22;
      }

      started = 0;
      v17 = 0;
      v18 = 0;
      goto LABEL_26;
    }

LABEL_30:
    if (cf)
    {
      CFRelease(cf);
    }

    if (v38)
    {
      CFRelease(v38);
    }

    CFRelease(theArray);
  }

  return array;
}

- (void)CADObjectExists:(id)exists reply:(id)reply
{
  existsCopy = exists;
  replyCopy = reply;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1010;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  conn = self->_conn;
  v21 = 0;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __71__CADXPCImplementation_CADObjectOperationGroup__CADObjectExists_reply___block_invoke;
  v13 = &unk_278519F80;
  v16 = &v22;
  v17 = &v18;
  selfCopy = self;
  v9 = existsCopy;
  v15 = v9;
  [(ClientConnection *)conn withDatabaseForObject:v9 perform:&v10];
  (*(replyCopy + 2))(replyCopy, *(v23 + 6), *(v19 + 24));
  [(ClientConnection *)self->_conn logAccessToObject:v9, v10, v11, v12, v13, selfCopy];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
}

uint64_t __71__CADXPCImplementation_CADObjectOperationGroup__CADObjectExists_reply___block_invoke(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3)
{
  *(*(*(a1 + 48) + 8) + 24) = 0;
  result = CADEntityExistsInDatabaseAndIsAccessible(a3, *(*(a1 + 32) + 8), *(a1 + 40), 0);
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (void)CADObjectsExist:(id)exist reply:(id)reply
{
  existCopy = exist;
  replyCopy = reply;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__0;
  v14 = __Block_byref_object_dispose__0;
  v15 = 0;
  conn = self->_conn;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__CADXPCImplementation_CADObjectOperationGroup__CADObjectsExist_reply___block_invoke;
  v9[3] = &unk_278519FA8;
  v9[4] = self;
  v9[5] = &v10;
  [(ClientConnection *)conn withDatabaseForObjects:existCopy options:1 perform:v9];
  replyCopy[2](replyCopy, 0, v11[5]);
  [(ClientConnection *)self->_conn logAccessToObjects:existCopy];
  _Block_object_dispose(&v10, 8);
}

void __71__CADXPCImplementation_CADObjectOperationGroup__CADObjectsExist_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3, os_unfair_lock_s *a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = v6;
  if (a4)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v23;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v22 + 1) + 8 * i);
          if ((CADEntityExistsInDatabaseAndIsAccessible(a4, *(*(a1 + 32) + 8), v12, 0) & 1) == 0)
          {
            v13 = *(*(*(a1 + 40) + 8) + 40);
            if (!v13)
            {
              v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
              v15 = *(*(a1 + 40) + 8);
              v16 = *(v15 + 40);
              *(v15 + 40) = v14;

              v13 = *(*(*(a1 + 40) + 8) + 40);
            }

            [v13 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v17 = *(*(*(a1 + 40) + 8) + 40);
    if (v17)
    {
      [v17 addObjectsFromArray:v7];
    }

    else
    {
      v18 = [v7 mutableCopy];
      v19 = *(*(a1 + 40) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)CADObject:(id)object getPropertiesWithNames:(id)names reply:(id)reply
{
  objectCopy = object;
  namesCopy = names;
  replyCopy = reply;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  conn = self->_conn;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __88__CADXPCImplementation_CADObjectOperationGroup__CADObject_getPropertiesWithNames_reply___block_invoke;
  v15[3] = &unk_278519FD0;
  v12 = objectCopy;
  v16 = v12;
  selfCopy = self;
  v19 = &v27;
  v20 = &v21;
  v13 = namesCopy;
  v18 = v13;
  if ([(ClientConnection *)conn withDatabaseForObject:v12 perform:v15])
  {
    v14 = *(v28 + 6);
  }

  else
  {
    v14 = 1010;
    *(v28 + 6) = 1010;
  }

  replyCopy[2](replyCopy, v14, v22[5]);
  [(ClientConnection *)self->_conn logAccessToObject:v12];

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
}

void __88__CADXPCImplementation_CADObjectOperationGroup__CADObject_getPropertiesWithNames_reply___block_invoke(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = CADCopyEntityInDatabase(a3, *(a1 + 32));
  if (v4)
  {
    v5 = v4;
    if (CADEntityIsInRestrictedStore(*(*(a1 + 40) + 8), v4, 0))
    {
      *(*(*(a1 + 56) + 8) + 24) = 1013;
    }

    else
    {
      v6 = CalEntityCopyPropertyValues(*(*(a1 + 40) + 8), v5, *(a1 + 48), (*(*(a1 + 56) + 8) + 24));
      v7 = *(*(a1 + 64) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      v9 = *(*(*(a1 + 56) + 8) + 24);
      if (v9)
      {
        if (v9 != 1010)
        {
          v10 = CADLogHandle;
          if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
          {
            v11 = *(a1 + 48);
            v12 = *(a1 + 32);
            v13 = v10;
            LODWORD(v12) = [v12 entityID];
            v14 = [*(a1 + 32) entityType];
            v15 = *(*(*(a1 + 56) + 8) + 24);
            v17 = 138544130;
            v18 = v11;
            v19 = 1024;
            v20 = v12;
            v21 = 1024;
            v22 = v14;
            v23 = 1024;
            v24 = v15;
            _os_log_impl(&dword_22430B000, v13, OS_LOG_TYPE_ERROR, "Error getting property names %{public}@ of object ID {%i, %i}: %i", &v17, 0x1Eu);
          }
        }
      }
    }

    CFRelease(v5);
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1010;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)CADObjects:(id)objects getPropertiesWithNames:(id)names reply:(id)reply
{
  v8 = MEMORY[0x277CBEB18];
  replyCopy = reply;
  namesCopy = names;
  objectsCopy = objects;
  v12 = [v8 arrayWithCapacity:{objc_msgSend(objectsCopy, "count")}];
  v13 = [[CADFetchedObjectSerializer alloc] initWithConnection:self->_conn defaultPropertiesToLoad:namesCopy];

  conn = self->_conn;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __89__CADXPCImplementation_CADObjectOperationGroup__CADObjects_getPropertiesWithNames_reply___block_invoke;
  v17[3] = &unk_278519FF8;
  v17[4] = self;
  v18 = v13;
  v19 = v12;
  v15 = v12;
  v16 = v13;
  [(ClientConnection *)conn withDatabaseForObjects:objectsCopy options:1 perform:v17];
  replyCopy[2](replyCopy, 0, v15);

  [(ClientConnection *)self->_conn logAccessToObjects:objectsCopy];
}

void __89__CADXPCImplementation_CADObjectOperationGroup__CADObjects_getPropertiesWithNames_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3, os_unfair_lock_s *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        if (!a4)
        {
          goto LABEL_10;
        }

        v11 = CADCopyEntityInDatabase(a4, *(*(&v17 + 1) + 8 * v10));
        if (!v11)
        {
          goto LABEL_10;
        }

        v12 = v11;
        if (CADEntityIsInRestrictedStore(*(*(a1 + 32) + 8), v11, 0))
        {
          CFRelease(v12);
LABEL_10:
          v13 = *(a1 + 48);
LABEL_11:
          v14 = [MEMORY[0x277CBEB68] null];
          goto LABEL_12;
        }

        v14 = [*(a1 + 40) addEntity:v12];
        CFRelease(v12);
        v13 = *(a1 + 48);
        if (!v14)
        {
          goto LABEL_11;
        }

LABEL_12:
        [v13 addObject:v14];

        ++v10;
      }

      while (v8 != v10);
      v15 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v8 = v15;
    }

    while (v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)CADObject:(id)object getPropertyWithName:(id)name reply:(id)reply
{
  objectCopy = object;
  nameCopy = name;
  replyCopy = reply;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if (CADObjectPassedOrSkippedAccessCheck(objectCopy, self->_conn))
  {
    conn = self->_conn;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __85__CADXPCImplementation_CADObjectOperationGroup__CADObject_getPropertyWithName_reply___block_invoke;
    v14[3] = &unk_27851A020;
    v18 = &v24;
    v15 = objectCopy;
    selfCopy = self;
    v17 = nameCopy;
    v19 = &v20;
    if (![(ClientConnection *)conn withDatabaseForObject:v15 perform:v14])
    {
      *(v25 + 6) = 1010;
    }

    v12 = *(v25 + 6);
  }

  else
  {
    v12 = 1013;
    *(v25 + 6) = 1013;
  }

  replyCopy[2](replyCopy, v12, v21[3]);
  v13 = v21[3];
  if (v13)
  {
    CFRelease(v13);
  }

  [(ClientConnection *)self->_conn logAccessToObject:objectCopy];
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
}

void __85__CADXPCImplementation_CADObjectOperationGroup__CADObject_getPropertyWithName_reply___block_invoke(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = CADCopyEntityInDatabase(a3, *(a1 + 32));
  if (v4)
  {
    v5 = v4;
    if (CADEntityIsInRestrictedStore(*(*(a1 + 40) + 8), v4, 0))
    {
      *(*(*(a1 + 56) + 8) + 24) = 1013;
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = CalEntityCopyProperty(*(*(a1 + 40) + 8), v5, *(a1 + 48), (*(*(a1 + 64) + 8) + 24));
      v6 = *(*(*(a1 + 56) + 8) + 24);
      if (v6)
      {
        if (v6 != 1010)
        {
          v7 = CADLogHandle;
          if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
          {
            v8 = *(a1 + 48);
            v9 = *(a1 + 32);
            v10 = v7;
            LODWORD(v9) = [v9 entityID];
            v11 = [*(a1 + 32) entityType];
            v12 = *(*(*(a1 + 56) + 8) + 24);
            v14 = 138544130;
            v15 = v8;
            v16 = 1024;
            v17 = v9;
            v18 = 1024;
            v19 = v11;
            v20 = 1024;
            v21 = v12;
            _os_log_impl(&dword_22430B000, v10, OS_LOG_TYPE_ERROR, "Error getting object value for property %{public}@ of object ID {%i, %i}: %i", &v14, 0x1Eu);
          }
        }
      }
    }

    CFRelease(v5);
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1010;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)CADObject:(id)object getStringPropertyWithName:(id)name reply:(id)reply
{
  objectCopy = object;
  nameCopy = name;
  replyCopy = reply;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if (CADObjectPassedOrSkippedAccessCheck(objectCopy, self->_conn))
  {
    conn = self->_conn;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __91__CADXPCImplementation_CADObjectOperationGroup__CADObject_getStringPropertyWithName_reply___block_invoke;
    v14[3] = &unk_27851A020;
    v18 = &v24;
    v15 = objectCopy;
    selfCopy = self;
    v17 = nameCopy;
    v19 = &v20;
    if (![(ClientConnection *)conn withDatabaseForObject:v15 perform:v14])
    {
      *(v25 + 6) = 1010;
    }

    v12 = *(v25 + 6);
  }

  else
  {
    v12 = 1013;
    *(v25 + 6) = 1013;
  }

  replyCopy[2](replyCopy, v12, v21[3]);
  v13 = v21[3];
  if (v13)
  {
    CFRelease(v13);
  }

  [(ClientConnection *)self->_conn logAccessToObject:objectCopy];
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
}

void __91__CADXPCImplementation_CADObjectOperationGroup__CADObject_getStringPropertyWithName_reply___block_invoke(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = CADCopyEntityInDatabase(a3, *(a1 + 32));
  if (v4)
  {
    v5 = v4;
    if (CADEntityIsInRestrictedStore(*(*(a1 + 40) + 8), v4, 0))
    {
      *(*(*(a1 + 56) + 8) + 24) = 1013;
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = CalEntityCopyProperty(*(*(a1 + 40) + 8), v5, *(a1 + 48), (*(*(a1 + 64) + 8) + 24));
      v6 = *(*(*(a1 + 56) + 8) + 24);
      if (v6)
      {
        if (v6 != 1010)
        {
          v7 = CADLogHandle;
          if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
          {
            v8 = *(a1 + 48);
            v9 = *(a1 + 32);
            v10 = v7;
            LODWORD(v9) = [v9 entityID];
            v11 = [*(a1 + 32) entityType];
            v12 = *(*(*(a1 + 56) + 8) + 24);
            v14 = 138544130;
            v15 = v8;
            v16 = 1024;
            v17 = v9;
            v18 = 1024;
            v19 = v11;
            v20 = 1024;
            v21 = v12;
            _os_log_impl(&dword_22430B000, v10, OS_LOG_TYPE_ERROR, "Error getting string value for property %{public}@ of object ID {%i, %i}: %i", &v14, 0x1Eu);
          }
        }
      }
    }

    CFRelease(v5);
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1010;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)CADObject:(id)object getNumberPropertyWithName:(id)name reply:(id)reply
{
  objectCopy = object;
  nameCopy = name;
  replyCopy = reply;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if (CADObjectPassedOrSkippedAccessCheck(objectCopy, self->_conn))
  {
    conn = self->_conn;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __91__CADXPCImplementation_CADObjectOperationGroup__CADObject_getNumberPropertyWithName_reply___block_invoke;
    v14[3] = &unk_27851A020;
    v18 = &v24;
    v15 = objectCopy;
    selfCopy = self;
    v17 = nameCopy;
    v19 = &v20;
    if (![(ClientConnection *)conn withDatabaseForObject:v15 perform:v14])
    {
      *(v25 + 6) = 1010;
    }

    v12 = *(v25 + 6);
  }

  else
  {
    v12 = 1013;
    *(v25 + 6) = 1013;
  }

  replyCopy[2](replyCopy, v12, v21[3]);
  v13 = v21[3];
  if (v13)
  {
    CFRelease(v13);
  }

  [(ClientConnection *)self->_conn logAccessToObject:objectCopy];
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
}

void __91__CADXPCImplementation_CADObjectOperationGroup__CADObject_getNumberPropertyWithName_reply___block_invoke(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = CADCopyEntityInDatabase(a3, *(a1 + 32));
  if (v4)
  {
    v5 = v4;
    if (CADEntityIsInRestrictedStore(*(*(a1 + 40) + 8), v4, 0))
    {
      *(*(*(a1 + 56) + 8) + 24) = 1013;
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = CalEntityCopyProperty(*(*(a1 + 40) + 8), v5, *(a1 + 48), (*(*(a1 + 64) + 8) + 24));
      v6 = *(*(*(a1 + 56) + 8) + 24);
      if (v6)
      {
        if (v6 != 1010)
        {
          v7 = CADLogHandle;
          if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
          {
            v8 = *(a1 + 48);
            v9 = *(a1 + 32);
            v10 = v7;
            LODWORD(v9) = [v9 entityID];
            v11 = [*(a1 + 32) entityType];
            v12 = *(*(*(a1 + 56) + 8) + 24);
            v14 = 138544130;
            v15 = v8;
            v16 = 1024;
            v17 = v9;
            v18 = 1024;
            v19 = v11;
            v20 = 1024;
            v21 = v12;
            _os_log_impl(&dword_22430B000, v10, OS_LOG_TYPE_ERROR, "Error getting number value for property %{public}@ of object ID {%i, %i}: %i", &v14, 0x1Eu);
          }
        }
      }
    }

    CFRelease(v5);
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1010;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)CADObject:(id)object getDatePropertyWithName:(id)name reply:(id)reply
{
  objectCopy = object;
  nameCopy = name;
  replyCopy = reply;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if (CADObjectPassedOrSkippedAccessCheck(objectCopy, self->_conn))
  {
    conn = self->_conn;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __89__CADXPCImplementation_CADObjectOperationGroup__CADObject_getDatePropertyWithName_reply___block_invoke;
    v14[3] = &unk_27851A020;
    v18 = &v24;
    v15 = objectCopy;
    selfCopy = self;
    v17 = nameCopy;
    v19 = &v20;
    if (![(ClientConnection *)conn withDatabaseForObject:v15 perform:v14])
    {
      *(v25 + 6) = 1010;
    }

    v12 = *(v25 + 6);
  }

  else
  {
    v12 = 1013;
    *(v25 + 6) = 1013;
  }

  replyCopy[2](replyCopy, v12, v21[3]);
  v13 = v21[3];
  if (v13)
  {
    CFRelease(v13);
  }

  [(ClientConnection *)self->_conn logAccessToObject:objectCopy];
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
}

void __89__CADXPCImplementation_CADObjectOperationGroup__CADObject_getDatePropertyWithName_reply___block_invoke(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = CADCopyEntityInDatabase(a3, *(a1 + 32));
  if (v4)
  {
    v5 = v4;
    if (CADEntityIsInRestrictedStore(*(*(a1 + 40) + 8), v4, 0))
    {
      *(*(*(a1 + 56) + 8) + 24) = 1013;
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = CalEntityCopyProperty(*(*(a1 + 40) + 8), v5, *(a1 + 48), (*(*(a1 + 64) + 8) + 24));
      v6 = *(*(*(a1 + 56) + 8) + 24);
      if (v6)
      {
        if (v6 != 1010)
        {
          v7 = CADLogHandle;
          if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
          {
            v8 = *(a1 + 48);
            v9 = *(a1 + 32);
            v10 = v7;
            LODWORD(v9) = [v9 entityID];
            v11 = [*(a1 + 32) entityType];
            v12 = *(*(*(a1 + 56) + 8) + 24);
            v14 = 138544130;
            v15 = v8;
            v16 = 1024;
            v17 = v9;
            v18 = 1024;
            v19 = v11;
            v20 = 1024;
            v21 = v12;
            _os_log_impl(&dword_22430B000, v10, OS_LOG_TYPE_ERROR, "Error getting date value for property %{public}@ of object ID {%i, %i}: %i", &v14, 0x1Eu);
          }
        }
      }
    }

    CFRelease(v5);
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1010;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)CADObject:(id)object getDataPropertyWithName:(id)name reply:(id)reply
{
  objectCopy = object;
  nameCopy = name;
  replyCopy = reply;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if (CADObjectPassedOrSkippedAccessCheck(objectCopy, self->_conn))
  {
    conn = self->_conn;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __89__CADXPCImplementation_CADObjectOperationGroup__CADObject_getDataPropertyWithName_reply___block_invoke;
    v14[3] = &unk_27851A020;
    v18 = &v24;
    v15 = objectCopy;
    selfCopy = self;
    v17 = nameCopy;
    v19 = &v20;
    if (![(ClientConnection *)conn withDatabaseForObject:v15 perform:v14])
    {
      *(v25 + 6) = 1010;
    }

    v12 = *(v25 + 6);
  }

  else
  {
    v12 = 1013;
    *(v25 + 6) = 1013;
  }

  replyCopy[2](replyCopy, v12, v21[3]);
  v13 = v21[3];
  if (v13)
  {
    CFRelease(v13);
  }

  [(ClientConnection *)self->_conn logAccessToObject:objectCopy];
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
}

void __89__CADXPCImplementation_CADObjectOperationGroup__CADObject_getDataPropertyWithName_reply___block_invoke(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = CADCopyEntityInDatabase(a3, *(a1 + 32));
  if (v4)
  {
    v5 = v4;
    if (CADEntityIsInRestrictedStore(*(*(a1 + 40) + 8), v4, 0))
    {
      *(*(*(a1 + 56) + 8) + 24) = 1013;
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = CalEntityCopyProperty(*(*(a1 + 40) + 8), v5, *(a1 + 48), (*(*(a1 + 64) + 8) + 24));
      v6 = *(*(*(a1 + 56) + 8) + 24);
      if (v6)
      {
        if (v6 != 1010)
        {
          v7 = CADLogHandle;
          if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
          {
            v8 = *(a1 + 48);
            v9 = *(a1 + 32);
            v10 = v7;
            LODWORD(v9) = [v9 entityID];
            v11 = [*(a1 + 32) entityType];
            v12 = *(*(*(a1 + 56) + 8) + 24);
            v14 = 138544130;
            v15 = v8;
            v16 = 1024;
            v17 = v9;
            v18 = 1024;
            v19 = v11;
            v20 = 1024;
            v21 = v12;
            _os_log_impl(&dword_22430B000, v10, OS_LOG_TYPE_ERROR, "Error getting string value for property %{public}@ of object ID {%i, %i}: %i", &v14, 0x1Eu);
          }
        }
      }
    }

    CFRelease(v5);
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1010;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)_requiresSpecialEntitlementToReadSecurityScopedURLWrapperForProperty:(id)property
{
  propertyCopy = property;
  if ([propertyCopy isEqualToString:*MEMORY[0x277CF71C8]])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [propertyCopy isEqualToString:*MEMORY[0x277CF71C0]] ^ 1;
  }

  return v4;
}

- (void)CADObject:(id)object getSecurityScopedURLWrapperPropertyWithName:(id)name reply:(id)reply
{
  objectCopy = object;
  nameCopy = name;
  replyCopy = reply;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if (CADObjectPassedOrSkippedAccessCheck(objectCopy, self->_conn))
  {
    conn = self->_conn;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __109__CADXPCImplementation_CADObjectOperationGroup__CADObject_getSecurityScopedURLWrapperPropertyWithName_reply___block_invoke;
    v14[3] = &unk_27851A048;
    v15 = objectCopy;
    selfCopy = self;
    v18 = &v24;
    v17 = nameCopy;
    v19 = &v20;
    if (![(ClientConnection *)conn withDatabaseForObject:v15 perform:v14])
    {
      *(v25 + 6) = 1010;
    }

    v12 = *(v25 + 6);
  }

  else
  {
    v12 = 1013;
    *(v25 + 6) = 1013;
  }

  replyCopy[2](replyCopy, v12, v21[3]);
  v13 = v21[3];
  if (v13)
  {
    CFRelease(v13);
  }

  [(ClientConnection *)self->_conn logAccessToObject:objectCopy];
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
}

void __109__CADXPCImplementation_CADObjectOperationGroup__CADObject_getSecurityScopedURLWrapperPropertyWithName_reply___block_invoke(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = CADCopyEntityInDatabase(a3, *(a1 + 32));
  v5 = [*(*(a1 + 40) + 8) permissionValidator];
  if (v4)
  {
    if (CADEntityIsInRestrictedStore(*(*(a1 + 40) + 8), v4, 0) || ([v5 canAccessProcedureAlarms] & 1) == 0 && objc_msgSend(*(a1 + 40), "_requiresSpecialEntitlementToReadSecurityScopedURLWrapperForProperty:", *(a1 + 48)))
    {
      *(*(*(a1 + 56) + 8) + 24) = 1013;
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = CalEntityCopyProperty(*(*(a1 + 40) + 8), v4, *(a1 + 48), (*(*(a1 + 64) + 8) + 24));
      v7 = *(*(*(a1 + 56) + 8) + 24);
      if (v7)
      {
        if (v7 != 1010)
        {
          v8 = CADLogHandle;
          if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
          {
            v9 = *(a1 + 48);
            v10 = *(a1 + 32);
            v11 = v8;
            LODWORD(v10) = [v10 entityID];
            v12 = [*(a1 + 32) entityType];
            v13 = *(*(*(a1 + 56) + 8) + 24);
            v14 = 138544130;
            v15 = v9;
            v16 = 1024;
            v17 = v10;
            v18 = 1024;
            v19 = v12;
            v20 = 1024;
            v21 = v13;
            _os_log_impl(&dword_22430B000, v11, OS_LOG_TYPE_ERROR, "Error getting SecurityScopedURLWrapper value for property %{public}@ of object ID {%i, %i}: %i", &v14, 0x1Eu);
          }
        }
      }
    }

    CFRelease(v4);
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1010;
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)CADObject:(id)object getRelatedObjectWithRelationName:(id)name reply:(id)reply
{
  objectCopy = object;
  nameCopy = name;
  replyCopy = reply;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  if (CADObjectPassedOrSkippedAccessCheck(objectCopy, self->_conn))
  {
    conn = self->_conn;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __98__CADXPCImplementation_CADObjectOperationGroup__CADObject_getRelatedObjectWithRelationName_reply___block_invoke;
    v15[3] = &unk_27851A020;
    v19 = &v27;
    v16 = objectCopy;
    selfCopy = self;
    v18 = nameCopy;
    v20 = &v21;
    if (![(ClientConnection *)conn withDatabaseForObject:v16 perform:v15])
    {
      *(v28 + 6) = 1010;
    }

    v12 = *(v28 + 6);
  }

  else
  {
    v12 = 1013;
    *(v28 + 6) = 1013;
  }

  replyCopy[2](replyCopy, v12, v22[5]);
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v14 = v13;
  if (objectCopy)
  {
    [v13 addObject:objectCopy];
  }

  if (v22[5])
  {
    [v14 addObject:?];
  }

  [(ClientConnection *)self->_conn logAccessToObjects:v14];

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
}

void __98__CADXPCImplementation_CADObjectOperationGroup__CADObject_getRelatedObjectWithRelationName_reply___block_invoke(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = CADCopyEntityInDatabase(a3, *(a1 + 32));
  if (v4)
  {
    v5 = v4;
    if (CADEntityIsInRestrictedStore(*(*(a1 + 40) + 8), v4, 0))
    {
      *(*(*(a1 + 56) + 8) + 24) = 1013;
    }

    else
    {
      cf = 0;
      *(*(*(a1 + 56) + 8) + 24) = CalEntityCopyProperty(*(*(a1 + 40) + 8), v5, *(a1 + 48), &cf);
      if (cf)
      {
        v6 = CADEntityCopyObjectID();
        v7 = *(*(a1 + 64) + 8);
        v8 = *(v7 + 40);
        *(v7 + 40) = v6;

        CFRelease(cf);
      }

      v9 = *(*(*(a1 + 56) + 8) + 24);
      if (v9)
      {
        if (v9 != 1010)
        {
          v10 = CADLogHandle;
          if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
          {
            v11 = *(a1 + 48);
            v12 = *(a1 + 32);
            v13 = v10;
            LODWORD(v12) = [v12 entityID];
            v14 = [*(a1 + 32) entityType];
            v15 = *(*(*(a1 + 56) + 8) + 24);
            *buf = 138544130;
            v19 = v11;
            v20 = 1024;
            v21 = v12;
            v22 = 1024;
            v23 = v14;
            v24 = 1024;
            v25 = v15;
            _os_log_impl(&dword_22430B000, v13, OS_LOG_TYPE_ERROR, "Error getting related value for property %{public}@ of object ID {%i, %i}: %i", buf, 0x1Eu);
          }
        }
      }
    }

    CFRelease(v5);
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1010;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)CADObject:(id)object getRelatedObjectsWithRelationName:(id)name reply:(id)reply
{
  objectCopy = object;
  nameCopy = name;
  replyCopy = reply;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  if (CADObjectPassedOrSkippedAccessCheck(objectCopy, self->_conn))
  {
    conn = self->_conn;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __99__CADXPCImplementation_CADObjectOperationGroup__CADObject_getRelatedObjectsWithRelationName_reply___block_invoke;
    v19[3] = &unk_27851A020;
    v23 = &v29;
    v20 = objectCopy;
    selfCopy = self;
    v22 = nameCopy;
    v24 = &v25;
    [(ClientConnection *)conn withDatabaseForObject:v20 perform:v19];
  }

  else
  {
    *(v30 + 6) = 1013;
  }

  v12 = v26[3];
  v13 = self->_conn;
  allObjects = [v12 allObjects];
  v15 = [allObjects arrayByAddingObject:objectCopy];
  [(ClientConnection *)v13 logAccessToObjects:v15];

  replyCopy[2](replyCopy, *(v30 + 6), v12);
  v16 = MEMORY[0x277CBEB18];
  allObjects2 = [v12 allObjects];
  v18 = [v16 arrayWithArray:allObjects2];

  if (objectCopy)
  {
    [v18 addObject:objectCopy];
  }

  [(ClientConnection *)self->_conn logAccessToObjects:v18];

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
}

void __99__CADXPCImplementation_CADObjectOperationGroup__CADObject_getRelatedObjectsWithRelationName_reply___block_invoke(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = CADCopyEntityInDatabase(a3, *(a1 + 32));
  if (v4)
  {
    v5 = v4;
    if (CADEntityIsInRestrictedStore(*(*(a1 + 40) + 8), v4, 0))
    {
      *(*(*(a1 + 56) + 8) + 24) = 1013;
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = CalEntityCopyProperty(*(*(a1 + 40) + 8), v5, *(a1 + 48), (*(*(a1 + 64) + 8) + 24));
      v6 = *(*(*(a1 + 56) + 8) + 24);
      if (v6)
      {
        if (v6 != 1010)
        {
          v7 = CADLogHandle;
          if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
          {
            v8 = *(a1 + 48);
            v9 = *(a1 + 32);
            v10 = v7;
            LODWORD(v9) = [v9 entityID];
            v11 = [*(a1 + 32) entityType];
            v12 = *(*(*(a1 + 56) + 8) + 24);
            v14 = 138544130;
            v15 = v8;
            v16 = 1024;
            v17 = v9;
            v18 = 1024;
            v19 = v11;
            v20 = 1024;
            v21 = v12;
            _os_log_impl(&dword_22430B000, v10, OS_LOG_TYPE_ERROR, "Error getting related objects for property %{public}@ of object ID {%i, %i}: %i", &v14, 0x1Eu);
          }
        }
      }
    }

    CFRelease(v5);
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1010;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)CADObjectIsManaged:(id)managed reply:(id)reply
{
  managedCopy = managed;
  replyCopy = reply;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  conn = self->_conn;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __74__CADXPCImplementation_CADObjectOperationGroup__CADObjectIsManaged_reply___block_invoke;
  v14 = &unk_27851A070;
  v9 = managedCopy;
  v15 = v9;
  selfCopy = self;
  v17 = &v23;
  v18 = &v19;
  if ([(ClientConnection *)conn withDatabaseForObject:v9 perform:&v11])
  {
    v10 = *(v24 + 6);
  }

  else
  {
    v10 = 1010;
    *(v24 + 6) = 1010;
  }

  replyCopy[2](replyCopy, v10, *(v20 + 24));
  [(ClientConnection *)self->_conn logAccessToObject:v9, v11, v12, v13, v14];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
}

void __74__CADXPCImplementation_CADObjectOperationGroup__CADObjectIsManaged_reply___block_invoke(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3)
{
  v4 = CADCopyEntityInDatabase(a3, *(a1 + 32));
  if (v4)
  {
    v5 = v4;
    if (CADEntityIsInRestrictedStore(*(*(a1 + 40) + 8), v4, 0))
    {
      *(*(*(a1 + 48) + 8) + 24) = 1013;
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = CADEntityIsInManagedStore(*(*(a1 + 40) + 8), v5);
    }

    CFRelease(v5);
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1010;
  }
}

- (void)CADDatabaseGetErrorCount:(id)count
{
  countCopy = count;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  conn = self->_conn;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__CADXPCImplementation_CADErrorOperationGroup__CADDatabaseGetErrorCount___block_invoke;
  v6[3] = &unk_27851A098;
  v6[4] = &v11;
  v6[5] = &v7;
  [(ClientConnection *)conn withAllDatabasesPerform:v6];
  (*(countCopy + 2))(countCopy, *(v12 + 6), *(v8 + 6));
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
}

void __73__CADXPCImplementation_CADErrorOperationGroup__CADDatabaseGetErrorCount___block_invoke(uint64_t a1)
{
  v2 = CalDatabaseCopyAllErrors();
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 40) + 8) + 24) += CFArrayGetCount(v2);

    CFRelease(v3);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1015;
  }
}

- (void)CADDatabaseGetEventsWithErrorsPerSource:(id)source
{
  sourceCopy = source;
  v5 = objc_opt_new();
  conn = self->_conn;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __88__CADXPCImplementation_CADErrorOperationGroup__CADDatabaseGetEventsWithErrorsPerSource___block_invoke;
  v8[3] = &unk_27851A0C0;
  v9 = v5;
  v7 = v5;
  [(ClientConnection *)conn withAllDatabasesPerform:v8];
  sourceCopy[2](sourceCopy, 0, v7);

  [(ClientConnection *)self->_conn logAccessToObjects:v7];
}

void __88__CADXPCImplementation_CADErrorOperationGroup__CADDatabaseGetEventsWithErrorsPerSource___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = CalDatabaseGetIDOfOneEventWithAnErrorPerSource();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        [*(a1 + 32) addObject:v7];
        v8 = *(a1 + 32);
        v9 = [v2 objectForKeyedSubscript:v7];
        [v8 addObject:v9];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)CADDatabaseGetSharedCalendarInvitationsWithReply:(id)reply
{
  v4 = MEMORY[0x277CBEB18];
  replyCopy = reply;
  array = [v4 array];
  conn = self->_conn;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __111__CADXPCImplementation_CADNotificationMonitorOperationGroup__CADDatabaseGetSharedCalendarInvitationsWithReply___block_invoke;
  v12 = &unk_27851A0E8;
  selfCopy = self;
  v14 = array;
  v8 = array;
  [(ClientConnection *)conn withAllDatabasesPerform:&v9];
  replyCopy[2](replyCopy, 0, v8);

  [(ClientConnection *)self->_conn logAccessToObjects:v8, v9, v10, v11, v12, selfCopy];
}

void __111__CADXPCImplementation_CADNotificationMonitorOperationGroup__CADDatabaseGetSharedCalendarInvitationsWithReply___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = CalDatabaseCopyOfAllCalendarsInStoreWithOptions();
  if (v4)
  {
    v5 = v4;
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
        if (CalendarCanContainAnAllowedEntityType(ValueAtIndex, *(*(a1 + 32) + 8)))
        {
          v10 = [objc_alloc(MEMORY[0x277CF74C8]) initWithEntityType:1 entityID:CalCalendarGetUID() databaseID:a2];
          [*(a1 + 40) addObject:v10];
        }
      }
    }

    CFRelease(v5);
  }
}

- (void)CADCalendarSetClearedFromNotificationCenter:(id)center error:(id)error
{
  centerCopy = center;
  errorCopy = error;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  conn = self->_conn;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __112__CADXPCImplementation_CADNotificationMonitorOperationGroup__CADCalendarSetClearedFromNotificationCenter_error___block_invoke;
  v11[3] = &unk_27851A110;
  v9 = centerCopy;
  selfCopy = self;
  v14 = &v15;
  v12 = v9;
  if ([(ClientConnection *)conn withDatabaseForObject:v9 perform:v11])
  {
    v10 = *(v16 + 6);
  }

  else
  {
    v10 = 1010;
    *(v16 + 6) = 1010;
  }

  errorCopy[2](errorCopy, v10);
  [(ClientConnection *)self->_conn logAccessToObject:v9];

  _Block_object_dispose(&v15, 8);
}

void __112__CADXPCImplementation_CADNotificationMonitorOperationGroup__CADCalendarSetClearedFromNotificationCenter_error___block_invoke(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3)
{
  v4 = CADCopyEntityInDatabase(a3, *(a1 + 32));
  if (!v4)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1010;
    return;
  }

  v5 = v4;
  if ((![*(*(a1 + 40) + 8) eventAccessLevel] || (CalCalendarCanContainEntityType() & 1) == 0) && (!objc_msgSend(*(*(a1 + 40) + 8), "reminderAccessGranted") || !CalCalendarCanContainEntityType()))
  {
    v6 = 1013;
    goto LABEL_10;
  }

  CalCalendarSetInvitationStatus();
  if ((CalDatabaseSave() & 1) == 0)
  {
    v6 = 1007;
LABEL_10:
    *(*(*(a1 + 48) + 8) + 24) = v6;
  }

  CFRelease(v5);
}

- (void)CADDatabaseGetResourceChanges:(id)changes
{
  v4 = MEMORY[0x277CBEB18];
  changesCopy = changes;
  array = [v4 array];
  conn = self->_conn;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __92__CADXPCImplementation_CADNotificationMonitorOperationGroup__CADDatabaseGetResourceChanges___block_invoke;
  v12 = &unk_27851A0E8;
  selfCopy = self;
  v14 = array;
  v8 = array;
  [(ClientConnection *)conn withAllDatabasesPerform:&v9];
  changesCopy[2](changesCopy, 0, v8);

  [(ClientConnection *)self->_conn logAccessToObjects:v8, v9, v10, v11, v12, selfCopy];
}

void __92__CADXPCImplementation_CADNotificationMonitorOperationGroup__CADDatabaseGetResourceChanges___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = CalDatabaseCopyOfAllNotifications();
  if (v4)
  {
    v5 = v4;
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v7 = Count;
      v8 = 0;
      v21 = Count;
      v22 = v5;
      do
      {
        CFArrayGetValueAtIndex(v5, v8);
        if ((CalNotificationGetEntityType() & 0xFFFFFFFD) == 0x11)
        {
          v9 = CalResourceChangeNotificationCopyChanges();
          if (v9)
          {
            v10 = v9;
            v11 = CFArrayGetCount(v9);
            if (v11 >= 1)
            {
              v12 = v11;
              for (i = 0; v12 != i; ++i)
              {
                CFArrayGetValueAtIndex(v10, i);
                v14 = CalResourceChangeCopyCalendarItem();
                if (v14)
                {
                  v15 = v14;
                  Type = CalEntityGetType();
                  if (Type == 3)
                  {
                    if (![*(*(a1 + 32) + 8) reminderAccessGranted])
                    {
                      goto LABEL_17;
                    }
                  }

                  else if (Type == 2 && ![*(*(a1 + 32) + 8) eventAccessLevel])
                  {
LABEL_17:
                    CFRelease(v15);
                    continue;
                  }

                  CFRelease(v15);
                }

                else
                {
                  v17 = CalResourceChangeCopyCalendar();
                  if (v17)
                  {
                    v18 = v17;
                    CanContainAnAllowedEntityType = CalendarCanContainAnAllowedEntityType(v17, *(*(a1 + 32) + 8));
                    CFRelease(v18);
                    if (!CanContainAnAllowedEntityType)
                    {
                      continue;
                    }
                  }
                }

                v20 = [objc_alloc(MEMORY[0x277CF74C8]) initWithEntityType:18 entityID:CalResourceChangeGetUID() databaseID:a2];
                [*(a1 + 40) addObject:v20];
              }
            }

            CFRelease(v10);
            v7 = v21;
            v5 = v22;
          }
        }

        ++v8;
      }

      while (v8 != v7);
    }

    CFRelease(v5);
  }
}

- (void)CADDatabaseGetInviteReplyNotifications:(id)notifications
{
  v4 = MEMORY[0x277CBEB18];
  notificationsCopy = notifications;
  array = [v4 array];
  conn = self->_conn;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __101__CADXPCImplementation_CADNotificationMonitorOperationGroup__CADDatabaseGetInviteReplyNotifications___block_invoke;
  v12 = &unk_27851A0E8;
  selfCopy = self;
  v14 = array;
  v8 = array;
  [(ClientConnection *)conn withAllDatabasesPerform:&v9];
  notificationsCopy[2](notificationsCopy, 0, v8);

  [(ClientConnection *)self->_conn logAccessToObjects:v8, v9, v10, v11, v12, selfCopy];
}

void __101__CADXPCImplementation_CADNotificationMonitorOperationGroup__CADDatabaseGetInviteReplyNotifications___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = CalDatabaseCopyOfAllNotifications();
  if (v4)
  {
    v5 = v4;
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; v7 != i; ++i)
      {
        CFArrayGetValueAtIndex(v5, i);
        if (CalNotificationGetEntityType() != 16)
        {
          continue;
        }

        v9 = CalInviteReplyNotificationCopyHostURL();
        if (!v9)
        {
          continue;
        }

        v10 = v9;
        CFURLGetString(v9);
        v11 = CalDatabaseCopyCalendarWithExternalIDInStore();
        if (v11)
        {
          v12 = v11;
          CFRelease(v10);
          v10 = v12;
        }

        else
        {
          v13 = CFURLGetString(v10);
          MutableCopy = CFStringCreateMutableCopy(0, 0, v13);
          if (!MutableCopy)
          {
            goto LABEL_14;
          }

          v15 = MutableCopy;
          CFStringAppend(MutableCopy, @"/");
          v16 = CalDatabaseCopyCalendarWithExternalIDInStore();
          CFRelease(v15);
          CFRelease(v10);
          v10 = v16;
          if (!v16)
          {
            goto LABEL_15;
          }
        }

        if (CalEntityGetType() != 1 || CalendarCanContainAnAllowedEntityType(v10, *(*(a1 + 32) + 8)))
        {
LABEL_14:
          CFRelease(v10);
LABEL_15:
          v17 = [objc_alloc(MEMORY[0x277CF74C8]) initWithEntityType:102 entityID:CalNotificationGetUID() databaseID:a2];
          [*(a1 + 40) addObject:v17];

          continue;
        }

        CFRelease(v10);
      }
    }

    CFRelease(v5);
  }
}

- (void)CADDatabaseGetInboxRepliedSectionItems:(id)items
{
  v28 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  conn = self->_conn;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __101__CADXPCImplementation_CADNotificationMonitorOperationGroup__CADDatabaseGetInboxRepliedSectionItems___block_invoke;
  v25[3] = &unk_27851A0C0;
  v9 = v5;
  v26 = v9;
  [(ClientConnection *)conn withAllDatabasesPerform:v25];
  if ([v9 count])
  {
    v19 = v9;
    v20 = itemsCopy;
    v10 = [v9 sortedArrayUsingComparator:&__block_literal_global_23];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          v16 = [v15 objectForKeyedSubscript:@"kObjectIDKey"];
          v17 = [v15 objectForKeyedSubscript:@"kOccurrenceDateKey"];
          [v6 addObject:v16];
          [v7 addObject:v17];
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v12);
    }

    itemsCopy = v20;
    v20[2](v20, 0, v6, v7);
    [(ClientConnection *)self->_conn logAccessToObjects:v6];

    v9 = v19;
  }

  else
  {
    itemsCopy[2](itemsCopy, 0, v6, v7);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __101__CADXPCImplementation_CADNotificationMonitorOperationGroup__CADDatabaseGetInboxRepliedSectionItems___block_invoke(uint64_t a1, unsigned int a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = CalDatabaseCopyOfAllRepliedEventsInStore();
  if ([v3 count])
  {
    v18 = [v3 indexesOfObjectsPassingTest:&__block_literal_global_3];
    [v3 objectsAtIndexes:?];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = v24 = 0u;
    v4 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v22;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v22 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v21 + 1) + 8 * i);
          v9 = [objc_alloc(MEMORY[0x277CF74C8]) initWithEntityType:2 entityID:CalEntityGetID() databaseID:a2];
          v10 = CalEventOccurrenceCreateForInitialOccurrence();
          CalEventOccurrenceGetDate();
          v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
          CFRelease(v10);
          v25[0] = @"kParticipationStatusModifiedDateKey";
          v12 = MEMORY[0x277CCABB0];
          CalEventGetParticipationStatusModifiedDate();
          v13 = [v12 numberWithDouble:?];
          v26[0] = v13;
          v25[1] = @"kStartDateKey";
          v14 = MEMORY[0x277CCABB0];
          CalEventGetStartDate();
          v15 = [v14 numberWithDouble:?];
          v26[1] = v15;
          v26[2] = v9;
          v25[2] = @"kObjectIDKey";
          v25[3] = @"kOccurrenceDateKey";
          v26[3] = v11;
          v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:4];

          [*(a1 + 32) addObject:v16];
        }

        v5 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v5);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __101__CADXPCImplementation_CADNotificationMonitorOperationGroup__CADDatabaseGetInboxRepliedSectionItems___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (CalCalendarItemGetStatus() == 3)
  {
    v3 = 0;
    goto LABEL_9;
  }

  v4 = CalCalendarItemCopyCalendar();
  v5 = CalCalendarCopyStore();
  if (!v5)
  {
    v3 = 0;
    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v6 = v5;
  if (!CalStoreGetSupportsIncomingInvitations() || (CalStoreIsFacebook() & 1) != 0 || CalStoreGetType() == 1 && CalEventGetParticipationStatus() == 2)
  {
    v7 = 0;
  }

  else
  {
    v9 = CalCalendarItemCopyOrganizer();
    if (v9)
    {
      v10 = v9;
      v7 = CalOrganizerIsSelf() ^ 1;
      CFRelease(v10);
    }

    else
    {
      v7 = 1;
    }
  }

  v3 = ([objc_opt_class() storeIsReadOnlyDelegate:v6] ^ 1) & v7;
  CFRelease(v6);
  if (v4)
  {
LABEL_8:
    CFRelease(v4);
  }

LABEL_9:

  return v3;
}

uint64_t __101__CADXPCImplementation_CADNotificationMonitorOperationGroup__CADDatabaseGetInboxRepliedSectionItems___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 objectForKeyedSubscript:@"kParticipationStatusModifiedDateKey"];
  [v6 doubleValue];
  v8 = v7;

  v9 = [v4 objectForKeyedSubscript:@"kParticipationStatusModifiedDateKey"];
  [v9 doubleValue];
  v11 = v10;

  v12 = [v5 objectForKeyedSubscript:@"kStartDateKey"];

  [v12 doubleValue];
  v14 = v13;

  v15 = [v4 objectForKeyedSubscript:@"kStartDateKey"];

  [v15 doubleValue];
  v17 = v16;

  v18 = vabdd_f64(v8, *MEMORY[0x277CF78F0]);
  v19 = vabdd_f64(v11, *MEMORY[0x277CF78F0]);
  if (v18 < 2.22044605e-16 || v19 < 2.22044605e-16)
  {
    if (v18 < 2.22044605e-16 && v19 < 2.22044605e-16)
    {
      if (v14 >= v17)
      {
        return v14 > v17;
      }

      else
      {
        return -1;
      }
    }

    else if (v18 < 2.22044605e-16)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  else if (v8 >= v11)
  {
    if (v8 <= v11)
    {
      return 0;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    return 1;
  }
}

- (void)CADResourceChange:(id)change setAlertedWithError:(id)error
{
  changeCopy = change;
  errorCopy = error;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  conn = self->_conn;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __100__CADXPCImplementation_CADNotificationMonitorOperationGroup__CADResourceChange_setAlertedWithError___block_invoke;
  v11[3] = &unk_27851A110;
  v9 = changeCopy;
  selfCopy = self;
  v14 = &v15;
  v12 = v9;
  if ([(ClientConnection *)conn withDatabaseForObject:v9 perform:v11])
  {
    v10 = *(v16 + 6);
  }

  else
  {
    v10 = 1010;
    *(v16 + 6) = 1010;
  }

  errorCopy[2](errorCopy, v10);
  [(ClientConnection *)self->_conn logAccessToObject:v9];

  _Block_object_dispose(&v15, 8);
}

void __100__CADXPCImplementation_CADNotificationMonitorOperationGroup__CADResourceChange_setAlertedWithError___block_invoke(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3)
{
  v4 = CADCopyEntityInDatabase(a3, *(a1 + 32));
  if (!v4)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1010;
    return;
  }

  v5 = v4;
  v6 = CalResourceChangeCopyCalendarItem();
  if (v6 && (CalEntityGetType() == 2 && ![*(*(a1 + 40) + 8) eventAccessLevel] || CalEntityGetType() == 3 && (objc_msgSend(*(*(a1 + 40) + 8), "reminderAccessGranted") & 1) == 0))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1013;
  }

  else
  {
    CalResourceChangeSetAlerted();
    if ((CalDatabaseSave() & 1) == 0)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1007;
    }

    if (!v6)
    {
      goto LABEL_14;
    }
  }

  CFRelease(v6);
LABEL_14:

  CFRelease(v5);
}

- (void)CADEventSetInvitationStatus:(int)status forEvents:(id)events error:(id)error
{
  eventsCopy = events;
  errorCopy = error;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  conn = self->_conn;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __106__CADXPCImplementation_CADNotificationMonitorOperationGroup__CADEventSetInvitationStatus_forEvents_error___block_invoke;
  v11[3] = &unk_27851A178;
  v11[4] = &v13;
  statusCopy = status;
  [(ClientConnection *)conn withDatabaseForObjects:eventsCopy perform:v11];
  errorCopy[2](errorCopy, *(v14 + 6));
  [(ClientConnection *)self->_conn logAccessToObjects:eventsCopy];
  _Block_object_dispose(&v13, 8);
}

void __106__CADXPCImplementation_CADNotificationMonitorOperationGroup__CADEventSetInvitationStatus_forEvents_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, os_unfair_lock_s *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  os_unfair_lock_lock(a4 + 20);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (!_CADGetEntity(a4, *(*(&v14 + 1) + 8 * i)))
        {
          *(*(*(a1 + 32) + 8) + 24) = 1010;
          goto LABEL_11;
        }

        v12 = *(a1 + 40);
        _CalEventSetInvitationStatus();
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (*(*(*(a1 + 32) + 8) + 24))
  {
    if (*MEMORY[0x277CF7110] == 1)
    {
      os_unfair_lock_assert_owner(a4 + 20);
    }

    os_unfair_lock_unlock(a4 + 20);
    CalDatabaseRevert();
  }

  else if ((CalDatabaseSaveWithOptions() & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1007;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (CADXPCImplementation)initWithClientConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = CADXPCImplementation;
  v6 = [(CADXPCImplementation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_conn, connection);
    v7->_accessLock._os_unfair_lock_opaque = 0;
  }

  return v7;
}

- (BOOL)accessGrantedToPerformSelector:(SEL)selector
{
  v14 = *MEMORY[0x277D85DE8];
  if (accessGrantedToPerformSelector__onceToken != -1)
  {
    [CADXPCImplementation accessGrantedToPerformSelector:];
  }

  v5 = NSStringFromSelector(selector);
  v6 = [accessGrantedToPerformSelector__accessTypeBySelector objectForKeyedSubscript:v5];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  if (unsignedIntegerValue)
  {
    v8 = [(CADXPCImplementation *)self hasAccess:unsignedIntegerValue];
  }

  else
  {
    v9 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_FAULT))
    {
      v12 = 138543362;
      v13 = v5;
      _os_log_impl(&dword_22430B000, v9, OS_LOG_TYPE_FAULT, "Unknown selector %{public}@", &v12, 0xCu);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

void __55__CADXPCImplementation_accessGrantedToPerformSelector___block_invoke()
{
  v141[137] = *MEMORY[0x277D85DE8];
  v139 = NSStringFromSelector(sel_CADDatabaseSetInitializationOptions_reply_);
  v140[0] = v139;
  v141[0] = &unk_2837C7198;
  v138 = NSStringFromSelector(sel_CADDatabaseGetAccess_);
  v140[1] = v138;
  v141[1] = &unk_2837C7198;
  v137 = NSStringFromSelector(sel_CADDatabaseRequestAccessForEntityType_desiredFullAccess_isBlockingUIThread_reason_reply_);
  v140[2] = v137;
  v141[2] = &unk_2837C7198;
  v136 = NSStringFromSelector(sel_CADDatabaseResetWithReply_);
  v140[3] = v136;
  v141[3] = &unk_2837C7198;
  v135 = NSStringFromSelector(sel_CADDatabaseGetAlarmWithUUID_reply_);
  v140[4] = v135;
  v141[4] = &unk_2837C71B0;
  v134 = NSStringFromSelector(sel_CADDatabaseGetAlarmOccurrencesFromAlarmCacheWithReply_);
  v140[5] = v134;
  v141[5] = &unk_2837C71B0;
  v133 = NSStringFromSelector(sel_CADDatabaseGetCalendarItemWithUUID_reply_);
  v140[6] = v133;
  v141[6] = &unk_2837C71C8;
  v132 = NSStringFromSelector(sel_CADDatabaseGetCalendarItemsWithUUIDs_inCalendars_propertiesToLoad_reply_);
  v140[7] = v132;
  v141[7] = &unk_2837C71C8;
  v131 = NSStringFromSelector(sel_CADDatabaseGetCalendarItemsWithUniqueIdentifier_inCalendar_reply_);
  v140[8] = v131;
  v141[8] = &unk_2837C71C8;
  v130 = NSStringFromSelector(sel_CADDatabaseGetCalendarItemsWithRecurrenceSet_inCalendar_reply_);
  v140[9] = v130;
  v141[9] = &unk_2837C71C8;
  v129 = NSStringFromSelector(sel_CADDatabaseGetAlarmWithExternalID_reply_);
  v140[10] = v129;
  v141[10] = &unk_2837C71C8;
  v128 = NSStringFromSelector(sel_CADDatabaseFetchCalendarItemsWithPredicate_entityType_fetchIdentifier_synchronous_reply_);
  v140[11] = v128;
  v141[11] = &unk_2837C71E0;
  v127 = NSStringFromSelector(sel_CADDatabaseCancelFetchRequestWithIdentifier_);
  v140[12] = v127;
  v141[12] = &unk_2837C71C8;
  v126 = NSStringFromSelector(sel_CADDatabaseMonitorResultsForPredicate_propertyFilter_options_identifier_reply_);
  v140[13] = v126;
  v141[13] = &unk_2837C71F8;
  v125 = NSStringFromSelector(sel_CADDatabaseMonitorUpdatePredicate_propertyFilter_options_identifier_generation_reply_);
  v140[14] = v125;
  v141[14] = &unk_2837C71F8;
  v124 = NSStringFromSelector(sel_CADDatabaseStopMonitoringPredicate_);
  v140[15] = v124;
  v141[15] = &unk_2837C71F8;
  v123 = NSStringFromSelector(sel_CADDatabaseExportICSForCalendarItemWithID_occurrenceDate_options_reply_);
  v140[16] = v123;
  v141[16] = &unk_2837C71C8;
  v122 = NSStringFromSelector(sel_CADDatabaseGetCalendarsWithFaultedProperties_reply_);
  v140[17] = v122;
  v141[17] = &unk_2837C71E0;
  v121 = NSStringFromSelector(sel_CADCalendar_hasEvents_);
  v140[18] = v121;
  v141[18] = &unk_2837C71E0;
  v120 = NSStringFromSelector(sel_CADCalendar_hasEventsWithRoomAsAttendee_);
  v140[19] = v120;
  v141[19] = &unk_2837C71C8;
  v119 = NSStringFromSelector(sel_CADDatabaseGetUUID_);
  v140[20] = v119;
  v141[20] = &unk_2837C71C8;
  v118 = NSStringFromSelector(sel_CADDatabaseRegisterForDetailedChangeTrackingInSource_reply_);
  v140[21] = v118;
  v141[21] = &unk_2837C71C8;
  v117 = NSStringFromSelector(sel_CADDatabaseUnregisterForDetailedChangeTracking_);
  v140[22] = v117;
  v141[22] = &unk_2837C71C8;
  v116 = NSStringFromSelector(sel_CADDatabaseFetchChangedObjectIDs_);
  v140[23] = v116;
  v141[23] = &unk_2837C71C8;
  v115 = NSStringFromSelector(sel_CADDatabaseFetchObjectChangesForEntityTypes_insideObject_reply_);
  v140[24] = v115;
  v141[24] = &unk_2837C71C8;
  v114 = NSStringFromSelector(sel_CADDatabaseMarkChangedObjectIDsConsumedUpToSequenceToken_reply_);
  v140[25] = v114;
  v141[25] = &unk_2837C71C8;
  v113 = NSStringFromSelector(sel_CADDatabaseConsumeAllChangesUpToToken_except_reply_);
  v140[26] = v113;
  v141[26] = &unk_2837C71C8;
  v112 = NSStringFromSelector(sel_CADDatabaseMarkIndividualChangesConsumed_reply_);
  v140[27] = v112;
  v141[27] = &unk_2837C71C8;
  v111 = NSStringFromSelector(sel_CADDatabaseGetSequenceToken_);
  v140[28] = v111;
  v141[28] = &unk_2837C71C8;
  v110 = NSStringFromSelector(sel_CADDatabaseGetChangesSinceSequenceToken_reply_);
  v140[29] = v110;
  v141[29] = &unk_2837C71C8;
  v109 = NSStringFromSelector(sel_CADDatabaseGetChangedEntityIDsSinceTimestamp_reply_);
  v140[30] = v109;
  v141[30] = &unk_2837C71C8;
  v108 = NSStringFromSelector(sel_CADDatabaseImportEvents_fromICSData_intoCalendarsWithIDs_optionsMask_batchSize_reply_);
  v140[31] = v108;
  v141[31] = &unk_2837C71C8;
  v107 = NSStringFromSelector(sel_CADDatabaseExportICSDataForCalendarItems_options_reply_);
  v140[32] = v107;
  v141[32] = &unk_2837C71C8;
  v106 = NSStringFromSelector(sel_CADDatabaseExportICSDataForCalendar_options_reply_);
  v140[33] = v106;
  v141[33] = &unk_2837C71C8;
  v105 = NSStringFromSelector(sel_CADDatabaseSetShowsDeclinedEvents_reply_);
  v140[34] = v105;
  v141[34] = &unk_2837C71C8;
  v104 = NSStringFromSelector(sel_CADDatabaseShowsDeclinedEventsWithReply_);
  v140[35] = v104;
  v141[35] = &unk_2837C71C8;
  v103 = NSStringFromSelector(sel_CADDatabaseSetShowsCompletedReminders_reply_);
  v140[36] = v103;
  v141[36] = &unk_2837C71C8;
  v102 = NSStringFromSelector(sel_CADDatabaseRebuildOccurrenceCacheWithReply_);
  v140[37] = v102;
  v141[37] = &unk_2837C71C8;
  v101 = NSStringFromSelector(sel_CADDatabaseCommitDeletes_updatesAndInserts_options_andFetchChangesSinceTimestamp_withReply_);
  v140[38] = v101;
  v141[38] = &unk_2837C71E0;
  v100 = NSStringFromSelector(sel_CADDatabaseCanModifyCalendarDatabase_);
  v140[39] = v100;
  v141[39] = &unk_2837C71C8;
  v99 = NSStringFromSelector(sel_CADDatabaseLastConfirmedSplashScreenVersion_);
  v140[40] = v99;
  v141[40] = &unk_2837C71C8;
  v98 = NSStringFromSelector(sel_CADDatabaseMigrateSubscribedCalendar_toSource_reply_);
  v140[41] = v98;
  v141[41] = &unk_2837C71C8;
  v97 = NSStringFromSelector(sel_CADDatabaseGetDefaultAlarmOffsetForAllDay_reply_);
  v140[42] = v97;
  v141[42] = &unk_2837C71E0;
  v96 = NSStringFromSelector(sel_CADAnalyticsSendEvent_appendingClientBundleIDToPayload_);
  v140[43] = v96;
  v141[43] = &unk_2837C7210;
  v95 = NSStringFromSelector(sel_CADDatabaseStatsBySource_);
  v140[44] = v95;
  v141[44] = &unk_2837C7228;
  v94 = NSStringFromSelector(sel_CADPersonaIdentifierForDatabaseID_reply_);
  v140[45] = v94;
  v141[45] = &unk_2837C7240;
  v93 = NSStringFromSelector(sel_CADCatchUpIntegrationSyncingIfBehind_);
  v140[46] = v93;
  v141[46] = &unk_2837C7258;
  v92 = NSStringFromSelector(sel_CADDatabaseGetDefaultLocalCalendarWithReply_);
  v140[47] = v92;
  v141[47] = &unk_2837C71C8;
  v91 = NSStringFromSelector(sel_CADDatabaseGetOrCreateSubscribedCalendarsSource_);
  v140[48] = v91;
  v141[48] = &unk_2837C71C8;
  v90 = NSStringFromSelector(sel_CADDatabaseGetOrCreateBirthdayCalendar_);
  v140[49] = v90;
  v141[49] = &unk_2837C71C8;
  v89 = NSStringFromSelector(sel_CADDatabaseGetDefaultCalendarForNewEventsInDelegateSource_withReply_);
  v140[50] = v89;
  v141[50] = &unk_2837C71E0;
  v88 = NSStringFromSelector(sel_CADDatabaseSetDefaultCalendarForNewEvents_delegateSource_reply_);
  v140[51] = v88;
  v141[51] = &unk_2837C71C8;
  v87 = NSStringFromSelector(sel_CADDatabaseGetCreatorTeamIdentifierForEventWithObjectID_reply_);
  v140[52] = v87;
  v141[52] = &unk_2837C7210;
  v86 = NSStringFromSelector(sel_CADDatabaseIsCurrentProcessCreatorOfEventWithObjectID_reply_);
  v140[53] = v86;
  v141[53] = &unk_2837C7270;
  v85 = NSStringFromSelector(sel_CADDatabaseGetEventWithEventIdentifier_reply_);
  v140[54] = v85;
  v141[54] = &unk_2837C71E0;
  v84 = NSStringFromSelector(sel_CADDatabaseGetEventWithUniqueID_reply_);
  v140[55] = v84;
  v141[55] = &unk_2837C71C8;
  v83 = NSStringFromSelector(sel_CADDatabaseGetAllEventsWithUniqueID_reply_);
  v140[56] = v83;
  v141[56] = &unk_2837C71C8;
  v82 = NSStringFromSelector(sel_CADDatabaseGetBirthdayCalendarEnabledWithReply_);
  v140[57] = v82;
  v141[57] = &unk_2837C71C8;
  v81 = NSStringFromSelector(sel_CADDatabaseSetBirthdayCalendarEnabled_withReply_);
  v140[58] = v81;
  v141[58] = &unk_2837C71C8;
  v80 = NSStringFromSelector(sel_CADDatabaseGetBirthdayCalendarVersionWithReply_);
  v140[59] = v80;
  v141[59] = &unk_2837C71B0;
  v79 = NSStringFromSelector(sel_CADDatabaseSetBirthdayCalendarVersion_withReply_);
  v140[60] = v79;
  v141[60] = &unk_2837C71B0;
  v78 = NSStringFromSelector(sel_CADDatabaseGetSuggestedEventCalendarWithReply_);
  v140[61] = v78;
  v141[61] = &unk_2837C71C8;
  v77 = NSStringFromSelector(sel_CADDatabaseGetNaturalLanguageSuggestedEventCalendarWithReply_);
  v140[62] = v77;
  v141[62] = &unk_2837C71C8;
  v76 = NSStringFromSelector(sel_CADDatabaseCanModifySuggestedEventCalendar_);
  v140[63] = v76;
  v141[63] = &unk_2837C71C8;
  v75 = NSStringFromSelector(sel_CADDatabaseGetSourceIdentifierForEventWithObjectID_reply_);
  v140[64] = v75;
  v141[64] = &unk_2837C71E0;
  v74 = NSStringFromSelector(sel_CADDatabaseInsertSuggestedEventCalendarWithReply_);
  v140[65] = v74;
  v141[65] = &unk_2837C71C8;
  v73 = NSStringFromSelector(sel_CADDatabaseRemoveSuggestedEventCalendarWithReply_);
  v140[66] = v73;
  v141[66] = &unk_2837C71C8;
  v72 = NSStringFromSelector(sel_CADOccurrenceCacheGetOccurrenceCountsForCalendars_reply_);
  v140[67] = v72;
  v141[67] = &unk_2837C71C8;
  v71 = NSStringFromSelector(sel_CADOccurrenceCacheGetOccurrencesForCalendars_onDay_reply_);
  v140[68] = v71;
  v141[68] = &unk_2837C71C8;
  v70 = NSStringFromSelector(sel_CADOccurrenceCacheGetOccurrenceDateOfEventWithObjectID_nearestDate_prefersForwardSearch_reply_);
  v140[69] = v70;
  v141[69] = &unk_2837C71C8;
  v69 = NSStringFromSelector(sel_CADOccurrenceCacheGetOccurrenceCountWithStartDate_endDate_reply_);
  v140[70] = v69;
  v141[70] = &unk_2837C71C8;
  v68 = NSStringFromSelector(sel_CADOccurrenceCacheGetOccurrenceCountOrSumDurationWithStartDate_endDate_calendarIDs_sumDuration_reply_);
  v140[71] = v68;
  v141[71] = &unk_2837C71C8;
  v67 = NSStringFromSelector(sel_CADOccurrenceCacheDoEvents_haveOccurrencesAfterDate_reply_);
  v140[72] = v67;
  v141[72] = &unk_2837C71C8;
  v66 = NSStringFromSelector(sel_CADOccurrenceCacheSearchWithTerm_inCalendars_responseToken_reply_);
  v140[73] = v66;
  v141[73] = &unk_2837C71C8;
  v65 = NSStringFromSelector(sel_CADOccurrenceCacheSearchLocationsWithTerm_inCalendars_responseToken_reply_);
  v140[74] = v65;
  v141[74] = &unk_2837C71C8;
  v64 = NSStringFromSelector(sel_CADOccurrenceCacheCancelSearchWithReplyID_);
  v140[75] = v64;
  v141[75] = &unk_2837C71C8;
  v63 = NSStringFromSelector(sel_CADOccurrencesExistInRangeForEvent_startDate_endDate_mustStartInInterval_timezone_reply_);
  v140[76] = v63;
  v141[76] = &unk_2837C71C8;
  v62 = NSStringFromSelector(sel_CADDatabaseShouldPermitOrganizerEmailFromJunkChecks_reply_);
  v140[77] = v62;
  v141[77] = &unk_2837C71C8;
  v61 = NSStringFromSelector(sel_CADDatabaseShouldPermitOrganizerPhoneNumberFromJunkChecks_reply_);
  v140[78] = v61;
  v141[78] = &unk_2837C71C8;
  v60 = NSStringFromSelector(sel_CADDatabaseGetAttachmentWithUUID_reply_);
  v140[79] = v60;
  v141[79] = &unk_2837C71C8;
  v59 = NSStringFromSelector(sel_CADDatabaseGetTTLLocationAuthorizationStatus_);
  v140[80] = v59;
  v141[80] = &unk_2837C71C8;
  v58 = NSStringFromSelector(sel_CADDatabaseLoadEventsInCalendar_reply_);
  v140[81] = v58;
  v141[81] = &unk_2837C71B0;
  v57 = NSStringFromSelector(sel_CADMigrateDatabaseIfNeeded_);
  v140[82] = v57;
  v141[82] = &unk_2837C7198;
  v56 = NSStringFromSelector(sel_CADDatabaseGetSharedCalendarInvitationsWithReply_);
  v140[83] = v56;
  v141[83] = &unk_2837C7288;
  v55 = NSStringFromSelector(sel_CADCalendarSetClearedFromNotificationCenter_error_);
  v140[84] = v55;
  v141[84] = &unk_2837C7288;
  v54 = NSStringFromSelector(sel_CADDatabaseGetResourceChanges_);
  v140[85] = v54;
  v141[85] = &unk_2837C7288;
  v53 = NSStringFromSelector(sel_CADDatabaseGetInviteReplyNotifications_);
  v140[86] = v53;
  v141[86] = &unk_2837C7288;
  v52 = NSStringFromSelector(sel_CADDatabaseGetEventNotificationItemsAfterDate_excludingUncheckedCalendars_filteredByShowsNotificationsFlag_reply_);
  v140[87] = v52;
  v141[87] = &unk_2837C7288;
  v51 = NSStringFromSelector(sel_CADDatabaseGetNotificationCountForSourceWithExternalIdentifier_excludingDelegateSources_filteredByShowsNotificationsFlag_expanded_reply_);
  v140[88] = v51;
  v141[88] = &unk_2837C7288;
  v50 = NSStringFromSelector(sel_CADDatabaseGetInboxRepliedSectionItems_);
  v140[89] = v50;
  v141[89] = &unk_2837C7288;
  v49 = NSStringFromSelector(sel_CADResourceChange_setAlertedWithError_);
  v140[90] = v49;
  v141[90] = &unk_2837C7288;
  v48 = NSStringFromSelector(sel_CADEventSetInvitationStatus_forEvents_error_);
  v140[91] = v48;
  v141[91] = &unk_2837C7288;
  v47 = NSStringFromSelector(sel_CADObjectExists_reply_);
  v140[92] = v47;
  v141[92] = &unk_2837C71E0;
  v46 = NSStringFromSelector(sel_CADObjectsExist_reply_);
  v140[93] = v46;
  v141[93] = &unk_2837C71E0;
  v45 = NSStringFromSelector(sel_CADObject_getPropertiesWithNames_reply_);
  v140[94] = v45;
  v141[94] = &unk_2837C71E0;
  v44 = NSStringFromSelector(sel_CADObjects_getPropertiesWithNames_reply_);
  v140[95] = v44;
  v141[95] = &unk_2837C71E0;
  v43 = NSStringFromSelector(sel_CADObject_getPropertyWithName_reply_);
  v140[96] = v43;
  v141[96] = &unk_2837C71E0;
  v42 = NSStringFromSelector(sel_CADObject_getStringPropertyWithName_reply_);
  v140[97] = v42;
  v141[97] = &unk_2837C71E0;
  v41 = NSStringFromSelector(sel_CADObject_getNumberPropertyWithName_reply_);
  v140[98] = v41;
  v141[98] = &unk_2837C71E0;
  v40 = NSStringFromSelector(sel_CADObject_getDatePropertyWithName_reply_);
  v140[99] = v40;
  v141[99] = &unk_2837C71E0;
  v39 = NSStringFromSelector(sel_CADObject_getDataPropertyWithName_reply_);
  v140[100] = v39;
  v141[100] = &unk_2837C71E0;
  v38 = NSStringFromSelector(sel_CADObject_getSecurityScopedURLWrapperPropertyWithName_reply_);
  v140[101] = v38;
  v141[101] = &unk_2837C71C8;
  v37 = NSStringFromSelector(sel_CADObject_getRelatedObjectWithRelationName_reply_);
  v140[102] = v37;
  v141[102] = &unk_2837C71E0;
  v36 = NSStringFromSelector(sel_CADObject_getRelatedObjectsWithRelationName_reply_);
  v140[103] = v36;
  v141[103] = &unk_2837C71E0;
  v35 = NSStringFromSelector(sel_CADObjectIsManaged_reply_);
  v140[104] = v35;
  v141[104] = &unk_2837C71C8;
  v34 = NSStringFromSelector(sel_CADDatabaseGetSourcesWithFaultedProperties_reply_);
  v140[105] = v34;
  v141[105] = &unk_2837C71E0;
  v33 = NSStringFromSelector(sel_CADDatabaseGetLocalSourceWithEnableIfNeeded_reply_);
  v140[106] = v33;
  v141[106] = &unk_2837C71C8;
  v32 = NSStringFromSelector(sel_CADDatabaseGetLocalBirthdaySource_);
  v140[107] = v32;
  v141[107] = &unk_2837C71C8;
  v31 = NSStringFromSelector(sel_CADObjectGetConstraints_reply_);
  v140[108] = v31;
  v141[108] = &unk_2837C71E0;
  v30 = NSStringFromSelector(sel_CADSourceGetNotificationCollection_reply_);
  v140[109] = v30;
  v141[109] = &unk_2837C71C8;
  v29 = NSStringFromSelector(sel_CADSourceRefresh_isUserRequested_reply_);
  v140[110] = v29;
  v141[110] = &unk_2837C71C8;
  v28 = NSStringFromSelector(sel_CADCountCalendarItemsOfType_inSource_reply_);
  v140[111] = v28;
  v141[111] = &unk_2837C71C8;
  v27 = NSStringFromSelector(sel_CADRemoveCalendarItemsOlderThanDate_ofType_inSource_reply_);
  v140[112] = v27;
  v141[112] = &unk_2837C71C8;
  v26 = NSStringFromSelector(sel_CADSourceGetGrantedDelegatesList_reply_);
  v140[113] = v26;
  v141[113] = &unk_2837C71C8;
  v25 = NSStringFromSelector(sel_CADSourceUpdateGrantedDelegate_action_sourceID_reply_);
  v140[114] = v25;
  v141[114] = &unk_2837C71C8;
  v24 = NSStringFromSelector(sel_CADSourceAddExchangeDelegateWithName_emailAddress_toSourceWithID_reply_);
  v140[115] = v24;
  v141[115] = &unk_2837C71C8;
  v23 = NSStringFromSelector(sel_CADSourceRemoveExchangeDelegateWithID_reply_);
  v140[116] = v23;
  v141[116] = &unk_2837C71C8;
  v22 = NSStringFromSelector(sel_CADInternalForceStatCollection_);
  v140[117] = v22;
  v141[117] = &unk_2837C72A0;
  v21 = NSStringFromSelector(sel_CADInternalSetNextConferenceLinkRenewalToNow_);
  v140[118] = v21;
  v141[118] = &unk_2837C72A0;
  v20 = NSStringFromSelector(sel_CADInternalRemoveConferenceLinkRenewalDate_);
  v140[119] = v20;
  v141[119] = &unk_2837C72A0;
  v19 = NSStringFromSelector(sel_CADDatabaseGetNotificationCountExcludingUncheckedCalendars_expanded_reply_);
  v140[120] = v19;
  v141[120] = &unk_2837C72B8;
  v18 = NSStringFromSelector(sel_CADTestingSimulateDaemonCrash);
  v140[121] = v18;
  v141[121] = &unk_2837C72D0;
  v17 = NSStringFromSelector(sel_CADTestingCloseDatabase_);
  v140[122] = v17;
  v141[122] = &unk_2837C72D0;
  v16 = NSStringFromSelector(sel_CADDatabaseGetDeletableCalendars_);
  v140[123] = v16;
  v141[123] = &unk_2837C72E8;
  v15 = NSStringFromSelector(sel_CADDatabaseGetDeletableSources_);
  v140[124] = v15;
  v141[124] = &unk_2837C72E8;
  v14 = NSStringFromSelector(sel_CADPurgeChangeTrackingReply_);
  v140[125] = v14;
  v141[125] = &unk_2837C7300;
  v13 = NSStringFromSelector(sel_CADPostSyntheticRouteHypothesis_forEventWithExternalURL_reply_);
  v140[126] = v13;
  v141[126] = &unk_2837C7300;
  v0 = NSStringFromSelector(sel_CADDatabaseGetStorageUsage_);
  v140[127] = v0;
  v141[127] = &unk_2837C7318;
  v1 = NSStringFromSelector(sel_CADBackupDatabaseToFileNamed_inDirectory_includeAttachments_reply_);
  v140[128] = v1;
  v141[128] = &unk_2837C7288;
  v2 = NSStringFromSelector(sel_CADBackupToICBU_reply_);
  v140[129] = v2;
  v141[129] = &unk_2837C7288;
  v3 = NSStringFromSelector(sel_CADRestoreFromDatabaseBackupFileNamed_inDirectory_includeAttachments_reply_);
  v140[130] = v3;
  v141[130] = &unk_2837C7288;
  v4 = NSStringFromSelector(sel_CADRestoreFromICBU_reply_);
  v140[131] = v4;
  v141[131] = &unk_2837C7288;
  v5 = NSStringFromSelector(sel_CADDiagnosticsCollectWithToken_options_trafficLogsCollectionMode_reply_);
  v140[132] = v5;
  v141[132] = &unk_2837C7330;
  v6 = NSStringFromSelector(sel_CADDiagnosticsCancelCollectionWithToken_reply_);
  v140[133] = v6;
  v141[133] = &unk_2837C7330;
  v7 = NSStringFromSelector(sel_CADDatabaseGetErrorCount_);
  v140[134] = v7;
  v141[134] = &unk_2837C71C8;
  v8 = NSStringFromSelector(sel_CADDatabaseGetEventsWithErrorsPerSource_);
  v140[135] = v8;
  v141[135] = &unk_2837C71C8;
  v9 = NSStringFromSelector(sel_CADDatabaseGetColorWithProviderIdentifier_externalID_reply_);
  v140[136] = v9;
  v141[136] = &unk_2837C7348;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v141 forKeys:v140 count:137];
  v11 = accessGrantedToPerformSelector__accessTypeBySelector;
  accessGrantedToPerformSelector__accessTypeBySelector = v10;

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasAccess:(unint64_t)access
{
  os_unfair_lock_lock(&self->_accessLock);
  LOBYTE(access) = [(CADXPCImplementation *)self _hasAccess:access];
  os_unfair_lock_unlock(&self->_accessLock);
  return access;
}

- (BOOL)_hasAccess:(unint64_t)access
{
  v3 = 1;
  if ((self->_allowedAccess & access) == 0)
  {
    v6 = 0;
    while (1)
    {
      v7 = (1 << v6);
      if ((v7 & access) != 0)
      {
        checkedAccess = self->_checkedAccess;
        if ((checkedAccess & v7) == 0)
        {
          self->_checkedAccess = checkedAccess | v7;
          if ([(CADXPCImplementation *)self _checkAccess:(1 << v6)])
          {
            break;
          }
        }
      }

      if (++v6 == 15)
      {
        return 0;
      }
    }

    self->_allowedAccess |= v7;
    return 1;
  }

  return v3;
}

- (BOOL)_checkAccess:(unint64_t)access
{
  permissionValidator = [(ClientConnection *)self->_conn permissionValidator];
  if ([permissionValidator testingAccessLevelGranted])
  {
    LOBYTE(access) = 1;
    goto LABEL_42;
  }

  if (access <= 127)
  {
    if (access > 7)
    {
      if (access > 31)
      {
        if (access == 32)
        {
          hasCalendarToolEntitlement = [permissionValidator hasCalendarToolEntitlement];
          goto LABEL_41;
        }

        if (access == 64)
        {
          hasCalendarToolEntitlement = [permissionValidator hasNotificationCountEntitlement];
          goto LABEL_41;
        }
      }

      else
      {
        if (access == 8)
        {
          hasCalendarToolEntitlement = [permissionValidator isCalendarDaemon];
          goto LABEL_41;
        }

        if (access == 16)
        {
          hasCalendarToolEntitlement = [permissionValidator hasSyncClientEntitlement];
          goto LABEL_41;
        }
      }

LABEL_43:
      LOBYTE(access) = 0;
      goto LABEL_42;
    }

    if (access == 1)
    {
      goto LABEL_42;
    }

    if (access != 2)
    {
      if (access == 4)
      {
        hasCalendarToolEntitlement = [permissionValidator isFirstPartyCalendarApp];
        goto LABEL_41;
      }

      goto LABEL_43;
    }

    v7 = [(ClientConnection *)self->_conn eventAccessLevel]== 2;
  }

  else
  {
    if (access <= 2047)
    {
      if (access > 511)
      {
        if (access == 512)
        {
          hasCalendarToolEntitlement = [permissionValidator canRequestDiagnostics];
          goto LABEL_41;
        }

        if (access == 1024)
        {
          hasCalendarToolEntitlement = [permissionValidator testingAccessLevelGranted];
          goto LABEL_41;
        }
      }

      else
      {
        if (access == 128)
        {
          hasCalendarToolEntitlement = [permissionValidator internalAccessLevelGranted];
          goto LABEL_41;
        }

        if (access == 256)
        {
          hasCalendarToolEntitlement = [permissionValidator storageManagementAccessGranted];
LABEL_41:
          LOBYTE(access) = hasCalendarToolEntitlement;
          goto LABEL_42;
        }
      }

      goto LABEL_43;
    }

    if (access >= 0x2000)
    {
      if (access == 0x2000)
      {
        hasCalendarToolEntitlement = [permissionValidator isAutomatorApp];
        goto LABEL_41;
      }

      if (access == 0x4000)
      {
        hasCalendarToolEntitlement = [permissionValidator isShortcutsApp];
        goto LABEL_41;
      }

      goto LABEL_43;
    }

    if (access != 2048)
    {
      if (access == 4096)
      {
        hasCalendarToolEntitlement = [permissionValidator isRemoteUIExtension];
        goto LABEL_41;
      }

      goto LABEL_43;
    }

    v7 = [permissionValidator eventAccessLevel] == 1;
  }

  LOBYTE(access) = v7;
LABEL_42:

  return access;
}

- (void)CADDatabaseGetUUID:(id)d
{
  dCopy = d;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__2;
  v13 = __Block_byref_object_dispose__2;
  v14 = 0;
  conn = self->_conn;
  v6 = *MEMORY[0x277CF7570];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseGetUUID___block_invoke;
  v8[3] = &unk_27851A408;
  v8[4] = &v9;
  [(ClientConnection *)conn withDatabaseID:v6 perform:v8];
  if (v10[5])
  {
    v7 = 0;
  }

  else
  {
    v7 = 1007;
  }

  dCopy[2](dCopy, v7);
  _Block_object_dispose(&v9, 8);
}

uint64_t __70__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseGetUUID___block_invoke(uint64_t a1)
{
  v2 = CalDatabaseCopyUniqueIdentifier();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)CADDatabaseRegisterForDetailedChangeTrackingInSource:(id)source reply:(id)reply
{
  sourceCopy = source;
  replyCopy = reply;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  changeTrackingID = [(ClientConnection *)self->_conn changeTrackingID];
  v9 = changeTrackingID;
  if (changeTrackingID)
  {
    conn = self->_conn;
    if (sourceCopy)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __110__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseRegisterForDetailedChangeTrackingInSource_reply___block_invoke;
      v16[3] = &unk_27851A110;
      v17 = sourceCopy;
      v19 = &v21;
      v18 = v9;
      [(ClientConnection *)conn withDatabaseForObject:v17 perform:v16];
      v11 = &v17;
    }

    else
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __110__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseRegisterForDetailedChangeTrackingInSource_reply___block_invoke_2;
      v14[3] = &unk_27851A0C0;
      v15 = changeTrackingID;
      [(ClientConnection *)conn withAllDatabasesPerform:v14];
      v11 = &v15;
    }

    v13 = *(v22 + 6);
  }

  else
  {
    v12 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v12, OS_LOG_TYPE_ERROR, "Attempt to register for change tracking without a bundle ID nor a clientSuffix.", buf, 2u);
    }

    *(v22 + 6) = 1018;
  }

  replyCopy[2](replyCopy);

  _Block_object_dispose(&v21, 8);
}

void __110__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseRegisterForDetailedChangeTrackingInSource_reply___block_invoke(uint64_t a1)
{
  [*(a1 + 32) entityID];
  v2 = CalDatabaseCopyStoreWithUID();
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 40);
    CalDatabaseRegisterClientForPersistentChangeTrackingInStore();

    CFRelease(v3);
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1010;
  }
}

- (void)CADDatabaseUnregisterForDetailedChangeTracking:(id)tracking
{
  conn = self->_conn;
  trackingCopy = tracking;
  changeTrackingID = [(ClientConnection *)conn changeTrackingID];
  v7 = changeTrackingID;
  if (changeTrackingID)
  {
    v8 = self->_conn;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __98__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseUnregisterForDetailedChangeTracking___block_invoke;
    v11[3] = &unk_27851A0C0;
    v12 = changeTrackingID;
    [(ClientConnection *)v8 withAllDatabasesPerform:v11];

    v9 = 0;
  }

  else
  {
    v10 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v10, OS_LOG_TYPE_ERROR, "Attempt to unregister for change tracking without a bundle ID nor a clientSuffix.", buf, 2u);
    }

    v9 = 1018;
  }

  trackingCopy[2](trackingCopy, v9);
}

- (void)CADDatabaseFetchChangedObjectIDs:(id)ds
{
  dsCopy = ds;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  changeTrackingID = [(ClientConnection *)self->_conn changeTrackingID];
  if (changeTrackingID)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    conn = self->_conn;
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __84__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseFetchChangedObjectIDs___block_invoke;
    v17 = &unk_27851A430;
    selfCopy = self;
    v19 = changeTrackingID;
    v9 = v6;
    v20 = v9;
    v22 = &v24;
    v10 = v7;
    v21 = v10;
    v23 = &v28;
    [(ClientConnection *)conn withAllDatabasesPerform:&v14];
    if ((v25[3] & 1) != 0 || *(v29 + 24) != 1)
    {
      v13 = [CADSequenceToken alloc];
      v11 = [(CADSequenceToken *)v13 initWithAllDBSequenceMap:v9, v14, v15, v16, v17, selfCopy, v19, v20];
      v12 = 0;
    }

    else
    {

      v10 = 0;
      v11 = 0;
      v12 = 1;
    }

    dsCopy[2](dsCopy, 0, v12, v11, v10);
  }

  else
  {
    dsCopy[2](dsCopy, 1018, 0, 0, 0);
  }

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
}

void __84__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseFetchChangedObjectIDs___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v25[4] = *MEMORY[0x277D85DE8];
  v5 = [*(a1[4] + 8) restrictedStoreRowIDsForAction:0 inDatabase:a3];
  if ([v5 count])
  {
    v6 = [v5 allObjects];
  }

  else
  {
    v6 = 0;
  }

  v23 = -1;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v7 = a1[5];
  v8 = CalDatabaseGetChangedObjectIDsSinceSequenceNumberForClient();
  v9 = [MEMORY[0x277CCABB0] numberWithInt:{v23, &v20}];
  v10 = a1[6];
  v11 = [MEMORY[0x277CCABB0] numberWithInt:a2];
  [v10 setObject:v9 forKeyedSubscript:v11];

  v12 = a1[5];
  if (CalDatabaseGetStoreForPersistentChangeTrackingClientIdentifier() >= 1)
  {
    *(*(a1[8] + 8) + 24) = 1;
  }

  if ((v22 & 1) != 0 || !v8)
  {
    if (!v22)
    {
      goto LABEL_12;
    }

LABEL_11:
    *(*(a1[9] + 8) + 24) = 1;
    goto LABEL_12;
  }

  if (![v8 length])
  {
    if ((v22 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v25[0] = v8;
  v24[0] = @"changes";
  v24[1] = @"inserts";
  v13 = [MEMORY[0x277CCABB0] numberWithInt:HIDWORD(v21)];
  v25[1] = v13;
  v24[2] = @"updates";
  v14 = [MEMORY[0x277CCABB0] numberWithInt:v21];
  v25[2] = v14;
  v24[3] = @"deletes";
  v15 = [MEMORY[0x277CCABB0] numberWithInt:v20];
  v25[3] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];

  v17 = a1[7];
  v18 = [MEMORY[0x277CCABB0] numberWithInt:a2];
  [v17 setObject:v16 forKeyedSubscript:v18];

LABEL_12:
  v19 = *MEMORY[0x277D85DE8];
}

- (void)CADDatabaseFetchObjectChangesForEntityTypes:(id)types insideObject:(id)object reply:(id)reply
{
  typesCopy = types;
  objectCopy = object;
  replyCopy = reply;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  changeTrackingID = [(ClientConnection *)self->_conn changeTrackingID];
  v12 = changeTrackingID;
  if (changeTrackingID)
  {
    v25 = changeTrackingID;
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v48 = 0;
    v49 = &v48;
    v50 = 0x3032000000;
    v51 = __Block_byref_object_copy__2;
    v52 = __Block_byref_object_dispose__2;
    v53 = 0;
    v46[0] = 0;
    v46[1] = v46;
    v46[2] = 0x3032000000;
    v46[3] = __Block_byref_object_copy__2;
    v46[4] = __Block_byref_object_dispose__2;
    v47 = 0;
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    v24 = typesCopy;
    v14 = [(CADXPCImplementation *)self _copyToIntCFSetRef:typesCopy];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __114__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseFetchObjectChangesForEntityTypes_insideObject_reply___block_invoke;
    v28[3] = &unk_27851A458;
    v28[4] = self;
    v15 = objectCopy;
    v16 = objectCopy;
    v29 = v16;
    v37 = v14;
    v30 = v25;
    v32 = &v54;
    v17 = v13;
    v31 = v17;
    v33 = &v38;
    v34 = &v42;
    v35 = &v48;
    v36 = v46;
    v18 = MEMORY[0x22AA4DCD0](v28);
    v19 = v18;
    conn = self->_conn;
    if (v16)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __114__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseFetchObjectChangesForEntityTypes_insideObject_reply___block_invoke_2;
      v26[3] = &unk_27851A480;
      v27 = v18;
      [(ClientConnection *)conn withDatabaseForObject:v16 perform:v26];
    }

    else
    {
      [(ClientConnection *)conn withAllDatabasesPerform:v18];
    }

    CFRelease(v14);
    objectCopy = v15;
    if ((v39[3] & 1) != 0 || (v43[3] & 1) == 0)
    {
      if (!*(v55 + 6))
      {
        v23 = [[CADSequenceToken alloc] initWithAllDBSequenceMap:v17];
        v21 = 0;
        goto LABEL_13;
      }

      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    v22 = v49[5];
    v49[5] = 0;

    v23 = 0;
LABEL_13:
    replyCopy[2](replyCopy, *(v55 + 6), v21, v23, v49[5]);

    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(&v42, 8);
    _Block_object_dispose(v46, 8);

    _Block_object_dispose(&v48, 8);
    typesCopy = v24;
    v12 = v25;
    goto LABEL_14;
  }

  replyCopy[2](replyCopy, 1018, 0, 0, 0);
LABEL_14:

  _Block_object_dispose(&v54, 8);
}

void __114__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseFetchObjectChangesForEntityTypes_insideObject_reply___block_invoke(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v29 = -1;
  v28 = 0;
  v7 = [*(a1[4] + 8) restrictedStoreRowIDsForAction:0 inDatabase:a3];
  if ([v7 count])
  {
    v8 = [v7 allObjects];
  }

  else
  {
    v8 = 0;
  }

  v27 = 0;
  v9 = a1[13];
  v10 = a1[6];
  a1[5];
  ChangedEKObjectsForClient = CalDatabaseGetChangedEKObjectsForClient();
  v12 = v28;
  if (ChangedEKObjectsForClient == -1)
  {
    *(*(a1[8] + 8) + 24) = 1007;
    *a4 = 1;
  }

  else
  {
    v13 = ChangedEKObjectsForClient;
    v14 = [MEMORY[0x277CCABB0] numberWithInt:{v29, &v27, &v28}];
    v15 = a1[7];
    v16 = [MEMORY[0x277CCABB0] numberWithInt:a2];
    [v15 setObject:v14 forKeyedSubscript:v16];

    if (v13 == 1 && (v27 & 1) != 0)
    {
      v17 = a1[6];
      CalRemoveClientForPersistentChangeTracking();
    }

    v18 = a1[6];
    if (CalDatabaseGetStoreForPersistentChangeTrackingClientIdentifier() >= 1)
    {
      *(*(a1[9] + 8) + 24) = 1;
    }

    if (v27 == 1)
    {
      *(*(a1[10] + 8) + 24) = 1;
    }

    else if ([v12 count])
    {
      v19 = *(a1[11] + 8);
      v22 = *(v19 + 40);
      v21 = (v19 + 40);
      v20 = v22;
      if (v22)
      {
        v23 = *(*(a1[12] + 8) + 40);
        if (!v23)
        {
          v24 = [v20 mutableCopy];
          v25 = *(a1[12] + 8);
          v26 = *(v25 + 40);
          *(v25 + 40) = v24;

          objc_storeStrong((*(a1[11] + 8) + 40), *(*(a1[12] + 8) + 40));
          v23 = *(*(a1[12] + 8) + 40);
        }

        [v23 addObjectsFromArray:v12];
      }

      else
      {
        objc_storeStrong(v21, v12);
      }
    }
  }
}

- (void)CADDatabaseMarkChangedObjectIDsConsumedUpToSequenceToken:(id)token reply:(id)reply
{
  v31 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  replyCopy = reply;
  selfCopy = self;
  changeTrackingID = [(ClientConnection *)self->_conn changeTrackingID];
  if (changeTrackingID)
  {
    v19 = replyCopy;
    [tokenCopy allDBSequenceMap];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = v29 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          conn = selfCopy->_conn;
          intValue = [v13 intValue];
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = __114__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseMarkChangedObjectIDsConsumedUpToSequenceToken_reply___block_invoke;
          v22[3] = &unk_27851A4A8;
          v16 = v8;
          v23 = v16;
          v24 = v13;
          v25 = changeTrackingID;
          [(ClientConnection *)conn withDatabaseID:intValue perform:v22];
        }

        v10 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v10);
    }

    v17 = 0;
    replyCopy = v19;
  }

  else
  {
    v17 = 1018;
  }

  replyCopy[2](replyCopy, v17);

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __114__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseMarkChangedObjectIDsConsumedUpToSequenceToken_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  [v2 intValue];

  v3 = *(a1 + 48);

  return CalDatabaseClearChangedObjectIDsUpToSequenceNumberForClient();
}

- (void)CADDatabaseConsumeAllChangesUpToToken:(id)token except:(id)except reply:(id)reply
{
  v35 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  exceptCopy = except;
  replyCopy = reply;
  changeTrackingID = [(ClientConnection *)self->_conn changeTrackingID];
  if (changeTrackingID)
  {
    v21 = replyCopy;
    v22 = tokenCopy;
    [tokenCopy allDBSequenceMap];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = v33 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v31;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v30 + 1) + 8 * i);
          conn = self->_conn;
          intValue = [v15 intValue];
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __102__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseConsumeAllChangesUpToToken_except_reply___block_invoke;
          v25[3] = &unk_27851A4F8;
          v18 = v10;
          v26 = v18;
          v27 = v15;
          v28 = exceptCopy;
          v29 = changeTrackingID;
          [(ClientConnection *)conn withDatabaseID:intValue perform:v25];
        }

        v12 = [v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v12);
    }

    v19 = 0;
    replyCopy = v21;
    tokenCopy = v22;
  }

  else
  {
    v19 = 1018;
  }

  replyCopy[2](replyCopy, v19);

  v20 = *MEMORY[0x277D85DE8];
}

void __102__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseConsumeAllChangesUpToToken_except_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  [v2 intValue];

  v3 = [*(a1 + 48) objectForKeyedSubscript:*(a1 + 40)];
  v4 = [MEMORY[0x277CF74C0] makeObjectChangeEntityTypeMapToSet:v3];
  v6 = *(a1 + 56);
  v5 = v4;
  CalDatabaseEnumerateUnconsumedObjectChangesForClient();
}

void __102__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseConsumeAllChangesUpToToken_except_reply___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFArray *a5, const __CFArray *a6)
{
  v9 = *(a1 + 32);
  v10 = [MEMORY[0x277CCABB0] numberWithInt:a2];
  v20 = [v9 objectForKeyedSubscript:v10];

  Count = CFArrayGetCount(a5);
  if (Count >= 1)
  {
    v12 = Count;
    Mutable = CFArrayCreateMutable(0, Count, 0);
    for (i = 0; i != v12; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a5, i);
      if (*(a1 + 56) >= CFArrayGetValueAtIndex(a6, i))
      {
        v16 = [MEMORY[0x277CCABB0] numberWithInt:ValueAtIndex];
        v17 = [v20 containsObject:v16];

        if ((v17 & 1) == 0)
        {
          CFArrayAppendValue(Mutable, ValueAtIndex);
        }
      }
    }

    if (CFArrayGetCount(Mutable) > 0)
    {
      v19 = *(a1 + 40);
      v18 = *(a1 + 48);
      CalDatabaseClearIndividualChangeRowIDsForClient();
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }
}

- (void)CADDatabaseMarkIndividualChangesConsumed:(id)consumed reply:(id)reply
{
  v31 = *MEMORY[0x277D85DE8];
  consumedCopy = consumed;
  replyCopy = reply;
  changeTrackingID = [(ClientConnection *)self->_conn changeTrackingID];
  if (changeTrackingID)
  {
    v18 = replyCopy;
    v19 = consumedCopy;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = consumedCopy;
    v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          conn = self->_conn;
          intValue = [v13 intValue];
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __98__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseMarkIndividualChangesConsumed_reply___block_invoke;
          v21[3] = &unk_27851A4F8;
          v16 = v8;
          v22 = v16;
          v23 = v13;
          selfCopy = self;
          v25 = changeTrackingID;
          [(ClientConnection *)conn withDatabaseID:intValue perform:v21];
        }

        v10 = [v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v10);
    }

    replyCopy = v18;
    v18[2](v18, 0);
    consumedCopy = v19;
  }

  else
  {
    replyCopy[2](replyCopy, 1018);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __98__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseMarkIndividualChangesConsumed_reply___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v13 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v2 = [MEMORY[0x277CF74C0] makeObjectChangeEntityTypeMapToArray:?];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [v2 allKeys];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        [v8 intValue];
        v9 = [v2 objectForKey:v8];
        v10 = [*(a1 + 48) _copyToIntCFArrayRef:v9];
        v11 = *(a1 + 56);
        CalDatabaseClearIndividualChangeRowIDsForClient();
        CFRelease(v10);
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (__CFArray)_copyToIntCFArrayRef:(id)ref
{
  v17 = *MEMORY[0x277D85DE8];
  refCopy = ref;
  Mutable = CFArrayCreateMutable(0, [refCopy count], 0);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = refCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        CFArrayAppendValue(Mutable, [*(*(&v12 + 1) + 8 * v9++) intValue]);
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
  return Mutable;
}

- (__CFSet)_copyToIntCFSetRef:(id)ref
{
  v17 = *MEMORY[0x277D85DE8];
  refCopy = ref;
  Mutable = CFSetCreateMutable(0, [refCopy count], 0);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = refCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        CFSetAddValue(Mutable, [*(*(&v12 + 1) + 8 * v9++) intValue]);
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
  return Mutable;
}

- (void)CADDatabaseGetSequenceToken:(id)token
{
  tokenCopy = token;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__2;
  v13 = __Block_byref_object_dispose__2;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  conn = self->_conn;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseGetSequenceToken___block_invoke;
  v8[3] = &unk_27851A520;
  v8[4] = &v9;
  [(ClientConnection *)conn withAllDatabasesPerform:v8];
  v6 = [CADSequenceToken alloc];
  v7 = [(CADSequenceToken *)v6 initWithAllDBSequenceMap:v10[5]];
  tokenCopy[2](tokenCopy, 0, v7);

  _Block_object_dispose(&v9, 8);
}

void __79__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseGetSequenceToken___block_invoke(uint64_t a1, uint64_t a2)
{
  SequenceNumber = CalDatabaseGetSequenceNumber();
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v7 = [MEMORY[0x277CCABB0] numberWithInt:SequenceNumber];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:a2];
  [v5 setObject:v7 forKey:v6];
}

- (void)CADDatabaseGetChangesSinceSequenceToken:(id)token reply:(id)reply
{
  tokenCopy = token;
  replyCopy = reply;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  conn = self->_conn;
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __97__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseGetChangesSinceSequenceToken_reply___block_invoke;
  v19 = &unk_27851A548;
  v11 = tokenCopy;
  v20 = v11;
  v12 = dictionary2;
  v21 = v12;
  v23 = &v24;
  v13 = dictionary;
  v22 = v13;
  [(ClientConnection *)conn withAllDatabasesPerform:&v16];
  if (*(v25 + 6))
  {

    v13 = 0;
    v14 = 0;
  }

  else
  {
    v15 = [CADSequenceToken alloc];
    v14 = [(CADSequenceToken *)v15 initWithAllDBSequenceMap:v12, v16, v17, v18, v19, v20, v21];
  }

  replyCopy[2](replyCopy, *(v25 + 6), v13, v14);

  _Block_object_dispose(&v24, 8);
}

void __97__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseGetChangesSinceSequenceToken_reply___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = [*(a1 + 32) sequenceForDatabaseID:a2];
  if (v7 < 0)
  {
    v8 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
    {
      v16 = 67109120;
      v17 = a2;
      _os_log_impl(&dword_22430B000, v8, OS_LOG_TYPE_INFO, "The sequence number for databaseID %d is less than 0. This should only happen when a new aux database is added", &v16, 8u);
    }
  }

  SequenceNumber = CalDatabaseGetSequenceNumber();
  v10 = *(a1 + 40);
  v11 = [MEMORY[0x277CCABB0] numberWithInt:SequenceNumber];
  v12 = [MEMORY[0x277CCABB0] numberWithInt:a2];
  [v10 setObject:v11 forKey:v12];

  if (v7 <= SequenceNumber)
  {
    v14 = CalDatabaseCopyChangesSinceSequenceNumber();
    [*(a1 + 48) addEntriesFromDictionary:v14];
  }

  else
  {
    v13 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      v16 = 67109632;
      v17 = v7;
      v18 = 1024;
      v19 = SequenceNumber;
      v20 = 1024;
      v21 = a2;
      _os_log_impl(&dword_22430B000, v13, OS_LOG_TYPE_ERROR, "Error: The lastSequenceNumber %d is greater than the currentSequenceNumber %d for databaseID %d", &v16, 0x14u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1001;
    *a4 = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)CADDatabaseGetChangedEntityIDsSinceTimestamp:(id)timestamp reply:(id)reply
{
  timestampCopy = timestamp;
  replyCopy = reply;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 1;
  databaseInitializationOptions = [(ClientConnection *)self->_conn databaseInitializationOptions];
  allowIntegrations = [databaseInitializationOptions allowIntegrations];

  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  allDatabases = [timestampCopy allDatabases];
  if ([allDatabases count])
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:allDatabases];
  }

  else
  {
    v14 = 0;
  }

  conn = self->_conn;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __102__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseGetChangedEntityIDsSinceTimestamp_reply___block_invoke;
  v22[3] = &unk_27851A570;
  v28 = &v35;
  v16 = timestampCopy;
  v23 = v16;
  v30 = allowIntegrations;
  v17 = v10;
  v24 = v17;
  v18 = v11;
  v25 = v18;
  v29 = &v31;
  v19 = v12;
  v26 = v19;
  v20 = v14;
  v27 = v20;
  [(ClientConnection *)conn withAllDatabasesPerform:v22];
  if ([v20 count])
  {
    *(v36 + 24) = 1;
LABEL_7:

    v18 = 0;
    v17 = 0;
    *(v32 + 24) = 0;
    goto LABEL_8;
  }

  if (v36[3])
  {
    goto LABEL_7;
  }

LABEL_8:
  v21 = [[CADInMemoryChangeTimestamp alloc] initWithTimestamps:v19];
  (*(replyCopy + 2))(replyCopy, 0, v17, v18, v21, *(v32 + 24));

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v35, 8);
}

void __102__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseGetChangedEntityIDsSinceTimestamp_reply___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:a2];
  v7 = [MEMORY[0x277CF7518] changeTrackingForDatabase:a3];
  if (!v7)
  {
    v8 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = a2;
      _os_log_impl(&dword_22430B000, v8, OS_LOG_TYPE_ERROR, "No change tracking for database with id %i. (Will not return any changes.)", buf, 8u);
    }

    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  if (*(*(*(a1 + 72) + 8) + 24))
  {
    os_unfair_lock_lock((a3 + 80));
    v9 = *(a3 + 160);
    if (*MEMORY[0x277CF7110] == 1)
    {
      os_unfair_lock_assert_owner((a3 + 80));
    }

    os_unfair_lock_unlock((a3 + 80));
    v10 = [objc_alloc(MEMORY[0x277CF7538]) initWithTimestampForMyself:CalMonotonicTime() others:v9];
  }

  else
  {
    v11 = [*(a1 + 32) timestampForDatabase:a2];
    if (!v11)
    {
      v11 = [objc_alloc(MEMORY[0x277CF7538]) initWithDawnOfTime];
    }

    v19 = 1;
    *buf = 0;
    v12 = *(a1 + 88);
    v18 = 0;
    v13 = [v7 changedEntityIDsForDatabase:a3 sinceTimestamp:v11 allowIntegrationChanges:v12 latestTimestamp:&v18 changeType:&v19 deleteOffset:buf];
    v10 = v18;
    if (v13)
    {
      [*(a1 + 40) setObject:v13 forKeyedSubscript:v6];
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*buf];
      [*(a1 + 48) setObject:v14 forKeyedSubscript:v6];

      v15 = *(*(a1 + 80) + 8);
      v16 = *(v15 + 24);
      if (v19 != 1)
      {
        v16 = 0;
      }

      *(v15 + 24) = v16;
    }

    else
    {
      *(*(*(a1 + 72) + 8) + 24) = 1;
    }
  }

  [*(a1 + 56) setObject:v10 forKeyedSubscript:v6];
  [*(a1 + 64) removeObject:v6];

  v17 = *MEMORY[0x277D85DE8];
}

- (void)CADDatabaseCanModifyCalendarDatabase:(id)database
{
  databaseCopy = database;
  (*(database + 2))(databaseCopy, 0, [(CADXPCImplementation *)self _CADDatabaseCanModifyCalendarDatabase]);
}

- (BOOL)_CADDatabaseCanModifyCalendarDatabase
{
  permissionValidator = [(ClientConnection *)self->_conn permissionValidator];
  canModifyCalendarDatabase = [permissionValidator canModifyCalendarDatabase];

  return canModifyCalendarDatabase;
}

- (void)CADDatabaseLastConfirmedSplashScreenVersion:(id)version
{
  v15 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  v5 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
  {
    conn = self->_conn;
    v7 = v5;
    identity = [(ClientConnection *)conn identity];
    v11 = 136315394;
    v12 = "[CADXPCImplementation(CADDatabaseOperationGroup) CADDatabaseLastConfirmedSplashScreenVersion:]";
    v13 = 2112;
    v14 = identity;
    _os_log_impl(&dword_22430B000, v7, OS_LOG_TYPE_DEBUG, "[%s] called by client: [%@].", &v11, 0x16u);
  }

  mEMORY[0x277CF74E0] = [MEMORY[0x277CF74E0] shared];
  versionCopy[2](versionCopy, 0, [mEMORY[0x277CF74E0] get_LastConfirmedSplashScreenVersionViewed]);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)CADDatabaseImportEvents:(id)events fromICSData:(id)data intoCalendarsWithIDs:(id)ds optionsMask:(unint64_t)mask batchSize:(int)size reply:(id)reply
{
  v111 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  dataCopy = data;
  dsCopy = ds;
  replyCopy = reply;
  v70 = dataCopy;
  v14 = [dataCopy count];
  v59 = dsCopy;
  v69 = eventsCopy;
  if (v14 != [dsCopy count])
  {
    v18 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      v19 = v18;
      *buf = 134218240;
      *&buf[4] = [dataCopy count];
      *&buf[12] = 2048;
      *&buf[14] = [dsCopy count];
      _os_log_impl(&dword_22430B000, v19, OS_LOG_TYPE_ERROR, "Mismatched number of data objects (%lu) and calendar row IDs (%lu).", buf, 0x16u);
    }

    goto LABEL_9;
  }

  if (eventsCopy)
  {
    v15 = [eventsCopy count];
    if (v15 != [dsCopy count])
    {
      v20 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
      {
        v21 = v20;
        *buf = 134218240;
        *&buf[4] = [eventsCopy count];
        *&buf[12] = 2048;
        *&buf[14] = [dsCopy count];
        _os_log_impl(&dword_22430B000, v21, OS_LOG_TYPE_ERROR, "Mismatched number of ID maps (%lu) and calendar row IDs (%lu).", buf, 0x16u);
      }

LABEL_9:
      replyCopy[2](replyCopy, 1001, 0);
      goto LABEL_48;
    }
  }

  v100 = 0;
  v101 = &v100;
  v102 = 0x2020000000;
  v103 = 0;
  v64 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(dataCopy, "count")}];
  v16 = 0;
  v17 = MEMORY[0x277CBEBF8];
  while (v16 < [dataCopy count])
  {
    [v64 addObject:v17];
    ++v16;
  }

  v71 = objc_opt_new();
  if (eventsCopy)
  {
    v75 = objc_opt_new();
  }

  else
  {
    v75 = 0;
  }

  v74 = objc_opt_new();
  v73 = objc_opt_new();
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  obj = v59;
  v22 = [obj countByEnumeratingWithState:&v96 objects:v110 count:16];
  if (v22)
  {
    v23 = 0;
    v67 = *v97;
    v66 = *MEMORY[0x277CF7570];
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v97 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v96 + 1) + 8 * i);
        null = [MEMORY[0x277CBEB68] null];
        v27 = v25 == null;

        databaseID = v66;
        if (!v27)
        {
          databaseID = [v25 databaseID];
        }

        v29 = [MEMORY[0x277CCABB0] numberWithInt:databaseID];
        v30 = [v71 objectForKeyedSubscript:v29];
        v31 = [v75 objectForKeyedSubscript:v29];
        v32 = [v74 objectForKeyedSubscript:v29];
        v33 = [v73 objectForKeyedSubscript:v29];
        if (v30)
        {
          v34 = v32;
        }

        else
        {
          v30 = objc_opt_new();
          [v71 setObject:v30 forKeyedSubscript:v29];
          if (v75)
          {
            v35 = objc_opt_new();

            [v75 setObject:v35 forKeyedSubscript:v29];
            v31 = v35;
          }

          v34 = objc_opt_new();

          [v74 setObject:v34 forKeyedSubscript:v29];
          v36 = objc_opt_new();

          [v73 setObject:v36 forKeyedSubscript:v29];
          v33 = v36;
        }

        v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v23];
        [v30 addObject:v37];

        v38 = [v69 objectAtIndexedSubscript:v23];
        [v31 addObject:v38];

        v39 = [v70 objectAtIndexedSubscript:v23];
        [v34 addObject:v39];

        [v33 addObject:v25];
        ++v23;
      }

      v22 = [obj countByEnumeratingWithState:&v96 objects:v110 count:16];
    }

    while (v22);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v107 = __Block_byref_object_copy__2;
  v108 = __Block_byref_object_dispose__2;
  array = [MEMORY[0x277CBEB18] array];
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v72 = v71;
  v40 = [v72 countByEnumeratingWithState:&v92 objects:v105 count:16];
  if (v40)
  {
    v68 = *v93;
LABEL_32:
    v41 = 0;
    while (1)
    {
      if (*v93 != v68)
      {
        objc_enumerationMutation(v72);
      }

      v42 = *(*(&v92 + 1) + 8 * v41);
      intValue = [v42 intValue];
      v44 = [v72 objectForKeyedSubscript:v42];
      v45 = [v75 objectForKeyedSubscript:v42];
      v46 = [v74 objectForKeyedSubscript:v42];
      v47 = [v73 objectForKeyedSubscript:v42];
      conn = self->_conn;
      v80[0] = MEMORY[0x277D85DD0];
      v80[1] = 3221225472;
      v80[2] = __136__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseImportEvents_fromICSData_intoCalendarsWithIDs_optionsMask_batchSize_reply___block_invoke;
      v80[3] = &unk_27851A598;
      v81 = v70;
      v49 = v46;
      v82 = v49;
      v50 = v47;
      v83 = v50;
      selfCopy = self;
      v51 = v45;
      sizeCopy = size;
      v85 = v51;
      v88 = &v100;
      v89 = buf;
      maskCopy = mask;
      v52 = v44;
      v86 = v52;
      v64 = v64;
      v87 = v64;
      [(ClientConnection *)conn withDatabaseID:intValue perform:v80];
      v53 = *(v101 + 6);
      if (v53)
      {

        v64 = 0;
      }

      if (v53)
      {
        break;
      }

      if (v40 == ++v41)
      {
        v40 = [v72 countByEnumeratingWithState:&v92 objects:v105 count:16];
        if (v40)
        {
          goto LABEL_32;
        }

        break;
      }
    }
  }

  (replyCopy)[2](replyCopy, *(v101 + 6), v64);
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v54 = v64;
  v55 = [v54 countByEnumeratingWithState:&v76 objects:v104 count:16];
  if (v55)
  {
    v56 = *v77;
    do
    {
      for (j = 0; j != v55; ++j)
      {
        if (*v77 != v56)
        {
          objc_enumerationMutation(v54);
        }

        [*(*&buf[8] + 40) addObjectsFromArray:*(*(&v76 + 1) + 8 * j)];
      }

      v55 = [v54 countByEnumeratingWithState:&v76 objects:v104 count:16];
    }

    while (v55);
  }

  [(ClientConnection *)self->_conn logAccessToObjects:*(*&buf[8] + 40)];
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v100, 8);
LABEL_48:

  v58 = *MEMORY[0x277D85DE8];
}

void __136__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseImportEvents_fromICSData_intoCalendarsWithIDs_optionsMask_batchSize_reply___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v56 = *MEMORY[0x277D85DE8];
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v5 = *(v3 + 40);
  v40 = v3;
  v36 = [v5 countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v36)
  {
    v34 = 0;
    v6 = 0;
    v35 = *v47;
    while (2)
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v47 != v35)
        {
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v46 + 1) + 8 * i);
        v9 = [*(v3 + 48) objectAtIndexedSubscript:v6];
        v10 = [MEMORY[0x277CBEB68] null];

        v11 = v9;
        if (v9 == v10)
        {

          v11 = 0;
        }

        v12 = *(v3 + 56);
        v13 = [*(v3 + 64) objectAtIndexedSubscript:v6];
        v14 = *(v40 + 104);
        v15 = *(v40 + 112);
        v45 = v11;
        v16 = [v12 _importEvents:v13 data:v8 intoCalendarWithID:v11 inDatabase:a3 optionsMask:v14 batchSize:v15 outCalendarObjectID:&v45 outError:*(*(v40 + 88) + 8) + 24];
        v17 = v45;

        v3 = v40;
        if (*(*(*(v40 + 88) + 8) + 24))
        {
          v19 = CADLogHandle;
          if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
          {
            v20 = *(*(*(v40 + 88) + 8) + 24);
            *buf = 138543618;
            v52 = v9;
            v53 = 1024;
            v54 = v20;
            _os_log_impl(&dword_22430B000, v19, OS_LOG_TYPE_ERROR, "Importing ICS data into calendar id %{public}@ failed with error %i", buf, 0x12u);
          }

          CalDatabaseRevert();

          goto LABEL_35;
        }

        [*(*(*(v40 + 96) + 8) + 40) addObject:v17];
        if (v16)
        {
          v34 = 1;
        }

        else
        {
          v18 = CADLogHandle;
          if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v52 = v9;
            _os_log_impl(&dword_22430B000, v18, OS_LOG_TYPE_INFO, "Importing ICS data into calendar id %{public}@ failed; returning no objects for this document", buf, 0xCu);
          }

          v16 = MEMORY[0x277CBEBF8];
        }

        [v4 addObject:v16];
        ++v6;
      }

      v36 = [v5 countByEnumeratingWithState:&v46 objects:v55 count:16];
      if (v36)
      {
        continue;
      }

      break;
    }

    if (v34)
    {
      CalDatabaseSave();
    }
  }

  else
  {
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v5 = v4;
  v21 = [v5 countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v21)
  {
    v22 = v21;
    v37 = v4;
    obja = v5;
    v23 = 0;
    v24 = *v42;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v42 != v24)
        {
          objc_enumerationMutation(obja);
        }

        v26 = *(*(&v41 + 1) + 8 * j);
        v27 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v26, "count")}];
        v28 = [*(v40 + 72) objectAtIndexedSubscript:v23];
        [*(v40 + 80) setObject:v27 atIndexedSubscript:{objc_msgSend(v28, "intValue")}];
        Count = CFArrayGetCount(v26);
        if (Count >= 1)
        {
          v30 = Count;
          for (k = 0; k != v30; ++k)
          {
            CFArrayGetValueAtIndex(v26, k);
            v32 = CADEntityCopyObjectID();
            if (v32)
            {
              [v27 addObject:v32];
            }
          }
        }

        ++v23;
      }

      v5 = obja;
      v22 = [obja countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v22);
    v4 = v37;
  }

LABEL_35:

  v33 = *MEMORY[0x277D85DE8];
}

- (id)_importEvents:(id)events data:(id)data intoCalendarWithID:(id)d inDatabase:(CalDatabase *)database optionsMask:(unint64_t)mask batchSize:(int)size outCalendarObjectID:(id *)iD outError:(int *)self0
{
  v79 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  dataCopy = data;
  dCopy = d;
  if (size)
  {
    CalDatabaseReset();
  }

  if (dCopy)
  {
    [dCopy entityID];
    DefaultCalendarForNewEvents = CalDatabaseCopyCalendarWithUID();
  }

  else
  {
    DefaultCalendarForNewEvents = CalDatabaseCopyOrCreateDefaultCalendarForNewEvents();
  }

  v19 = DefaultCalendarForNewEvents;
  if ([(CADXPCImplementation *)self _CADDatabaseCanModifyCalendarDatabase])
  {
    if (!v19)
    {
      v22 = 0;
      v21 = 1001;
      v23 = eventsCopy;
      goto LABEL_88;
    }

    v20 = CADEntityCopyObjectID();
    maskCopy = mask;
    if (v20)
    {
      if ([(ClientConnection *)self->_conn isCalendarRestricted:v19 forAction:1])
      {
        v21 = 1013;
        if (!iD)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (dataCopy)
        {
          v21 = 0;
        }

        else
        {
          v21 = 1001;
        }

        if (!iD)
        {
LABEL_17:

          if (v21)
          {
            v22 = 0;
            v23 = eventsCopy;
            goto LABEL_87;
          }

          v25 = CalCalendarCopyStore();
          v23 = eventsCopy;
          v72 = v25;
          if (v25)
          {
            if (CalStoreGetProhibitsICSImport())
            {
              v26 = CADLogHandle;
              if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
              {
                *buf = 138543362;
                v78 = dCopy;
                _os_log_impl(&dword_22430B000, v26, OS_LOG_TYPE_INFO, "Skipping import into calendar id %{public}@ because its source doesn't allow ICS import.", buf, 0xCu);
              }

              CalStoreGetType();
              updated = 0;
LABEL_83:
              CFRelease(v25);
LABEL_84:
              v21 = 0;
              if (updated)
              {
                v22 = updated;
              }

              else
              {
                v22 = MEMORY[0x277CBEBF8];
              }

              goto LABEL_87;
            }

            Type = CalStoreGetType();
            if (eventsCopy)
            {
              v30 = _copyExternalIDCallback;
            }

            else
            {
              v30 = 0;
            }

            v64 = v30;
            if (!Type)
            {
              localAccountInfo = [(ClientConnection *)self->_conn localAccountInfo];
LABEL_38:
              v71 = localAccountInfo;
              context = objc_autoreleasePoolPush();
              v75 = 0;
              v32 = [objc_alloc(MEMORY[0x277D7F108]) initWithData:dataCopy options:maskCopy error:&v75];
              v70 = v75;
              if (!v32)
              {
                v40 = CADLogHandle;
                if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v78 = v70;
                  _os_log_impl(&dword_22430B000, v40, OS_LOG_TYPE_ERROR, "Could not parse ICSDocument: %@", buf, 0xCu);
                }

                updated = 0;
                v41 = 0;
                v42 = v71;
                v25 = v72;
LABEL_82:

                objc_autoreleasePoolPop(context);
                if (!v25)
                {
                  goto LABEL_84;
                }

                goto LABEL_83;
              }

              v67 = v32;
              calendar = [v32 calendar];
              v66 = calendar;
              if ((*MEMORY[0x277CF75D0] & maskCopy) != 0)
              {
                v34 = 0;
LABEL_41:
                v35 = 0;
                v36 = 1;
                goto LABEL_42;
              }

              method = [calendar method];
              v34 = method;
              if (method > 2)
              {
                if (method == 3)
                {
                  v36 = 0;
                  goto LABEL_96;
                }

                if (method == 5)
                {
LABEL_60:
                  v36 = 1;
LABEL_96:
                  v35 = 1;
LABEL_42:
                  if ((*MEMORY[0x277CF7638] & maskCopy) != 0)
                  {
                    v37 = v35;
                  }

                  else
                  {
                    v37 = 0;
                  }

                  v68 = v37;
                  v62 = (*MEMORY[0x277CF75C0] & maskCopy) != 0;
                  v65 = [MEMORY[0x277D7F0D0] ICSStringFromMethod:v34];
                  v63 = v36;
                  if (v36 & 1) != 0 || (v35)
                  {
                    if ((v36 | v68))
                    {
                      log = CADLogHandle;
                      v43 = os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEFAULT);
                      if (v36)
                      {
                        if (v68)
                        {
                          if (!v43)
                          {
LABEL_66:
                            components = [v66 components];
                            LOBYTE(v60) = 1;
                            updated = CalItemsUpdateFromiCalendarDocumentWithOptionsIncludingPhantomMaster();
                            components2 = [v66 components];
                            v48 = (components2 != components) & v68;

                            if (v48 == 1)
                            {
                              [v66 setComponents:components options:2];
                            }

                            v25 = v72;
                            goto LABEL_75;
                          }

                          *buf = 138543362;
                          v78 = v65;
                          v44 = "Importing & handling iTIP message of type %{public}@";
                        }

                        else if (v35)
                        {
                          if (!v43)
                          {
                            goto LABEL_66;
                          }

                          *buf = 138543362;
                          v78 = v65;
                          v44 = "Import-only requested for iTIP message of type %{public}@";
                        }

                        else
                        {
                          if (!v43)
                          {
                            goto LABEL_66;
                          }

                          *buf = 138543362;
                          v78 = v65;
                          v44 = "Importing ICS with type %{public}@";
                        }

                        _os_log_impl(&dword_22430B000, log, OS_LOG_TYPE_DEFAULT, v44, buf, 0xCu);
                        goto LABEL_66;
                      }

                      v25 = v72;
                      if (v43)
                      {
                        *buf = 138543362;
                        v78 = v65;
                        _os_log_impl(&dword_22430B000, log, OS_LOG_TYPE_DEFAULT, "Handling iTIP message of type %{public}@", buf, 0xCu);
                      }

LABEL_74:
                      updated = 0;
LABEL_75:
                      v42 = v71;
                      if (v68)
                      {
                        selfCopy = self;
                        v41 = v67;
                        v50 = [(CADXPCImplementation *)selfCopy _handleiTIPMesssageAndCopyEventFromDocument:v67 data:dataCopy database:database store:v25 accountInfo:v71 options:v62];
                        if (v50)
                        {
                          v51 = v50;
                          if ((v63 & 1) == 0)
                          {
                            v76 = v50;
                            v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v76 count:1];

                            updated = v52;
                            v41 = v67;
                          }

                          CFRelease(v51);
                        }

                        else
                        {
                          v55 = CADLogHandle;
                          if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
                          {
                            v56 = v55;
                            calendar2 = [v67 calendar];
                            componentKeys = [calendar2 componentKeys];
                            firstObject = [componentKeys firstObject];
                            *buf = 138412290;
                            v78 = firstObject;
                            _os_log_impl(&dword_22430B000, v56, OS_LOG_TYPE_ERROR, "Didn't find event while handling iTIP message. (%@)", buf, 0xCu);

                            v23 = eventsCopy;
                            v41 = v67;

                            v42 = v71;
                          }
                        }
                      }

                      else
                      {
                        v41 = v67;
                      }

                      goto LABEL_82;
                    }

                    v38 = CADLogHandle;
                    if (!os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
                    {
LABEL_65:
                      v25 = v72;
                      if (v63)
                      {
                        goto LABEL_66;
                      }

                      goto LABEL_74;
                    }

                    *buf = 138543362;
                    v78 = v65;
                    v39 = "Got an iTIP message of type %{public}@, but asked not to handle it. Not importing.";
                  }

                  else
                  {
                    v38 = CADLogHandle;
                    if (!os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_65;
                    }

                    *buf = 138543362;
                    v78 = v65;
                    v39 = "Unsupported message type %{public}@. Not importing.";
                  }

                  _os_log_impl(&dword_22430B000, v38, OS_LOG_TYPE_ERROR, v39, buf, 0xCu);
                  goto LABEL_65;
                }
              }

              else
              {
                if (method < 2)
                {
                  goto LABEL_41;
                }

                if (method == 2)
                {
                  goto LABEL_60;
                }
              }

              v36 = 0;
              v35 = 0;
              goto LABEL_42;
            }
          }

          else
          {
            if (eventsCopy)
            {
              v28 = _copyExternalIDCallback;
            }

            else
            {
              v28 = 0;
            }

            v64 = v28;
          }

          localAccountInfo = [objc_alloc(MEMORY[0x277CF74D8]) initWithStore:v25];
          goto LABEL_38;
        }
      }
    }

    else
    {
      v21 = 1001;
      if (!iD)
      {
        goto LABEL_17;
      }
    }

    v24 = v20;
    *iD = v20;
    goto LABEL_17;
  }

  v22 = 0;
  v21 = 1016;
  v23 = eventsCopy;
  if (v19)
  {
LABEL_87:
    CFRelease(v19);
  }

LABEL_88:
  if (error)
  {
    *error = v21;
  }

  v53 = *MEMORY[0x277D85DE8];

  return v22;
}

- (void)_handleiTIPMesssageAndCopyEventFromDocument:(id)document data:(id)data database:(CalDatabase *)database store:(void *)store accountInfo:(id)info options:(unint64_t)options
{
  documentCopy = document;
  dataCopy = data;
  infoCopy = info;
  v16 = [objc_alloc(MEMORY[0x277CF7550]) initWithData:dataCopy document:documentCopy filename:0 scheduleChanges:0];
  [v16 setIMIPImported:1];
  v17 = [MEMORY[0x277CBEB98] setWithObject:v16];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __135__CADXPCImplementation_CADDatabaseOperationGroup___handleiTIPMesssageAndCopyEventFromDocument_data_database_store_accountInfo_options___block_invoke;
  v21[3] = &unk_27851A5C0;
  v21[4] = &v22;
  v18 = MEMORY[0x22AA4DCD0](v21);
  [MEMORY[0x277CF7548] processMessages:v17 withDatabase:database calStore:store accountInfo:infoCopy handledEventCallback:v18 cancellationToken:0 options:options];
  CalDatabaseSave();
  v19 = v23[3];

  _Block_object_dispose(&v22, 8);
  return v19;
}

void *__135__CADXPCImplementation_CADDatabaseOperationGroup___handleiTIPMesssageAndCopyEventFromDocument_data_database_store_accountInfo_options___block_invoke(void *result, int a2, int a3, int a4, CFTypeRef cf)
{
  if (cf)
  {
    v5 = result;
    if (!*(*(result[4] + 8) + 24))
    {
      result = CFRetain(cf);
      *(*(v5[4] + 8) + 24) = result;
    }
  }

  return result;
}

- (void)CADDatabaseExportICSDataForCalendarItems:(id)items options:(unint64_t)options reply:(id)reply
{
  itemsCopy = items;
  replyCopy = reply;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__2;
  v26 = __Block_byref_object_dispose__2;
  v27 = 0;
  conn = self->_conn;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __106__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseExportICSDataForCalendarItems_options_reply___block_invoke;
  v17 = &unk_27851A5E8;
  v19 = &v22;
  v20 = &v28;
  v11 = itemsCopy;
  v18 = v11;
  optionsCopy = options;
  if (![(ClientConnection *)conn withDatabaseForObjects:v11 perform:&v14])
  {
    *(v29 + 6) = 1010;
    goto LABEL_5;
  }

  if (*(v29 + 6))
  {
LABEL_5:
    v13 = v23[5];
    v23[5] = 0;

    v12 = *(v29 + 6);
    goto LABEL_6;
  }

  v12 = 0;
LABEL_6:
  replyCopy[2](replyCopy, v12, v23[5]);
  [(ClientConnection *)self->_conn logAccessToObjects:v11, v14, v15, v16, v17];

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);
}

void __106__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseExportICSDataForCalendarItems_options_reply___block_invoke(uint64_t a1, uint64_t a2, void *a3, os_unfair_lock_s *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (*(*(*(a1 + 40) + 8) + 40) || *(*(*(a1 + 48) + 8) + 24))
  {
    v7 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v7, OS_LOG_TYPE_ERROR, "-CADDatabaseExportICSDataForCalendarItems:options:reply: does not support combining items in multiple databases into a single ICS document", buf, 2u);
    }

    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;

    v10 = *(*(a1 + 48) + 8);
    v11 = 1001;
    goto LABEL_6;
  }

  v13 = [*(a1 + 32) count];
  Mutable = CFArrayCreateMutable(0, v13, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
    v10 = *(*(a1 + 48) + 8);
    v11 = 1007;
LABEL_6:
    *(v10 + 24) = v11;
    goto LABEL_7;
  }

  v15 = Mutable;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = v6;
  v17 = [v16 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v28;
    do
    {
      v20 = 0;
      do
      {
        if (*v28 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = CADCopyEntityInDatabase(a4, *(*(&v27 + 1) + 8 * v20));
        if (v21)
        {
          v22 = v21;
          CFArrayAppendValue(v15, v21);
          CFRelease(v22);
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v18);
  }

  v23 = *(a1 + 56);
  v24 = CalCreateiCalendarDataFromCalEntitiesWithOptions();
  v25 = *(*(a1 + 40) + 8);
  v26 = *(v25 + 40);
  *(v25 + 40) = v24;

  CFRelease(v15);
LABEL_7:

  v12 = *MEMORY[0x277D85DE8];
}

- (void)CADDatabaseExportICSDataForCalendar:(id)calendar options:(unint64_t)options reply:(id)reply
{
  calendarCopy = calendar;
  replyCopy = reply;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__2;
  v29 = __Block_byref_object_dispose__2;
  v30 = 0;
  v10 = objc_opt_new();
  conn = self->_conn;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __101__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseExportICSDataForCalendar_options_reply___block_invoke;
  v18 = &unk_27851A610;
  v12 = calendarCopy;
  v19 = v12;
  v13 = v10;
  v20 = v13;
  selfCopy = self;
  v22 = &v31;
  v23 = &v25;
  optionsCopy = options;
  if ([(ClientConnection *)conn withDatabaseForObject:v12 perform:&v15])
  {
    v14 = *(v32 + 6);
  }

  else
  {
    v14 = 1010;
    *(v32 + 6) = 1010;
  }

  replyCopy[2](replyCopy, v14, v26[5]);
  [(ClientConnection *)self->_conn logAccessToEntities:v13, v15, v16, v17, v18];

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);
}

void __101__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseExportICSDataForCalendar_options_reply___block_invoke(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3)
{
  v4 = CADCopyEntityInDatabase(a3, *(a1 + 32));
  [*(a1 + 40) addObject:v4];
  if (v4)
  {
    if ([*(*(a1 + 48) + 8) isCalendarRestricted:v4 forAction:0])
    {
      *(*(*(a1 + 56) + 8) + 24) = 1013;

      CFRelease(v4);
    }

    else
    {
      v5 = *(a1 + 72);
      v9 = *(a1 + 40);
      v6 = CalCreateiCalendarDataFromCalendarWithOptions();
      v7 = *(*(a1 + 64) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      if (!*(*(*(a1 + 64) + 8) + 40))
      {
        *(*(*(a1 + 56) + 8) + 24) = 1007;
      }

      CFRelease(v4);
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1010;
  }
}

- (void)CADDatabaseSetShowsDeclinedEvents:(BOOL)events reply:(id)reply
{
  eventsCopy = events;
  replyCopy = reply;
  if (CalShowDeclinedEvents() != eventsCopy)
  {
    CalSetShowDeclinedEvents();
    [(ClientConnection *)self->_conn withAllDatabasesPerform:&__block_literal_global_8];
  }

  replyCopy[2](replyCopy, 0);
}

- (void)CADDatabaseShowsDeclinedEventsWithReply:(id)reply
{
  replyCopy = reply;
  v3 = CalShowDeclinedEvents();
  replyCopy[2](replyCopy, 0, v3);
}

- (void)CADDatabaseSetShowsCompletedReminders:(BOOL)reminders reply:(id)reply
{
  remindersCopy = reminders;
  replyCopy = reply;
  if (CalShowCompletedReminders() != remindersCopy)
  {
    CalSetShowCompletedReminders();
    [(ClientConnection *)self->_conn withAllDatabasesPerform:&__block_literal_global_35];
  }

  replyCopy[2](replyCopy, 0);
}

- (void)CADDatabaseRebuildOccurrenceCacheWithReply:(id)reply
{
  v16 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = CADLogHandle;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    identity = [(ClientConnection *)self->_conn identity];
    *buf = 138412290;
    v15 = identity;
    _os_log_impl(&dword_22430B000, v5, OS_LOG_TYPE_DEBUG, "Received request to rebuild the occurrence cache from: [%@]", buf, 0xCu);
  }

  conn = self->_conn;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __94__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseRebuildOccurrenceCacheWithReply___block_invoke;
  v9[3] = &unk_27851A520;
  v9[4] = &v10;
  [(ClientConnection *)conn withAllDatabasesPerform:v9];
  replyCopy[2](replyCopy, *(v11 + 6));
  _Block_object_dispose(&v10, 8);

  v8 = *MEMORY[0x277D85DE8];
}

void __94__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseRebuildOccurrenceCacheWithReply___block_invoke(uint64_t a1)
{
  v2 = CalDatabaseRebuildOccurrenceCache();
  v3 = CADLogHandle;
  v4 = os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v3, OS_LOG_TYPE_DEBUG, "The occurrence cache was rebuilt successfully.", buf, 2u);
    }
  }

  else
  {
    if (v4)
    {
      *v5 = 0;
      _os_log_impl(&dword_22430B000, v3, OS_LOG_TYPE_DEBUG, "The occurrence cache was not rebuilt successfully.", v5, 2u);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1017;
  }
}

- (void)CADDatabaseCommitDeletes:(id)deletes updatesAndInserts:(id)inserts options:(int64_t)options andFetchChangesSinceTimestamp:(id)timestamp withReply:(id)reply
{
  optionsCopy = options;
  v222 = *MEMORY[0x277D85DE8];
  deletesCopy = deletes;
  insertsCopy = inserts;
  timestampCopy = timestamp;
  replyCopy = reply;
  v190 = 0;
  v191 = &v190;
  v192 = 0x2020000000;
  v193 = 0;
  selfCopy = self;
  _CADDatabaseCanModifyCalendarDatabase = [(CADXPCImplementation *)self _CADDatabaseCanModifyCalendarDatabase];
  v14 = v191;
  if (_CADDatabaseCanModifyCalendarDatabase)
  {
    if (*(v191 + 6) || [(ClientConnection *)self->_conn eventAccessLevel])
    {
      if ((optionsCopy & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v14 = v191;
    v15 = 1013;
  }

  else
  {
    v15 = 1016;
  }

  *(v14 + 6) = v15;
  if (optionsCopy)
  {
LABEL_8:
    v16 = [(CADXPCImplementation *)self removeDuplicateEvents:insertsCopy];

    insertsCopy = v16;
  }

LABEL_9:
  v117 = objc_opt_new();
  v118 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v141 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v119 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v189 = -1;
  v140 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v187 = 0u;
  v188 = 0u;
  v185 = 0u;
  v186 = 0u;
  obj = deletesCopy;
  v17 = [obj countByEnumeratingWithState:&v185 objects:v213 count:16];
  if (v17)
  {
    v134 = 0;
    v139 = 0;
    v18 = *v186;
    v19 = *MEMORY[0x277CF7570];
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v186 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v185 + 1) + 8 * i);
        databaseID = [v21 databaseID];
        v23 = [MEMORY[0x277CCABB0] numberWithInt:databaseID];
        v24 = [v141 objectForKeyedSubscript:v23];
        if (!v24)
        {
          v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v141 setObject:v24 forKeyedSubscript:v23];
        }

        [v24 addObject:v21];
        [v140 addObject:v23];
        if (databaseID != v19 && [v21 entityType] == 6)
        {
          if (!v139)
          {
            v139 = objc_opt_new();
            v25 = objc_opt_new();

            v134 = v25;
          }

          [v139 addObject:v23];
        }
      }

      v17 = [obj countByEnumeratingWithState:&v185 objects:v213 count:16];
    }

    while (v17);
  }

  else
  {
    v134 = 0;
    v139 = 0;
  }

  eventAccessLevel = [(ClientConnection *)selfCopy->_conn eventAccessLevel];
  v183 = 0u;
  v184 = 0u;
  v181 = 0u;
  v182 = 0u;
  v27 = insertsCopy;
  v28 = [v27 countByEnumeratingWithState:&v181 objects:v212 count:16];
  if (!v28)
  {

    v136 = 0;
    v36 = v191;
    goto LABEL_87;
  }

  v136 = 0;
  v29 = *v182;
  do
  {
    for (j = 0; j != v28; ++j)
    {
      if (*v182 != v29)
      {
        objc_enumerationMutation(v27);
      }

      v31 = *(*(&v181 + 1) + 8 * j);
      entityType = [v31 entityType];
      if (entityType == 1)
      {
        goto LABEL_33;
      }

      if (entityType != 2)
      {
        if (entityType != 6)
        {
          continue;
        }

LABEL_33:
        if (eventAccessLevel == 1)
        {
          v33 = CADLogHandle;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            v34 = [v27 objectForKeyedSubscript:v31];
            *buf = 138543618;
            *&buf[4] = v31;
            *&buf[12] = 2112;
            *&buf[14] = v34;
            _os_log_impl(&dword_22430B000, v33, OS_LOG_TYPE_ERROR, "With limited access, we should not allow changing calendar or store entity with ID %{public}@ (updates: %@)", buf, 0x16u);
          }

          *(v191 + 6) = 1013;
        }

        continue;
      }

      if ([v31 isTemporary])
      {
        v35 = v136;
        if (!v136)
        {
          v35 = objc_opt_new();
        }

        v136 = v35;
        [v35 addObject:v31];
      }
    }

    v28 = [v27 countByEnumeratingWithState:&v181 objects:v212 count:16];
  }

  while (v28);

  v36 = v191;
  if (v136)
  {
    if (!*(v191 + 6))
    {
      v37 = selfCopy->_conn;
      v38 = v136;
      v205 = 0;
      v206 = &v205;
      v207 = 0x2020000000;
      v208 = 0;
      v110 = [CADOperationGroupUtil defaultCalendarForNewEventsInDelegateSource:0 withConnection:v37 limitedAccess:0];
      effectiveApplicationIdentifier = [(ClientConnection *)v37 effectiveApplicationIdentifier];
      v109 = v37;
      effectiveTeamIdentifier = [(ClientConnection *)v37 effectiveTeamIdentifier];
      v39 = v27;
      v125 = [v39 mutableCopy];
      v204 = 0u;
      v202 = 0u;
      v203 = 0u;
      v201 = 0u;
      v40 = v38;
      v41 = [v40 countByEnumeratingWithState:&v201 objects:buf count:16];
      v136 = v40;
      if (v41)
      {
        v42 = *v202;
        v128 = *MEMORY[0x277CF73E0];
        v114 = *MEMORY[0x277CF7200];
        v113 = *MEMORY[0x277CF7308];
        v111 = *MEMORY[0x277CF7310];
        while (2)
        {
          v43 = v41;
          for (k = 0; k != v43; ++k)
          {
            if (*v202 != v42)
            {
              objc_enumerationMutation(v40);
            }

            v45 = *(*(&v201 + 1) + 8 * k);
            v46 = [v125 objectForKeyedSubscript:?];
            v131 = [v46 mutableCopy];

            if (eventAccessLevel == 1)
            {
              v47 = [v39 objectForKeyedSubscript:v45];
              v48 = [v47 valueForKey:v128];

              if (v48)
              {
                v49 = [v39 objectForKeyedSubscript:v48];
                do
                {
                  if (![v48 isTemporary])
                  {
                    if (*(v206 + 6))
                    {
                      v51 = v49;
                      goto LABEL_148;
                    }

                    if (!v49 || ([v49 valueForKey:v114], v53 = objc_claimAutoreleasedReturnValue(), v54 = v53 == 0, v53, v54))
                    {
                      *v214 = 0;
                      *&v214[8] = v214;
                      *&v214[16] = 0x3032000000;
                      v215 = __Block_byref_object_copy__2;
                      v216 = __Block_byref_object_dispose__2;
                      v217 = 0;
                      v194 = MEMORY[0x277D85DD0];
                      v195 = 3221225472;
                      v196 = ___handleNewCreatedEvents_block_invoke;
                      v197 = &unk_27851A7F0;
                      v59 = v48;
                      v198 = v59;
                      v199 = &v205;
                      v200 = v214;
                      [(ClientConnection *)v109 withDatabaseForObject:v59 perform:&v194];
                      if (*(v206 + 6))
                      {

                        _Block_object_dispose(v214, 8);
                        v48 = v59;
                        goto LABEL_85;
                      }

                      [v131 setObject:*(*&v214[8] + 40) forKeyedSubscript:v114];

                      _Block_object_dispose(v214, 8);
                    }

                    else
                    {
                      v55 = [v49 valueForKey:v114];
                      isVirtual = [v55 isVirtual];
                      v57 = v110;
                      if ((isVirtual & 1) == 0)
                      {
                        isTemporary = [v55 isTemporary];
                        v57 = v55;
                        if (isTemporary)
                        {
                          v57 = v110;
                        }
                      }

                      [v131 setObject:v57 forKeyedSubscript:v114];
                    }

                    v51 = v49;
                    goto LABEL_72;
                  }

                  if (!v49)
                  {
                    v60 = CADLogHandle;
                    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
                    {
                      *v214 = 138412802;
                      *&v214[4] = v48;
                      *&v214[12] = 2112;
                      *&v214[14] = v39;
                      *&v214[22] = 2112;
                      v215 = v45;
                      _os_log_impl(&dword_22430B000, v60, OS_LOG_TYPE_ERROR, "Error when trying to fetch changes for a temporary item %@ that should exist in updates dictionary %@ but it doesn't, when handlng new created event %@ for limited access client.", v214, 0x20u);
                    }

                    *(v206 + 6) = 1007;
                    goto LABEL_85;
                  }

                  v50 = [v49 valueForKey:v128];

                  v51 = [v39 objectForKeyedSubscript:v50];

                  v48 = v50;
                  v49 = v51;
                }

                while (v50);
                if (!*(v206 + 6))
                {
                  goto LABEL_57;
                }

                v48 = 0;
LABEL_148:

LABEL_85:
                v40 = v136;
                goto LABEL_86;
              }

              v52 = [v39 objectForKeyedSubscript:v45];
              v51 = [v52 valueForKey:v114];

              if (v51 && (([v51 isVirtual] & 1) != 0 || objc_msgSend(v51, "isTemporary")))
              {
LABEL_57:
                [v131 setObject:v110 forKeyedSubscript:v114];
              }

LABEL_72:
            }

            if (effectiveApplicationIdentifier)
            {
              [v131 setObject:effectiveApplicationIdentifier forKeyedSubscript:v113];
            }

            if (effectiveTeamIdentifier)
            {
              [v131 setObject:effectiveTeamIdentifier forKeyedSubscript:v111];
            }

            [v125 setObject:v131 forKeyedSubscript:v45];

            v40 = v136;
          }

          v41 = [v136 countByEnumeratingWithState:&v201 objects:buf count:16];
          if (v41)
          {
            continue;
          }

          break;
        }
      }

LABEL_86:

      v61 = v125;
      v62 = *(v206 + 6);

      _Block_object_dispose(&v205, 8);
      v27 = v125;

      v36 = v191;
      *(v191 + 6) = v62;
    }
  }

  else
  {
    v136 = 0;
  }

LABEL_87:
  if (*(v36 + 6))
  {
    goto LABEL_103;
  }

  v63 = [v27 mutableCopy];
  v179 = 0u;
  v180 = 0u;
  v177 = 0u;
  v178 = 0u;
  v64 = v27;
  v65 = [v64 countByEnumeratingWithState:&v177 objects:v211 count:16];
  if (!v65)
  {
    goto LABEL_102;
  }

  v66 = *v178;
  v121 = *MEMORY[0x277CF71A8];
  v129 = *MEMORY[0x277CF7400];
  v126 = *MEMORY[0x277CF73F0];
  v124 = *MEMORY[0x277CF7418];
  v132 = *MEMORY[0x277CF7218];
  v67 = *MEMORY[0x277CF73E0];
  while (2)
  {
    v68 = 0;
    while (2)
    {
      if (*v178 != v66)
      {
        objc_enumerationMutation(v64);
      }

      v69 = *(*(&v177 + 1) + 8 * v68);
      if (eventAccessLevel == 1)
      {
        entityType2 = [*(*(&v177 + 1) + 8 * v68) entityType];
        if ((entityType2 - 7) < 2)
        {
          _recursivelyFindAndReplacePropertyFromRebasedObject(selfCopy->_conn, v69, v64, v129, v63);
          _recursivelyFindAndReplacePropertyFromRebasedObject(selfCopy->_conn, v69, v64, v126, v63);
          v71 = v124;
LABEL_99:
          _recursivelyFindAndReplacePropertyFromRebasedObject(selfCopy->_conn, v69, v64, v71, v63);
        }

        else
        {
          v71 = v132;
          if (entityType2 == 2)
          {
            goto LABEL_99;
          }

          if (entityType2 == 4)
          {
            v71 = v121;
            goto LABEL_99;
          }
        }
      }

      v72 = [v63 objectForKeyedSubscript:v69];
      v73 = [v72 mutableCopy];

      [v73 removeObjectForKey:v67];
      [v63 setObject:v73 forKeyedSubscript:v69];

      if (v65 != ++v68)
      {
        continue;
      }

      break;
    }

    v65 = [v64 countByEnumeratingWithState:&v177 objects:v211 count:16];
    if (v65)
    {
      continue;
    }

    break;
  }

LABEL_102:

  v27 = v63;
  if (*(v191 + 6))
  {
LABEL_103:
    v74 = 0;
    v133 = 0;
    v75 = 0;
  }

  else
  {
    v175 = 0u;
    v176 = 0u;
    v173 = 0u;
    v174 = 0u;
    v27 = v27;
    v95 = 0;
    v96 = [v27 countByEnumeratingWithState:&v173 objects:v210 count:16];
    if (v96)
    {
      v133 = 0;
      v75 = 0;
      v97 = *v174;
      while (2)
      {
        for (m = 0; m != v96; ++m)
        {
          if (*v174 != v97)
          {
            objc_enumerationMutation(v27);
          }

          v99 = *(*(&v173 + 1) + 8 * m);
          if ([v99 isTemporary])
          {
            v172 = v75;
            v171 = v133;
            v100 = [(CADXPCImplementation *)selfCopy findDatabaseForObject:v99 withUpdates:v27 personas:&v172 accounts:&v171 nextTempDBID:&v189];
            v101 = v172;

            v102 = v171;
            if (v100 == 0x80000000)
            {
              v107 = CADLogHandle;
              if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
              {
                v108 = [v27 objectForKeyedSubscript:v99];
                *buf = 138543618;
                *&buf[4] = v99;
                *&buf[12] = 2112;
                *&buf[14] = v108;
                _os_log_impl(&dword_22430B000, v107, OS_LOG_TYPE_ERROR, "Couldn't find database for object with temporary ID %{public}@ (updates: %@)", buf, 0x16u);
              }

              *(v191 + 6) = 1001;
              v133 = v102;
              v75 = v101;
              goto LABEL_145;
            }

            v103 = [MEMORY[0x277CCABB0] numberWithInt:v100];
            v104 = [v118 objectForKeyedSubscript:v103];
            if (!v104)
            {
              v104 = objc_alloc_init(MEMORY[0x277CBEB18]);
              [v118 setObject:v104 forKeyedSubscript:v103];
            }

            [v104 addObject:v99];

            ++v95;
            v133 = v102;
            v75 = v101;
          }

          else
          {
            v103 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v99, "databaseID")}];
            [v117 addObject:v99];
          }

          v105 = [v119 objectForKeyedSubscript:v103];
          if (!v105)
          {
            v105 = objc_alloc_init(MEMORY[0x277CBEB38]);
            [v119 setObject:v105 forKeyedSubscript:v103];
          }

          v106 = [v27 objectForKeyedSubscript:v99];
          [v105 setObject:v106 forKeyedSubscript:v99];

          [v140 addObject:v103];
        }

        v96 = [v27 countByEnumeratingWithState:&v173 objects:v210 count:16];
        if (v96)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v133 = 0;
      v75 = 0;
    }

LABEL_145:

    v74 = v95;
  }

  v130 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v74];
  if (!*(v191 + 6))
  {
    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    v122 = v140;
    v76 = [v122 countByEnumeratingWithState:&v167 objects:v209 count:16];
    if (v76)
    {
      v127 = *v168;
      v115 = *MEMORY[0x277CF7570];
LABEL_107:
      v77 = 0;
      while (1)
      {
        if (*v168 != v127)
        {
          objc_enumerationMutation(v122);
        }

        v78 = *(*(&v167 + 1) + 8 * v77);
        v79 = [v118 objectForKeyedSubscript:v78];
        v80 = [v141 objectForKeyedSubscript:v78];
        v81 = [v119 objectForKeyedSubscript:v78];
        intValue = [v78 intValue];
        if ((intValue & 0x80000000) != 0)
        {
          conn = selfCopy->_conn;
          v148[0] = MEMORY[0x277D85DD0];
          v148[1] = 3221225472;
          v148[2] = __142__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseCommitDeletes_updatesAndInserts_options_andFetchChangesSinceTimestamp_withReply___block_invoke_2;
          v148[3] = &unk_27851A6A8;
          v149 = v75;
          v150 = v78;
          v151 = v133;
          v152 = selfCopy;
          v157 = &v190;
          v153 = v79;
          v154 = v80;
          v155 = v81;
          v156 = v130;
          [(ClientConnection *)conn withDatabaseID:v115 perform:v148];
        }

        else
        {
          *(v191 + 6) = 1010;
          v83 = selfCopy->_conn;
          v158[0] = MEMORY[0x277D85DD0];
          v158[1] = 3221225472;
          v158[2] = __142__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseCommitDeletes_updatesAndInserts_options_andFetchChangesSinceTimestamp_withReply___block_invoke;
          v158[3] = &unk_27851A658;
          v166 = &v190;
          v158[4] = selfCopy;
          v159 = v79;
          v160 = v80;
          v161 = v81;
          v162 = v130;
          v163 = v139;
          v164 = v78;
          v165 = v134;
          [(ClientConnection *)v83 withDatabaseID:intValue perform:v158];
        }

        v85 = *(v191 + 6) == 0;

        if (!v85)
        {
          break;
        }

        if (v76 == ++v77)
        {
          v76 = [v122 countByEnumeratingWithState:&v167 objects:v209 count:16];
          if (v76)
          {
            goto LABEL_107;
          }

          break;
        }
      }
    }

    if (!*(v191 + 6) && ([v75 count] || objc_msgSend(v134, "count")))
    {
      v86 = selfCopy->_conn;
      v87 = *MEMORY[0x277CF7570];
      v143[0] = MEMORY[0x277D85DD0];
      v143[1] = 3221225472;
      v143[2] = __142__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseCommitDeletes_updatesAndInserts_options_andFetchChangesSinceTimestamp_withReply___block_invoke_2_38;
      v143[3] = &unk_27851A6D0;
      v144 = v75;
      v147 = &v190;
      v145 = v133;
      v146 = v134;
      [(ClientConnection *)v86 withDatabaseID:v87 perform:v143];
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v219 = __Block_byref_object_copy__2;
  v220 = __Block_byref_object_dispose__2;
  v221 = 0;
  *v214 = 0;
  *&v214[8] = v214;
  *&v214[16] = 0x2020000000;
  LOBYTE(v215) = 0;
  *&v201 = 0;
  *(&v201 + 1) = &v201;
  *&v202 = 0x3032000000;
  *(&v202 + 1) = __Block_byref_object_copy__2;
  *&v203 = __Block_byref_object_dispose__2;
  *(&v203 + 1) = 0;
  v194 = 0;
  v195 = &v194;
  v196 = 0x3032000000;
  v197 = __Block_byref_object_copy__2;
  v198 = __Block_byref_object_dispose__2;
  v199 = 0;
  v88 = *(v191 + 6);
  if (v88)
  {
    v89 = 0;
    v90 = 0;
    v91 = 0;
    v92 = 0;
  }

  else
  {
    v142[0] = MEMORY[0x277D85DD0];
    v142[1] = 3221225472;
    v142[2] = __142__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseCommitDeletes_updatesAndInserts_options_andFetchChangesSinceTimestamp_withReply___block_invoke_39;
    v142[3] = &unk_27851A6F8;
    v142[4] = &v201;
    v142[5] = &v194;
    v142[6] = buf;
    v142[7] = v214;
    [(CADXPCImplementation *)selfCopy CADDatabaseGetChangedEntityIDsSinceTimestamp:timestampCopy reply:v142];
    v88 = *(v191 + 6);
    v92 = *(*(&v201 + 1) + 40);
    v91 = *(v195 + 40);
    v90 = *(*&buf[8] + 40);
    v89 = *(*&v214[8] + 24);
  }

  replyCopy[2](replyCopy, v88, v130, v92, v91, v90, v89 & 1);
  allValues = [v130 allValues];
  [v117 addObjectsFromArray:allValues];

  [(ClientConnection *)selfCopy->_conn logAccessToObjects:v117];
  _Block_object_dispose(&v194, 8);

  _Block_object_dispose(&v201, 8);
  _Block_object_dispose(v214, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v190, 8);
  v94 = *MEMORY[0x277D85DE8];
}

void __142__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseCommitDeletes_updatesAndInserts_options_andFetchChangesSinceTimestamp_withReply___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 96) + 8) + 24) = [*(a1 + 32) insert:*(a1 + 40) deletes:*(a1 + 48) updates:*(a1 + 56) insertedObjectIDMap:*(a1 + 64) inDatabase:a3];
  if ([*(a1 + 72) containsObject:*(a1 + 80)])
  {
    v4 = CalDatabaseCopyOfAllStores();
    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * v10);
          v12 = CalStoreCopyExternalID();
          if (v12)
          {
            [v5 addObject:{v12, v14}];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [*(a1 + 88) setObject:v5 forKeyedSubscript:*(a1 + 80)];
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __142__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseCommitDeletes_updatesAndInserts_options_andFetchChangesSinceTimestamp_withReply___block_invoke_2(uint64_t a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v3 = [*(a1 + 48) objectForKeyedSubscript:v2];
  v4 = [*(*(a1 + 56) + 8) databaseInitializationOptions];
  v5 = objc_alloc(MEMORY[0x277CF7520]);
  v6 = [v4 databaseDirectory];
  v7 = [v5 initWithDirectoryURL:v6];

  [v7 setOptions:{objc_msgSend(v4, "databaseInitOptions")}];
  v8 = [v4 calendarDataContainerProvider];

  if (v8)
  {
    v9 = [v4 calendarDataContainerProvider];
    [v7 setDataContainerProvider:v9];
  }

  v10 = CalDatabaseCreateWithConfigurationForPersonaID();
  if (v10)
  {
    v11 = v10;
    v12 = CalDatabaseCopyAuxDatabaseForPersonaID();
    if (v12)
    {
      v13 = v12;
      v34 = v3;
      v35 = v2;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v14 = v3;
      v15 = [v14 countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v15)
      {
        v16 = v15;
        v31 = v11;
        v32 = v7;
        v17 = *v42;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v42 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v41 + 1) + 8 * i);
            AuxDatabaseAccount = CalDatabaseCreateAuxDatabaseAccount();
            CalAuxDatabaseAccountSetAccountID();
            CalAuxDatabaseAddAccount();
            CFRelease(AuxDatabaseAccount);
          }

          v16 = [v14 countByEnumeratingWithState:&v41 objects:v45 count:16];
        }

        while (v16);

        CFRelease(v13);
        CalDatabaseSave();
        v11 = v31;
        v7 = v32;
      }

      else
      {

        CFRelease(v13);
      }

      AuxilliaryDatabaseID = CalDatabaseGetAuxilliaryDatabaseID();
      [*(*(a1 + 56) + 8) addCreatedAuxDatabase:v11];
      v24 = *(a1 + 96);
      v33 = *(a1 + 56);
      v25 = *(v33 + 8);
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __142__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseCommitDeletes_updatesAndInserts_options_andFetchChangesSinceTimestamp_withReply___block_invoke_37;
      v36[3] = &unk_27851A680;
      v40 = v24;
      v26 = *(&v33 + 1);
      v27 = *(a1 + 72);
      v28 = *(a1 + 80);
      *&v29 = v27;
      *(&v29 + 1) = v28;
      v37 = v33;
      v38 = v29;
      v39 = *(a1 + 88);
      [v25 withDatabaseID:AuxilliaryDatabaseID perform:v36];

      v3 = v34;
      v2 = v35;
    }

    else
    {
      v22 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v47 = v2;
        _os_log_impl(&dword_22430B000, v22, OS_LOG_TYPE_ERROR, "Couldn't find aux database for persona [%{public}@] immediately after it should have been created", buf, 0xCu);
      }

      *(*(*(a1 + 96) + 8) + 24) = 1007;
    }

    CFRelease(v11);
  }

  else
  {
    v21 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v47 = v2;
      _os_log_impl(&dword_22430B000, v21, OS_LOG_TYPE_ERROR, "Couldn't create database for persona [%{public}@]", buf, 0xCu);
    }

    *(*(*(a1 + 96) + 8) + 24) = 1007;
  }

  v30 = *MEMORY[0x277D85DE8];
}

uint64_t __142__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseCommitDeletes_updatesAndInserts_options_andFetchChangesSinceTimestamp_withReply___block_invoke_37(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(a1 + 32) insert:*(a1 + 40) deletes:*(a1 + 48) updates:*(a1 + 56) insertedObjectIDMap:*(a1 + 64) inDatabase:a3];
  *(*(*(a1 + 72) + 8) + 24) = result;
  return result;
}

void __142__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseCommitDeletes_updatesAndInserts_options_andFetchChangesSinceTimestamp_withReply___block_invoke_2_38(uint64_t a1)
{
  v1 = a1;
  v74 = *MEMORY[0x277D85DE8];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v64 objects:v73 count:16];
  v46 = v1;
  if (v3)
  {
    v5 = v3;
    v51 = 0;
    v6 = *v65;
    *&v4 = 138543362;
    v40 = v4;
    v42 = *v65;
    obj = v2;
    do
    {
      v7 = 0;
      v47 = v5;
      do
      {
        if (*v65 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v64 + 1) + 8 * v7);
        if (([v8 intValue] & 0x80000000) == 0)
        {
          v9 = [*(v1 + 32) objectForKeyedSubscript:v8];
          v10 = CalDatabaseCopyAuxDatabaseForPersonaID();
          if (v10)
          {
            v11 = v10;
            v49 = [*(v1 + 32) objectForKeyedSubscript:v8];
            v12 = [*(v1 + 40) objectForKeyedSubscript:?];
            v60 = 0u;
            v61 = 0u;
            v62 = 0u;
            v63 = 0u;
            v13 = [v12 countByEnumeratingWithState:&v60 objects:v70 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v61;
              do
              {
                for (i = 0; i != v14; ++i)
                {
                  if (*v61 != v15)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v17 = *(*(&v60 + 1) + 8 * i);
                  AuxDatabaseAccount = CalDatabaseCreateAuxDatabaseAccount();
                  CalAuxDatabaseAccountSetAccountID();
                  CalAuxDatabaseAddAccount();
                  CFRelease(AuxDatabaseAccount);
                }

                v14 = [v12 countByEnumeratingWithState:&v60 objects:v70 count:16];
              }

              while (v14);
              v51 = 1;
              v2 = obj;
              v1 = v46;
              v6 = v42;
              v5 = v47;
            }

            CFRelease(v11);
          }

          else
          {
            v19 = CADLogHandle;
            if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = v40;
              v72 = v9;
              _os_log_impl(&dword_22430B000, v19, OS_LOG_TYPE_ERROR, "Couldn't find aux database for persona [%{public}@] shortly after confirming that it existed", buf, 0xCu);
            }

            *(*(*(v1 + 56) + 8) + 24) = 1007;
          }
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [v2 countByEnumeratingWithState:&v64 objects:v73 count:16];
    }

    while (v5);
  }

  else
  {
    v51 = 0;
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obja = *(v1 + 48);
  v48 = [obja countByEnumeratingWithState:&v56 objects:v69 count:16];
  if (v48)
  {
    v21 = *v57;
    *&v20 = 67109120;
    v41 = v20;
    v43 = *v57;
    do
    {
      for (j = 0; j != v48; ++j)
      {
        if (*v57 != v21)
        {
          objc_enumerationMutation(obja);
        }

        v23 = *(*(&v56 + 1) + 8 * j);
        [v23 intValue];
        v24 = CalDatabaseCopyAuxDatabaseWithUID();
        if (v24)
        {
          v25 = v24;
          v50 = j;
          v26 = CalAuxDatabaseCopyAccounts();
          v27 = [*(v1 + 48) objectForKeyedSubscript:v23];
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v28 = v26;
          v29 = [v28 countByEnumeratingWithState:&v52 objects:v68 count:16];
          if (v29)
          {
            v30 = v29;
            LODWORD(v31) = 0;
            v32 = *v53;
            do
            {
              for (k = 0; k != v30; ++k)
              {
                if (*v53 != v32)
                {
                  objc_enumerationMutation(v28);
                }

                v34 = *(*(&v52 + 1) + 8 * k);
                v35 = CalAuxDatabaseAccountCopyAccountID();
                if (([v27 containsObject:v35] & 1) == 0)
                {
                  LODWORD(v31) = v31 + 1;
                  CalAuxDatabaseRemoveAccount();
                  v51 = 1;
                }
              }

              v30 = [v28 countByEnumeratingWithState:&v52 objects:v68 count:16];
            }

            while (v30);
            v31 = v31;
            v1 = v46;
            v21 = v43;
          }

          else
          {
            v31 = 0;
          }

          if ([v28 count] == v31)
          {
            CalRemoveAuxDatabase();
            v51 = 1;
          }

          CFRelease(v25);

          j = v50;
        }

        else
        {
          v36 = CADLogHandle;
          if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
          {
            v37 = v36;
            v38 = [v23 intValue];
            *buf = v41;
            LODWORD(v72) = v38;
            _os_log_impl(&dword_22430B000, v37, OS_LOG_TYPE_ERROR, "Couldn't find aux database for id [%i] shortly after modifying it", buf, 8u);
          }
        }
      }

      v48 = [obja countByEnumeratingWithState:&v56 objects:v69 count:16];
    }

    while (v48);
  }

  if (v51)
  {
    CalDatabaseSave();
  }

  v39 = *MEMORY[0x277D85DE8];
}

void __142__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseCommitDeletes_updatesAndInserts_options_andFetchChangesSinceTimestamp_withReply___block_invoke_39(void *a1, uint64_t a2, void *a3, void *a4, void *a5, char a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = *(a1[4] + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v10;
  v21 = v10;

  v15 = *(a1[5] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v11;
  v17 = v11;

  v18 = *(a1[6] + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v12;
  v20 = v12;

  *(*(a1[7] + 8) + 24) = a6;
}

- (int)findDatabaseForObject:(id)object withUpdates:(id)updates personas:(id *)personas accounts:(id *)accounts nextTempDBID:(int *)d
{
  v52 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  updatesCopy = updates;
  if ([objectCopy isTemporary])
  {
    v14 = [updatesCopy objectForKeyedSubscript:objectCopy];
    if ([objectCopy entityType] == 6)
    {
      v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277CF74A8]];
      v16 = [v14 objectForKeyedSubscript:*MEMORY[0x277CF74B0]];
      if ([v16 intValue] - 1 > 1)
      {
        v17 = 0;
      }

      else
      {
        v17 = [v14 objectForKeyedSubscript:*MEMORY[0x277CF73D0]];
      }

      if (v17 | v15)
      {
        v27 = v16;
        v42 = 0;
        v43 = &v42;
        v44 = 0x2020000000;
        v45 = 0x80000000;
        *buf = 0;
        v47 = buf;
        v48 = 0x3032000000;
        v49 = __Block_byref_object_copy__2;
        v50 = __Block_byref_object_dispose__2;
        v51 = *personas;
        v36 = 0;
        v37 = &v36;
        v38 = 0x3032000000;
        v39 = __Block_byref_object_copy__2;
        v40 = __Block_byref_object_dispose__2;
        v22 = *accounts;
        conn = self->_conn;
        v41 = v22;
        v23 = *MEMORY[0x277CF7570];
        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __116__CADXPCImplementation_CADDatabaseOperationGroup__findDatabaseForObject_withUpdates_personas_accounts_nextTempDBID___block_invoke;
        v29[3] = &unk_27851A720;
        v30 = v17;
        v32 = &v42;
        v31 = v15;
        v33 = buf;
        v34 = &v36;
        dCopy = d;
        [(ClientConnection *)conn withDatabaseID:v23 perform:v29];
        v16 = v27;
        *accounts = v37[5];
        *personas = *(v47 + 5);
        databaseID2 = *(v43 + 6);

        _Block_object_dispose(&v36, 8);
        _Block_object_dispose(buf, 8);

        _Block_object_dispose(&v42, 8);
      }

      else
      {
        databaseID2 = *MEMORY[0x277CF7570];
      }
    }

    else
    {
      v19 = [(CADXPCImplementation *)self owningObjectForObject:objectCopy withProperties:v14];
      v15 = v19;
      if (v19)
      {
        if (![v19 isVirtual])
        {
          if ([v15 isTemporary])
          {
            databaseID = [(CADXPCImplementation *)self findDatabaseForObject:v15 withUpdates:updatesCopy personas:personas accounts:accounts nextTempDBID:d];
          }

          else
          {
            databaseID = [v15 databaseID];
          }

          databaseID2 = databaseID;
          goto LABEL_20;
        }

        v20 = CADLogHandle;
        if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
        {
          v21 = v20;
          *buf = 67109120;
          *&buf[4] = [objectCopy entityType];
          _os_log_impl(&dword_22430B000, v21, OS_LOG_TYPE_ERROR, "Unexpected fake entity type %d in -findDatabaseForObject:withUpdates:", buf, 8u);
        }
      }

      databaseID2 = 0x80000000;
    }

LABEL_20:

    goto LABEL_21;
  }

  databaseID2 = [objectCopy databaseID];
LABEL_21:

  v25 = *MEMORY[0x277D85DE8];
  return databaseID2;
}

void __116__CADXPCImplementation_CADDatabaseOperationGroup__findDatabaseForObject_withUpdates_personas_accounts_nextTempDBID___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = CalDatabaseGetCalendarDataContainerProvider();
  v3 = v2;
  if (*(a1 + 32))
  {
    v4 = [v2 containerInfoForAccountIdentifier:?];
    if (![v4 usesDataSeparatedContainer])
    {
      *(*(*(a1 + 48) + 8) + 24) = *MEMORY[0x277CF7570];

      v5 = 0;
      goto LABEL_31;
    }

    v5 = [v4 personaID];
  }

  else
  {
    v5 = *(a1 + 40);
  }

  v6 = CalDatabaseCopyAuxDatabaseForPersonaID();
  if (v6)
  {
    v7 = v6;
    *(*(*(a1 + 48) + 8) + 24) = CalAuxDatabaseGetUID();
    if (*(a1 + 32))
    {
      v8 = CalDatabaseCopyAuxDatabaseAccountForAccountID();
      if (v8)
      {
        CFRelease(v8);
        CFRelease(v7);
        goto LABEL_31;
      }
    }

    CFRelease(v7);
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = *(*(*(a1 + 56) + 8) + 40);
    v10 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v31;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v30 + 1) + 8 * i);
          v15 = [*(*(*(a1 + 56) + 8) + 40) objectForKeyedSubscript:{v14, v30}];
          if ([v5 isEqualToString:v15])
          {
            *(*(*(a1 + 48) + 8) + 24) = [v14 intValue];

            goto LABEL_21;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:

    v16 = *(*(a1 + 48) + 8);
    if (*(v16 + 24) == 0x80000000)
    {
      v17 = *(a1 + 72);
      v18 = *v17;
      *(v16 + 24) = *v17;
      *v17 = v18 - 1;
    }
  }

  v19 = *(*(*(a1 + 56) + 8) + 40);
  if (!v19)
  {
    v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v21 = *(*(a1 + 56) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;

    v19 = *(*(*(a1 + 56) + 8) + 40);
  }

  v23 = [MEMORY[0x277CCABB0] numberWithInt:{*(*(*(a1 + 48) + 8) + 24), v30}];
  [v19 setObject:v5 forKeyedSubscript:v23];

  if (*(a1 + 32))
  {
    v24 = *(*(*(a1 + 64) + 8) + 40);
    if (!v24)
    {
      v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v26 = *(*(a1 + 64) + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;

      v24 = *(*(*(a1 + 64) + 8) + 40);
    }

    v28 = [v24 objectForKeyedSubscript:v5];
    if (!v28)
    {
      v28 = objc_alloc_init(MEMORY[0x277CBEB58]);
      [*(*(*(a1 + 64) + 8) + 40) setObject:v28 forKeyedSubscript:v5];
    }

    [v28 addObject:*(a1 + 32)];
  }

LABEL_31:

  v29 = *MEMORY[0x277D85DE8];
}

- (int)insert:(id)insert deletes:(id)deletes updates:(id)updates insertedObjectIDMap:(id)map inDatabase:(CalDatabase *)database
{
  v36 = *MEMORY[0x277D85DE8];
  insertCopy = insert;
  deletesCopy = deletes;
  updatesCopy = updates;
  mapCopy = map;
  v16 = [(CADXPCImplementation *)self preflightAccessForDeletes:deletesCopy updates:updatesCopy inDatabase:database];
  v34 = v16;
  if (!v16)
  {
    os_unfair_lock_lock(&database->var9);
    v17 = [(CADXPCImplementation *)self _insert:insertCopy delete:deletesCopy update:updatesCopy database:database error:&v34];
    if (v34)
    {
      if (*MEMORY[0x277CF7110] == 1)
      {
        os_unfair_lock_assert_owner(&database->var9);
      }

      os_unfair_lock_unlock(&database->var9);
    }

    else
    {
      if ((CalDatabaseSaveWithOptions() & 1) == 0)
      {
        v34 = 1007;
LABEL_19:
        CalDatabaseReset();
LABEL_20:

        v16 = v34;
        goto LABEL_21;
      }

      if (v17)
      {
        v28 = deletesCopy;
        v29 = insertCopy;
        AuxilliaryDatabaseID = CalDatabaseGetAuxilliaryDatabaseID();
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v19 = v17;
        v20 = [v19 countByEnumeratingWithState:&v30 objects:v35 count:16];
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
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v30 + 1) + 8 * i);
              [v19 objectForKeyedSubscript:v24];

              v25 = [objc_alloc(MEMORY[0x277CF74C8]) initWithEntityType:objc_msgSend(v24 entityID:"entityType") databaseID:{CalEntityGetID(), AuxilliaryDatabaseID}];
              [mapCopy setObject:v25 forKeyedSubscript:v24];
            }

            v21 = [v19 countByEnumeratingWithState:&v30 objects:v35 count:16];
          }

          while (v21);
        }

        deletesCopy = v28;
        insertCopy = v29;
      }
    }

    if (!v34)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_21:

  v26 = *MEMORY[0x277D85DE8];
  return v16;
}

- (int)preflightAccessForDeletes:(id)deletes updates:(id)updates inDatabase:(CalDatabase *)database
{
  v55 = *MEMORY[0x277D85DE8];
  deletesCopy = deletes;
  updatesCopy = updates;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v10 = deletesCopy;
  v11 = [v10 countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v49;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v49 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(CADXPCImplementation *)self preflightObjectID:*(*(&v48 + 1) + 8 * i) inDatabase:database];
        if (v15)
        {
          v32 = v15;
          v16 = v10;
          goto LABEL_32;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v48 objects:v54 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v16 = updatesCopy;
  v17 = [v16 countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v45;
    v38 = v16;
    v39 = updatesCopy;
    v35 = *v45;
    while (2)
    {
      v20 = 0;
      v36 = v18;
      do
      {
        if (*v45 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v37 = v20;
        v21 = *(*(&v44 + 1) + 8 * v20);
        v22 = [(CADXPCImplementation *)self preflightObjectID:v21 inDatabase:database];
        if (v22)
        {
          v32 = v22;
          goto LABEL_32;
        }

        v23 = [v16 objectForKeyedSubscript:v21];
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v24 = v23;
        v25 = [v24 countByEnumeratingWithState:&v40 objects:v52 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v41;
          while (2)
          {
            for (j = 0; j != v26; ++j)
            {
              if (*v41 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v40 + 1) + 8 * j);
              v30 = [v24 objectForKeyedSubscript:v29];
              if (![(CADXPCImplementation *)self _verifyClientAllowedToWriteValue:v30 forKey:v29])
              {
                v32 = 1013;
LABEL_31:

                v16 = v38;
                updatesCopy = v39;
                goto LABEL_32;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v31 = [(CADXPCImplementation *)self preflightObjectID:v30 inDatabase:database];
                if (v31)
                {
                  v32 = v31;
                  goto LABEL_31;
                }
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v40 objects:v52 count:16];
            if (v26)
            {
              continue;
            }

            break;
          }
        }

        v20 = v37 + 1;
        v16 = v38;
        updatesCopy = v39;
        v19 = v35;
      }

      while (v37 + 1 != v36);
      v18 = [v38 countByEnumeratingWithState:&v44 objects:v53 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v32 = 0;
LABEL_32:

  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

- (BOOL)_verifyClientAllowedToWriteValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  if (_verifyClientAllowedToWriteValue_forKey__onceToken != -1)
  {
    [CADXPCImplementation(CADDatabaseOperationGroup) _verifyClientAllowedToWriteValue:forKey:];
  }

  v8 = [_verifyClientAllowedToWriteValue_forKey__protectedKeys objectForKeyedSubscript:keyCopy];
  v9 = v8;
  if (v8)
  {
    v10 = -[CADXPCImplementation hasAccess:](self, "hasAccess:", [v8 unsignedIntegerValue]);
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

void __91__CADXPCImplementation_CADDatabaseOperationGroup___verifyClientAllowedToWriteValue_forKey___block_invoke()
{
  v5[3] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CF71B0];
  v4[0] = *MEMORY[0x277CF7498];
  v4[1] = v0;
  v5[0] = &unk_2837C7360;
  v5[1] = &unk_2837C7378;
  v4[2] = *MEMORY[0x277CF71B8];
  v5[2] = &unk_2837C7390;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];
  v2 = _verifyClientAllowedToWriteValue_forKey__protectedKeys;
  _verifyClientAllowedToWriteValue_forKey__protectedKeys = v1;

  v3 = *MEMORY[0x277D85DE8];
}

- (int)preflightObjectID:(id)d inDatabase:(CalDatabase *)database
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([dCopy isTemporary])
  {
    v7 = 0;
  }

  else
  {
    v8 = CADCopyEntityInDatabase(database, dCopy);
    if (v8)
    {
      v9 = v8;
      if (CADEntityIsInRestrictedStore(self->_conn, v8, 1))
      {
        v10 = CADLogHandle;
        if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
        {
          v14 = 138543362;
          v15 = dCopy;
          _os_log_impl(&dword_22430B000, v10, OS_LOG_TYPE_ERROR, "Failed preflight check: access denied to entity %{public}@", &v14, 0xCu);
        }

        v7 = 1013;
      }

      else
      {
        v7 = 0;
      }

      CFRelease(v9);
    }

    else
    {
      v11 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
      {
        v14 = 138543362;
        v15 = dCopy;
        _os_log_impl(&dword_22430B000, v11, OS_LOG_TYPE_ERROR, "Failed preflight check: can not find entity %{public}@", &v14, 0xCu);
      }

      v7 = 1010;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)_insert:(id)_insert delete:(id)delete update:(id)update database:(CalDatabase *)database error:(int *)error
{
  deleteCopy = delete;
  updateCopy = update;
  *error = 0;
  v14 = [(CADXPCImplementation *)self _insertObjectsWithTemporaryObjectIDs:_insert updates:updateCopy database:database error:error];
  if (*error || (v15 = [(CADXPCImplementation *)self _deleteObjects:deleteCopy database:database], (*error = v15) != 0) || (v16 = [(CADXPCImplementation *)self _updatePropertiesAndRelations:updateCopy database:database insertedObjectMap:v14], (*error = v16) != 0))
  {
    v17 = 0;
  }

  else
  {
    v17 = v14;
  }

  return v17;
}

- (id)_insertObjectsWithTemporaryObjectIDs:(id)ds updates:(id)updates database:(CalDatabase *)database error:(int *)error
{
  v45 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  updatesCopy = updates;
  v9 = [dsCopy count];
  if (v9)
  {
    errorCopy = error;
    v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v9];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v32 = dsCopy;
    v11 = dsCopy;
    v12 = [v11 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v12)
    {
      v13 = v12;
      v37 = 0;
      v14 = *v39;
      v34 = *MEMORY[0x277CF7378];
      v33 = *MEMORY[0x277CF7380];
      v35 = v11;
LABEL_4:
      v15 = 0;
      while (2)
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v38 + 1) + 8 * v15);
        entityType = [v16 entityType];
        switch(entityType)
        {
          case 1:
            CalendarForEntityType = _CalDatabaseCreateCalendarForEntityType();
            goto LABEL_38;
          case 2:
            CalendarForEntityType = _CalCalendarItemCreate();
            goto LABEL_38;
          case 3:
          case 13:
          case 22:
          case 25:
          case 26:
          case 27:
            goto LABEL_11;
          case 4:
            CalendarForEntityType = _CalDatabaseCreateAlarm();
            goto LABEL_38;
          case 5:
            CalendarForEntityType = _CalDatabaseCreateRecurrence();
            goto LABEL_38;
          case 6:
            CalendarForEntityType = _CalDatabaseCreateStore();
            goto LABEL_38;
          case 7:
            CalendarForEntityType = _CalDatabaseCreateAttendee();
            goto LABEL_38;
          case 8:
            CalendarForEntityType = _CalDatabaseCreateOrganizer();
            goto LABEL_38;
          case 9:
            CalendarForEntityType = _CalDatabaseCreateEventAction();
            goto LABEL_38;
          case 10:
            CalendarForEntityType = _CalDatabaseCreateExceptionDate();
            goto LABEL_38;
          case 11:
            CalendarForEntityType = _CalDatabaseCreateAttachment();
            goto LABEL_38;
          case 12:
            CalendarForEntityType = _CalDatabaseCreateCategory();
            goto LABEL_38;
          case 14:
            CalendarForEntityType = _CalDatabaseCreateLocation();
            goto LABEL_38;
          case 15:
            CalendarForEntityType = _CalDatabaseCreateSharee();
            goto LABEL_38;
          case 16:
            CalendarForEntityType = _CalDatabaseCreateInviteReplyNotification();
            goto LABEL_38;
          case 17:
            CalendarForEntityType = _CalDatabaseCreateResourceChangeNotification();
            goto LABEL_38;
          case 18:
            CalendarForEntityType = _CalCreateResourceChangeOfType();
            goto LABEL_38;
          case 19:
            CalendarForEntityType = _CalDatabaseCreateSuggestionNotification();
            goto LABEL_38;
          case 20:
            CalendarForEntityType = _CalDatabaseCreateSuggestedEventInfo();
            goto LABEL_38;
          case 21:
            CalendarForEntityType = _CalDatabaseCreateContact();
            goto LABEL_38;
          case 23:
            CalendarForEntityType = _CalDatabaseCreateConference();
            goto LABEL_38;
          case 24:
            CalendarForEntityType = _CalDatabaseCreateError();
            goto LABEL_38;
          case 28:
            v22 = [updatesCopy objectForKeyedSubscript:v16];
            v23 = [v22 objectForKeyedSubscript:v34];
            v24 = [v22 objectForKeyedSubscript:v33];
            if (([v24 isTemporary] & 1) != 0 || (objc_msgSend(v24, "entityID"), (ImageWithIdentifierInStoreID = _CalDatabaseGetImageWithIdentifierInStoreID()) == 0))
            {
              Image = _CalDatabaseCreateImage();
            }

            else
            {
              Image = CFRetain(ImageWithIdentifierInStoreID);
            }

            v27 = Image;

            v11 = v35;
            if (!v27)
            {
              goto LABEL_40;
            }

            goto LABEL_39;
          case 29:
            CalendarForEntityType = _CalDatabaseCreateColor();
            goto LABEL_38;
          default:
            if (entityType == 102)
            {
              CalendarForEntityType = _CalDatabaseCreateNotification();
LABEL_38:
              v27 = CalendarForEntityType;
              if (CalendarForEntityType)
              {
LABEL_39:
                [v10 setObject:v27 forKeyedSubscript:v16];
                CFRelease(v27);
              }
            }

            else
            {
LABEL_11:
              v19 = CADLogHandle;
              if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
              {
                v20 = v19;
                entityType2 = [v16 entityType];
                *buf = 67109120;
                v43 = entityType2;
                _os_log_impl(&dword_22430B000, v20, OS_LOG_TYPE_ERROR, "Attempt to insert an invalid entity type (%d)", buf, 8u);
              }

              v37 = 1001;
            }

LABEL_40:
            if (v13 != ++v15)
            {
              continue;
            }

            v28 = [v11 countByEnumeratingWithState:&v38 objects:v44 count:16];
            v13 = v28;
            if (!v28)
            {
              goto LABEL_49;
            }

            goto LABEL_4;
        }
      }
    }

    v37 = 0;
LABEL_49:

    if (errorCopy)
    {
      *errorCopy = v37;
    }

    dsCopy = v32;
  }

  else
  {
    v10 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v10;
}

- (int)_deleteObjects:(id)objects database:(CalDatabase *)database
{
  v18 = *MEMORY[0x277D85DE8];
  objectsCopy = objects;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [objectsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(objectsCopy);
        }

        v10 = _CADGetEntity(database, *(*(&v13 + 1) + 8 * v9));
        if (v10)
        {
          _CADDeleteEntity(v10);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [objectsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

- (int)_updatePropertiesAndRelations:(id)relations database:(CalDatabase *)database insertedObjectMap:(id)map
{
  v46 = *MEMORY[0x277D85DE8];
  relationsCopy = relations;
  mapCopy = map;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v8 = relationsCopy;
  v9 = [v8 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v41;
    v34 = v8;
    v30 = *MEMORY[0x277CF7258];
    v31 = *v41;
LABEL_3:
    v12 = 0;
    v32 = v10;
LABEL_4:
    if (*v41 != v11)
    {
      objc_enumerationMutation(v8);
    }

    v13 = *(*(&v40 + 1) + 8 * v12);
    v14 = _CADGetExistingOrInsertedEntity(database, v13, mapCopy);
    if (v14)
    {
      v15 = v14;
      v33 = v12;
      v16 = [v8 objectForKeyedSubscript:v13];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v36 objects:v44 count:16];
      if (!v18)
      {
        goto LABEL_20;
      }

      v19 = v18;
      v20 = *v37;
LABEL_9:
      v21 = 0;
      while (1)
      {
        if (*v37 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v36 + 1) + 8 * v21);
        v23 = [v17 objectForKeyedSubscript:{v22, v30}];
        null = [MEMORY[0x277CBEB68] null];

        if (v23 == null)
        {
          break;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = _CADGetExistingOrInsertedEntity(database, v23, mapCopy);
LABEL_16:

          v23 = v25;
        }

        v26 = _CalEntitySetProperty(database, v15, v22, v23);

        if (v26)
        {

          v8 = v34;
          goto LABEL_27;
        }

        if (v19 == ++v21)
        {
          v19 = [v17 countByEnumeratingWithState:&v36 objects:v44 count:16];
          if (v19)
          {
            goto LABEL_9;
          }

LABEL_20:

          v27 = [v17 objectForKeyedSubscript:v30];
          if (v27)
          {
            _CalEntitySetProperty(database, v15, v30, v27);
          }

          v12 = v33 + 1;
          v8 = v34;
          v11 = v31;
          if (v33 + 1 == v32)
          {
            v10 = [v34 countByEnumeratingWithState:&v40 objects:v45 count:16];
            v26 = 0;
            if (!v10)
            {
              goto LABEL_27;
            }

            goto LABEL_3;
          }

          goto LABEL_4;
        }
      }

      v25 = 0;
      goto LABEL_16;
    }

    v26 = 1010;
  }

  else
  {
    v26 = 0;
  }

LABEL_27:

  v28 = *MEMORY[0x277D85DE8];
  return v26;
}

- (id)removeDuplicateEvents:(id)events
{
  v35 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [eventsCopy countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (!v5)
  {
    goto LABEL_17;
  }

  v7 = v5;
  v8 = 0;
  v9 = *v27;
  v10 = &CADLogHandle;
  *&v6 = 138543618;
  v24 = v6;
  selfCopy = self;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v27 != v9)
      {
        objc_enumerationMutation(eventsCopy);
      }

      v12 = *(*(&v26 + 1) + 8 * i);
      if ([v12 entityType] == 2 && (objc_msgSend(v12, "entityID") & 0x80000000) != 0 && -[CADXPCImplementation isDuplicateEvent:updates:](self, "isDuplicateEvent:updates:", v12, eventsCopy))
      {
        conn = [(CADXPCImplementation *)self conn];
        identity = [conn identity];

        v15 = *v10;
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG|OS_LOG_TYPE_INFO))
        {
          v16 = v15;
          [identity clientName];
          v17 = v8;
          v19 = v18 = v10;
          v20 = [identity pid];
          *buf = v24;
          v31 = v19;
          v32 = 1024;
          v33 = v20;
          _os_log_impl(&dword_22430B000, v16, OS_LOG_TYPE_DEBUG|OS_LOG_TYPE_INFO, "A new event being saved by a legacy write-only client (%{public}@ [%i]) is very similar to an existing event. Refusing to commit it.", buf, 0x12u);

          v10 = v18;
          v8 = v17;
          self = selfCopy;
        }

        if (!v8)
        {
          v8 = [eventsCopy mutableCopy];
        }

        v21 = [(CADXPCImplementation *)self updatedOrInsertedObjectIDs:v8 relatedToEvent:v12];
        [v8 removeObjectsForKeys:v21];
      }
    }

    v7 = [eventsCopy countByEnumeratingWithState:&v26 objects:v34 count:16];
  }

  while (v7);
  if (!v8)
  {
LABEL_17:
    v8 = eventsCopy;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)isDuplicateEvent:(id)event updates:(id)updates
{
  eventCopy = event;
  updatesCopy = updates;
  v8 = [updatesCopy objectForKeyedSubscript:eventCopy];
  v9 = [v8 objectForKeyedSubscript:*MEMORY[0x277CF7288]];
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277CF7318]];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  conn = self->_conn;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __76__CADXPCImplementation_CADDatabaseOperationGroup__isDuplicateEvent_updates___block_invoke;
  v17[3] = &unk_27851A748;
  v12 = v9;
  v18 = v12;
  v13 = v10;
  v19 = v13;
  selfCopy = self;
  v14 = eventCopy;
  v21 = v14;
  v15 = updatesCopy;
  v22 = v15;
  v23 = &v24;
  [(ClientConnection *)conn withAllDatabasesPerform:v17];
  LOBYTE(eventCopy) = *(v25 + 24);

  _Block_object_dispose(&v24, 8);
  return eventCopy;
}

void __76__CADXPCImplementation_CADDatabaseOperationGroup__isDuplicateEvent_updates___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = CalDatabaseCopyOriginalVisibleEventsWithDates();
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ([*(a1 + 48) shouldBlockSaveOfEvent:*(a1 + 56) updates:*(a1 + 64) becauseOfExistingEvent:{*(*(&v14 + 1) + 8 * i), v14}])
        {
          *(*(*(a1 + 72) + 8) + 24) = 1;
          *a4 = 1;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldBlockSaveOfEvent:(id)event updates:(id)updates becauseOfExistingEvent:(void *)existingEvent
{
  v64[6] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  updatesCopy = updates;
  v11 = *MEMORY[0x277CF7260];
  v64[0] = *MEMORY[0x277CF72B8];
  v64[1] = v11;
  v12 = *MEMORY[0x277CF71F0];
  v64[2] = *MEMORY[0x277CF7250];
  v64[3] = v12;
  v13 = *MEMORY[0x277CF7210];
  v64[4] = *MEMORY[0x277CF7290];
  v64[5] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:6];
  v53 = updatesCopy;
  v15 = [updatesCopy objectForKeyedSubscript:eventCopy];
  if ([(CADXPCImplementation *)self object:existingEvent matchesProperties:v15 forKeys:v14])
  {
    v49 = v15;
    v16 = CalEventCopyCreatorIdentityString();
    v50 = CalEventCopyCreatorTeamIdentityString();
    v51 = v16;
    if (!(v16 | v50))
    {
LABEL_20:
      v47 = v14;
      v25 = CalCalendarItemCopyRecurrences();
      v5 = [v25 mutableCopy];

      v48 = eventCopy;
      [(CADXPCImplementation *)self updatedOrInsertedObjectIDs:v53 relatedToEvent:eventCopy];
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v26 = v61 = 0u;
      v27 = [v26 countByEnumeratingWithState:&v58 objects:v63 count:16];
      v52 = v26;
      if (v27)
      {
        v28 = v27;
        v29 = *v59;
        while (2)
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v59 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v58 + 1) + 8 * i);
            if ([v31 entityType] == 5)
            {
              for (j = 0; j < [v5 count]; ++j)
              {
                v33 = [v5 objectAtIndexedSubscript:j];
                v34 = [v53 objectForKeyedSubscript:v31];
                v35 = [(CADXPCImplementation *)self recurrenceRule:v33 matchesProperties:v34];

                if (v35)
                {
                  break;
                }
              }

              if (j >= [v5 count])
              {
                v26 = v52;

                goto LABEL_47;
              }

              [v5 removeObjectAtIndex:j];
              v26 = v52;
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v58 objects:v63 count:16];
          if (v28)
          {
            continue;
          }

          break;
        }
      }

      if ([v5 count])
      {
LABEL_47:
        v19 = 0;
        v14 = v47;
        eventCopy = v48;
        v21 = v50;
      }

      else
      {
        v36 = CalCalendarItemCopyLocation();
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v37 = v26;
        v38 = [v37 countByEnumeratingWithState:&v54 objects:v62 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = *v55;
          eventCopy = v48;
          while (2)
          {
            for (k = 0; k != v39; ++k)
            {
              if (*v55 != v40)
              {
                objc_enumerationMutation(v37);
              }

              v42 = *(*(&v54 + 1) + 8 * k);
              if ([v42 entityType] == 14)
              {
                if (!v36 || ([v53 objectForKeyedSubscript:v42], v43 = objc_claimAutoreleasedReturnValue(), v44 = -[CADXPCImplementation location:matchesProperties:](self, "location:matchesProperties:", v36, v43), v43, CFRelease(v36), !v44))
                {

                  goto LABEL_59;
                }

                v36 = 0;
              }
            }

            v39 = [v37 countByEnumeratingWithState:&v54 objects:v62 count:16];
            if (v39)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          eventCopy = v48;
        }

        if (v36)
        {
          CFRelease(v36);
LABEL_59:
          v19 = 0;
        }

        else
        {
          v19 = 1;
        }

        v14 = v47;
        v21 = v50;
        v26 = v52;
      }

      goto LABEL_49;
    }

    if (v16 || ([(ClientConnection *)self->_conn effectiveApplicationIdentifier], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      existingEvent = [(ClientConnection *)self->_conn effectiveApplicationIdentifier];
      if (([v16 isEqual:existingEvent] & 1) == 0)
      {

        v19 = 0;
        v20 = v16;
        v18 = 0;
        v21 = v50;
        if (v20)
        {
LABEL_50:

          v15 = v49;
          goto LABEL_51;
        }

LABEL_49:

        v18 = v19;
        goto LABEL_50;
      }

      v17 = 1;
    }

    else
    {
      v17 = 0;
    }

    if (v50 || ([(ClientConnection *)self->_conn effectiveTeamIdentifier], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v22 = v14;
      effectiveTeamIdentifier = [(ClientConnection *)self->_conn effectiveTeamIdentifier];
      v24 = [v50 isEqual:effectiveTeamIdentifier] ^ 1;

      v14 = v22;
      if (v50)
      {
        if (!v17)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v24 = 0;
    }

    if ((v17 & 1) == 0)
    {
LABEL_16:
      if (v51)
      {
        if (v24)
        {
LABEL_18:
          v18 = 0;
          v21 = v50;
          goto LABEL_50;
        }
      }

      else
      {

        if (v24)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_20;
    }

LABEL_15:

    goto LABEL_16;
  }

  v18 = 0;
LABEL_51:

  v45 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)recurrenceRule:(void *)rule matchesProperties:(id)properties
{
  v14[6] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CF7448];
  v14[0] = *MEMORY[0x277CF7440];
  v14[1] = v6;
  v7 = *MEMORY[0x277CF7428];
  v14[2] = *MEMORY[0x277CF7430];
  v14[3] = v7;
  v8 = *MEMORY[0x277CF7438];
  v14[4] = *MEMORY[0x277CF7458];
  v14[5] = v8;
  v9 = MEMORY[0x277CBEA60];
  propertiesCopy = properties;
  v11 = [v9 arrayWithObjects:v14 count:6];
  LOBYTE(rule) = [(CADXPCImplementation *)self object:rule matchesProperties:propertiesCopy forKeys:v11];

  v12 = *MEMORY[0x277D85DE8];
  return rule;
}

- (BOOL)location:(void *)location matchesProperties:(id)properties
{
  v12[2] = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CF7388];
  v12[0] = *MEMORY[0x277CF73B8];
  v12[1] = v6;
  v7 = MEMORY[0x277CBEA60];
  propertiesCopy = properties;
  v9 = [v7 arrayWithObjects:v12 count:2];
  LOBYTE(location) = [(CADXPCImplementation *)self object:location matchesProperties:propertiesCopy forKeys:v9];

  v10 = *MEMORY[0x277D85DE8];
  return location;
}

- (BOOL)object:(void *)object matchesProperties:(id)properties forKeys:(id)keys
{
  v30 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  keysCopy = keys;
  v10 = [keysCopy countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(keysCopy);
        }

        v14 = *(*(&v25 + 1) + 8 * i);
        v24 = 0;
        v15 = CalEntityCopyPropertyAllowingLimitedAccess(self->_conn, object, v14, &v24, 1);
        v16 = v24;
        if (v15)
        {

LABEL_13:
          v21 = 0;
          goto LABEL_14;
        }

        v17 = [propertiesCopy objectForKeyedSubscript:v14];
        v18 = convertDefaultValueToNil(v16);

        v19 = convertDefaultValueToNil(v17);

        if (v18 | v19)
        {
          v20 = [v18 isEqual:v19];

          if ((v20 & 1) == 0)
          {
            goto LABEL_13;
          }
        }
      }

      v11 = [keysCopy countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v21 = 1;
LABEL_14:

  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (id)updatedOrInsertedObjectIDs:(id)ds relatedToEvent:(id)event
{
  v23 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  eventCopy = event;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = dsCopy;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [(CADXPCImplementation *)self owningEventForObject:v14 withUpdates:v9, v18];
        if ([v15 isEqual:eventCopy])
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)owningEventForObject:(id)object withUpdates:(id)updates
{
  objectCopy = object;
  updatesCopy = updates;
  if (objectCopy && [objectCopy entityType] != 2)
  {
    v9 = [updatesCopy objectForKeyedSubscript:objectCopy];
    v10 = [(CADXPCImplementation *)self owningObjectForObject:objectCopy withProperties:v9];

    v8 = [(CADXPCImplementation *)self owningEventForObject:v10 withUpdates:updatesCopy];
  }

  else
  {
    v8 = objectCopy;
  }

  return v8;
}

- (id)owningObjectForObject:(id)object withProperties:(id)properties
{
  v16 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  propertiesCopy = properties;
  entityType = [objectCopy entityType];
  v8 = 0;
  v9 = MEMORY[0x277CF72C0];
  switch(entityType)
  {
    case -1:
    case 3:
    case 12:
    case 13:
    case 19:
    case 21:
    case 25:
    case 26:
    case 27:
      goto LABEL_2;
    case 0:
    case 6:
    case 22:
      goto LABEL_23;
    case 1:
      goto LABEL_21;
    case 2:
      v9 = MEMORY[0x277CF7200];
      goto LABEL_21;
    case 4:
      v12 = [propertiesCopy objectForKeyedSubscript:*MEMORY[0x277CF7198]];
      if (v12)
      {
        goto LABEL_22;
      }

      v9 = MEMORY[0x277CF71A0];
      goto LABEL_21;
    case 5:
      v9 = MEMORY[0x277CF7450];
      goto LABEL_21;
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 15:
    case 20:
    case 23:
      v9 = MEMORY[0x277CF73D8];
      goto LABEL_21;
    case 14:
      v12 = [propertiesCopy objectForKeyedSubscript:*MEMORY[0x277CF7398]];
      if (v12)
      {
        goto LABEL_22;
      }

      v9 = MEMORY[0x277CF7390];
      goto LABEL_21;
    case 16:
    case 17:
      goto LABEL_8;
    case 18:
      v9 = MEMORY[0x277CF7460];
      goto LABEL_21;
    case 24:
      v12 = [propertiesCopy objectForKeyedSubscript:*MEMORY[0x277CF72E0]];
      if (v12)
      {
        goto LABEL_22;
      }

      v12 = [propertiesCopy objectForKeyedSubscript:*MEMORY[0x277CF72D8]];
      if (v12)
      {
        goto LABEL_22;
      }

      v9 = MEMORY[0x277CF72D0];
      goto LABEL_21;
    case 28:
      v9 = MEMORY[0x277CF7380];
      goto LABEL_21;
    case 29:
      v9 = MEMORY[0x277CF72C8];
      goto LABEL_21;
    default:
      if ((entityType - 100) < 2)
      {
LABEL_2:
        v10 = CADLogHandle;
        if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
        {
          v11 = v10;
          v15[0] = 67109120;
          v15[1] = [objectCopy entityType];
          _os_log_impl(&dword_22430B000, v11, OS_LOG_TYPE_ERROR, "Unexpected/unsupported entity type %d in -findDatabaseForObject:withUpdates:", v15, 8u);
        }

        v8 = 0;
      }

      else if (entityType == 102)
      {
LABEL_8:
        v9 = MEMORY[0x277CF73C0];
LABEL_21:
        v12 = [propertiesCopy objectForKeyedSubscript:*v9];
LABEL_22:
        v8 = v12;
      }

LABEL_23:

      v13 = *MEMORY[0x277D85DE8];

      return v8;
  }
}

- (void)CADDatabaseMigrateSubscribedCalendar:(id)calendar toSource:(id)source reply:(id)reply
{
  calendarCopy = calendar;
  sourceCopy = source;
  replyCopy = reply;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__2;
  v25 = __Block_byref_object_dispose__2;
  v26 = 0;
  conn = self->_conn;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __103__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseMigrateSubscribedCalendar_toSource_reply___block_invoke;
  v15[3] = &unk_278519FD0;
  v12 = calendarCopy;
  v16 = v12;
  v19 = &v27;
  v13 = sourceCopy;
  v20 = &v21;
  v17 = v13;
  selfCopy = self;
  if ([(ClientConnection *)conn withDatabaseForObject:v12 perform:v15])
  {
    v14 = *(v28 + 6);
  }

  else
  {
    v14 = 1010;
    *(v28 + 6) = 1010;
  }

  replyCopy[2](replyCopy, v14, v22[5]);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
}

void __103__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseMigrateSubscribedCalendar_toSource_reply___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) entityID];
  v6 = CalDatabaseCopyCalendarWithUID();
  if (v6)
  {
    v7 = v6;
    v8 = CalCalendarCopyTitle();
    if (CalCalendarIsSubscribed())
    {
      if ([*(a1 + 40) databaseID] == a2)
      {
        [*(a1 + 40) entityID];
        v9 = CalDatabaseCopyStoreWithUID();
        if (!v9)
        {
          CFRelease(v7);
          v23 = CADLogHandle;
          if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG|OS_LOG_TYPE_INFO))
          {
            v24 = *(a1 + 40);
            v25 = v23;
            *buf = 67109120;
            v33 = [v24 entityID];
            _os_log_impl(&dword_22430B000, v25, OS_LOG_TYPE_DEBUG|OS_LOG_TYPE_INFO, "Unable to find store with row ID %i", buf, 8u);
          }

          *(*(*(a1 + 56) + 8) + 24) = 1010;
          goto LABEL_22;
        }

        v10 = v9;
        v11 = CalCalendarMigrateSubscribedCalendarToStore();
        if (v11 < 1)
        {
          *(*(*(a1 + 56) + 8) + 24) = 1007;
        }

        else
        {
          v12 = [objc_alloc(MEMORY[0x277CF74C8]) initWithEntityType:1 entityID:v11 databaseID:a2];
          v13 = *(*(a1 + 64) + 8);
          v14 = *(v13 + 40);
          *(v13 + 40) = v12;
        }

        CFRelease(v10);
      }

      else
      {
        v21 = *(a1 + 40);
        v22 = *(*(a1 + 48) + 8);
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __103__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseMigrateSubscribedCalendar_toSource_reply___block_invoke_51;
        v27[3] = &unk_27851A770;
        v28 = v21;
        v30 = a3;
        v31 = v7;
        v29 = *(a1 + 56);
        if (([v22 withDatabaseForObject:v28 perform:v27] & 1) == 0)
        {
          *(*(*(a1 + 56) + 8) + 24) = 1010;
        }
      }
    }

    else
    {
      v18 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG|OS_LOG_TYPE_INFO))
      {
        v19 = *(a1 + 32);
        v20 = v18;
        *buf = 67109378;
        v33 = [v19 entityID];
        v34 = 2112;
        v35 = v8;
        _os_log_impl(&dword_22430B000, v20, OS_LOG_TYPE_DEBUG|OS_LOG_TYPE_INFO, "Calendar to move (%i, %@) is not a subscribed calendar", buf, 0x12u);
      }

      *(*(*(a1 + 56) + 8) + 24) = 1001;
    }

    CFRelease(v7);
LABEL_22:

    goto LABEL_23;
  }

  v15 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG|OS_LOG_TYPE_INFO))
  {
    v16 = *(a1 + 32);
    v17 = v15;
    *buf = 67109120;
    v33 = [v16 entityID];
    _os_log_impl(&dword_22430B000, v17, OS_LOG_TYPE_DEBUG|OS_LOG_TYPE_INFO, "Unable to find calendar with row ID %i", buf, 8u);
  }

  *(*(*(a1 + 56) + 8) + 24) = 1010;
LABEL_23:
  v26 = *MEMORY[0x277D85DE8];
}

void __103__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseMigrateSubscribedCalendar_toSource_reply___block_invoke_51(uint64_t a1, unsigned int a2)
{
  v35 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) entityID];
  v4 = CalDatabaseCopyStoreWithUID();
  if (v4)
  {
    v5 = v4;
    v27 = a2;
    v6 = *(a1 + 56);
    CalDatabaseMultiLock();
    v7 = *(a1 + 64);
    v8 = _CalDatabaseCopyCalendar();
    _CalStoreAddCalendar();
    v9 = *(a1 + 56);
    v10 = *(a1 + 64);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v11 = _CalDatabaseCopyCalendarItemsWithCalendar();
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      do
      {
        v15 = 0;
        do
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v28 + 1) + 8 * v15);
          if ((_CalEventIsDetached() & 1) == 0)
          {
            Copy = _CalCalendarItemCreateCopy();
            CFRelease(Copy);
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v13);
    }

    v18 = *(a1 + 64);
    _CalRemoveCalendar();
    CalDatabaseSaveWithOptions();
    v19 = *(a1 + 56);
    CalDatabaseSaveWithOptions();
    v20 = [objc_alloc(MEMORY[0x277CF74C8]) initWithEntityType:1 entityID:CalCalendarGetUID() databaseID:v27];
    v21 = *(*(a1 + 48) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;

    CFRelease(v5);
    CFRelease(v8);
  }

  else
  {
    v23 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG|OS_LOG_TYPE_INFO))
    {
      v24 = *(a1 + 32);
      v25 = v23;
      *buf = 67109120;
      v34 = [v24 entityID];
      _os_log_impl(&dword_22430B000, v25, OS_LOG_TYPE_DEBUG|OS_LOG_TYPE_INFO, "Unable to find store with row ID %i", buf, 8u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1010;
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)CADDatabaseGetDefaultAlarmOffsetForAllDay:(BOOL)day reply:(id)reply
{
  replyCopy = reply;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  conn = self->_conn;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  v8 = *MEMORY[0x277CF7570];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __99__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseGetDefaultAlarmOffsetForAllDay_reply___block_invoke;
  v10[3] = &unk_27851A798;
  dayCopy = day;
  v10[4] = &v12;
  [(ClientConnection *)conn withDatabaseID:v8 perform:v10];
  v9 = v13[5];
  if (!v9)
  {
    v13[5] = &unk_2837C73A8;

    v9 = v13[5];
  }

  replyCopy[2](replyCopy, 0, v9);
  _Block_object_dispose(&v12, 8);
}

void __99__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseGetDefaultAlarmOffsetForAllDay_reply___block_invoke(uint64_t a1)
{
  v5 = CalDatabaseGetPreferences();
  if (*(a1 + 40) == 1)
  {
    v2 = CalAlarmCopyDefaultAllDayAlarmOffsetWithPreferences();
  }

  else
  {
    v2 = CalAlarmCopyDefaultTimedAlarmOffsetWithPreferences();
  }

  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)CADAnalyticsSendEvent:(id)event appendingClientBundleIDToPayload:(id)payload
{
  v6 = MEMORY[0x277CBEB38];
  eventCopy = event;
  v11 = [v6 dictionaryWithDictionary:payload];
  databaseInitializationOptions = [(ClientConnection *)self->_conn databaseInitializationOptions];
  remoteClientIdentity = [databaseInitializationOptions remoteClientIdentity];
  untrustedBundleIdentifier = [remoteClientIdentity untrustedBundleIdentifier];

  [v11 setObject:untrustedBundleIdentifier forKeyedSubscript:@"clientBundleID"];
  CalAnalyticsSendEvent();
}

- (void)CADDatabaseStatsBySource:(id)source
{
  sourceCopy = source;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  conn = self->_conn;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseStatsBySource___block_invoke;
  v6[3] = &unk_27851A520;
  v6[4] = &v7;
  [(ClientConnection *)conn withAllDatabasesPerform:v6];
  sourceCopy[2](sourceCopy, 0, v8[5]);
  _Block_object_dispose(&v7, 8);
}

void __76__CADXPCImplementation_CADDatabaseOperationGroup__CADDatabaseStatsBySource___block_invoke(uint64_t a1)
{
  v2 = CalDatabaseCopySourceStats();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  v9 = v2;
  if (v4)
  {
    v5 = [v4 arrayByAddingObjectsFromArray:v2];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  else
  {
    v8 = v2;
    v7 = *(v3 + 40);
    *(v3 + 40) = v8;
  }
}

- (void)CADPersonaIdentifierForDatabaseID:(int)d reply:(id)reply
{
  replyCopy = reply;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__2;
  v19 = __Block_byref_object_dispose__2;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1010;
  conn = self->_conn;
  v8 = *MEMORY[0x277CF7570];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __91__CADXPCImplementation_CADDatabaseOperationGroup__CADPersonaIdentifierForDatabaseID_reply___block_invoke;
  v9[3] = &unk_27851A7C0;
  dCopy = d;
  v9[4] = &v15;
  v9[5] = &v11;
  [(ClientConnection *)conn withDatabaseID:v8 perform:v9];
  replyCopy[2](replyCopy, *(v12 + 6), v16[5]);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);
}

void __91__CADXPCImplementation_CADDatabaseOperationGroup__CADPersonaIdentifierForDatabaseID_reply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = CalDatabaseCopyAuxDatabaseWithUID();
  if (v3)
  {
    v4 = v3;
    v5 = CalAuxDatabaseCopyPersonaID();
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    *(*(*(a1 + 40) + 8) + 24) = 0;

    CFRelease(v4);
  }
}

- (void)CADCatchUpIntegrationSyncingIfBehind:(id)behind
{
  v3 = MEMORY[0x277CCAB98];
  behindCopy = behind;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter postNotificationName:@"CADCatchUpIntegrationSyncRequested" object:0];

  behindCopy[2](behindCopy, 0);
}

- (void)CADDatabaseGetStorageUsage:(id)usage
{
  v20[2] = *MEMORY[0x277D85DE8];
  usageCopy = usage;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  conn = self->_conn;
  v14 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __95__CADXPCImplementation_CADDatabaseStorageManagementOperationGroup__CADDatabaseGetStorageUsage___block_invoke;
  v10[3] = &unk_27851A888;
  v10[4] = self;
  v10[5] = &v15;
  v10[6] = &v11;
  [(ClientConnection *)conn withAllDatabasesPerform:v10];
  v19[0] = @"events";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v16[3]];
  v19[1] = @"attachments";
  v20[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v12[3]];
  v20[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];

  usageCopy[2](usageCopy, 0, v8);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v15, 8);

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __95__CADXPCImplementation_CADDatabaseStorageManagementOperationGroup__CADDatabaseGetStorageUsage___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) sizeCalendarDirectoryForDatabase:?];
  result = [*(a1 + 32) sizeAttachmentsForDatabase:a3];
  *(*(*(a1 + 40) + 8) + 24) += v5;
  *(*(*(a1 + 48) + 8) + 24) += result;
  return result;
}

- (unint64_t)sizeCalendarDirectoryForDatabase:(CalDatabase *)database
{
  v4 = CalDatabaseCopyDirectoryPathForDatabase();
  v5 = [(CADXPCImplementation *)self sizeDirectoryAtPath:v4 excludingDirectory:*MEMORY[0x277CF7890]];

  return v5;
}

- (unint64_t)sizeAttachmentsForDatabase:(CalDatabase *)database
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = CalDatabaseCopyOfAllStores();
  v6 = v5;
  if (v5)
  {
    Count = CFArrayGetCount(v5);
    v8 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:Count];
    if (Count >= 1)
    {
      v10 = 0;
      *&v9 = 67109378;
      v27 = v9;
      do
      {
        CFArrayGetValueAtIndex(v6, v10);
        v11 = CalAttachmentFileCopyAttachmentContainerForStore();
        path = [v11 path];
        if (path)
        {
          [v8 addObject:path];
        }

        else
        {
          v13 = CADLogHandle;
          if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
          {
            log = v13;
            v14 = v6;
            v15 = Count;
            databaseCopy = database;
            v17 = v8;
            UID = CalStoreGetUID();
            v19 = CalStoreCopyName();
            *buf = v27;
            v35 = UID;
            v8 = v17;
            database = databaseCopy;
            Count = v15;
            v6 = v14;
            v36 = 2112;
            v37 = v19;
            _os_log_impl(&dword_22430B000, log, OS_LOG_TYPE_ERROR, "No attachment container for store %i (%@)", buf, 0x12u);
          }
        }

        ++v10;
      }

      while (Count != v10);
    }

    CFRelease(v6);
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v20 = v8;
    v21 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v21)
    {
      v22 = v21;
      v6 = 0;
      v23 = *v30;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v30 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v6 = (v6 + [(CADXPCImplementation *)self sizeDirectoryAtPath:*(*(&v29 + 1) + 8 * i) excludingDirectory:0, v27]);
        }

        v22 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v22);
    }

    else
    {
      v6 = 0;
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return v6;
}

- (unint64_t)sizeDirectoryAtPath:(id)path excludingDirectory:(id)directory
{
  v51[3] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  directoryCopy = directory;
  v44 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  if ([defaultManager fileExistsAtPath:pathCopy isDirectory:&v44] && v44 == 1)
  {
    v9 = MEMORY[0x277CBE868];
    v10 = MEMORY[0x277CBE8E8];
    if (directoryCopy)
    {
      v11 = *MEMORY[0x277CBE868];
      v51[0] = *MEMORY[0x277CBE8E8];
      v51[1] = v11;
      v35 = *MEMORY[0x277CBE908];
      v51[2] = *MEMORY[0x277CBE908];
      v12 = MEMORY[0x277CBEA60];
      v13 = v51;
      v14 = 3;
    }

    else
    {
      v35 = *MEMORY[0x277CBE908];
      v50 = *MEMORY[0x277CBE908];
      v12 = MEMORY[0x277CBEA60];
      v13 = &v50;
      v14 = 1;
    }

    v16 = [v12 arrayWithObjects:v13 count:v14];
    v33 = pathCopy;
    v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __107__CADXPCImplementation_CADDatabaseStorageManagementOperationGroup__sizeDirectoryAtPath_excludingDirectory___block_invoke;
    v43[3] = &unk_27851A8B0;
    v43[4] = self;
    v31 = v16;
    v32 = defaultManager;
    v18 = [defaultManager enumeratorAtURL:v17 includingPropertiesForKeys:v16 options:0 errorHandler:v43];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v19 = v18;
    v20 = [v19 countByEnumeratingWithState:&v39 objects:v49 count:16];
    if (!v20)
    {
      v15 = 0;
      goto LABEL_25;
    }

    v21 = v20;
    v15 = 0;
    v22 = *v40;
    v23 = *v9;
    v34 = *v10;
    while (1)
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v40 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *(*(&v39 + 1) + 8 * i);
        if (directoryCopy)
        {
          v38 = 0;
          [v25 getResourceValue:&v38 forKey:v23 error:0];
          v26 = v38;
          if ([v26 BOOLValue])
          {
            v37 = 0;
            [v25 getResourceValue:&v37 forKey:v34 error:0];
            if ([v37 isEqualToString:directoryCopy])
            {
              [v19 skipDescendants];
              goto LABEL_21;
            }
          }
        }

        v36 = 0;
        v27 = [v25 getResourceValue:&v36 forKey:v35 error:0];
        v26 = v36;
        if (v27)
        {
          v28 = CADLogHandle;
          if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v46 = v25;
            v47 = 2112;
            v48 = v26;
            _os_log_impl(&dword_22430B000, v28, OS_LOG_TYPE_DEBUG, "File at URL: [%@] has size: [%@]", buf, 0x16u);
          }

          v15 += [v26 unsignedLongLongValue];
        }

LABEL_21:
      }

      v21 = [v19 countByEnumeratingWithState:&v39 objects:v49 count:16];
      if (!v21)
      {
LABEL_25:

        defaultManager = v32;
        pathCopy = v33;
        goto LABEL_26;
      }
    }
  }

  v15 = 0;
LABEL_26:

  v29 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t __107__CADXPCImplementation_CADDatabaseStorageManagementOperationGroup__sizeDirectoryAtPath_excludingDirectory___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v11 = 138412802;
    v12 = v8;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_22430B000, v7, OS_LOG_TYPE_ERROR, "%@ couldn't enumerate %@: %@", &v11, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)CADDatabaseGetCalendarItemWithUUID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  conn = self->_conn;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __96__CADXPCImplementation_CADCalendarItemOperationGroup__CADDatabaseGetCalendarItemWithUUID_reply___block_invoke;
  v16 = &unk_27851A8D8;
  v9 = dCopy;
  v17 = v9;
  selfCopy = self;
  v19 = &v27;
  v20 = &v21;
  [(ClientConnection *)conn withAllDatabasesPerform:&v13];
  v10 = v22;
  v11 = v22[5];
  if (v11)
  {
    v12 = *(v28 + 6);
  }

  else
  {
    v12 = 1010;
    *(v28 + 6) = 1010;
    v11 = v10[5];
  }

  replyCopy[2](replyCopy, v12, v11);
  [(ClientConnection *)self->_conn logAccessToObject:v22[5], v13, v14, v15, v16];

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
}

void __96__CADXPCImplementation_CADCalendarItemOperationGroup__CADDatabaseGetCalendarItemWithUUID_reply___block_invoke(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1[4];
  v7 = CalDatabaseCopyCalendarItemWithUUID();
  if (v7)
  {
    v8 = v7;
    *a4 = 1;
    if ([*(a1[5] + 8) isCalendarItemRestricted:v7 forAction:0])
    {
      *(*(a1[6] + 8) + 24) = 1013;
    }

    else
    {
      v9 = CADEntityCopyObjectID();
      v10 = *(a1[7] + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }

    CFRelease(v8);
  }
}

- (void)CADDatabaseGetCalendarItemsWithUUIDs:(id)ds inCalendars:(id)calendars propertiesToLoad:(id)load reply:(id)reply
{
  dsCopy = ds;
  calendarsCopy = calendars;
  replyCopy = reply;
  loadCopy = load;
  v14 = [[CADFetchedObjectSerializer alloc] initWithConnection:self->_conn defaultPropertiesToLoad:loadCopy];

  v15 = [MEMORY[0x277CBEB18] arrayWithArray:calendarsCopy];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __127__CADXPCImplementation_CADCalendarItemOperationGroup__CADDatabaseGetCalendarItemsWithUUIDs_inCalendars_propertiesToLoad_reply___block_invoke;
  v29[3] = &unk_27851A900;
  v16 = dsCopy;
  v30 = v16;
  selfCopy = self;
  v17 = v14;
  v32 = v17;
  v18 = v15;
  v33 = v18;
  v19 = MEMORY[0x22AA4DCD0](v29);
  v20 = v19;
  conn = self->_conn;
  if (calendarsCopy)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __127__CADXPCImplementation_CADCalendarItemOperationGroup__CADDatabaseGetCalendarItemsWithUUIDs_inCalendars_propertiesToLoad_reply___block_invoke_3;
    v25[3] = &unk_27851A950;
    v22 = &v26;
    v26 = v19;
    [(ClientConnection *)conn withDatabaseForObjects:calendarsCopy perform:v25];
  }

  else
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __127__CADXPCImplementation_CADCalendarItemOperationGroup__CADDatabaseGetCalendarItemsWithUUIDs_inCalendars_propertiesToLoad_reply___block_invoke_2;
    v27[3] = &unk_27851A928;
    v22 = &v28;
    v28 = v19;
    [(ClientConnection *)conn withAllDatabasesPerform:v27];
  }

  fetchedObjectWrappers = [(CADFetchedObjectSerializer *)v17 fetchedObjectWrappers];
  if ([fetchedObjectWrappers count])
  {
    v24 = 0;
  }

  else
  {

    fetchedObjectWrappers = 0;
    v24 = 1010;
  }

  replyCopy[2](replyCopy, v24, fetchedObjectWrappers);
  [(ClientConnection *)self->_conn logAccessToObjects:v18];
}

void __127__CADXPCImplementation_CADCalendarItemOperationGroup__CADDatabaseGetCalendarItemsWithUUIDs_inCalendars_propertiesToLoad_reply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = CalDatabaseCopyCalendarItemsWithUUIDs();
  if (v3)
  {
    v4 = v3;
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
        if (([*(*(a1 + 40) + 8) isCalendarItemRestricted:ValueAtIndex forAction:0] & 1) == 0)
        {
          v9 = [*(a1 + 48) addEntity:ValueAtIndex];
          v10 = *(a1 + 56);
          v11 = CADEntityCopyObjectID();
          [v10 addObject:v11];
        }
      }
    }

    CFRelease(v4);
  }
}

void __127__CADXPCImplementation_CADCalendarItemOperationGroup__CADDatabaseGetCalendarItemsWithUUIDs_inCalendars_propertiesToLoad_reply___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 valueForKey:@"entityID"];
  (*(*(a1 + 32) + 16))();
}

- (void)CADDatabaseGetCalendarItemsWithUniqueIdentifier:(id)identifier inCalendar:(id)calendar reply:(id)reply
{
  identifierCopy = identifier;
  calendarCopy = calendar;
  replyCopy = reply;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__3;
  v28 = __Block_byref_object_dispose__3;
  v29 = 0;
  v11 = objc_opt_new();
  v12 = v11;
  if (calendarCopy)
  {
    [v11 addObject:calendarCopy];
  }

  conn = self->_conn;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __120__CADXPCImplementation_CADCalendarItemOperationGroup__CADDatabaseGetCalendarItemsWithUniqueIdentifier_inCalendar_reply___block_invoke;
  v18[3] = &unk_27851A978;
  v14 = calendarCopy;
  v19 = v14;
  selfCopy = self;
  v15 = identifierCopy;
  v21 = v15;
  v23 = &v24;
  v16 = v12;
  v22 = v16;
  if ([(ClientConnection *)conn withDatabaseForObject:v14 perform:v18])
  {
    v17 = 0;
  }

  else
  {
    v17 = 1010;
  }

  replyCopy[2](replyCopy, v17, v25[5]);
  [(ClientConnection *)self->_conn logAccessToObjects:v16];

  _Block_object_dispose(&v24, 8);
}

void __120__CADXPCImplementation_CADCalendarItemOperationGroup__CADDatabaseGetCalendarItemsWithUniqueIdentifier_inCalendar_reply___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) entityID];
  v2 = CalDatabaseCopyCalendarWithUID();
  if (v2 && [*(*(a1 + 40) + 8) isCalendarRestricted:v2 forAction:0])
  {
    v3 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v17 = v4;
      _os_log_impl(&dword_22430B000, v3, OS_LOG_TYPE_INFO, "Attempt to read restricted calendar: [%@]", buf, 0xCu);
    }

LABEL_17:
    CFRelease(v2);
    goto LABEL_18;
  }

  v5 = *(a1 + 48);
  v6 = CalDatabaseCopyAllEntitiesWithPropertyInCalendarOrStore();
  if (v6)
  {
    v7 = v6;
    Count = CFArrayGetCount(v6);
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:Count];
    v10 = *(*(a1 + 64) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        if (CFArrayGetValueAtIndex(v7, i))
        {
          v13 = CADEntityCopyObjectID();
          if (v13)
          {
            [*(*(*(a1 + 64) + 8) + 40) addObject:v13];
            [*(a1 + 56) addObject:v13];
          }
        }

        else
        {
          v14 = CADLogHandle;
          if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v17 = v7;
            _os_log_impl(&dword_22430B000, v14, OS_LOG_TYPE_ERROR, "NULL item found in array of matching entities: [%@]", buf, 0xCu);
          }
        }
      }
    }

    CFRelease(v7);
  }

  if (v2)
  {
    goto LABEL_17;
  }

LABEL_18:
  v15 = *MEMORY[0x277D85DE8];
}

- (void)CADDatabaseGetCalendarItemsWithRecurrenceSet:(id)set inCalendar:(id)calendar reply:(id)reply
{
  setCopy = set;
  calendarCopy = calendar;
  replyCopy = reply;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  v11 = objc_opt_new();
  if (setCopy && calendarCopy)
  {
    conn = self->_conn;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __117__CADXPCImplementation_CADCalendarItemOperationGroup__CADDatabaseGetCalendarItemsWithRecurrenceSet_inCalendar_reply___block_invoke;
    v15[3] = &unk_27851A9A0;
    v16 = calendarCopy;
    selfCopy = self;
    v13 = v11;
    v18 = v13;
    v19 = setCopy;
    v20 = &v21;
    if ([(ClientConnection *)conn withDatabaseForObject:v16 perform:v15])
    {
      v14 = 0;
    }

    else
    {
      v14 = 1010;
    }

    replyCopy[2](replyCopy, v14, v22[5]);
    [(ClientConnection *)self->_conn logAccessToObjects:v13];
  }

  else
  {
    replyCopy[2](replyCopy, 1001, v22[5]);
  }

  _Block_object_dispose(&v21, 8);
}

void __117__CADXPCImplementation_CADCalendarItemOperationGroup__CADDatabaseGetCalendarItemsWithRecurrenceSet_inCalendar_reply___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) entityID];
  v2 = CalDatabaseCopyCalendarWithUID();
  if (v2 && [*(*(a1 + 40) + 8) isCalendarRestricted:v2 forAction:0])
  {
    v3 = *MEMORY[0x277D85DE8];

    CFRelease(v2);
    return;
  }

  [*(a1 + 48) addObject:*(a1 + 32)];
  v4 = *(a1 + 56);
  v5 = CalDatabaseCopyEventsWithRecurrenceSet();
  if (v5)
  {
    v6 = v5;
    Count = CFArrayGetCount(v5);
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:Count];
    v9 = *(*(a1 + 64) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    if (Count >= 1)
    {
      for (i = 0; Count != i; ++i)
      {
        if (CFArrayGetValueAtIndex(v6, i))
        {
          v12 = CalCalendarItemCopyCalendar();
          if (v12)
          {
            v13 = v12;
            v14 = CADEntityCopyObjectID();
            v15 = [v14 entityID];
            if (v15 == [*(a1 + 32) entityID])
            {
              v16 = CADEntityCopyObjectID();
              if (v16)
              {
                [*(*(*(a1 + 64) + 8) + 40) addObject:v16];
                [*(a1 + 48) addObject:v16];
              }
            }

            CFRelease(v13);

            continue;
          }

          v20 = CADLogHandle;
          if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v23 = v6;
            v18 = v20;
            v19 = "NULL calendar found in array of matching entities: [%@]";
            goto LABEL_20;
          }
        }

        else
        {
          v17 = CADLogHandle;
          if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v23 = v6;
            v18 = v17;
            v19 = "NULL item found in array of matching entities: [%@]";
LABEL_20:
            _os_log_impl(&dword_22430B000, v18, OS_LOG_TYPE_ERROR, v19, buf, 0xCu);
          }
        }
      }
    }

    CFRelease(v6);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)CADDatabaseGetAlarmWithExternalID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  v8 = replyCopy;
  if (dCopy)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__3;
    v28 = __Block_byref_object_dispose__3;
    v29 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    conn = self->_conn;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __95__CADXPCImplementation_CADCalendarItemOperationGroup__CADDatabaseGetAlarmWithExternalID_reply___block_invoke;
    v15 = &unk_27851A9C8;
    v16 = dCopy;
    selfCopy = self;
    v18 = &v24;
    v19 = &v20;
    [(ClientConnection *)conn withAllDatabasesPerform:&v12];
    v10 = v25[5];
    if (v10)
    {
      if (*(v21 + 24) == 1)
      {
        v25[5] = 0;

        v10 = v25[5];
        v11 = 1013;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 1010;
    }

    (v8)[2](v8, v11, v10);
    [(ClientConnection *)self->_conn logAccessToObject:v25[5], v12, v13, v14, v15];

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    (*(replyCopy + 2))(replyCopy, 1001, 0);
  }
}

void __95__CADXPCImplementation_CADCalendarItemOperationGroup__CADDatabaseGetAlarmWithExternalID_reply___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = CalDatabaseCopyAlarmWithUUID();
  if (v3)
  {
    v4 = v3;
    v5 = CADEntityCopyObjectID();
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    if ([*(a1[5] + 8) isAlarmRestricted:v4 forAction:0])
    {
      *(*(a1[7] + 8) + 24) = 1;
    }

    CFRelease(v4);
  }
}

void __143__CADXPCImplementation_CADCalendarItemOperationGroup__CADDatabaseFetchCalendarItemsWithPredicate_entityType_fetchIdentifier_synchronous_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  (*(*(a1 + 32) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained conn];
    v6 = [v7 CalMap:&__block_literal_global_13];
    [v5 logAccessToObjects:v6];
  }
}

- (void)CADDatabaseExportICSForCalendarItemWithID:(id)d occurrenceDate:(id)date options:(unint64_t)options reply:(id)reply
{
  dCopy = d;
  dateCopy = date;
  replyCopy = reply;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__3;
  v31 = __Block_byref_object_dispose__3;
  v32 = 0;
  conn = self->_conn;
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __126__CADXPCImplementation_CADCalendarItemOperationGroup__CADDatabaseExportICSForCalendarItemWithID_occurrenceDate_options_reply___block_invoke;
  v20 = &unk_27851AA18;
  v14 = dCopy;
  v21 = v14;
  selfCopy = self;
  v24 = &v33;
  v25 = &v27;
  v15 = dateCopy;
  v23 = v15;
  optionsCopy = options;
  if ([(ClientConnection *)conn withDatabaseForObject:v14 perform:&v17])
  {
    v16 = *(v34 + 6);
  }

  else
  {
    v16 = 1010;
    *(v34 + 6) = 1010;
  }

  replyCopy[2](replyCopy, v16, v28[5]);
  [(ClientConnection *)self->_conn logAccessToObject:v14, v17, v18, v19, v20];

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);
}

void __126__CADXPCImplementation_CADCalendarItemOperationGroup__CADDatabaseExportICSForCalendarItemWithID_occurrenceDate_options_reply___block_invoke(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3)
{
  v4 = CADCopyEntityInDatabase(a3, *(a1 + 32));
  values = v4;
  if (v4)
  {
    v5 = v4;
    if ([*(*(a1 + 40) + 8) isCalendarItemRestricted:v4 forAction:0])
    {
      *(*(*(a1 + 56) + 8) + 24) = 1013;

      CFRelease(v5);
    }

    else
    {
      v6 = CFArrayCreate(0, &values, 1, MEMORY[0x277CBF128]);
      if (v6)
      {
        v7 = v6;
        v8 = *(a1 + 48);
        v9 = *(a1 + 72);
        v10 = CalCreateiCalendarDataFromCalEntitiesWithOptions();
        v11 = *(*(a1 + 64) + 8);
        v12 = *(v11 + 40);
        *(v11 + 40) = v10;

        CFRelease(v7);
      }

      if (!*(*(*(a1 + 64) + 8) + 40))
      {
        *(*(*(a1 + 56) + 8) + 24) = 1007;
      }

      CFRelease(values);
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1010;
  }
}

- (void)CADDatabaseGetDeletableCalendars:(id)calendars
{
  v4 = MEMORY[0x277CBEB18];
  calendarsCopy = calendars;
  v6 = objc_alloc_init(v4);
  conn = self->_conn;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __80__CADXPCImplementation_CADSyncOperationGroup__CADDatabaseGetDeletableCalendars___block_invoke_2;
  v12 = &unk_27851AA60;
  v13 = v6;
  v14 = &__block_literal_global_11;
  v8 = v6;
  [(ClientConnection *)conn withAllDatabasesPerform:&v9];
  calendarsCopy[2](calendarsCopy, 0, v8);

  [(ClientConnection *)self->_conn logAccessToObjects:v8, v9, v10, v11, v12];
}

uint64_t __80__CADXPCImplementation_CADSyncOperationGroup__CADDatabaseGetDeletableCalendars___block_invoke(uint64_t a1, uint64_t a2, const void *a3)
{
  v4 = CalDatabaseCopyDefaultLocalCalendar();
  if (v4)
  {
    v5 = v4;
    v6 = CFEqual(v4, a3);
    CFRelease(v5);
    if (v6)
    {
      return 0;
    }
  }

  v8 = CalCalendarCopyStore();
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  v7 = CalStoreGetType() != 5;
  CFRelease(v9);
  return v7;
}

void __80__CADXPCImplementation_CADSyncOperationGroup__CADDatabaseGetDeletableCalendars___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = CalDatabaseCopyOfAllCalendarsInStore();
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        if ((*(*(a1 + 40) + 16))(*(a1 + 40)))
        {
          UID = CalCalendarGetUID();
          v11 = *(a1 + 32);
          v12 = objc_alloc(MEMORY[0x277CF74C8]);
          v13 = [v12 initWithEntityType:1 entityID:UID databaseID:{a2, v15}];
          [v11 addObject:v13];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)CADDatabaseGetDeletableSources:(id)sources
{
  v4 = MEMORY[0x277CBEB18];
  sourcesCopy = sources;
  v6 = objc_alloc_init(v4);
  conn = self->_conn;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __78__CADXPCImplementation_CADSyncOperationGroup__CADDatabaseGetDeletableSources___block_invoke_2;
  v12 = &unk_27851AA60;
  v13 = v6;
  v14 = &__block_literal_global_4;
  v8 = v6;
  [(ClientConnection *)conn withAllDatabasesPerform:&v9];
  sourcesCopy[2](sourcesCopy, 0, v8);

  [(ClientConnection *)self->_conn logAccessToObjects:v8, v9, v10, v11, v12];
}

BOOL __78__CADXPCImplementation_CADSyncOperationGroup__CADDatabaseGetDeletableSources___block_invoke(uint64_t a1, uint64_t a2, const void *a3)
{
  v4 = CalDatabaseCopyLocalStore();
  if (v4 && (v5 = v4, v6 = CFEqual(v4, a3), CFRelease(v5), v6))
  {
    return 0;
  }

  else
  {
    return CalStoreGetType() != 5;
  }
}

void __78__CADXPCImplementation_CADSyncOperationGroup__CADDatabaseGetDeletableSources___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = CalDatabaseCopyOfAllStores();
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        if ((*(*(a1 + 40) + 16))(*(a1 + 40)))
        {
          UID = CalStoreGetUID();
          v11 = *(a1 + 32);
          v12 = objc_alloc(MEMORY[0x277CF74C8]);
          v13 = [v12 initWithEntityType:6 entityID:UID databaseID:{a2, v15}];
          [v11 addObject:v13];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)CADMigrateDatabaseIfNeeded:(id)needed
{
  neededCopy = needed;
  IsCurrentProcessCalaccessd = CalDatabaseIsCurrentProcessCalaccessd();
  v5 = CADLogHandle;
  v6 = os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEFAULT);
  if ((IsCurrentProcessCalaccessd & 1) == 0)
  {
    if (v6)
    {
      *v14 = 0;
      v8 = "****** Ignoring request to migrate because this is not calaccessd";
      v9 = v14;
      goto LABEL_9;
    }

LABEL_10:
    v10 = 0;
    goto LABEL_14;
  }

  if (v6)
  {
    *buf = 0;
    _os_log_impl(&dword_22430B000, v5, OS_LOG_TYPE_DEFAULT, "****** Requested to migrate", buf, 2u);
  }

  v7 = CalDatabasePerformMigrationIfNeeded();
  v5 = CADLogHandle;
  if (v7)
  {
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
      v8 = "****** Finished migration";
      v9 = &v12;
LABEL_9:
      _os_log_impl(&dword_22430B000, v5, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
  {
    *v11 = 0;
    _os_log_impl(&dword_22430B000, v5, OS_LOG_TYPE_ERROR, "****** Migration request failed because it was called before protected data is accessible", v11, 2u);
  }

  v10 = 1022;
LABEL_14:
  neededCopy[2](neededCopy, v10);
}

- (void)CADDatabaseSetInitializationOptions:(id)options reply:(id)reply
{
  replyCopy = reply;
  if ([(ClientConnection *)self->_conn trySetDatabaseInitializationOptions:options])
  {
    if ([(ClientConnection *)self->_conn eventAccessLevel])
    {
      databaseRestoreGeneration = [(ClientConnection *)self->_conn databaseRestoreGeneration];
      v7 = 0;
    }

    else
    {
      v7 = 0;
      databaseRestoreGeneration = 0xFFFFFFFFLL;
    }
  }

  else
  {
    databaseRestoreGeneration = 0xFFFFFFFFLL;
    v7 = 1013;
  }

  replyCopy[2](replyCopy, v7, databaseRestoreGeneration);
}

- (void)CADDatabaseGetAccess:(id)access
{
  conn = self->_conn;
  accessCopy = access;
  permissionValidator = [(ClientConnection *)conn permissionValidator];
  eventAuthorization = [permissionValidator eventAuthorization];
  permissionValidator2 = [(ClientConnection *)self->_conn permissionValidator];
  (*(access + 2))(accessCopy, 0, eventAuthorization, [permissionValidator2 remindersAuthorization]);
}

- (id)_hangAssertionForBlockingTCCCall
{
  v37[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D47008];
  identity = [(ClientConnection *)self->_conn identity];
  v5 = [v3 targetWithPid:{objc_msgSend(identity, "pid")}];

  if (v5)
  {
    v6 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.frontboard" name:@"DisableWatchdog"];
    if (v6)
    {
      v7 = objc_alloc(MEMORY[0x277D46DB8]);
      v37[0] = v6;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];
      v9 = [v7 initWithExplanation:@"Prevent watchdog termination while blocking on TCC authorization" target:v5 attributes:v8];

      if (v9)
      {
        v32 = 0;
        v10 = [v9 acquireWithError:&v32];
        v11 = v32;
        if (v10)
        {
          v12 = v9;
        }

        else
        {
          v25 = CADLogHandle;
          if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
          {
            conn = self->_conn;
            v27 = v25;
            identity2 = [(ClientConnection *)conn identity];
            v29 = [identity2 pid];
            *buf = 67109378;
            v34 = v29;
            v35 = 2112;
            v36 = v11;
            _os_log_impl(&dword_22430B000, v27, OS_LOG_TYPE_ERROR, "Failed to acquire watchog disable assertion for pid %d with error: %@", buf, 0x12u);
          }

          v12 = 0;
        }
      }

      else
      {
        v21 = CADLogHandle;
        if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
        {
          v22 = self->_conn;
          v23 = v21;
          identity3 = [(ClientConnection *)v22 identity];
          *buf = 67109120;
          v34 = [identity3 pid];
          _os_log_impl(&dword_22430B000, v23, OS_LOG_TYPE_ERROR, "Failed to create RBSAssertion for connected client with PID %d", buf, 8u);
        }

        v12 = 0;
      }
    }

    else
    {
      v17 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
      {
        v18 = self->_conn;
        v19 = v17;
        identity4 = [(ClientConnection *)v18 identity];
        *buf = 67109120;
        v34 = [identity4 pid];
        _os_log_impl(&dword_22430B000, v19, OS_LOG_TYPE_ERROR, "Failed to create RBSAttribute for connected client with PID %d", buf, 8u);
      }

      v12 = 0;
    }
  }

  else
  {
    v13 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      v14 = self->_conn;
      v15 = v13;
      identity5 = [(ClientConnection *)v14 identity];
      *buf = 67109120;
      v34 = [identity5 pid];
      _os_log_impl(&dword_22430B000, v15, OS_LOG_TYPE_ERROR, "Failed to create RBSTarget for connected client with PID %d", buf, 8u);
    }

    v12 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_TCCPromptReasonStringForReason:(int64_t)reason
{
  v9 = *MEMORY[0x277D85DE8];
  if (reason >= 8)
  {
    v5 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      v7 = 134217984;
      reasonCopy = reason;
      _os_log_impl(&dword_22430B000, v5, OS_LOG_TYPE_ERROR, "Unexpected CalRequestAccessReason (int value: %ld): we don't support this kind of CalRequestAccessReason.", &v7, 0xCu);
    }

    result = @"Unknown";
  }

  else
  {
    result = off_27851B5F0[reason];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)CADDatabaseRequestAccessForEntityType:(unint64_t)type desiredFullAccess:(BOOL)access isBlockingUIThread:(BOOL)thread reason:(int64_t)reason reply:(id)reply
{
  threadCopy = thread;
  accessCopy = access;
  replyCopy = reply;
  v13 = replyCopy;
  if (type)
  {
    if (type != 1)
    {
LABEL_8:
      (*(replyCopy + 2))(replyCopy, 1001, 0);
      goto LABEL_16;
    }

    v14 = MEMORY[0x277D6C1E0];
  }

  else
  {
    v14 = MEMORY[0x277D6C118];
  }

  v15 = *v14;
  if (!*v14)
  {
    goto LABEL_8;
  }

  if (threadCopy)
  {
    _hangAssertionForBlockingTCCCall = [(CADXPCImplementation *)self _hangAssertionForBlockingTCCCall];
  }

  else
  {
    _hangAssertionForBlockingTCCCall = 0;
  }

  v17 = objc_opt_new();
  v18 = [(CADXPCImplementation *)self _TCCPromptReasonStringForReason:reason];
  [v17 setObject:v18 forKeyedSubscript:*MEMORY[0x277D6C0F8]];

  identity = [(ClientConnection *)self->_conn identity];
  bundleIdentifier = [identity bundleIdentifier];

  if (bundleIdentifier)
  {
    [v17 setObject:bundleIdentifier forKeyedSubscript:@"kEventKitTCCUIFullAccessNotificationClientBundleIDKey"];
  }

  if (accessCopy)
  {
    v21 = 2;
  }

  else
  {
    v21 = 4;
  }

  tccPermissionChecker = [(ClientConnection *)self->_conn tccPermissionChecker];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __137__CADXPCImplementation_CADAccessOperationGroup__CADDatabaseRequestAccessForEntityType_desiredFullAccess_isBlockingUIThread_reason_reply___block_invoke;
  v24[3] = &unk_27851B5D0;
  v27 = v15;
  v24[4] = self;
  v25 = _hangAssertionForBlockingTCCCall;
  v26 = v13;
  v23 = _hangAssertionForBlockingTCCCall;
  [tccPermissionChecker requestAuthorization:v21 forService:v15 clientDictionary:v17 completion:v24];

LABEL_16:
}

void *__137__CADXPCImplementation_CADAccessOperationGroup__CADDatabaseRequestAccessForEntityType_desiredFullAccess_isBlockingUIThread_reason_reply___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v6 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      v7 = a1[7];
      v8 = *(a1[4] + 8);
      v9 = v6;
      v10 = [v8 identity];
      v15 = 138543874;
      v16 = v7;
      v17 = 2114;
      v18 = v10;
      v19 = 1024;
      v20 = a3;
      _os_log_impl(&dword_22430B000, v9, OS_LOG_TYPE_ERROR, "Failed to request authorization for service %{public}@ for client %{public}@. Error = %d", &v15, 0x1Cu);
    }
  }

  [*(a1[4] + 8) clearCachedAuthorizationStatus];
  v11 = a1[6];
  v12 = CalAuthorizationStatusFromTCCAuthRight(a1[7], a2);
  (*(v11 + 16))(v11, a3, v12);
  result = a1[5];
  if (result)
  {
    result = [result invalidate];
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)CADDatabaseResetWithReply:(id)reply
{
  conn = self->_conn;
  replyCopy = reply;
  [(ClientConnection *)conn clearCachedAuthorizationStatus];
  replyCopy[2](replyCopy, 0);
}

- (void)CADDatabaseGetCalendarsWithFaultedProperties:(id)properties reply:(id)reply
{
  propertiesCopy = properties;
  replyCopy = reply;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__7;
  v24 = __Block_byref_object_dispose__7;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__7;
  v18 = __Block_byref_object_dispose__7;
  v19 = 0;
  eventAccessLevel = [(ClientConnection *)self->_conn eventAccessLevel];
  conn = self->_conn;
  if (eventAccessLevel == 1)
  {
    v10 = *MEMORY[0x277CF7570];
    v11 = v13;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __102__CADXPCImplementation_CADCalendarOperationGroup__CADDatabaseGetCalendarsWithFaultedProperties_reply___block_invoke;
    v13[3] = &unk_27851B638;
    v13[6] = &v20;
    v13[7] = &v14;
    v13[4] = self;
    v13[5] = propertiesCopy;
    v13[8] = &v26;
    [(ClientConnection *)conn withDatabaseID:v10 perform:v13];
    replyCopy[2](replyCopy, *(v27 + 6), v21[5], v15[5]);
  }

  else
  {
    v11 = v12;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __102__CADXPCImplementation_CADCalendarOperationGroup__CADDatabaseGetCalendarsWithFaultedProperties_reply___block_invoke_2;
    v12[3] = &unk_27851B660;
    v12[6] = &v20;
    v12[7] = &v14;
    v12[4] = self;
    v12[5] = propertiesCopy;
    v12[8] = &v26;
    [(ClientConnection *)conn withAllDatabasesPerform:v12];
    replyCopy[2](replyCopy, *(v27 + 6), v21[5], v15[5]);
    [(ClientConnection *)self->_conn logAccessToObjects:v21[5]];
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
}

void __102__CADXPCImplementation_CADCalendarOperationGroup__CADDatabaseGetCalendarsWithFaultedProperties_reply___block_invoke(uint64_t a1)
{
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v2 = objc_opt_new();
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    v5 = objc_opt_new();
    v6 = *(*(a1 + 56) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  v8 = CalDatabaseCopyLimitedAccessVirtualCalendar();
  v10 = CADEntityCopyObjectID();
  v9 = CalEntityCopyPropertyValues(*(*(a1 + 32) + 8), v8, *(a1 + 40), (*(*(a1 + 64) + 8) + 24));
  [*(*(*(a1 + 48) + 8) + 40) addObject:v10];
  [*(*(*(a1 + 56) + 8) + 40) addObject:v9];
  CFRelease(v8);
}

void __102__CADXPCImplementation_CADCalendarOperationGroup__CADDatabaseGetCalendarsWithFaultedProperties_reply___block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = CalDatabaseCopyOfAllCalendarsInStoreWithOptions();
  if (v2)
  {
    v3 = v2;
    Count = CFArrayGetCount(v2);
    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:Count];
      v6 = *(*(a1 + 48) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:Count];
      v9 = *(*(a1 + 56) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }

    if (Count >= 1)
    {
      for (i = 0; Count != i; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
        v13 = CADEntityCopyObjectID();
        if (CalendarCanContainAnAllowedEntityType(ValueAtIndex, *(*(a1 + 32) + 8)))
        {
          if (![*(*(a1 + 32) + 8) isCalendarRestricted:ValueAtIndex forAction:0])
          {
            v18 = CalEntityCopyPropertyValues(*(*(a1 + 32) + 8), ValueAtIndex, *(a1 + 40), (*(*(a1 + 64) + 8) + 24));
            [*(*(*(a1 + 48) + 8) + 40) addObject:v13];
            [*(*(*(a1 + 56) + 8) + 40) addObject:v18];

            goto LABEL_14;
          }

          v14 = CADLogHandle;
          if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v21 = v13;
            v15 = v14;
            v16 = "Read access managed -> unmanaged not allowed for calendar. ObjectID: [%@]";
LABEL_12:
            _os_log_impl(&dword_22430B000, v15, OS_LOG_TYPE_INFO, v16, buf, 0xCu);
          }
        }

        else
        {
          v17 = CADLogHandle;
          if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v21 = v13;
            v15 = v17;
            v16 = "Calendar cannot contain an allowed entity type. ObjectID: [%@]";
            goto LABEL_12;
          }
        }

LABEL_14:
      }
    }

    CFRelease(v3);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)CADCalendar:(id)calendar hasEvents:(id)events
{
  calendarCopy = calendar;
  eventsCopy = events;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if ([(ClientConnection *)self->_conn eventAccessLevel]== 2)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __73__CADXPCImplementation_CADCalendarOperationGroup__CADCalendar_hasEvents___block_invoke;
    v9[3] = &unk_27851B688;
    v9[4] = &v10;
    v8 = [(CADXPCImplementation *)self _tryPerformBlockWithCalendarID:calendarCopy forAction:0 withBlock:v9];
  }

  else
  {
    v8 = 0;
  }

  eventsCopy[2](eventsCopy, v8, *(v11 + 24));
  _Block_object_dispose(&v10, 8);
}

uint64_t __73__CADXPCImplementation_CADCalendarOperationGroup__CADCalendar_hasEvents___block_invoke(uint64_t a1)
{
  result = CalCalendarHasEvents();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)CADCalendar:(id)calendar hasEventsWithRoomAsAttendee:(id)attendee
{
  calendarCopy = calendar;
  attendeeCopy = attendee;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __91__CADXPCImplementation_CADCalendarOperationGroup__CADCalendar_hasEventsWithRoomAsAttendee___block_invoke;
  v9[3] = &unk_27851B688;
  v9[4] = &v10;
  v8 = [(CADXPCImplementation *)self _tryPerformBlockWithCalendarID:calendarCopy forAction:0 withBlock:v9];
  attendeeCopy[2](attendeeCopy, v8, *(v11 + 24));
  _Block_object_dispose(&v10, 8);
}

uint64_t __91__CADXPCImplementation_CADCalendarOperationGroup__CADCalendar_hasEventsWithRoomAsAttendee___block_invoke(uint64_t a1)
{
  result = CalCalendarHasEventsWithRoomAsAttendee();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (int)_tryPerformBlockWithCalendarID:(id)d forAction:(unint64_t)action withBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  conn = self->_conn;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __102__CADXPCImplementation_CADCalendarOperationGroup___tryPerformBlockWithCalendarID_forAction_withBlock___block_invoke;
  v15[3] = &unk_27851B6B0;
  v11 = dCopy;
  v16 = v11;
  selfCopy = self;
  v19 = &v21;
  actionCopy = action;
  v12 = blockCopy;
  v18 = v12;
  if ([(ClientConnection *)conn withDatabaseForObject:v11 perform:v15])
  {
    v13 = *(v22 + 6);
  }

  else
  {
    v13 = 1010;
    *(v22 + 6) = 1010;
  }

  _Block_object_dispose(&v21, 8);
  return v13;
}

void __102__CADXPCImplementation_CADCalendarOperationGroup___tryPerformBlockWithCalendarID_forAction_withBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) entityID];
  v2 = CalDatabaseCopyCalendarWithUID();
  if (!v2)
  {
    v4 = *(*(a1 + 56) + 8);
    v5 = 1010;
    goto LABEL_5;
  }

  v3 = v2;
  if ([*(*(a1 + 40) + 8) isCalendarRestricted:v2 forAction:*(a1 + 64)])
  {
    CFRelease(v3);
    v4 = *(*(a1 + 56) + 8);
    v5 = 1013;
LABEL_5:
    *(v4 + 24) = v5;
    return;
  }

  (*(*(a1 + 48) + 16))();
  CFRelease(v3);
  v6 = *(a1 + 32);
  v7 = *(*(a1 + 40) + 8);

  [v7 logAccessToObject:v6];
}

- (void)CADDatabaseGetSourcesWithFaultedProperties:(id)properties reply:(id)reply
{
  propertiesCopy = properties;
  replyCopy = reply;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__8;
  v24 = __Block_byref_object_dispose__8;
  v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__8;
  v18 = __Block_byref_object_dispose__8;
  v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
  eventAccessLevel = [(ClientConnection *)self->_conn eventAccessLevel];
  conn = self->_conn;
  if (eventAccessLevel == 1)
  {
    v10 = *MEMORY[0x277CF7570];
    v11 = v13;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __98__CADXPCImplementation_CADSourceOperationGroup__CADDatabaseGetSourcesWithFaultedProperties_reply___block_invoke;
    v13[3] = &unk_27851B6D8;
    v13[4] = self;
    v13[5] = propertiesCopy;
    v13[6] = &v26;
    v13[7] = &v20;
    v13[8] = &v14;
    [(ClientConnection *)conn withDatabaseID:v10 perform:v13];
    replyCopy[2](replyCopy, *(v27 + 6), v21[5], v15[5]);
  }

  else
  {
    v11 = v12;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __98__CADXPCImplementation_CADSourceOperationGroup__CADDatabaseGetSourcesWithFaultedProperties_reply___block_invoke_2;
    v12[3] = &unk_27851B700;
    v12[4] = self;
    v12[5] = propertiesCopy;
    v12[6] = &v26;
    v12[7] = &v20;
    v12[8] = &v14;
    [(ClientConnection *)conn withAllDatabasesPerform:v12];
    replyCopy[2](replyCopy, *(v27 + 6), v21[5], v15[5]);
    [(ClientConnection *)self->_conn logAccessToObjects:v21[5]];
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v26, 8);
}

void __98__CADXPCImplementation_CADSourceOperationGroup__CADDatabaseGetSourcesWithFaultedProperties_reply___block_invoke(uint64_t a1)
{
  v2 = CalDatabaseCopyLimitedAccessVirtualStore();
  v4 = CADEntityCopyObjectID();
  v3 = CalEntityCopyPropertyValues(*(*(a1 + 32) + 8), v2, *(a1 + 40), (*(*(a1 + 48) + 8) + 24));
  [*(*(*(a1 + 56) + 8) + 40) addObject:v4];
  [*(*(*(a1 + 64) + 8) + 40) addObject:v3];
  CFRelease(v2);
}

void __98__CADXPCImplementation_CADSourceOperationGroup__CADDatabaseGetSourcesWithFaultedProperties_reply___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = CalDatabaseCopyOfAllStores();
  if (v4)
  {
    v5 = v4;
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
        if ([*(*(a1 + 32) + 8) eventAccessLevel] == 2 && CalStoreAllowsEvents() && (objc_msgSend(*(*(a1 + 32) + 8), "isStoreRestricted:forAction:", ValueAtIndex, 0) & 1) == 0)
        {
          UID = CalStoreGetUID();
          v11 = CalEntityCopyPropertyValues(*(*(a1 + 32) + 8), ValueAtIndex, *(a1 + 40), (*(*(a1 + 48) + 8) + 24));
          if (!v11)
          {
            v12 = CADLogHandle;
            v13 = os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR);
            v11 = MEMORY[0x277CBEBF8];
            if (v13)
            {
              v14 = *(*(*(a1 + 48) + 8) + 24);
              *buf = 67109376;
              v19 = UID;
              v20 = 1024;
              v21 = v14;
              _os_log_impl(&dword_22430B000, v12, OS_LOG_TYPE_ERROR, "Failed to get properties for store with rowID %d, error = %d", buf, 0xEu);
            }
          }

          v15 = *(*(*(a1 + 56) + 8) + 40);
          v16 = [objc_alloc(MEMORY[0x277CF74C8]) initWithEntityType:6 entityID:UID databaseID:a2];
          [v15 addObject:v16];

          [*(*(*(a1 + 64) + 8) + 40) addObject:v11];
        }
      }
    }

    CFRelease(v5);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)CADDatabaseGetLocalSourceWithEnableIfNeeded:(BOOL)needed reply:(id)reply
{
  replyCopy = reply;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__8;
  v16 = __Block_byref_object_dispose__8;
  v17 = 0;
  conn = self->_conn;
  v8 = *MEMORY[0x277CF7570];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __99__CADXPCImplementation_CADSourceOperationGroup__CADDatabaseGetLocalSourceWithEnableIfNeeded_reply___block_invoke;
  v10[3] = &unk_27851B728;
  neededCopy = needed;
  v10[4] = self;
  v10[5] = &v12;
  v10[6] = &v18;
  if ([(ClientConnection *)conn withDatabaseID:v8 perform:v10])
  {
    v9 = *(v19 + 6);
  }

  else
  {
    v9 = 1007;
    *(v19 + 6) = 1007;
  }

  replyCopy[2](replyCopy, v9, v13[5]);
  [(ClientConnection *)self->_conn logAccessToObject:v13[5]];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
}

void __99__CADXPCImplementation_CADSourceOperationGroup__CADDatabaseGetLocalSourceWithEnableIfNeeded_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = CalDatabaseCopyStoreWithUID();
  if (v4)
  {
    v5 = v4;
    if (!CalStoreGetType())
    {
      goto LABEL_13;
    }

    CalStoreRepairDefaultLocalStore();
    CFRelease(v5);
    v5 = CalDatabaseCopyStoreWithUID();
    if (v5)
    {
      goto LABEL_13;
    }
  }

  v6 = CalDatabaseCopyOfAllStores();
  if (!v6)
  {
    return;
  }

  v18 = v6;
  v7 = [v6 count];
  if (!v7)
  {
LABEL_9:

    return;
  }

  v8 = v7;
  v9 = 0;
  while (1)
  {
    v5 = [v18 objectAtIndexedSubscript:v9];

    if (!CalStoreGetType())
    {
      break;
    }

    if (v8 == ++v9)
    {
      goto LABEL_9;
    }
  }

  CFRetain(v5);

  if (v5)
  {
LABEL_13:
    v10 = [*(*(a1 + 32) + 8) eventAccessLevel];
    v11 = [*(*(a1 + 32) + 8) reminderAccessGranted];
    v12 = v11;
    if (v10 == 2 && (v11 & 1) != 0 || v10 == 2 && (CalStoreAllowsEvents() & 1) != 0 || v12 && CalStoreAllowsTasks())
    {
      if (*(a1 + 56) == 1 && (CalStoreIsEnabled() & 1) == 0)
      {
        CalStoreSetEnabled();
        if ((CalDatabaseSave() & 1) == 0)
        {
          v13 = CADLogHandle;
          if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_22430B000, v13, OS_LOG_TYPE_ERROR, "Failed to save database after creating subscribed calendar store", buf, 2u);
          }
        }
      }

      v14 = [objc_alloc(MEMORY[0x277CF74C8]) initWithEntityType:6 entityID:CalStoreGetUID() databaseID:a2];
      v15 = *(*(a1 + 40) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      v17 = 0;
    }

    else
    {
      v17 = 1013;
    }

    *(*(*(a1 + 48) + 8) + 24) = v17;
    CFRelease(v5);
  }
}

- (void)CADDatabaseGetLocalBirthdaySource:(id)source
{
  sourceCopy = source;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__8;
  v14 = __Block_byref_object_dispose__8;
  v15 = 0;
  permissionValidator = [(ClientConnection *)self->_conn permissionValidator];
  if ([permissionValidator canModifyBirthdayCalendar])
  {
    conn = self->_conn;
    v7 = *MEMORY[0x277CF7570];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __83__CADXPCImplementation_CADSourceOperationGroup__CADDatabaseGetLocalBirthdaySource___block_invoke;
    v9[3] = &unk_27851A7F0;
    v9[4] = self;
    v9[5] = &v10;
    v9[6] = &v16;
    if (![(ClientConnection *)conn withDatabaseID:v7 perform:v9])
    {
      *(v17 + 6) = 1007;
    }

    v8 = *(v17 + 6);
  }

  else
  {
    v8 = 1013;
    *(v17 + 6) = 1013;
  }

  sourceCopy[2](sourceCopy, v8, v11[5]);
  [(ClientConnection *)self->_conn logAccessToObject:v11[5]];

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);
}

void __83__CADXPCImplementation_CADSourceOperationGroup__CADDatabaseGetLocalBirthdaySource___block_invoke(void *a1, uint64_t a2)
{
  v10 = CalDatabaseCopyOfAllStores();
  if (v10)
  {
    v4 = [v10 count];
    if (v4)
    {
      v5 = v4;
      for (i = 0; v5 != i; ++i)
      {
        [v10 objectAtIndexedSubscript:i];

        if (CalStoreGetType() == 5)
        {
          if ([*(a1[4] + 8) eventAccessLevel] == 2 && (CalStoreAllowsEvents() & 1) != 0)
          {
            v7 = [objc_alloc(MEMORY[0x277CF74C8]) initWithEntityType:6 entityID:CalStoreGetUID() databaseID:a2];
            v8 = *(a1[5] + 8);
            v9 = *(v8 + 40);
            *(v8 + 40) = v7;

            *(*(a1[6] + 8) + 24) = 0;
            break;
          }

          *(*(a1[6] + 8) + 24) = 1013;
        }
      }
    }
  }
}

- (id)constraintsData:(id)data error:(int *)error
{
  dataCopy = data;
  v12 = 0;
  v13 = &v12;
  v14 = 0x4010000000;
  v15 = "";
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __71__CADXPCImplementation_CADSourceOperationGroup__constraintsData_error___block_invoke;
  v11[3] = &unk_27851B750;
  v11[4] = &v12;
  v7 = [(CADXPCImplementation *)self _tryPerformBlockWithSourceID:dataCopy forAction:0 withBlock:v11];
  if (v7)
  {
    v8 = 0;
    if (error)
    {
      *error = v7;
    }
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x277CBEA90]);
    v8 = [v9 initWithBytes:v13 + 4 length:28];
  }

  _Block_object_dispose(&v12, 8);

  return v8;
}

uint64_t __71__CADXPCImplementation_CADSourceOperationGroup__constraintsData_error___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 32) = CalStoreGetMaxAlarmsSupported();
  *(*(*(a1 + 32) + 8) + 36) = CalStoreGetMaxRecurrencesSupported();
  *(*(*(a1 + 32) + 8) + 44) = CalStoreGetStrictestEventPrivateValue();
  Type = CalStoreGetType();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 48) & 0xFFFFFFFFFFFFFFFELL;
  if (!Type)
  {
    ++v4;
  }

  *(v3 + 48) = v4;
  v5 = CalStoreSupportsAlarmTriggerIntervals();
  v6 = 2;
  if (!v5)
  {
    v6 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFFFFFFFFFFFDLL | v6;
  v7 = CalStoreSupportsAlarmTriggerDates();
  v8 = 4;
  if (!v7)
  {
    v8 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFFFFFFFFFFFBLL | v8;
  started = CalStoreSupportsAlarmsTriggeringAfterStartDate();
  v10 = 8;
  if (!started)
  {
    v10 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFFFFFFFFFFF7 | v10;
  SupportsInvitationModifications = CalStoreGetSupportsInvitationModifications();
  v12 = 2048;
  if (!SupportsInvitationModifications)
  {
    v12 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFFFFFFFFF7FFLL | v12;
  v13 = CalStoreSupportsEventForwarding();
  v14 = 4096;
  if (!v13)
  {
    v14 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFFFFFFFFEFFFLL | v14;
  v15 = CalStoreAllowsProposeNewTime();
  v16 = 0x40000000000000;
  if (!v15)
  {
    v16 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFBFFFFFFFFFFFFFLL | v16;
  v17 = CalEventResponseCommentsSupportedInStore();
  v18 = 0x2000;
  if (!v17)
  {
    v18 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFFFFFFFFDFFFLL | v18;
  if (CalAttendeeIsStatusKnownForOrganizedEventsInStore())
  {
    v19 = 32;
  }

  else
  {
    v19 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFFFFFFFFFFDFLL | v19;
  if (CalAttendeeIsStatusKnownForInvitedEventsInStore())
  {
    v20 = 64;
  }

  else
  {
    v20 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFFFFFFFFFFBFLL | v20;
  IsAccurateInStore = CalEventGetStatusIsAccurateInStore();
  v22 = 128;
  if (!IsAccurateInStore)
  {
    v22 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFFFFFFFFFF7FLL | v22;
  SupportsIncomingInvitations = CalStoreGetSupportsIncomingInvitations();
  v24 = 256;
  if (!SupportsIncomingInvitations)
  {
    v24 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFFFFFFFFFEFFLL | v24;
  v25 = 512;
  if (CalStoreGetSupportsOutgoingInvitations())
  {
    v26 = 512;
  }

  else
  {
    v26 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFFFFFFFFFDFFLL | v26;
  v27 = CalStoreSupportsSharedCalendars();
  v28 = 0x8000000000;
  if (!v27)
  {
    v28 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFF7FFFFFFFFFLL | v28;
  v29 = CalStoreSupportsPrivateEvents();
  v30 = 0x40000000000;
  if (!v29)
  {
    v30 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFBFFFFFFFFFFLL | v30;
  v31 = CalStoreProhibitsPrivateEventsWithAttendees();
  v32 = 0x80000000000;
  if (!v31)
  {
    v32 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFF7FFFFFFFFFFLL | v32;
  v33 = CalStoreSupportsAvailabilityRequests();
  v34 = 0x100000000000;
  if (!v33)
  {
    v34 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFEFFFFFFFFFFFLL | v34;
  v35 = CalStoreSupportsIgnoringEventsInAvailabilityRequests();
  v36 = 0x200000000000;
  if (!v35)
  {
    v36 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFDFFFFFFFFFFFLL | v36;
  v37 = CalStoreSupportsInboxAvailability();
  v38 = 0x1000000000000;
  if (!v37)
  {
    v38 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFEFFFFFFFFFFFFLL | v38;
  v39 = CalStoreRequiresSamePrivacyLevelAcrossRecurrenceSeries();
  v40 = 0x800000000000;
  if (!v39)
  {
    v40 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFF7FFFFFFFFFFFLL | v40;
  ProhibitsICSImport = CalStoreGetProhibitsICSImport();
  v42 = 0x80000000000000;
  if (!ProhibitsICSImport)
  {
    v42 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFF7FFFFFFFFFFFFFLL | v42;
  v43 = CalStoreSupportsAutoGeocodingStructuredLocations();
  v44 = 0x100000000000000;
  if (!v43)
  {
    v44 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFEFFFFFFFFFFFFFFLL | v44;
  SupportsJunkReporting = CalStoreGetSupportsJunkReporting();
  v46 = 0x200000000000000;
  if (!SupportsJunkReporting)
  {
    v46 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFDFFFFFFFFFFFFFFLL | v46;
  SupportsPhoneNumbers = CalStoreGetSupportsPhoneNumbers();
  v48 = 0x400000000000000;
  if (!SupportsPhoneNumbers)
  {
    v48 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFBFFFFFFFFFFFFFFLL | v48;
  v49 = CalStoreSupportsLocationDirectorySearches();
  v50 = 0x400000000000;
  if (!v49)
  {
    v50 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFBFFFFFFFFFFFLL | v50;
  IsFacebook = CalStoreIsFacebook();
  v52 = 0x10000000000;
  if (!IsFacebook)
  {
    v52 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFEFFFFFFFFFFLL | v52;
  MustIncludeMoreThanFirstOccurrence = CalStoreRecurrenceSeriesMustIncludeMoreThanFirstOccurrence();
  v54 = 0x20000000000;
  if (!MustIncludeMoreThanFirstOccurrence)
  {
    v54 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFDFFFFFFFFFFLL | v54;
  if (CalEventRequiresOutgoingInvitationsInDefaultCalendarInStore())
  {
    v55 = 1024;
  }

  else
  {
    v55 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFFFFFFFFFBFFLL | v55;
  if (CalEventGetDeliverySourceOrExternalIDRequiredForResponseInStore())
  {
    v56 = 0x4000;
  }

  else
  {
    v56 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFFFFFFFFBFFFLL | v56;
  if (CalEventGetProposedStatusRequiredForResponseInStore())
  {
    v57 = 0x8000;
  }

  else
  {
    v57 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFFFFFFFF7FFFLL | v57;
  if (CalEventGetRejectedStatusChangeRequiresNoExternalStatusInStore())
  {
    v58 = 0x10000;
  }

  else
  {
    v58 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFFFFFFFEFFFFLL | v58;
  v59 = CalEventDurationConstrainedToRecurrenceIntervalInStore();
  v60 = 0x20000;
  if (!v59)
  {
    v60 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFFFFFFFDFFFFLL | v60;
  MustOccurOnSeparateDaysInStore = CalEventGetOccurrencesMustOccurOnSeparateDaysInStore();
  v62 = 0x80000;
  if (!MustOccurOnSeparateDaysInStore)
  {
    v62 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFFFFFFF7FFFFLL | v62;
  FutureStartDateLimitedToOccurrenceCacheBoundsInStore = CalEventGetFutureStartDateLimitedToOccurrenceCacheBoundsInStore();
  v64 = 0x100000;
  if (!FutureStartDateLimitedToOccurrenceCacheBoundsInStore)
  {
    v64 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFFFFFFEFFFFFLL | v64;
  v65 = CalStoreSupportsRecurrencesOnDetachedEvents();
  v66 = 0x200000;
  if (!v65)
  {
    v66 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFFFFFFDFFFFFLL | v66;
  v67 = CalStoreAreRecurrencesPinnedToMonthDays();
  v68 = 0x400000;
  if (!v67)
  {
    v68 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFFFFFFBFFFFFLL | v68;
  MustAcknowledgeMasterEvent = CalStoreMustAcknowledgeMasterEvent();
  v70 = 0x1000000;
  if (!MustAcknowledgeMasterEvent)
  {
    v70 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFFFFFEFFFFFFLL | v70;
  if (CalStoreGetSupportsClearingPrivateComments())
  {
    v71 = 0x8000;
  }

  else
  {
    v71 = 0;
  }

  *(*(*(a1 + 32) + 8) + 56) = *(*(*(a1 + 32) + 8) + 56) & 0xFFFF7FFF | v71;
  AvailabilitySupportedByStore = CalCalendarItemGetAvailabilitySupportedByStore();
  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFFFFFDFFFFFFLL | (((AvailabilitySupportedByStore - 1) < 2) << 25);
  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFFFFFBFFFFFFLL | ((AvailabilitySupportedByStore == 2) << 26);
  v73 = CalAttendeeRequireSearchInSingleAccountInStore();
  v74 = 0x800000;
  if (!v73)
  {
    v74 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFFFFFF7FFFFFLL | v74;
  UseDeletedByOrganizerStatusInStore = CalAttendeeGetUseDeletedByOrganizerStatusInStore();
  v76 = 0x800000000000000;
  if (!UseDeletedByOrganizerStatusInStore)
  {
    v76 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xF7FFFFFFFFFFFFFFLL | v76;
  v77 = CalStoreRequiresMSFormattedUIDKey();
  v78 = 0x8000000;
  if (!v77)
  {
    v78 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFFFFF7FFFFFFLL | v78;
  v79 = CalEventCancelDeletedEventsInStore();
  v80 = 0x10000000;
  if (!v79)
  {
    v80 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFFFFEFFFFFFFLL | v80;
  v81 = CalEventDeclineDeletedInvitationsInStore();
  v82 = 0x20000000;
  if (!v81)
  {
    v82 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFFFFDFFFFFFFLL | v82;
  v83 = CalStoreSupportsStructuredLocations();
  v84 = 0x40000000;
  if (!v83)
  {
    v84 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFFFFBFFFFFFFLL | v84;
  v85 = CalStoreSupportsReminderActions();
  v86 = 0x80000000;
  if (!v85)
  {
    v86 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFFFF7FFFFFFFLL | v86;
  v87 = CalStoreSupportsReminderLocations();
  v88 = 0x100000000;
  if (!v87)
  {
    v88 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFFFEFFFFFFFFLL | v88;
  v89 = CalStoreSupportsAlarmProximity();
  v90 = 0x200000000;
  if (!v89)
  {
    v90 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFFFDFFFFFFFFLL | v90;
  v91 = CalStoreAllowsCalendarAddDeleteModify();
  v92 = 0x400000000;
  if (!v91)
  {
    v92 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFFFBFFFFFFFFLL | v92;
  v93 = CalStoreAllowsTasks();
  v94 = 0x800000000;
  if (!v93)
  {
    v94 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFFF7FFFFFFFFLL | v94;
  v95 = CalStoreAllowsEvents();
  v96 = 0x1000000000;
  if (!v95)
  {
    v96 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFFEFFFFFFFFFLL | v96;
  v97 = CalEventURLFieldSupportedInStore();
  v98 = 0x2000000000;
  if (!v97)
  {
    v98 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFFDFFFFFFFFFLL | v98;
  v99 = CalTaskAllDayDueDatesSupportedInStore();
  v100 = 0x4000000000;
  if (!v99)
  {
    v100 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFFBFFFFFFFFFLL | v100;
  if (CalStoreSnoozeAlarmRequiresDetach())
  {
    v101 = 16;
  }

  else
  {
    v101 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFFFFFFFFFFFFEFLL | v101;
  v102 = CalStoreProhibitsMultipleDaysInMonthlyRecurrence();
  v103 = 0x4000000000000;
  if (!v102)
  {
    v103 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFBFFFFFFFFFFFFLL | v103;
  v104 = CalStoreProhibitsMultipleMonthsInYearlyRecurrence();
  v105 = 0x2000000000000;
  if (!v104)
  {
    v105 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFFDFFFFFFFFFFFFLL | v105;
  v106 = CalStoreProhibitsYearlyRecurrenceInterval();
  v107 = 0x8000000000000;
  if (!v106)
  {
    v107 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFF7FFFFFFFFFFFFLL | v107;
  v108 = CalStoreProhibitsDetachmentOnCommentChange();
  v109 = 0x20000000000000;
  if (!v108)
  {
    v109 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFDFFFFFFFFFFFFFLL | v109;
  v110 = CalStoreRequiresOccurrencesConformToRecurrenceRule();
  v111 = 0x10000000000000;
  if (!v110)
  {
    v111 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xFFEFFFFFFFFFFFFFLL | v111;
  v112 = CalStoreProhibitsSlicingEventsWithAttendees();
  v113 = 0x1000000000000000;
  if (!v112)
  {
    v113 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xEFFFFFFFFFFFFFFFLL | v113;
  v114 = CalStoreSupportsAttachments();
  v115 = 0x4000000000000000;
  if (!v114)
  {
    v115 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xBFFFFFFFFFFFFFFFLL | v115;
  if (CalStoreRequiresOpeningAttachmentAsLink())
  {
    v116 = 16;
  }

  else
  {
    v116 = 0;
  }

  *(*(*(a1 + 32) + 8) + 56) = *(*(*(a1 + 32) + 8) + 56) & 0xFFFFFFEF | v116;
  if (CalStoreShouldUseDeleteAndAddInsteadOfMoveBetweenCalendars())
  {
    v117 = 32;
  }

  else
  {
    v117 = 0;
  }

  *(*(*(a1 + 32) + 8) + 56) = *(*(*(a1 + 32) + 8) + 56) & 0xFFFFFFDF | v117;
  v118 = CalStoreSupportsDelegation();
  v119 = 0x8000000000000000;
  if (!v118)
  {
    v119 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = v119 & 0x8000000000000000 | *(*(*(a1 + 32) + 8) + 48) & 0x7FFFFFFFFFFFFFFFLL;
  *(*(*(a1 + 32) + 8) + 56) = *(*(*(a1 + 32) + 8) + 56) & 0xFFFFFFFE | CalStoreSupportsDelegateEnumeration();
  if (CalStoreSupportsInvitationModificationsWithoutNotification())
  {
    v120 = 64;
  }

  else
  {
    v120 = 0;
  }

  *(*(*(a1 + 32) + 8) + 56) = *(*(*(a1 + 32) + 8) + 56) & 0xFFFFFFBF | v120;
  if (CalStoreSupportsFloatingTimeZone())
  {
    v121 = 2;
  }

  else
  {
    v121 = 0;
  }

  *(*(*(a1 + 32) + 8) + 56) = *(*(*(a1 + 32) + 8) + 56) & 0xFFFFFFFD | v121;
  v122 = CalStoreSupportsSubscriptionCalendars();
  v123 = 0x2000000000000000;
  if (!v122)
  {
    v123 = 0;
  }

  *(*(*(a1 + 32) + 8) + 48) = *(*(*(a1 + 32) + 8) + 48) & 0xDFFFFFFFFFFFFFFFLL | v123;
  if (CalStoreSupportsManagedSubscriptionCalendars())
  {
    v124 = 128;
  }

  else
  {
    v124 = 0;
  }

  *(*(*(a1 + 32) + 8) + 56) = *(*(*(a1 + 32) + 8) + 56) & 0xFFFFFF7F | v124;
  if (CalStoreSupportsSubscriptionMirroring())
  {
    v125 = 256;
  }

  else
  {
    v125 = 0;
  }

  *(*(*(a1 + 32) + 8) + 56) = *(*(*(a1 + 32) + 8) + 56) & 0xFFFFFEFF | v125;
  v126 = CalDatabaseGetPreferences();
  if (([v126 get_overrideParticipantRoleConstraint] & 1) == 0)
  {
    if (CalStoreSupportsParticipantRoles())
    {
      v25 = 512;
    }

    else
    {
      v25 = 0;
    }
  }

  *(*(*(a1 + 32) + 8) + 56) = *(*(*(a1 + 32) + 8) + 56) & 0xFFFFFDFF | v25;

  if (CalStoreProhibitsUsingEventOrganizerEmailWhenComposingMail())
  {
    v127 = 4;
  }

  else
  {
    v127 = 0;
  }

  *(*(*(a1 + 32) + 8) + 56) = *(*(*(a1 + 32) + 8) + 56) & 0xFFFFFFFB | v127;
  if (CalStoreSupportsRecurrenceSplit())
  {
    v128 = 8;
  }

  else
  {
    v128 = 0;
  }

  *(*(*(a1 + 32) + 8) + 56) = *(*(*(a1 + 32) + 8) + 56) & 0xFFFFFFF7 | v128;
  if (CalStoreSupportsPush())
  {
    v129 = 1024;
  }

  else
  {
    v129 = 0;
  }

  *(*(*(a1 + 32) + 8) + 56) = *(*(*(a1 + 32) + 8) + 56) & 0xFFFFFBFF | v129;
  if (CalStoreSupportsTravelTime())
  {
    v130 = 2048;
  }

  else
  {
    v130 = 0;
  }

  *(*(*(a1 + 32) + 8) + 56) = *(*(*(a1 + 32) + 8) + 56) & 0xFFFFF7FF | v130;
  if (CalStoreRequiresSeparateFilesForAllAttachments())
  {
    v131 = 4096;
  }

  else
  {
    v131 = 0;
  }

  *(*(*(a1 + 32) + 8) + 56) = *(*(*(a1 + 32) + 8) + 56) & 0xFFFFEFFF | v131;
  if (CalEventGetOccurrenceOrderEnforcedAfterDetachmentInStore())
  {
    v132 = 0x2000;
  }

  else
  {
    v132 = 0;
  }

  *(*(*(a1 + 32) + 8) + 56) = *(*(*(a1 + 32) + 8) + 56) & 0xFFFFDFFF | v132;
  if (CalStoreAllowsPrivateEventAccessByDelegate())
  {
    v133 = 0x4000;
  }

  else
  {
    v133 = 0;
  }

  *(*(*(a1 + 32) + 8) + 56) = *(*(*(a1 + 32) + 8) + 56) & 0xFFFFBFFF | v133;
  if (CalStoreSupportsDefaultAlarms())
  {
    v134 = 0x10000;
  }

  else
  {
    v134 = 0;
  }

  *(*(*(a1 + 32) + 8) + 56) = *(*(*(a1 + 32) + 8) + 56) & 0xFFFEFFFF | v134;
  *(*(*(a1 + 32) + 8) + 40) = CalStoreGetType() == 1;
  result = CalStoreGetType();
  if (!result)
  {
    *(*(*(a1 + 32) + 8) + 48) |= 0x40000000uLL;
    *(*(*(a1 + 32) + 8) + 48) |= 0x80000000uLL;
    *(*(*(a1 + 32) + 8) + 48) |= 0x100000000uLL;
    *(*(*(a1 + 32) + 8) + 48) |= 0x200000000uLL;
  }

  return result;
}

- (void)CADObjectGetConstraints:(id)constraints reply:(id)reply
{
  v37 = *MEMORY[0x277D85DE8];
  constraintsCopy = constraints;
  replyCopy = reply;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__8;
  v33 = __Block_byref_object_dispose__8;
  v34 = 0;
  if ((!constraintsCopy || [constraintsCopy isVirtual]) && -[ClientConnection eventAccessLevel](self->_conn, "eventAccessLevel") == 1)
  {
    v9 = [CADOperationGroupUtil defaultCalendarForNewEventsInDelegateSource:0 withConnection:self->_conn limitedAccess:0];
    conn = self->_conn;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __79__CADXPCImplementation_CADSourceOperationGroup__CADObjectGetConstraints_reply___block_invoke;
    v26[3] = &unk_27851B778;
    v11 = v9;
    v27 = v11;
    v28 = &v29;
    [(ClientConnection *)conn withDatabaseForObject:v11 perform:v26];
    if (v30[5])
    {

LABEL_13:
      *buf = 0;
      v16 = [(CADXPCImplementation *)self constraintsData:v30[5] error:buf, v20, v21, v22, v23];
      replyCopy[2](replyCopy, *buf, v16);

      goto LABEL_14;
    }

    v18 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v18, OS_LOG_TYPE_ERROR, "Couldn't fetch the default source for getting constraints, with limited access", buf, 2u);
    }

    replyCopy[2](replyCopy, 1010, 0);
  }

  else
  {
    entityType = [constraintsCopy entityType];
    if (entityType != 2)
    {
      if (entityType == 6)
      {
        objc_storeStrong(v30 + 5, constraints);
      }

      else
      {
        v15 = CADLogHandle;
        if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v36 = constraintsCopy;
          _os_log_impl(&dword_22430B000, v15, OS_LOG_TYPE_ERROR, "Undefined constraints for objectID: %@. We only support source and event to get source constraints right now", buf, 0xCu);
        }
      }

      goto LABEL_13;
    }

    v13 = self->_conn;
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __79__CADXPCImplementation_CADSourceOperationGroup__CADObjectGetConstraints_reply___block_invoke_6;
    v23 = &unk_27851B778;
    v14 = constraintsCopy;
    v24 = v14;
    v25 = &v29;
    [(ClientConnection *)v13 withDatabaseForObject:v14 perform:&v20];
    if (v30[5])
    {

      goto LABEL_13;
    }

    v19 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v36 = v14;
      _os_log_impl(&dword_22430B000, v19, OS_LOG_TYPE_ERROR, "Couldn't retrieve actual source for event (%@) to get its constraints", buf, 0xCu);
    }

    replyCopy[2](replyCopy, 1010, 0);
  }

LABEL_14:
  _Block_object_dispose(&v29, 8);

  v17 = *MEMORY[0x277D85DE8];
}

void __79__CADXPCImplementation_CADSourceOperationGroup__CADObjectGetConstraints_reply___block_invoke(uint64_t a1)
{
  [*(a1 + 32) entityID];
  v2 = CalDatabaseCopyCalendarWithUID();
  if (v2)
  {
    v3 = v2;
    v4 = CalCalendarCopyStore();
    CFRelease(v3);
    if (v4)
    {
      v5 = CADEntityCopyObjectID();
      v6 = *(*(a1 + 40) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      CFRelease(v4);
    }
  }
}

void __79__CADXPCImplementation_CADSourceOperationGroup__CADObjectGetConstraints_reply___block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x22AA4B950](a3, [*(a1 + 32) entityID]);
  if (v4)
  {
    v5 = v4;
    v6 = CalCalendarItemCopyCalendar();
    CFRelease(v5);
    if (v6)
    {
      v7 = CalCalendarCopyStore();
      CFRelease(v6);
      if (v7)
      {
        v8 = CADEntityCopyObjectID();
        v9 = *(*(a1 + 40) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;

        CFRelease(v7);
      }
    }
  }
}

- (void)CADSourceGetNotificationCollection:(id)collection reply:(id)reply
{
  collectionCopy = collection;
  replyCopy = reply;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__8;
  v14 = __Block_byref_object_dispose__8;
  v15 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __90__CADXPCImplementation_CADSourceOperationGroup__CADSourceGetNotificationCollection_reply___block_invoke;
  v9[3] = &unk_27851B750;
  v9[4] = &v10;
  v8 = [(CADXPCImplementation *)self _tryPerformBlockWithSourceID:collectionCopy forAction:0 withBlock:v9];
  replyCopy[2](replyCopy, v8, v11[5]);
  _Block_object_dispose(&v10, 8);
}

void __90__CADXPCImplementation_CADSourceOperationGroup__CADSourceGetNotificationCollection_reply___block_invoke(uint64_t a1)
{
  v2 = CalStoreCopyCalendars();
  if (v2)
  {
    v3 = v2;
    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        CFArrayGetValueAtIndex(v3, i);
        if (CalCalendarIsNotificationsCollection())
        {
          v7 = objc_alloc(MEMORY[0x277CF74C8]);
          UID = CalCalendarGetUID();
          v9 = [v7 initWithEntityType:1 entityID:UID databaseID:CalDatabaseGetAuxilliaryDatabaseID()];
          v10 = *(*(a1 + 32) + 8);
          v11 = *(v10 + 40);
          *(v10 + 40) = v9;
        }
      }
    }

    CFRelease(v3);
  }
}

- (void)CADSourceRefresh:(id)refresh isUserRequested:(BOOL)requested reply:(id)reply
{
  refreshCopy = refresh;
  replyCopy = reply;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__8;
  v15[4] = __Block_byref_object_dispose__8;
  v16 = self->_conn;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __88__CADXPCImplementation_CADSourceOperationGroup__CADSourceRefresh_isUserRequested_reply___block_invoke;
  v13[3] = &unk_27851B7A0;
  requestedCopy = requested;
  v13[4] = v15;
  v13[5] = &v21;
  v13[6] = &v17;
  v10 = [(CADXPCImplementation *)self _tryPerformBlockWithSourceID:refreshCopy forAction:0 withBlock:v13];
  v11 = *(v18 + 6);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  replyCopy[2](replyCopy, v12, *(v22 + 24));
  _Block_object_dispose(v15, 8);

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
}

void __88__CADXPCImplementation_CADSourceOperationGroup__CADSourceRefresh_isUserRequested_reply___block_invoke(uint64_t a1)
{
  v9 = CalStoreCopyExternalID();
  if (v9)
  {
    v2 = CalStoreCopyCalendars();
    v3 = v2;
    if (v2)
    {
      Count = CFArrayGetCount(v2);
      if (Count < 1)
      {
        v5 = 0;
      }

      else
      {
        v5 = 0;
        for (i = 0; i != Count; ++i)
        {
          CFArrayGetValueAtIndex(v3, i);
          if (CalCalendarCanContainEntityType() && [*(*(*(a1 + 32) + 8) + 40) eventAccessLevel])
          {
            v5 |= 4uLL;
          }

          if (CalCalendarCanContainEntityType() && [*(*(*(a1 + 32) + 8) + 40) reminderAccessGranted])
          {
            v5 |= 0x10uLL;
          }
        }
      }

      v7 = [MEMORY[0x277D03928] sharedConnection];
      v8 = [v7 updateContentsOfAllFoldersForAccountID:v9 andDataclass:v5 isUserRequested:*(a1 + 56)];

      if (v8)
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
      }

      CFRelease(v3);
    }
  }
}

uint64_t __92__CADXPCImplementation_CADSourceOperationGroup__CADCountCalendarItemsOfType_inSource_reply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = CalDatabaseGetCountOfCalendarItemsInStore();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)CADCountOriginalCalendarItemsBySource:(id)source reply:(id)reply
{
  sourceCopy = source;
  replyCopy = reply;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __93__CADXPCImplementation_CADSourceOperationGroup__CADCountOriginalCalendarItemsBySource_reply___block_invoke;
  v9[3] = &unk_27851B750;
  v9[4] = &v10;
  v8 = [(CADXPCImplementation *)self _tryPerformBlockWithSourceID:sourceCopy forAction:0 withBlock:v9];
  replyCopy[2](replyCopy, v8, *(v11 + 6));
  _Block_object_dispose(&v10, 8);
}

uint64_t __93__CADXPCImplementation_CADSourceOperationGroup__CADCountOriginalCalendarItemsBySource_reply___block_invoke(uint64_t a1)
{
  result = CalDatabaseGetCountOfOriginalCalendarItemsInStore();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t __107__CADXPCImplementation_CADSourceOperationGroup__CADRemoveCalendarItemsOlderThanDate_ofType_inSource_reply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  result = CalStoreRemoveItemsOfTypeOlderThanDateInStore();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)CADSourceGetGrantedDelegatesList:(id)list reply:(id)reply
{
  replyCopy = reply;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __88__CADXPCImplementation_CADSourceOperationGroup__CADSourceGetGrantedDelegatesList_reply___block_invoke;
  v9[3] = &unk_27851B840;
  v7 = replyCopy;
  v10 = v7;
  v8 = [(CADXPCImplementation *)self _tryPerformBlockWithSourceID:list forAction:0 withBlock:v9];
  if (v8)
  {
    (*(v7 + 2))(v7, v8, 0);
  }
}

void __88__CADXPCImplementation_CADSourceOperationGroup__CADSourceGetGrantedDelegatesList_reply___block_invoke(uint64_t a1)
{
  v2 = CalStoreCopyExternalID();
  if (v2)
  {
    v3 = [MEMORY[0x277D03928] sharedConnection];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __88__CADXPCImplementation_CADSourceOperationGroup__CADSourceGetGrantedDelegatesList_reply___block_invoke_2;
    v5[3] = &unk_27851B818;
    v6 = *(a1 + 32);
    v4 = [v3 requestGrantedDelegatesListForAccountID:v2 resultsBlock:v5];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __88__CADXPCImplementation_CADSourceOperationGroup__CADSourceGetGrantedDelegatesList_reply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = v6;
      _os_log_impl(&dword_22430B000, v7, OS_LOG_TYPE_ERROR, "Error getting granted delegates list: %@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v22 = a1;
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v23 = v5;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          v15 = objc_opt_new();
          v16 = [v14 uri];
          [v15 setUri:v16];

          v17 = [v14 displayName];
          [v15 setDisplayName:v17];

          v18 = [v14 preferredUserAddress];
          [v15 setPreferredUserAddress:v18];

          v19 = [v14 permission];
          if (v19 >= 3)
          {
            v20 = -1;
          }

          else
          {
            v20 = v19;
          }

          [v15 setPermission:{v20, v22}];
          [v8 addObject:v15];
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v11);
    }

    (*(*(v22 + 32) + 16))();
    v5 = v23;
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)CADSourceUpdateGrantedDelegate:(id)delegate action:(int64_t)action sourceID:(id)d reply:(id)reply
{
  delegateCopy = delegate;
  replyCopy = reply;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __102__CADXPCImplementation_CADSourceOperationGroup__CADSourceUpdateGrantedDelegate_action_sourceID_reply___block_invoke;
  v15[3] = &unk_27851B868;
  v12 = replyCopy;
  v16 = delegateCopy;
  v17 = v12;
  actionCopy = action;
  v13 = delegateCopy;
  v14 = [(CADXPCImplementation *)self _tryPerformBlockWithSourceID:d forAction:1 withBlock:v15];
  if (v14)
  {
    (*(v12 + 2))(v12, v14);
  }
}

void __102__CADXPCImplementation_CADSourceOperationGroup__CADSourceUpdateGrantedDelegate_action_sourceID_reply___block_invoke(uint64_t a1)
{
  v2 = CalStoreCopyExternalID();
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = [*(a1 + 32) displayName];
    [v3 setDisplayName:v4];

    v5 = [*(a1 + 32) uri];
    [v3 setUri:v5];

    v6 = [*(a1 + 32) preferredUserAddress];
    [v3 setPreferredUserAddress:v6];

    if (*(a1 + 48) == 1)
    {
      v7 = 0;
    }

    else
    {
      v8 = [*(a1 + 32) permission];
      if (v8 >= 3)
      {
        v7 = -1;
      }

      else
      {
        v7 = v8;
      }
    }

    [v3 setPermission:v7];
    v9 = *(a1 + 48);
    if (v9 == 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = v9 == 1;
    }

    v11 = [MEMORY[0x277D03928] sharedConnection];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __102__CADXPCImplementation_CADSourceOperationGroup__CADSourceUpdateGrantedDelegate_action_sourceID_reply___block_invoke_2;
    v13[3] = &unk_27851B190;
    v14 = *(a1 + 40);
    v12 = [v11 updateGrantedDelegateForAccountID:v2 grantedDelegate:v3 action:v10 resultsBlock:v13];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __102__CADXPCImplementation_CADSourceOperationGroup__CADSourceUpdateGrantedDelegate_action_sourceID_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_22430B000, v4, OS_LOG_TYPE_ERROR, "Error updating granted delegate: %@", &v7, 0xCu);
    }

    v5 = *(*(a1 + 32) + 16);
  }

  else
  {
    v5 = *(*(a1 + 32) + 16);
  }

  v5();

  v6 = *MEMORY[0x277D85DE8];
}

- (void)CADSourceAddExchangeDelegateWithName:(id)name emailAddress:(id)address toSourceWithID:(id)d reply:(id)reply
{
  nameCopy = name;
  addressCopy = address;
  replyCopy = reply;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __120__CADXPCImplementation_CADSourceOperationGroup__CADSourceAddExchangeDelegateWithName_emailAddress_toSourceWithID_reply___block_invoke;
  v17[3] = &unk_27851B8B8;
  v13 = replyCopy;
  v19 = addressCopy;
  v20 = v13;
  v18 = nameCopy;
  v14 = addressCopy;
  v15 = nameCopy;
  v16 = [(CADXPCImplementation *)self _tryPerformBlockWithSourceID:d forAction:1 withBlock:v17];
  if (v16)
  {
    (*(v13 + 2))(v13, v16, 0, -1);
  }
}

void __120__CADXPCImplementation_CADSourceOperationGroup__CADSourceAddExchangeDelegateWithName_emailAddress_toSourceWithID_reply___block_invoke(uint64_t a1, int a2, uint64_t a3)
{
  v6 = CalStoreCopyExternalID();
  if (v6)
  {
    v7 = [MEMORY[0x277D03928] sharedConnection];
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __120__CADXPCImplementation_CADSourceOperationGroup__CADSourceAddExchangeDelegateWithName_emailAddress_toSourceWithID_reply___block_invoke_2;
    v10[3] = &unk_27851B890;
    v11 = v6;
    v13 = a3;
    v14 = a2;
    v12 = *(a1 + 48);
    [v7 addExchangeDelegateWithName:v8 emailAddress:v9 toAccountWithID:v11 completion:v10];
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __120__CADXPCImplementation_CADSourceOperationGroup__CADSourceAddExchangeDelegateWithName_emailAddress_toSourceWithID_reply___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  if (!v7 && a3 == -1)
  {
    v9 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v22 = 138543618;
      v23 = v10;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_22430B000, v9, OS_LOG_TYPE_ERROR, "Error adding Exchange delegate to account %{public}@: %@", &v22, 0x16u);
    }

    v11 = 0;
    v12 = *(a1 + 40);
    v13 = -1;
    v14 = 1015;
    goto LABEL_21;
  }

  if (v7)
  {
    v15 = *(a1 + 48);
    v16 = CalDatabaseCopyStoreWithUUID();
    if (!v16)
    {
      v18 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 32);
        v22 = 138543618;
        v23 = v19;
        v24 = 2114;
        v25 = v7;
        _os_log_impl(&dword_22430B000, v18, OS_LOG_TYPE_ERROR, "Error adding Exchange delegate to account %{public}@. The delegate source ID we got (%{public}@) does not exist!", &v22, 0x16u);
      }

      v11 = 0;
      v14 = 1015;
      goto LABEL_14;
    }

    v17 = v16;
    v11 = [objc_alloc(MEMORY[0x277CF74C8]) initWithEntityType:6 entityID:CalEntityGetID() databaseID:*(a1 + 56)];
    CFRelease(v17);
  }

  else
  {
    v11 = 0;
  }

  v14 = 0;
LABEL_14:
  v12 = *(a1 + 40);
  v20 = -1;
  if (!a3)
  {
    v20 = 0;
  }

  if (a3 == 1)
  {
    v20 = 1;
  }

  if (a3 == 2)
  {
    v13 = 2;
  }

  else
  {
    v13 = v20;
  }

LABEL_21:
  (*(v12 + 16))(v12, v14, v11, v13);

  v21 = *MEMORY[0x277D85DE8];
}

- (void)CADSourceRemoveExchangeDelegateWithID:(id)d reply:(id)reply
{
  replyCopy = reply;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __93__CADXPCImplementation_CADSourceOperationGroup__CADSourceRemoveExchangeDelegateWithID_reply___block_invoke;
  v9[3] = &unk_27851B840;
  v7 = replyCopy;
  v10 = v7;
  v8 = [(CADXPCImplementation *)self _tryPerformBlockWithSourceID:d forAction:1 withBlock:v9];
  if (v8)
  {
    (*(v7 + 2))(v7, v8);
  }
}

void __93__CADXPCImplementation_CADSourceOperationGroup__CADSourceRemoveExchangeDelegateWithID_reply___block_invoke(uint64_t a1)
{
  v2 = CalStoreCopyUUID();
  if (v2)
  {
    v3 = CalStoreCopyDelegatedAccountOwnerStoreID();
    if (v3)
    {
      v4 = [MEMORY[0x277D03928] sharedConnection];
      v5[0] = MEMORY[0x277D85DD0];
      v5[1] = 3221225472;
      v5[2] = __93__CADXPCImplementation_CADSourceOperationGroup__CADSourceRemoveExchangeDelegateWithID_reply___block_invoke_2;
      v5[3] = &unk_27851B8E0;
      v6 = v2;
      v7 = *(a1 + 32);
      [v4 removeExchangeDelegateWithSourceID:v6 fromParentAccountWithID:v3 completion:v5];
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __93__CADXPCImplementation_CADSourceOperationGroup__CADSourceRemoveExchangeDelegateWithID_reply___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_22430B000, v6, OS_LOG_TYPE_ERROR, "Failed to remove Exchange delegate with accountID %{public}@: %@", &v9, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x277D85DE8];
}

- (int)_tryPerformBlockWithSourceID:(id)d forAction:(unint64_t)action entityType:(int)type withBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  eventAccessLevel = [(ClientConnection *)self->_conn eventAccessLevel];
  reminderAccessGranted = [(ClientConnection *)self->_conn reminderAccessGranted];
  v15 = type == 2 && eventAccessLevel == 0;
  v16 = 1013;
  if ((type != 3 || reminderAccessGranted) && !v15 && (type || eventAccessLevel != 0 && reminderAccessGranted))
  {
    v17 = [(CADXPCImplementation *)self _tryPerformBlockWithSourceID:dCopy forAction:action withBlock:blockCopy];
    v16 = v17 & (v17 >> 31);
  }

  return v16;
}

- (int)_tryPerformBlockWithSourceID:(id)d forAction:(unint64_t)action withBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  conn = self->_conn;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __98__CADXPCImplementation_CADSourceOperationGroup___tryPerformBlockWithSourceID_forAction_withBlock___block_invoke;
  v15[3] = &unk_27851B6B0;
  v11 = dCopy;
  v16 = v11;
  selfCopy = self;
  v19 = &v21;
  actionCopy = action;
  v12 = blockCopy;
  v18 = v12;
  if ([(ClientConnection *)conn withDatabaseForObject:v11 perform:v15])
  {
    v13 = *(v22 + 6);
  }

  else
  {
    v13 = 1010;
    *(v22 + 6) = 1010;
  }

  _Block_object_dispose(&v21, 8);
  return v13;
}

void __98__CADXPCImplementation_CADSourceOperationGroup___tryPerformBlockWithSourceID_forAction_withBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) entityID];
  v2 = CalDatabaseCopyStoreWithUID();
  if (!v2)
  {
    v4 = *(*(a1 + 56) + 8);
    v5 = 1010;
    goto LABEL_5;
  }

  v3 = v2;
  if ([*(*(a1 + 40) + 8) isStoreRestricted:v2 forAction:*(a1 + 64)])
  {
    CFRelease(v3);
    v4 = *(*(a1 + 56) + 8);
    v5 = 1013;
LABEL_5:
    *(v4 + 24) = v5;
    return;
  }

  [*(*(a1 + 40) + 8) logAccessToObject:*(a1 + 32)];
  (*(*(a1 + 48) + 16))();

  CFRelease(v3);
}

- (void)CADDatabaseGetColorWithProviderIdentifier:(id)identifier externalID:(id)d reply:(id)reply
{
  identifierCopy = identifier;
  dCopy = d;
  replyCopy = reply;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__9;
  v22 = __Block_byref_object_dispose__9;
  v23 = 0;
  conn = self->_conn;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __107__CADXPCImplementation_CADColorOperationGroup__CADDatabaseGetColorWithProviderIdentifier_externalID_reply___block_invoke;
  v14[3] = &unk_27851B910;
  v12 = identifierCopy;
  v15 = v12;
  v13 = dCopy;
  v16 = v13;
  v17 = &v18;
  [(ClientConnection *)conn withAllDatabasesPerform:v14];
  replyCopy[2](replyCopy, 0, v19[5]);

  _Block_object_dispose(&v18, 8);
}

void __107__CADXPCImplementation_CADColorOperationGroup__CADDatabaseGetColorWithProviderIdentifier_externalID_reply___block_invoke(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = a1[4];
  v8 = a1[5];
  v9 = CalDatabaseCopyColorWithProviderAndExternalID();
  if (v9)
  {
    v10 = v9;
    *a4 = 1;
    v11 = [objc_alloc(MEMORY[0x277CF74C8]) initWithEntityType:29 entityID:CalColorGetUID() databaseID:a2];
    v12 = *(a1[6] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    CFRelease(v10);
  }
}

- (void)CADInternalForceStatCollection:(id)collection
{
  collectionCopy = collection;
  CADStatsCollect();
  collectionCopy[2](collectionCopy, 0);
}

- (void)CADInternalSetNextConferenceLinkRenewalToNow:(id)now
{
  v3 = MEMORY[0x277CBEAA8];
  nowCopy = now;
  date = [v3 date];
  [CADConferenceUtils setNextConferenceLinkRenewalDate:date];

  nowCopy[2](nowCopy, 0);
}

- (void)CADInternalRemoveConferenceLinkRenewalDate:(id)date
{
  dateCopy = date;
  +[CADConferenceUtils removeNextConferenceLinkRenewalDate];
  dateCopy[2](dateCopy, 0);
}

- (void)CADTestingCloseDatabase:(id)database
{
  conn = self->_conn;
  databaseCopy = database;
  [(ClientConnection *)conn closeDatabases];
  databaseCopy[2](databaseCopy, 0);
}

- (void)CADPurgeChangeTrackingReply:(id)reply
{
  replyCopy = reply;
  v5 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_22430B000, v5, OS_LOG_TYPE_DEBUG, "Purging change log.", buf, 2u);
  }

  Current = CFAbsoluteTimeGetCurrent();
  conn = self->_conn;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__CADXPCImplementation_CADCalendarToolOperationGroup__CADPurgeChangeTrackingReply___block_invoke;
  v8[3] = &__block_descriptor_40_e344_v28__0i8__CalDatabase____CFRuntimeBase_QAQ_i__CPRecordStore___CalEventOccurrenceCache___CalScheduledTaskCache__v_v____CFDictionary_____CFDictionary__os_unfair_lock_s_I_II____CFArray_____CFString_____CFArray_ii____CFString_____CFURL_____CFString_____CFString_Qiii____opaque_pthread_mutex_t_q_56c__B____CFArray_B____CFSet_______IIiQBBBBBBB_12_B20l;
  *&v8[4] = Current;
  [(ClientConnection *)conn withAllDatabasesPerform:v8];
  replyCopy[2](replyCopy, 0);
}

- (void)CADPostSyntheticRouteHypothesis:(id)hypothesis forEventWithExternalURL:(id)l reply:(id)reply
{
  v22 = *MEMORY[0x277D85DE8];
  hypothesisCopy = hypothesis;
  lCopy = l;
  replyCopy = reply;
  v10 = +[CADSyntheticRouteHypothesizerCache sharedInstance];
  v11 = [v10 syntheticRouteHypothesizerForEventExternalURL:lCopy];
  v12 = v11;
  if (v11)
  {
    updateHandler = [v11 updateHandler];
    v14 = CADLogHandle;
    if (updateHandler)
    {
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138543362;
        v19 = lCopy;
        _os_log_impl(&dword_22430B000, v14, OS_LOG_TYPE_DEFAULT, "Posting synthetic route hypothesis for event with external url = %{public}@", &v18, 0xCu);
      }

      [v12 setCurrentCADRouteHypothesis:hypothesisCopy];
      updateHandler[2](updateHandler);
      v15 = 0;
    }

    else
    {
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
      {
        v18 = 138543618;
        v19 = lCopy;
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&dword_22430B000, v14, OS_LOG_TYPE_ERROR, "Could not post synthetic route hypothesis for event with external url because could not get update handler for synthetic route hypothesizer, event external url = %{public}@, synthetic route hypothesizer = %@", &v18, 0x16u);
      }

      v15 = 1015;
    }

    replyCopy[2](replyCopy, v15);
  }

  else
  {
    v16 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      v18 = 138543362;
      v19 = lCopy;
      _os_log_impl(&dword_22430B000, v16, OS_LOG_TYPE_ERROR, "Could not post synthetic route hypothesis for event with external url because could not get cached synthetic route hypothesizer, event external url = %{public}@", &v18, 0xCu);
    }

    replyCopy[2](replyCopy, 1015);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)CADDatabaseGetDefaultLocalCalendarWithReply:(id)reply
{
  replyCopy = reply;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__14;
  v12 = __Block_byref_object_dispose__14;
  v13 = 0;
  conn = self->_conn;
  v6 = *MEMORY[0x277CF7570];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __92__CADXPCImplementation_CADEventOperationGroup__CADDatabaseGetDefaultLocalCalendarWithReply___block_invoke;
  v7[3] = &unk_27851A408;
  v7[4] = &v8;
  [(ClientConnection *)conn withDatabaseID:v6 perform:v7];
  replyCopy[2](replyCopy, 0, v9[5]);
  [(ClientConnection *)self->_conn logAccessToObject:v9[5]];
  _Block_object_dispose(&v8, 8);
}

void __92__CADXPCImplementation_CADEventOperationGroup__CADDatabaseGetDefaultLocalCalendarWithReply___block_invoke(uint64_t a1)
{
  v2 = CalDatabaseCopyDefaultLocalCalendar();
  if (v2)
  {
    v3 = v2;
    v4 = CADEntityCopyObjectID();
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    CFRelease(v3);
  }
}

- (void)CADDatabaseGetDefaultCalendarForNewEventsInDelegateSource:(id)source withReply:(id)reply
{
  sourceCopy = source;
  conn = self->_conn;
  replyCopy = reply;
  permissionValidator = [(ClientConnection *)conn permissionValidator];
  v9 = +[CADOperationGroupUtil defaultCalendarForNewEventsInDelegateSource:withConnection:limitedAccess:](CADOperationGroupUtil, "defaultCalendarForNewEventsInDelegateSource:withConnection:limitedAccess:", sourceCopy, conn, [permissionValidator eventAccessLevel] == 1);

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1010;
  }

  replyCopy[2](replyCopy, v10, v9);

  v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  if (sourceCopy)
  {
    [v11 addObject:sourceCopy];
  }

  if (v9)
  {
    [v11 addObject:v9];
  }

  [(ClientConnection *)self->_conn logAccessToObjects:v11];
}

- (void)CADDatabaseSetDefaultCalendarForNewEvents:(id)events delegateSource:(id)source reply:(id)reply
{
  v38 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  sourceCopy = source;
  replyCopy = reply;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  if (sourceCopy)
  {
    databaseID = [eventsCopy databaseID];
    if (databaseID != [sourceCopy databaseID])
    {
      v12 = CADLogHandle;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        databaseID2 = [eventsCopy databaseID];
        databaseID3 = [sourceCopy databaseID];
        *buf = 67109376;
        v35 = databaseID2;
        v36 = 1024;
        v37 = databaseID3;
        _os_log_impl(&dword_22430B000, v12, OS_LOG_TYPE_ERROR, "Attempted to set a calendar in database %i as the default calendar for a source in database %i", buf, 0xEu);
      }

      *(v31 + 6) = 1001;
    }
  }

  conn = self->_conn;
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __111__CADXPCImplementation_CADEventOperationGroup__CADDatabaseSetDefaultCalendarForNewEvents_delegateSource_reply___block_invoke;
  v25 = &unk_27851A6D0;
  v16 = eventsCopy;
  v26 = v16;
  v29 = &v30;
  v17 = sourceCopy;
  v27 = v17;
  selfCopy = self;
  if ([(ClientConnection *)conn withDatabaseForObject:v16 perform:&v22])
  {
    v18 = *(v31 + 6);
  }

  else
  {
    v18 = 1010;
    *(v31 + 6) = 1010;
  }

  replyCopy[2](replyCopy, v18);
  v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{2, v22, v23, v24, v25}];
  v20 = v19;
  if (sourceCopy)
  {
    [v19 addObject:v17];
  }

  if (v16)
  {
    [v20 addObject:v16];
  }

  [(ClientConnection *)self->_conn logAccessToObjects:v20];

  _Block_object_dispose(&v30, 8);
  v21 = *MEMORY[0x277D85DE8];
}

void __111__CADXPCImplementation_CADEventOperationGroup__CADDatabaseSetDefaultCalendarForNewEvents_delegateSource_reply___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) entityID];
  v2 = CalDatabaseCopyCalendarWithUID();
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 40);
    if (v4)
    {
      [v4 entityID];
      v5 = CalDatabaseCopyStoreWithUID();
      if (!v5)
      {
        v6 = CADLogHandle;
        if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
        {
          v7 = *(a1 + 40);
          *buf = 138412290;
          v18 = v7;
          _os_log_impl(&dword_22430B000, v6, OS_LOG_TYPE_ERROR, "NULL store returned from CalDatabaseCopyStoreWithUID. ObjectID: [%@]", buf, 0xCu);
        }

        v8 = v3;
        goto LABEL_17;
      }
    }

    else
    {
      v5 = 0;
    }

    if ([*(*(a1 + 48) + 8) isCalendarRestricted:v3 forAction:1])
    {
      v11 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
      {
        v12 = *(a1 + 32);
        *buf = 138412290;
        v18 = v12;
        _os_log_impl(&dword_22430B000, v11, OS_LOG_TYPE_ERROR, "Calendar restricts unmanaged -> managed write action. ObjectID: [%@]", buf, 0xCu);
      }
    }

    else
    {
      v13 = MEMORY[0x277CCACA8];
      v14 = [*(*(a1 + 48) + 8) identity];
      v15 = [v13 stringWithFormat:@"EventKit (%@)", v14];
      CalDatabaseSetDefaultCalendarForNewEventsInStore();
    }

    CFRelease(v3);
    if (v5)
    {
      v8 = v5;
LABEL_17:
      CFRelease(v8);
    }
  }

  else
  {
    v9 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 138412290;
      v18 = v10;
      _os_log_impl(&dword_22430B000, v9, OS_LOG_TYPE_ERROR, "NULL calendar returned from CalDatabaseCopyCalendarWithUID. ObjectID: [%@]", buf, 0xCu);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1010;
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)CADDatabaseGetOrCreateSubscribedCalendarsSource:(id)source
{
  sourceCopy = source;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  conn = self->_conn;
  v13 = -1;
  v6 = *MEMORY[0x277CF7570];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __96__CADXPCImplementation_CADEventOperationGroup__CADDatabaseGetOrCreateSubscribedCalendarsSource___block_invoke;
  v9[3] = &unk_27851BBC8;
  v9[4] = &v14;
  v9[5] = &v10;
  if (![(ClientConnection *)conn withDatabaseID:v6 perform:v9])
  {
    *(v15 + 6) = 1007;
  }

  if (*(v11 + 6) == -1)
  {
    v8 = 0;
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277CF74C8]);
    v8 = [v7 initWithEntityType:6 entityID:*(v11 + 6) databaseID:v6];
  }

  sourceCopy[2](sourceCopy, *(v15 + 6), v8);
  [(ClientConnection *)self->_conn logAccessToObject:v8];

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
}

void __96__CADXPCImplementation_CADEventOperationGroup__CADDatabaseGetOrCreateSubscribedCalendarsSource___block_invoke(uint64_t a1)
{
  IfNeeded = CalDatabaseCopySubscribedCalendarStoreCreateIfNeeded();
  if (IfNeeded)
  {
    v3 = IfNeeded;
    *(*(*(a1 + 40) + 8) + 24) = CalEntityGetID();

    CFRelease(v3);
  }

  else
  {
    v4 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_22430B000, v4, OS_LOG_TYPE_ERROR, "Failed to get subscribed calendars source.", v5, 2u);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1015;
  }
}

- (void)CADDatabaseGetOrCreateBirthdayCalendar:(id)calendar
{
  calendarCopy = calendar;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  conn = self->_conn;
  v13 = -1;
  v6 = *MEMORY[0x277CF7570];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __87__CADXPCImplementation_CADEventOperationGroup__CADDatabaseGetOrCreateBirthdayCalendar___block_invoke;
  v9[3] = &unk_27851BBC8;
  v9[4] = &v10;
  v9[5] = &v14;
  if (![(ClientConnection *)conn withDatabaseID:v6 perform:v9])
  {
    *(v15 + 6) = 1007;
  }

  if (*(v11 + 6) == -1)
  {
    v8 = 0;
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277CF74C8]);
    v8 = [v7 initWithEntityType:1 entityID:*(v11 + 6) databaseID:v6];
  }

  calendarCopy[2](calendarCopy, *(v15 + 6), v8);
  [(ClientConnection *)self->_conn logAccessToObject:v8];

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
}

void __87__CADXPCImplementation_CADEventOperationGroup__CADDatabaseGetOrCreateBirthdayCalendar___block_invoke(uint64_t a1)
{
  v2 = CalDatabaseCopyBirthdayCalendar();
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CalCalendarGetUID();

    CFRelease(v3);
  }

  else
  {
    v4 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22430B000, v4, OS_LOG_TYPE_DEFAULT, "No birthday calendar; creating one", buf, 2u);
    }

    *(*(*(a1 + 32) + 8) + 24) = CalCalendarInsertBirthdayCalendar();
    if (*(*(*(a1 + 32) + 8) + 24) == -1)
    {
      v5 = CADLogHandle;
      if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
      {
        *v6 = 0;
        _os_log_impl(&dword_22430B000, v5, OS_LOG_TYPE_ERROR, "Unable to create birthday calendar", v6, 2u);
      }

      *(*(*(a1 + 40) + 8) + 24) = 1015;
    }
  }
}

- (void)CADDatabaseGetBirthdayCalendarEnabledWithReply:(id)reply
{
  replyCopy = reply;
  (*(reply + 2))(replyCopy, 0, +[CADBirthdayListener birthdayCalendarEnabled]);
}

- (void)CADDatabaseGetBirthdayCalendarVersionWithReply:(id)reply
{
  replyCopy = reply;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = -1;
  conn = self->_conn;
  v6 = *MEMORY[0x277CF7570];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __95__CADXPCImplementation_CADEventOperationGroup__CADDatabaseGetBirthdayCalendarVersionWithReply___block_invoke;
  v8[3] = &unk_27851A408;
  v8[4] = &v9;
  if ([(ClientConnection *)conn withDatabaseID:v6 perform:v8])
  {
    v7 = 0;
  }

  else
  {
    v7 = 1007;
  }

  replyCopy[2](replyCopy, v7, *(v10 + 6));
  _Block_object_dispose(&v9, 8);
}

uint64_t __95__CADXPCImplementation_CADEventOperationGroup__CADDatabaseGetBirthdayCalendarVersionWithReply___block_invoke(uint64_t a1)
{
  result = CalCalendarGetBirthdayCalendarVersion();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (void)CADDatabaseSetBirthdayCalendarVersion:(int)version withReply:(id)reply
{
  conn = self->_conn;
  v5 = *MEMORY[0x277CF7570];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __96__CADXPCImplementation_CADEventOperationGroup__CADDatabaseSetBirthdayCalendarVersion_withReply___block_invoke;
  v8[3] = &__block_descriptor_36_e340_v20__0i8__CalDatabase____CFRuntimeBase_QAQ_i__CPRecordStore___CalEventOccurrenceCache___CalScheduledTaskCache__v_v____CFDictionary_____CFDictionary__os_unfair_lock_s_I_II____CFArray_____CFString_____CFArray_ii____CFString_____CFURL_____CFString_____CFString_Qiii____opaque_pthread_mutex_t_q_56c__B____CFArray_B____CFSet_______IIiQBBBBBBB_12l;
  versionCopy = version;
  replyCopy = reply;
  if ([(ClientConnection *)conn withDatabaseID:v5 perform:v8])
  {
    v7 = 0;
  }

  else
  {
    v7 = 1007;
  }

  replyCopy[2](replyCopy, v7);
}

- (void)CADDatabaseGetSuggestedEventCalendarWithReply:(id)reply
{
  replyCopy = reply;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__14;
  v16 = __Block_byref_object_dispose__14;
  v17 = 0;
  permissionValidator = [(ClientConnection *)self->_conn permissionValidator];
  if (![permissionValidator canModifySuggestedEventCalendar] || !+[CADFeatureSet isSuggestionsEnabled](CADFeatureSet, "isSuggestionsEnabled"))
  {
    v9 = v19;
    v10 = 1013;
LABEL_6:
    *(v9 + 6) = v10;
    goto LABEL_7;
  }

  conn = self->_conn;
  v7 = *MEMORY[0x277CF7570];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __94__CADXPCImplementation_CADEventOperationGroup__CADDatabaseGetSuggestedEventCalendarWithReply___block_invoke;
  v11[3] = &unk_27851BBC8;
  v11[4] = &v18;
  v11[5] = &v12;
  v8 = [(ClientConnection *)conn withDatabaseID:v7 perform:v11];
  v9 = v19;
  if (!v8)
  {
    v10 = 1007;
    goto LABEL_6;
  }

  v10 = *(v19 + 6);
LABEL_7:
  replyCopy[2](replyCopy, v10, v13[5]);
  [(ClientConnection *)self->_conn logAccessToObject:v13[5]];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
}

void __94__CADXPCImplementation_CADEventOperationGroup__CADDatabaseGetSuggestedEventCalendarWithReply___block_invoke(uint64_t a1)
{
  v2 = CalDatabaseCopySuggestionsCalendar();
  if (v2)
  {
    v3 = v2;
    v4 = CADEntityCopyObjectID();
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      *(*(*(a1 + 32) + 8) + 24) = 1010;
    }

    CFRelease(v3);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1010;
  }
}

- (void)CADDatabaseGetNaturalLanguageSuggestedEventCalendarWithReply:(id)reply
{
  replyCopy = reply;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__14;
  v16 = __Block_byref_object_dispose__14;
  v17 = 0;
  permissionValidator = [(ClientConnection *)self->_conn permissionValidator];
  if (![permissionValidator canModifySuggestedEventCalendar] || !+[CADFeatureSet isSuggestionsEnabled](CADFeatureSet, "isSuggestionsEnabled"))
  {
    v9 = v19;
    v10 = 1013;
LABEL_6:
    *(v9 + 6) = v10;
    goto LABEL_7;
  }

  conn = self->_conn;
  v7 = *MEMORY[0x277CF7570];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __109__CADXPCImplementation_CADEventOperationGroup__CADDatabaseGetNaturalLanguageSuggestedEventCalendarWithReply___block_invoke;
  v11[3] = &unk_27851BBC8;
  v11[4] = &v18;
  v11[5] = &v12;
  v8 = [(ClientConnection *)conn withDatabaseID:v7 perform:v11];
  v9 = v19;
  if (!v8)
  {
    v10 = 1007;
    goto LABEL_6;
  }

  v10 = *(v19 + 6);
LABEL_7:
  replyCopy[2](replyCopy, v10, v13[5]);
  [(ClientConnection *)self->_conn logAccessToObject:v13[5]];

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
}

void __109__CADXPCImplementation_CADEventOperationGroup__CADDatabaseGetNaturalLanguageSuggestedEventCalendarWithReply___block_invoke(uint64_t a1)
{
  v2 = CalDatabaseCopyNaturalLanguageSuggestionsCalendar();
  if (v2)
  {
    v3 = v2;
    v4 = CADEntityCopyObjectID();
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      *(*(*(a1 + 32) + 8) + 24) = 1010;
    }

    CFRelease(v3);
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1010;
  }
}

- (void)CADDatabaseInsertSuggestedEventCalendarWithReply:(id)reply
{
  replyCopy = reply;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (![(CADXPCImplementation *)self _CADDatabaseCanModifySuggestedEventCalendar])
  {
    v8 = v12;
    v9 = 1013;
LABEL_6:
    *(v8 + 6) = v9;
    goto LABEL_7;
  }

  conn = self->_conn;
  v6 = *MEMORY[0x277CF7570];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __97__CADXPCImplementation_CADEventOperationGroup__CADDatabaseInsertSuggestedEventCalendarWithReply___block_invoke;
  v10[3] = &unk_27851A408;
  v10[4] = &v11;
  v7 = [(ClientConnection *)conn withDatabaseID:v6 perform:v10];
  v8 = v12;
  if (!v7)
  {
    v9 = 1007;
    goto LABEL_6;
  }

  v9 = *(v12 + 6);
LABEL_7:
  replyCopy[2](replyCopy, v9);
  _Block_object_dispose(&v11, 8);
}

void __97__CADXPCImplementation_CADEventOperationGroup__CADDatabaseInsertSuggestedEventCalendarWithReply___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = CalDatabaseCopySuggestionsCalendar();
  v6 = CalDatabaseCopyNaturalLanguageSuggestionsCalendar();
  v7 = v6;
  if (v5 && v6)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1020;
  }

  else if (!v5)
  {
    CalDatabaseInsertSuggestionsCalendar();
    if (v7)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  CFRelease(v5);
  if (v7)
  {
LABEL_6:

    CFRelease(v7);
    return;
  }

LABEL_10:

  MEMORY[0x282147E20](a3);
}

- (void)CADDatabaseRemoveSuggestedEventCalendarWithReply:(id)reply
{
  replyCopy = reply;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (![(CADXPCImplementation *)self _CADDatabaseCanModifySuggestedEventCalendar])
  {
    v8 = v12;
    v9 = 1013;
LABEL_6:
    *(v8 + 6) = v9;
    goto LABEL_7;
  }

  conn = self->_conn;
  v6 = *MEMORY[0x277CF7570];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __97__CADXPCImplementation_CADEventOperationGroup__CADDatabaseRemoveSuggestedEventCalendarWithReply___block_invoke;
  v10[3] = &unk_27851A408;
  v10[4] = &v11;
  v7 = [(ClientConnection *)conn withDatabaseID:v6 perform:v10];
  v8 = v12;
  if (!v7)
  {
    v9 = 1007;
    goto LABEL_6;
  }

  v9 = *(v12 + 6);
LABEL_7:
  replyCopy[2](replyCopy, v9);
  _Block_object_dispose(&v11, 8);
}

void __97__CADXPCImplementation_CADEventOperationGroup__CADDatabaseRemoveSuggestedEventCalendarWithReply___block_invoke(uint64_t a1)
{
  v2 = CalDatabaseCopySuggestionsCalendar();
  v3 = CalDatabaseCopyNaturalLanguageSuggestionsCalendar();
  if (v2 | v3)
  {
    v4 = v3;
    if (v2)
    {
      CalDatabaseRemoveSuggestionsCalendar();
      CFRelease(v2);
    }

    if (v4)
    {
      CalDatabaseRemoveNaturalLanguageSuggestionsCalendar();

      CFRelease(v4);
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1012;
  }
}

- (void)CADDatabaseGetCreatorTeamIdentifierForEventWithObjectID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__14;
  v22 = __Block_byref_object_dispose__14;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  conn = self->_conn;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __110__CADXPCImplementation_CADEventOperationGroup__CADDatabaseGetCreatorTeamIdentifierForEventWithObjectID_reply___block_invoke;
  v10[3] = &unk_27851A7F0;
  v9 = dCopy;
  v11 = v9;
  v12 = &v18;
  v13 = &v14;
  [(ClientConnection *)conn withDatabaseForObject:v9 perform:v10];
  replyCopy[2](replyCopy, *(v15 + 6), v19[5]);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
}

void __110__CADXPCImplementation_CADEventOperationGroup__CADDatabaseGetCreatorTeamIdentifierForEventWithObjectID_reply___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x22AA4B950](a3, [*(a1 + 32) entityID]);
  if (v4)
  {
    v5 = v4;
    v6 = CalEventCopyCreatorTeamIdentityString();
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    CFRelease(v5);
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 1008;
  }
}

- (void)CADDatabaseIsCurrentProcessCreatorOfEventWithObjectID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  databaseInitializationOptions = [(ClientConnection *)self->_conn databaseInitializationOptions];
  remoteClientIdentity = [databaseInitializationOptions remoteClientIdentity];
  teamIdentifier = [remoteClientIdentity teamIdentifier];

  if (teamIdentifier || (-[ClientConnection identity](self->_conn, "identity"), v11 = objc_claimAutoreleasedReturnValue(), [v11 teamIdentifier], teamIdentifier = objc_claimAutoreleasedReturnValue(), v11, teamIdentifier))
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__14;
    v23 = __Block_byref_object_dispose__14;
    v24 = 0;
    conn = self->_conn;
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __108__CADXPCImplementation_CADEventOperationGroup__CADDatabaseIsCurrentProcessCreatorOfEventWithObjectID_reply___block_invoke;
    v16 = &unk_27851B778;
    v17 = dCopy;
    v18 = &v19;
    [(ClientConnection *)conn withDatabaseForObject:v17 perform:&v13];
    replyCopy[2](replyCopy, [teamIdentifier isEqual:{v20[5], v13, v14, v15, v16}]);

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    replyCopy[2](replyCopy, 0);
  }
}

void __108__CADXPCImplementation_CADEventOperationGroup__CADDatabaseIsCurrentProcessCreatorOfEventWithObjectID_reply___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x22AA4B950](a3, [*(a1 + 32) entityID]);
  if (v4)
  {
    v5 = v4;
    v6 = CalEventCopyCreatorTeamIdentityString();
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    CFRelease(v5);
  }
}

- (void)CADDatabaseGetEventWithEventIdentifier:(id)identifier reply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__14;
  v24 = __Block_byref_object_dispose__14;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if ([(ClientConnection *)self->_conn eventAccessLevel]== 2)
  {
    conn = self->_conn;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __93__CADXPCImplementation_CADEventOperationGroup__CADDatabaseGetEventWithEventIdentifier_reply___block_invoke;
    v11[3] = &unk_27851A8D8;
    v12 = identifierCopy;
    selfCopy = self;
    v14 = &v16;
    v15 = &v20;
    [(ClientConnection *)conn withAllDatabasesPerform:v11];
  }

  if (v21[5])
  {
    v9 = 0;
  }

  else
  {
    v9 = 1010;
  }

  if (*(v17 + 24))
  {
    v10 = 1013;
  }

  else
  {
    v10 = v9;
  }

  replyCopy[2](replyCopy, v10);
  [(ClientConnection *)self->_conn logAccessToObject:v21[5]];
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
}

void __93__CADXPCImplementation_CADEventOperationGroup__CADDatabaseGetEventWithEventIdentifier_reply___block_invoke(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1[4];
  v7 = CalDatabaseCopyEventWithPublicID();
  if (v7)
  {
    v8 = v7;
    if ([*(a1[5] + 8) isCalendarItemRestricted:v7 forAction:0])
    {
      *(*(a1[6] + 8) + 24) = 1;
    }

    else
    {
      v9 = CADEntityCopyObjectID();
      v10 = *(a1[7] + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }

    if (*(*(a1[7] + 8) + 40))
    {
      *a4 = 1;
    }

    CFRelease(v8);
  }
}

- (void)CADDatabaseGetEventWithUniqueID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__14;
  v25 = __Block_byref_object_dispose__14;
  v26 = 0;
  conn = self->_conn;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __86__CADXPCImplementation_CADEventOperationGroup__CADDatabaseGetEventWithUniqueID_reply___block_invoke;
  v16 = &unk_27851A8D8;
  v9 = dCopy;
  v17 = v9;
  selfCopy = self;
  v19 = &v27;
  v20 = &v21;
  [(ClientConnection *)conn withAllDatabasesPerform:&v13];
  v10 = v22;
  v11 = v22[5];
  if (v11)
  {
    v12 = *(v28 + 6);
  }

  else
  {
    v12 = 1010;
    *(v28 + 6) = 1010;
    v11 = v10[5];
  }

  replyCopy[2](replyCopy, v12, v11);
  [(ClientConnection *)self->_conn logAccessToObject:v22[5], v13, v14, v15, v16];

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
}

void __86__CADXPCImplementation_CADEventOperationGroup__CADDatabaseGetEventWithUniqueID_reply___block_invoke(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1[4];
  v7 = CalDatabaseCopyEventWithUniqueIdentifierInStore();
  if (v7)
  {
    v8 = v7;
    if ([*(a1[5] + 8) isCalendarItemRestricted:v7 forAction:0])
    {
      *(*(a1[6] + 8) + 24) = 1013;
    }

    else
    {
      v9 = CADEntityCopyObjectID();
      v10 = *(a1[7] + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      if (*(*(a1[7] + 8) + 40))
      {
        *a4 = 1;
      }
    }

    CFRelease(v8);
  }
}

- (void)CADDatabaseGetAllEventsWithUniqueID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v8 = objc_opt_new();
  conn = self->_conn;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __90__CADXPCImplementation_CADEventOperationGroup__CADDatabaseGetAllEventsWithUniqueID_reply___block_invoke;
  v15 = &unk_27851BC10;
  v10 = dCopy;
  v19 = &v20;
  v16 = v10;
  selfCopy = self;
  v11 = v8;
  v18 = v11;
  [(ClientConnection *)conn withAllDatabasesPerform:&v12];
  replyCopy[2](replyCopy, *(v21 + 6), v11);
  [(ClientConnection *)self->_conn logAccessToObjects:v11, v12, v13, v14, v15];

  _Block_object_dispose(&v20, 8);
}

void __90__CADXPCImplementation_CADEventOperationGroup__CADDatabaseGetAllEventsWithUniqueID_reply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = CalDatabaseCopyAllEventsWithUniqueIdentifierInStore();
  if (v3)
  {
    v4 = v3;
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
        if (ValueAtIndex && ([*(*(a1 + 40) + 8) isCalendarItemRestricted:ValueAtIndex forAction:0] & 1) == 0)
        {
          v9 = CADEntityCopyObjectID();
          if (v9)
          {
            [*(a1 + 48) addObject:v9];
          }
        }
      }
    }

    CFRelease(v4);
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1007;
  }
}

- (void)CADDatabaseCanModifySuggestedEventCalendar:(id)calendar
{
  calendarCopy = calendar;
  (*(calendar + 2))(calendarCopy, 0, [(CADXPCImplementation *)self _CADDatabaseCanModifySuggestedEventCalendar]);
}

- (void)CADDatabaseGetSourceIdentifierForEventWithObjectID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__14;
  v23 = __Block_byref_object_dispose__14;
  v24 = 0;
  if ([dCopy isTemporary])
  {
    v8 = [CADOperationGroupUtil defaultCalendarForNewEventsInDelegateSource:0 withConnection:self->_conn limitedAccess:0];
    conn = self->_conn;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __105__CADXPCImplementation_CADEventOperationGroup__CADDatabaseGetSourceIdentifierForEventWithObjectID_reply___block_invoke;
    v16[3] = &unk_27851B778;
    v10 = v8;
    v17 = v10;
    v18 = &v19;
    LOBYTE(conn) = [(ClientConnection *)conn withDatabaseForObject:v10 perform:v16];

    if ((conn & 1) == 0)
    {
LABEL_3:
      v11 = 1010;
      goto LABEL_8;
    }
  }

  else
  {
    v12 = self->_conn;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __105__CADXPCImplementation_CADEventOperationGroup__CADDatabaseGetSourceIdentifierForEventWithObjectID_reply___block_invoke_2;
    v13[3] = &unk_27851B778;
    v14 = dCopy;
    v15 = &v19;
    LODWORD(v12) = [(ClientConnection *)v12 withDatabaseForObject:v14 perform:v13];

    if (!v12)
    {
      goto LABEL_3;
    }
  }

  if (v20[5])
  {
    v11 = 0;
  }

  else
  {
    v11 = 1010;
  }

LABEL_8:
  replyCopy[2](replyCopy, v11, v20[5]);
  _Block_object_dispose(&v19, 8);
}

void __105__CADXPCImplementation_CADEventOperationGroup__CADDatabaseGetSourceIdentifierForEventWithObjectID_reply___block_invoke(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3)
{
  v4 = CADCopyEntityInDatabase(a3, *(a1 + 32));
  if (v4)
  {
    v5 = v4;
    v6 = CalCalendarCopyStore();
    if (v6)
    {
      v7 = v6;
      v8 = CalStoreCopyUUID();
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      CFRelease(v7);
    }

    CFRelease(v5);
  }
}

void __105__CADXPCImplementation_CADEventOperationGroup__CADDatabaseGetSourceIdentifierForEventWithObjectID_reply___block_invoke_2(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3)
{
  v4 = CADCopyEntityInDatabase(a3, *(a1 + 32));
  if (v4)
  {
    v5 = v4;
    v6 = CalCalendarItemCopyCalendar();
    if (v6)
    {
      v7 = v6;
      v8 = CalCalendarCopyStore();
      if (v8)
      {
        v9 = v8;
        v10 = CalStoreCopyUUID();
        v11 = *(*(a1 + 40) + 8);
        v12 = *(v11 + 40);
        *(v11 + 40) = v10;

        CFRelease(v9);
      }

      CFRelease(v7);
    }

    CFRelease(v5);
  }
}

- (void)CADOccurrenceCacheGetOccurrenceCountsForCalendars:(id)calendars reply:(id)reply
{
  calendarsCopy = calendars;
  replyCopy = reply;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__14;
  v19 = __Block_byref_object_dispose__14;
  v20 = 0;
  conn = self->_conn;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __104__CADXPCImplementation_CADEventOperationGroup__CADOccurrenceCacheGetOccurrenceCountsForCalendars_reply___block_invoke;
  v11[3] = &unk_27851BC38;
  v9 = calendarsCopy;
  v12 = v9;
  selfCopy = self;
  v14 = &v15;
  if ([(ClientConnection *)conn withDatabaseForObjects:v9 perform:v11])
  {
    v10 = 0;
  }

  else
  {
    v10 = 1010;
  }

  replyCopy[2](replyCopy, v10, v16[5]);
  [(ClientConnection *)self->_conn logAccessToObjects:v9];

  _Block_object_dispose(&v15, 8);
}

void __104__CADXPCImplementation_CADEventOperationGroup__CADOccurrenceCacheGetOccurrenceCountsForCalendars_reply___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x277CBEB58];
  v7 = [*(a1 + 32) valueForKey:@"entityID"];
  v17 = [v6 setWithArray:v7];

  v8 = [*(*(a1 + 40) + 8) restrictedCalendarRowIDsForAction:0 inDatabase:a4];
  [v17 minusSet:v8];

  v9 = CalDatabaseCopyEventOccurrenceCache();
  v10 = CalFilterCreateWithDatabaseShowingCalendarsWithUIDs();
  v11 = CalEventOccurrenceCacheCopyAllDaysAndOccurrenceCounts();
  CFRelease(v10);
  CFRelease(v9);
  if ([v11 count])
  {
    v12 = *(*(a1 + 48) + 8);
    if (*(v12 + 40))
    {
      v13 = CalEventOccurrenceCacheMergeCounts();
      v14 = *(*(a1 + 48) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;
    }

    else
    {
      v16 = v11;
      v15 = *(v12 + 40);
      *(v12 + 40) = v16;
    }
  }
}

- (void)CADOccurrenceCacheGetOccurrencesForCalendars:(id)calendars onDay:(id)day reply:(id)reply
{
  dayCopy = day;
  replyCopy = reply;
  calendarsCopy = calendars;
  v11 = objc_opt_new();
  conn = self->_conn;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __105__CADXPCImplementation_CADEventOperationGroup__CADOccurrenceCacheGetOccurrencesForCalendars_onDay_reply___block_invoke;
  v18[3] = &unk_278519FF8;
  v18[4] = self;
  v19 = dayCopy;
  v20 = v11;
  v13 = v11;
  v14 = dayCopy;
  if ([(ClientConnection *)conn withDatabaseForObjects:calendarsCopy perform:v18])
  {
    v15 = 0;
  }

  else
  {
    v15 = 1010;
  }

  [v13 sortWithOptions:16 usingComparator:&__block_literal_global_31];
  replyCopy[2](replyCopy, v15, v13);

  v16 = [MEMORY[0x277CBEB18] arrayWithArray:calendarsCopy];

  v17 = [v13 CalMap:&__block_literal_global_29];
  [v16 addObjectsFromArray:v17];

  [(ClientConnection *)self->_conn logAccessToObjects:v16];
}

void __105__CADXPCImplementation_CADEventOperationGroup__CADOccurrenceCacheGetOccurrencesForCalendars_onDay_reply___block_invoke(uint64_t a1, unsigned int a2, void *a3, uint64_t a4)
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEB58];
  v7 = [a3 valueForKey:@"entityID"];
  v8 = [v6 setWithArray:v7];

  v9 = [*(*(a1 + 32) + 8) restrictedCalendarRowIDsForAction:0 inDatabase:a4];
  [v8 minusSet:v9];

  v10 = CalDatabaseCopyEventOccurrenceCache();
  v11 = CalFilterCreateWithDatabaseShowingCalendarsWithUIDs();
  v12 = a1;
  [*(a1 + 40) timeIntervalSinceReferenceDate];
  cf = v11;
  v27 = v10;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = CalEventOccurrenceCacheCopyOccurrencesOnDay();
  v13 = [obj countByEnumeratingWithState:&v30 objects:v37 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v30 + 1) + 8 * i);
        v18 = [v17 objectForKeyedSubscript:@"occurrenceDate"];
        if (v18)
        {
          v19 = [v17 objectForKeyedSubscript:@"nextReminderDate"];
          v20 = objc_alloc(MEMORY[0x277CF74C8]);
          v21 = [v17 objectForKeyedSubscript:@"eventUID"];
          v22 = [v20 initWithEntityType:2 entityID:objc_msgSend(v21 databaseID:{"intValue"), a2}];

          v35 = xmmword_27851BC58;
          v36 = @"nextReminderDate";
          v34[0] = v18;
          v34[1] = v22;
          v34[2] = v19;
          if (v19)
          {
            v23 = 3;
          }

          else
          {
            v23 = 2;
          }

          v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v35 count:v23];
          [*(v12 + 48) addObject:v24];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v30 objects:v37 count:16];
    }

    while (v14);
  }

  CFRelease(cf);
  CFRelease(v27);

  v25 = *MEMORY[0x277D85DE8];
}

uint64_t __105__CADXPCImplementation_CADEventOperationGroup__CADOccurrenceCacheGetOccurrencesForCalendars_onDay_reply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 objectForKeyedSubscript:@"occurrenceDate"];
  v6 = [v4 objectForKeyedSubscript:@"occurrenceDate"];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)CADOccurrenceCacheGetOccurrenceDateOfEventWithObjectID:(id)d nearestDate:(id)date prefersForwardSearch:(BOOL)search reply:(id)reply
{
  dCopy = d;
  dateCopy = date;
  replyCopy = reply;
  conn = self->_conn;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __142__CADXPCImplementation_CADEventOperationGroup__CADOccurrenceCacheGetOccurrenceDateOfEventWithObjectID_nearestDate_prefersForwardSearch_reply___block_invoke;
  v17[3] = &unk_27851BC98;
  searchCopy = search;
  v18 = dateCopy;
  v19 = dCopy;
  selfCopy = self;
  v21 = replyCopy;
  v14 = replyCopy;
  v15 = dCopy;
  v16 = dateCopy;
  [(ClientConnection *)conn withDatabaseForObject:v15 perform:v17];
}

void __142__CADXPCImplementation_CADEventOperationGroup__CADOccurrenceCacheGetOccurrenceDateOfEventWithObjectID_nearestDate_prefersForwardSearch_reply___block_invoke(uint64_t a1)
{
  v2 = CalDatabaseCopyEventOccurrenceCache();
  v3 = CalFilterCreateWithDatabaseShowingAll();
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  v4 = *(a1 + 64);
  [*(a1 + 40) entityID];
  if (v4 == 1)
  {
    v5 = CalDatabaseCopyEventOccurrenceNearestToDatePreferringForwardSearch();
  }

  else
  {
    v5 = CalDatabaseCopyEventOccurrenceNearestToDate();
  }

  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x277CBEAA8];
    CalEventOccurrenceGetDate();
    v9 = [v7 dateWithTimeIntervalSinceReferenceDate:?];
    CFRelease(v6);
    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  v10 = v8;
  (*(*(a1 + 56) + 16))();
  if (v3)
  {
    CFRelease(v3);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  [*(*(a1 + 48) + 8) logAccessToObject:*(a1 + 40)];
}

- (void)CADOccurrenceCacheGetOccurrenceCountWithStartDate:(id)date endDate:(id)endDate reply:(id)reply
{
  dateCopy = date;
  endDateCopy = endDate;
  replyCopy = reply;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  conn = self->_conn;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __112__CADXPCImplementation_CADEventOperationGroup__CADOccurrenceCacheGetOccurrenceCountWithStartDate_endDate_reply___block_invoke;
  v14[3] = &unk_27851B910;
  v12 = dateCopy;
  v15 = v12;
  v13 = endDateCopy;
  v16 = v13;
  v17 = &v18;
  [(ClientConnection *)conn withAllDatabasesPerform:v14];
  (*(replyCopy + 2))(replyCopy, 0, *(v19 + 6));

  _Block_object_dispose(&v18, 8);
}

void __112__CADXPCImplementation_CADEventOperationGroup__CADOccurrenceCacheGetOccurrenceCountWithStartDate_endDate_reply___block_invoke(uint64_t a1)
{
  v2 = CalDatabaseCopyEventOccurrenceCache();
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  [*(a1 + 40) timeIntervalSinceReferenceDate];
  *(*(*(a1 + 48) + 8) + 24) += CalEventOccurrenceCacheCount();
  if (v2)
  {

    CFRelease(v2);
  }
}

- (void)CADOccurrenceCacheGetOccurrenceCountOrSumDurationWithStartDate:(id)date endDate:(id)endDate calendarIDs:(id)ds sumDuration:(BOOL)duration reply:(id)reply
{
  v39 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  dsCopy = ds;
  replyCopy = reply;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  [dateCopy timeIntervalSinceReferenceDate];
  v17 = v16;
  [endDateCopy timeIntervalSinceReferenceDate];
  v19 = v18;
  v20 = [dsCopy valueForKey:@"entityID"];
  v21 = v20;
  if (v20)
  {
    conn = self->_conn;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __149__CADXPCImplementation_CADEventOperationGroup__CADOccurrenceCacheGetOccurrenceCountOrSumDurationWithStartDate_endDate_calendarIDs_sumDuration_reply___block_invoke;
    v27[3] = &unk_27851BCC0;
    v29 = &v33;
    v30 = v17;
    v31 = v19;
    v28 = v20;
    durationCopy = duration;
    [(ClientConnection *)conn withAllDatabasesPerform:v27];

    v23 = 0;
    v24 = *(v34 + 6);
  }

  else
  {
    v25 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v38 = 0;
      _os_log_impl(&dword_22430B000, v25, OS_LOG_TYPE_ERROR, "Could not fetch calendars from calendar IDs: %@", buf, 0xCu);
    }

    v24 = 0;
    *(v34 + 6) = 0;
    v23 = 1001;
  }

  replyCopy[2](replyCopy, v23, v24);

  _Block_object_dispose(&v33, 8);
  v26 = *MEMORY[0x277D85DE8];
}

void __149__CADXPCImplementation_CADEventOperationGroup__CADOccurrenceCacheGetOccurrenceCountOrSumDurationWithStartDate_endDate_calendarIDs_sumDuration_reply___block_invoke(uint64_t a1)
{
  v2 = CalDatabaseCopyEventOccurrenceCache();
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 32);
    v7 = *(a1 + 64);
    *(*(*(a1 + 40) + 8) + 24) += CalEventOccurrenceCacheCountByCalendar();

    CFRelease(v3);
  }
}

- (void)CADOccurrenceCacheDoEvents:(id)events haveOccurrencesAfterDate:(id)date reply:(id)reply
{
  v39 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  dateCopy = date;
  replyCopy = reply;
  v8 = [eventsCopy count];
  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v8];
  if (v8)
  {
    v10 = MEMORY[0x277CBEC28];
    v11 = v8;
    do
    {
      [v9 addObject:{v10, dateCopy}];
      --v11;
    }

    while (v11);
  }

  v12 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v8];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v13 = eventsCopy;
  v14 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v35;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v35 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v34 + 1) + 8 * i);
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v16, dateCopy}];
        [v12 setObject:v20 forKeyedSubscript:v19];

        ++v16;
      }

      v15 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v15);
  }

  conn = self->_conn;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __106__CADXPCImplementation_CADEventOperationGroup__CADOccurrenceCacheDoEvents_haveOccurrencesAfterDate_reply___block_invoke;
  v30[3] = &unk_278519FF8;
  v31 = dateCopy;
  v32 = v12;
  v22 = v9;
  v33 = v22;
  v23 = v12;
  v24 = dateCopy;
  if ([(ClientConnection *)conn withDatabaseForObjects:v13 perform:v30])
  {
    v25 = 0;
  }

  else
  {

    v22 = 0;
    v25 = 1010;
  }

  replyCopy[2](replyCopy, v25, v22);
  [(ClientConnection *)self->_conn logAccessToObjects:v13];

  v26 = *MEMORY[0x277D85DE8];
}

void __106__CADXPCImplementation_CADEventOperationGroup__CADOccurrenceCacheDoEvents_haveOccurrencesAfterDate_reply___block_invoke(id *a1, uint64_t a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = CalDatabaseCopyEventOccurrenceCache();
  v6 = CalFilterCreateWithDatabaseShowingAll();
  [a1[4] timeIntervalSinceReferenceDate];
  v7 = [v4 valueForKey:@"entityID"];
  cf = v6;
  v20 = v5;
  HaveOccurrencesAfterDate = CalEventOccurrenceCacheDoEventsHaveOccurrencesAfterDate();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v4;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v22;
    do
    {
      v14 = 0;
      do
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = [a1[5] objectForKeyedSubscript:{*(*(&v21 + 1) + 8 * v14), cf, v20, v21}];
        v16 = [v15 unsignedIntegerValue];

        v17 = [HaveOccurrencesAfterDate objectAtIndexedSubscript:v12];
        [a1[6] setObject:v17 atIndexedSubscript:v16];

        ++v12;
        ++v14;
      }

      while (v11 != v14);
      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  CFRelease(cf);
  CFRelease(v20);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)CADOccurrencesExistInRangeForEvent:(id)event startDate:(id)date endDate:(id)endDate mustStartInInterval:(BOOL)interval timezone:(id)timezone reply:(id)reply
{
  eventCopy = event;
  dateCopy = date;
  endDateCopy = endDate;
  timezoneCopy = timezone;
  replyCopy = reply;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  conn = self->_conn;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __136__CADXPCImplementation_CADEventOperationGroup__CADOccurrencesExistInRangeForEvent_startDate_endDate_mustStartInInterval_timezone_reply___block_invoke;
  v25[3] = &unk_27851BCE8;
  v19 = timezoneCopy;
  v26 = v19;
  v20 = dateCopy;
  v27 = v20;
  v21 = endDateCopy;
  v28 = v21;
  v22 = eventCopy;
  v29 = v22;
  v30 = &v37;
  v31 = &v33;
  intervalCopy = interval;
  if ([(ClientConnection *)conn withDatabaseForObject:v22 perform:v25])
  {
    v23 = *(v38 + 6);
  }

  else
  {
    v23 = 1010;
    *(v38 + 6) = 1010;
  }

  replyCopy[2](replyCopy, v23, *(v34 + 24));
  [(ClientConnection *)self->_conn logAccessToObject:v22];

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
}

void __136__CADXPCImplementation_CADEventOperationGroup__CADOccurrencesExistInRangeForEvent_startDate_endDate_mustStartInInterval_timezone_reply___block_invoke(uint64_t a1, uint64_t a2, os_unfair_lock_s *a3)
{
  v5 = *(a1 + 32);
  [*(a1 + 40) timeIntervalSinceReferenceDate];
  CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
  [*(a1 + 48) timeIntervalSinceReferenceDate];
  CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
  v6 = CADCopyEntityInDatabase(a3, *(a1 + 56));
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 80);
    *(*(*(a1 + 72) + 8) + 24) = CalEventOccurrencesExistForEventInDateRange() != 0;

    CFRelease(v7);
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 1010;
  }
}

- (void)CADDatabaseShouldPermitOrganizerEmailFromJunkChecks:(id)checks reply:(id)reply
{
  checksCopy = checks;
  replyCopy = reply;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  conn = self->_conn;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __106__CADXPCImplementation_CADEventOperationGroup__CADDatabaseShouldPermitOrganizerEmailFromJunkChecks_reply___block_invoke;
  v9[3] = &unk_27851BD10;
  v9[4] = &v10;
  v9[5] = checksCopy;
  [(ClientConnection *)conn withAllDatabasesPerform:v9];
  (*(replyCopy + 2))(replyCopy, 0, *(v11 + 24));
  _Block_object_dispose(&v10, 8);
}

uint64_t __106__CADXPCImplementation_CADEventOperationGroup__CADDatabaseShouldPermitOrganizerEmailFromJunkChecks_reply___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 40);
  result = CalHasCurrentUserInvitedAttendeeWithEmail();
  if (result & 1) != 0 || (v8 = *(a1 + 40), result = CalHasCurrentUserRespondedPositivelyToInvitationsFromOrganizerWithEmail(), (result) || (v9 = *(a1 + 40), result = CalHasCurrentUserRepondedPositivelyToInvitationsWithAttendeeWithEmail(), result))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)CADDatabaseShouldPermitOrganizerPhoneNumberFromJunkChecks:(id)checks reply:(id)reply
{
  checksCopy = checks;
  replyCopy = reply;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  conn = self->_conn;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __112__CADXPCImplementation_CADEventOperationGroup__CADDatabaseShouldPermitOrganizerPhoneNumberFromJunkChecks_reply___block_invoke;
  v9[3] = &unk_27851BD10;
  v9[4] = &v10;
  v9[5] = checksCopy;
  [(ClientConnection *)conn withAllDatabasesPerform:v9];
  (*(replyCopy + 2))(replyCopy, 0, *(v11 + 24));
  _Block_object_dispose(&v10, 8);
}

uint64_t __112__CADXPCImplementation_CADEventOperationGroup__CADDatabaseShouldPermitOrganizerPhoneNumberFromJunkChecks_reply___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 40);
  result = CalHasCurrentUserInvitedAttendeeWithPhoneNumber();
  if (result & 1) != 0 || (v8 = *(a1 + 40), result = CalHasCurrentUserRespondedPositivelyToInvitationsFromOrganizerWithPhoneNumber(), (result) || (v9 = *(a1 + 40), result = CalHasCurrentUserRepondedPositivelyToInvitationsWithAttendeeWithPhoneNumber(), result))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (void)CADDatabaseGetAttachmentWithUUID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__14;
  v19 = __Block_byref_object_dispose__14;
  v20 = 0;
  if (dCopy)
  {
    if ([(ClientConnection *)self->_conn eventAccessLevel])
    {
      conn = self->_conn;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __87__CADXPCImplementation_CADEventOperationGroup__CADDatabaseGetAttachmentWithUUID_reply___block_invoke;
      v10[3] = &unk_27851A8D8;
      v11 = dCopy;
      selfCopy = self;
      v13 = &v21;
      v14 = &v15;
      [(ClientConnection *)conn withAllDatabasesPerform:v10];
      if (!v16[5])
      {
        *(v22 + 6) = 1010;
      }

      v9 = *(v22 + 6);
    }

    else
    {
      v9 = 1013;
      *(v22 + 6) = 1013;
    }
  }

  else
  {
    v9 = 1001;
    v24 = 1001;
  }

  replyCopy[2](replyCopy, v9, v16[5]);
  [(ClientConnection *)self->_conn logAccessToObject:v16[5]];
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
}

void __87__CADXPCImplementation_CADEventOperationGroup__CADDatabaseGetAttachmentWithUUID_reply___block_invoke(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1[4];
  v7 = CalDatabaseCopyAttachmentWithUUID();
  if (v7)
  {
    v8 = v7;
    *a4 = 1;
    if (CADEntityIsInRestrictedStore(*(a1[5] + 8), v7, 0))
    {
      *(*(a1[6] + 8) + 24) = 1013;
    }

    else
    {
      v9 = CADEntityCopyObjectID();
      v10 = *(a1[7] + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }

    CFRelease(v8);
  }
}

- (void)CADDatabaseLoadEventsInCalendar:(id)calendar reply:(id)reply
{
  calendarCopy = calendar;
  replyCopy = reply;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__14;
  v26 = __Block_byref_object_dispose__14;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__14;
  v20 = __Block_byref_object_dispose__14;
  v21 = 0;
  conn = self->_conn;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __86__CADXPCImplementation_CADEventOperationGroup__CADDatabaseLoadEventsInCalendar_reply___block_invoke;
  v11[3] = &unk_27851BD38;
  v9 = calendarCopy;
  v12 = v9;
  v13 = &v28;
  v14 = &v16;
  v15 = &v22;
  if ([(ClientConnection *)conn withDatabaseForObject:v9 perform:v11])
  {
    v10 = *(v29 + 6);
  }

  else
  {
    v10 = 1010;
    *(v29 + 6) = 1010;
  }

  replyCopy[2](replyCopy, v10, v23[5], v17[5]);

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);
}

void __86__CADXPCImplementation_CADEventOperationGroup__CADDatabaseLoadEventsInCalendar_reply___block_invoke(uint64_t a1)
{
  [*(a1 + 32) entityID];
  v2 = CalDatabaseCopyCalendarWithUID();
  if (v2)
  {
    v3 = v2;
    CalEventCopyRowIDsAndUniqueIdentifiersInCalendar();
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;

    *(*(*(a1 + 40) + 8) + 24) = 1015;
    CFRelease(v3);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1010;
  }
}

- (void)CADDatabaseGetTTLLocationAuthorizationStatus:(id)status
{
  v3 = MEMORY[0x277CF77F0];
  statusCopy = status;
  ttlLocationStatus = [v3 ttlLocationStatus];
  [CADXPCImplementation monitorLocationAuthorizationStatusChanges:ttlLocationStatus];
  statusCopy[2](statusCopy, 0, ttlLocationStatus);
}

+ (void)monitorLocationAuthorizationStatusChanges:(unint64_t)changes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__CADXPCImplementation_CADEventOperationGroup__monitorLocationAuthorizationStatusChanges___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = changes;
  if (monitorLocationAuthorizationStatusChanges__onceToken != -1)
  {
    dispatch_once(&monitorLocationAuthorizationStatusChanges__onceToken, block);
  }
}

void __90__CADXPCImplementation_CADEventOperationGroup__monitorLocationAuthorizationStatusChanges___block_invoke(uint64_t a1)
{
  monitorLocationAuthorizationStatusChanges__lastStatus = *(a1 + 32);
  v1 = CADLogHandle;
  if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_22430B000, v1, OS_LOG_TYPE_INFO, "Listening for changes in location authorization status", v5, 2u);
  }

  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = [v2 addObserverForName:*MEMORY[0x277CF7748] object:0 queue:0 usingBlock:&__block_literal_global_44_0];
  v4 = monitorLocationAuthorizationStatusChanges__receipt;
  monitorLocationAuthorizationStatusChanges__receipt = v3;
}

void __90__CADXPCImplementation_CADEventOperationGroup__monitorLocationAuthorizationStatusChanges___block_invoke_41()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CF77F0] ttlLocationStatus];
  if (v0 != monitorLocationAuthorizationStatusChanges__lastStatus)
  {
    v1 = v0;
    v2 = CADLogHandle;
    if (os_log_type_enabled(CADLogHandle, OS_LOG_TYPE_INFO))
    {
      v5 = 134218240;
      v6 = monitorLocationAuthorizationStatusChanges__lastStatus;
      v7 = 2048;
      v8 = v1;
      _os_log_impl(&dword_22430B000, v2, OS_LOG_TYPE_INFO, "Location authorization status changed from %lu to %lu", &v5, 0x16u);
    }

    monitorLocationAuthorizationStatusChanges__lastStatus = v1;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CADTTLLocationAuthorizationStatusChangedNotification", 0, 0, 1u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

@end