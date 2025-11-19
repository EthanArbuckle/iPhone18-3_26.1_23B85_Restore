@interface IMDDatabase
+ (IMDRemoteDatabaseProtocol)database;
+ (IMDRemoteDatabaseProtocol)synchronousDatabase;
+ (id)_databaseClientAsync;
+ (id)_databaseClientSync;
+ (id)_databaseServer;
+ (id)_legacyDatabaseClient;
+ (id)_newSyndicationRangeForCMMMessageItem:(id)a3 syndicationIdentifier:(id)a4 shouldHideFromSyndication:(BOOL)a5;
- (BOOL)_shouldDisplayGroupNameAndPhotoWithRecord:(id)a3;
- (BOOL)_updateSyndicatedMessageItem:(id)a3 newMessageItem:(id)a4 newSyndicationRange:(id)a5;
- (id)_chatGUIDsForChatsWithJunkMessagesOlderThanDate:(id)a3 operation:(IMDSqlOperation *)a4;
- (id)_chatGUIDsForChatsWithRecoverableMessagesOlderThanDate:(id)a3 operation:(IMDSqlOperation *)a4;
- (id)_copyAttachmentRecordsFromCoreSDBResults:(id)a3;
- (id)_copyMessageRecordsFromCoreSDBResults:(id)a3;
- (id)_deleteChatIfEmptyWithGUID:(id)a3 lastMessageDate:(id)a4 operation:(IMDSqlOperation *)a5;
- (id)_initAsSynchronous:(BOOL)a3;
- (id)_loadAttributedBodyTextForMessageWithGUID:(id)a3;
- (id)_loadRecoverableMessagePartsMetadataForChatGUID:(id)a3;
- (id)_messageKeyPathsToColumnsQueryingChatJoinTable:(BOOL)a3 sortDescriptors:(id)a4;
- (id)_mostRecentJunkMessageDateForChatWithGUID:(id)a3 operation:(IMDSqlOperation *)a4;
- (id)_mostRecentRecoverableMessageDateForChatWithGUID:(id)a3 operation:(IMDSqlOperation *)a4;
- (id)_permanentlyDeleteRecoverableMessagesInChatsWithGUIDs:(id)a3 beforeDate:(id)a4;
- (id)_queryForMessageRecordCountWithMessageWhereClause:(id)a3 chatWhereClause:(id)a4 limit:(int64_t)a5;
- (id)_queryForMessageRecordFetchWithMessageWhereClause:(id)a3 chatWhereClause:(id)a4 handleWhereClause:(id)a5 orderByClauses:(id)a6 parentedOnly:(BOOL)a7;
- (id)_restoredAttributedBodyForMessageGUID:(id)a3 withRecoveredAttributedParts:(id)a4;
- (id)_updateAttachmentsSyncStateQueryFor:(int64_t)a3;
- (id)_updateChatsSyncStateQueryFor:(int64_t)a3;
- (id)_updateMessageSyncStateQueryFor:(int64_t)a3;
- (id)_updateMessageSyncedSyndicationRangesQueryFor:(int64_t)a3;
- (id)_updateRecoverableMessageSyncStateForMessageGUIDsQueryFor:(int64_t)a3;
- (id)chatRecordsFilteredByPredicate:(id)a3;
- (id)chatRecordsWithIdentifier:(id)a3;
- (id)copyDuplicateGroupChatRecordsWithLimit:(int64_t)a3;
- (id)handleRecordsFilteredByPredicate:(id)a3;
- (id)loadRecoverableMessagesMetadataGroupedByChatGUID;
- (id)recoverableMessagesMetadataPendingCloudKitDeleteWithLimit:(unint64_t)a3;
- (id)recoverableMessagesMetadataPendingCloudKitSaveWithLimit:(unint64_t)a3 filter:(unint64_t)a4;
- (id)scheduledMessagesMetadataPendingCloudKitDeleteWithLimit:(int64_t)a3;
- (int64_t)_countMessagesExcludingGroupPhotosInChatWithGUID:(id)a3 isRecoverable:(BOOL)a4 operation:(IMDSqlOperation *)a5;
- (void)_deleteTransfersInMessagePartsForChatGUID:(id)a3;
- (void)_fetchChatRecordsWithHandles:(id)a3 allowSubsetMatching:(BOOL)a4 serviceNames:(id)a5 displayName:(id)a6 groupID:(id)a7 style:(unsigned __int8)a8 useOriginalGroupID:(BOOL)a9 completionHandler:(id)a10;
- (void)_fetchMessageRecordsFilteredUsingPredicate:(id)a3 sortedUsingDescriptors:(id)a4 inChatsFilteredUsingPredicate:(id)a5 fromHandlesUsingPredicate:(id)a6 parentedOnly:(BOOL)a7 limit:(unint64_t)a8 completionHandler:(id)a9;
- (void)_insertServiceBasedSyncDeletedChatRecordsForChatWithGUID:(id)a3 lastMessageDate:(id)a4;
- (void)_performPersistenceBlock:(id)a3;
- (void)_permanentlyDeleteJunkMessagesBeforeDate:(id)a3;
- (void)_recoverMessagePartsForChatRecordsWithGUIDs:(id)a3 dateRecovered:(id)a4 operation:(IMDSqlOperation *)a5;
- (void)_removeFromRecoverableMessagePartForMessageGUID:(id)a3 operation:(IMDSqlOperation *)a4;
- (void)_updateMessageItemSyndicationRanges:(id)a3 messagePartDescriptor:(id)a4 shouldHideFromSyndication:(BOOL)a5;
- (void)_updateMessageRecordForGUID:(id)a3 withAttributedBody:(id)a4 dateRecovered:(id)a5 operation:(IMDSqlOperation *)a6;
- (void)_updateMessagesSyncedSyndicationRangesToSyncedForGUIDs:(id)a3;
- (void)addScheduledMessageGUIDandCKRecordToDeleteFromCloudKit:(id)a3 recordID:(id)a4;
- (void)addSyncChatSlices:(id)a3 forChatWithGUID:(id)a4 completionHandler:(id)a5;
- (void)addSyncDeletedChatRecords:(id)a3 completionHandler:(id)a4;
- (void)assignDomainIdentifiers:(id)a3 toChatRecordWithGUID:(id)a4 completionHandler:(id)a5;
- (void)assignIdentifier:(id)a3 toChatRecordWithGUID:(id)a4 forDomain:(id)a5 priority:(int64_t)a6 completionHandler:(id)a7;
- (void)clearExpiredTimeSensitiveMessagesWithCompletionHandler:(id)a3;
- (void)clearRecoverableMessageTombStones;
- (void)copyAllChatsWithUnreadMessagesWithLimit:(int64_t)a3 beforeDate:(id)a4 predicate:(id)a5 completionHandler:(id)a6;
- (void)copyChatsFromSortedIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)copyChatsWithGroupedHandles:(id)a3 style:(int64_t)a4 displayName:(id)a5 completionHandler:(id)a6;
- (void)deleteAttachmentsDirectWithPredicate:(id)a3;
- (void)deleteJunkMessagesOlderThanDays:(int64_t)a3;
- (void)deleteRecoverableMessagesOlderThanDays:(int64_t)a3;
- (void)deleteTombstonedScheduledMessagesWithRecordIDs:(id)a3;
- (void)fetchAttachmentRecordsFilteredUsingPredicate:(id)a3 limit:(unint64_t)a4 completionHandler:(id)a5;
- (void)fetchAttachmentRecordsFilteredUsingPredicate:(id)a3 sortedUsingDescriptors:(id)a4 limit:(unint64_t)a5 completionHandler:(id)a6;
- (void)fetchChatGUIDsForMessageGUIDs:(id)a3 completionHandler:(id)a4;
- (void)fetchChatRecordsFilteredUsingPredicate:(id)a3 sortedUsingDescriptors:(id)a4 limit:(unint64_t)a5 completionHandler:(id)a6;
- (void)fetchChatRecordsFilteredUsingPredicate:(id)a3 sortedUsingLastMessageDateAscending:(BOOL)a4 olderThan:(id)a5 limit:(unint64_t)a6 completionHandler:(id)a7;
- (void)fetchChatRecordsWithPinningIdentifier:(id)a3 completionHandler:(id)a4;
- (void)fetchContactsForIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)fetchCountOfRecordType:(unint64_t)a3 completionHandler:(id)a4;
- (void)fetchDataForKey:(id)a3 completionHandler:(id)a4;
- (void)fetchGroupPhotoPathsForChatsWithGroupIDs:(id)a3 completionHandler:(id)a4;
- (void)fetchHandleRecordsFilteredUsingPredicate:(id)a3 sortedUsingDescriptors:(id)a4 limit:(unint64_t)a5 completionHandler:(id)a6;
- (void)fetchIdentifiersForChatRecordWithGUID:(id)a3 completionHandler:(id)a4;
- (void)fetchIdentifiersForChatRecordWithGUID:(id)a3 domain:(id)a4 completionHandler:(id)a5;
- (void)fetchInteger64ForKey:(id)a3 completionHandler:(id)a4;
- (void)fetchLastMessageRecordForChatRecordWithRowID:(int64_t)a3 completionHandler:(id)a4;
- (void)fetchMessageRecordCountFilteredUsingPredicate:(id)a3 inChatsFilteredUsingPredicate:(id)a4 limit:(unint64_t)a5 completionHandler:(id)a6;
- (void)fetchMessageRecordCountForChatRecordWithGUID:(id)a3 filteredUsingPredicate:(id)a4 limit:(unint64_t)a5 completionHandler:(id)a6;
- (void)fetchMessageRecordWithGUID:(id)a3 excludeRecoverableMessages:(BOOL)a4 completionHandler:(id)a5;
- (void)fetchMessageRecordsFilteredUsingPredicate:(id)a3 sortedUsingDescriptors:(id)a4 inChatsFilteredUsingPredicate:(id)a5 fromHandlesUsingPredicate:(id)a6 limit:(unint64_t)a7 completionHandler:(id)a8;
- (void)fetchMessageRecordsFilteredUsingPredicate:(id)a3 sortedUsingDescriptors:(id)a4 inChatsFilteredUsingPredicate:(id)a5 limit:(unint64_t)a6 completionHandler:(id)a7;
- (void)fetchMessageRecordsFilteredUsingPredicate:(id)a3 sortedUsingDescriptors:(id)a4 limit:(unint64_t)a5 completionHandler:(id)a6;
- (void)fetchMessageRecordsFilteredUsingPredicate:(id)a3 sortedUsingDescriptors:(id)a4 parentedOnly:(BOOL)a5 limit:(unint64_t)a6 completionHandler:(id)a7;
- (void)fetchMessageRecordsForChatRecordWithGUID:(id)a3 filteredUsingPredicate:(id)a4 sortedUsingDescriptors:(id)a5 limit:(unint64_t)a6 completionHandler:(id)a7;
- (void)fetchMessageRowIDsForGUIDs:(id)a3 completionHandler:(id)a4;
- (void)fetchMessagesWithoutChatsCountWithCompletionHandler:(id)a3;
- (void)fetchMetadataForSyndicationIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)fetchScheduledMessageRecordsForChatRecordWithGUID:(id)a3 limit:(unint64_t)a4 completionHandler:(id)a5;
- (void)fetchServicesForChatWithGUID:(id)a3 completionHandler:(id)a4;
- (void)fetchSyncChatSliceForChatWithGUID:(id)a3 serviceName:(id)a4 completionHandler:(id)a5;
- (void)fetchSyncChatSlicesForChatWithGUID:(id)a3 completionHandler:(id)a4;
- (void)fetchTotalMessageCountWithCompletionHandler:(id)a3;
- (void)fetchUnreadIncomingMessagesCount:(id)a3;
- (void)fetchUnreadMessageRecordsForChatsFilteredUsingPredicate:(id)a3 limit:(unint64_t)a4 completionHandler:(id)a5;
- (void)generateUnreadCountReportsForChatsWithGUIDs:(id)a3 completionHandler:(id)a4;
- (void)generateUnreadCountReportsWithCompletionHandler:(id)a3;
- (void)handoffReplyToQueue:(id)a3 block:(id)a4;
- (void)isRecoverablyDeletedMessageGUID:(id)a3 completionHandler:(id)a4;
- (void)markMessageRecordsAsReadWithGUIDs:(id)a3;
- (void)moveMessageRecordsToRecoveryForChatRecordsWithGUIDs:(id)a3 deleteDate:(id)a4;
- (void)moveMessageRecordsToRecoveryForMessageGUIDs:(id)a3 deleteDate:(id)a4;
- (void)permanentlyDeleteRecoverableMessagesInChatsWithGUIDs:(id)a3 completionHandler:(id)a4;
- (void)postSharePlayNotificationForChatGUID:(id)a3 faceTimeConversationUUID:(id)a4 handleIdentifier:(id)a5 localizedApplicationName:(id)a6;
- (void)reassignIdentifierForMessageWithGUID:(id)a3 newGUID:(id)a4 completionHandler:(id)a5;
- (void)recoverMessageRecordsForChatRecordsWithGUIDs:(id)a3;
- (void)reparentMessagesUsingChatIDWithGUIDs:(id)a3 completionHandler:(id)a4;
- (void)reparentableMessagesStartingAtRowID:(int64_t)a3 limit:(int64_t)a4 completionHandler:(id)a5;
- (void)resolveInconsistentGUIDForChatRecordWithGUID:(id)a3 newGUID:(id)a4 completionHandler:(id)a5;
- (void)resolveSpotlightItemIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)splitMergedChatsInDatabaseAtPath:(id)a3 completionHandler:(id)a4;
- (void)storeInteger64:(int64_t)a3 forKey:(id)a4;
- (void)storeRecoverableMessagePartWithBody:(id)a3 forMessageWithGUID:(id)a4 deleteDate:(id)a5;
- (void)unassignIdentifier:(id)a3 fromChatRecordWithGUID:(id)a4 forDomain:(id)a5 completionHandler:(id)a6;
- (void)updateAcceptedContactsInAliasMap:(id)a3 completionHandler:(id)a4;
- (void)updateAttachmentSyndicationRanges:(id)a3 shouldHideFromSyndication:(BOOL)a4;
- (void)updateAttachmentsSyncStatusTo:(int64_t)a3 forGUIDs:(id)a4;
- (void)updateChatsSyncStatusTo:(int64_t)a3 forGUIDs:(id)a4;
- (void)updateMessagesSyncStatusTo:(int64_t)a3 forGUIDs:(id)a4;
- (void)updateMessagesSyncedSyndicationRangesForGUIDs:(id)a3 toStatus:(int64_t)a4;
- (void)updatePendingReviewForChatsWithGUIDs:(id)a3 pendingReview:(BOOL)a4 completionHandler:(id)a5;
- (void)updateRecoverableMessageSyncState:(int64_t)a3 forMessageGUIDs:(id)a4;
- (void)updateRecoverableMessageSyncState:(int64_t)a3 forMessageRowID:(int64_t)a4 onPartIndex:(int64_t)a5;
- (void)updateServicesForChatWithGUID:(id)a3 services:(id)a4 completionHandler:(id)a5;
@end

@implementation IMDDatabase

+ (IMDRemoteDatabaseProtocol)synchronousDatabase
{
  if (objc_msgSend_isServerProcess(a1, a2, v2))
  {
    objc_msgSend__databaseServer(a1, v4, v5);
  }

  else
  {
    objc_msgSend__databaseClientSync(a1, v4, v5);
  }
  v6 = ;

  return v6;
}

+ (id)_databaseClientSync
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7B47484;
  block[3] = &unk_1E7CB6A70;
  block[4] = a1;
  if (qword_1EBA53B48 != -1)
  {
    dispatch_once(&qword_1EBA53B48, block);
  }

  v2 = qword_1EBA53B50;

  return v2;
}

+ (id)_legacyDatabaseClient
{
  if (qword_1EBA53B28 != -1)
  {
    sub_1B7CF17E8();
  }

  v3 = qword_1EBA53B30;

  return v3;
}

+ (id)_databaseServer
{
  if (qword_1EDBE5BD0 != -1)
  {
    sub_1B7AEC614();
  }

  v3 = qword_1EDBE5BC8;

  return v3;
}

- (id)loadRecoverableMessagesMetadataGroupedByChatGUID
{
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Recently Deleted | Will begin counting recoverable messages per chat", buf, 2u);
  }

  *buf = 0;
  v9 = buf;
  v10 = 0x3032000000;
  v11 = sub_1B7AE1A14;
  v12 = sub_1B7AE2520;
  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7AE1EF4;
  v7[3] = &unk_1E7CB8720;
  v7[4] = buf;
  IMDRunSqlOperation(v7);
  v3 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Recently Deleted | Finished counting recoverable messages per chat", v6, 2u);
  }

  v4 = *(v9 + 5);
  _Block_object_dispose(buf, 8);

  return v4;
}

- (void)fetchIdentifiersForChatRecordWithGUID:(id)a3 completionHandler:(id)a4
{
  v4 = _Block_copy(a4);
  v5 = sub_1B7CFEA60();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v7;
  v9[4] = sub_1B7AEFE64;
  v9[5] = v8;
  v12[4] = sub_1B7AE47A0;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1B7AE14D0;
  v12[3] = &unk_1F2FA7AC0;
  v10 = _Block_copy(v12);

  IMDPersistencePerformBlock(v10, 1, v11);

  _Block_release(v10);
}

- (void)fetchServicesForChatWithGUID:(id)a3 completionHandler:(id)a4
{
  v4 = _Block_copy(a4);
  v5 = sub_1B7CFEA60();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v7;
  v9[4] = sub_1B7AF1A74;
  v9[5] = v8;
  v12[4] = sub_1B7AF0048;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1B7AE14D0;
  v12[3] = &unk_1F2FA77F0;
  v10 = _Block_copy(v12);

  IMDPersistencePerformBlock(v10, 1, v11);

  _Block_release(v10);
}

- (void)updatePendingReviewForChatsWithGUIDs:(id)a3 pendingReview:(BOOL)a4 completionHandler:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_1B7CFECE0();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = v7;
  *(v9 + 32) = sub_1B7AF5954;
  *(v9 + 40) = v8;
  v12[4] = sub_1B7AF5654;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1B7AE14D0;
  v12[3] = &unk_1F2FA7688;
  v10 = _Block_copy(v12);

  IMDPersistencePerformBlock(v10, 1, v11);

  _Block_release(v10);
}

- (void)fetchChatGUIDsForMessageGUIDs:(id)a3 completionHandler:(id)a4
{
  v4 = _Block_copy(a4);
  v5 = sub_1B7CFECE0();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = sub_1B7CBCD94;
  v7[4] = v6;
  v10[4] = sub_1B7AF7F04;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1B7AE14D0;
  v10[3] = &unk_1F2FA7D18;
  v8 = _Block_copy(v10);

  IMDPersistencePerformBlock(v8, 1, v9);

  _Block_release(v8);
}

- (void)generateUnreadCountReportsWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  v7 = sub_1B7CFECC0();
  v9[4] = sub_1B7C14D34;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1B7C13228;
  v9[3] = &unk_1F2FA2FD0;
  v8 = _Block_copy(v9);

  [(IMDDatabase *)v6 generateUnreadCountReportsForChatsWithGUIDs:v7 completionHandler:v8];

  _Block_release(v8);
}

- (void)generateUnreadCountReportsForChatsWithGUIDs:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_1B7CFECE0();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = self;
  v8[4] = sub_1B7C14DD0;
  v8[5] = v7;
  v12[4] = sub_1B7AFB940;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1B7AE14D0;
  v12[3] = &unk_1F2FA3048;
  v9 = _Block_copy(v12);
  v10 = self;

  IMDPersistencePerformBlock(v9, 1, v11);

  _Block_release(v9);
}

- (void)fetchDataForKey:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v5 = IMDKVValueForKey(a3);
  if (v6)
  {
    v6[2](v6, v5);
  }
}

- (void)fetchInteger64ForKey:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (objc_msgSend_length(v5, v7, v8))
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1B7B03CA4;
    v9[3] = &unk_1E7CB6700;
    v10 = v5;
    v11 = &v12;
    _IMDPerformLockedStatementBlockWithQuery(@"SELECT value FROM kvtable WHERE key = ?", v9);
    if (v6)
    {
      v6[2](v6, v13[3]);
    }

    _Block_object_dispose(&v12, 8);
  }
}

- (void)storeInteger64:(int64_t)a3 forKey:(id)a4
{
  v5 = a4;
  if (objc_msgSend_length(v5, v6, v7))
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1B7B03D9C;
    v8[3] = &unk_1E7CB6728;
    v9 = v5;
    v10 = a3;
    _IMDPerformLockedStatementBlockWithQuery(@"INSERT OR REPLACE INTO kvtable (key, value) VALUES (?, ?)", v8);
  }
}

- (void)fetchCountOfRecordType:(unint64_t)a3 completionHandler:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (a3 >= 4)
  {
    v10 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEB29C(a3, v10);
    }

    v5[2](v5, 0);
  }

  else
  {
    v6 = off_1E7CB6748[a3];
    v14 = 0;
    v7 = IMDRowCountForTable(v6, &v14);
    v8 = v14;
    if (v8)
    {
      v9 = IMLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEB328(v6, v8, v9);
      }

      v7 = 0;
    }

    else
    {
      v9 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v11, v7);
        *buf = 138543618;
        v16 = v6;
        v17 = 2112;
        v18 = v12;
        _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "Total row count for table %{public}@: %@", buf, 0x16u);
      }
    }

    v5[2](v5, v7);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (id)handleRecordsFilteredByPredicate:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1B7AE18D4;
  v28 = sub_1B7AE2460;
  v29 = 0;
  if (v4)
  {
    v5 = [IMDPredicateToSQLConverter alloc];
    v8 = objc_msgSend_keyPathsToColumns(IMDHandleRecord, v6, v7);
    v10 = objc_msgSend_initWithPredicate_keyPathsToColumns_(v5, v9, v4, v8);

    if (v10)
    {
      v11 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = @"YES";
        _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_DEFAULT, "Fetching handles filtered by predicate: %@", buf, 0xCu);
      }

      v14 = objc_msgSend_expression(v10, v12, v13);
      v15 = IMDHandleRecordCopyHandlesFilteredUsingPredicateQuery(v14);

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = sub_1B7B08618;
      v20[3] = &unk_1E7CB6930;
      v22 = self;
      v23 = &v24;
      v21 = v10;
      _IMDPerformLockedStatementBlockWithQuery(v15, v20);
      v16 = v25[5];
      if (!v16)
      {
        v16 = MEMORY[0x1E695E0F0];
      }

      v17 = v16;
    }

    else
    {
      v15 = IMDatabaseMessageEventLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v31 = "[IMDDatabase(Handles) handleRecordsFilteredByPredicate:]";
        v32 = 2112;
        v33 = v4;
        _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "Bad predicate provided to %s (%@)", buf, 0x16u);
      }

      v17 = 0;
    }
  }

  else
  {
    v10 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v31 = "[IMDDatabase(Handles) handleRecordsFilteredByPredicate:]";
      _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_DEFAULT, "No predicate provided to %s", buf, 0xCu);
    }

    v17 = MEMORY[0x1E695E0F0];
  }

  _Block_object_dispose(&v24, 8);
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)fetchHandleRecordsFilteredUsingPredicate:(id)a3 sortedUsingDescriptors:(id)a4 limit:(unint64_t)a5 completionHandler:(id)a6
{
  v71 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v45 = a4;
  v48 = a6;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = sub_1B7AE18D4;
  v62 = sub_1B7AE2460;
  v63 = 0;
  v46 = v8;
  if (v8)
  {
    v9 = [IMDPredicateToSQLConverter alloc];
    v12 = objc_msgSend_keyPathsToColumns(IMDHandleRecord, v10, v11);
    v47 = objc_msgSend_initWithPredicate_keyPathsToColumns_(v9, v13, v8, v12);

    if (!v47)
    {
      v14 = IMDatabaseMessageEventLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v65 = "[IMDDatabase(Handles) fetchHandleRecordsFilteredUsingPredicate:sortedUsingDescriptors:limit:completionHandler:]";
        v66 = 2112;
        v67 = v8;
        _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "Bad predicate provided to %s (%@)", buf, 0x16u);
      }

      if (v48)
      {
        v48[2](v48, MEMORY[0x1E695E0F0]);
      }

      goto LABEL_28;
    }
  }

  else
  {
    v47 = 0;
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v16 = v45;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v54, v70, 16);
  if (v18)
  {
    v19 = *v55;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v55 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v54 + 1) + 8 * i);
        v22 = [IMDSortDescriptorToSQLConverter alloc];
        v25 = objc_msgSend_keyPathsToColumns(IMDHandleRecord, v23, v24);
        v27 = objc_msgSend_initWithSortDescriptor_keyPathsToColumns_(v22, v26, v21, v25);

        if (!v27)
        {
          v41 = IMDatabaseMessageEventLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v65 = "[IMDDatabase(Handles) fetchHandleRecordsFilteredUsingPredicate:sortedUsingDescriptors:limit:completionHandler:]";
            v66 = 2112;
            v67 = v21;
            _os_log_impl(&dword_1B7AD5000, v41, OS_LOG_TYPE_INFO, "Bad sort descriptor provided to %s (%@)", buf, 0x16u);
          }

          if (v48)
          {
            (v48[2])();
          }

          goto LABEL_27;
        }

        v30 = objc_msgSend_expression(v27, v28, v29);
        objc_msgSend_addObject_(v15, v31, v30);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v32, &v54, v70, 16);
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v33 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v36 = objc_msgSend_count(v16, v34, v35);
    v37 = @"YES";
    *buf = 138412802;
    if (!v46)
    {
      v37 = @"NO";
    }

    v65 = v37;
    v66 = 2048;
    v67 = v36;
    v68 = 2048;
    v69 = a5;
    _os_log_impl(&dword_1B7AD5000, v33, OS_LOG_TYPE_DEFAULT, "Fetching handles filtered by predicate: %@ sortDescriptors: %llu limit: %llu", buf, 0x20u);
  }

  v40 = objc_msgSend_expression(v47, v38, v39);
  v16 = IMDHandleRecordCopySortedHandlesFilteredUsingPredicateWithLimitQuery(v40, v15);

  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = sub_1B7B08BAC;
  v49[3] = &unk_1E7CB6958;
  v52 = &v58;
  v53 = a5;
  v50 = v47;
  v51 = self;
  _IMDPerformLockedStatementBlockWithQuery(v16, v49);
  if (v48)
  {
    v48[2](v48, v59[5]);
  }

