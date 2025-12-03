@interface NNMKDeviceSyncRegistry
- (BOOL)containsSyncedMessageForMessageWithId:(id)id;
- (BOOL)hasMailboxSyncedActive;
- (NNMKDeviceSyncRegistry)initWithPath:(id)path;
- (id)_attachmentDirectory;
- (id)_idsIdentifiersForObjectId:(id)id type:(id)type;
- (id)_mailboxFromCurrentRowInStatement:(sqlite3_stmt *)statement;
- (id)_selectMailboxesWhere:(id)where blockForBinding:(id)binding;
- (id)_selectSyncedAccountsWhere:(id)where blockForBinding:(id)binding;
- (id)_selectSyncedMessagesIdsWhere:(id)where count:(unint64_t)count blockForBinding:(id)binding;
- (id)_selectSyncedMessagesWhere:(id)where blockForBinding:(id)binding;
- (id)_ungroupGroupedValue:(id)value;
- (id)_urlForAttachmentsWithComposedMessageId:(id)id;
- (id)accountIdForUsername:(id)username;
- (id)allSyncedAccountsKeyedByAccountId;
- (id)attachmentsForComposedMessageId:(id)id;
- (id)attachmentsFromURL:(id)l;
- (id)datesForIDSIdentifiersScheduledToBeResent;
- (id)mailboxIdForDeletedMessageId:(id)id;
- (id)mailboxWithId:(id)id;
- (id)mailboxesForAccountId:(id)id;
- (id)messageIdForSanitizedMessageId:(id)id;
- (id)objectIdsForIDSIdentifierNotYetAckd:(id)ackd type:(id *)type resendInterval:(unint64_t *)interval;
- (id)objectIdsForType:(id)type;
- (id)oldestDateReceivedForMailboxId:(id)id;
- (id)pendingComposedMessageIds;
- (id)syncedAccountForAccountWithId:(id)id;
- (id)syncedAccountIdsResendRequested;
- (id)syncedMessageForMessageWithId:(id)id;
- (id)syncedMessagesForConversationWithId:(id)id;
- (id)syncedMessagesKeyedByMessageIdAfterDateReceived:(id)received mailboxId:(id)id;
- (id)typeForIDSIdentifierNotYetAckd:(id)ackd;
- (int64_t)progressForComposedMessageWithId:(id)id;
- (unint64_t)accountSourceTypeForAccountId:(id)id;
- (unint64_t)accountSourceTypeForMailboxId:(id)id;
- (unint64_t)accountSourceTypeForMessageId:(id)id;
- (unint64_t)syncVersionForMailboxId:(id)id;
- (unint64_t)syncedMessagesCountForMailboxId:(id)id;
- (void)_deleteAllObjectsFromTable:(id)table;
- (void)_deleteAllObjectsFromTable:(id)table mailboxId:(id)id;
- (void)_insureTransactionFor:(id)for;
- (void)_loadAllControlValues;
- (void)_removeAllPendingAttachments;
- (void)_removeAttachmentsForComposedMessageId:(id)id;
- (void)_removeControlValueForKey:(id)key;
- (void)_setControlValueForKey:(id)key withBlockForBinding:(id)binding;
- (void)addObjectIds:(id)ids type:(id)type resendInterval:(unint64_t)interval forIDSIdentifierNotYetAckd:(id)ackd;
- (void)addOrUpdateMailbox:(id)mailbox;
- (void)addOrUpdateSyncedAccount:(id)account;
- (void)addOrUpdateSyncedMessage:(id)message;
- (void)beginUpdates;
- (void)cleanUpForFullSyncWithMailbox:(id)mailbox;
- (void)cleanUpForInitialSync;
- (void)datesForIDSIdentifiersScheduledToBeResent;
- (void)deleteAllMailboxes;
- (void)deleteMailboxWithId:(id)id startTransaction:(BOOL)transaction;
- (void)deleteObjectId:(id)id fromIDSIdentifiersNotYetAckdOfType:(id)type;
- (void)endUpdates;
- (void)hasMailboxSyncedActive;
- (void)incrementSyncVersionForMailboxId:(id)id;
- (void)insertDeletedMessageId:(id)id mailboxId:(id)mailboxId;
- (void)markIDSIdentifierAsAckd:(id)ackd;
- (void)pendingComposedMessageIds;
- (void)prepareIDSIdentifiersForResendForErrorCode:(int64_t)code;
- (void)removePendingComposedMessages;
- (void)removeProgressForComposedMessageWithId:(id)id;
- (void)removeSyncedAccountForAccountWithId:(id)id;
- (void)removeSyncedMessageForMessageWithId:(id)id;
- (void)removeSyncedMessagesBeforeDateReceived:(id)received mailbox:(id)mailbox;
- (void)rescheduleIDSIdentifier:(id)identifier resendInterval:(unint64_t)interval withDateToResend:(id)resend errorCode:(int64_t)code;
- (void)resetSyncRequestedFromMailboxes;
- (void)saveAttachmentsForComposedMessageId:(id)id temporaryURL:(id)l;
- (void)setCurrentDatabaseSchemaVersion:(unint64_t)version;
- (void)setDeviceScreenScale:(double)scale;
- (void)setDeviceScreenWidth:(double)width;
- (void)setDisconnectedSince:(id)since;
- (void)setFullSyncVersion:(unint64_t)version;
- (void)setIsMessagesSyncSuspendedByConnectivity:(BOOL)connectivity;
- (void)setOrganizeByThread:(BOOL)thread;
- (void)setProgress:(int64_t)progress forComposedMessageWithId:(id)id;
- (void)setProtectedContentChannelSupported:(BOOL)supported;
- (void)setSupportsWebKit:(id)kit;
- (void)storePendingComposedMessage:(id)message;
- (void)syncedAccountIdsResendRequested;
- (void)updateSourceType:(unint64_t)type forAccountId:(id)id;
- (void)updateSyncActiveForMailbox:(id)mailbox;
- (void)updateSyncEnabledForMailbox:(id)mailbox;
- (void)updateSyncRequestedForMailbox:(id)mailbox;
- (void)updateSyncVersion:(unint64_t)version forMailboxId:(id)id;
@end

@implementation NNMKDeviceSyncRegistry

- (NNMKDeviceSyncRegistry)initWithPath:(id)path
{
  v43 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v36.receiver = self;
  v36.super_class = NNMKDeviceSyncRegistry;
  v5 = [(NNMKDeviceSyncRegistry *)&v36 init];
  if (!v5)
  {
    goto LABEL_29;
  }

  v35 = 0;
  v6 = [[NNMKSQLiteConnection alloc] initWithPath:pathCopy errorCode:&v35];
  p_database = &v5->_database;
  database = v5->_database;
  v5->_database = v6;

  v9 = objc_opt_new();
  pendingComposedMessages = v5->_pendingComposedMessages;
  v5->_pendingComposedMessages = v9;

  v11 = [NNMKSQLiteConnection errorCodeMeansCorruptedDatabase:v35];
  v12 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25B19F000, v12, OS_LOG_TYPE_DEFAULT, "Initializing database...", buf, 2u);
  }

  if (v11)
  {
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [NNMKDeviceSyncRegistry initWithPath:];
    }

    goto LABEL_15;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v14 = [defaultManager fileExistsAtPath:pathCopy isDirectory:0];

  if (!v14)
  {
LABEL_15:
    v5->_recreatedFromScratch = 1;
    v22 = v5->_database;
    v5->_database = 0;

    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager2 removeItemAtPath:pathCopy error:0];

    v24 = [[NNMKSQLiteConnection alloc] initWithPath:pathCopy errorCode:&v35];
    v25 = v5->_database;
    v5->_database = v24;

    if ([NNMKSQLiteConnection errorCodeMeansCorruptedDatabase:v35]&& os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [NNMKDeviceSyncRegistry initWithPath:];
    }

    goto LABEL_18;
  }

  if ([*p_database tableExists:@"CONTROL" inDatabase:0])
  {
    [(NNMKDeviceSyncRegistry *)v5 _loadAllControlValues];
    currentDatabaseSchemaVersion = [(NNMKDeviceSyncRegistry *)v5 currentDatabaseSchemaVersion];
    v16 = qword_28144D620;
    v17 = os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT);
    if (currentDatabaseSchemaVersion != 36)
    {
      if (v17)
      {
        v20 = v16;
        currentDatabaseSchemaVersion2 = [(NNMKDeviceSyncRegistry *)v5 currentDatabaseSchemaVersion];
        *buf = 134218240;
        v38 = currentDatabaseSchemaVersion2;
        v39 = 2048;
        v40 = 36;
        _os_log_impl(&dword_25B19F000, v20, OS_LOG_TYPE_DEFAULT, "Database from a previous version (%lu) already existed (Correct version should be %lu). Recreating...", buf, 0x16u);
      }

      goto LABEL_15;
    }

    if (v17)
    {
      v18 = v16;
      currentDatabaseSchemaVersion3 = [(NNMKDeviceSyncRegistry *)v5 currentDatabaseSchemaVersion];
      *buf = 134218496;
      v38 = 36;
      v39 = 2048;
      v40 = currentDatabaseSchemaVersion3;
      v41 = 2048;
      v42 = 1;
      _os_log_impl(&dword_25B19F000, v18, OS_LOG_TYPE_DEFAULT, "Database migration does not need to run. (Expected schema version: %lu, Current schema version: %lu, Path exist: %lu)", buf, 0x20u);
    }
  }

  v5->_recreatedFromScratch = 0;
LABEL_18:
  if (([*p_database tableExists:@"CONTROL" inDatabase:0] & 1) == 0)
  {
    v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v27 = [v26 pathForResource:@"DeviceSyncRegistryTables" ofType:@"sql"];

    v28 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v27 encoding:1 error:0];
    v29 = [(NNMKSQLiteConnection *)v5->_database executeSQL:v28];
    v30 = qword_28144D620;
    if (v29)
    {
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
      {
        [(NNMKDeviceSyncRegistry *)&v5->_database initWithPath:v30];
      }
    }

    else
    {
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B19F000, v30, OS_LOG_TYPE_DEFAULT, "Database tables created.", buf, 2u);
      }

      [(NNMKDeviceSyncRegistry *)v5 setCurrentDatabaseSchemaVersion:36];
      v31 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
      {
        fullSyncVersion = v5->_fullSyncVersion;
        *buf = 134217984;
        v38 = fullSyncVersion;
        _os_log_impl(&dword_25B19F000, v31, OS_LOG_TYPE_DEFAULT, "Restoring full sync version. %lu", buf, 0xCu);
      }

      [(NNMKDeviceSyncRegistry *)v5 setFullSyncVersion:v5->_fullSyncVersion];
    }
  }

  [(NNMKDeviceSyncRegistry *)v5 _loadAllControlValues];
LABEL_29:

  v33 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)setFullSyncVersion:(unint64_t)version
{
  self->_fullSyncVersion = version;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __45__NNMKDeviceSyncRegistry_setFullSyncVersion___block_invoke;
  v3[3] = &__block_descriptor_40_e26_v20__0__sqlite3_stmt__8i16l;
  v3[4] = version;
  [(NNMKDeviceSyncRegistry *)self _setControlValueForKey:@"kFullMessagesSyncVersionKey" withBlockForBinding:v3];
}

- (void)setSupportsWebKit:(id)kit
{
  kitCopy = kit;
  self->_supportsWebKit = kitCopy;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__NNMKDeviceSyncRegistry_setSupportsWebKit___block_invoke;
  v6[3] = &unk_279936008;
  v7 = kitCopy;
  v5 = kitCopy;
  [(NNMKDeviceSyncRegistry *)self _setControlValueForKey:@"kSupportsWebKitKey" withBlockForBinding:v6];
}

uint64_t __44__NNMKDeviceSyncRegistry_setSupportsWebKit___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 0;
  }

  return [NNMKSQLiteUtils bindBool:v6 intoStatement:a2 paramIndex:a3];
}

- (void)setCurrentDatabaseSchemaVersion:(unint64_t)version
{
  self->_currentDatabaseSchemaVersion = version;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__NNMKDeviceSyncRegistry_setCurrentDatabaseSchemaVersion___block_invoke;
  v3[3] = &__block_descriptor_40_e26_v20__0__sqlite3_stmt__8i16l;
  v3[4] = version;
  [(NNMKDeviceSyncRegistry *)self _setControlValueForKey:@"DBSchemaVersion" withBlockForBinding:v3];
}

- (void)setIsMessagesSyncSuspendedByConnectivity:(BOOL)connectivity
{
  self->_isMessagesSyncSuspendedByConnectivity = connectivity;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __67__NNMKDeviceSyncRegistry_setIsMessagesSyncSuspendedByConnectivity___block_invoke;
  v3[3] = &__block_descriptor_33_e26_v20__0__sqlite3_stmt__8i16l;
  connectivityCopy = connectivity;
  [(NNMKDeviceSyncRegistry *)self _setControlValueForKey:@"kIsMessagesSyncSuspendedByConnectivity" withBlockForBinding:v3];
}

- (void)setOrganizeByThread:(BOOL)thread
{
  self->_organizeByThread = thread;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__NNMKDeviceSyncRegistry_setOrganizeByThread___block_invoke;
  v3[3] = &__block_descriptor_33_e26_v20__0__sqlite3_stmt__8i16l;
  threadCopy = thread;
  [(NNMKDeviceSyncRegistry *)self _setControlValueForKey:@"kOrganizeByThreadKey" withBlockForBinding:v3];
}

- (void)setDeviceScreenWidth:(double)width
{
  self->_deviceScreenWidth = width;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__NNMKDeviceSyncRegistry_setDeviceScreenWidth___block_invoke;
  v3[3] = &__block_descriptor_40_e26_v20__0__sqlite3_stmt__8i16l;
  *&v3[4] = width;
  [(NNMKDeviceSyncRegistry *)self _setControlValueForKey:@"kDeviceScreenWidthKey" withBlockForBinding:v3];
}

- (void)setDeviceScreenScale:(double)scale
{
  self->_deviceScreenScale = scale;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__NNMKDeviceSyncRegistry_setDeviceScreenScale___block_invoke;
  v3[3] = &__block_descriptor_40_e26_v20__0__sqlite3_stmt__8i16l;
  *&v3[4] = scale;
  [(NNMKDeviceSyncRegistry *)self _setControlValueForKey:@"kDeviceScreenScaleKey" withBlockForBinding:v3];
}

