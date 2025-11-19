@interface IMDMessageStore
+ (BOOL)_updateCacheForMessageGUID:(id)a3 fromMessage:(id)a4 toMessage:(id)a5 updateLastMessage:(BOOL)a6 calculateUnreadCount:(BOOL)a7;
+ (IMDMessageStore)sharedInstance;
+ (id)_missingMessageReadReceiptCache;
+ (void)_displayDatabaseFullAlert;
+ (void)databaseFull;
+ (void)databaseNoLongerFull;
- (BOOL)_checkIfRecord:(id)a3 hasBadChatIDForMessageGUID:(id)a4;
- (BOOL)_hasMessagesWithGUIDs:(id)a3;
- (BOOL)_isUnreadLoggingRateLimited;
- (BOOL)_isValidPhoneNumber:(id)a3 forCountryCode:(id)a4;
- (BOOL)_itemClassShouldUpdateTransferForItem:(id)a3;
- (BOOL)_preflightLogAllUnreadMessages;
- (BOOL)_shouldBroadcastDeltas;
- (BOOL)_shouldMarkAllMessagesAsNeedingSync;
- (BOOL)_shouldSendBackwardsCompatibleUnreadCountUpdates;
- (BOOL)canStoreItem:(id)a3 onService:(id)a4;
- (BOOL)canStoreMessage:(id)a3 onService:(id)a4;
- (BOOL)hasScheduledMessageForChatGUID:(id)a3;
- (BOOL)hasStoredMessageWithGUID:(id)a3;
- (BOOL)isAttachmentReferencedByMessage:(id)a3;
- (BOOL)markMessageGUIDUnread:(id)a3;
- (BOOL)popReadReceiptForMissingGUID:(id)a3;
- (BOOL)updateSyndicatedMessageWithMessageItem:(id)a3 newRange:(id)a4;
- (BOOL)wasMessageDeduplicatedWithGUID:(id)a3;
- (CKRecordZoneID)recordZoneID;
- (IMDMessageStore)init;
- (IMUnreadCountReportDelta)unreadCountReportDeltaForSetupInfo;
- (id)_cachedUnreadCountReports;
- (id)_chatsForMessageGUID:(id)a3 enableVerboseLogging:(BOOL)a4;
- (id)_chatsForMessageIdentifier:(int64_t)a3;
- (id)_fileTransferGUIDsInMessageBody:(id)a3;
- (id)_handleIDsForChat:(id)a3;
- (id)_handleStringsForChat:(id)a3;
- (id)_itemsForMessageRecords:(id)a3 handleID:(id)a4 useAttachmentCache:(BOOL)a5 shouldLoadAttachments:(BOOL)a6 reverseOrder:(BOOL)a7;
- (id)_itemsWithAssociatedGUID:(id)a3 shouldLoadAttachments:(BOOL)a4;
- (id)_itemsWithGUIDs:(id)a3;
- (id)_itemsWithHandles:(id)a3 onServices:(id)a4 messageGUID:(id)a5 threadIdentifier:(id)a6 limit:(unint64_t)a7 onlyMessages:(BOOL)a8;
- (id)_itemsWithHandlesBeforeAndAfterGUID:(id)a3 handles:(id)a4 onServices:(id)a5 numberOfMessagesBefore:(unint64_t)a6 numberOfMessagesAfter:(unint64_t)a7 threadIdentifier:(id)a8 hasMessagesBefore:(BOOL *)a9 hasMessagesAfter:(BOOL *)a10;
- (id)_itemsWithRoomNames:(id)a3 onServices:(id)a4 messageGUID:(id)a5 threadIdentifier:(id)a6 limit:(unint64_t)a7 onlyMessages:(BOOL)a8;
- (id)_logAllUnreadMessages;
- (id)_messageItemsForMessageRecords:(id)a3 handleID:(id)a4 useAttachmentCache:(BOOL)a5 shouldLoadAttachments:(BOOL)a6 reverseOrder:(BOOL)a7;
- (id)_messagesPendingUpdateT1ToCloudKitWithLimit:(int64_t)a3 attemptCount:(unint64_t)a4;
- (id)_messagesPendingUpdateT2ToCloudKitWithLimit:(int64_t)a3 attemptCount:(unint64_t)a4;
- (id)_messagesPendingUpdateT3ToCloudKitWithLimit:(int64_t)a3 attemptCount:(unint64_t)a4;
- (id)_messagesThatNeedSyncWithCloudKitWithFilter:(unint64_t)a3 limit:(int64_t)a4 attemptCount:(unint64_t)a5;
- (id)_unreadMessagesWithHandles:(id)a3 onServices:(id)a4 limit:(unint64_t)a5 fallbackGUID:(id)a6;
- (id)_unreadMessagesWithRoomNames:(id)a3 onServices:(id)a4 limit:(unint64_t)a5 fallbackGUID:(id)a6;
- (id)_updateAssociatedMessageItemsFromMessage:(id)a3 toMessage:(id)a4;
- (id)addEditHistoryToMessage:(id)a3 editedPartIndex:(int64_t)a4 editType:(unint64_t)a5 previousMessage:(id)a6;
- (id)attachmentsWithHandles:(id)a3 onServices:(id)a4;
- (id)attachmentsWithRoomNames:(id)a3 onServices:(id)a4;
- (id)batchOfRecordIDsToDeleteWithLimit:(int64_t)a3 error:(id *)a4;
- (id)batchOfRecordsToWriteWithFilter:(unint64_t)a3 limit:(int64_t)a4 error:(id *)a5;
- (id)chatForMessage:(id)a3;
- (id)chatForMessageIdentifier:(int64_t)a3;
- (id)chatsForMessage:(id)a3;
- (id)cleanUnformattedPhoneNumber:(id)a3 countryCode:(id)a4;
- (id)deleteMessageGUIDs:(id)a3;
- (id)deleteMessageGUIDs:(id)a3 inChat:(id)a4;
- (id)existingChatForMessageGUID:(id)a3;
- (id)existingMessageSimilarToMessage:(id)a3 skipServices:(id)a4 skipGUIDs:(id)a5 withinTimeInterval:(double)a6 participants:(id)a7;
- (id)existingSOSMessageSimilarToMessage:(id)a3 matchingService:(id)a4 withinTimeInterval:(double)a5;
- (id)frequentRepliesForForChatIdentifiers:(id)a3 onServices:(id)a4 limit:(unint64_t)a5;
- (id)itemWithGUID:(id)a3;
- (id)itemsWithHandles:(id)a3 onServices:(id)a4 messageGUID:(id)a5 numberOfMessagesBefore:(unint64_t)a6 numberOfMessagesAfter:(unint64_t)a7 threadIdentifier:(id)a8 hasMessagesBefore:(BOOL *)a9 hasMessagesAfter:(BOOL *)a10;
- (id)itemsWithHandles:(id)a3 onServices:(id)a4 messageGUID:(id)a5 threadIdentifier:(id)a6 limit:(unint64_t)a7;
- (id)itemsWithRoomNames:(id)a3 onServices:(id)a4 messageGUID:(id)a5 threadIdentifier:(id)a6 limit:(unint64_t)a7;
- (id)lastIncomingMessageForChatWithIdentifier:(id)a3 chatStyle:(unsigned __int8)a4 onService:(id)a5;
- (id)lastMessageForChatWithRowID:(int64_t)a3;
- (id)lastMessageWithHandles:(id)a3 onServices:(id)a4;
- (id)lastMessageWithRoomNames:(id)a3 onServices:(id)a4;
- (id)lastTUConversationItemForChat:(id)a3;
- (id)markMessagesAsReadWithChatGUIDs:(id)a3 upToGUID:(id)a4 readDate:(id)a5 fromMe:(BOOL)a6;
- (id)markMessagesAsReadWithIdentifiers:(id)a3 onServices:(id)a4 chatStyle:(unsigned __int8)a5 upToGUID:(id)a6 readDate:(id)a7 fromMe:(BOOL)a8;
- (id)messageActionItemsForOriginalMessageGUID:(id)a3;
- (id)messageForAttachmentGUID:(id)a3;
- (id)messageRecordsToUploadToCloudKitWithFilter:(unint64_t)a3 limit:(int64_t)a4;
- (id)messageWithGUID:(id)a3 registerAttachments:(BOOL)a4;
- (id)messageWithReplaceMessageID:(int)a3 fromHandle:(id)a4 onService:(id)a5;
- (id)messagesInChat:(id)a3 earliestDate:(id)a4 limit:(unint64_t)a5;
- (id)messagesWithGUIDs:(id)a3;
- (id)messagesWithReplyToGUID:(id)a3;
- (id)notificationContext;
- (id)oldestMessageDateForChatIdentifiers:(id)a3 chatStyle:(unsigned __int8)a4 services:(id)a5;
- (id)reassignIdentifierForExistingMessageWithGUID:(id)a3 toNewGUID:(id)a4;
- (id)recordIDsAndGUIDsToDeleteWithLimit:(int64_t)a3;
- (id)recordZoneIDForFilter:(unint64_t)a3;
- (id)replaceCustomAcknowledgmentsWithNewMessageAcknowledgment:(id)a3 associatedMessageGUID:(id)a4 sender:(id)a5;
- (id)replaceMessageAcknowledgmentsWithNewMessageAcknowledgment:(id)a3 associatedMessageGUID:(id)a4 sender:(id)a5;
- (id)scheduledMessagesBatchFetcherForChat:(id)a3;
- (id)scheduledMessagesBatchFetcherForSyncState:(int64_t)a3;
- (id)sortedMessageItemsWithFallbackHash:(id)a3 inChat:(id)a4 limit:(unint64_t)a5;
- (id)stateDictionaryForDiagnosticsRequest;
- (id)storeEditedMessage:(id)a3 editedPartIndex:(int64_t)a4 editType:(unint64_t)a5 previousMessage:(id)a6 chat:(id)a7 updatedAssociatedMessageItems:(id *)a8;
- (id)storeEditedMessage:(id)a3 editedPartIndexes:(id)a4 editType:(unint64_t)a5 previousMessage:(id)a6 chat:(id)a7 updatedAssociatedMessageItems:(id *)a8;
- (id)storeItem:(id)a3 forceReplace:(BOOL)a4;
- (id)storeMessage:(id)a3 context:(id)a4 didReplaceBlock:(id)a5;
- (id)storeRepositionedStickerLocally:(id)a3;
- (id)storeRepositionedStickerWithMetadata:(id)a3 fileTransferGUID:(id)a4 repositioningFromLocalChange:(BOOL)a5;
- (id)syncTokenStore;
- (id)unreadMessagesWithHandles:(id)a3 onServices:(id)a4 limit:(unint64_t)a5 fallbackGUID:(id)a6;
- (id)unreadMessagesWithRoomNames:(id)a3 onServices:(id)a4 limit:(unint64_t)a5 fallbackGUID:(id)a6;
- (id)updateSyndicatedMessageWithMessageGUID:(id)a3 newRange:(id)a4;
- (id)updateSyndicatedMessageWithSyndicationMessageAction:(id)a3;
- (id)updatedMessagesForMessages:(id)a3;
- (int64_t)_calculateUnreadMessagesCountFilteredByFocus:(BOOL)a3 filteredByAssistiveAccess:(BOOL)a4;
- (int64_t)lastFailedMessageDate;
- (int64_t)unreadMessagesCount;
- (void)__postDBUpdate;
- (void)_clearExpiredTimeSensitiveMessages;
- (void)_deleteMessagesWithGUIDs:(id)a3 chatIdentifiers:(id)a4 style:(unsigned __int8)a5 onServices:(id)a6 batchNumber:(unint64_t)a7 completion:(id)a8;
- (void)_expiredTimeSensitiveMessagesDetected:(id)a3;
- (void)_fixupStoringMessageIfNecessaryWithMessage:(id)a3;
- (void)_hasMarkedAllMessagesAsNeedingSync;
- (void)_needsToMarkAllMessagesAsNeedingSync;
- (void)_notifyWidgetKitTimeline:(int64_t)a3;
- (void)_performDeferredUnreadCountRefreshIfNeeded;
- (void)_postDBUpdate;
- (void)_rebuildUnreadMessageCountRefreshingReports:(BOOL)a3 guids:(id)a4 delta:(id)a5;
- (void)_refreshUnreadCountControllerForGUIDs:(id)a3;
- (void)_registerTransfersWithGUIDs:(id)a3 forMessageGUID:(id)a4;
- (void)_resetSyncStateForMessageWithGUID:(id)a3 toState:(int64_t)a4;
- (void)_setLastUnreadDumpToNow;
- (void)_storeAttachmentsForMessage:(id)a3;
- (void)_suppressDBUpdateTimerFired;
- (void)_unreadCountControllerDidUpdate:(id)a3;
- (void)_updateModificationDate;
- (void)_updateStamp;
- (void)addMissingMessageReadReceipt:(id)a3;
- (void)cleanseAttachments;
- (void)clearLocalSyncState:(unint64_t)a3;
- (void)clearMessagesTombStoneTable;
- (void)clearTombstonesForRecordIDs:(id)a3;
- (void)databaseChatSpamUpdated:(id)a3;
- (void)dealloc;
- (void)enumerateMessagesToRelayOnService:(id)a3 usingBlock:(id)a4;
- (void)focusStateDidChange;
- (void)legacyImport:(id)a3;
- (void)loadConsumedSessionPayloadsForItems:(id)a3;
- (void)markMessageAsDeduplicated:(id)a3;
- (void)performInitialHousekeeping;
- (void)postCountChanges;
- (void)postUrgentNotificationsForMessageGUIDs:(id)a3;
- (void)rebuildLastFailedMessageDate;
- (void)rebuildUnreadMessageCount;
- (void)recordUpdateFailedWithID:(id)a3 localGUID:(id)a4 error:(id)a5;
- (void)recordUpdateSucceededWithRecord:(id)a3;
- (void)registerTransfersForMessage:(id)a3;
- (void)resetLocalSyncStateIfAppropriate;
- (void)resolveUnformattedRepresentationsForHandles:(id)a3 onService:(id)a4 message:(id)a5 completionBlock:(id)a6;
- (void)retractPostedNotificationsForMessageGUIDs:(id)a3;
- (void)retractPostedNotificationsForMessagesMatchingChatGUIDs:(id)a3;
- (void)setSuppressDatabaseUpdates:(BOOL)a3;
- (void)signalUnreadChangeForHandle:(id)a3;
- (void)storeTranslation:(id)a3 onMessage:(id)a4 partIndex:(int64_t)a5 chat:(id)a6;
- (void)updateFileTransfer:(id)a3;
- (void)updatePostedNotificationsForMessageGUIDs:(id)a3;
- (void)updateStamp;
- (void)updateStampForGUID:(id)a3;
- (void)updateStampForGUIDs:(id)a3;
- (void)updateUnformattedID:(id)a3 forBuddyID:(id)a4 onService:(id)a5;
@end

@implementation IMDMessageStore

+ (IMDMessageStore)sharedInstance
{
  if (qword_281421158 != -1)
  {
    sub_22B7D5A50();
  }

  v3 = qword_281420FD8;

  return v3;
}

- (int64_t)unreadMessagesCount
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v4 = [v3 isUnreadCountRefactorEnabled];

  if (v4)
  {
    [(IMDMessageStore *)self _performDeferredUnreadCountRefreshIfNeeded];
    v5 = [(IMDMessageStore *)self unreadCountController];
    v6 = [v5 unreadCount];
  }

  else if (self->_cachedUnreadMessageCount)
  {
    v7 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      cachedUnreadMessageCount = self->_cachedUnreadMessageCount;
      v25 = 138412290;
      v26 = cachedUnreadMessageCount;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Returning _cachedUnreadMessageCount %@", &v25, 0xCu);
    }

    v6 = [(NSNumber *)self->_cachedUnreadMessageCount longLongValue];
  }

  else
  {
    v9 = [MEMORY[0x277D1A9D0] sharedManager];
    v10 = [v9 shouldFilterUnreadMessageCount];

    v11 = [MEMORY[0x277D1A8A0] sharedManager];
    v12 = [v11 shouldFilterIncomingMessages];

    v13 = IMOSLoggingEnabled();
    if ((v10 | v12))
    {
      if (v13)
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = @"NO";
          if (v10)
          {
            v16 = @"YES";
          }

          else
          {
            v16 = @"NO";
          }

          if (v12)
          {
            v15 = @"YES";
          }

          v25 = 138412546;
          v26 = v16;
          v27 = 2112;
          v28 = v15;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Calculating unread message count by focus [%@] and/or by assistive access [%@].", &v25, 0x16u);
        }
      }

      v17 = [(IMDMessageStore *)self _calculateUnreadMessagesCountFilteredByFocus:v10 filteredByAssistiveAccess:v12 & 1];
    }

    else
    {
      if (v13)
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          LOWORD(v25) = 0;
          _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Counting all unread messages.", &v25, 2u);
        }
      }

      v17 = IMDMessageRecordCountAllUnreadMessages();
    }

    v6 = v17;
    v19 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:v17];
    v20 = self->_cachedUnreadMessageCount;
    self->_cachedUnreadMessageCount = v19;

    v21 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = self->_cachedUnreadMessageCount;
      v25 = 138412290;
      v26 = v22;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_DEFAULT, "Computed _cachedUnreadMessageCount %@", &v25, 0xCu);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)_performDeferredUnreadCountRefreshIfNeeded
{
  v3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v4 = [v3 isUnreadCountRefactorEnabled];

  if (v4)
  {
    if (self->_deferredUnreadCountRefresh)
    {
      [(IMDMessageStore *)self _refreshUnreadCountControllerForGUIDs:0];
      self->_deferredUnreadCountRefresh = 0;
    }
  }
}

- (int64_t)lastFailedMessageDate
{
  cachedLastFailedMessageDate = self->_cachedLastFailedMessageDate;
  if (cachedLastFailedMessageDate)
  {

    return [(NSNumber *)cachedLastFailedMessageDate longLongValue];
  }

  else
  {
    FailedMessageDate = IMDMessageRecordLastFailedMessageDate();
    v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:FailedMessageDate];
    v7 = self->_cachedLastFailedMessageDate;
    self->_cachedLastFailedMessageDate = v6;

    return FailedMessageDate;
  }
}

- (void)updateStamp
{
  v3 = [(IMDMessageStore *)self deferredRebuildGUIDs];
  [v3 removeAllObjects];

  MEMORY[0x2821F9670](self, sel__updateStamp);
}

- (void)_updateModificationDate
{
  v3 = [MEMORY[0x277CCACA8] stringGUID];
  [(IMDMessageStore *)self setModificationStamp:v3];

  v4 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEFAULT, "Resetting _cachedUnreadMessageCount because _updateModificationDate", v6, 2u);
  }

  cachedUnreadMessageCount = self->_cachedUnreadMessageCount;
  self->_cachedUnreadMessageCount = 0;
}

- (void)_postDBUpdate
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel___postDBUpdate object:0];

  [(IMDMessageStore *)self performSelector:sel___postDBUpdate withObject:0 afterDelay:0.2];
}

- (void)rebuildUnreadMessageCount
{
  v3 = [(IMDMessageStore *)self deferredRebuildGUIDs];
  [v3 removeAllObjects];

  [(IMDMessageStore *)self rebuildUnreadMessageCountForGUIDs:0];
}

- (id)stateDictionaryForDiagnosticsRequest
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"allUnreadMessages";
  v2 = [(IMDMessageStore *)self _logAllUnreadMessages];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)_isUnreadLoggingRateLimited
{
  v2 = [(IMDMessageStore *)self _lastUnreadDumpDate];
  v3 = v2;
  if (v2)
  {
    [v2 timeIntervalSinceNow];
    v5 = fabs(v4) < 3600.0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_setLastUnreadDumpToNow
{
  v3 = [MEMORY[0x277CBEAA8] date];
  [(IMDMessageStore *)self _setLastUnreadDumpDate:v3];
}

- (BOOL)_preflightLogAllUnreadMessages
{
  if ([(IMDMessageStore *)self _isUnreadLoggingRateLimited])
  {
    v3 = IMOSLoggingEnabled();
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v14 = 0;
        v5 = "Not logging all unread messages because we have already logged in the past hour.";
        v6 = &v14;
LABEL_20:
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, v5, v6, 2u);
        goto LABEL_21;
      }

      goto LABEL_21;
    }
  }

  else
  {
    if (!sub_22B5095C0() || !sub_22B5094BC())
    {
      goto LABEL_17;
    }

    v15 = 0;
    v7 = [sub_22B5094BC() isSysdiagnoseInProgressWithError:&v15];
    v8 = v15;
    if (v8)
    {
      v9 = IMLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_22B7CFFE4(v8, v9);
      }
    }

    if (v7)
    {
      [(IMDMessageStore *)self _setLastUnreadDumpToNow];
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *v12 = 0;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Proceeding with logging all unread messages", v12, 2u);
        }
      }

      LOBYTE(v3) = 1;
    }

    else
    {
LABEL_17:
      v3 = IMOSLoggingEnabled();
      if (v3)
      {
        v4 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v5 = "Not logging all unread messages because sysdiagnosed is not running.";
          v6 = buf;
          goto LABEL_20;
        }

LABEL_21:

        LOBYTE(v3) = 0;
      }
    }
  }

  return v3;
}

- (id)_logAllUnreadMessages
{
  v36 = *MEMORY[0x277D85DE8];
  if ([(IMDMessageStore *)self _preflightLogAllUnreadMessages])
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = sub_22B4D7620;
    v33 = sub_22B4D7868;
    v34 = 0;
    v2 = [MEMORY[0x277D18EB0] synchronousDatabase];
    v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %d", *MEMORY[0x277D19848], 2];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_22B5094AC;
    v28[3] = &unk_2787031A0;
    v28[4] = &v29;
    [v2 fetchUnreadMessageRecordsForChatsFilteredUsingPredicate:v3 limit:100 completionHandler:v28];

    v4 = [MEMORY[0x277CBEB38] dictionary];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = v30[5];
    v5 = [obj countByEnumeratingWithState:&v24 objects:v35 count:16];
    if (v5)
    {
      v6 = *v25;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v25 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v24 + 1) + 8 * i);
          v9 = [v8 chatRecord];
          v10 = [v9 guid];
          v11 = v10;
          if (v10)
          {
            v12 = v10;
          }

          else
          {
            v12 = @"nilChatGUID";
          }

          v13 = v12;

          v14 = [v4 objectForKeyedSubscript:v13];
          v15 = v14;
          if (v14)
          {
            v16 = v14;
          }

          else
          {
            v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          v17 = v16;

          v18 = [v8 guid];
          v19 = v18;
          if (v18)
          {
            v20 = v18;
          }

          else
          {
            v20 = @"nilMessageGUID";
          }

          [v17 addObject:v20];

          [v4 setObject:v17 forKey:v13];
        }

        v5 = [obj countByEnumeratingWithState:&v24 objects:v35 count:16];
      }

      while (v5);
    }

    _Block_object_dispose(&v29, 8);
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)syncTokenStore
{
  if (qword_27D8CFEF0 != -1)
  {
    sub_22B7D44E4();
  }

  v3 = qword_27D8CFEE8;

  return v3;
}

- (CKRecordZoneID)recordZoneID
{
  v2 = +[IMDRecordZoneManager sharedInstance];
  v3 = [v2 messageRecordZoneID];

  return v3;
}

- (id)recordZoneIDForFilter:(unint64_t)a3
{
  v4 = +[IMDRecordZoneManager sharedInstance];
  v5 = v4;
  if (a3 == 4)
  {
    [v4 chatBotMessageRecordZoneID];
  }

  else
  {
    [v4 messageRecordZoneID];
  }
  v6 = ;

  return v6;
}