LABEL_27:
LABEL_28:
  _Block_object_dispose(&v58, 8);

  v42 = *MEMORY[0x1E69E9840];
}

- (void)fetchContactsForIdentifiers:(id)a3 completionHandler:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "IMDContactQueries: Performing XPC fetch of contacts in IMDP", buf, 2u);
    }
  }

  v10 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7FD0], v7, v8);
  v12 = objc_msgSend_batchFetchContactsWithoutCachingForIdentifiers_(v10, v11, v5);
  v15 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v13, v14);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v16 = v12;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v31, v37, 16);
  if (v20)
  {
    v21 = *v32;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v32 != v21)
        {
          objc_enumerationMutation(v16);
        }

        v23 = *(*(&v31 + 1) + 8 * i);
        v24 = objc_msgSend_identifier(v23, v18, v19, v31);
        objc_msgSend_setObject_forKey_(v15, v25, v23, v24);
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v31, v37, 16);
    }

    while (v20);
  }

  if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v29 = objc_msgSend_count(v15, v27, v28);
      *buf = 134217984;
      v36 = v29;
      _os_log_impl(&dword_1B7AD5000, v26, OS_LOG_TYPE_INFO, "IMDContactQueries: Fetched %tu contacts in IMDP", buf, 0xCu);
    }
  }

  v6[2](v6, v15);

  v30 = *MEMORY[0x1E69E9840];
}

- (void)updateAcceptedContactsInAliasMap:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "IMDContactQueries: Performing updateAcceptedContactsInAliasMap", buf, 2u);
    }
  }

  v10 = objc_msgSend_sharedResolver(IMDCNPersonAliasResolver, v7, v8);
  v12 = objc_msgSend__updateAcceptedContactsInAliasToCNIDMap_(v10, v11, v5);
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *v16 = 0;
      _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "IMDContactQueries: updateAcceptedContactsInAliasMap returning updated alias map", v16, 2u);
    }
  }

  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v5;
  }

  v15 = v14;

  v6[2](v6, v15);
}

- (id)_copyMessageRecordsFromCoreSDBResults:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  v7 = objc_msgSend_count(v3, v5, v6);
  v9 = objc_msgSend_initWithCapacity_(v4, v8, v7);
  if (objc_msgSend_count(v3, v10, v11))
  {
    v13 = 0;
    v14 = *MEMORY[0x1E695E480];
    do
    {
      objc_msgSend_objectAtIndex_(v3, v12, v13);
      ID = CSDBRecordGetID();
      v17 = IMDMessageRecordCreateFromRecordIDUnlocked(v14, ID);
      if (v17)
      {
        objc_msgSend_addObject_(v9, v16, v17);
      }

      ++v13;
    }

    while (v13 < objc_msgSend_count(v3, v18, v19));
  }

  return v9;
}

- (void)fetchLastMessageRecordForChatRecordWithRowID:(int64_t)a3 completionHandler:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = IMDChatRecordCreateFromRecordIDUnlocked(*MEMORY[0x1E695E480], a3);
  v7 = v6;
  if (v6)
  {
    Message = IMDChatRecordCopyLastMessage(v6);
    v9 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = Message;
      v13 = 2048;
      v14 = a3;
      _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_DEFAULT, "Fetched last message %@ for chat with rowID: %lld", &v11, 0x16u);
    }
  }

  else
  {
    v9 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = a3;
      _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_DEFAULT, "No chat record for chat with rowID: %lld", &v11, 0xCu);
    }

    Message = 0;
  }

  if (v5)
  {
    v5[2](v5, Message);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)_messageKeyPathsToColumnsQueryingChatJoinTable:(BOOL)a3 sortDescriptors:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if (qword_1EBA53F20 != -1)
  {
    sub_1B7CF0044();
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_16:
    v17 = qword_1EBA53F18;
    goto LABEL_17;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

LABEL_3:
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v5;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v21, v25, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v22;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = objc_msgSend_key(*(*(&v21 + 1) + 8 * i), v9, v10, v21);
        isEqualToString = objc_msgSend_isEqualToString_(v14, v15, @"rowID");

        if (isEqualToString)
        {
          v18 = qword_1EBA53F18;

          goto LABEL_18;
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v21, v25, 16);
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  if (qword_1EBA53F30 != -1)
  {
    sub_1B7CF0058();
  }

  v17 = qword_1EBA53F28;
LABEL_17:
  v18 = v17;
LABEL_18:

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)_queryForMessageRecordFetchWithMessageWhereClause:(id)a3 chatWhereClause:(id)a4 handleWhereClause:(id)a5 orderByClauses:(id)a6 parentedOnly:(BOOL)a7
{
  v7 = a7;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v15, 3);
  if (v12)
  {
    v19 = @"INNER";
    if (!v7)
    {
      v19 = &stru_1F2FA9728;
    }

    v20 = objc_msgSend_stringByAppendingFormat_(&stru_1F2FA9728, v16, @"%@ JOIN chat_message_join ON chat_message_join.message_id = message.rowid %@ JOIN chat ON chat.rowid = chat_message_join.chat_id  ", v19, v19);
LABEL_7:
    v21 = v20;
    if (!v13)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v7)
  {
    v20 = objc_msgSend_stringByAppendingString_(&stru_1F2FA9728, v16, @"INNER JOIN chat_message_join ON chat_message_join.message_id = message.rowid ");
    goto LABEL_7;
  }

  v21 = &stru_1F2FA9728;
  if (v13)
  {
LABEL_8:
    v22 = objc_msgSend_stringByAppendingFormat_(v21, v16, @"INNER JOIN handle ON handle.rowid = message.handle_id ");

    v21 = v22;
  }

LABEL_9:
  if (v12)
  {
    objc_msgSend_addObject_(v18, v16, v12);
  }

  if (v13)
  {
    objc_msgSend_addObject_(v18, v16, v13);
  }

  if (v11)
  {
    objc_msgSend_addObject_(v18, v16, v11);
  }

  if (objc_msgSend_count(v18, v16, v17))
  {
    v25 = MEMORY[0x1E696AEC0];
    v26 = objc_msgSend_componentsJoinedByString_(v18, v23, @" AND ");
    v28 = objc_msgSend_stringWithFormat_(v25, v27, @"WHERE %@", v26);
  }

  else
  {
    v28 = &stru_1F2FA9728;
  }

  if (objc_msgSend_count(v14, v23, v24))
  {
    v30 = objc_msgSend_componentsJoinedByString_(v14, v29, @", ");
    v32 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v31, @"ORDER BY %@ ", v30);
  }

  else
  {
    v32 = &stru_1F2FA9728;
  }

  v33 = objc_alloc(MEMORY[0x1E696AEC0]);
  v35 = objc_msgSend_allColumnsWithPrefix_(IMDMessageQueryStrings, v34, @"message.");
  v37 = objc_msgSend_initWithFormat_(v33, v36, @"SELECT %@ FROM message %@ %@ %@ LIMIT ?;", v35, v21, v28, v32);

  return v37;
}

- (id)_queryForMessageRecordCountWithMessageWhereClause:(id)a3 chatWhereClause:(id)a4 limit:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = @"SELECT COUNT(*) FROM message %@ %@;";
  if (a5 > 0)
  {
    v9 = @"SELECT COUNT(*) FROM (SELECT 1 FROM message %@ %@ LIMIT ?);";
  }

  v10 = MEMORY[0x1E695DF70];
  v11 = v9;
  v15 = objc_msgSend_arrayWithCapacity_(v10, v12, 2);
  if (v8)
  {
    v16 = objc_msgSend_stringByAppendingString_(&stru_1F2FA9728, v13, @"JOIN chat_message_join ON chat_message_join.message_id = message.rowid JOIN chat ON chat.rowid = chat_message_join.chat_id ");
    objc_msgSend_addObject_(v15, v17, v8);
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v16 = &stru_1F2FA9728;
  if (v7)
  {
LABEL_5:
    objc_msgSend_addObject_(v15, v13, v7);
  }

LABEL_6:
  if (objc_msgSend_count(v15, v13, v14))
  {
    v19 = MEMORY[0x1E696AEC0];
    v20 = objc_msgSend_componentsJoinedByString_(v15, v18, @" AND ");
    v22 = objc_msgSend_stringWithFormat_(v19, v21, @"WHERE %@", v20);
  }

  else
  {
    v22 = &stru_1F2FA9728;
  }

  v23 = objc_alloc(MEMORY[0x1E696AEC0]);
  v25 = objc_msgSend_initWithFormat_(v23, v24, v11, v16, v22);

  return v25;
}

- (void)_fetchMessageRecordsFilteredUsingPredicate:(id)a3 sortedUsingDescriptors:(id)a4 inChatsFilteredUsingPredicate:(id)a5 fromHandlesUsingPredicate:(id)a6 parentedOnly:(BOOL)a7 limit:(unint64_t)a8 completionHandler:(id)a9
{
  v66 = a7;
  v101 = *MEMORY[0x1E69E9840];
  v74 = a3;
  v13 = a4;
  v14 = a5;
  v70 = a6;
  v15 = a9;
  v86 = 0;
  v87 = &v86;
  v88 = 0x3032000000;
  v89 = sub_1B7AE1954;
  v90 = sub_1B7AE24B0;
  v91 = 0;
  v73 = v14;
  v68 = self;
  v17 = objc_msgSend__messageKeyPathsToColumnsQueryingChatJoinTable_sortDescriptors_(self, v16, v14 != 0, v13);
  if (v74)
  {
    v18 = [IMDPredicateToSQLConverter alloc];
    v72 = objc_msgSend_initWithPredicate_keyPathsToColumns_(v18, v19, v74, v17);
    if (!v72)
    {
      v20 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v93 = "[IMDDatabase(LegacyMessages) _fetchMessageRecordsFilteredUsingPredicate:sortedUsingDescriptors:inChatsFilteredUsingPredicate:fromHandlesUsingPredicate:parentedOnly:limit:completionHandler:]";
        v94 = 2112;
        v95 = v74;
        _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_INFO, "Bad message predicate provided to %s (%@)", buf, 0x16u);
      }

      if (v15)
      {
        v15[2](v15, MEMORY[0x1E695E0F0]);
      }

      v71 = 0;
      v72 = 0;
      goto LABEL_44;
    }
  }

  else
  {
    v72 = 0;
  }

  if (v14)
  {
    v21 = [IMDPredicateToSQLConverter alloc];
    v24 = objc_msgSend_keyPathsToColumns(IMDChatRecord, v22, v23);
    v71 = objc_msgSend_initWithPredicate_keyPathsToColumns_columnPrefix_(v21, v25, v73, v24, @"chat.");

    if (!v71)
    {
      v26 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v93 = "[IMDDatabase(LegacyMessages) _fetchMessageRecordsFilteredUsingPredicate:sortedUsingDescriptors:inChatsFilteredUsingPredicate:fromHandlesUsingPredicate:parentedOnly:limit:completionHandler:]";
        v94 = 2112;
        v95 = v74;
        _os_log_impl(&dword_1B7AD5000, v26, OS_LOG_TYPE_INFO, "Bad chat predicate provided to %s (%@)", buf, 0x16u);
      }

      if (v15)
      {
        v15[2](v15, MEMORY[0x1E695E0F0]);
      }

      v71 = 0;
      goto LABEL_44;
    }
  }

  else
  {
    v71 = 0;
  }

  if (v70)
  {
    v27 = [IMDPredicateToSQLConverter alloc];
    v30 = objc_msgSend_keyPathsToColumns(IMDHandleRecord, v28, v29);
    v69 = objc_msgSend_initWithPredicate_keyPathsToColumns_columnPrefix_(v27, v31, v70, v30, @"handle.");

    if (!v69)
    {
      v32 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v93 = "[IMDDatabase(LegacyMessages) _fetchMessageRecordsFilteredUsingPredicate:sortedUsingDescriptors:inChatsFilteredUsingPredicate:fromHandlesUsingPredicate:parentedOnly:limit:completionHandler:]";
        v94 = 2112;
        v95 = v74;
        _os_log_impl(&dword_1B7AD5000, v32, OS_LOG_TYPE_INFO, "Bad handle predicate provided to %s (%@)", buf, 0x16u);
      }

      if (v15)
      {
        v15[2](v15, MEMORY[0x1E695E0F0]);
      }

      goto LABEL_44;
    }
  }

  else
  {
    v69 = 0;
  }

  v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v34 = v13;
  v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v82, v100, 16);
  if (v36)
  {
    v37 = *v83;
    while (2)
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v83 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v82 + 1) + 8 * i);
        v40 = [IMDSortDescriptorToSQLConverter alloc];
        v42 = objc_msgSend_initWithSortDescriptor_keyPathsToColumns_(v40, v41, v39, v17);
        v45 = v42;
        if (!v42)
        {
          v64 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v93 = "[IMDDatabase(LegacyMessages) _fetchMessageRecordsFilteredUsingPredicate:sortedUsingDescriptors:inChatsFilteredUsingPredicate:fromHandlesUsingPredicate:parentedOnly:limit:completionHandler:]";
            v94 = 2112;
            v95 = v39;
            _os_log_impl(&dword_1B7AD5000, v64, OS_LOG_TYPE_INFO, "Bad sort descriptor provided to %s (%@)", buf, 0x16u);
          }

          if (v15)
          {
            v15[2](v15, MEMORY[0x1E695E0F0]);
          }

          goto LABEL_43;
        }

        v46 = objc_msgSend_expression(v42, v43, v44);
        objc_msgSend_addObject_(v33, v47, v46);
      }

      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v48, &v82, v100, 16);
      if (v36)
      {
        continue;
      }

      break;
    }
  }

  v49 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    v52 = objc_msgSend_count(v34, v50, v51);
    v53 = @"YES";
    *buf = 138413058;
    v94 = 2112;
    v93 = v73;
    if (!v74)
    {
      v53 = @"NO";
    }

    v95 = v53;
    v96 = 2048;
    v97 = v52;
    v98 = 2048;
    v99 = a8;
    _os_log_impl(&dword_1B7AD5000, v49, OS_LOG_TYPE_DEFAULT, "Fetching messages for chat: %@ filtered by predicate: %@ sortDescriptors: %llu limit: %llu", buf, 0x2Au);
  }

  v56 = objc_msgSend_expression(v72, v54, v55);
  v59 = objc_msgSend_expression(v71, v57, v58);
  v62 = objc_msgSend_expression(v69, v60, v61);
  v34 = objc_msgSend__queryForMessageRecordFetchWithMessageWhereClause_chatWhereClause_handleWhereClause_orderByClauses_parentedOnly_(v68, v63, v56, v59, v62, v33, v66);

  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v75[2] = sub_1B7B3B054;
  v75[3] = &unk_1E7CB8540;
  v76 = v71;
  v77 = v69;
  v80 = &v86;
  v81 = a8;
  v78 = v72;
  v79 = v68;
  _IMDPerformLockedStatementBlockWithQuery(v34, v75);
  if (v15)
  {
    v15[2](v15, v87[5]);
  }

LABEL_43:
LABEL_44:

  _Block_object_dispose(&v86, 8);
  v65 = *MEMORY[0x1E69E9840];
}

- (void)fetchMessageRecordsFilteredUsingPredicate:(id)a3 sortedUsingDescriptors:(id)a4 inChatsFilteredUsingPredicate:(id)a5 limit:(unint64_t)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1B7B3B22C;
  v21[3] = &unk_1E7CB8568;
  v21[4] = self;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  v26 = a6;
  v16 = v15;
  v17 = v14;
  v18 = v13;
  v19 = v12;
  objc_msgSend__performPersistenceBlock_(self, v20, v21);
}

- (void)fetchMessageRecordsForChatRecordWithGUID:(id)a3 filteredUsingPredicate:(id)a4 sortedUsingDescriptors:(id)a5 limit:(unint64_t)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1B7B3B378;
  v21[3] = &unk_1E7CB8568;
  v21[4] = self;
  v22 = v13;
  v23 = v14;
  v24 = v12;
  v25 = v15;
  v26 = a6;
  v16 = v15;
  v17 = v12;
  v18 = v14;
  v19 = v13;
  objc_msgSend__performPersistenceBlock_(self, v20, v21);
}

- (void)fetchMessageRecordsFilteredUsingPredicate:(id)a3 sortedUsingDescriptors:(id)a4 inChatsFilteredUsingPredicate:(id)a5 fromHandlesUsingPredicate:(id)a6 limit:(unint64_t)a7 completionHandler:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_1B7B3B58C;
  v25[3] = &unk_1E7CB8590;
  v25[4] = self;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v30 = v18;
  v31 = a7;
  v29 = v17;
  v19 = v18;
  v20 = v17;
  v21 = v16;
  v22 = v15;
  v23 = v14;
  objc_msgSend__performPersistenceBlock_(self, v24, v25);
}

- (void)fetchUnreadMessageRecordsForChatsFilteredUsingPredicate:(id)a3 limit:(unint64_t)a4 completionHandler:(id)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v8;
    *&buf[12] = 2048;
    *&buf[14] = a4;
    _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_DEFAULT, "Fetching unread messages for chat predicate: %@  limit: %llu", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v33 = sub_1B7AE1954;
  v34 = sub_1B7AE24B0;
  v35 = 0;
  if (!v8)
  {
    v20 = IMDMessageRecordCopyAllUnreadMessagesQueryWithFilter(0, a4);
    v16 = 0;
    goto LABEL_7;
  }

  v11 = [IMDPredicateToSQLConverter alloc];
  v14 = objc_msgSend_keyPathsToColumns(IMDChatRecord, v12, v13);
  v16 = objc_msgSend_initWithPredicate_keyPathsToColumns_(v11, v15, v8, v14);

  if (v16)
  {
    v19 = objc_msgSend_expression(v16, v17, v18);
    v20 = IMDMessageRecordCopyAllUnreadMessagesQueryWithFilter(v19, a4);

LABEL_7:
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1B7B3B8AC;
    v24[3] = &unk_1E7CB6930;
    v21 = v16;
    v26 = self;
    v27 = buf;
    v25 = v21;
    _IMDPerformLockedStatementBlockWithQuery(v20, v24);
    v9[2](v9, *(*&buf[8] + 40));

    goto LABEL_8;
  }

  v23 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    *v28 = 136315394;
    v29 = "[IMDDatabase(LegacyMessages) fetchUnreadMessageRecordsForChatsFilteredUsingPredicate:limit:completionHandler:]";
    v30 = 2112;
    v31 = v8;
    _os_log_impl(&dword_1B7AD5000, v23, OS_LOG_TYPE_INFO, "Bad predicate provided to %s (%@)", v28, 0x16u);
  }

  if (v9)
  {
    v9[2](v9, MEMORY[0x1E695E0F0]);
  }

LABEL_8:
  _Block_object_dispose(buf, 8);

  v22 = *MEMORY[0x1E69E9840];
}

- (void)fetchMessageRecordsFilteredUsingPredicate:(id)a3 sortedUsingDescriptors:(id)a4 limit:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1B7B3BA34;
  v17[3] = &unk_1E7CB85B8;
  v17[4] = self;
  v18 = v10;
  v20 = v12;
  v21 = a5;
  v19 = v11;
  v13 = v12;
  v14 = v11;
  v15 = v10;
  objc_msgSend__performPersistenceBlock_(self, v16, v17);
}

- (void)fetchMessageRecordsFilteredUsingPredicate:(id)a3 sortedUsingDescriptors:(id)a4 parentedOnly:(BOOL)a5 limit:(unint64_t)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1B7B3BB6C;
  v19[3] = &unk_1E7CB85E0;
  v19[4] = self;
  v20 = v12;
  v24 = a5;
  v22 = v14;
  v23 = a6;
  v21 = v13;
  v15 = v14;
  v16 = v13;
  v17 = v12;
  objc_msgSend__performPersistenceBlock_(self, v18, v19);
}

- (void)fetchMessageRecordCountFilteredUsingPredicate:(id)a3 inChatsFilteredUsingPredicate:(id)a4 limit:(unint64_t)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1B7B3BC9C;
  v17[3] = &unk_1E7CB85B8;
  v17[4] = self;
  v18 = v11;
  v19 = v10;
  v20 = v12;
  v21 = a5;
  v13 = v12;
  v14 = v10;
  v15 = v11;
  objc_msgSend__performPersistenceBlock_(self, v16, v17);
}

- (void)fetchMessageRecordCountForChatRecordWithGUID:(id)a3 filteredUsingPredicate:(id)a4 limit:(unint64_t)a5 completionHandler:(id)a6
{
  if (a3)
  {
    v10 = MEMORY[0x1E696AE18];
    v11 = *MEMORY[0x1E69A6B70];
    v12 = a6;
    v13 = a4;
    v17 = objc_msgSend_predicateWithFormat_(v10, v14, @"%K = %@", v11, a3);
    objc_msgSend_fetchMessageRecordCountFilteredUsingPredicate_inChatsFilteredUsingPredicate_limit_completionHandler_(self, v15, v13);
  }

  else
  {
    v13 = a6;
    v17 = a4;
    objc_msgSend_fetchMessageRecordCountFilteredUsingPredicate_inChatsFilteredUsingPredicate_limit_completionHandler_(self, v16, v17, 0, a5, v13);
  }
}

- (void)fetchMessageRecordWithGUID:(id)a3 excludeRecoverableMessages:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v8 && v9)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v21 = sub_1B7AE1954;
    v22 = sub_1B7AE24B0;
    v23 = 0;
    if (v6)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = sub_1B7B3C404;
      v16[3] = &unk_1E7CB6930;
      v18 = self;
      v19 = buf;
      v17 = v8;
      _IMDPerformLockedStatementBlockWithQuery(@"SELECT ROWID, guid, text, replace, service_center, handle_id, subject, country, attributedBody, version, type, service, account, account_guid, error, date, date_read, date_delivered, is_delivered, is_finished, is_emote, is_from_me, is_empty, is_delayed, is_auto_reply, is_prepared, is_read, is_system_message, is_sent, has_dd_results, is_service_message, is_forward, was_downgraded, is_archive, cache_has_attachments, cache_roomnames, was_data_detected, was_deduplicated, is_audio_message, is_played, date_played, item_type, other_handle, group_title, group_action_type, share_status, share_direction, is_expirable, expire_state, message_action_type, message_source, associated_message_guid, associated_message_type, balloon_bundle_id, payload_data, expressive_send_style_id, associated_message_range_location, associated_message_range_length, time_expressive_send_played, message_summary_info, ck_sync_state, ck_record_id, ck_record_change_tag, destination_caller_id, is_corrupt, reply_to_guid, sort_id, is_spam, has_unseen_mention, thread_originator_guid, thread_originator_part, syndication_ranges, synced_syndication_ranges, was_delivered_quietly, did_notify_recipient, date_retracted, date_edited, date_recovered, was_detonated, part_count, is_stewie, is_sos, is_critical, bia_reference_id, is_kt_verified, fallback_hash, associated_message_emoji, is_pending_satellite_send, needs_relay, schedule_type, schedule_state, sent_or_received_off_grid, is_time_sensitive, ck_chat_id FROM message JOIN chat_message_join AS cmj ON message.ROWID = cmj.message_id WHERE message.guid = ?;", v16);
      v11 = v17;
    }

    else
    {
      v14 = IMDMessageRecordCopyMessageForGUID(v8);
      v11 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v14;
    }

    v10[2](v10, *(*&buf[8] + 40));
    _Block_object_dispose(buf, 8);
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = _Block_copy(v10);
      *buf = 138412546;
      *&buf[4] = v8;
      *&buf[12] = 2112;
      *&buf[14] = v13;
      _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "Database | One or more invalid required parameters: messageGUID: %@, completionHandler: %@", buf, 0x16u);
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)fetchScheduledMessageRecordsForChatRecordWithGUID:(id)a3 limit:(unint64_t)a4 completionHandler:(id)a5
{
  v8 = a3;
  v11 = a5;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1B7AE1954;
  v23 = sub_1B7AE24B0;
  v24 = 0;
  if (v8 && objc_msgSend_length(v8, v9, v10))
  {
    v12 = @"SELECT m.ROWID, m.guid, m.text, m.replace, m.service_center, m.handle_id, m.subject, m.country, m.attributedBody, m.version, m.type, m.service, m.account, m.account_guid, m.error, m.date, m.date_read, m.date_delivered, m.is_delivered, m.is_finished, m.is_emote, m.is_from_me, m.is_empty, m.is_delayed, m.is_auto_reply, m.is_prepared, m.is_read, m.is_system_message, m.is_sent, m.has_dd_results, m.is_service_message, m.is_forward, m.was_downgraded, m.is_archive, m.cache_has_attachments, m.cache_roomnames, m.was_data_detected, m.was_deduplicated, m.is_audio_message, m.is_played, m.date_played, m.item_type, m.other_handle, m.group_title, m.group_action_type, m.share_status, m.share_direction, m.is_expirable, m.expire_state, m.message_action_type, m.message_source, m.associated_message_guid, m.associated_message_type, m.balloon_bundle_id, m.payload_data, m.expressive_send_style_id, m.associated_message_range_location, m.associated_message_range_length, m.time_expressive_send_played, m.message_summary_info, m.ck_sync_state, m.ck_record_id, m.ck_record_change_tag, m.destination_caller_id, m.is_corrupt, m.reply_to_guid, m.sort_id, m.is_spam, m.has_unseen_mention, m.thread_originator_guid, m.thread_originator_part, m.syndication_ranges, m.synced_syndication_ranges, m.was_delivered_quietly, m.did_notify_recipient, m.date_retracted, m.date_edited, m.date_recovered, m.was_detonated, m.part_count, m.is_stewie, m.is_sos, m.is_critical, m.bia_reference_id, m.is_kt_verified, m.fallback_hash, m.associated_message_emoji, m.is_pending_satellite_send, m.needs_relay, m.schedule_type, m.schedule_state, m.sent_or_received_off_grid, m.is_time_sensitive, m.ck_chat_id FROM message m  INNER JOIN chat_message_join cm ON cm.message_id = m.rowid  INNER JOIN chat c ON c.ROWID = cm.chat_id  WHERE c.guid = ?  AND m.schedule_type == 2  AND (m.schedule_state == 1 OR m.schedule_state == 2)  ORDER BY cm.message_date ASC LIMIT ?";
  }

  else
  {
    v12 = @"SELECT m.ROWID, m.guid, m.text, m.replace, m.service_center, m.handle_id, m.subject, m.country, m.attributedBody, m.version, m.type, m.service, m.account, m.account_guid, m.error, m.date, m.date_read, m.date_delivered, m.is_delivered, m.is_finished, m.is_emote, m.is_from_me, m.is_empty, m.is_delayed, m.is_auto_reply, m.is_prepared, m.is_read, m.is_system_message, m.is_sent, m.has_dd_results, m.is_service_message, m.is_forward, m.was_downgraded, m.is_archive, m.cache_has_attachments, m.cache_roomnames, m.was_data_detected, m.was_deduplicated, m.is_audio_message, m.is_played, m.date_played, m.item_type, m.other_handle, m.group_title, m.group_action_type, m.share_status, m.share_direction, m.is_expirable, m.expire_state, m.message_action_type, m.message_source, m.associated_message_guid, m.associated_message_type, m.balloon_bundle_id, m.payload_data, m.expressive_send_style_id, m.associated_message_range_location, m.associated_message_range_length, m.time_expressive_send_played, m.message_summary_info, m.ck_sync_state, m.ck_record_id, m.ck_record_change_tag, m.destination_caller_id, m.is_corrupt, m.reply_to_guid, m.sort_id, m.is_spam, m.has_unseen_mention, m.thread_originator_guid, m.thread_originator_part, m.syndication_ranges, m.synced_syndication_ranges, m.was_delivered_quietly, m.did_notify_recipient, m.date_retracted, m.date_edited, m.date_recovered, m.was_detonated, m.part_count, m.is_stewie, m.is_sos, m.is_critical, m.bia_reference_id, m.is_kt_verified, m.fallback_hash, m.associated_message_emoji, m.is_pending_satellite_send, m.needs_relay, m.schedule_type, m.schedule_state, m.sent_or_received_off_grid, m.is_time_sensitive, m.ck_chat_id FROM message m  INNER JOIN chat_message_join cm ON cm.message_id = m.rowid  INNER JOIN chat c ON c.ROWID = cm.chat_id  WHERE m.schedule_type == 2  AND (m.schedule_state == 1 OR m.schedule_state == 2)  ORDER BY cm.message_date ASC LIMIT ?";
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1B7B3C61C;
  v14[3] = &unk_1E7CB6958;
  v13 = v8;
  v17 = &v19;
  v18 = a4;
  v15 = v13;
  v16 = self;
  _IMDPerformLockedStatementBlockWithQuery(v12, v14);
  if (v11)
  {
    v11[2](v11, v20[5]);
  }

  _Block_object_dispose(&v19, 8);
}

- (void)addScheduledMessageGUIDandCKRecordToDeleteFromCloudKit:(id)a3 recordID:(id)a4
{
  v5 = a3;
  v6 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7B3C788;
  v9[3] = &unk_1E7CB8630;
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  _IMDPerformLockedStatementBlockWithQuery(@" INSERT INTO scheduled_messages_pending_cloudkit_delete (guid, recordID) VALUES (?, ?);", v9);
}

- (void)deleteTombstonedScheduledMessagesWithRecordIDs:(id)a3
{
  v3 = a3;
  MutableCopy = CFStringCreateMutableCopy(0, 0, @"DELETE from scheduled_messages_pending_cloudkit_delete");
  if (objc_msgSend_count(v3, v5, v6))
  {
    CFStringAppend(MutableCopy, @" WHERE (recordID = ?");
    if (objc_msgSend_count(v3, v7, v8) >= 2)
    {
      v9 = 1;
      do
      {
        CFStringAppend(MutableCopy, @" OR recordID = ?");
        ++v9;
      }

      while (v9 < objc_msgSend_count(v3, v10, v11));
    }

    CFStringAppend(MutableCopy, @""));
  }

  CFStringAppend(MutableCopy, @";");
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B3C928;
  v13[3] = &unk_1E7CB8658;
  v14 = v3;
  v12 = v3;
  _IMDPerformLockedStatementBlockWithQuery(MutableCopy, v13);
}