- (void)setProtectedContentChannelSupported:(BOOL)supported
{
  self->_protectedContentChannelSupported = supported;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __62__NNMKDeviceSyncRegistry_setProtectedContentChannelSupported___block_invoke;
  v3[3] = &__block_descriptor_33_e26_v20__0__sqlite3_stmt__8i16l;
  supportedCopy = supported;
  [(NNMKDeviceSyncRegistry *)self _setControlValueForKey:@"kProtectedContentChannelSupportedKey" withBlockForBinding:v3];
}

- (void)setDisconnectedSince:(id)since
{
  sinceCopy = since;
  objc_storeStrong(&self->_disconnectedSince, since);
  if (sinceCopy)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __47__NNMKDeviceSyncRegistry_setDisconnectedSince___block_invoke;
    v6[3] = &unk_279936008;
    v7 = sinceCopy;
    [(NNMKDeviceSyncRegistry *)self _setControlValueForKey:@"kDisconnectedSinceKey" withBlockForBinding:v6];
  }

  else
  {
    [(NNMKDeviceSyncRegistry *)self _removeControlValueForKey:@"kDisconnectedSinceKey"];
  }
}

- (void)beginUpdates
{
  if ([(NNMKSQLiteConnection *)self->_database isInTransaction])
  {
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [NNMKDeviceSyncRegistry beginUpdates];
    }
  }

  else
  {
    database = self->_database;

    [(NNMKSQLiteConnection *)database beginTransaction];
  }
}

- (void)endUpdates
{
  if ([(NNMKSQLiteConnection *)self->_database isInTransaction])
  {
    database = self->_database;

    [(NNMKSQLiteConnection *)database commitTransaction];
  }

  else if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
  {
    [NNMKDeviceSyncRegistry endUpdates];
  }
}

- (void)cleanUpForFullSyncWithMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__NNMKDeviceSyncRegistry_cleanUpForFullSyncWithMailbox___block_invoke;
  v6[3] = &unk_279935CD8;
  v7 = mailboxCopy;
  selfCopy = self;
  v5 = mailboxCopy;
  [(NNMKDeviceSyncRegistry *)self _insureTransactionFor:v6];
}

void __56__NNMKDeviceSyncRegistry_cleanUpForFullSyncWithMailbox___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setSyncActive:0];
  [*(a1 + 40) updateSyncActiveForMailbox:*(a1 + 32)];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) mailboxId];
  [v2 _deleteAllObjectsFromTable:@"SYNCED_MESSAGE" mailboxId:v3];

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) mailboxId];
  [v4 _deleteAllObjectsFromTable:@"DELETED_MESSAGE" mailboxId:v5];

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) mailboxId];
  [v6 _deleteAllObjectsFromTable:@"ATTACHMENT_NOT_SYNCED" mailboxId:v7];

  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) mailboxId];
  [v8 incrementSyncVersionForMailboxId:v9];

  v10 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = v10;
    v14 = [v12 mailboxId];
    v15 = [v11 syncVersionForMailboxId:v14];
    v16 = [*(a1 + 32) mailboxId];
    v18 = 134218242;
    v19 = v15;
    v20 = 2114;
    v21 = v16;
    _os_log_impl(&dword_25B19F000, v13, OS_LOG_TYPE_DEFAULT, "Incrementing #mailbox-sync-version. %lu, %{public}@", &v18, 0x16u);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)incrementSyncVersionForMailboxId:(id)id
{
  v12 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v5 = [(NNMKDeviceSyncRegistry *)self syncVersionForMailboxId:idCopy];
  v6 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218242;
    v9 = v5;
    v10 = 2114;
    v11 = idCopy;
    _os_log_impl(&dword_25B19F000, v6, OS_LOG_TYPE_DEFAULT, "Incrementing #mailbox-sync-version. Current #mailbox-sync-version:%lu, mailbox: %{public}@", &v8, 0x16u);
  }

  [(NNMKDeviceSyncRegistry *)self updateSyncVersion:v5 + 1 forMailboxId:idCopy];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)cleanUpForInitialSync
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __47__NNMKDeviceSyncRegistry_cleanUpForInitialSync__block_invoke;
  v2[3] = &unk_279935CB0;
  v2[4] = self;
  [(NNMKDeviceSyncRegistry *)self _insureTransactionFor:v2];
}

void __47__NNMKDeviceSyncRegistry_cleanUpForInitialSync__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  v5 = *(v2 + 10);
  v6 = *(v2 + 56);
  v7 = *(v2 + 64);
  *(v2 + 48) = 0;
  *(*(a1 + 32) + 40) = 0;
  v8 = *(a1 + 32);
  v9 = v8[3];
  v10 = v6;
  [v8 _deleteAllObjectsFromTable:@"SYNCED_ACCOUNT"];
  [*(a1 + 32) _deleteAllObjectsFromTable:@"MAILBOX"];
  [*(a1 + 32) _deleteAllObjectsFromTable:@"MAILBOX_SYNC_VERSION"];
  [*(a1 + 32) _deleteAllObjectsFromTable:@"CONTROL"];
  [*(a1 + 32) _deleteAllObjectsFromTable:@"SYNCED_MESSAGE"];
  [*(a1 + 32) _deleteAllObjectsFromTable:@"DELETED_MESSAGE"];
  [*(a1 + 32) _deleteAllObjectsFromTable:@"ATTACHMENT_NOT_SYNCED"];
  [*(a1 + 32) _deleteAllObjectsFromTable:@"IDS_IDENTIFIER_NOT_YET_ACKD"];
  [*(a1 + 32) _deleteAllObjectsFromTable:@"IDS_IDENTIFIER_OBJECT"];
  [*(a1 + 32) setFullSyncVersion:v9 + 1];
  [*(a1 + 32) setCurrentDatabaseSchemaVersion:v7];
  [*(a1 + 32) setDeviceScreenScale:v4];
  [*(a1 + 32) setDeviceScreenWidth:v3];
  [*(a1 + 32) setProtectedContentChannelSupported:v5];
  [*(a1 + 32) setDisconnectedSince:v10];
}

- (BOOL)containsSyncedMessageForMessageWithId:(id)id
{
  p_database = &self->_database;
  database = self->_database;
  idCopy = id;
  v6 = [(NNMKSQLiteConnection *)database preparedStatementForPattern:@"SELECT 1 FROM SYNCED_MESSAGE WHERE ID = ?"];
  [NNMKSQLiteUtils bindString:idCopy intoStatement:v6 paramIndex:1];

  v7 = [(NNMKSQLiteConnection *)*p_database stepPreparedStatement:v6];
  if ([NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:v7])
  {
    v8 = v7 == 100;
  }

  else
  {
    v9 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKDeviceSyncRegistry *)p_database containsSyncedMessageForMessageWithId:v9];
    }

    v8 = 0;
  }

  [NNMKSQLiteUtils closeExecutedPreparedStatement:v6];
  return v8;
}

- (id)syncedMessageForMessageWithId:(id)id
{
  idCopy = id;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__NNMKDeviceSyncRegistry_syncedMessageForMessageWithId___block_invoke;
  v9[3] = &unk_279936050;
  v10 = idCopy;
  v5 = idCopy;
  v6 = [(NNMKDeviceSyncRegistry *)self _selectSyncedMessagesWhere:@"ID = ?" blockForBinding:v9];
  if ([v6 count])
  {
    firstObject = [v6 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (void)addOrUpdateSyncedMessage:(id)message
{
  messageCopy = message;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__NNMKDeviceSyncRegistry_addOrUpdateSyncedMessage___block_invoke;
  v6[3] = &unk_279935CD8;
  v6[4] = self;
  v7 = messageCopy;
  v5 = messageCopy;
  [(NNMKDeviceSyncRegistry *)self _insureTransactionFor:v6];
}

void __51__NNMKDeviceSyncRegistry_addOrUpdateSyncedMessage___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(*(a1 + 32) + 72) preparedStatementForPattern:{@"INSERT OR REPLACE INTO SYNCED_MESSAGE (ID, STATUS, STATUS_VERSION, DATE_RECEIVED, USED_PROTECTED_CHANNEL, USED_NOTIFICATION_PRIORITY, CONTENT_SYNCED, CONTENT_SYNCED_NOTIFICATION_PRIORITY, CONTENT_SYNCED_BECAUSE_USER_REQUESTED, CONTENT_REQUESTED_BY_USER, CONVERSATION_ID, RESEND_REQUESTED, RESEND_INTERVAL, CONTENT_RESEND_INTERVAL, MAILBOX_ID, THREAD_SPECIFIC, SPECIAL_MAILBOX_SPECIFIC, SANITIZED_ID) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"}];
  v4 = [v2[1] messageId];
  [NNMKSQLiteUtils bindString:v4 intoStatement:v3 paramIndex:1];

  +[NNMKSQLiteUtils bindUnsignedInteger:intoStatement:paramIndex:](NNMKSQLiteUtils, "bindUnsignedInteger:intoStatement:paramIndex:", [v2[1] status], v3, 2);
  +[NNMKSQLiteUtils bindUnsignedInteger:intoStatement:paramIndex:](NNMKSQLiteUtils, "bindUnsignedInteger:intoStatement:paramIndex:", [v2[1] statusVersion], v3, 3);
  v5 = [v2[1] dateReceived];
  [NNMKSQLiteUtils bindDate:v5 intoStatement:v3 paramIndex:4];

  +[NNMKSQLiteUtils bindBool:intoStatement:paramIndex:](NNMKSQLiteUtils, "bindBool:intoStatement:paramIndex:", [v2[1] usedNotificationPriorityForMessageSync], v3, 6);
  +[NNMKSQLiteUtils bindBool:intoStatement:paramIndex:](NNMKSQLiteUtils, "bindBool:intoStatement:paramIndex:", [v2[1] contentSynced], v3, 7);
  +[NNMKSQLiteUtils bindBool:intoStatement:paramIndex:](NNMKSQLiteUtils, "bindBool:intoStatement:paramIndex:", [v2[1] contentSyncedUsingNotificationPriority], v3, 8);
  +[NNMKSQLiteUtils bindBool:intoStatement:paramIndex:](NNMKSQLiteUtils, "bindBool:intoStatement:paramIndex:", [v2[1] contentSyncedBecauseUserRequested], v3, 9);
  +[NNMKSQLiteUtils bindBool:intoStatement:paramIndex:](NNMKSQLiteUtils, "bindBool:intoStatement:paramIndex:", [v2[1] contentRequestedByUser], v3, 10);
  v6 = [v2[1] conversationId];
  [NNMKSQLiteUtils bindString:v6 intoStatement:v3 paramIndex:11];

  +[NNMKSQLiteUtils bindBool:intoStatement:paramIndex:](NNMKSQLiteUtils, "bindBool:intoStatement:paramIndex:", [v2[1] resendRequested], v3, 12);
  +[NNMKSQLiteUtils bindUnsignedInteger:intoStatement:paramIndex:](NNMKSQLiteUtils, "bindUnsignedInteger:intoStatement:paramIndex:", [v2[1] resendInterval], v3, 13);
  +[NNMKSQLiteUtils bindUnsignedInteger:intoStatement:paramIndex:](NNMKSQLiteUtils, "bindUnsignedInteger:intoStatement:paramIndex:", [v2[1] contentResendInterval], v3, 14);
  v7 = [v2[1] mailboxId];
  [NNMKSQLiteUtils bindString:v7 intoStatement:v3 paramIndex:15];

  +[NNMKSQLiteUtils bindBool:intoStatement:paramIndex:](NNMKSQLiteUtils, "bindBool:intoStatement:paramIndex:", [v2[1] isThreadSpecific], v3, 16);
  +[NNMKSQLiteUtils bindUnsignedInteger:intoStatement:paramIndex:](NNMKSQLiteUtils, "bindUnsignedInteger:intoStatement:paramIndex:", [v2[1] isSpecialMailboxSpecific], v3, 17);
  v8 = [v2[1] sanitizedMessageId];
  [NNMKSQLiteUtils bindString:v8 intoStatement:v3 paramIndex:18];

  v23 = v2;
  if (!+[NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:](NNMKSQLiteUtils, "isResponseOkFromPreparedStatementExecution:", [*(*v2 + 9) stepPreparedStatement:v3]))
  {
    v9 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      __51__NNMKDeviceSyncRegistry_addOrUpdateSyncedMessage___block_invoke_cold_1(v2, v9);
    }
  }

  [NNMKSQLiteUtils closeExecutedPreparedStatement:v3];
  v10 = [*(*(a1 + 32) + 72) preparedStatementForPattern:@"DELETE FROM ATTACHMENT_NOT_SYNCED WHERE MESSAGE_ID = ?"];
  v11 = [*(a1 + 40) messageId];
  [NNMKSQLiteUtils bindString:v11 intoStatement:v10 paramIndex:1];

  if (!+[NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:](NNMKSQLiteUtils, "isResponseOkFromPreparedStatementExecution:", [*(*(a1 + 32) + 72) stepPreparedStatement:v10]))
  {
    v12 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      __51__NNMKDeviceSyncRegistry_addOrUpdateSyncedMessage___block_invoke_cold_2(v2, v12);
    }
  }

  [NNMKSQLiteUtils closeExecutedPreparedStatement:v10];
  v13 = [*(*(a1 + 32) + 72) preparedStatementForPattern:{@"INSERT INTO ATTACHMENT_NOT_SYNCED (MESSAGE_ID, CONTENT_ID, MAILBOX_ID) VALUES (?, ?, ?)"}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = [*(a1 + 40) attachmentsContentIdsNotYetSynced];
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      v18 = 0;
      do
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * v18);
        v20 = [*(a1 + 40) messageId];
        [NNMKSQLiteUtils bindString:v20 intoStatement:v13 paramIndex:1];

        [NNMKSQLiteUtils bindString:v19 intoStatement:v13 paramIndex:2];
        [NNMKSQLiteUtils bindString:v19 intoStatement:v13 paramIndex:3];
        if (!+[NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:](NNMKSQLiteUtils, "isResponseOkFromPreparedStatementExecution:", [*(*(a1 + 32) + 72) stepPreparedStatement:v13]))
        {
          v21 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
          {
            __51__NNMKDeviceSyncRegistry_addOrUpdateSyncedMessage___block_invoke_cold_3(v28, v23, v21, &v29);
          }
        }

        [NNMKSQLiteUtils closeExecutedPreparedStatement:v13];
        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v16);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)removeSyncedMessageForMessageWithId:(id)id
{
  p_database = &self->_database;
  database = self->_database;
  idCopy = id;
  v6 = [(NNMKSQLiteConnection *)database preparedStatementForPattern:@"DELETE FROM SYNCED_MESSAGE WHERE ID = ?"];
  [NNMKSQLiteUtils bindString:idCopy intoStatement:v6 paramIndex:1];

  if (!+[NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:](NNMKSQLiteUtils, "isResponseOkFromPreparedStatementExecution:", [*p_database stepPreparedStatement:v6]))
  {
    v7 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKDeviceSyncRegistry *)p_database removeSyncedMessageForMessageWithId:v7];
    }
  }

  [NNMKSQLiteUtils closeExecutedPreparedStatement:v6];
}

