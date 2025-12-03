@interface IMDMessageStore
+ (BOOL)_updateCacheForMessageGUID:(id)d fromMessage:(id)message toMessage:(id)toMessage updateLastMessage:(BOOL)lastMessage calculateUnreadCount:(BOOL)count;
+ (IMDMessageStore)sharedInstance;
+ (id)_missingMessageReadReceiptCache;
+ (void)_displayDatabaseFullAlert;
+ (void)databaseFull;
+ (void)databaseNoLongerFull;
- (BOOL)_checkIfRecord:(id)record hasBadChatIDForMessageGUID:(id)d;
- (BOOL)_hasMessagesWithGUIDs:(id)ds;
- (BOOL)_isUnreadLoggingRateLimited;
- (BOOL)_isValidPhoneNumber:(id)number forCountryCode:(id)code;
- (BOOL)_itemClassShouldUpdateTransferForItem:(id)item;
- (BOOL)_preflightLogAllUnreadMessages;
- (BOOL)_shouldBroadcastDeltas;
- (BOOL)_shouldMarkAllMessagesAsNeedingSync;
- (BOOL)_shouldSendBackwardsCompatibleUnreadCountUpdates;
- (BOOL)canStoreItem:(id)item onService:(id)service;
- (BOOL)canStoreMessage:(id)message onService:(id)service;
- (BOOL)hasScheduledMessageForChatGUID:(id)d;
- (BOOL)hasStoredMessageWithGUID:(id)d;
- (BOOL)isAttachmentReferencedByMessage:(id)message;
- (BOOL)markMessageGUIDUnread:(id)unread;
- (BOOL)popReadReceiptForMissingGUID:(id)d;
- (BOOL)updateSyndicatedMessageWithMessageItem:(id)item newRange:(id)range;
- (BOOL)wasMessageDeduplicatedWithGUID:(id)d;
- (CKRecordZoneID)recordZoneID;
- (IMDMessageStore)init;
- (IMUnreadCountReportDelta)unreadCountReportDeltaForSetupInfo;
- (id)_cachedUnreadCountReports;
- (id)_chatsForMessageGUID:(id)d enableVerboseLogging:(BOOL)logging;
- (id)_chatsForMessageIdentifier:(int64_t)identifier;
- (id)_fileTransferGUIDsInMessageBody:(id)body;
- (id)_handleIDsForChat:(id)chat;
- (id)_handleStringsForChat:(id)chat;
- (id)_itemsForMessageRecords:(id)records handleID:(id)d useAttachmentCache:(BOOL)cache shouldLoadAttachments:(BOOL)attachments reverseOrder:(BOOL)order;
- (id)_itemsWithAssociatedGUID:(id)d shouldLoadAttachments:(BOOL)attachments;
- (id)_itemsWithGUIDs:(id)ds;
- (id)_itemsWithHandles:(id)handles onServices:(id)services messageGUID:(id)d threadIdentifier:(id)identifier limit:(unint64_t)limit onlyMessages:(BOOL)messages;
- (id)_itemsWithHandlesBeforeAndAfterGUID:(id)d handles:(id)handles onServices:(id)services numberOfMessagesBefore:(unint64_t)before numberOfMessagesAfter:(unint64_t)after threadIdentifier:(id)identifier hasMessagesBefore:(BOOL *)messagesBefore hasMessagesAfter:(BOOL *)self0;
- (id)_itemsWithRoomNames:(id)names onServices:(id)services messageGUID:(id)d threadIdentifier:(id)identifier limit:(unint64_t)limit onlyMessages:(BOOL)messages;
- (id)_logAllUnreadMessages;
- (id)_messageItemsForMessageRecords:(id)records handleID:(id)d useAttachmentCache:(BOOL)cache shouldLoadAttachments:(BOOL)attachments reverseOrder:(BOOL)order;
- (id)_messagesPendingUpdateT1ToCloudKitWithLimit:(int64_t)limit attemptCount:(unint64_t)count;
- (id)_messagesPendingUpdateT2ToCloudKitWithLimit:(int64_t)limit attemptCount:(unint64_t)count;
- (id)_messagesPendingUpdateT3ToCloudKitWithLimit:(int64_t)limit attemptCount:(unint64_t)count;
- (id)_messagesThatNeedSyncWithCloudKitWithFilter:(unint64_t)filter limit:(int64_t)limit attemptCount:(unint64_t)count;
- (id)_unreadMessagesWithHandles:(id)handles onServices:(id)services limit:(unint64_t)limit fallbackGUID:(id)d;
- (id)_unreadMessagesWithRoomNames:(id)names onServices:(id)services limit:(unint64_t)limit fallbackGUID:(id)d;
- (id)_updateAssociatedMessageItemsFromMessage:(id)message toMessage:(id)toMessage;
- (id)addEditHistoryToMessage:(id)message editedPartIndex:(int64_t)index editType:(unint64_t)type previousMessage:(id)previousMessage;
- (id)attachmentsWithHandles:(id)handles onServices:(id)services;
- (id)attachmentsWithRoomNames:(id)names onServices:(id)services;
- (id)batchOfRecordIDsToDeleteWithLimit:(int64_t)limit error:(id *)error;
- (id)batchOfRecordsToWriteWithFilter:(unint64_t)filter limit:(int64_t)limit error:(id *)error;
- (id)chatForMessage:(id)message;
- (id)chatForMessageIdentifier:(int64_t)identifier;
- (id)chatsForMessage:(id)message;
- (id)cleanUnformattedPhoneNumber:(id)number countryCode:(id)code;
- (id)deleteMessageGUIDs:(id)ds;
- (id)deleteMessageGUIDs:(id)ds inChat:(id)chat;
- (id)existingChatForMessageGUID:(id)d;
- (id)existingMessageSimilarToMessage:(id)message skipServices:(id)services skipGUIDs:(id)ds withinTimeInterval:(double)interval participants:(id)participants;
- (id)existingSOSMessageSimilarToMessage:(id)message matchingService:(id)service withinTimeInterval:(double)interval;
- (id)frequentRepliesForForChatIdentifiers:(id)identifiers onServices:(id)services limit:(unint64_t)limit;
- (id)itemWithGUID:(id)d;
- (id)itemsWithHandles:(id)handles onServices:(id)services messageGUID:(id)d numberOfMessagesBefore:(unint64_t)before numberOfMessagesAfter:(unint64_t)after threadIdentifier:(id)identifier hasMessagesBefore:(BOOL *)messagesBefore hasMessagesAfter:(BOOL *)self0;
- (id)itemsWithHandles:(id)handles onServices:(id)services messageGUID:(id)d threadIdentifier:(id)identifier limit:(unint64_t)limit;
- (id)itemsWithRoomNames:(id)names onServices:(id)services messageGUID:(id)d threadIdentifier:(id)identifier limit:(unint64_t)limit;
- (id)lastIncomingMessageForChatWithIdentifier:(id)identifier chatStyle:(unsigned __int8)style onService:(id)service;
- (id)lastMessageForChatWithRowID:(int64_t)d;
- (id)lastMessageWithHandles:(id)handles onServices:(id)services;
- (id)lastMessageWithRoomNames:(id)names onServices:(id)services;
- (id)lastTUConversationItemForChat:(id)chat;
- (id)markMessagesAsReadWithChatGUIDs:(id)ds upToGUID:(id)d readDate:(id)date fromMe:(BOOL)me;
- (id)markMessagesAsReadWithIdentifiers:(id)identifiers onServices:(id)services chatStyle:(unsigned __int8)style upToGUID:(id)d readDate:(id)date fromMe:(BOOL)me;
- (id)messageActionItemsForOriginalMessageGUID:(id)d;
- (id)messageForAttachmentGUID:(id)d;
- (id)messageRecordsToUploadToCloudKitWithFilter:(unint64_t)filter limit:(int64_t)limit;
- (id)messageWithGUID:(id)d registerAttachments:(BOOL)attachments;
- (id)messageWithReplaceMessageID:(int)d fromHandle:(id)handle onService:(id)service;
- (id)messagesInChat:(id)chat earliestDate:(id)date limit:(unint64_t)limit;
- (id)messagesWithGUIDs:(id)ds;
- (id)messagesWithReplyToGUID:(id)d;
- (id)notificationContext;
- (id)oldestMessageDateForChatIdentifiers:(id)identifiers chatStyle:(unsigned __int8)style services:(id)services;
- (id)reassignIdentifierForExistingMessageWithGUID:(id)d toNewGUID:(id)iD;
- (id)recordIDsAndGUIDsToDeleteWithLimit:(int64_t)limit;
- (id)recordZoneIDForFilter:(unint64_t)filter;
- (id)replaceCustomAcknowledgmentsWithNewMessageAcknowledgment:(id)acknowledgment associatedMessageGUID:(id)d sender:(id)sender;
- (id)replaceMessageAcknowledgmentsWithNewMessageAcknowledgment:(id)acknowledgment associatedMessageGUID:(id)d sender:(id)sender;
- (id)scheduledMessagesBatchFetcherForChat:(id)chat;
- (id)scheduledMessagesBatchFetcherForSyncState:(int64_t)state;
- (id)sortedMessageItemsWithFallbackHash:(id)hash inChat:(id)chat limit:(unint64_t)limit;
- (id)stateDictionaryForDiagnosticsRequest;
- (id)storeEditedMessage:(id)message editedPartIndex:(int64_t)index editType:(unint64_t)type previousMessage:(id)previousMessage chat:(id)chat updatedAssociatedMessageItems:(id *)items;
- (id)storeEditedMessage:(id)message editedPartIndexes:(id)indexes editType:(unint64_t)type previousMessage:(id)previousMessage chat:(id)chat updatedAssociatedMessageItems:(id *)items;
- (id)storeItem:(id)item forceReplace:(BOOL)replace;
- (id)storeMessage:(id)message context:(id)context didReplaceBlock:(id)block;
- (id)storeRepositionedStickerLocally:(id)locally;
- (id)storeRepositionedStickerWithMetadata:(id)metadata fileTransferGUID:(id)d repositioningFromLocalChange:(BOOL)change;
- (id)syncTokenStore;
- (id)unreadMessagesWithHandles:(id)handles onServices:(id)services limit:(unint64_t)limit fallbackGUID:(id)d;
- (id)unreadMessagesWithRoomNames:(id)names onServices:(id)services limit:(unint64_t)limit fallbackGUID:(id)d;
- (id)updateSyndicatedMessageWithMessageGUID:(id)d newRange:(id)range;
- (id)updateSyndicatedMessageWithSyndicationMessageAction:(id)action;
- (id)updatedMessagesForMessages:(id)messages;
- (int64_t)_calculateUnreadMessagesCountFilteredByFocus:(BOOL)focus filteredByAssistiveAccess:(BOOL)access;
- (int64_t)lastFailedMessageDate;
- (int64_t)unreadMessagesCount;
- (void)__postDBUpdate;
- (void)_clearExpiredTimeSensitiveMessages;
- (void)_deleteMessagesWithGUIDs:(id)ds chatIdentifiers:(id)identifiers style:(unsigned __int8)style onServices:(id)services batchNumber:(unint64_t)number completion:(id)completion;
- (void)_expiredTimeSensitiveMessagesDetected:(id)detected;
- (void)_fixupStoringMessageIfNecessaryWithMessage:(id)message;
- (void)_hasMarkedAllMessagesAsNeedingSync;
- (void)_needsToMarkAllMessagesAsNeedingSync;
- (void)_notifyWidgetKitTimeline:(int64_t)timeline;
- (void)_performDeferredUnreadCountRefreshIfNeeded;
- (void)_postDBUpdate;
- (void)_rebuildUnreadMessageCountRefreshingReports:(BOOL)reports guids:(id)guids delta:(id)delta;
- (void)_refreshUnreadCountControllerForGUIDs:(id)ds;
- (void)_registerTransfersWithGUIDs:(id)ds forMessageGUID:(id)d;
- (void)_resetSyncStateForMessageWithGUID:(id)d toState:(int64_t)state;
- (void)_setLastUnreadDumpToNow;
- (void)_storeAttachmentsForMessage:(id)message;
- (void)_suppressDBUpdateTimerFired;
- (void)_unreadCountControllerDidUpdate:(id)update;
- (void)_updateModificationDate;
- (void)_updateStamp;
- (void)addMissingMessageReadReceipt:(id)receipt;
- (void)cleanseAttachments;
- (void)clearLocalSyncState:(unint64_t)state;
- (void)clearMessagesTombStoneTable;
- (void)clearTombstonesForRecordIDs:(id)ds;
- (void)databaseChatSpamUpdated:(id)updated;
- (void)dealloc;
- (void)enumerateMessagesToRelayOnService:(id)service usingBlock:(id)block;
- (void)focusStateDidChange;
- (void)legacyImport:(id)import;
- (void)loadConsumedSessionPayloadsForItems:(id)items;
- (void)markMessageAsDeduplicated:(id)deduplicated;
- (void)performInitialHousekeeping;
- (void)postCountChanges;
- (void)postUrgentNotificationsForMessageGUIDs:(id)ds;
- (void)rebuildLastFailedMessageDate;
- (void)rebuildUnreadMessageCount;
- (void)recordUpdateFailedWithID:(id)d localGUID:(id)iD error:(id)error;
- (void)recordUpdateSucceededWithRecord:(id)record;
- (void)registerTransfersForMessage:(id)message;
- (void)resetLocalSyncStateIfAppropriate;
- (void)resolveUnformattedRepresentationsForHandles:(id)handles onService:(id)service message:(id)message completionBlock:(id)block;
- (void)retractPostedNotificationsForMessageGUIDs:(id)ds;
- (void)retractPostedNotificationsForMessagesMatchingChatGUIDs:(id)ds;
- (void)setSuppressDatabaseUpdates:(BOOL)updates;
- (void)signalUnreadChangeForHandle:(id)handle;
- (void)storeTranslation:(id)translation onMessage:(id)message partIndex:(int64_t)index chat:(id)chat;
- (void)updateFileTransfer:(id)transfer;
- (void)updatePostedNotificationsForMessageGUIDs:(id)ds;
- (void)updateStamp;
- (void)updateStampForGUID:(id)d;
- (void)updateStampForGUIDs:(id)ds;
- (void)updateUnformattedID:(id)d forBuddyID:(id)iD onService:(id)service;
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
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isUnreadCountRefactorEnabled = [mEMORY[0x277D1A9B8] isUnreadCountRefactorEnabled];

  if (isUnreadCountRefactorEnabled)
  {
    [(IMDMessageStore *)self _performDeferredUnreadCountRefreshIfNeeded];
    unreadCountController = [(IMDMessageStore *)self unreadCountController];
    unreadCount = [unreadCountController unreadCount];
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

    unreadCount = [(NSNumber *)self->_cachedUnreadMessageCount longLongValue];
  }

  else
  {
    mEMORY[0x277D1A9D0] = [MEMORY[0x277D1A9D0] sharedManager];
    shouldFilterUnreadMessageCount = [mEMORY[0x277D1A9D0] shouldFilterUnreadMessageCount];

    mEMORY[0x277D1A8A0] = [MEMORY[0x277D1A8A0] sharedManager];
    shouldFilterIncomingMessages = [mEMORY[0x277D1A8A0] shouldFilterIncomingMessages];

    v13 = IMOSLoggingEnabled();
    if ((shouldFilterUnreadMessageCount | shouldFilterIncomingMessages))
    {
      if (v13)
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = @"NO";
          if (shouldFilterUnreadMessageCount)
          {
            v16 = @"YES";
          }

          else
          {
            v16 = @"NO";
          }

          if (shouldFilterIncomingMessages)
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

      v17 = [(IMDMessageStore *)self _calculateUnreadMessagesCountFilteredByFocus:shouldFilterUnreadMessageCount filteredByAssistiveAccess:shouldFilterIncomingMessages & 1];
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

    unreadCount = v17;
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
  return unreadCount;
}

- (void)_performDeferredUnreadCountRefreshIfNeeded
{
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isUnreadCountRefactorEnabled = [mEMORY[0x277D1A9B8] isUnreadCountRefactorEnabled];

  if (isUnreadCountRefactorEnabled)
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
  deferredRebuildGUIDs = [(IMDMessageStore *)self deferredRebuildGUIDs];
  [deferredRebuildGUIDs removeAllObjects];

  MEMORY[0x2821F9670](self, sel__updateStamp);
}

- (void)_updateModificationDate
{
  stringGUID = [MEMORY[0x277CCACA8] stringGUID];
  [(IMDMessageStore *)self setModificationStamp:stringGUID];

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
  deferredRebuildGUIDs = [(IMDMessageStore *)self deferredRebuildGUIDs];
  [deferredRebuildGUIDs removeAllObjects];

  [(IMDMessageStore *)self rebuildUnreadMessageCountForGUIDs:0];
}

- (id)stateDictionaryForDiagnosticsRequest
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"allUnreadMessages";
  _logAllUnreadMessages = [(IMDMessageStore *)self _logAllUnreadMessages];
  v7[0] = _logAllUnreadMessages;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)_isUnreadLoggingRateLimited
{
  _lastUnreadDumpDate = [(IMDMessageStore *)self _lastUnreadDumpDate];
  v3 = _lastUnreadDumpDate;
  if (_lastUnreadDumpDate)
  {
    [_lastUnreadDumpDate timeIntervalSinceNow];
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
  date = [MEMORY[0x277CBEAA8] date];
  [(IMDMessageStore *)self _setLastUnreadDumpDate:date];
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
    synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
    v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != %d", *MEMORY[0x277D19848], 2];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_22B5094AC;
    v28[3] = &unk_2787031A0;
    v28[4] = &v29;
    [synchronousDatabase fetchUnreadMessageRecordsForChatsFilteredUsingPredicate:v3 limit:100 completionHandler:v28];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
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
          chatRecord = [v8 chatRecord];
          guid = [chatRecord guid];
          v11 = guid;
          if (guid)
          {
            v12 = guid;
          }

          else
          {
            v12 = @"nilChatGUID";
          }

          v13 = v12;

          v14 = [dictionary objectForKeyedSubscript:v13];
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

          guid2 = [v8 guid];
          v19 = guid2;
          if (guid2)
          {
            v20 = guid2;
          }

          else
          {
            v20 = @"nilMessageGUID";
          }

          [v17 addObject:v20];

          [dictionary setObject:v17 forKey:v13];
        }

        v5 = [obj countByEnumeratingWithState:&v24 objects:v35 count:16];
      }

      while (v5);
    }

    _Block_object_dispose(&v29, 8);
  }

  else
  {
    dictionary = MEMORY[0x277CBEC10];
  }

  v21 = *MEMORY[0x277D85DE8];

  return dictionary;
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
  messageRecordZoneID = [v2 messageRecordZoneID];

  return messageRecordZoneID;
}

