@interface IMDChat
+ (BOOL)identifier:(id)a3 equalsIdentifier:(id)a4;
+ (IMDChat)chatWithSyncData:(id)a3;
- (BOOL)_addGroupPhotoToCKRecord:(id)a3 error:(id *)a4;
- (BOOL)_addTranscriptBackgroundToCKRecord:(id)a3 error:(id *)a4;
- (BOOL)_applyTranscriptBackgroundChangesUsingSyncData:(id)a3;
- (BOOL)_convergesParticipantsForReplicationService:(id)a3;
- (BOOL)_resetParticipants:(id)a3;
- (BOOL)applyChangesUsingSyncData:(id)a3;
- (BOOL)applyChatServiceChangesUsingSyncData:(id)a3;
- (BOOL)applyDomainIdentifierChangesUsingSyncData:(id)a3;
- (BOOL)applySyncChatSliceChangesUsingSyncData:(id)a3;
- (BOOL)chatRepairController:(id)a3 chatExistsWithGUID:(id)a4;
- (BOOL)chatRepairController:(id)a3 repairChatIdentifierWithIdentifier:(id)a4 onChat:(id)a5;
- (BOOL)chatRepairController:(id)a3 repairGUIDWithGUID:(id)a4 onChat:(id)a5;
- (BOOL)chatRepairController:(id)a3 repairParticipantWithIdentifier:(id)a4 onService:(id)a5 onChat:(id)a6;
- (BOOL)containsActiveBIASession;
- (BOOL)deleteBIAContext;
- (BOOL)hasChatBotBrandInfo;
- (BOOL)hasChatBotPersistentMenu;
- (BOOL)hasHadSuccessfulQuery;
- (BOOL)hasMatchingParticipantHandles:(id)a3;
- (BOOL)hasScheduledMessage;
- (BOOL)isArchived;
- (BOOL)isAutomaticallyTranslating;
- (BOOL)isBlackholed;
- (BOOL)isBusinessChat;
- (BOOL)isChatBot;
- (BOOL)isDeletingIncomingMessages;
- (BOOL)isDownloadingPendingSatelliteMessages;
- (BOOL)isEmergencyChat;
- (BOOL)isMergedBusinessThread;
- (BOOL)isOscarChat;
- (BOOL)isPlaceholder;
- (BOOL)isRecovered;
- (BOOL)isSMS;
- (BOOL)isSMSSpam;
- (BOOL)isStewieChat;
- (BOOL)isStewieEmergencyChat;
- (BOOL)isStewieRoadsideChat;
- (BOOL)isStewieSharingChat;
- (BOOL)isUnnamedChat;
- (BOOL)isiMessageSpam;
- (BOOL)lastKnownHybridState;
- (BOOL)receivedBlackholeError;
- (BOOL)removeParticipant:(id)a3;
- (BOOL)removeParticipants:(id)a3;
- (BOOL)setAutoDonationBehavior:(int64_t)a3 lastModificationDate:(id)a4;
- (BOOL)supportsEncryption;
- (BOOL)supportsMergingFilteredThreads;
- (BOOL)updateDonationStateWithSyndicationAction:(id)a3;
- (BOOL)updateProperties:(id)a3;
- (BOOL)updateProperties:(id)a3 shouldBroadcast:(BOOL)a4;
- (IMDAccount)account;
- (IMDChat)initWithAccountID:(id)a3 service:(id)a4 guid:(id)a5 groupID:(id)a6 chatIdentifier:(id)a7 participants:(id)a8 roomName:(id)a9 displayName:(id)a10 lastAddressedLocalHandle:(id)a11 lastAddressedSIMID:(id)a12 properties:(id)a13 state:(int64_t)a14 style:(unsigned __int8)a15 isFiltered:(int64_t)a16 hasHadSuccessfulQuery:(BOOL)a17 engramID:(id)a18 serverChangeToken:(id)a19 cloudKitSyncState:(int64_t)a20 originalGroupID:(id)a21 lastReadMessageTimeStamp:(int64_t)a22 lastMessageTimeStampOnLoad:(int64_t)a23 cloudKitRecordID:(id)a24 isBlackholed:(BOOL)a25 autoDonationBehavior:(int64_t)a26 autoDonationBehaviorLastModificationDate:(id)a27 isRecovered:(BOOL)a28 isDeletingIncomingMessages:(BOOL)a29 domainIdentifiers:(id)a30;
- (IMDService)service;
- (IMDServiceSession)serviceSession;
- (IMDaemonListenerChatProtocol)broadcaster;
- (IMMessageItem)lastMessage;
- (IMSharedEmergencyInfo)emergencyUserInfo;
- (NSArray)participants;
- (NSArray)replySuggestions;
- (NSDate)autoDonationBehaviorLastModificationDate;
- (NSDate)lastScheduledMessageCreatedDate;
- (NSDate)lastTUConversationCreatedDate;
- (NSDate)requestedDowngradeExpirationDate;
- (NSDictionary)chatProperties;
- (NSDictionary)dictionaryRepresentation;
- (NSDictionary)domainIdentifiers;
- (NSDictionary)keyTransparencyURIToUUIDMapping;
- (NSDictionary)properties;
- (NSDictionary)syncedProperties;
- (NSString)accountID;
- (NSString)businessName;
- (NSString)chatIdentifier;
- (NSString)description;
- (NSString)deviceIndependentID;
- (NSString)displayName;
- (NSString)engramID;
- (NSString)groupID;
- (NSString)guid;
- (NSString)incomingTranslatedMessageIdentifier;
- (NSString)lastAddressedLocalHandle;
- (NSString)lastAddressedSIMID;
- (NSString)lastSeenMessageGuid;
- (NSString)originalGroupID;
- (NSString)personCentricID;
- (NSString)pinningIdentifier;
- (NSString)requestedDowngradeService;
- (NSString)roomName;
- (NSString)serverChangeToken;
- (NSString)serviceName;
- (NSString)translationLanguageIdentifier;
- (NSString)userTranslationLanguageIdentifier;
- (id)BIAContext;
- (id)_ckUniqueID;
- (id)_copyCKRecordFromExistingCKMetadataWithZoneID:(id)a3 salt:(id)a4;
- (id)_findChatParticipantsWithFromID:(id)a3;
- (id)_mergeParticipantIDs;
- (id)_sortedParticipantIDHashForParticipants:(id)a3 usesPersonCentricID:(BOOL)a4;
- (id)associatedBusinessID;
- (id)brandInfo;
- (id)brandLogoData;
- (id)chatRepairController:(id)a3 generateUnusedChatIdentifierForGroupChatWithAccount:(id)a4;
- (id)cloudKitChatIDForServiceName:(id)a3;
- (id)cloudKitDebugDescription;
- (id)compressedProtobufDataForChatProto1;
- (id)copyCKRecordRepresentationWithZoneID:(id)a3 salt:(id)a4 error:(id *)a5;
- (id)copyCKRecordRepresentationsWithZoneID:(id)a3 salt:(id)a4 error:(id *)a5;
- (id)copyDictionaryRepresentation:(BOOL)a3;
- (id)dictionaryRepresentationIncludingLastMessage;
- (id)generateNewGroupID;
- (id)groupPhotoGuid;
- (id)groupPhotoUploadFailureCount;
- (id)identifiersForDomain:(id)a3;
- (id)lastSentMessageDate;
- (id)lastTranslatableMessageGUIDWithLanguageCode:(id)a3;
- (id)lastUsedBIAReferenceID;
- (id)lastUsedBIAUserID;
- (id)latestIdentifierForDomain:(id)a3;
- (id)participantHandles;
- (id)transcriptBackgroundPath;
- (id)transcriptBackgroundProperties;
- (int)emergencyTranscriptSharingState;
- (int)getNumberOfTimesRespondedToThread;
- (int)messageHandshakeState;
- (int)smsHandshakeState;
- (int64_t)autoDonationBehavior;
- (int64_t)cloudKitSyncState;
- (int64_t)compareBySequenceNumberAndDateDescending:(id)a3;
- (int64_t)engroupCreationDate;
- (int64_t)groupParticipantVersion;
- (int64_t)isFiltered;
- (int64_t)lastMessageTimeStampOnLoad;
- (int64_t)lastReadMessageTimeStamp;
- (int64_t)pendingIncomingSatelliteMessageCount;
- (int64_t)rowID;
- (int64_t)spamCategory;
- (int64_t)spamDetectionSource;
- (int64_t)state;
- (unint64_t)_unreadCount;
- (unint64_t)powerLogConversationType;
- (unint64_t)repairHistory;
- (unint64_t)unreadCount;
- (unsigned)style;
- (void)_convergeGroupChatIfNeededWithServiceSession:(id)a3 account:(id)a4 replicationService:(id)a5 groupID:(id)a6 incomingParticipants:(id)a7 fromIdentifier:(id)a8 toIdentifier:(id)a9 receivedGroupParticipantVersion:(id)a10 receivedGroupProtocolVersion:(id)a11 messageTimeStamp:(id)a12 groupPhotoCreationTime:(id)a13;
- (void)_incrementParticipantVersion;
- (void)_indexChatAndMessagesToSpotlightWithReason:(int64_t)a3;
- (void)_modifyGroupWithServiceSession:(id)a3 groupID:(id)a4 toParticipants:(id)a5 toIdentifier:(id)a6 fromIdentifier:(id)a7 account:(id)a8 messageTimeStamp:(id)a9;
- (void)_persistMergedIDMergedChatsIfNeeded:(id)a3;
- (void)_repairChatIfNeeded;
- (void)_repairMissingServiceName;
- (void)_setAutoDonationBehavior:(int64_t)a3 lastModificationDate:(id)a4 setDirtyFlag:(BOOL)a5;
- (void)_setParticipantVersion:(int64_t)a3;
- (void)_setRowID:(int64_t)a3;
- (void)_setUnreadCount:(unint64_t)a3;
- (void)_submitAndOpenTapToRadarForHistoricalIdentifierReuseForIdentifier:(id)a3 domain:(id)a4;
- (void)_submitAndOpenTapToRadarForInvalidFeatureFlagConfiguration;
- (void)_submitAndOpenTapToRadarForInvalidUseOfGroupIDOnService:(id)a3;
- (void)_submitAndOpenTapToRadarForMissingLatestIdentifierForDomain:(id)a3;
- (void)_updateCachedParticipants;
- (void)_updateLastMessage:(id)a3;
- (void)addBIAContextWithUserID:(id)a3 referenceID:(id)a4;
- (void)addParticipant:(id)a3;
- (void)addParticipants:(id)a3;
- (void)assignIdentifier:(id)a3 forDomain:(id)a4 isHistoricalIdentifier:(BOOL)a5;
- (void)assignUniqueHistoricalDomainIdentifiers:(id)a3;
- (void)broadcastTranscriptBackgroundChanges;
- (void)dealloc;
- (void)forceAutoBugCaptureForMissingGroupIDWithMessage:(id)a3;
- (void)meCardHasUpdated;
- (void)recoverParticipantsIfNeeded;
- (void)resetCKSyncState;
- (void)setAccountID:(id)a3;
- (void)setChatIdentifier:(id)a3;
- (void)setCloudKitSyncState:(int64_t)a3;
- (void)setDisplayName:(id)a3;
- (void)setDomainIdentifiers:(id)a3;
- (void)setEmergencyUserInfo:(id)a3;
- (void)setEngramID:(id)a3;
- (void)setGroupID:(id)a3;
- (void)setGroupParticipantVersion:(int64_t)a3;
- (void)setGuid:(id)a3;
- (void)setIncomingTranslatedMessageIdentifier:(id)a3;
- (void)setInitialGroupID:(id)a3;
- (void)setInitialOriginalGroupID:(id)a3;
- (void)setIsFiltered:(int64_t)a3;
- (void)setLastAddressedLocalHandle:(id)a3;
- (void)setLastAddressedSIMID:(id)a3;
- (void)setLastMessage:(id)a3;
- (void)setLastMessageTimeStampOnLoad:(int64_t)a3;
- (void)setLastReadMessageTimeStamp:(int64_t)a3;
- (void)setLastScheduledMessageCreatedDate:(id)a3;
- (void)setLastSentMessageDate:(id)a3;
- (void)setLastTUConversationCreatedDate:(id)a3;
- (void)setOriginalGroupID:(id)a3;
- (void)setParticipants:(id)a3;
- (void)setPendingIncomingSatelliteMessageCount:(int64_t)a3;
- (void)setProperties:(id)a3;
- (void)setRepairHistory:(unint64_t)a3;
- (void)setReplySuggestions:(id)a3;
- (void)setRequestedDowngradeExpirationDate:(id)a3;
- (void)setRequestedDowngradeService:(id)a3;
- (void)setRoomName:(id)a3;
- (void)setServerChangeToken:(id)a3;
- (void)setServiceName:(id)a3;
- (void)setSpamDetectionSource:(int64_t)a3;
- (void)setState:(int64_t)a3;
- (void)setStyle:(unsigned __int8)a3;
- (void)shouldSatelliteRelayIncomingSMSMessagesWithCompletion:(id)a3;
- (void)storeAndBroadcastChatChanges;
- (void)tearDownToneNotificationSessionIfNeeded;
- (void)unassignAndPersistIdentifier:(id)a3 forDomain:(id)a4;
- (void)updateAssociatedBusinessID:(id)a3;
- (void)updateBrandLogo:(id)a3 transferGuid:(id)a4;
- (void)updateCloudKitRecordID:(id)a3;
- (void)updateCloudKitSyncState:(int64_t)a3;
- (void)updateCollaborationMetadata:(id)a3 forMessageGUID:(id)a4;
- (void)updateDisplayName:(id)a3 sender:(id)a4;
- (void)updateEngramID:(id)a3;
- (void)updateEngroupCreationDate:(int64_t)a3;
- (void)updateGroupPhotoGuid:(id)a3;
- (void)updateGroupPhotoUploadFailureCount:(id)a3;
- (void)updateIsFiltered:(int64_t)a3 fromContact:(BOOL)a4;
- (void)updateLastAddressedHandle:(id)a3 forceUpdate:(BOOL)a4;
- (void)updateLastAddressedHandle:(id)a3 forceUpdateHandle:(BOOL)a4 lastAddressedSIMID:(id)a5;
- (void)updateLastAddressedSIMID:(id)a3;
- (void)updateLastMessageGUID:(id)a3 forLanguageCode:(id)a4;
- (void)updateLastReadMessageTimeStampIfNeeded:(int64_t)a3;
- (void)updateLastSeenMessageGuidIfNeeded:(id)a3;
- (void)updateNicknamesForParticipants:(id)a3;
- (void)updateNumberOfTimesRespondedToThread;
- (void)updateOriginalGroupID:(id)a3;
- (void)updatePendingIncomingSatelliteMessageCount:(int64_t)a3;
- (void)updateRepairHistoryOfChat:(id)a3 withRepairHistory:(unint64_t)a4;
- (void)updateSMSCategory:(int64_t)a3 subCategory:(int64_t)a4;
- (void)updateSMSSpamExtensionNameChatProperty:(id)a3;
- (void)updateServerChangeToken:(id)a3;
- (void)updateTimeSensitiveExpirationDateForReadIfNeeded;
- (void)updateTimeSensitiveExpirationDateWithMessageTime:(id)a3 hasOneTimeCode:(BOOL)a4;
- (void)updateTranscriptBackgroundProperties:(id)a3;
@end

@implementation IMDChat

- (BOOL)isBlackholed
{
  [(NSRecursiveLock *)self->_lock lock];
  isBlackholed = self->_isBlackholed;
  [(NSRecursiveLock *)self->_lock unlock];
  return isBlackholed;
}

- (NSString)guid
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSString *)self->_guid copy];
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (NSString)serviceName
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSString *)self->_serviceName copy];
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (unsigned)style
{
  [(NSRecursiveLock *)self->_lock lock];
  style = self->_style;
  [(NSRecursiveLock *)self->_lock unlock];
  return style;
}

- (NSString)chatIdentifier
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSString *)self->_chatIdentifier copy];
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (NSDate)lastScheduledMessageCreatedDate
{
  v2 = [(IMDChat *)self properties];
  v3 = [v2 objectForKey:@"lastScheduledMessageCreatedDate"];

  return v3;
}

- (IMMessageItem)lastMessage
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = self->_lastMessage;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (NSDictionary)properties
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = self->_properties;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (NSString)pinningIdentifier
{
  if ([(IMDChat *)self isGroupChat]&& [(IMDChat *)self isSMS])
  {
    v3 = [(IMDChat *)self participants];
    v4 = [(IMDChat *)self _sortedParticipantIDHashForParticipants:v3 usesPersonCentricID:0];
  }

  else
  {
    v4 = [(IMDChat *)self deviceIndependentID];
  }

  return v4;
}

- (BOOL)isSMS
{
  v2 = [(IMDChat *)self serviceName];
  v3 = [v2 isEqualToString:*MEMORY[0x277D1A610]];

  return v3;
}

- (NSString)deviceIndependentID
{
  if ([(IMDChat *)self isGroupChat])
  {
    [(IMDChat *)self groupID];
  }

  else
  {
    [(IMDChat *)self persistentID];
  }
  v3 = ;

  return v3;
}

- (NSString)groupID
{
  v14 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v4 = [v3 isOneChatEnabled];

  if (v4)
  {
    v5 = [(IMDChat *)self latestIdentifierForDomain:*MEMORY[0x277D19780]];
    v6 = [v5 copy];

    if (v6)
    {
      goto LABEL_12;
    }

    groupID = self->_groupID;
    if (!groupID)
    {
      goto LABEL_9;
    }

    if (self->_style == 43)
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v9 = self->_groupID;
          v12 = 138412290;
          v13 = v9;
          _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEBUG, "Severe Error Detected! Group Chat is missing latest identifier in iMessageGroupID domain, but groupID is non-nil: %@. Please file a radar!", &v12, 0xCu);
        }
      }

LABEL_9:
      v6 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    groupID = self->_groupID;
  }

  v6 = [(NSString *)groupID copy];
LABEL_12:
  [(NSRecursiveLock *)self->_lock unlock];
  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NSArray)participants
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSArray *)self->_participants copy];
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (int64_t)lastMessageTimeStampOnLoad
{
  [(NSRecursiveLock *)self->_lock lock];
  lastMessageTimeStampOnLoad = self->_lastMessageTimeStampOnLoad;
  [(NSRecursiveLock *)self->_lock unlock];
  return lastMessageTimeStampOnLoad;
}

- (unint64_t)unreadCount
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v4 = [v3 isUnreadCountRefactorEnabled];

  if (v4)
  {
    v5 = [(IMDChat *)self guid];
    if ([v5 length])
    {
      v6 = +[IMDMessageStore sharedInstance];
      v7 = [v6 unreadCountController];
      v13[0] = v5;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
      v9 = [v7 unreadCountForChatsWithGUIDs:v8];
    }

    else
    {
      v9 = 0;
    }

    v11 = *MEMORY[0x277D85DE8];
    return v9;
  }

  else
  {
    v10 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2821F9670](self, sel__unreadCount);
  }
}

- (NSString)originalGroupID
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSString *)self->_originalGroupID copy];
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (NSString)accountID
{
  v22 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->_lock lock];
  accountID = self->_accountID;
  [(NSRecursiveLock *)self->_lock unlock];
  if (accountID)
  {
    v4 = self->_accountID;
  }

  else
  {
    v5 = [(IMDChat *)self serviceName];

    if (!v5)
    {
      goto LABEL_10;
    }

    v6 = +[IMDServiceController sharedController];
    v7 = [(IMDChat *)self serviceName];
    v8 = [v6 serviceWithName:v7];

    if (v8)
    {
      v9 = +[IMDAccountController sharedAccountController];
      v10 = [v9 accountsForService:v8];
      v11 = [v10 __imFirstObject];

      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v13 = [(IMDChat *)self guid];
          v18 = 138412546;
          v19 = v13;
          v20 = 2112;
          v21 = v11;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEBUG, "Reassociating chat: %@  to account: %@", &v18, 0x16u);
        }
      }

      v14 = [v11 accountID];
      [(IMDChat *)self setAccountID:v14];

      v15 = [v8 internalName];
      [(IMDChat *)self setServiceName:v15];

      v4 = [v11 accountID];
    }

    else
    {
LABEL_10:
      v4 = 0;
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v4;
}

- (NSString)personCentricID
{
  if ([(IMDChat *)self style]== 43)
  {
    v16 = [(IMDChat *)self groupID];
  }

  else
  {
    v16 = 0;
  }

  v3 = MEMORY[0x277D1A918];
  v4 = [(IMDChat *)self guid];
  v5 = [(IMDChat *)self chatIdentifier];
  v6 = [(IMDChat *)self style];
  v7 = [(IMDChat *)self displayName];
  v8 = [(IMDChat *)self lastKnownHybridState];
  v9 = [(IMDChat *)self account];
  v10 = [v9 service];
  v11 = [v10 groupsMergeDisplayNames];
  v12 = [(IMDChat *)self _mergeParticipantIDs];
  LOBYTE(v15) = v11;
  v13 = [v3 personCentricIDForChatWithGUID:v4 chatIdentifier:v5 chatStyle:v6 groupID:v16 displayName:v7 lastKnownToBeHybrid:v8 mergeDisplayNames:v15 participantIDs:v12];

  return v13;
}

- (NSString)displayName
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSString *)self->_displayName copy];
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (BOOL)lastKnownHybridState
{
  v2 = [(IMDChat *)self properties];
  v3 = [v2 valueForKey:*MEMORY[0x277D19880]];
  v4 = [v3 BOOLValue];

  return v4;
}

- (IMDAccount)account
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(IMDChat *)self accountID];

  if (!v3)
  {
    goto LABEL_3;
  }

  v4 = +[IMDAccountController sharedAccountController];
  v5 = [(IMDChat *)self accountID];
  v6 = [v4 accountForAccountID:v5];

  if (!v6)
  {
LABEL_3:
    v7 = [(IMDChat *)self serviceName];

    if (!v7)
    {
      goto LABEL_10;
    }

    v8 = +[IMDServiceController sharedController];
    v9 = [(IMDChat *)self serviceName];
    v10 = [v8 serviceWithName:v9];

    if (v10)
    {
      v11 = +[IMDAccountController sharedAccountController];
      v12 = [v11 accountsForService:v10];
      v6 = [v12 __imFirstObject];

      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v14 = [(IMDChat *)self guid];
          v19 = 138412546;
          v20 = v14;
          v21 = 2112;
          v22 = v6;
          _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEBUG, "Reassociating chat: %@  to account: %@", &v19, 0x16u);
        }
      }

      v15 = [v6 accountID];
      [(IMDChat *)self setAccountID:v15];

      v16 = [v10 internalName];
      [(IMDChat *)self setServiceName:v16];
    }

    else
    {
LABEL_10:
      v6 = 0;
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_mergeParticipantIDs
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v4 = [(IMDChat *)self participants];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  if ([(IMDChat *)self style]== 43)
  {
    v6 = [(IMDChat *)self displayName];
    v7 = [v6 length] == 0;
  }

  else
  {
    v7 = 1;
  }

  if (IMSharedHelperContactsBasedMergingEnabled())
  {
    v8 = IMMergeNamedGroups() ^ 1 | v7;
  }

  else
  {
    v8 = 0;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = [(IMDChat *)self participants];
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        if ((v8 & 1) != 0 && ([*(*(&v23 + 1) + 8 * i) personCentricID], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "__im_isSipHandle"), v15, (v16 & 1) == 0))
        {
          v17 = [v14 CNContactID];
        }

        else
        {
          if (!IMSharedHelperPersonCentricMergingEnabled())
          {
            v18 = 0;
            goto LABEL_19;
          }

          v17 = [v14 personCentricID];
        }

        v18 = v17;
LABEL_19:
        if (![(__CFString *)v18 length])
        {
          v19 = [v14 ID];

          v18 = v19;
        }

        if ([(__CFString *)v18 length])
        {
          v20 = v18;
        }

        else
        {
          v20 = @"invalidHandle";
        }

        [v5 addObject:v20];
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)supportsMergingFilteredThreads
{
  v3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v4 = [v3 isMergeFilteredThreadsEnabled];

  return v4 && [(IMDChat *)self isFiltered]> 2;
}

- (int64_t)isFiltered
{
  [(NSRecursiveLock *)self->_lock lock];
  isFiltered = self->_isFiltered;
  [(NSRecursiveLock *)self->_lock unlock];
  return isFiltered;
}

- (id)groupPhotoGuid
{
  v2 = [(IMDChat *)self properties];
  v3 = [v2 objectForKey:*MEMORY[0x277D19810]];

  return v3;
}

- (int64_t)state
{
  [(NSRecursiveLock *)self->_lock lock];
  state = self->_state;
  [(NSRecursiveLock *)self->_lock unlock];
  return state;
}

- (NSString)description
{
  v28 = MEMORY[0x277CCACA8];
  v27 = [(IMDChat *)self guid];
  v26 = [(IMDChat *)self style];
  v25 = [(IMDChat *)self state];
  v24 = [(IMDChat *)self participants];
  v23 = [(IMDChat *)self roomName];
  v30 = [(IMDChat *)self displayName];
  v22 = [(IMDChat *)self chatIdentifier];
  v21 = [(IMDChat *)self unreadCount];
  v20 = [(IMDChat *)self rowID];
  v19 = [(IMDChat *)self groupID];
  v18 = [(IMDChat *)self originalGroupID];
  v17 = [(IMDChat *)self lastAddressedLocalHandle];
  v29 = [(IMDChat *)self lastAddressedSIMID];
  v16 = [(IMDChat *)self isFiltered];
  v3 = @"YES";
  if ([(IMDChat *)self hasHadSuccessfulQuery])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v15 = v4;
  v5 = [(IMDChat *)self serverChangeToken];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IMDChat cloudKitSyncState](self, "cloudKitSyncState")}];
  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[IMDChat lastReadMessageTimeStamp](self, "lastReadMessageTimeStamp")}];
  v8 = [(IMDChat *)self cloudKitRecordID];
  if ([(IMDChat *)self isBlackholed])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [(IMDChat *)self groupPhotoGuid];
  if ([(IMDChat *)self isRecovered])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if (![(IMDChat *)self isDeletingIncomingMessages])
  {
    v3 = @"NO";
  }

  [(IMDChat *)self repairHistory];
  v12 = IMStringFromChatRepairHistory();
  v13 = [v28 stringWithFormat:@"IMDChat: %p [GUID: %@ Style: %c State: %d Participants: %@  Room Name: %@  Display Name: %@  Identifier: %@  Unread count: %d  Row ID: %lld  Group ID: %@ originalGroupID: %@ lastAddressedHandle: %@ lastAddressedSIMID: %@ isFiltered: %d hasHadSuccessfulQuery: %@ serverChangeToken: %@ cKSate:%@ lastReadTime:%@ cloudKitRecordID: %@ isBlackholed: %@ groupPhotoGuid: %@ isRecovered: %@ isDeletingIncomingMessages %@ repairHistory %@ pendingIncomingSatelliteMessageCount: %d]", self, v27, v26, v25, v24, v23, v30, v22, v21, v20, v19, v18, v17, v29, v16, v15, v5, v6, v7, v8, v9, v10, v11, v3, v12, -[IMDChat pendingIncomingSatelliteMessageCount](self, "pendingIncomingSatelliteMessageCount")];

  return v13;
}