- (id)syncedMessagesForConversationWithId:(id)id
{
  idCopy = id;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__NNMKDeviceSyncRegistry_syncedMessagesForConversationWithId___block_invoke;
  v8[3] = &unk_279936050;
  v9 = idCopy;
  v5 = idCopy;
  v6 = [(NNMKDeviceSyncRegistry *)self _selectSyncedMessagesWhere:@"CONVERSATION_ID = ?" blockForBinding:v8];

  return v6;
}

uint64_t __81__NNMKDeviceSyncRegistry_firstSyncedMessageIdsContentNotSyncedOrRequestedByUser___block_invoke(uint64_t a1, uint64_t a2)
{
  [NNMKSQLiteUtils bindBool:0 intoStatement:a2 paramIndex:1];

  return [NNMKSQLiteUtils bindBool:1 intoStatement:a2 paramIndex:2];
}

- (id)oldestDateReceivedForMailboxId:(id)id
{
  p_database = &self->_database;
  database = self->_database;
  idCopy = id;
  v6 = [(NNMKSQLiteConnection *)database preparedStatementForPattern:@"SELECT MIN(DATE_RECEIVED) FROM SYNCED_MESSAGE WHERE THREAD_SPECIFIC = 0 AND SPECIAL_MAILBOX_SPECIFIC = 0 AND MAILBOX_ID = ?"];
  [NNMKSQLiteUtils bindString:idCopy intoStatement:v6 paramIndex:1];

  v7 = [(NNMKSQLiteConnection *)*p_database stepPreparedStatement:v6];
  if ([NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:v7])
  {
    if (v7 == 100)
    {
      v8 = [NNMKSQLiteUtils dateFromStatement:v6 columnIndex:0];
      goto LABEL_7;
    }
  }

  else
  {
    v9 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKDeviceSyncRegistry *)p_database oldestDateReceivedForMailboxId:v9];
    }
  }

  v8 = 0;
LABEL_7:
  [NNMKSQLiteUtils closeExecutedPreparedStatement:v6];

  return v8;
}

- (unint64_t)syncedMessagesCountForMailboxId:(id)id
{
  idCopy = id;
  v5 = [MEMORY[0x277CCAB68] stringWithFormat:@"SELECT COUNT(ID) FROM SYNCED_MESSAGE "];
  v6 = v5;
  if (idCopy)
  {
    [v5 appendString:@"WHERE MAILBOX_ID = ? "];
    database = self->_database;
    p_database = &self->_database;
    v9 = [(NNMKSQLiteConnection *)database preparedStatementForPattern:v6];
    [NNMKSQLiteUtils bindString:idCopy intoStatement:v9 paramIndex:1];
  }

  else
  {
    v10 = self->_database;
    p_database = &self->_database;
    v9 = [(NNMKSQLiteConnection *)v10 preparedStatementForPattern:v5];
  }

  v11 = [(NNMKSQLiteConnection *)*p_database stepPreparedStatement:v9];
  if (![NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:v11])
  {
    v13 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKDeviceSyncRegistry *)p_database syncedMessagesCountForMailboxId:v13];
    }

    goto LABEL_9;
  }

  if (v11 != 100)
  {
LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  v12 = [NNMKSQLiteUtils unsignedIntegerFromStatement:v9 columnIndex:0];
LABEL_10:
  [NNMKSQLiteUtils closeExecutedPreparedStatement:v9];

  return v12;
}

- (id)messageIdForSanitizedMessageId:(id)id
{
  p_database = &self->_database;
  database = self->_database;
  idCopy = id;
  v6 = [(NNMKSQLiteConnection *)database preparedStatementForPattern:@"SELECT ID FROM SYNCED_MESSAGE WHERE SANITIZED_ID = ?"];
  [NNMKSQLiteUtils bindString:idCopy intoStatement:v6 paramIndex:1];

  v7 = [(NNMKSQLiteConnection *)*p_database stepPreparedStatement:v6];
  if ([NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:v7])
  {
    if (v7 == 100)
    {
      v8 = [NNMKSQLiteUtils stringFromStatement:v6 columnIndex:0];
      goto LABEL_7;
    }
  }

  else
  {
    v9 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKDeviceSyncRegistry *)p_database messageIdForSanitizedMessageId:v9];
    }
  }

  v8 = 0;
LABEL_7:
  [NNMKSQLiteUtils closeExecutedPreparedStatement:v6];

  return v8;
}

- (void)removeSyncedMessagesBeforeDateReceived:(id)received mailbox:(id)mailbox
{
  receivedCopy = received;
  mailboxCopy = mailbox;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __73__NNMKDeviceSyncRegistry_removeSyncedMessagesBeforeDateReceived_mailbox___block_invoke;
  v10[3] = &unk_279936098;
  v10[4] = self;
  v11 = receivedCopy;
  v12 = mailboxCopy;
  v8 = mailboxCopy;
  v9 = receivedCopy;
  [(NNMKDeviceSyncRegistry *)self _insureTransactionFor:v10];
}

uint64_t __73__NNMKDeviceSyncRegistry_removeSyncedMessagesBeforeDateReceived_mailbox___block_invoke(uint64_t a1)
{
  v1 = a1 + 32;
  v2 = [*(*(a1 + 32) + 72) preparedStatementForPattern:@"DELETE FROM SYNCED_MESSAGE WHERE DATE_RECEIVED < ? AND MAILBOX_ID = ?"];
  [NNMKSQLiteUtils bindDate:*(v1 + 8) intoStatement:v2 paramIndex:1];
  v3 = [*(v1 + 16) mailboxId];
  [NNMKSQLiteUtils bindString:v3 intoStatement:v2 paramIndex:2];

  if (!+[NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:](NNMKSQLiteUtils, "isResponseOkFromPreparedStatementExecution:", [*(*v1 + 72) stepPreparedStatement:v2]))
  {
    v4 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      __73__NNMKDeviceSyncRegistry_removeSyncedMessagesBeforeDateReceived_mailbox___block_invoke_cold_1(v1, v4);
    }
  }

  return [NNMKSQLiteUtils closeExecutedPreparedStatement:v2];
}

- (id)syncedMessagesKeyedByMessageIdAfterDateReceived:(id)received mailboxId:(id)id
{
  v31 = *MEMORY[0x277D85DE8];
  receivedCopy = received;
  idCopy = id;
  v8 = idCopy;
  if (receivedCopy)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __84__NNMKDeviceSyncRegistry_syncedMessagesKeyedByMessageIdAfterDateReceived_mailboxId___block_invoke;
    v27[3] = &unk_2799360C0;
    v9 = &v28;
    v28 = idCopy;
    v29 = receivedCopy;
    v10 = [(NNMKDeviceSyncRegistry *)self _selectSyncedMessagesWhere:@"MAILBOX_ID = ? AND DATE_RECEIVED >= ?" blockForBinding:v27];
  }

  else
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __84__NNMKDeviceSyncRegistry_syncedMessagesKeyedByMessageIdAfterDateReceived_mailboxId___block_invoke_2;
    v25[3] = &unk_279936050;
    v9 = &v26;
    v26 = idCopy;
    v10 = [(NNMKDeviceSyncRegistry *)self _selectSyncedMessagesWhere:@"MAILBOX_ID = ? AND ID IS NOT NULL" blockForBinding:v25];
  }

  v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v10, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        messageId = [v17 messageId];
        [v11 setObject:v17 forKeyedSubscript:messageId];
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v30 count:16];
    }

    while (v14);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v11;
}

uint64_t __84__NNMKDeviceSyncRegistry_syncedMessagesKeyedByMessageIdAfterDateReceived_mailboxId___block_invoke(uint64_t a1, uint64_t a2)
{
  [NNMKSQLiteUtils bindString:*(a1 + 32) intoStatement:a2 paramIndex:1];
  v4 = *(a1 + 40);

  return [NNMKSQLiteUtils bindDate:v4 intoStatement:a2 paramIndex:2];
}

- (id)allSyncedAccountsKeyedByAccountId
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [(NNMKDeviceSyncRegistry *)self _selectSyncedAccountsWhere:0 blockForBinding:&__block_literal_global_127];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        accountId = [v9 accountId];
        [dictionary setObject:v9 forKeyedSubscript:accountId];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (id)syncedAccountForAccountWithId:(id)id
{
  idCopy = id;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__NNMKDeviceSyncRegistry_syncedAccountForAccountWithId___block_invoke;
  v9[3] = &unk_279936050;
  v10 = idCopy;
  v5 = idCopy;
  v6 = [(NNMKDeviceSyncRegistry *)self _selectSyncedAccountsWhere:@"ID = ?" blockForBinding:v9];
  if ([v6 count])
  {
    firstObject = [v6 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (void)addOrUpdateSyncedAccount:(id)account
{
  p_database = &self->_database;
  database = self->_database;
  accountCopy = account;
  v6 = [(NNMKSQLiteConnection *)database preparedStatementForPattern:@"INSERT OR REPLACE INTO SYNCED_ACCOUNT (ID, DISPLAY_NAME, SHOULD_ARCHIVE, EMAIL_ADDRESSES, DEFAULT_ADDRESS, RESEND_REQUESTED, RESEND_INTERVAL, SOURCE_TYPE, USERNAME, LOCAL_ID, TYPE_IDENTIFIER, EMAIL_ADDRESS_TOKEN, PCC_EMAIL_ADDRESS) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"];
  accountId = [accountCopy accountId];
  [NNMKSQLiteUtils bindString:accountId intoStatement:v6 paramIndex:1];

  displayName = [accountCopy displayName];
  [NNMKSQLiteUtils bindString:displayName intoStatement:v6 paramIndex:2];

  +[NNMKSQLiteUtils bindBool:intoStatement:paramIndex:](NNMKSQLiteUtils, "bindBool:intoStatement:paramIndex:", [accountCopy shouldArchive], v6, 3);
  emailAddresses = [accountCopy emailAddresses];
  v10 = [emailAddresses componentsJoinedByString:@"\n"];
  [NNMKSQLiteUtils bindString:v10 intoStatement:v6 paramIndex:4];

  defaultEmailAddress = [accountCopy defaultEmailAddress];
  [NNMKSQLiteUtils bindString:defaultEmailAddress intoStatement:v6 paramIndex:5];

  +[NNMKSQLiteUtils bindBool:intoStatement:paramIndex:](NNMKSQLiteUtils, "bindBool:intoStatement:paramIndex:", [accountCopy resendRequested], v6, 6);
  +[NNMKSQLiteUtils bindUnsignedInteger:intoStatement:paramIndex:](NNMKSQLiteUtils, "bindUnsignedInteger:intoStatement:paramIndex:", [accountCopy resendInterval], v6, 7);
  +[NNMKSQLiteUtils bindUnsignedInteger:intoStatement:paramIndex:](NNMKSQLiteUtils, "bindUnsignedInteger:intoStatement:paramIndex:", [accountCopy sourceType], v6, 8);
  username = [accountCopy username];
  [NNMKSQLiteUtils bindString:username intoStatement:v6 paramIndex:9];

  localId = [accountCopy localId];
  [NNMKSQLiteUtils bindString:localId intoStatement:v6 paramIndex:10];

  typeIdentifier = [accountCopy typeIdentifier];
  [NNMKSQLiteUtils bindString:typeIdentifier intoStatement:v6 paramIndex:11];

  emailAddressToken = [accountCopy emailAddressToken];
  [NNMKSQLiteUtils bindString:emailAddressToken intoStatement:v6 paramIndex:12];

  pccEmailAddress = [accountCopy pccEmailAddress];

  [NNMKSQLiteUtils bindString:pccEmailAddress intoStatement:v6 paramIndex:13];
  if (!+[NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:](NNMKSQLiteUtils, "isResponseOkFromPreparedStatementExecution:", [*p_database stepPreparedStatement:v6]))
  {
    v17 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKDeviceSyncRegistry *)p_database addOrUpdateSyncedAccount:v17];
    }
  }

  [NNMKSQLiteUtils closeExecutedPreparedStatement:v6];
}

- (void)removeSyncedAccountForAccountWithId:(id)id
{
  p_database = &self->_database;
  database = self->_database;
  idCopy = id;
  v6 = [(NNMKSQLiteConnection *)database preparedStatementForPattern:@"DELETE FROM SYNCED_ACCOUNT WHERE ID = ?"];
  [NNMKSQLiteUtils bindString:idCopy intoStatement:v6 paramIndex:1];

  if (!+[NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:](NNMKSQLiteUtils, "isResponseOkFromPreparedStatementExecution:", [*p_database stepPreparedStatement:v6]))
  {
    v7 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKDeviceSyncRegistry *)p_database removeSyncedAccountForAccountWithId:v7];
    }
  }

  [NNMKSQLiteUtils closeExecutedPreparedStatement:v6];
}

- (id)syncedAccountIdsResendRequested
{
  p_database = &self->_database;
  v3 = [(NNMKSQLiteConnection *)self->_database preparedStatementForPattern:@"SELECT ID FROM SYNCED_ACCOUNT WHERE RESEND_REQUESTED = ?"];
  [NNMKSQLiteUtils bindBool:1 intoStatement:v3 paramIndex:1];
  v4 = [(NNMKSQLiteConnection *)*p_database stepPreparedStatement:v3];
  array = [MEMORY[0x277CBEB18] array];
  if ([NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:v4])
  {
    if (v4 == 100)
    {
      do
      {
        v6 = [NNMKSQLiteUtils stringFromStatement:v3 columnIndex:0];
        if (v6)
        {
          [array addObject:v6];
        }

        v7 = [(NNMKSQLiteConnection *)*p_database stepPreparedStatement:v3];
      }

      while (v7 == 100);
    }
  }

  else
  {
    v8 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKDeviceSyncRegistry *)p_database syncedAccountIdsResendRequested];
    }
  }

  [NNMKSQLiteUtils closeExecutedPreparedStatement:v3];

  return array;
}