- (id)recordZoneIDForFilter:(unint64_t)filter
{
  v4 = +[IMDRecordZoneManager sharedInstance];
  v5 = v4;
  if (filter == 4)
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

- (void)clearLocalSyncState:(unint64_t)state
{
  stateCopy = state;
  v9 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8[0] = 67109120;
      v8[1] = stateCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Clearing local messages sync state, flags 0x%x", v8, 8u);
    }
  }

  if (stateCopy)
  {
    syncTokenStore = [(IMDMessageStore *)self syncTokenStore];
    [syncTokenStore persistToken:0 forKey:@"messagesChangeToken"];
  }

  if ((stateCopy & 2) != 0)
  {
    [(IMDMessageStore *)self markAllMessagesAsNeedingCloudKitSync];
  }

  else if ((stateCopy & 0x10) != 0)
  {
    [(IMDMessageStore *)self _needsToMarkAllMessagesAsNeedingSync];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_needsToMarkAllMessagesAsNeedingSync
{
  mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
  [mEMORY[0x277D1A990] setBool:0 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A40]];
}

- (BOOL)_shouldMarkAllMessagesAsNeedingSync
{
  v12 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D1ACB8] = [MEMORY[0x277D1ACB8] sharedInstance];
  isUnderFirstDataProtectionLock = [mEMORY[0x277D1ACB8] isUnderFirstDataProtectionLock];

  if (isUnderFirstDataProtectionLock)
  {
    v4 = 0;
  }

  else
  {
    mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
    v4 = [mEMORY[0x277D1A990] getBoolFromDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A40]] ^ 1;
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
  mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
  [mEMORY[0x277D1A990] setBool:1 forDomain:*MEMORY[0x277D19A08] forKey:*MEMORY[0x277D19A40]];
}

- (id)batchOfRecordsToWriteWithFilter:(unint64_t)filter limit:(int64_t)limit error:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  error = [(IMDMessageStore *)self messagesThatNeedSyncWithCloudKitWithFilter:filter limit:limit, error];
  selfCopy = self;
  v43 = [(IMDMessageStore *)self recordZoneIDForFilter:filter];
  v8 = +[IMDCKRecordSaltManager sharedInstance];
  cachedSalt = [v8 cachedSalt];

  v38 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v41 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = error;
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
            -[IMDMessageStore markMessageAsCleanWithROWID:](selfCopy, "markMessageAsCleanWithROWID:", [v14 messageID]);
            goto LABEL_25;
          }
        }

        v15 = +[IMDChatStore sharedInstance];
        guid = [v12 guid];
        v14 = [v15 chatsGUIDsForMessageWithGUID:guid];

        v17 = +[IMDChatStore sharedInstance];
        __imFirstObject = [v14 __imFirstObject];
        v19 = [v17 chatWithGUID:__imFirstObject];

        service = [v12 service];
        v21 = [v19 cloudKitChatIDForServiceName:service];
        [v12 setCloudKitChatID:v21];

        cloudKitChatID = [v12 cloudKitChatID];
        LODWORD(v21) = cloudKitChatID == 0;

        if (v21 && IMOSLoggingEnabled())
        {
          v23 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            guid2 = [v12 guid];
            *buf = v37;
            v50 = guid2;
            _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Message %@ is orphaned (parentChatID is nil)", buf, 0xCu);
          }
        }

        v25 = [v12 copyCKRecordRepresentationWithZoneID:v43 salt:cachedSalt];
        v26 = [v25 objectAtIndexedSubscript:0];

        if (!v26)
        {
          if (IMOSLoggingEnabled())
          {
            v33 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              guid3 = [v12 guid];
              *buf = v37;
              v50 = guid3;
              _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Cannot generate CKRecord for message %@", buf, 0xCu);
            }
          }

          -[IMDMessageStore markMessageAsCleanWithROWID:](selfCopy, "markMessageAsCleanWithROWID:", [v12 messageID]);
          mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
          recordName2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.messages.sync" code:0 userInfo:0];
          [mEMORY[0x277D1AAA8] forceAutoBugCaptureWithSubType:@"FailCreateCKRecordForMessage" errorPayload:recordName2 type:@"MiCSync" context:@"Failed to create CKRecord for message"];
          goto LABEL_23;
        }

        recordID = [v26 recordID];
        recordName = [recordID recordName];
        v29 = [v41 containsObject:recordName];

        if ((v29 & 1) == 0)
        {
          guid4 = [v12 guid];
          [v38 setObject:v26 forKey:guid4];

          mEMORY[0x277D1AAA8] = [v26 recordID];
          recordName2 = [mEMORY[0x277D1AAA8] recordName];
          [v41 addObject:recordName2];
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

- (void)recordUpdateSucceededWithRecord:(id)record
{
  recordCopy = record;
  v4 = +[IMDChatRegistry sharedInstance];
  [v4 processMessageUsingCKRecord:recordCopy];
}

- (void)recordUpdateFailedWithID:(id)d localGUID:(id)iD error:(id)error
{
  v36 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  errorCopy = error;
  mEMORY[0x277D1AC70] = [MEMORY[0x277D1AC70] sharedInstance];
  v12 = +[IMDCKUtilities sharedInstance];
  v13 = [v12 extractServerRecordFromCKServerErrorRecordChanged:errorCopy];

  if (![mEMORY[0x277D1AC70] wasRecordAlreadyChanged:errorCopy])
  {
    if ([mEMORY[0x277D1AC70] wasZoneNotFound:errorCopy])
    {
      v19 = IMDMessageStoreLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        recordName = [dCopy recordName];
        *v35 = 138412546;
        *&v35[4] = recordName;
        *&v35[12] = 2112;
        *&v35[14] = iDCopy;
        _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_DEFAULT, "Zone was not found for recordName (%@) with local guid (%@)", v35, 0x16u);
      }

      selfCopy4 = self;
      v22 = iDCopy;
      v23 = 0;
      goto LABEL_22;
    }

    if ([mEMORY[0x277D1AC70] wasUnknownItem:errorCopy])
    {
      v24 = IMDMessageStoreLogHandle();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
LABEL_21:

        selfCopy4 = self;
        v22 = iDCopy;
        v23 = 2;
LABEL_22:
        [(IMDMessageStore *)selfCopy4 _resetSyncStateForMessageWithGUID:v22 toState:v23, *v35];
        goto LABEL_23;
      }

      *v35 = 0;
      v28 = "Record had invalid arguments, we'll try this record again on the next sync";
      v29 = v24;
      v30 = 2;
    }

    else
    {
      if ([mEMORY[0x277D1AC70] wasRecordArchived:errorCopy])
      {
        v31 = [(IMDMessageStore *)self _checkIfRecord:v13 hasBadChatIDForMessageGUID:iDCopy];
        v32 = IMDMessageStoreLogHandle();
        v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
        if (v31)
        {
          if (v33)
          {
            *v35 = 0;
            _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_DEFAULT, "Archived Server Record has incorrect parent Chat ID, marking record as needing T3 update", v35, 2u);
          }

          selfCopy4 = self;
          v22 = iDCopy;
          v23 = 9;
        }

        else
        {
          if (v33)
          {
            *v35 = 0;
            _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_DEFAULT, "Record was archived, marking record as synced", v35, 2u);
          }

          selfCopy4 = self;
          v22 = iDCopy;
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
      *&v35[4] = [errorCopy code];
      v28 = "Encountered an unknown error.  We'll try syncing this message again on the next sync. Error code: %llu";
      v29 = v24;
      v30 = 12;
    }

    _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_DEFAULT, v28, v35, v30);
    goto LABEL_21;
  }

  recordName2 = [dCopy recordName];
  recordID = [v13 recordID];
  recordName3 = [recordID recordName];
  v17 = [recordName2 isEqualToString:recordName3];

  if (!v17)
  {
    v24 = IMDMessageStoreLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      recordID2 = [v13 recordID];
      recordName4 = [recordID2 recordName];
      recordName5 = [dCopy recordName];
      *v35 = 138412546;
      *&v35[4] = recordName4;
      *&v35[12] = 2112;
      *&v35[14] = recordName5;
      _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_DEFAULT, "Conflicting serverRecord was different than the one being updated (server: %@, local: %@)", v35, 0x16u);
    }

    goto LABEL_21;
  }

  v18 = +[IMDChatRegistry sharedInstance];
  [v18 processMessageUsingCKRecord:v13];

LABEL_23:
  v34 = *MEMORY[0x277D85DE8];
}

- (BOOL)_checkIfRecord:(id)record hasBadChatIDForMessageGUID:(id)d
{
  recordCopy = record;
  v7 = [(IMDMessageStore *)self chatForMessageGUID:d];
  if (v7)
  {
    v8 = [recordCopy _stringForKey:@"svc"];
    v9 = [v7 cloudKitChatIDForServiceName:v8];
    parentChatIDForMessage = [recordCopy parentChatIDForMessage];
    v11 = parentChatIDForMessage;
    if (v9)
    {
      v12 = [parentChatIDForMessage isEqualToString:v9] ^ 1;

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

- (void)_resetSyncStateForMessageWithGUID:(id)d toState:(int64_t)state
{
  v9 = [(IMDMessageStore *)self itemWithGUID:d];
  [v9 setCloudKitRecordID:0];
  [v9 setCloudKitRecordChangeTag:0];
  [v9 setCloudKitSyncState:state];
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

- (void)legacyImport:(id)import
{
  v21 = *MEMORY[0x277D85DE8];
  importCopy = import;
  v5 = [importCopy _stringForKey:@"chatID"];
  if (v5)
  {
    visitedChats = [(IMDMessageStore *)self visitedChats];
    v7 = [visitedChats objectForKey:v5];

    visitedChats2 = [(IMDMessageStore *)self visitedChats];
    v9 = visitedChats2;
    if (v7)
    {
      v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "intValue") + 1}];
      [v9 setObject:v10 forKey:v5];
    }

    else
    {
      [visitedChats2 setObject:&unk_283F4E750 forKey:v5];
    }

    visitedChats3 = [(IMDMessageStore *)self visitedChats];
    v13 = [visitedChats3 objectForKey:v5];

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v17 = 138412546;
        v18 = v5;
        v19 = 1024;
        intValue = [v13 intValue];
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Found parentChatID: %@, updatedLastMessageCount: %d", &v17, 0x12u);
      }
    }

    v15 = +[IMDChatRegistry sharedInstance];
    [v15 processMessageUsingCKRecord:importCopy updatedLastMessageCount:{objc_msgSend(v13, "intValue")}];
  }

  else
  {
    v11 = +[IMDChatRegistry sharedInstance];
    [v11 processMessageUsingCKRecord:importCopy];
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
    mEMORY[0x277D192A8] = [MEMORY[0x277D192A8] sharedInstance];
    [mEMORY[0x277D192A8] addListener:v2];

    stringGUID = [MEMORY[0x277CCACA8] stringGUID];
    [(IMDMessageStore *)v2 setModificationStamp:stringGUID];

    v2->_suppressedUpdates = 0;
    mEMORY[0x277D1ADE0] = [MEMORY[0x277D1ADE0] sharedInstance];
    if ([(IMDMessageStore *)v2 _isPrimaryMessageStore])
    {
      [(IMDMessageStore *)v2 performInitialHousekeeping];
      mEMORY[0x277D1A9D0] = [MEMORY[0x277D1A9D0] sharedManager];
      [mEMORY[0x277D1A9D0] addDelegate:v2];
    }

    v7 = objc_alloc(MEMORY[0x277D1AC68]);
    v8 = [v7 initWithObject:v2 title:@"IMDChatStore-AllUnreadMessages" queue:MEMORY[0x277D85CD0]];
    [(IMDMessageStore *)v2 setStateCaptureAssistant:v8];

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(IMDMessageStore *)v2 setVisitedChats:v9];

    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isUnreadCountRefactorEnabled = [mEMORY[0x277D1A9B8] isUnreadCountRefactorEnabled];

    if (isUnreadCountRefactorEnabled && [(IMDMessageStore *)v2 _isPrimaryMessageStore])
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
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      v20 = *MEMORY[0x277D1A868];
      unreadCountController = [(IMDMessageStore *)v2 unreadCountController];
      [defaultCenter addObserver:v2 selector:sel__unreadCountControllerDidUpdate_ name:v20 object:unreadCountController];

      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 addObserver:v2 selector:sel__expiredTimeSensitiveMessagesDetected_ name:*MEMORY[0x277D1A860] object:0];

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

  mEMORY[0x277D19268] = [MEMORY[0x277D19268] sharedInstance];
  if ([mEMORY[0x277D19268] isInternalInstall])
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
  mEMORY[0x277D192A8] = [MEMORY[0x277D192A8] sharedInstance];
  [mEMORY[0x277D192A8] removeListener:self];

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

+ (BOOL)_updateCacheForMessageGUID:(id)d fromMessage:(id)message toMessage:(id)toMessage updateLastMessage:(BOOL)lastMessage calculateUnreadCount:(BOOL)count
{
  countCopy = count;
  lastMessageCopy = lastMessage;
  v46 = *MEMORY[0x277D85DE8];
  dCopy = d;
  messageCopy = message;
  toMessageCopy = toMessage;
  v14 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v43 = dCopy;
    v44 = 1024;
    v45 = countCopy;
    _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "Updating cache for message guid: %@ calculateUnreadCount %{BOOL}d", buf, 0x12u);
  }

  if (dCopy)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v15 = +[IMDChatRegistry sharedInstance];
    cachedChats = [v15 cachedChats];

    v17 = [cachedChats countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v17)
    {
      v18 = v17;
      v33 = lastMessageCopy;
      v34 = countCopy;
      v35 = toMessageCopy;
      v36 = messageCopy;
      v19 = *v38;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v38 != v19)
          {
            objc_enumerationMutation(cachedChats);
          }

          v21 = *(*(&v37 + 1) + 8 * i);
          v22 = objc_autoreleasePoolPush();
          lastMessage = [v21 lastMessage];
          guid = [lastMessage guid];
          v25 = [guid isEqualToString:dCopy];

          if (v25)
          {
            v27 = IMDatabaseLogHandle();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_DEFAULT, "  **** Updating this chat!", buf, 2u);
            }

            toMessageCopy = v35;
            messageCopy = v36;
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

        v18 = [cachedChats countByEnumeratingWithState:&v37 objects:v41 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }

      v26 = 0;
      toMessageCopy = v35;
      messageCopy = v36;
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

- (void)_storeAttachmentsForMessage:(id)message
{
  v31 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v4 = +[IMDFileTransferCenter sharedInstance];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = [messageCopy fileTransferGUIDs];
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
          guid = [messageCopy guid];
          [v10 storeAttachment:v9 associateWithMessageWithGUID:guid];

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
            guid2 = [v9 guid];
            v16 = [v14 AuxGUIDFromFileTransferGUID:guid2];
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
                guid3 = [v9 guid];
                *buf = v22;
                v29 = guid3;
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

- (void)updateFileTransfer:(id)transfer
{
  v16 = *MEMORY[0x277D85DE8];
  transferCopy = transfer;
  if (transferCopy)
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = transferCopy;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEFAULT, "Updating transfer: %@", &v14, 0xCu);
    }

    v5 = +[IMDAttachmentStore sharedInstance];
    [v5 storeAttachment:transferCopy associateWithMessageWithGUID:0];

    v6 = +[IMDAttachmentStore sharedInstance];
    guid = [transferCopy guid];
    v8 = [v6 attachmentWithGUID:guid];

    messageGUID = [transferCopy messageGUID];
    [v8 setMessageGUID:messageGUID];

    v10 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "Posting resulting transfer to clients; %@", &v14, 0xCu);
    }

    v11 = +[IMDFileTransferCenter sharedInstance];
    guid2 = [v8 guid];
    [v11 addTransfer:v8 forGUID:guid2];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)storeItem:(id)item forceReplace:(BOOL)replace
{
  v30 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v6 = itemCopy;
  if (itemCopy)
  {
    v7 = itemCopy;
    v8 = +[IMDServiceController sharedController];
    service = [v7 service];
    v10 = [v8 serviceWithName:service];

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
      guid = [v7 guid];
      v14 = IMSingleObjectArray();
      v15 = [(IMDMessageStore *)self _itemsWithGUIDs:v14];

      if ([v15 count])
      {
        lastObject = [v15 lastObject];
        if (lastObject)
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
        handle = [v7 handle];
        AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v20, handle);

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

- (id)updateSyndicatedMessageWithSyndicationMessageAction:(id)action
{
  v17 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  if (actionCopy)
  {
    v5 = [objc_alloc(MEMORY[0x277D1AA98]) initWithSyndicationAction:actionCopy];
    messagePartGUID = [actionCopy messagePartGUID];
    messageGUID = [messagePartGUID messageGUID];
    v8 = [(IMDMessageStore *)self updateSyndicatedMessageWithMessageGUID:messageGUID newRange:v5];

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
        v14 = actionCopy;
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
        v14 = actionCopy;
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

- (id)updateSyndicatedMessageWithMessageGUID:(id)d newRange:(id)range
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  rangeCopy = range;
  if (!dCopy)
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D5ADC();
    }

    goto LABEL_19;
  }

  v8 = [(IMDMessageStore *)self messageWithGUID:dCopy];
  if (!v8)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v18 = 138412290;
        v19 = dCopy;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Message not found for syndication action for guid: %@", &v18, 0xCu);
      }

      goto LABEL_18;
    }

LABEL_19:
    v13 = 0;
    goto LABEL_20;
  }

  v9 = [(IMDMessageStore *)self updateSyndicatedMessageWithMessageItem:v8 newRange:rangeCopy];
  v10 = IMOSLoggingEnabled();
  if (!v9)
  {
    if (v10)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        guid = [v8 guid];
        v18 = 138412546;
        v19 = guid;
        v20 = 2112;
        v21 = rangeCopy;
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
      guid2 = [v8 guid];
      v18 = 138412546;
      v19 = guid2;
      v20 = 2112;
      v21 = rangeCopy;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Updated syndication ranges for message item with guid %@. newRange: %@", &v18, 0x16u);
    }
  }

  v8 = v8;
  v13 = v8;
LABEL_20:

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