- (void)markMessageRecordsAsReadWithGUIDs:(id)a3
{
  v3 = a3;
  v4 = *MEMORY[0x1E695E480];
  v7 = objc_msgSend_count(v3, v5, v6);
  v9 = IMDGenerateInClauseForCount(v7, v8);
  v10 = CFStringCreateWithFormat(v4, 0, @"UPDATE   message SET   is_read = 1,   date_read = ? WHERE guid %@", v9);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1B7B3CA48;
  v12[3] = &unk_1E7CB8658;
  v13 = v3;
  v11 = v3;
  _IMDPerformLockedStatementBlockWithQuery(v10, v12);
}

- (id)scheduledMessagesMetadataPendingCloudKitDeleteWithLimit:(int64_t)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  memset(v13, 0, sizeof(v13));
  memset(v12, 0, sizeof(v12));
  IMDSqlOperationInitWithSharedCSDBDatabase(v12);
  _IMDSqlOperationBeginQuery(v12, @" select * from scheduled_messages_pending_cloudkit_delete where LENGTH(TRIM(recordID)) > 0 limit ?;");
  IMDSqlStatementBindInt64(v13, a3);
  while (IMDSqlOperationHasRows(v12))
  {
    Row = IMDSqlStatementGetRow(v13);
    if (Row)
    {
      objc_msgSend_addObject_(v4, v5, Row);
    }
  }

  IMDSqlOperationFinishQuery(v12);
  v11 = 0;
  IMDSqlOperationRelease(v12, &v11);
  v7 = v11;
  if (v7)
  {
    v8 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Got error: %@ while trying to get scheduled messages pending cloudkit delete", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_updateMessageSyncStateQueryFor:(int64_t)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_msgSend_substitutionStringForCount_(MEMORY[0x1E696AEC0], a2, a3);
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"%@( %@)", @"UPDATE message SET ck_sync_state = ? where guid in ", v4);

  return v6;
}

- (void)updateMessagesSyncStatusTo:(int64_t)a3 forGUIDs:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v25 = 0u;
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  IMDSqlOperationInitWithSharedCSDBDatabase(v23);
  IMDSqlOperationBeginTransaction(v23);
  v9 = objc_msgSend_count(v6, v7, v8);
  updated = objc_msgSend__updateMessageSyncStateQueryFor_(self, v10, v9);
  _IMDSqlOperationBeginQuery(v23, updated);
  IMDSqlStatementBindInt64(v24, a3);
  v12 = v6;
  IMDSqlStatementBindTextFromArrayOfCFStrings(v24, v12);
  if (IMDSqlOperationFinishQuery(v23))
  {
    v13 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = v12;
      _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "CloudSync.message | updated ck_sync_state for recordIDs: %@", buf, 0xCu);
    }
  }

  else
  {
    v13 = *(&v25 + 1);
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF0080();
    }
  }

  IMDSqlOperationCommitOrRevertTransaction(v23);
  v22 = 0;
  v15 = IMDSqlOperationRelease(v23, &v22);
  v16 = v22;
  v17 = IMLogHandleForCategory();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
  if (v15)
  {
    if (v18)
    {
      sub_1B7CF01AC();
    }
  }

  else if (v18)
  {
    sub_1B7CF0120(v16, v17, v19);
  }

  v20 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v27 = v12;
    _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_INFO, "CloudSync.message | Finished updating ck_sync_state for recordIDs %@", buf, 0xCu);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (BOOL)_updateSyndicatedMessageItem:(id)a3 newMessageItem:(id)a4 newSyndicationRange:(id)a5
{
  v58[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (!v7)
  {
    v17 = IMLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF0294();
    }

    goto LABEL_16;
  }

  if (!v8)
  {
    v17 = IMLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF0258();
    }

    goto LABEL_16;
  }

  if (!v9)
  {
    v17 = IMLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF021C();
    }

LABEL_16:
    v35 = 0;
    goto LABEL_22;
  }

  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v16 = objc_msgSend_guid(v8, v14, v15);
      *buf = 138412546;
      v52 = v16;
      v53 = 2112;
      v54 = v10;
      _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "Updating syndication ranges for message item with guid %@. newSyndicationRange: %@", buf, 0x16u);
    }
  }

  v17 = objc_msgSend_syndicationRanges(v8, v11, v12);
  v50 = 0;
  v18 = MEMORY[0x1E69A8158];
  v58[0] = v10;
  v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v19, v58, 1);
  v47 = objc_msgSend_updateMessagesRanges_withMessagePartSyndicationRanges_didUpdate_(v18, v21, v17, v20, &v50);

  if (v50 == 1)
  {
    objc_msgSend_setSyndicationRanges_(v8, v22, v47);
    v23 = IMDUpdateIMMessageItemWithIMMessageItemForceReplaceReplaceError(v7, v8, 1, 0, 0, 1, 0);
    v26 = objc_msgSend_synchronousQueryProvider(IMDIndexingController, v24, v25);
    v29 = objc_msgSend_guid(v23, v27, v28);
    v57 = v29;
    v31 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v30, &v57, 1);
    v33 = objc_msgSend_contextWithReason_(IMDIndexingContext, v32, 1011);
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = sub_1B7B3D3F4;
    v48[3] = &unk_1E7CB6C58;
    v49 = v8;
    objc_msgSend_addMessageGUIDs_context_completionHandler_(v26, v34, v31, v33, v48);
  }

  else if (IMOSLoggingEnabled())
  {
    v36 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v39 = objc_msgSend_guid(v8, v37, v38);
      v42 = objc_msgSend_description(v10, v40, v41);
      v44 = objc_msgSend_componentsJoinedByString_(v17, v43, @",\n");
      *buf = 138412802;
      v52 = v39;
      v53 = 2112;
      v54 = v42;
      v55 = 2112;
      v56 = v44;
      _os_log_impl(&dword_1B7AD5000, v36, OS_LOG_TYPE_INFO, "Did NOT update syndication ranges for message: %@\nNew Range:\n%@\nOriginal Ranges:\n%@", buf, 0x20u);
    }
  }

  v35 = v50;

LABEL_22:
  v45 = *MEMORY[0x1E69E9840];
  return v35 & 1;
}

- (void)updateAttachmentSyndicationRanges:(id)a3 shouldHideFromSyndication:(BOOL)a4
{
  v4 = a4;
  v63 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = IMMessageGuidFromIMFileTransferGuid();
    v8 = v7;
    if (!v7)
    {
      v11 = IMLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF064C();
      }

      goto LABEL_48;
    }

    v9 = IMDMessageRecordCopyMessageForGUID(v7);
    if (v9)
    {
      v10 = v9;
      v11 = IMDCreateIMItemFromIMDMessageRecordRefWithAccountLookup(v9, 0, 0, 0);
      CFRelease(v10);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (v11)
        {
          v12 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v57 = "[IMDDatabase(LegacyMessages) updateAttachmentSyndicationRanges:shouldHideFromSyndication:]";
            v58 = 2112;
            v59 = v6;
            _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_DEFAULT, "%s Found corresponding IMMessageItem for attachment GUID %@", buf, 0x16u);
          }

          v15 = objc_msgSend_fileTransferGUIDs(v11, v13, v14);
          v17 = objc_msgSend_containsObject_(v15, v16, v6);

          if (v17)
          {
            v21 = v6;
          }

          else
          {
            v21 = objc_msgSend_findTransferGUIDMatchingSpotlightDonatedSpeculativeTransferGUID_(v11, v18, v6);
            if (!v21)
            {
              v47 = IMLogHandleForCategory();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
              {
                sub_1B7CF0400();
              }

              v21 = IMLogHandleForCategory();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                sub_1B7CF04B4(v11, v21, v48);
              }

LABEL_47:

LABEL_48:
              goto LABEL_49;
            }
          }

          v50 = v4;
          v49 = self;
          objc_msgSend_messageParts(v11, v19, v20);
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          obj = v55 = 0u;
          v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, &v52, v62, 16);
          if (v24)
          {
            v27 = v24;
            v28 = *v53;
LABEL_25:
            v29 = 0;
            while (1)
            {
              if (*v53 != v28)
              {
                objc_enumerationMutation(obj);
              }

              v30 = *(*(&v52 + 1) + 8 * v29);
              v31 = objc_msgSend_transferGUID(v30, v25, v26);
              isEqualToString = objc_msgSend_isEqualToString_(v21, v32, v31);

              if (isEqualToString)
              {
                break;
              }

              if (v27 == ++v29)
              {
                v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v25, &v52, v62, 16);
                if (v27)
                {
                  goto LABEL_25;
                }

                goto LABEL_31;
              }
            }

            v36 = IMDatabaseLogHandle();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v57 = "[IMDDatabase(LegacyMessages) updateAttachmentSyndicationRanges:shouldHideFromSyndication:]";
              v58 = 2112;
              v59 = v6;
              v60 = 2112;
              v61 = v21;
              _os_log_impl(&dword_1B7AD5000, v36, OS_LOG_TYPE_DEFAULT, "%s Found corresponding IMMessagePartDescriptor for attachment GUID %@ (actualAttachmentGUID %@)", buf, 0x20u);
            }

            shouldHideFromSyndication = v30;
            if (shouldHideFromSyndication)
            {
              objc_msgSend__updateMessageItemSyndicationRanges_messagePartDescriptor_shouldHideFromSyndication_(v49, v34, v11, shouldHideFromSyndication, v50);
              goto LABEL_46;
            }
          }

          else
          {
LABEL_31:
          }

          isCMM = objc_msgSend_isCMM(v11, v34, v35);
          shouldHideFromSyndication = IMDatabaseLogHandle();
          v39 = os_log_type_enabled(shouldHideFromSyndication, OS_LOG_TYPE_DEFAULT);
          if (isCMM)
          {
            if (v39)
            {
              *buf = 0;
              _os_log_impl(&dword_1B7AD5000, shouldHideFromSyndication, OS_LOG_TYPE_DEFAULT, "messageItem is CMM, routing to alternative path to handle IMMessagePartSyndicationAssetDescriptors", buf, 2u);
            }

            shouldHideFromSyndication = objc_msgSend__newSyndicationRangeForCMMMessageItem_syndicationIdentifier_shouldHideFromSyndication_(IMDDatabase, v40, v11, v21, v50);
            if (shouldHideFromSyndication && (objc_msgSend__updateSyndicatedMessageItem_newMessageItem_newSyndicationRange_(v49, v41, v11, v11, shouldHideFromSyndication) & 1) == 0)
            {
              v42 = IMDatabaseLogHandle();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                v45 = objc_msgSend_guid(v11, v43, v44);
                *buf = 136315394;
                v57 = "[IMDDatabase(LegacyMessages) updateAttachmentSyndicationRanges:shouldHideFromSyndication:]";
                v58 = 2112;
                v59 = v45;
                _os_log_impl(&dword_1B7AD5000, v42, OS_LOG_TYPE_DEFAULT, "%s message item with GUID %@ did not update its syndication ranges", buf, 0x16u);
              }
            }
          }

          else if (v39)
          {
            *buf = 138412290;
            v57 = v21;
            _os_log_impl(&dword_1B7AD5000, shouldHideFromSyndication, OS_LOG_TYPE_DEFAULT, "Failed to find matching messagePart for attachment GUID %@", buf, 0xCu);
          }

LABEL_46:

          goto LABEL_47;
        }

LABEL_20:
        v11 = IMLogHandleForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF05D0();
        }

        goto LABEL_48;
      }

      v22 = IMLogHandleForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF037C();
      }
    }

    else
    {
      v11 = IMLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF054C();
      }
    }

    goto LABEL_20;
  }

  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF06C8();
  }

LABEL_49:

  v46 = *MEMORY[0x1E69E9840];
}

- (void)_updateMessageItemSyndicationRanges:(id)a3 messagePartDescriptor:(id)a4 shouldHideFromSyndication:(BOOL)a5
{
  v5 = a5;
  v96 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v12 = v9;
  if (v8)
  {
    if (v9)
    {
      v13 = objc_msgSend_messagePartRange(v9, v10, v11);
      if (!(v13 | v14))
      {
        started = IMLogHandleForCategory();
        if (os_log_type_enabled(started, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF0748(v8, started, v16);
        }

        goto LABEL_46;
      }

      v17 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_msgSend_guid(v8, v18, v19);
        v23 = objc_msgSend_messagePartIndex(v12, v21, v22);
        v97.location = objc_msgSend_messagePartRange(v12, v24, v25);
        v26 = NSStringFromRange(v97);
        *buf = 136315906;
        v89 = "[IMDDatabase(LegacyMessages) _updateMessageItemSyndicationRanges:messagePartDescriptor:shouldHideFromSyndication:]";
        v90 = 2112;
        v91 = v20;
        v92 = 2048;
        v93 = v23;
        v94 = 2112;
        v95 = v26;
        _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_DEFAULT, "%s Updating syndication ranges for message guid: %@, part %ld, range: %@", buf, 0x2Au);
      }

      v29 = objc_msgSend_messagePartRange(v12, v27, v28);
      v31 = v30;
      v32 = IMDatabaseLogHandle();
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
      if (v5)
      {
        if (v33)
        {
          v98.location = v29;
          v98.length = v31;
          v34 = NSStringFromRange(v98);
          v37 = objc_msgSend_guid(v8, v35, v36);
          *buf = 136315650;
          v89 = "[IMDDatabase(LegacyMessages) _updateMessageItemSyndicationRanges:messagePartDescriptor:shouldHideFromSyndication:]";
          v90 = 2112;
          v91 = v34;
          v92 = 2112;
          v93 = v37;
          _os_log_impl(&dword_1B7AD5000, v32, OS_LOG_TYPE_DEFAULT, "%s Removing message part range from syndication %@ for message item with GUID %@", buf, 0x20u);
        }

        v38 = objc_alloc(MEMORY[0x1E69A8158]);
        v41 = objc_msgSend_date(MEMORY[0x1E695DF00], v39, v40);
        started = objc_msgSend_initWithSyndicationType_messagePartRange_syndicationStartDate_(v38, v42, 4, v29, v31, v41);
      }

      else
      {
        if (v33)
        {
          v99.location = v29;
          v99.length = v31;
          v43 = NSStringFromRange(v99);
          v46 = objc_msgSend_guid(v8, v44, v45);
          *buf = 136315650;
          v89 = "[IMDDatabase(LegacyMessages) _updateMessageItemSyndicationRanges:messagePartDescriptor:shouldHideFromSyndication:]";
          v90 = 2112;
          v91 = v43;
          v92 = 2112;
          v93 = v46;
          _os_log_impl(&dword_1B7AD5000, v32, OS_LOG_TYPE_DEFAULT, "%s Unhiding syndication for message part range %@ for message item with GUID %@", buf, 0x20u);
        }

        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v49 = objc_msgSend_syndicationRanges(v8, v47, v48, 0);
        v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v50, &v83, v87, 16);
        if (v51)
        {
          v54 = v51;
          v55 = *v84;
LABEL_20:
          v56 = 0;
          while (1)
          {
            if (*v84 != v55)
            {
              objc_enumerationMutation(v49);
            }

            v57 = *(*(&v83 + 1) + 8 * v56);
            if (objc_msgSend_messagePartRange(v57, v52, v53) == v29 && v52 == v31)
            {
              break;
            }

            if (v54 == ++v56)
            {
              v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v49, v52, &v83, v87, 16);
              if (v54)
              {
                goto LABEL_20;
              }

              goto LABEL_29;
            }
          }

          v41 = v57;

          if (v41 && (objc_msgSend_syndicationType(v41, v59, v60) & 4) != 0)
          {
            v78 = objc_msgSend_syndicationType(v41, v61, v62);
            v79 = objc_alloc(MEMORY[0x1E69A8158]);
            v63 = objc_msgSend_date(MEMORY[0x1E695DF00], v80, v81);
            started = objc_msgSend_initWithSyndicationType_messagePartRange_syndicationStartDate_(v79, v82, v78 & 0xFFFFFFFFFFFFFFFBLL, v29, v31, v63);
            goto LABEL_35;
          }
        }

        else
        {
LABEL_29:

          v41 = 0;
        }

        v63 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          v66 = objc_msgSend_guid(v8, v64, v65);
          *buf = 136315650;
          v89 = "[IMDDatabase(LegacyMessages) _updateMessageItemSyndicationRanges:messagePartDescriptor:shouldHideFromSyndication:]";
          v90 = 2112;
          v91 = v66;
          v92 = 2112;
          v93 = v41;
          _os_log_impl(&dword_1B7AD5000, v63, OS_LOG_TYPE_DEFAULT, "%s NOT updating message syndication ranges for message item with GUID %@ because it is already unhidden. currentSyndicationRange: %@", buf, 0x20u);
        }

        started = 0;
LABEL_35:
      }

      v67 = IMDatabaseLogHandle();
      v68 = os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT);
      if (!started)
      {
        if (v68)
        {
          v75 = objc_msgSend_guid(v8, v69, v70);
          *buf = 136315394;
          v89 = "[IMDDatabase(LegacyMessages) _updateMessageItemSyndicationRanges:messagePartDescriptor:shouldHideFromSyndication:]";
          v90 = 2112;
          v91 = v75;
          v76 = "%s newSyndicationRange was nil. Did not update syndication ranges for message with GUID %@";
          goto LABEL_44;
        }

LABEL_45:

        goto LABEL_46;
      }

      if (v68)
      {
        v71 = objc_msgSend_guid(v8, v69, v70);
        *buf = 136315650;
        v89 = "[IMDDatabase(LegacyMessages) _updateMessageItemSyndicationRanges:messagePartDescriptor:shouldHideFromSyndication:]";
        v90 = 2112;
        v91 = v71;
        v92 = 2112;
        v93 = started;
        _os_log_impl(&dword_1B7AD5000, v67, OS_LOG_TYPE_DEFAULT, "%s Updating message syndication ranges for message item with GUID %@. newSyndicationRange: %@", buf, 0x20u);
      }

      if ((objc_msgSend__updateSyndicatedMessageItem_newMessageItem_newSyndicationRange_(self, v72, v8, v8, started) & 1) == 0)
      {
        v67 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          v75 = objc_msgSend_guid(v8, v73, v74);
          *buf = 136315394;
          v89 = "[IMDDatabase(LegacyMessages) _updateMessageItemSyndicationRanges:messagePartDescriptor:shouldHideFromSyndication:]";
          v90 = 2112;
          v91 = v75;
          v76 = "%s message item with GUID %@ did not update its syndication ranges";
LABEL_44:
          _os_log_impl(&dword_1B7AD5000, v67, OS_LOG_TYPE_DEFAULT, v76, buf, 0x16u);

          goto LABEL_45;
        }

        goto LABEL_45;
      }
    }

    else
    {
      started = IMLogHandleForCategory();
      if (os_log_type_enabled(started, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF07E0();
      }
    }
  }

  else
  {
    started = IMLogHandleForCategory();
    if (os_log_type_enabled(started, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF0860();
    }
  }

LABEL_46:

  v77 = *MEMORY[0x1E69E9840];
}

+ (id)_newSyndicationRangeForCMMMessageItem:(id)a3 syndicationIdentifier:(id)a4 shouldHideFromSyndication:(BOOL)a5
{
  v5 = a5;
  v272 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v10 = a4;
  if (!v7)
  {
    v32 = IMLogHandleForCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF0BD0();
    }

    goto LABEL_11;
  }

  v11 = objc_msgSend_fileTransferGUIDs(v7, v8, v9);
  if (!v11 || (v14 = v11, objc_msgSend_fileTransferGUIDs(v7, v12, v13), v15 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend_count(v15, v16, v17), v15, v14, !v18))
  {
    v32 = IMLogHandleForCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF0B38(v7, v32, v33);
    }

    goto LABEL_11;
  }

  CMMAssetOffset = objc_msgSend_getCMMAssetOffset(v7, v19, v20);
  v22 = IMCMMAssetIndexFromIMFileTransferGUID();
  v25 = objc_msgSend_fileTransferGUIDs(v7, v23, v24);
  v28 = objc_msgSend_count(v25, v26, v27);

  v31 = v28 - CMMAssetOffset;
  if (v28 >= CMMAssetOffset)
  {
    if (v28 == CMMAssetOffset)
    {
      v32 = IMLogHandleForCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF0A24(v7, v32, v37);
      }

      goto LABEL_11;
    }

    if (v22 < CMMAssetOffset)
    {
      v32 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v32, OS_LOG_TYPE_DEFAULT, "Attachment is CMM preview, aborting since we don't care about donating preview to CoreSpotlight", buf, 2u);
      }

      goto LABEL_11;
    }

    v38 = objc_msgSend_fileTransferGUIDs(v7, v29, v30);
    v32 = objc_msgSend_firstObject(v38, v39, v40);

    if (!v32)
    {
      v61 = IMLogHandleForCategory();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF098C(v7, v61, v62);
      }

      goto LABEL_39;
    }

    v238 = v22;
    v239 = CMMAssetOffset;
    v254 = 0u;
    v255 = 0u;
    v252 = 0u;
    v253 = 0u;
    v43 = objc_msgSend_messageParts(v7, v41, v42);
    v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, &v252, v271, 16);
    if (v45)
    {
      v48 = v45;
      v235 = v10;
      v237 = v7;
      v49 = *v253;
      while (2)
      {
        for (i = 0; i != v48; ++i)
        {
          if (*v253 != v49)
          {
            objc_enumerationMutation(v43);
          }

          v51 = *(*(&v252 + 1) + 8 * i);
          v52 = objc_msgSend_transferGUID(v51, v46, v47);
          isEqualToString = objc_msgSend_isEqualToString_(v32, v53, v52);

          if (isEqualToString)
          {
            v57 = IMDatabaseLogHandle();
            v10 = v235;
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315650;
              v266 = "+[IMDDatabase(LegacyMessages) _newSyndicationRangeForCMMMessageItem:syndicationIdentifier:shouldHideFromSyndication:]";
              v267 = 2112;
              v268 = v32;
              v269 = 2112;
              v270 = v235;
              _os_log_impl(&dword_1B7AD5000, v57, OS_LOG_TYPE_DEFAULT, "%s Found corresponding IMMessagePartDescriptor for fileTransferGUID %@ (actualAttachmentGUID %@)", buf, 0x20u);
            }

            v55 = objc_msgSend_messagePartRange(v51, v58, v59);
            v56 = v60;
            v7 = v237;
            goto LABEL_35;
          }
        }

        v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v46, &v252, v271, 16);
        if (v48)
        {
          continue;
        }

        break;
      }

      v55 = 0x7FFFFFFFFFFFFFFFLL;
      v56 = 0x7FFFFFFFFFFFFFFFLL;
      v10 = v235;
      v7 = v237;
    }

    else
    {
      v55 = 0x7FFFFFFFFFFFFFFFLL;
      v56 = 0x7FFFFFFFFFFFFFFFLL;
    }