- (unint64_t)accountSourceTypeForMessageId:(id)id
{
  idCopy = id;
  database = self->_database;
  p_database = &self->_database;
  v7 = [(NNMKSQLiteConnection *)database preparedStatementForPattern:@"SELECT A.SOURCE_TYPE FROM SYNCED_MESSAGE SM LEFT OUTER JOIN  MAILBOX M ON SM.MAILBOX_ID = M.ID LEFT OUTER JOIN SYNCED_ACCOUNT A ON A.ID = M.ACCOUNT_ID  WHERE SM.ID = ?"];
  [NNMKSQLiteUtils bindString:idCopy intoStatement:v7 paramIndex:1];
  v8 = [(NNMKSQLiteConnection *)*p_database stepPreparedStatement:v7];
  v9 = [NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:v8];
  if (v8 != 100 || !v9)
  {
    v11 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKDeviceSyncRegistry *)p_database accountSourceTypeForMessageId:v11];
    }

    v12 = 0;
  }

  else
  {
    v12 = [NNMKSQLiteUtils unsignedIntegerFromStatement:v7 columnIndex:0];
  }

  [NNMKSQLiteUtils closeExecutedPreparedStatement:v7];

  return v12;
}

- (unint64_t)accountSourceTypeForMailboxId:(id)id
{
  idCopy = id;
  database = self->_database;
  p_database = &self->_database;
  v7 = [(NNMKSQLiteConnection *)database preparedStatementForPattern:@"SELECT A.SOURCE_TYPE FROM MAILBOX M LEFT OUTER JOIN SYNCED_ACCOUNT A ON A.ID = M.ACCOUNT_ID  WHERE M.ID = ?"];
  [NNMKSQLiteUtils bindString:idCopy intoStatement:v7 paramIndex:1];
  v8 = [(NNMKSQLiteConnection *)*p_database stepPreparedStatement:v7];
  v9 = [NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:v8];
  if (v8 != 100 || !v9)
  {
    v11 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKDeviceSyncRegistry *)p_database accountSourceTypeForMailboxId:v11];
    }

    v12 = 0;
  }

  else
  {
    v12 = [NNMKSQLiteUtils unsignedIntegerFromStatement:v7 columnIndex:0];
  }

  [NNMKSQLiteUtils closeExecutedPreparedStatement:v7];

  return v12;
}

- (unint64_t)accountSourceTypeForAccountId:(id)id
{
  idCopy = id;
  database = self->_database;
  p_database = &self->_database;
  v7 = [(NNMKSQLiteConnection *)database preparedStatementForPattern:@"SELECT SOURCE_TYPE FROM SYNCED_ACCOUNT WHERE ID = ?"];
  [NNMKSQLiteUtils bindString:idCopy intoStatement:v7 paramIndex:1];
  v8 = [(NNMKSQLiteConnection *)*p_database stepPreparedStatement:v7];
  v9 = [NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:v8];
  if (v8 != 100 || !v9)
  {
    v11 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKDeviceSyncRegistry *)p_database accountSourceTypeForAccountId:v11];
    }

    v12 = 0;
  }

  else
  {
    v12 = [NNMKSQLiteUtils unsignedIntegerFromStatement:v7 columnIndex:0];
  }

  [NNMKSQLiteUtils closeExecutedPreparedStatement:v7];

  return v12;
}

- (id)accountIdForUsername:(id)username
{
  p_database = &self->_database;
  database = self->_database;
  usernameCopy = username;
  v6 = [(NNMKSQLiteConnection *)database preparedStatementForPattern:@"SELECT ID FROM SYNCED_ACCOUNT WHERE USERNAME = ? COLLATE NOCASE"];
  [NNMKSQLiteUtils bindString:usernameCopy intoStatement:v6 paramIndex:1];

  v7 = [(NNMKSQLiteConnection *)*p_database stepPreparedStatement:v6];
  v8 = [NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:v7];
  if (v7 != 100 || !v8)
  {
    v10 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKDeviceSyncRegistry *)p_database accountIdForUsername:v10];
    }

    v11 = 0;
  }

  else
  {
    v11 = [NNMKSQLiteUtils stringFromStatement:v6 columnIndex:0];
  }

  [NNMKSQLiteUtils closeExecutedPreparedStatement:v6];

  return v11;
}

- (void)updateSourceType:(unint64_t)type forAccountId:(id)id
{
  idCopy = id;
  database = self->_database;
  p_database = &self->_database;
  v9 = [(NNMKSQLiteConnection *)database preparedStatementForPattern:@"UPDATE SYNCED_ACCOUNT SET SOURCE_TYPE = ? WHERE ID = ?"];
  [NNMKSQLiteUtils bindUnsignedInteger:type intoStatement:v9 paramIndex:1];
  [NNMKSQLiteUtils bindString:idCopy intoStatement:v9 paramIndex:2];
  v10 = [(NNMKSQLiteConnection *)*p_database stepPreparedStatement:v9];
  [NNMKSQLiteUtils closeExecutedPreparedStatement:v9];
  v11 = qword_28144D620;
  if (v10 == 101)
  {
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEBUG))
    {
      [NNMKDeviceSyncRegistry updateSourceType:forAccountId:];
    }
  }

  else if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
  {
    [NNMKDeviceSyncRegistry updateSourceType:v11 forAccountId:?];
  }
}

- (void)addOrUpdateMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  mailboxId = [mailboxCopy mailboxId];
  v6 = [mailboxId length];

  if (v6)
  {
    v7 = [mailboxCopy url];

    if (!v7)
    {
      v8 = qword_28144D620;
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_FAULT))
      {
        [NNMKDeviceSyncRegistry addOrUpdateMailbox:v8];
      }
    }

    database = self->_database;
    p_database = &self->_database;
    v11 = [(NNMKSQLiteConnection *)database preparedStatementForPattern:@"INSERT OR REPLACE INTO MAILBOX (ID, TYPE, FILTER_TYPE, CUSTOM_NAME, URL, SYNC_ACTIVE, ACCOUNT_ID, SYNC_ENABLED, SYNC_REQUESTED, ACCOUNT_LOCAL_ID, SYNC_REQUESTED_DATE) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"];
    mailboxId2 = [mailboxCopy mailboxId];
    [NNMKSQLiteUtils bindString:mailboxId2 intoStatement:v11 paramIndex:1];

    +[NNMKSQLiteUtils bindInteger:intoStatement:paramIndex:](NNMKSQLiteUtils, "bindInteger:intoStatement:paramIndex:", [mailboxCopy type], v11, 2);
    +[NNMKSQLiteUtils bindInteger:intoStatement:paramIndex:](NNMKSQLiteUtils, "bindInteger:intoStatement:paramIndex:", [mailboxCopy filterType], v11, 3);
    customName = [mailboxCopy customName];
    [NNMKSQLiteUtils bindString:customName intoStatement:v11 paramIndex:4];

    v14 = [mailboxCopy url];
    absoluteString = [v14 absoluteString];
    [NNMKSQLiteUtils bindString:absoluteString intoStatement:v11 paramIndex:5];

    +[NNMKSQLiteUtils bindBool:intoStatement:paramIndex:](NNMKSQLiteUtils, "bindBool:intoStatement:paramIndex:", [mailboxCopy syncActive], v11, 6);
    accountId = [mailboxCopy accountId];
    [NNMKSQLiteUtils bindString:accountId intoStatement:v11 paramIndex:7];

    +[NNMKSQLiteUtils bindBool:intoStatement:paramIndex:](NNMKSQLiteUtils, "bindBool:intoStatement:paramIndex:", [mailboxCopy syncEnabled], v11, 8);
    +[NNMKSQLiteUtils bindBool:intoStatement:paramIndex:](NNMKSQLiteUtils, "bindBool:intoStatement:paramIndex:", [mailboxCopy syncRequested], v11, 9);
    accountLocalId = [mailboxCopy accountLocalId];
    [NNMKSQLiteUtils bindString:accountLocalId intoStatement:v11 paramIndex:10];

    syncRequestedDate = [mailboxCopy syncRequestedDate];
    [NNMKSQLiteUtils bindDate:syncRequestedDate intoStatement:v11 paramIndex:11];

    v19 = [(NNMKSQLiteConnection *)*p_database stepPreparedStatement:v11];
    [NNMKSQLiteUtils closeExecutedPreparedStatement:v11];
    v20 = qword_28144D620;
    if (v19 == 101)
    {
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEBUG))
      {
        [NNMKDeviceSyncRegistry addOrUpdateMailbox:v20];
      }
    }

    else if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKDeviceSyncRegistry *)p_database addOrUpdateMailbox:v20];
    }
  }

  else
  {
    v21 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [NNMKDeviceSyncRegistry addOrUpdateMailbox:v21];
    }
  }
}

- (void)deleteMailboxWithId:(id)id startTransaction:(BOOL)transaction
{
  transactionCopy = transaction;
  idCopy = id;
  if (transactionCopy)
  {
    [(NNMKSQLiteConnection *)self->_database beginTransaction];
  }

  p_database = &self->_database;
  v8 = [(NNMKSQLiteConnection *)self->_database preparedStatementForPattern:@"DELETE FROM MAILBOX WHERE ID = ?"];
  [NNMKSQLiteUtils bindString:idCopy intoStatement:v8 paramIndex:1];
  v9 = [(NNMKSQLiteConnection *)self->_database stepPreparedStatement:v8];
  [NNMKSQLiteUtils closeExecutedPreparedStatement:v8];
  [(NNMKDeviceSyncRegistry *)self _deleteAllObjectsFromTable:@"SYNCED_MESSAGE" mailboxId:idCopy];
  [(NNMKDeviceSyncRegistry *)self _deleteAllObjectsFromTable:@"DELETED_MESSAGE" mailboxId:idCopy];
  [(NNMKDeviceSyncRegistry *)self _deleteAllObjectsFromTable:@"ATTACHMENT_NOT_SYNCED" mailboxId:idCopy];
  if (v9 != 101)
  {
    v10 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [NNMKDeviceSyncRegistry deleteMailboxWithId:v10 startTransaction:?];
      if (!transactionCopy)
      {
        goto LABEL_11;
      }
    }

    else if (!transactionCopy)
    {
      goto LABEL_11;
    }

    [*p_database rollbackTransaction];
    goto LABEL_11;
  }

  if (transactionCopy)
  {
    [*p_database commitTransaction];
  }

  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEBUG))
  {
    [NNMKDeviceSyncRegistry deleteMailboxWithId:startTransaction:];
  }

LABEL_11:
}

- (void)resetSyncRequestedFromMailboxes
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(self, a2);
  lastErrorMessage = [OUTLINED_FUNCTION_5() lastErrorMessage];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

- (id)mailboxWithId:(id)id
{
  idCopy = id;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__NNMKDeviceSyncRegistry_mailboxWithId___block_invoke;
  v9[3] = &unk_279936050;
  v10 = idCopy;
  v5 = idCopy;
  v6 = [(NNMKDeviceSyncRegistry *)self _selectMailboxesWhere:@"ID = ?" blockForBinding:v9];
  firstObject = [v6 firstObject];

  return firstObject;
}

- (id)mailboxesForAccountId:(id)id
{
  idCopy = id;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__NNMKDeviceSyncRegistry_mailboxesForAccountId___block_invoke;
  v8[3] = &unk_279936050;
  v9 = idCopy;
  v5 = idCopy;
  v6 = [(NNMKDeviceSyncRegistry *)self _selectMailboxesWhere:@"ACCOUNT_ID = ?" blockForBinding:v8];

  return v6;
}

- (unint64_t)syncVersionForMailboxId:(id)id
{
  p_database = &self->_database;
  database = self->_database;
  idCopy = id;
  v6 = [(NNMKSQLiteConnection *)database preparedStatementForPattern:@"SELECT SYNC_VERSION FROM MAILBOX_SYNC_VERSION WHERE MAILBOX_ID = ?"];
  [NNMKSQLiteUtils bindString:idCopy intoStatement:v6 paramIndex:1];

  v7 = [(NNMKSQLiteConnection *)*p_database stepPreparedStatement:v6];
  if (![NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:v7])
  {
    v9 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKDeviceSyncRegistry *)p_database syncVersionForMailboxId:v9];
    }

    goto LABEL_6;
  }

  if (v7 != 100)
  {
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v8 = [NNMKSQLiteUtils unsignedIntegerFromStatement:v6 columnIndex:0];
LABEL_7:
  [NNMKSQLiteUtils closeExecutedPreparedStatement:v6];
  return v8;
}

- (void)updateSyncVersion:(unint64_t)version forMailboxId:(id)id
{
  p_database = &self->_database;
  database = self->_database;
  idCopy = id;
  v8 = [(NNMKSQLiteConnection *)database preparedStatementForPattern:@"INSERT OR REPLACE INTO MAILBOX_SYNC_VERSION (MAILBOX_ID, SYNC_VERSION) VALUES (?, ?)"];
  [NNMKSQLiteUtils bindString:idCopy intoStatement:v8 paramIndex:1];

  [NNMKSQLiteUtils bindUnsignedInteger:version intoStatement:v8 paramIndex:2];
  if (!+[NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:](NNMKSQLiteUtils, "isResponseOkFromPreparedStatementExecution:", [*p_database stepPreparedStatement:v8]))
  {
    v9 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [NNMKDeviceSyncRegistry updateSyncVersion:v9 forMailboxId:?];
    }
  }

  [NNMKSQLiteUtils closeExecutedPreparedStatement:v8];
}

- (void)insertDeletedMessageId:(id)id mailboxId:(id)mailboxId
{
  p_database = &self->_database;
  database = self->_database;
  mailboxIdCopy = mailboxId;
  idCopy = id;
  v9 = [(NNMKSQLiteConnection *)database preparedStatementForPattern:@"INSERT OR REPLACE INTO DELETED_MESSAGE (MESSAGE_ID, MAILBOX_ID) VALUES (?, ?)"];
  [NNMKSQLiteUtils bindString:idCopy intoStatement:v9 paramIndex:1];

  [NNMKSQLiteUtils bindString:mailboxIdCopy intoStatement:v9 paramIndex:2];
  if (!+[NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:](NNMKSQLiteUtils, "isResponseOkFromPreparedStatementExecution:", [*p_database stepPreparedStatement:v9]))
  {
    v10 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [NNMKDeviceSyncRegistry insertDeletedMessageId:v10 mailboxId:?];
    }
  }

  [NNMKSQLiteUtils closeExecutedPreparedStatement:v9];
}

- (id)mailboxIdForDeletedMessageId:(id)id
{
  p_database = &self->_database;
  database = self->_database;
  idCopy = id;
  v6 = [(NNMKSQLiteConnection *)database preparedStatementForPattern:@"SELECT MAILBOX_ID FROM DELETED_MESSAGE WHERE MESSAGE_ID = ?"];
  [NNMKSQLiteUtils bindString:idCopy intoStatement:v6 paramIndex:1];

  v7 = [(NNMKSQLiteConnection *)*p_database stepPreparedStatement:v6];
  if ([NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:v7])
  {
    if (v7 == 100)
    {
      v8 = [NNMKSQLiteUtils stringFromStatement:v6 columnIndex:0];
      goto LABEL_7;
    }
  }

  else
  {
    v9 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKDeviceSyncRegistry *)p_database mailboxIdForDeletedMessageId:v9];
    }
  }

  v8 = 0;