- (NSString)roomName
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSString *)self->_roomName copy];
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (int64_t)rowID
{
  [(NSRecursiveLock *)self->_lock lock];
  rowID = self->_rowID;
  [(NSRecursiveLock *)self->_lock unlock];
  return rowID;
}

- (NSString)lastAddressedLocalHandle
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSString *)self->_lastAddressedLocalHandle copy];
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (NSString)lastAddressedSIMID
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSString *)self->_lastAddressedSIMID copy];
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (BOOL)hasHadSuccessfulQuery
{
  [(NSRecursiveLock *)self->_lock lock];
  hasHadSuccessfulQuery = self->_hasHadSuccessfulQuery;
  [(NSRecursiveLock *)self->_lock unlock];
  return hasHadSuccessfulQuery;
}

- (NSString)engramID
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSString *)self->_engramID copy];
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (NSString)serverChangeToken
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSString *)self->_serverChangeToken copy];
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (int64_t)cloudKitSyncState
{
  [(NSRecursiveLock *)self->_lock lock];
  cloudKitSyncState = self->_cloudKitSyncState;
  [(NSRecursiveLock *)self->_lock unlock];
  return cloudKitSyncState;
}

- (int64_t)lastReadMessageTimeStamp
{
  [(NSRecursiveLock *)self->_lock lock];
  lastReadMessageTimeStamp = self->_lastReadMessageTimeStamp;
  [(NSRecursiveLock *)self->_lock unlock];
  return lastReadMessageTimeStamp;
}

- (int64_t)engroupCreationDate
{
  v2 = [(IMDChat *)self properties];
  v3 = [v2 objectForKey:@"EngroupCreationDateKey"];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)repairHistory
{
  v2 = [(IMDChat *)self properties];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D19918]];
  v4 = [v3 integerValue];

  return v4;
}

- (int64_t)pendingIncomingSatelliteMessageCount
{
  [(NSRecursiveLock *)self->_lock lock];
  pendingIncomingSatelliteMessageCount = self->_pendingIncomingSatelliteMessageCount;
  [(NSRecursiveLock *)self->_lock unlock];
  return pendingIncomingSatelliteMessageCount;
}

- (BOOL)isRecovered
{
  [(NSRecursiveLock *)self->_lock lock];
  isRecovered = self->_isRecovered;
  [(NSRecursiveLock *)self->_lock unlock];
  return isRecovered;
}

- (BOOL)isDeletingIncomingMessages
{
  [(NSRecursiveLock *)self->_lock lock];
  isDeletingIncomingMessages = self->_isDeletingIncomingMessages;
  [(NSRecursiveLock *)self->_lock unlock];
  return isDeletingIncomingMessages;
}

- (NSDate)autoDonationBehaviorLastModificationDate
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = self->_autoDonationBehaviorLastModificationDate;
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (int64_t)autoDonationBehavior
{
  [(NSRecursiveLock *)self->_lock lock];
  autoDonationBehavior = self->_autoDonationBehavior;
  [(NSRecursiveLock *)self->_lock unlock];
  return autoDonationBehavior;
}

- (BOOL)isArchived
{
  [(NSRecursiveLock *)self->_lock lock];
  isArchived = self->_isArchived;
  [(NSRecursiveLock *)self->_lock unlock];
  return isArchived;
}

- (void)storeAndBroadcastChatChanges
{
  v3 = +[IMDChatStore sharedInstance];
  [v3 storeChat:self];

  v6 = [(IMDChat *)self copyDictionaryRepresentation:0];
  v4 = [(IMDChat *)self broadcaster];
  v5 = [(IMDChat *)self guid];
  [v4 chat:v5 updated:v6];
}

- (IMDaemonListenerChatProtocol)broadcaster
{
  v3 = +[IMDBroadcastController sharedProvider];
  v4 = [v3 broadcasterForChatListenersUsingBlackholeRegistry:{-[IMDChat isBlackholed](self, "isBlackholed")}];

  return v4;
}

- (BOOL)isStewieChat
{
  v3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v4 = [v3 stewieEnabled];

  if (!v4)
  {
    return 0;
  }

  v5 = [(IMDChat *)self chatIdentifier];
  v6 = MEMORY[0x231897A60]();

  return v6;
}

- (BOOL)isBusinessChat
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(IMDChat *)self participants];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v8 + 1) + 8 * i) isBusiness])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (id)_findChatParticipantsWithFromID:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(IMDChat *)self participants];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v16 + 1) + 8 * i) ID];
        if ([v11 length])
        {
          v12 = [v11 _stripFZIDPrefix];
          [v5 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  if (v4)
  {
    v13 = [v4 _stripFZIDPrefix];
    [v5 addObject:v13];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_setParticipantVersion:(int64_t)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = IMOSLoggingEnabled();
  if (a3 < 0)
  {
    if (v5)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Received a negative participant version. This is not right!", &v10, 2u);
      }
    }
  }

  else
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [(IMDChat *)self groupID];
        v10 = 138412546;
        v11 = v7;
        v12 = 2048;
        v13 = a3;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Setting participant version of chat %@ to %ld", &v10, 0x16u);
      }
    }

    [(IMDChat *)self setGroupParticipantVersion:a3];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_incrementParticipantVersion
{
  v10 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [(IMDChat *)self groupID];
      v6 = 138412546;
      v7 = v4;
      v8 = 2048;
      v9 = [(IMDChat *)self groupParticipantVersion];
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Incrementing participant version of chat %@ to %ld", &v6, 0x16u);
    }
  }

  [(IMDChat *)self setGroupParticipantVersion:[(IMDChat *)self groupParticipantVersion]+ 1];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_modifyGroupWithServiceSession:(id)a3 groupID:(id)a4 toParticipants:(id)a5 toIdentifier:(id)a6 fromIdentifier:(id)a7 account:(id)a8 messageTimeStamp:(id)a9
{
  v88 = *MEMORY[0x277D85DE8];
  v70 = a3;
  v59 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v69 = a9;
  v62 = v18;
  if (!v18)
  {
    v62 = [v70 account];
  }

  v19 = [v16 _stripFZIDPrefix];

  v64 = [v17 _stripFZIDPrefix];

  v20 = [v15 __imArrayByApplyingBlock:&unk_283F198E8];

  v61 = [v19 isEqualToIgnoringCase:v64];
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v83 = v20;
      v84 = 2112;
      v85 = v19;
      v86 = 2112;
      v87 = v64;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, " Updating participants: %@ toIdentifier: %@, fromIdentifier: %@", buf, 0x20u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = [(IMDChat *)self participants];
      *buf = 138412290;
      v83 = v23;
      _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Chat participants before converge %@", buf, 0xCu);
    }
  }

  v24 = [(IMDChat *)self participants];
  v63 = [v24 arrayByApplyingSelector:sel_ID];

  v71 = [MEMORY[0x277CBEB98] setWithArray:v63];
  v25 = [v63 mutableCopy];
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = v20;
  v26 = [(__CFString *)obj countByEnumeratingWithState:&v76 objects:v81 count:16];
  if (v26)
  {
    v68 = 0;
    v27 = 0;
    v28 = *v77;
    v29 = v64;
    if (v61)
    {
      v29 = 0;
    }

    v65 = v29;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v77 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v31 = *(*(&v76 + 1) + 8 * i);
        if (([v71 containsObject:v31] & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v32 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v83 = v31;
              _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "   Adding participant: %@", buf, 0xCu);
            }
          }

          v33 = [MEMORY[0x277CBEAA8] __im_iMessageDateFromTimeStamp:v69];
          if ([(__CFString *)v31 isEqualToString:v64])
          {
            v34 = [v33 dateByAddingTimeInterval:-0.000002];

            v68 = 1;
            v33 = v34;
          }

          v35 = objc_alloc_init(IMDChatMemberStatusChangeContext);
          [(IMDChatMemberStatusChangeContext *)v35 setStatus:2];
          [(IMDChatMemberStatusChangeContext *)v35 setHandleID:v31];
          [(IMDChatMemberStatusChangeContext *)v35 setFromHandleID:v65];
          v36 = [(IMDChat *)self chatIdentifier];
          [(IMDChatMemberStatusChangeContext *)v35 setChatIdentifier:v36];

          [(IMDChatMemberStatusChangeContext *)v35 setStyle:[(IMDChat *)self style]];
          v37 = [(IMDChat *)self account];
          [(IMDChatMemberStatusChangeContext *)v35 setAccount:v37];

          [(IMDChatMemberStatusChangeContext *)v35 setDestinationCallerID:v19];
          [(IMDChatMemberStatusChangeContext *)v35 setMessageTime:v33];
          [(IMDChatMemberStatusChangeContext *)v35 setUnattributed:1];
          v38 = [v70 didChangeMemberStatus:v35];

          v27 = 1;
        }

        [(__CFString *)v25 removeObject:v31];
      }

      v26 = [(__CFString *)obj countByEnumeratingWithState:&v76 objects:v81 count:16];
    }

    while (v26);
  }

  else
  {
    v68 = 0;
    v27 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v39 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v83 = v25;
      _os_log_impl(&dword_22B4CC000, v39, OS_LOG_TYPE_INFO, "   Participants to be removed %@", buf, 0xCu);
    }
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v66 = v25;
  v40 = [(__CFString *)v66 countByEnumeratingWithState:&v72 objects:v80 count:16];
  if (v40)
  {
    v41 = *v73;
    if (v61)
    {
      v42 = 0;
    }

    else
    {
      v42 = v64;
    }

    do
    {
      for (j = 0; j != v40; ++j)
      {
        if (*v73 != v41)
        {
          objc_enumerationMutation(v66);
        }

        v44 = *(*(&v72 + 1) + 8 * j);
        if (([(__CFString *)v44 isEqualToIgnoringCase:v19]& 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v45 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v83 = v44;
              _os_log_impl(&dword_22B4CC000, v45, OS_LOG_TYPE_INFO, "   Removing participant: %@", buf, 0xCu);
            }
          }

          v46 = [MEMORY[0x277CBEAA8] __im_iMessageDateFromTimeStamp:v69];
          v47 = v46;
          if (v68)
          {
            v48 = [v46 dateByAddingTimeInterval:-0.000001];

            v47 = v48;
          }

          v49 = objc_alloc_init(IMDChatMemberStatusChangeContext);
          [(IMDChatMemberStatusChangeContext *)v49 setStatus:3];
          [(IMDChatMemberStatusChangeContext *)v49 setHandleID:v44];
          [(IMDChatMemberStatusChangeContext *)v49 setFromHandleID:v42];
          v50 = [(IMDChat *)self chatIdentifier];
          [(IMDChatMemberStatusChangeContext *)v49 setChatIdentifier:v50];

          [(IMDChatMemberStatusChangeContext *)v49 setStyle:[(IMDChat *)self style]];
          v51 = [(IMDChat *)self account];
          [(IMDChatMemberStatusChangeContext *)v49 setAccount:v51];

          [(IMDChatMemberStatusChangeContext *)v49 setDestinationCallerID:v19];
          [(IMDChatMemberStatusChangeContext *)v49 setMessageTime:v47];
          [(IMDChatMemberStatusChangeContext *)v49 setUnattributed:1];
          v52 = [v70 didChangeMemberStatus:v49];

          v27 = 1;
        }
      }

      v40 = [(__CFString *)v66 countByEnumeratingWithState:&v72 objects:v80 count:16];
    }

    while (v40);
  }

  if (IMOSLoggingEnabled())
  {
    v53 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
    {
      v54 = [(IMDChat *)self participants];
      *buf = 138412290;
      v83 = v54;
      _os_log_impl(&dword_22B4CC000, v53, OS_LOG_TYPE_INFO, "Chat participants after converge %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v55 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      v56 = @"NO";
      if (v27)
      {
        v56 = @"YES";
      }

      *buf = 138412290;
      v83 = v56;
      _os_log_impl(&dword_22B4CC000, v55, OS_LOG_TYPE_INFO, "Group changed and will write to db? %@", buf, 0xCu);
    }
  }

  if (v27)
  {
    v57 = +[IMDChatStore sharedInstance];
    [v57 storeChat:self];
  }

  v58 = *MEMORY[0x277D85DE8];
}

- (BOOL)_convergesParticipantsForReplicationService:(id)a3
{
  if (a3)
  {
    return [a3 supportsCapability:*MEMORY[0x277D1A568]] ^ 1;
  }

  else
  {
    return 1;
  }
}

- (void)_convergeGroupChatIfNeededWithServiceSession:(id)a3 account:(id)a4 replicationService:(id)a5 groupID:(id)a6 incomingParticipants:(id)a7 fromIdentifier:(id)a8 toIdentifier:(id)a9 receivedGroupParticipantVersion:(id)a10 receivedGroupProtocolVersion:(id)a11 messageTimeStamp:(id)a12 groupPhotoCreationTime:(id)a13
{
  v86 = *MEMORY[0x277D85DE8];
  v58 = a3;
  v57 = a4;
  v59 = a5;
  v62 = a6;
  v64 = a7;
  v60 = a8;
  v19 = a9;
  v20 = a10;
  v67 = a11;
  v65 = a12;
  v66 = a13;
  v21 = self;
  v61 = [(IMDChat *)self _findChatParticipantsWithFromID:v19];
  v22 = [v64 __imArrayByApplyingBlock:&unk_283F19908];
  v23 = [v22 __imSetFromArray];

  v24 = [v61 isEqualToSet:v23];
  v25 = [(IMDChat *)v21 groupParticipantVersion];
  v26 = [(IMDChat *)v21 properties];
  v63 = [v26 objectForKey:qword_27D8CB9D0];

  v56 = v19;
  v27 = [v65 longLongValue] / 1000000000;
  v28 = v27 - [v63 longLongValue];
  if (IMOSLoggingEnabled())
  {
    v29 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = [v63 longLongValue];
      v31 = [v65 longLongValue];
      *buf = 134219778;
      v71 = v25;
      v72 = 2112;
      v32 = @"NO";
      v73 = v20;
      if (v24)
      {
        v32 = @"YES";
      }

      v74 = 2048;
      v75 = v28;
      v76 = 2048;
      v77 = v30;
      v78 = 2048;
      v79 = v31 / 1000000000;
      v80 = 2112;
      v81 = v64;
      v82 = 2112;
      v83 = v67;
      v84 = 2112;
      v85 = v32;
      _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "receiveMessageData localVersion: %ld, receivedGroupParticipantVersion: %@, timeDifference: %lld, lastUpdated:%lld, timestamp:%lld, incomingParticipants: %@, protocolVersion: %@, isIncomingParticipantSetSame %@", buf, 0x52u);
    }
  }

  if (v25 <= [v20 integerValue])
  {
    if (v28 < 11)
    {
      v33 = 0;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v33 = 0;
  if (!((v67 != 0) | v24 & 1) && v28 >= 11)
  {
LABEL_13:
    v33 = (v25 != [v20 integerValue]) | v24 ^ 1;
  }

LABEL_14:
  v34 = +[IMDFileTransferCenter sharedInstance];
  v35 = [(IMDChat *)v21 groupPhotoGuid];
  v36 = [v34 transferForGUID:v35];

  if ([v66 unsignedLongLongValue])
  {
    v37 = [MEMORY[0x277CBEAA8] __im_iMessageDateFromTimeStamp:v66];
    v38 = v37;
    if (v36 && v37)
    {
      v39 = [v36 refreshDate];
      if ([v39 compare:v38] == -1)
      {
        v40 = [(IMDChat *)v21 _convergesGroupPhotosForReplicationService:v59];

        if (!v40)
        {
          goto LABEL_22;
        }

        [v36 setRefreshDate:v38];
        v39 = +[IMDAttachmentStore sharedInstance];
        v41 = [v36 messageGUID];
        [v39 storeAttachment:v36 associateWithMessageWithGUID:v41];
      }
    }
  }

  else
  {
    v38 = 0;
  }

LABEL_22:
  if (v67)
  {
    if (v33)
    {
      if ([(IMDChat *)v21 _convergesParticipantsForReplicationService:v59])
      {
        v42 = 1;
        goto LABEL_35;
      }

      if (IMOSLoggingEnabled())
      {
        v43 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v43, OS_LOG_TYPE_INFO, "Not converging participants, replication service does not permit it", buf, 2u);
        }

LABEL_33:
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v43 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v43, OS_LOG_TYPE_INFO, "Not converging participants. Message from legacy device", buf, 2u);
    }

    goto LABEL_33;
  }

  v42 = 0;
LABEL_35:
  if (IMOSLoggingEnabled())
  {
    v44 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v45 = @"NO";
      if (v42)
      {
        v45 = @"YES";
      }

      *buf = 138412290;
      v71 = v45;
      _os_log_impl(&dword_22B4CC000, v44, OS_LOG_TYPE_INFO, "shouldConvergeParticipants: %@", buf, 0xCu);
    }
  }

  if ([v62 length])
  {
    v46 = [v23 count];
    if (v56)
    {
      if (v60 && v46 >= 2)
      {
        v47 = [(IMDChat *)v21 style];
        v48 = v42 ^ 1;
        if (v47 == 45)
        {
          v48 = 1;
        }

        if ((v48 & 1) == 0)
        {
          if (v20)
          {
            if (v25 != [v20 integerValue])
            {
              if (IMOSLoggingEnabled())
              {
                v49 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v71 = v20;
                  _os_log_impl(&dword_22B4CC000, v49, OS_LOG_TYPE_INFO, "Setting participant version to version received: %@", buf, 0xCu);
                }
              }

              if ([v20 integerValue] > v25)
              {
                v50 = [(IMDChat *)v21 chatIdentifier];
                [v58 didUpdateChatStatus:2 chat:v50 style:{-[IMDChat style](v21, "style")}];
              }

              -[IMDChat _setParticipantVersion:](v21, "_setParticipantVersion:", [v20 integerValue]);
            }
          }

          else
          {
            if (IMOSLoggingEnabled())
            {
              v51 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22B4CC000, v51, OS_LOG_TYPE_INFO, "Incrementing participant version by 1 on message receive.", buf, 2u);
              }
            }

            [(IMDChat *)v21 _incrementParticipantVersion];
            v52 = [(IMDChat *)v21 chatIdentifier];
            [v58 didUpdateChatStatus:2 chat:v52 style:{-[IMDChat style](v21, "style")}];
          }

          v68[0] = MEMORY[0x277D85DD0];
          v68[1] = 3221225472;
          v68[2] = sub_22B533518;
          v68[3] = &unk_278702A40;
          v53 = v56;
          v69 = v53;
          v54 = [v64 __imArrayByFilteringWithBlock:v68];
          [(IMDChat *)v21 _modifyGroupWithServiceSession:v58 groupID:v62 toParticipants:v54 toIdentifier:v53 fromIdentifier:v60 account:v57 messageTimeStamp:v65];
        }
      }
    }
  }

  v55 = *MEMORY[0x277D85DE8];
}

- (unint64_t)powerLogConversationType
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(IMDChat *)self participants];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v10 + 1) + 8 * v7) isBusiness])
        {

          result = 2;
          goto LABEL_11;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  result = [(IMDChat *)self style]!= 45;
LABEL_11:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_repairChatIfNeeded
{
  v3 = objc_autoreleasePoolPush();
  v4 = [[IMDChatRepairController alloc] initWithDelegate:self];
  [(IMDChatRepairController *)v4 repairChatIfNecessary:self];

  objc_autoreleasePoolPop(v3);
}

+ (BOOL)identifier:(id)a3 equalsIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ((v5 == 0) != (v6 == 0))
  {
    v7 = 0;
  }

  else if ([v5 length] >= 5 && objc_msgSend(v6, "length") >= 5)
  {
    if ((IMStringIsEmail() & 1) != 0 || IMStringIsEmail())
    {
      v8 = [v5 lowercaseString];
      v9 = [v6 lowercaseString];
    }

    else
    {
      v8 = [v5 substringFromIndex:{objc_msgSend(v5, "length") - 5}];
      v9 = [v6 substringFromIndex:{objc_msgSend(v6, "length") - 5}];
    }

    v10 = v9;
    v7 = [v8 isEqualToString:v9];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)_repairMissingServiceName
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = [(IMDChat *)self serviceName];
  v4 = [v3 length];

  if (!v4)
  {
    v5 = MEMORY[0x277CCA9B8];
    v6 = *MEMORY[0x277D190E0];
    v14 = *MEMORY[0x277CCA068];
    v15[0] = @"[IMCreateIMDChat] Chat was missing a service when loaded from the database.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v8 = [v5 errorWithDomain:v6 code:0 userInfo:v7];

    v9 = [MEMORY[0x277D1AAA8] sharedInstance];
    [v9 forceAutoBugCaptureWithSubType:@"Missing chat service name at load" errorPayload:v8 type:@"MissingChatService" context:0];

    v10 = [(IMDChat *)self guid];
    IMComponentsFromChatGUID();
    v11 = 0;

    [(IMDChat *)self setServiceName:v11];
    [(IMDChat *)self updateRepairHistoryOfChat:self withRepairHistory:4];
    v12 = +[IMDChatStore sharedInstance];
    [v12 _storeChat:self updateProtectedProperties:1];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)updateRepairHistoryOfChat:(id)a3 withRepairHistory:(unint64_t)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [v5 setRepairHistory:{objc_msgSend(v5, "repairHistory") | a4}];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      [v5 repairHistory];
      v7 = IMStringFromChatRepairHistory();
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Repair History Updated: %@", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)chatRepairController:(id)a3 chatExistsWithGUID:(id)a4
{
  v4 = IMDChatRecordCopyChatForGUID();
  v5 = v4 != 0;

  return v5;
}

- (id)chatRepairController:(id)a3 generateUnusedChatIdentifierForGroupChatWithAccount:(id)a4
{
  v5 = [IMDChatRegistry sharedInstance:a3];
  v6 = [(IMDChat *)self account];
  v7 = [v5 generateUnusedChatIdentifierForGroupChatWithAccount:v6];

  return v7;
}

- (BOOL)chatRepairController:(id)a3 repairChatIdentifierWithIdentifier:(id)a4 onChat:(id)a5
{
  v7 = a5;
  v8 = [a4 copy];
  [(IMDChat *)self setChatIdentifier:v8];

  v9 = +[IMDChatStore sharedInstance];
  [v9 storeChat:v7];

  return 1;
}

- (BOOL)chatRepairController:(id)a3 repairGUIDWithGUID:(id)a4 onChat:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x277D18EB0] synchronousDatabase];
  v10 = [v8 guid];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_22B5DA830;
  v14[3] = &unk_278705EF0;
  v15 = v7;
  v16 = self;
  v17 = v8;
  v11 = v8;
  v12 = v7;
  [v9 resolveInconsistentGUIDForChatRecordWithGUID:v10 newGUID:v12 completionHandler:v14];

  return 1;
}

- (BOOL)chatRepairController:(id)a3 repairParticipantWithIdentifier:(id)a4 onService:(id)a5 onChat:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = IMDHandleRecordCopyHandleForIDOnService();
  v14 = IMOSLoggingEnabled();
  if (v13)
  {
    if (v14)
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v30 = v10;
        v31 = 2112;
        v32 = v11;
        _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Found handle for ID (%@) on service (%@)", buf, 0x16u);
      }
    }

    v16 = *MEMORY[0x277CBECE8];
    v17 = IMDHandleRecordCopyID();
    v18 = IMDHandleRecordCopyCountry();
    v19 = IMDHandleRecordCopyUncanonicalizedID();
    v20 = IMDHandleRecordCopyPersonCentricID();
    CFRelease(v13);
  }

  else
  {
    if (v14)
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v30 = v10;
        v31 = 2112;
        v32 = v11;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "No handle found for ID (%@) on service (%@). Creating one instead.", buf, 0x16u);
      }
    }

    v17 = v10;
    v20 = 0;
    v19 = 0;
    v18 = 0;
  }

  v22 = [[IMDHandle alloc] initWithID:v17 unformattedID:v19 countryCode:v18 personCentricID:v20];
  v28 = v22;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
  v24 = [(IMDChat *)self _resetParticipants:v23];

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (IMDChat)initWithAccountID:(id)a3 service:(id)a4 guid:(id)a5 groupID:(id)a6 chatIdentifier:(id)a7 participants:(id)a8 roomName:(id)a9 displayName:(id)a10 lastAddressedLocalHandle:(id)a11 lastAddressedSIMID:(id)a12 properties:(id)a13 state:(int64_t)a14 style:(unsigned __int8)a15 isFiltered:(int64_t)a16 hasHadSuccessfulQuery:(BOOL)a17 engramID:(id)a18 serverChangeToken:(id)a19 cloudKitSyncState:(int64_t)a20 originalGroupID:(id)a21 lastReadMessageTimeStamp:(int64_t)a22 lastMessageTimeStampOnLoad:(int64_t)a23 cloudKitRecordID:(id)a24 isBlackholed:(BOOL)a25 autoDonationBehavior:(int64_t)a26 autoDonationBehaviorLastModificationDate:(id)a27 isRecovered:(BOOL)a28 isDeletingIncomingMessages:(BOOL)a29 domainIdentifiers:(id)a30
{
  v77 = a27;
  v96 = *MEMORY[0x277D85DE8];
  v80 = a3;
  v91 = a4;
  v35 = a5;
  v88 = a6;
  v36 = a7;
  v89 = a8;
  v81 = a9;
  v92 = a10;
  v90 = a11;
  v85 = a12;
  v86 = a13;
  v87 = a18;
  v83 = a19;
  v84 = a21;
  v82 = a24;
  v37 = a27;
  v38 = a30;
  if ([(__CFString *)v36 length])
  {
    v93.receiver = self;
    v93.super_class = IMDChat;
    v39 = v80;
    v40 = [(IMDChat *)&v93 init];
    if (!v40)
    {
LABEL_56:
      v46 = v40;
      v48 = v46;
      goto LABEL_57;
    }

    v41 = objc_alloc_init(MEMORY[0x277CCAC60]);
    lock = v40->_lock;
    v40->_lock = v41;

    [(NSRecursiveLock *)v40->_lock lock];
    v43 = objc_alloc_init(MEMORY[0x277CBEB38]);
    chatInfo = v40->_chatInfo;
    v40->_chatInfo = v43;

    if ([(IMDChat *)v35 rangeOfString:@";"]== 0x7FFFFFFFFFFFFFFFLL)
    {
      if (IMOSLoggingEnabled())
      {
        v45 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v95 = v35;
          _os_log_impl(&dword_22B4CC000, v45, OS_LOG_TYPE_DEBUG, "Attempting to init chat with invalid guid %@", buf, 0xCu);
        }
      }

      v79 = IMCopyAnyServiceGUIDForChat();
    }

    else
    {
      v79 = IMAnyServiceGUIDFromLegacyChatGUID();
    }

    [(IMDChat *)v40 setEngramID:v87];
    [(IMDChat *)v40 setProperties:v86];
    [(IMDChat *)v40 setIsFiltered:a16];
    [(IMDChat *)v40 setLastAddressedLocalHandle:v90];
    [(IMDChat *)v40 setLastAddressedSIMID:v85];
    [(IMDChat *)v40 setChatIdentifier:v36];
    [(IMDChat *)v40 setState:a14];
    [(IMDChat *)v40 setServiceName:v91];
    [(IMDChat *)v40 setInitialGroupID:v88];
    [(IMDChat *)v40 setStyle:a15];
    [(IMDChat *)v40 setParticipants:v89];
    if (a15 == 45 && ![(IMDChat *)v40 isBusinessChat]&& (MEMORY[0x231897A60](v36) & 1) == 0)
    {
      v49 = [(IMDChat *)v40 serviceName];
      if ([v49 isEqualToString:*MEMORY[0x277D1A608]])
      {
      }

      else
      {
        v50 = [(IMDChat *)v40 isMergedBusinessThread];

        if (!v50)
        {
          goto LABEL_32;
        }
      }
    }

    v51 = v92;
    if (v92)
    {
      v52 = [v92 length];
      v51 = v92;
      if (!v52)
      {
        v53 = IMDChatLogHandle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v53, OS_LOG_TYPE_DEFAULT, "Attempting to create an IMDChat with an empty display name. Setting display name to nil instead.", buf, 2u);
        }

        v54 = [MEMORY[0x277D1AAA8] sharedInstance];
        v55 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.imagent" code:0 userInfo:0];
        v56 = &stru_283F23018;
        if (v36)
        {
          v56 = v36;
        }

        if (v79)
        {
          v57 = v79;
        }

        else
        {
          v57 = v56;
        }

        [v54 forceAutoBugCaptureWithSubType:@"EmptyStringDisplayName" errorPayload:v55 type:@"ChatProperties" context:{v57, a27}];

        v51 = 0;
      }
    }

    [(IMDChat *)v40 setDisplayName:v51, v77];