- (void)resetLocalSyncStateIfAppropriate
{
  if ([(IMDMessageStore *)self _shouldMarkAllMessagesAsNeedingSync])
  {
    [(IMDMessageStore *)self clearLocalSyncState:3];

    [(IMDMessageStore *)self _hasMarkedAllMessagesAsNeedingSync];
  }
}

- (void)clearLocalSyncState:(unint64_t)a3
{
  v3 = a3;
  v9 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8[0] = 67109120;
      v8[1] = v3;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Clearing local messages sync state, flags 0x%x", v8, 8u);
    }
  }

  if (v3)
  {
    v6 = [(IMDMessageStore *)self syncTokenStore];
    [v6 persistToken:0 forKey:@"messagesChangeToken"];
  }

  if ((v3 & 2) != 0)
  {
    [(IMDMessageStore *)self markAllMessagesAsNeedingCloudKitSync];
  }

  else if ((v3 & 0x10) != 0)
  {
    [(IMDMessageStore *)self _needsToMarkAllMessagesAsNeedingSync];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_needsToMarkAllMessagesAsNeedingSync
{
  v2 = [MEMORY[0x277D1A990] sharedInstance];
  [v2 setBool:0 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A40]];
}

- (BOOL)_shouldMarkAllMessagesAsNeedingSync
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D1ACB8] sharedInstance];
  v3 = [v2 isUnderFirstDataProtectionLock];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277D1A990] sharedInstance];
    v4 = [v5 getBoolFromDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A40]] ^ 1;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = @"NO";
      if (v4)
      {
        v7 = @"YES";
      }

      v10 = 138412290;
      v11 = v7;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "_shouldMarkAllMessagesAsNeedingSync %@", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)_hasMarkedAllMessagesAsNeedingSync
{
  v2 = [MEMORY[0x277D1A990] sharedInstance];
  [v2 setBool:1 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A40]];
}

- (id)batchOfRecordsToWriteWithFilter:(unint64_t)a3 limit:(int64_t)a4 error:(id *)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v7 = [(IMDMessageStore *)self messagesThatNeedSyncWithCloudKitWithFilter:a3 limit:a4, a5];
  v39 = self;
  v43 = [(IMDMessageStore *)self recordZoneIDForFilter:a3];
  v8 = +[IMDCKRecordSaltManager sharedInstance];
  v42 = [v8 cachedSalt];

  v38 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v41 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v9)
  {
    v44 = *v46;
    *&v10 = 138412290;
    v37 = v10;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v46 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v45 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v12;
          if ([v14 isTypingMessage])
          {
            -[IMDMessageStore markMessageAsCleanWithROWID:](v39, "markMessageAsCleanWithROWID:", [v14 messageID]);
            goto LABEL_25;
          }
        }

        v15 = +[IMDChatStore sharedInstance];
        v16 = [v12 guid];
        v14 = [v15 chatsGUIDsForMessageWithGUID:v16];

        v17 = +[IMDChatStore sharedInstance];
        v18 = [v14 __imFirstObject];
        v19 = [v17 chatWithGUID:v18];

        v20 = [v12 service];
        v21 = [v19 cloudKitChatIDForServiceName:v20];
        [v12 setCloudKitChatID:v21];

        v22 = [v12 cloudKitChatID];
        LODWORD(v21) = v22 == 0;

        if (v21 && IMOSLoggingEnabled())
        {
          v23 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            v24 = [v12 guid];
            *buf = v37;
            v50 = v24;
            _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Message %@ is orphaned (parentChatID is nil)", buf, 0xCu);
          }
        }

        v25 = [v12 copyCKRecordRepresentationWithZoneID:v43 salt:v42];
        v26 = [v25 objectAtIndexedSubscript:0];

        if (!v26)
        {
          if (IMOSLoggingEnabled())
          {
            v33 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              v34 = [v12 guid];
              *buf = v37;
              v50 = v34;
              _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Cannot generate CKRecord for message %@", buf, 0xCu);
            }
          }

          -[IMDMessageStore markMessageAsCleanWithROWID:](v39, "markMessageAsCleanWithROWID:", [v12 messageID]);
          v31 = [MEMORY[0x277D1AAA8] sharedInstance];
          v32 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.messages.sync" code:0 userInfo:0];
          [v31 forceAutoBugCaptureWithSubType:@"FailCreateCKRecordForMessage" errorPayload:v32 type:@"MiCSync" context:@"Failed to create CKRecord for message"];
          goto LABEL_23;
        }

        v27 = [v26 recordID];
        v28 = [v27 recordName];
        v29 = [v41 containsObject:v28];

        if ((v29 & 1) == 0)
        {
          v30 = [v12 guid];
          [v38 setObject:v26 forKey:v30];

          v31 = [v26 recordID];
          v32 = [v31 recordName];
          [v41 addObject:v32];
LABEL_23:
        }

LABEL_25:
        objc_autoreleasePoolPop(v13);
      }

      v9 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v9);
  }

  v35 = *MEMORY[0x277D85DE8];

  return v38;
}

- (void)recordUpdateSucceededWithRecord:(id)a3
{
  v3 = a3;
  v4 = +[IMDChatRegistry sharedInstance];
  [v4 processMessageUsingCKRecord:v3];
}

- (void)recordUpdateFailedWithID:(id)a3 localGUID:(id)a4 error:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277D1AC70] sharedInstance];
  v12 = +[IMDCKUtilities sharedInstance];
  v13 = [v12 extractServerRecordFromCKServerErrorRecordChanged:v10];

  if (![v11 wasRecordAlreadyChanged:v10])
  {
    if ([v11 wasZoneNotFound:v10])
    {
      v19 = IMDMessageStoreLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v8 recordName];
        *v35 = 138412546;
        *&v35[4] = v20;
        *&v35[12] = 2112;
        *&v35[14] = v9;
        _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_DEFAULT, "Zone was not found for recordName (%@) with local guid (%@)", v35, 0x16u);
      }

      v21 = self;
      v22 = v9;
      v23 = 0;
      goto LABEL_22;
    }

    if ([v11 wasUnknownItem:v10])
    {
      v24 = IMDMessageStoreLogHandle();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
LABEL_21:

        v21 = self;
        v22 = v9;
        v23 = 2;
LABEL_22:
        [(IMDMessageStore *)v21 _resetSyncStateForMessageWithGUID:v22 toState:v23, *v35];
        goto LABEL_23;
      }

      *v35 = 0;
      v28 = "Record had invalid arguments, we'll try this record again on the next sync";
      v29 = v24;
      v30 = 2;
    }

    else
    {
      if ([v11 wasRecordArchived:v10])
      {
        v31 = [(IMDMessageStore *)self _checkIfRecord:v13 hasBadChatIDForMessageGUID:v9];
        v32 = IMDMessageStoreLogHandle();
        v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
        if (v31)
        {
          if (v33)
          {
            *v35 = 0;
            _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_DEFAULT, "Archived Server Record has incorrect parent Chat ID, marking record as needing T3 update", v35, 2u);
          }

          v21 = self;
          v22 = v9;
          v23 = 9;
        }

        else
        {
          if (v33)
          {
            *v35 = 0;
            _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_DEFAULT, "Record was archived, marking record as synced", v35, 2u);
          }

          v21 = self;
          v22 = v9;
          v23 = 1;
        }

        goto LABEL_22;
      }

      v24 = IMDMessageStoreLogHandle();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      *v35 = 134217984;
      *&v35[4] = [v10 code];
      v28 = "Encountered an unknown error.  We'll try syncing this message again on the next sync. Error code: %llu";
      v29 = v24;
      v30 = 12;
    }

    _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_DEFAULT, v28, v35, v30);
    goto LABEL_21;
  }

  v14 = [v8 recordName];
  v15 = [v13 recordID];
  v16 = [v15 recordName];
  v17 = [v14 isEqualToString:v16];

  if (!v17)
  {
    v24 = IMDMessageStoreLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v13 recordID];
      v26 = [v25 recordName];
      v27 = [v8 recordName];
      *v35 = 138412546;
      *&v35[4] = v26;
      *&v35[12] = 2112;
      *&v35[14] = v27;
      _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_DEFAULT, "Conflicting serverRecord was different than the one being updated (server: %@, local: %@)", v35, 0x16u);
    }

    goto LABEL_21;
  }

  v18 = +[IMDChatRegistry sharedInstance];
  [v18 processMessageUsingCKRecord:v13];

LABEL_23:
  v34 = *MEMORY[0x277D85DE8];
}

- (BOOL)_checkIfRecord:(id)a3 hasBadChatIDForMessageGUID:(id)a4
{
  v6 = a3;
  v7 = [(IMDMessageStore *)self chatForMessageGUID:a4];
  if (v7)
  {
    v8 = [v6 _stringForKey:@"svc"];
    v9 = [v7 cloudKitChatIDForServiceName:v8];
    v10 = [v6 parentChatIDForMessage];
    v11 = v10;
    if (v9)
    {
      v12 = [v10 isEqualToString:v9] ^ 1;

      v11 = v9;
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (void)_resetSyncStateForMessageWithGUID:(id)a3 toState:(int64_t)a4
{
  v9 = [(IMDMessageStore *)self itemWithGUID:a3];
  [v9 setCloudKitRecordID:0];
  [v9 setCloudKitRecordChangeTag:0];
  [v9 setCloudKitSyncState:a4];
  [v9 setCloudKitServerChangeTokenBlob:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    BYTE2(v8) = 1;
    LOWORD(v8) = 0;
    v6 = [IMDMessageStore storeMessage:"storeMessage:forceReplace:modifyError:modifyFlags:flagMask:updateMessageCache:calculateUnreadCount:reindexMessage:isCloudImport:" forceReplace:v9 modifyError:0 modifyFlags:0 flagMask:0 updateMessageCache:0x2000 calculateUnreadCount:1 reindexMessage:v8 isCloudImport:?];
  }

  else
  {
    v7 = [(IMDMessageStore *)self storeItem:v9 forceReplace:0];
  }
}

- (void)legacyImport:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 _stringForKey:@"chatID"];
  if (v5)
  {
    v6 = [(IMDMessageStore *)self visitedChats];
    v7 = [v6 objectForKey:v5];

    v8 = [(IMDMessageStore *)self visitedChats];
    v9 = v8;
    if (v7)
    {
      v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "intValue") + 1}];
      [v9 setObject:v10 forKey:v5];
    }

    else
    {
      [v8 setObject:&unk_283F4E750 forKey:v5];
    }

    v12 = [(IMDMessageStore *)self visitedChats];
    v13 = [v12 objectForKey:v5];

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v17 = 138412546;
        v18 = v5;
        v19 = 1024;
        v20 = [v13 intValue];
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Found parentChatID: %@, updatedLastMessageCount: %d", &v17, 0x12u);
      }
    }

    v15 = +[IMDChatRegistry sharedInstance];
    [v15 processMessageUsingCKRecord:v4 updatedLastMessageCount:{objc_msgSend(v13, "intValue")}];
  }

  else
  {
    v11 = +[IMDChatRegistry sharedInstance];
    [v11 processMessageUsingCKRecord:v4];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (IMDMessageStore)init
{
  v30.receiver = self;
  v30.super_class = IMDMessageStore;
  v2 = [(IMDMessageStore *)&v30 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D192A8] sharedInstance];
    [v3 addListener:v2];

    v4 = [MEMORY[0x277CCACA8] stringGUID];
    [(IMDMessageStore *)v2 setModificationStamp:v4];

    v2->_suppressedUpdates = 0;
    v5 = [MEMORY[0x277D1ADE0] sharedInstance];
    if ([(IMDMessageStore *)v2 _isPrimaryMessageStore])
    {
      [(IMDMessageStore *)v2 performInitialHousekeeping];
      v6 = [MEMORY[0x277D1A9D0] sharedManager];
      [v6 addDelegate:v2];
    }

    v7 = objc_alloc(MEMORY[0x277D1AC68]);
    v8 = [v7 initWithObject:v2 title:@"IMDChatStore-AllUnreadMessages" queue:MEMORY[0x277D85CD0]];
    [(IMDMessageStore *)v2 setStateCaptureAssistant:v8];

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(IMDMessageStore *)v2 setVisitedChats:v9];

    v10 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v11 = [v10 isUnreadCountRefactorEnabled];

    if (v11 && [(IMDMessageStore *)v2 _isPrimaryMessageStore])
    {
      v12 = objc_alloc(MEMORY[0x277D1ACC0]);
      v13 = objc_alloc_init(MEMORY[0x277D1ACC8]);
      v14 = [v12 initWithFilteringController:v13];
      unreadCountController = v2->_unreadCountController;
      v2->_unreadCountController = v14;

      v2->_deferredUnreadCountRefresh = 1;
      v16 = [MEMORY[0x277CBEB58] set];
      deferredRebuildGUIDs = v2->_deferredRebuildGUIDs;
      v2->_deferredRebuildGUIDs = v16;

      objc_initWeak(&location, v2);
      v18 = v2->_unreadCountController;
      v24 = MEMORY[0x277D85DD0];
      v25 = 3221225472;
      v26 = sub_22B5DB030;
      v27 = &unk_278705388;
      objc_copyWeak(&v28, &location);
      [(IMUnreadCountController *)v18 replaceDataExpirationHandler:&v24];
      [(IMUnreadCountController *)v2->_unreadCountController setIsDaemon:1, v24, v25, v26, v27];
      v19 = [MEMORY[0x277CCAB98] defaultCenter];
      v20 = *MEMORY[0x277D1A868];
      v21 = [(IMDMessageStore *)v2 unreadCountController];
      [v19 addObserver:v2 selector:sel__unreadCountControllerDidUpdate_ name:v20 object:v21];

      v22 = [MEMORY[0x277CCAB98] defaultCenter];
      [v22 addObserver:v2 selector:sel__expiredTimeSensitiveMessagesDetected_ name:*MEMORY[0x277D1A860] object:0];

      [MEMORY[0x277D1A9C8] registerForFiltrationSettingChangeNotifications];
      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
    }
  }

  return v2;
}

- (void)performInitialHousekeeping
{
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_DEFAULT, "Performing initial database housekeeping", buf, 2u);
  }

  v3 = [MEMORY[0x277D19268] sharedInstance];
  if ([v3 isInternalInstall])
  {
    v4 = IMIsRunningInUnitTesting();

    if (v4)
    {
      v5 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Bailing out of initial housekeeping, currently under unit testing", v10, 2u);
      }

      return;
    }
  }

  else
  {
  }

  if (qword_281421260 != -1)
  {
    sub_22B7D5A64();
  }

  v6 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "  => Failing all unsent, unfailed messages", v9, 2u);
  }

  IMDMessageRecordMarkFailedAllUnsentUnfailedMessages();
  if (IMDSMSRecordIsFull())
  {
    v7 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "  => Database was full, waiting to post", v8, 2u);
    }

    im_dispatch_after();
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x277D192A8] sharedInstance];
  [v3 removeListener:self];

  v4.receiver = self;
  v4.super_class = IMDMessageStore;
  [(IMDMessageStore *)&v4 dealloc];
}

- (void)focusStateDidChange
{
  v3 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEFAULT, "Focus state changed, rebuilding unread message count", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B5DB610;
  block[3] = &unk_278702FF0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

+ (BOOL)_updateCacheForMessageGUID:(id)a3 fromMessage:(id)a4 toMessage:(id)a5 updateLastMessage:(BOOL)a6 calculateUnreadCount:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v46 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v43 = v11;
    v44 = 1024;
    v45 = v7;
    _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "Updating cache for message guid: %@ calculateUnreadCount %{BOOL}d", buf, 0x12u);
  }

  if (v11)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v15 = +[IMDChatRegistry sharedInstance];
    v16 = [v15 cachedChats];

    v17 = [v16 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v17)
    {
      v18 = v17;
      v33 = v8;
      v34 = v7;
      v35 = v13;
      v36 = v12;
      v19 = *v38;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v38 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v37 + 1) + 8 * i);
          v22 = objc_autoreleasePoolPush();
          v23 = [v21 lastMessage];
          v24 = [v23 guid];
          v25 = [v24 isEqualToString:v11];

          if (v25)
          {
            v27 = IMDatabaseLogHandle();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_DEFAULT, "  **** Updating this chat!", buf, 2u);
            }

            v13 = v35;
            v12 = v36;
            if (v33)
            {
              v28 = +[IMDChatRegistry sharedInstance];
              [v28 updateLastMessageForChat:v21 hintMessage:v35];
            }

            v29 = +[IMDChatRegistry sharedInstance];
            LOWORD(v32) = v34;
            v26 = 1;
            [v29 updateStateForChat:v21 fromMessage:v36 toMessage:v35 forcePost:0 hintMessage:0 shouldRebuildFailedMessageDate:1 shouldCalculateUnreadCount:v32 setUnreadCountToZero:?];

            objc_autoreleasePoolPop(v22);
            goto LABEL_20;
          }

          objc_autoreleasePoolPop(v22);
        }

        v18 = [v16 countByEnumeratingWithState:&v37 objects:v41 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }

      v26 = 0;
      v13 = v35;
      v12 = v36;
    }

    else
    {
      v26 = 0;
    }

LABEL_20:
  }

  else
  {
    v26 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v26;
}

- (void)_storeAttachmentsForMessage:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[IMDFileTransferCenter sharedInstance];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [v3 fileTransferGUIDs];
  v5 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v5)
  {
    v7 = *v25;
    *&v6 = 138412290;
    v22 = v6;
    do
    {
      v8 = 0;
      do
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [v4 transferForGUID:{*(*(&v24 + 1) + 8 * v8), v22}];
        if (v9)
        {
          v10 = +[IMDAttachmentStore sharedInstance];
          v11 = [v3 guid];
          [v10 storeAttachment:v9 associateWithMessageWithGUID:v11];

          if ([v9 isAuxImage])
          {
            v12 = IMDatabaseLogHandle();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v22;
              v29 = v9;
              _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEFAULT, "Storing Aux image transfer %@", buf, 0xCu);
            }

            v13 = +[IMDFileTransferCenter sharedInstance];
            v14 = MEMORY[0x277D1A9C0];
            v15 = [v9 guid];
            v16 = [v14 AuxGUIDFromFileTransferGUID:v15];
            v17 = [v13 transferForGUID:v16];

            if (v17)
            {
              v18 = +[IMDAttachmentStore sharedInstance];
              [v18 storeAttachment:v17 associateWithMessageWithGUID:0];
            }

            else if (IMOSLoggingEnabled())
            {
              v19 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
              {
                v20 = [v9 guid];
                *buf = v22;
                v29 = v20;
                _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "_storeAttachmentsForMessage did not find Aux video transfer %@", buf, 0xCu);
              }
            }
          }
        }

        ++v8;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v5);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)updateFileTransfer:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v3;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEFAULT, "Updating transfer: %@", &v14, 0xCu);
    }

    v5 = +[IMDAttachmentStore sharedInstance];
    [v5 storeAttachment:v3 associateWithMessageWithGUID:0];

    v6 = +[IMDAttachmentStore sharedInstance];
    v7 = [v3 guid];
    v8 = [v6 attachmentWithGUID:v7];

    v9 = [v3 messageGUID];
    [v8 setMessageGUID:v9];

    v10 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "Posting resulting transfer to clients; %@", &v14, 0xCu);
    }

    v11 = +[IMDFileTransferCenter sharedInstance];
    v12 = [v8 guid];
    [v11 addTransfer:v8 forGUID:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)storeItem:(id)a3 forceReplace:(BOOL)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = +[IMDServiceController sharedController];
    v9 = [v7 service];
    v10 = [v8 serviceWithName:v9];

    if (v10 && ([v10 supportsDatabase] & 1) == 0)
    {
      v18 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138412290;
        v27 = v10;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_DEFAULT, " => Not storing item, service: %@  does not support a database", &v26, 0xCu);
      }

      v19 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138412290;
        v27 = v7;
        _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_DEFAULT, "Not storing: %@", &v26, 0xCu);
      }

      AttachmentIfNeededRef = v7;
    }

    else
    {

      v11 = objc_autoreleasePoolPush();
      IsFull = IMDSMSRecordIsFull();
      v13 = [v7 guid];
      v14 = IMSingleObjectArray();
      v15 = [(IMDMessageStore *)self _itemsWithGUIDs:v14];

      if ([v15 count])
      {
        v16 = [v15 lastObject];
        if (v16)
        {
          AttachmentIfNeededRef = IMDUpdateIMItemWithIMItemForceReplace();
        }

        else
        {
          AttachmentIfNeededRef = 0;
        }
      }

      else
      {
        v20 = IMDCreateIMDMessageRecordRefFromIMMessageItem();
        v21 = [v7 handle];
        AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v20, v21);

        if (v20)
        {
          CFRelease(v20);
        }
      }

      v22 = IMDSMSRecordIsFull();

      objc_autoreleasePoolPop(v11);
      v23 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 138412546;
        v27 = v7;
        v28 = 2112;
        v29 = AttachmentIfNeededRef;
        _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_DEFAULT, "Stored item to database: %@:%@", &v26, 0x16u);
      }

      [(IMDMessageStore *)self updateStamp];
      sub_22B5DC120(IsFull != 0, v22 != 0);
    }
  }

  else
  {
    AttachmentIfNeededRef = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return AttachmentIfNeededRef;
}

- (id)updateSyndicatedMessageWithSyndicationMessageAction:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D1AA98]) initWithSyndicationAction:v4];
    v6 = [v4 messagePartGUID];
    v7 = [v6 messageGUID];
    v8 = [(IMDMessageStore *)self updateSyndicatedMessageWithMessageGUID:v7 newRange:v5];

    v9 = IMOSLoggingEnabled();
    if (v8)
    {
      if (!v9)
      {
        goto LABEL_14;
      }

      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v13 = 138412546;
        v14 = v4;
        v15 = 2112;
        v16 = v5;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Updated syndication ranges with SyndicationAction %@. newRange: %@", &v13, 0x16u);
      }
    }

    else
    {
      if (!v9)
      {
        goto LABEL_14;
      }

      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = v4;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Did NOT update IMMessageItem's syndication ranges for SyndicationAction %@", &v13, 0xCu);
      }
    }
  }

  else
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D5AA0();
    }

    v8 = 0;
  }

LABEL_14:

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)updateSyndicatedMessageWithMessageGUID:(id)a3 newRange:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D5ADC();
    }

    goto LABEL_19;
  }

  v8 = [(IMDMessageStore *)self messageWithGUID:v6];
  if (!v8)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v18 = 138412290;
        v19 = v6;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Message not found for syndication action for guid: %@", &v18, 0xCu);
      }

      goto LABEL_18;
    }

LABEL_19:
    v13 = 0;
    goto LABEL_20;
  }

  v9 = [(IMDMessageStore *)self updateSyndicatedMessageWithMessageItem:v8 newRange:v7];
  v10 = IMOSLoggingEnabled();
  if (!v9)
  {
    if (v10)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [v8 guid];
        v18 = 138412546;
        v19 = v15;
        v20 = 2112;
        v21 = v7;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Did not updated syndication ranges for message item with guid %@. newRange: %@", &v18, 0x16u);
      }

LABEL_18:

      goto LABEL_19;
    }

    goto LABEL_19;
  }

  if (v10)
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v8 guid];
      v18 = 138412546;
      v19 = v12;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Updated syndication ranges for message item with guid %@. newRange: %@", &v18, 0x16u);
    }
  }

  v8 = v8;
  v13 = v8;
LABEL_20:

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)updateSyndicatedMessageWithMessageItem:(id)a3 newRange:(id)a4
{
  v32[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D5B54();
    }

    goto LABEL_14;
  }

  if (!v7)
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D5B18();
    }