LABEL_7:
  [NNMKSQLiteUtils closeExecutedPreparedStatement:v6];

  return v8;
}

- (void)deleteAllMailboxes
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(self, a2);
  lastErrorMessage = [OUTLINED_FUNCTION_5() lastErrorMessage];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateSyncEnabledForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  mailboxId = [mailboxCopy mailboxId];
  v7 = [(NNMKDeviceSyncRegistry *)self mailboxWithId:mailboxId];

  syncEnabled = [mailboxCopy syncEnabled];
  [v7 setSyncEnabled:syncEnabled];
  [(NNMKDeviceSyncRegistry *)self addOrUpdateMailbox:v7];
}

- (void)updateSyncActiveForMailbox:(id)mailbox
{
  v16 = *MEMORY[0x277D85DE8];
  mailboxCopy = mailbox;
  v5 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    syncActive = [mailboxCopy syncActive];
    mailboxId = [mailboxCopy mailboxId];
    v12 = 134218242;
    v13 = syncActive;
    v14 = 2114;
    v15 = mailboxId;
    _os_log_impl(&dword_25B19F000, v6, OS_LOG_TYPE_DEFAULT, "Updating mailbox sync active: %lu (Mailbox: %{public}@)", &v12, 0x16u);
  }

  mailboxId2 = [mailboxCopy mailboxId];
  v10 = [(NNMKDeviceSyncRegistry *)self mailboxWithId:mailboxId2];

  [v10 setSyncActive:{objc_msgSend(mailboxCopy, "syncActive")}];
  [(NNMKDeviceSyncRegistry *)self addOrUpdateMailbox:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updateSyncRequestedForMailbox:(id)mailbox
{
  v17 = *MEMORY[0x277D85DE8];
  mailboxCopy = mailbox;
  v5 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    syncRequested = [mailboxCopy syncRequested];
    mailboxId = [mailboxCopy mailboxId];
    v13 = 134218242;
    v14 = syncRequested;
    v15 = 2114;
    v16 = mailboxId;
    _os_log_impl(&dword_25B19F000, v6, OS_LOG_TYPE_DEFAULT, "Updating mailbox sync requested: %lu (Mailbox: %{public}@)", &v13, 0x16u);
  }

  mailboxId2 = [mailboxCopy mailboxId];
  v10 = [(NNMKDeviceSyncRegistry *)self mailboxWithId:mailboxId2];

  LODWORD(mailboxId2) = [mailboxCopy syncRequested];
  if (mailboxId2 != [v10 syncRequested])
  {
    [v10 setSyncRequested:{objc_msgSend(mailboxCopy, "syncRequested")}];
    if ([mailboxCopy syncRequested])
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEAA8]);
      [v10 setSyncRequestedDate:v11];
    }

    else
    {
      [v10 setSyncRequestedDate:0];
    }

    [(NNMKDeviceSyncRegistry *)self addOrUpdateMailbox:v10];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_selectMailboxesWhere:(id)where blockForBinding:(id)binding
{
  whereCopy = where;
  bindingCopy = binding;
  array = [MEMORY[0x277CBEB18] array];
  if (whereCopy)
  {
    whereCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"WHERE %@", whereCopy];
  }

  else
  {
    whereCopy = &stru_286C69F68;
  }

  v22 = whereCopy;
  v23 = whereCopy;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT ID, TYPE, FILTER_TYPE, CUSTOM_NAME, URL, SYNC_ACTIVE, ACCOUNT_ID, SYNC_ENABLED, SYNC_REQUESTED, ACCOUNT_LOCAL_ID, SYNC_REQUESTED_DATE FROM MAILBOX M %@", whereCopy];
  p_database = &self->_database;
  v12 = [(NNMKSQLiteConnection *)self->_database preparedStatementForPattern:v10];
  bindingCopy[2](bindingCopy, v12);
  v13 = [(NNMKSQLiteConnection *)self->_database stepPreparedStatement:v12];
  if ([NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:v13])
  {
    if (v13 == 100)
    {
      do
      {
        v14 = [(NNMKDeviceSyncRegistry *)self _mailboxFromCurrentRowInStatement:v12];
        v15 = v14;
        if (v14 && ([v14 mailboxId], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "length"), v16, v17))
        {
          [array addObject:v15];
        }

        else
        {
          v18 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
          {
            [(NNMKDeviceSyncRegistry *)&buf _selectMailboxesWhere:v25 blockForBinding:v18];
          }
        }

        v19 = [(NNMKSQLiteConnection *)*p_database stepPreparedStatement:v12];
      }

      while (v19 == 100);
    }
  }

  else
  {
    v20 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKDeviceSyncRegistry *)whereCopy _selectMailboxesWhere:v20 blockForBinding:?];
    }
  }

  [NNMKSQLiteUtils closeExecutedPreparedStatement:v12];

  return array;
}

- (id)_mailboxFromCurrentRowInStatement:(sqlite3_stmt *)statement
{
  v4 = objc_alloc_init(NNMKMailbox);
  v5 = [NNMKSQLiteUtils stringFromStatement:statement columnIndex:0];
  [(NNMKMailbox *)v4 setMailboxId:v5];

  [(NNMKMailbox *)v4 setType:[NNMKSQLiteUtils integerFromStatement:statement columnIndex:1]];
  [(NNMKMailbox *)v4 setFilterType:[NNMKSQLiteUtils integerFromStatement:statement columnIndex:2]];
  v6 = [NNMKSQLiteUtils stringFromStatement:statement columnIndex:3];
  [(NNMKMailbox *)v4 setCustomName:v6];

  v7 = MEMORY[0x277CBEBC0];
  v8 = [NNMKSQLiteUtils stringFromStatement:statement columnIndex:4];
  v9 = [v7 URLWithString:v8];
  [(NNMKMailbox *)v4 setUrl:v9];

  [(NNMKMailbox *)v4 setSyncActive:[NNMKSQLiteUtils BOOLFromStatement:statement columnIndex:5]];
  v10 = [NNMKSQLiteUtils stringFromStatement:statement columnIndex:6];
  [(NNMKMailbox *)v4 setAccountId:v10];

  [(NNMKMailbox *)v4 setSyncEnabled:[NNMKSQLiteUtils BOOLFromStatement:statement columnIndex:7]];
  [(NNMKMailbox *)v4 setSyncRequested:[NNMKSQLiteUtils BOOLFromStatement:statement columnIndex:8]];
  v11 = [NNMKSQLiteUtils stringFromStatement:statement columnIndex:9];
  [(NNMKMailbox *)v4 setAccountLocalId:v11];

  v12 = [NNMKSQLiteUtils dateFromStatement:statement columnIndex:10];
  [(NNMKMailbox *)v4 setSyncRequestedDate:v12];

  return v4;
}

- (void)setProgress:(int64_t)progress forComposedMessageWithId:(id)id
{
  p_database = &self->_database;
  database = self->_database;
  idCopy = id;
  v8 = [(NNMKSQLiteConnection *)database preparedStatementForPattern:@"INSERT OR REPLACE INTO COMPOSED_MESSAGE (ID, PROGRESS) VALUES (?, ?)"];
  [NNMKSQLiteUtils bindString:idCopy intoStatement:v8 paramIndex:1];

  [NNMKSQLiteUtils bindInteger:progress intoStatement:v8 paramIndex:2];
  if (!+[NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:](NNMKSQLiteUtils, "isResponseOkFromPreparedStatementExecution:", [*p_database stepPreparedStatement:v8]))
  {
    v9 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [NNMKDeviceSyncRegistry setProgress:v9 forComposedMessageWithId:?];
    }
  }

  [NNMKSQLiteUtils closeExecutedPreparedStatement:v8];
}

- (int64_t)progressForComposedMessageWithId:(id)id
{
  p_database = &self->_database;
  database = self->_database;
  idCopy = id;
  v6 = [(NNMKSQLiteConnection *)database preparedStatementForPattern:@"SELECT PROGRESS FROM COMPOSED_MESSAGE WHERE ID = ?"];
  [NNMKSQLiteUtils bindString:idCopy intoStatement:v6 paramIndex:1];

  v7 = [(NNMKSQLiteConnection *)*p_database stepPreparedStatement:v6];
  if (![NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:v7])
  {
    v9 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKDeviceSyncRegistry *)p_database progressForComposedMessageWithId:v9];
    }

    goto LABEL_6;
  }

  if (v7 != 100)
  {
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v8 = [NNMKSQLiteUtils integerFromStatement:v6 columnIndex:0];
LABEL_7:
  [NNMKSQLiteUtils closeExecutedPreparedStatement:v6];
  return v8;
}

- (id)pendingComposedMessageIds
{
  p_database = &self->_database;
  v3 = [(NNMKSQLiteConnection *)self->_database preparedStatementForPattern:@"SELECT ID FROM COMPOSED_MESSAGE"];
  v4 = [(NNMKSQLiteConnection *)*p_database stepPreparedStatement:v3];
  array = [MEMORY[0x277CBEB18] array];
  if ([NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:v4])
  {
    if (v4 == 100)
    {
      do
      {
        v6 = [NNMKSQLiteUtils stringFromStatement:v3 columnIndex:0];
        if (v6)
        {
          [array addObject:v6];
        }

        v7 = [(NNMKSQLiteConnection *)*p_database stepPreparedStatement:v3];
      }

      while (v7 == 100);
    }
  }

  else
  {
    v8 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKDeviceSyncRegistry *)p_database pendingComposedMessageIds];
    }
  }

  [NNMKSQLiteUtils closeExecutedPreparedStatement:v3];

  return array;
}

- (void)removePendingComposedMessages
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(self, a2);
  lastErrorMessage = [OUTLINED_FUNCTION_5() lastErrorMessage];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeProgressForComposedMessageWithId:(id)id
{
  idCopy = id;
  v5 = [(NNMKSQLiteConnection *)self->_database preparedStatementForPattern:@"DELETE FROM COMPOSED_MESSAGE WHERE ID = ?"];
  [NNMKSQLiteUtils bindString:idCopy intoStatement:v5 paramIndex:1];
  if (![NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:[(NNMKSQLiteConnection *)self->_database stepPreparedStatement:v5]])
  {
    v6 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKDeviceSyncRegistry *)&self->_database removeProgressForComposedMessageWithId:v6];
    }
  }

  [NNMKSQLiteUtils closeExecutedPreparedStatement:v5];
  [(NNMKDeviceSyncRegistry *)self _removeAttachmentsForComposedMessageId:idCopy];
  [(NSMutableDictionary *)self->_pendingComposedMessages removeObjectForKey:idCopy];
}

- (id)attachmentsForComposedMessageId:(id)id
{
  idCopy = id;
  _attachmentDirectory = [(NNMKDeviceSyncRegistry *)self _attachmentDirectory];
  nnmk_sanitizedFileNameString = [idCopy nnmk_sanitizedFileNameString];
  v7 = [_attachmentDirectory URLByAppendingPathComponent:nnmk_sanitizedFileNameString isDirectory:0];

  v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v7];
  if (v8)
  {
    v9 = MEMORY[0x277CCAAC8];
    v10 = MEMORY[0x277CBEB98];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v17 = 0;
    v13 = [v9 unarchivedObjectOfClasses:v12 fromData:v8 error:&v17];
    v14 = v17;

    if (!v13 || v14)
    {
      if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
      {
        [NNMKDeviceSyncRegistry attachmentsForComposedMessageId:];
      }

      v15 = 0;
    }

    else
    {
      v15 = v13;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)attachmentsFromURL:(id)l
{
  lCopy = l;
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:lCopy];
  v5 = MEMORY[0x277CCAAC8];
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v14 = 0;
  v9 = [v5 unarchivedObjectOfClasses:v8 fromData:v4 error:&v14];
  v10 = v14;

  if (v9)
  {
    v11 = v10 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    v12 = v9;
  }

  else
  {
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [NNMKDeviceSyncRegistry attachmentsFromURL:];
    }

    v12 = 0;
  }

  return v12;
}

- (void)storePendingComposedMessage:(id)message
{
  pendingComposedMessages = self->_pendingComposedMessages;
  messageCopy = message;
  composedMessageId = [messageCopy composedMessageId];
  [(NSMutableDictionary *)pendingComposedMessages setObject:messageCopy forKeyedSubscript:composedMessageId];
}

- (void)saveAttachmentsForComposedMessageId:(id)id temporaryURL:(id)l
{
  idCopy = id;
  lCopy = l;
  v8 = [(NNMKDeviceSyncRegistry *)self _urlForAttachmentsWithComposedMessageId:idCopy];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v11 = 0;
  [defaultManager moveItemAtURL:lCopy toURL:v8 error:&v11];

  v10 = v11;
  if (v10 && os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
  {
    [NNMKDeviceSyncRegistry saveAttachmentsForComposedMessageId:temporaryURL:];
  }
}

- (void)_removeAttachmentsForComposedMessageId:(id)id
{
  idCopy = id;
  v5 = [(NNMKDeviceSyncRegistry *)self _urlForAttachmentsWithComposedMessageId:idCopy];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  absoluteString = [v5 absoluteString];
  v8 = [defaultManager fileExistsAtPath:absoluteString];

  if (v8)
  {
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v11 = 0;
    [defaultManager2 removeItemAtURL:v5 error:&v11];
    v10 = v11;

    if (v10 && os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [NNMKDeviceSyncRegistry _removeAttachmentsForComposedMessageId:];
    }
  }
}

- (void)_removeAllPendingAttachments
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_25B19F000, v0, OS_LOG_TYPE_ERROR, "Unable to delete all pending attachments. Error: %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (id)_urlForAttachmentsWithComposedMessageId:(id)id
{
  idCopy = id;
  _attachmentDirectory = [(NNMKDeviceSyncRegistry *)self _attachmentDirectory];
  nnmk_sanitizedFileNameString = [idCopy nnmk_sanitizedFileNameString];

  v7 = [_attachmentDirectory URLByAppendingPathComponent:nnmk_sanitizedFileNameString isDirectory:0];

  return v7;
}

- (id)_attachmentDirectory
{
  mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  pairingStorePath = [mEMORY[0x277D2BCF8] pairingStorePath];

  if (pairingStorePath)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:pairingStorePath isDirectory:1];
    v5 = [v4 URLByAppendingPathComponent:@"NanoMail/ComposedMessage" isDirectory:1];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)addObjectIds:(id)ids type:(id)type resendInterval:(unint64_t)interval forIDSIdentifierNotYetAckd:(id)ackd
{
  idsCopy = ids;
  typeCopy = type;
  ackdCopy = ackd;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __86__NNMKDeviceSyncRegistry_addObjectIds_type_resendInterval_forIDSIdentifierNotYetAckd___block_invoke;
  v16[3] = &unk_2799360E8;
  v16[4] = self;
  v17 = ackdCopy;
  v19 = idsCopy;
  intervalCopy = interval;
  v18 = typeCopy;
  v13 = idsCopy;
  v14 = typeCopy;
  v15 = ackdCopy;
  [(NNMKDeviceSyncRegistry *)self _insureTransactionFor:v16];
}