LABEL_35:

    v65 = v239;
    if (v55 == 0x7FFFFFFFFFFFFFFFLL && v56 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v61 = IMLogHandleForCategory();
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF08E0();
      }

LABEL_39:
      v34 = 0;
LABEL_117:

      goto LABEL_12;
    }

    v66 = objc_msgSend_syndicationRanges(v7, v63, v64);
    v234 = v56;
    if (v66)
    {
      v69 = v66;
      v70 = objc_msgSend_syndicationRanges(v7, v67, v68);
      v73 = objc_msgSend_count(v70, v71, v72);

      if (v73)
      {
        v76 = objc_msgSend_syndicationRanges(v7, v74, v75);
        v79 = objc_msgSend_firstObject(v76, v77, v78);
        v61 = objc_msgSend_copy(v79, v80, v81);
      }

      else
      {
        v61 = 0;
      }

      v56 = v234;
      v65 = v239;
    }

    else
    {
      v61 = 0;
    }

    v82 = IMDatabaseLogHandle();
    v83 = os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT);
    if (!v5)
    {
      v231 = v32;
      v233 = v61;
      if (v83)
      {
        v126 = objc_msgSend_guid(v7, v84, v85);
        *buf = 136315650;
        v266 = "+[IMDDatabase(LegacyMessages) _newSyndicationRangeForCMMMessageItem:syndicationIdentifier:shouldHideFromSyndication:]";
        v267 = 2048;
        v268 = v238;
        v269 = 2112;
        v270 = v126;
        _os_log_impl(&dword_1B7AD5000, v82, OS_LOG_TYPE_DEFAULT, "%s Updating asset syndication descriptor to be not hidden for part index %ld on message item with GUID %@", buf, 0x20u);
      }

      v246 = 0u;
      v247 = 0u;
      v244 = 0u;
      v245 = 0u;
      v127 = v7;
      v130 = objc_msgSend_syndicationRanges(v7, v128, v129);
      v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(v130, v131, &v244, v261, 16);
      if (v132)
      {
        v135 = v132;
        v136 = *v245;
LABEL_61:
        v137 = 0;
        while (1)
        {
          if (*v245 != v136)
          {
            objc_enumerationMutation(v130);
          }

          v138 = *(*(&v244 + 1) + 8 * v137);
          if (objc_msgSend_messagePartRange(v138, v133, v134) == v55 && v133 == v56)
          {
            break;
          }

          if (v135 == ++v137)
          {
            v135 = objc_msgSend_countByEnumeratingWithState_objects_count_(v130, v133, &v244, v261, 16);
            if (v135)
            {
              goto LABEL_61;
            }

            goto LABEL_70;
          }
        }

        v156 = v138;

        if (!v156)
        {
          goto LABEL_91;
        }

        v157 = objc_msgSend_syndicationForPartIndex_asset_(v156, v140, v238, 0);
        v117 = v157;
        if (!v157)
        {
          v34 = 0;
          v7 = v127;
          v32 = v231;
          v61 = v233;
          goto LABEL_109;
        }

        v160 = objc_msgSend_intValue(v157, v158, v159);
        v162 = v160;
        if ((v160 & 4) != 0)
        {
          v221 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v161, v238);
          v256 = v221;
          v223 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v222, v162 & 0xFFFFFFFFFFFFFFFBLL);
          v257 = v223;
          v163 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v224, &v257, &v256, 1);

          v34 = objc_msgSend_updateAssetInfoWith_asset_range_(MEMORY[0x1E69A8158], v225, v163, 0, v156);
          goto LABEL_102;
        }

        v163 = IMDatabaseLogHandle();
        v61 = v233;
        if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
        {
          v7 = v127;
          v166 = objc_msgSend_guid(v127, v164, v165);
          v169 = objc_msgSend_assetDescriptor(v156, v167, v168);
          v172 = objc_msgSend_serializedString(v169, v170, v171);
          *buf = 136315650;
          v266 = "+[IMDDatabase(LegacyMessages) _newSyndicationRangeForCMMMessageItem:syndicationIdentifier:shouldHideFromSyndication:]";
          v267 = 2112;
          v268 = v166;
          v269 = 2112;
          v270 = v172;
          _os_log_impl(&dword_1B7AD5000, v163, OS_LOG_TYPE_DEFAULT, "%s NOT updating CMM asset syndication for message item with GUID %@ because it is already unhidden. current syndications: %@", buf, 0x20u);

          v34 = 0;
        }

        else
        {
          v34 = 0;
          v7 = v127;
        }

        v32 = v231;
      }

      else
      {
LABEL_70:

LABEL_91:
        v230 = v55;
        v173 = objc_msgSend_fileTransferGUIDs(v127, v140, v141);
        v175 = objc_msgSend_subarrayWithRange_(v173, v174, v239, v31);

        v176 = MEMORY[0x1E695DF90];
        v179 = objc_msgSend_count(v175, v177, v178);
        v163 = objc_msgSend_dictionaryWithCapacity_(v176, v180, v179);
        v240 = 0u;
        v241 = 0u;
        v242 = 0u;
        v243 = 0u;
        v181 = v175;
        v182 = v239;
        v183 = v181;
        v185 = objc_msgSend_countByEnumeratingWithState_objects_count_(v181, v184, &v240, v260, 16);
        if (v185)
        {
          v187 = v185;
          v188 = *v241;
          do
          {
            for (j = 0; j != v187; ++j)
            {
              if (*v241 != v188)
              {
                objc_enumerationMutation(v183);
              }

              if (*(*(&v240 + 1) + 8 * j))
              {
                v190 = IMCMMAssetIndexFromIMFileTransferGUID();
                if (v190 >= v182)
                {
                  v191 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v186, v190);
                  objc_msgSend_setObject_forKeyedSubscript_(v163, v192, &unk_1F2FCA278, v191);

                  v182 = v239;
                }
              }
            }

            v187 = objc_msgSend_countByEnumeratingWithState_objects_count_(v183, v186, &v240, v260, 16);
          }

          while (v187);
        }

        v193 = v183;

        v194 = objc_alloc(MEMORY[0x1E69A8150]);
        v258 = &unk_1F2FCA278;
        v259 = v163;
        v196 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v195, &v259, &v258, 1);
        v198 = objc_msgSend_initWithAssetSyndications_(v194, v197, v196);

        v199 = objc_alloc(MEMORY[0x1E69A8158]);
        v202 = objc_msgSend_date(MEMORY[0x1E695DF00], v200, v201);
        started = objc_msgSend_initWithSyndicationType_messagePartRange_syndicationStartDate_syndicationStatus_assetDescriptor_(v199, v203, 0, v230, v234, v202, 0, v198);

        v117 = v193;
        v156 = started;

        v34 = v156;
LABEL_102:
        v7 = v127;
        v32 = v231;
        v61 = v233;
      }

      goto LABEL_106;
    }

    if (v83)
    {
      v86 = objc_msgSend_guid(v7, v84, v85);
      *buf = 136315650;
      v266 = "+[IMDDatabase(LegacyMessages) _newSyndicationRangeForCMMMessageItem:syndicationIdentifier:shouldHideFromSyndication:]";
      v267 = 2048;
      v268 = v238;
      v269 = 2112;
      v270 = v86;
      _os_log_impl(&dword_1B7AD5000, v82, OS_LOG_TYPE_DEFAULT, "%s Updating asset syndication descriptor to be hidden for asset index %ld on message item with GUID %@", buf, 0x20u);

      v65 = v239;
    }

    v89 = objc_msgSend_fileTransferGUIDs(v7, v87, v88);
    v91 = objc_msgSend_subarrayWithRange_(v89, v90, v65, v31);

    v228 = v91;
    if (!v61)
    {
      goto LABEL_71;
    }

    v94 = objc_msgSend_assetDescriptor(v61, v92, v93);
    if (!v94)
    {
      goto LABEL_71;
    }

    v95 = v94;
    v96 = objc_msgSend_assetDescriptor(v61, v92, v93);
    v99 = objc_msgSend_assetSyndications(v96, v97, v98);

    v65 = v239;
    if (v99)
    {
      v100 = MEMORY[0x1E695DF90];
      v101 = objc_msgSend_assetDescriptor(v61, v92, v93);
      v104 = objc_msgSend_assetSyndications(v101, v102, v103);
      v106 = objc_msgSend_dictionaryWithDictionary_(v100, v105, v104);

      if (!v106 || (objc_msgSend_objectForKey_(v106, v107, &unk_1F2FCA278), v108 = objc_claimAutoreleasedReturnValue(), v108, !v108))
      {
        v117 = 0;
        goto LABEL_104;
      }

      v229 = v55;
      v232 = v61;
      v110 = objc_msgSend_objectForKeyedSubscript_(v106, v109, &unk_1F2FCA278);
      v113 = objc_msgSend_mutableCopy(v110, v111, v112);

      v115 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v114, v238);
      v117 = objc_msgSend_objectForKey_(v113, v116, v115);

      if (v117)
      {
        v119 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v118, v238);
        v121 = objc_msgSend_objectForKeyedSubscript_(v113, v120, v119);
        v124 = objc_msgSend_intValue(v121, v122, v123);

        if (v124 == 4)
        {
          v117 = 0;
        }

        else
        {
          v226 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v125, v238);
          objc_msgSend_setObject_forKeyedSubscript_(v113, v227, &unk_1F2FCA290, v226);

          v117 = v113;
        }
      }
    }

    else
    {
LABEL_71:
      v142 = MEMORY[0x1E695DF90];
      v143 = objc_msgSend_count(v91, v92, v93);
      v117 = objc_msgSend_dictionaryWithCapacity_(v142, v144, v143);
      v248 = 0u;
      v249 = 0u;
      v250 = 0u;
      v251 = 0u;
      v106 = v91;
      v146 = objc_msgSend_countByEnumeratingWithState_objects_count_(v106, v145, &v248, v264, 16);
      if (!v146)
      {
LABEL_104:

        if (!v117)
        {
          v34 = 0;
          v156 = v228;
          goto LABEL_109;
        }

        v205 = objc_alloc(MEMORY[0x1E69A8150]);
        v262 = &unk_1F2FCA278;
        v263 = v117;
        v207 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v206, &v263, &v262, 1);
        v163 = objc_msgSend_initWithAssetSyndications_(v205, v208, v207);

        v209 = objc_alloc(MEMORY[0x1E69A8158]);
        v212 = objc_msgSend_date(MEMORY[0x1E695DF00], v210, v211);
        v34 = objc_msgSend_initWithSyndicationType_messagePartRange_syndicationStartDate_syndicationStatus_assetDescriptor_(v209, v213, 0, v55, v234, v212, 0, v163);

        v156 = v228;
LABEL_106:

LABEL_109:
        v214 = IMDatabaseLogHandle();
        v215 = os_log_type_enabled(v214, OS_LOG_TYPE_DEFAULT);
        if (v34)
        {
          if (v215)
          {
            v218 = objc_msgSend_guid(v7, v216, v217);
            *buf = 136315650;
            v266 = "+[IMDDatabase(LegacyMessages) _newSyndicationRangeForCMMMessageItem:syndicationIdentifier:shouldHideFromSyndication:]";
            v267 = 2112;
            v268 = v218;
            v269 = 2112;
            v270 = v34;
            _os_log_impl(&dword_1B7AD5000, v214, OS_LOG_TYPE_DEFAULT, "%s Updating message syndication ranges for message item with GUID %@. newSyndicationRange: %@", buf, 0x20u);
          }

          v219 = v34;
        }

        else
        {
          if (v215)
          {
            v220 = objc_msgSend_guid(v7, v216, v217);
            *buf = 136315394;
            v266 = "+[IMDDatabase(LegacyMessages) _newSyndicationRangeForCMMMessageItem:syndicationIdentifier:shouldHideFromSyndication:]";
            v267 = 2112;
            v268 = v220;
            _os_log_impl(&dword_1B7AD5000, v214, OS_LOG_TYPE_DEFAULT, "%s newSyndicationRange was nil. Did not update syndication ranges for message with GUID %@", buf, 0x16u);
          }
        }

        goto LABEL_117;
      }

      v148 = v146;
      v229 = v55;
      v232 = v61;
      v236 = v10;
      v149 = *v249;
      do
      {
        for (k = 0; k != v148; ++k)
        {
          if (*v249 != v149)
          {
            objc_enumerationMutation(v106);
          }

          if (*(*(&v248 + 1) + 8 * k))
          {
            v151 = IMCMMAssetIndexFromIMFileTransferGUID();
            if (v151 >= v65)
            {
              if (v151 == v238)
              {
                v152 = &unk_1F2FCA290;
              }

              else
              {
                v152 = &unk_1F2FCA278;
              }

              v153 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v147, v151);
              v154 = v152;
              v65 = v239;
              objc_msgSend_setObject_forKeyedSubscript_(v117, v155, v154, v153);
            }
          }
        }

        v148 = objc_msgSend_countByEnumeratingWithState_objects_count_(v106, v147, &v248, v264, 16);
      }

      while (v148);
      v10 = v236;
    }

    v61 = v232;
    v55 = v229;
    goto LABEL_104;
  }

  v32 = IMLogHandleForCategory();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF0ABC();
  }

LABEL_11:
  v34 = 0;
LABEL_12:

  v35 = *MEMORY[0x1E69E9840];
  return v34;
}

- (id)_updateMessageSyncedSyndicationRangesQueryFor:(int64_t)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_msgSend_substitutionStringForCount_(MEMORY[0x1E696AEC0], a2, a3);
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"%@ (%@)", @"update message set synced_syndication_ranges=syndication_ranges where guid in", v4);

  return v6;
}

- (void)updateMessagesSyncedSyndicationRangesForGUIDs:(id)a3 toStatus:(int64_t)a4
{
  v6 = a3;
  v8 = v6;
  if (a4 == 1)
  {
    v10 = v6;
    v9 = objc_msgSend_count(v6, v6, v7);
    v8 = v10;
    if (v9)
    {
      objc_msgSend__updateMessagesSyncedSyndicationRangesToSyncedForGUIDs_(self, v10, v10);
      v8 = v10;
    }
  }
}

- (void)_updateMessagesSyncedSyndicationRangesToSyncedForGUIDs:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23 = 0u;
  memset(v22, 0, sizeof(v22));
  memset(v21, 0, sizeof(v21));
  IMDSqlOperationInitWithSharedCSDBDatabase(v21);
  IMDSqlOperationBeginTransaction(v21);
  v7 = objc_msgSend_count(v4, v5, v6);
  updated = objc_msgSend__updateMessageSyncedSyndicationRangesQueryFor_(self, v8, v7);
  _IMDSqlOperationBeginQuery(v21, updated);
  v10 = v4;
  IMDSqlStatementBindTextFromArrayOfCFStrings(v22, v10);
  if (IMDSqlOperationFinishQuery(v21))
  {
    v11 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v10;
      _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "CloudSync.message | updated synced syndication ranges for recordIDs: %@", buf, 0xCu);
    }
  }

  else
  {
    v11 = *(&v23 + 1);
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF0EEC();
    }
  }

  IMDSqlOperationCommitOrRevertTransaction(v21);
  v20 = 0;
  v13 = IMDSqlOperationRelease(v21, &v20);
  v14 = v20;
  v15 = IMLogHandleForCategory();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
  if (v13)
  {
    if (v16)
    {
      sub_1B7CF1018();
    }
  }

  else if (v16)
  {
    sub_1B7CF0F8C(v14, v15, v17);
  }

  v18 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v25 = v10;
    _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_INFO, "CloudSync.message | Finished updating synced syndication ranges for: %@", buf, 0xCu);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)moveMessageRecordsToRecoveryForMessageGUIDs:(id)a3 deleteDate:(id)a4
{
  v81 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v7 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v6, a3);
  v10 = objc_msgSend_allObjects(v7, v8, v9);

  v62 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v11 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v5;
    *&buf[12] = 2048;
    *&buf[14] = objc_msgSend_count(v10, v12, v13);
    _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Will begin moving messages to recoverable message table with deleteDate: %@ for %lu unique messages", buf, 0x16u);
  }

  v63 = objc_msgSend___im_nanosecondTimeInterval(v5, v14, v15);
  v80 = 0u;
  memset(v79, 0, sizeof(v79));
  memset(buf, 0, sizeof(buf));
  IMDSqlOperationInitWithSharedCSDBDatabase(buf);
  IMDSqlOperationBeginTransaction(buf);
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = v10;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v68, v77, 16);
  if (!v17)
  {
    goto LABEL_24;
  }

  v18 = v17;
  v19 = *v69;
  while (2)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v69 != v19)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v68 + 1) + 8 * i);
      v22 = IMDMessageRecordCopyMessageForGUID(v21);
      v25 = objc_msgSend_rowID(v22, v23, v24);
      v28 = objc_msgSend_dateRecovered(v22, v26, v27);
      v30 = objc_msgSend_compare_(v28, v29, v5);

      if (v30 == 1)
      {
        v31 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v34 = objc_msgSend_dateRecovered(v22, v32, v33);
          *v73 = 138412546;
          v74 = v34;
          v75 = 2112;
          v76 = v5;
          _os_log_impl(&dword_1B7AD5000, v31, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Message was recovered on %@, ignoring synced deletion that happened on %@", v73, 0x16u);
        }
      }

      else
      {
        _IMDSqlOperationBeginQuery(buf, @"INSERT OR REPLACE INTO chat_recoverable_message_join (chat_id, message_id, delete_date)   SELECT chat_id, message_id, ?   FROM chat_message_join AS cmj   JOIN message AS m   ON m.ROWID = cmj.message_id AND m.guid = ?;");
        IMDSqlStatementBindInt64(v79, v63);
        IMDSqlStatementBindTextFromCFString(v79, v21);
        if (!IMDSqlOperationFinishQuery(buf))
        {
          v38 = *(&v80 + 1);
          v39 = IMLogHandleForCategory();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            sub_1B7CF1088();
          }

          goto LABEL_24;
        }

        _IMDSqlOperationBeginQuery(buf, @"DELETE FROM chat_message_join WHERE message_id = ? AND message_id IN(SELECT message_id FROM chat_recoverable_message_join WHERE message_id = ?);");
        IMDSqlStatementBindInt64(v79, v25);
        IMDSqlStatementBindInt64(v79, v25);
        if (IMDSqlOperationFinishQuery(buf))
        {
          objc_msgSend_addObject_(v62, v35, v21);
          goto LABEL_18;
        }

        v31 = *(&v80 + 1);
        v36 = IMLogHandleForCategory();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF1128(v72, v31);
        }
      }

LABEL_18:
    }

    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v37, &v68, v77, 16);
    if (v18)
    {
      continue;
    }

    break;
  }

LABEL_24:

  IMDSqlOperationCommitOrRevertTransaction(buf);
  v67 = 0;
  v40 = IMDSqlOperationRelease(buf, &v67);
  v43 = v67;
  if (v40)
  {
    v44 = objc_msgSend_synchronousQueryProvider(IMDIndexingController, v41, v42);
    v47 = objc_msgSend_allObjects(v62, v45, v46);
    v49 = objc_msgSend_contextWithReason_(IMDIndexingContext, v48, 1005);
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = sub_1B7B3FCB8;
    v65[3] = &unk_1E7CB6C58;
    v66 = v62;
    objc_msgSend_deleteMessageGUIDs_context_completionHandler_(v44, v50, v47, v49, v65);

    v53 = objc_msgSend_synchronousQueryProvider(IMDIndexingController, v51, v52);
    objc_msgSend_scheduleUpdateForDeletedMessagesWithReason_(v53, v54, 1005);

    v55 = v66;
  }

  else
  {
    v55 = IMLogHandleForCategory();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF1184(v43, v55, v56);
    }
  }

  v57 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    v60 = objc_msgSend_count(obj, v58, v59);
    *v73 = 134217984;
    v74 = v60;
    _os_log_impl(&dword_1B7AD5000, v57, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Finished moving messages to recoverable message table for %lu unique messages", v73, 0xCu);
  }

  v61 = *MEMORY[0x1E69E9840];
}

- (void)deleteRecoverableMessagesOlderThanDays:(int64_t)a3
{
  v5 = objc_msgSend_date(MEMORY[0x1E695DF00], a2, a3);
  v9 = objc_msgSend___im_dateByAddingDays_(v5, v6, -a3);

  v8 = objc_msgSend__permanentlyDeleteRecoverableMessagesInChatsWithGUIDs_beforeDate_(self, v7, 0, v9);
}

- (void)deleteJunkMessagesOlderThanDays:(int64_t)a3
{
  v5 = objc_msgSend_date(MEMORY[0x1E695DF00], a2, a3);
  v8 = objc_msgSend___im_dateByAddingDays_(v5, v6, -a3);

  objc_msgSend__permanentlyDeleteJunkMessagesBeforeDate_(self, v7, v8);
}

- (void)permanentlyDeleteRecoverableMessagesInChatsWithGUIDs:(id)a3 completionHandler:(id)a4
{
  v8 = a4;
  v7 = objc_msgSend__permanentlyDeleteRecoverableMessagesInChatsWithGUIDs_beforeDate_(self, v6, a3, 0);
  if (v8)
  {
    v8[2](v8, v7);
  }
}

- (id)_permanentlyDeleteRecoverableMessagesInChatsWithGUIDs:(id)a3 beforeDate:(id)a4
{
  v68 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0]) = 134217984;
    *(buf + 4) = objc_msgSend_count(v6, v9, v10);
    _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Will begin permanently deleting recoverable messages for %lu chatGUIDs", buf, 0xCu);
  }

  if (!(v6 | v7))
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "Recently Deleted | Cannot delete recoverable messages in chats without chatGUIDs or beforeDate", buf, 2u);
      }
    }

    v51 = MEMORY[0x1E695E0F0];
    goto LABEL_50;
  }

  v51 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v55 = objc_msgSend___im_nanosecondTimeInterval(v7, v12, v13);
  v14 = @"INSERT INTO unsynced_removed_recoverable_messages (chat_guid, message_guid, part_index) SELECT c.guid, m.guid, -1 FROM chat_recoverable_message_join AS crmj JOIN chat AS c  ON c.ROWID=crmj.chat_id AND c.guid = ? JOIN message AS m  ON m.ROWID=crmj.message_id AND crmj.delete_date < ? AND crmj.ck_sync_state=1 UNION ALL SELECT c.guid, m.guid, rmp.part_index FROM recoverable_message_part AS rmp JOIN chat AS c  ON c.ROWID=rmp.chat_id JOIN message AS m  ON m.ROWID=rmp.message_id AND rmp.delete_date < ? AND rmp.ck_sync_state=1;";
  if (v7)
  {
    v15 = @"DELETE FROM message AS m WHERE m.ROWID IN( SELECT crmj.message_id   FROM chat_recoverable_message_join AS crmj   JOIN message AS m   ON crmj.message_id = m.ROWID   JOIN chat AS c ON crmj.chat_id = c.ROWID and c.guid = ?   WHERE crmj.delete_date < ?    AND NOT (m.group_action_type IN (1,3) AND (m.ROWID IN (SELECT message_id FROM message_attachment_join))));";
  }

  else
  {
    v14 = @"INSERT INTO unsynced_removed_recoverable_messages (chat_guid, message_guid, part_index) SELECT c.guid, m.guid, -1 FROM chat_recoverable_message_join AS crmj JOIN chat AS c  ON c.ROWID=crmj.chat_id AND c.guid=? JOIN message AS m  ON m.ROWID=crmj.message_id AND crmj.ck_sync_state=1;";
    v15 = @"DELETE FROM message WHERE NOT (group_action_type IN (1,3) AND (ROWID IN (SELECT message_id FROM message_attachment_join))) AND (ROWID IN (SELECT message_id                FROM chat_recoverable_message_join AS crmj                JOIN chat AS c                ON c.ROWID = crmj.chat_id AND c.guid = ?));";
  }

  theString = v14;
  v53 = v15;
  v67 = 0u;
  memset(v66, 0, sizeof(v66));
  memset(buf, 0, sizeof(buf));
  IMDSqlOperationInitWithSharedCSDBDatabase(buf);
  IMDSqlOperationBeginTransaction(buf);
  if (!v6)
  {
    v6 = objc_msgSend__chatGUIDsForChatsWithRecoverableMessagesOlderThanDate_operation_(self, v16, v7, buf);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v6;
  v18 = 0;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v57, v64, 16);
  if (!v20)
  {
    goto LABEL_40;
  }

  v52 = *v58;
  while (2)
  {
    for (i = 0; i != v20; ++i)
    {
      if (*v58 != v52)
      {
        objc_enumerationMutation(obj);
      }

      v22 = *(*(&v57 + 1) + 8 * i);
      v23 = objc_msgSend__mostRecentRecoverableMessageDateForChatWithGUID_operation_(self, v19, v22, buf);
      _IMDSqlOperationBeginQuery(buf, theString);
      IMDSqlStatementBindTextFromCFString(v66, v22);
      if (v7)
      {
        IMDSqlStatementBindInt64(v66, v55);
      }

      if (!IMDSqlOperationFinishQuery(buf))
      {
        v24 = *(&v67 + 1);
        v25 = IMLogHandleForCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF1210(v63, v24);
        }
      }

      _IMDSqlOperationBeginQuery(buf, v53);
      IMDSqlStatementBindTextFromCFString(v66, v22);
      if (v7)
      {
        IMDSqlStatementBindInt64(v66, v55);
      }

      if (!IMDSqlOperationFinishQuery(buf))
      {
        v29 = *(&v67 + 1);
        v30 = IMLogHandleForCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF126C(v22, v29, v30);
        }

        goto LABEL_39;
      }

      v18 += IMDMessageRecordCountChangesUnlocked();
      if (!v7)
      {
        objc_msgSend__deleteTransfersInMessagePartsForChatGUID_(self, v26, v22);
        _IMDSqlOperationBeginQuery(buf, @"DELETE FROM recoverable_message_part AS rmp WHERE rmp.chat_id IN( SELECT c.ROWID  FROM chat AS c  WHERE c.guid = ?);");
        IMDSqlStatementBindTextFromCFString(v66, v22);
        if (!IMDSqlOperationFinishQuery(buf))
        {
          v29 = *(&v67 + 1);
          v30 = IMLogHandleForCategory();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            sub_1B7CF1314(v22, v29, v30);
          }

LABEL_39:

          goto LABEL_40;
        }
      }

      v28 = objc_msgSend__deleteChatIfEmptyWithGUID_lastMessageDate_operation_(self, v26, v22, v23, buf);
      if (v28)
      {
        objc_msgSend_addObject_(v51, v27, v28);
      }
    }

    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v57, v64, 16);
    if (v20)
    {
      continue;
    }

    break;
  }