- (BOOL)updateSyndicatedMessageWithMessageItem:(id)item newRange:(id)range
{
  v32[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  rangeCopy = range;
  v8 = rangeCopy;
  if (!itemCopy)
  {
    syndicationRanges = IMLogHandleForCategory();
    if (os_log_type_enabled(syndicationRanges, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D5B54();
    }

    goto LABEL_14;
  }

  if (!rangeCopy)
  {
    syndicationRanges = IMLogHandleForCategory();
    if (os_log_type_enabled(syndicationRanges, OS_LOG_TYPE_ERROR))
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
      guid = [itemCopy guid];
      *buf = 138412546;
      v27 = guid;
      v28 = 2112;
      v29 = v8;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Updating syndication ranges for message item with guid %@. newRange: %@", buf, 0x16u);
    }
  }

  syndicationRanges = [itemCopy syndicationRanges];
  v25 = 0;
  v12 = MEMORY[0x277D1AA98];
  v32[0] = v8;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
  v14 = [v12 updateMessagesRanges:syndicationRanges withMessagePartSyndicationRanges:v13 didUpdate:&v25];

  if (v25 == 1)
  {
    [itemCopy setSyndicationRanges:v14];
    LOWORD(v24) = 256;
    v15 = [(IMDMessageStore *)self storeMessage:itemCopy forceReplace:1 modifyError:0 modifyFlags:0 flagMask:0 updateMessageCache:1 calculateUnreadCount:v24 reindexMessage:?];
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      guid2 = [itemCopy guid];
      *buf = 138412290;
      v27 = guid2;
      _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Updated syndication ranges for message: %@", buf, 0xCu);
    }
  }

  else
  {
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      guid3 = [itemCopy guid];
      v20 = [v8 description];
      v21 = [syndicationRanges componentsJoinedByString:@", \n"];
      *buf = 138412802;
      v27 = guid3;
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

- (void)_fixupStoringMessageIfNecessaryWithMessage:(id)message
{
  messageCopy = message;
  if ([messageCopy scheduleType] == 2 && objc_msgSend(messageCopy, "errorCode") && objc_msgSend(messageCopy, "scheduleState") != 4)
  {
    v6 = IMDMessageStoreLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D5B90();
    }

    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMDMessageStoreDomain" code:objc_msgSend(messageCopy userInfo:{"errorCode"), 0}];
    mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
    [mEMORY[0x277D1AAA8] forceAutoBugCaptureWithSubType:@"MessageStore attempted to store scheduled message with an invalid scheduleState" errorPayload:v7 type:@"ScheduledMessageFailureStateNotSet" context:0];

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"IMDMessageStore.m" lineNumber:716 description:{@"Scheduled message is marked as a failure, but didn't transition the scheduleState"}];

    [messageCopy setScheduleState:4];
  }
}