LABEL_14:
    v18 = 0;
    goto LABEL_18;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v6 guid];
      *buf = 138412546;
      v27 = v10;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Updating syndication ranges for message item with guid %@. newRange: %@", buf, 0x16u);
    }
  }

  v11 = [v6 syndicationRanges];
  v25 = 0;
  v12 = MEMORY[0x277D1AA98];
  v32[0] = v8;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
  v14 = [v12 updateMessagesRanges:v11 withMessagePartSyndicationRanges:v13 didUpdate:&v25];

  if (v25 == 1)
  {
    [v6 setSyndicationRanges:v14];
    LOWORD(v24) = 256;
    v15 = [(IMDMessageStore *)self storeMessage:v6 forceReplace:1 modifyError:0 modifyFlags:0 flagMask:0 updateMessageCache:1 calculateUnreadCount:v24 reindexMessage:?];
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = [v6 guid];
      *buf = 138412290;
      v27 = v17;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Updated syndication ranges for message: %@", buf, 0xCu);
    }
  }

  else
  {
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v19 = [v6 guid];
      v20 = [v8 description];
      v21 = [v11 componentsJoinedByString:@", \n"];
      *buf = 138412802;
      v27 = v19;
      v28 = 2112;
      v29 = v20;
      v30 = 2112;
      v31 = v21;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Did NOT update syndication ranges for message: %@\nNew Range:\n%@\nOriginal Ranges:\n%@", buf, 0x20u);
    }
  }

  v18 = v25;
LABEL_18:

  v22 = *MEMORY[0x277D85DE8];
  return v18 & 1;
}

- (void)_fixupStoringMessageIfNecessaryWithMessage:(id)a3
{
  v5 = a3;
  if ([v5 scheduleType] == 2 && objc_msgSend(v5, "errorCode") && objc_msgSend(v5, "scheduleState") != 4)
  {
    v6 = IMDMessageStoreLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D5B90();
    }

    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMDMessageStoreDomain" code:objc_msgSend(v5 userInfo:{"errorCode"), 0}];
    v8 = [MEMORY[0x277D1AAA8] sharedInstance];
    [v8 forceAutoBugCaptureWithSubType:@"MessageStore attempted to store scheduled message with an invalid scheduleState" errorPayload:v7 type:@"ScheduledMessageFailureStateNotSet" context:0];

    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"IMDMessageStore.m" lineNumber:716 description:{@"Scheduled message is marked as a failure, but didn't transition the scheduleState"}];

    [v5 setScheduleState:4];
  }
}

- (id)storeMessage:(id)a3 context:(id)a4 didReplaceBlock:(id)a5
{
  v77 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    AttachmentIfNeededRef = 0;
    goto LABEL_70;
  }

  if ([v9 isCloudImport])
  {
LABEL_3:
    context = objc_autoreleasePoolPush();
    [(IMDMessageStore *)self _fixupStoringMessageIfNecessaryWithMessage:v8];
    IsFull = IMDSMSRecordIsFull();
    v12 = [v8 guid];
    v13 = IMSingleObjectArray();
    v14 = [(IMDMessageStore *)self _itemsWithGUIDs:v13];

    v65 = v14;
    if ([v14 count])
    {
      v15 = [v14 lastObject];
      v16 = v15;
      v62 = v15 != 0;
      if (v15)
      {
        v17 = [v15 copy];
        [v9 forceReplace];
        [v9 modifyError];
        [v9 modifyFlags];
        [v9 flagMask];
        [v9 flagMask];
        AttachmentIfNeededRef = IMDUpdateIMMessageItemWithIMMessageItemForceReplaceReplaceError();
        if (v10)
        {
          v10[2](v10, v17, AttachmentIfNeededRef);
        }
      }

      else
      {
        AttachmentIfNeededRef = 0;
      }
    }

    else
    {
      v24 = IMDCreateIMDMessageRecordRefFromIMMessageItem();
      if (!v24)
      {
        v25 = IMLogHandleForCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D5BF8();
        }
      }

      [(IMDMessageStore *)self _storeAttachmentsForMessage:v8];
      if ([v8 isFromMe])
      {
        [v8 handle];
      }

      else
      {
        [v8 sender];
      }
      v31 = ;
      AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v24, v31);

      if (!AttachmentIfNeededRef)
      {
        v32 = IMLogHandleForCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D5C60();
        }
      }

      if (v24)
      {
        CFRelease(v24);
      }

      v62 = 0;
    }

    v63 = IMDSMSRecordIsFull();
    v33 = [AttachmentIfNeededRef retractedPartIndexes];
    v34 = [v33 count];

    v35 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v36 = [v35 isInboxSummaryEnabled];

    if (v36 && v34)
    {
      v37 = [AttachmentIfNeededRef guid];
      v38 = [(IMDMessageStore *)self chatForMessageGUID:v37];

      if (v38)
      {
        v73 = *MEMORY[0x277D197B8];
        v39 = [MEMORY[0x277CBEB68] null];
        v74 = v39;
        v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
        [v38 updateProperties:v40 shouldBroadcast:1];
      }
    }

    v41 = v65;
    if ([v9 reindexMessage])
    {
      v61 = IsFull;
      v42 = [AttachmentIfNeededRef guid];
      if ([v42 length])
      {
        v43 = [AttachmentIfNeededRef isFullyRetracted];
        v44 = [v9 reindexReason];
        if ([v9 isCloudImport])
        {
          v45 = 1001;
        }

        else if ([v9 isIncomingMessage])
        {
          v45 = 1000;
        }

        else
        {
          v45 = v44;
        }

        v46 = [MEMORY[0x277D18EC0] queryProvider];
        if (v43)
        {
          v72 = v42;
          v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v72 count:1];
          v48 = [MEMORY[0x277D18EB8] contextWithReason:v45];
          v68[0] = MEMORY[0x277D85DD0];
          v68[1] = 3221225472;
          v68[2] = sub_22B5DD724;
          v68[3] = &unk_278703C58;
          v49 = &v69;
          v69 = v42;
          [v46 deleteMessageGUIDs:v47 context:v48 completionHandler:v68];
        }

        else
        {
          v71 = v42;
          v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v71 count:1];
          v48 = [MEMORY[0x277D18EB8] contextWithReason:v45];
          v66[0] = MEMORY[0x277D85DD0];
          v66[1] = 3221225472;
          v66[2] = sub_22B5DD818;
          v66[3] = &unk_278703C58;
          v49 = &v67;
          v67 = v42;
          [v46 addMessageGUIDs:v47 context:v48 completionHandler:v66];
        }

        v41 = v65;
      }

      IsFull = v61;
    }

    objc_autoreleasePoolPop(context);
    v70[0] = 0;
    v70[1] = 0;
    v50 = [AttachmentIfNeededRef guid];
    IMUUIDForUUIDString();

    v51 = IMDatabaseLogHandle();
    v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
    if (v62)
    {
      if (v52)
      {
        *buf = 68157954;
        *v76 = 16;
        *&v76[4] = 2096;
        *&v76[6] = v70;
        v53 = "Replaced message: %{uuid_t}.16P";
LABEL_63:
        _os_log_impl(&dword_22B4CC000, v51, OS_LOG_TYPE_DEFAULT, v53, buf, 0x12u);
      }
    }

    else if (v52)
    {
      *buf = 68157954;
      *v76 = 16;
      *&v76[4] = 2096;
      *&v76[6] = v70;
      v53 = "Stored message: %{uuid_t}.16P";
      goto LABEL_63;
    }

    if ([v9 updateMessageCache])
    {
      v54 = [AttachmentIfNeededRef guid];
      +[IMDMessageStore _updateCacheForMessageGUID:fromMessage:toMessage:updateLastMessage:calculateUnreadCount:](IMDMessageStore, "_updateCacheForMessageGUID:fromMessage:toMessage:updateLastMessage:calculateUnreadCount:", v54, v8, AttachmentIfNeededRef, 1, [v9 calculateUnreadCount]);
    }

    [(IMDMessageStore *)self _storeAttachmentsForMessage:AttachmentIfNeededRef];
    v55 = [v9 chat];

    if (v55)
    {
      v56 = [v9 chat];
      v57 = [v56 guid];
      [(IMDMessageStore *)self updateStampForGUID:v57];
    }

    else
    {
      [(IMDMessageStore *)self updateStamp];
    }

    sub_22B5DC120(IsFull != 0, v63 != 0);
    v58 = [v8 notificationIDSTokenURI];
    [AttachmentIfNeededRef setNotificationIDSTokenURI:v58];

    goto LABEL_70;
  }

  v19 = v8;
  v20 = +[IMDServiceController sharedController];
  v21 = [v19 service];
  v22 = [v20 serviceWithName:v21];

  if (v22 && ([v22 supportsDatabase] & 1) == 0)
  {
    v26 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v76 = v22;
      _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_DEFAULT, " => Not storing message, service: %@  does not support a database", buf, 0xCu);
    }

    goto LABEL_24;
  }

  if (([v19 isTypingMessage] & 1) != 0 || objc_msgSend(v19, "isSuggestedActionResponse"))
  {
LABEL_24:

    goto LABEL_25;
  }

  v23 = [v19 isRCSEncryptionTest];

  if (!v23)
  {
    goto LABEL_3;
  }

LABEL_25:
  v27 = [v19 isTypingMessage];
  v28 = IMDatabaseLogHandle();
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
  if (v27)
  {
    if (v29)
    {
      v30 = [v19 guid];
      *buf = 138412546;
      *v76 = v30;
      *&v76[8] = 2112;
      *&v76[10] = v19;
      _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_DEFAULT, "Message %@ is a typing message, not storing %@", buf, 0x16u);
    }
  }

  else if (v29)
  {
    *buf = 138412290;
    *v76 = v19;
    _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_DEFAULT, "Not storing: %@", buf, 0xCu);
  }

  AttachmentIfNeededRef = v19;
LABEL_70:

  v59 = *MEMORY[0x277D85DE8];

  return AttachmentIfNeededRef;
}

- (void)updateUnformattedID:(id)a3 forBuddyID:(id)a4 onService:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 length] && objc_msgSend(v8, "length") && objc_msgSend(v9, "length") && (objc_msgSend(v7, "isEqualToIgnoringCase:", v8) & 1) == 0)
  {
    v10 = IMDHandleRecordCopyHandleForIDOnService();
    if (v10)
    {
      v11 = IMDHandleRecordCopyCountry();
      IMDHandleRecordBulkUpdate();
      v12 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412802;
        v15 = v8;
        v16 = 2112;
        v17 = v7;
        v18 = 2112;
        v19 = v9;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEFAULT, "Updated from %@->%@  on service: %@", &v14, 0x20u);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_itemsForMessageRecords:(id)a3 handleID:(id)a4 useAttachmentCache:(BOOL)a5 shouldLoadAttachments:(BOOL)a6 reverseOrder:(BOOL)a7
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if (v9)
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v23 = v9;
    if (a7)
    {
      v12 = [v9 reverseObjectEnumerator];
    }

    else
    {
      v12 = v9;
    }

    v13 = v12;
    v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v24 + 1) + 8 * i);
          v19 = objc_autoreleasePoolPush();
          AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v18, v10);
          if (AttachmentIfNeededRef)
          {
            [v11 addObject:AttachmentIfNeededRef];
          }

          objc_autoreleasePoolPop(v19);
        }

        v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v15);
    }

    v9 = v23;
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_messageItemsForMessageRecords:(id)a3 handleID:(id)a4 useAttachmentCache:(BOOL)a5 shouldLoadAttachments:(BOOL)a6 reverseOrder:(BOOL)a7
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if (v9)
  {
    v23 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    if (a7)
    {
      v11 = [v9 reverseObjectEnumerator];
    }

    else
    {
      v11 = v9;
    }

    v12 = v11;
    v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:{16, v9}];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v24 + 1) + 8 * i);
          v18 = objc_autoreleasePoolPush();
          AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v17, v10);
          if (AttachmentIfNeededRef)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v23 addObject:AttachmentIfNeededRef];
            }
          }

          objc_autoreleasePoolPop(v18);
        }

        v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v14);
    }

    v9 = v22;
  }

  else
  {
    v23 = MEMORY[0x277CBEBF8];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v23;
}

- (BOOL)_hasMessagesWithGUIDs:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = IMDMessageRecordCopyMessagesForGUIDs();
  v6 = [v5 count] != 0;

  objc_autoreleasePoolPop(v4);
  return v6;
}

- (id)_itemsWithAssociatedGUID:(id)a3 shouldLoadAttachments:(BOOL)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  context = objc_autoreleasePoolPush();
  v23 = v4;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = IMDMessageRecordCopyMessagesForAssociatedGUID();
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v6)
  {
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v9, 0);
        if (AttachmentIfNeededRef)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = AttachmentIfNeededRef;
            v12 = [v11 associatedMessageGUID];
            v13 = [v12 isEqualToString:v23];

            if (v13)
            {
              [v22 addObject:v11];
            }

            else
            {
              if (IMOSLoggingEnabled())
              {
                v15 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "************* Please file a radar!!!!!!!!!!! *******************************", buf, 2u);
                }
              }

              if (IMOSLoggingEnabled())
              {
                v16 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
                {
                  v17 = [v11 associatedMessageGUID];
                  v18 = [v9 associatedMessageGUID];
                  *buf = 138412546;
                  v29 = v17;
                  v30 = 2112;
                  v31 = v18;
                  _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "A message returned by IMDMessageRecordCopyMessagesForAssociatedGUID is associated to %@ instead of the requested GUID %@.", buf, 0x16u);
                }
              }
            }
          }

          else if (IMOSLoggingEnabled())
          {
            v14 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v29 = AttachmentIfNeededRef;
              _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "IMDMessageRecordCopyMessagesForAssociatedGUID resulted in a non-associated message item: %@", buf, 0xCu);
            }
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v6);
  }

  objc_autoreleasePoolPop(context);
  v19 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)_itemsWithGUIDs:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  context = objc_autoreleasePoolPush();
  v4 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v3];
  v23 = v3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = IMDMessageRecordCopyMessagesForGUIDs();
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v6)
  {
    v7 = *v26;
    do
    {
      v8 = 0;
      do
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v25 + 1) + 8 * v8);
        AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v9, 0);
        v11 = AttachmentIfNeededRef;
        if (AttachmentIfNeededRef)
        {
          v12 = [AttachmentIfNeededRef guid];
          if ([v4 containsObject:v12])
          {

LABEL_10:
            [v24 addObject:v11];
            goto LABEL_11;
          }

          v13 = [v11 service];
          v14 = [v13 isEqualToIgnoringCase:*MEMORY[0x277D1A610]];

          if (v14)
          {
            goto LABEL_10;
          }

          if (IMOSLoggingEnabled())
          {
            v15 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "************* Please file a radar!!!!!!!!!!! *******************************", buf, 2u);
            }
          }

          if (IMOSLoggingEnabled())
          {
            v16 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              v17 = [v11 guid];
              v18 = [v9 guid];
              *buf = 138412802;
              v30 = v17;
              v31 = 2112;
              v32 = v18;
              v33 = 2112;
              v34 = v23;
              _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "GUID we got from IMDMessageRecordCopyMessagesForGUIDs wasn't one of the guids we requested. IMItem we got back was: %@, IMDMessageRecordRef guid we got was: %@, requested guids was: %@", buf, 0x20u);
            }
          }
        }

LABEL_11:

        ++v8;
      }

      while (v6 != v8);
      v19 = [v5 countByEnumeratingWithState:&v25 objects:v35 count:16];
      v6 = v19;
    }

    while (v19);
  }

  objc_autoreleasePoolPop(context);
  v20 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)_itemsWithHandles:(id)a3 onServices:(id)a4 messageGUID:(id)a5 threadIdentifier:(id)a6 limit:(unint64_t)a7 onlyMessages:(BOOL)a8
{
  v8 = a8;
  v42 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = objc_autoreleasePoolPush();
  v19 = objc_alloc_init(MEMORY[0x277D192C0]);
  [v19 startTimingForKey:@"history query"];
  v20 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 138413570;
    v31 = v16;
    v32 = 2112;
    v33 = v14;
    v34 = 2112;
    v35 = v15;
    v36 = 2048;
    v37 = a7;
    v38 = 2112;
    v39 = v17;
    v40 = 1024;
    v41 = v8;
    _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_DEFAULT, "Requesting history with guid: %@ handles: %@ services: %@ limit: %llu thread identifier: %@ only messages: %{BOOL}d", &v30, 0x3Au);
  }

  v21 = IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesUpToGUIDOrLimitWithOptionalThreadIdentifier();
  [v19 stopTimingForKey:@"history query"];
  [v19 startTimingForKey:@"generate chat items"];
  v22 = [v14 count];
  if (v22 == 1)
  {
    v23 = [v14 firstObject];
  }

  else
  {
    v23 = 0;
  }

  v24 = [(IMDMessageStore *)self _itemsForMessageRecords:v21 handleID:v23 useAttachmentCache:1 shouldLoadAttachments:1 reverseOrder:1];
  if (v22 == 1)
  {
  }

  [v19 stopTimingForKey:@"generate chat items"];
  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v30 = 138412290;
      v31 = v19;
      _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "history query timing: %@", &v30, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v18);
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = MEMORY[0x277CBEBF8];
  }

  v27 = v26;

  v28 = *MEMORY[0x277D85DE8];
  return v26;
}

- (id)_itemsWithRoomNames:(id)a3 onServices:(id)a4 messageGUID:(id)a5 threadIdentifier:(id)a6 limit:(unint64_t)a7 onlyMessages:(BOOL)a8
{
  v8 = a7;
  v33 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = objc_autoreleasePoolPush();
  v18 = IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesUpToGUIDOrLimitWithOptionalThreadIdentifier();
  v19 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138413058;
    v26 = v13;
    v27 = 2112;
    v28 = v14;
    v29 = 1024;
    v30 = v8;
    v31 = 2112;
    v32 = v18;
    _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_DEFAULT, "_messagesWithRoomNames: %@ onServices %@ limit %d recordStoreRecords: %@", &v25, 0x26u);
  }

  v20 = [(IMDMessageStore *)self _itemsForMessageRecords:v18 handleID:0 useAttachmentCache:1 shouldLoadAttachments:1 reverseOrder:1];

  objc_autoreleasePoolPop(v17);
  if (v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = MEMORY[0x277CBEBF8];
  }

  v22 = v21;

  v23 = *MEMORY[0x277D85DE8];
  return v21;
}

- (id)_itemsWithHandlesBeforeAndAfterGUID:(id)a3 handles:(id)a4 onServices:(id)a5 numberOfMessagesBefore:(unint64_t)a6 numberOfMessagesAfter:(unint64_t)a7 threadIdentifier:(id)a8 hasMessagesBefore:(BOOL *)a9 hasMessagesAfter:(BOOL *)a10
{
  v43 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a8;
  context = objc_autoreleasePoolPush();
  v20 = objc_alloc_init(MEMORY[0x277D192C0]);
  [v20 startTimingForKey:@"paged history query"];
  v21 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413570;
    v33 = v16;
    v34 = 2112;
    v35 = v17;
    v36 = 2112;
    v37 = v18;
    v38 = 2048;
    *v39 = a6;
    *&v39[8] = 2048;
    v40 = a7;
    v41 = 2112;
    v42 = v19;
    _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_DEFAULT, "Requesting history with guid: %@ handles: %@ services: %@ number before: %llu number after: %llu thread identifier: %@", buf, 0x3Eu);
  }

  v22 = IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesBeforeAndAfterGUIDWithOptionalThreadIdentifier();
  [v20 stopTimingForKey:@"paged history query"];
  v23 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v22 count];
    *buf = 138413570;
    v33 = v17;
    v34 = 2112;
    v35 = v18;
    v36 = 2112;
    v37 = v16;
    v38 = 1024;
    *v39 = a6;
    *&v39[4] = 1024;
    *&v39[6] = a7;
    LOWORD(v40) = 1024;
    *(&v40 + 2) = v24;
    _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_DEFAULT, "_limitedNumberOfMessagesWithHandles: %@ services: %@ messageGUID: %@ numberOfMessagesBefore: %d, numberOfMessagesAfter: %d record count: %d", buf, 0x32u);
  }

  [v20 startTimingForKey:@"generate chat items"];
  v25 = [(IMDMessageStore *)self _itemsForMessageRecords:v22 handleID:0 useAttachmentCache:1 shouldLoadAttachments:1 reverseOrder:1];
  [v20 stopTimingForKey:@"generate chat items"];
  if (IMOSLoggingEnabled())
  {
    v26 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v33 = v20;
      _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "paged history query timing: %@", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(context);
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = MEMORY[0x277CBEBF8];
  }

  v28 = v27;

  v29 = *MEMORY[0x277D85DE8];
  return v27;
}