LABEL_40:

  v33 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8168], v31, v32);
  v36 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v34, v18);
  if (v7)
  {
    objc_msgSend_trackDeleteMessages_sourceType_(v33, v35, v36, 4);
  }

  else
  {
    objc_msgSend_trackDeleteMessages_sourceType_(v33, v35, v36, 1);
  }

  IMDSqlOperationCommitOrRevertTransaction(buf);
  v56 = 0;
  v37 = IMDSqlOperationRelease(buf, &v56);
  v40 = v56;
  if (v37)
  {
    v41 = objc_msgSend_synchronousQueryProvider(IMDIndexingController, v38, v39);
    objc_msgSend_scheduleUpdateForDeletedMessagesWithReason_(v41, v42, 1005);
  }

  else
  {
    v41 = IMLogHandleForCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF13BC(v40, v41, v43);
    }
  }

  v44 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v47 = objc_msgSend_count(obj, v45, v46);
    *v61 = 134217984;
    v62 = v47;
    _os_log_impl(&dword_1B7AD5000, v44, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Finished permanently deleting recoverable messages for %lu chatGUIDs", v61, 0xCu);
  }

LABEL_50:
  v48 = *MEMORY[0x1E69E9840];

  return v51;
}

- (id)_mostRecentRecoverableMessageDateForChatWithGUID:(id)a3 operation:(IMDSqlOperation *)a4
{
  v5 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1B7B4067C;
  v12[3] = &unk_1E7CB8680;
  v14 = a4;
  v6 = v5;
  v13 = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1B7B40688;
  v11[3] = &unk_1E7CB7920;
  v11[4] = &v15;
  v11[5] = a4;
  _IMDSqlOperationRunQuery(a4, @"SELECT m.date FROM chat_recoverable_message_join AS crmj JOIN chat AS c ON c.ROWID = crmj.chat_id AND c.guid = ? JOIN message AS m ON m.ROWID = crmj.message_id ORDER BY m.date DESC LIMIT 1 ", v12, v11);
  v9 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v7, v8, v16[3]);

  _Block_object_dispose(&v15, 8);

  return v9;
}

- (void)_permanentlyDeleteJunkMessagesBeforeDate:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v34 = a3;
  v4 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_DEFAULT, "Junk Messages | Will begin permanently deleting junk messages", buf, 2u);
  }

  if (v34)
  {
    v7 = objc_msgSend___im_nanosecondTimeInterval(v34, v5, v6);
    v43 = 0u;
    v41 = 0u;
    memset(v42, 0, sizeof(v42));
    *buf = 0u;
    IMDSqlOperationInitWithSharedCSDBDatabase(buf);
    IMDSqlOperationBeginTransaction(buf);
    objc_msgSend__chatGUIDsForChatsWithJunkMessagesOlderThanDate_operation_(self, v8, v34, buf);
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    obj = v37 = 0u;
    v10 = 0;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v36, v46, 16);
    if (v12)
    {
      v13 = *v37;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v36 + 1) + 8 * i);
          v16 = objc_msgSend__mostRecentJunkMessageDateForChatWithGUID_operation_(self, v11, v15, buf, v34);
          _IMDSqlOperationBeginQuery(buf, @"DELETE FROM message AS m WHERE m.ROWID IN( SELECT cmj.message_id   FROM chat_message_join AS cmj   JOIN message AS m   ON cmj.message_id = m.ROWID   JOIN chat AS c ON cmj.chat_id = c.ROWID and c.guid = ?   WHERE m.date < ?);");
          IMDSqlStatementBindTextFromCFString(v42, v15);
          IMDSqlStatementBindInt64(v42, v7);
          if (!IMDSqlOperationFinishQuery(buf))
          {
            v20 = *(&v43 + 1);
            v21 = IMLogHandleForCategory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              sub_1B7CF144C(v15, v20, v21);
            }

            goto LABEL_16;
          }

          v17 = IMDMessageRecordCountChangesUnlocked();
          v19 = objc_msgSend__deleteChatIfEmptyWithGUID_lastMessageDate_operation_(self, v18, v15, v16, buf);

          v10 += v17;
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v36, v46, 16);
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    v24 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8168], v22, v23);
    v26 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v25, v10);
    objc_msgSend_trackDeleteMessages_sourceType_(v24, v27, v26, 5);

    IMDSqlOperationCommitOrRevertTransaction(buf);
    v28 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v31 = objc_msgSend_count(obj, v29, v30);
      *v44 = 134217984;
      v45 = v31;
      _os_log_impl(&dword_1B7AD5000, v28, OS_LOG_TYPE_DEFAULT, "Junk Messages | Finished permanently deleting junk messages for %lu chatGUIDs", v44, 0xCu);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v32 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v32, OS_LOG_TYPE_INFO, "Junk Messages | Cannot delete junk messages in chats without beforeDate", buf, 2u);
    }
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (id)_mostRecentJunkMessageDateForChatWithGUID:(id)a3 operation:(IMDSqlOperation *)a4
{
  v5 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1B7B40D5C;
  v12[3] = &unk_1E7CB8680;
  v14 = a4;
  v6 = v5;
  v13 = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1B7B40D68;
  v11[3] = &unk_1E7CB7920;
  v11[4] = &v15;
  v11[5] = a4;
  _IMDSqlOperationRunQuery(a4, @"SELECT m.date FROM chat_message_join AS cmj JOIN chat AS c ON c.ROWID = cmj.chat_id AND c.guid = ? JOIN message AS m ON m.ROWID = cmj.message_id ORDER BY m.date DESC LIMIT 1 ", v12, v11);
  v9 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v7, v8, v16[3]);

  _Block_object_dispose(&v15, 8);

  return v9;
}

- (int64_t)_countMessagesExcludingGroupPhotosInChatWithGUID:(id)a3 isRecoverable:(BOOL)a4 operation:(IMDSqlOperation *)a5
{
  v6 = a4;
  v7 = a3;
  v8 = @"SELECT COUNT(*) FROM chat_message_join AS cmj JOIN message AS m ON cmj.message_id = m.ROWID JOIN chat AS c ON cmj.chat_id = c.ROWID WHERE c.guid = ? AND NOT (m.group_action_type IN (1,3) AND (m.ROWID IN (SELECT message_id FROM message_attachment_join)))";
  if (v6)
  {
    v8 = @"SELECT COUNT(*) FROM chat_recoverable_message_join AS crmj JOIN message AS m ON crmj.message_id = m.ROWID JOIN chat AS c ON crmj.chat_id = c.ROWID WHERE c.guid = ? AND NOT (m.group_action_type IN (1,3) AND (m.ROWID IN (SELECT message_id FROM message_attachment_join)))";
  }

  v9 = v8;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1B7B410B0;
  v14[3] = &unk_1E7CB8680;
  v16 = a5;
  v10 = v7;
  v15 = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B410BC;
  v13[3] = &unk_1E7CB7920;
  v13[4] = &v17;
  v13[5] = a5;
  _IMDSqlOperationRunQuery(a5, v9, v14, v13);
  v11 = v18[3];

  _Block_object_dispose(&v17, 8);
  return v11;
}

- (id)recoverableMessagesMetadataPendingCloudKitSaveWithLimit:(unint64_t)a3 filter:(unint64_t)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v7, a3);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Recently Deleted | retrieving recoverable messages pending cloudkit update with resultLimit: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v20 = 0x3032000000;
  v21 = sub_1B7AE1954;
  v22 = sub_1B7AE24B0;
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = @"SELECT c.guid, crmj.message_id, m.guid, crmj.delete_date, -1, NULL FROM chat_recoverable_message_join AS crmj JOIN chat AS c  ON c.ROWID = crmj.chat_id JOIN message AS m  ON m.ROWID = crmj.message_id WHERE crmj.ck_sync_state = 0  AND (m.balloon_bundle_id IS NULL OR m.balloon_bundle_id != 'com.apple.messages.chatbot')  UNION ALL SELECT c.guid, rmp.message_id, m.guid, rmp.delete_date, rmp.part_index, rmp.part_text  FROM recoverable_message_part AS rmp  JOIN chat AS c   ON c.ROWID = rmp.chat_id  JOIN message AS m   ON m.ROWID = rmp.message_id  WHERE rmp.ck_sync_state = 0  AND (m.balloon_bundle_id IS NULL OR m.balloon_bundle_id != 'com.apple.messages.chatbot') LIMIT ?;";
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1B7B414C8;
  v15[3] = &unk_1E7CB86D0;
  p_buf = &buf;
  v18 = a3;
  if (a4 == 4)
  {
    v9 = @"SELECT c.guid, crmj.message_id, m.guid, crmj.delete_date, -1, NULL FROM chat_recoverable_message_join AS crmj JOIN chat AS c  ON c.ROWID = crmj.chat_id JOIN message AS m  ON m.ROWID = crmj.message_id WHERE crmj.ck_sync_state = 0 AND balloon_bundle_id == 'com.apple.messages.chatbot'   UNION ALL SELECT c.guid, rmp.message_id, m.guid, rmp.delete_date, rmp.part_index, rmp.part_text  FROM recoverable_message_part AS rmp  JOIN chat AS c   ON c.ROWID = rmp.chat_id  JOIN message AS m   ON m.ROWID = rmp.message_id  WHERE rmp.ck_sync_state = 0 AND balloon_bundle_id == 'com.apple.messages.chatbot'  LIMIT ?;";
  }

  v16 = v9;
  IMDRunSqlOperation(v15);
  v10 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v14 = 0;
    _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Recently Deleted | Finished fetching messages metadata pending update", v14, 2u);
  }

  v11 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)recoverableMessagesMetadataPendingCloudKitDeleteWithLimit:(unint64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v5, a3);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Recently Deleted | retrieving recoverable messages pending cloudkit delete with resultLimit: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v14 = 0x3032000000;
  v15 = sub_1B7AE1954;
  v16 = sub_1B7AE24B0;
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1B7B41F20;
  v12[3] = &unk_1E7CB7948;
  v12[4] = &buf;
  v12[5] = a3;
  IMDRunSqlOperation(v12);
  v7 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Recently Deleted | Finished fetching messages metadata pending delete", v11, 2u);
  }

  v8 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)updateRecoverableMessageSyncState:(int64_t)a3 forMessageRowID:(int64_t)a4 onPartIndex:(int64_t)a5
{
  v59 = *MEMORY[0x1E69E9840];
  v8 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v9, a3);
    v12 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v11, a4);
    v14 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v13, a5);
    LODWORD(buf[0]) = 138412802;
    *(buf + 4) = v10;
    WORD2(buf[1]) = 2112;
    *(&buf[1] + 6) = v12;
    HIWORD(buf[2]) = 2112;
    buf[3] = v14;
    _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Recently Deleted | setting recoverable sync state: %@ for message rowID: %@ partIndex: %@", buf, 0x20u);
  }

  v58 = 0u;
  memset(v57, 0, sizeof(v57));
  memset(buf, 0, sizeof(buf));
  IMDSqlOperationInitWithSharedCSDBDatabase(buf);
  if (a5 == -1)
  {
    _IMDSqlOperationBeginQuery(buf, @"UPDATE chat_recoverable_message_join AS crmj SET ck_sync_state = ? WHERE crmj.message_id = ?;");
    v15 = a3;
    v16 = a4;
  }

  else
  {
    _IMDSqlOperationBeginQuery(buf, @"UPDATE recoverable_message_part AS rmp SET ck_sync_state = ? WHERE rmp.message_id = ? AND rmp.part_index = ?;");
    IMDSqlStatementBindInt64(v57, a3);
    v15 = a4;
    v16 = a5;
  }

  IMDSqlStatementBindInt64(v57, v15);
  IMDSqlStatementBindInt64(v57, v16);
  if (!IMDSqlOperationFinishQuery(buf))
  {
    v17 = *(&v58 + 1);
    v18 = IMLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v31 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v19, a3);
      v34 = objc_msgSend_localizedDescription(v17, v32, v33);
      v36 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v35, a4);
      v38 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v37, a5);
      *v48 = 138413058;
      v49 = v31;
      v50 = 2112;
      v51 = v34;
      v52 = 2112;
      v53 = v36;
      v54 = 2112;
      v55 = v38;
      _os_log_error_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_ERROR, "Recently Deleted | Failed setting recoverable sync state: %@ with op finish error: %@ for message rowID: %@ partIndex: %@", v48, 0x2Au);
    }
  }

  v47 = 0;
  v20 = IMDSqlOperationRelease(buf, &v47);
  v21 = v47;
  if (v20)
  {
    v22 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v24 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v23, a3);
      v26 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v25, a4);
      v28 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v27, a5);
      *v48 = 138412802;
      v49 = v24;
      v50 = 2112;
      v51 = v26;
      v52 = 2112;
      v53 = v28;
      _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "Recently Deleted | Successfully set recoverable sync state: %@ for message rowID: %@ partIndex: %@", v48, 0x20u);
    }
  }

  else
  {
    v22 = IMLogHandleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v39 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v29, a3);
      v42 = objc_msgSend_localizedDescription(v21, v40, v41);
      v44 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v43, a4);
      v46 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v45, a5);
      *v48 = 138413058;
      v49 = v39;
      v50 = 2112;
      v51 = v42;
      v52 = 2112;
      v53 = v44;
      v54 = 2112;
      v55 = v46;
      _os_log_error_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_ERROR, "Recently Deleted | Failed setting recoverable sync state: %@ with op release error: %@ for message rowID: %@ partIndex: %@", v48, 0x2Au);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)updateRecoverableMessageSyncState:(int64_t)a3 forMessageGUIDs:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v8, a3);
    *buf = 138412546;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = v6;
    _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Recently Deleted | setting recoverable sync state: %@ for message guids: %@", buf, 0x16u);
  }

  v43 = 0u;
  memset(v42, 0, sizeof(v42));
  memset(buf, 0, sizeof(buf));
  IMDSqlOperationInitWithSharedCSDBDatabase(buf);
  v12 = objc_msgSend_count(v6, v10, v11);
  v14 = objc_msgSend__updateRecoverableMessageSyncStateForMessageGUIDsQueryFor_(self, v13, v12);
  _IMDSqlOperationBeginQuery(buf, v14);
  IMDSqlStatementBindInt64(v42, a3);
  v15 = v6;
  IMDSqlStatementBindTextFromArrayOfCFStrings(v42, v15);
  if (!IMDSqlOperationFinishQuery(buf))
  {
    v16 = *(&v43 + 1);
    v17 = IMLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v26 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v18, a3);
      v29 = objc_msgSend_localizedDescription(v16, v27, v28);
      *v35 = 138412802;
      v36 = v26;
      v37 = 2112;
      v38 = v29;
      v39 = 2112;
      v40 = v15;
      _os_log_error_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_ERROR, "Recently Deleted | Failed bulk updating recoverable messages sync state: %@ with op finish error: %@ for message guids: %@", v35, 0x20u);
    }
  }

  v34 = 0;
  v19 = IMDSqlOperationRelease(buf, &v34);
  v20 = v34;
  if (v19)
  {
    v21 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v23 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v22, a3);
      *v35 = 138412546;
      v36 = v23;
      v37 = 2112;
      v38 = v15;
      _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "Recently Deleted | Successfully bulk updated recoverable sync state: %@ for message guids: %@", v35, 0x16u);
    }
  }

  else
  {
    v21 = IMLogHandleForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v30 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v24, a3);
      v33 = objc_msgSend_localizedDescription(v20, v31, v32);
      *v35 = 138412802;
      v36 = v30;
      v37 = 2112;
      v38 = v33;
      v39 = 2112;
      v40 = v15;
      _os_log_error_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_ERROR, "Recently Deleted | Failed bulk updating recoverable sync state: %@ with op release error: %@ for message guids: %@", v35, 0x20u);
    }
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)storeRecoverableMessagePartWithBody:(id)a3 forMessageWithGUID:(id)a4 deleteDate:(id)a5
{
  v60 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (objc_msgSend_length(v7, v10, v11))
  {
    v12 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf[0]) = 138412546;
      *(buf + 4) = v8;
      WORD2(buf[1]) = 2112;
      *(&buf[1] + 6) = v9;
      _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "Recently Deleted | Will begin storing message part body for message with GUID: %@ at deleteDate: %@", buf, 0x16u);
    }

    v15 = objc_msgSend___im_nanosecondTimeInterval(v9, v13, v14);
    v17 = objc_msgSend_attributesAtIndex_effectiveRange_(v7, v16, 0, 0);
    v19 = objc_msgSend_objectForKey_(v17, v18, *MEMORY[0x1E69A5FD8]);

    if (v19)
    {
      v22 = objc_msgSend_integerValue(v19, v20, v21);
      v23 = JWEncodeCodableObject();
      if (v23)
      {
        v59 = 0u;
        memset(v58, 0, sizeof(v58));
        memset(buf, 0, sizeof(buf));
        IMDSqlOperationInitWithSharedCSDBDatabase(buf);
        IMDSqlOperationBeginTransaction(buf);
        _IMDSqlOperationBeginQuery(buf, @"INSERT INTO recoverable_message_part (chat_id, message_id, part_index, delete_date, part_text, ck_sync_state)   SELECT cmj.chat_id, cmj.message_id, ?, ?, ?, 0   FROM chat_message_join AS cmj   JOIN message AS m   ON m.ROWID = cmj.message_id AND m.guid = ?;");
        IMDSqlStatementBindInt64(v58, v22);
        IMDSqlStatementBindInt64(v58, v15);
        IMDSqlStatementBindBlob(v58, v23);
        IMDSqlStatementBindTextFromCFString(v58, v8);
        if (!IMDSqlOperationFinishQuery(buf))
        {
          v24 = *(&v59 + 1);
          v25 = IMLogHandleForCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v45 = objc_msgSend_localizedDescription(v24, v26, v27);
            *v51 = 138412802;
            v52 = v45;
            v53 = 2112;
            v54 = v8;
            v55 = 2112;
            v56 = v9;
            _os_log_error_impl(&dword_1B7AD5000, v25, OS_LOG_TYPE_ERROR, "Recently Deleted | Failed with error: %@ storing message part body for message with GUID: %@ at deleteDate: %@", v51, 0x20u);
          }
        }

        IMDSqlOperationCommitOrRevertTransaction(buf);
        v49 = 0;
        v28 = IMDSqlOperationRelease(buf, &v49);
        v31 = v49;
        if (v28)
        {
          v32 = objc_msgSend_synchronousQueryProvider(IMDIndexingController, v29, v30);
          v50 = v8;
          v34 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v33, &v50, 1);
          v36 = objc_msgSend_contextWithReason_(IMDIndexingContext, v35, 1005);
          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 3221225472;
          v47[2] = sub_1B7B43200;
          v47[3] = &unk_1E7CB6C58;
          v48 = v8;
          objc_msgSend_deleteMessageGUIDs_context_completionHandler_(v32, v37, v34, v36, v47);

          v40 = objc_msgSend_synchronousQueryProvider(IMDIndexingController, v38, v39);
          objc_msgSend_scheduleUpdateForDeletedMessagesWithReason_(v40, v41, 1005);

          v42 = v48;
        }

        else
        {
          v42 = IMLogHandleForCategory();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            sub_1B7CF1564(v31, v42, v43);
          }
        }

        v44 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          *v51 = 138412546;
          v52 = v8;
          v53 = 2112;
          v54 = v9;
          _os_log_impl(&dword_1B7AD5000, v44, OS_LOG_TYPE_INFO, "Recently Deleted | Finished storing message part body for message with GUID: %@ at deleteDate: %@", v51, 0x16u);
        }
      }

      else
      {
        v23 = IMLogHandleForCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF15F4();
        }
      }
    }

    else
    {
      v23 = IMLogHandleForCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF1630();
      }
    }
  }

  else
  {
    v19 = IMLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF166C();
    }
  }

  v46 = *MEMORY[0x1E69E9840];
}

- (void)clearRecoverableMessageTombStones
{
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Recently Deleted | Will begin clearing recoverable message tombstones", buf, 2u);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *buf = 0u;
  IMDSqlOperationInitWithSharedCSDBDatabase(buf);
  IMDSqlOperationBeginTransaction(buf);
  _IMDSqlOperationBeginQuery(buf, @"DELETE FROM unsynced_removed_recoverable_messages;");
  if (!IMDSqlOperationFinishQuery(buf))
  {
    v3 = *(&v23 + 1);
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF16A8(v3, v4, v5);
    }
  }

  IMDSqlOperationCommitOrRevertTransaction(buf);
  v12 = 0;
  v6 = IMDSqlOperationRelease(buf, &v12);
  v7 = v12;
  if (!v6)
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF1184(v7, v8, v9);
    }
  }

  v10 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v11 = 0;
    _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Recently Deleted | Finished clearing recoverable message tombstones", v11, 2u);
  }
}

- (void)fetchTotalMessageCountWithCompletionHandler:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF00];
  v4 = a3;
  objc_msgSend_timeIntervalSinceReferenceDate(v3, v5, v6);
  v8 = v7;
  memset(v21, 0, sizeof(v21));
  IMDSqlOperationInitWithSharedCSDBDatabase(v21);
  IMDSqlOperationBeginTransaction(v21);
  v9 = _IMDColumnTotalCount(v21, @"SELECT COUNT(*) FROM message;");
  IMDSqlOperationCommitOrRevertTransaction(v21);
  v20 = 0;
  IMDSqlOperationRelease(v21, &v20);
  v12 = v20;
  if (v12)
  {
    v13 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      objc_msgSend_localizedDescription(v12, v14, v15);
      v16 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412290;
      v23 = v16;
      _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "IMDMessageRecordCalculateTotalMessageCount failed with error: %@", buf, 0xCu);
    }

    v9 = -1;
  }

  else
  {
    objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v10, v11);
    v18 = v17;
    v13 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v23 = v18 - v8;
      v24 = 2048;
      v25 = v9;
      _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "Calculated total messages count in %f seconds. Messages: %lld", buf, 0x16u);
    }
  }

  v4[2](v4, v9);
  v19 = *MEMORY[0x1E69E9840];
}

- (void)fetchMessagesWithoutChatsCountWithCompletionHandler:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF00];
  v4 = a3;
  objc_msgSend_timeIntervalSinceReferenceDate(v3, v5, v6);
  v8 = v7;
  memset(v21, 0, sizeof(v21));
  IMDSqlOperationInitWithSharedCSDBDatabase(v21);
  IMDSqlOperationBeginTransaction(v21);
  v9 = _IMDColumnTotalCount(v21, @"SELECT COUNT(*) FROM message m LEFT JOIN chat_message_join cm ON m.ROWID = cm.message_id LEFT JOIN chat_recoverable_message_join crmj ON m.ROWID = crmj.message_id WHERE cm.message_id IS NULL AND crmj.message_id IS NULL AND m.item_type = 0;");
  IMDSqlOperationCommitOrRevertTransaction(v21);
  v20 = 0;
  IMDSqlOperationRelease(v21, &v20);
  v12 = v20;
  if (v12)
  {
    v13 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      objc_msgSend_localizedDescription(v12, v14, v15);
      v16 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412290;
      v23 = v16;
      _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "IMDMessageRecordCalculateMessagesWithoutChatsCount failed with error: %@", buf, 0xCu);
    }

    v9 = -1;
  }

  else
  {
    objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v10, v11);
    v18 = v17;
    v13 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v23 = v18 - v8;
      v24 = 2048;
      v25 = v9;
      _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "Calculated messages without chats count in %f seconds. Missing Messages: %lld", buf, 0x16u);
    }
  }

  v4[2](v4, v9);
  v19 = *MEMORY[0x1E69E9840];
}

- (void)fetchUnreadIncomingMessagesCount:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7B438BC;
  v7[3] = &unk_1E7CB67C0;
  v8 = v4;
  v5 = v4;
  objc_msgSend__performPersistenceBlock_(self, v6, v7);
}

- (id)_updateRecoverableMessageSyncStateForMessageGUIDsQueryFor:(int64_t)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_msgSend_substitutionStringForCount_(MEMORY[0x1E696AEC0], a2, a3);
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"%@ (%@)", @"SELECT rowid FROM message WHERE guid IN", v4);

  v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, @"%@ (%@)", @"UPDATE chat_recoverable_message_join AS crmj SET ck_sync_state = ? WHERE crmj.message_id IN", v6);

  return v8;
}

+ (IMDRemoteDatabaseProtocol)database
{
  if (objc_msgSend_isServerProcess(a1, a2, v2))
  {
    if (qword_1EBA53B18 != -1)
    {
      sub_1B7CF17D4();
    }

    v6 = qword_1EBA53B20;
  }

  else
  {
    v6 = objc_msgSend__databaseClientAsync(a1, v4, v5);
  }

  return v6;
}

+ (id)_databaseClientAsync
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7B47374;
  block[3] = &unk_1E7CB6A70;
  block[4] = a1;
  if (qword_1EBA53B58 != -1)
  {
    dispatch_once(&qword_1EBA53B58, block);
  }

  v2 = qword_1EBA53B60;

  return v2;
}