- (id)storeMessage:(id)message context:(id)context didReplaceBlock:(id)block
{
  v77 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  contextCopy = context;
  blockCopy = block;
  if (!messageCopy)
  {
    AttachmentIfNeededRef = 0;
    goto LABEL_70;
  }

  if ([contextCopy isCloudImport])
  {
LABEL_3:
    context = objc_autoreleasePoolPush();
    [(IMDMessageStore *)self _fixupStoringMessageIfNecessaryWithMessage:messageCopy];
    IsFull = IMDSMSRecordIsFull();
    guid = [messageCopy guid];
    v13 = IMSingleObjectArray();
    v14 = [(IMDMessageStore *)self _itemsWithGUIDs:v13];

    v65 = v14;
    if ([v14 count])
    {
      lastObject = [v14 lastObject];
      v16 = lastObject;
      v62 = lastObject != 0;
      if (lastObject)
      {
        v17 = [lastObject copy];
        [contextCopy forceReplace];
        [contextCopy modifyError];
        [contextCopy modifyFlags];
        [contextCopy flagMask];
        [contextCopy flagMask];
        AttachmentIfNeededRef = IMDUpdateIMMessageItemWithIMMessageItemForceReplaceReplaceError();
        if (blockCopy)
        {
          blockCopy[2](blockCopy, v17, AttachmentIfNeededRef);
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

      [(IMDMessageStore *)self _storeAttachmentsForMessage:messageCopy];
      if ([messageCopy isFromMe])
      {
        [messageCopy handle];
      }

      else
      {
        [messageCopy sender];
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
    retractedPartIndexes = [AttachmentIfNeededRef retractedPartIndexes];
    v34 = [retractedPartIndexes count];

    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isInboxSummaryEnabled = [mEMORY[0x277D1A9B8] isInboxSummaryEnabled];

    if (isInboxSummaryEnabled && v34)
    {
      guid2 = [AttachmentIfNeededRef guid];
      v38 = [(IMDMessageStore *)self chatForMessageGUID:guid2];

      if (v38)
      {
        v73 = *MEMORY[0x277D197B8];
        null = [MEMORY[0x277CBEB68] null];
        v74 = null;
        v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
        [v38 updateProperties:v40 shouldBroadcast:1];
      }
    }

    v41 = v65;
    if ([contextCopy reindexMessage])
    {
      v61 = IsFull;
      guid3 = [AttachmentIfNeededRef guid];
      if ([guid3 length])
      {
        isFullyRetracted = [AttachmentIfNeededRef isFullyRetracted];
        reindexReason = [contextCopy reindexReason];
        if ([contextCopy isCloudImport])
        {
          v45 = 1001;
        }

        else if ([contextCopy isIncomingMessage])
        {
          v45 = 1000;
        }

        else
        {
          v45 = reindexReason;
        }

        queryProvider = [MEMORY[0x277D18EC0] queryProvider];
        if (isFullyRetracted)
        {
          v72 = guid3;
          v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v72 count:1];
          v48 = [MEMORY[0x277D18EB8] contextWithReason:v45];
          v68[0] = MEMORY[0x277D85DD0];
          v68[1] = 3221225472;
          v68[2] = sub_22B5DD724;
          v68[3] = &unk_278703C58;
          v49 = &v69;
          v69 = guid3;
          [queryProvider deleteMessageGUIDs:v47 context:v48 completionHandler:v68];
        }

        else
        {
          v71 = guid3;
          v47 = [MEMORY[0x277CBEA60] arrayWithObjects:&v71 count:1];
          v48 = [MEMORY[0x277D18EB8] contextWithReason:v45];
          v66[0] = MEMORY[0x277D85DD0];
          v66[1] = 3221225472;
          v66[2] = sub_22B5DD818;
          v66[3] = &unk_278703C58;
          v49 = &v67;
          v67 = guid3;
          [queryProvider addMessageGUIDs:v47 context:v48 completionHandler:v66];
        }

        v41 = v65;
      }

      IsFull = v61;
    }

    objc_autoreleasePoolPop(context);
    v70[0] = 0;
    v70[1] = 0;
    guid4 = [AttachmentIfNeededRef guid];
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

    if ([contextCopy updateMessageCache])
    {
      guid5 = [AttachmentIfNeededRef guid];
      +[IMDMessageStore _updateCacheForMessageGUID:fromMessage:toMessage:updateLastMessage:calculateUnreadCount:](IMDMessageStore, "_updateCacheForMessageGUID:fromMessage:toMessage:updateLastMessage:calculateUnreadCount:", guid5, messageCopy, AttachmentIfNeededRef, 1, [contextCopy calculateUnreadCount]);
    }

    [(IMDMessageStore *)self _storeAttachmentsForMessage:AttachmentIfNeededRef];
    chat = [contextCopy chat];

    if (chat)
    {
      chat2 = [contextCopy chat];
      guid6 = [chat2 guid];
      [(IMDMessageStore *)self updateStampForGUID:guid6];
    }

    else
    {
      [(IMDMessageStore *)self updateStamp];
    }

    sub_22B5DC120(IsFull != 0, v63 != 0);
    notificationIDSTokenURI = [messageCopy notificationIDSTokenURI];
    [AttachmentIfNeededRef setNotificationIDSTokenURI:notificationIDSTokenURI];

    goto LABEL_70;
  }

  v19 = messageCopy;
  v20 = +[IMDServiceController sharedController];
  service = [v19 service];
  v22 = [v20 serviceWithName:service];

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

  isRCSEncryptionTest = [v19 isRCSEncryptionTest];

  if (!isRCSEncryptionTest)
  {
    goto LABEL_3;
  }

LABEL_25:
  isTypingMessage = [v19 isTypingMessage];
  v28 = IMDatabaseLogHandle();
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
  if (isTypingMessage)
  {
    if (v29)
    {
      guid7 = [v19 guid];
      *buf = 138412546;
      *v76 = guid7;
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

- (void)updateUnformattedID:(id)d forBuddyID:(id)iD onService:(id)service
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  serviceCopy = service;
  if ([dCopy length] && objc_msgSend(iDCopy, "length") && objc_msgSend(serviceCopy, "length") && (objc_msgSend(dCopy, "isEqualToIgnoringCase:", iDCopy) & 1) == 0)
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
        v15 = iDCopy;
        v16 = 2112;
        v17 = dCopy;
        v18 = 2112;
        v19 = serviceCopy;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEFAULT, "Updated from %@->%@  on service: %@", &v14, 0x20u);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_itemsForMessageRecords:(id)records handleID:(id)d useAttachmentCache:(BOOL)cache shouldLoadAttachments:(BOOL)attachments reverseOrder:(BOOL)order
{
  v29 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  dCopy = d;
  if (recordsCopy)
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(recordsCopy, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v23 = recordsCopy;
    if (order)
    {
      reverseObjectEnumerator = [recordsCopy reverseObjectEnumerator];
    }

    else
    {
      reverseObjectEnumerator = recordsCopy;
    }

    v13 = reverseObjectEnumerator;
    v14 = [reverseObjectEnumerator countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v18, dCopy);
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

    recordsCopy = v23;
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  v21 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_messageItemsForMessageRecords:(id)records handleID:(id)d useAttachmentCache:(BOOL)cache shouldLoadAttachments:(BOOL)attachments reverseOrder:(BOOL)order
{
  v29 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  dCopy = d;
  if (recordsCopy)
  {
    v23 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(recordsCopy, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    if (order)
    {
      reverseObjectEnumerator = [recordsCopy reverseObjectEnumerator];
    }

    else
    {
      reverseObjectEnumerator = recordsCopy;
    }

    v12 = reverseObjectEnumerator;
    v13 = [reverseObjectEnumerator countByEnumeratingWithState:&v24 objects:v28 count:{16, recordsCopy}];
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
          AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v17, dCopy);
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

    recordsCopy = v22;
  }

  else
  {
    v23 = MEMORY[0x277CBEBF8];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v23;
}

- (BOOL)_hasMessagesWithGUIDs:(id)ds
{
  dsCopy = ds;
  v4 = objc_autoreleasePoolPush();
  v5 = IMDMessageRecordCopyMessagesForGUIDs();
  v6 = [v5 count] != 0;

  objc_autoreleasePoolPop(v4);
  return v6;
}

- (id)_itemsWithAssociatedGUID:(id)d shouldLoadAttachments:(BOOL)attachments
{
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
  context = objc_autoreleasePoolPush();
  v23 = dCopy;
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
            associatedMessageGUID = [v11 associatedMessageGUID];
            v13 = [associatedMessageGUID isEqualToString:v23];

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
                  associatedMessageGUID2 = [v11 associatedMessageGUID];
                  associatedMessageGUID3 = [v9 associatedMessageGUID];
                  *buf = 138412546;
                  v29 = associatedMessageGUID2;
                  v30 = 2112;
                  v31 = associatedMessageGUID3;
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

- (id)_itemsWithGUIDs:(id)ds
{
  v36 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  context = objc_autoreleasePoolPush();
  v4 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:dsCopy];
  v23 = dsCopy;
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
          guid = [AttachmentIfNeededRef guid];
          if ([v4 containsObject:guid])
          {

LABEL_10:
            [v24 addObject:v11];
            goto LABEL_11;
          }

          service = [v11 service];
          v14 = [service isEqualToIgnoringCase:*MEMORY[0x277D1A610]];

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
              guid2 = [v11 guid];
              guid3 = [v9 guid];
              *buf = 138412802;
              v30 = guid2;
              v31 = 2112;
              v32 = guid3;
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

- (id)_itemsWithHandles:(id)handles onServices:(id)services messageGUID:(id)d threadIdentifier:(id)identifier limit:(unint64_t)limit onlyMessages:(BOOL)messages
{
  messagesCopy = messages;
  v42 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  servicesCopy = services;
  dCopy = d;
  identifierCopy = identifier;
  v18 = objc_autoreleasePoolPush();
  v19 = objc_alloc_init(MEMORY[0x277D192C0]);
  [v19 startTimingForKey:@"history query"];
  v20 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 138413570;
    v31 = dCopy;
    v32 = 2112;
    v33 = handlesCopy;
    v34 = 2112;
    v35 = servicesCopy;
    v36 = 2048;
    limitCopy = limit;
    v38 = 2112;
    v39 = identifierCopy;
    v40 = 1024;
    v41 = messagesCopy;
    _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_DEFAULT, "Requesting history with guid: %@ handles: %@ services: %@ limit: %llu thread identifier: %@ only messages: %{BOOL}d", &v30, 0x3Au);
  }

  v21 = IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesUpToGUIDOrLimitWithOptionalThreadIdentifier();
  [v19 stopTimingForKey:@"history query"];
  [v19 startTimingForKey:@"generate chat items"];
  v22 = [handlesCopy count];
  if (v22 == 1)
  {
    firstObject = [handlesCopy firstObject];
  }

  else
  {
    firstObject = 0;
  }

  v24 = [(IMDMessageStore *)self _itemsForMessageRecords:v21 handleID:firstObject useAttachmentCache:1 shouldLoadAttachments:1 reverseOrder:1];
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

- (id)_itemsWithRoomNames:(id)names onServices:(id)services messageGUID:(id)d threadIdentifier:(id)identifier limit:(unint64_t)limit onlyMessages:(BOOL)messages
{
  limitCopy = limit;
  v33 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  servicesCopy = services;
  dCopy = d;
  identifierCopy = identifier;
  v17 = objc_autoreleasePoolPush();
  v18 = IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesUpToGUIDOrLimitWithOptionalThreadIdentifier();
  v19 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138413058;
    v26 = namesCopy;
    v27 = 2112;
    v28 = servicesCopy;
    v29 = 1024;
    v30 = limitCopy;
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

- (id)_itemsWithHandlesBeforeAndAfterGUID:(id)d handles:(id)handles onServices:(id)services numberOfMessagesBefore:(unint64_t)before numberOfMessagesAfter:(unint64_t)after threadIdentifier:(id)identifier hasMessagesBefore:(BOOL *)messagesBefore hasMessagesAfter:(BOOL *)self0
{
  v43 = *MEMORY[0x277D85DE8];
  dCopy = d;
  handlesCopy = handles;
  servicesCopy = services;
  identifierCopy = identifier;
  context = objc_autoreleasePoolPush();
  v20 = objc_alloc_init(MEMORY[0x277D192C0]);
  [v20 startTimingForKey:@"paged history query"];
  v21 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413570;
    v33 = dCopy;
    v34 = 2112;
    v35 = handlesCopy;
    v36 = 2112;
    v37 = servicesCopy;
    v38 = 2048;
    *v39 = before;
    *&v39[8] = 2048;
    afterCopy = after;
    v41 = 2112;
    v42 = identifierCopy;
    _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_DEFAULT, "Requesting history with guid: %@ handles: %@ services: %@ number before: %llu number after: %llu thread identifier: %@", buf, 0x3Eu);
  }

  v22 = IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesBeforeAndAfterGUIDWithOptionalThreadIdentifier();
  [v20 stopTimingForKey:@"paged history query"];
  v23 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [v22 count];
    *buf = 138413570;
    v33 = handlesCopy;
    v34 = 2112;
    v35 = servicesCopy;
    v36 = 2112;
    v37 = dCopy;
    v38 = 1024;
    *v39 = before;
    *&v39[4] = 1024;
    *&v39[6] = after;
    LOWORD(afterCopy) = 1024;
    *(&afterCopy + 2) = v24;
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

- (id)_unreadMessagesWithHandles:(id)handles onServices:(id)services limit:(unint64_t)limit fallbackGUID:(id)d
{
  limitCopy = limit;
  v31 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  servicesCopy = services;
  dCopy = d;
  v13 = objc_autoreleasePoolPush();
  v14 = IMDMessageRecordCopyUnreadIncomingMessagesWithChatIdentifiersOnServicesToLimitFallbackGUID();
  v15 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138413058;
    v24 = handlesCopy;
    v25 = 2112;
    v26 = servicesCopy;
    v27 = 1024;
    v28 = limitCopy;
    v29 = 2112;
    v30 = v14;
    _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_DEFAULT, "_unreadMessagesWithHandles: %@ onServices %@ limit %d recordStoreRecords: %@", &v23, 0x26u);
  }

  v16 = [handlesCopy count];
  if (v16 == 1)
  {
    firstObject = [handlesCopy firstObject];
  }

  else
  {
    firstObject = 0;
  }

  v18 = [(IMDMessageStore *)self _messageItemsForMessageRecords:v14 handleID:firstObject useAttachmentCache:1 shouldLoadAttachments:1 reverseOrder:1];
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

- (id)_unreadMessagesWithRoomNames:(id)names onServices:(id)services limit:(unint64_t)limit fallbackGUID:(id)d
{
  limitCopy = limit;
  v31 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  servicesCopy = services;
  dCopy = d;
  v13 = objc_autoreleasePoolPush();
  v14 = IMDMessageRecordCopyUnreadIncomingMessagesWithChatIdentifiersOnServicesToLimitFallbackGUID();
  v15 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138413314;
    v22 = namesCopy;
    v23 = 2112;
    v24 = servicesCopy;
    v25 = 1024;
    v26 = limitCopy;
    v27 = 2112;
    v28 = dCopy;
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

- (void)registerTransfersForMessage:(id)message
{
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = messageCopy;
    fileTransferGUIDs = [v4 fileTransferGUIDs];
    guid = [v4 guid];
    [(IMDMessageStore *)self _registerTransfersWithGUIDs:fileTransferGUIDs forMessageGUID:guid];

    threadOriginator = [v4 threadOriginator];

    if (threadOriginator)
    {
      threadOriginator2 = [v4 threadOriginator];
      fileTransferGUIDs2 = [threadOriginator2 fileTransferGUIDs];
      guid2 = [threadOriginator2 guid];
      [(IMDMessageStore *)self _registerTransfersWithGUIDs:fileTransferGUIDs2 forMessageGUID:guid2];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)_registerTransfersWithGUIDs:(id)ds forMessageGUID:(id)d
{
  v41 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  dCopy = d;
  v28 = [dsCopy count];
  if (v28)
  {
    v8 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v36 = [dsCopy count];
      v37 = 2112;
      v38 = dsCopy;
      v39 = 2112;
      v40 = dCopy;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "Ensure transfers(count=%lu) with GUIDs registered: %@ for message: %@", buf, 0x20u);
    }

    v27 = dCopy;

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v26 = dsCopy;
    obj = dsCopy;
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
          _fileTransferCenter = [(IMDMessageStore *)self _fileTransferCenter];
          v17 = [_fileTransferCenter transferForGUID:v15];

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
            _fileTransferCenter2 = [(IMDMessageStore *)self _fileTransferCenter];
            [_fileTransferCenter2 addTransfer:v17 forGUID:v15];
          }

          else
          {
            v20 = +[IMDAttachmentStore sharedInstance];
            _fileTransferCenter2 = [v20 attachmentWithGUID:v15];

            v21 = IMDatabaseLogHandle();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v36 = _fileTransferCenter2;
              _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_DEFAULT, "Found saved transfer from DB: %@", buf, 0xCu);
            }

            if (_fileTransferCenter2)
            {
              if (v27)
              {
                [_fileTransferCenter2 setMessageGUID:?];
              }

              v22 = IMDatabaseLogHandle();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v36 = _fileTransferCenter2;
                _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_DEFAULT, "New transfer: %@", buf, 0xCu);
              }

              _fileTransferCenter3 = [(IMDMessageStore *)self _fileTransferCenter];
              [_fileTransferCenter3 addTransfer:_fileTransferCenter2 forGUID:v15];
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

    dsCopy = v26;
    dCopy = v27;
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (id)messagesWithGUIDs:(id)ds
{
  v26 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  if ([dsCopy count])
  {
    context = objc_autoreleasePoolPush();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [(IMDMessageStore *)self _itemsWithGUIDs:dsCopy];
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
      v24 = dsCopy;
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

- (id)sortedMessageItemsWithFallbackHash:(id)hash inChat:(id)chat limit:(unint64_t)limit
{
  v21[1] = *MEMORY[0x277D85DE8];
  hashCopy = hash;
  chatCopy = chat;
  if (chatCopy)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = objc_autoreleasePoolPush();
    v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D19F88] ascending:0];
    hashCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %@", *MEMORY[0x277D19F90], hashCopy];
    synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
    guid = [chatCopy guid];
    v21[0] = v10;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_22B5E0468;
    v19[3] = &unk_2787042B8;
    v15 = v8;
    v20 = v15;
    [synchronousDatabase fetchMessageRecordsForChatRecordWithGUID:guid filteredUsingPredicate:hashCopy sortedUsingDescriptors:v14 limit:1 completionHandler:v19];

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

- (BOOL)canStoreItem:(id)item onService:(id)service
{
  v14 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if (itemCopy)
  {
    v5 = +[IMDServiceController sharedController];
    service = [itemCopy service];
    v7 = [v5 serviceWithName:service];

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

- (BOOL)canStoreMessage:(id)message onService:(id)service
{
  v16 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = messageCopy;
  if (messageCopy)
  {
    v6 = messageCopy;
    v7 = +[IMDServiceController sharedController];
    service = [v6 service];
    v9 = [v7 serviceWithName:service];

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

- (BOOL)hasStoredMessageWithGUID:(id)d
{
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (dCopy)
  {
    v5 = IMSingleObjectArray();
    v6 = [(IMDMessageStore *)self _hasMessagesWithGUIDs:v5];

    v7 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = dCopy;
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

- (id)itemWithGUID:(id)d
{
  v16[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    v16[0] = dCopy;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    v7 = [(IMDMessageStore *)self _itemsWithGUIDs:v6];
    firstObject = [v7 firstObject];

    v9 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v5;
      v14 = 2048;
      v15 = firstObject;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEFAULT, "Fetched item from database for guid (%@): %p", &v12, 0x16u);
    }
  }

  else
  {
    firstObject = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (id)messageWithGUID:(id)d registerAttachments:(BOOL)attachments
{
  attachmentsCopy = attachments;
  v206 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v6 = [(IMDMessageStore *)self itemWithGUID:?];
  if ([v6 type])
  {

    v6 = 0;
  }

  else if (attachmentsCopy)
  {
    [(IMDMessageStore *)self registerTransfersForMessage:v6];
  }

  v7 = v6;
  v8 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    isFromMe = [v7 isFromMe];
    sender = [v7 sender];
    service = [v7 service];
    encrypted = [v7 encrypted];
    handle = [v7 handle];
    destinationCallerID = [v7 destinationCallerID];
    unformattedID = [v7 unformattedID];
    countryCode = [v7 countryCode];
    roomName = [v7 roomName];
    flags = [v7 flags];
    messageID = [v7 messageID];
    sortID = [v7 sortID];
    time = [v7 time];
    [time timeIntervalSinceReferenceDate];
    v12 = v11;
    timeDelivered = [v7 timeDelivered];
    [timeDelivered timeIntervalSinceReferenceDate];
    v14 = v13;
    timeRead = [v7 timeRead];
    [timeRead timeIntervalSinceReferenceDate];
    v16 = v15;
    timePlayed = [v7 timePlayed];
    [timePlayed timeIntervalSinceReferenceDate];
    v18 = v17;
    fileTransferGUIDs = [v7 fileTransferGUIDs];
    isEmpty = [v7 isEmpty];
    isFinished = [v7 isFinished];
    isSent = [v7 isSent];
    isRead = [v7 isRead];
    isDelivered = [v7 isDelivered];
    scheduleType = [v7 scheduleType];
    scheduleState = [v7 scheduleState];
    isAudioMessage = [v7 isAudioMessage];
    isPlayed = [v7 isPlayed];
    isFromMe2 = [v7 isFromMe];
    hasDataDetectorResults = [v7 hasDataDetectorResults];
    wasDataDetected = [v7 wasDataDetected];
    wasDowngraded = [v7 wasDowngraded];
    isEmote = [v7 isEmote];
    isExpirable = [v7 isExpirable];
    expireState = [v7 expireState];
    balloonBundleID = [v7 balloonBundleID];
    expressiveSendStyleID = [v7 expressiveSendStyleID];
    timeExpressiveSendPlayed = [v7 timeExpressiveSendPlayed];
    bizIntent = [v7 bizIntent];
    locale = [v7 locale];
    biaReferenceID = [v7 biaReferenceID];
    errorCode = [v7 errorCode];
    cloudKitSyncState = [v7 cloudKitSyncState];
    isCorrupt = [v7 isCorrupt];
    shouldSendMeCard = [v7 shouldSendMeCard];
    isSpam = [v7 isSpam];
    hasUnseenMention = [v7 hasUnseenMention];
    threadIdentifier = [v7 threadIdentifier];
    threadOriginator = [v7 threadOriginator];
    replyCountsByPart = [v7 replyCountsByPart];
    isStewie = [v7 isStewie];
    stewieConversationID = [v7 stewieConversationID];
    syndicationRanges = [v7 syndicationRanges];
    v36 = [syndicationRanges componentsJoinedByString:{@", "}];
    syncedSyndicationRanges = [v7 syncedSyndicationRanges];
    v35 = [syncedSyndicationRanges componentsJoinedByString:{@", "}];
    dateEdited = [v7 dateEdited];
    [dateEdited timeIntervalSinceReferenceDate];
    v25 = v24;
    dateRecovered = [v7 dateRecovered];
    [dateRecovered timeIntervalSinceReferenceDate];
    v27 = v26;
    groupActivity = [v7 groupActivity];
    wasDetonated = [v7 wasDetonated];
    isSOS = [v7 isSOS];
    isCritical = [v7 isCritical];
    fallbackHash = [v7 fallbackHash];
    v28 = [fallbackHash length];
    v89 = isFromMe;
    v95 = encrypted;
    v107 = flags;
    v109 = messageID;
    v111 = sortID;
    *buf = 138427394;
    v87 = dCopy;
    v123 = isEmpty;
    v88 = 1024;
    v125 = isFinished;
    v90 = 2112;
    v91 = sender;
    v92 = 2112;
    v93 = service;
    v94 = 1024;
    v96 = 2112;
    v97 = handle;
    v98 = 2112;
    v99 = destinationCallerID;
    v100 = 2112;
    v101 = unformattedID;
    v102 = 2112;
    v103 = countryCode;
    v104 = 2112;
    v105 = roomName;
    v127 = isSent;
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
    v121 = fileTransferGUIDs;
    v122 = 1024;
    v124 = 1024;
    v126 = 1024;
    v128 = 1024;
    v129 = isRead;
    v130 = 1024;
    v131 = isDelivered;
    v132 = 2048;
    v133 = scheduleType;
    v134 = 2048;
    v135 = scheduleState;
    v136 = 1024;
    v137 = isAudioMessage;
    v138 = 1024;
    v139 = isPlayed;
    v140 = 1024;
    v141 = isFromMe2;
    v142 = 1024;
    v143 = hasDataDetectorResults;
    v144 = 1024;
    v145 = wasDataDetected;
    v146 = 1024;
    v147 = wasDowngraded;
    v148 = 1024;
    v149 = isEmote;
    v150 = 1024;
    v151 = isExpirable;
    v152 = 1024;
    v153 = expireState;
    v154 = 2112;
    v155 = balloonBundleID;
    v156 = 2112;
    v157 = expressiveSendStyleID;
    v158 = 2112;
    v159 = timeExpressiveSendPlayed;
    v160 = 2112;
    v161 = bizIntent;
    v162 = 2112;
    v163 = locale;
    v164 = 2112;
    v165 = biaReferenceID;
    v166 = 1024;
    v167 = errorCode;
    v168 = 2048;
    v169 = cloudKitSyncState;
    v170 = 1024;
    v171 = isCorrupt;
    v172 = 1024;
    v173 = shouldSendMeCard;
    v174 = 1024;
    v175 = isSpam;
    v176 = 1024;
    v177 = hasUnseenMention;
    v178 = 2112;
    v179 = threadIdentifier;
    v180 = 2112;
    v181 = threadOriginator;
    v182 = 2112;
    v183 = replyCountsByPart;
    v184 = 1024;
    v185 = isStewie;
    v186 = 2048;
    v187 = stewieConversationID;
    v188 = 2112;
    v189 = v36;
    v190 = 2112;
    v191 = v35;
    v192 = 2048;
    v193 = v25;
    v194 = 2048;
    v195 = v27;
    v196 = 1024;
    v197 = groupActivity != 0;
    v198 = 1024;
    v199 = wasDetonated;
    v200 = 1024;
    v201 = isSOS;
    v202 = 1024;
    v203 = isCritical;
    v204 = 2048;
    v205 = v28;
    _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEFAULT, "Stored message for guid (%@): IMMessageItem[outgoing: %{BOOL}d sender=%@; service=%@; encrypted=%{BOOL}d; handle=%@; destinationCallerID= %@, unformatted=%@; country=%@; roomName='%@'; flags=0x%llx; messageID: %lld sortID: %lu date:'%f' date-delivered:'%f' date-read:'%f' date-played:'%f' transfer guids: '%@' empty: %{BOOL}d finished: %{BOOL}d sent: %{BOOL}d read: %{BOOL}d delivered: %{BOOL}d scheduleType: %lu, scheduleState: %lu, audio: %{BOOL}d played: %{BOOL}d from-me: %{BOOL}d DD results: %{BOOL}d DD Scanned: %{BOOL}d Downgraded: %{BOOL}d emote: %{BOOL}d expirable: %{BOOL}d expire-state: %d balloon-bundle-id: %@ expressive-send-style-id: %@ time-expressive-send-played: %@ bizIntent: %@ locale: %@ biaReferenceID: %@ error: %d sync-state %lli corrupt: %{BOOL}d shouldSendMeCard: %{BOOL}d isSpam: %{BOOL}d hasUnseenMention: %{BOOL}d threadIdentifier: %@, threadOriginator: %@, replyCountsByPart: %@, isChoros: %{BOOL}d, chorosConversationID: %ld, syndicationRanges: %@, syncedSyndicationRanges: %@, dateEdited: '%f', dateRecovered: '%f', hasGroupActivity: %{BOOL}d, wasDetonated: %{BOOL}d, isSOS: %{BOOL}d, isCritical %{BOOL}d, fallbackHash (len): %llu]", buf, 0x1F2u);
  }

  v29 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)messageForAttachmentGUID:(id)d
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

- (id)existingMessageSimilarToMessage:(id)message skipServices:(id)services skipGUIDs:(id)ds withinTimeInterval:(double)interval participants:(id)participants
{
  v83 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  servicesCopy = services;
  dsCopy = ds;
  participantsCopy = participants;
  if (messageCopy)
  {
    v15 = [servicesCopy __imArrayByApplyingBlock:&unk_283F1A208];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    body = [messageCopy body];
    string = [body string];
    __stringByStrippingAttachmentAndControlCharacters = [string __stringByStrippingAttachmentAndControlCharacters];

    sender = [messageCopy sender];
    v57 = sender;
    if ([participantsCopy count] < 2)
    {
      v47 = IMDMessageRecordCopyMessageMatchingBodyStringWithHandleSkippingServicesSkippingGUIDs();
    }

    else
    {
      v53 = v15;
      v55 = dsCopy;
      v56 = messageCopy;
      v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(participantsCopy, "count")}];
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v21 = participantsCopy;
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

      v52 = __stringByStrippingAttachmentAndControlCharacters;
      v54 = participantsCopy;

      v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v28 = +[IMDServiceController sharedController];
      allServices = [v28 allServices];

      v30 = [allServices countByEnumeratingWithState:&v62 objects:v81 count:16];
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
              objc_enumerationMutation(allServices);
            }

            v34 = *(*(&v62 + 1) + 8 * j);
            if (([servicesCopy containsObject:{v34, v52}] & 1) == 0)
            {
              v35 = +[IMDChatRegistry sharedInstance];
              v36 = [v35 existingChatsForIDs:v20 onService:v34 style:43];
              [v27 addObjectsFromArray:v36];
            }
          }

          v31 = [allServices countByEnumeratingWithState:&v62 objects:v81 count:16];
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
            serviceName = [v44 serviceName];
            [v37 addObject:serviceName];

            chatIdentifier = [v44 chatIdentifier];
            [v38 addObject:chatIdentifier];
          }

          v41 = [v39 countByEnumeratingWithState:&v58 objects:v80 count:16];
        }

        while (v41);
      }

      dsCopy = v55;
      v47 = IMDMessageRecordCopyMessageMatchingBodyStringWithChatIdentifiersServicesSkippingGUIDs();

      __stringByStrippingAttachmentAndControlCharacters = v52;
      v15 = v53;

      sender = v57;
      messageCopy = v56;
      participantsCopy = v54;
    }

    if (v47 && (AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v47, sender), CFRelease(v47), AttachmentIfNeededRef))
    {
      v49 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413314;
        v71 = AttachmentIfNeededRef;
        v72 = 2112;
        v73 = messageCopy;
        v74 = 2112;
        v75 = servicesCopy;
        v76 = 2112;
        intervalCopy2 = *&dsCopy;
        v78 = 2048;
        intervalCopy = interval;
        _os_log_impl(&dword_22B4CC000, v49, OS_LOG_TYPE_DEFAULT, "Found existing message: %@ similar to: %@   (Skip Services: %@   Skip GUIDs: %@   Within Time Interval: %f)", buf, 0x34u);
      }
    }

    else
    {
      v49 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        v71 = messageCopy;
        v72 = 2112;
        v73 = servicesCopy;
        v74 = 2112;
        v75 = dsCopy;
        v76 = 2048;
        intervalCopy2 = interval;
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

- (id)existingSOSMessageSimilarToMessage:(id)message matchingService:(id)service withinTimeInterval:(double)interval
{
  v31 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  serviceCopy = service;
  if (messageCopy)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    body = [messageCopy body];
    string = [body string];
    __stringByStrippingAttachmentAndControlCharacters = [string __stringByStrippingAttachmentAndControlCharacters];

    sender = [messageCopy sender];
    v13 = [messageCopy isSOS] ^ 1;
    guid = [messageCopy guid];
    v15 = IMDMessageRecordCopyMessageMatchingBodyStringWithHandleMatchingServiceMatchingSOSSkippingGUID();
    if (v15 && (v16 = v15, AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v15, sender), CFRelease(v16), AttachmentIfNeededRef))
    {
      v18 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138413314;
        v22 = serviceCopy;
        v23 = 1024;
        v24 = v13;
        v25 = 2048;
        intervalCopy2 = interval;
        v27 = 2112;
        v28 = AttachmentIfNeededRef;
        v29 = 2112;
        v30 = messageCopy;
        _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_DEFAULT, "Found existing SOS message (Matching service: %@  Matching isSOS: %d  Within Time Interval: %f) - found message: %@ similar to: %@", &v21, 0x30u);
      }
    }

    else
    {
      v18 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138413058;
        v22 = serviceCopy;
        v23 = 1024;
        v24 = v13;
        v25 = 2048;
        intervalCopy2 = interval;
        v27 = 2112;
        v28 = messageCopy;
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

- (void)markMessageAsDeduplicated:(id)deduplicated
{
  deduplicatedCopy = deduplicated;
  if (deduplicatedCopy)
  {
    v5 = deduplicatedCopy;
    guid = [deduplicatedCopy guid];

    deduplicatedCopy = v5;
    if (guid)
    {
      [v5 guid];
      IMDMessageRecordMarkMessageGUIDAsDeduplicated();
      deduplicatedCopy = v5;
    }
  }
}

- (BOOL)wasMessageDeduplicatedWithGUID:(id)d
{
  v11 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([dCopy length])
  {
    v4 = IMDMessageRecordCopyMessageForGUID();
    wasDeduplicated = [v4 wasDeduplicated];
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

    wasDeduplicated = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return wasDeduplicated;
}

- (id)messageWithReplaceMessageID:(int)d fromHandle:(id)handle onService:(id)service
{
  v17 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  AttachmentIfNeededRef = 0;
  if (handleCopy && service)
  {
    v9 = IMDMessageRecordCopyMessageWithHandleOnServiceWithReplaceID();
    if (v9)
    {
      v10 = v9;
      AttachmentIfNeededRef = IMDCreateIMMessageItemFromIMDMessageRecordLoadAttachmentIfNeededRef(v9, handleCopy);
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
      v14[1] = d;
      v15 = 2112;
      v16 = AttachmentIfNeededRef;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "Stored message for replace ID (%d): %@", v14, 0x12u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return AttachmentIfNeededRef;
}

- (id)itemsWithHandles:(id)handles onServices:(id)services messageGUID:(id)d threadIdentifier:(id)identifier limit:(unint64_t)limit
{
  v42 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  servicesCopy = services;
  dCopy = d;
  identifierCopy = identifier;
  v16 = objc_autoreleasePoolPush();
  limitCopy = limit;
  v28 = dCopy;
  [(IMDMessageStore *)self _itemsWithHandles:handlesCopy onServices:servicesCopy messageGUID:dCopy threadIdentifier:identifierCopy limit:limit onlyMessages:0];
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
    v36 = handlesCopy;
    v37 = 2112;
    v38 = servicesCopy;
    v39 = 1024;
    v40 = limitCopy;
    _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_DEFAULT, "Found %d messages with handles: %@ on services: %@  limit: %d", buf, 0x22u);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)itemsWithRoomNames:(id)names onServices:(id)services messageGUID:(id)d threadIdentifier:(id)identifier limit:(unint64_t)limit
{
  v42 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  servicesCopy = services;
  dCopy = d;
  identifierCopy = identifier;
  v16 = objc_autoreleasePoolPush();
  limitCopy = limit;
  v28 = dCopy;
  [(IMDMessageStore *)self _itemsWithRoomNames:namesCopy onServices:servicesCopy messageGUID:dCopy threadIdentifier:identifierCopy limit:limit onlyMessages:0];
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
    v36 = namesCopy;
    v37 = 2112;
    v38 = servicesCopy;
    v39 = 1024;
    v40 = limitCopy;
    _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_DEFAULT, "Found %d messages with room names: %@ on services: %@  limit: %d", buf, 0x22u);
  }

  v25 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)itemsWithHandles:(id)handles onServices:(id)services messageGUID:(id)d numberOfMessagesBefore:(unint64_t)before numberOfMessagesAfter:(unint64_t)after threadIdentifier:(id)identifier hasMessagesBefore:(BOOL *)messagesBefore hasMessagesAfter:(BOOL *)self0
{
  v53 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  servicesCopy = services;
  dCopy = d;
  identifierCopy = identifier;
  v20 = objc_autoreleasePoolPush();
  afterCopy = after;
  v37 = dCopy;
  beforeCopy = before;
  beforeCopy2 = before;
  v22 = identifierCopy;
  [(IMDMessageStore *)self _itemsWithHandlesBeforeAndAfterGUID:dCopy handles:handlesCopy onServices:servicesCopy numberOfMessagesBefore:beforeCopy2 numberOfMessagesAfter:after threadIdentifier:identifierCopy hasMessagesBefore:messagesBefore hasMessagesAfter:messagesAfter];
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
    v31 = [handlesCopy count];
    v32 = [servicesCopy count];
    *buf = 67110144;
    v43 = v30;
    v44 = 1024;
    v45 = v31;
    v46 = 1024;
    v47 = v32;
    v48 = 1024;
    v49 = beforeCopy;
    v50 = 1024;
    v51 = afterCopy;
    _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_DEFAULT, "messagesWithHandlesBeforeAndAfterGUID found %d messages for number of ids: %d on number of services: %d numberOfMessagesBefore: %d numberOfMessagesAfter: %d", buf, 0x20u);
  }

  v33 = *MEMORY[0x277D85DE8];

  return v23;
}

- (id)lastMessageWithHandles:(id)handles onServices:(id)services
{
  v20 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  servicesCopy = services;
  v8 = objc_autoreleasePoolPush();
  v9 = [(IMDMessageStore *)self _itemsWithHandles:handlesCopy onServices:servicesCopy messageGUID:0 threadIdentifier:0 limit:1 onlyMessages:1];
  firstObject = [v9 firstObject];

  objc_autoreleasePoolPop(v8);
  v11 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412802;
    v15 = firstObject;
    v16 = 2112;
    v17 = handlesCopy;
    v18 = 2112;
    v19 = servicesCopy;
    _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "Found last message: %@ with handles: %@ on services: %@", &v14, 0x20u);
  }

  v12 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (id)unreadMessagesWithHandles:(id)handles onServices:(id)services limit:(unint64_t)limit fallbackGUID:(id)d
{
  v40 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  servicesCopy = services;
  dCopy = d;
  limitCopy = limit;
  context = objc_autoreleasePoolPush();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v26 = dCopy;
  v13 = [(IMDMessageStore *)self _unreadMessagesWithHandles:handlesCopy onServices:servicesCopy limit:limit fallbackGUID:dCopy];
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
    v34 = handlesCopy;
    v35 = 2112;
    v36 = servicesCopy;
    v37 = 1024;
    v38 = limitCopy;
    _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_DEFAULT, "Found %d messages with handle: %@ on service: %@  limit: %d", buf, 0x22u);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)unreadMessagesWithRoomNames:(id)names onServices:(id)services limit:(unint64_t)limit fallbackGUID:(id)d
{
  v40 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  servicesCopy = services;
  dCopy = d;
  limitCopy = limit;
  context = objc_autoreleasePoolPush();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v26 = dCopy;
  v13 = [(IMDMessageStore *)self _unreadMessagesWithRoomNames:namesCopy onServices:servicesCopy limit:limit fallbackGUID:dCopy];
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
    v34 = namesCopy;
    v35 = 2112;
    v36 = servicesCopy;
    v37 = 1024;
    v38 = limitCopy;
    _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_DEFAULT, "Found %d messages with handle: %@ on service: %@  limit: %d", buf, 0x22u);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)lastMessageWithRoomNames:(id)names onServices:(id)services
{
  v20 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  servicesCopy = services;
  v8 = objc_autoreleasePoolPush();
  v9 = [(IMDMessageStore *)self _itemsWithRoomNames:namesCopy onServices:servicesCopy messageGUID:0 threadIdentifier:0 limit:1 onlyMessages:1];
  firstObject = [v9 firstObject];

  objc_autoreleasePoolPop(v8);
  v11 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412802;
    v15 = firstObject;
    v16 = 2112;
    v17 = namesCopy;
    v18 = 2112;
    v19 = servicesCopy;
    _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "Found last message: %@ with room names: %@ on services: %@", &v14, 0x20u);
  }

  v12 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (id)lastIncomingMessageForChatWithIdentifier:(id)identifier chatStyle:(unsigned __int8)style onService:(id)service
{
  v29[3] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  serviceCopy = service;
  v8 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %lld", *MEMORY[0x277D19FA0], 0];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", *MEMORY[0x277D19F98], MEMORY[0x277CBEC28]];
  serviceCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", *MEMORY[0x277D19FC8], serviceCopy];
  v11 = MEMORY[0x277CCA920];
  v29[0] = v8;
  v29[1] = v9;
  v29[2] = serviceCopy;
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
  synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
  v28 = v14;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_22B5E2EA0;
  v21[3] = &unk_2787031A0;
  v21[4] = &v22;
  [synchronousDatabase fetchMessageRecordsForChatRecordWithGUID:v15 filteredUsingPredicate:v13 sortedUsingDescriptors:v17 limit:1 completionHandler:v21];

  v18 = v23[5];
  _Block_object_dispose(&v22, 8);

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)messagesInChat:(id)chat earliestDate:(id)date limit:(unint64_t)limit
{
  v30[2] = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  dateCopy = date;
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %lld", *MEMORY[0x277D19FA0], 0];
  v10 = *MEMORY[0x277D19F88];
  dateCopy = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= %@", *MEMORY[0x277D19F88], dateCopy];
  v12 = MEMORY[0x277CCA920];
  v30[0] = v9;
  v30[1] = dateCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  v14 = [v12 andPredicateWithSubpredicates:v13];

  v15 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:v10 ascending:0];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_22B4D7730;
  v27 = sub_22B4D78F4;
  v28 = 0;
  synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
  guid = [chatCopy guid];
  v29 = v15;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_22B5E31F4;
  v22[3] = &unk_2787031A0;
  v22[4] = &v23;
  [synchronousDatabase fetchMessageRecordsForChatRecordWithGUID:guid filteredUsingPredicate:v14 sortedUsingDescriptors:v18 limit:limit completionHandler:v22];

  v19 = v24[5];
  _Block_object_dispose(&v23, 8);

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (BOOL)hasScheduledMessageForChatGUID:(id)d
{
  v18[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
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

  synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22B5E3628;
  v13[3] = &unk_278705F18;
  v13[4] = &v14;
  [synchronousDatabase fetchMessageRecordCountForChatRecordWithGUID:dCopy filteredUsingPredicate:v9 limit:1 completionHandler:v13];

  LOBYTE(synchronousDatabase) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  v11 = *MEMORY[0x277D85DE8];
  return synchronousDatabase & 1;
}

- (id)scheduledMessagesBatchFetcherForChat:(id)chat
{
  v15[3] = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  v4 = chatCopy;
  if (chatCopy && [chatCopy length])
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

- (id)scheduledMessagesBatchFetcherForSyncState:(int64_t)state
{
  v13[3] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277D18ED8]);
  [v4 setBatchSize:100];
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %lld", *MEMORY[0x277D19FA0], 0];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %lu", *MEMORY[0x277D19FC0], 2];
  state = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %lld", *MEMORY[0x277D19F80], state];
  v8 = MEMORY[0x277CCA920];
  v13[0] = v5;
  v13[1] = v6;
  v13[2] = state;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];
  v10 = [v8 andPredicateWithSubpredicates:v9];
  [v4 setPredicate:v10];

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)oldestMessageDateForChatIdentifiers:(id)identifiers chatStyle:(unsigned __int8)style services:(id)services
{
  v26[1] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  servicesCopy = services;
  v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %lld", *MEMORY[0x277D19FA0], 0];
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D19F88] ascending:1];
  synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
  v9 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_22B4D7730;
  v24 = sub_22B4D78F4;
  v25 = 0;
  while (v9 < [identifiersCopy count])
  {
    v10 = [identifiersCopy objectAtIndexedSubscript:v9];
    v11 = [servicesCopy objectAtIndexedSubscript:v9];
    v12 = IMCopyGUIDForChat();
    v26[0] = v7;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_22B5E40FC;
    v19[3] = &unk_2787031A0;
    v19[4] = &v20;
    [synchronousDatabase fetchMessageRecordsForChatRecordWithGUID:v12 filteredUsingPredicate:v17 sortedUsingDescriptors:v13 limit:1 completionHandler:v19];

    ++v9;
  }

  v14 = v21[5];
  _Block_object_dispose(&v20, 8);

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)lastMessageForChatWithRowID:(int64_t)d
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_22B4D7730;
  v12 = sub_22B4D78F4;
  v13 = 0;
  synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_22B5E4364;
  v7[3] = &unk_278705F40;
  v7[4] = &v8;
  [synchronousDatabase fetchLastMessageRecordForChatRecordWithRowID:d completionHandler:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)lastTUConversationItemForChat:(id)chat
{
  v19[1] = *MEMORY[0x277D85DE8];
  chatCopy = chat;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_22B4D7730;
  v17 = sub_22B4D78F4;
  v18 = 0;
  v4 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K = %lld", *MEMORY[0x277D19FA0], 6];
  synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
  guid = [chatCopy guid];
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D19F88] ascending:0];
  v19[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22B5E4610;
  v12[3] = &unk_2787031A0;
  v12[4] = &v13;
  [synchronousDatabase fetchMessageRecordsForChatRecordWithGUID:guid filteredUsingPredicate:v4 sortedUsingDescriptors:v8 limit:1 completionHandler:v12];

  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)attachmentsWithHandles:(id)handles onServices:(id)services
{
  v17 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  servicesCopy = services;
  v7 = objc_autoreleasePoolPush();
  v8 = IMDAttachmentRecordCopyAttachmentGUIDsAndPathsForChatIdentifiersOnServices();
  objc_autoreleasePoolPop(v7);
  v9 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109634;
    v12[1] = [v8 count];
    v13 = 2112;
    v14 = handlesCopy;
    v15 = 2112;
    v16 = servicesCopy;
    _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEFAULT, "Found %d filenames with handles: %@ on services: %@", v12, 0x1Cu);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)attachmentsWithRoomNames:(id)names onServices:(id)services
{
  v17 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  servicesCopy = services;
  v7 = objc_autoreleasePoolPush();
  v8 = IMDAttachmentRecordCopyAttachmentGUIDsAndPathsForChatIdentifiersOnServices();
  objc_autoreleasePoolPop(v7);
  v9 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109634;
    v12[1] = [v8 count];
    v13 = 2112;
    v14 = namesCopy;
    v15 = 2112;
    v16 = servicesCopy;
    _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEFAULT, "Found %d filenames with room names: %@ on services: %@ ", v12, 0x1Cu);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)messageActionItemsForOriginalMessageGUID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  dCopy = d;
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
    v15 = dCopy;
    _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "Found %d message action items for original message guid: %@", v13, 0x12u);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)frequentRepliesForForChatIdentifiers:(id)identifiers onServices:(id)services limit:(unint64_t)limit
{
  limitCopy = limit;
  v21 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  servicesCopy = services;
  v9 = objc_autoreleasePoolPush();
  v10 = IMDMessageRecordCopyFrequentRepliesForChatIdentifiersOnServicesUpToLimit();
  objc_autoreleasePoolPop(v9);
  v11 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109890;
    v14[1] = [v10 count];
    v15 = 2112;
    v16 = identifiersCopy;
    v17 = 2112;
    v18 = servicesCopy;
    v19 = 1024;
    v20 = limitCopy;
    _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "Found %d messages with handles: %@ on services: %@  limit: %d", v14, 0x22u);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)messagesWithReplyToGUID:(id)d
{
  dCopy = d;
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

- (void)addMissingMessageReadReceipt:(id)receipt
{
  v12 = *MEMORY[0x277D85DE8];
  receiptCopy = receipt;
  v4 = +[IMDMessageStore _missingMessageReadReceiptCache];
  [v4 addObject:receiptCopy];

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = +[IMDMessageStore _missingMessageReadReceiptCache];
      v8 = 138412546;
      v9 = receiptCopy;
      v10 = 2048;
      v11 = [v6 count];
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Adding message GUID to readReceiptsForMissingMessage cache: %@ (size: %lu)", &v8, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)popReadReceiptForMissingGUID:(id)d
{
  dCopy = d;
  if ([dCopy length] && (+[IMDMessageStore _missingMessageReadReceiptCache](IMDMessageStore, "_missingMessageReadReceiptCache"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "containsObject:", dCopy), v4, v5))
  {
    v6 = +[IMDMessageStore _missingMessageReadReceiptCache];
    [v6 removeObject:dCopy];

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)enumerateMessagesToRelayOnService:(id)service usingBlock:(id)block
{
  v32 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  blockCopy = block;
  v7 = objc_alloc_init(MEMORY[0x277D18ED8]);
  v8 = MEMORY[0x277CCAC30];
  v9 = *MEMORY[0x277D19FA8];
  v10 = *MEMORY[0x277D19FC8];
  v24 = serviceCopy;
  internalName = [serviceCopy internalName];
  v12 = [v8 predicateWithFormat:@"%K = %@ AND %K = %@", v9, MEMORY[0x277CBEC38], v10, internalName];

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
            blockCopy[2](blockCopy, AttachmentIfNeededRef);
          }

          else
          {
            v20 = IMDatabaseLogHandle();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              guid = [v18 guid];
              *buf = 138412290;
              v30 = guid;
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

- (id)chatForMessage:(id)message
{
  guid = [message guid];
  v5 = [(IMDMessageStore *)self chatForMessageGUID:guid];

  return v5;
}

- (id)chatsForMessage:(id)message
{
  guid = [message guid];
  v5 = [(IMDMessageStore *)self chatsForMessageGUID:guid];

  return v5;
}

- (id)_chatsForMessageGUID:(id)d enableVerboseLogging:(BOOL)logging
{
  loggingCopy = logging;
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!dCopy)
  {
    v5 = 0;
    goto LABEL_28;
  }

  v22 = loggingCopy;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  context = objc_autoreleasePoolPush();
  v6 = +[IMDChatStore sharedInstance];
  v7 = [v6 chatsGUIDsForMessageWithGUID:dCopy];

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v30 = v7;
      v31 = 2112;
      v32 = dCopy;
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
            v32 = dCopy;
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

- (id)chatForMessageIdentifier:(int64_t)identifier
{
  v3 = [(IMDMessageStore *)self _chatsForMessageIdentifier:identifier];
  __imFirstObject = [v3 __imFirstObject];

  return __imFirstObject;
}

- (id)existingChatForMessageGUID:(id)d
{
  dCopy = d;
  v4 = +[IMDChatStore sharedInstance];
  v5 = [v4 chatsGUIDsForMessageWithGUID:dCopy];

  __imFirstObject = [v5 __imFirstObject];

  v7 = +[IMDChatRegistry sharedInstance];
  v8 = [v7 existingChatWithGUID:__imFirstObject];

  return v8;
}

- (id)_chatsForMessageIdentifier:(int64_t)identifier
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = +[IMDChatStore sharedInstance];
  v5 = [v4 chatsGUIDsForMessageWithIdentifier:identifier];

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v26 = v5;
      v27 = 2048;
      identifierCopy2 = identifier;
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
            identifierCopy2 = identifier;
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

- (BOOL)_isValidPhoneNumber:(id)number forCountryCode:(id)code
{
  codeCopy = code;
  numberCopy = number;
  v7 = MEMORY[0x231897B50]("PNIsValidPhoneNumberForCountry", @"CorePhoneNumbers");
  v8 = v7(numberCopy, codeCopy);

  return v8;
}

- (id)cleanUnformattedPhoneNumber:(id)number countryCode:(id)code
{
  v21 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  codeCopy = code;
  v8 = numberCopy;
  v9 = [(IMDMessageStore *)self _isValidPhoneNumber:v8 forCountryCode:codeCopy];
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

- (id)updatedMessagesForMessages:(id)messages
{
  v38 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  v27 = [messagesCopy arrayByApplyingSelector:sel_guid];
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
        guid = [v12 guid];
        [v6 setObject:v12 forKeyedSubscript:guid];
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
  v15 = messagesCopy;
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
        guid2 = [v20 guid];
        v22 = [v6 objectForKeyedSubscript:guid2];

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

- (void)resolveUnformattedRepresentationsForHandles:(id)handles onService:(id)service message:(id)message completionBlock:(id)block
{
  v77 = *MEMORY[0x277D85DE8];
  handlesCopy = handles;
  serviceCopy = service;
  messageCopy = message;
  blockCopy = block;
  if (blockCopy)
  {
    v10 = blockCopy;
    v53 = [blockCopy copy];

    v56 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = handlesCopy;
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
        internalName = [serviceCopy internalName];
        v16 = [(IMDMessageStore *)self _copyHandle:v14 onService:internalName];

        if (v16)
        {
          countryCode = IMDHandleRecordCopyCountry();
          v18 = IMDHandleRecordCopyUncanonicalizedID();
          unformattedID = v18;
          if (countryCode)
          {
            if (v18)
            {
              goto LABEL_10;
            }

LABEL_17:
            unformattedID = [messageCopy unformattedID];
            if (!countryCode)
            {
              goto LABEL_18;
            }

LABEL_11:
            if (!unformattedID)
            {
              goto LABEL_19;
            }
          }

          else
          {
            countryCode = [messageCopy countryCode];
            if (!unformattedID)
            {
              goto LABEL_17;
            }

LABEL_10:
            if (countryCode)
            {
              goto LABEL_11;
            }

LABEL_18:
            countryCode = [v13 countryCode];
            if (!unformattedID)
            {
LABEL_19:
              unformattedID = [v13 unformattedID];
            }
          }

          v23 = [v13 ID];
          im_stripCategoryLabel = [v23 im_stripCategoryLabel];

          v61 = [MEMORY[0x277D6EEE8] normalizedPhoneNumberHandleForValue:im_stripCategoryLabel isoCountryCode:countryCode];
          v25 = MEMORY[0x277D6EEE8];
          im_stripCategoryLabel2 = [unformattedID im_stripCategoryLabel];
          if (countryCode)
          {
            v27 = [v25 normalizedPhoneNumberHandleForValue:im_stripCategoryLabel2 isoCountryCode:countryCode];
          }

          else
          {
            isoCountryCode = [v61 isoCountryCode];
            v27 = [v25 normalizedPhoneNumberHandleForValue:im_stripCategoryLabel2 isoCountryCode:isoCountryCode];
          }

          if (v27 && ([v27 isEquivalentToHandle:v61] & 1) == 0)
          {
            if (IMOSLoggingEnabled())
            {
              v29 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
              {
                *buf = 138413058;
                v69 = im_stripCategoryLabel;
                v70 = 2112;
                v71 = unformattedID;
                v72 = 2112;
                v73 = v61;
                v74 = 2112;
                v75 = v27;
                _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "Canonicalized handle (%@) and unformatted handle (%@) were not equal - TU canonical: (%@) TU unformatted: (%@)", buf, 0x2Au);
              }
            }

            unformattedID = 0;
          }

          v30 = [(IMDMessageStore *)self cleanUnformattedPhoneNumber:unformattedID countryCode:countryCode];
          im_stripCategoryLabel3 = [v30 im_stripCategoryLabel];

          internalName2 = [serviceCopy internalName];
          if ([internalName2 isEqualToString:*MEMORY[0x277D1A608]])
          {
            personCentricID = [v13 personCentricID];
            __im_isSipHandle = [personCentricID __im_isSipHandle];

            if (__im_isSipHandle)
            {
              if (IMOSLoggingEnabled())
              {
                v35 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
                {
                  personCentricID2 = [v13 personCentricID];
                  *buf = 138412546;
                  v69 = personCentricID2;
                  v70 = 2112;
                  v71 = im_stripCategoryLabel;
                  _os_log_impl(&dword_22B4CC000, v35, OS_LOG_TYPE_INFO, "Found a chat bot sip handle %@, for %@", buf, 0x16u);
                }
              }

              v37 = MEMORY[0x277CBEAC0];
              personCentricID3 = [v13 personCentricID];
              v39 = [v37 dictionaryWithObjectsAndKeys:{im_stripCategoryLabel, @"__kIMDMessageStoreHandleCanonicalIDKey", personCentricID3, @"__kIMDMessageStoreHandleAlternateSIPID", im_stripCategoryLabel3, @"__kIMDMessageStoreHandleUnformattedIDKey", countryCode, @"__kIMDMessageStoreHandleCountryCodeKey", 0}];

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

          v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{im_stripCategoryLabel, @"__kIMDMessageStoreHandleCanonicalIDKey", im_stripCategoryLabel3, @"__kIMDMessageStoreHandleUnformattedIDKey", countryCode, @"__kIMDMessageStoreHandleCountryCodeKey", 0}];
          if (v39)
          {
            goto LABEL_40;
          }

          goto LABEL_41;
        }

        countryCode2 = [messageCopy countryCode];
        unformattedID2 = [messageCopy unformattedID];
        unformattedID3 = unformattedID2;
        if (countryCode2)
        {
          if (!unformattedID2)
          {
            goto LABEL_43;
          }
        }

        else
        {
          countryCode2 = [v13 countryCode];
          if (!unformattedID3)
          {
LABEL_43:
            unformattedID3 = [v13 unformattedID];
          }
        }

        v40 = MEMORY[0x277D6EEE8];
        v41 = [v13 ID];
        v42 = [v40 normalizedPhoneNumberHandleForValue:v41 isoCountryCode:countryCode2];

        v43 = MEMORY[0x277D6EEE8];
        if (countryCode2)
        {
          v44 = [MEMORY[0x277D6EEE8] normalizedPhoneNumberHandleForValue:unformattedID3 isoCountryCode:countryCode2];
        }

        else
        {
          isoCountryCode2 = [v42 isoCountryCode];
          v44 = [v43 normalizedPhoneNumberHandleForValue:unformattedID3 isoCountryCode:isoCountryCode2];
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
              v71 = unformattedID3;
              v72 = 2112;
              v73 = v42;
              v74 = 2112;
              v75 = v44;
              _os_log_impl(&dword_22B4CC000, v46, OS_LOG_TYPE_INFO, "Canonicalized handle (%@) and unformatted handle (%@) were not equal - TU canonical: (%@) TU unformatted: (%@)", buf, 0x2Au);
            }
          }

          unformattedID3 = 0;
        }

        v48 = [(IMDMessageStore *)self cleanUnformattedPhoneNumber:unformattedID3 countryCode:countryCode2];
        v49 = MEMORY[0x277CBEAC0];
        v50 = [v13 ID];
        v51 = [v49 dictionaryWithObjectsAndKeys:{v50, @"__kIMDMessageStoreHandleCanonicalIDKey", v48, @"__kIMDMessageStoreHandleUnformattedIDKey", countryCode2, @"__kIMDMessageStoreHandleCountryCodeKey", 0}];

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

- (id)deleteMessageGUIDs:(id)ds inChat:(id)chat
{
  v48 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  chatCopy = chat;
  if (chatCopy)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    context = objc_autoreleasePoolPush();
    IsFull = IMDSMSRecordIsFull();
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    selfCopy = self;
    v31 = dsCopy;
    v9 = [(IMDMessageStore *)self _itemsWithGUIDs:dsCopy];
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
          guid = [v14 guid];
          if (guid)
          {
            [v8 addObject:guid];
          }

          v16 = +[IMDChatRegistry sharedInstance];
          [v16 removeMessage:v14 fromChat:chatCopy];
        }

        v11 = [v9 countByEnumeratingWithState:&v36 objects:v47 count:16];
      }

      while (v11);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    dsCopy = v31;
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
      v45 = chatCopy;
      _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_DEFAULT, "Deleted %d messages with guids: %@ in chat: %@", buf, 0x1Cu);
    }

    if (![v8 count])
    {

      v8 = 0;
    }

    guid2 = [chatCopy guid];
    [(IMDMessageStore *)selfCopy updateStampForGUID:guid2];

    sub_22B5DC120(IsFull != 0, v22 != 0);
  }

  else
  {
    v8 = [(IMDMessageStore *)self deleteMessageGUIDs:dsCopy];
  }

  v26 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)deleteMessageGUIDs:(id)ds
{
  v29 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
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
    v8 = dsCopy;
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
    mEMORY[0x277D1AA10] = [MEMORY[0x277D1AA10] sharedInstance];
    [mEMORY[0x277D1AA10] deleteInteractionsWithMessageGUIDs:v8];

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

  return dsCopy;
}

- (void)_deleteMessagesWithGUIDs:(id)ds chatIdentifiers:(id)identifiers style:(unsigned __int8)style onServices:(id)services batchNumber:(unint64_t)number completion:(id)completion
{
  dsCopy = ds;
  identifiersCopy = identifiers;
  servicesCopy = services;
  completionCopy = completion;
  v28 = dsCopy;
  v16 = [dsCopy count];
  numberCopy = number;
  v17 = 1000 * number;
  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([identifiersCopy count])
  {
    v19 = 0;
    do
    {
      v20 = [identifiersCopy objectAtIndex:{v19, numberCopy}];
      v21 = [servicesCopy objectAtIndex:v19];
      v22 = IMCopyGUIDForChat();

      if ([v22 length])
      {
        [v18 addObject:v22];
      }

      ++v19;
    }

    while (v19 < [identifiersCopy count]);
  }

  if (v17 >= v16)
  {
    v24 = completionCopy;
    v23 = v28;
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
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
    v38 = numberCopy;
    v31 = identifiersCopy;
    v32 = servicesCopy;
    v24 = completionCopy;
    v33 = v18;
    selfCopy = self;
    styleCopy = style;
    v35 = completionCopy;
    [(IMDMessageStore *)self _performBlock:v29 afterDelay:2.0];
  }
}

- (void)signalUnreadChangeForHandle:(id)handle
{
  handleCopy = handle;
  v4 = [handleCopy copy];
  v5 = IMBiomeQueue();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22B5E7620;
  v8[3] = &unk_278702FA0;
  v9 = v4;
  v10 = handleCopy;
  v6 = handleCopy;
  v7 = v4;
  dispatch_async(v5, v8);
}

- (BOOL)markMessageGUIDUnread:(id)unread
{
  v22[1] = *MEMORY[0x277D85DE8];
  unreadCopy = unread;
  v5 = [(IMDMessageStore *)self chatForMessageGUID:unreadCopy];
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

    v22[0] = unreadCopy;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    IMDCoreSpotlightReindexMessagesWhileBlocking();

    v8 = [(IMDMessageStore *)self messageWithGUID:unreadCopy];
    v9 = v8 != 0;
    if (v8)
    {
      v10 = +[IMDBroadcastController sharedProvider];
      v11 = [v10 broadcasterForChatListenersUsingBlackholeRegistry:{objc_msgSend(v5, "isBlackholed")}];

      accountID = [v5 accountID];
      chatIdentifier = [v5 chatIdentifier];
      -[NSObject account:chat:style:messageUpdated:suppressNotification:](v11, "account:chat:style:messageUpdated:suppressNotification:", accountID, chatIdentifier, [v5 style], v8, 1);

      if (([objc_opt_class() _updateCacheForMessageGUID:unreadCopy fromMessage:0 toMessage:0 updateLastMessage:0 calculateUnreadCount:1] & 1) == 0)
      {
        v14 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v20 = 138412290;
          v21 = unreadCopy;
          _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "Attempted to mark a message as unread that wasn't the last message: %@", &v20, 0xCu);
        }

        v15 = +[IMDChatRegistry sharedInstance];
        [v15 updateStateForChat:v5 forcePost:0 shouldRebuildFailedMessageDate:0 shouldCalculateUnreadCount:1];
      }

      v16 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = unreadCopy;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_DEFAULT, "Marked %@ as unread", &v20, 0xCu);
      }

      handle = [v8 handle];
      [(IMDMessageStore *)self signalUnreadChangeForHandle:handle];
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