- (id)_unreadMessagesWithHandles:(id)a3 onServices:(id)a4 limit:(unint64_t)a5 fallbackGUID:(id)a6
{
  v7 = a5;
  v31 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  v14 = IMDMessageRecordCopyUnreadIncomingMessagesWithChatIdentifiersOnServicesToLimitFallbackGUID();
  v15 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138413058;
    v24 = v10;
    v25 = 2112;
    v26 = v11;
    v27 = 1024;
    v28 = v7;
    v29 = 2112;
    v30 = v14;
    _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_DEFAULT, "_unreadMessagesWithHandles: %@ onServices %@ limit %d recordStoreRecords: %@", &v23, 0x26u);
  }

  v16 = [v10 count];
  if (v16 == 1)
  {
    v17 = [v10 firstObject];
  }

  else
  {
    v17 = 0;
  }

  v18 = [(IMDMessageStore *)self _messageItemsForMessageRecords:v14 handleID:v17 useAttachmentCache:1 shouldLoadAttachments:1 reverseOrder:1];
  if (v16 == 1)
  {
  }

  objc_autoreleasePoolPop(v13);
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = MEMORY[0x277CBEBF8];
  }

  v20 = v19;

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)_unreadMessagesWithRoomNames:(id)a3 onServices:(id)a4 limit:(unint64_t)a5 fallbackGUID:(id)a6
{
  v7 = a5;
  v31 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = objc_autoreleasePoolPush();
  v14 = IMDMessageRecordCopyUnreadIncomingMessagesWithChatIdentifiersOnServicesToLimitFallbackGUID();
  v15 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138413314;
    v22 = v10;
    v23 = 2112;
    v24 = v11;
    v25 = 1024;
    v26 = v7;
    v27 = 2112;
    v28 = v12;
    v29 = 2112;
    v30 = v14;
    _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_DEFAULT, "_unreadMessagesWithRoomNames: %@ onServices %@ limit %d fallbackGUID %@ recordStoreRecords: %@", &v21, 0x30u);
  }

  v16 = [(IMDMessageStore *)self _messageItemsForMessageRecords:v14 handleID:0 useAttachmentCache:1 shouldLoadAttachments:1 reverseOrder:1];

  objc_autoreleasePoolPop(v13);
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = MEMORY[0x277CBEBF8];
  }

  v18 = v17;

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)registerTransfersForMessage:(id)a3
{
  v11 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v11;
    v5 = [v4 fileTransferGUIDs];
    v6 = [v4 guid];
    [(IMDMessageStore *)self _registerTransfersWithGUIDs:v5 forMessageGUID:v6];

    v7 = [v4 threadOriginator];

    if (v7)
    {
      v8 = [v4 threadOriginator];
      v9 = [v8 fileTransferGUIDs];
      v10 = [v8 guid];
      [(IMDMessageStore *)self _registerTransfersWithGUIDs:v9 forMessageGUID:v10];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)_registerTransfersWithGUIDs:(id)a3 forMessageGUID:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v28 = [v6 count];
  if (v28)
  {
    v8 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v36 = [v6 count];
      v37 = 2112;
      v38 = v6;
      v39 = 2112;
      v40 = v7;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "Ensure transfers(count=%lu) with GUIDs registered: %@ for message: %@", buf, 0x20u);
    }

    v27 = v7;

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v26 = v6;
    obj = v6;
    v9 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v31;
      v13 = *MEMORY[0x277D18F28];
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v30 + 1) + 8 * i);
          v16 = [(IMDMessageStore *)self _fileTransferCenter];
          v17 = [v16 transferForGUID:v15];

          v18 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218498;
            v36 = v11 + 1;
            v37 = 2048;
            v38 = v28;
            v39 = 2112;
            v40 = v17;
            _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_DEFAULT, "Existing transfer: %lu/%lu %@", buf, 0x20u);
          }

          if (v17)
          {
            v19 = [(IMDMessageStore *)self _fileTransferCenter];
            [v19 addTransfer:v17 forGUID:v15];
          }

          else
          {
            v20 = +[IMDAttachmentStore sharedInstance];
            v19 = [v20 attachmentWithGUID:v15];

            v21 = IMDatabaseLogHandle();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v36 = v19;
              _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_DEFAULT, "Found saved transfer from DB: %@", buf, 0xCu);
            }

            if (v19)
            {
              if (v27)
              {
                [v19 setMessageGUID:?];
              }

              v22 = IMDatabaseLogHandle();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v36 = v19;
                _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_DEFAULT, "New transfer: %@", buf, 0xCu);
              }

              v23 = [(IMDMessageStore *)self _fileTransferCenter];
              [v23 addTransfer:v19 forGUID:v15];
            }
          }

          if (++v11 >= v13)
          {
            v24 = IMDatabaseLogHandle();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218240;
              v36 = v28 - v13;
              v37 = 2048;
              v38 = v28;
              _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_DEFAULT, "Not registering %lu/%lu transfers, too many for one message", buf, 0x16u);
            }

            goto LABEL_28;
          }
        }

        v10 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_28:

    v6 = v26;
    v7 = v27;
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)messagesWithGUIDs:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    context = objc_autoreleasePoolPush();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [(IMDMessageStore *)self _itemsWithGUIDs:v4];
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          if (![v11 type])
          {
            if (!v8)
            {
              v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
            }

            [v8 addObject:v11];
            v12 = +[IMDMessageStore sharedInstance];
            [v12 registerTransfersForMessage:v11];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    objc_autoreleasePoolPop(context);
    v13 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v22 = v8;
      v23 = 2112;
      v24 = v4;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEFAULT, "Found messages with guids: %@  (%@)", buf, 0x16u);
    }
  }

  else
  {
    v8 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)sortedMessageItemsWithFallbackHash:(id)a3 inChat:(id)a4 limit:(unint64_t)a5
{
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = objc_autoreleasePoolPush();
    v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D19F88] ascending:0];
    v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", *MEMORY[0x277D19F90], v6];
    v12 = [MEMORY[0x277D18EB0] synchronousDatabase];
    v13 = [v7 guid];
    v21[0] = v10;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_22B5E0468;
    v19[3] = &unk_2787042B8;
    v15 = v8;
    v20 = v15;
    [v12 fetchMessageRecordsForChatRecordWithGUID:v13 filteredUsingPredicate:v11 sortedUsingDescriptors:v14 limit:1 completionHandler:v19];

    objc_autoreleasePoolPop(v9);
    v16 = [v15 copy];
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (BOOL)canStoreItem:(id)a3 onService:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = +[IMDServiceController sharedController];
    v6 = [v4 service];
    v7 = [v5 serviceWithName:v6];

    if (v7 && ([v7 supportsDatabase] & 1) == 0)
    {
      v9 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = v7;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEFAULT, " => Not storing item, service: %@  does not support a database", &v12, 0xCu);
      }

      v8 = 0;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)canStoreMessage:(id)a3 onService:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v7 = +[IMDServiceController sharedController];
    v8 = [v6 service];
    v9 = [v7 serviceWithName:v8];

    if (v9 && ([v9 supportsDatabase] & 1) == 0)
    {
      v11 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412290;
        v15 = v9;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, " => Not storing message, service: %@  does not support a database", &v14, 0xCu);
      }
    }

    else if (([v6 isTypingMessage] & 1) == 0 && (objc_msgSend(v6, "isSuggestedActionResponse") & 1) == 0)
    {
      v10 = [v6 isRCSEncryptionTest] ^ 1;
LABEL_12:

      goto LABEL_13;
    }

    LOBYTE(v10) = 0;
    goto LABEL_12;
  }

  LOBYTE(v10) = 0;
LABEL_13:

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)hasStoredMessageWithGUID:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = IMSingleObjectArray();
    v6 = [(IMDMessageStore *)self _hasMessagesWithGUIDs:v5];

    v7 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = v4;
      v12 = 1024;
      v13 = v6;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Have stored message for guid (%@): %{BOOL}d", &v10, 0x12u);
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)itemWithGUID:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v16[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    v7 = [(IMDMessageStore *)self _itemsWithGUIDs:v6];
    v8 = [v7 firstObject];

    v9 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v5;
      v14 = 2048;
      v15 = v8;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEFAULT, "Fetched item from database for guid (%@): %p", &v12, 0x16u);
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)messageWithGUID:(id)a3 registerAttachments:(BOOL)a4
{
  v4 = a4;
  v206 = *MEMORY[0x277D85DE8];
  v85 = a3;
  v6 = [(IMDMessageStore *)self itemWithGUID:?];
  if ([v6 type])
  {

    v6 = 0;
  }

  else if (v4)
  {
    [(IMDMessageStore *)self registerTransfersForMessage:v6];
  }

  v7 = v6;
  v8 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 isFromMe];
    v84 = [v7 sender];
    v83 = [v7 service];
    v10 = [v7 encrypted];
    v82 = [v7 handle];
    v81 = [v7 destinationCallerID];
    v80 = [v7 unformattedID];
    v79 = [v7 countryCode];
    v78 = [v7 roomName];
    v69 = [v7 flags];
    v66 = [v7 messageID];
    v64 = [v7 sortID];
    v73 = [v7 time];
    [v73 timeIntervalSinceReferenceDate];
    v12 = v11;
    v72 = [v7 timeDelivered];
    [v72 timeIntervalSinceReferenceDate];
    v14 = v13;
    v71 = [v7 timeRead];
    [v71 timeIntervalSinceReferenceDate];
    v16 = v15;
    v70 = [v7 timePlayed];
    [v70 timeIntervalSinceReferenceDate];
    v18 = v17;
    v77 = [v7 fileTransferGUIDs];
    v61 = [v7 isEmpty];
    v60 = [v7 isFinished];
    v68 = [v7 isSent];
    v19 = [v7 isRead];
    v20 = [v7 isDelivered];
    v21 = [v7 scheduleType];
    v22 = [v7 scheduleState];
    v23 = [v7 isAudioMessage];
    v67 = [v7 isPlayed];
    v65 = [v7 isFromMe];
    v63 = [v7 hasDataDetectorResults];
    v62 = [v7 wasDataDetected];
    v59 = [v7 wasDowngraded];
    v58 = [v7 isEmote];
    v57 = [v7 isExpirable];
    v56 = [v7 expireState];
    v76 = [v7 balloonBundleID];
    v75 = [v7 expressiveSendStyleID];
    v74 = [v7 timeExpressiveSendPlayed];
    v54 = [v7 bizIntent];
    v53 = [v7 locale];
    v51 = [v7 biaReferenceID];
    v50 = [v7 errorCode];
    v49 = [v7 cloudKitSyncState];
    v48 = [v7 isCorrupt];
    v47 = [v7 shouldSendMeCard];
    v45 = [v7 isSpam];
    v44 = [v7 hasUnseenMention];
    v43 = [v7 threadIdentifier];
    v42 = [v7 threadOriginator];
    v41 = [v7 replyCountsByPart];
    v39 = [v7 isStewie];
    v38 = [v7 stewieConversationID];
    v55 = [v7 syndicationRanges];
    v36 = [v55 componentsJoinedByString:{@", "}];
    v52 = [v7 syncedSyndicationRanges];
    v35 = [v52 componentsJoinedByString:{@", "}];
    v46 = [v7 dateEdited];
    [v46 timeIntervalSinceReferenceDate];
    v25 = v24;
    v40 = [v7 dateRecovered];
    [v40 timeIntervalSinceReferenceDate];
    v27 = v26;
    v37 = [v7 groupActivity];
    v33 = [v7 wasDetonated];
    v32 = [v7 isSOS];
    v31 = [v7 isCritical];
    v34 = [v7 fallbackHash];
    v28 = [v34 length];
    v89 = v9;
    v95 = v10;
    v107 = v69;
    v109 = v66;
    v111 = v64;
    *buf = 138427394;
    v87 = v85;
    v123 = v61;
    v88 = 1024;
    v125 = v60;
    v90 = 2112;
    v91 = v84;
    v92 = 2112;
    v93 = v83;
    v94 = 1024;
    v96 = 2112;
    v97 = v82;
    v98 = 2112;
    v99 = v81;
    v100 = 2112;
    v101 = v80;
    v102 = 2112;
    v103 = v79;
    v104 = 2112;
    v105 = v78;
    v127 = v68;
    v106 = 2048;
    v108 = 2048;
    v110 = 2048;
    v112 = 2048;
    v113 = v12;
    v114 = 2048;
    v115 = v14;
    v116 = 2048;
    v117 = v16;
    v118 = 2048;
    v119 = v18;
    v120 = 2112;
    v121 = v77;
    v122 = 1024;
    v124 = 1024;
    v126 = 1024;
    v128 = 1024;
    v129 = v19;
    v130 = 1024;
    v131 = v20;
    v132 = 2048;
    v133 = v21;
    v134 = 2048;
    v135 = v22;
    v136 = 1024;
    v137 = v23;
    v138 = 1024;
    v139 = v67;
    v140 = 1024;
    v141 = v65;
    v142 = 1024;
    v143 = v63;
    v144 = 1024;
    v145 = v62;
    v146 = 1024;
    v147 = v59;
    v148 = 1024;
    v149 = v58;
    v150 = 1024;
    v151 = v57;
    v152 = 1024;
    v153 = v56;
    v154 = 2112;
    v155 = v76;
    v156 = 2112;
    v157 = v75;
    v158 = 2112;
    v159 = v74;
    v160 = 2112;
    v161 = v54;
    v162 = 2112;
    v163 = v53;
    v164 = 2112;
    v165 = v51;
    v166 = 1024;
    v167 = v50;
    v168 = 2048;
    v169 = v49;
    v170 = 1024;
    v171 = v48;
    v172 = 1024;
    v173 = v47;
    v174 = 1024;
    v175 = v45;
    v176 = 1024;
    v177 = v44;
    v178 = 2112;
    v179 = v43;
    v180 = 2112;
    v181 = v42;
    v182 = 2112;
    v183 = v41;
    v184 = 1024;
    v185 = v39;
    v186 = 2048;
    v187 = v38;
    v188 = 2112;
    v189 = v36;
    v190 = 2112;
    v191 = v35;
    v192 = 2048;
    v193 = v25;
    v194 = 2048;
    v195 = v27;
    v196 = 1024;
    v197 = v37 != 0;
    v198 = 1024;
    v199 = v33;
    v200 = 1024;
    v201 = v32;
    v202 = 1024;
    v203 = v31;
    v204 = 2048;
    v205 = v28;
    _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "Stored message for guid (%@): IMMessageItem[outgoing: %{BOOL}d sender=%@; service=%@; encrypted=%{BOOL}d; handle=%@; destinationCallerID= %@, unformatted=%@; country=%@; roomName='%@'; flags=0x%llx; messageID: %lld sortID: %lu date:'%f' date-delivered:'%f' date-read:'%f' date-played:'%f' transfer guids: '%@' empty: %{BOOL}d finished: %{BOOL}d sent: %{BOOL}d read: %{BOOL}d delivered: %{BOOL}d scheduleType: %lu, scheduleState: %lu, audio: %{BOOL}d played: %{BOOL}d from-me: %{BOOL}d DD results: %{BOOL}d DD Scanned: %{BOOL}d Downgraded: %{BOOL}d emote: %{BOOL}d expirable: %{BOOL}d expire-state: %d balloon-bundle-id: %@ expressive-send-style-id: %@ time-expressive-send-played: %@ bizIntent: %@ locale: %@ biaReferenceID: %@ error: %d sync-state %lli corrupt: %{BOOL}d shouldSendMeCard: %{BOOL}d isSpam: %{BOOL}d hasUnseenMention: %{BOOL}d threadIdentifier: %@, threadOriginator: %@, replyCountsByPart: %@, isChoros: %{BOOL}d, chorosConversationID: %ld, syndicationRanges: %@, syncedSyndicationRanges: %@, dateEdited: '%f', dateRecovered: '%f', hasGroupActivity: %{BOOL}d, wasDetonated: %{BOOL}d, isSOS: %{BOOL}d, isCritical %{BOOL}d, fallbackHash (len): %llu]", buf, 0x1F2u);
  }

  v29 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)messageForAttachmentGUID:(id)a3
{
  v3 = IMDAttachmentRecordCopyMessageForAttachmentGUID();
  AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v3, 0);
  objc_opt_class();
  v5 = 0;
  if (objc_opt_isKindOfClass())
  {
    v5 = AttachmentIfNeededRef;
  }

  return v5;
}

- (id)existingMessageSimilarToMessage:(id)a3 skipServices:(id)a4 skipGUIDs:(id)a5 withinTimeInterval:(double)a6 participants:(id)a7
{
  v83 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (v11)
  {
    v15 = [v12 __imArrayByApplyingBlock:&unk_283F1A208];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v16 = [v11 body];
    v17 = [v16 string];
    v18 = [v17 __stringByStrippingAttachmentAndControlCharacters];

    v19 = [v11 sender];
    v57 = v19;
    if ([v14 count] < 2)
    {
      v47 = IMDMessageRecordCopyMessageMatchingBodyStringWithHandleSkippingServicesSkippingGUIDs();
    }

    else
    {
      v53 = v15;
      v55 = v13;
      v56 = v11;
      v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v14, "count")}];
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v21 = v14;
      v22 = [v21 countByEnumeratingWithState:&v66 objects:v82 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v67;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v67 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = [*(*(&v66 + 1) + 8 * i) ID];
            if ([v26 length])
            {
              [v20 addObject:v26];
            }
          }

          v23 = [v21 countByEnumeratingWithState:&v66 objects:v82 count:16];
        }

        while (v23);
      }

      v52 = v18;
      v54 = v14;

      v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v28 = +[IMDServiceController sharedController];
      v29 = [v28 allServices];

      v30 = [v29 countByEnumeratingWithState:&v62 objects:v81 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v63;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v63 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v62 + 1) + 8 * j);
            if (([v12 containsObject:{v34, v52}] & 1) == 0)
            {
              v35 = +[IMDChatRegistry sharedInstance];
              v36 = [v35 existingChatsForIDs:v20 onService:v34 style:43];
              [v27 addObjectsFromArray:v36];
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v62 objects:v81 count:16];
        }

        while (v31);
      }

      v37 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v27, "count")}];
      v38 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v27, "count")}];
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v39 = v27;
      v40 = [v39 countByEnumeratingWithState:&v58 objects:v80 count:16];
      if (v40)
      {
        v41 = v40;
        v42 = *v59;
        do
        {
          for (k = 0; k != v41; ++k)
          {
            if (*v59 != v42)
            {
              objc_enumerationMutation(v39);
            }

            v44 = *(*(&v58 + 1) + 8 * k);
            v45 = [v44 serviceName];
            [v37 addObject:v45];

            v46 = [v44 chatIdentifier];
            [v38 addObject:v46];
          }

          v41 = [v39 countByEnumeratingWithState:&v58 objects:v80 count:16];
        }

        while (v41);
      }

      v13 = v55;
      v47 = IMDMessageRecordCopyMessageMatchingBodyStringWithChatIdentifiersServicesSkippingGUIDs();

      v18 = v52;
      v15 = v53;

      v19 = v57;
      v11 = v56;
      v14 = v54;
    }

    if (v47 && (AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v47, v19), CFRelease(v47), AttachmentIfNeededRef))
    {
      v49 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413314;
        v71 = AttachmentIfNeededRef;
        v72 = 2112;
        v73 = v11;
        v74 = 2112;
        v75 = v12;
        v76 = 2112;
        v77 = *&v13;
        v78 = 2048;
        v79 = a6;
        _os_log_impl(&dword_22B4CC000, v49, OS_LOG_TYPE_DEFAULT, "Found existing message: %@ similar to: %@   (Skip Services: %@   Skip GUIDs: %@   Within Time Interval: %f)", buf, 0x34u);
      }
    }

    else
    {
      v49 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v71 = v11;
        v72 = 2112;
        v73 = v12;
        v74 = 2112;
        v75 = v13;
        v76 = 2048;
        v77 = a6;
        _os_log_impl(&dword_22B4CC000, v49, OS_LOG_TYPE_DEFAULT, "No existing message similar to: %@   (Skip Services: %@   Skip GUIDs: %@   Within Time Interval: %f)", buf, 0x2Au);
      }

      AttachmentIfNeededRef = 0;
    }
  }

  else
  {
    AttachmentIfNeededRef = 0;
  }

  v50 = *MEMORY[0x277D85DE8];

  return AttachmentIfNeededRef;
}

- (id)existingSOSMessageSimilarToMessage:(id)a3 matchingService:(id)a4 withinTimeInterval:(double)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v9 = [v7 body];
    v10 = [v9 string];
    v11 = [v10 __stringByStrippingAttachmentAndControlCharacters];

    v12 = [v7 sender];
    v13 = [v7 isSOS] ^ 1;
    v14 = [v7 guid];
    v15 = IMDMessageRecordCopyMessageMatchingBodyStringWithHandleMatchingServiceMatchingSOSSkippingGUID();
    if (v15 && (v16 = v15, AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v15, v12), CFRelease(v16), AttachmentIfNeededRef))
    {
      v18 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138413314;
        v22 = v8;
        v23 = 1024;
        v24 = v13;
        v25 = 2048;
        v26 = a5;
        v27 = 2112;
        v28 = AttachmentIfNeededRef;
        v29 = 2112;
        v30 = v7;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_DEFAULT, "Found existing SOS message (Matching service: %@  Matching isSOS: %d  Within Time Interval: %f) - found message: %@ similar to: %@", &v21, 0x30u);
      }
    }

    else
    {
      v18 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138413058;
        v22 = v8;
        v23 = 1024;
        v24 = v13;
        v25 = 2048;
        v26 = a5;
        v27 = 2112;
        v28 = v7;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_DEFAULT, "No existing SOS message (Matching service: %@  Matching isSOS: %d  Within Time Interval: %f) - similar to: %@", &v21, 0x26u);
      }

      AttachmentIfNeededRef = 0;
    }
  }

  else
  {
    AttachmentIfNeededRef = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return AttachmentIfNeededRef;
}

- (void)markMessageAsDeduplicated:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v5 = v3;
    v4 = [v3 guid];

    v3 = v5;
    if (v4)
    {
      [v5 guid];
      IMDMessageRecordMarkMessageGUIDAsDeduplicated();
      v3 = v5;
    }
  }
}

- (BOOL)wasMessageDeduplicatedWithGUID:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 length])
  {
    v4 = IMDMessageRecordCopyMessageForGUID();
    v5 = [v4 wasDeduplicated];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v9 = 136315138;
        v10 = "[IMDMessageStore wasMessageDeduplicatedWithGUID:]";
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "%s received zero-length message GUID", &v9, 0xCu);
      }
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)messageWithReplaceMessageID:(int)a3 fromHandle:(id)a4 onService:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a4;
  AttachmentIfNeededRef = 0;
  if (v7 && a5)
  {
    v9 = IMDMessageRecordCopyMessageWithHandleOnServiceWithReplaceID();
    if (v9)
    {
      v10 = v9;
      AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v9, v7);
      CFRelease(v10);
    }

    else
    {
      AttachmentIfNeededRef = 0;
    }

    v11 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14[0] = 67109378;
      v14[1] = a3;
      v15 = 2112;
      v16 = AttachmentIfNeededRef;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "Stored message for replace ID (%d): %@", v14, 0x12u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return AttachmentIfNeededRef;
}