- (id)_initAsSynchronous:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = IMDDatabase;
  result = [(IMDDatabase *)&v5 init];
  if (result)
  {
    *(result + 8) = a3;
  }

  return result;
}

- (void)handoffReplyToQueue:(id)a3 block:(id)a4
{
  queue = a3;
  v6 = a4;
  v9 = objc_msgSend_currentConnection(MEMORY[0x1E696B0B8], v7, v8);

  if (v9)
  {
    objc_msgSend__handoffCurrentReplyToQueue_block_(MEMORY[0x1E696B0B8], v10, queue, v6);
  }

  else if (objc_msgSend_isSynchronous(self, v10, v11))
  {
    dispatch_sync(queue, v6);
  }

  else
  {
    dispatch_async(queue, v6);
  }
}

- (void)_performPersistenceBlock:(id)a3
{
  block = a3;
  isSynchronous = objc_msgSend_isSynchronous(self, v4, v5);
  IMDPersistencePerformBlockWithHandoffIfNeeded(block, isSynchronous, v7);
}

- (void)deleteAttachmentsDirectWithPredicate:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = [IMDPredicateToSQLConverter alloc];
    v7 = objc_msgSend_keyPathsToColumns(IMDAttachmentRecord, v5, v6);
    v9 = objc_msgSend_initWithPredicate_keyPathsToColumns_(v4, v8, v3, v7);

    if (!v9)
    {
      v10 = IMDatabaseMessageEventLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v22 = "[IMDDatabase(LegacyAttachments) deleteAttachmentsDirectWithPredicate:]";
        v23 = 2112;
        v24 = v3;
        _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Bad predicate provided to %s (%@)", buf, 0x16u);
      }

      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v3;
    _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_DEFAULT, "Deleting attachments filtered by predicate %@", buf, 0xCu);
  }

  v14 = objc_msgSend_expression(v9, v12, v13);
  v16 = IMDAttachmentRecordDeleteUsingPredicateQuery(v14, v15);

  v17 = v16;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1B7B60B14;
  v19[3] = &unk_1E7CB8658;
  v20 = v9;
  v10 = v9;
  _IMDPerformLockedStatementBlockWithQuery(v17, v19);

LABEL_9:
  v18 = *MEMORY[0x1E69E9840];
}

- (id)_updateAttachmentsSyncStateQueryFor:(int64_t)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_msgSend_substitutionStringForCount_(MEMORY[0x1E696AEC0], a2, a3);
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"%@( %@)", @"UPDATE attachment SET ck_sync_state = ? WHERE guid IN ", v4);

  return v6;
}

- (void)updateAttachmentsSyncStatusTo:(int64_t)a3 forGUIDs:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v25 = 0u;
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  IMDSqlOperationInitWithSharedCSDBDatabase(v23);
  IMDSqlOperationBeginTransaction(v23);
  v9 = objc_msgSend_count(v6, v7, v8);
  updated = objc_msgSend__updateAttachmentsSyncStateQueryFor_(self, v10, v9);
  _IMDSqlOperationBeginQuery(v23, updated);
  IMDSqlStatementBindInt64(v24, a3);
  v12 = v6;
  IMDSqlStatementBindTextFromArrayOfCFStrings(v24, v12);
  if (IMDSqlOperationFinishQuery(v23))
  {
    v13 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v27 = v12;
      _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "CloudSync.message | updated ck_sync_state for recordIDs: %@", buf, 0xCu);
    }
  }

  else
  {
    v13 = *(&v25 + 1);
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF49FC(v12, v13, v14);
    }
  }

  IMDSqlOperationCommitOrRevertTransaction(v23);
  v22 = 0;
  v15 = IMDSqlOperationRelease(v23, &v22);
  v16 = v22;
  v17 = IMLogHandleForCategory();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
  if (v15)
  {
    if (v18)
    {
      sub_1B7CF4B48(v12, v17);
    }
  }

  else if (v18)
  {
    sub_1B7CF4AB0(v16, v17, v19);
  }

  v20 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v27 = v12;
    _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_INFO, "CloudSync.message | Finished updating ck_sync_state for recordIDs %@", buf, 0xCu);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)fetchAttachmentRecordsFilteredUsingPredicate:(id)a3 limit:(unint64_t)a4 completionHandler:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    v10 = [IMDPredicateToSQLConverter alloc];
    v13 = objc_msgSend_keyPathsToColumns(IMDAttachmentRecord, v11, v12);
    v15 = objc_msgSend_initWithPredicate_keyPathsToColumns_(v10, v14, v8, v13);

    if (!v15)
    {
      v16 = IMDatabaseMessageEventLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "[IMDDatabase(LegacyAttachments) fetchAttachmentRecordsFilteredUsingPredicate:limit:completionHandler:]";
        *&buf[12] = 2112;
        *&buf[14] = v8;
        _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Bad predicate provided to %s (%@)", buf, 0x16u);
      }

      v9[2](v9, MEMORY[0x1E695E0F0]);
      goto LABEL_14;
    }
  }

  else
  {
    v15 = 0;
  }

  v17 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = @"YES";
    if (!v8)
    {
      v18 = @"NO";
    }

    *buf = 138412546;
    *&buf[4] = v18;
    *&buf[12] = 2048;
    *&buf[14] = a4;
    _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_DEFAULT, "Fetching attachments filtered by predicate: %@ limit: %llu", buf, 0x16u);
  }

  v21 = objc_msgSend_expression(v15, v19, v20);
  v23 = IMDAttachmentRecordCopyFilteredUsingPredicateWithLimitQuery(v21, v22);

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v31 = sub_1B7AE19D4;
  v32 = sub_1B7AE24F8;
  v33 = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_1B7B6117C;
  v26[3] = &unk_1E7CB6930;
  v24 = v15;
  v28 = self;
  v29 = buf;
  v27 = v24;
  _IMDPerformLockedStatementBlockWithQuery(v23, v26);
  if (v9)
  {
    v9[2](v9, *(*&buf[8] + 40));
  }

  _Block_object_dispose(buf, 8);
LABEL_14:

  v25 = *MEMORY[0x1E69E9840];
}

- (void)fetchAttachmentRecordsFilteredUsingPredicate:(id)a3 sortedUsingDescriptors:(id)a4 limit:(unint64_t)a5 completionHandler:(id)a6
{
  v71 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v45 = a4;
  v48 = a6;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = sub_1B7AE19D4;
  v62 = sub_1B7AE24F8;
  v63 = 0;
  v46 = v8;
  if (v8)
  {
    v9 = [IMDPredicateToSQLConverter alloc];
    v12 = objc_msgSend_keyPathsToColumns(IMDAttachmentRecord, v10, v11);
    v47 = objc_msgSend_initWithPredicate_keyPathsToColumns_(v9, v13, v8, v12);

    if (!v47)
    {
      v14 = IMDatabaseMessageEventLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v65 = "[IMDDatabase(LegacyAttachments) fetchAttachmentRecordsFilteredUsingPredicate:sortedUsingDescriptors:limit:completionHandler:]";
        v66 = 2112;
        v67 = v8;
        _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "Bad predicate provided to %s (%@)", buf, 0x16u);
      }

      if (v48)
      {
        v48[2](v48, MEMORY[0x1E695E0F0]);
      }

      goto LABEL_28;
    }
  }

  else
  {
    v47 = 0;
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v16 = v45;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v54, v70, 16);
  if (v18)
  {
    v19 = *v55;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v55 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v54 + 1) + 8 * i);
        v22 = [IMDSortDescriptorToSQLConverter alloc];
        v25 = objc_msgSend_keyPathsToColumns(IMDAttachmentRecord, v23, v24);
        v27 = objc_msgSend_initWithSortDescriptor_keyPathsToColumns_(v22, v26, v21, v25);

        if (!v27)
        {
          v41 = IMDatabaseMessageEventLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v65 = "[IMDDatabase(LegacyAttachments) fetchAttachmentRecordsFilteredUsingPredicate:sortedUsingDescriptors:limit:completionHandler:]";
            v66 = 2112;
            v67 = v21;
            _os_log_impl(&dword_1B7AD5000, v41, OS_LOG_TYPE_INFO, "Bad sort descriptor provided to %s (%@)", buf, 0x16u);
          }

          if (v48)
          {
            (v48[2])();
          }

          goto LABEL_27;
        }

        v30 = objc_msgSend_expression(v27, v28, v29);
        objc_msgSend_addObject_(v15, v31, v30);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v32, &v54, v70, 16);
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v33 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v36 = objc_msgSend_count(v16, v34, v35);
    v37 = @"YES";
    *buf = 138412802;
    if (!v46)
    {
      v37 = @"NO";
    }

    v65 = v37;
    v66 = 2048;
    v67 = v36;
    v68 = 2048;
    v69 = a5;
    _os_log_impl(&dword_1B7AD5000, v33, OS_LOG_TYPE_DEFAULT, "Fetching attachments filtered by predicate: %@ sortDescriptors: %llu limit: %llu", buf, 0x20u);
  }

  v40 = objc_msgSend_expression(v47, v38, v39);
  v16 = IMDAttachmentRecordCopySortedAttachmentsFilteredUsingPredicateWithLimitQuery(v40, v15);

  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = sub_1B7B61714;
  v49[3] = &unk_1E7CB6958;
  v52 = &v58;
  v53 = a5;
  v50 = v47;
  v51 = self;
  _IMDPerformLockedStatementBlockWithQuery(v16, v49);
  if (v48)
  {
    v48[2](v48, v59[5]);
  }

LABEL_27:
LABEL_28:
  _Block_object_dispose(&v58, 8);

  v42 = *MEMORY[0x1E69E9840];
}

- (id)_copyAttachmentRecordsFromCoreSDBResults:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E695DF70]);
    v7 = objc_msgSend_count(v3, v5, v6);
    v9 = objc_msgSend_initWithCapacity_(v4, v8, v7);
    if (objc_msgSend_count(v3, v10, v11))
    {
      v14 = 0;
      v15 = *MEMORY[0x1E695E480];
      do
      {
        objc_msgSend_objectAtIndex_(v3, v12, v14);
        ID = CSDBRecordGetID();
        v17 = IMDAttachmentRecordCreateFromRecordID(v15, ID);
        if (v17)
        {
          v20 = v17;
          objc_msgSend_addObject_(v9, v18, v17);
          CFRelease(v20);
        }

        ++v14;
      }

      while (v14 < objc_msgSend_count(v3, v18, v19));
    }

    v21 = objc_msgSend_copy(v9, v12, v13);
  }

  else
  {
    v21 = MEMORY[0x1E695E0F0];
  }

  return v21;
}

- (void)postSharePlayNotificationForChatGUID:(id)a3 faceTimeConversationUUID:(id)a4 handleIdentifier:(id)a5 localizedApplicationName:(id)a6
{
  v27 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138413058;
    v20 = v9;
    v21 = 2112;
    v22 = v10;
    v23 = 2112;
    v24 = v11;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_DEFAULT, "Asked to post Started SharePlay from Messages notification for chat GUID %@, FaceTime conversation UUID %@, handleIdentifier %@, and localizedApplicationName %@", &v19, 0x2Au);
  }

  v16 = objc_msgSend_sharedInstance(IMDNotificationsController, v14, v15);
  objc_msgSend_postSharePlayNotificationForChatGUID_faceTimeConversationUUID_handleIdentifier_localizedApplicationName_(v16, v17, v9, v10, v11, v12);

  v18 = *MEMORY[0x1E69E9840];
}

- (id)chatRecordsFilteredByPredicate:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1B7AE1A14;
  v28 = sub_1B7AE2520;
  v29 = 0;
  if (v4)
  {
    v5 = [IMDPredicateToSQLConverter alloc];
    v8 = objc_msgSend_keyPathsToColumns(IMDChatRecord, v6, v7);
    v10 = objc_msgSend_initWithPredicate_keyPathsToColumns_(v5, v9, v4, v8);

    if (v10)
    {
      v11 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = @"YES";
        _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_DEFAULT, "Fetching chats filtered by predicate: %@", buf, 0xCu);
      }

      v14 = objc_msgSend_expression(v10, v12, v13);
      v15 = IMDChatRecordCopyChatsFilteredUsingPredicateQuery(v14);

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = sub_1B7B7A91C;
      v20[3] = &unk_1E7CB6930;
      v22 = self;
      v23 = &v24;
      v21 = v10;
      _IMDPerformLockedStatementBlockWithQuery(v15, v20);
      v16 = v25[5];
      if (!v16)
      {
        v16 = MEMORY[0x1E695E0F0];
      }

      v17 = v16;
    }

    else
    {
      v15 = IMDatabaseMessageEventLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v31 = "[IMDDatabase(LegacyChats) chatRecordsFilteredByPredicate:]";
        v32 = 2112;
        v33 = v4;
        _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "Bad predicate provided to %s (%@)", buf, 0x16u);
      }

      v17 = 0;
    }
  }

  else
  {
    v10 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v31 = "[IMDDatabase(LegacyChats) chatRecordsFilteredByPredicate:]";
      _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "No predicate provided to %s", buf, 0xCu);
    }

    v17 = 0;
  }

  _Block_object_dispose(&v24, 8);
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)fetchChatRecordsFilteredUsingPredicate:(id)a3 sortedUsingDescriptors:(id)a4 limit:(unint64_t)a5 completionHandler:(id)a6
{
  v72 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v46 = a4;
  v49 = a6;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = sub_1B7AE1A14;
  v63 = sub_1B7AE2520;
  v64 = 0;
  v47 = v8;
  if (v8)
  {
    v9 = [IMDPredicateToSQLConverter alloc];
    v12 = objc_msgSend_keyPathsToColumns(IMDChatRecord, v10, v11);
    v48 = objc_msgSend_initWithPredicate_keyPathsToColumns_(v9, v13, v8, v12);

    if (!v48)
    {
      v14 = IMDatabaseMessageEventLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v66 = "[IMDDatabase(LegacyChats) fetchChatRecordsFilteredUsingPredicate:sortedUsingDescriptors:limit:completionHandler:]";
        v67 = 2112;
        v68 = v8;
        _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "Bad predicate provided to %s (%@)", buf, 0x16u);
      }

      if (v49)
      {
        v49[2](v49, MEMORY[0x1E695E0F0]);
      }

      goto LABEL_28;
    }
  }

  else
  {
    v48 = 0;
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v16 = v46;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v55, v71, 16);
  if (v18)
  {
    v19 = *v56;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v56 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v55 + 1) + 8 * i);
        v22 = [IMDSortDescriptorToSQLConverter alloc];
        v25 = objc_msgSend_keyPathsToColumns(IMDChatRecord, v23, v24);
        v27 = objc_msgSend_initWithSortDescriptor_keyPathsToColumns_(v22, v26, v21, v25);

        if (!v27)
        {
          v42 = IMDatabaseMessageEventLogHandle();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v66 = "[IMDDatabase(LegacyChats) fetchChatRecordsFilteredUsingPredicate:sortedUsingDescriptors:limit:completionHandler:]";
            v67 = 2112;
            v68 = v21;
            _os_log_impl(&dword_1B7AD5000, v42, OS_LOG_TYPE_INFO, "Bad sort descriptor provided to %s (%@)", buf, 0x16u);
          }

          if (v49)
          {
            (v49[2])();
          }

          goto LABEL_27;
        }

        v30 = objc_msgSend_expression(v27, v28, v29);
        objc_msgSend_addObject_(v15, v31, v30);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v32, &v55, v71, 16);
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v33 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v36 = objc_msgSend_count(v16, v34, v35);
    v37 = @"YES";
    *buf = 138412802;
    if (!v47)
    {
      v37 = @"NO";
    }

    v66 = v37;
    v67 = 2048;
    v68 = v36;
    v69 = 2048;
    v70 = a5;
    _os_log_impl(&dword_1B7AD5000, v33, OS_LOG_TYPE_DEFAULT, "Fetching chats filtered by predicate: %@ sortDescriptors: %llu limit: %llu", buf, 0x20u);
  }

  v40 = objc_msgSend_expression(v48, v38, v39);
  v16 = IMDChatRecordCopySortedChatsFilteredUsingPredicateWithLimitQuery(v40, v15, v41);

  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = sub_1B7B7AEB0;
  v50[3] = &unk_1E7CB6958;
  v53 = &v59;
  v54 = a5;
  v51 = v48;
  v52 = self;
  _IMDPerformLockedStatementBlockWithQuery(v16, v50);
  if (v49)
  {
    v49[2](v49, v60[5]);
  }

LABEL_27:
LABEL_28:
  _Block_object_dispose(&v59, 8);

  v43 = *MEMORY[0x1E69E9840];
}

- (void)fetchChatRecordsFilteredUsingPredicate:(id)a3 sortedUsingLastMessageDateAscending:(BOOL)a4 olderThan:(id)a5 limit:(unint64_t)a6 completionHandler:(id)a7
{
  v10 = a4;
  v48 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v14 = a7;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_1B7AE1A14;
  v40 = sub_1B7AE2520;
  v41 = 0;
  if (v12)
  {
    v15 = [IMDPredicateToSQLConverter alloc];
    v18 = objc_msgSend_keyPathsToColumns(IMDChatRecord, v16, v17);
    v20 = objc_msgSend_initWithPredicate_keyPathsToColumns_(v15, v19, v12, v18);

    if (!v20)
    {
      v21 = IMDatabaseMessageEventLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v43 = "[IMDDatabase(LegacyChats) fetchChatRecordsFilteredUsingPredicate:sortedUsingLastMessageDateAscending:olderThan:limit:completionHandler:]";
        v44 = 2112;
        v45 = v12;
        _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "Bad predicate provided to %s (%@)", buf, 0x16u);
      }

      if (v14)
      {
        v14[2](v14, MEMORY[0x1E695E0F0]);
      }

      goto LABEL_15;
    }
  }

  else
  {
    v20 = 0;
  }

  v22 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = @"YES";
    *buf = 138412802;
    if (!v12)
    {
      v23 = @"NO";
    }

    v43 = v23;
    v44 = 2112;
    v45 = v13;
    v46 = 2048;
    v47 = a6;
    _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_DEFAULT, "Fetching chats sorted by recent and filtered by predicate: %@ olderThan: %@ limit: %llu", buf, 0x20u);
  }

  v26 = objc_msgSend_expression(v20, v24, v25);
  MessageDateAndFilteredUsingPredicateWithLimitQuery = IMDChatRecordCopyChatsSortedByLastMessageDateAndFilteredUsingPredicateWithLimitQuery(v10, v13, v26);

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = sub_1B7B7B2A8;
  v30[3] = &unk_1E7CBAD20;
  v28 = v20;
  v31 = v28;
  v34 = &v36;
  v35 = a6;
  v32 = v13;
  v33 = self;
  _IMDPerformLockedStatementBlockWithQuery(MessageDateAndFilteredUsingPredicateWithLimitQuery, v30);
  if (v14)
  {
    v14[2](v14, v37[5]);
  }

LABEL_15:
  _Block_object_dispose(&v36, 8);

  v29 = *MEMORY[0x1E69E9840];
}

- (id)chatRecordsWithIdentifier:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1B7AE1A14;
  v20 = sub_1B7AE2520;
  v21 = 0;
  if (objc_msgSend_length(v4, v5, v6))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1B7B7B554;
    v12[3] = &unk_1E7CB6930;
    v14 = self;
    v15 = &v16;
    v13 = v4;
    _IMDPerformLockedStatementBlockWithQuery(@"SELECT ROWID, guid, style, state, account_id, properties, chat_identifier, service_name, room_name, account_login, is_archived, last_addressed_handle, display_name, group_id, is_filtered, successful_query, engram_id, server_change_token, ck_sync_state, original_group_id, last_read_message_timestamp, cloudkit_record_id, last_addressed_sim_id, is_blackholed, syndication_date, syndication_type, is_recovered, is_deleting_incoming_messages FROM chat WHERE    chat_identifier = ? ORDER BY chat.ROWID ASC;", v12);
    v7 = v17[5];
    if (!v7)
    {
      v7 = MEMORY[0x1E695E0F0];
    }

    v8 = v7;
    v9 = v13;
  }

  else
  {
    v9 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v23 = "[IMDDatabase(LegacyChats) chatRecordsWithIdentifier:]";
      _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "No identifier provided to %s", buf, 0xCu);
    }

    v8 = MEMORY[0x1E695E0F0];
  }

  _Block_object_dispose(&v16, 8);
  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)fetchChatRecordsWithPinningIdentifier:(id)a3 completionHandler:(id)a4
{
  v69 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_length(v6, v8, v9))
  {
    v11 = objc_msgSend_chatRecordsWithIdentifier_(self, v10, v6);
    v12 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v66 = objc_msgSend_count(v11, v13, v14);
      v67 = 2112;
      v68 = v6;
      _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_DEFAULT, "Found %llu pinned chats using chatIdentifier %@", buf, 0x16u);
    }

    if (objc_msgSend_count(v11, v15, v16))
    {
      v19 = v11;
      v20 = objc_msgSend_count(v11, v17, v18);
    }

    else
    {
      v19 = IMDChatRecordCopyChatsWithGroupID(v6);

      v22 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v25 = objc_msgSend_count(v19, v23, v24);
        *buf = 134218242;
        v66 = v25;
        v67 = 2112;
        v68 = v6;
        _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_DEFAULT, "Found %llu pinned chats using groupID %@", buf, 0x16u);
      }

      v20 = objc_msgSend_count(v19, v26, v27);
    }

    if (!v20)
    {
      v59 = v19;
      v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v29 = objc_alloc_init(IMDChatRecordBatchFetcher);
      v30 = *MEMORY[0x1E69A6C98];
      v32 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], v31, @"%K = %@", *MEMORY[0x1E69A6C98], *MEMORY[0x1E69A7AE0]);
      objc_msgSend_setPredicate_(v29, v33, v32);

      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v34 = v29;
      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v60, v64, 16);
      if (v36)
      {
        v39 = v36;
        v40 = *v61;
        v41 = &selRef__permanentlyDeleteRecoverableMessagesInChatsWithGUIDs_beforeDate_;
        v58 = v28;
        while (2)
        {
          v42 = 0;
          v43 = v41[304];
          do
          {
            if (*v61 != v40)
            {
              objc_enumerationMutation(v34);
            }

            v44 = *(*(&v60 + 1) + 8 * v42);
            v45 = objc_msgSend_handleRecords(v44, v37, v38);
            v47 = objc_msgSend_arrayByApplyingSelector_(v45, v46, v43);

            v48 = IMSHA1HashFromStrings();
            if (objc_msgSend_isEqualToString_(v6, v49, v48))
            {
              v28 = v58;
              objc_msgSend_addObject_(v58, v50, v44);

              goto LABEL_24;
            }

            ++v42;
          }

          while (v39 != v42);
          v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v37, &v60, v64, 16);
          v28 = v58;
          v41 = &selRef__permanentlyDeleteRecoverableMessagesInChatsWithGUIDs_beforeDate_;
          if (v39)
          {
            continue;
          }

          break;
        }
      }

LABEL_24:

      v19 = objc_msgSend_copy(v28, v51, v52);
      v53 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v56 = objc_msgSend_count(v19, v54, v55);
        *buf = 134218242;
        v66 = v56;
        v67 = 2112;
        v68 = v6;
        _os_log_impl(&dword_1B7AD5000, v53, OS_LOG_TYPE_DEFAULT, "Found %llu pinned chats using participantHash %@", buf, 0x16u);
      }
    }

    if (v7)
    {
      v7[2](v7, v19);
    }
  }

  else
  {
    v21 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v66 = v6;
      v67 = 2080;
      v68 = "[IMDDatabase(LegacyChats) fetchChatRecordsWithPinningIdentifier:completionHandler:]";
      _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "No pinning identifier (%@) provided to %s", buf, 0x16u);
    }

    if (v7)
    {
      v7[2](v7, MEMORY[0x1E695E0F0]);
    }
  }

  v57 = *MEMORY[0x1E69E9840];
}

- (void)_fetchChatRecordsWithHandles:(id)a3 allowSubsetMatching:(BOOL)a4 serviceNames:(id)a5 displayName:(id)a6 groupID:(id)a7 style:(unsigned __int8)a8 useOriginalGroupID:(BOOL)a9 completionHandler:(id)a10
{
  v75 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a5;
  v50 = a6;
  v16 = a7;
  v17 = a10;
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = sub_1B7AE1A14;
  v67 = sub_1B7AE2520;
  v68 = 0;
  if (objc_msgSend_count(v14, v18, v19) && (objc_msgSend_count(v15, v20, v21) || (objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v22, v23), v24 = objc_claimAutoreleasedReturnValue(), isOneChatEnabled = objc_msgSend_isOneChatEnabled(v24, v25, v26), v24, (isOneChatEnabled & 1) != 0)))
  {
    v30 = objc_msgSend_length(v50, v22, v23);
    v47 = v30 != 0;
    if (v16)
    {
      v31 = objc_msgSend_length(v16, v28, v29) != 0;
    }

    else
    {
      v31 = 0;
    }

    v36 = objc_msgSend_count(v14, v28, v29);
    v39 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v37, v38);
    if (objc_msgSend_isOneChatEnabled(v39, v40, v41))
    {
      v44 = 0;
    }

    else
    {
      v44 = objc_msgSend_count(v15, v42, v43);
    }

    v45 = IMDChatRecordCopyChatsWithHandlesOnServicesWithDisplayNameGroupIDStyleQuery(v36, v44, a4, v30 != 0, v31 && !a9, v31 & a9);
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = sub_1B7B7BDDC;
    v51[3] = &unk_1E7CBAD48;
    v52 = v14;
    v53 = v15;
    v59 = v47;
    v54 = v50;
    v60 = v31;
    v61 = a8;
    v62 = a4;
    v57 = &v63;
    v58 = v36;
    v55 = v16;
    v56 = self;
    _IMDPerformLockedStatementBlockWithQuery(v45, v51);
    if (v17)
    {
      v17[2](v17, v64[5]);
    }
  }

  else
  {
    v32 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v35 = objc_msgSend_count(v14, v33, v34);
      *buf = 134218498;
      v70 = v35;
      v71 = 2112;
      v72 = v15;
      v73 = 2080;
      v74 = "[IMDDatabase(LegacyChats) _fetchChatRecordsWithHandles:allowSubsetMatching:serviceNames:displayName:groupID:style:useOriginalGroupID:completionHandler:]";
      _os_log_impl(&dword_1B7AD5000, v32, OS_LOG_TYPE_INFO, "No handles (%llu) or services (%@) provided to %s", buf, 0x20u);
    }

    if (v17)
    {
      v17[2](v17, MEMORY[0x1E695E0F0]);
    }
  }

  _Block_object_dispose(&v63, 8);

  v46 = *MEMORY[0x1E69E9840];
}