LABEL_32:
    if (v79)
    {
      [(IMDChat *)v40 setGuid:?];
    }

    else
    {
      v58 = [MEMORY[0x277CCACA8] stringGUID];
      [(IMDChat *)v40 setGuid:v58];
    }

    [(IMDChat *)v40 setHasHadSuccessfulQuery:a17];
    [(IMDChat *)v40 setCreateEngramGroupOnMessageSend:0];
    [(IMDChat *)v40 setPendingENGroupParticipantUpdate:0];
    if (a15 != 45)
    {
      [(IMDChat *)v40 setRoomName:v81];
    }

    [(IMDChat *)v40 setAccountID:v80, v77];
    [(IMDChat *)v40 _updateCachedParticipants];
    v40->_rowID = -1;
    v40->_isArchived = 0;
    [(IMDChat *)v40 setServerChangeToken:v83];
    v59 = v84;
    if ([v59 length])
    {
      v60 = v59;
    }

    else
    {
      v61 = +[IMDServiceController sharedController];
      v62 = [v61 serviceWithName:v91];
      v63 = [v62 supportsCapability:*MEMORY[0x277D1A558]];

      if (v63)
      {
        v64 = v88;
      }

      else
      {
        v64 = _IMDHashParticipants(v89, v90);
      }

      v60 = v64;
    }

    [(IMDChat *)v40 setInitialOriginalGroupID:v60];
    [(IMDChat *)v40 setLastReadMessageTimeStamp:a22];
    [(IMDChat *)v40 setLastMessageTimeStampOnLoad:a23];
    [(IMDChat *)v40 setCloudKitRecordID:v82];
    [(IMDChat *)v40 setIsBlackholed:a25];
    [(IMDChat *)v40 setWasReportedAsJunk:0];
    [(IMDChat *)v40 _setAutoDonationBehavior:a26 lastModificationDate:v37 setDirtyFlag:0];
    [(IMDChat *)v40 setRecovered:a28];
    [(IMDChat *)v40 setDeletingIncomingMessages:a29];
    [(IMDChat *)v40 setCloudKitSyncState:a20];
    [(IMDChat *)v40 setPendingIncomingSatelliteMessageCount:0];
    if (v38)
    {
      v65 = [v38 mutableCopy];
      domainIdentifiers = v40->_domainIdentifiers;
      v40->_domainIdentifiers = v65;

      v67 = v40->_domainIdentifiers;
      if (!v67)
      {
LABEL_51:
        if (IMOSLoggingEnabled())
        {
          v74 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v95 = v40;
            _os_log_impl(&dword_22B4CC000, v74, OS_LOG_TYPE_DEBUG, "Created chat: %@", buf, 0xCu);
          }
        }

        [(NSRecursiveLock *)v40->_lock unlock];

        v35 = v79;
        goto LABEL_56;
      }

      v68 = [(NSMutableDictionary *)v67 objectForKey:*MEMORY[0x277D19780]];
      v69 = [v68 firstObject];

      if (v69)
      {
        v70 = *MEMORY[0x277D19808];
        v71 = [(NSMutableDictionary *)v40->_chatInfo objectForKey:*MEMORY[0x277D19808]];
        v72 = [v69 isEqualToString:v71];

        if ((v72 & 1) == 0)
        {
          [(NSMutableDictionary *)v40->_chatInfo setObject:v69 forKey:v70];
        }
      }

      [(NSMutableDictionary *)v40->_chatInfo setObject:v40->_domainIdentifiers forKey:*MEMORY[0x277D197E0]];
    }

    else
    {
      v73 = [MEMORY[0x277CBEB38] dictionary];
      v69 = v40->_domainIdentifiers;
      v40->_domainIdentifiers = v73;
    }

    goto LABEL_51;
  }

  v46 = self;
  v39 = v80;
  if (IMOSLoggingEnabled())
  {
    v47 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v95 = v35;
      _os_log_impl(&dword_22B4CC000, v47, OS_LOG_TYPE_DEBUG, "Attempting to init chat with zero length chat identifier, guid: %@", buf, 0xCu);
    }
  }

  v48 = 0;
LABEL_57:

  v75 = *MEMORY[0x277D85DE8];
  return v48;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v7 = self;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEBUG, "Dealloc chat: %@", buf, 0xCu);
    }
  }

  v5.receiver = self;
  v5.super_class = IMDChat;
  [(IMDChat *)&v5 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)setGuid:(id)a3
{
  v8 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_guid != v8)
  {
    v4 = [(NSString *)v8 copy];
    guid = self->_guid;
    self->_guid = v4;

    chatInfo = self->_chatInfo;
    v7 = *MEMORY[0x277D19800];
    if (v8)
    {
      [(NSMutableDictionary *)chatInfo setObject:v8 forKey:v7];
    }

    else
    {
      [(NSMutableDictionary *)chatInfo removeObjectForKey:v7];
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)setChatIdentifier:(id)a3
{
  v8 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_chatIdentifier != v8)
  {
    v4 = [(NSString *)v8 copy];
    chatIdentifier = self->_chatIdentifier;
    self->_chatIdentifier = v4;

    chatInfo = self->_chatInfo;
    v7 = *MEMORY[0x277D197A8];
    if (v8)
    {
      [(NSMutableDictionary *)chatInfo setObject:v8 forKey:v7];
    }

    else
    {
      [(NSMutableDictionary *)chatInfo removeObjectForKey:v7];
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)setAccountID:(id)a3
{
  v8 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_accountID != v8)
  {
    v4 = [(NSString *)v8 copy];
    accountID = self->_accountID;
    self->_accountID = v4;

    chatInfo = self->_chatInfo;
    v7 = *MEMORY[0x277D19788];
    if (v8)
    {
      [(NSMutableDictionary *)chatInfo setObject:v8 forKey:v7];
    }

    else
    {
      [(NSMutableDictionary *)chatInfo removeObjectForKey:v7];
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)setServiceName:(id)a3
{
  v8 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_serviceName != v8)
  {
    v4 = [(NSString *)v8 copy];
    serviceName = self->_serviceName;
    self->_serviceName = v4;

    chatInfo = self->_chatInfo;
    v7 = *MEMORY[0x277D19940];
    if (v8)
    {
      [(NSMutableDictionary *)chatInfo setObject:v8 forKey:v7];
    }

    else
    {
      [(NSMutableDictionary *)chatInfo removeObjectForKey:v7];
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)setParticipants:(id)a3
{
  v6 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_participants != v6)
  {
    v4 = [(NSArray *)v6 copy];
    participants = self->_participants;
    self->_participants = v4;
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (NSArray)replySuggestions
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSArray *)self->_replySuggestions copy];
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (void)setReplySuggestions:(id)a3
{
  v8 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_replySuggestions != v8)
  {
    v4 = [(NSArray *)v8 copy];
    replySuggestions = self->_replySuggestions;
    self->_replySuggestions = v4;

    chatInfo = self->_chatInfo;
    v7 = *MEMORY[0x277D19920];
    if (v8)
    {
      [(NSMutableDictionary *)chatInfo setObject:v8 forKey:v7];
    }

    else
    {
      [(NSMutableDictionary *)chatInfo removeObjectForKey:v7];
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)setRoomName:(id)a3
{
  v8 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_roomName != v8)
  {
    v4 = [(NSString *)v8 copy];
    roomName = self->_roomName;
    self->_roomName = v4;

    chatInfo = self->_chatInfo;
    v7 = *MEMORY[0x277D19928];
    if (v8)
    {
      [(NSMutableDictionary *)chatInfo setObject:v8 forKey:v7];
    }

    else
    {
      [(NSMutableDictionary *)chatInfo removeObjectForKey:v7];
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)setDisplayName:(id)a3
{
  v8 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_displayName != v8)
  {
    v4 = [(NSString *)v8 copy];
    displayName = self->_displayName;
    self->_displayName = v4;

    chatInfo = self->_chatInfo;
    v7 = *MEMORY[0x277D197D8];
    if (v8)
    {
      [(NSMutableDictionary *)chatInfo setObject:v8 forKey:v7];
    }

    else
    {
      [(NSMutableDictionary *)chatInfo removeObjectForKey:v7];
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)_setAutoDonationBehavior:(int64_t)a3 lastModificationDate:(id)a4 setDirtyFlag:(BOOL)a5
{
  v5 = a5;
  v17 = *MEMORY[0x277D85DE8];
  objc_storeStrong(&self->_autoDonationBehaviorLastModificationDate, a4);
  v9 = a4;
  self->_autoDonationBehavior = a3;
  if (v5)
  {
    self->_cloudKitSyncState = 0;
  }

  v10 = IMDChatLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    autoDonationBehavior = self->_autoDonationBehavior;
    v15 = 134217984;
    v16 = autoDonationBehavior;
    _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "Updating chatInfo with autoDonationBehavior: %ld", &v15, 0xCu);
  }

  chatInfo = self->_chatInfo;
  v13 = [MEMORY[0x277CCABB0] numberWithInteger:self->_autoDonationBehavior];
  [(NSMutableDictionary *)chatInfo setObject:v13 forKey:*MEMORY[0x277D19798]];

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)setAutoDonationBehavior:(int64_t)a3 lastModificationDate:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v6)
  {
    [(NSRecursiveLock *)self->_lock lock];
    autoDonationBehaviorLastModificationDate = self->_autoDonationBehaviorLastModificationDate;
    if (autoDonationBehaviorLastModificationDate && [(NSDate *)autoDonationBehaviorLastModificationDate compare:v6]== NSOrderedDescending)
    {
      v8 = IMLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = self->_autoDonationBehaviorLastModificationDate;
        guid = self->_guid;
        v21 = 138413058;
        v22 = v9;
        v23 = 2112;
        v24 = v6;
        v25 = 2048;
        v26 = a3;
        v27 = 2112;
        v28 = guid;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Syndication Date (%@ vs %@) is in the past. Not setting syndication type %ld for chat: %@", &v21, 0x2Au);
      }

      v11 = 0;
    }

    else
    {
      v12 = IMLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = self->_guid;
        v21 = 134218498;
        v22 = a3;
        v23 = 2112;
        v24 = v6;
        v25 = 2112;
        v26 = v13;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Setting syndication type to: %ld, syndication date to: %@, for chat: %@", &v21, 0x20u);
      }

      v11 = 1;
      [(IMDChat *)self _setAutoDonationBehavior:a3 lastModificationDate:v6 setDirtyFlag:1];
      v14 = +[IMDChatStore sharedInstance];
      [v14 storeChat:self];

      v15 = [(IMDChat *)self guid];
      IMDCoreSpotlightAddChatGUID();

      v8 = [(IMDChat *)self copyDictionaryRepresentation:0];
      v16 = [(IMDChat *)self broadcaster];
      v17 = [(IMDChat *)self guid];
      [v16 chat:v17 updated:v8];
    }

    [(NSRecursiveLock *)self->_lock unlock];
  }

  else
  {
    v18 = IMDChatLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D6098();
    }

    v11 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)setInitialGroupID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    if ([(NSString *)v4 length])
    {
      [(NSRecursiveLock *)self->_lock lock];
      if (self->_groupID != v7)
      {
        v5 = [(NSString *)v7 copy];
        groupID = self->_groupID;
        self->_groupID = v5;

        [(NSMutableDictionary *)self->_chatInfo setObject:v7 forKey:*MEMORY[0x277D19808]];
      }

      [(NSRecursiveLock *)self->_lock unlock];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setGroupID:(id)a3
{
  v21[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && [(NSString *)v4 length])
  {
    [(NSRecursiveLock *)self->_lock lock];
    if (self->_groupID == v5)
    {
      goto LABEL_13;
    }

    v6 = [(NSString *)v5 copy];
    groupID = self->_groupID;
    self->_groupID = v6;

    [(NSMutableDictionary *)self->_chatInfo setObject:v5 forKey:*MEMORY[0x277D19808]];
    v8 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v9 = [v8 isMissingMessagesEnabled];

    if (!v9)
    {
LABEL_13:
      [(NSRecursiveLock *)self->_lock unlock];
      goto LABEL_14;
    }

    v10 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v11 = [v10 isOneChatEnabled];

    if (v11)
    {
      v12 = *MEMORY[0x277D19780];
      v13 = *MEMORY[0x277D1A620];
      v21[0] = *MEMORY[0x277D1A5F8];
      v21[1] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
      v15 = [v14 containsObject:self->_serviceName];

      if (v15)
      {
        goto LABEL_10;
      }
    }

    else
    {
      serviceName = self->_serviceName;
      v12 = IMChatLookupDomainForServiceName();
      if ([v12 isEqualToString:*MEMORY[0x277D19780]])
      {
LABEL_10:
        v18 = [(IMDChat *)self identifiersForDomain:v12];
        v19 = [v18 containsObject:v5];

        if ((v19 & 1) == 0)
        {
          [(IMDChat *)self assignIdentifier:v5 forDomain:v12 isHistoricalIdentifier:0];
        }

        goto LABEL_13;
      }
    }

    v17 = [(NSString *)self->_serviceName copy];
    [(IMDChat *)self _submitAndOpenTapToRadarForInvalidUseOfGroupIDOnService:v17];

    goto LABEL_10;
  }

LABEL_14:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)setEngramID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    if ([(NSString *)v4 length])
    {
      [(NSRecursiveLock *)self->_lock lock];
      if (self->_engramID != v7)
      {
        v5 = [(NSString *)v7 copy];
        engramID = self->_engramID;
        self->_engramID = v5;

        [(NSMutableDictionary *)self->_chatInfo setObject:v7 forKey:@"engramID"];
      }

      [(NSRecursiveLock *)self->_lock unlock];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setServerChangeToken:(id)a3
{
  v8 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_serverChangeToken != v8)
  {
    v4 = [(NSString *)v8 copy];
    serverChangeToken = self->_serverChangeToken;
    self->_serverChangeToken = v4;

    chatInfo = self->_chatInfo;
    v7 = *MEMORY[0x277D19938];
    if (v8)
    {
      [(NSMutableDictionary *)chatInfo setObject:v8 forKey:v7];
    }

    else
    {
      [(NSMutableDictionary *)chatInfo removeObjectForKey:v7];
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)setCloudKitSyncState:(int64_t)a3
{
  [(NSRecursiveLock *)self->_lock lock];
  self->_cloudKitSyncState = a3;
  chatInfo = self->_chatInfo;
  if (a3)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [(NSMutableDictionary *)chatInfo setObject:v6 forKey:*MEMORY[0x277D197D0]];
  }

  else
  {
    [(NSMutableDictionary *)self->_chatInfo removeObjectForKey:*MEMORY[0x277D197D0]];
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)setInitialOriginalGroupID:(id)a3
{
  v7 = a3;
  if ([(NSString *)v7 length])
  {
    [(NSRecursiveLock *)self->_lock lock];
    if (self->_originalGroupID != v7)
    {
      v4 = [(NSString *)v7 copy];
      originalGroupID = self->_originalGroupID;
      self->_originalGroupID = v4;

      v6 = self->_originalGroupID;
      if (v6)
      {
        [(NSMutableDictionary *)self->_chatInfo setObject:v6 forKey:*MEMORY[0x277D198E0]];
      }
    }

    [(NSRecursiveLock *)self->_lock unlock];
  }
}

- (void)setOriginalGroupID:(id)a3
{
  v21[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NSString *)v4 length])
  {
    [(NSRecursiveLock *)self->_lock lock];
    if (self->_originalGroupID == v4)
    {
      goto LABEL_13;
    }

    v5 = [(NSString *)v4 copy];
    originalGroupID = self->_originalGroupID;
    self->_originalGroupID = v5;

    v7 = self->_originalGroupID;
    if (!v7 || (-[NSMutableDictionary setObject:forKey:](self->_chatInfo, "setObject:forKey:", v7, *MEMORY[0x277D198E0]), [MEMORY[0x277D1A9B8] sharedFeatureFlags], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isMissingMessagesEnabled"), v8, !v9))
    {
LABEL_13:
      [(NSRecursiveLock *)self->_lock unlock];
      goto LABEL_14;
    }

    v10 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v11 = [v10 isOneChatEnabled];

    if (v11)
    {
      v12 = *MEMORY[0x277D19780];
      v13 = *MEMORY[0x277D1A620];
      v21[0] = *MEMORY[0x277D1A5F8];
      v21[1] = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
      v15 = [v14 containsObject:self->_serviceName];

      if (v15)
      {
        goto LABEL_10;
      }
    }

    else
    {
      serviceName = self->_serviceName;
      v12 = IMChatLookupDomainForServiceName();
      if ([v12 isEqualToString:*MEMORY[0x277D19780]])
      {
LABEL_10:
        v18 = [(IMDChat *)self identifiersForDomain:v12];
        v19 = [v18 containsObject:self->_originalGroupID];

        if ((v19 & 1) == 0)
        {
          [(IMDChat *)self assignIdentifier:self->_originalGroupID forDomain:v12 isHistoricalIdentifier:1];
        }

        goto LABEL_13;
      }
    }

    v17 = [(NSString *)self->_serviceName copy];
    [(IMDChat *)self _submitAndOpenTapToRadarForInvalidUseOfGroupIDOnService:v17];

    goto LABEL_10;
  }

LABEL_14:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)setLastReadMessageTimeStamp:(int64_t)a3
{
  [(NSRecursiveLock *)self->_lock lock];
  self->_lastReadMessageTimeStamp = a3;
  chatInfo = self->_chatInfo;
  if (a3)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
    [(NSMutableDictionary *)chatInfo setObject:v6 forKey:*MEMORY[0x277D19898]];
  }

  else
  {
    [(NSMutableDictionary *)self->_chatInfo removeObjectForKey:*MEMORY[0x277D19898]];
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (NSDate)lastTUConversationCreatedDate
{
  v2 = [(IMDChat *)self properties];
  v3 = [v2 objectForKey:@"lastTUConversationCreatedDate"];

  return v3;
}

- (void)setLastTUConversationCreatedDate:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMDChat *)self lastTUConversationCreatedDate];
  if (([v5 isEqual:v4] & 1) == 0)
  {
    v12 = @"lastTUConversationCreatedDate";
    v6 = v4;
    if (!v4)
    {
      v6 = [MEMORY[0x277CBEB68] null];
    }

    v13[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [(IMDChat *)self updateProperties:v7];

    if (!v4)
    {
    }

    v8 = [(IMDChat *)self broadcaster];
    v9 = [(IMDChat *)self guid];
    v10 = [(IMDChat *)self properties];
    [v8 chat:v9 propertiesUpdated:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setLastScheduledMessageCreatedDate:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMDChat *)self lastScheduledMessageCreatedDate];
  if (([v5 isEqual:v4] & 1) == 0)
  {
    v12 = @"lastScheduledMessageCreatedDate";
    v6 = v4;
    if (!v4)
    {
      v6 = [MEMORY[0x277CBEB68] null];
    }

    v13[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [(IMDChat *)self updateProperties:v7];

    if (!v4)
    {
    }

    v8 = [(IMDChat *)self broadcaster];
    v9 = [(IMDChat *)self guid];
    v10 = [(IMDChat *)self properties];
    [v8 chat:v9 propertiesUpdated:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)isAutomaticallyTranslating
{
  v2 = [(IMDChat *)self properties];
  v3 = [v2 objectForKey:*MEMORY[0x277D197F0]];

  LOBYTE(v2) = [v3 BOOLValue];
  return v2;
}

- (NSString)translationLanguageIdentifier
{
  v2 = [(IMDChat *)self properties];
  v3 = [v2 objectForKey:*MEMORY[0x277D197A0]];

  return v3;
}

- (NSString)userTranslationLanguageIdentifier
{
  v2 = [(IMDChat *)self properties];
  v3 = [v2 objectForKey:*MEMORY[0x277D19988]];

  return v3;
}

- (void)setLastAddressedLocalHandle:(id)a3
{
  v8 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_lastAddressedLocalHandle != v8)
  {
    v4 = [(NSString *)v8 copy];
    lastAddressedLocalHandle = self->_lastAddressedLocalHandle;
    self->_lastAddressedLocalHandle = v4;

    chatInfo = self->_chatInfo;
    v7 = *MEMORY[0x277D19870];
    if (v8)
    {
      [(NSMutableDictionary *)chatInfo setObject:v8 forKey:v7];
    }

    else
    {
      [(NSMutableDictionary *)chatInfo removeObjectForKey:v7];
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)setLastAddressedSIMID:(id)a3
{
  v8 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_lastAddressedSIMID != v8)
  {
    v4 = [(NSString *)v8 copy];
    lastAddressedSIMID = self->_lastAddressedSIMID;
    self->_lastAddressedSIMID = v4;

    chatInfo = self->_chatInfo;
    v7 = *MEMORY[0x277D19878];
    if (v8)
    {
      [(NSMutableDictionary *)chatInfo setObject:v8 forKey:v7];
    }

    else
    {
      [(NSMutableDictionary *)chatInfo removeObjectForKey:v7];
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)setProperties:(id)a3
{
  v7 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_properties != v7)
  {
    objc_storeStrong(&self->_properties, a3);
    chatInfo = self->_chatInfo;
    v6 = *MEMORY[0x277D19908];
    if (v7)
    {
      [(NSMutableDictionary *)chatInfo setObject:v7 forKey:v6];
    }

    else
    {
      [(NSMutableDictionary *)chatInfo removeObjectForKey:v6];
    }
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)setLastMessage:(id)a3
{
  v5 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  if (self->_lastMessage != v5)
  {
    objc_storeStrong(&self->_lastMessage, a3);
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)setStyle:(unsigned __int8)a3
{
  v3 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  self->_style = v3;
  chatInfo = self->_chatInfo;
  if (v3)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithChar:v3];
    [(NSMutableDictionary *)chatInfo setObject:v6 forKey:*MEMORY[0x277D19950]];
  }

  else
  {
    [(NSMutableDictionary *)self->_chatInfo removeObjectForKey:*MEMORY[0x277D19950]];
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)setState:(int64_t)a3
{
  [(NSRecursiveLock *)self->_lock lock];
  self->_state = a3;
  chatInfo = self->_chatInfo;
  if (a3)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [(NSMutableDictionary *)chatInfo setObject:v6 forKey:*MEMORY[0x277D19860]];
  }

  else
  {
    [(NSMutableDictionary *)self->_chatInfo removeObjectForKey:*MEMORY[0x277D19860]];
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (unint64_t)_unreadCount
{
  [(NSRecursiveLock *)self->_lock lock];
  unreadCount = self->_unreadCount;
  [(NSRecursiveLock *)self->_lock unlock];
  return unreadCount;
}

- (void)_setUnreadCount:(unint64_t)a3
{
  [(NSRecursiveLock *)self->_lock lock];
  self->_unreadCount = a3;
  chatInfo = self->_chatInfo;
  if (a3)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [(NSMutableDictionary *)chatInfo setObject:v6 forKey:*MEMORY[0x277D19978]];
  }

  else
  {
    [(NSMutableDictionary *)self->_chatInfo removeObjectForKey:*MEMORY[0x277D19978]];
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (BOOL)hasScheduledMessage
{
  [(NSRecursiveLock *)self->_lock lock];
  hasScheduledMessage = self->_hasScheduledMessage;
  [(NSRecursiveLock *)self->_lock unlock];
  return hasScheduledMessage;
}

- (void)_setRowID:(int64_t)a3
{
  [(NSRecursiveLock *)self->_lock lock];
  self->_rowID = a3;
  chatInfo = self->_chatInfo;
  if (a3)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
    [(NSMutableDictionary *)chatInfo setObject:v6 forKey:*MEMORY[0x277D19930]];
  }

  else
  {
    [(NSMutableDictionary *)self->_chatInfo removeObjectForKey:*MEMORY[0x277D19930]];
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)setIsFiltered:(int64_t)a3
{
  [(NSRecursiveLock *)self->_lock lock];
  self->_isFiltered = a3;
  chatInfo = self->_chatInfo;
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  [(NSMutableDictionary *)chatInfo setObject:v6 forKey:*MEMORY[0x277D19848]];

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)setLastMessageTimeStampOnLoad:(int64_t)a3
{
  [(NSRecursiveLock *)self->_lock lock];
  self->_lastMessageTimeStampOnLoad = a3;
  chatInfo = self->_chatInfo;
  if (a3)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
    [(NSMutableDictionary *)chatInfo setObject:v6 forKey:*MEMORY[0x277D19890]];
  }

  else
  {
    [(NSMutableDictionary *)self->_chatInfo removeObjectForKey:*MEMORY[0x277D19890]];
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (void)setPendingIncomingSatelliteMessageCount:(int64_t)a3
{
  [(NSRecursiveLock *)self->_lock lock];
  self->_pendingIncomingSatelliteMessageCount = a3;
  chatInfo = self->_chatInfo;
  if (a3)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
    [(NSMutableDictionary *)chatInfo setObject:v6 forKey:*MEMORY[0x277D198F8]];
  }

  else
  {
    [(NSMutableDictionary *)self->_chatInfo removeObjectForKey:*MEMORY[0x277D198F8]];
  }

  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (BOOL)isDownloadingPendingSatelliteMessages
{
  [(NSRecursiveLock *)self->_lock lock];
  isDownloadingPendingSatelliteMessages = self->_isDownloadingPendingSatelliteMessages;
  [(NSRecursiveLock *)self->_lock unlock];
  return isDownloadingPendingSatelliteMessages;
}

- (NSString)requestedDowngradeService
{
  v2 = [(IMDChat *)self properties];
  v3 = [v2 objectForKey:@"requestedDowngradeService"];

  return v3;
}

- (void)setRequestedDowngradeService:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMDChat *)self requestedDowngradeService];
  if (([v5 isEqual:v4] & 1) == 0)
  {
    v12 = @"requestedDowngradeService";
    v6 = v4;
    if (!v4)
    {
      v6 = [MEMORY[0x277CBEB68] null];
    }

    v13[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [(IMDChat *)self updateProperties:v7];

    if (!v4)
    {
    }

    v8 = [(IMDChat *)self broadcaster];
    v9 = [(IMDChat *)self guid];
    v10 = [(IMDChat *)self properties];
    [v8 chat:v9 propertiesUpdated:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (NSDate)requestedDowngradeExpirationDate
{
  v2 = [(IMDChat *)self properties];
  v3 = [v2 objectForKey:@"requestedDowngradeExpirationDate"];

  return v3;
}

- (void)setRequestedDowngradeExpirationDate:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMDChat *)self requestedDowngradeExpirationDate];
  if (([v5 isEqual:v4] & 1) == 0)
  {
    v12 = @"requestedDowngradeExpirationDate";
    v6 = v4;
    if (!v4)
    {
      v6 = [MEMORY[0x277CBEB68] null];
    }

    v13[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [(IMDChat *)self updateProperties:v7];

    if (!v4)
    {
    }

    v8 = [(IMDChat *)self broadcaster];
    v9 = [(IMDChat *)self guid];
    v10 = [(IMDChat *)self properties];
    [v8 chat:v9 propertiesUpdated:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_updateCachedParticipants
{
  v3 = [(IMDChat *)self participants];
  v6 = [v3 arrayByApplyingSelector:sel_handleInfo];

  chatInfo = self->_chatInfo;
  v5 = *MEMORY[0x277D198F0];
  if (v6)
  {
    [(NSMutableDictionary *)chatInfo setObject:v6 forKey:v5];
  }

  else
  {
    [(NSMutableDictionary *)chatInfo removeObjectForKey:v5];
  }
}

- (id)participantHandles
{
  v2 = [(IMDChat *)self participants];
  v3 = [v2 arrayByApplyingSelector:sel_ID];

  return v3;
}

- (void)addParticipants:(id)a3
{
  v46 = *MEMORY[0x277D85DE8];
  v33 = a3;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v43 = self;
      v44 = 2112;
      v45 = v33;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEBUG, "Chat: %@  Adding participants: %@", buf, 0x16u);
    }
  }

  if (-[IMDChat style](self, "style") != 45 || (-[IMDChat participants](self, "participants"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 count] == 0, v4, v5))
  {
    v7 = [(IMDChat *)self participants];
    v8 = [v7 mutableCopy];

    if (!v8)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v31 = [v8 count];
    v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v33;
    v9 = [(IMDChat *)obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v9)
    {
      v10 = *v38;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v38 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v37 + 1) + 8 * i);
          v13 = [v12 CNContactID];
          v14 = v13 == 0;

          if (v14)
          {
            v15 = +[IMDChatRegistry sharedInstance];
            v16 = [v12 ID];
            v17 = [v15 _cnIDForHandle:v16];
            [v12 setCNContactID:v17];
          }

          v18 = [v8 indexOfObject:v12 matchingComparison:sel_compareIDs_];
          if (v18 == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v35 addObject:v12];
            [v8 addObject:v12];
          }

          else
          {
            v19 = [v8 objectAtIndex:v18];
            if (([v19 isBetterDefinedThan:v12] & 1) == 0)
            {
              [v8 replaceObjectAtIndex:v18 withObject:v12];
            }
          }
        }

        v9 = [(IMDChat *)obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v9);
    }

    [v32 setObject:v35 forKey:@"__kIMDChatParticipantsDidChangeAddedParticipantsKey"];
    [(IMDChat *)self setParticipants:v8];
    v20 = [(IMDChat *)self participants];
    v21 = [v20 count] == v31;

    if (!v21)
    {
      [(IMDChat *)self setCloudKitSyncState:0];
      v22 = +[IMDChatStore sharedInstance];
      [v22 storeChat:self];

      v23 = [MEMORY[0x277D1AB78] sharedCoordinator];
      v24 = [(IMDChat *)self groupID];
      [v23 informOfChangedGroupMembership:v24];

      v25 = +[IMDMessageStore sharedInstance];
      v26 = [v25 unreadCountController];
      v27 = [(IMDChat *)self guid];
      v28 = [(IMDChat *)self participantHandles];
      [v26 chat:v27 participantsUpdated:v28];
    }

    [(IMDChat *)self _updateCachedParticipants];
    v29 = [MEMORY[0x277CCAB98] defaultCenter];
    [v29 __mainThreadPostNotificationName:@"__kIMDChatParticipantsDidChangeNotification" object:self userInfo:v32];
  }

  else if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v43 = v33;
      v44 = 2112;
      v45 = self;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Trying to add participants: %@ to 1:1 chat :%@", buf, 0x16u);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (void)addParticipant:(id)a3
{
  v7 = a3;
  v4 = +[IMDChatRegistry sharedInstance];
  [v4 invalidatePersonCentricGroupedChatsCache];

  v5 = v7;
  if (v7)
  {
    v6 = [MEMORY[0x277CBEA60] arrayWithObject:v7];
    [(IMDChat *)self addParticipants:v6];

    v5 = v7;
  }
}

- (BOOL)removeParticipants:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v32 = a3;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v41 = self;
      v42 = 2112;
      v43 = v32;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEBUG, "Chat: %@  Removing participants: %@", buf, 0x16u);
    }
  }

  v4 = +[IMDChatRegistry sharedInstance];
  [v4 invalidatePersonCentricGroupedChatsCache];

  if ([(IMDChat *)self style]== 43)
  {
    v5 = [(IMDChat *)self participants];
    if ([v5 count] >= 3)
    {
    }

    else
    {
      v6 = [(IMDChat *)self service];
      v7 = [v6 supportsCapability:*MEMORY[0x277D1A568]];

      if ((v7 & 1) == 0)
      {
        if (IMOSLoggingEnabled())
        {
          v8 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v41 = self;
            _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Trying to remove participant from a group chat with 2 or less participants %@", buf, 0xCu);
          }
        }

        v9 = 0;
        goto LABEL_28;
      }
    }
  }

  v10 = [(IMDChat *)self participants];
  v11 = [v10 mutableCopy];

  if (!v11)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v31 = [v11 count];
  v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v13 = v32;
  v14 = [v13 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v14)
  {
    v15 = *v36;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = [v11 indexOfObject:*(*(&v35 + 1) + 8 * i) matchingComparison:{sel_compareIDs_, v31}];
        if (v17 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v18 = [v11 objectAtIndex:v17];
          [v12 addObject:v18];

          [v11 removeObjectAtIndex:v17];
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v14);
  }

  [v33 setObject:v12 forKey:@"__kIMDChatParticipantsDidChangeRemovedParticipantsKey"];
  [(IMDChat *)self setParticipants:v11];
  v19 = [(IMDChat *)self participants];
  v20 = [v19 count] == v31;

  if (!v20)
  {
    [(IMDChat *)self setCloudKitSyncState:0];
    v21 = +[IMDChatStore sharedInstance];
    [v21 storeChat:self];

    v22 = [MEMORY[0x277D1AB78] sharedCoordinator];
    v23 = [(IMDChat *)self groupID];
    [v22 informOfChangedGroupMembership:v23];

    v24 = +[IMDMessageStore sharedInstance];
    v25 = [v24 unreadCountController];
    v26 = [(IMDChat *)self guid];
    v27 = [(IMDChat *)self participantHandles];
    [v25 chat:v26 participantsUpdated:v27];
  }

  [(IMDChat *)self _updateCachedParticipants];
  v28 = [MEMORY[0x277CCAB98] defaultCenter];
  [v28 __mainThreadPostNotificationName:@"__kIMDChatParticipantsDidChangeNotification" object:self userInfo:v33];

  v9 = 1;
LABEL_28:

  v29 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)removeParticipant:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v10 = a3;
    v4 = MEMORY[0x277CBEA60];
    v5 = a3;
    v6 = [v4 arrayWithObjects:&v10 count:1];

    v7 = [(IMDChat *)self removeParticipants:v6, v10, v11];
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)_resetParticipants:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v20 = 138412546;
      *v21 = self;
      *&v21[8] = 2112;
      *&v21[10] = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEBUG, "Chat: %@  Resetting to participants: %@", &v20, 0x16u);
    }
  }

  v6 = [(IMDChat *)self style]== 43;
  v7 = [v4 count];
  if (!v6)
  {
    if (v7 != 1)
    {
      goto LABEL_7;
    }

LABEL_13:
    v12 = +[IMDChatRegistry sharedInstance];
    [v12 invalidatePersonCentricGroupedChatsCache];

    [(IMDChat *)self setParticipants:v4];
    v13 = +[IMDChatStore sharedInstance];
    [v13 storeChat:self];

    v14 = +[IMDMessageStore sharedInstance];
    v15 = [v14 unreadCountController];
    v16 = [(IMDChat *)self guid];
    v17 = [(IMDChat *)self participantHandles];
    [v15 chat:v16 participantsUpdated:v17];

    [(IMDChat *)self _updateCachedParticipants];
    v11 = 1;
    goto LABEL_14;
  }

  if (v7 > 1)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(IMDChat *)self style];
      v10 = [v4 count];
      v20 = 67109376;
      *v21 = v9;
      *&v21[4] = 2048;
      *&v21[6] = v10;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Rejecting participant reset, style is %c but participant count is %llu", &v20, 0x12u);
    }
  }

  v11 = 0;