void __86__NNMKDeviceSyncRegistry_addObjectIds_type_resendInterval_forIDSIdentifierNotYetAckd___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(*(a1 + 32) + 72) preparedStatementForPattern:{@"INSERT INTO IDS_IDENTIFIER_NOT_YET_ACKD (IDS_IDENTIFIER, TYPE, DATE_TO_RESEND, RESEND_INTERVAL) VALUES (?, ?, NULL, ?)"}];
  [NNMKSQLiteUtils bindString:v2[1] intoStatement:v3 paramIndex:1];
  [NNMKSQLiteUtils bindString:v2[2] intoStatement:v3 paramIndex:2];
  [NNMKSQLiteUtils bindUnsignedInteger:v2[4] intoStatement:v3 paramIndex:3];
  v4 = [*(*v2 + 72) stepPreparedStatement:v3];
  [NNMKSQLiteUtils closeExecutedPreparedStatement:v3];
  if ([NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:v4])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = *(a1 + 56);
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * v9);
          v11 = [*(*(a1 + 32) + 72) preparedStatementForPattern:{@"INSERT INTO IDS_IDENTIFIER_OBJECT (IDS_IDENTIFIER, OBJECT_ID) VALUES (?, ?)", v15}];
          [NNMKSQLiteUtils bindString:*(a1 + 40) intoStatement:v11 paramIndex:1];
          [NNMKSQLiteUtils bindString:v10 intoStatement:v11 paramIndex:2];
          v12 = [*(*(a1 + 32) + 72) stepPreparedStatement:v11];
          [NNMKSQLiteUtils closeExecutedPreparedStatement:v11];
          if (![NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:v12])
          {

            goto LABEL_12;
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
LABEL_12:
    v13 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      __86__NNMKDeviceSyncRegistry_addObjectIds_type_resendInterval_forIDSIdentifierNotYetAckd___block_invoke_cold_1(v2, v13);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)objectIdsForIDSIdentifierNotYetAckd:(id)ackd type:(id *)type resendInterval:(unint64_t *)interval
{
  ackdCopy = ackd;
  database = self->_database;
  p_database = &self->_database;
  v10 = [(NNMKSQLiteConnection *)database preparedStatementForPattern:@"SELECT O.OBJECT_ID, I.TYPE, I.RESEND_INTERVAL FROM IDS_IDENTIFIER_NOT_YET_ACKD I INNER JOIN IDS_IDENTIFIER_OBJECT O ON O.IDS_IDENTIFIER == I.IDS_IDENTIFIER WHERE I.IDS_IDENTIFIER = ?"];
  [NNMKSQLiteUtils bindString:ackdCopy intoStatement:v10 paramIndex:1];
  v11 = [(NNMKSQLiteConnection *)*p_database stepPreparedStatement:v10];
  array = [MEMORY[0x277CBEB18] array];
  if (![NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:v11])
  {
    v17 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [NNMKDeviceSyncRegistry objectIdsForIDSIdentifierNotYetAckd:v17 type:? resendInterval:?];
    }

    goto LABEL_10;
  }

  if (v11 != 100)
  {
LABEL_10:
    v14 = 0;
    v13 = 0;
    goto LABEL_11;
  }

  v13 = 0;
  v14 = 0;
  do
  {
    v15 = [NNMKSQLiteUtils stringFromStatement:v10 columnIndex:0];
    if (!v13)
    {
      v13 = [NNMKSQLiteUtils stringFromStatement:v10 columnIndex:1];
      v14 = [NNMKSQLiteUtils unsignedIntegerFromStatement:v10 columnIndex:2];
    }

    [array addObject:v15];
    v16 = [(NNMKSQLiteConnection *)*p_database stepPreparedStatement:v10];
  }

  while (v16 == 100);
LABEL_11:
  [NNMKSQLiteUtils closeExecutedPreparedStatement:v10];
  if (type)
  {
    v18 = v13;
    *type = v13;
  }

  if (interval)
  {
    *interval = v14;
  }

  return array;
}

- (id)objectIdsForType:(id)type
{
  typeCopy = type;
  database = self->_database;
  p_database = &self->_database;
  v7 = [(NNMKSQLiteConnection *)database preparedStatementForPattern:@"SELECT O.OBJECT_ID FROM IDS_IDENTIFIER_NOT_YET_ACKD I INNER JOIN IDS_IDENTIFIER_OBJECT O ON O.IDS_IDENTIFIER == I.IDS_IDENTIFIER WHERE I.TYPE = ?"];
  [NNMKSQLiteUtils bindString:typeCopy intoStatement:v7 paramIndex:1];
  v8 = [(NNMKSQLiteConnection *)*p_database stepPreparedStatement:v7];
  array = [MEMORY[0x277CBEB18] array];
  if ([NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:v8])
  {
    if (v8 == 100)
    {
      do
      {
        v10 = [NNMKSQLiteUtils stringFromStatement:v7 columnIndex:0];
        [array addObject:v10];
        v11 = [(NNMKSQLiteConnection *)*p_database stepPreparedStatement:v7];
      }

      while (v11 == 100);
    }
  }

  else
  {
    v12 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKDeviceSyncRegistry *)typeCopy objectIdsForType:v12];
    }
  }

  [NNMKSQLiteUtils closeExecutedPreparedStatement:v7];

  return array;
}

- (id)typeForIDSIdentifierNotYetAckd:(id)ackd
{
  p_database = &self->_database;
  database = self->_database;
  ackdCopy = ackd;
  v6 = [(NNMKSQLiteConnection *)database preparedStatementForPattern:@"SELECT TYPE FROM IDS_IDENTIFIER_NOT_YET_ACKD WHERE IDS_IDENTIFIER = ?"];
  [NNMKSQLiteUtils bindString:ackdCopy intoStatement:v6 paramIndex:1];

  if (+[NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:](NNMKSQLiteUtils, "isResponseOkFromPreparedStatementExecution:", [*p_database stepPreparedStatement:v6]))
  {
    v7 = [NNMKSQLiteUtils stringFromStatement:v6 columnIndex:0];
  }

  else
  {
    v8 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKDeviceSyncRegistry *)p_database typeForIDSIdentifierNotYetAckd:v8];
    }

    v7 = 0;
  }

  [NNMKSQLiteUtils closeExecutedPreparedStatement:v6];

  return v7;
}

- (void)markIDSIdentifierAsAckd:(id)ackd
{
  ackdCopy = ackd;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__NNMKDeviceSyncRegistry_markIDSIdentifierAsAckd___block_invoke;
  v6[3] = &unk_279935CD8;
  v6[4] = self;
  v7 = ackdCopy;
  v5 = ackdCopy;
  [(NNMKDeviceSyncRegistry *)self _insureTransactionFor:v6];
}

uint64_t __50__NNMKDeviceSyncRegistry_markIDSIdentifierAsAckd___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  v3 = [*(*(a1 + 32) + 72) preparedStatementForPattern:@"DELETE FROM IDS_IDENTIFIER_NOT_YET_ACKD WHERE IDS_IDENTIFIER = ?"];
  v5 = *(a1 + 40);
  v4 = (a1 + 40);
  [NNMKSQLiteUtils bindString:v5 intoStatement:v3 paramIndex:1];
  if (!+[NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:](NNMKSQLiteUtils, "isResponseOkFromPreparedStatementExecution:", [*(*v2 + 72) stepPreparedStatement:v3]))
  {
    v6 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      __50__NNMKDeviceSyncRegistry_markIDSIdentifierAsAckd___block_invoke_cold_1(v4, v2, v6);
    }
  }

  [NNMKSQLiteUtils closeExecutedPreparedStatement:v3];
  v7 = [*(*v2 + 72) preparedStatementForPattern:@"DELETE FROM IDS_IDENTIFIER_OBJECT WHERE IDS_IDENTIFIER = ?"];
  [NNMKSQLiteUtils bindString:*v4 intoStatement:v7 paramIndex:1];
  if (!+[NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:](NNMKSQLiteUtils, "isResponseOkFromPreparedStatementExecution:", [*(*v2 + 72) stepPreparedStatement:v7]))
  {
    v8 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      __50__NNMKDeviceSyncRegistry_markIDSIdentifierAsAckd___block_invoke_cold_2(v4, v2, v8);
    }
  }

  return [NNMKSQLiteUtils closeExecutedPreparedStatement:v7];
}

- (void)rescheduleIDSIdentifier:(id)identifier resendInterval:(unint64_t)interval withDateToResend:(id)resend errorCode:(int64_t)code
{
  identifierCopy = identifier;
  database = self->_database;
  p_database = &self->_database;
  resendCopy = resend;
  v14 = [(NNMKSQLiteConnection *)database preparedStatementForPattern:@"UPDATE IDS_IDENTIFIER_NOT_YET_ACKD SET RESEND_INTERVAL = ?, DATE_TO_RESEND = ?, ERROR_CODE = ? WHERE IDS_IDENTIFIER = ?"];
  [NNMKSQLiteUtils bindUnsignedInteger:interval intoStatement:v14 paramIndex:1];
  [NNMKSQLiteUtils bindDate:resendCopy intoStatement:v14 paramIndex:2];

  [NNMKSQLiteUtils bindInteger:code intoStatement:v14 paramIndex:3];
  [NNMKSQLiteUtils bindString:identifierCopy intoStatement:v14 paramIndex:4];
  v15 = [(NNMKSQLiteConnection *)*p_database stepPreparedStatement:v14];
  [NNMKSQLiteUtils closeExecutedPreparedStatement:v14];
  if (![NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:v15])
  {
    v16 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [NNMKDeviceSyncRegistry rescheduleIDSIdentifier:identifierCopy resendInterval:p_database withDateToResend:v16 errorCode:?];
    }
  }
}

- (void)prepareIDSIdentifiersForResendForErrorCode:(int64_t)code
{
  p_database = &self->_database;
  v5 = [(NNMKSQLiteConnection *)self->_database preparedStatementForPattern:@"UPDATE IDS_IDENTIFIER_NOT_YET_ACKD SET DATE_TO_RESEND = ?, RESEND_INTERVAL = ?, ERROR_CODE = ? WHERE ERROR_CODE = ?"];
  date = [MEMORY[0x277CBEAA8] date];
  [NNMKSQLiteUtils bindDate:date intoStatement:v5 paramIndex:1];

  [NNMKSQLiteUtils bindUnsignedInteger:0 intoStatement:v5 paramIndex:2];
  [NNMKSQLiteUtils bindInteger:0 intoStatement:v5 paramIndex:3];
  [NNMKSQLiteUtils bindInteger:code intoStatement:v5 paramIndex:4];
  v7 = [(NNMKSQLiteConnection *)*p_database stepPreparedStatement:v5];
  [NNMKSQLiteUtils closeExecutedPreparedStatement:v5];
  if (![NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:v7])
  {
    v8 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKDeviceSyncRegistry *)p_database prepareIDSIdentifiersForResendForErrorCode:v8];
    }
  }
}

- (id)datesForIDSIdentifiersScheduledToBeResent
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  database = self->_database;
  p_database = &self->_database;
  v6 = [(NNMKSQLiteConnection *)database preparedStatementForPattern:@"SELECT IDS_IDENTIFIER, DATE_TO_RESEND FROM IDS_IDENTIFIER_NOT_YET_ACKD WHERE DATE_TO_RESEND IS NOT NULL"];
  v7 = [(NNMKSQLiteConnection *)*p_database stepPreparedStatement:v6];
  if ([NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:v7])
  {
    if (v7 == 100)
    {
      do
      {
        v8 = [NNMKSQLiteUtils stringFromStatement:v6 columnIndex:0];
        v9 = [NNMKSQLiteUtils dateFromStatement:v6 columnIndex:1];
        [dictionary setObject:v9 forKeyedSubscript:v8];
        v10 = [(NNMKSQLiteConnection *)*p_database stepPreparedStatement:v6];
      }

      while (v10 == 100);
    }
  }

  else
  {
    v11 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKDeviceSyncRegistry *)p_database datesForIDSIdentifiersScheduledToBeResent];
    }
  }

  [NNMKSQLiteUtils closeExecutedPreparedStatement:v6];

  return dictionary;
}

- (void)deleteObjectId:(id)id fromIDSIdentifiersNotYetAckdOfType:(id)type
{
  v30 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v7 = [(NNMKDeviceSyncRegistry *)self _idsIdentifiersForObjectId:idCopy type:type];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v22;
    *&v9 = 138543618;
    v18 = v9;
    do
    {
      v12 = 0;
      do
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v21 + 1) + 8 * v12);
        v14 = [(NNMKSQLiteConnection *)self->_database preparedStatementForPattern:@"DELETE FROM IDS_IDENTIFIER_OBJECT WHERE OBJECT_ID = ? AND IDS_IDENTIFIER = ?", v18];
        [NNMKSQLiteUtils bindString:idCopy intoStatement:v14 paramIndex:1];
        [NNMKSQLiteUtils bindString:v13 intoStatement:v14 paramIndex:2];
        if (![NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:[(NNMKSQLiteConnection *)self->_database stepPreparedStatement:v14]])
        {
          v15 = qword_28144D620;
          if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
          {
            database = self->_database;
            v16 = v15;
            lastErrorMessage = [(NNMKSQLiteConnection *)database lastErrorMessage];
            *buf = v18;
            v26 = idCopy;
            v27 = 2114;
            v28 = lastErrorMessage;
            _os_log_error_impl(&dword_25B19F000, v16, OS_LOG_TYPE_ERROR, "Error deleting Object Id from IDS Identifiers (Object Id: %{public}@ - Error: %{public}@).", buf, 0x16u);
          }
        }

        [NNMKSQLiteUtils closeExecutedPreparedStatement:v14];
        ++v12;
      }

      while (v10 != v12);
      v10 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v10);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_idsIdentifiersForObjectId:(id)id type:(id)type
{
  idCopy = id;
  typeCopy = type;
  database = self->_database;
  p_database = &self->_database;
  v10 = [(NNMKSQLiteConnection *)database preparedStatementForPattern:@"select I.IDS_IDENTIFIER FROM IDS_IDENTIFIER_NOT_YET_ACKD I INNER JOIN IDS_IDENTIFIER_OBJECT O ON O.IDS_IDENTIFIER == I.IDS_IDENTIFIER WHERE O.OBJECT_ID = ? AND TYPE = ?"];
  [NNMKSQLiteUtils bindString:idCopy intoStatement:v10 paramIndex:1];
  [NNMKSQLiteUtils bindString:typeCopy intoStatement:v10 paramIndex:2];
  v11 = [(NNMKSQLiteConnection *)*p_database stepPreparedStatement:v10];
  array = [MEMORY[0x277CBEB18] array];
  if ([NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:v11])
  {
    if (v11 == 100)
    {
      do
      {
        v13 = [NNMKSQLiteUtils stringFromStatement:v10 columnIndex:0];
        [array addObject:v13];
        v14 = [(NNMKSQLiteConnection *)*p_database stepPreparedStatement:v10];
      }

      while (v14 == 100);
    }
  }

  else
  {
    v15 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [NNMKDeviceSyncRegistry _idsIdentifiersForObjectId:v15 type:?];
    }
  }

  [NNMKSQLiteUtils closeExecutedPreparedStatement:v10];

  return array;
}