- (id)itemsWithHandles:(id)a3 onServices:(id)a4 messageGUID:(id)a5 threadIdentifier:(id)a6 limit:(unint64_t)a7
{
  v42 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = objc_autoreleasePoolPush();
  v27 = a7;
  v28 = v14;
  [(IMDMessageStore *)self _itemsWithHandles:v12 onServices:v13 messageGUID:v14 threadIdentifier:v15 limit:a7 onlyMessages:0];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = v32 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v30;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v29 + 1) + 8 * i);
        if (![v22 type])
        {
          [(IMDMessageStore *)self registerTransfersForMessage:v22];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v19);
  }

  objc_autoreleasePoolPop(v16);
  v23 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v17 count];
    *buf = 67109890;
    v34 = v24;
    v35 = 2112;
    v36 = v12;
    v37 = 2112;
    v38 = v13;
    v39 = 1024;
    v40 = v27;
    _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_DEFAULT, "Found %d messages with handles: %@ on services: %@  limit: %d", buf, 0x22u);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)itemsWithRoomNames:(id)a3 onServices:(id)a4 messageGUID:(id)a5 threadIdentifier:(id)a6 limit:(unint64_t)a7
{
  v42 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = objc_autoreleasePoolPush();
  v27 = a7;
  v28 = v14;
  [(IMDMessageStore *)self _itemsWithRoomNames:v12 onServices:v13 messageGUID:v14 threadIdentifier:v15 limit:a7 onlyMessages:0];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v17 = v32 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v29 objects:v41 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v30;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v29 + 1) + 8 * i);
        if (![v22 type])
        {
          [(IMDMessageStore *)self registerTransfersForMessage:v22];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v29 objects:v41 count:16];
    }

    while (v19);
  }

  objc_autoreleasePoolPop(v16);
  v23 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v17 count];
    *buf = 67109890;
    v34 = v24;
    v35 = 2112;
    v36 = v12;
    v37 = 2112;
    v38 = v13;
    v39 = 1024;
    v40 = v27;
    _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_DEFAULT, "Found %d messages with room names: %@ on services: %@  limit: %d", buf, 0x22u);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)itemsWithHandles:(id)a3 onServices:(id)a4 messageGUID:(id)a5 numberOfMessagesBefore:(unint64_t)a6 numberOfMessagesAfter:(unint64_t)a7 threadIdentifier:(id)a8 hasMessagesBefore:(BOOL *)a9 hasMessagesAfter:(BOOL *)a10
{
  v53 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a8;
  v20 = objc_autoreleasePoolPush();
  v36 = a7;
  v37 = v18;
  v35 = a6;
  v21 = a6;
  v22 = v19;
  [(IMDMessageStore *)self _itemsWithHandlesBeforeAndAfterGUID:v18 handles:v16 onServices:v17 numberOfMessagesBefore:v21 numberOfMessagesAfter:a7 threadIdentifier:v19 hasMessagesBefore:a9 hasMessagesAfter:a10];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v23 = v41 = 0u;
  v24 = [v23 countByEnumeratingWithState:&v38 objects:v52 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v39;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v39 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v38 + 1) + 8 * i);
        if (![v28 type])
        {
          [(IMDMessageStore *)self registerTransfersForMessage:v28];
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v38 objects:v52 count:16];
    }

    while (v25);
  }

  objc_autoreleasePoolPop(v20);
  v29 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [v23 count];
    v31 = [v16 count];
    v32 = [v17 count];
    *buf = 67110144;
    v43 = v30;
    v44 = 1024;
    v45 = v31;
    v46 = 1024;
    v47 = v32;
    v48 = 1024;
    v49 = v35;
    v50 = 1024;
    v51 = v36;
    _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_DEFAULT, "messagesWithHandlesBeforeAndAfterGUID found %d messages for number of ids: %d on number of services: %d numberOfMessagesBefore: %d numberOfMessagesAfter: %d", buf, 0x20u);
  }

  v33 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)lastMessageWithHandles:(id)a3 onServices:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [(IMDMessageStore *)self _itemsWithHandles:v6 onServices:v7 messageGUID:0 threadIdentifier:0 limit:1 onlyMessages:1];
  v10 = [v9 firstObject];

  objc_autoreleasePoolPop(v8);
  v11 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412802;
    v15 = v10;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "Found last message: %@ with handles: %@ on services: %@", &v14, 0x20u);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)unreadMessagesWithHandles:(id)a3 onServices:(id)a4 limit:(unint64_t)a5 fallbackGUID:(id)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v24 = a5;
  context = objc_autoreleasePoolPush();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v26 = v12;
  v13 = [(IMDMessageStore *)self _unreadMessagesWithHandles:v10 onServices:v11 limit:a5 fallbackGUID:v12];
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v28;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v27 + 1) + 8 * i);
        if (v19)
        {
          if (!v16)
          {
            v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          [v16 addObject:v19];
          if (![v19 type])
          {
            [(IMDMessageStore *)self registerTransfersForMessage:v19];
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  objc_autoreleasePoolPop(context);
  v20 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v16 count];
    *buf = 67109890;
    v32 = v21;
    v33 = 2112;
    v34 = v10;
    v35 = 2112;
    v36 = v11;
    v37 = 1024;
    v38 = v24;
    _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_DEFAULT, "Found %d messages with handle: %@ on service: %@  limit: %d", buf, 0x22u);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)unreadMessagesWithRoomNames:(id)a3 onServices:(id)a4 limit:(unint64_t)a5 fallbackGUID:(id)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v24 = a5;
  context = objc_autoreleasePoolPush();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v26 = v12;
  v13 = [(IMDMessageStore *)self _unreadMessagesWithRoomNames:v10 onServices:v11 limit:a5 fallbackGUID:v12];
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v28;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v27 + 1) + 8 * i);
        if (v19)
        {
          if (!v16)
          {
            v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          [v16 addObject:v19];
          if (![v19 type])
          {
            [(IMDMessageStore *)self registerTransfersForMessage:v19];
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  objc_autoreleasePoolPop(context);
  v20 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v16 count];
    *buf = 67109890;
    v32 = v21;
    v33 = 2112;
    v34 = v10;
    v35 = 2112;
    v36 = v11;
    v37 = 1024;
    v38 = v24;
    _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_DEFAULT, "Found %d messages with handle: %@ on service: %@  limit: %d", buf, 0x22u);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)lastMessageWithRoomNames:(id)a3 onServices:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [(IMDMessageStore *)self _itemsWithRoomNames:v6 onServices:v7 messageGUID:0 threadIdentifier:0 limit:1 onlyMessages:1];
  v10 = [v9 firstObject];

  objc_autoreleasePoolPop(v8);
  v11 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412802;
    v15 = v10;
    v16 = 2112;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "Found last message: %@ with room names: %@ on services: %@", &v14, 0x20u);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)lastIncomingMessageForChatWithIdentifier:(id)a3 chatStyle:(unsigned __int8)a4 onService:(id)a5
{
  v29[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a5;
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %lld", *MEMORY[0x277D19FA0], 0];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", *MEMORY[0x277D19F98], MEMORY[0x277CBEC28]];
  v10 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", *MEMORY[0x277D19FC8], v7];
  v11 = MEMORY[0x277CCA920];
  v29[0] = v8;
  v29[1] = v9;
  v29[2] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
  v13 = [v11 andPredicateWithSubpredicates:v12];

  v14 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D19F88] ascending:0];
  v15 = IMCopyAnyServiceGUIDForChat();
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_22B4D7730;
  v26 = sub_22B4D78F4;
  v27 = 0;
  v16 = [MEMORY[0x277D18EB0] synchronousDatabase];
  v28 = v14;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_22B5E2EA0;
  v21[3] = &unk_2787031A0;
  v21[4] = &v22;
  [v16 fetchMessageRecordsForChatRecordWithGUID:v15 filteredUsingPredicate:v13 sortedUsingDescriptors:v17 limit:1 completionHandler:v21];

  v18 = v23[5];
  _Block_object_dispose(&v22, 8);

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)messagesInChat:(id)a3 earliestDate:(id)a4 limit:(unint64_t)a5
{
  v30[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %lld", *MEMORY[0x277D19FA0], 0];
  v10 = *MEMORY[0x277D19F88];
  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= %@", *MEMORY[0x277D19F88], v8];
  v12 = MEMORY[0x277CCA920];
  v30[0] = v9;
  v30[1] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  v14 = [v12 andPredicateWithSubpredicates:v13];

  v15 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:v10 ascending:0];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_22B4D7730;
  v27 = sub_22B4D78F4;
  v28 = 0;
  v16 = [MEMORY[0x277D18EB0] synchronousDatabase];
  v17 = [v7 guid];
  v29 = v15;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_22B5E31F4;
  v22[3] = &unk_2787031A0;
  v22[4] = &v23;
  [v16 fetchMessageRecordsForChatRecordWithGUID:v17 filteredUsingPredicate:v14 sortedUsingDescriptors:v18 limit:a5 completionHandler:v22];

  v19 = v24[5];
  _Block_object_dispose(&v23, 8);

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (BOOL)hasScheduledMessageForChatGUID:(id)a3
{
  v18[3] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %lld", *MEMORY[0x277D19FA0], 0];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %lu", *MEMORY[0x277D19FC0], 2];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %lu OR %K = %lu", *MEMORY[0x277D19FB8], 1, *MEMORY[0x277D19FB8], 2];
  v7 = MEMORY[0x277CCA920];
  v18[0] = v4;
  v18[1] = v5;
  v18[2] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v9 = [v7 andPredicateWithSubpredicates:v8];

  v10 = [MEMORY[0x277D18EB0] synchronousDatabase];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22B5E3628;
  v13[3] = &unk_278705F18;
  v13[4] = &v14;
  [v10 fetchMessageRecordCountForChatRecordWithGUID:v3 filteredUsingPredicate:v9 limit:1 completionHandler:v13];

  LOBYTE(v10) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

- (id)scheduledMessagesBatchFetcherForChat:(id)a3
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = [objc_alloc(MEMORY[0x277D18ED8]) initWithAssociatedChatGUID:v4];
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277D18ED8]);
  }

  v6 = v5;
  [v5 setBatchSize:100];
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %lld", *MEMORY[0x277D19FA0], 0];
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %lu", *MEMORY[0x277D19FC0], 2];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %lu OR %K = %lu", *MEMORY[0x277D19FB8], 1, *MEMORY[0x277D19FB8], 2];
  v10 = MEMORY[0x277CCA920];
  v15[0] = v7;
  v15[1] = v8;
  v15[2] = v9;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
  v12 = [v10 andPredicateWithSubpredicates:v11];
  [v6 setPredicate:v12];

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)scheduledMessagesBatchFetcherForSyncState:(int64_t)a3
{
  v13[3] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277D18ED8]);
  [v4 setBatchSize:100];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %lld", *MEMORY[0x277D19FA0], 0];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %lu", *MEMORY[0x277D19FC0], 2];
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %lld", *MEMORY[0x277D19F80], a3];
  v8 = MEMORY[0x277CCA920];
  v13[0] = v5;
  v13[1] = v6;
  v13[2] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
  v10 = [v8 andPredicateWithSubpredicates:v9];
  [v4 setPredicate:v10];

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)oldestMessageDateForChatIdentifiers:(id)a3 chatStyle:(unsigned __int8)a4 services:(id)a5
{
  v26[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v18 = a5;
  v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %lld", *MEMORY[0x277D19FA0], 0];
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D19F88] ascending:1];
  v8 = [MEMORY[0x277D18EB0] synchronousDatabase];
  v9 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_22B4D7730;
  v24 = sub_22B4D78F4;
  v25 = 0;
  while (v9 < [v6 count])
  {
    v10 = [v6 objectAtIndexedSubscript:v9];
    v11 = [v18 objectAtIndexedSubscript:v9];
    v12 = IMCopyGUIDForChat();
    v26[0] = v7;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_22B5E40FC;
    v19[3] = &unk_2787031A0;
    v19[4] = &v20;
    [v8 fetchMessageRecordsForChatRecordWithGUID:v12 filteredUsingPredicate:v17 sortedUsingDescriptors:v13 limit:1 completionHandler:v19];

    ++v9;
  }

  v14 = v21[5];
  _Block_object_dispose(&v20, 8);

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)lastMessageForChatWithRowID:(int64_t)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_22B4D7730;
  v12 = sub_22B4D78F4;
  v13 = 0;
  v4 = [MEMORY[0x277D18EB0] synchronousDatabase];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B5E4364;
  v7[3] = &unk_278705F40;
  v7[4] = &v8;
  [v4 fetchLastMessageRecordForChatRecordWithRowID:a3 completionHandler:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)lastTUConversationItemForChat:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_22B4D7730;
  v17 = sub_22B4D78F4;
  v18 = 0;
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %lld", *MEMORY[0x277D19FA0], 6];
  v5 = [MEMORY[0x277D18EB0] synchronousDatabase];
  v6 = [v3 guid];
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D19F88] ascending:0];
  v19[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22B5E4610;
  v12[3] = &unk_2787031A0;
  v12[4] = &v13;
  [v5 fetchMessageRecordsForChatRecordWithGUID:v6 filteredUsingPredicate:v4 sortedUsingDescriptors:v8 limit:1 completionHandler:v12];

  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)attachmentsWithHandles:(id)a3 onServices:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = IMDAttachmentRecordCopyAttachmentGUIDsAndPathsForChatIdentifiersOnServices();
  objc_autoreleasePoolPop(v7);
  v9 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109634;
    v12[1] = [v8 count];
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEFAULT, "Found %d filenames with handles: %@ on services: %@", v12, 0x1Cu);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)attachmentsWithRoomNames:(id)a3 onServices:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = IMDAttachmentRecordCopyAttachmentGUIDsAndPathsForChatIdentifiersOnServices();
  objc_autoreleasePoolPop(v7);
  v9 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109634;
    v12[1] = [v8 count];
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEFAULT, "Found %d filenames with room names: %@ on services: %@ ", v12, 0x1Cu);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)messageActionItemsForOriginalMessageGUID:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = IMDMessageRecordCopyMessageActionItemsForOriginalMessageGUID();
  if ([v5 count])
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = [v5 objectAtIndex:v6];
      if (v8)
      {
        AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v8, 0);
        if (AttachmentIfNeededRef)
        {
          if (!v7)
          {
            v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          [v7 addObject:AttachmentIfNeededRef];
        }
      }

      ++v6;
    }

    while ([v5 count] > v6);
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v4);
  v10 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109378;
    v13[1] = [v7 count];
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "Found %d message action items for original message guid: %@", v13, 0x12u);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)frequentRepliesForForChatIdentifiers:(id)a3 onServices:(id)a4 limit:(unint64_t)a5
{
  v5 = a5;
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  v10 = IMDMessageRecordCopyFrequentRepliesForChatIdentifiersOnServicesUpToLimit();
  objc_autoreleasePoolPop(v9);
  v11 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109890;
    v14[1] = [v10 count];
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    v19 = 1024;
    v20 = v5;
    _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "Found %d messages with handles: %@ on services: %@  limit: %d", v14, 0x22u);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)messagesWithReplyToGUID:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = IMDMessageRecordCopyMessagesWithReplyToGUIDs();
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v5 count])
  {
    v7 = 0;
    do
    {
      v8 = objc_autoreleasePoolPush();
      AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef([v5 objectAtIndex:v7], 0);
      if (AttachmentIfNeededRef)
      {
        [v6 addObject:AttachmentIfNeededRef];
      }

      objc_autoreleasePoolPop(v8);
      ++v7;
    }

    while ([v5 count] > v7);
  }

  objc_autoreleasePoolPop(v4);
  return v6;
}

+ (id)_missingMessageReadReceiptCache
{
  if (qword_281421390 != -1)
  {
    sub_22B7D5DB4();
  }

  v3 = qword_281421388;

  return v3;
}

- (void)addMissingMessageReadReceipt:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = +[IMDMessageStore _missingMessageReadReceiptCache];
  [v4 addObject:v3];

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = +[IMDMessageStore _missingMessageReadReceiptCache];
      v8 = 138412546;
      v9 = v3;
      v10 = 2048;
      v11 = [v6 count];
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Adding message GUID to readReceiptsForMissingMessage cache: %@ (size: %lu)", &v8, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)popReadReceiptForMissingGUID:(id)a3
{
  v3 = a3;
  if ([v3 length] && (+[IMDMessageStore _missingMessageReadReceiptCache](IMDMessageStore, "_missingMessageReadReceiptCache"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "containsObject:", v3), v4, v5))
  {
    v6 = +[IMDMessageStore _missingMessageReadReceiptCache];
    [v6 removeObject:v3];

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)enumerateMessagesToRelayOnService:(id)a3 usingBlock:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277D18ED8]);
  v8 = MEMORY[0x277CCAC30];
  v9 = *MEMORY[0x277D19FA8];
  v10 = *MEMORY[0x277D19FC8];
  v24 = v5;
  v11 = [v5 internalName];
  v12 = [v8 predicateWithFormat:@"%K = %@ AND %K = %@", v9, MEMORY[0x277CBEC38], v10, v11];

  v23 = v12;
  [v7 setPredicate:v12];
  [v7 setBatchSize:100];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v13 = v7;
  v14 = [v13 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v25 + 1) + 8 * i);
        if (![v18 itemType])
        {
          AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v18, 0);
          if (AttachmentIfNeededRef)
          {
            v6[2](v6, AttachmentIfNeededRef);
          }

          else
          {
            v20 = IMDatabaseLogHandle();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = [v18 guid];
              *buf = 138412290;
              v30 = v21;
              _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_DEFAULT, "Could not fetch IMMessageItem from record guid: %@", buf, 0xCu);
            }
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v15);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (id)chatForMessage:(id)a3
{
  v4 = [a3 guid];
  v5 = [(IMDMessageStore *)self chatForMessageGUID:v4];

  return v5;
}

- (id)chatsForMessage:(id)a3
{
  v4 = [a3 guid];
  v5 = [(IMDMessageStore *)self chatsForMessageGUID:v4];

  return v5;
}

- (id)_chatsForMessageGUID:(id)a3 enableVerboseLogging:(BOOL)a4
{
  v4 = a4;
  v33 = *MEMORY[0x277D85DE8];
  v23 = a3;
  if (!v23)
  {
    v5 = 0;
    goto LABEL_28;
  }

  v22 = v4;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  context = objc_autoreleasePoolPush();
  v6 = +[IMDChatStore sharedInstance];
  v7 = [v6 chatsGUIDsForMessageWithGUID:v23];

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v30 = v7;
      v31 = 2112;
      v32 = v23;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Found chat guids: %@ for message guid: %@", buf, 0x16u);
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = +[IMDChatRegistry sharedInstance];
        v15 = [v14 existingChatWithGUID:v13];

        if (v15)
        {
          [v5 addObject:v15];
        }

        else if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v30 = v13;
            v31 = 2112;
            v32 = v23;
            _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Couldn't find existing chat with guid: %@ in IMDChatRegistry for messageGUID: %@", buf, 0x16u);
          }
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  if (v22)
  {
    v17 = IMDMessageStoreLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v5;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_DEFAULT, "   Found Chats: %@", buf, 0xCu);
    }

LABEL_26:

    goto LABEL_27;
  }

  if ([v5 count])
  {
    v17 = IMDMessageStoreLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v5 __imArrayByApplyingBlock:&unk_283F1A248];
      *buf = 138412290;
      v30 = v18;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_DEFAULT, "   Found Chats: %@", buf, 0xCu);
    }

    goto LABEL_26;
  }

LABEL_27:

  objc_autoreleasePoolPop(context);
LABEL_28:

  v19 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)chatForMessageIdentifier:(int64_t)a3
{
  v3 = [(IMDMessageStore *)self _chatsForMessageIdentifier:a3];
  v4 = [v3 __imFirstObject];

  return v4;
}

- (id)existingChatForMessageGUID:(id)a3
{
  v3 = a3;
  v4 = +[IMDChatStore sharedInstance];
  v5 = [v4 chatsGUIDsForMessageWithGUID:v3];

  v6 = [v5 __imFirstObject];

  v7 = +[IMDChatRegistry sharedInstance];
  v8 = [v7 existingChatWithGUID:v6];

  return v8;
}

- (id)_chatsForMessageIdentifier:(int64_t)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = +[IMDChatStore sharedInstance];
  v5 = [v4 chatsGUIDsForMessageWithIdentifier:a3];

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v26 = v5;
      v27 = 2048;
      v28 = a3;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Found chat guids: %@ for message identifier: %lld", buf, 0x16u);
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v10 = *v21;
    *&v9 = 138412546;
    v18 = v9;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = +[IMDChatRegistry sharedInstance];
        v14 = [v13 existingChatWithGUID:v12];

        if (v14)
        {
          [v3 addObject:v14];
        }

        else if (IMOSLoggingEnabled())
        {
          v15 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            *buf = v18;
            v26 = v12;
            v27 = 2048;
            v28 = a3;
            _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Couldn't find existing chat with guid: %@ in IMDChatRegistry for messageIdentifier: %lld", buf, 0x16u);
          }
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)_isValidPhoneNumber:(id)a3 forCountryCode:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = MEMORY[0x231897B50]("PNIsValidPhoneNumberForCountry", @"CorePhoneNumbers");
  v8 = v7(v6, v5);

  return v8;
}

- (id)cleanUnformattedPhoneNumber:(id)a3 countryCode:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = [(IMDMessageStore *)self _isValidPhoneNumber:v8 forCountryCode:v7];
  v10 = (([v8 hasPrefix:@"#"] & 1) != 0 || objc_msgSend(v8, "hasPrefix:", @"*")) && objc_msgSend(v8, "length") >= 5 && objc_msgSend(v8, "length") < 0xA;
  if ([v8 hasPrefix:@"444"])
  {
    v10 |= [v8 length] == 7;
  }

  v11 = v8;
  if ((v10 & 1) == 0)
  {
    v11 = v8;
    if (v9)
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v15 = 138412802;
          v16 = v8;
          v17 = 1024;
          v18 = 1;
          v19 = 1024;
          v20 = 0;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Cleaning up symbols from unformatted phone number %@ based on phoneNumberIsValid %d and phoneNumberIsShortCode %d", &v15, 0x18u);
        }
      }

      v11 = [(IMDMessageStore *)self _cleanupPhoneNumber:v8];
    }
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)updatedMessagesForMessages:(id)a3
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27 = [v4 arrayByApplyingSelector:sel_guid];
  v5 = [(IMDMessageStore *)self messagesWithGUIDs:?];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        v13 = [v12 guid];
        [v6 setObject:v12 forKeyedSubscript:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v9);
  }

  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v15 = v4;
  v16 = [v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v29;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v28 + 1) + 8 * j);
        v21 = [v20 guid];
        v22 = [v6 objectForKeyedSubscript:v21];

        if (v22)
        {
          v23 = v22;
        }

        else
        {
          v23 = v20;
        }

        [v14 addObject:v23];
      }

      v17 = [v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v17);
  }

  v24 = [v14 copy];
  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (void)resolveUnformattedRepresentationsForHandles:(id)a3 onService:(id)a4 message:(id)a5 completionBlock:(id)a6
{
  v77 = *MEMORY[0x277D85DE8];
  v54 = a3;
  v60 = a4;
  v59 = a5;
  v9 = a6;
  if (v9)
  {
    v10 = v9;
    v53 = [v9 copy];

    v56 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = v54;
    v58 = [obj countByEnumeratingWithState:&v64 objects:v76 count:16];
    if (!v58)
    {
      goto LABEL_58;
    }

    v57 = *v65;
    while (1)
    {
      v11 = 0;
      do
      {
        if (*v65 != v57)
        {
          v12 = v11;
          objc_enumerationMutation(obj);
          v11 = v12;
        }

        v62 = v11;
        v13 = *(*(&v64 + 1) + 8 * v11);
        v14 = [v13 ID];
        v15 = [v60 internalName];
        v16 = [(IMDMessageStore *)self _copyHandle:v14 onService:v15];

        if (v16)
        {
          v17 = IMDHandleRecordCopyCountry();
          v18 = IMDHandleRecordCopyUncanonicalizedID();
          v19 = v18;
          if (v17)
          {
            if (v18)
            {
              goto LABEL_10;
            }

LABEL_17:
            v19 = [v59 unformattedID];
            if (!v17)
            {
              goto LABEL_18;
            }

LABEL_11:
            if (!v19)
            {
              goto LABEL_19;
            }
          }

          else
          {
            v17 = [v59 countryCode];
            if (!v19)
            {
              goto LABEL_17;
            }

LABEL_10:
            if (v17)
            {
              goto LABEL_11;
            }

LABEL_18:
            v17 = [v13 countryCode];
            if (!v19)
            {
LABEL_19:
              v19 = [v13 unformattedID];
            }
          }

          v23 = [v13 ID];
          v24 = [v23 im_stripCategoryLabel];

          v61 = [MEMORY[0x277D6EEE8] normalizedPhoneNumberHandleForValue:v24 isoCountryCode:v17];
          v25 = MEMORY[0x277D6EEE8];
          v26 = [v19 im_stripCategoryLabel];
          if (v17)
          {
            v27 = [v25 normalizedPhoneNumberHandleForValue:v26 isoCountryCode:v17];
          }

          else
          {
            v28 = [v61 isoCountryCode];
            v27 = [v25 normalizedPhoneNumberHandleForValue:v26 isoCountryCode:v28];
          }

          if (v27 && ([v27 isEquivalentToHandle:v61] & 1) == 0)
          {
            if (IMOSLoggingEnabled())
            {
              v29 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
              {
                *buf = 138413058;
                v69 = v24;
                v70 = 2112;
                v71 = v19;
                v72 = 2112;
                v73 = v61;
                v74 = 2112;
                v75 = v27;
                _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Canonicalized handle (%@) and unformatted handle (%@) were not equal - TU canonical: (%@) TU unformatted: (%@)", buf, 0x2Au);
              }
            }

            v19 = 0;
          }

          v30 = [(IMDMessageStore *)self cleanUnformattedPhoneNumber:v19 countryCode:v17];
          v31 = [v30 im_stripCategoryLabel];

          v32 = [v60 internalName];
          if ([v32 isEqualToString:*MEMORY[0x277D1A608]])
          {
            v33 = [v13 personCentricID];
            v34 = [v33 __im_isSipHandle];

            if (v34)
            {
              if (IMOSLoggingEnabled())
              {
                v35 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
                {
                  v36 = [v13 personCentricID];
                  *buf = 138412546;
                  v69 = v36;
                  v70 = 2112;
                  v71 = v24;
                  _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "Found a chat bot sip handle %@, for %@", buf, 0x16u);
                }
              }

              v37 = MEMORY[0x277CBEAC0];
              v38 = [v13 personCentricID];
              v39 = [v37 dictionaryWithObjectsAndKeys:{v24, @"__kIMDMessageStoreHandleCanonicalIDKey", v38, @"__kIMDMessageStoreHandleAlternateSIPID", v31, @"__kIMDMessageStoreHandleUnformattedIDKey", v17, @"__kIMDMessageStoreHandleCountryCodeKey", 0}];

              if (!v39)
              {
                goto LABEL_41;
              }

LABEL_40:
              [v56 addObject:v39];
LABEL_41:

              CFRelease(v16);
              goto LABEL_56;
            }
          }

          else
          {
          }

          v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v24, @"__kIMDMessageStoreHandleCanonicalIDKey", v31, @"__kIMDMessageStoreHandleUnformattedIDKey", v17, @"__kIMDMessageStoreHandleCountryCodeKey", 0}];
          if (v39)
          {
            goto LABEL_40;
          }

          goto LABEL_41;
        }

        v20 = [v59 countryCode];
        v21 = [v59 unformattedID];
        v22 = v21;
        if (v20)
        {
          if (!v21)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v20 = [v13 countryCode];
          if (!v22)
          {
LABEL_43:
            v22 = [v13 unformattedID];
          }
        }

        v40 = MEMORY[0x277D6EEE8];
        v41 = [v13 ID];
        v42 = [v40 normalizedPhoneNumberHandleForValue:v41 isoCountryCode:v20];

        v43 = MEMORY[0x277D6EEE8];
        if (v20)
        {
          v44 = [MEMORY[0x277D6EEE8] normalizedPhoneNumberHandleForValue:v22 isoCountryCode:v20];
        }

        else
        {
          v45 = [v42 isoCountryCode];
          v44 = [v43 normalizedPhoneNumberHandleForValue:v22 isoCountryCode:v45];
        }

        if (([v44 isEquivalentToHandle:v42] & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v46 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
            {
              v47 = [v13 ID];
              *buf = 138413058;
              v69 = v47;
              v70 = 2112;
              v71 = v22;
              v72 = 2112;
              v73 = v42;
              v74 = 2112;
              v75 = v44;
              _os_log_impl(&dword_22B4CC000, v46, OS_LOG_TYPE_INFO, "Canonicalized handle (%@) and unformatted handle (%@) were not equal - TU canonical: (%@) TU unformatted: (%@)", buf, 0x2Au);
            }
          }

          v22 = 0;
        }

        v48 = [(IMDMessageStore *)self cleanUnformattedPhoneNumber:v22 countryCode:v20];
        v49 = MEMORY[0x277CBEAC0];
        v50 = [v13 ID];
        v51 = [v49 dictionaryWithObjectsAndKeys:{v50, @"__kIMDMessageStoreHandleCanonicalIDKey", v48, @"__kIMDMessageStoreHandleUnformattedIDKey", v20, @"__kIMDMessageStoreHandleCountryCodeKey", 0}];

        if (v51)
        {
          [v56 addObject:v51];
        }

LABEL_56:
        v11 = v62 + 1;
      }

      while (v58 != v62 + 1);
      v58 = [obj countByEnumeratingWithState:&v64 objects:v76 count:16];
      if (!v58)
      {
LABEL_58:

        (v53)[2](v53, v56);
        break;
      }
    }
  }

  v52 = *MEMORY[0x277D85DE8];
}