LABEL_14:

  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)recoverParticipantsIfNeeded
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(IMDChat *)self style]== 45)
  {
    v3 = [(IMDChat *)self participants];
    v4 = [v3 count];

    if (!v4)
    {
      v5 = [(IMDChat *)self chatIdentifier];
      if ([v5 length])
      {
        v6 = [[IMDHandle alloc] initWithID:v5 unformattedID:0 countryCode:0];
        [(IMDChat *)self addParticipant:v6];
        if (IMOSLoggingEnabled())
        {
          v7 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            v9 = 138412546;
            v10 = v6;
            v11 = 2112;
            v12 = self;
            _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEBUG, "1:1 chat was missing participant, re-added %@ to %@", &v9, 0x16u);
          }
        }
      }

      else
      {
        if (!IMOSLoggingEnabled())
        {
LABEL_13:

          goto LABEL_14;
        }

        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_INFO))
        {
          v9 = 138412290;
          v10 = self;
          _os_log_impl(&dword_22B4CC000, &v6->super, OS_LOG_TYPE_INFO, "Cannot recover participant due to empty chatIdentifier for chat: %@", &v9, 0xCu);
        }
      }

      goto LABEL_13;
    }
  }

LABEL_14:
  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasMatchingParticipantHandles:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = [(IMDChat *)self participantHandles];
  v7 = [v4 setWithArray:v6];

  v8 = [MEMORY[0x277CBEB98] setWithArray:v5];

  LOBYTE(v5) = [v7 isEqualToSet:v8];
  return v5;
}

- (IMDService)service
{
  v2 = [(IMDChat *)self account];
  v3 = [v2 service];

  return v3;
}

- (IMDServiceSession)serviceSession
{
  v2 = [(IMDChat *)self account];
  v3 = [v2 session];

  return v3;
}

- (NSString)businessName
{
  if ([(IMDChat *)self isChatBot])
  {
    v3 = [(IMDChat *)self properties];
    v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277D19770]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_sortedParticipantIDHashForParticipants:(id)a3 usesPersonCentricID:(BOOL)a4
{
  v4 = a4;
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
        v13 = [v12 personCentricID];
        v14 = [v13 length];

        if (v14)
        {
          v15 = !v4;
        }

        else
        {
          v15 = 1;
        }

        if (v15)
        {
          v16 = [v12 ID];

          if (!v16)
          {
            continue;
          }

          v17 = [v12 ID];
        }

        else
        {
          v17 = [v12 personCentricID];
        }

        v18 = v17;
        [v6 addObject:v17];
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  v19 = IMSHA1HashFromStrings();

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (int64_t)compareBySequenceNumberAndDateDescending:(id)a3
{
  v4 = a3;
  v5 = [(IMDChat *)self lastScheduledMessageCreatedDate];
  v6 = [v4 lastScheduledMessageCreatedDate];
  v7 = [(IMDChat *)self lastMessage];
  v8 = [v7 time];
  if (v5)
  {
    v9 = [v5 laterDate:v8];

    v8 = v9;
  }

  v10 = [v4 lastMessage];
  v11 = [v10 time];
  if (v6)
  {
    v12 = [v6 laterDate:v11];

    v11 = v12;
  }

  if (v11 && v8)
  {
    goto LABEL_7;
  }

  if (v11 | v8)
  {
    if (!v11)
    {
      v13 = [MEMORY[0x277CBEAA8] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:{objc_msgSend(v4, "lastMessageTimeStampOnLoad")}];
      v11 = v13;
LABEL_8:
      v14 = [v13 compare:v8];
      if (v14)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (!v8)
    {
      v8 = [MEMORY[0x277CBEAA8] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:{-[IMDChat lastMessageTimeStampOnLoad](self, "lastMessageTimeStampOnLoad")}];
LABEL_7:
      v13 = v11;
      goto LABEL_8;
    }
  }

  else
  {
    v15 = [v4 lastMessageTimeStampOnLoad];
    if (v15 != [(IMDChat *)self lastMessageTimeStampOnLoad])
    {
      v21 = [v4 lastMessageTimeStampOnLoad];
      v8 = 0;
      v11 = 0;
      if (v21 < [(IMDChat *)self lastMessageTimeStampOnLoad])
      {
        v14 = -1;
      }

      else
      {
        v14 = 1;
      }

      goto LABEL_23;
    }

    v8 = 0;
    v11 = 0;
  }

LABEL_15:
  v16 = [(IMDChat *)self lastMessage];
  v17 = [v16 messageID];

  v18 = [v4 lastMessage];
  v19 = [v18 messageID];

  v20 = -1;
  if (v19 >= v17)
  {
    v20 = 1;
  }

  if (v19 == v17)
  {
    v14 = 0;
  }

  else
  {
    v14 = v20;
  }

LABEL_23:

  return v14;
}

- (NSDictionary)chatProperties
{
  v2 = [(IMDChat *)self copyDictionaryRepresentation:0];

  return v2;
}

- (id)dictionaryRepresentationIncludingLastMessage
{
  v2 = [(IMDChat *)self copyDictionaryRepresentation:1];

  return v2;
}

- (id)copyDictionaryRepresentation:(BOOL)a3
{
  v3 = a3;
  v5 = [(IMDChat *)self accountID];
  v6 = [v5 length];

  if (v6)
  {
    [(NSRecursiveLock *)self->_lock lock];
    v7 = [(NSMutableDictionary *)self->_chatInfo mutableCopy];
    if (v3)
    {
      v8 = [(IMDChat *)self lastMessage];
      v9 = [v8 copyDictionaryRepresentation];

      [v7 setObject:v9 forKeyedSubscript:*MEMORY[0x277D19888]];
    }

    v10 = [(IMDChat *)self lastMessage];
    v11 = [v10 time];

    if (v11)
    {
      v12 = MEMORY[0x277CCABB0];
      v13 = [(IMDChat *)self lastMessage];
      v14 = [v13 time];
      [v14 timeIntervalSince1970];
      v15 = [v12 numberWithDouble:?];
      [v7 setObject:v15 forKeyedSubscript:*MEMORY[0x277D198C0]];
    }

    v16 = [(IMDChat *)self personCentricID];
    [v7 setObject:v16 forKeyedSubscript:*MEMORY[0x277D19900]];

    [(NSRecursiveLock *)self->_lock unlock];
    v17 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v18 = [v17 isUnreadCountRefactorEnabled];

    if (v18)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[IMDChat unreadCount](self, "unreadCount")}];
      [v7 setObject:v19 forKeyedSubscript:*MEMORY[0x277D19978]];
    }
  }

  else
  {
    v20 = IMLogHandleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D60CC();
    }

    v21 = IMLogHandleForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D6100(self);
    }

    v22 = IMLogHandleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D6188(self);
    }

    return 0;
  }

  return v7;
}

- (NSDictionary)dictionaryRepresentation
{
  v2 = [(IMDChat *)self copyDictionaryRepresentation:0];

  return v2;
}

- (void)_updateLastMessage:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v14 = 138412546;
      v15 = self;
      v16 = 2112;
      v17 = v4;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEBUG, "Chat: %@   Updating last message: %@", &v14, 0x16u);
    }
  }

  if ([(IMDChat *)self isGroupChat])
  {
    v6 = [(IMDChat *)self lastMessage];
    if (!v6)
    {
      if ([v4 isFromMe])
      {
        goto LABEL_14;
      }

      v7 = [v4 sender];
      v6 = [v7 _bestGuessURI];

      v8 = [(IMDChat *)self lastAddressedLocalHandle];
      v9 = [v8 _bestGuessURI];

      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v14 = 138412802;
          v15 = v6;
          v16 = 2112;
          v17 = v9;
          v18 = 2112;
          v19 = self;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEBUG, "This is the first incoming message for this group chat. We will kick off a background request in case others in the chat had previously set one before this device was added. toIdentifier: %@, fromIdentifier: %@, chat: %@", &v14, 0x20u);
        }
      }

      v11 = [(IMDChat *)self serviceSession];
      [v11 requestTranscriptBackground:self toIdentifier:v6 fromIdentifier:v9 messageIsFromStorage:0];
    }
  }

LABEL_14:
  [(IMDChat *)self setLastMessage:v4];
  if ([v4 isFromMe])
  {
    v12 = [v4 time];
    [(IMDChat *)self setLastSentMessageDate:v12];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)updateProperties:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        v18 = 138412546;
        v19 = self;
        v20 = 2112;
        v21 = v4;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEBUG, "Chat: %@   Property update: %@", &v18, 0x16u);
      }
    }

    [(NSRecursiveLock *)self->_lock lock];
    if ([(NSDictionary *)self->_properties count])
    {
      v6 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:self->_properties];
    }

    else
    {
      v6 = 0;
    }

    Mutable = [(NSDictionary *)self->_properties mutableCopy];
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    [(__CFDictionary *)Mutable addEntriesFromDictionary:v4];
    v9 = [MEMORY[0x277CBEB68] null];
    v10 = [(__CFDictionary *)Mutable allKeysForObject:v9];

    if ([v10 count])
    {
      [(__CFDictionary *)Mutable removeObjectsForKeys:v10];
    }

    v7 = [MEMORY[0x277CCAC58] propertyList:Mutable isValidForFormat:200];
    if (v7)
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v18 = 138412290;
          v19 = Mutable;
          _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEBUG, "     Resulting properties: %@", &v18, 0xCu);
        }
      }

      if (v6 && self->_properties)
      {
        v12 = [v6 isEqualToDictionary:Mutable];
        v13 = Mutable ? v12 : 0;
        if (v13)
        {
          v7 = 0;
LABEL_34:
          [(NSRecursiveLock *)self->_lock unlock];

          goto LABEL_35;
        }
      }

      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v18) = 0;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_DEBUG, "     => Saving changes", &v18, 2u);
        }
      }

      [(IMDChat *)self setProperties:Mutable];
      v14 = +[IMDChatStore sharedInstance];
      [v14 storeChat:self];
    }

    else
    {
      v14 = IMLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D6210();
      }
    }

    goto LABEL_34;
  }

  v7 = 0;
LABEL_35:

  v16 = *MEMORY[0x277D85DE8];
  return v7;
}

- (NSDictionary)syncedProperties
{
  v2 = [(IMDChat *)self properties];
  v3 = [v2 mutableCopy];

  [v3 removeObjectForKey:*MEMORY[0x277D19968]];
  v4 = [v3 copy];

  return v4;
}

- (BOOL)updateProperties:(id)a3 shouldBroadcast:(BOOL)a4
{
  v4 = a4;
  v6 = [(IMDChat *)self updateProperties:a3];
  if (v6 && v4)
  {
    v7 = [(IMDChat *)self broadcaster];
    v8 = [(IMDChat *)self guid];
    v9 = [(IMDChat *)self properties];
    [v7 chat:v8 propertiesUpdated:v9];
  }

  return v6;
}

- (BOOL)supportsEncryption
{
  v2 = [(IMDChat *)self properties];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D19958]];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)spamDetectionSource
{
  v2 = [(IMDChat *)self properties];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D19948]];

  if (v3)
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSpamDetectionSource:(int64_t)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277D19948];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [(IMDChat *)self updateProperties:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateBrandLogo:(id)a3 transferGuid:(id)a4
{
  if (a3 && a4)
  {
    v6 = a4;
    v7 = a3;
    v9 = [(IMDChat *)self broadcaster];
    v8 = [(IMDChat *)self guid];
    [v9 chat:v8 brandLogoUpdated:v7 transferGuid:v6];
  }
}

- (NSString)incomingTranslatedMessageIdentifier
{
  v2 = [(IMDChat *)self properties];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D198B8]];

  return v3;
}

- (void)setIncomingTranslatedMessageIdentifier:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length])
  {
    v7 = *MEMORY[0x277D198B8];
    v8[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [(IMDChat *)self updateProperties:v5 shouldBroadcast:1];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)broadcastTranscriptBackgroundChanges
{
  v3 = [(IMDChat *)self broadcaster];
  v4 = [(IMDChat *)self guid];
  v5 = [(IMDChat *)self properties];
  [v3 chat:v4 propertiesUpdated:v5];

  v10 = [(IMDChat *)self broadcaster];
  v6 = [(IMDChat *)self chatIdentifier];
  v7 = [(IMDChat *)self style];
  v8 = [(IMDChat *)self account];
  v9 = [v8 accountID];
  [v10 transcriptBackgroundUpdatedForChatIdentifier:v6 style:v7 account:v9 userInfo:0];
}

- (id)generateNewGroupID
{
  v72 = *MEMORY[0x277D85DE8];
  v3 = IMChatRegistryLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(IMDChat *)self guid];
    v5 = [(IMDChat *)self style];
    v6 = [(IMDChat *)self state];
    v7 = [(IMDChat *)self displayName];
    v8 = [(IMDChat *)self chatIdentifier];
    v31 = [(IMDChat *)self rowID];
    v30 = [(IMDChat *)self originalGroupID];
    v29 = [(IMDChat *)self isFiltered];
    v28 = [(IMDChat *)self cloudKitSyncState];
    v27 = [(IMDChat *)self cloudKitRecordID];
    v26 = [(IMDChat *)self isRecovered];
    v25 = ([(IMDChat *)self repairHistory]>> 1) & 1;
    v24 = ([(IMDChat *)self repairHistory]>> 2) & 1;
    v23 = ([(IMDChat *)self repairHistory]>> 3) & 1;
    v22 = ([(IMDChat *)self repairHistory]>> 4) & 1;
    v21 = [(IMDChat *)self repairHistory]& 1;
    v20 = ([(IMDChat *)self repairHistory]>> 5) & 1;
    v9 = [(IMDChat *)self domainIdentifiers];
    v10 = [(IMDChat *)self participants];
    v11 = [v10 __imArrayByApplyingBlock:&unk_283F1A3A8];
    *buf = 134222850;
    v33 = self;
    v34 = 2112;
    v35 = v4;
    v36 = 1024;
    v37 = v5;
    v38 = 1024;
    v39 = v6;
    v40 = 2112;
    v41 = v7;
    v42 = 2112;
    v43 = v8;
    v44 = 2048;
    v45 = v31;
    v46 = 2112;
    v47 = v30;
    v48 = 1024;
    v49 = v29;
    v50 = 2048;
    v51 = v28;
    v52 = 2112;
    v53 = v27;
    v54 = 1024;
    v55 = v26;
    v56 = 1024;
    v57 = v25;
    v58 = 1024;
    v59 = v24;
    v60 = 1024;
    v61 = v23;
    v62 = 1024;
    v63 = v22;
    v64 = 1024;
    v65 = v21;
    v66 = 1024;
    v67 = v20;
    v68 = 2112;
    v69 = v9;
    v70 = 2112;
    v71 = v11;
    _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEFAULT, " !! About to generate a new group ID for chat: [IMDChat: %p  GUID: %@  Style: %c  State: %d  Display Name: %@  Identifier: %@  Row ID: %lld  originalGroupID: %@  isFiltered: %d  cKSate:%ld  cloudKitRecordID: %@  isRecovered: %{BOOL}d  repairHistory: (Repaired Participant For Chat ID Handle ID Mismatch: %{BOOL}d  Repaired Blank Service Name: %{BOOL}d  Repaired Chat Identifier: %{BOOL}d  Repaired Participant V2: %{BOOL}d  Repaired GUID: %{BOOL}d  Repaired GUID V2: %{BOOL}d)  Domain Identifiers: %@  Participants: %@]", buf, 0xA2u);
  }

  if ([(IMDChat *)self style]== 45 || ![(IMDChat *)self isUnnamedChat])
  {
    v14 = [MEMORY[0x277CCACA8] stringGUID];
    v15 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = v14;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_DEFAULT, "   Generating new group ID: %@", buf, 0xCu);
    }
  }

  else
  {
    v12 = [(IMDChat *)self participants];
    v13 = [(IMDChat *)self lastAddressedLocalHandle];
    v14 = _IMDHashParticipants(v12, v13);

    v15 = IMChatRegistryLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(IMDChat *)self participants];
      v17 = [v16 __imArrayByApplyingBlock:&unk_283F1A3C8];
      *buf = 138412546;
      v33 = v14;
      v34 = 2112;
      v35 = v17;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_DEFAULT, "   Generating new group ID %@  using IDs = %@", buf, 0x16u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)isUnnamedChat
{
  v3 = [(IMDChat *)self displayName];
  if (v3)
  {
    v4 = [(IMDChat *)self displayName];
    v5 = [v4 length] == 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)updateEngramID:(id)a3
{
  v8 = a3;
  v4 = [(IMDChat *)self engramID];
  v5 = IMSharedHelperAreObjectsLogicallySame();

  if ((v5 & 1) == 0)
  {
    [(IMDChat *)self setEngramID:v8];
    [(IMDChat *)self storeAndBroadcastChatChanges];
    v6 = [(IMDChat *)self broadcaster];
    v7 = [(IMDChat *)self guid];
    [v6 chat:v7 engramIDUpdated:v8];
  }
}

- (void)updateEngroupCreationDate:(int64_t)a3
{
  if (![(IMDChat *)self engroupCreationDate])
  {
    v5 = [(IMDChat *)self properties];
    v6 = [v5 mutableCopy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v10 = v8;

    v9 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
    [v10 setObject:v9 forKey:@"EngroupCreationDateKey"];

    [(IMDChat *)self updateProperties:v10];
  }
}

- (void)updateLastReadMessageTimeStampIfNeeded:(int64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_lastReadMessageTimeStamp < a3)
  {
    v5 = IMDChatLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_lastReadMessageTimeStamp];
      v7 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
      v8 = [(IMDChat *)self chatIdentifier];
      v10 = 138412802;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Updating lastReadMessageTimeStamp from: %@ to: %@ for chat: %@", &v10, 0x20u);
    }

    [(IMDChat *)self setLastReadMessageTimeStamp:a3];
    [(IMDChat *)self setCloudKitSyncState:0];
    [(IMDChat *)self storeAndBroadcastChatChanges];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)updateServerChangeToken:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMDChat *)self serverChangeToken];
  v6 = IMSharedHelperAreObjectsLogicallySame();

  if ((v6 & 1) == 0)
  {
    v7 = IMDChatLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(IMDChat *)self serverChangeToken];
      v9 = [(IMDChat *)self chatIdentifier];
      v11 = 138412802;
      v12 = v8;
      v13 = 2112;
      v14 = v4;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Updating record change tag (etag) from: %@ to: %@ for chat: %@", &v11, 0x20u);
    }

    [(IMDChat *)self setServerChangeToken:v4];
    [(IMDChat *)self storeAndBroadcastChatChanges];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateCloudKitSyncState:(int64_t)a3
{
  if (self->_cloudKitSyncState != a3)
  {
    [(IMDChat *)self setCloudKitSyncState:?];

    [(IMDChat *)self storeAndBroadcastChatChanges];
  }
}