- (void)_loadAllControlValues
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(self, a2);
  lastErrorMessage = [OUTLINED_FUNCTION_5() lastErrorMessage];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_setControlValueForKey:(id)key withBlockForBinding:(id)binding
{
  keyCopy = key;
  database = self->_database;
  p_database = &self->_database;
  bindingCopy = binding;
  v10 = [(NNMKSQLiteConnection *)database preparedStatementForPattern:@"INSERT OR REPLACE INTO CONTROL (KEY, VALUE) VALUES (?, ?)"];
  [NNMKSQLiteUtils bindString:keyCopy intoStatement:v10 paramIndex:1];
  bindingCopy[2](bindingCopy, v10, 2);

  if (!+[NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:](NNMKSQLiteUtils, "isResponseOkFromPreparedStatementExecution:", [*p_database stepPreparedStatement:v10]))
  {
    v11 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKDeviceSyncRegistry *)keyCopy _setControlValueForKey:v11 withBlockForBinding:?];
    }
  }

  [NNMKSQLiteUtils closeExecutedPreparedStatement:v10];
}

- (void)_removeControlValueForKey:(id)key
{
  keyCopy = key;
  database = self->_database;
  p_database = &self->_database;
  v7 = [(NNMKSQLiteConnection *)database preparedStatementForPattern:@"DELETE FROM CONTROL WHERE KEY = ?"];
  [NNMKSQLiteUtils bindString:keyCopy intoStatement:v7 paramIndex:1];
  if (!+[NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:](NNMKSQLiteUtils, "isResponseOkFromPreparedStatementExecution:", [*p_database stepPreparedStatement:v7]))
  {
    v8 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKDeviceSyncRegistry *)keyCopy _removeControlValueForKey:v8];
    }
  }

  [NNMKSQLiteUtils closeExecutedPreparedStatement:v7];
}

- (void)_deleteAllObjectsFromTable:(id)table
{
  tableCopy = table;
  database = self->_database;
  p_database = &self->_database;
  tableCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"DELETE FROM %@", tableCopy];
  v8 = [(NNMKSQLiteConnection *)database preparedStatementForPattern:tableCopy];

  if (!+[NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:](NNMKSQLiteUtils, "isResponseOkFromPreparedStatementExecution:", [*p_database stepPreparedStatement:v8]))
  {
    v9 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKDeviceSyncRegistry *)tableCopy _deleteAllObjectsFromTable:v9];
    }
  }

  [NNMKSQLiteUtils closeExecutedPreparedStatement:v8];
}

- (void)_deleteAllObjectsFromTable:(id)table mailboxId:(id)id
{
  tableCopy = table;
  database = self->_database;
  p_database = &self->_database;
  v9 = MEMORY[0x277CCACA8];
  idCopy = id;
  tableCopy = [v9 stringWithFormat:@"DELETE FROM %@ WHERE MAILBOX_ID = ?", tableCopy];
  v12 = [(NNMKSQLiteConnection *)database preparedStatementForPattern:tableCopy];

  [NNMKSQLiteUtils bindString:idCopy intoStatement:v12 paramIndex:1];
  if (!+[NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:](NNMKSQLiteUtils, "isResponseOkFromPreparedStatementExecution:", [*p_database stepPreparedStatement:v12]))
  {
    v13 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKDeviceSyncRegistry *)tableCopy _deleteAllObjectsFromTable:v13];
    }
  }

  [NNMKSQLiteUtils closeExecutedPreparedStatement:v12];
}

- (id)_selectSyncedMessagesWhere:(id)where blockForBinding:(id)binding
{
  whereCopy = where;
  bindingCopy = binding;
  [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT ID, STATUS, STATUS_VERSION, DATE_RECEIVED, USED_PROTECTED_CHANNEL, USED_NOTIFICATION_PRIORITY, CONTENT_SYNCED, CONTENT_SYNCED_NOTIFICATION_PRIORITY, CONTENT_SYNCED_BECAUSE_USER_REQUESTED, CONTENT_REQUESTED_BY_USER, (SELECT group_concat(T.CONTENT_ID, \n) FROM ATTACHMENT_NOT_SYNCED T WHERE T.MESSAGE_ID == ID GROUP BY T.MESSAGE_ID) AS ATTACHMENTS_NOT_SYNCED, CONVERSATION_ID, RESEND_REQUESTED, RESEND_INTERVAL, CONTENT_RESEND_INTERVAL, MAILBOX_ID, THREAD_SPECIFIC, SPECIAL_MAILBOX_SPECIFIC, SANITIZED_ID FROM SYNCED_MESSAGE WHERE %@ ORDER BY DATE_RECEIVED DESC", whereCopy];
  v24 = p_database = &self->_database;
  v9 = [(NNMKSQLiteConnection *)self->_database preparedStatementForPattern:?];
  bindingCopy[2](bindingCopy, v9);
  v10 = [(NNMKSQLiteConnection *)self->_database stepPreparedStatement:v9];
  array = [MEMORY[0x277CBEB18] array];
  if ([NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:v10])
  {
    if (v10 == 100)
    {
      do
      {
        v12 = objc_alloc_init(NNMKSyncedMessage);
        v13 = [NNMKSQLiteUtils stringFromStatement:v9 columnIndex:0];
        [(NNMKSyncedMessage *)v12 setMessageId:v13];

        messageId = [(NNMKSyncedMessage *)v12 messageId];

        if (messageId)
        {
          [(NNMKSyncedMessage *)v12 setStatus:[NNMKSQLiteUtils unsignedIntegerFromStatement:v9 columnIndex:1]];
          [(NNMKSyncedMessage *)v12 setStatusVersion:[NNMKSQLiteUtils unsignedIntegerFromStatement:v9 columnIndex:2]];
          v15 = [NNMKSQLiteUtils dateFromStatement:v9 columnIndex:3];
          [(NNMKSyncedMessage *)v12 setDateReceived:v15];

          [(NNMKSyncedMessage *)v12 setUsedNotificationPriorityForMessageSync:[NNMKSQLiteUtils BOOLFromStatement:v9 columnIndex:5]];
          [(NNMKSyncedMessage *)v12 setContentSynced:[NNMKSQLiteUtils BOOLFromStatement:v9 columnIndex:6]];
          [(NNMKSyncedMessage *)v12 setContentSyncedUsingNotificationPriority:[NNMKSQLiteUtils BOOLFromStatement:v9 columnIndex:7]];
          [(NNMKSyncedMessage *)v12 setContentSyncedBecauseUserRequested:[NNMKSQLiteUtils BOOLFromStatement:v9 columnIndex:8]];
          [(NNMKSyncedMessage *)v12 setContentRequestedByUser:[NNMKSQLiteUtils BOOLFromStatement:v9 columnIndex:9]];
          v16 = [NNMKSQLiteUtils stringFromStatement:v9 columnIndex:10];
          v17 = [(NNMKDeviceSyncRegistry *)self _ungroupGroupedValue:v16];
          [(NNMKSyncedMessage *)v12 setAttachmentsContentIdsNotYetSynced:v17];

          v18 = [NNMKSQLiteUtils stringFromStatement:v9 columnIndex:11];
          [(NNMKSyncedMessage *)v12 setConversationId:v18];

          [(NNMKSyncedMessage *)v12 setResendRequested:[NNMKSQLiteUtils BOOLFromStatement:v9 columnIndex:12]];
          [(NNMKSyncedMessage *)v12 setResendInterval:[NNMKSQLiteUtils unsignedIntegerFromStatement:v9 columnIndex:13]];
          [(NNMKSyncedMessage *)v12 setContentResendInterval:[NNMKSQLiteUtils unsignedIntegerFromStatement:v9 columnIndex:14]];
          v19 = [NNMKSQLiteUtils stringFromStatement:v9 columnIndex:15];
          [(NNMKSyncedMessage *)v12 setMailboxId:v19];

          [(NNMKSyncedMessage *)v12 setIsThreadSpecific:[NNMKSQLiteUtils BOOLFromStatement:v9 columnIndex:16]];
          [(NNMKSyncedMessage *)v12 setIsSpecialMailboxSpecific:[NNMKSQLiteUtils unsignedIntegerFromStatement:v9 columnIndex:17]];
          v20 = [NNMKSQLiteUtils stringFromStatement:v9 columnIndex:18];
          [(NNMKSyncedMessage *)v12 setSanitizedMessageId:v20];

          [array addObject:v12];
        }

        v21 = [(NNMKSQLiteConnection *)*p_database stepPreparedStatement:v9];
      }

      while (v21 == 100);
    }
  }

  else
  {
    v22 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKDeviceSyncRegistry *)whereCopy _selectSyncedMessagesWhere:v22 blockForBinding:?];
    }
  }

  [NNMKSQLiteUtils closeExecutedPreparedStatement:v9];

  return array;
}

- (id)_selectSyncedMessagesIdsWhere:(id)where count:(unint64_t)count blockForBinding:(id)binding
{
  whereCopy = where;
  bindingCopy = binding;
  whereCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT ID FROM SYNCED_MESSAGE WHERE %@ ORDER BY DATE_RECEIVED DESC", whereCopy];
  v11 = whereCopy;
  if (count)
  {
    v12 = [whereCopy stringByAppendingFormat:@" LIMIT %lu", count];

    v11 = v12;
  }

  database = self->_database;
  p_database = &self->_database;
  v15 = [(NNMKSQLiteConnection *)database preparedStatementForPattern:v11];
  bindingCopy[2](bindingCopy, v15);
  v16 = [(NNMKSQLiteConnection *)*p_database stepPreparedStatement:v15];
  array = [MEMORY[0x277CBEB18] array];
  if ([NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:v16])
  {
    if (v16 == 100)
    {
      do
      {
        v18 = [NNMKSQLiteUtils stringFromStatement:v15 columnIndex:0];
        if (v18)
        {
          [array addObject:v18];
        }

        v19 = [(NNMKSQLiteConnection *)*p_database stepPreparedStatement:v15];
      }

      while (v19 == 100);
    }
  }

  else
  {
    v20 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [NNMKDeviceSyncRegistry _selectSyncedMessagesIdsWhere:whereCopy count:p_database blockForBinding:v20];
    }
  }

  [NNMKSQLiteUtils closeExecutedPreparedStatement:v15];

  return array;
}

- (id)_selectSyncedAccountsWhere:(id)where blockForBinding:(id)binding
{
  whereCopy = where;
  bindingCopy = binding;
  if (whereCopy)
  {
    whereCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"WHERE %@", whereCopy];
  }

  else
  {
    whereCopy = &stru_286C69F68;
  }

  v31 = whereCopy;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT ID, DISPLAY_NAME, SHOULD_ARCHIVE, EMAIL_ADDRESSES, DEFAULT_ADDRESS, RESEND_REQUESTED, RESEND_INTERVAL, SOURCE_TYPE, USERNAME, LOCAL_ID, TYPE_IDENTIFIER, EMAIL_ADDRESS_TOKEN, PCC_EMAIL_ADDRESS FROM SYNCED_ACCOUNT %@", whereCopy];
  database = self->_database;
  p_database = &self->_database;
  v30 = v9;
  v12 = [(NNMKSQLiteConnection *)database preparedStatementForPattern:?];
  bindingCopy[2](bindingCopy, v12);
  v13 = [(NNMKSQLiteConnection *)*p_database stepPreparedStatement:v12];
  array = [MEMORY[0x277CBEB18] array];
  if ([NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:v13])
  {
    if (v13 == 100)
    {
      do
      {
        v15 = objc_alloc_init(NNMKSyncedAccount);
        v16 = [NNMKSQLiteUtils stringFromStatement:v12 columnIndex:0];
        [(NNMKSyncedAccount *)v15 setAccountId:v16];

        accountId = [(NNMKSyncedAccount *)v15 accountId];

        if (accountId)
        {
          v18 = [NNMKSQLiteUtils stringFromStatement:v12 columnIndex:1];
          [(NNMKSyncedAccount *)v15 setDisplayName:v18];

          [(NNMKSyncedAccount *)v15 setShouldArchive:[NNMKSQLiteUtils BOOLFromStatement:v12 columnIndex:2]];
          v19 = [NNMKSQLiteUtils stringFromStatement:v12 columnIndex:3];
          v20 = [v19 componentsSeparatedByString:@"\n"];
          [(NNMKSyncedAccount *)v15 setEmailAddresses:v20];

          v21 = [NNMKSQLiteUtils stringFromStatement:v12 columnIndex:4];
          [(NNMKSyncedAccount *)v15 setDefaultEmailAddress:v21];

          [(NNMKSyncedAccount *)v15 setResendRequested:[NNMKSQLiteUtils BOOLFromStatement:v12 columnIndex:5]];
          [(NNMKSyncedAccount *)v15 setResendInterval:[NNMKSQLiteUtils unsignedIntegerFromStatement:v12 columnIndex:6]];
          [(NNMKSyncedAccount *)v15 setSourceType:[NNMKSQLiteUtils unsignedIntegerFromStatement:v12 columnIndex:7]];
          v22 = [NNMKSQLiteUtils stringFromStatement:v12 columnIndex:8];
          [(NNMKSyncedAccount *)v15 setUsername:v22];

          v23 = [NNMKSQLiteUtils stringFromStatement:v12 columnIndex:9];
          [(NNMKSyncedAccount *)v15 setLocalId:v23];

          v24 = [NNMKSQLiteUtils stringFromStatement:v12 columnIndex:10];
          [(NNMKSyncedAccount *)v15 setTypeIdentifier:v24];

          v25 = [NNMKSQLiteUtils stringFromStatement:v12 columnIndex:11];
          [(NNMKSyncedAccount *)v15 setEmailAddressToken:v25];

          v26 = [NNMKSQLiteUtils stringFromStatement:v12 columnIndex:12];
          [(NNMKSyncedAccount *)v15 setPccEmailAddress:v26];

          [array addObject:v15];
        }

        v27 = [(NNMKSQLiteConnection *)*p_database stepPreparedStatement:v12];
      }

      while (v27 == 100);
    }
  }

  else
  {
    v28 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKDeviceSyncRegistry *)v31 _selectSyncedAccountsWhere:v28 blockForBinding:?];
    }
  }

  [NNMKSQLiteUtils closeExecutedPreparedStatement:v12];

  return array;
}