- (id)deleteMessageGUIDs:(id)a3 inChat:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    context = objc_autoreleasePoolPush();
    IsFull = IMDSMSRecordIsFull();
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v30 = self;
    v31 = v6;
    v9 = [(IMDMessageStore *)self _itemsWithGUIDs:v6];
    v10 = [v9 countByEnumeratingWithState:&v36 objects:v47 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v37;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v37 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v36 + 1) + 8 * i);
          v15 = [v14 guid];
          if (v15)
          {
            [v8 addObject:v15];
          }

          v16 = +[IMDChatRegistry sharedInstance];
          [v16 removeMessage:v14 fromChat:v7];
        }

        v11 = [v9 countByEnumeratingWithState:&v36 objects:v47 count:16];
      }

      while (v11);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v6 = v31;
    v17 = v31;
    v18 = [v17 countByEnumeratingWithState:&v32 objects:v46 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v33;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v33 != v20)
          {
            objc_enumerationMutation(v17);
          }

          [IMDMessageStore _updateCacheForMessageGUID:*(*(&v32 + 1) + 8 * j) fromMessage:0 toMessage:0 updateLastMessage:1 calculateUnreadCount:1, context];
        }

        v19 = [v17 countByEnumeratingWithState:&v32 objects:v46 count:16];
      }

      while (v19);
    }

    v22 = IMDSMSRecordIsFull();
    objc_autoreleasePoolPop(context);
    v23 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v8 count];
      *buf = 67109634;
      v41 = v24;
      v42 = 2112;
      v43 = v17;
      v44 = 2112;
      v45 = v7;
      _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_DEFAULT, "Deleted %d messages with guids: %@ in chat: %@", buf, 0x1Cu);
    }

    if (![v8 count])
    {

      v8 = 0;
    }

    v25 = [v7 guid];
    [(IMDMessageStore *)v30 updateStampForGUID:v25];

    sub_22B5DC120(IsFull != 0, v22 != 0);
  }

  else
  {
    v8 = [(IMDMessageStore *)self deleteMessageGUIDs:v6];
  }

  v26 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)deleteMessageGUIDs:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  IsFull = IMDSMSRecordIsFull();
  v23 = 0;
  IMDMessageRecordDeleteMessagesForGUIDs();
  v7 = 0;
  if (v7)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [IMDMessageStore _updateCacheForMessageGUID:*(*(&v19 + 1) + 8 * i) fromMessage:0 toMessage:0 updateLastMessage:1 calculateUnreadCount:1, v19];
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v28 count:16];
      }

      while (v10);
    }

    v13 = IMDSMSRecordIsFull();
    v14 = [MEMORY[0x277D1AA10] sharedInstance];
    [v14 deleteInteractionsWithMessageGUIDs:v8];

    objc_autoreleasePoolPop(v5);
    [(IMDMessageStore *)self updateStamp];
    sub_22B5DC120(IsFull != 0, v13 != 0);
    v15 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v8 count];
      *buf = 67109378;
      v25 = v16;
      v26 = 2112;
      v27 = v8;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_DEFAULT, "Deleted %d messages with guids: %@", buf, 0x12u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_deleteMessagesWithGUIDs:(id)a3 chatIdentifiers:(id)a4 style:(unsigned __int8)a5 onServices:(id)a6 batchNumber:(unint64_t)a7 completion:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v27 = a8;
  v28 = v13;
  v16 = [v13 count];
  v25 = a7;
  v17 = 1000 * a7;
  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v14 count])
  {
    v19 = 0;
    do
    {
      v20 = [v14 objectAtIndex:{v19, v25}];
      v21 = [v15 objectAtIndex:v19];
      v22 = IMCopyGUIDForChat();

      if ([v22 length])
      {
        [v18 addObject:v22];
      }

      ++v19;
    }

    while (v19 < [v14 count]);
  }

  if (v17 >= v16)
  {
    v24 = v27;
    v23 = v28;
    if (v27)
    {
      v27[2](v27);
    }
  }

  else
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_22B5E6F18;
    v29[3] = &unk_278705FA8;
    v36 = v16;
    v37 = v17;
    v23 = v28;
    v30 = v28;
    v38 = v25;
    v31 = v14;
    v32 = v15;
    v24 = v27;
    v33 = v18;
    v34 = self;
    v39 = a5;
    v35 = v27;
    [(IMDMessageStore *)self _performBlock:v29 afterDelay:2.0];
  }
}

- (void)signalUnreadChangeForHandle:(id)a3
{
  v3 = a3;
  v4 = [v3 copy];
  v5 = IMBiomeQueue();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22B5E7620;
  v8[3] = &unk_278702FA0;
  v9 = v4;
  v10 = v3;
  v6 = v3;
  v7 = v4;
  dispatch_async(v5, v8);
}

- (BOOL)markMessageGUIDUnread:(id)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMDMessageStore *)self chatForMessageGUID:v4];
  if (v5)
  {
    IMDMessageRecordMarkMessageGUIDUnread();
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Reindexing messages as unread in spotlight", &v20, 2u);
      }
    }

    v22[0] = v4;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    IMDCoreSpotlightReindexMessagesWhileBlocking();

    v8 = [(IMDMessageStore *)self messageWithGUID:v4];
    v9 = v8 != 0;
    if (v8)
    {
      v10 = +[IMDBroadcastController sharedProvider];
      v11 = [v10 broadcasterForChatListenersUsingBlackholeRegistry:{objc_msgSend(v5, "isBlackholed")}];

      v12 = [v5 accountID];
      v13 = [v5 chatIdentifier];
      -[NSObject account:chat:style:messageUpdated:suppressNotification:](v11, "account:chat:style:messageUpdated:suppressNotification:", v12, v13, [v5 style], v8, 1);

      if (([objc_opt_class() _updateCacheForMessageGUID:v4 fromMessage:0 toMessage:0 updateLastMessage:0 calculateUnreadCount:1] & 1) == 0)
      {
        v14 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 138412290;
          v21 = v4;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "Attempted to mark a message as unread that wasn't the last message: %@", &v20, 0xCu);
        }

        v15 = +[IMDChatRegistry sharedInstance];
        [v15 updateStateForChat:v5 forcePost:0 shouldRebuildFailedMessageDate:0 shouldCalculateUnreadCount:1];
      }

      v16 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = v4;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_DEFAULT, "Marked %@ as unread", &v20, 0xCu);
      }

      v17 = [v8 handle];
      [(IMDMessageStore *)self signalUnreadChangeForHandle:v17];
    }

    else
    {
      v11 = IMLogHandleForCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D5DC8();
      }
    }
  }

  else
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D5E30();
    }

    v9 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)markMessagesAsReadWithIdentifiers:(id)a3 onServices:(id)a4 chatStyle:(unsigned __int8)a5 upToGUID:(id)a6 readDate:(id)a7 fromMe:(BOOL)a8
{
  v26 = a8;
  v25 = self;
  v35 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v11 count])
  {
    v16 = 0;
    do
    {
      v17 = [v11 objectAtIndex:{v16, v25}];
      v18 = [v12 objectAtIndex:v16];
      v19 = IMCopyGUIDForChat();

      if (v19)
      {
        [v15 addObject:v19];
      }

      ++v16;
    }

    while (v16 < [v11 count]);
  }

  v20 = v13;
  v21 = [(IMDMessageStore *)v25 markMessagesAsReadWithChatGUIDs:v15 upToGUID:v13 readDate:v14 fromMe:v26, v25];
  if (![v21 count])
  {

    v21 = 0;
  }

  v22 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    v28 = [v21 count];
    v29 = 2112;
    v30 = v11;
    v31 = 2112;
    v32 = v12;
    v33 = 1024;
    v34 = v26;
    _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_DEFAULT, "Marked %d messages as read with handles: %@ on service: %@  from me: %{BOOL}d", buf, 0x22u);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)markMessagesAsReadWithChatGUIDs:(id)a3 upToGUID:(id)a4 readDate:(id)a5 fromMe:(BOOL)a6
{
  v6 = a6;
  v41 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_autoreleasePoolPush();
  MessagesPriorToGuidMatchingChatGUIDs = IMDMessageRecordCopyAndMarkAsReadMessagesPriorToGuidMatchingChatGUIDs();
  objc_autoreleasePoolPop(v13);
  if (![MessagesPriorToGuidMatchingChatGUIDs count])
  {

    MessagesPriorToGuidMatchingChatGUIDs = 0;
  }

  if ([MessagesPriorToGuidMatchingChatGUIDs count])
  {
    [(IMDMessageStore *)self updateStampForGUIDs:v10];
  }

  v15 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v16 = [v15 isIntroductionsEnabled];

  if (v16)
  {
    v29 = v11;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v17 = v10;
    v18 = [v17 countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v31;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v30 + 1) + 8 * i);
          v23 = +[IMDChatRegistry sharedInstance];
          v24 = [v23 existingChatWithGUID:v22];

          if (v24)
          {
            [v24 updateTimeSensitiveExpirationDateForReadIfNeeded];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v30 objects:v40 count:16];
      }

      while (v19);
    }

    v11 = v29;
  }

  v25 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [MessagesPriorToGuidMatchingChatGUIDs count];
    *buf = 67109634;
    v35 = v26;
    v36 = 2112;
    v37 = v10;
    v38 = 1024;
    v39 = v6;
    _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_DEFAULT, "Marked %d messages as read with chat guid: %@ from me: %{BOOL}d", buf, 0x18u);
  }

  v27 = *MEMORY[0x277D85DE8];

  return MessagesPriorToGuidMatchingChatGUIDs;
}

- (void)_unreadCountControllerDidUpdate:(id)a3
{
  v8 = a3;
  v4 = [v8 object];
  v5 = [(IMDMessageStore *)self unreadCountController];

  if (v4 == v5)
  {
    v6 = [v8 userInfo];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D1A870]];

    [(IMDMessageStore *)self _rebuildUnreadMessageCountRefreshingReports:0 guids:0 delta:v7];
  }
}

- (IMUnreadCountReportDelta)unreadCountReportDeltaForSetupInfo
{
  v3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v4 = [v3 isUnreadCountRefactorEnabled];

  if (v4)
  {
    [(IMDMessageStore *)self _performDeferredUnreadCountRefreshIfNeeded];
    v5 = [(IMDMessageStore *)self unreadCountController];
    v6 = [v5 fullReplacementDelta];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)_calculateUnreadMessagesCountFilteredByFocus:(BOOL)a3 filteredByAssistiveAccess:(BOOL)a4
{
  v5 = a3;
  v39 = *MEMORY[0x277D85DE8];
  v25 = [MEMORY[0x277D1A9D0] sharedManager];
  v24 = [MEMORY[0x277D1A8A0] sharedManager];
  v23 = +[IMDChatRegistry sharedInstance];
  v6 = [v23 cachedChats];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v35 = [v6 count];
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Calculating unread message count from %ld cached chats.", buf, 0xCu);
    }
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (!v8)
  {
    v29 = 0;
    v9 = 0;
    goto LABEL_35;
  }

  v29 = 0;
  v9 = 0;
  v10 = *v31;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v31 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v30 + 1) + 8 * i);
      v13 = [v12 unreadCount];
      if (v13)
      {
        if (!v5)
        {
          if (a4)
          {
            goto LABEL_20;
          }

          goto LABEL_25;
        }

        v4 = [(IMDMessageStore *)self _handleStringsForChat:v12];
        if ([v25 activeFocusModeMatchesConversationWithHandleStrings:v4])
        {
          if (!a4)
          {

            goto LABEL_25;
          }

LABEL_20:
          v16 = [(IMDMessageStore *)self _handleIDsForChat:v12];
          v17 = [v24 allowsConversationWithHandleIDs:v16];

          if (v5)
          {

            if ((v17 & 1) == 0)
            {
              goto LABEL_26;
            }

LABEL_25:
            v29 += v13;
LABEL_30:
            v9 += v13;
            continue;
          }

          if (v17)
          {
            goto LABEL_25;
          }
        }

        else
        {
        }

LABEL_26:
        if (IMOSLoggingEnabled())
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = [v12 guid];
            *buf = 138412290;
            v35 = v19;
            _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Chat with guid is not allowed: %@", buf, 0xCu);
          }
        }

        goto LABEL_30;
      }

      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = [v12 guid];
          *buf = 138412290;
          v35 = v15;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Chat with guid (%@) did not have an unread count greater than 0.", buf, 0xCu);
        }
      }
    }

    v8 = [obj countByEnumeratingWithState:&v30 objects:v38 count:16];
  }

  while (v8);
LABEL_35:

  v20 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v35 = v29;
    v36 = 2048;
    v37 = v9;
    _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_DEFAULT, "Determined unread badge count is %ld after filtering, totalUnreadCount: %ld", buf, 0x16u);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v29;
}

- (id)_handleStringsForChat:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [a3 participants];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
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

        v10 = [*(*(&v15 + 1) + 8 * i) ID];
        v11 = [v10 im_stripCategoryLabel];

        if ([v11 length])
        {
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_handleIDsForChat:(id)a3
{
  v3 = [a3 participants];
  v4 = [v3 __imArrayByApplyingBlock:&unk_283F1A288];

  return v4;
}

- (void)cleanseAttachments
{
  v2 = [MEMORY[0x277D18EE8] sharedInstance];
  [v2 cleanseOrphanedFileTransfers];
}

- (BOOL)isAttachmentReferencedByMessage:(id)a3
{
  *&v20[13] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = IMMessageGuidFromIMFileTransferGuid();
  if (v5)
  {
    v6 = [(IMDMessageStore *)self itemWithGUID:v5];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        v8 = [v7 balloonBundleID];
        v9 = [v8 length];

        v10 = [v7 messagePartIndexForAttachmentMessagePartWithTransferGUID:v4];
        if (!v9 && v10 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = [v7 balloonBundleID];
            v17 = 138412802;
            v18 = v4;
            v19 = 1024;
            *v20 = 0;
            v20[2] = 2112;
            *&v20[3] = v12;
            _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "Attachment %@ orphaned: not in message(nil:%{BOOL}d), bundle %@", &v17, 0x1Cu);
          }

LABEL_19:

          goto LABEL_20;
        }

        goto LABEL_13;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        if (([v7 actionIsGroupPhoto]& 1) == 0)
        {
          v11 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v17 = 138412546;
            v18 = v4;
            v19 = 2048;
            *v20 = [v7 actionType];
            _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "Attachment %@ orphaned: not in group action type %lu", &v17, 0x16u);
          }

          goto LABEL_19;
        }

LABEL_13:

        v13 = 1;
LABEL_21:

        goto LABEL_22;
      }

      v7 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412546;
        v18 = v4;
        v19 = 2048;
        *v20 = [v6 type];
        v14 = "Attachment %@ orphaned: not in item type %lu";
        goto LABEL_16;
      }
    }

    else
    {
      v7 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 138412546;
        v18 = v4;
        v19 = 2112;
        *v20 = v5;
        v14 = "Attachment %@ orphaned: mssage %@ not found";
LABEL_16:
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, v14, &v17, 0x16u);
      }
    }

LABEL_20:

    v13 = 0;
    goto LABEL_21;
  }

  v13 = 0;
LABEL_22:

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)_suppressDBUpdateTimerFired
{
  v3 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEFAULT, "suppress DB update timer fired", v5, 2u);
  }

  [(NSTimer *)self->_suppressedUpdatesTimer invalidate];
  suppressedUpdatesTimer = self->_suppressedUpdatesTimer;
  self->_suppressedUpdatesTimer = 0;

  self->_suppressedUpdates = 0;
  [(IMDMessageStore *)self updateStamp];
}

- (void)setSuppressDatabaseUpdates:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x277D85DE8];
  v5 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v12 = v3;
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "setSuppressDatabaseUpdates called with suppressUpdates %d ", buf, 8u);
  }

  suppressedUpdatesTimer = self->_suppressedUpdatesTimer;
  if (suppressedUpdatesTimer)
  {
    [(NSTimer *)suppressedUpdatesTimer invalidate];
    v7 = self->_suppressedUpdatesTimer;
    self->_suppressedUpdatesTimer = 0;
  }

  self->_suppressedUpdates = v3;
  if (v3)
  {
    v8 = [MEMORY[0x277CCACC8] mainThread];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_22B5E8B58;
    v10[3] = &unk_278702FF0;
    v10[4] = self;
    [v8 __im_performBlock:v10];
  }

  else
  {
    [(IMDMessageStore *)self updateStamp];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)retractPostedNotificationsForMessageGUIDs:(id)a3
{
  v3 = a3;
  v4 = IMSupportsUserNotifications();
  if (v3 && v4 && [v3 count])
  {
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Going to retract user notifications for read messages", v6, 2u);
    }

    IMDNotificationsRetractNotificationsForReadMessages();
  }
}

- (void)retractPostedNotificationsForMessagesMatchingChatGUIDs:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = IMSupportsUserNotifications();
  if (v3 && v4 && [v3 count])
  {
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Retract notification for messages matching chats: %@", &v7, 0xCu);
    }

    IMDMessageRecordRetractNotificationsForMessagesMatchingChatGUIDs();
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)postUrgentNotificationsForMessageGUIDs:(id)a3
{
  v3 = a3;
  if (IMSupportsUserNotifications() && [v3 count])
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEFAULT, "Posting urgent notifications for messages", v8, 2u);
    }

    v5 = +[IMDAccountController sharedInstance];
    v6 = [v5 activeAliases];

    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v6 forKey:*MEMORY[0x277D18E98]];
    IMDNotificationsPostUrgentNotificationsForMessages();
  }
}

- (void)updatePostedNotificationsForMessageGUIDs:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (IMSupportsUserNotifications() && [v3 count])
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEFAULT, "Updating posted notifications for messages: %@", &v9, 0xCu);
    }

    v5 = +[IMDAccountController sharedInstance];
    v6 = [v5 activeAliases];

    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v6 forKey:*MEMORY[0x277D18E98]];
    IMDNotificationsUpdatePostedNotificationsForMessages();
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)__postDBUpdate
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel___postDBUpdate object:0];
  v3 = +[IMDBroadcastController sharedProvider];
  v4 = [v3 broadcasterForChatDatabaseListeners];
  v5 = [(IMDMessageStore *)self modificationStamp];
  [v4 databaseUpdated:v5];

  v6 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  LODWORD(v4) = [v6 isUnreadCountRefactorEnabled];

  if (v4)
  {
    v7 = [(IMDMessageStore *)self deferredRebuildGUIDs];
    v8 = [v7 allObjects];

    v9 = [(IMDMessageStore *)self deferredRebuildGUIDs];
    [v9 removeAllObjects];

    [(IMDMessageStore *)self rebuildUnreadMessageCountForGUIDs:v8];
  }

  else
  {
    [(IMDMessageStore *)self postCountChanges];
  }

  if (IMSupportsUserNotifications())
  {
    v10 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "Going to post user notifications", v12, 2u);
    }

    v11 = [(IMDMessageStore *)self notificationContext];
    IMDNotificationsPostNotificationsWithContext();
  }
}

- (void)_updateStamp
{
  [(IMDMessageStore *)self _updateModificationDate];
  if (!self->_suppressedUpdates)
  {

    MEMORY[0x2821F9670](self, sel__postDBUpdate);
  }
}

- (void)updateStampForGUID:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v8[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    [(IMDMessageStore *)self updateStampForGUIDs:v6];
  }

  else
  {
    [(IMDMessageStore *)self updateStamp];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateStampForGUIDs:(id)a3
{
  v4 = a3;
  v5 = [(IMDMessageStore *)self deferredRebuildGUIDs];
  [v5 addObjectsFromArray:v4];

  MEMORY[0x2821F9670](self, sel__updateStamp);
}

- (id)reassignIdentifierForExistingMessageWithGUID:(id)a3 toNewGUID:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [(IMDMessageStore *)self messageWithGUID:v6];
    v10 = IMDatabaseLogHandle();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        *buf = 138412546;
        v20 = v6;
        v21 = 2112;
        v22 = v8;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "Updating message GUID from %@ to %@", buf, 0x16u);
      }

      [v9 setGuid:v8];
      [v9 setOriginalGUID:v6];
      v12 = [MEMORY[0x277D18EB0] synchronousDatabase];
      [v12 reassignIdentifierForMessageWithGUID:v6 newGUID:v8 completionHandler:&unk_283F1A2A8];

      v18 = v6;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
      IMDCoreSpotlightDeleteMessageGUIDS();

      v14 = [(IMDMessageStore *)self storeMessage:v9 forceReplace:1 modifyError:0 modifyFlags:0 flagMask:0];
      v9 = v9;
      v15 = v9;
    }

    else
    {
      if (v11)
      {
        *buf = 138412290;
        v20 = v6;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "No existing item for updating for %@", buf, 0xCu);
      }

      v15 = 0;
    }
  }

  else
  {
    v9 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEFAULT, "Either oldGUID or newGUID is nil.", buf, 2u);
    }

    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)databaseChatSpamUpdated:(id)a3
{
  v3 = a3;
  v5 = +[IMDBroadcastController sharedProvider];
  v4 = [v5 broadcasterForChatDatabaseListeners];
  [v4 databaseChatSpamUpdated:v3];
}

- (id)notificationContext
{
  v2 = +[IMDAccountController sharedInstance];
  v3 = [v2 activeAliases];

  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v3 forKey:*MEMORY[0x277D18E98]];

  return v4;
}