- (id)markMessagesAsReadWithIdentifiers:(id)identifiers onServices:(id)services chatStyle:(unsigned __int8)style upToGUID:(id)d readDate:(id)date fromMe:(BOOL)me
{
  meCopy = me;
  selfCopy = self;
  v35 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  servicesCopy = services;
  dCopy = d;
  dateCopy = date;
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([identifiersCopy count])
  {
    v16 = 0;
    do
    {
      v17 = [identifiersCopy objectAtIndex:{v16, selfCopy}];
      v18 = [servicesCopy objectAtIndex:v16];
      v19 = IMCopyGUIDForChat();

      if (v19)
      {
        [v15 addObject:v19];
      }

      ++v16;
    }

    while (v16 < [identifiersCopy count]);
  }

  v20 = dCopy;
  selfCopy = [(IMDMessageStore *)selfCopy markMessagesAsReadWithChatGUIDs:v15 upToGUID:dCopy readDate:dateCopy fromMe:meCopy, selfCopy];
  if (![selfCopy count])
  {

    selfCopy = 0;
  }

  v22 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109890;
    v28 = [selfCopy count];
    v29 = 2112;
    v30 = identifiersCopy;
    v31 = 2112;
    v32 = servicesCopy;
    v33 = 1024;
    v34 = meCopy;
    _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_DEFAULT, "Marked %d messages as read with handles: %@ on service: %@  from me: %{BOOL}d", buf, 0x22u);
  }

  v23 = *MEMORY[0x277D85DE8];

  return selfCopy;
}