- (void)updateOriginalGroupID:(id)a3
{
  v4 = a3;
  originalGroupID = self->_originalGroupID;
  v9 = v4;
  if ((IMSharedHelperAreObjectsLogicallySame() & 1) == 0)
  {
    [(IMDChat *)self setOriginalGroupID:v9];
    [(IMDChat *)self storeAndBroadcastChatChanges];
    v6 = +[IMDMessageStore sharedInstance];
    v7 = [v6 unreadCountController];
    v8 = [(IMDChat *)self guid];
    [v7 chat:v8 originalGroupIDUpdated:v9];
  }
}

- (void)updateCloudKitRecordID:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMDChat *)self cloudKitRecordID];
  v6 = IMSharedHelperAreObjectsLogicallySame();

  if ((v6 & 1) == 0)
  {
    v7 = IMDChatLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(IMDChat *)self cloudKitRecordID];
      v9 = [(IMDChat *)self chatIdentifier];
      v11 = 138412802;
      v12 = v8;
      v13 = 2112;
      v14 = v4;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Updating ck record ID from: %@ to: %@ for chat: %@", &v11, 0x20u);
    }

    [(IMDChat *)self setCloudKitRecordID:v4];
    [(IMDChat *)self storeAndBroadcastChatChanges];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)resetCKSyncState
{
  v3 = IMDChatLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEFAULT, "resetting CK Sync state", v4, 2u);
  }

  [(IMDChat *)self setCloudKitSyncState:0];
  [(IMDChat *)self setServerChangeToken:0];
  [(IMDChat *)self setCloudKitRecordID:0];
  [(IMDChat *)self storeAndBroadcastChatChanges];
}

- (void)updateLastAddressedHandle:(id)a3 forceUpdate:(BOOL)a4
{
  v4 = a4;
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v4 || ([(IMDChat *)self lastAddressedLocalHandle], v7 = objc_claimAutoreleasedReturnValue(), v8 = IMSharedHelperAreObjectsLogicallySame(), v7, (v8 & 1) == 0))
  {
    if (([v6 isEqualToIgnoringCase:*MEMORY[0x277D19478]] & 1) == 0)
    {
      HasMultipleSubscriptions = IMSharedHelperDeviceHasMultipleSubscriptions();
      if (v6 || (HasMultipleSubscriptions & 1) != 0 || ([0 trimmedString], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "length"), v10, v11))
      {
        v12 = IMDChatLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [(IMDChat *)self lastAddressedLocalHandle];
          v14 = @"NO";
          v23 = 138412802;
          v24 = v13;
          v25 = 2112;
          if (v4)
          {
            v14 = @"YES";
          }

          v26 = v6;
          v27 = 2112;
          v28 = v14;
          _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_DEFAULT, "Updating last addressed handle ID from %@ to %@. force update %@", &v23, 0x20u);
        }

        [(IMDChat *)self setLastAddressedLocalHandle:v6];
        v15 = +[IMDChatStore sharedInstance];
        [v15 storeChat:self];

        v16 = [(IMDChat *)self broadcaster];
        v17 = [(IMDChat *)self guid];
        [v16 chat:v17 lastAddressedHandleUpdated:v6];

        [(IMDChat *)self storeAndBroadcastChatChanges];
        v18 = +[IMDMessageStore sharedInstance];
        v19 = [v18 unreadCountController];
        v20 = [(IMDChat *)self guid];
        v21 = [(IMDChat *)self lastAddressedLocalHandle];
        [v19 chat:v20 lastAddressedHandleIDUpdated:v21];
      }
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)updateLastAddressedSIMID:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(IMDChat *)self lastAddressedSIMID];
    v6 = IMSharedHelperAreObjectsLogicallySame();

    if ((v6 & 1) == 0)
    {
      v7 = IMDChatLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(IMDChat *)self lastAddressedSIMID];
        v17 = 138412546;
        v18 = v8;
        v19 = 2112;
        v20 = v4;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEFAULT, "Updating last addressed sim ID from %@ to %@", &v17, 0x16u);
      }

      [(IMDChat *)self setLastAddressedSIMID:v4];
      v9 = +[IMDChatStore sharedInstance];
      [v9 storeChat:self];

      v10 = [(IMDChat *)self broadcaster];
      v11 = [(IMDChat *)self guid];
      [v10 chat:v11 lastAddressedSIMIDUpdated:v4];

      [(IMDChat *)self storeAndBroadcastChatChanges];
      v12 = +[IMDMessageStore sharedInstance];
      v13 = [v12 unreadCountController];
      v14 = [(IMDChat *)self guid];
      v15 = [(IMDChat *)self lastAddressedSIMID];
      [v13 chat:v14 lastAddressedSIMIDUpdated:v15];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)updateLastAddressedHandle:(id)a3 forceUpdateHandle:(BOOL)a4 lastAddressedSIMID:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a5;
  if (a4)
  {
    if ([v9 isEqualToIgnoringCase:*MEMORY[0x277D19478]])
    {
      if (a4)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    HasMultipleSubscriptions = IMSharedHelperDeviceHasMultipleSubscriptions();
    if (!v9 && (HasMultipleSubscriptions & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = [(IMDChat *)self lastAddressedLocalHandle];
    if (IMSharedHelperAreObjectsLogicallySame() & 1) != 0 || ([v9 isEqualToIgnoringCase:*MEMORY[0x277D19478]])
    {
LABEL_7:

LABEL_8:
      v11 = 0;
      goto LABEL_9;
    }

    v29 = IMSharedHelperDeviceHasMultipleSubscriptions();

    if (!v9 && (v29 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v30 = IMDChatLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [(IMDChat *)self lastAddressedLocalHandle];
    v32 = 138412546;
    v33 = v31;
    v34 = 2112;
    v35 = v9;
    _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_DEFAULT, "Updating last addressed handle ID from %@ to %@", &v32, 0x16u);
  }

  [(IMDChat *)self setLastAddressedLocalHandle:v9];
  v11 = 1;
LABEL_9:
  if ([v10 length])
  {
    v12 = [(IMDChat *)self lastAddressedSIMID];
    v13 = IMSharedHelperAreObjectsLogicallySame();

    if ((v13 & 1) == 0)
    {
      v21 = IMDChatLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [(IMDChat *)self lastAddressedSIMID];
        v32 = 138412546;
        v33 = v22;
        v34 = 2112;
        v35 = v10;
        _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_DEFAULT, "Updating last addressed sim ID from %@ to %@", &v32, 0x16u);
      }

      [(IMDChat *)self setLastAddressedSIMID:v10];
      v23 = +[IMDChatStore sharedInstance];
      [v23 storeChat:self];

      v24 = [(IMDChat *)self broadcaster];
      v25 = [(IMDChat *)self guid];
      if (v11)
      {
        [v24 chat:v25 lastAddressedHandleUpdated:v9 lastAddressedSIMIDUpdated:v10];

        [(IMDChat *)self storeAndBroadcastChatChanges];
        v17 = +[IMDMessageStore sharedInstance];
        v18 = [v17 unreadCountController];
        v19 = [(IMDChat *)self guid];
        v20 = [(IMDChat *)self lastAddressedLocalHandle];
        v26 = [(IMDChat *)self lastAddressedSIMID];
        [v18 chat:v19 lastAddressedHandleIDUpdated:v20 lastAddressedSIMIDUpdated:v26];
      }

      else
      {
        [v24 chat:v25 lastAddressedSIMIDUpdated:v10];

        [(IMDChat *)self storeAndBroadcastChatChanges];
        v17 = +[IMDMessageStore sharedInstance];
        v18 = [v17 unreadCountController];
        v19 = [(IMDChat *)self guid];
        v20 = [(IMDChat *)self lastAddressedSIMID];
        [v18 chat:v19 lastAddressedSIMIDUpdated:v20];
      }

      goto LABEL_21;
    }
  }

  if (v11)
  {
    v14 = +[IMDChatStore sharedInstance];
    [v14 storeChat:self];

    v15 = [(IMDChat *)self broadcaster];
    v16 = [(IMDChat *)self guid];
    [v15 chat:v16 lastAddressedHandleUpdated:v9];

    [(IMDChat *)self storeAndBroadcastChatChanges];
    v17 = +[IMDMessageStore sharedInstance];
    v18 = [v17 unreadCountController];
    v19 = [(IMDChat *)self guid];
    v20 = [(IMDChat *)self lastAddressedLocalHandle];
    [v18 chat:v19 lastAddressedHandleIDUpdated:v20];
LABEL_21:
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (void)updateDisplayName:(id)a3 sender:(id)a4
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (self->_displayName != v6)
  {
    if (self->_style != 45 || [(IMDChat *)self isBusinessChat]|| [(IMDChat *)self isStewieChat])
    {
      goto LABEL_8;
    }

    v8 = [(IMDChat *)self serviceName];
    if ([v8 isEqualToString:*MEMORY[0x277D1A608]])
    {

LABEL_8:
      v10 = +[IMDChatRegistry sharedInstance];
      [v10 invalidatePersonCentricGroupedChatsCache];

      [(IMDChat *)self setDisplayName:v6];
      [(IMDChat *)self setCloudKitSyncState:0];
      v11 = +[IMDChatStore sharedInstance];
      [v11 storeChat:self];

      v12 = +[IMDChatVocabularyUpdater sharedInstance];
      [v12 updateVocabularyForRenamedChat:self completionHandler:0];

      [(IMDChat *)self storeAndBroadcastChatChanges];
      v13 = +[IMDChatRegistry sharedInstance];
      [v13 updateFaceTimeGroupName:self];

      v14 = [MEMORY[0x277D1AB78] sharedCoordinator];
      v15 = [(IMDChat *)self groupID];
      [v14 informOfChangedGroupDisplayName:v15];

      v16 = [(IMDChat *)self broadcaster];
      v17 = [(IMDChat *)self guid];
      v18 = [(IMDChat *)self personCentricID];
      [v16 chat:v17 chatPersonCentricID:v18 displayNameUpdated:v6 sender:v7];

      v19 = [(IMDChat *)self participants];
      v20 = [v19 __imArrayByApplyingBlock:&unk_283F1A3E8];

      v21 = +[IMDChatRegistry sharedInstance];
      v24[0] = v20;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
      [v21 _remergeChatsWithParticipantIDsSets:v22];

      goto LABEL_9;
    }

    v9 = [(IMDChat *)self isMergedBusinessThread];

    if (v9)
    {
      goto LABEL_8;
    }
  }

LABEL_9:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)updateIsFiltered:(int64_t)a3 fromContact:(BOOL)a4
{
  v4 = a4;
  v64[1] = *MEMORY[0x277D85DE8];
  if ([(IMDChat *)self isFiltered]== a3)
  {
    goto LABEL_35;
  }

  v7 = [(IMDChat *)self isFiltered];
  v8 = [(IMDChat *)self isFiltered];
  [(IMDChat *)self setIsFiltered:a3];
  if (a3)
  {
    goto LABEL_6;
  }

  if (!v8)
  {
    goto LABEL_6;
  }

  if (v4)
  {
    goto LABEL_6;
  }

  v63 = *MEMORY[0x277D198D0];
  v9 = [MEMORY[0x277CBEAA8] now];
  v64[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:&v63 count:1];
  v11 = [(IMDChat *)self updateProperties:v10];

  if (!v11)
  {
LABEL_6:
    v12 = +[IMDChatStore sharedInstance];
    [v12 storeChat:self];
  }

  v13 = [(IMDChat *)self broadcaster];
  v14 = [(IMDChat *)self guid];
  [v13 chat:v14 isFilteredUpdated:a3];

  v15 = +[IMDMessageStore sharedInstance];
  v16 = [v15 unreadCountController];
  v17 = [(IMDChat *)self guid];
  [v16 chat:v17 isFilteredUpdated:a3];

  if (v7 == 2)
  {
    v18 = IMDChatLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(IMDChat *)self guid];
      *buf = 138412290;
      v62 = v19;
      _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_DEFAULT, "Indexing with Spotlight as chat was moved out of Junk. Chat with guid: %@", buf, 0xCu);
    }

    [(IMDChat *)self _indexChatAndMessagesToSpotlightWithReason:1002];
  }

  else if (a3 == 2)
  {
    v20 = IMDChatLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(IMDChat *)self guid];
      *buf = 138412290;
      v62 = v21;
      _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_DEFAULT, "Delete from Spotlight as chat was moved to Junk. Chat with guid: %@", buf, 0xCu);
    }

    v22 = [(IMDChat *)self guid];
    IMDCoreSpotlightDeleteChatGUID();

    v23 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v24 = [v23 isIntroductionsEnabled];

    if (!v24)
    {
      goto LABEL_28;
    }

    v25 = +[IMDChatRegistry sharedInstance];
    v26 = [(IMDChat *)self guid];
    v60 = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
    [v25 updatePendingReviewForChatsWithGUIDs:v27 pendingReview:0];
    goto LABEL_27;
  }

  if (a3)
  {
    goto LABEL_28;
  }

  v28 = objc_alloc(MEMORY[0x277D18ED8]);
  v29 = [(IMDChat *)self guid];
  v30 = [v28 initWithAssociatedChatGUID:v29];

  v31 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", *MEMORY[0x277D19F98], MEMORY[0x277CBEC28]];
  v32 = *MEMORY[0x277D19708];
  v27 = IMBalloonExtensionIDWithSuffix();
  v33 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", *MEMORY[0x277D19F78], v27];
  v34 = MEMORY[0x277CCA920];
  v51 = v33;
  v52 = v31;
  v59[0] = v31;
  v59[1] = v33;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
  v36 = [v34 andPredicateWithSubpredicates:v35];
  [v30 setPredicate:v36];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v25 = v30;
  v37 = [v25 countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v54;
    do
    {
      v40 = 0;
      do
      {
        if (*v54 != v39)
        {
          objc_enumerationMutation(v25);
        }

        v41 = IMDCreateIMMessageItemFromIMDMessageRecordRef(*(*(&v53 + 1) + 8 * v40), 0);
        if (![v41 type])
        {
          v42 = [MEMORY[0x277D1AB78] sharedCoordinator];
          [v42 informKnownSenderSentMessage:v41];
        }

        ++v40;
      }

      while (v38 != v40);
      v38 = [v25 countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v38);
  }

  v26 = v52;
LABEL_27:

LABEL_28:
  v43 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v44 = [v43 isIntroductionsEnabled];

  if (v44)
  {
    v45 = [MEMORY[0x277D1AB08] isFilterUnknownSendersEnabled];
    if (!a3)
    {
      if (v45)
      {
        v46 = +[IMDChatRegistry sharedInstance];
        v47 = [(IMDChat *)self guid];
        v57 = v47;
        v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v57 count:1];
        [v46 updatePendingReviewForChatsWithGUIDs:v48 pendingReview:0];
      }
    }
  }

  v49 = IMDChatLogHandle();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v62) = a3;
    _os_log_impl(&dword_22B4CC000, v49, OS_LOG_TYPE_DEFAULT, "Updating isFiltered to: %d", buf, 8u);
  }

LABEL_35:
  v50 = *MEMORY[0x277D85DE8];
}

- (void)_indexChatAndMessagesToSpotlightWithReason:(int64_t)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = IMDChatLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [(IMDChat *)self guid];
    *buf = 138412290;
    v25 = v5;
    _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEFAULT, "Index chat to Spotlight as it was moved out of Junk. Chat with guid: %@", buf, 0xCu);
  }

  v6 = [(IMDChat *)self guid];
  IMDCoreSpotlightAddChatGUID();

  [(IMDChat *)self guid];
  v7 = IMDChatRecordCopyChatForGUID();
  v8 = IMDChatRecordCopyMessagesWithLimit();
  v9 = IMDChatLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 count];
    *buf = 134217984;
    v25 = v10;
    _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEFAULT, "Starting indexing %llu messages to Spotlight", buf, 0xCu);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v19 + 1) + 8 * i) guid];
        if (v16)
        {
          IMDCoreSpotlightAddMessageGUID();
        }

        else
        {
          v17 = IMDChatLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_DEFAULT, "Failed to find messageGUID for spotlight", buf, 2u);
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)updatePendingIncomingSatelliteMessageCount:(int64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  if ([(IMDChat *)self pendingIncomingSatelliteMessageCount]!= a3)
  {
    [(IMDChat *)self setPendingIncomingSatelliteMessageCount:a3];
    v5 = +[IMDChatStore sharedInstance];
    [v5 storeChat:self];

    v6 = [(IMDChat *)self copyDictionaryRepresentation:0];
    v7 = [(IMDChat *)self broadcaster];
    v8 = [(IMDChat *)self guid];
    [v7 chat:v8 updated:v6];

    v9 = IMDChatLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109120;
      v11[1] = a3;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEFAULT, "Updating pendingIncomingSatelliteMessageCount to: %d", v11, 8u);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateNumberOfTimesRespondedToThread
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = [(IMDChat *)self getNumberOfTimesRespondedToThread];
  if (v3 <= 2)
  {
    v10 = @"numberOfTimesRespondedtoThread";
    v4 = [MEMORY[0x277CCABB0] numberWithInt:(v3 + 1)];
    v11[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    [(IMDChat *)self updateProperties:v5];

    v6 = [(IMDChat *)self broadcaster];
    v7 = [(IMDChat *)self guid];
    v8 = [(IMDChat *)self properties];
    [v6 chat:v7 propertiesUpdated:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (int64_t)spamCategory
{
  v3 = [(NSDictionary *)self->_properties objectForKey:@"wasDetectedAsSMSSpam"];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    return 2;
  }

  v6 = MEMORY[0x277D1AB70];
  v7 = [(NSDictionary *)self->_properties objectForKey:@"SMSCategory"];
  v8 = [v6 filterActionForCategory:{objc_msgSend(v7, "intValue")}];

  return v8;
}

- (void)updateSMSCategory:(int64_t)a3 subCategory:(int64_t)a4
{
  v30[1] = *MEMORY[0x277D85DE8];
  v29 = @"wasDetectedAsSMSSpam";
  v30[0] = MEMORY[0x277CBEC28];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  [(IMDChat *)self updateProperties:v7];

  if ((a3 - 3) >= 2)
  {
    if (a3 == 2)
    {
      [(IMDChat *)self updateIsFiltered:2];
      v27 = @"SMSCategory";
      v28 = &unk_283F4E9C0;
      v12 = MEMORY[0x277CBEAC0];
      v13 = &v28;
      v14 = &v27;
      v15 = 1;
    }

    else
    {
      v23[0] = @"SMSCategory";
      v23[1] = @"SMSSubCategory";
      v24[0] = &unk_283F4E9D8;
      v24[1] = &unk_283F4E9D8;
      v12 = MEMORY[0x277CBEAC0];
      v13 = v24;
      v14 = v23;
      v15 = 2;
    }

    v9 = [v12 dictionaryWithObjects:v13 forKeys:v14 count:v15];
    [(IMDChat *)self updateProperties:v9];
  }

  else
  {
    v8 = [MEMORY[0x277D1AB70] fetchSMSFilterParamForCategory:a3 subCategory:a4];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 category];
      v11 = [v9 subCategory];
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    [(IMDChat *)self updateIsFiltered:a3 + 16 * a4];
    v25[0] = @"SMSCategory";
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
    v25[1] = @"SMSSubCategory";
    v26[0] = v16;
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:v11];
    v26[1] = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
    [(IMDChat *)self updateProperties:v18];
  }

  v19 = [(IMDChat *)self broadcaster];
  v20 = [(IMDChat *)self guid];
  v21 = [(IMDChat *)self properties];
  [v19 chat:v20 propertiesUpdated:v21];

  v22 = *MEMORY[0x277D85DE8];
}

- (void)updateSMSSpamExtensionNameChatProperty:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v11 = @"smsSpamExtensionName";
    v12[0] = a3;
    v4 = MEMORY[0x277CBEAC0];
    v5 = a3;
    v6 = [v4 dictionaryWithObjects:v12 forKeys:&v11 count:1];

    [(IMDChat *)self updateProperties:v6];
    v7 = [(IMDChat *)self broadcaster];
    v8 = [(IMDChat *)self guid];
    v9 = [(IMDChat *)self properties];
    [v7 chat:v8 propertiesUpdated:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateTimeSensitiveExpirationDateWithMessageTime:(id)a3 hasOneTimeCode:(BOOL)a4
{
  v4 = a4;
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (v6)
  {
    IMSharedHelperMessagePriorityTimeout();
    v7 = [v6 dateByAddingTimeInterval:?];
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v9 = [(IMDChat *)self guid];
        [v7 timeIntervalSinceReferenceDate];
        *buf = 138412802;
        v23 = v9;
        v24 = 2048;
        v25 = v10;
        v26 = 1024;
        v27 = v4;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_DEBUG, "Chat.guid: %@, applying time sensitive expiration date: %f, with onetime passcode: %{BOOL}d", buf, 0x1Cu);
      }
    }

    v11 = *MEMORY[0x277D19960];
    v21[0] = v7;
    v12 = *MEMORY[0x277D19828];
    v19 = v11;
    v20 = v12;
    if (v4)
    {
      v13 = MEMORY[0x277CBEC38];
    }

    else
    {
      v13 = [MEMORY[0x277CBEB68] null];
    }

    v21[1] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v19 count:2];
    [(IMDChat *)self updateProperties:v14];

    if (!v4)
    {
    }

    v15 = [(IMDChat *)self broadcaster:v19];
    v16 = [(IMDChat *)self guid];
    v17 = [(IMDChat *)self properties];
    [v15 chat:v16 propertiesUpdated:v17];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)updateTimeSensitiveExpirationDateForReadIfNeeded
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = [(IMDChat *)self properties];
  v4 = *MEMORY[0x277D19960];
  v5 = [v3 objectForKey:*MEMORY[0x277D19960]];

  v6 = [MEMORY[0x277CBEAA8] date];
  IMSharedHelperReadMessagePriorityTimeout();
  v7 = [v6 dateByAddingTimeInterval:?];

  if (v5 && [v5 compare:v7] == 1)
  {
    v13 = v4;
    v14[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [(IMDChat *)self updateProperties:v8];

    v9 = [(IMDChat *)self broadcaster];
    v10 = [(IMDChat *)self guid];
    v11 = [(IMDChat *)self properties];
    [v9 chat:v10 propertiesUpdated:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setLastSentMessageDate:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = @"LSMD";
  v12[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v12 forKeys:&v11 count:1];

  [(IMDChat *)self updateProperties:v6];
  v7 = [(IMDChat *)self broadcaster];
  v8 = [(IMDChat *)self guid];
  v9 = [(IMDChat *)self properties];
  [v7 chat:v8 propertiesUpdated:v9];

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)isiMessageSpam
{
  v2 = [(IMDChat *)self properties];
  v3 = [v2 objectForKey:@"wasDetectedAsiMessageSpam"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isSMSSpam
{
  v3 = [(IMDChat *)self properties];
  v4 = [v3 objectForKey:@"wasDetectedAsSMSSpam"];

  v5 = [(IMDChat *)self properties];
  v6 = [v5 objectForKey:@"SMSCategory"];

  v7 = v4 && ([v4 BOOLValue] & 1) != 0 || objc_msgSend(v6, "intValue") == 1;
  return v7;
}

- (int)getNumberOfTimesRespondedToThread
{
  v2 = [(IMDChat *)self properties];
  v3 = [v2 objectForKey:@"numberOfTimesRespondedtoThread"];
  v4 = v3;
  v5 = &unk_283F4E9F0;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [v6 intValue];
  return v7;
}

- (id)lastSentMessageDate
{
  v3 = [(IMDChat *)self properties];
  v4 = [v3 objectForKey:@"LSMD"];

  if (!v4)
  {
    v5 = [(IMDChat *)self lastMessage];
    v6 = [v5 isFromMe];

    if (v6)
    {
      v7 = [(IMDChat *)self lastMessage];
      v4 = [v7 time];

      [(IMDChat *)self setLastSentMessageDate:v4];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)receivedBlackholeError
{
  v2 = [(IMDChat *)self properties];
  v3 = [v2 objectForKey:@"RBHE"];

  if (v3)
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)smsHandshakeState
{
  v2 = [(IMDChat *)self properties];
  v3 = [v2 objectForKey:@"smsHandshakeState"];
  v4 = v3;
  v5 = &unk_283F4E9F0;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [v6 intValue];
  return v7;
}

- (int)messageHandshakeState
{
  v2 = [(IMDChat *)self properties];
  v3 = [v2 objectForKey:@"messageHandshakeState"];
  v4 = v3;
  v5 = &unk_283F4E9F0;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [v6 intValue];
  return v7;
}

- (int)emergencyTranscriptSharingState
{
  v2 = [(IMDChat *)self properties];
  v3 = [v2 objectForKey:@"emergencyTranscriptSharingState"];
  v4 = v3;
  v5 = &unk_283F4E9F0;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [v6 intValue];
  return v7;
}

- (NSString)lastSeenMessageGuid
{
  v2 = [(IMDChat *)self properties];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D198A8]];

  return v3;
}

- (void)updateLastSeenMessageGuidIfNeeded:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v6 = [v5 isCatchUpEnabled];

  if (v6)
  {
    v7 = [(IMDChat *)self properties];
    v8 = *MEMORY[0x277D198A8];
    v9 = [v7 objectForKeyedSubscript:*MEMORY[0x277D198A8]];

    v10 = IMDChatLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = v9;
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_DEFAULT, "Checking if last seen message guid needs updating, old %@ new %@", buf, 0x16u);
    }

    if (([v9 isEqualToString:v4] & 1) == 0)
    {
      v17 = v8;
      v11 = v4;
      if (!v4)
      {
        v11 = [MEMORY[0x277CBEB68] null];
      }

      v18 = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
      [(IMDChat *)self updateProperties:v12];

      if (!v4)
      {
      }

      v13 = [(IMDChat *)self broadcaster];
      v14 = [(IMDChat *)self guid];
      v15 = [(IMDChat *)self properties];
      [v13 chat:v14 propertiesUpdated:v15];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)lastTranslatableMessageGUIDWithLanguageCode:(id)a3
{
  v4 = a3;
  v5 = [(IMDChat *)self properties];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D198B0]];

  v7 = [v6 objectForKeyedSubscript:v4];

  return v7;
}

- (void)updateLastMessageGUID:(id)a3 forLanguageCode:(id)a4
{
  v14[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(IMDChat *)self properties];
  v9 = *MEMORY[0x277D198B0];
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x277D198B0]];

  if (!v10)
  {
    v10 = [MEMORY[0x277CBEB38] dictionary];
  }

  [v10 setValue:v6 forKey:v7];
  v13 = v9;
  v14[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [(IMDChat *)self updateProperties:v11];

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEmergencyChat
{
  v2 = [(IMDChat *)self properties];
  v3 = [v2 objectForKey:*MEMORY[0x277D19840]];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isMergedBusinessThread
{
  v3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v4 = [v3 isMergeBusinessSenderIndiaEnabled];

  if (!v4)
  {
    return 0;
  }

  v5 = [(IMDChat *)self properties];
  v6 = [v5 objectForKey:*MEMORY[0x277D19850]];
  v7 = [v6 BOOLValue];

  return v7;
}

- (BOOL)isStewieEmergencyChat
{
  v3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v4 = [v3 stewieEnabled];

  if (!v4)
  {
    return 0;
  }

  v5 = [(IMDChat *)self chatIdentifier];
  v6 = IMIsStringStewieEmergency();

  return v6;
}

- (BOOL)isStewieRoadsideChat
{
  v3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v4 = [v3 stewieEnabled];

  if (!v4)
  {
    return 0;
  }

  v5 = [(IMDChat *)self chatIdentifier];
  v6 = IMIsStringStewieRoadside();

  return v6;
}

- (BOOL)isStewieSharingChat
{
  v3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v4 = [v3 isTranscriptSharingEnabled];

  if (!v4)
  {
    return 0;
  }

  cachedStewieSharingChat = self->_cachedStewieSharingChat;
  if (!cachedStewieSharingChat)
  {
    v6 = MEMORY[0x277CCABB0];
    v7 = [(IMDChat *)self emergencyUserInfo];
    v8 = [v6 numberWithInt:v7 != 0];
    v9 = self->_cachedStewieSharingChat;
    self->_cachedStewieSharingChat = v8;

    cachedStewieSharingChat = self->_cachedStewieSharingChat;
  }

  return [(NSNumber *)cachedStewieSharingChat BOOLValue];
}

- (void)setEmergencyUserInfo:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v6 = [v5 isTranscriptSharingEnabled];

  if (v6)
  {
    v13 = *MEMORY[0x277D197E8];
    v7 = [v4 dictionaryRepresentation];
    v14[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    [(IMDChat *)self updateProperties:v8];

    v9 = [(IMDChat *)self broadcaster];
    v10 = [(IMDChat *)self guid];
    v11 = [(IMDChat *)self properties];
    [v9 chat:v10 propertiesUpdated:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (IMSharedEmergencyInfo)emergencyUserInfo
{
  v3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v4 = [v3 isTranscriptSharingEnabled];

  if (v4)
  {
    v5 = [(IMDChat *)self properties];
    v6 = [v5 objectForKey:*MEMORY[0x277D197E8]];

    v7 = [MEMORY[0x277D1ABB8] infoFromDictionary:v6 isStewieTranscriptSharingMessage:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)associatedBusinessID
{
  if ([(IMDChat *)self isStewieRoadsideChat])
  {
    v3 = [(IMDChat *)self properties];
    v4 = [v3 objectForKey:*MEMORY[0x277D19790]];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updateAssociatedBusinessID:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(IMDChat *)self isStewieRoadsideChat])
  {
    v10 = IMDChatLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D6244();
    }

    goto LABEL_13;
  }

  if (([v4 _appearsToBeBusinessID] & 1) == 0)
  {
    v10 = IMDChatLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D6278(v4, v10);
    }

    goto LABEL_13;
  }

  v5 = [(IMDChat *)self associatedBusinessID];
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = [(IMDChat *)self guid];
        *buf = 138412546;
        v17 = v4;
        v18 = 2112;
        v19 = v8;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_DEBUG, "Updating Associated business ID to: %@ for chat guid: %@", buf, 0x16u);
      }
    }

    v14 = *MEMORY[0x277D19790];
    v15 = v4;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    [(IMDChat *)self updateProperties:v9];

    v10 = [(IMDChat *)self broadcaster];
    v11 = [(IMDChat *)self guid];
    v12 = [(IMDChat *)self properties];
    [v10 chat:v11 propertiesUpdated:v12];

LABEL_13:
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)isOscarChat
{
  if ([(IMDChat *)self isFiltered]!= 2)
  {
    return 0;
  }

  v3 = [(IMDChat *)self account];
  v4 = [v3 service];
  v5 = [v4 internalName];
  v6 = [v5 isEqualToString:*MEMORY[0x277D1A620]];

  return v6;
}

- (BOOL)isPlaceholder
{
  v3 = [(IMDChat *)self lastMessage];

  v4 = [(IMDChat *)self lastTUConversationCreatedDate];
  v5 = v3 | v4;

  v6 = [(IMDChat *)self lastScheduledMessageCreatedDate];

  return (v5 | v6) == 0;
}

- (void)updateGroupPhotoGuid:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMDChat *)self groupPhotoGuid];
  v6 = v5;
  if (v4)
  {
    if (([v5 isEqualToString:v4] & 1) == 0)
    {
      [(IMDChat *)self setCloudKitSyncState:0];
      v15 = *MEMORY[0x277D19810];
      v16[0] = v4;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      [(IMDChat *)self updateProperties:v7];
LABEL_6:

      v9 = [(IMDChat *)self broadcaster];
      v10 = [(IMDChat *)self guid];
      v11 = [(IMDChat *)self properties];
      [v9 chat:v10 propertiesUpdated:v11];
    }
  }

  else if (v5)
  {
    [(IMDChat *)self setCloudKitSyncState:0];
    v13 = *MEMORY[0x277D19810];
    v7 = [MEMORY[0x277CBEB68] null];
    v14 = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [(IMDChat *)self updateProperties:v8];

    goto LABEL_6;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)transcriptBackgroundPath
{
  v2 = [(IMDChat *)self transcriptBackgroundProperties];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D1A7E8]];

  if (v3)
  {
    v4 = IMTranscriptBackgroundDirectory();
    v5 = [v4 URLByAppendingPathComponent:v3];

    v6 = [v5 path];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)transcriptBackgroundProperties
{
  v2 = [(IMDChat *)self properties];
  v3 = [v2 objectForKey:*MEMORY[0x277D19970]];

  return v3;
}