- (void)fetchGroupPhotoPathsForChatsWithGroupIDs:(id)a3 completionHandler:(id)a4
{
  v71 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (objc_msgSend_count(v6, v8, v9))
  {
    v53 = v7;
    v10 = objc_alloc(MEMORY[0x1E695DF90]);
    v13 = objc_msgSend_count(v6, v11, v12);
    v55 = objc_msgSend_initWithCapacity_(v10, v14, v13);
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v54 = v6;
    obj = v6;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v60, v70, 16);
    if (v16)
    {
      v17 = v16;
      v18 = *v61;
      v58 = *MEMORY[0x1E69A6B80];
      v56 = *v61;
      do
      {
        v19 = 0;
        v57 = v17;
        do
        {
          if (*v61 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v60 + 1) + 8 * v19);
          v21 = IMDChatRecordCopyChatsWithGroupID(v20);
          v24 = objc_msgSend_lastObject(v21, v22, v23);
          if (objc_msgSend__shouldDisplayGroupNameAndPhotoWithRecord_(self, v25, v24))
          {
            v28 = objc_msgSend_properties(v24, v26, v27);
            v30 = objc_msgSend_objectForKeyedSubscript_(v28, v29, v58);

            v31 = IMDatabaseLogHandle();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v65 = v30;
              v66 = 2112;
              v67 = v20;
              _os_log_impl(&dword_1B7AD5000, v31, OS_LOG_TYPE_DEFAULT, "Found groupPhotoGUID %@ for chat with groupID %@", buf, 0x16u);
            }

            if (objc_msgSend_length(v30, v32, v33))
            {
              v34 = self;
              v35 = IMDAttachmentRecordCopyAttachmentForGUID(v30);
              v38 = objc_msgSend_path(v35, v36, v37);
              v41 = objc_msgSend_transferState(v35, v39, v40);
              if (objc_msgSend_length(v38, v42, v43))
              {
                v45 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v44, v38);
                v46 = objc_alloc(MEMORY[0x1E69A8220]);
                v48 = objc_msgSend_initWithFileURL_(v46, v47, v45);
                objc_msgSend_setObject_forKeyedSubscript_(v55, v49, v48, v20);
              }

              else
              {
                v45 = IMDatabaseLogHandle();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412802;
                  v65 = v30;
                  v66 = 2112;
                  v67 = v38;
                  v68 = 1024;
                  v69 = v41;
                  _os_log_impl(&dword_1B7AD5000, v45, OS_LOG_TYPE_DEFAULT, "Transfer invalid for groupPhotoGUID: %@ filename: %@ state: %d", buf, 0x1Cu);
                }
              }

              self = v34;
              v18 = v56;
              v17 = v57;
            }
          }

          ++v19;
        }

        while (v17 != v19);
        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v50, &v60, v70, 16);
      }

      while (v17);
    }

    v7 = v53;
    if (v53)
    {
      (v53)[2](v53, v55);
    }

    v6 = v54;
  }

  else
  {
    v51 = IMDatabaseMessageEventLogHandle();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v65 = "[IMDDatabase(LegacyChats) fetchGroupPhotoPathsForChatsWithGroupIDs:completionHandler:]";
      _os_log_impl(&dword_1B7AD5000, v51, OS_LOG_TYPE_INFO, "No group IDs provided to %s", buf, 0xCu);
    }

    if (v7)
    {
      v7[2](v7, 0);
    }
  }

  v52 = *MEMORY[0x1E69E9840];
}

- (void)resolveInconsistentGUIDForChatRecordWithGUID:(id)a3 newGUID:(id)a4 completionHandler:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412546;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_DEFAULT, "Updating chat GUID from %@ to %@ to resolve inconsistent properties", &v20, 0x16u);
  }

  if (objc_msgSend_length(v7, v11, v12) && objc_msgSend_length(v8, v13, v14))
  {
    v15 = IMDChatRecordCopyChatForGUID(v7);
    v16 = v15;
    if (v15)
    {
      _IMDChatRecordSetGUID(v15, v8);
    }

    else if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v20 = 138412290;
        v21 = v7;
        _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_INFO, "Failed to find a chat with GUID %@", &v20, 0xCu);
      }
    }

    if (v9)
    {
      v9[2](v9, v16 != 0);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v20 = 138412546;
        v21 = v7;
        v22 = 2112;
        v23 = v8;
        _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "Current GUID %@ or new GUID %@ has zero length", &v20, 0x16u);
      }
    }

    if (v9)
    {
      v9[2](v9, 0);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)moveMessageRecordsToRecoveryForChatRecordsWithGUIDs:(id)a3 deleteDate:(id)a4
{
  v110 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v79 = a4;
  v7 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v6, v5);
  v78 = objc_msgSend_allObjects(v7, v8, v9);

  v10 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v79;
    *&buf[12] = 2048;
    *&buf[14] = objc_msgSend_count(v78, v11, v12);
    _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Will begin moving messages to recoverable message table with deleteDate: %@ for %lu chatGUIDs", buf, 0x16u);
  }

  v76 = objc_msgSend___im_nanosecondTimeInterval(v79, v13, v14);
  v109 = 0u;
  memset(v108, 0, sizeof(v108));
  memset(buf, 0, sizeof(buf));
  IMDSqlOperationInitWithSharedCSDBDatabase(buf);
  IMDSqlOperationBeginTransaction(buf);
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (objc_msgSend_count(v5, v16, v17))
  {
    theString = IMDChatRecordRowIDsWithChatGUIDsQuery(v5, v18);
    v19 = theString;
    if (theString)
    {
      _IMDSqlOperationBeginQuery(buf, theString);
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v20 = v5;
      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v94, v106, 16);
      if (v22)
      {
        v23 = *v95;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v95 != v23)
            {
              objc_enumerationMutation(v20);
            }

            IMDSqlStatementBindTextFromCFString(v108, *(*(&v94 + 1) + 8 * i));
          }

          v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v25, &v94, v106, 16);
        }

        while (v22);
      }

      if (IMDSqlOperationHasRows(buf))
      {
        v26 = MEMORY[0x1E69E9820];
        do
        {
          *&v101 = 0;
          *(&v101 + 1) = &v101;
          v102 = 0x3032000000;
          v103 = sub_1B7AE1A14;
          v104 = sub_1B7AE2520;
          v105 = 0;
          v93[0] = v26;
          v93[1] = 3221225472;
          v93[2] = sub_1B7B7CF44;
          v93[3] = &unk_1E7CB78F8;
          v93[4] = &v101;
          IMDSqlOperationIterateRow(buf, v93);
          v28 = *(*(&v101 + 1) + 40);
          if (v28)
          {
            objc_msgSend_addObject_(v15, v27, v28);
          }

          _Block_object_dispose(&v101, 8);
        }

        while (IMDSqlOperationHasRows(buf));
      }

      if (!IMDSqlOperationFinishQuery(buf))
      {
        v30 = *(&v109 + 1);
        v31 = IMLogHandleForCategory();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF753C(v30, v31, v32);
        }
      }

      v33 = IMDInsertMessagesFromChatsWihGUIDsIntoRecoverableMessageJoinQuery(v15, v29);
      if (v33)
      {
        _IMDSqlOperationBeginQuery(buf, v33);
        IMDSqlStatementBindInt64(v108, v76);
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v34 = v15;
        v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v89, v100, 16);
        if (v38)
        {
          v39 = *v90;
          do
          {
            for (j = 0; j != v38; ++j)
            {
              if (*v90 != v39)
              {
                objc_enumerationMutation(v34);
              }

              v41 = objc_msgSend_longLongValue(*(*(&v89 + 1) + 8 * j), v36, v37);
              IMDSqlStatementBindInt64(v108, v41);
            }

            v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v36, &v89, v100, 16);
          }

          while (v38);
        }

        if (!IMDSqlOperationFinishQuery(buf))
        {
          v43 = *(&v109 + 1);
          v44 = IMLogHandleForCategory();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            sub_1B7CF75CC(v43, v44, v45);
          }
        }

        v46 = IMDDeleteFromChatMessageJoinWhereMessageInRecoveryForChatsWithGUIDsQuery(v34, v42);
        if (v46)
        {
          _IMDSqlOperationBeginQuery(buf, v46);
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v47 = v34;
          v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v85, v99, 16);
          if (v51)
          {
            v52 = *v86;
            do
            {
              for (k = 0; k != v51; ++k)
              {
                if (*v86 != v52)
                {
                  objc_enumerationMutation(v47);
                }

                v54 = objc_msgSend_longLongValue(*(*(&v85 + 1) + 8 * k), v49, v50);
                IMDSqlStatementBindInt64(v108, v54);
              }

              v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v49, &v85, v99, 16);
            }

            while (v51);
          }

          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v55 = v47;
          v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v56, &v81, v98, 16);
          if (v59)
          {
            v60 = *v82;
            do
            {
              for (m = 0; m != v59; ++m)
              {
                if (*v82 != v60)
                {
                  objc_enumerationMutation(v55);
                }

                v62 = objc_msgSend_longLongValue(*(*(&v81 + 1) + 8 * m), v57, v58);
                IMDSqlStatementBindInt64(v108, v62);
              }

              v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v55, v57, &v81, v98, 16);
            }

            while (v59);
          }

          if (!IMDSqlOperationFinishQuery(buf))
          {
            v63 = *(&v109 + 1);
            v64 = IMLogHandleForCategory();
            if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
            {
              sub_1B7CF765C(v63, v64, v65);
            }
          }

          IMDSqlOperationCommitOrRevertTransaction(buf);
          v80 = 0;
          v66 = IMDSqlOperationRelease(buf, &v80);
          v68 = v80;
          if (v66)
          {
            objc_msgSend_enumerateObjectsUsingBlock_(v78, v67, &unk_1F2FA0310);
            IMDCoreSpotlightScheduleUpdateForDeletedMessages(1005);
          }

          else
          {
            v69 = IMLogHandleForCategory();
            if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
            {
              sub_1B7CF76EC(v68, v69, v70);
            }
          }

          v71 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
          {
            v74 = objc_msgSend_count(v78, v72, v73);
            LODWORD(v101) = 134217984;
            *(&v101 + 4) = v74;
            _os_log_impl(&dword_1B7AD5000, v71, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Finished moving messages to recoverable message table for %lu chatGUIDs", &v101, 0xCu);
          }
        }
      }

      v19 = theString;
    }
  }

  v75 = *MEMORY[0x1E69E9840];
}

- (void)recoverMessageRecordsForChatRecordsWithGUIDs:(id)a3
{
  v79 = *MEMORY[0x1E69E9840];
  v43 = a3;
  v4 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v3, v43);
  v7 = objc_msgSend_allObjects(v4, v5, v6);

  v48 = objc_msgSend_date(MEMORY[0x1E695DF00], v8, v9);
  v10 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    *&buf[4] = objc_msgSend_count(v7, v11, v12);
    *&buf[12] = 2112;
    *&buf[14] = v48;
    _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Will begin recovering messages for %lu unique chatGUIDs on date %@", buf, 0x16u);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v70 = 0u;
  memset(buf, 0, sizeof(buf));
  IMDSqlOperationInitWithSharedCSDBDatabase(buf);
  IMDSqlOperationBeginTransaction(buf);
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v7;
  v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v14, &v51, v68, 16);
  if (!v46)
  {
    goto LABEL_30;
  }

  v45 = *v52;
  while (2)
  {
    for (i = 0; i != v46; ++i)
    {
      if (*v52 != v45)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v51 + 1) + 8 * i);
      _IMDSqlOperationBeginQuery(buf, @" SELECT m.guid FROM chat_recoverable_message_join AS crmj JOIN chat AS c  ON crmj.chat_id = c.ROWID AND c.guid = ? JOIN message AS m  ON crmj.message_id = m.ROWID;");
      IMDSqlStatementBindTextFromCFString(&v70, v16);
      if (IMDSqlOperationHasRows(buf))
      {
        v17 = MEMORY[0x1E69E9820];
        do
        {
          *v55 = 0;
          *&v55[8] = v55;
          *&v56 = 0x3032000000;
          *(&v56 + 1) = sub_1B7AE1A14;
          *&v57 = sub_1B7AE2520;
          *(&v57 + 1) = 0;
          v50[0] = v17;
          v50[1] = 3221225472;
          v50[2] = sub_1B7B7D6E4;
          v50[3] = &unk_1E7CBAD90;
          v50[4] = v16;
          v50[5] = v55;
          IMDSqlOperationIterateRow(buf, v50);
          v19 = *(*&v55[8] + 40);
          if (v19)
          {
            objc_msgSend_addObject_(v13, v18, v19);
          }

          _Block_object_dispose(v55, 8);
        }

        while (IMDSqlOperationHasRows(buf));
      }

      if (!IMDSqlOperationFinishQuery(buf))
      {
        v26 = *(&v78 + 1);
        v27 = IMLogHandleForCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF777C(v16, v26, v27);
        }

        goto LABEL_29;
      }

      _IMDSqlOperationBeginQuery(buf, @"UPDATE message set date_recovered = ?, ck_sync_state = 0 WHERE ROWID in (SELECT crmj.message_id FROM chat_recoverable_message_join AS crmj JOIN chat AS c  ON crmj.chat_id = c.ROWID AND c.guid = ?);");
      v22 = objc_msgSend___im_nanosecondTimeInterval(v48, v20, v21);
      IMDSqlStatementBindInt64(&v70, v22);
      IMDSqlStatementBindTextFromCFString(&v70, v16);
      if (!IMDSqlOperationFinishQuery(buf))
      {
        v26 = *(&v78 + 1);
        v27 = IMLogHandleForCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF781C(v16, v26, v27);
        }

        goto LABEL_29;
      }

      _IMDSqlOperationBeginQuery(buf, @"INSERT INTO chat_message_join (chat_id, message_id, message_date) SELECT crmj.chat_id, crmj.message_id, m.date FROM chat_recoverable_message_join AS crmj JOIN chat AS c  ON crmj.chat_id = c.ROWID AND c.guid = ? JOIN message AS m  ON crmj.message_id = m.ROWID;");
      IMDSqlStatementBindTextFromCFString(&v70, v16);
      if (!IMDSqlOperationFinishQuery(buf))
      {
        v26 = *(&v78 + 1);
        v27 = IMLogHandleForCategory();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF78BC(v16, v26, v27);
        }

LABEL_29:

        goto LABEL_30;
      }

      _IMDSqlOperationBeginQuery(buf, @"INSERT INTO unsynced_removed_recoverable_messages (chat_guid, message_guid, part_index) SELECT c.guid, m.guid, -1 FROM chat_recoverable_message_join AS crmj JOIN chat AS c  ON c.ROWID=crmj.chat_id AND c.guid=? JOIN message AS m  ON m.ROWID=crmj.message_id AND crmj.ck_sync_state=1;");
      IMDSqlStatementBindTextFromCFString(&v70, v16);
      if (!IMDSqlOperationFinishQuery(buf))
      {
        v24 = *(&v78 + 1);
        v25 = IMLogHandleForCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF795C(v66, v24, &v67, v25);
        }
      }
    }

    v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v23, &v51, v68, 16);
    if (v46)
    {
      continue;
    }

    break;
  }

LABEL_30:

  _IMDSqlOperationBeginQuery(buf, @"DELETE FROM chat_recoverable_message_join WHERE message_id IN(SELECT message_id FROM chat_message_join);");
  if (!IMDSqlOperationFinishQuery(buf))
  {
    v29 = *(&v78 + 1);
    v30 = IMLogHandleForCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF79D4(v29, v30, v31);
    }
  }

  v62 = v75;
  v63 = v76;
  v64 = v77;
  v65 = v78;
  v58 = v71;
  v59 = v72;
  v60 = v73;
  v61 = v74;
  *v55 = *buf;
  v56 = *&buf[16];
  v57 = v70;
  objc_msgSend__recoverMessagePartsForChatRecordsWithGUIDs_dateRecovered_operation_(self, v28, obj, v48, v55);
  IMDSqlOperationCommitOrRevertTransaction(buf);
  v49 = 0;
  v32 = IMDSqlOperationRelease(buf, &v49);
  v33 = v49;
  if (v32)
  {
    IMDCoreSpotlightAddChatGUIDs(obj, 1005);
    if (objc_msgSend_count(v13, v34, v35))
    {
      IMDCoreSpotlightAddMessageGUIDs(v13, 1005);
    }
  }

  else
  {
    v36 = IMLogHandleForCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF7A64(v33, v36, v37);
    }
  }

  v38 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v41 = objc_msgSend_count(obj, v39, v40);
    *v55 = 134217984;
    *&v55[4] = v41;
    _os_log_impl(&dword_1B7AD5000, v38, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Finished recovering messages for %lu unique chatGUIDs", v55, 0xCu);
  }

  v42 = *MEMORY[0x1E69E9840];
}