- (id)markMessagesAsReadWithChatGUIDs:(id)ds upToGUID:(id)d readDate:(id)date fromMe:(BOOL)me
{
  meCopy = me;
  v41 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  dCopy = d;
  dateCopy = date;
  v13 = objc_autoreleasePoolPush();
  MessagesPriorToGuidMatchingChatGUIDs = IMDMessageRecordCopyAndMarkAsReadMessagesPriorToGuidMatchingChatGUIDs();
  objc_autoreleasePoolPop(v13);
  if (![MessagesPriorToGuidMatchingChatGUIDs count])
  {

    MessagesPriorToGuidMatchingChatGUIDs = 0;
  }

  if ([MessagesPriorToGuidMatchingChatGUIDs count])
  {
    [(IMDMessageStore *)self updateStampForGUIDs:dsCopy];
  }

  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isIntroductionsEnabled = [mEMORY[0x277D1A9B8] isIntroductionsEnabled];

  if (isIntroductionsEnabled)
  {
    v29 = dCopy;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v17 = dsCopy;
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

    dCopy = v29;
  }

  v25 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [MessagesPriorToGuidMatchingChatGUIDs count];
    *buf = 67109634;
    v35 = v26;
    v36 = 2112;
    v37 = dsCopy;
    v38 = 1024;
    v39 = meCopy;
    _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_DEFAULT, "Marked %d messages as read with chat guid: %@ from me: %{BOOL}d", buf, 0x18u);
  }

  v27 = *MEMORY[0x277D85DE8];

  return MessagesPriorToGuidMatchingChatGUIDs;
}

- (void)_unreadCountControllerDidUpdate:(id)update
{
  updateCopy = update;
  object = [updateCopy object];
  unreadCountController = [(IMDMessageStore *)self unreadCountController];

  if (object == unreadCountController)
  {
    userInfo = [updateCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D1A870]];

    [(IMDMessageStore *)self _rebuildUnreadMessageCountRefreshingReports:0 guids:0 delta:v7];
  }
}

- (IMUnreadCountReportDelta)unreadCountReportDeltaForSetupInfo
{
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isUnreadCountRefactorEnabled = [mEMORY[0x277D1A9B8] isUnreadCountRefactorEnabled];

  if (isUnreadCountRefactorEnabled)
  {
    [(IMDMessageStore *)self _performDeferredUnreadCountRefreshIfNeeded];
    unreadCountController = [(IMDMessageStore *)self unreadCountController];
    fullReplacementDelta = [unreadCountController fullReplacementDelta];
  }

  else
  {
    fullReplacementDelta = 0;
  }

  return fullReplacementDelta;
}