- (void)rebuildLastFailedMessageDate
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(IMDMessageStore *)self _isPrimaryMessageStore])
  {
    cachedLastFailedMessageDate = self->_cachedLastFailedMessageDate;
    self->_cachedLastFailedMessageDate = 0;

    if (self->_suppressedUpdates)
    {
      v4 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEFAULT, "Suppressed: Rebuilding lastFailedMessageDateChanged", &v10, 2u);
      }
    }

    else
    {
      v5 = [(IMDMessageStore *)self lastFailedMessageDate];
      v6 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 134217984;
        v11 = v5;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "Rebuilding lastFailedMessageDateChanged with new value: %lld ", &v10, 0xCu);
      }

      v7 = +[IMDBroadcastController sharedProvider];
      v8 = [v7 broadcasterForChatCountsListeners];
      [v8 lastFailedMessageDateChanged:v5];

      v4 = +[IMDBadgeUtilities sharedInstance];
      [v4 updateBadgeForLastFailedMessageDateChangeIfNeeded:v5];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_refreshUnreadCountControllerForGUIDs:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v6 = [v5 isUnreadCountRefactorEnabled];

  if (v6)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = sub_22B4D7730;
    v29 = sub_22B4D78F4;
    v30 = 0;
    if (-[IMDMessageStore _shouldBroadcastDeltas](self, "_shouldBroadcastDeltas") && [v4 count])
    {
      v7 = [MEMORY[0x277D18EE0] synchronousDatabaseQueryProvider];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = sub_22B5E9B30;
      v24[3] = &unk_278705FF0;
      v24[4] = &v25;
      [v7 generateUnreadCountReportsForChatsWithGUIDs:v4 completionHandler:v24];

      if (v26[5])
      {
        v8 = [MEMORY[0x277CBEB58] setWithArray:v4];
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v9 = v26[5];
        v10 = [v9 countByEnumeratingWithState:&v20 objects:v31 count:16];
        if (v10)
        {
          v11 = *v21;
          do
          {
            v12 = 0;
            do
            {
              if (*v21 != v11)
              {
                objc_enumerationMutation(v9);
              }

              v13 = [*(*(&v20 + 1) + 8 * v12) guid];
              [v8 removeObject:v13];

              ++v12;
            }

            while (v10 != v12);
            v10 = [v9 countByEnumeratingWithState:&v20 objects:v31 count:16];
          }

          while (v10);
        }

        if ([v26[5] count])
        {
          v14 = [(IMDMessageStore *)self unreadCountController];
          [v14 updateReports:v26[5]];
        }

        if ([v8 count])
        {
          v15 = [(IMDMessageStore *)self unreadCountController];
          v16 = [v8 allObjects];
          [v15 clearUnreadCountForChatsWithGUIDs:v16];
        }

        goto LABEL_18;
      }
    }

    else
    {
      v17 = [MEMORY[0x277D18EE0] synchronousDatabaseQueryProvider];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = sub_22B5E9B40;
      v19[3] = &unk_278705FF0;
      v19[4] = &v25;
      [v17 generateUnreadCountReportsWithCompletionHandler:v19];

      if (v26[5])
      {
        v8 = [(IMDMessageStore *)self unreadCountController];
        [v8 replaceReports:v26[5]];
LABEL_18:

        _Block_object_dispose(&v25, 8);
        goto LABEL_20;
      }
    }

    _Block_object_dispose(&v25, 8);
  }

LABEL_20:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_expiredTimeSensitiveMessagesDetected:(id)a3
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B5E9BC4;
  block[3] = &unk_278702FF0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_clearExpiredTimeSensitiveMessages
{
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_DEFAULT, "Clearing expired time sensitive messages", v4, 2u);
  }

  v3 = [MEMORY[0x277D18EB0] synchronousDatabase];
  [v3 clearExpiredTimeSensitiveMessagesWithCompletionHandler:&unk_283F1A2C8];
}

- (id)_cachedUnreadCountReports
{
  v3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v4 = [v3 isUnreadCountRefactorEnabled];

  if (v4)
  {
    v5 = [(IMDMessageStore *)self unreadCountController];
    v6 = [v5 cachedUnreadReports];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_shouldBroadcastDeltas
{
  v2 = [(IMDMessageStore *)self unreadCountController];
  v3 = [v2 cachedUnreadReportsCount];
  LOBYTE(v3) = v3 > IMGetCachedDomainIntForKeyWithDefaultValue();

  return v3;
}

- (BOOL)_shouldSendBackwardsCompatibleUnreadCountUpdates
{
  if (qword_281421370 != -1)
  {
    sub_22B7D5E98();
  }

  return byte_27D8CFF08;
}

- (void)_rebuildUnreadMessageCountRefreshingReports:(BOOL)a3 guids:(id)a4 delta:(id)a5
{
  v6 = a3;
  *&v39[5] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  if ([(IMDMessageStore *)self _isPrimaryMessageStore])
  {
    v10 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v11 = [v10 isUnreadCountRefactorEnabled];

    if (v11)
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v38 = 67109376;
          v39[0] = v6;
          LOWORD(v39[1]) = 1024;
          *(&v39[1] + 2) = v9 != 0;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Rebuilding unread message count refreshing reports %{BOOL}d should broadcast %{BOOL}d", &v38, 0xEu);
        }
      }
    }

    else
    {
      cachedUnreadMessageCount = self->_cachedUnreadMessageCount;
      self->_cachedUnreadMessageCount = 0;
    }

    suppressedUpdates = self->_suppressedUpdates;
    v15 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v16 = [v15 isUnreadCountRefactorEnabled];

    if (suppressedUpdates)
    {
      if (v16)
      {
        self->_deferredUnreadCountRefresh = 1;
      }

      v17 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v38) = 0;
        _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_DEFAULT, "Suppressed: Rebuilding/Broadcasting unreadCountChanged", &v38, 2u);
      }

LABEL_39:

      goto LABEL_40;
    }

    if ((v16 & v6) == 1)
    {
      [(IMDMessageStore *)self _refreshUnreadCountControllerForGUIDs:v8];
    }

    v18 = [(IMDMessageStore *)self unreadMessagesCount];
    if (v9)
    {
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v38 = 134217984;
          *v39 = v18;
          _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Broadcasting unreadCountChanged with new value: %lld ", &v38, 0xCu);
        }
      }

      v20 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
      v21 = [v20 isUnreadCountRefactorEnabled];

      if (v21)
      {
        if ([v9 isReplacement])
        {
          v22 = 1;
        }

        else if ([(IMDMessageStore *)self _shouldBroadcastDeltas])
        {
          v22 = 0;
        }

        else
        {
          v25 = [(IMDMessageStore *)self unreadCountController];
          v26 = [v25 fullReplacementDelta];

          v22 = 1;
          v9 = v26;
        }

        v27 = +[IMDBroadcastController sharedProvider];
        v28 = [v27 broadcasterForChatCountsListeners];
        [v28 unreadCountReportsUpdated:v9];

        if (![(IMDMessageStore *)self _shouldSendBackwardsCompatibleUnreadCountUpdates])
        {
          goto LABEL_34;
        }

        if (v22)
        {
          v23 = v9;
        }

        else
        {
          v29 = [(IMDMessageStore *)self unreadCountController];
          v23 = [v29 fullReplacementDelta];
        }

        v24 = +[IMDBroadcastController sharedProvider];
        v30 = [v24 broadcasterForChatCountsListenersWithAdditionalCapabilities:0x100000000];
        v31 = [v23 updatedReports];
        [v30 unreadCountChanged:v18 reports:v31];
      }

      else
      {
        v23 = +[IMDBroadcastController sharedProvider];
        v24 = [v23 broadcasterForChatCountsListeners];
        [v24 unreadCountChanged:v18];
      }
    }

    else
    {
      v9 = 0;
    }

LABEL_34:
    [(IMDMessageStore *)self _notifyWidgetKitTimeline:v18];
    if ([(IMDMessageStore *)self _shouldUseBadgeUtilities])
    {
      v32 = +[IMDBadgeUtilities sharedInstance];
      [v32 updateBadgeForUnreadCountChangeIfNeeded:v18];
    }

    v33 = [(IMDMessageStore *)self lastFailedMessageDate];
    v34 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 134217984;
      *v39 = v33;
      _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_DEFAULT, "Broadcasting lastFailedMessageDateChanged with new value: %lld ", &v38, 0xCu);
    }

    v35 = +[IMDBroadcastController sharedProvider];
    v36 = [v35 broadcasterForChatCountsListeners];
    [v36 lastFailedMessageDateChanged:v33];

    v17 = +[IMDBadgeUtilities sharedInstance];
    [v17 updateBadgeForLastFailedMessageDateChangeIfNeeded:v33];
    goto LABEL_39;
  }

LABEL_40:

  v37 = *MEMORY[0x277D85DE8];
}

- (void)postCountChanges
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(IMDMessageStore *)self _isPrimaryMessageStore])
  {
    if (self->_suppressedUpdates)
    {
      v3 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEFAULT, "Suppressed: Broadcasting unreadCountChanged", &v15, 2u);
      }

      v4 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEFAULT, "Suppressed: Broadcasting lastFailedMessageDateChanged", &v15, 2u);
      }
    }

    else
    {
      v5 = [(IMDMessageStore *)self unreadMessagesCount];
      v6 = [(IMDMessageStore *)self lastFailedMessageDate];
      v7 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 134217984;
        v16 = v5;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Broadcasting unreadCountChanged with new value: %lld ", &v15, 0xCu);
      }

      v8 = +[IMDBroadcastController sharedProvider];
      v9 = [v8 broadcasterForChatCountsListeners];
      [v9 unreadCountChanged:v5];

      [(IMDMessageStore *)self _notifyWidgetKitTimeline:v5];
      if ([(IMDMessageStore *)self _shouldUseBadgeUtilities])
      {
        v10 = +[IMDBadgeUtilities sharedInstance];
        [v10 updateBadgeForUnreadCountChangeIfNeeded:v5];
      }

      v11 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 134217984;
        v16 = v6;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "Broadcasting lastFailedMessageDateChanged with new value: %lld ", &v15, 0xCu);
      }

      v12 = +[IMDBroadcastController sharedProvider];
      v13 = [v12 broadcasterForChatCountsListeners];
      [v13 lastFailedMessageDateChanged:v6];

      v4 = +[IMDBadgeUtilities sharedInstance];
      [v4 updateBadgeForLastFailedMessageDateChangeIfNeeded:v6];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_notifyWidgetKitTimeline:(int64_t)a3
{
  if ([(IMDMessageStore *)self _isPrimaryMessageStore]&& [(IMDMessageStore *)self lastNotifiedUnreadCount]!= a3)
  {

    MEMORY[0x2821F9670](self, sel_setLastNotifiedUnreadCount_);
  }
}

- (id)replaceMessageAcknowledgmentsWithNewMessageAcknowledgment:(id)a3 associatedMessageGUID:(id)a4 sender:(id)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v51 = a5;
  if (!v7)
  {
    v9 = v8;
    *buf = xmmword_278706010;
    *&buf[16] = *off_278706020;
    v53 = 3200;
    v10 = MEMORY[0x277CCACA8];
    v11 = IMFileLocationTrimFileName();
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:&stru_283F23018];
    v13 = [v10 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"newGUID", "-[IMDMessageStore replaceMessageAcknowledgmentsWithNewMessageAcknowledgment:associatedMessageGUID:sender:]", v11, 3200, v12];

    v14 = IMGetAssertionFailureHandler();
    if (v14)
    {
      v14(v13);
    }

    else
    {
      v15 = [MEMORY[0x277D19298] warning];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D5EAC();
      }
    }

    v8 = v9;
    if (v9)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (!v8)
  {
LABEL_10:
    v16 = v8;
    *buf = xmmword_278706038;
    *&buf[16] = *off_278706048;
    v53 = 3201;
    v17 = MEMORY[0x277CCACA8];
    v18 = IMFileLocationTrimFileName();
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:&stru_283F23018];
    v20 = [v17 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"associatedMessageGUID", "-[IMDMessageStore replaceMessageAcknowledgmentsWithNewMessageAcknowledgment:associatedMessageGUID:sender:]", v18, 3201, v19];

    v21 = IMGetAssertionFailureHandler();
    if (v21)
    {
      v21(v20);
    }

    else
    {
      v22 = [MEMORY[0x277D19298] warning];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D5EAC();
      }
    }

    v8 = v16;
  }

LABEL_16:
  v49 = v8;
  v23 = IMDMessageRecordCopyArrayOfAssociatedMessagesForMessageGUIDFromSender();
  v50 = 0;
  if (v50)
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = [v50 localizedDescription];
        *buf = 138412290;
        *&buf[4] = v25;
        _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Deleting previous acknowledgments failed with error: %@", buf, 0xCu);
      }
    }

    v26 = 0;
    goto LABEL_47;
  }

  Count = CFArrayGetCount(v23);
  if (Count < 1)
  {
    v26 = 0;
    v28 = 0;
    goto LABEL_46;
  }

  v26 = 0;
  v28 = 0;
  for (i = 0; i != Count; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v23, i);
    if (!ValueAtIndex)
    {
      continue;
    }

    AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(ValueAtIndex, 0);
    v32 = AttachmentIfNeededRef;
    if (AttachmentIfNeededRef)
    {
      v33 = [AttachmentIfNeededRef associatedMessageType] & 0xFFFFFFFFFFFFFFF8;
      if (v33 != 3000 && v33 != 2000 || ([v32 guid], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "isEqual:", v7), v34, (v35 & 1) != 0))
      {
        v36 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = [v32 guid];
          v38 = [v32 associatedMessageGUID];
          v39 = [v32 associatedMessageType];
          *buf = 138412802;
          *&buf[4] = v37;
          *&buf[12] = 2112;
          *&buf[14] = v38;
          *&buf[22] = 2048;
          *&buf[24] = v39;
          _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "Will NOT delete old ack %@: %@: %lld", buf, 0x20u);
        }

        goto LABEL_40;
      }

      v40 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = [v32 guid];
        v42 = [v32 associatedMessageGUID];
        v43 = [v32 associatedMessageType];
        *buf = 138412802;
        *&buf[4] = v41;
        *&buf[12] = 2112;
        *&buf[14] = v42;
        *&buf[22] = 2048;
        *&buf[24] = v43;
        _os_log_impl(&dword_22B4CC000, v40, OS_LOG_TYPE_INFO, "Will delete old ack %@: %@: %lld", buf, 0x20u);
      }

      if (v26)
      {
        if (!v28)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if (!v28)
        {
LABEL_38:
          v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
        }
      }

      v44 = [v32 guid];
      [v28 addObject:v44];

      [v26 addObject:v32];
    }

LABEL_40:
  }

  if (v28 && [v28 count])
  {
    v45 = [(IMDMessageStore *)self deleteMessageGUIDs:v28];
  }

LABEL_46:

LABEL_47:
  if (v23)
  {
    CFRelease(v23);
  }

  v46 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)replaceCustomAcknowledgmentsWithNewMessageAcknowledgment:(id)a3 associatedMessageGUID:(id)a4 sender:(id)a5
{
  v54 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v50 = a5;
  v51 = v7;
  if (!v7)
  {
    v9 = v8;
    *buf = xmmword_278706060;
    *&buf[16] = *off_278706070;
    v53 = 3258;
    v10 = MEMORY[0x277CCACA8];
    v11 = IMFileLocationTrimFileName();
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:&stru_283F23018];
    v13 = [v10 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"newGUID", "-[IMDMessageStore replaceCustomAcknowledgmentsWithNewMessageAcknowledgment:associatedMessageGUID:sender:]", v11, 3258, v12];

    v14 = IMGetAssertionFailureHandler();
    if (v14)
    {
      v14(v13);
    }

    else
    {
      v15 = [MEMORY[0x277D19298] warning];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D5EAC();
      }
    }

    v8 = v9;
    if (v9)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (!v8)
  {
LABEL_10:
    v16 = v8;
    *buf = xmmword_278706088;
    *&buf[16] = *off_278706098;
    v53 = 3259;
    v17 = MEMORY[0x277CCACA8];
    v18 = IMFileLocationTrimFileName();
    v19 = [MEMORY[0x277CCACA8] stringWithFormat:&stru_283F23018];
    v20 = [v17 stringWithFormat:@"Unexpected nil '%@' in %s at %s:%d. %@", @"associatedMessageGUID", "-[IMDMessageStore replaceCustomAcknowledgmentsWithNewMessageAcknowledgment:associatedMessageGUID:sender:]", v18, 3259, v19];

    v21 = IMGetAssertionFailureHandler();
    if (v21)
    {
      v21(v20);
    }

    else
    {
      v22 = [MEMORY[0x277D19298] warning];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D5EAC();
      }
    }

    v8 = v16;
  }

LABEL_16:
  v49 = v8;
  v23 = IMDMessageRecordCopyArrayOfAssociatedMessagesForMessageGUIDFromSender();
  v24 = 0;
  if (v24)
  {
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = [v24 localizedDescription];
        *buf = 138412290;
        *&buf[4] = v26;
        _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Deleting previous custom acknowledgments failed with error: %@", buf, 0xCu);
      }
    }

    v27 = 0;
    goto LABEL_46;
  }

  Count = CFArrayGetCount(v23);
  if (Count < 1)
  {
    v27 = 0;
    v29 = 0;
    goto LABEL_45;
  }

  v27 = 0;
  v29 = 0;
  for (i = 0; i != Count; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v23, i);
    if (!ValueAtIndex)
    {
      continue;
    }

    AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(ValueAtIndex, 0);
    v33 = AttachmentIfNeededRef;
    if (AttachmentIfNeededRef)
    {
      if ([AttachmentIfNeededRef associatedMessageType] != 4000 || (objc_msgSend(v33, "guid"), v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "isEqual:", v51), v34, (v35 & 1) != 0))
      {
        v36 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          v37 = [v33 guid];
          v38 = [v33 associatedMessageGUID];
          v39 = [v33 associatedMessageType];
          *buf = 138412802;
          *&buf[4] = v37;
          *&buf[12] = 2112;
          *&buf[14] = v38;
          *&buf[22] = 2048;
          *&buf[24] = v39;
          _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "Will NOT delete old ack %@: %@: %lld", buf, 0x20u);
        }

        goto LABEL_39;
      }

      v40 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = [v33 guid];
        v42 = [v33 associatedMessageGUID];
        v43 = [v33 associatedMessageType];
        *buf = 138412802;
        *&buf[4] = v41;
        *&buf[12] = 2112;
        *&buf[14] = v42;
        *&buf[22] = 2048;
        *&buf[24] = v43;
        _os_log_impl(&dword_22B4CC000, v40, OS_LOG_TYPE_INFO, "Will delete old ack %@: %@: %lld", buf, 0x20u);
      }

      if (v27)
      {
        if (!v29)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
        if (!v29)
        {
LABEL_37:
          v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
        }
      }

      v44 = [v33 guid];
      [v29 addObject:v44];

      [v27 addObject:v33];
    }

LABEL_39:
  }

  if (v29 && [v29 count])
  {
    v45 = [(IMDMessageStore *)self deleteMessageGUIDs:v29];
  }

LABEL_45:

LABEL_46:
  if (v23)
  {
    CFRelease(v23);
  }

  v46 = *MEMORY[0x277D85DE8];

  return v27;
}

- (id)_fileTransferGUIDsInMessageBody:(id)a3
{
  v3 = a3;
  v4 = [v3 length];
  v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v6 = *MEMORY[0x277D19100];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22B5EB2C8;
  v10[3] = &unk_2787060B8;
  v11 = v5;
  v7 = v5;
  [v3 enumerateAttribute:v6 inRange:0 options:v4 usingBlock:{0, v10}];

  v8 = [v7 array];

  return v8;
}

- (id)addEditHistoryToMessage:(id)a3 editedPartIndex:(int64_t)a4 editType:(unint64_t)a5 previousMessage:(id)a6
{
  v8 = a3;
  v9 = a6;
  v10 = [v8 body];
  v11 = [v9 body];
  if (!v11)
  {
    v12 = [v9 plainBody];
    v13 = v12;
    v14 = &stru_283F23018;
    if (v12)
    {
      v14 = v12;
    }

    v15 = v14;

    v11 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v15];
  }

  v16 = [v9 translationsForMessagePart:a4];
  v17 = objc_alloc(MEMORY[0x277D1ACB0]);
  v53 = v16;
  v18 = [v16 firstObject];
  v19 = [v17 initWithDictionaryRepresentation:v18];
  v56 = [v19 translatedText];

  v20 = [v8 originalTextRangesByPartIndex];
  v21 = [v20 count];

  if (v21)
  {
    v22 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_DEFAULT, "Message already had originalTextRangesByPartIndex, messages is being edited for a second (or more) time. Not overriding original values.", buf, 2u);
    }
  }

  else
  {
    v22 = [v11 __im_messagePartIndexToRangeMap];
    [v8 setOriginalTextRangesByPartIndex:v22];
  }

  v51 = [v8 historyForMessagePart:a4];
  v23 = [v51 mutableCopy];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v26 = v25;

  v54 = v11;
  if (![v26 count])
  {
    v27 = [v11 __im_messagePartMatchingPartIndex:a4];
    v28 = [v27 messagePartBody];
    v29 = v28;
    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = objc_alloc_init(MEMORY[0x277CCA898]);
    }

    v31 = v30;

    v32 = objc_alloc(MEMORY[0x277D1AA90]);
    v33 = [v9 time];
    v34 = [v32 initWithMessagePartText:v31 messagePartTranslation:v56 dateSent:v33 backwardCompatibleMessageGUID:0];

    [v26 addObject:v34];
  }

  v55 = v10;
  v35 = [v10 __im_messagePartMatchingPartIndex:a4];
  v36 = [v35 messagePartBody];
  v37 = v36;
  if (v36)
  {
    v38 = v36;
  }

  else
  {
    v38 = objc_alloc_init(MEMORY[0x277CCA898]);
  }

  v39 = v38;

  v40 = [v8 translationsForMessagePart:a4];
  v41 = objc_alloc(MEMORY[0x277D1ACB0]);
  v42 = [v40 firstObject];
  v43 = [v41 initWithDictionaryRepresentation:v42];
  v44 = [v43 translatedText];

  v45 = objc_alloc(MEMORY[0x277D1AA90]);
  v46 = [v8 dateEdited];
  v47 = [v45 initWithMessagePartText:v39 messagePartTranslation:v44 dateSent:v46 backwardCompatibleMessageGUID:0];

  [v26 addObject:v47];
  if (a5 == 2)
  {
    if ([v8 scheduleType] == 2)
    {
      v49 = [v26 copy];
      [v8 setHistory:v49 forMessagePart:a4];
    }

    else
    {
      [v8 setHistory:MEMORY[0x277CBEBF8] forMessagePart:a4];
    }

    [v8 removeTranslationsForMessagePart:a4];
  }

  else if (a5 == 1)
  {
    v48 = [v26 copy];
    [v8 setHistory:v48 forMessagePart:a4];
  }

  return v8;
}

- (id)storeEditedMessage:(id)a3 editedPartIndex:(int64_t)a4 editType:(unint64_t)a5 previousMessage:(id)a6 chat:(id)a7 updatedAssociatedMessageItems:(id *)a8
{
  v14 = MEMORY[0x277CCAA78];
  v15 = a7;
  v16 = a6;
  v17 = a3;
  v18 = [v14 indexSetWithIndex:a4];
  v19 = [(IMDMessageStore *)self storeEditedMessage:v17 editedPartIndexes:v18 editType:a5 previousMessage:v16 chat:v15 updatedAssociatedMessageItems:a8];

  return v19;
}