- (void)updateTranscriptBackgroundProperties:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMDChat *)self transcriptBackgroundProperties];
  v6 = v5;
  if (v4)
  {
    if (([v5 isEqualToDictionary:v4] & 1) == 0)
    {
      [(IMDChat *)self setCloudKitSyncState:0];
      v15 = *MEMORY[0x277D19970];
      v16[0] = v4;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      [(IMDChat *)self updateProperties:v7];
LABEL_6:

      v9 = [(IMDChat *)self broadcaster];
      v10 = [(IMDChat *)self guid];
      v11 = [(IMDChat *)self properties];
      [v9 chat:v10 propertiesUpdated:v11];
    }
  }

  else if (v5)
  {
    [(IMDChat *)self setCloudKitSyncState:0];
    v13 = *MEMORY[0x277D19970];
    v7 = [MEMORY[0x277CBEB68] null];
    v14 = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [(IMDChat *)self updateProperties:v8];

    goto LABEL_6;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)groupPhotoUploadFailureCount
{
  v2 = [(IMDChat *)self properties];
  v3 = [v2 objectForKey:@"GPUFC"];

  return v3;
}

- (void)updateGroupPhotoUploadFailureCount:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMDChat *)self groupPhotoUploadFailureCount];
  v6 = v5;
  if (v4)
  {
    if (([v5 isEqualToNumber:v4] & 1) == 0)
    {
      v15 = @"GPUFC";
      v16[0] = v4;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      [(IMDChat *)self updateProperties:v7];
LABEL_6:

      v9 = [(IMDChat *)self broadcaster];
      v10 = [(IMDChat *)self guid];
      v11 = [(IMDChat *)self properties];
      [v9 chat:v10 propertiesUpdated:v11];
    }
  }

  else if (v5)
  {
    v13 = @"GPUFC";
    v7 = [MEMORY[0x277CBEB68] null];
    v14 = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [(IMDChat *)self updateProperties:v8];

    goto LABEL_6;
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_persistMergedIDMergedChatsIfNeeded:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v34 = a3;
  v4 = IMDChatLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_DEFAULT, "Trying to persist legacy mergedID-based merged chats - 48047873", buf, 2u);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [(IMDChat *)self participants];
  v5 = [obj countByEnumeratingWithState:&v43 objects:v56 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v44;
    *&v6 = 138412290;
    v31 = v6;
    v32 = *v44;
    do
    {
      v9 = 0;
      v33 = v7;
      do
      {
        if (*v44 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v43 + 1) + 8 * v9);
        v11 = [v10 CNContactID];
        v12 = [v10 personCentricID];
        v13 = v12;
        if (v11)
        {
          v14 = 1;
        }

        else
        {
          v14 = v12 == 0;
        }

        if (!v14)
        {
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v15 = v34;
          v16 = [v15 countByEnumeratingWithState:&v39 objects:v55 count:16];
          if (v16)
          {
            v17 = v16;
            v36 = v11;
            v37 = v9;
            v18 = 0;
            v19 = *v40;
            v38 = v15;
            while (2)
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v40 != v19)
                {
                  objc_enumerationMutation(v15);
                }

                v21 = *(*(&v39 + 1) + 8 * i);
                if (v21 != v10)
                {
                  v22 = [*(*(&v39 + 1) + 8 * i) CNContactID];
                  v23 = [v21 personCentricID];
                  if ([v23 isEqualToString:v13])
                  {
                    v24 = v18;
                    v25 = IMDChatLogHandle();
                    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138413058;
                      v48 = v10;
                      v49 = 2112;
                      v50 = v21;
                      v51 = 2112;
                      v52 = v22;
                      v53 = 2112;
                      v54 = v13;
                      _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_DEFAULT, "For handle [%@] we found another handle [%@] with contactID [%@] that has the same mergedID: [%@]", buf, 0x2Au);
                    }

                    if (v22)
                    {

                      v27 = v22;
                      v8 = v32;
                      v7 = v33;
                      v11 = v36;
                      v9 = v37;
LABEL_30:
                      v28 = IMDChatLogHandle();
                      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412546;
                        v48 = v10;
                        v49 = 2112;
                        v50 = v27;
                        _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_DEFAULT, "handle [%@] gets a mergedContactID: [%@]", buf, 0x16u);
                      }

                      v29 = v27;
                      [v10 setCNContactID:v27];
                      goto LABEL_36;
                    }

                    v18 = v24;
                    v15 = v38;
                    if (!v18)
                    {
                      v18 = v13;
                    }
                  }
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v39 objects:v55 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }

            v8 = v32;
            v7 = v33;
            v26 = v18;
            v11 = v36;
            v9 = v37;
            v27 = v26;
            if (v26)
            {
              goto LABEL_30;
            }
          }

          else
          {
          }

          v29 = IMDChatLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v31;
            v48 = v10;
            _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_DEFAULT, "handle [%@] doesn't have mergedID siblings", buf, 0xCu);
          }

LABEL_36:
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [obj countByEnumeratingWithState:&v43 objects:v56 count:16];
    }

    while (v7);
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (id)cloudKitChatIDForServiceName:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v6 = [v5 isOneChatEnabled];

  if (v6)
  {
    v7 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v8 = [v7 isMissingMessagesEnabled];

    if ((v8 & 1) == 0)
    {
      [(IMDChat *)self _submitAndOpenTapToRadarForInvalidFeatureFlagConfiguration];
    }

    if ([(IMDChat *)self style]== 45)
    {
      v9 = [(IMDChat *)self guid];
      IMComponentsFromChatGUID();
      v10 = 0;

      v11 = IMCopyGUIDForChat();
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ([(IMDChat *)self style]== 45)
  {
    v12 = [(IMDChat *)self guid];
  }

  else
  {
    v13 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
    v14 = [v13 isMissingMessagesEnabled];

    if (v14)
    {
LABEL_9:
      v10 = IMChatLookupDomainForServiceName();
      v11 = [(IMDChat *)self latestIdentifierForDomain:v10];
      goto LABEL_12;
    }

    v12 = [(IMDChat *)self originalGroupID];
  }

  v10 = v12;
  v11 = [v12 copy];
LABEL_12:
  v15 = v11;

  return v15;
}

- (id)_ckUniqueID
{
  if ([(IMDChat *)self style]== 45)
  {
    v3 = [(IMDChat *)self guid];
  }

  else
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(IMDChat *)self serviceName];
    v6 = [(IMDChat *)self groupID];
    v3 = [v4 stringWithFormat:@"%@:%@", v5, v6];
  }

  return v3;
}

- (id)cloudKitDebugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(IMDChat *)self _ckUniqueID];
  v5 = [(IMDChat *)self cloudKitSyncState];
  v6 = [(IMDChat *)self serverChangeToken];
  v7 = [v3 stringWithFormat:@"<IMDChat %p _ckUniqueID %@, ckSyncState %ld recordChangeTag %@>", self, v4, v5, v6];

  return v7;
}

- (int64_t)groupParticipantVersion
{
  v2 = [(IMDChat *)self properties];
  v3 = [v2 objectForKey:@"pv"];
  v4 = [v3 integerValue];

  return v4;
}

- (void)setGroupParticipantVersion:(int64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = IMDChatLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(IMDChat *)self groupID];
    *buf = 138412546;
    v13 = v6;
    v14 = 2048;
    v15 = a3;
    _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_DEFAULT, "Setting participant version of chat %@ to %ld", buf, 0x16u);
  }

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{a3, @"pv"}];
  v11 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [(IMDChat *)self updateProperties:v8];

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)isChatBot
{
  v20 = *MEMORY[0x277D85DE8];
  if ([(IMDChat *)self hasChatBotPersistentMenu]|| [(IMDChat *)self hasChatBotBrandInfo])
  {
    v3 = 1;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v4 = [(IMDChat *)self participants];
    v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = [v9 personCentricID];
          if ([v10 __im_isSipHandle])
          {

LABEL_16:
            v3 = 1;
            goto LABEL_17;
          }

          v11 = [v9 ID];
          v12 = [v11 __im_isChatBot];

          if (v12)
          {
            goto LABEL_16;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
        v3 = 0;
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v3 = 0;
    }

LABEL_17:
  }

  v13 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)hasChatBotPersistentMenu
{
  v3 = [(IMDChat *)self properties];
  if (v3)
  {
    v4 = [(IMDChat *)self properties];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D1A488]];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasChatBotBrandInfo
{
  v3 = [(IMDChat *)self properties];
  if (v3)
  {
    v4 = [(IMDChat *)self properties];
    v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D19748]];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)brandLogoData
{
  v2 = [(IMDChat *)self brandInfo];
  v3 = [v2 brandLogoGuid];

  v4 = +[IMDFileTransferCenter sharedInstance];
  v5 = [v4 transferForGUID:v3];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBEA90]);
    v7 = [v5 localURL];
    v8 = [v6 initWithContentsOfURL:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)brandInfo
{
  v3 = [(IMDChat *)self properties];

  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D1A8D8]);
    v5 = [(IMDChat *)self properties];
    v6 = [v4 initWithDictionary:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)addBIAContextWithUserID:(id)a3 referenceID:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v9 = [v8 isBIAEnabled];

  if (v9)
  {
    if ([v6 length])
    {
      v33 = v7;
      v10 = [(IMDChat *)self properties];
      v11 = [v10 objectForKey:@"AMB-BIAContext"];
      v12 = [v11 mutableCopy];

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
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
            v20 = [v19 valueForKey:@"userId"];
            if ([v6 isEqualToString:v20])
            {
              v21 = v19;

              v16 = v21;
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v15);
      }

      else
      {
        v16 = 0;
      }

      if (!v13)
      {
        v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
      }

      v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
      if (!v16)
      {
        v23 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
        if ([v6 length])
        {
          [v23 setValue:v6 forKey:@"userId"];
        }

        v24 = IMDChatLogHandle();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_DEFAULT, "Adding a new BIA Context to Chat Properties", buf, 2u);
        }

        [v13 addObject:v23];
        [v22 setObject:v13 forKeyedSubscript:@"AMB-BIAContext"];
      }

      v7 = v33;
      if ([v33 length])
      {
        v25 = [(IMDChat *)self properties];
        v26 = [v25 objectForKey:@"AMB-BIALastUsedReferenceID"];

        if (([v33 isEqualToString:v26] & 1) == 0)
        {
          v27 = IMDChatLogHandle();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_22B4CC000, v27, OS_LOG_TYPE_DEFAULT, "Updating lastUsedBIAReferenceID", buf, 2u);
          }

          [v22 setObject:v33 forKeyedSubscript:@"AMB-BIALastUsedReferenceID"];
        }
      }

      if ([v22 count])
      {
        [(IMDChat *)self updateProperties:v22];
        v28 = [(IMDChat *)self broadcaster];
        v29 = [(IMDChat *)self guid];
        v30 = [(IMDChat *)self properties];
        [v28 chat:v29 propertiesUpdated:v30];

        v31 = IMDChatLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v31, OS_LOG_TYPE_DEFAULT, "Updated Chat Properties for BIA", buf, 2u);
        }
      }
    }

    else
    {
      v13 = IMDChatLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEFAULT, "BIA userID not provided. Early return.", buf, 2u);
      }
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (id)BIAContext
{
  v3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v4 = [v3 isBIAEnabled];

  if (v4)
  {
    v5 = [(IMDChat *)self properties];
    v6 = [v5 objectForKey:@"AMB-BIAContext"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)deleteBIAContext
{
  v15[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v4 = [v3 isBIAEnabled];

  if (v4)
  {
    v14[0] = @"AMB-BIAContext";
    v5 = [MEMORY[0x277CBEB68] null];
    v14[1] = @"AMB-BIALastUsedReferenceID";
    v15[0] = v5;
    v6 = [MEMORY[0x277CBEB68] null];
    v15[1] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
    v8 = [(IMDChat *)self updateProperties:v7];

    v9 = [(IMDChat *)self broadcaster];
    v10 = [(IMDChat *)self guid];
    v11 = [(IMDChat *)self properties];
    [v9 chat:v10 propertiesUpdated:v11];
  }

  else
  {
    v8 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)lastUsedBIAUserID
{
  v3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v4 = [v3 isBIAEnabled];

  if (v4)
  {
    v5 = [(IMDChat *)self properties];
    v6 = [v5 objectForKey:@"AMB-BIAContext"];
    v7 = [v6 lastObject];

    v8 = [v7 valueForKey:@"userId"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)lastUsedBIAReferenceID
{
  v3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v4 = [v3 isBIAEnabled];

  if (v4)
  {
    v5 = [(IMDChat *)self properties];
    v6 = [v5 objectForKey:@"AMB-BIALastUsedReferenceID"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)containsActiveBIASession
{
  v3 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v4 = [v3 isBIAEnabled];

  if (!v4)
  {
    return 0;
  }

  v5 = [(IMDChat *)self lastUsedBIAUserID];
  v6 = [v5 length] != 0;

  return v6;
}

- (NSDictionary)keyTransparencyURIToUUIDMapping
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [(IMDChat *)self properties];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277D19868]];

  v4 = [MEMORY[0x277CBEB38] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v3 allKeys];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v3 objectForKeyedSubscript:v10];
        v12 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v11];
        [v4 setObject:v12 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)tearDownToneNotificationSessionIfNeeded
{
  v3 = [MEMORY[0x277D1AA78] sharedInstance];
  [v3 tearDownSessionForChatIdentifier:self->_chatIdentifier];
}

- (void)updateNicknamesForParticipants:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v6)
  {
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = +[IMDNicknameController sharedInstance];
        v11 = [v9 ID];
        v12 = [v10 nicknameForHandleURI:v11];

        if (v12)
        {
          if (IMOSLoggingEnabled())
          {
            v13 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v25 = v12;
              _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_DEBUG, "Loaded message profile: %@", buf, 0xCu);
            }
          }

          v14 = [v12 dictionaryRepresentation];
          v15 = [v9 ID];
          [v4 setObject:v14 forKey:v15];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v6);
  }

  [(NSRecursiveLock *)self->_lock lock];
  if ([v4 count])
  {
    [(NSMutableDictionary *)self->_chatInfo setObject:v4 forKey:*MEMORY[0x277D198E8]];
    objc_storeStrong(&self->_nicknamesForParticipants, v4);
  }

  [(NSRecursiveLock *)self->_lock unlock];
  v16 = [(IMDChat *)self broadcaster];
  v17 = [(IMDChat *)self guid];
  [v16 chat:v17 nicknamesUpdated:v4];

  v18 = *MEMORY[0x277D85DE8];
}

- (void)meCardHasUpdated
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_DEBUG, "The meCard has been edited", v4, 2u);
    }
  }

  [(IMDChat *)self setMeCardUpdated:1];
}

- (void)setRepairHistory:(unint64_t)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277D19918];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [(IMDChat *)self updateProperties:v5];

  v6 = *MEMORY[0x277D85DE8];
}

- (NSDictionary)domainIdentifiers
{
  [(NSRecursiveLock *)self->_lock lock];
  v3 = [(NSMutableDictionary *)self->_domainIdentifiers copy];
  [(NSRecursiveLock *)self->_lock unlock];

  return v3;
}

- (void)setDomainIdentifiers:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v16 = v4;
    [(NSRecursiveLock *)self->_lock lock];
    if (self->_domainIdentifiers == v16)
    {
      [(NSRecursiveLock *)self->_lock unlock];
    }

    else
    {
      v5 = [(NSMutableDictionary *)v16 mutableCopy];
      domainIdentifiers = self->_domainIdentifiers;
      self->_domainIdentifiers = v5;

      v7 = self->_domainIdentifiers;
      if (v7)
      {
        [(NSMutableDictionary *)self->_chatInfo setObject:v7 forKey:*MEMORY[0x277D197E0]];
      }

      [(NSRecursiveLock *)self->_lock unlock];
      v8 = [(NSMutableDictionary *)self->_domainIdentifiers objectForKeyedSubscript:*MEMORY[0x277D19780]];
      v9 = [v8 firstObject];

      if (v9)
      {
        v10 = *MEMORY[0x277D19808];
        v11 = [(NSMutableDictionary *)self->_chatInfo objectForKey:*MEMORY[0x277D19808]];
        v12 = [v9 isEqualToString:v11];

        if ((v12 & 1) == 0)
        {
          [(NSMutableDictionary *)self->_chatInfo setObject:v9 forKey:v10];
        }
      }

      v13 = [(IMDChat *)self broadcaster];
      v14 = [(IMDChat *)self guid];
      v15 = [(IMDChat *)self dictionaryRepresentation];
      [v13 chat:v14 updated:v15];
    }

    v4 = v16;
  }
}

- (void)unassignAndPersistIdentifier:(id)a3 forDomain:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 length];
    if (v7)
    {
      if (v8 && [v7 length])
      {
        v30 = 0;
        v31 = &v30;
        v32 = 0x2020000000;
        v33 = 0;
        [(NSRecursiveLock *)self->_lock lock];
        v9 = [(NSMutableDictionary *)self->_domainIdentifiers objectForKeyedSubscript:v7];
        v10 = [v9 mutableCopy];

        if (v10)
        {
          [v10 removeObject:v6];
          [(NSMutableDictionary *)self->_domainIdentifiers setObject:v10 forKeyedSubscript:v7];
          domainIdentifiers = self->_domainIdentifiers;
          if (domainIdentifiers)
          {
            [(NSMutableDictionary *)self->_chatInfo setObject:domainIdentifiers forKey:*MEMORY[0x277D197E0]];
          }

          [(NSRecursiveLock *)self->_lock unlock];
          v12 = [MEMORY[0x277D18EB0] synchronousDatabase];
          v13 = [(IMDChat *)self guid];
          v22 = MEMORY[0x277D85DD0];
          v23 = 3221225472;
          v24 = sub_22B5FCC80;
          v25 = &unk_2787061E0;
          v26 = v6;
          v27 = self;
          v28 = v7;
          v29 = &v30;
          [v12 unassignIdentifier:v26 fromChatRecordWithGUID:v13 forDomain:v28 completionHandler:&v22];

          if (*(v31 + 24) == 1)
          {
            v14 = [(NSMutableDictionary *)self->_domainIdentifiers objectForKeyedSubscript:*MEMORY[0x277D19780], v22, v23, v24, v25];
            v15 = [v14 firstObject];

            if (v15)
            {
              v16 = *MEMORY[0x277D19808];
              v17 = [(NSMutableDictionary *)self->_chatInfo objectForKey:*MEMORY[0x277D19808]];
              v18 = [v15 isEqualToString:v17];

              if ((v18 & 1) == 0)
              {
                [(NSMutableDictionary *)self->_chatInfo setObject:v15 forKey:v16];
              }
            }

            v19 = [(IMDChat *)self broadcaster];
            v20 = [(IMDChat *)self guid];
            v21 = [(IMDChat *)self dictionaryRepresentation];
            [v19 chat:v20 updated:v21];
          }
        }

        _Block_object_dispose(&v30, 8);
      }
    }
  }
}