- (int64_t)_calculateUnreadMessagesCountFilteredByFocus:(BOOL)focus filteredByAssistiveAccess:(BOOL)access
{
  focusCopy = focus;
  v39 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D1A9D0] = [MEMORY[0x277D1A9D0] sharedManager];
  mEMORY[0x277D1A8A0] = [MEMORY[0x277D1A8A0] sharedManager];
  v23 = +[IMDChatRegistry sharedInstance];
  cachedChats = [v23 cachedChats];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v35 = [cachedChats count];
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Calculating unread message count from %ld cached chats.", buf, 0xCu);
    }
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = cachedChats;
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
      unreadCount = [v12 unreadCount];
      if (unreadCount)
      {
        if (!focusCopy)
        {
          if (access)
          {
            goto LABEL_20;
          }

          goto LABEL_25;
        }

        v4 = [(IMDMessageStore *)self _handleStringsForChat:v12];
        if ([mEMORY[0x277D1A9D0] activeFocusModeMatchesConversationWithHandleStrings:v4])
        {
          if (!access)
          {

            goto LABEL_25;
          }

LABEL_20:
          v16 = [(IMDMessageStore *)self _handleIDsForChat:v12];
          v17 = [mEMORY[0x277D1A8A0] allowsConversationWithHandleIDs:v16];

          if (focusCopy)
          {

            if ((v17 & 1) == 0)
            {
              goto LABEL_26;
            }

LABEL_25:
            v29 += unreadCount;
LABEL_30:
            v9 += unreadCount;
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
            guid = [v12 guid];
            *buf = 138412290;
            v35 = guid;
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
          guid2 = [v12 guid];
          *buf = 138412290;
          v35 = guid2;
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

- (id)_handleStringsForChat:(id)chat
{
  v20 = *MEMORY[0x277D85DE8];
  participants = [chat participants];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = participants;
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
        im_stripCategoryLabel = [v10 im_stripCategoryLabel];

        if ([im_stripCategoryLabel length])
        {
          [v4 addObject:im_stripCategoryLabel];
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

- (id)_handleIDsForChat:(id)chat
{
  participants = [chat participants];
  v4 = [participants __imArrayByApplyingBlock:&unk_283F1A288];

  return v4;
}

- (void)cleanseAttachments
{
  mEMORY[0x277D18EE8] = [MEMORY[0x277D18EE8] sharedInstance];
  [mEMORY[0x277D18EE8] cleanseOrphanedFileTransfers];
}

- (BOOL)isAttachmentReferencedByMessage:(id)message
{
  *&v20[13] = *MEMORY[0x277D85DE8];
  messageCopy = message;
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
        balloonBundleID = [v7 balloonBundleID];
        v9 = [balloonBundleID length];

        v10 = [v7 messagePartIndexForAttachmentMessagePartWithTransferGUID:messageCopy];
        if (!v9 && v10 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            balloonBundleID2 = [v7 balloonBundleID];
            v17 = 138412802;
            v18 = messageCopy;
            v19 = 1024;
            *v20 = 0;
            v20[2] = 2112;
            *&v20[3] = balloonBundleID2;
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
            v18 = messageCopy;
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
        v18 = messageCopy;
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
        v18 = messageCopy;
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

- (void)setSuppressDatabaseUpdates:(BOOL)updates
{
  updatesCopy = updates;
  v13 = *MEMORY[0x277D85DE8];
  v5 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v12 = updatesCopy;
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "setSuppressDatabaseUpdates called with suppressUpdates %d ", buf, 8u);
  }

  suppressedUpdatesTimer = self->_suppressedUpdatesTimer;
  if (suppressedUpdatesTimer)
  {
    [(NSTimer *)suppressedUpdatesTimer invalidate];
    v7 = self->_suppressedUpdatesTimer;
    self->_suppressedUpdatesTimer = 0;
  }

  self->_suppressedUpdates = updatesCopy;
  if (updatesCopy)
  {
    mainThread = [MEMORY[0x277CCACC8] mainThread];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_22B5E8B58;
    v10[3] = &unk_278702FF0;
    v10[4] = self;
    [mainThread __im_performBlock:v10];
  }

  else
  {
    [(IMDMessageStore *)self updateStamp];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)retractPostedNotificationsForMessageGUIDs:(id)ds
{
  dsCopy = ds;
  v4 = IMSupportsUserNotifications();
  if (dsCopy && v4 && [dsCopy count])
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

- (void)retractPostedNotificationsForMessagesMatchingChatGUIDs:(id)ds
{
  v9 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  v4 = IMSupportsUserNotifications();
  if (dsCopy && v4 && [dsCopy count])
  {
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = dsCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Retract notification for messages matching chats: %@", &v7, 0xCu);
    }

    IMDMessageRecordRetractNotificationsForMessagesMatchingChatGUIDs();
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)postUrgentNotificationsForMessageGUIDs:(id)ds
{
  dsCopy = ds;
  if (IMSupportsUserNotifications() && [dsCopy count])
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEFAULT, "Posting urgent notifications for messages", v8, 2u);
    }

    v5 = +[IMDAccountController sharedInstance];
    activeAliases = [v5 activeAliases];

    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObject:activeAliases forKey:*MEMORY[0x277D18E98]];
    IMDNotificationsPostUrgentNotificationsForMessages();
  }
}

- (void)updatePostedNotificationsForMessageGUIDs:(id)ds
{
  v11 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  if (IMSupportsUserNotifications() && [dsCopy count])
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = dsCopy;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEFAULT, "Updating posted notifications for messages: %@", &v9, 0xCu);
    }

    v5 = +[IMDAccountController sharedInstance];
    activeAliases = [v5 activeAliases];

    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObject:activeAliases forKey:*MEMORY[0x277D18E98]];
    IMDNotificationsUpdatePostedNotificationsForMessages();
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)__postDBUpdate
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel___postDBUpdate object:0];
  v3 = +[IMDBroadcastController sharedProvider];
  broadcasterForChatDatabaseListeners = [v3 broadcasterForChatDatabaseListeners];
  modificationStamp = [(IMDMessageStore *)self modificationStamp];
  [broadcasterForChatDatabaseListeners databaseUpdated:modificationStamp];

  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  LODWORD(broadcasterForChatDatabaseListeners) = [mEMORY[0x277D1A9B8] isUnreadCountRefactorEnabled];

  if (broadcasterForChatDatabaseListeners)
  {
    deferredRebuildGUIDs = [(IMDMessageStore *)self deferredRebuildGUIDs];
    allObjects = [deferredRebuildGUIDs allObjects];

    deferredRebuildGUIDs2 = [(IMDMessageStore *)self deferredRebuildGUIDs];
    [deferredRebuildGUIDs2 removeAllObjects];

    [(IMDMessageStore *)self rebuildUnreadMessageCountForGUIDs:allObjects];
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

    notificationContext = [(IMDMessageStore *)self notificationContext];
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

- (void)updateStampForGUID:(id)d
{
  v8[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = dCopy;
  if (dCopy)
  {
    v8[0] = dCopy;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    [(IMDMessageStore *)self updateStampForGUIDs:v6];
  }

  else
  {
    [(IMDMessageStore *)self updateStamp];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateStampForGUIDs:(id)ds
{
  dsCopy = ds;
  deferredRebuildGUIDs = [(IMDMessageStore *)self deferredRebuildGUIDs];
  [deferredRebuildGUIDs addObjectsFromArray:dsCopy];

  MEMORY[0x2821F9670](self, sel__updateStamp);
}

- (id)reassignIdentifierForExistingMessageWithGUID:(id)d toNewGUID:(id)iD
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  v8 = iDCopy;
  if (dCopy && iDCopy)
  {
    v9 = [(IMDMessageStore *)self messageWithGUID:dCopy];
    v10 = IMDatabaseLogHandle();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        *buf = 138412546;
        v20 = dCopy;
        v21 = 2112;
        v22 = v8;
        _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "Updating message GUID from %@ to %@", buf, 0x16u);
      }

      [v9 setGuid:v8];
      [v9 setOriginalGUID:dCopy];
      synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
      [synchronousDatabase reassignIdentifierForMessageWithGUID:dCopy newGUID:v8 completionHandler:&unk_283F1A2A8];

      v18 = dCopy;
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
        v20 = dCopy;
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

- (void)databaseChatSpamUpdated:(id)updated
{
  updatedCopy = updated;
  v5 = +[IMDBroadcastController sharedProvider];
  broadcasterForChatDatabaseListeners = [v5 broadcasterForChatDatabaseListeners];
  [broadcasterForChatDatabaseListeners databaseChatSpamUpdated:updatedCopy];
}

- (id)notificationContext
{
  v2 = +[IMDAccountController sharedInstance];
  activeAliases = [v2 activeAliases];

  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObject:activeAliases forKey:*MEMORY[0x277D18E98]];

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
      lastFailedMessageDate = [(IMDMessageStore *)self lastFailedMessageDate];
      v6 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 134217984;
        v11 = lastFailedMessageDate;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "Rebuilding lastFailedMessageDateChanged with new value: %lld ", &v10, 0xCu);
      }

      v7 = +[IMDBroadcastController sharedProvider];
      broadcasterForChatCountsListeners = [v7 broadcasterForChatCountsListeners];
      [broadcasterForChatCountsListeners lastFailedMessageDateChanged:lastFailedMessageDate];

      v4 = +[IMDBadgeUtilities sharedInstance];
      [v4 updateBadgeForLastFailedMessageDateChangeIfNeeded:lastFailedMessageDate];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_refreshUnreadCountControllerForGUIDs:(id)ds
{
  v32 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isUnreadCountRefactorEnabled = [mEMORY[0x277D1A9B8] isUnreadCountRefactorEnabled];

  if (isUnreadCountRefactorEnabled)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = sub_22B4D7730;
    v29 = sub_22B4D78F4;
    v30 = 0;
    if (-[IMDMessageStore _shouldBroadcastDeltas](self, "_shouldBroadcastDeltas") && [dsCopy count])
    {
      synchronousDatabaseQueryProvider = [MEMORY[0x277D18EE0] synchronousDatabaseQueryProvider];
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = sub_22B5E9B30;
      v24[3] = &unk_278705FF0;
      v24[4] = &v25;
      [synchronousDatabaseQueryProvider generateUnreadCountReportsForChatsWithGUIDs:dsCopy completionHandler:v24];

      if (v26[5])
      {
        unreadCountController3 = [MEMORY[0x277CBEB58] setWithArray:dsCopy];
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

              guid = [*(*(&v20 + 1) + 8 * v12) guid];
              [unreadCountController3 removeObject:guid];

              ++v12;
            }

            while (v10 != v12);
            v10 = [v9 countByEnumeratingWithState:&v20 objects:v31 count:16];
          }

          while (v10);
        }

        if ([v26[5] count])
        {
          unreadCountController = [(IMDMessageStore *)self unreadCountController];
          [unreadCountController updateReports:v26[5]];
        }

        if ([unreadCountController3 count])
        {
          unreadCountController2 = [(IMDMessageStore *)self unreadCountController];
          allObjects = [unreadCountController3 allObjects];
          [unreadCountController2 clearUnreadCountForChatsWithGUIDs:allObjects];
        }

        goto LABEL_18;
      }
    }

    else
    {
      synchronousDatabaseQueryProvider2 = [MEMORY[0x277D18EE0] synchronousDatabaseQueryProvider];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = sub_22B5E9B40;
      v19[3] = &unk_278705FF0;
      v19[4] = &v25;
      [synchronousDatabaseQueryProvider2 generateUnreadCountReportsWithCompletionHandler:v19];

      if (v26[5])
      {
        unreadCountController3 = [(IMDMessageStore *)self unreadCountController];
        [unreadCountController3 replaceReports:v26[5]];
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

- (void)_expiredTimeSensitiveMessagesDetected:(id)detected
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

  synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
  [synchronousDatabase clearExpiredTimeSensitiveMessagesWithCompletionHandler:&unk_283F1A2C8];
}

- (id)_cachedUnreadCountReports
{
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isUnreadCountRefactorEnabled = [mEMORY[0x277D1A9B8] isUnreadCountRefactorEnabled];

  if (isUnreadCountRefactorEnabled)
  {
    unreadCountController = [(IMDMessageStore *)self unreadCountController];
    cachedUnreadReports = [unreadCountController cachedUnreadReports];
  }

  else
  {
    cachedUnreadReports = 0;
  }

  return cachedUnreadReports;
}

- (BOOL)_shouldBroadcastDeltas
{
  unreadCountController = [(IMDMessageStore *)self unreadCountController];
  cachedUnreadReportsCount = [unreadCountController cachedUnreadReportsCount];
  LOBYTE(cachedUnreadReportsCount) = cachedUnreadReportsCount > IMGetCachedDomainIntForKeyWithDefaultValue();

  return cachedUnreadReportsCount;
}

- (BOOL)_shouldSendBackwardsCompatibleUnreadCountUpdates
{
  if (qword_281421370 != -1)
  {
    sub_22B7D5E98();
  }

  return byte_27D8CFF08;
}

- (void)_rebuildUnreadMessageCountRefreshingReports:(BOOL)reports guids:(id)guids delta:(id)delta
{
  reportsCopy = reports;
  *&v39[5] = *MEMORY[0x277D85DE8];
  guidsCopy = guids;
  deltaCopy = delta;
  if ([(IMDMessageStore *)self _isPrimaryMessageStore])
  {
    mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isUnreadCountRefactorEnabled = [mEMORY[0x277D1A9B8] isUnreadCountRefactorEnabled];

    if (isUnreadCountRefactorEnabled)
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v38 = 67109376;
          v39[0] = reportsCopy;
          LOWORD(v39[1]) = 1024;
          *(&v39[1] + 2) = deltaCopy != 0;
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
    mEMORY[0x277D1A9B8]2 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    isUnreadCountRefactorEnabled2 = [mEMORY[0x277D1A9B8]2 isUnreadCountRefactorEnabled];

    if (suppressedUpdates)
    {
      if (isUnreadCountRefactorEnabled2)
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

    if ((isUnreadCountRefactorEnabled2 & reportsCopy) == 1)
    {
      [(IMDMessageStore *)self _refreshUnreadCountControllerForGUIDs:guidsCopy];
    }

    unreadMessagesCount = [(IMDMessageStore *)self unreadMessagesCount];
    if (deltaCopy)
    {
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v38 = 134217984;
          *v39 = unreadMessagesCount;
          _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Broadcasting unreadCountChanged with new value: %lld ", &v38, 0xCu);
        }
      }

      mEMORY[0x277D1A9B8]3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
      isUnreadCountRefactorEnabled3 = [mEMORY[0x277D1A9B8]3 isUnreadCountRefactorEnabled];

      if (isUnreadCountRefactorEnabled3)
      {
        if ([deltaCopy isReplacement])
        {
          v22 = 1;
        }

        else if ([(IMDMessageStore *)self _shouldBroadcastDeltas])
        {
          v22 = 0;
        }

        else
        {
          unreadCountController = [(IMDMessageStore *)self unreadCountController];
          fullReplacementDelta = [unreadCountController fullReplacementDelta];

          v22 = 1;
          deltaCopy = fullReplacementDelta;
        }

        v27 = +[IMDBroadcastController sharedProvider];
        broadcasterForChatCountsListeners = [v27 broadcasterForChatCountsListeners];
        [broadcasterForChatCountsListeners unreadCountReportsUpdated:deltaCopy];

        if (![(IMDMessageStore *)self _shouldSendBackwardsCompatibleUnreadCountUpdates])
        {
          goto LABEL_34;
        }

        if (v22)
        {
          fullReplacementDelta2 = deltaCopy;
        }

        else
        {
          unreadCountController2 = [(IMDMessageStore *)self unreadCountController];
          fullReplacementDelta2 = [unreadCountController2 fullReplacementDelta];
        }

        broadcasterForChatCountsListeners2 = +[IMDBroadcastController sharedProvider];
        v30 = [broadcasterForChatCountsListeners2 broadcasterForChatCountsListenersWithAdditionalCapabilities:0x100000000];
        updatedReports = [fullReplacementDelta2 updatedReports];
        [v30 unreadCountChanged:unreadMessagesCount reports:updatedReports];
      }

      else
      {
        fullReplacementDelta2 = +[IMDBroadcastController sharedProvider];
        broadcasterForChatCountsListeners2 = [fullReplacementDelta2 broadcasterForChatCountsListeners];
        [broadcasterForChatCountsListeners2 unreadCountChanged:unreadMessagesCount];
      }
    }

    else
    {
      deltaCopy = 0;
    }

LABEL_34:
    [(IMDMessageStore *)self _notifyWidgetKitTimeline:unreadMessagesCount];
    if ([(IMDMessageStore *)self _shouldUseBadgeUtilities])
    {
      v32 = +[IMDBadgeUtilities sharedInstance];
      [v32 updateBadgeForUnreadCountChangeIfNeeded:unreadMessagesCount];
    }

    lastFailedMessageDate = [(IMDMessageStore *)self lastFailedMessageDate];
    v34 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 134217984;
      *v39 = lastFailedMessageDate;
      _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_DEFAULT, "Broadcasting lastFailedMessageDateChanged with new value: %lld ", &v38, 0xCu);
    }

    v35 = +[IMDBroadcastController sharedProvider];
    broadcasterForChatCountsListeners3 = [v35 broadcasterForChatCountsListeners];
    [broadcasterForChatCountsListeners3 lastFailedMessageDateChanged:lastFailedMessageDate];

    v17 = +[IMDBadgeUtilities sharedInstance];
    [v17 updateBadgeForLastFailedMessageDateChangeIfNeeded:lastFailedMessageDate];
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
      unreadMessagesCount = [(IMDMessageStore *)self unreadMessagesCount];
      lastFailedMessageDate = [(IMDMessageStore *)self lastFailedMessageDate];
      v7 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 134217984;
        v16 = unreadMessagesCount;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Broadcasting unreadCountChanged with new value: %lld ", &v15, 0xCu);
      }

      v8 = +[IMDBroadcastController sharedProvider];
      broadcasterForChatCountsListeners = [v8 broadcasterForChatCountsListeners];
      [broadcasterForChatCountsListeners unreadCountChanged:unreadMessagesCount];

      [(IMDMessageStore *)self _notifyWidgetKitTimeline:unreadMessagesCount];
      if ([(IMDMessageStore *)self _shouldUseBadgeUtilities])
      {
        v10 = +[IMDBadgeUtilities sharedInstance];
        [v10 updateBadgeForUnreadCountChangeIfNeeded:unreadMessagesCount];
      }

      v11 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 134217984;
        v16 = lastFailedMessageDate;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "Broadcasting lastFailedMessageDateChanged with new value: %lld ", &v15, 0xCu);
      }

      v12 = +[IMDBroadcastController sharedProvider];
      broadcasterForChatCountsListeners2 = [v12 broadcasterForChatCountsListeners];
      [broadcasterForChatCountsListeners2 lastFailedMessageDateChanged:lastFailedMessageDate];

      v4 = +[IMDBadgeUtilities sharedInstance];
      [v4 updateBadgeForLastFailedMessageDateChangeIfNeeded:lastFailedMessageDate];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_notifyWidgetKitTimeline:(int64_t)timeline
{
  if ([(IMDMessageStore *)self _isPrimaryMessageStore]&& [(IMDMessageStore *)self lastNotifiedUnreadCount]!= timeline)
  {

    MEMORY[0x2821F9670](self, sel_setLastNotifiedUnreadCount_);
  }
}

- (id)replaceMessageAcknowledgmentsWithNewMessageAcknowledgment:(id)acknowledgment associatedMessageGUID:(id)d sender:(id)sender
{
  v54 = *MEMORY[0x277D85DE8];
  acknowledgmentCopy = acknowledgment;
  dCopy = d;
  senderCopy = sender;
  if (!acknowledgmentCopy)
  {
    v9 = dCopy;
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
      warning = [MEMORY[0x277D19298] warning];
      if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D5EAC();
      }
    }

    dCopy = v9;
    if (v9)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (!dCopy)
  {
LABEL_10:
    v16 = dCopy;
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
      warning2 = [MEMORY[0x277D19298] warning];
      if (os_log_type_enabled(warning2, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D5EAC();
      }
    }

    dCopy = v16;
  }

LABEL_16:
  v49 = dCopy;
  v23 = IMDMessageRecordCopyArrayOfAssociatedMessagesForMessageGUIDFromSender();
  v50 = 0;
  if (v50)
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        localizedDescription = [v50 localizedDescription];
        *buf = 138412290;
        *&buf[4] = localizedDescription;
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
      if (v33 != 3000 && v33 != 2000 || ([v32 guid], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "isEqual:", acknowledgmentCopy), v34, (v35 & 1) != 0))
      {
        v36 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          guid = [v32 guid];
          associatedMessageGUID = [v32 associatedMessageGUID];
          associatedMessageType = [v32 associatedMessageType];
          *buf = 138412802;
          *&buf[4] = guid;
          *&buf[12] = 2112;
          *&buf[14] = associatedMessageGUID;
          *&buf[22] = 2048;
          *&buf[24] = associatedMessageType;
          _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "Will NOT delete old ack %@: %@: %lld", buf, 0x20u);
        }

        goto LABEL_40;
      }

      v40 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        guid2 = [v32 guid];
        associatedMessageGUID2 = [v32 associatedMessageGUID];
        associatedMessageType2 = [v32 associatedMessageType];
        *buf = 138412802;
        *&buf[4] = guid2;
        *&buf[12] = 2112;
        *&buf[14] = associatedMessageGUID2;
        *&buf[22] = 2048;
        *&buf[24] = associatedMessageType2;
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

      guid3 = [v32 guid];
      [v28 addObject:guid3];

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

- (id)replaceCustomAcknowledgmentsWithNewMessageAcknowledgment:(id)acknowledgment associatedMessageGUID:(id)d sender:(id)sender
{
  v54 = *MEMORY[0x277D85DE8];
  acknowledgmentCopy = acknowledgment;
  dCopy = d;
  senderCopy = sender;
  v51 = acknowledgmentCopy;
  if (!acknowledgmentCopy)
  {
    v9 = dCopy;
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
      warning = [MEMORY[0x277D19298] warning];
      if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D5EAC();
      }
    }

    dCopy = v9;
    if (v9)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (!dCopy)
  {
LABEL_10:
    v16 = dCopy;
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
      warning2 = [MEMORY[0x277D19298] warning];
      if (os_log_type_enabled(warning2, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D5EAC();
      }
    }

    dCopy = v16;
  }

LABEL_16:
  v49 = dCopy;
  v23 = IMDMessageRecordCopyArrayOfAssociatedMessagesForMessageGUIDFromSender();
  v24 = 0;
  if (v24)
  {
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        localizedDescription = [v24 localizedDescription];
        *buf = 138412290;
        *&buf[4] = localizedDescription;
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
          guid = [v33 guid];
          associatedMessageGUID = [v33 associatedMessageGUID];
          associatedMessageType = [v33 associatedMessageType];
          *buf = 138412802;
          *&buf[4] = guid;
          *&buf[12] = 2112;
          *&buf[14] = associatedMessageGUID;
          *&buf[22] = 2048;
          *&buf[24] = associatedMessageType;
          _os_log_impl(&dword_22B4CC000, v36, OS_LOG_TYPE_INFO, "Will NOT delete old ack %@: %@: %lld", buf, 0x20u);
        }

        goto LABEL_39;
      }

      v40 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        guid2 = [v33 guid];
        associatedMessageGUID2 = [v33 associatedMessageGUID];
        associatedMessageType2 = [v33 associatedMessageType];
        *buf = 138412802;
        *&buf[4] = guid2;
        *&buf[12] = 2112;
        *&buf[14] = associatedMessageGUID2;
        *&buf[22] = 2048;
        *&buf[24] = associatedMessageType2;
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

      guid3 = [v33 guid];
      [v29 addObject:guid3];

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

- (id)_fileTransferGUIDsInMessageBody:(id)body
{
  bodyCopy = body;
  v4 = [bodyCopy length];
  v5 = objc_alloc_init(MEMORY[0x277CBEB40]);
  v6 = *MEMORY[0x277D19100];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22B5EB2C8;
  v10[3] = &unk_2787060B8;
  v11 = v5;
  v7 = v5;
  [bodyCopy enumerateAttribute:v6 inRange:0 options:v4 usingBlock:{0, v10}];

  array = [v7 array];

  return array;
}