- (id)_ungroupGroupedValue:(id)value
{
  v3 = MEMORY[0x277CBEB58];
  v4 = [value componentsSeparatedByString:@"\n"];
  v5 = [v3 setWithArray:v4];

  return v5;
}

- (void)_insureTransactionFor:(id)for
{
  forCopy = for;
  if ([(NNMKSQLiteConnection *)self->_database isInTransaction])
  {
    forCopy[2]();
  }

  else
  {
    beginTransaction = [(NNMKSQLiteConnection *)self->_database beginTransaction];
    forCopy[2]();
    if (beginTransaction)
    {
      [(NNMKSQLiteConnection *)self->_database commitTransaction];
    }
  }
}

- (BOOL)hasMailboxSyncedActive
{
  p_database = &self->_database;
  v3 = [(NNMKSQLiteConnection *)self->_database preparedStatementForPattern:@"SELECT 1 FROM MAILBOX WHERE SYNC_ACTIVE = 1"];
  v4 = [(NNMKSQLiteConnection *)*p_database stepPreparedStatement:v3];
  if ([NNMKSQLiteUtils isResponseOkFromPreparedStatementExecution:v4])
  {
    v5 = v4 == 100;
  }

  else
  {
    v6 = qword_28144D620;
    if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_ERROR))
    {
      [(NNMKDeviceSyncRegistry *)p_database hasMailboxSyncedActive];
    }

    v5 = 0;
  }

  [NNMKSQLiteUtils closeExecutedPreparedStatement:v3];
  return v5;
}

- (void)initWithPath:(uint64_t *)a1 .cold.3(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(a1, a2);
  v4 = [OUTLINED_FUNCTION_5() lastErrorMessage];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)containsSyncedMessageForMessageWithId:(uint64_t *)a1 .cold.1(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(a1, a2);
  v4 = [OUTLINED_FUNCTION_5() lastErrorMessage];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

void __51__NNMKDeviceSyncRegistry_addOrUpdateSyncedMessage___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9(a1, a2);
  v4 = [OUTLINED_FUNCTION_5() lastErrorMessage];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

void __51__NNMKDeviceSyncRegistry_addOrUpdateSyncedMessage___block_invoke_cold_2(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9(a1, a2);
  v4 = [OUTLINED_FUNCTION_5() lastErrorMessage];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

void __51__NNMKDeviceSyncRegistry_addOrUpdateSyncedMessage___block_invoke_cold_3(uint8_t *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(*a2 + 72);
  v7 = a3;
  v8 = [v6 lastErrorMessage];
  *a1 = 138543362;
  *a4 = v8;
  _os_log_error_impl(&dword_25B19F000, v7, OS_LOG_TYPE_ERROR, "Error adding attachment not synced (%{public}@).", a1, 0xCu);
}

- (void)removeSyncedMessageForMessageWithId:(uint64_t *)a1 .cold.1(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(a1, a2);
  v4 = [OUTLINED_FUNCTION_5() lastErrorMessage];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)oldestDateReceivedForMailboxId:(uint64_t *)a1 .cold.1(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(a1, a2);
  v4 = [OUTLINED_FUNCTION_5() lastErrorMessage];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)syncedMessagesCountForMailboxId:(uint64_t *)a1 .cold.1(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(a1, a2);
  v4 = [OUTLINED_FUNCTION_5() lastErrorMessage];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)messageIdForSanitizedMessageId:(uint64_t *)a1 .cold.1(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(a1, a2);
  v4 = [OUTLINED_FUNCTION_5() lastErrorMessage];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

void __73__NNMKDeviceSyncRegistry_removeSyncedMessagesBeforeDateReceived_mailbox___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9(a1, a2);
  v4 = [OUTLINED_FUNCTION_5() lastErrorMessage];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addOrUpdateSyncedAccount:(uint64_t *)a1 .cold.1(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(a1, a2);
  v4 = [OUTLINED_FUNCTION_5() lastErrorMessage];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeSyncedAccountForAccountWithId:(uint64_t *)a1 .cold.1(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(a1, a2);
  v4 = [OUTLINED_FUNCTION_5() lastErrorMessage];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)syncedAccountIdsResendRequested
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(self, a2);
  lastErrorMessage = [OUTLINED_FUNCTION_5() lastErrorMessage];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)accountSourceTypeForMessageId:(uint64_t *)a1 .cold.1(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15(a1, a2);
  v4 = [OUTLINED_FUNCTION_6() lastErrorMessage];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_25B19F000, v5, v6, "Error selecting account source type for message (%{public}@ - %{public}@).", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)accountSourceTypeForMailboxId:(uint64_t *)a1 .cold.1(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15(a1, a2);
  v4 = [OUTLINED_FUNCTION_6() lastErrorMessage];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_25B19F000, v5, v6, "Error selecting account source type for mailbox (%{public}@ - %{public}@).", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)accountSourceTypeForAccountId:(uint64_t *)a1 .cold.1(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15(a1, a2);
  v4 = [OUTLINED_FUNCTION_6() lastErrorMessage];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_25B19F000, v5, v6, "Error selecting account source type (%{public}@ - %{public}@).", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)accountIdForUsername:(uint64_t *)a1 .cold.1(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(a1, a2);
  v4 = [OUTLINED_FUNCTION_5() lastErrorMessage];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateSourceType:(uint64_t *)a1 forAccountId:(void *)a2 .cold.1(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(a1, a2);
  v4 = [OUTLINED_FUNCTION_5() lastErrorMessage];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateSourceType:forAccountId:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_25B19F000, v0, OS_LOG_TYPE_DEBUG, "Account source type update for account (Id: %{public}@).", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)addOrUpdateMailbox:(void *)a1 .cold.1(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_5() mailboxId];
  OUTLINED_FUNCTION_4();
  _os_log_fault_impl(&dword_25B19F000, v1, OS_LOG_TYPE_FAULT, "Saving mailbox without url. %{public}@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)addOrUpdateMailbox:(uint64_t *)a1 .cold.2(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(a1, a2);
  v4 = [OUTLINED_FUNCTION_5() lastErrorMessage];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)addOrUpdateMailbox:(void *)a1 .cold.3(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_5() mailboxId];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_25B19F000, v1, OS_LOG_TYPE_DEBUG, "Mailbox ADDED OR UPDATED to SQLite database (Id: %{public}@).", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

- (void)addOrUpdateMailbox:(void *)a1 .cold.4(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_5() mailboxId];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)deleteMailboxWithId:(uint64_t *)a1 startTransaction:(void *)a2 .cold.1(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_15(a1, a2);
  v4 = [OUTLINED_FUNCTION_6() lastErrorMessage];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3(&dword_25B19F000, v5, v6, "Error deleting  mailboxes with id %{public}@ (%{public}@).", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)deleteMailboxWithId:startTransaction:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_25B19F000, v0, OS_LOG_TYPE_DEBUG, "Maibox with id %{public}@ deleted successfully.", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)syncVersionForMailboxId:(uint64_t *)a1 .cold.1(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(a1, a2);
  v4 = [OUTLINED_FUNCTION_5() lastErrorMessage];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateSyncVersion:(uint64_t *)a1 forMailboxId:(void *)a2 .cold.1(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(a1, a2);
  v4 = [OUTLINED_FUNCTION_5() lastErrorMessage];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)insertDeletedMessageId:(uint64_t *)a1 mailboxId:(void *)a2 .cold.1(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(a1, a2);
  v4 = [OUTLINED_FUNCTION_5() lastErrorMessage];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)mailboxIdForDeletedMessageId:(uint64_t *)a1 .cold.1(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(a1, a2);
  v4 = [OUTLINED_FUNCTION_5() lastErrorMessage];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_selectMailboxesWhere:(void *)a3 blockForBinding:.cold.1(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11(a1, a2, a3);
  v5 = [OUTLINED_FUNCTION_6() lastErrorMessage];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25B19F000, v6, v7, "Error selecting mailboxes where %{public}@ (%{public}@).", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_selectMailboxesWhere:(os_log_t)log blockForBinding:.cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_25B19F000, log, OS_LOG_TYPE_ERROR, "Retrived mailbox with empty id. Ignoring...", buf, 2u);
}

- (void)setProgress:(uint64_t *)a1 forComposedMessageWithId:(void *)a2 .cold.1(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(a1, a2);
  v4 = [OUTLINED_FUNCTION_5() lastErrorMessage];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)progressForComposedMessageWithId:(uint64_t *)a1 .cold.1(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(a1, a2);
  v4 = [OUTLINED_FUNCTION_5() lastErrorMessage];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)pendingComposedMessageIds
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(self, a2);
  lastErrorMessage = [OUTLINED_FUNCTION_5() lastErrorMessage];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)removeProgressForComposedMessageWithId:(uint64_t *)a1 .cold.1(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(a1, a2);
  v4 = [OUTLINED_FUNCTION_5() lastErrorMessage];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)attachmentsForComposedMessageId:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7(&dword_25B19F000, v0, v1, "Unable to unarchive attachments for composed message: %{public}@ Error: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)attachmentsFromURL:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7(&dword_25B19F000, v0, v1, "Unable to unarchive attachments for URL: %{public}@ Error: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)saveAttachmentsForComposedMessageId:temporaryURL:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7(&dword_25B19F000, v0, v1, "Unable to save attachments for composedMessageId: %{public}@ Error: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_removeAttachmentsForComposedMessageId:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7(&dword_25B19F000, v0, v1, "Unable to delete attachments for composedMessageId: %{public}@ Error: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

void __86__NNMKDeviceSyncRegistry_addObjectIds_type_resendInterval_forIDSIdentifierNotYetAckd___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_9(a1, a2);
  v4 = [OUTLINED_FUNCTION_5() lastErrorMessage];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)objectIdsForIDSIdentifierNotYetAckd:(uint64_t *)a1 type:(void *)a2 resendInterval:.cold.1(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(a1, a2);
  v4 = [OUTLINED_FUNCTION_5() lastErrorMessage];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)objectIdsForType:(void *)a3 .cold.1(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11(a1, a2, a3);
  v5 = [OUTLINED_FUNCTION_6() lastErrorMessage];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25B19F000, v6, v7, "Error retrieving Object Ids for type. (%{public}@, %{public}@).", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)typeForIDSIdentifierNotYetAckd:(uint64_t *)a1 .cold.1(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(a1, a2);
  v4 = [OUTLINED_FUNCTION_5() lastErrorMessage];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

void __50__NNMKDeviceSyncRegistry_markIDSIdentifierAsAckd___block_invoke_cold_1(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_14(a1, a2, a3);
  v5 = [OUTLINED_FUNCTION_5() lastErrorMessage];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x277D85DE8];
}

void __50__NNMKDeviceSyncRegistry_markIDSIdentifierAsAckd___block_invoke_cold_2(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_14(a1, a2, a3);
  v5 = [OUTLINED_FUNCTION_5() lastErrorMessage];
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x16u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)rescheduleIDSIdentifier:(void *)a3 resendInterval:withDateToResend:errorCode:.cold.1(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11(a1, a2, a3);
  v5 = [OUTLINED_FUNCTION_6() lastErrorMessage];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25B19F000, v6, v7, "Error rescheduling Object for IDS Identifier (IDS Identifier: %{public}@ - Error: %{public}@).", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)prepareIDSIdentifiersForResendForErrorCode:(uint64_t *)a1 .cold.1(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(a1, a2);
  v4 = [OUTLINED_FUNCTION_5() lastErrorMessage];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)datesForIDSIdentifiersScheduledToBeResent
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(self, a2);
  lastErrorMessage = [OUTLINED_FUNCTION_5() lastErrorMessage];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_idsIdentifiersForObjectId:(uint64_t *)a1 type:(void *)a2 .cold.1(uint64_t *a1, void *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(a1, a2);
  v4 = [OUTLINED_FUNCTION_5() lastErrorMessage];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_setControlValueForKey:(void *)a3 withBlockForBinding:.cold.1(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11(a1, a2, a3);
  v5 = [OUTLINED_FUNCTION_6() lastErrorMessage];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25B19F000, v6, v7, "Error setting control value for key %{public}@ (%{public}@).", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_removeControlValueForKey:(void *)a3 .cold.1(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11(a1, a2, a3);
  v5 = [OUTLINED_FUNCTION_6() lastErrorMessage];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25B19F000, v6, v7, "Error deleting control value for key %{public}@ (%{public}@).", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_deleteAllObjectsFromTable:(void *)a3 .cold.1(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11(a1, a2, a3);
  v5 = [OUTLINED_FUNCTION_6() lastErrorMessage];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25B19F000, v6, v7, "Error deleting all values from table %{public}@ (%{public}@).", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_selectSyncedMessagesWhere:(void *)a3 blockForBinding:.cold.1(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11(a1, a2, a3);
  v5 = [OUTLINED_FUNCTION_6() lastErrorMessage];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25B19F000, v6, v7, "Error selecting synced messages where %{public}@ (%{public}@).", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_selectSyncedMessagesIdsWhere:(uint64_t)a1 count:(uint64_t *)a2 blockForBinding:(void *)a3 .cold.1(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11(a1, a2, a3);
  v5 = [OUTLINED_FUNCTION_6() lastErrorMessage];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25B19F000, v6, v7, "Error selecting synced message ids where %{public}@ (%{public}@).", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_selectSyncedAccountsWhere:(void *)a3 blockForBinding:.cold.1(uint64_t a1, uint64_t *a2, void *a3)
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11(a1, a2, a3);
  v5 = [OUTLINED_FUNCTION_6() lastErrorMessage];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25B19F000, v6, v7, "Error selecting synced accounts where %{public}@ (%{public}@).", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)hasMailboxSyncedActive
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(self, a2);
  lastErrorMessage = [OUTLINED_FUNCTION_5() lastErrorMessage];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0xCu);

  v10 = *MEMORY[0x277D85DE8];
}

@end