- (void)assignUniqueHistoricalDomainIdentifiers:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    [(NSRecursiveLock *)self->_lock lock];
    v5 = [v4 __im_setDifferenceBetweenSelfAndObject:self->_domainIdentifiers];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_22B5FCF74;
    v10[3] = &unk_278706208;
    v10[4] = self;
    v10[5] = &v11;
    [v5 enumerateKeysAndObjectsUsingBlock:v10];
    if (self->_domainIdentifiers && *(v12 + 24) == 1)
    {
      v6 = *MEMORY[0x277D197E0];
      [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];
    }

    [(NSRecursiveLock *)self->_lock unlock];
    if (*(v12 + 24) == 1)
    {
      v7 = [(IMDChat *)self broadcaster];
      v8 = [(IMDChat *)self guid];
      v9 = [(IMDChat *)self dictionaryRepresentation];
      [v7 chat:v8 updated:v9];
    }

    _Block_object_dispose(&v11, 8);
  }
}

- (void)assignIdentifier:(id)a3 forDomain:(id)a4 isHistoricalIdentifier:(BOOL)a5
{
  v5 = a5;
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = [v8 length];
    if (v9)
    {
      if (v10 && [v9 length])
      {
        [(NSRecursiveLock *)self->_lock lock];
        v11 = [(NSMutableDictionary *)self->_domainIdentifiers objectForKeyedSubscript:v9];
        v12 = v11;
        if (v11)
        {
          v13 = [v11 indexOfObject:v8];
          if (v5)
          {
            if (v13 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v14 = [v12 arrayByAddingObject:v8];
              [(NSMutableDictionary *)self->_domainIdentifiers setObject:v14 forKeyedSubscript:v9];

LABEL_19:
              domainIdentifiers = self->_domainIdentifiers;
              if (domainIdentifiers)
              {
                v24 = [(NSMutableDictionary *)domainIdentifiers objectForKeyedSubscript:*MEMORY[0x277D19780]];
                v25 = [v24 firstObject];

                if (v25)
                {
                  v26 = *MEMORY[0x277D19808];
                  v27 = [(NSMutableDictionary *)self->_chatInfo objectForKey:*MEMORY[0x277D19808]];
                  v28 = [v25 isEqualToString:v27];

                  if ((v28 & 1) == 0)
                  {
                    [(NSMutableDictionary *)self->_chatInfo setObject:v25 forKey:v26];
                  }
                }

                [(NSMutableDictionary *)self->_chatInfo setObject:self->_domainIdentifiers forKey:*MEMORY[0x277D197E0]];
              }

              [(NSRecursiveLock *)self->_lock unlock];
              v29 = [(IMDChat *)self broadcaster];
              v30 = [(IMDChat *)self guid];
              v31 = [(IMDChat *)self dictionaryRepresentation];
              [v29 chat:v30 updated:v31];

              goto LABEL_25;
            }
          }

          else if (v13)
          {
            if (v13 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v34 = v8;
              v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
              v17 = [v16 arrayByAddingObjectsFromArray:v12];
              [(NSMutableDictionary *)self->_domainIdentifiers setObject:v17 forKeyedSubscript:v9];
            }

            else
            {
              if (IMOSLoggingEnabled())
              {
                v18 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412546;
                  v38 = v9;
                  v39 = 2112;
                  v40 = v8;
                  _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_DEBUG, "Warning! Setting latest identifier in domain %@ to an existing historical identifier %@.", buf, 0x16u);
                }
              }

              [(IMDChat *)self _submitAndOpenTapToRadarForHistoricalIdentifierReuseForIdentifier:v8 domain:v9];
              v36 = v8;
              v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
              v20 = [v12 arrayByExcludingObjectsInArray:v19];

              v35 = v8;
              v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
              v22 = [v21 arrayByAddingObjectsFromArray:v20];
              [(NSMutableDictionary *)self->_domainIdentifiers setObject:v22 forKeyedSubscript:v9];
            }

            goto LABEL_19;
          }
        }

        else
        {
          v33 = v8;
          v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
          [(NSMutableDictionary *)self->_domainIdentifiers setObject:v15 forKeyedSubscript:v9];
        }

        [(NSRecursiveLock *)self->_lock unlock];
LABEL_25:
      }
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (id)identifiersForDomain:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    [(NSRecursiveLock *)self->_lock lock];
    v6 = [(NSMutableDictionary *)self->_domainIdentifiers objectForKeyedSubscript:v5];
    v7 = [v6 copy];

    [(NSRecursiveLock *)self->_lock unlock];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)latestIdentifierForDomain:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    [(NSRecursiveLock *)self->_lock lock];
    v6 = [(NSMutableDictionary *)self->_domainIdentifiers objectForKeyedSubscript:v5];
    v7 = [v6 firstObject];
    v8 = [v7 copy];

    [(NSRecursiveLock *)self->_lock unlock];
    if (!v8 && self->_style == 43)
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = [(IMDChat *)self guid];
          v11 = [(IMDChat *)self account];
          v12 = [v11 service];
          v13 = [v12 internalName];
          v16 = 138412802;
          v17 = v5;
          v18 = 2112;
          v19 = v10;
          v20 = 2112;
          v21 = v13;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_DEBUG, "Missing latest identifier for domain %@ on chat with guid %@. The current service is %@", &v16, 0x20u);
        }
      }

      [(IMDChat *)self _submitAndOpenTapToRadarForMissingLatestIdentifierForDomain:v5];
    }
  }

  else
  {
    v8 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)_submitAndOpenTapToRadarForHistoricalIdentifierReuseForIdentifier:(id)a3 domain:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277D19268] sharedInstance];
  if ([v7 isInternalInstall])
  {
    v8 = [MEMORY[0x277D1A990] sharedInstance];
    v9 = [v8 getBoolFromDomain:@"com.apple.MobileSMS" forKey:@"ChatLookupTapToRadarsEnabled"];

    if (!v9)
    {
      goto LABEL_5;
    }

    v10 = MEMORY[0x277CCACA8];
    v11 = [(IMDChat *)self guid];
    v7 = [v10 stringWithFormat:@"A historical identifier %@ was promoted to the latest identifier in domain %@ for chat %@.", v12, v6, v11];

    [MEMORY[0x277D1AC88] submitAndOpenTapToRadarWithNotificationIdentifier:@"com.apple.MobileSMS.ChatLookupAlert" notificationTitle:@"[Internal] Reused Historical Identifier" notificationBody:@"Please file a radar. This is a serious issue that needs to be identified and addressed." draftTitle:@"[ChatLookup] Reused Historical Identifier" problemDescription:v7 attachments:MEMORY[0x277CBEBF8] deviceClasses:&unk_283F4EEB8 classification:@"Serious Bug" reproducibility:@"I Didn't Try"];
  }

LABEL_5:
}

- (void)_submitAndOpenTapToRadarForMissingLatestIdentifierForDomain:(id)a3
{
  v12 = a3;
  v4 = [MEMORY[0x277D19268] sharedInstance];
  if ([v4 isInternalInstall])
  {
    v5 = [MEMORY[0x277D1A990] sharedInstance];
    v6 = [v5 getBoolFromDomain:@"com.apple.MobileSMS" forKey:@"ChatLookupTapToRadarsEnabled"];

    if (!v6)
    {
      goto LABEL_5;
    }

    v7 = MEMORY[0x277CCACA8];
    v8 = [(IMDChat *)self guid];
    v9 = [(IMDChat *)self account];
    v10 = [v9 service];
    v11 = [v10 internalName];
    v4 = [v7 stringWithFormat:@"An identifier was requested for domain %@ on chat with guid %@. The current service is %@", v12, v8, v11];

    [MEMORY[0x277D1AC88] submitAndOpenTapToRadarWithNotificationIdentifier:@"com.apple.MobileSMS.ChatLookupAlert" notificationTitle:@"[Internal] Missing Latest Identifier For Domain" notificationBody:@"Please file a radar. This is a serious issue that needs to be identified and addressed." draftTitle:@"[ChatLookup] Missing Latest Identifier For Domain" problemDescription:v4 attachments:MEMORY[0x277CBEBF8] deviceClasses:&unk_283F4EED0 classification:@"Serious Bug" reproducibility:@"I Didn't Try"];
  }

LABEL_5:
}

- (void)_submitAndOpenTapToRadarForInvalidUseOfGroupIDOnService:(id)a3
{
  v6 = a3;
  v3 = [MEMORY[0x277D19268] sharedInstance];
  if ([v3 isInternalInstall])
  {
    v4 = [MEMORY[0x277D1A990] sharedInstance];
    v5 = [v4 getBoolFromDomain:@"com.apple.MobileSMS" forKey:@"ChatLookupTapToRadarsEnabled"];

    if (!v5)
    {
      goto LABEL_5;
    }

    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"A critical database migration step failed.\n\nEvent: Invalid Use of GroupID\n\nDescription: Updated groupID/originalGroupID on service %@", v6];
    [MEMORY[0x277D1AC88] submitAndOpenTapToRadarWithNotificationIdentifier:@"com.apple.MobileSMS.ChatLookupAlert" notificationTitle:@"[Internal] Invalid Use of GroupID" notificationBody:@"Please file a radar. This is a serious issue that needs to be identified and addressed." draftTitle:@"[ChatLookup] Invalid Use of GroupID" problemDescription:v3 attachments:MEMORY[0x277CBEBF8] deviceClasses:&unk_283F4EEE8 classification:@"Serious Bug" reproducibility:@"I Didn't Try"];
  }

LABEL_5:
}

- (void)_submitAndOpenTapToRadarForInvalidFeatureFlagConfiguration
{
  v2 = [MEMORY[0x277D19268] sharedInstance];
  v3 = [v2 isInternalInstall];

  if (v3)
  {
    v4 = [MEMORY[0x277D1A990] sharedInstance];
    v9 = [v4 getValueFromDomain:@"com.apple.MobileSMS" forKey:@"InvalidFeatureFlagConfigurationVersion"];

    v5 = v9;
    if (v9)
    {
      v6 = [v9 intValue] <= 0;
      v5 = v9;
      if (v6)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown issues may occur. This is an undefined state."];
        [MEMORY[0x277D1AC88] submitAndOpenTapToRadarWithNotificationIdentifier:@"com.apple.MobileSMS.InvalidFeatureFlagConfiguration" notificationTitle:@"[Internal] Invalid Feature Flag Configuration" notificationBody:@"Please file a radar. This is a serious issue that needs to be identified and addressed." draftTitle:@"[Messages25] Invalid Feature Flag Configuration" problemDescription:v7 attachments:MEMORY[0x277CBEBF8] deviceClasses:&unk_283F4EF00 classification:@"Serious Bug" reproducibility:@"I Didn't Try"];
        v8 = [MEMORY[0x277D1A990] sharedInstance];
        [v8 setValue:&unk_283F4EA08 forDomain:@"com.apple.MobileSMS" forKey:@"InvalidFeatureFlagConfigurationVersion"];

        v5 = v9;
      }
    }
  }
}

- (void)forceAutoBugCaptureForMissingGroupIDWithMessage:(id)a3
{
  v4 = MEMORY[0x277CCAB68];
  v5 = a3;
  v8 = [[v4 alloc] initWithString:v5];

  if ([(NSString *)self->_groupID length])
  {
    [v8 appendString:self->_groupID];
  }

  v6 = [MEMORY[0x277D1AAA8] sharedInstance];
  v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.imagent" code:0 userInfo:0];
  [v6 forceAutoBugCaptureWithSubType:@"MissingGroupID" errorPayload:v7 type:@"ChatRequestHandler" context:v8];
}

- (void)shouldSatelliteRelayIncomingSMSMessagesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v6 = [v5 isSatelliteRelayEnabled];

  if (v6 && -[IMDChat style](self, "style") == 45 && (-[IMDChat participants](self, "participants"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, v8 == 1))
  {
    v9 = [(IMDChat *)self participants];
    v10 = [v9 firstObject];
    v11 = [v10 ID];

    if (v11)
    {
      v12 = [MEMORY[0x277D1A9F8] sharedInstance];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_22B61C8E8;
      v13[3] = &unk_2787066C8;
      v16 = v4;
      v14 = v11;
      v15 = self;
      [v12 personalOffGridModeWithCompletion:v13];
    }

    else
    {
      (*(v4 + 2))(v4, 0);
    }
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

- (void)updateCollaborationMetadata:(id)a3 forMessageGUID:(id)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D18EE0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 spotlightQueryProvider];
  v11[0] = v6;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  [v8 reindexMessagesWithCollaborationMetadata:v9 collaborationMetadata:v7 reason:1003 completionBlock:&unk_283F1A828];
  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)updateDonationStateWithSyndicationAction:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D7F24(self, v9);
    }

    goto LABEL_14;
  }

  if ([(__CFString *)v4 isAutoDonatingMessages])
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  v7 = [(__CFString *)v5 syndicationStartDate];
  v8 = [(IMDChat *)self setAutoDonationBehavior:v6 lastModificationDate:v7];

  v9 = IMLogHandleForCategory();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (!v8)
  {
    if (v10)
    {
      v15 = [(IMDChat *)self guid];
      v18 = 138412546;
      v19 = v15;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Chat %@ not updated with incoming SyndicationAction: %@", &v18, 0x16u);
    }

LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  if (v10)
  {
    v11 = [(IMDChat *)self guid];
    v12 = [(__CFString *)v5 isAutoDonatingMessages];
    v13 = @"NO";
    v18 = 138412802;
    v19 = v11;
    v20 = 2112;
    if (v12)
    {
      v13 = @"YES";
    }

    v21 = v13;
    v22 = 2112;
    v23 = v5;
    v14 = 1;
    _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Updated chat with GUID: %@ donation setting to %@ with SyndicationAction: %@", &v18, 0x20u);
  }

  else
  {
    v14 = 1;
  }

LABEL_15:

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)_copyCKRecordFromExistingCKMetadataWithZoneID:(id)a3 salt:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IMDChat *)self serverChangeToken];
  v9 = [(IMDChat *)self cloudKitRecordID];
  v10 = [(IMDChat *)self guid];
  v11 = [CKRecordUtilities recordNameForRecordChangeTag:v8 ckRecordID:v9 salt:v7 guid:v10];

  if ([v11 length])
  {
    v12 = objc_alloc(MEMORY[0x277CBC5A0]);
    v13 = +[IMDChat _recordType];
    v14 = [CKRecordUtilities recordIDUsingName:v11 zoneID:v6];
    v15 = [v12 initWithRecordType:v13 recordID:v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)_addGroupPhotoToCKRecord:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = +[IMDFileTransferCenter sharedInstance];
  v8 = [(IMDChat *)self groupPhotoGuid];
  v9 = [v7 transferForGUID:v8];

  if (!v9 || ([v9 localURL], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMCloudKitChatSyncErrorDomain" code:1 userInfo:0];
    }

    if (!IMOSLoggingEnabled())
    {
      goto LABEL_19;
    }

    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = [(IMDChat *)self groupPhotoGuid];
      *buf = 138412290;
      v30 = v20;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Transfer not found for group photo guid %@", buf, 0xCu);
    }

    goto LABEL_18;
  }

  if (([v9 isFinished] & 1) == 0)
  {
    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMCloudKitChatSyncErrorDomain" code:2 userInfo:0];
    }

    if (!IMOSLoggingEnabled())
    {
      goto LABEL_19;
    }

    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v21 = [(IMDChat *)self groupPhotoGuid];
      *buf = 138412290;
      v30 = v21;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Transfer not finished for group photo guid %@", buf, 0xCu);
    }

LABEL_18:

LABEL_19:
    v17 = 0;
    goto LABEL_20;
  }

  v11 = [v9 localURL];
  v28 = 0;
  v12 = [v11 checkResourceIsReachableAndReturnError:&v28];
  v13 = v28;

  if (v12)
  {
    v14 = objc_alloc(MEMORY[0x277CBC190]);
    v15 = [v9 localURL];
    v16 = [v14 initWithFileURL:v15];

    v17 = v16 != 0;
    if (v16)
    {
      [v6 _setCKRecordAsset:v16 forKey:@"gp"];
      v18 = [(IMDChat *)self groupPhotoGuid];
      [v6 _setCKRecordString:v18 forKey:@"gpid"];
    }

    else
    {
      if (a4)
      {
        *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMCloudKitChatSyncErrorDomain" code:4 userInfo:0];
      }

      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          v27 = [v9 localURL];
          *buf = 138412290;
          v30 = v27;
          _os_log_impl(&dword_22B4CC000, v26, OS_LOG_TYPE_INFO, "ckAsset not able to initialize from transfer file URL: %@", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    if (a4)
    {
      *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMCloudKitChatSyncErrorDomain" code:3 userInfo:0];
    }

    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = [v9 localURL];
        *buf = 138412546;
        v30 = v25;
        v31 = 2112;
        v32 = v13;
        _os_log_impl(&dword_22B4CC000, v24, OS_LOG_TYPE_INFO, "Resource not reachable for %@ with error %@", buf, 0x16u);
      }
    }

    v17 = 0;
  }

LABEL_20:
  v22 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)_addTranscriptBackgroundToCKRecord:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v8 = [v7 isTranscriptBackgroundsMicEnabled];

  if (v8)
  {
    v9 = [(IMDChat *)self transcriptBackgroundPath];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v9];
      v22 = 0;
      v11 = [(IMDChat *)v10 checkResourceIsReachableAndReturnError:&v22];
      v12 = v22;
      if (v11)
      {
        v13 = [objc_alloc(MEMORY[0x277CBC190]) initWithFileURL:v10];
        v14 = v13 != 0;
        if (v13)
        {
          if (IMOSLoggingEnabled())
          {
            v15 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v24 = v13;
              v25 = 2112;
              v26 = v6;
              _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Setting background asset on record. Asset: %@. Record: %@", buf, 0x16u);
            }
          }

          [v6 _setCKRecordAsset:v13 forKey:@"traba"];
        }

        else
        {
          if (a4)
          {
            *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMCloudKitChatSyncErrorDomain" code:7 userInfo:0];
          }

          if (IMOSLoggingEnabled())
          {
            v19 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v24 = v10;
              _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "ckAsset not able to initialize from background file URL: %@", buf, 0xCu);
            }
          }
        }
      }

      else
      {
        if (a4)
        {
          *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMCloudKitChatSyncErrorDomain" code:6 userInfo:0];
        }

        if (IMOSLoggingEnabled())
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v24 = v9;
            v25 = 2112;
            v26 = v12;
            _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Resource not reachable for %@ with error %@", buf, 0x16u);
          }
        }

        v14 = 0;
      }
    }

    else
    {
      if (a4)
      {
        *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IMCloudKitChatSyncErrorDomain" code:5 userInfo:0];
      }

      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v24 = self;
          _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "No background for chat: %@", buf, 0xCu);
        }
      }

      v14 = 0;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Bailing out of adding background to record, feature flag is off.", buf, 2u);
      }
    }

    v14 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)_applyTranscriptBackgroundChangesUsingSyncData:(id)a3
{
  v76[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v6 = [v5 isTranscriptBackgroundsMicEnabled];

  if (v6)
  {
    v7 = [v4 assetURLForKey:@"traba"];
    if (v7)
    {
      v8 = [MEMORY[0x277CCAA00] defaultManager];
      v9 = [v7 path];
      v10 = [v8 fileExistsAtPath:v9];
    }

    else
    {
      v10 = 0;
    }

    v12 = [(IMDChat *)self transcriptBackgroundPath];

    if (v12)
    {
      v13 = MEMORY[0x277CBEBC0];
      v14 = [(IMDChat *)self transcriptBackgroundPath];
      v56 = [v13 fileURLWithPath:v14];
    }

    else
    {
      v56 = 0;
    }

    v57 = [(IMDChat *)self transcriptBackgroundProperties];
    v15 = [v4 dictForKey:@"prop"];
    v60 = [v15 _dictionaryForKey:@"backgroundProperties"];

    v16 = *MEMORY[0x277D1A7F0];
    v58 = [v57 _numberForKey:*MEMORY[0x277D1A7F0]];
    v59 = [v60 _numberForKey:v16];
    v17 = [v59 unsignedLongLongValue];
    v18 = [v58 unsignedLongLongValue];
    v11 = (v17 > v18) & v10;
    if (v11)
    {
      v75 = *MEMORY[0x277D19970];
      v76[0] = v60;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:&v75 count:1];
      [(IMDChat *)self updateProperties:v19];

      v20 = [(IMDChat *)self transcriptBackgroundPath];
      if ([v20 length])
      {
        v21 = [v20 stringByDeletingLastPathComponent];
        IMSharedHelperEnsureDirectoryExistsAtPath();

        v22 = [MEMORY[0x277CCAA00] defaultManager];
        v23 = [MEMORY[0x277CBEBC0] fileURLWithPath:v20];
        v64 = 0;
        LOBYTE(v21) = [v22 moveItemAtURL:v7 toURL:v23 error:&v64];
        v55 = v64;

        if (v21)
        {
          v24 = [MEMORY[0x277CCAA00] defaultManager];
          v67 = *MEMORY[0x277CCA1B0];
          v68 = *MEMORY[0x277CCA1A0];
          v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
          v63 = 0;
          v26 = [v24 setAttributes:v25 ofItemAtPath:v20 error:&v63];
          v54 = v63;

          if (v26)
          {
            v27 = [MEMORY[0x277CCAA00] defaultManager];
            v62 = 0;
            v28 = [v27 removeItemAtURL:v56 error:&v62];
            v29 = v62;

            if ((v28 & 1) == 0 && IMOSLoggingEnabled())
            {
              v30 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
              {
                v53 = [v56 path];
                v31 = [v29 localizedDescription];
                *buf = 138412546;
                v70 = v53;
                v71 = 2112;
                v72 = v31;
                _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Failed to remove old transcript background asset at: %@. Error: %@", buf, 0x16u);
              }
            }

            if (IMOSLoggingEnabled())
            {
              v32 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v70 = v20;
                _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "Transcript background stored at %@", buf, 0xCu);
              }
            }
          }

          else if (IMOSLoggingEnabled())
          {
            v34 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v70 = v20;
              v71 = 2112;
              v72 = v54;
              _os_log_impl(&dword_22B4CC000, v34, OS_LOG_TYPE_INFO, "Failed making transcript background file class C: %@ with error %@", buf, 0x16u);
            }
          }
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v33 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              *buf = 138412802;
              v70 = v7;
              v71 = 2112;
              v72 = v20;
              v73 = 2112;
              v74 = v55;
              _os_log_impl(&dword_22B4CC000, v33, OS_LOG_TYPE_INFO, "Failed to move transcript background file from %@ to %@, error %@", buf, 0x20u);
            }
          }

          [MEMORY[0x277D1A9C0] cleanUpAssetURL:v7];
        }
      }
    }

    if (!v7 && v17 > v18 && ([v60 _numberForKey:*MEMORY[0x277D1A7E8]], v35 = objc_claimAutoreleasedReturnValue(), v36 = v35 == 0, v35, v36))
    {
      if (IMOSLoggingEnabled())
      {
        v40 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v40, OS_LOG_TYPE_INFO, "Incoming version is newer, but there is no transfer ID or asset. Incoming background is nil. Removing current asset.", buf, 2u);
        }
      }

      v65 = *MEMORY[0x277D19970];
      v66 = v60;
      v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
      [(IMDChat *)self updateProperties:v41];

      v42 = [MEMORY[0x277CCAA00] defaultManager];
      v61 = 0;
      v43 = [v42 removeItemAtURL:v56 error:&v61];
      v44 = v61;

      if ((v43 & 1) == 0 && IMOSLoggingEnabled())
      {
        v45 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v46 = [v56 path];
          v47 = [v44 localizedDescription];
          *buf = 138412546;
          v70 = v46;
          v71 = 2112;
          v72 = v47;
          _os_log_impl(&dword_22B4CC000, v45, OS_LOG_TYPE_INFO, "Failed to remove current transcript background asset at: %@. Error: %@", buf, 0x16u);
        }
      }

      LOBYTE(v11) = 1;
    }

    else if (IMOSLoggingEnabled())
    {
      v37 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = [v59 unsignedLongLongValue];
        v39 = [v58 unsignedLongLongValue];
        *buf = 134218498;
        v70 = v38;
        v71 = 2048;
        v72 = v39;
        v73 = 2112;
        v74 = v7;
        _os_log_impl(&dword_22B4CC000, v37, OS_LOG_TYPE_INFO, "Incoming background version (%lld) is not as new as the local one (%lld). Don't overwrite local asset. Asset from ckrecord has path %@", buf, 0x20u);
      }
    }

    v48 = [v7 path];
    v49 = [(IMDChat *)self transcriptBackgroundPath];
    v50 = [v48 isEqual:v49];

    if ((v50 & 1) == 0)
    {
      [MEMORY[0x277D1A9C0] cleanUpAssetURL:v7];
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v51 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)copyCKRecordRepresentationWithZoneID:(id)a3 salt:(id)a4 error:(id *)a5
{
  v61[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(IMDChat *)self _copyCKRecordFromExistingCKMetadataWithZoneID:v8 salt:v9];
  if (v10)
  {
LABEL_4:
    v15 = [(IMDChat *)self chatIdentifier];
    [v10 _setCKRecordString:v15 forKey:@"cid"];

    v16 = [(IMDChat *)self guid];
    [v10 _setCKRecordString:v16 forKey:@"guid"];

    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[IMDChat style](self, "style")}];
    [v10 _setCKRecordNumber:v17 forKey:@"stl"];

    v18 = [(IMDChat *)self serviceName];
    [v10 _setCKRecordString:v18 forKey:@"svc"];

    v19 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IMDChat state](self, "state")}];
    [v10 _setCKRecordNumber:v19 forKey:@"ste"];

    v20 = [(IMDChat *)self groupID];
    [v10 _setCKRecordString:v20 forKey:@"gid"];

    v21 = [(IMDChat *)self originalGroupID];
    [v10 _setCKRecordString:v21 forKey:@"ogid"];

    v22 = [(IMDChat *)self displayName];
    [v10 _setCKRecordString:v22 forKey:@"name"];

    v23 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[IMDChat isFiltered](self, "isFiltered")}];
    [v10 _setCKRecordNumber:v23 forKey:@"filt"];

    v24 = [(IMDChat *)self lastAddressedLocalHandle];
    [v10 _setCKRecordString:v24 forKey:@"lah"];

    v25 = [MEMORY[0x277CCABB0] numberWithBool:{-[IMDChat hasHadSuccessfulQuery](self, "hasHadSuccessfulQuery")}];
    [v10 _setCKRecordNumber:v25 forKey:@"sqry"];

    v26 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[IMDChat lastReadMessageTimeStamp](self, "lastReadMessageTimeStamp")}];
    [v10 _setCKRecordNumber:v26 forKey:@"rwm"];

    v27 = [(IMDChat *)self participants];
    v28 = [v27 __imArrayByApplyingBlock:&unk_283F1B308];

    [v10 _setCKRecordArray:v28 forKey:@"ptcpts"];
    v29 = [(IMDChat *)self groupPhotoGuid];
    IsEmpty = IMStringIsEmpty();

    if ((IsEmpty & 1) != 0 || [(IMDChat *)self _addGroupPhotoToCKRecord:v10 error:a5])
    {
      v31 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
      v32 = [v31 isTranscriptBackgroundsMicEnabled];

      if (!v32 || ([(IMDChat *)self transcriptBackgroundPath], v33 = objc_claimAutoreleasedReturnValue(), v34 = IMStringIsEmpty(), v33, (v34 & 1) != 0) || [(IMDChat *)self _addTranscriptBackgroundToCKRecord:v10 error:a5])
      {
        v35 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
        v36 = [v35 isMissingMessagesEnabled];

        if (v36 && [(IMDChat *)self style]== 43)
        {
          v37 = [(IMDChat *)self domainIdentifiers];
          v38 = JWEncodeDictionary();

          if (!v38)
          {
            if (IMOSLoggingEnabled())
            {
              v55 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
              {
                LOWORD(v56) = 0;
                _os_log_impl(&dword_22B4CC000, v55, OS_LOG_TYPE_INFO, "Failed to encode domain identifiers. Not adding to record.", &v56, 2u);
              }
            }

            [MEMORY[0x277CCA9B8] errorWithDomain:@"IMCloudKitChatSyncErrorDomain" code:8 userInfo:0];
            *a5 = v51 = 0;
            goto LABEL_32;
          }

          [v10 _setCKRecordData:v38 forKey:@"dids"];
        }

        v39 = [(IMDChat *)self properties];
        v40 = JWEncodeDictionary();
        [v10 _setCKRecordData:v40 forKey:@"prop"];

        v41 = [(IMDChat *)self autoDonationBehaviorLastModificationDate];

        if (v41)
        {
          v60[0] = @"st";
          v42 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IMDChat autoDonationBehavior](self, "autoDonationBehavior")}];
          v60[1] = @"sd";
          v61[0] = v42;
          v43 = MEMORY[0x277CCABB0];
          v44 = [(IMDChat *)self autoDonationBehaviorLastModificationDate];
          v45 = [v43 numberWithLongLong:{objc_msgSend(v44, "__im_nanosecondTimeInterval")}];
          v61[1] = v45;
          v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:2];
        }

        else
        {
          v58 = @"st";
          v42 = [MEMORY[0x277CCABB0] numberWithInteger:{-[IMDChat autoDonationBehavior](self, "autoDonationBehavior")}];
          v59 = v42;
          v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
        }

        v48 = IMDChatLogHandle();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v56 = 138412290;
          v57 = v46;
          _os_log_impl(&dword_22B4CC000, v48, OS_LOG_TYPE_DEFAULT, "Syncing new syndication attributes up %@", &v56, 0xCu);
        }

        v49 = JWEncodeDictionary();
        [v10 _setCKRecordData:v49 forKey:@"prop001"];

        v50 = [(IMDChat *)self compressedProtobufDataForChatProto1];
        [v10 _setCKRecordData:v50 forKey:@"proto001"];

        v51 = v10;