- (id)addEditHistoryToMessage:(id)message editedPartIndex:(int64_t)index editType:(unint64_t)type previousMessage:(id)previousMessage
{
  messageCopy = message;
  previousMessageCopy = previousMessage;
  body = [messageCopy body];
  body2 = [previousMessageCopy body];
  if (!body2)
  {
    plainBody = [previousMessageCopy plainBody];
    v13 = plainBody;
    v14 = &stru_283F23018;
    if (plainBody)
    {
      v14 = plainBody;
    }

    v15 = v14;

    body2 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v15];
  }

  v16 = [previousMessageCopy translationsForMessagePart:index];
  v17 = objc_alloc(MEMORY[0x277D1ACB0]);
  v53 = v16;
  firstObject = [v16 firstObject];
  v19 = [v17 initWithDictionaryRepresentation:firstObject];
  translatedText = [v19 translatedText];

  originalTextRangesByPartIndex = [messageCopy originalTextRangesByPartIndex];
  v21 = [originalTextRangesByPartIndex count];

  if (v21)
  {
    __im_messagePartIndexToRangeMap = IMDatabaseLogHandle();
    if (os_log_type_enabled(__im_messagePartIndexToRangeMap, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, __im_messagePartIndexToRangeMap, OS_LOG_TYPE_DEFAULT, "Message already had originalTextRangesByPartIndex, messages is being edited for a second (or more) time. Not overriding original values.", buf, 2u);
    }
  }

  else
  {
    __im_messagePartIndexToRangeMap = [body2 __im_messagePartIndexToRangeMap];
    [messageCopy setOriginalTextRangesByPartIndex:__im_messagePartIndexToRangeMap];
  }

  v51 = [messageCopy historyForMessagePart:index];
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

  v54 = body2;
  if (![v26 count])
  {
    v27 = [body2 __im_messagePartMatchingPartIndex:index];
    messagePartBody = [v27 messagePartBody];
    v29 = messagePartBody;
    if (messagePartBody)
    {
      v30 = messagePartBody;
    }

    else
    {
      v30 = objc_alloc_init(MEMORY[0x277CCA898]);
    }

    v31 = v30;

    v32 = objc_alloc(MEMORY[0x277D1AA90]);
    time = [previousMessageCopy time];
    v34 = [v32 initWithMessagePartText:v31 messagePartTranslation:translatedText dateSent:time backwardCompatibleMessageGUID:0];

    [v26 addObject:v34];
  }

  v55 = body;
  v35 = [body __im_messagePartMatchingPartIndex:index];
  messagePartBody2 = [v35 messagePartBody];
  v37 = messagePartBody2;
  if (messagePartBody2)
  {
    v38 = messagePartBody2;
  }

  else
  {
    v38 = objc_alloc_init(MEMORY[0x277CCA898]);
  }

  v39 = v38;

  v40 = [messageCopy translationsForMessagePart:index];
  v41 = objc_alloc(MEMORY[0x277D1ACB0]);
  firstObject2 = [v40 firstObject];
  v43 = [v41 initWithDictionaryRepresentation:firstObject2];
  translatedText2 = [v43 translatedText];

  v45 = objc_alloc(MEMORY[0x277D1AA90]);
  dateEdited = [messageCopy dateEdited];
  v47 = [v45 initWithMessagePartText:v39 messagePartTranslation:translatedText2 dateSent:dateEdited backwardCompatibleMessageGUID:0];

  [v26 addObject:v47];
  if (type == 2)
  {
    if ([messageCopy scheduleType] == 2)
    {
      v49 = [v26 copy];
      [messageCopy setHistory:v49 forMessagePart:index];
    }

    else
    {
      [messageCopy setHistory:MEMORY[0x277CBEBF8] forMessagePart:index];
    }

    [messageCopy removeTranslationsForMessagePart:index];
  }

  else if (type == 1)
  {
    v48 = [v26 copy];
    [messageCopy setHistory:v48 forMessagePart:index];
  }

  return messageCopy;
}

- (id)storeEditedMessage:(id)message editedPartIndex:(int64_t)index editType:(unint64_t)type previousMessage:(id)previousMessage chat:(id)chat updatedAssociatedMessageItems:(id *)items
{
  v14 = MEMORY[0x277CCAA78];
  chatCopy = chat;
  previousMessageCopy = previousMessage;
  messageCopy = message;
  v18 = [v14 indexSetWithIndex:index];
  v19 = [(IMDMessageStore *)self storeEditedMessage:messageCopy editedPartIndexes:v18 editType:type previousMessage:previousMessageCopy chat:chatCopy updatedAssociatedMessageItems:items];

  return v19;
}

- (id)storeEditedMessage:(id)message editedPartIndexes:(id)indexes editType:(unint64_t)type previousMessage:(id)previousMessage chat:(id)chat updatedAssociatedMessageItems:(id *)items
{
  v108 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  indexesCopy = indexes;
  previousMessageCopy = previousMessage;
  chatCopy = chat;
  guid = [previousMessageCopy guid];
  v14 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = guid;
    _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_DEFAULT, "Applying edits to the content of message: %@", &buf, 0xCu);
  }

  body = [messageCopy body];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v104 = 0x3032000000;
  v105 = sub_22B4D7730;
  v106 = sub_22B4D78F4;
  v15 = messageCopy;
  v107 = v15;
  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = sub_22B5EC3A4;
  v90[3] = &unk_2787060E0;
  v90[4] = self;
  p_buf = &buf;
  typeCopy = type;
  v76 = previousMessageCopy;
  v91 = v76;
  [indexesCopy enumerateIndexesUsingBlock:v90];
  v16 = *(*(&buf + 1) + 40);

  v17 = body;
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
      __im_dateWithCurrentServerTime = [MEMORY[0x277CBEAA8] __im_dateWithCurrentServerTime];
      [v16 setTimeRead:__im_dateWithCurrentServerTime];

      v77 = 0x2000;
    }

    payloadData = [v16 payloadData];
    v21 = [payloadData length] == 0;

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
    retractedPartIndexes = [v16 retractedPartIndexes];
    v24 = [retractedPartIndexes count] == 0;

    if (v24)
    {
      v25 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *v94 = 0;
        _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_DEFAULT, "We retracted the payload data on a message that had no body and was a payload only. Inserting a retraction stamp at index 0.", v94, 2u);
      }

      [v16 addRetractedPartIndex:0];
      v17 = body;
    }

    else
    {
LABEL_14:
      v17 = body;
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
    string = [v17 string];
    [v16 isFromMe];
    time = [v16 time];
    v29 = IMDDataDectorDictionaryForMessageItem();
    sender = [v16 sender];
    v31 = sender;
    if (sender)
    {
      handle = sender;
    }

    else
    {
      handle = [v16 handle];
    }

    v33 = handle;

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
  [(IMDMessageStorageContext *)v38 setChat:chatCopy];
  v39 = [(IMDMessageStore *)self storeMessage:v16 context:v38 didReplaceBlock:0];
  v71 = v38;
  v79 = [(IMDMessageStore *)self messageWithGUID:guid];
  v40 = +[IMDChatRegistry sharedInstance];
  [v40 updateStateForChat:chatCopy forcePost:1 shouldRebuildFailedMessageDate:0 shouldCalculateUnreadCount:1];
  v70 = v40;
  v74 = [(IMDMessageStore *)self _updateAssociatedMessageItemsFromMessage:v76 toMessage:v79];
  if (items)
  {
    v41 = v74;
    *items = v74;
  }

  fileTransferGUIDs = [v76 fileTransferGUIDs];
  v43 = [(IMDMessageStore *)self _fileTransferGUIDsInMessageBody:body];
  if ([v16 scheduleType] == 2)
  {
    [v16 setScheduledMessageOriginalTransferGUIDs:fileTransferGUIDs];
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v44 = fileTransferGUIDs;
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
          fileTransferGUIDs2 = [v16 fileTransferGUIDs];
          v52 = [fileTransferGUIDs2 mutableCopy];

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

  if (guid)
  {
    v100 = guid;
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
      v68 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
      *v94 = 138412802;
      v95 = indexesCopy;
      v96 = 2112;
      v97 = v68;
      v98 = 2112;
      v99 = v76;
      _os_log_error_impl(&dword_22B4CC000, v63, OS_LOG_TYPE_ERROR, "partIndexes: %@ editType: %@ previousMessage: %@", v94, 0x20u);
    }

    v64 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMDMessageStoreDomain" code:0 userInfo:0];
    mEMORY[0x277D1AAA8] = [MEMORY[0x277D1AAA8] sharedInstance];
    [mEMORY[0x277D1AAA8] forceAutoBugCaptureWithSubType:@"Store Edited Message Failed" errorPayload:v64];
  }

  _Block_object_dispose(&buf, 8);
  v66 = *MEMORY[0x277D85DE8];

  return v79;
}

- (void)storeTranslation:(id)translation onMessage:(id)message partIndex:(int64_t)index chat:(id)chat
{
  messageCopy = message;
  chatCopy = chat;
  [messageCopy addTranslation:translation forMessagePart:index];
  v11 = objc_alloc_init(IMDMessageStorageContext);
  [(IMDMessageStorageContext *)v11 setForceReplace:1];
  [(IMDMessageStorageContext *)v11 setModifyError:1];
  [(IMDMessageStorageContext *)v11 setFlagMask:0];
  [(IMDMessageStorageContext *)v11 setUpdateMessageCache:1];
  [(IMDMessageStorageContext *)v11 setCalculateUnreadCount:1];
  [(IMDMessageStorageContext *)v11 setReindexMessage:1];
  [(IMDMessageStorageContext *)v11 setIncomingMessage:1];
  [(IMDMessageStorageContext *)v11 setChat:chatCopy];
  v12 = [(IMDMessageStore *)self storeMessage:messageCopy context:v11 didReplaceBlock:0];
  v13 = +[IMDChatRegistry sharedInstance];
  [v13 updateStateForChat:chatCopy forcePost:1 shouldRebuildFailedMessageDate:0 shouldCalculateUnreadCount:1];
}

- (id)_updateAssociatedMessageItemsFromMessage:(id)message toMessage:(id)toMessage
{
  v29 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  toMessageCopy = toMessage;
  guid = [toMessageCopy guid];
  retractedPartIndexes = [toMessageCopy retractedPartIndexes];
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_initWeak(&location, self);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = sub_22B5EC764;
  v22 = &unk_278706108;
  objc_copyWeak(&v25, &location);
  v12 = guid;
  v23 = v12;
  v13 = v10;
  v24 = v13;
  [retractedPartIndexes enumerateIndexesUsingBlock:&v19];
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

- (id)storeRepositionedStickerWithMetadata:(id)metadata fileTransferGUID:(id)d repositioningFromLocalChange:(BOOL)change
{
  changeCopy = change;
  metadataCopy = metadata;
  dCopy = d;
  v10 = +[IMDFileTransferCenter sharedInstance];
  v11 = [v10 transferForGUID:dCopy];

  stickerUserInfo = [v11 stickerUserInfo];
  v13 = [stickerUserInfo mutableCopy];

  v14 = *MEMORY[0x277D1A768];
  v15 = [v13 objectForKey:*MEMORY[0x277D1A768]];
  unsignedIntegerValue = [v15 unsignedIntegerValue];

  v17 = [metadataCopy objectForKey:v14];
  unsignedIntegerValue2 = [v17 unsignedIntegerValue];

  if (unsignedIntegerValue >= unsignedIntegerValue2)
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
    selfCopy = self;
    v43 = changeCopy;
    v45 = v11;
    v46 = dCopy;
    v19 = *MEMORY[0x277D1A778];
    v20 = [metadataCopy objectForKey:*MEMORY[0x277D1A778]];
    v41 = *MEMORY[0x277D1A780];
    v50 = [metadataCopy objectForKey:?];
    v40 = *MEMORY[0x277D1A730];
    v49 = [metadataCopy objectForKey:?];
    v39 = *MEMORY[0x277D1A728];
    v21 = [metadataCopy objectForKey:?];
    v38 = *MEMORY[0x277D1A720];
    v22 = [metadataCopy objectForKey:?];
    v23 = [metadataCopy objectForKey:v14];
    v24 = *MEMORY[0x277D1A718];
    v48 = [metadataCopy objectForKey:*MEMORY[0x277D1A718]];
    v25 = [metadataCopy objectForKey:v24];
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
      [(IMDMessageStore *)selfCopy _fileTransferCenter];
      v31 = v30 = v22;
      v32 = v21;
      dCopy = v46;
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
      dCopy = v46;
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

- (id)storeRepositionedStickerLocally:(id)locally
{
  locallyCopy = locally;
  messageSummaryInfo = [locallyCopy messageSummaryInfo];
  v6 = [messageSummaryInfo objectForKey:*MEMORY[0x277D1A048]];

  fileTransferGUIDs = [locallyCopy fileTransferGUIDs];

  firstObject = [fileTransferGUIDs firstObject];

  if (v6)
  {
    v9 = firstObject == 0;
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
    v10 = [(IMDMessageStore *)self storeRepositionedStickerWithMetadata:v6 fileTransferGUID:firstObject repositioningFromLocalChange:1];
  }

  return v10;
}

- (void)loadConsumedSessionPayloadsForItems:(id)items
{
  v34 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v3 = [itemsCopy __imArrayByFilteringWithBlock:&unk_283F1A308];
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
        pluginSessionGUID = [v9 pluginSessionGUID];
        if ([v4 containsObject:pluginSessionGUID])
        {
          if (IMOSLoggingEnabled())
          {
            v11 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
            {
              balloonBundleID = [v9 balloonBundleID];
              *buf = 138412802;
              v28 = v9;
              v29 = 2112;
              v30 = balloonBundleID;
              v31 = 2112;
              v32 = pluginSessionGUID;
              _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "Observed more than one unconsumed breadcrumb: %@ for '%@' session %@", buf, 0x20u);
            }
          }
        }

        else
        {
          v13 = +[IMDMessageStore sharedInstance];
          v14 = [v13 messagesWithAssociatedGUID:pluginSessionGUID shouldLoadAttachments:0];
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
              consumedSessionPayloads = [v9 consumedSessionPayloads];
              v19 = [consumedSessionPayloads count];
              *buf = 138412546;
              v28 = v9;
              v29 = 2048;
              v30 = v19;
              _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "History query found breadcrumb %@ with payload history: %tu items.", buf, 0x16u);
            }
          }

          [v4 addObject:pluginSessionGUID];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v6);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)_itemClassShouldUpdateTransferForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)messageRecordsToUploadToCloudKitWithFilter:(unint64_t)filter limit:(int64_t)limit
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

- (id)_messagesThatNeedSyncWithCloudKitWithFilter:(unint64_t)filter limit:(int64_t)limit attemptCount:(unint64_t)count
{
  v36 = *MEMORY[0x277D85DE8];
  v9 = IMDMessageStoreLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (count < 0x64)
  {
    if (v10)
    {
      *buf = 134218240;
      limitCopy = limit;
      v34 = 2048;
      countCopy = count;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEFAULT, "load messages needing CK sync with limit %ld, attemptCount %lu", buf, 0x16u);
    }

    v9 = [(IMDMessageStore *)self messageRecordsToUploadToCloudKitWithFilter:filter limit:limit];
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (![v9 count])
    {
      goto LABEL_24;
    }

    countCopy2 = count;
    filterCopy = filter;
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
          limitCopy = v17;
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
          guid = [AttachmentIfNeededRef guid];
          v22 = +[IMDMessageStore sharedInstance];
          v23 = [v22 itemWithGUID:guid];

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
        limitCopy = countCopy2;
        _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_DEFAULT, "**** We had corrupt messages amongst dirty messages. Trying to load messages again. numberOfAttempts %lu", buf, 0xCu);
      }

      v25 = [(IMDMessageStore *)self _messagesThatNeedSyncWithCloudKitWithFilter:filterCopy limit:limit attemptCount:countCopy2 + 1];
    }

    else
    {
LABEL_24:
      v26 = IMDMessageStoreLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [(__CFArray *)v12 count];
        *buf = 134217984;
        limitCopy = v27;
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

- (id)_messagesPendingUpdateT1ToCloudKitWithLimit:(int64_t)limit attemptCount:(unint64_t)count
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = IMDMessageStoreLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (count < 0x64)
  {
    if (v7)
    {
      v12 = 134218240;
      limitCopy = limit;
      v14 = 2048;
      countCopy = count;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "load messages needing CK update T1 with limit %ld, attemptCount %lu", &v12, 0x16u);
    }

    updated = IMDMessageRecordCopyMessagesPendingUpdateT1ToCloudKitWithLimit();
    v6 = IMDMessageStoreLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [updated count];
      v12 = 134217984;
      limitCopy = v9;
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

- (id)_messagesPendingUpdateT2ToCloudKitWithLimit:(int64_t)limit attemptCount:(unint64_t)count
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = IMDMessageStoreLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (count < 0x64)
  {
    if (v7)
    {
      v12 = 134218240;
      limitCopy = limit;
      v14 = 2048;
      countCopy = count;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "load messages needing CK update T2 with limit %ld, attemptCount %lu", &v12, 0x16u);
    }

    updated = IMDMessageRecordCopyMessagesPendingUpdateT2ToCloudKitWithLimit();
    v6 = IMDMessageStoreLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [updated count];
      v12 = 134217984;
      limitCopy = v9;
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

- (id)_messagesPendingUpdateT3ToCloudKitWithLimit:(int64_t)limit attemptCount:(unint64_t)count
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = IMDMessageStoreLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (count < 0x64)
  {
    if (v7)
    {
      v12 = 134218240;
      limitCopy = limit;
      v14 = 2048;
      countCopy = count;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "load messages needing CK update T3 with limit %ld, attemptCount %lu", &v12, 0x16u);
    }

    updated = IMDMessageRecordCopyMessagesPendingUpdateT3ToCloudKitWithLimit();
    v6 = IMDMessageStoreLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [updated count];
      v12 = 134217984;
      limitCopy = v9;
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

- (id)recordIDsAndGUIDsToDeleteWithLimit:(int64_t)limit
{
  _sSo15IMDMessageStoreC12IMDaemonCoreE25recordIDsAndGUIDsToDelete9withLimitSaySDys11AnyHashableVypGGs5Int64V_tF_0();
  sub_22B6F0AD4(&qword_27D8CF710, qword_22B7FA230);
  v3 = sub_22B7DB8F8();

  return v3;
}

- (id)batchOfRecordIDsToDeleteWithLimit:(int64_t)limit error:(id *)error
{
  selfCopy = self;
  IMDMessageStore.batchOfRecordIDsToDelete(limit:)(limit);

  sub_22B71EEC0();
  sub_22B71EF0C();
  v6 = sub_22B7DB568();

  return v6;
}

- (void)clearTombstonesForRecordIDs:(id)ds
{
  sub_22B71EEC0();
  v4 = sub_22B7DB918();
  selfCopy = self;
  _sSo15IMDMessageStoreC12IMDaemonCoreE15clearTombstones12forRecordIDsySaySo10CKRecordIDCG_tF_0(v4);
}

@end