- (id)storeEditedMessage:(id)a3 editedPartIndexes:(id)a4 editType:(unint64_t)a5 previousMessage:(id)a6 chat:(id)a7 updatedAssociatedMessageItems:(id *)a8
{
  v108 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v73 = a4;
  v13 = a6;
  v75 = a7;
  v80 = [v13 guid];
  v14 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v80;
    _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "Applying edits to the content of message: %@", &buf, 0xCu);
  }

  v78 = [v12 body];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v104 = 0x3032000000;
  v105 = sub_22B4D7730;
  v106 = sub_22B4D78F4;
  v15 = v12;
  v107 = v15;
  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = sub_22B5EC3A4;
  v90[3] = &unk_2787060E0;
  v90[4] = self;
  p_buf = &buf;
  v93 = a5;
  v76 = v13;
  v91 = v76;
  [v73 enumerateIndexesUsingBlock:v90];
  v16 = *(*(&buf + 1) + 40);

  v17 = v78;
  if ([v16 isFullyRetracted])
  {
    if ([v16 isRead])
    {
      v77 = 0;
    }

    else
    {
      v18 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v94 = 0;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_DEFAULT, "Message no longer contains any parts, all parts have been retracted, marking message as read", v94, 2u);
      }

      [v16 setFlags:{objc_msgSend(v16, "flags") | 0x2000}];
      v19 = [MEMORY[0x277CBEAA8] __im_dateWithCurrentServerTime];
      [v16 setTimeRead:v19];

      v77 = 0x2000;
    }

    v20 = [v16 payloadData];
    v21 = [v20 length] == 0;

    if (v21)
    {
      goto LABEL_14;
    }

    v22 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v94 = 0;
      _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_DEFAULT, "Message is fully retracted, deleting payload data", v94, 2u);
    }

    [v16 setPayloadData:0];
    v23 = [v16 retractedPartIndexes];
    v24 = [v23 count] == 0;

    if (v24)
    {
      v25 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *v94 = 0;
        _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_DEFAULT, "We retracted the payload data on a message that had no body and was a payload only. Inserting a retraction stamp at index 0.", v94, 2u);
      }

      [v16 addRetractedPartIndex:0];
      v17 = v78;
    }

    else
    {
LABEL_14:
      v17 = v78;
    }
  }

  else
  {
    v77 = 0;
  }

  if ([v16 errorCode])
  {
    [v16 setErrorCode:0];
  }

  [v16 setCloudKitSyncState:0];
  if ([MEMORY[0x277D1A9A0] supportsDataDetectors])
  {
    v26 = [v17 mutableCopy];
    v27 = [v17 string];
    [v16 isFromMe];
    v28 = [v16 time];
    v29 = IMDDataDectorDictionaryForMessageItem();
    v30 = [v16 sender];
    v31 = v30;
    if (v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = [v16 handle];
    }

    v33 = v32;

    v34 = IMDDScanAttributedStringWithExtendedContext();
    v35 = [v26 copy];
    [v16 setBody:v35];

    v36 = [v16 flags] & 0xFFFFFFFFFFFEFFFFLL;
    v37 = 0x10000;
    if (!v34)
    {
      v37 = 0;
    }

    [v16 setFlags:v36 | v37];

    v77 |= 0x10000uLL;
  }

  v38 = objc_alloc_init(IMDMessageStorageContext);
  [(IMDMessageStorageContext *)v38 setForceReplace:1];
  [(IMDMessageStorageContext *)v38 setModifyError:1];
  [(IMDMessageStorageContext *)v38 setModifyFlags:v77 != 0];
  [(IMDMessageStorageContext *)v38 setFlagMask:v77];
  [(IMDMessageStorageContext *)v38 setUpdateMessageCache:1];
  [(IMDMessageStorageContext *)v38 setCalculateUnreadCount:1];
  [(IMDMessageStorageContext *)v38 setReindexMessage:1];
  [(IMDMessageStorageContext *)v38 setIncomingMessage:1];
  [(IMDMessageStorageContext *)v38 setChat:v75];
  v39 = [(IMDMessageStore *)self storeMessage:v16 context:v38 didReplaceBlock:0];
  v71 = v38;
  v79 = [(IMDMessageStore *)self messageWithGUID:v80];
  v40 = +[IMDChatRegistry sharedInstance];
  [v40 updateStateForChat:v75 forcePost:1 shouldRebuildFailedMessageDate:0 shouldCalculateUnreadCount:1];
  v70 = v40;
  v74 = [(IMDMessageStore *)self _updateAssociatedMessageItemsFromMessage:v76 toMessage:v79];
  if (a8)
  {
    v41 = v74;
    *a8 = v74;
  }

  v42 = [v76 fileTransferGUIDs];
  v43 = [(IMDMessageStore *)self _fileTransferGUIDsInMessageBody:v78];
  if ([v16 scheduleType] == 2)
  {
    [v16 setScheduledMessageOriginalTransferGUIDs:v42];
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v44 = v42;
  v45 = [v44 countByEnumeratingWithState:&v86 objects:v102 count:16];
  if (!v45)
  {
    v54 = v44;
    goto LABEL_49;
  }

  v46 = 0;
  v47 = *v87;
  do
  {
    for (i = 0; i != v45; ++i)
    {
      if (*v87 != v47)
      {
        objc_enumerationMutation(v44);
      }

      v49 = *(*(&v86 + 1) + 8 * i);
      if (([v43 containsObject:v49] & 1) == 0)
      {
        v50 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          *v94 = 138412290;
          v95 = v49;
          _os_log_impl(&dword_22B4CC000, v50, OS_LOG_TYPE_DEFAULT, "Edited message does not contain file transfer guid: %@", v94, 0xCu);
        }

        if ([v16 scheduleType] == 2 && objc_msgSend(v16, "scheduleState") == 2)
        {
          v51 = [v16 fileTransferGUIDs];
          v52 = [v51 mutableCopy];

          [v52 removeObject:v49];
          [v16 setFileTransferGUIDs:v52];
          v46 = 1;
        }

        else
        {
          v52 = +[IMDAttachmentStore sharedInstance];
          [v52 deleteAttachmentWithGUID:v49];
        }
      }
    }

    v45 = [v44 countByEnumeratingWithState:&v86 objects:v102 count:16];
  }

  while (v45);

  if (v46)
  {
    LOWORD(v69) = 257;
    v53 = [IMDMessageStore storeMessage:"storeMessage:forceReplace:modifyError:modifyFlags:flagMask:updateMessageCache:calculateUnreadCount:reindexMessage:" forceReplace:v16 modifyError:1 modifyFlags:1 flagMask:v77 != 0 updateMessageCache:v69 calculateUnreadCount:? reindexMessage:?];
    v54 = v79;
    v79 = v53;
LABEL_49:
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v55 = v43;
  v56 = [v55 countByEnumeratingWithState:&v82 objects:v101 count:16];
  if (v56)
  {
    v57 = *v83;
    do
    {
      for (j = 0; j != v56; ++j)
      {
        if (*v83 != v57)
        {
          objc_enumerationMutation(v55);
        }

        v59 = *(*(&v82 + 1) + 8 * j);
        if (([v44 containsObject:v59] & 1) == 0)
        {
          v60 = IMLogHandleForCategory();
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            *v94 = 138412290;
            v95 = v59;
            _os_log_error_impl(&dword_22B4CC000, v60, OS_LOG_TYPE_ERROR, "Edited message contains a file transfer not found in original message. FileTransferGuid: %@", v94, 0xCu);
          }
        }
      }

      v56 = [v55 countByEnumeratingWithState:&v82 objects:v101 count:16];
    }

    while (v56);
  }

  if (v80)
  {
    v100 = v80;
    v61 = [MEMORY[0x277CBEA60] arrayWithObjects:&v100 count:1];
  }

  else
  {
    v61 = MEMORY[0x277CBEBF8];
  }

  [(IMDMessageStore *)self updatePostedNotificationsForMessageGUIDs:v61];
  if (!v79)
  {
    v62 = IMLogHandleForCategory();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D5F14();
    }

    v63 = IMLogHandleForCategory();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      v68 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
      *v94 = 138412802;
      v95 = v73;
      v96 = 2112;
      v97 = v68;
      v98 = 2112;
      v99 = v76;
      _os_log_error_impl(&dword_22B4CC000, v63, OS_LOG_TYPE_ERROR, "partIndexes: %@ editType: %@ previousMessage: %@", v94, 0x20u);
    }

    v64 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMDMessageStoreDomain" code:0 userInfo:0];
    v65 = [MEMORY[0x277D1AAA8] sharedInstance];
    [v65 forceAutoBugCaptureWithSubType:@"Store Edited Message Failed" errorPayload:v64];
  }

  _Block_object_dispose(&buf, 8);
  v66 = *MEMORY[0x277D85DE8];

  return v79;
}

- (void)storeTranslation:(id)a3 onMessage:(id)a4 partIndex:(int64_t)a5 chat:(id)a6
{
  v14 = a4;
  v10 = a6;
  [v14 addTranslation:a3 forMessagePart:a5];
  v11 = objc_alloc_init(IMDMessageStorageContext);
  [(IMDMessageStorageContext *)v11 setForceReplace:1];
  [(IMDMessageStorageContext *)v11 setModifyError:1];
  [(IMDMessageStorageContext *)v11 setFlagMask:0];
  [(IMDMessageStorageContext *)v11 setUpdateMessageCache:1];
  [(IMDMessageStorageContext *)v11 setCalculateUnreadCount:1];
  [(IMDMessageStorageContext *)v11 setReindexMessage:1];
  [(IMDMessageStorageContext *)v11 setIncomingMessage:1];
  [(IMDMessageStorageContext *)v11 setChat:v10];
  v12 = [(IMDMessageStore *)self storeMessage:v14 context:v11 didReplaceBlock:0];
  v13 = +[IMDChatRegistry sharedInstance];
  [v13 updateStateForChat:v10 forcePost:1 shouldRebuildFailedMessageDate:0 shouldCalculateUnreadCount:1];
}

- (id)_updateAssociatedMessageItemsFromMessage:(id)a3 toMessage:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 guid];
  v9 = [v7 retractedPartIndexes];
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_initWeak(&location, self);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = sub_22B5EC764;
  v22 = &unk_278706108;
  objc_copyWeak(&v25, &location);
  v12 = v8;
  v23 = v12;
  v13 = v10;
  v24 = v13;
  [v9 enumerateIndexesUsingBlock:&v19];
  if ([v13 count])
  {
    v14 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v13;
      _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "Deleting associated message GUIDs: %@", buf, 0xCu);
    }

    v15 = [(IMDMessageStore *)self deleteMessageGUIDs:v13];
  }

  v16 = [v11 copy];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&location);

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)storeRepositionedStickerWithMetadata:(id)a3 fileTransferGUID:(id)a4 repositioningFromLocalChange:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = +[IMDFileTransferCenter sharedInstance];
  v11 = [v10 transferForGUID:v9];

  v12 = [v11 stickerUserInfo];
  v13 = [v12 mutableCopy];

  v14 = *MEMORY[0x277D1A768];
  v15 = [v13 objectForKey:*MEMORY[0x277D1A768]];
  v16 = [v15 unsignedIntegerValue];

  v17 = [v8 objectForKey:v14];
  v18 = [v17 unsignedIntegerValue];

  if (v16 >= v18)
  {
    v35 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_DEFAULT, "Don't store the new sticker user info", buf, 2u);
    }

    v33 = 0;
  }

  else
  {
    v42 = self;
    v43 = v5;
    v45 = v11;
    v46 = v9;
    v19 = *MEMORY[0x277D1A778];
    v20 = [v8 objectForKey:*MEMORY[0x277D1A778]];
    v41 = *MEMORY[0x277D1A780];
    v50 = [v8 objectForKey:?];
    v40 = *MEMORY[0x277D1A730];
    v49 = [v8 objectForKey:?];
    v39 = *MEMORY[0x277D1A728];
    v21 = [v8 objectForKey:?];
    v38 = *MEMORY[0x277D1A720];
    v22 = [v8 objectForKey:?];
    v23 = [v8 objectForKey:v14];
    v24 = *MEMORY[0x277D1A718];
    v48 = [v8 objectForKey:*MEMORY[0x277D1A718]];
    v25 = [v8 objectForKey:v24];
    v26 = v25;
    v27 = &unk_283F4E9A8;
    if (v25)
    {
      v27 = v25;
    }

    v44 = v27;

    v47 = v20;
    if (v20 && v50 && v49 && v21 && v22 && v23 && v48)
    {
      [v13 setValue:v20 forKey:v19];
      [v13 setValue:v50 forKey:v41];
      [v13 setValue:v49 forKey:v40];
      [v13 setValue:v21 forKey:v39];
      [v13 setValue:v22 forKey:v38];
      [v13 setValue:v23 forKey:v14];
      v28 = v48;
      [v13 setValue:v48 forKey:v24];
      v29 = v44;
      [v13 setValue:v44 forKey:*MEMORY[0x277D1A710]];
      [v13 setValue:MEMORY[0x277CBEC28] forKey:*MEMORY[0x277D1A758]];
      [(IMDMessageStore *)v42 _fileTransferCenter];
      v31 = v30 = v22;
      v32 = v21;
      v9 = v46;
      [v31 setUpdatedStickerUserInfo:v13 forTransfer:v46 repositioningFromLocalChange:v43];

      v33 = [v13 copy];
      v34 = v23;
      v11 = v45;
    }

    else
    {
      v34 = v23;
      v30 = v22;
      v32 = v21;
      v36 = IMLogHandleForCategory();
      v9 = v46;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D5F7C();
      }

      v33 = 0;
      v29 = v44;
      v11 = v45;
      v28 = v48;
    }

    v35 = v47;
  }

  return v33;
}

- (id)storeRepositionedStickerLocally:(id)a3
{
  v4 = a3;
  v5 = [v4 messageSummaryInfo];
  v6 = [v5 objectForKey:*MEMORY[0x277D1A048]];

  v7 = [v4 fileTransferGUIDs];

  v8 = [v7 firstObject];

  if (v6)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = [(IMDMessageStore *)self storeRepositionedStickerWithMetadata:v6 fileTransferGUID:v8 repositioningFromLocalChange:1];
  }

  return v10;
}

- (void)loadConsumedSessionPayloadsForItems:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v21 = a3;
  v3 = [v21 __imArrayByFilteringWithBlock:&unk_283F1A308];
  v4 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v6)
  {
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = [v9 pluginSessionGUID];
        if ([v4 containsObject:v10])
        {
          if (IMOSLoggingEnabled())
          {
            v11 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              v12 = [v9 balloonBundleID];
              *buf = 138412802;
              v28 = v9;
              v29 = 2112;
              v30 = v12;
              v31 = 2112;
              v32 = v10;
              _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Observed more than one unconsumed breadcrumb: %@ for '%@' session %@", buf, 0x20u);
            }
          }
        }

        else
        {
          v13 = +[IMDMessageStore sharedInstance];
          v14 = [v13 messagesWithAssociatedGUID:v10 shouldLoadAttachments:0];
          v22[0] = MEMORY[0x277D85DD0];
          v22[1] = 3221225472;
          v22[2] = sub_22B5ED23C;
          v22[3] = &unk_278706150;
          v22[4] = v9;
          v15 = [v14 __imArrayByFilteringWithBlock:v22];

          v16 = IMGetConsumedSessionPayloadsForBreadcrumbItems();
          [v9 setConsumedSessionPayloads:v16];

          if (IMOSLoggingEnabled())
          {
            v17 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              v18 = [v9 consumedSessionPayloads];
              v19 = [v18 count];
              *buf = 138412546;
              v28 = v9;
              v29 = 2048;
              v30 = v19;
              _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "History query found breadcrumb %@ with payload history: %tu items.", buf, 0x16u);
            }
          }

          [v4 addObject:v10];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v6);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)_itemClassShouldUpdateTransferForItem:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)messageRecordsToUploadToCloudKitWithFilter:(unint64_t)a3 limit:(int64_t)a4
{
  v4 = IMDMessageStoreLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEFAULT, "Trying to Load Message Records that need CK Sync", v7, 2u);
  }

  v5 = IMDMessageRecordCopyMessagesToUploadToCloudKitWithLimit();

  return v5;
}

- (id)_messagesThatNeedSyncWithCloudKitWithFilter:(unint64_t)a3 limit:(int64_t)a4 attemptCount:(unint64_t)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v9 = IMDMessageStoreLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (a5 < 0x64)
  {
    if (v10)
    {
      *buf = 134218240;
      v33 = a4;
      v34 = 2048;
      v35 = a5;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEFAULT, "load messages needing CK sync with limit %ld, attemptCount %lu", buf, 0x16u);
    }

    v9 = [(IMDMessageStore *)self messageRecordsToUploadToCloudKitWithFilter:a3 limit:a4];
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (![v9 count])
    {
      goto LABEL_24;
    }

    v30 = a5;
    v31 = a3;
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = [v9 objectAtIndex:v13];
      AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v15, 0);
      if (!AttachmentIfNeededRef)
      {
        v17 = *(v15 + 16);
        v18 = IMDMessageStoreLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v33 = v17;
          _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_DEFAULT, "**** Marking message with rowID %lld as clean ***", buf, 0xCu);
        }

        IMDMessageRecordMarkMessageWithROWIDAsSyncedWithCloudKit();
        v14 = 1;
      }

      if ([(IMDMessageStore *)self _itemClassShouldUpdateTransferForItem:AttachmentIfNeededRef])
      {
        v19 = +[IMDAttachmentStore sharedInstance];
        v20 = [v19 updateTemporaryTransferGUIDsOnMessageIfNeeded:AttachmentIfNeededRef];

        if (v20)
        {
          v21 = [AttachmentIfNeededRef guid];
          v22 = +[IMDMessageStore sharedInstance];
          v23 = [v22 itemWithGUID:v21];

          AttachmentIfNeededRef = v23;
        }
      }

      if (v12 && AttachmentIfNeededRef)
      {
        CFArrayAppendValue(v12, AttachmentIfNeededRef);
      }

      ++v13;
    }

    while ([v9 count]> v13);
    if (v14)
    {
      v24 = IMDMessageStoreLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v33 = v30;
        _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_DEFAULT, "**** We had corrupt messages amongst dirty messages. Trying to load messages again. numberOfAttempts %lu", buf, 0xCu);
      }

      v25 = [(IMDMessageStore *)self _messagesThatNeedSyncWithCloudKitWithFilter:v31 limit:a4 attemptCount:v30 + 1];
    }

    else
    {
LABEL_24:
      v26 = IMDMessageStoreLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [(__CFArray *)v12 count];
        *buf = 134217984;
        v33 = v27;
        _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_DEFAULT, "loaded %lu messages needing CK sync with limit", buf, 0xCu);
      }

      v25 = v12;
    }

    v11 = v25;
  }

  else
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEFAULT, "************* We hit max number of attempts to load dirty messages. Bailing for now", buf, 2u);
    }

    v11 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)_messagesPendingUpdateT1ToCloudKitWithLimit:(int64_t)a3 attemptCount:(unint64_t)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = IMDMessageStoreLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a4 < 0x64)
  {
    if (v7)
    {
      v12 = 134218240;
      v13 = a3;
      v14 = 2048;
      v15 = a4;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "load messages needing CK update T1 with limit %ld, attemptCount %lu", &v12, 0x16u);
    }

    updated = IMDMessageRecordCopyMessagesPendingUpdateT1ToCloudKitWithLimit();
    v6 = IMDMessageStoreLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [updated count];
      v12 = 134217984;
      v13 = v9;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "loaded %lu messages needing T1 update with limit", &v12, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "************* We hit max number of attempts to load dirty messages needing a T1 update. Bailing for now", &v12, 2u);
    }

    updated = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return updated;
}

- (id)_messagesPendingUpdateT2ToCloudKitWithLimit:(int64_t)a3 attemptCount:(unint64_t)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = IMDMessageStoreLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a4 < 0x64)
  {
    if (v7)
    {
      v12 = 134218240;
      v13 = a3;
      v14 = 2048;
      v15 = a4;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "load messages needing CK update T2 with limit %ld, attemptCount %lu", &v12, 0x16u);
    }

    updated = IMDMessageRecordCopyMessagesPendingUpdateT2ToCloudKitWithLimit();
    v6 = IMDMessageStoreLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [updated count];
      v12 = 134217984;
      v13 = v9;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "loaded %lu messages needing T2 update with limit", &v12, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "************* We hit max number of attempts to load dirty messages needing a T2 update. Bailing for now", &v12, 2u);
    }

    updated = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return updated;
}

- (id)_messagesPendingUpdateT3ToCloudKitWithLimit:(int64_t)a3 attemptCount:(unint64_t)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = IMDMessageStoreLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a4 < 0x64)
  {
    if (v7)
    {
      v12 = 134218240;
      v13 = a3;
      v14 = 2048;
      v15 = a4;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "load messages needing CK update T3 with limit %ld, attemptCount %lu", &v12, 0x16u);
    }

    updated = IMDMessageRecordCopyMessagesPendingUpdateT3ToCloudKitWithLimit();
    v6 = IMDMessageStoreLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [updated count];
      v12 = 134217984;
      v13 = v9;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "loaded %lu messages needing T3 update with limit", &v12, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "************* We hit max number of attempts to load dirty messages needing a T2 update. Bailing for now", &v12, 2u);
    }

    updated = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return updated;
}

- (void)clearMessagesTombStoneTable
{
  v2 = IMDMessageStoreLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_DEFAULT, "Clearing tombstone message table", v3, 2u);
  }

  IMDMessageRecordClearDeleteTombStones();
}

+ (void)databaseFull
{
  if ((byte_27D8CFF10 & 1) == 0)
  {
    byte_27D8CFF10 = 1;
    v3 = objc_opt_class();

    MEMORY[0x2821F9670](v3, sel__displayDatabaseFullAlert);
  }
}

+ (void)databaseNoLongerFull
{
  if (byte_27D8CFF10 == 1)
  {
    byte_27D8CFF10 = 0;
  }
}

+ (void)_displayDatabaseFullAlert
{
  v2 = MEMORY[0x277CCACA8];
  v8 = IMSharedUtilitiesFrameworkBundle();
  v3 = [v8 localizedStringForKey:@"SMS_FULL_WARNING" value:&stru_283F23018 table:@"IMSharedUtilities"];
  v4 = [v2 localizedStringWithFormat:v3, 0];
  v5 = MEMORY[0x277CCACA8];
  v6 = IMSharedUtilitiesFrameworkBundle();
  v7 = [v6 localizedStringForKey:@"DISMISS" value:&stru_283F23018 table:@"IMSharedUtilities"];
  CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, v4, 0, [v5 localizedStringWithFormat:v7, 0], 0, 0, 0);
}

- (id)recordIDsAndGUIDsToDeleteWithLimit:(int64_t)a3
{
  _sSo15IMDMessageStoreC12IMDaemonCoreE25recordIDsAndGUIDsToDelete9withLimitSaySDys11AnyHashableVypGGs5Int64V_tF_0();
  sub_22B6F0AD4(&qword_27D8CF710, qword_22B7FA230);
  v3 = sub_22B7DB8F8();

  return v3;
}

- (id)batchOfRecordIDsToDeleteWithLimit:(int64_t)a3 error:(id *)a4
{
  v5 = self;
  IMDMessageStore.batchOfRecordIDsToDelete(limit:)(a3);

  sub_22B71EEC0();
  sub_22B71EF0C();
  v6 = sub_22B7DB568();

  return v6;
}

- (void)clearTombstonesForRecordIDs:(id)a3
{
  sub_22B71EEC0();
  v4 = sub_22B7DB918();
  v5 = self;
  _sSo15IMDMessageStoreC12IMDaemonCoreE15clearTombstones12forRecordIDsySaySo10CKRecordIDCG_tF_0(v4);
}

@end