LABEL_32:

        goto LABEL_33;
      }

      if (IMOSLoggingEnabled())
      {
        v47 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
        {
          LOWORD(v56) = 0;
          _os_log_impl(&dword_22B4CC000, v47, OS_LOG_TYPE_INFO, "Couldn't add transcript background to CKRecord. Returning nil.", &v56, 2u);
        }

LABEL_30:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v47 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        LOWORD(v56) = 0;
        _os_log_impl(&dword_22B4CC000, v47, OS_LOG_TYPE_INFO, "Couldn't add group photo to CKRecord. Returning nil.", &v56, 2u);
      }

      goto LABEL_30;
    }

    v51 = 0;
    goto LABEL_32;
  }

  if ([v9 length])
  {
    v11 = [(IMDChat *)self guid];
    v12 = [CKRecordUtilities recordIDUsingSalt:v9 zoneID:v8 guid:v11];

    v13 = objc_alloc(MEMORY[0x277CBC5A0]);
    v14 = +[IMDChat _recordType];
    v10 = [v13 initWithRecordType:v14 recordID:v12];

    goto LABEL_4;
  }

  v52 = IMDChatLogHandle();
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v56) = 0;
    _os_log_impl(&dword_22B4CC000, v52, OS_LOG_TYPE_DEFAULT, "*********Cannot create record without a salt", &v56, 2u);
  }

  if (a5)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:@"IMCloudKitChatSyncErrorDomain" code:0 userInfo:0];
    *a5 = v51 = 0;
  }

  else
  {
    v51 = 0;
  }

LABEL_33:

  v53 = *MEMORY[0x277D85DE8];
  return v51;
}

+ (IMDChat)chatWithSyncData:(id)a3
{
  v137 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [(__CFString *)v3 sourceRecordType];
    v6 = +[IMDChat _recordType];
    v7 = [v5 isEqualToString:v6];

    if (v7)
    {
      v115 = [(__CFString *)v4 stringForKey:@"svc"];
      v114 = [(__CFString *)v4 stringForKey:@"guid"];
      v112 = [(__CFString *)v4 stringForKey:@"gid"];
      v118 = [(__CFString *)v4 stringForKey:@"cid"];
      v111 = [(__CFString *)v4 stringForKey:@"ogid"];
      v113 = [(__CFString *)v4 arrayForKey:@"ptcpts"];
      v110 = [v113 __imArrayByApplyingBlock:&unk_283F1B328];
      v120 = [(__CFString *)v4 stringForKey:@"name"];
      v8 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v9 = [v120 stringByTrimmingCharactersInSet:v8];
      v10 = [v9 length];

      if (!v10)
      {

        v120 = 0;
      }

      v109 = [(__CFString *)v4 stringForKey:@"lah"];
      v117 = [(__CFString *)v4 dictForKey:@"prop"];
      v11 = [(__CFString *)v4 numberForKey:@"ste"];
      v103 = [v11 integerValue];

      v12 = [(__CFString *)v4 numberForKey:@"stl"];
      v13 = [v12 integerValue];

      v14 = [(__CFString *)v4 numberForKey:@"filt"];
      v15 = [v14 integerValue];

      v16 = [(__CFString *)v4 numberForKey:@"sqry"];
      v17 = [v16 BOOLValue];

      v18 = [(__CFString *)v4 numberForKey:@"rwm"];
      v19 = [v18 longLongValue];

      v20 = v118;
      if (v13 == 45)
      {
        v20 = 0;
      }

      v108 = v20;
      v119 = [(__CFString *)v4 dictForKey:@"prop001"];
      v21 = IMDChatLogHandle();
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      if (v119)
      {
        if (v22)
        {
          *buf = 138412290;
          v132 = v119;
          _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_DEFAULT, "Server Chat record has props001 %@, pulling isAutoDonating and donationDate", buf, 0xCu);
        }

        v23 = [(__CFString *)v119 objectForKey:@"st"];
        v21 = v23;
        if (v23)
        {
          v24 = [v23 intValue];
        }

        else
        {
          v24 = 0;
        }

        v27 = [(__CFString *)v119 objectForKey:@"sd"];
        v28 = v27;
        if (v27)
        {
          v107 = [MEMORY[0x277CBEAA8] __im_dateWithNanosecondTimeIntervalSinceReferenceDate:{objc_msgSend(v27, "longLongValue")}];
        }

        else
        {
          v107 = 0;
        }
      }

      else
      {
        if (v22)
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_DEFAULT, "Server Chat record had props001 data, but we failed to decode to a dictionary!", buf, 2u);
        }

        v107 = 0;
        v24 = 0;
      }

      v116 = [(__CFString *)v4 dataForKey:@"proto001"];
      if ([v116 length])
      {
        v29 = objc_alloc(MEMORY[0x277D1ABD0]);
        v30 = [v116 _FTOptionallyDecompressData];
        v31 = [v29 initWithData:v30];

        v32 = [v31 isRecovered];
      }

      else
      {
        v32 = 0;
      }

      v33 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
      v34 = [v33 isMissingMessagesEnabled];

      if (v34)
      {
        v106 = [(__CFString *)v4 dictForKey:@"dids"];
      }

      else
      {
        v106 = 0;
      }

      v35 = [IMDChat alloc];
      v36 = [(__CFString *)v4 sourceRecordChangeTag];
      v37 = [(__CFString *)v4 sourceRecordName];
      LOWORD(v101) = v32;
      LOBYTE(v100) = 0;
      LOBYTE(v99) = v17;
      LOBYTE(v98) = v13;
      v26 = [(IMDChat *)v35 initWithAccountID:&stru_283F23018 service:v115 guid:v114 groupID:v112 chatIdentifier:v118 participants:v110 roomName:v108 displayName:v120 lastAddressedLocalHandle:v109 lastAddressedSIMID:0 properties:v117 state:v103 style:v98 isFiltered:v15 hasHadSuccessfulQuery:v99 engramID:0 serverChangeToken:v36 cloudKitSyncState:1 originalGroupID:v111 lastReadMessageTimeStamp:v19 lastMessageTimeStampOnLoad:-1 cloudKitRecordID:v37 isBlackholed:v100 autoDonationBehavior:v24 autoDonationBehaviorLastModificationDate:v107 isRecovered:v101 isDeletingIncomingMessages:v106 domainIdentifiers:?];

      v38 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
      LODWORD(v36) = [v38 isMissingMessagesEnabled];

      if (v36 && [(IMDChat *)v26 style]== 43)
      {
        v39 = +[IMDServiceController sharedController];
        v40 = [v39 serviceWithName:v115];

        v41 = IMChatLookupDomainForServiceName();
        v42 = [(IMDChat *)v26 groupID];
        -[IMDChat assignIdentifier:forDomain:isHistoricalIdentifier:](v26, "assignIdentifier:forDomain:isHistoricalIdentifier:", v42, v41, [v40 groupIDIsHistoricalIdentifier]);

        v43 = [(IMDChat *)v26 originalGroupID];
        -[IMDChat assignIdentifier:forDomain:isHistoricalIdentifier:](v26, "assignIdentifier:forDomain:isHistoricalIdentifier:", v43, v41, [v40 groupIDIsHistoricalIdentifier] ^ 1);
      }

      v44 = [(__CFString *)v4 assetURLForKey:@"gp"];
      v45 = [(__CFString *)v4 stringForKey:@"gpid"];
      v46 = [(IMDChat *)v26 style];
      v47 = [v117 objectForKeyedSubscript:*MEMORY[0x277D19748]];

      if (v44 && [v45 length] && (v46 == 43 || v47 != 0))
      {
        if (IMOSLoggingEnabled())
        {
          v48 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
          {
            v49 = @"NO";
            if (v46 == 43)
            {
              v50 = @"YES";
            }

            else
            {
              v50 = @"NO";
            }

            if (v47)
            {
              v49 = @"YES";
            }

            *buf = 138412546;
            v132 = v50;
            v133 = 2112;
            v134 = v49;
            _os_log_impl(&dword_22B4CC000, v48, OS_LOG_TYPE_INFO, "Group photo: (%@) or brand logo: (%@) exists, setting up transfer", buf, 0x16u);
          }
        }

        v51 = MEMORY[0x277D19E50];
        if (!v47)
        {
          v51 = MEMORY[0x277D19E70];
        }

        v104 = *v51;
        v52 = IMDCopyAttachmentPersistentPath();
        if ([(__CFString *)v52 length])
        {
          v53 = [(__CFString *)v52 stringByDeletingLastPathComponent];
          IMSharedHelperEnsureDirectoryExistsAtPath();

          v54 = [MEMORY[0x277CCAA00] defaultManager];
          v55 = [MEMORY[0x277CBEBC0] fileURLWithPath:v52];
          v124 = 0;
          v56 = [v54 moveItemAtURL:v44 toURL:v55 error:&v124];
          v102 = v124;

          if (v56)
          {
            v57 = +[IMDFileTransferCenter sharedInstance];
            v58 = [MEMORY[0x277CBEBC0] fileURLWithPath:v52];
            v59 = [v57 registerGUID:v45 forNewOutgoingTransferWithLocalURL:v58];

            if (v59)
            {
              if (IMOSLoggingEnabled())
              {
                v60 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v132 = v114;
                  v133 = 2112;
                  v134 = v52;
                  _os_log_impl(&dword_22B4CC000, v60, OS_LOG_TYPE_INFO, "Created transfer %@, finalAssetPath %@", buf, 0x16u);
                }
              }

              v61 = +[IMDFileTransferCenter sharedInstance];
              v62 = [v61 transferForGUID:v45];

              if (IMOSLoggingEnabled())
              {
                v63 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v132 = v62;
                  _os_log_impl(&dword_22B4CC000, v63, OS_LOG_TYPE_INFO, "Found transfer: %@", buf, 0xCu);
                }
              }

              [(__CFString *)v62 setCloudKitSyncState:1];
              v64 = [MEMORY[0x277CCAA00] defaultManager];
              v129 = *MEMORY[0x277CCA1B0];
              v130 = *MEMORY[0x277CCA1A0];
              v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v130 forKeys:&v129 count:1];
              v123 = 0;
              v66 = [v64 setAttributes:v65 ofItemAtPath:v52 error:&v123];
              v67 = v123;

              if ((v66 & 1) == 0 && IMOSLoggingEnabled())
              {
                v68 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v132 = v52;
                  v133 = 2112;
                  v134 = v67;
                  _os_log_impl(&dword_22B4CC000, v68, OS_LOG_TYPE_INFO, "Failed making group photo file class C: %@ with error %@", buf, 0x16u);
                }
              }

              v69 = +[IMDAttachmentStore sharedInstance];
              v70 = [v69 storeAttachment:v62 associateWithMessageWithGUID:0 chatGUID:v114 storeAtExternalLocation:1];

              if (v70)
              {
                v127 = *MEMORY[0x277D19810];
                v128 = v45;
                v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v128 forKeys:&v127 count:1];
                [(IMDChat *)v26 updateProperties:v71];

                v72 = +[IMDFileTransferCenter sharedInstance];
                [v72 updateTransfer:v45];

                if (IMOSLoggingEnabled())
                {
                  v73 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412546;
                    v132 = v114;
                    v133 = 2112;
                    v134 = v62;
                    _os_log_impl(&dword_22B4CC000, v73, OS_LOG_TYPE_INFO, "Group photo stored for chat guid %@ with transfer %@", buf, 0x16u);
                  }
                }
              }
            }
          }

          else
          {
            if (IMOSLoggingEnabled())
            {
              v75 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
              {
                *buf = 138412802;
                v132 = v44;
                v133 = 2112;
                v134 = v52;
                v135 = 2112;
                v136 = v102;
                _os_log_impl(&dword_22B4CC000, v75, OS_LOG_TYPE_INFO, "Failed to move group photo file from %@ to %@, error %@", buf, 0x20u);
              }
            }

            [MEMORY[0x277D1A9C0] cleanUpAssetURL:v44];
          }
        }

        else if (IMOSLoggingEnabled())
        {
          v74 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
          {
            *buf = 138412802;
            v132 = v114;
            v133 = 2112;
            v134 = v44;
            v135 = 2112;
            v136 = v52;
            _os_log_impl(&dword_22B4CC000, v74, OS_LOG_TYPE_INFO, "Failed to write asset to disk because of nil path! Asset from ckrecord with guid %@ has path %@, finalAssetPath %@", buf, 0x20u);
          }
        }
      }

      [MEMORY[0x277D1A9C0] cleanUpAssetURL:v44];
      v76 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
      v77 = [v76 isTranscriptBackgroundsMicEnabled];

      if (!v77)
      {
        goto LABEL_110;
      }

      v78 = [(__CFString *)v4 assetURLForKey:@"traba"];
      if (v78)
      {
        v79 = [MEMORY[0x277CCAA00] defaultManager];
        v80 = [(__CFString *)v78 path];
        v81 = [v79 fileExistsAtPath:v80];

        v82 = [(IMDChat *)v26 transcriptBackgroundPath];
        v83 = v82;
        if (v81 && [(__CFString *)v82 length])
        {
          v84 = [(__CFString *)v83 stringByDeletingLastPathComponent];
          IMSharedHelperEnsureDirectoryExistsAtPath();

          v85 = [MEMORY[0x277CCAA00] defaultManager];
          v86 = [MEMORY[0x277CBEBC0] fileURLWithPath:v83];
          v122 = 0;
          v87 = [v85 moveItemAtURL:v78 toURL:v86 error:&v122];
          v105 = v122;

          if ((v87 & 1) == 0)
          {
            if (IMOSLoggingEnabled())
            {
              v95 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
              {
                *buf = 138412802;
                v132 = v78;
                v133 = 2112;
                v134 = v83;
                v135 = 2112;
                v136 = v105;
                _os_log_impl(&dword_22B4CC000, v95, OS_LOG_TYPE_INFO, "Failed to move transcript background file from %@ to %@, error %@", buf, 0x20u);
              }
            }

            [MEMORY[0x277D1A9C0] cleanUpAssetURL:v78];
            goto LABEL_106;
          }

          v88 = [MEMORY[0x277CCAA00] defaultManager];
          v125 = *MEMORY[0x277CCA1B0];
          v126 = *MEMORY[0x277CCA1A0];
          v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v126 forKeys:&v125 count:1];
          v121 = 0;
          v90 = [v88 setAttributes:v89 ofItemAtPath:v83 error:&v121];
          v91 = v121;

          v92 = IMOSLoggingEnabled();
          if (v90)
          {
            if (v92)
            {
              v93 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v132 = v83;
                _os_log_impl(&dword_22B4CC000, v93, OS_LOG_TYPE_INFO, "Transcript background stored at %@", buf, 0xCu);
              }

LABEL_104:
            }
          }

          else if (v92)
          {
            v93 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v132 = v83;
              v133 = 2112;
              v134 = v91;
              _os_log_impl(&dword_22B4CC000, v93, OS_LOG_TYPE_INFO, "Failed making transcript background file class C: %@ with error %@", buf, 0x16u);
            }

            goto LABEL_104;
          }

LABEL_106:
LABEL_107:
          if (([(__CFString *)v78 isEqual:v83]& 1) == 0)
          {
            [MEMORY[0x277D1A9C0] cleanUpAssetURL:v78];
          }

LABEL_110:
          goto LABEL_111;
        }
      }

      else
      {
        v83 = [(IMDChat *)v26 transcriptBackgroundPath];
      }

      if (IMOSLoggingEnabled())
      {
        v94 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v132 = v114;
          v133 = 2112;
          v134 = v78;
          v135 = 2112;
          v136 = v83;
          _os_log_impl(&dword_22B4CC000, v94, OS_LOG_TYPE_INFO, "Failed to write background asset to disk because of nil path! Asset from ckrecord with guid %@ has path %@, finalAssetPath %@", buf, 0x20u);
        }
      }

      goto LABEL_107;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v25 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v132 = v4;
      _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Invalid record passed to chatWithCKRecord %@", buf, 0xCu);
    }
  }

  v26 = 0;
LABEL_111:

  v96 = *MEMORY[0x277D85DE8];
  return v26;
}

- (BOOL)applySyncChatSliceChangesUsingSyncData:(id)a3
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 sourceRecordName];
  v5 = [v3 stringForKey:@"svc"];
  v6 = [v3 stringForKey:@"guid"];
  v7 = v6;
  v8 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  if (v4 && v5 && v6)
  {
    v9 = [objc_alloc(MEMORY[0x277D18F00]) initWithServiceName:v5 ckRecordID:v4];
    v10 = [MEMORY[0x277D18EB0] synchronousDatabase];
    v22[0] = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_22B6DD898;
    v14[3] = &unk_278708768;
    v15 = v5;
    v16 = v7;
    v17 = &v18;
    [v10 addSyncChatSlices:v11 forChatWithGUID:v16 completionHandler:v14];

    v8 = *(v19 + 24);
  }

  _Block_object_dispose(&v18, 8);

  v12 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

- (BOOL)applyChatServiceChangesUsingSyncData:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 stringForKey:@"svc"];
  v5 = [v3 stringForKey:@"guid"];
  v6 = v5;
  v7 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (v4 && v5)
  {
    v8 = [MEMORY[0x277D18EB0] synchronousDatabase];
    v20[0] = v4;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_22B6DDB5C;
    v12[3] = &unk_278708768;
    v13 = v4;
    v14 = v6;
    v15 = &v16;
    [v8 updateServicesForChatWithGUID:v14 services:v9 completionHandler:v12];

    v7 = *(v17 + 24);
  }

  _Block_object_dispose(&v16, 8);

  v10 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

- (BOOL)applyDomainIdentifierChangesUsingSyncData:(id)a3
{
  v4 = a3;
  v5 = [v4 dictForKey:@"dids"];
  v6 = [v4 stringForKey:@"guid"];

  if (v5)
  {
    if (v6)
    {
      [(IMDChat *)self assignUniqueHistoricalDomainIdentifiers:v5];
      v7 = [(IMDChat *)self domainIdentifiers];
      v8 = [v7 __im_setDifferenceBetweenSelfAndObject:v5];

      if (v8)
      {
        [(IMDChat *)self setCloudKitSyncState:0];
      }
    }
  }

  return 0;
}

- (BOOL)applyChangesUsingSyncData:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IMDChat *)self cloudKitSyncState];
  v6 = IMDChatLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(IMDChat *)self guid];
    *buf = 138412546;
    v45 = v7;
    v46 = 2048;
    *v47 = v5;
    _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_DEFAULT, "applying changes on chat %@ state %ld", buf, 0x16u);
  }

  v8 = [(IMDChat *)self lastReadMessageTimeStamp];
  v9 = [v4 numberForKey:@"rwm"];
  v10 = [v9 longLongValue];

  if (v8 >= v10)
  {
    v11 = IMDChatLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(IMDChat *)self lastReadMessageTimeStamp];
      v14 = [v4 numberForKey:@"rwm"];
      *buf = 134218242;
      v45 = v13;
      v46 = 2112;
      *v47 = v14;
      _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_DEFAULT, "Local last read timestamp %lld, server record last read timestamp %@", buf, 0x16u);
    }

    v12 = 0;
  }

  else
  {
    v11 = [v4 numberForKey:@"rwm"];
    [(IMDChat *)self setLastReadMessageTimeStamp:[v11 longLongValue]];
    v12 = 1;
  }

  v43 = [(IMDChat *)self _applyTranscriptBackgroundChangesUsingSyncData:v4];
  v15 = v12 + v43;
  v16 = [v4 dictForKey:@"prop001"];
  v17 = IMDChatLogHandle();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v16)
  {
    if (v18)
    {
      *buf = 138412290;
      v45 = v16;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_DEFAULT, "Server Chat record has props001 %@, pulling syndication_type and syndication_ranges", buf, 0xCu);
    }

    v19 = [v16 objectForKey:@"st"];
    v17 = v19;
    if (v19)
    {
      [v19 intValue];
    }

    v20 = [v16 objectForKey:@"sd"];
    v21 = IMDChatLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [(IMDChat *)self autoDonationBehaviorLastModificationDate];
      v23 = [v22 __im_nanosecondTimeInterval];
      *buf = 138412546;
      v45 = v16;
      v46 = 2048;
      *v47 = v23;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_DEFAULT, "Server Chat record has older props001 %@, local syndicationDate: %lu, skipping", buf, 0x16u);
    }
  }

  else if (v18)
  {
    *buf = 0;
    _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_DEFAULT, "Server Chat record had props001 data, but we failed to decode to a dictionary!", buf, 2u);
  }

  v24 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v25 = [v24 isMissingMessagesEnabled];

  if (v25 && [(IMDChat *)self style]== 43)
  {
    v15 += [(IMDChat *)self applyDomainIdentifierChangesUsingSyncData:v4];
  }

  v26 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v27 = [v26 isOneChatEnabled];

  if (v27)
  {
    v15 += [(IMDChat *)self applyChatServiceChangesUsingSyncData:v4];
  }

  v28 = IMDChatLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [(IMDChat *)self guid];
    *buf = 138412802;
    v45 = v29;
    v46 = 1024;
    *v47 = v15;
    *&v47[4] = 1024;
    *&v47[6] = 1;
    _os_log_impl(&dword_22B4CC000, v28, OS_LOG_TYPE_DEFAULT, "Updating chat:%@ madeChanges %d serverHadMoreRecentData %{BOOL}d", buf, 0x18u);
  }

  if (v5 != 1)
  {
    [(IMDChat *)self setCloudKitSyncState:1];
    ++v15;
  }

  v30 = IMDChatLogHandle();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [(IMDChat *)self guid];
    v32 = [v4 sourceRecordName];
    v33 = [v4 sourceRecordChangeTag];
    *buf = 138412802;
    v45 = v31;
    v46 = 2112;
    *v47 = v32;
    *&v47[8] = 2112;
    v48 = v33;
    _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_DEFAULT, "Updating chat %@ record name %@ change tag %@", buf, 0x20u);
  }

  v34 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v35 = [v34 isOneChatEnabled];

  if (v35)
  {
    v15 += [(IMDChat *)self applySyncChatSliceChangesUsingSyncData:v4];
  }

  else
  {
    v36 = [v4 sourceRecordChangeTag];
    [(IMDChat *)self setServerChangeToken:v36];

    v37 = [v4 sourceRecordName];
    [(IMDChat *)self setCloudKitRecordID:v37];
  }

  v38 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v39 = [v38 isMessagesIniCloudVersion2];

  if (v39)
  {
    v40 = +[IMDChatStore sharedInstance];
    [v40 storeChat:self];
  }

  else
  {
    [(IMDChat *)self storeAndBroadcastChatChanges];
  }

  if (v43)
  {
    [(IMDChat *)self broadcastTranscriptBackgroundChanges];
  }

  v41 = *MEMORY[0x277D85DE8];
  return v15 != 0;
}

- (id)compressedProtobufDataForChatProto1
{
  v3 = objc_alloc(objc_opt_class());
  [v3 setIsRecovered:{-[IMDChat isRecovered](self, "isRecovered")}];
  v4 = [v3 data];
  v5 = [v4 _FTCopyGzippedData];

  return v5;
}

- (id)copyCKRecordRepresentationsWithZoneID:(id)a3 salt:(id)a4 error:(id *)a5
{
  if (a4)
  {
    sub_22B7DB6A8();
  }

  v7 = a3;
  v8 = self;
  sub_22B790AD8(a3);

  sub_22B4D01A0(0, &qword_28141EFE8, 0x277CBC5A0);
  v9 = sub_22B7DB8F8();

  return v9;
}

@end