- (void)_recoverMessagePartsForChatRecordsWithGUIDs:(id)a3 dateRecovered:(id)a4 operation:(IMDSqlOperation *)a5
{
  v64 = *MEMORY[0x1E69E9840];
  v42 = a4;
  v9 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v8, a3);
  v12 = objc_msgSend_allObjects(v9, v10, v11);

  v13 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v63 = objc_msgSend_count(v12, v14, v15);
    _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "Recently Deleted | Parts: Will begin recovering message parts for %lu unique chatGUIDs", buf, 0xCu);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v16 = v12;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v57, v61, 16);
  if (v18)
  {
    v21 = v18;
    v22 = *v58;
    v41 = v44;
    *&v20 = 138412290;
    v40 = v20;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v58 != v22)
        {
          objc_enumerationMutation(v16);
        }

        v24 = *(*(&v57 + 1) + 8 * i);
        v25 = objc_msgSend__loadRecoverableMessagePartsMetadataForChatGUID_(self, v19, v24, v40, v41);
        if (objc_msgSend_count(v25, v26, v27))
        {
          v43[0] = MEMORY[0x1E69E9820];
          v43[1] = 3221225472;
          v44[0] = sub_1B7B7DB78;
          v44[1] = &unk_1E7CBADB8;
          v44[2] = self;
          v45 = v42;
          v28 = *&a5->var4.var7.var4;
          v54 = *&a5->var4.var7.var2;
          v55 = v28;
          v56 = *&a5->var4.var7.var6;
          v29 = *&a5->var4.var7.var0.var0;
          v50 = *&a5->var4.var4;
          v51 = v29;
          v30 = *&a5->var4.var7.var0.var4;
          v52 = *&a5->var4.var7.var0.var2;
          v53 = v30;
          v31 = *&a5->var2;
          v46 = *&a5->var0;
          v47 = v31;
          v32 = *&a5->var4.var2;
          v48 = *&a5->var4.var0;
          v49 = v32;
          objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v25, v33, v43);
        }

        else
        {
          v34 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            *buf = v40;
            v63 = v24;
            _os_log_impl(&dword_1B7AD5000, v34, OS_LOG_TYPE_INFO, "Recently Deleted | Parts: No parts metadata found for chatGUID: %@. This state is valid if there are no message part deletions.", buf, 0xCu);
          }
        }
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v57, v61, 16);
    }

    while (v21);
  }

  v35 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v38 = objc_msgSend_count(v16, v36, v37);
    *buf = 134217984;
    v63 = v38;
    _os_log_impl(&dword_1B7AD5000, v35, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Finished recovering message parts for %lu unique chatGUIDs", buf, 0xCu);
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (id)_restoredAttributedBodyForMessageGUID:(id)a3 withRecoveredAttributedParts:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v9 = objc_msgSend__loadAttributedBodyTextForMessageWithGUID_(self, v8, v6);
  if (!v9)
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF7AF4();
    }

    v9 = objc_alloc_init(MEMORY[0x1E696AAB0]);
  }

  v27 = v9;
  v13 = objc_msgSend_mutableCopy(v9, v10, v11);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v14 = v7;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v28, v34, 16);
  if (v16)
  {
    v18 = v16;
    v19 = *v29;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v21 = *(*(&v28 + 1) + 8 * i);
        v22 = objc_msgSend___im_insertionIndexForMessagePartBody_(v13, v17, v21);
        if (v22 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v24 = IMLogHandleForCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v33 = v6;
            _os_log_error_impl(&dword_1B7AD5000, v24, OS_LOG_TYPE_ERROR, "Recently Deleted | Cannot recover: message part number already exists. Not inserting into main message body for messageGUID: %@", buf, 0xCu);
          }
        }

        else
        {
          objc_msgSend_insertAttributedString_atIndex_(v13, v23, v21, v22);
        }
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v28, v34, 16);
    }

    while (v18);
  }

  v25 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)_updateMessageRecordForGUID:(id)a3 withAttributedBody:(id)a4 dateRecovered:(id)a5 operation:(IMDSqlOperation *)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a4;
  v13 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    LODWORD(v32[0]) = 138412290;
    *(v32 + 4) = v10;
    _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "Recently Deleted | Parts: Writing restored part to message GUID: %@", v32, 0xCu);
  }

  v14 = JWEncodeCodableObject();
  _IMDSqlOperationBeginQuery(a6, @"UPDATE message SET attributedBody = ?, text = ?, date_recovered = ?, ck_sync_state = 0   WHERE message.guid = ?;");
  IMDSqlStatementBindBlob(&a6->var4, v14);
  v17 = objc_msgSend_string(v12, v15, v16);

  IMDSqlStatementBindTextFromCFString(&a6->var4, v17);
  if (v11)
  {
    v20 = objc_msgSend___im_nanosecondTimeInterval(v11, v18, v19);
  }

  else
  {
    v20 = 0;
  }

  IMDSqlStatementBindInt64(&a6->var4, v20);
  IMDSqlStatementBindTextFromCFString(&a6->var4, v10);
  if (IMDSqlOperationFinishQuery(a6))
  {
    v21 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      LODWORD(v32[0]) = 138412290;
      *(v32 + 4) = v10;
      _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "Recently Deleted | updated attributedbody for messageGUID: %@", v32, 0xCu);
    }

    v22 = *&a6->var4.var7.var4;
    v32[8] = *&a6->var4.var7.var2;
    v32[9] = v22;
    v32[10] = *&a6->var4.var7.var6;
    v23 = *&a6->var4.var7.var0.var0;
    v32[4] = *&a6->var4.var4;
    v32[5] = v23;
    v24 = *&a6->var4.var7.var0.var4;
    v32[6] = *&a6->var4.var7.var0.var2;
    v32[7] = v24;
    v25 = *&a6->var2;
    v32[0] = *&a6->var0;
    v32[1] = v25;
    v26 = *&a6->var4.var2;
    v32[2] = *&a6->var4.var0;
    v32[3] = v26;
    objc_msgSend__removeFromRecoverableMessagePartForMessageGUID_operation_(self, v27, v10, v32);
    IMDCoreSpotlightAddMessageGUID(v10, 1005);
  }

  else
  {
    v28 = a6->var5;
    v29 = IMLogHandleForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF7B68(v10, v28, v29);
    }
  }

  v30 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    LODWORD(v32[0]) = 138412290;
    *(v32 + 4) = v10;
    _os_log_impl(&dword_1B7AD5000, v30, OS_LOG_TYPE_INFO, "Recently Deleted | Parts: Finished writing restored part to message GUID: %@", v32, 0xCu);
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)_removeFromRecoverableMessagePartForMessageGUID:(id)a3 operation:(IMDSqlOperation *)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v15 = 138412290;
    v16 = v5;
    _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Recently Deleted | Parts: Removing recoverable message parts for message GUID: %@", &v15, 0xCu);
  }

  _IMDSqlOperationBeginQuery(a4, @"INSERT INTO unsynced_removed_recoverable_messages (chat_guid, message_guid, part_index) SELECT c.guid, m.guid, rmp.part_index  FROM recoverable_message_part AS rmp  JOIN chat AS c   ON c.ROWID=rmp.chat_id  JOIN message AS m   ON m.ROWID=rmp.message_id AND m.guid=? AND rmp.ck_sync_state=1;");
  IMDSqlStatementBindTextFromCFString(&a4->var4, v5);
  if (!IMDSqlOperationFinishQuery(a4))
  {
    v7 = a4->var5;
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF7C04(v7, v8, v9);
    }
  }

  _IMDSqlOperationBeginQuery(a4, @"DELETE FROM recoverable_message_part WHERE message_id IN( SELECT ROWID  FROM message AS m  WHERE m.guid = ?);");
  IMDSqlStatementBindTextFromCFString(&a4->var4, v5);
  if (!IMDSqlOperationFinishQuery(a4))
  {
    v10 = a4->var5;
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF7C90(v10, v11, v12);
    }
  }

  v13 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v15 = 138412290;
    v16 = v5;
    _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "Recently Deleted | Parts: Finished removing recoverable message parts for message GUID: %@", &v15, 0xCu);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (id)_loadAttributedBodyTextForMessageWithGUID:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Recently Deleted | Parts: Loading attributed message body for message GUID: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v16 = 0x3032000000;
  v17 = sub_1B7AE1A14;
  v18 = sub_1B7AE2520;
  v19 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7B7E4D8;
  v10[3] = &unk_1E7CBADE0;
  v5 = v3;
  v11 = v5;
  p_buf = &buf;
  IMDRunSqlOperation(v10);
  v6 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v13 = 138412290;
    v14 = v5;
    _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Recently Deleted | Parts: Finished loading attributed message body for message GUID: %@", v13, 0xCu);
  }

  v7 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_loadRecoverableMessagePartsMetadataForChatGUID:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Recently Deleted | Parts: Loading message parts metadata for chat GUID: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v16 = 0x3032000000;
  v17 = sub_1B7AE1A14;
  v18 = sub_1B7AE2520;
  v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7B7EBC8;
  v10[3] = &unk_1E7CBADE0;
  v5 = v3;
  v11 = v5;
  p_buf = &buf;
  IMDRunSqlOperation(v10);
  v6 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *v13 = 138412290;
    v14 = v5;
    _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Recently Deleted | Parts: Finished loading message parts metadata for chat GUID: %@", v13, 0xCu);
  }

  v7 = *(*(&buf + 1) + 40);
  _Block_object_dispose(&buf, 8);

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_chatGUIDsForChatsWithRecoverableMessagesOlderThanDate:(id)a3 operation:(IMDSqlOperation *)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = a4;
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = sub_1B7B7F518;
  v27 = &unk_1E7CB8680;
  v28 = v5;
  v29 = a4;
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = sub_1B7B7F554;
  v21 = &unk_1E7CB8680;
  v7 = v6;
  v22 = v7;
  v8 = v5;
  _IMDSqlOperationRunQuery(a4, @"SELECT c.guid FROM chat_recoverable_message_join AS crmj JOIN message AS m ON m.ROWID = crmj.message_id  JOIN chat AS c ON c.ROWID = crmj.chat_id WHERE(  crmj.delete_date < ?  AND   NOT (m.group_action_type IN (1,3) AND (m.ROWID IN (SELECT message_id FROM message_attachment_join))) ) GROUP BY    c.guid  ", &v24, &v18);
  v9 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_msgSend_count(v7, v10, v11, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
    *buf = 134217984;
    v31 = v12;
    _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_DEFAULT, "Found %llu chats affected by message deletion", buf, 0xCu);
  }

  v15 = objc_msgSend_copy(v7, v13, v14);
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)_chatGUIDsForChatsWithJunkMessagesOlderThanDate:(id)a3 operation:(IMDSqlOperation *)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = a4;
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = sub_1B7B7F900;
  v27 = &unk_1E7CB8680;
  v28 = v5;
  v29 = a4;
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = sub_1B7B7F93C;
  v21 = &unk_1E7CB8680;
  v7 = v6;
  v22 = v7;
  v8 = v5;
  _IMDSqlOperationRunQuery(a4, @"SELECT c.guid FROM chat_message_join AS cmj JOIN message AS m ON m.ROWID = cmj.message_id  JOIN chat AS c ON c.ROWID = cmj.chat_id WHERE(  m.date < ?  AND   c.is_filtered = 2) GROUP BY    c.guid  ", &v24, &v18);
  v9 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_msgSend_count(v7, v10, v11, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
    *buf = 134217984;
    v31 = v12;
    _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_DEFAULT, "Found %llu chats affected by message deletion", buf, 0xCu);
  }

  v15 = objc_msgSend_copy(v7, v13, v14);
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)_deleteChatIfEmptyWithGUID:(id)a3 lastMessageDate:(id)a4 operation:(IMDSqlOperation *)a5
{
  v96 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  isRecoverable_operation = objc_msgSend__countMessagesExcludingGroupPhotosInChatWithGUID_isRecoverable_operation_(self, v10, v8, 0, a5);
  v13 = objc_msgSend__countMessagesExcludingGroupPhotosInChatWithGUID_isRecoverable_operation_(self, v12, v8, 1, a5);
  v14 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v90 = 138412802;
    v91 = v8;
    v92 = 2048;
    v93 = isRecoverable_operation;
    v94 = 2048;
    v95 = v13;
    _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_DEFAULT, "Chat with guid %@ has %lld messages and %lld recoverable messages", &v90, 0x20u);
  }

  v15 = 0;
  if (isRecoverable_operation <= 0 && v13 <= 0)
  {
    v16 = IMDChatRecordCopyChatForGUID(v8);
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v20 = objc_msgSend_guid(v16, v18, v19);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v21, v20, *MEMORY[0x1E69A6B70]);

    v24 = objc_msgSend_chatIdentifier(v16, v22, v23);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v25, v24, *MEMORY[0x1E69A6B18]);

    v28 = objc_msgSend_serviceName(v16, v26, v27);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v29, v28, *MEMORY[0x1E69A6C98]);

    v30 = MEMORY[0x1E696AD98];
    v33 = objc_msgSend_style(v16, v31, v32);
    v35 = objc_msgSend_numberWithUnsignedChar_(v30, v34, v33);
    objc_msgSend_setObject_forKeyedSubscript_(v17, v36, v35, *MEMORY[0x1E69A6CA8]);

    v39 = objc_msgSend_groupID(v16, v37, v38);

    if (v39)
    {
      v42 = objc_msgSend_groupID(v16, v40, v41);
      objc_msgSend_setObject_forKeyedSubscript_(v17, v43, v42, *MEMORY[0x1E69A6B78]);
    }

    v44 = objc_msgSend_originalGroupID(v16, v40, v41);

    if (v44)
    {
      v47 = objc_msgSend_originalGroupID(v16, v45, v46);
      objc_msgSend_setObject_forKeyedSubscript_(v17, v48, v47, *MEMORY[0x1E69A6C50]);
    }

    v49 = objc_msgSend_accountID(v16, v45, v46);

    if (v49)
    {
      v52 = objc_msgSend_accountID(v16, v50, v51);
      objc_msgSend_setObject_forKeyedSubscript_(v17, v53, v52, *MEMORY[0x1E69A6AF0]);
    }

    v54 = objc_msgSend_properties(v16, v50, v51);

    if (v54)
    {
      v57 = objc_msgSend_properties(v16, v55, v56);
      objc_msgSend_setObject_forKeyedSubscript_(v17, v58, v57, *MEMORY[0x1E69A6C70]);
    }

    v59 = objc_msgSend_lastAddressedHandle(v16, v55, v56);

    if (v59)
    {
      v62 = objc_msgSend_lastAddressedHandle(v16, v60, v61);
      objc_msgSend_setObject_forKeyedSubscript_(v17, v63, v62, *MEMORY[0x1E69A6BF0]);
    }

    v64 = objc_msgSend_lastAddressedSIMID(v16, v60, v61);

    if (v64)
    {
      v67 = objc_msgSend_lastAddressedSIMID(v16, v65, v66);
      objc_msgSend_setObject_forKeyedSubscript_(v17, v68, v67, *MEMORY[0x1E69A6BF8]);
    }

    v69 = *MEMORY[0x1E69A6D10];
    v70 = *MEMORY[0x1E69A6D20];
    v71 = IMGetCachedDomainBoolForKey();
    v72 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      v73 = @"NO";
      if (v71)
      {
        v73 = @"YES";
      }

      v90 = 138412546;
      v91 = v8;
      v92 = 2112;
      v93 = v73;
      _os_log_impl(&dword_1B7AD5000, v72, OS_LOG_TYPE_DEFAULT, "Deleting empty chat %@, cloud sync enabled is %@", &v90, 0x16u);
    }

    if (v71)
    {
      v76 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v74, v75);
      isOneChatEnabled = objc_msgSend_isOneChatEnabled(v76, v77, v78);

      if (isOneChatEnabled)
      {
        objc_msgSend__insertServiceBasedSyncDeletedChatRecordsForChatWithGUID_lastMessageDate_(self, v80, v8, v9);
      }

      else
      {
        v82 = objc_msgSend_cloudRecordID(v16, v80, v81);
        v85 = objc_msgSend___im_nanosecondTimeInterval(v9, v83, v84);
        IMDChatInsertIntoDeletedChatsTable(v8, v82, v85);
      }
    }

    IMDChatRecordDeleteChatForGUID(v8);
    v15 = objc_msgSend_copy(v17, v86, v87);
  }

  v88 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)_insertServiceBasedSyncDeletedChatRecordsForChatWithGUID:(id)a3 lastMessageDate:(id)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v35 = a4;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_1B7AE1A14;
  v50 = sub_1B7AE2520;
  v51 = 0;
  v8 = objc_msgSend_synchronousDatabase(IMDDatabase, v6, v7);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = sub_1B7B80368;
  v45[3] = &unk_1E7CBAE30;
  v45[4] = &v46;
  objc_msgSend_fetchSyncChatSlicesForChatWithGUID_completionHandler_(v8, v9, v5, v45);

  v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v10 = v47[5];
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v41, v52, 16);
  if (v12)
  {
    v13 = *v42;
    do
    {
      v14 = 0;
      do
      {
        if (*v42 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v41 + 1) + 8 * v14);
        v40 = 0;
        v39 = 0;
        IMComponentsFromChatGUID();
        v16 = 0;
        v19 = objc_msgSend_serviceName(v15, v17, v18);
        v20 = IMCopyGUIDForChat();

        if (v20)
        {
          v21 = [IMDSyncDeletedChatRecord alloc];
          v24 = objc_msgSend_ckRecordID(v15, v22, v23);
          v26 = objc_msgSend_initWithGUID_ckRecordID_date_(v21, v25, v20, v24, v35);

          objc_msgSend_addObject_(v36, v27, v26);
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v28, &v41, v52, 16);
    }

    while (v12);
  }

  v31 = objc_msgSend_synchronousDatabase(IMDDatabase, v29, v30);
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = sub_1B7B803B0;
  v37[3] = &unk_1E7CB6C58;
  v32 = v5;
  v38 = v32;
  objc_msgSend_addSyncDeletedChatRecords_completionHandler_(v31, v33, v36, v37);

  _Block_object_dispose(&v46, 8);
  v34 = *MEMORY[0x1E69E9840];
}

- (void)_deleteTransfersInMessagePartsForChatGUID:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v6 = objc_msgSend__loadRecoverableMessagePartsMetadataForChatGUID_(self, v5, v4);
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v6, v7, &unk_1F2FA0C90);
  v8 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Parts: Finished deleting recoverable message parts transfers for chatGUID: %@", &v10, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)_updateChatsSyncStateQueryFor:(int64_t)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_msgSend_substitutionStringForCount_(MEMORY[0x1E696AEC0], a2, a3);
  v6 = objc_msgSend_stringWithFormat_(v3, v5, @"%@ (%@)", @"UPDATE chat SET ck_sync_state = ? where guid in ", v4);

  return v6;
}

- (void)updateChatsSyncStatusTo:(int64_t)a3 forGUIDs:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v24 = 0u;
  memset(v23, 0, sizeof(v23));
  memset(v22, 0, sizeof(v22));
  IMDSqlOperationInitWithSharedCSDBDatabase(v22);
  IMDSqlOperationBeginTransaction(v22);
  v9 = objc_msgSend_count(v6, v7, v8);
  updated = objc_msgSend__updateChatsSyncStateQueryFor_(self, v10, v9);
  _IMDSqlOperationBeginQuery(v22, updated);
  IMDSqlStatementBindInt64(v23, a3);
  v12 = v6;
  IMDSqlStatementBindTextFromArrayOfCFStrings(v23, v12);
  if (IMDSqlOperationFinishQuery(v22))
  {
    v13 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = v12;
      _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "CloudSync | updated ck_sync_state for recordIDs: %@", buf, 0xCu);
    }
  }

  else
  {
    v13 = *(&v24 + 1);
    v14 = IMLogHandleForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF7D70(v12, v13, v14);
    }
  }

  IMDSqlOperationCommitOrRevertTransaction(v22);
  v21 = 0;
  v15 = IMDSqlOperationRelease(v22, &v21);
  v16 = v21;
  if (v15)
  {
    v17 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v26 = v12;
      _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "CloudSync.chat | Update status Query success for: %@", buf, 0xCu);
    }
  }

  else
  {
    v17 = IMLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF7E0C(v16, v17, v18);
    }
  }

  v19 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v26 = v12;
    _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, "CloudSync.chat | Finished updating ck_sync_state for recordIDs %@", buf, 0xCu);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (id)copyDuplicateGroupChatRecordsWithLimit:(int64_t)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1B7AE1A14;
  v10 = sub_1B7AE2520;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1B7B80BE4;
  v5[3] = &unk_1E7CBAEA0;
  v5[5] = &v6;
  v5[6] = a3;
  v5[4] = self;
  _IMDPerformLockedStatementBlockWithQuery(@"SELECT ROWID, guid, style, state, account_id, properties, chat_identifier, service_name, room_name, account_login, is_archived, last_addressed_handle, display_name, group_id, is_filtered, successful_query, engram_id, server_change_token, ck_sync_state, original_group_id, last_read_message_timestamp, cloudkit_record_id, last_addressed_sim_id, is_blackholed, syndication_date, syndication_type, is_recovered, is_deleting_incoming_messages    FROM chat c   WHERE style = 43   AND (SELECT count(*) FROM chat cdupe WHERE cdupe.group_id = c.group_id AND cdupe.service_name = c.service_name) > 1   LIMIT ?", v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)fetchMessageRowIDsForGUIDs:(id)a3 completionHandler:(id)a4
{
  v4 = _Block_copy(a4);
  v5 = sub_1B7CFECE0();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = sub_1B7C14D64;
  v7[4] = v6;
  v10[4] = sub_1B7C14DAC;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1B7AE14D0;
  v10[3] = &unk_1F2FA3138;
  v8 = _Block_copy(v10);

  IMDPersistencePerformBlock(v8, 1, v9);

  _Block_release(v8);
}

- (void)clearExpiredTimeSensitiveMessagesWithCompletionHandler:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1B7C14DEC;
  *(v5 + 24) = v4;
  v8[4] = sub_1B7C14D5C;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1B7AE14D0;
  v8[3] = &unk_1F2FA30C0;
  v6 = _Block_copy(v8);

  IMDPersistencePerformBlock(v6, 1, v7);

  _Block_release(v6);
}

- (void)reparentableMessagesStartingAtRowID:(int64_t)a3 limit:(int64_t)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  if (a3 < 0)
  {
    v14 = self;
    _Block_copy(v8);
    v15 = sub_1B7CFECC0();
    (*(v8 + 2))(v8, v15, -1, 0);
  }

  else
  {
    v10 = swift_allocObject();
    v10[2] = a3;
    v10[3] = a4;
    v10[4] = sub_1B7C14D20;
    v10[5] = v9;
    v16[4] = sub_1B7C14D28;
    v16[5] = v10;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_1B7AE14D0;
    v16[3] = &unk_1F2F9F6E0;
    v11 = _Block_copy(v16);
    v12 = self;
    _Block_copy(v8);

    IMDPersistencePerformBlock(v11, 1, v13);
    _Block_release(v11);
  }

  _Block_release(v8);
}

- (void)reparentMessagesUsingChatIDWithGUIDs:(id)a3 completionHandler:(id)a4
{
  v4 = _Block_copy(a4);
  v5 = sub_1B7CFECE0();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = sub_1B7C14CB4;
  v7[4] = v6;
  v10[4] = sub_1B7C14D14;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1B7AE14D0;
  v10[3] = &unk_1F2FA2F30;
  v8 = _Block_copy(v10);

  IMDPersistencePerformBlock(v8, 1, v9);

  _Block_release(v8);
}

- (void)reassignIdentifierForMessageWithGUID:(id)a3 newGUID:(id)a4 completionHandler:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_1B7CFEA60();
  v9 = v8;
  v10 = sub_1B7CFEA60();
  v12 = v11;
  _Block_copy(v6);
  v13 = self;
  sub_1B7C14A9C(v7, v9, v10, v12, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)isRecoverablyDeletedMessageGUID:(id)a3 completionHandler:(id)a4
{
  v4 = _Block_copy(a4);
  v5 = sub_1B7CFEA60();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v7;
  v9[4] = sub_1B7C21F8C;
  v9[5] = v8;
  v12[4] = sub_1B7C21F94;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1B7AE14D0;
  v12[3] = &unk_1F2F9F7F8;
  v10 = _Block_copy(v12);

  IMDPersistencePerformBlock(v10, 1, v11);

  _Block_release(v10);
}

- (void)fetchMetadataForSyndicationIdentifiers:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_1B7CFECE0();
  _Block_copy(v5);
  v7 = self;
  sub_1B7C8C278(v6, v7, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)copyAllChatsWithUnreadMessagesWithLimit:(int64_t)a3 beforeDate:(id)a4 predicate:(id)a5 completionHandler:(id)a6
{
  v10 = sub_1B7C107FC(&unk_1EBA51980, &unk_1B7D0A1B0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = aBlock - v15;
  v17 = _Block_copy(a6);
  if (a4)
  {
    sub_1B7CFE0F0();
    v18 = sub_1B7CFE120();
    (*(*(v18 - 8) + 56))(v16, 0, 1, v18);
  }

  else
  {
    v19 = sub_1B7CFE120();
    (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  }

  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  sub_1B7C108AC(v16, v13);
  v21 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v22 = swift_allocObject();
  v22[2] = sub_1B7CBCC3C;
  v22[3] = v20;
  v22[4] = a3;
  sub_1B7CBCC44(v13, v22 + v21);
  *(v22 + ((v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;
  aBlock[4] = sub_1B7CBCCB4;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B7AE14D0;
  aBlock[3] = &unk_1F2FA7CA0;
  v23 = _Block_copy(aBlock);
  v24 = a5;

  IMDPersistencePerformBlockWithHandoffIfNeeded(v23, 0, v25);
  _Block_release(v23);

  sub_1B7C10844(v16);
}

- (void)assignDomainIdentifiers:(id)a3 toChatRecordWithGUID:(id)a4 completionHandler:(id)a5
{
  v6 = _Block_copy(a5);
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  v7 = sub_1B7CFE990();
  v8 = sub_1B7CFEA60();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  v12 = swift_allocObject();
  v12[2] = v7;
  v12[3] = self;
  v12[4] = v8;
  v12[5] = v10;
  v12[6] = sub_1B7CBCBB4;
  v12[7] = v11;
  v16[4] = sub_1B7CBCC0C;
  v16[5] = v12;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1B7AE14D0;
  v16[3] = &unk_1F2FA7C28;
  v13 = _Block_copy(v16);
  v14 = self;

  IMDPersistencePerformBlock(v13, 1, v15);

  _Block_release(v13);
}

- (void)assignIdentifier:(id)a3 toChatRecordWithGUID:(id)a4 forDomain:(id)a5 priority:(int64_t)a6 completionHandler:(id)a7
{
  v9 = _Block_copy(a7);
  v10 = sub_1B7CFEA60();
  v12 = v11;
  v13 = sub_1B7CFEA60();
  v15 = v14;
  v16 = sub_1B7CFEA60();
  v18 = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = v9;
  v20 = swift_allocObject();
  v20[2] = self;
  v20[3] = v10;
  v20[4] = v12;
  v20[5] = v13;
  v20[6] = v15;
  v20[7] = v16;
  v20[8] = v18;
  v20[9] = a6;
  v20[10] = sub_1B7C14DEC;
  v20[11] = v19;
  v24[4] = sub_1B7CBCB7C;
  v24[5] = v20;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 1107296256;
  v24[2] = sub_1B7AE14D0;
  v24[3] = &unk_1F2FA7BB0;
  v21 = _Block_copy(v24);
  v22 = self;

  IMDPersistencePerformBlock(v21, 1, v23);

  _Block_release(v21);
}

- (void)unassignIdentifier:(id)a3 fromChatRecordWithGUID:(id)a4 forDomain:(id)a5 completionHandler:(id)a6
{
  v6 = _Block_copy(a6);
  v7 = sub_1B7CFEA60();
  v9 = v8;
  v10 = sub_1B7CFEA60();
  v12 = v11;
  v13 = sub_1B7CFEA60();
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = v6;
  v17 = swift_allocObject();
  v17[2] = v7;
  v17[3] = v9;
  v17[4] = v13;
  v17[5] = v15;
  v17[6] = v10;
  v17[7] = v12;
  v17[8] = sub_1B7C14DEC;
  v17[9] = v16;
  v20[4] = sub_1B7CBCB68;
  v20[5] = v17;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 1107296256;
  v20[2] = sub_1B7AE14D0;
  v20[3] = &unk_1F2FA7B38;
  v18 = _Block_copy(v20);

  IMDPersistencePerformBlock(v18, 1, v19);

  _Block_release(v18);
}

- (void)fetchIdentifiersForChatRecordWithGUID:(id)a3 domain:(id)a4 completionHandler:(id)a5
{
  v5 = _Block_copy(a5);
  v6 = sub_1B7CFEA60();
  v8 = v7;
  v9 = sub_1B7CFEA60();
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  v13 = swift_allocObject();
  v13[2] = v6;
  v13[3] = v8;
  v13[4] = v9;
  v13[5] = v11;
  v13[6] = sub_1B7CBCD90;
  v13[7] = v12;
  v16[4] = sub_1B7CBCB10;
  v16[5] = v13;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1B7AE14D0;
  v16[3] = &unk_1F2FA7A48;
  v14 = _Block_copy(v16);

  IMDPersistencePerformBlock(v14, 1, v15);

  _Block_release(v14);
}

- (void)fetchSyncChatSliceForChatWithGUID:(id)a3 serviceName:(id)a4 completionHandler:(id)a5
{
  v5 = _Block_copy(a5);
  v6 = sub_1B7CFEA60();
  v8 = v7;
  v9 = sub_1B7CFEA60();
  v11 = v10;
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  v13 = swift_allocObject();
  v13[2] = v6;
  v13[3] = v8;
  v13[4] = v9;
  v13[5] = v11;
  v13[6] = sub_1B7C542DC;
  v13[7] = v12;
  v16[4] = sub_1B7CBCAB0;
  v16[5] = v13;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1B7AE14D0;
  v16[3] = &unk_1F2FA79D0;
  v14 = _Block_copy(v16);

  IMDPersistencePerformBlock(v14, 1, v15);

  _Block_release(v14);
}

- (void)fetchSyncChatSlicesForChatWithGUID:(id)a3 completionHandler:(id)a4
{
  v4 = _Block_copy(a4);
  v5 = sub_1B7CFEA60();
  v7 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = v7;
  v9[4] = sub_1B7CBCA9C;
  v9[5] = v8;
  v12[4] = sub_1B7CBCAA4;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1B7AE14D0;
  v12[3] = &unk_1F2FA7958;
  v10 = _Block_copy(v12);

  IMDPersistencePerformBlock(v10, 1, v11);

  _Block_release(v10);
}

- (void)addSyncChatSlices:(id)a3 forChatWithGUID:(id)a4 completionHandler:(id)a5
{
  v5 = _Block_copy(a5);
  type metadata accessor for IMDSyncChatSliceRecord(0);
  v6 = sub_1B7CFECE0();
  v7 = sub_1B7CFEA60();
  v9 = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  v11 = swift_allocObject();
  v11[2] = v6;
  v11[3] = v7;
  v11[4] = v9;
  v11[5] = sub_1B7C14DEC;
  v11[6] = v10;
  v14[4] = sub_1B7CBCA8C;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1B7AE14D0;
  v14[3] = &unk_1F2FA78E0;
  v12 = _Block_copy(v14);

  IMDPersistencePerformBlock(v12, 1, v13);

  _Block_release(v12);
}

- (void)updateServicesForChatWithGUID:(id)a3 services:(id)a4 completionHandler:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_1B7CFEA60();
  v9 = v8;
  v10 = sub_1B7CFECE0();
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = self;
  v12[4] = v7;
  v12[5] = v9;
  v12[6] = sub_1B7C14DEC;
  v12[7] = v11;
  v16[4] = sub_1B7CBCA74;
  v16[5] = v12;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 1107296256;
  v16[2] = sub_1B7AE14D0;
  v16[3] = &unk_1F2FA7868;
  v13 = _Block_copy(v16);
  v14 = self;

  IMDPersistencePerformBlock(v13, 1, v15);

  _Block_release(v13);
}

- (void)addSyncDeletedChatRecords:(id)a3 completionHandler:(id)a4
{
  v4 = _Block_copy(a4);
  type metadata accessor for IMDSyncDeletedChatRecord(0);
  v5 = sub_1B7CFECE0();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = sub_1B7C14DEC;
  v7[4] = v6;
  v10[4] = sub_1B7CBCA68;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1B7AE14D0;
  v10[3] = &unk_1F2FA7778;
  v8 = _Block_copy(v10);

  IMDPersistencePerformBlock(v8, 1, v9);

  _Block_release(v8);
}

- (void)resolveSpotlightItemIdentifiers:(id)a3 completionHandler:(id)a4
{
  v4 = _Block_copy(a4);
  v5 = sub_1B7CFECE0();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = sub_1B7CBCA54;
  v7[4] = v6;
  v10[4] = sub_1B7CBCA5C;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1B7AE14D0;
  v10[3] = &unk_1F2FA7700;
  v8 = _Block_copy(v10);

  IMDPersistencePerformBlock(v8, 1, v9);

  _Block_release(v8);
}

- (void)copyChatsFromSortedIdentifiers:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_1B7CFECE0();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = self;
  v8[4] = sub_1B7CBCD8C;
  v8[5] = v7;
  v12[4] = sub_1B7CBC9E0;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1B7AE14D0;
  v12[3] = &unk_1F2FA7610;
  v9 = _Block_copy(v12);
  v10 = self;

  IMDPersistencePerformBlock(v9, 1, v11);

  _Block_release(v9);
}

- (void)copyChatsWithGroupedHandles:(id)a3 style:(int64_t)a4 displayName:(id)a5 completionHandler:(id)a6
{
  v8 = _Block_copy(a6);
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  v9 = sub_1B7CFECE0();
  if (a5)
  {
    v10 = sub_1B7CFEA60();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  v14 = swift_allocObject();
  v14[2] = v9;
  v14[3] = v10;
  v14[4] = v12;
  v14[5] = a4;
  v14[6] = sub_1B7CBBDF0;
  v14[7] = v13;
  v17[4] = sub_1B7CBBDF8;
  v17[5] = v14;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1B7AE14D0;
  v17[3] = &unk_1F2F9F988;
  v15 = _Block_copy(v17);

  IMDPersistencePerformBlock(v15, 1, v16);

  _Block_release(v15);
}

- (BOOL)_shouldDisplayGroupNameAndPhotoWithRecord:(id)a3
{
  sub_1B7CFE300();
  v4 = a3;
  [v4 isFiltered];
  v5 = [v4 handleRecords];
  sub_1B7AEE088(0, &qword_1EBA53638, off_1E7CB50B0);
  sub_1B7CFECE0();

  v6 = sub_1B7CFE2F0();

  return v6 & 1;
}

- (void)splitMergedChatsInDatabaseAtPath:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_1B7CFEA60();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  sub_1B7CD66B0(v6, v8, v5);
  _Block_release(v5);
  _Block_release(v5);
}

@end